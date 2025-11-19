void specialized RKARSystem.updateCommon(engine:viewportSize:timeDelta:)()
{
  v1 = type metadata accessor for __AssetRef();
  v11 = *(v1 - 8);
  v2 = v11;
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC10RealityKit10RKARSystem_prevOrientation;
  RKARSystem.orientation.getter();
  *(v0 + v5) = RKARSystem.orientation.getter();

  dispatch thunk of __RERenderGraphEmitter.__handle.getter();

  __AssetRef.__as<A>(_:)();
  v6 = *(v2 + 8);
  v6(v4, v1);
  RERenderGraphEmitterAssetSetRuntimeSettingBool();

  dispatch thunk of __RERenderGraphEmitter.__handle.getter();

  __AssetRef.__as<A>(_:)();
  v6(v4, v1);
  RERenderGraphEmitterAssetSetRuntimeSettingBool();
  v7 = [*(v0 + OBJC_IVAR____TtC10RealityKit10RKARSystem_session) configuration];
  if (v7 && (v8 = v7, v9 = [v7 videoFormat], v8, v10 = objc_msgSend(v9, sel_device), v9, v10))
  {
  }

  else
  {

    dispatch thunk of __RERenderGraphEmitter.__handle.getter();

    __AssetRef.__as<A>(_:)();
    v6(v4, v1);
    RERenderGraphEmitterAssetSetRuntimeSettingBool();
  }
}

uint64_t specialized RKARSystem.session(_:didUpdate:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  *&v10 = MEMORY[0x1EEE9AC00](v8).n128_u64[0];
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 renderFramesPerSecond];
  type metadata accessor for ARReferenceObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v14 = static OS_dispatch_queue.main.getter();
  v15 = swift_allocObject();
  *(v15 + 16) = v2;
  *(v15 + 24) = v13;
  aBlock[4] = partial apply for closure #1 in RKARSystem.session(_:didUpdate:);
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_10;
  v16 = _Block_copy(aBlock);
  v17 = v2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1E12F4260](0, v12, v7, v16);
  _Block_release(v16);

  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v12, v8);
}

void specialized RKARSystem.session(_:didAdd:)(unint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC10RealityKit10RKARSystem_anchorSemaphore;
  v5 = *(v1 + OBJC_IVAR____TtC10RealityKit10RKARSystem_anchorSemaphore);
  OS_dispatch_semaphore.wait()();

  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v7 = MEMORY[0x1E69E7CC0];
    v24 = v4;
    if (!i)
    {
      goto LABEL_12;
    }

    v28 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    if (i < 0)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = 0;
      do
      {
        v9 = v8 + 1;
        MEMORY[0x1E12F44E0](v8);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v8 = v9;
      }

      while (i != v9);
    }

    else
    {
      v10 = (a1 + 32);
      do
      {
        v11 = *v10++;
        v12 = v11;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        a1 = *(v28 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        --i;
      }

      while (i);
    }

    v7 = v28;
LABEL_12:
    v25 = *(v7 + 16);
    if (!v25)
    {
LABEL_16:

      v23 = *(v2 + v24);
      OS_dispatch_semaphore.signal()();

      return;
    }

    v13 = 0;
    v4 = OBJC_IVAR____TtC10RealityKit10RKARSystem_removedAnchors;
    v14 = OBJC_IVAR____TtC10RealityKit10RKARSystem_updatedAnchors;
    v15 = OBJC_IVAR____TtC10RealityKit10RKARSystem_addedAnchors;
    while (v13 < *(v7 + 16))
    {
      a1 = v13 + 1;
      v16 = *(v7 + 32 + 8 * v13);
      swift_beginAccess();
      v17 = v16;
      v18 = specialized Set._Variant.remove(_:)(v17);
      swift_endAccess();

      swift_beginAccess();
      v19 = v17;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = *(v2 + v14);
      *(v2 + v14) = 0x8000000000000000;

      *(v2 + v14) = v26;
      swift_endAccess();
      swift_beginAccess();
      v21 = v19;
      v22 = swift_isUniquelyReferenced_nonNull_native();
      v27 = *(v2 + v15);
      *(v2 + v15) = 0x8000000000000000;

      *(v2 + v15) = v27;
      swift_endAccess();

      v13 = a1;
      if (v25 == a1)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    ;
  }

  __break(1u);
}

void specialized RKARSystem.session(_:didUpdate:)(unint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC10RealityKit10RKARSystem_anchorSemaphore;
  v5 = *(v1 + OBJC_IVAR____TtC10RealityKit10RKARSystem_anchorSemaphore);
  OS_dispatch_semaphore.wait()();

  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v7 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      goto LABEL_12;
    }

    v21 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    if (i < 0)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = 0;
      do
      {
        v9 = v8 + 1;
        MEMORY[0x1E12F44E0]();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v8 = v9;
      }

      while (i != v9);
    }

    else
    {
      v10 = (a1 + 32);
      do
      {
        v11 = *v10++;
        v12 = v11;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        --i;
      }

      while (i);
    }

    v7 = v21;
LABEL_12:
    a1 = *(v7 + 16);
    if (!a1)
    {
LABEL_16:

      v19 = *(v2 + v4);
      OS_dispatch_semaphore.signal()();

      return;
    }

    v13 = 0;
    v14 = OBJC_IVAR____TtC10RealityKit10RKARSystem_updatedAnchors;
    while (v13 < *(v7 + 16))
    {
      v15 = v13 + 1;
      v16 = *(v7 + 32 + 8 * v13);
      swift_beginAccess();
      v17 = v16;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = *(v2 + v14);
      *(v2 + v14) = 0x8000000000000000;

      *(v2 + v14) = v20;
      swift_endAccess();

      v13 = v15;
      if (a1 == v15)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    ;
  }

  __break(1u);
}

void specialized RKARSystem.session(_:didRemove:)(unint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC10RealityKit10RKARSystem_anchorSemaphore;
  v5 = *(v1 + OBJC_IVAR____TtC10RealityKit10RKARSystem_anchorSemaphore);
  OS_dispatch_semaphore.wait()();

  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v7 = MEMORY[0x1E69E7CC0];
    v23 = v4;
    if (!i)
    {
      goto LABEL_12;
    }

    v25 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    if (i < 0)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = 0;
      do
      {
        v9 = v8 + 1;
        MEMORY[0x1E12F44E0]();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v8 = v9;
      }

      while (i != v9);
    }

    else
    {
      v10 = (a1 + 32);
      do
      {
        v11 = *v10++;
        v12 = v11;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        --i;
      }

      while (i);
    }

    v7 = v25;
LABEL_12:
    a1 = *(v7 + 16);
    if (!a1)
    {
LABEL_16:

      v22 = *(v2 + v23);
      OS_dispatch_semaphore.signal()();

      return;
    }

    v13 = 0;
    v4 = OBJC_IVAR____TtC10RealityKit10RKARSystem_addedAnchors;
    v14 = OBJC_IVAR____TtC10RealityKit10RKARSystem_removedAnchors;
    while (v13 < *(v7 + 16))
    {
      v15 = v13 + 1;
      v16 = *(v7 + 32 + 8 * v13);
      swift_beginAccess();
      v17 = v16;
      v18 = specialized Set._Variant.remove(_:)(v17);
      swift_endAccess();

      swift_beginAccess();
      v19 = specialized Set._Variant.remove(_:)(v17);
      swift_endAccess();

      swift_beginAccess();
      v20 = v17;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = *(v2 + v14);
      *(v2 + v14) = 0x8000000000000000;

      *(v2 + v14) = v24;
      swift_endAccess();

      v13 = v15;
      if (a1 == v15)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    ;
  }

  __break(1u);
}

void specialized RKARSystem.SessionDelegate.session(_:requestedRunWith:options:)()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v1 = swift_unknownObjectWeakLoadStrong();
    if (v1)
    {

      v2 = swift_unknownObjectWeakLoadStrong();
      if (!v2)
      {
        __break(1u);
        goto LABEL_14;
      }

      v3 = v2;
      v4 = v2 + OBJC_IVAR____TtC10RealityKit6ARView_sessionComponents;
      swift_beginAccess();
      LOBYTE(v4) = *(v4 + 2);

      if (v4)
      {
        v5 = swift_unknownObjectWeakLoadStrong();
        if (v5)
        {
          v6 = v5;
          v7 = swift_unknownObjectWeakLoadStrong();
          if (v7)
          {
            v8 = v7;

            v9 = &v8[OBJC_IVAR____TtC10RealityKit6ARView_sessionComponents];
            swift_beginAccess();
            LOBYTE(v9) = v9[3];

            v10 = &v6[OBJC_IVAR____TtC10RealityKit6ARView_sessionComponents];
            swift_beginAccess();
            v10[2] = v9;

            return;
          }

          goto LABEL_15;
        }

LABEL_14:
        __break(1u);
LABEL_15:
        __break(1u);
        return;
      }
    }

    else
    {
    }
  }
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  }

  return result;
}

uint64_t outlined init with take of Material(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t outlined assign with take of Material?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type Float and conformance Float()
{
  result = lazy protocol witness table cache variable for type Float and conformance Float;
  if (!lazy protocol witness table cache variable for type Float and conformance Float)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Float and conformance Float);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type UUID and conformance UUID(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Entity.__accessibilityWrappers(rootEntityWrapper:)(id a1)
{
  v2 = type metadata accessor for Entity.ChildCollection();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC15ChildCollectionV16IndexingIteratorVy__AEGMd);
  v42 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v46 = &v41 - v5;
  v53 = MEMORY[0x1E69E7CC0];
  if (MEMORY[0x1E12F2AA0](v4))
  {
    v6 = type metadata accessor for __EntityAccessibilityWrapper();
    v7 = objc_allocWithZone(v6);
    swift_weakInit();
    swift_weakAssign();
    *&v7[OBJC_IVAR____TtC10RealityKit28__EntityAccessibilityWrapper_rootEntityWrapper] = a1;
    v50.receiver = v7;
    v50.super_class = v6;
    v8 = a1;
    objc_msgSendSuper2(&v50, sel_init);
    MEMORY[0x1E12F4070]();
    if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_50;
    }

    goto LABEL_3;
  }

  if (Entity.__isAccessibilityRoot.getter())
  {
    v9 = type metadata accessor for __EntityAccessibilityWrapper();
    v10 = objc_allocWithZone(v9);
    swift_weakInit();
    swift_weakAssign();
    *&v10[OBJC_IVAR____TtC10RealityKit28__EntityAccessibilityWrapper_rootEntityWrapper] = a1;
    v51.receiver = v10;
    v51.super_class = v9;
    v11 = a1;
    a1 = objc_msgSendSuper2(&v51, sel_init);
    v12 = a1;
    v41 = a1;
  }

  else
  {
    v41 = 0;
    v12 = a1;
  }

  v13 = v12;
  type metadata accessor for Entity();
  HasHierarchy.children.getter();
  Entity.ChildCollection.makeIterator()();
  Entity.ChildCollection.IndexingIterator.next()();
  v14 = v52[0];
  if (!v52[0])
  {
LABEL_40:
    v15 = MEMORY[0x1E69E7CC0];
LABEL_41:
    (*(v42 + 8))(v46, v3);
    v39 = v41;
    if (!v41)
    {
      goto LABEL_45;
    }

    if (v15 >> 62)
    {
      if (__CocoaSet.count.getter())
      {
        goto LABEL_44;
      }
    }

    else if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_44:

LABEL_45:
      specialized Array.append<A>(contentsOf:)(v15);
LABEL_55:

      return v53;
    }

    v39 = v39;
    MEMORY[0x1E12F4070]();
    if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    goto LABEL_55;
  }

  v15 = MEMORY[0x1E69E7CC0];
  v43 = v3;
  v44 = a1;
  while (1)
  {
    v16 = Entity.__accessibilityWrappers(rootEntityWrapper:)(a1);
    v17 = v16;
    v18 = v16 >> 62;
    if (v16 >> 62)
    {
      v19 = __CocoaSet.count.getter();
    }

    else
    {
      v19 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v20 = v15 >> 62;
    if (v15 >> 62)
    {
      v38 = __CocoaSet.count.getter();
      v22 = v38 + v19;
      if (__OFADD__(v38, v19))
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }
    }

    else
    {
      v21 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v22 = v21 + v19;
      if (__OFADD__(v21, v19))
      {
        goto LABEL_39;
      }
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v20)
      {
        v23 = v15 & 0xFFFFFFFFFFFFFF8;
        if (v22 <= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }

LABEL_20:
      __CocoaSet.count.getter();
      goto LABEL_21;
    }

    if (v20)
    {
      goto LABEL_20;
    }

LABEL_21:
    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v23 = v15 & 0xFFFFFFFFFFFFFF8;
LABEL_22:
    v48 = v14;
    v49 = v19;
    v24 = *(v23 + 16);
    v25 = *(v23 + 24);
    if (v18)
    {
      break;
    }

    v26 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v26)
    {
      goto LABEL_9;
    }

