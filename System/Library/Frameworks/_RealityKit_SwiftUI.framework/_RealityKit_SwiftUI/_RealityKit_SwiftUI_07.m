void specialized static ManualBoxHelper.createDefaultManualBoxAtCurrentView(arView:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  [a1 center];
  ARView.ray(through:)();
  if (v57)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, logger);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_18;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "Can't generate ray through screen center!  Cannot make dynamic manual box!";
LABEL_17:
    _os_log_impl(&dword_23B824000, v5, v6, v8, v7, 2u);
    MEMORY[0x23EEB0B70](v7, -1, -1);
LABEL_18:

    v21 = 1;
    v22 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
    v25 = 0uLL;
LABEL_19:
    *a2 = v22;
    *(a2 + 16) = v23;
    *(a2 + 32) = v24;
    *(a2 + 48) = v25;
    *(a2 + 64) = v21;
    return;
  }

  v9 = [a1 session];
  v10 = [v9 currentFrame];

  if (!v10 || (v11 = [v10 sceneDepth], v10, !v11) || (v12 = objc_msgSend(v11, sel_depthMap), v11, !v12))
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, logger);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_18;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "Cannot get a depth buffer to cast the manual box ray!";
    goto LABEL_17;
  }

  Width = CVPixelBufferGetWidth(v12);
  Height = CVPixelBufferGetHeight(v12);
  BytesPerRow = CVPixelBufferGetBytesPerRow(v12);
  v16 = CVPixelBufferLockBaseAddress(v12, 1uLL);
  if (v16 != noErr.getter())
  {
    v19 = INFINITY;
LABEL_21:
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, logger);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 134217984;
      *(v29 + 4) = v19;
      _os_log_impl(&dword_23B824000, v27, v28, "Manual box raycast hit world at depth %fm", v29, 0xCu);
      MEMORY[0x23EEB0B70](v29, -1, -1);
    }

    v30 = 5.0;
    if (v19 <= 5.0)
    {
      if (v19 >= 0.1)
      {
LABEL_34:
        Transform.init()();
        v51 = Ray3D.point(t:)(v19, v55, v56);
        v35 = v19 * 0.25;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_23B91A6D0;
        *(inited + 32) = v35;
        *(inited + 36) = v35;
        *(inited + 40) = v35;
        _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(inited);
        swift_setDeallocating();
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          *v39 = 134217984;
          *(v39 + 4) = v35;
          _os_log_impl(&dword_23B824000, v37, v38, "Making a default box cube of size %fm", v39, 0xCu);
          MEMORY[0x23EEB0B70](v39, -1, -1);
        }

        v40 = v56;
        v40.i32[1] = 0;
        v41 = vmulq_f32(v40, v40);
        *&v42 = v41.f32[2] + vaddv_f32(*v41.f32);
        *v41.f32 = vrsqrte_f32(v42);
        *v41.f32 = vmul_f32(*v41.f32, vrsqrts_f32(v42, vmul_f32(*v41.f32, *v41.f32)));
        v53 = vmulq_n_f32(v40, vmul_f32(*v41.f32, vrsqrts_f32(v42, vmul_f32(*v41.f32, *v41.f32))).f32[0]);
        _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of static ManualBoxHelper.createDefaultManualBoxAtCurrentView(arView:));
        *v44.i64 = simd_quaternion(v43, v53);
        *&v45 = specialized simd_float4x4.init(translation:rotation:scale:)(v51, v44);
        v52 = v46;
        v54 = v45;
        v49 = v48;
        v50 = v47;

        v25 = v49;
        v24 = v50;
        v23 = v52;
        v22 = v54;
        v21 = 0;
        goto LABEL_19;
      }

      v31 = Logger.logObject.getter();
      v34 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v31, v34))
      {
        v30 = 0.1;
        goto LABEL_33;
      }

      v33 = swift_slowAlloc();
      *v33 = 134217984;
      *(v33 + 4) = 0x3FB99999A0000000;
      _os_log_impl(&dword_23B824000, v31, v34, "Constraining the default box raycast by min depth to: %f m.", v33, 0xCu);
      v30 = 0.1;
    }

    else
    {
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v31, v32))
      {
LABEL_33:

        v19 = v30;
        goto LABEL_34;
      }

      v33 = swift_slowAlloc();
      *v33 = 134217984;
      *(v33 + 4) = 0x4014000000000000;
      _os_log_impl(&dword_23B824000, v31, v32, "Constraining the default box raycast by max depth to: %f m.", v33, 0xCu);
    }

    MEMORY[0x23EEB0B70](v33, -1, -1);
    goto LABEL_33;
  }

  BaseAddress = CVPixelBufferGetBaseAddress(v12);
  if (BaseAddress)
  {
    v18 = Height / 2 * BytesPerRow;
    if ((Height / 2 * BytesPerRow) >> 64 == v18 >> 63)
    {
      v19 = *&BaseAddress[4 * (Width / 2) + v18];
      CVPixelBufferUnlockBaseAddress(v12, 1uLL);
      goto LABEL_21;
    }

    __break(1u);
  }

  __break(1u);
}

unint64_t lazy protocol witness table accessor for type ARView.EntityGestures and conformance ARView.EntityGestures()
{
  result = lazy protocol witness table cache variable for type ARView.EntityGestures and conformance ARView.EntityGestures;
  if (!lazy protocol witness table cache variable for type ARView.EntityGestures and conformance ARView.EntityGestures)
  {
    type metadata accessor for ARView.EntityGestures();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARView.EntityGestures and conformance ARView.EntityGestures);
  }

  return result;
}

void specialized DetectModeBoxModel.handleRotate(_:)(const char *a1, uint64_t a2, const char *a3)
{
  v7 = v3;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (&v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  DetectModeBoxModel.currentCaptureBox.getter(v41);
  if (v42)
  {
    if (one-time initialization token for logger != -1)
    {
LABEL_32:
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, logger);
    v40[0] = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v40[0], v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_23B824000, v40[0], v14, a3, v15, 2u);
      MEMORY[0x23EEB0B70](v15, -1, -1);
    }

    v16 = v40[0];

    return;
  }

  if (*(v3 + 24) == 2)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, logger);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_23B824000, v18, v19, a1, v20, 2u);
      MEMORY[0x23EEB0B70](v20, -1, -1);
    }

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    *v12 = static OS_dispatch_queue.main.getter();
    (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
    v21 = _dispatchPreconditionTest(_:)();
    (*(v9 + 8))(v12, v8);
    if (v21)
    {
      DetectModeBoxModel.performSwitchStateTransitions(from:to:)(*(v7 + 24), 3u);
      *(v7 + 24) = 3;
      return;
    }

    __break(1u);
  }

  else
  {
    v39 = v41[1];
    *v40 = v41[0];
    v37 = v41[3];
    v38 = v41[2];
    v22 = *(v3 + 240);
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v24 = Strong;
    v25 = *(v22 + 40);
    type metadata accessor for Entity();
    HasTransform.setTransformMatrix(_:relativeTo:)();
    v26 = *(v22 + 40);
    HasTransform.scale(relativeTo:)();
    v27 = *(v22 + 40);
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(a2);
    HasTransform.setScale(_:relativeTo:)();
    v8 = *(v22 + 48);
    v28 = *(v24 + 16);
    v12 = v28;
    Transform.init(matrix:)();
    v38 = v30;
    v39 = v29;
    *v40 = v31;
    BoundingBoxScaleManipulator.FaceHandleContainer.setScaleFromScreenConstraints(arView:extents:)(v28, v31);
    swift_beginAccess();
    a1 = *(v8 + 40);
    if (!(a1 >> 62))
    {
      a3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_18;
    }
  }

  a3 = __CocoaSet.count.getter();
LABEL_18:

  if (a3)
  {
    v32 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x23EEAFC40](v32, a1);
        v34 = (v32 + 1);
        if (__OFADD__(v32, 1))
        {
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }
      }

      else
      {
        if (v32 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_32;
        }

        v33 = *&a1[8 * v32 + 32];

        v34 = (v32 + 1);
        if (__OFADD__(v32, 1))
        {
          goto LABEL_28;
        }
      }

      if (*(v8 + 120))
      {
        break;
      }

      v35 = *(v8 + 116);
      BoundingBoxScaleManipulator.FaceHandle.setPositionLocal(extents:minDistance:)();

      ++v32;
      if (v34 == a3)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_29:

    v36 = v39;
    *(v8 + 64) = *v40;
    *(v8 + 80) = v36;
    *(v8 + 96) = v38;
    *(v8 + 112) = 0;
  }
}

uint64_t outlined consume of DetectModeBoxModel.TargetReticleEntity?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 24))
  {
    outlined init with take of Animation(a1, v12);
    v8 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v4;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v11;
  }

  else
  {
    outlined destroy of PerspectiveCameraComponent?(a1, &_s19_RealityKit_SwiftUI14AnimationState_pSgMd, &_s19_RealityKit_SwiftUI14AnimationState_pSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, a3, a4, v12);

    return outlined destroy of PerspectiveCameraComponent?(v12, &_s19_RealityKit_SwiftUI14AnimationState_pSgMd, &_s19_RealityKit_SwiftUI14AnimationState_pSgMR);
  }

  return result;
}

