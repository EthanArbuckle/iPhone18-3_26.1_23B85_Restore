void *VFXComponent.setTexture(_:on:)(uint64_t a1, void *a2)
{
  v5 = a2[3];
  v6 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v5);
  result = (*(v6 + 40))(&v16, v5, v6);
  if (v16 == 7)
  {
    v8 = a2[3];
    v9 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v8);
    v10 = (*(v9 + 8))(v8, v9);
    v12 = v11;

    v13 = *(v2 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v2 + 64);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, v10, v12, isUniquelyReferenced_nonNull_native);

    *(v2 + 64) = v15;
  }

  return result;
}

uint64_t VFXComponent.restrictCrossingToMesh(ofPortal:withPadding:)(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(v3 + 40);

  *(v3 + 40) = a1;
  *(v3 + 48) = a2;
  *(v3 + 56) = a3 & 1;
  return result;
}

unint64_t VFXComponent.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 1065353216;
  *(a2 + 16) = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *(a2 + 24) = MEMORY[0x1E69E7CC0];
  *(a2 + 32) = v4;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1;
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10RealityKit15TextureResourceCSgTt0g5Tf4g_n(v4);
  *(a2 + 64) = result;
  *a2 = a1;
  return result;
}

uint64_t static VFXComponent.__fromCore(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  Asset = REVFXSceneComponentGetAsset();
  if (!Asset)
  {
    goto LABEL_8;
  }

  v5 = Asset;
  type metadata accessor for VFXResource();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  RERetain();
  REAssetSetSwiftObject();
  v7 = MEMORY[0x1E69E7CC0];
  v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10RealityKit15TextureResourceCSgTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  REVFXSceneComponentGetSimulationRate();
  v10 = v9;
  SimulationState = REVFXSceneComponentGetSimulationState();
  if ((SimulationState & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_8:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (SimulationState >= 4)
  {
    v12 = 0;
  }

  else
  {
    v12 = SimulationState;
  }

  result = REVFXSceneComponentGetSimulationTime();
  *a2 = v6;
  *(a2 + 8) = v10;
  *(a2 + 12) = v14;
  *(a2 + 16) = v12;
  *(a2 + 24) = v7;
  *(a2 + 32) = v7;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1;
  *(a2 + 64) = v8;
  return result;
}

void VFXComponent.__toCore(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 12);
  v5 = *(v1 + 16);
  v7 = *(v1 + 24);
  v6 = *(v1 + 32);
  v8 = *(v1 + 40);
  v9 = *(v1 + 48);
  v41 = *(v1 + 56);
  v10 = *(v1 + 57);
  v11 = *(v1 + 64);
  v12 = *(*v1 + 16);
  REVFXSceneComponentSetAsset();
  REVFXSceneComponentSetSimulationRate();
  REVFXSceneComponentSetSimulationTime();
  v42 = v10;
  if (v5 >= 2)
  {
    REVFXSceneComponentResetSimulation();
  }

  REVFXSceneComponentSetSimulationState();
  v13 = *(v7 + 16);
  if (v13)
  {
    v14 = 0;
    v15 = (v7 + 40);
    while (v14 < *(v7 + 16))
    {
      ++v14;
      v17 = *(v15 - 1);
      v16 = *v15;

      v18 = MEMORY[0x1C68F3280](v17, v16);
      MEMORY[0x1C6901460](v2, v18);

      v15 += 2;
      if (v13 == v14)
      {
        goto LABEL_7;
      }
    }

LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

LABEL_7:
  v19 = *(v6 + 16);
  if (v19)
  {
    v20 = 0;
    v21 = (v6 + 40);
    while (v20 < *(v6 + 16))
    {
      ++v20;
      v23 = *(v21 - 1);
      v22 = *v21;

      v24 = MEMORY[0x1C68F3280](v23, v22);
      MEMORY[0x1C6901480](v2, v24);

      v21 += 2;
      if (v19 == v20)
      {
        goto LABEL_11;
      }
    }

LABEL_32:
    __break(1u);
    return;
  }

LABEL_11:
  v25 = 1 << *(v11 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(v11 + 64);
  v28 = (v25 + 63) >> 6;

  v29 = 0;
  while (v27)
  {
LABEL_21:
    v33 = __clz(__rbit64(v27)) | (v29 << 6);
    v34 = (*(v11 + 48) + 16 * v33);
    v36 = *v34;
    v35 = v34[1];
    v37 = *(*(v11 + 56) + 8 * v33);
    if (v37)
    {
      v38 = *(v37 + 16);
      v39 = v34[1];

      v31 = MEMORY[0x1C68F3280](v36, v35);
      REVFXSceneComponentSetClientTexture();
    }

    else
    {
      v30 = v34[1];

      v31 = MEMORY[0x1C68F3280](v36, v35);
      REVFXSceneComponentResetClientTexture();
    }

    v27 &= v27 - 1;
  }

  while (1)
  {
    v32 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
      goto LABEL_31;
    }

    if (v32 >= v28)
    {
      break;
    }

    v27 = *(v11 + 64 + 8 * v32);
    ++v29;
    if (v27)
    {
      v29 = v32;
      goto LABEL_21;
    }
  }

  if (v42)
  {
    REVFXSceneComponentStopCollidingOutsidePortal();
  }

  if (v8)
  {
    v40 = *(v8 + 16);

    REVFXSceneComponentStartCollidingOutsidePortal();
    REVFXSceneComponentSetPortalPaddingForCollisions();
  }

  RENetworkMarkComponentDirty();
}

uint64_t HasVFX.vfxComponent.getter@<X0>(uint64_t a1@<X8>)
{
  (*(*v1 + 96))(&v4);
  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlF0A10Foundation12VFXComponentV_Tt0B5(v4, a1);
}

uint64_t HasVFX.vfxComponent.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  v8[2] = *(a1 + 32);
  v8[3] = v2;
  v9 = *(a1 + 64);
  v3 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v3;
  v4 = (*(*v1 + 112))(v7);
  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation12VFXComponentV_TtB5(v8, 0, *v5);
  outlined destroy of VFXComponent?(v8);
  return v4(v7, 0);
}

void (*HasVFX.vfxComponent.modify(void *a1, uint64_t a2, uint64_t a3))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x138uLL);
  }

  *a1 = v7;
  v7[37] = a3;
  v7[38] = v3;
  v7[36] = a2;
  HasVFX.vfxComponent.getter(v7);
  return HasVFX.vfxComponent.modify;
}

void HasVFX.vfxComponent.modify(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[1];
    v5 = v2[2];
    v4 = v2[3];
    v2[11] = v5;
    v2[12] = v4;
    v6 = v2[1];
    v7 = *v2;
    v2[9] = *v2;
    v2[10] = v6;
    v8 = v2[3];
    v17 = v5;
    v18 = v8;
    v9 = *(v2 + 38);
    *(v2 + 26) = *(v2 + 8);
    v19 = *(v2 + 8);
    v15 = v7;
    v16 = v3;
    outlined init with copy of VFXComponent?((v2 + 9), v2 + 216);
    HasVFX.vfxComponent.setter(&v15);
    v10 = *v2;
    *(v2 + 88) = v2[1];
    v11 = v2[3];
    *(v2 + 104) = v2[2];
    *(v2 + 120) = v11;
    *(v2 + 17) = *(v2 + 8);
    *(v2 + 72) = v10;
    outlined destroy of VFXComponent?(v2 + 72);
  }

  else
  {
    v12 = *(v2 + 38);
    v13 = v2[3];
    v17 = v2[2];
    v18 = v13;
    v19 = *(v2 + 8);
    v14 = v2[1];
    v15 = *v2;
    v16 = v14;
    HasVFX.vfxComponent.setter(&v15);
  }

  free(v2);
}

void HasVFX.setVFXValue(_:of:)(void *a1, void *a2)
{
  v5 = *(v2 + 16);
  REVFXSceneComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    v6 = a2[3];
    v7 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v6);
    (*(v7 + 32))(v102, v6, v7);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    swift_getDynamicType();
    if (VFXParameterType.isMatching(type:)())
    {
      v8 = a2[3];
      v9 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, v8);
      (*(v9 + 32))(&v105, v8, v9);
      switch(v105)
      {
        case 0:
          v73 = a2[3];
          v74 = a2[4];
          __swift_project_boxed_opaque_existential_1(a2, v73);
          v75 = (*(v74 + 8))(v73, v74);
          v76 = MEMORY[0x1C68F3280](v75);

          outlined init with copy of Any(a1, v102);
          swift_dynamicCast();
          v77 = MEMORY[0x1C68F3280](v106[0], v106[1]);

          REVFXSceneComponentSetParameterString();

          break;
        case 1:
          v82 = a2[3];
          v83 = a2[4];
          __swift_project_boxed_opaque_existential_1(a2, v82);
          v84 = (*(v83 + 8))(v82, v83);
          v85 = MEMORY[0x1C68F3280](v84);

          outlined init with copy of Any(a1, v102);
          swift_dynamicCast();
          REVFXSceneComponentSetParameterBool();

          break;
        case 2:
          v61 = a2[3];
          v62 = a2[4];
          __swift_project_boxed_opaque_existential_1(a2, v61);
          v63 = (*(v62 + 8))(v61, v62);
          v64 = MEMORY[0x1C68F3280](v63);

          outlined init with copy of Any(a1, v102);
          swift_dynamicCast();
          REVFXSceneComponentSetParameterUInt8();

          break;
        case 3:
          v78 = a2[3];
          v79 = a2[4];
          __swift_project_boxed_opaque_existential_1(a2, v78);
          v80 = (*(v79 + 8))(v78, v79);
          v81 = MEMORY[0x1C68F3280](v80);

          outlined init with copy of Any(a1, v102);
          swift_dynamicCast();
          REVFXSceneComponentSetParameterUInt16();

          break;
        case 4:
          v65 = a2[3];
          v66 = a2[4];
          __swift_project_boxed_opaque_existential_1(a2, v65);
          v67 = (*(v66 + 8))(v65, v66);
          v68 = MEMORY[0x1C68F3280](v67);

          outlined init with copy of Any(a1, v102);
          swift_dynamicCast();
          REVFXSceneComponentSetParameterUInt32();

          break;
        case 5:
          v69 = a2[3];
          v70 = a2[4];
          __swift_project_boxed_opaque_existential_1(a2, v69);
          v71 = (*(v70 + 8))(v69, v70);
          v72 = MEMORY[0x1C68F3280](v71);

          outlined init with copy of Any(a1, v102);
          swift_dynamicCast();
          REVFXSceneComponentSetParameterUInt64();

          break;
        case 6:
          v86 = a2[3];
          v87 = a2[4];
          __swift_project_boxed_opaque_existential_1(a2, v86);
          v88 = (*(v87 + 8))(v86, v87);
          v89 = MEMORY[0x1C68F3280](v88);

          outlined init with copy of Any(a1, v102);
          swift_dynamicCast();
          REVFXSceneComponentSetParameterInt();

          break;
        case 7:
          v90 = a2[3];
          v91 = a2[4];
          __swift_project_boxed_opaque_existential_1(a2, v90);
          v92 = (*(v91 + 8))(v90, v91);
          v93 = MEMORY[0x1C68F3280](v92);

          outlined init with copy of Any(a1, v102);
          swift_dynamicCast();
          REVFXSceneComponentSetParameterInt8();

          break;
        case 8:
          v98 = a2[3];
          v99 = a2[4];
          __swift_project_boxed_opaque_existential_1(a2, v98);
          v100 = (*(v99 + 8))(v98, v99);
          v101 = MEMORY[0x1C68F3280](v100);

          outlined init with copy of Any(a1, v102);
          swift_dynamicCast();
          REVFXSceneComponentSetParameterInt16();

          break;
        case 9:
          v94 = a2[3];
          v95 = a2[4];
          __swift_project_boxed_opaque_existential_1(a2, v94);
          v96 = (*(v95 + 8))(v94, v95);
          v97 = MEMORY[0x1C68F3280](v96);

          outlined init with copy of Any(a1, v102);
          swift_dynamicCast();
          REVFXSceneComponentSetParameterInt32();

          break;
        case 10:
          v57 = a2[3];
          v58 = a2[4];
          __swift_project_boxed_opaque_existential_1(a2, v57);
          v59 = (*(v58 + 8))(v57, v58);
          v60 = MEMORY[0x1C68F3280](v59);

          outlined init with copy of Any(a1, v102);
          swift_dynamicCast();
          REVFXSceneComponentSetParameterInt64();

          break;
        case 11:
        case 12:
          v10 = a2[3];
          v11 = a2[4];
          __swift_project_boxed_opaque_existential_1(a2, v10);
          v12 = (*(v11 + 8))(v10, v11);
          v13 = MEMORY[0x1C68F3280](v12);

          outlined init with copy of Any(a1, v102);
          swift_dynamicCast();
          REVFXSceneComponentSetParameterFloat();

          break;
        case 13:
        case 18:
          v53 = a2[3];
          v54 = a2[4];
          __swift_project_boxed_opaque_existential_1(a2, v53);
          v55 = (*(v54 + 8))(v53, v54);
          v56 = MEMORY[0x1C68F3280](v55);

          outlined init with copy of Any(a1, v102);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2VySfGMd, &_ss5SIMD2VySfGMR);
          swift_dynamicCast();
          REVFXSceneComponentSetParameterFloat2();

          break;
        case 14:
        case 19:
          v30 = a2[3];
          v31 = a2[4];
          __swift_project_boxed_opaque_existential_1(a2, v30);
          v32 = (*(v31 + 8))(v30, v31);
          v33 = MEMORY[0x1C68F3280](v32);

          outlined init with copy of Any(a1, v102);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
          swift_dynamicCast();
          REVFXSceneComponentSetParameterFloat3();

          break;
        case 15:
        case 20:
          v49 = a2[3];
          v50 = a2[4];
          __swift_project_boxed_opaque_existential_1(a2, v49);
          v51 = (*(v50 + 8))(v49, v50);
          v52 = MEMORY[0x1C68F3280](v51);

          outlined init with copy of Any(a1, v102);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR);
          swift_dynamicCast();
          REVFXSceneComponentSetParameterFloat4();

          break;
        case 16:
        case 21:
          v34 = a2[3];
          v35 = a2[4];
          __swift_project_boxed_opaque_existential_1(a2, v34);
          v36 = (*(v35 + 8))(v34, v35);
          v37 = MEMORY[0x1C68F3280](v36);

          outlined init with copy of Any(a1, v106);
          type metadata accessor for simd_float3x3(0);
          swift_dynamicCast();
          REVFXSceneComponentSetParameterFloat3x3();

          break;
        case 17:
        case 22:
          v38 = a2[3];
          v39 = a2[4];
          __swift_project_boxed_opaque_existential_1(a2, v38);
          v40 = (*(v39 + 8))(v38, v39);
          v41 = MEMORY[0x1C68F3280](v40);

          outlined init with copy of Any(a1, v106);
          type metadata accessor for simd_float4x4(0);
          swift_dynamicCast();
          REVFXSceneComponentSetParameterFloat4x4();

          break;
        case 24:
        case 25:
          v42 = a2[3];
          v43 = a2[4];
          __swift_project_boxed_opaque_existential_1(a2, v42);
          v44 = (*(v43 + 8))(v42, v43);
          v45 = MEMORY[0x1C68F3280](v44);

          v46 = a2[3];
          v47 = a2[4];
          __swift_project_boxed_opaque_existential_1(a2, v46);
          (*(v47 + 32))(&v105, v46, v47);
          outlined init with copy of Any(a1, v102);
          type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAKeyframeAnimation, 0x1E6979390);
          swift_dynamicCast();
          v48 = v106[0];
          REVFXSceneComponentSetParameterKeyframeAnimation();

          break;
        default:
          return;
      }
    }

    else
    {
      v14 = static os_log_type_t.error.getter();
      outlined init with copy of __REAssetService(a2, v102);
      outlined init with copy of __REAssetService(a2, v106);
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
      v15 = static OS_os_log.default.getter();
      if (os_log_type_enabled(v15, v14))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v105 = v17;
        *v16 = 136315394;
        v18 = v103;
        v19 = v104;
        __swift_project_boxed_opaque_existential_1(v102, v103);
        v20 = (*(v19 + 16))(v18, v19);
        v22 = v21;
        __swift_destroy_boxed_opaque_existential_1(v102);
        v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v105);

        *(v16 + 4) = v23;
        *(v16 + 12) = 2080;
        v24 = v107;
        v25 = v108;
        __swift_project_boxed_opaque_existential_1(v106, v107);
        v26 = (*(v25 + 24))(v24, v25);
        v28 = v27;
        __swift_destroy_boxed_opaque_existential_1(v106);
        v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v105);

        *(v16 + 14) = v29;
        _os_log_impl(&dword_1C1358000, v15, v14, "[VFX] Missmatch between setValue value type and parameter type of %s.%s", v16, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1C6902A30](v17, -1, -1);
        MEMORY[0x1C6902A30](v16, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(v102);
        __swift_destroy_boxed_opaque_existential_1(v106);
      }
    }
  }
}

void HasVFX.vfxValue(of:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  REVFXSceneComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    v6 = a1[3];
    v7 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v6);
    v8 = *(v7 + 32);
    v8((&v123 + 1), v6, v7);
    switch(BYTE1(v123))
    {
      case 0:
        v80 = a1[3];
        v81 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v80);
        v82 = (*(v81 + 8))(v80, v81);
        v83 = MEMORY[0x1C68F3280](v82);

        v84 = REVFXSceneComponentGetParameterString();

        v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v87 = v86;

        *(a2 + 24) = MEMORY[0x1E69E6158];
        *a2 = v85;
        *(a2 + 8) = v87;
        return;
      case 1:
        v94 = a1[3];
        v95 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v94);
        v96 = (*(v95 + 8))(v94, v95);
        v97 = MEMORY[0x1C68F3280](v96);

        ParameterBool = REVFXSceneComponentGetParameterBool();

        v69 = MEMORY[0x1E69E6370];
        goto LABEL_23;
      case 2:
        v64 = a1[3];
        v65 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v64);
        v66 = (*(v65 + 8))(v64, v65);
        v67 = MEMORY[0x1C68F3280](v66);

        ParameterBool = REVFXSceneComponentGetParameterUInt8();

        v69 = MEMORY[0x1E69E7508];
        goto LABEL_23;
      case 3:
        v88 = a1[3];
        v89 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v88);
        v90 = (*(v89 + 8))(v88, v89);
        v91 = MEMORY[0x1C68F3280](v90);

        ParameterUInt16 = REVFXSceneComponentGetParameterUInt16();

        v93 = MEMORY[0x1E69E75F8];
        goto LABEL_27;
      case 4:
        v70 = a1[3];
        v71 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v70);
        v72 = (*(v71 + 8))(v70, v71);
        v73 = MEMORY[0x1C68F3280](v72);

        ParameterUInt32 = REVFXSceneComponentGetParameterUInt32();

        v75 = MEMORY[0x1E69E7668];
        goto LABEL_25;
      case 5:
        v76 = a1[3];
        v77 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v76);
        v78 = (*(v77 + 8))(v76, v77);
        v79 = MEMORY[0x1C68F3280](v78);

        ParameterUInt64 = REVFXSceneComponentGetParameterUInt64();

        v63 = MEMORY[0x1E69E76D8];
        goto LABEL_21;
      case 6:
        v98 = a1[3];
        v99 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v98);
        v100 = (*(v99 + 8))(v98, v99);
        v101 = MEMORY[0x1C68F3280](v100);

        ParameterUInt64 = REVFXSceneComponentGetParameterInt();

        v63 = MEMORY[0x1E69E6530];
        goto LABEL_21;
      case 7:
        v102 = a1[3];
        v103 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v102);
        v104 = (*(v103 + 8))(v102, v103);
        v105 = MEMORY[0x1C68F3280](v104);

        ParameterBool = REVFXSceneComponentGetParameterInt8();

        v69 = MEMORY[0x1E69E7230];
LABEL_23:
        *(a2 + 24) = v69;
        *a2 = ParameterBool;
        return;
      case 8:
        v110 = a1[3];
        v111 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v110);
        v112 = (*(v111 + 8))(v110, v111);
        v113 = MEMORY[0x1C68F3280](v112);

        ParameterUInt16 = REVFXSceneComponentGetParameterInt16();

        v93 = MEMORY[0x1E69E7290];
LABEL_27:
        *(a2 + 24) = v93;
        *a2 = ParameterUInt16;
        return;
      case 9:
        v106 = a1[3];
        v107 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v106);
        v108 = (*(v107 + 8))(v106, v107);
        v109 = MEMORY[0x1C68F3280](v108);

        ParameterUInt32 = REVFXSceneComponentGetParameterInt32();

        v75 = MEMORY[0x1E69E72F0];
LABEL_25:
        *(a2 + 24) = v75;
        *a2 = ParameterUInt32;
        return;
      case 0xA:
        v58 = a1[3];
        v59 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v58);
        v60 = (*(v59 + 8))(v58, v59);
        v61 = MEMORY[0x1C68F3280](v60);

        ParameterUInt64 = REVFXSceneComponentGetParameterInt64();

        v63 = MEMORY[0x1E69E7360];
LABEL_21:
        *(a2 + 24) = v63;
        *a2 = ParameterUInt64;
        return;
      case 0xB:
      case 0xC:
        v9 = a1[3];
        v10 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v9);
        v11 = (*(v10 + 8))(v9, v10);
        v12 = MEMORY[0x1C68F3280](v11);

        REVFXSceneComponentGetParameterFloat();
        v14 = v13;

        *(a2 + 24) = MEMORY[0x1E69E6448];
        *a2 = v14;
        return;
      case 0xD:
      case 0x12:
        v52 = a1[3];
        v53 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v52);
        v54 = (*(v53 + 8))(v52, v53);
        v55 = MEMORY[0x1C68F3280](v54);

        REVFXSceneComponentGetParameterFloat2();
        v57 = v56;

        *(a2 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2VySfGMd, &_ss5SIMD2VySfGMR);
        *a2 = v57;
        return;
      case 0xE:
      case 0x13:
        v15 = a1[3];
        v16 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v15);
        v17 = (*(v16 + 8))(v15, v16);
        v18 = MEMORY[0x1C68F3280](v17);

        REVFXSceneComponentGetParameterFloat3();
        v119 = v19;

        v20 = &_ss5SIMD3VySfGMd;
        v21 = &_ss5SIMD3VySfGMR;
        goto LABEL_11;
      case 0xF:
      case 0x14:
        v46 = a1[3];
        v47 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v46);
        v48 = (*(v47 + 8))(v46, v47);
        v49 = MEMORY[0x1C68F3280](v48);

        REVFXSceneComponentGetParameterFloat4();
        v119 = v50;

        v20 = &_ss5SIMD4VySfGMd;
        v21 = &_ss5SIMD4VySfGMR;
LABEL_11:
        *(a2 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(v20, v21);
        v51 = swift_allocObject();
        *a2 = v51;
        *(v51 + 16) = v119;
        break;
      case 0x10:
      case 0x15:
        v22 = a1[3];
        v23 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v22);
        v24 = (*(v23 + 8))(v22, v23);
        v25 = MEMORY[0x1C68F3280](v24);

        REVFXSceneComponentGetParameterFloat3x3();
        v117 = v27;
        v120 = v26;
        v115 = v28;

        type metadata accessor for simd_float3x3(0);
        *(a2 + 24) = v29;
        v30 = swift_allocObject();
        *a2 = v30;
        v30[1] = v120;
        v30[2] = v117;
        v30[3] = v115;
        break;
      case 0x11:
      case 0x16:
        v31 = a1[3];
        v32 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v31);
        v33 = (*(v32 + 8))(v31, v32);
        v34 = MEMORY[0x1C68F3280](v33);

        REVFXSceneComponentGetParameterFloat4x4();
        v118 = v36;
        v121 = v35;
        v114 = v38;
        v116 = v37;

        type metadata accessor for simd_float4x4(0);
        *(a2 + 24) = v39;
        v40 = swift_allocObject();
        *a2 = v40;
        v40[1] = v121;
        v40[2] = v118;
        v40[3] = v116;
        v40[4] = v114;
        break;
      case 0x18:
      case 0x19:
        v122 = a2;
        v41 = a1[3];
        v42 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v41);
        v43 = (*(v42 + 8))(v41, v42);
        v44 = MEMORY[0x1C68F3280](v43);

        v8(&v123, v6, v7);
        v45 = REVFXSceneComponentGetParameterKeyframeAnimation();

        v122[3] = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAKeyframeAnimation, 0x1E6979390);
        *v122 = v45;
        break;
      default:
        goto LABEL_4;
    }
  }

  else
  {
LABEL_4:
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }
}

uint64_t outlined destroy of VFXComponent?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12VFXComponentVSgMd, &_s17RealityFoundation12VFXComponentVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of VFXComponent?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12VFXComponentVSgMd, &_s17RealityFoundation12VFXComponentVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type VFXComponent.SimulationState and conformance VFXComponent.SimulationState()
{
  result = lazy protocol witness table cache variable for type VFXComponent.SimulationState and conformance VFXComponent.SimulationState;
  if (!lazy protocol witness table cache variable for type VFXComponent.SimulationState and conformance VFXComponent.SimulationState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VFXComponent.SimulationState and conformance VFXComponent.SimulationState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VFXComponent.SimulationState and conformance VFXComponent.SimulationState;
  if (!lazy protocol witness table cache variable for type VFXComponent.SimulationState and conformance VFXComponent.SimulationState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VFXComponent.SimulationState and conformance VFXComponent.SimulationState);
  }

  return result;
}

uint64_t FromToByAction.from.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2, v5);
}

uint64_t FromToByAction.to.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = *(a1 + 16);
  v6 = type metadata accessor for Optional();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v2 + v4, v6);
}

uint64_t FromToByAction.by.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = *(a1 + 16);
  v6 = type metadata accessor for Optional();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v2 + v4, v6);
}

__n128 FromToByAction.timingFunction.getter@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v3 = (v2 + *(a1 + 44));
  v4 = v3[1].n128_u32[0];
  v5 = v3[1].n128_u8[4];
  result = *v3;
  *a2 = *v3;
  a2[1].n128_u32[0] = v4;
  a2[1].n128_u8[4] = v5;
  return result;
}

__n128 FromToByAction.timingFunction.setter(__n128 *a1, uint64_t a2)
{
  v3 = a1[1].n128_u32[0];
  v4 = a1[1].n128_u8[4];
  v5 = (v2 + *(a2 + 44));
  result = *a1;
  *v5 = *a1;
  v5[1].n128_u32[0] = v3;
  v5[1].n128_u8[4] = v4;
  return result;
}

uint64_t (*FromToByAction.timingFunction.modify(uint64_t a1, uint64_t a2))(void, void)
{
  result = destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError;
  v4 = v2 + *(a2 + 44);
  return result;
}

void static FromToByAction.TransformMode.default.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -3;
}

