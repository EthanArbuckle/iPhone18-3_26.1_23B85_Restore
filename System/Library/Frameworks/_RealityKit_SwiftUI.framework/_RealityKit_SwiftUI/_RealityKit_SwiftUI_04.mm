uint64_t specialized BoundingBoxScaleManipulator.FaceHandleContainer.updateBottomHandleState(time:cameraWorld:boxWorld:)(double a1, double a2, double a3, double a4, float32x4_t a5, double a6)
{
  v8 = v6;
  v25 = *(&a3 + 1);
  *v9.i64 = specialized simd_float4x4.init(translation:rotation:scale:)(a6, a5);
  v20 = v9;
  v21 = v10;
  v23 = v11;
  v24 = v12;
  v22 = v6[8];
  swift_beginAccess();
  v13 = v6[2].i64[1];
  if ((v13 & 0xC000000000000001) != 0)
  {
    v19 = v6[2].i64[1];

    v14 = MEMORY[0x23EEAFC40](1, v13);
  }

  else
  {
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      __break(1u);
      goto LABEL_17;
    }

    v14 = *(v13 + 40);
  }

  LODWORD(v15) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v20, *&v22), v21, *&v22, 1), v23, v22, 2), v24, v22, 3).i32[1];
  BoundingBoxScaleManipulator.FaceHandle.enabled.willset(v25 < v15);
  *(v14 + 32) = v25 < v15;

  if (v25 >= v15)
  {
    return result;
  }

  v17 = (v15 - v25) / 0.02;
  if (v17 <= 0.0)
  {
    v17 = 0.0;
  }

  if (v17 <= 1.0)
  {
    v7 = v17;
  }

  else
  {
    v7 = 1.0;
  }

  v8 = v8[2].i64[1];
  if ((v8 & 0xC000000000000001) == 0)
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      __break(1u);
      return result;
    }

    v18 = v8[2].i64[1];

    goto LABEL_13;
  }

LABEL_17:

  v18 = MEMORY[0x23EEAFC40](1, v8);

LABEL_13:
  *(v18 + 56) = v7;
}

uint64_t outlined init with copy of Cancellable(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined assign with take of Cancellable?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t _s10RealityKit6EntityCACSQAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BoundingBoxScaleManipulator.Face(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BoundingBoxScaleManipulator.Face(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BoundingBoxScaleManipulator.Face.Which and conformance BoundingBoxScaleManipulator.Face.Which()
{
  result = lazy protocol witness table cache variable for type BoundingBoxScaleManipulator.Face.Which and conformance BoundingBoxScaleManipulator.Face.Which;
  if (!lazy protocol witness table cache variable for type BoundingBoxScaleManipulator.Face.Which and conformance BoundingBoxScaleManipulator.Face.Which)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BoundingBoxScaleManipulator.Face.Which and conformance BoundingBoxScaleManipulator.Face.Which);
  }

  return result;
}

void BoundingBoxAnimatedUpdater.setTargetWorld(transform:)(__n128 a1, __n128 a2, __n128 a3)
{
  v3[3] = a1;
  v3[4] = a2;
  v3[5] = a3;
  v3[2].n128_u8[8] = 1;
  if (v3[1].n128_u8[0] == 1)
  {
    if (v3[6].n128_u64[0])
    {

      if (AnimationPlaybackController.isPlaying.getter() & 1) == 0 || (dispatch thunk of AnimationPlaybackController.isComplete.getter())
      {
        v4 = dispatch thunk of AnimationPlaybackController.isComplete.getter();

        if ((v4 & 1) == 0)
        {
          return;
        }

        v5 = v3[6].n128_u64[0];
        v3[6].n128_u64[0] = 0;
      }
    }

    else
    {

      BoundingBoxAnimatedUpdater.startNewAnimationIfNeeded()();
    }
  }
}

void BoundingBoxAnimatedUpdater.startNewAnimationIfNeeded()()
{
  if (v0[6].n128_u64[0])
  {
    __break(1u);
  }

  else
  {
    v1 = v0;
    if (v0[2].n128_u8[8] == 1)
    {
      if (swift_weakLoadStrong() && (type metadata accessor for Entity(), HasTransform.transformMatrix(relativeTo:)(), , Transform.init(matrix:)(), v2 = v0[2].n128_u64[0], specialized BoundingBoxAnimatedUpdater.createAnimationResource(fromTransform:toTransform:duration:)(v3, v4, v5, v0[3], v0[4], v0[5])))
      {
        if (swift_weakLoadStrong())
        {
          v6 = Entity.playAnimation(_:transitionDuration:blendLayerOffset:separateAnimatedValue:startsPaused:clock:)();
        }

        else
        {

          v6 = 0;
        }

        v11 = v0[6].n128_u64[0];
        v0[6].n128_u64[0] = v6;
      }

      else
      {
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v7 = type metadata accessor for Logger();
        __swift_project_value_buffer(v7, logger);
        v8 = Logger.logObject.getter();
        v9 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v8, v9))
        {
          v10 = swift_slowAlloc();
          *v10 = 0;
          _os_log_impl(&dword_23B824000, v8, v9, "Failed to make a FromToByAnimation resource!", v10, 2u);
          MEMORY[0x23EEB0B70](v10, -1, -1);
        }
      }

      v1[2].n128_u8[8] = 0;
    }
  }
}

uint64_t BoundingBoxAnimatedUpdater.__deallocating_deinit()
{
  swift_weakDestroy();
  v1 = *(v0 + 96);

  return swift_deallocClassInstance();
}

uint64_t specialized BoundingBoxAnimatedUpdater.createAnimationResource(fromTransform:toTransform:duration:)(__n128 a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v36 = a6;
  v35 = a5;
  v34 = a4;
  v33 = a3;
  v32 = a2;
  v31 = a1;
  v40 = type metadata accessor for AnimationFillMode();
  v6 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v39 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for AnimationRepeatMode();
  v8 = *(v38 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v38);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AnimationTimingFunction();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v30[1] = v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation10BindTargetOSgMd, &_s17RealityFoundation10BindTargetOSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = v30 - v17;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation17FromToByAnimationVy0A3Kit9TransformVGMd, &_s17RealityFoundation17FromToByAnimationVy0A3Kit9TransformVGMR);
  v19 = *(v37 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v37);
  v22 = v30 - v21;
  v50 = v31;
  v51 = v32;
  v52 = v33;
  v53 = 0;
  v46 = v34;
  v47 = v35;
  v48 = v36;
  v49 = 0;
  v44 = 0u;
  v43 = 0u;
  v42 = 0u;
  v45 = 1;
  v23 = *MEMORY[0x277CDB230];
  v24 = type metadata accessor for BindTarget();
  v25 = *(v24 - 8);
  (*(v25 + 104))(v18, v23, v24);
  (*(v25 + 56))(v18, 0, 1, v24);
  static AnimationTimingFunction.linear.getter();
  (*(v8 + 104))(v11, *MEMORY[0x277CDB418], v38);
  v41 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type AnimationFillMode and conformance AnimationFillMode();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay17RealityFoundation17AnimationFillModeVGMd, &_sSay17RealityFoundation17AnimationFillModeVGMR);
  lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type [AnimationFillMode] and conformance [A], &_sSay17RealityFoundation17AnimationFillModeVGMd, &_sSay17RealityFoundation17AnimationFillModeVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v26 = v37;
  FromToByAnimation.init(name:from:to:by:duration:timing:isAdditive:bindTarget:blendLayer:repeatMode:fillMode:trimStart:trimEnd:trimDuration:offset:delay:speed:)();
  type metadata accessor for AnimationResource();
  v51.n128_u64[1] = v26;
  v52.n128_u64[0] = lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type FromToByAnimation<Transform> and conformance FromToByAnimation<A>, &_s17RealityFoundation17FromToByAnimationVy0A3Kit9TransformVGMd, &_s17RealityFoundation17FromToByAnimationVy0A3Kit9TransformVGMR);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v50);
  (*(v19 + 16))(boxed_opaque_existential_1, v22, v26);
  v28 = static AnimationResource.generate(with:)();
  (*(v19 + 8))(v22, v26);
  __swift_destroy_boxed_opaque_existential_0Tm(&v50);
  return v28;
}

uint64_t specialized BoundingBoxAnimatedUpdater.init(entity:duration:autoStart:)(double a1, uint64_t a2, char a3)
{
  *(v3 + 16) = 0;
  swift_weakInit();
  *(v3 + 40) = 0;
  *(v3 + 96) = 0;
  swift_weakAssign();
  *(v3 + 32) = a1;
  type metadata accessor for Entity();
  HasTransform.transformMatrix(relativeTo:)();
  Transform.init(matrix:)();
  *(v3 + 48) = v6;
  *(v3 + 64) = v7;
  *(v3 + 80) = v8;
  *(v3 + 16) = a3;
  return v3;
}

unint64_t lazy protocol witness table accessor for type AnimationFillMode and conformance AnimationFillMode()
{
  result = lazy protocol witness table cache variable for type AnimationFillMode and conformance AnimationFillMode;
  if (!lazy protocol witness table cache variable for type AnimationFillMode and conformance AnimationFillMode)
  {
    type metadata accessor for AnimationFillMode();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationFillMode and conformance AnimationFillMode);
  }

  return result;
}

uint64_t _s19_RealityKit_SwiftUI13TubeGeneratorC32generateClosedUnitCircleVertices33_4582A7B2C0DC7AC017F89A273C982EDDLL11numSegmentsSays5SIMD4VySfGGSi_tFZSo16CameraPathVertexV_Tt0g5(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (!result)
    {
      return MEMORY[0x277D84F90];
    }

    v2 = 0;
    v3 = 6.2832 / result;
    v4 = MEMORY[0x277D84F90];
    do
    {
      v9 = cosf(v3 * v2);
      v8 = sinf(v3 * v2);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
      }

      v6 = *(v4 + 2);
      v5 = *(v4 + 3);
      if (v6 >= v5 >> 1)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1, v4);
      }

      ++v2;
      *&v7 = __PAIR64__(LODWORD(v8), LODWORD(v9));
      DWORD2(v7) = 0;
      HIDWORD(v7) = 1.0;
      *(v4 + 2) = v6 + 1;
      *&v4[16 * v6 + 32] = v7;
    }

    while (v1 != v2);
    return v4;
  }

  return result;
}

char *_s19_RealityKit_SwiftUI13TubeGeneratorC28generateLocalCylinderIndices33_4582A7B2C0DC7AC017F89A273C982EDDLL14circleTemplateSays6UInt32VGSays5SIMD4VySfGG_tFZSo16CameraPathVertexV_Tt0g5(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v6 = *(a1 + 16);
  v7 = 0x4000000000000001;
  if (v6 + 0x4000000000000001 < 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    a4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v4, 1, a4);
    goto LABEL_17;
  }

  v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 2 * v6 + 3, 0, MEMORY[0x277D84F90]);
  if (!v6)
  {
    goto LABEL_23;
  }

  a4 = v8;
  v9 = 0;
  do
  {
    if (v6 == v9)
    {
      v10 = 0;
    }

    else
    {
      v10 = v9;
    }

    v5 = v10 + v6;
    if (__OFADD__(v10, v6))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if ((v5 & 0x8000000000000000) != 0)
    {
      goto LABEL_19;
    }

    v7 = HIDWORD(v5);
    if (HIDWORD(v5))
    {
      goto LABEL_20;
    }

    v12 = *(a4 + 2);
    v11 = *(a4 + 3);
    v4 = v12 + 1;
    if (v12 >= v11 >> 1)
    {
      a4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, a4);
    }

    *(a4 + 2) = v4;
    *&a4[4 * v12 + 32] = v5;
    v7 = HIDWORD(v10);
    if (HIDWORD(v10))
    {
      goto LABEL_21;
    }

    v13 = *(a4 + 3);
    if ((v12 + 2) > (v13 >> 1))
    {
      a4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v12 + 2, 1, a4);
    }

    ++v9;
    *(a4 + 2) = v12 + 2;
    v7 = &a4[4 * v4];
    *(v7 + 32) = v10;
  }

  while (v6 + 1 != v9);
  v5 = *(a4 + 2);
  v7 = *(a4 + 3);
  v4 = v5 + 1;
  if (v5 >= v7 >> 1)
  {
    goto LABEL_24;
  }

LABEL_17:
  *(a4 + 2) = v4;
  *&a4[4 * v5 + 32] = -1;
  return a4;
}

void specialized TubeGenerator.generateMesh(for:vertices:indices:)(uint64_t a1, float32x4_t *a2, uint64_t a3, uint64_t a4, int64_t a5)
{
  v6 = *(a1 + 16);
  if (v6 >= 2)
  {
    v7 = *(v5 + 16);
    v8 = *(v7 + 16);
    v9 = v6 * v8;
    if ((v6 * v8) >> 64 == (v6 * v8) >> 63)
    {
      if (v9 < 0)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (HIDWORD(v9))
      {
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      if (v9 > a3)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v10 = *(*(v5 + 24) + 16);
      v11 = v10 * (v6 - 1);
      if ((v10 * (v6 - 1)) >> 64 != v11 >> 63)
      {
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      if (v11 < 0)
      {
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      if (HIDWORD(v11))
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      if (v11 > a5)
      {
LABEL_31:
        __break(1u);
        return;
      }

      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of specialized TubeGenerator.generateMesh(for:vertices:indices:));
      v15 = v14;
      v16 = 0;
      v17 = *(v7 + 16);
      v42 = a1;
      v18 = a1 + 32;
      while (1)
      {
        v29 = v16 * v17;
        if ((v16 * v17) >> 64 != (v16 * v17) >> 63)
        {
          break;
        }

        v30 = (v18 + (v16 << 6));
        v48 = v30[1];
        v50 = *v30;
        v31 = *(v30 + 8);
        v51 = v30[3];
        v47 = v15;
        Transform.init()();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_23B91A6D0;
        *(inited + 32) = v31;
        *(inited + 36) = v31;
        *(inited + 40) = v31;
        _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(inited);
        swift_setDeallocating();
        specialized static TubeGenerator.createOrthonormalFrame(forward:up:)(v48, v47);
        v49 = v33;
        *v34.i64 = simd_matrix4x4(v33);
        v52 = v34;
        v53 = v35;
        v54 = v36;
        v55 = v37;
        simd_float4x4.scale(_:)();
        SIMD4<>._xyz.getter();
        SIMD4<>._xyz.setter();
        if (v17)
        {
          if (v17 > *(v7 + 16))
          {
            goto LABEL_23;
          }

          v38 = 0;
          while (!__OFADD__(v29, v38))
          {
            v39 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v52, COERCE_FLOAT(*(v7 + 32 + 16 * v38))), v53, *(v7 + 32 + 16 * v38), 1), v54, *(v7 + 32 + 16 * v38), 2), v55, *(v7 + 32 + 16 * v38), 3);
            v39.i32[3] = 1.0;
            v40 = &a2[4 * (v29 + v38)];
            *v40 = v39;
            ++v38;
            v40[1].i64[0] = 0;
            v40[1].i64[1] = 0;
            v40[2] = v51;
            v40[3].i32[0] = 0;
            if (v17 == v38)
            {
              goto LABEL_11;
            }
          }

          __break(1u);
          break;
        }

LABEL_11:
        ++v16;
        v19 = vmulq_f32(v49, xmmword_23B91C020);
        v20 = vnegq_f32(v19);
        v21 = vtrn2q_s32(v19, vtrn1q_s32(v19, v20));
        v22 = vmlaq_f32(vextq_s8(v19, v20, 8uLL), 0, vextq_s8(v21, v21, 8uLL));
        v23 = vrev64q_s32(v19);
        v23.i32[0] = v20.i32[1];
        v23.i32[3] = v20.i32[2];
        v24 = vmlaq_f32(v22, 0, v23);
        v25 = vnegq_f32(v24);
        v26 = vtrn2q_s32(v24, vtrn1q_s32(v24, v25));
        v27 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v24, v25, 8uLL), *v49.f32, 1), vextq_s8(v26, v26, 8uLL), v49.f32[0]);
        v28 = vrev64q_s32(v24);
        v28.i32[0] = v25.i32[1];
        v28.i32[3] = v25.i32[2];
        v15 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v24, v49, 3), v28, v49, 2), v27);
        v15.i32[3] = v46;
        if (v16 == v6)
        {
          specialized TubeGenerator.generateIndexBuffer(_:for:)(a4, a5, v42);
          specialized TubeGenerator.computeNormals(numPoints:vertices:indices:)(v6, a2, a3, v41);
          return;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
    }

    __break(1u);
    goto LABEL_25;
  }
}

uint64_t specialized TubeGenerator.generateIndexBuffer(_:for:)(uint64_t result, int64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4 < 2)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v5 = v4 - 1;
  v6 = *(v3 + 24);
  v7 = *(v6 + 16);
  if ((v5 * v7) >> 64 != (v5 * v7) >> 63)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v5 * v7 <= a2)
  {
    v8 = 0;
    v9 = *(*(v3 + 16) + 16);
    v10 = v6 + 32;
    while (v8 != v5)
    {
      v11 = v8 * v9;
      if ((v8 * v9) >> 64 != (v8 * v9) >> 63)
      {
        goto LABEL_24;
      }

      v12 = v8 * v7;
      if ((v8 * v7) >> 64 != (v8 * v7) >> 63)
      {
        goto LABEL_25;
      }

      if (v7)
      {
        v13 = 0;
        while (1)
        {
          v14 = *(v10 + 4 * v13);
          if (v14 != -1)
          {
            if ((v11 & 0x8000000000000000) != 0)
            {
              goto LABEL_20;
            }

            if (HIDWORD(v11))
            {
              goto LABEL_21;
            }

            v15 = __CFADD__(v14, v11);
            v14 += v11;
            if (v15)
            {
              goto LABEL_22;
            }
          }

          v16 = v13 + v12;
          if (__OFADD__(v13, v12))
          {
            break;
          }

          ++v13;
          *(result + 4 * v16) = v14;
          if (v7 == v13)
          {
            goto LABEL_5;
          }
        }

        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        break;
      }

LABEL_5:
      if (++v8 == v5)
      {
        return result;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t CameraPathManager.computeCurveFromShots()()
{
  v4 = OBJC_IVAR____TtC19_RealityKit_SwiftUI17CameraPathManager_shots;
  swift_beginAccess();
  if (*(*(v0 + v4) + 16) < 3uLL)
  {
    __break(1u);
LABEL_16:
    swift_once();
    goto LABEL_4;
  }

  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of CameraPathManager.computeCurveFromShots());
  v31 = v5;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of CameraPathManager.computeCurveFromShots());
  v30 = v6;
  v32 = *(v0 + v4);
  v7 = *(v32 + 16);
  if (!v7)
  {
    goto LABEL_14;
  }

  v1 = v7 - 1;
  v2 = (v7 - 1);
  v3 = 1.0;
  v8 = one-time initialization token for logger;

  if (v8 != -1)
  {
    goto LABEL_16;
  }

LABEL_4:
  v9 = v3 / v2;
  v10 = type metadata accessor for Logger();
  v11 = MEMORY[0x277D84F90];
  v12 = 0.0;
  for (i = 96; ; i += 96)
  {
    v14 = *(v32 + i);
    HIDWORD(v14) = 0;
    v33 = v14;
    __swift_project_value_buffer(v10, logger);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v34 = v18;
      *v17 = 134218242;
      *(v17 + 4) = v12;
      *(v17 + 12) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
      v29 = i;
      v19 = v1;
      lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>, &_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
      v20 = SIMD.description.getter();
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v34);

      *(v17 + 14) = v22;
      v1 = v19;
      i = v29;
      _os_log_impl(&dword_23B824000, v15, v16, "Made key: s=%f point: %s", v17, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      MEMORY[0x23EEB0B70](v18, -1, -1);
      MEMORY[0x23EEB0B70](v17, -1, -1);
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
    }

    v24 = *(v11 + 2);
    v23 = *(v11 + 3);
    v25 = v33;
    if (v24 >= v23 >> 1)
    {
      v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v11);
      v25 = v33;
      v11 = v27;
    }

    *(v11 + 2) = v24 + 1;
    v26 = &v11[64 * v24];
    *(v26 + 8) = 2;
    *(v26 + 9) = v12;
    *(v26 + 3) = v25;
    *(v26 + 4) = v31;
    *(v26 + 5) = v30;
    if (!v1)
    {
      break;
    }

    v12 = v9 + v12;
    --v1;
  }

LABEL_14:
  type metadata accessor for OS_geom_interpolating_curve_3f();
  return OS_geom_interpolating_curve_3f.init(keys:arcLengthParameterized:)();
}

id CameraPathManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CameraPathManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void CameraPathRenderer.colorScheme.didset()
{
  v1 = v0;
  v2 = type metadata accessor for ColorScheme();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_colorScheme;
  swift_beginAccess();
  v8 = *(v3 + 16);
  v8(v6, v0 + v7, v2);
  lazy protocol witness table accessor for type ColorScheme and conformance ColorScheme();
  v9 = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v3 + 8))(v6, v2);
  if ((v9 & 1) == 0)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, logger);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v18 = v14;
      *v13 = 136315138;
      v8(v6, v1 + v7, v2);
      v15 = String.init<A>(describing:)();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v18);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_23B824000, v11, v12, "Switched colorScheme to %s.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      MEMORY[0x23EEB0B70](v14, -1, -1);
      MEMORY[0x23EEB0B70](v13, -1, -1);
    }
  }
}

Swift::Void __swiftcall CameraPathRenderer.update(worldToView:viewToClip:)(simd_float4x4 *worldToView, simd_float4x4 *viewToClip)
{
  v13 = v2;
  v42 = v12;
  v40 = v11;
  v38 = v10;
  v36 = v9;
  v43 = v8;
  v41 = v7;
  v39 = v6;
  v37 = v5;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation6AtomicVySiGMd, &_s17RealityFoundation6AtomicVySiGMR);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v36 - v17;
  v19 = OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer__nextBufferIndex;
  swift_beginAccess();
  (*(v15 + 16))(v18, v13 + v19, v14);
  Atomic.wrappedValue.getter();
  v21 = *(v15 + 8);
  v20 = v15 + 8;
  v21(v18, v14);
  if (__OFADD__(v45, 1))
  {
    __break(1u);
  }

  else
  {
    v20 = (v45 + 1) % 3;
    v22 = OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_uniforms;
    swift_beginAccess();
    v3 = *(v13 + v22);
    if ((v3 & 0xC000000000000001) == 0)
    {
      if ((v20 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v20 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v23 = *(v3 + 8 * v20 + 32);
        swift_unknownObjectRetain();
        goto LABEL_6;
      }

      __break(1u);
LABEL_19:
      swift_once();
      goto LABEL_10;
    }
  }

  v23 = MEMORY[0x23EEAFC40](v20, v3);

LABEL_6:
  v24 = [v23 contents];
  v25 = v23;
  v26 = v37;
  v46.columns[1] = v39;
  *v24 = v37;
  v24[1] = v46.columns[1];
  v46.columns[2] = v41;
  v46.columns[3] = v43;
  v24[2] = v41;
  v24[3] = v46.columns[3];
  v27 = v38;
  v24[4] = v36;
  v24[5] = v27;
  v28 = v42;
  v24[6] = v40;
  v24[7] = v28;
  v46.columns[0] = v26;
  v47 = __invert_f4(v46);
  v29 = vzip1q_s32(v47.columns[0], v47.columns[2]);
  v47.columns[0] = vzip2q_s32(v47.columns[0], v47.columns[2]);
  v47.columns[2] = vzip1q_s32(v47.columns[1], v47.columns[3]);
  v47.columns[1] = vzip2q_s32(v47.columns[1], v47.columns[3]);
  v24[8] = vzip1q_s32(v29, v47.columns[2]);
  v24[9] = vzip2q_s32(v29, v47.columns[2]);
  v24[10] = vzip1q_s32(v47.columns[0], v47.columns[1]);
  v24[11] = vzip2q_s32(v47.columns[0], v47.columns[1]);
  v24[12] = xmmword_23B91E250;
  v24[13] = xmmword_23B91E260;
  v24[14].i32[0] = 1056964608;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_14;
  }

  v3 = Strong;
  v4 = OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_dirtyBuffers;
  if ((*(v13 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_dirtyBuffers) & 1) != 0 || (v31 = OBJC_IVAR____TtC19_RealityKit_SwiftUI17CameraPathManager_shots, swift_beginAccess(), *(v13 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_numLineVertices) >= *(*(v3 + v31) + 16)))
  {

    goto LABEL_14;
  }

  if (one-time initialization token for logger != -1)
  {
    goto LABEL_19;
  }

LABEL_10:
  v32 = type metadata accessor for Logger();
  __swift_project_value_buffer(v32, logger);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_23B824000, v33, v34, "Dirtying buffer since shot count changed.", v35, 2u);
    MEMORY[0x23EEB0B70](v35, -1, -1);
  }

  *(v13 + v4) = 1;
LABEL_14:
  v44 = v20;
  swift_beginAccess();
  Atomic.wrappedValue.setter();
  swift_endAccess();
}