uint64_t ImplicitAnimationCompletion.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t ImplicitAnimationComponent.update(context:)(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
    while (1)
    {
      v10 = v9;
LABEL_12:
      v13 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v14 = v13 | (v10 << 6);
      v15 = *(a2 + 48) + 24 * v14;
      v16 = *(v15 + 16);
      v20 = *v15;
      outlined init with copy of Cancellable(*(a2 + 56) + 40 * v14, v21);
      v22 = v20;
      *&v23 = v16;
      outlined init with take of Animation(v21, &v23 + 8);

      v12 = v10;
LABEL_13:
      v26 = v22;
      v27[0] = v23;
      v27[1] = v24;
      v27[2] = v25;
      v17 = v22;
      if (!v22)
      {
      }

      outlined init with take of Animation((v27 + 8), &v22);
      v18 = *(&v23 + 1);
      v19 = v24;
      __swift_project_boxed_opaque_existential_1(&v22, *(&v23 + 1));

      SceneUpdateContext.deltaTime.getter();
      (*(v19 + 8))(v17, v18, v19);

      result = __swift_destroy_boxed_opaque_existential_0Tm(&v22);
      v9 = v12;
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v7 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    else
    {
      v11 = v7;
    }

    v12 = v11 - 1;
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v7)
      {
        v6 = 0;
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        goto LABEL_13;
      }

      v6 = *(v3 + 8 * v10);
      ++v9;
      if (v6)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t protocol witness for System.init(scene:) in conformance ImplicitAnimationSystem@<X0>(uint64_t *a1@<X8>)
{

  type metadata accessor for ImplicitAnimationSystem();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t ImplicitAnimationState.AnimationEntry.init(oldValue:newValue:animation:completion:animationState:floatContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v13 = *(a7 + 8);
  v14 = type metadata accessor for ComponentAnimatableData();
  v15 = *(*(v14 - 8) + 32);
  v15(a8, a1, v14);
  v16 = type metadata accessor for ImplicitAnimationState.AnimationEntry();
  v15(a8 + v16[9], a2, v14);
  *(a8 + v16[10]) = a3;
  *(a8 + v16[11]) = a4;
  v17 = v16[12];
  v18 = type metadata accessor for ImplicitAnimationState.State();
  (*(*(v18 - 8) + 32))(a8 + v17, a5, v18);
  v19 = v16[13];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16AnimationContextVySfGMd, &_s7SwiftUI16AnimationContextVySfGMR);
  v21 = *(*(v20 - 8) + 32);

  return v21(a8 + v19, a6, v20);
}

uint64_t static ImplicitAnimationState.State.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v32 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ImplicitAnimationState.State();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v35 = &v30 - v11;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = *(TupleTypeMetadata2 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v17 = &v30 - v16;
  v33 = v9;
  v34 = v15;
  v18 = *(v15 + 48);
  v19 = *(v9 + 16);
  v19(&v30 - v16, a1, v8);
  v19(&v17[v18], a2, v8);
  v20 = *(v5 + 48);
  v21 = v20(v17, 2, v4);
  if (!v21)
  {
    v31 = v5;
    v19(v35, v17, v8);
    v22 = v4;
    if (!v20(&v17[v18], 2, v4))
    {
      v25 = v31;
      v26 = &v17[v18];
      v27 = v32;
      (*(v31 + 32))(v32, v26, v4);
      v28 = v35;
      v23 = static Date.== infix(_:_:)();
      v29 = *(v25 + 8);
      v29(v27, v22);
      v29(v28, v22);
      v13 = v33;
      goto LABEL_10;
    }

    (*(v31 + 8))(v35, v4);
    goto LABEL_9;
  }

  if (v21 == 1)
  {
    if (v20(&v17[v18], 2, v4) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v20(&v17[v18], 2, v4) != 2)
  {
LABEL_9:
    v23 = 0;
    v8 = v34;
    goto LABEL_10;
  }

  v23 = 1;
  v13 = v33;
LABEL_10:
  (*(v13 + 8))(v17, v8);
  return v23 & 1;
}

uint64_t ImplicitAnimationState.addAnimation(oldValue:newValue:animation:completion:)(void (*a1)(char *, uint64_t, uint64_t, uint64_t), void (*a2)(char *, uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v55 = a4;
  v57 = a3;
  v60 = a1;
  v7 = *v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14AnimationStateVySfGMd, &_s7SwiftUI14AnimationStateVySfGMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16AnimationContextVySfGMd, &_s7SwiftUI16AnimationContextVySfGMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v56 = &v51 - v12;
  v13 = *(v7 + 80);
  v14 = *(v7 + 88);
  v58 = type metadata accessor for ImplicitAnimationState.State();
  v61 = *(v58 - 8);
  v15 = *(v61 + 64);
  v16 = MEMORY[0x28223BE20](v58);
  v59 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v51 - v18;
  v20 = *(v14 + 8);
  v64 = v14;
  v53 = v13;
  v21 = type metadata accessor for ComponentAnimatableData();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v26;
  MEMORY[0x28223BE20](v24);
  v28 = &v51 - v27;
  v63 = type metadata accessor for ImplicitAnimationState.AnimationEntry();
  v65 = *(v63 - 8);
  v29 = *(v65 + 64);
  v30 = MEMORY[0x28223BE20](v63);
  v52 = &v51 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v62 = &v51 - v32;
  v33 = *(v22 + 16);
  v33(v28, v60, v21);
  v33(v26, a2, v21);
  v34 = type metadata accessor for Date();
  v35 = *(v34 - 8);
  v60 = *(v35 + 56);
  v54 = v35 + 56;
  v36 = v19;
  v60(v19, 1, 2, v34);
  v37 = v55;

  v38 = v57;

  AnimationState.init()();
  v39 = v56;
  AnimationContext.init(state:environment:isLogicallyComplete:)();
  v40 = v62;
  v41 = v37;
  v42 = v36;
  ImplicitAnimationState.AnimationEntry.init(oldValue:newValue:animation:completion:animationState:floatContext:)(v28, v51, v38, v41, v36, v39, v64, v62);
  (*(v65 + 16))(v52, v40, v63);
  v43 = *(*v5 + 104);
  swift_beginAccess();
  type metadata accessor for Array();
  v44 = v58;
  Array.append(_:)();
  swift_endAccess();
  v45 = *(*v5 + 112);
  swift_beginAccess();
  v46 = v61;
  (*(v61 + 16))(v42, &v5[v45], v44);
  v47 = v59;
  v57 = v34;
  v60(v59, 2, 2, v34);
  v48 = v42;
  LOBYTE(v42) = static ImplicitAnimationState.State.== infix(_:_:)(v42, v47);
  v49 = *(v46 + 8);
  v49(v47, v44);
  v49(v48, v44);
  result = (*(v65 + 8))(v62, v63);
  if (v42)
  {
    v60(v48, 1, 2, v57);
    swift_beginAccess();
    (*(v61 + 40))(&v5[v45], v48, v44);
    return swift_endAccess();
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ImplicitAnimationState<A>.State(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return static ImplicitAnimationState.State.== infix(_:_:)(a1, a2);
}

uint64_t ImplicitAnimationState.deinit()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 80);
  v3 = *(*(*v0 + 88) + 8);
  v4 = type metadata accessor for ComponentAnimatableData();
  (*(*(v4 - 8) + 8))(v0 + v1, v4);
  v5 = *(v0 + *(*v0 + 104));

  v6 = *(*v0 + 112);
  v7 = type metadata accessor for ImplicitAnimationState.State();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  return v0;
}

uint64_t ImplicitAnimationState.__deallocating_deinit()
{
  ImplicitAnimationState.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ImplicitAnimationComponent.Key()
{
  v2 = *v0;
  v1 = v0[1];
  Hasher.init(_seed:)();
  type metadata accessor for Entity();
  lazy protocol witness table accessor for type SwiftUIImplicitAnimation and conformance SwiftUIImplicitAnimation(&lazy protocol witness table cache variable for type Entity and conformance Entity, 255, MEMORY[0x277CDB1C8]);
  dispatch thunk of Hashable.hash(into:)();
  MEMORY[0x23EEAFE40](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ImplicitAnimationComponent.Key()
{
  v1 = v0[1];
  v3 = *v0;
  type metadata accessor for Entity();
  lazy protocol witness table accessor for type SwiftUIImplicitAnimation and conformance SwiftUIImplicitAnimation(&lazy protocol witness table cache variable for type Entity and conformance Entity, 255, MEMORY[0x277CDB1C8]);
  dispatch thunk of Hashable.hash(into:)();
  return MEMORY[0x23EEAFE40](v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ImplicitAnimationComponent.Key()
{
  v2 = *v0;
  v1 = v0[1];
  Hasher.init(_seed:)();
  type metadata accessor for Entity();
  lazy protocol witness table accessor for type SwiftUIImplicitAnimation and conformance SwiftUIImplicitAnimation(&lazy protocol witness table cache variable for type Entity and conformance Entity, 255, MEMORY[0x277CDB1C8]);
  dispatch thunk of Hashable.hash(into:)();
  MEMORY[0x23EEAFE40](v1);
  return Hasher._finalize()();
}

uint64_t SwiftUIImplicitAnimation.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t static Entity.animate(_:body:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for SwiftUIImplicitAnimation();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  if (a4)
  {
    type metadata accessor for ImplicitAnimationCompletion();
    v10 = swift_allocObject();
    *(v10 + 16) = a4;
    *(v10 + 24) = a5;
    *(v10 + 32) = 0;
  }

  else
  {
    v10 = 0;
  }

  *(v9 + 24) = v10;
  v11 = lazy protocol witness table accessor for type SwiftUIImplicitAnimation and conformance SwiftUIImplicitAnimation(&lazy protocol witness table cache variable for type SwiftUIImplicitAnimation and conformance SwiftUIImplicitAnimation, v8, type metadata accessor for SwiftUIImplicitAnimation);
  MEMORY[0x28223BE20](v11);

  outlined copy of (@escaping @callee_guaranteed () -> ())?(a4);
  static ImplicitAnimationStack.withModifier<A>(_:operation:)();
}

uint64_t partial apply for thunk for @callee_guaranteed () -> (@error @owned Error)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t type metadata completion function for ImplicitAnimationState(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(*(a1 + 88) + 8);
  result = type metadata accessor for ComponentAnimatableData();
  if (v4 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    result = type metadata accessor for ImplicitAnimationState.State();
    if (v5 <= 0x3F)
    {
      v7 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void type metadata completion function for ImplicitAnimationState.AnimationEntry(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(*(a1 + 24) + 8);
  type metadata accessor for ComponentAnimatableData();
  if (v3 <= 0x3F)
  {
    type metadata accessor for ImplicitAnimationCompletion?();
    if (v4 <= 0x3F)
    {
      type metadata accessor for ImplicitAnimationState.State();
      if (v5 <= 0x3F)
      {
        type metadata accessor for AnimationContext<Float>();
        if (v6 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for ImplicitAnimationCompletion?()
{
  if (!lazy cache variable for type metadata for ImplicitAnimationCompletion?)
  {
    type metadata accessor for ImplicitAnimationCompletion();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ImplicitAnimationCompletion?);
    }
  }
}

void type metadata accessor for AnimationContext<Float>()
{
  if (!lazy cache variable for type metadata for AnimationContext<Float>)
  {
    v0 = type metadata accessor for AnimationContext();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimationContext<Float>);
    }
  }
}

uint64_t type metadata completion function for ImplicitAnimationState.State()
{
  v0 = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v13 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _NativeDictionary.copy()();
    v9 = v13;
  }

  v10 = v6;
  v11 = *(*(v9 + 56) + 8 * v6);
  specialized _NativeDictionary._delete(at:)(v10, v9);
  *v2 = v9;
  return v11;
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v7 = *v4;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, a3);
  if (v9)
  {
    v10 = v8;
    v11 = *v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v5;
    v16 = *v5;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v13 = v16;
    }

    v14 = *(*(v13 + 48) + 24 * v10);

    outlined init with take of Animation((*(v13 + 56) + 40 * v10), a4);
    specialized _NativeDictionary._delete(at:)(v10, v13);
    *v5 = v13;
  }

  else
  {
    *(a4 + 32) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for FreeformMeshManager.MeshAnchor();
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v52 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v51 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV19_RealityKit_SwiftUI19FreeformMeshManagerC0J6AnchorVGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV19_RealityKit_SwiftUI19FreeformMeshManagerC0J6AnchorVGMR);
  v48 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v16 = result;
  if (*(v13 + 16))
  {
    v43 = v3;
    v17 = 0;
    v18 = (v13 + 64);
    v19 = 1 << *(v13 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v13 + 64);
    v22 = (v19 + 63) >> 6;
    v44 = (v10 + 16);
    v45 = v10;
    v49 = (v10 + 32);
    v23 = result + 64;
    v46 = v13;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v28 = v25 | (v17 << 6);
      v29 = *(v13 + 48);
      v50 = *(v10 + 72);
      v30 = v29 + v50 * v28;
      if (v48)
      {
        (*v49)(v51, v30, v9);
        v31 = *(v13 + 56);
        v32 = *(v47 + 72);
        outlined init with take of FreeformMeshManager.MeshAnchor(v31 + v32 * v28, v52);
      }

      else
      {
        (*v44)(v51, v30, v9);
        v33 = *(v13 + 56);
        v32 = *(v47 + 72);
        outlined init with copy of FreeformMeshManager.MeshAnchor(v33 + v32 * v28, v52);
      }

      v34 = *(v16 + 40);
      lazy protocol witness table accessor for type SwiftUIImplicitAnimation and conformance SwiftUIImplicitAnimation(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v35 = -1 << *(v16 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v23 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v23 + 8 * v37);
          if (v41 != -1)
          {
            v24 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v36) & ~*(v23 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      (*v49)((*(v16 + 48) + v50 * v24), v51, v9);
      result = outlined init with take of FreeformMeshManager.MeshAnchor(v52, *(v16 + 56) + v32 * v24);
      ++*(v16 + 16);
      v10 = v45;
      v13 = v46;
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v22)
      {
        break;
      }

      v27 = v18[v17];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v13 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v18, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v42;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi10RealityKit6EntityCGMd, &_ss18_DictionaryStorageCySi10RealityKit6EntityCGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v24 = *(v21 + 8 * v20);
      }

      result = MEMORY[0x23EEAFE20](*(v8 + 40), v22);
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_35;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy19_RealityKit_SwiftUI26ImplicitAnimationComponentV3KeyVAC0H5State_pGMd, &_ss18_DictionaryStorageCy19_RealityKit_SwiftUI26ImplicitAnimationComponentV3KeyVAC0H5State_pGMR);
  v35 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(v5 + 48) + 24 * v21;
      v23 = *v22;
      v36 = *(v22 + 8);
      v24 = (*(v5 + 56) + 40 * v21);
      if (v35)
      {
        outlined init with take of Animation(v24, v37);
      }

      else
      {
        outlined init with copy of Cancellable(v24, v37);
      }

      v25 = *(v8 + 40);
      Hasher.init(_seed:)();
      type metadata accessor for Entity();
      lazy protocol witness table accessor for type SwiftUIImplicitAnimation and conformance SwiftUIImplicitAnimation(&lazy protocol witness table cache variable for type Entity and conformance Entity, 255, MEMORY[0x277CDB1C8]);
      dispatch thunk of Hashable.hash(into:)();
      MEMORY[0x23EEAFE40](v36);
      result = Hasher._finalize()();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 24 * v16;
      *v17 = v23;
      *(v17 + 8) = v36;
      result = outlined init with take of Animation(v37, *(v8 + 56) + 40 * v16);
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_36;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

unint64_t specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v43 = a2;
    v13 = ~v11;
    v14 = _HashTable.previousHole(before:)();
    v15 = v13;
    a2 = v43;
    v42 = (v14 + 1) & v15;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v40 = v10;
    v41 = v17;
    v18 = *(v16 + 56);
    v39 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v41(v9, *(a2 + 48) + v18 * v12, v4);
      v23 = *(a2 + 40);
      lazy protocol witness table accessor for type SwiftUIImplicitAnimation and conformance SwiftUIImplicitAnimation(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0]);
      v24 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v39)(v9, v4);
      v15 = v21;
      v25 = v24 & v21;
      if (a1 >= v42)
      {
        if (v25 >= v42 && a1 >= v25)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v43 + 48) + v19 * a1 >= (*(v43 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v43;
          v28 = *(v43 + 56);
          v29 = *(*(type metadata accessor for FreeformMeshManager.MeshAnchor() - 8) + 72);
          v30 = v29 * a1;
          result = v28 + v29 * a1;
          v31 = v29 * v12;
          v32 = v28 + v29 * v12 + v29;
          if (v30 < v31 || result >= v32)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v40;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v34 = v30 == v31;
            v10 = v40;
            v15 = v21;
            if (!v34)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v42 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v40;
      a2 = v43;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t specialized _NativeDictionary._delete(at:)(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = MEMORY[0x23EEAFE20](*(a2 + 40), *v10);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    v30 = v4;
    do
    {
      v11 = *(v2 + 40);
      v12 = v2;
      v13 = (*(v2 + 48) + 24 * v6);
      v14 = v7;
      v15 = *v13;
      v16 = v13[1];
      v17 = v8;
      Hasher.init(_seed:)();
      type metadata accessor for Entity();
      lazy protocol witness table accessor for type SwiftUIImplicitAnimation and conformance SwiftUIImplicitAnimation(&lazy protocol witness table cache variable for type Entity and conformance Entity, 255, MEMORY[0x277CDB1C8]);

      dispatch thunk of Hashable.hash(into:)();
      MEMORY[0x23EEAFE40](v16);
      v18 = Hasher._finalize()();
      v7 = v14;

      v8 = v17;
      v19 = v18 & v14;
      if (v3 >= v17)
      {
        if (v19 < v17)
        {
          v4 = v30;
          v2 = v12;
        }

        else
        {
          v4 = v30;
          v2 = v12;
          if (v3 >= v19)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
        v4 = v30;
        v2 = v12;
        if (v19 >= v8 || v3 >= v19)
        {
LABEL_11:
          v20 = *(v2 + 48);
          v21 = v20 + 24 * v3;
          v22 = (v20 + 24 * v6);
          if (v3 != v6 || v21 >= v22 + 24)
          {
            v23 = *v22;
            *(v21 + 16) = *(v22 + 2);
            *v21 = v23;
          }

          v24 = *(v2 + 56);
          v25 = v24 + 40 * v3;
          v26 = (v24 + 40 * v6);
          if (v3 != v6 || v25 >= v26 + 40)
          {
            v9 = *v26;
            v10 = v26[1];
            *(v25 + 32) = *(v26 + 4);
            *v25 = v9;
            *(v25 + 16) = v10;
            v3 = v6;
          }
        }
      }

      v6 = (v6 + 1) & v14;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v27 = *(v2 + 16);
  v28 = __OFSUB__(v27, 1);
  v29 = v27 - 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v29;
    ++*(v2 + 36);
  }

  return result;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
      v18 = *v4;
      result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      specialized _NativeDictionary.copy()();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a2;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  v21 = v20[7];
  v22 = *(v21 + 8 * result);
  *(v21 + 8 * result) = a1;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v21;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
    v22 = *v6;
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4);
    if ((v19 & 1) != (v23 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 40 * v13);
    __swift_destroy_boxed_opaque_existential_0Tm(v25);

    return outlined init with take of Animation(a1, v25);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v13, a2, a3, a4, a1, v24);
  }
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for FreeformMeshManager.MeshAnchor();
  result = outlined init with take of FreeformMeshManager.MeshAnchor(a3, v10 + *(*(v11 - 8) + 72) * a1);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, void *a6)
{
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a6[6] + 24 * a1);
  *v7 = a2;
  v7[1] = a3;
  v7[2] = a4;
  result = outlined init with take of Animation(a5, a6[7] + 40 * a1);
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

char *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  v2 = type metadata accessor for FreeformMeshManager.MeshAnchor();
  v38 = *(v2 - 8);
  v3 = *(v38 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v37 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for UUID();
  v39 = *(v36 - 8);
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV19_RealityKit_SwiftUI19FreeformMeshManagerC0J6AnchorVGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV19_RealityKit_SwiftUI19FreeformMeshManagerC0J6AnchorVGMR);
  v7 = *v0;
  v8 = static _DictionaryStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v7 + 64;
    if (v9 != v7 || result >= &v11[8 * v12])
    {
      result = memmove(result, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v40 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v33 = v39 + 32;
    v34 = v39 + 16;
    v19 = v35;
    if (v17)
    {
      do
      {
        v20 = __clz(__rbit64(v17));
        v41 = (v17 - 1) & v17;
LABEL_14:
        v23 = v20 | (v13 << 6);
        v24 = v39;
        v25 = *(v39 + 72) * v23;
        v26 = v36;
        (*(v39 + 16))(v19, *(v7 + 48) + v25, v36);
        v27 = v37;
        v28 = *(v38 + 72) * v23;
        outlined init with copy of FreeformMeshManager.MeshAnchor(*(v7 + 56) + v28, v37);
        v29 = v40;
        (*(v24 + 32))(*(v40 + 48) + v25, v19, v26);
        result = outlined init with take of FreeformMeshManager.MeshAnchor(v27, *(v29 + 56) + v28);
        v17 = v41;
      }

      while (v41);
    }

    v21 = v13;
    v9 = v40;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v31;
        goto LABEL_18;
      }

      v22 = *(v32 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v41 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi10RealityKit6EntityCGMd, &_ss18_DictionaryStorageCySi10RealityKit6EntityCGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy19_RealityKit_SwiftUI26ImplicitAnimationComponentV3KeyVAC0H5State_pGMd, &_ss18_DictionaryStorageCy19_RealityKit_SwiftUI26ImplicitAnimationComponentV3KeyVAC0H5State_pGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 24 * v17;
        v19 = *(v2 + 48) + 24 * v17;
        v20 = *(v19 + 16);
        v23 = *v19;
        v21 = 40 * v17;
        outlined init with copy of Cancellable(*(v2 + 56) + 40 * v17, v24);
        v22 = *(v4 + 48) + v18;
        *v22 = v23;
        *(v22 + 16) = v20;
        outlined init with take of Animation(v24, *(v4 + 56) + v21);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

Swift::Void __swiftcall Array._checkSubscript_mutating(_:)(Swift::Int a1)
{
  v2 = v1;
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
  if (a1 < 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  v5 = v2 & 0xFFFFFFFFFFFFFF8;
  if ((isClassOrObjCExistentialType & 1) == 0)
  {
    v5 = v2;
  }

  if (*(v5 + 16) <= a1)
  {
    goto LABEL_7;
  }
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    __CocoaSet.count.getter();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 48 * result + 48 * a3;
  v10 = (v6 + 32 + 48 * a2);
  if (result != v10 || result >= v10 + 48 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 48 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 32 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI13InFlightQueueC5Entry33_29104CBFA5E547639D84C47451781CFELLVyAA21FreeformCloudRendererC08ResourceH033_3779DB7E999291C1C0BBA21A79DFAE44LLV_GMd, &_s19_RealityKit_SwiftUI13InFlightQueueC5Entry33_29104CBFA5E547639D84C47451781CFELLVyAA21FreeformCloudRendererC08ResourceH033_3779DB7E999291C1C0BBA21A79DFAE44LLV_GMR);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 32 * a3;
  v13 = (v7 + 32 + 32 * a2);
  if (result != v13 || result >= v13 + 32 * v12)
  {
    result = memmove(result, v13, 32 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_syycMd, &_syycMR);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2)
{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = __CocoaSet.count.getter();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = __CocoaSet.count.getter();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result);

  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v4, v2, 0);
}

uint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for FrameCache.CacheEntry();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = __CocoaSet.count.getter();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = __CocoaSet.count.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

unint64_t specialized Array.replaceSubrange<A>(_:with:)(unint64_t a1, uint64_t a2)
{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &_s19_RealityKit_SwiftUI13InFlightQueueC5Entry33_29104CBFA5E547639D84C47451781CFELLVyAA21CoveragePointRendererC08ResourceH033_5B9EEC18CAADE25D2C0394A3CF8442B0LLV_GMd, &_s19_RealityKit_SwiftUI13InFlightQueueC5Entry33_29104CBFA5E547639D84C47451781CFELLVyAA21CoveragePointRendererC08ResourceH033_5B9EEC18CAADE25D2C0394A3CF8442B0LLV_GMR);
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &_s19_RealityKit_SwiftUI13InFlightQueueC5Entry33_29104CBFA5E547639D84C47451781CFELLVyAA32FullscreenCoveragePointsRendererC08ResourceH033_EBAA0A78FD80C51EE584E033B8F33CA2LLV_GMd, &_s19_RealityKit_SwiftUI13InFlightQueueC5Entry33_29104CBFA5E547639D84C47451781CFELLVyAA32FullscreenCoveragePointsRendererC08ResourceH033_EBAA0A78FD80C51EE584E033B8F33CA2LLV_GMR);
}

unint64_t specialized Array.replaceSubrange<A>(_:with:)(unint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = *v5;
  v8 = *(*v5 + 16);
  if (v8 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = v8 + v10;
  if (__OFADD__(v8, v10))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v15 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v7;
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v7 + 24) >> 1)
  {
    v7 = a3();
    *v5 = v7;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v9, a2, 0, a4, a5);
  *v5 = v7;
  return result;
}

uint64_t specialized ImplicitAnimationState.tick(_:_:)(uint64_t a1)
{
  v2 = v1;
  v187 = a1;
  v3 = *v1;
  v237 = type metadata accessor for Date();
  v189 = *(v237 - 8);
  v4 = *(v189 + 64);
  v5 = MEMORY[0x28223BE20](v237);
  v192 = &v181 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v194 = &v181 - v7;
  v8 = *(v3 + 80);
  v9 = *(v3 + 88);
  v238 = type metadata accessor for ImplicitAnimationState.State();
  v188 = *(v238 - 8);
  v10 = *(v188 + 64);
  v11 = MEMORY[0x28223BE20](v238);
  v205 = &v181 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v204 = &v181 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v200 = &v181 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v230 = &v181 - v18;
  MEMORY[0x28223BE20](v17);
  v227 = &v181 - v19;
  v20 = type metadata accessor for ImplicitAnimationState.AnimationEntry();
  v201 = *(v20 - 8);
  v21 = *(v201 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v185 = &v181 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v218 = &v181 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v199 = &v181 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v181 - v28;
  v232 = v9;
  v30 = *(v9 + 8);
  v31 = type metadata accessor for ComponentAnimatableData();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = MEMORY[0x28223BE20](v31);
  v186 = &v181 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v38 = &v181 - v37;
  v39 = MEMORY[0x28223BE20](v36);
  v195 = &v181 - v40;
  MEMORY[0x28223BE20](v39);
  v42 = &v181 - v41;
  v233 = v8;
  v191 = v30;
  MEMORY[0x23EEADD60](v8, v30);
  v43 = *(*v2 + 96);
  swift_beginAccess();
  v44 = *(v32 + 40);
  v223 = v43;
  v224 = v42;
  v210 = v32 + 40;
  v209 = v44;
  v44(&v2[v43], v42, v31);
  swift_endAccess();
  v45 = *(*v2 + 104);
  swift_beginAccess();
  v234 = v45;
  v46 = *&v2[v45];
  v240 = v20;
  *&v241 = v46;
  v47 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  v208 = v47;
  v190 = WitnessTable;
  result = RandomAccessCollection<>.indices.getter();
  v220 = 0;
  v50 = *(&v242 + 1);
  v51 = v242;
  if (v242 == *(&v242 + 1))
  {
LABEL_2:
    v52 = *&v2[v234];

    v54 = MEMORY[0x23EEAF6A0](v53, v240);

    if (v220 == v54)
    {
      v55 = v227;
      (*(v189 + 56))(v227, 2, 2, v237);
      v56 = *(*v2 + 112);
      swift_beginAccess();
      (*(v188 + 40))(&v2[v56], v55, v238);
      swift_endAccess();
      swift_beginAccess();
      Array.removeAll(keepingCapacity:)(1);
      return swift_endAccess();
    }

    return result;
  }

  if (*(&v242 + 1) < v242)
  {
    goto LABEL_59;
  }

  v57 = *(*v2 + 112);
  result = swift_beginAccess();
  v220 = 0;
  v58 = (v188 + 16);
  v59 = (v201 + 8);
  v231 = (v189 + 56);
  v228 = (v188 + 8);
  v225 = (v32 + 16);
  v207 = (v32 + 8);
  v217 = (v189 + 48);
  v196 = (v189 + 32);
  v212 = (v188 + 40);
  v193 = (v189 + 8);
  v182 = (v32 + 24);
  v183 = v233 - 8;
  v235 = (v201 + 8);
  v219 = v29;
  v221 = v31;
  v184 = v38;
  v216 = v50;
  v198 = v57;
  v226 = (v188 + 16);
  while (v51 < v50)
  {
    v62 = v234;
    swift_beginAccess();
    v63 = *&v2[v62];
    v64 = v240;
    Array.subscript.getter();
    v65 = &v29[v64[12]];
    v66 = v227;
    v67 = v238;
    v236 = *v58;
    (v236)(v227, v65, v238);
    swift_endAccess();
    v239 = *v59;
    v239(v29, v64);
    v68 = v62;
    v69 = v29;
    v70 = v230;
    v229 = *v231;
    v229(v230, 2, 2, v237);
    LOBYTE(v64) = static ImplicitAnimationState.State.== infix(_:_:)(v66, v70);
    v71 = *v228;
    (*v228)(v70, v67);
    v71(v66, v67);
    if ((v64 & 1) == 0)
    {
      v77 = v71;
      v222 = v51;
      v78 = v223;
      v79 = v224;
      v80 = v221;
      v213 = *v225;
      v213(v224, &v2[v223], v221);
      v81 = ComponentAnimatableData.hasValues()();
      v206 = *v207;
      v206(v79, v80);
      v82 = v68;
      v83 = v239;
      if (!v81)
      {
        swift_beginAccess();
        v84 = *&v2[v82];
        v85 = v219;
        v86 = v240;
        Array.subscript.getter();
        v87 = v224;
        v213(v224, v85, v80);
        v83(v85, v86);
        swift_endAccess();
        swift_beginAccess();
        v209(&v2[v78], v87, v80);
        swift_endAccess();
      }

      swift_beginAccess();
      v88 = *&v2[v82];
      v89 = v199;
      v51 = v222;
      v90 = v240;
      Array.subscript.getter();
      v91 = v204;
      (v236)(v204, &v89[v90[12]], v238);
      swift_endAccess();
      v239(v89, v90);
      v92 = *v217;
      v93 = (*v217)(v91, 2, v237);
      v94 = v198;
      v215 = v77;
      v214 = v92;
      if (v93)
      {
        v95 = v93;
        v96 = v200;
        if (v93 == 1)
        {
          Date.init()();
          goto LABEL_21;
        }
      }

      else
      {
        v96 = v200;
        (*v196)(v200, v204, v237);
LABEL_21:
        v95 = 0;
      }

      v97 = v237;
      v98 = v229;
      v229(v96, v95, 2, v237);
      swift_beginAccess();
      Array._makeMutableAndUnique()();
      v99 = *&v2[v82];
      v100 = v240;
      Array._checkSubscript_mutating(_:)(v51);
      v202 = (*(v201 + 80) + 32) & ~*(v201 + 80);
      v101 = v99 + v202 + v100[12];
      v102 = *v212;
      v203 = *(v201 + 72) * v51;
      v103 = v238;
      v211 = v102;
      v102((v101 + v203), v96, v238);
      swift_endAccess();
      v104 = &v2[v94];
      v105 = v227;
      v106 = v94;
      v107 = v226;
      (v236)(v227, v104, v103);
      v108 = v230;
      v109 = v97;
      v110 = v103;
      v98(v230, 1, 2, v109);
      LOBYTE(v103) = static ImplicitAnimationState.State.== infix(_:_:)(v105, v108);
      v111 = v215;
      v215(v108, v110);
      v111(v105, v110);
      v29 = v219;
      v112 = v239;
      if (v103)
      {
        goto LABEL_24;
      }

      v113 = v238;
      (v236)(v105, &v2[v106], v238);
      v114 = v230;
      v229(v230, 2, 2, v237);
      v197 = static ImplicitAnimationState.State.== infix(_:_:)(v105, v114);
      v115 = v114;
      v29 = v219;
      v111(v115, v113);
      v111(v105, v113);
      v112 = v239;
      if (v197)
      {
LABEL_24:
        v116 = v234;
        swift_beginAccess();
        v117 = *&v2[v116];
        v118 = v240;
        Array.subscript.getter();
        v119 = v238;
        (v236)(v105, &v29[v118[12]], v238);
        v112(v29, v118);
        swift_endAccess();
        swift_beginAccess();
        v211(&v2[v106], v105, v119);
        swift_endAccess();
      }

      v120 = v234;
      swift_beginAccess();
      v121 = *&v2[v120];
      v122 = v218;
      v123 = v240;
      Array.subscript.getter();
      v124 = &v122[v123[12]];
      v125 = v205;
      (v236)(v205, v124, v238);
      swift_endAccess();
      v126 = v237;
      v58 = v107;
      if (v214(v125, 2, v237))
      {
        v59 = v235;
        v60 = v218;
        v61 = v240;
      }

      else
      {
        v127 = v194;
        (*v196)(v194, v205, v126);
        v128 = v192;
        Date.init()();
        Date.timeIntervalSince(_:)();
        v130 = v129;
        v131 = v128;
        v132 = *v193;
        (*v193)(v131, v126);
        if (v130 <= 0.001)
        {
          v132(v127, v126);
        }

        else
        {
          v215 = v132;
          v133 = v234;
          swift_beginAccess();
          v134 = *&v2[v133];
          v135 = v240;
          Array.subscript.getter();
          v136 = *&v29[v135[10]];
          swift_endAccess();

          v137 = v239;
          v239(v29, v135);
          LODWORD(v243) = 1065353216;
          swift_beginAccess();
          Array._makeMutableAndUnique()();
          v138 = *&v2[v133];
          Array._checkSubscript_mutating(_:)(v51);
          v139 = v138 + v202 + v135[13];
          Animation.animate<A>(value:time:context:)();
          swift_endAccess();

          v140 = *&v241;
          LODWORD(v236) = BYTE4(v241);
          swift_beginAccess();
          v141 = *&v2[v133];
          Array.subscript.getter();
          v142 = v221;
          v143 = v213;
          v213(v195, &v29[v135[9]], v221);
          v137(v29, v135);
          swift_endAccess();
          v144 = v224;
          v143(v224, &v2[v223], v142);
          LOBYTE(v138) = ComponentAnimatableData.hasValues()();
          v145 = v144;
          v146 = v206;
          v206(v145, v142);
          if (v138)
          {
            v147 = v224;
            v148 = v221;
            v213(v224, &v2[v223], v221);
            static ComponentAnimatableData.-= infix(_:_:)();
            v146(v147, v148);
          }

          if (v236)
          {
            v149 = v227;
            v229(v227, 2, 2, v237);
            v150 = v234;
            swift_beginAccess();
            Array._makeMutableAndUnique()();
            v151 = *&v2[v150];
            v152 = v240;
            Array._checkSubscript_mutating(_:)(v51);
            v211((v151 + v202 + v152[12] + v203), v149, v238);
            result = swift_endAccess();
            if (__OFADD__(v220, 1))
            {
              goto LABEL_58;
            }

            ++v220;
            v153 = v223;
            v154 = v224;
            v155 = v221;
            v213(v224, &v2[v223], v221);
            v156 = ComponentAnimatableData.hasValues()();
            v206(v154, v155);
            swift_beginAccess();
            if (v156)
            {
              static ComponentAnimatableData.+= infix(_:_:)();
            }

            else
            {
              (*v182)(&v2[v153], v195, v155);
            }

            swift_endAccess();
            v163 = v234;
            swift_beginAccess();
            v164 = *&v2[v163];
            v165 = v185;
            v166 = v240;
            Array.subscript.getter();
            v167 = *&v165[v166[11]];

            v239(v165, v166);
            swift_endAccess();
            if (v167)
            {
              v29 = v219;
              v58 = v226;
              if (*(v167 + 32))
              {
              }

              else
              {
                if (one-time initialization token for perFrameCompletionClosures != -1)
                {
                  swift_once();
                }

                v168 = *(v167 + 16);
                v169 = *(v167 + 24);
                v170 = swift_allocObject();
                *(v170 + 16) = v168;
                *(v170 + 24) = v169;
                swift_beginAccess();
                rawValue = perFrameCompletionClosures._rawValue;

                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                perFrameCompletionClosures._rawValue = rawValue;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, rawValue[2] + 1, 1, rawValue);
                  perFrameCompletionClosures._rawValue = rawValue;
                }

                v174 = rawValue[2];
                v173 = rawValue[3];
                if (v174 >= v173 >> 1)
                {
                  rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v173 > 1), v174 + 1, 1, rawValue);
                }

                rawValue[2] = v174 + 1;
                v175 = &rawValue[2 * v174];
                v175[4] = partial apply for thunk for @callee_guaranteed () -> ();
                v175[5] = v170;
                perFrameCompletionClosures._rawValue = rawValue;
                swift_endAccess();
                *(v167 + 32) = 1;

                v155 = v221;
              }
            }

            else
            {
              v29 = v219;
              v58 = v226;
            }
          }

          else
          {
            v157 = v184;
            v155 = v221;
            v158 = v213;
            v213(v184, v195, v221);
            ComponentAnimatableData.scale(by:)(v140);
            v159 = v223;
            v160 = v224;
            v158(v224, &v2[v223], v155);
            v161 = ComponentAnimatableData.hasValues()();
            v162 = v206;
            v206(v160, v155);
            v58 = v226;
            swift_beginAccess();
            if (v161)
            {
              static ComponentAnimatableData.+= infix(_:_:)();
              swift_endAccess();
              v162(v157, v155);
            }

            else
            {
              v209(&v2[v159], v157, v155);
              swift_endAccess();
            }

            v51 = v222;
          }

          v245 = *&v2[v234];
          RandomAccessCollection<>.indices.getter();
          v241 = v242;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
          lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
          BidirectionalCollection.last.getter();
          if ((v244 & 1) == 0 && v51 == v243)
          {
            v176 = v186;
            (v213)();
            v236 = dispatch thunk of Entity.components.modify();
            v177 = v155;
            v178 = v233;
            v229 = Entity.ComponentSet.subscript.modify();
            result = (*(*(v178 - 8) + 48))(v179, 1, v178);
            v59 = v235;
            if (result == 1)
            {
              goto LABEL_60;
            }

            v239(v218, v240);
            ComponentAnimatableData.assignProperties(toComponent:)();
            v180 = v206;
            v206(v176, v177);
            (v229)(&v241, 0);
            (v236)(&v242, 0);
            v180(v195, v177);
            result = (v215)(v194, v237);
            goto LABEL_9;
          }

          v206(v195, v155);
          v215(v194, v237);
        }

        v60 = v218;
        v61 = v240;
        v59 = v235;
      }

      result = (v239)(v60, v61);
LABEL_9:
      v50 = v216;
      goto LABEL_10;
    }

    swift_beginAccess();
    v72 = *&v2[v68];
    v73 = v240;
    Array.subscript.getter();
    v74 = v224;
    v75 = v221;
    (*v225)(v224, &v69[v73[9]], v221);
    v239(v69, v73);
    swift_endAccess();
    v76 = v223;
    swift_beginAccess();
    v209(&v2[v76], v74, v75);
    result = swift_endAccess();
    if (__OFADD__(v220, 1))
    {
      goto LABEL_57;
    }

    v29 = v69;
    ++v220;
    v50 = v216;
    v58 = v226;
    v59 = v235;
LABEL_10:
    if (v50 == ++v51)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
  return result;
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v13 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

uint64_t specialized ImplicitAnimationSystem.update(context:)(uint64_t a1)
{
  v2 = type metadata accessor for Entity.ComponentSet();
  v31 = *(v2 - 8);
  v3 = *(v31 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation11QueryResultV8IteratorVy0A3Kit6EntityC_GMd, &_s17RealityFoundation11QueryResultV8IteratorVy0A3Kit6EntityC_GMR);
  v32 = *(v6 - 8);
  v7 = *(v32 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - v8;
  updated = type metadata accessor for SystemUpdateCondition();
  v10 = *(updated - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](updated);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation11QueryResultVy0A3Kit6EntityCGMd, &_s17RealityFoundation11QueryResultVy0A3Kit6EntityCGMR);
  v34 = *(v14 - 8);
  v15 = *(v34 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v30 - v16;
  if (one-time initialization token for query != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for EntityQuery();
  __swift_project_value_buffer(v18, static ImplicitAnimationSystem.query);
  static SystemUpdateCondition.rendering.getter();
  SceneUpdateContext.entities(matching:updatingSystemWhen:)();
  (*(v10 + 8))(v13, updated);
  updated = v14;
  v33 = v17;
  QueryResult.makeIterator()();
  QueryResult.Iterator.next()();
  if (v36)
  {
    v19 = (v31 + 8);
    do
    {
      dispatch thunk of Entity.components.getter();
      lazy protocol witness table accessor for type ImplicitAnimationComponent and conformance ImplicitAnimationComponent();
      Entity.ComponentSet.subscript.getter();
      (*v19)(v5, v2);
      if (v36)
      {
        ImplicitAnimationComponent.update(context:)(a1, v36);
      }

      QueryResult.Iterator.next()();
    }

    while (v36);
  }

  (*(v32 + 8))(v9, v6);
  if (one-time initialization token for perFrameCompletionClosures != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  rawValue = perFrameCompletionClosures._rawValue;
  v21 = *(perFrameCompletionClosures._rawValue + 2);
  if (v21)
  {

    v22 = (rawValue + 40);
    do
    {
      v24 = *(v22 - 1);
      v23 = *v22;

      v24(v25);

      v22 += 2;
      --v21;
    }

    while (v21);
  }

  swift_beginAccess();
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, *(perFrameCompletionClosures._rawValue + 2), specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
  }

  else
  {
    perFrameCompletionClosures._rawValue = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCyyScMYcc_Tt1g5(0, *(perFrameCompletionClosures._rawValue + 3) >> 1);
  }

  v27 = v34;
  v26 = updated;
  v28 = v33;
  swift_endAccess();
  return (*(v27 + 8))(v28, v26);
}

uint64_t specialized ImplicitAnimationState.init(oldValue:newValue:animation:completion:context:)(uint64_t a1, void (*a2)(char *, uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v102 = a5;
  v88 = a4;
  v87 = a3;
  v94 = a2;
  v92 = a1;
  v6 = *v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16AnimationContextVySfGSgMd, &_s7SwiftUI16AnimationContextVySfGSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v73 = &v72 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14AnimationStateVySfGMd, &_s7SwiftUI14AnimationStateVySfGMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v72 = &v72 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16AnimationContextVySfGMd, &_s7SwiftUI16AnimationContextVySfGMR);
  v89 = *(v13 - 8);
  v90 = v13;
  v14 = *(v89 + 64);
  MEMORY[0x28223BE20](v13);
  v91 = &v72 - v15;
  v16 = v6[10];
  v17 = v6[11];
  v96 = type metadata accessor for ImplicitAnimationState.State();
  v86 = *(v96 - 8);
  v18 = *(v86 + 64);
  v19 = MEMORY[0x28223BE20](v96);
  v81 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v82 = &v72 - v22;
  MEMORY[0x28223BE20](v21);
  v101 = &v72 - v23;
  v83 = *(v17 + 8);
  v24 = type metadata accessor for ComponentAnimatableData();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v84 = &v72 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v72 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v72 - v32;
  v99 = v16;
  v100 = v17;
  v34 = type metadata accessor for ImplicitAnimationState.AnimationEntry();
  v98 = *(v34 - 8);
  v35 = *(v98 + 64);
  v36 = MEMORY[0x28223BE20](v34);
  v77 = &v72 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v97 = &v72 - v38;
  v39 = v6[13];
  v40 = static Array._allocateUninitialized(_:)();
  v76 = v39;
  *(v5 + v39) = v40;
  v41 = *(*v5 + 112);
  v42 = type metadata accessor for Date();
  v43 = *(v42 - 8);
  v44 = *(v43 + 56);
  v95 = v41;
  v79 = v5;
  v45 = v5 + v41;
  v46 = v43 + 56;
  v44(v45, 1, 2, v42);
  v85 = v25;
  v47 = *(v25 + 16);
  v74 = v33;
  v47(v33, v92, v24);
  v75 = v31;
  v92 = v24;
  v48 = v24;
  v49 = v102;
  v47(v31, v94, v48);
  v94 = v44;
  v44(v101, 1, 2, v42);
  v50 = v90;
  v51 = v89;
  v52 = *(v89 + 48);
  v53 = v52(v49, 1, v90);
  v93 = v34;
  v80 = v42;
  v78 = v46;
  if (v53 == 1)
  {
    AnimationState.init()();
    v54 = v91;
    AnimationContext.init(state:environment:isLogicallyComplete:)();
    v55 = v54;
  }

  else
  {
    v56 = v91;
    v57 = v49;
    v58 = v73;
    outlined init with copy of AnimationContext<Float>?(v57, v73);
    result = v52(v58, 1, v50);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    (*(v51 + 32))(v56, v58, v50);
    v34 = v93;
    v55 = v56;
  }

  v60 = v97;
  ImplicitAnimationState.AnimationEntry.init(oldValue:newValue:animation:completion:animationState:floatContext:)(v74, v75, v87, v88, v101, v55, v100, v97);
  (*(v98 + 16))(v77, v60, v34);
  v61 = v79;
  swift_beginAccess();
  type metadata accessor for Array();

  Array.append(_:)();
  swift_endAccess();
  v62 = v95;
  swift_beginAccess();
  v63 = v86;
  v64 = v82;
  v65 = v96;
  (*(v86 + 16))(v82, v61 + v62, v96);
  v66 = v81;
  v67 = v80;
  v94(v81, 2, 2, v80);
  v68 = static ImplicitAnimationState.State.== infix(_:_:)(v64, v66);
  v69 = *(v63 + 8);
  v69(v66, v65);
  v69(v64, v65);
  if (v68)
  {
    v94(v64, 1, 2, v67);
    v70 = v95;
    swift_beginAccess();
    (*(v63 + 40))(v61 + v70, v64, v96);
    swift_endAccess();
  }

  v71 = v84;
  MEMORY[0x23EEADD60](v99, v83);
  (*(v98 + 8))(v97, v93);
  outlined destroy of PerspectiveCameraComponent?(v102, &_s7SwiftUI16AnimationContextVySfGSgMd, &_s7SwiftUI16AnimationContextVySfGSgMR);
  (*(v85 + 32))(v61 + *(*v61 + 96), v71, v92);
  return v61;
}

uint64_t specialized ImplicitAnimationState.shouldMerge(from:to:animation:context:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v41 = a2;
  v42 = a1;
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *(v4 + 88);
  v7 = type metadata accessor for ImplicitAnimationState.AnimationEntry();
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v39 = v8;
  v40 = v9;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v45 = &v39 - v12;
  v43 = v7;
  v44 = *(v7 - 8);
  v13 = *(v44 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v39 - v14;
  v16 = type metadata accessor for ImplicitAnimationState.State();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v39 - v19;
  v21 = type metadata accessor for Date();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v39 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v39 - v27;
  v29 = *(v4 + 112);
  swift_beginAccess();
  (*(v17 + 16))(v20, v3 + v29, v16);
  if ((*(v22 + 48))(v20, 2, v21))
  {
    (*(v17 + 8))(v20, v16);
  }

  else
  {
    v30 = v15;
    (*(v22 + 32))(v28, v20, v21);
    Date.init()();
    Date.timeIntervalSince(_:)();
    v31 = *(v22 + 8);
    v31(v26, v21);
    v32 = *(*v3 + 104);
    swift_beginAccess();
    v46 = *(v3 + v32);
    v33 = v43;
    type metadata accessor for Array();

    swift_getWitnessTable();
    v34 = v45;
    BidirectionalCollection.last.getter();
    v35 = v44;
    if ((*(v44 + 48))(v34, 1, v33) != 1)
    {
      (*(v35 + 32))(v30, v45, v33);

      v38 = *&v30[*(v33 + 40)];
      LODWORD(v46) = 1065353216;
      v36 = Animation.shouldMerge<A>(previous:value:time:context:)();
      v31(v28, v21);
      (*(v35 + 8))(v30, v33);
      return v36 & 1;
    }

    v31(v28, v21);
    (*(v40 + 8))(v45, v39);
  }

  v36 = 0;
  return v36 & 1;
}

uint64_t specialized ImplicitAnimationComponent.mutation<A>(entity:component:from:to:animation:completion:)(uint64_t a1, void (*a2)(char *, uint64_t, uint64_t, uint64_t), void (*a3)(char *, uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v45 = a2;
  v46 = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16AnimationContextVySfGSgMd, &_s7SwiftUI16AnimationContextVySfGSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v39 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14AnimationStateVySfGMd, &_s7SwiftUI14AnimationStateVySfGMR);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16AnimationContextVySfGMd, &_s7SwiftUI16AnimationContextVySfGMR);
  v19 = *(v44 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v44);
  v42 = &v39 - v21;
  v43 = v7;
  v22 = *v7;
  v23 = *(v22 + 16);
  swift_retain_n();
  if (v23 && (v24 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a6, a7), (v25 & 1) != 0) && (outlined init with copy of Cancellable(*(v22 + 56) + 40 * v24, v48), __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI14AnimationState_pMd, &_s19_RealityKit_SwiftUI14AnimationState_pMR), v26 = type metadata accessor for ImplicitAnimationState(), (swift_dynamicCast() & 1) != 0))
  {
    v39 = a7;
    v40 = v26;
    v27 = v47;
    AnimationState.init()();
    v28 = v42;
    AnimationContext.init(state:environment:isLogicallyComplete:)();
    v41 = v27;
    if (specialized ImplicitAnimationState.shouldMerge(from:to:animation:context:)(a4, v28))
    {
      v29 = v44;
      (*(v19 + 56))(v16, 1, 1, v44);
      v30 = v40;
      v31 = *(v40 + 48);
      v32 = *(v40 + 52);
      swift_allocObject();

      v33 = specialized ImplicitAnimationState.init(oldValue:newValue:animation:completion:context:)(v45, v46, a4, a5, v16);

      v49 = v30;
      v50 = &protocol witness table for ImplicitAnimationState<A>;
      v48[0] = v33;

      specialized Dictionary.subscript.setter(v48, a1, a6, v39);

      return (*(v19 + 8))(v42, v29);
    }

    else
    {

      ImplicitAnimationState.addAnimation(oldValue:newValue:animation:completion:)(v45, v46, a4, a5);

      return (*(v19 + 8))(v28, v44);
    }
  }

  else
  {
    v35 = type metadata accessor for ImplicitAnimationState();
    (*(v19 + 56))(v16, 1, 1, v44);
    v36 = *(v35 + 48);
    v37 = *(v35 + 52);
    swift_allocObject();

    v38 = specialized ImplicitAnimationState.init(oldValue:newValue:animation:completion:context:)(v45, v46, a4, a5, v16);

    v49 = v35;
    v50 = &protocol witness table for ImplicitAnimationState<A>;
    v48[0] = v38;

    specialized Dictionary.subscript.setter(v48, a1, a6, a7);
  }
}

uint64_t specialized SwiftUIImplicitAnimation.setComponent<A>(entity:component:from:to:)(uint64_t a1, void (*a2)(char *, uint64_t, uint64_t, uint64_t), void (*a3)(char *, uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  v17 = a4;
  v18 = a5;
  v9 = type metadata accessor for Entity.ComponentSet();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of Entity.components.getter();
  lazy protocol witness table accessor for type ImplicitAnimationComponent and conformance ImplicitAnimationComponent();
  Entity.ComponentSet.subscript.getter();
  (*(v10 + 8))(v13, v9);
  v14 = MEMORY[0x277D84F98];
  if (v19[0])
  {
    v14 = v19[0];
  }

  v20 = v14;
  specialized ImplicitAnimationComponent.mutation<A>(entity:component:from:to:animation:completion:)(a1, a2, a3, *(v5 + 16), *(v5 + 24), v17, v18);
  v19[4] = v20;
  v15 = dispatch thunk of Entity.components.modify();
  Entity.ComponentSet.subscript.setter();
  return v15(v19, 0);
}

unint64_t lazy protocol witness table accessor for type ImplicitAnimationComponent and conformance ImplicitAnimationComponent()
{
  result = lazy protocol witness table cache variable for type ImplicitAnimationComponent and conformance ImplicitAnimationComponent;
  if (!lazy protocol witness table cache variable for type ImplicitAnimationComponent and conformance ImplicitAnimationComponent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImplicitAnimationComponent and conformance ImplicitAnimationComponent);
  }

  return result;
}

uint64_t outlined init with copy of AnimationContext<Float>?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16AnimationContextVySfGSgMd, &_s7SwiftUI16AnimationContextVySfGSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>()
{
  result = lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>;
  if (!lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSnySiGMd, &_sSnySiGMR);
    lazy protocol witness table accessor for type Int and conformance Int();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *v5;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v11 = *(*(result - 8) + 80);
  v14 = v9 + ((v11 + 32) & ~v11);
  v15 = v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v17 = v12 * a3;
  if (v16)
  {
    v18 = *(v9 + 16);
    if (!__OFSUB__(v18, a2))
    {
      result = v15 + v17;
      v19 = v14 + v12 * a2;
      if (v15 + v17 < v19 || result >= v19 + (v18 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v19)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v21 = *(v9 + 16);
      v22 = __OFADD__(v21, v16);
      v23 = v21 + v16;
      if (!v22)
      {
        *(v9 + 16) = v23;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v17 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type SwiftUIImplicitAnimation and conformance SwiftUIImplicitAnimation(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ImplicitAnimationComponent.Key and conformance ImplicitAnimationComponent.Key()
{
  result = lazy protocol witness table cache variable for type ImplicitAnimationComponent.Key and conformance ImplicitAnimationComponent.Key;
  if (!lazy protocol witness table cache variable for type ImplicitAnimationComponent.Key and conformance ImplicitAnimationComponent.Key)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImplicitAnimationComponent.Key and conformance ImplicitAnimationComponent.Key);
  }

  return result;
}

void *specialized CircularBuffer.init(capacity:initialValue:)(uint64_t a1, float a2, double a3)
{
  *(v3 + 56) = 0;
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 32) = a1;
  if (a1 < 0)
  {
    __break(1u);
    __break(1u);
    __break(1u);
    swift_once();
    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, logger);
    v10 = v4;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138543362;
      v15 = v4;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_23B824000, v11, v12, "Can't initialize array! %{public}@", v13, 0xCu);
      outlined destroy of NSObject?(v14);
      MEMORY[0x23EEB0B70](v14, -1, -1);
      MEMORY[0x23EEB0B70](v13, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  v5 = v3;

  if (a1)
  {
    v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v7 + 16) = a1;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v19 = 0;
  v18[0] = v7 + 32;
  v18[1] = a1;
  result = partial apply for specialized implicit closure #2 in implicit closure #1 in CircularBuffer.init(capacity:initialValue:)(v18, &v19);
  if (v19 > a1)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    __break(1u);
    goto LABEL_18;
  }

  if (v18[0])
  {
    if (v7 + 32 != v18[0])
    {
      goto LABEL_17;
    }

    *(v7 + 16) = v19;

    swift_beginAccess();
    v17 = *(v3 + 56);
    *(v3 + 56) = v7;

    return v5;
  }

LABEL_18:
  __break(1u);
  return result;
}

__n128 *specialized CircularBuffer.init(capacity:initialValue:)(int64_t a1, double a2, __n128 a3, __n128 a4, float a5)
{
  v5[6].n128_u64[0] = 0;
  v5[1].n128_f64[0] = a2;
  v5[2] = a3;
  v5[3] = a4;
  v5[4].n128_f32[0] = a5;
  v5[5].n128_u64[0] = 0;
  v5[5].n128_u64[1] = 0;
  v5[4].n128_u64[1] = a1;
  if (a1 < 0)
  {
    __break(1u);
    __break(1u);
    __break(1u);
    swift_once();
    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, logger);
    v12 = v6;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138543362;
      v17 = v6;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v18;
      *v16 = v18;
      _os_log_impl(&dword_23B824000, v13, v14, "Can't initialize array! %{public}@", v15, 0xCu);
      outlined destroy of NSObject?(v16);
      MEMORY[0x23EEB0B70](v16, -1, -1);
      MEMORY[0x23EEB0B70](v15, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  v7 = v5;

  if (a1)
  {
    v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v9 + 16) = a1;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v21 = 0;
  v20[0] = v9 + 32;
  v20[1] = a1;
  result = partial apply for specialized implicit closure #2 in implicit closure #1 in CircularBuffer.init(capacity:initialValue:)(v20, &v21);
  if (v21 > a1)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    __break(1u);
    goto LABEL_18;
  }

  if (v20[0])
  {
    if (v9 + 32 != v20[0])
    {
      goto LABEL_17;
    }

    *(v9 + 16) = v21;

    swift_beginAccess();
    v19 = v5[6].n128_u64[0];
    v5[6].n128_u64[0] = v9;

    return v7;
  }

LABEL_18:
  __break(1u);
  return result;
}

__n128 *specialized CircularBuffer.init(capacity:initialValue:)(int64_t a1, double a2, __n128 a3, __n128 a4)
{
  v4[5].n128_u64[1] = 0;
  v4[1].n128_f64[0] = a2;
  v4[2] = a3;
  v4[3] = a4;
  v4[4].n128_u64[1] = 0;
  v4[5].n128_u64[0] = 0;
  v4[4].n128_u64[0] = a1;
  if (a1 < 0)
  {
    __break(1u);
    __break(1u);
    __break(1u);
    swift_once();
    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, logger);
    v11 = v5;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138543362;
      v16 = v5;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      _os_log_impl(&dword_23B824000, v12, v13, "Can't initialize array! %{public}@", v14, 0xCu);
      outlined destroy of NSObject?(v15);
      MEMORY[0x23EEB0B70](v15, -1, -1);
      MEMORY[0x23EEB0B70](v14, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  v6 = v4;

  if (a1)
  {
    v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v8 + 16) = a1;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v20 = 0;
  v19[0] = v8 + 32;
  v19[1] = a1;
  result = partial apply for specialized implicit closure #2 in implicit closure #1 in CircularBuffer.init(capacity:initialValue:)(v19, &v20);
  if (v20 > a1)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    __break(1u);
    goto LABEL_18;
  }

  if (v19[0])
  {
    if (v8 + 32 != v19[0])
    {
      goto LABEL_17;
    }

    *(v8 + 16) = v20;

    swift_beginAccess();
    v18 = v4[5].n128_u64[1];
    v4[5].n128_u64[1] = v8;

    return v6;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *specialized implicit closure #2 in implicit closure #1 in CircularBuffer.init(capacity:initialValue:)(void *result, void *a2, uint64_t a3)
{
  v3 = *(a3 + 72);
  if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (v3)
    {
      v4 = *(a3 + 16);
      v5 = *(a3 + 32);
      v6 = *(a3 + 48);
      v7 = *(a3 + 64);
      v8 = *result + 32;
      v9 = *(a3 + 72);
      do
      {
        *(v8 - 32) = v4;
        *(v8 - 16) = v5;
        *v8 = v6;
        *(v8 + 16) = v7;
        v8 += 64;
        --v9;
      }

      while (v9);
    }

    *a2 = v3;
  }

  return result;
}

uint64_t specialized CircularBuffer.at(_:)(uint64_t result)
{
  if ((result & 0x8000000000000000) == 0 && v1[5] > result)
  {
    v2 = v1[6];
    v3 = __OFSUB__(v2, result);
    v4 = v2 - result;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      v5 = v1[4];
      v6 = v4 + v5;
      if (!__OFADD__(v4, v5))
      {
        if (v5)
        {
          if (v5 == -1 && v6 == 0x8000000000000000)
          {
            goto LABEL_19;
          }

          result = swift_beginAccess();
          v7 = v1[7];
          if (!v7)
          {
LABEL_20:
            __break(1u);
            return result;
          }

          v8 = v6 % v5;
          if (((v6 % v5) & 0x8000000000000000) == 0)
          {
            if (v8 < *(v7 + 16))
            {
              v9 = v7 + 16 * v8;
              result = *(v9 + 32);
              v10 = *(v9 + 40);
              return result;
            }

            goto LABEL_18;
          }

LABEL_17:
          __break(1u);
LABEL_18:
          __break(1u);
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

LABEL_16:
        __break(1u);
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

  return 0;
}

uint64_t specialized CircularBuffer.at(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result < 0 || v2[9] <= result)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v11 = 1;
    goto LABEL_13;
  }

  v3 = v2[10];
  v4 = __OFSUB__(v3, result);
  v5 = v3 - result;
  if (v4)
  {
    __break(1u);
    goto LABEL_15;
  }

  v6 = v2[8];
  v7 = v5 + v6;
  if (__OFADD__(v5, v6))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v6)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = a2;
  if (v6 == -1 && v7 == 0x8000000000000000)
  {
    goto LABEL_19;
  }

  result = swift_beginAccess();
  v9 = v2[11];
  if (v9)
  {
    v10 = v7 % v6;
    if (((v7 % v6) & 0x8000000000000000) == 0)
    {
      if (v10 < *(v9 + 16))
      {
        a2 = v8;
        v11 = 0;
        v12 = (v9 + 48 * v10);
        v13 = v12[4];
        v14 = v12[6];
        v15 = v12[7];
        v16 = v12[8];
        v17 = v12[9];
LABEL_13:
        *a2 = v13;
        *(a2 + 8) = 0;
        *(a2 + 16) = v14;
        *(a2 + 24) = v15;
        *(a2 + 32) = v16;
        *(a2 + 40) = v17;
        *(a2 + 48) = v11;
        return result;
      }

      goto LABEL_18;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  if (result < 0 || v2[10] <= result)
  {
    v13 = 0;
    v16 = 0;
    v11 = 1;
    v14 = 0uLL;
    v15 = 0uLL;
    goto LABEL_13;
  }

  v3 = v2[11];
  v4 = __OFSUB__(v3, result);
  v5 = v3 - result;
  if (v4)
  {
    __break(1u);
    goto LABEL_15;
  }

  v6 = v2[9];
  v7 = v5 + v6;
  if (__OFADD__(v5, v6))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v6)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = a2;
  if (v6 == -1 && v7 == 0x8000000000000000)
  {
    goto LABEL_19;
  }

  result = swift_beginAccess();
  v9 = v2[12];
  if (v9)
  {
    v10 = v7 % v6;
    if (((v7 % v6) & 0x8000000000000000) == 0)
    {
      if (v10 < *(v9 + 16))
      {
        a2 = v8;
        v11 = 0;
        v12 = v9 + (v10 << 6);
        v13 = *(v12 + 32);
        v14 = *(v12 + 48);
        v15 = *(v12 + 64);
        v16 = *(v12 + 80);
LABEL_13:
        *a2 = v13;
        *(a2 + 8) = 0;
        *(a2 + 16) = v14;
        *(a2 + 32) = v15;
        *(a2 + 48) = v16;
        *(a2 + 52) = v11;
        return result;
      }

      goto LABEL_18;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  __break(1u);
  return result;
}

void specialized CircularBuffer.pushNew(_:)(uint64_t a1@<X8>, double a2@<D0>, __n128 a3@<Q1>, __n128 a4@<Q2>, float a5@<S3>)
{
  v7 = v5[11];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
    goto LABEL_23;
  }

  v10 = v5[9];
  if (!v10)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v9 == 0x8000000000000000 && v10 == -1)
  {
    goto LABEL_27;
  }

  v14 = v9 % v10;
  v5[11] = v9 % v10;
  if (v5[10] == v10)
  {
    swift_beginAccess();
    v15 = v5[12];
    if (!v15)
    {
LABEL_31:
      __break(1u);
      return;
    }

    if ((v14 & 0x8000000000000000) != 0)
    {
      goto LABEL_28;
    }

    if (v14 >= *(v15 + 16))
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v16 = 0;
    v17 = v15 + (v14 << 6);
    v18 = *(v17 + 32);
    v26 = *(v17 + 64);
    v27 = *(v17 + 48);
    v19 = *(v17 + 80);
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v16 = 1;
    v26 = 0u;
    v27 = 0u;
  }

  swift_beginAccess();
  v20 = v5[12];
  if (!v20)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v21 = v5[12];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[12] = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v20 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v20);
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
    goto LABEL_24;
  }

  if (v14 >= *(v20 + 2))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v23 = &v20[64 * v14];
  v23[2].n128_f64[0] = a2;
  v23[3] = a3;
  v23[4] = a4;
  v23[5].n128_f32[0] = a5;
  v5[12] = v20;
  swift_endAccess();
  v24 = v5[10];
  v8 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v8)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v10 < v25)
  {
    v25 = v10;
  }

  v5[10] = v25;
  *a1 = v18;
  *(a1 + 8) = 0;
  *(a1 + 16) = v27;
  *(a1 + 32) = v26;
  *(a1 + 48) = v19;
  *(a1 + 52) = v16;
}

void specialized CircularBuffer.pushNew(_:)(float a1, double a2)
{
  v3 = v2[6];
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
    goto LABEL_22;
  }

  v6 = v2[4];
  if (!v6)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v5 == 0x8000000000000000 && v6 == -1)
  {
    goto LABEL_26;
  }

  v10 = v5 % v6;
  v2[6] = v5 % v6;
  if (v2[5] == v6)
  {
    swift_beginAccess();
    v11 = v2[7];
    if (!v11)
    {
LABEL_30:
      __break(1u);
      return;
    }

    if ((v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_27;
    }

    if (v10 >= *(v11 + 16))
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v12 = v11 + 16 * v10;
    v13 = *(v12 + 32);
    v14 = *(v12 + 40);
  }

  swift_beginAccess();
  v15 = v2[7];
  if (!v15)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v16 = v2[7];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2[7] = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v15);
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
    goto LABEL_23;
  }

  if (v10 >= *(v15 + 2))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v18 = &v15[16 * v10];
  *(v18 + 8) = a1;
  *(v18 + 5) = a2;
  v2[7] = v15;
  v19 = v2[5];
  v4 = __OFADD__(v19, 1);
  v20 = v19 + 1;
  if (v4)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v6 < v20)
  {
    v20 = v6;
  }

  v2[5] = v20;
}

void specialized CircularBuffer.pushNew(_:)(uint64_t a1@<X8>, double a2@<D0>, __n128 a3@<Q1>, __n128 a4@<Q2>)
{
  v6 = v4[10];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
    goto LABEL_23;
  }

  v9 = v4[8];
  if (!v9)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 0x8000000000000000 && v9 == -1)
  {
    goto LABEL_27;
  }

  v12 = v8 % v9;
  v4[10] = v8 % v9;
  v13 = v4[9];
  if (v13 == v9)
  {
    swift_beginAccess();
    v18 = v4[11];
    if (!v18)
    {
LABEL_31:
      __break(1u);
      return;
    }

    if ((v12 & 0x8000000000000000) != 0)
    {
      goto LABEL_28;
    }

    if (v12 >= *(v18 + 16))
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v19 = (v18 + 48 * v12);
    v26 = v19[4];
    v14 = v19[6];
    v15 = v19[7];
    v16 = v19[8];
    v17 = v19[9];
  }

  else
  {
    v26 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
  }

  swift_beginAccess();
  v20 = v4[11];
  if (!v20)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v21 = v4[11];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4[11] = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v20 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v20);
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
    goto LABEL_24;
  }

  if (v12 >= *(v20 + 2))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v23 = &v20[48 * v12];
  v23[2].n128_f64[0] = a2;
  v23[3] = a3;
  v23[4] = a4;
  v4[11] = v20;
  swift_endAccess();
  v24 = v4[9];
  v7 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v7)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v9 < v25)
  {
    v25 = v9;
  }

  v4[9] = v25;
  *a1 = v26;
  *(a1 + 8) = 0;
  *(a1 + 16) = v14;
  *(a1 + 24) = v15;
  *(a1 + 32) = v16;
  *(a1 + 40) = v17;
  *(a1 + 48) = v13 != v9;
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance DeviceMotionEstimator.ActiveComponents(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *protocol witness for SetAlgebra.remove(_:) in conformance DeviceMotionEstimator.ActiveComponents@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *protocol witness for SetAlgebra.update(with:) in conformance DeviceMotionEstimator.ActiveComponents@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance DeviceMotionEstimator.ActiveComponents@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = specialized SetAlgebra<>.init(arrayLiteral:)(a1);

  *a2 = v3;
  return result;
}

