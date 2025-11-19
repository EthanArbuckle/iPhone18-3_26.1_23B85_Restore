uint64_t CreateSphereNormalsAndTexCoordForPoints(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = C3DMeshSourceGetCount(a1);
  if (result >= 1)
  {
    v7 = result;
    for (i = 0; i != v7; ++i)
    {
      v17.i32[2] = 0;
      v17.i64[0] = 0;
      *v9.i64 = C3DMeshSourceGetValueAtIndexAsVector3(a1, i);
      v10 = vmulq_f32(v9, v9);
      *&v11 = v10.f32[2] + vaddv_f32(*v10.f32);
      *v10.f32 = vrsqrte_f32(v11);
      *v10.f32 = vmul_f32(*v10.f32, vrsqrts_f32(v11, vmul_f32(*v10.f32, *v10.f32)));
      v17 = vmulq_n_f32(v9, vmul_f32(*v10.f32, vrsqrts_f32(v11, vmul_f32(*v10.f32, *v10.f32))).f32[0]);
      C3DMeshSourceAppendVector3(a2, &v17, 1);
      v14 = v17.f32[1];
      v12 = asinf(v17.f32[0]) / 3.14159265 + 0.5;
      v15 = v12;
      *&v13 = 1.0 - (asinf(v14) / 3.14159265 + 0.5);
      v16 = __PAIR64__(v13, LODWORD(v15));
      result = C3DMeshSourceAppendVector2(a3, &v16, 1);
    }
  }

  return result;
}

uint64_t C3DMeshCreateGeosphere(int a1, uint64_t a2, double a3)
{
  v5 = a3;
  SmoothIcosahedron = C3DGeometryCreateSmoothIcosahedron(0, v5);
  v7 = 6;
  if (a2 > 6)
  {
    v7 = a2;
  }

  v8 = (v7 - 5);
  if (a2 >= 5005)
  {
    v8 = 5000.0;
  }

  v9 = vcvtpd_s64_f64(log(v8) / 1.09861229);
  if (v9 < 1)
  {
    v16 = SmoothIcosahedron;
  }

  else
  {
    v10 = *MEMORY[0x277CBECE8];
    v11 = v9 + 1;
    v12 = MEMORY[0x277CBF128];
    do
    {
      SourceWithSemanticAtIndex = C3DMeshGetSourceWithSemanticAtIndex(SmoothIcosahedron, 0, 0, 0);
      v14 = C3DMeshGetSourceWithSemanticAtIndex(SmoothIcosahedron, 1, 0, 0);
      ElementAtIndex = C3DMeshGetElementAtIndex(SmoothIcosahedron, 0, 0);
      values = C3DMeshSubdivide(SmoothIcosahedron, 0, ElementAtIndex, SourceWithSemanticAtIndex, v14, 0, 1);
      v16 = C3DMeshCreate();
      C3DMeshAddSource(v16, SourceWithSemanticAtIndex, 0, 0);
      C3DMeshAddSource(v16, v14, 0, 0);
      v17 = CFArrayCreate(v10, &values, 1, v12);
      C3DMeshSetMeshElements(v16, v17);
      CFRelease(v17);
      if (SmoothIcosahedron)
      {
        CFRelease(SmoothIcosahedron);
      }

      --v11;
      SmoothIcosahedron = v16;
    }

    while (v11 > 1);
  }

  Mutable = C3DMeshSourceCreateMutable(0, 1, 0, 3, 1);
  v19 = C3DMeshSourceCreateMutable(0, 3, 0, 2, 1);
  v20 = C3DMeshGetSourceWithSemanticAtIndex(v16, 0, 0, 0);
  CreateSphereNormalsAndTexCoordForPoints(v20, Mutable, v19);
  v21 = C3DMeshGetSourceWithSemanticAtIndex(v16, 1, 0, 0);
  C3DMeshRemoveSource(v16, v21);
  C3DMeshAddSource(v16, Mutable, 0, 0);
  C3DMeshAddSource(v16, v19, 0, 0);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  C3DMeshSetOriginalElementType(v16, a1);
  DeepCopy = C3DMeshCreateDeepCopy(v16);
  if (v16)
  {
    CFRelease(v16);
  }

  return DeepCopy;
}

uint64_t C3DFXTechniqueCreateFloor(uint64_t a1, __C3DNode *a2)
{
  v3 = C3DDictionaryNamed(@"C3DFXFloorPass.plist");
  v4 = C3DFXTechniqueCreateWithDescription(v3, a2);
  PassNamed = C3DFXTechniqueGetPassNamed(v4, @"SceneKit_renderMirroredScene");
  C3DFXPassSetInitializeCallback(PassNamed, _initialize);
  C3DFXPassSetShouldExecuteCallback(PassNamed, _shouldExecute);
  v6 = C3DFXTechniqueGetPassNamed(v4, @"SceneKit_renderFloor");
  C3DFXPassSetWillExecuteCallback(v6, _willExecuteRenderFloor);
  Floor = C3DNodeGetFloor(a2);
  PassAtIndex = C3DFXTechniqueGetPassAtIndex(v4, 0);
  v9 = PassAtIndex;
  if (Floor)
  {
    if (PassAtIndex)
    {
      ReflectionResolutionScaleFactor = C3DFloorGetReflectionResolutionScaleFactor(Floor);
      *(v9 + 376) = ReflectionResolutionScaleFactor;
      *(v9 + 384) = ReflectionResolutionScaleFactor;
      ReflectionSampleCount = C3DFloorGetReflectionSampleCount(Floor);
      if (ReflectionSampleCount)
      {
        *(v9 + 176) = ReflectionSampleCount;
      }

      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v12 = scn_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    C3DFXTechniqueCreateFloor_cold_1(v12, v13, v14, v15, v16, v17, v18, v19);
  }

  if (!v9)
  {
LABEL_8:
    v20 = scn_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      C3DFXTechniqueCreateFloor_cold_2(v20, v21, v22, v23, v24, v25, v26, v27);
    }
  }

LABEL_10:
  __attachModifierToFloor(a2);
  v28 = C3DFXTechniqueGetPassNamed(v4, @"SceneKit_renderFloor");
  InputWithName = C3DFXPassGetInputWithName(v28, @"u_floorReflectionColor");
  v30 = *MEMORY[0x277CBECE8];
  v31 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"SceneKit-floor-color-%p", a2);
  v32 = InputWithName[8];
  if (v32 != v31)
  {
    if (v32)
    {
      CFRelease(v32);
      InputWithName[8] = 0;
    }

    if (v31)
    {
      v33 = CFRetain(v31);
    }

    else
    {
      v33 = 0;
    }

    InputWithName[8] = v33;
  }

  CFRelease(v31);
  if (C3DFloorGetReflectionFalloffEnd(Floor) != 0.0)
  {
    v34 = C3DFXPassGetInputWithName(v28, @"u_floorReflectionDepth");
    v35 = CFStringCreateWithFormat(v30, 0, @"SceneKit-floor-depth-%p", a2);
    v36 = v34[8];
    if (v36 != v35)
    {
      if (v36)
      {
        CFRelease(v36);
        v34[8] = 0;
      }

      if (v35)
      {
        v37 = CFRetain(v35);
      }

      else
      {
        v37 = 0;
      }

      v34[8] = v37;
    }

    CFRelease(v35);
  }

  return v4;
}

__C3DFloor *_shouldExecute(__C3DFXPass *a1, __C3DNode *a2)
{
  if (!a2)
  {
    return 0;
  }

  result = C3DNodeGetFloor(a2);
  if (result)
  {
    v4 = result;
    v5 = __computeFloorOpacity(a2, result);
    v6 = *(v4 + 244);
    *(v4 + 244) = v5;
    if (v6 == 1.0 && v5 != 1.0)
    {
      __attachModifierToFloor(a2);
    }

    return (C3DFloorGetReflectivity(v4) != 0.0);
  }

  return result;
}

void _willExecuteRenderFloor(uint64_t *a1)
{
  v1 = a1[2];
  if (v1)
  {
    Floor = C3DNodeGetFloor(a1[2]);
    if (Floor)
    {
      v4 = Floor;
      Scene = C3DEngineContextGetScene(a1[3]);
      v42.i32[2] = 0;
      v42.i64[0] = 0;
      C3DSceneGetUpAxis(Scene, &v42);
      C3DFXTechniqueSetValueForSymbol(a1[1], @"u_floorNormal", &v42);
      v6.i32[0] = v42.i32[1];
      if (v42.f32[1] == 0.0 && (v6.i32[0] = v42.i32[2], v42.f32[2] == 0.0))
      {
        v38.i32[0] = 0;
        v38.f32[1] = -v42.f32[0];
        v38.i32[2] = 0;
        v38.i32[3] = 1.0;
        v43[0].columns[0] = v38;
      }

      else
      {
        v6.i32[1] = 0;
        v6.i32[2] = 0;
        v6.i32[3] = 1.0;
        v43[0].columns[0] = v6;
      }

      C3DFXTechniqueSetValueForSymbol(a1[1], @"u_floorTangent", v43);
      PointOfView = C3DEngineContextGetPointOfView(a1[3]);
      if (PointOfView)
      {
        v9 = PointOfView;
        if (C3DNodeGetProjectionInfos(PointOfView, v43))
        {
          if (*v43[0].columns[1].i64 >= 10000.0)
          {
            v10 = *v43[0].columns[1].i64;
          }

          else
          {
            v10 = 10000.0;
          }

          if (v43[0].columns[0].i8[0])
          {
            v21 = sqrt(*v43[0].columns[3].i64 * *v43[0].columns[3].i64 + v10 * v10);
          }

          else
          {
            v11 = v44;
            if (v44 < v45)
            {
              v11 = v45;
            }

            v12 = cos(v11 * 0.5 / 180.0 * 3.14159265);
            if (v12 <= 0.0)
            {
              v13 = scn_default_log();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
              {
                _willExecuteRenderFloor(v13, v14, v15, v16, v17, v18, v19, v20);
              }
            }

            v21 = (v10 + v10) / v12;
          }

          v41.columns[0].i32[2] = 0;
          v41.columns[0].i64[0] = 0;
          C3DNodeGetWorldPosition(v9, &v41);
          v8 = v41.columns[0];
          v22 = v21;
          v8.f32[3] = v22;
        }
      }

      v23 = vdup_laneq_s32(v8, 3);
      v43[0].columns[0] = vmlsq_f32(v8, v42, v8);
      *v41.columns[0].f32 = v23;
      v24 = *(v4 + 236);
      if (v24 != 0.0)
      {
        v43[0].columns[0].i32[0] = 0;
        *v23.i32 = v24;
        *v41.columns[0].f32 = v23;
      }

      v25 = *(v4 + 240);
      if (v25 != 0.0)
      {
        v43[0].columns[0].i32[2] = 0;
        v41.columns[0].f32[1] = v25;
      }

      C3DFXTechniqueSetValueForSymbol(a1[1], @"u_floorCenter", v43);
      C3DFXTechniqueSetValueForSymbol(a1[1], @"u_floorExtent", &v41);
      Viewport = C3DEngineContextGetViewport(a1[3]);
      SuperSamplingFactor = C3DEngineContextGetSuperSamplingFactor(a1[3]);
      EyeCount = C3DEngineContextGetEyeCount(a1[3]);
      v27 = Viewport;
      if (EyeCount >= 2)
      {
        v27.f32[0] = a1[9] / EyeCount;
        v27.i32[2] = vmuls_lane_f32(EyeCount, Viewport, 2);
      }

      v28 = vmulq_n_f32(v27, SuperSamplingFactor);
      __asm { FMOV            V2.2S, #1.0 }

      v28.u64[1] = vdiv_f32(_D2, *&vextq_s8(v28, v28, 8uLL));
      v43[0].columns[0] = v28;
      C3DFXTechniqueSetValueForSymbol(a1[1], @"u_floor_viewport", v43);
      v43[0].columns[0].i32[0] = C3DFloorGetReflectivity(v4);
      C3DFXTechniqueSetValueForSymbol(a1[1], @"u_floorReflectivity", v43);
      v43[0].columns[0].i32[0] = C3DFloorGetReflectionFalloffStart(v4);
      C3DFXTechniqueSetValueForSymbol(a1[1], @"u_floorFalloffStart", v43);
      ReflectionFalloffEnd = C3DFloorGetReflectionFalloffEnd(v4);
      v35 = ReflectionFalloffEnd - C3DFloorGetReflectionFalloffStart(v4);
      if (v35 <= 0.0)
      {
        v35 = 1.0;
      }

      v43[0].columns[0].f32[0] = v35;
      C3DFXTechniqueSetValueForSymbol(a1[1], @"u_floorFalloff", v43);
      C3DComputeMirrorPlane(v1, &v42, v43);
      C3DFXTechniqueSetValueForSymbol(a1[1], @"u_floorPlane", v43);
      Matrix4x4 = C3DEngineContextGetMatrix4x4(a1[3], 1);
      v37 = C3DEngineContextGetMatrix4x4(a1[3], 0);
      C3DMatrix4x4Mult(Matrix4x4, v37, v43);
      C3DMatrix4x4Invert(v43, &v41);
      C3DFXTechniqueSetValueForSymbol(a1[1], @"u_floorMVP_i", &v41);
    }
  }
}

void __attachModifierToFloor(__C3DNode *a1)
{
  Floor = C3DNodeGetFloor(a1);
  if (Floor)
  {
    v3 = Floor;
    v4 = __computeFloorOpacity(a1, Floor);
    Mutable = CFArrayCreateMutable(0, 4, MEMORY[0x277CBF128]);
    v6 = C3DGetTextResourceWithNameAllowingHotReload(@"FloorGeomImpl.glsl");
    v7 = C3DShaderModifiersCreate(v6, 0, 0, 1, 0, 0);
    CFArrayAppendValue(Mutable, v7);
    CFRelease(v7);
    v8 = C3DGetTextResourceWithNameAllowingHotReload(@"FloorGeomImpl-metal.h");
    v9 = C3DShaderModifiersCreate(v8, 0, 0, 0, 0, 0);
    CFArrayAppendValue(Mutable, v9);
    CFRelease(v9);
    if (C3DFloorGetReflectivity(v3) > 0.0)
    {
      v10 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (C3DFloorGetReflectionFalloffEnd(v3) != 0.0)
      {
        CFDictionaryAddValue(v10, @"USE_FALLOFF", &stru_282DCC058);
      }

      v11 = 2 * (v4 != 1.0);
      if (C3DFloorGetReflectionFalloffStart(v3) != 0.0)
      {
        CFDictionaryAddValue(v10, @"USE_FALLOFF_START", &stru_282DCC058);
      }

      if (v4 < 1.0)
      {
        CFDictionaryAddValue(v10, @"USE_TRANSPARENCY", &stru_282DCC058);
      }

      v12 = C3DGetTextResourceWithNameAllowingHotReload(@"FloorImpl.glsl");
      v13 = C3DGetTextResourceWithNameAllowingHotReload(@"FloorImpl-metal.h");
      v14 = C3DShaderModifiersCreate(v12, 2, v10, 1, 0, v11);
      CFArrayAppendValue(Mutable, v14);
      CFRelease(v14);
      v15 = C3DShaderModifiersCreate(v13, 2, v10, 0, 0, v11);
      CFArrayAppendValue(Mutable, v15);
      CFRelease(v15);
      CFRelease(v10);
    }

    C3DEntitySetAttribute(v3, @"kShaderModifiers", Mutable);

    CFRelease(Mutable);
  }
}

float __computeFloorOpacity(__C3DNode *a1, __C3DFloor *a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __computeFloorOpacity(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = 1.0;
  if (C3DFloorGetReflectivity(a2) != 0.0)
  {
    C3DNodeGetWorldAlpha(a1);
    v12 = v14;
    MaterialAtIndex = C3DGeometryGetMaterialAtIndex(a2, 0);
    if (MaterialAtIndex)
    {
      CommonProfile = C3DMaterialGetCommonProfile(MaterialAtIndex);
      if (CommonProfile)
      {
        return v12 * C3DEffectCommonProfileGetFloatProperty(CommonProfile, 18);
      }
    }
  }

  return v12;
}

uint64_t C3DFinalizeDeserialization(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CFGetTypeID(a1);
  ClassWithTypeID = _CFRuntimeGetClassWithTypeID();
  if (*ClassWithTypeID != 749405696)
  {
    return 0;
  }

  v9 = ClassWithTypeID[25];
  if (!v9)
  {
    return 0;
  }

  return v9(a1, a2, a3, a4);
}

void *C3DFillLibraryForSerialization(const void *a1, uint64_t a2, uint64_t a3)
{
  CFGetTypeID(a1);
  result = _CFRuntimeGetClassWithTypeID();
  if (*result == 749405696)
  {
    v7 = result[26];
    if (v7)
    {

      return v7(a1, a2, a3);
    }
  }

  return result;
}

uint64_t C3DInitWithPropertyList(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CFGetTypeID(a1);
  ClassWithTypeID = _CFRuntimeGetClassWithTypeID();
  if (*ClassWithTypeID != 749405696)
  {
    return 0;
  }

  v9 = ClassWithTypeID[23];
  if (!v9)
  {
    return 0;
  }

  return v9(a1, a2, a3, a4);
}

uint64_t C3DCopyPropertyList(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CFGetTypeID(a1);
  ClassWithTypeID = _CFRuntimeGetClassWithTypeID();
  if (*ClassWithTypeID != 749405696)
  {
    return 0;
  }

  v9 = ClassWithTypeID[24];
  if (!v9)
  {
    return 0;
  }

  return v9(a1, a2, a3, a4);
}

void *C3DGetValue(CFTypeRef cf, const void *a2, void *a3, size_t a4, uint64_t a5, uint64_t a6)
{
  if (!cf)
  {
    v12 = scn_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      _C3DGeometryFillLibraryForSerialization_cold_1(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }

  CFGetTypeID(cf);
  ClassWithTypeID = _CFRuntimeGetClassWithTypeID();
  if (*ClassWithTypeID == 749405696 && (v21 = ClassWithTypeID[13]) != 0)
  {
    return v21(cf, a2, a3, a4, a5, a6);
  }

  else
  {
    return memcpy(a3, a2, a4);
  }
}

void *C3DSetValue(CFTypeRef cf, void *a2, const void *a3, size_t a4, uint64_t a5, uint64_t a6)
{
  if (!cf)
  {
    v12 = scn_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      _C3DGeometryFillLibraryForSerialization_cold_1(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }

  CFGetTypeID(cf);
  ClassWithTypeID = _CFRuntimeGetClassWithTypeID();
  if (*ClassWithTypeID == 749405696 && (v21 = ClassWithTypeID[12]) != 0)
  {
    return v21(cf, a2, a3, a4, a5, a6);
  }

  else
  {
    return memcpy(a2, a3, a4);
  }
}

void *(*C3DGetValueGetter(const void *a1))(int a1, const void *a2, void *__dst, size_t __n)
{
  CFGetTypeID(a1);
  ClassWithTypeID = _CFRuntimeGetClassWithTypeID();
  if (*ClassWithTypeID != 749405696)
  {
    return _C3DGenericGetValue;
  }

  result = ClassWithTypeID[13];
  if (!result)
  {
    return _C3DGenericGetValue;
  }

  return result;
}

void *(*C3DGetValueSetter(const void *a1))(int a1, void *__dst, void *__src, size_t __n)
{
  CFGetTypeID(a1);
  ClassWithTypeID = _CFRuntimeGetClassWithTypeID();
  if (*ClassWithTypeID != 749405696)
  {
    return _C3DGenericSetValue;
  }

  result = ClassWithTypeID[12];
  if (!result)
  {
    return _C3DGenericSetValue;
  }

  return result;
}

uint64_t C3DCreateCopy(CFTypeRef cf)
{
  if (!cf)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      _C3DGeometryFillLibraryForSerialization_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  CFGetTypeID(cf);
  ClassWithTypeID = _CFRuntimeGetClassWithTypeID();
  if (*ClassWithTypeID == 749405696)
  {
    v11 = ClassWithTypeID[27];
    if (v11)
    {
      return v11(cf);
    }
  }

  v13 = scn_default_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    C3DCreateCopy_cold_2(cf, v13);
  }

  return 0;
}

void *C3DGenericSourceDidChange(CFTypeRef cf, uint64_t a2)
{
  if (!cf)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      _C3DGeometryFillLibraryForSerialization_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  CFGetTypeID(cf);
  result = _CFRuntimeGetClassWithTypeID();
  if (*result == 749405696)
  {
    v13 = result[28];
    if (v13)
    {
      return v13(cf, a2);
    }
  }

  return result;
}

uint64_t C3DGetBoundingBox(CFTypeRef cf, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!cf)
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      _C3DGeometryFillLibraryForSerialization_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  CFGetTypeID(cf);
  ClassWithTypeID = _CFRuntimeGetClassWithTypeID();
  if (*ClassWithTypeID == 749405696 && (v17 = ClassWithTypeID[15]) != 0)
  {
    return v17(cf, a2, a3, a4);
  }

  else
  {
    return 0;
  }
}

uint64_t C3DGetBoundingSphere(CFTypeRef cf, uint64_t a2, uint64_t a3)
{
  if (!cf)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      _C3DGeometryFillLibraryForSerialization_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  CFGetTypeID(cf);
  ClassWithTypeID = _CFRuntimeGetClassWithTypeID();
  if (*ClassWithTypeID == 749405696 && (v15 = ClassWithTypeID[16]) != 0)
  {
    return v15(cf, a2, a3);
  }

  else
  {
    return 0;
  }
}

void C3DRemoveSceneRef(void *cf, uint64_t a2)
{
  if (!cf && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    _C3DGeometryFillLibraryForSerialization_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    if (!a2)
    {
      return;
    }
  }

  else if (!a2)
  {
    return;
  }

  if (_C3DEntityGetSceneLink_onceToken != -1)
  {
    C3DRemoveSceneRef_cold_2();
  }

  v12 = _C3DEntityGetSceneLink_sceneLink;
  CFGetTypeID(cf);
  ClassWithTypeID = _CFRuntimeGetClassWithTypeID();
  v14 = *ClassWithTypeID;
  if (*ClassWithTypeID == 749405696)
  {
    v15 = ClassWithTypeID;
  }

  else
  {
    v15 = 0;
  }

  if (*(cf + 6) == a2)
  {
    v16 = *(cf + 7);
    if (v16)
    {
      v17 = v16 - 1;
      *(cf + 7) = v17;
      if (!v17)
      {
        if (v14 == 749405696)
        {
          v18 = v15[19];
          if (v18)
          {
            v18(cf, a2);
          }
        }

        v19 = *(v12 + 16);
        if (v19)
        {
          v19(cf, a2);
        }

        if (v14 == 749405696)
        {
          v20 = v15[17];
          if (v20)
          {
            v22[0] = MEMORY[0x277D85DD0];
            v22[1] = 0x40000000;
            v22[2] = __C3DRemoveSceneRef_block_invoke;
            v22[3] = &__block_descriptor_tmp_6;
            v22[4] = a2;
            v20(cf, v22);
          }
        }

        _removeFromScene(cf, a2);
        *(cf + 6) = 0;
      }
    }

    else if ((C3DRemoveSceneRef_done & 1) == 0)
    {
      C3DRemoveSceneRef_done = 1;
      v21 = scn_default_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        C3DRemoveSceneRef_cold_3(cf, v21);
      }
    }
  }
}

void _removeFromScene(void *a1, uint64_t a2)
{
  AnimationManager = C3DSceneGetAnimationManager(a2);
  if (AnimationManager)
  {
    v4 = AnimationManager;
    C3DAnimationManagerRemoveAllAnimationsForObject(AnimationManager, a1);
    C3DAnimationManagerRemoveAllBindings(v4, a1);

    C3DAnimationManagerRemoveActionsForObject(v4, a1);
  }
}

void C3DAddSceneRef(uint64_t *cf, uint64_t a2)
{
  if (!cf && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    _C3DGeometryFillLibraryForSerialization_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    if (!a2)
    {
      return;
    }
  }

  else if (!a2)
  {
    return;
  }

  if (_C3DEntityGetSceneLink_onceToken != -1)
  {
    C3DRemoveSceneRef_cold_2();
  }

  v12 = _C3DEntityGetSceneLink_sceneLink;
  CFGetTypeID(cf);
  ClassWithTypeID = _CFRuntimeGetClassWithTypeID();
  v14 = *ClassWithTypeID;
  if (*ClassWithTypeID == 749405696)
  {
    v15 = ClassWithTypeID;
  }

  else
  {
    v15 = 0;
  }

  v16 = cf[6];
  if (!v16 || v16 == a2)
  {
    ++cf[7];
    if (v16)
    {
      return;
    }
  }

  else
  {
    if (v14 == 749405696)
    {
      v17 = v15[19];
      if (v17)
      {
        v17(cf, cf[6]);
      }
    }

    v18 = v12[2];
    if (v18)
    {
      v18(cf, v16);
    }

    _removeFromScene(cf, v16);
    cf[7] = 1;
  }

  cf[6] = a2;
  v19 = v12[1];
  if (v19)
  {
    v19(cf, a2);
  }

  if (v14 == 749405696)
  {
    v20 = v15[18];
    if (v20)
    {
      v20(cf, a2);
    }

    v21 = v15[17];
    if (v21)
    {
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 0x40000000;
      v26[2] = __C3DAddSceneRef_block_invoke;
      v26[3] = &__block_descriptor_tmp_3_0;
      v26[4] = a2;
      v21(cf, v26);
    }
  }

  if (v16)
  {
    v22 = v12[4];
    if (v22)
    {
      v22(cf, v16);
    }

    if (v14 == 749405696)
    {
      v23 = v15[21];
      if (v23)
      {
        v23(cf, v16);
      }
    }
  }

  v24 = v12[3];
  if (v24)
  {
    v24(cf, a2);
  }

  if (v14 == 749405696)
  {
    v25 = v15[20];
    if (v25)
    {
      v25(cf, a2);
    }
  }
}

uint64_t C3DGetSceneRef(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      _C3DGeometryFillLibraryForSerialization_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 48);
}

uint64_t C3DSearchByID(const void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  CFGetTypeID(a1);
  ClassWithTypeID = _CFRuntimeGetClassWithTypeID();
  if (*ClassWithTypeID != 749405696)
  {
    return 0;
  }

  v5 = ClassWithTypeID[22];
  if (!v5)
  {
    return 0;
  }

  return v5(a1, a2);
}

__n128 C3DQuaternionMake(__n128 *a1, __n128 result, float a3, float a4, float a5)
{
  result.n128_f32[1] = a3;
  result.n128_u64[1] = __PAIR64__(LODWORD(a5), LODWORD(a4));
  *a1 = result;
  return result;
}

void C3DQuaternionMakeAxisAngle(float32x4_t *a1, float32x4_t *a2)
{
  v3 = *a2;
  v4 = vmulq_f32(v3, v3);
  v5 = v4.f32[2] + vaddv_f32(*v4.f32);
  if (v5 <= 0.000000001)
  {
    v9 = *(MEMORY[0x277D860B8] + 48);
  }

  else
  {
    v10 = v5;
    v11 = *a2;
    v6 = __sincosf_stret(vmuls_lane_f32(0.5, v3, 3));
    v7 = vrsqrte_f32(LODWORD(v10));
    v8 = vmul_f32(v7, vrsqrts_f32(LODWORD(v10), vmul_f32(v7, v7)));
    v9 = vmulq_n_f32(vmulq_n_f32(v11, vmul_f32(v8, vrsqrts_f32(LODWORD(v10), vmul_f32(v8, v8))).f32[0]), v6.__sinval);
    v9.i32[3] = LODWORD(v6.__cosval);
  }

  *a1 = v9;
}

float32_t C3DQuaternionGetAxisAngle(float32x4_t *a1, float32x4_t *a2)
{
  v12 = *a1;
  LODWORD(_S8) = HIDWORD(*a1);
  v4 = acosf(_S8);
  _Q3 = v12;
  result = v4 + v4;
  __asm { FMLS            S1, S8, V3.S[3] }

  *_D1.i32 = sqrtf(*_D1.i32);
  if (*_D1.i32 > 0.000001)
  {
    _Q3 = vdivq_f32(v12, vdupq_lane_s32(_D1, 0));
  }

  _Q3.f32[3] = result;
  *a2 = _Q3;
  return result;
}

float32x4_t C3DQuaternionAdd(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3)
{
  result = vaddq_f32(*a1, *a2);
  *a3 = result;
  return result;
}

__n128 C3DQuaternionConjugate(float32x4_t *a1)
{
  result = *a1;
  v2 = vnegq_f32(*a1);
  v2.i32[3] = HIDWORD(*a1);
  *a1 = v2;
  return result;
}

float32x4_t C3DQuaternionNormalize(float32x4_t *a1)
{
  v1 = vmulq_f32(*a1, *a1);
  *v1.i8 = vadd_f32(*v1.i8, *&vextq_s8(v1, v1, 8uLL));
  v2 = vdupq_lane_s32(vadd_f32(*v1.i8, vdup_lane_s32(*v1.i8, 1)), 0);
  v3 = vrsqrteq_f32(v2);
  v4 = vmulq_f32(v3, vrsqrtsq_f32(v2, vmulq_f32(v3, v3)));
  result = vbslq_s8(vceqzq_f32(v2), *a1, vmulq_f32(*a1, vmulq_f32(v4, vrsqrtsq_f32(v2, vmulq_f32(v4, v4)))));
  *a1 = result;
  return result;
}

float32x4_t C3DQuaternionMult(float32x4_t *a1, int32x4_t *a2, float32x4_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a1;
  v5.i32[3] = *a1;
  v6 = vzip1q_s32(v4, v4);
  v6.i32[0] = a2->i64[1];
  v7 = vmlaq_f32(vmlaq_laneq_f32(vmulq_f32(vmulq_f32(v5, vextq_s8(vdupq_laneq_s32(*a2, 3), *a2, 4uLL)), xmmword_21C27FD00), *a2, *a1, 3), xmmword_21C27FD00, vmulq_f32(vextq_s8(vextq_s8(v3, v3, 0xCuLL), *a1, 8uLL), v6));
  result = vextq_s8(vuzp1q_s32(v3, v3), *a1, 0xCuLL);
  v9 = vuzp1q_s32(v4, v4);
  v9.i32[0] = HIDWORD(a2->i64[0]);
  *a3 = vmlsq_f32(v7, v9, result);
  return result;
}

float32x4_t C3DQuaternionSlerp(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3, float a4, double a5, double a6, double a7, double a8, double a9, float32x4_t _Q6)
{
  _Q3 = *a1;
  v13 = *a2;
  _Q0 = vmulq_f32(*a1, *a2);
  _S1 = a2->i64[1];
  __asm { FMLA            S0, S1, V3.S[2] }

  LODWORD(_S2) = HIDWORD(*a2);
  __asm { FMLA            S6, S2, V3.S[3] }

  if (_Q6.f32[0] >= 0.0)
  {
    v21 = _Q6.f32[0];
  }

  else
  {
    v21 = -(_Q0.f32[0] + (COERCE_FLOAT(HIDWORD(*a1)) * _S2));
  }

  if (1.0 - v21 <= 0.00100000005)
  {
    v26 = 1.0 - a4;
  }

  else
  {
    v29 = *a2;
    v30 = *a1;
    v31 = a4;
    v28 = _Q6;
    v22 = acosf(v21);
    v23 = sinf(v22);
    v24 = sinf((1.0 - v31) * v22);
    v25 = v22 * v31;
    v32 = v24 / v23;
    _Q0.f32[0] = sinf(v25);
    _Q3 = v30;
    v26 = v32;
    _Q6 = v28;
    v13 = v29;
    a4 = _Q0.f32[0] / v23;
  }

  _Q0.i64[0] = 0;
  result = vmlaq_n_f32(vmulq_n_f32(vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(_Q0, _Q6), 0), vnegq_f32(v13), v13), a4), _Q3, v26);
  *a3 = result;
  return result;
}

float C3DQuaternionMakeEuler(_OWORD *a1, float a2, float a3, float a4)
{
  v7 = __sincosf_stret(a2 * 0.5);
  v8 = __sincosf_stret(a3 * 0.5);
  v9 = __sincosf_stret(a4 * 0.5);
  *&v10 = (v7.__sinval * (v8.__cosval * v9.__cosval)) - (v7.__cosval * (v8.__sinval * v9.__sinval));
  *(&v10 + 1) = ((v7.__sinval * v8.__cosval) * v9.__sinval) + ((v7.__cosval * v8.__sinval) * v9.__cosval);
  result = (-(v7.__sinval * v8.__sinval) * v9.__cosval) + ((v7.__cosval * v8.__cosval) * v9.__sinval);
  *(&v10 + 1) = __PAIR64__((v7.__sinval * (v8.__sinval * v9.__sinval)) + (v7.__cosval * (v8.__cosval * v9.__cosval)), LODWORD(result));
  *a1 = v10;
  return result;
}

double C3DQuaternionGetRotationBetweenQuaternions(float32x4_t a1, float32x4_t a2)
{
  v2 = vnegq_f32(a1);
  v2.i32[3] = a1.i32[3];
  v3 = vmulq_f32(v2, v2);
  *v3.i8 = vadd_f32(*v3.i8, *&vextq_s8(v3, v3, 8uLL));
  v4 = vdupq_lane_s32(vadd_f32(*v3.i8, vdup_lane_s32(*v3.i8, 1)), 0);
  v5 = vrsqrteq_f32(v4);
  v6 = vmulq_f32(v5, vrsqrtsq_f32(v4, vmulq_f32(v5, v5)));
  v7 = vbslq_s8(vceqzq_f32(v4), v2, vmulq_f32(v2, vmulq_f32(v6, vrsqrtsq_f32(v4, vmulq_f32(v6, v6)))));
  v8 = a2;
  v8.i32[3] = a2.i32[0];
  v9 = vzip1q_s32(v7, v7);
  v9.i32[0] = v7.i32[2];
  v10 = vuzp1q_s32(v7, v7);
  v10.i32[0] = v7.i32[1];
  *&result = vmlsq_f32(vmlaq_f32(vmlaq_laneq_f32(vmulq_f32(vmulq_f32(v8, vextq_s8(vdupq_laneq_s32(v7, 3), v7, 4uLL)), xmmword_21C27FD00), v7, a2, 3), xmmword_21C27FD00, vmulq_f32(vextq_s8(vextq_s8(a2, a2, 0xCuLL), a2, 8uLL), v9)), v10, vextq_s8(vuzp1q_s32(a2, a2), a2, 0xCuLL)).u64[0];
  return result;
}

void C3DQuaternionGetEuler(float32x4_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v4 = vmulq_f32(v3, v3);
  v5 = vaddv_f32(vadd_f32(*v4.i8, *&vextq_s8(v4, v4, 8uLL)));
  v6 = 0uLL;
  if (v5 != 0.0)
  {
    LODWORD(v7) = a1->i64[1];
    LODWORD(v8) = HIDWORD(a1->i64[0]);
    LODWORD(v9) = HIDWORD(*a1);
    v10 = (vmuls_lane_f32(-v3.f32[1], v3, 3) + (v3.f32[0] * v3.f32[2])) / v5;
    if (v10 <= 0.499)
    {
      if (v10 >= -0.499)
      {
        v13 = *&v4.i32[1];
        v14 = v4.i64[1];
        v17 = *a1;
        v18 = *v4.i32;
        v20 = atan2f(((v3.f32[2] * v3.f32[3]) + (v3.f32[0] * v3.f32[1])) + ((v3.f32[2] * v3.f32[3]) + (v3.f32[0] * v3.f32[1])), *&v4.i32[3] + ((*v4.i32 - *&v4.i32[1]) - *&v4.i32[2]));
        *&v15 = atan2f(((v17.f32[0] * v9) + (v8 * v7)) + ((v17.f32[0] * v9) + (v8 * v7)), *(&v14 + 1) + (*&v14 + (-v18 - v13)));
        v19 = v15;
        v16 = asinf(v10 * -2.0);
        v6 = v19;
        *(&v6 + 1) = v16;
        *(&v6 + 2) = v20;
        goto LABEL_8;
      }

      *&v6 = atan2f(COERCE_FLOAT(*a1), v3.f32[3]) * -2.0;
      v12 = &dword_21C27FCE0;
    }

    else
    {
      v11 = atan2f(COERCE_FLOAT(*a1), v3.f32[3]);
      *&v6 = v11 + v11;
      v12 = &dword_21C27FCE4;
    }

    DWORD1(v6) = *v12;
    DWORD2(v6) = 0;
  }

LABEL_8:
  *a2 = v6;
}