uint64_t static FromToByAction.TransformMode.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 == 253)
  {
    if (v7 == 253)
    {
      outlined consume of FromToByAction<A>.TransformMode<A>(*a1, v2, 0xFDu);
      v8 = v6;
      v9 = v5;
      v10 = -3;
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  if (v4 == 254)
  {
    if (v7 == 254)
    {
      outlined consume of FromToByAction<A>.TransformMode<A>(*a1, v2, 0xFEu);
      v8 = v6;
      v9 = v5;
      v10 = -2;
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  if (v4 != 255)
  {
    if (v7 <= 0xFC)
    {
      v15[0] = *a1;
      v15[1] = v2;
      v16 = v4 & 1;
      v13[0] = v6;
      v13[1] = v5;
      v14 = v7 & 1;
      outlined copy of FromToByAction<A>.TransformMode<A>(v6, v5, v7);
      outlined copy of FromToByAction<A>.TransformMode<A>(v3, v2, v4);
      outlined copy of FromToByAction<A>.TransformMode<A>(v6, v5, v7);
      outlined copy of FromToByAction<A>.TransformMode<A>(v3, v2, v4);
      v11 = specialized static ActionEntityResolution.== infix(_:_:)(v15, v13);
      outlined consume of FromToByAction<A>.TransformMode<A>(v3, v2, v4);
      outlined consume of FromToByAction<A>.TransformMode<A>(v6, v5, v7);
      outlined consume of FromToByAction<A>.TransformMode<A>(v6, v5, v7);
      outlined consume of FromToByAction<A>.TransformMode<A>(v3, v2, v4);
      return v11 & 1;
    }

    goto LABEL_12;
  }

  if (v7 != 255)
  {
LABEL_12:
    outlined copy of FromToByAction<A>.TransformMode<A>(*a2, *(a2 + 8), v7);
    outlined copy of FromToByAction<A>.TransformMode<A>(v3, v2, v4);
    outlined consume of FromToByAction<A>.TransformMode<A>(v3, v2, v4);
    outlined consume of FromToByAction<A>.TransformMode<A>(v6, v5, v7);
    v11 = 0;
    return v11 & 1;
  }

  outlined consume of FromToByAction<A>.TransformMode<A>(*a1, v2, 0xFFu);
  v8 = v6;
  v9 = v5;
  v10 = -1;
LABEL_10:
  outlined consume of FromToByAction<A>.TransformMode<A>(v8, v9, v10);
  v11 = 1;
  return v11 & 1;
}

uint64_t outlined copy of FromToByAction<A>.TransformMode<A>(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xFCu)
  {
    return outlined copy of ActionEntityResolution();
  }

  return result;
}

uint64_t outlined consume of FromToByAction<A>.TransformMode<A>(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xFCu)
  {
    return outlined consume of ActionEntityResolution();
  }

  return result;
}

uint64_t FromToByAction.TransformMode.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65726170 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C61636F6CLL && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656E656373 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65766974616C6572 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

Swift::Int FromToByAction.TransformMode.CodingKeys.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](a1);
  return Hasher._finalize()();
}

uint64_t FromToByAction.TransformMode.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 0x746E65726170;
  v2 = 0x656E656373;
  if (a1 != 2)
  {
    v2 = 0x65766974616C6572;
  }

  if (a1)
  {
    v1 = 0x6C61636F6CLL;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t FromToByAction.TransformMode.RelativeCodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 28532 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance FromToByAction<A>.TransformMode.CodingKeys(char *a1, char *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return static FromToByAction.TransformMode.CodingKeys.== infix(_:_:)(*a1, *a2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance FromToByAction<A>.TransformMode.CodingKeys(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return FromToByAction.TransformMode.CodingKeys.hashValue.getter(*v1);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance FromToByAction<A>.TransformMode.CodingKeys(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  return FromToByAction.TransformMode.CodingKeys.hash(into:)(a1, *v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FromToByAction<A>.TransformMode.CodingKeys(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  FromToByAction.TransformMode.CodingKeys.hash(into:)(v7, *v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance FromToByAction<A>.TransformMode.CodingKeys(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return FromToByAction.TransformMode.CodingKeys.stringValue.getter(*v1);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance FromToByAction<A>.TransformMode.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = FromToByAction.TransformMode.CodingKeys.init(stringValue:)(a1, a2);
  *a4 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance FromToByAction<A>.TransformMode.CodingKeys@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = specialized FromToByAction.TransformMode.CodingKeys.init(intValue:)();
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FromToByAction<A>.TransformMode.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FromToByAction<A>.TransformMode.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance FromToByAction<A>.TransformMode.LocalCodingKeys@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = protocol witness for static Equatable.== infix(_:_:) in conformance __RKEntityInteractionsComponent.Registration.RegistrationError();
  *a2 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FromToByAction<A>.TransformMode.LocalCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FromToByAction<A>.TransformMode.LocalCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FromToByAction<A>.TransformMode.ParentCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FromToByAction<A>.TransformMode.ParentCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance FromToByAction<A>.TransformMode.RelativeCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = FromToByAction.TransformMode.RelativeCodingKeys.init(stringValue:)(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FromToByAction<A>.TransformMode.RelativeCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FromToByAction<A>.TransformMode.RelativeCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance FromToByAction<A>.TransformMode.LocalCodingKeys@<X0>(uint64_t a1@<X2>, uint64_t (*a2)(void, void)@<X4>, _BYTE *a3@<X8>)
{
  v4 = a2(*(a1 + 16), *(a1 + 24));

  *a3 = v4 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FromToByAction<A>.TransformMode.SceneCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FromToByAction<A>.TransformMode.SceneCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t FromToByAction.TransformMode.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = type metadata accessor for FromToByAction.TransformMode.RelativeCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v53 = v6;
  v7 = type metadata accessor for KeyedEncodingContainer();
  v55 = *(v7 - 8);
  v56 = v7;
  v8 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v54 = &v37 - v9;
  v10 = type metadata accessor for FromToByAction.TransformMode.SceneCodingKeys();
  v11 = swift_getWitnessTable();
  v51 = v10;
  v49 = v11;
  v50 = type metadata accessor for KeyedEncodingContainer();
  v48 = *(v50 - 8);
  v12 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v47 = &v37 - v13;
  v14 = type metadata accessor for FromToByAction.TransformMode.LocalCodingKeys();
  v15 = swift_getWitnessTable();
  v46 = v14;
  v44 = v15;
  v45 = type metadata accessor for KeyedEncodingContainer();
  v43 = *(v45 - 8);
  v16 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v42 = &v37 - v17;
  type metadata accessor for FromToByAction.TransformMode.ParentCodingKeys();
  v40 = swift_getWitnessTable();
  v41 = type metadata accessor for KeyedEncodingContainer();
  v39 = *(v41 - 8);
  v18 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v20 = &v37 - v19;
  type metadata accessor for FromToByAction.TransformMode.CodingKeys();
  swift_getWitnessTable();
  v21 = type metadata accessor for KeyedEncodingContainer();
  v57 = *(v21 - 8);
  v58 = v21;
  v22 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v37 - v23;
  v25 = v2[1];
  v38 = *v2;
  v37 = v25;
  v26 = *(v2 + 16);
  v27 = a1;
  v28 = a1[3];
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(v27, v28);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v26 == 253)
  {
    LOBYTE(v59) = 2;
    v34 = v47;
    v33 = v58;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v48 + 8))(v34, v50);
    return (*(v57 + 8))(v24, v33);
  }

  if (v26 == 254)
  {
    LOBYTE(v59) = 1;
    v32 = v42;
    v33 = v58;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v43 + 8))(v32, v45);
    return (*(v57 + 8))(v24, v33);
  }

  v30 = v58;
  if (v26 == 255)
  {
    LOBYTE(v59) = 0;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v39 + 8))(v20, v41);
  }

  else
  {
    LOBYTE(v59) = 3;
    v35 = v54;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v59 = v38;
    v60 = v37;
    v61 = v26 & 1;
    lazy protocol witness table accessor for type ActionEntityResolution and conformance ActionEntityResolution();
    v36 = v56;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v55 + 8))(v35, v36);
  }

  return (*(v57 + 8))(v24, v30);
}

uint64_t FromToByAction.TransformMode.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v73 = a3;
  v5 = type metadata accessor for FromToByAction.TransformMode.RelativeCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v72 = v5;
  v56 = type metadata accessor for KeyedDecodingContainer();
  v63 = *(v56 - 8);
  v6 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v68 = &v52 - v7;
  v8 = type metadata accessor for FromToByAction.TransformMode.SceneCodingKeys();
  v69 = swift_getWitnessTable();
  v70 = v8;
  v62 = type metadata accessor for KeyedDecodingContainer();
  v61 = *(v62 - 8);
  v9 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v75 = &v52 - v10;
  v11 = type metadata accessor for FromToByAction.TransformMode.LocalCodingKeys();
  v66 = swift_getWitnessTable();
  v67 = v11;
  v60 = type metadata accessor for KeyedDecodingContainer();
  v59 = *(v60 - 8);
  v12 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v65 = &v52 - v13;
  v14 = type metadata accessor for FromToByAction.TransformMode.ParentCodingKeys();
  v64 = swift_getWitnessTable();
  v58 = type metadata accessor for KeyedDecodingContainer();
  v57 = *(v58 - 8);
  v15 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v17 = &v52 - v16;
  type metadata accessor for FromToByAction.TransformMode.CodingKeys();
  swift_getWitnessTable();
  v74 = type metadata accessor for KeyedDecodingContainer();
  v76 = *(v74 - 8);
  v18 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v20 = &v52 - v19;
  v21 = a1;
  v23 = a1[3];
  v22 = a1[4];
  v82 = v21;
  __swift_project_boxed_opaque_existential_1(v21, v23);
  v24 = v77;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v24)
  {
    v53 = v17;
    v54 = v14;
    v25 = v75;
    v77 = a2;
    v55 = 0;
    v26 = v74;
    v27 = v20;
    *&v78 = KeyedDecodingContainer.allKeys.getter();
    type metadata accessor for Array();
    swift_getWitnessTable();
    *&v80 = ArraySlice.init<A>(_:)();
    *(&v80 + 1) = v28;
    *&v81 = v29;
    *(&v81 + 1) = v30;
    type metadata accessor for ArraySlice();
    swift_getWitnessTable();
    Collection<>.popFirst()();
    v31 = v78;
    v32 = v26;
    if (v78 == 4 || (v52 = v80, v78 = v80, v79 = v81, (Collection.isEmpty.getter() & 1) == 0))
    {
      v38 = type metadata accessor for DecodingError();
      swift_allocError();
      v40 = v39;
      v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
      *v40 = type metadata accessor for FromToByAction.TransformMode();
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v38 - 8) + 104))(v40, *MEMORY[0x1E69E6AF8], v38);
      swift_willThrow();
      (*(v76 + 8))(v27, v32);
    }

    else
    {
      if (v31 > 1)
      {
        v43 = v27;
        if (v31 != 2)
        {
          LOBYTE(v78) = 3;
          v48 = v68;
          v49 = v55;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v37 = v73;
          v50 = v76;
          if (!v49)
          {
            lazy protocol witness table accessor for type ActionEntityResolution and conformance ActionEntityResolution();
            v51 = v56;
            KeyedDecodingContainer.decode<A>(_:forKey:)();
            (*(v63 + 8))(v48, v51);
            (*(v50 + 8))(v43, v26);
            swift_unknownObjectRelease();
            v35 = v78;
            v36 = v79;
            goto LABEL_21;
          }

          (*(v76 + 8))(v27, v26);
          goto LABEL_9;
        }

        LOBYTE(v78) = 2;
        v44 = v55;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v37 = v73;
        v45 = v76;
        if (!v44)
        {
          (*(v61 + 8))(v25, v62);
          (*(v45 + 8))(v27, v32);
          swift_unknownObjectRelease();
          v35 = 0uLL;
          v36 = -3;
          goto LABEL_21;
        }
      }

      else if (v31)
      {
        LOBYTE(v78) = 1;
        v46 = v65;
        v47 = v55;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v47)
        {
          (*(v59 + 8))(v46, v60);
          (*(v76 + 8))(v27, v32);
          swift_unknownObjectRelease();
          v35 = 0uLL;
          v36 = -2;
          v37 = v73;
          goto LABEL_21;
        }
      }

      else
      {
        LOBYTE(v78) = 0;
        v33 = v53;
        v34 = v55;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v34)
        {
          (*(v57 + 8))(v33, v58);
          (*(v76 + 8))(v27, v32);
          swift_unknownObjectRelease();
          v35 = 0uLL;
          v36 = -1;
          v37 = v73;
LABEL_21:
          *v37 = v35;
          *(v37 + 16) = v36;
          return __swift_destroy_boxed_opaque_existential_1(v82);
        }
      }

      (*(v76 + 8))(v27, v32);
    }

LABEL_9:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v82);
}

uint64_t (*FromToByAction.isAdditive.modify(uint64_t a1, uint64_t a2))(void, void)
{
  result = destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError;
  v4 = v2 + *(a2 + 52);
  return result;
}

uint64_t FromToByAction.init(from:to:timing:isAdditive:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v28 = a6;
  v27 = a4;
  v26 = a1;
  v11 = type metadata accessor for Optional();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v25 - v17;
  v20 = *a3;
  v19 = *(a3 + 8);
  v21 = *(a3 + 16);
  LOBYTE(a3) = *(a3 + 20);
  v22 = *(a5 - 8);
  (*(v22 + 32))(&v25 - v17, a2, a5, v16);
  v23 = *(v22 + 56);
  v23(v18, 0, 1, a5);
  v23(v14, 1, 1, a5);
  v32[0] = 0;
  v32[1] = 0;
  v33 = -3;
  v29[0] = v20;
  v29[1] = v19;
  v30 = v21;
  v31 = a3;
  return FromToByAction.init(from:to:by:internalMode:timing:isAdditive:)(v26, v18, v14, v32, v29, v27, a5, v28, a7);
}

uint64_t FromToByAction.init(from:to:by:internalMode:timing:isAdditive:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v15 = *a4;
  v16 = a4[1];
  v27 = a5[1];
  v28 = *a5;
  v26 = *(a5 + 4);
  v24 = *(a4 + 16);
  v25 = *(a5 + 20);
  v17 = type metadata accessor for FromToByAction();
  *(a9 + v17[14]) = 1;
  v18 = (a9 + v17[15]);
  *v18 = a7;
  v18[1] = a8;
  v19 = type metadata accessor for Optional();
  v20 = *(*(v19 - 8) + 32);
  v20(a9, a1, v19);
  v20(a9 + v17[9], a2, v19);
  result = (v20)(a9 + v17[10], a3, v19);
  v22 = a9 + v17[12];
  *v22 = v15;
  *(v22 + 8) = v16;
  *(v22 + 16) = v24;
  v23 = a9 + v17[11];
  *v23 = v28;
  *(v23 + 8) = v27;
  *(v23 + 16) = v26;
  *(v23 + 20) = v25;
  *(a9 + v17[13]) = a6;
  return result;
}

uint64_t FromToByAction.init(from:by:timing:isAdditive:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v28 = a6;
  v27 = a4;
  v24 = a2;
  v25 = a7;
  v26 = a1;
  v9 = type metadata accessor for Optional();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - v15;
  v18 = *a3;
  v17 = *(a3 + 8);
  v19 = *(a3 + 16);
  LOBYTE(a3) = *(a3 + 20);
  v20 = *(a5 - 8);
  v21 = *(v20 + 56);
  v21(&v23 - v15, 1, 1, a5, v14);
  (*(v20 + 32))(v12, v24, a5);
  (v21)(v12, 0, 1, a5);
  v32[0] = 0;
  v32[1] = 0;
  v33 = -3;
  v29[0] = v18;
  v29[1] = v17;
  v30 = v19;
  v31 = a3;
  return FromToByAction.init(from:to:by:internalMode:timing:isAdditive:)(v26, v16, v12, v32, v29, v27, a5, v28, v25);
}

uint64_t FromToByAction.init(from:timing:isAdditive:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v29 = a5;
  v28 = a3;
  v27 = a6;
  v9 = type metadata accessor for Optional();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v26 - v18;
  v21 = *a2;
  v20 = *(a2 + 8);
  v22 = *(a2 + 16);
  LOBYTE(a2) = *(a2 + 20);
  v23 = *(a4 - 8);
  (*(v23 + 32))(&v26 - v18, a1, a4, v17);
  v24 = *(v23 + 56);
  v24(v19, 0, 1, a4);
  v24(v15, 1, 1, a4);
  v24(v12, 1, 1, a4);
  v33[0] = 0;
  v33[1] = 0;
  v34 = -3;
  v30[0] = v21;
  v30[1] = v20;
  v31 = v22;
  v32 = a2;
  return FromToByAction.init(from:to:by:internalMode:timing:isAdditive:)(v19, v15, v12, v33, v30, v28, a4, v29, v27);
}

uint64_t FromToByAction.init(to:by:timing:isAdditive:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v33 = a6;
  v32 = a4;
  v29 = a1;
  v30 = a2;
  v31 = a7;
  v9 = type metadata accessor for Optional();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v26 - v18;
  v20 = *a3;
  v27 = *(a3 + 8);
  v28 = v20;
  v21 = *(a3 + 16);
  LOBYTE(a3) = *(a3 + 20);
  v22 = *(a5 - 8);
  v23 = *(v22 + 56);
  v23(&v26 - v18, 1, 1, a5, v17);
  v24 = *(v22 + 32);
  v24(v15, v29, a5);
  (v23)(v15, 0, 1, a5);
  v24(v12, v30, a5);
  (v23)(v12, 0, 1, a5);
  v37[0] = 0;
  v37[1] = 0;
  v38 = -3;
  v34[0] = v28;
  v34[1] = v27;
  v35 = v21;
  v36 = a3;
  return FromToByAction.init(from:to:by:internalMode:timing:isAdditive:)(v19, v15, v12, v37, v34, v32, a5, v33, v31);
}

uint64_t FromToByAction.animatedValueType.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 60));
  result = *v2;
  v4 = v2[1];
  return result;
}

uint64_t FromToByAction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v44 = a4;
  v48 = type metadata accessor for Optional();
  v46 = *(v48 - 8);
  v7 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v45 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v47 = &v42 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v50 = (&v42 - v12);
  type metadata accessor for FromToByAction.CodingKeys();
  swift_getWitnessTable();
  v52 = type metadata accessor for KeyedDecodingContainer();
  v49 = *(v52 - 8);
  v13 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v15 = &v42 - v14;
  v16 = type metadata accessor for FromToByAction();
  v43 = *(v16 - 8);
  v17 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v42 - v18;
  *(&v42 + *(v20 + 56) - v18) = 1;
  v21 = (&v42 + *(v20 + 60) - v18);
  *v21 = a2;
  v21[1] = a3;
  v51 = a3;
  v23 = a1[3];
  v22 = a1[4];
  v55 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  v53 = v15;
  v24 = v54;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_1(v55);
  }

  v26 = v49;
  v25 = v50;
  type metadata accessor for FromToByAction.TransformMode();
  v59 = 3;
  swift_getWitnessTable();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v27 = a2;
  v28 = v57;
  v29 = &v19[*(v16 + 48)];
  *v29 = v56;
  v29[16] = v28;
  v59 = 4;
  lazy protocol witness table accessor for type AnimationTimingFunction and conformance AnimationTimingFunction();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v30 = v57;
  v31 = v58;
  v32 = &v19[*(v16 + 44)];
  *v32 = v56;
  *(v32 + 4) = v30;
  v32[20] = v31;
  v54 = v19;
  static FromToByAction.decodeValueIfPresent(from:forKey:)(a2, v25);
  v42 = v16;
  v33 = v48;
  v50 = *(v46 + 32);
  v50(v54, v25, v48);
  v34 = v47;
  static FromToByAction.decodeValueIfPresent(from:forKey:)(v27, v47);
  v35 = v54;
  v50(&v54[v42[9]], v34, v33);
  v36 = v45;
  v51 = 0;
  static FromToByAction.decodeValueIfPresent(from:forKey:)(v27, v45);
  v50(&v35[v42[10]], v36, v33);
  LOBYTE(v56) = 5;
  v37 = v52;
  v38 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v26 + 8))(v53, v37);
  v40 = v42;
  v39 = v43;
  v35[v42[13]] = v38 & 1;
  (*(v39 + 16))(v44, v35, v40);
  __swift_destroy_boxed_opaque_existential_1(v55);
  return (*(v39 + 8))(v35, v40);
}

uint64_t FromToByAction.encode(to:)(void *a1, uint64_t a2)
{
  v65 = a2;
  v3 = *(a2 + 16);
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  v59 = v5;
  v60 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v55 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v57 = &v48 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v61 = &v48 - v12;
  v58 = *(v3 - 8);
  v13 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v53 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v54 = &v48 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v56 = &v48 - v19;
  v20 = *(a2 + 24);
  type metadata accessor for FromToByAction.CodingKeys();
  swift_getWitnessTable();
  v21 = type metadata accessor for KeyedEncodingContainer();
  v63 = *(v21 - 8);
  v22 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v48 - v23;
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v26 = v64;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v27 = v26 + v65[12];
  v28 = *(v27 + 8);
  v29 = *(v27 + 16);
  *&v66 = *v27;
  *(&v66 + 1) = v28;
  LOBYTE(v67) = v29;
  v69 = 3;
  outlined copy of FromToByAction<A>.TransformMode<A>(v66, v28, v29);
  type metadata accessor for FromToByAction.TransformMode();
  swift_getWitnessTable();
  v30 = v62;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v30)
  {
    outlined consume of FromToByAction<A>.TransformMode<A>(v66, *(&v66 + 1), v67);
    return (*(v63 + 8))(v24, v21);
  }

  else
  {
    v31 = v61;
    v62 = v20;
    v52 = v3;
    outlined consume of FromToByAction<A>.TransformMode<A>(v66, *(&v66 + 1), v67);
    v32 = (v26 + v65[11]);
    v33 = *(v32 + 4);
    v34 = *(v32 + 20);
    v66 = *v32;
    v67 = v33;
    v68 = v34;
    v69 = 4;
    lazy protocol witness table accessor for type AnimationTimingFunction and conformance AnimationTimingFunction();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v51 = v24;
    v48 = v21;
    v37 = v59;
    v36 = v60;
    v50 = *(v60 + 16);
    v50(v31, v26, v59);
    v38 = v58;
    v39 = v52;
    v49 = *(v58 + 48);
    if (v49(v31, 1, v52) == 1)
    {
      (*(v36 + 8))(v31, v37);
    }

    else
    {
      v40 = v56;
      (*(v38 + 32))(v56, v31, v39);
      static FromToByAction.encodeValue(_:to:forKey:)(v40, v51, 0, v39, v62);
      (*(v38 + 8))(v40, v39);
      v37 = v59;
      v36 = v60;
    }

    v41 = v57;
    v50(v57, v64 + v65[9], v37);
    if (v49(v41, 1, v39) == 1)
    {
      (*(v36 + 8))(v41, v37);
    }

    else
    {
      v42 = v54;
      (*(v38 + 32))(v54, v41, v39);
      static FromToByAction.encodeValue(_:to:forKey:)(v42, v51, 1, v39, v62);
      (*(v38 + 8))(v42, v39);
      v36 = v60;
    }

    v43 = v55;
    v50(v55, v64 + v65[10], v37);
    if (v49(v43, 1, v39) == 1)
    {
      (*(v36 + 8))(v43, v37);
      v44 = v48;
      v45 = v51;
    }

    else
    {
      v46 = v53;
      (*(v38 + 32))(v53, v43, v39);
      v45 = v51;
      static FromToByAction.encodeValue(_:to:forKey:)(v46, v51, 2, v39, v62);
      v44 = v48;
      (*(v38 + 8))(v46, v39);
    }

    v47 = *(v64 + v65[13]);
    LOBYTE(v66) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    return (*(v63 + 8))(v45, v44);
  }
}

uint64_t FromToByAction<>.mode.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 216);
  v3 = *(v1 + 224);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 232);
  *(a1 + 16) = v4;
  return outlined copy of FromToByAction<A>.TransformMode<A>(v2, v3, v4);
}

__n128 FromToByAction<>.init(from:to:mode:timing:isAdditive:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>, __n128 a6@<Q0>, __n128 a7@<Q1>, __n128 a8@<Q2>)
{
  v8 = a2[1].n128_u8[0];
  v9 = *(a3 + 16);
  v10 = *(a3 + 20);
  v12 = *(a1 + 16);
  v13 = *(a1 + 32);
  LOBYTE(v14) = *(a1 + 48);
  *a5 = *a1;
  *(a5 + 16) = v12;
  *(a5 + 32) = v13;
  *(a5 + 48) = v14;
  *(a5 + 64) = a6;
  *(a5 + 80) = a7;
  *(a5 + 96) = a8;
  *(a5 + 112) = 0;
  *(a5 + 128) = 0u;
  *(a5 + 144) = 0u;
  *(a5 + 160) = 0u;
  *(a5 + 176) = 1;
  *(a5 + 192) = *a3;
  *(a5 + 208) = v9;
  *(a5 + 212) = v10;
  result = *a2;
  *(a5 + 216) = *a2;
  *(a5 + 232) = v8;
  *(a5 + 233) = a4;
  *(a5 + 234) = 1;
  *(a5 + 240) = &type metadata for Transform;
  *(a5 + 248) = &protocol witness table for Transform;
  return result;
}

__n128 FromToByAction<>.init(from:by:mode:timing:isAdditive:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>, __n128 a6@<Q0>, __n128 a7@<Q1>, __n128 a8@<Q2>)
{
  *&v12[15] = *a1;
  v8 = a2[1].n128_u8[0];
  v9 = *(a3 + 16);
  v10 = *(a3 + 20);
  *&v12[31] = *(a1 + 16);
  *&v12[47] = *(a1 + 32);
  v12[63] = *(a1 + 48);
  *a5 = a6;
  *(a5 + 16) = a7;
  *(a5 + 32) = a8;
  *(a5 + 48) = 0;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 96) = 0u;
  *(a5 + 112) = 1;
  *(a5 + 113) = *v12;
  *(a5 + 129) = *&v12[16];
  *(a5 + 145) = *&v12[32];
  *(a5 + 161) = *&v12[48];
  *(a5 + 192) = *a3;
  *(a5 + 208) = v9;
  *(a5 + 212) = v10;
  result = *a2;
  *(a5 + 216) = *a2;
  *(a5 + 232) = v8;
  *(a5 + 233) = a4;
  *(a5 + 234) = 1;
  *(a5 + 240) = &type metadata for Transform;
  *(a5 + 248) = &protocol witness table for Transform;
  return result;
}

