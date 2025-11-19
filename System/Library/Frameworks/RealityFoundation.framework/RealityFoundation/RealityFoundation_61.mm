uint64_t block_copy_helper_55(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Swift::Int PhysicsBodyMode.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type PhysicsBodyMode and conformance PhysicsBodyMode()
{
  result = lazy protocol witness table cache variable for type PhysicsBodyMode and conformance PhysicsBodyMode;
  if (!lazy protocol witness table cache variable for type PhysicsBodyMode and conformance PhysicsBodyMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhysicsBodyMode and conformance PhysicsBodyMode);
  }

  return result;
}

float static PhysicsMassProperties.default.getter@<S0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for default != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  result = *&static PhysicsMassProperties.default;
  v2 = xmmword_1EBEB20F0;
  v3 = *&qword_1EBEB2100;
  v4 = xmmword_1EBEB2110;
  *a1 = static PhysicsMassProperties.default;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  return result;
}

__n128 PhysicsMassProperties.init()@<Q0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for identity != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = static simd_quatf.identity;
  *a1 = 1065353216;
  *(a1 + 16) = xmmword_1C18C7150;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = result;
  return result;
}

__n128 PhysicsMassProperties.centerOfMass.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 48);
  return result;
}

uint64_t PhysicsMassProperties.init(mass:inertia:centerOfMass:)@<X0>(__n128 *a1@<X8>, float a2@<S0>, __n128 a3@<Q1>, __n128 a4@<Q2>, __n128 a5@<Q3>)
{
  if (one-time initialization token for identity != -1)
  {
    v5 = a1;
    v6 = a2;
    v9 = a4;
    v10 = a5;
    v8 = a3;
    result = swift_once();
    a3 = v8;
    a4 = v9;
    a5 = v10;
    a2 = v6;
    a1 = v5;
  }

  a1->n128_f32[0] = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
  return result;
}

__n128 PhysicsMassProperties.init(shape:density:)@<Q0>(uint64_t a1@<X0>, void (*a2)(_OWORD *__return_ptr, void)@<X1>, uint64_t a3@<X8>)
{
  a2(v9, *(a1 + 16));
  v7 = v9[1];
  v8 = v9[0];
  v6 = v9[2];
  v4 = v10;
  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  *a3 = v4;
  result = v7;
  *(a3 + 16) = v6;
  *(a3 + 32) = v8;
  *(a3 + 48) = v7;
  return result;
}

uint64_t specialized static PhysicsMassProperties.== infix(_:_:)(float32x4_t *a1, float32x4_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v2.i32[3] = a1->i32[0];
  v3.i32[3] = a2->i32[0];
  if ((vminv_u16(vmovn_s32(vceqq_f32(v2, v3))) & 1) == 0)
  {
    return 0;
  }

  v5 = 0;
  v6 = a2[2];
  v7 = a1[2];
  v7.i32[3] = a1[3];
  v6.i32[3] = a2[3];
  if (vminv_u16(vmovn_s32(vceqq_f32(v7, v6))))
  {
    v8 = vmovn_s32(vceqq_f32(a1[3], a2[3]));
    if (v8.i8[2] & 1) != 0 && (v8.i8[4])
    {
      v5 = v8.i8[6];
    }
  }

  return v5 & 1;
}

uint64_t __RKEntityForceAction.__allocating_init(targetEntity:force:velocity:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7)
{
  v14 = swift_allocObject();
  *(v14 + 112) = 0;
  *(v14 + 120) = 0;
  *(v14 + 128) = 1;
  *(v14 + 144) = 0;
  *(v14 + 152) = 0;
  *(v14 + 160) = 1;
  *(v14 + 168) = 0u;
  *(v14 + 184) = 0u;
  *(v14 + 200) = 0;
  swift_beginAccess();
  *(v14 + 112) = a2;
  *(v14 + 120) = a3;
  *(v14 + 128) = a4 & 1;
  swift_beginAccess();
  *(v14 + 144) = a5;
  *(v14 + 152) = a6;
  *(v14 + 160) = a7 & 1;
  return __RKEntityAction.init(targetEntity:)(a1);
}

uint64_t __RKEntityForceAction.force.getter()
{
  swift_beginAccess();
  result = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  return result;
}

uint64_t __RKEntityForceAction.force.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  *(v3 + 112) = a1;
  *(v3 + 120) = a2;
  *(v3 + 128) = a3 & 1;
  return result;
}

uint64_t __RKEntityForceAction.velocity.getter()
{
  swift_beginAccess();
  result = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  return result;
}

uint64_t __RKEntityForceAction.velocity.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  *(v3 + 144) = a1;
  *(v3 + 152) = a2;
  *(v3 + 160) = a3 & 1;
  return result;
}

uint64_t __RKEntityForceAction.init(targetEntity:force:velocity:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 112) = 0;
  *(v7 + 120) = 0;
  *(v7 + 128) = 1;
  *(v7 + 152) = 0;
  *(v7 + 160) = 1;
  *(v7 + 144) = 0;
  *(v7 + 168) = 0u;
  *(v7 + 184) = 0u;
  *(v7 + 200) = 0;
  swift_beginAccess();
  *(v7 + 112) = a2;
  *(v7 + 120) = a3;
  *(v7 + 128) = a4 & 1;
  swift_beginAccess();
  *(v7 + 144) = a5;
  *(v7 + 152) = a6;
  *(v7 + 160) = a7 & 1;
  return __RKEntityAction.init(targetEntity:)(a1);
}

uint64_t __RKEntityForceAction.perform(with:)(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 8);
  swift_beginAccess();
  v4 = *(v1 + 16);
  v34 = 91;
  v35 = 0xE100000000000000;
  if (v4)
  {
    v36[0] = 0;
    v36[1] = 0xE000000000000000;
    v36[6] = v4;

    _print_unlocked<A, B>(_:_:)();
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
    v5 = 7104878;
  }

  MEMORY[0x1C68F3410](v5, v6);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v7 = StaticString.description.getter();
  MEMORY[0x1C68F3410](v7);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  v8 = v34;
  v9 = v35;
  v10 = *(v1 + 16);
  if (!v10)
  {
    v18 = static os_log_type_t.error.getter();
    specialized InteractionsLogger.log(_:_:)(v18, &v34);

    return 0;
  }

  swift_beginAccess();
  if (*(v1 + 104) == 1 && *(v1 + 96) == 1)
  {
    swift_beginAccess();
    if (*(v1 + 105) == 1)
    {

LABEL_14:
      v19 = static os_log_type_t.info.getter();
      specialized InteractionsLogger.log(_:_:)(v19, &v34);

LABEL_15:

      return 0;
    }
  }

  v11 = *(v3 + 16);

  if (!RESceneGetECSManagerNullable())
  {
    goto LABEL_14;
  }

  v12 = *(v2 + 96);
  v13 = *(v2 + 104);
  *(v2 + 96) = 1;
  *(v2 + 104) = 1;
  v34 = v12;
  LOBYTE(v35) = v13;
  __RKEntityAction.state.didset(&v34);
  v14 = *(v10 + 16);
  swift_retain_n();
  SceneNullable = REEntityGetSceneNullable();
  if (!SceneNullable)
  {
    goto LABEL_19;
  }

  v16 = SceneNullable;
  v17 = RESceneGetSwiftObject();
  type metadata accessor for Scene();
  if (v17)
  {
    swift_dynamicCastClassUnconditional();
  }

  else
  {
    swift_allocObject();
    Scene.init(coreScene:)(v16);
  }

  v21 = Scene.physicsOrigin.getter();

  if (!v21)
  {
LABEL_19:
    specialized static PhysicsSimulationComponent.nearestSimulationEntity(for:)(v10);
  }

  v22 = *(v10 + 16);
  RERigidBodyComponentGetComponentType();
  if (REEntityGetComponentByClass() && RERigidBodyComponentGetRigidBody())
  {
    RERigidBodyWakeUp();
    v23 = Entity.rcSceneEntity.getter();
    if (!v23)
    {

      goto LABEL_15;
    }

    v24 = *(v23 + 16);
    REEntityCalculateWorldOrientation();
    swift_beginAccess();
    if (*(v2 + 160))
    {
      swift_beginAccess();
      if (*(v2 + 128))
      {
LABEL_29:
        RENetworkMarkComponentDirty();

        goto LABEL_30;
      }

      v25 = *(v2 + 112);
      v26 = *(v2 + 120);
    }

    else
    {
      v27 = *(v2 + 144);
      v28 = *(v2 + 152);
      RERigidBodyGetMassFrame();
    }

    RERigidBodyApplyLinearImpulse();
    goto LABEL_29;
  }

LABEL_30:
  v29 = swift_allocObject();
  swift_weakInit();
  v30 = *(v2 + 32);
  v31 = *(v2 + 40);
  *(v2 + 32) = partial apply for closure #1 in __RKEntityForceAction.perform(with:);
  *(v2 + 40) = v29;

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v30);

  memset(v36, 0, 40);
  v32 = swift_allocObject();
  swift_weakInit();
  _s10RealityKit5SceneC9subscribe2to2on_7Combine11Cancellable_pxm_AA11EventSource_pSgyxctAA0I0RzlFAA0C6EventsO6UpdateV_Tt0g5(v36, partial apply for closure #2 in __RKEntityForceAction.perform(with:), v32, &v34);

  outlined destroy of BodyTrackingComponent?(v36, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
  swift_beginAccess();
  outlined assign with take of Cancellable?(&v34, v2 + 168);
  swift_endAccess();
  v34 = v8;
  v35 = v9;
  v33 = static os_log_type_t.info.getter();
  specialized InteractionsLogger.log(_:_:)(v33, &v34);

  return 1;
}

uint64_t closure #1 in __RKEntityForceAction.perform(with:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    outlined init with copy of Cancellable?(v1 + 168, &v3);
    if (*(&v4 + 1))
    {
      outlined init with copy of __REAssetService(&v3, v2);
      outlined destroy of BodyTrackingComponent?(&v3, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
      __swift_project_boxed_opaque_existential_1(v2, v2[3]);
      dispatch thunk of Cancellable.cancel()();
      __swift_destroy_boxed_opaque_existential_1(v2);
    }

    else
    {
      outlined destroy of BodyTrackingComponent?(&v3, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
    }

    v5 = 0;
    v3 = 0u;
    v4 = 0u;
    swift_beginAccess();
    outlined assign with take of Cancellable?(&v3, v1 + 168);
    swift_endAccess();
  }

  return result;
}

uint64_t closure #2 in __RKEntityForceAction.perform(with:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    v2 = *(v1 + 96);
    v3 = *(v1 + 104);
    *(v1 + 96) = 2;
    *(v1 + 104) = 1;
    v4 = v2;
    v5 = v3;

    __RKEntityAction.state.didset(&v4);
  }

  return result;
}

uint64_t __RKEntityForceAction.copy(with:)@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v2 = *(v1 + 16);
  swift_beginAccess();
  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  v5 = *(v1 + 128);
  swift_beginAccess();
  v7 = *(v1 + 144);
  v6 = *(v1 + 152);
  v12 = *(v1 + 160);
  v8 = type metadata accessor for __RKEntityForceAction();
  v9 = swift_allocObject();
  *(v9 + 112) = 0;
  *(v9 + 120) = 0;
  *(v9 + 128) = 1;
  *(v9 + 144) = 0;
  *(v9 + 152) = 0;
  *(v9 + 160) = 1;
  *(v9 + 168) = 0u;
  *(v9 + 184) = 0u;
  *(v9 + 200) = 0;
  swift_beginAccess();
  *(v9 + 112) = v3;
  *(v9 + 120) = v4;
  *(v9 + 128) = v5;
  swift_beginAccess();
  *(v9 + 144) = v7;
  *(v9 + 152) = v6;
  *(v9 + 160) = v12;

  result = __RKEntityAction.init(targetEntity:)(v10);
  a1[3] = v8;
  *a1 = result;
  return result;
}

uint64_t __RKEntityForceAction.clone(matching:newEntity:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  if (v3 && *(a1 + 16) == *(v3 + 16))
  {
    swift_beginAccess();
    v13 = *(v1 + 112);
    v14 = *(v1 + 120);
    v15 = *(v1 + 128);
    swift_beginAccess();
    v16 = *(v1 + 144);
    v17 = *(v1 + 152);
    v20 = *(v1 + 160);
    type metadata accessor for __RKEntityForceAction();
    v18 = swift_allocObject();
    *(v18 + 112) = 0;
    *(v18 + 120) = 0;
    *(v18 + 128) = 1;
    *(v18 + 144) = 0;
    *(v18 + 152) = 0;
    *(v18 + 160) = 1;
    *(v18 + 168) = 0u;
    *(v18 + 184) = 0u;
    *(v18 + 200) = 0;
    swift_beginAccess();
    *(v18 + 112) = v13;
    *(v18 + 120) = v14;
    *(v18 + 128) = v15;
    swift_beginAccess();
    *(v18 + 144) = v16;
    *(v18 + 152) = v17;
    *(v18 + 160) = v20;

    return __RKEntityAction.init(targetEntity:)(v19);
  }

  else
  {
    swift_beginAccess();
    v4 = *(v1 + 112);
    v5 = *(v1 + 120);
    v6 = *(v1 + 128);
    swift_beginAccess();
    v7 = *(v1 + 144);
    v8 = *(v1 + 152);
    v9 = *(v1 + 160);
    type metadata accessor for __RKEntityForceAction();
    v10 = swift_allocObject();
    *(v10 + 112) = 0;
    *(v10 + 120) = 0;
    *(v10 + 128) = 1;
    *(v10 + 144) = 0;
    *(v10 + 152) = 0;
    *(v10 + 160) = 1;
    *(v10 + 168) = 0u;
    *(v10 + 184) = 0u;
    *(v10 + 200) = 0;
    swift_beginAccess();
    *(v10 + 112) = v4;
    *(v10 + 120) = v5;
    *(v10 + 128) = v6;
    swift_beginAccess();
    *(v10 + 144) = v7;
    *(v10 + 152) = v8;
    *(v10 + 160) = v9;

    return __RKEntityAction.init(targetEntity:)(v11);
  }
}

uint64_t __RKEntityForceAction.deinit()
{
  swift_beginAccess();
  *(v0 + 96) = 2;
  *(v0 + 104) = 1;
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 32));
  v3 = *(v0 + 56);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 48));
  v4 = *(v0 + 64);

  v5 = *(v0 + 80);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 72));
  outlined destroy of BodyTrackingComponent?(v0 + 168, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  return v0;
}

uint64_t __RKEntityForceAction.__deallocating_deinit()
{
  swift_beginAccess();
  *(v0 + 96) = 2;
  *(v0 + 104) = 1;
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 32));
  v3 = *(v0 + 56);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 48));
  v4 = *(v0 + 64);

  v5 = *(v0 + 80);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 72));
  outlined destroy of BodyTrackingComponent?(v0 + 168, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  return swift_deallocClassInstance();
}

uint64_t specialized HasHierarchy.removeFromParent(preservingWorldTransform:)(char a1)
{
  v2 = v1;
  if (specialized HasHierarchy.parent.getter())
  {

    return specialized HasHierarchy.setParent(_:preservingWorldTransform:)(0, a1 & 1);
  }

  else
  {
    v5 = v1[2];
    result = REEntityGetSceneNullable();
    if (result)
    {
      v6 = result;
      v7 = RESceneGetSwiftObject();
      type metadata accessor for Scene();
      if (v7)
      {
        v8 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        swift_allocObject();
        v8 = Scene.init(coreScene:)(v6);
      }

      v9 = v8;
      v10 = *v2;
      swift_conformsToProtocol2();
      v11 = *(v9 + 16);
      v12 = v2[2];
      RESceneRemoveEntity();
    }
  }

  return result;
}

void static ReferenceComponent.loadReference(at:)(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (REEntityGetComponent())
  {
    ReferenceComponent.init(from:)(v30);
    v4 = v32;
    if (v33)
    {
      v5 = static os_log_type_t.error.getter();
      type metadata accessor for OS_os_log();
      v6 = static OS_os_log.default.getter();
      if (os_log_type_enabled(v6, v5))
      {
        v7 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v30[0] = v36;
        *v7 = 136315138;
        v8 = *(a1 + 16);
        REEntityGetName();
        v9 = String.init(cString:)();
        v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, v30);

        *(v7 + 4) = v11;
        _os_log_impl(&dword_1C1358000, v6, v5, "ReferenceComponent for %s is already loaded", v7, 0xCu);
        v12 = v36;
        __swift_destroy_boxed_opaque_existential_1(v36);
        MEMORY[0x1C6902A30](v12, -1, -1);
        MEMORY[0x1C6902A30](v7, -1, -1);
      }

      goto LABEL_12;
    }

    v21 = v30[1];
    v22 = v30[0];
    v23 = v31;
    v24 = v34;
    specialized static ReferenceComponent.findBundle(bundlePath:)(v31);
    if (v1)
    {
      static os_log_type_t.error.getter();
      type metadata accessor for OS_os_log();
      v27 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();

      swift_willThrow();

LABEL_12:

      return;
    }

    v26 = v25;
    type metadata accessor for Entity();
    v36 = v21;
    v28 = static Entity.load(named:in:)(v22, v21, v26);

    v30[0] = a1;

    Entity.ChildCollection.doAppend(_:preservingWorldTransform:)(v28, 0);

    v29 = 2;
    v35[0] = v22;
    v35[1] = v36;
    if (v24)
    {
      v29 = 258;
    }

    v35[2] = v23;
    v35[3] = v4;
    v35[4] = v29;
    v35[5] = v28;

    _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation0kD0V_TtB5(v35, 0, a1);

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v13 = static os_log_type_t.error.getter();
    type metadata accessor for OS_os_log();
    v14 = static OS_os_log.default.getter();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v30[0] = v16;
      *v15 = 136315138;
      v17 = *(a1 + 16);
      REEntityGetName();
      v18 = String.init(cString:)();
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, v30);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_1C1358000, v14, v13, "No ReferenceComponent found for %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1C6902A30](v16, -1, -1);
      MEMORY[0x1C6902A30](v15, -1, -1);
    }
  }
}

uint64_t static ReferenceComponent.loadReference(at:)(uint64_t a1)
{
  v1[14] = a1;
  type metadata accessor for MainActor();
  v1[15] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[16] = v3;
  v1[17] = v2;

  return MEMORY[0x1EEE6DFA0](static ReferenceComponent.loadReference(at:), v3, v2);
}

{
  v4 = *v2;
  v5 = *(*v2 + 192);
  v6 = *(*v2 + 184);
  v7 = *v2;
  *(*v2 + 200) = v1;

  if (v1)
  {
    v8 = v4[16];
    v9 = v4[17];
    v10 = static ReferenceComponent.loadReference(at:);
  }

  else
  {
    v4[26] = a1;
    v8 = v4[16];
    v9 = v4[17];
    v10 = static ReferenceComponent.loadReference(at:);
  }

  return MEMORY[0x1EEE6DFA0](v10, v8, v9);
}

uint64_t static ReferenceComponent.loadReference(at:)()
{
  v45 = v0;
  v1 = *(v0 + 112);
  v2 = *(v1 + 16);
  if (!REEntityGetComponent())
  {
    v20 = *(v0 + 120);

    v21 = static os_log_type_t.error.getter();
    type metadata accessor for OS_os_log();
    v22 = static OS_os_log.default.getter();
    if (os_log_type_enabled(v22, v21))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v39[0] = v24;
      *v23 = 136315138;
      v25 = *(v1 + 16);
      REEntityGetName();
      v26 = String.init(cString:)();
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, v39);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_1C1358000, v22, v21, "No ReferenceComponent found for %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1C6902A30](v24, -1, -1);
      MEMORY[0x1C6902A30](v23, -1, -1);
    }

    goto LABEL_14;
  }

  ReferenceComponent.init(from:)(v39);
  v4 = v39[0];
  v3 = v39[1];
  *(v0 + 144) = v39[0];
  *(v0 + 152) = v3;
  v6 = v40;
  v5 = v41;
  *(v0 + 160) = v40;
  *(v0 + 168) = v5;
  v7 = v42;
  v8 = v43;
  *(v0 + 217) = v43;
  *(v0 + 176) = v44;
  *(v0 + 216) = v8;
  if (v7)
  {
    v9 = *(v0 + 120);

    v10 = static os_log_type_t.default.getter();
    type metadata accessor for OS_os_log();
    v11 = static OS_os_log.default.getter();
    v12 = os_log_type_enabled(v11, v10);
    if (v7 == 1)
    {
      if (v12)
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v39[0] = v14;
        *v13 = 136315138;
        v15 = *(v1 + 16);
        REEntityGetName();
        v16 = String.init(cString:)();
        v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v39);

        *(v13 + 4) = v18;
        v19 = "ReferenceComponent for %s is currently loading";
LABEL_12:
        _os_log_impl(&dword_1C1358000, v11, v10, v19, v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v14);
        MEMORY[0x1C6902A30](v14, -1, -1);
        MEMORY[0x1C6902A30](v13, -1, -1);
      }
    }

    else if (v12)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v39[0] = v14;
      *v13 = 136315138;
      v30 = *(v1 + 16);
      REEntityGetName();
      v31 = String.init(cString:)();
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, v39);

      *(v13 + 4) = v33;
      v19 = "ReferenceComponent for %s is already loaded";
      goto LABEL_12;
    }

LABEL_14:
    v34 = *(v0 + 8);

    return v34();
  }

  specialized static ReferenceComponent.findBundle(bundlePath:)(v6);
  *(v0 + 184) = v29;
  v36 = v29;

  type metadata accessor for Entity();
  v37 = v36;
  v38 = swift_task_alloc();
  *(v0 + 192) = v38;
  *v38 = v0;
  v38[1] = static ReferenceComponent.loadReference(at:);

  return specialized Entity.init(named:in:)(v4, v3, v36);
}

{
  v1 = *(v0 + 208);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v5 = *(v0 + 160);
  v4 = *(v0 + 168);
  v7 = *(v0 + 144);
  v6 = *(v0 + 152);
  v9 = *(v0 + 112);
  v8 = *(v0 + 120);

  Entity.ChildCollection.doAppend(_:preservingWorldTransform:)(v1, 0);

  v10 = *(v0 + 216) == 0;
  v11 = 2;
  *(v0 + 64) = v7;
  if (!v10)
  {
    v11 = 258;
  }

  *(v0 + 72) = v6;
  *(v0 + 80) = v5;
  *(v0 + 88) = v4;
  *(v0 + 96) = v11;
  *(v0 + 104) = v1;

  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation0kD0V_TtB5((v0 + 64), 0, v9);
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  v12 = *(v0 + 8);

  return v12();
}

{
  v1 = *(v0 + 184);
  v2 = *(v0 + 120);

  v3 = *(v0 + 200);
  v5 = *(v0 + 168);
  v4 = *(v0 + 176);
  v7 = *(v0 + 152);
  v6 = *(v0 + 160);
  v8 = *(v0 + 112);
  v9 = *(v0 + 217) == 0;
  v10 = 256;
  *(v0 + 16) = *(v0 + 144);
  if (v9)
  {
    v10 = 0;
  }

  *(v0 + 24) = v7;
  *(v0 + 32) = v6;
  *(v0 + 40) = v5;
  *(v0 + 48) = v10;
  *(v0 + 56) = v4;

  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation0kD0V_TtB5((v0 + 16), 0, v8);

  static os_log_type_t.error.getter();
  type metadata accessor for OS_os_log();
  v11 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  swift_willThrow();

  v12 = *(v0 + 8);

  return v12();
}

unint64_t protocol witness for LocalizedError.errorDescription.getter in conformance ReferenceComponent.BundlePathError()
{
  if (*v0)
  {
    result = 0xD000000000000022;
  }

  else
  {
    result = 0xD00000000000002FLL;
  }

  *v0;
  return result;
}

Swift::Int ReferenceComponent.LoadingPolicy.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

Swift::Int ReferenceComponent.ReferenceState.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

uint64_t ReferenceComponent.init(named:at:loadingPolicy:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a5;
  *(a6 + 40) = 0;
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 33) = v6;
  *(a6 + 32) = 0;
  return result;
}

void ReferenceComponent.init(named:in:loadingPolicy:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a1;
  v31 = a2;
  v8 = type metadata accessor for CharacterSet();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  *&v11 = MEMORY[0x1EEE9AC00](v8).n128_u64[0];
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  HIDWORD(v28) = *a4;
  v29 = a3;
  v14 = [a3 bundlePath];
  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v15;
  v16 = [objc_opt_self() mainBundle];
  v17 = [v16 resourcePath];

  if (v17)
  {

    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v34 = v18;
    v35 = v20;
    v32 = 0;
    v33 = 0xE000000000000000;
    lazy protocol witness table accessor for type String and conformance String();
    v21 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v23 = v22;

    v36 = v21;
    v37 = v23;
    CharacterSet.init(charactersIn:)();
    v24 = StringProtocol.trimmingCharacters(in:)();
    v26 = v25;

    (*(v9 + 8))(v13, v8);

    v27 = v31;
    *a5 = v30;
    *(a5 + 8) = v27;
    *(a5 + 16) = v24;
    *(a5 + 24) = v26;
    *(a5 + 32) = 0;
    *(a5 + 33) = BYTE4(v28);
    *(a5 + 40) = 0;
  }

  else
  {
    __break(1u);
  }
}

uint64_t ReferenceComponent.init(named:loadingPolicy:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *(a4 + 40) = 0;
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0xE000000000000000;
  *(a4 + 33) = v4;
  *(a4 + 32) = 0;
  return result;
}

uint64_t ReferenceComponent.__toCore(_:)(uint64_t *a1)
{
  v3 = type metadata accessor for String.Encoding();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = *v1;
  v10 = v1[1];
  v12 = v1[2];
  v11 = v1[3];
  v13 = *(v1 + 32);
  v20[2] = *(v1 + 33);
  v20[3] = v13;
  v14 = v1[5];
  v21 = v9;
  v22 = v10;
  static String.Encoding.utf8.getter();
  lazy protocol witness table accessor for type String and conformance String();
  v15 = StringProtocol.cString(using:)();
  v16 = *(v4 + 8);
  result = v16(v7, v3);
  if (!v15)
  {
    __break(1u);
    goto LABEL_7;
  }

  REReferenceComponentSetEntityName();

  v21 = v12;
  v22 = v11;
  static String.Encoding.utf8.getter();
  v18 = StringProtocol.cString(using:)();
  result = v16(v7, v3);
  if (!v18)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  REReferenceComponentSetBundlePath();

  REReferenceComponentSetLoadingPolicy();
  REReferenceComponentSetLoadingState();
  if (v14)
  {
    v19 = *(v14 + 16);
    REReferenceComponentSetSubscene();
  }

  return RENetworkMarkComponentDirty();
}

uint64_t ReferenceComponent.init(from:)@<X0>(uint64_t a1@<X8>)
{
  if (REReferenceComponentGetReferenceSourceType())
  {
    goto LABEL_18;
  }

  if (!REReferenceComponentGetEntityName())
  {
    goto LABEL_16;
  }

  v2 = String.init(cString:)();
  v4 = v3;
  if (!REReferenceComponentGetBundlePath())
  {
LABEL_17:
    __break(1u);
LABEL_18:
    _StringGuts.grow(_:)(25);
    MEMORY[0x1C68F3410](0xD000000000000017, 0x80000001C18F0790);
    type metadata accessor for REReferenceSourceType(0);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v5 = String.init(cString:)();
  v7 = v6;
  LoadingPolicy = REReferenceComponentGetLoadingPolicy();
  LoadingState = REReferenceComponentGetLoadingState();
  result = REReferenceComponentGetSubscene();
  if (!result)
  {
    goto LABEL_11;
  }

  v11 = result;
  type metadata accessor for Entity();
  if (REEntityGetSwiftObject())
  {
    result = swift_dynamicCastClassUnconditional();
    goto LABEL_11;
  }

  if (REEntityIsBeingDestroyed())
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = static Entity.entityInfoType(_:)(v11);
  if (v12)
  {
    v13 = (*(v12 + 232))();
    v14 = *(v13 + 16);

    MEMORY[0x1C68F9740](v14, 0);
    *(v13 + 16) = v11;
    MEMORY[0x1C68F9740](v11, v13);

    result = v13;
  }

  else
  {
    result = makeEntity(for:)(v11);
  }

LABEL_11:
  if (LoadingState >= 3)
  {
    v15 = 0;
  }

  else
  {
    v15 = LoadingState;
  }

  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
  *(a1 + 32) = v15;
  *(a1 + 33) = LoadingPolicy == 1;
  *(a1 + 40) = result;
  return result;
}

Swift::String __swiftcall String.sanitizedBundlePath()()
{
  v2 = v1;
  v3 = v0;
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  static CharacterSet.whitespacesAndNewlines.getter();
  static CharacterSet.illegalCharacters.getter();
  CharacterSet.formUnion(_:)();
  v12 = *(v5 + 8);
  v12(v8, v4);
  static CharacterSet.controlCharacters.getter();
  CharacterSet.formUnion(_:)();
  v12(v8, v4);
  v26 = v3;
  v27 = v2;
  lazy protocol witness table accessor for type String and conformance String();
  v26 = StringProtocol.components(separatedBy:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v13 = BidirectionalCollection<>.joined(separator:)();
  v15 = v14;

  v16 = [objc_opt_self() mainBundle];
  v17 = [v16 resourcePath];

  if (v17)
  {
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v26 = v20;
    v27 = v22;

    MEMORY[0x1C68F3410](47, 0xE100000000000000);

    MEMORY[0x1C68F3410](v13, v15);

    v23 = v26;
    v24 = v27;
    v12(v11, v4);
    v18 = v23;
    v19 = v24;
  }

  else
  {
    __break(1u);
  }

  result._object = v19;
  result._countAndFlagsBits = v18;
  return result;
}

void static ReferenceComponent.releaseReference(at:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!REEntityGetComponent())
  {
    v9 = static os_log_type_t.error.getter();
    type metadata accessor for OS_os_log();
    v10 = static OS_os_log.default.getter();
    if (os_log_type_enabled(v10, v9))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136315138;
      v13 = *(a1 + 16);
      REEntityGetName();
      v14 = String.init(cString:)();
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v17);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_1C1358000, v10, v9, "No ReferenceComponent found for %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x1C6902A30](v12, -1, -1);
      MEMORY[0x1C6902A30](v11, -1, -1);
    }

    goto LABEL_9;
  }

  ReferenceComponent.init(from:)(&v17);
  v3 = v18;
  v4 = v20;
  if (!v22)
  {
    static os_log_type_t.error.getter();
    type metadata accessor for OS_os_log();
    v10 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

LABEL_9:

    return;
  }

  v5 = v17;
  v6 = v19;
  v7 = BYTE1(v21);
  specialized HasHierarchy.removeFromParent(preservingWorldTransform:)(0);

  v8 = 256;
  if (!v7)
  {
    v8 = 0;
  }

  v17 = v5;
  v18 = v3;
  v19 = v6;
  v20 = v4;
  v21 = v8;
  v22 = 0;

  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation0kD0V_TtB5(&v17, 0, a1);
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
}

