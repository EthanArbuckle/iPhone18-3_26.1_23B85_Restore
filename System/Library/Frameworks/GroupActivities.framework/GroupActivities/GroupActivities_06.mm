char *CKShareGroupSessionProvider.deinit()
{
  v1 = v0;
  v2 = *v0;
  if (one-time initialization token for ckShareGroupSessionProvider != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.ckShareGroupSessionProvider);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22 = v7;
    *v6 = 136315138;
    v8 = (*(*v0 + 408))();
    v10 = v9;

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, &v22);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1AEE80000, v4, v5, "%s Deinit'd", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1B2715BA0](v7, -1, -1);
    MEMORY[0x1B2715BA0](v6, -1, -1);
  }

  else
  {
  }

  v12 = *(v1 + 3);

  v13 = *(v1 + 4);

  v14 = *(v1 + 5);

  (*(*(*(v2 + 80) - 8) + 8))(&v1[*(*v1 + 120)]);
  outlined destroy of NSObject?(&v1[*(*v1 + 128)], &_s15GroupActivities6Member_pSgMd, &_s15GroupActivities6Member_pSgMR);
  v15 = *&v1[*(*v1 + 136)];

  v16 = *(*v1 + 144);
  v17 = type metadata accessor for AsyncSerialQueue();
  (*(*(v17 - 8) + 8))(&v1[v16], v17);

  v18 = *(*v1 + 160);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo7CKShareCGMd, &_s7Combine9PublishedVySo7CKShareCGMR);
  (*(*(v19 - 8) + 8))(&v1[v18], v19);
  v20 = *&v1[*(*v1 + 168)];

  return v1;
}

uint64_t CKShareGroupSessionProvider.__deallocating_deinit()
{
  CKShareGroupSessionProvider.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t CKShareGroupSessionProvider.description.getter()
{
  v1 = *v0;
  _StringGuts.grow(_:)(49);
  MEMORY[0x1B27141F0](0xD00000000000001CLL, 0x80000001AF01BD30);
  v2 = *(v1 + 80);
  v3 = _typeName(_:qualified:)();
  MEMORY[0x1B27141F0](v3);

  MEMORY[0x1B27141F0](0x203A666C6573283ELL, 0xE800000000000000);
  _print_unlocked<A, B>(_:_:)();
  v4 = MEMORY[0x1B27141F0](0x203A6469202CLL, 0xE600000000000000);
  v5 = (*(*v0 + 176))(v4);
  MEMORY[0x1B27141F0](v5);

  MEMORY[0x1B27141F0](41, 0xE100000000000000);
  return 0;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CKShareGroupSessionProvider<A>@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 176))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t CKShareGroupSessionProvider.fetchMembershipUpdate()()
{
  v1[2] = v0;
  v2 = type metadata accessor for AsyncSerialQueue();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](CKShareGroupSessionProvider.fetchMembershipUpdate(), 0, 0);
}

{
  v22 = v0;
  if (one-time initialization token for ckShareGroupSessionProvider != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.ckShareGroupSessionProvider);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[2];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136315138;
    v9 = *(*v6 + 408);

    v11 = v9(v10);
    v13 = v12;

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v21);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_1AEE80000, v3, v4, "%s Received request to force fetch membership.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B2715BA0](v8, -1, -1);
    MEMORY[0x1B2715BA0](v7, -1, -1);
  }

  else
  {
  }

  v15 = v0[5];
  (*(*v0[2] + 272))();
  v16 = *(MEMORY[0x1E6997520] + 4);

  v17 = swift_task_alloc();
  v0[6] = v17;
  *v17 = v0;
  v17[1] = CKShareGroupSessionProvider.fetchMembershipUpdate();
  v18 = v0[5];
  v19 = v0[2];

  return MEMORY[0x1EEDF8788]();
}

{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v9 = *v1;
  *(*v1 + 56) = v0;

  (*(v4 + 8))(v3, v5);

  if (v0)
  {
    v7 = CKShareGroupSessionProvider.fetchMembershipUpdate();
  }

  else
  {
    v7 = CKShareGroupSessionProvider.fetchMembershipUpdate();
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t closure #1 in CKShareGroupSessionProvider.fetchMembershipUpdate()(uint64_t a1, void *a2)
{
  *(v2 + 152) = a2;
  *(v2 + 160) = *a2;
  return MEMORY[0x1EEE6DFA0](closure #1 in CKShareGroupSessionProvider.fetchMembershipUpdate(), 0, 0);
}

uint64_t closure #1 in CKShareGroupSessionProvider.fetchMembershipUpdate()()
{
  v1 = v0[19];
  v2 = (*v1 + 296);
  v3 = *v2;
  v4 = (*v2)();
  v5 = [v4 sharedCloudDatabase];

  v6 = *(*v1 + 320);
  v7 = v6();
  v8 = [v7 recordID];

  v9 = [v8 zoneID];
  v10 = [v9 ownerName];

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = *MEMORY[0x1E695B728];
  if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v15)
  {

    goto LABEL_8;
  }

  v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v17)
  {
LABEL_8:
    v19 = v0[19];
    v20 = (v3)(v18);
    v21 = [v20 privateCloudDatabase];

    v5 = v21;
  }

  v0[21] = v5;
  v22 = v0[19];
  v23 = (v6)(v18);
  v24 = [v23 recordID];
  v0[22] = v24;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = closure #1 in CKShareGroupSessionProvider.fetchMembershipUpdate();
  v25 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo8CKRecordCs5Error_pGMd, &_sSccySo8CKRecordCs5Error_pGMR);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable (@unowned CKRecord?, @unowned NSError?) -> () with result type CKRecord;
  v0[13] = &block_descriptor_4;
  v0[14] = v25;
  [v5 fetchRecordWithID:v24 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = closure #1 in CKShareGroupSessionProvider.fetchMembershipUpdate();
  }

  else
  {
    v3 = closure #1 in CKShareGroupSessionProvider.fetchMembershipUpdate();
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v39 = v0;
  v1 = *(v0 + 144);

  if (one-time initialization token for ckShareGroupSessionProvider != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 152);
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.ckShareGroupSessionProvider);

  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 152);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38[0] = v37;
    *v9 = 136315394;
    v11 = (*(*v8 + 408))();
    v13 = v12;

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, v38);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2112;
    *(v9 + 14) = v4;
    *v10 = v4;
    v15 = v4;
    _os_log_impl(&dword_1AEE80000, v5, v6, "%s received manually fetched record: %@", v9, 0x16u);
    outlined destroy of NSObject?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B2715BA0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x1B2715BA0](v37, -1, -1);
    MEMORY[0x1B2715BA0](v9, -1, -1);
  }

  else
  {
  }

  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (v16)
  {
    v17 = v16;
    v18 = *(**(v0 + 152) + 400);
    v4 = v4;
    v18(v17);
  }

  else
  {
    v19 = *(v0 + 152);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v0 + 152);
    if (v22)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v38[0] = v25;
      *v24 = 136315138;
      v26 = (*(*v23 + 408))();
      v28 = v27;

      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, v38);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_1AEE80000, v20, v21, "%s Received invalid record (non-share) from manual fetch.", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x1B2715BA0](v25, -1, -1);
      MEMORY[0x1B2715BA0](v24, -1, -1);
    }

    else
    {
    }

    v30 = *(v0 + 160);
    v31 = *(v0 + 168);
    v32 = *(v30 + 80);
    v33 = *(v30 + 88);
    type metadata accessor for CKShareGroupSessionProvider.Errors();
    swift_getWitnessTable();
    swift_allocError();
    *v34 = 1;
    swift_willThrow();
  }

  v35 = *(v0 + 8);

  return v35();
}

{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[21];
  swift_willThrow();

  v4 = v0[23];
  v5 = v0[1];

  return v5();
}

uint64_t @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable (@unowned CKRecord?, @unowned NSError?) -> () with result type CKRecord(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x1EEE6DEE8](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

uint64_t protocol witness for ErrorRecoveryGroupSessionProvider.fetchMembershipUpdate() in conformance CKShareGroupSessionProvider<A>()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return CKShareGroupSessionProvider.fetchMembershipUpdate()();
}

uint64_t partial apply for closure #1 in CKShareGroupSessionProvider.init(id:activity:share:container:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return closure #1 in CKShareGroupSessionProvider.init(id:activity:share:container:)(a1, v4, v5, v6);
}

uint64_t partial apply for closure #2 in CKShareGroupSessionProvider.init(id:activity:share:container:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return closure #2 in CKShareGroupSessionProvider.init(id:activity:share:container:)(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in CKShareGroupSessionProvider.fetchMembershipUpdate()(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return closure #1 in CKShareGroupSessionProvider.fetchMembershipUpdate()(a1, v1);
}

uint64_t instantiation function for generic protocol witness table for CKShareGroupSessionProvider<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void type metadata completion function for CKShareGroupSessionProvider(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v8 = *(v2 - 8) + 64;
    v4 = type metadata accessor for AsyncSerialQueue();
    if (v5 <= 0x3F)
    {
      v9 = *(v4 - 8) + 64;
      type metadata accessor for Published<CKShare>();
      if (v7 <= 0x3F)
      {
        v10 = *(v6 - 8) + 64;
        swift_initClassMetadata2();
      }
    }
  }
}

void type metadata accessor for Published<CKShare>()
{
  if (!lazy cache variable for type metadata for Published<CKShare>)
  {
    type metadata accessor for OS_dispatch_queue(255, &lazy cache variable for type metadata for CKShare, 0x1E695BAC8);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<CKShare>);
    }
  }
}

uint64_t partial apply for closure #1 in closure #2 in CKShareGroupSessionProvider.init(id:activity:share:container:)()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return closure #1 in closure #2 in CKShareGroupSessionProvider.init(id:activity:share:container:)(v2, v3);
}

unint64_t lazy protocol witness table accessor for type Published<CKShare>.Publisher and conformance Published<A>.Publisher()
{
  result = lazy protocol witness table cache variable for type Published<CKShare>.Publisher and conformance Published<A>.Publisher;
  if (!lazy protocol witness table cache variable for type Published<CKShare>.Publisher and conformance Published<A>.Publisher)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine9PublishedV9PublisherVySo7CKShareC_GMd, &_s7Combine9PublishedV9PublisherVySo7CKShareC_GMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Published<CKShare>.Publisher and conformance Published<A>.Publisher);
  }

  return result;
}

uint64_t closure #1 in closure #1 in GroupSessionTable.cleanUpIfNotPresent(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v87 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = v87 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = v87 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = v87 - v21;
  if (!*(a3 + 16) || (v23 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v24 & 1) == 0))
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    __swift_project_value_buffer(v45, static Log.default);
    (*(v7 + 16))(v22, a1, v6);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v97[0] = v49;
      *v48 = 136315138;
      _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID);
      v50 = dispatch thunk of CustomStringConvertible.description.getter();
      v52 = v51;
      (*(v7 + 8))(v22, v6);
      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, v97);

      *(v48 + 4) = v53;
      _os_log_impl(&dword_1AEE80000, v46, v47, "Allowing session id: %s to be cleaned up and invalidated because session is not present in the list", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x1B2715BA0](v49, -1, -1);
      MEMORY[0x1B2715BA0](v48, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v22, v6);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v54 = *(a2 + 8);
      ObjectType = swift_getObjectType();
      (*(v54 + 40))(ObjectType, v54);
      swift_unknownObjectRelease();
    }

    return 1;
  }

  v95 = *(*(a3 + 56) + 8 * v23);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  v26 = __swift_project_value_buffer(v25, static Log.default);
  outlined init with copy of GroupSessionTable.Storage(a2, v97);
  v92 = *(v7 + 16);
  v93 = v7 + 16;
  v92(v20, a1, v6);
  v94 = v26;
  v27 = v7;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v91 = v11;
    v31 = v30;
    v89 = swift_slowAlloc();
    v96 = v89;
    *v31 = 134218498;
    *(v31 + 4) = v95;
    *(v31 + 12) = 2048;
    v88 = v29;
    v32 = v27;
    v87[1] = v27;
    v33 = v97[2];
    outlined destroy of GroupSessionTable.Storage(v97);
    *(v31 + 14) = v33;
    *(v31 + 22) = 2080;
    _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID);
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v90 = v17;
    v35 = a2;
    v36 = v14;
    v38 = v37;
    v39 = *(v32 + 8);
    (v39)(v20, v6);
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v38, &v96);
    v14 = v36;
    a2 = v35;
    v17 = v90;

    *(v31 + 24) = v40;
    v41 = v95;
    _os_log_impl(&dword_1AEE80000, v28, v88, "Comparing the current distributionCount %ld to the cached distribution count %ld for sessionID %s", v31, 0x20u);
    v42 = v89;
    __swift_destroy_boxed_opaque_existential_0(v89);
    MEMORY[0x1B2715BA0](v42, -1, -1);
    v43 = v31;
    v11 = v91;
    MEMORY[0x1B2715BA0](v43, -1, -1);

    v44 = v39;
  }

  else
  {
    outlined destroy of GroupSessionTable.Storage(v97);

    v44 = *(v27 + 8);
    (v44)(v20, v6);
    v41 = v95;
  }

  if (*(a2 + 16) >= v41)
  {
    return 0;
  }

  if (!swift_unknownObjectWeakLoadStrong())
  {
    v92(v17, a1, v6);
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v97[0] = v72;
      *v71 = 136315138;
      _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID);
      v73 = dispatch thunk of CustomStringConvertible.description.getter();
      v75 = v74;
      (v44)(v17, v6);
      v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v75, v97);

      *(v71 + 4) = v76;
      _os_log_impl(&dword_1AEE80000, v69, v70, "Allowing session id: %s to be cleaned up because we don't have a session tracked.", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v72);
      MEMORY[0x1B2715BA0](v72, -1, -1);
      MEMORY[0x1B2715BA0](v71, -1, -1);

      return 1;
    }

    v86 = v17;
LABEL_29:
    (v44)(v86, v6);
    return 1;
  }

  v57 = *(a2 + 8);
  v58 = swift_getObjectType();
  if ((*(v57 + 24))(v58, v57))
  {
    v92(v11, a1, v6);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v95 = v44;
      v62 = v11;
      v63 = v61;
      v64 = swift_slowAlloc();
      v97[0] = v64;
      *v63 = 136315138;
      _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID);
      v65 = dispatch thunk of CustomStringConvertible.description.getter();
      v67 = v66;
      (v95)(v62, v6);
      v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v67, v97);

      *(v63 + 4) = v68;
      _os_log_impl(&dword_1AEE80000, v59, v60, "Allowing session id: %s to be cleaned up because the session is invalid", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v64);
      MEMORY[0x1B2715BA0](v64, -1, -1);
      MEMORY[0x1B2715BA0](v63, -1, -1);
      swift_unknownObjectRelease();

      return 1;
    }

    swift_unknownObjectRelease();
    v86 = v11;
    goto LABEL_29;
  }

  v92(v14, a1, v6);
  v77 = Logger.logObject.getter();
  v78 = v14;
  v79 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v77, v79))
  {
    v80 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v97[0] = v95;
    *v80 = 136315138;
    _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID);
    v81 = dispatch thunk of CustomStringConvertible.description.getter();
    v83 = v82;
    (v44)(v78, v6);
    v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v83, v97);

    *(v80 + 4) = v84;
    _os_log_impl(&dword_1AEE80000, v77, v79, "Not allowing session id: %s to be cleaned up because app already has an un-joined valid session", v80, 0xCu);
    v85 = v95;
    __swift_destroy_boxed_opaque_existential_0(v95);
    MEMORY[0x1B2715BA0](v85, -1, -1);
    MEMORY[0x1B2715BA0](v80, -1, -1);
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
    (v44)(v78, v6);
  }

  return 0;
}

uint64_t GroupSessionTable.registerIfNotPresent<A>(identifier:initialValue:registrationHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v29 = a5;
  v30 = a4;
  v31 = a1;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v7 + 16);

  Lock.lock()();

  v18 = swift_beginAccess();
  if (!*(*(v8 + 24) + 16) || (v19 = *(v8 + 24), , specialized __RawDictionaryStorage.find<A>(_:)(v31), v21 = v20, v18 = , (v21 & 1) == 0))
  {
    MEMORY[0x1EEE9AC00](v18);
    *(&v29 - 4) = a6;
    *(&v29 - 3) = a7;
    v28 = a3;
    v27 = a6;
    tryLog<A>(_:_:function:line:)();
    v22 = v32[0];
    if (v32[0])
    {
      (*(v13 + 16))(v16, v31, v12);
      v23 = *(a7 + 32);
      swift_unknownObjectRetain();
      v24 = v23(a6, a7);
      v32[1] = a7;
      swift_unknownObjectWeakInit();
      swift_unknownObjectRelease();
      v32[2] = v24;
      swift_beginAccess();
      specialized Dictionary.subscript.setter(v32, v16);
      swift_endAccess();
      v30(v22);
      swift_unknownObjectRelease();
    }
  }

  v25 = *(v8 + 16);

  Lock.unlock()();
}

uint64_t GroupSessionTable.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t GroupSessionTable.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t GroupSessionTable.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = type metadata accessor for Lock();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 16) = Lock.init()();
  *(v0 + 24) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_15GroupActivities0E12SessionTableC7Storage33_64E0A582F9EAD21E39070881D97E5C2ALLVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  return v0;
}

uint64_t GroupSessionTable.init()()
{
  v1 = type metadata accessor for Lock();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 16) = Lock.init()();
  *(v0 + 24) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_15GroupActivities0E12SessionTableC7Storage33_64E0A582F9EAD21E39070881D97E5C2ALLVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  return v0;
}

uint64_t partial apply for implicit closure #1 in GroupSessionTable.registerIfNotPresent<A>(identifier:initialValue:registrationHandler:)@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  result = v4();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(char a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();

  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v6);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
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
      _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID);
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