__n128 FromToByAction<>.init(to:by:mode:timing:isAdditive:)@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, __n128 a5@<Q0>, __n128 a6@<Q1>, __n128 a7@<Q2>, __n128 a8@<Q3>, __n128 a9@<Q4>, __n128 a10@<Q5>)
{
  v10 = a1[1].n128_u8[0];
  v11 = *(a2 + 16);
  v12 = *(a2 + 20);
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  *(a4 + 48) = 1;
  *(a4 + 64) = a5;
  *(a4 + 80) = a6;
  *(a4 + 96) = a7;
  *(a4 + 112) = 0;
  *(a4 + 128) = a8;
  *(a4 + 144) = a9;
  *(a4 + 160) = a10;
  *(a4 + 176) = 0;
  *(a4 + 192) = *a2;
  *(a4 + 208) = v11;
  *(a4 + 212) = v12;
  result = *a1;
  *(a4 + 216) = *a1;
  *(a4 + 232) = v10;
  *(a4 + 233) = a3;
  *(a4 + 234) = 1;
  *(a4 + 240) = &type metadata for Transform;
  *(a4 + 248) = &protocol witness table for Transform;
  return result;
}

__n128 FromToByAction<>.init(by:timing:isAdditive:)@<Q0>(__n128 *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, __n128 a4@<Q0>, __n128 a5@<Q1>, __n128 a6@<Q2>)
{
  v6 = a1[1].n128_u32[0];
  v7 = a1[1].n128_u8[4];
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  *(a3 + 48) = 1;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 1;
  *(a3 + 128) = a4;
  *(a3 + 144) = a5;
  *(a3 + 160) = a6;
  *(a3 + 176) = 0;
  result = *a1;
  *(a3 + 192) = *a1;
  *(a3 + 208) = v6;
  *(a3 + 212) = v7;
  *(a3 + 216) = 0;
  *(a3 + 224) = 0;
  *(a3 + 232) = -3;
  *(a3 + 233) = a2;
  *(a3 + 234) = 1;
  *(a3 + 240) = &type metadata for Transform;
  *(a3 + 248) = &protocol witness table for Transform;
  return result;
}

uint64_t FromToByActionHandler.actionUpdated(event:)(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 16);
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - v11;
  v13 = *(v4 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v32 - v19;
  v21 = *(v2 + 24);
  type metadata accessor for FromToByAction();
  result = type metadata accessor for ActionEvent();
  v23 = a1 + *(result + 76);
  if ((*(v23 + 8) & 1) == 0)
  {
    v35 = result;
    v24 = *v23;
    v25 = fmin(fabs(*v23 + -1.0), *v23);
    v34 = v25 <= 0.0001;
    if (v25 <= 0.0001)
    {
      v33 = v2;
      v26 = v36;
      (*(v6 + 16))(v12, v36, v5);
      if ((*(v13 + 48))(v12, 1, v4) == 1)
      {
        (*(v6 + 8))(v12, v5);
      }

      else
      {
        (*(v13 + 32))(v20, v12, v4);
        if (vabdd_f64(*(v26 + *(v33 + 36)), v24) <= 0.0001)
        {
          ActionEvent.animationState.getter(v35, v37);
          v30 = v38;
          if (v38)
          {
            v31 = v39;
            __swift_project_boxed_opaque_existential_1(v37, v38);
            (*(v31 + 64))(v20, v4, v30, v31);
            (*(v13 + 8))(v20, v4);
            result = __swift_destroy_boxed_opaque_existential_1(v37);
          }

          else
          {
            (*(v13 + 8))(v20, v4);
            result = outlined destroy of BodyTrackingComponent?(v37, &_s17RealityFoundation22AnimationStateProtocol_pSgMd, &_s17RealityFoundation22AnimationStateProtocol_pSgMR);
          }

          v29 = v36;
          v2 = v33;
          goto LABEL_19;
        }

        (*(v13 + 8))(v20, v4);
      }

      v2 = v33;
    }

    FromToByActionHandler.evaluateResult(_:)(a1, v2, v9);
    if ((*(v13 + 48))(v9, 1, v4) == 1)
    {
      return (*(v6 + 8))(v9, v5);
    }

    v33 = *(v13 + 32);
    (v33)(v17, v9, v4);
    ActionEvent.animationState.getter(v35, v37);
    v27 = v38;
    if (v38)
    {
      v28 = v39;
      __swift_project_boxed_opaque_existential_1(v37, v38);
      (*(v28 + 64))(v17, v4, v27, v28);
      __swift_destroy_boxed_opaque_existential_1(v37);
      if (v34)
      {
LABEL_12:
        v29 = v36;
        (*(v6 + 8))(v36, v5);
        (v33)(v29, v17, v4);
        result = (*(v13 + 56))(v29, 0, 1, v4);
LABEL_19:
        *(v29 + *(v2 + 36)) = v24;
        return result;
      }
    }

    else
    {
      outlined destroy of BodyTrackingComponent?(v37, &_s17RealityFoundation22AnimationStateProtocol_pSgMd, &_s17RealityFoundation22AnimationStateProtocol_pSgMR);
      if (v34)
      {
        goto LABEL_12;
      }
    }

    (*(v13 + 8))(v17, v4);
    v29 = v36;
    (*(v6 + 8))(v36, v5);
    result = (*(v13 + 56))(v29, 1, 1, v4);
    goto LABEL_19;
  }

  return result;
}

uint64_t FromToByActionHandler.evaluateResult(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v99 = a3;
  v5 = *(a2 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v90 = type metadata accessor for Optional();
  v89 = *(v90 - 8);
  v7 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v90);
  v96 = &v77 - v8;
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v88 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v77 - v14;
  v16 = type metadata accessor for Optional();
  v91 = *(v16 - 8);
  v92 = v16;
  v17 = *(v91 + 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v77 - v18;
  v20 = *(v5 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v97 = &v77 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v98 = &v77 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v77 - v30;
  v94 = a2;
  v32 = *(a2 + 24);
  v93 = type metadata accessor for FromToByAction();
  v33 = type metadata accessor for ActionEvent();
  v34 = a1 + *(v33 + 76);
  if (*(v34 + 8) == 1)
  {
    return (*(v20 + 56))(v99, 1, 1, v5);
  }

  v82 = v24;
  v87 = v9;
  v36 = *v34;
  v80 = v33;
  ActionEvent.animationState.getter(v33, v100);
  v37 = v101;
  v84 = v15;
  v86 = a1;
  v81 = v32;
  if (v101)
  {
    v85 = v31;
    v83 = TupleTypeMetadata2;
    v38 = v102;
    __swift_project_boxed_opaque_existential_1(v100, v101);
    v78 = *(v38 + 24);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v40 = type metadata accessor for Optional();
    v79 = &v77;
    v77 = v40;
    v41 = *(v40 - 8);
    v42 = *(v41 + 64);
    v43 = MEMORY[0x1EEE9AC00](v40);
    v45 = &v77 - v44;
    v78(v37, v38, v43);
    v46 = *(AssociatedTypeWitness - 8);
    if ((*(v46 + 48))(v45, 1, AssociatedTypeWitness) == 1)
    {
      (*(v41 + 8))(v45, v77);
      AssociatedConformanceWitness = 0;
      v103 = 0u;
      v104 = 0u;
    }

    else
    {
      *(&v104 + 1) = AssociatedTypeWitness;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v103);
      (*(v46 + 32))(boxed_opaque_existential_1, v45, AssociatedTypeWitness);
    }

    __swift_destroy_boxed_opaque_existential_1(v100);
    v47 = v99;
    TupleTypeMetadata2 = v83;
    v31 = v85;
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(v100, &_s17RealityFoundation22AnimationStateProtocol_pSgMd, &_s17RealityFoundation22AnimationStateProtocol_pSgMR);
    v103 = 0u;
    v104 = 0u;
    AssociatedConformanceWitness = 0;
    v47 = v99;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimatableData_pSgMd, &_s17RealityFoundation14AnimatableData_pSgMR);
  v49 = swift_dynamicCast();
  v50 = *(v20 + 56);
  if (v49)
  {
    v50(v19, 0, 1, v5);
    v51 = *(v20 + 32);
    v51(v31, v19, v5);
    v52 = v96;
    FromToByActionHandler.getStartEnd(event:base:)(v86, v31, v94, v96);
    v53 = v87;
    if ((*(v87 + 48))(v52, 1, TupleTypeMetadata2) == 1)
    {
      (*(v20 + 8))(v31, v5);
      (*(v89 + 8))(v52, v90);
      v54 = v99;
      v55 = 1;
    }

    else
    {
      v95 = v20;
      v85 = v31;
      v56 = v52;
      v57 = v84;
      (*(v53 + 32))(v84, v56, TupleTypeMetadata2);
      v58 = v88;
      (*(v53 + 16))(v88, v57, TupleTypeMetadata2);
      v59 = *(TupleTypeMetadata2 + 48);
      v51(v98, v58, v5);
      v51(v97, &v58[v59], v5);
      v60 = v86 + *(v80 + 36);
      v61 = (v60 + *(v93 + 44));
      v62 = *(v61 + 4);
      v63 = *(v61 + 20);
      v64 = v36;
      v103 = *v61;
      LODWORD(v104) = v62;
      BYTE4(v104) = v63;
      AnimationTimingFunction.coreEasingFunction.getter();
      v66 = *(v65 + 16);
      v91 = v51;
      v92 = v20 + 32;
      if (v66)
      {
        REEasingFunctionEvaluateEx();
        v64 = v67;
      }

      v68 = v82;

      v69 = v81;
      v70 = v68;
      v72 = v97;
      v71 = v98;
      (*(v81 + 40))(v97, v5, v81, v64);
      if (*(v60 + *(v93 + 52)) == 1)
      {
        v73 = v85;
        (*(v69 + 32))(v68, v5, v69);
        v74 = *(v95 + 8);
        v74(v70, v5);
        v74(v72, v5);
        v74(v71, v5);
        (*(v87 + 8))(v84, TupleTypeMetadata2);
        v74(v73, v5);
        v54 = v99;
      }

      else
      {
        v75 = *(v95 + 8);
        v75(v72, v5);
        v75(v71, v5);
        (*(v87 + 8))(v84, TupleTypeMetadata2);
        v75(v85, v5);
        v76 = v99;
        v91(v99, v70, v5);
        v54 = v76;
      }

      v55 = 0;
    }

    return v50(v54, v55, 1, v5);
  }

  else
  {
    v50(v19, 1, 1, v5);
    (*(v91 + 1))(v19, v92);
    return v50(v47, 1, 1, v5);
  }
}

uint64_t FromToByActionHandler.getStartEnd(event:base:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v133 = a4;
  v130 = a2;
  v5 = *(a3 + 16);
  v7 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(*(TupleTypeMetadata2 - 8) + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v115 = &v112 - v9;
  v138 = *(v5 - 8);
  v10 = *(v138 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v114 = &v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v129 = &v112 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v112 = &v112 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v119 = &v112 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v140 = &v112 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v125 = &v112 - v22;
  v131 = a3;
  v23 = *(a3 + 24);
  v136 = v5;
  v117 = v23;
  v24 = type metadata accessor for FromToByAction();
  v25 = type metadata accessor for ActionEvent();
  v120 = *(v25 - 8);
  v26 = *(v120 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v121 = &v112 - v27;
  v28 = *(a3 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v112 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(v7 - 8);
  v34 = v33[8];
  MEMORY[0x1EEE9AC00](v35);
  v128 = &v112 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v127 = &v112 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v113 = &v112 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v118 = &v112 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v126 = &v112 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v112 - v46;
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v112 - v49;
  v52 = MEMORY[0x1EEE9AC00](v51);
  v122 = v53;
  v123 = a1;
  v54 = a1 + *(v53 + 36);
  v134 = v33;
  v55 = v33[2];
  v137 = &v112 - v56;
  v55(&v112 - v56, v54, v7, v52);
  v57 = v54 + *(v24 + 36);
  v139 = v50;
  (v55)(v50, v57, v7);
  v58 = v54 + *(v24 + 40);
  v135 = v47;
  v59 = v7;
  v60 = v33 + 2;
  v141 = v59;
  (v55)(v47, v58);
  (*(v28 + 16))(v32, v132, v131);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVy0A3Kit9TransformVGMd, &_s17RealityFoundation21FromToByActionHandlerVy0A3Kit9TransformVGMR);
  v61 = swift_dynamicCast();
  v132 = v55;
  if (v61)
  {
    (*(v120 + 16))(v121, v123, v122);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation11ActionEventVyAA08FromToByC0Vy0A3Kit9TransformVGGMd, &_s17RealityFoundation11ActionEventVyAA08FromToByC0Vy0A3Kit9TransformVGGMR);
    swift_dynamicCast();
    memcpy(v145, v146, sizeof(v145));
    v62 = v138;
    (*(v138 + 16))(v125, v130, v136);
    swift_dynamicCast();
    specialized FromToByActionHandler<>.getFromTo(event:base:)(v145, v148, v142, v143, v144);
    memcpy(v147, v145, 0x1D0uLL);
    outlined destroy of BodyTrackingComponent?(v147, &_s17RealityFoundation11ActionEventVyAA08FromToByC0Vy0A3Kit9TransformVGGMd, &_s17RealityFoundation11ActionEventVyAA08FromToByC0Vy0A3Kit9TransformVGGMR);
    v63 = v134;
    v64 = v134[1];
    v65 = v139;
    v66 = v141;
    v64(v139, v141);
    v67 = v137;
    v64(v137, v66);
    if (v154)
    {
      v64(v135, v141);
      v68 = swift_getTupleTypeMetadata2();
      return (*(*(v68 - 8) + 56))(v133, 1, 1, v68);
    }

    v146[0] = v148[0];
    v146[1] = v148[1];
    v146[2] = v148[2];
    LOBYTE(v146[3]) = v149 & 1;
    v146[4] = v150;
    v146[5] = v151;
    v146[6] = v152;
    LOBYTE(v146[7]) = v153 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9TransformVSg4from_AD2totMd, &_s10RealityKit9TransformVSg4from_AD2totMR);
    v70 = v60;
    v72 = v115;
    v71 = TupleTypeMetadata2;
    swift_dynamicCast();
    v131 = *(v71 + 48);
    v73 = v65;
    v74 = v63[4];
    v75 = v141;
    v74(v67, v72, v141);
    v76 = &v72[v131];
    v60 = v70;
    v74(v73, v76, v75);
    v55 = v132;
  }

  else
  {
    v67 = v137;
    v62 = v138;
    v63 = v134;
  }

  v77 = v126;
  (v55)(v126, v67, v141);
  v78 = *(v62 + 48);
  v79 = v136;
  v80 = v78(v77, 1, v136) == 1;
  v124 = v60;
  v131 = v62 + 48;
  if (v80)
  {
    v126 = v63[1];
    (v126)(v77, v141);
    v81 = v118;
    (v55)();
    if (v78(v81, 1, v79) == 1)
    {
      v84 = v78;
    }

    else
    {
      v85 = *(v62 + 32);
      v85(v119, v81, v79);
      v81 = v113;
      (v55)(v113, v135, v141);
      v84 = v78;
      if (v78(v81, 1, v79) != 1)
      {
        v86 = v112;
        v85(v112, v81, v79);
        v87 = v117;
        v88 = v125;
        (*(v117 + 16))(v79, v117);
        v89 = v119;
        (*(v87 + 24))(v88, v79, v87);
        v90 = *(v138 + 8);
        v90(v88, v79);
        v90(v86, v79);
        v90(v89, v79);
        v63 = v134;
        goto LABEL_14;
      }

      v62 = v138;
      (*(v138 + 8))(v119, v79);
      v63 = v134;
    }

    (v126)(v81, v141);
    (*(v62 + 16))(v140, v130, v79);
LABEL_14:
    v83 = v127;
    v82 = v128;
    goto LABEL_15;
  }

  (*(v62 + 32))(v140, v77, v79);
  v83 = v127;
  v82 = v128;
  v84 = v78;
LABEL_15:
  v91 = v139;
  v92 = v132;
  v132(v83, v139, v141);
  v93 = v84(v83, 1, v79);
  v94 = v84;
  v95 = v63[1];
  if (v93 == 1)
  {
    v96 = v83;
    v97 = v141;
    v134 = v94;
    v95(v96, v141);
    v98 = v135;
    v92(v82, v135, v97);
    if ((v134)(v82, 1, v79) == 1)
    {
      v99 = v82;
      v100 = v141;
      v95(v98, v141);
      v95(v139, v100);
      v95(v137, v100);
      v95(v99, v100);
      v101 = v138;
      v102 = v129;
      (*(v138 + 16))(v129, v130, v79);
      v103 = *(v101 + 32);
    }

    else
    {
      v105 = v138;
      v103 = *(v138 + 32);
      v106 = v114;
      v103(v114, v82, v79);
      v107 = v129;
      (*(v117 + 24))(v106, v79);
      (*(v105 + 8))(v106, v79);
      v108 = v141;
      v95(v135, v141);
      v95(v139, v108);
      v95(v137, v108);
      v102 = v107;
    }
  }

  else
  {
    v104 = v141;
    v95(v135, v141);
    v95(v91, v104);
    v95(v137, v104);
    v103 = *(v138 + 32);
    v102 = v129;
    v103(v129, v83, v79);
  }

  v109 = swift_getTupleTypeMetadata2();
  v110 = *(v109 + 48);
  v111 = v133;
  v103(v133, v140, v79);
  v103((v111 + v110), v102, v79);
  return (*(*(v109 - 8) + 56))(v111, 0, 1, v109);
}

unint64_t FromToByAction.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of FromToByAction.CodingKeys.init(rawValue:), v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t FromToByAction.CodingKeys.rawValue.getter(unsigned __int8 a1)
{
  v1 = 1836020326;
  v2 = 0x726F66736E617274;
  v3 = 0x7546676E696D6974;
  if (a1 != 4)
  {
    v3 = 0x6974696464417369;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  v4 = 28532;
  if (a1 != 1)
  {
    v4 = 31074;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance FromToByAction<A>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance FromToByAction<A>.CodingKeys(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance FromToByAction<A>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t protocol witness for Hashable._rawHashValue(seed:) in conformance FromToByAction<A>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance FromToByAction<A>.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = FromToByAction.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance FromToByAction<A>.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = FromToByAction.CodingKeys.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance FromToByAction<A>.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = FromToByAction.CodingKeys.init(stringValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance FromToByAction<A>.CodingKeys@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = specialized FromToByAction.CodingKeys.init(intValue:)();
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FromToByAction<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FromToByAction<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

Swift::Int FromToByAction.DecodingErrors.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](0);
  return Hasher._finalize()();
}

uint64_t static FromToByAction.decodeValueIfPresent(from:forKey:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  type metadata accessor for FromToByAction.CodingKeys();
  swift_getWitnessTable();
  type metadata accessor for KeyedDecodingContainer();
  if (KeyedDecodingContainer.contains(_:)())
  {
    result = static FromToByAction.decodeValue(from:forKey:)();
    if (v2)
    {
      return result;
    }

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  return (*(*(a1 - 8) + 56))(a2, v6, 1, a1);
}

uint64_t static FromToByAction.encodeValue(_:to:forKey:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v50 = a5;
  v49 = a3;
  v52 = a2;
  v7 = *(a4 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v44 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v45 = &v42 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v46 = &v42 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v47 = &v42 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v48 = &v42 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v42 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v42 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v42 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v42 - v28;
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = &v42 - v32;
  v51 = v7;
  v34 = *(v7 + 16);
  v34(&v42 - v32, a1, v35, v31);
  if (swift_dynamicCast())
  {
    (v34)(v29, a1, a4);
    swift_dynamicCast();
    LOBYTE(v53) = v49;
    type metadata accessor for FromToByAction.CodingKeys();
    swift_getWitnessTable();
    type metadata accessor for KeyedEncodingContainer();
    KeyedEncodingContainer.encode(_:forKey:)();
    return (*(v51 + 8))(v33, a4);
  }

  v43 = a1;
  v36 = v49;
  if (swift_dynamicCast())
  {
    (v34)(v26, v43, a4);
    swift_dynamicCast();
    LOBYTE(v53) = v36;
    type metadata accessor for FromToByAction.CodingKeys();
    swift_getWitnessTable();
    type metadata accessor for KeyedEncodingContainer();
    KeyedEncodingContainer.encode(_:forKey:)();
    return (*(v51 + 8))(v33, a4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2VySfGMd, &_ss5SIMD2VySfGMR);
  if (swift_dynamicCast())
  {
    (v34)(v23, v43, a4);
    swift_dynamicCast();
    *&v53 = v56;
    v59 = v36;
    type metadata accessor for FromToByAction.CodingKeys();
    swift_getWitnessTable();
    type metadata accessor for KeyedEncodingContainer();
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD2<Float> and conformance SIMD2<A>, &_ss5SIMD2VySfGMd, &_ss5SIMD2VySfGMR);
LABEL_11:
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    return (*(v51 + 8))(v33, a4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
  v37 = v34;
  if (swift_dynamicCast())
  {
    (v34)(v20, v43, a4);
    swift_dynamicCast();
    v53 = v56;
    v59 = v36;
    type metadata accessor for FromToByAction.CodingKeys();
    swift_getWitnessTable();
    type metadata accessor for KeyedEncodingContainer();
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>, &_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    goto LABEL_11;
  }

  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR);
  if (swift_dynamicCast())
  {
    v37(v48, v43, a4);
    swift_dynamicCast();
    v53 = v56;
    v59 = v36;
    type metadata accessor for FromToByAction.CodingKeys();
    swift_getWitnessTable();
    type metadata accessor for KeyedEncodingContainer();
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD4<Float> and conformance SIMD4<A>, &_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR);
    goto LABEL_11;
  }

  type metadata accessor for simd_quatf(0);
  v40 = swift_dynamicCast();
  v41 = v43;
  if (v40)
  {
    v48 = v38;
    v37(v47, v43, a4);
    swift_dynamicCast();
    v53 = v56;
    v59 = v36;
    type metadata accessor for FromToByAction.CodingKeys();
    swift_getWitnessTable();
    type metadata accessor for KeyedEncodingContainer();
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD4<Float> and conformance SIMD4<A>, &_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR);
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    v37(v46, v41, a4);
    swift_dynamicCast();
    v53 = v56;
    v54 = v57;
    v55 = v58;
    v59 = v36;
    type metadata accessor for FromToByAction.CodingKeys();
    swift_getWitnessTable();
    type metadata accessor for KeyedEncodingContainer();
    lazy protocol witness table accessor for type Transform and conformance Transform();
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {

    v37(v45, v41, a4);
    swift_dynamicCast();
    *&v53 = v56;
    v59 = v36;
    type metadata accessor for FromToByAction.CodingKeys();
    swift_getWitnessTable();
    type metadata accessor for KeyedEncodingContainer();
    lazy protocol witness table accessor for type JointTransforms and conformance JointTransforms();
  }

  else
  {
    if (!swift_dynamicCast())
    {
      type metadata accessor for FromToByAction.DecodingErrors();
      swift_getWitnessTable();
      swift_allocError();
      swift_willThrow();
      return (*(v51 + 8))(v33, a4);
    }

    v37(v44, v41, a4);
    swift_dynamicCast();
    *&v53 = v56;
    v59 = v36;
    type metadata accessor for FromToByAction.CodingKeys();
    swift_getWitnessTable();
    type metadata accessor for KeyedEncodingContainer();
    lazy protocol witness table accessor for type BlendShapeWeights and conformance BlendShapeWeights();
  }

  KeyedEncodingContainer.encode<A>(_:forKey:)();

  return (*(v51 + 8))(v33, a4);
}

uint64_t static FromToByAction.decodeValue(from:forKey:)()
{
  if (swift_dynamicCastMetatype())
  {
    type metadata accessor for FromToByAction.CodingKeys();
    swift_getWitnessTable();
    type metadata accessor for KeyedDecodingContainer();
    result = KeyedDecodingContainer.decode(_:forKey:)();
    if (v0)
    {
      return result;
    }

    return swift_dynamicCast();
  }

  if (swift_dynamicCastMetatype())
  {
    type metadata accessor for FromToByAction.CodingKeys();
    swift_getWitnessTable();
    type metadata accessor for KeyedDecodingContainer();
    result = KeyedDecodingContainer.decode(_:forKey:)();
    if (v0)
    {
      return result;
    }

    return swift_dynamicCast();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2VySfGMd, &_ss5SIMD2VySfGMR);
  if (swift_dynamicCastMetatype())
  {
    type metadata accessor for FromToByAction.CodingKeys();
    swift_getWitnessTable();
    type metadata accessor for KeyedDecodingContainer();
    v2 = &lazy protocol witness table cache variable for type SIMD2<Float> and conformance SIMD2<A>;
    v3 = &_ss5SIMD2VySfGMd;
    v4 = &_ss5SIMD2VySfGMR;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    if (swift_dynamicCastMetatype())
    {
      type metadata accessor for FromToByAction.CodingKeys();
      swift_getWitnessTable();
      type metadata accessor for KeyedDecodingContainer();
      v2 = &lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>;
      v3 = &_ss5SIMD3VySfGMd;
      v4 = &_ss5SIMD3VySfGMR;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR);
      if (!swift_dynamicCastMetatype())
      {
        type metadata accessor for simd_quatf(0);
        if (swift_dynamicCastMetatype())
        {
          type metadata accessor for FromToByAction.CodingKeys();
          swift_getWitnessTable();
          type metadata accessor for KeyedDecodingContainer();
          lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD4<Float> and conformance SIMD4<A>, &_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR);
          result = KeyedDecodingContainer.decode<A>(_:forKey:)();
          if (!v0)
          {
            return swift_dynamicCast();
          }
        }

        else if (swift_dynamicCastMetatype())
        {
          type metadata accessor for FromToByAction.CodingKeys();
          swift_getWitnessTable();
          type metadata accessor for KeyedDecodingContainer();
          lazy protocol witness table accessor for type Transform and conformance Transform();
          result = KeyedDecodingContainer.decode<A>(_:forKey:)();
          if (!v0)
          {
            return swift_dynamicCast();
          }
        }

        else if (swift_dynamicCastMetatype())
        {
          type metadata accessor for FromToByAction.CodingKeys();
          swift_getWitnessTable();
          type metadata accessor for KeyedDecodingContainer();
          lazy protocol witness table accessor for type JointTransforms and conformance JointTransforms();
          result = KeyedDecodingContainer.decode<A>(_:forKey:)();
          if (!v0)
          {
            return swift_dynamicCast();
          }
        }

        else
        {
          if (!swift_dynamicCastMetatype())
          {
            type metadata accessor for FromToByAction.DecodingErrors();
            swift_getWitnessTable();
            swift_allocError();
            return swift_willThrow();
          }

          type metadata accessor for FromToByAction.CodingKeys();
          swift_getWitnessTable();
          type metadata accessor for KeyedDecodingContainer();
          lazy protocol witness table accessor for type BlendShapeWeights and conformance BlendShapeWeights();
          result = KeyedDecodingContainer.decode<A>(_:forKey:)();
          if (!v0)
          {
            return swift_dynamicCast();
          }
        }

        return result;
      }

      type metadata accessor for FromToByAction.CodingKeys();
      swift_getWitnessTable();
      type metadata accessor for KeyedDecodingContainer();
      v2 = &lazy protocol witness table cache variable for type SIMD4<Float> and conformance SIMD4<A>;
      v3 = &_ss5SIMD4VySfGMd;
      v4 = &_ss5SIMD4VySfGMR;
    }
  }

  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(v2, v3, v4);
  result = KeyedDecodingContainer.decode<A>(_:forKey:)();
  if (!v0)
  {
    return swift_dynamicCast();
  }

  return result;
}

void type metadata completion function for FromToByAction(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for Optional();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 24);
    type metadata accessor for FromToByAction.TransformMode();
    if (v5 <= 0x3F)
    {
      type metadata accessor for @thick AnimatableData.Type?();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for FromToByAction(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  v9 = *(v4 + 80);
  v10 = v8 + v9;
  v11 = v8 + 15;
  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v12 = ((((v11 + ((v10 + (v10 & ~v9)) & ~v9)) & 0xFFFFFFFFFFFFFFF0) + 54) & 0xFFFFFFFFFFFFFFF0) + 16;
  v13 = a2 - v7;
  v14 = v12 & 0xFFFFFFF0;
  if ((v12 & 0xFFFFFFF0) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = v13 + 1;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *(a1 + v12);
      if (!v18)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v18 = *(a1 + v12);
      if (!v18)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v17 || (v18 = *(a1 + v12)) == 0)
  {
LABEL_33:
    if (v6 < 0x7FFFFFFE)
    {
      v22 = *((((v11 + ((v10 + ((a1 + v10) & ~v9)) & ~v9)) & 0xFFFFFFFFFFFFFFF0) + 54) & 0xFFFFFFFFFFFFFFF0);
      if (v22 >= 0xFFFFFFFF)
      {
        LODWORD(v22) = -1;
      }

      if ((v22 + 1) >= 2)
      {
        return v22;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v21 = (*(v4 + 48))(a1, v5);
      if (v21 >= 2)
      {
        return v21 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v20 = v18 - 1;
  if (v14)
  {
    v20 = 0;
    LODWORD(v14) = *a1;
  }

  return v7 + (v14 | v20) + 1;
}

void storeEnumTagSinglePayload for FromToByAction(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFE)
  {
    v9 = 2147483646;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v10;
  }

  v11 = *(v6 + 80);
  v14 = ((((v10 + 15 + ((v10 + v11 + ((v10 + v11) & ~v11)) & ~v11)) & 0xFFFFFFFFFFFFFFF0) + 54) & 0xFFFFFFFFFFFFFFF0) + 16;
  if (v9 < a3)
  {
    v15 = a3 - v9;
    if (((((v10 + 15 + ((v10 + v11 + ((v10 + v11) & ~v11)) & ~v11)) & 0xFFFFFFF0) + 54) & 0xFFFFFFF0) == 0xFFFFFFF0)
    {
      v16 = v15 + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v5 = v17;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((((v10 + 15 + ((v10 + v11 + ((v10 + v11) & ~v11)) & ~v11)) & 0xFFFFFFF0) + 54) & 0xFFFFFFF0) == 0xFFFFFFF0)
    {
      v18 = a2 - v9;
    }

    else
    {
      v18 = 1;
    }

    if (((((v10 + 15 + ((v10 + v11 + ((v10 + v11) & ~v11)) & ~v11)) & 0xFFFFFFF0) + 54) & 0xFFFFFFF0) != 0xFFFFFFF0)
    {
      v19 = ~v9 + a2;
      v20 = a1;
      bzero(a1, v14);
      a1 = v20;
      *v20 = v19;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v14) = v18;
      }

      else
      {
        *(a1 + v14) = v18;
      }
    }

    else if (v5)
    {
      *(a1 + v14) = v18;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v14) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v14) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v14) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if (v8 < 0x7FFFFFFE)
  {
    v12 = v10 + v11;
    v13 = v10 + 15;
    v25 = ((((v10 + 15 + ((v12 + ((a1 + v12) & ~v11)) & ~v11)) & 0xFFFFFFFFFFFFFFF0) + 54) & 0xFFFFFFFFFFFFFFF0);
    if (a2 > 0x7FFFFFFE)
    {
      *v25 = 0;
      *(((((v13 + ((v12 + ((a1 + v12) & ~v11)) & ~v11)) & 0xFFFFFFFFFFFFFFF0) + 54) & 0xFFFFFFFFFFFFFFF0) + 8) = 0;
      *v25 = a2 - 0x7FFFFFFF;
    }

    else
    {
      *v25 = a2;
    }
  }

  else if (v8 >= a2)
  {
    v26 = *(v6 + 56);

    v26();
  }

  else
  {
    if (v10 <= 3)
    {
      v21 = ~(-1 << (8 * v10));
    }

    else
    {
      v21 = -1;
    }

    if (v10)
    {
      v22 = v21 & (~v8 + a2);
      if (v10 <= 3)
      {
        v23 = v10;
      }

      else
      {
        v23 = 4;
      }

      v24 = a1;
      bzero(a1, v10);
      if (v23 > 2)
      {
        if (v23 == 3)
        {
          *v24 = v22;
          *(v24 + 2) = BYTE2(v22);
        }

        else
        {
          *v24 = v22;
        }
      }

      else if (v23 == 1)
      {
        *v24 = v22;
      }

      else
      {
        *v24 = v22;
      }
    }
  }
}

void type metadata accessor for @thick AnimatableData.Type?()
{
  if (!lazy cache variable for type metadata for @thick AnimatableData.Type?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s17RealityFoundation14AnimatableData_pXmTMd, &_s17RealityFoundation14AnimatableData_pXmTMR);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for @thick AnimatableData.Type?);
    }
  }
}

uint64_t type metadata instantiation function for FromToByAction.TransformMode()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_17RealityFoundation14FromToByActionV13TransformModeOyx_G(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for FromToByAction.TransformMode(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 > 1)
  {
    v4 = (v3 ^ 0xFF) + 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 4)
  {
    return v4 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FromToByAction.TransformMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -3 - a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for FromToByAction.TransformMode(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 16) = -a2;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BlendShapeWeights and conformance BlendShapeWeights()
{
  result = lazy protocol witness table cache variable for type BlendShapeWeights and conformance BlendShapeWeights;
  if (!lazy protocol witness table cache variable for type BlendShapeWeights and conformance BlendShapeWeights)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BlendShapeWeights and conformance BlendShapeWeights);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BlendShapeWeights and conformance BlendShapeWeights;
  if (!lazy protocol witness table cache variable for type BlendShapeWeights and conformance BlendShapeWeights)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BlendShapeWeights and conformance BlendShapeWeights);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BlendShapeWeights and conformance BlendShapeWeights;
  if (!lazy protocol witness table cache variable for type BlendShapeWeights and conformance BlendShapeWeights)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BlendShapeWeights and conformance BlendShapeWeights);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BlendShapeWeights and conformance BlendShapeWeights;
  if (!lazy protocol witness table cache variable for type BlendShapeWeights and conformance BlendShapeWeights)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BlendShapeWeights and conformance BlendShapeWeights);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BlendShapeWeights and conformance BlendShapeWeights;
  if (!lazy protocol witness table cache variable for type BlendShapeWeights and conformance BlendShapeWeights)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BlendShapeWeights and conformance BlendShapeWeights);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BlendShapeWeights and conformance BlendShapeWeights;
  if (!lazy protocol witness table cache variable for type BlendShapeWeights and conformance BlendShapeWeights)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BlendShapeWeights and conformance BlendShapeWeights);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type JointTransforms and conformance JointTransforms()
{
  result = lazy protocol witness table cache variable for type JointTransforms and conformance JointTransforms;
  if (!lazy protocol witness table cache variable for type JointTransforms and conformance JointTransforms)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JointTransforms and conformance JointTransforms);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JointTransforms and conformance JointTransforms;
  if (!lazy protocol witness table cache variable for type JointTransforms and conformance JointTransforms)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JointTransforms and conformance JointTransforms);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JointTransforms and conformance JointTransforms;
  if (!lazy protocol witness table cache variable for type JointTransforms and conformance JointTransforms)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JointTransforms and conformance JointTransforms);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JointTransforms and conformance JointTransforms;
  if (!lazy protocol witness table cache variable for type JointTransforms and conformance JointTransforms)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JointTransforms and conformance JointTransforms);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JointTransforms and conformance JointTransforms;
  if (!lazy protocol witness table cache variable for type JointTransforms and conformance JointTransforms)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JointTransforms and conformance JointTransforms);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JointTransforms and conformance JointTransforms;
  if (!lazy protocol witness table cache variable for type JointTransforms and conformance JointTransforms)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JointTransforms and conformance JointTransforms);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Transform and conformance Transform()
{
  result = lazy protocol witness table cache variable for type Transform and conformance Transform;
  if (!lazy protocol witness table cache variable for type Transform and conformance Transform)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Transform and conformance Transform);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Transform and conformance Transform;
  if (!lazy protocol witness table cache variable for type Transform and conformance Transform)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Transform and conformance Transform);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Transform and conformance Transform;
  if (!lazy protocol witness table cache variable for type Transform and conformance Transform)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Transform and conformance Transform);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Transform and conformance Transform;
  if (!lazy protocol witness table cache variable for type Transform and conformance Transform)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Transform and conformance Transform);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Transform and conformance Transform;
  if (!lazy protocol witness table cache variable for type Transform and conformance Transform)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Transform and conformance Transform);
  }

  return result;
}

