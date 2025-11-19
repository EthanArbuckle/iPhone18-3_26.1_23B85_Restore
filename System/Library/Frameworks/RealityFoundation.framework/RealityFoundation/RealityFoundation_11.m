uint64_t specialized _arrayForceCast<A, B>(_:)(unint64_t a1)
{
  v1 = a1;
  if (!(a1 >> 62))
  {
    v2 = a1 & 0xFFFFFFFFFFFFFF8;

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for CTLineRef(0);
    if (swift_dynamicCastMetatype())
    {
      return v1;
    }

    v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return v1;
    }

    v5 = 0;
    while (v5 < v4)
    {
      v6 = *(v2 + 32 + 8 * v5);
      swift_unknownObjectRetain();
      v7 = swift_dynamicCastUnknownClass();
      swift_unknownObjectRelease();
      if (!v7)
      {
        return v2 | 1;
      }

      ++v5;
      v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5 == v4)
      {
        return v1;
      }
    }

    __break(1u);
  }

  type metadata accessor for CTLineRef(0);

  v8 = _bridgeCocoaArray<A>(_:)();

  return v8;
}

uint64_t specialized closure #1 in __RKEntityEmphasisAction.perform(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    swift_beginAccess();
    outlined init with copy of Cancellable?(v6 + 120, &v14);
    if (*(&v15 + 1))
    {
      outlined init with copy of __REAssetService(&v14, v12);
      outlined destroy of BodyTrackingComponent?(&v14, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
      __swift_project_boxed_opaque_existential_1(v12, v13);
      dispatch thunk of Cancellable.cancel()();
      __swift_destroy_boxed_opaque_existential_1(v12);
    }

    else
    {
      outlined destroy of BodyTrackingComponent?(&v14, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
    }

    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    swift_beginAccess();
    outlined assign with take of Cancellable?(&v14, v6 + 120);
    swift_endAccess();
    swift_beginAccess();
    outlined init with copy of Cancellable?(v6 + 160, &v14);
    if (*(&v15 + 1))
    {
      outlined init with copy of __REAssetService(&v14, v12);
      outlined destroy of BodyTrackingComponent?(&v14, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
      __swift_project_boxed_opaque_existential_1(v12, v13);
      dispatch thunk of Cancellable.cancel()();
      __swift_destroy_boxed_opaque_existential_1(v12);
    }

    else
    {
      outlined destroy of BodyTrackingComponent?(&v14, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
    }

    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    swift_beginAccess();
    outlined assign with take of Cancellable?(&v14, v6 + 160);
    swift_endAccess();
    if ((*(v6 + 208) & 1) == 0)
    {
      v7 = *(v6 + 200);
      swift_beginAccess();
      v8 = *(v6 + 16);
      if (v8)
      {
        v9 = *(v6 + 16);

        REAnimationComponentGetComponentType();
        if (REEntityGetComponentByClass())
        {
          REAnimationComponentGetCurrentPlaybackTime();
          if (v10 < *(v6 + 108))
          {
            RETransformComponentGetLocalSRT();
            RETransformComponentSetLocalSRT();
            RENetworkMarkComponentDirty();
          }
        }

        v11 = *(v8 + 16);
        REAnimationComponentGetComponentType();
        if (REEntityGetComponentByClass())
        {
          if (REAnimationComponentHasRunningAnimations())
          {
            if ((REAnimationComponentAllAnimationsCompleted() & 1) != 0 || (swift_beginAccess(), *(v6 + 104) == 1) && *(v6 + 96) == 3)
            {
              REAnimationComponentStopAllAnimations();
              RENetworkMarkComponentDirty();
            }
          }
        }

        *(v6 + 200) = 0;
        *(v6 + 208) = 1;
      }
    }

    RERigidBodyComponentGetComponentType();
    if (REEntityGetComponentByClass())
    {
      if ((a4 & 0x1FFFFFFFFLL) == 0)
      {
        RERigidBodyComponentSetMotionType();
        RENetworkMarkComponentDirty();
      }
    }
  }

  return result;
}

uint64_t closure #2 in __RKEntityEmphasisAction.perform(with:)(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    if ((*(result + 208) & 1) != 0 || *(v1 + 16) != *(result + 200))
    {
    }

    else
    {
      swift_beginAccess();
      v4 = *(v3 + 96);
      v5 = *(v3 + 104);
      *(v3 + 96) = 2;
      *(v3 + 104) = 1;
      v6 = v4;
      v7 = v5;

      __RKEntityAction.state.didset(&v6);
    }
  }

  return result;
}

uint64_t __RKEntityEmphasisAction.reversed()()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 108);
  type metadata accessor for __RKEntityEmphasisAction();
  v3 = swift_allocObject();
  *(v3 + 120) = 0u;
  *(v3 + 136) = 0u;
  *(v3 + 152) = 0u;
  *(v3 + 168) = 0u;
  *(v3 + 184) = 0u;
  *(v3 + 200) = 0;
  *(v3 + 208) = 1;
  *(v3 + 108) = v2;
  *(v3 + 112) = 1065353216;
  *(v3 + 116) = 0;

  return __RKEntityAction.init(targetEntity:)(v4);
}

uint64_t __RKEntityEmphasisAction.description.getter()
{
  BYTE8(v3) = 0;
  v1 = __RKEntityAction.description.getter();
  MEMORY[0x1C68F3410](v1);

  MEMORY[0x1C68F3410](2108704, 0xE300000000000000);
  v4 = *(v0 + 116);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](8236, 0xE200000000000000);
  *&v3 = *(v0 + 117);
  _print_unlocked<A, B>(_:_:)();
  return *(&v3 + 1);
}

uint64_t __RKEntityEmphasisAction.copy(with:)@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = *(v1 + 116);
  v5 = type metadata accessor for __RKEntityEmphasisAction();
  v6 = swift_allocObject();
  *(v6 + 120) = 0u;
  *(v6 + 136) = 0u;
  *(v6 + 152) = 0u;
  *(v6 + 168) = 0u;
  *(v6 + 184) = 0u;
  *(v6 + 200) = 0;
  *(v6 + 208) = 1;
  *(v6 + 108) = *(v1 + 108);
  *(v6 + 116) = v4;

  result = __RKEntityAction.init(targetEntity:)(v7);
  a1[3] = v5;
  *a1 = result;
  return result;
}

uint64_t __RKEntityEmphasisAction.clone(matching:newEntity:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  if (v3 && *(a1 + 16) == *(v3 + 16))
  {
    v5 = *(v1 + 116);
    type metadata accessor for __RKEntityEmphasisAction();
    v6 = swift_allocObject();
    *(v6 + 120) = 0u;
    *(v6 + 136) = 0u;
    *(v6 + 152) = 0u;
    *(v6 + 168) = 0u;
    *(v6 + 184) = 0u;
    *(v6 + 200) = 0;
    *(v6 + 208) = 1;
    *(v6 + 108) = *(v1 + 108);
    *(v6 + 116) = v5;

    return __RKEntityAction.init(targetEntity:)(v7);
  }

  else
  {
    __RKEntityEmphasisAction.copy(with:)(v9);
    type metadata accessor for __RKEntityAction();
    if (swift_dynamicCast())
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t __RKEntityEmphasisAction.deinit()
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
  outlined destroy of BodyTrackingComponent?(v0 + 120, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  outlined destroy of BodyTrackingComponent?(v0 + 160, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  return v0;
}

uint64_t __RKEntityEmphasisAction.__deallocating_deinit()
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

  outlined destroy of BodyTrackingComponent?(v0 + 120, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  outlined destroy of BodyTrackingComponent?(v0 + 160, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);

  return swift_deallocClassInstance();
}

uint64_t partial apply for specialized closure #3 in Scene.subscribe<A>(to:on:componentType:rootEntity:matching:_:)(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  return v2(&v5);
}

uint64_t getEnumTagSinglePayload for __RKEntityEmphasisAnimationType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for __RKEntityEmphasisAnimationType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t Entity.stateMachineController.getter()
{
  v1 = *(v0 + 16);

  Component = REEntityGetComponent();

  if (Component)
  {
    type metadata accessor for StateMachineController();
    Component = swift_allocObject();
    *(Component + 16) = v0;
  }

  return Component;
}

uint64_t Scene.__sceneIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  if (static __RKSceneUUIDComponent.registration && (v3 = *(static __RKSceneUUIDComponent.registration + 3), v4 = *(v1 + 16), ComponentsOfCustomType = RESceneGetComponentsOfCustomType(), v6) && (v7 = *ComponentsOfCustomType, (Object = RECustomComponentGetObject()) != 0))
  {
    v9 = *(Object + 1);
    v10 = Object[7];
    v11 = Object[6];
    v12 = Object[5];
    v13 = Object[4];
    v14 = Object[3];
    v15 = Object[2];
    v16 = Object[1];
    v17 = *Object;
    UUID.init(uuid:)();
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  v19 = type metadata accessor for UUID();
  return (*(*(v19 - 8) + 56))(a1, v18, 1, v19);
}

uint64_t __RKSceneUUIDComponent.uuid.setter(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 7);
  v10 = *(v1 + 6);
  v11 = *(v1 + 5);
  v12 = *(v1 + 4);
  v13 = *(v1 + 3);
  v14 = *(v1 + 2);
  v15 = *(v1 + 1);
  v16 = *v1;
  v23 = v1[1];
  UUID.init(uuid:)();
  lazy protocol witness table accessor for type UUID and conformance UUID();
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v17 = *(v5 + 8);
    v17(a1, v4);
    return (v17)(v8, v4);
  }

  else
  {
    v19 = UUID.uuid.getter();
    v21 = v20;
    v22 = *(v5 + 8);
    v22(a1, v4);
    result = (v22)(v8, v4);
    *v2 = v19;
    v2[1] = v21;
  }

  return result;
}

uint64_t *__RKSceneUUIDComponent.Registration.init()()
{
  v2 = *v0;
  REStructBuilderCreate();
  String.utf8CString.getter();
  v3 = REStructBuilderInit();

  if (!v3 || (String.utf8CString.getter(), REStructBuilderAddMemberCStyleArrayDataTypeWithTag(), , (v4 = RECIntrospectionStructRegister()) == 0))
  {
    lazy protocol witness table accessor for type __RKSceneUUIDComponent.Registration.RegistrationError and conformance __RKSceneUUIDComponent.Registration.RegistrationError();
    swift_allocError();
    swift_willThrow();
    goto LABEL_6;
  }

  v0[2] = v4;
  v5 = specialized String.withCString<A>(_:)(0x55656E6563534152, 0xEB00000000444955, v4);
  if (v1)
  {
LABEL_6:
    REStructBuilderDestroy();
    swift_deallocPartialClassInstance();
    return v0;
  }

  v0[3] = v5;
  REStructBuilderDestroy();
  return v0;
}

uint64_t closure #1 in __RKSceneUUIDComponent.Registration.init()@<X0>(uint64_t *a1@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  result = RECustomComponentTypeCreate();
  if (result)
  {
    *a1 = result;
  }

  else
  {
    lazy protocol witness table accessor for type __RKSceneUUIDComponent.Registration.RegistrationError and conformance __RKSceneUUIDComponent.Registration.RegistrationError();
    swift_allocError();
    result = swift_willThrow();
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __RKSceneUUIDComponent.Registration.deinit()
{
  v1 = *(v0 + 24);
  RECustomComponentTypeDestroy();
  v2 = *(v0 + 16);
  RECIntrospectionStructUnregister();
  return v0;
}

uint64_t __RKSceneUUIDComponent.Registration.__deallocating_deinit()
{
  v1 = *(v0 + 24);
  RECustomComponentTypeDestroy();
  v2 = *(v0 + 16);
  RECIntrospectionStructUnregister();

  return swift_deallocClassInstance();
}

uint64_t static __RKSceneUUIDComponent.registration.setter(void *a1)
{
  swift_beginAccess();
  static __RKSceneUUIDComponent.registration = a1;
}

uint64_t key path setter for static __RKSceneUUIDComponent.registration : __RKSceneUUIDComponent.Type(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  static __RKSceneUUIDComponent.registration = v1;
}

uint64_t key path setter for Scene.__sceneIdentifier : Scene(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - v6;
  outlined init with copy of UUID?(a1, &v10 - v6);
  v8 = *a2;
  return Scene.__sceneIdentifier.setter(v7);
}

uint64_t Scene.__sceneIdentifier.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v31 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v31 - v13;
  swift_beginAccess();
  if (!static __RKSceneUUIDComponent.registration)
  {
    return outlined destroy of UUID?(a1);
  }

  v15 = *(static __RKSceneUUIDComponent.registration + 3);
  outlined init with copy of UUID?(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of UUID?(v6);
    v16 = *(v1 + 16);
    if (REEntityGetCustomComponent())
    {
      REEntityRemoveComponentByClass();
    }

    return outlined destroy of UUID?(a1);
  }

  (*(v8 + 32))(v14, v6, v7);
  v18 = *(v1 + 16);
  ComponentsOfCustomType = RESceneGetComponentsOfCustomType();
  if (v20 >= 1)
  {
    v21 = *ComponentsOfCustomType;
    goto LABEL_14;
  }

  EntitiesArray = RESceneGetEntitiesArray();
  if (v23)
  {
    v24 = EntitiesArray;
    v25 = v23;
    v26 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs13OpaquePointerV_Tt1g5(v23, 0);
    memcpy(v26 + 4, v24, 8 * v25);
    if (v26[2])
    {
LABEL_10:
      v27 = v26[4];
      goto LABEL_13;
    }
  }

  else
  {
    v26 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
      goto LABEL_10;
    }
  }

  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of Scene.__sceneIdentifier.setter);
  v29 = specialized AnchorEntity.__allocating_init(world:)(v28);

  specialized Scene.AnchorCollection.append(_:)(v29, v1);

  v30 = *(v29 + 16);
LABEL_13:

  if (REEntityAddComponentByClass())
  {
LABEL_14:
    if (RECustomComponentGetObject())
    {
      (*(v8 + 16))(v11, v14, v7);
      __RKSceneUUIDComponent.uuid.setter(v11);
    }
  }

  outlined destroy of UUID?(a1);
  return (*(v8 + 8))(v14, v7);
}

uint64_t outlined destroy of UUID?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*Scene.__sceneIdentifier.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 32) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 32) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 40) = v7;
  swift_beginAccess();
  if (static __RKSceneUUIDComponent.registration && (v9 = *(static __RKSceneUUIDComponent.registration + 3), v10 = *(v1 + 16), ComponentsOfCustomType = RESceneGetComponentsOfCustomType(), v12) && (v13 = *ComponentsOfCustomType, (Object = RECustomComponentGetObject()) != 0))
  {
    v15 = *(Object + 1);
    v16 = Object[7];
    v17 = Object[6];
    v18 = Object[5];
    v19 = Object[4];
    v20 = Object[3];
    v21 = Object[2];
    v22 = Object[1];
    v23 = *Object;
    UUID.init(uuid:)();
    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  v25 = type metadata accessor for UUID();
  (*(*(v25 - 8) + 56))(v8, v24, 1, v25);
  return Scene.__sceneIdentifier.modify;
}

void Scene.__sceneIdentifier.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(*a1 + 24);
  if (a2)
  {
    outlined init with copy of UUID?(v4, v3);
    Scene.__sceneIdentifier.setter(v3);
    outlined destroy of UUID?(v4);
  }

  else
  {
    Scene.__sceneIdentifier.setter(v4);
  }

  free(v4);
  free(v3);

  free(v2);
}

void specialized Scene.AnchorCollection.append(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  SceneNullable = REEntityGetSceneNullable();
  if (!SceneNullable)
  {
    goto LABEL_6;
  }

  v6 = SceneNullable;
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

  v9 = *(v8 + 16);

  v10 = *(a2 + 16);

  if (v9 != v10)
  {
LABEL_6:
    v11 = *(a2 + 16);
    v12 = *(a1 + 16);
    RESceneAddEntity();
    swift_beginAccess();
    v13 = static RealityFusionSession.sharedSession;
    if (static RealityFusionSession.sharedSession)
    {
      swift_beginAccess();
      if (v13[2])
      {

        v14 = RFServiceManagerGetAnchorManagementService();
        if (v14)
        {
          v15 = v14;
          RFAnchorManagementUpdateAnchoringInScene();
        }
      }
    }

    Entity.updateSceneGravityIfNeeded()();
  }
}

uint64_t _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    goto LABEL_10;
  }

  if ((v1 - 1) > 3)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  v2 = *(result + 32);
  if (v1 != 1)
  {
    v3 = *(result + 36);
    if (v1 != 2)
    {
      v4 = *(result + 40);
      if (v1 != 3)
      {
        v5 = *(result + 44);
      }
    }
  }

  if (v1 != 4)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    goto LABEL_9;
  }

  if ((v1 - 1) > 2)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  v2 = *(result + 32);
  if (v1 != 1)
  {
    v3 = *(result + 36);
    if (v1 != 2)
    {
      v4 = *(result + 40);
    }
  }

  if (v1 != 3)
  {
    goto LABEL_9;
  }

  return result;
}

__n128 __swift_memcpy16_1(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

unint64_t lazy protocol witness table accessor for type __RKSceneUUIDComponent.Registration.RegistrationError and conformance __RKSceneUUIDComponent.Registration.RegistrationError()
{
  result = lazy protocol witness table cache variable for type __RKSceneUUIDComponent.Registration.RegistrationError and conformance __RKSceneUUIDComponent.Registration.RegistrationError;
  if (!lazy protocol witness table cache variable for type __RKSceneUUIDComponent.Registration.RegistrationError and conformance __RKSceneUUIDComponent.Registration.RegistrationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __RKSceneUUIDComponent.Registration.RegistrationError and conformance __RKSceneUUIDComponent.Registration.RegistrationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKSceneUUIDComponent.Registration.RegistrationError and conformance __RKSceneUUIDComponent.Registration.RegistrationError;
  if (!lazy protocol witness table cache variable for type __RKSceneUUIDComponent.Registration.RegistrationError and conformance __RKSceneUUIDComponent.Registration.RegistrationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __RKSceneUUIDComponent.Registration.RegistrationError and conformance __RKSceneUUIDComponent.Registration.RegistrationError);
  }

  return result;
}

void *_ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySdG_SaySdGTt1g5Tf4g_n(void *result)
{
  v1 = result[2];
  if (!v1)
  {
    goto LABEL_9;
  }

  if ((v1 - 1) > 2)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  v2 = result[4];
  if (v1 != 1)
  {
    v3 = result[5];
    if (v1 != 2)
    {
      v4 = result[6];
    }
  }

  if (v1 != 3)
  {
    goto LABEL_9;
  }

  return result;
}

Swift::Int NetworkCompatibilityToken.Compatibility.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

uint64_t one-time initialization function for local()
{
  type metadata accessor for NetworkCompatibilityToken();
  v0 = swift_allocObject();
  result = RENetCompatibilityCreateLocalToken();
  *(v0 + 16) = result;
  static NetworkCompatibilityToken.local = v0;
  return result;
}

uint64_t static NetworkCompatibilityToken.local.getter()
{
  if (one-time initialization token for local != -1)
  {
    swift_once();
  }
}

uint64_t NetworkCompatibilityToken.deinit()
{
  v1 = *(v0 + 16);
  RERelease();
  return v0;
}

uint64_t NetworkCompatibilityToken.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  RERelease();

  return swift_deallocClassInstance();
}

uint64_t NetworkCompatibilityToken.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  NetworkCompatibilityToken.init(from:)(a1);
  return v2;
}

uint64_t *NetworkCompatibilityToken.init(from:)(uint64_t *a1)
{
  v4 = *v1;
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    lazy protocol witness table accessor for type Data and conformance Data();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    isa = Data._bridgeToObjectiveC()().super.isa;
    TokenFromData = RENetCompatibilityCreateTokenFromData();

    if (TokenFromData)
    {
      outlined consume of Data._Representation(v9, v10);
      v1[2] = TokenFromData;
      __swift_destroy_boxed_opaque_existential_1(v11);
      goto LABEL_5;
    }

    lazy protocol witness table accessor for type NetworkCompatibilityToken.DeserializationError and conformance NetworkCompatibilityToken.DeserializationError();
    swift_allocError();
    swift_willThrow();
    outlined consume of Data._Representation(v9, v10);
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  swift_deallocPartialClassInstance();
LABEL_5:
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

unint64_t lazy protocol witness table accessor for type Data and conformance Data()
{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NetworkCompatibilityToken.DeserializationError and conformance NetworkCompatibilityToken.DeserializationError()
{
  result = lazy protocol witness table cache variable for type NetworkCompatibilityToken.DeserializationError and conformance NetworkCompatibilityToken.DeserializationError;
  if (!lazy protocol witness table cache variable for type NetworkCompatibilityToken.DeserializationError and conformance NetworkCompatibilityToken.DeserializationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkCompatibilityToken.DeserializationError and conformance NetworkCompatibilityToken.DeserializationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NetworkCompatibilityToken.DeserializationError and conformance NetworkCompatibilityToken.DeserializationError;
  if (!lazy protocol witness table cache variable for type NetworkCompatibilityToken.DeserializationError and conformance NetworkCompatibilityToken.DeserializationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkCompatibilityToken.DeserializationError and conformance NetworkCompatibilityToken.DeserializationError);
  }

  return result;
}

uint64_t NetworkCompatibilityToken.encode(to:)(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v3 = *(v1 + 16);
  DataFromToken = RENetCompatibilityCreateDataFromToken();
  if (DataFromToken)
  {
    v5 = DataFromToken;
    v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v6;
    __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
    lazy protocol witness table accessor for type Data and conformance Data();
    dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
    outlined consume of Data._Representation(v8, v9);
  }

  else
  {
    lazy protocol witness table accessor for type NetworkCompatibilityToken.SerializationError and conformance NetworkCompatibilityToken.SerializationError();
    swift_allocError();
    swift_willThrow();
  }

  return __swift_destroy_boxed_opaque_existential_1(v10);
}

unint64_t lazy protocol witness table accessor for type NetworkCompatibilityToken.SerializationError and conformance NetworkCompatibilityToken.SerializationError()
{
  result = lazy protocol witness table cache variable for type NetworkCompatibilityToken.SerializationError and conformance NetworkCompatibilityToken.SerializationError;
  if (!lazy protocol witness table cache variable for type NetworkCompatibilityToken.SerializationError and conformance NetworkCompatibilityToken.SerializationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkCompatibilityToken.SerializationError and conformance NetworkCompatibilityToken.SerializationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NetworkCompatibilityToken.SerializationError and conformance NetworkCompatibilityToken.SerializationError;
  if (!lazy protocol witness table cache variable for type NetworkCompatibilityToken.SerializationError and conformance NetworkCompatibilityToken.SerializationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkCompatibilityToken.SerializationError and conformance NetworkCompatibilityToken.SerializationError);
  }

  return result;
}

uint64_t NetworkCompatibilityToken.compatibilityWith(_:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(a1 + 16);
  result = RENetCompatibilityCheckCompatibility();
  if (!result)
  {
    v7 = 0;
LABEL_5:
    *a2 = v7;
    return result;
  }

  if (result == 1)
  {
    v7 = 1;
    goto LABEL_5;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type NetworkCompatibilityToken.Compatibility and conformance NetworkCompatibilityToken.Compatibility()
{
  result = lazy protocol witness table cache variable for type NetworkCompatibilityToken.Compatibility and conformance NetworkCompatibilityToken.Compatibility;
  if (!lazy protocol witness table cache variable for type NetworkCompatibilityToken.Compatibility and conformance NetworkCompatibilityToken.Compatibility)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkCompatibilityToken.Compatibility and conformance NetworkCompatibilityToken.Compatibility);
  }

  return result;
}

uint64_t *protocol witness for Decodable.init(from:) in conformance NetworkCompatibilityToken@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = NetworkCompatibilityToken.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

_BYTE *TextureResource.CreateOptions.init(semantic:mipmapsMode:)@<X0>(_BYTE *result@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *result;
  *(a3 + 1) = v3;
  *(a3 + 2) = 1280;
  *(a3 + 4) = 0;
  return result;
}

_BYTE *TextureResource.CreateOptions.init(semantic:compression:mipmapsMode:)@<X0>(_BYTE *result@<X0>, __int16 *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  v5 = *a3;
  *a4 = *result;
  *(a4 + 1) = v5;
  *(a4 + 2) = v4;
  *(a4 + 4) = 0;
  return result;
}

unint64_t TextureResource.LoadError.errorDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Error = type metadata accessor for TextureResource.LoadError();
  v8 = *(*(Error - 8) + 64);
  MEMORY[0x1EEE9AC00](Error);
  v10 = (&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of TextureResource.LoadError(v1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      return 0xD000000000000019;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      return 0xD000000000000019;
    }

    else
    {
      return 0xD00000000000002DLL;
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        (*(v3 + 32))(v6, v10, v2);
        v21 = 0;
        v22 = 0xE000000000000000;
        _StringGuts.grow(_:)(35);

        v21 = 0xD000000000000020;
        v22 = 0x80000001C18DF840;
        lazy protocol witness table accessor for type TextureResource.LoadError and conformance TextureResource.LoadError(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
        v12 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x1C68F3410](v12);

        MEMORY[0x1C68F3410](34, 0xE100000000000000);
        v13 = v21;
        (*(v3 + 8))(v6, v2);
        return v13;
      }

      v19 = *v10;
      v20 = v10[1];
      v21 = 0;
      v22 = 0xE000000000000000;
      _StringGuts.grow(_:)(21);

      v21 = 0xD000000000000012;
      v22 = 0x80000001C18DF800;
      MEMORY[0x1C68F3410](v19, v20);

      v17 = 34;
      v18 = 0xE100000000000000;
    }

    else
    {
      v15 = *v10;
      v16 = v10[1];
      v21 = 0;
      v22 = 0xE000000000000000;
      _StringGuts.grow(_:)(48);

      v21 = 0xD000000000000023;
      v22 = 0x80000001C18DF870;
      MEMORY[0x1C68F3410](v15, v16);

      v17 = 0x6E7562206E692022;
      v18 = 0xEB00000000656C64;
    }

    MEMORY[0x1C68F3410](v17, v18);
    return v21;
  }
}

unint64_t protocol witness for LocalizedError.errorDescription.getter in conformance TextureResource.CopyError()
{
  v1 = 0xD00000000000002DLL;
  v2 = 0xD000000000000043;
  if (*v0 == 2)
  {
    v2 = 0xD00000000000002ELL;
  }

  if (*v0)
  {
    v1 = 0xD00000000000003ELL;
  }

  if (*v0 <= 1u)
  {
    result = v1;
  }

  else
  {
    result = v2;
  }

  *v0;
  return result;
}

uint64_t TextureResource.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  *(v2 + 24) = 0;
  RERetain();
  REAssetSetSwiftObject();
  return v2;
}

uint64_t closure #1 in static TextureResource.createTextureResourceAsync(for:options:disableNetworkSync:buildError:fulfill:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v26 = *MEMORY[0x1E69E9840];
  v24 = BYTE4(a2);
  v23 = a2;
  OpaquePointer.set(options:)(&v23, a1);
  v25 = 0;
  RETextureImportOperationRun();
  v16 = v25;
  if (v25)
  {
    RERelease();
    swift_beginAccess();
    v17 = *(a3 + 24);
    swift_unownedRetainStrong();
    v18 = swift_allocObject();
    v18[2] = a4;
    v18[3] = a5;
    v18[4] = a6;
    v18[5] = a7;
    v18[6] = a8;
    v18[7] = v16;

    v19 = partial apply for closure #1 in closure #1 in static TextureResource.createTextureResourceAsync(for:options:disableNetworkSync:buildError:fulfill:);
  }

  else
  {
    swift_beginAccess();
    v20 = *(a3 + 24);
    swift_unownedRetainStrong();
    v18 = swift_allocObject();
    v18[2] = a8;
    v18[3] = a1;
    *(v18 + 32) = a9 & 1;
    v18[5] = a4;
    v18[6] = a5;
    v18[7] = a6;
    v18[8] = a7;

    v19 = partial apply for closure #2 in closure #1 in static TextureResource.createTextureResourceAsync(for:options:disableNetworkSync:buildError:fulfill:);
  }

  __Engine.asyncOnEngineQueue(_:)(v19, v18);

  v22 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t OpaquePointer.set(options:)(char *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = *(a1 + 1);
  v5 = a1[4];
  v6 = dword_1C18A0BB8[*a1];
  RETextureImportOperationSetSemantic();
  RETextureImportOperationSetMipmapMode();
  RETextureImportOperationSetCompressionType();
  if (TextureResource.Compression.toCoreASTCOptions()())
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    RETextureImportOperationSetASTCCompressionOptions();
  }

  return MEMORY[0x1EEDFEE60](a2, v5);
}