void *DeviceMotionEstimator.init(desc:)(float32x4_t *a1)
{
  *(v2 + 120) = 0u;
  *(v2 + 104) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 136) = 1065353216;
  *(v2 + 140) = 0;
  v4 = a1[1];
  v5 = a1[2];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v4;
  *(v2 + 48) = v5;
  v6 = a1->i64[0];
  v7 = a1->f32[2];
  v8 = a1[2].f32[2];
  v4.i64[0] = a1->i64[0];
  v4.i64[1] = __PAIR64__(LODWORD(v8), LODWORD(v7));
  *(v2 + 144) = 981668463;
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vcgezq_f32(v4)))) & 1) != 0 || (v3 = a1, v9 = a1[2].f32[3], v8 >= v9) || v9 <= 0.0 || a1[1].i64[0] < 1 || a1[2].i64[0] < 1)
  {
    __break(1u);
  }

  else
  {
    v1 = v2;
    v44 = v6;
    v45 = v7;
    if (one-time initialization token for logger == -1)
    {
      goto LABEL_7;
    }
  }

  swift_once();
LABEL_7:
  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, logger);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v47 = v14;
    *v13 = 136446210;
    v15 = v3[1];
    v46[0] = *v3;
    v46[1] = v15;
    v46[2] = v3[2];
    v16 = String.init<A>(describing:)();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v47);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_23B824000, v11, v12, "Creating DeviceMotionEstimator with desc=%{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    MEMORY[0x23EEB0B70](v14, -1, -1);
    MEMORY[0x23EEB0B70](v13, -1, -1);
  }

  Transform.init()();
  v40 = v20;
  v42 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI14CircularBufferCyAA21DeviceMotionEstimatorC11FrameRecord33_1B4D605E33761C04C87C5DD249421141LLVGMd, &_s19_RealityKit_SwiftUI14CircularBufferCyAA21DeviceMotionEstimatorC11FrameRecord33_1B4D605E33761C04C87C5DD249421141LLVGMR);
  swift_allocObject();
  v21 = specialized CircularBuffer.init(capacity:initialValue:)(4, 0.0, v40, v42);
  v22 = v1[10];
  v1[10] = v21;

  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of DeviceMotionEstimator.init(desc:));
  v43 = v23;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of DeviceMotionEstimator.init(desc:));
  v41 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI14CircularBufferCyAA21DeviceMotionEstimatorC16DerivativeRecord33_1B4D605E33761C04C87C5DD249421141LLVGMd, &_s19_RealityKit_SwiftUI14CircularBufferCyAA21DeviceMotionEstimatorC16DerivativeRecord33_1B4D605E33761C04C87C5DD249421141LLVGMR);
  swift_allocObject();
  v25 = specialized CircularBuffer.init(capacity:initialValue:)(4, 0.0, v43, v41, 0.0);
  v26 = v1[11];
  v1[11] = v25;

  if (*&v44 <= 0.0)
  {
    v27 = 4;
    if (*(&v44 + 1) > 0.0)
    {
      v27 = 6;
    }

    if (v45 <= 0.0)
    {
      v27 = 2 * (*(&v44 + 1) > 0.0);
    }
  }

  else
  {
    v27 = 5;
    if (*(&v44 + 1) > 0.0)
    {
      v27 = 7;
    }

    v28 = 3;
    if (*(&v44 + 1) <= 0.0)
    {
      v28 = 1;
    }

    if (v45 <= 0.0)
    {
      v27 = v28;
    }
  }

  v1[8] = v27;

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *&v46[0] = v32;
    *v31 = 136446210;
    v47 = v1[8];
    v33 = String.init<A>(describing:)();
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, v46);

    *(v31 + 4) = v35;
    _os_log_impl(&dword_23B824000, v29, v30, "Using activeComponents = %{public}s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v32);
    MEMORY[0x23EEB0B70](v32, -1, -1);
    MEMORY[0x23EEB0B70](v31, -1, -1);
  }

  if (!DeviceMotionEstimator.makeCircularBuffersAsNeeded()())
  {
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_23B824000, v36, v37, "Can't create all the CircularBuffer's!  Are we low on memory?", v38, 2u);
      MEMORY[0x23EEB0B70](v38, -1, -1);
    }

    return 0;
  }

  return v1;
}