C3D::ShadowMapPass *C3D::ShadowMapPass::ShadowMapPass(C3D::ShadowMapPass *this, C3D::RenderGraph *a2, C3D::Pass *a3, __C3DNode *a4)
{
  v24[0] = 0;
  v24[1] = a4;
  memset(&v24[2], 0, 24);
  v25 = xmmword_21C27FD10;
  v26 = 0;
  v27 = 16842752;
  v28 = 2;
  v5 = C3D::DrawNodesPass::DrawNodesPass(this, a2, a3, v24);
  *v5 = &unk_282DC2BF0;
  Light = C3DNodeGetLight(*(v5 + 31));
  if (!Light)
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      C3D::ShadowMapPass::ShadowMapPass(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  if ((C3DLightGetCastsShadow(Light) & 1) == 0)
  {
    v15 = scn_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      C3D::ShadowMapPass::ShadowMapPass(v15, v16, v17, v18, v19, v20, v21, v22);
    }
  }

  return this;
}

void C3D::ShadowMapPass::setup(C3D::ShadowMapPass *this)
{
  *(this + 119) = 0;
  v2 = *(this + 31);
  v3 = C3D::Pass::nameWithPrefixAndPointer(this, "SceneKit-spotShadowDepth-", v2);
  Scene = C3DEngineContextGetScene(*(this + 2));
  LightingSystem = C3DSceneGetLightingSystem(Scene);
  C3DLightingSystemSetShadowMapNameForNode(LightingSystem, v2, [MEMORY[0x277CCACA8] stringWithUTF8String:v3]);
  C3D::Pass::setOutputCount(this, 1u);
  v6 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  *(v6 + 64) = 2;
  *(v6 + 8) = v3;
  *(v6 + 28) = 252;
  *(v6 + 66) = *(v6 + 66) & 0xFFEC | 0x12;
  Light = C3DNodeGetLight(v2);
  RealShadowMapSize = C3DLightGetRealShadowMapSize(Light);
  *(v6 + 16) = *RealShadowMapSize.i32;
  *(v6 + 18) = *&RealShadowMapSize.i32[1];
  v9 = C3DLightSupportsShadowCascades(Light);
  ShadowCascadeCount = C3DLightGetShadowCascadeCount(Light);
  Type = C3DLightGetType(Light);
  if ((ShadowCascadeCount <= 1 || !v9) && Type != 2)
  {
    *(this + 121) = 1;
    v12.i32[0] = *(v6 + 16);
    v12.i32[1] = *(v6 + 18);
    __asm { FMOV            V1.2S, #1.0 }

    *(&_Q1 + 1) = vadd_f32(vcvt_f32_u32(v12), 0xC0000000C0000000);
    *(this + 8) = _Q1;
LABEL_8:
    if (ShadowCascadeCount < 2 || !v9)
    {
      LOWORD(ShadowCascadeCount) = 1;
      v19 = 2;
    }

    else
    {
      *(v6 + 22) = ShadowCascadeCount;
      v19 = 3;
    }

    *(v6 + 24) = v19;
    *(this + 19) = ShadowCascadeCount;
    *(this + 117) = 0;
    goto LABEL_12;
  }

  if (Type != 2)
  {
    goto LABEL_8;
  }

  v18 = *(v6 + 16);
  if (v18 <= *(v6 + 18))
  {
    LOWORD(v18) = *(v6 + 18);
  }

  *(v6 + 16) = v18;
  *(v6 + 18) = v18;
  *(v6 + 24) = 5;
LABEL_12:

  C3D::DrawNodesPass::setup(this);
}

void C3D::ShadowMapPass::compile(C3D::ShadowMapPass *this)
{
  v2 = (*(*this + 64))(this);
  v3 = C3D::RenderGraphResourceManager::get(*(*(this + 3) + 128), v2);
  *(this + 670) = v3;
  if (!v3)
  {
    operator new();
  }

  *(this + 32) = C3D::SmartPtr<SCNMTLRenderPipeline *,C3D::detail::NSRetainFct,C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(v3 + 16);
  C3D::DrawNodesPass::compile(this);
}

void C3D::ShadowMapPass::execute(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  Light = C3DNodeGetLight(a1[31]);
  v6 = 2.0;
  if (C3DLightGetForceCasterBackFaceOnly(Light))
  {
    if ((*(v4 + 73) & 1) == 0 && *(v4 + 16) != 1)
    {
      *(v4 + 16) = 1;
      *(v4 + 41) = 1;
    }

    *(v4 + 73) = 1;
    v6 = 0.0;
  }

  if (C3DLightGetType(Light) != 2)
  {
    ShadowBias = C3DLightGetShadowBias(Light);
    CoordinatesSystemOptions = C3DEngineContextGetCoordinatesSystemOptions(a1[2]);
    *&v9 = -v6;
    LODWORD(v10) = 1036831949;
    if ((CoordinatesSystemOptions & 8) != 0)
    {
      *&v10 = -10.0;
    }

    *&v10 = *&v10 * ShadowBias;
    if ((CoordinatesSystemOptions & 8) == 0)
    {
      *&v9 = v6;
    }

    [*(v4 + 3392) setDepthBias:v10 slopeScale:v9 clamp:0.0];
  }

  C3D::DrawNodesPass::execute(a1, a2);
}

void C3D::ShadowMapPass::_setupPointOfViewMatrices(uint64_t a1, float32x4_t *a2, float32x4_t *a3)
{
  Scene = C3DEngineContextGetScene(*(a1 + 16));
  LightingSystem = C3DSceneGetLightingSystem(Scene);
  CoordinatesSystemOptions = C3DEngineContextGetCoordinatesSystemOptions(*(a1 + 16));
  C3D::DrawNodesPass::_setupPointOfViewMatrices(a1, a2, a3);
  if (*(a1 + 302))
  {
    v9 = 0;
  }

  else
  {
    v9 = a1 + 3024;
  }

  C3DLightingSystemComputeShadowMatrices(LightingSystem, a2, v9, a1 + 3792, 0, 0, 0, CoordinatesSystemOptions);
}

void C3D::ShadowMapPass::Resource::~Resource(C3D::ShadowMapPass::Resource *this)
{
  *this = &unk_282DC2C80;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  *this = &unk_282DC2C80;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x21CF07610);
}

void C3DSphereMake(_OWORD *a1, __int128 *a2, float a3)
{
  if (!a1 && (v24 = a3, v5 = scn_default_log(), v6 = os_log_type_enabled(v5, OS_LOG_TYPE_FAULT), a3 = v24, v6))
  {
    C3DPlaneMakeWithVectors_cold_1(v5, v7, v8, v9, v10, v11, v12, v13);
    a3 = v24;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v25 = a3;
  v14 = scn_default_log();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_FAULT);
  a3 = v25;
  if (v15)
  {
    C3DSphereMake_cold_2(v14, v16, v17, v18, v19, v20, v21, v22);
    a3 = v25;
  }

LABEL_6:
  v23 = *a2;
  *(&v23 + 3) = a3;
  *a1 = v23;
}

void C3DSphereMakeByMergingSpheres(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3, double a4, double a5, double a6, double a7)
{
  v8 = *a2;
  LODWORD(v9) = HIDWORD(*a2);
  if (v9 < 0.0)
  {
    goto LABEL_2;
  }

  v11 = *a3;
  LODWORD(v12) = HIDWORD(*a3);
  if (v12 < 0.0)
  {
LABEL_4:
    v10 = *a2;
    goto LABEL_5;
  }

  v13 = vsubq_f32(v8, v11);
  v14 = vmulq_f32(v13, v13);
  v15 = sqrtf(v14.f32[2] + vaddv_f32(*v14.f32));
  if ((v9 + v15) >= v12)
  {
    if ((v12 + v15) >= v9)
    {
      *&a7 = v14.f32[2] + vaddv_f32(*v14.f32);
      v16 = vdupq_lane_s32(*&a7, 0);
      v17 = vrsqrteq_f32(v16);
      v18 = vmulq_f32(v17, vrsqrtsq_f32(v16, vmulq_f32(v17, v17)));
      v19 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(*&a7 != 0.0)), 0x1FuLL));
      v19.i32[3] = 0;
      v20 = vbslq_s8(vcltzq_s32(v19), vmulq_f32(v13, vmulq_f32(v18, vrsqrtsq_f32(v16, vmulq_f32(v18, v18)))), v13);
      v21 = vsubq_f32(v11, vmulq_laneq_f32(v20, v11, 3));
      v22 = vaddq_f32(v8, vmulq_laneq_f32(v20, v8, 3));
      v23 = vsubq_f32(v21, v22);
      v24 = vmulq_f32(v23, v23);
      a1->f32[3] = sqrtf(v24.f32[2] + vaddv_f32(*v24.f32)) * 0.5;
      *v10.i64 = C3DVector3MidVector(v22, v21);
      v10.i32[3] = a1->i32[3];
      goto LABEL_5;
    }

    if (a2 != a1)
    {
      goto LABEL_4;
    }
  }

  else if (a3 != a1)
  {
LABEL_2:
    v10 = *a3;
LABEL_5:
    *a1 = v10;
  }
}

float C3DSphereXFormMatrix4x4(float32x4_t *a1, float32x4_t *a2, uint64_t a3)
{
  v6 = *a1;
  v7 = a2[1];
  v12[0] = *a2;
  v12[1] = v7;
  v8 = a2[3];
  v12[2] = a2[2];
  v12[3] = v8;
  *&v9 = C3DVector3MultMatrix4x4(v12, v6);
  HIDWORD(v9) = *(a3 + 12);
  *a3 = v9;
  v12[0].i32[2] = 0;
  v12[0].i64[0] = 0;
  C3DMatrix4x4GetScale(a2, v12);
  v10 = vabsq_f32(v12[0]);
  result = a1->f32[3] * fmaxf(fmaxf(v10.f32[0], v10.f32[2]), v10.f32[1]);
  *(a3 + 12) = result;
  return result;
}

CFTypeRef __CFTypeStackRetainCallback(CFTypeRef cf)
{
  if (cf)
  {
    return CFRetain(cf);
  }

  return cf;
}

void __CFTypeStackReleaseCallback(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void _C3DStackCFFinalize(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      _C3DStackCFFinalize_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  C3DStackReset(a1);
  v10 = *(a1 + 16);
  if (v10)
  {
    free(v10);
  }
}

CFStringRef _C3DStackCFCopyFormatDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DStack>");
}

CFStringRef _C3DStackCFCopyDebugDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DStack>");
}

uint64_t __C3DStackGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DStackGetTypeID_typeID = result;
  return result;
}

uint64_t C3DStackCreate(unsigned int a1, uint64_t a2, size_t a3)
{
  if (C3DStackGetTypeID_onceToken != -1)
  {
    C3DStackCreate_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DStackGetTypeID_typeID, 32);
  *(Instance + 24) = a1;
  *(Instance + 32) = a3;
  *(Instance + 16) = malloc_type_calloc(a1, a3, 0x4DD0795EuLL);
  *(Instance + 28) = 0;
  *(Instance + 40) = a2;
  return Instance;
}

uint64_t C3DStackGetCount(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      _C3DStackCFFinalize_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 28);
}

void C3DStackPop(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      _C3DStackCFFinalize_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if (!*(a1 + 28))
  {
    v10 = scn_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      C3DStackPop_cold_2(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  --*(a1 + 28);
}

uint64_t C3DStackSetValue(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      _C3DStackCFFinalize_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 32) != 8)
  {
    v12 = scn_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      C3DStackSetValue_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }

  v20 = *(a1 + 16);
  v21 = *(a1 + 28);
  result = *(v20 + 8 * v21);
  if (result != a2)
  {
    v23 = *(a1 + 40);
    if (v23)
    {
      (*(v23 + 8))();
      result = (*v23)(a2);
      v20 = *(a1 + 16);
      v21 = *(a1 + 28);
    }

    *(v20 + 8 * v21) = a2;
  }

  return result;
}

void C3DStackPush(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      _C3DStackCFFinalize_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *(a1 + 24);
  v11 = *(a1 + 28) + 1;
  *(a1 + 28) = v11;
  if (v11 >= v10)
  {
    LODWORD(v12) = 2 * v10;
    if (2 * v10 >= (v10 + 1024))
    {
      v12 = (v10 + 1024);
    }

    else
    {
      v12 = v12;
    }

    *(a1 + 24) = v12;
    v13 = malloc_type_realloc(*(a1 + 16), *(a1 + 32) * v12, 0xA1C82B66uLL);
    *(a1 + 16) = v13;
    bzero(&v13[*(a1 + 32) * v10], *(a1 + 32) * (*(a1 + 24) - v10));
  }
}

uint64_t C3DStackGetValue(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      _C3DStackCFFinalize_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if (*(a1 + 32) != 8)
  {
    v10 = scn_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      C3DStackGetValue_cold_2(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  return *(*(a1 + 16) + *(a1 + 32) * *(a1 + 28));
}

void C3DStackReset(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      _C3DStackCFFinalize_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  *(a1 + 28) = 0;
  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = *(a1 + 24);
    if (v11)
    {
      v12 = 0;
      v13 = *(a1 + 16);
      do
      {
        if (*(v13 + *(a1 + 32) * v12))
        {
          (*(v10 + 8))();
          v11 = *(a1 + 24);
        }

        ++v12;
      }

      while (v12 < v11);
    }
  }
}

btHingeConstraint *_createConstraintFromDefinition(uint64_t a1)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    v4 = [v2 _handle];
    *v13.var0.var0 = *(a1 + 40);
    *&v13.var0.var0[2] = *(a1 + 48);
    *v12.var0.var0 = *(a1 + 16);
    *&v12.var0.var0[2] = *(a1 + 24);
    v5 = [*(a1 + 8) _handle];
    *v11.var0.var0 = *(a1 + 52);
    *&v11.var0.var0[2] = *(a1 + 60);
    *v10.var0.var0 = *(a1 + 28);
    *&v10.var0.var0[2] = *(a1 + 36);
    v6 = btAlignedAllocInternal(880, 16);
    btHingeConstraint::btHingeConstraint(v6, v4, v5, &v12, &v10, &v13, &v11, 0);
  }

  else
  {
    if (!v2)
    {
      v7 = scn_default_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        _createConstraintFromDefinition(v7);
      }
    }

    v8 = [*a1 _handle];
    *v13.var0.var0 = *(a1 + 40);
    *&v13.var0.var0[2] = *(a1 + 48);
    *v12.var0.var0 = *(a1 + 16);
    *&v12.var0.var0[2] = *(a1 + 24);
    v6 = btAlignedAllocInternal(880, 16);
    btHingeConstraint::btHingeConstraint(v6, v8, &v12, &v13, 0);
  }

  return v6;
}

float btHingeConstraint::setAxis(btHingeConstraint *this, float32x4_t *a2)
{
  v2 = a2->f32[2];
  v3 = a2->f32[1];
  if (fabsf(v2) <= 0.70711)
  {
    v12 = (v3 * v3) + (a2->f32[0] * a2->f32[0]);
    v13 = 1.0 / sqrtf(v12);
    v9.i64[1] = 0;
    v9.f32[0] = -(v3 * v13);
    v9.f32[1] = a2->f32[0] * v13;
    v8 = -(v2 * v9.f32[1]);
    v10 = v2 * v9.f32[0];
    v11 = v12 * v13;
  }

  else
  {
    v4 = (v2 * v2) + (v3 * v3);
    v5 = 1.0 / sqrtf(v4);
    v6 = -(v2 * v5);
    *&v7 = v3 * v5;
    v8 = v4 * v5;
    v9.i32[0] = 0;
    v9.f32[1] = v6;
    v9.i64[1] = v7;
    v10 = -(a2->f32[0] * *&v7);
    v11 = a2->f32[0] * v6;
  }

  v14 = *&this->var17;
  LODWORD(this->var16.var0.var0[1].var0.var0[0]) = v9.i32[0];
  this->var16.var0.var0[1].var0.var0[1] = v8;
  LODWORD(this->var16.var0.var0[1].var0.var0[2]) = a2->i32[0];
  HIDWORD(v15) = v9.i32[1];
  LODWORD(v15) = 0;
  *&this->var16.var0.var0[1].var0.var0[3] = v15;
  this->var16.var0.var0[2].var0.var0[1] = v10;
  *&this->var16.var0.var0[2].var0.var0[2] = a2->u32[1];
  LODWORD(this->var16.var1.var0.var0[0]) = v9.i32[2];
  this->var16.var1.var0.var0[1] = v11;
  *&this->var16.var1.var0.var0[2] = a2->u32[2];
  var8 = this->var8;
  v17 = *a2;
  v18 = *(var8 + 1);
  v19 = *(var8 + 2);
  v20 = vmulq_f32(v18, *a2);
  v21 = vmulq_f32(*a2, v19);
  v22 = *(var8 + 3);
  v23 = vmulq_f32(*a2, v22);
  v23.i32[3] = 0;
  v24 = vadd_f32(vpadd_f32(*v20.i8, *v21.i8), vzip1_s32(*&vextq_s8(v20, v20, 8uLL), *&vextq_s8(v21, v21, 8uLL)));
  v25 = vpadd_f32(vpadd_f32(*v23.i8, *&vextq_s8(v23, v23, 8uLL)), 0);
  *v26.f32 = vext_s8(v24, v25, 4uLL);
  *&v26.u32[2] = v24;
  *v27.f32 = v24;
  *&v27.u32[2] = v25;
  v28 = vmulq_f32(*a2, v27);
  v29 = vadd_f32(vpadd_f32(*v28.i8, *v28.i8), *&vextq_s8(v28, v28, 8uLL)).f32[0];
  if (v29 >= -1.0)
  {
    v39 = vsubq_f32(vmulq_f32(v17, v26), vmulq_f32(vextq_s8(vextq_s8(v17, v17, 0xCuLL), v17, 8uLL), v27));
    v39.i32[3] = sqrtf((v29 + 1.0) + (v29 + 1.0));
    v40.i32[1] = 1056964608;
    v40.i64[1] = 0x3F0000003F000000;
    *v40.i32 = 1.0 / v39.f32[3];
    v41 = vzip1q_s32(v40, v40);
    v41.f32[2] = 1.0 / v39.f32[3];
    v42 = vmulq_f32(v39, v41);
    v38 = vzip2q_s32(vzip1q_s32(v42, vextq_s8(v42, v42, 0xCuLL)), v42);
  }

  else
  {
    LODWORD(v30) = HIDWORD(a2->i64[0]);
    v31 = fabsf(v17.f32[2]);
    v32 = 1.0 / sqrtf((v30 * v30) + (v17.f32[0] * v17.f32[0]));
    v33 = -(v17.f32[1] * v32);
    v34 = v17.f32[0] * v32;
    v35 = v33;
    v17.f32[0] = 1.0 / sqrtf((v17.f32[2] * v17.f32[2]) + (v30 * v30));
    v36 = v17.f32[1] * v17.f32[0];
    if (v31 <= 0.70711)
    {
      v37 = v34;
    }

    else
    {
      v35 = 0.0;
      v37 = -(v17.f32[2] * v17.f32[0]);
    }

    if (v31 <= 0.70711)
    {
      v36 = 0.0;
    }

    v38.i64[0] = __PAIR64__(LODWORD(v37), LODWORD(v35));
    v38.i64[1] = LODWORD(v36);
  }

  v43 = vextq_s8(v38, v38, 8uLL).u64[0];
  v44 = vext_s8(v43, *v38.i8, 4uLL);
  *v45.f32 = vzip1_s32(*&vextq_s8(v9, v9, 8uLL), *v9.f32);
  *v46.f32 = vzip1_s32(v43, *v38.i8);
  *v47.f32 = vext_s8(*v38.i8, v43, 4uLL);
  v48.i64[0] = vextq_s8(v9, v9, 4uLL).u64[0];
  *v49.f32 = vdup_laneq_s32(v38, 3);
  v46.i64[1] = v47.i64[0];
  *&v48.u32[2] = vrev64_s32(*v45.f32);
  v49.i64[1] = v38.i64[0];
  *&v9.u32[2] = vdup_lane_s32(*v9.f32, 1);
  v45.i64[1] = v45.i64[0];
  *&v47.u32[2] = v44;
  v50 = vsubq_f32(veorq_s8(vaddq_f32(vmulq_f32(v9, v49), vmulq_f32(v45, v47)), xmmword_21C27FD30), vmulq_f32(v48, v46));
  v51 = veorq_s8(v38, xmmword_21C27FD40);
  v45.i64[0] = vextq_s8(v51, v51, 8uLL).u64[0];
  *v46.f32 = vzip1_s32(*v45.f32, *v51.f32);
  *v48.f32 = vext_s8(*v45.f32, *v51.f32, 4uLL);
  v52.i64[0] = vextq_s8(v50, v50, 4uLL).u64[0];
  *v45.f32 = vext_s8(*v51.f32, *v45.f32, 4uLL);
  *_Q25.f32 = vzip1_s32(*&vextq_s8(v50, v50, 8uLL), *v50.f32);
  _Q25.i64[1] = v52.i64[0];
  *&v45.u32[2] = vrev64_s32(*v46.f32);
  v54 = vmulq_laneq_f32(v51, v50, 3);
  v55 = vtrn2q_s32(v51, v51);
  v52.i64[1] = _Q25.i64[0];
  v46.i64[1] = v48.i64[0];
  v56 = vaddq_f32(vsubq_f32(v54, vmulq_f32(v45, _Q25)), veorq_s8(vaddq_f32(vmulq_f32(vextq_s8(v55, v55, 8uLL), vdupq_lane_s64(v50.i64[0], 0)), vmulq_f32(v46, v52)), xmmword_21C27FD30));
  v55.i64[0] = vextq_s8(v56, v56, 8uLL).u64[0];
  v56.i32[3] = 0;
  var9 = this->var9;
  v58 = *(var9 + 1);
  v59 = *(var9 + 2);
  v60 = *(var9 + 3);
  v61 = vtrn1q_s32(v58, v59);
  *v54.f32 = vzip2_s32(*v60.i8, 0);
  _Q25.i32[0] = vextq_s8(v60, v60, 8uLL).u32[0];
  v62.i64[0] = vextq_s8(v61, v61, 8uLL).u64[0];
  v61.i64[1] = v60.u32[0];
  v60.i64[0] = 0x8000000080000000;
  v60.i64[1] = 0x8000000080000000;
  v63 = veorq_s8(*(var9 + 4), v60);
  _Q21 = vmulq_f32(v61, v63);
  *v58.f32 = vzip2_s32(*v58.f32, *v59.i8);
  v58.i64[1] = v54.i64[0];
  _Q19 = vmulq_f32(v58, v63);
  *_Q19.f32 = vadd_f32(vpadd_f32(*_Q21.i8, *_Q19.f32), vzip1_s32(*&vextq_s8(_Q21, _Q21, 8uLL), *&vextq_s8(_Q19, _Q19, 8uLL)));
  v62.i64[1] = _Q25.u32[0];
  _Q20 = vmulq_f32(v62, v63);
  _Q20.i32[3] = 0;
  v67 = vmulq_f32(v14, v18);
  v68 = vmulq_f32(v14, v19);
  v69 = vmulq_f32(v14, v22);
  v69.i32[3] = 0;
  *v67.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v67, v67, 8uLL), *&vextq_s8(v68, v68, 8uLL)), vpadd_f32(*v67.f32, *v68.i8));
  *&v67.u32[2] = vpadd_f32(vpadd_f32(*v69.i8, *&vextq_s8(v69, v69, 8uLL)), 0);
  v70 = vaddq_f32(v67, *(var8 + 4));
  v71 = vmulq_f32(v61, v70);
  _Q4 = vmulq_f32(v58, v70);
  v73 = vmulq_f32(v62, v70);
  v73.i32[3] = 0;
  *v71.f32 = vadd_f32(vpadd_f32(*v71.f32, *_Q4.i8), vzip1_s32(*&vextq_s8(v71, v71, 8uLL), *&vextq_s8(_Q4, _Q4, 8uLL)));
  *&v71.u32[2] = vpadd_f32(vpadd_f32(*v73.i8, *&vextq_s8(v73, v73, 8uLL)), 0);
  *&_Q19.u32[2] = vpadd_f32(vpadd_f32(*_Q20.i8, *&vextq_s8(_Q20, _Q20, 8uLL)), 0);
  _Q0 = vsubq_f32(vmulq_f32(v27, vextq_s8(vextq_s8(v56, v56, 0xCuLL), v56, 8uLL)), vmulq_f32(v26, v56));
  *&this->var29 = vaddq_f32(_Q19, v71);
  *v71.f32 = vext_s8(*v56.f32, *&vextq_s8(_Q0, _Q0, 8uLL), 4uLL);
  v56.i32[1] = _Q0.i32[1];
  *&this->var19.var2 = v56.i64[0];
  LODWORD(this->var19.var4) = v24.i32[0];
  this->var19.var5 = 0.0;
  *&this->var19.var6 = v71.i64[0];
  LODWORD(this->var20) = v24.i32[1];
  this->var21 = 0.0;
  *&this->var22 = vzip1_s32(*v55.i8, *_Q0.i8);
  *&this->var24 = v25.i32[0];
  *&this->var28 = 0;
  _S1 = *(var9 + 13);
  _Q0.i32[0] = *(var9 + 14);
  v76 = *(var9 + 9);
  _Q4.i32[0] = *(var9 + 10);
  _Q19.i32[0] = *(var9 + 12);
  _Q20.i32[0] = *(var9 + 8);
  _Q5 = *(var9 + 1);
  v79 = *&this->var19.var2;
  v78 = *&this->var19.var6;
  v80 = *&this->var22;
  v80.i32[3] = 0;
  v58.f32[0] = (v76 * *_Q0.i32) - (*_Q4.i32 * _S1);
  v54.i32[3] = 0;
  v54.f32[0] = v58.f32[0];
  v54.f32[1] = (*_Q4.i32 * _Q19.f32[0]) - (*_Q20.i32 * *_Q0.i32);
  v54.f32[2] = (*_Q20.i32 * _S1) - (v76 * _Q19.f32[0]);
  v81 = vmulq_f32(_Q5, v54);
  *v81.i32 = 1.0 / vadd_f32(*&vextq_s8(v81, v81, 8uLL), vpadd_f32(*v81.i8, *v81.i8)).f32[0];
  v78.i32[3] = 0;
  __asm { FMLA            S25, S19, V5.S[1] }

  v79.i32[3] = 0;
  v86 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v79, ((*_Q20.i32 * _S1) - (v76 * _Q19.f32[0])) * *v81.i32), v78, _Q25.f32[0] * *v81.i32), v80, ((_Q5.f32[0] * v76) - (COERCE_FLOAT(HIDWORD(*(var9 + 2))) * *_Q20.i32)) * *v81.i32);
  __asm { FMLA            S21, S20, V5.S[2] }

  v87 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v79, ((*_Q4.i32 * _Q19.f32[0]) - (*_Q20.i32 * *_Q0.i32)) * *v81.i32), v78, ((_Q5.f32[0] * *_Q0.i32) - (COERCE_FLOAT(*(var9 + 3)) * _Q19.f32[0])) * *v81.i32), v80, *_Q21.i32 * *v81.i32);
  __asm
  {
    FMLA            S7, S4, V5.S[1]
    FMLA            S0, S1, V5.S[2]
  }

  result = *_Q0.i32 * *v81.i32;
  *&this->var19.var2 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v79, v58.f32[0] * *v81.i32), v78, result), v80, _S7 * *v81.i32);
  *&this->var19.var6 = v87;
  *&this->var22 = v86;
  return result;
}

void sub_21BF45D64(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 240), 8);
  _Block_object_dispose((v1 - 208), 8);
  _Unwind_Resume(a1);
}

uint64_t SCNMTLComputeCommandEncoder::dispatchOnGrid1D(SCNMTLComputeCommandEncoder *this, unint64_t a2)
{
  if (!this->_computePipelineState)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      SCNMTLComputeCommandEncoder::dispatchOnGrid1D(v4);
    }
  }

  SCNMTLComputeCommandEncoder::_bindPendingTextures(this);
  SCNMTLComputeCommandEncoder::_bindPendingBuffers(this);
  features = this->_features;
  v6 = [(MTLComputePipelineState *)this->_computePipelineState threadExecutionWidth];
  encoder = this->_encoder;
  if ((features & 0x40) != 0)
  {
    v11 = a2;
    v12 = vdupq_n_s64(1uLL);
    v9 = v6;
    v10 = v12;
    return [(MTLComputeCommandEncoder *)encoder dispatchThreads:&v11 threadsPerThreadgroup:&v9];
  }

  else
  {
    v11 = (a2 + v6 - 1) / v6;
    v12 = vdupq_n_s64(1uLL);
    v9 = v6;
    v10 = v12;
    return [(MTLComputeCommandEncoder *)encoder dispatchThreadgroups:&v11 threadsPerThreadgroup:&v9];
  }
}

void *_arrowNode(uint64_t a1)
{
  if (_arrowNode_onceToken != -1)
  {
    _arrowNode_cold_1();
  }

  v2 = [_arrowNode_arrowNode clone];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = ___arrowNode_block_invoke_2;
  v4[3] = &unk_2782FBA38;
  v4[4] = a1;
  [v2 enumerateHierarchyUsingBlock:v4];
  return v2;
}

void *_axisNode(uint64_t a1)
{
  if (_axisNode_onceToken != -1)
  {
    _axisNode_cold_1();
  }

  v2 = [_axisNode_axisNode clone];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = ___axisNode_block_invoke_2;
  v4[3] = &unk_2782FBA38;
  v4[4] = a1;
  [v2 enumerateHierarchyUsingBlock:v4];
  return v2;
}

void *_translationPlaneNode(uint64_t a1)
{
  if (_translationPlaneNode_onceToken != -1)
  {
    _translationPlaneNode_cold_1();
  }

  v2 = [_translationPlaneNode_planeNode clone];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = ___translationPlaneNode_block_invoke_2;
  v4[3] = &unk_2782FBA38;
  v4[4] = a1;
  [v2 enumerateHierarchyUsingBlock:v4];
  return v2;
}

void *_rotationArcNode(uint64_t a1)
{
  if (_rotationArcNode_onceToken != -1)
  {
    _rotationArcNode_cold_1();
  }

  v2 = [_rotationArcNode_arcNode clone];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = ___rotationArcNode_block_invoke_2;
  v4[3] = &unk_2782FBA38;
  v4[4] = a1;
  [v2 enumerateHierarchyUsingBlock:v4];
  return v2;
}

void *_wireframeCircle(uint64_t a1, float a2)
{
  if (_wireframeCircle_onceToken != -1)
  {
    _wireframeCircle_cold_1();
  }

  v4 = [_wireframeCircle_circleNode clone];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = ___wireframeCircle_block_invoke_2;
  v6[3] = &unk_2782FBA60;
  v7 = a2;
  v6[4] = a1;
  [v4 enumerateHierarchyUsingBlock:v6];
  return v4;
}

void __computeAnchorMatrix(void *a1@<X0>, float32x4_t *a2@<X8>)
{
  v70 = *MEMORY[0x277D85DE8];
  v4 = [objc_msgSend(a1 "targets")];
  if (!v4)
  {
    Identity = C3DMatrix4x4GetIdentity();
    v10 = Identity[1];
    *a2 = *Identity;
    a2[1] = v10;
    v11 = Identity[3];
    a2[2] = Identity[2];
    a2[3] = v11;
    return;
  }

  v5 = v4;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v6 = [a1 effectiveEditingSpace];
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v7 = C3DMatrix4x4MakeIdentity(&v65);
    }

    else if (v6 == 3)
    {
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v12 = [a1 authoringEnvironment];
      if (v12)
      {
        [v12 viewMatrix];
      }

      else
      {
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
      }

      *&m.m11 = v61;
      *&m.m21 = v62;
      *&m.m31 = v63;
      *&m.m41 = v64;
      SCNMatrix4Invert(&v60, &m);
      v61 = *&v60.m11;
      v62 = *&v60.m21;
      v63 = *&v60.m31;
      v64 = *&v60.m41;
      goto LABEL_18;
    }
  }

  else
  {
    if (!v6)
    {
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v8 = v5;
LABEL_14:
      [v8 worldTransform];
LABEL_18:
      v7 = C3DMatrix4x4FromSCNMatrix4(&v65, &v61);
      goto LABEL_19;
    }

    if (v6 == 1)
    {
      v8 = [v5 parentItem];
      v63 = 0u;
      v64 = 0u;
      if (!v8)
      {
        v8 = v5;
      }

      v61 = 0uLL;
      v62 = 0uLL;
      goto LABEL_14;
    }
  }

LABEL_19:
  v7.n128_u64[0] = 0;
  v52 = v7;
  v53 = v7;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v13 = [a1 targets];
  v14 = [v13 countByEnumeratingWithState:&v55 objects:v69 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v56;
    v17 = (a1 + 77);
    *(&v18 + 1) = v52.n128_u64[1];
    v48 = v52.n128_f32[1];
    *&v18 = 0;
    v50 = v18;
    do
    {
      v19 = 0;
      v20 = v53;
      do
      {
        v54 = v20;
        if (*v56 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v21 = *(*(&v55 + 1) + 8 * v19);
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        if (v21)
        {
          [v21 worldTransform];
        }

        v23 = v64.f32[1];
        v22 = v64.f32[0];
        if (v52.n128_f32[0] >= v64.f32[0])
        {
          v24 = v52.n128_f32[0];
        }

        else
        {
          v24 = v64.f32[0];
        }

        if (v52.n128_f32[0] < v64.f32[0])
        {
          v22 = v52.n128_f32[0];
        }

        v25 = v17->i64[0];
        if (v17->i64[0] != 1)
        {
          v22 = v52.n128_f32[0] + v64.f32[0];
        }

        if (v25 == 2)
        {
          v22 = v24;
        }

        v52.n128_f32[0] = v22;
        v26 = a1[78];
        if (v48 >= v64.f32[1])
        {
          v27 = v48;
        }

        else
        {
          v27 = v64.f32[1];
        }

        if (v48 < v64.f32[1])
        {
          v23 = v48;
        }

        if (v26 != 1)
        {
          v23 = v48 + v64.f32[1];
        }

        if (v26 != 2)
        {
          v27 = v23;
        }

        v48 = v27;
        if (a1[79] == 1)
        {
          v20 = v54;
          if (v54.n128_f32[0] >= v64.f32[2])
          {
            v20.n128_f32[0] = v64.f32[2];
          }
        }

        else
        {
          v28 = v64.f32[2];
          v20.n128_f32[0] = v54.n128_f32[0] + v64.f32[2];
          if (v54.n128_f32[0] >= v64.f32[2])
          {
            v28 = v54.n128_f32[0];
          }

          if (v25 == 2)
          {
            v20.n128_f32[0] = v28;
          }
        }

        v29 = v50;
        *&v29 = *&v50 + 1.0;
        v50 = v29;
        ++v19;
      }

      while (v15 != v19);
      v53 = v20;
      v15 = [v13 countByEnumeratingWithState:&v55 objects:v69 count:16];
    }

    while (v15);
    if (*&v50 == 0.0)
    {
      v52.n128_u64[0] = __PAIR64__(LODWORD(v48), v52.n128_u32[0]);
    }

    else
    {
      v30 = vbsl_s8(vmovn_s64(vceqzq_s64(*v17)), vdiv_f32(__PAIR64__(LODWORD(v48), v52.n128_u32[0]), vdup_lane_s32(*&v50, 0)), __PAIR64__(LODWORD(v48), v52.n128_u32[0]));
      v31 = v53.n128_f32[0];
      if (!a1[79])
      {
        v31 = v53.n128_f32[0] / *&v50;
      }

      v52.n128_u64[0] = v30;
      v53.n128_f32[0] = v31;
    }
  }

  v61 = v65;
  v62 = v66;
  v63 = v67;
  v64 = v68;
  *v32.i64 = C3DVector3MultMatrix4x4(&v61, xmmword_21C27F910);
  v49 = v32;
  v61 = v65;
  v62 = v66;
  v63 = v67;
  v64 = v68;
  *v33.i64 = C3DVector3MultMatrix4x4(&v61, xmmword_21C27F8C0);
  v51 = v33;
  v61 = v65;
  v62 = v66;
  v63 = v67;
  v64 = v68;
  *v34.i64 = C3DVector3MultMatrix4x4(&v61, xmmword_21C27F600);
  v35 = vsubq_f32(v49, v68);
  v36 = vmulq_f32(v35, v35);
  v37 = vaddv_f32(*v36.f32);
  *v36.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v36.f32[2] + v37));
  *v36.f32 = vmul_f32(*v36.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v36.f32[2] + v37), vmul_f32(*v36.f32, *v36.f32)));
  v38 = vsubq_f32(v51, v68);
  v39 = vmulq_f32(v38, v38);
  *&v40 = v39.f32[2] + vaddv_f32(*v39.f32);
  v41 = vmulq_n_f32(v35, vmul_f32(*v36.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v36.f32[2] + v37), vmul_f32(*v36.f32, *v36.f32))).f32[0]);
  *v36.f32 = vrsqrte_f32(v40);
  *v36.f32 = vmul_f32(*v36.f32, vrsqrts_f32(v40, vmul_f32(*v36.f32, *v36.f32)));
  v42 = vmulq_n_f32(v38, vmul_f32(*v36.f32, vrsqrts_f32(v40, vmul_f32(*v36.f32, *v36.f32))).f32[0]);
  v43 = vsubq_f32(v34, v68);
  v44 = vmulq_f32(v43, v43);
  *&v45 = v44.f32[2] + vaddv_f32(*v44.f32);
  *v44.f32 = vrsqrte_f32(v45);
  *v44.f32 = vmul_f32(*v44.f32, vrsqrts_f32(v45, vmul_f32(*v44.f32, *v44.f32)));
  v46 = vmulq_n_f32(v43, vmul_f32(*v44.f32, vrsqrts_f32(v45, vmul_f32(*v44.f32, *v44.f32))).f32[0]);
  v41.i32[3] = 0;
  v42.i32[3] = 0;
  v46.i32[3] = 0;
  v47.i64[0] = v52.n128_u64[0];
  v47.i64[1] = __PAIR64__(1.0, v53.n128_u32[0]);
  *a2 = v41;
  a2[1] = v42;
  a2[2] = v46;
  a2[3] = v47;
}