void specialized static ReferenceComponent.findBundle(bundlePath:)(uint64_t a1)
{
  v3 = type metadata accessor for URLResourceValues();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - v15;
  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {
    v28 = [objc_opt_self() mainBundle];
    return;
  }

  v39 = v4;
  v40 = v3;
  String.sanitizedBundlePath()();
  URL.init(fileURLWithPath:)();
  URL.standardizedFileURL.getter();
  v41 = *(v9 + 8);
  v42 = v8;
  v41(v12, v8);
  URL.path.getter();
  v19 = [objc_opt_self() mainBundle];
  v20 = [v19 resourcePath];

  if (v20)
  {

    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24._countAndFlagsBits = v21;
    v24._object = v23;
    LOBYTE(v21) = String.hasPrefix(_:)(v24);

    if (v21)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo16NSURLResourceKeyaGMd, &_ss23_ContiguousArrayStorageCySo16NSURLResourceKeyaGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C1887600;
      v26 = *MEMORY[0x1E695DBC8];
      *(inited + 32) = *MEMORY[0x1E695DBC8];
      v27 = v26;
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo16NSURLResourceKeya_Tt0g5Tf4g_n(inited);
      swift_setDeallocating();
      outlined destroy of NSURLResourceKey(inited + 32);
      URL.resourceValues(forKeys:)();
      if (v1)
      {

LABEL_18:
        v34 = objc_allocWithZone(MEMORY[0x1E696AAE8]);
        URL._bridgeToObjectiveC()(v35);
        v37 = v36;
        [v34 initWithURL_];

        v41(v16, v42);
        return;
      }

      v31 = URLResourceValues.allValues.getter();
      (*(v39 + 8))(v7, v40);
      if (!v31)
      {
        goto LABEL_18;
      }

      if (!*(v31 + 16) || (v32 = specialized __RawDictionaryStorage.find<A>(_:)(v27), (v33 & 1) == 0))
      {

        goto LABEL_18;
      }

      outlined init with copy of Any(*(v31 + 56) + 32 * v32, v43);

      if ((swift_dynamicCast() & 1) == 0 || (v43[87] & 1) == 0)
      {
        goto LABEL_18;
      }

      v29 = 0;
    }

    else
    {
      v29 = 1;
    }

    lazy protocol witness table accessor for type ReferenceComponent.BundlePathError and conformance ReferenceComponent.BundlePathError();
    swift_allocError();
    *v30 = v29;
    swift_willThrow();
    v41(v16, v42);
    return;
  }

  __break(1u);
}

unint64_t lazy protocol witness table accessor for type ReferenceComponent.LoadingPolicy and conformance ReferenceComponent.LoadingPolicy()
{
  result = lazy protocol witness table cache variable for type ReferenceComponent.LoadingPolicy and conformance ReferenceComponent.LoadingPolicy;
  if (!lazy protocol witness table cache variable for type ReferenceComponent.LoadingPolicy and conformance ReferenceComponent.LoadingPolicy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReferenceComponent.LoadingPolicy and conformance ReferenceComponent.LoadingPolicy);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ReferenceComponent.ReferenceState and conformance ReferenceComponent.ReferenceState()
{
  result = lazy protocol witness table cache variable for type ReferenceComponent.ReferenceState and conformance ReferenceComponent.ReferenceState;
  if (!lazy protocol witness table cache variable for type ReferenceComponent.ReferenceState and conformance ReferenceComponent.ReferenceState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReferenceComponent.ReferenceState and conformance ReferenceComponent.ReferenceState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ReferenceComponent.BundlePathError and conformance ReferenceComponent.BundlePathError()
{
  result = lazy protocol witness table cache variable for type ReferenceComponent.BundlePathError and conformance ReferenceComponent.BundlePathError;
  if (!lazy protocol witness table cache variable for type ReferenceComponent.BundlePathError and conformance ReferenceComponent.BundlePathError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReferenceComponent.BundlePathError and conformance ReferenceComponent.BundlePathError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ReferenceComponent.BundlePathError and conformance ReferenceComponent.BundlePathError;
  if (!lazy protocol witness table cache variable for type ReferenceComponent.BundlePathError and conformance ReferenceComponent.BundlePathError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReferenceComponent.BundlePathError and conformance ReferenceComponent.BundlePathError);
  }

  return result;
}

float32x4_t orthonormalFrame(forward:up:)@<Q0>(float32x4_t *a1@<X8>, float32x4_t a2@<Q0>, int32x4_t a3@<Q1>)
{
  v3 = vmulq_f32(a2, a2);
  v3.f32[0] = sqrtf(v3.f32[2] + vaddv_f32(*v3.f32));
  v7 = vdupq_lane_s32(*v3.f32, 0);
  v4 = vdivq_f32(a2, v7);
  v7.f32[0] = a2.f32[2] / v3.f32[0];
  v5 = v4;
  v5.f32[2] = a2.f32[2] / v3.f32[0];
  v6 = v5;
  v6.i32[3] = 0;
  *(v7.i64 + 4) = v4.i64[0];
  v10 = vextq_s8(vuzp1q_s32(a3, a3), a3, 0xCuLL);
  v8 = vmlaq_f32(vmulq_f32(v10, vnegq_f32(v6)), a3, vextq_s8(vuzp1q_s32(v6, v6), v6, 0xCuLL));
  v9 = vmulq_f32(v8, v8);
  v10.f32[0] = sqrtf(v9.f32[1] + (v9.f32[2] + v9.f32[0]));
  if (v10.f32[0] >= 0.01)
  {
    v12 = vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL);
  }

  else
  {
    v11 = vmlaq_f32(vmulq_f32(v5, xmmword_1C18D4F50), xmmword_1C1887650, v7);
    v12 = vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL);
    v10 = vmulq_f32(v11, v11);
    v10.f32[0] = sqrtf(v10.f32[1] + (v10.f32[2] + v10.f32[0]));
  }

  if (v10.f32[0] < 0.01)
  {
    v13 = vmlaq_f32(vmulq_f32(v5, xmmword_1C18D4F60), xmmword_1C1887630, v7);
    v12 = vextq_s8(vuzp1q_s32(v13, v13), v13, 0xCuLL);
    v10 = vmulq_f32(v13, v13);
    v10.f32[0] = sqrtf(v10.f32[1] + (v10.f32[2] + v10.f32[0]));
  }

  *v12.f32 = vdiv_f32(*v12.f32, vdup_lane_s32(*v10.f32, 0));
  v14 = v12;
  v14.f32[2] = v12.f32[2] / v10.f32[0];
  *v12.f32 = vsub_f32(0, *v12.f32);
  v15 = vmlaq_f32(vmulq_f32(v7, vnegq_f32(v14)), v5, vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL));
  v12.f32[2] = 0.0 - (v12.f32[2] / v10.f32[0]);
  result = vmulq_n_f32(v6, v3.f32[0]);
  *a1 = vmulq_n_f32(v12, v3.f32[0]);
  a1[1] = vmulq_n_f32(vextq_s8(vuzp1q_s32(v15, v15), v15, 0xCuLL), v3.f32[0]);
  a1[2] = result;
  return result;
}

void MeshResource.ShapeExtrusionOptions.ExtrusionMethod.extractSweepCurve()()
{
  v1 = *v0;
  if (!*(v0 + 8))
  {
    orthonormalFrame(forward:up:)(&v29, *&zmmword_1C1887630[32], *&zmmword_1C1887630[16]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo13simd_float4x4aGMd, &_ss23_ContiguousArrayStorageCySo13simd_float4x4aGMR);
    v20 = swift_allocObject();
    v21 = v29;
    v22 = v30;
    v21.i32[3] = 0;
    v23 = *&zmmword_1C1887630[48];
    v24 = *&zmmword_1C1887630[48];
    *(&v24 + 2) = *&v1 * -0.5;
    v25 = v31;
    v22.i32[3] = 0;
    HIDWORD(v25) = 0;
    v20[1] = xmmword_1C1897FC0;
    v20[2] = v21;
    *(&v23 + 2) = *&v1 * 0.5;
    v20[3] = v22;
    v20[4] = v25;
    v20[5] = v24;
    v20[6] = v21;
    v20[7] = v22;
    v20[8] = v25;
    v20[9] = v23;
    return;
  }

  if (*(v0 + 8) != 1)
  {
    v26 = *v0;

    return;
  }

  v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1[1].i64[0], 0, MEMORY[0x1E69E7CC0]);
  v3 = v1[1].i64[0];
  if (!v3)
  {
    return;
  }

  v4 = 0;
  v27 = *&zmmword_1C1887630[32];
  v5 = *&zmmword_1C1887630[16];
  for (i = v1 + 3; ; ++i)
  {
    v7 = i[-1];
    v28 = v7;
    if (!v4)
    {
      if (v3 == 1)
      {
        goto LABEL_16;
      }

      v8 = vsubq_f32(*i, v7);
      goto LABEL_11;
    }

    if (v3 - 1 == v4)
    {
      if (v3 - 2 >= v1[1].i64[0])
      {
        goto LABEL_24;
      }

      v8 = vsubq_f32(v7, v1[v3]);
LABEL_11:
      v9 = v8.f32[2];
      v10 = vmul_f32(*v8.f32, *v8.f32);
      v10.f32[0] = sqrtf(vmuls_lane_f32(v8.f32[2], v8, 2) + vaddv_f32(v10));
      if (fabsf(v10.f32[0]) > 0.00001)
      {
        goto LABEL_15;
      }

      goto LABEL_16;
    }

    if ((v4 - 1) >= v1[1].i64[0])
    {
      break;
    }

    v11 = i[-2];
    v12 = vextq_s8(v7, v7, 8uLL).u64[0];
    *v8.f32 = vmul_f32(vadd_f32(vsub_f32(*v7.f32, *v11.i8), vsub_f32(*i->f32, *v7.f32)), 0x3F0000003F000000);
    v9 = vaddv_f32(vsub_f32(vzip1_s32(v12, *&vextq_s8(*i, *i, 8uLL)), vzip1_s32(*&vextq_s8(v11, v11, 8uLL), v12))) * 0.5;
    v10 = vmul_f32(*v8.f32, *v8.f32);
    v10.f32[0] = sqrtf((v9 * v9) + vaddv_f32(v10));
    if (fabsf(v10.f32[0]) > 0.00001)
    {
LABEL_15:
      v8.i64[1] = COERCE_UNSIGNED_INT(v9 / v10.f32[0]);
      *v8.f32 = vdiv_f32(*v8.f32, vdup_lane_s32(v10, 0));
      v27 = v8;
    }

LABEL_16:
    orthonormalFrame(forward:up:)(&v29, v27, v5);
    v14 = *(v2 + 2);
    v13 = *(v2 + 3);
    if (v14 >= v13 >> 1)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v2);
    }

    ++v4;
    v15 = v29;
    v5 = v30;
    v16 = v31;
    v15.i32[3] = 0;
    v17 = v30;
    v17.i32[3] = 0;
    HIDWORD(v16) = 0;
    v18 = v28;
    v18.i32[3] = 1.0;
    *(v2 + 2) = v14 + 1;
    v19 = &v2[64 * v14];
    *(v19 + 2) = v15;
    *(v19 + 3) = v17;
    *(v19 + 4) = v16;
    *(v19 + 5) = v18;
    if (v3 == v4)
    {
      return;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
}

char *specialized CurveExtruder.init(shape:accumulatedOutlineIndexCount:)(char *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    goto LABEL_29;
  }

  v3 = *(result + 2);
  if (v3 != *(a2 + 32 + 4 * v2 - 4))
  {
LABEL_30:
    __break(1u);
    return result;
  }

  v33 = result;
  v34 = a2 + 32;
  v35 = *(a2 + 16);
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 4 * v3, 0, MEMORY[0x1E69E7CC0]);
  v5 = v34;
  v4 = v35;
  v6 = a2;
  v7 = result;
  v8 = 0;
  v9 = 0;
  while (2)
  {
    if (v9 >= *(v6 + 16))
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v10 = *(v5 + 4 * v9);
    v11 = v10 - v8;
    if (v10 <= v8)
    {
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v12 = 0;
    ++v9;
    do
    {
      v13 = v8 + v12;
      if (v8 + v12 >= v10)
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v14 = (v12 + 1) % v11;
      v15 = v14 + v8;
      if (__CFADD__(v14, v8))
      {
        goto LABEL_24;
      }

      v17 = *(v7 + 2);
      v16 = *(v7 + 3);
      v18 = v16 >> 1;
      v19 = v17 + 1;
      if (v16 >> 1 <= v17)
      {
        v28 = v9;
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v7);
        v9 = v28;
        v5 = v34;
        v4 = v35;
        v6 = a2;
        v7 = result;
        v16 = *(result + 3);
        v18 = v16 >> 1;
      }

      *(v7 + 2) = v19;
      *&v7[4 * v17 + 32] = v13;
      v20 = v17 + 2;
      if (v18 < (v17 + 2))
      {
        v31 = v9;
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 2, 1, v7);
        v9 = v31;
        v5 = v34;
        v4 = v35;
        v6 = a2;
        v7 = result;
      }

      *(v7 + 2) = v20;
      *&v7[4 * v19 + 32] = v15;
      v21 = __CFADD__(v15, v3);
      v22 = v15 + v3;
      if (v21)
      {
        goto LABEL_25;
      }

      v23 = *(v7 + 3);
      v24 = v17 + 3;
      if ((v17 + 3) > (v23 >> 1))
      {
        v32 = v9;
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v17 + 3, 1, v7);
        v9 = v32;
        v5 = v34;
        v4 = v35;
        v6 = a2;
        v7 = result;
      }

      *(v7 + 2) = v24;
      *&v7[4 * v20 + 32] = v22;
      v21 = __CFADD__(v13, v3);
      v25 = v13 + v3;
      if (v21)
      {
        goto LABEL_26;
      }

      v26 = *(v7 + 3);
      v27 = v17 + 4;
      if ((v17 + 4) > (v26 >> 1))
      {
        v29 = v17 + 4;
        v30 = v9;
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v29, 1, v7);
        v9 = v30;
        v5 = v34;
        v4 = v35;
        v6 = a2;
        v7 = result;
      }

      *(v7 + 2) = v27;
      *&v7[4 * v24 + 32] = v25;
      ++v12;
    }

    while (v11 != v12);
    v8 = v10;
    if (v9 != v4)
    {
      continue;
    }

    return v33;
  }
}

uint64_t specialized CurveExtruder.populate(indexBuffer:curveLength:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a3 - 1;
  if (__OFSUB__(a3, 1))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v6 = *(a5 + 16);
  if ((v5 * v6) >> 64 != (v5 * v6) >> 63)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v5 * v6 != a2)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v5 < 0)
  {
LABEL_29:
    __break(1u);
    return result;
  }

  if (a3 != 1)
  {
    v7 = 0;
    while (1)
    {
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v6)
      {
        v9 = v7 * v6;
        if ((v7 * v6) >> 64 != (v7 * v6) >> 63)
        {
          goto LABEL_22;
        }

        v10 = *(a4 + 16);
        v11 = v7 * v10;
        if ((v7 * v10) >> 64 != (v7 * v10) >> 63)
        {
          goto LABEL_23;
        }

        if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_24;
        }

        v12 = HIDWORD(v11);
        if (HIDWORD(v11))
        {
          goto LABEL_25;
        }

        while (1)
        {
          v13 = v9 + v12;
          if (__OFADD__(v9, v12))
          {
            break;
          }

          v14 = *(a5 + 32 + 4 * v12);
          v15 = __CFADD__(v14, v11);
          v16 = v14 + v11;
          if (v15)
          {
            goto LABEL_20;
          }

          ++v12;
          *(result + 4 * v13) = v16;
          if (v6 == v12)
          {
            goto LABEL_7;
          }
        }

        __break(1u);
LABEL_20:
        __break(1u);
        break;
      }

LABEL_7:
      v7 = v8;
      if (v8 == v5)
      {
        return result;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  return result;
}

uint64_t extrude(text:textOptions:shapeOptions:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v190 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 16);
  v188[0] = *a2;
  v188[1] = v3;
  v189 = *(a2 + 32);
  outlined init with copy of MeshResource.ShapeExtrusionOptions(a3, &v183);
  v185 = v185 * 0.013889;
  __dst[0].a = v183;
  LOBYTE(__dst[0].b) = v184;
  outlined copy of MeshResource.ShapeExtrusionOptions.ExtrusionMethod(*&v183, v184);
  LODWORD(v4) = 1013157433;
  MeshResource.ShapeExtrusionOptions.ExtrusionMethod.scaled(by:)(matrix, v4);
  outlined consume of MeshResource.ShapeExtrusionOptions.ExtrusionMethod(*&__dst[0].a, LOBYTE(__dst[0].b));
  a = matrix[0].a;
  b_low = LOBYTE(matrix[0].b);
  outlined consume of MeshResource.ShapeExtrusionOptions.ExtrusionMethod(*&v183, v184);
  v183 = a;
  v184 = b_low;
  v7 = AttributedString.createTextFrame(containerRect:)(v188);
  v8 = CTFrameGetPath(v7);
  BoundingBox = CGPathGetBoundingBox(v8);
  x = BoundingBox.origin.x;
  y = BoundingBox.origin.y;

  v11 = CTFrameGetLines(v7);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = specialized _arrayForceCast<A, B>(_:)(v12);

  v14 = v13;
  v161 = v13 >> 62;
  if (v13 >> 62)
  {
    v17 = v13;
    v18 = __CocoaSet.count.getter();
    if (v18 < 0)
    {
      __break(1u);
    }

    v15 = v18;
    v146 = v17;
    if (v18)
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = MEMORY[0x1E69E7CC0];
    goto LABEL_8;
  }

  v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v146 = v14;
  if (!v15)
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for CGPoint(0);
  v16 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v16 + 16) = v15;
  bzero((v16 + 32), 16 * v15);
LABEL_8:
  v162 = v16;
  v191.location = 0;
  v191.length = v15;
  v159 = v16 + 32;
  CTFrameGetLineOrigins(v7, v191, (v16 + 32));
  v19 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation23ExtrudedGlyphDescriptorV4InfoV_AETt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  UIFontForLanguage = CTFontCreateUIFontForLanguage(kCTFontUIFontSystem, 12.0, 0);
  if (!UIFontForLanguage)
  {
    goto LABEL_141;
  }

  v20 = *MEMORY[0x1E6965658];
  v147 = *MEMORY[0x1E69659D8];
  v21 = CTFrameGetFrameAttributes(v7);
  key = v20;
  if (v21)
  {
    v22 = v21;
    Value = CFDictionaryGetValue(v21, v20);

    if (Value)
    {

      UIFontForLanguage = Value;
    }
  }

  v25 = y;

  v26 = 0;
  v160 = v7;
  if (v161)
  {
    goto LABEL_15;
  }

LABEL_13:
  if (v26 == *((v146 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_119:

LABEL_121:

    v137 = v19[2];
    if (v137)
    {
      v138 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC17RealityFoundation23ExtrudedGlyphDescriptorV_Tt1g5(v19[2], 0);
      v139 = specialized Sequence._copySequenceContents(initializing:)(matrix, v138 + 32, v137, v19);

      outlined consume of [String : AnimationResource].Iterator._Variant();
      if (v139 != v137)
      {
        goto LABEL_140;
      }
    }

    else
    {

      v138 = MEMORY[0x1E69E7CC0];
    }

    outlined destroy of MeshResource.ShapeExtrusionOptions(&v183);
LABEL_127:
    v140 = *MEMORY[0x1E69E9840];
    return v138;
  }

  while (1)
  {
    if ((v146 & 0xC000000000000001) != 0)
    {
      v27 = MEMORY[0x1C68F41F0](v26, v146);
    }

    else
    {
      if (v26 >= *((v146 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_133;
      }

      v27 = *(v146 + 32 + 8 * v26);
    }

    v28 = v27;
    if (__OFADD__(v26, 1))
    {
      goto LABEL_132;
    }

    v29 = *(v162 + 2);
    if (v26 == v29)
    {

      goto LABEL_121;
    }

    if (v26 >= v29)
    {
      goto LABEL_134;
    }

    v171 = v26 + 1;
    v30 = (v159 + 16 * v26);
    v31 = *v30;
    v32 = v30[1];
    v173 = v27;
    v33 = CTLineGetGlyphRuns(v27);
    v34 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v34 >> 62))
    {
      v35 = v34 & 0xFFFFFFFFFFFFFF8;

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for CTRunRef(0);
      if (swift_dynamicCastMetatype() || (v38 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
      {

        goto LABEL_25;
      }

      v39 = v34;
      v40 = 0;
      while (v40 < v38)
      {
        v41 = *(v35 + 32 + 8 * v40);
        swift_unknownObjectRetain();
        if (!swift_dynamicCastUnknownClass())
        {

          swift_unknownObjectRelease();
          v34 = v35 | 1;
          goto LABEL_25;
        }

        swift_unknownObjectRelease();
        ++v40;
        v38 = *(v35 + 16);
        if (v40 == v38)
        {
          v34 = v39;

          goto LABEL_25;
        }
      }

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
    }

    type metadata accessor for CTRunRef(0);

    v42 = _bridgeCocoaArray<A>(_:)();
    swift_bridgeObjectRelease_n();
    v34 = v42;
LABEL_25:
    if (v34 >> 62)
    {
      break;
    }

    v36 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v37 = v173;
    if (v36)
    {
      goto LABEL_39;
    }

LABEL_27:

    v26 = v171;
    if (!v161)
    {
      goto LABEL_13;
    }

LABEL_15:
    if (v26 == __CocoaSet.count.getter())
    {
      goto LABEL_119;
    }
  }

  v36 = __CocoaSet.count.getter();
  v37 = v173;
  if (!v36)
  {
    goto LABEL_27;
  }

LABEL_39:
  v43 = 0;
  v144 = v36;
  v145 = v34 & 0xC000000000000001;
  v142 = v34 + 32;
  v143 = v34 & 0xFFFFFFFFFFFFFF8;
  v44 = v31;
  v45 = v32;
  v24 = x;
  v46 = v24 + v44;
  v47 = v25 + v45;
  v164 = v34;
  while (1)
  {
    if (v145)
    {
      v48 = MEMORY[0x1C68F41F0](v43, v34);
    }

    else
    {
      if (v43 >= *(v143 + 16))
      {
        goto LABEL_139;
      }

      v48 = *(v142 + 8 * v43);
    }

    run = v48;
    v49 = __OFADD__(v43, 1);
    v50 = v43 + 1;
    if (v49)
    {
      goto LABEL_137;
    }

    v51 = CTRunGetAttributes(v48);
    v52 = UIFontForLanguage;
    theDict = v51;
    v53 = CFDictionaryGetValue(theDict, key);
    font = v52;
    if (v53)
    {
      v54 = v53;

      font = v54;
    }

    v152 = v52;
    v55 = CFDictionaryGetValue(theDict, v147);

    if (v55)
    {
      v174 = v55;
      v56 = v55;
    }

    else
    {
      v174 = 0;
    }

    GlyphCount = CTRunGetGlyphCount(run);
    if (GlyphCount < 0)
    {
      goto LABEL_138;
    }

    v58 = GlyphCount;
    if (GlyphCount)
    {
      v59 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v59 + 16) = v58;
      bzero((v59 + 32), 2 * v58);
      type metadata accessor for CGPoint(0);
      v60 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v60 + 16) = v58;
      bzero((v60 + 32), 16 * v58);
    }

    else
    {
      v59 = MEMORY[0x1E69E7CC0];
      v60 = MEMORY[0x1E69E7CC0];
    }

    v149 = v50;
    v192.location = 0;
    v192.length = v58;
    v168 = v59 + 32;
    CTRunGetGlyphs(run, v192, (v59 + 32));
    v172 = v60;
    v193.location = 0;
    v193.length = v58;
    v167 = v60 + 32;
    CTRunGetPositions(run, v193, (v60 + 32));
    v166 = *(v59 + 16);
    if (v166)
    {
      break;
    }

LABEL_40:

    v43 = v149;
    v37 = v173;
    if (v149 == v144)
    {
      goto LABEL_27;
    }
  }

  v61 = 0;
  v62 = v60;
  v165 = v59;
  while (2)
  {
    if (v61 >= *(v59 + 16))
    {
      goto LABEL_129;
    }

    v70 = *(v62 + 16);
    if (v61 == v70)
    {
      goto LABEL_40;
    }

    if (v61 >= v70)
    {
      goto LABEL_130;
    }

    v71 = *(v168 + 2 * v61);
    v72 = (v167 + 16 * v61);
    v73 = *v72;
    v74 = v72[1];
    v75 = CTFontCopyFullName(font);
    v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v78 = v77;

    Size = CTFontGetSize(font);
    v80 = CTFontCopyNameForGlyph(font, v71);
    if (!v80)
    {
      goto LABEL_68;
    }

    v81 = v80;
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {

      goto LABEL_68;
    }

    matrix[0].b = 0.0;
    matrix[0].a = 0.0;
    static String._conditionallyBridgeFromObjectiveC(_:result:)();

    b = matrix[0].b;
    if (!*&matrix[0].b)
    {
LABEL_68:
      v83 = 0.0;
      b = 0.0;
      goto LABEL_69;
    }

    v83 = matrix[0].a;
LABEL_69:
    SymbolicTraits = CTFontGetSymbolicTraits(font);
    *&v181.a = v76;
    v181.b = v78;
    v181.c = Size;
    *&v181.d = v174;
    v181.tx = v83;
    v181.ty = b;
    LOWORD(v182) = v71;
    HIDWORD(v182) = SymbolicTraits;
    v186 = v181;
    v187 = v182;
    v85 = v73;
    v86 = v74;
    *&v87 = (v46 + v85) * 0.013889;
    *(&v87 + 1) = (v47 + v86) * 0.013889;
    v175 = v87;
    v88 = v19;
    v89 = v19[2];
    v90 = v174;
    if (v89)
    {
      specialized __RawDictionaryStorage.find<A>(_:)(&v186);
      if (v91)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        __src[0] = v19;
        v94 = specialized __RawDictionaryStorage.find<A>(_:)(&v186);
        v95 = v19[2];
        v96 = (v93 & 1) == 0;
        v97 = v95 + v96;
        if (__OFADD__(v95, v96))
        {
          goto LABEL_136;
        }

        v98 = v93;
        if (v19[3] >= v97)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if ((v93 & 1) == 0)
            {
              goto LABEL_118;
            }
          }

          else
          {
            specialized _NativeDictionary.copy()();
            if ((v98 & 1) == 0)
            {
              goto LABEL_118;
            }
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v97, isUniquelyReferenced_nonNull_native);
          v99 = specialized __RawDictionaryStorage.find<A>(_:)(&v186);
          if ((v98 & 1) != (v100 & 1))
          {
            break;
          }

          v94 = v99;
          if ((v98 & 1) == 0)
          {
LABEL_118:
            __break(1u);
            goto LABEL_119;
          }
        }

        v126 = *(__src[0] + 56) + 72 * v94;
        v127 = *(v126 + 8);
        if (v127 == 0.0)
        {
          goto LABEL_118;
        }

        v154 = *v126;
        v157 = *(v126 + 24);
        v158 = *(v126 + 16);
        v128 = *(v126 + 32);
        v129 = *(v126 + 40);
        v130 = *(v126 + 56);
        v156 = *(v126 + 48);
        v131 = *(v126 + 64);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v131 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v131 + 2) + 1, 1, v131);
        }

        v133 = *(v131 + 2);
        v132 = *(v131 + 3);
        v155 = v130;
        if (v133 >= v132 >> 1)
        {
          v131 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v132 > 1), v133 + 1, 1, v131);
        }

        *(v131 + 2) = v133 + 1;
        *&v131[8 * v133 + 32] = v175;
        v170 = __src[0];
        v134 = (*(__src[0] + 56) + 72 * v94);
        *v134 = v154;
        v134[1] = v127;
        v134[2] = v158;
        v134[3] = v157;
        v134[4] = v128;
        v134[5] = v129;
        v135 = v129;
        v134[6] = v156;
        v134[7] = v155;
        *(v134 + 8) = v131;
        matrix[0].a = v154;
        matrix[0].b = v127;
        matrix[0].c = v158;
        matrix[0].d = v157;
        matrix[0].tx = v128;
        matrix[0].ty = v129;
        matrix[1].a = v156;
        matrix[1].b = v155;
        *&matrix[1].c = v131;
        outlined init with copy of ExtrudedGlyphDescriptor(matrix, __dst);
        outlined destroy of ExtrudedGlyphDescriptor.Info(&v181);
        matrix[0].a = v154;
        matrix[0].b = v127;
        matrix[0].c = v158;
        matrix[0].d = v157;
        matrix[0].tx = v128;
        v19 = v170;
        matrix[0].ty = v135;
        matrix[1].a = v156;
        matrix[1].b = v155;
        *&matrix[1].c = v131;
        outlined destroy of BodyTrackingComponent?(matrix, &_s17RealityFoundation23ExtrudedGlyphDescriptorVSgMd, &_s17RealityFoundation23ExtrudedGlyphDescriptorVSgMR);
        v7 = v160;
        v34 = v164;
        v59 = v165;
        v62 = v172;
        goto LABEL_59;
      }
    }

    CGAffineTransformMakeScale(__dst, 0.013888889, 0.013888889);
    matrix[0] = __dst[0];
    PathForGlyph = CTFontCreatePathForGlyph(font, v71, matrix);
    if (!PathForGlyph)
    {
      v104 = MEMORY[0x1E69E7CC0];
      if (!v174)
      {
        goto LABEL_98;
      }

LABEL_79:
      v105 = *(v104 + 16);
      if (!v105)
      {

        v107 = MEMORY[0x1E69E7CC0];
        goto LABEL_100;
      }

      v169 = v19;
      v177 = MEMORY[0x1E69E7CC0];
      v106 = v90;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v105, 0);
      v107 = v177;
      v108 = v105 - 1;
      for (i = 32; ; i += 520)
      {
        memcpy(matrix, (v104 + i), 0x208uLL);
        memcpy(__dst, (v104 + i), 0x208uLL);
        if (*&__dst[0].b)
        {
          break;
        }

        outlined init with copy of ExtrudedShapeDescriptor(matrix, __src);
        outlined init with copy of ExtrudedShapeDescriptor(matrix, __src);
        if (*&__dst[2].c)
        {
          goto LABEL_83;
        }

LABEL_84:
        if (*&__dst[4].d)
        {
          MeshDescriptor.setColor(_:)(v106);
        }

        if (*&__dst[6].tx)
        {
          MeshDescriptor.setColor(_:)(v106);
        }

        if (*&__dst[8].ty)
        {
          MeshDescriptor.setColor(_:)(v106);
        }

        outlined destroy of ExtrudedShapeDescriptor(matrix);
        memcpy(__src, __dst, sizeof(__src));
        v111 = *(v177 + 16);
        v110 = *(v177 + 24);
        if (v111 >= v110 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v110 > 1), v111 + 1, 1);
        }

        *(v177 + 16) = v111 + 1;
        memcpy((v177 + 520 * v111 + 32), __src, 0x208uLL);
        if (!v108)
        {

          v7 = v160;
          v88 = v169;
          goto LABEL_100;
        }

        --v108;
      }

      outlined init with copy of ExtrudedShapeDescriptor(matrix, __src);
      outlined init with copy of ExtrudedShapeDescriptor(matrix, __src);
      MeshDescriptor.setColor(_:)(v106);
      if (!*&__dst[2].c)
      {
        goto LABEL_84;
      }

