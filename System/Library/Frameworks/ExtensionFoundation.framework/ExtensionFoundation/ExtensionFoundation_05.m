uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShys11AnyHashableVG_19ExtensionFoundation24_EXServiceClientObserver_ps5NeverOTg504_s19f13Foundation16_hi66C06ActiveD5Query33_591406279EDD09BF7033B88E7B83DCFDLLC07ServiceD11j41SetC10allObjectsSayAA01_cdN0_pGvgAaJ_ps11dE6VXEfU_Tf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v2 = v26;
  v4 = -1 << *(a1 + 32);
  v22 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v6 = result;
  v7 = 0;
  v21 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v22 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(a1 + 36);
    outlined init with copy of AnyHashable(*(a1 + 48) + 40 * v6, v24);
    outlined init with copy of AnyHashable(v24, v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation24_EXServiceClientObserver_pMd, &_s19ExtensionFoundation24_EXServiceClientObserver_pMR);
    swift_dynamicCast();
    outlined destroy of AnyHashable(v24);
    v26 = v2;
    v13 = *(v2 + 16);
    v12 = *(v2 + 24);
    if (v13 >= v12 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
      v2 = v26;
    }

    *(v2 + 16) = v13 + 1;
    result = outlined init with take of _InnerAppExtensionIdentity(&v25, v2 + 40 * v13 + 32);
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v14 = *(v22 + 8 * v10);
    if ((v14 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v11 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v15 = v14 & (-2 << (v6 & 0x3F));
    if (v15)
    {
      v8 = __clz(__rbit64(v15)) | v6 & 0x7FFFFFFFFFFFFFC0;
      v9 = v21;
    }

    else
    {
      v16 = v10 << 6;
      v17 = v10 + 1;
      v9 = v21;
      v18 = (a1 + 64 + 8 * v10);
      while (v17 < (v8 + 63) >> 6)
      {
        v20 = *v18++;
        v19 = v20;
        v16 += 64;
        ++v17;
        if (v20)
        {
          result = outlined consume of Set<AppExtensionPoint>.Index._Variant(v6, v11, 0);
          v8 = __clz(__rbit64(v19)) + v16;
          goto LABEL_4;
        }
      }

      result = outlined consume of Set<AppExtensionPoint>.Index._Variant(v6, v11, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v9)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

unint64_t _EXServiceClient.extensions(with:)(unint64_t result)
{
  v1 = result;
  v12 = MEMORY[0x1E69E7CD0];
  if (result >> 62)
  {
    result = __CocoaSet.count.getter();
    v2 = result;
  }

  else
  {
    v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
    v8 = MEMORY[0x1E69E7CD0];
LABEL_14:
    v9 = type metadata accessor for _EXQueryResult();
    v10 = objc_allocWithZone(v9);
    *&v10[OBJC_IVAR____EXQueryResult_identities] = v8;
    *&v10[OBJC_IVAR____EXQueryResult_availablility] = 0;
    v11.receiver = v10;
    v11.super_class = v9;
    return objc_msgSendSuper2(&v11, sel_init);
  }

  if (v2 >= 1)
  {
    for (i = 0; i != v2; ++i)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1865F3F40](i, v1);
      }

      else
      {
        v4 = *(v1 + 8 * i + 32);
      }

      v5 = v4;
      v6 = _EXServiceClient.result(with:)(v4);
      if (*&v6[OBJC_IVAR____EXQueryResult_identities])
      {

        specialized Set.formUnion<A>(_:)(v7);
      }
    }

    v8 = v12;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t _EXServiceClient.fetchExtensions(with:completion:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = a3;
  v33 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v39 = *(v5 - 8);
  v40 = v5;
  v6 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v37 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for DispatchQoS();
  v36 = *(v38 - 8);
  v8 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v35 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = swift_allocObject();
  *(v46 + 16) = MEMORY[0x1E69E7CD0];
  v45 = dispatch_group_create();
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    v25 = *(v3 + OBJC_IVAR____EXServiceClient_notifyQueue);
    v26 = swift_allocObject();
    v27 = v33;
    v26[2] = v46;
    v26[3] = v27;
    v26[4] = v34;
    v52 = partial apply for closure #2 in _EXServiceClient.fetchExtensions(with:completion:);
    v53 = v26;
    aBlock = MEMORY[0x1E69E9820];
    v49 = 1107296256;
    v50 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v51 = &block_descriptor_137;
    v28 = _Block_copy(&aBlock);

    v29 = v35;
    static DispatchQoS.unspecified.getter();
    v47 = MEMORY[0x1E69E7CC0];
    _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [RBSDomainAttribute] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v30 = v37;
    v31 = v40;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v32 = v45;
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v28);

    (*(v39 + 8))(v30, v31);
    (*(v36 + 8))(v29, v38);
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (result >= 1)
  {
    v11 = 0;
    v42 = &v50;
    v43 = a1 & 0xC000000000000001;
    v44 = a1;
    v41 = result;
    do
    {
      if (v43)
      {
        v12 = MEMORY[0x1865F3F40](v11, a1);
      }

      else
      {
        v12 = *(a1 + 8 * v11 + 32);
      }

      v13 = v12;
      ++v11;
      v14 = v45;
      dispatch_group_enter(v45);
      v15 = swift_allocObject();
      *(v15 + 16) = v46;
      *(v15 + 24) = v14;

      v16 = v14;
      v17 = _EXServiceClient.discoveryConnection.getter();
      v18 = swift_allocObject();
      *(v18 + 16) = partial apply for closure #1 in _EXServiceClient.fetchExtensions(with:completion:);
      *(v18 + 24) = v15;
      v52 = closure #1 in _EXServiceClient.fetchResults(with:completion:)partial apply;
      v53 = v18;
      aBlock = MEMORY[0x1E69E9820];
      v49 = 1107296256;
      v50 = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
      v51 = &block_descriptor_124;
      v19 = _Block_copy(&aBlock);

      v20 = [v17 remoteObjectProxyWithErrorHandler_];
      _Block_release(v19);

      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation27_EXDiscoveryServiceProtocol_pMd, _s19ExtensionFoundation27_EXDiscoveryServiceProtocol_pMR);
      swift_dynamicCast();
      v21 = v47;
      v22 = swift_allocObject();
      v22[2] = v13;
      v22[3] = partial apply for closure #1 in _EXServiceClient.fetchExtensions(with:completion:);
      v22[4] = v15;
      v52 = closure #2 in _EXServiceClient.fetchResults(with:completion:)partial apply;
      v53 = v22;
      aBlock = MEMORY[0x1E69E9820];
      v49 = 1107296256;
      v50 = thunk for @escaping @callee_guaranteed (@guaranteed Service.ObserverUpdate?, @guaranteed Error?) -> ();
      v51 = &block_descriptor_131;
      v23 = _Block_copy(&aBlock);

      v24 = v13;

      [v21 extensionsWith:v24 reply:v23];
      _Block_release(v23);

      swift_unknownObjectRelease();
      a1 = v44;
    }

    while (v41 != v11);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

id _EXServiceClient.().init()()
{
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v19 = *(v1 - 8);
  v20 = v1;
  v2 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v18 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = OBJC_IVAR____EXServiceClient_connectionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *&v0[v8] = v9;
  *&v0[OBJC_IVAR____EXServiceClient__discoveryConnection] = 0;
  *&v0[OBJC_IVAR____EXServiceClient__observerConnection] = 0;
  *&v0[OBJC_IVAR____EXServiceClient__tccProxyConnection] = 0;
  *&v0[OBJC_IVAR____EXServiceClient__launchConnection] = 0;
  *&v0[OBJC_IVAR____EXServiceClient_activeQueries] = MEMORY[0x1E69E7CD0];
  v10 = OBJC_IVAR____EXServiceClient_activeQueriesLock;
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *&v0[v10] = v11;
  *&v0[OBJC_IVAR____EXServiceClient_activeObservers] = MEMORY[0x1E69E7CC8];
  v12 = OBJC_IVAR____EXServiceClient_activeObserversLock;
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *&v0[v12] = v13;
  v17 = OBJC_IVAR____EXServiceClient_notifyQueue;
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  static DispatchQoS.unspecified.getter();
  v22 = MEMORY[0x1E69E7CC0];
  _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [RBSDomainAttribute] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v19 + 104))(v18, *MEMORY[0x1E69E8090], v20);
  *&v0[v17] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v14 = type metadata accessor for _EXServiceClient();
  v21.receiver = v0;
  v21.super_class = v14;
  return objc_msgSendSuper2(&v21, sel_init);
}

id _EXServiceClient.__deallocating_deinit()
{
  v1 = *&v0[OBJC_IVAR____EXServiceClient__discoveryConnection];
  if (v1)
  {
    [v1 invalidate];
  }

  v2 = *&v0[OBJC_IVAR____EXServiceClient__observerConnection];
  if (v2)
  {
    [v2 invalidate];
  }

  v3 = *&v0[OBJC_IVAR____EXServiceClient__tccProxyConnection];
  if (v3)
  {
    [v3 invalidate];
  }

  v4 = *&v0[OBJC_IVAR____EXServiceClient__launchConnection];
  if (v4)
  {
    [v4 invalidate];
  }

  v6.receiver = v0;
  v6.super_class = type metadata accessor for _EXServiceClient();
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

uint64_t _EXServiceClient.ActiveClientQuery.ServiceClientObserverSet.insert<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 16);
  v7 = *(a3 + 8);
  AnyHashable.init<A>(_:)();
  swift_beginAccess();
  specialized Set._Variant.insert(_:)(v11, v10);
  outlined destroy of AnyHashable(v11);
  return swift_endAccess();
}

uint64_t _EXServiceClient.ActiveClientQuery.ServiceClientObserverSet.remove<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 16);
  v7 = *(a3 + 8);
  AnyHashable.init<A>(_:)();
  swift_beginAccess();
  specialized Set._Variant.remove(_:)(v10, v11);
  outlined destroy of AnyHashable(v10);
  outlined destroy of NSObject?(v11, &_ss11AnyHashableVSgMd, &_ss11AnyHashableVSgMR);
  return swift_endAccess();
}

uint64_t _EXServiceClient.ActiveClientQuery.ServiceClientObserverSet.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

void closure #1 in _EXServiceClient.ActiveClientQuery.listener(_:shouldAcceptNewConnection:)()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  swift_unknownObjectWeakAssign();
}

uint64_t _EXServiceClient.ActiveClientQuery.isEqual(_:)(uint64_t a1)
{
  outlined init with copy of UUID?(a1, v7, &_sypSgMd, &_sypSgMR);
  if (!v8)
  {
    outlined destroy of NSObject?(v7, &_sypSgMd, &_sypSgMR);
    goto LABEL_6;
  }

  type metadata accessor for _EXServiceClient.ActiveClientQuery();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v4 = 0;
    return v4 & 1;
  }

  if (v6 == v1)
  {

    v4 = 1;
  }

  else
  {
    type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
    v2 = *&v1[OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClientP33_591406279EDD09BF7033B88E7B83DCFD17ActiveClientQuery_query];
    v3 = *&v6[OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClientP33_591406279EDD09BF7033B88E7B83DCFD17ActiveClientQuery_query];
    v4 = static NSObject.== infix(_:_:)();
  }

  return v4 & 1;
}

id _EXServiceClient.discoveryConnection.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &aBlock - v3;
  v5 = *(v0 + OBJC_IVAR____EXServiceClient_connectionLock);
  os_unfair_lock_lock(v5 + 4);
  v6 = OBJC_IVAR____EXServiceClient__discoveryConnection;
  v7 = *(v0 + OBJC_IVAR____EXServiceClient__discoveryConnection);
  if (v7)
  {
    v8 = v7;
    os_unfair_lock_unlock(v5 + 4);
    return v8;
  }

  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  (*(v11 + 56))(v4, 1, 1, v10);
  v12 = MEMORY[0x1865F36D0](0xD00000000000001DLL, 0x80000001848C3B70);
  isa = 0;
  if ((*(v11 + 48))(v4, 1, v10) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v11 + 8))(v4, v10);
  }

  v14 = MEMORY[0x1865F36D0](0x7265766F63736944, 0xE900000000000079);
  v15 = [objc_opt_self() endpointForServiceName:v12 oneshot:isa service:v14 instance:0];

  if (!v15)
  {
    if (one-time initialization token for general != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.general);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      aBlock = v29;
      *v28 = 136446466;
      *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x80000001848C3B70, &aBlock);
      *(v28 + 12) = 2082;
      *(v28 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x7265766F63736944, 0xE900000000000079, &aBlock);
      swift_arrayDestroy();
      MEMORY[0x1865F56C0](v29, -1, -1);
      MEMORY[0x1865F56C0](v28, -1, -1);
    }

    v24 = [objc_allocWithZone(MEMORY[0x1E696B0B8]) init];
    goto LABEL_14;
  }

  v16 = objc_opt_self();
  v34 = destructiveProjectEnumData for Platform;
  v35 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v31 = 1107296256;
  v32 = thunk for @escaping @callee_guaranteed (@guaranteed BSServiceConnectionListenerConfiguring) -> ();
  v33 = &block_descriptor_91;
  v17 = _Block_copy(&aBlock);

  v18 = [v16 NSXPCConnectionWithEndpoint:v15 configurator:v17];
  _Block_release(v17);
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
    goto LABEL_16;
  }

  if (one-time initialization token for discoveryServiceInterface != -1)
  {
LABEL_16:
    swift_once();
  }

  [v18 setRemoteObjectInterface_];
  v19 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v34 = partial apply for closure #2 in _EXServiceClient.discoveryConnection.getter;
  v35 = v19;
  aBlock = MEMORY[0x1E69E9820];
  v31 = 1107296256;
  v32 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v33 = &block_descriptor_95;
  v20 = _Block_copy(&aBlock);

  [v18 setInterruptionHandler_];
  _Block_release(v20);
  v21 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v34 = partial apply for closure #3 in _EXServiceClient.discoveryConnection.getter;
  v35 = v21;
  aBlock = MEMORY[0x1E69E9820];
  v31 = 1107296256;
  v32 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v33 = &block_descriptor_99;
  v22 = _Block_copy(&aBlock);

  [v18 setInvalidationHandler_];
  _Block_release(v22);
  v23 = *(v0 + v6);
  *(v0 + v6) = v18;
  v24 = v18;

  [v24 activate];
LABEL_14:
  os_unfair_lock_unlock(v5 + 4);
  return v24;
}

void closure #2 in _EXServiceClient.discoveryConnection.getter()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v1 = *&Strong[OBJC_IVAR____EXServiceClient_connectionLock];

  os_unfair_lock_lock(v1 + 4);
  partial apply for closure #1 in closure #2 in _EXServiceClient.discoveryConnection.getter(v2);
  os_unfair_lock_unlock(v1 + 4);

  v3 = swift_unknownObjectUnownedLoadStrong();
  v4 = *&v3[OBJC_IVAR____EXServiceClient_activeQueriesLock];
  os_unfair_lock_lock(v4 + 4);
  partial apply for closure #1 in _EXServiceClient.reconnectActiveQueries()(v5);
  os_unfair_lock_unlock(v4 + 4);
}

uint64_t closure #3 in _EXServiceClient.discoveryConnection.getter()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v1 = *&Strong[OBJC_IVAR____EXServiceClient_connectionLock];

  os_unfair_lock_lock(v1 + 4);
  partial apply for closure #1 in closure #3 in _EXServiceClient.discoveryConnection.getter();
  os_unfair_lock_unlock(v1 + 4);
}

void closure #1 in _EXServiceClient.reconnectActiveQueries()(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____EXServiceClient_activeQueries;
  swift_beginAccess();
  v30 = a2;
  v4 = *(a2 + v3);
  if ((v4 & 0xC000000000000001) != 0)
  {
    if (v4 < 0)
    {
      v5 = *(a2 + v3);
    }

    v6 = *(a2 + v3);

    __CocoaSet.makeIterator()();
    type metadata accessor for _EXServiceClient.ActiveClientQuery();
    _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type _EXServiceClient.ActiveClientQuery and conformance NSObject, type metadata accessor for _EXServiceClient.ActiveClientQuery);
    Set.Iterator.init(_cocoa:)();
    v4 = v39;
    v7 = v40;
    v8 = v41;
    v9 = v42;
    v10 = v43;
  }

  else
  {
    v11 = -1 << *(v4 + 32);
    v7 = v4 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(v4 + 56);

    v9 = 0;
  }

  v29 = v4;
  while (v4 < 0)
  {
    v19 = __CocoaSet.Iterator.next()();
    if (!v19 || (v32 = v19, type metadata accessor for _EXServiceClient.ActiveClientQuery(), swift_dynamicCast(), v18 = aBlock, v16 = v9, v17 = v10, !aBlock))
    {
LABEL_24:
      outlined consume of [String : Any].Iterator._Variant();
      return;
    }

LABEL_20:
    v31 = v17;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v21 = Strong;
      swift_unknownObjectWeakAssign();
      [v21 invalidate];
    }

    v22 = OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClientP33_591406279EDD09BF7033B88E7B83DCFD17ActiveClientQuery_started;
    v18[OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClientP33_591406279EDD09BF7033B88E7B83DCFD17ActiveClientQuery_started] = 0;
    os_unfair_lock_assert_owner((*(v30 + OBJC_IVAR____EXServiceClient_activeQueriesLock) + 16));
    if ((v18[v22] & 1) == 0)
    {
      v23 = _EXServiceClient.discoveryConnection.getter();
      v37 = closure #1 in _EXServiceClient.begin(activeQuery:);
      v38 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v34 = 1107296256;
      v35 = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
      v36 = &block_descriptor_102;
      v24 = _Block_copy(&aBlock);
      v25 = [v23 remoteObjectProxyWithErrorHandler_];
      _Block_release(v24);

      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation27_EXDiscoveryServiceProtocol_pMd, _s19ExtensionFoundation27_EXDiscoveryServiceProtocol_pMR);
      swift_dynamicCast();
      v18[v22] = 1;
      v26 = *&v18[OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClientP33_591406279EDD09BF7033B88E7B83DCFD17ActiveClientQuery_query];
      v27 = [*&v18[OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClientP33_591406279EDD09BF7033B88E7B83DCFD17ActiveClientQuery_xpcListener] endpoint];
      v37 = closure #2 in _EXServiceClient.begin(activeQuery:);
      v38 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v34 = 1107296256;
      v4 = v29;
      v35 = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
      v36 = &block_descriptor_105;
      v28 = _Block_copy(&aBlock);
      [v32 beginExtensionsQuery:v26 listenerEndpoint:v27 reply:v28];
      _Block_release(v28);
      swift_unknownObjectRelease();

      v18 = v27;
    }

    v9 = v16;
    v10 = v31;
  }

  v14 = v9;
  v15 = v10;
  v16 = v9;
  if (v10)
  {
LABEL_16:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v4 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v18)
    {
      goto LABEL_24;
    }

    goto LABEL_20;
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= ((v8 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v15 = *(v7 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

id _EXServiceClient.result(with:)(char *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = *&a1[OBJC_IVAR____EXQuery_predicate];
  v4 = v3;
  v5 = _EXServiceClient.discoveryConnection.getter();
  v21 = closure #1 in _EXServiceClient.result(with:);
  v22 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  v20 = &block_descriptor_143;
  v6 = _Block_copy(&aBlock);
  v7 = [v5 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v6);

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation27_EXDiscoveryServiceProtocol_pMd, _s19ExtensionFoundation27_EXDiscoveryServiceProtocol_pMR);
  swift_dynamicCast();
  v8 = swift_allocObject();
  v8[2] = v3;
  v8[3] = a1;
  v8[4] = v2;
  v21 = partial apply for closure #2 in _EXServiceClient.result(with:);
  v22 = v8;
  aBlock = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = thunk for @escaping @callee_guaranteed (@guaranteed Service.ObserverUpdate?, @guaranteed Error?) -> ();
  v20 = &block_descriptor_149;
  v9 = _Block_copy(&aBlock);
  v10 = v4;
  v11 = a1;

  [v16 extensionsWith:v11 reply:v9];
  _Block_release(v9);
  swift_beginAccess();
  v12 = *(v2 + 16);
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = [objc_allocWithZone(type metadata accessor for _EXQueryResult()) init];
  }

  v14 = v13;

  swift_unknownObjectRelease();

  return v14;
}

void closure #2 in _EXServiceClient.result(with:)(char *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    if (a3 && *&a1[OBJC_IVAR____EXQueryResult_identities] && !*(a4 + OBJC_IVAR____EXQuery_resultType))
    {
      v19 = a3;
      v20 = a1;

      v22 = specialized Set._Variant.filter(_:)(v21, v19);

      v23 = type metadata accessor for _EXQueryResult();
      v24 = objc_allocWithZone(v23);
      *&v24[OBJC_IVAR____EXQueryResult_identities] = v22;
      *&v24[OBJC_IVAR____EXQueryResult_availablility] = 0;
      v28.receiver = v24;
      v28.super_class = v23;
      v25 = objc_msgSendSuper2(&v28, sel_init);

      swift_beginAccess();
      v26 = *(a5 + 16);
      *(a5 + 16) = v25;
    }

    else
    {
      swift_beginAccess();
      v7 = *(a5 + 16);
      *(a5 + 16) = a1;
      v8 = a1;
    }
  }

  else
  {
    if (one-time initialization token for discovery != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.discovery);
    v11 = a2;
    oslog = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138543362;
      if (a2)
      {
        v15 = a2;
        v16 = _swift_stdlib_bridgeErrorToNSError();
        v17 = v16;
      }

      else
      {
        v16 = 0;
        v17 = 0;
      }

      *(v13 + 4) = v16;
      *v14 = v17;
      _os_log_impl(&dword_1847D1000, oslog, v12, "Query failed with error: %{public}@", v13, 0xCu);
      outlined destroy of NSObject?(v14, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
      MEMORY[0x1865F56C0](v14, -1, -1);
      MEMORY[0x1865F56C0](v13, -1, -1);
    }
  }
}

uint64_t _EXServiceClient.fetchResults(with:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = _EXServiceClient.discoveryConnection.getter();
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v19 = partial apply for closure #1 in _EXServiceClient.fetchResults(with:completion:);
  v20 = v7;
  aBlock = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  v18 = &block_descriptor_81;
  v8 = _Block_copy(&aBlock);

  v9 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v8);

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation27_EXDiscoveryServiceProtocol_pMd, _s19ExtensionFoundation27_EXDiscoveryServiceProtocol_pMR);
  swift_dynamicCast();
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v19 = partial apply for closure #2 in _EXServiceClient.fetchResults(with:completion:);
  v20 = v10;
  aBlock = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = thunk for @escaping @callee_guaranteed (@guaranteed Service.ObserverUpdate?, @guaranteed Error?) -> ();
  v18 = &block_descriptor_87;
  v11 = _Block_copy(&aBlock);

  v12 = a1;

  [v14 extensionsWith:v12 reply:v11];
  _Block_release(v11);
  return swift_unknownObjectRelease();
}

void closure #1 in _EXServiceClient.fetchResults(with:completion:)(void *a1, void (*a2)(void))
{
  if (one-time initialization token for discovery != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.discovery);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = a1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1847D1000, v6, v7, "Query failed with error: %{public}@", v8, 0xCu);
    outlined destroy of NSObject?(v9, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
    MEMORY[0x1865F56C0](v9, -1, -1);
    MEMORY[0x1865F56C0](v8, -1, -1);
  }

  v12 = [objc_allocWithZone(type metadata accessor for _EXQueryResult()) init];
  a2();
}

void closure #2 in _EXServiceClient.fetchResults(with:completion:)(char *a1, void *a2, uint64_t a3, void (*a4)(void))
{
  if (a1)
  {
    v6 = *(a3 + OBJC_IVAR____EXQuery_predicate);
    if (v6 && *&a1[OBJC_IVAR____EXQueryResult_identities] && !*(a3 + OBJC_IVAR____EXQuery_resultType))
    {
      v18 = v6;
      v19 = a1;

      v21 = specialized Set._Variant.filter(_:)(v20, v18);

      v22 = type metadata accessor for _EXQueryResult();
      v23 = objc_allocWithZone(v22);
      *&v23[OBJC_IVAR____EXQueryResult_identities] = v21;
      *&v23[OBJC_IVAR____EXQueryResult_availablility] = 0;
      v28.receiver = v23;
      v28.super_class = v22;
      v24 = objc_msgSendSuper2(&v28, sel_init);
      if ([v24 isKindOfClass_])
      {
        v25 = swift_dynamicCastClassUnconditional();
        (a4)(v25);
      }

      else
      {
        v26 = [objc_opt_self() _EX_parameterError];
        swift_willThrow();
        swift_unexpectedError();
        __break(1u);
      }

      return;
    }

    v27 = v6;
    v7 = a1;
    a4();
  }

  else
  {
    if (one-time initialization token for discovery != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.discovery);
    v10 = a2;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138543362;
      if (a2)
      {
        v15 = a2;
        v16 = _swift_stdlib_bridgeErrorToNSError();
        v17 = v16;
      }

      else
      {
        v16 = 0;
        v17 = 0;
      }

      *(v13 + 4) = v16;
      *v14 = v17;
      _os_log_impl(&dword_1847D1000, v11, v12, "Query failed with error: %{public}@", v13, 0xCu);
      outlined destroy of NSObject?(v14, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
      MEMORY[0x1865F56C0](v14, -1, -1);
      MEMORY[0x1865F56C0](v13, -1, -1);
    }

    v27 = [objc_allocWithZone(type metadata accessor for _EXQueryResult()) init];
    a4();
  }
}

