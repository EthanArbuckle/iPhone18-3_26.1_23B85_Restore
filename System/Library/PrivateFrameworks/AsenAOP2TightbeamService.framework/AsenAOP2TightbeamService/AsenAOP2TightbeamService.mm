uint64_t one-time initialization function for rpclog()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, rpclog);
  __swift_project_value_buffer(v0, rpclog);
  return Logger.init(subsystem:category:)();
}

uint64_t rpclog.unsafeMutableAddressor()
{
  if (one-time initialization token for rpclog != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, rpclog);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t ackHandler_AsenAOP2.ping_ack()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20]();
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for rpclog != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, rpclog);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_241059000, v13, v14, "AsenAOP2Service, Received ping ack", v15, 2u);
    MEMORY[0x245CD8880](v15, -1, -1);
  }

  swift_beginAccess();
  outlined init with copy of AsenAOP2ServiceConsumer?(v1 + 16, &aBlock);
  if (!v27)
  {
    return outlined destroy of AsenAOP2ServiceConsumer?(&aBlock, &_s24AsenAOP2TightbeamService0abD8Consumer_pSgMd, &_s24AsenAOP2TightbeamService0abD8Consumer_pSgMR);
  }

  outlined init with take of AsenAOP2ServiceConsumer(&aBlock, v31);
  v16 = *(v1 + 56);
  if (!v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(v31);
  }

  outlined init with copy of AsenAOP2ServiceConsumer(v31, v30);
  v17 = swift_allocObject();
  outlined init with take of AsenAOP2ServiceConsumer(v30, v17 + 16);
  v28 = partial apply for closure #1 in ackHandler_AsenAOP2.ping_ack();
  v29 = v17;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v26 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v27 = &block_descriptor_27;
  v18 = _Block_copy(&aBlock);
  v23 = v16;
  static DispatchQoS.unspecified.getter();
  v24 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  v22 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v19 = v23;
  MEMORY[0x245CD8300](0, v11, v6, v18);
  _Block_release(v18);

  (*(v3 + 8))(v6, v2);
  (*(v8 + 8))(v11, v22);
  __swift_destroy_boxed_opaque_existential_1(v31);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t ackHandler_AsenAOP2.message_enqueue(aoeServiceID:sourceID:messageData:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v31 = a2;
  v30 = a1;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v6 - 8);
  v7 = *(v29 + 64);
  MEMORY[0x28223BE20]();
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DispatchQoS();
  v27 = *(v28 - 8);
  v10 = *(v27 + 64);
  MEMORY[0x28223BE20]();
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a3 + 16);
  if (one-time initialization token for rpclog != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, rpclog);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134218496;
    *(v17 + 4) = v30;
    *(v17 + 12) = 2048;
    *(v17 + 14) = v31;
    *(v17 + 22) = 2048;
    *(v17 + 24) = v13;
    _os_log_impl(&dword_241059000, v15, v16, "AsenAOP2Service, RX Message with aoeServiceID: %llu, sourceID: %llu, length: %ld bytes", v17, 0x20u);
    MEMORY[0x245CD8880](v17, -1, -1);
  }

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    result = swift_slowAlloc();
    *result = 16777984;
    if (!v13)
    {
      __break(1u);
      return result;
    }

    v21 = result;
    *(result + 4) = *(a3 + 32);
    *(result + 5) = 2048;
    *(result + 7) = v13 - 1;
    *(result + 15) = 256;
    *(result + 17) = *(a3 + 32 + v13 - 1);

    _os_log_impl(&dword_241059000, v18, v19, "AsenAOP2Service, RX Message[0]: %hhu, Message[%ld]: %hhu", v21, 0x12u);
    MEMORY[0x245CD8880](v21, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();
  outlined init with copy of AsenAOP2ServiceConsumer?(v4 + 16, &aBlock);
  if (!v35)
  {
    return outlined destroy of AsenAOP2ServiceConsumer?(&aBlock, &_s24AsenAOP2TightbeamService0abD8Consumer_pSgMd, &_s24AsenAOP2TightbeamService0abD8Consumer_pSgMR);
  }

  outlined init with take of AsenAOP2ServiceConsumer(&aBlock, v39);
  v22 = *(v4 + 56);
  if (!v22)
  {
    return __swift_destroy_boxed_opaque_existential_1(v39);
  }

  outlined init with copy of AsenAOP2ServiceConsumer(v39, v38);
  v23 = swift_allocObject();
  outlined init with take of AsenAOP2ServiceConsumer(v38, (v23 + 2));
  v24 = v31;
  v23[7] = v30;
  v23[8] = v24;
  v23[9] = a3;
  v36 = partial apply for closure #1 in ackHandler_AsenAOP2.message_enqueue(aoeServiceID:sourceID:messageData:);
  v37 = v23;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v34 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v35 = &block_descriptor_21;
  v25 = _Block_copy(&aBlock);

  v26 = v22;
  static DispatchQoS.unspecified.getter();
  v32 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x245CD8300](0, v12, v9, v25);
  _Block_release(v25);

  (*(v29 + 8))(v9, v6);
  (*(v27 + 8))(v12, v28);
  __swift_destroy_boxed_opaque_existential_1(v39);
}

uint64_t ackHandler_AsenAOP2.__deallocating_deinit()
{
  outlined destroy of AsenAOP2ServiceConsumer?(v0 + 16, &_s24AsenAOP2TightbeamService0abD8Consumer_pSgMd, &_s24AsenAOP2TightbeamService0abD8Consumer_pSgMR);

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t key path getter for AsenAOP2Service._asenaop2 : AsenAOP2Service@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x78))();
  *a2 = result;
  return result;
}

uint64_t key path setter for AsenAOP2Service._asenaop2 : AsenAOP2Service(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x80);

  return v3(v4);
}

uint64_t key path getter for AsenAOP2Service._asenaop2_cb : AsenAOP2Service@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x90))();
  *a2 = result;
  return result;
}

uint64_t key path setter for AsenAOP2Service._asenaop2_cb : AsenAOP2Service(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x98);

  return v3(v4);
}

uint64_t AsenAOP2Service._asenaop2.getter(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t AsenAOP2Service._asenaop2.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

uint64_t AsenAOP2Service._delegate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC24AsenAOP2TightbeamService15AsenAOP2Service__delegate;
  swift_beginAccess();
  return outlined init with copy of AsenAOP2ServiceConsumer?(v1 + v3, a1);
}