void CameraPathRenderer.initRenderPipeline(pixelFormat:)(uint64_t a1)
{
  v2 = v1;
  v55[1] = *MEMORY[0x277D85DE8];
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, logger);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_23B824000, v5, v6, "CameraPathRender initializing render pipeline...", v7, 2u);
    MEMORY[0x23EEB0B70](v7, -1, -1);
  }

  v8 = OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_device;
  v9 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_device);
  if (!v9)
  {
    __break(1u);
  }

  v10 = one-time initialization token for bundle;
  v11 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_device);
  swift_unknownObjectRetain();
  if (v10 != -1)
  {
    swift_once();
  }

  v55[0] = 0;
  v12 = [v9 newDefaultLibraryWithBundle:static BaseRenderer.bundle error:v55];
  swift_unknownObjectRelease();
  if (!v12)
  {
    v47 = v55[0];
    v48 = _convertNSErrorToError(_:)();

    swift_willThrow();
    lazy protocol witness table accessor for type CameraPathRenderer.Error and conformance CameraPathRenderer.Error();
    swift_allocError();
    swift_willThrow();
LABEL_29:
    v54 = *MEMORY[0x277D85DE8];
    return;
  }

  v13 = v55[0];
  v14 = MEMORY[0x23EEAF480](0xD000000000000025, 0x800000023B9262A0);
  v15 = [v12 newFunctionWithName_];

  v16 = MEMORY[0x23EEAF480](0xD000000000000023, 0x800000023B9262D0);
  v17 = [v12 newFunctionWithName_];

  v18 = [objc_allocWithZone(MEMORY[0x277CD6F78]) init];
  [v18 setVertexFunction_];
  [v18 setFragmentFunction_];
  [v18 setDepthAttachmentPixelFormat_];
  v19 = [v18 colorAttachments];
  v20 = [v19 objectAtIndexedSubscript_];

  if (!v20)
  {
    __break(1u);
    goto LABEL_32;
  }

  [v20 setPixelFormat_];

  v21 = [v18 colorAttachments];
  v22 = [v21 objectAtIndexedSubscript_];

  if (!v22)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  [v22 setBlendingEnabled_];

  v23 = [v18 colorAttachments];
  v24 = [v23 objectAtIndexedSubscript_];

  if (!v24)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  [v24 setRgbBlendOperation_];

  v25 = [v18 colorAttachments];
  v26 = [v25 objectAtIndexedSubscript_];

  if (!v26)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  [v26 setAlphaBlendOperation_];

  v27 = [v18 colorAttachments];
  v28 = [v27 objectAtIndexedSubscript_];

  if (!v28)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  [v28 setSourceRGBBlendFactor_];

  v29 = [v18 colorAttachments];
  v30 = [v29 objectAtIndexedSubscript_];

  if (!v30)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  [v30 setSourceAlphaBlendFactor_];

  v31 = [v18 colorAttachments];
  v32 = [v31 objectAtIndexedSubscript_];

  if (!v32)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  [v32 setDestinationRGBBlendFactor_];

  v33 = [v18 colorAttachments];
  v34 = [v33 objectAtIndexedSubscript_];

  if (!v34)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  [v34 setDestinationAlphaBlendFactor_];

  v35 = *(v2 + v8);
  if (!v35)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v55[0] = 0;
  v36 = [v35 newRenderPipelineStateWithDescriptor:v18 error:v55];
  v37 = v55[0];
  if (!v36)
  {
    v49 = v55[0];
    v50 = _convertNSErrorToError(_:)();

    swift_willThrow();
    lazy protocol witness table accessor for type CameraPathRenderer.Error and conformance CameraPathRenderer.Error();
    swift_allocError();
    swift_willThrow();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    goto LABEL_29;
  }

  v38 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_renderPipelineState);
  *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_renderPipelineState) = v36;
  v39 = v37;
  swift_unknownObjectRelease();
  v40 = [objc_allocWithZone(MEMORY[0x277CD6D60]) init];
  [v40 setDepthCompareFunction_];
  [v40 setDepthWriteEnabled_];
  v41 = *(v2 + v8);
  if (v41)
  {
    v42 = [v41 newDepthStencilStateWithDescriptor_];
    if (v42)
    {
      v43 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_depthStencilState);
      *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_depthStencilState) = v42;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_23B824000, v44, v45, "... done initializing CameraPathRenderer render pipeline.", v46, 2u);
        MEMORY[0x23EEB0B70](v46, -1, -1);
      }

      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
    }

    else
    {
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_23B824000, v51, v52, "Can't make depth stencil!", v53, 2u);
        MEMORY[0x23EEB0B70](v53, -1, -1);
      }

      lazy protocol witness table accessor for type CameraPathRenderer.Error and conformance CameraPathRenderer.Error();
      swift_allocError();
      swift_willThrow();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    goto LABEL_29;
  }

LABEL_40:
  __break(1u);
}

void CameraPathRenderer.initUniformsTripleBuffer()()
{
  v1 = v0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23B824000, v3, v4, "Initializing uniforms buffers for CameraPathRenderer...", v5, 2u);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  v6 = OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_device;
  if (!*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_device))
  {
    goto LABEL_20;
  }

  v7 = OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_uniforms;
  v8 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_device);
  if (![swift_unknownObjectRetain() newBufferWithLength:240 options:1])
  {
    goto LABEL_21;
  }

  swift_unknownObjectRelease();
  swift_beginAccess();
  v9 = swift_unknownObjectRetain();
  MEMORY[0x23EEAF620](v9);
  if (*((*(v1 + v7) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v7) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v17 = *((*(v1 + v7) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  swift_unknownObjectRelease();
  if (!*(v1 + v6))
  {
    goto LABEL_20;
  }

  v10 = *(v1 + v6);
  if (![swift_unknownObjectRetain() newBufferWithLength:240 options:1])
  {
LABEL_21:
    __break(1u);
    return;
  }

  swift_unknownObjectRelease();
  swift_beginAccess();
  v11 = swift_unknownObjectRetain();
  MEMORY[0x23EEAF620](v11);
  if (*((*(v1 + v7) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v7) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v18 = *((*(v1 + v7) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  swift_unknownObjectRelease();
  if (!*(v1 + v6))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v12 = *(v1 + v6);
  if (![swift_unknownObjectRetain() newBufferWithLength:240 options:1])
  {
    goto LABEL_21;
  }

  swift_unknownObjectRelease();
  swift_beginAccess();
  v13 = swift_unknownObjectRetain();
  MEMORY[0x23EEAF620](v13);
  if (*((*(v1 + v7) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v7) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v19 = *((*(v1 + v7) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  swift_unknownObjectRelease();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_23B824000, v14, v15, "... done Initializing uniforms buffers for CameraPathRenderer.", v16, 2u);
    MEMORY[0x23EEB0B70](v16, -1, -1);
  }
}

void CameraPathRenderer.initLineBufferForCameraSpline()()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_14;
  }

  v2 = Strong;
  v3 = OBJC_IVAR____TtC19_RealityKit_SwiftUI17CameraPathManager_shots;
  swift_beginAccess();
  v4 = *(*&v2[v3] + 16);
  if (v4 < 2)
  {

    return;
  }

  *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_numLineVertices) = v4;
  if (!*(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_device))
  {
    goto LABEL_15;
  }

  if (v4 >> 57)
  {
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v5 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_device);
  v6 = [swift_unknownObjectRetain() newBufferWithLength:v4 << 6 options:513];
  if (!v6)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v7 = v6;
  swift_unknownObjectRelease();
  v8 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_lineVertexBuffer);
  *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_lineVertexBuffer) = v7;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v9 = [v7 contents];
  v10 = v7;
  v11 = *&v2[v3];
  if (v4 > *(v11 + 16))
  {
    goto LABEL_13;
  }

  v12 = *&v2[v3];

  v13 = (v11 + 96);
  do
  {
    v14 = *(v13 - 3);
    v15 = *(v13 - 2);
    v16 = *(v13 - 1);
    v17 = *v13;
    Transform.init(matrix:)();
    HIDWORD(v18) = 1.0;
    *v9 = v18;
    v9 += 4;
    v13 += 6;
    --v4;
  }

  while (v4);
}

void CameraPathRenderer.initTubeBufferForCameraSpline()()
{
  v1 = v0;
  v2 = type metadata accessor for ColorScheme();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v117 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v108 - v7;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_53;
  }

  v10 = Strong;
  v11 = OBJC_IVAR____TtC19_RealityKit_SwiftUI17CameraPathManager_shots;
  swift_beginAccess();
  v12 = *&v10[v11];
  v13 = *(v12 + 16);
  if (v13 < 2)
  {

    return;
  }

  v121 = 10 * v13;
  if ((v13 * 10) >> 64 == (10 * v13) >> 63)
  {
    v116 = v2;
    v14 = one-time initialization token for logger;

    if (v14 == -1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_6:
  v15 = type metadata accessor for Logger();
  v120 = __swift_project_value_buffer(v15, logger);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  v18 = os_log_type_enabled(v16, v17);
  v119 = v8;
  if (v18)
  {
    v19 = swift_slowAlloc();
    *v19 = 134218240;
    *(v19 + 4) = v121;
    *(v19 + 12) = 2048;
    *(v19 + 14) = v13;
    _os_log_impl(&dword_23B824000, v16, v17, "Making %ld spline samples for %ld keys...", v19, 0x16u);
    v20 = v19;
    v8 = v119;
    MEMORY[0x23EEB0B70](v20, -1, -1);
  }

  v21 = v121;
  v118 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21 & ~(v21 >> 63), 0, MEMORY[0x277D84F90]);
  v115 = CameraPathManager.computeCurveFromShots()();
  v22 = v116;
  if (__OFSUB__(v21, 1))
  {
    __break(1u);
    goto LABEL_45;
  }

  if (v21 < 0)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v109 = v12;
  v110 = v10;
  if (v21)
  {
    v23 = 1.0 / (v21 - 1);
    v25 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_desc + 48);
    v24 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_desc + 52);
    v114 = (v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_desc);
    v26 = v24 - v25;
    v125 = OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_colorScheme;
    swift_beginAccess();
    v28 = 0;
    v124 = (v3 + 16);
    v123 = (v3 + 104);
    v122 = *MEMORY[0x277CDF3D0];
    v29 = (v3 + 8);
    *&v30 = 136315138;
    v113 = v30;
    *&v30 = 134218754;
    v108 = v30;
    v31 = v117;
    v32 = v121;
    do
    {
      v128 = v30;
      v127 = v27;
      v41 = v23 * v28;
      geom_interpolating_curve_evaluate_at_3f();
      v42.i32[3] = v128.i32[3];
      v128 = v42;
      geom_interpolating_curve_evaluate_tangent_at_3f();
      v126 = v43;
      v44 = v43;
      v44.i32[3] = v127.i32[3];
      v127 = v44;
      (*v124)(v8, v1 + v125, v22);
      (*v123)(v31, v122, v22);
      v45 = static ColorScheme.== infix(_:_:)();
      v46 = *v29;
      (*v29)(v31, v22);
      v46(v8, v22);
      v47 = 8;
      if (v45)
      {
        v47 = 4;
      }

      v48 = vmulq_f32(v126, v126);
      v49 = sqrtf(v48.f32[2] + vaddv_f32(*v48.f32));
      if (v49 >= 0.001)
      {
        if (v49 >= 0.0001)
        {
          v51 = *v114;
          if (*v114 >= 0.0001)
          {
            v126 = *&v114[v47];
            v57 = Logger.logObject.getter();
            v58 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v57, v58))
            {
              v59 = swift_slowAlloc();
              v112 = swift_slowAlloc();
              v130 = v112;
              *v59 = v108;
              *(v59 + 4) = v28;
              *(v59 + 12) = 2048;
              *(v59 + 14) = v41;
              *(v59 + 22) = 2080;
              v129 = v128;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
              v111 = v58;
              lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>, &_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
              v60 = SIMD.description.getter();
              v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v61, &v130);

              *(v59 + 24) = v62;
              v31 = v117;
              *(v59 + 32) = 2080;
              v129 = v127;
              v22 = v116;
              v63 = SIMD.description.getter();
              v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v64, &v130);

              *(v59 + 34) = v65;
              _os_log_impl(&dword_23B824000, v57, v111, "Sample %ld: s=%f pos=%s tan=%s", v59, 0x2Au);
              v66 = v112;
              swift_arrayDestroy();
              MEMORY[0x23EEB0B70](v66, -1, -1);
              v67 = v59;
              v8 = v119;
              MEMORY[0x23EEB0B70](v67, -1, -1);
            }

            v68 = v118;
            v70 = *(v118 + 2);
            v69 = *(v118 + 3);
            v32 = v121;
            if (v70 >= v69 >> 1)
            {
              v68 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v69 > 1), v70 + 1, 1, v118);
            }

            v71 = v126;
            v71.f32[3] = v25 + (v26 * v41);
            *(v68 + 2) = v70 + 1;
            v118 = v68;
            v72 = &v68[64 * v70];
            v30 = v128;
            v27 = v127;
            *(v72 + 2) = v128;
            *(v72 + 3) = v27;
            *(v72 + 16) = v51;
            *(v72 + 5) = v71;
            goto LABEL_15;
          }

          v50 = 2;
        }

        else
        {
          v50 = 1;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI13TubeGeneratorC5ErrorOySo16CameraPathVertexV_GMd, &_s19_RealityKit_SwiftUI13TubeGeneratorC5ErrorOySo16CameraPathVertexV_GMR);
        lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type TubeGenerator<CameraPathVertex>.Error and conformance TubeGenerator<A>.Error, &_s19_RealityKit_SwiftUI13TubeGeneratorC5ErrorOySo16CameraPathVertexV_GMd, &_s19_RealityKit_SwiftUI13TubeGeneratorC5ErrorOySo16CameraPathVertexV_GMR);
        v52 = swift_allocError();
        *v53 = v50;
        swift_willThrow();
        v54 = v52;
        v55 = Logger.logObject.getter();
        v56 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v55, v56))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v129.i64[0] = v34;
          *v33 = v113;
          v130 = v52;
          v35 = v52;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
          v36 = String.init<A>(describing:)();
          v38 = v1;
          v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v129);
          v31 = v117;

          *(v33 + 4) = v39;
          v1 = v38;
          _os_log_impl(&dword_23B824000, v55, v56, "Got exception making CurvePoint: %s", v33, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v34);
          MEMORY[0x23EEB0B70](v34, -1, -1);
          v40 = v33;
          v22 = v116;
          MEMORY[0x23EEB0B70](v40, -1, -1);
        }

        else
        {
        }

        v8 = v119;
        v32 = v121;
      }

      v30 = v128;
      v27 = v127;
LABEL_15:
      ++v28;
    }

    while (v32 != v28);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI13TubeGeneratorCySo16CameraPathVertexVGMd, &_s19_RealityKit_SwiftUI13TubeGeneratorCySo16CameraPathVertexVGMR);
  inited = swift_initStackObject();
  v74 = _s19_RealityKit_SwiftUI13TubeGeneratorC32generateClosedUnitCircleVertices33_4582A7B2C0DC7AC017F89A273C982EDDLL11numSegmentsSays5SIMD4VySfGGSi_tFZSo16CameraPathVertexV_Tt0g5(10);
  *(inited + 16) = v74;
  v78 = _s19_RealityKit_SwiftUI13TubeGeneratorC28generateLocalCylinderIndices33_4582A7B2C0DC7AC017F89A273C982EDDLL14circleTemplateSays6UInt32VGSays5SIMD4VySfGG_tFZSo16CameraPathVertexV_Tt0g5(v74, v75, v76, v77);
  v128.i64[0] = inited;
  *(inited + 24) = v78;
  v79 = *(v118 + 2);
  v80 = *(v74 + 16);
  v81 = v79 * v80;
  if ((v79 * v80) >> 64 != (v79 * v80) >> 63)
  {
    goto LABEL_46;
  }

  if ((v81 & 0x8000000000000000) != 0)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (HIDWORD(v81))
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v82 = OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_numTubeVertices;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_numTubeVertices) = v81;
  v83 = v79 - 1;
  v84 = *(v78 + 2);
  v85 = v84 * (v79 - 1);
  if ((v84 * v83) >> 64 != v85 >> 63)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v85 < 0)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (HIDWORD(v85))
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v86 = OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_numTubeIndices;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_numTubeIndices) = v85;
  v87 = OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_device;
  v88 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_device);
  if (!v88)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v89 = v81 << 6;

  v90 = [v88 newBufferWithLength:v89 options:513];
  v91 = OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_tubeVertexBuffer;
  v92 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_tubeVertexBuffer);
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_tubeVertexBuffer) = v90;
  swift_unknownObjectRelease();
  v93 = *(v1 + v87);
  if (!v93)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v94 = *(v1 + v86);
  if ((v94 - 0x2000000000000000) >> 62 != 3)
  {
    goto LABEL_52;
  }

  v95 = [v93 newBufferWithLength:4 * v94 options:513];
  v96 = OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_tubeTriStripIndexBuffer;
  v97 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_tubeTriStripIndexBuffer);
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_tubeTriStripIndexBuffer) = v95;
  swift_unknownObjectRelease();
  v98 = *(v1 + v91);
  if (!v98)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v99 = *(v1 + v91);
  v100 = [swift_unknownObjectRetain() contents];
  v101 = v98;
  v102 = *(v1 + v96);
  if (v102)
  {
    v103 = *(v1 + v82);
    v104 = *(v1 + v96);
    swift_unknownObjectRetain();

    v105 = v118;

    v106 = [v102 contents];
    v107 = v102;
    specialized TubeGenerator.generateMesh(for:vertices:indices:)(v105, v100, v103, v106, *(v1 + v86));

    return;
  }

LABEL_57:
  __break(1u);
}

void CameraPathRenderer.renderLines(into:renderPassDescriptor:)(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation6AtomicVySiGMd, &_s17RealityFoundation6AtomicVySiGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v24 - v9;
  if (*(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_enabled) == 1)
  {
    v11 = OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_lineVertexBuffer;
    if (*(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_lineVertexBuffer))
    {
      v12 = OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_numLineVertices;
      if (*(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_numLineVertices) >= 1)
      {
        v13 = v8;
        v14 = [a2 colorAttachments];
        v15 = [v14 objectAtIndexedSubscript_];

        if (v15)
        {
          [v15 setLoadAction_];

          v16 = [a1 renderCommandEncoderWithDescriptor_];
          if (!v16)
          {
LABEL_17:
            __break(1u);
            goto LABEL_18;
          }

          if (!*(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_renderPipelineState))
          {
LABEL_18:
            __break(1u);
            return;
          }

          v17 = v16;
          [v16 setRenderPipelineState_];
          v18 = OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer__nextBufferIndex;
          swift_beginAccess();
          (*(v6 + 16))(v10, v2 + v18, v13);
          v19 = v2;
          Atomic.wrappedValue.getter();
          (*(v6 + 8))(v10, v13);
          v20 = v24;
          v21 = OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_uniforms;
          swift_beginAccess();
          v22 = *(v19 + v21);
          if ((v22 & 0xC000000000000001) != 0)
          {

            v23 = MEMORY[0x23EEAFC40](v20, v22);

            goto LABEL_11;
          }

          if ((v20 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v20 < *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v23 = *(v22 + 8 * v20 + 32);
            swift_unknownObjectRetain();
LABEL_11:
            [v17 setVertexBuffer:v23 offset:0 atIndex:0];
            swift_unknownObjectRelease();
            [v17 setVertexBuffer:*(v19 + v11) offset:0 atIndex:1];
            [v17 drawPrimitives:2 vertexStart:0 vertexCount:*(v19 + v12)];
            [v17 endEncoding];
            swift_unknownObjectRelease();
            return;
          }

          __break(1u);
        }

        __break(1u);
        goto LABEL_17;
      }
    }
  }
}

void CameraPathRenderer.renderTube(into:renderPassDescriptor:)(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation6AtomicVySiGMd, &_s17RealityFoundation6AtomicVySiGMR);
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v27 - v9;
  if (*(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_enabled) == 1)
  {
    v11 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_tubeVertexBuffer);
    if (v11)
    {
      v12 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_tubeTriStripIndexBuffer);
      if (v12)
      {
        if (*(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_numTubeVertices) >= 3)
        {
          v31 = v8;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          v13 = [a2 colorAttachments];
          v14 = [v13 objectAtIndexedSubscript_];

          if (!v14)
          {
LABEL_24:
            __break(1u);
            goto LABEL_25;
          }

          [v14 setLoadAction_];

          v15 = [a1 renderCommandEncoderWithDescriptor_];
          if (!v15)
          {
LABEL_25:
            __break(1u);
            goto LABEL_26;
          }

          v27 = v12;
          if (!*(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_renderPipelineState))
          {
LABEL_26:
            __break(1u);
            return;
          }

          v16 = v15;
          [v15 setRenderPipelineState_];
          [v16 setDepthStencilState_];
          [v16 setFrontFacingWinding_];
          [v16 setCullMode_];
          v17 = OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer__nextBufferIndex;
          swift_beginAccess();
          v18 = v31;
          v29 = v6[2];
          v29(v10, v2 + v17, v31);
          v30 = v2;
          Atomic.wrappedValue.getter();
          v19 = v30;
          v28 = v6[1];
          v28(v10, v18);
          v20 = v33;
          v21 = OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_uniforms;
          swift_beginAccess();
          v22 = *(v19 + v21);
          if ((v22 & 0xC000000000000001) != 0)
          {
            v26 = *(v19 + v21);

            v23 = MEMORY[0x23EEAFC40](v20, v22);
          }

          else
          {
            if ((v20 & 0x8000000000000000) != 0)
            {
              __break(1u);
              goto LABEL_20;
            }

            if (v20 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_22;
            }

            v23 = *(v22 + 8 * v20 + 32);
            swift_unknownObjectRetain();
          }

          [v16 setVertexBuffer:v23 offset:0 atIndex:{0, v27}];
          swift_unknownObjectRelease();
          [v16 setVertexBuffer:v11 offset:0 atIndex:1];
          v24 = v31;
          v29(v10, v19 + v17, v31);
          Atomic.wrappedValue.getter();
          v19 = v30;
          v28(v10, v24);
          v20 = v32;
          v10 = *(v19 + v21);
          if ((v10 & 0xC000000000000001) == 0)
          {
            if ((v32 & 0x8000000000000000) == 0)
            {
              if (v32 < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v25 = *(v10 + 8 * v32 + 32);
                swift_unknownObjectRetain();
LABEL_16:
                [v16 setFragmentBuffer:v25 offset:0 atIndex:{0, v27}];
                swift_unknownObjectRelease();
                [v16 drawIndexedPrimitives:4 indexCount:*(v19 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_numTubeIndices) indexType:1 indexBuffer:v27 indexBufferOffset:0];
                [v16 endEncoding];
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                return;
              }

              goto LABEL_23;
            }

LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

LABEL_20:

          v25 = MEMORY[0x23EEAFC40](v20, v10);

          goto LABEL_16;
        }
      }
    }
  }
}

uint64_t CameraPathRenderer.deinit()
{
  v1 = OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_colorScheme;
  v2 = type metadata accessor for ColorScheme();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  MEMORY[0x23EEB0C40](v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_cameraPathManager);
  v3 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_device);
  swift_unknownObjectRelease();
  v4 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_baseRenderer);

  v5 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_renderPipelineState);
  swift_unknownObjectRelease();
  v6 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_depthStencilState);
  swift_unknownObjectRelease();
  v7 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_uniforms);

  v8 = OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer__nextBufferIndex;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation6AtomicVySiGMd, &_s17RealityFoundation6AtomicVySiGMR);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_lineVertexBuffer);
  swift_unknownObjectRelease();
  v11 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_tubeTriStripIndexBuffer);
  swift_unknownObjectRelease();
  v12 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_tubeVertexBuffer);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t CameraPathRenderer.__deallocating_deinit()
{
  CameraPathRenderer.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CameraPathRenderer()
{
  result = type metadata singleton initialization cache for CameraPathRenderer;
  if (!type metadata singleton initialization cache for CameraPathRenderer)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for CameraPathRenderer()
{
  v0 = type metadata accessor for ColorScheme();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for Atomic<Int>();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for Atomic<Int>()
{
  if (!lazy cache variable for type metadata for Atomic<Int>)
  {
    v0 = type metadata accessor for Atomic();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Atomic<Int>);
    }
  }
}

__n128 __swift_memcpy89_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CameraPathManager.PoseSample(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 89))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 88);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for CameraPathManager.PoseSample(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 88) = a2 + 1;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CameraPathRenderer.RenderMode and conformance CameraPathRenderer.RenderMode()
{
  result = lazy protocol witness table cache variable for type CameraPathRenderer.RenderMode and conformance CameraPathRenderer.RenderMode;
  if (!lazy protocol witness table cache variable for type CameraPathRenderer.RenderMode and conformance CameraPathRenderer.RenderMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CameraPathRenderer.RenderMode and conformance CameraPathRenderer.RenderMode);
  }

  return result;
}

void specialized TubeGenerator.computeNormals(numPoints:vertices:indices:)(uint64_t a1, float32x4_t *a2, uint64_t a3, float32x4_t a4)
{
  v5 = *(*(v4 + 16) + 16);
  if (!v5)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (a3 / v5 != a1)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (__OFSUB__(a1, 1))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (a1 - 1 < 0)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (a1 != 1)
  {
    v7 = *(v4 + 24);
    v8 = *(v7 + 16);
    v46 = v8 - 3;
    if (v8 < 3)
    {
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v9 = 0;
    v52 = v8 - 1;
    v45 = (v7 + 40);
    v47 = a1 - 1;
    v48 = *(*(v4 + 16) + 16);
    v50 = *(v4 + 24);
    while (!__OFADD__(v9, 1))
    {
      v10 = v9 * v5;
      if ((v9 * v5) >> 64 != (v9 * v5) >> 63)
      {
        goto LABEL_44;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_45;
      }

      if (HIDWORD(v10))
      {
        goto LABEL_46;
      }

      v49 = v9 + 1;
      if (v52 != 2)
      {
        v11 = v45;
        v12 = v46;
        v13 = 2;
        v51 = v9 * v5;
        while (v12)
        {
          v20 = *(v7 + 16);
          if (v13 - 2 >= v20)
          {
            goto LABEL_37;
          }

          v21 = *(v11 - 2);
          v22 = __CFADD__(v10, v21);
          v23 = (v10 + v21);
          if (v22)
          {
            goto LABEL_38;
          }

          if (v13 > v20)
          {
            goto LABEL_39;
          }

          v24 = *(v11 - 1);
          v22 = __CFADD__(v10, v24);
          v25 = (v10 + v24);
          if (v22)
          {
            goto LABEL_40;
          }

          if (v13 >= v20)
          {
            goto LABEL_41;
          }

          if (__CFADD__(v10, *v11))
          {
            goto LABEL_42;
          }

          v26 = &a2[4 * v23];
          v27 = &a2[4 * v25];
          v28 = &a2[4 * (v10 + *v11)];
          v29 = vsubq_f32(*v27, *v26);
          v30 = vsubq_f32(*v28, *v26);
          v31 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v30, v30), v30, 0xCuLL), vnegq_f32(v29)), v30, vextq_s8(vuzp1q_s32(v29, v29), v29, 0xCuLL));
          v30.i32[0] = vextq_s8(v31, v31, 8uLL).u32[0];
          v30.i32[1] = v31.i32[0];
          *v14.f32 = vmul_f32(*v30.f32, 0x3F0000003F000000);
          v14.i64[1] = COERCE_UNSIGNED_INT(vmuls_lane_f32(0.5, *v31.i8, 1));
          v32 = vmvnq_s8(vorrq_s8(vcltzq_f32(v14), vcgezq_f32(v14)));
          if (v32.i32[0] + v32.i32[1] + v32.i32[2] >= 1)
          {
            if (one-time initialization token for logger != -1)
            {
              swift_once();
            }

            v33 = type metadata accessor for Logger();
            __swift_project_value_buffer(v33, logger);
            v34 = Logger.logObject.getter();
            v35 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v34, v35))
            {
              v36 = a2;
              v37 = swift_slowAlloc();
              *v37 = 0;
              _os_log_impl(&dword_23B824000, v34, v35, "Cross product was nan!  Accumulating nothing!", v37, 2u);
              v38 = v37;
              a2 = v36;
              v7 = v50;
              MEMORY[0x23EEB0B70](v38, -1, -1);
            }

            v14 = 0uLL;
            LODWORD(v10) = v51;
          }

          v15 = 1;
          if (v13)
          {
            v15 = -1;
          }

          v16 = vmuls_lane_f32(v15, v14, 2);
          v17 = vmul_n_f32(*v14.f32, v15);
          *v18.f32 = vadd_f32(*v26[1].f32, v17);
          v18.f32[2] = COERCE_FLOAT(v26[1].i64[1]) + v16;
          v18.i32[3] = 0;
          v26[1] = v18;
          *v19.f32 = vadd_f32(v17, *v27[1].f32);
          v19.f32[2] = v16 + COERCE_FLOAT(v27[1].i64[1]);
          v19.i32[3] = 0;
          v27[1] = v19;
          *a4.f32 = vadd_f32(v17, *v28[1].f32);
          a4.f32[2] = v16 + COERCE_FLOAT(v28[1].i64[1]);
          a4.i32[3] = 0;
          v28[1] = a4;
          --v12;
          ++v11;
          if (++v13 == v52)
          {
            goto LABEL_8;
          }
        }

        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        break;
      }