void closure #1 in _EXServiceClient.fetchExtensions(with:completion:)(uint64_t a1, int a2, dispatch_group_t group)
{
  if (*(a1 + OBJC_IVAR____EXQueryResult_identities))
  {
    swift_beginAccess();

    specialized Set.formUnion<A>(_:)(v4);
    swift_endAccess();
  }

  dispatch_group_leave(group);
}

void closure #2 in _EXServiceClient.fetchExtensions(with:completion:)(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = type metadata accessor for _EXQueryResult();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____EXQueryResult_identities] = v4;
  *&v6[OBJC_IVAR____EXQueryResult_availablility] = 0;
  v8.receiver = v6;
  v8.super_class = v5;

  v7 = objc_msgSendSuper2(&v8, sel_init);
  a2();
}

unint64_t specialized Set.firstIndex(of:)(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.index(for:)();
    if (v3)
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else if (*(a2 + 16) && (type metadata accessor for _EXServiceClient.ActiveClientQuery(), v5 = NSObject._rawHashValue(seed:)(*(a2 + 40)), v6 = -1 << *(a2 + 32), v4 = v5 & ~v6, ((*(a2 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0))
  {
    v7 = ~v6;
    while (1)
    {
      v8 = *(*(a2 + 48) + 8 * v4);
      v9 = static NSObject.== infix(_:_:)();

      if (v9)
      {
        break;
      }

      v4 = (v4 + 1) & v7;
      if (((*(a2 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
      {
        return 0;
      }
    }

    v11 = *(a2 + 36);
  }

  else
  {
    return 0;
  }

  return v4;
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

      MEMORY[0x1865F3E10](a1, a2, v7);
      type metadata accessor for _EXExtensionIdentity();
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    type metadata accessor for _EXExtensionIdentity();
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

      MEMORY[0x1865F3E10](a1, a2, v7);
      type metadata accessor for _EXServiceClient.ActiveClientQuery();
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    type metadata accessor for _EXServiceClient.ActiveClientQuery();
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

void closure #2 in _EXServiceClient.begin(activeQuery:)(NSObject *a1)
{
  if (a1)
  {
    v2 = a1;
    if (one-time initialization token for discovery != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.discovery);
    v4 = a1;
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138543362;
      v8 = a1;
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v9;
      *v7 = v9;
      _os_log_impl(&dword_1847D1000, oslog, v5, "Begin active query failed with error: %{public}@", v6, 0xCu);
      outlined destroy of NSObject?(v7, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
      MEMORY[0x1865F56C0](v7, -1, -1);
      MEMORY[0x1865F56C0](v6, -1, -1);

      v10 = oslog;
    }

    else
    {

      v10 = a1;
    }
  }
}

void thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ()(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t closure #1 in _EXServiceClient.add(queryObserver:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  v6 = (*(v5 + 32))(v4, v5);
  v7 = v6;
  if (v6 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v54 = OBJC_IVAR____EXServiceClient_activeQueriesLock;
    v9 = OBJC_IVAR____EXServiceClient_activeQueries;
    swift_beginAccess();
    if (!i)
    {
      break;
    }

    v10 = 0;
    v52 = v7 & 0xFFFFFFFFFFFFFF8;
    v53 = v7 & 0xC000000000000001;
    v50 = v7;
    v51 = a3;
    v48 = v9;
    v49 = i;
    while (1)
    {
      if (v53)
      {
        v20 = MEMORY[0x1865F3F40](v10, v7);
      }

      else
      {
        if (v10 >= *(v52 + 16))
        {
          goto LABEL_19;
        }

        v20 = *(v7 + 8 * v10 + 32);
      }

      v21 = v20;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v56 = *(a3 + v54);
      os_unfair_lock_assert_owner(v56 + 4);
      active = type metadata accessor for _EXServiceClient.ActiveClientQuery();
      v23 = objc_allocWithZone(active);
      v23[OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClientP33_591406279EDD09BF7033B88E7B83DCFD17ActiveClientQuery_started] = 0;
      v24 = OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClientP33_591406279EDD09BF7033B88E7B83DCFD17ActiveClientQuery__observers;
      type metadata accessor for _EXServiceClient.ActiveClientQuery.ServiceClientObserverSet();
      v25 = swift_allocObject();
      *(v25 + 16) = MEMORY[0x1E69E7CD0];
      *&v23[v24] = v25;
      swift_unknownObjectWeakInit();
      *&v23[OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClientP33_591406279EDD09BF7033B88E7B83DCFD17ActiveClientQuery_query] = v21;
      v26 = objc_opt_self();
      v57 = v21;
      v27 = [v26 anonymousListener];
      *&v23[OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClientP33_591406279EDD09BF7033B88E7B83DCFD17ActiveClientQuery_xpcListener] = v27;
      v65.receiver = v23;
      v65.super_class = active;
      v28 = v27;
      v29 = objc_msgSendSuper2(&v65, sel_init);
      [v28 setDelegate_];
      [v28 resume];

      v30 = v9;
      v31 = *(a3 + v9);

      v32 = a3;
      v33 = specialized Set.firstIndex(of:)(v29, v31);
      v35 = v34;
      v37 = v36;
      LODWORD(v24) = ~v36;

      if (v24)
      {
        v38 = *(v32 + v30);

        specialized Set.subscript.getter(v33, v35, v37 & 1, v38);
        v40 = v39;
        outlined consume of Set<_EXServiceClient.ActiveClientQuery>.Index?(v33, v35, v37);
      }

      else
      {
        swift_beginAccess();
        v40 = v29;
        specialized Set._Variant.insert(_:)(&v64, v40);
        v41 = v64;
        swift_endAccess();
      }

      v42 = a2[3];
      v43 = a2[4];
      v44 = __swift_project_boxed_opaque_existential_1(a2, v42);
      v45 = *&v40[OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClientP33_591406279EDD09BF7033B88E7B83DCFD17ActiveClientQuery__observers];

      _EXServiceClient.ActiveClientQuery.ServiceClientObserverSet.insert<A>(_:)(v44, v42, v43);

      os_unfair_lock_assert_owner(v56 + 4);
      v46 = OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClientP33_591406279EDD09BF7033B88E7B83DCFD17ActiveClientQuery_started;
      if (v40[OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClientP33_591406279EDD09BF7033B88E7B83DCFD17ActiveClientQuery_started])
      {
        v7 = v50;
        a3 = v51;
        v18 = v49;
        v16 = v57;
        v19 = v10 + 1;
      }

      else
      {
        a3 = v51;
        v11 = _EXServiceClient.discoveryConnection.getter();
        v62 = closure #1 in _EXServiceClient.begin(activeQuery:);
        v63 = 0;
        aBlock = MEMORY[0x1E69E9820];
        v59 = 1107296256;
        v60 = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
        v61 = &block_descriptor_108;
        v12 = _Block_copy(&aBlock);
        v13 = [v11 remoteObjectProxyWithErrorHandler_];
        _Block_release(v12);

        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation27_EXDiscoveryServiceProtocol_pMd, _s19ExtensionFoundation27_EXDiscoveryServiceProtocol_pMR);
        swift_dynamicCast();
        v14 = v64;
        v40[v46] = 1;
        v15 = *&v40[OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClientP33_591406279EDD09BF7033B88E7B83DCFD17ActiveClientQuery_query];
        v16 = [*&v40[OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClientP33_591406279EDD09BF7033B88E7B83DCFD17ActiveClientQuery_xpcListener] endpoint];
        v62 = closure #2 in _EXServiceClient.begin(activeQuery:);
        v63 = 0;
        aBlock = MEMORY[0x1E69E9820];
        v59 = 1107296256;
        v60 = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
        v61 = &block_descriptor_111;
        v17 = _Block_copy(&aBlock);
        [v14 beginExtensionsQuery:v15 listenerEndpoint:v16 reply:v17];

        _Block_release(v17);
        swift_unknownObjectRelease();
        v18 = v49;
        v7 = v50;
        v19 = v10 + 1;
      }

      ++v10;
      v9 = v48;
      if (v19 == v18)
      {
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }
}

unint64_t closure #1 in _EXServiceClient.remove(queryObserver:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  result = (*(v5 + 32))(v4, v5);
  v7 = result;
  if (!(result >> 62))
  {
    v8 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_3;
    }
  }

  result = __CocoaSet.count.getter();
  v8 = result;
  if (!result)
  {
  }

LABEL_3:
  if (v8 < 1)
  {
    __break(1u);
  }

  else
  {
    v9 = OBJC_IVAR____EXServiceClient_activeQueries;
    v43 = *(a3 + OBJC_IVAR____EXServiceClient_activeQueriesLock);
    v44 = v7 & 0xC000000000000001;
    v42 = objc_opt_self();
    swift_beginAccess();
    v10 = 0;
    p_cb = (&OBJC_PROTOCOL___OS_os_transaction + 64);
    v46 = v7;
    v47 = a3;
    v45 = v8;
    v49 = v9;
    do
    {
      if (v44)
      {
        v13 = MEMORY[0x1865F3F40](v10, v7);
      }

      else
      {
        v13 = *(v7 + 8 * v10 + 32);
      }

      v14 = v13;
      os_unfair_lock_assert_owner(v43 + 4);
      active = type metadata accessor for _EXServiceClient.ActiveClientQuery();
      v16 = objc_allocWithZone(active);
      v16[OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClientP33_591406279EDD09BF7033B88E7B83DCFD17ActiveClientQuery_started] = 0;
      v17 = *(p_cb + 311);
      type metadata accessor for _EXServiceClient.ActiveClientQuery.ServiceClientObserverSet();
      v18 = swift_allocObject();
      *(v18 + 16) = MEMORY[0x1E69E7CD0];
      *&v16[v17] = v18;
      swift_unknownObjectWeakInit();
      *&v16[OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClientP33_591406279EDD09BF7033B88E7B83DCFD17ActiveClientQuery_query] = v14;
      v50 = v14;
      v19 = [v42 anonymousListener];
      *&v16[OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClientP33_591406279EDD09BF7033B88E7B83DCFD17ActiveClientQuery_xpcListener] = v19;
      v51.receiver = v16;
      v51.super_class = active;
      v20 = v19;
      v21 = objc_msgSendSuper2(&v51, sel_init);
      [v20 setDelegate_];
      [v20 resume];

      v22 = v9;
      v23 = *(a3 + v9);

      v24 = specialized Set.firstIndex(of:)(v21, v23);
      v25 = a3;
      v27 = v26;
      v29 = v28;
      LODWORD(v17) = ~v28;

      if (v17)
      {
        v30 = *(v25 + v22);

        specialized Set.subscript.getter(v24, v27, v29 & 1, v30);
        v12 = v31;
        outlined consume of Set<_EXServiceClient.ActiveClientQuery>.Index?(v24, v27, v29);
      }

      else
      {
        swift_beginAccess();
        v12 = v21;
        specialized Set._Variant.insert(_:)(&v52, v12);
        v32 = v52;
        swift_endAccess();
      }

      v33 = a2[3];
      v34 = a2[4];
      v35 = __swift_project_boxed_opaque_existential_1(a2, v33);
      p_cb = &OBJC_PROTOCOL___OS_os_transaction.cb;
      v36 = OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClientP33_591406279EDD09BF7033B88E7B83DCFD17ActiveClientQuery__observers;
      v37 = *&v12[OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClientP33_591406279EDD09BF7033B88E7B83DCFD17ActiveClientQuery__observers];

      _EXServiceClient.ActiveClientQuery.ServiceClientObserverSet.remove<A>(_:)(v35, v33, v34);

      v38 = *&v12[v36];
      swift_beginAccess();
      v7 = v46;
      if (*(*(v38 + 16) + 16))
      {
        a3 = v47;
        swift_beginAccess();
        v39 = specialized Set._Variant.remove(_:)(v12);
        swift_endAccess();

        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v41 = Strong;
          swift_unknownObjectWeakAssign();
          [v41 invalidate];
        }

        v12[OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClientP33_591406279EDD09BF7033B88E7B83DCFD17ActiveClientQuery_started] = 0;
      }

      else
      {

        v12 = v50;
        a3 = v47;
      }

      ++v10;

      v9 = v49;
    }

    while (v45 != v10);
  }

  return result;
}

id _EXServiceClient.observerConnection.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &aBlock - v3;
  v5 = *(v0 + OBJC_IVAR____EXServiceClient_connectionLock);
  os_unfair_lock_lock(v5 + 4);
  v6 = OBJC_IVAR____EXServiceClient__observerConnection;
  v7 = *(v0 + OBJC_IVAR____EXServiceClient__observerConnection);
  if (v7)
  {
    v8 = v7;
    os_unfair_lock_unlock(v5 + 4);
    return v8;
  }

  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  (*(v11 + 56))(v4, 1, 1, v10);
  v12 = MEMORY[0x1865F36D0](0xD00000000000001DLL, 0x80000001848C3B70);
  isa = 0;
  if ((*(v11 + 48))(v4, 1, v10) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v11 + 8))(v4, v10);
  }

  v14 = MEMORY[0x1865F36D0](0x726576726573624FLL, 0xE800000000000000);
  v15 = [objc_opt_self() endpointForServiceName:v12 oneshot:isa service:v14 instance:0];

  if (!v15)
  {
    if (one-time initialization token for general != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.general);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      aBlock = v29;
      *v28 = 136446466;
      *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x80000001848C3B70, &aBlock);
      *(v28 + 12) = 2082;
      *(v28 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x726576726573624FLL, 0xE800000000000000, &aBlock);
      swift_arrayDestroy();
      MEMORY[0x1865F56C0](v29, -1, -1);
      MEMORY[0x1865F56C0](v28, -1, -1);
    }

    v24 = [objc_allocWithZone(MEMORY[0x1E696B0B8]) init];
    goto LABEL_14;
  }

  v16 = objc_opt_self();
  v34 = destructiveProjectEnumData for Platform;
  v35 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v31 = 1107296256;
  v32 = thunk for @escaping @callee_guaranteed (@guaranteed BSServiceConnectionListenerConfiguring) -> ();
  v33 = &block_descriptor_5;
  v17 = _Block_copy(&aBlock);

  v18 = [v16 NSXPCConnectionWithEndpoint:v15 configurator:v17];
  _Block_release(v17);
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
    goto LABEL_16;
  }

  if (one-time initialization token for observerServiceInterface != -1)
  {
LABEL_16:
    swift_once();
  }

  [v18 setRemoteObjectInterface_];
  v19 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v34 = partial apply for closure #2 in _EXServiceClient.observerConnection.getter;
  v35 = v19;
  aBlock = MEMORY[0x1E69E9820];
  v31 = 1107296256;
  v32 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v33 = &block_descriptor_71;
  v20 = _Block_copy(&aBlock);

  [v18 setInterruptionHandler_];
  _Block_release(v20);
  v21 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v34 = partial apply for closure #3 in _EXServiceClient.observerConnection.getter;
  v35 = v21;
  aBlock = MEMORY[0x1E69E9820];
  v31 = 1107296256;
  v32 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v33 = &block_descriptor_75_0;
  v22 = _Block_copy(&aBlock);

  [v18 setInvalidationHandler_];
  _Block_release(v22);
  v23 = *(v0 + v6);
  *(v0 + v6) = v18;
  v24 = v18;

  [v24 activate];
LABEL_14:
  os_unfair_lock_unlock(v5 + 4);
  return v24;
}

void closure #2 in _EXServiceClient.observerConnection.getter()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v1 = *&Strong[OBJC_IVAR____EXServiceClient_connectionLock];

  os_unfair_lock_lock(v1 + 4);
  partial apply for closure #1 in closure #2 in _EXServiceClient.observerConnection.getter(v2);
  os_unfair_lock_unlock(v1 + 4);

  v3 = swift_unknownObjectUnownedLoadStrong();
  _EXServiceClient.reconnectActiveObservers()();
}

Swift::Void __swiftcall _EXServiceClient.reconnectActiveObservers()()
{
  v43 = type metadata accessor for UUID();
  v1 = *(v43 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v41 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *(v0 + OBJC_IVAR____EXServiceClient_activeObserversLock);
  os_unfair_lock_lock(v36 + 4);
  v4 = OBJC_IVAR____EXServiceClient_activeObservers;
  swift_beginAccess();
  v5 = *(v0 + v4);
  v44 = v0;
  swift_beginAccess();
  v6 = *(v5 + 16);

  if (v6)
  {
    v7 = v44;
    v8 = *(v44 + v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = *(v7 + v4);
    *(v7 + v4) = 0x8000000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy10Foundation4UUIDV09ExtensionC016_EXServiceClientC8ObserverCGMd, &_ss17_NativeDictionaryVy10Foundation4UUIDV09ExtensionC016_EXServiceClientC8ObserverCGMR);
    _NativeDictionary.removeAll(isUnique:)(isUniquelyReferenced_nonNull_native);
    *(v7 + v4) = v45;
  }

  v40 = v4;
  swift_endAccess();
  v10 = v5 + 64;
  v11 = 1 << *(v5 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v5 + 64);
  v14 = (v11 + 63) >> 6;
  v38 = (v1 + 8);
  v39 = (v1 + 16);

  v15 = 0;
  *&v16 = 138412290;
  v37 = v16;
  v42 = v5;
  while (v13)
  {
LABEL_13:
    v18 = *(*(v5 + 56) + ((v15 << 9) | (8 * __clz(__rbit64(v13)))));
    v19 = *&v18[OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClient8Observer_listener];
    v20 = v18;
    [v19 invalidate];
    v21 = _EXServiceClient.observerConnection.getter([*&v20[OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClient8Observer_connection] invalidate]);
    _EXServiceClient.Observer.activate(connection:)(v21);
    if (v22)
    {

      if (one-time initialization token for discovery != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      __swift_project_value_buffer(v23, static Logger.discovery);
      v24 = v20;
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        *v27 = v37;
        *(v27 + 4) = v24;
        *v28 = v24;
        v24 = v24;
        _os_log_impl(&dword_1847D1000, v25, v26, "Failed to reconnect observer %@", v27, 0xCu);
        outlined destroy of NSObject?(v28, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
        MEMORY[0x1865F56C0](v28, -1, -1);
        v29 = v27;
        v5 = v42;
        MEMORY[0x1865F56C0](v29, -1, -1);
      }
    }

    else
    {

      v30 = v41;
      (*v39)(v41, &v20[OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClient8Observer_id], v43);
      v31 = v40;
      v32 = v44;
      swift_beginAccess();
      v25 = v20;
      v33 = *(v32 + v31);
      v34 = swift_isUniquelyReferenced_nonNull_native();
      v45 = *(v32 + v31);
      *(v32 + v31) = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v25, v30, v34);
      (*v38)(v30, v43);
      *(v32 + v31) = v45;
      v5 = v42;
      swift_endAccess();
    }

    v13 &= v13 - 1;
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v14)
    {

      os_unfair_lock_unlock(v36 + 4);
      return;
    }

    v13 = *(v10 + 8 * v17);
    ++v15;
    if (v13)
    {
      v15 = v17;
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t closure #3 in _EXServiceClient.observerConnection.getter()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v1 = *&Strong[OBJC_IVAR____EXServiceClient_connectionLock];

  os_unfair_lock_lock(v1 + 4);
  partial apply for closure #1 in closure #3 in _EXServiceClient.observerConnection.getter();
  os_unfair_lock_unlock(v1 + 4);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> _EXServiceClient.Observer.activate(connection:)(NSXPCConnection connection)
{
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationV11YieldResultOy19ExtensionFoundation03AppD5PointV7MonitorC5StateVs5Error_p__GMd, &_sScs12ContinuationV11YieldResultOy19ExtensionFoundation03AppD5PointV7MonitorC5StateVs5Error_p__GMR);
  v51 = *(v52 - 8);
  v4 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v50 = &v48 - v5;
  v6 = type metadata accessor for UUID();
  v58 = *(v6 - 8);
  v7 = v58;
  v8 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v1 + OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClient8Observer_listener);
  [v11 setDelegate_];
  [v11 resume];
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v60 = v12;
  v61 = (v12 + 16);
  v70 = partial apply for closure #1 in _EXServiceClient.Observer.activate(connection:);
  v71 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v67 = 1107296256;
  v68 = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  v69 = &block_descriptor_176;
  v13 = _Block_copy(&aBlock);

  v14 = [(objc_class *)connection.super.isa synchronousRemoteObjectProxyWithErrorHandler:v13];
  _Block_release(v13);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation7ServiceC16ObserverProtocol_pMd, &_s19ExtensionFoundation7ServiceC16ObserverProtocol_pMR);
  swift_dynamicCast();
  v59 = v64;
  v15 = swift_allocObject();
  v15[2] = 0;
  v49 = v15 + 2;
  v15[3] = 0;
  v15[4] = 0;
  v16 = (v1 + OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClient8Observer_identity);
  v57 = specialized Sequence.flatMap<A>(_:)(*(v1 + OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClient8Observer_identity));
  v48 = v2;
  v17 = *(v7 + 16);
  v53 = v1;
  v17(v10, v1 + OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClient8Observer_id, v6);
  v18 = v16[8];
  LOBYTE(v7) = v16[9];
  v55 = v16[10];
  v56 = v18;
  v54 = v16[11];
  v19 = [v11 endpoint];
  v20 = type metadata accessor for Service.ObserverConfiguration();
  v21 = objc_allocWithZone(v20);
  v17(&v21[OBJC_IVAR___ObserverConfiguration__id], v10, v6);
  v22 = v15;
  *&v21[OBJC_IVAR___ObserverConfiguration__extensionPointRecords] = v57;
  *&v21[OBJC_IVAR___ObserverConfiguration__endpoint] = v19;
  v23 = &v21[OBJC_IVAR___ObserverConfiguration__options];
  v24 = v55;
  *v23 = v56;
  v23[1] = v7;
  v26 = v59;
  v25 = v60;
  v23[2] = v24;
  v23[3] = v54;
  v65.receiver = v21;
  v65.super_class = v20;
  v27 = objc_msgSendSuper2(&v65, sel_init);
  v28 = v10;
  v29 = v27;
  (*(v58 + 8))(v28, v6);
  v30 = swift_allocObject();
  *(v30 + 16) = v25;
  *(v30 + 24) = v15;
  v70 = partial apply for closure #3 in _EXServiceClient.Observer.activate(connection:);
  v71 = v30;
  aBlock = MEMORY[0x1E69E9820];
  v67 = 1107296256;
  v68 = thunk for @escaping @callee_guaranteed (@guaranteed Service.ObserverUpdate?, @guaranteed Error?) -> ();
  v69 = &block_descriptor_185;
  v31 = _Block_copy(&aBlock);

  [v26 beginObservingWithConfiguration:v29 reply:v31];
  _Block_release(v31);
  v32 = v61;
  swift_beginAccess();
  v33 = *v32;
  if (*v32)
  {
    v34 = v33;
    if (one-time initialization token for discovery != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static Logger.discovery);
    v36 = v33;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v39 = 138543362;
      v41 = v33;
      v42 = _swift_stdlib_bridgeErrorToNSError();
      *(v39 + 4) = v42;
      *v40 = v42;
      _os_log_impl(&dword_1847D1000, v37, v38, "Begin observer failed with error: %{public}@", v39, 0xCu);
      outlined destroy of NSObject?(v40, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
      MEMORY[0x1865F56C0](v40, -1, -1);
      MEMORY[0x1865F56C0](v39, -1, -1);
    }
  }

  else
  {
    v43 = v50;
    v44 = v51;
    v45 = v52;
    v46 = v49;
    swift_beginAccess();
    if (*v46)
    {
      v62 = *v46;
      v63 = *(v22 + 3);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVy19ExtensionFoundation03AppB5PointV7MonitorC5StateVs5Error_p_GMd, &_sScs12ContinuationVy19ExtensionFoundation03AppB5PointV7MonitorC5StateVs5Error_p_GMR);
      AsyncThrowingStream.Continuation.yield(_:)();
      swift_unknownObjectRelease();

      (*(v44 + 8))(v43, v45);

      return;
    }

    v47 = objc_opt_self();
    v37 = MEMORY[0x1865F36D0](0xD00000000000001DLL, 0x80000001848C3C40);
    [v47 _EX_errorWithCode_description_];
  }

  swift_willThrow();

  swift_unknownObjectRelease();
}