{
  v22 = a1;
  v4 = type metadata accessor for CodingUserInfoKey();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v21 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v6 + 16);
    v12 = v6 + 16;
    v13 = v14;
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    do
    {
      v17 = v12;
      v13(v8, *(v23 + 48) + v15 * v10, v4);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v16)(v8, v4);
      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      v12 = v17;
    }

    while (((*(v21 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

{
  v5 = type metadata accessor for Participant();
  v6 = *(*(v5 - 1) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(v7 + 72);
    do
    {
      outlined init with copy of Participant(*(v2 + 48) + v13 * v11, v9);
      if ((static UUID.== infix(_:_:)() & 1) == 0)
      {
        goto LABEL_4;
      }

      v14 = v5[5];
      v15 = *&v9[v14];
      v16 = *&v9[v14 + 8];
      v17 = (a1 + v14);
      v18 = v15 == *v17 && v16 == v17[1];
      if (!v18 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *&v9[v5[6]] != *(a1 + v5[6]))
      {
        goto LABEL_4;
      }

      v19 = v5[7];
      v20 = &v9[v19];
      v21 = *&v9[v19 + 8];
      v22 = (a1 + v19);
      v23 = v22[1];
      if (v21)
      {
        if (!v23)
        {
          goto LABEL_4;
        }

        v24 = *v20 == *v22 && v21 == v23;
        if (!v24 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v23)
      {
        goto LABEL_4;
      }

      if (v9[v5[8]] == *(a1 + v5[8]) && v9[v5[9]] == *(a1 + v5[9]))
      {
        outlined destroy of Participant(v9);
        return v11;
      }

LABEL_4:
      outlined destroy of Participant(v9);
      v11 = (v11 + 1) & v12;
    }

    while (((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

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

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v6 = 0xD000000000000013;
          v7 = 0x80000001AF01A370;
        }

        else
        {
          v6 = 0xD000000000000010;
          v7 = 0x80000001AF01A390;
        }
      }

      else
      {
        v7 = 0xE600000000000000;
        v6 = 0x627553627550;
      }

      if (a1)
      {
        if (a1 == 1)
        {
          v8 = 0xD000000000000013;
        }

        else
        {
          v8 = 0xD000000000000010;
        }

        if (a1 == 1)
        {
          v9 = 0x80000001AF01A370;
        }

        else
        {
          v9 = 0x80000001AF01A390;
        }

        if (v6 != v8)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v9 = 0xE600000000000000;
        if (v6 != 0x627553627550)
        {
          goto LABEL_19;
        }
      }

      if (v7 == v9)
      {

        return v4;
      }

LABEL_19:
      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v10 & 1) == 0)
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

unint64_t *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy10Foundation4UUIDV15GroupActivities0K12SessionTableC7Storage33_64E0A582F9EAD21E39070881D97E5C2ALLVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab28VKXEfU_10Foundation4UUIDV_15k14Activities0J12mn14C7Storage33_64pqrstuvW7ALLVTG5AQxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAjPIsgnndzo_Tf1nc_n04_s15k14Activities0A12mn76C19cleanUpIfNotPresentyySDy10Foundation4UUIDVSiGFyyXEfU_SbAG_AC7Storage33_64pqrstuvW10ALLVtXEfU_SDyAJSiGTf1nnc_n(unint64_t *result, uint64_t a2, void *a3, uint64_t a4)
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

    v8 = specialized closure #1 in _NativeDictionary.filter(_:)(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GroupSessionTable.Storage(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for GroupSessionTable.Storage(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
      *(result + 8) = 1;
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

uint64_t outlined init with copy of Participant(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Participant();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Participant(uint64_t a1)
{
  v2 = type metadata accessor for Participant();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Archived.init(from:)(uint64_t *a1, uint64_t a2)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v12, v13);
    if (dispatch thunk of SingleValueDecodingContainer.decodeNil()())
    {
      a2 = 0;
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(v12, v13);
      lazy protocol witness table accessor for type Data and conformance Data();
      dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
      v6 = objc_allocWithZone(MEMORY[0x1E696ACD0]);
      outlined copy of Data._Representation(v10, v11);
      v7 = specialized @nonobjc NSKeyedUnarchiver.init(forReadingFrom:)();
      outlined consume of Data._Representation(v10, v11);
      [v7 _enableStrictSecureDecodingMode];
      v8 = *MEMORY[0x1E696A508];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      a2 = NSCoder.decodeTopLevelObject<A>(of:forKey:)();
      outlined consume of Data._Representation(v10, v11);
    }

    __swift_destroy_boxed_opaque_existential_0(v12);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return a2;
}

uint64_t Archived.encode(to:)(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  if (a2)
  {
    v4 = objc_opt_self();
    v14 = 0;
    v5 = a2;
    v6 = [v4 archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v14];
    v7 = v14;
    if (v6)
    {
      v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      v14 = v8;
      v15 = v10;
      __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
      lazy protocol witness table accessor for type Data and conformance Data();
      dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
      outlined consume of Data._Representation(v14, v15);
    }

    else
    {
      v11 = v7;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  else
  {
    __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
    dispatch thunk of SingleValueEncodingContainer.encodeNil()();
  }

  result = __swift_destroy_boxed_opaque_existential_0(v16);
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t static Archived.== infix(_:_:)(void *a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      v3 = a2;
      v4 = a1;
      v5 = static NSObject.== infix(_:_:)();

      if (v5)
      {
        return 1;
      }
    }
  }

  else if (!a2)
  {
    return 1;
  }

  return 0;
}

uint64_t protocol witness for Decodable.init(from:) in conformance Archived<A>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = Archived.init(from:)(a1, *(a2 + 16));
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

id specialized @nonobjc NSKeyedUnarchiver.init(forReadingFrom:)()
{
  v7[1] = *MEMORY[0x1E69E9840];
  isa = Data._bridgeToObjectiveC()().super.isa;
  v7[0] = 0;
  v2 = [v0 initForReadingFromData:isa error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v5 = *MEMORY[0x1E69E9840];
  return v2;
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

uint64_t type metadata instantiation function for Archived()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for Archived(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for Archived(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

Swift::Void __swiftcall GroupSession.addAnalyticsReport(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.default);
  swift_retain_n();

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21[0] = v8;
    *v7 = 136315394;
    v9 = Dictionary.description.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, v21);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v12 = GroupSession.description.getter();
    v14 = v13;

    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, v21);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_1AEE80000, v5, v6, "Application called addAnalyticsReport(%s) on %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v8, -1, -1);
    MEMORY[0x1B2715BA0](v7, -1, -1);
  }

  else
  {
  }

  v16 = *&v2[*(*v2 + 296)];
  v17 = swift_allocObject();
  v17[2]._rawValue = v2;
  v17[3]._rawValue = a1._rawValue;
  v18 = swift_allocObject();
  *(v18 + 16) = partial apply for closure #1 in GroupSession.addAnalyticsReport(_:);
  *(v18 + 24) = v17;
  v21[4] = _sIg_Ieg_TRTA_0;
  v21[5] = v18;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 1107296256;
  v21[2] = thunk for @escaping @callee_guaranteed () -> ();
  v21[3] = &block_descriptor_5;
  v19 = _Block_copy(v21);

  dispatch_sync(v16, v19);
  _Block_release(v19);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

uint64_t closure #1 in GroupSession.addAnalyticsReport(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 288);
  swift_beginAccess();
  v5 = *(a1 + v4);
  v6 = XPCClient.queue.getter();

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = partial apply for closure #1 in closure #1 in GroupSession.addAnalyticsReport(_:);
  *(v8 + 24) = v7;
  aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_13_0;
  v9 = _Block_copy(aBlock);

  dispatch_sync(v6, v9);

  _Block_release(v9);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  return result;
}

void closure #1 in closure #1 in GroupSession.addAnalyticsReport(_:)(uint64_t a1)
{
  v2 = *(*a1 + 288);
  swift_beginAccess();
  v3 = *(a1 + v2);
  XPCClient.withHost(body:errorHandler:)();
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm_4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void partial apply for closure #1 in closure #1 in closure #1 in GroupSession.addAnalyticsReport(_:)(void **a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  [v3 addAnalyticsReport_];
}

uint64_t ShareChangeObserver.__allocating_init(share:container:)(void *a1, void *a2)
{
  v4 = swift_allocObject();
  ShareChangeObserver.init(share:container:)(a1, a2);
  return v4;
}

uint64_t ShareChangeObserver.shareChanges.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationV15BufferingPolicyOySo7CKShareCs5Error_p__GMd, &_sScs12ContinuationV15BufferingPolicyOySo7CKShareCs5Error_p__GMR);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v6 - v3;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CKShare, 0x1E695BAC8);
  (*(v1 + 104))(v4, *MEMORY[0x1E69E8790], v0);
  return AsyncThrowingStream.init<>(_:bufferingPolicy:_:)();
}

uint64_t closure #1 in ShareChangeObserver.shareChanges.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVySo7CKShareCs5Error_p_GMd, &_sScs12ContinuationVySo7CKShareCs5Error_p_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v17 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v5 + 16))(v8, a1, v4);
  v14 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  *(v15 + 4) = a2;
  (*(v5 + 32))(&v15[v14], v8, v4);

  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v12, &async function pointer to partial apply for closure #1 in closure #1 in ShareChangeObserver.shareChanges.getter, v15);
  return AsyncThrowingStream.Continuation.onTermination.setter();
}

uint64_t closure #1 in closure #1 in ShareChangeObserver.shareChanges.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v6 = type metadata accessor for CKRecordChange.ChangeType();
  v5[9] = v6;
  v7 = *(v6 - 8);
  v5[10] = v7;
  v8 = *(v7 + 64) + 15;
  v5[11] = swift_task_alloc();
  v9 = *(*(type metadata accessor for CKRecordObserver.RecordChanges.Iterator() - 8) + 64) + 15;
  v5[12] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss19AsyncFilterSequenceV8IteratorVySo16CKRecordObserverC12CloudKitCodeE13RecordChangesV_GMd, &_ss19AsyncFilterSequenceV8IteratorVySo16CKRecordObserverC12CloudKitCodeE13RecordChangesV_GMR);
  v5[13] = v10;
  v11 = *(v10 - 8);
  v5[14] = v11;
  v12 = *(v11 + 64) + 15;
  v5[15] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss19AsyncFilterSequenceVySo16CKRecordObserverC12CloudKitCodeE13RecordChangesVGMd, &_ss19AsyncFilterSequenceVySo16CKRecordObserverC12CloudKitCodeE13RecordChangesVGMR);
  v5[16] = v13;
  v14 = *(v13 - 8);
  v5[17] = v14;
  v15 = *(v14 + 64) + 15;
  v5[18] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVySo7CKShareCs5Error_p_GMd, &_sScs12ContinuationVySo7CKShareCs5Error_p_GMR);
  v5[19] = v16;
  v17 = *(v16 - 8);
  v5[20] = v17;
  v18 = *(v17 + 64) + 15;
  v5[21] = swift_task_alloc();
  v19 = type metadata accessor for CKRecordObserver.RecordChanges();
  v5[22] = v19;
  v20 = *(v19 - 8);
  v5[23] = v20;
  v21 = *(v20 + 64) + 15;
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in ShareChangeObserver.shareChanges.getter, 0, 0);
}

uint64_t closure #1 in closure #1 in ShareChangeObserver.shareChanges.getter()
{
  v1 = *(v0 + 200);
  v3 = *(v0 + 160);
  v2 = *(v0 + 168);
  v4 = *(v0 + 152);
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);
  v7 = *(v6 + 24);
  CKRecordObserver.recordChanges.getter();
  (*(v3 + 16))(v2, v5, v4);
  v8 = *(v6 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v6 + 32) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8[2] + 1, 1, v8);
    *(v6 + 32) = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  v12 = v11 + 1;
  if (v11 >= v10 >> 1)
  {
    v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v10 > 1, v11 + 1, 1, v8);
    v12 = v11 + 1;
    v8 = v26;
  }

  v13 = *(v0 + 192);
  v14 = *(v0 + 200);
  v15 = *(v0 + 176);
  v16 = *(v0 + 184);
  v18 = *(v0 + 160);
  v17 = *(v0 + 168);
  v20 = *(v0 + 144);
  v19 = *(v0 + 152);
  v29 = *(v0 + 120);
  v27 = *(v0 + 128);
  v28 = *(v0 + 96);
  v21 = *(v0 + 56);
  v8[2] = v12;
  (*(v18 + 32))(v8 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v11, v17, v19);
  *(v6 + 32) = v8;
  (*(v16 + 16))(v13, v14, v15);
  lazy protocol witness table accessor for type CKRecordObserver.RecordChanges and conformance CKRecordObserver.RecordChanges(&lazy protocol witness table cache variable for type CKRecordObserver.RecordChanges and conformance CKRecordObserver.RecordChanges, MEMORY[0x1E6994930]);

  AsyncFilterSequence.init(_:isIncluded:)();
  MEMORY[0x1B2714D00](v27);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  AsyncFilterSequence.isIncluded.getter();
  AsyncFilterSequence.Iterator.init(_:isIncluded:)();
  v22 = *MEMORY[0x1E6994918];
  *(v0 + 232) = *MEMORY[0x1E6994908];
  *(v0 + 236) = v22;
  *(v0 + 240) = *MEMORY[0x1E6994910];
  v23 = swift_task_alloc();
  *(v0 + 208) = v23;
  *v23 = v0;
  v23[1] = closure #1 in closure #1 in ShareChangeObserver.shareChanges.getter;
  v24 = *(v0 + 120);

  return _ss19AsyncFilterSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFSo16CKRecordObserverC12CloudKitCodeE13RecordChangesV_Tg5(0, 0);
}

{
  v68 = v0;
  v1 = *(v0 + 216);
  if (v1)
  {
    v2 = *(v0 + 232);
    v4 = *(v0 + 80);
    v3 = *(v0 + 88);
    v5 = *(v0 + 72);
    v6 = *(v0 + 216);
    CKRecordChange.changeType.getter();
    v7 = (*(v4 + 88))(v3, v5);
    if (v7 == v2 || v7 == *(v0 + 236))
    {
      v8 = *(v0 + 88);
      v9 = *(v0 + 64);
      (*(*(v0 + 80) + 96))(v8, *(v0 + 72));
      v10 = *v8;
      v11 = v10;
      yieldShareFromRecord #1 (_:) in closure #1 in closure #1 in ShareChangeObserver.shareChanges.getter(v10, v1);

LABEL_5:
      v12 = swift_task_alloc();
      *(v0 + 208) = v12;
      *v12 = v0;
      v12[1] = closure #1 in closure #1 in ShareChangeObserver.shareChanges.getter;
      v13 = *(v0 + 120);

      return _ss19AsyncFilterSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFSo16CKRecordObserverC12CloudKitCodeE13RecordChangesV_Tg5(0, 0);
    }

    if (v7 == *(v0 + 240))
    {
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v31 = *(v0 + 56);
      v32 = type metadata accessor for Logger();
      __swift_project_value_buffer(v32, static Log.default);

      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = *(v0 + 56);
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        *(v0 + 40) = v37;
        *v36 = 136315138;
        v38 = [*(v35 + 16) recordID];
        if (v38)
        {
          *(v0 + 48) = v38;
          type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CKRecordID, 0x1E695BA70);
          v39 = String.init<A>(reflecting:)();
          v41 = v40;
        }

        else
        {
          v41 = 0xE300000000000000;
          v39 = 7104878;
        }

        v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, (v0 + 40));

        *(v36 + 4) = v58;
        _os_log_impl(&dword_1AEE80000, v33, v34, "Share was deleted on activity: %s", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v37);
        MEMORY[0x1B2715BA0](v37, -1, -1);
        MEMORY[0x1B2715BA0](v36, -1, -1);
      }

      v59 = *(v0 + 152);
      v60 = *(v0 + 64);
      *(v0 + 32) = 0;
      AsyncThrowingStream.Continuation.finish(throwing:)();

      goto LABEL_5;
    }

    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    __swift_project_value_buffer(v42, static Log.default);
    v43 = v1;
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();

    v46 = os_log_type_enabled(v44, v45);
    v47 = *(v0 + 200);
    v48 = *(v0 + 176);
    v49 = *(v0 + 184);
    v51 = *(v0 + 136);
    v50 = *(v0 + 144);
    v65 = *(v0 + 120);
    v66 = *(v0 + 128);
    v52 = *(v0 + 112);
    v64 = *(v0 + 104);
    if (v46)
    {
      v63 = *(v0 + 200);
      v53 = swift_slowAlloc();
      v62 = v48;
      v54 = swift_slowAlloc();
      v67 = v54;
      *v53 = 136315138;
      *(v0 + 24) = v43;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CKRecordChange, 0x1E695BA68);
      v61 = v43;
      v55 = String.init<A>(reflecting:)();
      v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v56, &v67);

      *(v53 + 4) = v57;
      _os_log_impl(&dword_1AEE80000, v44, v45, "Unknown record change type: %s", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v54);
      MEMORY[0x1B2715BA0](v54, -1, -1);
      MEMORY[0x1B2715BA0](v53, -1, -1);

      (*(v52 + 8))(v65, v64);
      (*(v51 + 8))(v50, v66);
      (*(v49 + 8))(v63, v62);
    }

    else
    {

      (*(v52 + 8))(v65, v64);
      (*(v51 + 8))(v50, v66);
      (*(v49 + 8))(v47, v48);
    }

    (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
  }

  else
  {
    v15 = *(v0 + 200);
    v16 = *(v0 + 176);
    v17 = *(v0 + 184);
    v18 = *(v0 + 144);
    v19 = *(v0 + 152);
    v20 = *(v0 + 128);
    v21 = *(v0 + 136);
    v22 = *(v0 + 64);
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
    *(v0 + 16) = 0;
    AsyncThrowingStream.Continuation.finish(throwing:)();
    (*(v21 + 8))(v18, v20);
    (*(v17 + 8))(v15, v16);
  }

  v24 = *(v0 + 192);
  v23 = *(v0 + 200);
  v25 = *(v0 + 168);
  v26 = *(v0 + 144);
  v27 = *(v0 + 120);
  v29 = *(v0 + 88);
  v28 = *(v0 + 96);

  v30 = *(v0 + 8);

  return v30();
}

{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[22];
  v4 = v0[23];
  v5 = v0[21];
  v7 = v0[17];
  v6 = v0[18];
  v8 = v0[16];
  v12 = v0[12];
  v13 = v0[11];
  (*(v0[14] + 8))(v0[15], v0[13]);
  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v2, v3);

  v9 = v0[1];
  v10 = v0[28];

  return v9();
}