double __resolveAxisMove(float32x4_t *a1, float32x4_t a2, float32x4_t a3)
{
  v3 = vmulq_f32(a3, a3);
  *&v4 = v3.f32[2] + vaddv_f32(*v3.f32);
  v5 = vrsqrte_f32(v4);
  v6 = vmul_f32(v5, vrsqrts_f32(v4, vmul_f32(v5, v5)));
  v7 = vmulq_n_f32(a3, vmul_f32(v6, vrsqrts_f32(v4, vmul_f32(v6, v6))).f32[0]);
  v8 = a1[19];
  v9 = a1[20];
  v10 = vmulq_f32(v9, v9);
  v3.f32[0] = v10.f32[2] + vaddv_f32(*v10.f32);
  *v10.f32 = vrsqrte_f32(v3.u32[0]);
  *v10.f32 = vmul_f32(*v10.f32, vrsqrts_f32(v3.u32[0], vmul_f32(*v10.f32, *v10.f32)));
  v11 = vmulq_n_f32(v9, vmul_f32(*v10.f32, vrsqrts_f32(v3.u32[0], vmul_f32(*v10.f32, *v10.f32))).f32[0]);
  v12 = vsubq_f32(v8, a2);
  v13 = vmulq_f32(v7, v11);
  v13.f32[0] = v13.f32[2] + vaddv_f32(*v13.f32);
  v14 = vmulq_f32(v7, v12);
  v15 = vmulq_f32(v12, v11);
  v15.f32[0] = -((v15.f32[2] + vaddv_f32(*v15.f32)) - (v13.f32[0] * (v14.f32[2] + vaddv_f32(*v14.f32)))) / (1.0 - (v13.f32[0] * v13.f32[0]));
  *&result = vmlaq_n_f32(v8, v11, v15.f32[0]).u64[0];
  return result;
}

uint64_t _snapPositionToGrid(uint64_t result, _BYTE *a2, int8x16_t a3, float a4, float a5, float a6, long double a7, float32x4_t a8, float32x4_t a9)
{
  v10 = result;
  v14 = a3;
  v34 = a9;
  v35 = a8;
  if (vabds_f32(*a3.i32, a4) <= 0.00001)
  {
    v15 = 0;
    v31 = a3;
  }

  else
  {
    v36.n128_u32[0] = 0;
    result = _snapPositionComponentToGrid(&v36, *a3.i32, a7);
    v14 = a3;
    v15 = result;
    v16.i32[0] = v36.n128_u32[0];
    *(v16.i64 + 4) = *(a3.i64 + 4);
    if (result)
    {
      v17 = -1;
    }

    else
    {
      v17 = 0;
    }

    v31 = vbslq_s8(vdupq_n_s32(v17), v16, a3);
  }

  v27 = v14.i32[1];
  if (vabds_f32(*&v14.i32[1], a5) <= 0.00001)
  {
    v18 = 0;
  }

  else
  {
    v36.n128_u32[0] = 0;
    result = _snapPositionComponentToGrid(&v36, *&v14.i32[1], a7);
    v18 = result;
    if (result)
    {
      v19.i64[0] = __PAIR64__(v36.n128_u32[0], v31.u32[0]);
      v19.i64[1] = v31.i64[1];
      v31 = v19;
    }

    v14 = a3;
  }

  v20 = v14.i32[2];
  if (vabds_f32(*&v14.i32[2], a6) <= 0.00001)
  {
    v21 = 0;
    v22 = v31;
    v23 = a9;
    if (v15)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v36.n128_u32[0] = 0;
    result = _snapPositionComponentToGrid(&v36, *&v14.i32[2], a7);
    v21 = result;
    if (result)
    {
      v22.i64[0] = v31.i64[0];
      v22.i64[1] = __PAIR64__(v31.u32[3], v36.n128_u32[0]);
    }

    else
    {
      v22 = v31;
    }

    v23 = a9;
    v14.i32[0] = a3.i32[0];
    if (v15)
    {
LABEL_21:
      *a2 = 1;
      if (!v10)
      {
        goto LABEL_22;
      }

LABEL_18:
      v36 = 0u;
      v37 = 0u;
      v32 = v22;
      C3DRay3Make(&v36, &v35, &v34);
      return _adjustSnapForAxisMove(v15, v18, v21, 0, v32, a3, v36, v37);
    }
  }

  *a2 = v18 | v21;
  if (((v18 | v21) & 1) == 0)
  {
    return result;
  }

  if (v10)
  {
    goto LABEL_18;
  }

LABEL_22:
  v24 = vmulq_f32(v23, a8);
  v25 = v24.f32[2] + vaddv_f32(*v24.f32);
  v23.f32[3] = -v25;
  v42 = v23;
  if (v15 | v18 | v21)
  {
    v40 = v22;
    v38 = v22;
    v39 = v22;
    v36 = 0u;
    v37 = 0u;
    v26 = vmulq_f32(v22, v23);
    if (((v26.f32[2] + vaddv_f32(*v26.f32)) - v25) >= 5.0)
    {
      v33 = v22;
      if (v15)
      {
        v22.i32[1] = v27;
        v40.i32[2] = v20;
        v40.i64[0] = v22.i64[0];
        v41 = xmmword_21C27F8C0;
        C3DRay3Make(&v36, &v40, &v41);
        result = C3DIntersectionLinePlane(&v36, &v42, &v40);
        v14.i32[0] = a3.i32[0];
        v22 = v33;
        if (v18)
        {
LABEL_30:
          v22.i32[0] = v14.i32[0];
          v39.i32[2] = v20;
          v39.i64[0] = v22.i64[0];
          v41 = xmmword_21C27F8C0;
          C3DRay3Make(&v36, &v39, &v41);
          result = C3DIntersectionLinePlane(&v36, &v42, &v39);
          v14.i32[0] = a3.i32[0];
          v22.i32[2] = v33.i32[2];
          if (!v21)
          {
            return result;
          }

          goto LABEL_31;
        }
      }

      else if (v18)
      {
        goto LABEL_30;
      }

      if (v21)
      {
LABEL_31:
        v38.i32[2] = v22.i32[2];
        v38.i64[0] = __PAIR64__(v27, v14.u32[0]);
        v41 = xmmword_21C27F600;
        C3DRay3Make(&v36, &v38, &v41);
        return C3DIntersectionLinePlane(&v36, &v42, &v38);
      }
    }
  }

  return result;
}

uint64_t _sortSnapData(float *a1, float *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a1 > *a2;
  }
}