void specialized FromToByActionHandler<>.getFromToToParent(transformMode:playbackController:targetEntity:base:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X8>, __int128 a5@<Q0>, __n128 a6@<Q1>, __n128 a7@<Q2>)
{
  v8 = *(a1 + 16);
  if (v8 == 253)
  {
    if (a3)
    {

      v10 = specialized HasHierarchy.parent.getter();
      if (v10)
      {
        *v11.i64 = _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(v10, 0);
        v45 = v12;
        v47 = v11;
        v42 = v14;
        v43 = v13;

        v54.columns[1] = v45;
        v54.columns[0] = v47;
        v54.columns[3] = v42;
        v54.columns[2] = v43;
        __invert_f4(v54);
      }

      REMakeSRTFromMatrix();
      v46 = v36;
      v48 = v35;
      v44 = v37;
      if (one-time initialization token for identity != -1)
      {
        swift_once();
      }

      goto LABEL_31;
    }

    goto LABEL_18;
  }

  if (v8 == 254)
  {
    v9 = 0;
    goto LABEL_32;
  }

  if (v8 != 255)
  {
    if (a3)
    {
      v16 = *a1;
      v15 = *(a1 + 8);
      if ((*(a2 + 40) & 1) != 0 || (Strong = swift_weakLoadStrong()) == 0)
      {

        outlined copy of FromToByAction<A>.TransformMode<A>(v16, v15, v8);
        _StringGuts.grow(_:)(70);
        v52 = 0;
        v53 = 0xE000000000000000;
        MEMORY[0x1C68F3410](0xD000000000000019, 0x80000001C18E5940);
        MEMORY[0x1C68F3410](0xD000000000000012, 0x80000001C18E5960);
        v49 = v16;
        v50 = v15;
        v51 = v8 & 1;
        v30 = String.init<A>(describing:)();
        MEMORY[0x1C68F3410](v30);

        MEMORY[0x1C68F3410](0xD000000000000030, 0x80000001C18E5980);
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v31 = type metadata accessor for Logger();
        __swift_project_value_buffer(v31, static AnimationLogger.logger);

        v26 = Logger.logObject.getter();
        v32 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v26, v32))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v49 = v34;
          *v33 = 136315138;
          *(v33 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v49);
          _os_log_impl(&dword_1C1358000, v26, v32, "%s", v33, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v34);
          MEMORY[0x1C6902A30](v34, -1, -1);
          MEMORY[0x1C6902A30](v33, -1, -1);
        }
      }

      else
      {
        v18 = Strong;
        v49 = v16;
        v50 = v15;
        v51 = v8 & 1;

        outlined copy of FromToByAction<A>.TransformMode<A>(v16, v15, v8);
        v19 = ActionEntityResolution.resolve(from:)(v18);
        if (v19)
        {
          v20 = v19;
          outlined consume of FromToByAction<A>.TransformMode<A>(v16, v15, v8);
          v21 = specialized HasHierarchy.parent.getter();
          _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(v20, v21);

          REMakeSRTFromMatrix();
          v46 = v23;
          v48 = v22;
          v44 = v24;
          if (one-time initialization token for identity != -1)
          {
            swift_once();
          }

LABEL_31:

          v9 = 0;
          a6 = v46;
          a5 = v48;
          a7 = v44;
          goto LABEL_32;
        }

        _StringGuts.grow(_:)(31);
        v52 = 0;
        v53 = 0xE000000000000000;
        MEMORY[0x1C68F3410](0xD000000000000019, 0x80000001C18E5940);
        MEMORY[0x1C68F3410](0xD000000000000012, 0x80000001C18E5960);
        v50 = v15;
        v51 = v8 & 1;
        _print_unlocked<A, B>(_:_:)();
        outlined consume of FromToByAction<A>.TransformMode<A>(v16, v15, v8);
        MEMORY[0x1C68F3410](0x206D6F726620, 0xE600000000000000);
        v49 = v18;
        type metadata accessor for Entity();
        _print_unlocked<A, B>(_:_:)();
        MEMORY[0x1C68F3410](46, 0xE100000000000000);
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v38 = type metadata accessor for Logger();
        __swift_project_value_buffer(v38, static AnimationLogger.logger);

        v26 = Logger.logObject.getter();
        v39 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v26, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v49 = v41;
          *v40 = 136315138;
          *(v40 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v49);
          _os_log_impl(&dword_1C1358000, v26, v39, "%s", v40, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v41);
          MEMORY[0x1C6902A30](v41, -1, -1);
          MEMORY[0x1C6902A30](v40, -1, -1);
        }
      }

LABEL_28:

      a5 = 0uLL;
      v9 = 1;
      a6 = 0uLL;
      a7 = 0uLL;
      goto LABEL_32;
    }

LABEL_18:
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static AnimationLogger.logger);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v49 = v29;
      *v28 = 136315138;
      *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000047, 0x80000001C18E58F0, &v49);
      _os_log_impl(&dword_1C1358000, v26, v27, "%s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x1C6902A30](v29, -1, -1);
      MEMORY[0x1C6902A30](v28, -1, -1);
    }

    goto LABEL_28;
  }

  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  v9 = 0;
  a5 = static Transform.identity;
  a6 = xmmword_1EBEB2BB0;
  a7 = xmmword_1EBEB2BC0;
LABEL_32:
  *a4 = a5;
  a4[1] = a6;
  a4[2] = a7;
  a4[3].n128_u8[0] = v9;
}

uint64_t type metadata completion function for FromToByActionHandler(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = type metadata accessor for Optional();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FromToByActionHandler(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  if (v6 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v6;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (v14)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (v14)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_28;
  }

  if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 2)
    {
      v17 = (*(v4 + 48))(a1, v5);
      if (v17 >= 2)
      {
        return v17 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

LABEL_21:
  v15 = v14 - 1;
  if (v10)
  {
    v15 = 0;
    LODWORD(v10) = *a1;
  }

  return v6 + (v10 | v15) + 1;
}

_DWORD *storeEnumTagSinglePayload for FromToByActionHandler(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v9 = v7 - 1;
  if (!v7)
  {
    v9 = 0;
    ++v8;
  }

  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 < a3)
  {
    v11 = a3 - v9;
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (v10)
    {
      v14 = 1;
    }

    else
    {
      v14 = a2 - v9;
    }

    if (v10)
    {
      v15 = ~v9 + a2;
      v16 = result;
      bzero(result, v10);
      result = v16;
      *v16 = v15;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + v10) = v14;
      }

      else
      {
        *(result + v10) = v14;
      }
    }

    else if (v5)
    {
      *(result + v10) = v14;
    }

    return result;
  }

  if (v5 <= 1)
  {
    if (v5)
    {
      *(result + v10) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

LABEL_32:
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (v5 == 2)
  {
    *(result + v10) = 0;
    goto LABEL_32;
  }

  *(result + v10) = 0;
  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v17 = *(v6 + 56);

    return v17();
  }

  return result;
}

void specialized FromToByActionHandler<>.getFromTo(event:base:)(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>, __n128 a4@<Q1>, __n128 a5@<Q2>)
{
  v9 = *a1;
  v10 = *(a1 + 64);
  v11 = *(a1 + 80);
  v12 = *(a1 + 96);
  v13 = *(a1 + 48);
  v14 = *(a1 + 112);
  v15 = *(a1 + 128);
  v16 = *(a1 + 232);
  v17 = *(a1 + 248);
  v18 = *(a1 + 280);
  if (v10 != 1 || !*(a1 + 128))
  {
    v38 = *(a1 + 48);
    v40 = *(a1 + 32);
    v42 = *(a1 + 16);
    v35 = *(a1 + 112);
    v36 = *(a1 + 96);
    v37 = *(a1 + 80);
    if (one-time initialization token for identity != -1)
    {
      v34 = *a1;
      v32 = *(a1 + 280);
      v28 = a4;
      v30 = a5;
      v26 = *(a1 + 232);
      v27 = a3;
      swift_once();
      v16 = v26;
      a3 = v27;
      a4 = v28;
      a5 = v30;
      v18 = v32;
      v9 = v34;
    }

    v44 = v16;
    v45 = v17;
    specialized FromToByActionHandler<>.getFromToToParent(transformMode:playbackController:targetEntity:base:)(&v44, v9, v18, &v47, *&a3, a4, a5);
    if (v50)
    {
      v15 = 0;
      v10 = 0;
      v19 = 1;
      v20 = 0uLL;
      v21 = 0uLL;
      v22 = 0uLL;
      v11 = 0uLL;
      v12 = 0uLL;
      v14 = 0uLL;
      goto LABEL_14;
    }

    v31 = *&v48;
    v33 = v47;
    v29 = *&v49;
    if (v10)
    {
      v21 = v40;
      v20 = v42;
      v22 = v38;
      if ((v15 & 1) == 0)
      {
LABEL_10:
        v41 = v21;
        v43 = v20;
        v39 = v22;
        *v11.i64 = specialized static Transform.* infix(_:_:)(v33, v31, v29, v37);
        v22 = v39;
        v21 = v41;
        v20 = v43;
LABEL_13:
        v19 = 0;
        v46 = v10;
        LOBYTE(v44) = 0;
        goto LABEL_14;
      }
    }

    else
    {
      *v23.i64 = specialized static Transform.* infix(_:_:)(v47, *&v48, *&v49, v42);
      v20 = v23;
      v21 = v24;
      v22 = v25;
      if ((v15 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v12 = v36;
    v11 = v37;
    v14 = v35;
    goto LABEL_13;
  }

  v19 = 0;
  v15 = 1;
  LOBYTE(v44) = 1;
  v46 = 1;
  v47.i8[0] = 0;
  v10 = 1;
  v20 = v11;
  v21 = v12;
  v22 = v14;
LABEL_14:
  *a2 = v20;
  *(a2 + 16) = v21;
  *(a2 + 32) = v22;
  *(a2 + 48) = v10;
  *(a2 + 56) = 0;
  *(a2 + 64) = v11;
  *(a2 + 80) = v12;
  *(a2 + 96) = v14;
  *(a2 + 112) = v15;
  *(a2 + 113) = v19;
}

void static AnimationTimingFunction.linear.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 20) = 10;
}

void AnimationTimingFunction.coreEasingFunction.getter()
{
  v1 = *v0;
  v2 = *(v0 + 20);
  if (v2 > 4)
  {
    if (*(v0 + 20) <= 7u)
    {
      if (v2 == 5)
      {
        v13 = HIDWORD(*v0);
        v4 = RECreateExponentialEaseEx();
      }

      else
      {
        v3 = HIDWORD(*v0);
        if (v2 == 6)
        {
          v4 = RECreateLogarithmicEaseEx();
        }

        else
        {
          v4 = RECreatePowerEaseEx();
        }
      }

      goto LABEL_29;
    }

    if (v2 != 8)
    {
      if (v2 != 9)
      {
        goto LABEL_34;
      }

      v7 = RECreateHermiteEaseEx();
LABEL_13:
      v8 = v7;
      if (v1 >= 2u)
      {
        if (v7)
        {
LABEL_31:
          REEasingFunctionSetModeEx();
          goto LABEL_32;
        }

        goto LABEL_34;
      }

      goto LABEL_30;
    }

    v4 = RECreateSineEaseEx();
LABEL_29:
    v8 = v4;
    if (v1)
    {
LABEL_30:
      if (v8)
      {
        goto LABEL_31;
      }

      goto LABEL_34;
    }

    if (v4)
    {
      goto LABEL_31;
    }

LABEL_34:
    type metadata accessor for AnimationTimingFunction.EasingFunction();
    *(swift_allocObject() + 16) = 0;
    return;
  }

  v5 = v0[1];
  if (*(v0 + 20) <= 1u)
  {
    if (!*(v0 + 20))
    {
      v16 = HIDWORD(*v0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C1897FC0;
      *(inited + 32) = v1;
      *(inited + 36) = v16;
      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1gq5Tf4g_n(inited);
      swift_setDeallocating();
      v10 = swift_initStackObject();
      *(v10 + 16) = xmmword_1C1897FC0;
      *(v10 + 32) = v5;
      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1gq5Tf4g_n(v10);
      swift_setDeallocating();
      v11 = RECreateCubicBezierEaseEx();
      if (v11)
      {
        v8 = v11;
LABEL_32:
        type metadata accessor for AnimationTimingFunction.EasingFunction();
        *(swift_allocObject() + 16) = v8;
        RERetain();
        RERelease();
        return;
      }

      goto LABEL_34;
    }

    v15 = HIDWORD(*v0);
    v4 = RECreateBackEaseEx();
    goto LABEL_29;
  }

  v6 = *(v0 + 4);
  if (v2 == 2)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      if (!HIDWORD(v5))
      {
        v12 = v0[1];
        v4 = RECreateBounceEaseEx();
        goto LABEL_29;
      }

      goto LABEL_37;
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v2 == 3)
  {
    v7 = RECreateCircleEaseEx();
    goto LABEL_13;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    goto LABEL_36;
  }

  if (!HIDWORD(v5))
  {
    v14 = v0[1];
    v4 = RECreateElasticEaseEx();
    goto LABEL_29;
  }

LABEL_38:
  __break(1u);
}

Swift::Int AnimationTimingFunction.__Mode.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

void AnimationTimingFunction.EasingFunctionType.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = v2->n128_u64[0];
  v5 = v2[1].n128_u8[4];
  if (v5 <= 4)
  {
    v8 = v2->n128_u64[1];
    if (v2[1].n128_u8[4] > 1u)
    {
      v9 = v2[1].n128_u32[0];
      if (v5 == 2)
      {
        v11 = 3;
      }

      else
      {
        if (v5 == 3)
        {
          v10 = 4;
LABEL_20:
          MEMORY[0x1C68F4C10](v10);
          MEMORY[0x1C68F4C10](v4);
          return;
        }

        v11 = 5;
      }

      MEMORY[0x1C68F4C10](v11);
      MEMORY[0x1C68F4C10](v4);
      MEMORY[0x1C68F4C10](v8);
      if ((v9 & 0x7FFFFFFF) != 0)
      {
        v12 = v9;
      }

      else
      {
        v12 = 0;
      }

LABEL_33:
      Hasher._combine(_:)(v12);
      return;
    }

    if (v2[1].n128_u8[4])
    {
      v6 = HIDWORD(v4);
      v7 = 2;
      goto LABEL_27;
    }

    v14 = *v2;
    MEMORY[0x1C68F4C10](1);

    specialized SIMD.hash(into:)(a1, v14);
  }

  else
  {
    if (v2[1].n128_u8[4] <= 7u)
    {
      v6 = HIDWORD(v4);
      if (v5 == 5)
      {
        v7 = 6;
      }

      else if (v5 == 6)
      {
        v7 = 7;
      }

      else
      {
        v7 = 8;
      }

LABEL_27:
      MEMORY[0x1C68F4C10](v7);
      MEMORY[0x1C68F4C10](v4);
      if ((v6 & 0x7FFFFF) == 0 && (v4 & 0x7F80000000000000) == 0)
      {
        v12 = 0;
      }

      else
      {
        v12 = v6;
      }

      goto LABEL_33;
    }

    if (v5 == 8)
    {
      v10 = 9;
      goto LABEL_20;
    }

    if (v5 == 9)
    {
      v10 = 10;
      goto LABEL_20;
    }

    MEMORY[0x1C68F4C10](0);
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AnimationTimingFunction.EasingFunctionType()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 20);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  Hasher.init(_seed:)();
  AnimationTimingFunction.EasingFunctionType.hash(into:)(v4);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AnimationTimingFunction.EasingFunctionType()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 20);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  Hasher.init(_seed:)();
  AnimationTimingFunction.EasingFunctionType.hash(into:)(v4);
  return Hasher._finalize()();
}

uint64_t AnimationTimingFunction.EasingFunction.__deallocating_deinit()
{
  if (*(v0 + 16))
  {
    RERelease();
  }

  return swift_deallocClassInstance();
}

unsigned __int8 *static AnimationTimingFunction.__smooth(_:)@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = 9;
  return result;
}

unsigned __int8 *static AnimationTimingFunction.__back(_:amplitude:)@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X8>, unsigned int a3@<S0>)
{
  *a2 = *result | (a3 << 32);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = 1;
  return result;
}

unsigned __int8 *static AnimationTimingFunction.__bounce(_:bounces:bounciness:)@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, float a4@<S0>)
{
  *a3 = *result;
  *(a3 + 8) = a2;
  *(a3 + 16) = a4;
  *(a3 + 20) = 2;
  return result;
}

unsigned __int8 *static AnimationTimingFunction.__circle(_:)@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = 3;
  return result;
}

unsigned __int8 *static AnimationTimingFunction.__exponential(_:exponent:)@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X8>, unsigned int a3@<S0>)
{
  *a2 = *result | (a3 << 32);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = 5;
  return result;
}

unsigned __int8 *static AnimationTimingFunction.__logarithmic(_:base:)@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X8>, unsigned int a3@<S0>)
{
  *a2 = *result | (a3 << 32);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = 6;
  return result;
}

void static AnimationTimingFunction.__power(_:power:)(uint64_t a1@<X8>, unsigned int a2@<S0>)
{
  *a1 = a2 << 32;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 20) = 7;
}

unsigned __int8 *static AnimationTimingFunction.__sine(_:)@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = 8;
  return result;
}

unsigned __int8 *static AnimationTimingFunction.__spring(_:oscillations:springiness:)@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, float a4@<S0>)
{
  *a3 = *result;
  *(a3 + 8) = a2;
  *(a3 + 16) = a4;
  *(a3 + 20) = 4;
  return result;
}