id closure #1 in _EXServiceClient.Observer.activate(connection:)(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = a1;

  return a1;
}

void closure #3 in _EXServiceClient.Observer.activate(connection:)(char *a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (a1)
  {
    v5 = a1;
    v6 = *&a1[OBJC_IVAR___ObserverUpdate__identities];
    if (v6 >> 62)
    {
      goto LABEL_22;
    }

    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      while (1)
      {
        v37 = MEMORY[0x1E69E7CC0];
        v8 = v5;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7 & ~(v7 >> 63), 0);
        if (v7 < 0)
        {
          break;
        }

        v31 = v5;
        v32 = a4;
        v9 = 0;
        v10 = v37;
        while (1)
        {
          v5 = (v9 + 1);
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if ((v6 & 0xC000000000000001) != 0)
          {
            v11 = MEMORY[0x1865F3F40](v9, v6);
          }

          else
          {
            if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_21;
            }

            v11 = *(v6 + 8 * v9 + 32);
          }

          v12 = v11;
          v13 = OBJC_IVAR____EXExtensionIdentity__inner;
          swift_beginAccess();
          outlined init with copy of UUID?(v12 + v13, &v33, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
          if (!v34)
          {
            goto LABEL_26;
          }

          outlined init with take of _InnerAppExtensionIdentity(&v33, v35);
          v37 = v10;
          a4 = *(v10 + 16);
          v14 = *(v10 + 24);
          if (a4 >= v14 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), a4 + 1, 1);
            v10 = v37;
          }

          *(v10 + 16) = a4 + 1;
          v15 = v10 + 40 * a4;
          v16 = v35[0];
          v17 = v35[1];
          *(v15 + 64) = v36;
          *(v15 + 32) = v16;
          *(v15 + 48) = v17;
          ++v9;
          if (v5 == v7)
          {
            v5 = v31;
            a4 = v32;
            goto LABEL_24;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        v7 = __CocoaSet.count.getter();
        if (!v7)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
    }

    else
    {
LABEL_23:
      v27 = v5;
      v10 = MEMORY[0x1E69E7CC0];
LABEL_24:
      v28 = *&v5[OBJC_IVAR___ObserverUpdate__unelectedCount];
      v29 = *&v5[OBJC_IVAR___ObserverUpdate__disabledCount];

      swift_beginAccess();
      v30 = *(a4 + 16);
      *(a4 + 16) = v10;
      *(a4 + 24) = v28;
      *(a4 + 32) = v29;
    }
  }

  else
  {
    if (a2)
    {
      swift_beginAccess();
      v20 = *(a3 + 16);
      *(a3 + 16) = a2;
      v21 = a2;
      v22 = v20;
    }

    else
    {
      v24 = objc_opt_self();
      v25 = MEMORY[0x1865F36D0](0xD00000000000001DLL, 0x80000001848C3C60);
      v26 = [v24 _EX_errorWithCode_description_];

      swift_beginAccess();
      v22 = *(a3 + 16);
      *(a3 + 16) = v26;
    }
  }
}

id _EXServiceClient.ActiveClientQuery.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t type metadata accessor for _EXServiceClient.Observer()
{
  result = type metadata singleton initialization cache for _EXServiceClient.Observer;
  if (!type metadata singleton initialization cache for _EXServiceClient.Observer)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for _EXServiceClient.Observer()
{
  v0 = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for AsyncThrowingStream<AppExtensionPoint.Monitor.State, Error>.Continuation();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t protocol witness for Identifiable.id.getter in conformance _EXServiceClient.Observer@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClient8Observer_id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t _EXServiceClient.makeSequence(for:host:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v35 = a3;
  v6 = *a2;
  v5 = a2[1];
  v7 = a2[2];
  v28 = a2[3];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationV15BufferingPolicyOy19ExtensionFoundation03AppD5PointV7MonitorC5StateVs5Error_p__GMd, &_sScs12ContinuationV15BufferingPolicyOy19ExtensionFoundation03AppD5PointV7MonitorC5StateVs5Error_p__GMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (&v28 - v11);
  v33 = *a1;
  v13 = *(a1 + 8);
  v31 = *(a1 + 9);
  v32 = v13;
  v30 = *(a1 + 10);
  v14 = *(a1 + 11);
  if (one-time initialization token for inExtensionKitService != -1)
  {
    v25 = &v28 - v11;
    swift_once();
    v12 = v25;
  }

  v15 = *(a2 + 32);
  v29 = v14;
  if (static Service.inExtensionKitService == 1)
  {
    if ((v15 & 1) == 0)
    {
      v16 = v6;
      v17 = v28;
LABEL_10:
      *v12 = 1;
      v18 = (*(v9 + 104))(v12, *MEMORY[0x1E69E8788]);
      v28 = &v28;
      MEMORY[0x1EEE9AC00](v18);
      *(&v28 - 8) = v33;
      v19 = v31;
      *(&v28 - 56) = v32;
      *(&v28 - 55) = v19;
      v20 = v29;
      *(&v28 - 54) = v30;
      *(&v28 - 53) = v20;
      *(&v28 - 52) = v16;
      *(&v28 - 44) = v5;
      *(&v28 - 36) = v7;
      *(&v28 - 7) = v17;
      *(&v28 - 6) = v21;
      v27 = v34;
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsy19ExtensionFoundation03AppA5PointV7MonitorC5StateVs5Error_pGMd, &_sScsy19ExtensionFoundation03AppA5PointV7MonitorC5StateVs5Error_pGMR);
      v23 = v35;
      v35[3] = v22;
      v23[4] = lazy protocol witness table accessor for type [RBSDomainAttribute] and conformance [A](&lazy protocol witness table cache variable for type AsyncThrowingStream<AppExtensionPoint.Monitor.State, Error> and conformance AsyncThrowingStream<A, B>, &_sScsy19ExtensionFoundation03AppA5PointV7MonitorC5StateVs5Error_pGMd, &_sScsy19ExtensionFoundation03AppA5PointV7MonitorC5StateVs5Error_pGMR);
      __swift_allocate_boxed_opaque_existential_1(v23);
      return AsyncThrowingStream.init<>(_:bufferingPolicy:_:)();
    }
  }

  else if (v15)
  {
    if (one-time initialization token for current != -1)
    {
      v26 = v12;
      swift_once();
      v12 = v26;
    }

    v16 = *static AuditToken.current;
    v5 = *&static AuditToken.current[8];
    v7 = *&static AuditToken.current[16];
    v17 = *&static AuditToken.current[24];
    goto LABEL_10;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t closure #1 in _EXServiceClient.makeSequence(for:host:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v31 = a8;
  v32 = a4;
  v34 = a6;
  v35 = a7;
  v33 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVy19ExtensionFoundation03AppB5PointV7MonitorC5StateVs5Error_p_GMd, &_sScs12ContinuationVy19ExtensionFoundation03AppB5PointV7MonitorC5StateVs5Error_p_GMR);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v31 - v14;
  v16 = *(v12 + 16);
  v36 = a1;
  v16(&v31 - v14, a1, v11);
  v17 = type metadata accessor for _EXServiceClient.Observer();
  v18 = objc_allocWithZone(v17);
  *&v18[OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClient8Observer_connection] = 0;

  v19 = v31;
  UUID.init()();
  v20 = [objc_opt_self() anonymousListener];
  *&v18[OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClient8Observer_listener] = v20;
  v21 = &v18[OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClient8Observer_identity];
  *v21 = a2;
  v21[8] = a3 & 1;
  v21[9] = BYTE1(a3) & 1;
  v21[10] = BYTE2(a3) & 1;
  v21[11] = HIBYTE(a3) & 1;
  v22 = &v18[OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClient8Observer_host];
  v23 = v33;
  *v22 = v32;
  *(v22 + 1) = v23;
  v24 = v35;
  *(v22 + 2) = v34;
  *(v22 + 3) = v24;
  v16(&v18[OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClient8Observer_continuation], v15, v11);
  v38.receiver = v18;
  v38.super_class = v17;
  v25 = objc_msgSendSuper2(&v38, sel_init);
  (*(v12 + 8))(v15, v11);
  _EXServiceClient.addObserver(_:)(v25);
  v26 = _EXServiceClient.observerConnection.getter();
  _EXServiceClient.Observer.activate(connection:)(v26);

  if (v27)
  {
    v37 = v27;
    AsyncThrowingStream.Continuation.finish(throwing:)();
  }

  v28 = swift_allocObject();
  *(v28 + 16) = v19;
  *(v28 + 24) = v25;
  v29 = v19;
  return AsyncThrowingStream.Continuation.onTermination.setter();
}

void _EXServiceClient.addObserver(_:)(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____EXServiceClient_activeObserversLock);
  os_unfair_lock_lock(v3 + 4);
  v4 = OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClient8Observer_id;
  v5 = OBJC_IVAR____EXServiceClient_activeObservers;
  swift_beginAccess();
  if (*(*(v1 + v5) + 16) && (, specialized __RawDictionaryStorage.find<A>(_:)(a1 + v4), v7 = v6, , (v7 & 1) != 0))
  {
    _StringGuts.grow(_:)(26);

    v11 = [a1 description];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    MEMORY[0x1865F37A0](v12, v14);

    MEMORY[0x1865F37A0](0x79646165726C6120, 0xEF65766974636120);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    v8 = a1;
    v9 = *(v1 + v5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v1 + v5);
    *(v1 + v5) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v8, a1 + v4, isUniquelyReferenced_nonNull_native);
    *(v1 + v5) = v15;
    swift_endAccess();
    os_unfair_lock_unlock(v3 + 4);
  }
}

void _EXServiceClient.removeObserver(_:)(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v1 + OBJC_IVAR____EXServiceClient_activeObserversLock);
  os_unfair_lock_lock(v8 + 4);
  v9 = OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClient8Observer_id;
  v10 = OBJC_IVAR____EXServiceClient_activeObservers;
  swift_beginAccess();
  v11 = *(v1 + v10);
  if (*(v11 + 16))
  {

    v12 = specialized __RawDictionaryStorage.find<A>(_:)(a1 + v9);
    if (v13)
    {
      v14 = *(*(v11 + 56) + 8 * v12);
      v15 = v14;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  (*(v4 + 16))(v7, a1 + v9, v3);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(0, v7);
  swift_endAccess();
  if (v14)
  {
    v16 = *&v14[OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClient8Observer_listener];
    v17 = v14;
    [v16 invalidate];
    v18 = *&v17[OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClient8Observer_connection];
    [v18 invalidate];
  }

  os_unfair_lock_unlock(v8 + 4);
}

uint64_t closure #2 in _EXServiceClient.launchConnection.getter()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v1 = *&Strong[OBJC_IVAR____EXServiceClient_connectionLock];

  os_unfair_lock_lock(v1 + 4);
  partial apply for closure #1 in closure #2 in _EXServiceClient.launchConnection.getter(v2);
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t closure #3 in _EXServiceClient.launchConnection.getter()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v1 = *&Strong[OBJC_IVAR____EXServiceClient_connectionLock];

  os_unfair_lock_lock(v1 + 4);
  partial apply for closure #1 in closure #3 in _EXServiceClient.launchConnection.getter();
  os_unfair_lock_unlock(v1 + 4);
}

id _EXServiceClient.tccProxyConnection.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &aBlock - v3;
  v5 = *(v0 + OBJC_IVAR____EXServiceClient_connectionLock);
  os_unfair_lock_lock(v5 + 4);
  v6 = OBJC_IVAR____EXServiceClient__tccProxyConnection;
  v7 = *(v0 + OBJC_IVAR____EXServiceClient__tccProxyConnection);
  if (v7)
  {
    v8 = v7;
    os_unfair_lock_unlock(v5 + 4);
    return v8;
  }

  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  (*(v11 + 56))(v4, 1, 1, v10);
  v12 = MEMORY[0x1865F36D0](0xD00000000000001DLL, 0x80000001848C3B70);
  isa = 0;
  if ((*(v11 + 48))(v4, 1, v10) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v11 + 8))(v4, v10);
  }

  v14 = MEMORY[0x1865F36D0](0x79786F7250434354, 0xE800000000000000);
  v15 = [objc_opt_self() endpointForServiceName:v12 oneshot:isa service:v14 instance:0];

  if (!v15)
  {
    if (one-time initialization token for general != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.general);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      aBlock = v29;
      *v28 = 136446466;
      *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x80000001848C3B70, &aBlock);
      *(v28 + 12) = 2082;
      *(v28 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x79786F7250434354, 0xE800000000000000, &aBlock);
      swift_arrayDestroy();
      MEMORY[0x1865F56C0](v29, -1, -1);
      MEMORY[0x1865F56C0](v28, -1, -1);
    }

    v24 = [objc_allocWithZone(MEMORY[0x1E696B0B8]) init];
    goto LABEL_14;
  }

  v16 = objc_opt_self();
  v34 = destructiveProjectEnumData for Platform;
  v35 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v31 = 1107296256;
  v32 = thunk for @escaping @callee_guaranteed (@guaranteed BSServiceConnectionListenerConfiguring) -> ();
  v33 = &block_descriptor_162;
  v17 = _Block_copy(&aBlock);

  v18 = [v16 NSXPCConnectionWithEndpoint:v15 configurator:v17];
  _Block_release(v17);
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
    goto LABEL_16;
  }

  if (one-time initialization token for tccProxyServiceInterface != -1)
  {
LABEL_16:
    swift_once();
  }

  [v18 setRemoteObjectInterface_];
  v19 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v34 = partial apply for closure #2 in _EXServiceClient.tccProxyConnection.getter;
  v35 = v19;
  aBlock = MEMORY[0x1E69E9820];
  v31 = 1107296256;
  v32 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v33 = &block_descriptor_166;
  v20 = _Block_copy(&aBlock);

  [v18 setInterruptionHandler_];
  _Block_release(v20);
  v21 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v34 = partial apply for closure #3 in _EXServiceClient.tccProxyConnection.getter;
  v35 = v21;
  aBlock = MEMORY[0x1E69E9820];
  v31 = 1107296256;
  v32 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v33 = &block_descriptor_170;
  v22 = _Block_copy(&aBlock);

  [v18 setInvalidationHandler_];
  _Block_release(v22);
  v23 = *(v0 + v6);
  *(v0 + v6) = v18;
  v24 = v18;

  [v24 activate];
LABEL_14:
  os_unfair_lock_unlock(v5 + 4);
  return v24;
}

uint64_t closure #2 in _EXServiceClient.tccProxyConnection.getter()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v1 = *&Strong[OBJC_IVAR____EXServiceClient_connectionLock];

  os_unfair_lock_lock(v1 + 4);
  partial apply for closure #1 in closure #2 in _EXServiceClient.tccProxyConnection.getter(v2);
  os_unfair_lock_unlock(v1 + 4);
}

void closure #1 in closure #2 in _EXServiceClient.discoveryConnection.getter(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v5 = *&Strong[*a3];

  [v5 invalidate];
  v6 = swift_unknownObjectUnownedLoadStrong();
  v7 = *a3;
  v8 = *&v6[*a3];
  *&v6[v7] = 0;
}

uint64_t closure #3 in _EXServiceClient.tccProxyConnection.getter()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v1 = *&Strong[OBJC_IVAR____EXServiceClient_connectionLock];

  os_unfair_lock_lock(v1 + 4);
  partial apply for closure #1 in closure #3 in _EXServiceClient.tccProxyConnection.getter();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t _EXServiceClient.photoServiceAuthorizationStatus(for:)()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  v1 = _EXServiceClient.tccProxyConnection.getter();
  v14 = partial apply for closure #1 in _EXServiceClient.photoServiceAuthorizationStatus(for:);
  v15 = v0;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  v13 = &block_descriptor_156;
  v2 = _Block_copy(&v10);

  v3 = [v1 remoteObjectProxyWithErrorHandler_];
  _Block_release(v2);

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation19_EXTCCProxyProtocol_pMd, _s19ExtensionFoundation19_EXTCCProxyProtocol_pMR);
  swift_dynamicCast();
  v4 = v16;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v14 = partial apply for closure #2 in _EXServiceClient.photoServiceAuthorizationStatus(for:);
  v15 = v0;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = thunk for @escaping @callee_guaranteed (@unowned Bool, @guaranteed Error?) -> ();
  v13 = &block_descriptor_159;
  v6 = _Block_copy(&v10);

  [v4 photoServiceAuthorizationStatusForExtensionUUID:isa completion:v6];
  _Block_release(v6);

  swift_beginAccess();
  v7 = *(v0 + 16);
  if (v7)
  {
    v8 = *(v0 + 16);
    swift_willThrow();
    v7;
  }

  return swift_unknownObjectRelease();
}

void closure #1 in _EXServiceClient.launch(with:)(void *a1, uint64_t a2, void *a3, uint64_t a4, const char *a5)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, a4);
  v10 = a1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138543362;
    v15 = a1;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v16;
    *v14 = v16;
    _os_log_impl(&dword_1847D1000, v11, v12, a5, v13, 0xCu);
    outlined destroy of NSObject?(v14, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
    MEMORY[0x1865F56C0](v14, -1, -1);
    MEMORY[0x1865F56C0](v13, -1, -1);
  }

  v17 = _convertErrorToNSError(_:)();
  swift_beginAccess();
  v18 = *(a2 + 16);
  *(a2 + 16) = v17;
}

void closure #2 in _EXServiceClient.photoServiceAuthorizationStatus(for:)(char a1, id a2, uint64_t a3)
{
  if (a2)
  {
    v6 = a2;
    v7 = _convertErrorToNSError(_:)();

    swift_beginAccess();
    v8 = *(a3 + 16);
    *(a3 + 16) = v7;
  }

  if ((a1 & 1) == 0)
  {
    v9 = objc_opt_self();
    v10 = MEMORY[0x1865F36D0](0xD000000000000020, 0x80000001848C3BE0);
    v11 = [v9 _EX_errorWithCode_description_];

    swift_beginAccess();
    v12 = *(a3 + 16);
    *(a3 + 16) = v11;
  }
}

void thunk for @escaping @callee_guaranteed (@unowned Bool, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t partial apply for closure #1 in _EXServiceClient.makeSequence(for:host:)(uint64_t a1)
{
  if (*(v1 + 25))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 | *(v1 + 24);
  if (*(v1 + 26))
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  if (*(v1 + 27))
  {
    v5 = 0x1000000;
  }

  else
  {
    v5 = 0;
  }

  return closure #1 in _EXServiceClient.makeSequence(for:host:)(a1, *(v1 + 16), v3 | v4 | v5, *(v1 + 28), *(v1 + 36), *(v1 + 44), *(v1 + 52), *(v1 + 64));
}

void partial apply for closure #1 in closure #1 in _EXServiceClient.makeSequence(for:host:)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  _EXServiceClient.removeObserver(_:)(v1);
}

void partial apply for closure #1 in closure #3 in _EXServiceClient.observerConnection.getter()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v1 = *&Strong[OBJC_IVAR____EXServiceClient__observerConnection];
  *&Strong[OBJC_IVAR____EXServiceClient__observerConnection] = 0;
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
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v14 = Hasher._finalize()();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

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
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
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
    v31 = v2;
    v32 = v4;
    do
    {
      v11 = *(v2 + 40);
      v33 = 16 * v6;
      v12 = *(v2 + 48) + 16 * v6;
      v13 = *v12;
      v14 = v3;
      v15 = *(v12 + 8);
      v16 = *(v12 + 9);
      v17 = *(v12 + 10);
      v18 = *(v12 + 11);
      Hasher.init(_seed:)();

      specialized Set.hash(into:)(v34, v13);
      v19 = v15;
      v3 = v14;
      Hasher._combine(_:)(v19);
      Hasher._combine(_:)(v16);
      Hasher._combine(_:)(v17);
      Hasher._combine(_:)(v18);
      v20 = Hasher._finalize()();

      v21 = v20 & v7;
      if (v14 >= v8)
      {
        if (v21 < v8)
        {
          v2 = v31;
          v4 = v32;
        }

        else
        {
          v2 = v31;
          v4 = v32;
          if (v3 >= v21)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
        v2 = v31;
        v4 = v32;
        if (v21 >= v8 || v3 >= v21)
        {
LABEL_11:
          v22 = *(v2 + 48);
          v23 = (v22 + 16 * v3);
          v24 = (v22 + v33);
          if (16 * v3 != v33 || v23 >= v24 + 1)
          {
            *v23 = *v24;
          }

          v25 = *(v2 + 56);
          v26 = v25 + 40 * v3;
          v27 = (v25 + 40 * v6);
          if (v3 != v6 || v26 >= v27 + 40)
          {
            v9 = *v27;
            v10 = v27[1];
            *(v26 + 32) = *(v27 + 4);
            *v26 = v9;
            *(v26 + 16) = v10;
            v3 = v6;
          }
        }
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v28 = *(v2 + 16);
  v29 = __OFSUB__(v28, 1);
  v30 = v28 - 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v30;
    ++*(v2 + 36);
  }

  return result;
}

void specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = NSObject._rawHashValue(seed:)(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

unint64_t specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2)
{
  v43 = type metadata accessor for UUID();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x1EEE9AC00](v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = _HashTable.previousHole(before:)();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 8 * a1);
          v33 = (v31 + 8 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x1EEE9AC00](v4);
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
      _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
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
          v29 = *(*(type metadata accessor for _EXNSExtensionShim.Implementation.Request() - 8) + 72);
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

uint64_t outlined consume of Set<_EXServiceClient.ActiveClientQuery>.Index?(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return outlined consume of Set<AppExtensionPoint>.Index._Variant(result, a2, a3 & 1);
  }

  return result;
}

unint64_t *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo20_EXExtensionIdentityCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab12VKXEfU_So20_iJ5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n092_s19ExtensionFoundation16_EXServiceClientC6result4withAA14_EXQueryResultCAA01_G0C_tFyAGSg_s5s12_pSgtcfU0_Sbq1_iJ6CXEfU_So11NSPredicateCTf1nnc_nTm(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = a4;
    v9 = specialized closure #1 in _NativeSet.filter(_:)(v7, a2, a3, v8);

    return v9;
  }

  return result;
}

uint64_t specialized Set.formUnion<A>(_:)(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result + 32;
    do
    {
      outlined init with copy of AppExtensionIdentity(v2, v3);
      specialized Set._Variant.insert(_:)(v4, v3);
      result = outlined destroy of AppExtensionIdentity(v4);
      v2 += 40;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t specialized _EXServiceClient.ActiveClientQuery.listener(_:shouldAcceptNewConnection:)(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
  }

  else
  {
    [a1 setExportedObject_];
    if (one-time initialization token for queryResultsInterface != -1)
    {
      swift_once();
    }

    [a1 setExportedInterface_];
    v4 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v13 = partial apply for closure #1 in _EXServiceClient.ActiveClientQuery.listener(_:shouldAcceptNewConnection:);
    v14 = v4;
    v9 = MEMORY[0x1E69E9820];
    v10 = 1107296256;
    v11 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v12 = &block_descriptor_201;
    v5 = _Block_copy(&v9);

    [a1 setInterruptionHandler_];
    _Block_release(v5);
    v6 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v13 = partial apply for closure #2 in _EXServiceClient.ActiveClientQuery.listener(_:shouldAcceptNewConnection:);
    v14 = v6;
    v9 = MEMORY[0x1E69E9820];
    v10 = 1107296256;
    v11 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v12 = &block_descriptor_205;
    v7 = _Block_copy(&v9);

    [a1 setInvalidationHandler_];
    _Block_release(v7);
    swift_unknownObjectWeakAssign();
    [a1 activate];
  }

  return 1;
}

uint64_t specialized _EXServiceClient.ActiveClientQuery.query(_:resultDidUpdate:reply:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (one-time initialization token for discovery != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.discovery);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138543362;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&dword_1847D1000, v10, v11, "Remote query change notification %{public}@", v12, 0xCu);
    outlined destroy of NSObject?(v13, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
    MEMORY[0x1865F56C0](v13, -1, -1);
    MEMORY[0x1865F56C0](v12, -1, -1);
  }

  (*(a4 + 16))(a4);
  v15 = *(a3 + OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClientP33_591406279EDD09BF7033B88E7B83DCFD17ActiveClientQuery__observers);
  swift_beginAccess();
  v16 = *(v15 + 16);

  active = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShys11AnyHashableVG_19ExtensionFoundation24_EXServiceClientObserver_ps5NeverOTg504_s19f13Foundation16_hi66C06ActiveD5Query33_591406279EDD09BF7033B88E7B83DCFDLLC07ServiceD11j41SetC10allObjectsSayAA01_cdN0_pGvgAaJ_ps11dE6VXEfU_Tf1cn_n(v17);

  v19 = *(active + 16);
  if (v19)
  {
    v20 = active + 32;
    do
    {
      outlined init with copy of _InnerAppExtensionIdentity(v20, v24);
      v21 = v25;
      v22 = v26;
      __swift_project_boxed_opaque_existential_1(v24, v25);
      (*(v22 + 16))(v9, a2, v21, v22);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      v20 += 40;
      --v19;
    }

    while (v19);
  }
}