LABEL_83:
      MeshDescriptor.setColor(_:)(v106);
      goto LABEL_84;
    }

    v102 = PathForGlyph;
    v103 = extrude(path:options:)(PathForGlyph, &v183);
    if (v163)
    {

      v138 = v162;

      swift_bridgeObjectRelease_n();
      outlined destroy of ExtrudedGlyphDescriptor.Info(&v181);

      outlined destroy of MeshResource.ShapeExtrusionOptions(&v183);
      goto LABEL_127;
    }

    v104 = v103;

    if (v174)
    {
      goto LABEL_79;
    }

LABEL_98:
    v107 = v104;
LABEL_100:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5SIMD2VySfGGMd, &_ss23_ContiguousArrayStorageCys5SIMD2VySfGGMR);
    v112 = swift_allocObject();
    *(v112 + 16) = xmmword_1C1887600;
    *(v112 + 32) = v175;
    outlined init with copy of ExtrudedGlyphDescriptor.Info(&v181, matrix);
    v113 = swift_isUniquelyReferenced_nonNull_native();
    __src[0] = v88;
    v114 = specialized __RawDictionaryStorage.find<A>(_:)(&v186);
    v116 = v88[2];
    v117 = (v115 & 1) == 0;
    v49 = __OFADD__(v116, v117);
    v118 = v116 + v117;
    if (v49)
    {
      goto LABEL_131;
    }

    v119 = v115;
    if (v88[3] >= v118)
    {
      if ((v113 & 1) == 0)
      {
        v136 = v114;
        specialized _NativeDictionary.copy()();
        v114 = v136;
      }

      goto LABEL_106;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v118, v113);
    v114 = specialized __RawDictionaryStorage.find<A>(_:)(&v186);
    if ((v119 & 1) == (v120 & 1))
    {
LABEL_106:
      __dst[0] = v181;
      __dst[1].a = v182;
      if (v119)
      {
        v19 = __src[0];
        v63 = *(__src[0] + 56) + 72 * v114;
        *&matrix[0].a = *v63;
        v65 = *(v63 + 32);
        v64 = *(v63 + 48);
        v66 = *(v63 + 16);
        matrix[1].c = *(v63 + 64);
        *&matrix[1].a = v64;
        *&matrix[0].c = v66;
        *&matrix[0].tx = v65;
        v67 = v182;
        v68 = *&v181.tx;
        v69 = *&v181.c;
        *v63 = *&v181.a;
        *(v63 + 16) = v69;
        *(v63 + 32) = v68;
        *(v63 + 48) = v67;
        *(v63 + 56) = v107;
        *(v63 + 64) = v112;
        outlined destroy of ExtrudedGlyphDescriptor(matrix);
        outlined destroy of ExtrudedGlyphDescriptor.Info(&v181);
      }

      else
      {
        v19 = __src[0];
        *(__src[0] + 8 * (v114 >> 6) + 64) |= 1 << v114;
        v121 = v19[6] + 56 * v114;
        v122 = *&v186.c;
        *v121 = *&v186.a;
        *(v121 + 16) = v122;
        *(v121 + 32) = *&v186.tx;
        *(v121 + 48) = v187;
        v123 = v19[7] + 72 * v114;
        *v123 = __dst[0];
        *(v123 + 48) = __dst[1].a;
        *(v123 + 56) = v107;
        *(v123 + 64) = v112;
        v124 = v19[2];
        v49 = __OFADD__(v124, 1);
        v125 = v124 + 1;
        if (v49)
        {
          goto LABEL_135;
        }

        v19[2] = v125;
      }

      v34 = v164;
      v59 = v165;
      v62 = v172;
LABEL_59:
      if (++v61 == v166)
      {
        goto LABEL_40;
      }

      continue;
    }

    break;
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t AttributedString.nsAttributedString.getter()
{
  v1 = v0;
  v2 = type metadata accessor for AttributedString();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v9 = *(v3 + 16);
  v9(v14 - v10, v1, v2, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation25AttributedStringConverter_pMd, &_s17RealityFoundation25AttributedStringConverter_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of ForceEffectBase(v14, v16);
    __swift_project_boxed_opaque_existential_1(v16, v16[3]);
    swift_getDynamicType();
    v11 = (*(v16[4] + 8))();
    v12 = v11(v1);

    __swift_destroy_boxed_opaque_existential_1(v16);
    return v12;
  }

  else
  {
    v15 = 0;
    memset(v14, 0, sizeof(v14));
    outlined destroy of BodyTrackingComponent?(v14, &_s17RealityFoundation25AttributedStringConverter_pSgMd, &_s17RealityFoundation25AttributedStringConverter_pSgMR);
    type metadata accessor for NSAttributedString();
    (v9)(v6, v1, v2);
    return NSAttributedString.init(_:)();
  }
}

CTFrameRef AttributedString.createTextFrame(containerRect:)(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v1 = AttributedString.nsAttributedString.getter();
    v2 = CTFramesetterCreateWithAttributedString(v1);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefaSg_So09CFBooleanE0aSgtGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefaSg_So09CFBooleanE0aSgtGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C1887600;
    v4 = *MEMORY[0x1E69659E8];
    *(inited + 32) = *MEMORY[0x1E69659E8];
    v5 = *MEMORY[0x1E695E4C0];
    *(inited + 40) = *MEMORY[0x1E695E4C0];
    v6 = v5;
    v7 = v4;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefaSg_So09CFBooleanD0aSgTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of BodyTrackingComponent?(inited + 32, &_sSo11CFStringRefaSg_So09CFBooleanB0aSgtMd, &_sSo11CFStringRefaSg_So09CFBooleanB0aSgtMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11CFStringRefaSgMd, &_sSo11CFStringRefaSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo12CFBooleanRefaSgMd, &_sSo12CFBooleanRefaSgMR);
    lazy protocol witness table accessor for type CFStringRef? and conformance <A> A?();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v27.width = 1.79769313e308;
    v25.location = 0;
    v25.length = 0;
    v27.height = 1.79769313e308;
    v9 = CTFramesetterSuggestFrameSizeWithConstraints(v2, v25, isa, v27, 0);
    width = v9.width;
    height = v9.height;

    v12 = 0.0;
    v13 = 0.0;
  }

  else
  {
    width = *(a1 + 16);
    height = *(a1 + 24);
    v12 = *a1;
    v13 = *(a1 + 8);
    v7 = *MEMORY[0x1E69659E8];
    v6 = *MEMORY[0x1E695E4C0];
    v5 = *MEMORY[0x1E695E4C0];
    v4 = *MEMORY[0x1E69659E8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefaSg_So09CFBooleanE0aSgtGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefaSg_So09CFBooleanE0aSgtGMR);
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_1C1887600;
  *(v14 + 32) = v4;
  *(v14 + 40) = v5;
  v15 = v7;
  v16 = v6;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefaSg_So09CFBooleanD0aSgTt0g5Tf4g_n(v14);
  swift_setDeallocating();
  outlined destroy of BodyTrackingComponent?(v14 + 32, &_sSo11CFStringRefaSg_So09CFBooleanB0aSgtMd, &_sSo11CFStringRefaSg_So09CFBooleanB0aSgtMR);
  v28.origin.x = v12;
  v28.origin.y = v13;
  v28.size.width = width;
  v28.size.height = height;
  v17 = CGPathCreateWithRect(v28, 0);
  v18 = AttributedString.nsAttributedString.getter();
  v19 = [v18 length];

  v20 = AttributedString.nsAttributedString.getter();
  v21 = CTFramesetterCreateWithAttributedString(v20);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11CFStringRefaSgMd, &_sSo11CFStringRefaSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo12CFBooleanRefaSgMd, &_sSo12CFBooleanRefaSgMR);
  lazy protocol witness table accessor for type CFStringRef? and conformance <A> A?();
  v22 = Dictionary._bridgeToObjectiveC()().super.isa;

  v26.location = 0;
  v26.length = v19;
  Frame = CTFramesetterCreateFrame(v21, v26, v17, v22);

  return Frame;
}

void ExtrudedGlyphDescriptor.Info.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  v3 = *(v0 + 2);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x1C68F4C50](*&v3);
  if (v0[3])
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CGColorRef(0);
    lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef(&lazy protocol witness table cache variable for type CGColorRef and conformance CGColorRef, type metadata accessor for CGColorRef);
    _CFObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(*(v0 + 24));
  Hasher._combine(_:)(*(v0 + 13));
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ExtrudedGlyphDescriptor.Info()
{
  Hasher.init(_seed:)();
  ExtrudedGlyphDescriptor.Info.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ExtrudedGlyphDescriptor.Info()
{
  Hasher.init(_seed:)();
  ExtrudedGlyphDescriptor.Info.hash(into:)();
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance ExtrudedGlyphDescriptor.Info(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return specialized static ExtrudedGlyphDescriptor.Info.== infix(_:_:)(v5, v7);
}

void MeshResource.ShapeExtrusionOptions.ExtrusionMethod.scaled(by:)(uint64_t a1@<X8>, double a2@<D0>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  if (!*(v2 + 8))
  {
    v7 = COERCE_UNSIGNED_INT(*&v4 * *&a2);
    goto LABEL_17;
  }

  if (v5 == 1)
  {
    v6 = *(v4 + 16);
    v7 = MEMORY[0x1E69E7CC0];
    if (!v6)
    {
      goto LABEL_17;
    }

    v45 = MEMORY[0x1E69E7CC0];
    v42 = *&a2;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    v8 = v42;
    v9 = 0;
    v7 = v45;
    while (v9 < *(v4 + 16))
    {
      v10 = *(v4 + 32 + 16 * v9);
      v46 = v7;
      v12 = *(v7 + 16);
      v11 = *(v7 + 24);
      if (v12 >= v11 >> 1)
      {
        v40 = *(v4 + 32 + 16 * v9);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
        v10 = v40;
        v8 = v42;
        v7 = v46;
      }

      ++v9;
      *&v13 = vmulq_n_f32(v10, v8).u64[0];
      *(&v13 + 1) = COERCE_UNSIGNED_INT(vmuls_lane_f32(v8, v10, 2));
      *(v7 + 16) = v12 + 1;
      *(v7 + 16 * v12 + 32) = v13;
      if (v6 == v9)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
    LODWORD(v8) = vdupq_lane_s32(*&a2, 0).u32[0];
    if (one-time initialization token for identity == -1)
    {
      goto LABEL_12;
    }
  }

  v44 = v8;
  swift_once();
  v8 = v44;
LABEL_12:
  *v14.i64 = specialized simd_float4x4.init(translation:rotation:scale:)(0.0, *&zmmword_1C1887630[48], v8);
  v18 = *(v4 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v18)
  {
    v47 = MEMORY[0x1E69E7CC0];
    v41 = v15;
    v43 = v14;
    v38 = v17;
    v39 = v16;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 0);
    v20 = v38;
    v19 = v39;
    v22 = v41;
    v21 = v43;
    v23 = 0;
    v7 = v47;
    v24 = *(v47 + 16);
    v25 = v24 << 6;
    v26 = v4 + 48;
    do
    {
      v27 = *(v26 + v23 - 16);
      v28 = *(v26 + v23);
      v29 = *(v26 + v23 + 16);
      v30 = *(v26 + v23 + 32);
      v48 = v7;
      v31 = *(v7 + 24);
      v32 = v24 + 1;
      if (v24 >= v31 >> 1)
      {
        v36 = *(v26 + v23 + 16);
        v37 = *(v26 + v23 + 32);
        v34 = *(v26 + v23 - 16);
        v35 = *(v26 + v23);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v24 + 1, 1);
        v27 = v34;
        v28 = v35;
        v29 = v36;
        v30 = v37;
        v20 = v38;
        v19 = v39;
        v22 = v41;
        v21 = v43;
        v7 = v48;
      }

      *(v7 + 16) = v32;
      v33 = (v7 + v25 + v23);
      v33[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v21, v27.f32[0]), v22, *v27.f32, 1), v19, v27, 2), v20, v27, 3);
      v33[3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v21, v28.f32[0]), v22, *v28.f32, 1), v19, v28, 2), v20, v28, 3);
      v33[4] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v21, v29.f32[0]), v22, *v29.f32, 1), v19, v29, 2), v20, v29, 3);
      v33[5] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v21, v30.f32[0]), v22, *v30.f32, 1), v19, v30, 2), v20, v30, 3);
      v23 += 64;
      v24 = v32;
      --v18;
    }

    while (v18);
  }

LABEL_17:
  *a1 = v7;
  *(a1 + 8) = v5;
}

uint64_t MeshDescriptor.setColor(_:)(void *a1)
{
  v2 = v1;
  v35._countAndFlagsBits = 0x6F43786574726576;
  v35._object = 0xEB00000000726F6CLL;
  v4 = specialized MeshBuffers.Identifier.BufferName.init(rawValue:)(v35) == 8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5SIMD4VySfGGMd, &_ss23_ContiguousArrayStorageCys5SIMD4VySfGGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C1887600;
  v6 = a1;
  _ss5SIMD4V17RealityFoundationSBRzrlEyAByxGSo10CGColorRefacfCSf_Tt1g5Tf4g_n(v6);
  v18 = v7;

  *(v5 + 32) = v18;
  _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5SIMD4VySfG_AA05ArrayD0VyAJGTt1g5(v5, v34);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD4VySfGGMd, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD4VySfGGMR);
  *(&v30[1] + 1) = v8;
  *&v30[2] = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
  *&v30[0] = swift_allocObject();
  swift_bridgeObjectRetain_n();
  outlined init with copy of [String : String](v34, v31, &_s17RealityFoundation10MeshBufferVys5SIMD4VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD4VySfGGMR);
  _s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLV_6bufferAFy_xGqd___AA0cD0VyxGtc7ElementQyd__RszAA0cD8SemanticRd__lufCs5SIMD4VySfG_AA0C7BuffersO0P0Vy_AQGTt2B5(0x6F43786574726576, 0xEB00000000726F6CLL, v4, v34);
  specialized Dictionary.subscript.setter(v30, 0x6F43786574726576, 0xEB00000000726F6CLL, v4);
  outlined destroy of BodyTrackingComponent?(v34, &_s17RealityFoundation10MeshBufferVys5SIMD4VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD4VySfGGMR);
  v9 = *(v2 + 16);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(0x6F43786574726576, 0xEB00000000726F6CLL, v4), (v11 & 1) != 0))
  {
    outlined init with copy of __REAssetService(*(v9 + 56) + 40 * v10, &v24);
    outlined init with take of ForceEffectBase(&v24, v31);
    v12 = *&v31[24];
    v13 = *&v31[32];
    __swift_project_boxed_opaque_existential_1(v31, *&v31[24]);
    v14 = *(v13 + 56);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR);
    v14(v30, v15, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v31);
    if (*&v30[0])
    {
      LOBYTE(v30[5]) = 3;
      v26 = v30[2];
      v27 = v30[3];
      v28 = v30[4];
      v29 = 3;
      v24 = v30[0];
      v25 = v30[1];
      *v31 = *&v30[0];
      *&v31[24] = *(&v30[1] + 8);
      v32 = *(&v30[2] + 8);
      v33[0] = *(&v30[3] + 8);
      *(v33 + 9) = *(&v30[4] + 1);
      *&v31[8] = *(v30 + 8);
      v22 = v8;
      v23 = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
      v21[0] = swift_allocObject();

      outlined init with copy of [String : String](&v24, v19, &_s17RealityFoundation10MeshBufferVys5SIMD4VySfGGSgMd, &_s17RealityFoundation10MeshBufferVys5SIMD4VySfGGSgMR);
      _s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLV_6bufferAFy_xGqd___AA0cD0VyxGtc7ElementQyd__RszAA0cD8SemanticRd__lufCs5SIMD4VySfG_AA0C7BuffersO0P0Vy_AQGTt2B5(0x6F43786574726576, 0xEB00000000726F6CLL, v4, v31);
      specialized Dictionary.subscript.setter(v21, 0x6F43786574726576, 0xEB00000000726F6CLL, v4);
      v16 = &v24;
      return outlined destroy of BodyTrackingComponent?(v16, &_s17RealityFoundation10MeshBufferVys5SIMD4VySfGGSgMd, &_s17RealityFoundation10MeshBufferVys5SIMD4VySfGGSgMR);
    }
  }

  else
  {
    memset(v30, 0, 81);
  }

  v26 = v30[2];
  v27 = v30[3];
  v28 = v30[4];
  v29 = v30[5];
  v24 = v30[0];
  v25 = v30[1];
  if (*&v30[0])
  {
    *v31 = *&v30[0];
    *&v31[24] = *(&v30[1] + 8);
    v32 = *(&v30[2] + 8);
    v33[0] = *(&v30[3] + 8);
    *(v33 + 9) = *(&v30[4] + 1);
    *&v31[8] = *(v30 + 8);
    v22 = v8;
    v23 = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
    v21[0] = swift_allocObject();
    outlined init with copy of [String : String](&v24, v19, &_s17RealityFoundation10MeshBufferVys5SIMD4VySfGGSgMd, &_s17RealityFoundation10MeshBufferVys5SIMD4VySfGGSgMR);

    outlined init with copy of [String : String](&v24, v19, &_s17RealityFoundation10MeshBufferVys5SIMD4VySfGGSgMd, &_s17RealityFoundation10MeshBufferVys5SIMD4VySfGGSgMR);
    _s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLV_6bufferAFy_xGqd___AA0cD0VyxGtc7ElementQyd__RszAA0cD8SemanticRd__lufCs5SIMD4VySfG_AA0C7BuffersO0P0Vy_AQGTt2B5(0x6F43786574726576, 0xEB00000000726F6CLL, v4, v31);
    specialized Dictionary.subscript.setter(v21, 0x6F43786574726576, 0xEB00000000726F6CLL, v4);
    outlined destroy of BodyTrackingComponent?(&v24, &_s17RealityFoundation10MeshBufferVys5SIMD4VySfGGSgMd, &_s17RealityFoundation10MeshBufferVys5SIMD4VySfGGSgMR);
  }

  else
  {
    memset(v31, 0, sizeof(v31));
    specialized Dictionary.subscript.setter(v31, 0x6F43786574726576, 0xEB00000000726F6CLL, v4);
  }

  v19[2] = v30[2];
  v19[3] = v30[3];
  v19[4] = v30[4];
  v20 = v30[5];
  v19[0] = v30[0];
  v19[1] = v30[1];
  v16 = v19;
  return outlined destroy of BodyTrackingComponent?(v16, &_s17RealityFoundation10MeshBufferVys5SIMD4VySfGGSgMd, &_s17RealityFoundation10MeshBufferVys5SIMD4VySfGGSgMR);
}

BOOL specialized static ExtrudedGlyphDescriptor.Info.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v5 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!v5)
    {
      return 0;
    }

    type metadata accessor for CGColorRef(0);
    lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef(&lazy protocol witness table cache variable for type CGColorRef and conformance CGColorRef, type metadata accessor for CGColorRef);
    v6 = v5;
    v7 = static _CFObject.== infix(_:_:)();

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v8 = *(a1 + 40);
  v9 = *(a2 + 40);
  if (v8)
  {
    if (!v9 || (*(a1 + 32) != *(a2 + 32) || v8 != v9) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (*(a1 + 48) == *(a2 + 48))
  {
    return *(a1 + 52) == *(a2 + 52);
  }

  return 0;
}

char *specialized static ExtrudedGlyphDescriptor.compile(glyphs:)(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    goto LABEL_42;
  }

  v1 = 0;
  v44 = a1 + 32;
  v2 = MEMORY[0x1E69E7CC0];
  v3 = MEMORY[0x1E69E7CC0];
  v41 = *(a1 + 16);
  while (1)
  {
    v5 = (v44 + 72 * v1);
    result = v5[1];
    v6 = v5[3];
    v7 = v5[7];
    v53 = v5[8];
    v54 = *(v53 + 2);
    v45 = v5[5];
    if (v54)
    {
      break;
    }

    v30 = v5[7];

    result = v6;
LABEL_28:
    v31 = *(v30 + 16);
    v32 = *(v2 + 16);
    v33 = v32 + v31;
    if (__OFADD__(v32, v31))
    {
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      return result;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && (v34 = *(v2 + 24) >> 1, v34 >= v33))
    {
      if (!*(v30 + 16))
      {
        goto LABEL_3;
      }
    }

    else
    {
      if (v32 <= v33)
      {
        v35 = v32 + v31;
      }

      else
      {
        v35 = v32;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v35, 1, v2);
      v2 = result;
      v34 = *(result + 3) >> 1;
      if (!*(v30 + 16))
      {
LABEL_3:

        result = v53;
        if (v31)
        {
          goto LABEL_47;
        }

        goto LABEL_4;
      }
    }

    if (v34 - *(v2 + 16) < v31)
    {
      goto LABEL_50;
    }

    swift_arrayInitWithCopy();

    result = v53;
    if (v31)
    {
      v36 = *(v2 + 16);
      v37 = __OFADD__(v36, v31);
      v38 = v36 + v31;
      if (v37)
      {
        goto LABEL_51;
      }

      *(v2 + 16) = v38;
    }

LABEL_4:
    ++v1;

    if (v1 == v41)
    {
      goto LABEL_43;
    }
  }

  v43 = v1;
  v8 = *(v2 + 16);
  v49 = *(v7 + 16);
  if (__OFADD__(v8, v49))
  {
    goto LABEL_48;
  }

  if ((v8 + v49) < v8)
  {
    goto LABEL_49;
  }

  v42 = v2;
  v9 = one-time initialization token for identity;
  v10 = v5[8];

  v11 = v6;

  swift_bridgeObjectRetain_n();
  if (v9 != -1)
  {
    swift_once();
  }

  v48 = v10 + 32;
  *&v12 = simd_matrix4x4(_PromotedConst_6);
  v15 = 0;
  v47 = v16;
  v46 = *(&v16 + 2) + 0.0;
  if (v8 <= 0x100000000)
  {
    v17 = 0x100000000;
  }

  else
  {
    v17 = v8;
  }

  result = v10;
  v18 = v8 + v49;
  v52 = v12;
  v50 = v14;
  v51 = v13;
  while (2)
  {
    if (v15 >= *(result + 2))
    {
      __break(1u);
      goto LABEL_45;
    }

    if (v8 == v18)
    {
LABEL_14:
      if (++v15 == v54)
      {

        v2 = v42;
        v1 = v43;
        v30 = v7;
        goto LABEL_28;
      }

      continue;
    }

    break;
  }

  if (v8 >= v18)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v19 = *&v48[8 * v15];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
  }

  v18 = v8 + v49;
  result = v53;
  *&v20 = vadd_f32(*&v47, v19);
  *(&v20 + 1) = __PAIR64__(HIDWORD(v47), LODWORD(v46));
  v21 = v49;
  v22 = v8;
  v23 = v52;
  v25 = v50;
  v24 = v51;
  while (v17 != v22)
  {
    v27 = *(v3 + 2);
    v26 = *(v3 + 3);
    if (v27 >= v26 >> 1)
    {
      v40 = v20;
      v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v3);
      v20 = v40;
      v25 = v50;
      v24 = v51;
      v23 = v52;
      v3 = v29;
      v18 = v8 + v49;
      result = v53;
    }

    *(v3 + 2) = v27 + 1;
    v28 = &v3[80 * v27];
    *(v28 + 8) = v22;
    *(v28 + 3) = v23;
    *(v28 + 4) = v24;
    *(v28 + 5) = v25;
    *(v28 + 6) = v20;
    ++v22;
    if (!--v21)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_42:
  v2 = MEMORY[0x1E69E7CC0];
  v3 = MEMORY[0x1E69E7CC0];
LABEL_43:
  v39 = specialized static ExtrudedShapeDescriptor.compile(shapes:instances:)(v2, v3);

  return v39;
}

unint64_t lazy protocol witness table accessor for type CFStringRef? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type CFStringRef? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type CFStringRef? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo11CFStringRefaSgMd, &_sSo11CFStringRefaSgMR);
    lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CFStringRef? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ExtrudedGlyphDescriptor.Info and conformance ExtrudedGlyphDescriptor.Info()
{
  result = lazy protocol witness table cache variable for type ExtrudedGlyphDescriptor.Info and conformance ExtrudedGlyphDescriptor.Info;
  if (!lazy protocol witness table cache variable for type ExtrudedGlyphDescriptor.Info and conformance ExtrudedGlyphDescriptor.Info)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExtrudedGlyphDescriptor.Info and conformance ExtrudedGlyphDescriptor.Info);
  }

  return result;
}