Swift::Void __swiftcall DeviceMotionEstimator.reset()()
{
  v1 = *(v0 + 80);
  if (!v1)
  {
    __break(1u);
    goto LABEL_14;
  }

  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  v2 = *(v0 + 88);
  if (!v2)
  {
LABEL_14:
    __break(1u);
    return;
  }

  *(v2 + 80) = 0;
  *(v2 + 88) = 0;
  v3 = *(v0 + 104);
  if (v3)
  {
    *(v3 + 40) = 0;
    *(v3 + 48) = 0;
  }

  v4 = *(v0 + 96);
  if (v4)
  {
    *(v4 + 40) = 0;
    *(v4 + 48) = 0;
  }

  v5 = *(v0 + 112);
  if (v5)
  {
    *(v5 + 40) = 0;
    *(v5 + 48) = 0;
  }

  *(v0 + 132) = 0;
  v6 = *(v0 + 56);
  v7 = 1.0;
  if (v6 <= 0.0)
  {
    v8 = *(v0 + 60);
    v7 = 0.0;
    if (v8 >= 0.0)
    {
      v7 = 1.0 - ((0.0 - v6) / (v8 - v6));
    }
  }

  *(v0 + 136) = v7;
}

BOOL DeviceMotionEstimator.makeCircularBuffersAsNeeded()()
{
  v1 = v0;
  v2 = v0[8];
  if ((v2 & 2) != 0)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, logger);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_23B824000, v4, v5, "Creating linearSpeed buffer.", v6, 2u);
      MEMORY[0x23EEB0B70](v6, -1, -1);
    }

    v7 = v1[4];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI14CircularBufferCyAA21DeviceMotionEstimatorC11SpeedSample33_1B4D605E33761C04C87C5DD249421141LLVGMd, &_s19_RealityKit_SwiftUI14CircularBufferCyAA21DeviceMotionEstimatorC11SpeedSample33_1B4D605E33761C04C87C5DD249421141LLVGMR);
    swift_allocObject();
    v8 = specialized CircularBuffer.init(capacity:initialValue:)(v7, 0.0, 0.0);
    v9 = v1[12];
    v1[12] = v8;

    if (!v1[12])
    {
      return 0;
    }
  }

  if (v2)
  {
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
      _os_log_impl(&dword_23B824000, v11, v12, "Creating angularSpeed buffer.", v13, 2u);
      MEMORY[0x23EEB0B70](v13, -1, -1);
    }

    v14 = v1[4];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI14CircularBufferCyAA21DeviceMotionEstimatorC11SpeedSample33_1B4D605E33761C04C87C5DD249421141LLVGMd, &_s19_RealityKit_SwiftUI14CircularBufferCyAA21DeviceMotionEstimatorC11SpeedSample33_1B4D605E33761C04C87C5DD249421141LLVGMR);
    swift_allocObject();
    v15 = specialized CircularBuffer.init(capacity:initialValue:)(v14, 0.0, 0.0);
    v16 = v1[13];
    v1[13] = v15;

    if (!v1[13])
    {
      return 0;
    }
  }

  if ((v2 & 4) == 0)
  {
    return 1;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, logger);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_23B824000, v18, v19, "Creating orbitalSpeed buffer.", v20, 2u);
    MEMORY[0x23EEB0B70](v20, -1, -1);
  }

  v21 = v1[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI14CircularBufferCyAA21DeviceMotionEstimatorC11SpeedSample33_1B4D605E33761C04C87C5DD249421141LLVGMd, &_s19_RealityKit_SwiftUI14CircularBufferCyAA21DeviceMotionEstimatorC11SpeedSample33_1B4D605E33761C04C87C5DD249421141LLVGMR);
  swift_allocObject();
  v22 = specialized CircularBuffer.init(capacity:initialValue:)(v21, 0.0, 0.0);
  v23 = v1[14];
  v1[14] = v22;

  return v1[14] != 0;
}

void DeviceMotionEstimator.updateMotionEstimate(time:orbit:)(uint64_t a1, uint64_t a2, char a3, double a4)
{
  *(v4 + 72) = a4;
  if (!*(v4 + 80))
  {
    __break(1u);
    goto LABEL_36;
  }

  specialized CircularBuffer.at(_:)(0, v41);
  if ((v44 & 1) == 0)
  {
    v8 = v41[0];
    v37 = v43;
    *oslog = v42;
    specialized CircularBuffer.at(_:)(*(v4 + 48), v45);
    if ((v48 & 1) == 0)
    {
      v13 = v8 - v45[0];
      if (v8 - v45[0] <= 0.0)
      {
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v33 = type metadata accessor for Logger();
        __swift_project_value_buffer(v33, logger);
        osloga = Logger.logObject.getter();
        v10 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(osloga, v10))
        {
          goto LABEL_9;
        }

        v11 = swift_slowAlloc();
        *v11 = 0;
        v12 = "dt cannot be 0!  Not updating motion estimate...";
        goto LABEL_8;
      }

      if (*(v4 + 88))
      {
        v35 = v47;
        v36 = v46;

        v16 = DeviceMotionEstimator.computeDerivatives(dt:recordNow:recordPrevious:orbit:)(a1, a2, a3 & 1, v13, v14, *oslog, v37, v15, v36, v35);
        specialized CircularBuffer.pushNew(_:)(v49, v16, v17, v18, v19);

        if (*(v4 + 88))
        {
          specialized CircularBuffer.at(_:)(0, v50);
          if (v54)
          {
            return;
          }

          v20 = v51;
          v21 = v53;
          v22 = *(v4 + 64);
          if ((v22 & 1) == 0)
          {
            goto LABEL_19;
          }

          *oslogb = v51;
          if (*(v4 + 104))
          {
            v23 = vmulq_f32(v52, v52);
            v24 = sqrtf(v23.f32[2] + vaddv_f32(*v23.f32));
            v25 = *(v4 + 104);

            specialized CircularBuffer.pushNew(_:)(v24, v8);

            v20 = *oslogb;
LABEL_19:
            if ((v22 & 2) == 0)
            {
LABEL_22:
              if ((v22 & 4) == 0)
              {
                goto LABEL_25;
              }

              if (*(v4 + 112))
              {
                v29 = *(v4 + 112);

                specialized CircularBuffer.pushNew(_:)(v21, v8);

LABEL_25:
                DeviceMotionEstimator.computeSmoothedSpeeds()();
                v30 = vmul_f32(*(v4 + 20), *(v4 + 124));
                v31 = ((*(v4 + 16) * *(v4 + 120)) + v30.f32[0]) + v30.f32[1];
                *(v4 + 132) = v31;
                v32 = *(v4 + 56);
                if (v31 >= v32)
                {
                  v34 = *(v4 + 60);
                  if (v34 >= v31)
                  {
                    *(v4 + 136) = 1.0 - ((v31 - v32) / (v34 - v32));
                  }

                  else
                  {
                    *(v4 + 136) = 0;
                  }
                }

                else
                {
                  *(v4 + 136) = 1065353216;
                }

                return;
              }

LABEL_40:
              __break(1u);
              return;
            }

            if (*(v4 + 96))
            {
              v26 = vmulq_f32(v20, v20);
              v27 = sqrtf(v26.f32[2] + vaddv_f32(*v26.f32));
              v28 = *(v4 + 96);

              specialized CircularBuffer.pushNew(_:)(v27, v8);

              goto LABEL_22;
            }

LABEL_39:
            __break(1u);
            goto LABEL_40;
          }

LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

LABEL_36:
      __break(1u);
      goto LABEL_37;
    }
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, logger);
  osloga = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(osloga, v10))
  {
    goto LABEL_9;
  }

  v11 = swift_slowAlloc();
  *v11 = 0;
  v12 = "Can't get previous framerecords.";
LABEL_8:
  _os_log_impl(&dword_23B824000, osloga, v10, v12, v11, 2u);
  MEMORY[0x23EEB0B70](v11, -1, -1);
LABEL_9:
}