uint64_t outlined init with copy of AsenAOP2ServiceConsumer?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24AsenAOP2TightbeamService0abD8Consumer_pSgMd, &_s24AsenAOP2TightbeamService0abD8Consumer_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t AsenAOP2Service._delegate.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC24AsenAOP2TightbeamService15AsenAOP2Service__delegate;
  swift_beginAccess();
  outlined assign with take of AsenAOP2ServiceConsumer?(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t outlined assign with take of AsenAOP2ServiceConsumer?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24AsenAOP2TightbeamService0abD8Consumer_pSgMd, &_s24AsenAOP2TightbeamService0abD8Consumer_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t key path getter for AsenAOP2Service._internalQueue : AsenAOP2Service@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xC0))();
  *a2 = result;
  return result;
}

id AsenAOP2Service._internalQueue.getter()
{
  v1 = OBJC_IVAR____TtC24AsenAOP2TightbeamService15AsenAOP2Service__internalQueue;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void AsenAOP2Service._internalQueue.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC24AsenAOP2TightbeamService15AsenAOP2Service__internalQueue;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t key path getter for AsenAOP2Service._delegateQueue : AsenAOP2Service@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xD8))();
  *a2 = result;
  return result;
}

uint64_t key path setter for AsenAOP2Service._delegateQueue : AsenAOP2Service(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0xE0);
  v4 = *a1;
  return v3(v2);
}

void *AsenAOP2Service._delegateQueue.getter()
{
  v1 = OBJC_IVAR____TtC24AsenAOP2TightbeamService15AsenAOP2Service__delegateQueue;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void AsenAOP2Service._delegateQueue.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC24AsenAOP2TightbeamService15AsenAOP2Service__delegateQueue;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id AsenAOP2Service.__allocating_init(delegate:queue:)(uint64_t *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = specialized AsenAOP2Service.init(delegate:queue:)(a1, a2);

  return v6;
}

id AsenAOP2Service.init(delegate:queue:)(uint64_t *a1, void *a2)
{
  v3 = specialized AsenAOP2Service.init(delegate:queue:)(a1, a2);

  return v3;
}

void closure #1 in closure #1 in closure #1 in AsenAOP2Service.init(delegate:queue:)(const char *a1, _DWORD *a2, _DWORD *a3)
{
  server_by_name = rpc_get_server_by_name(a1);
  if (server_by_name)
  {
    MEMORY[0x28223BE20]();
    if (("Failed to find RPC server: " & 0x1000000000000000) != 0)
    {
      _StringGuts._slowWithCString<A>(_:)();
LABEL_7:
      rpc_release_server(server_by_name);
      return;
    }

    if (("Failed to find RPC server: " & 0x2000000000000000) != 0)
    {
      v8 = 0xD000000000000021;
      v9 = "Failed to find RPC server: " & 0xFFFFFFFFFFFFF0;
      v7 = rpc_afk_interface_find(server_by_name, &v8, 0, a2, a3);
    }

    else
    {
      v7 = rpc_afk_interface_find(server_by_name, (("Failed to find RPC server: " & 0xFFFFFFFFFFFFFF0) + 32), 0, a2, a3);
    }

    if (!v7)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
    _StringGuts.grow(_:)(29);
    MEMORY[0x245CD82B0](0xD00000000000001BLL, 0x8000000241061BE0);
    v10 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSPys4Int8VGMd, &_sSPys4Int8VGMR);
    _print_unlocked<A, B>(_:_:)();
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in AsenAOP2Service.init(delegate:queue:)(const char *a1, const char *a2, _DWORD *a3, _DWORD *a4)
{
  result = rpc_afk_interface_find(a2, a1, 0, a3, a4);
  if (result)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void specialized String.withCString<A>(_:)(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5[0] = a1;
    v5[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = v5;
    goto LABEL_6;
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_8:
    _StringGuts._slowWithCString<A>(_:)();
    return;
  }

  v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_6:
  closure #1 in closure #1 in closure #1 in AsenAOP2Service.init(delegate:queue:)(v4, a3, a4);
}

Swift::Void __swiftcall AsenAOP2Service.ping(number:)(Swift::UInt64 number)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x277D85000];
  v15 = (*((*MEMORY[0x277D85000] & *v1) + 0x78))(v11);
  if (v15)
  {
    v16 = v15;
    v22 = (*((*v14 & *v1) + 0xC0))();
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v17 + 24) = number;
    aBlock[4] = partial apply for closure #1 in AsenAOP2Service.ping(number:);
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor;
    v20 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v23 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    v21 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v18 = v20;
    v19 = v22;
    MEMORY[0x245CD8300](0, v13, v7, v20);
    _Block_release(v18);

    (*(v4 + 8))(v7, v3);
    (*(v9 + 8))(v13, v21);
  }
}

void closure #1 in AsenAOP2Service.ping(number:)(int a1, Swift::UInt64 number)
{
  v2 = asenaop2_service.Service.ping(number:)(number);
  if (!v3)
  {
    v11 = v2;
    if (one-time initialization token for rpclog != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, rpclog);
    oslog = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134349056;
      *(v14 + 4) = v11;
      _os_log_impl(&dword_241059000, oslog, v13, "AsenAOP2Service, hello return: %{public}llu", v14, 0xCu);
      MEMORY[0x245CD8880](v14, -1, -1);
    }

    goto LABEL_10;
  }

  if (one-time initialization token for rpclog != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, rpclog);
  v5 = v3;
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v3;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_241059000, oslog, v6, "AsenAOP2Service, hello error: %{public}@.", v7, 0xCu);
    outlined destroy of AsenAOP2ServiceConsumer?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x245CD8880](v8, -1, -1);
    MEMORY[0x245CD8880](v7, -1, -1);

LABEL_10:
    v15 = oslog;

    goto LABEL_12;
  }

  v15 = v3;

LABEL_12:
}