__n128 static AnimationTimingFunction.cubicBezier(controlPoint1:controlPoint2:)@<Q0>(__n128 *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
  inited = swift_initStackObject();
  *&v5 = a2;
  *(&v5 + 1) = a3;
  *(inited + 16) = xmmword_1C189FFC0;
  *(inited + 32) = v5;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(inited);
  v10 = v6;
  swift_setDeallocating();
  result = v10;
  *a1 = v10;
  a1[1].n128_u32[0] = 0;
  a1[1].n128_u8[4] = 0;
  return result;
}

__n128 static AnimationTimingFunction.default.getter@<Q0>(__n128 *a1@<X8>, __n128 a2@<Q0>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C189FFC0;
  *(inited + 32) = a2;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(inited);
  v7 = v4;
  swift_setDeallocating();
  result = v7;
  *a1 = v7;
  a1[1].n128_u32[0] = 0;
  a1[1].n128_u8[4] = 0;
  return result;
}

uint64_t static AnimationTimingFunction.== infix(_:_:)(float32x4_t *a1, float32x4_t *a2)
{
  v2 = a1[1].i32[0];
  v3 = a1[1].i8[4];
  v4 = a2[1].i32[0];
  v5 = a2[1].i8[4];
  v10 = *a1;
  v11 = v2;
  v12 = v3;
  v7 = *a2;
  v8 = v4;
  v9 = v5;
  return specialized static AnimationTimingFunction.EasingFunctionType.== infix(_:_:)(&v10, &v7) & 1;
}

void AnimationTimingFunction.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 4);
  v4 = *(v1 + 20);
  AnimationTimingFunction.EasingFunctionType.hash(into:)(a1);
}

Swift::Int AnimationTimingFunction.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 4);
  v4 = *(v0 + 20);
  Hasher.init(_seed:)();
  AnimationTimingFunction.EasingFunctionType.hash(into:)(v6);
  return Hasher._finalize()();
}

uint64_t AnimationTimingFunction.CodableAnimationTimingFunction.encode(to:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v26 = a4;
  v22 = a3;
  v23 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10RealityKit23AnimationTimingFunctionV0D10FoundationE07CodablefgH0O21CubicBezierCodingKeys33_50AEC0F04C439D5B3A831598008F67C4LLOGMd, &_ss22KeyedEncodingContainerVy10RealityKit23AnimationTimingFunctionV0D10FoundationE07CodablefgH0O21CubicBezierCodingKeys33_50AEC0F04C439D5B3A831598008F67C4LLOGMR);
  v24 = *(v5 - 8);
  v25 = v5;
  v6 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10RealityKit23AnimationTimingFunctionV0D10FoundationE07CodablefgH0O16LinearCodingKeys33_50AEC0F04C439D5B3A831598008F67C4LLOGMd, &_ss22KeyedEncodingContainerVy10RealityKit23AnimationTimingFunctionV0D10FoundationE07CodablefgH0O16LinearCodingKeys33_50AEC0F04C439D5B3A831598008F67C4LLOGMR);
  v9 = *(v21 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v12 = &v21 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10RealityKit23AnimationTimingFunctionV0D10FoundationE07CodablefgH0O10CodingKeys33_50AEC0F04C439D5B3A831598008F67C4LLOGMd, &_ss22KeyedEncodingContainerVy10RealityKit23AnimationTimingFunctionV0D10FoundationE07CodablefgH0O10CodingKeys33_50AEC0F04C439D5B3A831598008F67C4LLOGMR);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v21 - v16;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v26)
  {
    LOBYTE(v27) = 0;
    lazy protocol witness table accessor for type AnimationTimingFunction.CodableAnimationTimingFunction.LinearCodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.LinearCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v9 + 8))(v12, v21);
  }

  else
  {
    LOBYTE(v27) = 1;
    lazy protocol witness table accessor for type AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v27 = v23;
    v28 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR);
    lazy protocol witness table accessor for type SIMD4<Float> and conformance SIMD4<A>(&lazy protocol witness table cache variable for type SIMD4<Float> and conformance SIMD4<A>);
    v20 = v25;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v24 + 8))(v8, v20);
  }

  return (*(v14 + 8))(v17, v13);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AnimationTimingFunction()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 4);
  v4 = *(v0 + 20);
  Hasher.init(_seed:)();
  AnimationTimingFunction.EasingFunctionType.hash(into:)(v6);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance AnimationTimingFunction(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 4);
  v4 = *(v1 + 20);
  AnimationTimingFunction.EasingFunctionType.hash(into:)(a1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AnimationTimingFunction()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 4);
  v4 = *(v0 + 20);
  Hasher.init(_seed:)();
  AnimationTimingFunction.EasingFunctionType.hash(into:)(v6);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AnimationTimingFunction(float32x4_t *a1, float32x4_t *a2)
{
  v2 = a1[1].i32[0];
  v3 = a1[1].i8[4];
  v4 = a2[1].i32[0];
  v5 = a2[1].i8[4];
  v10 = *a1;
  v11 = v2;
  v12 = v3;
  v7 = *a2;
  v8 = v4;
  v9 = v5;
  return specialized static AnimationTimingFunction.EasingFunctionType.== infix(_:_:)(&v10, &v7) & 1;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys()
{
  if (*v0)
  {
    result = 0x7A65426369627563;
  }

  else
  {
    result = 0x7261656E696CLL;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7261656E696CLL && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7A65426369627563 && a2 == 0xEB00000000726569)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x506C6F72746E6F63 && a2 == 0xED000073746E696FLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnimationTimingFunction.CodableAnimationTimingFunction.LinearCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnimationTimingFunction.CodableAnimationTimingFunction.LinearCodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.LinearCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnimationTimingFunction.CodableAnimationTimingFunction.LinearCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnimationTimingFunction.CodableAnimationTimingFunction.LinearCodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.LinearCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *protocol witness for Decodable.init(from:) in conformance AnimationTimingFunction.CodableAnimationTimingFunction@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized AnimationTimingFunction.CodableAnimationTimingFunction.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

uint64_t AnimationTimingFunction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of __REAssetService(a1, v15);
  v5 = specialized AnimationTimingFunction.CodableAnimationTimingFunction.init(from:)(v15);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v5;
  v10 = v6;
  v11 = v7;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = v9;
  }

  if (v11)
  {
    v13 = 0;
  }

  else
  {
    v13 = v10;
  }

  *a2 = v12;
  *(a2 + 8) = v13;
  if (v11)
  {
    v14 = 10;
  }

  else
  {
    v14 = 0;
  }

  *(a2 + 16) = 0;
  *(a2 + 20) = v14;
  return result;
}

uint64_t AnimationTimingFunction.encode(to:)(void *a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  if (*(v1 + 20))
  {
    if (*(v1 + 20) != 10 || (!(v3 | v2) ? (v4 = *(v1 + 16) == 0) : (v4 = 0), !v4))
    {
      lazy protocol witness table accessor for type AnimationTimingFunction.EncodingErrors and conformance AnimationTimingFunction.EncodingErrors();
      swift_allocError();
      return swift_willThrow();
    }

    v2 = 0;
    v3 = 0;
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  return AnimationTimingFunction.CodableAnimationTimingFunction.encode(to:)(a1, v2, v3, v6);
}

uint64_t protocol witness for Decodable.init(from:) in conformance AnimationTimingFunction@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of __REAssetService(a1, v15);
  v5 = specialized AnimationTimingFunction.CodableAnimationTimingFunction.init(from:)(v15);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v5;
  v10 = v6;
  v11 = v7;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = v9;
  }

  if (v11)
  {
    v13 = 0;
  }

  else
  {
    v13 = v10;
  }

  *a2 = v12;
  *(a2 + 8) = v13;
  if (v11)
  {
    v14 = 10;
  }

  else
  {
    v14 = 0;
  }

  *(a2 + 16) = 0;
  *(a2 + 20) = v14;
  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance AnimationTimingFunction(void *a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  if (*(v1 + 20))
  {
    if (*(v1 + 20) != 10 || (!(v3 | v2) ? (v4 = *(v1 + 16) == 0) : (v4 = 0), !v4))
    {
      lazy protocol witness table accessor for type AnimationTimingFunction.EncodingErrors and conformance AnimationTimingFunction.EncodingErrors();
      swift_allocError();
      return swift_willThrow();
    }

    v2 = 0;
    v3 = 0;
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  return AnimationTimingFunction.CodableAnimationTimingFunction.encode(to:)(a1, v2, v3, v6);
}

uint64_t specialized static AnimationTimingFunction.EasingFunctionType.== infix(_:_:)(float32x4_t *a1, float32x4_t *a2)
{
  v2 = a1->i64[0];
  v3 = a1[1].u8[4];
  v4 = a2->i64[0];
  v5 = a2->i64[1];
  v6 = a2[1].u8[4];
  if (v3 <= 4)
  {
    v7 = a1->i64[1];
    if (a1[1].u8[4] <= 1u)
    {
      if (!a1[1].i8[4])
      {
        if (!a2[1].i8[4])
        {
          if (*&v2 == *&v4)
          {
            v8 = vmovn_s32(vceqq_f32(*a1, *a2));
            if (v8.i8[2] & 1) != 0 && (v8.i8[4])
            {
              return v8.i8[6] & 1;
            }
          }

          return v6 & 1;
        }

        goto LABEL_50;
      }

      if (v6 != 1)
      {
        goto LABEL_50;
      }

      goto LABEL_39;
    }

    if (v3 == 2)
    {
      if (v6 != 2)
      {
        goto LABEL_50;
      }

      if (v4 != v2 || v7 != v5)
      {
        goto LABEL_50;
      }
    }

    else
    {
      if (v3 == 3)
      {
        if (v6 != 3)
        {
          goto LABEL_50;
        }

        goto LABEL_31;
      }

      if (v6 != 4)
      {
        goto LABEL_50;
      }

      LOBYTE(v6) = 0;
      if (v4 != v2 || v7 != v5)
      {
        return v6 & 1;
      }
    }

    v12 = a1[1].f32[0];
    v13 = a2[1].f32[0];
LABEL_41:
    v11 = v12 == v13;
    goto LABEL_42;
  }

  if (a1[1].u8[4] <= 7u)
  {
    if (v3 == 5)
    {
      if (v6 != 5)
      {
        goto LABEL_50;
      }
    }

    else if (v3 == 6)
    {
      if (v6 != 6)
      {
        goto LABEL_50;
      }
    }

    else if (v6 != 7)
    {
      goto LABEL_50;
    }

LABEL_39:
    if (v4 == v2)
    {
      LODWORD(v12) = HIDWORD(a1->i64[0]);
      LODWORD(v13) = HIDWORD(a2->i64[0]);
      goto LABEL_41;
    }

LABEL_50:
    LOBYTE(v6) = 0;
    return v6 & 1;
  }

  if (v3 == 8)
  {
    if (v6 != 8)
    {
      goto LABEL_50;
    }
  }

  else
  {
    if (v3 != 9)
    {
      if (v6 == 10 && !(v5 | v4) && !a2[1].i32[0])
      {
        return 1;
      }

      goto LABEL_50;
    }

    if (v6 != 9)
    {
      goto LABEL_50;
    }
  }

LABEL_31:
  v11 = (v4 ^ v2) == 0;
LABEL_42:
  v14 = v11;
  return v14 & 1;
}

void *specialized AnimationTimingFunction.CodableAnimationTimingFunction.init(from:)(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10RealityKit23AnimationTimingFunctionV0D10FoundationE07CodablefgH0O21CubicBezierCodingKeys33_50AEC0F04C439D5B3A831598008F67C4LLOGMd, &_ss22KeyedDecodingContainerVy10RealityKit23AnimationTimingFunctionV0D10FoundationE07CodablefgH0O21CubicBezierCodingKeys33_50AEC0F04C439D5B3A831598008F67C4LLOGMR);
  v3 = *(v2 - 8);
  v33 = v2;
  v34 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10RealityKit23AnimationTimingFunctionV0D10FoundationE07CodablefgH0O16LinearCodingKeys33_50AEC0F04C439D5B3A831598008F67C4LLOGMd, &_ss22KeyedDecodingContainerVy10RealityKit23AnimationTimingFunctionV0D10FoundationE07CodablefgH0O16LinearCodingKeys33_50AEC0F04C439D5B3A831598008F67C4LLOGMR);
  v35 = *(v7 - 8);
  v8 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10RealityKit23AnimationTimingFunctionV0D10FoundationE07CodablefgH0O10CodingKeys33_50AEC0F04C439D5B3A831598008F67C4LLOGMd, &_ss22KeyedDecodingContainerVy10RealityKit23AnimationTimingFunctionV0D10FoundationE07CodablefgH0O10CodingKeys33_50AEC0F04C439D5B3A831598008F67C4LLOGMR);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v32 - v14;
  v16 = a1[3];
  v17 = a1[4];
  v42 = a1;
  v18 = __swift_project_boxed_opaque_existential_1(a1, v16);
  lazy protocol witness table accessor for type AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys();
  v19 = v36;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v19)
  {
    v20 = v35;
    v36 = v12;
    v21 = KeyedDecodingContainer.allKeys.getter();
    v22 = (2 * *(v21 + 16)) | 1;
    v38 = v21;
    v39 = v21 + 32;
    v40 = 0;
    v41 = v22;
    v23 = specialized Collection<>.popFirst()();
    if (v23 == 2 || v40 != v41 >> 1)
    {
      v25 = type metadata accessor for DecodingError();
      swift_allocError();
      v27 = v26;
      v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
      *v27 = &type metadata for AnimationTimingFunction.CodableAnimationTimingFunction;
      v18 = v15;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v25);
      swift_willThrow();
      (*(v36 + 8))(v15, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v32[3] = v23;
      if (v23)
      {
        LOBYTE(v37) = 1;
        lazy protocol witness table accessor for type AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v24 = v36;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR);
        lazy protocol witness table accessor for type SIMD4<Float> and conformance SIMD4<A>(&lazy protocol witness table cache variable for type SIMD4<Float> and conformance SIMD4<A>);
        v31 = v33;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v34 + 8))(v6, v31);
        (*(v24 + 8))(v15, v11);
        swift_unknownObjectRelease();
        v18 = v37;
      }

      else
      {
        LOBYTE(v37) = 0;
        lazy protocol witness table accessor for type AnimationTimingFunction.CodableAnimationTimingFunction.LinearCodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.LinearCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v30 = v36;
        (*(v20 + 8))(v10, v7);
        (*(v30 + 8))(v15, v11);
        swift_unknownObjectRelease();
        v18 = 0;
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v42);
  return v18;
}

unint64_t lazy protocol witness table accessor for type AnimationTimingFunction.EncodingErrors and conformance AnimationTimingFunction.EncodingErrors()
{
  result = lazy protocol witness table cache variable for type AnimationTimingFunction.EncodingErrors and conformance AnimationTimingFunction.EncodingErrors;
  if (!lazy protocol witness table cache variable for type AnimationTimingFunction.EncodingErrors and conformance AnimationTimingFunction.EncodingErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationTimingFunction.EncodingErrors and conformance AnimationTimingFunction.EncodingErrors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnimationTimingFunction.EncodingErrors and conformance AnimationTimingFunction.EncodingErrors;
  if (!lazy protocol witness table cache variable for type AnimationTimingFunction.EncodingErrors and conformance AnimationTimingFunction.EncodingErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationTimingFunction.EncodingErrors and conformance AnimationTimingFunction.EncodingErrors);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnimationTimingFunction.__Mode and conformance AnimationTimingFunction.__Mode()
{
  result = lazy protocol witness table cache variable for type AnimationTimingFunction.__Mode and conformance AnimationTimingFunction.__Mode;
  if (!lazy protocol witness table cache variable for type AnimationTimingFunction.__Mode and conformance AnimationTimingFunction.__Mode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationTimingFunction.__Mode and conformance AnimationTimingFunction.__Mode);
  }

  return result;
}

__n128 __swift_memcpy21_16(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AnimationTimingFunction(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF6 && *(a1 + 21))
  {
    return (*a1 + 246);
  }

  v3 = *(a1 + 20);
  if (v3 <= 0xA)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for AnimationTimingFunction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF5)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 - 246;
    *(result + 8) = 0;
    if (a3 >= 0xF6)
    {
      *(result + 21) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF6)
    {
      *(result + 21) = 0;
    }

    if (a2)
    {
      *(result + 20) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for AnimationTimingFunction.EasingFunctionType(uint64_t a1)
{
  if (*(a1 + 20) <= 9u)
  {
    return *(a1 + 20);
  }

  else
  {
    return (*a1 + 10);
  }
}

uint64_t destructiveInjectEnumTag for AnimationTimingFunction.EasingFunctionType(uint64_t result, unsigned int a2)
{
  if (a2 >= 0xA)
  {
    *result = a2 - 10;
    *(result + 8) = 0;
    LOBYTE(a2) = 10;
    *(result + 16) = 0;
  }

  *(result + 20) = a2;
  return result;
}

unint64_t lazy protocol witness table accessor for type AnimationTimingFunction.EasingFunctionType and conformance AnimationTimingFunction.EasingFunctionType()
{
  result = lazy protocol witness table cache variable for type AnimationTimingFunction.EasingFunctionType and conformance AnimationTimingFunction.EasingFunctionType;
  if (!lazy protocol witness table cache variable for type AnimationTimingFunction.EasingFunctionType and conformance AnimationTimingFunction.EasingFunctionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationTimingFunction.EasingFunctionType and conformance AnimationTimingFunction.EasingFunctionType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys()
{
  result = lazy protocol witness table cache variable for type AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys;
  if (!lazy protocol witness table cache variable for type AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys;
  if (!lazy protocol witness table cache variable for type AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys;
  if (!lazy protocol witness table cache variable for type AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys;
  if (!lazy protocol witness table cache variable for type AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.CubicBezierCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnimationTimingFunction.CodableAnimationTimingFunction.LinearCodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.LinearCodingKeys()
{
  result = lazy protocol witness table cache variable for type AnimationTimingFunction.CodableAnimationTimingFunction.LinearCodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.LinearCodingKeys;
  if (!lazy protocol witness table cache variable for type AnimationTimingFunction.CodableAnimationTimingFunction.LinearCodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.LinearCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationTimingFunction.CodableAnimationTimingFunction.LinearCodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.LinearCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnimationTimingFunction.CodableAnimationTimingFunction.LinearCodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.LinearCodingKeys;
  if (!lazy protocol witness table cache variable for type AnimationTimingFunction.CodableAnimationTimingFunction.LinearCodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.LinearCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationTimingFunction.CodableAnimationTimingFunction.LinearCodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.LinearCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnimationTimingFunction.CodableAnimationTimingFunction.LinearCodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.LinearCodingKeys;
  if (!lazy protocol witness table cache variable for type AnimationTimingFunction.CodableAnimationTimingFunction.LinearCodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.LinearCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationTimingFunction.CodableAnimationTimingFunction.LinearCodingKeys and conformance AnimationTimingFunction.CodableAnimationTimingFunction.LinearCodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type SIMD4<Float> and conformance SIMD4<A>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnimationTimingFunction.CodableAnimationTimingFunction(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AnimationTimingFunction.CodableAnimationTimingFunction(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 17) = v3;
  return result;
}

uint64_t getEnumTag for AnimationTimingFunction.CodableAnimationTimingFunction(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for AnimationTimingFunction.CodableAnimationTimingFunction(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

uint64_t protocol witness for static BindableDataInternal.get(from:) in conformance Bool@<X0>(char *a1@<X8>)
{
  v5 = *MEMORY[0x1E69E9840];
  result = REBindPointGetBool();
  v3 = 0;
  if (!result)
  {
    v3 = 2;
  }

  *a1 = v3;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t protocol witness for BindableDataInternal.createAndSetParameter(name:_:) in conformance Bool(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(a3 + 16);
  REKeyValueComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  String.utf8CString.getter();
  REKeyValueComponentAddBoolValue();
}

uint64_t protocol witness for static BindableDataInternal.get(from:) in conformance Int8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E6998848];

  return protocol witness for static BindableDataInternal.get(from:) in conformance Int8(a1, v3, a2);
}

uint64_t protocol witness for BindableDataInternal.createAndSetParameter(name:_:) in conformance Int8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(a3 + 16);
  REKeyValueComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  String.utf8CString.getter();
  REKeyValueComponentAddIntValue();
}

uint64_t static UInt8.createBindPoint(_:entity:type:allowConversion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a4 == 1)
  {
    v10 = *(a3 + 16);
    String.utf8CString.getter();
    ReferenceForEntityAnimatedValuesUInt8 = REBindPointCreateReferenceForEntityAnimatedValuesUInt8();
  }

  else
  {
    if (a4)
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v12 = *(a3 + 16);
    String.utf8CString.getter();
    ReferenceForEntityAnimatedValuesUInt8 = REBindPointCreateReferenceForEntityUInt8();
  }

  v13 = ReferenceForEntityAnimatedValuesUInt8;

  if ((REBindPointIsValid() & 1) != 0 || (a5 & 1) == 0)
  {
    return v13;
  }

  REBindPointDestroy();
  v14 = *(a3 + 16);
  String.utf8CString.getter();
  v15 = a4 ? REBindPointCreateReferenceForEntityAnimatedValuesInt32() : REBindPointCreateReferenceForEntityInt32();
  v13 = v15;

  if (REBindPointIsValid())
  {
    return v13;
  }

  REBindPointDestroy();
  v13 = static UInt8.createBindPoint(_:entity:type:allowConversion:)(a1, a2, a3, a4, 0);
  if (REBindPointIsValid())
  {
    return v13;
  }

  REBindPointDestroy();

  return static UInt16.createBindPoint(_:entity:type:allowConversion:)(a1, a2, a3, a4, 0);
}

uint64_t protocol witness for static BindableDataInternal.get(from:) in conformance UInt8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E6998860];

  return protocol witness for static BindableDataInternal.get(from:) in conformance Int8(a1, v3, a2);
}

uint64_t protocol witness for static BindableDataInternal.get(from:) in conformance Int8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, char *)@<X3>, _BYTE *a3@<X8>)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = 0;
  result = a2(a1, &v7);
  v5 = v7;
  if (!result)
  {
    v5 = 0;
  }

  *a3 = v5;
  a3[1] = result ^ 1;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t protocol witness for BindableDataInternal.createAndSetParameter(name:_:) in conformance UInt8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(a3 + 16);
  REKeyValueComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  String.utf8CString.getter();
  REKeyValueComponentAddIntValue();
}

uint64_t protocol witness for static BindableDataInternal.get(from:) in conformance Int16@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E6998838];

  return protocol witness for static BindableDataInternal.get(from:) in conformance Int16(a1, v3, a2);
}

uint64_t protocol witness for BindableDataInternal.createAndSetParameter(name:_:) in conformance Int16(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(a3 + 16);
  REKeyValueComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  String.utf8CString.getter();
  REKeyValueComponentAddIntValue();
}

uint64_t static UInt16.createBindPoint(_:entity:type:allowConversion:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  if (a4 > 1)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v7 = a5 ^ 1;
    v8 = *(a3 + 16);
    String.utf8CString.getter();
    if (a4)
    {
      ReferenceForEntityAnimatedValuesUInt16 = REBindPointCreateReferenceForEntityAnimatedValuesUInt16();
    }

    else
    {
      ReferenceForEntityAnimatedValuesUInt16 = REBindPointCreateReferenceForEntityUInt16();
    }

    v10 = ReferenceForEntityAnimatedValuesUInt16;

    if (((REBindPointIsValid() | v7) & 1) == 0)
    {
      REBindPointDestroy();
      v11 = *(a3 + 16);
      String.utf8CString.getter();
      v12 = a4 ? REBindPointCreateReferenceForEntityAnimatedValuesInt32() : REBindPointCreateReferenceForEntityInt32();
      v10 = v12;

      if ((REBindPointIsValid() & 1) == 0)
      {
        REBindPointDestroy();
        v13 = *(a3 + 16);
        String.utf8CString.getter();
        v14 = a4 ? REBindPointCreateReferenceForEntityAnimatedValuesUInt8() : REBindPointCreateReferenceForEntityUInt8();
        v10 = v14;

        REBindPointIsValid();
        if ((REBindPointIsValid() & 1) == 0)
        {
          REBindPointDestroy();
          v15 = *(a3 + 16);
          String.utf8CString.getter();
          if (a4)
          {
            ReferenceForEntityUInt16 = REBindPointCreateReferenceForEntityAnimatedValuesUInt16();
          }

          else
          {
            ReferenceForEntityUInt16 = REBindPointCreateReferenceForEntityUInt16();
          }

          v10 = ReferenceForEntityUInt16;

          REBindPointIsValid();
        }
      }
    }

    return v10;
  }

  return result;
}

uint64_t protocol witness for static BindableDataInternal.get(from:) in conformance UInt16@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E6998850];

  return protocol witness for static BindableDataInternal.get(from:) in conformance Int16(a1, v3, a2);
}

uint64_t protocol witness for static BindableDataInternal.get(from:) in conformance Int16@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, __int16 *)@<X3>, uint64_t a3@<X8>)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = 0;
  result = a2(a1, &v7);
  v5 = v7;
  if (!result)
  {
    v5 = 0;
  }

  *a3 = v5;
  *(a3 + 2) = result ^ 1;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t protocol witness for BindableDataInternal.createAndSetParameter(name:_:) in conformance UInt16(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(a3 + 16);
  REKeyValueComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  String.utf8CString.getter();
  REKeyValueComponentAddIntValue();
}

uint64_t protocol witness for static BindableDataInternal.get(from:) in conformance Int32@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E6998840];

  return protocol witness for static BindableDataInternal.get(from:) in conformance Int32(a1, v3, a2);
}

uint64_t protocol witness for BindableDataInternal.createAndSetParameter(name:_:) in conformance Int32(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(a3 + 16);
  REKeyValueComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  String.utf8CString.getter();
  REKeyValueComponentAddIntValue();
}

uint64_t protocol witness for static BindableDataInternal.get(from:) in conformance UInt32@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E6998858];

  return protocol witness for static BindableDataInternal.get(from:) in conformance Int32(a1, v3, a2);
}

uint64_t protocol witness for static BindableDataInternal.get(from:) in conformance Int32@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, int *)@<X3>, uint64_t a3@<X8>)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = 0;
  result = a2(a1, &v7);
  v5 = v7;
  if (!result)
  {
    v5 = 0;
  }

  *a3 = v5;
  *(a3 + 4) = result ^ 1;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t protocol witness for BindableDataInternal.createAndSetParameter(name:_:) in conformance UInt32(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(a3 + 16);
  REKeyValueComponentGetComponentType();
  result = REEntityGetOrAddComponentByClass();
  if (v4 < 0)
  {
    __break(1u);
  }

  else
  {
    String.utf8CString.getter();
    REKeyValueComponentAddIntValue();
  }

  return result;
}