unint64_t *specialized closure #1 in _NativeSet.filter(_:)(unint64_t *result, uint64_t a2, uint64_t a3, id a4)
{
  v18 = a2;
  v19 = result;
  v6 = 0;
  v7 = 0;
  v8 = a3 + 56;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 56);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_11:
    v16 = v13 | (v7 << 6);
    result = [a4 evaluateWithObject_];
    if (result)
    {
      *(v19 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v6++, 1))
      {
        __break(1u);
LABEL_15:

        return specialized _NativeSet.extractSubset(using:count:)(v19, v18, v6, a3);
      }
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_15;
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized _NativeSet.filter(_:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v29 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = a2;
  v10 = v9;
  if (v6 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v26 = v7;
    v27 = v3;
    v25[1] = v25;
    MEMORY[0x1EEE9AC00](v9);
    v11 = v25 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v11, v8);
    v28 = 0;
    v12 = 0;
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v3 = v14 & *(a1 + 56);
    v15 = (v13 + 63) >> 6;
    v7 = &selRef_setService_;
    while (v3)
    {
      v16 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
LABEL_12:
      v8 = v16 | (v12 << 6);
      if ([v10 evaluateWithObject_])
      {
        *&v11[(v8 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v8;
        if (__OFADD__(v28++, 1))
        {
          __break(1u);
LABEL_16:
          v20 = specialized _NativeSet.extractSubset(using:count:)(v11, v26, v28, a1);

          goto LABEL_17;
        }
      }
    }

    v17 = v12;
    while (1)
    {
      v12 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v12 >= v15)
      {
        goto LABEL_16;
      }

      v18 = *(a1 + 56 + 8 * v12);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v3 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v23 = swift_slowAlloc();
  v24 = v10;
  v20 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo20_EXExtensionIdentityCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab12VKXEfU_So20_iJ5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n092_s19ExtensionFoundation16_EXServiceClientC6result4withAA14_EXQueryResultCAA01_G0C_tFyAGSg_s5s12_pSgtcfU0_Sbq1_iJ6CXEfU_So11NSPredicateCTf1nnc_nTm(v23, v7, a1, v24);

  MEMORY[0x1865F56C0](v23, -1, -1);

LABEL_17:
  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

Swift::Int specialized Set._Variant.filter(_:)(uint64_t a1, void *a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return specialized _NativeSet.filter(_:)(a1, a2);
  }

  v2 = MEMORY[0x1E69E7CD0];
  v16 = MEMORY[0x1E69E7CD0];
  v3 = a2;
  __CocoaSet.makeIterator()();
  if (__CocoaSet.Iterator.next()())
  {
    type metadata accessor for _EXExtensionIdentity();
    v2 = MEMORY[0x1E69E7CD0];
    do
    {
      swift_dynamicCast();
      if ([v3 evaluateWithObject_])
      {
        v4 = *(v2 + 16);
        if (*(v2 + 24) <= v4)
        {
          specialized _NativeSet.resize(capacity:)(v4 + 1);
        }

        v2 = v16;
        result = NSObject._rawHashValue(seed:)(*(v16 + 40));
        v6 = v16 + 56;
        v7 = -1 << *(v16 + 32);
        v8 = result & ~v7;
        v9 = v8 >> 6;
        if (((-1 << v8) & ~*(v16 + 56 + 8 * (v8 >> 6))) != 0)
        {
          v10 = __clz(__rbit64((-1 << v8) & ~*(v16 + 56 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v7) >> 6;
          do
          {
            if (++v9 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v9 == v12;
            if (v9 == v12)
            {
              v9 = 0;
            }

            v11 |= v13;
            v14 = *(v6 + 8 * v9);
          }

          while (v14 == -1);
          v10 = __clz(__rbit64(~v14)) + (v9 << 6);
        }

        *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
        *(*(v16 + 48) + 8 * v10) = v15;
        ++*(v16 + 16);
      }

      else
      {
      }
    }

    while (__CocoaSet.Iterator.next()());
  }

  return v2;
}

void partial apply for closure #1 in closure #3 in _EXServiceClient.discoveryConnection.getter()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v1 = *&Strong[OBJC_IVAR____EXServiceClient__discoveryConnection];
  *&Strong[OBJC_IVAR____EXServiceClient__discoveryConnection] = 0;
}

uint64_t objectdestroy_83Tm()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void partial apply for closure #1 in closure #3 in _EXServiceClient.tccProxyConnection.getter()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v1 = *&Strong[OBJC_IVAR____EXServiceClient__tccProxyConnection];
  *&Strong[OBJC_IVAR____EXServiceClient__tccProxyConnection] = 0;
}

uint64_t specialized _EXServiceClient.Observer.listener(_:shouldAcceptNewConnection:)(void *a1)
{
  v3 = OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClient8Observer_connection;
  [*(v1 + OBJC_IVAR____TtCC19ExtensionFoundation16_EXServiceClient8Observer_connection) invalidate];
  [a1 setExportedObject_];
  if (one-time initialization token for observerUpdateInterface != -1)
  {
    swift_once();
  }

  [a1 setExportedInterface_];
  v4 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v15 = partial apply for closure #1 in _EXServiceClient.Observer.listener(_:shouldAcceptNewConnection:);
  v16 = v4;
  v11 = MEMORY[0x1E69E9820];
  v12 = 1107296256;
  v13 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v14 = &block_descriptor_191;
  v5 = _Block_copy(&v11);

  [a1 setInterruptionHandler_];
  _Block_release(v5);
  v6 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v15 = partial apply for closure #2 in _EXServiceClient.Observer.listener(_:shouldAcceptNewConnection:);
  v16 = v6;
  v11 = MEMORY[0x1E69E9820];
  v12 = 1107296256;
  v13 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v14 = &block_descriptor_195;
  v7 = _Block_copy(&v11);

  [a1 setInvalidationHandler_];
  _Block_release(v7);
  v8 = *(v1 + v3);
  *(v1 + v3) = a1;
  v9 = a1;

  [v9 activate];
  return 1;
}

void specialized _EXServiceClient.Observer.observer(_:reply:)(uint64_t a1, unint64_t a2, void (**a3)(void))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationV11YieldResultOy19ExtensionFoundation03AppD5PointV7MonitorC5StateVs5Error_p__GMd, &_sScs12ContinuationV11YieldResultOy19ExtensionFoundation03AppD5PointV7MonitorC5StateVs5Error_p__GMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v23 - v9;
  v11 = *(a1 + OBJC_IVAR___ObserverUpdate__identities);
  v28 = a1;
  if (v11 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v13 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
LABEL_16:
      v21 = *(v28 + OBJC_IVAR___ObserverUpdate__unelectedCount);
      v22 = *(v28 + OBJC_IVAR___ObserverUpdate__disabledCount);
      *&v32 = v13;
      *(&v32 + 1) = v21;
      *&v33 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVy19ExtensionFoundation03AppB5PointV7MonitorC5StateVs5Error_p_GMd, &_sScs12ContinuationVy19ExtensionFoundation03AppB5PointV7MonitorC5StateVs5Error_p_GMR);
      AsyncThrowingStream.Continuation.yield(_:)();
      (*(v7 + 8))(v10, v6);
      a3[2](a3);
      return;
    }

    v35 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v23 = v10;
    v24 = v7;
    v25 = v6;
    v26 = a2;
    v27 = a3;
    v7 = 0;
    v13 = v35;
    a2 = v11 & 0xC000000000000001;
    v29 = v11 & 0xFFFFFFFFFFFFFF8;
    a3 = &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR;
    while (1)
    {
      v10 = (v7 + 1);
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (a2)
      {
        v14 = MEMORY[0x1865F3F40](v7, v11);
      }

      else
      {
        if (v7 >= *(v29 + 16))
        {
          goto LABEL_18;
        }

        v14 = *(v11 + 8 * v7 + 32);
      }

      v15 = v14;
      v16 = OBJC_IVAR____EXExtensionIdentity__inner;
      swift_beginAccess();
      outlined init with copy of UUID?(v15 + v16, &v30, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
      if (!v31)
      {
        goto LABEL_21;
      }

      outlined init with take of _InnerAppExtensionIdentity(&v30, &v32);
      v35 = v13;
      v6 = *(v13 + 16);
      v17 = *(v13 + 24);
      if (v6 >= v17 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v6 + 1, 1);
        v13 = v35;
      }

      *(v13 + 16) = v6 + 1;
      v18 = v13 + 40 * v6;
      v19 = v32;
      v20 = v33;
      *(v18 + 64) = v34;
      *(v18 + 32) = v19;
      *(v18 + 48) = v20;
      ++v7;
      if (v10 == i)
      {
        a3 = v27;
        v7 = v24;
        v6 = v25;
        v10 = v23;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  __break(1u);
LABEL_21:
  _Block_release(v27);
  __break(1u);
}

void partial apply for closure #1 in closure #3 in _EXServiceClient.launchConnection.getter()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v1 = *&Strong[OBJC_IVAR____EXServiceClient__launchConnection];
  *&Strong[OBJC_IVAR____EXServiceClient__launchConnection] = 0;
}

uint64_t closure #2 in _EXQueryController.init(queries:delegate:)(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = objc_opt_self();
    [v4 queryControllerDelegate:swift_unknownObjectWeakLoadStrong() didUpdateController:v3 enabledCount:*(a1 + OBJC_IVAR____EXExtensionAvailability_enabledCount) disabledCount:*(a1 + OBJC_IVAR____EXExtensionAvailability_disabledCount) unelectedCount:*(a1 + OBJC_IVAR____EXExtensionAvailability_unelectedCount)];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t _EXQueryController.description.getter()
{
  v1 = [*(v0 + OBJC_IVAR____EXQueryController_innerController) description];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t _EXQueryController.extensions.getter()
{
  v1 = *(v0 + OBJC_IVAR____EXQueryController_innerController);
  v2 = OBJC_IVAR____TtC19ExtensionFoundation15QueryController_extensionsLock;
  v3 = *(v1 + OBJC_IVAR____TtC19ExtensionFoundation15QueryController_extensionsLock);

  os_unfair_lock_lock(v3 + 4);

  if (*(v1 + OBJC_IVAR____TtC19ExtensionFoundation15QueryController__internalExtensions))
  {
    v4 = *(v1 + OBJC_IVAR____TtC19ExtensionFoundation15QueryController__internalExtensions);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CD0];
  }

  v5 = *(v1 + v2);

  os_unfair_lock_unlock(v5 + 4);

  v6 = specialized _copyCollectionToContiguousArray<A>(_:)(v4);

  if (v6 < 0 || (v6 & 0x4000000000000000) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24_EXExtensionRepresenting_pMd, &_sSo24_EXExtensionRepresenting_pMR);
    v7 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    v7 = v6;
  }

  return v7;
}

id _EXQueryController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id _EXQueryController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _EXQueryController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance LSExtensionPointType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LSExtensionPointType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance _EXExtensionProcessIdentity.JobConfiguration.CodingKeys()
{
  v1 = *v0;
  v2 = 0x53616E6F73726570;
  if (v1 == 3)
  {
    v2 = 0xD000000000000014;
  }

  if (v1 == 2)
  {
    v2 = 0xD000000000000012;
  }

  v3 = 0xD00000000000001ELL;
  if (!*v0)
  {
    v3 = 0xD000000000000016;
  }

  if (*v0 <= 1u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance _EXExtensionProcessIdentity.JobConfiguration.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized _EXExtensionProcessIdentity.JobConfiguration.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance _EXExtensionProcessIdentity.JobConfiguration.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type _EXExtensionProcessIdentity.JobConfiguration.CodingKeys and conformance _EXExtensionProcessIdentity.JobConfiguration.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance _EXExtensionProcessIdentity.JobConfiguration.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type _EXExtensionProcessIdentity.JobConfiguration.CodingKeys and conformance _EXExtensionProcessIdentity.JobConfiguration.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t _EXExtensionProcessIdentity.JobConfiguration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationV10CodingKeys33_D2FCF0381CAFFB8CF6AB845243C2FE04LLOGMd, &_ss22KeyedEncodingContainerVy19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationV10CodingKeys33_D2FCF0381CAFFB8CF6AB845243C2FE04LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type _EXExtensionProcessIdentity.JobConfiguration.CodingKeys and conformance _EXExtensionProcessIdentity.JobConfiguration.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v20) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v20 = v3[2];
    HIBYTE(v19) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v20 = v3[3];
    HIBYTE(v19) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v13 = type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration(0);
    v14 = *(v13 + 28);
    LOBYTE(v20) = 3;
    type metadata accessor for NWApplicationID();
    lazy protocol witness table accessor for type _EXExtensionProcessIdentity.Inner and conformance _EXExtensionProcessIdentity.Inner(&lazy protocol witness table cache variable for type NWApplicationID and conformance NWApplicationID, MEMORY[0x1E6977CA8]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v15 = (v3 + *(v13 + 32));
    v16 = *v15;
    v17 = v15[1];
    LOBYTE(v20) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

void _EXExtensionProcessIdentity.JobConfiguration.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for NWApplicationID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v22 - v11;
  if (v1[1])
  {
    v13 = *v1;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  specialized Dictionary<>.hash(into:)(a1, v1[2]);
  v14 = v1[3];
  if (v14)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865F42C0](*(v14 + 16));
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = (v14 + 40);
      do
      {
        v17 = *(v16 - 1);
        v18 = *v16;

        String.hash(into:)();

        v16 += 2;
        --v15;
      }

      while (v15);
    }
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v19 = type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration(0);
  outlined init with copy of UUID?(v2 + *(v19 + 28), v12, &_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    Hasher._combine(_:)(1u);
    NWApplicationID.hash(into:)();
    (*(v5 + 8))(v8, v4);
  }

  v20 = (v2 + *(v19 + 32));
  if (v20[1])
  {
    v21 = *v20;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

uint64_t _EXExtensionProcessIdentity.JobConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v38 = &v33 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationV10CodingKeys33_D2FCF0381CAFFB8CF6AB845243C2FE04LLOGMd, &_ss22KeyedDecodingContainerVy19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationV10CodingKeys33_D2FCF0381CAFFB8CF6AB845243C2FE04LLOGMR);
  v39 = *(v6 - 8);
  v40 = v6;
  v7 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v33 - v8;
  v10 = type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration(0);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v14 + 2) = v15;
  *(v14 + 3) = 0;
  v16 = *(v11 + 36);
  v17 = type metadata accessor for NWApplicationID();
  (*(*(v17 - 8) + 56))(&v14[v16], 1, 1, v17);
  v18 = *(v11 + 40);
  v42 = v14;
  v43 = a1;
  v19 = &v14[v18];
  *v19 = 0;
  v19[1] = 0;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type _EXExtensionProcessIdentity.JobConfiguration.CodingKeys and conformance _EXExtensionProcessIdentity.JobConfiguration.CodingKeys();
  v21 = v41;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v21)
  {
    v22 = v42;
  }

  else
  {
    v41 = v15;
    v35 = v16;
    v36 = v17;
    v34 = v19;
    v24 = v39;
    v23 = v40;
    LOBYTE(v45) = 0;
    v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v22 = v42;
    *v42 = v25;
    v22[1] = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    v44 = 1;
    lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();

    v22[2] = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v44 = 2;
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v22[3] = v45;
    LOBYTE(v45) = 3;
    lazy protocol witness table accessor for type _EXExtensionProcessIdentity.Inner and conformance _EXExtensionProcessIdentity.Inner(&lazy protocol witness table cache variable for type NWApplicationID and conformance NWApplicationID, MEMORY[0x1E6977CA8]);
    v27 = v38;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined assign with take of AppExtensionIdentity?(v27, v22 + v35, &_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
    LOBYTE(v45) = 4;
    v29 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v31 = v30;
    (*(v24 + 8))(v9, v23);
    v32 = v34;
    *v34 = v29;
    v32[1] = v31;
    outlined init with copy of _EXExtensionProcessIdentity.Inner(v22, v37, type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v43);
  return outlined destroy of _EXExtensionProcessIdentity.Inner(v22, type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration);
}

uint64_t _EXExtensionProcessIdentity.Inner.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19ExtensionFoundation27_EXExtensionProcessIdentityC5InnerV10CodingKeys33_D2FCF0381CAFFB8CF6AB845243C2FE04LLOGMd, &_ss22KeyedEncodingContainerVy19ExtensionFoundation27_EXExtensionProcessIdentityC5InnerV10CodingKeys33_D2FCF0381CAFFB8CF6AB845243C2FE04LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type _EXExtensionProcessIdentity.Inner.CodingKeys and conformance _EXExtensionProcessIdentity.Inner.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v23 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v22 = *(v3 + 4);
    v21[7] = 1;
    type metadata accessor for LSExtensionPointType(0);
    lazy protocol witness table accessor for type _EXExtensionProcessIdentity.Inner and conformance _EXExtensionProcessIdentity.Inner(&lazy protocol witness table cache variable for type LSExtensionPointType and conformance LSExtensionPointType, type metadata accessor for LSExtensionPointType);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = v3[3];
    v14 = v3[4];
    v21[6] = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = v3[5];
    v16 = v3[6];
    v21[5] = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v17 = type metadata accessor for _EXExtensionProcessIdentity.Inner(0);
    v18 = *(v17 + 32);
    v21[4] = 4;
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type _EXExtensionProcessIdentity.Inner and conformance _EXExtensionProcessIdentity.Inner(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v19 = *(v17 + 36);
    v21[3] = 5;
    type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration(0);
    lazy protocol witness table accessor for type _EXExtensionProcessIdentity.Inner and conformance _EXExtensionProcessIdentity.Inner(&lazy protocol witness table cache variable for type _EXExtensionProcessIdentity.JobConfiguration and conformance _EXExtensionProcessIdentity.JobConfiguration, type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

void _EXExtensionProcessIdentity.Inner.hash(into:)(__int128 *a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v18 - v10;
  v12 = *v1;
  v13 = v1[1];
  String.hash(into:)();
  Hasher._combine(_:)(*(v1 + 4));
  if (v1[4])
  {
    v14 = v1[3];
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v1[6])
    {
LABEL_3:
      v15 = v1[5];
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_6;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v1[6])
    {
      goto LABEL_3;
    }
  }

  Hasher._combine(_:)(0);
LABEL_6:
  v16 = type metadata accessor for _EXExtensionProcessIdentity.Inner(0);
  outlined init with copy of UUID?(v1 + *(v16 + 32), v11, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if ((*(v4 + 48))(v11, 1, v3) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v4 + 32))(v7, v11, v3);
    Hasher._combine(_:)(1u);
    lazy protocol witness table accessor for type _EXExtensionProcessIdentity.Inner and conformance _EXExtensionProcessIdentity.Inner(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v4 + 8))(v7, v3);
  }

  v17 = v1 + *(v16 + 36);
  specialized Optional<A>.hash(into:)(a1);
}