uint64_t closure #1 in closure #1 in ShareChangeObserver.shareChanges.getter(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 208);
  v7 = *v2;
  *(v3 + 216) = a1;
  *(v3 + 224) = v1;

  if (v1)
  {
    v5 = closure #1 in closure #1 in ShareChangeObserver.shareChanges.getter;
  }

  else
  {
    v5 = closure #1 in closure #1 in ShareChangeObserver.shareChanges.getter;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in ShareChangeObserver.shareChanges.getter(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(v2 + 16) = a2;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in closure #1 in ShareChangeObserver.shareChanges.getter, 0, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in ShareChangeObserver.shareChanges.getter()
{
  v2 = v0[2];
  v1 = v0[3];
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
  v3 = [*(v2 + 16) recordID];
  v4 = [v1 recordID];
  v5 = static NSObject.== infix(_:_:)();

  v6 = v0[1];

  return v6(v5 & 1);
}

uint64_t _ss19AsyncFilterSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFSo16CKRecordObserverC12CloudKitCodeE13RecordChangesV_Tg5(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  if (a1)
  {
    swift_getObjectType();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[12] = v4;
  v3[13] = v6;

  return MEMORY[0x1EEE6DFA0](_ss19AsyncFilterSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFSo16CKRecordObserverC12CloudKitCodeE13RecordChangesV_Tg5TY0_, v4, v6);
}

uint64_t _ss19AsyncFilterSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFSo16CKRecordObserverC12CloudKitCodeE13RecordChangesV_Tg5TY0_()
{
  v1 = v0[11];
  v0[14] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss19AsyncFilterSequenceV8IteratorVySo16CKRecordObserverC12CloudKitCodeE13RecordChangesV_GMd, &_ss19AsyncFilterSequenceV8IteratorVySo16CKRecordObserverC12CloudKitCodeE13RecordChangesV_GMR);
  v0[15] = AsyncFilterSequence.Iterator.baseIterator.modify();
  v2 = type metadata accessor for CKRecordObserver.RecordChanges.Iterator();
  v3 = lazy protocol witness table accessor for type CKRecordObserver.RecordChanges and conformance CKRecordObserver.RecordChanges(&lazy protocol witness table cache variable for type CKRecordObserver.RecordChanges.Iterator and conformance CKRecordObserver.RecordChanges.Iterator, MEMORY[0x1E6994920]);
  v4 = *(MEMORY[0x1E69E85B0] + 4);
  v5 = swift_task_alloc();
  v0[16] = v5;
  *v5 = v0;
  v5[1] = _ss19AsyncFilterSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFSo16CKRecordObserverC12CloudKitCodeE13RecordChangesV_Tg5TQ1_;
  v6 = v0[9];
  v7 = v0[10];

  return MEMORY[0x1EEE6D8D0](v0 + 7, v6, v7, v0 + 8, v2, v3);
}

uint64_t _ss19AsyncFilterSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFSo16CKRecordObserverC12CloudKitCodeE13RecordChangesV_Tg5TQ1_()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v8 = *v1;

  if (v0)
  {
    v4 = *(v2 + 96);
    v5 = *(v2 + 104);
    v6 = _ss19AsyncFilterSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFSo16CKRecordObserverC12CloudKitCodeE13RecordChangesV_Tg5TY3_;
  }

  else
  {
    (*(v2 + 120))();
    v4 = *(v2 + 96);
    v5 = *(v2 + 104);
    v6 = _ss19AsyncFilterSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFSo16CKRecordObserverC12CloudKitCodeE13RecordChangesV_Tg5TY2_;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t _ss19AsyncFilterSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFSo16CKRecordObserverC12CloudKitCodeE13RecordChangesV_Tg5TY2_()
{
  v1 = v0[7];
  v0[17] = v1;
  if (v1)
  {
    v2 = v0[14];
    v3 = v0[11];
    v0[6] = v1;
    v4 = AsyncFilterSequence.isIncluded.getter();
    v0[18] = v5;
    v10 = (v4 + *v4);
    v6 = v4[1];
    v7 = swift_task_alloc();
    v0[19] = v7;
    *v7 = v0;
    v7[1] = _ss19AsyncFilterSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFSo16CKRecordObserverC12CloudKitCodeE13RecordChangesV_Tg5TQ4_;

    return v10(v0 + 6);
  }

  else
  {
    v9 = v0[1];

    return v9(0);
  }
}

uint64_t _ss19AsyncFilterSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFSo16CKRecordObserverC12CloudKitCodeE13RecordChangesV_Tg5TY3_()
{
  v1 = *(v0 + 64);
  (*(v0 + 120))();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t _ss19AsyncFilterSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFSo16CKRecordObserverC12CloudKitCodeE13RecordChangesV_Tg5TQ4_(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *(*v1 + 144);
  v8 = *v1;
  *(*v1 + 160) = a1;

  v5 = *(v2 + 104);
  v6 = *(v2 + 96);

  return MEMORY[0x1EEE6DFA0](_ss19AsyncFilterSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFSo16CKRecordObserverC12CloudKitCodeE13RecordChangesV_Tg5TY5_, v6, v5);
}

uint64_t _ss19AsyncFilterSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFSo16CKRecordObserverC12CloudKitCodeE13RecordChangesV_Tg5TY5_()
{
  if (*(v0 + 160))
  {
    v1 = *(v0 + 8);
    v2 = *(v0 + 136);

    return v1(v2);
  }

  else
  {

    v4 = *(v0 + 88);
    *(v0 + 112) = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss19AsyncFilterSequenceV8IteratorVySo16CKRecordObserverC12CloudKitCodeE13RecordChangesV_GMd, &_ss19AsyncFilterSequenceV8IteratorVySo16CKRecordObserverC12CloudKitCodeE13RecordChangesV_GMR);
    *(v0 + 120) = AsyncFilterSequence.Iterator.baseIterator.modify();
    v5 = type metadata accessor for CKRecordObserver.RecordChanges.Iterator();
    v6 = lazy protocol witness table accessor for type CKRecordObserver.RecordChanges and conformance CKRecordObserver.RecordChanges(&lazy protocol witness table cache variable for type CKRecordObserver.RecordChanges.Iterator and conformance CKRecordObserver.RecordChanges.Iterator, MEMORY[0x1E6994920]);
    v7 = *(MEMORY[0x1E69E85B0] + 4);
    v8 = swift_task_alloc();
    *(v0 + 128) = v8;
    *v8 = v0;
    v8[1] = _ss19AsyncFilterSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFSo16CKRecordObserverC12CloudKitCodeE13RecordChangesV_Tg5TQ1_;
    v9 = *(v0 + 72);
    v10 = *(v0 + 80);

    return MEMORY[0x1EEE6D8D0](v0 + 56, v9, v10, v0 + 64, v5, v6);
  }
}

void yieldShareFromRecord #1 (_:) in closure #1 in closure #1 in ShareChangeObserver.shareChanges.getter(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationV11YieldResultOySo7CKShareCs5Error_p__GMd, &_sScs12ContinuationV11YieldResultOySo7CKShareCs5Error_p__GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - v7;
  if (a1 && (objc_opt_self(), (v9 = swift_dynamicCastObjCClass()) != 0))
  {
    v24 = v9;
    v10 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVySo7CKShareCs5Error_p_GMd, &_sScs12ContinuationVySo7CKShareCs5Error_p_GMR);
    AsyncThrowingStream.Continuation.yield(_:)();
    (*(v5 + 8))(v8, v4);
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Log.default);
    v12 = a2;
    v22 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v23 = v12;
      v24 = v15;
      *v14 = 136315138;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CKRecordChange, 0x1E695BA68);
      v16 = v12;
      v17 = String.init<A>(reflecting:)();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v24);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_1AEE80000, v22, v13, "Share missing from record change: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x1B2715BA0](v15, -1, -1);
      MEMORY[0x1B2715BA0](v14, -1, -1);
    }

    else
    {
      v20 = v22;
    }
  }
}

void *ShareChangeObserver.init(share:container:)(void *a1, void *a2)
{
  v3 = v2;
  v3[4] = MEMORY[0x1E69E7CC0];
  v3[2] = a1;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CKRecordObserver, 0x1E695BA78);
  v6 = a1;
  v7 = a2;
  static CKRecord.SystemType.share.getter();
  v3[3] = CKRecordObserver.init(container:recordType:)();
  if (one-time initialization token for shareChangeObserver != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.shareChangeObserver);
  v9 = v7;

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23 = v14;
    *v12 = 136315394;
    v15 = *(*v3 + 144);

    v17 = v15(v16);
    v19 = v18;

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v23);

    *(v12 + 4) = v20;
    *(v12 + 12) = 2112;
    *(v12 + 14) = v9;
    *v13 = v9;
    v21 = v9;
    _os_log_impl(&dword_1AEE80000, v10, v11, "%s Init with container: %@", v12, 0x16u);
    outlined destroy of NSObject?(v13);
    MEMORY[0x1B2715BA0](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x1B2715BA0](v14, -1, -1);
    MEMORY[0x1B2715BA0](v12, -1, -1);
  }

  else
  {
  }

  return v3;
}

uint64_t ShareChangeObserver.deinit()
{
  if (one-time initialization token for shareChangeObserver != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.shareChangeObserver);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    v6 = (*(*v0 + 144))();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1AEE80000, v2, v3, "%s Deinit", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B2715BA0](v5, -1, -1);
    MEMORY[0x1B2715BA0](v4, -1, -1);
  }

  v9 = *(v0 + 32);

  return v0;
}

uint64_t ShareChangeObserver.__deallocating_deinit()
{
  ShareChangeObserver.deinit();

  return swift_deallocClassInstance();
}

uint64_t ShareChangeObserver.description.getter()
{
  _StringGuts.grow(_:)(48);
  MEMORY[0x1B27141F0](0xD00000000000001ALL, 0x80000001AF01BE60);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1B27141F0](0xD000000000000011, 0x80000001AF01BE80);
  v1 = [*(v0 + 16) recordID];
  v2 = [v1 description];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  MEMORY[0x1B27141F0](v3, v5);

  MEMORY[0x1B27141F0](41, 0xE100000000000000);
  return 0;
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for closure #1 in closure #1 in ShareChangeObserver.shareChanges.getter(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVySo7CKShareCs5Error_p_GMd, &_sScs12ContinuationVySo7CKShareCs5Error_p_GMR) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return closure #1 in closure #1 in ShareChangeObserver.shareChanges.getter(a1, v6, v7, v8, v1 + v5);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in ShareChangeObserver.shareChanges.getter(uint64_t *a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = SystemCoordinatorTable.systemCoordinator(for:);

  return closure #1 in closure #1 in closure #1 in ShareChangeObserver.shareChanges.getter(a1, v1);
}

uint64_t lazy protocol witness table accessor for type CKRecordObserver.RecordChanges and conformance CKRecordObserver.RecordChanges(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Publisher.dynamicThrottle<A>(for:after:scheduler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v131 = a3;
  v104 = a2;
  v130 = a1;
  v123 = a6;
  v10 = type metadata accessor for Publishers.Share();
  WitnessTable = swift_getWitnessTable();
  v129 = v10;
  v132 = type metadata accessor for Publishers.MeasureInterval();
  v127 = type metadata accessor for PublishRate();
  v103 = swift_getWitnessTable();
  v11 = type metadata accessor for Publishers.Scan();
  v105 = swift_getWitnessTable();
  v12 = v11;
  v122 = v11;
  v13 = type metadata accessor for Publishers.Zip();
  v102 = swift_getWitnessTable();
  v97 = v13;
  v111 = type metadata accessor for Publishers.Share();
  v119 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v109 = swift_getWitnessTable();
  v14 = type metadata accessor for Publishers.CompactMap();
  v114 = swift_getWitnessTable();
  v15 = type metadata accessor for Publishers.Throttle();
  v116 = swift_getWitnessTable();
  v133 = v14;
  v134 = v15;
  v107 = v14;
  v113 = v15;
  v135 = v114;
  v136 = v116;
  v115 = type metadata accessor for Publishers.Merge();
  v118 = *(v115 - 8);
  v16 = *(v118 + 64);
  v17 = MEMORY[0x1EEE9AC00](v115);
  v112 = &v88 - v18;
  v117 = *(v15 - 8);
  v19 = *(v117 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v106 = &v88 - v21;
  v108 = *(v14 - 8);
  v22 = *(v108 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v101 = &v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v126 = &v88 - v26;
  v98 = *(v13 - 8);
  v27 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v96 = &v88 - v28;
  v29 = a5;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v94 = swift_getAssociatedTypeWitness();
  v90 = *(v94 - 8);
  v93 = *(v90 + 64);
  v30 = MEMORY[0x1EEE9AC00](v94);
  v92 = &v88 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v120 = &v88 - v33;
  v95 = *(v127 - 8);
  v34 = *(v95 + 64);
  v35 = MEMORY[0x1EEE9AC00](v32);
  v91 = &v88 - v36;
  v100 = *(v12 - 8);
  v37 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v121 = &v88 - v38;
  v39 = swift_getAssociatedTypeWitness();
  v40 = type metadata accessor for Optional();
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  v43 = MEMORY[0x1EEE9AC00](v40);
  v45 = &v88 - v44;
  v99 = *(v132 - 8);
  v46 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v125 = &v88 - v47;
  v48 = v123;
  v124 = Publisher.share()();
  v133 = v124;
  (*(*(v39 - 8) + 56))(v45, 1, 1, v39);
  Publisher.measureInterval<A>(using:options:)();
  (*(v41 + 8))(v45, v40);
  v49 = v120;
  v50 = a7;
  default argument 0 of PublishRate.init(timeInGracePeriod:isThrottled:)();
  v51 = v91;
  v52 = v29;
  v88 = v29;
  v53 = v50;
  v89 = v50;
  PublishRate.init(timeInGracePeriod:isThrottled:)(v49, 0, v91);
  v54 = v90;
  v55 = *(v90 + 16);
  v56 = v49;
  v57 = v94;
  v55(v56, v130, v94);
  v58 = v92;
  v55(v92, v104, v57);
  v59 = *(v54 + 80);
  v60 = (v59 + 48) & ~v59;
  v61 = (v93 + v59 + v60) & ~v59;
  v62 = swift_allocObject();
  v63 = v120;
  *(v62 + 2) = v119;
  *(v62 + 3) = v52;
  *(v62 + 4) = v48;
  *(v62 + 5) = v53;
  v64 = *(v54 + 32);
  v64(&v62[v60], v63, v57);
  v64(&v62[v61], v58, v57);
  v65 = v127;
  Publisher.scan<A>(_:_:)();

  (*(v95 + 8))(v51, v65);
  v133 = v124;
  v66 = v96;
  Publisher.zip<A>(_:)();
  v67 = v97;
  v68 = Publisher.share()();
  (*(v98 + 8))(v66, v67);
  v133 = v68;
  v129 = v68;
  v69 = swift_allocObject();
  v70 = v119;
  v71 = v88;
  v69[2] = v119;
  v69[3] = v71;
  v72 = v123;
  v73 = v89;
  v69[4] = v123;
  v69[5] = v73;
  v74 = swift_allocObject();
  v74[2] = v70;
  v74[3] = v71;
  v74[4] = v72;
  v74[5] = v73;
  v74[6] = partial apply for closure #2 in Publisher.dynamicThrottle<A>(for:after:scheduler:);
  v74[7] = v69;
  Publisher.compactMap<A>(_:)();

  v133 = v68;
  v75 = swift_allocObject();
  v75[2] = v70;
  v75[3] = v71;
  v75[4] = v72;
  v75[5] = v73;
  v76 = swift_allocObject();
  v76[2] = v70;
  v76[3] = v71;
  v76[4] = v72;
  v76[5] = v73;
  v76[6] = partial apply for closure #3 in Publisher.dynamicThrottle<A>(for:after:scheduler:);
  v76[7] = v75;
  v77 = v101;
  Publisher.compactMap<A>(_:)();

  v78 = v106;
  v79 = v107;
  Publisher.throttle<A>(for:scheduler:latest:)();
  v80 = *(v108 + 8);
  v80(v77, v79);
  v81 = v112;
  v82 = v79;
  v83 = v113;
  v84 = v126;
  Publisher.merge<A>(with:)();
  v85 = v115;
  swift_getWitnessTable();
  v86 = Publisher.eraseToAnyPublisher()();

  (*(v118 + 8))(v81, v85);
  (*(v117 + 8))(v78, v83);
  v80(v84, v82);
  (*(v100 + 8))(v121, v122);
  (*(v99 + 8))(v125, v132);
  return v86;
}

uint64_t default argument 0 of PublishRate.init(timeInGracePeriod:isThrottled:)()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v0 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  return dispatch thunk of static AdditiveArithmetic.zero.getter();
}

uint64_t PublishRate.init(timeInGracePeriod:isThrottled:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a3, a1, AssociatedTypeWitness);
  result = type metadata accessor for PublishRate();
  *(a3 + *(result + 36)) = a2;
  return result;
}

uint64_t closure #1 in Publisher.dynamicThrottle<A>(for:after:scheduler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v18[1] = a3;
  v19 = a1;
  v20 = a2;
  v22 = a5;
  swift_getAssociatedTypeWitness();
  v21 = a4;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18[0] = *(AssociatedTypeWitness - 8);
  v7 = *(v18[0] + 64);
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v18 - v11;
  swift_getAssociatedConformanceWitness();
  v13 = dispatch thunk of static Comparable.< infix(_:_:)();
  v14 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  if (v13)
  {
    v15 = v19;
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    if ((dispatch thunk of static Comparable.<= infix(_:_:)() & 1) != 0 && (*(v15 + *(type metadata accessor for PublishRate() + 36)) & 1) == 0)
    {
      (*(v18[0] + 32))(v10, v12, AssociatedTypeWitness);
      v16 = 0;
    }

    else
    {
      dispatch thunk of static AdditiveArithmetic.zero.getter();
      (*(v18[0] + 8))(v12, AssociatedTypeWitness);
      v16 = 1;
    }
  }

  else
  {
    dispatch thunk of static AdditiveArithmetic.zero.getter();
    v16 = 0;
  }

  return PublishRate.init(timeInGracePeriod:isThrottled:)(v10, v16, v22);
}

uint64_t partial apply for closure #1 in Publisher.dynamicThrottle<A>(for:after:scheduler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 80);
  v11 = (v10 + 48) & ~v10;
  v12 = v2 + ((*(v9 + 64) + v10 + v11) & ~v10);

  return closure #1 in Publisher.dynamicThrottle<A>(for:after:scheduler:)(a1, v2 + v11, v12, v8, a2);
}