void closure #1 in closure #1 in static TextureResource.createTextureResourceAsync(for:options:disableNetworkSync:buildError:fulfill:)(void (*a1)(void *, uint64_t), uint64_t a2, void (*a3)(void *, void, void), uint64_t a4, uint64_t a5, void *a6)
{
  type metadata accessor for TextureResource.LoadError();
  lazy protocol witness table accessor for type TextureResource.LoadError and conformance TextureResource.LoadError(&lazy protocol witness table cache variable for type TextureResource.LoadError and conformance TextureResource.LoadError, type metadata accessor for TextureResource.LoadError);
  v9 = swift_allocError();
  a3(a6, 0, 0);

  a1(v9, 1);
}

uint64_t closure #2 in closure #1 in static TextureResource.createTextureResourceAsync(for:options:disableNetworkSync:buildError:fulfill:)(uint64_t a1, uint64_t a2, char a3, void (*a4)(void *, uint64_t), uint64_t a5, void (*a6)(void *, void *, void))
{
  v8 = specialized static TextureResource.tryCreate(from:disableNetworkSync:)(a2, a3);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  if ((v12 & 0x100) != 0)
  {
    type metadata accessor for TextureResource.LoadError();
    lazy protocol witness table accessor for type TextureResource.LoadError and conformance TextureResource.LoadError(&lazy protocol witness table cache variable for type TextureResource.LoadError and conformance TextureResource.LoadError, type metadata accessor for TextureResource.LoadError);
    v14 = swift_allocError();
    a6(v9, v11, v13 & 1);
    a4(v14, 1);
  }

  else
  {
    a4(v8, 0);
  }

  outlined consume of Result<TextureResource, TextureResource.TextureImportOperationError>(v9, v11, v13, HIBYTE(v13) & 1);

  return RERelease();
}

uint64_t closure #1 in static TextureResource.createTextureLoadRequest(forRetained:options:disableNetworkSync:buildError:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v36 = a6;
  v35 = a3;
  v14 = a5 >> 8;
  v15 = a5 >> 16;
  v38 = type metadata accessor for DispatchWorkItemFlags();
  v41 = *(v38 - 8);
  v16 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v39 = *(v18 - 8);
  v40 = v18;
  v19 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v34 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  v22 = swift_allocObject();
  *(v22 + 16) = a7;
  *(v22 + 24) = a8;

  v23 = specialized static __ServiceLocator.shared.getter();
  v24 = *(*(v23 + 168) + 16);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  *(v25 + 25) = v14;
  *(v25 + 26) = v15;
  *(v25 + 28) = BYTE4(a5) & 1;
  *(v25 + 32) = v23;
  *(v25 + 40) = thunk for @escaping @callee_guaranteed (@in_guaranteed Result<TextureResource, Error>) -> ()partial apply;
  *(v25 + 48) = v21;
  *(v25 + 56) = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed Error) -> (@out TextureResource.LoadError);
  v26 = v35;
  *(v25 + 64) = v22;
  *(v25 + 72) = v26;
  *(v25 + 80) = v36;
  aBlock[4] = closure #1 in static TextureResource.createTextureResourceAsync(for:options:disableNetworkSync:buildError:fulfill:)partial apply;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_458;
  v27 = _Block_copy(aBlock);
  swift_retain_n();
  v28 = v24;

  static DispatchQoS.unspecified.getter();
  v42 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type TextureResource.LoadError and conformance TextureResource.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v30 = v37;
  v29 = v38;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v31 = v34;
  MEMORY[0x1C68F3CA0](0, v34, v30, v27);
  _Block_release(v27);

  (*(v41 + 8))(v30, v29);
  (*(v39 + 8))(v31, v40);
}

void thunk for @escaping @callee_guaranteed (@guaranteed Error) -> (@out TextureResource.LoadError)(void *a1, void *a2, char a3, void (*a4)(void *))
{
  lazy protocol witness table accessor for type TextureResource.TextureImportOperationError and conformance TextureResource.TextureImportOperationError();
  v8 = swift_allocError();
  *v9 = a1;
  *(v9 + 8) = a2;
  *(v9 + 16) = a3 & 1;
  outlined copy of TextureResource.TextureImportOperationError(a1, a2, a3 & 1);
  a4(v8);
}

uint64_t specialized LoadRequest<A>.thenWaitForResourceSharing()()
{
  v1 = v0;
  v2 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v2 + 120, v33);
  type metadata accessor for LoadRequestDependencies();
  v3 = swift_allocObject();
  v4 = MEMORY[0x1E69E7CC0];
  *(v3 + 16) = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v3 + 24) = v5;
  swift_beginAccess();
  *(v3 + 16) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestC0A10FoundationAD0D8LoadableRzlE9Fulfiller33_A05BACD5D05BAECBAA46406B7FD2B6C5LLCyAA15TextureResourceC_GMd, &_s10RealityKit11LoadRequestC0A10FoundationAD0D8LoadableRzlE9Fulfiller33_A05BACD5D05BAECBAA46406B7FD2B6C5LLCyAA15TextureResourceC_GMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  outlined init with copy of __REAssetService(v33, v30);
  v7 = v34;
  v8 = v35;
  __swift_project_boxed_opaque_existential_1(v33, v34);
  LOBYTE(v7) = (*(v8 + 56))(v7, v8);
  v9 = v31;
  v10 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  (*(v10 + 32))(v9, v10);
  AssetRequest = REAssetManagerCreateAssetRequest();
  Request = type metadata accessor for __AssetLoadRequest();
  v12 = swift_allocObject();
  *(v12 + 16) = AssetRequest;
  if (v7)
  {
    REAssetLoadRequestSetLoadAndWaitForResourceSharingClients();
  }

  __swift_destroy_boxed_opaque_existential_1(v30);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA15TextureResourceCGMd, &_s10RealityKit11LoadRequestCyAA15TextureResourceCGMR);
  v13 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit15TextureResourceCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit15TextureResourceCs5Error_pGSgGMR);
  v14 = swift_allocObject();
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v14 + 16) = v15;
  *(v14 + 24) = 0;
  *(v14 + 32) = -1;
  *(v13 + 16) = v14;
  v28 = v13;
  v16 = swift_allocObject();
  v16[2] = partial apply for specialized closure #1 in LoadRequest<A>.thenWaitForResourceSharing();
  v16[3] = v6;
  v16[4] = v14;
  v16[5] = v3;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit15TextureResourceCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit15TextureResourceCs5Error_pGMR);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();

  *(v13 + 24) = Future.init(_:)();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestC0A10FoundationAD0D8LoadableRzlE17CancellableHolder33_A05BACD5D05BAECBAA46406B7FD2B6C5LLCyAA15TextureResourceC_GMd, &_s10RealityKit11LoadRequestC0A10FoundationAD0D8LoadableRzlE17CancellableHolder33_A05BACD5D05BAECBAA46406B7FD2B6C5LLCyAA15TextureResourceC_GMR);
  v20 = swift_allocObject();
  *(v20 + 32) = 0u;
  *(v20 + 16) = 0u;
  v30[0] = v1;
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = v6;
  *(v22 + 24) = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = v12;
  *(v23 + 24) = v6;
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type LoadRequest<TextureResource> and conformance LoadRequest<A>, &_s10RealityKit11LoadRequestCyAA15TextureResourceCGMd, &_s10RealityKit11LoadRequestCyAA15TextureResourceCGMR);
  swift_retain_n();

  v24 = Publisher.sink(receiveCompletion:receiveValue:)();

  v31 = type metadata accessor for AnyCancellable();
  v30[0] = v24;
  swift_beginAccess();
  outlined assign with take of Any?(v30, v20 + 16);
  swift_endAccess();
  v31 = Request;
  v30[0] = v12;

  LoadRequestDependencies.add(_:)(v30);
  __swift_destroy_boxed_opaque_existential_1(v30);
  v31 = v27;
  v30[0] = v1;

  LoadRequestDependencies.add(_:)(v30);
  __swift_destroy_boxed_opaque_existential_1(v30);
  v31 = v26;
  v30[0] = v20;
  LoadRequestDependencies.add(_:)(v30);

  __swift_destroy_boxed_opaque_existential_1(v30);
  __swift_destroy_boxed_opaque_existential_1(v33);
  return v28;
}

{
  v1 = v0;
  v2 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v2 + 120, v33);
  type metadata accessor for LoadRequestDependencies();
  v3 = swift_allocObject();
  v4 = MEMORY[0x1E69E7CC0];
  *(v3 + 16) = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v3 + 24) = v5;
  swift_beginAccess();
  *(v3 + 16) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestC0A10FoundationAD0D8LoadableRzlE9Fulfiller33_A05BACD5D05BAECBAA46406B7FD2B6C5LLCyAA19EnvironmentResourceC_GMd, &_s10RealityKit11LoadRequestC0A10FoundationAD0D8LoadableRzlE9Fulfiller33_A05BACD5D05BAECBAA46406B7FD2B6C5LLCyAA19EnvironmentResourceC_GMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  outlined init with copy of __REAssetService(v33, v30);
  v7 = v34;
  v8 = v35;
  __swift_project_boxed_opaque_existential_1(v33, v34);
  LOBYTE(v7) = (*(v8 + 56))(v7, v8);
  v9 = v31;
  v10 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  (*(v10 + 32))(v9, v10);
  AssetRequest = REAssetManagerCreateAssetRequest();
  Request = type metadata accessor for __AssetLoadRequest();
  v12 = swift_allocObject();
  *(v12 + 16) = AssetRequest;
  if (v7)
  {
    REAssetLoadRequestSetLoadAndWaitForResourceSharingClients();
  }

  __swift_destroy_boxed_opaque_existential_1(v30);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA19EnvironmentResourceCGMd, &_s10RealityKit11LoadRequestCyAA19EnvironmentResourceCGMR);
  v13 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit19EnvironmentResourceCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit19EnvironmentResourceCs5Error_pGSgGMR);
  v14 = swift_allocObject();
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v14 + 16) = v15;
  *(v14 + 24) = 0;
  *(v14 + 32) = -1;
  *(v13 + 16) = v14;
  v28 = v13;
  v16 = swift_allocObject();
  v16[2] = partial apply for specialized closure #1 in LoadRequest<A>.thenWaitForResourceSharing();
  v16[3] = v6;
  v16[4] = v14;
  v16[5] = v3;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit19EnvironmentResourceCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit19EnvironmentResourceCs5Error_pGMR);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();

  *(v13 + 24) = Future.init(_:)();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestC0A10FoundationAD0D8LoadableRzlE17CancellableHolder33_A05BACD5D05BAECBAA46406B7FD2B6C5LLCyAA19EnvironmentResourceC_GMd, &_s10RealityKit11LoadRequestC0A10FoundationAD0D8LoadableRzlE17CancellableHolder33_A05BACD5D05BAECBAA46406B7FD2B6C5LLCyAA19EnvironmentResourceC_GMR);
  v20 = swift_allocObject();
  *(v20 + 32) = 0u;
  *(v20 + 16) = 0u;
  v30[0] = v1;
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = v6;
  *(v22 + 24) = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = v12;
  *(v23 + 24) = v6;
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type LoadRequest<EnvironmentResource> and conformance LoadRequest<A>, &_s10RealityKit11LoadRequestCyAA19EnvironmentResourceCGMd, &_s10RealityKit11LoadRequestCyAA19EnvironmentResourceCGMR);
  swift_retain_n();

  v24 = Publisher.sink(receiveCompletion:receiveValue:)();

  v31 = type metadata accessor for AnyCancellable();
  v30[0] = v24;
  swift_beginAccess();
  outlined assign with take of Any?(v30, v20 + 16);
  swift_endAccess();
  v31 = Request;
  v30[0] = v12;

  LoadRequestDependencies.add(_:)(v30);
  __swift_destroy_boxed_opaque_existential_1(v30);
  v31 = v27;
  v30[0] = v1;

  LoadRequestDependencies.add(_:)(v30);
  __swift_destroy_boxed_opaque_existential_1(v30);
  v31 = v26;
  v30[0] = v20;
  LoadRequestDependencies.add(_:)(v30);

  __swift_destroy_boxed_opaque_existential_1(v30);
  __swift_destroy_boxed_opaque_existential_1(v33);
  return v28;
}

{
  v1 = v0;
  v2 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v2 + 120, v40);
  type metadata accessor for LoadRequestDependencies();
  v3 = swift_allocObject();
  v4 = MEMORY[0x1E69E7CC0];
  *(v3 + 16) = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v3 + 24) = v5;
  swift_beginAccess();
  *(v3 + 16) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestC0A10FoundationAD0D8LoadableRzlE9Fulfiller33_A05BACD5D05BAECBAA46406B7FD2B6C5LLCyAD19ShaderGraphMaterialV_GMd, &_s10RealityKit11LoadRequestC0A10FoundationAD0D8LoadableRzlE9Fulfiller33_A05BACD5D05BAECBAA46406B7FD2B6C5LLCyAD19ShaderGraphMaterialV_GMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  outlined init with copy of __REAssetService(v40, v37);
  v7 = v41;
  v8 = v42;
  __swift_project_boxed_opaque_existential_1(v40, v41);
  LOBYTE(v7) = (*(v8 + 56))(v7, v8);
  v9 = v38;
  v10 = v39;
  __swift_project_boxed_opaque_existential_1(v37, v38);
  (*(v10 + 32))(v9, v10);
  AssetRequest = REAssetManagerCreateAssetRequest();
  Request = type metadata accessor for __AssetLoadRequest();
  v12 = swift_allocObject();
  *(v12 + 16) = AssetRequest;
  if (v7)
  {
    REAssetLoadRequestSetLoadAndWaitForResourceSharingClients();
  }

  __swift_destroy_boxed_opaque_existential_1(v37);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCy0A10Foundation19ShaderGraphMaterialVGMd, &_s10RealityKit11LoadRequestCy0A10Foundation19ShaderGraphMaterialVGMR);
  v13 = swift_allocObject();
  _ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGSgWOi0_(v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOyAA19ShaderGraphMaterialVs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOyAA19ShaderGraphMaterialVs5Error_pGSgGMR);
  v14 = swift_allocObject();
  v15 = swift_allocObject();
  *(v14 + 88) = v35[4];
  v16 = v36[0];
  *(v14 + 104) = v35[5];
  *(v14 + 120) = v16;
  *(v14 + 130) = *(v36 + 10);
  v17 = v35[1];
  *(v14 + 24) = v35[0];
  *(v14 + 40) = v17;
  v18 = v35[3];
  *(v14 + 56) = v35[2];
  *(v15 + 16) = 0;
  *(v14 + 16) = v15;
  *(v14 + 72) = v18;
  *(v13 + 16) = v14;
  v30 = v13;
  v19 = swift_allocObject();
  v19[2] = partial apply for specialized closure #1 in LoadRequest<A>.thenWaitForResourceSharing();
  v19[3] = v6;
  v19[4] = v14;
  v19[5] = v3;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy17RealityFoundation19ShaderGraphMaterialVs5Error_pGMd, &_s7Combine6FutureCy17RealityFoundation19ShaderGraphMaterialVs5Error_pGMR);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();

  *(v13 + 24) = Future.init(_:)();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestC0A10FoundationAD0D8LoadableRzlE17CancellableHolder33_A05BACD5D05BAECBAA46406B7FD2B6C5LLCyAD19ShaderGraphMaterialV_GMd, &_s10RealityKit11LoadRequestC0A10FoundationAD0D8LoadableRzlE17CancellableHolder33_A05BACD5D05BAECBAA46406B7FD2B6C5LLCyAD19ShaderGraphMaterialV_GMR);
  v23 = swift_allocObject();
  *(v23 + 32) = 0u;
  *(v23 + 16) = 0u;
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = swift_allocObject();
  *(v25 + 16) = v6;
  *(v25 + 24) = v24;
  v26 = swift_allocObject();
  *(v26 + 16) = v12;
  *(v26 + 24) = v6;
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type LoadRequest<ShaderGraphMaterial> and conformance LoadRequest<A>, &_s10RealityKit11LoadRequestCy0A10Foundation19ShaderGraphMaterialVGMd, &_s10RealityKit11LoadRequestCy0A10Foundation19ShaderGraphMaterialVGMR);
  swift_retain_n();

  v27 = Publisher.sink(receiveCompletion:receiveValue:)();

  v34 = type metadata accessor for AnyCancellable();
  v33[0] = v27;
  swift_beginAccess();
  outlined assign with take of Any?(v33, v23 + 16);
  swift_endAccess();
  v34 = Request;
  v33[0] = v12;

  LoadRequestDependencies.add(_:)(v33);
  __swift_destroy_boxed_opaque_existential_1(v33);
  v34 = v31;
  v33[0] = v1;

  LoadRequestDependencies.add(_:)(v33);
  __swift_destroy_boxed_opaque_existential_1(v33);
  v34 = v29;
  v33[0] = v23;
  LoadRequestDependencies.add(_:)(v33);

  __swift_destroy_boxed_opaque_existential_1(v33);
  __swift_destroy_boxed_opaque_existential_1(v40);
  return v30;
}

uint64_t TextureResource.replaceWith(importOperation:)()
{
  v1 = v0;
  v21[1] = *MEMORY[0x1E69E9840];
  v21[0] = 0;
  AssetData = RETextureImportOperationCreateAssetData();
  if (!AssetData)
  {
    lazy protocol witness table accessor for type TextureResource.TextureImportOperationError and conformance TextureResource.TextureImportOperationError();
    swift_allocError();
    strcpy(v10, "Replace failed");
    v10[15] = -18;
    v10[16] = 1;
    result = swift_willThrow();
LABEL_14:
    v15 = *MEMORY[0x1E69E9840];
    return result;
  }

  v3 = AssetData;
  v4 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  result = outlined init with copy of [String : String](v4 + 40, &v16, &_s10RealityKit15__RenderService_pSgMd, &_s10RealityKit15__RenderService_pSgMR);
  if (v17)
  {
    outlined init with take of ForceEffectBase(&v16, v18);
    v6 = v19;
    v7 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v8 = (*(v7 + 24))(v6, v7);
    LOBYTE(v6) = MEMORY[0x1C68FF210](v8, *(v1 + 16), v3, v21);
    __swift_destroy_boxed_opaque_existential_1(v18);
    if (v6)
    {
      v9 = *(v1 + 24);
      *(v1 + 24) = 0;

      RETextureAssetRemoveDrawableQueue();
    }

    else
    {
      v11 = v21[0] == 0;
      if (v21[0])
      {
        v12 = v21[0];
      }

      else
      {
        v12 = 0x206563616C706552;
      }

      if (v21[0])
      {
        v13 = 0;
      }

      else
      {
        v13 = 0xEE0064656C696166;
      }

      lazy protocol witness table accessor for type TextureResource.TextureImportOperationError and conformance TextureResource.TextureImportOperationError();
      swift_allocError();
      *v14 = v12;
      *(v14 + 8) = v13;
      *(v14 + 16) = v11;
      swift_willThrow();
    }

    result = RERelease();
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t TextureResource.init(_:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  *(v1 + 24) = 0;
  RERetain();
  REAssetSetSwiftObject();
  return v1;
}

uint64_t TextureResource.deinit()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);
    RETextureAssetRemoveDrawableQueue();
  }

  v2 = *(v0 + 16);
  REAssetSetSwiftObject();
  v3 = *(v0 + 16);
  RERelease();
  v4 = *(v0 + 24);

  return v0;
}

uint64_t TextureResource.__deallocating_deinit()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);
    RETextureAssetRemoveDrawableQueue();
  }

  v2 = *(v0 + 16);
  REAssetSetSwiftObject();
  v3 = *(v0 + 16);
  RERelease();
  v4 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t TextureResource.semantic.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = RETextureAssetGetSemantic();
  v5 = 0x40302010005uLL >> (8 * result);
  if (result >= 6)
  {
    LOBYTE(v5) = 5;
  }

  *a1 = v5;
  return result;
}

uint64_t TextureResource.width.getter()
{
  v1 = *(v0 + 16);
  RETextureAssetGetSize();
  return v2;
}

uint64_t TextureResource.height.getter()
{
  v1 = *(v0 + 16);
  RETextureAssetGetSize();
  return v2;
}

uint64_t TextureResource.depth.getter()
{
  v1 = *(v0 + 16);
  RETextureAssetGetDimensions();
  return v2;
}

uint64_t static TextureResource.load(named:in:textureLoader:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = 83886597;
  v6 = 0;
  return specialized static TextureResource.load(named:in:options:textureLoader:)(a1, a2, a3, &v5, a4);
}

uint64_t static TextureResource.loadAsync(named:in:textureLoader:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a3)
  {
    v13 = a3;
  }

  else
  {
    v13 = [objc_opt_self() mainBundle];
  }

  v14 = a3;
  v15 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v16 = *(v15 + 24);
  swift_unownedRetainStrong();
  v17 = *(v16 + 32);

  v18 = v17;

  *v12 = v18;
  (*(v9 + 104))(v12, *MEMORY[0x1E69E8020], v8);
  v19 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  result = (*(v9 + 8))(v12, v8);
  if (v18)
  {
    outlined init with copy of __REAssetService(a4, v32);
    v21 = swift_allocObject();
    *(v21 + 16) = v31[1];
    *(v21 + 24) = a1;
    *(v21 + 32) = a2;
    *(v21 + 40) = v13;
    *(v21 + 48) = 83886597;
    *(v21 + 52) = 0;
    outlined init with take of ForceEffectBase(v32, v21 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA15TextureResourceCGMd, &_s10RealityKit11LoadRequestCyAA15TextureResourceCGMR);
    v22 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit15TextureResourceCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit15TextureResourceCs5Error_pGSgGMR);
    v23 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    *(v23 + 16) = v24;
    *(v23 + 24) = 0;
    *(v23 + 32) = -1;
    *(v22 + 16) = v23;
    v25 = swift_allocObject();
    v25[2] = partial apply for closure #1 in static TextureResource.loadAsync(named:in:options:textureLoader:);
    v25[3] = v21;
    v25[4] = v23;
    v25[5] = 0;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit15TextureResourceCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit15TextureResourceCs5Error_pGMR);
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    swift_allocObject();

    v29 = v13;

    *(v22 + 24) = Future.init(_:)();
    v30 = specialized LoadRequest<A>.thenWaitForResourceSharing()();

    return v30;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static TextureResource.loadAsync(named:in:options:textureLoader:)(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 *a4, uint64_t a5)
{
  v39 = a2;
  v36 = a5;
  v37 = a1;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = *a4;
  v12 = a4[1];
  v13 = *(a4 + 1);
  v14 = a4[4];
  if (a3)
  {
    v15 = a3;
  }

  else
  {
    v15 = [objc_opt_self() mainBundle];
  }

  v16 = a3;
  v17 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v18 = *(v17 + 24);
  swift_unownedRetainStrong();
  v19 = *(v18 + 32);

  v20 = v19;

  *v11 = v20;
  (*(v8 + 104))(v11, *MEMORY[0x1E69E8020], v7);
  v21 = v20;
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  result = (*(v8 + 8))(v11, v7);
  if (v20)
  {
    outlined init with copy of __REAssetService(v36, v40);
    v23 = swift_allocObject();
    v24 = v37;
    *(v23 + 16) = v38;
    *(v23 + 24) = v24;
    *(v23 + 32) = v39;
    *(v23 + 40) = v15;
    *(v23 + 48) = v35;
    *(v23 + 49) = v12;
    *(v23 + 50) = v13;
    *(v23 + 52) = v14;
    outlined init with take of ForceEffectBase(v40, v23 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA15TextureResourceCGMd, &_s10RealityKit11LoadRequestCyAA15TextureResourceCGMR);
    v25 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit15TextureResourceCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit15TextureResourceCs5Error_pGSgGMR);
    v26 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    *(v26 + 16) = v27;
    *(v26 + 24) = 0;
    *(v26 + 32) = -1;
    *(v25 + 16) = v26;
    v28 = swift_allocObject();
    v28[2] = closure #1 in static TextureResource.loadAsync(named:in:options:textureLoader:)partial apply;
    v28[3] = v23;
    v28[4] = v26;
    v28[5] = 0;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit15TextureResourceCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit15TextureResourceCs5Error_pGMR);
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    swift_allocObject();

    v32 = v15;

    *(v25 + 24) = Future.init(_:)();
    v33 = specialized LoadRequest<A>.thenWaitForResourceSharing()();

    return v33;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in static TextureResource.loadAsync(named:in:options:textureLoader:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, void *a8)
{
  v46 = a8;
  v53 = a3;
  v14 = type metadata accessor for DispatchWorkItemFlags();
  v51 = *(v14 - 8);
  v52 = v14;
  v15 = v51[8];
  MEMORY[0x1EEE9AC00](v14);
  v48 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v49 = *(v17 - 8);
  v50 = v17;
  v18 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v47 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  v54 = v20;

  v21 = specialized static __ServiceLocator.shared.getter();

  v22 = specialized static TextureResource.findBundledFileExtension(named:in:)(a4, a5, a6);
  v24 = v23;
  v25 = MEMORY[0x1C68F3280](a4, a5);
  if (v24)
  {
    v26 = MEMORY[0x1C68F3280](v22, v24);
  }

  else
  {
    v26 = 0;
  }

  v27 = a7 & 0x100000000;
  swift_beginAccess();
  v28 = *(v21 + 16);
  v29 = RETextureImportOperationCreateWithBundleResource();

  if (v29)
  {
    v30 = swift_allocObject();
    *(v30 + 16) = a4;
    *(v30 + 24) = a5;

    v31 = specialized static __ServiceLocator.shared.getter();
    v46 = *(*(v31 + 168) + 16);
    v32 = swift_allocObject();
    *(v32 + 16) = v29;
    *(v32 + 24) = a7;
    *(v32 + 28) = BYTE4(v27);
    *(v32 + 32) = v31;
    *(v32 + 40) = thunk for @escaping @callee_guaranteed (@in_guaranteed Result<TextureResource, Error>) -> ()partial apply;
    v33 = v53;
    *(v32 + 48) = v54;
    *(v32 + 56) = partial apply for closure #1 in closure #1 in static TextureResource.loadAsync(named:in:options:textureLoader:);
    *(v32 + 64) = v30;
    *(v32 + 72) = v33;
    *(v32 + 80) = 0;
    aBlock[4] = closure #1 in static TextureResource.createTextureResourceAsync(for:options:disableNetworkSync:buildError:fulfill:)partial apply;
    aBlock[5] = v32;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_515;
    v34 = _Block_copy(aBlock);
    swift_retain_n();
    v53 = v46;

    v35 = v47;
    static DispatchQoS.unspecified.getter();
    v55 = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type TextureResource.LoadError and conformance TextureResource.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v36 = v48;
    v37 = v52;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v38 = v53;
    MEMORY[0x1C68F3CA0](0, v35, v36, v34);
    _Block_release(v34);

    (v51[1])(v36, v37);
    (*(v49 + 8))(v35, v50);
  }

  else
  {
    v39 = v46[4];
    v52 = v46[3];
    v51 = __swift_project_boxed_opaque_existential_1(v46, v52);
    LODWORD(aBlock[0]) = a7;
    v40 = HIDWORD(v27);
    BYTE4(aBlock[0]) = (a7 & 0x100000000uLL) >> 32;
    v41 = swift_allocObject();
    v43 = v53;
    v42 = v54;
    *(v41 + 16) = v21;
    *(v41 + 24) = v43;
    *(v41 + 32) = a7;
    *(v41 + 36) = v40;
    *(v41 + 40) = thunk for @escaping @callee_guaranteed (@in_guaranteed Result<TextureResource, Error>) -> ()partial apply;
    *(v41 + 48) = v42;
    v44 = *(v39 + 16);

    v44(a4, a5, a6, aBlock, partial apply for closure #2 in closure #1 in static TextureResource.loadAsync(named:in:options:textureLoader:), v41, v52, v39);
  }
}

uint64_t closure #2 in closure #1 in static TextureResource.loadAsync(named:in:options:textureLoader:)(void *a1, char a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = a5 >> 8;
  v14 = a5 >> 16;
  swift_beginAccess();
  v15 = *(a3 + 24);
  swift_unownedRetainStrong();
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2 & 1;
  *(v16 + 32) = a4;
  *(v16 + 40) = a5;
  *(v16 + 41) = v13;
  *(v16 + 42) = v14;
  *(v16 + 44) = BYTE4(a5) & 1;
  *(v16 + 48) = a3;
  *(v16 + 56) = a6;
  *(v16 + 64) = a7;
  outlined copy of Result<[Entity], Error>(a1, a2 & 1, MEMORY[0x1E69E7D68]);

  __Engine.asyncOnEngineQueue(_:)(partial apply for closure #1 in closure #2 in closure #1 in static TextureResource.loadAsync(named:in:options:textureLoader:), v16);
}

void closure #1 in closure #2 in closure #1 in static TextureResource.loadAsync(named:in:options:textureLoader:)(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void *, void))
{
  if ((a2 & 1) == 0)
  {
    LODWORD(v17[0]) = a4;
    BYTE4(v17[0]) = BYTE4(a4) & 1;
    specialized static TextureResource.createTextureAssetDataFor(texture:options:)(a1, v17);
    swift_beginAccess();
    outlined init with copy of __REAssetService(a5 + 120, v17);
    v13 = v18;
    v14 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    (*(v14 + 32))(v13, v14);
    TextureAssetFromData = REAssetManagerCreateTextureAssetFromData();
    __swift_destroy_boxed_opaque_existential_1(v17);
    RERelease();
    if (REAssetGetSwiftObject())
    {
      type metadata accessor for TextureResource();
      v11 = swift_dynamicCastClass();
      if (v11)
      {
LABEL_8:
        RERelease();
        goto LABEL_10;
      }

      swift_unknownObjectRelease();
    }

    type metadata accessor for TextureResource();
    v11 = swift_allocObject();
    v11[2] = TextureAssetFromData;
    v11[3] = 0;
    RERetain();
    REAssetSetSwiftObject();
    goto LABEL_8;
  }

  v17[0] = a1;
  v9 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v10 = _getErrorEmbeddedNSError<A>(_:)();
  if (v10)
  {
    v11 = v10;
    outlined consume of Result<ModelEntity, Error>(a1, 1, MEMORY[0x1E69E7D60]);
  }

  else
  {
    v11 = swift_allocError();
    *v16 = a1;
  }

LABEL_10:
  a6(v11, a2 & 1);
  outlined consume of Result<ModelEntity, Error>(v11, a2 & 1, MEMORY[0x1E69E7D48]);
}

void *static TextureResource.load(contentsOf:withName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = 83886597;
  v5 = 0;
  return specialized static TextureResource.load(contentsOf:withName:options:)(a1, a2, a3, &v4);
}

uint64_t static TextureResource.loadAsync(contentsOf:withName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = 83886597;
  v5 = 0;
  return static TextureResource.loadAsync(contentsOf:withName:options:)(a1, a2, a3, &v4);
}

uint64_t static TextureResource.loadAsync(contentsOf:withName:options:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a4;
  v35 = a4[1];
  v36 = v11;
  v12 = *(a4 + 1);
  v33 = a4[4];
  v34 = v12;
  v13 = specialized static __ServiceLocator.shared.getter();

  URL._bridgeToObjectiveC()(v14);
  v16 = v15;
  swift_beginAccess();
  v17 = *(v13 + 16);
  v18 = RETextureImportOperationCreateWithURL();

  if (a3)
  {
    String.utf8CString.getter();
    RETextureImportOperationSetAssetResourceName();
  }

  (*(v8 + 16))(&v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v19 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v20 = swift_allocObject();
  (*(v8 + 32))(v20 + v19, v10, v7);
  v21 = swift_allocObject();
  *(v21 + 16) = v37;
  *(v21 + 24) = v18;
  v22 = v35;
  *(v21 + 32) = v36;
  *(v21 + 33) = v22;
  v23 = v33;
  *(v21 + 34) = v34;
  *(v21 + 36) = v23;
  *(v21 + 37) = 1;
  *(v21 + 40) = partial apply for closure #1 in static TextureResource.loadAsync(contentsOf:withName:options:);
  *(v21 + 48) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA15TextureResourceCGMd, &_s10RealityKit11LoadRequestCyAA15TextureResourceCGMR);
  v24 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit15TextureResourceCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit15TextureResourceCs5Error_pGSgGMR);
  v25 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v25 + 16) = v26;
  *(v25 + 24) = 0;
  *(v25 + 32) = -1;
  *(v24 + 16) = v25;
  v27 = swift_allocObject();
  v27[2] = partial apply for closure #1 in static TextureResource.createTextureLoadRequest(forRetained:options:disableNetworkSync:buildError:);
  v27[3] = v21;
  v27[4] = v25;
  v27[5] = 0;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit15TextureResourceCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit15TextureResourceCs5Error_pGMR);
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();

  *(v24 + 24) = Future.init(_:)();
  v31 = specialized LoadRequest<A>.thenWaitForResourceSharing()();

  return v31;
}