Swift::Void __swiftcall AsenAOP2Service.configDebugDataPath(enable:)(Swift::Bool enable)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x277D85000];
  v15 = (*((*MEMORY[0x277D85000] & *v1) + 0x78))(v11);
  if (v15)
  {
    v16 = v15;
    v20 = v8;
    v21 = v4;
    v19 = (*((*v14 & *v1) + 0xC0))();
    if (enable)
    {
      v27 = partial apply for closure #1 in AsenAOP2Service.configDebugDataPath(enable:);
      v28 = v16;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v26 = &block_descriptor_6;
    }

    else
    {
      v27 = partial apply for closure #2 in AsenAOP2Service.configDebugDataPath(enable:);
      v28 = v16;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v26 = &block_descriptor_3;
    }

    v17 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v22 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v18 = v19;
    MEMORY[0x245CD8300](0, v13, v7, v17);
    _Block_release(v17);

    (*(v21 + 8))(v7, v3);
    (*(v9 + 8))(v13, v20);
  }
}

void closure #1 in AsenAOP2Service.configDebugDataPath(enable:)(uint64_t a1, void (*a2)(void), const char *a3)
{
  a2();
  if (one-time initialization token for rpclog != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, rpclog);
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_241059000, oslog, v5, a3, v6, 2u);
    MEMORY[0x245CD8880](v6, -1, -1);
  }
}

id AsenAOP2Service.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AsenAOP2Service();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id specialized AsenAOP2Service.init(delegate:queue:)(uint64_t *a1, void *a2)
{
  v87[5] = *MEMORY[0x277D85DE8];
  v82 = type metadata accessor for TightbeamEndpoint();
  v77 = *(v82 - 8);
  v5 = v77[8];
  v6 = (MEMORY[0x28223BE20])();
  v76 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v81 = &v68 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v79 = &v68 - v11;
  MEMORY[0x28223BE20](v10);
  v75 = (&v68 - v12);
  v74 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v73 = *(v74 - 8);
  v13 = *(v73 + 64);
  MEMORY[0x28223BE20](v74);
  v72 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for OS_dispatch_queue.Attributes();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v17 = type metadata accessor for DispatchQoS();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = OBJC_IVAR____TtC24AsenAOP2TightbeamService15AsenAOP2Service__asenaop2;
  *&v2[OBJC_IVAR____TtC24AsenAOP2TightbeamService15AsenAOP2Service__asenaop2] = 0;
  v68 = OBJC_IVAR____TtC24AsenAOP2TightbeamService15AsenAOP2Service__asenaop2_cb;
  *&v2[OBJC_IVAR____TtC24AsenAOP2TightbeamService15AsenAOP2Service__asenaop2_cb] = 0;
  v20 = &v2[OBJC_IVAR____TtC24AsenAOP2TightbeamService15AsenAOP2Service__delegate];
  *v20 = 0u;
  *(v20 + 16) = 0u;
  v78 = v20;
  *(v20 + 32) = 0;
  v21 = OBJC_IVAR____TtC24AsenAOP2TightbeamService15AsenAOP2Service__delegateQueue;
  v80 = v2;
  *&v2[OBJC_IVAR____TtC24AsenAOP2TightbeamService15AsenAOP2Service__delegateQueue] = 0;
  rpc_init();
  v70 = a2;
  v69 = v19;
  v71 = type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.unspecified.getter();
  v87[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  v22 = a1;
  v23 = v21;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v73 + 104))(v72, *MEMORY[0x277D85260], v74);
  v24 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v25 = v80;
  *&v80[OBJC_IVAR____TtC24AsenAOP2TightbeamService15AsenAOP2Service__internalQueue] = v24;
  outlined init with copy of AsenAOP2ServiceConsumer(v22, v87);
  v26 = v78;
  swift_beginAccess();
  outlined assign with take of AsenAOP2ServiceConsumer?(v87, v26);
  swift_endAccess();
  swift_beginAccess();
  v27 = *&v25[v21];
  v28 = v70;
  *&v25[v21] = v70;
  v29 = v28;

  v84 = 0;
  specialized String.withCString<A>(_:)(0xD000000000000017, 0x8000000241061B90, &v84 + 1, &v84);
  v30 = v75;
  *v75 = HIDWORD(v84);
  v31 = v77;
  v32 = v77[13];
  v33 = v82;
  (v32)(v30, *MEMORY[0x277D714A8], v82);
  *v79 = v84;
  v32();
  v34 = v31[2];
  v35 = v81;
  v34(v81, v30, v33);
  type metadata accessor for asenaop2_service.Service();
  v36 = swift_allocObject();
  v34(v76, v35, v33);
  v37 = type metadata accessor for ClientConnection();
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  swift_allocObject();
  v40 = ClientConnection.init(endpoint:)();
  v41 = v77[1];
  v41(v81, v82);
  *(v36 + 16) = v40;
  v42 = v80;
  v43 = v69;
  swift_beginAccess();
  v44 = *&v42[v43];
  *&v42[v43] = v36;

  outlined init with copy of AsenAOP2ServiceConsumer?(v78, &v85);
  if (v86)
  {
    outlined init with take of AsenAOP2ServiceConsumer(&v85, v87);
    v45 = *&v42[v23];
    v46 = type metadata accessor for ackHandler_AsenAOP2();
    v47 = swift_allocObject();
    *(v47 + 32) = 0u;
    *(v47 + 48) = 0u;
    *(v47 + 16) = 0u;
    outlined init with copy of AsenAOP2ServiceConsumer(v87, &v85);
    swift_beginAccess();
    v48 = v45;
    outlined assign with take of AsenAOP2ServiceConsumer?(&v85, v47 + 16);
    swift_endAccess();
    *(v47 + 56) = v45;
    __swift_destroy_boxed_opaque_existential_1(v87);
  }

  else
  {
    outlined destroy of AsenAOP2ServiceConsumer?(&v85, &_s24AsenAOP2TightbeamService0abD8Consumer_pSgMd, &_s24AsenAOP2TightbeamService0abD8Consumer_pSgMR);
    v46 = type metadata accessor for ackHandler_AsenAOP2();
    v47 = swift_allocObject();
    *(v47 + 16) = 0u;
    *(v47 + 32) = 0u;
    *(v47 + 48) = 0u;
  }

  v49 = v81;
  v50 = v82;
  v34(v81, v79, v82);
  type metadata accessor for asenaop2_callback.Server();
  v51 = swift_allocObject();
  type metadata accessor for ackHandler_AsenAOP2();
  v87[3] = v46;
  v87[4] = &protocol witness table for ackHandler_AsenAOP2;
  v87[0] = v47;
  outlined init with copy of AsenAOP2ServiceConsumer(v87, v51 + 24);
  v34(v76, v49, v50);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Tightbeam17ServiceConnectionCy08AsenAOP2aB017asenaop2_callbackC6ServerCGMd, &_s9Tightbeam17ServiceConnectionCy08AsenAOP2aB017asenaop2_callbackC6ServerCGMR);
  v53 = *(v52 + 48);
  v54 = *(v52 + 52);
  swift_allocObject();

  *(v51 + 16) = ServiceConnection.init(endpoint:)();

  dispatch thunk of ServiceConnection.service.setter();
  v41(v81, v82);
  __swift_destroy_boxed_opaque_existential_1(v87);
  v55 = v80;
  v56 = v68;
  swift_beginAccess();
  v57 = *&v55[v56];
  *&v55[v56] = v51;

  v58 = *(v51 + 16);
  dispatch thunk of ServiceConnection.begin()();
  if (one-time initialization token for rpclog != -1)
  {
    swift_once();
  }

  v59 = type metadata accessor for Logger();
  __swift_project_value_buffer(v59, rpclog);
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    *v62 = 0;
    _os_log_impl(&dword_241059000, v60, v61, "AsenAOP2Service, init success", v62, 2u);
    MEMORY[0x245CD8880](v62, -1, -1);
  }

  v63 = v82;
  v41(v79, v82);
  v41(v75, v63);
  v64 = type metadata accessor for AsenAOP2Service();
  v83.receiver = v80;
  v83.super_class = v64;
  v65 = objc_msgSendSuper2(&v83, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v22);
  v66 = *MEMORY[0x277D85DE8];
  return v65;
}