LABEL_8:
      v5 = v48;
      v9 = v49;
      if (v49 == v47)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

LABEL_31:
  v39 = a3;
  if (a3 < 0)
  {
LABEL_52:
    __break(1u);
    return;
  }

  if (a3)
  {
    v40 = a2 + 1;
    do
    {
      v41 = vmulq_f32(*v40, *v40);
      *&v42 = v41.f32[2] + vaddv_f32(*v41.f32);
      *v41.f32 = vrsqrte_f32(v42);
      *v41.f32 = vmul_f32(*v41.f32, vrsqrts_f32(v42, vmul_f32(*v41.f32, *v41.f32)));
      v43 = vmulq_n_f32(*v40, vmul_f32(*v41.f32, vrsqrts_f32(v42, vmul_f32(*v41.f32, *v41.f32))).f32[0]);
      v43.i32[3] = a4.i32[3];
      *v40 = v43;
      v40 += 4;
      --v39;
    }

    while (v39);
  }
}

void specialized static TubeGenerator.createOrthonormalFrame(forward:up:)(float32x4_t a1, float32x4_t a2)
{
  v2 = vmulq_f32(a1, a1);
  if (sqrtf(v2.f32[2] + vaddv_f32(*v2.f32)) <= 0.0001)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = vmulq_f32(a2, a2);
  if (sqrtf(v3.f32[2] + vaddv_f32(*v3.f32)) <= 0.0001)
  {
LABEL_9:
    __break(1u);
    return;
  }

  *&v4 = v2.f32[2] + vaddv_f32(*v2.f32);
  v5 = vrsqrte_f32(v4);
  v6 = vmul_f32(v5, vrsqrts_f32(v4, vmul_f32(v5, v5)));
  v8.columns[2] = vmulq_n_f32(a1, vmul_f32(v6, vrsqrts_f32(v4, vmul_f32(v6, v6))).f32[0]);
  *&v7 = v3.f32[2] + vaddv_f32(*v3.f32);
  *v8.columns[0].f32 = vrsqrte_f32(v7);
  *v8.columns[0].f32 = vmul_f32(*v8.columns[0].f32, vrsqrts_f32(v7, vmul_f32(*v8.columns[0].f32, *v8.columns[0].f32)));
  v8.columns[3] = vmulq_n_f32(a2, vmul_f32(*v8.columns[0].f32, vrsqrts_f32(v7, vmul_f32(*v8.columns[0].f32, *v8.columns[0].f32))).f32[0]);
  v8.columns[0] = vextq_s8(vuzp1q_s32(v8.columns[2], v8.columns[2]), v8.columns[2], 0xCuLL);
  v8.columns[1] = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v8.columns[3], v8.columns[3]), v8.columns[3], 0xCuLL), vnegq_f32(v8.columns[2])), v8.columns[3], v8.columns[0]);
  v8.columns[3] = vmulq_f32(v8.columns[1], v8.columns[1]);
  if (sqrtf(v8.columns[3].f32[1] + (v8.columns[3].f32[2] + v8.columns[3].f32[0])) < 0.0001)
  {
    v8.columns[1] = vmlaq_f32(vmulq_f32(v8.columns[2], xmmword_23B91A750), xmmword_23B91A760, v8.columns[0]);
  }

  v8.columns[1] = vextq_s8(vuzp1q_s32(v8.columns[1], v8.columns[1]), v8.columns[1], 0xCuLL);
  v8.columns[3] = vmulq_f32(v8.columns[1], v8.columns[1]);
  if (sqrtf(v8.columns[3].f32[2] + vaddv_f32(*v8.columns[3].f32)) < 0.0001)
  {
    v9 = vmlaq_f32(vmulq_f32(v8.columns[2], xmmword_23B91A710), xmmword_23B91A720, v8.columns[0]);
    v8.columns[1] = vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL);
  }

  v8.columns[3] = vmulq_f32(v8.columns[1], v8.columns[1]);
  v10 = COERCE_UNSIGNED_INT(v8.columns[3].f32[2] + vaddv_f32(*v8.columns[3].f32));
  *v8.columns[3].f32 = vrsqrte_f32(v10);
  *v8.columns[3].f32 = vmul_f32(*v8.columns[3].f32, vrsqrts_f32(v10.u32[0], vmul_f32(*v8.columns[3].f32, *v8.columns[3].f32)));
  v8.columns[1] = vmulq_n_f32(v8.columns[1], vmul_f32(*v8.columns[3].f32, vrsqrts_f32(v10.u32[0], vmul_f32(*v8.columns[3].f32, *v8.columns[3].f32))).f32[0]);
  v8.columns[0] = vmlaq_f32(vmulq_f32(v8.columns[0], vnegq_f32(v8.columns[1])), v8.columns[2], vextq_s8(vuzp1q_s32(v8.columns[1], v8.columns[1]), v8.columns[1], 0xCuLL));
  v8.columns[3] = vextq_s8(vuzp1q_s32(v8.columns[0], v8.columns[0]), v8.columns[0], 0xCuLL);
  v8.columns[0] = vmulq_f32(v8.columns[0], v8.columns[0]);
  v10.f32[0] = v8.columns[0].f32[1] + (v8.columns[0].f32[2] + v8.columns[0].f32[0]);
  *v8.columns[0].f32 = vrsqrte_f32(v10.u32[0]);
  *v8.columns[0].f32 = vmul_f32(*v8.columns[0].f32, vrsqrts_f32(v10.u32[0], vmul_f32(*v8.columns[0].f32, *v8.columns[0].f32)));
  v10.i32[0] = vmul_f32(*v8.columns[0].f32, vrsqrts_f32(v10.u32[0], vmul_f32(*v8.columns[0].f32, *v8.columns[0].f32))).u32[0];
  *v8.columns[0].f32 = vsub_f32(0, *v8.columns[1].f32);
  v8.columns[0].f32[2] = 0.0 - v8.columns[1].f32[2];
  v8.columns[1] = vmulq_n_f32(v8.columns[3], v10.f32[0]);
  v8.columns[0].i32[3] = 0;
  simd_quaternion(v8);
}

void specialized CameraPathRenderer.render(into:viewport:renderPassDescriptor:)(void *a1, void *a2)
{
  if (*(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_enabled) == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      v7 = OBJC_IVAR____TtC19_RealityKit_SwiftUI17CameraPathManager_shots;
      swift_beginAccess();
      if (*(*&v6[v7] + 16) >= 4uLL)
      {
        v8 = OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_dirtyBuffers;
        if (*(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_dirtyBuffers) == 1)
        {
          v9 = v2;
          if (one-time initialization token for logger != -1)
          {
            swift_once();
          }

          v10 = type metadata accessor for Logger();
          __swift_project_value_buffer(v10, logger);
          v11 = Logger.logObject.getter();
          v12 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v11, v12))
          {
            v13 = swift_slowAlloc();
            *v13 = 0;
            _os_log_impl(&dword_23B824000, v11, v12, "Dirty buffers, recreating cameraSpline resources...", v13, 2u);
            MEMORY[0x23EEB0B70](v13, -1, -1);
          }

          if (*(v9 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_renderMode) != 1)
          {
            __break(1u);
            return;
          }

          v2 = v9;
          CameraPathRenderer.initLineBufferForCameraSpline()();
          CameraPathRenderer.initTubeBufferForCameraSpline()();
          *(v9 + v8) = 0;
        }

        if (*(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_renderMode))
        {
          if (*(*&v6[v7] + 16) >= 2uLL)
          {
            CameraPathRenderer.renderTube(into:renderPassDescriptor:)(a1, a2);
          }
        }

        else
        {
          CameraPathRenderer.renderLines(into:renderPassDescriptor:)(a1, a2);
        }
      }
    }
  }
}

unint64_t lazy protocol witness table accessor for type ColorScheme and conformance ColorScheme()
{
  result = lazy protocol witness table cache variable for type ColorScheme and conformance ColorScheme;
  if (!lazy protocol witness table cache variable for type ColorScheme and conformance ColorScheme)
  {
    type metadata accessor for ColorScheme();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ColorScheme and conformance ColorScheme);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CameraPathRenderer.Error and conformance CameraPathRenderer.Error()
{
  result = lazy protocol witness table cache variable for type CameraPathRenderer.Error and conformance CameraPathRenderer.Error;
  if (!lazy protocol witness table cache variable for type CameraPathRenderer.Error and conformance CameraPathRenderer.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CameraPathRenderer.Error and conformance CameraPathRenderer.Error);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CameraPathRenderer.Error and conformance CameraPathRenderer.Error;
  if (!lazy protocol witness table cache variable for type CameraPathRenderer.Error and conformance CameraPathRenderer.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CameraPathRenderer.Error and conformance CameraPathRenderer.Error);
  }

  return result;
}

unint64_t type metadata accessor for OS_geom_interpolating_curve_3f()
{
  result = lazy cache variable for type metadata for OS_geom_interpolating_curve_3f;
  if (!lazy cache variable for type metadata for OS_geom_interpolating_curve_3f)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_geom_interpolating_curve_3f);
  }

  return result;
}

uint64_t (*static TextComponent.renderBlock.getter())()
{
  swift_beginAccess();
  v0 = static TextComponent.renderBlock;

  return v0;
}

uint64_t static TextComponent.renderBlock.setter(uint64_t (*a1)(), uint64_t a2)
{
  swift_beginAccess();
  static TextComponent.renderBlock = a1;
  qword_2819E36E8 = a2;
}

uint64_t (*protocol witness for static TextComponentRender.renderBlock.getter in conformance TextComponent())()
{
  swift_beginAccess();
  v0 = static TextComponent.renderBlock;

  return v0;
}

uint64_t specialized closure #1 in variable initialization expression of static TextComponent.renderBlock(CGContext *a1, void *a2, double a3, double a4, double a5, double a6)
{
  v52 = a1;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSny10Foundation16AttributedStringV5IndexVGMd, &_sSny10Foundation16AttributedStringV5IndexVGMR);
  v11 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v65 = &v52 - v12;
  v71 = type metadata accessor for AttributedString.Runs.Index();
  v67 = *(v71 - 8);
  v13 = *(v67 + 64);
  MEMORY[0x28223BE20](v71);
  v70 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for AttributedString.Runs.Run();
  v59 = *(v72 - 8);
  v15 = *(v59 + 64);
  v16 = MEMORY[0x28223BE20](v72);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v64 = &v52 - v19;
  v20 = type metadata accessor for AttributedString.Runs();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMR);
  v26 = v25 - 8;
  v27 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v52 - v28;
  v69 = type metadata accessor for AttributedString();
  v53 = *(v69 - 8);
  v30 = *(v53 + 64);
  v31 = MEMORY[0x28223BE20](v69);
  v63 = &v52 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v34 = &v52 - v33;
  v35 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
  AttributedString.init(_:)();
  v68 = v34;
  AttributedString.runs.getter();
  (*(v21 + 16))(v29, v24, v20);
  v36 = *(v26 + 44);
  lazy protocol witness table accessor for type AttributedString.Runs and conformance AttributedString.Runs(&lazy protocol witness table cache variable for type AttributedString.Runs and conformance AttributedString.Runs, MEMORY[0x277CC8C08]);
  dispatch thunk of Collection.startIndex.getter();
  (*(v21 + 8))(v24, v20);
  v67 += 8;
  v61 = (v59 + 32);
  v62 = (v59 + 16);
  v60 = (v53 + 16);
  v58 = *MEMORY[0x277D740C0];
  v57 = *MEMORY[0x277D74068];
  v56 = *MEMORY[0x277D74078];
  v55 = *MEMORY[0x277D740D0];
  v54 = *MEMORY[0x277D741E0];
  for (v59 += 8; ; (*v59)(v18, v72))
  {
    v37 = v70;
    dispatch thunk of Collection.endIndex.getter();
    lazy protocol witness table accessor for type AttributedString.Runs and conformance AttributedString.Runs(&lazy protocol witness table cache variable for type AttributedString.Runs.Index and conformance AttributedString.Runs.Index, MEMORY[0x277CC8BF8]);
    v38 = v71;
    v39 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*v67)(v37, v38);
    if (v39)
    {
      break;
    }

    v40 = dispatch thunk of Collection.subscript.read();
    v41 = v64;
    v42 = v72;
    (*v62)(v64);
    v40(&v73, 0);
    dispatch thunk of Collection.formIndex(after:)();
    (*v61)(v18, v41, v42);
    AttributedString.Runs.Run.range.getter();
    (*v60)(v63, v68, v69);
    lazy protocol witness table accessor for type Range<AttributedString.Index> and conformance Range<A>();
    lazy protocol witness table accessor for type AttributedString.Runs and conformance AttributedString.Runs(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x277CC8C40]);
    v43 = _NSRange.init<A, B>(_:in:)();
    v45 = v44;
    lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute();
    AttributedString.Runs.Run.subscript.getter();
    if (v73)
    {
      type metadata accessor for UIColor();

      v46 = UIColor.init(_:)();
      [v35 addAttribute:v58 value:v46 range:{v43, v45, v52}];
    }

    lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute();
    AttributedString.Runs.Run.subscript.getter();
    if (v73)
    {
      type metadata accessor for UIColor();

      v47 = UIColor.init(_:)();
      [v35 addAttribute:v57 value:v47 range:{v43, v45}];
    }

    lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute and conformance AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute();
    AttributedString.Runs.Run.subscript.getter();
    if ((v74 & 1) == 0)
    {
      isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
      [v35 addAttribute:v56 value:isa range:{v43, v45}];
    }

    lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.KerningAttribute and conformance AttributeScopes.SwiftUIAttributes.KerningAttribute();
    AttributedString.Runs.Run.subscript.getter();
    if ((v74 & 1) == 0)
    {
      v49 = CGFloat._bridgeToObjectiveC()().super.super.isa;
      [v35 addAttribute:v55 value:v49 range:{v43, v45}];
    }

    lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.TrackingAttribute and conformance AttributeScopes.SwiftUIAttributes.TrackingAttribute();
    AttributedString.Runs.Run.subscript.getter();
    if ((v74 & 1) == 0)
    {
      v50 = CGFloat._bridgeToObjectiveC()().super.super.isa;
      [v35 addAttribute:v54 value:v50 range:{v43, v45}];
    }
  }

  outlined destroy of IndexingIterator<AttributedString.Runs>(v29);
  UIGraphicsPushContext(v52);
  [v35 drawInRect_];
  UIGraphicsPopContext();

  return (*(v53 + 8))(v68, v69);
}

unint64_t lazy protocol witness table accessor for type Range<AttributedString.Index> and conformance Range<A>()
{
  result = lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>;
  if (!lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSny10Foundation16AttributedStringV5IndexVGMd, &_sSny10Foundation16AttributedStringV5IndexVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type AttributedString.Runs and conformance AttributedString.Runs(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute and conformance AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute and conformance AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute and conformance AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute and conformance AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.KerningAttribute and conformance AttributeScopes.SwiftUIAttributes.KerningAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.KerningAttribute and conformance AttributeScopes.SwiftUIAttributes.KerningAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.KerningAttribute and conformance AttributeScopes.SwiftUIAttributes.KerningAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.KerningAttribute and conformance AttributeScopes.SwiftUIAttributes.KerningAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.TrackingAttribute and conformance AttributeScopes.SwiftUIAttributes.TrackingAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.TrackingAttribute and conformance AttributeScopes.SwiftUIAttributes.TrackingAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.TrackingAttribute and conformance AttributeScopes.SwiftUIAttributes.TrackingAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.TrackingAttribute and conformance AttributeScopes.SwiftUIAttributes.TrackingAttribute);
  }

  return result;
}

unint64_t type metadata accessor for UIColor()
{
  result = lazy cache variable for type metadata for UIColor;
  if (!lazy cache variable for type metadata for UIColor)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIColor);
  }

  return result;
}

uint64_t outlined destroy of IndexingIterator<AttributedString.Runs>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ContinuousShotCircle.addShot(position:)(float32x4_t a1)
{
  result = specialized static ContinuousShotCircle.ShotData.toUnitVector(position:)(a1);
  if (v2)
  {
    return result;
  }

  v7 = static ContinuousShotCircle.ShotData.nextID;
  if (__OFADD__(static ContinuousShotCircle.ShotData.nextID, 1))
  {
    __break(1u);
    goto LABEL_13;
  }

  v4 = v6;
  v3 = v1;
  ++static ContinuousShotCircle.ShotData.nextID;
  if (one-time initialization token for logger != -1)
  {
LABEL_13:
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, logger);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21[0] = v12;
    v21[1] = v7;
    *v11 = 136446210;
    v21[2] = v4;
    v13 = String.init<A>(describing:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v21);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_23B824000, v9, v10, "Adding shot: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x23EEB0B70](v12, -1, -1);
    MEMORY[0x23EEB0B70](v11, -1, -1);
  }

  swift_beginAccess();
  v16 = *(v3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 16) = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
    *(v3 + 16) = v16;
  }

  v19 = *(v16 + 2);
  v18 = *(v16 + 3);
  if (v19 >= v18 >> 1)
  {
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v16);
  }

  *(v16 + 2) = v19 + 1;
  v20 = &v16[16 * v19];
  *(v20 + 4) = v7;
  *(v20 + 5) = v4;
  *(v3 + 16) = v16;
  return swift_endAccess();
}

uint64_t ContinuousShotCircle.distancesTo(queryAngle:)(float a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23B91BFD0;
  v4 = __sincosf_stret(a1);
  *(inited + 32) = v4.__cosval;
  *(inited + 36) = v4.__sinval;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1g5Tf4g_n(inited);
  v6 = v5;
  swift_setDeallocating();
  swift_beginAccess();
  v7 = *(v1 + 16);
  v8 = *(v7 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v28 = MEMORY[0x277D84F90];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
    v9 = v28;
    v10 = vmul_f32(v6, v6);
    v11 = vadd_f32(v10, vdup_lane_s32(v10, 1)).u32[0];
    v12 = sqrtf(vaddv_f32(v10));
    v13 = 40;
    v14 = vrsqrte_f32(v11);
    v15 = vmul_f32(v14, vrsqrts_f32(v11, vmul_f32(v14, v14)));
    v16 = vmul_n_f32(v6, vmul_f32(v15, vrsqrts_f32(v11, vmul_f32(v15, v15))).f32[0]);
    do
    {
      v17 = 0.0;
      if (v12 > 0.0001)
      {
        v18 = *(v7 + v13);
        v19 = vmul_f32(v18, v18);
        if (sqrtf(vaddv_f32(v19)) > 0.0001)
        {
          v20 = vadd_f32(v19, vdup_lane_s32(v19, 1)).u32[0];
          v21 = vrsqrte_f32(v20);
          v22 = vmul_f32(v21, vrsqrts_f32(v20, vmul_f32(v21, v21)));
          v23 = vaddv_f32(vmul_f32(v16, vmul_n_f32(v18, vmul_f32(v22, vrsqrts_f32(v20, vmul_f32(v22, v22))).f32[0])));
          if (v23 <= -1.0)
          {
            v23 = -1.0;
          }

          if (v23 > 1.0)
          {
            v23 = 1.0;
          }

          v17 = acosf(v23);
        }
      }

      v25 = *(v28 + 16);
      v24 = *(v28 + 24);
      if (v25 >= v24 >> 1)
      {
        v26 = v17;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1);
        v17 = v26;
      }

      *(v28 + 16) = v25 + 1;
      *(v28 + 4 * v25 + 32) = v17;
      v13 += 16;
      --v8;
    }

    while (v8);
  }

  return v9;
}

uint64_t ContinuousShotCircle.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

double CaptureCircle.Bin.minUpdateRange.getter()
{
  if ((*(v0 + 112) & 1) == 0)
  {
    return *(v0 + 104);
  }

  result = *(v0 + 24) / 100.0;
  *(v0 + 104) = result;
  *(v0 + 112) = 0;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CaptureCircle.OccupyCriteria()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CaptureCircle.OccupyCriteria()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CaptureCircle.OccupyCriteria()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CaptureCircle.OccupyCriteria@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CaptureCircle.OccupyCriteria.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance CaptureCircle.OccupyCriteria(unint64_t *a1@<X8>)
{
  v2 = 0x800000023B924450;
  v3 = 0x6C6E4F73746F6873;
  if (*v1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v2 = 0xE900000000000079;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CaptureCircle.OccupyCriteria(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000012;
  }

  else
  {
    v4 = 0x6C6E4F73746F6873;
  }

  if (v3)
  {
    v5 = 0xE900000000000079;
  }

  else
  {
    v5 = 0x800000023B924450;
  }

  if (*a2)
  {
    v6 = 0xD000000000000012;
  }

  else
  {
    v6 = 0x6C6E4F73746F6873;
  }

  if (*a2)
  {
    v7 = 0x800000023B924450;
  }

  else
  {
    v7 = 0xE900000000000079;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

float one-time initialization function for nearestNeighborThreshRads()
{
  result = specialized static ExperimentSettings.loadCaptureCircleBinShotNeighborThreshDegs(default:)(20.0) * 0.017453;
  static CaptureCircle.nearestNeighborThreshRads = LODWORD(result);
  return result;
}

uint64_t CaptureCircle.init(numBins:binFillAnimDurationSecs:)(uint64_t a1, float a2)
{
  v5 = static CaptureCircle.nextId;
  if (__OFADD__(static CaptureCircle.nextId, 1))
  {
    __break(1u);
    goto LABEL_12;
  }

  v2 = v3;
  v4 = a1;
  ++static CaptureCircle.nextId;
  *(v3 + 16) = v5;
  *(v3 + 24) = specialized static ExperimentSettings.loadCaptureCircleOccupyCriteria(default:)(0) & 1;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 64) = 0xFFF0000000000000;
  *(v3 + 80) = 0;
  *(v3 + 88) = 1;
  *(v3 + 96) = 0;
  *(v3 + 104) = 1;
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 0u;
  *(v3 + 160) = 0u;
  *(v3 + 176) = 1;
  *(v3 + 184) = 0xFFF0000000000000;
  *(v3 + 192) = specialized static ExperimentSettings.loadCaptureCircleVerticalExclusionAngleDegs(default:)(10.0) * 0.017453;
  *(v3 + 200) = xmmword_23B91E580;
  *(v3 + 216) = 0x3FD51EB851EB851FLL;
  type metadata accessor for ContinuousShotCircle();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D84F90];
  *(v7 + 16) = MEMORY[0x277D84F90];
  *(v3 + 72) = v8;
  v9 = v3 + 72;
  *(v9 + 160) = 0;
  *(v9 + 168) = 0;
  *(v9 + 152) = v7;
  *(v9 + 176) = 1;
  *(v9 - 40) = v4;
  *(v9 - 32) = a2;
  if (v4 < 0)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_5;
  }

  if (!v4)
  {
    return v2;
  }

  if (one-time initialization token for nearestNeighborThreshRads != -1)
  {
    goto LABEL_13;
  }

LABEL_5:
  v10 = static CaptureCircle.nearestNeighborThreshRads;
  swift_beginAccess();
  type metadata accessor for CaptureCircle.Bin();
  v11 = 0;
  do
  {
    v12 = 6.28318531 / *(v2 + 32);
    v13 = swift_allocObject();
    *(v13 + 32) = v10;
    *(v13 + 36) = 0;
    *(v13 + 40) = 0xFFF0000000000000;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
    *(v13 + 72) = 1;
    *(v13 + 80) = 0;
    *(v13 + 88) = 1;
    *(v13 + 92) = 2139095040;
    *(v13 + 96) = 0;
    *(v13 + 104) = 0;
    *(v13 + 112) = 1;
    *(v13 + 16) = v11;
    *(v13 + 24) = v12;
    MEMORY[0x23EEAF620]();
    if (*((*(v2 + 72) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 72) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v14 = *((*(v2 + 72) & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    ++v11;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  while (v4 != v11);
  swift_endAccess();
  return v2;
}

char *CaptureCircle.isAnimationFinished.getter()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 72);
  if (v2 >> 62)
  {
    if (v2 < 0)
    {
      v20 = *(v0 + 72);
    }

    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v21 = MEMORY[0x277D84F90];

    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 & ~(v3 >> 63), 0);
    if (v3 < 0)
    {
      __break(1u);
      return result;
    }

    v6 = 0;
    v4 = v21;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x23EEAFC40](v6, v2);
      }

      else
      {
        v8 = *(v2 + 8 * v6 + 32);
      }

      v9 = *(v7 + 40);

      v11 = *(v21 + 16);
      v10 = *(v21 + 24);
      if (v11 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
      }

      ++v6;
      *(v21 + 16) = v11 + 1;
      *(v21 + 8 * v11 + 32) = v9;
    }

    while (v3 != v6);
  }

  v12 = *(v4 + 16);
  if (v12)
  {
    v13 = *(v4 + 32);
    v14 = v12 - 1;
    if (v14)
    {
      v15 = (v4 + 40);
      do
      {
        v16 = *v15++;
        v17 = v16;
        if (v13 < v16)
        {
          v13 = v17;
        }

        --v14;
      }

      while (v14);
    }

    v18 = *(v1 + 184);
  }

  else
  {

    v18 = *(v1 + 184);
    v13 = v18;
  }

  v19 = *(v1 + 240) + 0.0;
  if (*(v1 + 248))
  {
    v19 = 0.0;
  }

  return (v19 + v13 + *(v1 + 40) < v18);
}