uint64_t closure #1 in static TextureResource.loadAsync(contentsOf:withName:options:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for URL();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  type metadata accessor for TextureResource.LoadError();

  return swift_storeEnumTagMultiPayload();
}

void *static TextureResource.generate(from:withName:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *a4;
  v8 = *(a4 + 1);
  v9 = *(a4 + 2);
  v10 = *(a4 + 4);
  v11 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v12 = *(v11 + 16);

  v13 = RETextureImportOperationCreateWithCGImage();
  if (a3)
  {
    String.utf8CString.getter();
    RETextureImportOperationSetAssetResourceName();
  }

  v23[0] = v7;
  v23[1] = v8;
  v24 = v9;
  v25 = v10;
  OpaquePointer.set(options:)(v23, v13);
  v14 = specialized static TextureResource.tryCreate(from:disableNetworkSync:)(v13, 1);
  Error = v14;
  if ((v16 & 0x100) != 0)
  {
    outlined consume of Result<TextureResource, TextureResource.TextureImportOperationError>(v14, v15, v16, 1);
    Error = type metadata accessor for TextureResource.LoadError();
    lazy protocol witness table accessor for type TextureResource.LoadError and conformance TextureResource.LoadError(&lazy protocol witness table cache variable for type TextureResource.LoadError and conformance TextureResource.LoadError, type metadata accessor for TextureResource.LoadError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    v18 = v15;
    v19 = v16;
    if (RELinkedOnOrAfterFall2024OSVersions())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C1887600;
      v21 = type metadata accessor for TextureResource();
      *(inited + 32) = Error;
      *(inited + 56) = v21;
      *(inited + 64) = &protocol witness table for TextureResource;
      outlined copy of Result<TextureResource, TextureResource.TextureImportOperationError>(Error, v18, v19, 0);
      specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(inited);
      if (v5)
      {
        outlined consume of Result<TextureResource, TextureResource.TextureImportOperationError>(Error, v18, v19, 0);
      }

      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1((inited + 32));
    }
  }

  RERelease();
  return Error;
}

uint64_t static TextureResource.generateAsync(from:withName:options:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v6 = *a4;
  v7 = a4[1];
  v8 = *(a4 + 1);
  v9 = a4[4];
  v10 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v11 = *(v10 + 16);

  v12 = RETextureImportOperationCreateWithCGImage();
  if (a3)
  {
    String.utf8CString.getter();
    RETextureImportOperationSetAssetResourceName();
  }

  v13 = swift_allocObject();
  *(v13 + 16) = v4;
  *(v13 + 24) = v12;
  *(v13 + 32) = v6;
  *(v13 + 33) = v7;
  *(v13 + 34) = v8;
  *(v13 + 36) = v9;
  *(v13 + 37) = 1;
  *(v13 + 40) = closure #1 in static TextureResource.generateAsyncInternal(from:named:options:);
  *(v13 + 48) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA15TextureResourceCGMd, &_s10RealityKit11LoadRequestCyAA15TextureResourceCGMR);
  v14 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit15TextureResourceCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit15TextureResourceCs5Error_pGSgGMR);
  v15 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v15 + 16) = v16;
  *(v15 + 24) = 0;
  *(v15 + 32) = -1;
  *(v14 + 16) = v15;
  v17 = swift_allocObject();
  v17[2] = closure #1 in static TextureResource.createTextureLoadRequest(forRetained:options:disableNetworkSync:buildError:)partial apply;
  v17[3] = v13;
  v17[4] = v15;
  v17[5] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit15TextureResourceCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit15TextureResourceCs5Error_pGMR);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();

  *(v14 + 24) = Future.init(_:)();
  v21 = specialized LoadRequest<A>.thenWaitForResourceSharing()();

  return v21;
}

uint64_t TextureResource.replace(withImage:options:)(uint64_t a1, int *a2)
{
  v2 = *a2;
  v3 = *(a2 + 4);
  v4 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v5 = *(v4 + 16);
  v6 = RETextureImportOperationCreateWithCGImage();
  v8 = v2;
  v9 = v3;
  OpaquePointer.set(options:)(&v8, v6);
  TextureResource.replaceWith(importOperation:)();
  return RERelease();
}

uint64_t TextureResource.replaceAsync(withImage:options:)(uint64_t a1, int *a2)
{
  v3 = *a2;
  v4 = *(a2 + 4);
  v5 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v6 = *(v5 + 16);
  v7 = RETextureImportOperationCreateWithCGImage();
  v8 = specialized static __ServiceLocator.shared.getter();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  *(v9 + 32) = v3;
  *(v9 + 36) = v4;
  *(v9 + 40) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA15TextureResourceCGMd, &_s10RealityKit11LoadRequestCyAA15TextureResourceCGMR);
  v10 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit15TextureResourceCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit15TextureResourceCs5Error_pGSgGMR);
  v11 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v11 + 16) = v12;
  *(v11 + 24) = 0;
  *(v11 + 32) = -1;
  *(v10 + 16) = v11;
  v13 = swift_allocObject();
  v13[2] = partial apply for closure #1 in TextureResource.replaceAsyncInternal(using:options:);
  v13[3] = v9;
  v13[4] = v11;
  v13[5] = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit15TextureResourceCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit15TextureResourceCs5Error_pGMR);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  swift_retain_n();

  *(v10 + 24) = Future.init(_:)();
  v17 = specialized LoadRequest<A>.thenWaitForResourceSharing()();

  return v17;
}

uint64_t closure #1 in TextureResource.replaceAsyncInternal(using:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v11 = a5 >> 8;
  v27 = a5 >> 16;
  v28 = a6;
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v12 - 8);
  v13 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v29 = *(v16 - 8);
  v30 = v16;
  v17 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  v21 = *(*(a3 + 168) + 16);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  *(v22 + 25) = v11;
  v23 = v28;
  *(v22 + 26) = v27;
  *(v22 + 28) = BYTE4(a5) & 1;
  *(v22 + 32) = a3;
  *(v22 + 40) = thunk for @escaping @callee_guaranteed (@in_guaranteed Result<TextureResource, Error>) -> ()partial apply;
  *(v22 + 48) = v20;
  *(v22 + 56) = v23;
  aBlock[4] = partial apply for closure #1 in closure #1 in TextureResource.replaceAsyncInternal(using:options:);
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_435;
  v24 = _Block_copy(aBlock);

  v25 = v21;

  static DispatchQoS.unspecified.getter();
  v32 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type TextureResource.LoadError and conformance TextureResource.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1C68F3CA0](0, v19, v15, v24);
  _Block_release(v24);

  (*(v31 + 8))(v15, v12);
  (*(v29 + 8))(v19, v30);
}

uint64_t closure #1 in closure #1 in TextureResource.replaceAsyncInternal(using:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17 = a2;
  v18 = BYTE4(a2);
  OpaquePointer.set(options:)(&v17, a1);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  if (RETextureImportOperationRun())
  {
    swift_beginAccess();
    v12 = *(a3 + 24);
    swift_unownedRetainStrong();
    v13 = swift_allocObject();
    v13[2] = a6;
    v13[3] = a1;
    v13[4] = a4;
    v13[5] = a5;

    v14 = partial apply for closure #2 in closure #1 in closure #1 in TextureResource.replaceAsyncInternal(using:options:);
  }

  else
  {
    RERelease();
    swift_beginAccess();
    v15 = *(a3 + 24);
    swift_unownedRetainStrong();
    v13 = swift_allocObject();
    v13[2] = a4;
    v13[3] = a5;
    v13[4] = v11;

    v14 = partial apply for closure #1 in closure #1 in closure #1 in TextureResource.replaceAsyncInternal(using:options:);
  }

  __Engine.asyncOnEngineQueue(_:)(v14, v13);
}

void closure #1 in closure #1 in closure #1 in TextureResource.replaceAsyncInternal(using:options:)(void (*a1)(void *, uint64_t), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 16);
  v6 = v5 == 0;
  if (v5)
  {
    v7 = *(a3 + 16);
  }

  else
  {
    v7 = 0x206563616C706552;
  }

  if (v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0xEE0064656C696166;
  }

  lazy protocol witness table accessor for type TextureResource.TextureImportOperationError and conformance TextureResource.TextureImportOperationError();
  v9 = swift_allocError();
  *v10 = v7;
  *(v10 + 8) = v8;
  *(v10 + 16) = v6;
  a1(v9, 1);
}

uint64_t closure #2 in closure #1 in closure #1 in TextureResource.replaceAsyncInternal(using:options:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void))
{
  TextureResource.replaceWith(importOperation:)();
  a3(a1, 0);

  return RERelease();
}

uint64_t TextureResource.copy(to:)(void *a1)
{
  if (*(v1 + 24))
  {
    lazy protocol witness table accessor for type TextureResource.CopyError and conformance TextureResource.CopyError();
    swift_allocError();
    v3 = 3;
LABEL_8:
    *v2 = v3;
    return swift_willThrow();
  }

  v5 = [a1 width];
  v6 = *(v1 + 16);
  RETextureAssetGetSize();
  if (v5 != v7 || (v8 = [a1 height], RETextureAssetGetSize(), v8 != v9))
  {
    lazy protocol witness table accessor for type TextureResource.CopyError and conformance TextureResource.CopyError();
    swift_allocError();
    v3 = 1;
    goto LABEL_8;
  }

  if (([a1 usage] & 2) == 0)
  {
    lazy protocol witness table accessor for type TextureResource.CopyError and conformance TextureResource.CopyError();
    swift_allocError();
    v3 = 2;
    goto LABEL_8;
  }

  v11 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  result = outlined init with copy of [String : String](v11 + 40, &v15, &_s10RealityKit15__RenderService_pSgMd, &_s10RealityKit15__RenderService_pSgMR);
  if (!v16)
  {
    __break(1u);
    return result;
  }

  outlined init with take of ForceEffectBase(&v15, v17);
  v12 = v18;
  v13 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  (*(v13 + 24))(v12, v13);
  v14 = RETextureAssetCopyToDestination();
  result = __swift_destroy_boxed_opaque_existential_1(v17);
  if ((v14 & 1) == 0)
  {
    lazy protocol witness table accessor for type TextureResource.CopyError and conformance TextureResource.CopyError();
    swift_allocError();
    v3 = 0;
    goto LABEL_8;
  }

  return result;
}

uint64_t TextureResource_copyAsync_mainActorIsolationEscape_UNSAFE(resource:to:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v8 - 8);
  v9 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v22 = *(v12 - 8);
  v23 = v12;
  v13 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = specialized static __ServiceLocator.shared.getter();
  v17 = *(*(v16 + 168) + 16);
  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = a2;
  v18[4] = v16;
  v18[5] = a3;
  v18[6] = a4;
  aBlock[4] = partial apply for closure #1 in TextureResource_copyAsync_mainActorIsolationEscape_UNSAFE(resource:to:completionHandler:);
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_419;
  v19 = _Block_copy(aBlock);
  swift_retain_n();
  v20 = v17;

  swift_unknownObjectRetain();

  static DispatchQoS.unspecified.getter();
  v25 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type TextureResource.LoadError and conformance TextureResource.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1C68F3CA0](0, v15, v11, v19);
  _Block_release(v19);

  (*(v24 + 8))(v11, v8);
  (*(v22 + 8))(v15, v23);
}

uint64_t closure #1 in static TextureResource.builtinTexture(named:)(void *a1)
{
  String.utf8CString.getter();
  v2 = REBuiltinTextureAssetDescriptorCreate();

  if (v2 && (v3 = a1[3], v4 = a1[4], __swift_project_boxed_opaque_existential_1(a1, v3), (*(v4 + 32))(v3, v4), v5 = REAssetHandleCreateWithAssetDescriptor(), REAssetHandleLoadNow(), (REAssetHandleIsLoaded() & 1) != 0))
  {
    type metadata accessor for TextureResource();
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = 0;
    RERetain();
    REAssetSetSwiftObject();
    RERelease();
    RERelease();
    return v6;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t static TextureResource.__texture(from:)()
{
  v0 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v0 + 120, v6);
  v1 = v7;
  v2 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v2 + 32))(v1, v2);
  v3 = REAssetManagerTextureMemoryAssetCreateWithMTLTexture();
  __swift_destroy_boxed_opaque_existential_1(v6);
  if (v3)
  {
    REAssetHandleLoadNow();
    type metadata accessor for TextureResource();
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    *(v4 + 24) = 0;
    RERetain();
    REAssetSetSwiftObject();
    RERelease();
    return v4;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t static TextureResource.__texture(from:label:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v4 + 120, v18);
  v5 = v19;
  v6 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  (*(v6 + 32))(v5, v6);
  v7 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of [String : String](v7 + 40, &v13, &_s10RealityKit15__RenderService_pSgMd, &_s10RealityKit15__RenderService_pSgMR);
  if (v14)
  {
    outlined init with take of ForceEffectBase(&v13, v15);
    v8 = v16;
    v9 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (*(v9 + 24))(v8, v9);
    if (a3)
    {
      String.utf8CString.getter();
    }

    v10 = REAssetManagerTextureMemoryAssetCreateWithCGImage();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v15);
    __swift_destroy_boxed_opaque_existential_1(v18);
    if (v10)
    {
      REAssetHandleLoadNow();
      type metadata accessor for TextureResource();
      v11 = swift_allocObject();
      *(v11 + 16) = v10;
      *(v11 + 24) = 0;
      RERetain();
      REAssetSetSwiftObject();
      RERelease();
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t key path setter for TextureResource.Drawable.drawableQueue : TextureResource.Drawable(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;
}

uint64_t TextureResource.Drawable.drawableQueue.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
}

id TextureResource.Drawable.texture.getter()
{
  v1 = *(v0 + 16);
  Texture = REDrawableGetTexture();

  return Texture;
}

uint64_t TextureResource.Drawable.deinit()
{
  v1 = *(v0 + 16);
  RERelease();
  v2 = *(v0 + 24);

  return v0;
}

uint64_t TextureResource.Drawable.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  RERelease();
  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

unint64_t protocol witness for LocalizedError.errorDescription.getter in conformance TextureResource.DrawableQueue.InitError()
{
  if (*v0)
  {
    result = 0xD000000000000019;
  }

  else
  {
    result = 0xD0000000000000A8;
  }

  *v0;
  return result;
}

double TextureResource.DrawableQueue.Descriptor.init(pixelFormat:width:height:usage:mipmapsMode:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a5;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = v6;
  result = 7.83295339e-242;
  *(a6 + 40) = xmmword_1C189FFA0;
  *(a6 + 56) = 0;
  return result;
}

uint64_t TextureResource.DrawableQueue.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  TextureResource.DrawableQueue.init(_:)(a1);
  return v2;
}

uint64_t TextureResource.DrawableQueue.init(_:)(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  *(v2 + 16) = *a1;
  *(v2 + 24) = v4;
  *(v2 + 32) = v6;
  *(v2 + 40) = v5;
  *(v2 + 48) = v7;
  *(v2 + 49) = *(a1 + 33);
  *(v2 + 52) = *(a1 + 36);
  *(v2 + 56) = v8;
  *(v2 + 64) = v9;
  *(v2 + 72) = v10;
  *(v2 + 88) = 1;
  *(v2 + 76) = 1065353216;
  v11 = Duration.components.getter();
  Duration.components.getter();
  v13 = v12 * 1.0e-18 + v11;
  *(v2 + 76) = v13;
  v14 = vdupq_n_s64(v3);
  if ((vmaxv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_s64(xmmword_1F40E3F88, v14), vceqq_s64(unk_1F40E3F98, v14)), vuzp1q_s32(vceqq_s64(xmmword_1F40E3FA8, v14), vceqq_s64(unk_1F40E3FB8, v14))))) & 1) == 0 && (vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_s64(xmmword_1F40E3FC8, v14), vceqq_s64(unk_1F40E3FD8, v14)), xmmword_1C189FFB0)) & 0xF) == 0 && qword_1F40E3FE8 != v3)
  {
    lazy protocol witness table accessor for type TextureResource.DrawableQueue.InitError and conformance TextureResource.DrawableQueue.InitError();
    swift_allocError();
    *v16 = 0;
    swift_willThrow();
LABEL_18:
    type metadata accessor for TextureResource.DrawableQueue();
    swift_deallocPartialClassInstance();
    return v2;
  }

  v17 = specialized static __ServiceLocator.shared.getter();

  result = RETextureDrawableQueueDescriptorCreate();
  if (!result)
  {
LABEL_17:
    lazy protocol witness table accessor for type TextureResource.DrawableQueue.InitError and conformance TextureResource.DrawableQueue.InitError();
    swift_allocError();
    *v22 = 1;
    swift_willThrow();

    goto LABEL_18;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (HIDWORD(v4))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  result = RETextureDrawableQueueDescriptorSetWidth();
  if ((v6 & 0x8000000000000000) != 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (HIDWORD(v6))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  RETextureDrawableQueueDescriptorSetHeight();
  RETextureDrawableQueueDescriptorSetPixelFormat();
  RETextureDrawableQueueDescriptorSetTextureUsage();
  RETextureDrawableQueueDescriptorSetMipMapMode();
  swift_beginAccess();
  if (MEMORY[0x1C68FE2C0](*(v17 + 16)))
  {
    RETextureDrawableQueueDescriptorSetShareable();
    RETextureDrawableQueueDescriptorSetPresentsWithNextUpdate();
    RETextureDrawableQueueDescriptorSetResourceOptions();
  }

  swift_beginAccess();
  result = outlined init with copy of [String : String](v17 + 40, &v23, &_s10RealityKit15__RenderService_pSgMd, &_s10RealityKit15__RenderService_pSgMR);
  if (v24)
  {
    outlined init with take of ForceEffectBase(&v23, v25);
    v19 = v26;
    v20 = v27;
    __swift_project_boxed_opaque_existential_1(v25, v26);
    (*(v20 + 24))(v19, v20);
    v21 = RETextureDrawableQueueCreateWithDescriptor();
    __swift_destroy_boxed_opaque_existential_1(v25);
    RERelease();
    if (v21)
    {

      *(v2 + 80) = v21;
      return v2;
    }

    goto LABEL_17;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t TextureResource.DrawableQueue.Descriptor.timeout.getter()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t TextureResource.DrawableQueue.deinit()
{
  v1 = *(v0 + 80);
  RERelease();
  return v0;
}

uint64_t TextureResource.DrawableQueue.__deallocating_deinit()
{
  v1 = *(v0 + 80);
  RERelease();

  return swift_deallocClassInstance();
}

uint64_t TextureResource.DrawableQueue.nextDrawable()()
{
  swift_beginAccess();
  v1 = *(v0 + 80);
  if (*(v0 + 88) != 1)
  {
    NextDrawable = RETextureDrawableQueueCreateNextDrawable();
    if (NextDrawable)
    {
      goto LABEL_3;
    }

LABEL_5:
    lazy protocol witness table accessor for type TextureResource.DrawableQueue.NextDrawableError and conformance TextureResource.DrawableQueue.NextDrawableError();
    v4 = swift_allocError();
    swift_willThrow();
    return v4;
  }

  v2 = *(v0 + 76);
  NextDrawable = RETextureDrawableQueueCreateNextDrawableWithTimeout();
  if (!NextDrawable)
  {
    goto LABEL_5;
  }

LABEL_3:
  type metadata accessor for TextureResource.Drawable();
  v4 = swift_allocObject();
  *(v4 + 16) = NextDrawable;
  *(v4 + 24) = v0;

  return v4;
}

uint64_t TextureResource.DrawableQueue.nextDrawableWithTimeoutAndPollingInterval(timeout:pollingInterval:)()
{
  v1 = *(v0 + 80);
  NextDrawableWithTimeoutAndPollingInterval = RETextureDrawableQueueCreateNextDrawableWithTimeoutAndPollingInterval();
  if (NextDrawableWithTimeoutAndPollingInterval)
  {
    v3 = NextDrawableWithTimeoutAndPollingInterval;
    type metadata accessor for TextureResource.Drawable();
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    *(v4 + 24) = v0;
  }

  else
  {
    lazy protocol witness table accessor for type TextureResource.DrawableQueue.NextDrawableError and conformance TextureResource.DrawableQueue.NextDrawableError();
    v4 = swift_allocError();
    swift_willThrow();
  }

  return v4;
}

uint64_t TextureResource.DrawableQueue.allowsNextDrawableTimeout.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 88) = a1;
  return result;
}

uint64_t TextureResource.replace(withDrawables:)(uint64_t a1)
{
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;

  v4 = *(v1 + 16);
  v5 = *(a1 + 80);
  v6 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v6 + 120, v10);
  v7 = v11;
  v8 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  (*(v8 + 32))(v7, v8);
  RETextureAssetReplaceDrawableQueue();
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

Swift::OpaquePointer_optional __swiftcall TextureResource.Compression.toCoreASTCOptions()()
{
  v1 = *v0;
  if ((v1 & 0xFE00) == 0x400)
  {
    v2 = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C1897FC0;
    v2 = *MEMORY[0x1E6998F38];
    if (*MEMORY[0x1E6998F38])
    {
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 40) = v5;
      v10 = v1;
      v6 = specialized static TextureResource.Compression.ASTCBlockSize.toCore(_:)(&v10);
      v7 = MEMORY[0x1E69E72F0];
      *(inited + 72) = MEMORY[0x1E69E72F0];
      *(inited + 48) = v6;
      v2 = *MEMORY[0x1E6998F40];
      if (*MEMORY[0x1E6998F40])
      {
        *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(inited + 88) = v8;
        *(inited + 120) = v7;
        *(inited + 96) = (v1 >> 8) + 1;
        v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
        swift_arrayDestroy();
        v2 = v9;
        goto LABEL_9;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

LABEL_9:
  result.value._rawValue = v2;
  result.is_nil = v3;
  return result;
}

uint64_t closure #1 in TextureResource_copyAsync_mainActorIsolationEscape_UNSAFE(resource:to:completionHandler:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  TextureResource.copy(to:)(a2);
  swift_beginAccess();
  v8 = *(a3 + 24);
  swift_unownedRetainStrong();
  v9 = swift_allocObject();
  *(v9 + 16) = a4;
  *(v9 + 24) = a5;

  __Engine.asyncOnEngineQueue(_:)(partial apply for closure #1 in closure #1 in TextureResource_copyAsync_mainActorIsolationEscape_UNSAFE(resource:to:completionHandler:), v9);
}

uint64_t TextureResource.init(contentsOf:withName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for URL();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[9] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[10] = v9;
  v4[11] = v8;

  return MEMORY[0x1EEE6DFA0](TextureResource.init(contentsOf:withName:), v9, v8);
}

uint64_t TextureResource.init(contentsOf:withName:)()
{
  (*(*(v0 + 56) + 16))(*(v0 + 64), *(v0 + 16), *(v0 + 48));
  *(v0 + 120) = 83886597;
  *(v0 + 124) = 0;
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = TextureResource.init(contentsOf:withName:);
  v2 = *(v0 + 64);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 24);

  return TextureResource.init(contentsOf:withName:options:)(v2, v5, v3, v0 + 120);
}

{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[2];

  (*(v4 + 8))(v5, v3);

  v6 = v0[1];
  v7 = v0[14];

  return v6(v7);
}

{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[2];

  (*(v4 + 8))(v5, v3);

  v6 = v0[1];
  v7 = v0[13];

  return v6();
}

uint64_t TextureResource.init(contentsOf:withName:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v7 = v4[10];
    v8 = v4[11];
    v9 = TextureResource.init(contentsOf:withName:);
  }

  else
  {
    v4[14] = a1;
    v7 = v4[10];
    v8 = v4[11];
    v9 = TextureResource.init(contentsOf:withName:);
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t TextureResource.init(contentsOf:withName:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 40) = a3;
  *(v5 + 48) = v4;
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  v7 = type metadata accessor for URL();
  *(v5 + 56) = v7;
  v8 = *(v7 - 8);
  *(v5 + 64) = v8;
  *(v5 + 72) = *(v8 + 64);
  *(v5 + 80) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  *(v5 + 88) = swift_task_alloc();
  HIDWORD(v10) = *a4;
  LODWORD(v10) = *a4;
  *(v5 + 184) = v10 >> 16;
  *(v5 + 188) = *(a4 + 4);
  *(v5 + 96) = type metadata accessor for MainActor();
  *(v5 + 104) = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 112) = v12;
  *(v5 + 120) = v11;

  return MEMORY[0x1EEE6DFA0](TextureResource.init(contentsOf:withName:options:), v12, v11);
}

uint64_t TextureResource.init(contentsOf:withName:options:)()
{
  HIDWORD(v1) = *(v0 + 184);
  LODWORD(v1) = HIDWORD(v1);
  v27 = *(v0 + 188);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  v25 = *(v0 + 40);
  v26 = *(v0 + 48);
  v8 = *(v0 + 24);
  v24 = *(v0 + 32);
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  (*(v7 + 16))(v4, v8, v6);
  v10 = static MainActor.shared.getter();
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = (v5 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  *(v13 + 16) = v10;
  *(v13 + 24) = v14;
  (*(v7 + 32))(v13 + v11, v4, v6);
  v15 = v13 + v12;
  *v15 = v24;
  *(v15 + 8) = v25;
  *(v15 + 16) = v1 >> 16;
  *(v15 + 20) = v27;
  *(v13 + ((v12 + 28) & 0xFFFFFFFFFFFFFFF8)) = v26;
  v17 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC10RealityKit15TextureResourceC_Tt2g5Tm(0, 0, v2, &async function pointer to partial apply for closure #1 in TextureResource.init(contentsOf:withName:options:), v13, v16, type metadata accessor for TextureResource);
  *(v0 + 128) = v17;
  v18 = *(MEMORY[0x1E69E86A8] + 4);
  v19 = swift_task_alloc();
  *(v0 + 136) = v19;
  v20 = type metadata accessor for TextureResource();
  *(v0 + 144) = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v19 = v0;
  v19[1] = TextureResource.init(contentsOf:withName:options:);
  v22 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v0 + 16, v17, v20, v21, v22);
}

{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 152) = v0;

  v6 = *(v2 + 120);
  v7 = *(v2 + 112);
  if (v0)
  {
    v8 = TextureResource.init(contentsOf:withName:options:);
  }

  else
  {
    v8 = TextureResource.init(contentsOf:withName:options:);
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

{
  v0[20] = v0[2];
  v1 = swift_task_alloc();
  v0[21] = v1;
  *v1 = v0;
  v1[1] = TextureResource.init(contentsOf:withName:options:);

  return specialized RequestLoadable.awaitForResourceSharing()();
}

{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = v0;

  v5 = *(v2 + 120);
  v6 = *(v2 + 112);
  if (v0)
  {
    v7 = TextureResource.init(contentsOf:withName:options:);
  }

  else
  {
    v7 = TextureResource.init(contentsOf:withName:options:);
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

{
  v1 = v0[20];
  v2 = v0[18];
  v3 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[3];

  v9 = *(v1 + 16);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = 0;
  RERetain();
  REAssetSetSwiftObject();

  (*(v7 + 8))(v8, v6);

  v11 = v0[1];

  return v11(v10);
}

{
  v1 = v0[13];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[3];

  (*(v3 + 8))(v4, v2);
  v5 = v0[19];
  v7 = v0[10];
  v6 = v0[11];

  v8 = v0[1];

  return v8();
}

{
  v1 = v0[20];
  v2 = v0[13];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[3];

  (*(v4 + 8))(v5, v3);
  v6 = v0[22];
  v8 = v0[10];
  v7 = v0[11];

  v9 = v0[1];

  return v9();
}

uint64_t closure #1 in TextureResource.init(contentsOf:withName:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[2] = a1;
  v8[3] = a4;
  v8[8] = type metadata accessor for MainActor();
  v8[9] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[10] = v10;
  v8[11] = v9;

  return MEMORY[0x1EEE6DFA0](closure #1 in TextureResource.init(contentsOf:withName:options:), v10, v9);
}

uint64_t closure #1 in TextureResource.init(contentsOf:withName:options:)()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v13 = *(v0 + 24);
  v5 = static MainActor.shared.getter();
  *(v0 + 96) = v5;
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  *(v6 + 16) = v13;
  *(v6 + 32) = v4;
  *(v6 + 40) = v3;
  *(v6 + 44) = BYTE4(v3) & 1;
  *(v6 + 48) = v2;
  v7 = *(MEMORY[0x1E69E8920] + 4);
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  v9 = type metadata accessor for TextureResource();
  *v8 = v0;
  v8[1] = closure #1 in TextureResource.init(contentsOf:withName:options:);
  v10 = *(v0 + 16);
  v11 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE38](v10, v5, v11, 0xD000000000000022, 0x80000001C18DFA70, partial apply for closure #1 in closure #1 in TextureResource.init(contentsOf:withName:options:), v6, v9);
}

{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v10 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = v2[10];
    v5 = v2[11];
    v6 = closure #1 in TextureResource.init(contentsOf:withName:options:);
  }

  else
  {
    v7 = v2[12];
    v8 = v2[13];

    v4 = v2[10];
    v5 = v2[11];
    v6 = closure #1 in TextureResource.init(contentsOf:withName:options:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[9];

  v4 = v0[1];
  v5 = v0[15];

  return v4();
}

uint64_t closure #1 in closure #1 in TextureResource.init(contentsOf:withName:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = a1;
  v38 = a6;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v43 = *(v8 - 8);
  v44 = v8;
  v9 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v42 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v40 = *(v11 - 8);
  v41 = v11;
  v12 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v39 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10RealityKit15TextureResourceCs5Error_pGMd, &_sScCy10RealityKit15TextureResourceCs5Error_pGMR);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v37 - v17;
  v19 = specialized static __ServiceLocator.shared.getter();

  URL._bridgeToObjectiveC()(v20);
  v22 = v21;
  swift_beginAccess();
  v23 = *(v19 + 16);
  v24 = RETextureImportOperationCreateWithURL();

  if (a4)
  {
    String.utf8CString.getter();
    RETextureImportOperationSetAssetResourceName();
  }

  (*(v15 + 16))(v18, v37, v14);
  v25 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v26 = swift_allocObject();
  (*(v15 + 32))(v26 + v25, v18, v14);
  v27 = specialized static __ServiceLocator.shared.getter();
  v28 = *(*(v27 + 168) + 16);
  v29 = swift_allocObject();
  *(v29 + 16) = v24;
  *(v29 + 24) = a5;
  *(v29 + 28) = BYTE4(a5) & 1;
  *(v29 + 32) = v27;
  *(v29 + 40) = partial apply for closure #2 in closure #1 in closure #1 in TextureResource.init(contentsOf:withName:options:);
  v37 = v26;
  *(v29 + 48) = v26;
  *(v29 + 56) = closure #1 in closure #1 in closure #1 in TextureResource.init(contentsOf:withName:options:);
  v30 = v38;
  *(v29 + 64) = 0;
  *(v29 + 72) = v30;
  *(v29 + 80) = 1;
  aBlock[4] = closure #1 in static TextureResource.createTextureResourceAsync(for:options:disableNetworkSync:buildError:fulfill:)partial apply;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_413;
  v31 = _Block_copy(aBlock);
  swift_retain_n();
  v32 = v28;

  v33 = v39;
  static DispatchQoS.unspecified.getter();
  v45 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type TextureResource.LoadError and conformance TextureResource.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v34 = v42;
  v35 = v44;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1C68F3CA0](0, v33, v34, v31);
  _Block_release(v31);

  (*(v43 + 8))(v34, v35);
  (*(v40 + 8))(v33, v41);
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC10RealityKit15TextureResourceC_Tt2g5Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t))
{
  v28[0] = a4;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v28 - v14;
  outlined init with copy of [String : String](a3, v28 - v14, &_sScPSgMd, &_sScPSgMR);
  v16 = type metadata accessor for TaskPriority();
  v17 = *(v16 - 8);
  v18 = (*(v17 + 48))(v15, 1, v16);

  if (v18 == 1)
  {
    outlined destroy of BodyTrackingComponent?(v15, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v17 + 8))(v15, v16);
  }

  v19 = *(a5 + 16);
  v20 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v19)
  {
    swift_getObjectType();
    v21 = dispatch thunk of Actor.unownedExecutor.getter();
    v23 = v22;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v24 = String.utf8CString.getter() + 32;
      a7(a6);

      if (v23 | v21)
      {
        v29[0] = 0;
        v29[1] = 0;
        v25 = v29;
        v29[2] = v21;
        v29[3] = v23;
      }

      else
      {
        v25 = 0;
      }

      v28[1] = 7;
      v28[2] = v25;
      v28[3] = v24;
      v26 = swift_task_create();

      outlined destroy of BodyTrackingComponent?(a3, &_sScPSgMd, &_sScPSgMR);

      return v26;
    }
  }

  else
  {
    v21 = 0;
    v23 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of BodyTrackingComponent?(a3, &_sScPSgMd, &_sScPSgMR);
  a7(a6);
  if (v23 | v21)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v21;
    v29[7] = v23;
  }

  return swift_task_create();
}