uint64_t protocol witness for static BindableDataInternal.get(from:) in conformance Int@<X0>(uint64_t a1@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  result = REBindPointGetInt64();
  *a1 = 0;
  *(a1 + 8) = result ^ 1;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t protocol witness for BindableDataInternal.createAndSetParameter(name:_:) in conformance Int(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(a3 + 16);
  REKeyValueComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  String.utf8CString.getter();
  REKeyValueComponentAddInt64Value();
}

uint64_t protocol witness for static BindableDataInternal.get(from:) in conformance Float@<X0>(uint64_t a1@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  result = REBindPointGetFloat();
  *a1 = 0;
  *(a1 + 4) = result ^ 1;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t protocol witness for BindableDataInternal.createAndSetParameter(name:_:) in conformance Float(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(a3 + 16);
  REKeyValueComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  String.utf8CString.getter();
  REKeyValueComponentAddFloatValue();
}

uint64_t protocol witness for static BindableDataInternal.get(from:) in conformance Double@<X0>(uint64_t a1@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  result = REBindPointGetDouble();
  *a1 = 0;
  *(a1 + 8) = result ^ 1;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t protocol witness for BindableDataInternal.createAndSetParameter(name:_:) in conformance Double(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(a3 + 16);
  REKeyValueComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  String.utf8CString.getter();
  REKeyValueComponentAddDoubleValue();
}

uint64_t SIMD2.set(to:type:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v11 = *(v5 + 16);
  v11(&v14 - v12, v3, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2VySfGMd, &_ss5SIMD2VySfGMR);
  if (swift_dynamicCast())
  {
    return REBindPointSetFloat2();
  }

  (v11)(v8, v3, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2VySdGMd, &_ss5SIMD2VySdGMR);
  result = swift_dynamicCast();
  if (result)
  {
    return REBindPointSetDouble2();
  }

  return result;
}

uint64_t static SIMD2.get(from:)@<X0>(char *a1@<X8>)
{
  v37 = a1;
  v41 = *MEMORY[0x1E69E9840];
  v1 = type metadata accessor for SIMD2();
  v2 = type metadata accessor for Optional();
  v3 = *(v2 - 8);
  v35 = v2;
  v36 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v10 = *(v1 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v34 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v34 - v22;
  v40 = 0;
  *&v39 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2VySfGMd, &_ss5SIMD2VySfGMR);
  if ((swift_dynamicCast() & 1) == 0 || ((*(v10 + 8))(v23, v1), !REBindPointGetFloat2()))
  {
LABEL_6:
    v38 = 0u;
    v39 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2VySdGMd, &_ss5SIMD2VySdGMR);
    if (swift_dynamicCast())
    {
      (*(v10 + 8))(v17, v1);
      if (REBindPointGetDouble2())
      {
        v38 = v39;
        v29 = swift_dynamicCast();
        v30 = *(v10 + 56);
        if (v29)
        {
          v30(v6, 0, 1, v1);
          v31 = *(v10 + 32);
          v31(v14, v6, v1);
          v32 = v37;
          v31(v37, v14, v1);
          result = (v30)(v32, 0, 1, v1);
          goto LABEL_12;
        }

        v30(v6, 1, 1, v1);
        (*(v36 + 8))(v6, v35);
      }
    }

    result = (*(v10 + 56))(v37, 1, 1, v1);
    goto LABEL_12;
  }

  *&v39 = v40;
  v24 = swift_dynamicCast();
  v25 = *(v10 + 56);
  if ((v24 & 1) == 0)
  {
    v25(v9, 1, 1, v1);
    (*(v36 + 8))(v9, v35);
    goto LABEL_6;
  }

  v25(v9, 0, 1, v1);
  v26 = *(v10 + 32);
  v26(v20, v9, v1);
  v27 = v37;
  v26(v37, v20, v1);
  result = (v25)(v27, 0, 1, v1);
LABEL_12:
  v33 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t static SIMD2.createBindPoint(_:entity:type:allowConversion:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, char a5)
{
  type metadata accessor for SIMD2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2VySdGMd, &_ss5SIMD2VySdGMR);
  if (swift_dynamicCastMetatype())
  {
    if (a4 == 1)
    {
      v8 = *(a3 + 16);
      String.utf8CString.getter();
      ReferenceForEntityAnimatedValuesDouble2 = REBindPointCreateReferenceForEntityAnimatedValuesDouble2();
      goto LABEL_9;
    }

    if (!a4)
    {
      v12 = *(a3 + 16);
      String.utf8CString.getter();
      ReferenceForEntityAnimatedValuesDouble2 = REBindPointCreateReferenceForEntityDouble2();
LABEL_9:
      v13 = ReferenceForEntityAnimatedValuesDouble2;

      if ((REBindPointIsValid() & 1) != 0 || (a5 & 1) == 0)
      {
        return v13;
      }

      REBindPointDestroy();
      v14 = *(a3 + 16);
      String.utf8CString.getter();
      if (a4)
      {
        ReferenceForEntityAnimatedValuesFloat2 = REBindPointCreateReferenceForEntityAnimatedValuesFloat2();
      }

      else
      {
        ReferenceForEntityAnimatedValuesFloat2 = REBindPointCreateReferenceForEntityFloat2();
      }

LABEL_21:
      v13 = ReferenceForEntityAnimatedValuesFloat2;

      REBindPointIsValid();
      return v13;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2VySfGMd, &_ss5SIMD2VySfGMR);
    if (swift_dynamicCastMetatype())
    {
      if (a4 == 1)
      {
        v10 = *(a3 + 16);
        String.utf8CString.getter();
        ReferenceForEntityFloat2 = REBindPointCreateReferenceForEntityAnimatedValuesFloat2();
      }

      else
      {
        if (a4)
        {
          goto LABEL_23;
        }

        v16 = *(a3 + 16);
        String.utf8CString.getter();
        ReferenceForEntityFloat2 = REBindPointCreateReferenceForEntityFloat2();
      }

      v13 = ReferenceForEntityFloat2;

      if ((REBindPointIsValid() & 1) != 0 || (a5 & 1) == 0)
      {
        return v13;
      }

      REBindPointDestroy();
      v17 = *(a3 + 16);
      String.utf8CString.getter();
      if (a4)
      {
        ReferenceForEntityAnimatedValuesFloat2 = REBindPointCreateReferenceForEntityAnimatedValuesDouble2();
      }

      else
      {
        ReferenceForEntityAnimatedValuesFloat2 = REBindPointCreateReferenceForEntityDouble2();
      }

      goto LABEL_21;
    }
  }

LABEL_23:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t SIMD2.createAndSetParameter(name:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(a4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  (*(v8 + 16))(&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v10, v9, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2VySfGMd, &_ss5SIMD2VySfGMR);
  result = swift_dynamicCast();
  if (result)
  {
    v12 = *(a3 + 16);
    REKeyValueComponentGetComponentType();
    REEntityGetOrAddComponentByClass();
    String.utf8CString.getter();
    REKeyValueComponentAddFloat2Value();
  }

  return result;
}

uint64_t protocol witness for static BindableDataInternal.get(from:) in conformance SIMD2<A>@<X0>(char *a1@<X8>, uint64_t a2@<X1>)
{
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  return static SIMD2.get(from:)(a1);
}

uint64_t protocol witness for static BindableDataInternal.createBindPoint(_:entity:type:allowConversion:) in conformance SIMD2<A>(uint64_t a1, uint64_t a2, uint64_t a3, int a4, char a5, uint64_t a6)
{
  v7 = *(a6 + 16);
  v6 = *(a6 + 24);
  return static SIMD2.createBindPoint(_:entity:type:allowConversion:)(a1, a2, a3, a4, a5);
}

uint64_t SIMD3.set(to:type:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v11 = *(v5 + 16);
  v11(&v14 - v12, v3, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
  if (swift_dynamicCast())
  {
    return REBindPointSetFloat3();
  }

  (v11)(v8, v3, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySdGMd, &_ss5SIMD3VySdGMR);
  result = swift_dynamicCast();
  if (result)
  {
    return REBindPointSetDouble3();
  }

  return result;
}

uint64_t static SIMD3.get(from:)@<X0>(char *a1@<X8>)
{
  v37 = a1;
  v43 = *MEMORY[0x1E69E9840];
  v1 = type metadata accessor for SIMD3();
  v2 = type metadata accessor for Optional();
  v3 = *(v2 - 8);
  v35 = v2;
  v36 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v10 = *(v1 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v34 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v34 - v22;
  v42 = 0u;
  v40 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
  if ((swift_dynamicCast() & 1) == 0 || ((*(v10 + 8))(v23, v1), !REBindPointGetFloat3()))
  {
LABEL_6:
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySdGMd, &_ss5SIMD3VySdGMR);
    if (swift_dynamicCast())
    {
      (*(v10 + 8))(v17, v1);
      if (REBindPointGetDouble3())
      {
        v38 = v40;
        v39 = v41;
        v29 = swift_dynamicCast();
        v30 = *(v10 + 56);
        if (v29)
        {
          v30(v6, 0, 1, v1);
          v31 = *(v10 + 32);
          v31(v14, v6, v1);
          v32 = v37;
          v31(v37, v14, v1);
          result = (v30)(v32, 0, 1, v1);
          goto LABEL_12;
        }

        v30(v6, 1, 1, v1);
        (*(v36 + 8))(v6, v35);
      }
    }

    result = (*(v10 + 56))(v37, 1, 1, v1);
    goto LABEL_12;
  }

  v40 = v42;
  v24 = swift_dynamicCast();
  v25 = *(v10 + 56);
  if ((v24 & 1) == 0)
  {
    v25(v9, 1, 1, v1);
    (*(v36 + 8))(v9, v35);
    goto LABEL_6;
  }

  v25(v9, 0, 1, v1);
  v26 = *(v10 + 32);
  v26(v20, v9, v1);
  v27 = v37;
  v26(v37, v20, v1);
  result = (v25)(v27, 0, 1, v1);
LABEL_12:
  v33 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t static SIMD3.createBindPoint(_:entity:type:allowConversion:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, char a5)
{
  type metadata accessor for SIMD3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySdGMd, &_ss5SIMD3VySdGMR);
  if (swift_dynamicCastMetatype())
  {
    if (a4 == 1)
    {
      v8 = *(a3 + 16);
      String.utf8CString.getter();
      ReferenceForEntityAnimatedValuesDouble3 = REBindPointCreateReferenceForEntityAnimatedValuesDouble3();
      goto LABEL_9;
    }

    if (!a4)
    {
      v12 = *(a3 + 16);
      String.utf8CString.getter();
      ReferenceForEntityAnimatedValuesDouble3 = REBindPointCreateReferenceForEntityDouble3();
LABEL_9:
      v13 = ReferenceForEntityAnimatedValuesDouble3;

      if ((REBindPointIsValid() & 1) != 0 || (a5 & 1) == 0)
      {
        return v13;
      }

      REBindPointDestroy();
      v14 = *(a3 + 16);
      String.utf8CString.getter();
      if (a4)
      {
        ReferenceForEntityAnimatedValuesFloat3 = REBindPointCreateReferenceForEntityAnimatedValuesFloat3();
      }

      else
      {
        ReferenceForEntityAnimatedValuesFloat3 = REBindPointCreateReferenceForEntityFloat3();
      }

LABEL_21:
      v13 = ReferenceForEntityAnimatedValuesFloat3;

      REBindPointIsValid();
      return v13;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    if (swift_dynamicCastMetatype())
    {
      if (a4 == 1)
      {
        v10 = *(a3 + 16);
        String.utf8CString.getter();
        ReferenceForEntityFloat3 = REBindPointCreateReferenceForEntityAnimatedValuesFloat3();
      }

      else
      {
        if (a4)
        {
          goto LABEL_23;
        }

        v16 = *(a3 + 16);
        String.utf8CString.getter();
        ReferenceForEntityFloat3 = REBindPointCreateReferenceForEntityFloat3();
      }

      v13 = ReferenceForEntityFloat3;

      if ((REBindPointIsValid() & 1) != 0 || (a5 & 1) == 0)
      {
        return v13;
      }

      REBindPointDestroy();
      v17 = *(a3 + 16);
      String.utf8CString.getter();
      if (a4)
      {
        ReferenceForEntityAnimatedValuesFloat3 = REBindPointCreateReferenceForEntityAnimatedValuesDouble3();
      }

      else
      {
        ReferenceForEntityAnimatedValuesFloat3 = REBindPointCreateReferenceForEntityDouble3();
      }

      goto LABEL_21;
    }
  }

LABEL_23:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t SIMD3.createAndSetParameter(name:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(a4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  (*(v8 + 16))(v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v10, v9, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
  result = swift_dynamicCast();
  if (result)
  {
    v13[0] = v13[1];
    v12 = *(a3 + 16);
    REKeyValueComponentGetComponentType();
    REEntityGetOrAddComponentByClass();
    String.utf8CString.getter();
    REKeyValueComponentAddFloat3Value();
  }

  return result;
}

uint64_t protocol witness for static BindableDataInternal.get(from:) in conformance SIMD3<A>@<X0>(char *a1@<X8>, uint64_t a2@<X1>)
{
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  return static SIMD3.get(from:)(a1);
}

uint64_t protocol witness for static BindableDataInternal.createBindPoint(_:entity:type:allowConversion:) in conformance SIMD3<A>(uint64_t a1, uint64_t a2, uint64_t a3, int a4, char a5, uint64_t a6)
{
  v7 = *(a6 + 16);
  v6 = *(a6 + 24);
  return static SIMD3.createBindPoint(_:entity:type:allowConversion:)(a1, a2, a3, a4, a5);
}

uint64_t SIMD4.set(to:type:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v11 = *(v5 + 16);
  v11(&v14 - v12, v3, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR);
  if (swift_dynamicCast())
  {
    return REBindPointSetFloat4();
  }

  (v11)(v8, v3, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4VySdGMd, &_ss5SIMD4VySdGMR);
  result = swift_dynamicCast();
  if (result)
  {
    return REBindPointSetDouble4();
  }

  return result;
}

uint64_t static SIMD4.get(from:)@<X0>(char *a1@<X8>)
{
  v37 = a1;
  v43 = *MEMORY[0x1E69E9840];
  v1 = type metadata accessor for SIMD4();
  v2 = type metadata accessor for Optional();
  v3 = *(v2 - 8);
  v35 = v2;
  v36 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v10 = *(v1 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v34 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v34 - v22;
  v42 = 0u;
  v40 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR);
  if ((swift_dynamicCast() & 1) == 0 || ((*(v10 + 8))(v23, v1), !REBindPointGetFloat4()))
  {
LABEL_6:
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4VySdGMd, &_ss5SIMD4VySdGMR);
    if (swift_dynamicCast())
    {
      (*(v10 + 8))(v17, v1);
      if (REBindPointGetDouble4())
      {
        v38 = v40;
        v39 = v41;
        v29 = swift_dynamicCast();
        v30 = *(v10 + 56);
        if (v29)
        {
          v30(v6, 0, 1, v1);
          v31 = *(v10 + 32);
          v31(v14, v6, v1);
          v32 = v37;
          v31(v37, v14, v1);
          result = (v30)(v32, 0, 1, v1);
          goto LABEL_12;
        }

        v30(v6, 1, 1, v1);
        (*(v36 + 8))(v6, v35);
      }
    }

    result = (*(v10 + 56))(v37, 1, 1, v1);
    goto LABEL_12;
  }

  v40 = v42;
  v24 = swift_dynamicCast();
  v25 = *(v10 + 56);
  if ((v24 & 1) == 0)
  {
    v25(v9, 1, 1, v1);
    (*(v36 + 8))(v9, v35);
    goto LABEL_6;
  }

  v25(v9, 0, 1, v1);
  v26 = *(v10 + 32);
  v26(v20, v9, v1);
  v27 = v37;
  v26(v37, v20, v1);
  result = (v25)(v27, 0, 1, v1);
LABEL_12:
  v33 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t static SIMD4.createBindPoint(_:entity:type:allowConversion:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, char a5)
{
  type metadata accessor for SIMD4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4VySdGMd, &_ss5SIMD4VySdGMR);
  if (swift_dynamicCastMetatype())
  {
    if (a4 == 1)
    {
      v8 = *(a3 + 16);
      String.utf8CString.getter();
      ReferenceForEntityAnimatedValuesDouble4 = REBindPointCreateReferenceForEntityAnimatedValuesDouble4();
      goto LABEL_9;
    }

    if (!a4)
    {
      v12 = *(a3 + 16);
      String.utf8CString.getter();
      ReferenceForEntityAnimatedValuesDouble4 = REBindPointCreateReferenceForEntityDouble4();
LABEL_9:
      v13 = ReferenceForEntityAnimatedValuesDouble4;

      if ((REBindPointIsValid() & 1) != 0 || (a5 & 1) == 0)
      {
        return v13;
      }

      REBindPointDestroy();
      v14 = *(a3 + 16);
      String.utf8CString.getter();
      if (a4)
      {
        ReferenceForEntityAnimatedValuesFloat4 = REBindPointCreateReferenceForEntityAnimatedValuesFloat4();
      }

      else
      {
        ReferenceForEntityAnimatedValuesFloat4 = REBindPointCreateReferenceForEntityFloat4();
      }

LABEL_21:
      v13 = ReferenceForEntityAnimatedValuesFloat4;

      REBindPointIsValid();
      return v13;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR);
    if (swift_dynamicCastMetatype())
    {
      if (a4 == 1)
      {
        v10 = *(a3 + 16);
        String.utf8CString.getter();
        ReferenceForEntityFloat4 = REBindPointCreateReferenceForEntityAnimatedValuesFloat4();
      }

      else
      {
        if (a4)
        {
          goto LABEL_23;
        }

        v16 = *(a3 + 16);
        String.utf8CString.getter();
        ReferenceForEntityFloat4 = REBindPointCreateReferenceForEntityFloat4();
      }

      v13 = ReferenceForEntityFloat4;

      if ((REBindPointIsValid() & 1) != 0 || (a5 & 1) == 0)
      {
        return v13;
      }

      REBindPointDestroy();
      v17 = *(a3 + 16);
      String.utf8CString.getter();
      if (a4)
      {
        ReferenceForEntityAnimatedValuesFloat4 = REBindPointCreateReferenceForEntityAnimatedValuesDouble4();
      }

      else
      {
        ReferenceForEntityAnimatedValuesFloat4 = REBindPointCreateReferenceForEntityDouble4();
      }

      goto LABEL_21;
    }
  }

LABEL_23:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t SIMD4.createAndSetParameter(name:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(a4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  (*(v8 + 16))(v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v10, v9, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR);
  result = swift_dynamicCast();
  if (result)
  {
    v13[0] = v13[1];
    v12 = *(a3 + 16);
    REKeyValueComponentGetComponentType();
    REEntityGetOrAddComponentByClass();
    String.utf8CString.getter();
    REKeyValueComponentAddFloat4Value();
  }

  return result;
}

uint64_t protocol witness for static BindableDataInternal.get(from:) in conformance SIMD4<A>@<X0>(char *a1@<X8>, uint64_t a2@<X1>)
{
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  return static SIMD4.get(from:)(a1);
}

uint64_t protocol witness for static BindableDataInternal.createBindPoint(_:entity:type:allowConversion:) in conformance SIMD4<A>(uint64_t a1, uint64_t a2, uint64_t a3, int a4, char a5, uint64_t a6)
{
  v7 = *(a6 + 16);
  v6 = *(a6 + 24);
  return static SIMD4.createBindPoint(_:entity:type:allowConversion:)(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for static BindableDataInternal.get(from:) in conformance simd_quatf@<X0>(uint64_t a1@<X8>)
{
  v7 = *MEMORY[0x1E69E9840];
  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  v6 = static simd_quatf.identity;
  result = REBindPointGetQuatF();
  v3 = *(&v6 + 1);
  v4 = v6;
  if (!result)
  {
    v4 = 0;
    v3 = 0;
  }

  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 16) = result ^ 1;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t protocol witness for BindableDataInternal.createAndSetParameter(name:_:) in conformance simd_quatf(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v4 = *(a3 + 16);
  REKeyValueComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  String.utf8CString.getter();
  REKeyValueComponentAddQuatFValue();
}

uint64_t protocol witness for BindableDataInternal.set(to:type:) in conformance Transform()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = *v0;
  return REBindPointSetSRT();
}

uint64_t protocol witness for static BindableDataInternal.get(from:) in conformance Transform@<X0>(uint64_t a1@<X8>)
{
  v5 = *MEMORY[0x1E69E9840];
  result = REBindPointGetSRT();
  if (result && one-time initialization token for identity != -1)
  {
    v4 = result;
    swift_once();
    result = v4;
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = result ^ 1;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t protocol witness for BindableDataInternal.createAndSetParameter(name:_:) in conformance Transform(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v7 = v3[1];
  v8 = v3[2];
  v6 = *v3;
  REKeyValueComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  String.utf8CString.getter();
  REKeyValueComponentAddRESRTValue();
}

uint64_t protocol witness for BindableDataInternal.set(to:type:) in conformance String()
{
  v1 = *v0;
  v2 = v0[1];
  String.utf8CString.getter();
  v3 = REBindPointSetString();

  return v3;
}

uint64_t protocol witness for static BindableDataInternal.get(from:) in conformance String@<X0>(uint64_t *a1@<X8>)
{
  v5 = *MEMORY[0x1E69E9840];
  if (REBindPointGetString())
  {
    result = String.init(cString:)();
  }

  else
  {
    result = 0;
    v3 = 0;
  }

  *a1 = result;
  a1[1] = v3;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t protocol witness for BindableDataInternal.createAndSetParameter(name:_:) in conformance String(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v4 = v3[1];
  v6 = *(a3 + 16);
  REKeyValueComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  String.utf8CString.getter();
  String.utf8CString.getter();
  REKeyValueComponentAddStringValue();
}

uint64_t CommonBindPoint.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  REBindPointDestroy();

  return swift_deallocClassInstance();
}

uint64_t specialized static Double.createBindPoint(_:entity:type:allowConversion:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, char a5)
{
  if (a4 == 1)
  {
    v8 = *(a3 + 16);
    String.utf8CString.getter();
    ReferenceForEntityAnimatedValuesDouble = REBindPointCreateReferenceForEntityAnimatedValuesDouble();
  }

  else
  {
    if (a4)
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v10 = *(a3 + 16);
    String.utf8CString.getter();
    ReferenceForEntityAnimatedValuesDouble = REBindPointCreateReferenceForEntityDouble();
  }

  v11 = ReferenceForEntityAnimatedValuesDouble;

  if (REBindPointIsValid() & 1) == 0 && (a5)
  {
    REBindPointDestroy();
    v12 = *(a3 + 16);
    String.utf8CString.getter();
    if (a4)
    {
      ReferenceForEntityAnimatedValuesFloat = REBindPointCreateReferenceForEntityAnimatedValuesFloat();
    }

    else
    {
      ReferenceForEntityAnimatedValuesFloat = REBindPointCreateReferenceForEntityFloat();
    }

    v11 = ReferenceForEntityAnimatedValuesFloat;

    REBindPointIsValid();
  }

  return v11;
}

uint64_t specialized static Float.createBindPoint(_:entity:type:allowConversion:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, char a5)
{
  if (a4 == 1)
  {
    v8 = *(a3 + 16);
    String.utf8CString.getter();
    ReferenceForEntityAnimatedValuesFloat = REBindPointCreateReferenceForEntityAnimatedValuesFloat();
  }

  else
  {
    if (a4)
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v10 = *(a3 + 16);
    String.utf8CString.getter();
    ReferenceForEntityAnimatedValuesFloat = REBindPointCreateReferenceForEntityFloat();
  }

  v11 = ReferenceForEntityAnimatedValuesFloat;

  if (REBindPointIsValid() & 1) == 0 && (a5)
  {
    REBindPointDestroy();
    v12 = *(a3 + 16);
    String.utf8CString.getter();
    if (a4)
    {
      ReferenceForEntityAnimatedValuesDouble = REBindPointCreateReferenceForEntityAnimatedValuesDouble();
    }

    else
    {
      ReferenceForEntityAnimatedValuesDouble = REBindPointCreateReferenceForEntityDouble();
    }

    v11 = ReferenceForEntityAnimatedValuesDouble;

    REBindPointIsValid();
  }

  return v11;
}

uint64_t specialized static Int.createBindPoint(_:entity:type:allowConversion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a4 == 1)
  {
    v10 = *(a3 + 16);
    String.utf8CString.getter();
    ReferenceForEntityAnimatedValuesInt64 = REBindPointCreateReferenceForEntityAnimatedValuesInt64();
  }

  else
  {
    if (a4)
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v12 = *(a3 + 16);
    String.utf8CString.getter();
    ReferenceForEntityAnimatedValuesInt64 = REBindPointCreateReferenceForEntityInt64();
  }

  v13 = ReferenceForEntityAnimatedValuesInt64;

  if (REBindPointIsValid() & 1) == 0 && (a5)
  {
    REBindPointDestroy();
    v13 = static UInt8.createBindPoint(_:entity:type:allowConversion:)(a1, a2, a3, a4, 0);
    if ((REBindPointIsValid() & 1) == 0)
    {
      REBindPointDestroy();
      v13 = static UInt16.createBindPoint(_:entity:type:allowConversion:)(a1, a2, a3, a4, 0);
      if ((REBindPointIsValid() & 1) == 0)
      {
        REBindPointDestroy();
        v14 = *(a3 + 16);
        String.utf8CString.getter();
        if (a4)
        {
          ReferenceForEntityAnimatedValuesUInt32 = REBindPointCreateReferenceForEntityAnimatedValuesUInt32();
        }

        else
        {
          ReferenceForEntityAnimatedValuesUInt32 = REBindPointCreateReferenceForEntityUInt32();
        }

        v13 = ReferenceForEntityAnimatedValuesUInt32;

        REBindPointIsValid();
      }
    }
  }

  return v13;
}

uint64_t specialized static Transform.createBindPoint(_:entity:type:allowConversion:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  if (a4 == 1)
  {
    v7 = *(a3 + 16);
    v8 = String.utf8CString.getter();
    v9 = a6(v7, v8 + 32);
LABEL_5:
    v13 = v9;

    return v13;
  }

  if (!a4)
  {
    v11 = *(a3 + 16);
    v12 = String.utf8CString.getter();
    v9 = a5(v11, v12 + 32);
    goto LABEL_5;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized static Bool.createBindPoint(_:entity:type:allowConversion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t (*a6)(uint64_t, uint64_t), uint64_t (*a7)(uint64_t, uint64_t))
{
  if (a4 == 1)
  {
    v13 = *(a3 + 16);
    v14 = String.utf8CString.getter();
    v15 = a7(v13, v14 + 32);
  }

  else
  {
    if (a4)
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v17 = *(a3 + 16);
    v18 = String.utf8CString.getter();
    v15 = a6(v17, v18 + 32);
  }

  v19 = v15;

  if ((REBindPointIsValid() & 1) != 0 || (a5 & 1) == 0)
  {
    return v19;
  }

  REBindPointDestroy();
  v20 = *(a3 + 16);
  String.utf8CString.getter();
  v21 = a4 ? REBindPointCreateReferenceForEntityAnimatedValuesInt32() : REBindPointCreateReferenceForEntityInt32();
  v19 = v21;

  if (REBindPointIsValid())
  {
    return v19;
  }

  REBindPointDestroy();
  v19 = static UInt8.createBindPoint(_:entity:type:allowConversion:)(a1, a2, a3, a4, 0);
  if (REBindPointIsValid())
  {
    return v19;
  }

  REBindPointDestroy();

  return static UInt16.createBindPoint(_:entity:type:allowConversion:)(a1, a2, a3, a4, 0);
}

uint64_t specialized static Int32.createBindPoint(_:entity:type:allowConversion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t (*a6)(uint64_t, uint64_t), uint64_t (*a7)(uint64_t, uint64_t))
{
  if (a4 == 1)
  {
    v13 = *(a3 + 16);
    v14 = String.utf8CString.getter();
    v15 = a7(v13, v14 + 32);
  }

  else
  {
    if (a4)
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v17 = *(a3 + 16);
    v18 = String.utf8CString.getter();
    v15 = a6(v17, v18 + 32);
  }

  v19 = v15;

  if (REBindPointIsValid())
  {
    return v19;
  }

  if ((a5 & 1) == 0)
  {
    return v19;
  }

  REBindPointDestroy();
  v19 = static UInt8.createBindPoint(_:entity:type:allowConversion:)(a1, a2, a3, a4, 0);
  if (REBindPointIsValid())
  {
    return v19;
  }

  REBindPointDestroy();

  return static UInt16.createBindPoint(_:entity:type:allowConversion:)(a1, a2, a3, a4, 0);
}

uint64_t static Resource.__fromCore(_:)(uint64_t *a1)
{
  v1 = *a1;
  if (REAssetGetSwiftObject())
  {
    return swift_dynamicCast();
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void _s17RealityFoundation16LoadableResourcePAAE012getAssetFromA12FileInBundle4name2in0eF0qd__SS_So8NSBundleCSgqd__SS_0B03URLVtKXEtKlFZAA05Audioh5GroupD0C_AOTt3g504_s17a12Foundation16cd12PAAE04loadd4g3A12hi22Bundle5named2inxSS_So8m8CSgtKFZxv26_0B03URLVtKcfu_AA05Audiog5P9D0C_Tt2G5Tf1nnc_n(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v45 = a2;
  v50 = a1;
  v55 = type metadata accessor for URL();
  v6 = *(v55 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v10 = a3;
  }

  else
  {
    v10 = [objc_opt_self() mainBundle];
  }

  v11 = a3;
  v12 = MEMORY[0x1C68F3280](0x7974696C616572, 0xE700000000000000);
  v13 = [v10 URLsForResourcesWithExtension:v12 subdirectory:0];

  if (!v13)
  {
    v53 = 0;
    v54 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    v53 = 0xD000000000000021;
    v54 = 0x80000001C18E5B10;
    v27 = [v10 description];
LABEL_22:
    v29 = v27;
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    MEMORY[0x1C68F3410](v30, v32);

    v33 = v53;
    v34 = v54;
    goto LABEL_23;
  }

  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v49 = *(v14 + 16);
  if (!v49)
  {

    v53 = 0;
    v54 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    v53 = 0xD000000000000021;
    v54 = 0x80000001C18E5B10;
    v27 = [v10 description];
    goto LABEL_22;
  }

  v40 = v10;
  v15 = 0;
  v43 = "Loadable resource named ";
  v44 = 0x80000001C18E5B40;
  v46 = v6 + 16;
  v47 = (v6 + 8);
  v16 = MEMORY[0x1E69E7CC0];
  v41 = 0xD000000000000015;
  v42 = 0xD000000000000018;
  v17 = v45;
  v48 = v14;
  do
  {
    if (v15 >= *(v14 + 16))
    {
      __break(1u);
      return;
    }

    (*(v6 + 16))(v9, v14 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, v55);
    v18 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    v19 = v18[19];
    __swift_project_boxed_opaque_existential_1(v18 + 15, v18[18]);

    v20 = specialized __REAssetService.assetRef(named:in:)(v50, v17);
    v21 = v4;
    if (v4)
    {
      v4 = 0;
    }

    else
    {
      if (_s17RealityFoundation16LoadableResourcePAAE17fromCoreAssetType8assetRefxSgs13OpaquePointerV_tFZAA014AudioFileGroupD0C_Tt1g5(*(v20 + 16)))
      {

        (*v47)(v9, v55);

        return;
      }

      v51 = 0;
      v52 = 0xE000000000000000;
      _StringGuts.grow(_:)(47);

      v51 = v42;
      v52 = v44;
      MEMORY[0x1C68F3410](v50, v17);
      MEMORY[0x1C68F3410](v41, v43 | 0x8000000000000000);
      v22 = v51;
      v23 = v52;
      lazy protocol witness table accessor for type __REAsset.LoadError and conformance __REAsset.LoadError();
      v21 = swift_allocError();
      *v24 = v22;
      *(v24 + 8) = v23;
      v17 = v45;
      *(v24 + 16) = 0;
      *(v24 + 24) = 0;
      *(v24 + 32) = 2;
      swift_willThrow();

      v4 = 0;
    }

    (*v47)(v9, v55);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16[2] + 1, 1, v16);
    }

    v26 = v16[2];
    v25 = v16[3];
    if (v26 >= v25 >> 1)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v16);
    }

    ++v15;
    v16[2] = v26 + 1;
    v16[v26 + 4] = v21;
    v14 = v48;
  }

  while (v49 != v15);

  if (v16[2])
  {
    v28 = v16[4];

    v10 = v40;
    goto LABEL_24;
  }

  v51 = 0;
  v52 = 0xE000000000000000;
  _StringGuts.grow(_:)(65);
  MEMORY[0x1C68F3410](0xD000000000000019, 0x80000001C18E5B80);
  MEMORY[0x1C68F3410](v50, v17);
  MEMORY[0x1C68F3410](0xD000000000000024, 0x80000001C18E5BA0);
  v10 = v40;
  v36 = [v40 description];
  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;

  MEMORY[0x1C68F3410](v37, v39);

  v33 = v51;
  v34 = v52;
LABEL_23:
  lazy protocol witness table accessor for type __REAsset.LoadError and conformance __REAsset.LoadError();
  swift_allocError();
  *v35 = v33;
  *(v35 + 8) = v34;
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  *(v35 + 32) = 2;
LABEL_24:
  swift_willThrow();
}

void _s17RealityFoundation16LoadableResourcePAAE012getAssetFromA12FileInBundle4name2in0eF0qd__SS_So8NSBundleCSgqd__SS_0B03URLVtKXEtKlFZ0A3Kit05AudiohD0C_APTt3g504_s17a12Foundation16cd12PAAE04loadd4g3A12hi22Bundle5named2inxSS_So8m8CSgtKFZxV38_0B03URLVtKcfu_0A3Kit05AudiogD0C_Tt2G5Tf1nnc_n(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v45 = a2;
  v50 = a1;
  v55 = type metadata accessor for URL();
  v6 = *(v55 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v10 = a3;
  }

  else
  {
    v10 = [objc_opt_self() mainBundle];
  }

  v11 = a3;
  v12 = MEMORY[0x1C68F3280](0x7974696C616572, 0xE700000000000000);
  v13 = [v10 URLsForResourcesWithExtension:v12 subdirectory:0];

  if (!v13)
  {
    v53 = 0;
    v54 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    v53 = 0xD000000000000021;
    v54 = 0x80000001C18E5B10;
    v27 = [v10 description];
LABEL_22:
    v29 = v27;
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    MEMORY[0x1C68F3410](v30, v32);

    v33 = v53;
    v34 = v54;
    goto LABEL_23;
  }

  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v49 = *(v14 + 16);
  if (!v49)
  {

    v53 = 0;
    v54 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    v53 = 0xD000000000000021;
    v54 = 0x80000001C18E5B10;
    v27 = [v10 description];
    goto LABEL_22;
  }

  v40 = v10;
  v15 = 0;
  v43 = "Loadable resource named ";
  v44 = 0x80000001C18E5B40;
  v46 = v6 + 16;
  v47 = (v6 + 8);
  v16 = MEMORY[0x1E69E7CC0];
  v41 = 0xD000000000000015;
  v42 = 0xD000000000000018;
  v17 = v45;
  v48 = v14;
  do
  {
    if (v15 >= *(v14 + 16))
    {
      __break(1u);
      return;
    }

    (*(v6 + 16))(v9, v14 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, v55);
    v18 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    v19 = v18[19];
    __swift_project_boxed_opaque_existential_1(v18 + 15, v18[18]);

    v20 = specialized __REAssetService.assetRef(named:in:)(v50, v17);
    v21 = v4;
    if (v4)
    {
      v4 = 0;
    }

    else
    {
      if (_s17RealityFoundation16LoadableResourcePAAE17fromCoreAssetType8assetRefxSgs13OpaquePointerV_tFZ0A3Kit09AudioFileD0C_Tt1g5(*(v20 + 16)))
      {

        (*v47)(v9, v55);

        return;
      }

      v51 = 0;
      v52 = 0xE000000000000000;
      _StringGuts.grow(_:)(47);

      v51 = v42;
      v52 = v44;
      MEMORY[0x1C68F3410](v50, v17);
      MEMORY[0x1C68F3410](v41, v43 | 0x8000000000000000);
      v22 = v51;
      v23 = v52;
      lazy protocol witness table accessor for type __REAsset.LoadError and conformance __REAsset.LoadError();
      v21 = swift_allocError();
      *v24 = v22;
      *(v24 + 8) = v23;
      v17 = v45;
      *(v24 + 16) = 0;
      *(v24 + 24) = 0;
      *(v24 + 32) = 2;
      swift_willThrow();

      v4 = 0;
    }

    (*v47)(v9, v55);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16[2] + 1, 1, v16);
    }

    v26 = v16[2];
    v25 = v16[3];
    if (v26 >= v25 >> 1)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v16);
    }

    ++v15;
    v16[2] = v26 + 1;
    v16[v26 + 4] = v21;
    v14 = v48;
  }

  while (v49 != v15);

  if (v16[2])
  {
    v28 = v16[4];

    v10 = v40;
    goto LABEL_24;
  }

  v51 = 0;
  v52 = 0xE000000000000000;
  _StringGuts.grow(_:)(65);
  MEMORY[0x1C68F3410](0xD000000000000019, 0x80000001C18E5B80);
  MEMORY[0x1C68F3410](v50, v17);
  MEMORY[0x1C68F3410](0xD000000000000024, 0x80000001C18E5BA0);
  v10 = v40;
  v36 = [v40 description];
  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;

  MEMORY[0x1C68F3410](v37, v39);

  v33 = v51;
  v34 = v52;
LABEL_23:
  lazy protocol witness table accessor for type __REAsset.LoadError and conformance __REAsset.LoadError();
  swift_allocError();
  *v35 = v33;
  *(v35 + 8) = v34;
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  *(v35 + 32) = 2;
LABEL_24:
  swift_willThrow();
}

void static LoadableResource.getAssetFromRealityFileInBundle<A>(name:in:getAsset:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void (*a4)(uint64_t, uint64_t, char *)@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v39 = a4;
  v40 = a1;
  v41 = a2;
  v38 = a5;
  v8 = type metadata accessor for URL();
  v44 = *(v8 - 8);
  v9 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v12 = a3;
  }

  else
  {
    v12 = [objc_opt_self() mainBundle];
  }

  v13 = a3;
  v14 = MEMORY[0x1C68F3280](0x7974696C616572, 0xE700000000000000);
  v15 = [v12 URLsForResourcesWithExtension:v14 subdirectory:0];

  if (v15)
  {
    v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v37 = *(v16 + 16);
    if (v37)
    {
      v33 = v12;
      v17 = 0;
      v36 = v44 + 16;
      v18 = (v44 + 8);
      v19 = MEMORY[0x1E69E7CC0];
      v34 = v16;
      v35 = v8;
      do
      {
        if (v17 >= *(v16 + 16))
        {
          __break(1u);
          return;
        }

        (*(v44 + 16))(v11, v16 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v17, v8);
        v20 = v6;
        v39(v40, v41, v11);
        if (!v6)
        {
          (*v18)(v11, v8);

          return;
        }

        (*v18)(v11, v8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19[2] + 1, 1, v19);
        }

        v22 = v19[2];
        v21 = v19[3];
        if (v22 >= v21 >> 1)
        {
          v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v19);
        }

        v6 = 0;
        ++v17;
        v19[2] = v22 + 1;
        v19[v22 + 4] = v20;
        v16 = v34;
        v8 = v35;
      }

      while (v37 != v17);

      if (v19[2])
      {
        v24 = v19[4];

        v12 = v33;
        goto LABEL_22;
      }

      v42 = 0;
      v43 = 0xE000000000000000;
      _StringGuts.grow(_:)(65);
      MEMORY[0x1C68F3410](0xD000000000000019, 0x80000001C18E5B80);
      MEMORY[0x1C68F3410](v40, v41);
      MEMORY[0x1C68F3410](0xD000000000000024, 0x80000001C18E5BA0);
      v12 = v33;
      v23 = [v33 description];
    }

    else
    {

      v42 = 0;
      v43 = 0xE000000000000000;
      _StringGuts.grow(_:)(35);

      v42 = 0xD000000000000021;
      v43 = 0x80000001C18E5B10;
      v23 = [v12 description];
    }
  }

  else
  {
    v42 = 0;
    v43 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    v42 = 0xD000000000000021;
    v43 = 0x80000001C18E5B10;
    v23 = [v12 description];
  }

  v25 = v23;
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  MEMORY[0x1C68F3410](v26, v28);

  v29 = v42;
  v30 = v43;
  lazy protocol witness table accessor for type __REAsset.LoadError and conformance __REAsset.LoadError();
  swift_allocError();
  *v31 = v29;
  *(v31 + 8) = v30;
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  *(v31 + 32) = 2;
LABEL_22:
  swift_willThrow();
}

uint64_t closure #1 in static LoadableResource.getAssetRefFromRealityFileInBundle(named:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v8 = v7[19];
  __swift_project_boxed_opaque_existential_1(v7 + 15, v7[18]);

  v9 = specialized __REAssetService.assetRef(named:in:)(a1, a2);

  if (!v3)
  {
    *a3 = v9;
  }

  return result;
}

uint64_t one-time initialization function for resourceClasses()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11REAssetTypeV_17RealityFoundation16LoadableResource_pXptGMd, &_ss23_ContiguousArrayStorageCySo11REAssetTypeV_17RealityFoundation16LoadableResource_pXptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1897FD0;
  *(inited + 32) = 13;
  *(inited + 40) = type metadata accessor for AudioFileResource();
  *(inited + 48) = &protocol witness table for AudioResource;
  *(inited + 56) = 14;
  *(inited + 64) = type metadata accessor for AudioFileGroupResource();
  *(inited + 72) = &protocol witness table for AudioResource;
  *(inited + 80) = 15;
  *(inited + 88) = type metadata accessor for AudioUnitResource();
  *(inited + 96) = &protocol witness table for AudioResource;
  v1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11REAssetTypeV_17RealityFoundation16LoadableResource_pXpTt0g5Tf4g_n(inited);
  result = swift_setDeallocating();
  resourceClasses._rawValue = v1;
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v18 = &v34 - v17;
  v19 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v34 - v24;
  v26 = dispatch thunk of Collection.count.getter();
  if (!v26)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v48 = v26;
  v52 = ContiguousArray.init()();
  v39 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v48);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = dispatch thunk of Collection.subscript.read();
      v30 = v18;
      v31 = v18;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v28;
      v18 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t SIMD4<>.cgColor.getter(uint64_t a1, uint64_t a2)
{
  v16 = SIMD4.scalars.getter(a1);
  v4 = *(a1 + 24);
  v13 = *(a1 + 16);
  v14 = a2;
  v15 = v4;
  v5 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  v8 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #1 in SIMD4<>.cgColor.getter, v12, v5, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v7);

  if (one-time initialization token for linearSRGBColorSpace != -1)
  {
    swift_once();
  }

  v9 = CGColorCreate(static CGColorSpaceRef.linearSRGBColorSpace, (v8 + 32));
  if (v9)
  {
    v10 = v9;

    return v10;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

__n128 CGColorRef.simd4.getter()
{
  v1 = v0;
  _ss5SIMD4V17RealityFoundationSBRzrlEyAByxGSo10CGColorRefacfCSf_Tt1g5Tf4g_n(v1);
  v4 = v2;

  return v4;
}

uint64_t SIMD4.init(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  MEMORY[0x1EEE9AC00](v5);
  MEMORY[0x1EEE9AC00](v6);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of SIMDStorage.subscript.getter();
  dispatch thunk of SIMDStorage.subscript.getter();
  dispatch thunk of SIMDStorage.subscript.getter();
  dispatch thunk of SIMDStorage.init()();
  dispatch thunk of SIMDStorage.subscript.setter();
  dispatch thunk of SIMDStorage.subscript.setter();
  dispatch thunk of SIMDStorage.subscript.setter();
  v7 = type metadata accessor for SIMD3();
  (*(*(v7 - 8) + 8))(a1, v7);
  return dispatch thunk of SIMDStorage.subscript.setter();
}

uint64_t SIMD3<>.init(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v23 = &v23 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v23 - v16;
  v18 = type metadata accessor for SIMD4();
  v25 = *(v18 - 8);
  v26 = v18;
  v19 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v23 - v20;
  v24 = a1;
  SIMD4<>.init(_:)(v24, a2, a3, a4);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of SIMDStorage.subscript.getter();
  dispatch thunk of SIMDStorage.subscript.getter();
  dispatch thunk of SIMDStorage.subscript.getter();
  dispatch thunk of SIMDStorage.init()();
  memcpy(v9, v17, v8);
  dispatch thunk of SIMDStorage.subscript.setter();
  memcpy(v9, v14, v8);
  dispatch thunk of SIMDStorage.subscript.setter();
  dispatch thunk of SIMDStorage.subscript.setter();

  return (*(v25 + 8))(v21, v26);
}

void SIMD4<>.init(_:)(CGColorRef color, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (one-time initialization token for linearSRGBColorSpace != -1)
  {
    swift_once();
  }

  CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(static CGColorSpaceRef.linearSRGBColorSpace, kCGRenderingIntentDefault, color, 0);
  if (CopyByMatchingToColorSpace)
  {
    v9 = CopyByMatchingToColorSpace;
    v10 = CGColorRef.components.getter();
    if (v10)
    {
      v19 = v10;
      MEMORY[0x1EEE9AC00](v10);
      v16[2] = a2;
      v16[3] = a3;
      v17 = a4;
      v18 = a2;
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12CoreGraphics7CGFloatVGMd, &_sSay12CoreGraphics7CGFloatVGMR);
      v12 = lazy protocol witness table accessor for type [CGFloat] and conformance [A]();
      v14 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #2 in SIMD4<>.init(_:), v16, v11, a2, MEMORY[0x1E69E73E0], v12, MEMORY[0x1E69E7410], v13);

      if (MEMORY[0x1C68F3740](v14, a2) == 4)
      {
        type metadata accessor for SIMD4();
        v19 = v14;
        type metadata accessor for Array();
        swift_getWitnessTable();
        swift_getWitnessTable();
        SIMD.init<A>(_:)();

        return;
      }
    }

    LODWORD(v18) = 0;
    v15 = 27;
  }

  else
  {
    LODWORD(v18) = 0;
    v15 = 24;
  }

  v17 = v15;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t SIMD3<>.cgColor.getter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v27 = a2;
  v5 = *(a1 + 16);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v26 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[1] = *(*(*(*(v8 + 16) + 16) + 8) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = *(a1 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[0] = *(a1 + 24);
  v16 = type metadata accessor for SIMD4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = v25 - v20;
  (*(v11 + 16))(v15, v3, a1, v19);
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  v22 = v26;
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  SIMD4.init(_:_:)(v15, v22, v5);
  v23 = SIMD4<>.cgColor.getter(v16, v27);
  (*(v17 + 8))(v21, v16);
  return v23;
}

uint64_t SIMD4.scalars.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = getContiguousArrayStorageType<A>(for:)(v2, v2);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  v6 = *(*(v2 - 8) + 72);
  v7 = *(*(v2 - 8) + 80);
  swift_allocObject();
  v8 = static Array._adoptStorage(_:count:)();
  v9 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of SIMDStorage.subscript.getter();
  dispatch thunk of SIMDStorage.subscript.getter();
  dispatch thunk of SIMDStorage.subscript.getter();
  dispatch thunk of SIMDStorage.subscript.getter();

  return _finalizeUninitializedArray<A>(_:)(v8);
}

uint64_t implicit closure #1 in SIMD4<>.cgColor.getter(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  memcpy(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v4, v3);
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  return BinaryFloatingPoint.init<A>(_:)();
}

uint64_t partial apply for implicit closure #1 in SIMD4<>.cgColor.getter(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  return implicit closure #1 in SIMD4<>.cgColor.getter(a1, v1[2]);
}

__n128 CGColorRef.simd3.getter()
{
  v1 = v0;
  _ss5SIMD4V17RealityFoundationSBRzrlEyAByxGSo10CGColorRefacfCSf_Tt1g5Tf4g_n(v1);
  v4 = v2;

  return v4;
}

uint64_t one-time initialization function for linearSRGBWhite()
{
  if (one-time initialization token for linearSRGBColorSpace != -1)
  {
    swift_once();
  }

  result = CGColorCreate(static CGColorSpaceRef.linearSRGBColorSpace, dbl_1F409B290);
  if (result)
  {
    static CGColorRef.linearSRGBWhite = result;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t one-time initialization function for linearSRGBColorSpace()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1B0]);
  if (result)
  {
    static CGColorSpaceRef.linearSRGBColorSpace = result;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t getContiguousArrayStorageType<A>(for:)(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  }

  else
  {

    return type metadata accessor for _ContiguousArrayStorage();
  }
}

uint64_t _ss5SIMD4V17RealityFoundationSBRzrlEyAByxGSo10CGColorRefacfCSf_Tt1g5Tf4g_n(CGColorRef color)
{
  if (one-time initialization token for linearSRGBColorSpace != -1)
  {
    swift_once();
  }

  CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(static CGColorSpaceRef.linearSRGBColorSpace, kCGRenderingIntentDefault, color, 0);
  if (CopyByMatchingToColorSpace)
  {
    v3 = CopyByMatchingToColorSpace;
    v4 = CGColorRef.components.getter();
    if (v4)
    {
      v5 = *(v4 + 16);
      if (v5)
      {
        v15 = MEMORY[0x1E69E7CC0];
        v6 = v4;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
        v7 = v6;
        v8 = v15;
        v9 = *(v15 + 16);
        v10 = 32;
        do
        {
          v11 = *(v7 + v10);
          v12 = *(v15 + 24);
          if (v9 >= v12 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v9 + 1, 1);
            v7 = v6;
          }

          v13 = v11;
          *(v15 + 16) = v9 + 1;
          *(v15 + 4 * v9 + 32) = v13;
          v10 += 8;
          ++v9;
          --v5;
        }

        while (v5);
      }

      else
      {

        v8 = MEMORY[0x1E69E7CC0];
      }

      if (*(v8 + 16) == 4)
      {
        _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(v8);
      }
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t partial apply for implicit closure #2 in SIMD4<>.init(_:)(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[5];
  v6 = *a1;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  return dispatch thunk of BinaryFloatingPoint.init<A>(_:)();
}

unint64_t lazy protocol witness table accessor for type [CGFloat] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CGFloat] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CGFloat] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay12CoreGraphics7CGFloatVGMd, &_sSay12CoreGraphics7CGFloatVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CGFloat] and conformance [A]);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for ColorGamut4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 17) = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type CGFloat and conformance CGFloat()
{
  result = lazy protocol witness table cache variable for type CGFloat and conformance CGFloat;
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }

  return result;
}