uint64_t _itemsContainsNode(void *a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 0;
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = [a1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(a1);
        }

        if ([*(*(&v9 + 1) + 8 * v7) node] == a2)
        {
          return 1;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [a1 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  return _itemsContainsNode(a1, [a2 parentNode]);
}

uint64_t _closestSnapToAlignItem(uint64_t a1, uint64_t a2, float *a3, float a4)
{
  if (a2 < 2)
  {
    return 0;
  }

  if (a2 == 2)
  {
    v5 = 0;
    v6 = 1;
  }

  else
  {
    v5 = 0;
    v6 = a2 - 1;
    do
    {
      if (*(a1 + 24 * ((v5 + v6) / 2)) <= a4)
      {
        v5 = (v5 + v6) / 2;
      }

      else
      {
        v6 = (v5 + v6) / 2;
      }
    }

    while (v6 - v5 > 1);
  }

  v7 = vabds_f32(a4, *(a1 + 24 * v5));
  v8 = vabds_f32(*(a1 + 24 * v6), a4);
  if (v7 >= v8)
  {
    result = v6;
  }

  else
  {
    v8 = v7;
    result = v5;
  }

  *a3 = v8;
  return result;
}

uint64_t _snapPositionToAlign(uint64_t a1, uint64_t a2, _DWORD *a3, float a4, double a5)
{
  v10 = 0.0;
  result = _closestSnapToAlignItem(a1, a2, &v10, a4);
  v9 = fmax(a5, 0.1) * 0.3;
  if (v10 >= v9)
  {
    return -1;
  }

  *a3 = *(a1 + 24 * result);
  return result;
}

BOOL _adjustSnapForAxisMove(_BOOL8 result, int a2, int a3, void *a4, float32x4_t a5, __n128 a6, __n128 a7, __n128 a8)
{
  v18[0] = a7;
  v18[1] = a8;
  if (!result && (a2 & 1) == 0 && !a3)
  {
    return result;
  }

  v15 = a5;
  v16 = a5;
  v14 = a5;
  v13 = 0uLL;
  v11 = a5.i32[2];
  v12 = a6;
  if (result)
  {
    a5.i32[1] = a6.n128_i32[1];
    v16.i32[2] = a6.n128_i32[2];
    v16.i64[0] = a5.i64[0];
    v17 = xmmword_21C27F910;
    C3DPlaneMakeWithVectors(&v13, &v15, &v17);
    result = C3DIntersectionLinePlane(v18, &v13, &v16);
    if (result)
    {
      a6 = v12;
      if (!a2)
      {
        goto LABEL_16;
      }

      goto LABEL_11;
    }

    a6 = v12;
    if (a4)
    {
      *a4 = -1;
    }
  }

  if (!a2)
  {
    goto LABEL_16;
  }

LABEL_11:
  v15.i32[2] = a6.n128_i32[2];
  v15.i64[0] = __PAIR64__(v15.u32[1], a6.n128_u32[0]);
  v17 = xmmword_21C27F8C0;
  C3DPlaneMakeWithVectors(&v13, &v15, &v17);
  result = C3DIntersectionLinePlane(v18, &v13, &v15);
  if (result)
  {
    a6.n128_u64[0] = v12.n128_u64[0];
    if (!a3)
    {
      return result;
    }

    goto LABEL_17;
  }

  a6.n128_u64[0] = v12.n128_u64[0];
  if (a4)
  {
    a4[1] = -1;
  }

LABEL_16:
  if (!a3)
  {
    return result;
  }

LABEL_17:
  v14.i32[2] = v11;
  v14.i64[0] = a6.n128_u64[0];
  v17 = xmmword_21C27F600;
  C3DPlaneMakeWithVectors(&v13, &v14, &v17);
  result = C3DIntersectionLinePlane(v18, &v13, &v14);
  if (!result)
  {
    if (a4)
    {
      a4[2] = -1;
    }
  }

  return result;
}

uint64_t ___arrowNode_block_invoke()
{
  _arrowNode_arrowNode = +[SCNNode node];
  v0 = [SCNNode nodeWithGeometry:[SCNCylinder cylinderWithRadius:0.015 height:0.7]];
  LODWORD(v1) = 1051931443;
  [(SCNNode *)v0 setPosition:0.0, v1, 0.0];
  [_arrowNode_arrowNode addChildNode:v0];
  v2 = [SCNNode nodeWithGeometry:[SCNCone coneWithTopRadius:0.0 bottomRadius:0.06 height:0.3]];
  LODWORD(v3) = 1062836634;
  [(SCNNode *)v2 setPosition:0.0, v3, 0.0];
  [_arrowNode_arrowNode addChildNode:v2];
  _arrowNode_arrowNode = [_arrowNode_arrowNode flattenedCopy];
  v4 = [SCNNode nodeWithGeometry:[SCNCylinder cylinderWithRadius:0.05 height:0.7]];
  LODWORD(v5) = 1051931443;
  [(SCNNode *)v4 setPosition:0.0, v5, 0.0];
  [(SCNNode *)v4 setHidden:1];
  [(SCNNode *)v4 setCategoryBitMask:0xFFFFLL];
  v6 = _arrowNode_arrowNode;

  return [v6 addChildNode:v4];
}

uint64_t ___arrowNode_block_invoke_2(uint64_t a1, void *a2)
{
  v6[1] = *MEMORY[0x277D85DE8];
  [a2 setGeometry:{objc_msgSend(objc_msgSend(a2, "geometry"), "copy")}];
  if ([objc_msgSend(a2 "geometry")])
  {
    v6[0] = [objc_msgSend(objc_msgSend(a2 "geometry")];
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  [objc_msgSend(a2 "geometry")];
  [objc_msgSend(objc_msgSend(objc_msgSend(a2 "geometry")];
  [objc_msgSend(objc_msgSend(a2 "geometry")];
  return [a2 setAuthoringEnvironmentNode:1];
}

uint64_t ___axisNode_block_invoke()
{
  _axisNode_axisNode = +[SCNNode node];
  v0 = [SCNNode nodeWithGeometry:[SCNCylinder cylinderWithRadius:0.01 height:0.6]];
  LODWORD(v1) = 1050253722;
  [(SCNNode *)v0 setPosition:0.0, v1, 0.0];
  [_axisNode_axisNode addChildNode:v0];
  result = [_axisNode_axisNode flattenedCopy];
  _axisNode_axisNode = result;
  return result;
}

uint64_t ___axisNode_block_invoke_2(uint64_t a1, void *a2)
{
  v6[1] = *MEMORY[0x277D85DE8];
  [a2 setGeometry:{objc_msgSend(objc_msgSend(a2, "geometry"), "copy")}];
  if ([objc_msgSend(a2 "geometry")])
  {
    v6[0] = [objc_msgSend(objc_msgSend(a2 "geometry")];
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  [objc_msgSend(a2 "geometry")];
  [objc_msgSend(objc_msgSend(objc_msgSend(a2 "geometry")];
  [objc_msgSend(objc_msgSend(a2 "geometry")];
  return [a2 setAuthoringEnvironmentNode:1];
}

uint64_t ___translationPlaneNode_block_invoke()
{
  _translationPlaneNode_planeNode = [SCNNode nodeWithGeometry:[SCNPlane planeWithWidth:0.3 height:0.3]];
  v0 = [SCNTorus torusWithRingRadius:0.212132037 pipeRadius:0.01];
  [(SCNTorus *)v0 setPipeSegmentCount:3];
  [(SCNTorus *)v0 setRingSegmentCount:4];
  v1 = [SCNNode nodeWithGeometry:v0];
  LODWORD(v2) = 1070141403;
  LODWORD(v3) = 1061752795;
  [(SCNNode *)v1 setEulerAngles:v2, 0.0, v3];
  v4 = _translationPlaneNode_planeNode;

  return [v4 addChildNode:v1];
}

uint64_t ___translationPlaneNode_block_invoke_2(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  [a2 setGeometry:{objc_msgSend(objc_msgSend(a2, "geometry"), "copy")}];
  if ([objc_msgSend(a2 "geometry")])
  {
    v7[0] = [objc_msgSend(objc_msgSend(a2 "geometry")];
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  [objc_msgSend(a2 "geometry")];
  [a2 geometry];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  [objc_msgSend(objc_msgSend(objc_msgSend(a2 "geometry")];
  if ((isKindOfClass & 1) == 0)
  {
    [objc_msgSend(objc_msgSend(a2 "geometry")];
    [objc_msgSend(objc_msgSend(a2 "geometry")];
  }

  [a2 setAuthoringEnvironmentNode:1];
  return [objc_msgSend(objc_msgSend(a2 "geometry")];
}

uint64_t ___rotationArcNode_block_invoke()
{
  _rotationArcNode_arcNode = +[SCNNode node];
  v0 = [SCNCylinder cylinderWithRadius:0.3 height:0.0];
  [(SCNCylinder *)v0 setRadialSpan:0.25];
  [_rotationArcNode_arcNode addChildNode:{+[SCNNode nodeWithGeometry:](SCNNode, "nodeWithGeometry:", v0)}];
  v1 = [SCNTorus torusWithRingRadius:0.68 pipeRadius:0.015];
  [(SCNTorus *)v1 setRadialSpan:0.25];
  v2 = _rotationArcNode_arcNode;
  v3 = [SCNNode nodeWithGeometry:v1];

  return [v2 addChildNode:v3];
}

uint64_t ___rotationArcNode_block_invoke_2(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  result = [a2 geometry];
  if (result)
  {
    [a2 setGeometry:{objc_msgSend(objc_msgSend(a2, "geometry"), "copy")}];
    if ([objc_msgSend(a2 "geometry")])
    {
      v7[0] = [objc_msgSend(objc_msgSend(a2 "geometry")];
      v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
    }

    else
    {
      v5 = MEMORY[0x277CBEBF8];
    }

    [objc_msgSend(a2 "geometry")];
    [a2 geometry];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    [objc_msgSend(objc_msgSend(objc_msgSend(a2 "geometry")];
    if ((isKindOfClass & 1) == 0)
    {
      [objc_msgSend(objc_msgSend(a2 "geometry")];
    }

    [objc_msgSend(objc_msgSend(a2 "geometry")];
    [a2 setAuthoringEnvironmentNode:1];
    return [objc_msgSend(objc_msgSend(a2 "geometry")];
  }

  return result;
}

uint64_t ___wireframeCircle_block_invoke()
{
  v0 = [SCNTorus torusWithRingRadius:1.0 pipeRadius:0.01];
  [(SCNTorus *)v0 setPipeSegmentCount:5];
  [(SCNTorus *)v0 setRingSegmentCount:64];
  _wireframeCircle_circleNode = [SCNNode nodeWithGeometry:v0];
  [_wireframeCircle_circleNode setHittable:0];
  v1 = [SCNTorus torusWithRingRadius:1.0 pipeRadius:0.07];
  [(SCNTorus *)v1 setPipeSegmentCount:5];
  [(SCNTorus *)v1 setRingSegmentCount:30];
  v2 = [SCNNode nodeWithGeometry:v1];
  [(SCNNode *)v2 setHidden:1];
  [(SCNNode *)v2 setCategoryBitMask:0xFFFFLL];
  v3 = _wireframeCircle_circleNode;

  return [v3 addChildNode:v2];
}

uint64_t ___wireframeCircle_block_invoke_2(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  [a2 setGeometry:{objc_msgSend(objc_msgSend(a2, "geometry"), "copy")}];
  v4 = *(a1 + 40);
  if (v4 != 1.0)
  {
    [objc_msgSend(a2 "geometry")];
  }

  if ([objc_msgSend(a2 "geometry")])
  {
    v7[0] = [objc_msgSend(objc_msgSend(a2 "geometry")];
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  [objc_msgSend(a2 "geometry")];
  [objc_msgSend(objc_msgSend(objc_msgSend(a2 "geometry")];
  [objc_msgSend(objc_msgSend(a2 "geometry")];
  return [a2 setAuthoringEnvironmentNode:1];
}

uint64_t _snapPositionComponentToGrid(float *a1, float a2, long double a3)
{
  v6 = -a2;
  if (a2 >= 0.0)
  {
    v7 = a2;
  }

  else
  {
    v7 = v6;
  }

  v8 = fmod(v7, a3);
  v9 = a3 * 0.3;
  if (v8 >= v9)
  {
    v11 = v8;
    if (a3 - v9 >= v11)
    {
      return 0;
    }

    v10 = a3 - v11 + v7;
  }

  else
  {
    v10 = v7 - v8;
  }

  if (a2 < 0.0)
  {
    v10 = -v10;
  }

  *a1 = v10;
  return 1;
}

void *SCNMTLBlitCommandEncoder::beginEncoding(void *a1, void *a2, uint64_t a3)
{
  if (*a1 && (v6 = scn_default_log(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    SCNMTLBlitCommandEncoder::beginEncoding(v6, v7, v8, v9, v10, v11, v12, v13);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v14 = scn_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    SCNMTLBlitCommandEncoder::beginEncoding(v14, v15, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  *a1 = 0;
  a1[1] = 0;
  result = [a2 blitCommandEncoder];
  *a1 = result;
  a1[1] = a2;
  if (a3)
  {
    return [result setLabel:a3];
  }

  return result;
}

uint64_t SCNMTLBlitCommandEncoder::endEncoding(SCNMTLBlitCommandEncoder *this)
{
  if (!this->_encoder)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      SCNMTLBlitCommandEncoder::endEncoding(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  result = [(MTLBlitCommandEncoder *)this->_encoder endEncoding];
  this->_encoder = 0;
  this->_commandBuffer = 0;
  return result;
}

void C3D::FinalPass::setup(C3D::FinalPass *this)
{
  *(this + 8) = 5;
  v2 = (this + 32);
  *(this + 8) = xmmword_21C27FDD0;
  *(this + 20) = 2;
  v3 = *(this + 2);
  *(v2 + 15) = **(v2 - 1);
  RenderContext = C3DEngineContextGetRenderContext(v3);
  if ([(SCNMTLRenderContext *)RenderContext textureTarget])
  {
    v5 = [(SCNMTLRenderContext *)RenderContext textureTarget];
    *(this + 36) = [v5 width];
    *(this + 37) = [v5 height];
    *(this + 20) = [v5 textureType];
    *(this + 34) = [v5 width];
    *(this + 35) = [v5 height];
  }

  else
  {
    if (![(SCNMTLRenderContext *)RenderContext layerTarget])
    {
      goto LABEL_6;
    }

    [-[SCNMTLRenderContext layerTarget](RenderContext) drawableSize];
    *&v6 = v6;
    *(this + 36) = floorf(*&v6);
    [-[SCNMTLRenderContext layerTarget](RenderContext) drawableSize];
    v8 = v7;
    *(this + 37) = floorf(v8);
    *(this + 8) = vrndmq_f32(C3DEngineContextGetViewport(*(this + 2)));
    v5 = [(SCNMTLRenderContext *)RenderContext layerTarget];
  }

  *(this + 19) = [v5 pixelFormat];
LABEL_6:
  v107 = *(this + 8);
  SuperSamplingFactor = C3DEngineContextGetSuperSamplingFactor(*(this + 2));
  v10 = *(this + 8);
  v10.u64[1] = vmul_n_f32(*&vextq_s8(v10, v10, 8uLL), SuperSamplingFactor);
  v108 = v10;
  *(this + 8) = v10;
  C3D::Pass::setInputCount(this, 1u);
  *(C3D::PassDescriptor::inputAtIndex(v2, 0) + 8) = "COLOR";
  v118 = 0;
  v119 = 0;
  v11 = C3D::RenderGraph::finalTechnique(*(this + 3));
  if (!v11)
  {
    v60 = *(this + 3);
    *&v109 = this;
    v61 = C3D::RenderGraph::createPass<C3D::MainPass,C3D::Pass *&>(v60, &v109);
    v118 = v61;
    goto LABEL_45;
  }

  v12 = v11;
  StackAllocator = C3DEngineContextGetStackAllocator(*(this + 2));
  C3DStackAllocatorPushFrame(StackAllocator);
  C3D::Array<C3D::Pass *,0u,C3D::StackAllocator>::Array(&v115, StackAllocator);
  v14 = C3D::FinalPass::_createCustomTechniquePassesIfNeeded(this, v12, &v115, &v119);
  v106 = StackAllocator;
  if (v119)
  {
    if ((*(v12 + 88) & 8) == 0)
    {
      v15 = *(this + 3);
      *&v109 = this;
      v118 = C3D::RenderGraph::createPass<C3D::MainPass,C3D::Pass *&>(v15, &v109);
      v16 = *(this + 3);
      v109 = 0uLL;
      v110 = "DEPTH";
      v111 = 512;
      Pass = C3D::ScenePass::lastPass(v118);
      v113 = 1;
      v114 = 0;
      v17 = C3D::RenderGraph::search(v16, &v109);
      if (!v17)
      {
        v18 = scn_default_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          C3D::FinalPass::setup(v18, v19, v20, v21, v22, v23, v24, v25);
        }
      }

      v26 = C3D::ScenePass::lastPass(v118);
      v27 = C3D::Pass::outputBufferParameterNamed(v26, "COLOR");
      if (!v27)
      {
        v28 = scn_default_log();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
        {
          C3D::FinalPass::setup(v28, v29, v30, v31, v32, v33, v34, v35);
        }
      }

      v36 = C3D::Pass::outputBufferParameterNamed(v17, "DEPTH");
      if (!v36)
      {
        v37 = scn_default_log();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
        {
          C3D::FinalPass::setup(v37, v38, v39, v40, v41, v42, v43, v44);
        }
      }

      if (v116)
      {
        v105 = RenderContext;
        v45 = v117;
        v46 = &v117[v116];
        do
        {
          v47 = *v45;
          v48 = C3D::Pass::descriptor(*v45);
          if (C3D::PassDescriptor::inputCount(v48))
          {
            v49 = 0;
            do
            {
              if (*(C3D::Pass::inputBufferParameterAtIndex(v47, v49) + 64) == 1)
              {
                v50 = C3D::Pass::inputBufferParameterNamed(v47, "COLOR");
                if (v27 && v50)
                {
                  *(v50 + 28) = *(v27 + 28);
                }

                v51 = C3D::ScenePass::lastPass(v118);
                C3D::Pass::addDependency(v47, v51);
              }

              ++v49;
              v52 = C3D::Pass::descriptor(v47);
            }

            while (C3D::PassDescriptor::inputCount(v52) > v49);
          }

          ++v45;
        }

        while (v45 != v46);
        RenderContext = v105;
        if (v116)
        {
          v53 = v117;
          v54 = &v117[v116];
          do
          {
            v55 = *v53;
            v56 = C3D::Pass::descriptor(*v53);
            if (C3D::PassDescriptor::inputCount(v56))
            {
              v57 = 0;
              do
              {
                if (*(C3D::Pass::inputBufferParameterAtIndex(v55, v57) + 64) == 2)
                {
                  v58 = C3D::Pass::inputBufferParameterNamed(v55, "DEPTH");
                  if (v36 && v58)
                  {
                    *(v58 + 28) = *(v36 + 28);
                  }

                  C3D::Pass::addDependency(v55, v17);
                }

                ++v57;
                v59 = C3D::Pass::descriptor(v55);
              }

              while (C3D::PassDescriptor::inputCount(v59) > v57);
            }

            ++v53;
          }

          while (v53 != v54);
        }
      }

      goto LABEL_44;
    }
  }

  else
  {
    v62 = *(this + 3);
    *&v109 = this;
    v14 = C3D::RenderGraph::createPass<C3D::MainPass,C3D::Pass *&>(v62, &v109);
  }

  v118 = v14;
LABEL_44:
  C3DStackAllocatorPopFrame(v106);
  v61 = v118;
LABEL_45:
  *(*(this + 3) + 112) = v61;
  *(this + 8) = v107;
  C3D::Pass::parentColorDesc(this, &v109);
  v63 = C3D::PassDescriptor::inputAtIndex(v2, 0);
  *(v63 + 16) = v109;
  *(v63 + 32) = v110;
  C3D::PassDescriptor::inputAtIndex(v2, 0);
  v64 = this;
  if (C3DEngineContextGetUpdateMainFramebuffer(*(this + 2)))
  {
    UserInfo = C3DEngineContextGetUserInfo(*(this + 2));
    v64 = this;
    if (UserInfo)
    {
      v66 = UserInfo;
      v67 = [UserInfo overlaySKScene];
      v68 = [v66 showsStatistics];
      if (v67 || (v64 = this, v68))
      {
        v69 = *(this + 3);
        *&v109 = this;
        v64 = C3D::RenderGraph::createPass<C3D::OverlayPass,C3D::FinalPass *>(v69, &v109);
        C3D::Pass::addDependency(this, v64);
      }
    }

    if (C3DEngineContextGetSuperSamplingFactor(*(this + 2)) > 1.0)
    {
      v70 = *(this + 3);
      *&v109 = this;
      v71 = C3D::RenderGraph::createPass<C3D::DownsamplePass,C3D::FinalPass *>(v70, &v109);
      C3D::Pass::addDependency(v64, v71);
      v64 = v71;
    }
  }

  *(this + 8) = v108;
  if (C3DEngineContextIsJitteringEnabled(*(this + 2)))
  {
    v72 = *(this + 3);
    *&v109 = this;
    v73 = C3D::RenderGraph::createPass<C3D::JitteringPass,C3D::FinalPass *>(v72, &v109);
    if (C3DEngineContextGetUpdateMainFramebuffer(*(this + 2)))
    {
      v74 = *(C3D::Pass::outputBufferParameterAtIndex(v73, 1u) + 28);
      *(C3D::Pass::inputBufferParameterAtIndex(this, 0) + 28) = v74;
    }

    else
    {
      v75 = C3D::Pass::outputBufferParameterAtIndex(v73, 0);
      v76 = C3D::Pass::inputBufferParameterAtIndex(this, 0);
      v77 = *(v75 + 32);
      *(v76 + 16) = *(v75 + 16);
      *(v76 + 32) = v77;
    }

    C3D::Pass::addDependency(v64, v73);
  }

  else
  {
    v73 = v64;
  }

  if (![(SCNMTLRenderContext *)RenderContext showsAuthoringEnvironment])
  {
    v81 = 0;
    v80 = 0;
    v82 = 0;
    goto LABEL_68;
  }

  AuthoringEnvironment = C3DEngineContextGetAuthoringEnvironment(*(this + 2), 0);
  if (C3DAuthoringEnvironmentHasSelectedNodes(AuthoringEnvironment))
  {
    v79 = *(this + 3);
    *&v109 = this;
    v80 = C3D::RenderGraph::createPass<C3D::ManipulatorPass,C3D::FinalPass *>(v79, &v109);
    C3D::Pass::addDependency(v73, v80);
    v73 = v80;
    if (!AuthoringEnvironment)
    {
      goto LABEL_65;
    }
  }

  else
  {
    v80 = 0;
    if (!AuthoringEnvironment)
    {
      goto LABEL_65;
    }
  }

  if (([AuthoringEnvironment authoringDisplayMask] & 0x100) != 0)
  {
    v83 = *(this + 3);
    *&v109 = this;
    v82 = C3D::RenderGraph::createPass<C3D::GridPass,C3D::FinalPass *>(v83, &v109);
    C3D::Pass::addDependency(v73, v82);
    v73 = v82;
    goto LABEL_67;
  }

LABEL_65:
  v82 = 0;
LABEL_67:
  v84 = *(this + 3);
  *&v109 = this;
  v81 = C3D::RenderGraph::createPass<C3D::AuthoringPass,C3D::FinalPass *>(v84, &v109);
  C3D::Pass::addDependency(v73, v81);
  v73 = v81;
LABEL_68:
  if (([(SCNMTLRenderContext *)RenderContext enableARMode]& 1) != 0)
  {
    if (!v118)
    {
      v85 = 0;
      goto LABEL_82;
    }
  }

  else
  {
    v86 = [(SCNMTLRenderContext *)RenderContext shouldDelegateARCompositing];
    v85 = v118;
    if (!v86 || !v118)
    {
LABEL_82:
      if (v81)
      {
        v87 = 0;
LABEL_84:
        C3D::AuthoringPass::setMainScenePass(v81, v85);
        v92 = C3DEngineContextGetStackAllocator(*(this + 2));
        C3DStackAllocatorPushFrame(v92);
        if (v87)
        {
          goto LABEL_88;
        }

        v93 = *(this + 3);
        v109 = 0uLL;
        v110 = "COLOR";
        v111 = 256;
        v94 = v119;
        if (!v119)
        {
          v94 = C3D::ScenePass::lastPass(v118);
        }

        Pass = v94;
        v113 = 1;
        v114 = 0;
        v87 = C3D::RenderGraph::search(v93, &v109);
        if (v87)
        {
LABEL_88:
          v95 = C3D::Pass::outputBufferParameterNamed(v87, "COLOR");
          if (v118)
          {
            if (v95)
            {
              C3D::AuthoringPass::setColorInput(v81, v95);
              C3D::Pass::addDependency(v81, v87);
              if (v80)
              {
                if (v82)
                {
                  v96 = v82;
                }

                else
                {
                  v96 = v81;
                }

                v97 = C3D::PassDescriptor::outputAtIndex((v96 + 32), 0);
                C3D::ManipulatorPass::setColorInput(v80, v97);
              }
            }
          }
        }

        v98 = *(this + 3);
        v109 = 0uLL;
        v110 = "DEPTH";
        v111 = 512;
        v99 = v119;
        if (!v119)
        {
          v99 = C3D::ScenePass::lastPass(v118);
        }

        Pass = v99;
        v113 = 1;
        v114 = 0;
        v100 = C3D::RenderGraph::search(v98, &v109);
        if (v100)
        {
          v101 = v100;
          if (v82)
          {
            C3D::Pass::addDependency(v82, v100);
          }

          v102 = *(v81 + 671);
          if (v102)
          {
            if (v101 != v87)
            {
              C3D::Pass::addDependency(v102, v87);
              v102 = *(v81 + 671);
            }

            C3D::Pass::addDependency(v102, v101);
          }

          if (v101 != v87)
          {
            C3D::Pass::addDependency(v81, v101);
          }
        }

        else if ((C3D::FinalPass::setup(void)::done & 1) == 0)
        {
          C3D::FinalPass::setup(void)::done = 1;
          v103 = scn_default_log();
          if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
          {
            C3D::FinalPass::setup(v103);
          }
        }

        C3DStackAllocatorPopFrame(v92);
        return;
      }

      goto LABEL_111;
    }
  }

  v87 = C3D::RenderGraph::createPass<C3D::CompositeARPass,C3D::ScenePass *&>(*(this + 3), &v118);
  v88 = *(this + 3);
  v109 = 0uLL;
  v110 = "COLOR";
  v111 = 256;
  v89 = v119;
  if (!v119)
  {
    v89 = C3D::ScenePass::lastPass(v118);
  }

  Pass = v89;
  v113 = 1;
  v114 = 0;
  v90 = C3D::RenderGraph::search(v88, &v109);
  C3D::Pass::addDependency(v87, v90);
  if ([(SCNMTLRenderContext *)RenderContext enableARMode])
  {
    v91 = C3D::RenderGraph::createPass<C3D::DrawBackgroundPass,C3D::ScenePass *&>(*(this + 3), &v118);
    C3D::Pass::addDependency(v87, v91);
  }

  if (v90 != v118 && [(SCNMTLRenderContext *)RenderContext shouldDelegateARCompositing])
  {
    C3D::Pass::addDependency(v87, v118);
  }

  if (v81)
  {
    v85 = v118;
    goto LABEL_84;
  }

  C3D::Pass::addDependency(v73, v87);
  v73 = v87;
LABEL_111:
  v104 = v119;
  if (!v119)
  {
    v104 = C3D::ScenePass::lastPass(v118);
  }

  C3D::Pass::addDependency(v73, v104);
}

C3D::Pass *C3D::FinalPass::_createCustomTechniquePassesIfNeeded(uint64_t *a1, uint64_t a2, _DWORD *a3, C3D::Pass **a4)
{
  v98 = *MEMORY[0x277D85DE8];
  if (!a4)
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      C3D::FinalPass::_createCustomTechniquePassesIfNeeded(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  if (!a2)
  {
    v15 = scn_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      C3D::FinalPass::_createCustomTechniquePassesIfNeeded(v15, v16, v17, v18, v19, v20, v21, v22);
    }
  }

  a1[14] = a2;
  PassCount = C3DFXTechniqueGetPassCount(a2);
  if (!PassCount)
  {
    return 0;
  }

  StackAllocator = C3DEngineContextGetStackAllocator(a1[2]);
  C3DStackAllocatorPushFrame(StackAllocator);
  C3D::Array<C3D::Pass *,0u,C3D::StackAllocator>::Array(&v90, StackAllocator);
  if (v92 < PassCount)
  {
    v24 = v93;
    Aligned = C3DStackAllocatorAllocateAligned(v90, 8 * (PassCount & 0x1FFFFFFF), 8, 0);
    memcpy(Aligned, v24, 8 * v91);
    v93 = Aligned;
    v92 = PassCount;
  }

  v88[0] = StackAllocator;
  C3D::Hash<C3D::FinalPass::RenderTarget,C3D::StackAllocator>::_allocate(v88, 32);
  v26 = 0;
  v76 = 0;
  v87 = 0;
  v78 = PassCount;
  do
  {
    PassAtIndex = C3DFXTechniqueGetPassAtIndex(a2, v26);
    Scene = C3DEngineContextGetScene(a1[2]);
    C3DFXContextResolveNodeReferences(PassAtIndex, Scene);
    DrawInstruction = C3DFXPassGetDrawInstruction(PassAtIndex);
    v86 = 0;
    if (DrawInstruction <= 3)
    {
      switch(DrawInstruction)
      {
        case 1:
          v30 = C3D::FinalPass::_createTechniquePassCustom(a1, PassAtIndex, v88, &v87);
          goto LABEL_28;
        case 2:
          v33 = scn_default_log();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            C3D::FinalPass::_createCustomTechniquePassesIfNeeded(&v84, v85);
          }

          goto LABEL_33;
        case 3:
          v30 = C3D::FinalPass::_createTechniquePassDrawScene(a1, PassAtIndex, v88, &v87, 0);
LABEL_23:
          v86 = v30;
          v76 = v30;
          goto LABEL_34;
      }
    }

    else if (DrawInstruction > 6)
    {
      if (DrawInstruction == 7)
      {
        v32 = scn_default_log();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          C3D::FinalPass::_createCustomTechniquePassesIfNeeded(&v82, v83);
        }

        goto LABEL_33;
      }

      if (DrawInstruction == 8)
      {
        v30 = C3D::FinalPass::_createTechniquePassDrawScene(a1, PassAtIndex, v88, &v87, 1u);
        goto LABEL_23;
      }
    }

    else
    {
      if (DrawInstruction == 4)
      {
        v30 = C3D::FinalPass::_createTechniquePassDrawQuad(a1, PassAtIndex, v88, &v87);
        goto LABEL_28;
      }

      if (DrawInstruction == 6)
      {
        v30 = C3D::FinalPass::_createTechniquePassDrawNodes(a1, PassAtIndex, v88, &v87);
LABEL_28:
        v86 = v30;
        goto LABEL_34;
      }
    }

    v31 = scn_default_log();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      C3D::FinalPass::_createCustomTechniquePassesIfNeeded(&v80, v81);
    }

LABEL_33:
    v30 = v86;
LABEL_34:
    PassAtIndex[1].var5 = v30;
    if (v30)
    {
      C3D::Array<C3D::Pass *,0u,C3D::StackAllocator>::Array(v79, StackAllocator);
      v34 = C3D::Pass::descriptor(v86);
      if (C3D::PassDescriptor::inputCount(v34))
      {
        v35 = 0;
        do
        {
          v36 = (C3D::Pass::inputBufferParameterAtIndex(v86, v35) + 8);
          if (*v36)
          {
            C3D::Array<char const*,0u,C3D::StackAllocator>::push_back<char const*&>(v79, v36);
          }

          v37 = C3D::Pass::descriptor(v86);
          ++v35;
        }

        while (C3D::PassDescriptor::inputCount(v37) > v35);
      }

      if (v87 == 1 && v91)
      {
        v38 = C3D::Pass::descriptor(v86);
        if (!C3D::PassDescriptor::outputCount(v38))
        {
          goto LABEL_51;
        }

        v39 = 0;
        appended = 0;
        do
        {
          v41 = C3D::Pass::outputBufferParameterAtIndex(v86, v39);
          v42 = *(v41 + 66);
          if ((v42 & 0x40) == 0 && (v42 & 3) != 2)
          {
            v43 = *(v41 + 8);
            if (v43)
            {
              if (*v43)
              {
                appended = C3D::FinalPass::_appendRenderTargetDependencyForPass(v41, &v90, v86, v41);
              }
            }
          }

          v44 = C3D::Pass::descriptor(v86);
          ++v39;
        }

        while (C3D::PassDescriptor::outputCount(v44) > v39);
        if ((appended & 1) == 0)
        {
LABEL_51:
          v45 = scn_default_log();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
          {
            v66 = (**v86)(v86);
            *buf = 136315394;
            v95 = "dependencyFound";
            v96 = 2080;
            v97 = v66;
            _os_log_fault_impl(&dword_21BEF7000, v45, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Unable to find dependency in previous techniques for pass %s", buf, 0x16u);
          }
        }
      }

      v46 = C3D::Pass::descriptor(v86);
      if (C3D::PassDescriptor::inputCount(v46))
      {
        v47 = 0;
        while (2)
        {
          v48 = C3D::Pass::inputBufferParameterAtIndex(v86, v47);
          v49 = v48;
          v50 = *(v48 + 8);
          if (!v50)
          {
            goto LABEL_84;
          }

          v51 = strlen(*(v48 + 8));
          v53 = 0xC6A4A7935BD1E995 * v51;
          if (v51 >= 8)
          {
            v55 = v51 >> 3;
            v54 = v50 + 8 * v55;
            v56 = 8 * v55;
            v57 = v50;
            do
            {
              v58 = *v57;
              v57 = (v57 + 8);
              v53 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v58) ^ ((0xC6A4A7935BD1E995 * v58) >> 47))) ^ v53);
              v56 -= 8;
            }

            while (v56);
          }

          else
          {
            v54 = v50;
          }

          v59 = v51 & 7;
          if (v59 <= 3)
          {
            if ((v51 & 7) <= 1)
            {
              if ((v51 & 7) == 0)
              {
LABEL_77:
                v60 = (0xC6A4A7935BD1E995 * (v53 ^ (v53 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v53 ^ (v53 >> 47))) >> 47);
                v61 = (v89 - 1) & v60;
                v62 = *(v88[3] + 2 * v61);
                if (v62 < 2)
                {
                  goto LABEL_81;
                }

                while ((v62 & 2) == 0 || v60 != *(v88[1] + 8 * v61))
                {
                  ++v61;
                  v63 = v62 >= 4;
                  v62 >>= 1;
                  if (!v63)
                  {
                    goto LABEL_81;
                  }
                }

                if (!v88[2])
                {
                  goto LABEL_81;
                }

                if ((C3D::FinalPass::_appendRenderTargetDependencyForPass(v51, &v90, v86, v49) & 1) == 0)
                {
                  v50 = *(v49 + 8);
LABEL_81:
                  {
                    C3D::Array<char const*,0u,C3D::StackAllocator>::push_back<char const*&>(a3, &v86);
                  }
                }

LABEL_84:
                v65 = C3D::Pass::descriptor(v86);
                if (C3D::PassDescriptor::inputCount(v65) <= ++v47)
                {
                  goto LABEL_89;
                }

                continue;
              }

LABEL_76:
              v53 = 0xC6A4A7935BD1E995 * (v53 ^ *v54);
              goto LABEL_77;
            }

            if (v59 == 2)
            {
LABEL_75:
              v53 ^= v54[1] << 8;
              goto LABEL_76;
            }

LABEL_74:
            v53 ^= v54[2] << 16;
            goto LABEL_75;
          }

          break;
        }

        if ((v51 & 7) > 5)
        {
          if (v59 != 6)
          {
            v53 ^= v54[6] << 48;
          }

          v53 ^= v54[5] << 40;
        }

        else if (v59 == 4)
        {
          goto LABEL_73;
        }

        v53 ^= v54[4] << 32;
LABEL_73:
        v53 ^= v54[3] << 24;
        goto LABEL_74;
      }

LABEL_89:
      C3D::Array<char const*,0u,C3D::StackAllocator>::push_back<char const*&>(&v90, &v86);
    }

    ++v26;
  }

  while (v26 != v78);
  v67 = v91 - 1;
  if ((v91 - 1) < 0)
  {
    v68 = 0;
  }

  else
  {
    do
    {
      v68 = *C3D::Array<C3D::Pass *,0u,C3D::StackAllocator>::operator[](&v90, v67);
      v69 = C3D::Pass::descriptor(v68);
      v70 = C3D::PassDescriptor::outputCount(v69);
      if (v70)
      {
        v71 = 0;
        while (1)
        {
          v72 = C3D::Pass::outputBufferParameterAtIndex(v68, v71);
          if (*(v72 + 64) == 1 && !strcmp(*(v72 + 8), "COLOR"))
          {
            break;
          }

          if (v70 == ++v71)
          {
            goto LABEL_97;
          }
        }
      }

      else
      {
LABEL_97:
        v68 = 0;
      }

      if (v68)
      {
        break;
      }
    }

    while (v67-- > 0);
  }

  *a4 = v68;
  C3DStackAllocatorPopFrame(StackAllocator);
  return v76;
}

C3D::RenderPass *C3D::RenderGraph::createPass<C3D::OverlayPass,C3D::FinalPass *>(uint64_t a1, C3D::Pass **a2)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 240, 16, 0);
  *C3D::RenderPass::RenderPass(Aligned, a1, *a2) = &unk_282DC8730;
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

C3D::DownsamplePass *C3D::RenderGraph::createPass<C3D::DownsamplePass,C3D::FinalPass *>(uint64_t a1, C3D::Pass **a2)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 256, 16, 0);
  C3D::DownsamplePass::DownsamplePass(Aligned, a1, *a2);
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

C3D::RenderPass *C3D::RenderGraph::createPass<C3D::JitteringPass,C3D::FinalPass *>(uint64_t a1, C3D::Pass **a2)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 256, 16, 0);
  *C3D::RenderPass::RenderPass(Aligned, a1, *a2) = &unk_282DC6748;
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

C3D::ManipulatorPass *C3D::RenderGraph::createPass<C3D::ManipulatorPass,C3D::FinalPass *>(uint64_t a1, C3D::Pass **a2)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 5376, 16, 0);
  C3D::ManipulatorPass::ManipulatorPass(Aligned, a1, *a2);
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

C3D::GridPass *C3D::RenderGraph::createPass<C3D::GridPass,C3D::FinalPass *>(uint64_t a1, C3D::Pass **a2)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 256, 16, 0);
  C3D::GridPass::GridPass(Aligned, a1, *a2);
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

C3D::AuthoringPass *C3D::RenderGraph::createPass<C3D::AuthoringPass,C3D::FinalPass *>(uint64_t a1, C3D::Pass **a2)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 5392, 16, 0);
  C3D::AuthoringPass::AuthoringPass(Aligned, a1, *a2);
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

C3D::CompositeARPass *C3D::RenderGraph::createPass<C3D::CompositeARPass,C3D::ScenePass *&>(uint64_t a1, C3D::Pass **a2)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 272, 16, 0);
  C3D::CompositeARPass::CompositeARPass(Aligned, a1, *a2);
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

C3D::DrawBackgroundPass *C3D::RenderGraph::createPass<C3D::DrawBackgroundPass,C3D::ScenePass *&>(uint64_t a1, C3D::Pass **a2)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 5280, 16, 0);
  C3D::DrawBackgroundPass::DrawBackgroundPass(Aligned, a1, *a2);
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

C3D::ScenePass *C3D::FinalPass::_createTechniquePassDrawScene(C3D::Pass *a1, __C3DFXPass *a2, uint64_t a3, _BYTE *a4, unsigned __int8 a5)
{
  v14.var4 = 1;
  *&v14.var0 = 16843009;
  v14.var5 = a5;
  v9 = *(a1 + 3);
  v13 = a1;
  C3D::FinalPass::_parametersForDrawNodesTechniquePass(a1, a2, v12);
  v10 = C3D::RenderGraph::createPass<C3D::ScenePass,C3D::FinalPass *,C3D::ScenePass::Parameters &,C3D::DrawNodesPass::Parameters>(v9, &v13, &v14, v12);
  C3D::FinalPass::_setupTechniquePassCommonData(a1, v10, a2, a3, a4);
  return v10;
}

C3D::DrawNodesPass *C3D::FinalPass::_createTechniquePassDrawNodes(C3D::Pass *a1, __C3DFXPass *a2, uint64_t a3, _BYTE *a4)
{
  v8 = *(a1 + 3);
  v12 = a1;
  C3D::FinalPass::_parametersForDrawNodesTechniquePass(a1, a2, v11);
  v9 = C3D::RenderGraph::createPass<C3D::DrawNodesPass,C3D::FinalPass *,C3D::DrawNodesPass::Parameters>(v8, &v12, v11);
  C3D::FinalPass::_setupTechniquePassCommonData(a1, v9, a2, a3, a4);
  return v9;
}

C3D::DrawQuadPass *C3D::FinalPass::_createTechniquePassDrawQuad(uint64_t *a1, __C3DFXPass *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a1;
  v10 = a2;
  v7 = C3D::RenderGraph::createPass<C3D::DrawQuadPass,C3D::FinalPass *,__C3DFXPass *&>(a1[3], &v9, &v10);
  C3D::FinalPass::_setupTechniquePassCommonData(a1, v7, v10, a3, a4);
  return v7;
}

C3D::CustomPass *C3D::FinalPass::_createTechniquePassCustom(uint64_t *a1, __C3DFXPass *a2, uint64_t a3, _BYTE *a4)
{
  v13 = a1;
  v14 = a2;
  v7 = C3D::RenderGraph::createPass<C3D::CustomPass,C3D::FinalPass *,__C3DFXPass *&>(a1[3], &v13, &v14);
  C3D::FinalPass::_setupTechniquePassCommonData(a1, v7, v14, a3, a4);
  v8 = C3D::Pass::descriptor(v7);
  if (C3D::PassDescriptor::outputCount(v8))
  {
    v9 = 0;
    do
    {
      v10 = C3D::Pass::outputBufferParameterAtIndex(v7, v9);
      if (*v10 == 1)
      {
        v10[26] = 7;
      }

      ++v9;
      v11 = C3D::Pass::descriptor(v7);
    }

    while (v9 < C3D::PassDescriptor::outputCount(v11));
  }

  return v7;
}

_DWORD *C3D::Array<char const*,0u,C3D::StackAllocator>::push_back<char const*&>(_DWORD *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[3];
  v6 = v4 + 1;
  v7 = *(result + 2);
  if (v4 + 1 > v5)
  {
    v8 = ((v5 + 1) * 1.5);
    Aligned = C3DStackAllocatorAllocateAligned(*result, 8 * v8, 8, 0);
    result = memcpy(Aligned, v7, 8 * v3[2]);
    *(v3 + 2) = Aligned;
    v3[3] = v8;
    v4 = v3[2];
    v6 = v4 + 1;
    v7 = Aligned;
  }

  *(v7 + v4) = *a2;
  v3[2] = v6;
  return result;
}

uint64_t C3D::FinalPass::_appendRenderTargetDependencyForPass(uint64_t a1, uint64_t a2, C3D::Pass *a3, uint64_t a4)
{
  v4 = *(a2 + 8) - 1;
  if (v4 < 0)
  {
    return 0;
  }

  while (1)
  {
    v8 = *C3D::Array<C3D::Pass *,0u,C3D::StackAllocator>::operator[](a2, v4);
    v9 = C3D::Pass::descriptor(v8);
    v10 = C3D::PassDescriptor::outputCount(v9);
    if (v10)
    {
      break;
    }

LABEL_7:
    if (v4-- <= 0)
    {
      return 0;
    }
  }

  v11 = v10;
  v12 = 0;
  while (1)
  {
    v13 = C3D::Pass::outputBufferParameterAtIndex(v8, v12);
    if (*(v13 + 64) == *(a4 + 64) && !strcmp(*(v13 + 8), *(a4 + 8)))
    {
      break;
    }

    if (++v12 >= v11)
    {
      goto LABEL_7;
    }
  }

  C3D::Pass::addDependency(a3, v8);
  return 1;
}

uint64_t anonymous namespace::SymbolNameHasPrefix(_anonymous_namespace_ *this, const char *a2, char *a3, unsigned __int8 *a4)
{
  v7 = strlen(this);
  v8 = strlen(a2);
  if (v8 + 1 < v7)
  {
    return 0;
  }

  if (!v7)
  {
LABEL_8:
    if (!a3)
    {
      return 1;
    }

    LOBYTE(v13) = 0;
LABEL_10:
    *a3 = v13;
    return 1;
  }

  v10 = v7;
  v11 = this;
  v12 = v8;
  while (v12)
  {
    if (*a2 != *v11)
    {
      return 0;
    }

    --v12;
    ++a2;
    v11 = (v11 + 1);
    if (!--v10)
    {
      goto LABEL_8;
    }
  }

  v13 = *(this + v8) - 48;
  if (v13 > 9)
  {
    return 0;
  }

  if (a3)
  {
    goto LABEL_10;
  }

  return 1;
}

uint64_t C3D::Array<C3D::Pass *,0u,C3D::StackAllocator>::operator[](uint64_t a1, unsigned int a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (*(a1 + 8) <= a2)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      v6 = *(a1 + 8);
      v7 = 136315906;
      v8 = "i < size()";
      v9 = 2048;
      v10 = a1;
      v11 = 1024;
      v12 = a2;
      v13 = 1024;
      v14 = v6;
      _os_log_fault_impl(&dword_21BEF7000, v4, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Out of bound Array:%p access %d size %d", &v7, 0x22u);
    }
  }

  return *(a1 + 16) + 8 * a2;
}

BOOL C3D::__IsSameRenderTarget(C3D *this, const PassIODescriptor *a2, const PassIODescriptor *a3)
{
  v5 = *(this + 1);
  if (!v5 || (v6 = *(a2 + 1)) == 0 || strcmp(v5, v6))
  {
    v7 = *(this + 64);
    if (v7 != *(a2 + 64))
    {
      return 0;
    }

    if (v7 == 1)
    {
      return *(this + 65) == *(a2 + 65);
    }
  }

  return 1;
}

uint64_t C3D::FinalPass::_setupTechniquePassCommonData(uint64_t *a1, __n128 *this, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  *(&v203[1] + 4) = *MEMORY[0x277D85DE8];
  v169 = this;
  if ((*(a3 + 187) & 8) == 0)
  {
    v5 = a1[14];
    *v195 = a3;
    *&v195[8] = v5;
    v6 = a1[2];
    *&v195[16] = 0;
    *&v195[24] = v6;
    v196 = 0uLL;
    v7 = *(a3 + 280);
    *&v197 = 0xBFF0000000000000;
    *(&v197 + 1) = v7;
    v199 = 0;
    v198 = 0uLL;
    C3DFXPassInitialize(v195, 0);
    this = v169;
  }

  *a5 = 0;
  if (*C3D::Pass::descriptor(this) == 2)
  {
    RasterizerStates = C3DFXPassGetRasterizerStates(a3);
    if (RasterizerStates)
    {
      C3DRasterizerStatesGetDesc(RasterizerStates, v195);
      v169[14].n128_u32[0] = v195[16];
    }

    if (C3DFXPassGetHasCustomViewport(a3))
    {
      v169[7].n128_u8[9] = 1;
      v169[8] = C3DFXPassGetViewport(a3);
    }
  }

  v9 = C3D::Pass::descriptor(v169);
  if (C3D::PassDescriptor::outputCount(v9))
  {
    v10 = C3D::Pass::descriptor(v169);
    if (C3D::PassDescriptor::outputCount(v10))
    {
      v11 = 0;
      do
      {
        v12 = C3D::Pass::outputBufferParameterAtIndex(v169, v11);
        v13 = v12;
        v14 = *(a3 + 176);
        if (v14 <= 1)
        {
          LOBYTE(v14) = 0;
        }

        *(v12 + 31) = v14;
        v15 = *(v12 + 24);
        IsMultisampled = SCNMTLTextureTypeIsMultisampled(v15);
        v17 = *(a3 + 176);
        if (v17 >= 2 && !IsMultisampled)
        {
          *(v13 + 24) = SCNMTLTextureTypeMultisampledEquivalent(v15);
          v17 = *(a3 + 176);
        }

        if (v17 < 2 && IsMultisampled)
        {
          *(v13 + 24) = SCNMTLTextureTypeNonMultisampledEquivalent(v15);
        }

        v18 = C3D::Pass::descriptor(v169);
        ++v11;
      }

      while (v11 < C3D::PassDescriptor::outputCount(v18));
    }
  }

  StackAllocator = C3DEngineContextGetStackAllocator(a1[2]);
  C3DStackAllocatorPushFrame(StackAllocator);
  v19 = C3DEngineContextGetStackAllocator(a1[2]);
  C3D::Array<C3D::Pass *,0u,C3D::StackAllocator>::Array(&v178, v19);
  v164 = *(a3 + 512);
  v165 = *(a3 + 520);
  if (*(a3 + 520))
  {
    v22 = *(a3 + 512);
    for (i = *(a3 + 520); i; --i)
    {
      v23 = *v22;
      if (*(*v22 + 16) == 1)
      {
        *v195 = 0;
        v24 = *(v23 + 32);
        if (v24)
        {
LABEL_24:
          C3D::Array<char const*,0u,C3D::StackAllocator>::push_back<char const*&>(&v178, v195);
          goto LABEL_25;
        }

        if (*v195)
        {
          goto LABEL_24;
        }
      }

LABEL_25:
      ++v22;
    }
  }

  v175[0] = C3DEngineContextGetStackAllocator(a1[2]);
  C3D::Hash<C3D::PassIODescriptor,C3D::StackAllocator>::_allocate(v175, 32);
  C3D::Array<C3D::PassIODescriptor,0u,C3D::StackAllocator>::Array(&v171, StackAllocator);
  v25 = *(a3 + 440);
  v26 = C3D::Pass::descriptor(v169);
  v28 = v25 + C3D::PassDescriptor::outputCount(v26);
  if (v173 < v28)
  {
    v30 = v174;
    Aligned = C3DStackAllocatorAllocateAligned(v171, 80 * v28, 16, 0);
    memcpy(Aligned, v30, 80 * v172);
    v174 = Aligned;
    v173 = v28;
  }

  if (*(a3 + 440))
  {
    v32 = 0;
    v163 = *(a3 + 432);
    while (1)
    {
      v33 = v163 + (v32 << 6);
      v34 = *(v33 + 8);
      v36 = *(v33 + 16);
      if (v36 >= 6)
      {
        v42 = scn_default_log();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          C3D::FinalPass::_setupTechniquePassCommonData(&v181, v182);
        }

        LOBYTE(v37) = 0;
        LOBYTE(v38) = 0;
        LOBYTE(v39) = 0;
        LOBYTE(v41) = 0;
        LOBYTE(v40) = 1;
      }

      else
      {
        v37 = 0x1Eu >> v36;
        v38 = 1u >> v36;
        v39 = 0x20u >> v36;
        v40 = 0x1Eu >> v36;
        v41 = 0x30101010102uLL >> (8 * v36);
      }

      v43 = "COLOR";
      if (((v35 == 0) & v37) == 0)
      {
        v43 = v35;
      }

      if ((v38 & (v43 == 0)) != 0)
      {
        v44 = "DEPTH";
      }

      else
      {
        v44 = v43;
      }

      if (*(a3 + 176) <= 1u)
      {
        v45 = 2;
      }

      else
      {
        v45 = 4;
      }

      C3D::PassIODescriptor::PassIODescriptor(__s, v45);
      __s[1] = v44;
      LOBYTE(v194) = v41;
      if (!strcmp(v44, "DEPTH"))
      {
        WORD1(v194) |= 8u;
      }

      v46 = *(v33 + 16);
      if (v46 >= 6)
      {
        v48 = scn_default_log();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          C3D::FinalPass::_setupTechniquePassCommonData(&v183, v184);
        }

        v47 = 255;
      }

      else
      {
        v47 = (0xFF03020100FFuLL >> (8 * v46));
      }

      FramebufferDescription = C3DFXPassGetFramebufferDescription(a3);
      if ((*(FramebufferDescription + 80) & 8) != 0)
      {
        v50 = a1[17];
      }

      else
      {
        v50 = *FramebufferDescription;
      }

      v168 = v50;
      if (v37)
      {
        v51 = *(a3 + 392 + 4 * v47);
        v52 = FramebufferDescription + 8 * v47;
        v54 = *(v52 + 8);
        v53 = (v52 + 8);
        if (v54 == 1)
        {
          v55 = a1[19];
        }

        else
        {
          if ((*(FramebufferDescription + 80) & 7u) <= v47)
          {
            v56 = scn_default_log();
            if (os_log_type_enabled(v56, OS_LOG_TYPE_FAULT))
            {
              C3D::FinalPass::_setupTechniquePassCommonData(v200, &v201, v56);
            }
          }

          LOWORD(v55) = C3DRenderBufferFormatToMTLPixelFormat(*v53, 0, 0);
        }
      }

      else if (v40)
      {
        LOWORD(v55) = 0;
        v51 = 1.0;
      }

      else
      {
        LOWORD(v55) = C3DRenderBufferFormatToMTLPixelFormat(*(FramebufferDescription + 72), 0, 0);
        v51 = *(a3 + 424);
      }

      LOWORD(v191) = (v51 * v168.f32[0]);
      WORD1(v191) = vmuls_lane_f32(v51, v168, 1);
      WORD6(v191) = v55;
      v57 = *(a3 + 176);
      if (v57 <= 1)
      {
        LOBYTE(v57) = 0;
      }

      HIBYTE(v191) = v57;
      v193 = *(a3 + 128);
      v58 = *(a3 + 184);
      if (v58 & 1) != 0 && (v37)
      {
        break;
      }

      v60 = v38 ^ 1;
      if ((v58 & 2) == 0)
      {
        v60 = 1;
      }

      if (v60 & 1) == 0 || (v58 & 4) != 0 && (v39)
      {
        LOWORD(v59) = WORD1(v194) & 0xFFFC | 2;
        goto LABEL_75;
      }

LABEL_76:
      BYTE1(v194) = v47;
      if (v44)
      {
        v61 = __s[1];
        v62 = strlen(__s[1]);
        v63 = 0xC6A4A7935BD1E995 * v62;
        if (v62 >= 8)
        {
          v65 = v62 >> 3;
          v64 = &__s[1][8 * v65];
          v66 = 8 * v65;
          v67 = __s[1];
          do
          {
            v68 = *v67;
            v67 += 8;
            v63 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v68) ^ ((0xC6A4A7935BD1E995 * v68) >> 47))) ^ v63);
            v66 -= 8;
          }

          while (v66);
        }

        else
        {
          v64 = __s[1];
        }

        v69 = v62 & 7;
        if (v69 <= 3)
        {
          if ((v62 & 7) <= 1)
          {
            if ((v62 & 7) == 0)
            {
              goto LABEL_98;
            }

            goto LABEL_97;
          }

          if (v69 == 2)
          {
LABEL_96:
            v63 ^= v64[1] << 8;
LABEL_97:
            v63 = 0xC6A4A7935BD1E995 * (v63 ^ *v64);
LABEL_98:
            v70 = (0xC6A4A7935BD1E995 * (v63 ^ (v63 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v63 ^ (v63 >> 47))) >> 47);
            v71 = (*(a4 + 36) - 1) & v70;
            v72 = *(*(a4 + 24) + 2 * v71);
            if (v72 < 2)
            {
              goto LABEL_102;
            }

            while ((v72 & 2) == 0 || v70 != *(*(a4 + 8) + 8 * v71))
            {
              ++v71;
              v73 = v72 >= 4;
              v72 >>= 1;
              if (!v73)
              {
                goto LABEL_102;
              }
            }

            if (!*(a4 + 16) || (v74 = WORD1(v194), (BYTE2(v194) & 3) == 2))
            {
LABEL_102:
              v195[0] = v41;
              *&v195[4] = v191;
              *&v195[20] = v192;
              C3D::Hash<C3D::FinalPass::RenderTarget,C3D::StackAllocator>::insert(a4, v70, v195);
            }

            else
            {
              v75 = v180;
              v76 = v179;
              if (v179)
              {
                v77 = 8 * v179;
                v78 = v180;
                while (strcmp(*v78, v61))
                {
                  ++v78;
                  v77 -= 8;
                  if (!v77)
                  {
                    goto LABEL_114;
                  }
                }
              }

              else
              {
                v78 = v180;
              }

              if (v78 == &v75[v76])
              {
LABEL_114:
                WORD1(v194) = v74 & 0xFF74 | 0x81;
                *a5 = 1;
                v196 = v192;
                v197 = v193;
                v198 = v194;
                *v195 = *__s;
                *&v195[16] = v191;
                C3D::Hash<C3D::PassIODescriptor,C3D::StackAllocator>::insert(v175, v70, v195);
              }
            }

            goto LABEL_103;
          }

LABEL_95:
          v63 ^= v64[2] << 16;
          goto LABEL_96;
        }

        if ((v62 & 7) > 5)
        {
          if (v69 != 6)
          {
            v63 ^= v64[6] << 48;
          }

          v63 ^= v64[5] << 40;
        }

        else if (v69 == 4)
        {
          goto LABEL_94;
        }

        v63 ^= v64[4] << 32;
LABEL_94:
        v63 ^= v64[3] << 24;
        goto LABEL_95;
      }

LABEL_103:
      v29 = C3D::Array<C3D::PassIODescriptor,0u,C3D::StackAllocator>::push_back<C3D::PassIODescriptor&>(&v171, __s);
      if (++v32 >= *(a3 + 440))
      {
        goto LABEL_115;
      }
    }

    v59 = (WORD1(v194) & 0xFFBC | (v58 >> 3) & 0x40) ^ 0x42;
LABEL_75:
    WORD1(v194) = v59;
    goto LABEL_76;
  }

LABEL_115:
  v79 = v174;
  v80 = v172;
  v81 = v174 + 80 * v172;
  if (v172 < 0x81)
  {
    v87 = 0;
    v83 = 0;
  }

  else
  {
    v82 = MEMORY[0x277D826F0];
    v83 = v172;
    while (1)
    {
      v84 = operator new(80 * v83, v82);
      if (v84)
      {
        break;
      }

      v85 = v83 >> 1;
      v86 = v83 > 1;
      v83 >>= 1;
      if (!v86)
      {
        v87 = 0;
        v83 = v85;
        goto LABEL_122;
      }
    }

    v87 = v84;
  }

LABEL_122:
  std::__stable_sort<std::_ClassicAlgPolicy,C3D::FinalPass::_setupTechniquePassCommonData(C3D::Pass *,__C3DFXPass *,C3D::Hash<C3D::FinalPass::RenderTarget,C3D::StackAllocator> &,BOOL &)::$_1 &,C3D::PassIODescriptor *>(v79, v81, v80, v87, v83, v29);
  if (v87)
  {
    operator delete(v87);
  }

  v88 = C3D::Pass::descriptor(v169);
  if (C3D::PassDescriptor::outputCount(v88))
  {
    v89 = C3D::Pass::descriptor(v169);
    if (C3D::PassDescriptor::outputCount(v89))
    {
      v90 = 0;
      do
      {
        v92 = C3D::Pass::outputBufferParameterAtIndex(v169, v90);
        v93 = v174;
        v94 = v172;
        if (v172)
        {
          v95 = 80 * v172;
          v96 = v174;
          while (!C3D::__IsSameRenderTarget(v92, v96, v91))
          {
            v96 = (v96 + 80);
            v95 -= 80;
            if (!v95)
            {
              goto LABEL_134;
            }
          }
        }

        else
        {
          v96 = v174;
        }

        if (v96 == (v93 + 80 * v94))
        {
LABEL_134:
          C3D::Array<C3D::PassIODescriptor,0u,C3D::StackAllocator>::push_back<C3D::PassIODescriptor&>(&v171, v92);
        }

        v97 = C3D::Pass::descriptor(v169);
        ++v90;
      }

      while (v90 < C3D::PassDescriptor::outputCount(v97));
    }
  }

  C3D::Pass::setOutputCount(v169, v172);
  if (v172)
  {
    v98 = 0;
    v99 = v174;
    v100 = 80 * v172;
    do
    {
      v101 = C3D::Pass::outputBufferParameterAtIndex(v169, v98++);
      *v101 = *v99;
      v102 = *(v99 + 1);
      v103 = *(v99 + 2);
      v104 = *(v99 + 4);
      v101[3] = *(v99 + 3);
      v101[4] = v104;
      v101[1] = v102;
      v101[2] = v103;
      v99 = (v99 + 80);
      v100 -= 80;
    }

    while (v100);
  }

  C3D::Array<C3D::PassIODescriptor,0u,C3D::StackAllocator>::Array(__s, StackAllocator);
  v105 = *(a3 + 520);
  v106 = v176;
  v107 = C3D::Pass::descriptor(v169);
  v108 = v105 + v106 + C3D::PassDescriptor::inputCount(v107);
  if (HIDWORD(__s[1]) < v108)
  {
    v109 = v191;
    v110 = C3DStackAllocatorAllocateAligned(__s[0], 80 * v108, 16, 0);
    memcpy(v110, v109, 80 * LODWORD(__s[1]));
    *&v191 = v110;
    HIDWORD(__s[1]) = v108;
  }

  v111 = v176;
  C3D::PassIODescriptor::PassIODescriptor(v195, 2);
  C3D::Array<C3D::PassIODescriptor,0u,C3D::StackAllocator>::resize(__s, v111, v195);
  v113 = v177;
  if (v177 != -15)
  {
    v114 = 0;
    do
    {
      if (*(v175[3] + 2 * v114))
      {
        v115 = (v175[2] + 80 * v114);
        v198 = v115[4];
        *&v195[16] = v115[1];
        v196 = v115[2];
        v197 = v115[3];
        *v195 = *v115;
        WORD1(v198) = WORD1(v198) & 0xFF74 | 0x81;
        v116 = v172;
        if (v172)
        {
          v117 = 0;
          v118 = v174;
          v119 = 80 * v172;
          while (!C3D::__IsSameRenderTarget(v118, v195, v112))
          {
            ++v117;
            v118 = (v118 + 80);
            v119 -= 80;
            if (!v119)
            {
              goto LABEL_152;
            }
          }
        }

        else
        {
          v117 = 0;
        }

        v73 = v117 >= v116;
        v116 = v117;
        if (v73)
        {
LABEL_152:
          v120 = scn_default_log();
          if (os_log_type_enabled(v120, OS_LOG_TYPE_FAULT))
          {
            C3D::FinalPass::_setupTechniquePassCommonData(v202, v203, v120);
          }
        }

        v121 = C3D::Array<C3D::PassIODescriptor,0u,C3D::StackAllocator>::operator[](__s, v116);
        v121[1] = *&v195[16];
        v121[2] = v196;
        v121[3] = v197;
        v121[4] = v198;
        *v121 = *v195;
        v113 = v177;
      }

      ++v114;
    }

    while (v114 < (v113 + 15));
  }

  if (v165)
  {
    v122 = 0;
    while (1)
    {
      v123 = *(v164 + 8 * v122);
      if (*(v123 + 16) == 1)
      {
        break;
      }

LABEL_172:
      if (++v122 == v165)
      {
        goto LABEL_218;
      }
    }

    if (*(a3 + 176) <= 1u)
    {
      v124 = 2;
    }

    else
    {
      v124 = 4;
    }

    C3D::PassIODescriptor::PassIODescriptor(v195, v124);
    v126 = *(v123 + 32);
    if (v126)
    {
    }

    else
    {
      if (!*&v195[8])
      {
        v127 = scn_default_log();
        if (os_log_type_enabled(v127, OS_LOG_TYPE_FAULT))
        {
          C3D::FinalPass::_setupTechniquePassCommonData(v188, &v189, v127);
        }
      }

      v126 = *(v123 + 32);
    }

    if ((v126 - 20) < 8)
    {
      v128 = 1;
LABEL_170:
      LOBYTE(v198) = v128;
LABEL_171:
      C3D::Array<C3D::PassIODescriptor,0u,C3D::StackAllocator>::push_back<C3D::PassIODescriptor&>(__s, v195);
      goto LABEL_172;
    }

    if (v126 == 28)
    {
      v129 = scn_default_log();
      if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
      {
        C3D::FinalPass::_setupTechniquePassCommonData(&v186, v187);
      }

      v128 = 2;
      goto LABEL_170;
    }

    v130 = *&v195[8];
    v131 = strlen(*&v195[8]);
    v133 = 0xC6A4A7935BD1E995 * v131;
    if (v131 >= 8)
    {
      v135 = v131 >> 3;
      v134 = (*&v195[8] + 8 * v135);
      v136 = 8 * v135;
      v137 = *&v195[8];
      do
      {
        v138 = *v137++;
        v133 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v138) ^ ((0xC6A4A7935BD1E995 * v138) >> 47))) ^ v133);
        v136 -= 8;
      }

      while (v136);
    }

    else
    {
      v134 = *&v195[8];
    }

    v139 = v131 & 7;
    if (v139 <= 3)
    {
      if ((v131 & 7) <= 1)
      {
        if ((v131 & 7) == 0)
        {
          goto LABEL_199;
        }

        goto LABEL_198;
      }

      if (v139 == 2)
      {
LABEL_197:
        v133 ^= v134[1] << 8;
LABEL_198:
        v133 = 0xC6A4A7935BD1E995 * (v133 ^ *v134);
LABEL_199:
        v140 = (0xC6A4A7935BD1E995 * (v133 ^ (v133 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v133 ^ (v133 >> 47))) >> 47);
        v141 = (*(a4 + 36) - 1) & v140;
        v142 = *(*(a4 + 24) + 2 * v141);
        if (v142 < 2)
        {
          goto LABEL_203;
        }

        while ((v142 & 2) == 0 || v140 != *(*(a4 + 8) + 8 * v141))
        {
          ++v141;
          v73 = v142 >= 4;
          v142 >>= 1;
          if (!v73)
          {
            goto LABEL_203;
          }
        }

        v145 = *(a4 + 16);
        if (v145)
        {
          v146 = v145 + 24 * v141;
          LOBYTE(v198) = *v146;
          v147 = *(v146 + 4);
          LODWORD(v196) = *(v146 + 20);
          *&v195[16] = v147;
          v148 = *(a3 + 176);
          if (v148 <= 1)
          {
            v149 = 0;
          }

          else
          {
            v149 = *(a3 + 176);
          }

          v195[31] = v149;
          if (v195[24] == 2)
          {
            if (v148 >= 2)
            {
              v195[24] = 4;
            }
          }

          else if (v195[24] == 4 && v148 <= 1)
          {
            v195[24] = 2;
          }
        }

        else
        {
LABEL_203:
          {
            v144 = 1;
          }

          else
          {
            {
              goto LABEL_172;
            }

            v144 = 2;
          }

          v185 = -1;
          LOBYTE(v198) = v144;
        }

        goto LABEL_171;
      }

LABEL_196:
      v133 ^= v134[2] << 16;
      goto LABEL_197;
    }

    if ((v131 & 7) > 5)
    {
      if (v139 != 6)
      {
        v133 ^= v134[6] << 48;
      }

      v133 ^= v134[5] << 40;
    }

    else if (v139 == 4)
    {
      goto LABEL_195;
    }

    v133 ^= v134[4] << 32;
LABEL_195:
    v133 ^= v134[3] << 24;
    goto LABEL_196;
  }

LABEL_218:
  for (j = 0; ; ++j)
  {
    v151 = C3D::Pass::descriptor(v169);
    if (j >= C3D::PassDescriptor::inputCount(v151))
    {
      break;
    }

    v152 = C3D::Pass::inputBufferParameterAtIndex(v169, j);
    C3D::Array<C3D::PassIODescriptor,0u,C3D::StackAllocator>::push_back<C3D::PassIODescriptor&>(__s, v152);
  }

  C3D::Pass::setInputCount(v169, __s[1]);
  if (LODWORD(__s[1]))
  {
    v153 = 0;
    v154 = v191;
    v155 = 80 * LODWORD(__s[1]);
    do
    {
      v156 = C3D::Pass::inputBufferParameterAtIndex(v169, v153++);
      *v156 = *v154;
      v157 = v154[1];
      v158 = v154[2];
      v159 = v154[4];
      v156[3] = v154[3];
      v156[4] = v159;
      v156[1] = v157;
      v156[2] = v158;
      v154 += 5;
      v155 -= 80;
    }

    while (v155);
  }

  return C3DStackAllocatorPopFrame(StackAllocator);
}

void *anonymous namespace::ScratchAllocatedCStringFromCFString(const __CFString *this, const __CFString *a2, void *a3)
{
  v5 = CFStringGetLength(this) + 1;
  Aligned = C3DScratchAllocatorAllocateAligned(a2, v5, 1, 0);
  bzero(Aligned, v5);
  CFStringGetCString(this, Aligned, v5, 0x8000100u);
  return Aligned;
}

const char *anonymous namespace::InputNameForFXSemantic(int a1)
{
  if ((a1 - 1) > 0x1B)
  {
    return "Invalid";
  }

  else
  {
    return off_2782FBA80[a1 - 1];
  }
}

uint64_t C3D::Hash<C3D::FinalPass::RenderTarget,C3D::StackAllocator>::insert(uint64_t a1, uint64_t a2, __int128 *a3)
{
  while (1)
  {
    v6 = *(a1 + 36);
    v7 = (v6 - 1) & a2;
    v8 = *(a1 + 24);
    v9 = *(v8 + 2 * v7);
    if (v9 >= 2)
    {
      break;
    }

LABEL_6:
    v12 = v7 + 496;
    v13 = v6 + 15;
    if (v13 < v7 + 496)
    {
      v12 = v13;
    }

    LODWORD(v14) = v7;
    v15 = v12 - v7;
    if (v12 > v7)
    {
      v14 = v7;
      while ((*(v8 + 2 * v14) & 1) != 0)
      {
        ++v14;
        if (!--v15)
        {
          goto LABEL_32;
        }
      }
    }

    if (v14 != v12)
    {
      *(v8 + 2 * v14) |= 1u;
      if (v14 <= v7 + 14)
      {
        v20 = v14;
      }

      else
      {
        while (2)
        {
          if (v14 >= 0xF)
          {
            v16 = v14 - 14;
          }

          else
          {
            v16 = 0;
          }

          v17 = v16 - 1;
          if (v16 <= v14)
          {
            v18 = v14;
          }

          else
          {
            v18 = v16;
          }

          v19 = 1;
          while (1)
          {
            v20 = v17 + 1;
            if (v16 <= v20)
            {
              break;
            }

LABEL_26:
            ++v19;
            v17 = v20;
            if (v20 == v18)
            {
              goto LABEL_31;
            }
          }

          v21 = 1 << (v17 - v16 + 2);
          v22 = v19;
          v23 = v16;
          while (1)
          {
            v24 = v23;
            if ((v21 & *(v8 + 2 * v23)) != 0)
            {
              break;
            }

            ++v23;
            LOWORD(v21) = v21 >> 1;
            --v22;
            if (v24 + 1 > v20)
            {
              goto LABEL_26;
            }
          }

          if (v20 >= v14)
          {
LABEL_31:
            *(v8 + 2 * v14) ^= 1u;
            goto LABEL_32;
          }

          v25 = *(a1 + 16);
          *(*(a1 + 8) + 8 * v14) = *(*(a1 + 8) + 8 * v20);
          v26 = v25 + 24 * v14;
          v27 = (v25 + 24 * v20);
          v28 = *v27;
          *(v26 + 16) = *(v27 + 2);
          *v26 = v28;
          v8 = *(a1 + 24);
          *(v8 + 2 * v23) = (*(v8 + 2 * v23) | (1 << (v14 - v23 + 1))) ^ (1 << v22);
          LODWORD(v14) = v20;
          if (v20 > v7 + 14)
          {
            continue;
          }

          break;
        }

        LOBYTE(v14) = v20;
      }

      v32 = *(a1 + 16) + 24 * v20;
      v33 = *a3;
      *(v32 + 16) = *(a3 + 2);
      *v32 = v33;
      *(*(a1 + 8) + 8 * v20) = a2;
      v34 = *(a1 + 24);
      *(v34 + 2 * v20) |= 1u;
      result = 1;
      *(v34 + 2 * v7) |= 1 << (v14 - v7 + 1);
      ++*(a1 + 32);
      return result;
    }

LABEL_32:
    C3D::Hash<C3D::FinalPass::RenderTarget,C3D::StackAllocator>::_grow(a1);
  }

  v10 = (v6 - 1) & a2;
  while ((v9 & 2) == 0 || *(*(a1 + 8) + 8 * v10) != a2)
  {
    ++v10;
    v11 = v9 > 3;
    v9 >>= 1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  result = 0;
  v30 = *(a1 + 16) + 24 * v10;
  v31 = *a3;
  *(v30 + 16) = *(a3 + 2);
  *v30 = v31;
  return result;
}

__n128 C3D::Array<C3D::PassIODescriptor,0u,C3D::StackAllocator>::push_back<C3D::PassIODescriptor&>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 12);
  v6 = *(a1 + 16);
  if (v4 + 1 > v5)
  {
    v7 = ((v5 + 1) * 1.5);
    Aligned = C3DStackAllocatorAllocateAligned(*a1, 80 * v7, 16, 0);
    memcpy(Aligned, v6, 80 * *(a1 + 8));
    *(a1 + 16) = Aligned;
    *(a1 + 12) = v7;
    v6 = Aligned;
    v4 = *(a1 + 8);
  }

  v9 = &v6[80 * v4];
  *v9 = *a2;
  result = *(a2 + 16);
  v11 = *(a2 + 32);
  v12 = *(a2 + 64);
  *(v9 + 3) = *(a2 + 48);
  *(v9 + 4) = v12;
  *(v9 + 1) = result;
  *(v9 + 2) = v11;
  ++*(a1 + 8);
  return result;
}

_DWORD *C3D::Array<C3D::PassIODescriptor,0u,C3D::StackAllocator>::resize(_DWORD *result, unsigned int a2, _OWORD *a3)
{
  v3 = result[2];
  if (v3 != a2)
  {
    v5 = result;
    if (v3 <= a2)
    {
      if (result[3] < a2)
      {
        v7 = *(result + 2);
        v8 = (a2 * 1.5);
        Aligned = C3DStackAllocatorAllocateAligned(*result, 80 * v8, 16, 0);
        result = memcpy(Aligned, v7, 80 * v5[2]);
        *(v5 + 2) = Aligned;
        v5[3] = v8;
        v3 = v5[2];
      }

      if (v3 < a2)
      {
        v10 = 80 * v3;
        v11 = a2 - v3;
        do
        {
          v12 = (*(v5 + 2) + v10);
          *v12 = *a3;
          v13 = a3[1];
          v14 = a3[2];
          v15 = a3[4];
          v12[3] = a3[3];
          v12[4] = v15;
          v12[1] = v13;
          v12[2] = v14;
          v10 += 80;
          --v11;
        }

        while (v11);
      }
    }

    v5[2] = a2;
  }

  return result;
}

uint64_t C3D::FinalPass::_parametersForDrawNodesTechniquePass@<X0>(const __CFArray **this@<X0>, __C3DFXPass *a2@<X1>, uint64_t a3@<X8>)
{
  Nodes = C3DFXPassGetNodes(a2);
  if (Nodes)
  {
    v8 = C3D::flattenedNodesForSelectedNodes(Nodes, this[2], *(this[3] + 2), v7);
  }

  else
  {
    v8 = 0;
  }

  PointOfView = C3DEngineContextGetPointOfView(this[2]);
  if (PointOfView && (Camera = C3DNodeGetCamera(PointOfView)) != 0)
  {
    if (C3DCameraGetScreenSpaceAmbientOcclusionIntensity(Camera) > 0.0)
    {
      v11 = 16;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  var60_low = LODWORD(a2->var60);
  if (var60_low)
  {
    v13 = (*&a2->var59 + 16);
    do
    {
      v14 = *v13;
      v13 += 16;
      if (v14 == 2)
      {
        v11 |= 0x80u;
      }

      --var60_low;
    }

    while (var60_low);
  }

  *a3 = a2;
  *(a3 + 8) = C3DFXPassGetPointOfView(a2);
  *(a3 + 16) = 0;
  *(a3 + 24) = C3DFXPassGetRootNode(a2);
  *(a3 + 32) = v8;
  *(a3 + 40) = C3DFXPassGetIncludeCategoryMask(a2);
  *(a3 + 48) = C3DFXPassGetExcludeCategoryMask(a2);
  *(a3 + 56) = 1;
  *(a3 + 58) = v11;
  *(a3 + 60) = 0;
  *(a3 + 62) = 0;
  result = C3DFXPassGetUsesSceneBackgroundColor(a2);
  *(a3 + 63) = result;
  *(a3 + 64) = 0;
  *(a3 + 66) = 2;
  return result;
}

C3D::ScenePass *C3D::RenderGraph::createPass<C3D::ScenePass,C3D::FinalPass *,C3D::ScenePass::Parameters &,C3D::DrawNodesPass::Parameters>(uint64_t a1, C3D::Pass **a2, const Parameters *a3, const Parameters *a4)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 5456, 16, 0);
  C3D::ScenePass::ScenePass(Aligned, a1, *a2, a3, a4);
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

C3D::DrawNodesPass *C3D::RenderGraph::createPass<C3D::DrawNodesPass,C3D::FinalPass *,C3D::DrawNodesPass::Parameters>(uint64_t a1, C3D::Pass **a2, const Parameters *a3)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 5360, 16, 0);
  C3D::DrawNodesPass::DrawNodesPass(Aligned, a1, *a2, a3);
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

C3D::DrawQuadPass *C3D::RenderGraph::createPass<C3D::DrawQuadPass,C3D::FinalPass *,__C3DFXPass *&>(uint64_t a1, C3D::Pass **a2, __C3DFXPass **a3)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 256, 16, 0);
  C3D::DrawQuadPass::DrawQuadPass(Aligned, a1, *a2, *a3);
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

C3D::CustomPass *C3D::RenderGraph::createPass<C3D::CustomPass,C3D::FinalPass *,__C3DFXPass *&>(uint64_t a1, C3D::Pass **a2, __C3DFXPass **a3)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 128, 8, 0);
  C3D::CustomPass::CustomPass(Aligned, a1, *a2, *a3);
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

C3D::MainPass *C3D::RenderGraph::createPass<C3D::MainPass,C3D::Pass *&>(uint64_t a1, C3D::Pass **a2)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 5456, 16, 0);
  C3D::MainPass::MainPass(Aligned, a1, *a2);
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

void *C3D::Array<C3D::Pass *,0u,C3D::StackAllocator>::Array(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  a1[2] = a1 + 3;
  if (!a2)
  {
    v3 = scn_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3D::Array<C3D::Pass *,0u,C3D::StackAllocator>::Array(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return a1;
}

void C3D::Hash<C3D::FinalPass::RenderTarget,C3D::StackAllocator>::_allocate(uint64_t a1, int a2)
{
  if ((a2 & (a2 - 1)) != 0)
  {
    C3D::Hash<C3D::FinalPass::RenderTarget,C3D::StackAllocator>::_allocate();
  }

  *(a1 + 32) = 0;
  *(a1 + 36) = a2;
  v3 = a2 + 15;
  v4 = 2 * (a2 + 15);
  *(a1 + 24) = C3DStackAllocatorAllocateAligned(*a1, v4, 4, 0);
  *(a1 + 8) = C3DStackAllocatorAllocateAligned(*a1, 8 * v3, 8, 0);
  *(a1 + 16) = C3DStackAllocatorAllocateAligned(*a1, 24 * v3, 4, 0);
  memset(*(a1 + 8), 255, 8 * v3);
  v5 = *(a1 + 24);

  bzero(v5, v4);
}

void C3D::Hash<C3D::PassIODescriptor,C3D::StackAllocator>::_allocate(uint64_t a1, int a2)
{
  if ((a2 & (a2 - 1)) != 0)
  {
    C3D::Hash<C3D::FinalPass::RenderTarget,C3D::StackAllocator>::_allocate();
  }

  *(a1 + 32) = 0;
  *(a1 + 36) = a2;
  v3 = a2 + 15;
  v4 = 2 * (a2 + 15);
  *(a1 + 24) = C3DStackAllocatorAllocateAligned(*a1, v4, 4, 0);
  *(a1 + 8) = C3DStackAllocatorAllocateAligned(*a1, 8 * v3, 8, 0);
  *(a1 + 16) = C3DStackAllocatorAllocateAligned(*a1, 80 * v3, 16, 0);
  memset(*(a1 + 8), 255, 8 * v3);
  v5 = *(a1 + 24);

  bzero(v5, v4);
}

void *C3D::Array<C3D::PassIODescriptor,0u,C3D::StackAllocator>::Array(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  a1[2] = a1 + 4;
  if (!a2)
  {
    v3 = scn_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3D::Array<C3D::Pass *,0u,C3D::StackAllocator>::Array(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return a1;
}

uint64_t C3D::Hash<C3D::PassIODescriptor,C3D::StackAllocator>::insert(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  while (1)
  {
    v6 = *(a1 + 36);
    v7 = (v6 - 1) & a2;
    v8 = *(a1 + 24);
    v9 = *(v8 + 2 * v7);
    if (v9 >= 2)
    {
      break;
    }

LABEL_6:
    v12 = v7 + 496;
    v13 = v6 + 15;
    if (v13 < v7 + 496)
    {
      v12 = v13;
    }

    LODWORD(v14) = v7;
    v15 = v12 - v7;
    if (v12 > v7)
    {
      v14 = v7;
      while ((*(v8 + 2 * v14) & 1) != 0)
      {
        ++v14;
        if (!--v15)
        {
          goto LABEL_32;
        }
      }
    }

    if (v14 != v12)
    {
      *(v8 + 2 * v14) |= 1u;
      if (v14 <= v7 + 14)
      {
        v20 = v14;
      }

      else
      {
        while (2)
        {
          if (v14 >= 0xF)
          {
            v16 = v14 - 14;
          }

          else
          {
            v16 = 0;
          }

          v17 = v16 - 1;
          if (v16 <= v14)
          {
            v18 = v14;
          }

          else
          {
            v18 = v16;
          }

          v19 = 1;
          while (1)
          {
            v20 = v17 + 1;
            if (v16 <= v20)
            {
              break;
            }

LABEL_26:
            ++v19;
            v17 = v20;
            if (v20 == v18)
            {
              goto LABEL_31;
            }
          }

          v21 = 1 << (v17 - v16 + 2);
          v22 = v19;
          v23 = v16;
          while (1)
          {
            v24 = v23;
            if ((v21 & *(v8 + 2 * v23)) != 0)
            {
              break;
            }

            ++v23;
            LOWORD(v21) = v21 >> 1;
            --v22;
            if (v24 + 1 > v20)
            {
              goto LABEL_26;
            }
          }

          if (v20 >= v14)
          {
LABEL_31:
            *(v8 + 2 * v14) ^= 1u;
            goto LABEL_32;
          }

          v25 = *(a1 + 16);
          *(*(a1 + 8) + 8 * v14) = *(*(a1 + 8) + 8 * v20);
          v26 = (v25 + 80 * v14);
          v27 = (v25 + 80 * v20);
          v28 = v27[1];
          v29 = v27[2];
          v30 = v27[4];
          v26[3] = v27[3];
          v26[4] = v30;
          v26[1] = v28;
          v26[2] = v29;
          *v26 = *v27;
          v8 = *(a1 + 24);
          *(v8 + 2 * v23) = (*(v8 + 2 * v23) | (1 << (v14 - v23 + 1))) ^ (1 << v22);
          LODWORD(v14) = v20;
          if (v20 > v7 + 14)
          {
            continue;
          }

          break;
        }

        LOBYTE(v14) = v20;
      }

      v36 = (*(a1 + 16) + 80 * v20);
      *v36 = *a3;
      v37 = a3[1];
      v38 = a3[2];
      v39 = a3[4];
      v36[3] = a3[3];
      v36[4] = v39;
      v36[1] = v37;
      v36[2] = v38;
      *(*(a1 + 8) + 8 * v20) = a2;
      v40 = *(a1 + 24);
      *(v40 + 2 * v20) |= 1u;
      result = 1;
      *(v40 + 2 * v7) |= 1 << (v14 - v7 + 1);
      ++*(a1 + 32);
      return result;
    }

LABEL_32:
    C3D::Hash<C3D::PassIODescriptor,C3D::StackAllocator>::_grow(a1);
  }

  v10 = (v6 - 1) & a2;
  while ((v9 & 2) == 0 || *(*(a1 + 8) + 8 * v10) != a2)
  {
    ++v10;
    v11 = v9 > 3;
    v9 >>= 1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  result = 0;
  v32 = (*(a1 + 16) + 80 * v10);
  *v32 = *a3;
  v33 = a3[1];
  v34 = a3[2];
  v35 = a3[4];
  v32[3] = a3[3];
  v32[4] = v35;
  v32[1] = v33;
  v32[2] = v34;
  return result;
}

void C3D::Hash<C3D::PassIODescriptor,C3D::StackAllocator>::_grow(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 36);
  C3D::Hash<C3D::PassIODescriptor,C3D::StackAllocator>::_allocate(a1, 2 * v5);
  v6 = (v5 + 15);
  if (v6)
  {
    do
    {
      v7 = *v4++;
      if (v7)
      {
        C3D::Hash<C3D::PassIODescriptor,C3D::StackAllocator>::insert(a1, *v3, v2);
      }

      ++v3;
      v2 += 80;
      --v6;
    }

    while (v6);
  }
}

void C3D::Hash<C3D::FinalPass::RenderTarget,C3D::StackAllocator>::_grow(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 36);
  C3D::Hash<C3D::FinalPass::RenderTarget,C3D::StackAllocator>::_allocate(a1, 2 * v5);
  v6 = (v5 + 15);
  if (v6)
  {
    do
    {
      v7 = *v4++;
      if (v7)
      {
        C3D::Hash<C3D::FinalPass::RenderTarget,C3D::StackAllocator>::insert(a1, *v3, v2);
      }

      ++v3;
      v2 += 24;
      --v6;
    }

    while (v6);
  }
}

double std::__stable_sort<std::_ClassicAlgPolicy,C3D::FinalPass::_setupTechniquePassCommonData(C3D::Pass *,__C3DFXPass *,C3D::Hash<C3D::FinalPass::RenderTarget,C3D::StackAllocator> &,BOOL &)::$_1 &,C3D::PassIODescriptor *>(uint64_t a1, char *a2, unint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  if (a3 >= 2)
  {
    v7 = a1;
    if (a3 == 2)
    {
      if (((*(a2 - 7) >> 7) & 1u) > ((*(a1 + 66) >> 7) & 1u))
      {
        v46 = *(a1 + 32);
        v48 = *(a1 + 48);
        v50 = *(a1 + 64);
        v42 = *a1;
        v44 = *(a1 + 16);
        *a1 = *(a2 - 5);
        v8 = *(a2 - 1);
        v10 = *(a2 - 4);
        v9 = *(a2 - 3);
        *(a1 + 48) = *(a2 - 2);
        *(a1 + 64) = v8;
        *(a1 + 16) = v10;
        *(a1 + 32) = v9;
        *(a2 - 2) = v48;
        *(a2 - 1) = v50;
        *(a2 - 4) = v44;
        *(a2 - 3) = v46;
        a6.n128_u64[0] = v42;
        *(a2 - 5) = v42;
      }
    }

    else if (a3 > 128)
    {
      v25 = a4;
      v26 = a3 >> 1;
      v27 = a1 + 80 * (a3 >> 1);
      v28 = a3 >> 1;
      if (a3 <= a5)
      {
        v29 = std::__stable_sort_move<std::_ClassicAlgPolicy,C3D::FinalPass::_setupTechniquePassCommonData(C3D::Pass *,__C3DFXPass *,C3D::Hash<C3D::FinalPass::RenderTarget,C3D::StackAllocator> &,BOOL &)::$_1 &,C3D::PassIODescriptor *>(a1, v27, v28, a4, a6);
        v30 = v25 + 80 * v26;
        a6.n128_u64[0] = std::__stable_sort_move<std::_ClassicAlgPolicy,C3D::FinalPass::_setupTechniquePassCommonData(C3D::Pass *,__C3DFXPass *,C3D::Hash<C3D::FinalPass::RenderTarget,C3D::StackAllocator> &,BOOL &)::$_1 &,C3D::PassIODescriptor *>(v7 + 80 * (a3 >> 1), a2, a3 - (a3 >> 1), v30, v29).n128_u64[0];
        v31 = v25 + 80 * a3;
        v32 = v30;
        while (v32 != v31)
        {
          if (((*(v32 + 66) >> 7) & 1u) <= ((*(v25 + 66) >> 7) & 1u))
          {
            *v7 = *v25;
            a6 = *(v25 + 16);
            v35 = *(v25 + 32);
            v36 = *(v25 + 64);
            *(v7 + 48) = *(v25 + 48);
            *(v7 + 64) = v36;
            *(v7 + 16) = a6;
            *(v7 + 32) = v35;
            v25 += 80;
          }

          else
          {
            *v7 = *v32;
            a6 = *(v32 + 16);
            v33 = *(v32 + 32);
            v34 = *(v32 + 64);
            *(v7 + 48) = *(v32 + 48);
            *(v7 + 64) = v34;
            *(v7 + 16) = a6;
            *(v7 + 32) = v33;
            v32 += 80;
          }

          v7 += 80;
          if (v25 == v30)
          {
            while (v32 != v31)
            {
              *v7 = *v32;
              a6 = *(v32 + 16);
              v39 = *(v32 + 32);
              v40 = *(v32 + 64);
              *(v7 + 48) = *(v32 + 48);
              *(v7 + 64) = v40;
              *(v7 + 16) = a6;
              *(v7 + 32) = v39;
              v32 += 80;
              v7 += 80;
            }

            return a6.n128_f64[0];
          }
        }

        while (v25 != v30)
        {
          *v7 = *v25;
          a6 = *(v25 + 16);
          v37 = *(v25 + 32);
          v38 = *(v25 + 64);
          *(v7 + 48) = *(v25 + 48);
          *(v7 + 64) = v38;
          *(v7 + 16) = a6;
          *(v7 + 32) = v37;
          v25 += 80;
          v7 += 80;
        }
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,C3D::FinalPass::_setupTechniquePassCommonData(C3D::Pass *,__C3DFXPass *,C3D::Hash<C3D::FinalPass::RenderTarget,C3D::StackAllocator> &,BOOL &)::$_1 &,C3D::PassIODescriptor *>(a1, v27, v28, a4, a5);
        std::__stable_sort<std::_ClassicAlgPolicy,C3D::FinalPass::_setupTechniquePassCommonData(C3D::Pass *,__C3DFXPass *,C3D::Hash<C3D::FinalPass::RenderTarget,C3D::StackAllocator> &,BOOL &)::$_1 &,C3D::PassIODescriptor *>(v7 + 80 * (a3 >> 1), a2, a3 - (a3 >> 1), v25, a5);

        a6.n128_u64[0] = std::__inplace_merge<std::_ClassicAlgPolicy,C3D::FinalPass::_setupTechniquePassCommonData(C3D::Pass *,__C3DFXPass *,C3D::Hash<C3D::FinalPass::RenderTarget,C3D::StackAllocator> &,BOOL &)::$_1 &,C3D::PassIODescriptor *>(v7, (v7 + 80 * (a3 >> 1)), a2, a3 >> 1, a3 - (a3 >> 1), v25, a5).n128_u64[0];
      }
    }

    else if (a1 != a2)
    {
      v12 = a1 + 80;
      if ((a1 + 80) != a2)
      {
        v13 = 0;
        v14 = a1;
        do
        {
          v15 = v12;
          v16 = *(v14 + 146);
          v17 = (v16 >> 7) & 1;
          if (v17 > ((*(v14 + 66) >> 7) & 1u))
          {
            v47 = *(v15 + 32);
            v49 = *(v15 + 48);
            v51 = *(v15 + 64);
            v43 = *v15;
            v45 = *(v15 + 16);
            v52 = *(v14 + 148);
            v18 = *(v14 + 156);
            v19 = v13;
            v53 = v18;
            while (1)
            {
              v20 = (a1 + v19);
              v21 = *(a1 + v19 + 48);
              v20[7] = *(a1 + v19 + 32);
              v20[8] = v21;
              v20[9] = *(a1 + v19 + 64);
              v22 = *(a1 + v19 + 16);
              v20[5] = *(a1 + v19);
              v20[6] = v22;
              if (!v19)
              {
                break;
              }

              v19 -= 80;
              if (v17 <= ((*(v20 - 7) >> 7) & 1u))
              {
                v23 = a1 + v19 + 80;
                goto LABEL_16;
              }
            }

            v23 = a1;
LABEL_16:
            *(v23 + 32) = v47;
            *(v23 + 48) = v49;
            *(v23 + 64) = v51;
            a6.n128_u64[0] = v45;
            *v23 = v43;
            *(v23 + 16) = v45;
            *(v23 + 66) = v16;
            *(v23 + 68) = v52;
            *(v23 + 76) = v53;
          }

          v12 = v15 + 80;
          v13 += 80;
          v14 = v15;
        }

        while ((v15 + 80) != a2);
      }
    }
  }

  return a6.n128_f64[0];
}

__n128 std::__stable_sort_move<std::_ClassicAlgPolicy,C3D::FinalPass::_setupTechniquePassCommonData(C3D::Pass *,__C3DFXPass *,C3D::Hash<C3D::FinalPass::RenderTarget,C3D::StackAllocator> &,BOOL &)::$_1 &,C3D::PassIODescriptor *>(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, __n128 result)
{
  if (a3)
  {
    v5 = a4;
    v8 = a1;
    if (a3 == 2)
    {
      v11 = (a2 - 80);
      if (((*(a2 - 14) >> 7) & 1u) <= ((*(a1 + 66) >> 7) & 1u))
      {
        *a4 = *a1;
        v33 = *(a1 + 16);
        v34 = *(a1 + 32);
        v35 = *(a1 + 64);
        *(a4 + 48) = *(a1 + 48);
        *(a4 + 64) = v35;
        *(a4 + 16) = v33;
        *(a4 + 32) = v34;
        v36 = *(a2 - 16);
        v38 = *(a2 - 64);
        v37 = *(a2 - 48);
        *(a4 + 128) = *(a2 - 32);
        *(a4 + 144) = v36;
        *(a4 + 96) = v38;
        *(a4 + 112) = v37;
        result = *v11;
      }

      else
      {
        *a4 = *v11;
        v12 = *(a2 - 64);
        v13 = *(a2 - 48);
        v14 = *(a2 - 16);
        *(a4 + 48) = *(a2 - 32);
        *(a4 + 64) = v14;
        *(a4 + 16) = v12;
        *(a4 + 32) = v13;
        v15 = *(a1 + 64);
        v17 = *(a1 + 16);
        v16 = *(a1 + 32);
        *(a4 + 128) = *(a1 + 48);
        *(a4 + 144) = v15;
        *(a4 + 96) = v17;
        *(a4 + 112) = v16;
        result = *a1;
      }

      *(a4 + 80) = result;
    }

    else if (a3 == 1)
    {
      *a4 = *a1;
      result = *(a1 + 16);
      v9 = *(a1 + 32);
      v10 = *(a1 + 64);
      *(a4 + 48) = *(a1 + 48);
      *(a4 + 64) = v10;
      *(a4 + 16) = result;
      *(a4 + 32) = v9;
    }

    else if (a3 > 8)
    {
      v39 = a1 + 80 * (a3 >> 1);
      std::__stable_sort<std::_ClassicAlgPolicy,C3D::FinalPass::_setupTechniquePassCommonData(C3D::Pass *,__C3DFXPass *,C3D::Hash<C3D::FinalPass::RenderTarget,C3D::StackAllocator> &,BOOL &)::$_1 &,C3D::PassIODescriptor *>(a1, v39, a3 >> 1, a4, a3 >> 1);
      std::__stable_sort<std::_ClassicAlgPolicy,C3D::FinalPass::_setupTechniquePassCommonData(C3D::Pass *,__C3DFXPass *,C3D::Hash<C3D::FinalPass::RenderTarget,C3D::StackAllocator> &,BOOL &)::$_1 &,C3D::PassIODescriptor *>(v8 + 80 * (a3 >> 1), a2, a3 - (a3 >> 1), v5 + 80 * (a3 >> 1), a3 - (a3 >> 1));
      v40 = v8 + 80 * (a3 >> 1);
      while (v40 != a2)
      {
        if (((*(v40 + 66) >> 7) & 1u) <= ((*(v8 + 66) >> 7) & 1u))
        {
          *v5 = *v8;
          result = *(v8 + 16);
          v43 = *(v8 + 32);
          v44 = *(v8 + 64);
          *(v5 + 48) = *(v8 + 48);
          *(v5 + 64) = v44;
          *(v5 + 16) = result;
          *(v5 + 32) = v43;
          v8 += 80;
        }

        else
        {
          *v5 = *v40;
          result = *(v40 + 16);
          v41 = *(v40 + 32);
          v42 = *(v40 + 64);
          *(v5 + 48) = *(v40 + 48);
          *(v5 + 64) = v42;
          *(v5 + 16) = result;
          *(v5 + 32) = v41;
          v40 += 80;
        }

        v5 += 80;
        if (v8 == v39)
        {
          while (v40 != a2)
          {
            *v5 = *v40;
            result = *(v40 + 16);
            v47 = *(v40 + 32);
            v48 = *(v40 + 64);
            *(v5 + 48) = *(v40 + 48);
            *(v5 + 64) = v48;
            *(v5 + 16) = result;
            *(v5 + 32) = v47;
            v40 += 80;
            v5 += 80;
          }

          return result;
        }
      }

      while (v8 != v39)
      {
        *v5 = *v8;
        result = *(v8 + 16);
        v45 = *(v8 + 32);
        v46 = *(v8 + 64);
        *(v5 + 48) = *(v8 + 48);
        *(v5 + 64) = v46;
        *(v5 + 16) = result;
        *(v5 + 32) = v45;
        v8 += 80;
        v5 += 80;
      }
    }

    else if (a1 != a2)
    {
      *a4 = *a1;
      result = *(a1 + 16);
      v18 = *(a1 + 32);
      v19 = *(a1 + 64);
      *(a4 + 48) = *(a1 + 48);
      *(a4 + 64) = v19;
      *(a4 + 16) = result;
      *(a4 + 32) = v18;
      v20 = a1 + 80;
      if (a1 + 80 != a2)
      {
        v21 = 0;
        v22 = a4;
        do
        {
          v23 = v8;
          v24 = v22;
          v8 = v20;
          v22 += 5;
          v25 = v22;
          if (((*(v23 + 146) >> 7) & 1u) > ((*(v24 + 33) >> 7) & 1u))
          {
            v26 = v24[3];
            v22[2] = v24[2];
            v22[3] = v26;
            v22[4] = v24[4];
            v27 = v24[1];
            *v22 = *v24;
            v22[1] = v27;
            v25 = a4;
            if (v24 != a4)
            {
              v28 = v21;
              while (1)
              {
                v25 = (a4 + v28);
                if (((*(v23 + 146) >> 7) & 1u) <= ((*(a4 + v28 - 14) >> 7) & 1u))
                {
                  break;
                }

                v29 = *(v25 - 2);
                v25[2] = *(v25 - 3);
                v25[3] = v29;
                v25[4] = *(v25 - 1);
                v30 = *(v25 - 4);
                *v25 = *(v25 - 5);
                v25[1] = v30;
                v28 -= 80;
                if (!v28)
                {
                  v25 = a4;
                  break;
                }
              }
            }
          }

          *v25 = *v8;
          result = *(v8 + 16);
          v31 = *(v8 + 32);
          v32 = *(v8 + 64);
          v25[3] = *(v8 + 48);
          v25[4] = v32;
          v25[1] = result;
          v25[2] = v31;
          v20 = v8 + 80;
          v21 += 80;
        }

        while (v8 + 80 != a2);
      }
    }
  }

  return result;
}

__n128 std::__inplace_merge<std::_ClassicAlgPolicy,C3D::FinalPass::_setupTechniquePassCommonData(C3D::Pass *,__C3DFXPass *,C3D::Hash<C3D::FinalPass::RenderTarget,C3D::StackAllocator> &,BOOL &)::$_1 &,C3D::PassIODescriptor *>(char *a1, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a5)
  {
    v8 = a5;
    while (v8 > a7 && a4 > a7)
    {
      if (!a4)
      {
        return result;
      }

      v10 = 0;
      v11 = -a4;
      while (1)
      {
        v12 = &a1[v10];
        if (((*(a2 + 33) >> 7) & 1u) > ((*&a1[v10 + 66] >> 7) & 1u))
        {
          break;
        }

        v10 += 80;
        if (__CFADD__(v11++, 1))
        {
          return result;
        }
      }

      v68 = a3;
      v69 = a6;
      v70 = a7;
      if (-v11 >= v8)
      {
        if (v11 == -1)
        {
          v60 = &a1[v10];
          v71 = *v60;
          v74 = v60[3];
          v75 = v60[4];
          v72 = v60[1];
          v73 = v60[2];
          v61 = *(a2 + 4);
          v63 = *(a2 + 1);
          v62 = *(a2 + 2);
          v60[3] = *(a2 + 3);
          v60[4] = v61;
          v60[1] = v63;
          v60[2] = v62;
          *v60 = *a2;
          *(a2 + 3) = v74;
          *(a2 + 4) = v75;
          *(a2 + 1) = v72;
          *(a2 + 2) = v73;
          result = v71;
          *a2 = v71;
          return result;
        }

        v24 = -v11 / 2;
        if (a3 == a2)
        {
          v15 = a2;
        }

        else
        {
          v25 = 0xCCCCCCCCCCCCCCCDLL * ((a3 - a2) >> 4);
          v15 = a2;
          do
          {
            v26 = v25 >> 1;
            v27 = &v15[80 * (v25 >> 1)];
            v28 = (*(v27 + 33) >> 7) & 1;
            v29 = v27 + 80;
            v25 += ~(v25 >> 1);
            if (v28 > ((*&a1[80 * v24 + 66 + v10] >> 7) & 1u))
            {
              v15 = v29;
            }

            else
            {
              v25 = v26;
            }
          }

          while (v25);
        }

        v18 = &a1[80 * v24 + v10];
        v14 = 0xCCCCCCCCCCCCCCCDLL * ((v15 - a2) >> 4);
      }

      else
      {
        v14 = v8 / 2;
        v15 = &a2[80 * (v8 / 2)];
        if (v12 == a2)
        {
          v23 = &a1[v10];
          v16 = v23;
          v18 = v12;
        }

        else
        {
          v16 = &a1[v10];
          v17 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1 - v10) >> 4);
          v18 = &a1[v10];
          do
          {
            v19 = v17 >> 1;
            v20 = &v18[80 * (v17 >> 1)];
            v21 = (*(v20 + 33) >> 7) & 1;
            v22 = v20 + 80;
            v17 += ~(v17 >> 1);
            if (((*(v15 + 33) >> 7) & 1u) > v21)
            {
              v17 = v19;
            }

            else
            {
              v18 = v22;
            }
          }

          while (v17);
          v23 = v18;
        }

        v24 = 0xCCCCCCCCCCCCCCCDLL * ((v23 - v16) >> 4);
      }

      a4 = -(v24 + v11);
      v30 = v8 - v14;
      v31 = v24;
      v32 = std::__rotate[abi:nn200100]<std::_ClassicAlgPolicy,C3D::PassIODescriptor *,C3D::PassIODescriptor *>(v18, a2, v15);
      v33 = v31;
      v34 = v32;
      if (v33 + v14 >= v8 - (v33 + v14) - v11)
      {
        v37 = v33;
        std::__inplace_merge<std::_ClassicAlgPolicy,C3D::FinalPass::_setupTechniquePassCommonData(C3D::Pass *,__C3DFXPass *,C3D::Hash<C3D::FinalPass::RenderTarget,C3D::StackAllocator> &,BOOL &)::$_1 &,C3D::PassIODescriptor *>(v32, v15, v68, a4, v30, v69, v70);
        v15 = v18;
        a6 = v69;
        v30 = v14;
        a4 = v37;
        a3 = v34;
      }

      else
      {
        v35 = v18;
        a6 = v69;
        std::__inplace_merge<std::_ClassicAlgPolicy,C3D::FinalPass::_setupTechniquePassCommonData(C3D::Pass *,__C3DFXPass *,C3D::Hash<C3D::FinalPass::RenderTarget,C3D::StackAllocator> &,BOOL &)::$_1 &,C3D::PassIODescriptor *>(v12, v35, v32, v33, v14, v69, v70);
        v12 = v34;
        a3 = v68;
      }

      v8 = v30;
      a1 = v12;
      a2 = v15;
      a7 = v70;
      if (!v30)
      {
        return result;
      }
    }

    if (a4 <= v8)
    {
      if (a1 != a2)
      {
        v50 = -a6;
        v51 = a6;
        v52 = a1;
        do
        {
          *v51 = *v52;
          v53 = *(v52 + 1);
          v54 = *(v52 + 2);
          v55 = *(v52 + 4);
          v51[3] = *(v52 + 3);
          v51[4] = v55;
          v51[1] = v53;
          v51[2] = v54;
          v52 += 80;
          v51 += 5;
          v50 -= 80;
        }

        while (v52 != a2);
        while (a2 != a3)
        {
          if (((*(a2 + 33) >> 7) & 1u) <= ((*(a6 + 66) >> 7) & 1u))
          {
            *a1 = *a6;
            result = *(a6 + 16);
            v58 = *(a6 + 32);
            v59 = *(a6 + 64);
            *(a1 + 3) = *(a6 + 48);
            *(a1 + 4) = v59;
            *(a1 + 1) = result;
            *(a1 + 2) = v58;
            a6 += 80;
          }

          else
          {
            *a1 = *a2;
            result = *(a2 + 1);
            v56 = *(a2 + 2);
            v57 = *(a2 + 4);
            *(a1 + 3) = *(a2 + 3);
            *(a1 + 4) = v57;
            *(a1 + 1) = result;
            *(a1 + 2) = v56;
            a2 += 80;
          }

          a1 += 80;
          if (v51 == a6)
          {
            return result;
          }
        }

        memmove(a1, a6, -(a6 + v50));
      }
    }

    else if (a2 != a3)
    {
      v38 = 0;
      do
      {
        v39 = (a6 + v38);
        *v39 = *&a2[v38];
        result = *&a2[v38 + 16];
        v40 = *&a2[v38 + 32];
        v41 = *&a2[v38 + 64];
        *(v39 + 3) = *&a2[v38 + 48];
        *(v39 + 4) = v41;
        *(v39 + 1) = result;
        *(v39 + 2) = v40;
        v38 += 80;
      }

      while (&a2[v38] != a3);
      v42 = (a6 + v38);
      while (a2 != a1)
      {
        v43 = (*(v42 - 7) >> 7) & 1;
        v44 = (*(a2 - 7) >> 7) & 1;
        v45 = v43 > v44;
        if (v43 <= v44)
        {
          v46 = v42 - 80;
        }

        else
        {
          v46 = a2 - 80;
        }

        v47 = *(v46 + 4);
        v49 = *(v46 + 1);
        v48 = *(v46 + 2);
        *(a3 - 2) = *(v46 + 3);
        *(a3 - 1) = v47;
        *(a3 - 4) = v49;
        *(a3 - 3) = v48;
        result = *v46;
        *(a3 - 5) = *v46;
        a3 -= 80;
        if (v45)
        {
          a2 -= 80;
        }

        else
        {
          v42 -= 80;
        }

        if (v42 == a6)
        {
          return result;
        }
      }

      if (v42 != a6)
      {
        v64 = -80;
        do
        {
          v65 = &a3[v64];
          *v65 = *(v42 - 5);
          result = *(v42 - 4);
          v66 = *(v42 - 3);
          v67 = *(v42 - 1);
          *(v65 + 3) = *(v42 - 2);
          *(v65 + 4) = v67;
          *(v65 + 1) = result;
          *(v65 + 2) = v66;
          v64 -= 80;
          v42 -= 80;
        }

        while (v42 != a6);
      }
    }
  }

  return result;
}

char *std::__rotate[abi:nn200100]<std::_ClassicAlgPolicy,C3D::PassIODescriptor *,C3D::PassIODescriptor *>(char *__src, char *a2, char *a3)
{
  v4 = a3;
  if (__src != a2)
  {
    if (a2 == a3)
    {
      return __src;
    }

    else if (__src + 80 == a2)
    {
      v13 = *(__src + 2);
      v15 = *(__src + 3);
      v17 = *(__src + 4);
      v9 = *__src;
      v11 = *(__src + 1);
      v6 = a3 - a2;
      memmove(__src, __src + 80, a3 - a2);
      v4 = &__src[v6];
      *(v4 + 2) = v13;
      *(v4 + 3) = v15;
      *(v4 + 4) = v17;
      *v4 = v9;
      *(v4 + 1) = v11;
    }

    else if (a2 + 80 == a3)
    {
      v4 = __src + 80;
      v14 = *(a3 - 3);
      v16 = *(a3 - 2);
      v18 = *(a3 - 1);
      v10 = *(a3 - 5);
      v12 = *(a3 - 4);
      v7 = a3 - 80 - __src;
      if (a3 - 80 != __src)
      {
        memmove(__src + 80, __src, v7);
      }

      *(__src + 2) = v14;
      *(__src + 3) = v16;
      *(__src + 4) = v18;
      *__src = v10;
      *(__src + 1) = v12;
    }

    else
    {
      return std::__rotate_gcd[abi:nn200100]<std::_ClassicAlgPolicy,C3D::PassIODescriptor *>(__src, a2, a3);
    }
  }

  return v4;
}

char *std::__rotate_gcd[abi:nn200100]<std::_ClassicAlgPolicy,C3D::PassIODescriptor *>(char *a1, char *a2, char *a3)
{
  v3 = a2 - a1;
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 4);
  v5 = 0xCCCCCCCCCCCCCCCDLL * ((a3 - a2) >> 4);
  if (v4 == v5)
  {
    if (a1 != a2 && a2 != a3)
    {
      v6 = a2 + 80;
      v7 = a1 + 80;
      do
      {
        v34 = *(v7 - 3);
        v36 = *(v7 - 2);
        v38 = *(v7 - 1);
        v31 = *(v7 - 5);
        v32 = *(v7 - 4);
        *(v7 - 5) = *(v6 - 5);
        v8 = *(v6 - 1);
        v10 = *(v6 - 4);
        v9 = *(v6 - 3);
        *(v7 - 2) = *(v6 - 2);
        *(v7 - 1) = v8;
        *(v7 - 4) = v10;
        *(v7 - 3) = v9;
        *(v6 - 2) = v36;
        *(v6 - 1) = v38;
        *(v6 - 4) = v32;
        *(v6 - 3) = v34;
        *(v6 - 5) = v31;
        if (v7 == a2)
        {
          break;
        }

        v7 += 80;
        v11 = v6 == a3;
        v6 += 80;
      }

      while (!v11);
    }
  }

  else
  {
    v12 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 4);
    do
    {
      v13 = v12;
      v12 = v5;
      v5 = v13 % v5;
    }

    while (v5);
    v14 = &a1[80 * v12];
    do
    {
      v15 = *(v14 - 3);
      v16 = *(v14 - 2);
      v17 = *(v14 - 1);
      v19 = *(v14 - 5);
      v18 = *(v14 - 4);
      v14 -= 80;
      v35 = v15;
      v37 = v16;
      v33 = v18;
      v20 = &v14[v3];
      v21 = v14;
      do
      {
        v22 = v21;
        v21 = v20;
        *v22 = *v20;
        v23 = *(v20 + 1);
        v24 = *(v20 + 2);
        v25 = *(v20 + 4);
        v22[3] = *(v20 + 3);
        v22[4] = v25;
        v22[1] = v23;
        v22[2] = v24;
        v26 = 0xCCCCCCCCCCCCCCCDLL * ((a3 - v20) >> 4);
        v27 = __OFSUB__(v4, v26);
        v29 = v4 - v26;
        v28 = (v29 < 0) ^ v27;
        v20 = &a1[80 * v29];
        if (v28)
        {
          v20 = v21 + v3;
        }
      }

      while (v20 != v14);
      *v21 = v19;
      v21[3] = v37;
      v21[4] = v17;
      v21[1] = v33;
      v21[2] = v35;
    }

    while (v14 != a1);
    return &a1[a3 - a2];
  }

  return a2;
}

uint64_t C3D::Array<C3D::PassIODescriptor,0u,C3D::StackAllocator>::operator[](uint64_t a1, unsigned int a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (*(a1 + 8) <= a2)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      v6 = *(a1 + 8);
      v7 = 136315906;
      v8 = "i < size()";
      v9 = 2048;
      v10 = a1;
      v11 = 1024;
      v12 = a2;
      v13 = 1024;
      v14 = v6;
      _os_log_fault_impl(&dword_21BEF7000, v4, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Out of bound Array:%p access %d size %d", &v7, 0x22u);
    }
  }

  return *(a1 + 16) + 80 * a2;
}

_BYTE *OUTLINED_FUNCTION_0_3(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void OUTLINED_FUNCTION_2_1(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 2u);
}

uint64_t __C3DAnimationClusterKeyframesGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DAnimationClusterKeyframesGetTypeID_typeID = result;
  return result;
}

uint64_t C3DAnimationClusterKeyframesCreate()
{
  if (C3DAnimationClusterKeyframesGetTypeID_onceToken != -1)
  {
    C3DAnimationClusterKeyframesCreate_cold_1();
  }

  v1 = C3DAnimationClusterKeyframesGetTypeID_typeID;

  return C3DTypeCreateInstance_(v1, 64);
}

uint64_t C3DAnimationClusterGetTypeID()
{
  if (C3DAnimationClusterGetTypeID_onceToken != -1)
  {
    C3DAnimationClusterGetTypeID_cold_1();
  }

  return C3DAnimationClusterGetTypeID_typeID;
}

double __C3DAnimationClusterGetTypeID_block_invoke()
{
  C3DAnimationClusterGetTypeID_typeID = _CFRuntimeRegisterClass();
  result = *&kC3DC3DAnimationClusterContextClassSerializable;
  unk_281741F90 = kC3DC3DAnimationClusterContextClassSerializable;
  unk_281741FA0 = *off_282DC2EA0;
  return result;
}

uint64_t C3DAnimationClusterCreate()
{
  if (C3DAnimationClusterGetTypeID_onceToken != -1)
  {
    C3DAnimationClusterGetTypeID_cold_1();
  }

  v1 = C3DAnimationClusterGetTypeID_typeID;

  return C3DTypeCreateInstance_(v1, 160);
}

uint64_t C3DKeyframeAnimationCreateWithClusteredKeyframe(uint64_t a1, uint64_t a2)
{
  v4 = C3DKeyframedAnimationCreate();
  v5 = *(a1 + 16);
  v6 = *(*(a1 + 32) + 2 * a2);
  Semantic = C3DKeyFrameInterpolatorGetSemantic(*(*(a1 + 48) + 8 * a2));
  v8 = C3DKeyframeControllerCreateWithCapacity(v5, v6, Semantic, 0, 0, 0, 0);
  v9 = *(a1 + 64);
  if (a2 >= 1)
  {
    v10 = *(a1 + 40);
    v11 = a2;
    do
    {
      v12 = *v10++;
      v9 += (v12 + 15) & 0xF0;
      --v11;
    }

    while (v11);
  }

  if (*(a1 + 16))
  {
    v13 = 0;
    do
    {
      C3DKeyframeControllerSetKeyframeAtIndex(v8, v13, v9, 0, 0, 0, 0, *(*(a1 + 56) + 4 * v13), 0.0, 0.0, 0.0);
      v9 += *(a1 + 24);
      ++v13;
    }

    while (v13 < *(a1 + 16));
  }

  C3DAnimationSetKeyPath(v4, *(*(a1 + 72) + 8 * a2));
  C3DKeyframedAnimationSetController(v4, v8);
  CFRelease(v8);
  return v4;
}

__n128 *C3DAnimationGroupCreateWithAnimationCluster(uint64_t a1)
{
  v2 = C3DAnimationGroupCreate();
  C3DAnimationCopySettingsToAnimation(a1, v2);
  ID = C3DEntityGetID(a1);
  C3DEntitySetID(v2, ID);
  Duration = C3DAnimationGetDuration(a1);
  v5 = *(*(a1 + 168) + 20);
  if (v5)
  {
    v6 = Duration;
    for (i = 0; i != v5; ++i)
    {
      v8 = C3DKeyframeAnimationCreateWithClusteredKeyframe(*(a1 + 168), i);
      C3DAnimationSetDuration(v8, v6);
      C3DAnimationGroupAddAnimation(v2, v8);
      CFRelease(v8);
    }
  }

  return v2;
}

__n128 *C3DAnimationClusterCreateWithAnimationGroup(uint64_t a1)
{
  v69 = *MEMORY[0x277D85DE8];
  if (C3DWasLinkedBeforeMajorOSYear2017())
  {
    return 0;
  }

  if ((_checkCompatibility(a1) & 1) == 0)
  {
    C3DAnimationGroupGetAnimationCount(a1);
    return 0;
  }

  v2 = _countAnimation(a1);
  if (v2 < 3)
  {
    return 0;
  }

  v3 = v2;
  if (C3DAnimationClusterGetTypeID_onceToken != -1)
  {
    C3DAnimationClusterGetTypeID_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DAnimationClusterGetTypeID_typeID, 160);
  ID = C3DEntityGetID(a1);
  C3DEntitySetID(Instance, ID);
  Instance[10].n128_u64[1] = C3DAnimationClusterKeyframesCreate();
  C3DAnimationCommonInit(Instance);
  v6 = Instance[10].n128_u64[1];
  *(v6 + 20) = v3;
  v7 = v3;
  *(v6 + 32) = malloc_type_malloc(2 * v3, 0x1000040BDFB0063uLL);
  *(v6 + 40) = malloc_type_malloc(v3, 0x100004077774924uLL);
  v8 = 8 * v3;
  *(v6 + 48) = malloc_type_malloc(v8, 0x80040B8603338uLL);
  *(v6 + 72) = malloc_type_malloc(v8, 0x6004044C4A2DFuLL);
  v9 = malloc_type_malloc(8 * *(v6 + 20), 0x2004093837F09uLL);
  v68 = 0;
  _getAnimations(a1, v9, &v68);
  v10 = 0;
  for (i = 0; i != v7; ++i)
  {
    v12 = v9[i];
    *(*(v6 + 72) + 8 * i) = C3DAnimationGetKeyPath(v12);
    CFRetain(*(*(v6 + 72) + 8 * i));
    v13 = *(v12 + 168);
    v14 = *(v6 + 40);
    *(*(v6 + 32) + 2 * i) = *(v13 + 28);
    *(v14 + i) = *(v13 + 30);
    *(*(v6 + 48) + 8 * i) = *(*(v12 + 168) + 32);
    v10 += (*(*(v6 + 40) + i) + 15) & 0xF0;
  }

  *(v6 + 24) = v10;
  v67 = a1;
  Duration = C3DAnimationGetDuration(a1);
  v16 = Duration;
  if (Duration < 0.0)
  {
    v68 = v7;
LABEL_24:
    v26 = scn_default_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationClusterCreateWithAnimationGroup_cold_2(v26, v27, v28, v29, v30, v31, v32, v33);
    }

    v18 = 0;
    v25 = 1;
    goto LABEL_27;
  }

  v18 = 0;
  v19 = 0.0;
  do
  {
    v20 = v7;
    v21 = v9;
    v22 = Duration;
    do
    {
      v23 = *v21++;
      _getNextKeyTime(v23, v19, v16);
      if (v24 < v22)
      {
        v22 = v24;
      }

      --v20;
    }

    while (v20);
    if (v22 >= v19 + 0.00833333333)
    {
      v19 = v22;
    }

    else
    {
      v19 = v19 + 0.00833333333;
    }

    ++v18;
  }

  while (v19 <= v16);
  v68 = v7;
  if (!v18)
  {
    goto LABEL_24;
  }

  v25 = 0;
LABEL_27:
  *(v6 + 16) = v18;
  v34 = v18;
  *(v6 + 56) = malloc_type_malloc(4 * v18, 0x100004052888210uLL);
  if (Duration >= 0.0)
  {
    v35 = 0;
    v48 = 0.0;
    do
    {
      v49 = v48;
      v50 = v7;
      v51 = v9;
      v52 = Duration;
      do
      {
        v53 = *v51++;
        _getNextKeyTime(v53, v49, v16);
        if (v54 < v52)
        {
          v52 = v54;
        }

        --v50;
      }

      while (v50);
      v48 = v49 + 0.00833333333;
      if (v52 >= v49 + 0.00833333333)
      {
        v48 = v52;
      }

      v55 = v49;
      *(*(v6 + 56) + 4 * v35++) = v55;
    }

    while (v48 <= v16);
  }

  else
  {
    LODWORD(v35) = 0;
  }

  if (v35 != v34)
  {
    v36 = scn_default_log();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationClusterCreateWithAnimationGroup_cold_4(v36, v37, v38, v39, v40, v41, v42, v43);
    }
  }

  v44 = v10 * v34;
  v45 = malloc_type_malloc(v10 * v34, 0x1D6DDE72uLL);
  v46 = v45;
  *(v6 + 64) = v45;
  v68 = 0;
  if (v25)
  {
    v47 = v45;
  }

  else
  {
    v56 = 0;
    do
    {
      v57 = 0;
      v58 = *(*(v6 + 56) + 4 * v56);
      do
      {
        C3DKeyframeControllerEvaluateAtTime(*(v9[v57] + 168), 0, 0, v46, v58);
        v46 += (*(*(v6 + 40) + v57++) + 15) & 0xF0;
      }

      while (v7 != v57);
      v56 = v68 + 1;
      v68 = v56;
    }

    while (v56 < v34);
    v47 = *(v6 + 64);
  }

  if (v46 != &v47[v44])
  {
    v59 = scn_default_log();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationClusterCreateWithAnimationGroup_cold_5(v59, v60, v61, v62, v63, v64, v65, v66);
    }
  }

  free(v9);
  Instance[4].n128_f32[2] = Duration;
  C3DAnimationCopySettingsToAnimation(v67, Instance);
  return Instance;
}