uint64_t specialized RequestLoadable.awaitForResourceSharing()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x1EEE6DFA0](specialized RequestLoadable.awaitForResourceSharing(), 0, 0);
}

{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
  v2 = swift_allocObject();
  v0[3] = v2;
  *(v2 + 16) = xmmword_1C1887600;
  *(v2 + 56) = type metadata accessor for TextureResource();
  *(v2 + 64) = &protocol witness table for TextureResource;
  *(v2 + 32) = v1;

  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v2;
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = specialized RequestLoadable.awaitForResourceSharing();
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD00000000000001BLL, 0x80000001C18DF8A0, closure #1 in static RequestLoadableUtilities.awaitForResourceSharing(_:)partial apply, v3, v6);
}

{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v8 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = specialized RequestLoadable.awaitForResourceSharing();
  }

  else
  {
    v5 = *(v2 + 24);
    v6 = *(v2 + 32);

    v4 = specialized RequestLoadable.awaitForResourceSharing();
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  *(v1 + 16) = v0;
  return MEMORY[0x1EEE6DFA0](specialized RequestLoadable.awaitForResourceSharing(), 0, 0);
}

{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
  v2 = swift_allocObject();
  v0[3] = v2;
  *(v2 + 16) = xmmword_1C1887600;
  *(v2 + 56) = type metadata accessor for __MaterialResource();
  *(v2 + 64) = &protocol witness table for __MaterialResource;
  *(v2 + 32) = v1;

  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v2;
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = specialized RequestLoadable.awaitForResourceSharing();
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD00000000000001BLL, 0x80000001C18DF8A0, closure #1 in static RequestLoadableUtilities.awaitForResourceSharing(_:)partial apply, v3, v6);
}

{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v8 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = specialized RequestLoadable.awaitForResourceSharing();
  }

  else
  {
    v5 = *(v2 + 24);
    v6 = *(v2 + 32);

    v4 = specialized RequestLoadable.awaitForResourceSharing();
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  return (*(v0 + 8))();
}

{
  v1 = v0[3];
  v2 = v0[4];

  v3 = v0[1];
  v4 = v0[6];

  return v3();
}

{
  *(v1 + 16) = v0;
  return MEMORY[0x1EEE6DFA0](specialized RequestLoadable.awaitForResourceSharing(), 0, 0);
}

{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
  v2 = swift_allocObject();
  v0[3] = v2;
  *(v2 + 16) = xmmword_1C1887600;
  *(v2 + 56) = type metadata accessor for MeshResource();
  *(v2 + 64) = &protocol witness table for MeshResource;
  *(v2 + 32) = v1;

  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v2;
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = specialized RequestLoadable.awaitForResourceSharing();
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD00000000000001BLL, 0x80000001C18DF8A0, closure #1 in static RequestLoadableUtilities.awaitForResourceSharing(_:)partial apply, v3, v6);
}

{
  *(v1 + 16) = v0;
  return MEMORY[0x1EEE6DFA0](specialized RequestLoadable.awaitForResourceSharing(), 0, 0);
}

{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
  v2 = swift_allocObject();
  v0[3] = v2;
  *(v2 + 16) = xmmword_1C1887600;
  *(v2 + 56) = type metadata accessor for ShapeResource();
  *(v2 + 64) = &protocol witness table for ShapeResource;
  *(v2 + 32) = v1;

  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v2;
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = specialized RequestLoadable.awaitForResourceSharing();
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD00000000000001BLL, 0x80000001C18DF8A0, closure #1 in static RequestLoadableUtilities.awaitForResourceSharing(_:)partial apply, v3, v6);
}

{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x1EEE6DFA0](specialized RequestLoadable.awaitForResourceSharing(), 0, 0);
}

{
  v1 = v0[2];
  v2 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
  v3 = swift_allocObject();
  v0[4] = v3;
  *(v3 + 16) = xmmword_1C1887600;
  *(v3 + 56) = v2;
  *(v3 + 64) = &protocol witness table for UnlitMaterialResource;
  *(v3 + 32) = v1;

  v4 = swift_task_alloc();
  v0[5] = v4;
  *(v4 + 16) = v3;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = specialized RequestLoadable.awaitForResourceSharing();
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD00000000000001BLL, 0x80000001C18DF8A0, closure #1 in static RequestLoadableUtilities.awaitForResourceSharing(_:)partial apply, v4, v7);
}

{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v8 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = specialized RequestLoadable.awaitForResourceSharing();
  }

  else
  {
    v5 = *(v2 + 32);
    v6 = *(v2 + 40);

    v4 = specialized RequestLoadable.awaitForResourceSharing();
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v1 = v0[4];
  v2 = v0[5];

  v3 = v0[1];
  v4 = v0[7];

  return v3();
}

{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x1EEE6DFA0](specialized RequestLoadable.awaitForResourceSharing(), 0, 0);
}

{
  v1 = v0[2];
  v2 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
  v3 = swift_allocObject();
  v0[4] = v3;
  *(v3 + 16) = xmmword_1C1887600;
  *(v3 + 56) = v2;
  *(v3 + 64) = &protocol witness table for PhysicallyBasedMaterialResource;
  *(v3 + 32) = v1;

  v4 = swift_task_alloc();
  v0[5] = v4;
  *(v4 + 16) = v3;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = specialized RequestLoadable.awaitForResourceSharing();
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD00000000000001BLL, 0x80000001C18DF8A0, partial apply for closure #1 in static RequestLoadableUtilities.awaitForResourceSharing(_:), v4, v7);
}

{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v8 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = specialized RequestLoadable.awaitForResourceSharing();
  }

  else
  {
    v5 = *(v2 + 32);
    v6 = *(v2 + 40);

    v4 = specialized RequestLoadable.awaitForResourceSharing();
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t TextureResource.init<A>(named:in:options:textureLoader:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 64) = a7;
  *(v8 + 72) = v7;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a2;
  *(v8 + 40) = a3;
  *(v8 + 24) = a1;
  HIDWORD(v9) = *a4;
  LODWORD(v9) = *a4;
  *(v8 + 192) = v9 >> 16;
  *(v8 + 196) = *(a4 + 4);
  *(v8 + 80) = type metadata accessor for MainActor();
  *(v8 + 88) = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 96) = v11;
  *(v8 + 104) = v10;

  return MEMORY[0x1EEE6DFA0](TextureResource.init<A>(named:in:options:textureLoader:), v11, v10);
}

uint64_t TextureResource.init<A>(named:in:options:textureLoader:)()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 40);
  }

  else
  {
    v2 = [objc_opt_self() mainBundle];
    v1 = 0;
  }

  *(v0 + 112) = v1;
  *(v0 + 120) = v2;
  HIDWORD(v3) = *(v0 + 192);
  LODWORD(v3) = HIDWORD(v3);
  v4 = *(v0 + 196);
  v6 = *(v0 + 72);
  v5 = *(v0 + 80);
  v7 = *(v0 + 48);
  v8 = *(v0 + 24);
  v9 = *(v0 + 32);
  v10 = v1;
  v18 = *(v0 + 56);
  v11 = static MainActor.shared.getter();
  *(v0 + 128) = v11;
  v12 = swift_task_alloc();
  *(v0 + 136) = v12;
  *(v12 + 16) = v18;
  *(v12 + 32) = v8;
  *(v12 + 40) = v9;
  *(v12 + 48) = v2;
  *(v12 + 56) = v3 >> 16;
  *(v12 + 60) = v4;
  *(v12 + 64) = v7;
  *(v12 + 72) = v6;
  v13 = *(MEMORY[0x1E69E8920] + 4);
  v14 = swift_task_alloc();
  *(v0 + 144) = v14;
  v15 = type metadata accessor for TextureResource();
  *(v0 + 152) = v15;
  *v14 = v0;
  v14[1] = TextureResource.init<A>(named:in:options:textureLoader:);
  v16 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE38](v0 + 16, v11, v16, 0xD000000000000025, 0x80000001C18DF4A0, partial apply for closure #1 in TextureResource.init<A>(named:in:options:textureLoader:), v12, v15);
}

{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v11 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = v2[12];
    v5 = v2[13];
    v6 = TextureResource.init<A>(named:in:options:textureLoader:);
  }

  else
  {
    v8 = v2[16];
    v7 = v2[17];
    v9 = v2[4];

    v4 = v2[12];
    v5 = v2[13];
    v6 = TextureResource.init<A>(named:in:options:textureLoader:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

{
  v0[21] = v0[2];
  v1 = swift_task_alloc();
  v0[22] = v1;
  *v1 = v0;
  v1[1] = TextureResource.init<A>(named:in:options:textureLoader:);

  return specialized RequestLoadable.awaitForResourceSharing()();
}

{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = v0;

  v5 = *(v2 + 104);
  v6 = *(v2 + 96);
  if (v0)
  {
    v7 = TextureResource.init<A>(named:in:options:textureLoader:);
  }

  else
  {
    v7 = TextureResource.init<A>(named:in:options:textureLoader:);
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

{
  v1 = v0[21];
  v2 = v0[19];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[11];
  v7 = v0[6];
  v6 = v0[7];

  v8 = *(v1 + 16);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = 0;
  RERetain();
  REAssetSetSwiftObject();

  (*(*(v6 - 8) + 8))(v7, v6);
  v10 = v0[1];

  return v10(v9);
}

{
  v1 = v0[16];
  v2 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[11];
  v6 = v0[4];

  v7 = v0[20];
  (*(*(v0[7] - 8) + 8))(v0[6]);
  v8 = v0[1];

  return v8();
}

{
  v1 = *(v0 + 168);
  v2 = *(v0 + 112);
  v3 = *(v0 + 88);

  v4 = *(v0 + 184);
  (*(*(*(v0 + 56) - 8) + 8))(*(v0 + 48));
  v5 = *(v0 + 8);

  return v5();
}

uint64_t closure #1 in TextureResource.init<A>(named:in:options:textureLoader:)(void *a1, uint64_t a2, uint64_t a3, void *a4, unint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9)
{
  v56 = a8;
  v69 = a7;
  v55[1] = a6;
  v65 = a1;
  v66 = a5;
  v57 = type metadata accessor for DispatchWorkItemFlags();
  v62 = *(v57 - 8);
  v12 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v60 = v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for DispatchQoS();
  v59 = *(v61 - 8);
  v14 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v58 = v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10RealityKit15TextureResourceCs5Error_pGMd, &_sScCy10RealityKit15TextureResourceCs5Error_pGMR);
  v16 = *(v64 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v19 = v55 - v18;
  v20 = specialized static __ServiceLocator.shared.getter();

  v21 = a4;
  v22 = specialized static TextureResource.findBundledFileExtension(named:in:)(a2, a3, a4);
  v24 = v23;
  v67 = a2;
  v68 = a3;
  v25 = MEMORY[0x1C68F3280](a2, a3);
  if (v24)
  {
    v26 = MEMORY[0x1C68F3280](v22, v24);
  }

  else
  {
    v26 = 0;
  }

  v27 = v66;
  v63 = v66 & 0x100000000;
  swift_beginAccess();
  v70 = v20;
  v28 = *(v20 + 16);
  v29 = v21;
  v30 = RETextureImportOperationCreateWithBundleResource();

  if (v30)
  {
    v56 = v27 >> 8;
    v31 = swift_allocObject();
    v32 = v68;
    *(v31 + 16) = v67;
    *(v31 + 24) = v32;
    v33 = v64;
    (*(v16 + 16))(v19, v65, v64);
    v34 = (*(v16 + 80) + 16) & ~*(v16 + 80);
    v35 = swift_allocObject();
    v36 = v35 + v34;
    v37 = v35;
    (*(v16 + 32))(v36, v19, v33);

    v38 = specialized static __ServiceLocator.shared.getter();
    v39 = *(*(v38 + 168) + 16);
    v40 = swift_allocObject();
    *(v40 + 16) = v30;
    *(v40 + 24) = v27;
    *(v40 + 25) = v56;
    *(v40 + 26) = WORD1(v27);
    *(v40 + 28) = BYTE4(v63);
    *(v40 + 32) = v38;
    *(v40 + 40) = partial apply for closure #2 in closure #1 in TextureResource.init<A>(named:in:options:textureLoader:);
    v67 = v37;
    *(v40 + 48) = v37;
    *(v40 + 56) = partial apply for closure #1 in closure #1 in TextureResource.init<A>(named:in:options:textureLoader:);
    v41 = v69;
    *(v40 + 64) = v31;
    *(v40 + 72) = v41;
    *(v40 + 80) = 0;
    aBlock[4] = partial apply for closure #1 in static TextureResource.createTextureResourceAsync(for:options:disableNetworkSync:buildError:fulfill:);
    aBlock[5] = v40;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_388;
    v42 = _Block_copy(aBlock);
    swift_retain_n();
    v43 = v39;

    v44 = v58;
    static DispatchQoS.unspecified.getter();
    v71 = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type TextureResource.LoadError and conformance TextureResource.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    v45 = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v46 = v60;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1C68F3CA0](0, v44, v46, v42);
    _Block_release(v42);

    (*(v62 + 8))(v46, v45);
    (*(v59 + 8))(v44, v61);
  }

  else
  {
    v61 = v27 >> 16;
    v62 = a9;
    LODWORD(aBlock[0]) = v27;
    v47 = v64;
    v48 = HIDWORD(v63);
    BYTE4(aBlock[0]) = BYTE4(v63);
    (*(v16 + 16))(v19, v65, v64);
    v49 = (*(v16 + 80) + 29) & ~*(v16 + 80);
    v65 = v29;
    v50 = (v17 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
    v51 = swift_allocObject();
    *(v51 + 16) = v70;
    *(v51 + 24) = v27;
    *(v51 + 26) = v61;
    *(v51 + 28) = v48;
    (*(v16 + 32))(v51 + v49, v19, v47);
    *(v51 + v50) = v69;
    v52 = v62;
    v53 = *(v62 + 16);

    v53(v67, v68, v65, aBlock, partial apply for closure #3 in closure #1 in TextureResource.init<A>(named:in:options:textureLoader:), v51, v56, v52);
  }
}

uint64_t closure #2 in closure #1 in closure #1 in TextureResource.init(contentsOf:withName:options:)(void *a1, char a2)
{
  if (a2)
  {
    v2 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10RealityKit15TextureResourceCs5Error_pGMd, &_sScCy10RealityKit15TextureResourceCs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10RealityKit15TextureResourceCs5Error_pGMd, &_sScCy10RealityKit15TextureResourceCs5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t closure #3 in closure #1 in TextureResource.init<A>(named:in:options:textureLoader:)(void *a1, int a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = a2;
  v22 = a4 >> 8;
  v23 = a4 >> 16;
  v24 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10RealityKit15TextureResourceCs5Error_pGMd, &_sScCy10RealityKit15TextureResourceCs5Error_pGMR);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  swift_beginAccess();
  v20 = *(a3 + 24);
  swift_unownedRetainStrong();
  (*(v11 + 16))(v14, a5, v10);
  v15 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  v17 = v21 & 1;
  *(v16 + 24) = v21 & 1;
  *(v16 + 25) = a4;
  v18 = v23;
  *(v16 + 26) = v22;
  *(v16 + 27) = v18;
  *(v16 + 29) = BYTE4(a4) & 1;
  *(v16 + 32) = a3;
  (*(v11 + 32))(v16 + v15, v14, v10);
  *(v16 + ((v12 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v24;
  outlined copy of Result<[Entity], Error>(a1, v17, MEMORY[0x1E69E7D68]);

  __Engine.asyncOnEngineQueue(_:)(partial apply for closure #1 in closure #3 in closure #1 in TextureResource.init<A>(named:in:options:textureLoader:), v16);
}

uint64_t closure #1 in closure #3 in closure #1 in TextureResource.init<A>(named:in:options:textureLoader:)(id a1, char a2, uint64_t a3, uint64_t a4)
{
  if ((a2 & 1) == 0)
  {
    LODWORD(v14[0]) = a3;
    BYTE4(v14[0]) = BYTE4(a3) & 1;
    v7 = swift_unknownObjectRetain();
    specialized static TextureResource.createTextureAssetDataFor(texture:options:)(v7, v14);
    swift_beginAccess();
    outlined init with copy of __REAssetService(a4 + 120, v14);
    v8 = v15;
    v9 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    (*(v9 + 32))(v8, v9);
    TextureAssetFromData = REAssetManagerCreateTextureAssetFromData();
    __swift_destroy_boxed_opaque_existential_1(v14);
    RERelease();
    if (REAssetGetSwiftObject())
    {
      type metadata accessor for TextureResource();
      v11 = swift_dynamicCastClass();
      if (v11)
      {
LABEL_8:
        RERelease();
        outlined consume of Result<ModelEntity, Error>(a1, 0, MEMORY[0x1E69E7D60]);
        v14[0] = v11;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10RealityKit15TextureResourceCs5Error_pGMd, &_sScCy10RealityKit15TextureResourceCs5Error_pGMR);
        return CheckedContinuation.resume(returning:)();
      }

      swift_unknownObjectRelease();
    }

    type metadata accessor for TextureResource();
    v11 = swift_allocObject();
    *(v11 + 16) = TextureAssetFromData;
    *(v11 + 24) = 0;
    RERetain();
    REAssetSetSwiftObject();
    goto LABEL_8;
  }

  v14[0] = a1;
  v5 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    outlined consume of Result<ModelEntity, Error>(a1, 1, MEMORY[0x1E69E7D60]);
  }

  else
  {
    swift_allocError();
    *v13 = a1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10RealityKit15TextureResourceCs5Error_pGMd, &_sScCy10RealityKit15TextureResourceCs5Error_pGMR);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t TextureResource.addToLoadRequest(_:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 16);
  return REAssetLoadRequestAddAsset();
}

uint64_t _s10RealityKit15TextureResourceC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5(uint64_t a1)
{
  v1[5] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine22AsyncThrowingPublisherVy10RealityKit11LoadRequestCyAD15TextureResourceCGGMd, &_s7Combine22AsyncThrowingPublisherVy10RealityKit11LoadRequestCyAD15TextureResourceCGGMR);
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCyAF15TextureResourceCG_GMd, &_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCyAF15TextureResourceCG_GMR);
  v1[9] = v5;
  v6 = *(v5 - 8);
  v1[10] = v6;
  v7 = *(v6 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = type metadata accessor for MainActor();
  v1[13] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[14] = v9;
  v1[15] = v8;

  return MEMORY[0x1EEE6DFA0](_s10RealityKit15TextureResourceC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5TY0_, v9, v8);
}

uint64_t _s10RealityKit15TextureResourceC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5TY0_()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  v0[2] = v0[5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA15TextureResourceCGMd, &_s10RealityKit11LoadRequestCyAA15TextureResourceCGMR);
  v7 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type LoadRequest<TextureResource> and conformance LoadRequest<A>, &_s10RealityKit11LoadRequestCyAA15TextureResourceCGMd, &_s10RealityKit11LoadRequestCyAA15TextureResourceCGMR);
  MEMORY[0x1C68F2ED0](v6, v7);
  AsyncThrowingPublisher.makeAsyncIterator()();
  (*(v4 + 8))(v3, v5);
  v0[16] = static MainActor.shared.getter();
  v8 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type AsyncThrowingPublisher<LoadRequest<TextureResource>>.Iterator and conformance AsyncThrowingPublisher<A>.Iterator, &_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCyAF15TextureResourceCG_GMd, &_s7Combine22AsyncThrowingPublisherV8IteratorVy10RealityKit11LoadRequestCyAF15TextureResourceCG_GMR);
  v9 = *(MEMORY[0x1E69E85A8] + 4);
  v10 = swift_task_alloc();
  v0[17] = v10;
  *v10 = v0;
  v10[1] = _s10RealityKit15TextureResourceC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5TQ1_;
  v11 = v0[11];
  v12 = v0[9];

  return MEMORY[0x1EEE6D8C8](v0 + 3, v12, v8);
}

uint64_t _s10RealityKit15TextureResourceC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5TQ1_()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = v0;

  v5 = *(v2 + 128);
  if (v0)
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = dispatch thunk of Actor.unownedExecutor.getter();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = _s10RealityKit15TextureResourceC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5TY4_;
  }

  else
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = dispatch thunk of Actor.unownedExecutor.getter();
      v8 = v10;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = _s10RealityKit15TextureResourceC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5TY2_;
  }

  return MEMORY[0x1EEE6DFA0](v9, v6, v8);
}