uint64_t _EXExtensionProcessIdentity.Inner.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v40 = v38 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19ExtensionFoundation27_EXExtensionProcessIdentityC5InnerV10CodingKeys33_D2FCF0381CAFFB8CF6AB845243C2FE04LLOGMd, &_ss22KeyedDecodingContainerVy19ExtensionFoundation27_EXExtensionProcessIdentityC5InnerV10CodingKeys33_D2FCF0381CAFFB8CF6AB845243C2FE04LLOGMR);
  v41 = *(v10 - 8);
  v42 = v10;
  v11 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v38 - v12;
  v14 = type metadata accessor for _EXExtensionProcessIdentity.Inner(0);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v15 + 40);
  v20 = type metadata accessor for UUID();
  v21 = *(*(v20 - 8) + 56);
  v47 = v19;
  v21(&v18[v19], 1, 1, v20);
  v22 = *(v15 + 44);
  v23 = type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration(0);
  v24 = *(*(v23 - 8) + 56);
  v46 = v22;
  v25 = v18;
  v24(&v18[v22], 1, 1, v23);
  v27 = a1[3];
  v26 = a1[4];
  v45 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v27);
  lazy protocol witness table accessor for type _EXExtensionProcessIdentity.Inner.CodingKeys and conformance _EXExtensionProcessIdentity.Inner.CodingKeys();
  v43 = v13;
  v28 = v44;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v28)
  {
    v31 = v47;
    __swift_destroy_boxed_opaque_existential_0Tm(v45);
    outlined destroy of NSObject?(v25 + v31, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    return outlined destroy of NSObject?(v25 + v46, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
  }

  else
  {
    v30 = v41;
    v29 = v42;
    v54 = 0;
    *v25 = KeyedDecodingContainer.decode(_:forKey:)();
    *(v25 + 8) = v32;
    type metadata accessor for LSExtensionPointType(0);
    v53 = 1;
    lazy protocol witness table accessor for type _EXExtensionProcessIdentity.Inner and conformance _EXExtensionProcessIdentity.Inner(&lazy protocol witness table cache variable for type LSExtensionPointType and conformance LSExtensionPointType, type metadata accessor for LSExtensionPointType);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v25 + 16) = v50;
    v52 = 2;
    *(v25 + 24) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v25 + 32) = v33;
    v44 = v33;
    v51 = 3;
    *(v25 + 40) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v25 + 48) = v34;
    v38[1] = v34;
    v49 = 4;
    lazy protocol witness table accessor for type _EXExtensionProcessIdentity.Inner and conformance _EXExtensionProcessIdentity.Inner(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined assign with take of AppExtensionIdentity?(v9, v25 + v47, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v48 = 5;
    lazy protocol witness table accessor for type _EXExtensionProcessIdentity.Inner and conformance _EXExtensionProcessIdentity.Inner(&lazy protocol witness table cache variable for type _EXExtensionProcessIdentity.JobConfiguration and conformance _EXExtensionProcessIdentity.JobConfiguration, type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration);
    v35 = v40;
    v36 = v43;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v30 + 8))(v36, v29);
    outlined assign with take of AppExtensionIdentity?(v35, v25 + v46, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
    outlined init with copy of _EXExtensionProcessIdentity.Inner(v25, v39, type metadata accessor for _EXExtensionProcessIdentity.Inner);
    __swift_destroy_boxed_opaque_existential_0Tm(v45);
    return outlined destroy of _EXExtensionProcessIdentity.Inner(v25, type metadata accessor for _EXExtensionProcessIdentity.Inner);
  }
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance _EXExtensionProcessIdentity.Inner.CodingKeys()
{
  v1 = *v0;
  v2 = 0x65644970756F7267;
  v3 = 0x65636E6174736E69;
  if (v1 != 4)
  {
    v3 = 0xD000000000000010;
  }

  if (v1 != 3)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000012;
  if (v1 != 1)
  {
    v4 = 0xD000000000000010;
  }

  if (!*v0)
  {
    v4 = 0xD000000000000018;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance _EXExtensionProcessIdentity.Inner.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized _EXExtensionProcessIdentity.Inner.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance _EXExtensionProcessIdentity.Inner.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type _EXExtensionProcessIdentity.Inner.CodingKeys and conformance _EXExtensionProcessIdentity.Inner.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance _EXExtensionProcessIdentity.Inner.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type _EXExtensionProcessIdentity.Inner.CodingKeys and conformance _EXExtensionProcessIdentity.Inner.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id _EXExtensionProcessIdentity.init(identity:instanceUUID:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a3;
  v32 = a2;
  v4 = type metadata accessor for _EXExtensionProcessIdentity.Inner(0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v9 = *(a1 + 8);
  v30 = *(a1 + 16);
  v31 = v9;
  v11 = [v10 identifier];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15 = [v10 extensionPointType];
  v16 = *(v5 + 44);
  v17 = type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration(0);
  v18 = *(*(v17 - 8) + 56);
  v18(&v8[v16], 1, 1, v17);
  v19 = *(v5 + 40);
  v20 = type metadata accessor for UUID();
  (*(*(v20 - 8) + 56))(&v8[v19], 1, 1, v20);
  *v8 = v12;
  *(v8 + 1) = v14;
  *(v8 + 4) = v15;
  *(v8 + 3) = 0;
  *(v8 + 4) = 0;

  v21 = v30;
  *(v8 + 5) = v31;
  *(v8 + 6) = v21;
  v22 = &v8[v19];
  v23 = v32;
  outlined assign with copy of UUID?(v32, v22);
  outlined destroy of NSObject?(&v8[v16], &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
  v24 = v33;
  outlined init with copy of _EXExtensionProcessIdentity.Inner(v33, &v8[v16], type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration);
  v18(&v8[v16], 0, 1, v17);
  v25 = v34;
  outlined init with take of _EXExtensionProcessIdentity.Inner(v8, v34 + OBJC_IVAR____TtC19ExtensionFoundation27_EXExtensionProcessIdentity_inner, type metadata accessor for _EXExtensionProcessIdentity.Inner);
  v26 = type metadata accessor for _EXExtensionProcessIdentity(0);
  v35.receiver = v25;
  v35.super_class = v26;
  v27 = objc_msgSendSuper2(&v35, sel_init);
  outlined destroy of _EXExtensionProcessIdentity.Inner(v24, type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration);
  outlined destroy of NSObject?(v23, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  return v27;
}

uint64_t _EXExtensionProcessIdentity.isEqual(_:)(uint64_t a1)
{
  outlined init with copy of UUID?(a1, v5, &_sypSgMd, &_sypSgMR);
  if (!v6)
  {
    outlined destroy of NSObject?(v5, &_sypSgMd, &_sypSgMR);
    goto LABEL_5;
  }

  type metadata accessor for _EXExtensionProcessIdentity(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v2 = 0;
    return v2 & 1;
  }

  v2 = specialized static _EXExtensionProcessIdentity.Inner.== infix(_:_:)((v1 + OBJC_IVAR____TtC19ExtensionFoundation27_EXExtensionProcessIdentity_inner), &v4[OBJC_IVAR____TtC19ExtensionFoundation27_EXExtensionProcessIdentity_inner]);

  return v2 & 1;
}

id _EXExtensionProcessIdentity.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _EXExtensionProcessIdentity(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

objc_class *static _EXExtensionIdentity.identity(fromDataRepresentation:)(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for _EXExtensionProcessIdentity.Inner(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for _EXExtensionProcessIdentity(0);
  v10 = objc_allocWithZone(v9);
  v11 = type metadata accessor for JSONDecoder();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  outlined copy of Data._Representation(a1, a2);
  JSONDecoder.init()();
  lazy protocol witness table accessor for type _EXExtensionProcessIdentity.Inner and conformance _EXExtensionProcessIdentity.Inner(&lazy protocol witness table cache variable for type _EXExtensionProcessIdentity.Inner and conformance _EXExtensionProcessIdentity.Inner, type metadata accessor for _EXExtensionProcessIdentity.Inner);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (v2)
  {
    outlined consume of Data._Representation(a1, a2);
    v14 = *((*MEMORY[0x1E69E7D40] & *v10) + 0x30);
    v15 = *((*MEMORY[0x1E69E7D40] & *v10) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    outlined init with take of _EXExtensionProcessIdentity.Inner(v8, v10 + OBJC_IVAR____TtC19ExtensionFoundation27_EXExtensionProcessIdentity_inner, type metadata accessor for _EXExtensionProcessIdentity.Inner);
    v17.receiver = v10;
    v17.super_class = v9;
    v9 = objc_msgSendSuper2(&v17, sel_init);
    outlined consume of Data._Representation(a1, a2);
  }

  return v9;
}

void *_EXExtensionProcessIdentity.launchdJobDescriptor(for:)(void *a1)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v118 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v121 = &v118 - v11;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 1);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v118 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for _EXExtensionProcessIdentity.JobDescriptor(0);
  v17 = *(*(v122 - 1) + 64);
  MEMORY[0x1EEE9AC00](v122);
  v19 = (&v118 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = [a1 hostIdentifier];
  if (v20)
  {
    v21 = v20;
    v22 = [a1 hostIdentity];
    if (v22)
    {
      v23 = v22;
      v120 = v8;
      v118 = v1;
      type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for RBSProcessHandle, 0x1E69C75D0);
      v24 = v21;
      v25 = specialized @nonobjc RBSProcessHandle.__allocating_init(for:)(v24);
      v26 = v24;
      if (!v2)
      {
        v21 = v25;
        v119 = 0;

        type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
        v27 = [v21 identity];
        v28 = static NSObject.== infix(_:_:)();

        if (v28)
        {

          v1 = v118;
          v3 = v119;
          v8 = v120;
          goto LABEL_6;
        }

        v115 = objc_opt_self();
        v116 = MEMORY[0x1865F36D0](0xD000000000000030, 0x80000001848C4190);
        [v115 _EX_errorWithCode_description_];

        swift_willThrow();
        v26 = v21;
      }

      return v12;
    }

LABEL_6:
  }

  _EXExtensionProcessIdentity.JobDescriptor.init(_:host:)(v1, 0, v19);
  if (v3)
  {
    return v12;
  }

  v119 = 0;
  v120 = v8;
  v29 = (v19 + v122[8]);
  v30 = *v29;
  v31 = v29[1];
  URL.init(fileURLWithPath:)();
  v32 = v19[3];
  v33 = v19[4];
  __swift_project_boxed_opaque_existential_1(v19, v32);
  v34 = (*(v33 + 64))(v32, v33);
  v36 = v35;
  v37 = objc_allocWithZone(MEMORY[0x1E69C75A0]);
  URL._bridgeToObjectiveC()(v38);
  v40 = v39;
  v41 = MEMORY[0x1865F36D0](v34, v36);

  v42 = [v37 initWithExecutableURL:v40 bundleIdentifier:v41];

  (*(v13 + 8))(v16, v12);
  v12 = v42;
  _EXExtensionProcessIdentity.JobDescriptor.attributes.getter();
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for RBSAttribute, 0x1E69C7550);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v12 setAttributes_];

  _EXExtensionProcessIdentity.JobDescriptor._launchRequestEndpointIdentifiers.getter();
  v44 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v12 setLaunchRequestEndpointIdentifiers_];

  v45 = v19[3];
  v46 = v19[4];
  __swift_project_boxed_opaque_existential_1(v19, v45);
  [v12 setBackoff_];
  _EXExtensionProcessIdentity.JobDescriptor._restiction.getter();
  v47 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v12 setClientRestriction_];

  v48 = [v12 jobProperties];
  _EXExtensionProcessIdentity.JobDescriptor.programArguments.getter();
  v49 = Array._bridgeToObjectiveC()().super.isa;

  [v48 setProgramArguments_];

  v50 = [v12 jobProperties];
  v51 = _EXExtensionProcessIdentity.JobDescriptor.sandboxProfile.getter();
  if (v52)
  {
    v53 = MEMORY[0x1865F36D0](v51);
  }

  else
  {
    v53 = 0;
  }

  [v50 setSandboxProfile_];

  v54 = [v12 jobProperties];
  _EXExtensionProcessIdentity.JobDescriptor.environmentVariables.getter();
  v55 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v54 setEnvironmentVariables_];

  v56 = [v12 jobProperties];
  v57 = v19[3];
  v58 = v19[4];
  __swift_project_boxed_opaque_existential_1(v19, v57);
  [v56 setAbandonCoalition_];

  v59 = [v12 jobProperties];
  _EXExtensionProcessIdentity.JobDescriptor.additionalSubServices.getter();
  v60 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v59 setAdditionalSubServices_];

  v61 = [v12 jobProperties];
  [v61 setJoinExistingSession_];

  v62 = [v12 jobProperties];
  _EXExtensionProcessIdentity.JobDescriptor.managedByServices.getter();
  v63 = Array._bridgeToObjectiveC()().super.isa;

  [v62 setManagedByServices_];

  v64 = [v12 jobProperties];
  [v64 setOmitSandboxParameters_];

  v65 = [v12 jobProperties];
  v66 = v121;
  outlined init with copy of UUID?(v19 + v122[6], v121, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v67 = type metadata accessor for UUID();
  v68 = *(v67 - 8);
  v69 = 0;
  if ((*(v68 + 48))(v66, 1, v67) != 1)
  {
    v69 = UUID._bridgeToObjectiveC()().super.isa;
    (*(v68 + 8))(v66, v67);
  }

  [v65 setOneShotUUID_];

  v70 = [v12 &selRef_encodeBytes_length_forKey_];
  v71 = v120;
  outlined init with copy of UUID?(v19 + v122[5], v120, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
  v72 = type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration(0);
  if ((*(*(v72 - 8) + 48))(v71, 1, v72) == 1)
  {
    outlined destroy of NSObject?(v71, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
LABEL_17:
    v77 = 0;
    goto LABEL_18;
  }

  v73 = (v71 + *(v72 + 32));
  v74 = v71;
  v75 = *v73;
  v76 = v73[1];

  outlined destroy of _EXExtensionProcessIdentity.Inner(v74, type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration);
  if (!v76)
  {
    goto LABEL_17;
  }

  v77 = MEMORY[0x1865F36D0](v75, v76);

LABEL_18:
  [v70 setPersonaString_];

  v78 = [v12 &selRef_encodeBytes_length_forKey_];
  [v78 setPlatform_];

  v79 = [v12 &selRef_encodeBytes_length_forKey_];
  v80 = v19[3];
  v81 = v19[4];
  __swift_project_boxed_opaque_existential_1(v19, v80);
  v82 = (*(v81 + 96))(v80, v81);
  if (v83)
  {
    v84 = MEMORY[0x1865F36D0](v82);
  }

  else
  {
    v84 = 0;
  }

  [v79 setProcessType_];

  v85 = [v12 &selRef_encodeBytes_length_forKey_];
  v86 = v19[3];
  v87 = v19[4];
  __swift_project_boxed_opaque_existential_1(v19, v86);
  if ((*(v87 + 232))(v86, v87))
  {
    v88 = MEMORY[0x1865F36D0](0x656C69626F6DLL, 0xE600000000000000);
  }

  else
  {
    v88 = 0;
  }

  [v85 setRoleAccount_];

  v89 = [v12 &selRef_encodeBytes_length_forKey_];
  v90 = _EXExtensionProcessIdentity.JobDescriptor.runLoopType.getter();
  v91 = MEMORY[0x1865F36D0](v90);

  [v89 setRunLoopType_];

  v92 = [v12 &selRef_encodeBytes_length_forKey_];
  v93 = _EXExtensionProcessIdentity.JobDescriptor.sandboxProfile.getter();
  if (v94)
  {
    v95 = MEMORY[0x1865F36D0](v93);
  }

  else
  {
    v95 = 0;
  }

  [v92 setSandboxProfile_];

  v96 = [v12 &selRef_encodeBytes_length_forKey_];
  v97 = v19[3];
  v98 = v19[4];
  __swift_project_boxed_opaque_existential_1(v19, v97);
  v99 = (*(v98 + 232))(v97, v98);
  v100 = (v99 & 1) == 0;
  if (v99)
  {
    v101 = 0x6D6574737953;
  }

  else
  {
    v101 = 0x746163696C707041;
  }

  if (v100)
  {
    v102 = 0xEB000000006E6F69;
  }

  else
  {
    v102 = 0xE600000000000000;
  }

  v103 = MEMORY[0x1865F36D0](v101, v102);

  [v96 setServiceType_];

  v104 = [v12 &selRef_encodeBytes_length_forKey_];
  v105 = _EXExtensionProcessIdentity.JobDescriptor.uiApplicationClass.getter();
  if (v106)
  {
    v107 = MEMORY[0x1865F36D0](v105);
  }

  else
  {
    v107 = 0;
  }

  [v104 setUiApplicationClass_];

  v108 = [v12 &selRef_encodeBytes_length_forKey_];
  v109 = _EXExtensionProcessIdentity.JobDescriptor.uiApplicationDelegateClass.getter();
  if (v110)
  {
    v111 = MEMORY[0x1865F36D0](v109);
  }

  else
  {
    v111 = 0;
  }

  [v108 setUiApplicationDelegateClass_];

  v112 = [v12 &selRef_encodeBytes_length_forKey_];
  v113 = v19[3];
  v114 = v19[4];
  __swift_project_boxed_opaque_existential_1(v19, v113);
  [v112 setWatchdogTimeout_];

  outlined destroy of _EXExtensionProcessIdentity.Inner(v19, type metadata accessor for _EXExtensionProcessIdentity.JobDescriptor);
  return v12;
}

uint64_t _EXExtensionProcessIdentity.JobDescriptor.init(_:host:)@<X0>(char *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v181 = a2;
  v192 = *MEMORY[0x1E69E9840];
  v176 = type metadata accessor for URL();
  v175 = *(v176 - 8);
  v5 = *(v175 + 64);
  v6 = MEMORY[0x1EEE9AC00](v176);
  v180 = &v166 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v177 = &v166 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v166 - v11;
  v13 = type metadata accessor for NSFastEnumerationIterator();
  v179 = *(v13 - 8);
  v14 = *(v179 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v166 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for _EXExtensionProcessIdentity.JobDescriptor(0);
  v18 = (a3 + v17[9]);
  *v18 = 0;
  v18[1] = 0;
  v19 = (a3 + v17[10]);
  *v19 = 0;
  v19[1] = 0;
  v20 = (a3 + v17[11]);
  *v20 = 0;
  v20[1] = 0;
  v21 = (a3 + v17[12]);
  *v21 = 0;
  v21[1] = 0;
  *(a3 + v17[13]) = 0;
  v22 = v17[14];
  v23 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(a3 + v22) = v23;
  v24 = a1;
  *(a3 + v17[15]) = 0;
  v191 = 0;
  v189 = 0u;
  v190 = 0u;
  v25 = &a1[OBJC_IVAR____TtC19ExtensionFoundation27_EXExtensionProcessIdentity_inner];
  v26 = *&a1[OBJC_IVAR____TtC19ExtensionFoundation27_EXExtensionProcessIdentity_inner];
  v27 = *&a1[OBJC_IVAR____TtC19ExtensionFoundation27_EXExtensionProcessIdentity_inner + 8];

  v28 = v26;
  v29 = v182;
  v30 = specialized _AppExtensionPoint.init(identifier:)(v28, v27);
  if (v29)
  {

LABEL_3:
    outlined destroy of NSObject?(&v189, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);

LABEL_4:
    v32 = *MEMORY[0x1E69E9840];
    return result;
  }

  v178 = 0;
  v182 = v13;
  v170 = v25;
  v167 = v17;
  v172 = v12;
  v168 = a3;
  v33 = v30;
  v34 = _AppExtensionPoint.serviceGroupIdentifier.getter(v30);
  if (!v35)
  {
    v50 = v181;
    v51 = v23;
    if (v181)
    {
      v173 = v24;
      v52 = *(v170 + 4);
      if (!v52)
      {
        v88 = objc_opt_self();
        v89 = MEMORY[0x1865F36D0](0xD000000000000019, 0x80000001848C42D0);
        [v88 _EX_errorWithCode_description_];

        swift_willThrow();
        goto LABEL_3;
      }

      v53 = *(v170 + 3);
      v54 = objc_allocWithZone(MEMORY[0x1E69635D0]);
      swift_bridgeObjectRetain_n();
      v55 = v178;
      v56 = @nonobjc LSApplicationExtensionRecord.init(bundleIdentifier:)(v53, v52);
      if (!v55)
      {
        v178 = 0;
        *(&v187 + 1) = &type metadata for AppExtensionIdentity.RecordIdentity;
        v188 = &protocol witness table for AppExtensionIdentity.RecordIdentity;
        *&v186 = v56;
        v90 = v56;
        outlined assign with take of AppExtensionIdentity?(&v186, &v189, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
        if (!*(&v190 + 1))
        {
LABEL_86:
          __break(1u);
          goto LABEL_87;
        }

        v92 = *(&v190 + 1);
        v91 = v191;
        v93 = __swift_project_boxed_opaque_existential_1(&v189, *(&v190 + 1));
        v94 = *(v92 - 8);
        v95 = *(v94 + 64);
        MEMORY[0x1EEE9AC00](v93);
        v97 = &v166 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v94 + 16))(v97);
        v179 = _InnerAppExtensionIdentity.serviceName.getter(v92, v91);
        v99 = v98;

        v100 = v92;
        v65 = v99;
        (*(v94 + 8))(v97, v100);
        v66 = v181;
        goto LABEL_33;
      }
    }

    else
    {
      v50 = v24;
      v73 = objc_opt_self();
      *&v186 = 0;
      *(&v186 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(29);

      *&v186 = 0xD00000000000001BLL;
      *(&v186 + 1) = 0x80000001848C42B0;
      v74 = [v50 description];
      v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v77 = v76;

      MEMORY[0x1865F37A0](v75, v77);

      v78 = MEMORY[0x1865F36D0](v186, *(&v186 + 1));

      [v73 _EX_errorWithCode_description_];

      swift_willThrow();
    }

    goto LABEL_3;
  }

  v36 = v34;
  v37 = v35;
  v169 = v23;
  v173 = v24;
  v38 = objc_opt_self();
  v171 = v33;
  v39 = [v38 enumeratorWithExtensionPointRecord:v33 options:0];
  NSEnumerator.makeIterator()();

  NSFastEnumerationIterator.next()();
  if (*(&v185 + 1))
  {
    v174 = MEMORY[0x1E69E7CC0];
    v40 = v182;
    while (1)
    {
      outlined init with take of Any(&v184, &v186);
      type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for LSApplicationExtensionRecord, 0x1E69635D0);
      if (!swift_dynamicCast())
      {
        goto LABEL_88;
      }

      v41 = v183;
      v42 = specialized _InnerAppExtensionIdentity.groupIdentifier.getter(v183);
      if (!v43)
      {
        goto LABEL_8;
      }

      if (v42 == v36 && v43 == v37)
      {

LABEL_18:
        v46 = v174;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v46[2] + 1, 1, v46);
        }

        v174 = v46;
        v48 = v46[2];
        v47 = v46[3];
        if (v48 >= v47 >> 1)
        {
          v174 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1, v174);
        }

        v188 = &protocol witness table for AppExtensionIdentity.RecordIdentity;
        *(&v187 + 1) = &type metadata for AppExtensionIdentity.RecordIdentity;
        *&v186 = v41;
        v49 = &v174[5 * v48];
        v174[2] = v48 + 1;
        outlined init with take of _InnerAppExtensionIdentity(&v186, (v49 + 4));
        NSFastEnumerationIterator.next()();
        v40 = v182;
        if (!*(&v185 + 1))
        {
          goto LABEL_29;
        }
      }

      else
      {
        v45 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v40 = v182;

        if (v45)
        {
          goto LABEL_18;
        }

LABEL_8:

        NSFastEnumerationIterator.next()();
        if (!*(&v185 + 1))
        {
          goto LABEL_29;
        }
      }
    }
  }

  v174 = MEMORY[0x1E69E7CC0];
  v40 = v182;
LABEL_29:
  (*(v179 + 8))(v16, v40);
  v57 = v174;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v57 = specialized _ArrayBuffer._consumeAndCreateNew()(v57);
  }

  v51 = v169;
  v33 = v171;
  v58 = v178;
  v59 = v180;
  v60 = v57[2];
  *&v186 = v57 + 4;
  *(&v186 + 1) = v60;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(&v186);
  if (!v57[2])
  {

    v71 = objc_opt_self();
    v72 = MEMORY[0x1865F36D0](0xD00000000000001CLL, 0x80000001848C43C0);
    [v71 _EX_errorWithCode_description_];

    swift_willThrow();
    goto LABEL_3;
  }

  v178 = v58;
  outlined init with copy of _InnerAppExtensionIdentity((v57 + 4), &v184);

  outlined init with take of _InnerAppExtensionIdentity(&v184, &v186);
  v61 = [(__CFString *)v33 identifier];
  v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v64 = v63;

  *&v184 = v62;
  *(&v184 + 1) = v64;
  MEMORY[0x1865F37A0](58, 0xE100000000000000);
  MEMORY[0x1865F37A0](v36, v37);

  v65 = *(&v184 + 1);
  v179 = v184;
  outlined destroy of NSObject?(&v189, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  outlined init with take of _InnerAppExtensionIdentity(&v186, &v189);
  v66 = v181;
  v67 = v172;
  if (!v181)
  {
    goto LABEL_75;
  }

LABEL_33:
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for LSBundleRecord, 0x1E6963620);
  v68 = v66;
  [v68 auditToken];
  v69 = v178;
  v70 = @nonobjc LSBundleRecord.__allocating_init(auditToken:)(v186, *(&v186 + 1), v187, *(&v187 + 1));
  if (v69)
  {

    goto LABEL_3;
  }

  v79 = v70;
  v182 = v65;
  v178 = 0;
  v80 = [(__CFString *)v33 parentAppRecord];
  v81 = v79;
  if (!v80 || (v82 = static NSObject.== infix(_:_:)(), v80, (v82 & 1) == 0))
  {
    outlined init with copy of UUID?(&v189, &v186, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
    v83 = *(&v187 + 1);
    if (!*(&v187 + 1))
    {
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

    v84 = v188;
    __swift_project_boxed_opaque_existential_1(&v186, *(&v187 + 1));
    v85 = type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
    if ((v84[59])(v85, 0xD000000000000039, 0x80000001848C42F0, v83, v84))
    {
      objc_opt_self();
      v86 = swift_dynamicCastObjCClass();
      if (v86)
      {
        v87 = v86;
        __swift_destroy_boxed_opaque_existential_0Tm(&v186);
        LOBYTE(v87) = [v87 BOOLValue];
        swift_unknownObjectRelease();
        if (v87)
        {
          goto LABEL_52;
        }

        goto LABEL_50;
      }

      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_0Tm(&v186);
LABEL_50:
    [v68 auditToken];
    v184 = v186;
    v185 = v187;
    v101 = objc_opt_self();
    v102 = _AppExtensionPoint.requiredHostEntitlements.getter(v33);
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v102);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v183 = 0;
    v104 = [v101 auditToken:&v184 hasRequiredEntitlements:isa error:&v183];

    if (!v104)
    {
      v117 = v183;

      v118 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v119 = objc_opt_self();
      v120 = MEMORY[0x1865F36D0](0xD000000000000025, 0x80000001848C4330);
      [v119 _EX_errorWithCode_description_];

      swift_willThrow();
      goto LABEL_3;
    }

    v105 = v183;
  }

LABEL_52:
  v174 = v81;
  v166 = v68;
  v169 = v51;
  v106 = *(&v190 + 1);
  if (!*(&v190 + 1))
  {
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v107 = v191;
  v108 = __swift_project_boxed_opaque_existential_1(&v189, *(&v190 + 1));
  v109 = *(v106 - 8);
  v110 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v108);
  v112 = &v166 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v109 + 16))(v112);
  v113 = (*(v107 + 256))(v106, v107);
  (*(v109 + 8))(v112, v106);
  v114 = MEMORY[0x1E69E7CC0];
  if (v113)
  {
    v115 = v174;
    v116 = static NSObject.== infix(_:_:)();
  }

  else
  {
    v116 = 0;
    v113 = v174;
  }

  v121 = *(&v190 + 1);
  if (!*(&v190 + 1))
  {
    goto LABEL_83;
  }

  v122 = v191;
  v123 = __swift_project_boxed_opaque_existential_1(&v189, *(&v190 + 1));
  v124 = *(v121 - 8);
  v125 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v123);
  v127 = &v166 - ((v126 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v124 + 16))(v127);
  LOBYTE(v122) = (*(v122 + 216))(v121, v122);
  (*(v124 + 8))(v127, v121);
  if (!(v116 & 1 | ((v122 & 1) == 0)))
  {
    v143 = v166;

    v144 = objc_opt_self();
    v145 = MEMORY[0x1865F36D0](0xD000000000000027, 0x80000001848C4390);
    [v144 _EX_errorWithCode_description_];

    swift_willThrow();
    goto LABEL_3;
  }

  v128 = *(&v190 + 1);
  if (*(&v190 + 1))
  {
    v129 = v191;
    v130 = __swift_project_boxed_opaque_existential_1(&v189, *(&v190 + 1));
    v131 = *(v128 - 8);
    v132 = *(v131 + 64);
    MEMORY[0x1EEE9AC00](v130);
    v134 = &v166 - ((v133 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v131 + 16))(v134);
    v135 = (*(v129 + 224))(v128, v129);
    v137 = v136;
    (*(v131 + 8))(v134, v128);
    if (v137)
    {
      [v166 auditToken];
      v138 = specialized AuditToken.entitlement<A>(name:)();
      if (v138)
      {
        v139 = v138;
      }

      else
      {
        v139 = v114;
      }

      v140 = (v139 + 40);
      v141 = *(v139 + 16) + 1;
      v67 = v172;
      while (--v141)
      {
        if (*(v140 - 1) != v135 || v137 != *v140)
        {
          v140 += 2;
          if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_74;
      }

      v163 = v166;

      v164 = objc_opt_self();
      *&v186 = 0;
      *(&v186 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(41);

      *&v186 = 0xD000000000000026;
      *(&v186 + 1) = 0x80000001848C4360;
      MEMORY[0x1865F37A0](v135, v137);

      MEMORY[0x1865F37A0](96, 0xE100000000000000);
      v165 = MEMORY[0x1865F36D0](v186, *(&v186 + 1));

      [v164 _EX_errorWithCode_description_];

      swift_willThrow();
      goto LABEL_3;
    }

    v67 = v172;
LABEL_74:
    v59 = v180;
    v65 = v182;
LABEL_75:
    v182 = v65;
    v171 = v33;
    v146 = type metadata accessor for _EXExtensionProcessIdentity.Inner(0);
    outlined init with copy of UUID?(&v170[*(v146 + 36)], v67, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
    v147 = *(&v190 + 1);
    if (*(&v190 + 1))
    {
      v148 = v191;
      v149 = __swift_project_boxed_opaque_existential_1(&v189, *(&v190 + 1));
      v150 = *(v147 - 8);
      v151 = *(v150 + 64);
      MEMORY[0x1EEE9AC00](v149);
      v153 = &v166 - ((v152 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v150 + 16))(v153);
      v154 = v177;
      v155 = v178;
      _InnerAppExtensionIdentity.translocatedExecutableURL.getter(v147, v148, v177);
      v178 = v155;
      if (v155)
      {

        (*(v150 + 8))(v153, v147);
        outlined destroy of NSObject?(v172, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
        goto LABEL_3;
      }

      (*(v150 + 8))(v153, v147);
      URL.absoluteURL.getter();
      v156 = *(v175 + 8);
      v157 = v176;
      v156(v154, v176);
      v158 = URL.path(percentEncoded:)(0);

      v156(v59, v157);
      v159 = v167;
      v160 = v168;
      *(v168 + v167[8]) = v158;
      outlined init with copy of UUID?(&v189, &v186, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
      if (*(&v187 + 1))
      {

        outlined init with take of _InnerAppExtensionIdentity(&v186, v160);
        outlined init with take of _EXExtensionProcessIdentity.JobConfiguration?(v172, v160 + v159[5]);
        outlined init with copy of UUID?(&v170[*(v146 + 32)], v160 + v159[6], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

        v161 = (v160 + v159[7]);
        v162 = v182;
        *v161 = v179;
        v161[1] = v162;
        result = outlined destroy of NSObject?(&v189, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
        goto LABEL_4;
      }

      goto LABEL_85;
    }

    __break(1u);
    goto LABEL_82;
  }

LABEL_87:
  __break(1u);
LABEL_88:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _EXExtensionProcessIdentity.JobDescriptor.attributes.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  if ((*(v2 + 232))(v1, v2))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, _ss23_ContiguousArrayStorageCyyXlGMR);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1848BBBA0;
    v4 = MEMORY[0x1865F36D0](0xD000000000000016, 0x80000001848C4250);
    v5 = MEMORY[0x1865F36D0](0xD000000000000016, 0x80000001848C4290);
    v6 = [objc_opt_self() attributeWithDomain:v4 name:v5];
LABEL_3:
    v7 = v6;

    *(v3 + 32) = v7;
    return v3;
  }

  v8 = v0[3];
  v9 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v8);
  if ((*(v9 + 48))(v8, v9) == 2)
  {
    v10 = v0[3];
    v11 = v0[4];
    __swift_project_boxed_opaque_existential_1(v0, v10);
    v12 = (*(v11 + 104))(v10, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, _ss23_ContiguousArrayStorageCyyXlGMR);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1848BBBA0;
    if (v12)
    {
      v4 = MEMORY[0x1865F36D0](0xD000000000000016, 0x80000001848C4250);
      v5 = MEMORY[0x1865F36D0](0x6574784578454955, 0xED00006E6F69736ELL);
    }

    else
    {
      v4 = MEMORY[0x1865F36D0](0xD000000000000016, 0x80000001848C4250);
      v5 = MEMORY[0x1865F36D0](0xD000000000000010, 0x80000001848C4270);
    }

    v6 = [objc_opt_self() attributeWithDomain:v4 name:v5];
    goto LABEL_3;
  }

  v3 = specialized static RBSDomainAttribute.defaultExtensionAttributes.getter();
  if (!(v3 >> 62))
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for RBSAttribute, 0x1E69C7550);

    return v3;
  }

  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for RBSAttribute, 0x1E69C7550);
  v14 = _bridgeCocoaArray<A>(_:)();

  return v14;
}