uint64_t __RKMaterialParameterBlock.buildParametersDictionaryFromCurrentState()()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[3];
  v59 = v0[2];
  v4 = REMaterialParameterBlockValueCopyParameterNameArray();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10RealityKit26__RKMaterialParameterBlockV0F0OTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v7 = v5;
  v8 = *(v5 + 16);
  if (!v8)
  {

    return v6;
  }

  v9 = 0;
  v58 = 0;
  v10 = (v5 + 40);
  v56 = v8 - 1;
  v55 = v3;
  v54 = v7;
  do
  {
    v11 = *(v10 - 1);
    v12 = *v10;
    MEMORY[0x1EEE9AC00](v7);
    *(&v53 - 4) = v1;
    *(&v53 - 24) = v2;
    *(&v53 - 2) = v59;
    *(&v53 - 1) = v3;
    v57 = v13;
    v60 = v11;
    if ((v12 & 0x1000000000000000) != 0)
    {
      goto LABEL_29;
    }

    if ((v12 & 0x2000000000000000) == 0)
    {
      if ((v11 & 0x1000000000000000) != 0)
      {

        v14 = v3;

        v15 = v58;
        closure #1 in __RKMaterialParameterBlock.get(parameter:)(v71);
        v58 = v15;

        goto LABEL_9;
      }

LABEL_29:

      v16 = v3;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0OSgMR);
      v17 = v58;
      _StringGuts._slowWithCString<A>(_:)();
      goto LABEL_8;
    }

    *&v61 = v11;
    *(&v61 + 1) = v12 & 0xFFFFFFFFFFFFFFLL;

    v16 = v3;

    v17 = v58;
    closure #1 in __RKMaterialParameterBlock.get(parameter:)(v71);
LABEL_8:
    v58 = v17;