uint64_t _checkCompatibility(uint64_t a1)
{
  if ((*(a1 + 84) & 6) != 0)
  {
    return 0;
  }

  AnimationCount = C3DAnimationGroupGetAnimationCount(a1);
  if (C3DAnimationGetDuration(a1) != 0.0)
  {
    if (AnimationCount < 1)
    {
      return 1;
    }

    v4 = 0;
    while (1)
    {
      AnimationAtIndex = C3DAnimationGroupGetAnimationAtIndex(a1, v4);
      if ((AnimationAtIndex[42] & 6) != 0)
      {
        break;
      }

      v6 = AnimationAtIndex;
      if (C3DAnimationNodeGetPauseTime(AnimationAtIndex) != 0.0 || C3DAnimationGetTimeOffset(v6) != 0.0 || C3DAnimationGetDuration(v6) == 0.0)
      {
        break;
      }

      if (C3DAnimationIsGroup(v6))
      {
        if ((_checkCompatibility(v6) & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v7 = CFGetTypeID(v6);
        if (v7 != C3DKeyframedAnimationGetTypeID())
        {
          return 0;
        }

        Controller = C3DKeyframedAnimationGetController(v6);
        if (C3DKeyframeControllerHasTCB(Controller) || C3DKeyframeControllerGetDefaultInterpolationMode(Controller) || C3DKeyframeControllerGetCalculationMode(Controller) || C3DKeyframeControllerHasInterpolationModesPerKey(Controller) || C3DKeyframeControllerHasTimingFunctions(Controller) || *(Controller + 96))
        {
          return 0;
        }
      }

      ++v4;
      result = 1;
      if (AnimationCount == v4)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t _countAnimation(uint64_t a1)
{
  AnimationCount = C3DAnimationGroupGetAnimationCount(a1);
  if (AnimationCount < 1)
  {
    return 0;
  }

  v3 = AnimationCount;
  LODWORD(v4) = 0;
  for (i = 0; i != v3; ++i)
  {
    AnimationAtIndex = C3DAnimationGroupGetAnimationAtIndex(a1, i);
    if (C3DAnimationIsGroup(AnimationAtIndex))
    {
      v7 = _countAnimation(AnimationAtIndex);
    }

    else
    {
      v7 = 1;
    }

    v4 = (v7 + v4);
  }

  return v4;
}

void _getAnimations(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *&v14[5] = *MEMORY[0x277D85DE8];
  AnimationCount = C3DAnimationGroupGetAnimationCount(a1);
  if (AnimationCount >= 1)
  {
    v7 = AnimationCount;
    for (i = 0; i != v7; ++i)
    {
      AnimationAtIndex = C3DAnimationGroupGetAnimationAtIndex(a1, i);
      if (C3DAnimationIsGroup(AnimationAtIndex))
      {
        _getAnimations(AnimationAtIndex, a2, a3);
      }

      else
      {
        v10 = CFGetTypeID(AnimationAtIndex);
        if (v10 != C3DKeyframedAnimationGetTypeID())
        {
          v11 = scn_default_log();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
          {
            _getAnimations_cold_1(v13, v14, v11);
          }
        }

        v12 = *a3;
        *(a2 + 8 * *a3) = AnimationAtIndex;
        *a3 = v12 + 1;
      }
    }
  }
}

void _getNextKeyTime(uint64_t a1, double a2, double a3)
{
  v3 = *(a1 + 168);
  v4 = a2 / a3 * *(v3 + 16);
  v5 = v4 + 0.00001;
  v16 = v5;
  v6 = C3DPreviousKeyFrameIndexForTime(*(v3 + 40), *(v3 + 24), &v16);
  if (v6 < *(v3 + 24) - 1)
  {
    v7 = v4;
    if (*(*(v3 + 40) + 4 * (v6 + 1)) < v7)
    {
      v8 = scn_default_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        _getNextKeyTime_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
      }
    }
  }
}

CFTypeRef C3DAnimationClusterCopy(uint64_t a1, uint64_t a2)
{
  if (!a1 && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DAnimationClusterCopy_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v12 = scn_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    C3DAnimationClusterCopy_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  result = *(a1 + 168);
  if (result)
  {
    result = CFRetain(result);
  }

  *(a2 + 168) = result;
  return result;
}

__CFArray *C3DAnimationClusterCopyKeyPaths(uint64_t a1)
{
  v1 = *(a1 + 168);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 20);
  if (!v2)
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(0, *(v1 + 20), MEMORY[0x277CBF128]);
  v5 = 0;
  v6 = 8 * v2;
  do
  {
    v7 = C3DCreatePathFromComponents(*(*(*(a1 + 168) + 72) + v5));
    if (v7)
    {
      v8 = v7;
      CFArrayAppendValue(Mutable, v7);
      CFRelease(v8);
    }

    v5 += 8;
  }

  while (v6 != v5);
  return Mutable;
}

void _C3DAnimationClusterKeyframesCFFinalize(uint64_t a1)
{
  free(*(a1 + 32));
  free(*(a1 + 40));
  free(*(a1 + 48));
  free(*(a1 + 56));
  free(*(a1 + 64));
  v2 = *(a1 + 20);
  if (v2)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*(a1 + 72) + 8 * i);
      if (v4)
      {
        CFRelease(v4);
        *(*(a1 + 72) + 8 * i) = 0;
        v2 = *(a1 + 20);
      }
    }
  }

  v5 = *(a1 + 72);

  free(v5);
}

void _C3DAnimationClusterCFFinalize(void *a1)
{
  _C3DAnimationCFFinalize(a1);
  v2 = a1[21];
  if (v2)
  {
    CFRelease(v2);
    a1[21] = 0;
  }
}

uint64_t _C3DAnimationClusterCopyPropertyList(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      _C3DGeometryFillLibraryForSerialization_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  v16 = C3DAnimationGroupCreateWithAnimationCluster(a1);
  if (!v16)
  {
    return 0;
  }

  v17 = v16;
  v18 = C3DCopyPropertyList(v16, a2, a3, a4);
  CFRelease(v17);
  return v18;
}

double C3DVector3RotateAndScale(uint64_t a1, float32x4_t a2)
{
  _Q5 = *(a1 + 32);
  _S6 = a2.u32[2];
  v4 = COERCE_DOUBLE(vmla_laneq_f32(vmla_n_f32(vmul_lane_f32(*(a1 + 16), *a2.f32, 1), *a1, a2.f32[0]), *&_Q5, a2, 2));
  __asm { FMLA            S0, S6, V5.S[2] }

  return v4;
}

double C3DVector3Rotate(float32x4_t *a1, float32x4_t a2)
{
  _Q4 = a1[2];
  _S5 = a2.u32[2];
  __asm { FMLA            S3, S5, V4.S[2] }

  v10 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(a1[1], *a2.f32, 1), *a1, a2.f32[0]), _Q4, a2, 2);
  v10.i32[2] = _S3;
  v11 = vmulq_f32(v10, v10);
  v12 = v11.f32[2] + vaddv_f32(*v11.f32);
  if (v12 != 0.0)
  {
    v13 = vmulq_f32(a2, a2);
    v14 = sqrtf(v13.f32[2] + vaddv_f32(*v13.f32));
    v15 = sqrtf(v12);
    if (v15 != v14)
    {
      v10.i64[0] = vmulq_n_f32(v10, v14 / v15).u64[0];
    }
  }

  return *v10.i64;
}