LABEL_26:
    if (((v25 >> 1) - v24) < v49)
    {
      goto LABEL_47;
    }

    v29 = v23 + 8 * v24 + 32;
    v47 = v23;
    if (v18)
    {
      if (v26 < 1)
      {
        goto LABEL_49;
      }

      v45 = v15;
      lazy protocol witness table accessor for type [__EntityAccessibilityWrapper] and conformance [A]();
      for (i = 0; i != v26; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10RealityKit28__EntityAccessibilityWrapperCGMd);
        v32 = specialized protocol witness for Collection.subscript.read in conformance [A](v52, i, v17);
        v34 = *v33;
        (v32)(v52, 0);
        *(v29 + 8 * i) = v34;
      }

      v3 = v43;
      a1 = v44;
      v15 = v45;
      v30 = v49;
    }

    else
    {
      type metadata accessor for __EntityAccessibilityWrapper();
      v30 = v49;
      swift_arrayInitWithCopy();
    }

    if (v30 > 0)
    {
      v35 = *(v47 + 16);
      v36 = __OFADD__(v35, v30);
      v37 = v35 + v30;
      if (v36)
      {
        goto LABEL_48;
      }

      *(v47 + 16) = v37;
    }

LABEL_10:
    Entity.ChildCollection.IndexingIterator.next()();
    v14 = v52[0];
    if (!v52[0])
    {
      goto LABEL_41;
    }
  }

  v27 = v23;
  v28 = __CocoaSet.count.getter();
  v23 = v27;
  v26 = v28;
  if (v28)
  {
    goto LABEL_26;
  }

LABEL_9:

  if (v49 <= 0)
  {
    goto LABEL_10;
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_3:
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return v53;
}