uint64_t closure #2 in Publisher.dynamicThrottle<A>(for:after:scheduler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + *(type metadata accessor for PublishRate() + 36));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  if (v5)
  {
    v8 = 1;
  }

  else
  {
    v11 = *(AssociatedTypeWitness - 8);
    (*(v11 + 16))(a3, a2, AssociatedTypeWitness);
    v7 = v11;
    v8 = 0;
  }

  v9 = *(v7 + 56);

  return v9(a3, v8, 1, AssociatedTypeWitness);
}

uint64_t partial apply for closure #2 in Publisher.dynamicThrottle<A>(for:after:scheduler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  return closure #2 in Publisher.dynamicThrottle<A>(for:after:scheduler:)(a1, a2, a3);
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed PublishRate<A1>, @in_guaranteed A.Publisher.Output) -> (@out A.Publisher.Output?)(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  type metadata accessor for PublishRate();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, a1 + *(TupleTypeMetadata2 + 48));
}

uint64_t closure #3 in Publisher.dynamicThrottle<A>(for:after:scheduler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + *(type metadata accessor for PublishRate() + 36));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  if (v5 == 1)
  {
    v11 = *(AssociatedTypeWitness - 8);
    (*(v11 + 16))(a3, a2, AssociatedTypeWitness);
    v7 = v11;
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = *(v7 + 56);

  return v9(a3, v8, 1, AssociatedTypeWitness);
}

uint64_t partial apply for closure #3 in Publisher.dynamicThrottle<A>(for:after:scheduler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  return closure #3 in Publisher.dynamicThrottle<A>(for:after:scheduler:)(a1, a2, a3);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed PublishRate<A1>, @in_guaranteed A.Publisher.Output) -> (@out A.Publisher.Output?)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 56);
  return thunk for @escaping @callee_guaranteed (@in_guaranteed PublishRate<A1>, @in_guaranteed A.Publisher.Output) -> (@out A.Publisher.Output?)(a1, *(v1 + 48));
}

uint64_t type metadata completion function for PublishRate(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PublishRate(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  if (v9 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 > v10)
  {
    v12 = v11 + 1;
    v13 = 8 * (v11 + 1);
    if ((v11 + 1) > 3)
    {
      goto LABEL_7;
    }

    v15 = ((a2 - v10 + ~(-1 << v13)) >> v13) + 1;
    if (HIWORD(v15))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v15 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v15 >= 2)
    {
LABEL_7:
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_25;
      }

LABEL_14:
      v16 = (v14 - 1) << v13;
      if (v12 > 3)
      {
        v16 = 0;
      }

      if (v12)
      {
        if (v12 > 3)
        {
          LODWORD(v12) = 4;
        }

        if (v12 > 2)
        {
          if (v12 == 3)
          {
            LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v12) = *a1;
          }
        }

        else if (v12 == 1)
        {
          LODWORD(v12) = *a1;
        }

        else
        {
          LODWORD(v12) = *a1;
        }
      }

      v20 = v10 + (v12 | v16);
      return (v20 + 1);
    }
  }

LABEL_25:
  if (v9 < 0xFE)
  {
    v19 = *(a1 + v11);
    if (v19 < 2)
    {
      return 0;
    }

    v20 = (v19 + 2147483646) & 0x7FFFFFFF;
    return (v20 + 1);
  }

  v17 = *(v8 + 48);

  return v17(a1);
}

void storeEnumTagSinglePayload for PublishRate(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 64);
  if (v10 <= 0xFE)
  {
    v12 = 254;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = v11 + 1;
  v14 = a3 - v12;
  if (a3 <= v12)
  {
    v15 = 0;
    if (v12 < a2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v15 = 1;
    if (v13 <= 3)
    {
      v16 = ((v14 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      v17 = HIWORD(v16);
      if (v16 < 0x100)
      {
        v18 = 1;
      }

      else
      {
        v18 = 2;
      }

      if (v16 >= 2)
      {
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }

      if (v17)
      {
        v15 = 4;
      }

      else
      {
        v15 = v19;
      }
    }

    if (v12 < a2)
    {
LABEL_16:
      v20 = ~v12 + a2;
      if (v13 < 4)
      {
        v21 = (v20 >> (8 * v13)) + 1;
        if (v11 != -1)
        {
          v22 = v20 & ~(-1 << (8 * v13));
          bzero(a1, v13);
          if (v13 != 3)
          {
            if (v13 == 2)
            {
              *a1 = v22;
              if (v15 > 1)
              {
LABEL_44:
                if (v15 == 2)
                {
                  *&a1[v13] = v21;
                }

                else
                {
                  *&a1[v13] = v21;
                }

                return;
              }
            }

            else
            {
              *a1 = v20;
              if (v15 > 1)
              {
                goto LABEL_44;
              }
            }

            goto LABEL_41;
          }

          *a1 = v22;
          a1[2] = BYTE2(v22);
        }

        if (v15 > 1)
        {
          goto LABEL_44;
        }
      }

      else
      {
        bzero(a1, v13);
        *a1 = v20;
        v21 = 1;
        if (v15 > 1)
        {
          goto LABEL_44;
        }
      }

LABEL_41:
      if (v15)
      {
        a1[v13] = v21;
      }

      return;
    }
  }

  if (v15 > 1)
  {
    if (v15 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    }

    *&a1[v13] = 0;
  }

  else if (v15)
  {
    a1[v13] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_32;
  }

  if (!a2)
  {
    return;
  }

LABEL_32:
  if (v10 < 0xFE)
  {
    a1[v11] = a2 + 1;
  }

  else
  {
    v23 = *(v9 + 56);

    v23(a1, a2);
  }
}

GroupActivities::TypedPayloadBox::CodingKeys_optional __swiftcall TypedPayloadBox.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TypedPayloadBox.CodingKeys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = GroupActivities_TypedPayloadBox_CodingKeys_value;
  }

  else
  {
    v4.value = GroupActivities_TypedPayloadBox_CodingKeys_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

GroupActivities::TypedPayloadBox::CodingKeys_optional __swiftcall TypedPayloadBox.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TypedPayloadBox.CodingKeys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = GroupActivities_TypedPayloadBox_CodingKeys_value;
  }

  else
  {
    v4.value = GroupActivities_TypedPayloadBox_CodingKeys_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t TypedPayloadBox.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 118;
  }

  else
  {
    return 110;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance TypedPayloadBox.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 118;
  }

  else
  {
    v2 = 110;
  }

  if (*a2)
  {
    v3 = 118;
  }

  else
  {
    v3 = 110;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TypedPayloadBox.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TypedPayloadBox.CodingKeys()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TypedPayloadBox.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance TypedPayloadBox.CodingKeys@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TypedPayloadBox.CodingKeys.init(rawValue:), *a1);

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

void protocol witness for RawRepresentable.rawValue.getter in conformance TypedPayloadBox.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = 110;
  if (*v1)
  {
    v2 = 118;
  }

  *a1 = v2;
  a1[1] = 0xE100000000000000;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance TypedPayloadBox.CodingKeys()
{
  if (*v0)
  {
    return 118;
  }

  else
  {
    return 110;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TypedPayloadBox.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TypedPayloadBox.CodingKeys.init(rawValue:), v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TypedPayloadBox.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TypedPayloadBox.CodingKeys and conformance TypedPayloadBox.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TypedPayloadBox.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TypedPayloadBox.CodingKeys and conformance TypedPayloadBox.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

_OWORD *outlined init with take of Decodable & Encodable(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t TypedPayloadBox.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities15TypedPayloadBoxV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities15TypedPayloadBoxV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v35 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = dispatch thunk of Decoder.userInfo.getter();
  if (one-time initialization token for typedPayloadDecoderMap != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for CodingUserInfoKey();
  v13 = __swift_project_value_buffer(v12, static CodingUserInfoKey.typedPayloadDecoderMap);
  if (!*(v11 + 16))
  {

    __break(1u);
    goto LABEL_15;
  }

  v14 = specialized __RawDictionaryStorage.find<A>(_:)(v13);
  if ((v15 & 1) == 0)
  {
LABEL_15:

    __break(1u);
    goto LABEL_16;
  }

  v38 = a2;
  v44 = v6;
  outlined init with copy of Any(*(v11 + 56) + 32 * v14, v39);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS15GroupActivities20TypedPayloadDecoding_pGMd, &_sSDySS15GroupActivities20TypedPayloadDecoding_pGMR);
  v16 = MEMORY[0x1E69E7CA0];
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v18 = v40[0];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TypedPayloadBox.CodingKeys and conformance TypedPayloadBox.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
  }

  else
  {
    LOBYTE(v39[0]) = 0;
    v20 = KeyedDecodingContainer.decode(_:forKey:)();
    v22 = v20;
    v23 = v21;
    if (*(v18 + 16) && (v24 = specialized __RawDictionaryStorage.find<A>(_:)(v20, v21), (v25 & 1) != 0))
    {
      v26 = v24;

      outlined init with copy of Transferable(*(v18 + 56) + 40 * v26, v39);

      outlined init with take of Transferable(v39, v40);
      v27 = v41;
      v28 = v42;
      __swift_project_boxed_opaque_existential_1(v40, v41);
      (*(v28 + 8))(v39, v9, v27, v28);
      (*(v44 + 8))(v9, v5);
      outlined init with take of Decodable & Encodable(v39, v43);
      __swift_destroy_boxed_opaque_existential_0(v40);
      v33 = v43[1];
      v34 = v38;
      *v38 = v43[0];
      v34[1] = v33;
      v34[2] = v43[2];
    }

    else
    {

      v38 = type metadata accessor for DecodingError();
      swift_allocError();
      v30 = v29;
      v36 = v29;
      v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
      *v30 = v16 + 8;
      v31 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      dispatch thunk of Decoder.codingPath.getter();
      *&v39[0] = 0;
      *(&v39[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(39);

      *&v39[0] = 0xD000000000000015;
      *(&v39[0] + 1) = 0x80000001AF01BEF0;
      MEMORY[0x1B27141F0](v22, v23);

      MEMORY[0x1B27141F0](0xD000000000000010, 0x80000001AF01BF10);
      v32 = v36;
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v38 - 1) + 104))(v32, *MEMORY[0x1E69E6B08]);
      swift_willThrow();
      (*(v44 + 8))(v9, v5);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t TypedPayloadBox.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities15TypedPayloadBoxV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities15TypedPayloadBoxV10CodingKeysOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TypedPayloadBox.CodingKeys and conformance TypedPayloadBox.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = v2[3];
  v11 = v2[5];
  v12 = __swift_project_boxed_opaque_existential_1(v2, v10);
  specialized encode #1 <A>(openedValue:) in TypedPayloadBox.encode(to:)(v12, v8, v10);
  return (*(v5 + 8))(v8, v4);
}

uint64_t specialized encode #1 <A>(openedValue:) in TypedPayloadBox.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  static Encodable.messageIdentifier.getter(a3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities15TypedPayloadBoxV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities15TypedPayloadBoxV10CodingKeysOGMR);
  KeyedEncodingContainer.encode(_:forKey:)();
  swift_endAccess();
  if (v3)
  {
  }

  swift_beginAccess();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return swift_endAccess();
}

uint64_t TypedPayloadBox.unbox<A>(as:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  outlined init with copy of Decodable & Encodable(v3, &v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSe_SEpMd, &_sSe_SEpMR);
  v6 = swift_dynamicCast();
  return (*(*(a1 - 8) + 56))(a2, v6 ^ 1u, 1, a1);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance TypedPayloadBox(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities15TypedPayloadBoxV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities15TypedPayloadBoxV10CodingKeysOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TypedPayloadBox.CodingKeys and conformance TypedPayloadBox.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = v2[3];
  v11 = v2[5];
  v12 = __swift_project_boxed_opaque_existential_1(v2, v10);
  specialized encode #1 <A>(openedValue:) in TypedPayloadBox.encode(to:)(v12, v8, v10);
  return (*(v5 + 8))(v8, v4);
}

unint64_t lazy protocol witness table accessor for type TypedPayloadBox.CodingKeys and conformance TypedPayloadBox.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TypedPayloadBox.CodingKeys and conformance TypedPayloadBox.CodingKeys;
  if (!lazy protocol witness table cache variable for type TypedPayloadBox.CodingKeys and conformance TypedPayloadBox.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TypedPayloadBox.CodingKeys and conformance TypedPayloadBox.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TypedPayloadBox.CodingKeys and conformance TypedPayloadBox.CodingKeys;
  if (!lazy protocol witness table cache variable for type TypedPayloadBox.CodingKeys and conformance TypedPayloadBox.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TypedPayloadBox.CodingKeys and conformance TypedPayloadBox.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TypedPayloadBox.CodingKeys and conformance TypedPayloadBox.CodingKeys;
  if (!lazy protocol witness table cache variable for type TypedPayloadBox.CodingKeys and conformance TypedPayloadBox.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TypedPayloadBox.CodingKeys and conformance TypedPayloadBox.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TypedPayloadBox.CodingKeys and conformance TypedPayloadBox.CodingKeys;
  if (!lazy protocol witness table cache variable for type TypedPayloadBox.CodingKeys and conformance TypedPayloadBox.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TypedPayloadBox.CodingKeys and conformance TypedPayloadBox.CodingKeys);
  }

  return result;
}

uint64_t getter of identifier #1 in static SharePlayLatencyLogger.beginInterval<A>(for:activity:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (swift_dynamicCast())
  {
    return v9;
  }

  else
  {
    return (*(a3 + 24))(a2, a3);
  }
}

double AnySpatialTemplate.init(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 24))
  {
    outlined init with take of Transferable(a1, v5);
    outlined init with take of Transferable(v5, v6);
    result = *v6;
    v4 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v4;
    *(a2 + 32) = v7;
  }

  else
  {
    outlined destroy of SpatialTemplate?(a1);
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t AnySpatialTemplate.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  (*(v5 + 8))(&v30, v4, v5);
  SpatialTemplateConfiguration.hash(into:)();
  outlined destroy of SpatialTemplateConfiguration(&v30);
  v6 = v1[3];
  v7 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  SpatialTemplate.output.getter(v6, v7, &v30);
  v8 = v30;
  v9 = v31;
  if (v32)
  {
    if (v32 == 1)
    {
      MEMORY[0x1B2715040](5);
      Hasher._combine(_:)(v8 & 1);
    }

    else
    {
      if (*(&v31 + 1) | v31 | v30)
      {
        if (v30 == 1 && v31 == 0)
        {
          v13 = 2;
        }

        else if (v30 == 2 && v31 == 0)
        {
          v13 = 3;
        }

        else
        {
          v13 = 4;
        }
      }

      else
      {
        v13 = 1;
      }

      MEMORY[0x1B2715040](v13);
    }
  }

  else
  {
    MEMORY[0x1B2715040](0);
    specialized Array<A>.hash(into:)(a1, v8);
    if (*(&v9 + 1))
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      v10 = v8;
      v12 = v9 >> 64;
      v11 = v9;
    }

    else
    {
      Hasher._combine(_:)(0);
      v10 = v8;
      v11 = v9;
      v12 = 0;
    }

    outlined consume of SpatialTemplatePreferenceOutput.SpatialTemplate(v10, v11, v12, 0);
  }

  v14 = v2[3];
  v15 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v14);
  v16 = (*(v15 + 16))(v14, v15);
  v17 = *(v16 + 16);
  if (v17)
  {
    v29 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17, 0);
    v18 = v29;
    v19 = v16 + 32;
    do
    {
      outlined init with copy of Transferable(v19, &v30);
      v20 = v33;
      __swift_project_boxed_opaque_existential_1(&v30, v32);
      v21 = *(v20 + 8);
      v22 = dispatch thunk of Hashable.hashValue.getter();
      __swift_destroy_boxed_opaque_existential_0(&v30);
      v24 = *(v29 + 16);
      v23 = *(v29 + 24);
      if (v24 >= v23 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
      }

      *(v29 + 16) = v24 + 1;
      *(v29 + 8 * v24 + 32) = v22;
      v19 += 40;
      --v17;
    }

    while (v17);
  }

  else
  {

    v18 = MEMORY[0x1E69E7CC0];
  }

  MEMORY[0x1B2715040](*(v18 + 16));
  v25 = *(v18 + 16);
  if (v25)
  {
    v26 = (v18 + 32);
    do
    {
      v27 = *v26++;
      MEMORY[0x1B2715040](v27);
      --v25;
    }

    while (v25);
  }
}