uint64_t _s10RealityKit15TextureResourceC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5TY2_()
{
  v1 = v0[16];

  v0[19] = v0[3];
  v2 = v0[14];
  v3 = v0[15];

  return MEMORY[0x1EEE6DFA0](_s10RealityKit15TextureResourceC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5TY3_, v2, v3);
}

uint64_t _s10RealityKit15TextureResourceC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5TY3_()
{
  v1 = v0[19];
  v2 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];

  (*(v4 + 8))(v3, v5);
  if (v1)
  {
    v6 = v0[19];
    v7 = v0[11];
    v8 = v0[8];

    v9 = v0[1];

    return v9(v6);
  }

  else
  {
    type metadata accessor for CancellationError();
    lazy protocol witness table accessor for type TextureResource.LoadError and conformance TextureResource.LoadError(&lazy protocol witness table cache variable for type CancellationError and conformance CancellationError, MEMORY[0x1E69E8550]);
    swift_allocError();
    CancellationError.init()();
    swift_willThrow();
    v11 = v0[11];
    v12 = v0[8];

    v13 = v0[1];

    return v13();
  }
}

uint64_t _s10RealityKit15TextureResourceC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5TY4_()
{
  v1 = v0[16];
  v0[4] = v0[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  swift_willThrowTypedImpl();

  v2 = v0[14];
  v3 = v0[15];

  return MEMORY[0x1EEE6DFA0](_s10RealityKit15TextureResourceC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5TY5_, v2, v3);
}

uint64_t _s10RealityKit15TextureResourceC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5TY5_()
{
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];

  (*(v3 + 8))(v2, v4);
  v5 = v0[18];
  v6 = v0[11];
  v7 = v0[8];

  v8 = v0[1];

  return v8();
}

uint64_t protocol witness for RequestLoadable.addToLoadRequest(_:) in conformance TextureResource(uint64_t a1)
{
  v2 = *(*v1 + 16);
  v3 = *(a1 + 16);
  return REAssetLoadRequestAddAsset();
}

uint64_t static TextureResource.generate(from:named:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 56) = a3;
  *(v5 + 64) = v4;
  *(v5 + 40) = a1;
  *(v5 + 48) = a2;
  HIDWORD(v6) = *a4;
  LODWORD(v6) = *a4;
  *(v5 + 128) = v6 >> 16;
  *(v5 + 132) = *(a4 + 4);
  type metadata accessor for MainActor();
  *(v5 + 72) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 80) = v8;
  *(v5 + 88) = v7;

  return MEMORY[0x1EEE6DFA0](static TextureResource.generate(from:named:options:), v8, v7);
}

uint64_t static TextureResource.generate(from:named:options:)()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  v3 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v4 = *(v3 + 16);

  v5 = RETextureImportOperationCreateWithCGImage();
  if (v1)
  {
    v6 = *(v0 + 48);
    v7 = *(v0 + 56);
    String.utf8CString.getter();
    RETextureImportOperationSetAssetResourceName();
  }

  v8 = *(v0 + 132);
  HIDWORD(v9) = *(v0 + 128);
  LODWORD(v9) = HIDWORD(v9);
  v10 = *(v0 + 64);

  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v5;
  *(v11 + 32) = v9 >> 16;
  *(v11 + 36) = v8;
  *(v11 + 37) = 1;
  *(v11 + 40) = closure #1 in static TextureResource.generateAsyncInternal(from:named:options:);
  *(v11 + 48) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA15TextureResourceCGMd, &_s10RealityKit11LoadRequestCyAA15TextureResourceCGMR);
  v12 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit15TextureResourceCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit15TextureResourceCs5Error_pGSgGMR);
  v13 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v13 + 16) = v14;
  *(v13 + 24) = 0;
  *(v13 + 32) = -1;
  *(v12 + 16) = v13;
  v15 = swift_allocObject();
  v15[2] = closure #1 in static TextureResource.createTextureLoadRequest(forRetained:options:disableNetworkSync:buildError:)partial apply;
  v15[3] = v11;
  v15[4] = v13;
  v15[5] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit15TextureResourceCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit15TextureResourceCs5Error_pGMR);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();

  *(v12 + 24) = Future.init(_:)();
  v19 = specialized LoadRequest<A>.thenWaitForResourceSharing()();
  *(v0 + 96) = v19;

  v20 = swift_task_alloc();
  *(v0 + 104) = v20;
  *v20 = v0;
  v20[1] = static TextureResource.generate(from:named:options:);

  return _s10RealityKit15TextureResourceC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5(v19);
}

{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[15];

  return v2(v3);
}

{
  v1 = v0[12];
  v2 = v0[9];

  v3 = v0[1];
  v4 = v0[14];

  return v3();
}

uint64_t static TextureResource.generate(from:named:options:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v7 = v4[10];
    v8 = v4[11];
    v9 = static TextureResource.generate(from:named:options:);
  }

  else
  {
    v10 = v4[12];

    v4[15] = a1;
    v7 = v4[10];
    v8 = v4[11];
    v9 = static TextureResource.generate(from:named:options:);
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t TextureResource.replace(using:options:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 40) = a1;
  *(v3 + 48) = v2;
  HIDWORD(v4) = *a2;
  LODWORD(v4) = *a2;
  *(v3 + 104) = v4 >> 16;
  *(v3 + 108) = *(a2 + 4);
  type metadata accessor for MainActor();
  *(v3 + 56) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 64) = v6;
  *(v3 + 72) = v5;

  return MEMORY[0x1EEE6DFA0](TextureResource.replace(using:options:), v6, v5);
}

uint64_t TextureResource.replace(using:options:)()
{
  v1 = *(v0 + 108);
  HIDWORD(v2) = *(v0 + 104);
  LODWORD(v2) = HIDWORD(v2);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v6 = *(v5 + 16);
  v7 = RETextureImportOperationCreateWithCGImage();
  v8 = specialized static __ServiceLocator.shared.getter();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  *(v9 + 32) = v2 >> 16;
  *(v9 + 36) = v1;
  *(v9 + 40) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA15TextureResourceCGMd, &_s10RealityKit11LoadRequestCyAA15TextureResourceCGMR);
  v10 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit15TextureResourceCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit15TextureResourceCs5Error_pGSgGMR);
  v11 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v11 + 16) = v12;
  *(v11 + 24) = 0;
  *(v11 + 32) = -1;
  *(v10 + 16) = v11;
  v13 = swift_allocObject();
  v13[2] = closure #1 in TextureResource.replaceAsyncInternal(using:options:)partial apply;
  v13[3] = v9;
  v13[4] = v11;
  v13[5] = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit15TextureResourceCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit15TextureResourceCs5Error_pGMR);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  swift_retain_n();

  *(v10 + 24) = Future.init(_:)();
  v17 = specialized LoadRequest<A>.thenWaitForResourceSharing()();
  *(v0 + 80) = v17;

  v18 = swift_task_alloc();
  *(v0 + 88) = v18;
  *v18 = v0;
  v18[1] = TextureResource.replace(using:options:);

  return _s10RealityKit15TextureResourceC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5(v17);
}

{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v9 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = v2[8];
    v5 = v2[9];
    v6 = TextureResource.replace(using:options:);
  }

  else
  {
    v7 = v2[10];

    v4 = v2[8];
    v5 = v2[9];
    v6 = TextureResource.replace(using:options:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[10];
  v2 = v0[7];

  v3 = v0[1];
  v4 = v0[12];

  return v3();
}

uint64_t TextureResource.copy(to:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for MainActor();
  v2[5] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[6] = v4;
  v2[7] = v3;

  return MEMORY[0x1EEE6DFA0](TextureResource.copy(to:), v4, v3);
}

uint64_t TextureResource.copy(to:)()
{
  v1 = v0[2].i64[0];
  v9 = v0[1];
  v2 = static MainActor.shared.getter();
  v0[4].i64[0] = v2;
  v3 = swift_task_alloc();
  v0[4].i64[1] = v3;
  v3[1] = vextq_s8(v9, v9, 8uLL);
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  v0[5].i64[0] = v5;
  *v5 = v0;
  v5[1] = TextureResource.copy(to:);
  v6 = MEMORY[0x1E69E85E0];
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v5, v2, v6, 0x3A6F742879706F63, 0xE900000000000029, partial apply for closure #1 in TextureResource.copy(to:), v3, v7);
}

{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v10 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = v2[6];
    v5 = v2[7];
    v6 = TextureResource.copy(to:);
  }

  else
  {
    v7 = v2[8];
    v8 = v2[9];

    v4 = v2[6];
    v5 = v2[7];
    v6 = TextureResource.copy(to:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[5];

  v4 = v0[1];
  v5 = v0[11];

  return v4();
}

uint64_t closure #1 in TextureResource.copy(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v15 - v10;
  (*(v7 + 16))(&v15 - v10, a1, v6, v9);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v11, v6);
  TextureResource_copyAsync_mainActorIsolationEscape_UNSAFE(resource:to:completionHandler:)(a2, a3, partial apply for closure #1 in closure #1 in TextureResource.copy(to:), v13);
}

uint64_t closure #1 in closure #1 in TextureResource.copy(to:)(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t static TextureResource.texture2DArray(slices:named:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x1E69E9840];
  *(v5 + 64) = a3;
  *(v5 + 72) = v4;
  *(v5 + 48) = a1;
  *(v5 + 56) = a2;
  HIDWORD(v6) = *a4;
  LODWORD(v6) = *a4;
  *(v5 + 136) = v6 >> 16;
  *(v5 + 140) = *(a4 + 4);
  type metadata accessor for MainActor();
  *(v5 + 80) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 88) = v7;
  *(v5 + 96) = v8;
  v9 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](static TextureResource.texture2DArray(slices:named:options:), v7, v8);
}

uint64_t static TextureResource.texture2DArray(slices:named:options:)()
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 48);
  v2 = specialized static __ServiceLocator.shared.getter();
  *(v0 + 40) = 0;
  type metadata accessor for CGImageRef(0);

  isa = Array._bridgeToObjectiveC()().super.isa;
  swift_beginAccess();
  v4 = *(v2 + 16);
  v5 = RETextureImportOperationCreateFromImageArray();

  if (v5)
  {
    if (*(v0 + 64))
    {
      v6 = *(v0 + 56);
      String.utf8CString.getter();
      RETextureImportOperationSetAssetResourceName();
    }

    v7 = *(v0 + 140);
    HIDWORD(v8) = *(v0 + 136);
    LODWORD(v8) = HIDWORD(v8);
    v9 = *(v0 + 72);

    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    *(v10 + 24) = v5;
    *(v10 + 32) = v8 >> 16;
    *(v10 + 36) = v7;
    *(v10 + 37) = 1;
    *(v10 + 40) = closure #1 in static TextureResource.generateAsyncInternal(from:named:options:);
    *(v10 + 48) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA15TextureResourceCGMd, &_s10RealityKit11LoadRequestCyAA15TextureResourceCGMR);
    v11 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit15TextureResourceCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit15TextureResourceCs5Error_pGSgGMR);
    v12 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    *(v12 + 16) = v13;
    *(v12 + 24) = 0;
    *(v12 + 32) = -1;
    *(v11 + 16) = v12;
    v14 = swift_allocObject();
    v14[2] = closure #1 in static TextureResource.createTextureLoadRequest(forRetained:options:disableNetworkSync:buildError:)partial apply;
    v14[3] = v10;
    v14[4] = v12;
    v14[5] = 0;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit15TextureResourceCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit15TextureResourceCs5Error_pGMR);
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    swift_allocObject();

    *(v11 + 24) = Future.init(_:)();
    v18 = specialized LoadRequest<A>.thenWaitForResourceSharing()();
    *(v0 + 104) = v18;

    v19 = swift_task_alloc();
    *(v0 + 112) = v19;
    *v19 = v0;
    v19[1] = static TextureResource.texture2DArray(slices:named:options:);
    v20 = *MEMORY[0x1E69E9840];

    return _s10RealityKit15TextureResourceC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5(v18);
  }

  else
  {
    v22 = *(v0 + 80);

    v23 = *(v0 + 40);

    if (v23)
    {
    }

    type metadata accessor for TextureResource.LoadError();
    lazy protocol witness table accessor for type TextureResource.LoadError and conformance TextureResource.LoadError(&lazy protocol witness table cache variable for type TextureResource.LoadError and conformance TextureResource.LoadError, type metadata accessor for TextureResource.LoadError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v24 = *(v0 + 8);
    v25 = *MEMORY[0x1E69E9840];

    return v24();
  }
}

{
  v8 = *MEMORY[0x1E69E9840];
  v1 = v0[16];
  v2 = v0[10];

  v3 = *(v1 + 16);
  type metadata accessor for TextureResource();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = 0;
  RERetain();
  REAssetSetSwiftObject();

  v5 = v0[1];
  v6 = *MEMORY[0x1E69E9840];

  return v5(v4);
}

{
  v7 = *MEMORY[0x1E69E9840];
  v1 = v0[13];
  v2 = v0[10];

  v3 = v0[15];
  v4 = v0[1];
  v5 = *MEMORY[0x1E69E9840];

  return v4();
}

{
  v29 = v0;
  v1 = *(v0 + 109);
  v2 = *(v0 + 104);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 106);
  v6 = *(v0 + 16);
  v27[0] = *(v0 + 107);
  v27[1] = v2;
  v28 = v1;
  v7 = specialized static TextureResource.createImportOperation(fromSlices:named:options:textureType:)(v6, v5 & 1, v3, v4, v27, 3);
  if ((v9 & 0x100) != 0)
  {
    v25 = *(v0 + 48);
    outlined consume of Result<OpaquePointer, TextureResource.TextureImportOperationError>(v7, v8, v9, 1);

    type metadata accessor for TextureResource.LoadError();
    lazy protocol witness table accessor for type TextureResource.LoadError and conformance TextureResource.LoadError(&lazy protocol witness table cache variable for type TextureResource.LoadError and conformance TextureResource.LoadError, type metadata accessor for TextureResource.LoadError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v26 = *(v0 + 8);

    return v26();
  }

  else
  {
    v10 = *(v0 + 104);
    v11 = *(v0 + 107);
    v12 = *(v0 + 40);
    v13 = v7;
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    *(v14 + 24) = v13;
    *(v14 + 32) = v11;
    *(v14 + 34) = v10;
    *(v14 + 36) = v1;
    *(v14 + 37) = 1;
    *(v14 + 40) = closure #1 in static TextureResource.generateAsyncInternal(from:named:options:);
    *(v14 + 48) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA15TextureResourceCGMd, &_s10RealityKit11LoadRequestCyAA15TextureResourceCGMR);
    v15 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit15TextureResourceCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit15TextureResourceCs5Error_pGSgGMR);
    v16 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
    v17 = swift_allocObject();
    *(v17 + 16) = 0;
    *(v16 + 16) = v17;
    *(v16 + 24) = 0;
    *(v16 + 32) = -1;
    *(v15 + 16) = v16;
    v18 = swift_allocObject();
    v18[2] = closure #1 in static TextureResource.createTextureLoadRequest(forRetained:options:disableNetworkSync:buildError:)partial apply;
    v18[3] = v14;
    v18[4] = v16;
    v18[5] = 0;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit15TextureResourceCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit15TextureResourceCs5Error_pGMR);
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();

    *(v15 + 24) = Future.init(_:)();
    v22 = specialized LoadRequest<A>.thenWaitForResourceSharing()();
    *(v0 + 72) = v22;

    v23 = swift_task_alloc();
    *(v0 + 80) = v23;
    *v23 = v0;
    v23[1] = static TextureResource.texture2DArray(slices:named:options:);

    return _s10RealityKit15TextureResourceC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5(v22);
  }
}

{
  v1 = v0[12];
  v2 = v0[6];

  v3 = *(v1 + 16);
  type metadata accessor for TextureResource();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = 0;
  RERetain();
  REAssetSetSwiftObject();

  v5 = v0[1];

  return v5(v4);
}

{
  v1 = v0[9];
  v2 = v0[6];

  v3 = v0[11];
  v4 = v0[1];

  return v4();
}

uint64_t static TextureResource.texture2DArray(slices:named:options:)(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = *v2;
  v5 = *(*v2 + 112);
  v13 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v6 = v4[11];
    v7 = v4[12];
    v8 = static TextureResource.texture2DArray(slices:named:options:);
  }

  else
  {
    v9 = v4[13];

    v4[16] = a1;
    v6 = v4[11];
    v7 = v4[12];
    v8 = static TextureResource.texture2DArray(slices:named:options:);
  }

  v10 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v8, v6, v7);
}

{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v7 = v4[7];
    v8 = v4[8];
    v9 = static TextureResource.texture2DArray(slices:named:options:);
  }

  else
  {
    v10 = v4[9];

    v4[12] = a1;
    v7 = v4[7];
    v8 = v4[8];
    v9 = static TextureResource.texture2DArray(slices:named:options:);
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t static TextureResource.texture2DArray(slices:named:options:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 32) = a4;
  *(v6 + 40) = v5;
  *(v6 + 106) = a2;
  *(v6 + 16) = a1;
  *(v6 + 24) = a3;
  *(v6 + 107) = *a5;
  *(v6 + 104) = *(a5 + 2);
  *(v6 + 109) = *(a5 + 4);
  type metadata accessor for MainActor();
  *(v6 + 48) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 56) = v8;
  *(v6 + 64) = v7;

  return MEMORY[0x1EEE6DFA0](static TextureResource.texture2DArray(slices:named:options:), v8, v7);
}

uint64_t static TextureResource.cube(slices:named:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x1E69E9840];
  *(v5 + 64) = a3;
  *(v5 + 72) = v4;
  *(v5 + 48) = a1;
  *(v5 + 56) = a2;
  HIDWORD(v6) = *a4;
  LODWORD(v6) = *a4;
  *(v5 + 136) = v6 >> 16;
  *(v5 + 140) = *(a4 + 4);
  type metadata accessor for MainActor();
  *(v5 + 80) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 88) = v7;
  *(v5 + 96) = v8;
  v9 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](static TextureResource.cube(slices:named:options:), v7, v8);
}

uint64_t static TextureResource.cube(slices:named:options:)()
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 48);
  v2 = specialized static __ServiceLocator.shared.getter();
  if (v1 >> 62)
  {
    if (*(v0 + 48) < 0)
    {
      v25 = *(v0 + 48);
    }

    if (__CocoaSet.count.getter() == 6)
    {
      goto LABEL_3;
    }

LABEL_14:
    v26 = *(v0 + 80);

    goto LABEL_15;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) != 6)
  {
    goto LABEL_14;
  }

LABEL_3:
  v3 = *(v0 + 48);
  *(v0 + 40) = 0;
  type metadata accessor for CGImageRef(0);

  isa = Array._bridgeToObjectiveC()().super.isa;
  swift_beginAccess();
  v5 = *(v2 + 16);
  v6 = RETextureImportOperationCreateFromImageArray();

  if (v6)
  {
    if (*(v0 + 64))
    {
      v7 = *(v0 + 56);
      String.utf8CString.getter();
      RETextureImportOperationSetAssetResourceName();
    }

    v8 = *(v0 + 140);
    HIDWORD(v9) = *(v0 + 136);
    LODWORD(v9) = HIDWORD(v9);
    v10 = *(v0 + 72);

    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = v6;
    *(v11 + 32) = v9 >> 16;
    *(v11 + 36) = v8;
    *(v11 + 37) = 1;
    *(v11 + 40) = closure #1 in static TextureResource.generateAsyncInternal(from:named:options:);
    *(v11 + 48) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA15TextureResourceCGMd, &_s10RealityKit11LoadRequestCyAA15TextureResourceCGMR);
    v12 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit15TextureResourceCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit15TextureResourceCs5Error_pGSgGMR);
    v13 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    *(v13 + 16) = v14;
    *(v13 + 24) = 0;
    *(v13 + 32) = -1;
    *(v12 + 16) = v13;
    v15 = swift_allocObject();
    v15[2] = closure #1 in static TextureResource.createTextureLoadRequest(forRetained:options:disableNetworkSync:buildError:)partial apply;
    v15[3] = v11;
    v15[4] = v13;
    v15[5] = 0;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit15TextureResourceCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit15TextureResourceCs5Error_pGMR);
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_allocObject();

    *(v12 + 24) = Future.init(_:)();
    v19 = specialized LoadRequest<A>.thenWaitForResourceSharing()();
    *(v0 + 104) = v19;

    v20 = swift_task_alloc();
    *(v0 + 112) = v20;
    *v20 = v0;
    v20[1] = static TextureResource.cube(slices:named:options:);
    v21 = *MEMORY[0x1E69E9840];

    return _s10RealityKit15TextureResourceC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5(v19);
  }

  v23 = *(v0 + 80);

  v24 = *(v0 + 40);

  if (v24)
  {
  }

LABEL_15:
  type metadata accessor for TextureResource.LoadError();
  lazy protocol witness table accessor for type TextureResource.LoadError and conformance TextureResource.LoadError(&lazy protocol witness table cache variable for type TextureResource.LoadError and conformance TextureResource.LoadError, type metadata accessor for TextureResource.LoadError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  v27 = *(v0 + 8);
  v28 = *MEMORY[0x1E69E9840];

  return v27();
}

{
  v2 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9840];

  return static TextureResource.texture2DArray(slices:named:options:)();
}

{
  v2 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9840];

  return static TextureResource.texture2DArray(slices:named:options:)();
}

uint64_t static TextureResource.cube(slices:named:options:)(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = *v2;
  v5 = *(*v2 + 112);
  v13 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v6 = v4[11];
    v7 = v4[12];
    v8 = static TextureResource.cube(slices:named:options:);
  }

  else
  {
    v9 = v4[13];

    v4[16] = a1;
    v6 = v4[11];
    v7 = v4[12];
    v8 = static TextureResource.cube(slices:named:options:);
  }

  v10 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v8, v6, v7);
}

uint64_t static TextureResource.texture3D(slices:named:options:)(unint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v6 = *(a4 + 4);
  v10 = *a4;
  v11 = v6;
  v7 = specialized static TextureResource.createTextureResourceSync(fromSlices:named:options:textureType:)(a1, 0, a2, a3, &v10, 7);
  if (!v5)
  {
    v8 = v7[2];
    type metadata accessor for TextureResource();
    v4 = swift_allocObject();
    *(v4 + 16) = v8;
    *(v4 + 24) = 0;
    RERetain();
    REAssetSetSwiftObject();
  }

  return v4;
}

uint64_t static TextureResource.texture3D(slices:named:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x1E69E9840];
  *(v5 + 64) = a3;
  *(v5 + 72) = v4;
  *(v5 + 48) = a1;
  *(v5 + 56) = a2;
  HIDWORD(v6) = *a4;
  LODWORD(v6) = *a4;
  *(v5 + 136) = v6 >> 16;
  *(v5 + 140) = *(a4 + 4);
  type metadata accessor for MainActor();
  *(v5 + 80) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 88) = v7;
  *(v5 + 96) = v8;
  v9 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](static TextureResource.texture3D(slices:named:options:), v7, v8);
}

uint64_t static TextureResource.texture3D(slices:named:options:)()
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 48);
  v2 = specialized static __ServiceLocator.shared.getter();
  *(v0 + 40) = 0;
  type metadata accessor for CGImageRef(0);

  isa = Array._bridgeToObjectiveC()().super.isa;
  swift_beginAccess();
  v4 = *(v2 + 16);
  v5 = RETextureImportOperationCreateFromImageArray();

  if (v5)
  {
    if (*(v0 + 64))
    {
      v6 = *(v0 + 56);
      String.utf8CString.getter();
      RETextureImportOperationSetAssetResourceName();
    }

    v7 = *(v0 + 140);
    HIDWORD(v8) = *(v0 + 136);
    LODWORD(v8) = HIDWORD(v8);
    v9 = *(v0 + 72);

    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    *(v10 + 24) = v5;
    *(v10 + 32) = v8 >> 16;
    *(v10 + 36) = v7;
    *(v10 + 37) = 1;
    *(v10 + 40) = closure #1 in static TextureResource.generateAsyncInternal(from:named:options:);
    *(v10 + 48) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA15TextureResourceCGMd, &_s10RealityKit11LoadRequestCyAA15TextureResourceCGMR);
    v11 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit15TextureResourceCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit15TextureResourceCs5Error_pGSgGMR);
    v12 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    *(v12 + 16) = v13;
    *(v12 + 24) = 0;
    *(v12 + 32) = -1;
    *(v11 + 16) = v12;
    v14 = swift_allocObject();
    v14[2] = closure #1 in static TextureResource.createTextureLoadRequest(forRetained:options:disableNetworkSync:buildError:)partial apply;
    v14[3] = v10;
    v14[4] = v12;
    v14[5] = 0;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit15TextureResourceCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit15TextureResourceCs5Error_pGMR);
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    swift_allocObject();

    *(v11 + 24) = Future.init(_:)();
    v18 = specialized LoadRequest<A>.thenWaitForResourceSharing()();
    *(v0 + 104) = v18;

    v19 = swift_task_alloc();
    *(v0 + 112) = v19;
    *v19 = v0;
    v19[1] = static TextureResource.cube(slices:named:options:);
    v20 = *MEMORY[0x1E69E9840];

    return _s10RealityKit15TextureResourceC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5(v18);
  }

  else
  {
    v22 = *(v0 + 80);

    v23 = *(v0 + 40);

    if (v23)
    {
    }

    type metadata accessor for TextureResource.LoadError();
    lazy protocol witness table accessor for type TextureResource.LoadError and conformance TextureResource.LoadError(&lazy protocol witness table cache variable for type TextureResource.LoadError and conformance TextureResource.LoadError, type metadata accessor for TextureResource.LoadError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v24 = *(v0 + 8);
    v25 = *MEMORY[0x1E69E9840];

    return v24();
  }
}

BOOL static TextureResource.Compression.== infix(_:_:)(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >> 8;
  if (v2 >> 8 != 4)
  {
    if (v4 == 5)
    {
      if ((v3 & 0xFF00) == 0x500)
      {
        return 1;
      }
    }

    else if ((v3 & 0xFE00) != 0x400)
    {
      v5 = (v3 ^ v2);
      if (v4 == v3 >> 8 && v5 == 0)
      {
        return 1;
      }
    }

    return 0;
  }

  return (v3 & 0xFF00) == 0x400;
}

uint64_t TextureResource.Compression.hash(into:)()
{
  v1 = *v0;
  if ((v1 >> 8) == 4)
  {
    v2 = 0;
  }

  else if ((v1 >> 8) == 5)
  {
    v2 = 1;
  }

  else
  {
    MEMORY[0x1C68F4C10](2);
    MEMORY[0x1C68F4C10](v1);
    v2 = v1 >> 8;
  }

  return MEMORY[0x1C68F4C10](v2);
}