uint64_t specialized Sequence.reversed()(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = v2 >> 1;
  v4 = v2 + 7;
  for (i = 8; ; ++i)
  {
    if (i == v4)
    {
      goto LABEL_5;
    }

    v6 = *(v1 + 16);
    if (i - 8 >= v6)
    {
      break;
    }

    if (v4 - 8 >= v6)
    {
      goto LABEL_12;
    }

    v7 = *(v1 + 4 * i);
    v8 = *(v1 + 4 * v4);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
      v1 = result;
    }

    *(v1 + 4 * i) = v8;
    *(v1 + 4 * v4) = v7;
LABEL_5:
    --v4;
    if (!--v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

unint64_t extrude(path:options:)(const CGPath *a1, int64_t a2)
{
  v3 = v2;
  v4 = a2;
  if (fabsf(*(a2 + 56)) <= 0.000001)
  {
    v8 = 0;
  }

  else
  {
    v5 = a1;
    outlined init with copy of [String : String](a2 + 16, v56, &_s17RealityFoundation15CGPathProviding_pSgMd, &_s17RealityFoundation15CGPathProviding_pSgMR);
    v6 = v57;
    if (!v57)
    {
      outlined destroy of BodyTrackingComponent?(v56, &_s17RealityFoundation15CGPathProviding_pSgMd, &_s17RealityFoundation15CGPathProviding_pSgMR);
      if (one-time initialization token for defaultChamferProfile != -1)
      {
        goto LABEL_42;
      }

      goto LABEL_6;
    }

    v7 = v58;
    __swift_project_boxed_opaque_existential_1(v56, v57);
    v8 = (*(v7 + 8))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1(v56);
LABEL_7:
    a1 = v5;
  }

  v9 = spansFromCGPath(path:)(a1);
  v10 = correctCurveOrientation(curves:)(v9);

  specialized classify<A>(subpaths:)(v10);
  v12 = v11;
  if (!v8)
  {
    v55 = 0;
    v56[0] = 0;

LABEL_35:
    MEMORY[0x1EEE9AC00](v39);
    v45[2] = v56;
    v45[3] = v4;
    v46 = v43;
    v40 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay17RealityFoundation5Shape33_958D9063BE5145611DD1DCE0DF8621CFLLVyAF20PiecewiseBezierCurveAHLLVGG_AF08ExtrudedF10DescriptorVsAE_pTg5(partial apply for closure #2 in extrude(path:options:), v45, v12);

    goto LABEL_36;
  }

  v51 = v3;
  v52 = v10;
  v54 = v11;
  v55 = 0;
  v48 = *(v4 + 80) != 2;
  v56[0] = 0;
  v49 = v8;
  v50 = v4;
  v47 = *(v4 + 72);
  v53 = v8;
  v13 = spansFromCGPath(path:)(v53);
  v5 = *(v13 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    for (i = 0; v5 != i; i = (i + 1))
    {
      if (i >= *(v13 + 16))
      {
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
        swift_once();
LABEL_6:
        v8 = defaultChamferProfile;
        goto LABEL_7;
      }

      v16 = *(v13 + 32 + 8 * i);
      v3 = *(v16 + 16);
      v4 = *(v14 + 2);
      v17 = v4 + v3;
      if (__OFADD__(v4, v3))
      {
        goto LABEL_38;
      }

      v18 = *(v13 + 32 + 8 * i);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v17 <= *(v14 + 3) >> 1)
      {
        if (*(v16 + 16))
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v4 <= v17)
        {
          v20 = v4 + v3;
        }

        else
        {
          v20 = v4;
        }

        v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v20, 1, v14);
        if (*(v16 + 16))
        {
LABEL_23:
          v21 = *(v14 + 2);
          if ((*(v14 + 3) >> 1) - v21 < v3)
          {
            goto LABEL_40;
          }

          memcpy(&v14[80 * v21 + 32], (v16 + 32), 80 * v3);

          if (v3)
          {
            v22 = *(v14 + 2);
            _VF = __OFADD__(v22, v3);
            v24 = v22 + v3;
            if (_VF)
            {
              goto LABEL_41;
            }

            *(v14 + 2) = v24;
          }

          continue;
        }
      }

      if (v3)
      {
        goto LABEL_39;
      }
    }
  }

  v25 = *(v14 + 2);
  if (!v25)
  {
    v38 = 0xD000000000000020;

    v28 = v53;

    v37 = "must span from (0, 0) to (1, 1)";
    goto LABEL_33;
  }

  v26 = (v14 + 40);
  v27 = vld1q_dup_f64(v26);
  v27.f64[0] = *(v14 + 4);
  v28 = v53;
  v12 = v54;
  if (sqrt(vaddvq_f64(vmulq_f64(v27, v27))) <= 0.000001)
  {
    v29 = &v14[80 * v25 + 32 + 16 * v14[80 * v25 + 16]];
    v30 = (v29 - 56);
    v31 = vld1q_dup_f64(v30);
    v31.f64[0] = *(v29 - 64);
    __asm { FMOV            V1.2D, #-1.0 }

    v36 = vaddq_f64(v31, _Q1);
    if (sqrt(vaddvq_f64(vmulq_f64(v36, v36))) <= 0.000001)
    {

      v55 = MEMORY[0x1E69E7CC0];
      v56[0] = MEMORY[0x1E69E7CC0];
      trace(path:points:tangents:uniformSegmentsPerSpan:)(v14, v56, &v55, v47, MEMORY[0x1E69E7CC0], v42);

      v4 = v50;
      v8 = v49;
      goto LABEL_35;
    }
  }

  v37 = " path cannot be a symbolic link";
  v38 = 0xD00000000000002FLL;
LABEL_33:
  v40 = v37 | 0x8000000000000000;
  lazy protocol witness table accessor for type ShapeExtrusionError and conformance ShapeExtrusionError();
  swift_allocError();
  *v41 = v38;
  *(v41 + 8) = v40;
  *(v41 + 16) = 0;
  swift_willThrow();

LABEL_36:

  return v40;
}

char *ExtrudedShapeDescriptor.allDescriptors.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[26];
  v6 = v0[27];
  v7 = *(v0 + 17);
  v103 = *(v0 + 16);
  v104 = v7;
  v105 = *(v0 + 18);
  v66 = v0[39];
  v67 = v3;
  v106 = v0[38];
  v8 = *(v0 + 15);
  v101 = *(v0 + 14);
  v102 = v8;
  v65 = v0[40];
  v9 = v0[52];
  v112 = v0[51];
  v10 = *(v0 + 49);
  v110 = *(v0 + 47);
  v111 = v10;
  v11 = *(v0 + 45);
  v108 = *(v0 + 43);
  v109 = v11;
  v107 = *(v0 + 41);
  v12 = v0[53];
  v13 = *(v0 + 28);
  v113 = *(v0 + 27);
  v114 = v13;
  v14 = *(v0 + 29);
  v15 = *(v0 + 30);
  v16 = *(v0 + 31);
  v118 = v0[64];
  v116 = v15;
  v117 = v16;
  v115 = v14;
  if (v2)
  {
    v63 = v6;
    v64 = v9;
    v17 = v5;
    v69 = v1;
    v70 = v2;
    v18 = *(v0 + 3);
    v19 = *(v0 + 5);
    v74 = *(v0 + 4);
    v75 = v19;
    v76 = v0[12];
    v20 = *(v0 + 2);
    v71 = *(v0 + 1);
    v72 = v20;
    v73 = v18;
    outlined init with copy of MeshDescriptor(&v69, v68);
    v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v23 = *(v21 + 2);
    v22 = *(v21 + 3);
    if (v23 >= v22 >> 1)
    {
      v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v21);
    }

    *(v21 + 2) = v23 + 1;
    v24 = &v21[104 * v23];
    *(v24 + 4) = v1;
    *(v24 + 5) = v2;
    v25 = *(v0 + 4);
    *(v24 + 5) = *(v0 + 3);
    *(v24 + 6) = v25;
    *(v24 + 7) = *(v0 + 5);
    *(v24 + 16) = v0[12];
    v26 = *(v0 + 2);
    *(v24 + 3) = *(v0 + 1);
    *(v24 + 4) = v26;
    v27 = v17;
    v6 = v63;
    v9 = v64;
  }

  else
  {
    v21 = MEMORY[0x1E69E7CC0];
    v27 = v5;
  }

  v28 = *(v0 + 21);
  v97 = *(v0 + 19);
  v98 = v28;
  v99 = *(v0 + 23);
  v100 = v0[25];
  v29 = *(v0 + 17);
  v95 = *(v0 + 15);
  v96 = v29;
  v30 = v12;
  if (v4)
  {
    v69 = v67;
    v70 = v4;
    v31 = *(v0 + 19);
    v32 = *(v0 + 23);
    v74 = *(v0 + 21);
    v75 = v32;
    v76 = v0[25];
    v71 = *(v0 + 15);
    v72 = *(v0 + 17);
    v73 = v31;
    outlined init with copy of MeshDescriptor(&v69, v68);
    v33 = v65;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 2) + 1, 1, v21);
    }

    v35 = *(v21 + 2);
    v34 = *(v21 + 3);
    if (v35 >= v34 >> 1)
    {
      v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v21);
    }

    *(v21 + 2) = v35 + 1;
    v36 = &v21[104 * v35];
    *(v36 + 4) = v67;
    *(v36 + 5) = v4;
    v37 = v96;
    *(v36 + 3) = v95;
    *(v36 + 4) = v37;
    v38 = v97;
    v39 = v98;
    v40 = v99;
    *(v36 + 16) = v100;
    *(v36 + 6) = v39;
    *(v36 + 7) = v40;
    *(v36 + 5) = v38;
  }

  else
  {
    v33 = v65;
  }

  v91 = v109;
  v92 = v110;
  v93 = v111;
  v94 = v112;
  v89 = v107;
  v90 = v108;
  if (v33)
  {
    v69 = v66;
    v70 = v33;
    v74 = v110;
    v75 = v111;
    v76 = v112;
    v71 = v107;
    v72 = v108;
    v73 = v109;
    outlined init with copy of MeshDescriptor(&v69, v68);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 2) + 1, 1, v21);
    }

    v42 = *(v21 + 2);
    v41 = *(v21 + 3);
    if (v42 >= v41 >> 1)
    {
      v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v21);
    }

    *(v21 + 2) = v42 + 1;
    v43 = &v21[104 * v42];
    *(v43 + 4) = v66;
    *(v43 + 5) = v33;
    v44 = v90;
    *(v43 + 3) = v89;
    *(v43 + 4) = v44;
    v45 = v91;
    v46 = v92;
    v47 = v93;
    *(v43 + 16) = v94;
    *(v43 + 6) = v46;
    *(v43 + 7) = v47;
    *(v43 + 5) = v45;
  }

  v85 = v115;
  v86 = v116;
  v87 = v117;
  v88 = v118;
  v83 = v113;
  v84 = v114;
  if (v30)
  {
    v69 = v9;
    v70 = v30;
    v74 = v116;
    v75 = v117;
    v76 = v118;
    v71 = v113;
    v72 = v114;
    v73 = v115;
    outlined init with copy of MeshDescriptor(&v69, v68);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 2) + 1, 1, v21);
    }

    v49 = *(v21 + 2);
    v48 = *(v21 + 3);
    if (v49 >= v48 >> 1)
    {
      v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, v21);
    }

    *(v21 + 2) = v49 + 1;
    v50 = &v21[104 * v49];
    *(v50 + 4) = v9;
    *(v50 + 5) = v30;
    v51 = v84;
    *(v50 + 3) = v83;
    *(v50 + 4) = v51;
    v52 = v85;
    v53 = v86;
    v54 = v87;
    *(v50 + 16) = v88;
    *(v50 + 6) = v53;
    *(v50 + 7) = v54;
    *(v50 + 5) = v52;
  }

  v79 = v103;
  v80 = v104;
  v81 = v105;
  v82 = v106;
  v77 = v101;
  v78 = v102;
  if (v6)
  {
    v69 = v27;
    v70 = v6;
    v74 = v104;
    v75 = v105;
    v76 = v106;
    v71 = v101;
    v72 = v102;
    v73 = v103;
    outlined init with copy of MeshDescriptor(&v69, v68);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 2) + 1, 1, v21);
    }

    v56 = *(v21 + 2);
    v55 = *(v21 + 3);
    if (v56 >= v55 >> 1)
    {
      v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56 + 1, 1, v21);
    }

    *(v21 + 2) = v56 + 1;
    v57 = &v21[104 * v56];
    *(v57 + 4) = v27;
    *(v57 + 5) = v6;
    v58 = v78;
    *(v57 + 3) = v77;
    *(v57 + 4) = v58;
    v59 = v79;
    v60 = v80;
    v61 = v81;
    *(v57 + 16) = v82;
    *(v57 + 6) = v60;
    *(v57 + 7) = v61;
    *(v57 + 5) = v59;
  }

  return v21;
}

BOOL PathSpan.isZeroLength.getter()
{
  v1 = *(v0 + 16);
  v2 = vsubq_f64(*v0, v1);
  v3 = sqrt(vaddvq_f64(vmulq_f64(v2, v2)));
  if (!*(v0 + 64))
  {
    return v3 <= 0.000001;
  }

  v4 = *(v0 + 32);
  if (*(v0 + 64) == 1)
  {
    if (v3 > 0.000001)
    {
      return 0;
    }

    v6 = vsubq_f64(v1, v4);
  }

  else
  {
    if (v3 > 0.000001)
    {
      return 0;
    }

    v7 = vsubq_f64(v1, v4);
    if (sqrt(vaddvq_f64(vmulq_f64(v7, v7))) > 0.000001)
    {
      return 0;
    }

    v6 = vsubq_f64(v4, *(v0 + 48));
  }

  return sqrt(vaddvq_f64(vmulq_f64(v6, v6))) <= 0.000001;
}

float64_t PathSpan.tangent(at:)()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 32);
    if (*(v0 + 64) == 1)
    {
      geom_quadratic_bezier_tangent_at_2d();
    }

    else
    {
      v3 = *(v0 + 48);
      geom_cubic_bezier_tangent_at_2d();
    }
  }

  else
  {
    v2 = vsubq_f64(*(v0 + 16), *v0);
  }

  v4 = sqrt(vaddvq_f64(vmulq_f64(v2, v2)));
  if (fabs(v4) > 0.000001)
  {
    *&v2.f64[0] = *&vdivq_f64(v2, vdupq_lane_s64(*&v4, 0));
  }

  return v2.f64[0];
}

double specialized Polygon.signedArea()(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0.0;
  }

  v2 = (a1 + 48);
  result = 0.0;
  do
  {
    v11 = vdupq_n_s64(*(v2 - 1));
    _Q1 = vdupq_n_s64(v2[1]);
    if (*(v2 + 48))
    {
      _Q2 = vdupq_n_s64(v2[3]);
      if (*(v2 + 48) == 1)
      {
        _D4 = *(v2 - 2);
        _D6 = *v2;
        __asm { FMLA            D3, D4, V1.D[1] }

        v17 = result + _D3;
        __asm { FMLA            D1, D6, V2.D[1] }
      }

      else
      {
        v19 = (v2 + 5);
        _Q4 = vld1q_dup_f64(v19);
        _D5 = *(v2 - 2);
        _D7 = *v2;
        __asm { FMLA            D3, D5, V1.D[1] }

        v24 = result + _D3;
        _D3 = v2[2];
        __asm { FMLA            D5, D7, V2.D[1] }

        v17 = v24 + _D5;
        v27 = v2[4];
        __asm { FMLA            D1, D3, V4.D[1] }
      }

      result = v17 + _D1;
    }

    else
    {
      _D2 = *(v2 - 2);
      v5 = *v2;
      __asm { FMLA            D3, D2, V1.D[1] }

      result = result + _D3;
    }

    v2 += 10;
    --v1;
  }

  while (v1);
  return result;
}

void specialized Polygon.testInside(point:)(uint64_t a1, simd_double2 a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return;
  }

  v3 = a2;
  v4 = 0;
  v5 = a2.f64[1];
  for (i = (a1 + 48); ; i += 10)
  {
    v8 = *(i - 2);
    v7 = *(i - 1);
    v10 = *i;
    v9 = i[1];
    if (*(i + 48))
    {
      break;
    }

    v17 = *(i - 1);
    v18 = *i;
    if (vmovn_s64(vmvnq_s8(vcgeq_f64(*&v3, *&v17))).i32[1])
    {
      if (v18.f64[1] > v5)
      {
        goto LABEL_4;
      }

      if (_simd_orient_pd2(v18, v17, v3) > 0.0)
      {
        v16 = __OFSUB__(v4--, 1);
        if (v16)
        {
          goto LABEL_78;
        }
      }
    }

    else
    {
      if (v5 >= v18.f64[1])
      {
        goto LABEL_4;
      }

      if (_simd_orient_pd2(v17, v18, v3) > 0.0)
      {
        v16 = __OFADD__(v4++, 1);
        if (v16)
        {
          goto LABEL_77;
        }
      }
    }

LABEL_3:
    v3 = a2;
LABEL_4:
    if (!--v2)
    {
      return;
    }
  }

  v12 = *(i + 2);
  v11 = *(i + 3);
  if (*(i + 48) == 1)
  {
    v13 = *(i - 1);
    v14 = *i;
    v15 = *(i + 1);
    if (vmovn_s64(vmvnq_s8(vcgeq_f64(*&v3, *&v13))).i32[1])
    {
      if (v14.f64[1] > v5)
      {
        goto LABEL_29;
      }

      v27 = *i;
      if (_simd_orient_pd2(v14, v13, v3) > 0.0)
      {
        v16 = __OFSUB__(v4--, 1);
        if (v16)
        {
          goto LABEL_76;
        }
      }
    }

    else
    {
      if (v5 >= v14.f64[1])
      {
        goto LABEL_29;
      }

      v27 = *i;
      if (_simd_orient_pd2(v13, v14, v3) > 0.0)
      {
        v16 = __OFADD__(v4++, 1);
        if (v16)
        {
          goto LABEL_75;
        }
      }
    }

    v14 = v27;
    v3 = a2;
LABEL_29:
    v23.f64[0] = v12;
    v23.f64[1] = v11;
    if (v15 <= v5)
    {
      if (v5 >= v11)
      {
        goto LABEL_4;
      }

      if (_simd_orient_pd2(v14, v23, v3) > 0.0)
      {
        v16 = __OFADD__(v4++, 1);
        if (v16)
        {
          goto LABEL_80;
        }
      }
    }

    else
    {
      if (v11 > v5)
      {
        goto LABEL_4;
      }

      if (_simd_orient_pd2(v23, v14, v3) > 0.0)
      {
        v16 = __OFSUB__(v4--, 1);
        if (v16)
        {
          goto LABEL_81;
        }
      }
    }

    goto LABEL_3;
  }

  v19 = *(i - 1);
  v20 = *i;
  v21 = *(i + 2);
  v22 = *(i + 1);
  v28 = v21;
  if (vmovn_s64(vmvnq_s8(vcgeq_f64(*&v3, *&v19))).i32[1])
  {
    if (v20.f64[1] > v5)
    {
      goto LABEL_44;
    }

    v25 = *i;
    if (_simd_orient_pd2(v20, v19, v3) > 0.0)
    {
      v16 = __OFSUB__(v4--, 1);
      if (v16)
      {
        goto LABEL_79;
      }
    }

    goto LABEL_43;
  }

  if (v5 >= v20.f64[1])
  {
    goto LABEL_44;
  }

  v25 = *i;
  if (_simd_orient_pd2(v19, v20, v3) <= 0.0 || (v16 = __OFADD__(v4, 1), ++v4, !v16))
  {
LABEL_43:
    v21 = v28;
    v3 = a2;
    v20 = v25;
LABEL_44:
    v24.f64[0] = v12;
    v24.f64[1] = v11;
    if (v22 <= v5)
    {
      if (v5 >= v11)
      {
        goto LABEL_61;
      }

      v26 = v24;
      if (_simd_orient_pd2(v20, v24, v3) > 0.0)
      {
        v16 = __OFADD__(v4++, 1);
        v21 = v28;
        if (v16)
        {
          goto LABEL_83;
        }

LABEL_58:
        v3 = a2;
LABEL_60:
        v24 = v26;
LABEL_61:
        if (v11 <= v5)
        {
          if (v5 >= v21.f64[1])
          {
            goto LABEL_4;
          }

          if (_simd_orient_pd2(v24, v21, v3) > 0.0)
          {
            v16 = __OFADD__(v4++, 1);
            if (v16)
            {
              __break(1u);
              return;
            }
          }
        }

        else
        {
          if (v21.f64[1] > v5)
          {
            goto LABEL_4;
          }

          if (_simd_orient_pd2(v21, v24, v3) > 0.0)
          {
            v16 = __OFSUB__(v4--, 1);
            if (v16)
            {
              goto LABEL_84;
            }
          }
        }

        goto LABEL_3;
      }
    }

    else
    {
      if (v11 > v5)
      {
        goto LABEL_61;
      }

      v26 = v24;
      if (_simd_orient_pd2(v24, v20, v3) > 0.0)
      {
        v16 = __OFSUB__(v4--, 1);
        v21 = v28;
        if (v16)
        {
          goto LABEL_82;
        }

        goto LABEL_58;
      }
    }

    v21 = v28;
    v3 = a2;
    goto LABEL_60;
  }

  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
}

void triangulateByEarClippingFix(points:accumuluatedOutlineIndexCount:triangleVertexIndices:)(uint64_t a1, uint64_t a2, char **a3)
{
  v5 = *a3;

  collection_u = geom_create_collection_u();
  triangulateByEarClipping(points:accumuluatedOutlineIndexCount:triangleVertexIndices:)();
  v6 = collection_u;
  v22[0] = collection_u;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_geom_collection_u, 0x1E69A2828);
  lazy protocol witness table accessor for type OS_geom_collection_u and conformance OS_geom_collection_u(&lazy protocol witness table cache variable for type OS_geom_collection_u and conformance OS_geom_collection_u, &lazy cache variable for type metadata for OS_geom_collection_u, 0x1E69A2828);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v22[3] != v22[2] || (v7 = *(a1 + 16)) == 0)
  {
    v18 = collection_u;
    v19 = geom_collection_size_u();
    if (v19)
    {
      v20 = v19;
      v8 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt32V_Tt1gq5(v19, 0);
      v21 = specialized Sequence._copySequenceContents(initializing:)(v22, (v8 + 32), v20);

      if (v21 != v20)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

LABEL_25:
      *a3 = v8;
      return;
    }

LABEL_24:
    v8 = MEMORY[0x1E69E7CC0];
    goto LABEL_25;
  }

  if (v7 > 0x100000000)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v7 == 2)
  {

    goto LABEL_24;
  }

  if (v7 != 1)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    if ((v7 - 1) <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v7 - 1;
    }

    v10 = v9 - 1;
    v11 = 2;
    while (v10)
    {
      v13 = *(v8 + 2);
      v12 = *(v8 + 3);
      v14 = v12 >> 1;
      v15 = v13 + 1;
      if (v12 >> 1 <= v13)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v8);
        v12 = *(v8 + 3);
        v14 = v12 >> 1;
      }

      *(v8 + 2) = v15;
      *&v8[4 * v13 + 32] = 0;
      v16 = v13 + 2;
      if (v14 < (v13 + 2))
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 2, 1, v8);
      }

      *(v8 + 2) = v16;
      *&v8[4 * v15 + 32] = v11 - 1;
      v17 = *(v8 + 3);
      if ((v13 + 3) > (v17 >> 1))
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v13 + 3, 1, v8);
      }

      *(v8 + 2) = v13 + 3;
      *&v8[4 * v16 + 32] = v11;
      --v10;
      if (v7 == ++v11)
      {

        goto LABEL_25;
      }
    }

    __break(1u);
    goto LABEL_27;
  }

LABEL_29:
  __break(1u);
}

uint64_t spansFromCGPath(path:)(const CGPath *a1)
{
  v2 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay17RealityFoundation8PathSpan33_958D9063BE5145611DD1DCE0DF8621CFLLOGGMd, &_ss23_ContiguousArrayStorageCySay17RealityFoundation8PathSpan33_958D9063BE5145611DD1DCE0DF8621CFLLOGGMR);
  v3 = swift_allocObject();
  *(v2 + 16) = v3;
  v4 = (v2 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  *(v3 + 16) = xmmword_1C1887600;
  *(v3 + 32) = v5;
  v22[0] = 0;
  v22[1] = 0;
  v23 = 1;
  v6 = swift_allocObject();
  *(v6 + 16) = v22;
  *(v6 + 24) = v2;
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for closure #1 in spansFromCGPath(path:);
  *(v7 + 24) = v6;
  aBlock[4] = partial apply for thunk for @callee_guaranteed (@unowned UnsafePointer<CGPathElement>) -> ();
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<CGPathElement>) -> ();
  aBlock[3] = &block_descriptor_56;
  v8 = _Block_copy(aBlock);

  CGPathApplyWithBlock(a1, v8);
  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_15;
  }

  swift_beginAccess();
  isEscapingClosureAtFileLocation = *v4;
  v10 = *(*v4 + 16);
  if (!v10)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (*(*(isEscapingClosureAtFileLocation + 8 * v10 + 24) + 16))
  {
    goto LABEL_7;
  }

  swift_beginAccess();
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v12 = *(isEscapingClosureAtFileLocation + 16);
    if (v12)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = specialized _ArrayBuffer._consumeAndCreateNew()(isEscapingClosureAtFileLocation);
  isEscapingClosureAtFileLocation = result;
  v12 = *(result + 16);
  if (v12)
  {
LABEL_6:
    v13 = v12 - 1;
    v14 = *(isEscapingClosureAtFileLocation + 8 * v13 + 32);
    *(isEscapingClosureAtFileLocation + 16) = v13;
    *v4 = isEscapingClosureAtFileLocation;
    swift_endAccess();

    isEscapingClosureAtFileLocation = *v4;
    v10 = *(*v4 + 16);
    if (!v10)
    {

      return MEMORY[0x1E69E7CC0];
    }

LABEL_7:
    v20 = v5;

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
    v15 = 32;
    v16 = v20;
    do
    {
      v17 = *(isEscapingClosureAtFileLocation + v15);
      v18 = *(v20 + 16);
      v19 = *(v20 + 24);

      if (v18 >= v19 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v18 + 1, 1);
      }

      *(v20 + 16) = v18 + 1;
      *(v20 + 8 * v18 + 32) = v17;
      v15 += 8;
      --v10;
    }

    while (v10);

    return v16;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t closure #1 in spansFromCGPath(path:)(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v6 = *result;
  v7 = *(result + 8);
  v8 = *a2;
  v9 = a2[1];
  if ((a2[2] & 1) == 0)
  {
    if (v6 < 2)
    {
      v10 = 1;
      goto LABEL_11;
    }

    if (v6 == 2)
    {
      v27 = *v7;
      v28 = v7[1];
      *&v30 = *a2;
      *(&v30 + 1) = v9;
      v31 = v27;
      v32 = v28;
      v14 = 1;
      v15 = 2;
    }

    else
    {
      if (v6 != 3)
      {
        goto LABEL_8;
      }

      v11 = *v7;
      v12 = v7[1];
      v13 = v7[2];
      *&v30 = *a2;
      *(&v30 + 1) = v9;
      v31 = v11;
      v32 = v12;
      v33 = v13;
      v14 = 2;
      v15 = 3;
    }

    v34 = v14;
    result = closure #1 in closure #1 in spansFromCGPath(path:)(&v30, a3);
    goto LABEL_28;
  }

  if (v6 != 4)
  {
    v10 = 1;
    goto LABEL_13;
  }

LABEL_8:
  v10 = 0;
  if (v6 == 4)
  {
    goto LABEL_13;
  }

LABEL_11:
  if (v6 != 1)
  {
    if (v6)
    {
      goto LABEL_21;
    }

LABEL_13:
    result = swift_beginAccess();
    v16 = *(a3 + 16);
    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = *(v16 + 8 * v17 + 24);
      v19 = *(v18 + 16);
      if (!v19)
      {
        goto LABEL_21;
      }

      v20 = *(v18 + 32);
      v21 = vsubq_f64(v20, *(v18 + 80 * v19 + 16 * *(v18 + 80 * v19 + 16) - 32));
      if (sqrt(vaddvq_f64(vmulq_f64(v21, v21))) > 0.000001)
      {
        v30 = *(v18 + 80 * v19 + 16 * *(v18 + 80 * v19 + 16) - 32);
        v31 = v20;
        v34 = 0;
        closure #1 in closure #1 in spansFromCGPath(path:)(&v30, a3);
      }

      swift_beginAccess();
      v3 = *(a3 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a3 + 16) = v3;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_18:
        v24 = v3[2];
        v23 = v3[3];
        if (v24 >= v23 >> 1)
        {
          v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v3);
        }

        v3[2] = v24 + 1;
        v3[v24 + 4] = MEMORY[0x1E69E7CC0];
        *(a3 + 16) = v3;
        result = swift_endAccess();
LABEL_21:
        v15 = 1;
        if (!v10)
        {
LABEL_22:
          v25 = 0uLL;
LABEL_29:
          *a2 = v25;
          *(a2 + 16) = v15;
          return result;
        }

LABEL_28:
        f64 = v7[v15].f64;
        LOBYTE(v15) = 0;
        v25 = *(f64 - 1);
        goto LABEL_29;
      }
    }

    else
    {
      __break(1u);
    }

    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
    *(a3 + 16) = v3;
    goto LABEL_18;
  }

  if ((a2[2] & 1) == 0)
  {
    v26 = *v7;
    *&v30 = *a2;
    *(&v30 + 1) = v9;
    v31 = v26;
    v34 = 0;
    result = closure #1 in closure #1 in spansFromCGPath(path:)(&v30, a3);
    v15 = 1;
    if (!v10)
    {
      goto LABEL_22;
    }

    goto LABEL_28;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in spansFromCGPath(path:)(uint64_t a1, uint64_t a2)
{
  result = PathSpan.isZeroLength.getter();
  if (result)
  {
    return result;
  }

  swift_beginAccess();
  v7 = *(a2 + 16);
  v8 = v7[2];
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v7;
  if (isUniquelyReferenced_nonNull_native)
  {
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
  *(a2 + 16) = v7;
  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_4:
  if (v8 > v7[2])
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v3 = v7 + 3;
  v2 = v7[v8 + 3];
  v10 = swift_isUniquelyReferenced_nonNull_native();
  v7[v8 + 3] = v2;
  if ((v10 & 1) == 0)
  {
LABEL_13:
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
    v3[v8] = v2;
  }

  v12 = *(v2 + 2);
  v11 = *(v2 + 3);
  if (v12 >= v11 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v2);
    v3[v8] = v2;
  }

  *(v2 + 2) = v12 + 1;
  v13 = &v2[80 * v12];
  *(v13 + 2) = *a1;
  v14 = *(a1 + 16);
  v15 = *(a1 + 32);
  v16 = *(a1 + 48);
  v13[96] = *(a1 + 64);
  *(v13 + 4) = v15;
  *(v13 + 5) = v16;
  *(v13 + 3) = v14;
  *(a2 + 16) = v7;
  return swift_endAccess();
}

uint64_t correctCurveOrientation(curves:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = a1;
  v68 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v4 = 0;
  result = v68;
  v6 = v3 + 32;
  v7 = vdupq_n_s64(0x7FF0000000000000uLL);
  v8 = vdupq_n_s64(0xFFF0000000000000);
  do
  {
    v9 = *(v6 + 8 * v4);
    v10 = *(v9 + 16);
    v11 = v8;
    v12 = v7;
    if (v10)
    {
      v13 = (v9 + 96);
      v11 = v8;
      v12 = v7;
      do
      {
        v15 = v13[-4];
        v14 = v13[-3];
        if (LOBYTE(v13->f64[0]))
        {
          v16 = v13[-2];
          if (LOBYTE(v13->f64[0]) == 1)
          {
            v12 = vminnmq_f64(vminnmq_f64(v12, vminnmq_f64(v15, v14)), vminnmq_f64(v14, v16));
            v11 = vmaxnmq_f64(vmaxnmq_f64(v11, vmaxnmq_f64(v15, v14)), vmaxnmq_f64(v14, v16));
          }

          else
          {
            v17 = v13[-1];
            v12 = vminnmq_f64(vminnmq_f64(vminnmq_f64(v12, vminnmq_f64(v15, v14)), vminnmq_f64(v14, v16)), vminnmq_f64(v16, v17));
            v11 = vmaxnmq_f64(vmaxnmq_f64(vmaxnmq_f64(v11, vmaxnmq_f64(v15, v14)), vmaxnmq_f64(v14, v16)), vmaxnmq_f64(v16, v17));
          }
        }

        else
        {
          v12 = vminnmq_f64(v12, vminnmq_f64(v15, v14));
          v11 = vmaxnmq_f64(v11, vmaxnmq_f64(v15, v14));
        }

        v13 += 5;
        --v10;
      }

      while (v10);
    }

    v69 = result;
    v19 = *(result + 16);
    v18 = *(result + 24);
    v20 = v19 + 1;
    if (v19 >= v18 >> 1)
    {
      v59 = v8;
      v61 = v7;
      v55 = v12;
      v57 = v11;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
      v12 = v55;
      v11 = v57;
      v8 = v59;
      v7 = v61;
      result = v69;
    }

    ++v4;
    *(result + 16) = v20;
    v21 = (result + 32 * v19);
    v21[2] = v12;
    v21[3] = v11;
  }

  while (v4 != v1);
  if (v1 == 1)
  {
    v22 = 0;
LABEL_25:

    if (v22 >= v1)
    {
      goto LABEL_61;
    }

    if (specialized Polygon.signedArea()(*(v6 + 8 * v22)) < 0.0)
    {
      v60 = v3 + 32;
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
      v27 = 0;
      v3 = v2;
      v58 = v1;
      while (v27 != v1)
      {
        v62 = v3;
        v28 = *(v60 + 8 * v27);
        v29 = *(v28 + 16);
        if (v29)
        {
          v70 = MEMORY[0x1E69E7CC0];

          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v29, 0);
          v30 = v70;
          v31 = (v28 + 96);
          do
          {
            v32 = *(v31 - 4);
            v33 = *(v31 - 3);
            v34 = *v31;
            if (*v31)
            {
              v35 = *(v31 - 2);
              if (v34 == 1)
              {
                v36 = *(v31 - 2);
                v35 = *(v31 - 3);
                v33 = *(v31 - 4);
              }

              else
              {
                v36 = *(v31 - 1);
              }
            }

            else
            {
              v36 = *(v31 - 3);
              v35 = *(v31 - 4);
            }

            v38 = *(v70 + 16);
            v37 = *(v70 + 24);
            v39 = v38 + 1;
            if (v38 >= v37 >> 1)
            {
              v54 = v33;
              v56 = *(v31 - 4);
              v52 = v36;
              v53 = v35;
              result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1);
              v36 = v52;
              v35 = v53;
              v33 = v54;
              v32 = v56;
            }

            v31 += 80;
            *(v70 + 16) = v39;
            v40 = v70 + 80 * v38;
            *(v40 + 32) = v36;
            *(v40 + 48) = v35;
            *(v40 + 64) = v33;
            *(v40 + 80) = v32;
            *(v40 + 96) = v34;
            --v29;
          }

          while (v29);
        }

        else
        {
          v41 = *(v60 + 8 * v27);

          v30 = MEMORY[0x1E69E7CC0];
          v39 = *(MEMORY[0x1E69E7CC0] + 16);
        }

        if (v39 >= 2)
        {
          v44 = 0;
          v45 = v39 >> 1;
          v46 = v39 - 1;
          v47 = 80 * v39 - 48;
          v48 = 32;
          do
          {
            if (v44 != v46)
            {
              v51 = *(v30 + 16);
              if (v44 >= v51)
              {
                __break(1u);
LABEL_57:
                __break(1u);
LABEL_58:
                __break(1u);
                goto LABEL_59;
              }

              v63 = *(v30 + v48);
              v67 = *(v30 + v48 + 64);
              v65 = *(v30 + v48 + 32);
              v66 = *(v30 + v48 + 48);
              v64 = *(v30 + v48 + 16);
              if (v46 >= v51)
              {
                goto LABEL_57;
              }

              v71 = *(v30 + v47);
              v75 = *(v30 + v47 + 64);
              v73 = *(v30 + v47 + 32);
              v74 = *(v30 + v47 + 48);
              v72 = *(v30 + v47 + 16);
              result = swift_isUniquelyReferenced_nonNull_native();
              if ((result & 1) == 0)
              {
                result = specialized _ArrayBuffer._consumeAndCreateNew()(v30);
                v30 = result;
              }

              v49 = v30 + v48;
              *v49 = v71;
              *(v49 + 64) = v75;
              *(v49 + 32) = v73;
              *(v49 + 48) = v74;
              *(v49 + 16) = v72;
              v50 = v30 + v47;
              *(v50 + 64) = v67;
              *(v50 + 32) = v65;
              *(v50 + 48) = v66;
              *(v50 + 16) = v64;
              *v50 = v63;
            }

            ++v44;
            --v46;
            v47 -= 80;
            v48 += 80;
          }

          while (v45 != v44);
        }

        v1 = v58;
        v3 = v62;
        v43 = *(v62 + 16);
        v42 = *(v62 + 24);
        if (v43 >= v42 >> 1)
        {
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1);
          v3 = v62;
        }

        ++v27;
        *(v3 + 16) = v43 + 1;
        *(v3 + 8 * v43 + 32) = v30;
        if (v27 == v58)
        {
          return v3;
        }
      }

LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    return v3;
  }

  if (!v19)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  if (v1 <= v20)
  {
    v22 = 0;
    v23 = (result + 72);
    v24 = 0x7FFFFFFFFFFFFFFFLL;
    v25 = 1;
    while (1)
    {
      if (!v24)
      {
        goto LABEL_58;
      }

      if (v22 > v19)
      {
        break;
      }

      v26 = *v23;
      v23 += 4;
      if (v26 < *(result + 40 + 32 * v22))
      {
        v22 = v25;
      }

      ++v25;
      --v24;
      if (v1 == v25)
      {
        goto LABEL_25;
      }
    }

LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

LABEL_63:
  __break(1u);
  return result;
}