Swift::Int AnySpatialTemplate.hashValue.getter()
{
  Hasher.init(_seed:)();
  AnySpatialTemplate.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AnySpatialTemplate()
{
  Hasher.init(_seed:)();
  AnySpatialTemplate.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AnySpatialTemplate()
{
  Hasher.init(_seed:)();
  AnySpatialTemplate.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t specialized Array<A>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1B2715040](v3);
  if (v3)
  {
    v5 = (a2 + 64);
    do
    {
      v7 = *(v5 - 4);
      v6 = *(v5 - 3);
      v8 = *(v5 - 2);
      v9 = *(v5 - 1);
      v10 = *v5;
      v11 = v5[2];
      v12 = v5[4];
      v13 = v5[5];
      v14 = v5[6];
      v15 = *(v5 + 64);
      MEMORY[0x1B2715040](0);
      if (v6)
      {
        Hasher._combine(_:)(1u);

        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      MEMORY[0x1B2715040](0);
      SPVector3D.hash(into:)();
      SPAngle.hash(into:)();
      if (v15)
      {
        MEMORY[0x1B2715040](1);
        MEMORY[0x1B2715040](v12);
      }

      else
      {
        MEMORY[0x1B2715040](0);
        MEMORY[0x1B2715040](0);
        SPVector3D.hash(into:)();
      }

      v5 += 14;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t specialized static AnySpatialTemplate.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of Transferable(a1, v51);
  outlined init with copy of Transferable(a2, v48);
  v3 = v52;
  v4 = v53;
  __swift_project_boxed_opaque_existential_1(v51, v52);
  (*(v4 + 8))(v41, v3, v4);
  v5 = v49;
  v6 = v50;
  __swift_project_boxed_opaque_existential_1(v48, v49);
  (*(v6 + 8))(v47, v5, v6);
  LOBYTE(v5) = specialized static SpatialTemplateConfiguration.== infix(_:_:)(v41, v47);
  outlined destroy of SpatialTemplateConfiguration(v47);
  outlined destroy of SpatialTemplateConfiguration(v41);
  if ((v5 & 1) == 0)
  {
    goto LABEL_10;
  }

  v7 = v52;
  v8 = v53;
  __swift_project_boxed_opaque_existential_1(v51, v52);
  v9 = *((*(v8 + 16))(v7, v8) + 16);

  v10 = v49;
  v11 = v50;
  __swift_project_boxed_opaque_existential_1(v48, v49);
  v12 = *((*(v11 + 16))(v10, v11) + 16);

  if (v9 == v12)
  {
    v13 = v52;
    v14 = v53;
    __swift_project_boxed_opaque_existential_1(v51, v52);
    v15 = (*(v14 + 16))(v13, v14);
    v16 = v49;
    v17 = v50;
    __swift_project_boxed_opaque_existential_1(v48, v49);
    result = (*(v17 + 16))(v16, v17);
    v19 = result;
    v20 = 0;
    v21 = *(v15 + 16);
    v22 = 32;
    while (1)
    {
      if (v21 == v20)
      {

        v38 = 1;
        goto LABEL_11;
      }

      if (v20 >= *(v15 + 16))
      {
        break;
      }

      result = outlined init with copy of Transferable(v15 + v22, v47);
      v23 = *(v19 + 16);
      if (v20 == v23)
      {

        __swift_destroy_boxed_opaque_existential_0(v47);
        v38 = 1;
        goto LABEL_11;
      }

      if (v20++ >= v23)
      {
        goto LABEL_15;
      }

      outlined init with take of Transferable(v47, v41);
      outlined init with copy of Transferable(v19 + v22, v44);
      v24 = v42;
      v25 = v43;
      v26 = __swift_project_boxed_opaque_existential_1(v41, v42);
      v27 = *(*(v24 - 8) + 64);
      MEMORY[0x1EEE9AC00](v26);
      (*(v29 + 16))(&v40[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0) - 8]);
      __swift_destroy_boxed_opaque_existential_0(v41);
      v30 = *(v25 + 8);
      AnyHashable.init<A>(_:)();
      v31 = v45;
      v32 = v46;
      v33 = __swift_project_boxed_opaque_existential_1(v44, v45);
      v34 = *(*(v31 - 8) + 64);
      MEMORY[0x1EEE9AC00](v33);
      (*(v36 + 16))(&v40[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0) - 8]);
      __swift_destroy_boxed_opaque_existential_0(v44);
      v37 = *(v32 + 8);
      AnyHashable.init<A>(_:)();
      LOBYTE(v31) = MEMORY[0x1B2714A90](v47, v40);
      outlined destroy of AnyHashable(v40);
      result = outlined destroy of AnyHashable(v47);
      v22 += 40;
      if ((v31 & 1) == 0)
      {

        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
LABEL_10:
    v38 = 0;
LABEL_11:
    __swift_destroy_boxed_opaque_existential_0(v48);
    __swift_destroy_boxed_opaque_existential_0(v51);
    return v38;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnySpatialTemplate and conformance AnySpatialTemplate()
{
  result = lazy protocol witness table cache variable for type AnySpatialTemplate and conformance AnySpatialTemplate;
  if (!lazy protocol witness table cache variable for type AnySpatialTemplate and conformance AnySpatialTemplate)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnySpatialTemplate and conformance AnySpatialTemplate);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnySpatialTemplate(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for AnySpatialTemplate(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id AddressableMember.tuHandle.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = objc_opt_self();
  v4 = MEMORY[0x1B2714130](v1, v2);
  v5 = [v3 normalizedHandleWithDestinationID_];

  return v5;
}

uint64_t AddressableMember.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AddressableMember.handle.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static AddressableMember.== infix(_:_:)(void *a1, void *a2)
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

uint64_t AddressableMember.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return String.hash(into:)();
}

Swift::Int AddressableMember.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t LocalAccountMember.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t LocalAccountMember.id.setter(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t LocalAccountMember.hash(into:)()
{
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);

  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int LocalAccountMember.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t LocalAccountMember.init(id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance LocalAccountMember()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance LocalAccountMember()
{
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);

  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LocalAccountMember()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

unint64_t instantiation function for generic protocol witness table for AddressableMember(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type AddressableMember and conformance AddressableMember();
  result = lazy protocol witness table accessor for type AddressableMember and conformance AddressableMember();
  *(a1 + 16) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for LocalAccountMember(uint64_t a1)
{
  *(a1 + 8) = _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type LocalAccountMember and conformance LocalAccountMember, type metadata accessor for LocalAccountMember);
  result = _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type LocalAccountMember and conformance LocalAccountMember, type metadata accessor for LocalAccountMember);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for LocalAccountMember()
{
  result = type metadata singleton initialization cache for LocalAccountMember;
  if (!type metadata singleton initialization cache for LocalAccountMember)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for LocalAccountMember()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t Task.store(in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = a5;
  v9[5] = a2;
  v10 = type metadata accessor for AnyCancellable();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();

  v13 = AnyCancellable.init(_:)();
  specialized Set._Variant.insert(_:)(&v15, v13);
}

void partial apply for closure #1 in Task.store(in:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  JUMPOUT(0x1B27144E0);
}

uint64_t SystemCoordinatorHostManager.state.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager_queue);
  type metadata accessor for SystemCoordinatorState();
  OS_dispatch_queue.sync<A>(execute:)();
  return v3;
}

uint64_t key path getter for SystemCoordinatorHostManager.state : SystemCoordinatorHostManager@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager_queue);
  type metadata accessor for SystemCoordinatorState();
  result = OS_dispatch_queue.sync<A>(execute:)();
  *a2 = v5;
  return result;
}

uint64_t SystemCoordinatorHostManager.state.setter(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager_queue);
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = partial apply for closure #1 in SystemCoordinatorHostManager.state.setter;
  *(v5 + 24) = v4;
  v9[4] = _sIg_Ieg_TRTA_0;
  v9[5] = v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed () -> ();
  v9[3] = &block_descriptor_6;
  v6 = _Block_copy(v9);

  v7 = a1;

  dispatch_sync(v3, v6);

  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

id partial apply for closure #1 in SystemCoordinatorHostManager.state.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager__state);
  *a1 = v2;
  return v2;
}

void closure #1 in SystemCoordinatorHostManager.state.setter(uint64_t a1, void *a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager__state);
  *(a1 + OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager__state) = a2;
  v2 = a2;
  SystemCoordinatorHostManager._state.didset();
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void (*SystemCoordinatorHostManager.state.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  *a1 = v3;
  *(v3 + 56) = v1;
  *(v3 + 64) = *(v1 + OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager_queue);
  type metadata accessor for SystemCoordinatorState();
  OS_dispatch_queue.sync<A>(execute:)();
  return SystemCoordinatorHostManager.state.modify;
}

void SystemCoordinatorHostManager.state.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 48);
  v3 = *v4;
  v6 = *(*a1 + 56);
  v5 = *(*a1 + 64);
  if ((a2 & 1) == 0)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v6;
    *(v14 + 24) = v3;
    v15 = swift_allocObject();
    *(v15 + 16) = closure #1 in SystemCoordinatorHostManager.state.setterpartial apply;
    *(v15 + 24) = v14;
    v2[4] = thunk for @callee_guaranteed () -> ()partial apply;
    v2[5] = v15;
    *v2 = MEMORY[0x1E69E9820];
    v2[1] = 1107296256;
    v2[2] = thunk for @escaping @callee_guaranteed () -> ();
    v2[3] = &block_descriptor_26_0;
    v16 = _Block_copy(v2);
    v17 = v2[5];

    v18 = v3;

    dispatch_sync(v5, v16);

    _Block_release(v16);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    return;
  }

  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v3;
  v8 = swift_allocObject();
  *(v8 + 16) = closure #1 in SystemCoordinatorHostManager.state.setterpartial apply;
  *(v8 + 24) = v7;
  v2[4] = thunk for @callee_guaranteed () -> ()partial apply;
  v2[5] = v8;
  *v2 = MEMORY[0x1E69E9820];
  v2[1] = 1107296256;
  v2[2] = thunk for @escaping @callee_guaranteed () -> ();
  v2[3] = &block_descriptor_15;
  v9 = _Block_copy(v2);
  v10 = v2[5];
  v11 = v3;

  v12 = v11;

  dispatch_sync(v5, v9);

  _Block_release(v9);
  v13 = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
    goto LABEL_9;
  }

LABEL_5:

  free(v2);
}

uint64_t objectdestroyTm_5()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t SystemCoordinatorHostManager.configurations.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t key path getter for SystemCoordinatorHostManager.configurations : SystemCoordinatorHostManager@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for SystemCoordinatorHostManager.configurations : SystemCoordinatorHostManager(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t SystemCoordinatorHostManager.configurations.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void (*SystemCoordinatorHostManager.configurations.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return CKShareGroupSessionProvider.share.modify;
}

uint64_t SystemCoordinatorHostManager.$configurations.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDy10Foundation4UUIDV15GroupActivities30SystemCoordinatorConfigurationCGGMd, &_s7Combine9PublishedVySDy10Foundation4UUIDV15GroupActivities30SystemCoordinatorConfigurationCGGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path getter for SystemCoordinatorHostManager.$configurations : SystemCoordinatorHostManager(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDy10Foundation4UUIDV15GroupActivities30SystemCoordinatorConfigurationCGGMd, &_s7Combine9PublishedVySDy10Foundation4UUIDV15GroupActivities30SystemCoordinatorConfigurationCGGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for SystemCoordinatorHostManager.$configurations : SystemCoordinatorHostManager(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDy10Foundation4UUIDV15GroupActivities30SystemCoordinatorConfigurationCG_GMd, &_s7Combine9PublishedV9PublisherVySDy10Foundation4UUIDV15GroupActivities30SystemCoordinatorConfigurationCG_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDy10Foundation4UUIDV15GroupActivities30SystemCoordinatorConfigurationCGGMd, &_s7Combine9PublishedVySDy10Foundation4UUIDV15GroupActivities30SystemCoordinatorConfigurationCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t SystemCoordinatorHostManager.$configurations.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDy10Foundation4UUIDV15GroupActivities30SystemCoordinatorConfigurationCG_GMd, &_s7Combine9PublishedV9PublisherVySDy10Foundation4UUIDV15GroupActivities30SystemCoordinatorConfigurationCG_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDy10Foundation4UUIDV15GroupActivities30SystemCoordinatorConfigurationCGGMd, &_s7Combine9PublishedVySDy10Foundation4UUIDV15GroupActivities30SystemCoordinatorConfigurationCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*SystemCoordinatorHostManager.$configurations.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDy10Foundation4UUIDV15GroupActivities30SystemCoordinatorConfigurationCG_GMd, &_s7Combine9PublishedV9PublisherVySDy10Foundation4UUIDV15GroupActivities30SystemCoordinatorConfigurationCG_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager__configurations;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDy10Foundation4UUIDV15GroupActivities30SystemCoordinatorConfigurationCGGMd, &_s7Combine9PublishedVySDy10Foundation4UUIDV15GroupActivities30SystemCoordinatorConfigurationCGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return SystemCoordinatorHostManager.$configurations.modify;
}

void SystemCoordinatorHostManager.$configurations.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[16];
  v6 = v3[13];
  v13 = v3[14];
  v8 = v3[11];
  v7 = v3[12];
  v10 = v3[9];
  v9 = v3[10];
  if (a2)
  {
    v4(v3[12], v6, v3[10]);
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v11 = *(v8 + 8);
    v11(v6, v9);
    v12 = v13;
    v11(v13, v9);
  }

  else
  {
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v12 = v13;
    (*(v8 + 8))(v13, v9);
  }

  free(v12);
  free(v6);
  free(v7);

  free(v3);
}

uint64_t SystemCoordinatorHostManager.hosts.getter()
{
  v1 = OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager_hosts;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t SystemCoordinatorHostManager.hosts.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager_hosts;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void SystemCoordinatorHostManager._state.didset()
{
  v1 = v0;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_15GroupActivities21SystemCoordinatorHostC5valuetMd, &_s10Foundation4UUIDV3key_15GroupActivities21SystemCoordinatorHostC5valuetMR);
  v2 = *(*(v73 - 8) + 64);
  MEMORY[0x1EEE9AC00](v73);
  v4 = &v61 - v3;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = v6[8];
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v0 + OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager_queue);
  *v9 = v10;
  v11 = v6[13];
  v69 = *MEMORY[0x1E69E8020];
  v67 = v11;
  v68 = v6 + 13;
  v11(v9);
  v12 = v10;
  v13 = _dispatchPreconditionTest(_:)();
  v14 = v6[1];
  v70 = v9;
  v71 = v6 + 1;
  v72 = v5;
  v66 = v14;
  v14(v9, v5);
  if ((v13 & 1) == 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    swift_once();
    goto LABEL_4;
  }

  v75 = OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager__state;
  v15 = *(v0 + OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager__state);
  v16 = type metadata accessor for SystemCoordinatorState();
  v17 = v15;
  v74 = v16;
  v18 = static NSObject.== infix(_:_:)();

  if (v18)
  {
    return;
  }

  if (one-time initialization token for systemCoordinator != -1)
  {
    goto LABEL_25;
  }

LABEL_4:
  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Log.systemCoordinator);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v78 = v23;
    *v22 = 136315138;
    v77 = *(v1 + v75);
    v24 = v77;
    v25 = String.init<A>(reflecting:)();
    v27 = v4;
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v78);

    *(v22 + 4) = v28;
    v4 = v27;
    _os_log_impl(&dword_1AEE80000, v20, v21, "System coordinator state changed to %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x1B2715BA0](v23, -1, -1);
    MEMORY[0x1B2715BA0](v22, -1, -1);
  }

  v29 = OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager_hosts;
  swift_beginAccess();
  v30 = *(v1 + v29);
  v31 = v30 + 64;
  v32 = 1 << *(v30 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & *(v30 + 64);
  v35 = (v32 + 63) >> 6;
  v65 = v30;
  swift_bridgeObjectRetain_n();
  v36 = 0;
  v62 = v31;
  v61 = v35;
  v64 = v1;
  v63 = v4;
  v37 = v70;
  while (v34)
  {
LABEL_16:
    v39 = __clz(__rbit64(v34)) | (v36 << 6);
    v40 = v65;
    v41 = *(v65 + 48);
    v42 = type metadata accessor for UUID();
    (*(*(v42 - 8) + 16))(v4, v41 + *(*(v42 - 8) + 72) * v39, v42);
    v43 = *(*(v40 + 56) + 8 * v39);
    *&v4[*(v73 + 48)] = v43;
    v44 = *(v1 + v75);
    v45 = v43;

    v46 = v45;
    v47 = v44;
    v48 = specialized SystemCoordinatorState.aliasingParticipantIDs(with:)(v47, v1, v46);

    v1 = OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_currentState;
    swift_beginAccess();
    v49 = *&v46[v1];
    *&v46[v1] = v48;
    v50 = *&v46[OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_queue];
    *v37 = v50;
    v51 = v72;
    v67(v37, v69, v72);
    v52 = v48;
    v53 = v50;
    LOBYTE(v50) = _dispatchPreconditionTest(_:)();
    v66(v37, v51);
    if ((v50 & 1) == 0)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v54 = *&v46[v1];
    v55 = static NSObject.== infix(_:_:)();

    if ((v55 & 1) != 0 || (v56 = OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_connection, swift_beginAccess(), (v57 = *&v46[v56]) == 0))
    {
    }

    else
    {
      v58 = v57;
      XPCHostConnection.clientObject.getter();

      v59 = v76;
      v60 = *&v46[v1];
      [v59 updateState_];

      swift_unknownObjectRelease();
    }

    v1 = v64;
    v34 &= v34 - 1;
    v4 = v63;
    outlined destroy of NSObject?(v63, &_s10Foundation4UUIDV3key_15GroupActivities21SystemCoordinatorHostC5valuetMd, &_s10Foundation4UUIDV3key_15GroupActivities21SystemCoordinatorHostC5valuetMR);
    v31 = v62;
    v35 = v61;
  }

  while (1)
  {
    v38 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v38 >= v35)
    {
      break;
    }

    v34 = *(v31 + 8 * v38);
    ++v36;
    if (v34)
    {
      v36 = v38;
      goto LABEL_16;
    }
  }
}