uint64_t DeviceMotionEstimator.computeSmoothedSpeeds()()
{
  v1 = v0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  v2 = *(v0 + 64);
  if (v2)
  {
    v3 = *(v0 + 104);
    if (!v3)
    {
LABEL_152:
      __break(1u);
      goto LABEL_153;
    }

    v4 = *(v1 + 40);
    result = specialized CircularBuffer.at(_:)(0);
    if (v7)
    {
LABEL_153:
      __break(1u);
      goto LABEL_154;
    }

    v8 = v3[5];
    if (v8 < 1)
    {
      goto LABEL_137;
    }

    if (v8 != 1)
    {
      v10 = v6;
      result = swift_beginAccess();
      v11 = v3[4];
      if (!v11)
      {
        goto LABEL_140;
      }

      v12 = v10;
      v13 = v3[6];
      v14 = v3[7];
      v9 = 1;
      while (v8 != v9)
      {
        v15 = v13 - v9;
        if (__OFSUB__(v13, v9))
        {
          goto LABEL_120;
        }

        v16 = __OFADD__(v15, v11);
        v17 = v15 + v11;
        if (v16)
        {
          goto LABEL_121;
        }

        if (v11 == -1 && v17 == 0x8000000000000000)
        {
          goto LABEL_134;
        }

        if (!v14)
        {
          goto LABEL_149;
        }

        v18 = v17 % v11;
        if ((v18 & 0x8000000000000000) != 0)
        {
          goto LABEL_122;
        }

        if (v18 >= *(v14 + 16))
        {
          goto LABEL_123;
        }

        if (v4 <= v12 - *(v14 + 32 + 16 * v18 + 8))
        {
          goto LABEL_21;
        }

        if (v8 == ++v9)
        {
          v9 = v8;
          goto LABEL_21;
        }
      }

      goto LABEL_119;
    }

    v9 = 1;
LABEL_21:
    v19 = 0;
    v20 = 0.0;
    while (1)
    {
      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v19 >= v3[5])
      {
        goto LABEL_143;
      }

      v22 = v3[6];
      v16 = __OFSUB__(v22, v19);
      v23 = v22 - v19;
      if (v16)
      {
        goto LABEL_99;
      }

      v24 = v3[4];
      v25 = v23 + v24;
      if (__OFADD__(v23, v24))
      {
        goto LABEL_100;
      }

      if (!v24)
      {
        goto LABEL_101;
      }

      if (v24 == -1 && v25 == 0x8000000000000000)
      {
        goto LABEL_116;
      }

      result = swift_beginAccess();
      v26 = v3[7];
      if (!v26)
      {
        goto LABEL_144;
      }

      v27 = v25 % v24;
      if (v25 % v24 < 0)
      {
        goto LABEL_102;
      }

      if (v27 >= *(v26 + 16))
      {
        goto LABEL_103;
      }

      v20 = v20 + ((1.0 / v9) * *(v26 + 16 * v27 + 32));
      *(v1 + 120) = v20;
      ++v19;
      if (v21 == v9)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

LABEL_33:
  if ((v2 & 2) != 0)
  {
    v28 = *(v1 + 96);
    if (!v28)
    {
LABEL_154:
      __break(1u);
      goto LABEL_155;
    }

    v29 = *(v1 + 40);
    result = specialized CircularBuffer.at(_:)(0);
    if (v31)
    {
LABEL_155:
      __break(1u);
      goto LABEL_156;
    }

    v32 = v28[5];
    if (v32 < 1)
    {
      goto LABEL_138;
    }

    if (v32 != 1)
    {
      v34 = v30;
      result = swift_beginAccess();
      v35 = v28[4];
      if (!v35)
      {
        goto LABEL_141;
      }

      v36 = v34;
      v37 = v28[6];
      v38 = v28[7];
      v33 = 1;
      while (v32 != v33)
      {
        v39 = v37 - v33;
        if (__OFSUB__(v37, v33))
        {
          goto LABEL_125;
        }

        v16 = __OFADD__(v39, v35);
        v40 = v39 + v35;
        if (v16)
        {
          goto LABEL_126;
        }

        if (v35 == -1 && v40 == 0x8000000000000000)
        {
          goto LABEL_135;
        }

        if (!v38)
        {
          goto LABEL_150;
        }

        v41 = v40 % v35;
        if ((v41 & 0x8000000000000000) != 0)
        {
          goto LABEL_127;
        }

        if (v41 >= *(v38 + 16))
        {
          goto LABEL_128;
        }

        if (v29 <= v36 - *(v38 + 32 + 16 * v41 + 8))
        {
          goto LABEL_53;
        }

        if (v32 == ++v33)
        {
          v33 = v32;
          goto LABEL_53;
        }
      }

      goto LABEL_124;
    }

    v33 = 1;
LABEL_53:
    v42 = 0;
    v43 = 0.0;
    while (1)
    {
      v44 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      if (v42 >= v28[5])
      {
        goto LABEL_145;
      }

      v45 = v28[6];
      v16 = __OFSUB__(v45, v42);
      v46 = v45 - v42;
      if (v16)
      {
        goto LABEL_105;
      }

      v47 = v28[4];
      v48 = v46 + v47;
      if (__OFADD__(v46, v47))
      {
        goto LABEL_106;
      }

      if (!v47)
      {
        goto LABEL_107;
      }

      if (v47 == -1 && v48 == 0x8000000000000000)
      {
        goto LABEL_117;
      }

      result = swift_beginAccess();
      v49 = v28[7];
      if (!v49)
      {
        goto LABEL_146;
      }

      v50 = v48 % v47;
      if (v48 % v47 < 0)
      {
        goto LABEL_108;
      }

      if (v50 >= *(v49 + 16))
      {
        goto LABEL_109;
      }

      v43 = v43 + ((1.0 / v33) * *(v49 + 16 * v50 + 32));
      *(v1 + 124) = v43;
      ++v42;
      if (v44 == v33)
      {
        goto LABEL_65;
      }
    }

LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
LABEL_119:
    __break(1u);
LABEL_120:
    __break(1u);
LABEL_121:
    __break(1u);
LABEL_122:
    __break(1u);
LABEL_123:
    __break(1u);
LABEL_124:
    __break(1u);
LABEL_125:
    __break(1u);
LABEL_126:
    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
LABEL_141:
    __break(1u);
    goto LABEL_142;
  }

LABEL_65:
  if ((v2 & 4) != 0)
  {
    v51 = *(v1 + 112);
    if (!v51)
    {
LABEL_156:
      __break(1u);
      goto LABEL_157;
    }

    v52 = *(v1 + 40);
    result = specialized CircularBuffer.at(_:)(0);
    if (v54)
    {
LABEL_157:
      __break(1u);
      return result;
    }

    v55 = v51[5];
    if (v55 < 1)
    {
      goto LABEL_139;
    }

    if (v55 != 1)
    {
      v57 = v53;
      result = swift_beginAccess();
      v58 = v51[4];
      if (!v58)
      {
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
LABEL_144:
        __break(1u);
LABEL_145:
        __break(1u);
LABEL_146:
        __break(1u);
LABEL_147:
        __break(1u);
LABEL_148:
        __break(1u);
LABEL_149:
        __break(1u);
LABEL_150:
        __break(1u);
LABEL_151:
        __break(1u);
        goto LABEL_152;
      }

      v59 = v57;
      v60 = v51[6];
      v61 = v51[7];
      v56 = 1;
      while (v55 != v56)
      {
        v62 = v60 - v56;
        if (__OFSUB__(v60, v56))
        {
          goto LABEL_130;
        }

        v16 = __OFADD__(v62, v58);
        v63 = v62 + v58;
        if (v16)
        {
          goto LABEL_131;
        }

        if (v58 == -1 && v63 == 0x8000000000000000)
        {
          goto LABEL_136;
        }

        if (!v61)
        {
          goto LABEL_151;
        }

        v64 = v63 % v58;
        if ((v64 & 0x8000000000000000) != 0)
        {
          goto LABEL_132;
        }

        if (v64 >= *(v61 + 16))
        {
          goto LABEL_133;
        }

        if (v52 <= v59 - *(v61 + 32 + 16 * v64 + 8))
        {
          goto LABEL_85;
        }

        if (v55 == ++v56)
        {
          v56 = v55;
          goto LABEL_85;
        }
      }

      goto LABEL_129;
    }

    v56 = 1;
LABEL_85:
    v65 = 0;
    v66 = 0.0;
    while (1)
    {
      v67 = v65 + 1;
      if (__OFADD__(v65, 1))
      {
        goto LABEL_110;
      }

      if (v65 >= v51[5])
      {
        goto LABEL_147;
      }

      v68 = v51[6];
      v16 = __OFSUB__(v68, v65);
      v69 = v68 - v65;
      if (v16)
      {
        goto LABEL_111;
      }

      v70 = v51[4];
      v71 = v69 + v70;
      if (__OFADD__(v69, v70))
      {
        goto LABEL_112;
      }

      if (!v70)
      {
        goto LABEL_113;
      }

      if (v70 == -1 && v71 == 0x8000000000000000)
      {
        goto LABEL_118;
      }

      result = swift_beginAccess();
      v72 = v51[7];
      if (!v72)
      {
        goto LABEL_148;
      }

      v73 = v71 % v70;
      if (v71 % v70 < 0)
      {
        goto LABEL_114;
      }

      if (v73 >= *(v72 + 16))
      {
        goto LABEL_115;
      }

      v66 = v66 + ((1.0 / v56) * *(v72 + 16 * v73 + 32));
      *(v1 + 128) = v66;
      ++v65;
      if (v67 == v56)
      {
        return result;
      }
    }
  }

  return result;
}

double DeviceMotionEstimator.computeDerivatives(dt:recordNow:recordPrevious:orbit:)(uint64_t a1, uint64_t a2, char a3, double a4, double a5, float32x4_t a6, float32x4_t a7, double a8, float32x4_t a9, float32x4_t a10)
{
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of DeviceMotionEstimator.computeDerivatives(dt:recordNow:recordPrevious:orbit:));
  v15 = *(v10 + 64);
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of DeviceMotionEstimator.computeDerivatives(dt:recordNow:recordPrevious:orbit:));
  if (v15)
  {
    v16 = vmulq_f32(a10, a10);
    *v16.i8 = vadd_f32(*v16.i8, *&vextq_s8(v16, v16, 8uLL));
    v16.i32[0] = vadd_f32(*v16.i8, vdup_lane_s32(*v16.i8, 1)).u32[0];
    v17 = vrecpe_f32(v16.u32[0]);
    v18 = vmul_f32(v17, vrecps_f32(v16.u32[0], v17));
    v19 = vmulq_n_f32(vmulq_f32(a10, xmmword_23B91C020), vmul_f32(v18, vrecps_f32(v16.u32[0], v18)).f32[0]);
    v20 = vnegq_f32(v19);
    v21 = vtrn2q_s32(v19, vtrn1q_s32(v19, v20));
    v22 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v19, v20, 8uLL), *a7.f32, 1), vextq_s8(v21, v21, 8uLL), a7.f32[0]);
    v23 = vrev64q_s32(v19);
    v23.i32[0] = v20.i32[1];
    v23.i32[3] = v20.i32[2];
    v24 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v19, a7, 3), v23, a7, 2), v22);
    v25 = vmulq_f32(v24, v24);
    atan2f(sqrtf(v25.f32[2] + vaddv_f32(*v25.f32)), v24.f32[3]);
  }

  if ((v15 & 4) != 0 && (a3 & 1) == 0)
  {
    v26.i64[0] = a1;
    v26.i64[1] = a2;
    specialized DeviceMotionEstimator.computeOrbitAngle(posNow:posPrev:orbit:)(a6, a9, v26);
  }

  return a4;
}

uint64_t DeviceMotionEstimator.__deallocating_deinit()
{
  v1 = v0[10];

  v2 = v0[11];

  v3 = v0[12];

  v4 = v0[13];

  v5 = v0[14];

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy52_16(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DeviceMotionEstimator.DerivativeRecord(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 52))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DeviceMotionEstimator.DerivativeRecord(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = (a2 - 1);
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

  *(result + 52) = v3;
  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type DeviceMotionEstimator.ActiveComponents and conformance DeviceMotionEstimator.ActiveComponents()
{
  result = lazy protocol witness table cache variable for type DeviceMotionEstimator.ActiveComponents and conformance DeviceMotionEstimator.ActiveComponents;
  if (!lazy protocol witness table cache variable for type DeviceMotionEstimator.ActiveComponents and conformance DeviceMotionEstimator.ActiveComponents)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DeviceMotionEstimator.ActiveComponents and conformance DeviceMotionEstimator.ActiveComponents);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DeviceMotionEstimator.ActiveComponents and conformance DeviceMotionEstimator.ActiveComponents;
  if (!lazy protocol witness table cache variable for type DeviceMotionEstimator.ActiveComponents and conformance DeviceMotionEstimator.ActiveComponents)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DeviceMotionEstimator.ActiveComponents and conformance DeviceMotionEstimator.ActiveComponents);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DeviceMotionEstimator.ActiveComponents and conformance DeviceMotionEstimator.ActiveComponents;
  if (!lazy protocol witness table cache variable for type DeviceMotionEstimator.ActiveComponents and conformance DeviceMotionEstimator.ActiveComponents)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DeviceMotionEstimator.ActiveComponents and conformance DeviceMotionEstimator.ActiveComponents);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DeviceMotionEstimator.ActiveComponents and conformance DeviceMotionEstimator.ActiveComponents;
  if (!lazy protocol witness table cache variable for type DeviceMotionEstimator.ActiveComponents and conformance DeviceMotionEstimator.ActiveComponents)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DeviceMotionEstimator.ActiveComponents and conformance DeviceMotionEstimator.ActiveComponents);
  }

  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

float specialized DeviceMotionEstimator.computeOrbitAngle(posNow:posPrev:orbit:)(float32x4_t a1, float32x4_t a2, float32x4_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23B91BFD0;
  v4 = vsubq_f32(a1, a3);
  *(inited + 32) = vzip1_s32(*v4.i8, *&vextq_s8(v4, v4, 8uLL));
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1g5Tf4g_n(inited);
  v6 = v5;
  swift_setDeallocating();
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_23B91BFD0;
  v8 = vsubq_f32(a2, a3);
  *(v7 + 32) = vzip1_s32(*v8.i8, *&vextq_s8(v8, v8, 8uLL));
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1g5Tf4g_n(v7);
  v10 = v9;
  swift_setDeallocating();
  v11 = vmul_f32(v6, v6);
  v12 = vmul_f32(v10, v10);
  v13 = vcgt_f32(vsqrt_f32(vadd_f32(vzip1_s32(v12, v11), vzip2_s32(v12, v11))), vdup_n_s32(0x3A83126Fu));
  v14 = 0.0;
  if (v13.i32[1] & v13.i32[0])
  {
    v15 = vadd_f32(v11, vdup_lane_s32(v11, 1)).u32[0];
    v16 = vrsqrte_f32(v15);
    v17 = vmul_f32(v16, vrsqrts_f32(v15, vmul_f32(v16, v16)));
    LODWORD(v18) = vmul_f32(v17, vrsqrts_f32(v15, vmul_f32(v17, v17))).u32[0];
    v19 = vadd_f32(v12, vdup_lane_s32(v12, 1)).u32[0];
    v20 = vrsqrte_f32(v19);
    v21 = vmul_f32(v20, vrsqrts_f32(v19, vmul_f32(v20, v20)));
    specialized static MathHelpers.angleBetween(_:_:)(vmul_n_f32(v6, v18), vmul_n_f32(v10, vmul_f32(v21, vrsqrts_f32(v19, vmul_f32(v21, v21))).f32[0]));
    return v22;
  }

  return v14;
}

void *partial apply for specialized implicit closure #2 in implicit closure #1 in CircularBuffer.init(capacity:initialValue:)(void *result, void *a2)
{
  v3 = *(v2 + 32);
  if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (v3)
    {
      v4 = *(v2 + 16);
      v5 = *(v2 + 24);
      v6 = (*result + 8);
      v7 = *(v2 + 32);
      do
      {
        *(v6 - 2) = v4;
        *v6 = v5;
        v6 += 2;
        --v7;
      }

      while (v7);
    }

    *a2 = v3;
  }

  return result;
}

{
  v3 = *(v2 + 64);
  if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (v3)
    {
      v4 = *(v2 + 16);
      v5 = *(v2 + 32);
      v6 = *(v2 + 48);
      v7 = (*result + 32);
      v8 = *(v2 + 64);
      do
      {
        *(v7 - 4) = v4;
        *(v7 - 1) = v5;
        *v7 = v6;
        v7 += 3;
        --v8;
      }

      while (v8);
    }

    *a2 = v3;
  }

  return result;
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized Collection.first.getter(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.startIndex.getter();
    v5 = v4;
    v6 = __CocoaSet.endIndex.getter();
    v8 = v7;
    v9 = MEMORY[0x23EEAFB30](v3, v5, v6, v7);
    outlined consume of [String : Entity.ConfigurationCatalog.ConfigurationSet].Index._Variant(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      outlined consume of [String : Entity.ConfigurationCatalog.ConfigurationSet].Index._Variant(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v3 = _HashTable.startBucket.getter();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  specialized Set.subscript.getter(v3, v5, v2 != 0, a1);
  v13 = v12;
  outlined consume of [String : Entity.ConfigurationCatalog.ConfigurationSet].Index._Variant(v3, v5, v2 != 0);
  return v13;
}

uint64_t DragGestureRecognizer.touchesBegan(_:with:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for UITouch();
  lazy protocol witness table accessor for type UITouch and conformance NSObject();
  isa = Set._bridgeToObjectiveC()().super.isa;
  v28.receiver = v3;
  v28.super_class = type metadata accessor for DragGestureRecognizer();
  objc_msgSendSuper2(&v28, sel_touchesBegan_withEvent_, isa, a2);

  v7 = specialized Collection.first.getter(a1);
  if (v7)
  {
    v8 = [v3 view];
    [v7 locationInView_];
    v10 = v9;
    v12 = v11;

    v13 = v10;
    v14 = v12;
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, logger);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v27 = v19;
    *v18 = 136446210;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7CGPointVSgMd, &_sSo7CGPointVSgMR);
    v20 = String.init<A>(describing:)();
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v27);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_23B824000, v16, v17, "StartDrag: %{public}s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    MEMORY[0x23EEB0B70](v19, -1, -1);
    MEMORY[0x23EEB0B70](v18, -1, -1);
  }

  v23 = &v3[OBJC_IVAR____TtC19_RealityKit_SwiftUI21DragGestureRecognizer_draggable];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v25 = *(v23 + 1);
    ObjectType = swift_getObjectType();
    (*(v25 + 8))(v13, v14, v7 == 0, ObjectType, v25);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t DragGestureRecognizer.touchesEnded(_:with:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for UITouch();
  lazy protocol witness table accessor for type UITouch and conformance NSObject();
  isa = Set._bridgeToObjectiveC()().super.isa;
  v28.receiver = v3;
  v28.super_class = type metadata accessor for DragGestureRecognizer();
  objc_msgSendSuper2(&v28, sel_touchesEnded_withEvent_, isa, a2);

  v7 = specialized Collection.first.getter(a1);
  if (v7)
  {
    v8 = [v3 view];
    [v7 locationInView_];
    v10 = v9;
    v12 = v11;

    v13 = v10;
    v14 = v12;
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, logger);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v27 = v19;
    *v18 = 136446210;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7CGPointVSgMd, &_sSo7CGPointVSgMR);
    v20 = String.init<A>(describing:)();
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v27);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_23B824000, v16, v17, "Ending drag gesture... %{public}s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    MEMORY[0x23EEB0B70](v19, -1, -1);
    MEMORY[0x23EEB0B70](v18, -1, -1);
  }

  v23 = &v3[OBJC_IVAR____TtC19_RealityKit_SwiftUI21DragGestureRecognizer_draggable];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v25 = *(v23 + 1);
    ObjectType = swift_getObjectType();
    (*(v25 + 16))(v13, v14, v7 == 0, ObjectType, v25);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t @objc DragGestureRecognizer.touchesBegan(_:with:)(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, id))
{
  type metadata accessor for UITouch();
  lazy protocol witness table accessor for type UITouch and conformance NSObject();
  v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a4;
  v10 = a1;
  a5(v8, v9);
}

id DragGestureRecognizer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DragGestureRecognizer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t type metadata accessor for UITouch()
{
  result = lazy cache variable for type metadata for UITouch;
  if (!lazy cache variable for type metadata for UITouch)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UITouch);
  }

  return result;
}

void specialized Set.subscript.getter(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x23EEAFB80](a1, a2, v7);
      type metadata accessor for UITouch();
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    type metadata accessor for UITouch();
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v15;
    v8 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = static NSObject.== infix(_:_:)();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

uint64_t type metadata accessor for __RealityKitOverlayRegistry()
{
  result = type metadata singleton initialization cache for __RealityKitOverlayRegistry;
  if (!type metadata singleton initialization cache for __RealityKitOverlayRegistry)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id @objc __RealityKitOverlayRegistry.init()(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for __RealityKitOverlayRegistry();
  return objc_msgSendSuper2(&v2, sel_init);
}

id __RealityKitOverlayRegistry.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for __RealityKitOverlayRegistry();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ExperimentSettings.PointCloudRenderStyle()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ExperimentSettings.PointCloudRenderStyle()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ExperimentSettings.PointCloudRenderStyle()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ExperimentSettings.PointCloudRenderStyle@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ExperimentSettings.PointCloudRenderStyle.init(rawValue:), *a1);

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

void protocol witness for RawRepresentable.rawValue.getter in conformance ExperimentSettings.PointCloudRenderStyle(uint64_t *a1@<X8>)
{
  v2 = 0x73746E696F70;
  if (*v1)
  {
    v2 = 0x7365627563;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ExperimentSettings.PointCloudRenderStyle(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x7365627563;
  }

  else
  {
    v4 = 0x73746E696F70;
  }

  if (v3)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a2)
  {
    v6 = 0x7365627563;
  }

  else
  {
    v6 = 0x73746E696F70;
  }

  if (*a2)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE600000000000000;
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

unint64_t lazy protocol witness table accessor for type ExperimentSettings.PointCloudRenderStyle and conformance ExperimentSettings.PointCloudRenderStyle()
{
  result = lazy protocol witness table cache variable for type ExperimentSettings.PointCloudRenderStyle and conformance ExperimentSettings.PointCloudRenderStyle;
  if (!lazy protocol witness table cache variable for type ExperimentSettings.PointCloudRenderStyle and conformance ExperimentSettings.PointCloudRenderStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExperimentSettings.PointCloudRenderStyle and conformance ExperimentSettings.PointCloudRenderStyle);
  }

  return result;
}

uint64_t specialized static ExperimentSettings.loadDefaults(forKey:)(uint64_t a1, unint64_t a2)
{
  v4 = [objc_opt_self() standardUserDefaults];
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, logger);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v8 = 136315138;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v23);
    _os_log_impl(&dword_23B824000, v6, v7, "Looking for key=%s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x23EEB0B70](v9, -1, -1);
    MEMORY[0x23EEB0B70](v8, -1, -1);
  }

  v10 = MEMORY[0x23EEAF480](a1, a2);
  v11 = [v4 stringForKey_];

  if (v11)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v23 = v18;
      *v17 = 136315394;
      *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v23);
      *(v17 + 12) = 2080;
      *(v17 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v23);
      _os_log_impl(&dword_23B824000, v15, v16, "Found defaults %s == %s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEB0B70](v18, -1, -1);
      MEMORY[0x23EEB0B70](v17, -1, -1);
    }
  }

  else
  {
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_23B824000, v19, v20, "... key not found!", v21, 2u);
      MEMORY[0x23EEB0B70](v21, -1, -1);
    }

    return 0;
  }

  return v12;
}