double C3DVector3Rescale(float32x4_t a1, float a2)
{
  v2 = vmulq_f32(a1, a1);
  v3 = vaddv_f32(*v2.f32);
  if ((v2.f32[2] + v3) != 0.0)
  {
    v4 = sqrtf(v2.f32[2] + v3);
    if (v4 != a2)
    {
      a1.i64[0] = vmulq_n_f32(a1, a2 / v4).u64[0];
    }
  }

  return *a1.i64;
}

float32x2_t C3DVector3EulerRotate(float32x4_t a1, __n128 a2)
{
  v15 = a2;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  C3DMatrix4x4MakeEulerRotation(&v11, &v15);
  _V3.S[2] = DWORD2(v13);
  _S5 = a1.u32[2];
  result = vmla_laneq_f32(vmla_n_f32(vmul_lane_f32(*&v12, *a1.f32, 1), *v11.f32, a1.f32[0]), *&v13, a1, 2);
  __asm { FMLA            S1, S5, V3.S[2] }

  return result;
}

float C3DVector3Angle(float32x4_t a1, float32x4_t a2)
{
  v2 = vmulq_f32(a1, a1);
  v3 = vmulq_f32(a2, a2);
  *v2.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v2, v2, 8uLL), *&vextq_s8(v3, v3, 8uLL)), vadd_f32(vzip1_s32(*v2.i8, *v3.i8), vzip2_s32(*v2.i8, *v3.i8))));
  v4 = vmul_lane_f32(*v2.i8, *v2.i8, 1).f32[0];
  if (v4 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v5 = vmulq_f32(a1, a2);
    v6 = (v5.f32[2] + vaddv_f32(*v5.f32)) / v4;
    v7 = 0.0;
    if (v6 >= 1.0)
    {
      return v7;
    }

    if (v6 <= -1.0)
    {
      return 3.1416;
    }
  }

  return acosf(v6);
}

double C3DVector3MidVector(float32x4_t a1, float32x4_t a2)
{
  v2 = vaddq_f32(a1, a2);
  v3.i64[0] = 0x3F0000003F000000;
  v3.i64[1] = 0x3F0000003F000000;
  *&result = vmulq_f32(v2, v3).u64[0];
  return result;
}

uint64_t C3DVector3InitWithPropertyList(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 && a2)
  {
    return C3DInitC3DFloatArrayWithPropertyList(a2, a1, a4);
  }

  else
  {
    return 0;
  }
}

uint64_t C3DVector3CopyPropertyList(uint64_t result)
{
  if (result)
  {
    return C3DCreatePropertyListFromC3DFloatBuffer(result, 3);
  }

  return result;
}

int8x16_t C3DVectorGenerateOrthogonalBasis(float32x4_t *a1, int8x16_t *a2, float32x4_t a3)
{
  v3 = vabsq_f32(a3);
  if (v3.f32[0] >= v3.f32[1])
  {
    if (v3.f32[1] < v3.f32[2])
    {
      v4.i32[1] = 0;
      v4.f32[0] = -a3.f32[2];
      v4.i64[1] = a3.u32[0];
      goto LABEL_7;
    }

LABEL_6:
    v4.i64[1] = 0;
    v4.f32[0] = -a3.f32[1];
    v4.i32[1] = a3.i32[0];
    goto LABEL_7;
  }

  if (v3.f32[0] >= v3.f32[2])
  {
    goto LABEL_6;
  }

  v4.i32[0] = 0;
  v4.f32[1] = -a3.f32[2];
  v4.i64[1] = a3.u32[1];
LABEL_7:
  *a1 = v4;
  v5 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v4, v4), v4, 0xCuLL), vnegq_f32(a3)), v4, vextq_s8(vuzp1q_s32(a3, a3), a3, 0xCuLL));
  result = vextq_s8(vuzp1q_s32(v5, v5), v5, 0xCuLL);
  *a2 = result;
  return result;
}

__n128 C3DVector4GetAxisAngleRotationBetweenVectors(float32x4_t a1, int32x4_t a2)
{
  v2 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(a2, a2), a2, 0xCuLL), vnegq_f32(a1)), a2, vextq_s8(vuzp1q_s32(a1, a1), a1, 0xCuLL));
  v3 = vextq_s8(vuzp1q_s32(v2, v2), v2, 0xCuLL);
  v4 = vmulq_f32(v2, v2);
  v5 = sqrtf(v4.f32[1] + (v4.f32[2] + v4.f32[0]));
  if (v5 != 0.0)
  {
    v3 = vmulq_n_f32(v3, 1.0 / v5);
  }

  v7 = v3;
  asin(v5);
  return v7;
}

double C3DVector4MakeAxisAngleFromEuler(float32x4_t a1)
{
  v1 = __sincosf_stret(0.5 * a1.f32[0]);
  v2 = __sincosf_stret(vmuls_lane_f32(0.5, *a1.f32, 1));
  v3 = __sincosf_stret(vmuls_lane_f32(0.5, a1, 2));
  v4.f32[0] = (v3.__cosval * (v1.__sinval * v2.__sinval)) + ((v1.__cosval * v2.__cosval) * v3.__sinval);
  v4.f32[1] = (v3.__sinval * (v1.__cosval * v2.__sinval)) + ((v1.__sinval * v2.__cosval) * v3.__cosval);
  v4.f32[2] = ((v1.__cosval * v2.__sinval) * v3.__cosval) - ((v1.__sinval * v2.__cosval) * v3.__sinval);
  v11 = v4;
  acosf(((v1.__cosval * v2.__cosval) * v3.__cosval) - ((v1.__sinval * v2.__sinval) * v3.__sinval));
  v5 = vmulq_f32(v11, v11);
  *&v6 = v5.f32[2] + vaddv_f32(*v5.f32);
  v7 = vrsqrte_f32(v6);
  v8 = vmul_f32(v7, vrsqrts_f32(v6, vmul_f32(v7, v7)));
  *&result = vmulq_n_f32(v11, vmul_f32(v8, vrsqrts_f32(v6, vmul_f32(v8, v8))).f32[0]).u64[0];
  return result;
}