Swift::Int TextureResource.Compression.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if ((v1 >> 8) == 4)
  {
    v2 = 0;
  }

  else if ((v1 >> 8) == 5)
  {
    v2 = 1;
  }

  else
  {
    MEMORY[0x1C68F4C10](2);
    MEMORY[0x1C68F4C10](v1);
    v2 = v1 >> 8;
  }

  MEMORY[0x1C68F4C10](v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TextureResource.Compression.Kind()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if ((v1 >> 8) == 4)
  {
    v2 = 0;
  }

  else if ((v1 >> 8) == 5)
  {
    v2 = 1;
  }

  else
  {
    MEMORY[0x1C68F4C10](2);
    MEMORY[0x1C68F4C10](v1);
    v2 = v1 >> 8;
  }

  MEMORY[0x1C68F4C10](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TextureResource.Compression.Kind()
{
  v1 = *v0;
  if ((v1 >> 8) == 4)
  {
    v2 = 0;
  }

  else if ((v1 >> 8) == 5)
  {
    v2 = 1;
  }

  else
  {
    MEMORY[0x1C68F4C10](2);
    MEMORY[0x1C68F4C10](v1);
    v2 = v1 >> 8;
  }

  return MEMORY[0x1C68F4C10](v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TextureResource.Compression.Kind()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if ((v1 >> 8) == 4)
  {
    v2 = 0;
  }

  else if ((v1 >> 8) == 5)
  {
    v2 = 1;
  }

  else
  {
    MEMORY[0x1C68F4C10](2);
    MEMORY[0x1C68F4C10](v1);
    v2 = v1 >> 8;
  }

  MEMORY[0x1C68F4C10](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance TextureResource.Compression(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >> 8;
  if (v2 >> 8 == 4)
  {
    return (v3 & 0xFF00) == 0x400;
  }

  if (v4 != 5)
  {
    if ((v3 & 0xFE00) != 0x400)
    {
      v5 = (v3 ^ v2);
      if (v4 == v3 >> 8 && v5 == 0)
      {
        return 1;
      }
    }

    return 0;
  }

  return (v3 & 0xFF00) == 0x500;
}

uint64_t TextureResource.init(cubeFromEquirectangular:named:quality:faceSize:options:)(void *a1, int a2, uint64_t a3, char *a4, Swift::Int_optional a5, int *a6)
{
  v7 = a3;
  v9 = *a6;
  v10 = *(a6 + 4);
  v19 = *a4;
  v17 = v9;
  v18 = v10;
  a5.is_nil &= 1u;
  v11 = static TextureResource.createCubeWithCompletion(fromEquirectangular:named:quality:faceSize:options:)(a1, a2, a3, &v19, a5, &v17);
  if (v6)
  {
  }

  else
  {
    v12 = v11;

    v14 = *(v12(v13) + 16);
    type metadata accessor for TextureResource();
    v7 = swift_allocObject();
    *(v7 + 16) = v14;
    *(v7 + 24) = 0;
    RERetain();
    REAssetSetSwiftObject();
    RequestLoadable.enforceResourceSharingBeforeECSCommits()();
    if (v15)
    {
    }
  }

  return v7;
}

uint64_t static TextureResource.createCubeWithCompletion(fromEquirectangular:named:quality:faceSize:options:)(int a1, int a2, uint64_t a3, char *a4, Swift::Int_optional skyboxCubeDimension, char *a6)
{
  v7 = v6;
  v51 = *MEMORY[0x1E69E9840];
  v9 = *a4;
  v10 = *a6;
  v11 = a6[1];
  v12 = *(a6 + 1);
  LOWORD(v44) = 1280;
  BYTE2(v44) = v9;
  v45 = 0;
  v46 = 1;
  v52.is_nil = skyboxCubeDimension.is_nil;
  v52.value = skyboxCubeDimension.value;
  v41 = EnvironmentResource.CreateOptions.toCoreImageBasedLightCompilationOptions(skyboxCubeDimension:)(v52);
  v13 = dword_1C18A0BB8[v10];
  v14 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v15 = *(v14 + 16);

  v16 = RETextureImportOperationCreateWithCGImage();
  RETextureImportOperationSetSemantic();
  RETextureImportOperationSetMipmapMode();
  if (a3)
  {
    String.utf8CString.getter();
    RETextureImportOperationSetAssetResourceName();
  }

  if ((v12 & 0xFF00) == 0x400)
  {
    RETextureImportOperationSetCompressionType();
  }

  v50 = 0;
  if (!RETextureImportOperationCreateAssetData())
  {
    v44 = 0;
    v45 = 0xE000000000000000;
    _StringGuts.grow(_:)(75);
    MEMORY[0x1C68F3410](0xD00000000000002FLL, 0x80000001C18DF9F0);
    v21 = MEMORY[0x1C68F4250](v16);
    MEMORY[0x1C68F3410](v21);

    MEMORY[0x1C68F3410](0xD00000000000001ALL, 0x80000001C18DFA20);
    lazy protocol witness table accessor for type EnvironmentResource.LoadError and conformance EnvironmentResource.LoadError();
    swift_allocError();
    *v37 = 0;
    *(v37 + 8) = 0xE000000000000000;
    *(v37 + 16) = 0;
    *(v37 + 24) = 0;
    *(v37 + 32) = 6;
    swift_willThrow();
    goto LABEL_21;
  }

  v49 = 0;
  swift_beginAccess();
  result = outlined init with copy of [String : String](v14 + 40, &v42, &_s10RealityKit15__RenderService_pSgMd, &_s10RealityKit15__RenderService_pSgMR);
  if (v43)
  {
    outlined init with take of ForceEffectBase(&v42, &v44);
    v18 = v47;
    v19 = v48;
    __swift_project_boxed_opaque_existential_1(&v44, v47);
    (*(v19 + 24))(v18, v19);
    if (v41)
    {
      v20.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v20.super.isa = 0;
    }

    v22 = RECreateCubeTextureDataFromLatLong();

    __swift_destroy_boxed_opaque_existential_1(&v44);
    if (v22)
    {
      swift_beginAccess();
      outlined init with copy of __REAssetService(v14 + 120, &v44);
      v24 = v47;
      v23 = v48;
      __swift_project_boxed_opaque_existential_1(&v44, v47);
      (*(v23 + 32))(v24, v23);
      TextureAssetFromData = REAssetManagerCreateTextureAssetFromData();
      __swift_destroy_boxed_opaque_existential_1(&v44);
      RERelease();
      RERelease();
      RERelease();

      LOWORD(v44) = v12;
      v26 = TextureResource.Compression.toCoreASTCOptions()();
      if (v26)
      {
        v27 = v40;
        v28 = static TextureResource.compressTextureWithEngineQueueCompletion(coreTextureAsset:compressOptions:)(TextureAssetFromData, v26);
        v30 = v29;

        if (v7)
        {
LABEL_22:
          v39 = *MEMORY[0x1E69E9840];
          return result;
        }
      }

      else
      {
        v28 = 0;
        v30 = 0;
        v27 = v40;
      }

      v36 = swift_allocObject();
      v36[2] = TextureAssetFromData;
      v36[3] = v28;
      v36[4] = v30;
      v36[5] = v27;
      result = partial apply for specialized closure #1 in static TextureResource.createCubeWithCompletion(fromEquirectangular:named:quality:faceSize:options:);
      goto LABEL_22;
    }

    v31 = v49;
    v44 = 0;
    v45 = 0xE000000000000000;
    _StringGuts.grow(_:)(62);
    MEMORY[0x1C68F3410](0xD000000000000022, 0x80000001C18DFA40);
    v32 = MEMORY[0x1C68F4250](v16);
    MEMORY[0x1C68F3410](v32);

    MEMORY[0x1C68F3410](0xD00000000000001ALL, 0x80000001C18DFA20);
    v33 = v45;
    if (v31)
    {
      v34 = v31;

      v33 = 0;
      v35 = 5;
    }

    else
    {
      v31 = v44;
      v35 = 6;
    }

    lazy protocol witness table accessor for type EnvironmentResource.LoadError and conformance EnvironmentResource.LoadError();
    swift_allocError();
    *v38 = v31;
    *(v38 + 8) = v33;
    *(v38 + 16) = 0;
    *(v38 + 24) = 0;
    *(v38 + 32) = v35;
    swift_willThrow();
    RERelease();
LABEL_21:
    RERelease();

    goto LABEL_22;
  }

  __break(1u);
  return result;
}

uint64_t TextureResource.init(cubeFromEquirectangular:named:quality:faceSize:options:)(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v8 + 40) = a5;
  *(v8 + 48) = v7;
  *(v8 + 114) = a6;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 16) = a1;
  *(v8 + 115) = *a4;
  *(v8 + 116) = *a7;
  *(v8 + 112) = *(a7 + 2);
  *(v8 + 118) = *(a7 + 4);
  type metadata accessor for MainActor();
  *(v8 + 56) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 64) = v10;
  *(v8 + 72) = v9;

  return MEMORY[0x1EEE6DFA0](TextureResource.init(cubeFromEquirectangular:named:quality:faceSize:options:), v10, v9);
}

uint64_t TextureResource.init(cubeFromEquirectangular:named:quality:faceSize:options:)()
{
  v1 = *(v0 + 32);
  v2 = 0x100000000;
  if (!*(v0 + 118))
  {
    v2 = 0;
  }

  v3 = closure #1 in TextureResource.init(cubeFromEquirectangular:named:quality:faceSize:options:)(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 115), *(v0 + 40), *(v0 + 114) & 1, v2 | (*(v0 + 112) << 16) | (*(v0 + 117) << 8) | *(v0 + 116), *(v0 + 48));
  *(v0 + 80) = v3;

  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = TextureResource.init(cubeFromEquirectangular:named:quality:faceSize:options:);

  return _s10RealityKit15TextureResourceC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5(v3);
}

{
  v1 = v0[13];
  v2 = v0[7];
  v3 = v0[2];

  v4 = *(v1 + 16);
  type metadata accessor for TextureResource();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = 0;
  RERetain();
  REAssetSetSwiftObject();

  v6 = v0[1];

  return v6(v5);
}

{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[2];

  v4 = v0[1];
  v5 = v0[12];

  return v4();
}

uint64_t TextureResource.init(cubeFromEquirectangular:named:quality:faceSize:options:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v7 = v4[8];
    v8 = v4[9];
    v9 = TextureResource.init(cubeFromEquirectangular:named:quality:faceSize:options:);
  }

  else
  {
    v10 = v4[10];

    v4[13] = a1;
    v7 = v4[8];
    v8 = v4[9];
    v9 = TextureResource.init(cubeFromEquirectangular:named:quality:faceSize:options:);
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t closure #1 in TextureResource.init(cubeFromEquirectangular:named:quality:faceSize:options:)(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v38 = a8;
  v39 = a3;
  v37 = a6;
  v36 = a5;
  HIDWORD(v35) = a4;
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = specialized static __ServiceLocator.shared.getter();
  v17 = *(*(v16 + 168) + 16);
  swift_beginAccess();
  v18 = *(v16 + 24);
  swift_unownedRetainStrong();
  v19 = *(v18 + 32);

  v20 = v17;
  v21 = v19;

  *v15 = v21;
  (*(v12 + 104))(v15, *MEMORY[0x1E69E8020], v11);
  v22 = v21;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  result = (*(v12 + 8))(v15, v11);
  if (v18)
  {
    v24 = swift_allocObject();
    *(v24 + 16) = a1;
    *(v24 + 24) = a2;
    *(v24 + 32) = v39;
    *(v24 + 40) = BYTE4(v35) & 1;
    *(v24 + 48) = v36;
    *(v24 + 56) = v37 & 1;
    *(v24 + 57) = a7;
    *(v24 + 61) = BYTE4(a7) & 1;
    *(v24 + 64) = v16;
    *(v24 + 72) = v20;
    *(v24 + 80) = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA15TextureResourceCGMd, &_s10RealityKit11LoadRequestCyAA15TextureResourceCGMR);
    v25 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit15TextureResourceCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit15TextureResourceCs5Error_pGSgGMR);
    v26 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    *(v26 + 16) = v27;
    *(v26 + 24) = 0;
    *(v26 + 32) = -1;
    *(v25 + 16) = v26;
    v28 = swift_allocObject();
    v28[2] = partial apply for closure #1 in closure #1 in TextureResource.init(cubeFromEquirectangular:named:quality:faceSize:options:);
    v28[3] = v24;
    v28[4] = v26;
    v28[5] = 0;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit15TextureResourceCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit15TextureResourceCs5Error_pGMR);
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    swift_allocObject();

    v32 = v20;
    v33 = a1;
    *(v25 + 24) = Future.init(_:)();
    v34 = specialized LoadRequest<A>.thenWaitForResourceSharing()();

    return v34;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in closure #1 in TextureResource.init(cubeFromEquirectangular:named:quality:faceSize:options:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8, unint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v37 = a8;
  v36 = a7;
  v35 = a6;
  v42 = a11;
  v38 = a10;
  v39 = a12;
  v32 = a4;
  v33 = a9 >> 8;
  v34 = a9 >> 16;
  v16 = type metadata accessor for DispatchWorkItemFlags();
  v41 = *(v16 - 8);
  v17 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for DispatchQoS();
  v20 = *(v40 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v23 = &v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  *(v24 + 24) = a2;
  v25 = swift_allocObject();
  v26 = v32;
  *(v25 + 16) = a3;
  *(v25 + 24) = v26;
  *(v25 + 32) = a5;
  *(v25 + 40) = v35 & 1;
  *(v25 + 48) = v36;
  *(v25 + 56) = v37 & 1;
  *(v25 + 57) = a9;
  LOWORD(v26) = v34;
  *(v25 + 58) = v33;
  *(v25 + 59) = v26;
  *(v25 + 61) = BYTE4(a9) & 1;
  v27 = v39;
  *(v25 + 64) = v38;
  *(v25 + 72) = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Result<TextureResource, Error>) -> ();
  *(v25 + 80) = v24;
  *(v25 + 88) = v27;
  aBlock[4] = partial apply for doGenerateAsync #1 @Sendable () in closure #1 in closure #1 in TextureResource.init(cubeFromEquirectangular:named:quality:faceSize:options:);
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_359;
  v28 = _Block_copy(aBlock);

  v29 = a3;
  static DispatchQoS.unspecified.getter();
  v43 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type TextureResource.LoadError and conformance TextureResource.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1C68F3CA0](0, v23, v19, v28);
  _Block_release(v28);
  (*(v41 + 8))(v19, v16);
  (*(v20 + 8))(v23, v40);
}

uint64_t doGenerateAsync #1 @Sendable () in closure #1 in closure #1 in TextureResource.init(cubeFromEquirectangular:named:quality:faceSize:options:)(int a1, int a2, uint64_t a3, char a4, Swift::Int_optional a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = BYTE4(a6);
  v16 = a6;
  v18 = a4 & 1;
  a5.is_nil &= 1u;
  v10 = static TextureResource.createCubeWithCompletion(fromEquirectangular:named:quality:faceSize:options:)(a1, a2, a3, &v18, a5, &v16);
  v12 = v11;
  swift_beginAccess();
  v13 = *(a7 + 24);
  swift_unownedRetainStrong();
  v14 = swift_allocObject();
  v14[2] = v10;
  v14[3] = v12;
  v14[4] = a8;
  v14[5] = a9;

  __Engine.asyncOnEngineQueue(_:)(partial apply for closure #1 in doGenerateAsync #1 @Sendable () in closure #1 in closure #1 in TextureResource.init(cubeFromEquirectangular:named:quality:faceSize:options:), v14);
}

uint64_t closure #1 in doGenerateAsync #1 @Sendable () in closure #1 in closure #1 in TextureResource.init(cubeFromEquirectangular:named:quality:faceSize:options:)(void (*a1)(void), uint64_t a2, void (*a3)(uint64_t, void))
{
  a1();

  a3(v4, 0);
}

uint64_t TextureResource.init(cubeFromImage:named:options:)(CGImage *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v8 = *a4;
  v9 = a4[1];
  v10 = *(a4 + 1);
  v11 = a4[4];
  v12 = specialized static TextureResource.sliceCube(cgImage:)(a1);
  if (v4)
  {
  }

  else
  {
    v17[0] = v8;
    v17[1] = v9;
    v18 = v10;
    v19 = v11;
    v14 = *(specialized static TextureResource.createTextureResourceSync(fromSlices:named:options:textureType:)(v12, 0, a2, a3, v17, 5) + 2);
    type metadata accessor for TextureResource();
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 24) = 0;
    RERetain();
    REAssetSetSwiftObject();

    v16 = *(v15 + 16);
    a3 = swift_allocObject();
    *(a3 + 16) = v16;
    *(a3 + 24) = 0;
    RERetain();
    REAssetSetSwiftObject();
  }

  return a3;
}

uint64_t TextureResource.init(cubeFromImage:named:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 111) = *a4;
  *(v5 + 104) = *(a4 + 2);
  *(v5 + 113) = *(a4 + 4);
  type metadata accessor for MainActor();
  *(v5 + 48) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 56) = v7;
  *(v5 + 64) = v6;

  return MEMORY[0x1EEE6DFA0](TextureResource.init(cubeFromImage:named:options:), v7, v6);
}

uint64_t TextureResource.init(cubeFromImage:named:options:)()
{
  v1 = specialized static TextureResource.sliceCube(cgImage:)(*(v0 + 16));
  *(v0 + 72) = v1;
  v2 = *(v0 + 113);
  v3 = *(v0 + 104);
  *(v0 + 106) = *(v0 + 111);
  *(v0 + 108) = v3;
  *(v0 + 110) = v2;
  v4 = v1;
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = TextureResource.init(cubeFromImage:named:options:);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);
  v8 = *(v0 + 24);

  return static TextureResource.cube(slices:named:options:)(v4, v8, v6, v0 + 106);
}

{
  v1 = v0[12];
  v2 = v0[6];
  v3 = v0[2];

  v4 = *(v1 + 16);
  type metadata accessor for TextureResource();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = 0;
  RERetain();
  REAssetSetSwiftObject();

  v6 = v0[1];

  return v6(v5);
}

{
  v1 = v0[6];
  v2 = v0[2];

  v3 = v0[11];
  v4 = v0[1];

  return v4();
}

uint64_t TextureResource.init(cubeFromImage:named:options:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *(*v2 + 32);
  v13 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v7 = v4[9];

    v8 = v4[7];
    v9 = v4[8];
    v10 = TextureResource.init(cubeFromImage:named:options:);
  }

  else
  {
    v11 = v4[9];

    v4[12] = a1;

    v8 = v4[7];
    v9 = v4[8];
    v10 = TextureResource.init(cubeFromImage:named:options:);
  }

  return MEMORY[0x1EEE6DFA0](v10, v8, v9);
}

uint64_t static TextureResource.compressTextureWithEngineQueueCompletion(coreTextureAsset:compressOptions:)(uint64_t a1, uint64_t a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of [String : String](v9 + 40, &v46, &_s10RealityKit15__RenderService_pSgMd, &_s10RealityKit15__RenderService_pSgMR);
  if (!v47)
  {
    __break(1u);
LABEL_31:
    __break(1u);
  }

  outlined init with take of ForceEffectBase(&v46, &v42);
  v10 = v44;
  v11 = v45;
  __swift_project_boxed_opaque_existential_1(&v42, v44);
  v12 = (*(v11 + 24))(v10, v11);
  __swift_destroy_boxed_opaque_existential_1(&v42);
  if (!*MEMORY[0x1E6998F38])
  {
    goto LABEL_31;
  }

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(a2 + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
    v16 = v15;

    if (v16)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  result = *MEMORY[0x1E6998F40];
  if (*MEMORY[0x1E6998F40])
  {
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (!*(a2 + 16))
    {

      goto LABEL_16;
    }

    specialized __RawDictionaryStorage.find<A>(_:)(v18, v19);
    v21 = v20;

    if ((v21 & 1) == 0)
    {
LABEL_16:
      result = 0;
LABEL_17:
      v27 = *MEMORY[0x1E69E9840];
      return result;
    }

LABEL_10:
    RETextureAssetGetPixelFormat();
    v22 = RERenderManagerGetRenderDevice();
    MTLPixelFormatGetInfoForDevice();
    v23 = v43;
    swift_unknownObjectRelease();
    if ((v23 & 0x400) == 0)
    {
      *&v46 = 0;
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      CompressedTextureAssetData = RETextureAssetCreateCompressedTextureAssetData();

      if (CompressedTextureAssetData)
      {
        v26 = RERenderManagerGetRenderDevice();
        RETextureAssetDataGetPixelFormat();
        MTLPixelFormatGetInfoForDevice();
        if (v43 & 0x400) != 0 || ([v26 supportsFamily_])
        {
          swift_unknownObjectRelease();
        }

        else
        {
          v32 = specialized static __ServiceLocator.shared.getter();
          (*(v5 + 16))(v8, *(*(v32 + 168) + 24) + OBJC_IVAR____TtC17RealityFoundation10LoadTracer_logger, v4);
          v33 = Logger.logObject.getter();
          v39 = static os_log_type_t.error.getter();
          v40 = v33;
          if (os_log_type_enabled(v33, v39))
          {
            v34 = swift_slowAlloc();
            v38 = v34;
            *v34 = 0;
            v35 = v40;
            _os_log_impl(&dword_1C1358000, v40, v39, "Compression not applied because ASTC pixel formats are not supported by device. Keeping track of options so later calls to Entity.write() can apply compression.", v34, 2u);
            MEMORY[0x1C6902A30](v38, -1, -1);
            swift_unknownObjectRelease();
          }

          else
          {

            swift_unknownObjectRelease();
          }

          (*(v5 + 8))(v8, v4);
        }

        v36 = swift_allocObject();
        v36[2] = v12;
        v36[3] = a1;
        v37 = v41;
        v36[4] = CompressedTextureAssetData;
        v36[5] = v37;
        result = partial apply for closure #1 in static TextureResource.compressTextureWithEngineQueueCompletion(coreTextureAsset:compressOptions:);
      }

      else
      {
        v28 = v46 == 0;
        if (v46)
        {
          v29 = v46;
        }

        else
        {
          v29 = 0xD00000000000001ALL;
        }

        if (v46)
        {
          v30 = 0;
        }

        else
        {
          v30 = 0x80000001C18DF8C0;
        }

        lazy protocol witness table accessor for type TextureResource.TextureImportOperationError and conformance TextureResource.TextureImportOperationError();
        swift_allocError();
        *v31 = v29;
        *(v31 + 8) = v30;
        *(v31 + 16) = v28;
        result = swift_willThrow();
      }

      goto LABEL_17;
    }

    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in static TextureResource.compressTextureWithEngineQueueCompletion(coreTextureAsset:compressOptions:)()
{
  v3 = *MEMORY[0x1E69E9840];
  if (MEMORY[0x1C68FF210]())
  {
    result = RERelease();
  }

  else
  {
    lazy protocol witness table accessor for type TextureResource.TextureImportOperationError and conformance TextureResource.TextureImportOperationError();
    swift_allocError();
    *v1 = 0xD00000000000001ALL;
    *(v1 + 8) = 0x80000001C18DF8C0;
    *(v1 + 16) = 1;
    result = swift_willThrow();
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t specialized closure #1 in static TextureResource.createCubeWithCompletion(fromEquirectangular:named:quality:faceSize:options:)(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  if (!a2)
  {
LABEL_6:
    if (REAssetGetSwiftObject())
    {
      type metadata accessor for TextureResource();
      a3 = swift_dynamicCastClass();
      if (a3)
      {
LABEL_10:
        RERelease();
        return a3;
      }

      swift_unknownObjectRelease();
    }

    type metadata accessor for TextureResource();
    a3 = swift_allocObject();
    *(a3 + 16) = a1;
    *(a3 + 24) = 0;
    RERetain();
    REAssetSetSwiftObject();
    goto LABEL_10;
  }

  a2(v7);
  if (!v3)
  {
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(a2);
    goto LABEL_6;
  }

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(a2);
  RERelease();
  return a3;
}

uint64_t TextureResource.customMirror.getter()
{
  v1 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18 - v8;
  v19 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C189FFC0;
  *(v10 + 32) = 0x6369746E616D6573;
  *(v10 + 40) = 0xE800000000000000;
  *(v10 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit15TextureResourceC8SemanticOSgMd, &_s10RealityKit15TextureResourceC8SemanticOSgMR);

  TextureResource.semantic.getter((v10 + 48));
  *(v10 + 80) = 0x746867696568;
  *(v10 + 88) = 0xE600000000000000;
  v11 = *(v0 + 16);
  RETextureAssetGetSize();
  v13 = MEMORY[0x1E69E6530];
  *(v10 + 96) = v12;
  *(v10 + 120) = v13;
  *(v10 + 128) = 0x6874646977;
  *(v10 + 136) = 0xE500000000000000;
  RETextureAssetGetSize();
  *(v10 + 144) = v14;
  *(v10 + 168) = v13;
  *(v10 + 176) = 0xD000000000000010;
  *(v10 + 184) = 0x80000001C18DF4D0;
  MipmapLevelCount = RETextureAssetGetMipmapLevelCount();
  *(v10 + 216) = v13;
  *(v10 + 192) = MipmapLevelCount;
  v16 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
  (*(v2 + 104))(v5, *MEMORY[0x1E69E75D8], v1);
  type metadata accessor for TextureResource();
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t TextureResource.DrawableQueue.Descriptor.timeout.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2;
  return result;
}

__n128 (*TextureResource.DrawableQueue.Descriptor.timeout.modify(uint64_t a1))(__n128 *a1)
{
  *(a1 + 16) = v1;
  *a1 = *(v1 + 40);
  return TextureResource.DrawableQueue.Descriptor.timeout.modify;
}

__n128 TextureResource.DrawableQueue.Descriptor.timeout.modify(__n128 *a1)
{
  result = *a1;
  *(a1[1].n128_u64[0] + 40) = *a1;
  return result;
}

uint64_t TextureResource.DrawableQueue.Descriptor.init(pixelFormat:width:height:usage:mipmapsMode:timeout:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v8 = *a5;
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = v8;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  *(a8 + 56) = 0;
  return result;
}

uint64_t TextureResource.init(image:withName:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 56) = a3;
  *(v5 + 64) = v4;
  *(v5 + 40) = a1;
  *(v5 + 48) = a2;
  HIDWORD(v6) = *a4;
  LODWORD(v6) = *a4;
  *(v5 + 128) = v6 >> 16;
  *(v5 + 132) = *(a4 + 4);
  type metadata accessor for MainActor();
  *(v5 + 72) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 80) = v8;
  *(v5 + 88) = v7;

  return MEMORY[0x1EEE6DFA0](TextureResource.init(image:withName:options:), v8, v7);
}

uint64_t TextureResource.init(image:withName:options:)()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  v3 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v4 = *(v3 + 16);

  v5 = RETextureImportOperationCreateWithCGImage();
  if (v1)
  {
    v6 = *(v0 + 48);
    v7 = *(v0 + 56);
    String.utf8CString.getter();
    RETextureImportOperationSetAssetResourceName();
  }

  else
  {
    v8 = *(v0 + 56);
  }

  v9 = *(v0 + 132);
  HIDWORD(v10) = *(v0 + 128);
  LODWORD(v10) = HIDWORD(v10);
  v11 = *(v0 + 64);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v5;
  *(v12 + 32) = v10 >> 16;
  *(v12 + 36) = v9;
  *(v12 + 37) = 1;
  *(v12 + 40) = closure #1 in static TextureResource.generateAsyncInternal(from:named:options:);
  *(v12 + 48) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA15TextureResourceCGMd, &_s10RealityKit11LoadRequestCyAA15TextureResourceCGMR);
  v13 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit15TextureResourceCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit15TextureResourceCs5Error_pGSgGMR);
  v14 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v14 + 16) = v15;
  *(v14 + 24) = 0;
  *(v14 + 32) = -1;
  *(v13 + 16) = v14;
  v16 = swift_allocObject();
  v16[2] = closure #1 in static TextureResource.createTextureLoadRequest(forRetained:options:disableNetworkSync:buildError:)partial apply;
  v16[3] = v12;
  v16[4] = v14;
  v16[5] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit15TextureResourceCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit15TextureResourceCs5Error_pGMR);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();

  *(v13 + 24) = Future.init(_:)();
  v20 = specialized LoadRequest<A>.thenWaitForResourceSharing()();
  *(v0 + 96) = v20;

  v21 = swift_task_alloc();
  *(v0 + 104) = v21;
  *v21 = v0;
  v21[1] = TextureResource.init(image:withName:options:);

  return _s10RealityKit15TextureResourceC0A10FoundationE4loadyxAA11LoadRequestCyxGYaKACRbzlFZAC_Tt0g5(v20);
}

{
  v1 = v0[15];
  v2 = v0[9];
  v3 = v0[5];

  v4 = *(v1 + 16);
  type metadata accessor for TextureResource();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = 0;
  RERetain();
  REAssetSetSwiftObject();

  v6 = v0[1];

  return v6(v5);
}

{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[5];

  v4 = v0[1];
  v5 = v0[14];

  return v4();
}

uint64_t TextureResource.init(image:withName:options:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v7 = v4[10];
    v8 = v4[11];
    v9 = TextureResource.init(image:withName:options:);
  }

  else
  {
    v10 = v4[12];

    v4[15] = a1;
    v7 = v4[10];
    v8 = v4[11];
    v9 = TextureResource.init(image:withName:options:);
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

_BYTE *(*TextureResource.CreateOptions.reduceMemoryPeak.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 4);
  return TextureResource.CreateOptions.reduceMemoryPeak.modify;
}

uint64_t specialized closure #2 in LoadRequest<A>.thenWaitForResourceSharing()(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(void (*)(void), uint64_t), void (*a5)(void (*)(void), uint64_t))
{
  if (result)
  {
    v5 = *(a2 + 16);
    if (!v5)
    {
      __break(1u);
      return result;
    }

    v7 = *(a2 + 24);
    *&v11[0] = result;
    BYTE8(v11[0]) = 1;
    v8 = result;
    a4(v5, v7);
    v9 = v8;
    v5(v11);
    a5(v5, v7);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    memset(v11, 0, sizeof(v11));
    v10 = result;
    swift_beginAccess();
    outlined assign with take of Any?(v11, v10 + 16);
    swift_endAccess();
  }

  return result;
}

uint64_t specialized closure #2 in LoadRequest<A>.thenWaitForResourceSharing()(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = *(a2 + 16);
    if (!v2)
    {
      __break(1u);
      return result;
    }

    v3 = *(a2 + 24);
    *&v14[0] = result;
    v4 = result;
    _ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGWOi0_(v14);
    v11 = v14[4];
    v12 = v14[5];
    v13[0] = v15[0];
    *(v13 + 10) = *(v15 + 10);
    v7 = v14[0];
    v8 = v14[1];
    v9 = v14[2];
    v10 = v14[3];
    outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v2);
    v5 = v4;
    v2(&v7);
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v2);
    v20 = v11;
    v21 = v12;
    v22[0] = v13[0];
    *(v22 + 10) = *(v13 + 10);
    v16 = v7;
    v17 = v8;
    v18 = v9;
    v19 = v10;
    outlined destroy of BodyTrackingComponent?(&v16, &_ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGMd, &_ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGMR);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = 0u;
    v17 = 0u;
    v6 = result;
    swift_beginAccess();
    outlined assign with take of Any?(&v16, v6 + 16);
    swift_endAccess();
  }

  return result;
}