float specialized static ExperimentSettings.loadDepthHazeStartPercent(default:)(float a1)
{
  v2 = specialized static ExperimentSettings.loadDefaults(forKey:)(0xD000000000000030, 0x800000023B9289B0);
  if (v3)
  {
    v4 = v3;
    v5 = v2;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, logger);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v16 = v10;
      *v9 = 136315394;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000030, 0x800000023B9289B0, &v16);
      *(v9 + 12) = 2080;
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v16);

      *(v9 + 14) = v11;
      _os_log_impl(&dword_23B824000, v7, v8, "Found key %s = %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEB0B70](v10, -1, -1);
      MEMORY[0x23EEB0B70](v9, -1, -1);
    }

    else
    {
    }

    v12 = [objc_opt_self() standardUserDefaults];
    v13 = MEMORY[0x23EEAF480](0xD000000000000030, 0x800000023B9289B0);
    [v12 floatForKey_];
    a1 = v14;
  }

  return a1;
}

uint64_t specialized static ExperimentSettings.loadCaptureSoundModuleType(default:)(uint64_t a1)
{
  v2 = specialized static ExperimentSettings.loadDefaults(forKey:)(0xD000000000000031, 0x800000023B928970);
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, logger);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v12 = v10;
      *v9 = 136315394;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000031, 0x800000023B928970, &v12);
      *(v9 + 12) = 2080;
      *(v9 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v5, &v12);
      _os_log_impl(&dword_23B824000, v7, v8, "Found key %s = %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEB0B70](v10, -1, -1);
      MEMORY[0x23EEB0B70](v9, -1, -1);
    }
  }

  else
  {

    return a1;
  }

  return v4;
}

uint64_t specialized static ExperimentSettings.loadIsSoundEnabled(default:)(unsigned __int8 a1)
{
  v2 = specialized static ExperimentSettings.loadDefaults(forKey:)(0xD000000000000029, 0x800000023B928940);
  if (v3)
  {
    v4 = v3;
    v5 = v2;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, logger);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315394;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000029, 0x800000023B928940, &v15);
      *(v9 + 12) = 2080;
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v15);

      *(v9 + 14) = v11;
      _os_log_impl(&dword_23B824000, v7, v8, "Found key %s = %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEB0B70](v10, -1, -1);
      MEMORY[0x23EEB0B70](v9, -1, -1);
    }

    else
    {
    }

    v12 = [objc_opt_self() standardUserDefaults];
    v13 = MEMORY[0x23EEAF480](0xD000000000000029, 0x800000023B928940);
    a1 = [v12 BOOLForKey_];
  }

  return a1 & 1;
}

uint64_t specialized static ExperimentSettings.loadFreeformDynamicScanVolumeEnabled(default:)(unsigned __int8 a1)
{
  v2 = specialized static ExperimentSettings.loadDefaults(forKey:)(0xD00000000000003BLL, 0x800000023B928900);
  if (v3)
  {
    v4 = v3;
    v5 = v2;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, logger);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315394;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003BLL, 0x800000023B928900, &v15);
      *(v9 + 12) = 2080;
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v15);

      *(v9 + 14) = v11;
      _os_log_impl(&dword_23B824000, v7, v8, "Found key %s = %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEB0B70](v10, -1, -1);
      MEMORY[0x23EEB0B70](v9, -1, -1);
    }

    else
    {
    }

    v12 = [objc_opt_self() standardUserDefaults];
    v13 = MEMORY[0x23EEAF480](0xD00000000000003BLL, 0x800000023B928900);
    a1 = [v12 BOOLForKey_];
  }

  return a1 & 1;
}

id specialized static ExperimentSettings.loadFreeformPointDensityThreshold(default:)(uint64_t a1)
{
  v2 = specialized static ExperimentSettings.loadDefaults(forKey:)(0xD000000000000038, 0x800000023B9288C0);
  if (!v3)
  {
    return a1;
  }

  v4 = v3;
  v5 = v2;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, logger);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315394;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000038, 0x800000023B9288C0, &v16);
    *(v9 + 12) = 2080;
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v16);

    *(v9 + 14) = v11;
    _os_log_impl(&dword_23B824000, v7, v8, "Found key %s = %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEB0B70](v10, -1, -1);
    MEMORY[0x23EEB0B70](v9, -1, -1);
  }

  else
  {
  }

  v13 = [objc_opt_self() standardUserDefaults];
  v14 = MEMORY[0x23EEAF480](0xD000000000000038, 0x800000023B9288C0);
  v15 = [v13 integerForKey_];

  return v15;
}

float specialized static ExperimentSettings.loadPostProcessBloomSigma(default:)(float a1)
{
  v2 = specialized static ExperimentSettings.loadDefaults(forKey:)(0xD000000000000030, 0x800000023B928880);
  if (v3)
  {
    v4 = v3;
    v5 = v2;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, logger);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v16 = v10;
      *v9 = 136315394;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000030, 0x800000023B928880, &v16);
      *(v9 + 12) = 2080;
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v16);

      *(v9 + 14) = v11;
      _os_log_impl(&dword_23B824000, v7, v8, "Found key %s = %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEB0B70](v10, -1, -1);
      MEMORY[0x23EEB0B70](v9, -1, -1);
    }

    else
    {
    }

    v12 = [objc_opt_self() standardUserDefaults];
    v13 = MEMORY[0x23EEAF480](0xD000000000000030, 0x800000023B928880);
    [v12 floatForKey_];
    a1 = v14;
  }

  return a1;
}

float specialized static ExperimentSettings.loadDepthHazeFloor(default:)(float a1)
{
  v2 = specialized static ExperimentSettings.loadDefaults(forKey:)(0xD000000000000029, 0x800000023B928850);
  if (v3)
  {
    v4 = v3;
    v5 = v2;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, logger);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v16 = v10;
      *v9 = 136315394;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000029, 0x800000023B928850, &v16);
      *(v9 + 12) = 2080;
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v16);

      *(v9 + 14) = v11;
      _os_log_impl(&dword_23B824000, v7, v8, "Found key %s = %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEB0B70](v10, -1, -1);
      MEMORY[0x23EEB0B70](v9, -1, -1);
    }

    else
    {
    }

    v12 = [objc_opt_self() standardUserDefaults];
    v13 = MEMORY[0x23EEAF480](0xD000000000000029, 0x800000023B928850);
    [v12 floatForKey_];
    a1 = v14;
  }

  return a1;
}

uint64_t specialized static ExperimentSettings.loadDepthHazeDisabled(default:)(unsigned __int8 a1)
{
  v2 = specialized static ExperimentSettings.loadDefaults(forKey:)(0xD00000000000002CLL, 0x800000023B928820);
  if (v3)
  {
    v4 = v3;
    v5 = v2;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, logger);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315394;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x800000023B928820, &v15);
      *(v9 + 12) = 2080;
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v15);

      *(v9 + 14) = v11;
      _os_log_impl(&dword_23B824000, v7, v8, "Found key %s = %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEB0B70](v10, -1, -1);
      MEMORY[0x23EEB0B70](v9, -1, -1);
    }

    else
    {
    }

    v12 = [objc_opt_self() standardUserDefaults];
    v13 = MEMORY[0x23EEAF480](0xD00000000000002CLL, 0x800000023B928820);
    a1 = [v12 BOOLForKey_];
  }

  return a1 & 1;
}

uint64_t specialized static ExperimentSettings.loadOcclusionHazeDisabled(default:)(unsigned __int8 a1)
{
  v2 = specialized static ExperimentSettings.loadDefaults(forKey:)(0xD000000000000030, 0x800000023B9287E0);
  if (v3)
  {
    v4 = v3;
    v5 = v2;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, logger);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315394;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000030, 0x800000023B9287E0, &v15);
      *(v9 + 12) = 2080;
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v15);

      *(v9 + 14) = v11;
      _os_log_impl(&dword_23B824000, v7, v8, "Found key %s = %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEB0B70](v10, -1, -1);
      MEMORY[0x23EEB0B70](v9, -1, -1);
    }

    else
    {
    }

    v12 = [objc_opt_self() standardUserDefaults];
    v13 = MEMORY[0x23EEAF480](0xD000000000000030, 0x800000023B9287E0);
    a1 = [v12 BOOLForKey_];
  }

  return a1 & 1;
}

uint64_t specialized static ExperimentSettings.loadDebugBoxSeedEnabled(default:)(unsigned __int8 a1)
{
  v2 = specialized static ExperimentSettings.loadDefaults(forKey:)(0xD000000000000027, 0x800000023B9287B0);
  if (v3)
  {
    v4 = v3;
    v5 = v2;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, logger);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315394;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000027, 0x800000023B9287B0, &v15);
      *(v9 + 12) = 2080;
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v15);

      *(v9 + 14) = v11;
      _os_log_impl(&dword_23B824000, v7, v8, "Found key %s = %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEB0B70](v10, -1, -1);
      MEMORY[0x23EEB0B70](v9, -1, -1);
    }

    else
    {
    }

    v12 = [objc_opt_self() standardUserDefaults];
    v13 = MEMORY[0x23EEAF480](0xD000000000000027, 0x800000023B9287B0);
    a1 = [v12 BOOLForKey_];
  }

  return a1 & 1;
}

uint64_t specialized static ExperimentSettings.loadMobileSFMDisabled(default:)(unsigned __int8 a1)
{
  v2 = specialized static ExperimentSettings.loadDefaults(forKey:)(0xD00000000000002CLL, 0x800000023B928620);
  if (v3)
  {
    v4 = v3;
    v5 = v2;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, logger);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315394;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x800000023B928620, &v15);
      *(v9 + 12) = 2080;
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v15);

      *(v9 + 14) = v11;
      _os_log_impl(&dword_23B824000, v7, v8, "Found key %s = %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEB0B70](v10, -1, -1);
      MEMORY[0x23EEB0B70](v9, -1, -1);
    }

    else
    {
    }

    v12 = [objc_opt_self() standardUserDefaults];
    v13 = MEMORY[0x23EEAF480](0xD00000000000002CLL, 0x800000023B928620);
    a1 = [v12 BOOLForKey_];
  }

  return a1 & 1;
}

float specialized static ExperimentSettings.loadAutomaticBoundingBoxPadding(default:)(float a1)
{
  v2 = specialized static ExperimentSettings.loadDefaults(forKey:)(0xD000000000000036, 0x800000023B928550);
  if (v3)
  {
    v4 = v3;
    v5 = v2;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, logger);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v16 = v10;
      *v9 = 136315394;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000036, 0x800000023B928550, &v16);
      *(v9 + 12) = 2080;
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v16);

      *(v9 + 14) = v11;
      _os_log_impl(&dword_23B824000, v7, v8, "Found key %s = %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEB0B70](v10, -1, -1);
      MEMORY[0x23EEB0B70](v9, -1, -1);
    }

    else
    {
    }

    v12 = [objc_opt_self() standardUserDefaults];
    v13 = MEMORY[0x23EEAF480](0xD000000000000036, 0x800000023B928550);
    [v12 floatForKey_];
    a1 = v14;
  }

  return a1;
}

uint64_t specialized static ExperimentSettings.loadCaptureCircleOccupyCriteria(default:)(char a1)
{
  v2 = specialized static ExperimentSettings.loadDefaults(forKey:)(0xD000000000000036, 0x800000023B9285E0);
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, logger);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14 = v10;
      *v9 = 136315394;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000036, 0x800000023B9285E0, &v14);
      *(v9 + 12) = 2080;
      *(v9 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v5, &v14);
      _os_log_impl(&dword_23B824000, v7, v8, "Found key %s = %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEB0B70](v10, -1, -1);
      MEMORY[0x23EEB0B70](v9, -1, -1);
    }

    v11._countAndFlagsBits = v4;
    v11._object = v5;
    v12 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CaptureCircle.OccupyCriteria.init(rawValue:), v11);

    if (v12)
    {
      if (v12 == 1)
      {
        a1 = 1;
      }
    }

    else
    {
      a1 = 0;
    }
  }

  return a1 & 1;
}

float specialized static ExperimentSettings.loadCaptureCircleVerticalExclusionAngleDegs(default:)(float a1)
{
  v2 = specialized static ExperimentSettings.loadDefaults(forKey:)(0xD000000000000042, 0x800000023B928590);
  if (v3)
  {
    v4 = v3;
    v5 = v2;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, logger);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v16 = v10;
      *v9 = 136315394;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000042, 0x800000023B928590, &v16);
      *(v9 + 12) = 2080;
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v16);

      *(v9 + 14) = v11;
      _os_log_impl(&dword_23B824000, v7, v8, "Found key %s = %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEB0B70](v10, -1, -1);
      MEMORY[0x23EEB0B70](v9, -1, -1);
    }

    else
    {
    }

    v12 = [objc_opt_self() standardUserDefaults];
    v13 = MEMORY[0x23EEAF480](0xD000000000000042, 0x800000023B928590);
    [v12 floatForKey_];
    a1 = v14;
  }

  return a1;
}

float specialized static ExperimentSettings.loadCaptureCircleBinShotNeighborThreshDegs(default:)(float a1)
{
  v2 = specialized static ExperimentSettings.loadDefaults(forKey:)(0xD000000000000041, 0x800000023B928450);
  if (v3)
  {
    v4 = v3;
    v5 = v2;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, logger);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v16 = v10;
      *v9 = 136315394;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000041, 0x800000023B928450, &v16);
      *(v9 + 12) = 2080;
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v16);

      *(v9 + 14) = v11;
      _os_log_impl(&dword_23B824000, v7, v8, "Found key %s = %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEB0B70](v10, -1, -1);
      MEMORY[0x23EEB0B70](v9, -1, -1);
    }

    else
    {
    }

    v12 = [objc_opt_self() standardUserDefaults];
    v13 = MEMORY[0x23EEAF480](0xD000000000000041, 0x800000023B928450);
    [v12 floatForKey_];
    a1 = v14;
  }

  return a1;
}

uint64_t specialized static ExperimentSettings.loadFreeformDynamicScanVolumeDebugDraw(default:)(unsigned __int8 a1)
{
  v2 = specialized static ExperimentSettings.loadDefaults(forKey:)(0xD00000000000003DLL, 0x800000023B928690);
  if (v3)
  {
    v4 = v3;
    v5 = v2;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, logger);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315394;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003DLL, 0x800000023B928690, &v15);
      *(v9 + 12) = 2080;
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v15);

      *(v9 + 14) = v11;
      _os_log_impl(&dword_23B824000, v7, v8, "Found key %s = %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEB0B70](v10, -1, -1);
      MEMORY[0x23EEB0B70](v9, -1, -1);
    }

    else
    {
    }

    v12 = [objc_opt_self() standardUserDefaults];
    v13 = MEMORY[0x23EEAF480](0xD00000000000003DLL, 0x800000023B928690);
    a1 = [v12 BOOLForKey_];
  }

  return a1 & 1;
}

uint64_t specialized static ExperimentSettings.loadFreeformDynamicScanVolumeBoxViz(default:)(unsigned __int8 a1)
{
  v2 = specialized static ExperimentSettings.loadDefaults(forKey:)(0xD00000000000003ALL, 0x800000023B928650);
  if (v3)
  {
    v4 = v3;
    v5 = v2;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, logger);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315394;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003ALL, 0x800000023B928650, &v15);
      *(v9 + 12) = 2080;
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v15);

      *(v9 + 14) = v11;
      _os_log_impl(&dword_23B824000, v7, v8, "Found key %s = %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEB0B70](v10, -1, -1);
      MEMORY[0x23EEB0B70](v9, -1, -1);
    }

    else
    {
    }

    v12 = [objc_opt_self() standardUserDefaults];
    v13 = MEMORY[0x23EEAF480](0xD00000000000003ALL, 0x800000023B928650);
    a1 = [v12 BOOLForKey_];
  }

  return a1 & 1;
}

double specialized static ExperimentSettings.loadMotionFilterDurationSecs(default:)(double a1)
{
  v2 = specialized static ExperimentSettings.loadDefaults(forKey:)(0xD00000000000002CLL, 0x800000023B928710);
  if (v3)
  {
    v4 = v3;
    v5 = v2;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, logger);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v16 = v10;
      *v9 = 136315394;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000033, 0x800000023B928770, &v16);
      *(v9 + 12) = 2080;
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v16);

      *(v9 + 14) = v11;
      _os_log_impl(&dword_23B824000, v7, v8, "Found key %s = %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEB0B70](v10, -1, -1);
      MEMORY[0x23EEB0B70](v9, -1, -1);
    }

    else
    {
    }

    v12 = [objc_opt_self() standardUserDefaults];
    v13 = MEMORY[0x23EEAF480](0xD000000000000033, 0x800000023B928770);
    [v12 doubleForKey_];
    a1 = v14;
  }

  return a1;
}

float specialized static ExperimentSettings.loadMinBadMotionScore(default:)(float a1)
{
  v2 = specialized static ExperimentSettings.loadDefaults(forKey:)(0xD00000000000002CLL, 0x800000023B928740);
  if (v3)
  {
    v4 = v3;
    v5 = v2;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, logger);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v16 = v10;
      *v9 = 136315394;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x800000023B928740, &v16);
      *(v9 + 12) = 2080;
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v16);

      *(v9 + 14) = v11;
      _os_log_impl(&dword_23B824000, v7, v8, "Found key %s = %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEB0B70](v10, -1, -1);
      MEMORY[0x23EEB0B70](v9, -1, -1);
    }

    else
    {
    }

    v12 = [objc_opt_self() standardUserDefaults];
    v13 = MEMORY[0x23EEAF480](0xD00000000000002CLL, 0x800000023B928740);
    [v12 floatForKey_];
    a1 = v14;
  }

  return a1;
}

float specialized static ExperimentSettings.loadMaxBadMotionScore(default:)(float a1)
{
  v2 = specialized static ExperimentSettings.loadDefaults(forKey:)(0xD00000000000002CLL, 0x800000023B928710);
  if (v3)
  {
    v4 = v3;
    v5 = v2;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, logger);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v16 = v10;
      *v9 = 136315394;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x800000023B928710, &v16);
      *(v9 + 12) = 2080;
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v16);

      *(v9 + 14) = v11;
      _os_log_impl(&dword_23B824000, v7, v8, "Found key %s = %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEB0B70](v10, -1, -1);
      MEMORY[0x23EEB0B70](v9, -1, -1);
    }

    else
    {
    }

    v12 = [objc_opt_self() standardUserDefaults];
    v13 = MEMORY[0x23EEAF480](0xD00000000000002CLL, 0x800000023B928710);
    [v12 floatForKey_];
    a1 = v14;
  }

  return a1;
}

uint64_t specialized static ExperimentSettings.loadPointCloudRenderStyle(default:)(char a1)
{
  v2 = specialized static ExperimentSettings.loadDefaults(forKey:)(0xD000000000000030, 0x800000023B9286D0);
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, logger);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14 = v10;
      *v9 = 136315394;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000030, 0x800000023B9286D0, &v14);
      *(v9 + 12) = 2080;
      *(v9 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v5, &v14);
      _os_log_impl(&dword_23B824000, v7, v8, "Found key %s = %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEB0B70](v10, -1, -1);
      MEMORY[0x23EEB0B70](v9, -1, -1);
    }

    v11._countAndFlagsBits = v4;
    v11._object = v5;
    v12 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ExperimentSettings.PointCloudRenderStyle.init(rawValue:), v11);

    if (v12)
    {
      if (v12 == 1)
      {
        a1 = 1;
      }
    }

    else
    {
      a1 = 0;
    }
  }

  return a1 & 1;
}

float specialized static ExperimentSettings.loadCaptureCircleDepthHazeFloor(default:)(float a1)
{
  v2 = specialized static ExperimentSettings.loadDefaults(forKey:)(0xD000000000000036, 0x800000023B9284E0);
  if (v3)
  {
    v4 = v3;
    v5 = v2;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, logger);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v16 = v10;
      *v9 = 136315394;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000036, 0x800000023B9284E0, &v16);
      *(v9 + 12) = 2080;
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v16);

      *(v9 + 14) = v11;
      _os_log_impl(&dword_23B824000, v7, v8, "Found key %s = %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEB0B70](v10, -1, -1);
      MEMORY[0x23EEB0B70](v9, -1, -1);
    }

    else
    {
    }

    v12 = [objc_opt_self() standardUserDefaults];
    v13 = MEMORY[0x23EEAF480](0xD000000000000036, 0x800000023B9284E0);
    [v12 floatForKey_];
    a1 = v14;
  }

  return a1;
}

float specialized static ExperimentSettings.loadCaptureCircleDepthHazeDistancePower(default:)(float a1)
{
  v2 = specialized static ExperimentSettings.loadDefaults(forKey:)(0xD00000000000003ELL, 0x800000023B9284A0);
  if (v3)
  {
    v4 = v3;
    v5 = v2;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, logger);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v16 = v10;
      *v9 = 136315394;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003ELL, 0x800000023B9284A0, &v16);
      *(v9 + 12) = 2080;
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v16);

      *(v9 + 14) = v11;
      _os_log_impl(&dword_23B824000, v7, v8, "Found key %s = %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEB0B70](v10, -1, -1);
      MEMORY[0x23EEB0B70](v9, -1, -1);
    }

    else
    {
    }

    v12 = [objc_opt_self() standardUserDefaults];
    v13 = MEMORY[0x23EEAF480](0xD00000000000003ELL, 0x800000023B9284A0);
    [v12 floatForKey_];
    a1 = v14;
  }

  return a1;
}

uint64_t specialized static ExperimentSettings.loadReticleDeltaFilterType(default:)(uint64_t a1)
{
  v2 = specialized static ExperimentSettings.loadDefaults(forKey:)(0xD00000000000002FLL, 0x800000023B928520);
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, logger);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v12 = v10;
      *v9 = 136315394;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002FLL, 0x800000023B928520, &v12);
      *(v9 + 12) = 2080;
      *(v9 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v5, &v12);
      _os_log_impl(&dword_23B824000, v7, v8, "Found key %s = %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEB0B70](v10, -1, -1);
      MEMORY[0x23EEB0B70](v9, -1, -1);
    }
  }

  else
  {

    return a1;
  }

  return v4;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t CircularDeadzoneFilter.apply(to:)(float32x2_t a1, float a2)
{
  if (sqrtf(vaddv_f32(vmul_f32(a1, a1))) <= a2)
  {
    return _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of CircularDeadzoneFilter.apply(to:));
  }

  return result;
}