void sub_24105D0B8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x24105D0C0);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_24105D0CC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void type metadata accessor for tb_error_t()
{
  if (!lazy cache variable for type metadata for tb_error_t)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for tb_error_t);
    }
  }
}

uint64_t outlined init with take of AsenAOP2ServiceConsumer(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_24105D694()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t partial apply for closure #1 in ackHandler_AsenAOP2.message_enqueue(aoeServiceID:sourceID:messageData:)()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[5];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
  return (*(v5 + 16))(v1, v2, v3, v4, v5);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_24105D7D4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t partial apply for closure #1 in ackHandler_AsenAOP2.ping_ack()()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t outlined destroy of AsenAOP2ServiceConsumer?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t type metadata accessor for OS_dispatch_queue()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue;
  if (!lazy cache variable for type metadata for OS_dispatch_queue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of AsenAOP2ServiceConsumer(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t asenaop2_callback.Server.__allocating_init(endpoint:handler:)(uint64_t a1, uint64_t *a2)
{
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  v8 = specialized asenaop2_callback.Server.__allocating_init(endpoint:handler:)(a1, v7, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v8;
}

Swift::UInt64 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> asenaop2_service.Service.ping(number:)(Swift::UInt64 number)
{
  v31 = number;
  v3 = type metadata accessor for TightbeamDecoder();
  v29 = *(v3 - 8);
  v30 = v3;
  v4 = *(v29 + 64);
  MEMORY[0x28223BE20](v3);
  v28 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TightbeamEncoder();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = type metadata accessor for TightbeamMessage();
  v32 = *(v8 - 8);
  v9 = *(v32 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v27 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v27 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v27 - v17;
  v19 = *(v1 + 16);
  _s9Tightbeam16ClientConnectionC15allocateMessage4size12capabilitiesAA0aE0VSi_SitSo10tb_error_taYKF();
  if (v2)
  {
    v21 = v33;
    type metadata accessor for tb_error_t();
    v23 = v22;
    lazy protocol witness table accessor for type tb_error_t and conformance tb_error_t(&lazy protocol witness table cache variable for type tb_error_t and conformance tb_error_t, 255, type metadata accessor for tb_error_t);
    swift_allocError();
    *v24 = v21;
  }

  else
  {
    v20 = *(v32 + 32);
    v32 += 32;
    v20(v16, v18, v8);
    TightbeamMessage.encoder()();
    TightbeamEncoder.encode(_:)(0xE2F9F1BBEBCD85CCLL);
    TightbeamEncoder.encode(_:)(v31);
    TightbeamEncoder.complete()();
    _s9Tightbeam16ClientConnectionC4send7messageAA0A7MessageVAGn_tSo10tb_error_taYKF();
    v20(v16, v13, v8);
    v26 = v28;
    TightbeamDecoder.init(message:)();
    v23 = TightbeamDecoder.decode(as:)();
    (*(v29 + 8))(v26, v30);
  }

  return v23;
}

uint64_t asenaop2_service.Service.enable_sdu_aggregation()(Swift::UInt64 a1)
{
  v20 = a1;
  v3 = type metadata accessor for TightbeamEncoder();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = type metadata accessor for TightbeamMessage();
  v21 = *(v5 - 8);
  v6 = *(v21 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v20 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v20 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - v14;
  v16 = *(v1 + 16);
  _s9Tightbeam16ClientConnectionC15allocateMessage4size12capabilitiesAA0aE0VSi_SitSo10tb_error_taYKF();
  if (v2)
  {
    v17 = v22;
    type metadata accessor for tb_error_t();
    lazy protocol witness table accessor for type tb_error_t and conformance tb_error_t(&lazy protocol witness table cache variable for type tb_error_t and conformance tb_error_t, 255, type metadata accessor for tb_error_t);
    result = swift_allocError();
    *v19 = v17;
  }

  else
  {
    (*(v21 + 32))(v13, v15, v5);
    TightbeamMessage.encoder()();
    TightbeamEncoder.encode(_:)(v20);
    TightbeamEncoder.complete()();
    _s9Tightbeam16ClientConnectionC4send7messageAA0A7MessageVAGn_tSo10tb_error_taYKF();
    return (*(v21 + 8))(v10, v5);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t asenaop2_service.Service.__allocating_init(connection:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t asenaop2_service.Service.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t asenaop2_service.Service.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t asenaop2_service.Server.__allocating_init(endpoint:handler:)(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for TightbeamEndpoint();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  outlined init with copy of AsenAOP2ServiceConsumer(a2, v9 + 24);
  (*(v5 + 16))(v8, a1, v4);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Tightbeam17ServiceConnectionCy08AsenAOP2aB016asenaop2_serviceC6ServerCGMd, &_s9Tightbeam17ServiceConnectionCy08AsenAOP2aB016asenaop2_serviceC6ServerCGMR);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  *(v9 + 16) = ServiceConnection.init(endpoint:)();

  dispatch thunk of ServiceConnection.service.setter();
  __swift_destroy_boxed_opaque_existential_1(a2);
  (*(v5 + 8))(a1, v4);
  return v9;
}

uint64_t asenaop2_service.Server.init(endpoint:handler:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v6 = type metadata accessor for TightbeamEndpoint();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AsenAOP2ServiceConsumer(a2, v3 + 24);
  (*(v7 + 16))(v10, a1, v6);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Tightbeam17ServiceConnectionCy08AsenAOP2aB016asenaop2_serviceC6ServerCGMd, &_s9Tightbeam17ServiceConnectionCy08AsenAOP2aB016asenaop2_serviceC6ServerCGMR);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *(v3 + 16) = ServiceConnection.init(endpoint:)();

  dispatch thunk of ServiceConnection.service.setter();
  __swift_destroy_boxed_opaque_existential_1(a2);
  (*(v7 + 8))(a1, v6);
  return v3;
}

uint64_t _s24AsenAOP2TightbeamService16asenaop2_serviceC6ServerC6decodey0C00C7MessageVSgAG0C7DecoderVnSo10tb_error_taYKF@<X0>(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v43 = a1;
  v3 = v2;
  v42 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Tightbeam0A7EncoderVSgMd, &_s9Tightbeam0A7EncoderVSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v39 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v40 = &v39 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v39 - v14;
  v16 = type metadata accessor for TightbeamEncoder();
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  v45 = v16;
  v46 = v15;
  v41 = v18;
  (v18)(v15, 1, 1);
  v19 = specialized TightbeamDecoder.decode(as:)();
  v20 = v3[6];
  v21 = v3[7];
  __swift_project_boxed_opaque_existential_1(v3 + 3, v20);
  if (v19)
  {
    if (v19 == 1)
    {
      (*(v21 + 16))(v20, v21);
      v22 = v44;
      _s9Tightbeam0A7DecoderV7encoder5bytes12capabilitiesAA0A7EncoderVSi_SitSo10tb_error_taYKF();
      if (!v22)
      {
        v23 = v45;
        v41(v11, 0, 1, v45);
        v24 = *(v17 + 48);
        v25 = v46;
        if (v24(v46, 1, v23) != 1)
        {
          outlined destroy of TightbeamEncoder?(v25);
        }

        v26 = v11;
LABEL_11:
        outlined init with take of TightbeamEncoder?(v26, v25);
LABEL_20:
        v35 = (v24)(v25, 1, v23);
        v36 = v35;
        if (v35 == 1)
        {
          v37 = v42;
        }

        else
        {
          v37 = v42;
          if (v35)
          {
            outlined destroy of TightbeamEncoder?(v25);
            v36 = 1;
          }

          else
          {
            TightbeamEncoder.complete()();
          }
        }

        v38 = type metadata accessor for TightbeamMessage();
        return (*(*(v38 - 8) + 56))(v37, v36, 1, v38);
      }
    }

    else
    {
      v28 = TightbeamDecoder.decode(as:)();
      v29 = (*(v21 + 8))(v28, v20, v21);
      v30 = v40;
      v31 = v44;
      _s9Tightbeam0A7DecoderV7encoder5bytes12capabilitiesAA0A7EncoderVSi_SitSo10tb_error_taYKF();
      if (!v31)
      {
        v23 = v45;
        v41(v30, 0, 1, v45);
        v24 = *(v17 + 48);
        v25 = v46;
        if (v24(v46, 1, v23) != 1)
        {
          outlined destroy of TightbeamEncoder?(v25);
        }

        outlined init with take of TightbeamEncoder?(v30, v25);
        if (!v24(v25, 1, v23))
        {
          TightbeamEncoder.encode(_:)(v29);
        }

        goto LABEL_20;
      }
    }
  }

  else
  {
    (*(v21 + 24))(v20, v21);
    v27 = v44;
    _s9Tightbeam0A7DecoderV7encoder5bytes12capabilitiesAA0A7EncoderVSi_SitSo10tb_error_taYKF();
    if (!v27)
    {
      v23 = v45;
      v41(v8, 0, 1, v45);
      v24 = *(v17 + 48);
      v25 = v46;
      if (v24(v46, 1, v23) != 1)
      {
        outlined destroy of TightbeamEncoder?(v25);
      }

      v26 = v8;
      goto LABEL_11;
    }
  }

  v32 = v47;
  v33 = v46;
  result = (*(v17 + 48))(v46, 1, v45);
  if (result != 1)
  {
    result = outlined destroy of TightbeamEncoder?(v33);
  }

  *v43 = v32;
  return result;
}

uint64_t asenaop2_service.Server.deinit()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  return v0;
}

uint64_t asenaop2_service.Service.__allocating_init(endpoint:)(uint64_t a1)
{
  v2 = type metadata accessor for TightbeamEndpoint();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = swift_allocObject();
  (*(v3 + 16))(v6, a1, v2);
  v8 = type metadata accessor for ClientConnection();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = ClientConnection.init(endpoint:)();
  (*(v3 + 8))(a1, v2);
  *(v7 + 16) = v11;
  return v7;
}

uint64_t asenaop2_service.Service.init(endpoint:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TightbeamEndpoint();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  (*(v5 + 16))(&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v8 = type metadata accessor for ClientConnection();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = ClientConnection.init(endpoint:)();
  (*(v5 + 8))(a1, v4);
  *(v2 + 16) = v11;
  return v2;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> asenaop2_callback.Service.message_enqueue(aoeServiceID:sourceID:messageData:)(Swift::UInt64 aoeServiceID, Swift::UInt64 sourceID, Swift::OpaquePointer messageData)
{
  v27 = sourceID;
  v26 = aoeServiceID;
  v5 = type metadata accessor for TightbeamEncoder();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TightbeamMessage();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &rawValue - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &rawValue - v14;
  v16 = *(messageData._rawValue + 2);
  if (__OFADD__(v16, 8))
  {
    __break(1u);
    goto LABEL_13;
  }

  if (__OFADD__(v16 + 8, 24))
  {
LABEL_13:
    __break(1u);
    return;
  }

  rawValue = messageData._rawValue;
  v17 = *(v3 + 16);
  v18 = v28;
  _s9Tightbeam16ClientConnectionC15allocateMessage4size12capabilitiesAA0aE0VSi_SitSo10tb_error_taYKF();
  if (v18)
  {
    v19 = v29;
LABEL_10:
    type metadata accessor for tb_error_t();
    lazy protocol witness table accessor for type tb_error_t and conformance tb_error_t(&lazy protocol witness table cache variable for type tb_error_t and conformance tb_error_t, 255, type metadata accessor for tb_error_t);
    swift_allocError();
    *v24 = v19;
    return;
  }

  v28 = 0;
  (*(v8 + 32))(v13, v15, v7);
  TightbeamMessage.encoder()();
  TightbeamEncoder.encode(_:)(0xB78FA5A4AB7C3A6ELL);
  TightbeamEncoder.encode(_:)(v26);
  TightbeamEncoder.encode(_:)(v27);
  TightbeamEncoder.encode(_:)(v16);
  if (v16)
  {
    v20 = (rawValue + 32);
    do
    {
      v21 = *v20++;
      TightbeamEncoder.encode(_:)(v21);
      --v16;
    }

    while (v16);
  }

  TightbeamEncoder.complete()();
  v22 = v28;
  v23 = _s9Tightbeam16ClientConnectionC10sendOneway7messageyAA0A7MessageVn_tSo10tb_error_taYKF();
  if (v22)
  {
    v19 = v23;
    goto LABEL_10;
  }
}

uint64_t protocol witness for TightbeamServiceInitProtocol.init(endpoint:) in conformance asenaop2_service.Service@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for TightbeamEndpoint();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  (*(v5 + 16))(v8, a1, v4);
  v10 = type metadata accessor for ClientConnection();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = ClientConnection.init(endpoint:)();
  result = (*(v5 + 8))(a1, v4);
  *(v9 + 16) = v13;
  *a2 = v9;
  return result;
}

uint64_t asenaop2_callback.Server.init(endpoint:handler:)(uint64_t a1, uint64_t *a2)
{
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  v8 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  v12 = specialized asenaop2_callback.Server.init(endpoint:handler:)(a1, v10, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v12;
}

uint64_t _s24AsenAOP2TightbeamService17asenaop2_callbackC6ServerC6decodey0C00C7MessageVSgAG0C7DecoderVnSo10tb_error_taYKF@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a2;
  v39 = a3;
  v4 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Tightbeam0A7EncoderVSgMd, &_s9Tightbeam0A7EncoderVSgMR);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TightbeamEncoder();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v41 = v13;
  v42 = v12;
  v15(v12, 1, 1);
  v16 = specialized TightbeamDecoder.decode(as:)();
  v18 = v4[6];
  v17 = v4[7];
  __swift_project_boxed_opaque_existential_1(v4 + 3, v18);
  if (v16)
  {
    (*(v17 + 8))(v18, v17);
    v19 = v40;
    _s9Tightbeam0A7DecoderV7encoder5bytes12capabilitiesAA0A7EncoderVSi_SitSo10tb_error_taYKF();
    if (v19)
    {
      v20 = v43;
      v21 = v42;
      result = (*(v14 + 48))(v42, 1, v41);
      if (result != 1)
      {
        result = outlined destroy of TightbeamEncoder?(v21);
      }

      *v38 = v20;
      return result;
    }

    v40 = 0;
    v33 = v41;
    (v15)(v10, 0, 1, v41);
    v34 = *(v14 + 48);
    v31 = v42;
    if (v34(v42, 1, v33) != 1)
    {
      outlined destroy of TightbeamEncoder?(v31);
    }

    outlined init with take of TightbeamEncoder?(v10, v31);
    v30 = v39;
    v32 = (v34)(v31, 1, v33);
  }

  else
  {
    v23 = TightbeamDecoder.decode(as:)();
    v24 = TightbeamDecoder.decode(as:)();
    v25 = TightbeamDecoder.decode(as:)();
    MEMORY[0x28223BE20](v25);
    *(&v37 - 2) = a1;
    v26 = v40;
    v28 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnys6UInt64VG_s5UInt8Vs5NeverOTg5(_s24AsenAOP2TightbeamService17asenaop2_callbackC6ServerC6decodey0C00C7MessageVSgAG0C7DecoderVnSo10tb_error_taYKFs5UInt8Vs6UInt64VXEfU_TA, (&v37 - 4), 0, v27);
    v40 = v26;
    (*(v17 + 16))(v23, v24, v28, v18, v17);

    v29 = type metadata accessor for TightbeamDecoder();
    (*(*(v29 - 8) + 8))(a1, v29);
    v30 = v39;
    v31 = v42;
    v32 = (*(v14 + 48))(v42, 1, v41);
  }

  v35 = v32;
  if (v32 != 1)
  {
    if (v32)
    {
      outlined destroy of TightbeamEncoder?(v31);
      v35 = 1;
    }

    else
    {
      TightbeamEncoder.complete()();
    }
  }

  v36 = type metadata accessor for TightbeamMessage();
  return (*(*(v36 - 8) + 56))(v30, v35, 1, v36);
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnys6UInt64VG_s5UInt8Vs5NeverOTg5(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3, unint64_t a4)
{
  v7 = a4 - a3;
  if (a4 >= a3)
  {
    if ((a4 - a3) < 0)
    {
      goto LABEL_23;
    }

    goto LABEL_5;
  }

  if ((a3 - a4) >= 0)
  {
    v7 = a4 - a3;
LABEL_5:
    v8 = MEMORY[0x277D84F90];
    if (!v7)
    {
      return v8;
    }

    v21 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7 & ~(v7 >> 63), 0);
    if ((v7 & 0x8000000000000000) == 0)
    {
      v9 = 0;
      v8 = v21;
      v10 = a4 - a3;
      if (a4 < a3)
      {
        v10 = 0;
      }

      v17 = v10 + 1;
      while (1)
      {
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v19 = a3 + v9;
        a1(&v20, &v19);
        if (v4)
        {
          goto LABEL_24;
        }

        v12 = v20;
        v21 = v8;
        v14 = *(v8 + 16);
        v13 = *(v8 + 24);
        if (v14 >= v13 >> 1)
        {
          v15 = v20;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
          v12 = v15;
          v8 = v21;
        }

        *(v8 + 16) = v14 + 1;
        *(v8 + v14 + 32) = v12;
        if (a4 < a3)
        {
          goto LABEL_19;
        }

        if (v17 == ++v9)
        {
          goto LABEL_20;
        }

        if (v11 == v7)
        {
          return v8;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:

  __break(1u);
  return result;
}

uint64_t asenaop2_service.Server.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t _s24AsenAOP2TightbeamService16asenaop2_serviceC6ServerC0C021MessageDecodeProtocolAafGP6decodeyAF0cH0VSgAF0C7DecoderVnSo10tb_error_taYKFTWTm(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, int *))
{
  v8 = *v5;
  result = a5(a1, &v10);
  if (v6)
  {
    *a2 = v10;
  }

  return result;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t specialized asenaop2_callback.Server.init(endpoint:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for TightbeamEndpoint();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v21[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[3] = a4;
  v21[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  outlined init with copy of AsenAOP2ServiceConsumer(v21, a3 + 24);
  (*(v11 + 16))(v14, a1, v10);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Tightbeam17ServiceConnectionCy08AsenAOP2aB017asenaop2_callbackC6ServerCGMd, &_s9Tightbeam17ServiceConnectionCy08AsenAOP2aB017asenaop2_callbackC6ServerCGMR);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  *(a3 + 16) = ServiceConnection.init(endpoint:)();

  dispatch thunk of ServiceConnection.service.setter();
  (*(v11 + 8))(a1, v10);
  __swift_destroy_boxed_opaque_existential_1(v21);
  return a3;
}

uint64_t specialized asenaop2_callback.Server.__allocating_init(endpoint:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  (*(v9 + 16))(v12, a2, a4);
  return specialized asenaop2_callback.Server.init(endpoint:handler:)(a1, v12, v13, a4, a5);
}

uint64_t specialized TightbeamDecoder.decode(as:)()
{
  v0 = TightbeamDecoder.decode(as:)();
  switch(v0)
  {
    case 0xE2F9F1BBEBCD85CCLL:
      return 2;
    case 0xF54F078862657800:
      return 0;
    case 0xF2B8DD2CDA28ADE1:
      return 1;
  }

  _StringGuts.grow(_:)(49);

  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x245CD82B0](v2);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v0 = TightbeamDecoder.decode(as:)();
  if (v0 == 0xB78FA5A4AB7C3A6ELL)
  {
    return 0;
  }

  if (v0 == 0xEF01A4C452010489)
  {
    return 1;
  }

  _StringGuts.grow(_:)(50);

  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x245CD82B0](v2);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t outlined destroy of TightbeamEncoder?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Tightbeam0A7EncoderVSgMd, &_s9Tightbeam0A7EncoderVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of TightbeamEncoder?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Tightbeam0A7EncoderVSgMd, &_s9Tightbeam0A7EncoderVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s24AsenAOP2TightbeamService17asenaop2_callbackC6ServerC6decodey0C00C7MessageVSgAG0C7DecoderVnSo10tb_error_taYKFs5UInt8Vs6UInt64VXEfU_TA@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = TightbeamDecoder.decode(as:)();
  *a1 = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type tb_error_t and conformance tb_error_t(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t rpc_afk_interface_find_with_timeout(const char *a1, const char *a2, double a3, uint64_t a4, _DWORD *a5, _DWORD *a6)
{
  v16 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x80uLL, "%s-%s-%s", a1, a2, "fwd");
  interface = rpctools_find_interface(__str, "AFKEndpointInterface", a3);
  *a5 = interface;
  if (interface)
  {
    result = 0;
  }

  else
  {
    result = 5;
  }

  if (a6 && interface)
  {
    snprintf(__str, 0x80uLL, "%s-%s-%s", a1, a2, "rev");
    v13 = rpctools_find_interface(__str, "AFKEndpointInterface", a3);
    *a6 = v13;
    if (v13)
    {
      result = 0;
    }

    else
    {
      result = 5;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t rpctools_find_interface(const char *a1, char *name, double a3)
{
  v5 = IOServiceMatching(name);
  if (v5)
  {
    v6 = v5;
    v7 = *MEMORY[0x277CBECE8];
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, v5);
    CFRelease(v6);
    if (MutableCopy)
    {
      v9 = CFStringCreateWithCString(v7, a1, 0x8000100u);
      if (v9)
      {
        v10 = v9;
        CFDictionarySetValue(MutableCopy, @"IONameMatch", v9);
      }

      else
      {
        v10 = MutableCopy;
        MutableCopy = 0;
      }

      CFRelease(v10);
    }
  }

  else
  {
    MutableCopy = 0;
  }

  *notification = 0;
  Current = CFRunLoopGetCurrent();
  v12 = IONotificationPortCreate(*MEMORY[0x277CD2898]);
  if (v12)
  {
    v13 = v12;
    RunLoopSource = IONotificationPortGetRunLoopSource(v12);
    if (RunLoopSource)
    {
      v15 = RunLoopSource;
      v16 = *MEMORY[0x277CBF058];
      CFRunLoopAddSource(Current, RunLoopSource, *MEMORY[0x277CBF058]);
      if (IOServiceAddMatchingNotification(v13, "IOServiceFirstMatch", MutableCopy, DeviceMatched, notification, &notification[1]))
      {
        v17 = 0;
        notification[0] = 0;
      }

      else
      {
        v18 = IOIteratorNext(notification[1]);
        v17 = 0;
        notification[0] = v18;
        if (a3 != 0.0 && !v18)
        {
          if (a3 >= 0.0)
          {
            v19 = *MEMORY[0x277CBECE8];
            v20 = CFAbsoluteTimeGetCurrent();
            v17 = CFRunLoopTimerCreate(v19, v20 + a3, 0.0, 0, 0, MatchTimeout, 0);
            CFRunLoopAddTimer(Current, v17, v16);
          }

          else
          {
            v17 = 0;
          }

          CFRunLoopRun();
        }
      }

      CFRunLoopRemoveSource(Current, v15, v16);
      if (notification[1])
      {
        IOObjectRelease(notification[1]);
      }

      IONotificationPortDestroy(v13);
      if (v17)
      {
        CFRunLoopRemoveTimer(Current, v17, v16);
        CFRunLoopTimerInvalidate(v17);
        CFRelease(v17);
      }
    }

    else
    {
      IONotificationPortDestroy(v13);
    }
  }

  return notification[0];
}

void DeviceMatched(io_object_t *a1, io_iterator_t iterator)
{
  v3 = IOIteratorNext(iterator);
  if (v3)
  {
    *a1 = v3;
    Current = CFRunLoopGetCurrent();

    CFRunLoopStop(Current);
  }
}

void MatchTimeout()
{
  Current = CFRunLoopGetCurrent();

  CFRunLoopStop(Current);
}

char *rpc_get_matching_server(const char *a1)
{
  v5 = 0;
  servers = rpc_get_servers(0, a1, &v5);
  v2 = v5;
  if (servers || !*v5)
  {
    v3 = 0;
  }

  else
  {
    v3 = strdup(*v5);
  }

  rpc_release_server_array(v2);
  return v3;
}

uint64_t rpc_get_servers(const char *a1, const char *a2, void ***a3)
{
  v13 = 0;
  if (pthread_mutex_lock(&rpc_lock))
  {
    v6 = 0;
    v7 = 6;
  }

  else
  {
    v8 = rpc_static_connection_head_0;
    if (rpc_static_connection_head_0)
    {
      v9 = 0;
      do
      {
        v9 += rpc_is_match(v8, a1, a2);
        v8 = *(v8 + 224);
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }

    v7 = rpc_malloc(8 * v9 + 8, &v13);
    v6 = v13;
    if (v7)
    {
LABEL_9:
      rpc_release_server_array(v6);
      v6 = 0;
    }

    else
    {
      v7 = rpc_static_connection_head_0;
      if (rpc_static_connection_head_0)
      {
        v11 = 0;
        do
        {
          if (v11 >= v9)
          {
            v7 = 3;
            goto LABEL_9;
          }

          if (rpc_is_match(v7, a1, a2))
          {
            v12 = strdup(v7);
            if (!v12)
            {
              v7 = 4;
              goto LABEL_9;
            }

            v6[v11++] = v12;
          }

          v7 = *(v7 + 224);
        }

        while (v7);
      }
    }

    pthread_mutex_unlock(&rpc_lock);
  }

  *a3 = v6;
  return v7;
}

void rpc_release_server_array(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      v3 = 1;
      do
      {
        free(v2);
        v2 = a1[v3++];
      }

      while (v2);
    }

    free(a1);
  }
}

void **rpc_get_all_matching_servers(const char *a1)
{
  v2 = 0;
  rpc_get_servers(0, a1, &v2);
  return v2;
}

char *rpc_get_server_by_name(const char *a1)
{
  v7 = 0;
  servers = rpc_get_servers(a1, 0, &v7);
  v3 = 0;
  v4 = v7;
  if (!servers)
  {
    v5 = *v7;
    if (!*v7)
    {
      v5 = a1;
    }

    v3 = strdup(v5);
  }

  rpc_release_server_array(v4);
  return v3;
}

void rpc_release_server(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

uint64_t rpc_interface_open_with_timeout(const char *a1, const char *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, double a6)
{
  if (!pthread_mutex_lock(&rpc_lock))
  {
    v13 = rpc_static_connection_head_0;
    if (!rpc_static_connection_head_0)
    {
      goto LABEL_7;
    }

    while (strcmp(v13, a1) || strcmp((v13 + 128), a2))
    {
      v13 = *(v13 + 224);
      if (!v13)
      {
        goto LABEL_7;
      }
    }

    v12 = (*(v13 + 192))(*(v13 + 200), a3, a4, a5);
    if (v12 == 5)
    {
LABEL_7:
      v17 = 0;
      if (a5)
      {
        v14 = &v17;
      }

      else
      {
        v14 = 0;
      }

      v15 = rpc_afk_interface_find_with_timeout(a1, a2, a6, a3, &v17 + 1, v14);
      if (v15)
      {
        return v15;
      }

      *a4 = tb_endpoint_create_with_data();
      if (a5)
      {
        *a5 = tb_endpoint_create_with_data();
      }

      v12 = 0;
    }

    pthread_mutex_unlock(&rpc_lock);
    return v12;
  }

  return 6;
}

uint64_t rpc_register_static_route(const char *a1, const char *a2, const char *a3, uint64_t a4, uint64_t a5)
{
  if (strlen(a1) > 0x3F || strlen(a2) > 0x3F || strlen(a3) > 0x3F)
  {
    return 3;
  }

  v10 = malloc_type_malloc(0xE8uLL, 0xF83BD267uLL);
  if (!v10)
  {
    return 4;
  }

  v11 = v10;
  v10[28] = 0;
  *(v10 + 12) = 0u;
  *(v10 + 13) = 0u;
  *(v10 + 10) = 0u;
  *(v10 + 11) = 0u;
  *(v10 + 9) = 0u;
  *(v10 + 6) = 0u;
  *(v10 + 7) = 0u;
  *(v10 + 5) = 0u;
  *(v10 + 2) = 0u;
  *(v10 + 3) = 0u;
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 8) = 0u;
  *(v10 + 4) = 0u;
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  v11[24] = a4;
  v11[25] = a5;
  if (pthread_mutex_lock(&rpc_lock))
  {
    free(v11);
    return 6;
  }

  else
  {
    v11[28] = rpc_static_connection_head_0;
    rpc_static_connection_head_0 = v11;
    pthread_mutex_unlock(&rpc_lock);
    return 0;
  }
}

uint64_t rpc_malloc(size_t a1, void *a2)
{
  v4 = malloc_type_malloc(a1, 0xF83BD267uLL);
  *a2 = v4;
  if (!v4)
  {
    return 4;
  }

  bzero(v4, a1);
  return 0;
}

uint64_t rpc_is_match(char *__s1, const char *a2, const char *a3)
{
  if (!a2)
  {
    v5 = 0;
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    return v6 | v5;
  }

  v5 = strcmp(__s1, a2) == 0;
  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = strcmp(__s1 + 64, a3) == 0;
  return v6 | v5;
}

uint64_t TightbeamDecoder.decode(as:)()
{
  return MEMORY[0x2821D8F18]();
}

{
  return MEMORY[0x2821D8F40]();
}