LABEL_9:

    v67 = v71[0];
    v68 = v71[1];
    v69 = v71[2];
    v70 = v71[3];
    v18 = v72;
    if (v72 != 255)
    {
      v19 = v2;
      v20 = v1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v66 = v6;
      v23 = specialized __RawDictionaryStorage.find<A>(_:)(v60, v12);
      v24 = v6[2];
      v25 = (v22 & 1) == 0;
      v7 = v24 + v25;
      if (__OFADD__(v24, v25))
      {
        goto LABEL_33;
      }

      v26 = v22;
      if (v6[3] >= v7)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v7 = specialized _NativeDictionary.copy()();
        }

        v27 = v60;
        if ((v26 & 1) == 0)
        {
LABEL_14:
          v6 = v66;
          v66[(v23 >> 6) + 8] |= 1 << v23;
          v29 = (v6[6] + 16 * v23);
          *v29 = v27;
          v29[1] = v12;
          v30 = v6[7] + 80 * v23;
          v31 = v68;
          *v30 = v67;
          *(v30 + 16) = v31;
          v32 = v70;
          *(v30 + 32) = v69;
          *(v30 + 48) = v32;
          *(v30 + 64) = v18;
          v33 = v6[2];
          v34 = __OFADD__(v33, 1);
          v35 = v33 + 1;
          if (v34)
          {
            goto LABEL_34;
          }

          v6[2] = v35;
          goto LABEL_24;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v7, isUniquelyReferenced_nonNull_native);
        v27 = v60;
        v7 = specialized __RawDictionaryStorage.find<A>(_:)(v60, v12);
        if ((v26 & 1) != (v28 & 1))
        {
          goto LABEL_35;
        }

        v23 = v7;
        if ((v26 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      v6 = v66;
      v46 = v66[7] + 80 * v23;
      v47 = *(v46 + 16);
      v48 = *(v46 + 32);
      v49 = *(v46 + 48);
      v65 = *(v46 + 64);
      v64 = v49;
      v63 = v48;
      v61 = *v46;
      v62 = v47;
      v50 = v68;
      *v46 = v67;
      *(v46 + 16) = v50;
      v51 = v70;
      *(v46 + 32) = v69;
      *(v46 + 48) = v51;
      *(v46 + 64) = v18;
      v7 = outlined destroy of __RKMaterialParameterBlock.Parameter(&v61);
LABEL_24:
      v1 = v20;
      v2 = v19;
LABEL_25:
      v3 = v55;
      v40 = v54;
      goto LABEL_26;
    }

    v36 = specialized __RawDictionaryStorage.find<A>(_:)(v60, v12);
    v38 = v37;

    if ((v38 & 1) == 0)
    {
      goto LABEL_25;
    }

    v39 = swift_isUniquelyReferenced_nonNull_native();
    v66 = v6;
    v3 = v55;
    v40 = v54;
    if (!v39)
    {
      specialized _NativeDictionary.copy()();
      v6 = v66;
    }

    v41 = *(v6[6] + 16 * v36 + 8);

    v42 = v6[7] + 80 * v36;
    v61 = *v42;
    v44 = *(v42 + 32);
    v43 = *(v42 + 48);
    v45 = *(v42 + 64);
    v62 = *(v42 + 16);
    v63 = v44;
    v65 = v45;
    v64 = v43;
    outlined destroy of __RKMaterialParameterBlock.Parameter(&v61);
    v7 = specialized _NativeDictionary._delete(at:)(v36, v6);
LABEL_26:
    if (v56 == v9)
    {

      return v6;
    }

    ++v9;
    v10 += 2;
  }

  while (v9 < *(v40 + 16));
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t __RKMaterialParameterBlock.parameters.getter()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = v0[2];
  v5 = v0[3];
  return __RKMaterialParameterBlock.buildParametersDictionaryFromCurrentState()();
}

uint64_t __RKMaterialParameterBlock.parameters.setter(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 64;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  for (i = (v4 + 63) >> 6; v6; result = outlined destroy of __RKMaterialParameterBlock.Parameter(v24))
  {
    v8 = v2;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = v9 | (v8 << 6);
    v11 = (*(v1 + 48) + 16 * v10);
    v12 = *v11;
    v13 = v11[1];
    v14 = *(v1 + 56) + 80 * v10;
    v24[0] = *v14;
    v16 = *(v14 + 32);
    v15 = *(v14 + 48);
    v17 = *(v14 + 16);
    v25 = *(v14 + 64);
    v24[2] = v16;
    v24[3] = v15;
    v24[1] = v17;
    v18 = *(v14 + 48);
    v22[2] = *(v14 + 32);
    v22[3] = v18;
    v23 = *(v14 + 64);
    v19 = *(v14 + 16);
    v22[0] = *v14;
    v22[1] = v19;
    v20 = String.utf8CString.getter();
    outlined init with copy of __RKMaterialParameterBlock.Parameter(v24, &v21);
    __RKMaterialParameterBlock.unsafeSet(parameter:value:)((v20 + 32), v22);
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= i)
    {
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void (*__RKMaterialParameterBlock.parameters.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xA0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 152) = v1;
  v8 = *v1;
  v9 = *(v1 + 8);
  v10 = v1[2];
  v11 = v1[3];

  v5 = v11;

  v6 = __RKMaterialParameterBlock.buildParametersDictionaryFromCurrentState()();

  *(v4 + 72) = v6;
  return __RKMaterialParameterBlock.parameters.modify;
}

void __RKMaterialParameterBlock.parameters.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 72);
  v3 = *v4;
  if (a2)
  {
LABEL_13:

    free(v2);
  }

  else
  {
    v5 = -1;
    v6 = -1 << *(v3 + 32);
    if (-v6 < 64)
    {
      v5 = ~(-1 << -v6);
    }

    v7 = v5 & *(v3 + 64);
    v8 = (63 - v6) >> 6;
    v9 = *(*a1 + 72);

    v10 = 0;
    while (v7)
    {
      v11 = v10;
LABEL_10:
      v12 = *(v2 + 19);
      v13 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v14 = v13 | (v11 << 6);
      v15 = (*(v3 + 48) + 16 * v14);
      v16 = *v15;
      v17 = v15[1];
      v18 = *(v3 + 56) + 80 * v14;
      *v2 = *v18;
      v20 = *(v18 + 32);
      v19 = *(v18 + 48);
      v21 = *(v18 + 16);
      *(v2 + 64) = *(v18 + 64);
      v2[2] = v20;
      v2[3] = v19;
      v2[1] = v21;
      v22 = *(v18 + 48);
      v26[2] = *(v18 + 32);
      v26[3] = v22;
      v27 = *(v18 + 64);
      v23 = *(v18 + 16);
      v26[0] = *v18;
      v26[1] = v23;
      v24 = String.utf8CString.getter();
      outlined init with copy of __RKMaterialParameterBlock.Parameter(v2, (v2 + 5));
      __RKMaterialParameterBlock.unsafeSet(parameter:value:)((v24 + 32), v26);

      outlined destroy of __RKMaterialParameterBlock.Parameter(v2);
    }

    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v8)
      {

        v25 = *v4;
        goto LABEL_13;
      }

      v7 = *(v3 + 64 + 8 * v11);
      ++v10;
      if (v7)
      {
        v10 = v11;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

id static HoverEffectComponent.HoverEffect.spotlight(_:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8) | (*(a1 + 12) << 32);
  *a3 = *a1;
  *(a3 + 8) = v4;
  *(a3 + 16) = a2;
  *(a3 + 24) = 0;
  *(a3 + 32) = 1;
  *(a3 + 33) = 1;
  *(a3 + 36) = 3;
  return v3;
}

__n128 static HoverEffectComponent.HoverEffect.shader(_:)@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  *(a2 + 16) = 2;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  *(a2 + 33) = 1;
  *(a2 + 36) = 3;
  return result;
}

void HoverEffectComponent.HoverEffect.groupID.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
}

uint64_t *HoverEffectComponent.HoverEffect.groupID.setter(uint64_t *result)
{
  v2 = *result;
  v3 = *(result + 8);
  *(v1 + 33) = 0;
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  return result;
}

uint64_t *(*HoverEffectComponent.HoverEffect.groupID.modify(uint64_t a1))(uint64_t *result)
{
  *(a1 + 16) = v1;
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
  return HoverEffectComponent.HoverEffect.groupID.modify;
}

uint64_t *HoverEffectComponent.HoverEffect.groupID.modify(uint64_t *result)
{
  v1 = result[2];
  v2 = *result;
  v3 = *(result + 8);
  *(v1 + 33) = 0;
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  return result;
}

uint64_t static HoverEffectComponent.HoverEffect.spotlight(_:groupID:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  v5 = *(a1 + 8) | (*(a1 + 12) << 32);
  *a4 = *a1;
  *(a4 + 8) = v5;
  *(a4 + 16) = a3;
  *(a4 + 36) = 3;
  *(a4 + 33) = 0;
  *(a4 + 24) = v4;
  *(a4 + 32) = 0;
  return MEMORY[0x1EEE66D28]();
}

__n128 static HoverEffectComponent.HoverEffect.shader(_:groupID:)@<Q0>(__n128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  result = *a1;
  *a3 = *a1;
  *(a3 + 16) = 2;
  *(a3 + 36) = 3;
  *(a3 + 33) = 0;
  *(a3 + 24) = v3;
  *(a3 + 32) = 0;
  return result;
}

_DWORD *(*HoverEffectComponent.HoverEffect.allowedInputTypes_protoV1.modify(uint64_t a1))(_DWORD *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 36);
  return HoverEffectComponent.HoverEffect.allowedInputTypes_protoV1.modify;
}

uint64_t HoverEffectComponent.hoverEffect.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  if (*(*v1 + 16))
  {
    v3 = *(v2 + 32);
    v4 = *(v2 + 48);
    v8 = *(v2 + 64);
    v7[0] = v3;
    v7[1] = v4;
    *(a1 + 32) = v8;
    *a1 = *(v2 + 32);
    *(a1 + 16) = v4;
    return outlined init with copy of HoverEffectComponent.HoverEffect(v7, v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t key path setter for HoverEffectComponent.hoverEffect : HoverEffectComponent(__int128 *a1, uint64_t *a2)
{
  v3 = a1[1];
  v11 = *a1;
  v12 = v3;
  v13 = *(a1 + 4);
  v4 = *a2;
  outlined init with copy of HoverEffectComponent.HoverEffect(&v11, v9);
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if (*(v4 + 16))
    {
LABEL_3:
      v6 = *(v4 + 32);
      v7 = *(v4 + 48);
      v10 = *(v4 + 64);
      v9[0] = v6;
      v9[1] = v7;
      *(v4 + 64) = v13;
      v8 = v12;
      *(v4 + 32) = v11;
      *(v4 + 48) = v8;
      result = outlined destroy of HoverEffectComponent.HoverEffect(v9);
      *a2 = v4;
      return result;
    }
  }

  else
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
    v4 = result;
    if (*(result + 16))
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

uint64_t HoverEffectComponent.hoverEffect.setter(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if (*(v3 + 16))
    {
LABEL_3:
      v5 = *(v3 + 32);
      v6 = *(v3 + 48);
      v9 = *(v3 + 64);
      v8[0] = v5;
      v8[1] = v6;
      *(v3 + 64) = *(a1 + 32);
      v7 = *(a1 + 16);
      *(v3 + 32) = *a1;
      *(v3 + 48) = v7;
      result = outlined destroy of HoverEffectComponent.HoverEffect(v8);
      *v1 = v3;
      return result;
    }
  }

  else
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
    if (*(result + 16))
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

void (*HoverEffectComponent.hoverEffect.modify(void (**a1)(uint64_t *a1, char a2)))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0xD8uLL);
  }

  *a1 = result;
  *(result + 25) = v1;
  v4 = *v1;
  *(result + 26) = *v1;
  if (*(v4 + 16))
  {
    v5 = *(v4 + 32);
    v6 = *(v4 + 48);
    *(result + 4) = *(v4 + 64);
    *result = v5;
    *(result + 1) = v6;
    v7 = *(v4 + 32);
    v8 = *(v4 + 48);
    *(result + 9) = *(v4 + 64);
    *(result + 56) = v8;
    *(result + 40) = v7;
    outlined init with copy of HoverEffectComponent.HoverEffect(result, result + 80);
    return HoverEffectComponent.hoverEffect.modify;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void HoverEffectComponent.hoverEffect.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 208);
  if ((a2 & 1) == 0)
  {
    v16 = *(v2 + 40);
    v17 = *(v2 + 56);
    v18 = *(v2 + 72);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v2 + 208);
    if (isUniquelyReferenced_nonNull_native)
    {
      if (!*(v6 + 2))
      {
LABEL_14:
        __break(1u);
        return;
      }

LABEL_7:
      v13 = *(v2 + 200);
      v14 = *(v6 + 8);
      v15 = *(v6 + 3);
      *(v2 + 80) = *(v6 + 2);
      *(v2 + 96) = v15;
      *(v2 + 112) = v14;
      *(v6 + 2) = v16;
      *(v6 + 3) = v17;
      *(v6 + 8) = v18;
      outlined destroy of HoverEffectComponent.HoverEffect(v2 + 80);
      *v13 = v6;
      goto LABEL_8;
    }

LABEL_13:
    v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
    if (!*(v6 + 2))
    {
      goto LABEL_14;
    }

    goto LABEL_7;
  }

  v4 = *(v2 + 56);
  *(v2 + 80) = *(v2 + 40);
  *(v2 + 96) = v4;
  *(v2 + 112) = *(v2 + 72);
  outlined init with copy of HoverEffectComponent.HoverEffect(v2 + 80, v2 + 120);
  v5 = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v2 + 208);
  if ((v5 & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew()(*(v2 + 208));
    if (*(v6 + 2))
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  if (!*(v6 + 2))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

LABEL_4:
  v7 = *(v2 + 200);
  v8 = *(v6 + 8);
  v9 = *(v6 + 3);
  *(v2 + 160) = *(v6 + 2);
  *(v2 + 176) = v9;
  *(v2 + 192) = v8;
  v10 = *(v2 + 80);
  v11 = *(v2 + 96);
  *(v6 + 8) = *(v2 + 112);
  *(v6 + 2) = v10;
  *(v6 + 3) = v11;
  outlined destroy of HoverEffectComponent.HoverEffect(v2 + 160);
  *v7 = v6;
  *(v2 + 120) = *(v2 + 40);
  *(v2 + 136) = *(v2 + 56);
  *(v2 + 152) = *(v2 + 72);
  outlined destroy of HoverEffectComponent.HoverEffect(v2 + 120);
LABEL_8:

  free(v2);
}

uint64_t HoverEffectComponent.hoverEffects_protoV1.setter(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = *v1;

    *v1 = a1;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t (*HoverEffectComponent.hoverEffects_protoV1.modify(void *a1))()
{
  v3 = *v1;
  a1[1] = v1;
  a1[2] = v3;
  *a1 = v3;

  return HoverEffectComponent.hoverEffects_protoV1.modify;
}

uint64_t key path setter for HoverEffectComponent.hoverEffects_protoV1 : HoverEffectComponent(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(*a1 + 16))
  {
    v4 = *a2;
    v5 = *a1;

    *a2 = v2;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t (*HoverEffectComponent.hoverEffects.modify(void *a1))()
{
  v3 = *v1;
  a1[1] = v1;
  a1[2] = v3;
  *a1 = v3;

  return HoverEffectComponent.hoverEffects.modify;
}

uint64_t HoverEffectComponent.hoverEffects_protoV1.modify(void *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  if ((a2 & 1) == 0)
  {
    if (v3)
    {
      v9 = a1[1];
      v8 = a1[2];

      *v9 = v2;
      return result;
    }

    goto LABEL_8;
  }

  if (!v3)
  {
LABEL_8:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v5 = a1[1];
  v4 = a1[2];
  v6 = *a1;

  *v5 = v2;
}

CGColorRef one-time initialization function for default()
{
  result = CGColorCreateGenericRGB(1.0, 1.0, 1.0, 1.0);
  static HoverEffectComponent.SpotlightHoverEffectStyle.default = result;
  dword_1EBEAC2C8 = 1065353216;
  byte_1EBEAC2CC = 0;
  return result;
}

{
  result = CGColorCreateGenericRGB(1.0, 1.0, 1.0, 1.0);
  static HoverEffectComponent.HighlightHoverEffectStyle.default = result;
  dword_1EBEAC2D8 = 1065353216;
  byte_1EBEAC2DC = 0;
  return result;
}

id static HoverEffectComponent.SpotlightHoverEffectStyle.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for default != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = static HoverEffectComponent.SpotlightHoverEffectStyle.default;
  v3 = dword_1EBEAC2C8;
  v4 = byte_1EBEAC2CC;
  *a1 = static HoverEffectComponent.SpotlightHoverEffectStyle.default;
  *(a1 + 8) = v3;
  *(a1 + 12) = v4;

  return v2;
}

CGColorRef HoverEffectComponent.SpotlightHoverEffectStyle.init(color:strength:opacityFunction:)@<X0>(CGColorRef result@<X0>, char *a2@<X1>, uint64_t a3@<X8>, float a4@<S0>)
{
  v6 = *a2;
  if (!result)
  {
    result = CGColorCreateGenericRGB(1.0, 1.0, 1.0, 1.0);
  }

  *a3 = result;
  *(a3 + 8) = a4;
  *(a3 + 12) = v6;
  return result;
}

id static HoverEffectComponent.HighlightHoverEffectStyle.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for default != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = static HoverEffectComponent.HighlightHoverEffectStyle.default;
  v3 = dword_1EBEAC2D8;
  v4 = byte_1EBEAC2DC;
  *a1 = static HoverEffectComponent.HighlightHoverEffectStyle.default;
  *(a1 + 8) = v3;
  *(a1 + 12) = v4;

  return v2;
}

double one-time initialization function for default()
{
  result = 0.2;
  static HoverEffectComponent.ShaderHoverEffectInputs.default = xmmword_1C18AEF60;
  return result;
}

{
  result = NAN;
  static CollisionFilter.default = 0xFFFFFFFF00000001;
  return result;
}

{
  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  result = *&static simd_quatf.identity;
  static PhysicsMassProperties.default = 1065353216;
  xmmword_1EBEB20F0 = xmmword_1C18C7150;
  qword_1EBEB2100 = 0;
  unk_1EBEB2108 = 0;
  xmmword_1EBEB2110 = static simd_quatf.identity;
  return result;
}

double static HoverEffectComponent.ShaderHoverEffectInputs.default.getter@<D0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for default != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&static HoverEffectComponent.ShaderHoverEffectInputs.default;
  *a1 = static HoverEffectComponent.ShaderHoverEffectInputs.default;
  return result;
}

void HoverEffectComponent.ShaderHoverEffectInputs.fadeInDuration.setter(double a1)
{
  if (a1 > 10.0)
  {
    a1 = 10.0;
  }

  if (a1 <= 0.0)
  {
    a1 = 0.0;
  }

  *v1 = a1;
}

uint64_t (*HoverEffectComponent.ShaderHoverEffectInputs.fadeInDuration.modify(void *a1))(uint64_t result)
{
  a1[1] = v1;
  *a1 = *v1;
  return HoverEffectComponent.ShaderHoverEffectInputs.fadeInDuration.modify;
}

uint64_t HoverEffectComponent.ShaderHoverEffectInputs.fadeInDuration.modify(uint64_t result)
{
  v1 = *result;
  if (*result > 10.0)
  {
    v1 = 10.0;
  }

  if (v1 <= 0.0)
  {
    v1 = 0.0;
  }

  **(result + 8) = v1;
  return result;
}

void HoverEffectComponent.ShaderHoverEffectInputs.fadeOutDuration.setter(double a1)
{
  if (a1 > 10.0)
  {
    a1 = 10.0;
  }

  if (a1 <= 0.0)
  {
    a1 = 0.0;
  }

  *(v1 + 8) = a1;
}

uint64_t (*HoverEffectComponent.ShaderHoverEffectInputs.fadeOutDuration.modify(void *a1))(uint64_t result)
{
  a1[1] = v1;
  *a1 = *(v1 + 8);
  return HoverEffectComponent.ShaderHoverEffectInputs.fadeOutDuration.modify;
}

uint64_t HoverEffectComponent.ShaderHoverEffectInputs.fadeOutDuration.modify(uint64_t result)
{
  v1 = *result;
  if (*result > 10.0)
  {
    v1 = 10.0;
  }

  if (v1 <= 0.0)
  {
    v1 = 0.0;
  }

  *(*(result + 8) + 8) = v1;
  return result;
}

id HoverEffectComponent.init()@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation20HoverEffectComponentV0fG0VGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation20HoverEffectComponentV0fG0VGMR);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C1887600;
  if (one-time initialization token for default != -1)
  {
    v6 = v2;
    swift_once();
    v2 = v6;
  }

  v3 = static HoverEffectComponent.SpotlightHoverEffectStyle.default;
  v4 = dword_1EBEAC2C8 | (byte_1EBEAC2CC << 32);
  *(v2 + 32) = static HoverEffectComponent.SpotlightHoverEffectStyle.default;
  *(v2 + 40) = v4;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 64) = 1;
  *(v2 + 65) = 1;
  *(v2 + 68) = 3;
  *a1 = v2;
  *(a1 + 12) = 0;
  *(a1 + 8) = 0;

  return v3;
}

uint64_t HoverEffectComponent.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation20HoverEffectComponentV0fG0VGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation20HoverEffectComponentV0fG0VGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C1887600;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v5 = static HoverEffectComponent.SpotlightHoverEffectStyle.default;
  v6 = dword_1EBEAC2C8 | (byte_1EBEAC2CC << 32);
  *(v4 + 32) = static HoverEffectComponent.SpotlightHoverEffectStyle.default;
  *(v4 + 40) = v6;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 64) = 1;
  *(v4 + 65) = 1;
  *(v4 + 68) = 3;
  *a2 = v4;
  *(a2 + 12) = 0;
  *(a2 + 8) = 0;
  if (*(a1 + 16))
  {
    v7 = v5;

    *a2 = a1;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation20HoverEffectComponentV0fG0VGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation20HoverEffectComponentV0fG0VGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C1887600;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v5 = static HoverEffectComponent.SpotlightHoverEffectStyle.default;
  v6 = dword_1EBEAC2C8 | (byte_1EBEAC2CC << 32);
  *(v4 + 32) = static HoverEffectComponent.SpotlightHoverEffectStyle.default;
  *(v4 + 40) = v6;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 64) = 1;
  *(v4 + 65) = 1;
  *(v4 + 68) = 3;
  *(a2 + 12) = 0;
  *(a2 + 8) = 0;
  v12 = *(v4 + 64);
  v7 = *(v4 + 48);
  v11[0] = *(v4 + 32);
  v11[1] = v7;
  v8 = *(a1 + 16);
  *(v4 + 32) = *a1;
  *(v4 + 48) = v8;
  *(v4 + 64) = *(a1 + 32);
  v9 = v5;
  result = outlined destroy of HoverEffectComponent.HoverEffect(v11);
  *a2 = v4;
  return result;
}

_DWORD *(*HoverEffectComponent.settingsModifier.modify(uint64_t a1))(_DWORD *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 8);
  return HoverEffectComponent.settingsModifier.modify;
}

uint64_t static HoverEffectComponent.__fromCore(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  StyleCount = RERemoteEffectsComponentGetStyleCount();
  if (StyleCount)
  {
    v3 = 0;
    v4 = MEMORY[0x1E69E7CC0];
    do
    {
      StyleIDAtIndex = RERemoteEffectsComponentGetStyleIDAtIndex();
      if (StyleIDAtIndex == RERemoteEffectsComponentGetInvalidStyleID())
      {
        break;
      }

      static HoverEffectComponent.SwiftStyleFromREComponent(_:styleId:)(&v28);
      v6 = v28;
      v19 = v29;
      v31 = 1;
      GroupID = RERemoteEffectsComponentStyleGetGroupID();
      if (GroupID == RERemoteEffectsComponentGetInvalidGroupID())
      {
        GroupID = 0;
      }

      else
      {
        RERemoteEffectsComponentCreateGroupID();
        v31 = 0;
      }

      IsHierarchical = RERemoteEffectsComponentStyleIsHierarchical();
      EnableDirectPinchAnimation = RERemoteEffectsComponentStyleGetEnableDirectPinchAnimation();
      AllowsDirectInput = RERemoteEffectsComponentStyleGetAllowsDirectInput();
      if (RERemoteEffectsComponentStyleGetAllowsIndirectInput())
      {
        AllowsDirectInput |= 2u;
      }

      v28 = v6;
      LOBYTE(v29) = v19;
      *(&v29 + 1) = GroupID;
      LOBYTE(v30) = v31;
      BYTE1(v30) = IsHierarchical;
      BYTE2(v30) = EnableDirectPinchAnimation;
      HIDWORD(v30) = AllowsDirectInput;
      outlined init with copy of HoverEffectComponent.HoverEffect(&v28, &v20);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
      }

      v12 = *(v4 + 2);
      v11 = *(v4 + 3);
      if (v12 >= v11 >> 1)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v4);
      }

      ++v3;
      v20 = v6;
      v21 = v19;
      *v22 = *v32;
      *&v22[3] = *&v32[3];
      v23 = GroupID;
      v24 = v31;
      v25 = IsHierarchical;
      v26 = EnableDirectPinchAnimation;
      v27 = AllowsDirectInput;
      outlined destroy of HoverEffectComponent.HoverEffect(&v20);
      *(v4 + 2) = v12 + 1;
      v13 = &v4[40 * v12];
      v14 = v30;
      v15 = v29;
      *(v13 + 2) = v28;
      *(v13 + 3) = v15;
      *(v13 + 8) = v14;
    }

    while (StyleCount != v3);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  HoverEffectComponent.init(_:)(v4, a2);
  *(a2 + 8) = RERemoteEffectsComponentGetSettingsModifier();
  result = RERemoteEffectsComponentIsPinchActive();
  *(a2 + 12) = result;
  return result;
}

uint64_t *HoverEffectComponent.__toCore(_:)(uint64_t *result)
{
  v2 = *v1;
  if (*(*v1 + 16))
  {
    v3 = *result;
    v4 = *(v1 + 12);
    v5 = *(v1 + 2);
    v6 = *(v2 + 65);
    RERemoteEffectsComponentSetIsHierarchical();
    RERemoteEffectsComponentSetSettingsModifier();
    RERemoteEffectsComponentSetIsPinchActive();
    RELinkedOnOrAfterFall2024OSVersions();
    RERemoteEffectsComponentSetVersion();
    RERemoteEffectsComponentSetEnableEntityHoverEffect();
    v7 = *(v2 + 16);

    if (!v7)
    {
LABEL_7:

      v14 = *(v2 + 16);
      RERemoteEffectsComponentResizeStyles();
      return RENetworkMarkComponentDirty();
    }

    v8 = 0;
    v9 = (v2 + 32);
    while (v8 < v7)
    {
      v10 = *v9;
      v11 = v9[1];
      v19 = *(v9 + 4);
      v18[0] = v10;
      v18[1] = v11;
      v12 = *v9;
      v13 = v9[1];
      v21 = *(v9 + 4);
      v20[0] = v12;
      v20[1] = v13;
      v16[0] = v12;
      v16[1] = v13;
      v17 = v21;
      if (v8 == 0x100000000)
      {
        goto LABEL_9;
      }

      outlined init with copy of HoverEffectComponent.HoverEffect(v18, v15);
      specialized static HoverEffectComponent.addOrUpdateCoreHoverEffect(_:hoverEffect:at:)(v3, v16, v8);
      result = outlined destroy of HoverEffectComponent.HoverEffect(v20);
      v7 = *(v2 + 16);
      v9 = (v9 + 40);
      if (++v8 == v7)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_9:
    __break(1u);
  }

  __break(1u);
  return result;
}