void C3DVector3MakeEulerFromAxisAngle(float32x4_t a1)
{
  v1 = a1.f32[3];
  v2 = __sincosf_stret(a1.f32[3]);
  v3 = 1.0 - v2.__cosval;
  v4 = vmulq_f32(a1, a1);
  v4.f32[0] = v4.f32[2] + vaddv_f32(*v4.f32);
  v5 = vdupq_lane_s32(*v4.f32, 0);
  v6 = vrsqrteq_f32(v5);
  v7 = vmulq_f32(v6, vrsqrtsq_f32(v5, vmulq_f32(v6, v6)));
  v8 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v4.f32[0] != 0.0)), 0x1FuLL));
  v8.i32[3] = 0;
  v9 = vbslq_s8(vcltzq_s32(v8), vmulq_f32(vmulq_f32(v7, vrsqrtsq_f32(v5, vmulq_f32(v7, v7))), a1), a1);
  v10 = vmuls_lane_f32(v2.__sinval, v9, 2) + (vmuls_lane_f32(v9.f32[0], *v9.f32, 1) * (1.0 - v2.__cosval));
  v16 = v9.f32[0];
  if (v10 <= 0.998)
  {
    if (v10 >= -0.998)
    {
      v13 = v9.f32[1];
      v14 = v9.f32[2];
      atan2f((v3 * -(v9.f32[0] * v9.f32[2])) + (v9.f32[1] * v2.__sinval), 1.0 - (((v14 * v14) + (v13 * v13)) * v3));
      asinf(v10);
      atan2f((v3 * -(v13 * v14)) + (v16 * v2.__sinval), 1.0 - (((v14 * v14) + (v16 * v16)) * v3));
    }

    else
    {
      v12 = __sincosf_stret(v1 * 0.5);
      atan2f(v12.__sinval * v16, v12.__cosval);
    }
  }

  else
  {
    v11 = __sincosf_stret(v1 * 0.5);
    atan2f(v11.__sinval * v16, v11.__cosval);
  }
}

void *_mm_realloc(void *a1, size_t a2, size_t size, unint64_t a4)
{
  if (a4 == 1)
  {
    v6 = malloc_type_malloc(size, 0xD0326394uLL);
    if (!a2)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v7 = 8;
  if (a4 > 8)
  {
    v7 = a4;
  }

  if ((a4 & (a4 - 1)) != 0)
  {
    v8 = a4;
  }

  else
  {
    v8 = v7;
  }

  memptr = 0;
  if (malloc_type_posix_memalign(&memptr, v8, size, 0xF60F032AuLL))
  {
    v6 = 0;
  }

  else
  {
    v6 = memptr;
  }

  if (a2)
  {
LABEL_13:
    memcpy(v6, a1, a2);
  }

LABEL_14:
  free(a1);
  return v6;
}

double C3DCullingSystemQueryMake@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = a1;
  *a2 = xmmword_21C27FE00;
  *&result = 255;
  *(a2 + 16) = 255;
  *(a2 + 24) = 255;
  *(a2 + 28) = 0;
  return result;
}

uint64_t ___Z25C3DCullingSystemGetTypeIDv_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DCullingSystemGetTypeID(void)::typeID = result;
  return result;
}

void C3DCullingSystemCreate(__C3DTransformTree *a1)
{
  if (C3DCullingSystemGetTypeID(void)::onceToken != -1)
  {
    C3DCullingSystemCreate_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DCullingSystemGetTypeID(void)::typeID, 184);

  __C3DCullingSystem::__C3DCullingSystem(Instance, a1);
}

uint64_t C3DCullingSystemAdd(__C3DCullingSystem *a1, __C3DNode *a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCullingSystemAdd_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  return __C3DCullingSystem::add(a1, a2);
}

uint64_t __C3DCullingSystem::add(__C3DCullingSystem *this, __C3DNode *a2)
{
  v5 = *(this + 4);
  v4 = *(this + 5);
  if (v5 >= v4)
  {
    __C3DCullingSystem::_allocateData(this, 2 * v4);
    v5 = *(this + 4);
  }

  *(this + 4) = v5 + 1;
  v6 = __C3DCullingSystem::_newHandle(this, v5);
  C3DNodeGetLocalBoundingBox(a2, v10);
  v7 = v10[1];
  v8 = (*(this + 8) + 32 * v5);
  *v8 = v10[0];
  v8[1] = v7;
  *(*(this + 13) + 8 * v5) = a2;
  __C3DCullingSystem::_updateNodeMasksAtIndex(this, v5);
  __C3DCullingSystem::_updateWorldAABBAtIndex(this, v5);
  return v6;
}

void C3DCullingSystemUpdateBoundingBox(void *a1, unsigned int a2, _OWORD *a3)
{
  if (!a1 && (v6 = scn_default_log(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    C3DCullingSystemAdd_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    if ((a2 & 0x80000000) != 0)
    {
      goto LABEL_10;
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    goto LABEL_10;
  }

  v14 = a1[4];
  if (a2 < ((a1[5] - v14) >> 2))
  {
    v15 = *(v14 + 4 * a2);
    v16 = a3[1];
    v17 = (a1[8] + 32 * v15);
    *v17 = *a3;
    v17[1] = v16;
    if ((*(a1[11] + 2 * v15) & 0x10) != 0)
    {
      v23 = xmmword_21C27FE10;
      v21 = *(MEMORY[0x277D860B8] + 48);
    }

    else
    {
      v25 = *a3;
      v26 = *(a3 + 1);
      WorldMatrix = C3DNodeGetWorldMatrix(*(a1[13] + 8 * v15));
      v19 = WorldMatrix[1];
      v20 = WorldMatrix[2];
      v21 = vaddq_f32(WorldMatrix[3], vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v19, *v25.f32, 1), *WorldMatrix, v25.f32[0]), v20, v25, 2));
      v21.n128_u32[3] = 1.0;
      v22 = v26;
      v22.i32[1] = v26.i32[0];
      v22.i32[2] = v26.i32[0];
      v23 = vaddq_f32(vaddq_f32(vabsq_f32(vmulq_f32(v22, *WorldMatrix)), vabsq_f32(vmulq_f32(vuzp2q_s32(vdupq_lane_s32(*v26.i8, 1), v26), v19))), vabsq_f32(vmulq_f32(vzip2q_s32(vtrn1q_s32(v26, v26), v26), v20)));
    }

    __C3DCullingSystem::_setWorldAABBAtIndex(a1, v15, v21, v23);
    return;
  }

LABEL_10:
  v24 = scn_default_log();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    C3DCullingSystemUpdateBoundingBox_cold_2(a2, v24);
  }
}

uint64_t __C3DCullingSystem::_setWorldAABBAtIndex(uint64_t result, unsigned int a2, __n128 a3, __n128 a4)
{
  v4 = *(result + 24);
  v5 = *(result + 96);
  if (v4 == 4)
  {
    v6 = v5 + 96 * (a2 >> 2);
    *(v6 + 4 * (a2 & 3)) = a3.n128_u32[0];
    *(v6 + 4 * (a2 & 3 | 4)) = a3.n128_u32[1];
    *(v6 + 4 * (a2 & 3 | 8)) = a3.n128_u32[2];
    *(v6 + 4 * (a2 & 3 | 0xC)) = a4.n128_u32[0];
    *(v6 + 4 * (a2 & 3 | 0x10)) = a4.n128_u32[1];
    v7 = a2 & 3 | 0x14;
    goto LABEL_5;
  }

  if (v4 == 8)
  {
    v6 = v5 + 192 * (a2 >> 3);
    *(v6 + 4 * (a2 & 7)) = a3.n128_u32[0];
    *(v6 + 4 * (a2 & 7 | 8)) = a3.n128_u32[1];
    *(v6 + 4 * (a2 & 7 | 0x10)) = a3.n128_u32[2];
    *(v6 + 4 * (a2 & 7 | 0x18)) = a4.n128_u32[0];
    *(v6 + 4 * (a2 & 7 | 0x20)) = a4.n128_u32[1];
    v7 = a2 & 7 | 0x28;
LABEL_5:
    *(v6 + 4 * v7) = a4.n128_u32[2];
    return result;
  }

  v8 = (v5 + 32 * a2);
  *v8 = a3;
  v8[1] = a4;
  return result;
}

void C3DCullingSystemUpdateWorldTransforms(uint64_t a1, int *a2, float32x4_t *a3, int a4)
{
  LODWORD(v4) = a4;
  if (!a1 && (v8 = scn_default_log(), os_log_type_enabled(v8, OS_LOG_TYPE_FAULT)))
  {
    C3DCullingSystemAdd_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    if (!v4)
    {
      return;
    }
  }

  else if (!v4)
  {
    return;
  }

  v4 = v4;
  v16 = a3 + 2;
  v17 = MEMORY[0x277D860B8];
  do
  {
    v19 = *a2++;
    v18 = v19;
    if (v19 != -1)
    {
      v20 = *(*(a1 + 32) + 4 * v18);
      if (v20 < *(a1 + 16))
      {
        if ((*(*(a1 + 88) + 2 * v20) & 0x10) != 0)
        {
          v24 = v17[3];
          v26 = xmmword_21C27FE10;
        }

        else
        {
          v21 = (*(a1 + 64) + 32 * v20);
          v22 = v16[-2];
          v23 = v16[-1];
          v24 = vaddq_f32(v16[1], vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v23, *v21->f32, 1), v22, COERCE_FLOAT(*v21)), *v16, *v21, 2));
          v24.n128_u32[3] = 1.0;
          v25 = v21[1];
          v25.i32[1] = v25.i32[0];
          v25.i32[2] = v21[1];
          v26 = vaddq_f32(vaddq_f32(vabsq_f32(vmulq_f32(v22, v25)), vabsq_f32(vmulq_f32(vuzp2q_s32(vdupq_lane_s32(*v21[1].f32, 1), v21[1]), v23))), vabsq_f32(vmulq_f32(vzip2q_s32(vtrn1q_s32(v21[1], v21[1]), v21[1]), *v16)));
        }

        __C3DCullingSystem::_setWorldAABBAtIndex(a1, v20, v24, v26);
      }
    }

    v16 += 4;
    --v4;
  }

  while (v4);
}

uint64_t C3DCullingSystemUpdateFlags(uint64_t a1, unsigned int a2)
{
  if (!a1 && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DCullingSystemAdd_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    if ((a2 & 0x80000000) == 0)
    {
LABEL_4:
      if (a2 < ((*(a1 + 40) - *(a1 + 32)) >> 2))
      {
        return __C3DCullingSystem::_updateNodeMasksAtIndex(a1, *(*(a1 + 32) + 4 * a2));
      }
    }
  }

  else if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  v12 = scn_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    C3DCullingSystemUpdateFlags_cold_2();
  }

  return __C3DCullingSystem::_updateNodeMasksAtIndex(a1, *(*(a1 + 32) + 4 * a2));
}

uint64_t __C3DCullingSystem::_updateNodeMasksAtIndex(uint64_t this, unsigned int a2)
{
  if (*(this + 16) > a2)
  {
    v3 = this;
    v4 = *(this + 104);
    v5 = *(v4 + 8 * a2);
    if (v5)
    {
      CategoryBitMask = C3DNodeGetCategoryBitMask(*(v4 + 8 * a2));
      v7 = v3[10];
      *(v3[9] + 4 * a2) = CategoryBitMask;
      *(v7 + 4 * a2) = HIDWORD(CategoryBitMask);
      C3DNodeIsHiddenOrTransparentOrIsHiddenOrTransparentByAncestor(v5);
      v9 = v8;
      if (C3DNodeGetMovability(v5))
      {
        v10 = 4;
      }

      else
      {
        v10 = 2;
      }

      v11 = v10 | v9;
      if (C3DNodeGetCastsShadow(v5))
      {
        v11 |= 8u;
      }

      if (C3DNodeIsLighted(v5))
      {
        v11 |= 0x20u;
      }

      if ((C3DNodeIsAlwaysRendered(v5) & 1) != 0 || (*(v5 + 221) & 0x20) != 0)
      {
        v11 |= 0x10u;
      }

      this = C3DNodeGetLayerIndex(v5);
      *(v3[11] + 2 * a2) = (256 << this) | v11;
    }
  }

  return this;
}

double C3DCullingSystemRemove(__C3DCullingSystem *this, unsigned int a2)
{
  if (!this)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCullingSystemAdd_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *&result = __C3DCullingSystem::remove(this, a2).n128_u64[0];
  return result;
}

__n128 __C3DCullingSystem::remove(__C3DCullingSystem *this, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0 || a2 >= ((*(this + 5) - *(this + 4)) >> 2))
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __C3DCullingSystem::remove();
    }
  }

  v5 = *(*(this + 4) + 4 * a2);
  if (v5 >= *(this + 4))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      __C3DCullingSystem::remove(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = *(this + 4);
  v15 = (v14 - 1);
  *(this + 4) = v15;
  if (v5 == v15)
  {
    v16 = 1 << ((v14 - 1) & 7);
    v17 = v15 >> 3;
  }

  else
  {
    WorldAABBAtIndex = __C3DCullingSystem::_getWorldAABBAtIndex(this, v14 - 1);
    __C3DCullingSystem::_setWorldAABBAtIndex(this, v5, WorldAABBAtIndex, v19);
    v20 = *(this + 8);
    v21 = (v20 + 32 * v15);
    v22 = v21[1];
    v23 = (v20 + 32 * v5);
    *v23 = *v21;
    v23[1] = v22;
    *(*(this + 13) + 8 * v5) = *(*(this + 13) + 8 * v15);
    v24 = *(this + 10);
    *(*(this + 9) + 4 * v5) = *(*(this + 9) + 4 * v15);
    *(v24 + 4 * v5) = *(v24 + 4 * v15);
    *(*(this + 11) + 2 * v5) = *(*(this + 11) + 2 * v15);
    v16 = 1 << (v15 & 7);
    v25 = *(this + 14);
    v17 = v15 >> 3;
    LODWORD(v24) = 1 << (v5 & 7);
    v26 = *(v25 + (v5 >> 3));
    v27 = v26 & ~v24;
    v28 = v26 | v24;
    if ((v16 & *(v25 + (v15 >> 3))) == 0)
    {
      v28 = v27;
    }

    *(v25 + (v5 >> 3)) = v28;
    *(*(this + 4) + 4 * *(*(*(this + 13) + 8 * v15) + 216)) = v5;
  }

  v29 = MEMORY[0x277D860B8];
  __C3DCullingSystem::_setWorldAABBAtIndex(this, v15, *(MEMORY[0x277D860B8] + 48), xmmword_21C27F650);
  v30 = (*(this + 8) + 32 * v15);
  result = xmmword_21C27F650;
  *v30 = *(v29 + 48);
  v30[1] = xmmword_21C27F650;
  *(*(this + 13) + 8 * v15) = 0;
  v32 = *(this + 10);
  *(*(this + 9) + 4 * v15) = 0;
  *(v32 + 4 * v15) = 0;
  *(*(this + 11) + 2 * v15) = 0;
  *(*(this + 14) + v17) &= ~v16;
  *(*(this + 4) + 4 * a2) = *(this + 14);
  *(this + 14) = a2;
  return result;
}

void C3DCullingSystemCull(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  v6 = v1;
  v43 = *MEMORY[0x277D85DE8];
  if (!v1)
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      C3DCullingSystemAdd_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  v15 = *(v6 + 88);
  v29 = *(v6 + 96);
  v30 = v15;
  v31 = *(v6 + 72);
  v32 = *(v6 + 64);
  v33 = *(v6 + 104);
  if (v3)
  {
    v16 = *v3;
    v17 = *(v3 + 16);
    v18 = *(v3 + 24);
    v19 = *(v3 + 28);
    LOWORD(v27[0]) = *(v3 + 29);
    BYTE2(v27[0]) = *(v3 + 31);
    v20 = *(v3 + 32);
  }

  else
  {
    v20 = 0;
    v19 = 0;
    v16 = xmmword_21C27FE00;
    v17 = 255;
    v18 = 255;
  }

  v21 = 0;
  v34 = v16;
  v35 = v17;
  v36 = v18;
  v37 = v19;
  v38 = v27[0];
  v39 = BYTE2(v27[0]);
  v40 = v20;
  v42 = 1;
  do
  {
    *&v28[v21] = vnegq_f32(*(v5 + v21));
    v21 += 16;
  }

  while (v21 != 96);
  v22 = *(v6 + 16) + 2047;
  memset(v27, 0, 512);
  v41 = v27;
  if (v22 >= 0x800)
  {
    v23 = 0;
    v24 = v22 >> 11;
    do
    {
      v25 = v23 + 2048;
      v26 = (*(v6 + 176))(v28);
      if (v26)
      {
        (*(v40 + 16))(v40, v41, v26);
      }

      v23 = v25;
      --v24;
    }

    while (v24);
  }
}

void C3DCullingSystemRayIntersect(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v6 = v5;
  v7 = v1;
  v51 = *MEMORY[0x277D85DE8];
  if (!v1)
  {
    v30 = v3;
    v31 = v4;
    v29 = v2;
    v8 = scn_default_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_FAULT);
    v2 = v29;
    v3 = v30;
    v4 = v31;
    if (v9)
    {
      C3DCullingSystemAdd_cold_1(v8, v10, v11, v12, v13, v14, v15, v16);
      v2 = v29;
      v3 = v30;
      v4 = v31;
    }
  }

  v17 = *(v7 + 88);
  v33 = *(v7 + 96);
  v18 = *(v7 + 16) + 2047;
  memset(v50, 0, 512);
  v34 = v17;
  v35 = *(v7 + 72);
  v36 = *(v7 + 64);
  v37 = *(v7 + 104);
  if (v6)
  {
    v19 = *v6;
    v20 = *(v6 + 16);
    v21 = *(v6 + 24);
    v22 = *(v6 + 28);
    v48 = *(v6 + 29);
    v49 = *(v6 + 31);
    v23 = *(v6 + 32);
  }

  else
  {
    v23 = 0;
    v22 = 0;
    v19 = xmmword_21C27FE00;
    v20 = 255;
    v21 = 255;
  }

  v39 = v20;
  v40 = v21;
  v41 = v22;
  v42 = v48;
  v43 = v49;
  v44 = v23;
  v47 = 1;
  v45 = v50;
  v46 = &v48;
  v32[0] = v2;
  v32[1] = v3;
  v38 = v19;
  v32[2] = v4;
  if (v18 >= 0x800)
  {
    v24 = 0;
    v25 = v18 >> 11;
    do
    {
      v26 = (v24 + 2048);
      v27 = *(v7 + 16);
      if (v26 >= v27)
      {
        v28 = v27;
      }

      else
      {
        v28 = v26;
      }

      __C3DCullingSystem::__rayIntersectRange(v7, v32, v24, v28);
      v24 = v26;
      --v25;
    }

    while (v25);
  }
}

uint64_t __C3DCullingSystem::__rayIntersectRange(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52[1] = *MEMORY[0x277D85DE8];
  v6 = 160;
  if (*(a2 + 844))
  {
    v6 = 168;
  }

  result = (*(a1 + v6))(a2, a3, a4);
  if (result)
  {
    v9 = result;
    if (*(a2 + 844) == 1)
    {
      MEMORY[0x28223BE20](result);
      v10 = (&v50 - v9);
      v11 = 0;
      v12 = &v10->n128_u32[2];
      do
      {
        v13 = *(*(a2 + 864) + 4 * v11);
        v14 = *(*(a1 + 104) + 8 * v13);
        v15 = *(a1 + 64) + 32 * v13;
        v16 = *(v15 + 16);
        v50 = *v15;
        v51 = v16;
        WorldMatrix = C3DNodeGetWorldMatrix(v14);
        v18 = *WorldMatrix;
        v19 = WorldMatrix[1];
        v20 = WorldMatrix[2];
        v21 = vaddq_f32(WorldMatrix[3], vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v19, *v50.f32, 1), *WorldMatrix, v50.f32[0]), v20, v50, 2));
        v22 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v20, v20), v20, 0xCuLL), vnegq_f32(v19)), v20, vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL));
        v23 = vmulq_f32(*WorldMatrix, vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL));
        if ((v23.f32[2] + vaddv_f32(*v23.f32)) >= 0.0)
        {
          v24 = 1.0;
        }

        else
        {
          v24 = -1.0;
        }

        v25 = vmulq_f32(v18, v18);
        v26 = vmulq_f32(v19, v19);
        v27 = vadd_f32(vzip1_s32(*v25.i8, *v26.i8), vzip2_s32(*v25.i8, *v26.i8));
        v28 = vextq_s8(v25, v25, 8uLL);
        *v28.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v28.f32, *&vextq_s8(v26, v26, 8uLL)), v27));
        v29 = vmulq_f32(v20, v20);
        v28.i32[2] = sqrtf(v29.f32[2] + vaddv_f32(*v29.f32));
        v30 = vmulq_n_f32(v28, v24);
        v31 = vdivq_f32(v18, vdupq_lane_s32(*v30.f32, 0));
        v32 = vdivq_f32(v19, vdupq_lane_s32(*v30.f32, 1));
        v33 = vdivq_f32(v20, vdupq_laneq_s32(v30, 2));
        v34 = vmulq_f32(v51, v30);
        v35 = vsubq_f32(v21, *a2);
        v36 = vzip2q_s32(v31, v33);
        v37 = vzip1q_s32(vzip1q_s32(v31, v33), v32);
        v38 = vtrn2q_s32(v31, v32);
        v38.i32[2] = v33.i32[1];
        v39 = vzip1q_s32(v36, vdupq_laneq_s32(v32, 2));
        v40 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v38, *v35.f32, 1), v37, v35.f32[0]), v39, v35, 2);
        v41 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v38, *(a2 + 16), 1), v37, COERCE_FLOAT(*(a2 + 16))), v39, *(a2 + 16), 2);
        v42 = vdivq_f32(vaddq_f32(v34, v40), v41);
        v43 = vdivq_f32(vsubq_f32(v40, v34), v41);
        v42.i32[3] = 0;
        v43.i32[3] = 0;
        v44 = vminnmq_f32(v42, v43);
        v46 = vmaxnmq_f32(v42, v43);
        v42.i64[0] = vextq_s8(v44, v44, 8uLL).u64[0];
        v34.i64[0] = vextq_s8(v46, v46, 8uLL).u64[0];
        *v42.f32 = vbsl_s8(vcge_f32(vzip1_s32(*v34.f32, *v44.i8), vzip1_s32(v46.n128_u64[0], *v42.f32)), vzip1_s32(v46.n128_u64[0], *v44.i8), vzip1_s32(*v34.f32, *v42.f32));
        v34.i32[0] = vdup_lane_s32(v46.n128_u64[0], 1).u32[0];
        v34.i32[1] = v42.i32[1];
        v45 = vbsl_s8(vcge_f32(*v34.f32, __PAIR64__(v44.u32[1], v42.u32[0])), *v42.f32, vzip2_s32(v46.n128_u64[0], *v44.i8));
        v46.n128_u64[0] = 0;
        if (*v45.i32 >= *&v45.i32[1] && *v45.i32 >= 0.0 && *&v45.i32[1] < *(a2 + 44))
        {
          if (*&v45.i32[1] >= 0.0)
          {
            v46.n128_f32[0] = *&v45.i32[1];
          }

          else
          {
            v46.n128_f32[0] = *v45.i32;
          }
        }

        *(v12 - 1) = v14;
        *v12 = v46.n128_u32[0];
        v12 += 4;
        ++v11;
      }

      while (v9 != v11);
      v52[0] = HitResultCmp;
      v8 = std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(HitResult const&,HitResult const&),HitResult*,false>(&v50 - v9, &v50, v52, 126 - 2 * __clz(v9), 1, v46);
      v48 = 0;
      do
      {
        v49 = v10->n128_u64[0];
        ++v10;
        *(*(a2 + 856) + v48) = v49;
        v48 += 8;
      }

      while (8 * v9 != v48);
    }

    return (*(*(a2 + 848) + 16))(v8);
  }

  return result;
}

void C3DCullingSystemAABBIntersect(uint64_t a1)
{
  *&v1 = MEMORY[0x28223BE20](a1);
  v4 = v3;
  v6 = v5;
  v47 = *MEMORY[0x277D85DE8];
  if (!v5)
  {
    v27 = v1;
    v28 = v2;
    v7 = scn_default_log();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_FAULT);
    v1 = v27;
    v2 = v28;
    if (v8)
    {
      C3DCullingSystemAdd_cold_1(v7, v9, v10, v11, v12, v13, v14, v15);
      v1 = v27;
      v2 = v28;
    }
  }

  v16 = *(v6 + 88);
  v32 = *(v6 + 96);
  v17 = *(v6 + 16) + 2047;
  memset(v46, 0, 512);
  v33 = v16;
  v34 = *(v6 + 72);
  v35 = *(v6 + 64);
  v36 = *(v6 + 104);
  if (v4)
  {
    v18 = *v4;
    v19 = *(v4 + 16);
    v20 = *(v4 + 24);
    v21 = *(v4 + 28);
    v29 = *(v4 + 29);
    v30 = *(v4 + 31);
    v22 = *(v4 + 32);
  }

  else
  {
    v22 = 0;
    v21 = 0;
    v18 = xmmword_21C27FE00;
    v19 = 255;
    v20 = 255;
  }

  v37 = v18;
  v38 = v19;
  v39 = v20;
  v40 = v21;
  v41 = v29;
  v42 = v30;
  v43 = v22;
  v45 = 1;
  v31[0] = v1;
  v31[1] = v2;
  v44 = v46;
  if (v17 >= 0x800)
  {
    v23 = 0;
    v24 = v17 >> 11;
    do
    {
      v25 = v23 + 2048;
      v26 = (*(v6 + 152))(v31);
      if (v26)
      {
        (*(v43 + 16))(v43, v44, v26);
      }

      v23 = v25;
      --v24;
    }

    while (v24);
  }
}

__n128 __C3DCullingSystem::_getWorldAABBAtIndex(__C3DCullingSystem *this, unsigned int a2)
{
  v2 = *(this + 6);
  v3 = *(this + 12);
  if (v2 == 4)
  {
    v10 = (v3 + 96 * (a2 >> 2) + 4 * (a2 & 3));
    __asm { FMOV            V0.4S, #1.0 }

    result.n128_u32[0] = *v10;
    result.n128_u32[1] = v10[4];
  }

  else if (v2 == 8)
  {
    v4 = (v3 + 192 * (a2 >> 3) + 4 * (a2 & 7));
    __asm { FMOV            V0.4S, #1.0 }

    result.n128_u32[0] = *v4;
    result.n128_u32[1] = v4[8];
  }

  else
  {
    return *(v3 + 32 * a2);
  }

  return result;
}

__n128 C3DCullingSystemComputeHierarchicalAABB(uint64_t a1, float32x4_t *a2, int a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v20 = 0;
  v21 = &v20;
  v22 = 0x5002000000;
  v23 = __Block_byref_object_copy__1;
  v24 = __Block_byref_object_dispose__1;
  v25 = *(MEMORY[0x277D860B8] + 48);
  v26 = xmmword_21C27F650;
  if (a3)
  {
    WorldMatrix = C3DNodeGetWorldMatrix(a2);
    v28.columns[0] = *WorldMatrix;
    v28.columns[1] = WorldMatrix[1];
    v28.columns[2] = WorldMatrix[2];
    v28.columns[3] = WorldMatrix[3];
    v29 = __invert_f4(v28);
    v6 = a2[13].i32[2];
    if (v6 != -1)
    {
      v7 = (*(a1 + 64) + 32 * *(*(a1 + 32) + 4 * v6));
      v8 = *v7;
      v9 = v7[1];
      v10 = v21;
      *(v21 + 3) = v8;
      *(v10 + 4) = v9;
    }

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 0x40000000;
    v15[2] = __C3DCullingSystemComputeHierarchicalAABB_block_invoke;
    v15[3] = &unk_2782FC460;
    v18 = a2;
    v19 = a1;
    v16 = v29;
    v17 = &v20;
    v11 = v15;
  }

  else
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 0x40000000;
    v14[2] = __C3DCullingSystemComputeHierarchicalAABB_block_invoke_2;
    v14[3] = &unk_2782FC488;
    v14[4] = &v20;
    v14[5] = a1;
    v11 = v14;
  }

  C3DNodeApplyHierarchy(a2, v11);
  v13 = *(v21 + 3);
  _Block_object_dispose(&v20, 8);
  return v13;
}

uint64_t __C3DCullingSystemComputeHierarchicalAABB_block_invoke(float32x4_t *a1, uint64_t a2)
{
  if (a1[6].i64[1] != a2)
  {
    v2 = *(a2 + 216);
    if (v2 != -1)
    {
      WorldAABBAtIndex = __C3DCullingSystem::_getWorldAABBAtIndex(a1[7].i64[0], *(*(a1[7].i64[0] + 32) + 4 * v2));
      v5 = a1[2];
      v6 = a1[3];
      v7 = a1[4];
      v8 = vaddq_f32(a1[5], vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v6, WorldAABBAtIndex.n128_u64[0], 1), v5, WorldAABBAtIndex.n128_f32[0]), v7, WorldAABBAtIndex, 2));
      v10 = v9;
      v10.i32[1] = v9.i32[0];
      v10.i32[2] = v9.i32[0];
      v11 = vaddq_f32(vaddq_f32(vabsq_f32(vmulq_f32(v5, v10)), vabsq_f32(vmulq_f32(v6, vuzp2q_s32(vdupq_lane_s32(*v9.i8, 1), v9)))), vabsq_f32(vmulq_f32(vzip2q_s32(vtrn1q_s32(v9, v9), v9), v7)));
      v12 = *(a1[6].i64[0] + 8);
      v13 = vsubq_f32(v8, v11);
      v13.i32[3] = 0;
      v14 = v12[3];
      v15 = v12[4];
      v16 = vsubq_f32(v14, v15);
      v16.i32[3] = 0;
      v17 = vminnmq_f32(v13, v16);
      v18 = vaddq_f32(v8, v11);
      v18.i32[3] = 0;
      v19 = vaddq_f32(v14, v15);
      v19.i32[3] = 0;
      v20 = vmaxnmq_f32(v18, v19);
      v14.i64[0] = 0x3F0000003F000000;
      v14.i64[1] = 0x3F0000003F000000;
      v21 = vmulq_f32(vaddq_f32(v17, v20), v14);
      v22 = vmulq_f32(vsubq_f32(v20, v17), v14);
      v21.i32[3] = 1.0;
      v22.i32[3] = 0;
      v12[3] = v21;
      v12[4] = v22;
    }
  }

  return 0;
}

uint64_t __C3DCullingSystemComputeHierarchicalAABB_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 216);
  if (v2 != -1)
  {
    WorldAABBAtIndex = __C3DCullingSystem::_getWorldAABBAtIndex(*(a1 + 40), *(*(*(a1 + 40) + 32) + 4 * v2));
    v5 = *(*(a1 + 32) + 8);
    v7 = vsubq_f32(WorldAABBAtIndex, v6);
    v7.i32[3] = 0;
    v8 = v5[3];
    v9 = v5[4];
    v10 = vsubq_f32(v8, v9);
    v10.i32[3] = 0;
    v11 = vminnmq_f32(v7, v10);
    v12 = vaddq_f32(WorldAABBAtIndex, v6);
    v12.i32[3] = 0;
    v13 = vaddq_f32(v8, v9);
    v13.i32[3] = 0;
    v14 = vmaxnmq_f32(v12, v13);
    v8.i64[0] = 0x3F0000003F000000;
    v8.i64[1] = 0x3F0000003F000000;
    v15 = vmulq_f32(vaddq_f32(v11, v14), v8);
    v16 = vmulq_f32(vsubq_f32(v14, v11), v8);
    v15.i32[3] = 1.0;
    v16.i32[3] = 0;
    v5[3] = v15;
    v5[4] = v16;
  }

  return 0;
}

uint64_t C3DCullingSystemGetSceneBoundingBox(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 88);
  v12 = *(a1 + 96);
  v13 = v2;
  v14 = *(a1 + 72);
  v15 = *(a1 + 64);
  v16 = *(a1 + 104);
  if (a2)
  {
    v3 = *a2;
    v4 = *(a2 + 16);
    v5 = *(a2 + 24);
    v6 = *(a2 + 28);
    v9 = *(a2 + 29);
    v10 = *(a2 + 31);
    v7 = *(a2 + 32);
  }

  else
  {
    v7 = 0;
    v6 = 0;
    v3 = xmmword_21C27FE00;
    v4 = 255;
    v5 = 255;
  }

  v17 = v3;
  v18 = v4;
  v19 = v5;
  v20 = v6;
  v21 = v9;
  v22 = v10;
  v23 = v7;
  v24 = 1;
  return (*(a1 + 144))(v11, 0, *(a1 + 16));
}

uint64_t C3DCullingSystem_AABBRange_x8(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if ((a2 & 7) != 0)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DCullingSystem_AABBRange_x8(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = a2 >> 3;
  if (v14 >= (a3 + 7) >> 3)
  {
    return 0;
  }

  result = 0;
  v16 = *(a1 + 776);
  v17 = vdupq_n_s32(*(a1 + 836) | (~*(a1 + 840) << 8));
  v18 = (a1 + 816);
  v19 = *(a1 + 784);
  v20 = (a1 + 820);
  v21 = vld1q_dup_f32(v18);
  v22 = *(a1 + 792);
  v23 = vld1q_dup_f32(v20);
  v24 = *(a1 + 16);
  v25 = vdupq_lane_s32(*a1, 0);
  v26 = vdupq_lane_s32(*a1, 1);
  v27 = vdupq_laneq_s32(*a1, 2);
  v28 = vdupq_lane_s32(*v24.i8, 0);
  v29 = vdupq_lane_s32(*v24.i8, 1);
  v30 = vdupq_laneq_s32(v24, 2);
  v31 = a2 & 0xFFFFFFF8;
  v32 = *(a1 + 768);
  do
  {
    v33 = (v32 + 192 * v14);
    v34 = vmovn_s16(vandq_s8(vandq_s8(vbicq_s8(vuzp1q_s16(vceqzq_s32(vandq_s8(v17, vmovl_u16(*(v16 + 16 * v14)))), vceqzq_s32(vandq_s8(v17, vmovl_high_u16(*(v16 + 16 * v14))))), vuzp1q_s16(vceqzq_s32(vorrq_s8(vandq_s8(*(v22 + 32 * v14), v23), vandq_s8(*(v19 + 32 * v14), v21))), vceqzq_s32(vorrq_s8(vandq_s8(*(v22 + 32 * v14 + 16), v23), vandq_s8(*(v19 + 32 * v14 + 16), v21))))), vuzp1q_s16(vcgeq_f32(vaddq_f32(v28, v33[6]), vabdq_f32(v25, *v33)), vcgeq_f32(vaddq_f32(v28, v33[7]), vabdq_f32(v25, v33[1])))), vandq_s8(vuzp1q_s16(vcgeq_f32(vaddq_f32(v29, v33[8]), vabdq_f32(v26, v33[2])), vcgeq_f32(vaddq_f32(v29, v33[9]), vabdq_f32(v26, v33[3]))), vuzp1q_s16(vcgeq_f32(vaddq_f32(v30, v33[10]), vabdq_f32(v27, v33[4])), vcgeq_f32(vaddq_f32(v30, v33[11]), vabdq_f32(v27, v33[5]))))));
    v35 = vaddvq_s32(vorrq_s8(vandq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v34, *v17.i8)), 0x1FuLL)), xmmword_21C27FE30), vandq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v34, *v17.i8)), 0x1FuLL)), xmmword_21C27FE20)));
    if (v35)
    {
      v36 = 8 * v14 >= a3;
    }

    else
    {
      v36 = 1;
    }

    if (!v36)
    {
      v37 = v31;
      do
      {
        if (v35)
        {
          *(*(a1 + 856) + 8 * result) = *(*(a1 + 808) + 8 * v37);
          result = (result + 1);
        }

        if (v35 < 2)
        {
          break;
        }

        ++v37;
        v35 >>= 1;
      }

      while (v37 < a3);
    }

    ++v14;
    v31 += 8;
  }

  while (v14 != (a3 + 7) >> 3);
  return result;
}