id SystemCoordinatorState.aliasingParticipantIDs(with:)(uint64_t (*a1)(uint64_t))
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR___CPSystemCoordinatorState_remoteParticipantStates);
  v40 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_15GroupActivities22SystemCoordinatorStateC011ParticipantH0CTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (1)
  {
    v10 = v9;
    if (!v7)
    {
      break;
    }

LABEL_8:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = (v9 << 9) | (8 * v11);
    v13 = *(*(v4 + 48) + v12);
    v14 = *(*(v4 + 56) + v12);
    v15 = a1(v13);
    if (v16)
    {
    }

    else
    {
      v39 = v15;
      v38 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44 = v40;
      v18 = specialized __RawDictionaryStorage.find<A>(_:)(v39);
      v20 = v40[2];
      v21 = (v19 & 1) == 0;
      v22 = __OFADD__(v20, v21);
      v23 = v20 + v21;
      if (v22)
      {
        goto LABEL_22;
      }

      if (v40[3] >= v23)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v42 = v18;
          v30 = v19;
          specialized _NativeDictionary.copy()();
          v19 = v30;
          v18 = v42;
        }
      }

      else
      {
        v41 = v19;
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v23, isUniquelyReferenced_nonNull_native);
        v18 = specialized __RawDictionaryStorage.find<A>(_:)(v39);
        v25 = v24 & 1;
        v19 = v41;
        if ((v41 & 1) != v25)
        {
          goto LABEL_24;
        }
      }

      v40 = v44;
      if (v19)
      {
        v26 = v44[7];
        v27 = *(v26 + 8 * v18);
        *(v26 + 8 * v18) = v38;
      }

      else
      {
        v44[(v18 >> 6) + 8] |= 1 << v18;
        *(v40[6] + 8 * v18) = v39;
        *(v40[7] + 8 * v18) = v38;

        v28 = v40[2];
        v22 = __OFADD__(v28, 1);
        v29 = v28 + 1;
        if (v22)
        {
          goto LABEL_23;
        }

        v40[2] = v29;
      }
    }
  }

  while (1)
  {
    v9 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      v31 = *(v2 + OBJC_IVAR___CPSystemCoordinatorState_localParticipantState);
      v32 = *(v2 + OBJC_IVAR___CPSystemCoordinatorState_groupImmersionStyle);
      v33 = *(v2 + OBJC_IVAR___CPSystemCoordinatorState_activeSpatialParticipantCount);
      v34 = type metadata accessor for SystemCoordinatorState();
      v35 = objc_allocWithZone(v34);
      *&v35[OBJC_IVAR___CPSystemCoordinatorState_localParticipantState] = v31;
      v35[OBJC_IVAR___CPSystemCoordinatorState_groupImmersionStyle] = v32;
      *&v35[OBJC_IVAR___CPSystemCoordinatorState_activeSpatialParticipantCount] = v33;
      *&v35[OBJC_IVAR___CPSystemCoordinatorState_remoteParticipantStates] = v40;
      v43.receiver = v35;
      v43.super_class = v34;
      v36 = v31;
      return objc_msgSendSuper2(&v43, sel_init);
    }

    v7 = *(v4 + 64 + 8 * v9);
    ++v10;
    if (v7)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t SystemCoordinatorHostManager.ConfigurationUpdatesRateLimit.debounceInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DispatchTimeInterval();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SystemCoordinatorHostManager.ConfigurationUpdatesRateLimit.throttleInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SystemCoordinatorHostManager.ConfigurationUpdatesRateLimit(0) + 20);
  v4 = type metadata accessor for DispatchTimeInterval();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SystemCoordinatorHostManager.ConfigurationUpdatesRateLimit.gracePeriod.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SystemCoordinatorHostManager.ConfigurationUpdatesRateLimit(0) + 24);
  v4 = type metadata accessor for DispatchTimeInterval();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SystemCoordinatorHostManager.ConfigurationUpdatesRateLimit.init(throttleInterval:gracePeriod:debounceInterval:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for SystemCoordinatorHostManager.ConfigurationUpdatesRateLimit(0);
  v9 = *(v8 + 20);
  v10 = type metadata accessor for DispatchTimeInterval();
  v12 = *(*(v10 - 8) + 32);
  (v12)((v10 - 8), a4 + v9, a1, v10);
  v12(a4 + *(v8 + 24), a2, v10);

  return (v12)(a4, a3, v10);
}

uint64_t SystemCoordinatorHostManager.__allocating_init(configurationUpdatesRateLimit:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  SystemCoordinatorHostManager.init(configurationUpdatesRateLimit:)(a1);
  return v5;
}

uint64_t SystemCoordinatorHostManager.init(configurationUpdatesRateLimit:)(uint64_t a1)
{
  v2 = v1;
  v34 = a1;
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v31 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDy10Foundation4UUIDV15GroupActivities30SystemCoordinatorConfigurationCGGMd, &_s7Combine9PublishedVySDy10Foundation4UUIDV15GroupActivities30SystemCoordinatorConfigurationCGGMR);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v30 - v13;
  v15 = OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager__configurations;
  v16 = MEMORY[0x1E69E7CC0];
  v35 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_15GroupActivities30SystemCoordinatorConfigurationCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy10Foundation4UUIDV15GroupActivities30SystemCoordinatorConfigurationCGMd, &_sSDy10Foundation4UUIDV15GroupActivities30SystemCoordinatorConfigurationCGMR);
  Published.init(initialValue:)();
  (*(v11 + 32))(v1 + v15, v14, v10);
  *(v1 + OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager_hosts) = MEMORY[0x1E69E7CC8];
  v17 = OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager_queue;
  type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.unspecified.getter();
  v35 = v16;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, 255, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v32 + 104))(v31, *MEMORY[0x1E69E8090], v33);
  *(v1 + v17) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v18 = (v1 + OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager_aliasParticipantIdentifier);
  *v18 = protocol witness for CodingKey.intValue.getter in conformance AnyGroupActivity.CodingKeys;
  v18[1] = 0;
  v19 = OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager__state;
  v20 = type metadata accessor for SystemCoordinatorState.ParticipantState();
  v21 = objc_allocWithZone(v20);
  v21[OBJC_IVAR___CPSystemCoordinatorParticipantState_isSpatial] = 0;
  v21[OBJC_IVAR___CPSystemCoordinatorParticipantState_isSpatialInitiator] = 0;
  v22 = &v21[OBJC_IVAR___CPSystemCoordinatorParticipantState_roleIdentifier];
  *v22 = 0;
  v22[1] = 0;
  *&v21[OBJC_IVAR___CPSystemCoordinatorParticipantState_xpcWrappedSeat] = 0;
  v37.receiver = v21;
  v37.super_class = v20;
  v23 = objc_msgSendSuper2(&v37, sel_init);
  v24 = type metadata accessor for SystemCoordinatorState();
  v25 = objc_allocWithZone(v24);
  *&v25[OBJC_IVAR___CPSystemCoordinatorState_localParticipantState] = v23;
  v25[OBJC_IVAR___CPSystemCoordinatorState_groupImmersionStyle] = 3;
  *&v25[OBJC_IVAR___CPSystemCoordinatorState_activeSpatialParticipantCount] = 0;
  *&v25[OBJC_IVAR___CPSystemCoordinatorState_remoteParticipantStates] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_15GroupActivities22SystemCoordinatorStateC011ParticipantH0CTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v36.receiver = v25;
  v36.super_class = v24;
  *(v2 + v19) = objc_msgSendSuper2(&v36, sel_init);
  v26 = v34;
  outlined init with copy of SystemCoordinatorHostManager.ConfigurationUpdatesRateLimit(v34, v2 + OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager_configurationUpdatesRateLimit, type metadata accessor for SystemCoordinatorHostManager.ConfigurationUpdatesRateLimit);
  type metadata accessor for ConversationManagerClient();
  v27 = static ConversationManagerClient.shared.getter();
  type metadata accessor for SystemCoordinatorHostManager.EndpointProvider();
  swift_allocObject();
  swift_weakInit();
  swift_beginAccess();
  swift_weakAssign();
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type SystemCoordinatorHostManager.EndpointProvider and conformance SystemCoordinatorHostManager.EndpointProvider, v28, type metadata accessor for SystemCoordinatorHostManager.EndpointProvider);
  ConversationManagerClient.registerEndpointProvider(_:)();

  outlined destroy of SystemCoordinatorHostManager.ConfigurationUpdatesRateLimit(v26);
  return v2;
}

Swift::Void __swiftcall SystemCoordinatorHostManager.registerEndpointProvider()()
{
  type metadata accessor for ConversationManagerClient();
  v0 = static ConversationManagerClient.shared.getter();
  type metadata accessor for SystemCoordinatorHostManager.EndpointProvider();
  swift_allocObject();
  swift_weakInit();
  swift_beginAccess();
  swift_weakAssign();
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type SystemCoordinatorHostManager.EndpointProvider and conformance SystemCoordinatorHostManager.EndpointProvider, v1, type metadata accessor for SystemCoordinatorHostManager.EndpointProvider);
  ConversationManagerClient.registerEndpointProvider(_:)();
}

uint64_t SystemCoordinatorHostManager.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  SystemCoordinatorHostManager.init()();
  return v3;
}

uint64_t SystemCoordinatorHostManager.init()()
{
  v1 = v0;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v38 = *(v2 - 8);
  v39 = v2;
  v3 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDy10Foundation4UUIDV15GroupActivities30SystemCoordinatorConfigurationCGGMd, &_s7Combine9PublishedVySDy10Foundation4UUIDV15GroupActivities30SystemCoordinatorConfigurationCGGMR);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - v13;
  v15 = OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager__configurations;
  v16 = MEMORY[0x1E69E7CC0];
  v40 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_15GroupActivities30SystemCoordinatorConfigurationCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy10Foundation4UUIDV15GroupActivities30SystemCoordinatorConfigurationCGMd, &_sSDy10Foundation4UUIDV15GroupActivities30SystemCoordinatorConfigurationCGMR);
  Published.init(initialValue:)();
  (*(v11 + 32))(v0 + v15, v14, v10);
  *(v0 + OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager_hosts) = MEMORY[0x1E69E7CC8];
  v17 = OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager_queue;
  type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.unspecified.getter();
  v40 = v16;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, 255, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v38 + 104))(v5, *MEMORY[0x1E69E8090], v39);
  *(v0 + v17) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v18 = (v0 + OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager_aliasParticipantIdentifier);
  *v18 = protocol witness for CodingKey.intValue.getter in conformance AnyGroupActivity.CodingKeys;
  v18[1] = 0;
  v19 = OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager__state;
  v20 = type metadata accessor for SystemCoordinatorState.ParticipantState();
  v21 = objc_allocWithZone(v20);
  v21[OBJC_IVAR___CPSystemCoordinatorParticipantState_isSpatial] = 0;
  v21[OBJC_IVAR___CPSystemCoordinatorParticipantState_isSpatialInitiator] = 0;
  v22 = &v21[OBJC_IVAR___CPSystemCoordinatorParticipantState_roleIdentifier];
  *v22 = 0;
  v22[1] = 0;
  *&v21[OBJC_IVAR___CPSystemCoordinatorParticipantState_xpcWrappedSeat] = 0;
  v42.receiver = v21;
  v42.super_class = v20;
  v23 = objc_msgSendSuper2(&v42, sel_init);
  v24 = type metadata accessor for SystemCoordinatorState();
  v25 = objc_allocWithZone(v24);
  *&v25[OBJC_IVAR___CPSystemCoordinatorState_localParticipantState] = v23;
  v25[OBJC_IVAR___CPSystemCoordinatorState_groupImmersionStyle] = 3;
  *&v25[OBJC_IVAR___CPSystemCoordinatorState_activeSpatialParticipantCount] = 0;
  *&v25[OBJC_IVAR___CPSystemCoordinatorState_remoteParticipantStates] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_15GroupActivities22SystemCoordinatorStateC011ParticipantH0CTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v41.receiver = v25;
  v41.super_class = v24;
  *(v1 + v19) = objc_msgSendSuper2(&v41, sel_init);
  v26 = (v1 + OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager_configurationUpdatesRateLimit);
  v27 = type metadata accessor for SystemCoordinatorHostManager.ConfigurationUpdatesRateLimit(0);
  v28 = *(v27 + 20);
  *&v26[v28] = 1;
  v29 = *MEMORY[0x1E69E7F48];
  v30 = type metadata accessor for DispatchTimeInterval();
  v31 = *(*(v30 - 8) + 104);
  v31(&v26[v28], v29, v30);
  v32 = *(v27 + 24);
  *&v26[v32] = 500;
  v33 = *MEMORY[0x1E69E7F38];
  v31(&v26[v32], v33, v30);
  *v26 = 100;
  v31(v26, v33, v30);
  type metadata accessor for ConversationManagerClient();
  v34 = static ConversationManagerClient.shared.getter();
  type metadata accessor for SystemCoordinatorHostManager.EndpointProvider();
  swift_allocObject();
  swift_weakInit();
  swift_beginAccess();
  swift_weakAssign();
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type SystemCoordinatorHostManager.EndpointProvider and conformance SystemCoordinatorHostManager.EndpointProvider, v35, type metadata accessor for SystemCoordinatorHostManager.EndpointProvider);
  ConversationManagerClient.registerEndpointProvider(_:)();

  return v1;
}

uint64_t SystemCoordinatorHostManager.deinit()
{
  v1 = v0;
  type metadata accessor for ConversationManagerClient();
  v2 = static ConversationManagerClient.shared.getter();
  v3._object = 0x80000001AF01BF70;
  v3._countAndFlagsBits = 0xD00000000000002CLL;
  ConversationManagerClient.unregisterEndpointProvider(identifier:)(v3);

  v4 = OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager__configurations;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDy10Foundation4UUIDV15GroupActivities30SystemCoordinatorConfigurationCGGMd, &_s7Combine9PublishedVySDy10Foundation4UUIDV15GroupActivities30SystemCoordinatorConfigurationCGGMR);
  (*(*(v5 - 8) + 8))(v1 + v4, v5);
  v6 = *(v1 + OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager_hosts);

  v7 = *(v1 + OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager_aliasParticipantIdentifier + 8);

  outlined destroy of SystemCoordinatorHostManager.ConfigurationUpdatesRateLimit(v1 + OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager_configurationUpdatesRateLimit);
  return v1;
}

Swift::Void __swiftcall SystemCoordinatorHostManager.unregisterEndpointProvider()()
{
  type metadata accessor for ConversationManagerClient();
  v1 = static ConversationManagerClient.shared.getter();
  v0._object = 0x80000001AF01BF70;
  v0._countAndFlagsBits = 0xD00000000000002CLL;
  ConversationManagerClient.unregisterEndpointProvider(identifier:)(v0);
}

uint64_t SystemCoordinatorHostManager.__deallocating_deinit()
{
  SystemCoordinatorHostManager.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t SystemCoordinatorHostManager.EndpointProvider.__allocating_init(_:)()
{
  v0 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();
  swift_weakAssign();

  return v0;
}

uint64_t SystemCoordinatorHostManager.setAliasParticipantIdentifier(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager_queue);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = partial apply for closure #1 in SystemCoordinatorHostManager.setAliasParticipantIdentifier(_:);
  *(v8 + 24) = v7;
  v11[4] = thunk for @callee_guaranteed () -> ()partial apply;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed () -> ();
  v11[3] = &block_descriptor_38;
  v9 = _Block_copy(v11);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t SystemCoordinatorHostManager.refreshAliasedParticipantIdentifiers(for:)(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = *(v1 + OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager_queue);
  (*(v4 + 16))(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  (*(v4 + 32))(v8 + v7, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v9 = swift_allocObject();
  *(v9 + 16) = partial apply for closure #1 in SystemCoordinatorHostManager.refreshAliasedParticipantIdentifiers(for:);
  *(v9 + 24) = v8;
  aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_48;
  v10 = _Block_copy(aBlock);

  dispatch_sync(v6, v10);
  _Block_release(v10);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

void closure #1 in SystemCoordinatorHostManager.refreshAliasedParticipantIdentifiers(for:)(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager_hosts;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if (*(v5 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a2), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
    v9 = swift_endAccess();
    v10 = *(a1 + OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager__state);
    MEMORY[0x1EEE9AC00](v9);
    v11 = v8;
    v12 = v10;
    v13 = SystemCoordinatorState.aliasingParticipantIDs(with:)(partial apply for closure #1 in closure #1 in SystemCoordinatorHostManager.refreshAliasedParticipantIdentifiers(for:));

    v14 = OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_currentState;
    swift_beginAccess();
    v15 = *&v11[v14];
    *&v11[v14] = v13;
    v16 = v13;
    SystemCoordinatorHost.currentState.didset();
  }

  else
  {
    swift_endAccess();
  }
}

uint64_t SystemCoordinatorHostManager.host(for:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager_queue);
  type metadata accessor for SystemCoordinatorHost();
  OS_dispatch_queue.sync<A>(execute:)();
  return v3;
}

objc_class *closure #1 in SystemCoordinatorHostManager.host(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, objc_class **a3@<X8>)
{
  v6 = type metadata accessor for SystemCoordinatorHostManager.ConfigurationUpdatesRateLimit(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager_hosts;
  swift_beginAccess();
  v16 = *(a1 + v15);
  if (*(v16 + 16) && (v17 = specialized __RawDictionaryStorage.find<A>(_:)(a2), (v18 & 1) != 0))
  {
    v19 = *(*(v16 + 56) + 8 * v17);
    swift_endAccess();
    *a3 = v19;
    return v19;
  }

  else
  {
    swift_endAccess();
    (*(v11 + 16))(v14, a2, v10);
    v21 = *(a1 + OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager_queue);
    outlined init with copy of SystemCoordinatorHostManager.ConfigurationUpdatesRateLimit(a1 + OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager_configurationUpdatesRateLimit, v9, type metadata accessor for SystemCoordinatorHostManager.ConfigurationUpdatesRateLimit);
    v22 = objc_allocWithZone(type metadata accessor for SystemCoordinatorHost());
    v23 = v21;
    v24 = specialized SystemCoordinatorHost.init(uuid:queue:configurationUpdatesRateLimit:)(v14, v23, v9);

    v25 = v24 + OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_delegate;
    swift_beginAccess();
    *(v25 + 1) = &protocol witness table for SystemCoordinatorHostManager;
    v26 = swift_unknownObjectWeakAssign();
    v27 = *(a1 + OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager__state);
    MEMORY[0x1EEE9AC00](v26);
    *(&v37 - 2) = a1;
    *(&v37 - 1) = a2;
    v29 = v28;
    v30 = SystemCoordinatorState.aliasingParticipantIDs(with:)(partial apply for closure #1 in closure #1 in SystemCoordinatorHostManager.host(for:));

    v31 = OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_currentState;
    swift_beginAccess();
    v32 = *(v24 + v31);
    *(v24 + v31) = v30;
    v33 = v30;
    SystemCoordinatorHost.currentState.didset();

    swift_beginAccess();
    v34 = v24;
    v35 = *(a1 + v15);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = *(a1 + v15);
    *(a1 + v15) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v34, a2, isUniquelyReferenced_nonNull_native, &_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities21SystemCoordinatorHostCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities21SystemCoordinatorHostCGMR);
    *(a1 + v15) = v38;
    result = swift_endAccess();
    *a3 = v34;
  }

  return result;
}

uint64_t closure #1 in closure #1 in SystemCoordinatorHostManager.refreshAliasedParticipantIdentifiers(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager_aliasParticipantIdentifier);
  v5 = *(a2 + OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager_aliasParticipantIdentifier + 8);

  v7 = v6(a3, a1);

  return v7;
}

uint64_t SystemCoordinatorHostManager.EndpointProvider.manager.setter()
{
  swift_beginAccess();
  swift_weakAssign();
}

void (*SystemCoordinatorHostManager.EndpointProvider.manager.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return SystemCoordinatorHostManager.EndpointProvider.manager.modify;
}

void SystemCoordinatorHostManager.EndpointProvider.manager.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32);
  swift_weakAssign();
  if (a2)
  {
    v6 = v3[3];

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t SystemCoordinatorHostManager.EndpointProvider.init(_:)()
{
  swift_weakInit();
  swift_beginAccess();
  swift_weakAssign();

  return v0;
}

id SystemCoordinatorHostManager.EndpointProvider.customEndpoint(for:activity:)(void *a1, void *a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for systemCoordinator != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.systemCoordinator);
  (*(v6 + 16))(v9, a1, v5);
  v11 = a2;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v31 = v2;
    v15 = v14;
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v33 = v30;
    *v15 = 136315394;
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = a1;
    v19 = v18;
    (*(v6 + 8))(v9, v5);
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v19, &v33);
    a1 = v17;

    *(v15 + 4) = v20;
    *(v15 + 12) = 2112;
    *(v15 + 14) = v11;
    v21 = v29;
    *v29 = v11;
    v22 = v11;
    _os_log_impl(&dword_1AEE80000, v12, v13, "SystemCoordinatorHostManager: Received custom endpoint request for %s %@", v15, 0x16u);
    outlined destroy of NSObject?(v21, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B2715BA0](v21, -1, -1);
    v23 = v30;
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x1B2715BA0](v23, -1, -1);
    MEMORY[0x1B2715BA0](v15, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v25 = *(Strong + OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager_queue);
  *(&v29 - 2) = MEMORY[0x1EEE9AC00](Strong);
  *(&v29 - 1) = a1;
  type metadata accessor for SystemCoordinatorHost();
  OS_dispatch_queue.sync<A>(execute:)();

  v26 = v32;
  v27 = *&v32[OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_endpoint];

  return v27;
}