void specialized classify<A>(subpaths:)(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v1 = 0;
    v4 = a1 + 32;
    v5 = MEMORY[0x1E69E7CC0];
    v2 = 0.000001;
    v6 = MEMORY[0x1E69E7CC0];
    do
    {
      v9 = *(v4 + 8 * v1);
      v52 = *(*&v9 + 16);
      if (v52)
      {
        v53 = *&v9 + 48;
        v54 = 0.0;
        do
        {
          v62 = *(v53 - 8);
          v63 = *(v53 + 8);
          if (*(v53 + 48))
          {
            v64 = *(v53 + 24);
            if (*(v53 + 48) == 1)
            {
              _Q2 = vdupq_n_s64(v64);
              _D3 = *(v53 - 16);
              _D4 = vdupq_n_s64(v63).i64[1];
              _D5 = *v53;
              __asm { FMLA            D0, D3, V1.D[1] }

              v70 = v54 + _D0;
              __asm { FMLA            D1, D5, V2.D[1] }
            }

            else
            {
              v72 = (v53 + 40);
              _Q1 = vdupq_n_s64(v63);
              _Q2 = vdupq_n_s64(v64);
              _Q3 = vld1q_dup_f64(v72);
              _D4 = *(v53 - 16);
              _D6 = *v53;
              __asm { FMLA            D0, D4, V1.D[1] }

              _D4 = *(v53 + 16);
              __asm { FMLA            D5, D6, V2.D[1] }

              v70 = v54 + _D0 + _D5;
              _Q2.i64[0] = *(v53 + 32);
              __asm { FMLA            D1, D4, V3.D[1] }
            }

            v54 = v70 + _D1;
          }

          else
          {
            _Q1 = vdupq_n_s64(v63);
            _D2 = *(v53 - 16);
            v57 = *v53;
            __asm { FMLA            D0, D2, V1.D[1] }

            v54 = v54 + _D0;
          }

          v53 += 80;
          --v52;
        }

        while (v52);
        if (fabs(v54) > v2)
        {
          v81 = *(v4 + 8 * v1);

          if (v54 <= 0.0)
          {
            v51 = v5;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v16 = v6;
            }

            else
            {
              v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
            }

            v13 = *(v16 + 2);
            v82 = *(v16 + 3);
            v17 = *&v13 + 1;
            if (*&v13 >= v82 >> 1)
            {
              v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v82 > 1), *&v13 + 1, 1, v16);
            }

            v6 = v16;
          }

          else
          {
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v16 = v5;
            }

            else
            {
              v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
            }

            v13 = *(v16 + 2);
            v18 = *(v16 + 3);
            v17 = *&v13 + 1;
            if (*&v13 >= v18 >> 1)
            {
              goto LABEL_124;
            }

            v51 = v16;
          }

LABEL_125:
          *(v16 + 2) = v17;
          *&v16[8 * *&v13 + 32] = v9;
          v5 = v51;
        }
      }

      ++v1;
    }

    while (v1 != v3);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
    v6 = MEMORY[0x1E69E7CC0];
  }

  v84 = v5;
  v7 = *(v6 + 2);
  if (v7)
  {
    v8 = *(v6 + 2);
    v9 = COERCE_DOUBLE(static Array._allocateBufferUninitialized(minimumCapacity:)());
    *(*&v9 + 16) = v7;
    bzero((*&v9 + 32), v7);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v10 = v84;
  v11 = *(v84 + 2);
  if (v11)
  {
    v12 = 0;
    v13 = *(v6 + 2);
    v14 = *&v9 + 32;
    v15 = v6 + 32;
    v86 = MEMORY[0x1E69E7CC0];
    v87 = v6;
    v90 = v13;
    v91 = v9;
    v83 = *(v84 + 2);
    v88 = v6 + 32;
    v89 = *&v9 + 32;
    while (v12 < *(v10 + 2))
    {
      v85 = v12;
      v4 = *&v84[8 * v12 + 32];

      if (v13 != 0.0)
      {

        v17 = 0;
        v3 = MEMORY[0x1E69E7CC0];
        v92 = v4;
        while (1)
        {
          v18 = *(*&v9 + 16);
          if (v17 >= v18)
          {
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v17, 1, v16);
            v51 = v16;
            goto LABEL_125;
          }

          if (*(v14 + v17))
          {
            goto LABEL_13;
          }

          v18 = *(v6 + 2);
          if (v17 >= v18)
          {
            goto LABEL_121;
          }

          v19 = *&v15[8 * v17];
          v18 = *(v19 + 16);
          if (!v18)
          {
            goto LABEL_122;
          }

          v99 = *(v19 + 32);
          specialized Polygon.testInside(point:)(v4, v99);
          if ((v20 & 1) == 0)
          {
            goto LABEL_13;
          }

          v93 = v3;
          v6 = *(v3 + 2);
          if (!v6)
          {
            goto LABEL_94;
          }

          v21 = 0;
          v3 += 32;
          v2 = v99.f64[1];
          while (2)
          {
            v22 = *&v3[8 * v21];
            v4 = *(v22 + 16);
            if (!v4)
            {
              goto LABEL_22;
            }

            v23 = 0;
            v1 = v22 + 48;
            do
            {
              v25 = *(v1 - 16);
              v24 = *(v1 - 8);
              v27 = *v1;
              v26 = *(v1 + 8);
              if (*(v1 + 48))
              {
                v13 = *(v1 + 16);
                v9 = *(v1 + 24);
                if (*(v1 + 48) == 1)
                {
                  v28 = *(v1 - 16);
                  v29 = *v1;
                  v30 = *(v1 + 8);
                  if (vmovn_s64(vmvnq_s8(vcgeq_f64(*&v99, *&v28))).i32[1])
                  {
                    if (v29.f64[1] <= v99.f64[1])
                    {
                      v97 = *v1;
                      if (_simd_orient_pd2(v29, v28, v99) > 0.0)
                      {
                        _VF = __OFSUB__(v23--, 1);
                        if (_VF)
                        {
                          goto LABEL_109;
                        }
                      }

                      goto LABEL_49;
                    }
                  }

                  else if (v99.f64[1] < v29.f64[1])
                  {
                    v97 = *v1;
                    if (_simd_orient_pd2(v28, v29, v99) > 0.0)
                    {
                      _VF = __OFADD__(v23++, 1);
                      if (_VF)
                      {
                        goto LABEL_110;
                      }
                    }

LABEL_49:
                    v29 = v97;
                  }

                  v38.f64[0] = v13;
                  v38.f64[1] = v9;
                  if (v30 <= v99.f64[1])
                  {
                    if (v99.f64[1] < v9 && _simd_orient_pd2(v29, v38, v99) > 0.0)
                    {
                      _VF = __OFADD__(v23++, 1);
                      if (_VF)
                      {
                        goto LABEL_114;
                      }
                    }
                  }

                  else if (v9 <= v99.f64[1] && _simd_orient_pd2(v38, v29, v99) > 0.0)
                  {
                    _VF = __OFSUB__(v23--, 1);
                    if (_VF)
                    {
                      goto LABEL_115;
                    }
                  }

                  goto LABEL_25;
                }

                v34 = *(v1 - 16);
                v35 = *v1;
                v36 = *(v1 + 32);
                v37 = *(v1 + 8);
                v98 = v36;
                if (vmovn_s64(vmvnq_s8(vcgeq_f64(*&v99, *&v34))).i32[1])
                {
                  if (v35.f64[1] <= v99.f64[1])
                  {
                    v95 = *v1;
                    if (_simd_orient_pd2(v35, v34, v99) > 0.0)
                    {
                      _VF = __OFSUB__(v23--, 1);
                      if (_VF)
                      {
                        goto LABEL_113;
                      }
                    }

                    goto LABEL_64;
                  }
                }

                else if (v99.f64[1] < v35.f64[1])
                {
                  v95 = *v1;
                  if (_simd_orient_pd2(v34, v35, v99) > 0.0)
                  {
                    _VF = __OFADD__(v23++, 1);
                    if (_VF)
                    {
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
                      goto LABEL_120;
                    }
                  }

LABEL_64:
                  v35 = v95;
                  v36 = v98;
                }

                v39.f64[0] = v13;
                v39.f64[1] = v9;
                if (v37 <= v99.f64[1])
                {
                  if (v99.f64[1] < v9)
                  {
                    v96 = v39;
                    if (_simd_orient_pd2(v35, v39, v99) <= 0.0)
                    {
                      goto LABEL_81;
                    }

                    _VF = __OFADD__(v23++, 1);
                    v36 = v98;
                    if (_VF)
                    {
                      goto LABEL_117;
                    }

LABEL_82:
                    v39 = v96;
                  }
                }

                else if (v9 <= v99.f64[1])
                {
                  v96 = v39;
                  if (_simd_orient_pd2(v39, v35, v99) > 0.0)
                  {
                    _VF = __OFSUB__(v23--, 1);
                    v36 = v98;
                    if (_VF)
                    {
                      goto LABEL_116;
                    }

                    goto LABEL_82;
                  }

LABEL_81:
                  v36 = v98;
                  goto LABEL_82;
                }

                if (v9 <= v99.f64[1])
                {
                  if (v99.f64[1] < v36.f64[1] && _simd_orient_pd2(v39, v36, v99) > 0.0)
                  {
                    _VF = __OFADD__(v23++, 1);
                    if (_VF)
                    {
                      goto LABEL_118;
                    }
                  }
                }

                else if (v36.f64[1] <= v99.f64[1] && _simd_orient_pd2(v36, v39, v99) > 0.0)
                {
                  _VF = __OFSUB__(v23--, 1);
                  if (_VF)
                  {
                    goto LABEL_119;
                  }
                }

                goto LABEL_25;
              }

              v32 = *(v1 - 16);
              v33 = *v1;
              if (vmovn_s64(vmvnq_s8(vcgeq_f64(*&v99, *&v32))).i32[1])
              {
                if (v33.f64[1] <= v99.f64[1] && _simd_orient_pd2(v33, v32, v99) > 0.0)
                {
                  _VF = __OFSUB__(v23--, 1);
                  if (_VF)
                  {
                    goto LABEL_112;
                  }
                }
              }

              else if (v99.f64[1] < v33.f64[1] && _simd_orient_pd2(v32, v33, v99) > 0.0)
              {
                _VF = __OFADD__(v23++, 1);
                if (_VF)
                {
                  goto LABEL_111;
                }
              }

LABEL_25:
              v1 += 80;
              --v4;
            }

            while (v4);
            if (v23)
            {
              v6 = v87;
              v15 = v88;
              v13 = v90;
              v9 = v91;
              v14 = v89;
              v4 = v92;
              v3 = v93;
              goto LABEL_13;
            }

LABEL_22:
            if (++v21 != v6)
            {
              continue;
            }

            break;
          }

LABEL_94:
          swift_bridgeObjectRetain_n();
          v40 = v93;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, (v6 + 1), 1, v93);
          }

          v13 = v90;
          v9 = v91;
          v14 = v89;
          v41 = v40;
          v42 = *(v40 + 2);
          v43 = v41;
          v44 = *(v41 + 3);
          v6 = (v42 + 1);
          if (v42 >= v44 >> 1)
          {
            v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v42 + 1, 1, v43);
          }

          v15 = v88;
          v4 = v92;
          *(v43 + 2) = v6;
          v45 = &v43[8 * v42];
          v3 = v43;
          *(v45 + 4) = v19;

          v18 = *(*&v91 + 16);
          if (v17 >= v18)
          {
            goto LABEL_123;
          }

          *(v89 + v17) = 1;
          v6 = v87;
LABEL_13:
          if (++v17 == *&v13)
          {

            v11 = v83;
            goto LABEL_102;
          }
        }
      }

      v3 = MEMORY[0x1E69E7CC0];
LABEL_102:

      v94 = v3;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v86 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v86[2] + 1, 1, v86);
      }

      v46 = v85;
      v48 = v86[2];
      v47 = v86[3];
      if (v48 >= v47 >> 1)
      {
        v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1, v86);
        v46 = v85;
        v86 = v50;
      }

      v1 = v46 + 1;

      v86[2] = v48 + 1;
      v49 = &v86[2 * v48];
      v49[4] = v4;
      v49[5] = v94;

      v12 = v1;
      v10 = v84;
      if (v1 == v11)
      {
        goto LABEL_107;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_107:
  }
}

void *specialized classify<A>(subpaths:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = 0;
    v5 = (a1 + 32);
    v9 = MEMORY[0x1E69E7CC0];
    v6 = 0.000001;
    v10 = MEMORY[0x1E69E7CC0];
    do
    {
      v46 = *&v5[16 * v8];
      v47 = *&v5[16 * v8 + 8];
      if (v47 >= 2)
      {
        v48 = (v46 + 16);
        _Q0 = *v46;
        v50 = v47 - 1;
        v51 = 0.0;
        _Q2 = *v46;
        do
        {
          v53 = _Q2;
          v54 = *v48++;
          _Q2 = v54;
          v51 = v51 + -*(&v53 + 1) * *&v54 + *&v53 * *(&v54 + 1);
          --v50;
        }

        while (v50);
        __asm { FMLA            D3, D2, V0.D[1] }

        if (fabs(v51 + _D3) > v6)
        {
          v75 = *&v5[16 * v8];
          if (v51 + _D3 <= 0.0)
          {
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              a4 = v10;
            }

            else
            {
              a4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1, v10);
            }

            v45 = v75;
            v4 = *(a4 + 2);
            v59 = *(a4 + 3);
            v13 = v4 + 1;
            if (v4 >= v59 >> 1)
            {
              v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v4 + 1, 1, a4);
              v45 = v75;
              a4 = v60;
              v10 = v60;
            }

            else
            {
              v10 = a4;
            }
          }

          else
          {
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              a4 = v9;
            }

            else
            {
              a4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
            }

            v45 = v75;
            v4 = *(a4 + 2);
            v15 = *(a4 + 3);
            v13 = v4 + 1;
            if (v4 >= v15 >> 1)
            {
              goto LABEL_106;
            }

            v9 = a4;
          }

LABEL_107:
          *(a4 + 2) = v13;
          *&a4[16 * v4 + 32] = v45;
        }
      }

      v8 = (v8 + 1);
    }

    while (v8 != v7);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
    v10 = MEMORY[0x1E69E7CC0];
  }

  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = *(v10 + 16);
    v13 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v13 + 16) = v11;
    bzero((v13 + 32), v11);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v61 = *(v9 + 2);
  if (v61)
  {
    v7 = 0;
    v8 = *(v10 + 16);
    v62 = v9 + 32;
    v63 = v9;
    v14 = v13 + 32;
    v70 = v10 + 32;
    v67 = MEMORY[0x1E69E7CC0];
    v68 = v8;
    v69 = v10;
    v66 = v13;
    while (1)
    {
      v15 = *(v63 + 2);
      if (v7 >= v15)
      {
        goto LABEL_103;
      }

      v64 = v7;
      v16 = *&v62[16 * v7];
      v65 = v16;
      if (v8)
      {
        break;
      }

      v5 = MEMORY[0x1E69E7CC0];
LABEL_85:

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v36 = v64;
        v37 = v67;
      }

      else
      {
        v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v67[2] + 1, 1, v67);
        v36 = v64;
      }

      v4 = v37[2];
      v38 = v37[3];
      v39 = v65;
      if (v4 >= v38 >> 1)
      {
        v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v4 + 1, 1, v37);
        v39 = v65;
        v37 = v41;
      }

      v7 = v36 + 1;
      v37[2] = v4 + 1;
      v67 = v37;
      v40 = &v37[3 * v4];
      *(v40 + 2) = v39;
      v40[6] = v5;

      if (v7 == v61)
      {
LABEL_94:

        v42 = v67;
        goto LABEL_95;
      }
    }

    v7 = 0;
    v17 = *(&v16 + 1);
    v73 = v16;
    v72 = *(&v16 + 1) - 1;
    v5 = MEMORY[0x1E69E7CC0];
    v71 = *(&v16 + 1);
LABEL_15:
    v15 = *(v13 + 16);
    if (v7 >= v15)
    {
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

    if (*(v14 + v7))
    {
      goto LABEL_14;
    }

    v15 = *(v10 + 16);
    if (v7 >= v15)
    {
      goto LABEL_99;
    }

    if (v17 < 2)
    {
      goto LABEL_14;
    }

    v4 = 0;
    v18 = *(v70 + 16 * v7);
    v19 = *(v70 + 16 * v7);
    v20 = *v19;
    v6 = v19->f64[1];
    v21 = v72;
    v10 = v73;
    v8 = v73;
    v74 = v18;
    v75 = *v19;
    while (1)
    {
      v22 = v8[1];
      v23 = v8[1].f64[1];
      if (vmovn_s64(vmvnq_s8(vcgeq_f64(*&v20, *v8))).i32[1])
      {
        if (v23 > v6)
        {
          goto LABEL_21;
        }

        if (_simd_orient_pd2(v8[1], *v8, v20) > 0.0)
        {
          _VF = __OFSUB__(v4--, 1);
          if (_VF)
          {
            goto LABEL_98;
          }
        }
      }

      else
      {
        if (v6 >= v23)
        {
          goto LABEL_21;
        }

        if (_simd_orient_pd2(*v8, v8[1], v20) > 0.0)
        {
          _VF = __OFADD__(v4++, 1);
          if (_VF)
          {
            goto LABEL_97;
          }
        }
      }

      v20 = v75;
LABEL_21:
      ++v8;
      if (!--v21)
      {
        v25 = *v73;
        v26 = v73->f64[1];
        if (vmovn_s64(vmvnq_s8(vcgeq_f64(*&v20, *v8))).i32[1])
        {
          if (v26 <= v6)
          {
            if (_simd_orient_pd2(*v73, *v8, v20) > 0.0)
            {
              _VF = __OFSUB__(v4--, 1);
              if (_VF)
              {
                goto LABEL_104;
              }

              goto LABEL_42;
            }

            v20 = v75;
          }

LABEL_45:
          if (v4)
          {
            goto LABEL_46;
          }

LABEL_12:
          v10 = v69;
          goto LABEL_13;
        }

        if (v6 >= v26)
        {
          goto LABEL_45;
        }

        if (_simd_orient_pd2(*v8, *v73, v20) > 0.0)
        {
          _VF = __OFADD__(v4++, 1);
          if (_VF)
          {
            goto LABEL_105;
          }
        }

LABEL_42:
        v20 = v75;
        if (!v4)
        {
          goto LABEL_12;
        }

LABEL_46:
        v27 = *(v5 + 2);
        if (!v27)
        {
LABEL_77:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27 + 1, 1, v5);
          }

          v8 = v68;
          v10 = v69;
          v13 = v66;
          v17 = v71;
          v4 = *(v5 + 2);
          v35 = *(v5 + 3);
          if (v4 >= v35 >> 1)
          {
            v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v4 + 1, 1, v5);
          }

          *(v5 + 2) = v4 + 1;
          *&v5[16 * v4 + 32] = v74;
          v15 = *(v66 + 16);
          if (v7 >= v15)
          {
            goto LABEL_102;
          }

          *(v14 + v7) = 1;
          goto LABEL_14;
        }

        v4 = 0;
        while (1)
        {
          v28 = &v5[16 * v4 + 32];
          v29 = v28[1];
          if (v29 >= 2)
          {
            break;
          }

LABEL_50:
          if (++v4 == v27)
          {
            goto LABEL_77;
          }
        }

        v8 = 0;
        v13 = *v28;
        v30 = v29 - 1;
        v10 = *v28;
        while (2)
        {
          v31 = *(v10 + 16);
          v32 = *(v10 + 24);
          if (vmovn_s64(vmvnq_s8(vcgeq_f64(*&v20, *v10))).i32[1])
          {
            if (v32 <= v6)
            {
              if (_simd_orient_pd2(*(v10 + 16), *v10, v20) > 0.0)
              {
                _VF = __OFSUB__(v8, 1);
                v8 = (v8 - 1);
                if (_VF)
                {
                  goto LABEL_93;
                }
              }

              goto LABEL_53;
            }
          }

          else if (v6 < v32)
          {
            if (_simd_orient_pd2(*v10, *(v10 + 16), v20) > 0.0)
            {
              _VF = __OFADD__(v8, 1);
              v8 = (v8 + 1);
              if (_VF)
              {
                __break(1u);
LABEL_93:
                __break(1u);
                goto LABEL_94;
              }
            }

LABEL_53:
            v20 = v75;
          }

          v10 += 16;
          if (--v30)
          {
            continue;
          }

          break;
        }

        v33 = *v13;
        v34 = *(v13 + 8);
        if (vmovn_s64(vmvnq_s8(vcgeq_f64(*&v20, *v10))).i32[1])
        {
          if (v34 <= v6)
          {
            if (_simd_orient_pd2(*v13, *v10, v20) <= 0.0)
            {
              goto LABEL_48;
            }

            _VF = __OFSUB__(v8, 1);
            v8 = (v8 - 1);
            if (!_VF)
            {
              goto LABEL_48;
            }

LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v13, 1, a4);
            v45 = v75;
            a4 = v44;
            v9 = v44;
            goto LABEL_107;
          }
        }

        else if (v6 < v34)
        {
          if (_simd_orient_pd2(*v10, *v13, v20) > 0.0)
          {
            _VF = __OFADD__(v8, 1);
            v8 = (v8 + 1);
            if (_VF)
            {
              goto LABEL_101;
            }
          }

LABEL_48:
          v20 = v75;
        }

        if (!v8)
        {
          goto LABEL_50;
        }

        v10 = v69;
        v13 = v66;
LABEL_13:
        v8 = v68;
        v17 = v71;
LABEL_14:
        if (++v7 == v8)
        {
          goto LABEL_85;
        }

        goto LABEL_15;
      }
    }
  }

  v42 = MEMORY[0x1E69E7CC0];
LABEL_95:

  return v42;
}

void trace(path:points:tangents:uniformSegmentsPerSpan:)(uint64_t a1@<X0>, char **a2@<X1>, char **a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X8>, float64x2_t a6@<Q0>)
{
  if (a4 < 1)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v11 = a4;
  v7 = a1;
  v12 = *(a1 + 16);
  v13 = v12 * a4;
  a5 = (v12 * a4) >> 64;
  if (a5 != (v12 * a4) >> 63)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v8 = a2;
  v9 = *a2;
  v10 = *(*a2 + 2);
  v14 = &v10[v13];
  if (__OFADD__(v10, v13))
  {
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v6 = a3;
  v15 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (a5 = *(v9 + 3), v14 > (a5 >> 1)))
  {
    if (v10 <= v14)
    {
      v17 = &v10[v13];
    }

    else
    {
      v17 = v10;
    }

    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v17, 0, v9);
  }

  *v8 = v9;
  v10 = *v6;
  v18 = *(*v6 + 2);
  v19 = __OFADD__(v18, v13);
  v20 = v18 + v13;
  if (v19)
  {
    goto LABEL_70;
  }

  v21 = *v6;
  v22 = swift_isUniquelyReferenced_nonNull_native();
  if (v22 && v20 <= *(v10 + 3) >> 1)
  {
    *v6 = v10;
    if (!v12)
    {
      return;
    }
  }

  else
  {
    if (v18 <= v20)
    {
      v23 = v20;
    }

    else
    {
      v23 = v18;
    }

    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v22, v23, 0, v10);
    *v6 = v10;
    if (!v12)
    {
      return;
    }
  }

  v61 = v7 + 2;
  v24 = &v7[5 * v12 + 2];
  v25 = v7[5 * v12];
  v74 = *(v24 - 48);
  v75 = v25;
  v76 = *(v24 - 16);
  v26 = *(v24 - 64);
  v72 = *(v24 - 80);
  v73 = v26;
  v7 = &v72;
  v27.f64[0] = PathSpan.tangent(at:)();
  v63 = v27;
  v28 = 0;
  v60 = v12;
  while (2)
  {
    v29 = 0;
    a5 = &v61[5 * v28];
    v30 = *(a5 + 32);
    a6 = *(a5 + 48);
    v66 = v30;
    v67 = *a5;
    v31 = *(a5 + 64);
    v62 = v28 + 1;
    v68 = *(a5 + 16);
    v32 = vsubq_f64(v68, *a5);
    v64 = a6;
    v65 = v32;
    do
    {
      if (v29 >= v11)
      {
        __break(1u);
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      v33 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        goto LABEL_66;
      }

      v34 = v29 / v11;
      v35 = 1.0 - v34;
      if (v31)
      {
        v36 = v35 * v35;
        if (v31 == 1)
        {
          v69 = vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(v68, v34 * (v35 + v35)), v67, v36), v66, v34 * v34);
          geom_quadratic_bezier_tangent_at_2d();
        }

        else
        {
          v69 = vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(v68, v34 * (v36 * 3.0)), v67, v35 * v36), v66, v34 * v34 * (v35 * 3.0)), v64, v34 * (v34 * v34));
          geom_cubic_bezier_tangent_at_2d();
        }

        v38 = v37;
        v32 = v65;
      }

      else
      {
        v69 = vaddq_f64(vmulq_n_f64(v68, v34), vmulq_n_f64(v67, v35));
        v38 = v32;
      }

      v39 = sqrt(vaddvq_f64(vmulq_f64(v38, v38)));
      if (fabs(v39) > 0.000001)
      {
        v38 = vdivq_f64(v38, vdupq_lane_s64(*&v39, 0));
      }

      v41 = *(v9 + 2);
      v40 = *(v9 + 3);
      if (v41 >= v40 >> 1)
      {
        v57 = v38;
        v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1, v9);
        v38 = v57;
        v32 = v65;
        v9 = v46;
      }

      *(v9 + 2) = v41 + 1;
      a6 = v69;
      *&v9[16 * v41 + 32] = v69;
      *v8 = v9;
      if (v29)
      {
        v43 = *(v10 + 2);
        v42 = *(v10 + 3);
        v7 = (v43 + 1);
        if (v43 < v42 >> 1)
        {
          goto LABEL_42;
        }

LABEL_45:
        v58 = v38;
        v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v7, 1, v10);
        v38 = v58;
        v32 = v65;
        v10 = v47;
        goto LABEL_42;
      }

      a6 = vmulq_f64(v38, v38);
      v44 = sqrt(vaddvq_f64(a6));
      a6.f64[0] = fabs(v44);
      v43 = *(v10 + 2);
      v42 = *(v10 + 3);
      v45 = v42 >> 1;
      v7 = (v43 + 1);
      if (a6.f64[0] <= 0.000001)
      {
        if (v45 > v43)
        {
          goto LABEL_42;
        }

        goto LABEL_45;
      }

      if (v45 <= v43)
      {
        v59 = v38;
        v70 = v44;
        v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1, v10);
        v44 = v70;
        v38 = v59;
        v32 = v65;
        v10 = v48;
      }

      a6 = vaddq_f64(v63, v38);
      v38 = vdivq_f64(a6, vdupq_lane_s64(*&v44, 0));
LABEL_42:
      *(v10 + 2) = v7;
      a5 = &v10[16 * v43];
      *(a5 + 32) = v38;
      *v6 = v10;
      if (!v31)
      {
        goto LABEL_50;
      }

      ++v29;
    }

    while (v33 != v11);
    if (v31 == 2)
    {
      geom_cubic_bezier_tangent_at_2d();
    }

    else
    {
      geom_quadratic_bezier_tangent_at_2d();
    }

    v32 = v49;