uint64_t C3DCullingSystem_AABBRange_x4(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if ((a2 & 3) != 0)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DCullingSystem_AABBRange_x8(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = a2 >> 2;
  if (v14 >= (a3 + 3) >> 2)
  {
    return 0;
  }

  result = 0;
  v16 = *(a1 + 776);
  v17 = (a1 + 816);
  v18 = vdupq_n_s32(*(a1 + 836) | (~*(a1 + 840) << 8));
  v19 = *(a1 + 784);
  v20 = vld1q_dup_f32(v17);
  v21 = (a1 + 820);
  v22 = *(a1 + 792);
  v23 = vld1q_dup_f32(v21);
  v24 = *(a1 + 16);
  v25 = vdupq_lane_s32(*a1, 0);
  v26 = vdupq_lane_s32(*a1, 1);
  v27 = vdupq_laneq_s32(*a1, 2);
  v28 = vdupq_lane_s32(*v24.i8, 0);
  v29 = vdupq_lane_s32(*v24.i8, 1);
  v30 = vdupq_laneq_s32(v24, 2);
  v31 = a2 & 0xFFFFFFFC;
  v32 = *(a1 + 768);
  do
  {
    v33 = (v32 + 96 * v14);
    v34 = vaddvq_s32(vandq_s8(vandq_s8(vandq_s8(vbicq_s8(vceqzq_s32(vandq_s8(v18, vmovl_u16(*(v16 + 8 * v14)))), vceqzq_s32(vorrq_s8(vandq_s8(*(v22 + 16 * v14), v23), vandq_s8(*(v19 + 16 * v14), v20)))), vcgeq_f32(vaddq_f32(v28, v33[3]), vabdq_f32(v25, *v33))), vandq_s8(vcgeq_f32(vaddq_f32(v29, v33[4]), vabdq_f32(v26, v33[1])), vcgeq_f32(vaddq_f32(v30, v33[5]), vabdq_f32(v27, v33[2])))), xmmword_21C27FE30));
    if (v34)
    {
      v35 = 4 * v14 >= a3;
    }

    else
    {
      v35 = 1;
    }

    if (!v35)
    {
      v36 = v31;
      do
      {
        if (v34)
        {
          *(*(a1 + 856) + 8 * result) = *(*(a1 + 808) + 8 * v36);
          result = (result + 1);
        }

        if (v34 < 2)
        {
          break;
        }

        ++v36;
        v34 >>= 1;
      }

      while (v36 < a3);
    }

    ++v14;
    v31 += 4;
  }

  while (v14 != (a3 + 3) >> 2);
  return result;
}

uint64_t C3DCullingSystem_AABBRange_x1(float32x4_t *a1, unsigned int a2, unsigned int a3)
{
  if (a2 >= a3)
  {
    return 0;
  }

  v3 = 0;
  v4 = a1[48].i64[1];
  v5 = a1[52].i32[1] | (~a1[52].i32[2] << 8);
  v6 = a1[49].i64[0];
  v7 = a1[51].i32[0];
  v8 = a1[51].i32[1];
  v9 = a1[49].i64[1];
  v10 = a2;
  v11 = (32 * a2) | 0x10;
  do
  {
    if (*(v9 + 4 * v10) & v8 | *(v6 + 4 * v10) & v7)
    {
      v12 = (v5 & *(v4 + 2 * v10)) == 0;
    }

    else
    {
      v12 = 0;
    }

    if (v12)
    {
      v13 = vcgeq_f32(vaddq_f32(a1[1], *(a1[48].i64[0] + v11)), vabdq_f32(*a1, *(a1[48].i64[0] + v11 - 16)));
      v13.i32[3] = v13.i32[2];
      if ((vminvq_u32(v13) & 0x80000000) != 0)
      {
        *(a1[53].i64[1] + 8 * v3) = *(a1[50].i64[1] + 8 * v10);
        v3 = (v3 + 1);
      }
    }

    ++v10;
    v11 += 32;
  }

  while (a3 != v10);
  return v3;
}

double C3DCullingSystem_MergeAABBRange_x8(uint64_t a1, unsigned int a2, int a3)
{
  v78 = *MEMORY[0x277D85DE8];
  if ((a2 & 7) != 0)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DCullingSystem_AABBRange_x8(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = *(a1 + 776);
  v15 = a2 >> 3;
  v16 = (a1 + 816);
  v17 = *(a1 + 836);
  v18 = *(a1 + 840);
  v19 = *(a1 + 832);
  v20 = *(a1 + 784);
  v21 = (a1 + 820);
  v22 = vld1q_dup_f32(v16);
  v23 = vld1q_dup_f32(v21);
  v24 = *(a1 + 792);
  v74 = xmmword_21C280080;
  v75 = unk_21C280090;
  v76 = xmmword_21C2800A0;
  v77 = unk_21C2800B0;
  v72 = xmmword_21C280060;
  v73 = unk_21C280070;
  v68 = xmmword_21C2800E0;
  v69 = unk_21C2800F0;
  v70 = xmmword_21C280100;
  v71 = unk_21C280110;
  v66 = xmmword_21C2800C0;
  v67 = unk_21C2800D0;
  if (v15 >= (a3 + 7) >> 3)
  {
    v54.i64[0] = 0x80000000800000;
    v54.i64[1] = 0x80000000800000;
    v48 = vnegq_f32(v54);
    v55.i64[0] = 0x80000000800000;
    v55.i64[1] = 0x80000000800000;
    v52.i64[0] = 0x80000000800000;
    v52.i64[1] = 0x80000000800000;
    v53.i64[0] = 0x80000000800000;
    v53.i64[1] = 0x80000000800000;
    v50.i64[0] = 0x80000000800000;
    v50.i64[1] = 0x80000000800000;
    v49 = v48;
    v51.i64[0] = 0x80000000800000;
    v51.i64[1] = 0x80000000800000;
    v46 = v48;
    v47 = v48;
    v44 = v48;
    v45 = v48;
  }

  else
  {
    v25 = vdupq_n_s32(v17 | (~v18 << 8));
    v26 = vdupq_lane_s32(v19, 0);
    v27 = *(a1 + 768) + 192 * v15;
    do
    {
      v28 = 0;
      v29 = *(v14 + 16 * v15);
      v30 = vmovl_high_u16(v29);
      v31 = vmovl_u16(*v29.i8);
      *v31.i8 = vmovn_s16(vandq_s8(vbicq_s8(vmvnq_s8(vuzp1q_s16(vceqzq_s32(vorrq_s8(vandq_s8(*(v24 + 32 * v15), v23), vandq_s8(*(v20 + 32 * v15), v22))), vceqzq_s32(vorrq_s8(vandq_s8(*(v24 + 32 * v15 + 16), v23), vandq_s8(*(v20 + 32 * v15 + 16), v22))))), vuzp1q_s16(vceqzq_s32(vandq_s8(v26, v31)), vceqzq_s32(vandq_s8(v26, v30)))), vuzp1q_s16(vceqzq_s32(vandq_s8(v25, v31)), vceqzq_s32(vandq_s8(v25, v30)))));
      v32 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(*v31.i8, *v22.i8)), 0x1FuLL));
      v33 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(*v31.i8, *v22.i8)), 0x1FuLL));
      v34 = v27;
      do
      {
        v35 = (&v72 + 2 * v28);
        v36 = v35[1];
        v37 = v34[1];
        v39 = v34[6];
        v38 = v34[7];
        v40 = (&v66 + 2 * v28);
        v41 = *v40;
        v42 = v40[1];
        v43 = vbslq_s8(v33, vaddq_f32(*v34, v39), *v40);
        *v35 = vminnmq_f32(*v35, vbslq_s8(v33, vsubq_f32(*v34, v39), *v35));
        v35[1] = vminnmq_f32(v36, vbslq_s8(v32, vsubq_f32(v37, v38), v36));
        *v40 = vmaxnmq_f32(v41, v43);
        v40[1] = vmaxnmq_f32(v42, vbslq_s8(v32, vaddq_f32(v37, v38), v42));
        ++v28;
        v34 += 2;
      }

      while (v28 != 3);
      ++v15;
      v27 += 192;
    }

    while (v15 != (a3 + 7) >> 3);
    v44 = v72;
    v45 = v73;
    v46 = v74;
    v47 = v75;
    v48 = v76;
    v49 = v77;
    v50 = v66;
    v51 = v67;
    v52 = v68;
    v53 = v69;
    v54 = v70;
    v55 = v71;
  }

  v56 = vminq_f32(v44, v45);
  v57 = vminq_f32(v46, v47);
  *v57.f32 = vmin_f32(*v57.f32, *&vextq_s8(v57, v57, 8uLL));
  v58 = vmin_f32(*v56.i8, *&vextq_s8(v56, v56, 8uLL));
  *v57.f32 = vminnm_f32(vzip1_s32(v58, *v57.f32), vzip2_s32(v58, *v57.f32));
  v59 = vminq_f32(v48, v49);
  v59.i64[0] = vminq_f32(vdupq_lane_s64(v59.i64[0], 0), vdupq_laneq_s64(v59, 1)).u64[0];
  v57.i32[2] = fminf(*v59.i32, *&v59.i32[1]);
  v60 = vmaxq_f32(v50, v51);
  v61 = vmaxq_f32(v52, v53);
  *v61.f32 = vmax_f32(*v61.f32, *&vextq_s8(v61, v61, 8uLL));
  v62 = vmax_f32(*v60.i8, *&vextq_s8(v60, v60, 8uLL));
  v63 = vmaxq_f32(v54, v55);
  *v61.f32 = vmaxnm_f32(vzip1_s32(v62, *v61.f32), vzip2_s32(v62, *v61.f32));
  v63.i64[0] = vmaxq_f32(vdupq_lane_s64(v63.i64[0], 0), vdupq_laneq_s64(v63, 1)).u64[0];
  v61.i32[2] = fmaxf(*v63.i32, *&v63.i32[1]);
  v64.i64[0] = 0x3F0000003F000000;
  v64.i64[1] = 0x3F0000003F000000;
  *&result = vmulq_f32(vaddq_f32(v57, v61), v64).u64[0];
  return result;
}

double C3DCullingSystem_MergeAABBRange_x4(uint64_t a1, unsigned int a2, int a3)
{
  v49 = *MEMORY[0x277D85DE8];
  if ((a2 & 3) != 0)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DCullingSystem_AABBRange_x8(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = *(a1 + 776);
  v15 = a2 >> 2;
  v16 = (a1 + 816);
  v17 = *(a1 + 836);
  v18 = *(a1 + 840);
  v19 = (a1 + 832);
  v20 = vld1q_dup_f32(v19);
  v21 = *(a1 + 784);
  v22 = (a1 + 820);
  v23 = vld1q_dup_f32(v16);
  v24 = vld1q_dup_f32(v22);
  v25 = *(a1 + 792);
  v46 = xmmword_21C280120;
  v47 = unk_21C280130;
  v48 = xmmword_21C280140;
  v43 = xmmword_21C280150;
  v44 = unk_21C280160;
  v45 = xmmword_21C280170;
  if (v15 >= (a3 + 3) >> 2)
  {
    v40.i64[0] = 0x80000000800000;
    v40.i64[1] = 0x80000000800000;
    v37 = vnegq_f32(v40);
    v38.i64[0] = 0x80000000800000;
    v38.i64[1] = 0x80000000800000;
    v39.i64[0] = 0x80000000800000;
    v39.i64[1] = 0x80000000800000;
    v35 = v37;
    v36 = v37;
  }

  else
  {
    v26 = vdupq_n_s32(v17 | (~v18 << 8));
    v27 = *(a1 + 768) + 96 * v15;
    do
    {
      v28 = 0;
      v29 = vmovl_u16(*(v14 + 8 * v15));
      v30 = vmovl_s16(vmovn_s32(vandq_s8(vbicq_s8(vtstq_s32(v20, v29), vceqzq_s32(vorrq_s8(vandq_s8(*(v25 + 16 * v15), v24), vandq_s8(*(v21 + 16 * v15), v23)))), vceqzq_s32(vandq_s8(v26, v29)))));
      v31 = v27;
      do
      {
        v32 = v31[3];
        v33 = *(&v43 + v28);
        v34 = vbslq_s8(v30, vaddq_f32(*v31, v32), v33);
        *(&v46 + v28) = vminnmq_f32(*(&v46 + v28), vbslq_s8(v30, vsubq_f32(*v31, v32), *(&v46 + v28)));
        *(&v43 + v28++) = vmaxnmq_f32(v33, v34);
        ++v31;
      }

      while (v28 != 3);
      ++v15;
      v27 += 96;
    }

    while (v15 != (a3 + 3) >> 2);
    v36 = v46;
    v35 = v47;
    v37 = v48;
    v39 = v43;
    v38 = v44;
    v40 = v45;
  }

  v36.f32[0] = vminvq_f32(v36);
  v36.i32[1] = vminvq_f32(v35);
  v36.i32[2] = vminvq_f32(v37);
  v39.f32[0] = vmaxvq_f32(v39);
  v39.i32[1] = vmaxvq_f32(v38);
  v39.i32[2] = vmaxvq_f32(v40);
  v41.i64[0] = 0x3F0000003F000000;
  v41.i64[1] = 0x3F0000003F000000;
  *&result = vmulq_f32(vaddq_f32(v36, v39), v41).u64[0];
  return result;
}

uint64_t C3DCullingSystem_MergeAABBRange_x1(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = *(MEMORY[0x277D860B8] + 48);
  if (a2 < a3)
  {
    v4 = *(result + 836) | (~*(result + 840) << 8);
    v5 = *(result + 832);
    v6 = *(result + 816);
    v7 = *(result + 820);
    v8 = (*(result + 784) + 4 * a2);
    v9 = (*(result + 792) + 4 * a2);
    v10 = (*(result + 776) + 2 * a2);
    v11 = (*(result + 768) + 32 * a2 + 16);
    v12 = xmmword_21C27F650;
    v13.i64[0] = 0x3F0000003F000000;
    v13.i64[1] = 0x3F0000003F000000;
    v14 = a3 - a2;
    do
    {
      v15 = *v8++;
      v16 = v15 & v6;
      v17 = *v9++;
      v18 = v17 & v7;
      v19 = *v10++;
      v20 = v18 | v16;
      result = v5 & v19;
      if ((v4 & v19) == 0 && v20 != 0 && result != 0)
      {
        v23 = v11[-1];
        v24 = vsubq_f32(v3, v12);
        v24.i32[3] = 0;
        v25 = vsubq_f32(v23, *v11);
        v25.i32[3] = 0;
        v26 = vminnmq_f32(v24, v25);
        v27 = vaddq_f32(v3, v12);
        v27.i32[3] = 0;
        v28 = vaddq_f32(v23, *v11);
        v28.i32[3] = 0;
        v29 = vmaxnmq_f32(v27, v28);
        v3 = vmulq_f32(vaddq_f32(v26, v29), v13);
        v12 = vmulq_f32(vsubq_f32(v29, v26), v13);
        v3.i32[3] = 1.0;
        v12.i32[3] = 0;
      }

      v11 += 2;
      --v14;
    }

    while (v14);
  }

  return result;
}

uint64_t C3DCullingSystem_RayRange_x8<true>(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if ((a2 & 7) != 0)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DCullingSystem_AABBRange_x8(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = a2 >> 3;
  if (v14 >= (a3 + 7) >> 3)
  {
    return 0;
  }

  result = 0;
  v16 = *(a1 + 776);
  v17 = (a1 + 816);
  v18 = vdupq_n_s32(*(a1 + 836) | (~*(a1 + 840) << 8));
  v19 = *(a1 + 784);
  v20 = (a1 + 820);
  v21 = vld1q_dup_f32(v17);
  v22 = vld1q_dup_f32(v20);
  v23 = *(a1 + 792);
  v24 = vdupq_lane_s32(*a1, 0);
  v25 = vdupq_lane_s32(*a1, 1);
  v26 = vdupq_laneq_s32(*a1, 2);
  v27 = *(a1 + 32);
  v28 = vdupq_laneq_s32(v27, 3);
  v29 = *(a1 + 768);
  do
  {
    v30 = vmovn_s16(vbicq_s8(vuzp1q_s16(vceqzq_s32(vandq_s8(v18, vmovl_u16(*(v16 + 16 * v14)))), vceqzq_s32(vandq_s8(v18, vmovl_high_u16(*(v16 + 16 * v14))))), vuzp1q_s16(vceqzq_s32(vorrq_s8(vandq_s8(*(v23 + 32 * v14), v22), vandq_s8(*(v19 + 32 * v14), v21))), vceqzq_s32(vorrq_s8(vandq_s8(*(v23 + 32 * v14 + 16), v22), vandq_s8(*(v19 + 32 * v14 + 16), v21))))));
    if ((vmaxvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(vorr_s8(vzip1_s8(v30, *v18.i8), vzip2_s8(v30, *v18.i8))), 0x1FuLL))) & 0x80000000) != 0)
    {
      v31 = (v29 + 192 * v14);
      v32 = v31[1];
      v33 = v31[6];
      v34 = v31[7];
      v35 = vmulq_n_f32(vsubq_f32(vsubq_f32(v32, v34), v24), v27.f32[0]);
      v36 = vmulq_n_f32(vsubq_f32(vsubq_f32(*v31, v33), v24), v27.f32[0]);
      v37 = v31[2];
      v38 = v31[3];
      v39 = v31[8];
      v40 = v31[9];
      v41 = vmulq_lane_f32(vsubq_f32(vsubq_f32(v38, v40), v25), *v27.f32, 1);
      v42 = vmulq_lane_f32(vsubq_f32(vsubq_f32(v37, v39), v25), *v27.f32, 1);
      v44 = v31[4];
      v43 = v31[5];
      v45 = v31[10];
      v46 = v31[11];
      v47 = vmulq_laneq_f32(vsubq_f32(vsubq_f32(v43, v46), v26), v27, 2);
      v48 = vmulq_laneq_f32(vsubq_f32(vsubq_f32(v44, v45), v26), v27, 2);
      v49 = vmulq_n_f32(vsubq_f32(vaddq_f32(v32, v34), v24), v27.f32[0]);
      v50 = vmulq_n_f32(vsubq_f32(vaddq_f32(*v31, v33), v24), v27.f32[0]);
      v51 = vmulq_lane_f32(vsubq_f32(vaddq_f32(v38, v40), v25), *v27.f32, 1);
      v52 = vmulq_lane_f32(vsubq_f32(vaddq_f32(v37, v39), v25), *v27.f32, 1);
      v53 = vmulq_laneq_f32(vsubq_f32(vaddq_f32(v43, v46), v26), v27, 2);
      v54 = vmulq_laneq_f32(vsubq_f32(vaddq_f32(v44, v45), v26), v27, 2);
      v55 = vminnmq_f32(v36, v50);
      v56 = vminnmq_f32(v35, v49);
      v57 = vminnmq_f32(v47, v53);
      v58 = vmaxnmq_f32(v36, v50);
      v59 = vmaxnmq_f32(v35, v49);
      v60 = vmaxnmq_f32(v48, v54);
      v61 = vmaxnmq_f32(v47, v53);
      v62 = vmaxnmq_f32(v55, vmaxnmq_f32(vminnmq_f32(v42, v52), vminnmq_f32(v48, v54)));
      v63 = vmaxnmq_f32(v56, vmaxnmq_f32(vminnmq_f32(v41, v51), v57));
      v64 = vand_s8(vmovn_s16(vandq_s8(vuzp1q_s16(vcgtq_f32(v28, v62), vcgtq_f32(v28, v63)), vuzp1q_s16(vcgeq_f32(vminnmq_f32(v58, vminnmq_f32(vmaxnmq_f32(v42, v52), v60)), v62), vcgeq_f32(vminnmq_f32(v59, vminnmq_f32(vmaxnmq_f32(v41, v51), v61)), v63)))), v30);
      v65 = vaddvq_s32(vorrq_s8(vandq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v64, *v18.i8)), 0x1FuLL)), xmmword_21C27FE30), vandq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v64, *v18.i8)), 0x1FuLL)), xmmword_21C27FE20)));
      v66 = 8 * v14;
      if (v65 && v66 < a3)
      {
        v68 = *(a1 + 864);
        do
        {
          if (v65)
          {
            *(v68 + 4 * result) = v66;
            result = (result + 1);
          }

          if (v65 < 2)
          {
            break;
          }

          LODWORD(v66) = v66 + 1;
          v65 >>= 1;
        }

        while (v66 < a3);
      }
    }

    ++v14;
  }

  while (v14 != (a3 + 7) >> 3);
  return result;
}

uint64_t C3DCullingSystem_RayRange_x8<false>(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if ((a2 & 7) != 0)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DCullingSystem_AABBRange_x8(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = a2 >> 3;
  if (v14 >= (a3 + 7) >> 3)
  {
    return 0;
  }

  result = 0;
  v16 = *(a1 + 776);
  v17 = (a1 + 816);
  v18 = vdupq_n_s32(*(a1 + 836) | (~*(a1 + 840) << 8));
  v19 = *(a1 + 784);
  v20 = (a1 + 820);
  v21 = vld1q_dup_f32(v17);
  v22 = vld1q_dup_f32(v20);
  v23 = vdupq_lane_s32(*a1, 0);
  v24 = vdupq_lane_s32(*a1, 1);
  v25 = vdupq_laneq_s32(*a1, 2);
  v26 = *(a1 + 792);
  v27 = *(a1 + 32);
  v28 = vdupq_laneq_s32(v27, 3);
  v29 = a2 & 0xFFFFFFF8;
  v30 = *(a1 + 768);
  do
  {
    v31 = vmovn_s16(vbicq_s8(vuzp1q_s16(vceqzq_s32(vandq_s8(v18, vmovl_u16(*(v16 + 16 * v14)))), vceqzq_s32(vandq_s8(v18, vmovl_high_u16(*(v16 + 16 * v14))))), vuzp1q_s16(vceqzq_s32(vorrq_s8(vandq_s8(*(v26 + 32 * v14), v22), vandq_s8(*(v19 + 32 * v14), v21))), vceqzq_s32(vorrq_s8(vandq_s8(*(v26 + 32 * v14 + 16), v22), vandq_s8(*(v19 + 32 * v14 + 16), v21))))));
    if ((vmaxvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(vorr_s8(vzip1_s8(v31, *v18.i8), vzip2_s8(v31, *v18.i8))), 0x1FuLL))) & 0x80000000) != 0)
    {
      v32 = (v30 + 192 * v14);
      v33 = v32[1];
      v34 = v32[6];
      v35 = v32[7];
      v36 = vmulq_n_f32(vsubq_f32(vsubq_f32(v33, v35), v23), v27.f32[0]);
      v37 = vmulq_n_f32(vsubq_f32(vsubq_f32(*v32, v34), v23), v27.f32[0]);
      v38 = v32[2];
      v39 = v32[3];
      v40 = v32[8];
      v41 = v32[9];
      v42 = vmulq_lane_f32(vsubq_f32(vsubq_f32(v39, v41), v24), *v27.f32, 1);
      v43 = vmulq_lane_f32(vsubq_f32(vsubq_f32(v38, v40), v24), *v27.f32, 1);
      v45 = v32[4];
      v44 = v32[5];
      v46 = v32[10];
      v47 = v32[11];
      v48 = vmulq_laneq_f32(vsubq_f32(vsubq_f32(v44, v47), v25), v27, 2);
      v49 = vmulq_laneq_f32(vsubq_f32(vsubq_f32(v45, v46), v25), v27, 2);
      v50 = vmulq_n_f32(vsubq_f32(vaddq_f32(v33, v35), v23), v27.f32[0]);
      v51 = vmulq_n_f32(vsubq_f32(vaddq_f32(*v32, v34), v23), v27.f32[0]);
      v52 = vmulq_lane_f32(vsubq_f32(vaddq_f32(v39, v41), v24), *v27.f32, 1);
      v53 = vmulq_lane_f32(vsubq_f32(vaddq_f32(v38, v40), v24), *v27.f32, 1);
      v54 = vmulq_laneq_f32(vsubq_f32(vaddq_f32(v44, v47), v25), v27, 2);
      v55 = vmulq_laneq_f32(vsubq_f32(vaddq_f32(v45, v46), v25), v27, 2);
      v56 = vminnmq_f32(v37, v51);
      v57 = vminnmq_f32(v36, v50);
      v58 = vminnmq_f32(v48, v54);
      v59 = vmaxnmq_f32(v37, v51);
      v60 = vmaxnmq_f32(v36, v50);
      v61 = vmaxnmq_f32(v49, v55);
      v62 = vmaxnmq_f32(v48, v54);
      v63 = vmaxnmq_f32(v56, vmaxnmq_f32(vminnmq_f32(v43, v53), vminnmq_f32(v49, v55)));
      v64 = vmaxnmq_f32(v57, vmaxnmq_f32(vminnmq_f32(v42, v52), v58));
      v65 = vand_s8(vmovn_s16(vandq_s8(vuzp1q_s16(vcgtq_f32(v28, v63), vcgtq_f32(v28, v64)), vuzp1q_s16(vcgeq_f32(vminnmq_f32(v59, vminnmq_f32(vmaxnmq_f32(v43, v53), v61)), v63), vcgeq_f32(vminnmq_f32(v60, vminnmq_f32(vmaxnmq_f32(v42, v52), v62)), v64)))), v31);
      v66 = vaddvq_s32(vorrq_s8(vandq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v65, *v18.i8)), 0x1FuLL)), xmmword_21C27FE30), vandq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v65, *v18.i8)), 0x1FuLL)), xmmword_21C27FE20)));
      if (v66 && 8 * v14 < a3)
      {
        v68 = v29;
        do
        {
          if (v66)
          {
            *(*(a1 + 856) + 8 * result) = *(*(a1 + 808) + 8 * v68);
            result = (result + 1);
          }

          if (v66 < 2)
          {
            break;
          }

          ++v68;
          v66 >>= 1;
        }

        while (v68 < a3);
      }
    }

    ++v14;
    v29 += 8;
  }

  while (v14 != (a3 + 7) >> 3);
  return result;
}

uint64_t C3DCullingSystem_RayRange_x4<true>(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if ((a2 & 3) != 0)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DCullingSystem_AABBRange_x8(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = a2 >> 2;
  if (v14 >= (a3 + 3) >> 2)
  {
    return 0;
  }

  result = 0;
  v16 = vdupq_n_s32(*(a1 + 836) | (~*(a1 + 840) << 8));
  v17 = (a1 + 816);
  v18 = (a1 + 820);
  v19 = vld1q_dup_f32(v17);
  v20 = vld1q_dup_f32(v18);
  v21 = *(a1 + 776);
  v22 = vdupq_lane_s32(*a1, 0);
  v23 = vdupq_lane_s32(*a1, 1);
  v24 = *(a1 + 784);
  v25 = vdupq_laneq_s32(*a1, 2);
  v26 = *(a1 + 32);
  v27 = vdupq_laneq_s32(v26, 3);
  v28 = *(a1 + 792);
  v29 = *(a1 + 768);
  do
  {
    v30 = vbicq_s8(vceqzq_s32(vandq_s8(v16, vmovl_u16(*(v21 + 8 * v14)))), vceqzq_s32(vorrq_s8(vandq_s8(*(v28 + 16 * v14), v20), vandq_s8(*(v24 + 16 * v14), v19))));
    if ((vmaxvq_u32(v30) & 0x80000000) != 0)
    {
      v31 = (v29 + 96 * v14);
      v32 = v31[1];
      v34 = v31[2];
      v33 = v31[3];
      v35 = vmulq_n_f32(vsubq_f32(vsubq_f32(*v31, v33), v22), v26.f32[0]);
      v36 = v31[4];
      v37 = v31[5];
      v38 = vmulq_lane_f32(vsubq_f32(vsubq_f32(v32, v36), v23), *v26.f32, 1);
      v39 = vmulq_laneq_f32(vsubq_f32(vsubq_f32(v34, v37), v25), v26, 2);
      v40 = vmulq_n_f32(vsubq_f32(vaddq_f32(*v31, v33), v22), v26.f32[0]);
      v41 = vmulq_lane_f32(vsubq_f32(vaddq_f32(v32, v36), v23), *v26.f32, 1);
      v42 = vmulq_laneq_f32(vsubq_f32(vaddq_f32(v34, v37), v25), v26, 2);
      v43 = vmaxnmq_f32(vminnmq_f32(v35, v40), vmaxnmq_f32(vminnmq_f32(v38, v41), vminnmq_f32(v39, v42)));
      v44 = vaddvq_s32(vandq_s8(vmovl_s16(vand_s8(vmovn_s32(vandq_s8(vcgtq_f32(v27, v43), vcgeq_f32(vminnmq_f32(vmaxnmq_f32(v35, v40), vminnmq_f32(vmaxnmq_f32(v38, v41), vmaxnmq_f32(v39, v42))), v43))), vmovn_s32(v30))), xmmword_21C27FE30));
      v45 = 4 * v14;
      if (v44 && v45 < a3)
      {
        v47 = *(a1 + 864);
        do
        {
          if (v44)
          {
            *(v47 + 4 * result) = v45;
            result = (result + 1);
          }

          if (v44 < 2)
          {
            break;
          }

          LODWORD(v45) = v45 + 1;
          v44 >>= 1;
        }

        while (v45 < a3);
      }
    }

    ++v14;
  }

  while (v14 != (a3 + 3) >> 2);
  return result;
}

uint64_t C3DCullingSystem_RayRange_x4<false>(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if ((a2 & 3) != 0)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DCullingSystem_AABBRange_x8(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = a2 >> 2;
  if (v14 >= (a3 + 3) >> 2)
  {
    return 0;
  }

  result = 0;
  v16 = *(a1 + 776);
  v17 = vdupq_n_s32(*(a1 + 836) | (~*(a1 + 840) << 8));
  v18 = (a1 + 816);
  v19 = (a1 + 820);
  v20 = vld1q_dup_f32(v18);
  v21 = vld1q_dup_f32(v19);
  v22 = *(a1 + 784);
  v23 = vdupq_lane_s32(*a1, 0);
  v24 = vdupq_lane_s32(*a1, 1);
  v25 = *(a1 + 792);
  v26 = vdupq_laneq_s32(*a1, 2);
  v27 = *(a1 + 32);
  v28 = vdupq_laneq_s32(v27, 3);
  v29 = *(a1 + 768);
  v30 = a2 & 0xFFFFFFFC;
  do
  {
    v31 = vbicq_s8(vceqzq_s32(vandq_s8(v17, vmovl_u16(*(v16 + 8 * v14)))), vceqzq_s32(vorrq_s8(vandq_s8(*(v25 + 16 * v14), v21), vandq_s8(*(v22 + 16 * v14), v20))));
    if ((vmaxvq_u32(v31) & 0x80000000) != 0)
    {
      v32 = (v29 + 96 * v14);
      v33 = v32[1];
      v35 = v32[2];
      v34 = v32[3];
      v36 = vmulq_n_f32(vsubq_f32(vsubq_f32(*v32, v34), v23), v27.f32[0]);
      v37 = v32[4];
      v38 = v32[5];
      v39 = vmulq_lane_f32(vsubq_f32(vsubq_f32(v33, v37), v24), *v27.f32, 1);
      v40 = vmulq_laneq_f32(vsubq_f32(vsubq_f32(v35, v38), v26), v27, 2);
      v41 = vmulq_n_f32(vsubq_f32(vaddq_f32(*v32, v34), v23), v27.f32[0]);
      v42 = vmulq_lane_f32(vsubq_f32(vaddq_f32(v33, v37), v24), *v27.f32, 1);
      v43 = vmulq_laneq_f32(vsubq_f32(vaddq_f32(v35, v38), v26), v27, 2);
      v44 = vmaxnmq_f32(vminnmq_f32(v36, v41), vmaxnmq_f32(vminnmq_f32(v39, v42), vminnmq_f32(v40, v43)));
      v45 = vaddvq_s32(vandq_s8(vmovl_s16(vand_s8(vmovn_s32(vandq_s8(vcgtq_f32(v28, v44), vcgeq_f32(vminnmq_f32(vmaxnmq_f32(v36, v41), vminnmq_f32(vmaxnmq_f32(v39, v42), vmaxnmq_f32(v40, v43))), v44))), vmovn_s32(v31))), xmmword_21C27FE30));
      if (v45 && 4 * v14 < a3)
      {
        v47 = v30;
        do
        {
          if (v45)
          {
            *(*(a1 + 856) + 8 * result) = *(*(a1 + 808) + 8 * v47);
            result = (result + 1);
          }

          if (v45 < 2)
          {
            break;
          }

          ++v47;
          v45 >>= 1;
        }

        while (v47 < a3);
      }
    }

    ++v14;
    v30 += 4;
  }

  while (v14 != (a3 + 3) >> 2);
  return result;
}

uint64_t C3DCullingSystem_RayRange_x1<true>(float32x4_t *a1, unsigned int a2, unsigned int a3)
{
  if (a2 >= a3)
  {
    return 0;
  }

  v3 = 0;
  v4 = a1[48].i64[1];
  v5 = a1[52].i32[1] | (~a1[52].i32[2] << 8);
  v6 = a1[49].i64[0];
  v7 = a1[51].i32[0];
  v8 = a1[51].i32[1];
  v9 = a1[49].i64[1];
  v10 = a1[54].i64[0];
  v11 = a2;
  v12 = a3;
  v13 = (32 * a2) | 0x10;
  do
  {
    if (*(v9 + 4 * v11) & v8 | *(v6 + 4 * v11) & v7 && (v5 & *(v4 + 2 * v11)) == 0)
    {
      v14 = (a1[48].i64[0] + v13);
      v15 = v14[-1];
      v16 = a1[2];
      v17 = vmulq_f32(v16, vsubq_f32(vsubq_f32(v15, *v14), *a1));
      v18 = vmulq_f32(v16, vsubq_f32(vaddq_f32(v15, *v14), *a1));
      v17.i32[3] = 0;
      v18.i32[3] = 0;
      v19 = vminnmq_f32(v17, v18);
      v20 = vmaxnmq_f32(v17, v18);
      v17.i64[0] = vextq_s8(v19, v19, 8uLL).u64[0];
      v21 = vextq_s8(v20, v20, 8uLL).u64[0];
      *v17.f32 = vbsl_s8(vcge_f32(vzip1_s32(v21, *v19.i8), vzip1_s32(*v20.i8, *v17.f32)), vzip1_s32(*v20.i8, *v19.i8), vzip1_s32(v21, *v17.f32));
      v22 = vzip2_s32(*v20.i8, *v19.i8);
      v19.i32[0] = v17.i32[0];
      v20.i32[0] = vdup_lane_s32(*v20.i8, 1).u32[0];
      v20.i32[1] = v17.i32[1];
      v23 = vbsl_s8(vcge_f32(*v20.i8, *v19.i8), *v17.f32, v22);
      if (*v23.i32 >= *&v23.i32[1] && *&v23.i32[1] < COERCE_FLOAT(HIDWORD(*&a1[2])))
      {
        *(v10 + 4 * v3) = v11;
        v3 = (v3 + 1);
      }
    }

    ++v11;
    v13 += 32;
  }

  while (v12 != v11);
  return v3;
}

uint64_t C3DCullingSystem_RayRange_x1<false>(float32x4_t *a1, unsigned int a2, unsigned int a3)
{
  if (a2 >= a3)
  {
    return 0;
  }

  v3 = 0;
  v4 = a1[48].i64[1];
  v5 = a1[52].i32[1] | (~a1[52].i32[2] << 8);
  v6 = a1[49].i64[0];
  v7 = a1[51].i32[0];
  v8 = a1[51].i32[1];
  v9 = a1[49].i64[1];
  v10 = a2;
  v11 = (32 * a2) | 0x10;
  do
  {
    if (*(v9 + 4 * v10) & v8 | *(v6 + 4 * v10) & v7 && (v5 & *(v4 + 2 * v10)) == 0)
    {
      v12 = (a1[48].i64[0] + v11);
      v13 = v12[-1];
      v14 = a1[2];
      v15 = vmulq_f32(v14, vsubq_f32(vsubq_f32(v13, *v12), *a1));
      v16 = vmulq_f32(v14, vsubq_f32(vaddq_f32(v13, *v12), *a1));
      v15.i32[3] = 0;
      v16.i32[3] = 0;
      v17 = vminnmq_f32(v15, v16);
      v18 = vmaxnmq_f32(v15, v16);
      v15.i64[0] = vextq_s8(v17, v17, 8uLL).u64[0];
      v19 = vextq_s8(v18, v18, 8uLL).u64[0];
      *v15.f32 = vbsl_s8(vcge_f32(vzip1_s32(v19, *v17.i8), vzip1_s32(*v18.i8, *v15.f32)), vzip1_s32(*v18.i8, *v17.i8), vzip1_s32(v19, *v15.f32));
      v20 = vzip2_s32(*v18.i8, *v17.i8);
      v17.i32[0] = v15.i32[0];
      v18.i32[0] = vdup_lane_s32(*v18.i8, 1).u32[0];
      v18.i32[1] = v15.i32[1];
      v21 = vbsl_s8(vcge_f32(*v18.i8, *v17.i8), *v15.f32, v20);
      if (*v21.i32 >= *&v21.i32[1] && *&v21.i32[1] < COERCE_FLOAT(HIDWORD(*&a1[2])))
      {
        *(a1[53].i64[1] + 8 * v3) = *(a1[50].i64[1] + 8 * v10);
        v3 = (v3 + 1);
      }
    }

    ++v10;
    v11 += 32;
  }

  while (a3 != v10);
  return v3;
}