void CaptureCircle.update(arView:boundingBoxWorld:time:)(__n128 a1, __n128 a2, __n128 a3, __n128 a4, double a5)
{
  v6 = v5;
  v5[7] = a1;
  v5[8] = a2;
  v5[9] = a3;
  v5[10] = a4;
  v5[11].n128_u8[0] = 0;
  dispatch thunk of ARView.cameraTransform.getter();
  *v10.i64 = specialized simd_float4x4.init(translation:rotation:scale:)(v9, v8);
  v36 = v10;
  v37 = v11;
  v38 = v12;
  v42 = v13;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of CaptureCircle.cameraPositionInObjectCoordinates(cameraWorld:boundingBoxWorld:));
  v43 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v36, v14.f32[0]), v37, *v14.f32, 1), v38, v14, 2), v42, v14, 3);
  Transform.init(matrix:)();
  v39 = v16;
  v40 = v15;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of CaptureCircle.cameraPositionInObjectCoordinates(cameraWorld:boundingBoxWorld:));
  *v45.columns[0].i64 = specialized simd_float4x4.init(translation:rotation:scale:)(v39, v40);
  v46 = __invert_f4(v45);
  v17 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v46.columns[0], v43.f32[0]), v46.columns[1], *v43.f32, 1), v46.columns[2], v43, 2), v46.columns[3], v43, 3);
  v18 = v5[12].n128_f32[0];
  v46.columns[0] = vmulq_f32(v17, v17);
  v46.columns[1].f32[0] = v46.columns[0].f32[2] + vaddv_f32(*v46.columns[0].f32);
  *v46.columns[0].f32 = vrsqrte_f32(v46.columns[1].u32[0]);
  *v46.columns[0].f32 = vmul_f32(*v46.columns[0].f32, vrsqrts_f32(v46.columns[1].u32[0], vmul_f32(*v46.columns[0].f32, *v46.columns[0].f32)));
  v41 = v17;
  v44 = vmulq_n_f32(v17, vmul_f32(*v46.columns[0].f32, vrsqrts_f32(v46.columns[1].u32[0], vmul_f32(*v46.columns[0].f32, *v46.columns[0].f32))).f32[0]);
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of CaptureCircle.update(arView:boundingBoxWorld:time:));
  specialized static MathHelpers.angleBetween(_:_:)(v44, v19);
  if (v20 < v18)
  {
    if (one-time initialization token for logger == -1)
    {
LABEL_3:
      v21 = type metadata accessor for Logger();
      __swift_project_value_buffer(v21, logger);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_23B824000, v22, v23, "Within vertical exclusion cone, not updating capture circle!", v24, 2u);
        MEMORY[0x23EEB0B70](v24, -1, -1);
      }

      goto LABEL_28;
    }

LABEL_33:
    swift_once();
    goto LABEL_3;
  }

  v25 = atan2f(v41.f32[2], v41.f32[0]);
  v26 = specialized static CaptureCircle.angleToBinIndex(theta:numBins:)(v5[2].n128_i64[0], v25);
  v27 = v26;
  v6[3].n128_u64[0] = v26;
  v6[3].n128_f64[1] = v25;
  if ((v6[6].n128_u8[8] & 1) == 0 && v6[6].n128_u64[0] == v26)
  {
    goto LABEL_28;
  }

  swift_beginAccess();
  v28 = v6[4].n128_u64[1];
  if ((v28 & 0xC000000000000001) == 0)
  {
    if ((v27 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v27 < *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v29 = *(v28 + 8 * v27 + 32);

      if (*(v29 + 72))
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_33;
  }

  v35 = v6[4].n128_u64[1];

  v29 = MEMORY[0x23EEAFC40](v27, v28);

  if (*(v29 + 72))
  {
    goto LABEL_13;
  }

LABEL_12:
  if (*(v29 + 88) != 1)
  {
    v34 = *(v29 + 80);
    if (*(v29 + 64) > v25)
    {
      *(v29 + 64) = v25;
      *(v29 + 72) = 0;
    }

    if (v34 >= v25)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(v29 + 64) = v25;
  *(v29 + 72) = 0;
LABEL_14:
  *(v29 + 80) = v25;
  *(v29 + 88) = 0;
LABEL_15:
  if (CaptureCircle.updateOccupancy(bin:time:)(v29, a5))
  {
    v6[6].n128_u64[0] = v6[3].n128_u64[0];
    v6[6].n128_u8[8] = 0;
    if (v6[5].n128_u8[8] == 1)
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      __swift_project_value_buffer(v30, logger);

      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 134349056;
        *(v33 + 4) = v6[3].n128_u64[0];

        _os_log_impl(&dword_23B824000, v31, v32, "Setting first occupied bin to: %{public}ld", v33, 0xCu);
        MEMORY[0x23EEB0B70](v33, -1, -1);
      }

      else
      {
      }

      v6[5].n128_u64[0] = v6[3].n128_u64[0];
      v6[5].n128_u8[8] = 0;
    }
  }

  CaptureCircle.updateCircleCompletionAnimation(t:)(a5);

LABEL_28:
  v6[11].n128_f64[1] = a5;
}

Swift::Void __swiftcall CaptureCircle.onShotTaken(at:cameraTransformWorld:)(Swift::Double at, simd_float4x4 *cameraTransformWorld)
{
  v7 = v2;
  v59 = v3;
  v60 = v4;
  v61 = v5;
  v62 = v6;
  Transform.init(matrix:)();
  if (one-time initialization token for logger != -1)
  {
LABEL_42:
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, logger);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v64.i64[0] = v13;
    *v12 = 134349314;
    *(v12 + 4) = at;
    *(v12 + 12) = 2082;
    v14 = String.init<A>(describing:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v64);

    *(v12 + 14) = v16;
    _os_log_impl(&dword_23B824000, v10, v11, "onShotTaken: timsetamp=%{public}f  cameraWorld is: %{public}s", v12, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x23EEB0B70](v13, -1, -1);
    MEMORY[0x23EEB0B70](v12, -1, -1);
  }

  if ((*(v7 + 176) & 1) == 0)
  {
    v20 = *(v7 + 112);
    v21 = *(v7 + 120);
    v22 = *(v7 + 128);
    v23 = *(v7 + 136);
    v24 = *(v7 + 144);
    v25 = *(v7 + 152);
    v26 = *(v7 + 160);
    v27 = *(v7 + 168);
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of CaptureCircle.cameraPositionInObjectCoordinates(cameraWorld:boundingBoxWorld:));
    v63 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v59, v28.f32[0]), v60, *v28.f32, 1), v61, v28, 2), v62, v28, 3);
    Transform.init(matrix:)();
    v60 = v30;
    v61 = v29;
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of CaptureCircle.cameraPositionInObjectCoordinates(cameraWorld:boundingBoxWorld:));
    *v66.columns[0].i64 = specialized simd_float4x4.init(translation:rotation:scale:)(*v60.i64, v61);
    v67 = __invert_f4(v66);
    v62 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v67.columns[0], v63.f32[0]), v67.columns[1], *v63.f32, 1), v67.columns[2], v63, 2), v67.columns[3], v63, 3);
    v31 = atan2f(v62.f32[2], v62.f32[0]);
    v32 = specialized static CaptureCircle.angleToBinIndex(theta:numBins:)(*(v7 + 32), v31);
    swift_beginAccess();
    v33 = *(v7 + 72);
    if ((v33 & 0xC000000000000001) != 0)
    {
      v58 = *(v7 + 72);

      v34 = MEMORY[0x23EEAFC40](v32, v33);
    }

    else
    {
      if ((v32 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      if (v32 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v34 = *(v33 + 8 * v32 + 32);
    }

    v35 = *(v34 + 56);
    v36 = __OFADD__(v35, 1);
    v37 = v35 + 1;
    v38 = v62;
    if (!v36)
    {
      v38.i32[3] = 0;
      v62 = v38;
      *(v34 + 56) = v37;

      *(v7 + 64) = *(v7 + 184);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v65 = v42;
        *v41 = 136446210;
        v64 = v62;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
        lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>();
        v43 = SIMD.description.getter();
        v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, &v65);

        *(v41 + 4) = v45;
        _os_log_impl(&dword_23B824000, v39, v40, "Adding shot to capture circle container.  camPosObject: %{public}s", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v42);
        MEMORY[0x23EEB0B70](v42, -1, -1);
        MEMORY[0x23EEB0B70](v41, -1, -1);
      }

      v46 = *(v7 + 224);
      ContinuousShotCircle.addShot(position:)(v62);
      CaptureCircle.recalculateShotDistances()();
      v33 = *(v7 + 72);
      if (!(v33 >> 62))
      {
        v47 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v47)
        {
          return;
        }

LABEL_19:
        if (v47 < 1)
        {
          __break(1u);
          return;
        }

        v48 = *(v7 + 24);

        v49 = 0;
        at = 0.005;
        while (1)
        {
          if ((v33 & 0xC000000000000001) != 0)
          {
            v50 = MEMORY[0x23EEAFC40](v49, v33);
          }

          else
          {
            v50 = *(v33 + 8 * v49 + 32);
          }

          v51 = *(v7 + 184);
          v52 = *(v50 + 96);
          if (v48)
          {
            updated = 0.0;
            if ((*(v50 + 72) & 1) == 0 && (*(v50 + 88) & 1) == 0)
            {
              v54 = *(v50 + 80) - *(v50 + 64);
              updated = CaptureCircle.Bin.minUpdateRange.getter();
              if (v54 > updated)
              {
                updated = v54;
              }
            }

            if (updated / *(v50 + 24) < 0.005 || v52 < 2)
            {
              goto LABEL_21;
            }
          }

          else if (v52 < 2)
          {
            goto LABEL_21;
          }

          if ((*(v50 + 36) & 1) == 0)
          {
            *(v50 + 36) = 1;
            *(v50 + 40) = v51;
          }

          v56 = *(v50 + 48);
          v36 = __OFADD__(v56, 1);
          v57 = v56 + 1;
          if (v36)
          {
            __break(1u);
            goto LABEL_42;
          }

          *(v50 + 48) = v57;
          *(v50 + 64) = 0;
          *(v50 + 72) = 1;
          *(v50 + 80) = 0;
          *(v50 + 88) = 1;
LABEL_21:
          ++v49;

          if (v47 == v49)
          {

            return;
          }
        }
      }

LABEL_47:
      v47 = __CocoaSet.count.getter();
      if (!v47)
      {
        return;
      }

      goto LABEL_19;
    }

    goto LABEL_45;
  }

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_23B824000, v17, v18, "onShotTaken called when we don't have a bounding box!  Ignoring...", v19, 2u);
    MEMORY[0x23EEB0B70](v19, -1, -1);
  }
}

uint64_t CaptureCircle.updateOccupancy(bin:time:)(uint64_t result, double a2)
{
  v3 = *(result + 96);
  if (*(v2 + 24) == 1)
  {
    v4 = 0.0;
    if ((*(result + 72) & 1) == 0 && (*(result + 88) & 1) == 0)
    {
      v5 = *(result + 80) - *(result + 64);
      v6 = a2;
      v7 = result;
      updated = CaptureCircle.Bin.minUpdateRange.getter();
      result = v7;
      v4 = updated;
      a2 = v6;
      if (v5 > v4)
      {
        v4 = v5;
      }
    }

    if (v4 / *(result + 24) >= 0.005 && v3 >= 2)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (v3 < 2)
  {
    return 0;
  }

LABEL_13:
  if ((*(result + 36) & 1) == 0)
  {
    *(result + 36) = 1;
    *(result + 40) = a2;
  }

  v10 = *(result + 48);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(result + 48) = v12;
    *(result + 64) = 0;
    v13 = result;
    result = 1;
    *(v13 + 72) = 1;
    *(v13 + 80) = 0;
    *(v13 + 88) = 1;
  }

  return result;
}

void CaptureCircle.updateCircleCompletionAnimation(t:)(double a1)
{
  if (*(v1 + 248) != 1)
  {
    return;
  }

  if (*(v1 + 24) == 1)
  {
    swift_beginAccess();
    v3 = *(v1 + 72);
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 >> 62)
    {
LABEL_43:
      v5 = __CocoaSet.count.getter();
    }

    else
    {
      v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 = 0;
    while (v5 != v6)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x23EEAFC40](v6, v3);
        if (__OFADD__(v6, 1))
        {
LABEL_14:
          __break(1u);
          goto LABEL_15;
        }
      }

      else
      {
        if (v6 >= *(v4 + 16))
        {
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        v7 = *(v3 + 8 * v6 + 32);

        if (__OFADD__(v6, 1))
        {
          goto LABEL_14;
        }
      }

      v9 = *(v8 + 36);

      ++v6;
      if ((v9 & 1) == 0)
      {
LABEL_27:

        return;
      }
    }

    if ((*(v1 + 88) & 1) == 0)
    {
      v15 = *(v1 + 72);
      v16 = *(v1 + 80);
      if ((v15 & 0xC000000000000001) != 0)
      {
        v26 = *(v1 + 72);

        v17 = MEMORY[0x23EEAFC40](v16, v15);

LABEL_34:
        v18 = *(v17 + 48);

        if (v18 < 2)
        {
          return;
        }

        goto LABEL_35;
      }

      if ((v16 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v16 < *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v17 = *(v15 + 8 * v16 + 32);

        goto LABEL_34;
      }

      __break(1u);
    }

    __break(1u);
    return;
  }

LABEL_15:
  swift_beginAccess();
  v3 = *(v1 + 72);
  v4 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v3 >> 62)
  {
    if (v3 < 0)
    {
      v25 = *(v1 + 72);
    }

    v10 = __CocoaSet.count.getter();
  }

  else
  {
    v10 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = 0;
  while (v10 != v11)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x23EEAFC40](v11, v3);
      if (__OFADD__(v11, 1))
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (v11 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_42;
      }

      v12 = *(v3 + 8 * v11 + 32);

      if (__OFADD__(v11, 1))
      {
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }
    }

    v14 = *(v13 + 36);

    ++v11;
    if ((v14 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

LABEL_35:
  v19 = v1;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, logger);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 134349056;
    *(v23 + 4) = a1;
    _os_log_impl(&dword_23B824000, v21, v22, "Starting circle completion animation at time=%{public}f...", v23, 0xCu);
    MEMORY[0x23EEB0B70](v23, -1, -1);
  }

  *&v24 = a1;
  *(v19 + 232) = (v24 << 32) | 1;
  *(v19 + 240) = 1051260355;
  *(v19 + 248) = 0;
}

uint64_t CaptureCircle.recalculateShotDistances()()
{
  v1 = v0;
  if (one-time initialization token for logger != -1)
  {
    goto LABEL_41;
  }

  while (1)
  {
    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, logger);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_23B824000, v3, v4, "Updating nearest shot distances...", v5, 2u);
      MEMORY[0x23EEB0B70](v5, -1, -1);
    }

    result = swift_beginAccess();
    v7 = v1[9];
    if (!(v7 >> 62))
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v8)
      {
        return result;
      }

      goto LABEL_6;
    }

    if (v7 < 0)
    {
      v33 = v1[9];
    }

    result = __CocoaSet.count.getter();
    v8 = result;
    if (!result)
    {
      return result;
    }

LABEL_6:
    v1 = v1[28];

    swift_beginAccess();
    v9 = 0;
    v34 = v8;
    while ((v7 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x23EEAFC40](v9, v7);
      v13 = __OFADD__(v9++, 1);
      if (v13)
      {
        goto LABEL_38;
      }

LABEL_16:
      v14 = *(v12 + 24);
      v15 = v14;
      v16 = *(v12 + 16) * v15;
      v17 = v14 * 0.5;
      v18 = v16 + v17;
      if (*(v1[2] + 16))
      {
        v19 = ContinuousShotCircle.distancesTo(queryAngle:)(v16 + v17);
        v20 = *(v19 + 16);
        if (!v20)
        {
          goto LABEL_39;
        }

        v21 = *(v19 + 32);
        v22 = v20 - 1;
        if (v22)
        {
          v23 = (v19 + 36);
          do
          {
            v24 = *v23++;
            v25 = v24;
            if (v24 < v21)
            {
              v21 = v25;
            }

            --v22;
          }

          while (v22);
        }
      }

      else
      {
        v21 = INFINITY;
      }

      *(v12 + 92) = v21;
      if (*(v1[2] + 16))
      {
        v26 = *(v12 + 32);
        v27 = ContinuousShotCircle.distancesTo(queryAngle:)(v18);
        v28 = *(v27 + 16);
        if (v28)
        {
          v29 = (v27 + 32);
          v10 = MEMORY[0x277D84F90];
          do
          {
            v32 = *v29;
            if (*v29 <= v26)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1);
              }

              v31 = *(v10 + 16);
              v30 = *(v10 + 24);
              if (v31 >= v30 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1);
              }

              *(v10 + 16) = v31 + 1;
              *(v10 + 4 * v31 + 32) = v32;
            }

            ++v29;
            --v28;
          }

          while (v28);
        }

        else
        {
          v10 = MEMORY[0x277D84F90];
        }

        v11 = *(v10 + 16);

        v8 = v34;
      }

      else
      {
        v11 = 0;
      }

      *(v12 + 96) = v11;

      if (v9 == v8)
      {
      }
    }

    if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_40;
    }

    v12 = *(v7 + 32 + 8 * v9);

    v13 = __OFADD__(v9++, 1);
    if (!v13)
    {
      goto LABEL_16;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    swift_once();
  }
}

uint64_t CaptureCircle.__deallocating_deinit()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 224);

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type CaptureCircle.OccupyCriteria and conformance CaptureCircle.OccupyCriteria()
{
  result = lazy protocol witness table cache variable for type CaptureCircle.OccupyCriteria and conformance CaptureCircle.OccupyCriteria;
  if (!lazy protocol witness table cache variable for type CaptureCircle.OccupyCriteria and conformance CaptureCircle.OccupyCriteria)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CaptureCircle.OccupyCriteria and conformance CaptureCircle.OccupyCriteria);
  }

  return result;
}

uint64_t specialized static ContinuousShotCircle.ShotData.toUnitVector(position:)(float32x4_t a1)
{
  v1 = vmulq_f32(a1, a1);
  v2 = sqrtf(v1.f32[2] + vaddv_f32(*v1.f32));
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of static ContinuousShotCircle.ShotData.toUnitVector(position:));
  v4 = vmulq_f32(v3, a1);
  if (((v4.f32[2] + vaddv_f32(*v4.f32)) / v2) >= 0.99995)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, logger);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_23B824000, v8, v9, "Shot is too close to Y-axis, cannot add!", v10, 2u);
      MEMORY[0x23EEB0B70](v10, -1, -1);
    }

    lazy protocol witness table accessor for type ContinuousShotCircle.Error and conformance ContinuousShotCircle.Error();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23B91BFD0;
    *(inited + 32) = vzip1_s32(*a1.f32, *&vextq_s8(a1, a1, 8uLL));
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1g5Tf4g_n(inited);
    return swift_setDeallocating();
  }
}

uint64_t specialized static CaptureCircle.angleToBinIndex(theta:numBins:)(uint64_t result, double a2)
{
    ;
  }

    ;
  }

  v2 = a2 / 6.28318531 * result;
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v3 = result - 1;
  if (__OFSUB__(result, 1))
  {
LABEL_15:
    __break(1u);
    return result;
  }

  if (v3 >= v2)
  {
    v3 = v2;
  }

  return v3 & ~(v3 >> 63);
}

unint64_t lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>()
{
  result = lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>;
  if (!lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ContinuousShotCircle.Error and conformance ContinuousShotCircle.Error()
{
  result = lazy protocol witness table cache variable for type ContinuousShotCircle.Error and conformance ContinuousShotCircle.Error;
  if (!lazy protocol witness table cache variable for type ContinuousShotCircle.Error and conformance ContinuousShotCircle.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContinuousShotCircle.Error and conformance ContinuousShotCircle.Error);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContinuousShotCircle.Error and conformance ContinuousShotCircle.Error;
  if (!lazy protocol witness table cache variable for type ContinuousShotCircle.Error and conformance ContinuousShotCircle.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContinuousShotCircle.Error and conformance ContinuousShotCircle.Error);
  }

  return result;
}

uint64_t CaptureModeBoxModel.FactoredScaleEntity.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = direct field offset for CaptureModeBoxModel.FactoredScaleEntity.animatableScaleEntity;
  v5 = type metadata accessor for Entity();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  *(v3 + v4) = Entity.init()();
  v8 = Entity.init()();
  v9 = direct field offset for CaptureModeBoxModel.FactoredScaleEntity.animatableScaleEntity;
  v10 = *(v8 + direct field offset for CaptureModeBoxModel.FactoredScaleEntity.animatableScaleEntity);

  dispatch thunk of Entity.name.setter();

  v11 = *(v8 + v9);

  HasHierarchy.addChild(_:preservingWorldTransform:)();

  return v8;
}

uint64_t CaptureModeBoxModel.__deallocating_deinit()
{
  if (swift_weakLoadStrong())
  {
    type metadata accessor for CaptureModeBoxModel.FactoredScaleEntity();
    HasHierarchy.removeFromParent(preservingWorldTransform:)(0);
  }

  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];
  swift_unownedRelease();
  swift_weakDestroy();
  v4 = v0[8];

  v5 = v0[9];

  v6 = v0[10];

  outlined destroy of PerspectiveCameraComponent?((v0 + 11), &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall CaptureModeBoxModel.enable()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for OS_dispatch_queue();
  *v6 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
  v7 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    if (one-time initialization token for logger == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, logger);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_23B824000, v9, v10, "Enabling capture box UI...", v11, 2u);
    MEMORY[0x23EEB0B70](v11, -1, -1);
  }

  if (*(v1 + 16))
  {
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_23B824000, v12, v13, "CaptureModeBoxModel::enable() called when the box wasn't disabled... ignoring.", v14, 2u);
      MEMORY[0x23EEB0B70](v14, -1, -1);
    }
  }

  else
  {
    CaptureModeBoxModel.subscribeToUpdateEvents()();
    v15 = *(v1 + 16);
    *(v1 + 16) = 1;
    CaptureModeBoxModel.performStateTransition(from:to:)(v15, 1u);
  }
}

Swift::Void __swiftcall CaptureModeBoxModel.disable()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for OS_dispatch_queue();
  *v6 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
  v7 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    if (one-time initialization token for logger == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, logger);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_23B824000, v9, v10, "Disabling capture box UI...", v11, 2u);
    MEMORY[0x23EEB0B70](v11, -1, -1);
  }

  CaptureModeBoxModel.unsubscribeFromUpdateEvents()();
  v12 = *(v1 + 16);
  *(v1 + 16) = 0;
  CaptureModeBoxModel.performStateTransition(from:to:)(v12, 0);
}

uint64_t CaptureModeBoxModel.FactoredScaleEntity.__deallocating_deinit()
{
  v0 = *(Entity.deinit() + direct field offset for CaptureModeBoxModel.FactoredScaleEntity.animatableScaleEntity);

  return swift_deallocClassInstance();
}

uint64_t CaptureModeBoxModel.SquishAnimation.init(targetTransform:translationEntity:scaleEntity:duration:)(uint64_t a1, uint64_t a2, __n128 a3, __n128 a4, __n128 a5)
{
  v6 = v5;
  v54 = a4;
  v55 = a5;
  v56 = a3;
  v9 = type metadata accessor for AnimationTimingFunction();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v57 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v58 = a1;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  v61[0] = a2;
  v13 = type metadata accessor for Entity();
  _s10RealityKit6EntityCACSQAAWlTm_1(&lazy protocol witness table cache variable for type Entity and conformance Entity, MEMORY[0x277CDB1C8]);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    __break(1u);
  }

  else
  {
    *&v52 = v10;
    *(v5 + 32) = a1;
    *(v5 + 40) = a2;
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of CaptureModeBoxModel.SquishAnimation.init(targetTransform:translationEntity:scaleEntity:duration:));
    v50 = v14;

    static simd_quatf.identity.getter();
    v16 = v54;
    v15 = v55;
    *(v5 + 48) = v50;
    *(v5 + 64) = v16;
    *(v5 + 80) = v15;
    HasTransform.orientation.getter();
    v55 = v17;
    HasTransform.position.getter();
    v54 = v18;
    static simd_quatf.identity.getter();
    v19 = v55;
    *(v5 + 96) = v56;
    *(v5 + 112) = v19;
    *(v5 + 128) = v54;
    if (one-time initialization token for logger == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v56.n128_u64[0] = a2;
  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, logger);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  v23 = os_log_type_enabled(v21, v22);
  v53 = a1;
  v51 = v13;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v55.n128_u64[0] = v9;
    v25 = v24;
    v26 = swift_slowAlloc();
    v61[0] = v26;
    *v25 = 136446210;
    v27 = *(v5 + 64);
    v28 = *(v5 + 80);
    v58 = *(v5 + 48);
    v59 = v27;
    v60 = v28;
    v29 = String.init<A>(describing:)();
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, v61);

    *(v25 + 4) = v31;
    _os_log_impl(&dword_23B824000, v21, v22, "Squish translationTarget: %{public}s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v26);
    MEMORY[0x23EEB0B70](v26, -1, -1);
    v9 = v55.n128_u64[0];
    MEMORY[0x23EEB0B70](v25, -1, -1);
  }

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v61[0] = v35;
    *v34 = 136446210;
    v36 = *(v6 + 112);
    v37 = *(v6 + 128);
    v58 = *(v6 + 96);
    v59 = v36;
    v60 = v37;
    v38 = String.init<A>(describing:)();
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, v61);

    *(v34 + 4) = v40;
    _os_log_impl(&dword_23B824000, v32, v33, "Squish scaleTarget: %{public}s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v35);
    MEMORY[0x23EEB0B70](v35, -1, -1);
    MEMORY[0x23EEB0B70](v34, -1, -1);
  }

  v41 = *(v6 + 48);
  v54 = *(v6 + 64);
  v55 = v41;
  v50 = *(v6 + 80);
  v42 = v57;
  static AnimationTimingFunction.easeOut.getter();
  v43 = HasTransform.move(to:relativeTo:duration:timingFunction:)();
  v44 = *(v52 + 8);
  v44(v42, v9);
  v45 = *(v6 + 16);
  *(v6 + 16) = v43;

  v46 = *(v6 + 96);
  v54 = *(v6 + 112);
  v55 = v46;
  v52 = *(v6 + 128);
  HasHierarchy.parent.getter();
  static AnimationTimingFunction.easeOut.getter();
  v47 = HasTransform.move(to:relativeTo:duration:timingFunction:)();

  v44(v42, v9);
  v48 = *(v6 + 24);
  *(v6 + 24) = v47;

  return v6;
}