double SigmoidalDerivativeFilter.apply(to:)(double a1, float a2)
{
  v2 = *(&a1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23B91BFD0;
  v13 = tanhf(*&a1 / a2);
  v4 = tanhf(v2 / a2);
  __asm { FMOV            V2.2S, #1.0 }

  *(inited + 32) = vmul_f32(vmul_f32(vmul_n_f32(vand_s8(vbsl_s8(0x8000000080000000, _D2, *&a1), vorr_s8(vcltz_f32(*&a1), vcgtz_f32(*&a1))), a2), *&a1), __PAIR64__(LODWORD(v4), LODWORD(v13)));
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1g5Tf4g_n(inited);
  v11 = v10;
  swift_setDeallocating();
  return v11;
}

uint64_t protocol witness for Filter2D.apply(to:) in conformance ComposedFilter2D(double a1)
{
  v3 = v1[8];
  v4 = v1[9];
  __swift_project_boxed_opaque_existential_1(v1 + 5, v3);
  v5 = v1[3];
  v6 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v5);
  (*(v6 + 16))(v5, v6, a1);
  return (*(v4 + 16))(v3, v4);
}

void static Filter2DFactory.create(factoryString:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  v7 = __swift_project_value_buffer(v6, logger);

  v86 = v7;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v87[0] = v11;
    *v10 = 136446210;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v87);
    _os_log_impl(&dword_23B824000, v8, v9, "Filter2DFactory: factoryString= %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x23EEB0B70](v11, -1, -1);
    MEMORY[0x23EEB0B70](v10, -1, -1);
  }

  v87[0] = 32;
  v87[1] = 0xE100000000000000;
  MEMORY[0x28223BE20](v12);
  v80[2] = v87;

  v14 = specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)(0x7FFFFFFFFFFFFFFFLL, 1, partial apply for specialized closure #1 in Collection<>.split(separator:maxSplits:omittingEmptySubsequences:), v80, a1, a2, v13);
  v15 = v14;
  if (!v14[2])
  {

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v47, v48))
    {
LABEL_15:

      *(a3 + 32) = 0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return;
    }

    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v87[0] = v50;
    *v49 = 136446210;
    *(v49 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v87);
    _os_log_impl(&dword_23B824000, v47, v48, "Got no args for Filter2D factory string= %{public}s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v50);
    MEMORY[0x23EEB0B70](v50, -1, -1);
    v51 = v49;
LABEL_14:
    MEMORY[0x23EEB0B70](v51, -1, -1);
    goto LABEL_15;
  }

  v85 = v14[2];
  v16 = v14[4];
  v17 = v14[5];
  v19 = v14[6];
  v18 = v14[7];
  swift_bridgeObjectRetain_n();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v84 = a3;
    v23 = v22;
    v24 = swift_slowAlloc();
    v87[0] = v24;
    *v23 = 136446210;

    v25 = MEMORY[0x23EEAF550](v16, v17, v19, v18);
    v83 = v19;
    v26 = v25;
    v27 = v17;
    v28 = v16;
    v30 = v29;

    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v30, v87);
    v16 = v28;
    v17 = v27;

    *(v23 + 4) = v31;
    v19 = v83;
    _os_log_impl(&dword_23B824000, v20, v21, "typeName: %{public}s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v24);
    MEMORY[0x23EEB0B70](v24, -1, -1);
    v32 = v23;
    a3 = v84;
    MEMORY[0x23EEB0B70](v32, -1, -1);
  }

  v33 = v85;
  if (v85 != 1)
  {

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v82 = v16;
      v83 = v19;
      v81 = v17;
      v84 = a3;
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v87[0] = v37;
      *v36 = 136446210;
      if (v15[2] < 2uLL)
      {
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v38 = v37;
      v39 = v15[8];
      v40 = v15[9];
      v42 = v15[10];
      v41 = v15[11];

      v43 = MEMORY[0x23EEAF550](v39, v40, v42, v41);
      v45 = v44;

      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, v87);

      *(v36 + 4) = v46;
      _os_log_impl(&dword_23B824000, v34, v35, "argList[1]: %{public}s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v38);
      MEMORY[0x23EEB0B70](v38, -1, -1);
      MEMORY[0x23EEB0B70](v36, -1, -1);

      v19 = v83;
      a3 = v84;
      v17 = v81;
      v16 = v82;
    }

    else
    {
    }

    v33 = v85;
  }

  if (specialized static StringProtocol.== infix<A>(_:_:)(v16, v17, v19, v18, 0xD000000000000010, 0x800000023B924490))
  {

    if (v33 == 1)
    {

      goto LABEL_27;
    }

    if (v15[2] >= 2uLL)
    {
      v53 = v15[8];
      v54 = v15[9];
      v55 = v15[10];
      v56 = v15[11];

      v57 = Float.init(_:)();
      if ((v57 & 0x100000000) == 0)
      {
        v52 = *&v57;
LABEL_28:
        v58 = Logger.logObject.getter();
        v59 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          *v60 = 134349056;
          *(v60 + 4) = v52;
          _os_log_impl(&dword_23B824000, v58, v59, "Using CircularDeadzoneFilter radius = %{public}f", v60, 0xCu);
          MEMORY[0x23EEB0B70](v60, -1, -1);
        }

        v61 = &type metadata for CircularDeadzoneFilter;
        v62 = &protocol witness table for CircularDeadzoneFilter;
LABEL_39:
        *(a3 + 24) = v61;
        *(a3 + 32) = v62;
        *a3 = v52;
        return;
      }

LABEL_27:
      v52 = 0.2;
      goto LABEL_28;
    }

    goto LABEL_44;
  }

  if ((specialized static StringProtocol.== infix<A>(_:_:)(v16, v17, v19, v18, 0xD000000000000013, 0x800000023B9244B0) & 1) == 0)
  {
    if (specialized static StringProtocol.== infix<A>(_:_:)(v16, v17, v19, v18, 0x6465736F706D6F43, 0xEE007265746C6946))
    {

      static Filter2DFactory.parseComposedFilter(argList:)(v15, a3);

      return;
    }

    v47 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v47, v71))
    {

      goto LABEL_15;
    }

    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v74 = v19;
    v75 = v73;
    v87[0] = v73;
    *v72 = 136446210;
    v76 = MEMORY[0x23EEAF550](v16, v17, v74, v18);
    v78 = v77;

    v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v78, v87);

    *(v72 + 4) = v79;
    _os_log_impl(&dword_23B824000, v47, v71, "Unknown Filter2D type: %{public}s", v72, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v75);
    MEMORY[0x23EEB0B70](v75, -1, -1);
    v51 = v72;
    goto LABEL_14;
  }

  if (v33 == 1)
  {

    v52 = 2.0;
LABEL_36:
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 134349056;
      *(v70 + 4) = v52;
      _os_log_impl(&dword_23B824000, v68, v69, "Using SigmoidalDerivativeFilter mu = %{public}f", v70, 0xCu);
      MEMORY[0x23EEB0B70](v70, -1, -1);
    }

    v61 = &type metadata for SigmoidalDerivativeFilter;
    v62 = &protocol witness table for SigmoidalDerivativeFilter;
    goto LABEL_39;
  }

  if (v15[2] >= 2uLL)
  {
    v63 = v15[8];
    v64 = v15[9];
    v65 = v15[10];
    v66 = v15[11];

    v67 = Float.init(_:)();
    v52 = 2.0;
    if ((v67 & 0x100000000) == 0)
    {
      v52 = *&v67;
    }

    goto LABEL_36;
  }

LABEL_45:
  __break(1u);
}

void static Filter2DFactory.parseComposedFilter(argList:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = a1[2];
  if (v6 < 2)
  {
    __break(1u);
LABEL_43:
    swift_once();
    goto LABEL_14;
  }

  v94 = a2;
  v3 = a1[8];
  v4 = a1[9];
  v5 = a1[10];
  v2 = a1[11];

  v8 = MEMORY[0x23EEAF550](v3, v4, v5, v2);
  v10 = v9;

  *&v102 = v8;
  *(&v102 + 1) = v10;
  MEMORY[0x28223BE20](v11);
  v86 = &v102;
  LOBYTE(v8) = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v85, &outlined read-only object #0 of static Filter2DFactory.parseComposedFilter(argList:));

  if (v8)
  {
    v93 = a1;
    swift_bridgeObjectRetain_n();
    if (v6 == 2)
    {
LABEL_7:
      swift_bridgeObjectRelease_n();
      swift_arrayDestroy();
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      __swift_project_value_buffer(v20, logger);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      v23 = os_log_type_enabled(v21, v22);
      v24 = v94;
      if (v23)
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_23B824000, v21, v22, "Can't find the second filter index!", v25, 2u);
        MEMORY[0x23EEB0B70](v25, -1, -1);
      }
    }

    else
    {
      v91 = (2 * v6) | 1;
      v92 = v93 + 4;
      v12 = v93 + 15;
      v13 = 2;
      v14 = 5;
      while (1)
      {
        v15 = *(v12 - 3);
        v16 = *(v12 - 2);
        v17 = *(v12 - 1);
        v18 = *v12;

        *&v102 = MEMORY[0x23EEAF550](v15, v16, v17, v18);
        *(&v102 + 1) = v19;
        MEMORY[0x28223BE20](v102);
        v86 = &v102;
        LOBYTE(v16) = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Collection<>.split(separator:maxSplits:omittingEmptySubsequences:), v85, &outlined read-only object #0 of static Filter2DFactory.parseComposedFilter(argList:));

        if (v16)
        {
          break;
        }

        ++v13;
        v14 += 2;
        v12 += 4;
        if (v6 == v13)
        {
          goto LABEL_7;
        }
      }

      swift_arrayDestroy();
      v36 = v92;
      v37 = v93;
      *&v102 = v93;
      *(&v102 + 1) = v92;
      v103 = 1;
      v104 = v14;

      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVySsGMd, &_ss10ArraySliceVySsGMR);
      v39 = lazy protocol witness table accessor for type ArraySlice<Substring> and conformance ArraySlice<A>();
      v40 = lazy protocol witness table accessor for type Substring and conformance Substring();
      v41 = Sequence<>.joined(separator:)();
      v43 = v42;
      static Filter2DFactory.create(factoryString:)(&v99);
      if (v101)
      {

        outlined init with take of Animation(&v99, &v102);

        *&v99 = v37;
        *(&v99 + 1) = v36;
        v100 = v13;
        v101 = v91;
        v44 = Sequence<>.joined(separator:)();
        v46 = v45;
        static Filter2DFactory.create(factoryString:)(&v96);
        if (v98)
        {

          outlined init with take of Animation(&v96, &v99);
          if (one-time initialization token for logger != -1)
          {
            swift_once();
          }

          v89 = v39;
          v47 = type metadata accessor for Logger();
          v90 = __swift_project_value_buffer(v47, logger);
          v48 = Logger.logObject.getter();
          v49 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v48, v49))
          {
            v50 = swift_slowAlloc();
            *v50 = 0;
            _os_log_impl(&dword_23B824000, v48, v49, "Making composed filter...", v50, 2u);
            MEMORY[0x23EEB0B70](v50, -1, -1);
          }

          v88 = v40;

          v51 = Logger.logObject.getter();
          v52 = static os_log_type_t.default.getter();

          v53 = os_log_type_enabled(v51, v52);
          v87 = v38;
          if (v53)
          {
            v54 = swift_slowAlloc();
            v55 = swift_slowAlloc();
            v95 = v55;
            *&v96 = v37;
            *v54 = 136446210;
            *(&v96 + 1) = v36;
            v97 = 1;
            v98 = v14;
            v56 = Sequence<>.joined(separator:)();
            v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v57, &v95);

            *(v54 + 4) = v58;
            _os_log_impl(&dword_23B824000, v51, v52, "First filter: %{public}s", v54, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v55);
            MEMORY[0x23EEB0B70](v55, -1, -1);
            MEMORY[0x23EEB0B70](v54, -1, -1);
          }

          v59 = Logger.logObject.getter();
          v60 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v59, v60))
          {
            v61 = swift_slowAlloc();
            v62 = swift_slowAlloc();
            v95 = v62;
            *&v96 = v37;
            *v61 = 136446210;
            *(&v96 + 1) = v36;
            v97 = v13;
            v98 = v91;
            v63 = Sequence<>.joined(separator:)();
            v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v64, &v95);

            *(v61 + 4) = v65;
            _os_log_impl(&dword_23B824000, v59, v60, "Second filter: %{public}s", v61, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v62);
            MEMORY[0x23EEB0B70](v62, -1, -1);
            MEMORY[0x23EEB0B70](v61, -1, -1);
          }

          v66 = v94;
          v67 = Logger.logObject.getter();
          v68 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v67, v68))
          {
            v69 = swift_slowAlloc();
            *v69 = 0;
            _os_log_impl(&dword_23B824000, v67, v68, "... done making composed filter.", v69, 2u);
            MEMORY[0x23EEB0B70](v69, -1, -1);
          }

          swift_bridgeObjectRelease_n();
          v66[3] = &type metadata for ComposedFilter2D;
          v66[4] = &protocol witness table for ComposedFilter2D;
          v70 = swift_allocObject();
          *v66 = v70;
          outlined init with take of Animation(&v102, v70 + 16);
          outlined init with take of Animation(&v99, v70 + 56);
          return;
        }

        outlined destroy of Filter2D?(&v96);
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v78 = type metadata accessor for Logger();
        __swift_project_value_buffer(v78, logger);

        v79 = Logger.logObject.getter();
        v80 = static os_log_type_t.error.getter();

        v81 = os_log_type_enabled(v79, v80);
        v24 = v94;
        if (v81)
        {
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          *&v99 = v83;
          *v82 = 136446210;
          v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, &v99);

          *(v82 + 4) = v84;
          _os_log_impl(&dword_23B824000, v79, v80, "Can't parse the second filter from factory string: %{public}s", v82, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v83);
          MEMORY[0x23EEB0B70](v83, -1, -1);
          MEMORY[0x23EEB0B70](v82, -1, -1);
          swift_bridgeObjectRelease_n();
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }

        __swift_destroy_boxed_opaque_existential_0Tm(&v102);
      }

      else
      {
        swift_bridgeObjectRelease_n();
        outlined destroy of Filter2D?(&v99);
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v71 = type metadata accessor for Logger();
        __swift_project_value_buffer(v71, logger);

        v72 = Logger.logObject.getter();
        v73 = static os_log_type_t.error.getter();

        v74 = os_log_type_enabled(v72, v73);
        v24 = v94;
        if (v74)
        {
          v75 = swift_slowAlloc();
          v76 = swift_slowAlloc();
          *&v102 = v76;
          *v75 = 136446210;
          v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, &v102);

          *(v75 + 4) = v77;
          _os_log_impl(&dword_23B824000, v72, v73, "Can't parse the first filter from factory string: %{public}s", v75, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v76);
          MEMORY[0x23EEB0B70](v76, -1, -1);
          MEMORY[0x23EEB0B70](v75, -1, -1);
        }

        else
        {
        }
      }
    }

    v24[4] = 0;
    *v24 = 0u;
    *(v24 + 1) = 0u;
    return;
  }

  swift_arrayDestroy();
  if (one-time initialization token for logger != -1)
  {
    goto LABEL_43;
  }

LABEL_14:
  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, logger);

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *&v102 = v30;
    *v29 = 136446210;

    v31 = MEMORY[0x23EEAF550](v3, v4, v5, v2);
    v33 = v32;

    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v102);

    *(v29 + 4) = v34;
    _os_log_impl(&dword_23B824000, v27, v28, "Expected first filter name but got: %{public}s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v30);
    MEMORY[0x23EEB0B70](v30, -1, -1);
    MEMORY[0x23EEB0B70](v29, -1, -1);
  }

  v35 = v94;
  v94[4] = 0;
  *v35 = 0u;
  *(v35 + 1) = 0u;
}

unint64_t specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = String.subscript.getter();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = String.subscript.getter();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = String.index(after:)();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = String.index(after:)();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = String.subscript.getter();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = String.subscript.getter();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = String.index(after:)();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized static StringProtocol.== infix<A>(_:_:)(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v6 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (a3 == a5 && a4 == a6 && !(a1 >> 16) && a2 >> 16 == v6)
  {
    return 1;
  }

  else
  {
    return _stringCompareInternal(_:_:_:_:expecting:)() & 1;
  }
}

uint64_t partial apply for specialized closure #1 in Collection<>.split(separator:maxSplits:omittingEmptySubsequences:)(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1) & 1;
}

unint64_t lazy protocol witness table accessor for type ArraySlice<Substring> and conformance ArraySlice<A>()
{
  result = lazy protocol witness table cache variable for type ArraySlice<Substring> and conformance ArraySlice<A>;
  if (!lazy protocol witness table cache variable for type ArraySlice<Substring> and conformance ArraySlice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss10ArraySliceVySsGMd, &_ss10ArraySliceVySsGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArraySlice<Substring> and conformance ArraySlice<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Substring and conformance Substring()
{
  result = lazy protocol witness table cache variable for type Substring and conformance Substring;
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Substring and conformance Substring);
  }

  return result;
}

uint64_t outlined destroy of Filter2D?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI8Filter2D_pSgMd, &_s19_RealityKit_SwiftUI8Filter2D_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ComposedFilter2D(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ComposedFilter2D(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed MTLCommandBuffer) -> ()(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

id one-time initialization function for mtlDevice()
{
  result = MTLCreateSystemDefaultDevice();
  if (result)
  {
    static FullscreenCoveragePointsRenderer.mtlDevice = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  result = MTLCreateSystemDefaultDevice();
  if (result)
  {
    static VoxelRenderer.mtlDevice = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id one-time initialization function for mtlLibrary()
{
  result = closure #1 in variable initialization expression of static FullscreenCoveragePointsRenderer.mtlLibrary();
  static FullscreenCoveragePointsRenderer.mtlLibrary = result;
  return result;
}

{
  result = closure #1 in variable initialization expression of static VoxelRenderer.mtlLibrary();
  static VoxelRenderer.mtlLibrary = result;
  return result;
}

id closure #1 in variable initialization expression of static FullscreenCoveragePointsRenderer.mtlLibrary()
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (one-time initialization token for mtlDevice != -1)
  {
    swift_once();
  }

  v0 = static FullscreenCoveragePointsRenderer.mtlDevice;
  if (one-time initialization token for bundle != -1)
  {
    v7 = static FullscreenCoveragePointsRenderer.mtlDevice;
    swift_once();
    v0 = v7;
  }

  v8[0] = 0;
  v1 = [v0 newDefaultLibraryWithBundle:static FullscreenCoveragePointsRenderer.bundle error:v8];
  if (v1)
  {
    v2 = v8[0];
  }

  else
  {
    v3 = v8[0];
    v4 = _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t FullscreenCoveragePointsRenderer.voxelRenderer.getter()
{
  v1 = OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer____lazy_storage___voxelRenderer;
  v2 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer____lazy_storage___voxelRenderer);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = closure #1 in FullscreenCoveragePointsRenderer.voxelRenderer.getter(v0);
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;

    outlined consume of CaptureCircleRenderer??(v4);
  }

  outlined copy of CaptureCircleRenderer??(v2);
  return v3;
}

uint64_t closure #1 in FullscreenCoveragePointsRenderer.voxelRenderer.getter(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_view);
  type metadata accessor for VoxelRenderer();
  swift_allocObject();
  return VoxelRenderer.init(view:)(v1);
}

uint64_t FullscreenCoveragePointsRenderer.init(pointCloud:)(uint64_t a1)
{
  v3 = v2;
  v5 = OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_coveragePointCloud;
  v6 = type metadata accessor for CoveragePointCloud();
  (*(*(v6 - 8) + 56))(&v1[v5], 1, 1, v6);
  v7 = OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_coveragePoints;
  v8 = type metadata accessor for ObjectCaptureSession.Frame.PointCloud();
  (*(*(v8 - 8) + 56))(&v1[v7], 1, 1, v8);
  v9 = &v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_objectToWorld];
  v10 = *MEMORY[0x277D860B8];
  v11 = *(MEMORY[0x277D860B8] + 16);
  v12 = *(MEMORY[0x277D860B8] + 32);
  v13 = *(MEMORY[0x277D860B8] + 48);
  *v9 = *MEMORY[0x277D860B8];
  v9[1] = v11;
  v9[2] = v12;
  v9[3] = v13;
  v14 = &v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_objectToWorldUnscaled];
  *v14 = v10;
  v14[1] = v11;
  v14[2] = v12;
  v14[3] = v13;
  v15 = &v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_viewToWorld];
  *v15 = v10;
  v15[1] = v11;
  v15[2] = v12;
  v15[3] = v13;
  v16 = &v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_projection];
  *v16 = v10;
  v16[1] = v11;
  v16[2] = v12;
  v16[3] = v13;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_lookAtBoxWorldProvider] = 0;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_commandQueue] = 0;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_renderPrimitivePointsPipeline] = 0;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer____lazy_storage___voxelRenderer] = 1;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_cameraFrustumRendererForShots] = 0;
  v17 = OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_renderStyle;
  v1[v17] = specialized static ExperimentSettings.loadPointCloudRenderStyle(default:)(0) & 1;
  v18 = OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_inFlightQueue;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI13InFlightQueueCyAA32FullscreenCoveragePointsRendererC13ResourceEntry33_EBAA0A78FD80C51EE584E033B8F33CA2LLVGMd, &_s19_RealityKit_SwiftUI13InFlightQueueCyAA32FullscreenCoveragePointsRendererC13ResourceEntry33_EBAA0A78FD80C51EE584E033B8F33CA2LLVGMR);
  v19 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  v21 = MEMORY[0x277D84F90];
  v19[2] = v20;
  v19[3] = 0;
  v19[4] = v21;
  *&v1[v18] = v19;
  v22 = OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_inFlightLock;
  v23 = swift_allocObject();
  *&v1[v22] = v23;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_depthStencilState] = 0;
  *(v23 + 16) = 0;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_baseRenderer] = 0;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_viewportSize] = vdupq_n_s64(0x4059000000000000uLL);
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_turnTableCameraControl] = 0;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_dragGesture] = 0;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_transformProvider + 8] = 0;
  swift_unknownObjectWeakInit();
  v24 = &v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_backgroundColor];
  *v24 = 0u;
  v24[1] = 0u;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_viewportFOVDegs] = 1114636288;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_sphereRadiusGain] = 1045220557;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_localTime] = 0;
  v25 = OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_colorScheme;
  v26 = *MEMORY[0x277CDF3D0];
  v27 = type metadata accessor for ColorScheme();
  (*(*(v27 - 8) + 104))(&v1[v25], v26, v27);
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_cameraPathRenderer] = 0;
  v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_showShotLocations] = 0;
  if (one-time initialization token for mtlDevice != -1)
  {
    swift_once();
  }

  v28 = static FullscreenCoveragePointsRenderer.mtlDevice;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_device] = static FullscreenCoveragePointsRenderer.mtlDevice;
  v29 = objc_allocWithZone(MEMORY[0x277CD71F8]);
  swift_unknownObjectRetain();
  v30 = [v29 initWithFrame:v28 device:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_view] = v30;
  v48.receiver = v1;
  v48.super_class = type metadata accessor for FullscreenCoveragePointsRenderer(0);
  v31 = v30;
  v32 = objc_msgSendSuper2(&v48, sel_init);
  FullscreenCoveragePointsRenderer.initPointPrimitiveRenderPipeline()();
  if (v3)
  {
    outlined destroy of PerspectiveCameraComponent?(a1, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);

    return v32;
  }

  [*&v32[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_view] setDelegate_];
  v33 = OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_device;
  v34 = *&v32[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_device];
  type metadata accessor for BaseRenderer();
  swift_allocObject();
  v35 = swift_unknownObjectRetain();
  specialized BaseRenderer.init(device:width:height:)(v35, 100, 100);
  v37 = v36;
  swift_unknownObjectRelease();
  v38 = OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_baseRenderer;
  v39 = *&v32[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_baseRenderer];
  *&v32[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_baseRenderer] = v37;

  if (*&v32[v38])
  {
    v41 = *&v32[v33];
    v42 = objc_allocWithZone(MEMORY[0x277CD6D60]);
    swift_unknownObjectRetain();
    v43 = [v42 init];
    [v43 setDepthCompareFunction_];
    [v43 setDepthWriteEnabled_];
    v44 = [v41 newDepthStencilStateWithDescriptor_];
    swift_unknownObjectRelease();

    v45 = *&v32[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_depthStencilState];
    *&v32[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_depthStencilState] = v44;
    swift_unknownObjectRelease();
    v46 = [v31 layer];
    [v46 setOpaque_];

    v47 = OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_coveragePointCloud;
    swift_beginAccess();
    outlined assign with copy of CoveragePointCloud?(a1, &v32[v47]);
    swift_endAccess();
    FullscreenCoveragePointsRenderer.prepareTurnTable()();

    outlined destroy of PerspectiveCameraComponent?(a1, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
    return v32;
  }

  __break(1u);
  return result;
}