uint64_t specialized closure #3 in LoadRequest<A>.thenWaitForResourceSharing()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = a1;
  v7[4] = v6;
  aBlock[4] = partial apply for specialized closure #1 in closure #3 in LoadRequest<A>.thenWaitForResourceSharing();
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  aBlock[3] = &block_descriptor_478;
  v8 = _Block_copy(aBlock);
  v9 = _Block_copy(v8);
  v10 = *(a2 + 16);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  v15[4] = thunk for @escaping @callee_unowned @convention(block) (@unowned Bool) -> ()partial apply;
  v15[5] = v11;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v15[3] = &block_descriptor_485;
  v12 = _Block_copy(v15);

  REAssetLoadRequestSetCompletionHandler();
  _Block_release(v12);
  _Block_release(v8);

  v13 = *(a1 + 16);
  return REAssetLoadRequestAddAsset();
}

{
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = a1;
  v7[4] = v6;
  aBlock[4] = partial apply for specialized closure #1 in closure #3 in LoadRequest<A>.thenWaitForResourceSharing();
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  aBlock[3] = &block_descriptor_292;
  v8 = _Block_copy(aBlock);
  v9 = _Block_copy(v8);
  v10 = *(a2 + 16);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  v14[4] = thunk for @escaping @callee_unowned @convention(block) (@unowned Bool) -> ()partial apply;
  v14[5] = v11;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v14[3] = &block_descriptor_299;
  v12 = _Block_copy(v14);

  REAssetLoadRequestSetCompletionHandler();
  _Block_release(v12);
  _Block_release(v8);

  if (*(a1 + 16))
  {
    REAssetLoadRequestAddAsset();
  }

  result = swift_beginAccess();
  if (*(a1 + 24))
  {
    return REAssetLoadRequestAddAsset();
  }

  return result;
}

uint64_t specialized closure #3 in LoadRequest<A>.thenWaitForResourceSharing()(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  v8 = a1[5];
  *(v7 + 88) = a1[4];
  *(v7 + 104) = v8;
  *(v7 + 120) = a1[6];
  *(v7 + 129) = *(a1 + 105);
  v9 = a1[1];
  *(v7 + 24) = *a1;
  *(v7 + 40) = v9;
  v10 = a1[3];
  *(v7 + 56) = a1[2];
  *(v7 + 16) = a3;
  *(v7 + 72) = v10;
  *(v7 + 152) = v6;
  aBlock[4] = partial apply for specialized closure #1 in closure #3 in LoadRequest<A>.thenWaitForResourceSharing();
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  aBlock[3] = &block_descriptor_2;
  v11 = _Block_copy(aBlock);
  v12 = _Block_copy(v11);
  v13 = *(a2 + 16);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  v20[4] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned Bool) -> ();
  v20[5] = v14;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 1107296256;
  v20[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v20[3] = &block_descriptor_245;
  v15 = _Block_copy(v20);

  outlined init with copy of ShaderGraphMaterial(a1, &v19);

  REAssetLoadRequestSetCompletionHandler();
  _Block_release(v15);
  _Block_release(v11);

  v16 = *a1;
  swift_beginAccess();
  v17 = *(v16 + 16);
  return REAssetLoadRequestAddAsset();
}

void specialized closure #1 in closure #3 in LoadRequest<A>.thenWaitForResourceSharing()(char a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      v5 = *(a2 + 24);
      aBlock = a3;
      LOBYTE(v22) = 0;
      outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v4);

      v4(&aBlock);
      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v4);

      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_12;
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = *(Strong + 16);
  RequestCopyError = REAssetLoadRequestCopyError();

  if (!RequestCopyError)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = specialized static LoadUtilities.convertCFErrorToEntityLoadError(error:)(RequestCopyError);

  v10 = *(a2 + 16);
  if (!v10)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v11 = *(a2 + 24);
  aBlock = v9;
  LOBYTE(v22) = 1;
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v10);
  v12 = v9;
  v10(&aBlock);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v10);

LABEL_8:
  swift_beginAccess();
  v13 = swift_weakLoadStrong();
  if (v13)
  {
    v14 = v13;
    v25 = destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError;
    v26 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v22 = 1107296256;
    v23 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    v24 = &block_descriptor_488;
    v15 = _Block_copy(&aBlock);
    v16 = _Block_copy(v15);
    v17 = *(v14 + 16);
    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    v20[4] = thunk for @escaping @callee_unowned @convention(block) (@unowned Bool) -> ()partial apply;
    v20[5] = v18;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 1107296256;
    v20[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    v20[3] = &block_descriptor_495;
    v19 = _Block_copy(v20);

    REAssetLoadRequestSetCompletionHandler();
    _Block_release(v19);

    _Block_release(v15);
  }
}

{
  if (a1)
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      v5 = *(a2 + 24);
      aBlock = a3;
      LOBYTE(v22) = 0;
      outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v4);

      v4(&aBlock);
      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v4);

      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_12;
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = *(Strong + 16);
  RequestCopyError = REAssetLoadRequestCopyError();

  if (!RequestCopyError)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = specialized static LoadUtilities.convertCFErrorToEntityLoadError(error:)(RequestCopyError);

  v10 = *(a2 + 16);
  if (!v10)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v11 = *(a2 + 24);
  aBlock = v9;
  LOBYTE(v22) = 1;
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v10);
  v12 = v9;
  v10(&aBlock);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v10);

LABEL_8:
  swift_beginAccess();
  v13 = swift_weakLoadStrong();
  if (v13)
  {
    v14 = v13;
    v25 = destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError;
    v26 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v22 = 1107296256;
    v23 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    v24 = &block_descriptor_302;
    v15 = _Block_copy(&aBlock);
    v16 = _Block_copy(v15);
    v17 = *(v14 + 16);
    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    v20[4] = thunk for @escaping @callee_unowned @convention(block) (@unowned Bool) -> ()partial apply;
    v20[5] = v18;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 1107296256;
    v20[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    v20[3] = &block_descriptor_309;
    v19 = _Block_copy(v20);

    REAssetLoadRequestSetCompletionHandler();
    _Block_release(v19);

    _Block_release(v15);
  }
}

void specialized closure #1 in closure #3 in LoadRequest<A>.thenWaitForResourceSharing()(char a1, uint64_t a2, __int128 *a3)
{
  if (a1)
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      v5 = *(a2 + 24);
      v6 = a3[5];
      v35 = a3[4];
      v36 = v6;
      v37[0] = a3[6];
      *(v37 + 9) = *(a3 + 105);
      v7 = a3[1];
      v31 = *a3;
      v32 = v7;
      v8 = a3[3];
      v33 = a3[2];
      v34 = v8;
      _ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGWOi_(&v31);
      v28 = v35;
      v29 = v36;
      v30[0] = v37[0];
      *(v30 + 10) = *(v37 + 10);
      v24 = v31;
      v25 = v32;
      v26 = v33;
      v27 = v34;
      outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v4);
      outlined init with copy of ShaderGraphMaterial(a3, &aBlock);
      v4(&v24);
      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v4);
      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_12;
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v11 = *(Strong + 16);
  RequestCopyError = REAssetLoadRequestCopyError();

  if (!RequestCopyError)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = specialized static LoadUtilities.convertCFErrorToEntityLoadError(error:)(RequestCopyError);

  v14 = *(a2 + 16);
  if (!v14)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v15 = *(a2 + 24);
  *&v31 = v13;
  _ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGWOi0_(&v31);
  v28 = v35;
  v29 = v36;
  v30[0] = v37[0];
  *(v30 + 10) = *(v37 + 10);
  v24 = v31;
  v25 = v32;
  v26 = v33;
  v27 = v34;
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v14);
  v16 = v13;
  v14(&v24);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v14);

LABEL_8:
  v42 = v28;
  v43 = v29;
  v44[0] = v30[0];
  *(v44 + 10) = *(v30 + 10);
  aBlock = v24;
  v39 = v25;
  v40 = v26;
  v41 = v27;
  outlined destroy of BodyTrackingComponent?(&aBlock, &_ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGMd, &_ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGMR);
  swift_beginAccess();
  v17 = swift_weakLoadStrong();
  if (v17)
  {
    v18 = v17;
    *&v40 = destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError;
    *(&v40 + 1) = 0;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v39 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    *(&v39 + 1) = &block_descriptor_248;
    v19 = _Block_copy(&aBlock);
    v20 = _Block_copy(v19);
    v21 = *(v18 + 16);
    v22 = swift_allocObject();
    *(v22 + 16) = v20;
    *&v33 = thunk for @escaping @callee_unowned @convention(block) (@unowned Bool) -> ()partial apply;
    *(&v33 + 1) = v22;
    *&v31 = MEMORY[0x1E69E9820];
    *(&v31 + 1) = 1107296256;
    *&v32 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    *(&v32 + 1) = &block_descriptor_255;
    v23 = _Block_copy(&v31);

    REAssetLoadRequestSetCompletionHandler();
    _Block_release(v23);

    _Block_release(v19);
  }
}

uint64_t specialized closure #1 in LoadRequest.init(_:dependencies:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  return specialized closure #1 in LoadRequest.init(_:dependencies:)(a1, a2, a3, a4, a5, a6, &unk_1F40F0A58, partial apply for specialized closure #1 in closure #1 in LoadRequest.init(_:dependencies:));
}

{
  return specialized closure #1 in LoadRequest.init(_:dependencies:)(a1, a2, a3, a4, a5, a6, &unk_1F40F09E0, partial apply for specialized closure #1 in closure #1 in LoadRequest.init(_:dependencies:));
}

{
  return specialized closure #1 in LoadRequest.init(_:dependencies:)(a1, a2, a3, a4, a5, a6, &unk_1F40F09B8, partial apply for specialized closure #1 in closure #1 in LoadRequest.init(_:dependencies:));
}

{
  return specialized closure #1 in LoadRequest.init(_:dependencies:)(a1, a2, a3, a4, a5, a6, &unk_1F40F0990, partial apply for specialized closure #1 in closure #1 in LoadRequest.init(_:dependencies:));
}

{
  return specialized closure #1 in LoadRequest.init(_:dependencies:)(a1, a2, a3, a4, a5, a6, &unk_1F40F0710, partial apply for specialized closure #1 in closure #1 in LoadRequest.init(_:dependencies:));
}

{
  return specialized closure #1 in LoadRequest.init(_:dependencies:)(a1, a2, a3, a4, a5, a6, &unk_1F40F0468, partial apply for specialized closure #1 in closure #1 in LoadRequest.init(_:dependencies:));
}

{
  return specialized closure #1 in LoadRequest.init(_:dependencies:)(a1, a2, a3, a4, a5, a6, &unk_1F40F0968, partial apply for specialized closure #1 in closure #1 in LoadRequest.init(_:dependencies:));
}

{
  return specialized closure #1 in LoadRequest.init(_:dependencies:)(a1, a2, a3, a4, a5, a6, &unk_1F40F0940, partial apply for specialized closure #1 in closure #1 in LoadRequest.init(_:dependencies:));
}

{
  return specialized closure #1 in LoadRequest.init(_:dependencies:)(a1, a2, a3, a4, a5, a6, &unk_1F40F0760, partial apply for specialized closure #1 in closure #1 in LoadRequest.init(_:dependencies:));
}

{
  return specialized closure #1 in LoadRequest.init(_:dependencies:)(a1, a2, a3, a4, a5, a6, &unk_1F40F0738, partial apply for specialized closure #1 in closure #1 in LoadRequest.init(_:dependencies:));
}

{
  return specialized closure #1 in LoadRequest.init(_:dependencies:)(a1, a2, a3, a4, a5, a6, &unk_1F40F06C0, partial apply for specialized closure #1 in closure #1 in LoadRequest.init(_:dependencies:));
}

{
  return specialized closure #1 in LoadRequest.init(_:dependencies:)(a1, a2, a3, a4, a5, a6, &unk_1F40F0698, partial apply for specialized closure #1 in closure #1 in LoadRequest.init(_:dependencies:));
}

{
  return specialized closure #1 in LoadRequest.init(_:dependencies:)(a1, a2, a3, a4, a5, a6, &unk_1F40F0490, partial apply for specialized closure #1 in closure #1 in LoadRequest.init(_:dependencies:));
}

uint64_t specialized closure #1 in LoadRequest.init(_:dependencies:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = swift_allocObject();
  v14[2] = a5;
  v14[3] = a6;
  v14[4] = a1;
  v14[5] = a2;

  a3(a8, v14);
}

uint64_t specialized closure #1 in closure #1 in LoadRequest.init(_:dependencies:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  outlined init with copy of [String : String](a1, v9, &_ss6ResultOy10RealityKit8Material_ps5Error_pGMd, &_ss6ResultOy10RealityKit8Material_ps5Error_pGMR);
  v7 = *(a2 + 16);
  os_unfair_lock_lock(v7 + 4);
  swift_beginAccess();
  outlined assign with copy of Result<Material, Error>?(v9, a2 + 24);
  swift_endAccess();
  os_unfair_lock_unlock(v7 + 4);
  outlined destroy of BodyTrackingComponent?(v9, &_ss6ResultOy10RealityKit8Material_ps5Error_pGSgMd, &_ss6ResultOy10RealityKit8Material_ps5Error_pGSgMR);
  return a4(a1);
}

uint64_t specialized closure #1 in closure #1 in LoadRequest.init(_:dependencies:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a2 + 16);
  outlined copy of Result<AUAudioUnit, Error>(*a1);
  os_unfair_lock_lock(v8 + 4);
  swift_beginAccess();
  v9 = *(a2 + 24);
  *(a2 + 24) = v6;
  v10 = *(a2 + 32);
  *(a2 + 32) = v7;
  outlined consume of Result<AUAudioUnit, Error>?(v9, v10);
  os_unfair_lock_unlock(v8 + 4);
  v12 = v6;
  v13 = v7;
  return a4(&v12);
}

{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a2 + 16);
  outlined copy of Result<[Entity], Error>(*a1, v7, MEMORY[0x1E69E7D00]);
  os_unfair_lock_lock(v8 + 4);
  swift_beginAccess();
  v9 = *(a2 + 24);
  *(a2 + 24) = v6;
  v10 = *(a2 + 32);
  *(a2 + 32) = v7;
  outlined consume of Result<[Entity], Error>?(v9, v10);
  os_unfair_lock_unlock(v8 + 4);
  v12 = v6;
  v13 = v7;
  return a4(&v12);
}

uint64_t specialized closure #1 in closure #1 in LoadRequest.init(_:dependencies:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a2 + 16);
  outlined copy of Result<ModelEntity, Error>(*a1, v10);
  os_unfair_lock_lock(v11 + 4);
  swift_beginAccess();
  v12 = *(a2 + 24);
  *(a2 + 24) = v9;
  v13 = *(a2 + 32);
  *(a2 + 32) = v10;
  a6(v12, v13);
  os_unfair_lock_unlock(v11 + 4);
  v15 = v9;
  v16 = v10;
  return a4(&v15);
}

uint64_t specialized closure #1 in closure #1 in LoadRequest.init(_:dependencies:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  v6 = a1[5];
  v27 = a1[4];
  v28 = v6;
  v29[0] = a1[6];
  v7 = v29[0];
  *(v29 + 10) = *(a1 + 106);
  v8 = a1[1];
  v23 = *a1;
  v24 = v8;
  v9 = a1[3];
  v25 = a1[2];
  v26 = v9;
  *(v36 + 10) = *(v29 + 10);
  v35 = v6;
  v36[0] = v7;
  v33 = v9;
  v34 = v27;
  v31 = v8;
  v32 = v25;
  v30 = v23;
  destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError(&v30, a2);
  v10 = *(a2 + 16);
  outlined init with copy of [String : String](&v23, v37, &_ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGMd, &_ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGMR);
  os_unfair_lock_lock(v10 + 4);
  swift_beginAccess();
  v11 = *(a2 + 104);
  v37[4] = *(a2 + 88);
  v37[5] = v11;
  v38[0] = *(a2 + 120);
  *(v38 + 10) = *(a2 + 130);
  v12 = *(a2 + 40);
  v37[0] = *(a2 + 24);
  v37[1] = v12;
  v13 = *(a2 + 72);
  v37[2] = *(a2 + 56);
  v37[3] = v13;
  v14 = v30;
  v15 = v31;
  v16 = v32;
  *(a2 + 72) = v33;
  *(a2 + 56) = v16;
  *(a2 + 40) = v15;
  *(a2 + 24) = v14;
  v17 = v34;
  v18 = v35;
  v19 = v36[0];
  *(a2 + 130) = *(v36 + 10);
  *(a2 + 120) = v19;
  *(a2 + 104) = v18;
  *(a2 + 88) = v17;
  outlined destroy of BodyTrackingComponent?(v37, &_ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGSgMd, &_ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGSgMR);
  os_unfair_lock_unlock(v10 + 4);
  v21[4] = v27;
  v21[5] = v28;
  v22[0] = v29[0];
  *(v22 + 10) = *(v29 + 10);
  v21[0] = v23;
  v21[1] = v24;
  v21[2] = v25;
  v21[3] = v26;
  return a4(v21);
}

BOOL specialized static TextureResource.Compression.Kind.== infix(_:_:)(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >> 8;
  if (v2 >> 8 == 4)
  {
    return (v3 & 0xFF00) == 0x400;
  }

  if (v4 == 5)
  {
    return (v3 & 0xFF00) == 0x500;
  }

  if ((v3 & 0xFE00) == 0x400)
  {
    return 0;
  }

  return v3 == v2 && v4 == v3 >> 8;
}