uint64_t CaptureModeBoxModel.SquishAnimation.stop()()
{
  if (*(v0 + 16))
  {

    dispatch thunk of AnimationPlaybackController.stop()();
  }

  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);

    dispatch thunk of AnimationPlaybackController.stop()();
  }

  v2 = *(v0 + 16);
  *(v0 + 16) = 0;

  v3 = *(v0 + 24);
  *(v0 + 24) = 0;
}

uint64_t CaptureModeBoxModel.SquishAnimation.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return swift_deallocClassInstance();
}

void CaptureModeBoxModel.startBoxFade(direction:duration:)(char a1, double a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = (&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for OS_dispatch_queue();
  *v10 = static OS_dispatch_queue.main.getter();
  (*(v7 + 104))(v10, *MEMORY[0x277D85200], v6);
  v11 = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v10, v6);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (*(v3 + 24))
  {
    if (one-time initialization token for logger == -1)
    {
LABEL_4:
      v12 = type metadata accessor for Logger();
      __swift_project_value_buffer(v12, logger);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_23B824000, v13, v14, "startBoxFade called when already fading.  Ignoring new call...", v15, 2u);
        MEMORY[0x23EEB0B70](v15, -1, -1);
      }

      return;
    }

LABEL_18:
    swift_once();
    goto LABEL_4;
  }

  type metadata accessor for RampAnimation();
  v16 = swift_allocObject();
  v17 = a1 & 1;
  *(v16 + 64) = 0xFFF0000000000000;
  *(v16 + 24) = a1 & 1;
  *(v16 + 16) = a2;
  v18 = 1.0;
  if ((a1 & 1) == 0)
  {
    v18 = 0.0;
  }

  *(v16 + 32) = 0;
  *(v16 + 40) = 0;
  *(v16 + 72) = v18;
  v19 = *(v3 + 128);
  *(v16 + 48) = v19;
  *(v16 + 56) = v19 + a2;
  *(v3 + 24) = v16;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, logger);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_23B824000, v21, v22, "Starting the box fade animation...", v23, 2u);
    MEMORY[0x23EEB0B70](v23, -1, -1);
  }

  if (v17)
  {
    v24 = 1.0;
  }

  else
  {
    v24 = 0.0;
  }

  CaptureModeBoxModel.setFade(fade:)(v24);
}

void CaptureModeBoxModel.performStateTransition(from:to:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v64 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for DispatchQoS();
  v63 = *(v65 - 8);
  v10 = *(v63 + 64);
  MEMORY[0x28223BE20](v65);
  v62 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (&v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for OS_dispatch_queue();
  *v16 = static OS_dispatch_queue.main.getter();
  (*(v13 + 104))(v16, *MEMORY[0x277D85200], v12);
  v17 = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v16, v12);
  if ((v17 & 1) == 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (a1 == a2)
  {
    if (one-time initialization token for logger == -1)
    {
LABEL_4:
      v18 = type metadata accessor for Logger();
      __swift_project_value_buffer(v18, logger);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        aBlock[0] = v22;
        *v21 = 136446466;
        v66 = a1;
        v23 = String.init<A>(describing:)();
        v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, aBlock);

        *(v21 + 4) = v25;
        *(v21 + 12) = 2082;
        v66 = a1;
        v26 = String.init<A>(describing:)();
        v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, aBlock);

        *(v21 + 14) = v28;
        _os_log_impl(&dword_23B824000, v19, v20, "fromState == toState so punting transition! from=%{public}s toState=%{public}s", v21, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23EEB0B70](v22, -1, -1);
        MEMORY[0x23EEB0B70](v21, -1, -1);
      }

      return;
    }

LABEL_26:
    swift_once();
    goto LABEL_4;
  }

  v61 = v7;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  v30 = __swift_project_value_buffer(v29, logger);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.info.getter();
  v33 = os_log_type_enabled(v31, v32);
  v60 = v6;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v59 = v30;
    v35 = v34;
    v36 = swift_slowAlloc();
    aBlock[0] = v36;
    *v35 = 136446466;
    v66 = a1;
    v37 = String.init<A>(describing:)();
    v39 = v3;
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, aBlock);

    *(v35 + 4) = v40;
    *(v35 + 12) = 2082;
    v66 = a2;
    v41 = String.init<A>(describing:)();
    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, aBlock);

    *(v35 + 14) = v43;
    v3 = v39;
    _os_log_impl(&dword_23B824000, v31, v32, "Switching states:  from=%{public}s toState=%{public}s", v35, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEB0B70](v36, -1, -1);
    MEMORY[0x23EEB0B70](v35, -1, -1);
  }

  v44 = v61;
  if (a2 > 1u)
  {
    if (a2 != 2)
    {
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&dword_23B824000, v45, v46, "Entering squished state and requesting disable...", v47, 2u);
        MEMORY[0x23EEB0B70](v47, -1, -1);
      }

      v48 = static OS_dispatch_queue.main.getter();
      v49 = swift_allocObject();
      swift_weakInit();
      aBlock[4] = partial apply for closure #1 in CaptureModeBoxModel.performStateTransition(from:to:);
      aBlock[5] = v49;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_4;
      v50 = _Block_copy(aBlock);

      v51 = v62;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = MEMORY[0x277D84F90];
      _s10RealityKit6EntityCACSQAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      v52 = v64;
      v53 = v60;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x23EEAF960](0, v51, v52, v50);
      _Block_release(v50);

      (*(v44 + 8))(v52, v53);
      (*(v63 + 8))(v51, v65);
    }
  }

  else if (a2)
  {
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_23B824000, v54, v55, "Attaching boxRootEntity...", v56, 2u);
      MEMORY[0x23EEB0B70](v56, -1, -1);
    }

    v57 = *(v3 + 64);
    swift_weakAssign();
    if (swift_weakLoadStrong())
    {
      v58 = *(v3 + 48);
      swift_unownedRetainStrong();

      DataModel.addToScene(entity:)();
    }
  }

  else
  {
    if (swift_weakLoadStrong())
    {
      type metadata accessor for CaptureModeBoxModel.FactoredScaleEntity();
      HasHierarchy.removeFromParent(preservingWorldTransform:)(0);
    }

    swift_weakAssign();
    CaptureModeBoxModel.clearAnimations()();
  }

  CaptureModeBoxModel.updateCurrentEntityTransform()();
}

uint64_t closure #1 in CaptureModeBoxModel.performStateTransition(from:to:)()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, logger);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_23B824000, v1, v2, "Automatically calling disable since box is squished with nothing left to do...", v3, 2u);
    MEMORY[0x23EEB0B70](v3, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    CaptureModeBoxModel.disable()();
  }

  return result;
}

uint64_t CaptureModeBoxModel.updateCurrentEntityTransform()()
{
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  if (*(v0 + 208))
  {
    return result;
  }

  v2 = *(v0 + 16);
  if (v2 == 2)
  {
    return result;
  }

  if (v2 == 3)
  {
    specialized static BoundingBoxHelpers.getSquishedBoxBottomTransform(boxWorld:)();
    v20 = v12;
    v22 = v11;
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    v13 = result;
    specialized simd_float4x4.init(translation:rotation:scale:)(v20, v22);
    Transform.init(matrix:)();
    v21 = v15;
    v23 = v14;
    v16 = &outlined read-only object #0 of CaptureModeBoxModel.updateCurrentEntityTransform();
    goto LABEL_10;
  }

  v10 = *(v0 + 200);
  v9 = *(v0 + 192);
  v8 = *(v0 + 184);
  v7 = *(v0 + 176);
  v6 = *(v0 + 168);
  v5 = *(v0 + 160);
  v4 = *(v0 + 152);
  v3 = *(v0 + 144);
  if (*(v0 + 32))
  {
    __break(1u);
    return result;
  }

  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    Transform.init(matrix:)();
    v21 = v18;
    v23 = v17;
    v16 = &outlined read-only object #1 of CaptureModeBoxModel.updateCurrentEntityTransform();
LABEL_10:
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(v16);
    static simd_quatf.identity.getter();
    specialized simd_float4x4.init(translation:rotation:scale:)(v21, v23);
    type metadata accessor for Entity();
    HasTransform.setTransformMatrix(_:relativeTo:)();
    v19 = *(v13 + direct field offset for CaptureModeBoxModel.FactoredScaleEntity.animatableScaleEntity);
    HasTransform.setScale(_:relativeTo:)();
  }

  return result;
}

void CaptureModeBoxModel.executeSquish(duration:)(double a1)
{
  v2 = v1;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, logger);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_23B824000, v5, v6, "Execute squish called...", v7, 2u);
    MEMORY[0x23EEB0B70](v7, -1, -1);
  }

  if (*(v2 + 16) == 1)
  {
    *(v2 + 16) = 2;
    CaptureModeBoxModel.performStateTransition(from:to:)(1u, 2u);
    if (*(v2 + 208))
    {
      oslog = Logger.logObject.getter();
      v8 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(oslog, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_23B824000, oslog, v8, "executeSquish() has nil box to start from!  Ignoring...", v9, 2u);
        MEMORY[0x23EEB0B70](v9, -1, -1);
      }
    }

    else
    {
      v10 = *(v2 + 144);
      v11 = *(v2 + 152);
      v12 = *(v2 + 160);
      v13 = *(v2 + 168);
      v14 = *(v2 + 176);
      v15 = *(v2 + 184);
      v16 = *(v2 + 192);
      v17 = *(v2 + 200);
      Transform.init(matrix:)();
      v40 = v19;
      v41 = v18;
      *osloga = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_23B91A6D0;
      *(inited + 32) = v41;
      *(inited + 36) = 981668463;
      *(inited + 40) = DWORD2(v41);
      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(inited);
      v44 = v22;
      swift_setDeallocating();
      specialized static BoundingBoxHelpers.getSquishedBoxBottomTransform(boxWorld:)();
      v43 = v23;
      v24 = swift_initStackObject();
      *(v24 + 16) = xmmword_23B91A6D0;
      *(v24 + 32) = __PAIR64__(v43, v40);
      *(v24 + 40) = DWORD2(v40);
      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(v24);
      v42 = v25;
      swift_setDeallocating();
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v47 = v29;
        *v28 = 136446466;
        v30 = String.init<A>(describing:)();
        v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v47);

        *(v28 + 4) = v32;
        *(v28 + 12) = 2082;
        v33 = String.init<A>(describing:)();
        v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v47);

        *(v28 + 14) = v35;
        _os_log_impl(&dword_23B824000, v26, v27, "Starting box squish anim from: %{public}s to %{public}s", v28, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23EEB0B70](v29, -1, -1);
        MEMORY[0x23EEB0B70](v28, -1, -1);
      }

      v36 = *(v2 + 64);
      v37 = *(v36 + direct field offset for CaptureModeBoxModel.FactoredScaleEntity.animatableScaleEntity);
      type metadata accessor for CaptureModeBoxModel.SquishAnimation();
      swift_allocObject();

      v38 = CaptureModeBoxModel.SquishAnimation.init(targetTransform:translationEntity:scaleEntity:duration:)(v36, v37, v44, *osloga, v42);
      v39 = *(v2 + 32);
      *(v2 + 32) = v38;

      CaptureModeBoxModel.startBoxFade(direction:duration:)(1, a1);
    }
  }

  else
  {
    __break(1u);
  }
}

void CaptureModeBoxModel.clearAnimations()()
{
  if (*(v0 + 32))
  {
    v1 = v0;
    v2 = one-time initialization token for logger;

    if (v2 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, logger);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_23B824000, v4, v5, "Stopping a running box squish animation.", v6, 2u);
      MEMORY[0x23EEB0B70](v6, -1, -1);
    }

    CaptureModeBoxModel.SquishAnimation.stop()();

    v7 = *(v1 + 32);
    *(v1 + 32) = 0;
  }
}

uint64_t CaptureModeBoxModel.loadModelsAsync()()
{
  type metadata accessor for Entity();
  if (one-time initialization token for bundle != -1)
  {
    swift_once();
  }

  v0 = static BoundingBoxHelpers.bundle;
  MEMORY[0x23EEAD3D0](0x676E69646E756F42, 0xEF65627543786F42, static BoundingBoxHelpers.bundle);
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA11ModelEntityCGMd, &_s10RealityKit11LoadRequestCyAA11ModelEntityCGMR);
  lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type LoadRequest<ModelEntity> and conformance LoadRequest<A>, &_s10RealityKit11LoadRequestCyAA11ModelEntityCGMd, &_s10RealityKit11LoadRequestCyAA11ModelEntityCGMR);
  Publisher.sink(receiveCompletion:receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  MEMORY[0x23EEAD3D0](0xD000000000000010, 0x800000023B926890, v0);
  swift_allocObject();
  swift_weakInit();
  Publisher.sink(receiveCompletion:receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

void closure #2 in CaptureModeBoxModel.loadModelsAsync()(uint64_t *a1)
{
  v1 = *a1;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23B824000, v3, v4, "... done loading wire frame box.", v5, 2u);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    type metadata accessor for ModelEntity();
    v8 = HasModel.model.modify();
    v10 = v9;
    v11 = type metadata accessor for ModelComponent();
    if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit8Material_pGMd, &_ss23_ContiguousArrayStorageCy10RealityKit8Material_pGMR);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_23B91A6F0;
      type metadata accessor for BoundingBoxHelpers();
      static BoundingBoxHelpers.makeBoxMaterial()((v12 + 32));
      ModelComponent.materials.setter();
    }

    v8(v20, 0);
    v13 = type metadata accessor for Entity();
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    Entity.init()();
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of closure #2 in CaptureModeBoxModel.loadModelsAsync());
    HasTransform.setScale(_:relativeTo:)();
    HasHierarchy.addChild(_:preservingWorldTransform:)();
    v16 = *(*(v7 + 64) + direct field offset for CaptureModeBoxModel.FactoredScaleEntity.animatableScaleEntity);

    HasHierarchy.addChild(_:preservingWorldTransform:)();
  }

  else
  {
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_23B824000, v17, v18, "loadModelsAsync failed to bind self!", v19, 2u);
      MEMORY[0x23EEB0B70](v19, -1, -1);
    }
  }
}

uint64_t closure #4 in CaptureModeBoxModel.loadModelsAsync()(uint64_t *a1)
{
  v1 = *a1;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23B824000, v3, v4, "... done loading wire frame plane.", v5, 2u);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  type metadata accessor for ModelEntity();
  v6 = HasModel.model.modify();
  v8 = v7;
  v9 = type metadata accessor for ModelComponent();
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit8Material_pGMd, &_ss23_ContiguousArrayStorageCy10RealityKit8Material_pGMR);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_23B91A6F0;
    type metadata accessor for BoundingBoxHelpers();
    static BoundingBoxHelpers.makeBoxMaterial()((v10 + 32));
    ModelComponent.materials.setter();
  }

  v6(&v17, 0);
  v11 = type metadata accessor for Entity();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  Entity.init()();
  HasHierarchy.addChild(_:preservingWorldTransform:)();
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of closure #4 in CaptureModeBoxModel.loadModelsAsync());
  HasTransform.setScale(_:relativeTo:)();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = *(Strong + 72);

    HasHierarchy.addChild(_:preservingWorldTransform:)();
  }
}

uint64_t CaptureModeBoxModel.setFade(fade:)(float a1)
{
  v2 = type metadata accessor for __EntityRef();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_weakLoadStrong();
  if (result)
  {

    dispatch thunk of Entity.__coreEntity.getter();

    MEMORY[0x23EEAC640](&v11, MEMORY[0x277D841D8], MEMORY[0x277D841D8]);
    (*(v3 + 8))(v6, v2);
    REHierarchicalFadeComponentGetComponentType();
    v8 = REEntityGetOrAddComponentByClass();
    if (a1 >= 0.0 && a1 <= 1.0)
    {
      v9 = v8;
      REHierarchicalFadeComponentSetOpacity();
      MEMORY[0x23EEB00C0](v9);
    }
  }

  return result;
}

void CaptureModeBoxModel.update(deltaTime:)(double a1)
{
  v2 = v1;
  if (swift_weakLoadStrong())
  {

    v4 = *(v1 + 128) + a1;
    *(v1 + 128) = v4;
    if (*(v1 + 24))
    {
      v5 = *(v1 + 24);

      v6 = RampAnimation.update(time:)(v4);
      if (v6 <= 1.0)
      {
        v7 = v6;
      }

      else
      {
        v7 = 1.0;
      }

      if (v6 <= 0.0)
      {
        v7 = 0.0;
      }

      CaptureModeBoxModel.setFade(fade:)((v7 * v7) / ((((v7 * v7) - v6) + ((v7 * v7) - v6)) + 1.0));
    }

    v8 = *(v1 + 32);
    if (v8)
    {
      if (!*(v8 + 16) || !*(v8 + 24))
      {
LABEL_14:
        v11 = *(v2 + 24);
        if (!v11 || *(v11 + 56) < *(v11 + 64))
        {
          if (one-time initialization token for logger != -1)
          {
            swift_once();
          }

          v12 = type metadata accessor for Logger();
          __swift_project_value_buffer(v12, logger);
          v13 = Logger.logObject.getter();
          v14 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v13, v14))
          {
            v15 = swift_slowAlloc();
            *v15 = 0;
            _os_log_impl(&dword_23B824000, v13, v14, "Removing completed fade and squish anims and moving to .squished state.", v15, 2u);
            MEMORY[0x23EEB0B70](v15, -1, -1);
          }

          v16 = *(v2 + 24);
          *(v2 + 24) = 0;

          v17 = *(v2 + 32);
          *(v2 + 32) = 0;

          v18 = *(v2 + 16);
          *(v2 + 16) = 3;

          CaptureModeBoxModel.performStateTransition(from:to:)(v18, 3u);
        }

        return;
      }

      v9 = *(v1 + 32);

      if (dispatch thunk of AnimationPlaybackController.isComplete.getter())
      {
        v10 = dispatch thunk of AnimationPlaybackController.isComplete.getter();

        if ((v10 & 1) == 0)
        {
          return;
        }

        goto LABEL_14;
      }
    }
  }
}

uint64_t CaptureModeBoxModel.subscribeToUpdateEvents()()
{
  v1 = v0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23B824000, v3, v4, "Subscribing to update events...", v5, 2u);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  v6 = *(v1 + 48);
  swift_unownedRetainStrong();
  v7 = *(v6 + 16);
  v8 = v7;

  if (v7)
  {
    dispatch thunk of ARView.scene.getter();

    type metadata accessor for SceneEvents.Update();
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    swift_allocObject();
    swift_weakInit();
    Scene.subscribe<A>(to:on:_:)();

    outlined destroy of PerspectiveCameraComponent?(v10, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
    swift_beginAccess();
    outlined assign with take of Cancellable?(v12, v1 + 88);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in CaptureModeBoxModel.subscribeToUpdateEvents()()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    SceneEvents.Update.deltaTime.getter();
    CaptureModeBoxModel.update(deltaTime:)(v1);
  }

  return result;
}

uint64_t CaptureModeBoxModel.unsubscribeFromUpdateEvents()()
{
  v1 = v0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23B824000, v3, v4, "Unsubscribing from update events...", v5, 2u);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  swift_beginAccess();
  outlined init with copy of Cancellable?(v1 + 88, &v8);
  if (*(&v9 + 1))
  {
    outlined init with copy of Cancellable(&v8, v7);
    outlined destroy of PerspectiveCameraComponent?(&v8, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    dispatch thunk of Cancellable.cancel()();
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
  }

  else
  {
    outlined destroy of PerspectiveCameraComponent?(&v8, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  }

  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  swift_beginAccess();
  outlined assign with take of Cancellable?(&v8, v1 + 88);
  return swift_endAccess();
}

uint64_t type metadata accessor for CaptureModeBoxModel.FactoredScaleEntity()
{
  result = type metadata singleton initialization cache for CaptureModeBoxModel.FactoredScaleEntity;
  if (!type metadata singleton initialization cache for CaptureModeBoxModel.FactoredScaleEntity)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CaptureModeBoxModel.State and conformance CaptureModeBoxModel.State()
{
  result = lazy protocol witness table cache variable for type CaptureModeBoxModel.State and conformance CaptureModeBoxModel.State;
  if (!lazy protocol witness table cache variable for type CaptureModeBoxModel.State and conformance CaptureModeBoxModel.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CaptureModeBoxModel.State and conformance CaptureModeBoxModel.State);
  }

  return result;
}

uint64_t outlined init with copy of Cancellable?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of Cancellable?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t specialized CaptureModeBoxModel.init(model:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xFFF0000000000000;
  swift_weakInit();
  v9 = type metadata accessor for CaptureModeBoxModel.FactoredScaleEntity();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  v13 = direct field offset for CaptureModeBoxModel.FactoredScaleEntity.animatableScaleEntity;
  v14 = type metadata accessor for Entity();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  *(v12 + v13) = Entity.init()();
  v17 = Entity.init()();
  v18 = direct field offset for CaptureModeBoxModel.FactoredScaleEntity.animatableScaleEntity;
  v19 = *(v17 + direct field offset for CaptureModeBoxModel.FactoredScaleEntity.animatableScaleEntity);

  dispatch thunk of Entity.name.setter();

  v20 = *(v17 + v18);

  HasHierarchy.addChild(_:preservingWorldTransform:)();

  *(v2 + 64) = v17;
  v21 = *(v14 + 48);
  v22 = *(v14 + 52);
  swift_allocObject();
  v23 = Entity.init()();
  v24 = MEMORY[0x277D84FA0];
  *(v2 + 72) = v23;
  *(v2 + 80) = v24;
  *(v2 + 88) = 0u;
  *(v2 + 104) = 0u;
  *(v2 + 120) = 0u;
  v26[0] = 1;
  *(v2 + 144) = 0u;
  *(v2 + 160) = 0u;
  *(v2 + 176) = 0u;
  *(v2 + 192) = 0u;
  *(v2 + 208) = 1;
  type metadata accessor for OS_dispatch_queue();
  *v8 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v8, v4);
  if (v19)
  {
    *(v2 + 48) = a1;
    swift_unownedRetain();
    CaptureModeBoxModel.loadModelsAsync()();
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t _s10RealityKit6EntityCACSQAAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id closure #1 in variable initialization expression of static AttributedString.convertBlock(uint64_t a1)
{
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSny10Foundation16AttributedStringV5IndexVGMd, &_sSny10Foundation16AttributedStringV5IndexVGMR);
  v2 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61);
  v64 = &v48 - v3;
  v4 = type metadata accessor for AttributedString.Runs.Index();
  v67 = *(v4 - 8);
  v68 = v4;
  v5 = *(v67 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for AttributedString.Runs.Run();
  v55 = *(v70 - 8);
  v8 = *(v55 + 64);
  v9 = MEMORY[0x28223BE20](v70);
  v50 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v66 = &v48 - v11;
  v12 = type metadata accessor for AttributedString.Runs();
  v57 = *(v12 - 8);
  v13 = *(v57 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMR);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v48 - v19;
  v21 = type metadata accessor for AttributedString();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSMutableAttributedString();
  v26 = *(v22 + 16);
  v62 = v22 + 16;
  v63 = v21;
  v59 = v26;
  v26(v25, a1, v21);
  v60 = v25;
  v69 = NSAttributedString.init(_:)();
  v65 = a1;
  AttributedString.runs.getter();
  v27 = v57;
  (*(v57 + 16))(v20, v15, v12);
  v28 = *(v17 + 44);
  v29 = lazy protocol witness table accessor for type AttributedString.Runs and conformance AttributedString.Runs(&lazy protocol witness table cache variable for type AttributedString.Runs and conformance AttributedString.Runs, MEMORY[0x277CC8C08]);
  dispatch thunk of Collection.startIndex.getter();
  (*(v27 + 8))(v15, v12);
  v67 += 8;
  v56 = (v55 + 32);
  v57 = v55 + 16;
  v49 = *MEMORY[0x277CC49C0];
  v53 = *MEMORY[0x277D74078];
  v52 = *MEMORY[0x277D740D0];
  v51 = *MEMORY[0x277D741E0];
  v55 += 8;
  v30 = v50;
  v58 = v28;
  v54 = v29;
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter();
    lazy protocol witness table accessor for type AttributedString.Runs and conformance AttributedString.Runs(&lazy protocol witness table cache variable for type AttributedString.Runs.Index and conformance AttributedString.Runs.Index, MEMORY[0x277CC8BF8]);
    v31 = v68;
    v32 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*v67)(v7, v31);
    if (v32)
    {
      break;
    }

    v33 = dispatch thunk of Collection.subscript.read();
    v34 = v66;
    v35 = v70;
    (*v57)(v66);
    v33(&v71, 0);
    dispatch thunk of Collection.formIndex(after:)();
    (*v56)(v30, v34, v35);
    AttributedString.Runs.Run.range.getter();
    v59(v60, v65, v63);
    lazy protocol witness table accessor for type Range<AttributedString.Index> and conformance Range<A>();
    lazy protocol witness table accessor for type AttributedString.Runs and conformance AttributedString.Runs(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x277CC8C40]);
    v36 = _NSRange.init<A, B>(_:in:)();
    v38 = v37;
    lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute();
    AttributedString.Runs.Run.subscript.getter();
    if (v71)
    {
      v39 = Color.cgColor.getter();
      if (v39)
      {
        v40 = v39;
        countAndFlagsBits = String.init(_:)(v49)._countAndFlagsBits;
        v42 = v7;
        v43 = MEMORY[0x23EEAF480](countAndFlagsBits);

        [v69 addAttribute:v43 value:v40 range:{v36, v38}];

        v7 = v42;
        v30 = v50;
      }

      else
      {
      }
    }

    lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute and conformance AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute();
    AttributedString.Runs.Run.subscript.getter();
    if ((v72 & 1) == 0)
    {
      isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
      [v69 addAttribute:v53 value:isa range:{v36, v38}];
    }

    lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.KerningAttribute and conformance AttributeScopes.SwiftUIAttributes.KerningAttribute();
    AttributedString.Runs.Run.subscript.getter();
    if ((v72 & 1) == 0)
    {
      v45 = CGFloat._bridgeToObjectiveC()().super.super.isa;
      [v69 addAttribute:v52 value:v45 range:{v36, v38}];
    }

    lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.TrackingAttribute and conformance AttributeScopes.SwiftUIAttributes.TrackingAttribute();
    AttributedString.Runs.Run.subscript.getter();
    if ((v72 & 1) == 0)
    {
      v46 = CGFloat._bridgeToObjectiveC()().super.super.isa;
      [v69 addAttribute:v51 value:v46 range:{v36, v38}];
    }

    (*v55)(v30, v70);
  }

  outlined destroy of IndexingIterator<AttributedString.Runs>(v20);
  return v69;
}