id FullscreenCoveragePointsRenderer.__deallocating_deinit()
{
  v1 = *&v0[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_dragGesture];
  *&v0[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_dragGesture] = 0;

  *&v0[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_transformProvider + 8] = 0;
  swift_unknownObjectWeakAssign();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for FullscreenCoveragePointsRenderer(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void FullscreenCoveragePointsRenderer.colorScheme.didset()
{
  v1 = type metadata accessor for ColorScheme();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, logger);
  v7 = v0;
  v17 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315138;
    v11 = OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_colorScheme;
    swift_beginAccess();
    (*(v2 + 16))(v5, &v7[v11], v1);
    v12 = String.init<A>(describing:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v18);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_23B824000, v17, v8, "colorScheme = %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x23EEB0B70](v10, -1, -1);
    MEMORY[0x23EEB0B70](v9, -1, -1);
  }

  else
  {
    v15 = v17;
  }
}

void FullscreenCoveragePointsRenderer.setRenderPointCloud(pointCloud:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v30 - v6;
  v8 = type metadata accessor for CoveragePointCloud();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v30 - v14;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, logger);
  outlined init with copy of CoveragePointCloud(a1, v15, type metadata accessor for CoveragePointCloud);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  v19 = os_log_type_enabled(v17, v18);
  v32 = v8;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v31 = v2;
    v21 = v20;
    v22 = swift_slowAlloc();
    v33 = v22;
    *v21 = 141558274;
    *(v21 + 4) = 1752392040;
    *(v21 + 12) = 2080;
    outlined init with copy of CoveragePointCloud(v15, v13, type metadata accessor for CoveragePointCloud);
    v23 = String.init<A>(describing:)();
    v24 = v9;
    v26 = v25;
    _s19_RealityKit_SwiftUI18CoveragePointCloudVWOhTm_0(v15, type metadata accessor for CoveragePointCloud);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v26, &v33);
    v9 = v24;

    *(v21 + 14) = v27;
    _os_log_impl(&dword_23B824000, v17, v18, "Setting renderPointCloud: %{mask.hash}s", v21, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
    MEMORY[0x23EEB0B70](v22, -1, -1);
    v28 = v21;
    v2 = v31;
    MEMORY[0x23EEB0B70](v28, -1, -1);
  }

  else
  {

    _s19_RealityKit_SwiftUI18CoveragePointCloudVWOhTm_0(v15, type metadata accessor for CoveragePointCloud);
  }

  if (CoveragePointCloud.isValid()())
  {
    outlined init with copy of CoveragePointCloud(a1, v7, type metadata accessor for CoveragePointCloud);
    (*(v9 + 56))(v7, 0, 1, v32);
    v29 = OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_coveragePointCloud;
    swift_beginAccess();
    outlined assign with take of Cancellable?(v7, v2 + v29, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
    swift_endAccess();
    FullscreenCoveragePointsRenderer.updateInternal()();
  }
}

uint64_t FullscreenCoveragePointsRenderer.setCameraFrustumRendererForShots(to:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_cameraFrustumRendererForShots);
  *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_cameraFrustumRendererForShots) = a1;

  if (a1)
  {
    v6 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_device);
    v7 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_view);

    result = CameraFrustumRendererForShots.setup(device:pixelFormat:)(v6, [v7 colorPixelFormat]);
    v8 = *(a1 + 24);
  }

  else
  {
    v8 = 0;
  }

  *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_showShotLocations) = v8;
  return result;
}

Swift::Void __swiftcall FullscreenCoveragePointsRenderer.mtkView(_:drawableSizeWillChange:)(MTKView _, CGSize drawableSizeWillChange)
{
  v3 = v2;
  height = drawableSizeWillChange.height;
  width = drawableSizeWillChange.width;
  type metadata accessor for NSObject();
  v6 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_view);
  if (static NSObject.== infix(_:_:)())
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, logger);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v20 = v11;
      *v10 = 136446210;
      type metadata accessor for CGSize(0);
      v12 = String.init<A>(describing:)();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v20);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_23B824000, v8, v9, "mtkView: size changed!  newSize=%{public}s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      MEMORY[0x23EEB0B70](v11, -1, -1);
      MEMORY[0x23EEB0B70](v10, -1, -1);
    }

    v15 = (v3 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_viewportSize);
    *v15 = width;
    v15[1] = height;
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, logger);
    oslog = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_23B824000, oslog, v17, "mtkView delegate expected a different view.  Ignoring...", v18, 2u);
      MEMORY[0x23EEB0B70](v18, -1, -1);
    }
  }
}

uint64_t FullscreenCoveragePointsRenderer.prepareTurnTable()()
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
    _os_log_impl(&dword_23B824000, v3, v4, "Prepare turntable camera control!", v5, 2u);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of FullscreenCoveragePointsRenderer.prepareTurnTable());
  v24 = v6;
  type metadata accessor for TurnTableCameraControl();
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  swift_unknownObjectWeakInit();
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of FullscreenCoveragePointsRenderer.prepareTurnTable());
  *(v7 + 80) = v8;
  *(v7 + 128) = 0;
  *(v7 + 136) = 0;
  *(v7 + 144) = 1;
  result = Transform.init()();
  *(v7 + 160) = v10;
  *(v7 + 176) = v11;
  *(v7 + 192) = v12;
  if (one-time initialization token for minElevation != -1)
  {
    result = swift_once();
  }

  v13 = static TurnTableCameraControl.SphericalCoordinates.minElevation;
  if (*&static TurnTableCameraControl.SphericalCoordinates.minElevation > 1.5608)
  {
    __break(1u);
  }

  else
  {
    v14 = 0.0;
    if (*&static TurnTableCameraControl.SphericalCoordinates.minElevation >= 0.0)
    {
      v14 = *&static TurnTableCameraControl.SphericalCoordinates.minElevation;
    }

    *(v7 + 40) = 0;
    *(v7 + 44) = v14;
    *(v7 + 48) = v13;
    *(v7 + 52) = xmmword_23B920F20;
    *(v7 + 80) = v24;
    *(v7 + 32) = vdup_n_s32(0x3C23D70Au);
    *(v7 + 24) = 0;
    swift_unknownObjectWeakAssign();
    v15 = *(v7 + 64);
    *(v7 + 96) = *(v7 + 40);
    *(v7 + 112) = *(v7 + 56);
    *(v7 + 120) = v15;
    v16 = OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_turnTableCameraControl;
    v17 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_turnTableCameraControl);
    *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_turnTableCameraControl) = v7;

    v18 = objc_allocWithZone(type metadata accessor for DragGestureRecognizer());
    v19 = specialized DragGestureRecognizer.init(draggable:)(v7, v18);
    v20 = OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_dragGesture;
    if (*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_dragGesture))
    {
      [*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_view) removeGestureRecognizer_];
      v21 = *(v1 + v20);
    }

    else
    {
      v21 = 0;
    }

    *(v1 + v20) = v19;
    v22 = v19;

    [*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_view) addGestureRecognizer_];
    v23 = &protocol witness table for TurnTableCameraControl;
    if (!*(v1 + v16))
    {
      v23 = 0;
    }

    *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_transformProvider + 8) = v23;

    return swift_unknownObjectWeakAssign();
  }

  return result;
}

void FullscreenCoveragePointsRenderer.updateInternal()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v168.i64[0] = &v160 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v167.i64[0] = &v160 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v160 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v160 - v10;
  v12 = OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_coveragePointCloud;
  swift_beginAccess();
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v0 + v12, v11, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
  v13 = type metadata accessor for CoveragePointCloud();
  v14 = *(*(v13 - 8) + 48);
  v15 = v14(v11, 1, v13);
  outlined destroy of PerspectiveCameraComponent?(v11, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
  if (v15 == 1)
  {
    return;
  }

  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v0 + v12, v9, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
  if (v14(v9, 1, v13) == 1)
  {
    goto LABEL_38;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
  v17 = (*(*(v16 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v160 - v18;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v9, &v160 - v18, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
  _s19_RealityKit_SwiftUI18CoveragePointCloudVWOhTm_0(v9, type metadata accessor for CoveragePointCloud);
  v20 = OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_coveragePoints;
  swift_beginAccess();
  outlined assign with take of Cancellable?(v19, v0 + v20, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
  swift_endAccess();
  v21 = v0;
  v22 = v0 + v12;
  v23 = v167.i64[0];
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v22, v167.i64[0], &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
  if (v14(v23, 1, v13) == 1)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v24 = v13;
  *v25.i64 = CoveragePointCloud.bboxWorld.getter();
  v166 = v25;
  v165 = v26;
  v164 = v27;
  v163 = v28;
  _s19_RealityKit_SwiftUI18CoveragePointCloudVWOhTm_0(v23, type metadata accessor for CoveragePointCloud);
  Transform.init(matrix:)();
  v32 = v31;
  v33 = *v30.i64;
  if (one-time initialization token for automaticBoundingBoxPaddingFactor != -1)
  {
    v167 = v29;
    v166 = v30;
    v165 = v32;
    swift_once();
    v33 = *v166.i64;
    v29 = v167;
  }

  *v34.i64 = specialized simd_float4x4.init(translation:rotation:scale:)(v33, v29);
  v35 = v21;
  v36 = (v21 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_objectToWorld);
  *v36 = v34;
  v36[1] = v37;
  v36[2] = v38;
  v36[3] = v39;
  v40 = v168.i64[0];
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v21 + v12, v168.i64[0], &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
  if (v14(v40, 1, v24) == 1)
  {
    goto LABEL_40;
  }

  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
  v163.i64[0] = &v160;
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41 - 8);
  v44 = &v160 - v43;
  v45 = *(v24 + 20);
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v40 + v45, &v160 - v43, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
  v46 = type metadata accessor for ObjectCaptureSession.Frame.Object();
  v47 = *(v46 - 8);
  v48 = *(v47 + 48);
  if (v48(v44, 1, v46) == 1)
  {
    v49 = outlined destroy of PerspectiveCameraComponent?(v44, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
    v50 = *(MEMORY[0x277D860B8] + 16);
    v167 = *MEMORY[0x277D860B8];
    v166 = v50;
    v51 = *(MEMORY[0x277D860B8] + 48);
    v165 = *(MEMORY[0x277D860B8] + 32);
    v164 = v51;
  }

  else
  {
    ObjectCaptureSession.Frame.Object.transform.getter();
    v167 = v52;
    v166 = v53;
    v165 = v54;
    v164 = v55;
    v49 = (*(v47 + 8))(v44, v46);
  }

  MEMORY[0x28223BE20](v49);
  v56 = &v160 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v168.i64[0];
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v168.i64[0] + v45, v56, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
  if (v48(v56, 1, v46) == 1)
  {
    outlined destroy of PerspectiveCameraComponent?(v56, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
    v58 = *MEMORY[0x277D860B8];
    v59 = *(MEMORY[0x277D860B8] + 16);
    v60 = *(MEMORY[0x277D860B8] + 32);
    v61 = *(MEMORY[0x277D860B8] + 48);
  }

  else
  {
    ObjectCaptureSession.Frame.Object.boundingBox.getter();
    v163 = v62;
    v162 = v63;
    v161 = v64;
    v160 = v65;
    (*(v47 + 8))(v56, v46);
  }

  Transform.init(matrix:)();
  v163 = v66;
  v162 = v67;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of CoveragePointCloud.objectToInitialBoxWorld.getter);
  *v68.i64 = specialized simd_float4x4.init(translation:rotation:scale:)(*v162.i64, v163);
  v163 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v167, v68.f32[0]), v166, *v68.f32, 1), v165, v68, 2), v164, v68, 3);
  v162 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v167, v69.f32[0]), v166, *v69.f32, 1), v165, v69, 2), v164, v69, 3);
  v161 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v167, v70.f32[0]), v166, *v70.f32, 1), v165, v70, 2), v164, v70, 3);
  v167 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v167, v71.f32[0]), v166, *v71.f32, 1), v165, v71, 2), v164, v71, 3);
  _s19_RealityKit_SwiftUI18CoveragePointCloudVWOhTm_0(v57, type metadata accessor for CoveragePointCloud);
  v72 = (v35 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_objectToWorldUnscaled);
  v73 = v162;
  *v72 = v163;
  v72[1] = v73;
  v74 = v167;
  v72[2] = v161;
  v72[3] = v74;
  v75 = v36[1];
  v168 = *v36;
  v167 = v75;
  v76 = v36[3];
  v166 = v36[2];
  v165 = v76;
  v77 = OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_cameraFrustumRendererForShots;
  v78 = *(v35 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_cameraFrustumRendererForShots);
  if (v78)
  {
    if (*(v78 + 24) == 1)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v80 = Strong + OBJC_IVAR____TtC19_RealityKit_SwiftUI17CameraPathManager_cameraPosesBoundingBox;
        v81 = Strong;
        swift_beginAccess();
        v83 = *v80;
        v82 = *(v80 + 8);
        v85 = *(v80 + 16);
        v84 = *(v80 + 24);
        LOBYTE(v80) = *(v80 + 32);

        if ((v80 & 1) == 0)
        {
          v86.i64[0] = v83;
          v86.i64[1] = v82;
          v164 = v86;
          v86.i64[0] = v85;
          v86.i64[1] = v84;
          v163 = v86;
          _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of FullscreenCoveragePointsRenderer.updateInternal());
          v162 = v87;
          _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of FullscreenCoveragePointsRenderer.updateInternal());
          BoundingBox.init(min:max:)();
          BoundingBox.transformed(by:)();
          BoundingBox.union(_:)();
          *v90.i64 = specialized static BoundingBoxHelpers.asSRTMatrix(box:)(v88, v89);
          v168 = v90;
          v167 = v91;
          v166 = v92;
          v165 = v93;
        }
      }
    }
  }

  v94 = OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_lookAtBoxWorldProvider;
  v95 = *(v35 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_lookAtBoxWorldProvider);
  if (!v95)
  {
    Transform.init(matrix:)();
    v163 = v105;
    v162 = v106;
    v164 = v107;
    v104 = *(v35 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_localTime);
LABEL_25:
    type metadata accessor for AnimatedTargetTransformProvider();
    v108 = swift_allocObject();
    *(v108 + 208) = 0u;
    *(v108 + 224) = 0u;
    *(v108 + 240) = 0u;
    *(v108 + 192) = 0x3FC999999999999ALL;
    v169 = 1;
    *(v108 + 256) = 0;
    *(v108 + 264) = 1;
    v109 = v163;
    v110 = v162;
    *(v108 + 96) = v163;
    *(v108 + 112) = v110;
    *(v108 + 32) = vdupq_n_s64(0xFFF0000000000000);
    *(v108 + 48) = v109;
    v111 = v164;
    *(v108 + 64) = v110;
    *(v108 + 80) = v111;
    *(v108 + 128) = v111;
    *(v108 + 144) = v109;
    *(v108 + 160) = v110;
    *(v108 + 176) = v111;
    *(v108 + 24) = v104;
    *(v108 + 16) = 0x4000000000000000;
    v112 = *(v35 + v94);
    *(v35 + v94) = v108;

    goto LABEL_26;
  }

  v96 = *(v35 + v77);
  if (!v96)
  {
    goto LABEL_27;
  }

  v97 = *(v96 + 24);
  if (*(v35 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_showShotLocations) != v97)
  {
    *(v35 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_showShotLocations) = v97;
    v98 = OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_localTime;
    v99 = *(v35 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_localTime);
    if (*(v95 + 24) > v99)
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    *(v95 + 24) = v99;

    AnimatedTargetTransformProvider.updateAnimation()();
    v100 = *(v95 + 64);
    v164 = *(v95 + 48);
    v163 = v100;
    v162 = *(v95 + 80);

    specialized simd_float4x4.init(translation:rotation:scale:)(*v162.i64, v163);
    Transform.init(matrix:)();
    v163 = v101;
    v162 = v102;
    v164 = v103;

    v104 = *(v35 + v98);
    goto LABEL_25;
  }

LABEL_26:
  v95 = *(v35 + v94);
  if (!v95)
  {
LABEL_42:
    __break(1u);
    return;
  }

LABEL_27:

  Transform.init(matrix:)();
  v113 = OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_localTime;
  v114 = *(v35 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_localTime);
  v169 = 0;
  *(v95 + 208) = v115;
  *(v95 + 224) = v116;
  *(v95 + 240) = v117;
  *(v95 + 256) = v114 + 0.5;
  *(v95 + 264) = 0;
  AnimatedTargetTransformProvider.updateAnimation()();

  v118 = *(v35 + v94);
  if (!v118)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v119 = *(v35 + v113);
  if (*(v118 + 24) > v119)
  {
    __break(1u);
    goto LABEL_37;
  }

  *(v118 + 24) = v119;

  AnimatedTargetTransformProvider.updateAnimation()();
  v120 = *(v118 + 64);
  v168 = *(v118 + 48);
  v167 = v120;
  v166 = *(v118 + 80);

  *v121.i64 = specialized simd_float4x4.init(translation:rotation:scale:)(*v166.i64, v167);
  v168 = v121;
  v167 = v122;
  v166 = v123;
  v165 = v124;
  *v36 = v121;
  v36[1] = v122;
  v36[2] = v123;
  v36[3] = v124;
  v125 = (*(v35 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_viewportFOVDegs) * 3.1416) / 180.0;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of static BoundingBoxHelpers.getBoundingSphere(boxWorld:));
  Transform.init(matrix:)();
  v167 = v126;
  v127 = *v36;
  v128 = v36[1];
  v129 = v36[2];
  v130 = v36[3];
  Transform.init(matrix:)();
  v168 = v131;
  v166 = v132;
  v165 = v133;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23B91BFD0;
  *(inited + 32) = v125;
  *(inited + 36) = v125;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1g5Tf4g_n(inited);
  v164 = v135;
  swift_setDeallocating();
  v136 = vmulq_f32(v168, v168);
  v137 = sqrtf(v136.f32[2] + vaddv_f32(*v136.f32));
  v138 = v164.f32[1];
  if (v164.f32[1] >= v164.f32[0])
  {
    v138 = v164.f32[0];
  }

  v139 = (((v137 * 0.5) * 1.1) / tanf(v138 * 0.5)) + 0.001;
  *v140.i64 = specialized simd_float4x4.init(translation:rotation:scale:)(*v165.i64, v166);
  v168 = v140;
  v166 = v141;
  v165 = v142;
  v164 = v143;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of static BoundingBoxHelpers.getBoundingSphere(boxWorld:));
  Transform.init(matrix:)();
  v145 = vzip1_s32(*v167.f32, *v144.i8);
  v146 = vzip2_s32(*v167.f32, *v144.i8);
  *v144.i8 = vzip1_s32(*&vextq_s8(v167, v167, 8uLL), *&vextq_s8(v144, v144, 8uLL));
  *v144.i8 = vmul_f32(vsqrt_f32(vadd_f32(vmul_f32(*v144.i8, *v144.i8), vadd_f32(vmul_f32(v145, v145), vmul_f32(v146, v146)))), 0x3F0000003F000000);
  v147 = *v144.i32 + (v139 + *&v144.i32[1]);
  v148 = *(v35 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_viewportSize) / *(v35 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_viewportSize + 8);
  v149 = 1.0 / tanf(v125 * 0.5);
  v150.i64[0] = 0;
  v150.i32[3] = 0;
  *&v151 = v149 / v148;
  LODWORD(v152) = 0;
  *(&v152 + 1) = v149;
  v153.i64[0] = 0;
  v153.f32[2] = v147 / (0.001 - v147);
  v153.i32[3] = -1.0;
  v150.f32[2] = v153.f32[2] * 0.001;
  v154 = (v35 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_projection);
  *v154 = v151;
  v154[1] = v152;
  v154[2] = v153;
  v154[3] = v150;
  FullscreenCoveragePointsRenderer.updateTurnTable()();
  if (*(v35 + v77))
  {
    v155 = *(v35 + v113);
    v170 = __invert_f4(*(v35 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_viewToWorld));
    v168 = v170.columns[0];
    v167 = v170.columns[1];
    v166 = v170.columns[2];
    v165 = v170.columns[3];
    v170.columns[0] = v154[1];
    v164 = *v154;
    v163 = v170.columns[0];
    v170.columns[0] = v154[3];
    v162 = v154[2];
    v161 = v170.columns[0];

    CameraFrustumRendererForShots.update(time:worldToView:viewToClip:)(v155, v156, v157);
  }

  if (*(v35 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_cameraPathRenderer))
  {
    v171 = __invert_f4(*(v35 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_viewToWorld));
    v168 = v171.columns[0];
    v167 = v171.columns[1];
    v166 = v171.columns[2];
    v165 = v171.columns[3];
    v171.columns[0] = v154[1];
    v164 = *v154;
    v163 = v171.columns[0];
    v171.columns[0] = v154[3];
    v162 = v154[2];
    v161 = v171.columns[0];

    CameraPathRenderer.update(worldToView:viewToClip:)(v158, v159);
  }
}