LABEL_50:
    v28 = v62;
    v50 = sqrt(vaddvq_f64(vmulq_f64(v32, v32)));
    if (fabs(v50) > 0.000001)
    {
      v63 = vdivq_f64(v32, vdupq_lane_s64(*&v50, 0));
      if (v62 != v60)
      {
        continue;
      }
    }

    else
    {
      v63 = v32;
      if (v62 != v60)
      {
        continue;
      }
    }

    break;
  }

  v51 = &v73;
  v52 = &v75;
  if (v76 == 1)
  {
    v52 = &v74;
  }

  if (!v76)
  {
    v52 = &v73;
  }

  v53 = vsubq_f64(*v61, *v52);
  if (sqrt(vaddvq_f64(vmulq_f64(v53, v53))) > 0.000001)
  {
    if (v76)
    {
      v51 = &v74;
      if (v76 != 1)
      {
        v51 = &v75;
      }
    }

    a6 = *v51;
    v11 = *(v9 + 2);
    a5 = *(v9 + 3);
    v7 = (v11 + 1);
    if (v11 < a5 >> 1)
    {
LABEL_61:
      *(v9 + 2) = v7;
      *&v9[16 * v11 + 32] = a6;
      *v8 = v9;
      v55 = *(v10 + 2);
      v54 = *(v10 + 3);
      if (v55 >= v54 >> 1)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1, v10);
      }

      *(v10 + 2) = v55 + 1;
      *&v10[16 * v55 + 32] = v63;
      *v6 = v10;
      return;
    }

LABEL_71:
    v71 = a6;
    v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((a5 > 1), v7, 1, v9);
    a6 = v71;
    v9 = v56;
    goto LABEL_61;
  }
}

uint64_t TesselatedShape.extractPreInset(frontFace:sweepCurve:)@<X0>(int a1@<W0>, float32x4_t *a2@<X1>, uint64_t a3@<X8>)
{
  result = *&v3[1].f64[0];
  if (result)
  {
    if (*(result + 16))
    {
      v6 = v3;
      v135 = a3;
      v140 = result;
      swift_bridgeObjectRetain_n();
      _StringGuts.grow(_:)(20);

      *&v179[0] = 0xD000000000000011;
      *(&v179[0] + 1) = 0x80000001C18F08B0;
      v132 = a1;
      v8 = a1 & 1;
      if (v8)
      {
        v9 = 0x746E6F7246;
      }

      else
      {
        v9 = 1801675074;
      }

      if (v8)
      {
        v10 = 0xE500000000000000;
      }

      else
      {
        v10 = 0xE400000000000000;
      }

      MEMORY[0x1C68F3410](v9, v10);

      MEMORY[0x1C68F3410](41, 0xE100000000000000);
      v133 = *(&v179[0] + 1);
      v134 = *&v179[0];
      v11 = MEMORY[0x1E69E7CC0];
      v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation11MeshBuffersO10IdentifierV_AC0E12BufferErased_pTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v162 = 0;
      specialized static TesselatedShape.endcapTransform(frontFace:sweepCurve:)(v8, a2);
      v136 = v13;
      v137 = v14;
      v138 = v15;
      v139 = v16;
      v130 = v6;
      v17 = v6->f64[0];
      v18 = *(*&v17 + 16);
      v129 = *&v17;
      if (v18)
      {
        *&v179[0] = v11;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 0);
        v20 = v136;
        v19 = v137;
        v22 = v138;
        v21 = v139;
        v23 = (*&v17 + 32);
        v24 = *(v11 + 16);
        v25 = 0uLL;
        v26 = v18;
        do
        {
          v27 = *v23;
          *&v179[0] = v11;
          v28 = *(v11 + 24);
          if (v24 >= v28 >> 1)
          {
            v131 = v27;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v24 + 1, 1);
            v27 = v131;
            v25 = 0uLL;
            v20 = v136;
            v19 = v137;
            v22 = v138;
            v21 = v139;
            v11 = *&v179[0];
          }

          v29 = *&v27;
          v30 = *(&v27 + 1);
          v31 = vaddq_f32(v21, vmlaq_f32(vmlaq_n_f32(vmulq_n_f32(v20, v29), v19, v30), v25, v22));
          v31.i32[3] = 0;
          *(v11 + 16) = v24 + 1;
          *(v11 + 16 * v24 + 32) = v31;
          ++v23;
          ++v24;
          --v26;
        }

        while (v26);
      }

      _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5SIMD3VySfG_AA05ArrayD0VyAJGTt1g5(v11, v181);
      if (one-time initialization token for positions != -1)
      {
        swift_once();
      }

      v32 = static MeshBuffers.positions;
      v33 = word_1EBEAD0B8;
      v34 = HIBYTE(word_1EBEAD0B8);
      *&v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD3VySfGGMd, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD3VySfGGMR);
      *(&v172 + 1) = v131;
      *&v173 = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
      *&v171 = swift_allocObject();
      swift_bridgeObjectRetain_n();
      outlined init with copy of [String : String](v181, v179, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
      if (v34)
      {
        v35 = 256;
      }

      else
      {
        v35 = 0;
      }

      _s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLV_6bufferAFy_xGqd___AA0cD0VyxGtc7ElementQyd__RszAA0cD8SemanticRd__lufCs5SIMD4VySfG_AA0C7BuffersO0P0Vy_AQGTt2B5(v32, *(&v32 + 1), v35 | v33, v181);
      outlined init with take of BindableDataInternal(&v171, &v163);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v150[0] = v12;
      v37 = *(&v164 + 1);
      v38 = __swift_mutable_project_boxed_opaque_existential_1(&v163, *(&v164 + 1));
      v39 = *(*(v37 - 8) + 64);
      v40 = MEMORY[0x1EEE9AC00](v38);
      v42 = (&v129 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v43 + 16))(v42, v40);
      v44 = v42[5];
      v179[4] = v42[4];
      v179[5] = v44;
      v180[0] = v42[6];
      *(v180 + 9) = *(v42 + 105);
      v45 = v42[1];
      v179[0] = *v42;
      v179[1] = v45;
      v46 = v42[3];
      v179[2] = v42[2];
      v179[3] = v46;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v179, v32, *(&v32 + 1), v35 | v33, isUniquelyReferenced_nonNull_native, v150);

      outlined destroy of BodyTrackingComponent?(v181, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
      __swift_destroy_boxed_opaque_existential_1(&v163);

      v47 = v150[0];
      if (v132)
      {
        if (v18)
        {
          v139 = vmlaq_f32(vaddq_f32(v138, vmlaq_f32(vmulq_f32(v136, 0), 0, v137)), 0, v139);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
          v48 = static Array._allocateBufferUninitialized(minimumCapacity:)();
          v49 = v139;
          *(v48 + 16) = v18;
          v49.i32[3] = 0;
          v50 = 32;
          v51 = v18;
          do
          {
            *(v48 + v50) = v49;
            v50 += 16;
            --v51;
          }

          while (v51);
        }

        else
        {
          v48 = MEMORY[0x1E69E7CC0];
        }

        _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5SIMD3VySfG_AA05ArrayD0VyAJGTt1g5(v48, v178);
        if (one-time initialization token for normals != -1)
        {
          swift_once();
        }

        v62 = static MeshBuffers.normals;
        v61 = *algn_1EBEAD0C8;
        v63 = word_1EBEAD0D0;
        v64 = HIBYTE(word_1EBEAD0D0);
        *(&v164 + 1) = v131;
        *&v165 = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
        *&v163 = swift_allocObject();
        swift_bridgeObjectRetain_n();
        outlined init with copy of [String : String](v178, &v171, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
        if (v64)
        {
          v65 = 256;
        }

        else
        {
          v65 = 0;
        }

        _s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLV_6bufferAFy_xGqd___AA0cD0VyxGtc7ElementQyd__RszAA0cD8SemanticRd__lufCs5SIMD4VySfG_AA0C7BuffersO0P0Vy_AQGTt2B5(v62, v61, v65 | v63, v178);
        outlined init with take of BindableDataInternal(&v163, v150);
        v66 = swift_isUniquelyReferenced_nonNull_native();
        *&v142 = v47;
        v67 = v151;
        v68 = __swift_mutable_project_boxed_opaque_existential_1(v150, v151);
        v69 = *(*(v67 - 8) + 64);
        v70 = MEMORY[0x1EEE9AC00](v68);
        v72 = (&v129 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v73 + 16))(v72, v70);
        v74 = v72[5];
        v175 = v72[4];
        v176 = v74;
        v177[0] = v72[6];
        *(v177 + 9) = *(v72 + 105);
        v75 = v72[1];
        v171 = *v72;
        v172 = v75;
        v76 = v72[3];
        v173 = v72[2];
        v174 = v76;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v171, v62, v61, v65 | v63, v66, &v142);

        outlined destroy of BodyTrackingComponent?(v178, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
        __swift_destroy_boxed_opaque_existential_1(v150);
        v77 = v142;
      }

      else
      {
        if (v18)
        {
          __asm { FMOV            V1.4S, #-1.0 }

          v139 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v136, 0), 0, v137), _Q1, v138), 0, v139);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
          v57 = static Array._allocateBufferUninitialized(minimumCapacity:)();
          v58 = v139;
          *(v57 + 16) = v18;
          v58.i32[3] = 0;
          v59 = 32;
          v60 = v18;
          do
          {
            *(v57 + v59) = v58;
            v59 += 16;
            --v60;
          }

          while (v60);
        }

        else
        {
          v57 = MEMORY[0x1E69E7CC0];
        }

        _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5SIMD3VySfG_AA05ArrayD0VyAJGTt1g5(v57, v178);
        if (one-time initialization token for normals != -1)
        {
          swift_once();
        }

        v79 = static MeshBuffers.normals;
        v78 = *algn_1EBEAD0C8;
        v80 = word_1EBEAD0D0;
        v81 = HIBYTE(word_1EBEAD0D0);
        *(&v164 + 1) = v131;
        *&v165 = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
        *&v163 = swift_allocObject();
        swift_bridgeObjectRetain_n();
        outlined init with copy of [String : String](v178, &v171, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
        if (v81)
        {
          v82 = 256;
        }

        else
        {
          v82 = 0;
        }

        _s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLV_6bufferAFy_xGqd___AA0cD0VyxGtc7ElementQyd__RszAA0cD8SemanticRd__lufCs5SIMD4VySfG_AA0C7BuffersO0P0Vy_AQGTt2B5(v79, v78, v82 | v80, v178);
        outlined init with take of BindableDataInternal(&v163, v150);
        v83 = swift_isUniquelyReferenced_nonNull_native();
        *&v142 = v47;
        v84 = v151;
        v85 = __swift_mutable_project_boxed_opaque_existential_1(v150, v151);
        v86 = *(*(v84 - 8) + 64);
        v87 = MEMORY[0x1EEE9AC00](v85);
        v89 = (&v129 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v90 + 16))(v89, v87);
        v91 = v89[5];
        v175 = v89[4];
        v176 = v91;
        v177[0] = v89[6];
        *(v177 + 9) = *(v89 + 105);
        v92 = v89[1];
        v171 = *v89;
        v172 = v92;
        v93 = v89[3];
        v173 = v89[2];
        v174 = v93;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v171, v79, v78, v82 | v80, v83, &v142);

        outlined destroy of BodyTrackingComponent?(v178, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
        __swift_destroy_boxed_opaque_existential_1(v150);
        v77 = v142;
        v140 = specialized Sequence.reversed()(v140);
      }

      outlined consume of MeshDescriptor.Primitives?(0, 0, 0xFFu);
      v94 = MEMORY[0x1E69E7CC0];
      if (v18)
      {
        *&v163 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 0);
        v94 = v163;
        v95 = v130[5];
        v96 = vsubq_f64(v130[6], v95);
        v97 = v129 + 2;
        if ((*&v96.f64[1] & 0xFFFFFFFFFFFFFLL) != 0)
        {
          v98 = v96.f64[0];
        }

        else
        {
          v98 = v96.f64[1];
        }

        v99 = *(v163 + 16);
        if ((~*&v96.f64[1] & 0x7FF0000000000000) != 0)
        {
          v98 = v96.f64[1];
        }

        if (v96.f64[1] >= v96.f64[0])
        {
          v96.f64[0] = v98;
        }

        v100 = vdupq_lane_s64(*&v96.f64[0], 0);
        do
        {
          v101 = *v97;
          *&v163 = v94;
          v102 = *(v94 + 24);
          if (v99 >= v102 >> 1)
          {
            v138 = v100;
            v139 = v95;
            v137 = v101;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v102 > 1), v99 + 1, 1);
            v101 = v137;
            v100 = v138;
            v95 = v139;
            v94 = v163;
          }

          *(v94 + 16) = v99 + 1;
          *(v94 + 8 * v99 + 32) = vcvt_f32_f64(vdivq_f64(vsubq_f64(v101, v95), v100));
          ++v97;
          ++v99;
          --v18;
        }

        while (v18);
      }

      _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5SIMD2VySfG_AA05ArrayD0VyAJGTt1g5(v94, v170);
      if (one-time initialization token for textureCoordinates != -1)
      {
        swift_once();
      }

      v104 = static MeshBuffers.textureCoordinates;
      v103 = unk_1EBEAD110;
      v105 = word_1EBEAD118;
      v106 = HIBYTE(word_1EBEAD118);
      v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD2VySfGGMd, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD2VySfGGMR);
      v152 = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
      v150[0] = swift_allocObject();
      swift_bridgeObjectRetain_n();
      outlined init with copy of [String : String](v170, &v163, &_s17RealityFoundation10MeshBufferVys5SIMD2VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD2VySfGGMR);
      if (v106)
      {
        v107 = 256;
      }

      else
      {
        v107 = 0;
      }

      _s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLV_6bufferAFy_xGqd___AA0cD0VyxGtc7ElementQyd__RszAA0cD8SemanticRd__lufCs5SIMD4VySfG_AA0C7BuffersO0P0Vy_AQGTt2B5(v104, v103, v107 | v105, v170);
      outlined init with take of BindableDataInternal(v150, &v142);
      v108 = swift_isUniquelyReferenced_nonNull_native();
      v141[0] = v77;
      v109 = v144;
      v110 = __swift_mutable_project_boxed_opaque_existential_1(&v142, v144);
      v111 = *(*(v109 - 8) + 64);
      v112 = MEMORY[0x1EEE9AC00](v110);
      v114 = (&v129 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v115 + 16))(v114, v112);
      v116 = v114[5];
      v167 = v114[4];
      v168 = v116;
      v169[0] = v114[6];
      *(v169 + 9) = *(v114 + 105);
      v117 = v114[1];
      v163 = *v114;
      v164 = v117;
      v118 = v114[3];
      v165 = v114[2];
      v166 = v118;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v163, v104, v103, v107 | v105, v108, v141);

      outlined destroy of BodyTrackingComponent?(v170, &_s17RealityFoundation10MeshBufferVys5SIMD2VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD2VySfGGMR);
      __swift_destroy_boxed_opaque_existential_1(&v142);
      v120 = v140;
      v119 = v141[0];
      v121 = v133;
      *&v142 = v134;
      *(&v142 + 1) = v133;
      v143 = v141[0];
      v144 = 0;
      v122 = v162;
      LOBYTE(v145) = v162;
      *(&v145 + 1) = *v161;
      DWORD1(v145) = *&v161[3];
      *(&v145 + 1) = v140;
      *&v146 = 0;
      BYTE8(v146) = 0;
      HIDWORD(v146) = *&v160[3];
      *(&v146 + 9) = *v160;
      v149 = 0;
      v150[0] = v134;
      v147 = 0u;
      v148 = 0u;
      v123 = v141[0];
      v124 = v135;
      *v135 = v142;
      v124[1] = v123;
      v125 = v145;
      v126 = v146;
      v127 = v147;
      v128 = v148;
      *(v124 + 12) = v149;
      v124[4] = v127;
      v124[5] = v128;
      v124[2] = v125;
      v124[3] = v126;
      v150[1] = v121;
      v150[2] = v119;
      v151 = 0;
      LOBYTE(v152) = v122;
      HIDWORD(v152) = *&v161[3];
      *(&v152 + 1) = *v161;
      v153 = v120;
      v154 = 0;
      v155 = 0;
      *&v156[3] = *&v160[3];
      *v156 = *v160;
      v159 = 0;
      v157 = 0u;
      v158 = 0u;
      outlined init with copy of MeshDescriptor(&v142, v141);
      return outlined destroy of MeshDescriptor(v150);
    }

    else
    {
      *(a3 + 96) = 0;
      *(a3 + 64) = 0u;
      *(a3 + 80) = 0u;
      *(a3 + 32) = 0u;
      *(a3 + 48) = 0u;
      *a3 = 0u;
      *(a3 + 16) = 0u;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t TesselatedShape.extractPostInset(frontFace:sweepCurve:)@<X0>(int a1@<W0>, float32x4_t *a2@<X1>, uint64_t a3@<X8>)
{
  result = *(v3 + 40);
  if (*(result + 16))
  {
    if (*(v3 + 72))
    {
      __break(1u);
    }

    else
    {
      v138 = a3;
      v7 = *(v3 + 64);
      v143 = result;
      swift_bridgeObjectRetain_n();
      v8 = v3;
      _StringGuts.grow(_:)(21);

      *&v182[0] = 0xD000000000000012;
      *(&v182[0] + 1) = 0x80000001C18F0890;
      v135 = a1;
      v9 = a1 & 1;
      if (v9)
      {
        v10 = 0x746E6F7246;
      }

      else
      {
        v10 = 1801675074;
      }

      if (v9)
      {
        v11 = 0xE500000000000000;
      }

      else
      {
        v11 = 0xE400000000000000;
      }

      MEMORY[0x1C68F3410](v10, v11);

      MEMORY[0x1C68F3410](41, 0xE100000000000000);
      v136 = *(&v182[0] + 1);
      v137 = *&v182[0];
      v12 = MEMORY[0x1E69E7CC0];
      v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation11MeshBuffersO10IdentifierV_AC0E12BufferErased_pTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v165 = 0;
      specialized static TesselatedShape.endcapTransform(frontFace:sweepCurve:)(v9, a2);
      v139 = v14;
      v140 = v15;
      v141 = v16;
      v142 = v17;
      v133 = v8;
      v18 = *(v8 + 32);
      v19 = *(v18 + 16);
      v132 = v18;
      if (v19)
      {
        *&v182[0] = v12;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19, 0);
        v21 = v139;
        v20 = v140;
        v23 = v141;
        v22 = v142;
        v24 = (v18 + 32);
        *v25.i32 = v7;
        v26 = vdupq_lane_s32(v25, 0);
        v27 = *(v12 + 16);
        v28 = v19;
        do
        {
          v29 = *v24;
          *&v182[0] = v12;
          v30 = *(v12 + 24);
          if (v27 >= v30 >> 1)
          {
            v134 = v26;
            v131 = v29;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v27 + 1, 1);
            v29 = v131;
            v26 = v134;
            v21 = v139;
            v20 = v140;
            v23 = v141;
            v22 = v142;
            v12 = *&v182[0];
          }

          *&v29 = *&v29;
          v31 = *(&v29 + 1);
          v32 = vaddq_f32(v22, vmlaq_f32(vmlaq_n_f32(vmulq_n_f32(v21, *&v29), v20, v31), v26, v23));
          v32.i32[3] = 0;
          *(v12 + 16) = v27 + 1;
          *(v12 + 16 * v27 + 32) = v32;
          ++v24;
          ++v27;
          --v28;
        }

        while (v28);
      }

      _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5SIMD3VySfG_AA05ArrayD0VyAJGTt1g5(v12, v184);
      if (one-time initialization token for positions != -1)
      {
        swift_once();
      }

      v33 = static MeshBuffers.positions;
      v34 = word_1EBEAD0B8;
      v35 = HIBYTE(word_1EBEAD0B8);
      v134.i64[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD3VySfGGMd, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD3VySfGGMR);
      *(&v175 + 1) = v134.i64[0];
      *&v176 = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
      *&v174 = swift_allocObject();
      swift_bridgeObjectRetain_n();
      outlined init with copy of [String : String](v184, v182, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
      if (v35)
      {
        v36 = 256;
      }

      else
      {
        v36 = 0;
      }

      _s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLV_6bufferAFy_xGqd___AA0cD0VyxGtc7ElementQyd__RszAA0cD8SemanticRd__lufCs5SIMD4VySfG_AA0C7BuffersO0P0Vy_AQGTt2B5(v33, *(&v33 + 1), v36 | v34, v184);
      outlined init with take of BindableDataInternal(&v174, &v166);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v153[0] = v13;
      v38 = *(&v167 + 1);
      v39 = __swift_mutable_project_boxed_opaque_existential_1(&v166, *(&v167 + 1));
      v40 = *(*(v38 - 8) + 64);
      v41 = MEMORY[0x1EEE9AC00](v39);
      v43 = (&v131 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v44 + 16))(v43, v41);
      v45 = v43[5];
      v182[4] = v43[4];
      v182[5] = v45;
      v183[0] = v43[6];
      *(v183 + 9) = *(v43 + 105);
      v46 = v43[1];
      v182[0] = *v43;
      v182[1] = v46;
      v47 = v43[3];
      v182[2] = v43[2];
      v182[3] = v47;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v182, v33, *(&v33 + 1), v36 | v34, isUniquelyReferenced_nonNull_native, v153);

      outlined destroy of BodyTrackingComponent?(v184, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
      __swift_destroy_boxed_opaque_existential_1(&v166);

      v48 = v153[0];
      if (v135)
      {
        if (v19)
        {
          v142 = vmlaq_f32(vaddq_f32(v141, vmlaq_f32(vmulq_f32(v139, 0), 0, v140)), 0, v142);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
          v49 = static Array._allocateBufferUninitialized(minimumCapacity:)();
          v50 = v142;
          *(v49 + 16) = v19;
          v50.i32[3] = 0;
          v51 = 32;
          v52 = v19;
          do
          {
            *(v49 + v51) = v50;
            v51 += 16;
            --v52;
          }

          while (v52);
        }

        else
        {
          v49 = MEMORY[0x1E69E7CC0];
        }

        _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5SIMD3VySfG_AA05ArrayD0VyAJGTt1g5(v49, v181);
        if (one-time initialization token for normals != -1)
        {
          swift_once();
        }

        v63 = static MeshBuffers.normals;
        v62 = *algn_1EBEAD0C8;
        v64 = word_1EBEAD0D0;
        v65 = HIBYTE(word_1EBEAD0D0);
        *(&v167 + 1) = v134.i64[0];
        *&v168 = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
        *&v166 = swift_allocObject();
        swift_bridgeObjectRetain_n();
        outlined init with copy of [String : String](v181, &v174, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
        if (v65)
        {
          v66 = 256;
        }

        else
        {
          v66 = 0;
        }

        _s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLV_6bufferAFy_xGqd___AA0cD0VyxGtc7ElementQyd__RszAA0cD8SemanticRd__lufCs5SIMD4VySfG_AA0C7BuffersO0P0Vy_AQGTt2B5(v63, v62, v66 | v64, v181);
        outlined init with take of BindableDataInternal(&v166, v153);
        v67 = swift_isUniquelyReferenced_nonNull_native();
        *&v145 = v48;
        v68 = v154;
        v69 = __swift_mutable_project_boxed_opaque_existential_1(v153, v154);
        v70 = *(*(v68 - 8) + 64);
        v71 = MEMORY[0x1EEE9AC00](v69);
        v73 = (&v131 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v74 + 16))(v73, v71);
        v75 = v73[5];
        v178 = v73[4];
        v179 = v75;
        v180[0] = v73[6];
        *(v180 + 9) = *(v73 + 105);
        v76 = v73[1];
        v174 = *v73;
        v175 = v76;
        v77 = v73[3];
        v176 = v73[2];
        v177 = v77;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v174, v63, v62, v66 | v64, v67, &v145);

        outlined destroy of BodyTrackingComponent?(v181, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
        __swift_destroy_boxed_opaque_existential_1(v153);
        v78 = v145;
      }

      else
      {
        if (v19)
        {
          __asm { FMOV            V1.4S, #-1.0 }

          v142 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v139, 0), 0, v140), _Q1, v141), 0, v142);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
          v58 = static Array._allocateBufferUninitialized(minimumCapacity:)();
          v59 = v142;
          *(v58 + 16) = v19;
          v59.i32[3] = 0;
          v60 = 32;
          v61 = v19;
          do
          {
            *(v58 + v60) = v59;
            v60 += 16;
            --v61;
          }

          while (v61);
        }

        else
        {
          v58 = MEMORY[0x1E69E7CC0];
        }

        _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5SIMD3VySfG_AA05ArrayD0VyAJGTt1g5(v58, v181);
        if (one-time initialization token for normals != -1)
        {
          swift_once();
        }

        v80 = static MeshBuffers.normals;
        v79 = *algn_1EBEAD0C8;
        v81 = word_1EBEAD0D0;
        v82 = HIBYTE(word_1EBEAD0D0);
        *(&v167 + 1) = v134.i64[0];
        *&v168 = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
        *&v166 = swift_allocObject();
        swift_bridgeObjectRetain_n();
        outlined init with copy of [String : String](v181, &v174, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
        if (v82)
        {
          v83 = 256;
        }

        else
        {
          v83 = 0;
        }

        _s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLV_6bufferAFy_xGqd___AA0cD0VyxGtc7ElementQyd__RszAA0cD8SemanticRd__lufCs5SIMD4VySfG_AA0C7BuffersO0P0Vy_AQGTt2B5(v80, v79, v83 | v81, v181);
        outlined init with take of BindableDataInternal(&v166, v153);
        v84 = swift_isUniquelyReferenced_nonNull_native();
        *&v145 = v48;
        v85 = v154;
        v86 = __swift_mutable_project_boxed_opaque_existential_1(v153, v154);
        v87 = *(*(v85 - 8) + 64);
        v88 = MEMORY[0x1EEE9AC00](v86);
        v90 = (&v131 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v91 + 16))(v90, v88);
        v92 = v90[5];
        v178 = v90[4];
        v179 = v92;
        v180[0] = v90[6];
        *(v180 + 9) = *(v90 + 105);
        v93 = v90[1];
        v174 = *v90;
        v175 = v93;
        v94 = v90[3];
        v176 = v90[2];
        v177 = v94;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v174, v80, v79, v83 | v81, v84, &v145);

        outlined destroy of BodyTrackingComponent?(v181, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
        __swift_destroy_boxed_opaque_existential_1(v153);
        v78 = v145;
        v143 = specialized Sequence.reversed()(v143);
      }

      outlined consume of MeshDescriptor.Primitives?(0, 0, 0xFFu);
      v95 = MEMORY[0x1E69E7CC0];
      if (v19)
      {
        *&v166 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19, 0);
        v95 = v166;
        v96 = v133[5];
        v97 = vsubq_f64(v133[6], v96);
        v98 = v132 + 2;
        if ((*&v97.f64[1] & 0xFFFFFFFFFFFFFLL) != 0)
        {
          v99 = v97.f64[0];
        }

        else
        {
          v99 = v97.f64[1];
        }

        v100 = *(v166 + 16);
        if ((~*&v97.f64[1] & 0x7FF0000000000000) != 0)
        {
          v99 = v97.f64[1];
        }

        if (v97.f64[1] >= v97.f64[0])
        {
          v97.f64[0] = v99;
        }

        v101 = vdupq_lane_s64(*&v97.f64[0], 0);
        do
        {
          v102 = *v98;
          *&v166 = v95;
          v103 = *(v95 + 24);
          if (v100 >= v103 >> 1)
          {
            v141 = v101;
            v142 = v96;
            v140 = v102;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v103 > 1), v100 + 1, 1);
            v102 = v140;
            v101 = v141;
            v96 = v142;
            v95 = v166;
          }

          *(v95 + 16) = v100 + 1;
          *(v95 + 8 * v100 + 32) = vcvt_f32_f64(vdivq_f64(vsubq_f64(v102, v96), v101));
          ++v98;
          ++v100;
          --v19;
        }

        while (v19);
      }

      _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5SIMD2VySfG_AA05ArrayD0VyAJGTt1g5(v95, v173);
      if (one-time initialization token for textureCoordinates != -1)
      {
        swift_once();
      }

      v105 = static MeshBuffers.textureCoordinates;
      v104 = unk_1EBEAD110;
      v106 = word_1EBEAD118;
      v107 = HIBYTE(word_1EBEAD118);
      v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD2VySfGGMd, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD2VySfGGMR);
      v155 = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
      v153[0] = swift_allocObject();
      swift_bridgeObjectRetain_n();
      outlined init with copy of [String : String](v173, &v166, &_s17RealityFoundation10MeshBufferVys5SIMD2VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD2VySfGGMR);
      if (v107)
      {
        v108 = 256;
      }

      else
      {
        v108 = 0;
      }

      _s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLV_6bufferAFy_xGqd___AA0cD0VyxGtc7ElementQyd__RszAA0cD8SemanticRd__lufCs5SIMD4VySfG_AA0C7BuffersO0P0Vy_AQGTt2B5(v105, v104, v108 | v106, v173);
      outlined init with take of BindableDataInternal(v153, &v145);
      v109 = swift_isUniquelyReferenced_nonNull_native();
      v144[0] = v78;
      v110 = v147;
      v111 = __swift_mutable_project_boxed_opaque_existential_1(&v145, v147);
      v112 = *(*(v110 - 8) + 64);
      v113 = MEMORY[0x1EEE9AC00](v111);
      v115 = (&v131 - ((v114 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v116 + 16))(v115, v113);
      v117 = v115[5];
      v170 = v115[4];
      v171 = v117;
      v172[0] = v115[6];
      *(v172 + 9) = *(v115 + 105);
      v118 = v115[1];
      v166 = *v115;
      v167 = v118;
      v119 = v115[3];
      v168 = v115[2];
      v169 = v119;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v166, v105, v104, v108 | v106, v109, v144);

      outlined destroy of BodyTrackingComponent?(v173, &_s17RealityFoundation10MeshBufferVys5SIMD2VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD2VySfGGMR);
      __swift_destroy_boxed_opaque_existential_1(&v145);
      v121 = v143;
      v120 = v144[0];
      v123 = v136;
      v122 = v137;
      *&v145 = v137;
      *(&v145 + 1) = v136;
      v146 = v144[0];
      v147 = 0;
      v124 = v165;
      LOBYTE(v148) = v165;
      *(&v148 + 1) = *v164;
      DWORD1(v148) = *&v164[3];
      *(&v148 + 1) = v143;
      *&v149 = 0;
      BYTE8(v149) = 0;
      HIDWORD(v149) = *&v163[3];
      *(&v149 + 9) = *v163;
      v152 = 0;
      v150 = 0u;
      v151 = 0u;
      v125 = v144[0];
      v126 = v138;
      *v138 = v145;
      v126[1] = v125;
      v127 = v148;
      v128 = v149;
      v129 = v150;
      v130 = v151;
      *(v126 + 12) = v152;
      v126[4] = v129;
      v126[5] = v130;
      v126[2] = v127;
      v126[3] = v128;
      v153[0] = v122;
      v153[1] = v123;
      v153[2] = v120;
      v154 = 0;
      LOBYTE(v155) = v124;
      HIDWORD(v155) = *&v164[3];
      *(&v155 + 1) = *v164;
      v156 = v121;
      v157 = 0;
      v158 = 0;
      *&v159[3] = *&v163[3];
      *v159 = *v163;
      v162 = 0;
      v160 = 0u;
      v161 = 0u;
      outlined init with copy of MeshDescriptor(&v145, v144);
      return outlined destroy of MeshDescriptor(v153);
    }
  }

  else
  {
    *(a3 + 96) = 0;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t TesselatedShape.extractJoinerPatch(frontFace:sweepCurve:)@<X0>(uint64_t result@<X0>, float32x4_t *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(v3 + 72))
  {
    __break(1u);
LABEL_40:
    swift_once();
    goto LABEL_17;
  }

  v7 = *(v3 + 48);
  v5 = *(v7 + 16);
  if (!v5 || (v8 = result, result = *(v3 + 56), !*(result + 16)))
  {
    *(a3 + 96) = 0;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  v92 = *(v3 + 56);
  swift_bridgeObjectRetain_n();
  _StringGuts.grow(_:)(29);

  *&v124[0] = 0xD00000000000001ALL;
  *(&v124[0] + 1) = 0x80000001C18F0870;
  v85 = v8;
  if (v8)
  {
    v10 = 0x746E6F7246;
  }

  else
  {
    v10 = 1801675074;
  }

  if (v8)
  {
    v11 = 0xE500000000000000;
  }

  else
  {
    v11 = 0xE400000000000000;
  }

  MEMORY[0x1C68F3410](v10, v11);

  MEMORY[0x1C68F3410](41, 0xE100000000000000);
  v86 = *(&v124[0] + 1);
  v87 = *&v124[0];
  v12 = MEMORY[0x1E69E7CC0];
  v84 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation11MeshBuffersO10IdentifierV_AC0E12BufferErased_pTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v115 = 0;
  specialized static TesselatedShape.endcapTransform(frontFace:sweepCurve:)(v8 & 1, a2);
  v90 = v14;
  v91 = v13;
  v88 = v16;
  v89 = v15;
  *&v124[0] = v12;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
  v18 = v88;
  v17 = v89;
  v20 = v90;
  v19 = v91;
  v21 = 0;
  v22 = v12;
  v4 = (v7 + 32);
  v23 = *(v12 + 16);
  do
  {
    f64 = v4[2 * v21].f64;
    v25 = *f64;
    v26 = f64[2];
    *&v124[0] = v22;
    v27 = *(v22 + 24);
    if (v23 >= v27 >> 1)
    {
      v82 = v25;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v23 + 1, 1);
      v25 = v82;
      v18 = v88;
      v17 = v89;
      v20 = v90;
      v19 = v91;
      v22 = *&v124[0];
    }

    v28 = *&v25;
    v29 = *(&v25 + 1);
    v30 = v26;
    v31 = vaddq_f32(v18, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v19, v28), v20, v29), v17, v30));
    v31.i32[3] = 0;
    ++v21;
    *(v22 + 16) = v23 + 1;
    *(v22 + 16 * v23++ + 32) = v31;
  }

  while (v5 != v21);
  _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5SIMD3VySfG_AA05ArrayD0VyAJGTt1g5(v22, v126);
  if (one-time initialization token for positions != -1)
  {
    goto LABEL_40;
  }