uint64_t (*static AttributedString.convertBlock.getter())()
{
  swift_beginAccess();
  v0 = static AttributedString.convertBlock;

  return v0;
}

uint64_t static AttributedString.convertBlock.setter(uint64_t (*a1)(), uint64_t a2)
{
  swift_beginAccess();
  static AttributedString.convertBlock = a1;
  qword_2819E4090 = a2;
}

uint64_t (*protocol witness for static AttributedStringConverter.convertBlock.getter in conformance AttributedString())()
{
  swift_beginAccess();
  v0 = static AttributedString.convertBlock;

  return v0;
}

unint64_t type metadata accessor for NSMutableAttributedString()
{
  result = lazy cache variable for type metadata for NSMutableAttributedString;
  if (!lazy cache variable for type metadata for NSMutableAttributedString)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSMutableAttributedString);
  }

  return result;
}

uint64_t type metadata completion function for CircularBuffer(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t CircularBuffer.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  v1 = *(v0 + *(*v0 + 120));

  return v0;
}

uint64_t CircularBuffer.__deallocating_deinit()
{
  CircularBuffer.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata completion function for Clamped(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = type metadata accessor for ClosedRange();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Clamped(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v6 = *(*(*(a3 + 16) - 8) + 64);
  v8 = v6 + 2 * ((v6 + *(v4 + 80)) & ~*(v4 + 80));
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

char *storeEnumTagSinglePayload for Clamped(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64) + 2 * ((*(v5 + 64) + *(v5 + 80)) & ~*(v5 + 80));
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t Model3DAsset.location.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  lazy protocol witness table accessor for type Entity and conformance Entity(&lazy protocol witness table cache variable for type Model3DAsset and conformance Model3DAsset, type metadata accessor for Model3DAsset);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset__location;
  swift_beginAccess();
  return outlined init with copy of Model3DLocation(v5 + v3, a1);
}

uint64_t Model3DAsset.location.setter(uint64_t a1)
{
  v3 = type metadata accessor for Model3DLocation();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset__location;
  swift_beginAccess();
  outlined init with copy of Model3DLocation(v1 + v7, v6);
  v8 = specialized static Model3DLocation.== infix(_:_:)(v6, a1);
  outlined destroy of Model3DLocation(v6);
  if (v8)
  {
    outlined init with copy of Model3DLocation(a1, v6);
    swift_beginAccess();
    outlined assign with take of Model3DLocation(v6, v1 + v7);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v11[-2] = v1;
    v11[-1] = a1;
    v11[1] = v1;
    lazy protocol witness table accessor for type Entity and conformance Entity(&lazy protocol witness table cache variable for type Model3DAsset and conformance Model3DAsset, type metadata accessor for Model3DAsset);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return outlined destroy of Model3DLocation(a1);
}

uint64_t closure #1 in Model3DAsset.location.setter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Model3DLocation();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Model3DLocation(a2, v7);
  v8 = OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset__location;
  swift_beginAccess();
  outlined assign with take of Model3DLocation(v7, a1 + v8);
  return swift_endAccess();
}

uint64_t Model3DAsset._availableAnimations.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type Entity and conformance Entity(&lazy protocol witness table cache variable for type Model3DAsset and conformance Model3DAsset, type metadata accessor for Model3DAsset);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset___availableAnimations);
}

uint64_t key path getter for Model3DAsset._availableAnimations : Model3DAsset@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type Entity and conformance Entity(&lazy protocol witness table cache variable for type Model3DAsset and conformance Model3DAsset, type metadata accessor for Model3DAsset);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset___availableAnimations);
}

uint64_t key path setter for Model3DAsset._availableAnimations : Model3DAsset(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  lazy protocol witness table accessor for type Entity and conformance Entity(&lazy protocol witness table cache variable for type Model3DAsset and conformance Model3DAsset, type metadata accessor for Model3DAsset);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t Model3DAsset._selectedAnimation.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset___selectedAnimation;
  swift_beginAccess();
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v1 + v3, v7, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMd, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMR);
  v4 = specialized Model3DAsset.shouldNotifyObservers<A>(_:_:)(v7, a1);
  outlined destroy of PerspectiveCameraComponent?(v7, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMd, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMR);
  if (v4)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v7[0] = v1;
    lazy protocol witness table accessor for type Entity and conformance Entity(&lazy protocol witness table cache variable for type Model3DAsset and conformance Model3DAsset, type metadata accessor for Model3DAsset);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(a1, v7, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMd, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMR);
    swift_beginAccess();
    outlined assign with take of Model3DAsset.EntityAnimation?(v7, v1 + v3);
    swift_endAccess();
  }

  return outlined destroy of PerspectiveCameraComponent?(a1, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMd, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMR);
}

uint64_t closure #1 in Model3DAsset._selectedAnimation.setter(uint64_t a1, uint64_t a2)
{
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(a2, v5, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMd, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMR);
  v3 = OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset___selectedAnimation;
  swift_beginAccess();
  outlined assign with take of Model3DAsset.EntityAnimation?(v5, a1 + v3);
  return swift_endAccess();
}

uint64_t Model3DAsset.EntityAnimation.path.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

void Model3DAsset.EntityAnimation.hash(into:)()
{
  MEMORY[0x23EEAFE40](*v0);
  v1 = v0[1];
  v2 = v0[2];
  String.hash(into:)();
  if (swift_weakLoadStrong())
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for Entity();
    lazy protocol witness table accessor for type Entity and conformance Entity(&lazy protocol witness table cache variable for type Entity and conformance Entity, MEMORY[0x277CDB1C8]);
    dispatch thunk of Hashable.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int Model3DAsset.EntityAnimation.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x23EEAFE40](*v0);
  v1 = v0[1];
  v2 = v0[2];
  String.hash(into:)();
  if (swift_weakLoadStrong())
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for Entity();
    lazy protocol witness table accessor for type Entity and conformance Entity(&lazy protocol witness table cache variable for type Entity and conformance Entity, MEMORY[0x277CDB1C8]);
    dispatch thunk of Hashable.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Model3DAsset.EntityAnimation()
{
  Hasher.init(_seed:)();
  MEMORY[0x23EEAFE40](*v0);
  v1 = v0[1];
  v2 = v0[2];
  String.hash(into:)();
  if (swift_weakLoadStrong())
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for Entity();
    lazy protocol witness table accessor for type Entity and conformance Entity(&lazy protocol witness table cache variable for type Entity and conformance Entity, MEMORY[0x277CDB1C8]);
    dispatch thunk of Hashable.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t key path getter for Model3DAsset.animationPlaybackController : Model3DAsset@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type Entity and conformance Entity(&lazy protocol witness table cache variable for type Model3DAsset and conformance Model3DAsset, type metadata accessor for Model3DAsset);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset__animationPlaybackController);
}

uint64_t key path setter for Model3DAsset.animationPlaybackController : Model3DAsset(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return Model3DAsset.animationPlaybackController.setter(v4);
}

uint64_t Model3DAsset.animationPlaybackController.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type Entity and conformance Entity(&lazy protocol witness table cache variable for type Model3DAsset and conformance Model3DAsset, type metadata accessor for Model3DAsset);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset__animationPlaybackController);
}

uint64_t Model3DAsset.animationPlaybackController.setter(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset__animationPlaybackController;
  if (!*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset__animationPlaybackController))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type Entity and conformance Entity(&lazy protocol witness table cache variable for type Model3DAsset and conformance Model3DAsset, type metadata accessor for Model3DAsset);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  type metadata accessor for AnimationPlaybackController();
  lazy protocol witness table accessor for type Entity and conformance Entity(&lazy protocol witness table cache variable for type AnimationPlaybackController and conformance AnimationPlaybackController, MEMORY[0x277CDAF10]);

  v5 = dispatch thunk of static Equatable.== infix(_:_:)();

  if ((v5 & 1) == 0)
  {
    goto LABEL_6;
  }

  v6 = *(v2 + v4);
LABEL_7:
  *(v2 + v4) = a1;
}

void *Model3DAsset.availableAnimations.getter()
{
  swift_getKeyPath();
  v6 = v0;
  lazy protocol witness table accessor for type Entity and conformance Entity(&lazy protocol witness table cache variable for type Model3DAsset and conformance Model3DAsset, type metadata accessor for Model3DAsset);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset___availableAnimations);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationV_Tt1g5(*(v1 + 16), 0);
  v4 = specialized Sequence._copySequenceContents(initializing:)(&v6, (v3 + 4), v2, v1);

  outlined consume of [Model3DAsset.EntityAnimation : AnimationResource].Iterator._Variant();
  if (v4 != v2)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t key path getter for Model3DAsset._selectedAnimation : Model3DAsset@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type Entity and conformance Entity(&lazy protocol witness table cache variable for type Model3DAsset and conformance Model3DAsset, type metadata accessor for Model3DAsset);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset___selectedAnimation;
  swift_beginAccess();
  return outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v3 + v4, a2, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMd, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMR);
}

uint64_t Model3DAsset._selectedAnimation.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  lazy protocol witness table accessor for type Entity and conformance Entity(&lazy protocol witness table cache variable for type Model3DAsset and conformance Model3DAsset, type metadata accessor for Model3DAsset);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset___selectedAnimation;
  swift_beginAccess();
  return outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v5 + v3, a1, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMd, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMR);
}

uint64_t Model3DAsset.selectedAnimation.setter(uint64_t a1)
{
  v2 = v1;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(a1, v16, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMd, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMR);
  Model3DAsset._selectedAnimation.setter(v16);
  swift_getKeyPath();
  v16[0] = v1;
  lazy protocol witness table accessor for type Entity and conformance Entity(&lazy protocol witness table cache variable for type Model3DAsset and conformance Model3DAsset, type metadata accessor for Model3DAsset);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset___selectedAnimation;
  swift_beginAccess();
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v2 + v4, v15, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMd, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMR);
  if (v15[2])
  {
    outlined init with take of Model3DAsset.EntityAnimation(v15, v16);
    swift_getKeyPath();
    v15[0] = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v5 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset___availableAnimations);
    if (*(v5 + 16))
    {
      v6 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset___availableAnimations);

      v7 = specialized __RawDictionaryStorage.find<A>(_:)(v16);
      if (v8)
      {
        v9 = *(*(v5 + 56) + 8 * v7);

        if (swift_weakLoadStrong())
        {
          swift_getKeyPath();
          v15[0] = v2;
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v10 = OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset__animationPlaybackController;
          if (*(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset__animationPlaybackController))
          {
            v11 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset__animationPlaybackController);

            dispatch thunk of AnimationPlaybackController.stop()();
          }

          v12 = Entity.playAnimation(_:transitionDuration:blendLayerOffset:separateAnimatedValue:startsPaused:clock:)();
          Model3DAsset.animationPlaybackController.setter(v12);
          swift_getKeyPath();
          v15[0] = v2;
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          if (*(v2 + v10))
          {
            v13 = *(v2 + v10);

            AnimationPlaybackController.hideEntity(isHidden:)(1);
          }
        }
      }

      else
      {
      }
    }

    outlined destroy of PerspectiveCameraComponent?(a1, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMd, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMR);
    return outlined destroy of Model3DAsset.EntityAnimation(v16);
  }

  else
  {
    outlined destroy of PerspectiveCameraComponent?(a1, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMd, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMR);
    return outlined destroy of PerspectiveCameraComponent?(v15, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMd, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMR);
  }
}

void (*Model3DAsset.selectedAnimation.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x60uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 88) = v1;
  swift_getKeyPath();
  *(v5 + 32) = v1;
  lazy protocol witness table accessor for type Entity and conformance Entity(&lazy protocol witness table cache variable for type Model3DAsset and conformance Model3DAsset, type metadata accessor for Model3DAsset);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset___selectedAnimation;
  swift_beginAccess();
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v2 + v6, v5, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMd, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMR);
  return Model3DAsset.selectedAnimation.modify;
}

void Model3DAsset.selectedAnimation.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 88);
  if (a2)
  {
    outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(*a1, v2 + 32, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMd, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMR);
    Model3DAsset.selectedAnimation.setter(v2 + 32);
    outlined destroy of PerspectiveCameraComponent?(v2, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMd, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMR);
  }

  else
  {
    Model3DAsset.selectedAnimation.setter(*a1);
  }

  free(v2);
}

uint64_t Model3DAsset.__allocating_init(named:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a2;
  v4[3] = a3;
  v5 = *(v3 + 48);
  v6 = *(v3 + 52);
  v4[4] = swift_allocObject();

  return MEMORY[0x2822009F8](Model3DAsset.__allocating_init(named:in:), 0, 0);
}

uint64_t Model3DAsset.__allocating_init(named:in:)()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  *(v1 + 16) = 0;
  type metadata accessor for Model3DLocation();
  swift_storeEnumTagMultiPayload();
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset___availableAnimations) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationV_0cD00J8ResourceCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v4 = (v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset___selectedAnimation);
  *v4 = 0u;
  v4[1] = 0u;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset__animationPlaybackController) = 0;
  ObservationRegistrar.init()();

  v5 = v0[1];
  v6 = v0[4];

  return v5(v6);
}

uint64_t Model3DAsset.init(named:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a3;
  v4[4] = v3;
  v4[2] = a2;
  return MEMORY[0x2822009F8](Model3DAsset.init(named:in:), 0, 0);
}

uint64_t Model3DAsset.__allocating_init(url:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  *(v2 + 24) = swift_allocObject();

  return MEMORY[0x2822009F8](Model3DAsset.__allocating_init(url:), 0, 0);
}

uint64_t Model3DAsset.__allocating_init(url:)()
{
  v2 = v0[2];
  v1 = v0[3];
  *(v1 + 16) = 0;
  type metadata accessor for Model3DLocation();
  swift_storeEnumTagMultiPayload();
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset___availableAnimations) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationV_0cD00J8ResourceCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v3 = (v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset___selectedAnimation);
  *v3 = 0u;
  v3[1] = 0u;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset__animationPlaybackController) = 0;
  ObservationRegistrar.init()();
  v4 = type metadata accessor for URL();
  (*(*(v4 - 8) + 8))(v2, v4);
  v5 = v0[1];
  v6 = v0[3];

  return v5(v6);
}

uint64_t Model3DAsset.init(url:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](Model3DAsset.init(url:), 0, 0);
}

uint64_t Model3DAsset.deinit()
{
  v1 = *(v0 + 16);

  outlined destroy of Model3DLocation(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset__location);
  v2 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset___availableAnimations);

  outlined destroy of PerspectiveCameraComponent?(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset___selectedAnimation, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMd, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMR);
  v3 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset__animationPlaybackController);

  v4 = OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset___observationRegistrar;
  v5 = type metadata accessor for ObservationRegistrar();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t Model3DAsset.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  outlined destroy of Model3DLocation(&v0[OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset__location]);
  v2 = *&v0[OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset___availableAnimations];

  outlined destroy of PerspectiveCameraComponent?(&v0[OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset___selectedAnimation], &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMd, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMR);
  v3 = *&v0[OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset__animationPlaybackController];

  v4 = OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset___observationRegistrar;
  v5 = type metadata accessor for ObservationRegistrar();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v6);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v3 = *(v1 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  v3 = MEMORY[0x23EEAFE20](*(v1 + 40), a1);

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type Entity and conformance Entity(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v5);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t *a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  MEMORY[0x23EEAFE40](*a1);
  v4 = a1[1];
  v5 = a1[2];
  String.hash(into:)();
  if (swift_weakLoadStrong())
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for Entity();
    lazy protocol witness table accessor for type Entity and conformance Entity(&lazy protocol witness table cache variable for type Entity and conformance Entity, MEMORY[0x277CDB1C8]);
    dispatch thunk of Hashable.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v6 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v6);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 40);
  Hasher.init(_seed:)();
  type metadata accessor for Entity();
  lazy protocol witness table accessor for type Entity and conformance Entity(&lazy protocol witness table cache variable for type Entity and conformance Entity, MEMORY[0x277CDB1C8]);
  dispatch thunk of Hashable.hash(into:)();
  MEMORY[0x23EEAFE40](a2);
  v8 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, a3, v8);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
      if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