uint64_t SystemCoordinatorHostManager.EndpointProvider.__deallocating_deinit()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

void SystemCoordinatorHostManager.systemCoordinatorHost(_:didUpdateConfiguration:)(void *a1, void *a2)
{
  v4 = v2;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v4 + OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager_queue);
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x1E69E8020], v7);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v11, v7);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    swift_once();
    goto LABEL_8;
  }

  v3 = OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_uuid;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v14 = v42[0];
  if (*(v42[0] + 16) && (v15 = specialized __RawDictionaryStorage.find<A>(_:)(a1 + v3), (v16 & 1) != 0))
  {
    v17 = *(*(v14 + 56) + 8 * v15);

    type metadata accessor for SystemCoordinatorConfiguration();
    v18 = a2;
    v19 = static NSObject.== infix(_:_:)();

    if (v19)
    {
      return;
    }
  }

  else
  {
  }

  if (one-time initialization token for systemCoordinator != -1)
  {
    goto LABEL_12;
  }

LABEL_8:
  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Log.systemCoordinator);
  v21 = a2;
  v22 = a1;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v42[0] = v26;
    *v25 = 136315394;
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, v42);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2080;
    v41 = v21;
    type metadata accessor for SystemCoordinatorConfiguration();
    v30 = v21;
    v31 = String.init<A>(reflecting:)();
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, v42);

    *(v25 + 14) = v33;
    _os_log_impl(&dword_1AEE80000, v23, v24, "SystemCoordinatorHostManager: Updating configuration for %s to %s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v26, -1, -1);
    MEMORY[0x1B2715BA0](v25, -1, -1);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v34 = v21;
  v35 = static Published.subscript.modify();
  v37 = v36;
  v38 = *v36;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v37;
  *v37 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v34, a1 + v3, isUniquelyReferenced_nonNull_native, &_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities30SystemCoordinatorConfigurationCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities30SystemCoordinatorConfigurationCGMR);
  *v37 = v41;
  v35(v42, 0);
}

uint64_t SystemCoordinatorHostManager.systemCoordinatorHostDidInvalidate(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v2 + OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager_queue);
  *v13 = v14;
  (*(v10 + 104))(v13, *MEMORY[0x1E69E8020], v9);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v13, v9);
  if (v14)
  {
    if (one-time initialization token for systemCoordinator == -1)
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
  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Log.systemCoordinator);
  v17 = a1;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32[0] = v31;
    *v20 = 136315138;
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v4;
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, v32);

    *(v20 + 4) = v24;
    v4 = v23;
    _os_log_impl(&dword_1AEE80000, v18, v19, "SystemCoordinatorHostManager: Host connection invalidated for %s", v20, 0xCu);
    v25 = v31;
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x1B2715BA0](v25, -1, -1);
    MEMORY[0x1B2715BA0](v20, -1, -1);
  }

  v26 = OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_uuid;
  v27 = *(v5 + 16);
  v27(v8, &v17[OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_uuid], v4);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(0, v8);
  swift_endAccess();
  v27(v8, &v17[v26], v4);
  swift_getKeyPath();
  swift_getKeyPath();
  v28 = static Published.subscript.modify();
  specialized Dictionary.subscript.setter(0, v8);
  v28(v32, 0);
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v7;
  if (*(*v7 + 24) > a1)
  {
    v16 = *(*v7 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v47 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v18 = result;
  if (*(v15 + 16))
  {
    v51 = v14;
    v43 = v7;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v44 = (v11 + 16);
    v45 = v15;
    v46 = v11;
    v48 = (v11 + 32);
    v25 = result + 64;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v30 = v27 | (v19 << 6);
      v31 = *(v15 + 48);
      v50 = *(v46 + 72);
      v32 = v31 + v50 * v30;
      if (v47)
      {
        (*v48)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      else
      {
        (*v44)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      v33 = *(v18 + 40);
      lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v34 = -1 << *(v18 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v25 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v25 + 8 * v36);
          if (v40 != -1)
          {
            v26 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v35) & ~*(v25 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = (*v48)(*(v18 + 48) + v50 * v26, v51, v10);
      *(*(v18 + 56) + 8 * v26) = v49;
      ++*(v18 + 16);
      v15 = v45;
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v29 = v20[v19];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v7 = v43;
      goto LABEL_36;
    }

    v41 = 1 << *(v15 + 32);
    v7 = v43;
    if (v41 >= 64)
    {
      bzero(v20, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v41;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v7 = v18;
  return result;
}

{
  v7 = v4;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v7;
  if (*(*v7 + 24) > a1)
  {
    v16 = *(*v7 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v47 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v18 = result;
  if (*(v15 + 16))
  {
    v51 = v14;
    v43 = v7;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v44 = (v11 + 16);
    v45 = v15;
    v46 = v11;
    v48 = (v11 + 32);
    v25 = result + 64;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v30 = v27 | (v19 << 6);
      v31 = *(v15 + 48);
      v50 = *(v46 + 72);
      v32 = v31 + v50 * v30;
      if (v47)
      {
        (*v48)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      else
      {
        (*v44)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      v33 = *(v18 + 40);
      lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v34 = -1 << *(v18 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v25 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v25 + 8 * v36);
          if (v40 != -1)
          {
            v26 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v35) & ~*(v25 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = (*v48)(*(v18 + 48) + v50 * v26, v51, v10);
      *(*(v18 + 56) + 8 * v26) = v49;
      ++*(v18 + 16);
      v15 = v45;
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v29 = v20[v19];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v7 = v43;
      goto LABEL_36;
    }

    v41 = 1 << *(v15 + 32);
    v7 = v43;
    if (v41 >= 64)
    {
      bzero(v20, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v41;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v7 = v18;
  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for InternalParticipant();
  v39 = *(v6 - 8);
  v7 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys6UInt64V15GroupActivities19InternalParticipantVGMd, &_ss18_DictionaryStorageCys6UInt64V15GroupActivities19InternalParticipantVGMR);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v13 = result;
  if (*(v10 + 16))
  {
    v38 = v3;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v20 = result + 64;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v25 = v22 | (v14 << 6);
      v26 = *(*(v10 + 48) + 8 * v25);
      v27 = *(v39 + 72);
      v28 = *(v10 + 56) + v27 * v25;
      if (v40)
      {
        _s15GroupActivities11ParticipantVWObTm_0(v28, v9, type metadata accessor for InternalParticipant);
      }

      else
      {
        outlined init with copy of SystemCoordinatorHostManager.ConfigurationUpdatesRateLimit(v28, v9, type metadata accessor for InternalParticipant);
      }

      result = MEMORY[0x1B2715020](*(v13 + 40), v26);
      v29 = -1 << *(v13 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v20 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v20 + 8 * v31);
          if (v35 != -1)
          {
            v21 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v30) & ~*(v20 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v13 + 48) + 8 * v21) = v26;
      result = _s15GroupActivities11ParticipantVWObTm_0(v9, *(v13 + 56) + v27 * v21, type metadata accessor for InternalParticipant);
      ++*(v13 + 16);
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v36 = 1 << *(v10 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero((v10 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v36;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

{
  v3 = v2;
  v6 = type metadata accessor for LinkManager.Attachment(0);
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v52 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities11LinkManagerC10AttachmentVGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities11LinkManagerC10AttachmentVGMR);
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
        _s15GroupActivities11ParticipantVWObTm_0(v31 + v32 * v28, v52, type metadata accessor for LinkManager.Attachment);
      }

      else
      {
        (*v44)(v51, v30, v9);
        v33 = *(v13 + 56);
        v32 = *(v47 + 72);
        outlined init with copy of SystemCoordinatorHostManager.ConfigurationUpdatesRateLimit(v33 + v32 * v28, v52, type metadata accessor for LinkManager.Attachment);
      }

      v34 = *(v16 + 40);
      lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
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
      result = _s15GroupActivities11ParticipantVWObTm_0(v52, *(v16 + 56) + v32 * v24, type metadata accessor for LinkManager.Attachment);
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

{
  v3 = v2;
  v6 = type metadata accessor for CodingUserInfoKey();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys17CodingUserInfoKeyVs8Sendable_pGMd, &_ss18_DictionaryStorageCys17CodingUserInfoKeyVs8Sendable_pGMR);
  v43 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v11 + 16))
  {
    v46 = v10;
    v47 = v6;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    v42 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v45 = *(v7 + 72);
      v28 = v27 + v45 * v26;
      if (v43)
      {
        (*v44)(v46, v28, v47);
        outlined init with take of Any((*(v11 + 56) + 32 * v26), v48);
      }

      else
      {
        (*v40)(v46, v28, v47);
        outlined init with copy of Any(*(v11 + 56) + 32 * v26, v48);
      }

      v29 = *(v14 + 40);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v7 = v41;
        v11 = v42;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v7 = v41;
      v11 = v42;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v44)((*(v14 + 48) + v45 * v22), v46, v47);
      result = outlined init with take of Any(v48, (*(v14 + 56) + 32 * v22));
      ++*(v14 + 16);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities22SystemCoordinatorTableC0B033_E237FEFAA943BC3482616BB5915F349DLLVGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities22SystemCoordinatorTableC0B033_E237FEFAA943BC3482616BB5915F349DLLVGMR);
  v48 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v11 + 16))
  {
    v53 = v10;
    v44 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v45 = (v7 + 16);
    v46 = v11;
    v47 = v7;
    v49 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v28 = v25 | (v15 << 6);
      v29 = *(v11 + 48);
      v52 = *(v47 + 72);
      v30 = v29 + v52 * v28;
      if (v48)
      {
        (*v49)(v53, v30, v6);
        v31 = (*(v11 + 56) + 16 * v28);
        v32 = *v31;
        v50 = v31[1];
        v51 = v32;
      }

      else
      {
        (*v45)(v53, v30, v6);
        v33 = (*(v11 + 56) + 16 * v28);
        v34 = v33[1];
        v51 = *v33;

        v50 = v34;
      }

      v35 = *(v14 + 40);
      lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v36 = -1 << *(v14 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v21 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v21 + 8 * v38);
          if (v42 != -1)
          {
            v22 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v37) & ~*(v21 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v49)(*(v14 + 48) + v52 * v22, v53, v6);
      v23 = (*(v14 + 56) + 16 * v22);
      v24 = v50;
      *v23 = v51;
      v23[1] = v24;
      ++*(v14 + 16);
      v11 = v46;
    }

    v26 = v15;
    while (1)
    {
      v15 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v27 = v16[v15];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v19 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_36;
    }

    v43 = 1 << *(v11 + 32);
    v3 = v44;
    if (v43 >= 64)
    {
      bzero(v16, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v43;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities0E12SessionTableC0B033_64E0A582F9EAD21E39070881D97E5C2ALLVGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities0E12SessionTableC0B033_64E0A582F9EAD21E39070881D97E5C2ALLVGMR);
  v42 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v11 + 16))
  {
    v45 = v10;
    v46 = v6;
    v38 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v39 = (v7 + 16);
    v40 = v7;
    v43 = (v7 + 32);
    v21 = result + 64;
    v41 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v44 = *(v7 + 72);
      v28 = v27 + v44 * v26;
      if (v42)
      {
        (*v43)(v45, v28, v46);
        outlined init with take of GroupSessionTable.Storage(*(v11 + 56) + 24 * v26, v47);
      }

      else
      {
        (*v39)(v45, v28, v46);
        outlined init with copy of GroupSessionTable.Storage(*(v11 + 56) + 24 * v26, v47);
      }

      v29 = *(v14 + 40);
      lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v7 = v40;
        v11 = v41;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v7 = v40;
      v11 = v41;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v43)((*(v14 + 48) + v44 * v22), v45, v46);
      result = outlined init with take of GroupSessionTable.Storage(v47, *(v14 + 56) + 24 * v22);
      ++*(v14 + 16);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVSiGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSiGMR);
  v44 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v40 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v41 = (v7 + 16);
    v42 = v7;
    v45 = (v7 + 32);
    v21 = result + 64;
    v43 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v24 = (v19 - 1) & v19;
LABEL_17:
      v27 = v23 | (v15 << 6);
      v46 = v24;
      v28 = *(v7 + 72);
      v29 = *(v11 + 48) + v28 * v27;
      if (v44)
      {
        (*v45)(v47, v29, v6);
      }

      else
      {
        (*v41)(v47, v29, v6);
      }

      v30 = *(*(v11 + 56) + 8 * v27);
      v31 = *(v14 + 40);
      lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v32 = -1 << *(v14 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v21 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v45)(*(v14 + 48) + v28 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v30;
      ++*(v14 + 16);
      v7 = v42;
      v11 = v43;
      v19 = v46;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v23 = __clz(__rbit64(v26));
        v24 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v11 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v16, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v39;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

{
  v3 = v2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySi_GMd, &_sScS12ContinuationVySi_GMR);
  v6 = *(v42 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v41 = &v37 - v8;
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySiScS12ContinuationVySi_GGMd, &_ss18_DictionaryStorageCySiScS12ContinuationVySi_GGMR);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v9 + 16))
  {
    v37 = v3;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v38 = (v6 + 16);
    v39 = v6;
    v19 = (v6 + 32);
    v20 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(*(v9 + 48) + 8 * v25);
      v27 = *(v6 + 72);
      v28 = *(v9 + 56) + v27 * v25;
      if (v40)
      {
        (*v19)(v41, v28, v42);
      }

      else
      {
        (*v38)(v41, v28, v42);
      }

      result = MEMORY[0x1B2715020](*(v12 + 40), v26);
      v29 = -1 << *(v12 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v20 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v20 + 8 * v31);
          if (v35 != -1)
          {
            v21 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v30) & ~*(v20 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v12 + 48) + 8 * v21) = v26;
      result = (*v19)(*(v12 + 56) + v27 * v21, v41, v42);
      ++*(v12 + 16);
      v6 = v39;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_36;
    }

    v36 = 1 << *(v9 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero((v9 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v36;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGMR);
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySO15GroupActivities0C16SessionMessengerC18MessageStreamStoreO0B033_7F6FED5A36F2E7FBC6D91B446E55DE7FLLVGMd, &_ss18_DictionaryStorageCySO15GroupActivities0C16SessionMessengerC18MessageStreamStoreO0B033_7F6FED5A36F2E7FBC6D91B446E55DE7FLLVGMR);
  v37 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
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
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = (*(v5 + 56) + 24 * v21);
      v24 = *v23;
      v25 = v23[1];
      v26 = v23[2];
      if ((v37 & 1) == 0)
      {
      }

      result = MEMORY[0x1B2715020](*(v8 + 40), v22);
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = (*(v8 + 56) + 24 * v16);
      *v17 = v24;
      v17[1] = v25;
      v17[2] = v26;
      ++*(v8 + 16);
      v5 = v36;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySS15GroupActivities20TypedPayloadDecoding_pGMd, &_ss18_DictionaryStorageCySS15GroupActivities20TypedPayloadDecoding_pGMR, outlined init with take of Transferable);
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo12NSDictionaryCGMd, &_ss18_DictionaryStorageCySSSo12NSDictionaryCGMR);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
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
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4DataVGMd, &_ss18_DictionaryStorageCySS10Foundation4DataVGMR);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v37 = *(*(v5 + 56) + v22);
      if ((v36 & 1) == 0)
      {

        outlined copy of Data._Representation(v37, *(&v37 + 1));
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v8 + 56) + v17) = v37;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys6UInt64V15GroupActivities22SystemCoordinatorStateC011ParticipantH0CGMd, &_ss18_DictionaryStorageCys6UInt64V15GroupActivities22SystemCoordinatorStateC011ParticipantH0CGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v22;
      }

      result = MEMORY[0x1B2715020](*(v8 + 40), v21);
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
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

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15GroupActivities12TopicManagerC11ServiceNameOAE18ConversationClientC0G0OGMd, &_ss18_DictionaryStorageCy15GroupActivities12TopicManagerC11ServiceNameOAE18ConversationClientC0G0OGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(*(v5 + 48) + v23);
      v25 = (*(v5 + 56) + 48 * v23);
      if (a2)
      {
        v26 = *v25;
        v27 = v25[1];
        *(v39 + 9) = *(v25 + 25);
        v38 = v26;
        v39[0] = v27;
      }

      else
      {
        outlined init with copy of TopicManager.ConversationClient.Service(v25, &v38);
      }

      v28 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v24;
      v17 = (*(v8 + 56) + 48 * v16);
      v18 = v38;
      v19 = v39[0];
      *(v17 + 25) = *(v39 + 9);
      *v17 = v18;
      v17[1] = v19;
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v36 = 1 << *(v5 + 32);
      if (v36 >= 64)
      {
        bzero((v5 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v36;
      }

      *(v5 + 16) = 0;
    }

    v3 = v37;
  }

  else
  {
  }

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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS7Combine14AnyCancellableCGMd, &_ss18_DictionaryStorageCySS7Combine14AnyCancellableCGMR);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS15GroupActivities25SpatialTemplatePreferenceVGMd, &_ss18_DictionaryStorageCySS15GroupActivities25SpatialTemplatePreferenceVGMR);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v5 + 56) + v23;
      v28 = *v27;
      v41 = *(v27 + 9);
      v42 = *(v27 + 8);
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = *(v8 + 56) + v17;
      *v19 = v28;
      *(v19 + 8) = v42;
      *(v19 + 9) = v41;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Participant();
  v75 = *(v6 - 1);
  v7 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v76 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15GroupActivities11ParticipantVAC17SystemCoordinatorC0E5StateVGMd, &_ss18_DictionaryStorageCy15GroupActivities11ParticipantVAC17SystemCoordinatorC0E5StateVGMR);
  v11 = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = v11;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = *(v9 + 64);
    v72 = v3;
    v73 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & v14;
    v18 = (v15 + 63) >> 6;
    v19 = v11 + 64;
    v20 = v76;
    v74 = v18;
    while (v17)
    {
      v34 = __clz(__rbit64(v17));
      v35 = (v17 - 1) & v17;
LABEL_17:
      v39 = v34 | (v13 << 6);
      v40 = *(v9 + 48);
      v77 = *(v75 + 72);
      v78 = v35;
      v41 = v40 + v77 * v39;
      if (a2)
      {
        _s15GroupActivities11ParticipantVWObTm_0(v41, v20, type metadata accessor for Participant);
        v42 = (*(v9 + 56) + 240 * v39);
        v43 = v42[11];
        v44 = v42[12];
        v45 = v42[14];
        v92 = v42[13];
        v93 = v45;
        v90 = v43;
        v91 = v44;
        v46 = v42[7];
        v47 = v42[8];
        v48 = v42[10];
        v88 = v42[9];
        v89 = v48;
        v86 = v46;
        v87 = v47;
        v49 = v42[3];
        v50 = v42[4];
        v51 = v42[6];
        v84 = v42[5];
        v85 = v51;
        v83 = v50;
        v82 = v49;
        v53 = v42[1];
        v52 = v42[2];
        v79 = *v42;
        v80 = v53;
        v81 = v52;
      }

      else
      {
        outlined init with copy of SystemCoordinatorHostManager.ConfigurationUpdatesRateLimit(v41, v20, type metadata accessor for Participant);
        outlined init with copy of SystemCoordinator.ParticipantState(*(v9 + 56) + 240 * v39, &v79);
      }

      v54 = *(v12 + 40);
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
      dispatch thunk of Hashable.hash(into:)();
      v55 = (v20 + v6[5]);
      v56 = *v55;
      v57 = v55[1];
      String.hash(into:)();
      MEMORY[0x1B2715070](*(v20 + v6[6]));
      v58 = (v20 + v6[7]);
      if (v58[1])
      {
        v59 = v6;
        v60 = v12;
        v61 = a2;
        v62 = v9;
        v63 = *v58;
        Hasher._combine(_:)(1u);
        v9 = v62;
        a2 = v61;
        v12 = v60;
        v6 = v59;
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v20 = v76;
      Hasher._combine(_:)(v76[v6[8]]);
      Hasher._combine(_:)(*(v20 + v6[9]));
      result = Hasher._finalize()();
      v64 = -1 << *(v12 + 32);
      v65 = result & ~v64;
      v66 = v65 >> 6;
      if (((-1 << v65) & ~*(v19 + 8 * (v65 >> 6))) == 0)
      {
        v67 = 0;
        v68 = (63 - v64) >> 6;
        while (++v66 != v68 || (v67 & 1) == 0)
        {
          v69 = v66 == v68;
          if (v66 == v68)
          {
            v66 = 0;
          }

          v67 |= v69;
          v70 = *(v19 + 8 * v66);
          if (v70 != -1)
          {
            v21 = __clz(__rbit64(~v70)) + (v66 << 6);
            goto LABEL_9;
          }
        }

LABEL_41:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v65) & ~*(v19 + 8 * (v65 >> 6)))) | v65 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      _s15GroupActivities11ParticipantVWObTm_0(v20, *(v12 + 48) + v77 * v21, type metadata accessor for Participant);
      v22 = (*(v12 + 56) + 240 * v21);
      v23 = v90;
      v24 = v91;
      v25 = v93;
      v22[13] = v92;
      v22[14] = v25;
      v22[11] = v23;
      v22[12] = v24;
      v26 = v86;
      v27 = v87;
      v28 = v89;
      v22[9] = v88;
      v22[10] = v28;
      v22[7] = v26;
      v22[8] = v27;
      v29 = v82;
      v30 = v83;
      v31 = v85;
      v22[5] = v84;
      v22[6] = v31;
      v22[3] = v29;
      v22[4] = v30;
      v33 = v80;
      v32 = v81;
      *v22 = v79;
      v22[1] = v33;
      v22[2] = v32;
      ++*(v12 + 16);
      v18 = v74;
      v17 = v78;
    }

    v36 = v13;
    result = v73;
    while (1)
    {
      v13 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v13 >= v18)
      {
        break;
      }

      v38 = v73[v13];
      ++v36;
      if (v38)
      {
        v34 = __clz(__rbit64(v38));
        v35 = (v38 - 1) & v38;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v72;
      goto LABEL_39;
    }

    v71 = 1 << *(v9 + 32);
    v3 = v72;
    if (v71 >= 64)
    {
      bzero(v73, ((v71 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v73 = -1 << v71;
    }

    *(v9 + 16) = 0;
  }

LABEL_39:
  *v3 = v12;
  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, _BYTE *))
{
  v6 = v5;
  v8 = *v5;
  if (*(*v5 + 24) > a1)
  {
    v9 = *(*v5 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v8 + 16))
  {
    v38 = v6;
    v12 = 0;
    v13 = (v8 + 64);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v24 = v21 | (v12 << 6);
      v25 = (*(v8 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v8 + 56) + 40 * v24;
      if (v39)
      {
        a5(v28, v41);
      }

      else
      {
        outlined init with copy of Transferable(v28, v41);
      }

      v29 = *(v11 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v11 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v18 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v18 + 8 * v32);
          if (v36 != -1)
          {
            v19 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v31) & ~*(v18 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v20 = (*(v11 + 48) + 16 * v19);
      *v20 = v26;
      v20[1] = v27;
      result = (a5)(v41, *(v11 + 56) + 40 * v19);
      ++*(v11 + 16);
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v6 = v38;
      goto LABEL_36;
    }

    v37 = 1 << *(v8 + 32);
    v6 = v38;
    if (v37 >= 64)
    {
      bzero((v8 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v37;
    }

    *(v8 + 16) = 0;
  }

LABEL_36:
  *v6 = v11;
  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for InternalParticipant();
  result = _s15GroupActivities11ParticipantVWObTm_0(a3, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for InternalParticipant);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for LinkManager.Attachment(0);
  result = _s15GroupActivities11ParticipantVWObTm_0(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for LinkManager.Attachment);
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

{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = outlined init with take of GroupSessionTable.Storage(a3, a4[7] + 24 * a1);
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySi_GMd, &_sScS12ContinuationVySi_GMR);
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities19TypedPayloadDecoderVyAA14PlaybackSyncerC7MessageVGMd, &_s15GroupActivities19TypedPayloadDecoderVyAA14PlaybackSyncerC7MessageVGMR);
  v15 = &protocol witness table for TypedPayloadDecoder<A>;
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a4[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  result = outlined init with take of Transferable(&v13, a4[7] + 40 * a1);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for CodingUserInfoKey();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = outlined init with take of Any(a3, (a4[7] + 32 * a1));
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  *(a6[6] + 8 * result) = a2;
  v6 = (a6[7] + 24 * result);
  *v6 = a3;
  v6[1] = a4;
  v6[2] = a5;
  v7 = a6[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v9;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = type metadata accessor for UUID();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = a6[7] + 16 * result;
  *v7 = a4;
  *(v7 + 8) = a5 & 1;
  *(v7 + 9) = HIBYTE(a5);
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = outlined init with take of Transferable(a4, a5[7] + 40 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

id specialized _NativeDictionary.copy()()
{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities30SystemCoordinatorConfigurationCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities30SystemCoordinatorConfigurationCGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities21SystemCoordinatorHostCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities21SystemCoordinatorHostCGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo12NSDictionaryCGMd, &_ss18_DictionaryStorageCySSSo12NSDictionaryCGMR);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys6UInt64V15GroupActivities22SystemCoordinatorStateC011ParticipantH0CGMd, &_ss18_DictionaryStorageCys6UInt64V15GroupActivities22SystemCoordinatorStateC011ParticipantH0CGMR);
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
        result = v18;
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
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGMR);
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  v2 = type metadata accessor for InternalParticipant();
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys6UInt64V15GroupActivities19InternalParticipantVGMd, &_ss18_DictionaryStorageCys6UInt64V15GroupActivities19InternalParticipantVGMR);
  v6 = *v0;
  v7 = static _DictionaryStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v24 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + 8 * v21);
        v23 = *(v25 + 72) * v21;
        outlined init with copy of SystemCoordinatorHostManager.ConfigurationUpdatesRateLimit(*(v6 + 56) + v23, v5, type metadata accessor for InternalParticipant);
        *(*(v8 + 48) + 8 * v21) = v22;
        result = _s15GroupActivities11ParticipantVWObTm_0(v5, *(v8 + 56) + v23, type metadata accessor for InternalParticipant);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

{
  v1 = v0;
  v27 = type metadata accessor for CodingUserInfoKey();
  v29 = *(v27 - 8);
  v2 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v26 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys17CodingUserInfoKeyVs8Sendable_pGMd, &_ss18_DictionaryStorageCys17CodingUserInfoKeyVs8Sendable_pGMR);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25[0] = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v28 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v25[1] = v29 + 32;
    v25[2] = v29 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v30 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v29;
        v21 = *(v29 + 72) * v19;
        v22 = v26;
        v23 = v27;
        (*(v29 + 16))(v26, *(v4 + 48) + v21, v27);
        v19 *= 32;
        outlined init with copy of Any(*(v4 + 56) + v19, v31);
        v24 = v28;
        (*(v20 + 32))(*(v28 + 48) + v21, v22, v23);
        result = outlined init with take of Any(v31, (*(v24 + 56) + v19));
        v14 = v30;
      }

      while (v30);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v25[0];
        v6 = v28;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v30 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySO15GroupActivities0C16SessionMessengerC18MessageStreamStoreO0B033_7F6FED5A36F2E7FBC6D91B446E55DE7FLLVGMd, &_ss18_DictionaryStorageCySO15GroupActivities0C16SessionMessengerC18MessageStreamStoreO0B033_7F6FED5A36F2E7FBC6D91B446E55DE7FLLVGMR);
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
        v18 = (*(v2 + 56) + 24 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = v18[2];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v22 = (*(v4 + 56) + 24 * v17);
        *v22 = v20;
        v22[1] = v19;
        v22[2] = v21;
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
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySS15GroupActivities20TypedPayloadDecoding_pGMd, &_ss18_DictionaryStorageCySS15GroupActivities20TypedPayloadDecoding_pGMR, outlined init with take of Transferable);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy10Foundation4UUIDV2os23OSSignpostIntervalStateCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV2os23OSSignpostIntervalStateCGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities0E23SessionProviderObserverCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities0E23SessionProviderObserverCGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities08PresenceE23SessionProviderObserverCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities08PresenceE23SessionProviderObserverCGMR);
}