LABEL_17:
  v32 = static MeshBuffers.positions;
  v33 = word_1EBEAD0B8;
  LODWORD(v90.f64[0]) = word_1EBEAD0B8;
  v34 = HIBYTE(word_1EBEAD0B8);
  *(&v117 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD3VySfGGMd, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD3VySfGGMR);
  *&v118 = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
  *&v116 = swift_allocObject();
  swift_bridgeObjectRetain_n();
  outlined init with copy of [String : String](v126, v124, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
  if (v34)
  {
    v35 = 256;
  }

  else
  {
    v35 = 0;
  }

  _s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLV_6bufferAFy_xGqd___AA0cD0VyxGtc7ElementQyd__RszAA0cD8SemanticRd__lufCs5SIMD4VySfG_AA0C7BuffersO0P0Vy_AQGTt2B5(v32, *(&v32 + 1), v35 | v33, v126);
  outlined init with take of BindableDataInternal(&v116, v102);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v94 = v84;
  v37 = v103;
  v38 = __swift_mutable_project_boxed_opaque_existential_1(v102, v103);
  *&v91.f64[0] = &v82;
  v39 = *(*(v37 - 8) + 64);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v42 = (&v82 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v43 + 16))(v42, v40);
  v44 = v42[5];
  v124[4] = v42[4];
  v124[5] = v44;
  v125[0] = v42[6];
  *(v125 + 9) = *(v42 + 105);
  v45 = v42[1];
  v124[0] = *v42;
  v124[1] = v45;
  v46 = v42[3];
  v124[2] = v42[2];
  v124[3] = v46;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v124, v32, *(&v32 + 1), v35 | LOWORD(v90.f64[0]), isUniquelyReferenced_nonNull_native, &v94);

  outlined destroy of BodyTrackingComponent?(v126, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
  __swift_destroy_boxed_opaque_existential_1(v102);
  v47 = v92;

  v48 = v94;
  if ((v85 & 1) == 0)
  {
    v92 = specialized Sequence.reversed()(v47);
  }

  outlined consume of MeshDescriptor.Primitives?(0, 0, 0xFFu);
  v112 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
  v49 = v112;
  v50 = v83[5];
  v51 = vsubq_f64(v83[6], v50);
  if ((*&v51.f64[1] & 0xFFFFFFFFFFFFFLL) != 0)
  {
    v52 = v51.f64[0];
  }

  else
  {
    v52 = v51.f64[1];
  }

  v53 = *(v112 + 16);
  if ((~*&v51.f64[1] & 0x7FF0000000000000) != 0)
  {
    v52 = v51.f64[1];
  }

  if (v51.f64[1] >= v51.f64[0])
  {
    v51.f64[0] = v52;
  }

  v54 = vdupq_lane_s64(*&v51.f64[0], 0);
  do
  {
    v55 = *v4;
    v112 = v49;
    v56 = *(v49 + 24);
    if (v53 >= v56 >> 1)
    {
      v90 = v54;
      v91 = v50;
      v89 = v55;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v56 > 1), v53 + 1, 1);
      v55 = v89;
      v54 = v90;
      v50 = v91;
      v49 = v112;
    }

    *(v49 + 16) = v53 + 1;
    *(v49 + 8 * v53 + 32) = vcvt_f32_f64(vdivq_f64(vsubq_f64(v55, v50), v54));
    v4 += 2;
    ++v53;
    --v5;
  }

  while (v5);
  _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5SIMD2VySfG_AA05ArrayD0VyAJGTt1g5(v49, v123);
  if (one-time initialization token for textureCoordinates != -1)
  {
    swift_once();
  }

  v58 = static MeshBuffers.textureCoordinates;
  v57 = unk_1EBEAD110;
  v59 = word_1EBEAD118;
  v60 = HIBYTE(word_1EBEAD118);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD2VySfGGMd, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD2VySfGGMR);
  v104 = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
  v102[0] = swift_allocObject();
  swift_bridgeObjectRetain_n();
  outlined init with copy of [String : String](v123, &v116, &_s17RealityFoundation10MeshBufferVys5SIMD2VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD2VySfGGMR);
  if (v60)
  {
    v61 = 256;
  }

  else
  {
    v61 = 0;
  }

  _s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLV_6bufferAFy_xGqd___AA0cD0VyxGtc7ElementQyd__RszAA0cD8SemanticRd__lufCs5SIMD4VySfG_AA0C7BuffersO0P0Vy_AQGTt2B5(v58, v57, v61 | v59, v123);
  outlined init with take of BindableDataInternal(v102, &v94);
  v62 = swift_isUniquelyReferenced_nonNull_native();
  v93[0] = v48;
  v63 = v96;
  v64 = __swift_mutable_project_boxed_opaque_existential_1(&v94, v96);
  v65 = *(*(v63 - 8) + 64);
  v66 = MEMORY[0x1EEE9AC00](v64);
  v68 = (&v82 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v69 + 16))(v68, v66);
  v70 = v68[5];
  v120 = v68[4];
  v121 = v70;
  v122[0] = v68[6];
  *(v122 + 9) = *(v68 + 105);
  v71 = v68[1];
  v116 = *v68;
  v117 = v71;
  v72 = v68[3];
  v118 = v68[2];
  v119 = v72;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v116, v58, v57, v61 | v59, v62, v93);

  outlined destroy of BodyTrackingComponent?(v123, &_s17RealityFoundation10MeshBufferVys5SIMD2VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD2VySfGGMR);
  __swift_destroy_boxed_opaque_existential_1(&v94);
  v74 = v92;
  v73 = v93[0];
  v75 = v86;
  *&v94 = v87;
  *(&v94 + 1) = v86;
  v95 = v93[0];
  v96 = 0;
  v76 = v115;
  LOBYTE(v97) = v115;
  *(&v97 + 1) = *v114;
  DWORD1(v97) = *&v114[3];
  *(&v97 + 1) = v92;
  *&v98 = 0;
  BYTE8(v98) = 0;
  HIDWORD(v98) = *&v113[3];
  *(&v98 + 9) = *v113;
  v101 = 0;
  v102[0] = v87;
  v99 = 0u;
  v100 = 0u;
  v77 = v93[0];
  *a3 = v94;
  *(a3 + 16) = v77;
  v78 = v97;
  v79 = v98;
  v80 = v99;
  v81 = v100;
  *(a3 + 96) = v101;
  *(a3 + 64) = v80;
  *(a3 + 80) = v81;
  *(a3 + 32) = v78;
  *(a3 + 48) = v79;
  v102[1] = v75;
  v102[2] = v73;
  v103 = 0;
  LOBYTE(v104) = v76;
  HIDWORD(v104) = *&v114[3];
  *(&v104 + 1) = *v114;
  v105 = v74;
  v106 = 0;
  v107 = 0;
  *&v108[3] = *&v113[3];
  *v108 = *v113;
  v111 = 0;
  v110 = 0u;
  v109 = 0u;
  outlined init with copy of MeshDescriptor(&v94, v93);
  return outlined destroy of MeshDescriptor(v102);
}

uint64_t TesselatedShape.extractExtrusion(sweepCurve:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v6 = *v4;
  v7 = v4[1];
  v8 = *(*v4 + 16);
  if (v8 != *(v7 + 16))
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (!v8)
  {
    *(a2 + 96) = 0;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  v9 = result;
  v95 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation11MeshBuffersO10IdentifierV_AC0E12BufferErased_pTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  LOBYTE(v96) = 0;
  *(&v96 + 1) = 0;
  *&v97 = 0;
  BYTE8(v97) = -1;
  v98 = 0u;
  v99 = 0u;
  v100 = 0;
  *&v94 = 0x7845206570616853;
  *(&v94 + 1) = 0xEF6E6F6973757274;
  outlined init with copy of TesselatedShape(v4, v109);
  v10 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySays5SIMD2VySdGGAKG_17RealityFoundation13CurveExtruderV10ShapePointVs5NeverOTg504_s17g90Foundation15TesselatedShape33_958D9063BE5145611DD1DCE0DF8621CFLLV16extractExtrusion10sweepi51AA14MeshDescriptorVSgSaySo13simd_float4x4aG_tFAA0N8j4V0D5l3Vs5F16VySdG_ASt_tXEfU_AM0pK004_958rstuV2CFLLVTf1cn_nTf4ng_n(v6, v7, v4);
  outlined destroy of TesselatedShape(v4);
  v11 = v4[3];

  v12 = specialized CurveExtruder.init(shape:accumulatedOutlineIndexCount:)(v10, v11);
  v15 = *(v9 + 16);
  v16 = *(v12 + 2);
  v3 = v16 * v15;
  if ((v16 * v15) >> 64 != (v16 * v15) >> 63)
  {
    goto LABEL_25;
  }

  v17 = v14;
  v18 = *(v14 + 16);
  v74 = (v15 - 1) * v18;
  if (((v15 - 1) * v18) >> 64 != v74 >> 63)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    v19 = v12;
    v20 = v13;
    v70 = v15;

    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
      v21 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v21 + 16) = v3;
    }

    else
    {
      v21 = MEMORY[0x1E69E7CC0];
    }

    v73 = v21;
    v71 = a2;
    *&v80 = v21 + 32;
    *(&v80 + 1) = v3;

    v22 = _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCs5SIMD3VySfG_Tt1g50158_s17RealityFoundation15TesselatedShape33_958D9063BE5145611DD1DCE0DF8621CFLLV16extractExtrusion10sweepCurveAA14MeshDescriptorVSgSaySo13simd_float4x4aG_tFySrys5F32VySfGGz_SiztXEfU0_yAPz_SiztXEfU_Si0H10Foundation0S8ExtruderVSryAGGSaySo13simd_float4x4aGAI0uV0VTf1nc_nTf4nngngn_n(v3, v3, v19, v20, v17, &v80, v9, &v94);

    _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5SIMD3VySfG_AA05ArrayD0VyAJGTt1g5(v22, v111);
    v77 = v19;
    v78 = v9;
    v75 = v17;
    v76 = v20;
    if (one-time initialization token for tangents == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  swift_once();
LABEL_11:
  v23 = static MeshBuffers.tangents;
  v24 = unk_1EBEAD0E0;
  v25 = word_1EBEAD0E8;
  v26 = HIBYTE(word_1EBEAD0E8);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD3VySfGGMd, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD3VySfGGMR);
  *(&v102 + 1) = v72;
  *&v103 = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
  *&v101 = swift_allocObject();
  swift_bridgeObjectRetain_n();
  outlined init with copy of [String : String](v111, v109, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
  if (v26)
  {
    v27 = 256;
  }

  else
  {
    v27 = 0;
  }

  _s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLV_6bufferAFy_xGqd___AA0cD0VyxGtc7ElementQyd__RszAA0cD8SemanticRd__lufCs5SIMD4VySfG_AA0C7BuffersO0P0Vy_AQGTt2B5(v23, v24, v27 | v25, v111);
  outlined init with take of BindableDataInternal(&v101, &v87);
  v28 = v95;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v79[0] = v28;
  v30 = *(&v88 + 1);
  v31 = __swift_mutable_project_boxed_opaque_existential_1(&v87, *(&v88 + 1));
  v32 = *(*(v30 - 8) + 64);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v35 = (&v70 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v36 + 16))(v35, v33);
  v37 = v35[5];
  v109[4] = v35[4];
  v109[5] = v37;
  v110[0] = v35[6];
  *(v110 + 9) = *(v35 + 105);
  v38 = v35[1];
  v109[0] = *v35;
  v109[1] = v38;
  v39 = v35[3];
  v109[2] = v35[2];
  v109[3] = v39;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v109, v23, v24, v27 | v25, isUniquelyReferenced_nonNull_native, v79);
  __swift_destroy_boxed_opaque_existential_1(&v87);

  outlined destroy of BodyTrackingComponent?(v111, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
  *&v95 = v79[0];
  v40 = v73;
  *(v73 + 16) = v3;

  _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5SIMD3VySfG_AA05ArrayD0VyAJGTt1g5(v40, v108);
  if (one-time initialization token for positions != -1)
  {
    swift_once();
  }

  v41 = static MeshBuffers.positions;
  v42 = word_1EBEAD0B8;
  v43 = HIBYTE(word_1EBEAD0B8);
  *(&v88 + 1) = v72;
  *&v89 = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
  *&v87 = swift_allocObject();
  swift_bridgeObjectRetain_n();
  outlined init with copy of [String : String](v108, &v101, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
  if (v43)
  {
    v44 = 256;
  }

  else
  {
    v44 = 0;
  }

  _s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLV_6bufferAFy_xGqd___AA0cD0VyxGtc7ElementQyd__RszAA0cD8SemanticRd__lufCs5SIMD4VySfG_AA0C7BuffersO0P0Vy_AQGTt2B5(v41, *(&v41 + 1), v44 | v42, v108);
  outlined init with take of BindableDataInternal(&v87, &v80);
  v45 = v95;
  v46 = swift_isUniquelyReferenced_nonNull_native();
  v79[0] = v45;
  v47 = *(&v81 + 1);
  v48 = __swift_mutable_project_boxed_opaque_existential_1(&v80, *(&v81 + 1));
  v49 = *(*(v47 - 8) + 64);
  v50 = MEMORY[0x1EEE9AC00](v48);
  v52 = (&v70 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v53 + 16))(v52, v50);
  v54 = v52[5];
  v105 = v52[4];
  v106 = v54;
  v107[0] = v52[6];
  *(v107 + 9) = *(v52 + 105);
  v55 = v52[1];
  v101 = *v52;
  v102 = v55;
  v56 = v52[3];
  v103 = v52[2];
  v104 = v56;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v101, v41, *(&v41 + 1), v44 | v42, v46, v79);

  outlined destroy of BodyTrackingComponent?(v108, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
  result = __swift_destroy_boxed_opaque_existential_1(&v80);
  *&v95 = v79[0];
  v57 = v74;
  if (v74 < 0)
  {
    __break(1u);
  }

  else
  {
    v58 = v77;

    v59 = v75;

    v60 = MEMORY[0x1E69E7CC0];
    if (v57)
    {
      v61 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v61 + 16) = v57;
    }

    else
    {
      v61 = MEMORY[0x1E69E7CC0];
    }

    v62 = v71;
    specialized CurveExtruder.populate(indexBuffer:curveLength:)(v61 + 32, v57, v70, v58, v59);
    *(v61 + 16) = v57;
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    outlined consume of MeshDescriptor.Primitives?(*(&v96 + 1), v97, BYTE8(v97));
    *(&v96 + 1) = v60;
    *&v97 = v61;
    BYTE8(v97) = 2;
    v63 = v98;
    v64 = v99;
    v84 = v98;
    v85 = v99;
    v65 = v100;
    v86 = v100;
    v66 = v94;
    v67 = v95;
    v80 = v94;
    v81 = v95;
    v68 = v97;
    v69 = v96;
    v82 = v96;
    v83 = v97;
    *v62 = v94;
    *(v62 + 16) = v67;
    *(v62 + 96) = v65;
    *(v62 + 64) = v63;
    *(v62 + 80) = v64;
    *(v62 + 32) = v69;
    *(v62 + 48) = v68;
    v91 = v63;
    v92 = v64;
    v93 = v65;
    v87 = v66;
    v88 = v67;
    v89 = v69;
    v90 = v68;
    outlined init with copy of MeshDescriptor(&v80, v79);
    return outlined destroy of MeshDescriptor(&v87);
  }

  return result;
}

uint64_t TesselatedShape.extractAll(extrusionMethod:chamferMode:materialAssignment:)@<X0>(uint64_t *a1@<X0>, unsigned __int8 *a2@<X1>, unsigned int *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *a2;
  v60 = *a3;
  v9 = a3[2];
  v57 = a3[1];
  v11 = a3[3];
  v10 = a3[4];
  v189 = 0;
  v188 = 0;
  v187 = 0;
  v186 = 0;
  *&v183 = v6;
  BYTE8(v183) = v7;
  MeshResource.ShapeExtrusionOptions.ExtrusionMethod.extractSweepCurve()();
  v109 = v12;
  v58 = v10;
  v56 = v11;
  if (v7)
  {
    if (*(v6 + 16) > 1uLL)
    {
LABEL_3:
      TesselatedShape.extractExtrusion(sweepCurve:)(v12, &v180);
      v13 = *(&v180 + 1);
      v92 = v180;
      v110 = *(&v181 + 1);
      v105 = v181;
      v14 = v182[0];
      v78 = *(v182 + 1) | ((*(v182 + 5) | (BYTE7(v182[0]) << 16)) << 32);
      v104 = *(&v182[0] + 1);
      v103 = *&v182[1];
      v101 = *&v182[2];
      v102 = *(&v182[1] + 1);
      v99 = *&v182[3];
      v100 = *(&v182[2] + 1);
      v97 = *&v182[4];
      v98 = *(&v182[3] + 1);
      v183 = 0u;
      v184 = 0u;
      memset(v185, 0, sizeof(v185));
      outlined destroy of BodyTrackingComponent?(&v183, &_s17RealityFoundation14MeshDescriptorVSgMd, &_s17RealityFoundation14MeshDescriptorVSgMR);
      v188 = v14;
      goto LABEL_6;
    }
  }

  else if (COERCE_FLOAT(v6 & 0x7FFFFFFF) > 0.00001)
  {
    goto LABEL_3;
  }

  v92 = 0;
  v13 = 0;
  v105 = 0;
  v110 = 0;
  v78 = 0;
  v104 = 0;
  v103 = 0;
  v101 = 0;
  v102 = 0;
  v99 = 0;
  v100 = 0;
  v97 = 0;
  v98 = 0;
LABEL_6:
  v79 = v13;
  if (*(v4 + 72))
  {
    TesselatedShape.extractPreInset(frontFace:sweepCurve:)(1, v109, &v183);
    v111 = v183;
    v114 = v184;
    v15 = v185[0];
    v77 = *&v185[1] | ((*&v185[5] | (v185[7] << 16)) << 32);
    v95 = *&v185[8];
    v96 = *&v185[24];
    v93 = *&v185[40];
    v94 = *&v185[56];
    v180 = 0u;
    v181 = 0u;
    memset(v182, 0, 72);
    outlined destroy of BodyTrackingComponent?(&v180, &_s17RealityFoundation14MeshDescriptorVSgMd, &_s17RealityFoundation14MeshDescriptorVSgMR);
    v190 = v15;
    TesselatedShape.extractPreInset(frontFace:sweepCurve:)(0, v109, &v170);
    v106 = v170;
    v107 = v171;
    v16 = v172;
    v72 = v173 | ((v174 | (v175 << 16)) << 32);
    v83 = v176;
    v84 = v177;
    v81 = v178;
    v82 = v179;
    v183 = 0u;
    v184 = 0u;
    memset(v185, 0, sizeof(v185));
    outlined destroy of BodyTrackingComponent?(&v183, &_s17RealityFoundation14MeshDescriptorVSgMd, &_s17RealityFoundation14MeshDescriptorVSgMR);
    v18 = v111;
    v17 = v114;
    v19 = 0;
    v90 = 0;
    v91 = 0;
    v108 = 0;
    v59 = 0;
    v70 = 0;
    v71 = 0;
    v20 = 0;
    v75 = 0;
    v76 = 0;
    v73 = 0;
    v74 = 0;
    v88 = 0;
    v89 = 0;
    v86 = 0;
    v87 = 0;
    v85 = 0;
    v68 = 0;
    v69 = 0;
    v66 = 0;
    v67 = 0;
    v64 = 0;
    v65 = 0;
    v62 = 0;
    v63 = 0;
    v61 = 0;
    v189 = v16;
    v21 = v13;
  }

  else
  {
    if ((v8 | 2) == 2)
    {
      TesselatedShape.extractPostInset(frontFace:sweepCurve:)(1, v109, &v183);
      v112 = v183;
      v115 = v184;
      v22 = v185[0];
      v77 = *&v185[1] | ((*&v185[5] | (v185[7] << 16)) << 32);
      v95 = *&v185[8];
      v96 = *&v185[24];
      v93 = *&v185[40];
      v94 = *&v185[56];
      v180 = 0u;
      v181 = 0u;
      memset(v182, 0, 72);
      outlined destroy of BodyTrackingComponent?(&v180, &_s17RealityFoundation14MeshDescriptorVSgMd, &_s17RealityFoundation14MeshDescriptorVSgMR);
      v190 = v22;
      TesselatedShape.extractJoinerPatch(frontFace:sweepCurve:)(1, v109, &v170);
      v108 = *(&v170 + 1);
      v90 = v170;
      v80 = *(&v171 + 1);
      v91 = v171;
      v23 = v172;
      v75 = v176;
      v76 = v173 | ((v174 | (v175 << 16)) << 32);
      v73 = v177;
      v74 = *(&v176 + 1);
      v88 = v178;
      v89 = *(&v177 + 1);
      v86 = v179;
      v87 = *(&v178 + 1);
      v85 = *(&v179 + 1);
      v183 = 0u;
      v184 = 0u;
      memset(v185, 0, sizeof(v185));
      outlined destroy of BodyTrackingComponent?(&v183, &_s17RealityFoundation14MeshDescriptorVSgMd, &_s17RealityFoundation14MeshDescriptorVSgMR);
      v187 = v23;
    }

    else
    {
      TesselatedShape.extractPreInset(frontFace:sweepCurve:)(1, v109, &v180);
      v112 = v180;
      v115 = v181;
      v24 = v182[0];
      v77 = *(v182 + 1) | ((*(v182 + 5) | (BYTE7(v182[0]) << 16)) << 32);
      v95 = *(v182 + 8);
      v96 = *(&v182[1] + 8);
      v93 = *(&v182[2] + 8);
      v94 = *(&v182[3] + 8);
      v183 = 0u;
      v184 = 0u;
      memset(v185, 0, sizeof(v185));
      outlined destroy of BodyTrackingComponent?(&v183, &_s17RealityFoundation14MeshDescriptorVSgMd, &_s17RealityFoundation14MeshDescriptorVSgMR);
      v80 = 0;
      v90 = 0;
      v91 = 0;
      v108 = 0;
      v75 = 0;
      v76 = 0;
      v73 = 0;
      v74 = 0;
      v88 = 0;
      v89 = 0;
      v86 = 0;
      v87 = 0;
      v85 = 0;
      v190 = v24;
    }

    if ((v8 - 1) > 1)
    {
      TesselatedShape.extractPreInset(frontFace:sweepCurve:)(0, v109, &v180);
      v106 = v180;
      v107 = v181;
      v16 = v182[0];
      v72 = *(v182 + 1) | ((*(v182 + 5) | (BYTE7(v182[0]) << 16)) << 32);
      v83 = *(v182 + 8);
      v84 = *(&v182[1] + 8);
      v81 = *(&v182[2] + 8);
      v82 = *(&v182[3] + 8);
      v183 = 0u;
      v184 = 0u;
      v185[0] = v189;
      memset(&v185[1], 0, 71);
      outlined destroy of BodyTrackingComponent?(&v183, &_s17RealityFoundation14MeshDescriptorVSgMd, &_s17RealityFoundation14MeshDescriptorVSgMR);
      v59 = 0;
      v70 = 0;
      v71 = 0;
      v20 = 0;
      v68 = 0;
      v69 = 0;
      v66 = 0;
      v67 = 0;
      v64 = 0;
      v65 = 0;
      v62 = 0;
      v63 = 0;
      v61 = 0;
      v189 = v16;
    }

    else
    {
      TesselatedShape.extractPostInset(frontFace:sweepCurve:)(0, v109, &v183);
      v106 = v183;
      v107 = v184;
      v16 = v185[0];
      v72 = *&v185[1] | ((*&v185[5] | (v185[7] << 16)) << 32);
      v83 = *&v185[8];
      v84 = *&v185[24];
      v81 = *&v185[40];
      v82 = *&v185[56];
      v180 = 0u;
      v181 = 0u;
      LOBYTE(v182[0]) = v189;
      memset(v182 + 1, 0, 64);
      *&v182[4] = 0;
      outlined destroy of BodyTrackingComponent?(&v180, &_s17RealityFoundation14MeshDescriptorVSgMd, &_s17RealityFoundation14MeshDescriptorVSgMR);
      v189 = v16;
      TesselatedShape.extractJoinerPatch(frontFace:sweepCurve:)(0, v109, &v170);
      v70 = v170;
      v59 = *(&v171 + 1);
      v71 = v171;
      v25 = v172;
      v68 = v176;
      v69 = v173 | ((v174 | (v175 << 16)) << 32);
      v66 = v177;
      v67 = *(&v176 + 1);
      v64 = v178;
      v65 = *(&v177 + 1);
      v62 = v179;
      v63 = *(&v178 + 1);
      v61 = *(&v179 + 1);
      v183 = 0u;
      v184 = 0u;
      v185[0] = v186;
      memset(&v185[1], 0, 71);
      v20 = *(&v170 + 1);
      outlined destroy of BodyTrackingComponent?(&v183, &_s17RealityFoundation14MeshDescriptorVSgMd, &_s17RealityFoundation14MeshDescriptorVSgMR);
      v186 = v25;
    }

    v21 = v13;
    v19 = v80;
    v18 = v112;
    v17 = v115;
  }

  v113 = v18;
  v116 = v17;
  v26 = *(&v18 + 1);
  v27 = *(&v17 + 1);
  if (*(&v18 + 1))
  {
    outlined consume of MeshDescriptor.Materials(*(&v17 + 1), v190);
    v190 = 0;
    v27 = v60;
  }

  v28 = *(&v107 + 1);
  if (*(&v106 + 1))
  {
    outlined consume of MeshDescriptor.Materials(*(&v107 + 1), v16 & 1);
    v189 = 0;
    v28 = v57;
  }

  v29 = v110;
  if (v21)
  {
    outlined consume of MeshDescriptor.Materials(v110, v188);
    v188 = 0;
    v29 = v9;
  }

  if (v108)
  {
    outlined consume of MeshDescriptor.Materials(v19, v187);
    v187 = 0;
    v19 = v56;
  }

  if (v20)
  {
    outlined consume of MeshDescriptor.Materials(v59, v186);
    v186 = 0;
    v30 = v58;
  }

  else
  {
    v30 = v59;
  }

  *&v117 = v113;
  *(&v117 + 1) = v26;
  *&v118 = v116;
  *(&v118 + 1) = v27;
  v119[0] = v190;
  v119[7] = BYTE6(v77);
  *&v119[5] = WORD2(v77);
  *&v119[1] = v77;
  *&v119[24] = v96;
  *&v119[8] = v95;
  *&v119[56] = v94;
  *&v119[40] = v93;
  v120 = v106;
  *&v121 = v107;
  *(&v121 + 1) = v28;
  v122[0] = v189;
  v122[7] = BYTE6(v72);
  *&v122[5] = WORD2(v72);
  *&v122[1] = v72;
  *&v122[24] = v84;
  *&v122[8] = v83;
  *&v122[56] = v82;
  *&v122[40] = v81;
  *&v123 = v92;
  *(&v123 + 1) = v21;
  *&v124 = v105;
  *(&v124 + 1) = v29;
  v55 = v188;
  LOBYTE(v125) = v188;
  BYTE7(v125) = BYTE6(v78);
  *(&v125 + 5) = WORD2(v78);
  *(&v125 + 1) = v78;
  *(&v125 + 1) = v104;
  *&v126 = v103;
  *(&v126 + 1) = v102;
  *&v127 = v101;
  *(&v127 + 1) = v100;
  *&v128 = v99;
  *(&v128 + 1) = v98;
  v129 = v97;
  *&v130 = v90;
  *(&v130 + 1) = v108;
  *&v131 = v91;
  *(&v131 + 1) = v19;
  v54 = v187;
  LOBYTE(v132) = v187;
  BYTE7(v132) = BYTE6(v76);
  *(&v132 + 5) = WORD2(v76);
  *(&v132 + 1) = v76;
  *(&v132 + 1) = v75;
  *&v133 = v74;
  *(&v133 + 1) = v73;
  *&v134 = v89;
  *(&v134 + 1) = v88;
  *&v135 = v87;
  *(&v135 + 1) = v86;
  v136 = v85;
  *&v137 = v70;
  *(&v137 + 1) = v20;
  *&v138 = v71;
  *(&v138 + 1) = v30;
  LOBYTE(v139) = v186;
  v31 = v186;
  *(a4 + 96) = *(&v94 + 1);
  v32 = v131;
  *(a4 + 312) = v130;
  *(a4 + 328) = v32;
  v33 = v132;
  v34 = v133;
  v35 = v135;
  *(a4 + 376) = v134;
  *(a4 + 392) = v35;
  *(a4 + 344) = v33;
  *(a4 + 360) = v34;
  *(&v139 + 5) = WORD2(v69);
  *(&v139 + 1) = v69;
  *(&v142 + 1) = v62;
  v143 = v61;
  v36 = v118;
  *a4 = v117;
  *(a4 + 16) = v36;
  v37 = *v119;
  v38 = *&v119[16];
  v39 = *&v119[48];
  *(a4 + 64) = *&v119[32];
  *(a4 + 80) = v39;
  *(a4 + 32) = v37;
  *(a4 + 48) = v38;
  v40 = v120;
  v41 = v121;
  v42 = *&v122[16];
  *(a4 + 136) = *v122;
  *(a4 + 120) = v41;
  v43 = *&v122[32];
  v44 = *&v122[48];
  *(a4 + 200) = *&v122[64];
  *(a4 + 304) = v129;
  *(a4 + 408) = v136;
  *(a4 + 512) = v143;
  BYTE7(v139) = BYTE6(v69);
  *(&v139 + 1) = v68;
  *&v140 = v67;
  *(&v140 + 1) = v66;
  *&v141 = v65;
  *(&v141 + 1) = v64;
  *&v142 = v63;
  *(a4 + 104) = v40;
  *(a4 + 184) = v44;
  *(a4 + 168) = v43;
  *(a4 + 152) = v42;
  v45 = v124;
  *(a4 + 208) = v123;
  *(a4 + 224) = v45;
  v46 = v125;
  v47 = v126;
  v48 = v128;
  *(a4 + 272) = v127;
  *(a4 + 288) = v48;
  *(a4 + 240) = v46;
  *(a4 + 256) = v47;
  v49 = v138;
  *(a4 + 416) = v137;
  *(a4 + 432) = v49;
  v50 = v139;
  v51 = v140;
  v52 = v142;
  *(a4 + 480) = v141;
  *(a4 + 496) = v52;
  *(a4 + 448) = v50;
  *(a4 + 464) = v51;
  v144[0] = v70;
  v144[1] = v20;
  v144[2] = v71;
  v144[3] = v30;
  v145 = v31;
  v148 = BYTE6(v69);
  v147 = WORD2(v69);
  v146 = v69;
  v149 = v68;
  v150 = v67;
  v151 = v66;
  v152 = v65;
  v153 = v64;
  v154 = v63;
  v155 = v62;
  v156 = v61;
  outlined init with copy of [String : String](&v117, &v183, &_s17RealityFoundation14MeshDescriptorVSgMd, &_s17RealityFoundation14MeshDescriptorVSgMR);
  outlined init with copy of [String : String](&v120, &v183, &_s17RealityFoundation14MeshDescriptorVSgMd, &_s17RealityFoundation14MeshDescriptorVSgMR);
  outlined init with copy of [String : String](&v123, &v183, &_s17RealityFoundation14MeshDescriptorVSgMd, &_s17RealityFoundation14MeshDescriptorVSgMR);
  outlined init with copy of [String : String](&v130, &v183, &_s17RealityFoundation14MeshDescriptorVSgMd, &_s17RealityFoundation14MeshDescriptorVSgMR);
  outlined init with copy of [String : String](&v137, &v183, &_s17RealityFoundation14MeshDescriptorVSgMd, &_s17RealityFoundation14MeshDescriptorVSgMR);
  outlined destroy of BodyTrackingComponent?(v144, &_s17RealityFoundation14MeshDescriptorVSgMd, &_s17RealityFoundation14MeshDescriptorVSgMR);
  v157[0] = v90;
  v157[1] = v108;
  v157[2] = v91;
  v157[3] = v19;
  v158 = v54;
  v161 = BYTE6(v76);
  v160 = WORD2(v76);
  v159 = v76;
  v162 = v75;
  v163 = v74;
  v164 = v73;
  v165 = v89;
  v166 = v88;
  v167 = v87;
  v168 = v86;
  v169 = v85;
  outlined destroy of BodyTrackingComponent?(v157, &_s17RealityFoundation14MeshDescriptorVSgMd, &_s17RealityFoundation14MeshDescriptorVSgMR);
  *&v170 = v92;
  *(&v170 + 1) = v79;
  *&v171 = v105;
  *(&v171 + 1) = v29;
  v172 = v55;
  v175 = BYTE6(v78);
  v174 = WORD2(v78);
  v173 = v78;
  *&v176 = v104;
  *(&v176 + 1) = v103;
  *&v177 = v102;
  *(&v177 + 1) = v101;
  *&v178 = v100;
  *(&v178 + 1) = v99;
  *&v179 = v98;
  *(&v179 + 1) = v97;
  outlined destroy of BodyTrackingComponent?(&v170, &_s17RealityFoundation14MeshDescriptorVSgMd, &_s17RealityFoundation14MeshDescriptorVSgMR);
  v180 = v106;
  *&v181 = v107;
  *(&v181 + 1) = v28;
  LOBYTE(v182[0]) = v189;
  BYTE7(v182[0]) = BYTE6(v72);
  *(v182 + 5) = WORD2(v72);
  *(v182 + 1) = v72;
  *(v182 + 8) = v83;
  *(&v182[1] + 8) = v84;
  *(&v182[2] + 8) = v81;
  *(&v182[3] + 8) = v82;
  outlined destroy of BodyTrackingComponent?(&v180, &_s17RealityFoundation14MeshDescriptorVSgMd, &_s17RealityFoundation14MeshDescriptorVSgMR);
  *&v183 = v113;
  *(&v183 + 1) = v26;
  *&v184 = v116;
  *(&v184 + 1) = v27;
  v185[0] = v190;
  v185[7] = BYTE6(v77);
  *&v185[5] = WORD2(v77);
  *&v185[1] = v77;
  *&v185[8] = v95;
  *&v185[24] = v96;
  *&v185[40] = v93;
  *&v185[56] = v94;
  return outlined destroy of BodyTrackingComponent?(&v183, &_s17RealityFoundation14MeshDescriptorVSgMd, &_s17RealityFoundation14MeshDescriptorVSgMR);
}