{
  v20 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      lazy protocol witness table accessor for type Entity and conformance Entity(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v8 = ~v4;
    v9 = *a1;
    while (1)
    {
      outlined init with copy of Model3DAsset.EntityAnimation(*(v6 + 48) + 32 * v5, v15);
      if (v15[0] != v9)
      {
        goto LABEL_5;
      }

      v10 = v15[1] == a1[1] && v15[2] == a1[2];
      if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_5;
      }

      Strong = swift_weakLoadStrong();
      v12 = swift_weakLoadStrong();
      if (!Strong)
      {
        break;
      }

      if (!v12)
      {
        goto LABEL_4;
      }

      type metadata accessor for Entity();
      lazy protocol witness table accessor for type Entity and conformance Entity(&lazy protocol witness table cache variable for type Entity and conformance Entity, MEMORY[0x277CDB1C8]);
      v13 = dispatch thunk of static Equatable.== infix(_:_:)();

      if (v13)
      {
LABEL_18:
        outlined destroy of Model3DAsset.EntityAnimation(v15);
        return v5;
      }

LABEL_5:
      outlined destroy of Model3DAsset.EntityAnimation(v15);
      v5 = (v5 + 1) & v8;
      if (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
      {
        return v5;
      }
    }

    if (!v12)
    {
      goto LABEL_18;
    }

LABEL_4:

    goto LABEL_5;
  }

  return v5;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = -1 << *(v4 + 32);
  result = a4 & ~v6;
  if ((*(v4 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v8 = ~v6;
    do
    {
      v9 = (*(v4 + 48) + 24 * result);
      v11 = *v9;
      v10 = v9[1];
      if (v11 == a1 && v10 == a2)
      {
        break;
      }

      result = (result + 1) & v8;
    }

    while (((*(v4 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10RealityKit6EntityC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationV_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVGMd, &_ss23_ContiguousArrayStorageCy19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCyyScMYcc_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyyScMYccGMd, &_ss23_ContiguousArrayStorageCyyyScMYccGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[0] = a4;
  v16 = a4;
  lazy protocol witness table accessor for type RealityViewEntityCollection and conformance RealityViewEntityCollection();

  dispatch thunk of Collection.startIndex.getter();

  if (!a2)
  {
    result = 0;
    v10 = v17;
    goto LABEL_13;
  }

  v14 = a3;
  if (!a3)
  {
LABEL_10:
    v10 = v17;
    result = v14;
LABEL_13:
    *a1 = v16;
    a1[1] = v10;
    return result;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = a3 - 1;
    while (1)
    {
      dispatch thunk of Collection.endIndex.getter();
      v10 = v17;
      if (v17 == v15[0])
      {
        break;
      }

      v11 = dispatch thunk of Collection.subscript.read();
      v13 = *v12;

      v11(v15, 0);
      v15[0] = v16;
      dispatch thunk of Collection.index(after:)();
      *(a2 + 8 * v8) = v13;
      if (v9 == v8)
      {
        goto LABEL_10;
      }

      if (__OFADD__(++v8, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    result = v8;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      outlined init with copy of Model3DAsset.EntityAnimation(*(a4 + 48) + ((v12 << 11) | (32 * v17)), v20);
      outlined init with take of Model3DAsset.EntityAnimation(v20, v21);
      outlined init with take of Model3DAsset.EntityAnimation(v21, v11);
      if (v14 == v10)
      {
        goto LABEL_24;
      }

      v11 += 32;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
  return result;
}

BOOL specialized static Model3DAsset.EntityAnimation.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] != a2[1] || a1[2] != a2[2])
  {
    v4 = a1[1];
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  Strong = swift_weakLoadStrong();
  v6 = swift_weakLoadStrong();
  if (!Strong)
  {
    if (!v6)
    {
      return 1;
    }

    goto LABEL_14;
  }

  if (!v6)
  {
LABEL_14:

    return 0;
  }

  type metadata accessor for Entity();
  lazy protocol witness table accessor for type Entity and conformance Entity(&lazy protocol witness table cache variable for type Entity and conformance Entity, MEMORY[0x277CDB1C8]);
  v7 = dispatch thunk of static Equatable.== infix(_:_:)();

  return (v7 & 1) != 0;
}

uint64_t type metadata accessor for Model3DAsset()
{
  result = type metadata singleton initialization cache for Model3DAsset;
  if (!type metadata singleton initialization cache for Model3DAsset)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo18CHHapticPatternKeya_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo18CHHapticPatternKeyaypGMd, &_ss18_DictionaryStorageCySo18CHHapticPatternKeyaypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v4, &v11, &_sSo18CHHapticPatternKeya_yptMd, &_sSo18CHHapticPatternKeya_yptMR);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of Any(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo18CHHapticPatternKeya_SDyADypGTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v7 = *i;
      v8 = *(i - 1);

      result = specialized __RawDictionaryStorage.find<A>(_:)(v8);
      if (v10)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v5[6] + 8 * result) = v8;
      *(v5[7] + 8 * result) = v7;
      v11 = v5[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v5[2] = v13;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_10RealityKit6EntityCTt0g5Tf4g_n(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi10RealityKit6EntityCGMd, &_ss18_DictionaryStorageCySi10RealityKit6EntityCGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_19_RealityKit_SwiftUI19FreeformMeshManagerC0J6AnchorVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_19_RealityKit_SwiftUI19FreeformMeshManagerC0H6AnchorVtMd, &_s10Foundation4UUIDV_19_RealityKit_SwiftUI19FreeformMeshManagerC0H6AnchorVtMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV19_RealityKit_SwiftUI19FreeformMeshManagerC0J6AnchorVGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV19_RealityKit_SwiftUI19FreeformMeshManagerC0J6AnchorVGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v10, v6, &_s10Foundation4UUIDV_19_RealityKit_SwiftUI19FreeformMeshManagerC0H6AnchorVtMd, &_s10Foundation4UUIDV_19_RealityKit_SwiftUI19FreeformMeshManagerC0H6AnchorVtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for UUID();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for FreeformMeshManager.MeshAnchor();
      result = outlined init with take of FreeformMeshManager.MeshAnchor(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationV_0cD00J8ResourceCTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationV0cD00J8ResourceCGMd, &_ss18_DictionaryStorageCy19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationV0cD00J8ResourceCGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v4, v11, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationV_0aB00H8ResourceCtMd, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationV_0aB00H8ResourceCtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v6)
      {
        break;
      }

      v7 = result;
      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      result = outlined init with take of Model3DAsset.EntityAnimation(v11, v3[6] + 32 * result);
      *(v3[7] + 8 * v7) = v11[4];
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Model3DAsset.EntityAnimation and conformance Model3DAsset.EntityAnimation()
{
  result = lazy protocol witness table cache variable for type Model3DAsset.EntityAnimation and conformance Model3DAsset.EntityAnimation;
  if (!lazy protocol witness table cache variable for type Model3DAsset.EntityAnimation and conformance Model3DAsset.EntityAnimation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Model3DAsset.EntityAnimation and conformance Model3DAsset.EntityAnimation);
  }

  return result;
}

uint64_t keypath_set_7Tm(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(_BYTE *))
{
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(a1, v9, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMd, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMR);
  v7 = *a2;
  return a5(v9);
}

uint64_t type metadata completion function for Model3DAsset()
{
  result = type metadata accessor for Model3DLocation();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for ObservationRegistrar();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t dispatch thunk of Model3DAsset.__allocating_init(named:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = (*(v3 + 408) + **(v3 + 408));
  v8 = *(*(v3 + 408) + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = dispatch thunk of Model3DAsset.__allocating_init(named:in:);

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of Model3DAsset.__allocating_init(url:)(uint64_t a1)
{
  v7 = (*(v1 + 416) + **(v1 + 416));
  v4 = *(*(v1 + 416) + 4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of Model3DAsset.__allocating_init(url:);

  return v7(a1);
}

{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t getEnumTagSinglePayload for Model3DAsset.EntityAnimation(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Model3DAsset.EntityAnimation(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined assign with take of Model3DLocation(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Model3DLocation();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in Model3DAsset.animationPlaybackController.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset__animationPlaybackController);
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset__animationPlaybackController) = *(v0 + 24);
}

uint64_t specialized Model3DAsset.shouldNotifyObservers<A>(_:_:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(a1, v8, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMd, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMR);
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(a2, v10, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMd, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMR);
  if (!v9)
  {
    if (!v11)
    {
      outlined destroy of PerspectiveCameraComponent?(v8, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMd, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMR);
      v4 = 0;
      return v4 & 1;
    }

LABEL_7:
    outlined destroy of PerspectiveCameraComponent?(v8, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSg_AFtMd, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSg_AFtMR);
    v4 = 1;
    return v4 & 1;
  }

  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v8, v7, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMd, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMR);
  if (!v11)
  {
    outlined destroy of Model3DAsset.EntityAnimation(v7);
    goto LABEL_7;
  }

  outlined init with take of Model3DAsset.EntityAnimation(v10, v6);
  v3 = specialized static Model3DAsset.EntityAnimation.== infix(_:_:)(v7, v6);
  outlined destroy of Model3DAsset.EntityAnimation(v6);
  outlined destroy of Model3DAsset.EntityAnimation(v7);
  outlined destroy of PerspectiveCameraComponent?(v8, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMd, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMR);
  v4 = !v3;
  return v4 & 1;
}

uint64_t outlined assign with take of Model3DAsset.EntityAnimation?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMd, &_s19_RealityKit_SwiftUI12Model3DAssetC15EntityAnimationVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in Model3DAsset._availableAnimations.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset___availableAnimations);
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset___availableAnimations) = *(v0 + 24);
}

uint64_t type metadata accessor for CoveragePointCloud()
{
  result = type metadata singleton initialization cache for CoveragePointCloud;
  if (!type metadata singleton initialization cache for CoveragePointCloud)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for CoveragePointCloud()
{
  type metadata accessor for ObjectCaptureSession.Frame.PointCloud?(319, &lazy cache variable for type metadata for ObjectCaptureSession.Frame.PointCloud?, MEMORY[0x282217618]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ObjectCaptureSession.Frame.PointCloud?(319, &lazy cache variable for type metadata for ObjectCaptureSession.Frame.Object?, MEMORY[0x282217600]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for ObjectCaptureSession.Frame.PointCloud?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id one-time initialization function for device()
{
  result = MTLCreateSystemDefaultDevice();
  if (result)
  {
    static CoveragePointCloud.device = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double CoveragePointCloud.bboxWorld.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v28 - v4;
  v6 = *(type metadata accessor for CoveragePointCloud() + 20);
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v1 + v6, v5, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
  v7 = type metadata accessor for ObjectCaptureSession.Frame.Object();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v9(v5, 1, v7);
  v11 = MEMORY[0x277D860B8];
  if (v10 == 1)
  {
    v12 = outlined destroy of PerspectiveCameraComponent?(v5, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
    v13 = *v11;
    v32 = v11[1];
    v33 = v13;
    v14 = v11[2];
    v30 = v11[3];
    v31 = v14;
  }

  else
  {
    ObjectCaptureSession.Frame.Object.transform.getter();
    v32 = v16;
    v33 = v15;
    v30 = v18;
    v31 = v17;
    v12 = (*(v8 + 8))(v5, v7);
  }

  MEMORY[0x28223BE20](v12);
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v1 + v6, v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
  if (v9(v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), 1, v7) == 1)
  {
    outlined destroy of PerspectiveCameraComponent?(v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
    v19 = *v11;
    v20 = v11[1];
    v22 = v11[2];
    v21 = v11[3];
  }

  else
  {
    ObjectCaptureSession.Frame.Object.boundingBox.getter();
    v28[2] = v24;
    v29 = v23;
    v28[0] = v26;
    v28[1] = v25;
    (*(v8 + 8))(v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    v19 = v29;
  }

  *&result = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v33, v19.f32[0]), v32, *v19.f32, 1), v31, v19, 2), v30, v19, 3).u64[0];
  return result;
}

Swift::Bool __swiftcall CoveragePointCloud.isValid()()
{
  v1 = *(type metadata accessor for CoveragePointCloud() + 20);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v39 - v4;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v0 + v1, &v39 - v4, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
  v6 = type metadata accessor for ObjectCaptureSession.Frame.Object();
  v7 = *(v6 - 8);
  v44 = *(v7 + 48);
  v8 = v44(v5, 1, v6);
  outlined destroy of PerspectiveCameraComponent?(v5, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
  if (v8 != 1)
  {
    v42 = v3;
    v43 = v1;
    v39 = v7;
    v40 = v6;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
    v10 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v9 - 8);
    outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v0, &v39 - v10, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
    v11 = type metadata accessor for ObjectCaptureSession.Frame.PointCloud();
    v41 = *(v11 - 8);
    v12 = *(v41 + 48);
    v13 = v12(&v39 - v10, 1, v11);
    v14 = outlined destroy of PerspectiveCameraComponent?(&v39 - v10, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
    if (v13 != 1)
    {
      MEMORY[0x28223BE20](v14);
      v16 = &v39 - v10;
      v17 = v0;
      outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v0, &v39 - v10, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
      v15 = v12(&v39 - v10, 1, v11);
      if (v15 == 1)
      {
        __break(1u);
      }

      else
      {
        v18 = v11;
        ObjectCaptureSession.Frame.PointCloud.points.getter();
        v19 = dispatch thunk of OCDataBuffer.count.getter();

        v21 = v42;
        v20 = v43;
        if (v19 < 1)
        {
          goto LABEL_11;
        }

        ObjectCaptureSession.Frame.PointCloud.points.getter();
        if (one-time initialization token for device != -1)
        {
          swift_once();
        }

        v22 = dispatch thunk of OCDataBuffer.asMTLBuffer(from:)();

        if (!v22)
        {
LABEL_11:
          (*(v41 + 8))(v16, v18);
          LOBYTE(v15) = 0;
          return v15;
        }

        swift_unknownObjectRelease();
        v23 = (*(v41 + 8))(v16, v18);
        MEMORY[0x28223BE20](v23);
        v24 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
        outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v17 + v20, v24, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
        v25 = v40;
        v15 = v44(v24, 1, v40);
        if (v15 != 1)
        {
          ObjectCaptureSession.Frame.Object.transform.getter();
          v27 = vextq_s8(v26, v26, 8uLL);
          v29 = vextq_s8(v28, v28, 0xCuLL);
          v30 = vextq_s8(v26, v26, 0xCuLL);
          v31 = vextq_s8(v28, v28, 8uLL);
          v33 = vextq_s8(v28, v28, 4uLL);
          v34 = vextq_s8(v26, v26, 4uLL);
          v36 = vmulq_f32(v35, vmlaq_f32(vmlaq_f32(vmulq_f32(vextq_s8(v32, v32, 8uLL), vmlaq_f32(vmulq_f32(v29, vnegq_f32(v34)), v33, v30)), vmlaq_f32(vmulq_f32(v31, vnegq_f32(v30)), v29, v27), vextq_s8(v32, v32, 4uLL)), vmlaq_f32(vmulq_f32(v33, vnegq_f32(v27)), v31, v34), vextq_s8(v32, v32, 0xCuLL)));
          v32.i64[0] = vextq_s8(v36, v36, 8uLL).u64[0];
          v37 = fabsf(vaddv_f32(vsub_f32(vzip1_s32(*v36.i8, *v32.i8), vzip2_s32(*v36.i8, *v32.i8)))) > 0.001;
          (*(v39 + 8))(v24, v25);
          LOBYTE(v15) = v37;
          return v15;
        }
      }

      __break(1u);
      return v15;
    }
  }

  LOBYTE(v15) = 0;
  return v15;
}

uint64_t Entity.gesture.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation16GestureComponentVSgMd, &_s17RealityFoundation16GestureComponentVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v21 - v4;
  v6 = type metadata accessor for Entity.ComponentSet();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for GestureComponent();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of Entity.components.getter();
  Entity.ComponentSet.subscript.getter();
  (*(v7 + 8))(v10, v6);
  if ((*(v12 + 48))(v5, 1, v11) == 1)
  {
    v18 = &_s17RealityFoundation16GestureComponentVSgMd;
    v19 = &_s17RealityFoundation16GestureComponentVSgMR;
    v20 = v5;
  }

  else
  {
    (*(v12 + 32))(v15, v5, v11);
    v16 = GestureComponent._gesture.getter();
    (*(v12 + 8))(v15, v11);
    v23 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7Gesture_pMd, &_s7SwiftUI7Gesture_pMR);
    if (swift_dynamicCast())
    {
      return outlined init with take of Animation(v21, a1);
    }

    v22 = 0;
    memset(v21, 0, sizeof(v21));
    v18 = &_s7SwiftUI7Gesture_pSgMd;
    v19 = &_s7SwiftUI7Gesture_pSgMR;
    v20 = v21;
  }

  outlined destroy of PerspectiveCameraComponent?(v20, v18, v19);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t Entity.gestureResponder.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation16GestureComponentVSgMd, &_s17RealityFoundation16GestureComponentVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v16 - v2;
  v4 = type metadata accessor for Entity.ComponentSet();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for GestureComponent();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of Entity.components.getter();
  Entity.ComponentSet.subscript.getter();
  (*(v5 + 8))(v8, v4);
  if ((*(v10 + 48))(v3, 1, v9) == 1)
  {
    outlined destroy of PerspectiveCameraComponent?(v3, &_s17RealityFoundation16GestureComponentVSgMd, &_s17RealityFoundation16GestureComponentVSgMR);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    (*(v10 + 32))(v13, v3, v9);
    v14 = GestureComponent._responder.getter();
    (*(v10 + 8))(v13, v9);
    return v14;
  }

  return result;
}

uint64_t Entity.gestureResponder.setter(uint64_t a1)
{
  specialized Entity.gestureResponder.setter(a1);

  return swift_unknownObjectRelease();
}

uint64_t (*Entity.gestureResponder.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = Entity.gestureResponder.getter();
  return Entity.gestureResponder.modify;
}

uint64_t Entity.gestureResponder.modify(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *a1;
  if (a2)
  {
    v4 = swift_unknownObjectRetain();
    specialized Entity.gestureResponder.setter(v4);
    swift_unknownObjectRelease();
  }

  else
  {
    specialized Entity.gestureResponder.setter(v3);
  }

  return swift_unknownObjectRelease();
}

uint64_t protocol witness for EntityWithGesture.gestureResponder.setter in conformance Entity(uint64_t a1)
{
  specialized Entity.gestureResponder.setter(a1);

  return swift_unknownObjectRelease();
}

uint64_t (*protocol witness for EntityWithGesture.gestureResponder.modify in conformance Entity(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = Entity.gestureResponder.getter();
  return Entity.gestureResponder.modify;
}

void *Entity._gatherEntitiesWithGesture()()
{
  v1 = v0;
  v2 = type metadata accessor for Entity.ComponentSet();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v7 = (v3 + 8);

  v20 = MEMORY[0x277D84F90];

  if (v1)
  {
    while (1)
    {
      dispatch thunk of Entity.components.getter();
      type metadata accessor for GestureComponent();
      v9 = Entity.ComponentSet.has(_:)();
      v10 = *v7;
      (*v7)(v6, v2);
      if ((v9 & 1) == 0)
      {
        break;
      }

LABEL_9:
      v13 = v20;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13[2] + 1, 1, v13);
      }

      v15 = v13[2];
      v14 = v13[3];
      if (v15 >= v14 >> 1)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v13);
      }

      v16 = lazy protocol witness table accessor for type Entity and conformance Entity(&lazy protocol witness table cache variable for type Entity and conformance Entity);
      v13[2] = v15 + 1;
      v17 = &v13[2 * v15];
      v17[4] = v1;
      v17[5] = v16;
      v20 = v13;
      if (!v1)
      {

        return v13;
      }

      v21 = v1;

      swift_getAtKeyPath();

      v8 = v22;

      v1 = v8;
      if (!v8)
      {
        goto LABEL_14;
      }
    }

    v11 = v1;
    while (1)
    {

      v21 = v11;

      swift_getAtKeyPath();

      v1 = v22;

      if (!v1)
      {
        break;
      }

      dispatch thunk of Entity.components.getter();
      v12 = Entity.ComponentSet.has(_:)();
      v10(v6, v2);
      v11 = v1;
      if (v12)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_14:

  return v20;
}

id ARRenderView._hitTest(with:)(uint64_t a1)
{
  result = ARRenderView._entityContainer(with:)(a1);
  if (!result)
  {
    v4.receiver = v1;
    v4.super_class = type metadata accessor for ARRenderView();
    return objc_msgSendSuper2(&v4, sel__hitTestWithContext_, a1);
  }

  return result;
}

id ARRenderView._entityContainer(with:)(uint64_t a1)
{
  v3 = type metadata accessor for CollisionGroup();
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Type = type metadata accessor for CollisionCastQueryType();
  v8 = *(Type - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](Type);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CollisionCastHit();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](a1);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v15);
  v20 = &v30 - v19;
  if (result)
  {
    [result point];
    v22 = v21;
    v24 = v23;
    v25 = [v1 window];
    [v1 convertPoint:v25 fromView:{v22, v24}];

    result = [v1 superview];
    if (result)
    {
      v26 = result;
      v31 = v13;
      type metadata accessor for ARView();
      if (swift_dynamicCastClass())
      {
        (*(v8 + 104))(v11, *MEMORY[0x277CDAE48], Type);
        static CollisionGroup.all.getter();
        v27 = ARView.hitTest(_:requireInputTarget:query:mask:)();
        (*(v32 + 8))(v6, v33);
        (*(v8 + 8))(v11, Type);
        if (*(v27 + 16))
        {
          v28 = v31;
          (*(v31 + 16))(v17, v27 + ((*(v28 + 80) + 32) & ~*(v28 + 80)), v12);

          (*(v28 + 32))(v20, v17, v12);
          CollisionCastHit.entity.getter();
          Entity._gatherEntitiesWithGesture()();

          v29 = static EntityGestureResponderFactory.makeGestureContainer(parentView:entities:)();

          (*(v28 + 8))(v20, v12);
          return v29;
        }
      }

      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id @objc ARRenderView._hitTest(with:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = a3;
  v6 = ARRenderView._entityContainer(with:)(a3);
  if (!v6)
  {
    v9.receiver = v4;
    v9.super_class = type metadata accessor for ARRenderView();
    v6 = objc_msgSendSuper2(&v9, sel__hitTestWithContext_, v5);
  }

  v7 = v6;

  return v7;
}

uint64_t specialized Entity.gestureResponder.setter(uint64_t a1)
{
  v21 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation16GestureComponentVSgMd, &_s17RealityFoundation16GestureComponentVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v21 - v4;
  v6 = type metadata accessor for Entity.ComponentSet();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v21 - v12;
  v14 = type metadata accessor for GestureComponent();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v1;
  dispatch thunk of Entity.components.getter();
  Entity.ComponentSet.subscript.getter();
  v19 = *(v7 + 8);
  v19(v13, v6);
  if ((*(v15 + 48))(v5, 1, v14) == 1)
  {
    outlined destroy of PerspectiveCameraComponent?(v5, &_s17RealityFoundation16GestureComponentVSgMd, &_s17RealityFoundation16GestureComponentVSgMR);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    (*(v15 + 32))(v18, v5, v14);
    swift_unknownObjectRetain();
    GestureComponent._responder.setter();
    dispatch thunk of Entity.components.getter();
    Entity.ComponentSet.set<A>(_:)();
    v19(v11, v6);
    return (*(v15 + 8))(v18, v14);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Entity and conformance Entity(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Entity();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for CoveragePointCloudFullView()
{
  result = type metadata singleton initialization cache for CoveragePointCloudFullView;
  if (!type metadata singleton initialization cache for CoveragePointCloudFullView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for CoveragePointCloudFullView()
{
  type metadata accessor for ObservedObject<DataModel>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Environment<ColorScheme>(319, &lazy cache variable for type metadata for Environment<ColorScheme>, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Binding<Bool>();
      if (v2 <= 0x3F)
      {
        type metadata accessor for Environment<ColorScheme>(319, &lazy cache variable for type metadata for FullscreenCoveragePointsRenderer?, type metadata accessor for FullscreenCoveragePointsRenderer, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for Binding<Bool>()
{
  if (!lazy cache variable for type metadata for Binding<Bool>)
  {
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Binding<Bool>);
    }
  }
}

void type metadata accessor for Environment<ColorScheme>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t closure #1 in CoveragePointCloudFullView.body.getter@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v83 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA08_PaddingL0VGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA08_PaddingL0VGtGGMR);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v82 = &v71[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v81 = &v71[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEyAA6SpacerV_AA15ModifiedContentVyAKyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA08_PaddingM0VGtGG_AItGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEyAA6SpacerV_AA15ModifiedContentVyAKyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA08_PaddingM0VGtGG_AItGGMR);
  v84 = *(v8 - 8);
  v85 = v8;
  v9 = *(v84 + 64);
  MEMORY[0x28223BE20](v8);
  v80 = &v71[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEyAA6SpacerV_AA15ModifiedContentVyAKyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA08_PaddingM0VGtGG_AItGGSgMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEyAA6SpacerV_AA15ModifiedContentVyAKyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA08_PaddingM0VGtGG_AItGGSgMR);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v86 = &v71[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v87 = &v71[-v15];
  v16 = type metadata accessor for CoveragePointCloudFullView();
  v78 = *(v16 - 8);
  v17 = *(v78 + 64);
  MEMORY[0x28223BE20](v16);
  v79 = &v71[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation6AtomicVy01_A11Kit_SwiftUI18CoveragePointCloudVGMd, &_s17RealityFoundation6AtomicVy01_A11Kit_SwiftUI18CoveragePointCloudVGMR);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v71[-v21];
  v23 = type metadata accessor for CoveragePointCloud();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v71[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = *(v16 + 28);
  v88 = a1;
  v28 = *(a1 + v27);
  if (v28)
  {
    v77 = v16;
    v29 = v88;
    v30 = *(v88 + 8);
    v31 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__latestCoveragePointCloud;
    swift_beginAccess();
    (*(v19 + 16))(v22, v30 + v31, v18);
    v32 = v28;
    Atomic.wrappedValue.getter();
    (*(v19 + 8))(v22, v18);
    v33 = CoveragePointCloud.isValid()();
    outlined destroy of CoveragePointCloud(v26);
    if (v33)
    {
      v34 = v77;
      v35 = *(v29 + *(v77 + 36));
      v36 = v32;

      specialized CoveragePointCloudMetalWrapper.init(model:renderer:id:)(v37, v36, v35);
      v75 = v39;
      v76 = v38;
      v74 = v40;
      v73 = static SafeAreaRegions.all.getter();
      v72 = static Edge.Set.all.getter();
      v41 = v29;
      v16 = v34;
      v42 = v79;
      outlined init with copy of CoveragePointCloudFullView(v41, v79, type metadata accessor for CoveragePointCloudFullView);
      v43 = (*(v78 + 80) + 16) & ~*(v78 + 80);
      v44 = swift_allocObject();
      outlined init with take of CoveragePointCloudFullView(v42, v44 + v43);
      static Color.clear.getter();
      v45 = Color.opacity(_:)();

      LOBYTE(v42) = static Edge.Set.all.getter();
      v46 = static SafeAreaRegions.all.getter();
      v47 = static Edge.Set.all.getter();

      *&v99 = v76;
      *(&v99 + 1) = v75;
      *&v100 = v74;
      *(&v100 + 1) = v35;
      *&v101 = v73;
      BYTE8(v101) = v72;
      *&v102 = partial apply for closure #1 in closure #1 in CoveragePointCloudFullView.body.getter;
      *(&v102 + 1) = v44;
      v103 = 0u;
      v104 = 0u;
      *&v105 = closure #2 in closure #1 in CoveragePointCloudFullView.body.getter;
      *(&v105 + 1) = 0;
      *&v106[0] = v45;
      BYTE8(v106[0]) = v42;
      *&v106[1] = v46;
      BYTE8(v106[1]) = v47;
      closure #1 in BoundingBoxRotateManipulator.requestAsyncModelLoad()(&v99);
      v112 = v104;
      v113 = v105;
      v114[0] = v106[0];
      *(v114 + 9) = *(v106 + 9);
      v109 = v101;
      v110 = v102;
      v111 = v103;
      v107 = v99;
      v108 = v100;
      goto LABEL_6;
    }

    v16 = v77;
  }

  _s7SwiftUI15ModifiedContentVyACyACyACyACyAA6IDViewVy012_RealityKit_aB030CoveragePointCloudMetalWrapper33_ABC391D1FEA53E37AF8774528B6AFA04LLVSiGAA30_SafeAreaRegionsIgnoringLayoutVGAA25_AppearanceActionModifierVGAOGAA24_BackgroundStyleModifierVyAA5ColorVGGALGSgWOi0_(&v107);
LABEL_6:
  v49 = v87;
  v48 = v88;
  v50 = 1;
  if (*(v88 + *(v16 + 32)) == 1)
  {
    v51 = static HorizontalAlignment.center.getter();
    v52 = v80;
    *v80 = v51;
    *(v52 + 8) = 0;
    *(v52 + 16) = 1;
    v79 = (v52 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA6HStackVyAIyAA6SpacerV_AA15ModifiedContentVyAOyAA6ButtonVyAA5ImageVGAA06_FrameG0VGAA08_PaddingG0VGtGG_AMtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA6HStackVyAIyAA6SpacerV_AA15ModifiedContentVyAOyAA6ButtonVyAA5ImageVGAA06_FrameG0VGAA08_PaddingG0VGtGG_AMtGGMR) + 44));
    v53 = static VerticalAlignment.center.getter();
    v54 = v81;
    *v81 = v53;
    *(v54 + 8) = 0;
    *(v54 + 16) = 1;
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA6SpacerV_AA15ModifiedContentVyAMyAA6ButtonVyAA5ImageVGAA06_FrameG0VGAA08_PaddingG0VGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA6SpacerV_AA15ModifiedContentVyAMyAA6ButtonVyAA5ImageVGAA06_FrameG0VGAA08_PaddingG0VGtGGMR);
    closure #1 in closure #3 in closure #1 in CoveragePointCloudFullView.body.getter(v48, v54 + *(v55 + 44));
    v56 = v82;
    outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v54, v82, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA08_PaddingL0VGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA08_PaddingL0VGtGGMR);
    v57 = v79;
    outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v56, v79, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA08_PaddingL0VGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA08_PaddingL0VGtGGMR);
    v58 = &v57[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA08_PaddingL0VGtGG_AGtMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA08_PaddingL0VGtGG_AGtMR) + 48)];
    *v58 = 0;
    v58[8] = 1;
    outlined destroy of PerspectiveCameraComponent?(v54, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA08_PaddingL0VGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA08_PaddingL0VGtGGMR);
    v59 = v56;
    v49 = v87;
    outlined destroy of PerspectiveCameraComponent?(v59, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA08_PaddingL0VGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA08_PaddingL0VGtGGMR);
    outlined init with take of VStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<Image>, _FrameLayout>, _PaddingLayout>)>>, Spacer)>>(v52, v49);
    v50 = 0;
  }

  (*(v84 + 56))(v49, v50, 1, v85);
  v96[0] = v114[0];
  *(v96 + 9) = *(v114 + 9);
  v91 = v109;
  v92 = v110;
  v94 = v112;
  v95 = v113;
  v93 = v111;
  v89 = v107;
  v90 = v108;
  v60 = v86;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v49, v86, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEyAA6SpacerV_AA15ModifiedContentVyAKyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA08_PaddingM0VGtGG_AItGGSgMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEyAA6SpacerV_AA15ModifiedContentVyAKyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA08_PaddingM0VGtGG_AItGGSgMR);
  v61 = v94;
  v97[5] = v94;
  v97[6] = v95;
  v98[0] = v96[0];
  *(v98 + 9) = *(v96 + 9);
  v62 = v91;
  v63 = v92;
  v97[2] = v91;
  v97[3] = v92;
  v64 = v93;
  v97[4] = v93;
  v66 = v89;
  v65 = v90;
  v97[0] = v89;
  v97[1] = v90;
  v67 = v96[0];
  v68 = v83;
  v83[6] = v95;
  v68[7] = v67;
  *(v68 + 121) = *(v96 + 9);
  v68[2] = v62;
  v68[3] = v63;
  v68[4] = v64;
  v68[5] = v61;
  *v68 = v66;
  v68[1] = v65;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6IDViewVy012_RealityKit_aB030CoveragePointCloudMetalWrapper33_ABC391D1FEA53E37AF8774528B6AFA04LLVSiGAA30_SafeAreaRegionsIgnoringLayoutVGAA25_AppearanceActionModifierVGAOGAA24_BackgroundStyleModifierVyAA5ColorVGGALGSg_AA6VStackVyAA9TupleViewVyAA6HStackVyA1_yAA6SpacerV_ACyACyAA6ButtonVyAA5ImageVGAA06_FrameX0VGAA08_PaddingX0VGtGG_A5_tGGSgtMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6IDViewVy012_RealityKit_aB030CoveragePointCloudMetalWrapper33_ABC391D1FEA53E37AF8774528B6AFA04LLVSiGAA30_SafeAreaRegionsIgnoringLayoutVGAA25_AppearanceActionModifierVGAOGAA24_BackgroundStyleModifierVyAA5ColorVGGALGSg_AA6VStackVyAA9TupleViewVyAA6HStackVyA1_yAA6SpacerV_ACyACyAA6ButtonVyAA5ImageVGAA06_FrameX0VGAA08_PaddingX0VGtGG_A5_tGGSgtMR);
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v60, v68 + *(v69 + 48), &_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEyAA6SpacerV_AA15ModifiedContentVyAKyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA08_PaddingM0VGtGG_AItGGSgMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEyAA6SpacerV_AA15ModifiedContentVyAKyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA08_PaddingM0VGtGG_AItGGSgMR);
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v97, &v99, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6IDViewVy012_RealityKit_aB030CoveragePointCloudMetalWrapper33_ABC391D1FEA53E37AF8774528B6AFA04LLVSiGAA30_SafeAreaRegionsIgnoringLayoutVGAA25_AppearanceActionModifierVGAOGAA24_BackgroundStyleModifierVyAA5ColorVGGALGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6IDViewVy012_RealityKit_aB030CoveragePointCloudMetalWrapper33_ABC391D1FEA53E37AF8774528B6AFA04LLVSiGAA30_SafeAreaRegionsIgnoringLayoutVGAA25_AppearanceActionModifierVGAOGAA24_BackgroundStyleModifierVyAA5ColorVGGALGSgMR);
  outlined destroy of PerspectiveCameraComponent?(v49, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEyAA6SpacerV_AA15ModifiedContentVyAKyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA08_PaddingM0VGtGG_AItGGSgMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEyAA6SpacerV_AA15ModifiedContentVyAKyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA08_PaddingM0VGtGG_AItGGSgMR);
  outlined destroy of PerspectiveCameraComponent?(v60, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEyAA6SpacerV_AA15ModifiedContentVyAKyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA08_PaddingM0VGtGG_AItGGSgMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEyAA6SpacerV_AA15ModifiedContentVyAKyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA08_PaddingM0VGtGG_AItGGSgMR);
  v105 = v95;
  v106[0] = v96[0];
  *(v106 + 9) = *(v96 + 9);
  v101 = v91;
  v102 = v92;
  v103 = v93;
  v104 = v94;
  v99 = v89;
  v100 = v90;
  return outlined destroy of PerspectiveCameraComponent?(&v99, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6IDViewVy012_RealityKit_aB030CoveragePointCloudMetalWrapper33_ABC391D1FEA53E37AF8774528B6AFA04LLVSiGAA30_SafeAreaRegionsIgnoringLayoutVGAA25_AppearanceActionModifierVGAOGAA24_BackgroundStyleModifierVyAA5ColorVGGALGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6IDViewVy012_RealityKit_aB030CoveragePointCloudMetalWrapper33_ABC391D1FEA53E37AF8774528B6AFA04LLVSiGAA30_SafeAreaRegionsIgnoringLayoutVGAA25_AppearanceActionModifierVGAOGAA24_BackgroundStyleModifierVyAA5ColorVGGALGSgMR);
}

void closure #1 in closure #1 in CoveragePointCloudFullView.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, logger);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_23B824000, v8, v9, "CoveragePointCloudMetalWrapper: onAppear() ", v10, 2u);
    MEMORY[0x23EEB0B70](v10, -1, -1);
  }

  v11 = *(*(a1 + 8) + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_fullscreenCoveragePointsRenderer);
  if (v11)
  {
    v12 = *(type metadata accessor for CoveragePointCloudFullView() + 20);
    v13 = v11;
    specialized Environment.wrappedValue.getter(v6);
    v14 = OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_colorScheme;
    swift_beginAccess();
    (*(v3 + 24))(&v13[v14], v6, v2);
    swift_endAccess();
    FullscreenCoveragePointsRenderer.colorScheme.didset();

    (*(v3 + 8))(v6, v2);
  }
}

void closure #2 in closure #1 in CoveragePointCloudFullView.body.getter()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, logger);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_23B824000, oslog, v1, "CoveragePointCloudMetalWrapper: onDisappear()", v2, 2u);
    MEMORY[0x23EEB0B70](v2, -1, -1);
  }
}

uint64_t closure #1 in closure #3 in closure #1 in CoveragePointCloudFullView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CoveragePointCloudFullView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA08_PaddingH0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA08_PaddingH0VGMR);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v23 - v13;
  outlined init with copy of CoveragePointCloudFullView(a1, v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CoveragePointCloudFullView);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  outlined init with take of CoveragePointCloudFullView(v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  Button.init(action:label:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v17 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGMR) + 36)];
  v18 = v23[1];
  *v17 = v23[0];
  *(v17 + 1) = v18;
  *(v17 + 2) = v23[2];
  v19 = static Edge.Set.all.getter();
  v20 = &v14[*(v8 + 44)];
  *v20 = v19;
  *(v20 + 8) = 0u;
  *(v20 + 24) = 0u;
  v20[40] = 1;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v14, v12, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA08_PaddingH0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA08_PaddingH0VGMR);
  *a2 = 0;
  *(a2 + 8) = 1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6SpacerV_AA15ModifiedContentVyAEyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA08_PaddingI0VGtMd, &_s7SwiftUI6SpacerV_AA15ModifiedContentVyAEyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA08_PaddingI0VGtMR);
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v12, a2 + *(v21 + 48), &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA08_PaddingH0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA08_PaddingH0VGMR);
  outlined destroy of PerspectiveCameraComponent?(v14, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA08_PaddingH0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA08_PaddingH0VGMR);
  return outlined destroy of PerspectiveCameraComponent?(v12, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA08_PaddingH0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA08_PaddingH0VGMR);
}