uint64_t _EXExtensionProcessIdentity.JobDescriptor.internalMachServiceName.getter()
{
  v1 = type metadata accessor for _EXExtensionProcessIdentity.JobDescriptor(0);
  v2 = *(v1 + 36);
  v3 = (v0 + v2);
  if (*(v0 + v2 + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v2 + 8);
  }

  else
  {
    v6 = (v0 + *(v1 + 28));
    v8 = *v6;
    v9 = v6[1];

    MEMORY[0x1865F37A0](46, 0xE100000000000000);
    MEMORY[0x1865F37A0](0xD000000000000015, 0x80000001848C3EC0);
    v4 = v8;
    *v3 = v8;
    v3[1] = v9;
  }

  return v4;
}

uint64_t _EXExtensionProcessIdentity.JobDescriptor.viewserviceMachName.getter()
{
  v1 = type metadata accessor for _EXExtensionProcessIdentity.JobDescriptor(0);
  v2 = *(v1 + 44);
  v3 = (v0 + v2);
  if (*(v0 + v2 + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v2 + 8);
  }

  else
  {
    v6 = (v0 + *(v1 + 28));
    v8 = *v6;
    v9 = v6[1];

    MEMORY[0x1865F37A0](46, 0xE100000000000000);
    MEMORY[0x1865F37A0](0x7672657377656976, 0xEB00000000656369);
    v4 = v8;
    *v3 = v8;
    v3[1] = v9;
  }

  return v4;
}

unint64_t _EXExtensionProcessIdentity.JobDescriptor._restiction.getter()
{
  v1 = *(type metadata accessor for _EXExtensionProcessIdentity.JobDescriptor(0) + 60);
  if (*(v0 + v1))
  {
    v2 = *(v0 + v1);
  }

  else
  {
    v2 = closure #1 in _EXExtensionProcessIdentity.JobDescriptor._restiction.getter(v0);
    *(v0 + v1) = v2;
  }

  return v2;
}

unint64_t closure #1 in _EXExtensionProcessIdentity.JobDescriptor._restiction.getter(uint64_t a1)
{
  v2 = 0xEC000000736E6F69;
  v3 = 0x7463697274736552;
  v4 = 0x7373616C43;
  outlined init with copy of _InnerAppExtensionIdentity(a1, &v90);
  v5 = *(&v92 + 1);
  v6 = v93;
  __swift_project_boxed_opaque_existential_1(&v90, *(&v92 + 1));
  v7 = (*(v6 + 232))(v5, v6);
  __swift_destroy_boxed_opaque_existential_0Tm(&v90);
  v8 = &off_1848BA000;
  v9 = MEMORY[0x1E69E6158];
  if (v7)
  {
    outlined init with copy of _InnerAppExtensionIdentity(a1, &v90);
    v10 = *(&v92 + 1);
    v11 = v93;
    __swift_project_boxed_opaque_existential_1(&v90, *(&v92 + 1));
    v12 = (*(v11 + 72))(v10, v11);
    if (v13)
    {
      v14 = v12;
      v15 = v13;
      __swift_destroy_boxed_opaque_existential_0Tm(&v90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1848BAB90;
      *(v16 + 32) = 0x7373616C43;
      *(v16 + 40) = 0xE500000000000000;
      *(v16 + 48) = 0xD000000000000012;
      *(v16 + 56) = 0x80000001848C4210;
      *(v16 + 72) = v9;
      *(v16 + 80) = 0x79747265706F7250;
      *(v16 + 88) = 0xE800000000000000;
      *(v16 + 96) = 0xD000000000000010;
      *(v16 + 104) = 0x80000001848C4230;
      *(v16 + 120) = v9;
      *(v16 + 128) = 0x65756C6156;
      *(v16 + 168) = v9;
      *(v16 + 136) = 0xE500000000000000;
      *(v16 + 144) = v14;
      *(v16 + 152) = v15;
      v17 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v16);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v20 = *(v18 + 16);
      v19 = *(v18 + 24);
      if (v20 >= v19 >> 1)
      {
        v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v18);
      }

      *(v18 + 16) = v20 + 1;
      *(v18 + 8 * v20 + 32) = v17;
      if (!*(v18 + 16))
      {
        goto LABEL_48;
      }

LABEL_44:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = *(v8 + 161);
      *(inited + 32) = 0x7373616C43;
      *(inited + 40) = 0xE500000000000000;
      *(inited + 48) = 0xD000000000000015;
      *(inited + 56) = 0x80000001848C41D0;
      *(inited + 72) = v9;
      *(inited + 80) = 0x6D656C7469746E45;
      *(inited + 120) = v9;
      *(inited + 88) = 0xEB00000000746E65;
      *(inited + 96) = 0xD000000000000031;
      *(inited + 104) = 0x80000001848C2B90;
      v29 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
      swift_arrayDestroy();
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_45:
        v83 = *(v18 + 16);
        v82 = *(v18 + 24);
        if (v83 >= v82 >> 1)
        {
          v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v82 > 1), v83 + 1, 1, v18);
        }

        *(v18 + 16) = v83 + 1;
        *(v18 + 8 * v83 + 32) = v29;
        goto LABEL_48;
      }

LABEL_52:
      v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 16) + 1, 1, v18);
      goto LABEL_45;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(&v90);
LABEL_39:
    v18 = MEMORY[0x1E69E7CC0];
    if (!*(MEMORY[0x1E69E7CC0] + 16))
    {
      goto LABEL_48;
    }

    goto LABEL_44;
  }

  outlined init with copy of _InnerAppExtensionIdentity(a1, &v90);
  v21 = *(&v92 + 1);
  v22 = v93;
  __swift_project_boxed_opaque_existential_1(&v90, *(&v92 + 1));
  v23 = (*(v22 + 192))(v21, v22);
  __swift_destroy_boxed_opaque_existential_0Tm(&v90);
  if (v23)
  {
    goto LABEL_39;
  }

  v87 = a1;
  outlined init with copy of _InnerAppExtensionIdentity(a1, &v90);
  v18 = *(&v92 + 1);
  v24 = v93;
  __swift_project_boxed_opaque_existential_1(&v90, *(&v92 + 1));
  v25 = (*(v24 + 184))(v18, v24);
  v26 = v25 + 64;
  v88 = v25;
  v27 = 1 << *(v25 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & *(v25 + 64);
  __swift_destroy_boxed_opaque_existential_0Tm(&v90);
  v2 = 0;
  v3 = (v27 + 63) >> 6;
  v89 = MEMORY[0x1E69E7CC0];
  if (v29)
  {
LABEL_15:
    while (1)
    {
      v31 = __clz(__rbit64(v29)) | (v2 << 6);
      v32 = (*(v88 + 48) + 16 * v31);
      v33 = *v32;
      v34 = v32[1];
      v8 = *(*(v88 + 56) + 8 * v31);
      v94[0] = 0x7373616C43;
      v94[1] = 0xE500000000000000;
      v94[2] = 0x69746E4574736F48;
      v94[3] = 0xEF746E656D656C74;
      v94[5] = v9;
      v95[0] = 0x6D656C7469746E45;
      v95[1] = 0xEB00000000746E65;
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_yXl5valuetMd, &_sSS3key_yXl5valuetMR);
      v95[2] = v33;
      v95[3] = v34;
      v95[4] = v8;
      v95[5] = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
      v36 = static _DictionaryStorage.allocate(capacity:)();
      swift_bridgeObjectRetain_n();
      swift_unknownObjectRetain_n();

      outlined init with copy of UUID?(v94, &v90, &_sSS_yptMd, &_sSS_yptMR);
      v9 = v90;
      v4 = v91;
      v37 = specialized __RawDictionaryStorage.find<A>(_:)(v90, v91);
      if (v38)
      {
        break;
      }

      v18 = (v36 + 8);
      *(v36 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v37;
      v39 = (v36[6] + 16 * v37);
      *v39 = v9;
      v39[1] = v4;
      outlined init with take of Any(&v92, (v36[7] + 32 * v37));
      v40 = v36[2];
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
        goto LABEL_51;
      }

      v36[2] = v42;
      outlined init with copy of UUID?(v95, &v90, &_sSS_yptMd, &_sSS_yptMR);
      v9 = v90;
      v4 = v91;
      v43 = specialized __RawDictionaryStorage.find<A>(_:)(v90, v91);
      if (v44)
      {
        break;
      }

      *(v18 + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v43;
      v45 = (v36[6] + 16 * v43);
      *v45 = v9;
      v45[1] = v4;
      outlined init with take of Any(&v92, (v36[7] + 32 * v43));
      v46 = v36[2];
      v41 = __OFADD__(v46, 1);
      v47 = v46 + 1;
      if (v41)
      {
        goto LABEL_51;
      }

      v36[2] = v47;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
      swift_arrayDestroy();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v89 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v89[2] + 1, 1, v89);
      }

      v4 = 0x7373616C43;
      v18 = v89[2];
      v48 = v89[3];
      if (v18 >= v48 >> 1)
      {
        v89 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v18 + 1, 1, v89);
      }

      v29 &= v29 - 1;
      swift_unknownObjectRelease();

      v89[2] = v18 + 1;
      v89[v18 + 4] = v36;
      v9 = MEMORY[0x1E69E6158];
      v8 = &off_1848BA000;
      if (!v29)
      {
        goto LABEL_11;
      }
    }

LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  while (1)
  {
LABEL_11:
    v30 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      goto LABEL_50;
    }

    if (v30 >= v3)
    {
      break;
    }

    v29 = *(v26 + 8 * v30);
    ++v2;
    if (v29)
    {
      v2 = v30;
      goto LABEL_15;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v49 = swift_initStackObject();
  *(v49 + 16) = *(v8 + 161);
  *(v49 + 32) = 0x7373616C43;
  *(v49 + 40) = 0xE500000000000000;
  *(v49 + 48) = 0x646E756F706D6F43;
  *(v49 + 56) = 0xEB000000006C6C41;
  v3 = 0x7463697274736552;
  *(v49 + 72) = v9;
  strcpy((v49 + 80), "Restrictions");
  v2 = 0xEC000000736E6F69;
  *(v49 + 93) = 0;
  *(v49 + 94) = -5120;
  *(v49 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySSypGGMd, &_sSaySDySSypGGMR);
  *(v49 + 96) = v89;
  v50 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v49);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v52 = *(v18 + 16);
  v51 = *(v18 + 24);
  if (v52 >= v51 >> 1)
  {
    v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1, v18);
  }

  *(v18 + 16) = v52 + 1;
  *(v18 + 8 * v52 + 32) = v50;
  v53 = v87;
  outlined init with copy of _InnerAppExtensionIdentity(v87, &v90);
  v54 = *(&v92 + 1);
  v55 = v93;
  __swift_project_boxed_opaque_existential_1(&v90, *(&v92 + 1));
  v56 = (*(v55 + 48))(v54, v55);
  __swift_destroy_boxed_opaque_existential_0Tm(&v90);
  if (v56 == 2)
  {
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_1848BAB90;
    *(v57 + 32) = 0x7373616C43;
    *(v57 + 40) = 0xE500000000000000;
    strcpy((v57 + 48), "HostProperty");
    *(v57 + 61) = 0;
    *(v57 + 62) = -5120;
    v58 = MEMORY[0x1E69E6158];
    *(v57 + 72) = MEMORY[0x1E69E6158];
    *(v57 + 80) = 0x79747265706F7250;
    *(v57 + 88) = 0xE800000000000000;
    *(v57 + 96) = 0xD000000000000016;
    *(v57 + 104) = 0x80000001848C41F0;
    *(v57 + 120) = v58;
    *(v57 + 128) = 0x65756C6156;
    *(v57 + 136) = 0xE500000000000000;
    outlined init with copy of _InnerAppExtensionIdentity(v87, &v90);
    v59 = *(&v92 + 1);
    v60 = v93;
    __swift_project_boxed_opaque_existential_1(&v90, *(&v92 + 1));
    v61 = (*(v60 + 40))(v59, v60);
    *(v57 + 168) = v58;
    *(v57 + 144) = v61;
    *(v57 + 152) = v62;
    __swift_destroy_boxed_opaque_existential_0Tm(&v90);
    v63 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v57);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v65 = *(v18 + 16);
    v64 = *(v18 + 24);
    if (v65 >= v64 >> 1)
    {
      v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v64 > 1), v65 + 1, 1, v18);
    }

    *(v18 + 16) = v65 + 1;
    *(v18 + 8 * v65 + 32) = v63;
    v3 = 0x7463697274736552;
    v4 = 0x7373616C43;
    v53 = v87;
  }

  outlined init with copy of _InnerAppExtensionIdentity(v53, &v90);
  v66 = *(&v92 + 1);
  v67 = v93;
  __swift_project_boxed_opaque_existential_1(&v90, *(&v92 + 1));
  v68 = (*(v67 + 256))(v66, v67);
  if (!v68 || (v69 = v68, v70 = [v68 bundleIdentifier], v69, !v70))
  {
    __swift_destroy_boxed_opaque_existential_0Tm(&v90);
    goto LABEL_43;
  }

  v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v73 = v72;

  __swift_destroy_boxed_opaque_existential_0Tm(&v90);
  outlined init with copy of _InnerAppExtensionIdentity(v53, &v90);
  v74 = *(&v92 + 1);
  v75 = v93;
  __swift_project_boxed_opaque_existential_1(&v90, *(&v92 + 1));
  LOBYTE(v74) = (*(v75 + 216))(v74, v75);
  __swift_destroy_boxed_opaque_existential_0Tm(&v90);
  if ((v74 & 1) == 0)
  {

    v4 = 0x7373616C43;
LABEL_43:
    v9 = MEMORY[0x1E69E6158];
    v8 = &off_1848BA000;
    if (!*(v18 + 16))
    {
      goto LABEL_48;
    }

    goto LABEL_44;
  }

  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_1848BAB90;
  v4 = 0x7373616C43;
  *(v76 + 32) = 0x7373616C43;
  *(v76 + 40) = 0xE500000000000000;
  strcpy((v76 + 48), "HostProperty");
  *(v76 + 61) = 0;
  *(v76 + 62) = -5120;
  v77 = MEMORY[0x1E69E6158];
  *(v76 + 72) = MEMORY[0x1E69E6158];
  *(v76 + 80) = 0x79747265706F7250;
  *(v76 + 88) = 0xE800000000000000;
  *(v76 + 96) = 0x4449656C646E7542;
  *(v76 + 104) = 0xE800000000000000;
  *(v76 + 120) = v77;
  *(v76 + 128) = 0x65756C6156;
  *(v76 + 168) = v77;
  *(v76 + 136) = 0xE500000000000000;
  *(v76 + 144) = v71;
  *(v76 + 152) = v73;
  v78 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v76);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v80 = *(v18 + 16);
  v79 = *(v18 + 24);
  if (v80 >= v79 >> 1)
  {
    v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v79 > 1), v80 + 1, 1, v18);
  }

  v8 = &off_1848BA000;
  *(v18 + 16) = v80 + 1;
  *(v18 + 8 * v80 + 32) = v78;
  v9 = MEMORY[0x1E69E6158];
  if (*(v18 + 16))
  {
    goto LABEL_44;
  }

LABEL_48:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v84 = swift_initStackObject();
  *(v84 + 16) = *(v8 + 161);
  *(v84 + 32) = v4;
  *(v84 + 40) = 0xE500000000000000;
  *(v84 + 48) = 0x646E756F706D6F43;
  *(v84 + 56) = 0xEB00000000796E41;
  *(v84 + 72) = v9;
  *(v84 + 80) = v3;
  *(v84 + 88) = v2;
  *(v84 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySSypGGMd, &_sSaySDySSypGGMR);
  *(v84 + 96) = v18;
  v85 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v84);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  return v85;
}