void one-time initialization function for defaultChamferProfile()
{
  v0 = CGPathCreateMutable();
  CGMutablePathRef.addArc(center:radius:startAngle:endAngle:clockwise:transform:)();

  defaultChamferProfile = v0;
}

uint64_t $defer #1 () in static ExtrudedShapeDescriptor.compile(shapes:instances:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *(*a1 + 16);

  if (v4)
  {
    v6 = 0;
    while (v6 < *(v3 + 16))
    {
      v7 = v6 + 1;
      v8 = *(v3 + 32 + 8 * v6);
      result = RERelease();
      v6 = v7;
      if (v4 == v7)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_5:

  v9 = *a2;
  if (v9)
  {
    v10 = *(v9 + 16);

    if (v10)
    {
      v11 = 0;
      while (v11 < *(v9 + 16))
      {
        v12 = v11 + 1;
        v13 = *(v9 + 32 + 8 * v11);
        result = RERelease();
        v11 = v12;
        if (v10 == v12)
        {
          goto LABEL_10;
        }
      }

LABEL_15:
      __break(1u);
      return result;
    }

LABEL_10:
  }

  return result;
}

void closure #2 in extrude(path:options:)(unint64_t *a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, int64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a1;
  v12 = a1[1];
  v13 = *a2;
  v14 = *(a3 + 56);
  *&v17 = *(a3 + 64);

  specialized TesselatedShape.init(shape:chamferProfile:chamferRadius:resolution:triangulatePreInset:)(v11, v12, v13, &v17, a4, v22, v14);
  if (v6)
  {
    *a5 = v6;
  }

  else
  {
    v15 = *(a3 + 8);
    v20 = *a3;
    v21 = v15;
    v19 = *(a3 + 80);
    v16 = *(a3 + 100);
    v17 = *(a3 + 84);
    v18 = v16;
    outlined copy of MeshResource.ShapeExtrusionOptions.ExtrusionMethod(v20, v15);
    TesselatedShape.extractAll(extrusionMethod:chamferMode:materialAssignment:)(&v20, &v19, &v17, a6);
    outlined destroy of TesselatedShape(v22);
    outlined consume of MeshResource.ShapeExtrusionOptions.ExtrusionMethod(v20, v21);
  }
}

unint64_t lazy protocol witness table accessor for type ShapeExtrusionError and conformance ShapeExtrusionError()
{
  result = lazy protocol witness table cache variable for type ShapeExtrusionError and conformance ShapeExtrusionError;
  if (!lazy protocol witness table cache variable for type ShapeExtrusionError and conformance ShapeExtrusionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShapeExtrusionError and conformance ShapeExtrusionError);
  }

  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(void *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_geom_collection_u, 0x1E69A2828);
  lazy protocol witness table accessor for type OS_geom_collection_u and conformance OS_geom_collection_u(&lazy protocol witness table cache variable for type OS_geom_collection_u and conformance OS_geom_collection_u, &lazy cache variable for type metadata for OS_geom_collection_u, 0x1E69A2828);
  result = dispatch thunk of Collection.startIndex.getter();
  v8 = v15[0];
  v16 = v15[0];
  v17 = v3;
  if (!a2)
  {
LABEL_10:
    a3 = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
LABEL_13:
    *a1 = v3;
    a1[1] = v8;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v13 = a3;
    v14 = a1;
    v9 = 0;
    v10 = a3 - 1;
    while (1)
    {
      dispatch thunk of Collection.endIndex.getter();
      v8 = v16;
      if (v16 == v15[0])
      {
        a3 = v9;
        a1 = v14;
        goto LABEL_13;
      }

      v11 = dispatch thunk of Collection.subscript.read();
      a1 = *v12;
      v11(v15, 0);
      v15[0] = v3;
      dispatch thunk of Collection.index(after:)();
      *(a2 + 4 * v9) = a1;
      if (v10 == v9)
      {
        break;
      }

      if (__OFADD__(++v9, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    v8 = v16;
    a3 = v13;
    a1 = v14;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt32V_Tt1gq5(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt32VGMd, &_ss23_ContiguousArrayStorageCys6UInt32VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

uint64_t specialized RandomAccessCollection<>.distance(from:to:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_geom_collection_2d, 0x1E69A2818);
  lazy protocol witness table accessor for type OS_geom_collection_u and conformance OS_geom_collection_u(&lazy protocol witness table cache variable for type OS_geom_collection_2d and conformance OS_geom_collection_2d, &lazy cache variable for type metadata for OS_geom_collection_2d, 0x1E69A2818);
  dispatch thunk of Collection.startIndex.getter();
  result = dispatch thunk of Collection.endIndex.getter();
  if (v7 > a1 || v6 < a1)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  dispatch thunk of Collection.startIndex.getter();
  result = dispatch thunk of Collection.endIndex.getter();
  if (v7 > a2 || v6 < a2)
  {
    goto LABEL_10;
  }

  result = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_11:
    __break(1u);
  }

  return result;
}

uint64_t _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySays5SIMD2VySdGGAKG_17RealityFoundation13CurveExtruderV10ShapePointVs5NeverOTg504_s17g90Foundation15TesselatedShape33_958D9063BE5145611DD1DCE0DF8621CFLLV16extractExtrusion10sweepi51AA14MeshDescriptorVSgSaySo13simd_float4x4aG_tFAA0N8j4V0D5l3Vs5F16VySdG_ASt_tXEfU_AM0pK004_958rstuV2CFLLVTf1cn_nTf4ng_n(uint64_t a1, uint64_t a2, float64x2_t *a3)
{
  v6 = *(a1 + 16);
  v7 = *(a2 + 16);
  if (v7 >= v6)
  {
    v8 = *(a1 + 16);
  }

  else
  {
    v8 = *(a2 + 16);
  }

  v51 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
  result = v51;
  v50 = a3;
  v48 = a2;
  v46 = a1;
  if (v8)
  {
    v10 = (a1 + 32);
    v11 = (a2 + 32);
    v12 = a3[5];
    v13 = vsubq_f64(a3[6], v12);
    if ((*&v13.f64[1] & 0xFFFFFFFFFFFFFLL) != 0)
    {
      v14 = v13.f64[0];
    }

    else
    {
      v14 = v13.f64[1];
    }

    if ((~*&v13.f64[1] & 0x7FF0000000000000) != 0)
    {
      v14 = v13.f64[1];
    }

    if (v13.f64[1] >= v13.f64[0])
    {
      v13.f64[0] = v14;
    }

    v15 = vdupq_lane_s64(*&v13.f64[0], 0);
    v16 = v8;
    v17 = v6;
    v18 = v7;
    v19 = v6;
    v20 = v7;
    while (v17)
    {
      if (!v18)
      {
        goto LABEL_36;
      }

      v21 = *v10;
      v22 = *v11;
      v52 = result;
      v24 = *(result + 16);
      v23 = *(result + 24);
      if (v24 >= v23 >> 1)
      {
        v42 = v20;
        v44 = v19;
        v38 = v15;
        v40 = v12;
        v36 = *v11;
        v37 = *v10;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
        v22 = v36;
        v21 = v37;
        v15 = v38;
        v12 = v40;
        v20 = v42;
        v19 = v44;
        result = v52;
      }

      *(result + 16) = v24 + 1;
      v25 = result + 48 * v24;
      --v18;
      *(v25 + 32) = v21;
      *(v25 + 48) = v22;
      *(v25 + 64) = vdivq_f64(vsubq_f64(v21, v12), v15);
      --v17;
      ++v11;
      ++v10;
      if (!--v16)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v19 = v6;
  v20 = v7;
LABEL_20:
  if (v19 > v20)
  {
    v26 = v46 + 32;
    v27 = v48 + 32;
    while (v8 < v19)
    {
      v28 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_38;
      }

      if (v20 != v8)
      {
        if (v8 >= v20)
        {
          goto LABEL_39;
        }

        v29 = v50[5];
        v30 = vsubq_f64(v50[6], v29);
        if (v30.f64[1] >= v30.f64[0])
        {
          if ((*&v30.f64[1] & 0xFFFFFFFFFFFFFLL) == 0)
          {
            v30.f64[0] = v30.f64[1];
          }

          if ((~*&v30.f64[1] & 0x7FF0000000000000) != 0)
          {
            v30.f64[0] = v30.f64[1];
          }
        }

        v31 = *(v26 + 16 * v8);
        v32 = *(v27 + 16 * v8);
        v53 = result;
        v34 = *(result + 16);
        v33 = *(result + 24);
        if (v34 >= v33 >> 1)
        {
          v43 = v20;
          v45 = v19;
          v47 = v30.f64[0];
          v49 = v50[5];
          v39 = *(v27 + 16 * v8);
          v41 = *(v26 + 16 * v8);
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1);
          v32 = v39;
          v31 = v41;
          v30.f64[0] = v47;
          v29 = v49;
          v20 = v43;
          v19 = v45;
          result = v53;
        }

        *(result + 16) = v34 + 1;
        v35 = result + 48 * v34;
        *(v35 + 32) = v31;
        *(v35 + 48) = v32;
        *(v35 + 64) = vdivq_f64(vsubq_f64(v31, v29), vdupq_lane_s64(*&v30.f64[0], 0));
        ++v8;
        if (v28 != v19)
        {
          continue;
        }
      }

      return result;
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
  }

  return result;
}

uint64_t specialized static ExtrudedShapeDescriptor.compile(shapes:instances:)(uint64_t result, uint64_t a2)
{
  v2 = MEMORY[0x1E69E7CC0];
  v85 = 0;
  v86[0] = MEMORY[0x1E69E7CC0];
  v64 = *(result + 16);
  if (v64)
  {
    v3 = 0;
    v65 = result + 32;
    v4 = MEMORY[0x1E69E7CC0];
    v87 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v62 = v4;
      v67 = v3;
      memcpy(__dst, (v65 + 520 * v3), sizeof(__dst));
      v5 = ExtrudedShapeDescriptor.allDescriptors.getter();
      v6 = *(v5 + 2);
      if (v6)
      {
        v83 = v2;
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
        if (*(v5 + 2))
        {
          v7 = 0;
          v8 = v83;
          v9 = 32;
          while (1)
          {
            v10 = *&v5[v9];
            v11 = *&v5[v9 + 32];
            v81[1] = *&v5[v9 + 16];
            v81[2] = v11;
            v81[0] = v10;
            v12 = *&v5[v9 + 48];
            v13 = *&v5[v9 + 64];
            v14 = *&v5[v9 + 80];
            v82 = *&v5[v9 + 96];
            v81[4] = v13;
            v81[5] = v14;
            v81[3] = v12;
            v74 = *&v5[v9 + 48];
            v75 = *&v5[v9 + 64];
            v76 = *&v5[v9 + 80];
            v77 = *&v5[v9 + 96];
            v71 = *&v5[v9];
            v72 = *&v5[v9 + 16];
            v73 = *&v5[v9 + 32];
            outlined init with copy of MeshDescriptor(v81, v70);
            MeshDescriptor.makeGeomMesh()(v78);
            v15 = v78[0];
            if (v80)
            {
              break;
            }

            result = outlined destroy of MeshDescriptor(v81);
            v83 = v8;
            v17 = v8[2];
            v16 = v8[3];
            if (v17 >= v16 >> 1)
            {
              result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
              v8 = v83;
            }

            v8[2] = v17 + 1;
            v8[v17 + 4] = v15;
            if (v6 - 1 == v7)
            {

              goto LABEL_16;
            }

            v9 += 104;
            if (++v7 >= *(v5 + 2))
            {
              goto LABEL_70;
            }
          }

          v33 = v78[1];
          v34 = v79;

          *&v71 = v15;
          *(&v71 + 1) = v33;
          LOWORD(v72) = v34;
          lazy protocol witness table accessor for type GeomMeshError and conformance GeomMeshError();
          v35 = &type metadata for GeomMeshError;
          swift_willThrowTypedImpl();
          v36 = v71;
          v37 = v72;
          swift_allocError();
          *v38 = v36;
          *(v38 + 16) = v37;
          outlined destroy of MeshDescriptor(v81);

          $defer #1 () in static ExtrudedShapeDescriptor.compile(shapes:instances:)(v86, &v85);
LABEL_36:

          return v35;
        }

LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
        return result;
      }

      v8 = v2;
LABEL_16:
      v4 = v62;
      v18 = *(v62 + 16);
      v19 = v8[2];
      v20 = v18 + v19;
      if (__OFADD__(v18, v19))
      {
        goto LABEL_73;
      }

      if (v20 < v18)
      {
        goto LABEL_74;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v87 + 2) + 1, 1, v87);
        v87 = result;
      }

      v22 = *(v87 + 2);
      v21 = *(v87 + 3);
      if (v22 >= v21 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v87);
        v87 = result;
      }

      v23 = v87;
      *(v87 + 2) = v22 + 1;
      v24 = &v23[16 * v22];
      *(v24 + 4) = v18;
      *(v24 + 5) = v20;
      v25 = v8[2];
      v26 = *(v62 + 16);
      v27 = v26 + v25;
      if (__OFADD__(v26, v25))
      {
        goto LABEL_75;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v27 <= *(v62 + 24) >> 1)
      {
        if (!v8[2])
        {
          goto LABEL_3;
        }
      }

      else
      {
        if (v26 <= v27)
        {
          v28 = v26 + v25;
        }

        else
        {
          v28 = v26;
        }

        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v28, 1, v62);
        v4 = result;
        if (!v8[2])
        {
LABEL_3:

          if (v25)
          {
            goto LABEL_76;
          }

          goto LABEL_4;
        }
      }

      v29 = *(v4 + 16);
      if ((*(v4 + 24) >> 1) - v29 < v25)
      {
        goto LABEL_77;
      }

      memcpy((v4 + 8 * v29 + 32), v8 + 4, 8 * v25);

      if (v25)
      {
        v30 = *(v4 + 16);
        v31 = __OFADD__(v30, v25);
        v32 = v30 + v25;
        if (v31)
        {
          goto LABEL_78;
        }

        *(v4 + 16) = v32;
      }

LABEL_4:
      v3 = v67 + 1;
      v86[0] = v4;
      if (v67 + 1 == v64)
      {
        goto LABEL_38;
      }
    }
  }

  v87 = MEMORY[0x1E69E7CC0];
  v4 = MEMORY[0x1E69E7CC0];
LABEL_38:
  v63 = v4;
  if (a2)
  {
    v85 = v2;
    v61 = *(a2 + 16);
    if (v61)
    {
      v39 = 0;
      v60 = a2 + 32;
      v58 = v87 + 32;
      v2 = MEMORY[0x1E69E7CC0];
      do
      {
        v40 = (v60 + 80 * v39);
        v41 = *v40;
        if (*(v87 + 2) <= v41)
        {
          goto LABEL_71;
        }

        v42 = &v58[16 * v41];
        v44 = *v42;
        v43 = v42[1];
        if (*v42 != v43)
        {
          if (v43 < v44)
          {
            goto LABEL_72;
          }

          v68 = v40[2];
          v69 = v40[1];
          v45 = v40[4];
          v66 = v40[3];
          if (v44 <= 0x100000000)
          {
            v46 = 0x100000000;
          }

          else
          {
            v46 = *v42;
          }

          v47 = *v42;
          while (v43 != v47)
          {
            if ((v44 & 0x8000000000000000) != 0)
            {
              goto LABEL_68;
            }

            if (v46 == v47)
            {
              goto LABEL_69;
            }

            result = REGeomInstanceCreate();
            if (!result)
            {
              goto LABEL_80;
            }

            if (!v2)
            {
              goto LABEL_79;
            }

            v48 = result;
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 16) + 1, 1, v2);
              v2 = result;
            }

            v50 = *(v2 + 16);
            v49 = *(v2 + 24);
            if (v50 >= v49 >> 1)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1, v2);
              v2 = result;
            }

            ++v47;
            *(v2 + 16) = v50 + 1;
            *(v2 + 8 * v50 + 32) = v48;
            v85 = v2;
            if (v43 == v47)
            {
              goto LABEL_41;
            }
          }

          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
          goto LABEL_70;
        }

LABEL_41:
        ;
      }

      while (++v39 != v61);
    }
  }

  else
  {
    v2 = v85;
  }

  REMeshCompileOptionsCreate();
  v51 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v51 + 120, __dst);
  v52 = __dst[3];
  v53 = __dst[4];
  __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
  v35 = (*(v53 + 32))(v52, v53);
  __swift_destroy_boxed_opaque_existential_1(__dst);
  v54 = *(v63 + 16);
  if (v2)
  {
    v55 = *(v2 + 16);
  }

  v56 = REAssetManagerMeshAssetCreateFromModelsAndSkeletonsWithOptionsNullable();
  if (!v56)
  {
    lazy protocol witness table accessor for type ShapeExtrusionError and conformance ShapeExtrusionError();
    swift_allocError();
    *v57 = 0xD00000000000003FLL;
    *(v57 + 8) = 0x80000001C18F09C0;
    *(v57 + 16) = 2;
    swift_willThrow();
    RERelease();

    $defer #1 () in static ExtrudedShapeDescriptor.compile(shapes:instances:)(v86, &v85);

    goto LABEL_36;
  }

  v35 = v56;
  RERelease();

  $defer #1 () in static ExtrudedShapeDescriptor.compile(shapes:instances:)(v86, &v85);

  return v35;
}

uint64_t specialized static TesselatedShape.endcapTransform(frontFace:sweepCurve:)(uint64_t result, float32x4_t *a2)
{
  v2 = a2[1].i64[0];
  if (result)
  {
    if (v2)
    {
      v3 = &a2[4 * v2];
      v4 = *(v3 - 2);
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = v3[1];
      return result;
    }

    __break(1u);
  }

  else if (v2)
  {
    v8 = vmlaq_f32(vmlaq_f32(vmlaq_f32(a2[2], 0, a2[3]), 0, a2[4]), 0, a2[5]).u64[0];
    __asm { FMOV            V7.4S, #-1.0 }

    return result;
  }

  __break(1u);
  return result;
}

uint64_t _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCs5SIMD2VySfG_Tt1g50229_s17RealityFoundation15TesselatedShape33_958D9063BE5145611DD1DCE0DF8621CFLLV16extractExtrusion10sweepCurveAA14MeshDescriptorVSgSaySo13simd_float4x4aG_tFySrys5SIMD3VySfGGz_SiztXEfU0_yAPz_SiztXEfU_yAPz_SiztXEfU_yAPz_SiztXEfU_ySrys5F17VySfGGz_SiztXEfU_0H10Foundation0S8ExtruderVSrys5SIMD3VySfGGA3OSaySo13simd_float4x4aGSiTf1nc_nTf4ngXnnnngn_n(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  if (result < 0)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v16 = result;
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2VySfGMd, &_ss5SIMD2VySfGMR);
    result = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(result + 16) = v16;
  }

  else
  {
    result = MEMORY[0x1E69E7CC0];
  }

  v17 = a3[1];
  if (v17 != a4[1] || v17 != a5[1] || v17 != a6[1])
  {
    goto LABEL_40;
  }

  v20 = *(a7 + 16);
  v21 = *(a2 + 16);
  if ((v20 * v21) >> 64 != (v20 * v21) >> 63)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v17 < v20 * v21)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v20)
  {
    v22 = 0;
    v23 = *a3;
    v24 = *a4;
    v25 = a7 + 32;
    v26 = *a5;
    v27 = *a6;
    while (v22 != v20 + 1)
    {
      v28 = v22 + 1;
      if (v20 - 1 >= v22 + 1)
      {
        v29 = v22 + 1;
      }

      else
      {
        v29 = v20 - 1;
      }

      if (v22 <= 1)
      {
        v30 = 1;
      }

      else
      {
        v30 = v22;
      }

      if (v21)
      {
        v31 = v22 * v21;
        if ((v22 * v21) >> 64 != (v22 * v21) >> 63)
        {
          goto LABEL_38;
        }

        v32 = 0;
        v33 = (v25 + (v22 << 6));
        v34 = *v33;
        v35 = v33[1];
        v36 = v33[2];
        v37 = v33[3];
        v38 = v25 + (v30 << 6);
        v39 = *(v38 - 64);
        v40 = *(v38 - 48);
        v41 = *(v38 - 32);
        v42 = *(v38 - 16);
        v43 = (v25 + (v29 << 6));
        v44 = *v43;
        v45 = v43[1];
        v46 = v43[2];
        v47 = v43[3];
        v48 = vmlaq_f32(vaddq_f32(v36, vmlaq_f32(vmulq_f32(v34, 0), 0, v35)), 0, v37);
        v48.i32[3] = 0;
        v49 = (a2 + 64);
        while (1)
        {
          v53 = v31 + v32;
          if (__OFADD__(v31, v32))
          {
            break;
          }

          v54 = v49[-2].f64[0];
          v55 = v49[-2].f64[1];
          v56 = vsubq_f32(vaddq_f32(v47, vmlaq_f32(vmlaq_n_f32(vmulq_n_f32(v44, v54), v45, v55), 0, v46)), vaddq_f32(v42, vmlaq_f32(vmlaq_n_f32(vmulq_n_f32(v39, v54), v40, v55), 0, v41)));
          v8.f32[0] = sqrtf(vmuls_lane_f32(v56.f32[2], v56, 2) + vaddv_f32(vmul_f32(*v56.f32, *v56.f32)));
          v57 = v48;
          if (fabsf(v8.f32[0]) > 0.00001)
          {
            *v57.f32 = vdiv_f32(*v56.f32, vdup_lane_s32(*v8.f32, 0));
            v57.f32[2] = v56.f32[2] / v8.f32[0];
            v57.i32[3] = 0;
          }

          v58 = v49[-1].f64[0];
          v59 = v49[-1].f64[1];
          v60 = vmlaq_f32(vmlaq_f32(vmlaq_n_f32(vmulq_n_f32(v34, v58), v35, v59), 0, v36), 0, v37);
          v8 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v57, v57), v57, 0xCuLL), vnegq_f32(v60)), v57, vextq_s8(vuzp1q_s32(v60, v60), v60, 0xCuLL));
          v61 = sqrtf(vmuls_lane_f32(v8.f32[1], *v8.f32, 1) + (vmuls_lane_f32(v8.f32[2], v8, 2) + vmulq_f32(v8, v8).f32[0]));
          v62 = 0uLL;
          if (fabsf(v61) > 0.00001)
          {
            *&v62 = v8.f32[2] / v61;
            *(&v62 + 1) = v8.f32[0] / v61;
            *(&v62 + 2) = v8.f32[1] / v61;
          }

          v50 = vaddq_f32(v37, vmlaq_f32(vmlaq_n_f32(vmulq_n_f32(v34, v54), v35, v55), 0, v36));
          v50.i32[3] = 0;
          ++v32;
          v60.i32[3] = 0;
          v51 = 16 * v53;
          *(v23 + v51) = v50;
          *(v24 + v51) = v60;
          *(v26 + v51) = v57;
          *(v27 + v51) = v62;
          v52 = *v49;
          v49 += 3;
          *(result + 32 + 8 * v53) = vcvt_f32_f64(v52);
          if (v21 == v32)
          {
            goto LABEL_17;
          }
        }

        __break(1u);
        break;
      }

LABEL_17:
      v22 = v28;
      if (v28 == v20)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

LABEL_34:
  if (v16 >= a8)
  {
    *(result + 16) = a8;
    return result;
  }

LABEL_43:
  __break(1u);
  return result;
}