void closure #1 in closure #1 in closure #3 in closure #1 in CoveragePointCloudFullView.body.getter(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for CoveragePointCloudFullView() + 24));
  v6 = *v1;
  v7 = v1[1];
  v8 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
  Binding.wrappedValue.setter();
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23B824000, v3, v4, "Close preview button clicked!", v5, 2u);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }
}

uint64_t closure #2 in closure #1 in closure #3 in closure #1 in CoveragePointCloudFullView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for Image.ResizingMode();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Image.init(systemName:)();
  (*(v3 + 104))(v6, *MEMORY[0x277CE0FE0], v2);
  v7 = Image.resizable(capInsets:resizingMode:)();

  result = (*(v3 + 8))(v6, v2);
  *a1 = v7;
  return result;
}

uint64_t protocol witness for View.body.getter in conformance CoveragePointCloudFullView@<X0>(uint64_t *a1@<X8>)
{
  *a1 = static Alignment.center.getter();
  a1[1] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAKyAA6IDViewVy012_RealityKit_aB030CoveragePointCloudMetalWrapper33_ABC391D1FEA53E37AF8774528B6AFA04LLVSiGAA024_SafeAreaRegionsIgnoringG0VGAA25_AppearanceActionModifierVGAWGAA24_BackgroundStyleModifierVyAA5ColorVGGATGSg_AA6VStackVyAIyAA6HStackVyAIyAA6SpacerV_AKyAKyAA6ButtonVyAA5ImageVGAA06_FrameG0VGAA08_PaddingG0VGtGG_A11_tGGSgtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAKyAA6IDViewVy012_RealityKit_aB030CoveragePointCloudMetalWrapper33_ABC391D1FEA53E37AF8774528B6AFA04LLVSiGAA024_SafeAreaRegionsIgnoringG0VGAA25_AppearanceActionModifierVGAWGAA24_BackgroundStyleModifierVyAA5ColorVGGATGSg_AA6VStackVyAIyAA6HStackVyAIyAA6SpacerV_AKyAKyAA6ButtonVyAA5ImageVGAA06_FrameG0VGAA08_PaddingG0VGtGG_A11_tGGSgtGGMR);
  return closure #1 in CoveragePointCloudFullView.body.getter(v1, (a1 + *(v4 + 44)));
}

double _s7SwiftUI15ModifiedContentVyACyACyACyACyAA6IDViewVy012_RealityKit_aB030CoveragePointCloudMetalWrapper33_ABC391D1FEA53E37AF8774528B6AFA04LLVSiGAA30_SafeAreaRegionsIgnoringLayoutVGAA25_AppearanceActionModifierVGAOGAA24_BackgroundStyleModifierVyAA5ColorVGGALGSgWOi0_(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 121) = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t outlined init with take of VStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<Image>, _FrameLayout>, _PaddingLayout>)>>, Spacer)>>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEyAA6SpacerV_AA15ModifiedContentVyAKyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA08_PaddingM0VGtGG_AItGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEyAA6SpacerV_AA15ModifiedContentVyAKyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA08_PaddingM0VGtGG_AItGGMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of CoveragePointCloud(uint64_t a1)
{
  v2 = type metadata accessor for CoveragePointCloud();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance CoveragePointCloudMetalWrapper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type CoveragePointCloudMetalWrapper and conformance CoveragePointCloudMetalWrapper();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance CoveragePointCloudMetalWrapper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type CoveragePointCloudMetalWrapper and conformance CoveragePointCloudMetalWrapper();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance CoveragePointCloudMetalWrapper()
{
  lazy protocol witness table accessor for type CoveragePointCloudMetalWrapper and conformance CoveragePointCloudMetalWrapper();
  UIViewRepresentable.body.getter();
  __break(1u);
}

void specialized CoveragePointCloudMetalWrapper.init(model:renderer:id:)(uint64_t a1, void *a2, unint64_t a3)
{
  v6 = type metadata accessor for CoveragePointCloud();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DataModel(0);
  lazy protocol witness table accessor for type DataModel and conformance DataModel();

  v35 = ObservedObject.init(wrappedValue:)();
  v11 = one-time initialization token for logger;
  v12 = a2;
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, logger);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134349056;
    *(v16 + 4) = a3;
    _os_log_impl(&dword_23B824000, v14, v15, "Metal wrapper setting cloud to id=%{public}ld...", v16, 0xCu);
    MEMORY[0x23EEB0B70](v16, -1, -1);
  }

  v17 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_pointCloudsBySegment;
  swift_beginAccess();
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v18 = *(a1 + v17);
  if (*(v18 + 16) <= a3)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  outlined init with copy of CoveragePointCloudFullView(v18 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * a3, v10, type metadata accessor for CoveragePointCloud);
  FullscreenCoveragePointsRenderer.setRenderPointCloud(pointCloud:)(v10);
  outlined destroy of CoveragePointCloud(v10);
  DataModel.currentMiniViewCameraWorldTransform.getter();
  v33 = v20;
  v34 = v19;
  v36 = v21;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v40 = v25;
    *v24 = 136446210;
    v37 = v34;
    v38 = v33;
    v39 = v36;
    v26 = String.init<A>(describing:)();
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v40);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_23B824000, v22, v23, "Fullscreen point cloud view setting camera world xform from miniview to %{public}s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
    MEMORY[0x23EEB0B70](v25, -1, -1);
    MEMORY[0x23EEB0B70](v24, -1, -1);
  }

  if (*&v12[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_turnTableCameraControl])
  {
    v29 = *&v12[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_turnTableCameraControl];

    TurnTableCameraControl.setFromCameraWorldPosition(cameraPositionWorld:)(v36);

    v30 = *&v12[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_lookAtBoxWorldProvider];
    *&v12[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_lookAtBoxWorldProvider] = 0;

    FullscreenCoveragePointsRenderer.updateTurnTable()();
    v31 = OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_view;
    [*&v12[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_view] setPaused_];
    v32 = *&v12[v31];

    [v32 setPreferredFramesPerSecond_];

    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t outlined init with take of CoveragePointCloudFullView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CoveragePointCloudFullView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of CoveragePointCloudFullView(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroyTm_3()
{
  v1 = type metadata accessor for CoveragePointCloudFullView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for ColorScheme();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
    v9 = *(v5 + v7);
  }

  v10 = (v5 + v1[6]);
  v11 = *v10;

  v12 = v10[1];

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in CoveragePointCloudFullView.body.getter(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for CoveragePointCloudFullView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t getEnumTagSinglePayload for CoveragePointCloudMetalWrapper(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for CoveragePointCloudMetalWrapper(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IDView<CoveragePointCloudMetalWrapper, Int>, _SafeAreaRegionsIgnoringLayout>, _AppearanceActionModifier>, _AppearanceActionModifier>, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout>?, VStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<Image>, _FrameLayout>, _PaddingLayout>)>>, Spacer)>>?)>> and conformance ZStack<A>()
{
  result = lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IDView<CoveragePointCloudMetalWrapper, Int>, _SafeAreaRegionsIgnoringLayout>, _AppearanceActionModifier>, _AppearanceActionModifier>, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout>?, VStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<Image>, _FrameLayout>, _PaddingLayout>)>>, Spacer)>>?)>> and conformance ZStack<A>;
  if (!lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IDView<CoveragePointCloudMetalWrapper, Int>, _SafeAreaRegionsIgnoringLayout>, _AppearanceActionModifier>, _AppearanceActionModifier>, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout>?, VStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<Image>, _FrameLayout>, _PaddingLayout>)>>, Spacer)>>?)>> and conformance ZStack<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA6IDViewVy012_RealityKit_aB030CoveragePointCloudMetalWrapper33_ABC391D1FEA53E37AF8774528B6AFA04LLVSiGAA30_SafeAreaRegionsIgnoringLayoutVGAA25_AppearanceActionModifierVGASGAA24_BackgroundStyleModifierVyAA5ColorVGGAPGSg_AA6VStackVyAEyAA6HStackVyAEyAA6SpacerV_AGyAGyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA14_PaddingLayoutVGtGG_A7_tGGSgtGGMd, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA6IDViewVy012_RealityKit_aB030CoveragePointCloudMetalWrapper33_ABC391D1FEA53E37AF8774528B6AFA04LLVSiGAA30_SafeAreaRegionsIgnoringLayoutVGAA25_AppearanceActionModifierVGASGAA24_BackgroundStyleModifierVyAA5ColorVGGAPGSg_AA6VStackVyAEyAA6HStackVyAEyAA6SpacerV_AGyAGyAA6ButtonVyAA5ImageVGAA12_FrameLayoutVGAA14_PaddingLayoutVGtGG_A7_tGGSgtGGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IDView<CoveragePointCloudMetalWrapper, Int>, _SafeAreaRegionsIgnoringLayout>, _AppearanceActionModifier>, _AppearanceActionModifier>, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout>?, VStack<TupleView<(HStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<Image>, _FrameLayout>, _PaddingLayout>)>>, Spacer)>>?)>> and conformance ZStack<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CoveragePointCloudMetalWrapper and conformance CoveragePointCloudMetalWrapper()
{
  result = lazy protocol witness table cache variable for type CoveragePointCloudMetalWrapper and conformance CoveragePointCloudMetalWrapper;
  if (!lazy protocol witness table cache variable for type CoveragePointCloudMetalWrapper and conformance CoveragePointCloudMetalWrapper)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CoveragePointCloudMetalWrapper and conformance CoveragePointCloudMetalWrapper);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CoveragePointCloudMetalWrapper and conformance CoveragePointCloudMetalWrapper;
  if (!lazy protocol witness table cache variable for type CoveragePointCloudMetalWrapper and conformance CoveragePointCloudMetalWrapper)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CoveragePointCloudMetalWrapper and conformance CoveragePointCloudMetalWrapper);
  }

  return result;
}

uint64_t CoveragePointCloudMiniView.body.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v27 = *(v1 + 32);
  v4 = *(&v27 + 1);
  v5 = swift_allocObject();
  v6 = *(v1 + 48);
  *(v5 + 48) = *(v1 + 32);
  *(v5 + 64) = v6;
  v7 = *(v1 + 64);
  *(v5 + 80) = v7;
  v8 = *(v1 + 16);
  *(v5 + 16) = *v1;
  *(v5 + 32) = v8;
  v9 = swift_allocObject();
  v10 = *(v1 + 48);
  *(v9 + 48) = *(v1 + 32);
  *(v9 + 64) = v10;
  *(v9 + 80) = *(v1 + 64);
  v11 = *(v1 + 16);
  *(v9 + 16) = *v1;
  *(v9 + 32) = v11;
  swift_beginAccess();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16SubscriptionViewVy7Combine9PublishedV9PublisherVySo22UIInterfaceOrientationV_GACyAD10PublishersO11AutoconnectCy_AM15MakeConnectableVy_So20NSNotificationCenterC10FoundationEAGVGGAA15ModifiedContentVy012_RealityKit_aB0022CoveragePointCloudMiniD7Wrapper33_5B9EEC18CAADE25D2C0394A3CF8442B0LLVAA25_AppearanceActionModifierVGGGMd, &_s7SwiftUI16SubscriptionViewVy7Combine9PublishedV9PublisherVySo22UIInterfaceOrientationV_GACyAD10PublishersO11AutoconnectCy_AM15MakeConnectableVy_So20NSNotificationCenterC10FoundationEAGVGGAA15ModifiedContentVy012_RealityKit_aB0022CoveragePointCloudMiniD7Wrapper33_5B9EEC18CAADE25D2C0394A3CF8442B0LLVAA25_AppearanceActionModifierVGGGMR);
  v13 = *(v12 + 52);
  outlined init with copy of CoveragePointCloudMiniView(v1, v26);
  outlined init with copy of CoveragePointCloudMiniView(v1, v26);
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(&v27, v26, &_s7SwiftUI14ObservedObjectVy012_RealityKit_aB021CoveragePointRendererCGMd, &_s7SwiftUI14ObservedObjectVy012_RealityKit_aB021CoveragePointRendererCGMR);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo22UIInterfaceOrientationVGMd, &_s7Combine9PublishedVySo22UIInterfaceOrientationVGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  v14 = swift_allocObject();
  v15 = *(v1 + 48);
  *(v14 + 48) = *(v1 + 32);
  *(v14 + 64) = v15;
  *(v14 + 80) = *(v1 + 64);
  v16 = *(v1 + 16);
  *(v14 + 16) = *v1;
  *(v14 + 32) = v16;
  *a1 = v4;
  a1[1] = partial apply for closure #1 in CoveragePointCloudMiniView.body.getter;
  a1[2] = v5;
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = v7;
  a1[6] = partial apply for closure #2 in CoveragePointCloudMiniView.body.getter;
  a1[7] = v9;
  v17 = (a1 + *(v12 + 56));
  *v17 = partial apply for closure #3 in CoveragePointCloudMiniView.body.getter;
  v17[1] = v14;
  v18 = *(v1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of CoveragePointCloudMiniView(v2, v26);
  static Published.subscript.getter();

  v19 = v26[0];
  static UnitPoint.center.getter();
  v21 = v20;
  v23 = v22;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA16SubscriptionViewVy7Combine9PublishedV9PublisherVySo22UIInterfaceOrientationV_GAEyAF10PublishersO11AutoconnectCy_AO15MakeConnectableVy_So20NSNotificationCenterC10FoundationEAIVGGACy012_RealityKit_aB0022CoveragePointCloudMiniF7Wrapper33_5B9EEC18CAADE25D2C0394A3CF8442B0LLVAA25_AppearanceActionModifierVGGGAA15_RotationEffectVGMd, &_s7SwiftUI15ModifiedContentVyAA16SubscriptionViewVy7Combine9PublishedV9PublisherVySo22UIInterfaceOrientationV_GAEyAF10PublishersO11AutoconnectCy_AO15MakeConnectableVy_So20NSNotificationCenterC10FoundationEAIVGGACy012_RealityKit_aB0022CoveragePointCloudMiniF7Wrapper33_5B9EEC18CAADE25D2C0394A3CF8442B0LLVAA25_AppearanceActionModifierVGGGAA15_RotationEffectVGMR);
  v25 = (a1 + *(result + 36));
  *v25 = v19;
  v25[1] = v21;
  v25[2] = v23;
  return result;
}

uint64_t closure #1 in CoveragePointCloudMiniView.body.getter(uint64_t a1)
{
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 orientation];

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, logger);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *&v16 = v8;
    *v7 = 136446210;
    type metadata accessor for UIDeviceOrientation(0);
    v9 = String.init<A>(describing:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v16);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_23B824000, v5, v6, "Device orientation starting from: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x23EEB0B70](v8, -1, -1);
    MEMORY[0x23EEB0B70](v7, -1, -1);
  }

  v16 = *(a1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySo19UIDeviceOrientationVGMd, &_s7SwiftUI5StateVySo19UIDeviceOrientationVGMR);
  State.wrappedValue.setter();
  v12 = *(a1 + 24);
  v16 = *(a1 + 48);
  State.wrappedValue.getter();
  v13 = CoveragePointCloudMiniView.interfaceOrientation.getter();
  v14 = specialized static MiniViewHelpers.getMiniViewRotation(deviceOrientation:interfaceOrientation:)(v3, v13);
  swift_getKeyPath();
  swift_getKeyPath();
  *&v16 = v14;

  return static Published.subscript.setter();
}

uint64_t closure #2 in CoveragePointCloudMiniView.body.getter(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() currentDevice];
  v4 = [v3 orientation];

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, logger);
  outlined init with copy of CoveragePointCloudMiniView(a2, v19);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  outlined destroy of CoveragePointCloudMiniView(a2);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18[0] = v9;
    *v8 = 136446466;
    v19[0] = *(a2 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySo19UIDeviceOrientationVGMd, &_s7SwiftUI5StateVySo19UIDeviceOrientationVGMR);
    State.wrappedValue.getter();
    type metadata accessor for UIDeviceOrientation(0);
    v10 = String.init<A>(describing:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v18);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2082;
    *&v19[0] = v4;
    v13 = String.init<A>(describing:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v18);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_23B824000, v6, v7, "Device orientation changed from: %{public}s to: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEB0B70](v9, -1, -1);
    MEMORY[0x23EEB0B70](v8, -1, -1);
  }

  MEMORY[0x28223BE20](v16);
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

uint64_t closure #1 in closure #2 in CoveragePointCloudMiniView.body.getter(uint64_t a1, unint64_t a2)
{
  v7 = *(a1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySo19UIDeviceOrientationVGMd, &_s7SwiftUI5StateVySo19UIDeviceOrientationVGMR);
  State.wrappedValue.setter();
  v3 = *(a1 + 24);
  v8 = *(a1 + 48);
  State.wrappedValue.getter();
  v4 = CoveragePointCloudMiniView.interfaceOrientation.getter();
  specialized static MiniViewHelpers.getMiniViewRotation(deviceOrientation:interfaceOrientation:)(a2, v4);
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t closure #3 in CoveragePointCloudMiniView.body.getter(unint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, logger);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v3;
    *&v17 = v8;
    *v7 = 136315138;
    type metadata accessor for UIInterfaceOrientation(0);
    v9 = String.init<A>(describing:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v17);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_23B824000, v5, v6, "Device orientation: UIInterfaceOrientation published, recomputing with %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x23EEB0B70](v8, -1, -1);
    MEMORY[0x23EEB0B70](v7, -1, -1);
  }

  v12 = *(a2 + 24);
  v17 = *(a2 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySo19UIDeviceOrientationVGMd, &_s7SwiftUI5StateVySo19UIDeviceOrientationVGMR);
  State.wrappedValue.getter();
  v13 = CoveragePointCloudMiniView.interfaceOrientation.getter();
  v14 = specialized static MiniViewHelpers.getMiniViewRotation(deviceOrientation:interfaceOrientation:)(v16, v13);
  swift_getKeyPath();
  swift_getKeyPath();
  *&v17 = v14;

  return static Published.subscript.setter();
}

uint64_t CoveragePointCloudMiniView.interfaceOrientation.getter()
{
  v1 = *(*(v0 + 40) + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_view);
  if (!v1)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, logger);
    v3 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v3, v8))
    {
      goto LABEL_19;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "Device orientation MTKView is nil!  Using .portrait...";
LABEL_13:
    _os_log_impl(&dword_23B824000, v3, v8, v10, v9, 2u);
    MEMORY[0x23EEB0B70](v9, -1, -1);
LABEL_19:
    v6 = 1;
    goto LABEL_20;
  }

  v2 = [v1 window];
  if (!v2)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, logger);
    v3 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v3, v8))
    {
      goto LABEL_19;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "Device orientation window is nil!  Using .portrait...";
    goto LABEL_13;
  }

  v3 = v2;
  v4 = [v2 windowScene];
  if (!v4)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, logger);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_23B824000, v13, v14, "Device orientation windowScene is nil!  Using .portrait...", v15, 2u);
      MEMORY[0x23EEB0B70](v15, -1, -1);
    }

    goto LABEL_19;
  }

  v5 = v4;
  v6 = [v4 interfaceOrientation];

  v3 = v5;
LABEL_20:

  return v6;
}

uint64_t protocol witness for View.body.getter in conformance CoveragePointCloudMiniView@<X0>(void *a1@<X8>)
{
  v5 = v1[2];
  v6 = v1[3];
  v7 = *(v1 + 8);
  v3 = *v1;
  v4 = v1[1];
  return CoveragePointCloudMiniView.body.getter(a1);
}

uint64_t CoveragePointRenderer.interfaceOrientation.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

id protocol witness for UIViewRepresentable.makeUIView(context:) in conformance CoveragePointCloudMiniViewWrapper()
{
  result = *(*v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_view);
  if (result)
  {
    return result;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance CoveragePointCloudMiniViewWrapper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type CoveragePointCloudMiniViewWrapper and conformance CoveragePointCloudMiniViewWrapper();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance CoveragePointCloudMiniViewWrapper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type CoveragePointCloudMiniViewWrapper and conformance CoveragePointCloudMiniViewWrapper();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance CoveragePointCloudMiniViewWrapper()
{
  lazy protocol witness table accessor for type CoveragePointCloudMiniViewWrapper and conformance CoveragePointCloudMiniViewWrapper();
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t closure #1 in CoveragePointRenderer.voxelRenderer.getter(uint64_t result)
{
  v1 = *(result + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_view);
  if (v1)
  {
    type metadata accessor for VoxelRenderer();
    swift_allocObject();
    return VoxelRenderer.init(view:)(v1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CoveragePointRenderer.voxelRenderer.getter(uint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  v6 = *a1;
  v7 = *(v4 + *a1);
  v8 = v7;
  if (v7 == 1)
  {
    v8 = a2(v4);
    v10 = *(v4 + v6);
    *(v4 + v6) = v8;

    a3(v10);
  }

  a4(v7);
  return v8;
}

void *closure #1 in CoveragePointRenderer.captureCircleRenderer.getter(uint64_t a1)
{
  result = *(a1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_view);
  if (result)
  {
    v3 = *(a1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_device);
    v4 = [result colorPixelFormat];
    type metadata accessor for CaptureCircleRenderer();
    v5 = swift_allocObject();
    *(v5 + 16) = 1056964608;
    *(v5 + 24) = 0x4000000000000000;
    *(v5 + 56) = 0;
    *(v5 + 64) = 0;
    *(v5 + 48) = 0;
    _s19_RealityKit_SwiftUI23CommonCircleRenderStateVSgWOi0_(__src);
    memcpy((v5 + 80), __src, 0x121uLL);
    *(v5 + 376) = 0;
    *(v5 + 384) = vdupq_n_s64(0x4059000000000000uLL);
    *(v5 + 400) = 0u;
    *(v5 + 416) = 0u;
    *(v5 + 432) = 0u;
    *(v5 + 445) = 0u;
    *(v5 + 464) = 0x400000007F800000;
    *(v5 + 472) = 0;
    *(v5 + 32) = v3;
    *(v5 + 40) = v4;
    swift_unknownObjectRetain();
    CaptureCircleRenderer.initRenderPipelines()();
    v6 = [v3 newBufferWithLength:432 options:0];
    v7 = *(v5 + 400);
    *(v5 + 400) = v6;
    swift_unknownObjectRelease();
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}