uint64_t specialized Array.append<A>(contentsOf:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = __CocoaSet.count.getter();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  specialized Array._copyContents(initializing:)(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

_OWORD *Entity.__calculateScreenBoundingRect(in:)(char *a1)
{
  type metadata accessor for Entity();
  HasTransform.visualBounds(recursive:relativeTo:excludeInactive:)();
  v22 = v2;
  v23 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5SIMD3VySfGGMd);
  result = swift_allocObject();
  v5 = vdupq_lane_s32(0, 0);
  v6 = v5;
  v6.i32[0] = v22;
  v7 = v6;
  v7.i32[1] = DWORD1(v23);
  v7.i32[2] = DWORD2(v22);
  v5.i32[0] = v23;
  v8 = v5;
  v8.i32[1] = DWORD1(v23);
  v8.i32[2] = DWORD2(v22);
  result[2] = v23;
  result[3] = v7;
  v9 = v23;
  LODWORD(v9) = v22;
  HIDWORD(v9) = v6.i32[3];
  v10 = v22;
  LODWORD(v10) = v23;
  HIDWORD(v10) = v5.i32[3];
  result[4] = v8;
  result[5] = v9;
  v5.i32[1] = DWORD1(v22);
  v6.i32[1] = DWORD1(v22);
  result[6] = v22;
  result[7] = v10;
  v6.i32[2] = DWORD2(v23);
  v5.i32[2] = DWORD2(v23);
  result[8] = v6;
  result[9] = v5;
  v11 = *&a1[OBJC_IVAR____TtC10RealityKit6ARView_arSystem];
  if (v11)
  {
    if ((*(v11 + OBJC_IVAR____TtC10RealityKit10RKARSystem_cameraMode) & 1) != 0 || *(v11 + OBJC_IVAR____TtC10RealityKit10RKARSystem___enableUpdateCameraWorldMatrixFromARFrame) != 1)
    {
      v12 = 0;
    }

    else
    {
      v12 = *(v11 + OBJC_IVAR____TtC10RealityKit10RKARSystem___enableUpdateCameraProjectionMatrixFromARFrame);
    }

    v13 = 1.79769313e308;
    v14 = -1.79769313e308;
    v15 = 32;
    v16 = -1.79769313e308;
    v17 = 1.79769313e308;
    do
    {
      HasTransform.convert(position:to:)();
      v19 = COERCE_DOUBLE(ARView.project(_:isAR:)(v12, v18));
      if ((v21 & 1) == 0)
      {
        if (v17 > v19)
        {
          v17 = v19;
        }

        if (v13 > v20)
        {
          v13 = v20;
        }

        if (v16 <= v19)
        {
          v16 = v19;
        }

        if (v14 <= v20)
        {
          v14 = v20;
        }
      }

      v15 += 16;
    }

    while (v15 != 160);
    swift_setDeallocating();
    swift_deallocClassInstance();
    [a1 bounds];
    v25.origin.x = v17;
    v25.origin.y = v13;
    v25.size.width = v16 - v17;
    v25.size.height = v14 - v13;
    return CGRectIntersectsRect(v24, v25);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t __EntityAccessibilityWrapper.entityLabel.getter()
{
  v1 = type metadata accessor for AccessibilityComponent();
  v45 = *(v1 - 8);
  v46 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v44 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v47 = &v36 - v4;
  v5 = type metadata accessor for LocalizedStringResource();
  v48 = *(v5 - 8);
  v49 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v42 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v43 = &v36 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVy10Foundation16AttributedStringV13CharacterViewVGMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v40 = &v36 - v10;
  v11 = type metadata accessor for AttributedString.CharacterView();
  v38 = *(v11 - 8);
  v39 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v37 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation13TextComponentVSgMd);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v36 - v14;
  v16 = type metadata accessor for Entity.ComponentSet();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v36 - v21;
  v23 = type metadata accessor for AttributedString();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v36 = &v36 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!swift_weakLoadStrong())
  {
    goto LABEL_4;
  }

  v41 = v0;
  dispatch thunk of Entity.components.getter();

  v26 = type metadata accessor for TextComponent();
  Entity.ComponentSet.subscript.getter();
  (*(v17 + 8))(v19, v16);
  if ((*(*(v26 - 8) + 48))(v15, 1, v26))
  {
    outlined destroy of ARConfigurationCreateResult?(v15, &_s17RealityFoundation13TextComponentVSgMd);
LABEL_4:
    (*(v24 + 56))(v22, 1, 1, v23);
    goto LABEL_5;
  }

  TextComponent.text.getter();
  outlined destroy of ARConfigurationCreateResult?(v15, &_s17RealityFoundation13TextComponentVSgMd);
  if ((*(v24 + 48))(v22, 1, v23) != 1)
  {
    v33 = v36;
    (*(v24 + 32))(v36, v22, v23);
    v34 = v37;
    AttributedString.characters.getter();
    specialized Collection.subscript.getter(v40);
    (*(v38 + 8))(v34, v39);
    v32 = String.init(_:)();
    (*(v24 + 8))(v33, v23);
    return v32;
  }

LABEL_5:
  outlined destroy of ARConfigurationCreateResult?(v22, &_s10Foundation16AttributedStringVSgMd);
  if (swift_weakLoadStrong())
  {
    v27 = v44;
    Entity.accessibilityComponent.getter(v44);
    v28 = v47;
    AccessibilityComponent.label.getter();

    (*(v45 + 8))(v27, v46);
    v30 = v48;
    v29 = v49;
    if ((*(v48 + 48))(v28, 1, v49) != 1)
    {
      v31 = v43;
      (*(v30 + 32))(v43, v28, v29);
      (*(v30 + 16))(v42, v31, v29);
      v32 = String.init(localized:)();
      (*(v30 + 8))(v31, v29);
      return v32;
    }
  }

  else
  {
    v28 = v47;
    (*(v48 + 56))(v47, 1, 1, v49);
  }

  outlined destroy of ARConfigurationCreateResult?(v28, &_s10Foundation23LocalizedStringResourceVSgMd);
  if (!swift_weakLoadStrong())
  {
    return 0;
  }

  v32 = MEMORY[0x1E12F2A70]();

  return v32;
}

uint64_t specialized Collection.subscript.getter@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV5IndexV5lower_AE5uppertMd);
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v26 - v4;
  v6 = type metadata accessor for AttributedString.Index();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSny10Foundation16AttributedStringV5IndexVGMd);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16PartialRangeFromVy10Foundation16AttributedStringV5IndexVGMd);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v26 - v14;
  v16 = type metadata accessor for AttributedString.CharacterView();
  v17 = lazy protocol witness table accessor for type AccessibilityComponent.SupportedActions and conformance AccessibilityComponent.SupportedActions(&lazy protocol witness table cache variable for type AttributedString.CharacterView and conformance AttributedString.CharacterView, MEMORY[0x1E6968678]);
  v33 = v16;
  v18 = v17;
  dispatch thunk of Collection.startIndex.getter();
  lazy protocol witness table accessor for type AccessibilityComponent.SupportedActions and conformance AccessibilityComponent.SupportedActions(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8]);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    dispatch thunk of Collection.endIndex.getter();
    lazy protocol witness table accessor for type AccessibilityComponent.SupportedActions and conformance AccessibilityComponent.SupportedActions(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8]);
    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    if (result)
    {
      v29 = v1;
      v20 = *(v7 + 32);
      v20(v5, v15, v6);
      v27 = v10;
      v28 = v18;
      v21 = v7;
      v23 = v30;
      v22 = v31;
      v20(&v5[*(v31 + 48)], v9, v6);
      outlined init with copy of CheckedContinuation<related decl 'e' for ARErrorCode?, Never>?(v5, v23, &_s10Foundation16AttributedStringV5IndexV5lower_AE5uppertMd);
      v24 = *(v22 + 48);
      v20(v12, v23, v6);
      v25 = *(v21 + 8);
      v25(v23 + v24, v6);
      outlined init with take of (lower: AttributedString.Index, upper: AttributedString.Index)(v5, v23);
      v20(&v12[*(v27 + 36)], (v23 + *(v22 + 48)), v6);
      v25(v23, v6);
      dispatch thunk of Collection.subscript.getter();
      return outlined destroy of ARConfigurationCreateResult?(v12, &_sSny10Foundation16AttributedStringV5IndexVGMd);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id @objc __EntityAccessibilityWrapper.entityLabel.getter(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v7 = v6;

  if (v7)
  {
    v8 = MEMORY[0x1E12F3F80](v5, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __EntityAccessibilityWrapper.entityValue.getter()
{
  v0 = type metadata accessor for AccessibilityComponent();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for LocalizedStringResource();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v16 - v12;
  if (swift_weakLoadStrong())
  {
    Entity.accessibilityComponent.getter(v3);
    AccessibilityComponent.value.getter();

    (*(v1 + 8))(v3, v0);
    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      (*(v8 + 32))(v13, v6, v7);
      (*(v8 + 16))(v10, v13, v7);
      v14 = String.init(localized:)();
      (*(v8 + 8))(v13, v7);
      return v14;
    }
  }

  else
  {
    (*(v8 + 56))(v6, 1, 1, v7);
  }

  outlined destroy of ARConfigurationCreateResult?(v6, &_s10Foundation23LocalizedStringResourceVSgMd);
  return 0;
}

uint64_t @objc __EntityAccessibilityWrapper.isEntityRoot.getter(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (swift_weakLoadStrong())
  {
    v5 = a1;
    v6 = a3();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t __EntityAccessibilityWrapper.entityAccessibilityCustomRotors.getter()
{
  v1 = v0;
  v55 = type metadata accessor for LocalizedStringResource();
  v2 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v54 = v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v53 = v47 - v5;
  v6 = type metadata accessor for AccessibilityComponent.RotorType(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v60 = v47 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v61 = v47 - v13;
  v59 = type metadata accessor for AccessibilityComponent();
  v14 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v16 = v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_weakLoadStrong();
  v18 = MEMORY[0x1E69E7CC0];
  if (Strong)
  {
    v58 = v7;
    v48 = v2;
    Entity.accessibilityComponent.getter(v16);
    v19 = AccessibilityComponent.customRotors.getter();

    (*(v14 + 8))(v16, v59);
    v20 = v19[2];
    if (v20)
    {
      v68 = v18;
      specialized ContiguousArray.reserveCapacity(_:)();
      v21 = *(v58 + 80);
      v47[1] = v19;
      v22 = v19 + ((v21 + 32) & ~v21);
      v58 = *(v58 + 72);
      v59 = v21;
      v57 = (v21 + 24) & ~v21;
      v56 = &v64;
      v50 = (v48 + 4);
      v49 = (v48 + 2);
      ++v48;
      v23 = v61;
      v51 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
      v52 = v6;
      do
      {
        outlined init with copy of AccessibilityEvents.CustomAction(v22, v23, type metadata accessor for AccessibilityComponent.RotorType);
        v37 = v23;
        v38 = v60;
        outlined init with copy of AccessibilityEvents.CustomAction(v37, v60, type metadata accessor for AccessibilityComponent.RotorType);
        v39 = v57;
        v40 = swift_allocObject();
        *(v40 + 16) = v1;
        v41 = v38;
        v23 = v61;
        outlined init with take of AccessibilityComponent.RotorType(v41, v40 + v39);
        outlined init with copy of AccessibilityEvents.CustomAction(v23, v9, type metadata accessor for AccessibilityComponent.RotorType);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v24 = v53;
          v25 = v55;
          (*v50)(v53, v9, v55);
          (*v49)(v54, v24, v25);
          v26 = v1;
          v27 = String.init(localized:)();
          v29 = v28;
          v30 = v8;
          v31 = v1;
          v32 = objc_allocWithZone(MEMORY[0x1E69DC5F0]);
          v33 = MEMORY[0x1E12F3F80](v27, v29);

          v66 = partial apply for closure #1 in closure #1 in __EntityAccessibilityWrapper.entityAccessibilityCustomRotors.getter;
          v67 = v40;
          aBlock = MEMORY[0x1E69E9820];
          v63 = 1107296256;
          v64 = thunk for @escaping @callee_guaranteed (@guaranteed UIAccessibilityCustomRotorSearchPredicate) -> (@owned UIAccessibilityCustomRotorItemResult?);
          v65 = &block_descriptor_21_0;
          v34 = _Block_copy(&aBlock);
          v35 = v32;
          v1 = v31;
          v8 = v30;
          v9 = v51;
          [v35 initWithName:v33 itemSearchBlock:v34];

          _Block_release(v34);
          v36 = v25;
          v23 = v61;
          (*v48)(v24, v36);
        }

        else
        {
          v42 = *v9;
          v43 = objc_allocWithZone(MEMORY[0x1E69DC5F0]);
          v66 = partial apply for closure #1 in closure #1 in __EntityAccessibilityWrapper.entityAccessibilityCustomRotors.getter;
          v67 = v40;
          aBlock = MEMORY[0x1E69E9820];
          v63 = 1107296256;
          v64 = thunk for @escaping @callee_guaranteed (@guaranteed UIAccessibilityCustomRotorSearchPredicate) -> (@owned UIAccessibilityCustomRotorItemResult?);
          v65 = &block_descriptor_24_1;
          v44 = _Block_copy(&aBlock);
          v45 = v1;
          [v43 initWithSystemType:v42 itemSearchBlock:v44];
          _Block_release(v44);
        }

        outlined destroy of AccessibilityEvents.CustomAction(v23, type metadata accessor for AccessibilityComponent.RotorType);

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v22 += v58;
        --v20;
      }

      while (v20);

      return v68;
    }

    else
    {
    }
  }

  return v18;
}

id closure #1 in closure #1 in __EntityAccessibilityWrapper.entityAccessibilityCustomRotors.getter(void *a1, uint64_t a2, uint64_t a3)
{
  v23[0] = a3;
  v23[1] = a2;
  v4 = type metadata accessor for AccessibilityEvents.RotorNavigation(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v24 = dispatch_semaphore_create(0);
  v8 = [a1 currentItem];
  v9 = [v8 targetElement];

  v26 = 0u;
  v27 = 0u;
  if (!v9)
  {
    Strong = 0;
LABEL_6:
    ObjectType = 0;
    goto LABEL_8;
  }

  type metadata accessor for __EntityAccessibilityWrapper();
  if (swift_dynamicCastClass())
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      ObjectType = type metadata accessor for Entity();
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  Strong = v9;
LABEL_8:
  outlined destroy of ARConfigurationCreateResult?(&v26, &_sypSgMd);
  *&v27 = 0;
  v26 = Strong;
  *(&v27 + 1) = ObjectType;
  v12 = swift_weakLoadStrong();
  if (v12)
  {
    v13 = v12;
    outlined init with copy of AccessibilityEvents.CustomAction(v23[0], v6, type metadata accessor for AccessibilityComponent.RotorType);
    outlined init with copy of CheckedContinuation<related decl 'e' for ARErrorCode?, Never>?(&v26, &v6[v4[6]], &_sypSgMd);

    v14 = [a1 searchDirection];
    v15 = swift_allocObject();
    v16 = v24;
    *(v15 + 16) = v7;
    *(v15 + 24) = v16;
    *&v6[v4[5]] = v13;
    *&v6[v4[7]] = v14;
    v17 = &v6[v4[8]];
    *v17 = partial apply for closure #1 in closure #1 in closure #1 in __EntityAccessibilityWrapper.entityAccessibilityCustomRotors.getter;
    v17[1] = v15;
    v25[3] = v4;
    v25[4] = lazy protocol witness table accessor for type AccessibilityComponent.SupportedActions and conformance AccessibilityComponent.SupportedActions(&lazy protocol witness table cache variable for type AccessibilityEvents.RotorNavigation and conformance AccessibilityEvents.RotorNavigation, type metadata accessor for AccessibilityEvents.RotorNavigation);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v25);
    outlined init with copy of AccessibilityEvents.CustomAction(v6, boxed_opaque_existential_0, type metadata accessor for AccessibilityEvents.RotorNavigation);

    v19 = v16;
    Entity.sendEvent(_:)();

    __swift_destroy_boxed_opaque_existential_1(v25);
    OS_dispatch_semaphore.wait()();
    swift_beginAccess();
    v20 = *(v7 + 16);
    if (v20)
    {
      v21 = [objc_allocWithZone(MEMORY[0x1E69DC5F8]) initWithTargetElement:v20 targetRange:0];
      swift_unknownObjectRelease();

      outlined destroy of AccessibilityEvents.CustomAction(v6, type metadata accessor for AccessibilityEvents.RotorNavigation);
      outlined destroy of ARConfigurationCreateResult?(&v26, &_sypSgMd);

      return v21;
    }

    swift_unknownObjectRelease();

    outlined destroy of AccessibilityEvents.CustomAction(v6, type metadata accessor for AccessibilityEvents.RotorNavigation);
    outlined destroy of ARConfigurationCreateResult?(&v26, &_sypSgMd);
  }

  else
  {
    outlined destroy of ARConfigurationCreateResult?(&v26, &_sypSgMd);

    swift_unknownObjectRelease();
  }

  return 0;
}

Swift::Int closure #1 in closure #1 in closure #1 in __EntityAccessibilityWrapper.entityAccessibilityCustomRotors.getter(uint64_t a1, uint64_t a2)
{
  outlined init with copy of Any(a1, v10);
  type metadata accessor for Entity();
  if (swift_dynamicCast())
  {
    v4 = type metadata accessor for __EntityAccessibilityWrapper();
    v5 = objc_allocWithZone(v4);
    swift_weakInit();
    swift_weakAssign();
    *&v5[OBJC_IVAR____TtC10RealityKit28__EntityAccessibilityWrapper_rootEntityWrapper] = 0;
    v8.receiver = v5;
    v8.super_class = v4;
    v6 = objc_msgSendSuper2(&v8, sel_init);

    swift_beginAccess();
    *(a2 + 16) = v6;
LABEL_5:
    swift_unknownObjectRelease();
    return OS_dispatch_semaphore.signal()();
  }

  outlined init with copy of Any(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObject_pMd);
  if (swift_dynamicCast())
  {
    swift_beginAccess();
    *(a2 + 16) = v9;
    goto LABEL_5;
  }

  return OS_dispatch_semaphore.signal()();
}

Class @objc __EntityAccessibilityWrapper.entityAccessibilityCustomRotors.getter(void *a1, uint64_t a2, void (*a3)(void), unint64_t *a4)
{
  v6 = a1;
  a3();

  type metadata accessor for ARReferenceObject(0, a4);
  v7.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v7.super.isa;
}

uint64_t __EntityAccessibilityWrapper.entityAccessibilityCustomActions.getter()
{
  v0 = type metadata accessor for LocalizedStringResource();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v43 = v33 - v5;
  v6 = type metadata accessor for AccessibilityComponent();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_weakLoadStrong();
  v11 = MEMORY[0x1E69E7CC0];
  if (Strong)
  {
    v12 = Strong;
    Entity.accessibilityComponent.getter(v9);
    v13 = AccessibilityComponent.customActions.getter();
    v14 = v9;
    v15 = v13;
    (*(v7 + 8))(v14, v6);
    v16 = *(v15 + 16);
    if (v16)
    {
      v46 = v11;
      specialized ContiguousArray.reserveCapacity(_:)();
      v18 = *(v1 + 16);
      v17 = v1 + 16;
      v33[1] = v15;
      v34 = v18;
      v19 = *(v17 + 64);
      v20 = v15 + ((v19 + 32) & ~v19);
      v40 = *(v17 + 56);
      v41 = v19;
      v39 = (v19 + 16) & ~v19;
      v37 = (v17 + 16);
      v38 = (v2 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
      v35 = (v17 - 8);
      v36 = v45;
      v21 = v43;
      v42 = v12;
      do
      {
        v22 = v34;
        v34(v21, v20, v0);
        v22(v3, v21, v0);
        v23 = String.init(localized:)();
        v25 = v24;
        v22(v3, v43, v0);
        v26 = v38;
        v27 = v17;
        v28 = swift_allocObject();
        (*v37)(v28 + v39, v3, v0);
        *(v28 + v26) = v42;
        v29 = objc_allocWithZone(MEMORY[0x1E69DC5E8]);

        v30 = MEMORY[0x1E12F3F80](v23, v25);
        v21 = v43;

        v45[2] = partial apply for closure #1 in closure #1 in __EntityAccessibilityWrapper.entityAccessibilityCustomActions.getter;
        v45[3] = v28;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        v45[0] = thunk for @escaping @callee_guaranteed (@guaranteed UIAccessibilityCustomAction) -> (@unowned Bool);
        v45[1] = &block_descriptor_11;
        v31 = _Block_copy(aBlock);
        [v29 initWithName:v30 actionHandler:v31];

        _Block_release(v31);
        (*v35)(v21, v0);

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v17 = v27;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v20 += v40;
        --v16;
      }

      while (v16);

      return v46;
    }

    else
    {
    }
  }

  return v11;
}

uint64_t closure #1 in closure #1 in __EntityAccessibilityWrapper.entityAccessibilityCustomActions.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for AccessibilityEvents.CustomAction(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LocalizedStringResource();
  (*(*(v8 - 8) + 16))(v7, a2, v8);
  *&v7[*(v5 + 20)] = a3;
  v12[3] = v5;
  v12[4] = lazy protocol witness table accessor for type AccessibilityComponent.SupportedActions and conformance AccessibilityComponent.SupportedActions(&lazy protocol witness table cache variable for type AccessibilityEvents.CustomAction and conformance AccessibilityEvents.CustomAction, type metadata accessor for AccessibilityEvents.CustomAction);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v12);
  outlined init with copy of AccessibilityEvents.CustomAction(v7, boxed_opaque_existential_0, type metadata accessor for AccessibilityEvents.CustomAction);

  Entity.sendEvent(_:)();
  outlined destroy of AccessibilityEvents.CustomAction(v7, type metadata accessor for AccessibilityEvents.CustomAction);
  __swift_destroy_boxed_opaque_existential_1(v12);
  return 1;
}

uint64_t __EntityAccessibilityWrapper.entityAccessibilityCustomContent.getter()
{
  v0 = type metadata accessor for LocalizedStringResource();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = type metadata accessor for AccessibilityComponent.CustomContent();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AccessibilityComponent();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_weakLoadStrong();
  v10 = MEMORY[0x1E69E7CC0];
  if (Strong)
  {
    Entity.accessibilityComponent.getter(v8);
    v11 = AccessibilityComponent.customContent.getter();

    (*(v6 + 8))(v8, v5);
    v12 = *(v11 + 16);
    if (v12)
    {
      v34 = v10;
      specialized ContiguousArray.reserveCapacity(_:)();
      v13 = objc_opt_self();
      v15 = *(v2 + 16);
      v14 = v2 + 16;
      v32 = v15;
      v33 = v13;
      v16 = v11 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
      v31 = *(v14 + 56);
      v29 = v11;
      v30 = (v14 - 8);
      do
      {
        v32(v4, v16, v1);
        AccessibilityComponent.CustomContent.label.getter();
        v17 = String.init(localized:)();
        v18 = v1;
        v19 = v14;
        v21 = v20;
        AccessibilityComponent.CustomContent.value.getter();
        v22 = String.init(localized:)();
        v24 = v23;
        v25 = MEMORY[0x1E12F3F80](v17, v21);
        v14 = v19;
        v1 = v18;

        v26 = MEMORY[0x1E12F3F80](v22, v24);

        v27 = [v33 customContentWithLabel:v25 value:{v26, v29}];

        (*v30)(v4, v18);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v16 += v31;
        --v12;
      }

      while (v12);

      return v34;
    }

    else
    {
    }
  }

  return v10;
}

uint64_t __EntityAccessibilityWrapper.entitySupportsAccessibilityActivateAction.getter()
{
  v0 = type metadata accessor for AccessibilityComponent();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AccessibilityComponent.SupportedActions();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  if (swift_weakLoadStrong())
  {
    Entity.accessibilityComponent.getter(v3);
    AccessibilityComponent.systemActions.getter();

    (*(v1 + 8))(v3, v0);
    static AccessibilityComponent.SupportedActions.activate.getter();
    lazy protocol witness table accessor for type AccessibilityComponent.SupportedActions and conformance AccessibilityComponent.SupportedActions(&lazy protocol witness table cache variable for type AccessibilityComponent.SupportedActions and conformance AccessibilityComponent.SupportedActions, MEMORY[0x1E697A5F0]);
    v11 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v12 = *(v5 + 8);
    v12(v7, v4);
    v12(v10, v4);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t @objc __EntityAccessibilityWrapper.entityPerformAccessibilityActivate()(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    v10[3] = a3;
    v10[4] = a4();
    v10[0] = v8;
    v9 = a1;

    Entity.sendEvent(_:)();

    return __swift_destroy_boxed_opaque_existential_1(v10);
  }

  return result;
}

id __EntityAccessibilityWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id __EntityAccessibilityWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for __EntityAccessibilityWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id thunk for @escaping @callee_guaranteed (@guaranteed UIAccessibilityCustomRotorSearchPredicate) -> (@owned UIAccessibilityCustomRotorItemResult?)(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed UIAccessibilityCustomAction) -> (@unowned Bool)(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
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
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  __CocoaSet.count.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

uint64_t specialized Array._copyContents(initializing:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [__EntityAccessibilityWrapper] and conformance [A]();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10RealityKit28__EntityAccessibilityWrapperCGMd);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for __EntityAccessibilityWrapper();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*specialized protocol witness for Collection.subscript.read in conformance [A](void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1E12F44E0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in closure #1 in __EntityAccessibilityWrapper.entityAccessibilityCustomActions.getter(uint64_t a1)
{
  v3 = *(type metadata accessor for LocalizedStringResource() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in closure #1 in __EntityAccessibilityWrapper.entityAccessibilityCustomActions.getter(a1, v1 + v4, v5);
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id partial apply for closure #1 in closure #1 in __EntityAccessibilityWrapper.entityAccessibilityCustomRotors.getter(void *a1)
{
  v3 = *(type metadata accessor for AccessibilityComponent.RotorType(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return closure #1 in closure #1 in __EntityAccessibilityWrapper.entityAccessibilityCustomRotors.getter(a1, v4, v5);
}

uint64_t outlined init with copy of AccessibilityEvents.CustomAction(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of AccessibilityEvents.CustomAction(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t lazy protocol witness table accessor for type AccessibilityComponent.SupportedActions and conformance AccessibilityComponent.SupportedActions(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with take of (lower: AttributedString.Index, upper: AttributedString.Index)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV5IndexV5lower_AE5uppertMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void ARView.physicsOrigin.getter()
{
  if (*(v0 + OBJC_IVAR____TtC10RealityKit6ARView__scene))
  {

    Scene.physicsOrigin.getter();
  }

  else
  {
    __break(1u);
  }
}

void *key path getter for ARView.physicsOrigin : ARView@<X0>(void *result@<X0>, uint64_t *a2@<X8>)
{
  if (*(*result + OBJC_IVAR____TtC10RealityKit6ARView__scene))
  {

    v3 = Scene.physicsOrigin.getter();

    *a2 = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t key path setter for ARView.physicsOrigin : ARView(uint64_t a1, void *a2)
{
  if (*(*a2 + OBJC_IVAR____TtC10RealityKit6ARView__scene))
  {

    Scene.physicsOrigin.setter();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ARView.physicsOrigin.setter()
{
  if (*(v0 + OBJC_IVAR____TtC10RealityKit6ARView__scene))
  {

    Scene.physicsOrigin.setter();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t (*ARView.physicsOrigin.modify(uint64_t (*result)(uint64_t result, char a2)))(uint64_t result, char a2)
{
  v2 = OBJC_IVAR____TtC10RealityKit6ARView__scene;
  *(result + 1) = v1;
  *(result + 2) = v2;
  if (*(v1 + v2))
  {
    v3 = result;

    v4 = Scene.physicsOrigin.getter();

    *v3 = v4;
    return ARView.physicsOrigin.modify;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ARView.physicsOrigin.modify(uint64_t result, char a2)
{
  v2 = *(*(result + 8) + *(result + 16));
  if ((a2 & 1) == 0)
  {
    if (v2)
    {

      Scene.physicsOrigin.setter();
      goto LABEL_6;
    }

LABEL_10:
    __break(1u);
    return result;
  }

  if (!v2)
  {
    __break(1u);
    goto LABEL_10;
  }

  Scene.physicsOrigin.setter();

LABEL_6:
}

void UnlitMaterial.init(color:)(void *a1)
{
  v1 = [a1 CGColor];
  UnlitMaterial.init(color:)();
}

void SimpleMaterial.tintColor.setter(void *a1)
{
  v1 = [a1 CGColor];
  SimpleMaterial.__tintColor.setter();
}

void (*SimpleMaterial.tintColor.modify(void *a1))(void **a1, char a2)
{
  a1[1] = v1;
  v3 = SimpleMaterial.__tintColor.getter();
  v4 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];

  *a1 = v4;
  return SimpleMaterial.tintColor.modify;
}

uint64_t MaterialColorParameter.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for __MaterialColorParameter();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v5 + 16))(v7, a1, v4);
  v8 = (*(v5 + 88))(v7, v4);
  v9 = v8;
  v10 = *MEMORY[0x1E697A2E0];
  if (v8 == *MEMORY[0x1E697A2E0])
  {
    (*(v5 + 96))(v7, v4);
    v13 = *v7;
    v12 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];

    result = (*(v5 + 8))(a1, v4);
    goto LABEL_5;
  }

  if (v8 == *MEMORY[0x1E697A2E8])
  {
    (*(v5 + 8))(a1, v4);
    result = (*(v5 + 96))(v7, v4);
    v12 = *v7;
LABEL_5:
    *a2 = v12;
    *(a2 + 8) = v9 != v10;
    return result;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void outlined consume of MaterialColorParameter(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

void (*SimpleMaterial.baseColor.modify(uint64_t *a1))(void ***a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 16) = v1;
  v6 = type metadata accessor for __MaterialColorParameter();
  *(v5 + 24) = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  *(v5 + 32) = v7;
  v9 = *(v7 + 64);
  if (v3)
  {
    *(v5 + 40) = swift_coroFrameAlloc();
    *(v5 + 48) = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
    *(v5 + 56) = v10;
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 40) = malloc(*(v7 + 64));
    *(v5 + 48) = malloc(v9);
    v10 = malloc(v9);
    *(v5 + 56) = v10;
    v11 = malloc(v9);
  }

  v12 = v11;
  *(v5 + 64) = v11;
  SimpleMaterial.__baseColor.getter();
  (*(v8 + 16))(v10, v12, v6);
  v13 = (*(v8 + 88))(v10, v6);
  v14 = v13;
  v15 = *MEMORY[0x1E697A2E0];
  *(v5 + 12) = *MEMORY[0x1E697A2E0];
  if (v13 == v15)
  {
    (*(v8 + 96))(v10, v6);
    v17 = *v10;
    v16 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];

    (*(v8 + 8))(v12, v6);
    goto LABEL_11;
  }

  if (v13 == *MEMORY[0x1E697A2E8])
  {
    (*(v8 + 8))(v12, v6);
    (*(v8 + 96))(v10, v6);
    v16 = *v10;
LABEL_11:
    *v5 = v16;
    *(v5 + 8) = v14 != v15;
    return SimpleMaterial.baseColor.modify;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t SimpleMaterial.init(color:roughness:isMetallic:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for MaterialScalarParameter();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x1EEE9AC00](v4).n128_u64[0];
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 CGColor];
  (*(v5 + 16))(v8, a2, v4);
  SimpleMaterial.init(color:roughness:isMetallic:)();

  return (*(v5 + 8))(a2, v4);
}

uint64_t SimpleMaterial.init(color:roughness:isMetallic:assetService:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for MaterialScalarParameter();
  v8 = *(v7 - 8);
  *&v9 = MEMORY[0x1EEE9AC00](v7).n128_u64[0];
  v11 = &v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v12 = [a1 CGColor];
  (*(v8 + 16))(v11, a2, v7);
  outlined init with copy of SynchronizationPeerID(a4, v15);
  SimpleMaterial.init(color:roughness:isMetallic:assetService:)();

  __swift_destroy_boxed_opaque_existential_1(a4);
  return (*(v8 + 8))(a2, v7);
}

void UnlitMaterial.tintColor.setter(void *a1)
{
  v1 = [a1 CGColor];
  UnlitMaterial.__tintColor.setter();
}

void (*UnlitMaterial.tintColor.modify(void *a1))(void **a1, char a2)
{
  a1[1] = v1;
  v3 = UnlitMaterial.__tintColor.getter();
  v4 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];

  *a1 = v4;
  return UnlitMaterial.tintColor.modify;
}

uint64_t SimpleMaterial.baseColor.getter@<X0>(void (*a1)(__n128)@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for __MaterialColorParameter();
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v5);
  return MaterialColorParameter.init(_:)(v7, a2);
}

uint64_t key path getter for SimpleMaterial.baseColor : SimpleMaterial@<X0>(void (*a1)(uint64_t)@<X3>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for __MaterialColorParameter();
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v5);
  result = MaterialColorParameter.init(_:)(v7, &v10);
  v9 = v11;
  *a2 = v10;
  *(a2 + 8) = v9;
  return result;
}

uint64_t key path setter for SimpleMaterial.baseColor : SimpleMaterial(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *))
{
  v7 = type metadata accessor for __MaterialColorParameter();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *a1;
  if (*(a1 + 8))
  {
    *v10 = v11;
    (*(v8 + 104))(v10, *MEMORY[0x1E697A2E8], v7);
  }

  else
  {
    *v10 = [v11 CGColor];
    (*(v8 + 104))(v10, *MEMORY[0x1E697A2E0], v7);
  }

  return a5(v10);
}

uint64_t SimpleMaterial.baseColor.setter(uint64_t a1, uint64_t (*a2)(void *))
{
  v4 = type metadata accessor for __MaterialColorParameter();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = (&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *a1;
  if (*(a1 + 8))
  {
    v10 = MEMORY[0x1E697A2E8];
  }

  else
  {
    v11 = [*a1 CGColor];
    outlined consume of MaterialColorParameter(v9, 0);
    v10 = MEMORY[0x1E697A2E0];
    v9 = v11;
  }

  *v8 = v9;
  (*(v5 + 104))(v8, *v10, v4, v6);
  return a2(v8);
}

void (*UnlitMaterial.baseColor.modify(uint64_t *a1))(void ***a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 16) = v1;
  v6 = type metadata accessor for __MaterialColorParameter();
  *(v5 + 24) = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  *(v5 + 32) = v7;
  v9 = *(v7 + 64);
  if (v3)
  {
    *(v5 + 40) = swift_coroFrameAlloc();
    *(v5 + 48) = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
    *(v5 + 56) = v10;
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 40) = malloc(*(v7 + 64));
    *(v5 + 48) = malloc(v9);
    v10 = malloc(v9);
    *(v5 + 56) = v10;
    v11 = malloc(v9);
  }

  v12 = v11;
  *(v5 + 64) = v11;
  UnlitMaterial.__baseColor.getter();
  (*(v8 + 16))(v10, v12, v6);
  v13 = (*(v8 + 88))(v10, v6);
  v14 = v13;
  v15 = *MEMORY[0x1E697A2E0];
  *(v5 + 12) = *MEMORY[0x1E697A2E0];
  if (v13 == v15)
  {
    (*(v8 + 96))(v10, v6);
    v17 = *v10;
    v16 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];

    (*(v8 + 8))(v12, v6);
    goto LABEL_11;
  }

  if (v13 == *MEMORY[0x1E697A2E8])
  {
    (*(v8 + 8))(v12, v6);
    (*(v8 + 96))(v10, v6);
    v16 = *v10;
LABEL_11:
    *v5 = v16;
    *(v5 + 8) = v14 != v15;
    return UnlitMaterial.baseColor.modify;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void SimpleMaterial.baseColor.modify(void ***a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = **a1;
  if (a2)
  {
    if (v4[1])
    {
      v7 = v4[4];
      v6 = v4[5];
      v8 = v4[3];
      *v6 = v5;
      (*(v7 + 13))(v6, *MEMORY[0x1E697A2E8], v8);
    }

    else
    {
      v11 = *(v4 + 3);
      v13 = v4[4];
      v12 = v4[5];
      v14 = v4[3];
      *v12 = [v5 CGColor];
      v13[13](v12, v11, v14);
    }

    v16 = v4[7];
    v15 = v4[8];
    v17 = v4[5];
    v18 = v4[6];
    a3(v17);
    outlined consume of MaterialColorParameter(*v4, *(v4 + 8));
  }

  else
  {
    v9 = v4[6];
    if (v4[1])
    {
      *v9 = v5;
      v10 = MEMORY[0x1E697A2E8];
    }

    else
    {
      v19 = v5;
      v20 = [v5 CGColor];
      outlined consume of MaterialColorParameter(v19, 0);
      *v9 = v20;
      v10 = v4 + 3;
    }

    v16 = v4[7];
    v15 = v4[8];
    v17 = v4[5];
    v18 = v4[6];
    (*(v4[4] + 13))(v18, *v10, v4[3]);
    a3(v18);
  }

  free(v15);
  free(v16);
  free(v18);
  free(v17);

  free(v4);
}

void UnlitMaterial.init(color:applyPostProcessToneMap:)(void *a1)
{
  v1 = [a1 CGColor];
  UnlitMaterial.init(color:applyPostProcessToneMap:)();
}

id MaterialParameters.Value.colorValue.getter()
{
  v0 = MaterialParameters.Value.cgColorValue.getter();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];

  return v2;
}

void static MaterialParameters.Value.color(_:)(void *a1)
{
  v1 = [a1 CGColor];
  MEMORY[0x1E12F3130]();
}

void PhysicallyBasedMaterial.BaseColor.tint.setter(void *a1)
{
  v1 = [a1 CGColor];
  PhysicallyBasedMaterial.SheenColor.__tint.setter();
}

void (*PhysicallyBasedMaterial.BaseColor.tint.modify(void *a1))(void **a1, char a2)
{
  a1[1] = v1;
  v3 = PhysicallyBasedMaterial.SheenColor.__tint.getter();
  v4 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];

  *a1 = v4;
  return PhysicallyBasedMaterial.BaseColor.tint.modify;
}

uint64_t PhysicallyBasedMaterial.BaseColor.init(tint:texture:)(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, void (*a5)(id, char *))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  *&v10 = MEMORY[0x1EEE9AC00](v9 - 8).n128_u64[0];
  v12 = &v15 - v11;
  v13 = [a1 CGColor];
  outlined init with copy of CheckedContinuation<related decl 'e' for ARErrorCode?, Never>?(a2, v12, a3);
  a5(v13, v12);

  return outlined destroy of ARConfigurationCreateResult?(a2, a3);
}

void PhysicallyBasedMaterial.EmissiveColor.color.setter(void *a1)
{
  v1 = [a1 CGColor];
  PhysicallyBasedMaterial.SheenColor.__tint.setter();
}

void (*PhysicallyBasedMaterial.EmissiveColor.color.modify(void *a1))(void **a1, char a2)
{
  a1[1] = v1;
  v3 = PhysicallyBasedMaterial.SheenColor.__tint.getter();
  v4 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];

  *a1 = v4;
  return PhysicallyBasedMaterial.EmissiveColor.color.modify;
}

void PhysicallyBasedMaterial.SheenColor.tint.setter(void *a1)
{
  v1 = [a1 CGColor];
  PhysicallyBasedMaterial.SheenColor.__tint.setter();
}

void (*PhysicallyBasedMaterial.SheenColor.tint.modify(void *a1))(void **a1, char a2)
{
  a1[1] = v1;
  v3 = PhysicallyBasedMaterial.SheenColor.__tint.getter();
  v4 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];

  *a1 = v4;
  return PhysicallyBasedMaterial.SheenColor.tint.modify;
}

void CustomMaterial.BaseColor.tint.setter(void *a1)
{
  v1 = [a1 CGColor];
  CustomMaterial.EmissiveColor.__color.setter();
}

void (*CustomMaterial.BaseColor.tint.modify(void *a1))(void **a1, char a2)
{
  a1[1] = v1;
  v3 = CustomMaterial.EmissiveColor.__color.getter();
  v4 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];

  *a1 = v4;
  return CustomMaterial.BaseColor.tint.modify;
}

id SimpleMaterial.tintColor.getter(uint64_t (*a1)(void))
{
  v1 = a1();
  v2 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];

  return v2;
}

void key path getter for SimpleMaterial.tintColor : SimpleMaterial(uint64_t (*a1)(void)@<X3>, void *a2@<X8>)
{
  v3 = a1();
  v4 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];

  *a2 = v4;
}

void CustomMaterial.EmissiveColor.color.setter(void *a1)
{
  v1 = [a1 CGColor];
  CustomMaterial.EmissiveColor.__color.setter();
}

void (*CustomMaterial.EmissiveColor.color.modify(void *a1))(void **a1, char a2)
{
  a1[1] = v1;
  v3 = CustomMaterial.EmissiveColor.__color.getter();
  v4 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];

  *a1 = v4;
  return CustomMaterial.EmissiveColor.color.modify;
}

void SimpleMaterial.tintColor.modify(void **a1, char a2, void (*a3)(id))
{
  v4 = *a1;
  v6 = *a1;
  if (a2)
  {
    v5 = v4;
    a3([v5 CGColor]);
  }

  else
  {
    a3([v4 CGColor]);
  }
}

id MaterialColorParameter.init(_colorLiteralRed:green:blue:alpha:)@<X0>(uint64_t a1@<X8>, float a2@<S0>, float a3@<S1>, float a4@<S2>, float a5@<S3>)
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:a2 green:a3 blue:a4 alpha:a5];
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

uint64_t MaterialColorParameter.hash(into:)()
{
  v1 = type metadata accessor for __MaterialColorParameter();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = (&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *v0;
  if (*(v0 + 8))
  {
    *v5 = v6;
    (*(v2 + 104))(v5, *MEMORY[0x1E697A2E8], v1, v3);
  }

  else
  {
    *v5 = [v6 CGColor];
    (*(v2 + 104))(v5, *MEMORY[0x1E697A2E0], v1);
  }

  __MaterialColorParameter.hash(into:)();
  return (*(v2 + 8))(v5, v1);
}

Swift::Int MaterialColorParameter.hashValue.getter()
{
  v1 = type metadata accessor for __MaterialColorParameter();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *v0;
  v6 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v6)
  {
    *v4 = v5;
    (*(v2 + 104))(v4, *MEMORY[0x1E697A2E8], v1);
  }

  else
  {
    *v4 = [v5 CGColor];
    (*(v2 + 104))(v4, *MEMORY[0x1E697A2E0], v1);
  }

  __MaterialColorParameter.hash(into:)();
  (*(v2 + 8))(v4, v1);
  return Hasher._finalize()();
}

id protocol witness for _ExpressibleByColorLiteral.init(_colorLiteralRed:green:blue:alpha:) in conformance MaterialColorParameter@<X0>(uint64_t a1@<X8>, float a2@<S0>, float a3@<S1>, float a4@<S2>, float a5@<S3>)
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:a2 green:a3 blue:a4 alpha:a5];
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MaterialColorParameter()
{
  v1 = type metadata accessor for __MaterialColorParameter();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = (&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *v0;
  if (*(v0 + 8))
  {
    *v5 = v6;
    (*(v2 + 104))(v5, *MEMORY[0x1E697A2E8], v1, v3);
  }

  else
  {
    *v5 = [v6 CGColor];
    (*(v2 + 104))(v5, *MEMORY[0x1E697A2E0], v1);
  }

  __MaterialColorParameter.hash(into:)();
  return (*(v2 + 8))(v5, v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MaterialColorParameter()
{
  v1 = type metadata accessor for __MaterialColorParameter();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *v0;
  v6 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v6)
  {
    *v4 = v5;
    (*(v2 + 104))(v4, *MEMORY[0x1E697A2E8], v1);
  }

  else
  {
    *v4 = [v5 CGColor];
    (*(v2 + 104))(v4, *MEMORY[0x1E697A2E0], v1);
  }

  __MaterialColorParameter.hash(into:)();
  (*(v2 + 8))(v4, v1);
  return Hasher._finalize()();
}

uint64_t PhysicallyBasedMaterial.EmissiveColor.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v19[1] = a1;
  v2 = type metadata accessor for Mirror.AncestorRepresentation();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v19 - v7;
  v9 = type metadata accessor for PhysicallyBasedMaterial.EmissiveColor();
  v10 = MEMORY[0x1EEE9AC00](v9);
  (*(v12 + 16))(v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v1, v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1E1252F40;
  *(v13 + 32) = 0x726F6C6F63;
  *(v13 + 40) = 0xE500000000000000;
  v14 = PhysicallyBasedMaterial.SheenColor.__tint.getter();
  v15 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];

  v16 = type metadata accessor for UIColor();
  *(v13 + 48) = v15;
  *(v13 + 72) = v16;
  *(v13 + 80) = 0x65727574786574;
  *(v13 + 88) = 0xE700000000000000;
  *(v13 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation18MaterialParametersV7TextureVSgMd);
  __swift_allocate_boxed_opaque_existential_0((v13 + 96));
  MEMORY[0x1E12F3650]();
  v17 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
  (*(v3 + 104))(v5, *MEMORY[0x1E69E75D8], v2);
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t PhysicallyBasedMaterial.BaseColor.customMirror.getter@<X0>(uint64_t (*a1)(void, __n128)@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v27 = a3;
  v28 = a4;
  v7 = type metadata accessor for Mirror.AncestorRepresentation();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v27 - v13;
  v15 = a1(0, v12);
  v16 = MEMORY[0x1EEE9AC00](v15);
  (*(v18 + 16))(&v27 - v17, v4, v15, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1E1252F40;
  *(v19 + 32) = 1953393012;
  *(v19 + 40) = 0xE400000000000000;
  v21 = a2(v19, v20);
  v22 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v23 = [v22 initWithCGColor_];

  v24 = type metadata accessor for UIColor();
  *(v19 + 48) = v23;
  *(v19 + 72) = v24;
  *(v19 + 80) = 0x65727574786574;
  *(v19 + 88) = 0xE700000000000000;
  *(v19 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation18MaterialParametersV7TextureVSgMd);
  __swift_allocate_boxed_opaque_existential_0((v19 + 96));
  v27();
  v25 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v25 - 8) + 56))(v14, 1, 1, v25);
  (*(v8 + 104))(v10, *MEMORY[0x1E69E75D8], v7);
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t specialized static MaterialColorParameter.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for __MaterialColorParameter();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x1EEE9AC00](v8);
  v11 = (&v23 - v9);
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *a2;
  v15 = *(a2 + 8);
  v16 = MEMORY[0x1E697A2E0];
  v17 = MEMORY[0x1E697A2E8];
  if ((v13 & 1) == 0)
  {
    v18 = MEMORY[0x1E697A2E8];
    *v11 = [v12 CGColor];
    v19 = *(v5 + 104);
    (v19)(v11, *v16, v4);
    if ((v15 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    *v7 = v14;
    (v19)(v7, *v18, v4);

    goto LABEL_6;
  }

  *v11 = v12;
  v18 = v17;
  v19 = *(v5 + 104);
  v19(&v23 - v9, *v17, v4, v10);

  if (v15)
  {
    goto LABEL_5;
  }

LABEL_3:
  *v7 = [v14 CGColor];
  (v19)(v7, *v16, v4);
LABEL_6:
  v20 = MEMORY[0x1E12F2560](v11, v7);
  v21 = *(v5 + 8);
  v21(v7, v4);
  v21(v11, v4);
  return v20 & 1;
}

unint64_t lazy protocol witness table accessor for type MaterialColorParameter and conformance MaterialColorParameter()
{
  result = lazy protocol witness table cache variable for type MaterialColorParameter and conformance MaterialColorParameter;
  if (!lazy protocol witness table cache variable for type MaterialColorParameter and conformance MaterialColorParameter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MaterialColorParameter and conformance MaterialColorParameter);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MaterialColorParameter(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for MaterialColorParameter(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t ARView.automaticallyConfigureSession.setter(char a1)
{
  v3 = v1 + OBJC_IVAR____TtC10RealityKit6ARView_sessionComponents;
  result = swift_beginAccess();
  *(v3 + 2) = a1;
  return result;
}

void ARView.cameraMode.getter(_BYTE *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC10RealityKit6ARView_arSystem);
  if (v2)
  {
    *a1 = *(v2 + OBJC_IVAR____TtC10RealityKit10RKARSystem_cameraMode);
  }

  else
  {
    __break(1u);
  }
}

void ARView.cameraMode.setter(_BYTE *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC10RealityKit6ARView_arSystem);
  if (v2)
  {
    v3 = v2[OBJC_IVAR____TtC10RealityKit10RKARSystem_cameraMode];
    v2[OBJC_IVAR____TtC10RealityKit10RKARSystem_cameraMode] = *a1;
    v5 = v3;
    v4 = v2;
    RKARSystem.cameraMode.didset(&v5);
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall ARView.setupAR()()
{
  v1 = v0;
  [objc_opt_self() setRenderType_];
  v2 = OBJC_IVAR____TtC10RealityKit6ARView_renderView;
  [*&v1[OBJC_IVAR____TtC10RealityKit6ARView_renderView] setContentMode_];
  [v1 insertSubview:*&v1[v2] atIndex:0];
  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  v3 = dispatch thunk of __ServiceLocator.engine.getter();

  v4 = objc_allocWithZone(type metadata accessor for RKARSystem(0));
  v5 = v1;
  RKARSystem.init(engine:arView:)(v3, v5);
  v6 = *&v5[OBJC_IVAR____TtC10RealityKit6ARView_arSystem];
  *&v5[OBJC_IVAR____TtC10RealityKit6ARView_arSystem] = v7;

  [v5 setMultipleTouchEnabled_];
}

void ARView.session.setter(void *a1)
{
  v2 = OBJC_IVAR____TtC10RealityKit6ARView_arSystem;
  v3 = *(v1 + OBJC_IVAR____TtC10RealityKit6ARView_arSystem);
  if (!v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = v1;
  type metadata accessor for NSObject();
  v5 = *(v3 + OBJC_IVAR____TtC10RealityKit10RKARSystem_session);
  v6 = static NSObject.== infix(_:_:)();

  if ((v6 & 1) == 0)
  {
    v8 = *(v4 + v2);
    if (v8)
    {
      v9 = *&v8[OBJC_IVAR____TtC10RealityKit10RKARSystem_session];
      *&v8[OBJC_IVAR____TtC10RealityKit10RKARSystem_session] = a1;
      v10 = v8;
      v11 = a1;
      RKARSystem.session.didset(v9);

      v7 = v9;
      goto LABEL_6;
    }

LABEL_10:
    __break(1u);
    return;
  }

  v7 = a1;
LABEL_6:
}

Swift::Int ARView.CameraMode.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1E12F47F0](v1);
  return Hasher._finalize()();
}

void (*ARView.cameraMode.modify(void (*result)(uint64_t a1, char a2)))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC10RealityKit6ARView_arSystem;
  *result = v1;
  *(result + 1) = v2;
  v3 = *(v1 + v2);
  if (v3)
  {
    *(result + 16) = *(v3 + OBJC_IVAR____TtC10RealityKit10RKARSystem_cameraMode);
    return ARView.cameraMode.modify;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void ARView.cameraMode.modify(uint64_t a1, char a2)
{
  v2 = *(*a1 + *(a1 + 8));
  if (a2)
  {
    if (v2)
    {
      v3 = v2[OBJC_IVAR____TtC10RealityKit10RKARSystem_cameraMode];
      v2[OBJC_IVAR____TtC10RealityKit10RKARSystem_cameraMode] = *(a1 + 16);
      v7 = v3;
      v4 = v2;
      v5 = &v7;
LABEL_6:
      RKARSystem.cameraMode.didset(v5);

      return;
    }

    __break(1u);
  }

  else if (v2)
  {
    v6 = v2[OBJC_IVAR____TtC10RealityKit10RKARSystem_cameraMode];
    v2[OBJC_IVAR____TtC10RealityKit10RKARSystem_cameraMode] = *(a1 + 16);
    v8 = v6;
    v4 = v2;
    v5 = &v8;
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t ARView.automaticallyConfigureSession.getter()
{
  v1 = v0 + OBJC_IVAR____TtC10RealityKit6ARView_sessionComponents;
  swift_beginAccess();
  return *(v1 + 2);
}

void (*ARView.automaticallyConfigureSession.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC10RealityKit6ARView_sessionComponents;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  *(v4 + 40) = *(v6 + 2);
  return ARView.automaticallyConfigureSession.modify;
}

void ARView.automaticallyConfigureSession.modify(uint64_t *a1)
{
  v1 = *a1;
  *(*(v1 + 24) + *(v1 + 32) + 2) = *(v1 + 40);
  free(v1);
}

void ARView.__passthroughTextureY.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10RealityKit6ARView_arSystem);
  if (v1)
  {
    v2 = *&v1[OBJC_IVAR____TtC10RealityKit10RKARSystem_textureCache];
    v3 = *(v2 + 32);
    if (v3)
    {
      v4 = *(v2 + 40);
      v5 = v1;
      outlined copy of RKARTextureCache.CapturedImageCVTexturePair?(v3, v4);
      if (CVMetalTextureGetTexture(v3))
      {
        v6 = CVMetalTextureGetTexture(v4);

        if (v6)
        {
          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }

      else
      {
      }
    }
  }

  else
  {
    __break(1u);
  }
}

id outlined copy of RKARTextureCache.CapturedImageCVTexturePair?(id result, void *a2)
{
  if (result)
  {
    v2 = result;

    return a2;
  }

  return result;
}

void ARView.__passthroughTextureCbCr.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10RealityKit6ARView_arSystem);
  if (v1)
  {
    v2 = *&v1[OBJC_IVAR____TtC10RealityKit10RKARSystem_textureCache];
    v3 = *(v2 + 32);
    if (v3)
    {
      v4 = *(v2 + 40);
      v5 = v1;
      outlined copy of RKARTextureCache.CapturedImageCVTexturePair?(v3, v4);
      if (CVMetalTextureGetTexture(v3))
      {
        v6 = CVMetalTextureGetTexture(v4);

        if (v6)
        {
          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }

      else
      {
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void ARView.__passthroughCorrectionMatrix.getter()
{
  if (!*(v0 + OBJC_IVAR____TtC10RealityKit6ARView_arSystem))
  {
    __break(1u);
  }
}

void ARView.__passthroughIntensityExponent.getter()
{
  ARView.__passthroughIntensityExponent.getter();
}

{
  if (!*(v0 + OBJC_IVAR____TtC10RealityKit6ARView_arSystem))
  {
    __break(1u);
  }
}

void ARView.__passthroughIntensityExponent.setter(float a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC10RealityKit6ARView_arSystem);
  if (v2)
  {
    *(v2 + OBJC_IVAR____TtC10RealityKit10RKARSystem___passthroughIntensityExponent) = a1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t (*ARView.__passthroughIntensityExponent.modify(uint64_t (*result)(uint64_t result, char a2)))(uint64_t result, char a2)
{
  v2 = OBJC_IVAR____TtC10RealityKit6ARView_arSystem;
  *result = v1;
  *(result + 1) = v2;
  v3 = *(v1 + v2);
  if (v3)
  {
    *(result + 4) = *(v3 + OBJC_IVAR____TtC10RealityKit10RKARSystem___passthroughIntensityExponent);
    return ARView.__passthroughIntensityExponent.modify;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ARView.__passthroughIntensityExponent.modify(uint64_t result, char a2)
{
  v2 = *(*result + *(result + 8));
  if (a2)
  {
    if (v2)
    {
LABEL_5:
      *(v2 + OBJC_IVAR____TtC10RealityKit10RKARSystem___passthroughIntensityExponent) = *(result + 16);
      return result;
    }

    __break(1u);
  }

  if (v2)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void *ARView.__backgroundReplacementBuffer.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10RealityKit6ARView_arSystem);
  if (v1)
  {
    v2 = *(*(v1 + OBJC_IVAR____TtC10RealityKit10RKARSystem_textureCache) + 16);
    v3 = v2;
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void key path setter for ARView.__backgroundReplacementBuffer : ARView(void **a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR____TtC10RealityKit6ARView_arSystem);
  if (v2)
  {
    v3 = *a1;
    v4 = *(v2 + OBJC_IVAR____TtC10RealityKit10RKARSystem_textureCache);
    v6 = *(v4 + 16);
    *(v4 + 16) = *a1;
    v5 = v3;
  }

  else
  {
    __break(1u);
  }
}

uint64_t ARView.__backgroundReplacementBuffer.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC10RealityKit6ARView_arSystem);
  if (v2)
  {
    *(*(v2 + OBJC_IVAR____TtC10RealityKit10RKARSystem_textureCache) + 16) = a1;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE66BB8]();
}

void (*ARView.__backgroundReplacementBuffer.modify(void (*result)(uint64_t *a1, char a2)))(uint64_t *a1, char a2)
{
  v2 = OBJC_IVAR____TtC10RealityKit6ARView_arSystem;
  *(result + 1) = v1;
  *(result + 2) = v2;
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = *(*(v3 + OBJC_IVAR____TtC10RealityKit10RKARSystem_textureCache) + 16);
    *result = v4;
    v5 = v4;
    return ARView.__backgroundReplacementBuffer.modify;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void ARView.__backgroundReplacementBuffer.modify(uint64_t *a1, char a2)
{
  v2 = *(a1[1] + a1[2]);
  if (a2)
  {
    if (v2)
    {
LABEL_5:
      v3 = *a1;
      v4 = *(v2 + OBJC_IVAR____TtC10RealityKit10RKARSystem_textureCache);
      v5 = *(v4 + 16);
      *(v4 + 16) = v3;

      return;
    }

    __break(1u);
  }

  if (v2)
  {
    goto LABEL_5;
  }

  __break(1u);
}

uint64_t (*ARView.__enableUpdateCameraWorldMatrixFromARFrame.modify(uint64_t (*result)(uint64_t a1, char a2)))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC10RealityKit6ARView_arSystem;
  *result = v1;
  *(result + 1) = v2;
  v3 = *(v1 + v2);
  if (v3)
  {
    *(result + 16) = *(v3 + OBJC_IVAR____TtC10RealityKit10RKARSystem___enableUpdateCameraWorldMatrixFromARFrame);
    return ARView.__enableUpdateCameraWorldMatrixFromARFrame.modify;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t (*ARView.__enableUpdateCameraProjectionMatrixFromARFrame.modify(uint64_t (*result)(uint64_t a1, char a2)))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC10RealityKit6ARView_arSystem;
  *result = v1;
  *(result + 1) = v2;
  v3 = *(v1 + v2);
  if (v3)
  {
    *(result + 16) = *(v3 + OBJC_IVAR____TtC10RealityKit10RKARSystem___enableUpdateCameraProjectionMatrixFromARFrame);
    return ARView.__enableUpdateCameraProjectionMatrixFromARFrame.modify;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void ARView.__fallbackAmbientIntensity.setter(float a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC10RealityKit6ARView_arSystem);
  if (v2)
  {
    *&v2[OBJC_IVAR____TtC10RealityKit10RKARSystem_fallbackAmbientIntensity] = a1;
    if ((v2[OBJC_IVAR____TtC10RealityKit10RKARSystem_renderOptions] & 2) != 0)
    {
      v3 = OBJC_IVAR____TtC10RealityKit10RKARSystem_lightEntity;
      if (*&v2[OBJC_IVAR____TtC10RealityKit10RKARSystem_lightEntity])
      {
        v4 = v2;
        type metadata accessor for AmbientLight();
        v5 = HasAmbientLight.light.modify();
        __AmbientLightComponent.intensity.setter();
        v5(v9, 0);
        if (*&v2[v3])
        {
          v6 = *&v4[OBJC_IVAR____TtC10RealityKit10RKARSystem_fallbackAmbientColor];
          v7 = HasAmbientLight.light.modify();
          __AmbientLightComponent.color.setter();
          v7(v9, 0);
        }
      }

      else
      {
        v8 = v2;
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void (*ARView.__fallbackAmbientIntensity.modify(void (*result)(uint64_t a1)))(uint64_t a1)
{
  *result = v1;
  v2 = *(v1 + OBJC_IVAR____TtC10RealityKit6ARView_arSystem);
  if (v2)
  {
    *(result + 2) = *(v2 + OBJC_IVAR____TtC10RealityKit10RKARSystem_fallbackAmbientIntensity);
    return ARView.__fallbackAmbientIntensity.modify;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *ARView.session.getter(void *result)
{
  v2 = *(v1 + OBJC_IVAR____TtC10RealityKit6ARView_arSystem);
  if (v2)
  {
    return *(v2 + *result);
  }

  __break(1u);
  return result;
}

void ARView.__fallbackAmbientColor.setter(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC10RealityKit6ARView_arSystem);
  if (v2)
  {
    v4 = OBJC_IVAR____TtC10RealityKit10RKARSystem_fallbackAmbientColor;
    v5 = *&v2[OBJC_IVAR____TtC10RealityKit10RKARSystem_fallbackAmbientColor];
    *&v2[OBJC_IVAR____TtC10RealityKit10RKARSystem_fallbackAmbientColor] = a1;
    v11 = v2;
    v6 = a1;

    if ((v11[OBJC_IVAR____TtC10RealityKit10RKARSystem_renderOptions] & 2) != 0)
    {
      v7 = OBJC_IVAR____TtC10RealityKit10RKARSystem_lightEntity;
      if (*&v11[OBJC_IVAR____TtC10RealityKit10RKARSystem_lightEntity])
      {
        type metadata accessor for AmbientLight();
        v8 = HasAmbientLight.light.modify();
        __AmbientLightComponent.intensity.setter();
        v8(v12, 0);
        if (*&v11[v7])
        {
          v9 = *&v2[v4];
          v10 = HasAmbientLight.light.modify();
          __AmbientLightComponent.color.setter();
          v10(v12, 0);
        }
      }
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

void (*ARView.__fallbackAmbientColor.modify(void (*result)(void **a1, char a2)))(void **a1, char a2)
{
  *(result + 1) = v1;
  v2 = *(v1 + OBJC_IVAR____TtC10RealityKit6ARView_arSystem);
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC10RealityKit10RKARSystem_fallbackAmbientColor);
    *result = v3;
    v4 = v3;
    return ARView.__fallbackAmbientColor.modify;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void ARView.__fallbackAmbientColor.modify(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    ARView.__fallbackAmbientColor.setter(v3);
  }

  else
  {
    ARView.__fallbackAmbientColor.setter(v2);
  }
}

void *ARView.__enableUpdateCameraWorldMatrixFromARFrame.getter(void *result)
{
  v2 = *(v1 + OBJC_IVAR____TtC10RealityKit6ARView_arSystem);
  if (v2)
  {
    return *(v2 + *result);
  }

  __break(1u);
  return result;
}

uint64_t ARView.__enableUpdateCameraWorldMatrixFromARFrame.setter(uint64_t result, void *a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC10RealityKit6ARView_arSystem);
  if (v3)
  {
    *(v3 + *a2) = result & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t (*ARView.__autoFireStartTriggerOnPlacement.modify(uint64_t (*result)(uint64_t a1, char a2)))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC10RealityKit6ARView_arSystem;
  *result = v1;
  *(result + 1) = v2;
  v3 = *(v1 + v2);
  if (v3)
  {
    *(result + 16) = *(v3 + OBJC_IVAR____TtC10RealityKit10RKARSystem___autoFireStartTriggerOnPlacement);
    return ARView.__autoFireStartTriggerOnPlacement.modify;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ARView.__enableUpdateCameraWorldMatrixFromARFrame.modify(uint64_t result, char a2, void *a3)
{
  v3 = *(*result + *(result + 8));
  if (a2)
  {
    if (v3)
    {
LABEL_5:
      *(v3 + *a3) = *(result + 16);
      return result;
    }

    __break(1u);
  }

  if (v3)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void (*ARView.__occlusionEntity(for:)(void (*result)(void, void)))(void, void)
{
  v2 = *(v1 + OBJC_IVAR____TtC10RealityKit6ARView_arSystem);
  if (v2)
  {
    v3 = result;
    v4 = v2;
    v5 = RKARSystem.createFaceGeometry(for:)(v3);

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall ARView.__removeOcclusionEntity(for:)(ARFaceAnchor a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC10RealityKit6ARView_arSystem);
  if (v2)
  {
    v4 = v2;
    RKARSystem.removeFaceGeometry(for:)(a1.super);
  }

  else
  {
    __break(1u);
  }
}

unint64_t lazy protocol witness table accessor for type ARView.CameraMode and conformance ARView.CameraMode()
{
  result = lazy protocol witness table cache variable for type ARView.CameraMode and conformance ARView.CameraMode;
  if (!lazy protocol witness table cache variable for type ARView.CameraMode and conformance ARView.CameraMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARView.CameraMode and conformance ARView.CameraMode);
  }

  return result;
}

void *keypath_get_9Tm@<X0>(void *result@<X0>, void *a2@<X3>, _DWORD *a3@<X8>)
{
  v3 = *(*result + OBJC_IVAR____TtC10RealityKit6ARView_arSystem);
  if (v3)
  {
    *a3 = *(v3 + *a2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *keypath_get_5Tm@<X0>(void *result@<X0>, void *a2@<X3>, _BYTE *a3@<X8>)
{
  v3 = *(*result + OBJC_IVAR____TtC10RealityKit6ARView_arSystem);
  if (v3)
  {
    *a3 = *(v3 + *a2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

_BYTE *keypath_set_14Tm(_BYTE *result, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *(*a2 + OBJC_IVAR____TtC10RealityKit6ARView_arSystem);
  if (v5)
  {
    *(v5 + *a5) = *result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

Swift::Void __swiftcall ARView.setupInteractionGestures()()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:v0 action:sel_handleSingleTapWithRecognizer_];
  v2 = OBJC_IVAR____TtC10RealityKit6ARView_singleTapGesture;
  v3 = *&v0[OBJC_IVAR____TtC10RealityKit6ARView_singleTapGesture];
  *&v0[OBJC_IVAR____TtC10RealityKit6ARView_singleTapGesture] = v1;
  v4 = v1;

  if (!v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  [v4 setDelegate_];

  if (!*&v0[v2])
  {
LABEL_7:
    __break(1u);
    return;
  }

  [v0 addGestureRecognizer_];
}

void *ARView.installGestures(_:for:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  ObjectType = *a1;
  v7 = &off_1E8708000;
  if (*a1)
  {
    v3 = [objc_allocWithZone(type metadata accessor for EntityTranslationGestureRecognizer()) initWithTarget:v3 action:sel_handleTranslation_];
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v4 = v8[2];
    v10 = v8[3];
    v9 = v4 + 1;
    if (v4 >= v10 >> 1)
    {
      goto LABEL_23;
    }

    goto LABEL_7;
  }

  v8 = MEMORY[0x1E69E7CC0];
  if ((ObjectType & 2) != 0)
  {
    goto LABEL_8;
  }

  while ((ObjectType & 4) != 0)
  {
    while (1)
    {
      v3 = [objc_allocWithZone(type metadata accessor for EntityScaleGestureRecognizer()) v7[350]];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8[2] + 1, 1, v8);
      }

      v4 = v8[2];
      v14 = v8[3];
      v9 = v4 + 1;
      if (v4 >= v14 >> 1)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v4 + 1, 1, v8);
      }

      v8[2] = v9;
      v15 = &v8[2 * v4];
      v15[4] = v3;
      v15[5] = &protocol witness table for EntityScaleGestureRecognizer;

LABEL_18:
      v16 = 0;
      v17 = v8 + 5;
      while (1)
      {
        v10 = v8[2];
        if (v16 >= v10)
        {
          break;
        }

        ++v16;
        v18 = *(v17 - 1);
        v19 = *v17;
        ObjectType = swift_getObjectType();
        v3 = v18;
        [v5 addGestureRecognizer_];
        [v3 setDelegate_];
        v4 = v5;
        v7 = (v19 + 16);
        v20 = *(v19 + 16);

        v20(v21, a3, ObjectType, v19);
        v5 = v4;

        v17 += 2;
        if (v9 == v16)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_23:
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v9, 1, v8);
LABEL_7:
      v8[2] = v9;
      v11 = &v8[2 * v4];
      v11[4] = v3;
      v11[5] = &protocol witness table for EntityTranslationGestureRecognizer;
      if ((ObjectType & 2) == 0)
      {
        break;
      }

LABEL_8:
      v3 = [objc_allocWithZone(type metadata accessor for EntityRotationGestureRecognizer()) v7[350]];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8[2] + 1, 1, v8);
      }

      v4 = v8[2];
      v12 = v8[3];
      if (v4 >= v12 >> 1)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v4 + 1, 1, v8);
      }

      v8[2] = v4 + 1;
      v13 = &v8[2 * v4];
      v13[4] = v3;
      v13[5] = &protocol witness table for EntityRotationGestureRecognizer;
      if ((ObjectType & 4) == 0)
      {
        goto LABEL_4;
      }
    }
  }

LABEL_4:
  v9 = v8[2];

  if (v9)
  {
    goto LABEL_18;
  }

LABEL_21:

  return v8;
}

Swift::Bool __swiftcall ARView.gestureRecognizer(_:shouldReceive:)(UIGestureRecognizer *_, UITouch shouldReceive)
{
  swift_getObjectType();
  v5 = swift_conformsToProtocol2();
  result = 1;
  if (v5 && _)
  {
    v7 = [(objc_class *)shouldReceive.super.isa view];
    if (v7)
    {
      v8 = v7;
      if (v7 == *(v2 + OBJC_IVAR____TtC10RealityKit6ARView_renderView))
      {

        return 1;
      }

      else
      {
        v9 = [(UIGestureRecognizer *)_ view];
        if (v9)
        {
          v10 = v9;

          return v8 == v10;
        }

        else
        {

          return 0;
        }
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void specialized ARView.handleTranslation(_:)(void *a1)
{
  v2 = type metadata accessor for AnchoringComponent();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit18AnchoringComponentV6TargetOSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v58 - v10;
  type metadata accessor for EntityTranslationGestureRecognizer();
  v12 = swift_dynamicCastClass();
  if (v12)
  {
    v13 = v12;
    v60 = a1;
    if ([v13 state] == 1 || objc_msgSend(v13, sel_state) == 2)
    {
      v14 = OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_entity;
      swift_beginAccess();
      if (!*(v13 + v14))
      {

LABEL_25:
        return;
      }

      if (Entity.anchor.getter())
      {
        HasAnchoring.anchoring.getter();

        AnchoringComponent.target.getter();
        (*(v3 + 8))(v5, v2);
        v15 = type metadata accessor for AnchoringComponent.Target();
        v16 = *(v15 - 8);
        (*(v16 + 56))(v11, 0, 1, v15);
        outlined init with take of AnchoringComponent.Target?(v11, v8);
        if ((*(v16 + 88))(v8, v15) == *MEMORY[0x1E697A278])
        {
          v17 = [v13 view];

          [v13 locationInView_];
          v19 = v18;
          v21 = v20;

          v22 = (v13 + OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_lastScreenLocation);
          if ((*(v13 + OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_lastScreenLocation + 16) & 1) == 0)
          {
            v24 = *v22;
            v23 = v22[1];
            v25 = HasHierarchy.parent.getter();
            v26 = [v13 view];
            if (!v26)
            {
LABEL_13:

LABEL_22:

              return;
            }

            v27 = v26;
            type metadata accessor for ARView();
            if (!swift_dynamicCastClass())
            {
              goto LABEL_36;
            }

            v28 = (v13 + OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_touchHeight);
            v29 = *(v13 + OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_touchHeight);
            LOBYTE(v67[0]) = *(v13 + OBJC_IVAR____TtC10RealityKit34EntityTranslationGestureRecognizer_touchHeight + 4);
            specialized EntityGestureRecognizer.planeForUnprojection(heightOffset:)(v29 | (LOBYTE(v67[0]) << 32), v62);
            if (v66)
            {
              goto LABEL_12;
            }

            v30 = ARView.unproject(_:ontoPlane:relativeToCamera:)(0, v24, v23, v62[0], v63, *&v64, v65);
            if (v32)
            {
              goto LABEL_12;
            }

            v45.i64[0] = v30;
            v45.i64[1] = v31;
            v59 = v45;
            if (v25)
            {
              type metadata accessor for Entity();
              HasTransform.convert(position:from:)();
              v59 = v46;
            }

            else
            {
            }

            v47 = HasHierarchy.parent.getter();
            v48 = [v13 view];
            if (!v48)
            {
              goto LABEL_13;
            }

            v27 = v48;
            if (!swift_dynamicCastClass())
            {
LABEL_36:

              goto LABEL_22;
            }

            v49 = *v28;
            LOBYTE(v67[0]) = *(v28 + 4);
            specialized EntityGestureRecognizer.planeForUnprojection(heightOffset:)(v49 | (LOBYTE(v67[0]) << 32), v67);
            if (v71 & 1) != 0 || (v50 = ARView.unproject(_:ontoPlane:relativeToCamera:)(0, v19, v21, v67[0], v68, v69, v70), (v52))
            {
LABEL_12:

              goto LABEL_13;
            }

            v53.i64[0] = v50;
            v53.i64[1] = v51;
            v58 = v53;
            if (v47)
            {
              type metadata accessor for Entity();
              HasTransform.convert(position:from:)();
              v58 = v54;
            }

            else
            {
            }

            v59 = vsubq_f32(v58, v59);
            v55 = HasTransform.position.modify();
            v57 = vaddq_f32(v59, *v56);
            v57.i32[3] = 0;
            *v56 = v57;
            v55(v61, 0);
            goto LABEL_24;
          }

          goto LABEL_21;
        }

        (*(v16 + 8))(v8, v15);
      }

      else
      {

        v34 = type metadata accessor for AnchoringComponent.Target();
        (*(*(v34 - 8) + 56))(v11, 1, 1, v34);
        outlined destroy of AnchoringComponent.Target?(v11);
      }

      HasHierarchy.parent.getter();
      v35 = MEMORY[0x1E69E7D40];
      v36 = (*((*MEMORY[0x1E69E7D40] & *v13) + 0xB8))();
      v38 = v37;
      v40 = v39;

      if ((v40 & 1) == 0)
      {
        v41.i64[0] = v36;
        v58 = v41;
        v59 = vdupq_n_s64(v38);
        HasHierarchy.parent.getter();
        (*((*v35 & *v13) + 0xC0))(0);

        v42 = HasTransform.position.modify();
        *&v44 = vadd_f32(*v43, __PAIR64__(v58.u32[1], v36));
        *(&v44 + 1) = vaddq_f32(*v43, v59).u32[2];
        *v43->f32 = v44;
        v42(v67, 0);
LABEL_24:

        goto LABEL_25;
      }

LABEL_21:

      goto LABEL_22;
    }

    v33 = v60;
  }
}

void specialized ARView.handleRotation(_:)(void *a1)
{
  type metadata accessor for EntityRotationGestureRecognizer();
  v2 = swift_dynamicCastClass();
  if (!v2)
  {
    return;
  }

  v3 = v2;
  v20 = a1;
  if ([v3 state] != 1 && objc_msgSend(v3, sel_state) != 2)
  {

    goto LABEL_10;
  }

  v4 = OBJC_IVAR____TtC10RealityKit31EntityRotationGestureRecognizer_entity;
  swift_beginAccess();
  if (!*&v3[v4])
  {
LABEL_10:

    return;
  }

  v24[0] = 1;
  specialized EntityGestureRecognizer.planeForUnprojection(heightOffset:)(0x100000000, v24);
  if (v24[64])
  {
  }

  else
  {
    v5 = v20;
    [v3 rotation];
    v7 = v6;
    [v3 setRotation_];

    specialized SIMD.subscript.getter(xmmword_1E1252DD0, COERCE_DOUBLE(2));
    HasTransform.convert(normal:from:)();
    *v21 = v8;
    v9 = vmulq_f32(v8, v8);
    *&v10 = v9.f32[2] + vaddv_f32(*v9.f32);
    *v8.f32 = vrsqrte_f32(v10);
    *v8.f32 = vmul_f32(*v8.f32, vrsqrts_f32(v10, vmul_f32(*v8.f32, *v8.f32)));
    LODWORD(v19) = vmul_f32(*v8.f32, vrsqrts_f32(v10, vmul_f32(*v8.f32, *v8.f32))).u32[0];
    v11 = __sincosf_stret(v7 * -0.5);
    v12 = vmulq_n_f32(vmulq_n_f32(*v21, v19), v11.__sinval);
    v12.i32[3] = LODWORD(v11.__cosval);
    v22 = v12;
    v13 = HasTransform.orientation.modify();
    v15 = vnegq_f32(v22);
    v16 = vtrn2q_s32(v22, vtrn1q_s32(v22, v15));
    v17 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v22, v15, 8uLL), *v14, 1), vextq_s8(v16, v16, 8uLL), COERCE_FLOAT(*v14->f32));
    v18 = vrev64q_s32(v22);
    v18.i32[0] = v15.i32[1];
    v18.i32[3] = v15.i32[2];
    *v14->f32 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v22, *v14->f32, 3), v18, *v14->f32, 2), v17);
    v13(v23, 0);
  }
}

void specialized ARView.handleScale(_:)(void *a1)
{
  type metadata accessor for EntityScaleGestureRecognizer();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = v2;
    v12 = a1;
    if ([v3 state] == 1 || objc_msgSend(v3, sel_state) == 2)
    {
      v4 = OBJC_IVAR____TtC10RealityKit28EntityScaleGestureRecognizer_entity;
      swift_beginAccess();
      if (*&v3[v4])
      {
        v5 = v12;

        [v3 scale];
        v7 = v6;
        [v3 setScale_];

        v8 = v7;
        v13 = v8;
        v9 = HasTransform.scale.modify();
        v11.i64[0] = vmulq_n_f32(*v10, v13).u64[0];
        v11.i64[1] = COERCE_UNSIGNED_INT(vmuls_lane_f32(v13, *v10, 2));
        *v10 = v11;
        v9(v14, 0);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t specialized ARView.gestureRecognizer(_:shouldRecognizeSimultaneouslyWith:)(void *a1, void *a2)
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      goto LABEL_3;
    }
  }

  swift_getObjectType();
  v5 = swift_conformsToProtocol2();
  v4 = 0;
  if (v5)
  {
    if (a1)
    {
      v6 = v5;
      swift_getObjectType();
      v7 = swift_conformsToProtocol2();
      v4 = 0;
      if (v7)
      {
        if (a2)
        {
          v8 = v7;
          ObjectType = swift_getObjectType();
          v10 = *(v6 + 8);
          v11 = a1;
          v12 = a2;
          v13 = v10(ObjectType, v6);
          v14 = swift_getObjectType();
          v15 = (*(v8 + 8))(v14, v8);
          if (v13)
          {
            if (v15)
            {
              type metadata accessor for Entity();
              lazy protocol witness table accessor for type Entity and conformance Entity();

              v4 = dispatch thunk of static Equatable.== infix(_:_:)();

              return v4 & 1;
            }
          }

          else
          {
            v16 = v15;

            if (!v16)
            {
LABEL_3:
              v4 = 1;
              return v4 & 1;
            }
          }

          v4 = 0;
        }
      }
    }
  }

  return v4 & 1;
}

unint64_t lazy protocol witness table accessor for type ARView.EntityGestures and conformance ARView.EntityGestures()
{
  result = lazy protocol witness table cache variable for type ARView.EntityGestures and conformance ARView.EntityGestures;
  if (!lazy protocol witness table cache variable for type ARView.EntityGestures and conformance ARView.EntityGestures)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARView.EntityGestures and conformance ARView.EntityGestures);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARView.EntityGestures and conformance ARView.EntityGestures;
  if (!lazy protocol witness table cache variable for type ARView.EntityGestures and conformance ARView.EntityGestures)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARView.EntityGestures and conformance ARView.EntityGestures);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARView.EntityGestures and conformance ARView.EntityGestures;
  if (!lazy protocol witness table cache variable for type ARView.EntityGestures and conformance ARView.EntityGestures)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARView.EntityGestures and conformance ARView.EntityGestures);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARView.EntityGestures and conformance ARView.EntityGestures;
  if (!lazy protocol witness table cache variable for type ARView.EntityGestures and conformance ARView.EntityGestures)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARView.EntityGestures and conformance ARView.EntityGestures);
  }

  return result;
}

uint64_t outlined destroy of AnchoringComponent.Target?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit18AnchoringComponentV6TargetOSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of AnchoringComponent.Target?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit18AnchoringComponentV6TargetOSgMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type Entity and conformance Entity()
{
  result = lazy protocol witness table cache variable for type Entity and conformance Entity;
  if (!lazy protocol witness table cache variable for type Entity and conformance Entity)
  {
    type metadata accessor for Entity();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Entity and conformance Entity);
  }

  return result;
}

CGPoint CGPointApplyAffineTransform(CGPoint point, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD70](t, point, *&point.y);
  result.y = v3;
  result.x = v2;
  return result;
}

simd_float4x4 __invert_f4(simd_float4x4 a1)
{
  MEMORY[0x1EEE73560](a1.columns[0], a1.columns[1], a1.columns[2], a1.columns[3]);
  result.columns[3].i64[1] = v8;
  result.columns[3].i64[0] = v7;
  result.columns[2].i64[1] = v6;
  result.columns[2].i64[0] = v5;
  result.columns[1].i64[1] = v4;
  result.columns[1].i64[0] = v3;
  result.columns[0].i64[1] = v2;
  result.columns[0].i64[0] = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x1EEE73578](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}