{
  v1 = v0;
  v30 = type metadata accessor for UUID();
  v32 = *(v30 - 8);
  v2 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v29 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities0E12SessionTableC0B033_64E0A582F9EAD21E39070881D97E5C2ALLVGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities0E12SessionTableC0B033_64E0A582F9EAD21E39070881D97E5C2ALLVGMR);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v26 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v31 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v27 = v32 + 32;
    v28 = v32 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v33 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v32;
        v21 = *(v32 + 72) * v19;
        v22 = v29;
        v23 = v30;
        (*(v32 + 16))(v29, *(v4 + 48) + v21, v30);
        v19 *= 24;
        outlined init with copy of GroupSessionTable.Storage(*(v4 + 56) + v19, v34);
        v24 = v31;
        (*(v20 + 32))(*(v31 + 48) + v21, v22, v23);
        result = outlined init with take of GroupSessionTable.Storage(v34, *(v24 + 56) + v19);
        v14 = v33;
      }

      while (v33);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v26;
        v6 = v31;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v33 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities12ConversationCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities12ConversationCGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15GroupActivities12TopicManagerC11ServiceNameOAE18ConversationClientC0G0OGMd, &_ss18_DictionaryStorageCy15GroupActivities12TopicManagerC11ServiceNameOAE18ConversationClientC0G0OGMR);
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
        v18 = *(*(v2 + 48) + v17);
        result = outlined init with copy of TopicManager.ConversationClient.Service(*(v2 + 56) + 48 * v17, &v22);
        *(*(v4 + 48) + v17) = v18;
        v19 = (*(v4 + 56) + 48 * v17);
        v20 = *&v23[9];
        v21 = *v23;
        *v19 = v22;
        v19[1] = v21;
        *(v19 + 25) = v20;
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
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySi_GMd, &_sScS12ContinuationVySi_GMR);
  v32 = *(v30 - 8);
  v2 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v29 = &v25 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySiScS12ContinuationVySi_GGMd, &_ss18_DictionaryStorageCySiScS12ContinuationVySi_GGMR);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v4 + 16);
    v31 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v32 + 16;
    v26 = v4 + 64;
    for (i = v32 + 32; v13; result = (*(v20 + 32))(*(v24 + 56) + v21, v23, v22))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = *(*(v4 + 48) + 8 * v18);
      v20 = v32;
      v21 = *(v32 + 72) * v18;
      v23 = v29;
      v22 = v30;
      (*(v32 + 16))(v29, *(v4 + 56) + v21, v30);
      v24 = v31;
      *(*(v31 + 48) + 8 * v18) = v19;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v25;
        v6 = v31;
        goto LABEL_18;
      }

      v17 = *(v26 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

{
  v1 = v0;
  v2 = type metadata accessor for Participant();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15GroupActivities11ParticipantVAC17SystemCoordinatorC0E5StateVGMd, &_ss18_DictionaryStorageCy15GroupActivities11ParticipantVAC17SystemCoordinatorC0E5StateVGMR);
  v7 = *v0;
  v8 = static _DictionaryStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v37 = v1;
    result = (v8 + 64);
    v11 = v7 + 64;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 64), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 64);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = v19 | (v13 << 6);
        v23 = *(v3 + 72) * v22;
        outlined init with copy of SystemCoordinatorHostManager.ConfigurationUpdatesRateLimit(*(v7 + 48) + v23, v6, type metadata accessor for Participant);
        v22 *= 240;
        outlined init with copy of SystemCoordinator.ParticipantState(*(v7 + 56) + v22, v38);
        result = _s15GroupActivities11ParticipantVWObTm_0(v6, *(v9 + 48) + v23, type metadata accessor for Participant);
        v24 = (*(v9 + 56) + v22);
        v25 = v38[11];
        v26 = v38[12];
        v27 = v38[14];
        v24[13] = v38[13];
        v24[14] = v27;
        v24[11] = v25;
        v24[12] = v26;
        v28 = v38[7];
        v29 = v38[8];
        v30 = v38[10];
        v24[9] = v38[9];
        v24[10] = v30;
        v24[7] = v28;
        v24[8] = v29;
        v31 = v38[3];
        v32 = v38[4];
        v33 = v38[6];
        v24[5] = v38[5];
        v24[6] = v33;
        v24[3] = v31;
        v24[4] = v32;
        v34 = v38[2];
        v35 = v38[1];
        *v24 = v38[0];
        v24[1] = v35;
        v24[2] = v34;
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v37;
        goto LABEL_18;
      }

      v21 = *(v11 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS7Combine14AnyCancellableCGMd, &_ss18_DictionaryStorageCySS7Combine14AnyCancellableCGMR);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS15GroupActivities25SpatialTemplatePreferenceVGMd, &_ss18_DictionaryStorageCySS15GroupActivities25SpatialTemplatePreferenceVGMR);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(v2 + 56) + v17;
        v22 = *v21;
        v23 = *(v21 + 8);
        LOBYTE(v21) = *(v21 + 9);
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = *(v4 + 56) + v17;
        *v25 = v22;
        *(v25 + 8) = v23;
        *(v25 + 9) = v21;
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
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySS15GroupActivities19SpatialTemplateRole_pGMd, &_ss18_DictionaryStorageCySS15GroupActivities19SpatialTemplateRole_pGMR, outlined init with take of Transferable);
}

char *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  v2 = type metadata accessor for LinkManager.Attachment(0);
  v38 = *(v2 - 8);
  v3 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v37 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for UUID();
  v39 = *(v36 - 8);
  v5 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities11LinkManagerC10AttachmentVGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities11LinkManagerC10AttachmentVGMR);
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
        outlined init with copy of SystemCoordinatorHostManager.ConfigurationUpdatesRateLimit(*(v7 + 56) + v28, v37, type metadata accessor for LinkManager.Attachment);
        v29 = v40;
        (*(v24 + 32))(*(v40 + 48) + v25, v19, v26);
        result = _s15GroupActivities11ParticipantVWObTm_0(v27, *(v29 + 56) + v28, type metadata accessor for LinkManager.Attachment);
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

{
  v1 = v0;
  v36 = type metadata accessor for UUID();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities22SystemCoordinatorTableC0B033_E237FEFAA943BC3482616BB5915F349DLLVGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities22SystemCoordinatorTableC0B033_E237FEFAA943BC3482616BB5915F349DLLVGMR);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v32 = v38 + 32;
    v33 = v38 + 16;
    v34 = v4;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v38;
        v21 = *(v38 + 72) * v19;
        v22 = v35;
        v23 = v36;
        (*(v38 + 16))(v35, *(v4 + 48) + v21, v36);
        v24 = 16 * v19;
        v25 = (*(v4 + 56) + 16 * v19);
        v26 = *v25;
        v27 = v25[1];
        v28 = v37;
        (*(v20 + 32))(*(v37 + 48) + v21, v22, v23);
        v29 = (*(v28 + 56) + v24);
        *v29 = v26;
        v29[1] = v27;
        v4 = v34;

        v14 = v39;
      }

      while (v39);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v31 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

{
  v1 = v0;
  v32 = type metadata accessor for UUID();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVSiGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSiGMR);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v33;
        result = (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + 8 * v19) = v24;
        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}