Swift::Int NWApplicationID.hashValue.getter()
{
  Hasher.init(_seed:)();
  NWApplicationID.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance _EXExtensionProcessIdentity.JobConfiguration(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  Hasher.init(_seed:)();
  a3(v5);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance _EXExtensionProcessIdentity.JobConfiguration(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

uint64_t lazy protocol witness table accessor for type _EXExtensionProcessIdentity.Inner and conformance _EXExtensionProcessIdentity.Inner(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata completion function for _EXExtensionProcessIdentity()
{
  result = type metadata accessor for _EXExtensionProcessIdentity.Inner(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for LaunchArguments(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t storeEnumTagSinglePayload for LaunchArguments(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata completion function for _EXExtensionProcessIdentity.Inner()
{
  type metadata accessor for LSExtensionPointType(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for String?();
    if (v1 <= 0x3F)
    {
      type metadata accessor for NWApplicationID?(319, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for NWApplicationID?(319, &lazy cache variable for type metadata for _EXExtensionProcessIdentity.JobConfiguration?, type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance _EXExtensionProcessIdentity.JobConfiguration.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1865F42C0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance _EXExtensionProcessIdentity.JobConfiguration.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1865F42C0](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance LaunchArguments.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized LaunchArguments.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LaunchArguments.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LaunchArguments.CodingKeys and conformance LaunchArguments.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LaunchArguments.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LaunchArguments.CodingKeys and conformance LaunchArguments.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t lazy protocol witness table accessor for type _EXExtensionProcessIdentity.Inner.CodingKeys and conformance _EXExtensionProcessIdentity.Inner.CodingKeys()
{
  result = lazy protocol witness table cache variable for type _EXExtensionProcessIdentity.Inner.CodingKeys and conformance _EXExtensionProcessIdentity.Inner.CodingKeys;
  if (!lazy protocol witness table cache variable for type _EXExtensionProcessIdentity.Inner.CodingKeys and conformance _EXExtensionProcessIdentity.Inner.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EXExtensionProcessIdentity.Inner.CodingKeys and conformance _EXExtensionProcessIdentity.Inner.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _EXExtensionProcessIdentity.Inner.CodingKeys and conformance _EXExtensionProcessIdentity.Inner.CodingKeys;
  if (!lazy protocol witness table cache variable for type _EXExtensionProcessIdentity.Inner.CodingKeys and conformance _EXExtensionProcessIdentity.Inner.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EXExtensionProcessIdentity.Inner.CodingKeys and conformance _EXExtensionProcessIdentity.Inner.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _EXExtensionProcessIdentity.Inner.CodingKeys and conformance _EXExtensionProcessIdentity.Inner.CodingKeys;
  if (!lazy protocol witness table cache variable for type _EXExtensionProcessIdentity.Inner.CodingKeys and conformance _EXExtensionProcessIdentity.Inner.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EXExtensionProcessIdentity.Inner.CodingKeys and conformance _EXExtensionProcessIdentity.Inner.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _EXExtensionProcessIdentity.Inner.CodingKeys and conformance _EXExtensionProcessIdentity.Inner.CodingKeys;
  if (!lazy protocol witness table cache variable for type _EXExtensionProcessIdentity.Inner.CodingKeys and conformance _EXExtensionProcessIdentity.Inner.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EXExtensionProcessIdentity.Inner.CodingKeys and conformance _EXExtensionProcessIdentity.Inner.CodingKeys);
  }

  return result;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS10identifier_19ExtensionFoundation8PlatformO8platformtGMd, &_ss23_ContiguousArrayStorageCySS10identifier_19ExtensionFoundation8PlatformO8platformtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS10identifier_19ExtensionFoundation8PlatformO8platformtMd, &_sSS10identifier_19ExtensionFoundation8PlatformO8platformtMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19ExtensionFoundation03AppD5PointV7MonitorC18ObserverControllerC04WeakH033_5D985BB42A36A6D664ED77CA96129115LLVGMd, &_ss23_ContiguousArrayStorageCy19ExtensionFoundation03AppD5PointV7MonitorC18ObserverControllerC04WeakH033_5D985BB42A36A6D664ED77CA96129115LLVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[v8 + 4])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19ExtensionFoundation09_InnerAppD8Identity_pGMd, &_ss23_ContiguousArrayStorageCy19ExtensionFoundation09_InnerAppD8Identity_pGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation09_InnerAppA8Identity_pMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySDySSypGGMd, &_ss23_ContiguousArrayStorageCySDySSypGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation09_InnerAppA8Identity_pMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pMR);
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 40 * a3;
    v6 = result - a3 + 1;
LABEL_5:
    v28 = a3;
    v7 = v6;
    for (i = v5; ; i -= 40)
    {
      outlined init with copy of _InnerAppExtensionIdentity(i, &v23);
      outlined init with copy of _InnerAppExtensionIdentity(i - 40, v20);
      v9 = v24;
      v10 = v25;
      __swift_project_boxed_opaque_existential_1(&v23, v24);
      v11 = (*(v10 + 80))(v9, v10);
      v12 = MEMORY[0x1865F36D0](v11);

      MEMORY[0x1865F4620](&v26, v12);

      v13 = v21;
      v14 = v22;
      __swift_project_boxed_opaque_existential_1(v20, v21);
      v15 = (*(v14 + 80))(v13, v14);
      v16 = MEMORY[0x1865F36D0](v15);

      MEMORY[0x1865F4620](&v27, v16);

      v17 = _LSVersionNumberCompare();
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      result = __swift_destroy_boxed_opaque_existential_0Tm(&v23);
      if (v17 != -1)
      {
LABEL_4:
        a3 = v28 + 1;
        v5 += 40;
        --v6;
        if (v28 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      outlined init with take of _InnerAppExtensionIdentity(i, &v23);
      v18 = *(i - 24);
      *i = *(i - 40);
      *(i + 16) = v18;
      *(i + 32) = *(i - 8);
      result = outlined init with take of _InnerAppExtensionIdentity(&v23, i - 40);
      if (!v7)
      {
        goto LABEL_4;
      }

      ++v7;
    }

    __break(1u);
  }

  return result;
}

{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, uint64_t a3, int64_t a4)
{
  v5 = v4;
  v6 = a3;
  v120 = result;
  v7 = *(a3 + 8);
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v10 = v8;
      v11 = v8 + 1;
      v122 = v9;
      if (v8 + 1 >= v7)
      {
        ++v8;
      }

      else
      {
        v12 = *v6;
        outlined init with copy of _InnerAppExtensionIdentity(*v6 + 40 * v11, &v130);
        outlined init with copy of _InnerAppExtensionIdentity(v12 + 40 * v8, v127);
        v119 = v8;
        v13 = v131;
        v14 = v132;
        __swift_project_boxed_opaque_existential_1(&v130, v131);
        v15 = (*(v14 + 80))(v13, v14);
        v16 = MEMORY[0x1865F36D0](v15);

        MEMORY[0x1865F4620](&v133, v16);

        v17 = v128;
        v18 = v129;
        __swift_project_boxed_opaque_existential_1(v127, v128);
        v19 = *(v18 + 80);
        v20 = v18;
        v10 = v8;
        v21 = v19(v17, v20);
        v22 = MEMORY[0x1865F36D0](v21);

        MEMORY[0x1865F4620](&v135, v22);

        v125 = v133;
        v126 = v134;
        v123 = v135;
        v124 = v136;
        v23 = _LSVersionNumberCompare();
        __swift_destroy_boxed_opaque_existential_0Tm(v127);
        result = __swift_destroy_boxed_opaque_existential_0Tm(&v130);
        v24 = v8 + 2;
        if (v8 + 2 >= v7)
        {
          v8 += 2;
        }

        else
        {
          v25 = v12 + 40 * v8 + 40;
          while (1)
          {
            v26 = v7;
            v27 = v24;
            v28 = v25 + 40;
            outlined init with copy of _InnerAppExtensionIdentity(v25 + 40, &v130);
            outlined init with copy of _InnerAppExtensionIdentity(v25, v127);
            v30 = v131;
            v29 = v132;
            __swift_project_boxed_opaque_existential_1(&v130, v131);
            v31 = (*(v29 + 80))(v30, v29);
            v32 = MEMORY[0x1865F36D0](v31);

            MEMORY[0x1865F4620](&v123, v32);

            v33 = v128;
            v34 = v129;
            __swift_project_boxed_opaque_existential_1(v127, v128);
            v35 = (*(v34 + 80))(v33, v34);
            v36 = MEMORY[0x1865F36D0](v35);

            MEMORY[0x1865F4620](&v125, v36);

            v37 = _LSVersionNumberCompare();
            __swift_destroy_boxed_opaque_existential_0Tm(v127);
            result = __swift_destroy_boxed_opaque_existential_0Tm(&v130);
            if ((v23 == -1) == (v37 != -1))
            {
              break;
            }

            v24 = v27 + 1;
            v25 = v28;
            v7 = v26;
            if (v26 == v27 + 1)
            {
              v11 = v27;
              v8 = v26;
              goto LABEL_13;
            }
          }

          v11 = v27 - 1;
          v8 = v27;
LABEL_13:
          v10 = v119;
          v6 = a3;
        }

        if (v23 == -1)
        {
          if (v8 < v10)
          {
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
            return result;
          }

          if (v10 <= v11)
          {
            v99 = v10;
            v100 = v6;
            v101 = v5;
            v11 = 40 * v8 - 40;
            v102 = 40 * v99;
            v103 = v8;
            v104 = v8;
            v105 = v99;
            do
            {
              if (v105 != --v104)
              {
                v110 = *v100;
                if (!*v100)
                {
                  goto LABEL_131;
                }

                v106 = v110 + v102;
                v107 = v110 + v11;
                outlined init with take of _InnerAppExtensionIdentity((v110 + v102), &v130);
                v108 = *(v107 + 32);
                v109 = *(v107 + 16);
                *v106 = *v107;
                *(v106 + 16) = v109;
                *(v106 + 32) = v108;
                result = outlined init with take of _InnerAppExtensionIdentity(&v130, v107);
              }

              ++v105;
              v11 -= 40;
              v102 += 40;
            }

            while (v105 < v104);
            v5 = v101;
            v6 = v100;
            v8 = v103;
            v10 = v119;
          }
        }
      }

      v38 = *(v6 + 1);
      if (v8 < v38)
      {
        if (__OFSUB__(v8, v10))
        {
          goto LABEL_123;
        }

        if (v8 - v10 < a4)
        {
          v39 = v10 + a4;
          if (__OFADD__(v10, a4))
          {
            goto LABEL_124;
          }

          if (v39 >= v38)
          {
            v39 = *(v6 + 1);
          }

          if (v39 < v10)
          {
LABEL_125:
            __break(1u);
            goto LABEL_126;
          }

          if (v8 != v39)
          {
            v116 = v5;
            v11 = *v6;
            v40 = *v6 + 40 * v8;
            v41 = v10 - v8 + 1;
            v121 = v39;
            do
            {
              v138 = v8;
              v42 = v41;
              for (i = v40; ; i -= 40)
              {
                outlined init with copy of _InnerAppExtensionIdentity(i, &v130);
                outlined init with copy of _InnerAppExtensionIdentity(i - 40, v127);
                v44 = v131;
                v45 = v132;
                __swift_project_boxed_opaque_existential_1(&v130, v131);
                v46 = (*(v45 + 80))(v44, v45);
                v47 = MEMORY[0x1865F36D0](v46);

                MEMORY[0x1865F4620](&v133, v47);

                v48 = v128;
                v49 = v129;
                __swift_project_boxed_opaque_existential_1(v127, v128);
                v50 = (*(v49 + 80))(v48, v49);
                v51 = MEMORY[0x1865F36D0](v50);

                MEMORY[0x1865F4620](&v135, v51);

                v125 = v133;
                v126 = v134;
                v123 = v135;
                v124 = v136;
                v52 = _LSVersionNumberCompare();
                __swift_destroy_boxed_opaque_existential_0Tm(v127);
                result = __swift_destroy_boxed_opaque_existential_0Tm(&v130);
                if (v52 != -1)
                {
                  break;
                }

                if (!v11)
                {
                  goto LABEL_128;
                }

                outlined init with take of _InnerAppExtensionIdentity(i, &v130);
                v53 = *(i - 24);
                *i = *(i - 40);
                *(i + 16) = v53;
                *(i + 32) = *(i - 8);
                outlined init with take of _InnerAppExtensionIdentity(&v130, i - 40);
                if (!v42)
                {
                  break;
                }

                ++v42;
              }

              v8 = v138 + 1;
              v40 += 40;
              --v41;
            }

            while (v138 + 1 != v121);
            v8 = v121;
            v5 = v116;
            v6 = a3;
          }
        }
      }

      if (v8 < v10)
      {
        goto LABEL_122;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v9 = v122;
      }

      else
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v122 + 16) + 1, 1, v122);
        v9 = result;
      }

      v11 = *(v9 + 16);
      v54 = *(v9 + 24);
      v55 = v11 + 1;
      if (v11 >= v54 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v11 + 1, 1, v9);
        v9 = result;
      }

      *(v9 + 16) = v55;
      v56 = v9 + 16 * v11;
      *(v56 + 32) = v10;
      *(v56 + 40) = v8;
      v57 = *v120;
      if (!*v120)
      {
        goto LABEL_132;
      }

      if (v11)
      {
        while (1)
        {
          v10 = v55 - 1;
          if (v55 >= 4)
          {
            break;
          }

          if (v55 == 3)
          {
            v58 = *(v9 + 32);
            v59 = *(v9 + 40);
            v68 = __OFSUB__(v59, v58);
            v60 = v59 - v58;
            v61 = v68;
LABEL_53:
            if (v61)
            {
              goto LABEL_111;
            }

            v74 = (v9 + 16 * v55);
            v76 = *v74;
            v75 = v74[1];
            v77 = __OFSUB__(v75, v76);
            v78 = v75 - v76;
            v79 = v77;
            if (v77)
            {
              goto LABEL_114;
            }

            v80 = (v9 + 32 + 16 * v10);
            v82 = *v80;
            v81 = v80[1];
            v68 = __OFSUB__(v81, v82);
            v83 = v81 - v82;
            if (v68)
            {
              goto LABEL_117;
            }

            if (__OFADD__(v78, v83))
            {
              goto LABEL_118;
            }

            if (v78 + v83 >= v60)
            {
              if (v60 < v83)
              {
                v10 = v55 - 2;
              }

              goto LABEL_74;
            }

            goto LABEL_67;
          }

          v84 = (v9 + 16 * v55);
          v86 = *v84;
          v85 = v84[1];
          v68 = __OFSUB__(v85, v86);
          v78 = v85 - v86;
          v79 = v68;
LABEL_67:
          if (v79)
          {
            goto LABEL_113;
          }

          v87 = v9 + 16 * v10;
          v89 = *(v87 + 32);
          v88 = *(v87 + 40);
          v68 = __OFSUB__(v88, v89);
          v90 = v88 - v89;
          if (v68)
          {
            goto LABEL_116;
          }

          if (v90 < v78)
          {
            goto LABEL_3;
          }

LABEL_74:
          v11 = v10 - 1;
          if (v10 - 1 >= v55)
          {
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
            goto LABEL_125;
          }

          if (!*v6)
          {
            goto LABEL_129;
          }

          v95 = v9;
          v96 = *(v9 + 32 + 16 * v11);
          v97 = *(v9 + 32 + 16 * v10 + 8);
          specialized _merge<A>(low:mid:high:buffer:by:)((*v6 + 40 * v96), (*v6 + 40 * *(v9 + 32 + 16 * v10)), *v6 + 40 * v97, v57);
          if (v5)
          {
          }

          if (v97 < v96)
          {
            goto LABEL_107;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v95 = specialized _ArrayBuffer._consumeAndCreateNew()(v95);
          }

          if (v11 >= *(v95 + 2))
          {
            goto LABEL_108;
          }

          v98 = &v95[16 * v11];
          *(v98 + 4) = v96;
          *(v98 + 5) = v97;
          v137 = v95;
          result = specialized Array.remove(at:)(v10);
          v9 = v137;
          v55 = *(v137 + 16);
          if (v55 <= 1)
          {
            goto LABEL_3;
          }
        }

        v62 = v9 + 32 + 16 * v55;
        v63 = *(v62 - 64);
        v64 = *(v62 - 56);
        v68 = __OFSUB__(v64, v63);
        v65 = v64 - v63;
        if (v68)
        {
          goto LABEL_109;
        }

        v67 = *(v62 - 48);
        v66 = *(v62 - 40);
        v68 = __OFSUB__(v66, v67);
        v60 = v66 - v67;
        v61 = v68;
        if (v68)
        {
          goto LABEL_110;
        }

        v69 = (v9 + 16 * v55);
        v71 = *v69;
        v70 = v69[1];
        v68 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v68)
        {
          goto LABEL_112;
        }

        v68 = __OFADD__(v60, v72);
        v73 = v60 + v72;
        if (v68)
        {
          goto LABEL_115;
        }

        if (v73 >= v65)
        {
          v91 = (v9 + 32 + 16 * v10);
          v93 = *v91;
          v92 = v91[1];
          v68 = __OFSUB__(v92, v93);
          v94 = v92 - v93;
          if (v68)
          {
            goto LABEL_119;
          }

          if (v60 < v94)
          {
            v10 = v55 - 2;
          }

          goto LABEL_74;
        }

        goto LABEL_53;
      }

LABEL_3:
      v7 = *(v6 + 1);
      if (v8 >= v7)
      {
        goto LABEL_92;
      }
    }
  }

  v9 = MEMORY[0x1E69E7CC0];
LABEL_92:
  v10 = v6;
  v6 = *v120;
  if (!*v120)
  {
    goto LABEL_133;
  }

  v11 = v9;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    result = v11;
  }

  else
  {
LABEL_126:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v11);
  }

  v111 = v5;
  v137 = result;
  v112 = *(result + 16);
  if (v112 >= 2)
  {
    v11 = 40;
    while (*v10)
    {
      v113 = *(result + 16 * v112);
      v114 = result;
      v5 = *(result + 16 * (v112 - 1) + 40);
      specialized _merge<A>(low:mid:high:buffer:by:)((*v10 + 40 * v113), (*v10 + 40 * *(result + 16 * (v112 - 1) + 32)), *v10 + 40 * v5, v6);
      if (v111)
      {
      }

      if (v5 < v113)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v114 = specialized _ArrayBuffer._consumeAndCreateNew()(v114);
      }

      if (v112 - 2 >= *(v114 + 2))
      {
        goto LABEL_121;
      }

      v115 = &v114[16 * v112];
      *v115 = v113;
      *(v115 + 1) = v5;
      v137 = v114;
      specialized Array.remove(at:)(v112 - 1);
      result = v137;
      v112 = *(v137 + 16);
      if (v112 <= 1)
      {
      }
    }

    goto LABEL_130;
  }
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__src, char *__dst, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = (__dst - __src) / 40;
  v10 = a3 - __dst;
  v11 = (a3 - __dst) / 40;
  if (v9 < v11)
  {
    if (a4 != __src || &__src[40 * v9] <= a4)
    {
      memmove(a4, __src, 40 * v9);
    }

    if (v8 < 40 || v6 >= v5)
    {
      v48 = v7;
      v12 = &v4[40 * v9];
      goto LABEL_44;
    }

    v12 = &v4[40 * v9];
    while (1)
    {
      outlined init with copy of _InnerAppExtensionIdentity(v6, v59);
      outlined init with copy of _InnerAppExtensionIdentity(v4, v56);
      v13 = v60;
      v14 = v61;
      __swift_project_boxed_opaque_existential_1(v59, v60);
      v15 = (*(v14 + 80))(v13, v14);
      v16 = MEMORY[0x1865F36D0](v15);

      MEMORY[0x1865F4620](&v62, v16);

      v17 = v57;
      v18 = v58;
      __swift_project_boxed_opaque_existential_1(v56, v57);
      v19 = (*(v18 + 80))(v17, v18);
      v20 = MEMORY[0x1865F36D0](v19);

      MEMORY[0x1865F4620](&v63, v20);

      v21 = _LSVersionNumberCompare();
      __swift_destroy_boxed_opaque_existential_0Tm(v56);
      __swift_destroy_boxed_opaque_existential_0Tm(v59);
      if (v21 != -1)
      {
        break;
      }

      v22 = v6;
      v23 = v7 == v6;
      v6 += 40;
      if (!v23)
      {
        goto LABEL_10;
      }

LABEL_11:
      v7 += 40;
      if (v4 >= v12 || v6 >= v5)
      {
        v48 = v7;
        goto LABEL_44;
      }
    }

    v22 = v4;
    v23 = v7 == v4;
    v4 += 40;
    if (v23)
    {
      goto LABEL_11;
    }

LABEL_10:
    v24 = *v22;
    v25 = *(v22 + 1);
    *(v7 + 4) = *(v22 + 4);
    *v7 = v24;
    *(v7 + 1) = v25;
    goto LABEL_11;
  }

  if (a4 != __dst || &__dst[40 * v11] <= a4)
  {
    memmove(a4, __dst, 40 * v11);
  }

  v12 = &v4[40 * v11];
  if (v10 < 40 || v6 <= v7)
  {
    goto LABEL_43;
  }

  v55 = v7;
  v64 = v4;
  do
  {
    v26 = (v6 - 40);
    v27 = (v12 - 40);
    v5 -= 40;
    while (1)
    {
      v32 = v6;
      v33 = v27 + 40;
      v34 = (v5 + 40);
      outlined init with copy of _InnerAppExtensionIdentity(v27, v59);
      v35 = v26;
      outlined init with copy of _InnerAppExtensionIdentity(v26, v56);
      v37 = v60;
      v36 = v61;
      __swift_project_boxed_opaque_existential_1(v59, v60);
      v38 = (*(v36 + 80))(v37, v36);
      v39 = MEMORY[0x1865F36D0](v38);

      MEMORY[0x1865F4620](&v62, v39);

      v40 = v57;
      v41 = v58;
      __swift_project_boxed_opaque_existential_1(v56, v57);
      v42 = (*(v41 + 80))(v40, v41);
      v43 = MEMORY[0x1865F36D0](v42);

      MEMORY[0x1865F4620](&v63, v43);

      v44 = _LSVersionNumberCompare();
      __swift_destroy_boxed_opaque_existential_0Tm(v56);
      __swift_destroy_boxed_opaque_existential_0Tm(v59);
      if (v44 == -1)
      {
        break;
      }

      v6 = v32;
      if (v34 < v33 || v5 >= v33)
      {
        v28 = *v27;
        v29 = *(v27 + 16);
        *(v5 + 32) = *(v27 + 32);
        *v5 = v28;
        *(v5 + 16) = v29;
        v4 = v64;
        v26 = v35;
      }

      else
      {
        v4 = v64;
        v26 = v35;
        if (v34 != v33)
        {
          v45 = *v27;
          v46 = *(v27 + 16);
          *(v5 + 32) = *(v27 + 32);
          *v5 = v45;
          *(v5 + 16) = v46;
        }
      }

      v30 = v27 - 40;
      v5 -= 40;
      v31 = v27 > v4;
      v27 -= 40;
      if (!v31)
      {
        v12 = (v30 + 40);
LABEL_43:
        v48 = v6;
        goto LABEL_44;
      }
    }

    v12 = (v27 + 40);
    if (v34 < v32 || v5 >= v32)
    {
      v48 = v35;
      v51 = *v35;
      v52 = *(v35 + 1);
      *(v5 + 32) = *(v35 + 4);
      *v5 = v51;
      *(v5 + 16) = v52;
      v4 = v64;
      v47 = v55;
      if (v12 <= v64)
      {
        break;
      }

      goto LABEL_39;
    }

    v47 = v55;
    v48 = v35;
    if (v34 != v32)
    {
      v49 = *v35;
      v50 = *(v35 + 1);
      *(v5 + 32) = *(v35 + 4);
      *v5 = v49;
      *(v5 + 16) = v50;
    }

    v4 = v64;
    if (v12 <= v64)
    {
      break;
    }

LABEL_39:
    v6 = v48;
  }

  while (v48 > v47);
  v12 = (v27 + 40);
LABEL_44:
  v53 = (v12 - v4) / 40;
  if (v48 != v4 || v48 >= &v4[40 * v53])
  {
    memmove(v48, v4, 40 * v53);
  }

  return 1;
}

uint64_t specialized Array.remove(at:)(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void specialized Optional<A>.hash(into:)(__int128 *a1)
{
  v3 = type metadata accessor for NWApplicationID();
  v30 = *(v3 - 8);
  v4 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v29 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v29 - v8;
  v10 = type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v29 - v17;
  outlined init with copy of UUID?(v1, &v29 - v17, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
  if ((*(v11 + 48))(v18, 1, v10) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    outlined init with take of _EXExtensionProcessIdentity.Inner(v18, v14, type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration);
    Hasher._combine(_:)(1u);
    if (v14[1])
    {
      v19 = *v14;
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    v20 = v30;
    specialized Dictionary<>.hash(into:)(a1, v14[2]);
    v21 = v14[3];
    if (v21)
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x1865F42C0](*(v21 + 16));
      v22 = *(v21 + 16);
      if (v22)
      {
        v23 = (v21 + 40);
        do
        {
          v24 = *(v23 - 1);
          v25 = *v23;

          String.hash(into:)();

          v23 += 2;
          --v22;
        }

        while (v22);
      }
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    outlined init with copy of UUID?(v14 + *(v10 + 28), v9, &_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
    if ((*(v20 + 48))(v9, 1, v3) == 1)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      v26 = v29;
      (*(v20 + 32))(v29, v9, v3);
      Hasher._combine(_:)(1u);
      NWApplicationID.hash(into:)();
      (*(v20 + 8))(v26, v3);
    }

    v27 = (v14 + *(v10 + 32));
    if (v27[1])
    {
      v28 = *v27;
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    outlined destroy of _EXExtensionProcessIdentity.Inner(v14, type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration);
  }
}

uint64_t specialized Dictionary<>.hash(into:)(__int128 *a1, uint64_t a2)
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
  for (i = 0; v6; v9 ^= result)
  {
    v11 = i;
LABEL_9:
    v12 = *(a2 + 48);
    v13 = (v11 << 10) | (16 * __clz(__rbit64(v6)));
    v14 = *(v12 + v13);
    v15 = *(v12 + v13 + 8);
    v6 &= v6 - 1;
    v16 = (*(a2 + 56) + v13);
    v17 = *v16;
    v18 = v16[1];
    v22 = a1[2];
    v23 = a1[3];
    v24 = *(a1 + 8);
    v20 = *a1;
    v21 = a1[1];

    String.hash(into:)();

    String.hash(into:)();

    result = Hasher._finalize()();
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return MEMORY[0x1865F42C0](v9);
    }

    v6 = *(v3 + 8 * v11);
    ++i;
    if (v6)
    {
      i = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void *specialized _ArrayBuffer._consumeAndCreateNew()(void *a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

unint64_t lazy protocol witness table accessor for type _EXExtensionProcessIdentity.JobConfiguration.CodingKeys and conformance _EXExtensionProcessIdentity.JobConfiguration.CodingKeys()
{
  result = lazy protocol witness table cache variable for type _EXExtensionProcessIdentity.JobConfiguration.CodingKeys and conformance _EXExtensionProcessIdentity.JobConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type _EXExtensionProcessIdentity.JobConfiguration.CodingKeys and conformance _EXExtensionProcessIdentity.JobConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EXExtensionProcessIdentity.JobConfiguration.CodingKeys and conformance _EXExtensionProcessIdentity.JobConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _EXExtensionProcessIdentity.JobConfiguration.CodingKeys and conformance _EXExtensionProcessIdentity.JobConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type _EXExtensionProcessIdentity.JobConfiguration.CodingKeys and conformance _EXExtensionProcessIdentity.JobConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EXExtensionProcessIdentity.JobConfiguration.CodingKeys and conformance _EXExtensionProcessIdentity.JobConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _EXExtensionProcessIdentity.JobConfiguration.CodingKeys and conformance _EXExtensionProcessIdentity.JobConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type _EXExtensionProcessIdentity.JobConfiguration.CodingKeys and conformance _EXExtensionProcessIdentity.JobConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EXExtensionProcessIdentity.JobConfiguration.CodingKeys and conformance _EXExtensionProcessIdentity.JobConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _EXExtensionProcessIdentity.JobConfiguration.CodingKeys and conformance _EXExtensionProcessIdentity.JobConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type _EXExtensionProcessIdentity.JobConfiguration.CodingKeys and conformance _EXExtensionProcessIdentity.JobConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EXExtensionProcessIdentity.JobConfiguration.CodingKeys and conformance _EXExtensionProcessIdentity.JobConfiguration.CodingKeys);
  }

  return result;
}

uint64_t outlined init with copy of _EXExtensionProcessIdentity.Inner(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t specialized static _EXExtensionProcessIdentity.JobConfiguration.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for NWApplicationID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network15NWApplicationIDVSg_ADtMd, &_s7Network15NWApplicationIDVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v35 - v15;
  v17 = a1[1];
  v18 = a2[1];
  if (v17)
  {
    if (!v18 || (*a1 != *a2 || v17 != v18) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (v18)
  {
    goto LABEL_27;
  }

  v36 = v5;
  if (a1[3])
  {
    v37 = a1[3];

    specialized MutableCollection<>.sort(by:)(&v37);
    v19 = v37;
    v20 = a2[3];
    if (!v20)
    {
      if (!v37)
      {
        goto LABEL_21;
      }

LABEL_20:

      goto LABEL_27;
    }
  }

  else
  {
    v20 = a2[3];
    if (!v20)
    {
      goto LABEL_21;
    }

    v19 = 0;
  }

  v37 = v20;

  specialized MutableCollection<>.sort(by:)(&v37);
  if (!v19)
  {
    if (!v37)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (!v37)
  {
    goto LABEL_20;
  }

  v21 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v19, v37);

  if ((v21 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_21:
  v35 = type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration(0);
  v22 = *(v35 + 28);
  v23 = *(v13 + 48);
  outlined init with copy of UUID?(a1 + v22, v16, &_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
  outlined init with copy of UUID?(a2 + v22, &v16[v23], &_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
  v24 = v36;
  v25 = *(v36 + 48);
  if (v25(v16, 1, v4) != 1)
  {
    outlined init with copy of UUID?(v16, v12, &_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
    if (v25(&v16[v23], 1, v4) == 1)
    {
      (*(v24 + 8))(v12, v4);
      goto LABEL_26;
    }

    (*(v24 + 32))(v8, &v16[v23], v4);
    v28 = static NWApplicationID.== infix(_:_:)();
    v29 = *(v24 + 8);
    v29(v8, v4);
    v29(v12, v4);
    outlined destroy of NSObject?(v16, &_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
    if (v28)
    {
      goto LABEL_30;
    }

LABEL_27:
    v26 = 0;
    return v26 & 1;
  }

  if (v25(&v16[v23], 1, v4) != 1)
  {
LABEL_26:
    outlined destroy of NSObject?(v16, &_s7Network15NWApplicationIDVSg_ADtMd, &_s7Network15NWApplicationIDVSg_ADtMR);
    goto LABEL_27;
  }

  outlined destroy of NSObject?(v16, &_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
LABEL_30:
  v30 = *(v35 + 32);
  v31 = (a1 + v30);
  v32 = *(a1 + v30 + 8);
  v33 = (a2 + v30);
  v34 = v33[1];
  v26 = (v32 | v34) == 0;
  if (v32 && v34)
  {
    if (*v31 == *v33 && v32 == v34)
    {
      v26 = 1;
    }

    else
    {
      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return v26 & 1;
}

uint64_t specialized static _EXExtensionProcessIdentity.Inner.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration(0);
  v58 = *(v4 - 8);
  v59 = v4;
  v5 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v57 = (&v53 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSg_AFtMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSg_AFtMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v53 - v13;
  v15 = type metadata accessor for UUID();
  v60 = *(v15 - 8);
  v16 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v53 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v53 - v25;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_32;
  }

  v27 = a1[4];
  v28 = a2[4];
  if (v27)
  {
    if (!v28 || (a1[3] != a2[3] || v27 != v28) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  else if (v28)
  {
    goto LABEL_32;
  }

  v29 = a1[6];
  v30 = a2[6];
  if (v29)
  {
    if (!v30 || (a1[5] != a2[5] || v29 != v30) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  else if (v30)
  {
    goto LABEL_32;
  }

  v55 = v14;
  v53 = v7;
  v54 = type metadata accessor for _EXExtensionProcessIdentity.Inner(0);
  v31 = *(v54 + 32);
  v32 = *(v23 + 48);
  outlined init with copy of UUID?(a1 + v31, v26, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v56 = v32;
  outlined init with copy of UUID?(a2 + v31, &v26[v32], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v33 = v60;
  v34 = *(v60 + 48);
  if (v34(v26, 1, v15) == 1)
  {
    if (v34(&v26[v56], 1, v15) == 1)
    {
      outlined destroy of NSObject?(v26, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      goto LABEL_25;
    }

LABEL_23:
    v35 = &_s10Foundation4UUIDVSg_ADtMd;
    v36 = &_s10Foundation4UUIDVSg_ADtMR;
    v37 = v26;
LABEL_31:
    outlined destroy of NSObject?(v37, v35, v36);
    goto LABEL_32;
  }

  outlined init with copy of UUID?(v26, v22, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v34(&v26[v56], 1, v15) == 1)
  {
    (*(v33 + 8))(v22, v15);
    goto LABEL_23;
  }

  (*(v33 + 32))(v18, &v26[v56], v15);
  lazy protocol witness table accessor for type _EXExtensionProcessIdentity.Inner and conformance _EXExtensionProcessIdentity.Inner(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v38 = dispatch thunk of static Equatable.== infix(_:_:)();
  v39 = *(v33 + 8);
  v39(v18, v15);
  v39(v22, v15);
  outlined destroy of NSObject?(v26, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if ((v38 & 1) == 0)
  {
LABEL_32:
    v47 = 0;
    return v47 & 1;
  }

LABEL_25:
  v40 = v55;
  v41 = *(v54 + 36);
  v42 = *(v11 + 48);
  outlined init with copy of UUID?(a1 + v41, v55, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
  v43 = a2 + v41;
  v44 = v40;
  outlined init with copy of UUID?(v43, v40 + v42, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
  v45 = v59;
  v46 = *(v58 + 48);
  if (v46(v40, 1, v59) != 1)
  {
    v48 = v40;
    v49 = v57;
    outlined init with copy of UUID?(v48, v57, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
    if (v46(v44 + v42, 1, v45) != 1)
    {
      v51 = v44 + v42;
      v52 = v53;
      outlined init with take of _EXExtensionProcessIdentity.Inner(v51, v53, type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration);
      v47 = specialized static _EXExtensionProcessIdentity.JobConfiguration.== infix(_:_:)(v49, v52);
      outlined destroy of _EXExtensionProcessIdentity.Inner(v52, type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration);
      outlined destroy of _EXExtensionProcessIdentity.Inner(v49, type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration);
      outlined destroy of NSObject?(v44, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
      return v47 & 1;
    }

    outlined destroy of _EXExtensionProcessIdentity.Inner(v49, type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration);
    goto LABEL_30;
  }

  if (v46(v40 + v42, 1, v45) != 1)
  {
LABEL_30:
    v35 = &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSg_AFtMd;
    v36 = &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSg_AFtMR;
    v37 = v44;
    goto LABEL_31;
  }

  outlined destroy of NSObject?(v40, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
  v47 = 1;
  return v47 & 1;
}

uint64_t outlined init with take of _EXExtensionProcessIdentity.Inner(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(void *a1)
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

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance [A]);
  }

  return result;
}

uint64_t specialized _EXExtensionProcessIdentity.JobConfiguration.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000016 && 0x80000001848C44B0 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001848C35C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001848C35A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001848C3650 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x53616E6F73726570 && a2 == 0xED0000676E697274)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t specialized _EXExtensionProcessIdentity.Inner.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000018 && 0x80000001848C3400 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001848C3E70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001848C4450 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65644970756F7267 && a2 == 0xEF7265696669746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65636E6174736E69 && a2 == 0xEC00000044495555 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001848C4470 == a2)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

objc_class *specialized _EXExtensionProcessIdentity.__allocating_init(dataRepresentation:)(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for _EXExtensionProcessIdentity.Inner(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for _EXExtensionProcessIdentity(0);
  v10 = objc_allocWithZone(v9);
  v11 = type metadata accessor for JSONDecoder();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  lazy protocol witness table accessor for type _EXExtensionProcessIdentity.Inner and conformance _EXExtensionProcessIdentity.Inner(&lazy protocol witness table cache variable for type _EXExtensionProcessIdentity.Inner and conformance _EXExtensionProcessIdentity.Inner, type metadata accessor for _EXExtensionProcessIdentity.Inner);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (v2)
  {
    outlined consume of Data._Representation(a1, a2);
    v14 = *((*MEMORY[0x1E69E7D40] & *v10) + 0x30);
    v15 = *((*MEMORY[0x1E69E7D40] & *v10) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    outlined init with take of _EXExtensionProcessIdentity.Inner(v8, v10 + OBJC_IVAR____TtC19ExtensionFoundation27_EXExtensionProcessIdentity_inner, type metadata accessor for _EXExtensionProcessIdentity.Inner);
    v17.receiver = v10;
    v17.super_class = v9;
    v9 = objc_msgSendSuper2(&v17, sel_init);
    outlined consume of Data._Representation(a1, a2);
  }

  return v9;
}

uint64_t outlined init with take of _EXExtensionProcessIdentity.JobConfiguration?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with copy of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for _EXExtensionProcessIdentity.Inner.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for _EXExtensionProcessIdentity.Inner.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t specialized LaunchArguments.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4E65636976726573 && a2 == 0xEB00000000656D61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001848C4490 == a2)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t one-time initialization function for prototypeInterfaces()
{
  type metadata accessor for OS_os_log();
  result = OS_os_log.init(subsystem:category:)();
  static OS_os_log.prototypeInterfaces = result;
  return result;
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.prototypeInterfaces);
  __swift_project_value_buffer(v0, static Logger.prototypeInterfaces);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for preferences(uint64_t a1)
{
  return one-time initialization function for general(a1, 0x6E65726566657270, 0xEB00000000736563, &static OS_os_log.preferences);
}

{
  return one-time initialization function for general(a1, static Logger.preferences);
}

id static OS_os_log.general.getter(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

uint64_t static Logger.general.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

id specialized static LSApplicationRecord.effective.getter()
{
  v0 = objc_opt_self();
  v1 = [v0 bundleRecordForCurrentProcess];
  if (v1)
  {
    v2 = v1;
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }
  }

  result = [v0 bundleRecordForCurrentProcess];
  if (result)
  {
    v4 = result;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = [v5 containingBundleRecord];

      if (v6)
      {
        objc_opt_self();
        result = swift_dynamicCastObjCClass();
        if (result)
        {
          return result;
        }
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
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

uint64_t specialized AuditToken.entitlement<A>(name:)()
{
  v4 = *MEMORY[0x1E69E9840];
  String.utf8CString.getter();
  v0 = xpc_copy_entitlement_for_token();

  if (!v0)
  {
    result = 0;
LABEL_7:
    v2 = *MEMORY[0x1E69E9840];
    return result;
  }

  result = _CFXPCCreateCFObjectFromXPCObject();
  if (result)
  {
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    if (swift_dynamicCast())
    {
      result = v3;
    }

    else
    {
      result = 0;
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

void _EXLaunchConfiguration.launchPersona.setter(void *a1)
{
  if (a1)
  {
    [a1 copyWithZone_];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for _EXPersona, off_1E6E4D230);
    v3 = swift_dynamicCast();
    v4 = v6;
    if (!v3)
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v1 + OBJC_IVAR____EXLaunchConfiguration_launchPersona);
  *(v1 + OBJC_IVAR____EXLaunchConfiguration_launchPersona) = v4;
}

id _EXDomainAttribute.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance RBSProcessIdentity.Attachment.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized RBSProcessIdentity.Attachment.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RBSProcessIdentity.Attachment.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RBSProcessIdentity.Attachment.CodingKeys and conformance RBSProcessIdentity.Attachment.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RBSProcessIdentity.Attachment.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RBSProcessIdentity.Attachment.CodingKeys and conformance RBSProcessIdentity.Attachment.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t specialized RBSProcessIdentity.Attachment.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001848C35E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001848C35A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001848C35C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001848C4450 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001848C3650 == a2)
  {

    return 4;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

id NSError.init(code:description:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1848BA260;
  v7 = *MEMORY[0x1E696A578];
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v8;
  *(inited + 48) = a2;
  *(inited + 56) = a3;
  v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (String, String)(inited + 32);
  v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v11 = @"com.apple.extensionKit.errorDomain";
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v9);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v13 = [v10 initWithDomain:v11 code:a1 userInfo:isa];

  return v13;
}

uint64_t outlined destroy of (String, String)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSbGMd, &_ss18_DictionaryStorageCySSSbGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC19ExtensionFoundation03AppC5PointV7MonitorC8IdentityV_AG18ObserverControllerC0I033_5D985BB42A36A6D664ED77CA96129115LLVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy19ExtensionFoundation03AppC5PointV7MonitorC8IdentityVAG18ObserverControllerC0I033_5D985BB42A36A6D664ED77CA96129115LLVGMd, &_ss18_DictionaryStorageCy19ExtensionFoundation03AppC5PointV7MonitorC8IdentityVAG18ObserverControllerC0I033_5D985BB42A36A6D664ED77CA96129115LLVGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v24 = v3 + 64;
    v29 = v3;

    v4 = (a1 + 40);
    while (1)
    {
      v25 = v1;
      v5 = *(v4 - 1);
      v6 = *v4;
      v7 = v4[1];
      v8 = v4[2];
      v9 = v4[3];
      v10 = *(v4 + 1);
      v11 = *(v4 + 2);
      v26 = *(v4 + 4);
      v27 = *(v4 + 3);
      v12 = *(v4 + 5);
      v13 = v7 ? 256 : 0;
      v28 = v13 | v6;
      v14 = v4[2] ? 0x10000 : 0;
      v15 = v4[3] ? 0x1000000 : 0;
      v16 = v14 | v15;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v28 | v16);
      if (v18)
      {
        break;
      }

      *(v24 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v19 = v29[6] + 16 * result;
      *v19 = v5;
      *(v19 + 8) = v6;
      *(v19 + 9) = v7;
      *(v19 + 10) = v8;
      *(v19 + 11) = v9;
      v20 = (v29[7] + 40 * result);
      *v20 = v10;
      v20[1] = v11;
      v20[2] = v27;
      v20[3] = v26;
      v20[4] = v12;
      v21 = v29[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_19;
      }

      v4 += 56;
      v29[2] = v23;
      v1 = v25 - 1;
      if (v25 == 1)
      {

        return v29;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_So18_EXNSExtensionShimC09ExtensionC0E14ImplementationC7RequestVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_So18_EXNSExtensionShimC09ExtensionA0E14ImplementationC7RequestVtMd, &_s10Foundation4UUIDV_So18_EXNSExtensionShimC09ExtensionA0E14ImplementationC7RequestVtMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVSo18_EXNSExtensionShimC09ExtensionC0E14ImplementationC7RequestVGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSo18_EXNSExtensionShimC09ExtensionC0E14ImplementationC7RequestVGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of UUID?(v10, v6, &_s10Foundation4UUIDV_So18_EXNSExtensionShimC09ExtensionA0E14ImplementationC7RequestVtMd, &_s10Foundation4UUIDV_So18_EXNSExtensionShimC09ExtensionA0E14ImplementationC7RequestVtMR);
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
      v18 = type metadata accessor for _EXNSExtensionShim.Implementation.Request();
      result = outlined init with take of _EXNSExtensionShim.Implementation.Request(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t _ScopeRestriction.value.getter@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  if (a2)
  {
    if (a2 == 1)
    {
      a3[3] = MEMORY[0x1E69E6158];
      *a3 = 1701736302;
      a3[1] = 0xE400000000000000;
    }

    else
    {
      v3 = result;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1848BA260;
      *(inited + 32) = 0xD000000000000012;
      *(inited + 40) = 0x80000001848C4940;
      *(inited + 48) = v3;
      *(inited + 56) = a2;
      outlined copy of _ScopeRestriction(v3, a2);
      v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      outlined destroy of (String, String)(inited + 32);
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
      a3[3] = result;
      *a3 = v7;
    }
  }

  else
  {
    a3[3] = MEMORY[0x1E69E6158];
    *a3 = 0x746163696C707061;
    a3[1] = 0xEB000000006E6F69;
  }

  return result;
}

uint64_t AppExtensionPoint.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AppExtensionPoint.init(extensionPointRecords:)@<X0>(unint64_t a1@<X0>, char *a2@<X8>)
{
  if (a1 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v6 = MEMORY[0x1E69E7CC0];
    v27 = a2;
    if (!i)
    {
      goto LABEL_13;
    }

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v7 = 0;
    v6 = v25;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1865F3F40](v7, a1);
      }

      else
      {
        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = [v8 identifier];
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v25 = v6;
      v15 = *(v6 + 2);
      v14 = *(v6 + 3);
      if (v15 >= v14 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
        v6 = v25;
      }

      ++v7;
      *(v6 + 2) = v15 + 1;
      v16 = &v6[16 * v15];
      *(v16 + 4) = v11;
      *(v16 + 5) = v13;
    }

    while (i != v7);

    v2 = v24;
LABEL_13:
    v25 = v6;

    specialized MutableCollection<>.sort(by:)(&v25);
    i = v2;
    if (v2)
    {
      goto LABEL_23;
    }

    a2 = v25;
    v17 = 0xE000000000000000;
    v25 = 0;
    v26 = 0xE000000000000000;
    v18 = *(a2 + 2);
    if (!v18)
    {
LABEL_19:

      v23 = v27;
      *v27 = v18;
      v23[1] = v17;
      v23[2] = a1;
      v23[3] = 0;
      return result;
    }

    v19 = 0;
    v20 = (a2 + 40);
    while (v19 < *(a2 + 2))
    {
      ++v19;
      v2 = *(v20 - 1);
      v21 = *v20;

      MEMORY[0x1865F37A0](v2, v21);

      v20 += 2;
      if (v18 == v19)
      {
        v18 = v25;
        v17 = v26;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    ;
  }

  __break(1u);
LABEL_23:

  __break(1u);
  return result;
}

Swift::Int specialized MutableCollection<>.sort(by:)(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v2;
  return result;
}

void static AppExtensionPoint.Definition.buildBlock<each A>(_:_:)(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = *a1;
  v10 = a1[1];
  v11 = *(a1 + 16);
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for LSApplicationRecord, 0x1E69635F8);
  v12 = [swift_getObjCClassFromMetadata() bundleRecordForCurrentProcess];
  if (!v12)
  {
    goto LABEL_12;
  }

  v13 = v12;
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (!v14)
  {

LABEL_12:
    lazy protocol witness table accessor for type AppExtensionPoint.Error and conformance AppExtensionPoint.Error();
    v33 = swift_allocError();
    *v34 = xmmword_1848BC9C0;
    swift_willThrow();
LABEL_16:
    a5[3] = v33;
    swift_getErrorValue();
    v42 = v33;
    *a5 = Error.localizedDescription.getter();
    a5[1] = v43;

    a5[2] = MEMORY[0x1E69E7CC0];
    return;
  }

  v15 = v14;
  v16 = [v14 bundleIdentifier];
  if (!v16)
  {
    lazy protocol witness table accessor for type AppExtensionPoint.Error and conformance AppExtensionPoint.Error();
    v33 = swift_allocError();
    *v35 = xmmword_1848BC9B0;
    swift_willThrow();

    goto LABEL_16;
  }

  v46 = v11;
  v47 = v10;
  v48 = v9;
  v49 = v15;
  v50 = a5;
  v17 = v16;
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = v19;
  v45 = v18;

  v21 = 0;
  v22 = 0;
  if (a3)
  {
    v23 = (a4 & 0xFFFFFFFFFFFFFFFELL);
    do
    {
      v24 = *a2;
      v25 = *(*(*v23 - 8) + 64);
      MEMORY[0x1EEE9AC00](v20);
      (*(v27 + 16))(&v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
      v20 = swift_dynamicCast();
      if (v20)
      {

        v21 = v51;
        v22 = v52;
      }

      ++a2;
      ++v23;
      --a3;
    }

    while (a3);
  }

  v51 = v45;
  v52 = v44;
  MEMORY[0x1865F37A0](46, 0xE100000000000000);
  v28 = StaticString.description.getter();
  MEMORY[0x1865F37A0](v28);

  v29 = v52;
  v30 = v49;
  if (v22)
  {

    v51 = v21;
    v52 = v22;
    MEMORY[0x1865F37A0](46, 0xE100000000000000);
    v31 = StaticString.description.getter();
    MEMORY[0x1865F37A0](v31);

    v32 = v51;
    v29 = v52;
  }

  else
  {
    v32 = v51;
  }

  v36 = v50;
  active_platform = dyld_get_active_platform();
  objc_allocWithZone(MEMORY[0x1E6963668]);
  v38 = v13;
  v39 = specialized @nonobjc LSExtensionPointRecord.init(identifier:platform:parentAppRecord:)(v32, v29, active_platform, v30);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, _ss23_ContiguousArrayStorageCyyXlGMR);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1848BBBA0;
  *(v40 + 32) = v39;
  v41 = v39;
  AppExtensionPoint.init(extensionPointRecords:)(v40, v36);
}

void static AppExtensionPoint.Bind.buildBlock(_:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for LSApplicationExtensionRecord, 0x1E69635D0);
  v5 = [swift_getObjCClassFromMetadata() bundleRecordForCurrentProcess];
  if (!v5)
  {
    goto LABEL_10;
  }

  v21 = v5;
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {

LABEL_10:
    lazy protocol witness table accessor for type AppExtensionPoint.Error and conformance AppExtensionPoint.Error();
    v15 = swift_allocError();
    *v17 = xmmword_1848BC9E0;
    swift_willThrow();
    goto LABEL_13;
  }

  v7 = v6;
  v8 = [v6 extensionPointRecord];
  v9 = [v8 identifier];

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  if (v10 == v3 && v12 == v4)
  {
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v14 & 1) == 0)
    {
      lazy protocol witness table accessor for type AppExtensionPoint.Error and conformance AppExtensionPoint.Error();
      v15 = swift_allocError();
      *v16 = xmmword_1848BC9D0;
      swift_willThrow();

LABEL_13:
      *(a2 + 24) = v15;
      swift_getErrorValue();
      v19 = v15;
      *a2 = Error.localizedDescription.getter();
      *(a2 + 8) = v20;

      *(a2 + 16) = MEMORY[0x1E69E7CC0];
      return;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, _ss23_ContiguousArrayStorageCyyXlGMR);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1848BBBA0;
  *(v18 + 32) = [v7 extensionPointRecord];
  AppExtensionPoint.init(extensionPointRecords:)(v18, a2);
}

uint64_t static AppExtensionPoint.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t AppExtensionPoint.hash(into:)()
{
  v2 = *v0;
  v1 = v0[1];

  String.hash(into:)();
}

double AppExtensionPoint.init(identifier:)@<D0>(uint64_t a1@<X8>)
{
  v3 = StaticString.description.getter();
  v5 = v4;
  active_platform = dyld_get_active_platform();
  AppExtensionPoint.init(identifier:platform:)(v3, v5, active_platform, &v9);
  if (!v1)
  {
    v8 = v11;
    *a1 = v9;
    result = *&v10;
    *(a1 + 8) = v10;
    *(a1 + 24) = v8;
  }

  return result;
}

void AppExtensionPoint.init(identifier:platform:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = specialized static LSApplicationRecord.effective.getter();
  if (v4)
  {

    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  v11 = objc_allocWithZone(MEMORY[0x1E6963668]);
  v12 = v10;

  v16 = specialized @nonobjc LSExtensionPointRecord.init(identifier:platform:parentAppRecord:)(a1, a2, a3, v10);

  if (v16)
  {

LABEL_9:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, _ss23_ContiguousArrayStorageCyyXlGMR);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1848BBBA0;
    *(v17 + 32) = v16;
    v18 = v16;
    AppExtensionPoint.init(extensionPointRecords:)(v17, &v20);

    v19 = v22;
    *a4 = v20;
    *(a4 + 8) = v21;
    *(a4 + 24) = v19;
    return;
  }

  if (v10 && (v13._countAndFlagsBits = 0x6C7070612E6D6F63, v13._object = 0xEA00000000002E65, String.hasPrefix(_:)(v13)))
  {
    v14 = objc_allocWithZone(MEMORY[0x1E6963668]);
    v15 = specialized @nonobjc LSExtensionPointRecord.init(identifier:platform:parentAppRecord:)(a1, a2, a3, 0);
    v16 = v15;
    if (v15)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

  [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E696A768] code:-10814 userInfo:0];
  swift_willThrow();
}

Swift::Int AppExtensionPoint.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Identifiable.id.getter in conformance AppExtensionPoint@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AppExtensionPoint()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AppExtensionPoint()
{
  v2 = *v0;
  v1 = v0[1];

  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AppExtensionPoint()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}