uint64_t specialized static TextureResource.tryCreate(from:disableNetworkSync:)(uint64_t a1, char a2)
{
  v7 = *MEMORY[0x1E69E9840];
  Asset = RETextureImportOperationCreateAsset();
  if (!Asset)
  {
    v4 = 0xD000000000000017;
    goto LABEL_10;
  }

  if (a2)
  {
    REAssetSetNetworkSharingMode();
  }

  if (!REAssetGetSwiftObject())
  {
    goto LABEL_7;
  }

  type metadata accessor for TextureResource();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {
    swift_unknownObjectRelease();
LABEL_7:
    type metadata accessor for TextureResource();
    v4 = swift_allocObject();
    *(v4 + 16) = Asset;
    *(v4 + 24) = 0;
    RERetain();
    REAssetSetSwiftObject();
  }

  RERelease();
LABEL_10:
  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t specialized TextureResource.init(image:withName:options:)(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  inited = *a4;
  v7 = a4[1];
  v8 = *(a4 + 1);
  v9 = a4[4];
  v10 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v11 = *(v10 + 16);

  v12 = RETextureImportOperationCreateWithCGImage();
  if (a3)
  {
    String.utf8CString.getter();
    RETextureImportOperationSetAssetResourceName();
  }

  else
  {
  }

  v23[0] = inited;
  v23[1] = v7;
  v24 = v8;
  v25 = v9;
  OpaquePointer.set(options:)(v23, v12);
  v13 = specialized static TextureResource.tryCreate(from:disableNetworkSync:)(v12, 1);
  v16 = v13;
  if ((v15 & 0x100) != 0)
  {
    outlined consume of Result<TextureResource, TextureResource.TextureImportOperationError>(v13, v14, v15, 1);
    type metadata accessor for TextureResource.LoadError();
    lazy protocol witness table accessor for type TextureResource.LoadError and conformance TextureResource.LoadError(&lazy protocol witness table cache variable for type TextureResource.LoadError and conformance TextureResource.LoadError, type metadata accessor for TextureResource.LoadError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    v17 = v14;
    v18 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C1887600;
    v19 = type metadata accessor for TextureResource();
    *(inited + 32) = v16;
    *(inited + 56) = v19;
    *(inited + 64) = &protocol witness table for TextureResource;

    specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(inited);
    if (!v22)
    {
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1((inited + 32));
      v21 = v16[2];
      inited = swift_allocObject();
      *(inited + 16) = v21;
      *(inited + 24) = 0;
      RERetain();
      REAssetSetSwiftObject();
      outlined consume of Result<TextureResource, TextureResource.TextureImportOperationError>(v16, v17, v18, 0);
      RERelease();

      return inited;
    }

    outlined consume of Result<TextureResource, TextureResource.TextureImportOperationError>(v16, v17, v18, 0);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1((inited + 32));
  }

  RERelease();

  return inited;
}

void *specialized static TextureResource.load(contentsOf:withName:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a4;
  v7 = *(a4 + 1);
  v8 = *(a4 + 2);
  v9 = *(a4 + 4);
  v10 = specialized static __ServiceLocator.shared.getter();

  v29 = a1;
  URL._bridgeToObjectiveC()(v11);
  v13 = v12;
  swift_beginAccess();
  v14 = *(v10 + 16);
  v15 = RETextureImportOperationCreateWithURL();

  if (a3)
  {
    String.utf8CString.getter();
    RETextureImportOperationSetAssetResourceName();
  }

  v30[0] = v6;
  v30[1] = v7;
  v31 = v8;
  v32 = v9;
  OpaquePointer.set(options:)(v30, v15);
  v16 = specialized static TextureResource.tryCreate(from:disableNetworkSync:)(v15, 1);
  Error = v16;
  if ((v18 & 0x100) != 0)
  {
    outlined consume of Result<TextureResource, TextureResource.TextureImportOperationError>(v16, v17, v18, 1);
    Error = type metadata accessor for TextureResource.LoadError();
    lazy protocol witness table accessor for type TextureResource.LoadError and conformance TextureResource.LoadError(&lazy protocol witness table cache variable for type TextureResource.LoadError and conformance TextureResource.LoadError, type metadata accessor for TextureResource.LoadError);
    swift_allocError();
    v25 = v24;
    v26 = type metadata accessor for URL();
    (*(*(v26 - 8) + 16))(v25, v29, v26);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    v20 = v17;
    v21 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C1887600;
    v23 = type metadata accessor for TextureResource();
    *(inited + 32) = Error;
    *(inited + 56) = v23;
    *(inited + 64) = &protocol witness table for TextureResource;

    specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(inited);
    if (!v28)
    {
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1((inited + 32));
      RERelease();
      return Error;
    }

    outlined consume of Result<TextureResource, TextureResource.TextureImportOperationError>(Error, v20, v21, 0);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1((inited + 32));
  }

  RERelease();
  return Error;
}

uint64_t specialized static TextureResource.findBundledFileExtension(named:in:)(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v19 - v7;
  v9 = &unk_1F40E3E80;
  v10 = 15;
  while (1)
  {
    v12 = *(v9 - 1);
    v11 = *v9;

    v13 = MEMORY[0x1C68F3280](a1, a2);
    if (v11)
    {

      v14 = MEMORY[0x1C68F3280](v12, v11);
    }

    else
    {
      v14 = 0;
    }

    v15 = [v20 URLForResource:v13 withExtension:v14];

    if (v15)
    {
      break;
    }

    v9 += 2;

    v16 = type metadata accessor for URL();
    (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
    outlined destroy of BodyTrackingComponent?(v8, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if (!--v10)
    {
      return 0;
    }
  }

  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v17 = type metadata accessor for URL();
  (*(*(v17 - 8) + 56))(v8, 0, 1, v17);
  outlined destroy of BodyTrackingComponent?(v8, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v12;
}

uint64_t specialized static TextureResource.createTextureAssetDataFor(texture:options:)(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if (v2 == 2)
  {
    v3 = MEMORY[0x1E6998F28];
  }

  else
  {
    if (v2 != 3)
    {
      v9.super.isa = 0;
      goto LABEL_7;
    }

    v3 = MEMORY[0x1E6998F30];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_ADtGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_ADtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1887600;
  v5 = *MEMORY[0x1E6998F20];
  *(inited + 32) = *MEMORY[0x1E6998F20];
  v6 = *v3;
  *(inited + 40) = v6;
  v7 = v5;
  v8 = v6;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ADTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of BodyTrackingComponent?(inited + 32, &_sSo11CFStringRefa_ABtMd, &_sSo11CFStringRefa_ABtMR);
  type metadata accessor for CFStringRef(0);
  lazy protocol witness table accessor for type TextureResource.LoadError and conformance TextureResource.LoadError(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
  v9.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

LABEL_7:
  v10 = RETextureAssetDataCreateWithTexture();

  return v10;
}

uint64_t specialized static TextureResource.load(named:in:options:textureLoader:)(uint64_t a1, uint64_t a2, void *a3, char *a4, void *a5)
{
  v47 = a2;
  v8 = *a4;
  v9 = a4[4];
  v42 = *(a4 + 1);
  v43 = a4[1];
  if (a3)
  {
    v10 = a3;
  }

  else
  {
    v10 = [objc_opt_self() mainBundle];
  }

  v11 = a3;
  v12 = specialized static __ServiceLocator.shared.getter();

  v13 = specialized static TextureResource.findBundledFileExtension(named:in:)(a1, v47, v10);
  v15 = v14;
  v41 = a1;
  v16 = MEMORY[0x1C68F3280](a1, v47);
  if (v15)
  {
    v17 = MEMORY[0x1C68F3280](v13, v15);
  }

  else
  {
    v17 = 0;
  }

  swift_beginAccess();
  v18 = *(v12 + 16);
  v19 = RETextureImportOperationCreateWithBundleResource();

  if (!v19)
  {
    v38 = v9;
    v36 = v5;
    v37 = v12;
    goto LABEL_12;
  }

  LOBYTE(v44[0]) = v8;
  BYTE1(v44[0]) = v43;
  WORD1(v44[0]) = v42;
  BYTE4(v44[0]) = v9;
  OpaquePointer.set(options:)(v44, v19);
  v20 = specialized static TextureResource.tryCreate(from:disableNetworkSync:)(v19, 0);
  v23 = v20;
  if ((v22 & 0x100) != 0)
  {
    v38 = v9;
    v36 = v5;
    v37 = v12;
    outlined consume of Result<TextureResource, TextureResource.TextureImportOperationError>(v20, v21, v22, 1);
    RERelease();
LABEL_12:
    v23 = a5[3];
    v24 = a5[4];
    __swift_project_boxed_opaque_existential_1(a5, v23);
    v25 = v8;
    LOBYTE(v44[0]) = v8;
    BYTE1(v44[0]) = v43;
    WORD1(v44[0]) = v42;
    BYTE4(v44[0]) = v38;
    v26 = *(v24 + 8);
    v40 = v10;
    v27 = v26(v41, v47, v10, v44, v23, v24);
    if (v36)
    {

      return v23;
    }

    v28 = v27;

    LOBYTE(v44[0]) = v25;
    BYTE1(v44[0]) = v43;
    WORD1(v44[0]) = v42;
    BYTE4(v44[0]) = v38;
    specialized static TextureResource.createTextureAssetDataFor(texture:options:)(v28, v44);
    swift_beginAccess();
    outlined init with copy of __REAssetService(v37 + 120, v44);
    v29 = v45;
    v30 = v46;
    __swift_project_boxed_opaque_existential_1(v44, v45);
    (*(v30 + 32))(v29, v30);
    TextureAssetFromData = REAssetManagerCreateTextureAssetFromData();
    __swift_destroy_boxed_opaque_existential_1(v44);
    RERelease();
    if (REAssetGetSwiftObject())
    {
      v32 = type metadata accessor for TextureResource();
      v33 = swift_dynamicCastClass();
      if (v33)
      {
        v23 = v33;
LABEL_19:
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1C1887600;
        type metadata accessor for TextureResource();
        *(inited + 32) = v23;
        *(inited + 56) = v32;
        *(inited + 64) = &protocol witness table for TextureResource;

        specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(inited);
        swift_setDeallocating();
        __swift_destroy_boxed_opaque_existential_1((inited + 32));
        RERelease();

        swift_unknownObjectRelease();
        return v23;
      }

      swift_unknownObjectRelease();
    }

    v32 = type metadata accessor for TextureResource();
    v23 = swift_allocObject();
    *(v23 + 16) = TextureAssetFromData;
    *(v23 + 24) = 0;
    RERetain();
    REAssetSetSwiftObject();
    goto LABEL_19;
  }

  RERelease();

  return v23;
}

uint64_t partial apply for specialized closure #1 in LoadRequest.init(_:dependencies:)(uint64_t a1, uint64_t a2)
{
  return specialized closure #1 in LoadRequest.init(_:dependencies:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), &unk_1F40F1188, partial apply for specialized closure #1 in closure #1 in LoadRequest.init(_:dependencies:));
}

{
  return specialized closure #1 in LoadRequest.init(_:dependencies:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), &unk_1F40F0698, partial apply for specialized closure #1 in closure #1 in LoadRequest.init(_:dependencies:));
}

{
  return specialized closure #1 in LoadRequest.init(_:dependencies:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), &unk_1F40F0940, partial apply for specialized closure #1 in closure #1 in LoadRequest.init(_:dependencies:));
}

{
  return specialized closure #1 in LoadRequest.init(_:dependencies:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40));
}

{
  return specialized closure #1 in LoadRequest.init(_:dependencies:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40));
}

{
  return specialized closure #1 in LoadRequest.init(_:dependencies:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40));
}

{
  return specialized closure #1 in LoadRequest.init(_:dependencies:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40));
}

{
  return specialized closure #1 in LoadRequest.init(_:dependencies:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40));
}

{
  return specialized closure #1 in LoadRequest.init(_:dependencies:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40));
}

{
  return specialized closure #1 in LoadRequest.init(_:dependencies:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40));
}

{
  return specialized closure #1 in LoadRequest.init(_:dependencies:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40));
}

{
  return specialized closure #1 in LoadRequest.init(_:dependencies:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40));
}

{
  return specialized closure #1 in LoadRequest.init(_:dependencies:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40));
}

{
  return specialized closure #1 in LoadRequest.init(_:dependencies:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40));
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 32);

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t partial apply for closure #1 in static TextureResource.loadAsync(named:in:options:textureLoader:)(uint64_t a1, uint64_t a2)
{
  v3 = 0x100000000;
  if (!*(v2 + 52))
  {
    v3 = 0;
  }

  return closure #1 in static TextureResource.loadAsync(named:in:options:textureLoader:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), v3 | (*(v2 + 50) << 16) | (*(v2 + 49) << 8) | *(v2 + 48), (v2 + 56));
}

uint64_t partial apply for closure #1 in static TextureResource.loadAsync(contentsOf:withName:options:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #1 in static TextureResource.loadAsync(contentsOf:withName:options:)(v4, a1);
}

void outlined consume of Result<TextureResource, TextureResource.TextureImportOperationError>(void *a1, void *a2, char a3, char a4)
{
  if (a4)
  {
    outlined consume of TextureResource.TextureImportOperationError(a1, a2, a3 & 1);
  }

  else
  {
  }
}

void outlined consume of TextureResource.TextureImportOperationError(void *a1, id a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t type metadata accessor for TextureResource.LoadError()
{
  result = type metadata singleton initialization cache for TextureResource.LoadError;
  if (!type metadata singleton initialization cache for TextureResource.LoadError)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id outlined copy of Result<TextureResource, TextureResource.TextureImportOperationError>(void *a1, void *a2, char a3, char a4)
{
  if (a4)
  {
    return outlined copy of TextureResource.TextureImportOperationError(a1, a2, a3 & 1);
  }

  else
  {
  }
}

id outlined copy of TextureResource.TextureImportOperationError(void *a1, id a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return a1;
  }
}

unint64_t lazy protocol witness table accessor for type TextureResource.CopyError and conformance TextureResource.CopyError()
{
  result = lazy protocol witness table cache variable for type TextureResource.CopyError and conformance TextureResource.CopyError;
  if (!lazy protocol witness table cache variable for type TextureResource.CopyError and conformance TextureResource.CopyError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextureResource.CopyError and conformance TextureResource.CopyError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextureResource.CopyError and conformance TextureResource.CopyError;
  if (!lazy protocol witness table cache variable for type TextureResource.CopyError and conformance TextureResource.CopyError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextureResource.CopyError and conformance TextureResource.CopyError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TextureResource.DrawableQueue.InitError and conformance TextureResource.DrawableQueue.InitError()
{
  result = lazy protocol witness table cache variable for type TextureResource.DrawableQueue.InitError and conformance TextureResource.DrawableQueue.InitError;
  if (!lazy protocol witness table cache variable for type TextureResource.DrawableQueue.InitError and conformance TextureResource.DrawableQueue.InitError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextureResource.DrawableQueue.InitError and conformance TextureResource.DrawableQueue.InitError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextureResource.DrawableQueue.InitError and conformance TextureResource.DrawableQueue.InitError;
  if (!lazy protocol witness table cache variable for type TextureResource.DrawableQueue.InitError and conformance TextureResource.DrawableQueue.InitError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextureResource.DrawableQueue.InitError and conformance TextureResource.DrawableQueue.InitError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TextureResource.DrawableQueue.NextDrawableError and conformance TextureResource.DrawableQueue.NextDrawableError()
{
  result = lazy protocol witness table cache variable for type TextureResource.DrawableQueue.NextDrawableError and conformance TextureResource.DrawableQueue.NextDrawableError;
  if (!lazy protocol witness table cache variable for type TextureResource.DrawableQueue.NextDrawableError and conformance TextureResource.DrawableQueue.NextDrawableError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextureResource.DrawableQueue.NextDrawableError and conformance TextureResource.DrawableQueue.NextDrawableError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextureResource.DrawableQueue.NextDrawableError and conformance TextureResource.DrawableQueue.NextDrawableError;
  if (!lazy protocol witness table cache variable for type TextureResource.DrawableQueue.NextDrawableError and conformance TextureResource.DrawableQueue.NextDrawableError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextureResource.DrawableQueue.NextDrawableError and conformance TextureResource.DrawableQueue.NextDrawableError);
  }

  return result;
}

uint64_t partial apply for closure #1 in TextureResource.init(contentsOf:withName:options:)(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 28) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = v1 + v6;
  v11 = *v10;
  v12 = *(v10 + 8);
  v13 = *(v10 + 16);
  v14 = *(v10 + 17);
  v15 = *(v10 + 18);
  v16 = *(v10 + 20) == 0;
  v17 = 0x100000000;
  if (v16)
  {
    v17 = 0;
  }

  v18 = v17 | (v15 << 16) | (v14 << 8);
  v19 = *(v1 + v7);
  v20 = swift_task_alloc();
  *(v3 + 16) = v20;
  *v20 = v3;
  v20[1] = partial apply for closure #1 in TextureResource.PartialContents.init(source:mipmaps:);

  return closure #1 in TextureResource.init(contentsOf:withName:options:)(a1, v8, v9, v1 + v5, v11, v12, v18 | v13, v19);
}

uint64_t partial apply for closure #1 in TextureResource.init<A>(named:in:options:textureLoader:)(void *a1)
{
  v2 = *(v1 + 24);
  v3 = 0x100000000;
  if (!*(v1 + 60))
  {
    v3 = 0;
  }

  return closure #1 in TextureResource.init<A>(named:in:options:textureLoader:)(a1, *(v1 + 32), *(v1 + 40), *(v1 + 48), v3 | (*(v1 + 58) << 16) | (*(v1 + 57) << 8) | *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 16), *(v1 + 24));
}

uint64_t partial apply for closure #1 in TextureResource.replaceAsyncInternal(using:options:)(uint64_t a1, uint64_t a2)
{
  v3 = 0x100000000;
  if (!*(v2 + 36))
  {
    v3 = 0;
  }

  return closure #1 in TextureResource.replaceAsyncInternal(using:options:)(a1, a2, *(v2 + 16), *(v2 + 24), v3 | (*(v2 + 34) << 16) | (*(v2 + 33) << 8) | *(v2 + 32), *(v2 + 40));
}

uint64_t specialized static TextureResource.createImportOperation(fromSlices:named:options:textureType:)(unint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = *MEMORY[0x1E69E9840];
  v10 = specialized static __ServiceLocator.shared.getter();
  if (a6 <= 4)
  {
    if (a6 != 2)
    {
      if (a6 != 3)
      {
        goto LABEL_7;
      }

      goto LABEL_23;
    }

    if (a2)
    {
      if (*(a1 + 16) == 1)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
LABEL_11:
        if (a2)
        {
          if (*(a1 + 16) == 6)
          {
            goto LABEL_23;
          }
        }

        else if (a1 >> 62)
        {
          if (__CocoaSet.count.getter() == 6)
          {
            goto LABEL_23;
          }
        }

        else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) == 6)
        {
          goto LABEL_23;
        }

        v11 = 0xD00000000000002CLL;
        goto LABEL_52;
      }

LABEL_49:
      v11 = 0xD000000000000030;
      goto LABEL_52;
    }

    if (a1 >> 62)
    {
      if (__CocoaSet.count.getter() != 1)
      {
        goto LABEL_49;
      }

      if (!__CocoaSet.count.getter())
      {
        __break(1u);
        goto LABEL_49;
      }
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
    {
      goto LABEL_49;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {

      v13 = MEMORY[0x1C68F41F0](0, a1);
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
      }

      v12 = *(a1 + 32);

      v13 = v12;
    }

    v14 = v13;
    swift_beginAccess();
    v15 = *(v10 + 16);
    v11 = RETextureImportOperationCreateWithCGImage();

    if (!v11)
    {
      v11 = 0xD000000000000015;

      goto LABEL_52;
    }

    goto LABEL_37;
  }

  if (a6 == 5)
  {
    goto LABEL_11;
  }

  if (a6 != 7)
  {
LABEL_7:
    v11 = 0xD00000000000001CLL;
    goto LABEL_52;
  }

LABEL_23:
  if (a2)
  {
    v16 = MEMORY[0x1E69E7CC0];
    v33 = MEMORY[0x1E69E7CC0];
    v17 = *(a1 + 16);

    if (v17)
    {
      v31 = a4;
      v32 = v10;
      v18 = (a1 + 40);
      v10 = 0xFFFFFFFF80000000;
      a4 = 0x7FFFFFFFLL;
      while (1)
      {
        v19 = *v18;
        v20 = *(v18 - 1);
        MEMORY[0x1C68F3650](v20, v21);
        if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v24 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        if (v19 < 0xFFFFFFFF80000000)
        {
          break;
        }

        if (v19 > 0x7FFFFFFF)
        {
          goto LABEL_44;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
        }

        v23 = *(v16 + 2);
        v22 = *(v16 + 3);
        if (v23 >= v22 >> 1)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v16);
        }

        v18 += 2;

        *(v16 + 2) = v23 + 1;
        *&v16[4 * v23 + 32] = v19;
        if (!--v17)
        {
          a4 = v31;
          v10 = v32;
          goto LABEL_40;
        }
      }

      __break(1u);
LABEL_44:
      __break(1u);
    }

    else
    {
LABEL_40:
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_41;
      }
    }

    specialized _ArrayBuffer._consumeAndCreateNew()(v16);
LABEL_41:
    type metadata accessor for CGImageSourceRef(0);

    isa = Array._bridgeToObjectiveC()().super.isa;

    swift_beginAccess();
    v28 = *(v10 + 16);
    v11 = RETextureImportOperationCreateFromImageSourceArray();

    if (!v11)
    {
      goto LABEL_42;
    }

    goto LABEL_37;
  }

  type metadata accessor for CGImageRef(0);

  v25 = Array._bridgeToObjectiveC()().super.isa;
  swift_beginAccess();
  v26 = *(v10 + 16);
  v11 = RETextureImportOperationCreateFromImageArray();

  if (!v11)
  {
LABEL_42:

    v11 = 0xD000000000000017;
    goto LABEL_52;
  }

LABEL_37:
  if (a4)
  {
    String.utf8CString.getter();
    RETextureImportOperationSetAssetResourceName();
  }

LABEL_52:
  v29 = *MEMORY[0x1E69E9840];
  return v11;
}

void *specialized static TextureResource.createTextureResourceSync(fromSlices:named:options:textureType:)(unint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *a5;
  v8 = *(a5 + 1);
  v9 = *(a5 + 2);
  v10 = *(a5 + 4);
  v25 = *a5;
  v26 = v8;
  v27 = v9;
  v28 = v10;
  v13 = specialized static TextureResource.createImportOperation(fromSlices:named:options:textureType:)(a1, a2 & 1, a3, a4, &v25, a6);
  if ((v12 & 0x100) != 0)
  {
    Error = v11;
    v22 = v12;
    lazy protocol witness table accessor for type TextureResource.TextureImportOperationError and conformance TextureResource.TextureImportOperationError();
    swift_allocError();
    *v23 = v13;
    *(v23 + 8) = Error;
    *(v23 + 16) = v22 & 1;
    swift_willThrow();
  }

  else
  {
    v25 = v7;
    v26 = v8;
    v27 = v9;
    v28 = v10;
    OpaquePointer.set(options:)(&v25, v13);
    v14 = specialized static TextureResource.tryCreate(from:disableNetworkSync:)(v13, 1);
    Error = v14;
    if ((v16 & 0x100) != 0)
    {
      outlined consume of Result<TextureResource, TextureResource.TextureImportOperationError>(v14, v15, v16, 1);
      Error = type metadata accessor for TextureResource.LoadError();
      lazy protocol witness table accessor for type TextureResource.LoadError and conformance TextureResource.LoadError(&lazy protocol witness table cache variable for type TextureResource.LoadError and conformance TextureResource.LoadError, type metadata accessor for TextureResource.LoadError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    else
    {
      v18 = v15;
      v19 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C1887600;
      v21 = type metadata accessor for TextureResource();
      *(inited + 32) = Error;
      *(inited + 56) = v21;
      *(inited + 64) = &protocol witness table for TextureResource;

      specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(inited);
      if (!v6)
      {
        swift_setDeallocating();
        __swift_destroy_boxed_opaque_existential_1((inited + 32));
        RERelease();
        return Error;
      }

      outlined consume of Result<TextureResource, TextureResource.TextureImportOperationError>(Error, v18, v19, 0);
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1((inited + 32));
    }

    RERelease();
  }

  return Error;
}

uint64_t specialized static TextureResource.texture2DArray(slices:named:options:)(unint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5)
{
  v7 = *(a4 + 4);
  v11 = *a4;
  v12 = v7;
  v8 = specialized static TextureResource.createTextureResourceSync(fromSlices:named:options:textureType:)(a1, 0, a2, a3, &v11, a5);
  if (!v6)
  {
    v9 = v8[2];
    type metadata accessor for TextureResource();
    v5 = swift_allocObject();
    *(v5 + 16) = v9;
    *(v5 + 24) = 0;
    RERetain();
    REAssetSetSwiftObject();
  }

  return v5;
}

int64_t specialized static TextureResource.getCubeLayout(_:)(CGImage *a1)
{
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  result = CGImageGetHeight(a1);
  v5 = result;
  if (Height >= Width)
  {
    result = CGImageGetWidth(a1);
    if ((result * 6) >> 64 == (6 * result) >> 63)
    {
      if (v5 == 6 * result)
      {
        return 1;
      }

LABEL_12:
      lazy protocol witness table accessor for type TextureResource.CubeLayoutError and conformance TextureResource.CubeLayoutError();
      swift_allocError();
      *v6 = 0;
      return swift_willThrow();
    }

    goto LABEL_14;
  }

  if ((result - 0x2000000000000000) >> 62 != 3)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = CGImageGetWidth(a1);
  if ((result * 3) >> 64 != (3 * result) >> 63)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (4 * v5 == 3 * result)
  {
    return 2;
  }

  result = CGImageGetHeight(a1);
  if ((result * 6) >> 64 == (6 * result) >> 63)
  {
    if (6 * result == CGImageGetWidth(a1))
    {
      return 0;
    }

    goto LABEL_12;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t specialized static TextureResource.sliceCube(cgImage:)(CGImage *a1)
{
  v23 = MEMORY[0x1E69E7CC0];
  v5 = specialized static TextureResource.getCubeLayout(_:)(a1);
  if (v2)
  {
    return v1;
  }

  if (v5)
  {
    if (v5 != 1)
    {
      v3 = CGImageGetHeight(a1) / 3;
      v8 = v3;
      v26.origin.x = 0.0;
      v26.origin.y = v3;
      v26.size.width = v3;
      v26.size.height = v3;
      if (!CGImageCreateWithImageInRect(a1, v26))
      {
        lazy protocol witness table accessor for type TextureResource.CubeLayoutError and conformance TextureResource.CubeLayoutError();
        swift_allocError();
        *v17 = 2;
        swift_willThrow();
        return v1;
      }

      MEMORY[0x1C68F3650]();
      if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_20;
      }

      goto LABEL_41;
    }

    Width = CGImageGetWidth(a1);
    v7 = 0;
    v8 = Width;
    v1 = MEMORY[0x1E69E7CC0];
    while ((v7 * Width) >> 64 == (v7 * Width) >> 63)
    {
      v24.origin.y = (v7 * Width);
      v24.origin.x = 0.0;
      v24.size.width = Width;
      v24.size.height = Width;
      v9 = CGImageCreateWithImageInRect(a1, v24);
      if (!v9)
      {
        goto LABEL_36;
      }

      v3 = v9;
      MEMORY[0x1C68F3650]();
      if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v10 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v7;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v1 = v23;
      if (v7 == 6)
      {
        return v1;
      }
    }

    __break(1u);
  }

  else
  {
    Height = CGImageGetHeight(a1);
    v12 = 0;
    v8 = Height;
    v1 = MEMORY[0x1E69E7CC0];
    while ((v12 * Height) >> 64 == (v12 * Height) >> 63)
    {
      v25.origin.x = (v12 * Height);
      v25.origin.y = 0.0;
      v25.size.width = Height;
      v25.size.height = Height;
      v13 = CGImageCreateWithImageInRect(a1, v25);
      if (!v13)
      {
        goto LABEL_36;
      }

      v3 = v13;
      MEMORY[0x1C68F3650]();
      if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v14 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v12;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v1 = v23;
      if (v12 == 6)
      {
        return v1;
      }
    }
  }

  __break(1u);
LABEL_41:
  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_20:
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v1 = v23;
  v27.origin.x = (2 * v3);
  v27.origin.y = v8;
  v27.size.width = v8;
  v27.size.height = v8;
  if (!CGImageCreateWithImageInRect(a1, v27))
  {
    goto LABEL_36;
  }

  MEMORY[0x1C68F3650]();
  if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v18 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v1 = v23;
  v28.origin.y = 0.0;
  v28.origin.x = v8;
  v28.size.width = v8;
  v28.size.height = v8;
  if (!CGImageCreateWithImageInRect(a1, v28))
  {
    goto LABEL_36;
  }

  MEMORY[0x1C68F3650]();
  if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v19 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v1 = v23;
  v29.origin.x = v8;
  v29.origin.y = (2 * v3);
  v29.size.width = v8;
  v29.size.height = v8;
  if (!CGImageCreateWithImageInRect(a1, v29))
  {
    goto LABEL_36;
  }

  MEMORY[0x1C68F3650]();
  if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v20 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v1 = v23;
  v30.origin.x = (3 * v3);
  v30.origin.y = v8;
  v30.size.width = v8;
  v30.size.height = v8;
  if (!CGImageCreateWithImageInRect(a1, v30))
  {
    goto LABEL_36;
  }

  MEMORY[0x1C68F3650]();
  if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v21 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v1 = v23;
  v31.origin.x = v8;
  v31.origin.y = v8;
  v31.size.width = v8;
  v31.size.height = v8;
  if (CGImageCreateWithImageInRect(a1, v31))
  {
    MEMORY[0x1C68F3650]();
    if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v22 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    return v23;
  }

  else
  {
LABEL_36:
    lazy protocol witness table accessor for type TextureResource.CubeLayoutError and conformance TextureResource.CubeLayoutError();
    swift_allocError();
    *v15 = 2;
    swift_willThrow();
  }

  return v1;
}

unint64_t lazy protocol witness table accessor for type TextureResource.Semantic and conformance TextureResource.Semantic()
{
  result = lazy protocol witness table cache variable for type TextureResource.Semantic and conformance TextureResource.Semantic;
  if (!lazy protocol witness table cache variable for type TextureResource.Semantic and conformance TextureResource.Semantic)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextureResource.Semantic and conformance TextureResource.Semantic);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TextureResource.MipmapsMode and conformance TextureResource.MipmapsMode()
{
  result = lazy protocol witness table cache variable for type TextureResource.MipmapsMode and conformance TextureResource.MipmapsMode;
  if (!lazy protocol witness table cache variable for type TextureResource.MipmapsMode and conformance TextureResource.MipmapsMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextureResource.MipmapsMode and conformance TextureResource.MipmapsMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TextureResource.Compression.ASTCBlockSize and conformance TextureResource.Compression.ASTCBlockSize()
{
  result = lazy protocol witness table cache variable for type TextureResource.Compression.ASTCBlockSize and conformance TextureResource.Compression.ASTCBlockSize;
  if (!lazy protocol witness table cache variable for type TextureResource.Compression.ASTCBlockSize and conformance TextureResource.Compression.ASTCBlockSize)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextureResource.Compression.ASTCBlockSize and conformance TextureResource.Compression.ASTCBlockSize);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TextureResource.Compression.ASTCQuality and conformance TextureResource.Compression.ASTCQuality()
{
  result = lazy protocol witness table cache variable for type TextureResource.Compression.ASTCQuality and conformance TextureResource.Compression.ASTCQuality;
  if (!lazy protocol witness table cache variable for type TextureResource.Compression.ASTCQuality and conformance TextureResource.Compression.ASTCQuality)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextureResource.Compression.ASTCQuality and conformance TextureResource.Compression.ASTCQuality);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TextureResource.Compression and conformance TextureResource.Compression()
{
  result = lazy protocol witness table cache variable for type TextureResource.Compression and conformance TextureResource.Compression;
  if (!lazy protocol witness table cache variable for type TextureResource.Compression and conformance TextureResource.Compression)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextureResource.Compression and conformance TextureResource.Compression);
  }

  return result;
}

uint64_t __swift_memcpy5_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for TextureResource.CreateOptions(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 5))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TextureResource.CreateOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TextureResource.DrawableQueue.Descriptor(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 57))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 56);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TextureResource.DrawableQueue.Descriptor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TextureResource.Compression(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 65285 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65285 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65285;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65285;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65285;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  if (v6 <= 5)
  {
    v7 = 5;
  }

  else
  {
    v7 = *(a1 + 1);
  }

  v8 = v7 - 6;
  if (v6 < 4)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

uint64_t storeEnumTagSinglePayload for TextureResource.Compression(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65285 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65285 < 0xFF0000)
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
    v5 = ((a2 - 251) >> 16) + 1;
    *result = a2 - 251;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TextureResource.Compression.Kind(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_20;
  }

  v2 = a2 + 65285;
  if (a2 + 65285 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (v2 < 0xFF0000)
  {
    v3 = 1;
  }

  if (v2 >= 0x10000)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = a1[1];
      if (!a1[1])
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 16)) - 65285;
  }

  if (v4)
  {
    v5 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v5 << 16)) - 65285;
    }
  }

LABEL_20:
  v7 = *(a1 + 1);
  if (v7 >= 4)
  {
    v8 = v7 - 3;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TextureResource.Compression.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 65285;
  if (a3 + 65285 <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFB)
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 16) + 1;
    *result = a2 - 251;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 2) = v6;
      }

      else
      {
        *(result + 2) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v5)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *(result + 1) = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t getEnumTag for TextureResource.Compression.Kind(uint64_t a1)
{
  v1 = *(a1 + 1);
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for TextureResource.Compression.Kind(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFC)
  {
    *result = a2 - 253;
  }

  else if (a2)
  {
    *(result + 1) = a2 + 3;
  }

  return result;
}

uint64_t type metadata completion function for TextureResource.LoadError()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TextureResource.Compression.Kind and conformance TextureResource.Compression.Kind()
{
  result = lazy protocol witness table cache variable for type TextureResource.Compression.Kind and conformance TextureResource.Compression.Kind;
  if (!lazy protocol witness table cache variable for type TextureResource.Compression.Kind and conformance TextureResource.Compression.Kind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextureResource.Compression.Kind and conformance TextureResource.Compression.Kind);
  }

  return result;
}

uint64_t outlined init with copy of TextureResource.LoadError(uint64_t a1, uint64_t a2)
{
  Error = type metadata accessor for TextureResource.LoadError();
  (*(*(Error - 8) + 16))(a2, a1, Error);
  return a2;
}

uint64_t partial apply for specialized closure #1 in closure #1 in LoadRequest.init(_:dependencies:)(uint64_t a1)
{
  return specialized closure #1 in closure #1 in LoadRequest.init(_:dependencies:)(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), outlined consume of Result<AudioFileResource, Error>?);
}

{
  v2 = *(v1 + 40);
  return specialized closure #1 in closure #1 in LoadRequest.init(_:dependencies:)(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32));
}

{
  v2 = *(v1 + 40);
  return specialized closure #1 in closure #1 in LoadRequest.init(_:dependencies:)(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32));
}

{
  v2 = *(v1 + 40);
  return specialized closure #1 in closure #1 in LoadRequest.init(_:dependencies:)(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32));
}

void outlined consume of Result<[Entity], Error>?(void *a1, char a2)
{
  if (a2 != -1)
  {
    outlined consume of Result<ModelEntity, Error>(a1, a2 & 1, MEMORY[0x1E69E7CF8]);
  }
}

double _ss6ResultOy17RealityFoundation19ShaderGraphMaterialVs5Error_pGSgWOi0_(uint64_t a1)
{
  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 120) = -256;
  return result;
}

uint64_t partial apply for specialized closure #2 in LoadRequest<A>.thenWaitForResourceSharing()(uint64_t *a1)
{
  v2 = *(v1 + 24);
  return specialized closure #2 in LoadRequest<A>.thenWaitForResourceSharing()(*a1, *(v1 + 16));
}

{
  return specialized closure #2 in LoadRequest<A>.thenWaitForResourceSharing()(*a1, *(v1 + 16), *(v1 + 24), _ss6ResultOyxs5Error_pGRi_zRi0_zly10RealityKit19EnvironmentResourceCIsegn_SgWOy, outlined consume of (@escaping @callee_guaranteed () -> ())?);
}

uint64_t partial apply for specialized closure #3 in LoadRequest<A>.thenWaitForResourceSharing()(_OWORD *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = a1[5];
  v8[4] = a1[4];
  v8[5] = v4;
  v9[0] = a1[6];
  *(v9 + 9) = *(a1 + 105);
  v5 = a1[1];
  v8[0] = *a1;
  v8[1] = v5;
  v6 = a1[3];
  v8[2] = a1[2];
  v8[3] = v6;
  return specialized closure #3 in LoadRequest<A>.thenWaitForResourceSharing()(v8, v2, v3);
}

uint64_t outlined assign with take of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void partial apply for specialized closure #1 in closure #3 in LoadRequest<A>.thenWaitForResourceSharing()(char a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 152);
  v4 = *(v1 + 104);
  v7[4] = *(v1 + 88);
  v7[5] = v4;
  v8[0] = *(v1 + 120);
  *(v8 + 9) = *(v1 + 129);
  v5 = *(v1 + 40);
  v7[0] = *(v1 + 24);
  v7[1] = v5;
  v6 = *(v1 + 72);
  v7[2] = *(v1 + 56);
  v7[3] = v6;
  specialized closure #1 in closure #3 in LoadRequest<A>.thenWaitForResourceSharing()(a1, v2, v7);
}

{
  v2 = *(v1 + 32);
  specialized closure #1 in closure #3 in LoadRequest<A>.thenWaitForResourceSharing()(a1, *(v1 + 16), *(v1 + 24));
}

{
  v2 = *(v1 + 32);
  specialized closure #1 in closure #3 in LoadRequest<A>.thenWaitForResourceSharing()(a1, *(v1 + 16), *(v1 + 24));
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type TextureResource.TextureImportOperationError and conformance TextureResource.TextureImportOperationError()
{
  result = lazy protocol witness table cache variable for type TextureResource.TextureImportOperationError and conformance TextureResource.TextureImportOperationError;
  if (!lazy protocol witness table cache variable for type TextureResource.TextureImportOperationError and conformance TextureResource.TextureImportOperationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextureResource.TextureImportOperationError and conformance TextureResource.TextureImportOperationError);
  }

  return result;
}

uint64_t partial apply for closure #1 in static TextureResource.compressTextureWithEngineQueueCompletion(coreTextureAsset:compressOptions:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  return closure #1 in static TextureResource.compressTextureWithEngineQueueCompletion(coreTextureAsset:compressOptions:)();
}

uint64_t partial apply for specialized closure #3 in LoadRequest<A>.thenWaitForResourceSharing()(uint64_t *a1)
{
  return specialized closure #3 in LoadRequest<A>.thenWaitForResourceSharing()(*a1, *(v1 + 16), *(v1 + 24));
}

{
  return specialized closure #3 in LoadRequest<A>.thenWaitForResourceSharing()(*a1, *(v1 + 16), *(v1 + 24));
}

uint64_t outlined assign with copy of Result<Material, Error>?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy10RealityKit8Material_ps5Error_pGSgMd, &_ss6ResultOy10RealityKit8Material_ps5Error_pGSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}