uint64_t BackgroundGroupSessionManager.didDisconnect(client:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v12 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v2;
  v10[5] = a1;
  v10[6] = a2;

  swift_unknownObjectRetain();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in BackgroundGroupSessionManager.didDisconnect(client:), v10);
}

uint64_t closure #1 in BackgroundGroupSessionManager.didDisconnect(client:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return specialized BackgroundGroupSessionManager.didDisconnect(client:)();
}

uint64_t closure #4 in BackgroundGroupSessionManager.didUpdateContainers(client:containers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](closure #4 in BackgroundGroupSessionManager.didUpdateContainers(client:containers:), a4, 0);
}

uint64_t closure #4 in BackgroundGroupSessionManager.didUpdateContainers(client:containers:)()
{
  rawValue = v0[2]._rawValue;
  BackgroundGroupSessionManager.handleContainers(_:)(v0[3]);
  v2 = v0[1]._rawValue;

  return v2();
}

uint64_t BackgroundGroupSessionManager.sessionDidRejectKeyRecoveryRequest(sessionID:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v32 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v37 = v12;
  v38 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v32 - v13;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Log.default);
  v36 = *(v9 + 16);
  v36(v14, a1, v8);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v34 = a1;
    v19 = v18;
    v33 = swift_slowAlloc();
    v39 = v33;
    *v19 = 136315138;
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v7;
    v21 = v2;
    v23 = v22;
    (*(v9 + 8))(v14, v8);
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v23, &v39);
    v2 = v21;
    v7 = v35;

    *(v19 + 4) = v24;
    _os_log_impl(&dword_1AEE80000, v16, v17, "BackgroundGroupSessionManager received indication that session %s rejected a keyRecoveryRequest", v19, 0xCu);
    v25 = v33;
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x1B2715BA0](v25, -1, -1);
    v26 = v19;
    a1 = v34;
    MEMORY[0x1B2715BA0](v26, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v14, v8);
  }

  v27 = type metadata accessor for TaskPriority();
  (*(*(v27 - 8) + 56))(v7, 1, 1, v27);
  v28 = v38;
  v36(v38, a1, v8);
  v29 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v30 = swift_allocObject();
  *(v30 + 2) = 0;
  *(v30 + 3) = 0;
  *(v30 + 4) = v2;
  (*(v9 + 32))(&v30[v29], v28, v8);

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in BackgroundGroupSessionManager.sessionDidRejectKeyRecoveryRequest(sessionID:), v30);
}

uint64_t closure #1 in BackgroundGroupSessionManager.sessionDidRejectKeyRecoveryRequest(sessionID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v7 = type metadata accessor for UUID();
  v5[20] = v7;
  v8 = *(v7 - 8);
  v5[21] = v8;
  v9 = *(v8 + 64) + 15;
  v5[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundGroupSessionManager.sessionDidRejectKeyRecoveryRequest(sessionID:), a4, 0);
}

uint64_t closure #1 in BackgroundGroupSessionManager.sessionDidRejectKeyRecoveryRequest(sessionID:)()
{
  v1 = *(v0 + 144);
  swift_beginAccess();
  *(v0 + 184) = *(v1 + 136);

  return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundGroupSessionManager.sessionDidRejectKeyRecoveryRequest(sessionID:), 0, 0);
}

{
  v32 = v0;
  if (*(*(v0 + 184) + 16) && (v1 = *(v0 + 184), v2 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 152)), (v3 & 1) != 0))
  {
    v4 = *(*(*(v0 + 184) + 56) + 8 * v2);
    *(v0 + 192) = v4;

    *(v0 + 120) = *(v4 + 32);
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A15SessionProvider_pMd, &_s15GroupActivities0A15SessionProvider_pMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities013ErrorRecoveryA15SessionProvider_pMd, &_s15GroupActivities013ErrorRecoveryA15SessionProvider_pMR);
    if (swift_dynamicCast())
    {
      outlined init with take of Transferable((v0 + 56), v0 + 16);
      v5 = *(v0 + 40);
      v6 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v5);
      v7 = *(v6 + 8);
      v30 = (v7 + *v7);
      v8 = v7[1];
      v9 = swift_task_alloc();
      *(v0 + 200) = v9;
      *v9 = v0;
      v9[1] = closure #1 in BackgroundGroupSessionManager.sessionDidRejectKeyRecoveryRequest(sessionID:);

      return v30(v5, v6);
    }

    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    outlined destroy of NSObject?(v0 + 56, &_s15GroupActivities013ErrorRecoveryA15SessionProvider_pSgMd, &_s15GroupActivities013ErrorRecoveryA15SessionProvider_pSgMR);
  }

  else
  {

    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 168);
    v11 = *(v0 + 176);
    v14 = *(v0 + 152);
    v13 = *(v0 + 160);
    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Log.default);
    (*(v12 + 16))(v11, v14, v13);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    v18 = os_log_type_enabled(v16, v17);
    v20 = *(v0 + 168);
    v19 = *(v0 + 176);
    v21 = *(v0 + 160);
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v31 = v23;
      *v22 = 136315138;
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      (*(v20 + 8))(v19, v21);
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v31);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_1AEE80000, v16, v17, "Couldn't find observer for %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x1B2715BA0](v23, -1, -1);
      MEMORY[0x1B2715BA0](v22, -1, -1);
    }

    else
    {

      (*(v20 + 8))(v19, v21);
    }
  }

  v28 = *(v0 + 176);

  v29 = *(v0 + 8);

  return v29();
}

{
  v2 = *(*v1 + 200);
  v5 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = closure #1 in BackgroundGroupSessionManager.sessionDidRejectKeyRecoveryRequest(sessionID:);
  }

  else
  {
    v3 = closure #1 in BackgroundGroupSessionManager.sessionDidRejectKeyRecoveryRequest(sessionID:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.default);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[24];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1AEE80000, v2, v3, "Fetched updated membership list", v6, 2u);
    MEMORY[0x1B2715BA0](v6, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v7 = v0[22];

  v8 = v0[1];

  return v8();
}

{
  v19 = v0;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.default);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[26];
  v8 = v0[24];
  if (v6)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315138;
    v0[17] = v7;
    v11 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v12 = String.init<A>(reflecting:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v18);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_1AEE80000, v4, v5, "Failed to fetch membership update: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1B2715BA0](v10, -1, -1);
    MEMORY[0x1B2715BA0](v9, -1, -1);
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v15 = v0[22];

  v16 = v0[1];

  return v16();
}

uint64_t BackgroundGroupSessionManager.sessionDidReceiveUpdatedUnknownParticipantList(sessionID:unknownParticipants:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v42 = &v36 - v8;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v40 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v36 - v13;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Log.default);
  v16 = *(v10 + 16);
  v41 = a1;
  v39 = v16;
  v16(v14, a1, v9);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v38 = a2;
    v20 = v19;
    v36 = swift_slowAlloc();
    v43 = v36;
    *v20 = 136315394;
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = v3;
    v23 = v22;
    (*(v10 + 8))(v14, v9);
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v43);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2080;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
    lazy protocol witness table accessor for type CPParticipant and conformance NSObject(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
    v3 = v37;
    v25 = Set.description.getter();
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v43);

    *(v20 + 14) = v27;
    _os_log_impl(&dword_1AEE80000, v17, v18, "BackgroundGroupSessionManager received indication that session %s received an updated unknown participant list %s", v20, 0x16u);
    v28 = v36;
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v28, -1, -1);
    v29 = v20;
    a2 = v38;
    MEMORY[0x1B2715BA0](v29, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v14, v9);
  }

  v30 = type metadata accessor for TaskPriority();
  v31 = v42;
  (*(*(v30 - 8) + 56))(v42, 1, 1, v30);
  v32 = v40;
  v39(v40, v41, v9);
  v33 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v34 = swift_allocObject();
  *(v34 + 2) = 0;
  *(v34 + 3) = 0;
  *(v34 + 4) = v3;
  (*(v10 + 32))(&v34[v33], v32, v9);
  *&v34[(v11 + v33 + 7) & 0xFFFFFFFFFFFFFFF8] = a2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v31, &async function pointer to partial apply for closure #1 in BackgroundGroupSessionManager.sessionDidReceiveUpdatedUnknownParticipantList(sessionID:unknownParticipants:), v34);
}

uint64_t closure #1 in BackgroundGroupSessionManager.sessionDidReceiveUpdatedUnknownParticipantList(sessionID:unknownParticipants:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v8 = type metadata accessor for UUID();
  v6[8] = v8;
  v9 = *(v8 - 8);
  v6[9] = v9;
  v10 = *(v9 + 64) + 15;
  v6[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundGroupSessionManager.sessionDidReceiveUpdatedUnknownParticipantList(sessionID:unknownParticipants:), a4, 0);
}

uint64_t closure #1 in BackgroundGroupSessionManager.sessionDidReceiveUpdatedUnknownParticipantList(sessionID:unknownParticipants:)()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  *(v0 + 88) = *(v1 + 136);

  return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundGroupSessionManager.sessionDidReceiveUpdatedUnknownParticipantList(sessionID:unknownParticipants:), 0, 0);
}

{
  v33 = v0;
  if (*(v0[11] + 16) && (v1 = v0[11], v2 = specialized __RawDictionaryStorage.find<A>(_:)(v0[6]), (v3 & 1) != 0))
  {
    v4 = v0[7];
    v5 = *(*(v0[11] + 56) + 8 * v2);
    v0[12] = v5;

    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo8TUHandleCG_15GroupActivities17AddressableMemberVs5NeverOTg504_s15e141Activities010BackgroundA14SessionManagerC46sessionDidReceiveUpdatedUnknownParticipantList0F2ID19unknownParticipantsy10Foundation4UUIDV_ShySo8d16CGtFyyYacfU_AA17gH8VAKXEfU_Tf1cn_n(v4);
    v7 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15GroupActivities17AddressableMemberV_SayAFGTt0g5Tf4g_n(v6);
    v0[13] = v7;

    v8 = *(*v5 + 200);
    v31 = (v8 + *v8);
    v9 = v8[1];
    v10 = swift_task_alloc();
    v0[14] = v10;
    *v10 = v0;
    v10[1] = closure #1 in BackgroundGroupSessionManager.sessionDidReceiveUpdatedUnknownParticipantList(sessionID:unknownParticipants:);

    return v31(v7);
  }

  else
  {

    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v13 = v0[9];
    v12 = v0[10];
    v14 = v0[8];
    v15 = v0[6];
    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Log.default);
    (*(v13 + 16))(v12, v15, v14);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    v19 = os_log_type_enabled(v17, v18);
    v21 = v0[9];
    v20 = v0[10];
    v22 = v0[8];
    if (v19)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v32 = v24;
      *v23 = 136315138;
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v21 + 8))(v20, v22);
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v32);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_1AEE80000, v17, v18, "Couldn't find observer for %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x1B2715BA0](v24, -1, -1);
      MEMORY[0x1B2715BA0](v23, -1, -1);
    }

    else
    {

      (*(v21 + 8))(v20, v22);
    }

    v29 = v0[10];

    v30 = v0[1];

    return v30();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = closure #1 in BackgroundGroupSessionManager.sessionDidReceiveUpdatedUnknownParticipantList(sessionID:unknownParticipants:);
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = closure #1 in BackgroundGroupSessionManager.sessionDidReceiveUpdatedUnknownParticipantList(sessionID:unknownParticipants:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v17 = v0;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.default);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[12];
  if (v5)
  {
    v7 = v0[7];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
    lazy protocol witness table accessor for type CPParticipant and conformance NSObject(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
    v10 = Set.description.getter();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v16);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1AEE80000, v3, v4, "Handled unknown participant list: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B2715BA0](v9, -1, -1);
    MEMORY[0x1B2715BA0](v8, -1, -1);
  }

  v13 = v0[10];

  v14 = v0[1];

  return v14();
}

{
  v20 = v0;
  v1 = v0[13];

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.default);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[15];
  v8 = v0[12];
  if (v6)
  {
    v9 = v0[7];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315138;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
    lazy protocol witness table accessor for type CPParticipant and conformance NSObject(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
    v12 = Set.description.getter();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v19);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1AEE80000, v4, v5, "Failed to handle unknown participant list: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x1B2715BA0](v11, -1, -1);
    MEMORY[0x1B2715BA0](v10, -1, -1);
  }

  else
  {
    v15 = v0[12];
  }

  v16 = v0[10];

  v17 = v0[1];

  return v17();
}

uint64_t protocol witness for BackGroundSessionManagerClientDelegate.didDisconnect(client:) in conformance BackgroundGroupSessionManager(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v12 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v2;
  v10[5] = a1;
  v10[6] = a2;

  swift_unknownObjectRetain();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &closure #1 in BackgroundGroupSessionManager.didDisconnect(client:)partial apply, v10);
}

unint64_t specialized _NativeDictionary._delete(at:)(unint64_t result, uint64_t a2)
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
      result = MEMORY[0x1B2715020](*(a2 + 40), *v10);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 8 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      v16 = *(*(type metadata accessor for InternalParticipant() - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
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
      result = MEMORY[0x1B2715020](*(a2 + 40), *v10);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 8 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySi_GMd, &_sScS12ContinuationVySi_GMR) - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
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

unint64_t specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2)
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
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
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
          v29 = *(*(type metadata accessor for LinkManager.Attachment(0) - 8) + 72);
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

{
  v4 = type metadata accessor for CodingUserInfoKey();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x1EEE9AC00](v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = _HashTable.previousHole(before:)();
    v15 = v13;
    v40 = (v14 + 1) & v13;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v41 = *(v16 + 56);
    v38 = (v16 - 8);
    v39 = v17;
    do
    {
      v18 = v10;
      v19 = v41 * v12;
      v20 = v15;
      v21 = v16;
      v39(v9, *(a2 + 48) + v41 * v12, v4);
      v22 = *(a2 + 40);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v38)(v9, v4);
      v15 = v20;
      v24 = v23 & v20;
      if (a1 >= v40)
      {
        if (v24 >= v40 && a1 >= v24)
        {
LABEL_15:
          v27 = *(a2 + 48);
          result = v27 + v41 * a1;
          v28 = v27 + v19 + v41;
          v29 = v41 * a1 < v19 || result >= v28;
          v16 = v21;
          if (v29)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v15 = v20;
            v10 = v18;
          }

          else
          {
            v30 = v41 * a1 == v19;
            v10 = v18;
            if (!v30)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v20;
            }
          }

          v31 = *(a2 + 56);
          v32 = (v31 + 32 * a1);
          v33 = (v31 + 32 * v12);
          if (a1 != v12 || v32 >= v33 + 2)
          {
            v34 = v33[1];
            *v32 = *v33;
            v32[1] = v34;
            a1 = v12;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v40 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v16 = v21;
      v10 = v18;
LABEL_4:
      v12 = (v12 + 1) & v15;
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
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
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
          v32 = (v31 + 16 * a1);
          v33 = (v31 + 16 * v11);
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
  v37 = type metadata accessor for UUID();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x1EEE9AC00](v37);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = _HashTable.previousHole(before:)();
    v14 = v12;
    v36 = (v13 + 1) & v12;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v34 = a2 + 64;
    v35 = v16;
    v17 = *(v15 + 56);
    v33 = (v15 - 8);
    v38 = v14;
    v18 = v37;
    do
    {
      v19 = v17;
      v20 = v17 * v11;
      v21 = *(a2 + 48) + v17 * v11;
      v22 = v15;
      v35(v8, v21, v18);
      v23 = *(a2 + 40);
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
      v24 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v33)(v8, v18);
      v25 = v38;
      v26 = v24 & v38;
      if (a1 >= v36)
      {
        if (v26 >= v36 && a1 >= v26)
        {
LABEL_15:
          v15 = v22;
          v17 = v19;
          if (v19 * a1 < v20 || *(a2 + 48) + v19 * a1 >= (*(a2 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v29 = *(a2 + 56);
          result = v29 + 24 * a1;
          v9 = v34;
          if (a1 < v11 || result >= v29 + 24 * v11 + 24)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v25 = v38;
          }

          else
          {
            v25 = v38;
            if (a1 != v11)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v25 = v38;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v26 >= v36 || a1 >= v26)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v9 = v34;
      v17 = v19;
LABEL_4:
      v11 = (v11 + 1) & v25;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v30 = *(a2 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v32;
    ++*(a2 + 36);
  }

  return result;
}

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
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
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
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      result = MEMORY[0x1B2715020](*(a2 + 40), *v11);
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = (v10 + 8 * v3);
          if (v3 != v6 || v15 >= v11 + 1)
          {
            *v15 = *v11;
          }

          v16 = *(a2 + 56);
          v17 = v16 + 24 * v3;
          v18 = (v16 + 24 * v6);
          if (v3 != v6 || v17 >= v18 + 24)
          {
            v9 = *v18;
            *(v17 + 16) = *(v18 + 2);
            *v17 = v9;
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
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
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
        if (16 * v3 != 16 * v6 || (v3 = v6, v19 >= v20 + 1))
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
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v15 = Hasher._finalize()();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = v20 + 40 * v3;
        v22 = (v20 + 40 * v6);
        if (v3 != v6 || v21 >= v22 + 40)
        {
          v9 = *v22;
          v10 = v22[1];
          *(v21 + 32) = *(v22 + 4);
          *v21 = v9;
          *(v21 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

Swift::Int specialized _NativeDictionary._delete(at:)(Swift::Int result, uint64_t a2)
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
      v11 = *(a2 + 40);
      v12 = *(*(a2 + 48) + v6);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + v3);
        v16 = (v14 + v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 48 * v3);
        v19 = (v17 + 48 * v6);
        if (48 * v3 < (48 * v6) || v18 >= v19 + 3 || v3 != v6)
        {
          v9 = *v19;
          v10 = v19[2];
          v18[1] = v19[1];
          v18[2] = v10;
          *v18 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy10Foundation4UUIDV15GroupActivities0K23SessionProviderObserverCG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab28VKXEfU_10Foundation4UUIDV_15k14Activities0J23mnO4CTG5ANxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAjMIsgnndzo_Tf1nc_n04_s15k26Activities010BackgroundA14m35ManagerC15updateProviders3forySDy10w64UUIDVSo022TUConversationActivityD9ContainerCG_tFSbAH3key_AA0aD16nO15C5valuet_tXEfU_SDyAJSo022TUConversationActivityM9ContainerCGTf1nnc_n(unint64_t *result, uint64_t a2, void *a3, uint64_t a4)
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

uint64_t specialized _NativeDictionary.extractDictionary(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v44 = a1;
  v52 = type metadata accessor for UUID();
  v11 = *(v52 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v52);
  v51 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v45 = &v39 - v15;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = static _DictionaryStorage.allocate(capacity:)();
  v17 = result;
  if (a2 < 1)
  {
    v18 = 0;
  }

  else
  {
    v18 = *v44;
  }

  v19 = 0;
  v41 = v11 + 16;
  v42 = result;
  v50 = v11 + 32;
  v20 = result + 64;
  v40 = a4;
  v43 = v11;
  v21 = v52;
  while (v18)
  {
    v22 = __clz(__rbit64(v18));
    v46 = (v18 - 1) & v18;
LABEL_16:
    v25 = v22 | (v19 << 6);
    v26 = a4[6];
    v49 = *(v11 + 72);
    v27 = v45;
    (*(v11 + 16))(v45, v26 + v49 * v25, v21);
    v28 = *(a4[7] + 8 * v25);
    v47 = *(v11 + 32);
    v47(v51, v27, v21);
    v17 = v42;
    v29 = *(v42 + 40);
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
    v48 = v28;

    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v30 = -1 << *(v17 + 32);
    v31 = result & ~v30;
    v32 = v31 >> 6;
    if (((-1 << v31) & ~*(v20 + 8 * (v31 >> 6))) == 0)
    {
      v34 = 0;
      v35 = (63 - v30) >> 6;
      v11 = v43;
      while (++v32 != v35 || (v34 & 1) == 0)
      {
        v36 = v32 == v35;
        if (v32 == v35)
        {
          v32 = 0;
        }

        v34 |= v36;
        v37 = *(v20 + 8 * v32);
        if (v37 != -1)
        {
          v33 = __clz(__rbit64(~v37)) + (v32 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v33 = __clz(__rbit64((-1 << v31) & ~*(v20 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
    v11 = v43;
LABEL_26:
    *(v20 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
    result = (v47)(*(v17 + 48) + v33 * v49, v51, v52);
    *(*(v17 + 56) + 8 * v33) = v48;
    ++*(v17 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v40;
    v18 = v46;
    if (!a3)
    {
      return v17;
    }
  }

  v23 = v19;
  while (1)
  {
    v19 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v19 >= a2)
    {
      return v17;
    }

    v24 = v44[v19];
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v46 = (v24 - 1) & v24;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void specialized Set.subscript.getter(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, uint64_t *a6)
{
  v10 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v11 = a4;
      }

      else
      {
        v11 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1B2714A60](a1, a2, v11);
      type metadata accessor for OS_dispatch_queue(0, a5, a6);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    type metadata accessor for OS_dispatch_queue(0, a5, a6);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v6 = v19;
    v12 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v13 = -1 << *(a4 + 32);
    v10 = v12 & ~v13;
    if ((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v14 = ~v13;
      do
      {
        v15 = *(*(a4 + 48) + 8 * v10);
        v16 = static NSObject.== infix(_:_:)();

        if (v16)
        {
          goto LABEL_19;
        }

        v10 = (v10 + 1) & v14;
      }

      while (((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    __break(1u);
  }

  if ((v10 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v10)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v10 >> 6) + 56) >> v10) & 1) == 0)
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

  v17 = *(*(a4 + 48) + 8 * v10);

  v18 = v17;
}

uint64_t specialized TopicManager.init(provider:featureFlags:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDy10Foundation4UUIDV15GroupActivities12TopicManagerC18ConversationClientCGGMd, &_s7Combine9PublishedVySDy10Foundation4UUIDV15GroupActivities12TopicManagerC18ConversationClientCGGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v23 - v9 + 8;
  v23[3] = type metadata accessor for BackgroundGroupSessionManager();
  v23[4] = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type BackgroundGroupSessionManager and conformance BackgroundGroupSessionManager, v11, type metadata accessor for BackgroundGroupSessionManager);
  v23[0] = a1;
  v12 = OBJC_IVAR____TtC15GroupActivities12TopicManager__conversationClientsByGroupUUID;
  v13 = MEMORY[0x1E69E7CC0];
  v22 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_15GroupActivities12TopicManagerC18ConversationClientCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy10Foundation4UUIDV15GroupActivities12TopicManagerC18ConversationClientCGMd, &_sSDy10Foundation4UUIDV15GroupActivities12TopicManagerC18ConversationClientCGMR);
  Published.init(initialValue:)();
  (*(v7 + 32))(a3 + v12, v10, v6);
  if (v13 >> 62 && __CocoaSet.count.getter())
  {
    v14 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CD0];
  }

  *(a3 + OBJC_IVAR____TtC15GroupActivities12TopicManager_cancellables) = v14;
  v15 = OBJC_IVAR____TtC15GroupActivities12TopicManager_lock;
  v16 = type metadata accessor for Lock();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  *(a3 + v15) = Lock.init()();
  outlined init with copy of Transferable(v23, a3 + OBJC_IVAR____TtC15GroupActivities12TopicManager_provider);
  *(a3 + OBJC_IVAR____TtC15GroupActivities12TopicManager_featureFlags) = a2;
  v19 = *(a1 + 200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA19CurrentValueSubjectCySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGGMd, &_s7Combine12PublisherBoxCyAA19CurrentValueSubjectCySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGGMR);
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  v22 = v20;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMd, &_s7Combine12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<[UUID : TUConversationActivitySessionContainer], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMd, &_s7Combine12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMR);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_0(v23);
  return a3;
}

uint64_t specialized Sequence.compactMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id, uint64_t, uint64_t))
{
  v5 = v4;
  v32 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
    lazy protocol witness table accessor for type CPParticipant and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationActivitySession and conformance NSObject, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
    Set.Iterator.init(_cocoa:)();
    result = v27;
    v7 = v28;
    v8 = v29;
    v9 = v30;
    v10 = v31;
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v7 = a1 + 56;
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

    v10 = v13 & *(a1 + 56);

    v9 = 0;
  }

  v21 = MEMORY[0x1E69E7CC0];
  v25 = result;
LABEL_8:
  v14 = v9;
  v15 = v10;
  while (1)
  {
    if (result < 0)
    {
      if (!__CocoaSet.Iterator.next()() || (type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58), swift_dynamicCast(), v18 = v26, v9 = v14, v10 = v15, !v26))
      {
LABEL_23:
        outlined consume of [UUID : Conversation].Iterator._Variant();
        return v21;
      }

      goto LABEL_18;
    }

    v16 = v14;
    v17 = v15;
    v9 = v14;
    if (!v15)
    {
      break;
    }

LABEL_14:
    v10 = (v17 - 1) & v17;
    v18 = *(*(result + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v17)))));
    if (!v18)
    {
      goto LABEL_23;
    }

LABEL_18:
    v19 = a4(v18, a2, a3);

    if (v5)
    {
      outlined consume of [UUID : Conversation].Iterator._Variant();

      return v21;
    }

    v14 = v9;
    v15 = v10;
    result = v25;
    if (v19)
    {
      MEMORY[0x1B27142A0](v25);
      if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v20 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v21 = v32;
      result = v25;
      goto LABEL_8;
    }
  }

  while (1)
  {
    v9 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v9 >= ((v8 + 64) >> 6))
    {
      goto LABEL_23;
    }

    v17 = *(v7 + 8 * v9);
    ++v16;
    if (v17)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

void *specialized BackgroundGroupSessionManager.init(client:)(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v25 - v6;
  swift_defaultActor_initialize();
  v8 = MEMORY[0x1E69E7CC8];
  a2[16] = MEMORY[0x1E69E7CC8];
  a2[17] = v8;
  a2[18] = v8;
  a2[19] = 0;
  v9 = type metadata accessor for BackgroundAudioSessionAssertionManager();
  inited = swift_initStaticObject();
  a2[23] = v9;
  a2[24] = &protocol witness table for BackgroundAudioSessionAssertionManager;
  a2[20] = inited;
  v11 = MEMORY[0x1E69E7CC0];
  v26 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_So38TUConversationActivitySessionContainerCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMR);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  a2[25] = CurrentValueSubject.init(_:)();
  v26 = v11;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySay15GroupActivities0E7SessionCyAD03AnyE8ActivityVGGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay15GroupActivities0E7SessionCyAD03AnyE8ActivityVGGs5NeverOGMR);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  a2[26] = CurrentValueSubject.init(_:)();
  a2[27] = 0;
  v18 = MEMORY[0x1E69976A8];
  a2[14] = a1;
  a2[15] = v18;
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type BackgroundGroupSessionManager and conformance BackgroundGroupSessionManager, v19, type metadata accessor for BackgroundGroupSessionManager);
  type metadata accessor for BackgroundSessionManagerClient();
  swift_unknownObjectRetain();
  v20 = a1;

  dispatch thunk of BackgroundSessionManagerClientProtocol.delegate.setter();

  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v7, 1, 1, v21);
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v22;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &closure #1 in BackgroundGroupSessionManager.init(client:)partial apply, v23);

  return a2;
}

uint64_t specialized PresenceSession.init(provider:serviceProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a3;
  v49 = a2;
  v47 = a1;
  v50 = type metadata accessor for UUID();
  v48 = *(v50 - 8);
  v5 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v46 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOyyyYaYbc__GMd, &_sScS12ContinuationV15BufferingPolicyOyyyYaYbc__GMR);
  v44 = *(v7 - 8);
  v45 = v7;
  v8 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v43 = &v40 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v42 = &v40 - v12;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVy15GroupActivities19PresenceSessionInfoVGMd, &_s14CopresenceCore14CurrentSubjectVy15GroupActivities19PresenceSessionInfoVGMR);
  v13 = *(v41 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v16 = &v40 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVyShy15GroupActivities17AddressableMemberVGGMd, &_s14CopresenceCore14CurrentSubjectVyShy15GroupActivities17AddressableMemberVGGMR);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v40 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVy15GroupActivities15PresenceSessionC5StateOGMd, &_s14CopresenceCore14CurrentSubjectVy15GroupActivities15PresenceSessionC5StateOGMR);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v40 - v25;
  v27 = OBJC_IVAR____TtC15GroupActivities15PresenceSession__state;
  LOBYTE(v53) = 0;
  CurrentSubject.init(wrappedValue:)();
  (*(v23 + 32))(a4 + v27, v26, v22);
  v28 = MEMORY[0x1E69E7CD0];
  *(a4 + OBJC_IVAR____TtC15GroupActivities15PresenceSession_activeParticipants) = MEMORY[0x1E69E7CD0];
  v29 = OBJC_IVAR____TtC15GroupActivities15PresenceSession__members;
  v53 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy15GroupActivities17AddressableMemberVGMd, &_sShy15GroupActivities17AddressableMemberVGMR);
  CurrentSubject.init(wrappedValue:)();
  (*(v18 + 32))(a4 + v29, v21, v17);
  v30 = OBJC_IVAR____TtC15GroupActivities15PresenceSession__sessionInfo;
  v53 = v28;
  CurrentSubject.init(wrappedValue:)();
  (*(v13 + 32))(a4 + v30, v16, v41);
  v31 = type metadata accessor for TaskPriority();
  (*(*(v31 - 8) + 56))(v42, 1, 1, v31);
  (*(v44 + 104))(v43, *MEMORY[0x1E69E8650], v45);
  AsyncSerialQueue.init(priority:bufferingPolicy:)();
  *(a4 + OBJC_IVAR____TtC15GroupActivities15PresenceSession_observers) = v28;
  v32 = a4 + OBJC_IVAR____TtC15GroupActivities15PresenceSession_provider;
  *(a4 + OBJC_IVAR____TtC15GroupActivities15PresenceSession_provider + 8) = 0;
  swift_unknownObjectWeakInit();
  *(a4 + OBJC_IVAR____TtC15GroupActivities15PresenceSession_connection) = 0;
  ObjectType = swift_getObjectType();
  v34 = v49;
  v35 = *(v49 + 8);
  v36 = v46;
  GroupSessionProvider.uuid.getter(ObjectType, v35, v46);
  (*(v48 + 32))(a4 + OBJC_IVAR____TtC15GroupActivities15PresenceSession_id, v36, v50);
  swift_beginAccess();
  *(v32 + 8) = v34;
  swift_unknownObjectWeakAssign();
  v37 = (a4 + OBJC_IVAR____TtC15GroupActivities15PresenceSession_serviceProvider);
  *v37 = v51;
  v37[1] = &protocol witness table for BackgroundGroupSessionManager;
  v38 = *(v35 + 72);
  swift_unknownObjectRetain();
  v52 = v38(ObjectType, v35);
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCyShy15GroupActivities17AddressableMemberVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCyShy15GroupActivities17AddressableMemberVGs5NeverOGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type CurrentValueSubject<Set<AddressableMember>, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCyShy15GroupActivities17AddressableMemberVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCyShy15GroupActivities17AddressableMemberVGs5NeverOGMR);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return a4;
}

uint64_t specialized BackgroundGroupSessionManager.updateShare(_:activityID:)()
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Log.default);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1AEE80000, v1, v2, "Updating CKShare", v3, 2u);
    MEMORY[0x1B2715BA0](v3, -1, -1);
  }

  lazy protocol witness table accessor for type BackgroundGroupSessionManagerError and conformance BackgroundGroupSessionManagerError();
  swift_allocError();
  *v4 = 5;
  return swift_willThrow();
}

void *specialized BackgroundGroupSessionManager.init(client:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v26 - v9;
  swift_defaultActor_initialize();
  v11 = MEMORY[0x1E69E7CC8];
  a2[16] = MEMORY[0x1E69E7CC8];
  a2[17] = v11;
  a2[18] = v11;
  a2[19] = 0;
  v12 = type metadata accessor for BackgroundAudioSessionAssertionManager();
  inited = swift_initStaticObject();
  a2[23] = v12;
  a2[24] = &protocol witness table for BackgroundAudioSessionAssertionManager;
  a2[20] = inited;
  v14 = MEMORY[0x1E69E7CC0];
  v27 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_So38TUConversationActivitySessionContainerCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMR);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  a2[25] = CurrentValueSubject.init(_:)();
  v27 = v14;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySay15GroupActivities0E7SessionCyAD03AnyE8ActivityVGGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay15GroupActivities0E7SessionCyAD03AnyE8ActivityVGGs5NeverOGMR);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  a2[26] = CurrentValueSubject.init(_:)();
  a2[27] = 0;
  a2[14] = a1;
  a2[15] = a4;
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type BackgroundGroupSessionManager and conformance BackgroundGroupSessionManager, v21, type metadata accessor for BackgroundGroupSessionManager);
  swift_unknownObjectRetain_n();

  dispatch thunk of BackgroundSessionManagerClientProtocol.delegate.setter();
  swift_unknownObjectRelease();
  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v10, 1, 1, v22);
  v23 = swift_allocObject();
  swift_weakInit();
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v23;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, &async function pointer to partial apply for closure #1 in BackgroundGroupSessionManager.init(client:), v24);

  return a2;
}

unint64_t lazy protocol witness table accessor for type BackgroundGroupSessionManagerError and conformance BackgroundGroupSessionManagerError()
{
  result = lazy protocol witness table cache variable for type BackgroundGroupSessionManagerError and conformance BackgroundGroupSessionManagerError;
  if (!lazy protocol witness table cache variable for type BackgroundGroupSessionManagerError and conformance BackgroundGroupSessionManagerError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BackgroundGroupSessionManagerError and conformance BackgroundGroupSessionManagerError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BackgroundGroupSessionManagerError and conformance BackgroundGroupSessionManagerError;
  if (!lazy protocol witness table cache variable for type BackgroundGroupSessionManagerError and conformance BackgroundGroupSessionManagerError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BackgroundGroupSessionManagerError and conformance BackgroundGroupSessionManagerError);
  }

  return result;
}

uint64_t partial apply for closure #1 in BackgroundGroupSessionManager.leave(identifier:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return closure #1 in BackgroundGroupSessionManager.leave(identifier:)(a1, a2, v6, v7, v9, v8);
}

uint64_t specialized BackgroundGroupSessionManager.didDisconnect(client:)()
{
  v1[7] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetSgMd, &_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetSgMR) - 8) + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v1[10] = v3;
  v4 = *(v3 - 8);
  v1[11] = v4;
  v5 = *(v4 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetSgMd, &_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetSgMR) - 8) + 64) + 15;
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized BackgroundGroupSessionManager.didDisconnect(client:), v0, 0);
}

{
  v144 = v0;
  if (one-time initialization token for default == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v1 = type metadata accessor for Logger();
    *(v0 + 192) = __swift_project_value_buffer(v1, static Log.default);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1AEE80000, v2, v3, "Disconnected", v4, 2u);
      MEMORY[0x1B2715BA0](v4, -1, -1);
    }

    v5 = *(v0 + 56);

    swift_beginAccess();
    v6 = *(v5 + 136);
    *(v0 + 200) = v6;
    v7 = *(v6 + 32);
    *(v0 + 392) = v7;
    v8 = -1;
    v9 = -1 << v7;
    if (-(-1 << v7) < 64)
    {
      v8 = ~(-1 << -(-1 << v7));
    }

    v10 = MEMORY[0x1E69E7CC8];
    v11 = v8 & *(v6 + 64);
    *(v0 + 224) = MEMORY[0x1E69E7CC8];
    v12 = MEMORY[0x1E69E7CC0];
    *(v0 + 208) = v10;
    *(v0 + 216) = v12;

    if (v11)
    {
      v13 = 0;
LABEL_11:
      v17 = *(v0 + 168);
      v16 = *(v0 + 176);
      v18 = *(v0 + 80);
      v19 = *(v0 + 88);
      v20 = (v11 - 1) & v11;
      v21 = __clz(__rbit64(v11)) | (v13 << 6);
      (*(v19 + 16))(v17, *(v6 + 48) + *(v19 + 72) * v21, v18);
      v22 = *(*(v6 + 56) + 8 * v21);
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetMd, &_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetMR);
      v24 = *(v23 + 48);
      (*(v19 + 32))(v16, v17, v18);
      *(v16 + v24) = v22;
      (*(*(v23 - 8) + 56))(v16, 0, 1, v23);

      v15 = v13;
    }

    else
    {
      v14 = 0;
      v15 = ((63 - v9) >> 6) - 1;
      while (v15 != v14)
      {
        v13 = v14 + 1;
        v11 = *(v6 + 72 + 8 * v14++);
        if (v11)
        {
          goto LABEL_11;
        }
      }

      v108 = *(v0 + 176);
      v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetMd, &_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetMR);
      (*(*(v109 - 8) + 56))(v108, 1, 1, v109);
      v20 = 0;
    }

    *(v0 + 232) = v20;
    *(v0 + 240) = v15;
    v25 = *(v0 + 184);
    outlined init with take of Date?(*(v0 + 176), v25, &_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetSgMd, &_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetSgMR);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetMd, &_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetMR);
    if ((*(*(v26 - 8) + 48))(v25, 1, v26) != 1)
    {
      v86 = *(v0 + 152);
      v85 = *(v0 + 160);
      v87 = *(v0 + 80);
      v88 = *(v0 + 88);
      v89 = *(*(v0 + 184) + *(v26 + 48));
      *(v0 + 248) = v89;
      v90 = *(v88 + 32);
      *(v0 + 256) = v90;
      *(v0 + 264) = (v88 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v90(v85);
      v91 = *(v88 + 16);
      *(v0 + 272) = v91;
      *(v0 + 280) = (v88 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v91(v86, v85, v87);
      v93 = *(v89 + 32);
      v92 = *(v89 + 40);
      ObjectType = swift_getObjectType();
      v95 = swift_task_alloc();
      *(v0 + 288) = v95;
      *v95 = v0;
      v95[1] = specialized BackgroundGroupSessionManager.didDisconnect(client:);

      return GroupSessionProvider.backgroundSessionCreationRequest.getter(ObjectType, v92);
    }

    v27 = *(v0 + 200);

    v28 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v28)
    {
      v29 = *(v0 + 88);
      v30 = MEMORY[0x1E69E7CC0] + ((*(v29 + 80) + 32) & ~*(v29 + 80));
      v31 = *(v29 + 72);
      v32 = *(v29 + 16);
      do
      {
        v33 = *(v0 + 144);
        v34 = *(v0 + 80);
        v35 = *(v0 + 88);
        v36 = *(v0 + 56);
        v32(v33, v30, v34);
        invalidateProvider #1 (id:) in BackgroundGroupSessionManager.didDisconnect(client:)(v33, v36);
        (*(v35 + 8))(v33, v34);
        v30 += v31;
        --v28;
      }

      while (v28);
    }

    v37 = 0;
    v38 = MEMORY[0x1E69E7CC8];
    v39 = *(MEMORY[0x1E69E7CC8] + 32);
    *(v0 + 393) = v39;
    v40 = 1 << v39;
    v41 = *(v38 + 64);
    v42 = v40 < 64 ? ~(-1 << v40) : -1;
    v43 = v42 & v41;
    if ((v42 & v41) != 0)
    {
      break;
    }

LABEL_23:
    v46 = ((1 << *(v0 + 393)) + 63) >> 6;
    if (v46 <= v37 + 1)
    {
      v47 = v37 + 1;
    }

    else
    {
      v47 = ((1 << *(v0 + 393)) + 63) >> 6;
    }

    v48 = v47 - 1;
    while (1)
    {
      v49 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v49 >= v46)
      {
        v83 = *(v0 + 64);
        v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetMd, &_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetMR);
        (*(*(v84 - 8) + 56))(v83, 1, 1, v84);
        v43 = 0;
        v60 = v48;
        goto LABEL_32;
      }

      v45 = *(v0 + 224);
      v43 = *(v45 + 8 * v49 + 64);
      ++v37;
      if (v43)
      {
        v37 = v49;
        goto LABEL_31;
      }
    }

    __break(1u);
  }

  while (1)
  {
    v45 = *(v0 + 224);
LABEL_31:
    v50 = *(v0 + 168);
    v51 = *(v0 + 80);
    v52 = *(v0 + 88);
    v53 = *(v0 + 64);
    v54 = __clz(__rbit64(v43));
    v43 &= v43 - 1;
    v55 = v54 | (v37 << 6);
    (*(v52 + 16))(v50, *(v45 + 48) + *(v52 + 72) * v55, v51);
    v56 = *(*(v45 + 56) + 8 * v55);
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetMd, &_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetMR);
    v58 = *(v57 + 48);
    (*(v52 + 32))(v53, v50, v51);
    *(v53 + v58) = v56;
    (*(*(v57 - 8) + 56))(v53, 0, 1, v57);
    v59 = v56;
    v60 = v37;
LABEL_32:
    *(v0 + 312) = v43;
    *(v0 + 320) = v60;
    v61 = *(v0 + 72);
    outlined init with take of Date?(*(v0 + 64), v61, &_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetSgMd, &_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetSgMR);
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetMd, &_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetMR);
    if ((*(*(v62 - 8) + 48))(v61, 1, v62) == 1)
    {
      break;
    }

    v63 = *(v0 + 136);
    v64 = *(v0 + 80);
    v65 = *(v0 + 88);
    v66 = *(v0 + 56);
    v67 = *(*(v0 + 72) + *(v62 + 48));
    *(v0 + 328) = v67;
    (*(v65 + 32))(v63);
    if (*(*(v66 + 136) + 16))
    {
      v68 = *(v0 + 136);

      specialized __RawDictionaryStorage.find<A>(_:)(v68);
      if (v69)
      {
        v139 = v67;
        v110 = *(v0 + 192);
        v112 = *(v0 + 128);
        v111 = *(v0 + 136);
        v113 = *(v0 + 80);
        v114 = *(v0 + 88);

        v115 = *(v114 + 16);
        *(v0 + 336) = v115;
        *(v0 + 344) = (v114 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v115(v112, v111, v113);
        v116 = Logger.logObject.getter();
        v117 = static os_log_type_t.default.getter();
        v118 = os_log_type_enabled(v116, v117);
        v119 = *(v0 + 128);
        v120 = *(v0 + 80);
        v121 = *(v0 + 88);
        if (v118)
        {
          v122 = swift_slowAlloc();
          v142 = swift_slowAlloc();
          v143 = v142;
          *v122 = 136315138;
          _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
          v123 = dispatch thunk of CustomStringConvertible.description.getter();
          v125 = v124;
          v126 = *(v121 + 8);
          v126(v119, v120);
          v127 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v123, v125, &v143);

          *(v122 + 4) = v127;
          _os_log_impl(&dword_1AEE80000, v116, v117, "Attempting to recover providerID: %s", v122, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v142);
          MEMORY[0x1B2715BA0](v142, -1, -1);
          MEMORY[0x1B2715BA0](v122, -1, -1);
        }

        else
        {

          v126 = *(v121 + 8);
          v126(v119, v120);
        }

        *(v0 + 352) = v126;
        v128 = *(*(v0 + 56) + 112);
        v129 = swift_getObjectType();
        v130 = *(MEMORY[0x1E69976D0] + 4);
        v131 = swift_task_alloc();
        *(v0 + 360) = v131;
        *v131 = v0;
        v131[1] = specialized BackgroundGroupSessionManager.didDisconnect(client:);

        return MEMORY[0x1EEDF8BD8](v139, v129);
      }
    }

    v70 = *(v0 + 192);
    (*(*(v0 + 88) + 16))(*(v0 + 112), *(v0 + 136), *(v0 + 80));
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.default.getter();
    v73 = os_log_type_enabled(v71, v72);
    v140 = *(v0 + 136);
    v74 = *(v0 + 112);
    v76 = *(v0 + 80);
    v75 = *(v0 + 88);
    if (v73)
    {
      v135 = v60;
      v77 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      v143 = v133;
      *v77 = 136315138;
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
      v137 = v67;
      v78 = dispatch thunk of CustomStringConvertible.description.getter();
      v80 = v79;
      v81 = *(v75 + 8);
      v81(v74, v76);
      v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v80, &v143);

      *(v77 + 4) = v82;
      __swift_destroy_boxed_opaque_existential_0(v133);
      MEMORY[0x1B2715BA0](v133, -1, -1);
      MEMORY[0x1B2715BA0](v77, -1, -1);

      v81(v140, v76);
      v37 = v135;
      if (!v43)
      {
        goto LABEL_23;
      }
    }

    else
    {

      v44 = *(v75 + 8);
      v44(v74, v76);
      v44(v140, v76);
      v37 = v60;
      if (!v43)
      {
        goto LABEL_23;
      }
    }
  }

  v97 = *(v0 + 224);
  v98 = *(v0 + 176);
  v99 = *(v0 + 184);
  v101 = *(v0 + 160);
  v100 = *(v0 + 168);
  v103 = *(v0 + 144);
  v102 = *(v0 + 152);
  v105 = *(v0 + 128);
  v104 = *(v0 + 136);
  v106 = *(v0 + 120);
  v132 = *(v0 + 112);
  v134 = *(v0 + 104);
  v136 = *(v0 + 96);
  v138 = *(v0 + 72);
  v141 = *(v0 + 64);

  v107 = *(v0 + 8);

  return v107();
}

{
  v150 = v0;
  v1 = *(v0 + 304);
  v2 = *(v0 + 248);
  v3 = *(v0 + 208);
  v5 = *(v0 + 152);
  v4 = *(v0 + 160);
  v6 = *(v0 + 80);
  v7 = *(v0 + 88);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v149 = v3;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v1, v5, isUniquelyReferenced_nonNull_native);
  v9 = *(v7 + 8);
  v9(v5, v6);

  v10 = v149;
  v11 = (v9)(v4, v6);
  v13 = *(v0 + 216);
  v14 = *(v0 + 232);
  v15 = *(v0 + 240);
  *(v0 + 224) = v149;
  *(v0 + 208) = v10;
  v141 = v10;
  v145 = v13;
  if (v14)
  {
    v16 = *(v0 + 200);
LABEL_11:
    v22 = *(v0 + 168);
    v21 = *(v0 + 176);
    v24 = *(v0 + 80);
    v23 = *(v0 + 88);
    v25 = (v14 - 1) & v14;
    v26 = __clz(__rbit64(v14)) | (v15 << 6);
    (*(v23 + 16))(v22, *(v16 + 48) + *(v23 + 72) * v26, v24);
    v27 = *(*(v16 + 56) + 8 * v26);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetMd, &_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetMR);
    v29 = *(v28 + 48);
    (*(v23 + 32))(v21, v22, v24);
    *(v21 + v29) = v27;
    (*(*(v28 - 8) + 56))(v21, 0, 1, v28);

    v19 = v15;
LABEL_12:
    *(v0 + 232) = v25;
    *(v0 + 240) = v19;
    v30 = *(v0 + 184);
    outlined init with take of Date?(*(v0 + 176), v30, &_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetSgMd, &_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetSgMR);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetMd, &_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetMR);
    if ((*(*(v31 - 8) + 48))(v30, 1, v31) != 1)
    {
      v44 = *(v0 + 152);
      v43 = *(v0 + 160);
      v45 = *(v0 + 80);
      v46 = *(v0 + 88);
      v47 = *(*(v0 + 184) + *(v31 + 48));
      *(v0 + 248) = v47;
      v48 = *(v46 + 32);
      *(v0 + 256) = v48;
      *(v0 + 264) = (v46 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v48(v43);
      v49 = *(v46 + 16);
      *(v0 + 272) = v49;
      *(v0 + 280) = (v46 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v49(v44, v43, v45);
      v51 = *(v47 + 32);
      v50 = *(v47 + 40);
      ObjectType = swift_getObjectType();
      v53 = swift_task_alloc();
      *(v0 + 288) = v53;
      *v53 = v0;
      v53[1] = specialized BackgroundGroupSessionManager.didDisconnect(client:);

      return GroupSessionProvider.backgroundSessionCreationRequest.getter(ObjectType, v50);
    }

    v32 = *(v0 + 200);

    v33 = *(v145 + 16);
    if (v33)
    {
      v34 = *(v0 + 88);
      v35 = v145 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
      v36 = *(v34 + 72);
      v37 = *(v34 + 16);
      v38 = v141;
      do
      {
        v39 = *(v0 + 144);
        v41 = *(v0 + 80);
        v40 = *(v0 + 88);
        v42 = *(v0 + 56);
        v37(v39, v35, v41);
        invalidateProvider #1 (id:) in BackgroundGroupSessionManager.didDisconnect(client:)(v39, v42);
        (*(v40 + 8))(v39, v41);
        v35 += v36;
        --v33;
      }

      while (v33);
    }

    else
    {

      v38 = v141;
    }

    v57 = 0;
    v58 = *(v38 + 32);
    *(v0 + 393) = v58;
    v59 = 1 << v58;
    if (v59 < 64)
    {
      v60 = ~(-1 << v59);
    }

    else
    {
      v60 = -1;
    }

    v61 = v60 & *(v38 + 64);
    if (!v61)
    {
      goto LABEL_29;
    }

    do
    {
      while (1)
      {
        v63 = *(v0 + 224);
LABEL_37:
        v68 = *(v0 + 168);
        v69 = *(v0 + 80);
        v70 = *(v0 + 88);
        v71 = *(v0 + 64);
        v72 = __clz(__rbit64(v61));
        v61 &= v61 - 1;
        v73 = v72 | (v57 << 6);
        (*(v70 + 16))(v68, *(v63 + 48) + *(v70 + 72) * v73, v69);
        v74 = *(*(v63 + 56) + 8 * v73);
        v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetMd, &_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetMR);
        v76 = *(v75 + 48);
        (*(v70 + 32))(v71, v68, v69);
        *(v71 + v76) = v74;
        (*(*(v75 - 8) + 56))(v71, 0, 1, v75);
        v77 = v74;
        v78 = v57;
LABEL_38:
        *(v0 + 312) = v61;
        *(v0 + 320) = v78;
        v79 = *(v0 + 72);
        outlined init with take of Date?(*(v0 + 64), v79, &_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetSgMd, &_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetSgMR);
        v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetMd, &_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetMR);
        if ((*(*(v80 - 8) + 48))(v79, 1, v80) == 1)
        {
          v103 = *(v0 + 224);
          v104 = *(v0 + 176);
          v105 = *(v0 + 184);
          v107 = *(v0 + 160);
          v106 = *(v0 + 168);
          v109 = *(v0 + 144);
          v108 = *(v0 + 152);
          v111 = *(v0 + 128);
          v110 = *(v0 + 136);
          v112 = *(v0 + 120);
          v136 = *(v0 + 112);
          v138 = *(v0 + 104);
          v140 = *(v0 + 96);
          v143 = *(v0 + 72);
          v147 = *(v0 + 64);

          v113 = *(v0 + 8);

          return v113();
        }

        v81 = *(v0 + 136);
        v82 = *(v0 + 80);
        v83 = *(v0 + 88);
        v84 = *(v0 + 56);
        v85 = *(*(v0 + 72) + *(v80 + 48));
        *(v0 + 328) = v85;
        (*(v83 + 32))(v81);
        if (*(*(v84 + 136) + 16))
        {
          v86 = *(v0 + 136);

          specialized __RawDictionaryStorage.find<A>(_:)(v86);
          if (v87)
          {
            v144 = v85;
            v114 = *(v0 + 192);
            v116 = *(v0 + 128);
            v115 = *(v0 + 136);
            v117 = *(v0 + 80);
            v118 = *(v0 + 88);

            v119 = *(v118 + 16);
            *(v0 + 336) = v119;
            *(v0 + 344) = (v118 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
            v119(v116, v115, v117);
            v120 = Logger.logObject.getter();
            v121 = static os_log_type_t.default.getter();
            v122 = os_log_type_enabled(v120, v121);
            v123 = *(v0 + 128);
            v124 = *(v0 + 80);
            v125 = *(v0 + 88);
            if (v122)
            {
              v126 = swift_slowAlloc();
              v148 = swift_slowAlloc();
              v149 = v148;
              *v126 = 136315138;
              _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
              v127 = dispatch thunk of CustomStringConvertible.description.getter();
              v129 = v128;
              v130 = *(v125 + 8);
              v130(v123, v124);
              v131 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v127, v129, &v149);

              *(v126 + 4) = v131;
              _os_log_impl(&dword_1AEE80000, v120, v121, "Attempting to recover providerID: %s", v126, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v148);
              MEMORY[0x1B2715BA0](v148, -1, -1);
              MEMORY[0x1B2715BA0](v126, -1, -1);
            }

            else
            {

              v130 = *(v125 + 8);
              v130(v123, v124);
            }

            *(v0 + 352) = v130;
            v132 = *(*(v0 + 56) + 112);
            v133 = swift_getObjectType();
            v134 = *(MEMORY[0x1E69976D0] + 4);
            v135 = swift_task_alloc();
            *(v0 + 360) = v135;
            *v135 = v0;
            v135[1] = specialized BackgroundGroupSessionManager.didDisconnect(client:);
            v11 = v144;
            v12 = v133;

            return MEMORY[0x1EEDF8BD8](v11, v12);
          }
        }

        v88 = *(v0 + 192);
        (*(*(v0 + 88) + 16))(*(v0 + 112), *(v0 + 136), *(v0 + 80));
        v89 = Logger.logObject.getter();
        v90 = static os_log_type_t.default.getter();
        v91 = os_log_type_enabled(v89, v90);
        v146 = *(v0 + 136);
        v92 = *(v0 + 112);
        v94 = *(v0 + 80);
        v93 = *(v0 + 88);
        if (v91)
        {
          break;
        }

        v62 = *(v93 + 8);
        v62(v92, v94);
        v11 = (v62)(v146, v94);
        v57 = v78;
        if (!v61)
        {
          goto LABEL_29;
        }
      }

      v139 = v78;
      v95 = swift_slowAlloc();
      v137 = swift_slowAlloc();
      v149 = v137;
      *v95 = 136315138;
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
      v142 = v85;
      v96 = dispatch thunk of CustomStringConvertible.description.getter();
      v98 = v97;
      v99 = *(v93 + 8);
      v99(v92, v94);
      v100 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, v98, &v149);

      *(v95 + 4) = v100;
      __swift_destroy_boxed_opaque_existential_0(v137);
      MEMORY[0x1B2715BA0](v137, -1, -1);
      MEMORY[0x1B2715BA0](v95, -1, -1);

      v11 = (v99)(v146, v94);
      v57 = v139;
    }

    while (v61);
LABEL_29:
    v64 = ((1 << *(v0 + 393)) + 63) >> 6;
    if (v64 <= v57 + 1)
    {
      v65 = v57 + 1;
    }

    else
    {
      v65 = ((1 << *(v0 + 393)) + 63) >> 6;
    }

    v66 = v65 - 1;
    while (1)
    {
      v67 = v57 + 1;
      if (__OFADD__(v57, 1))
      {
        break;
      }

      if (v67 >= v64)
      {
        v101 = *(v0 + 64);
        v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetMd, &_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetMR);
        (*(*(v102 - 8) + 56))(v101, 1, 1, v102);
        v61 = 0;
        v78 = v66;
        goto LABEL_38;
      }

      v63 = *(v0 + 224);
      v61 = *(v63 + 8 * v67 + 64);
      ++v57;
      if (v61)
      {
        v57 = v67;
        goto LABEL_37;
      }
    }

    __break(1u);
  }

  else
  {
    v17 = ((1 << *(v0 + 392)) + 63) >> 6;
    if (v17 <= (v15 + 1))
    {
      v18 = v15 + 1;
    }

    else
    {
      v18 = ((1 << *(v0 + 392)) + 63) >> 6;
    }

    v19 = v18 - 1;
    while (1)
    {
      v20 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v20 >= v17)
      {
        v55 = *(v0 + 176);
        v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetMd, &_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetMR);
        (*(*(v56 - 8) + 56))(v55, 1, 1, v56);
        v25 = 0;
        goto LABEL_12;
      }

      v16 = *(v0 + 200);
      v14 = *(v16 + 8 * v20 + 64);
      ++v15;
      if (v14)
      {
        v15 = v20;
        goto LABEL_11;
      }
    }
  }

  __break(1u);
  return MEMORY[0x1EEDF8BD8](v11, v12);
}

{
  v2 = *v1;
  v3 = *(*v1 + 360);
  v4 = *v1;
  *(*v1 + 368) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = specialized BackgroundGroupSessionManager.didDisconnect(client:);
  }

  else
  {
    v6 = specialized BackgroundGroupSessionManager.didDisconnect(client:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  v114 = v0;
  v1 = *(v0 + 344);
  v2 = *(v0 + 192);
  (*(v0 + 336))(*(v0 + 120), *(v0 + 136), *(v0 + 80));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 352);
  v7 = *(v0 + 136);
  v8 = *(v0 + 120);
  v9 = &loc_1AF00B000;
  v10 = *(v0 + 80);
  v11 = *(v0 + 88);
  if (v5)
  {
    v105 = *(v0 + 328);
    v109 = *(v0 + 352);
    v12 = swift_slowAlloc();
    v102 = v7;
    v13 = swift_slowAlloc();
    v113 = v13;
    *v12 = 136315138;
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v109(v8, v10);
    v17 = v14;
    v9 = &loc_1AF00B000;
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v16, &v113);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_1AEE80000, v3, v4, "Recovered providerID: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x1B2715BA0](v13, -1, -1);
    MEMORY[0x1B2715BA0](v12, -1, -1);

    v19 = (v109)(v102, v10);
  }

  else
  {

    v6(v8, v10);
    v6(v7, v10);
  }

  v22 = *(v0 + 312);
  v21 = *(v0 + 320);
  v98 = v9[329];
  if (!v22)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v24 = *(v0 + 224);
LABEL_16:
    v29 = *(v0 + 168);
    v30 = *(v0 + 80);
    v31 = *(v0 + 88);
    v32 = *(v0 + 64);
    v33 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v34 = v33 | (v21 << 6);
    (*(v31 + 16))(v29, *(v24 + 48) + *(v31 + 72) * v34, v30);
    v35 = *(*(v24 + 56) + 8 * v34);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetMd, &_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetMR);
    v37 = *(v36 + 48);
    (*(v31 + 32))(v32, v29, v30);
    *(v32 + v37) = v35;
    (*(*(v36 - 8) + 56))(v32, 0, 1, v36);
    v38 = v35;
    v39 = v21;
LABEL_17:
    *(v0 + 312) = v22;
    *(v0 + 320) = v39;
    v40 = *(v0 + 72);
    outlined init with take of Date?(*(v0 + 64), v40, &_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetSgMd, &_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetSgMR);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetMd, &_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetMR);
    if ((*(*(v41 - 8) + 48))(v40, 1, v41) == 1)
    {
      break;
    }

    v42 = *(v0 + 136);
    v43 = *(v0 + 80);
    v44 = *(v0 + 88);
    v45 = *(v0 + 56);
    v46 = *(*(v0 + 72) + *(v41 + 48));
    *(v0 + 328) = v46;
    (*(v44 + 32))(v42);
    if (*(*(v45 + 136) + 16))
    {
      v47 = *(v0 + 136);

      specialized __RawDictionaryStorage.find<A>(_:)(v47);
      if (v48)
      {
        v108 = v46;
        v76 = *(v0 + 192);
        v78 = *(v0 + 128);
        v77 = *(v0 + 136);
        v79 = *(v0 + 80);
        v80 = *(v0 + 88);

        v81 = *(v80 + 16);
        *(v0 + 336) = v81;
        *(v0 + 344) = (v80 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v81(v78, v77, v79);
        v82 = Logger.logObject.getter();
        v83 = static os_log_type_t.default.getter();
        v84 = os_log_type_enabled(v82, v83);
        v85 = *(v0 + 128);
        v86 = *(v0 + 80);
        v87 = *(v0 + 88);
        if (v84)
        {
          v88 = swift_slowAlloc();
          v112 = swift_slowAlloc();
          v113 = v112;
          *v88 = v98;
          _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
          v89 = dispatch thunk of CustomStringConvertible.description.getter();
          v91 = v90;
          v92 = *(v87 + 8);
          v92(v85, v86);
          v93 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v89, v91, &v113);

          *(v88 + 4) = v93;
          _os_log_impl(&dword_1AEE80000, v82, v83, "Attempting to recover providerID: %s", v88, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v112);
          MEMORY[0x1B2715BA0](v112, -1, -1);
          MEMORY[0x1B2715BA0](v88, -1, -1);
        }

        else
        {

          v92 = *(v87 + 8);
          v92(v85, v86);
        }

        *(v0 + 352) = v92;
        v94 = *(*(v0 + 56) + 112);
        ObjectType = swift_getObjectType();
        v96 = *(MEMORY[0x1E69976D0] + 4);
        v97 = swift_task_alloc();
        *(v0 + 360) = v97;
        *v97 = v0;
        v97[1] = specialized BackgroundGroupSessionManager.didDisconnect(client:);
        v19 = v108;
        v20 = ObjectType;

        return MEMORY[0x1EEDF8BD8](v19, v20);
      }
    }

    v49 = *(v0 + 192);
    (*(*(v0 + 88) + 16))(*(v0 + 112), *(v0 + 136), *(v0 + 80));
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();
    v52 = os_log_type_enabled(v50, v51);
    v110 = *(v0 + 136);
    v53 = *(v0 + 112);
    v55 = *(v0 + 80);
    v54 = *(v0 + 88);
    if (v52)
    {
      v103 = v39;
      v56 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v113 = v100;
      *v56 = v98;
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
      v106 = v46;
      v57 = dispatch thunk of CustomStringConvertible.description.getter();
      v59 = v58;
      v60 = *(v54 + 8);
      v60(v53, v55);
      v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v59, &v113);

      *(v56 + 4) = v61;
      __swift_destroy_boxed_opaque_existential_0(v100);
      MEMORY[0x1B2715BA0](v100, -1, -1);
      MEMORY[0x1B2715BA0](v56, -1, -1);

      v19 = (v60)(v110, v55);
      v21 = v103;
      if (!v22)
      {
LABEL_8:
        v25 = ((1 << *(v0 + 393)) + 63) >> 6;
        if (v25 <= v21 + 1)
        {
          v26 = v21 + 1;
        }

        else
        {
          v26 = ((1 << *(v0 + 393)) + 63) >> 6;
        }

        v27 = v26 - 1;
        while (1)
        {
          v28 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            break;
          }

          if (v28 >= v25)
          {
            v62 = *(v0 + 64);
            v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetMd, &_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetMR);
            (*(*(v63 - 8) + 56))(v62, 1, 1, v63);
            v22 = 0;
            v39 = v27;
            goto LABEL_17;
          }

          v24 = *(v0 + 224);
          v22 = *(v24 + 8 * v28 + 64);
          ++v21;
          if (v22)
          {
            v21 = v28;
            goto LABEL_16;
          }
        }

        __break(1u);
        return MEMORY[0x1EEDF8BD8](v19, v20);
      }
    }

    else
    {

      v23 = *(v54 + 8);
      v23(v53, v55);
      v19 = (v23)(v110, v55);
      v21 = v39;
      if (!v22)
      {
        goto LABEL_8;
      }
    }
  }

  v64 = *(v0 + 224);
  v65 = *(v0 + 176);
  v66 = *(v0 + 184);
  v68 = *(v0 + 160);
  v67 = *(v0 + 168);
  v70 = *(v0 + 144);
  v69 = *(v0 + 152);
  v72 = *(v0 + 128);
  v71 = *(v0 + 136);
  v73 = *(v0 + 120);
  v99 = *(v0 + 112);
  v101 = *(v0 + 104);
  v104 = *(v0 + 96);
  v107 = *(v0 + 72);
  v111 = *(v0 + 64);

  v74 = *(v0 + 8);

  return v74();
}

{
  v163 = v0;
  v1 = *(v0 + 248);
  v2 = *(v0 + 192);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 248);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v162 = v7;
    *v6 = 136315138;
    *(v0 + 48) = v5;
    type metadata accessor for GroupSessionProviderObserver();

    v8 = String.init<A>(reflecting:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v162);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1AEE80000, v3, v4, "Failed to re-create TUConversationActivityCreateSessionRequest for providerManager: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1B2715BA0](v7, -1, -1);
    MEMORY[0x1B2715BA0](v6, -1, -1);
  }

  v11 = *(v0 + 280);
  v12 = *(v0 + 216);
  (*(v0 + 272))(*(v0 + 104), *(v0 + 160), *(v0 + 80));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v0 + 216);
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_4;
  }

  while (1)
  {
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14[2] + 1, 1, v14);
LABEL_4:
    v16 = v14[2];
    v15 = v14[3];
    v158 = v16 >= v15 >> 1 ? specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v15 > 1, v16 + 1, 1, v14) : v14;
    v18 = *(v0 + 376);
    v17 = *(v0 + 384);
    v19 = *(v0 + 256);
    v151 = *(v0 + 264);
    v20 = *(v0 + 248);
    v21 = *(v0 + 160);
    v22 = *(v0 + 104);
    v23 = *(v0 + 80);
    v24 = *(v0 + 88);

    v18(v21, v23);
    *(v158 + 16) = v16 + 1;
    v19(v158 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v16, v22, v23);
    v25 = *(v0 + 232);
    v26 = *(v0 + 240);
    v27 = *(v0 + 224);
    *(v0 + 216) = v158;
    v154 = v27;
    if (v25)
    {
      break;
    }

    v29 = ((1 << *(v0 + 392)) + 63) >> 6;
    if (v29 <= (v26 + 1))
    {
      v30 = v26 + 1;
    }

    else
    {
      v30 = ((1 << *(v0 + 392)) + 63) >> 6;
    }

    v31 = v30 - 1;
    while (1)
    {
      v32 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v32 >= v29)
      {
        v67 = *(v0 + 176);
        v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetMd, &_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetMR);
        (*(*(v68 - 8) + 56))(v67, 1, 1, v68);
        v37 = 0;
        goto LABEL_17;
      }

      v28 = *(v0 + 200);
      v25 = *(v28 + 8 * v32 + 64);
      ++v26;
      if (v25)
      {
        v26 = v32;
        goto LABEL_16;
      }
    }

LABEL_61:
    __break(1u);
  }

  v28 = *(v0 + 200);
LABEL_16:
  v34 = *(v0 + 168);
  v33 = *(v0 + 176);
  v35 = *(v0 + 80);
  v36 = *(v0 + 88);
  v37 = (v25 - 1) & v25;
  v38 = __clz(__rbit64(v25)) | (v26 << 6);
  (*(v36 + 16))(v34, *(v28 + 48) + *(v36 + 72) * v38, v35);
  v39 = *(*(v28 + 56) + 8 * v38);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetMd, &_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetMR);
  v41 = *(v40 + 48);
  (*(v36 + 32))(v33, v34, v35);
  *(v33 + v41) = v39;
  (*(*(v40 - 8) + 56))(v33, 0, 1, v40);

  v31 = v26;
LABEL_17:
  *(v0 + 232) = v37;
  *(v0 + 240) = v31;
  v42 = *(v0 + 184);
  outlined init with take of Date?(*(v0 + 176), v42, &_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetSgMd, &_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetSgMR);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetMd, &_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetMR);
  if ((*(*(v43 - 8) + 48))(v42, 1, v43) != 1)
  {
    v56 = *(v0 + 152);
    v55 = *(v0 + 160);
    v57 = *(v0 + 80);
    v58 = *(v0 + 88);
    v59 = *(*(v0 + 184) + *(v43 + 48));
    *(v0 + 248) = v59;
    v60 = *(v58 + 32);
    *(v0 + 256) = v60;
    *(v0 + 264) = (v58 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v60(v55);
    v61 = *(v58 + 16);
    *(v0 + 272) = v61;
    *(v0 + 280) = (v58 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v61(v56, v55, v57);
    v63 = *(v59 + 32);
    v62 = *(v59 + 40);
    ObjectType = swift_getObjectType();
    v65 = swift_task_alloc();
    *(v0 + 288) = v65;
    *v65 = v0;
    v65[1] = specialized BackgroundGroupSessionManager.didDisconnect(client:);

    return GroupSessionProvider.backgroundSessionCreationRequest.getter(ObjectType, v62);
  }

  v44 = *(v0 + 200);

  v45 = *(v158 + 16);
  if (v45)
  {
    v46 = *(v0 + 88);
    v47 = v158 + ((*(v46 + 80) + 32) & ~*(v46 + 80));
    v48 = *(v46 + 72);
    v49 = *(v46 + 16);
    v50 = v154;
    do
    {
      v51 = *(v0 + 144);
      v53 = *(v0 + 80);
      v52 = *(v0 + 88);
      v54 = *(v0 + 56);
      v49(v51, v47, v53);
      invalidateProvider #1 (id:) in BackgroundGroupSessionManager.didDisconnect(client:)(v51, v54);
      (*(v52 + 8))(v51, v53);
      v47 += v48;
      --v45;
    }

    while (v45);
  }

  else
  {

    v50 = v154;
  }

  v69 = 0;
  v70 = *(v50 + 32);
  *(v0 + 393) = v70;
  v71 = 1 << v70;
  if (v71 < 64)
  {
    v72 = ~(-1 << v71);
  }

  else
  {
    v72 = -1;
  }

  v73 = v72 & *(v50 + 64);
  if (!v73)
  {
LABEL_34:
    v76 = ((1 << *(v0 + 393)) + 63) >> 6;
    if (v76 <= v69 + 1)
    {
      v77 = v69 + 1;
    }

    else
    {
      v77 = ((1 << *(v0 + 393)) + 63) >> 6;
    }

    v78 = v77 - 1;
    while (1)
    {
      v79 = v69 + 1;
      if (__OFADD__(v69, 1))
      {
        break;
      }

      if (v79 >= v76)
      {
        v113 = *(v0 + 64);
        v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetMd, &_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetMR);
        (*(*(v114 - 8) + 56))(v113, 1, 1, v114);
        v73 = 0;
        v90 = v78;
        goto LABEL_43;
      }

      v75 = *(v0 + 224);
      v73 = *(v75 + 8 * v79 + 64);
      ++v69;
      if (v73)
      {
        v69 = v79;
        goto LABEL_42;
      }
    }

    __break(1u);
    goto LABEL_61;
  }

  while (1)
  {
    v75 = *(v0 + 224);
LABEL_42:
    v80 = *(v0 + 168);
    v81 = *(v0 + 80);
    v82 = *(v0 + 88);
    v83 = *(v0 + 64);
    v84 = __clz(__rbit64(v73));
    v73 &= v73 - 1;
    v85 = v84 | (v69 << 6);
    (*(v82 + 16))(v80, *(v75 + 48) + *(v82 + 72) * v85, v81);
    v86 = *(*(v75 + 56) + 8 * v85);
    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetMd, &_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetMR);
    v88 = *(v87 + 48);
    (*(v82 + 32))(v83, v80, v81);
    *(v83 + v88) = v86;
    (*(*(v87 - 8) + 56))(v83, 0, 1, v87);
    v89 = v86;
    v90 = v69;
LABEL_43:
    *(v0 + 312) = v73;
    *(v0 + 320) = v90;
    v91 = *(v0 + 72);
    outlined init with take of Date?(*(v0 + 64), v91, &_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetSgMd, &_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetSgMR);
    v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetMd, &_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetMR);
    if ((*(*(v92 - 8) + 48))(v91, 1, v92) == 1)
    {
      break;
    }

    v93 = *(v0 + 136);
    v94 = *(v0 + 80);
    v95 = *(v0 + 88);
    v96 = *(v0 + 56);
    v97 = *(*(v0 + 72) + *(v92 + 48));
    *(v0 + 328) = v97;
    (*(v95 + 32))(v93);
    if (*(*(v96 + 136) + 16))
    {
      v98 = *(v0 + 136);

      specialized __RawDictionaryStorage.find<A>(_:)(v98);
      if (v99)
      {
        v157 = v97;
        v126 = *(v0 + 192);
        v128 = *(v0 + 128);
        v127 = *(v0 + 136);
        v129 = *(v0 + 80);
        v130 = *(v0 + 88);

        v131 = *(v130 + 16);
        *(v0 + 336) = v131;
        *(v0 + 344) = (v130 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v131(v128, v127, v129);
        v132 = Logger.logObject.getter();
        v133 = static os_log_type_t.default.getter();
        v134 = os_log_type_enabled(v132, v133);
        v135 = *(v0 + 128);
        v136 = *(v0 + 80);
        v137 = *(v0 + 88);
        if (v134)
        {
          v138 = swift_slowAlloc();
          v161 = swift_slowAlloc();
          v162 = v161;
          *v138 = 136315138;
          _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
          v139 = dispatch thunk of CustomStringConvertible.description.getter();
          v141 = v140;
          v142 = *(v137 + 8);
          v142(v135, v136);
          v143 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v139, v141, &v162);

          *(v138 + 4) = v143;
          _os_log_impl(&dword_1AEE80000, v132, v133, "Attempting to recover providerID: %s", v138, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v161);
          MEMORY[0x1B2715BA0](v161, -1, -1);
          MEMORY[0x1B2715BA0](v138, -1, -1);
        }

        else
        {

          v142 = *(v137 + 8);
          v142(v135, v136);
        }

        *(v0 + 352) = v142;
        v144 = *(*(v0 + 56) + 112);
        v145 = swift_getObjectType();
        v146 = *(MEMORY[0x1E69976D0] + 4);
        v147 = swift_task_alloc();
        *(v0 + 360) = v147;
        *v147 = v0;
        v147[1] = specialized BackgroundGroupSessionManager.didDisconnect(client:);

        return MEMORY[0x1EEDF8BD8](v157, v145);
      }
    }

    v100 = *(v0 + 192);
    (*(*(v0 + 88) + 16))(*(v0 + 112), *(v0 + 136), *(v0 + 80));
    v101 = Logger.logObject.getter();
    v102 = static os_log_type_t.default.getter();
    v103 = os_log_type_enabled(v101, v102);
    v159 = *(v0 + 136);
    v104 = *(v0 + 112);
    v106 = *(v0 + 80);
    v105 = *(v0 + 88);
    if (v103)
    {
      v152 = v90;
      v107 = swift_slowAlloc();
      v149 = swift_slowAlloc();
      v162 = v149;
      *v107 = 136315138;
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
      v155 = v97;
      v108 = dispatch thunk of CustomStringConvertible.description.getter();
      v110 = v109;
      v111 = *(v105 + 8);
      v111(v104, v106);
      v112 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v108, v110, &v162);

      *(v107 + 4) = v112;
      __swift_destroy_boxed_opaque_existential_0(v149);
      MEMORY[0x1B2715BA0](v149, -1, -1);
      MEMORY[0x1B2715BA0](v107, -1, -1);

      v111(v159, v106);
      v69 = v152;
      if (!v73)
      {
        goto LABEL_34;
      }
    }

    else
    {

      v74 = *(v105 + 8);
      v74(v104, v106);
      v74(v159, v106);
      v69 = v90;
      if (!v73)
      {
        goto LABEL_34;
      }
    }
  }

  v115 = *(v0 + 224);
  v116 = *(v0 + 176);
  v117 = *(v0 + 184);
  v119 = *(v0 + 160);
  v118 = *(v0 + 168);
  v121 = *(v0 + 144);
  v120 = *(v0 + 152);
  v123 = *(v0 + 128);
  v122 = *(v0 + 136);
  v124 = *(v0 + 120);
  v148 = *(v0 + 112);
  v150 = *(v0 + 104);
  v153 = *(v0 + 96);
  v156 = *(v0 + 72);
  v160 = *(v0 + 64);

  v125 = *(v0 + 8);

  return v125();
}

{
  v123 = v0;
  v1 = *(v0 + 368);
  v2 = *(v0 + 344);
  v3 = *(v0 + 192);
  (*(v0 + 336))(*(v0 + 96), *(v0 + 136), *(v0 + 80));
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 368);
    v8 = *(v0 + 96);
    v9 = *(v0 + 80);
    v114 = *(v0 + 88) + 8;
    v118 = *(v0 + 352);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v122 = v11;
    *v10 = 136315394;
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    v118(v8, v9);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v122);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    *(v0 + 40) = v7;
    v16 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v17 = String.init<A>(reflecting:)();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v122);

    *(v10 + 14) = v19;
    _os_log_impl(&dword_1AEE80000, v5, v6, "Failed to recover providerID: %s, error: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v11, -1, -1);
    MEMORY[0x1B2715BA0](v10, -1, -1);
  }

  else
  {
    v20 = *(v0 + 352);
    v22 = *(v0 + 88);
    v21 = *(v0 + 96);
    v23 = *(v0 + 80);

    v20(v21, v23);
  }

  v24 = *(v0 + 368);
  v25 = *(v0 + 352);
  v26 = *(v0 + 328);
  v27 = *(v0 + 136);
  v28 = *(v0 + 80);
  v29 = *(v0 + 88) + 8;
  invalidateProvider #1 (id:) in BackgroundGroupSessionManager.didDisconnect(client:)(v27, *(v0 + 56));

  v25(v27, v28);
  v33 = *(v0 + 312);
  v32 = *(v0 + 320);
  if (!v33)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v35 = *(v0 + 224);
LABEL_16:
    v40 = *(v0 + 168);
    v41 = *(v0 + 80);
    v42 = *(v0 + 88);
    v43 = *(v0 + 64);
    v44 = __clz(__rbit64(v33));
    v33 &= v33 - 1;
    v45 = v44 | (v32 << 6);
    (*(v42 + 16))(v40, *(v35 + 48) + *(v42 + 72) * v45, v41);
    v46 = *(*(v35 + 56) + 8 * v45);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetMd, &_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetMR);
    v48 = *(v47 + 48);
    (*(v42 + 32))(v43, v40, v41);
    *(v43 + v48) = v46;
    (*(*(v47 - 8) + 56))(v43, 0, 1, v47);
    v49 = v46;
    v50 = v32;
LABEL_17:
    *(v0 + 312) = v33;
    *(v0 + 320) = v50;
    v51 = *(v0 + 72);
    outlined init with take of Date?(*(v0 + 64), v51, &_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetSgMd, &_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetSgMR);
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetMd, &_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetMR);
    if ((*(*(v52 - 8) + 48))(v51, 1, v52) == 1)
    {
      break;
    }

    v53 = *(v0 + 136);
    v54 = *(v0 + 80);
    v55 = *(v0 + 88);
    v56 = *(v0 + 56);
    v57 = *(*(v0 + 72) + *(v52 + 48));
    *(v0 + 328) = v57;
    (*(v55 + 32))(v53);
    if (*(*(v56 + 136) + 16))
    {
      v58 = *(v0 + 136);

      specialized __RawDictionaryStorage.find<A>(_:)(v58);
      if (v59)
      {
        v117 = v57;
        v87 = *(v0 + 192);
        v89 = *(v0 + 128);
        v88 = *(v0 + 136);
        v90 = *(v0 + 80);
        v91 = *(v0 + 88);

        v92 = *(v91 + 16);
        *(v0 + 336) = v92;
        *(v0 + 344) = (v91 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v92(v89, v88, v90);
        v93 = Logger.logObject.getter();
        v94 = static os_log_type_t.default.getter();
        v95 = os_log_type_enabled(v93, v94);
        v96 = *(v0 + 128);
        v97 = *(v0 + 80);
        v98 = *(v0 + 88);
        if (v95)
        {
          v99 = swift_slowAlloc();
          v121 = swift_slowAlloc();
          v122 = v121;
          *v99 = 136315138;
          _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
          v100 = dispatch thunk of CustomStringConvertible.description.getter();
          v102 = v101;
          v103 = *(v98 + 8);
          v103(v96, v97);
          v104 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v100, v102, &v122);

          *(v99 + 4) = v104;
          _os_log_impl(&dword_1AEE80000, v93, v94, "Attempting to recover providerID: %s", v99, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v121);
          MEMORY[0x1B2715BA0](v121, -1, -1);
          MEMORY[0x1B2715BA0](v99, -1, -1);
        }

        else
        {

          v103 = *(v98 + 8);
          v103(v96, v97);
        }

        *(v0 + 352) = v103;
        v105 = *(*(v0 + 56) + 112);
        ObjectType = swift_getObjectType();
        v107 = *(MEMORY[0x1E69976D0] + 4);
        v108 = swift_task_alloc();
        *(v0 + 360) = v108;
        *v108 = v0;
        v108[1] = specialized BackgroundGroupSessionManager.didDisconnect(client:);
        v30 = v117;
        v31 = ObjectType;

        return MEMORY[0x1EEDF8BD8](v30, v31);
      }
    }

    v60 = *(v0 + 192);
    (*(*(v0 + 88) + 16))(*(v0 + 112), *(v0 + 136), *(v0 + 80));
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.default.getter();
    v63 = os_log_type_enabled(v61, v62);
    v119 = *(v0 + 136);
    v64 = *(v0 + 112);
    v66 = *(v0 + 80);
    v65 = *(v0 + 88);
    if (v63)
    {
      v112 = v50;
      v67 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v122 = v110;
      *v67 = 136315138;
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
      v115 = v57;
      v68 = dispatch thunk of CustomStringConvertible.description.getter();
      v70 = v69;
      v71 = *(v65 + 8);
      v71(v64, v66);
      v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v70, &v122);

      *(v67 + 4) = v72;
      __swift_destroy_boxed_opaque_existential_0(v110);
      MEMORY[0x1B2715BA0](v110, -1, -1);
      MEMORY[0x1B2715BA0](v67, -1, -1);

      v30 = (v71)(v119, v66);
      v32 = v112;
      if (!v33)
      {
LABEL_8:
        v36 = ((1 << *(v0 + 393)) + 63) >> 6;
        if (v36 <= v32 + 1)
        {
          v37 = v32 + 1;
        }

        else
        {
          v37 = ((1 << *(v0 + 393)) + 63) >> 6;
        }

        v38 = v37 - 1;
        while (1)
        {
          v39 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            break;
          }

          if (v39 >= v36)
          {
            v73 = *(v0 + 64);
            v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetMd, &_s10Foundation4UUIDV3key_14CopresenceCore32BackgroundSessionCreationRequestC5valuetMR);
            (*(*(v74 - 8) + 56))(v73, 1, 1, v74);
            v33 = 0;
            v50 = v38;
            goto LABEL_17;
          }

          v35 = *(v0 + 224);
          v33 = *(v35 + 8 * v39 + 64);
          ++v32;
          if (v33)
          {
            v32 = v39;
            goto LABEL_16;
          }
        }

        __break(1u);
        return MEMORY[0x1EEDF8BD8](v30, v31);
      }
    }

    else
    {

      v34 = *(v65 + 8);
      v34(v64, v66);
      v30 = (v34)(v119, v66);
      v32 = v50;
      if (!v33)
      {
        goto LABEL_8;
      }
    }
  }

  v75 = *(v0 + 224);
  v76 = *(v0 + 176);
  v77 = *(v0 + 184);
  v79 = *(v0 + 160);
  v78 = *(v0 + 168);
  v81 = *(v0 + 144);
  v80 = *(v0 + 152);
  v83 = *(v0 + 128);
  v82 = *(v0 + 136);
  v84 = *(v0 + 120);
  v109 = *(v0 + 112);
  v111 = *(v0 + 104);
  v113 = *(v0 + 96);
  v116 = *(v0 + 72);
  v120 = *(v0 + 64);

  v85 = *(v0 + 8);

  return v85();
}

uint64_t specialized BackgroundGroupSessionManager.didDisconnect(client:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 288);
  v14 = *v2;
  *(*v2 + 296) = v1;

  if (v1)
  {
    v6 = v4[19];
    v7 = v4[10];
    v8 = v4[11];
    v9 = v4[7];
    v10 = *(v8 + 8);
    v4[47] = v10;
    v4[48] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v6, v7);
    v11 = specialized BackgroundGroupSessionManager.didDisconnect(client:);
    v12 = v9;
  }

  else
  {
    v12 = v4[7];
    v4[38] = a1;
    v11 = specialized BackgroundGroupSessionManager.didDisconnect(client:);
  }

  return MEMORY[0x1EEE6DFA0](v11, v12, 0);
}

uint64_t partial apply for closure #1 in BackgroundGroupSessionManager.didDisconnect(client:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return closure #1 in BackgroundGroupSessionManager.didDisconnect(client:)();
}

uint64_t specialized BackgroundGroupSessionManager.didUpdateContainers(client:containers:)(unint64_t isUniquelyReferenced_nonNull_native)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v54 - v6;
  v62 = type metadata accessor for UUID();
  v59 = *(v62 - 8);
  v8 = *(v59 + 8);
  MEMORY[0x1EEE9AC00](v62);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for default != -1)
  {
    goto LABEL_44;
  }

  while (1)
  {
    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Log.default);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    v14 = os_log_type_enabled(v12, v13);
    v63 = isUniquelyReferenced_nonNull_native;
    v55 = v7;
    if (v14)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v66 = v16;
      *v15 = 136315138;
      v65 = isUniquelyReferenced_nonNull_native;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo38TUConversationActivitySessionContainerCGMd, &_sSaySo38TUConversationActivitySessionContainerCGMR);
      v17 = String.init<A>(reflecting:)();
      v7 = v18;
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v66);

      *(v15 + 4) = v19;
      isUniquelyReferenced_nonNull_native = v63;
      _os_log_impl(&dword_1AEE80000, v12, v13, "BackgroundGroupSessionManager received updated containers: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x1B2715BA0](v16, -1, -1);
      MEMORY[0x1B2715BA0](v15, -1, -1);
    }

    v56 = *(v2 + 200);
    v20 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_So38TUConversationActivitySessionContainerCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v21 = isUniquelyReferenced_nonNull_native >> 62 ? __CocoaSet.count.getter() : *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
    v57 = v2;
    v64 = v21;
    if (v21)
    {
      break;
    }

LABEL_24:
    v66 = v20;
    CurrentValueSubject.send(_:)();
    v41 = v64;

    v42 = v57;
    v43 = *(v57 + 208);
    v44 = MEMORY[0x1E69E7CC0];
    v66 = MEMORY[0x1E69E7CC0];
    if (!v41)
    {
LABEL_37:

      v49 = specialized Sequence.flatMap<A>(_:)(v44);

      v66 = v49;
      CurrentValueSubject.send(_:)();

      v50 = type metadata accessor for TaskPriority();
      v51 = v55;
      (*(*(v50 - 8) + 56))(v55, 1, 1, v50);
      v52 = swift_allocObject();
      v52[2] = 0;
      v52[3] = 0;
      v52[4] = v42;
      v52[5] = isUniquelyReferenced_nonNull_native;

      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v51, &async function pointer to partial apply for closure #4 in BackgroundGroupSessionManager.didUpdateContainers(client:containers:), v52);
    }

    v7 = 0;
    v2 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
    v10 = (isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if (v2)
      {
        v45 = MEMORY[0x1B2714B30](v7, isUniquelyReferenced_nonNull_native);
      }

      else
      {
        if (v7 >= *(v10 + 2))
        {
          goto LABEL_42;
        }

        v45 = *(isUniquelyReferenced_nonNull_native + 8 * v7 + 32);
      }

      v46 = v45;
      v47 = (v7 + 1);
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if ([v45 state] == 3 && objc_msgSend(v46, sel_localParticipantIdentifier))
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v48 = v66[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        isUniquelyReferenced_nonNull_native = v63;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v41 = v64;
      }

      else
      {
      }

      ++v7;
      if (v47 == v41)
      {
        v44 = v66;
        v42 = v57;
        goto LABEL_37;
      }
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    swift_once();
  }

  v22 = 0;
  v60 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
  v61 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
  v58 = v59 + 16;
  v2 = (v59 + 8);
  while (1)
  {
    if (v61)
    {
      v25 = MEMORY[0x1B2714B30](v22, isUniquelyReferenced_nonNull_native);
    }

    else
    {
      if (v22 >= *(v60 + 16))
      {
        goto LABEL_39;
      }

      v25 = *(isUniquelyReferenced_nonNull_native + 8 * v22 + 32);
    }

    v26 = v25;
    v27 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v28 = [v25 groupUUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v29 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66 = v20;
    v31 = specialized __RawDictionaryStorage.find<A>(_:)(v10);
    v32 = v20[2];
    v33 = (v30 & 1) == 0;
    v34 = v32 + v33;
    if (__OFADD__(v32, v33))
    {
      goto LABEL_40;
    }

    v7 = v30;
    if (v20[3] < v34)
    {
      break;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
    }

LABEL_20:
    isUniquelyReferenced_nonNull_native = v63;
    v20 = v66;
    if (v7)
    {
      v23 = v66[7];
      v24 = *(v23 + 8 * v31);
      *(v23 + 8 * v31) = v29;

      (*v2)(v10, v62);
    }

    else
    {
      v66[(v31 >> 6) + 8] |= 1 << v31;
      v7 = v59;
      v37 = v62;
      (*(v59 + 2))(v20[6] + *(v59 + 9) * v31, v10, v62);
      *(v20[7] + 8 * v31) = v29;

      (*(v7 + 8))(v10, v37);
      v38 = v20[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_43;
      }

      v20[2] = v40;
    }

    ++v22;
    if (v27 == v64)
    {
      goto LABEL_24;
    }
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v34, isUniquelyReferenced_nonNull_native);
  v35 = specialized __RawDictionaryStorage.find<A>(_:)(v10);
  if ((v7 & 1) == (v36 & 1))
  {
    v31 = v35;
    goto LABEL_20;
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in BackgroundGroupSessionManager.sessionDidRejectKeyRecoveryRequest(sessionID:)(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return closure #1 in BackgroundGroupSessionManager.sessionDidRejectKeyRecoveryRequest(sessionID:)(a1, v6, v7, v8, v1 + v5);
}

uint64_t partial apply for closure #1 in BackgroundGroupSessionManager.sessionDidReceiveUpdatedUnknownParticipantList(sessionID:unknownParticipants:)(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return closure #1 in BackgroundGroupSessionManager.sessionDidReceiveUpdatedUnknownParticipantList(sessionID:unknownParticipants:)(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t getEnumTagSinglePayload for BackgroundGroupSessionManagerError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BackgroundGroupSessionManagerError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t dispatch thunk of BackgroundGroupSessionManager.prepareForActivation(options:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 352);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v10(a1, a2);
}

uint64_t dispatch thunk of BackgroundGroupSessionManager.prewarm()()
{
  v2 = *(*v0 + 360);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v6();
}

uint64_t dispatch thunk of BackgroundGroupSessionManager.start(presenceSession:)(uint64_t a1)
{
  v4 = *(*v1 + 368);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in GroupActivityTransferRepresentation.init<A>(exporting:);

  return v8(a1);
}

uint64_t dispatch thunk of BackgroundGroupSessionManager.start(presenceProvider:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 376);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v10(a1, a2);
}

uint64_t dispatch thunk of BackgroundGroupSessionManager.start(provider:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 384);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v10(a1, a2);
}

uint64_t dispatch thunk of BackgroundGroupSessionManager.leave(identifier:)(uint64_t a1)
{
  v4 = *(*v1 + 392);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v8(a1);
}

uint64_t dispatch thunk of BackgroundGroupSessionManager.updateMembers(identifier:members:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 400);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return v10(a1, a2);
}

uint64_t dispatch thunk of BackgroundGroupSessionManager.begin(activity:request:onConversationWithUUID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 408);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for closure #1 in GroupActivityTransferRepresentation.init<A>(exporting:);

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of BackgroundGroupSessionManager.end(activity:)(uint64_t a1)
{
  v4 = *(*v1 + 416);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v8(a1);
}

uint64_t closure #1 in BackgroundGroupSessionManager.didDisconnect(client:)partial apply()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return closure #1 in BackgroundGroupSessionManager.didDisconnect(client:)();
}

uint64_t objectdestroyTm_6(void (*a1)(void), uint64_t a2)
{
  v5 = v2[2];
  swift_unknownObjectRelease();
  v6 = v2[4];

  a1(v2[5]);

  return MEMORY[0x1EEE6BDD0](v2, a2, 7);
}

uint64_t partial apply for closure #4 in BackgroundGroupSessionManager.didUpdateContainers(client:containers:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return closure #4 in BackgroundGroupSessionManager.didUpdateContainers(client:containers:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #2 in closure #1 in BackgroundGroupSessionManager.leave(identifier:)(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return closure #2 in closure #1 in BackgroundGroupSessionManager.leave(identifier:)(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t partial apply for closure #1 in closure #1 in BackgroundGroupSessionManager.leave(identifier:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return closure #1 in closure #1 in BackgroundGroupSessionManager.leave(identifier:)(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in BackgroundGroupSessionManager.init(client:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return closure #1 in BackgroundGroupSessionManager.init(client:)(a1, v4, v5, v6);
}

uint64_t objectdestroy_83Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t outlined init with copy of InternalParticipant(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InternalParticipant();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of InternalParticipant(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InternalParticipant();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance SystemCoordinatorParticipantRoleRequest.CodingKeys()
{
  v1 = 0x6574736575716572;
  if (*v0 != 1)
  {
    v1 = 0x64656E6769736572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SystemCoordinatorParticipantRoleRequest.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized SystemCoordinatorParticipantRoleRequest.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SystemCoordinatorParticipantRoleRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SystemCoordinatorParticipantRoleRequest.CodingKeys and conformance SystemCoordinatorParticipantRoleRequest.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SystemCoordinatorParticipantRoleRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SystemCoordinatorParticipantRoleRequest.CodingKeys and conformance SystemCoordinatorParticipantRoleRequest.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SystemCoordinatorParticipantRoleRequest.NoneCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SystemCoordinatorParticipantRoleRequest.NoneCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.NoneCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SystemCoordinatorParticipantRoleRequest.NoneCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SystemCoordinatorParticipantRoleRequest.NoneCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.NoneCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SystemCoordinatorParticipantRoleRequest.RequestedRoleCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E656449656C6F72 && a2 == 0xEE00726569666974)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SystemCoordinatorParticipantRoleRequest.RequestedRoleCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SystemCoordinatorParticipantRoleRequest.RequestedRoleCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.RequestedRoleCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SystemCoordinatorParticipantRoleRequest.RequestedRoleCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SystemCoordinatorParticipantRoleRequest.RequestedRoleCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.RequestedRoleCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SystemCoordinatorParticipantRoleRequest.ResignedRoleCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SystemCoordinatorParticipantRoleRequest.ResignedRoleCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.ResignedRoleCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SystemCoordinatorParticipantRoleRequest.ResignedRoleCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SystemCoordinatorParticipantRoleRequest.ResignedRoleCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.ResignedRoleCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SystemCoordinatorParticipantRoleRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities39SystemCoordinatorParticipantRoleRequestO08ResignedI10CodingKeys33_D6B73B33FDCA861DFE8CDB59CEDA0070LLOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities39SystemCoordinatorParticipantRoleRequestO08ResignedI10CodingKeys33_D6B73B33FDCA861DFE8CDB59CEDA0070LLOGMR);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v28 = &v23 - v5;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities39SystemCoordinatorParticipantRoleRequestO09RequestedI10CodingKeys33_D6B73B33FDCA861DFE8CDB59CEDA0070LLOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities39SystemCoordinatorParticipantRoleRequestO09RequestedI10CodingKeys33_D6B73B33FDCA861DFE8CDB59CEDA0070LLOGMR);
  v27 = *(v29 - 8);
  v6 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v26 = &v23 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities39SystemCoordinatorParticipantRoleRequestO14NoneCodingKeys33_D6B73B33FDCA861DFE8CDB59CEDA0070LLOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities39SystemCoordinatorParticipantRoleRequestO14NoneCodingKeys33_D6B73B33FDCA861DFE8CDB59CEDA0070LLOGMR);
  v24 = *(v8 - 8);
  v25 = v8;
  v9 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities39SystemCoordinatorParticipantRoleRequestO10CodingKeys33_D6B73B33FDCA861DFE8CDB59CEDA0070LLOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities39SystemCoordinatorParticipantRoleRequestO10CodingKeys33_D6B73B33FDCA861DFE8CDB59CEDA0070LLOGMR);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v23 - v15;
  v17 = v1[1];
  v23 = *v1;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SystemCoordinatorParticipantRoleRequest.CodingKeys and conformance SystemCoordinatorParticipantRoleRequest.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (!v17)
  {
    v32 = 0;
    lazy protocol witness table accessor for type SystemCoordinatorParticipantRoleRequest.NoneCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.NoneCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v24 + 8))(v11, v25);
    return (*(v13 + 8))(v16, v12);
  }

  if (v17 == 1)
  {
    v34 = 2;
    lazy protocol witness table accessor for type SystemCoordinatorParticipantRoleRequest.ResignedRoleCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.ResignedRoleCodingKeys();
    v19 = v28;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v30 + 8))(v19, v31);
    return (*(v13 + 8))(v16, v12);
  }

  v33 = 1;
  lazy protocol witness table accessor for type SystemCoordinatorParticipantRoleRequest.RequestedRoleCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.RequestedRoleCodingKeys();
  v21 = v26;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v22 = v29;
  KeyedEncodingContainer.encode(_:forKey:)();
  (*(v27 + 8))(v21, v22);
  return (*(v13 + 8))(v16, v12);
}

uint64_t SystemCoordinatorParticipantRoleRequest.hash(into:)()
{
  v1 = v0[1];
  if (!v1)
  {
    v2 = 0;
    return MEMORY[0x1B2715040](v2);
  }

  if (v1 == 1)
  {
    v2 = 2;
    return MEMORY[0x1B2715040](v2);
  }

  v4 = *v0;
  MEMORY[0x1B2715040](1);

  return String.hash(into:)();
}

Swift::Int SystemCoordinatorParticipantRoleRequest.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x1B2715040](1);
      String.hash(into:)();
      return Hasher._finalize()();
    }

    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x1B2715040](v3);
  return Hasher._finalize()();
}

uint64_t SystemCoordinatorParticipantRoleRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v49 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities39SystemCoordinatorParticipantRoleRequestO08ResignedI10CodingKeys33_D6B73B33FDCA861DFE8CDB59CEDA0070LLOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities39SystemCoordinatorParticipantRoleRequestO08ResignedI10CodingKeys33_D6B73B33FDCA861DFE8CDB59CEDA0070LLOGMR);
  v46 = *(v3 - 8);
  v47 = v3;
  v4 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v50 = &v43 - v5;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities39SystemCoordinatorParticipantRoleRequestO09RequestedI10CodingKeys33_D6B73B33FDCA861DFE8CDB59CEDA0070LLOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities39SystemCoordinatorParticipantRoleRequestO09RequestedI10CodingKeys33_D6B73B33FDCA861DFE8CDB59CEDA0070LLOGMR);
  v48 = *(v44 - 8);
  v6 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v8 = &v43 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities39SystemCoordinatorParticipantRoleRequestO14NoneCodingKeys33_D6B73B33FDCA861DFE8CDB59CEDA0070LLOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities39SystemCoordinatorParticipantRoleRequestO14NoneCodingKeys33_D6B73B33FDCA861DFE8CDB59CEDA0070LLOGMR);
  v45 = *(v9 - 8);
  v10 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v43 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities39SystemCoordinatorParticipantRoleRequestO10CodingKeys33_D6B73B33FDCA861DFE8CDB59CEDA0070LLOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities39SystemCoordinatorParticipantRoleRequestO10CodingKeys33_D6B73B33FDCA861DFE8CDB59CEDA0070LLOGMR);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v43 - v16;
  v19 = a1[3];
  v18 = a1[4];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  lazy protocol witness table accessor for type SystemCoordinatorParticipantRoleRequest.CodingKeys and conformance SystemCoordinatorParticipantRoleRequest.CodingKeys();
  v20 = v51;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v20)
  {
    v21 = v50;
    v43 = v14;
    v51 = v17;
    v22 = KeyedDecodingContainer.allKeys.getter();
    v23 = *(v22 + 16);
    if (v23)
    {
      v24 = *(v22 + 32);
      if (v23 == 1 && v24 != 3)
      {
        if (*(v22 + 32))
        {
          if (v24 == 1)
          {
            v54 = 1;
            lazy protocol witness table accessor for type SystemCoordinatorParticipantRoleRequest.RequestedRoleCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.RequestedRoleCodingKeys();
            v32 = v8;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            v33 = v49;
            v34 = v44;
            v35 = KeyedDecodingContainer.decode(_:forKey:)();
            v36 = v43;
            v40 = v35;
            v42 = v41;
            (*(v48 + 8))(v32, v34);
            (*(v36 + 8))(v51, v13);
            swift_unknownObjectRelease();
LABEL_16:
            *v33 = v40;
            v33[1] = v42;
            return __swift_destroy_boxed_opaque_existential_0(v52);
          }

          v55 = 2;
          lazy protocol witness table accessor for type SystemCoordinatorParticipantRoleRequest.ResignedRoleCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.ResignedRoleCodingKeys();
          v38 = v51;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v46 + 8))(v21, v47);
          (*(v43 + 8))(v38, v13);
          swift_unknownObjectRelease();
          v40 = 0;
          v42 = 1;
        }

        else
        {
          v53 = 0;
          lazy protocol witness table accessor for type SystemCoordinatorParticipantRoleRequest.NoneCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.NoneCodingKeys();
          v37 = v51;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v45 + 8))(v12, v9);
          (*(v43 + 8))(v37, v13);
          swift_unknownObjectRelease();
          v40 = 0;
          v42 = 0;
        }

        v33 = v49;
        goto LABEL_16;
      }
    }

    v26 = type metadata accessor for DecodingError();
    swift_allocError();
    v27 = v13;
    v29 = v28;
    v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v29 = &type metadata for SystemCoordinatorParticipantRoleRequest;
    v31 = v51;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v26 - 8) + 104))(v29, *MEMORY[0x1E69E6AF8], v26);
    swift_willThrow();
    (*(v43 + 8))(v31, v27);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v52);
}

uint64_t specialized Collection<>.popFirst()()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL specialized Collection<>.popFirst()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SystemCoordinatorParticipantRoleRequest()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x1B2715040](1);
      String.hash(into:)();
      return Hasher._finalize()();
    }

    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x1B2715040](v3);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SystemCoordinatorParticipantRoleRequest()
{
  v1 = v0[1];
  if (!v1)
  {
    v2 = 0;
    return MEMORY[0x1B2715040](v2);
  }

  if (v1 == 1)
  {
    v2 = 2;
    return MEMORY[0x1B2715040](v2);
  }

  v4 = *v0;
  MEMORY[0x1B2715040](1);

  return String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SystemCoordinatorParticipantRoleRequest()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x1B2715040](1);
      String.hash(into:)();
      return Hasher._finalize()();
    }

    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x1B2715040](v3);
  return Hasher._finalize()();
}

uint64_t specialized static SystemCoordinatorParticipantRoleRequest.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  if (!v3)
  {
    if (v5)
    {
      goto LABEL_8;
    }

    outlined consume of SystemCoordinatorParticipantRoleRequest(*a1, 0);
    v7 = v4;
    v8 = 0;
LABEL_15:
    outlined consume of SystemCoordinatorParticipantRoleRequest(v7, v8);
    return 1;
  }

  if (v3 != 1)
  {
    if (v5 < 2)
    {
      goto LABEL_8;
    }

    v9 = *a1;
    if (v2 != v4 || v3 != v5)
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
      outlined copy of SystemCoordinatorParticipantRoleRequest(v4, v5);
      outlined copy of SystemCoordinatorParticipantRoleRequest(v2, v3);
      outlined consume of SystemCoordinatorParticipantRoleRequest(v2, v3);
      outlined consume of SystemCoordinatorParticipantRoleRequest(v4, v5);
      return v11 & 1;
    }

    outlined copy of SystemCoordinatorParticipantRoleRequest(v9, v3);
    outlined copy of SystemCoordinatorParticipantRoleRequest(v2, v3);
    outlined consume of SystemCoordinatorParticipantRoleRequest(v2, v3);
    v7 = v2;
    v8 = v3;
    goto LABEL_15;
  }

  if (v5 != 1)
  {
LABEL_8:
    outlined copy of SystemCoordinatorParticipantRoleRequest(*a2, *(a2 + 8));
    outlined copy of SystemCoordinatorParticipantRoleRequest(v2, v3);
    outlined consume of SystemCoordinatorParticipantRoleRequest(v2, v3);
    outlined consume of SystemCoordinatorParticipantRoleRequest(v4, v5);
    return 0;
  }

  v6 = 1;
  outlined consume of SystemCoordinatorParticipantRoleRequest(*a1, 1uLL);
  outlined consume of SystemCoordinatorParticipantRoleRequest(v4, 1uLL);
  return v6;
}

unint64_t lazy protocol witness table accessor for type SystemCoordinatorParticipantRoleRequest.CodingKeys and conformance SystemCoordinatorParticipantRoleRequest.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.CodingKeys and conformance SystemCoordinatorParticipantRoleRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.CodingKeys and conformance SystemCoordinatorParticipantRoleRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.CodingKeys and conformance SystemCoordinatorParticipantRoleRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.CodingKeys and conformance SystemCoordinatorParticipantRoleRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.CodingKeys and conformance SystemCoordinatorParticipantRoleRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.CodingKeys and conformance SystemCoordinatorParticipantRoleRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.CodingKeys and conformance SystemCoordinatorParticipantRoleRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.CodingKeys and conformance SystemCoordinatorParticipantRoleRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.CodingKeys and conformance SystemCoordinatorParticipantRoleRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.CodingKeys and conformance SystemCoordinatorParticipantRoleRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.CodingKeys and conformance SystemCoordinatorParticipantRoleRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.CodingKeys and conformance SystemCoordinatorParticipantRoleRequest.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SystemCoordinatorParticipantRoleRequest.ResignedRoleCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.ResignedRoleCodingKeys()
{
  result = lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.ResignedRoleCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.ResignedRoleCodingKeys;
  if (!lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.ResignedRoleCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.ResignedRoleCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.ResignedRoleCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.ResignedRoleCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.ResignedRoleCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.ResignedRoleCodingKeys;
  if (!lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.ResignedRoleCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.ResignedRoleCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.ResignedRoleCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.ResignedRoleCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.ResignedRoleCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.ResignedRoleCodingKeys;
  if (!lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.ResignedRoleCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.ResignedRoleCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.ResignedRoleCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.ResignedRoleCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SystemCoordinatorParticipantRoleRequest.RequestedRoleCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.RequestedRoleCodingKeys()
{
  result = lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.RequestedRoleCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.RequestedRoleCodingKeys;
  if (!lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.RequestedRoleCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.RequestedRoleCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.RequestedRoleCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.RequestedRoleCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.RequestedRoleCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.RequestedRoleCodingKeys;
  if (!lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.RequestedRoleCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.RequestedRoleCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.RequestedRoleCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.RequestedRoleCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.RequestedRoleCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.RequestedRoleCodingKeys;
  if (!lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.RequestedRoleCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.RequestedRoleCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.RequestedRoleCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.RequestedRoleCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.RequestedRoleCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.RequestedRoleCodingKeys;
  if (!lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.RequestedRoleCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.RequestedRoleCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.RequestedRoleCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.RequestedRoleCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SystemCoordinatorParticipantRoleRequest.NoneCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.NoneCodingKeys()
{
  result = lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.NoneCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.NoneCodingKeys;
  if (!lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.NoneCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.NoneCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.NoneCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.NoneCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.NoneCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.NoneCodingKeys;
  if (!lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.NoneCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.NoneCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.NoneCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.NoneCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.NoneCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.NoneCodingKeys;
  if (!lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.NoneCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.NoneCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest.NoneCodingKeys and conformance SystemCoordinatorParticipantRoleRequest.NoneCodingKeys);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SystemCoordinatorParticipantRoleRequest(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SystemCoordinatorParticipantRoleRequest(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t specialized SystemCoordinatorParticipantRoleRequest.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574736575716572 && a2 == 0xED0000656C6F5264 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64656E6769736572 && a2 == 0xEC000000656C6F52)
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

uint64_t PluginAttachmentLedgerTopic.participantsPublisher.getter(void (*a1)(void), uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  a1();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  lazy protocol witness table accessor for type CurrentValueSubject<[UInt64 : PluginAttachmentLedgerTopic.Participant], Never> and conformance CurrentValueSubject<A, B>(a4, a2, a3);
  v7 = Publisher.eraseToAnyPublisher()();

  return v7;
}

uint64_t protocol witness for PluginAttachmentLedgerTopicProvider.participantsPublisher.getter in conformance PluginAttachmentLedgerTopic(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t *a4, uint64_t *a5, unint64_t *a6)
{
  v10 = *v6;
  a3();
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  lazy protocol witness table accessor for type CurrentValueSubject<[UInt64 : PluginAttachmentLedgerTopic.Participant], Never> and conformance CurrentValueSubject<A, B>(a6, a4, a5);
  v11 = Publisher.eraseToAnyPublisher()();

  return v11;
}

uint64_t protocol witness for PluginAttachmentLedgerTopicProvider.requestUploadToken() in conformance PluginAttachmentLedgerTopic(uint64_t a1)
{
  v4 = *v1;
  v5 = *(MEMORY[0x1E6997618] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return MEMORY[0x1EEDF8A10](a1);
}

uint64_t protocol witness for PluginAttachmentLedgerTopicProvider.refreshUploadToken() in conformance PluginAttachmentLedgerTopic(uint64_t a1)
{
  v4 = *v1;
  v5 = *(MEMORY[0x1E6997610] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return MEMORY[0x1EEDF8A08](a1);
}

uint64_t protocol witness for PluginAttachmentLedgerTopicProvider.requestDownloadToken(for:) in conformance PluginAttachmentLedgerTopic(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = *(MEMORY[0x1E6997620] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return MEMORY[0x1EEDF8A18](a1, a2);
}

uint64_t protocol witness for PluginAttachmentLedgerTopicProvider.upload(id:key:assetSkeleton:developerMetadata:storageLocation:fileHash:refSignature:) in conformance PluginAttachmentLedgerTopic(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *v8;
  v16 = *(MEMORY[0x1E6997688] + 4);
  v17 = swift_task_alloc();
  *(v9 + 16) = v17;
  *v17 = v9;
  v17[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return MEMORY[0x1EEDF8A60](a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t protocol witness for PluginAttachmentLedgerTopicProvider.updateStatus(id:status:) in conformance PluginAttachmentLedgerTopic(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = *(MEMORY[0x1E6997600] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return MEMORY[0x1EEDF89F0](a1, a2);
}

uint64_t protocol witness for PluginAttachmentLedgerTopicProvider.remove(id:) in conformance PluginAttachmentLedgerTopic(uint64_t a1)
{
  v4 = *v1;
  v5 = *(MEMORY[0x1E6997680] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return MEMORY[0x1EEDF8A58](a1);
}

unint64_t instantiation function for generic protocol witness table for PluginAttachmentLedgerTopic(uint64_t a1)
{
  result = lazy protocol witness table accessor for type PluginAttachmentLedgerTopic and conformance PluginAttachmentLedgerTopic();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type PluginAttachmentLedgerTopic and conformance PluginAttachmentLedgerTopic()
{
  result = lazy protocol witness table cache variable for type PluginAttachmentLedgerTopic and conformance PluginAttachmentLedgerTopic;
  if (!lazy protocol witness table cache variable for type PluginAttachmentLedgerTopic and conformance PluginAttachmentLedgerTopic)
  {
    type metadata accessor for PluginAttachmentLedgerTopic();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PluginAttachmentLedgerTopic and conformance PluginAttachmentLedgerTopic);
  }

  return result;
}

uint64_t dispatch thunk of PluginAttachmentLedgerTopicProvider.requestUploadToken()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 48);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of PluginAttachmentLedgerTopicProvider.refreshUploadToken()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 56);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of PluginAttachmentLedgerTopicProvider.requestDownloadToken(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 64);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PluginAttachmentLedgerTopicProvider.upload(id:key:assetSkeleton:developerMetadata:storageLocation:fileHash:refSignature:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v18 = *(a13 + 72);
  v22 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  *(v13 + 16) = v20;
  *v20 = v13;
  v20[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v22(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
}

uint64_t dispatch thunk of PluginAttachmentLedgerTopicProvider.updateStatus(id:status:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 80);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PluginAttachmentLedgerTopicProvider.remove(id:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 88);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v11(a1, a2, a3);
}

uint64_t Topic.BootstrapPubSubTopicInfo.delegate.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  return swift_unknownObjectRetain();
}

uint64_t Topic.BootstrapPubSubTopicInfo.init(dataCryptorProvider:delegate:seqNumWatermark:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  result = outlined init with take of Transferable(a1, a5);
  a5[5] = a2;
  a5[6] = a3;
  a5[7] = a4;
  return result;
}

uint64_t Topic.topic.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t Topic.topic.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy14CopresenceCore11PubSubTopicC10QueueStateV_GMd, &_s7Combine9PublishedV9PublisherVy14CopresenceCore11PubSubTopicC10QueueStateV_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v43 = &v35 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GMd, &_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GMR);
  v38 = *(v12 - 8);
  v13 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v35 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11SubscribeOnVy_AA9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO11SubscribeOnVy_AA9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GSo17OS_dispatch_queueCGMR);
  v39 = *(v16 - 8);
  v40 = v16;
  v17 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v35 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AC11SubscribeOnVy_AA9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GSo17OS_dispatch_queueCGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AC11SubscribeOnVy_AA9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GSo17OS_dispatch_queueCGGMR);
  v41 = *(v20 - 8);
  v42 = v20;
  v21 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v35 - v22;
  swift_beginAccess();
  v24 = v1[2];
  v2[2] = a1;

  if (a1)
  {
    PubSubTopic.$subscribers.getter();
    v26 = PubSubTopic.queue.getter();
    v37 = v4;
    v27 = v26;
    v44[0] = v26;
    v28 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    (*(*(v28 - 8) + 56))(v11, 1, 1, v28);
    type metadata accessor for OS_dispatch_queue();
    v35 = MEMORY[0x1E695C068];
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Published<[UInt64 : PubSubTopic.Participant]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GMd, &_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GMR);
    v36 = v5;
    lazy protocol witness table accessor for type Topic and conformance Topic(&lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue, type metadata accessor for OS_dispatch_queue);
    Publisher.subscribe<A>(on:options:)();
    outlined destroy of NSObject?(v11, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
    (*(v38 + 8))(v15, v12);

    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.SubscribeOn<Published<[UInt64 : PubSubTopic.Participant]>.Publisher, OS_dispatch_queue> and conformance Publishers.SubscribeOn<A, B>, &_s7Combine10PublishersO11SubscribeOnVy_AA9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO11SubscribeOnVy_AA9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GSo17OS_dispatch_queueCGMR);
    lazy protocol witness table accessor for type [UInt64 : PubSubTopic.Participant] and conformance <> [A : B]();
    v29 = v40;
    Publisher<>.removeDuplicates()();
    (*(v39 + 8))(v19, v29);
    v30 = (*(*v2 + 464))(v44);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<Publishers.SubscribeOn<Published<[UInt64 : PubSubTopic.Participant]>.Publisher, OS_dispatch_queue>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AC11SubscribeOnVy_AA9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GSo17OS_dispatch_queueCGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AC11SubscribeOnVy_AA9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GSo17OS_dispatch_queueCGGMR);
    v31 = v42;
    Publisher<>.assign(to:)();
    (*(v41 + 8))(v23, v31);
    v30(v44, 0);
    v32 = v43;
    PubSubTopic.$queueState.getter();
    v33 = (*(*v2 + 512))(v44);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Published<PubSubTopic.QueueState>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy14CopresenceCore11PubSubTopicC10QueueStateV_GMd, &_s7Combine9PublishedV9PublisherVy14CopresenceCore11PubSubTopicC10QueueStateV_GMR);
    v34 = v37;
    Publisher<>.assign(to:)();
    (*(v36 + 8))(v32, v34);
    v33(v44, 0);
  }

  return result;
}

uint64_t Topic.state.getter()
{
  v1 = *(v0 + 48);
  dispatch thunk of StateMachine.currentState.getter();
  return v3;
}

uint64_t Topic.name.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t key path getter for Topic.receivedDataHandler : Topic@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = (*(**a1 + 328))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed Data, @unowned UInt64, @guaranteed [UInt64]?) -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for Topic.receivedDataHandler : Topic(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Data, @in_guaranteed UInt64, @in_guaranteed [UInt64]?) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + 336);
  outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(v3);
  return v7(v6, v5);
}

uint64_t Topic.receivedDataHandler.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(v1);
  return v1;
}

uint64_t Topic.receivedDataHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 96);
  v6 = *(v2 + 104);
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v5);
}

uint64_t key path getter for Topic.pubSubStateChangedHandler : Topic@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*(**a1 + 352))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed PlaybackSyncer.Message, @in_guaranteed UUID) -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for Topic.pubSubStateChangedHandler : Topic(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed PlaybackSyncer.Message, @in_guaranteed UUID) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + 360);
  outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(v3);
  return v7(v6, v5);
}

uint64_t Topic.pubSubStateChangedHandler.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(v1);
  return v1;
}

uint64_t Topic.pubSubStateChangedHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 112);
  v6 = *(v2 + 120);
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v5);
}

uint64_t key path getter for Topic.catchupNeededHandler : Topic@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = (*(**a1 + 376))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = _ss6UInt64VIegy_ABytIegnr_TRTA_0;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for Topic.catchupNeededHandler : Topic(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Error?) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + 384);
  outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(v3);
  return v7(v6, v5);
}

uint64_t Topic.catchupNeededHandler.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(v1);
  return v1;
}

uint64_t Topic.catchupNeededHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 128);
  v6 = *(v2 + 136);
  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
  return outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v5);
}

uint64_t Topic.dataCryptor.didset()
{
  v1 = v0;
  if (one-time initialization token for topic != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.topic);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1[10], v1[11], v9);
    _os_log_impl(&dword_1AEE80000, v3, v4, "Updating PubSubTopic dataCryptorProvider, topic=%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x1B2715BA0](v6, -1, -1);
    MEMORY[0x1B2715BA0](v5, -1, -1);
  }

  result = (*(*v1 + 224))();
  if (result)
  {
    swift_beginAccess();
    v8 = v1[18];
    if (v8)
    {
      v9[3] = swift_getObjectType();
      v9[0] = v8;
      swift_unknownObjectRetain_n();
      PubSubTopic.refreshDataCryptorProvider(with:)();
      swift_unknownObjectRelease();

      return __swift_destroy_boxed_opaque_existential_0(v9);
    }

    else
    {
    }
  }

  return result;
}

uint64_t Topic.dataCryptor.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 144);
  return swift_unknownObjectRetain();
}

uint64_t Topic.dataCryptor.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 144);
  *(v1 + 144) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  Topic.dataCryptor.didset();
  return swift_unknownObjectRelease();
}

uint64_t (*Topic.dataCryptor.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return Topic.dataCryptor.modify;
}

uint64_t Topic.dataCryptor.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return Topic.dataCryptor.didset();
  }

  return result;
}

uint64_t key path getter for Topic.subscribedParticipants : Topic@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 424))();
  *a2 = result;
  return result;
}

uint64_t key path setter for Topic.subscribedParticipants : Topic(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 432);

  return v3(v4);
}

uint64_t Topic.subscribedParticipants.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t Topic.subscribedParticipants.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*Topic.subscribedParticipants.modify(uint64_t *a1))()
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
  return Topic.subscribedParticipants.modify;
}

uint64_t key path setter for Topic.$subscribedParticipants : Topic(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GMd, &_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1);
  return (*(**a2 + 456))(v7);
}

uint64_t Topic.$subscribedParticipants.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GMd, &_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGGMd, &_s7Combine9PublishedVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Topic.$subscribedParticipants.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GMd, &_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GMR);
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

  v10 = OBJC_IVAR____TtC15GroupActivities5Topic__subscribedParticipants;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGGMd, &_s7Combine9PublishedVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return Topic.$subscribedParticipants.modify;
}

uint64_t key path setter for Topic.queueState : Topic(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PubSubTopic.QueueState();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  return (*(**a2 + 480))(v7);
}

uint64_t Topic.queueState.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t Topic.queueState.setter(uint64_t a1)
{
  v2 = type metadata accessor for PubSubTopic.QueueState();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  (*(v3 + 16))(v6, a1, v2);

  static Published.subscript.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Topic.queueState.modify(uint64_t *a1))()
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
  return Topic.queueState.modify;
}

uint64_t key path setter for Topic.$queueState : Topic(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy14CopresenceCore11PubSubTopicC10QueueStateV_GMd, &_s7Combine9PublishedV9PublisherVy14CopresenceCore11PubSubTopicC10QueueStateV_GMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1);
  return (*(**a2 + 504))(v7);
}

uint64_t Topic.$subscribedParticipants.getter(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t Topic.$queueState.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy14CopresenceCore11PubSubTopicC10QueueStateV_GMd, &_s7Combine9PublishedV9PublisherVy14CopresenceCore11PubSubTopicC10QueueStateV_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy14CopresenceCore11PubSubTopicC10QueueStateVGMd, &_s7Combine9PublishedVy14CopresenceCore11PubSubTopicC10QueueStateVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Topic.$queueState.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy14CopresenceCore11PubSubTopicC10QueueStateV_GMd, &_s7Combine9PublishedV9PublisherVy14CopresenceCore11PubSubTopicC10QueueStateV_GMR);
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

  v10 = OBJC_IVAR____TtC15GroupActivities5Topic__queueState;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy14CopresenceCore11PubSubTopicC10QueueStateVGMd, &_s7Combine9PublishedVy14CopresenceCore11PubSubTopicC10QueueStateVGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return Topic.$queueState.modify;
}

uint64_t key path getter for Topic.invalidationHandler : Topic@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = (*(**a1 + 520))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = _ss5Error_pIegg_sAA_pytIegnr_TRTA_0;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for Topic.invalidationHandler : Topic(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Error?) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + 528);
  outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(v3);
  return v7(v6, v5);
}

uint64_t key path getter for Topic.requestEncryptionKeysHandler : Topic@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*(**a1 + 544))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = thunk for @escaping @callee_guaranteed (@guaranteed [UInt64]?) -> ()partial apply;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for Topic.requestEncryptionKeysHandler : Topic(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed (@in_guaranteed [UInt64]?) -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + 552);
  outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(v3);
  return v7(v6, v5);
}

uint64_t Topic.invalidationHandler.getter(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t Topic.invalidationHandler.setter(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

uint64_t Topic.seqNumWatermark.getter()
{
  v1 = OBJC_IVAR____TtC15GroupActivities5Topic_seqNumWatermark;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t Topic.seqNumWatermark.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15GroupActivities5Topic_seqNumWatermark;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t Topic.__allocating_init(name:delegate:pubSubTopicGenerator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v16 = a7(a1, a2, a3, a5, a6, v7, ObjectType, a4);
  swift_unknownObjectRelease();
  return v16;
}

Swift::Void __swiftcall Topic.subscribe()()
{
  v1 = v0;
  v2 = v0[6];
  LOBYTE(v37[0]) = 0;
  if (dispatch thunk of StateMachine.execute(_:)())
  {
    if ((*(*v1 + 400))())
    {
      if (one-time initialization token for topic != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      __swift_project_value_buffer(v3, static Log.topic);

      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v37[0] = v7;
        *v6 = 136315138;
        *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1[10], v1[11], v37);
        _os_log_impl(&dword_1AEE80000, v4, v5, "Subscribing, topic=%s", v6, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v7);
        MEMORY[0x1B2715BA0](v7, -1, -1);
        MEMORY[0x1B2715BA0](v6, -1, -1);
      }

      v8 = v1[10];
      v9 = v1[11];
      v10 = *(*v1 + 544);

      v12 = v10(v11);
      if (v12)
      {
        v14 = v12;
        v15 = v13;
        v16 = swift_allocObject();
        *(v16 + 16) = v14;
        *(v16 + 24) = v15;
        v17 = thunk for @escaping @callee_guaranteed (@guaranteed [UInt64]?) -> ()partial apply;
      }

      else
      {
        v16 = swift_allocObject();
        *(v16 + 16) = partial apply for closure #1 in Topic.subscribe();
        *(v16 + 24) = v1;

        v17 = _sSays6UInt64VGSgIegg_ADytIegnr_TRTA_0;
      }

      v23 = v17;
      v24 = swift_allocObject();
      *(v24 + 16) = v23;
      *(v24 + 24) = v16;
      v25 = type metadata accessor for GroupSessionDataCryptorProvider();
      v26 = *(v25 + 48);
      v27 = *(v25 + 52);
      swift_allocObject();
      swift_unknownObjectRetain();
      v28 = GroupSessionDataCryptorProvider.init(topic:dataCryptor:refreshEncryptionKeysHandler:)();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v29 = v1[8];
        ObjectType = swift_getObjectType();
        v31 = (*(v29 + 8))(v8, v9, ObjectType, v29);
        swift_unknownObjectRelease();
      }

      else
      {
        v31 = 0;
      }

      v32 = v1[9];
      v1[9] = v31;

      v37[3] = v25;
      v37[4] = MEMORY[0x1E69976B8];
      v37[0] = v28;
      v33 = lazy protocol witness table accessor for type Topic and conformance Topic(&lazy protocol witness table cache variable for type Topic and conformance Topic, type metadata accessor for Topic);
      v34 = (*(*v1 + 568))();
      v37[5] = v1;
      v37[6] = v33;
      v37[7] = v34;
      v36 = v1[3];
      v35 = v1[4];

      v36(v37);
      swift_allocObject();
      swift_weakInit();
      swift_allocObject();
      swift_weakInit();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy14CopresenceCore11PubSubTopicCs5Error_pGMd, &_s7Combine12AnyPublisherVy14CopresenceCore11PubSubTopicCs5Error_pGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<PubSubTopic, Error> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy14CopresenceCore11PubSubTopicCs5Error_pGMd, &_s7Combine12AnyPublisherVy14CopresenceCore11PubSubTopicCs5Error_pGMR);
      Publisher.sink(receiveCompletion:receiveValue:)();

      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();

      swift_unknownObjectRelease();

      outlined destroy of Topic.BootstrapPubSubTopicInfo(v37);
    }

    else
    {
      if (one-time initialization token for topic != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      __swift_project_value_buffer(v18, static Log.topic);

      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v37[0] = v22;
        *v21 = 136315138;
        *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1[10], v1[11], v37);
        _os_log_impl(&dword_1AEE80000, v19, v20, "No data cryptor is available for topic=%s", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v22);
        MEMORY[0x1B2715BA0](v22, -1, -1);
        MEMORY[0x1B2715BA0](v21, -1, -1);
      }
    }
  }
}

void closure #1 in Topic.subscribe()(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for topic != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.topic);

  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(a2 + 80), *(a2 + 88), &v8);
    _os_log_impl(&dword_1AEE80000, oslog, v4, "Topic missing 'requestEncryptionKeysHandler', ignoring request, topic=%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x1B2715BA0](v6, -1, -1);
    MEMORY[0x1B2715BA0](v5, -1, -1);
  }
}

void closure #2 in Topic.subscribe()(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (v1)
    {
      v4 = v1;
      if (one-time initialization token for topic != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      __swift_project_value_buffer(v5, static Log.topic);
      v6 = v1;

      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v26[0] = v10;
        *v9 = 136315394;
        v11 = v1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v12 = String.init<A>(reflecting:)();
        v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v26);

        *(v9 + 4) = v14;
        *(v9 + 12) = 2080;
        v15 = v3[10];
        v16 = v3[11];

        v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v26);

        *(v9 + 14) = v17;
        _os_log_impl(&dword_1AEE80000, v7, v8, "Failed to subscribe, error=%s topic=%s", v9, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B2715BA0](v10, -1, -1);
        MEMORY[0x1B2715BA0](v9, -1, -1);
      }

      v18 = v3[6];
      LOBYTE(v26[0]) = 3;
      dispatch thunk of StateMachine.execute(_:)();
      v19 = v3[9];
      v3[9] = 0;

      v20 = *(v3 + OBJC_IVAR____TtC15GroupActivities5Topic_pendingMessagesLock);

      Lock.withLock<A>(_:)();

      v22 = (*(*v3 + 520))(v21);
      if (v22)
      {
        v23 = v22;
        lazy protocol witness table accessor for type Topic.Errors and conformance Topic.Errors();
        v24 = swift_allocError();
        *v25 = 1;
        v23(v24);

        outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v23);

        return;
      }
    }
  }
}

uint64_t closure #1 in closure #2 in Topic.subscribe()(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15GroupActivities5Topic_pendingMessages;
  swift_beginAccess();
  v24 = v2;
  v25 = a1;
  v3 = *(a1 + v2);
  v4 = *(v3 + 16);

  if (v4)
  {
    v6 = 0;
    v7 = (v3 + 32);
    v8 = static Log.topic;
    v26 = v4;
    v27 = v3;
    while (v6 < *(v3 + 16))
    {
      v32 = *v7;
      v9 = v7[1];
      v10 = v7[2];
      v11 = v7[3];
      v36 = *(v7 + 8);
      v34 = v10;
      v35 = v11;
      v33 = v9;
      outlined init with copy of Topic.PendingMessage(&v32, v30);
      if (one-time initialization token for topic != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      __swift_project_value_buffer(v12, v8);
      outlined init with copy of Topic.PendingMessage(&v32, v30);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();
      outlined destroy of Topic.PendingMessage(&v32);
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v37 = v28;
        *v15 = 136315138;
        v30[2] = v34;
        v30[3] = v35;
        v31 = v36;
        v30[0] = v32;
        v30[1] = v33;
        outlined init with copy of Topic.PendingMessage(&v32, v29);
        v16 = String.init<A>(reflecting:)();
        v18 = v8;
        v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v37);

        *(v15 + 4) = v19;
        v8 = v18;
        _os_log_impl(&dword_1AEE80000, v13, v14, "Dropping pending message due to error in subscribing: %s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v28);
        v4 = v26;
        v3 = v27;
        MEMORY[0x1B2715BA0](v28, -1, -1);
        MEMORY[0x1B2715BA0](v15, -1, -1);
      }

      v20 = *(&v35 + 1);
      if (*(&v35 + 1))
      {
        lazy protocol witness table accessor for type Topic.Errors and conformance Topic.Errors();
        v21 = swift_allocError();
        *v22 = 0;
        v20();
      }

      result = outlined destroy of Topic.PendingMessage(&v32);
      ++v6;
      v7 = (v7 + 72);
      if (v4 == v6)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:

    v23 = *(v25 + v24);
    *(v25 + v24) = MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t closure #3 in Topic.subscribe()(uint64_t *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = result;
    v46 = v11;

    Topic.topic.setter(v15);
    if (one-time initialization token for topic != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Log.topic);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();

    v19 = os_log_type_enabled(v17, v18);
    v47 = v8;
    v48 = v6;
    if (v19)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v45 = v7;
      v22 = v3;
      v23 = v2;
      v24 = v21;
      aBlock[0] = v21;
      *v20 = 136315138;
      v26 = v14[10];
      v25 = v14[11];

      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v25, aBlock);

      *(v20 + 4) = v27;
      _os_log_impl(&dword_1AEE80000, v17, v18, "Successfully subscribed, topic=%s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      v28 = v24;
      v2 = v23;
      v3 = v22;
      v7 = v45;
      MEMORY[0x1B2715BA0](v28, -1, -1);
      MEMORY[0x1B2715BA0](v20, -1, -1);
    }

    v29 = v14[6];
    LOBYTE(aBlock[0]) = 2;
    if (dispatch thunk of StateMachine.execute(_:)())
    {
      v30 = (*(*v14 + 400))();
      if (v30)
      {
        v31 = v30;
        if ((*(*v14 + 224))())
        {
          ObjectType = swift_getObjectType();
          aBlock[0] = v31;
          swift_unknownObjectRetain();
          PubSubTopic.refreshDataCryptorProvider(with:)();
          swift_unknownObjectRelease();

          __swift_destroy_boxed_opaque_existential_0(aBlock);
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      v43 = *(v14 + OBJC_IVAR____TtC15GroupActivities5Topic_pendingMessagesLock);

      Lock.withLock<A>(_:)();

      (*(*v14 + 576))(0);
    }

    else
    {

      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        aBlock[0] = v35;
        *v34 = 136315138;
        v36 = v14[10];
        v37 = v14[11];

        v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, aBlock);

        *(v34 + 4) = v38;
        _os_log_impl(&dword_1AEE80000, v32, v33, "Unsubscribed while subscribing, topic=%s", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v35);
        MEMORY[0x1B2715BA0](v35, -1, -1);
        MEMORY[0x1B2715BA0](v34, -1, -1);
      }

      if ((*(*v14 + 224))())
      {
        v45 = PubSubTopic.queue.getter();

        v52 = partial apply for closure #1 in closure #3 in Topic.subscribe();
        v53 = v14;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
        ObjectType = &block_descriptor_126;
        v39 = _Block_copy(aBlock);

        v40 = v46;
        static DispatchQoS.unspecified.getter();
        v49 = MEMORY[0x1E69E7CC0];
        lazy protocol witness table accessor for type Topic and conformance Topic(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        v41 = v48;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v42 = v45;
        MEMORY[0x1B27147B0](0, v40, v41, v39);
        _Block_release(v39);

        (*(v3 + 8))(v41, v2);
        (*(v47 + 8))(v40, v7);
      }
    }
  }

  return result;
}

uint64_t closure #1 in closure #3 in Topic.subscribe()(uint64_t a1)
{
  result = (*(*a1 + 224))();
  if (result)
  {
    PubSubTopic.unsubscribe(force:)(0);
  }

  return result;
}

uint64_t closure #2 in closure #3 in Topic.subscribe()(uint64_t a1)
{
  v40 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v40 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v39 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for DispatchQoS();
  v5 = *(v38 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC15GroupActivities5Topic_pendingMessages;
  swift_beginAccess();
  v33 = v8;
  v9 = *(*(a1 + v8) + 16);
  v43 = *(a1 + v8);

  v42 = v9;
  if (v9)
  {
    v11 = 0;
    v36 = v55;
    v35 = (v2 + 8);
    v34 = (v5 + 8);
    v12 = (v43 + 96);
    v41 = a1;
    while (v11 < *(v43 + 16))
    {
      v14 = *(v12 - 4);
      v50 = *(v12 - 3);
      v15 = *(v12 - 4);
      v48 = *(v12 - 3);
      v47 = *(v12 - 16);
      v17 = *(v12 - 1);
      v16 = *v12;
      v18 = *(*a1 + 224);
      v49 = v14;
      v51 = v14;
      outlined copy of Data._Representation(v14, *(&v14 + 1));
      v52 = v50;

      v19 = outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(v17);
      v20 = v18(v19);
      if (v20)
      {
        v21 = v20;
        v46 = PubSubTopic.queue.getter();
        v22 = swift_allocObject();
        swift_weakInit();
        v23 = swift_allocObject();
        *(v23 + 16) = v21;
        *(v23 + 24) = v22;
        v24 = v50;
        *(v23 + 32) = v49;
        *(v23 + 48) = v24;
        v44 = v15;
        v25 = v48;
        *(v23 + 64) = v15;
        *(v23 + 72) = v25;
        *(v23 + 80) = v47;
        *(v23 + 88) = v17;
        *(v23 + 96) = v16;
        v45 = v16;
        v55[2] = closure #1 in Topic._sendData(_:to:messageTypeIdentifier:previousSeqNumUnacked:completion:)partial apply;
        v55[3] = v23;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        v55[0] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
        v55[1] = &block_descriptor_134;
        *&v49 = _Block_copy(aBlock);

        outlined copy of Data._Representation(v51, *(&v51 + 1));

        outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(v17);
        v26 = v37;
        static DispatchQoS.unspecified.getter();
        v53 = MEMORY[0x1E69E7CC0];
        lazy protocol witness table accessor for type Topic and conformance Topic(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
        *&v50 = v17;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        v27 = v39;
        v28 = v40;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v29 = v49;
        v30 = v46;
        MEMORY[0x1B27147B0](0, v26, v27, v49);
        _Block_release(v29);

        (*v35)(v27, v28);
        (*v34)(v26, v38);

        outlined consume of Data._Representation(v51, *(&v51 + 1));

        v13 = v50;
      }

      else
      {
        outlined consume of Data._Representation(v51, *(&v51 + 1));

        v13 = v17;
      }

      result = outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v13);
      ++v11;
      v12 += 9;
      a1 = v41;
      if (v42 == v11)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:

    v31 = *(a1 + v33);
    *(a1 + v33) = MEMORY[0x1E69E7CC0];
  }

  return result;
}

Swift::Void __swiftcall Topic.unsubscribe()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v44 = *(v2 - 8);
  v3 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 48);
  LOBYTE(aBlock) = 1;
  if (dispatch thunk of StateMachine.execute(_:)())
  {
    if (one-time initialization token for topic != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Log.topic);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = v6;
      v17 = v7;
      v18 = swift_slowAlloc();
      aBlock = v18;
      *v15 = 136315138;
      *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v1 + 80), *(v1 + 88), &aBlock);
      _os_log_impl(&dword_1AEE80000, v13, v14, "Unsubscribing, topic=%s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      v19 = v18;
      v7 = v17;
      v6 = v16;
      MEMORY[0x1B2715BA0](v19, -1, -1);
      MEMORY[0x1B2715BA0](v15, -1, -1);
    }

    swift_beginAccess();
    specialized Set._Variant.removeAll(keepingCapacity:)(1);
    v20 = swift_endAccess();
    v21 = (*(*v1 + 224))(v20);
    if (v21)
    {
      v22 = v21;
      v43 = PubSubTopic.queue.getter();
      v50 = partial apply for closure #1 in Topic.unsubscribe();
      v51 = v22;
      aBlock = MEMORY[0x1E69E9820];
      v47 = 1107296256;
      v48 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v49 = &block_descriptor_12;
      v42 = _Block_copy(&aBlock);

      static DispatchQoS.unspecified.getter();
      v45 = MEMORY[0x1E69E7CC0];
      v23 = v2;
      v24 = lazy protocol witness table accessor for type Topic and conformance Topic(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
      v25 = v10;
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      v41[1] = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      v41[2] = v26;
      v27 = v25;
      v41[3] = v24;
      v28 = v23;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v29 = v25;
      v31 = v42;
      v30 = v43;
      MEMORY[0x1B27147B0](0, v29, v5, v42);
      _Block_release(v31);

      v32 = *(v44 + 8);
      v33 = v44 + 8;
      v32(v5, v28);
      v34 = *(v7 + 8);
      v43 = v6;
      v34(v27, v6);

      v35 = PubSubTopic.reporter.getter();
      if (v35)
      {
        v42 = v32;
        v36 = v35;
        v37 = PubSubTopicReporter.queue.getter();
        v38 = swift_allocObject();
        *(v38 + 16) = v36;
        *(v38 + 24) = v22;
        v50 = partial apply for closure #2 in Topic.unsubscribe();
        v51 = v38;
        aBlock = MEMORY[0x1E69E9820];
        v47 = 1107296256;
        v48 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
        v49 = &block_descriptor_25_0;
        v39 = _Block_copy(&aBlock);
        v44 = v33;
        v40 = v39;

        static DispatchQoS.unspecified.getter();
        v45 = MEMORY[0x1E69E7CC0];
        dispatch thunk of SetAlgebra.init<A>(_:)();
        MEMORY[0x1B27147B0](0, v27, v5, v40);
        _Block_release(v40);

        (v42)(v5, v28);
        v34(v27, v43);
      }
    }
  }
}

void closure #2 in Topic.unsubscribe()()
{
  PubSubTopic.reporterTag.getter();
  v0 = dispatch thunk of PubSubTopicReporter.emitAndRemoveReport(forTag:)();

  if ((v0 & 1) == 0)
  {
    if (one-time initialization token for topic != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Log.topic);

    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v9 = v4;
      *v3 = 136315138;
      v5 = PubSubTopic.reporterTag.getter();
      v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v6, &v9);

      *(v3 + 4) = v7;
      _os_log_impl(&dword_1AEE80000, oslog, v2, "Could not find or remove the report with tag=%s", v3, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v4);
      MEMORY[0x1B2715BA0](v4, -1, -1);
      MEMORY[0x1B2715BA0](v3, -1, -1);
    }

    else
    {
    }
  }
}

void Topic.sendData(_:to:messageTypeIdentifier:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void), uint64_t a7)
{
  v8 = v7;
  v44 = a6;
  v45 = a7;
  v42 = a3;
  v43 = a5;
  v41 = a4;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v40 = *(v11 - 8);
  v12 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v39 = *(v15 - 8);
  v16 = *(v39 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(*v7 + 320);
  if ((v20)(v17) == 1)
  {
    v21 = (*(*v7 + 224))();
    if (v21)
    {
      v22 = v21;
      v38 = PubSubTopic.queue.getter();
      v23 = swift_allocObject();
      swift_weakInit();
      v24 = swift_allocObject();
      *(v24 + 16) = v22;
      *(v24 + 24) = v23;
      v37[1] = v23;
      *(v24 + 32) = a1;
      *(v24 + 40) = a2;
      v25 = v41;
      *(v24 + 48) = v42;
      *(v24 + 56) = v25;
      v41 = v15;
      *(v24 + 64) = v43;
      *(v24 + 72) = 0;
      *(v24 + 80) = 1;
      v26 = v45;
      *(v24 + 88) = v44;
      *(v24 + 96) = v26;
      aBlock[4] = partial apply for closure #1 in Topic._sendData(_:to:messageTypeIdentifier:previousSeqNumUnacked:completion:);
      aBlock[5] = v24;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_32;
      v44 = _Block_copy(aBlock);

      outlined copy of Data._Representation(a1, a2);

      static DispatchQoS.unspecified.getter();
      v46 = MEMORY[0x1E69E7CC0];
      lazy protocol witness table accessor for type Topic and conformance Topic(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v27 = v44;
      v28 = v38;
      MEMORY[0x1B27147B0](0, v19, v14, v44);
      _Block_release(v27);

      (*(v40 + 8))(v14, v11);
      (*(v39 + 8))(v19, v41);
    }
  }

  else
  {
    v29 = v20();
    if (v29)
    {
      lazy protocol witness table accessor for type Topic.Errors and conformance Topic.Errors();
      v30 = swift_allocError();
      *v31 = 0;
      v44();
    }

    else
    {
      v32 = *(v7 + OBJC_IVAR____TtC15GroupActivities5Topic_pendingMessagesLock);
      MEMORY[0x1EEE9AC00](v29);
      v37[-8] = v8;
      v37[-7] = a1;
      v34 = v41;
      v33 = v42;
      v37[-6] = a2;
      v37[-5] = v33;
      v36 = v43;
      v35 = v44;
      v37[-4] = v34;
      v37[-3] = v36;
      v37[-2] = v35;
      v37[-1] = v45;

      Lock.withLock<A>(_:)();
    }
  }
}

uint64_t closure #1 in Topic.sendData(_:to:messageTypeIdentifier:completion:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = OBJC_IVAR____TtC15GroupActivities5Topic_pendingMessages;
  swift_beginAccess();
  v15 = *(a1 + v14);

  v23 = a8;

  outlined copy of Data._Representation(a2, a3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + v14) = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
    *(a1 + v14) = v15;
  }

  v18 = *(v15 + 2);
  v17 = *(v15 + 3);
  if (v18 >= v17 >> 1)
  {
    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v15);
  }

  *(v15 + 2) = v18 + 1;
  v19 = &v15[72 * v18];
  *(v19 + 4) = a2;
  *(v19 + 5) = a3;
  *(v19 + 6) = a4;
  *(v19 + 7) = a5;
  *(v19 + 8) = a6;
  *(v19 + 9) = 0;
  v19[80] = 1;
  *(v19 + 21) = *&v24[3];
  *(v19 + 81) = *v24;
  *(v19 + 11) = a7;
  *(v19 + 12) = v23;
  *(a1 + v14) = v15;
  return swift_endAccess();
}

uint64_t closure #1 in Topic._sendData(_:to:messageTypeIdentifier:previousSeqNumUnacked:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(void), uint64_t a11)
{
  v13[1] = a11;
  if (PubSubTopic.isAvailableUnsafe.getter())
  {
    result = PubSubTopic.publish(message:to:messageTypeIdentifier:previousSeqNumUnacked:)();
    if (a10)
    {
      return a10(0);
    }
  }

  else
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v13[0] = v13;
      v12 = *(result + OBJC_IVAR____TtC15GroupActivities5Topic_pendingMessagesLock);
      MEMORY[0x1EEE9AC00](result);

      Lock.withLock<A>(_:)();
    }
  }

  return result;
}

uint64_t closure #1 in closure #1 in Topic._sendData(_:to:messageTypeIdentifier:previousSeqNumUnacked:completion:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10)
{
  v15 = OBJC_IVAR____TtC15GroupActivities5Topic_pendingMessages;
  swift_beginAccess();
  v16 = *(a1 + v15);

  outlined copy of Data._Representation(a2, a3);
  outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(a9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + v15) = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
    *(a1 + v15) = v16;
  }

  v19 = *(v16 + 2);
  v18 = *(v16 + 3);
  if (v19 >= v18 >> 1)
  {
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v16);
  }

  *(v16 + 2) = v19 + 1;
  v20 = &v16[72 * v19];
  *(v20 + 4) = a2;
  *(v20 + 5) = a3;
  *(v20 + 6) = a4;
  *(v20 + 7) = a5;
  *(v20 + 8) = a6;
  *(v20 + 9) = a7;
  v20[80] = a8 & 1;
  *(v20 + 21) = *&v25[3];
  *(v20 + 81) = *v25;
  *(v20 + 11) = a9;
  *(v20 + 12) = a10;
  *(a1 + v15) = v16;
  return swift_endAccess();
}

char *Topic.deinit()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 4);

  v3 = *(v0 + 5);

  v4 = *(v0 + 6);

  outlined destroy of weak SystemCoordinatorHostDelegate?((v0 + 56));
  v5 = *(v0 + 9);

  v6 = *(v0 + 11);

  v7 = *(v0 + 13);
  outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(*(v0 + 12));
  v8 = *(v0 + 15);
  outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(*(v0 + 14));
  v9 = *(v0 + 17);
  outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(*(v0 + 16));
  v10 = *(v0 + 18);
  swift_unknownObjectRelease();
  v11 = OBJC_IVAR____TtC15GroupActivities5Topic__subscribedParticipants;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGGMd, &_s7Combine9PublishedVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGGMR);
  (*(*(v12 - 8) + 8))(&v0[v11], v12);
  v13 = OBJC_IVAR____TtC15GroupActivities5Topic__queueState;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy14CopresenceCore11PubSubTopicC10QueueStateVGMd, &_s7Combine9PublishedVy14CopresenceCore11PubSubTopicC10QueueStateVGMR);
  (*(*(v14 - 8) + 8))(&v0[v13], v14);
  v15 = *&v0[OBJC_IVAR____TtC15GroupActivities5Topic_invalidationHandler + 8];
  outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(*&v0[OBJC_IVAR____TtC15GroupActivities5Topic_invalidationHandler]);
  v16 = *&v0[OBJC_IVAR____TtC15GroupActivities5Topic_requestEncryptionKeysHandler + 8];
  outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(*&v0[OBJC_IVAR____TtC15GroupActivities5Topic_requestEncryptionKeysHandler]);
  v17 = *&v0[OBJC_IVAR____TtC15GroupActivities5Topic_seqNumWatermark];

  v18 = *&v0[OBJC_IVAR____TtC15GroupActivities5Topic_pendingMessages];

  v19 = *&v0[OBJC_IVAR____TtC15GroupActivities5Topic_pendingMessagesLock];

  return v0;
}

uint64_t Topic.__deallocating_deinit()
{
  Topic.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t Topic.onRecordReceive(topic:)()
{
  while (1)
  {
    PubSubTopic.retrieveNextMessage()();
    if (!v11)
    {
      break;
    }

    v1 = outlined init with take of Transferable(&v10, v12);
    v2 = (*(*v0 + 328))(v1);
    if (v2)
    {
      v3 = v2;
      __swift_project_boxed_opaque_existential_1(v12, v13);
      v4 = dispatch thunk of PubSubTopicRecord.data.getter();
      v6 = v5;
      __swift_project_boxed_opaque_existential_1(v12, v13);
      v7 = dispatch thunk of PubSubTopicRecord.publisherID.getter();
      __swift_project_boxed_opaque_existential_1(v12, v13);
      v8 = dispatch thunk of PubSubTopicRecord.toParticipantIDs.getter();
      v3(v4, v6, v7, v8);
      outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v3);

      outlined consume of Data._Representation(v4, v6);
    }

    __swift_project_boxed_opaque_existential_1(v12, v13);
    dispatch thunk of PubSubTopicRecord.acknowledge()();
    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  return outlined destroy of NSObject?(&v10, &_s14CopresenceCore17PubSubTopicRecord_pSgMd, &_s14CopresenceCore17PubSubTopicRecord_pSgMR);
}

uint64_t closure #1 in Topic.topicClosed(topic:reason:unackedMessages:)(uint64_t a1, uint64_t a2)
{
  v37 = type metadata accessor for PubSubTopic.Message();
  v5 = *(v37 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v32[0] = a2;
    v32[1] = v2;
    v43 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
    v10 = v43;
    v12 = *(v5 + 16);
    v11 = v5 + 16;
    v13 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v34 = *(v11 + 56);
    v35 = v12;
    v33 = (v11 - 8);
    v36 = v11;
    do
    {
      v14 = v37;
      v35(v8, v13, v37);
      v15 = PubSubTopic.Message.data.getter();
      v41 = v16;
      v42 = v15;
      v40 = PubSubTopic.Message.participants.getter();
      v17 = PubSubTopic.Message.typeIdentifier.getter();
      v38 = v18;
      v39 = v17;
      v19 = PubSubTopic.Message.seqNum.getter();
      v21 = v20;
      (*v33)(v8, v14);
      v43 = v10;
      v23 = *(v10 + 16);
      v22 = *(v10 + 24);
      if (v23 >= v22 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1);
        v10 = v43;
      }

      v44 = v21 & 1;
      *(v10 + 16) = v23 + 1;
      v24 = v10 + 72 * v23;
      v25 = v41;
      *(v24 + 32) = v42;
      *(v24 + 40) = v25;
      v26 = v39;
      *(v24 + 48) = v40;
      *(v24 + 56) = v26;
      *(v24 + 64) = v38;
      *(v24 + 72) = v19;
      *(v24 + 80) = v44;
      LODWORD(v26) = v45;
      *(v24 + 84) = *(&v45 + 3);
      *(v24 + 81) = v26;
      *(v24 + 88) = 0;
      *(v24 + 96) = 0;
      v13 += v34;
      --v9;
    }

    while (v9);
    a2 = v32[0];
  }

  v45 = v10;
  v27 = OBJC_IVAR____TtC15GroupActivities5Topic_pendingMessages;
  swift_beginAccess();
  v28 = *(a2 + v27);

  specialized Array.append<A>(contentsOf:)(v29);
  v30 = *(a2 + v27);
  *(a2 + v27) = v45;
}

void (*Topic.onStateUpdated(topic:oldState:newState:)(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t, uint64_t)
{
  result = (*(*v3 + 352))();
  if (result)
  {
    v7 = result;
    result(a2, a3);

    return outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v7);
  }

  return result;
}

void (*protocol witness for PubSubTopicDelegate.onStateUpdated(topic:oldState:newState:) in conformance Topic(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t, uint64_t)
{
  result = (*(*v3 + 352))();
  if (result)
  {
    v7 = result;
    result(a2, a3);

    return outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v7);
  }

  return result;
}

uint64_t specialized Topic.init(name:delegate:pubSubTopicGenerator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v57 = a8;
  v58 = a4;
  v59 = a5;
  v55 = a2;
  v56 = a3;
  v54 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy14CopresenceCore11PubSubTopicC10QueueStateVGMd, &_s7Combine9PublishedVy14CopresenceCore11PubSubTopicC10QueueStateVGMR);
  v52 = *(v9 - 8);
  v53 = v9;
  v10 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v43 - v11;
  v12 = type metadata accessor for PubSubTopic.QueueState();
  v49 = *(v12 - 8);
  v50 = v12;
  v13 = *(v49 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v48 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v47 = &v43 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGGMd, &_s7Combine9PublishedVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGGMR);
  v45 = *(v17 - 8);
  v46 = v17;
  v18 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v44 = &v43 - v19;
  *(a6 + 16) = 0;
  if (MEMORY[0x1E69E7CC0] >> 62 && __CocoaSet.count.getter())
  {
    v20 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v20 = MEMORY[0x1E69E7CD0];
  }

  *(a6 + 40) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14CopresenceCore12StateMachineC10TransitionVy15GroupActivities5TopicC0F0OAJ5Event33_FCF72D66A10B9B1DA93469C1BA0E40A1LLO_GGMd, &_ss23_ContiguousArrayStorageCy14CopresenceCore12StateMachineC10TransitionVy15GroupActivities5TopicC0F0OAJ5Event33_FCF72D66A10B9B1DA93469C1BA0E40A1LLO_GGMR);
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore12StateMachineC10TransitionVy15GroupActivities5TopicC0C0OAH5Event33_FCF72D66A10B9B1DA93469C1BA0E40A1LLO_GMd, &_s14CopresenceCore12StateMachineC10TransitionVy15GroupActivities5TopicC0C0OAH5Event33_FCF72D66A10B9B1DA93469C1BA0E40A1LLO_GMR) - 8);
  v22 = *(v21 + 72);
  v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1AF013F80;
  LOBYTE(v60) = 3;
  v61 = 0;
  lazy protocol witness table accessor for type Topic.State and conformance Topic.State();
  lazy protocol witness table accessor for type Topic.Event and conformance Topic.Event();
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v60) = 0;
  v61 = 258;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v60) = 0;
  v61 = 771;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v60) = 0;
  v61 = 769;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v60) = 1;
  v61 = 513;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v60) = 1;
  v61 = 771;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v60) = 2;
  v61 = 770;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v60) = 3;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore12StateMachineCy15GroupActivities5TopicC0C0OAF5Event33_FCF72D66A10B9B1DA93469C1BA0E40A1LLOGMd, &_s14CopresenceCore12StateMachineCy15GroupActivities5TopicC0C0OAF5Event33_FCF72D66A10B9B1DA93469C1BA0E40A1LLOGMR);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  *(a6 + 48) = StateMachine.init(initialState:transitions:)();
  *(a6 + 64) = 0;
  swift_unknownObjectWeakInit();
  *(a6 + 72) = 0;
  *(a6 + 96) = 0u;
  *(a6 + 112) = 0u;
  *(a6 + 128) = 0u;
  *(a6 + 144) = 0;
  v27 = OBJC_IVAR____TtC15GroupActivities5Topic__subscribedParticipants;
  v60 = MEMORY[0x1E69E7CC8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGMd, &_sSDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGMR);
  v28 = v44;
  Published.init(initialValue:)();
  (*(v45 + 32))(a6 + v27, v28, v46);
  v29 = OBJC_IVAR____TtC15GroupActivities5Topic__queueState;
  v30 = v47;
  PubSubTopic.QueueState.init()();
  v31 = v49;
  v32 = v50;
  (*(v49 + 16))(v48, v30, v50);
  v33 = v51;
  Published.init(initialValue:)();
  (*(v31 + 8))(v30, v32);
  (*(v52 + 32))(a6 + v29, v33, v53);
  v34 = (a6 + OBJC_IVAR____TtC15GroupActivities5Topic_invalidationHandler);
  *v34 = 0;
  v34[1] = 0;
  v35 = (a6 + OBJC_IVAR____TtC15GroupActivities5Topic_requestEncryptionKeysHandler);
  *v35 = 0;
  v35[1] = 0;
  *(a6 + OBJC_IVAR____TtC15GroupActivities5Topic_seqNumWatermark) = 0;
  *(a6 + OBJC_IVAR____TtC15GroupActivities5Topic_pendingMessages) = MEMORY[0x1E69E7CC0];
  v36 = OBJC_IVAR____TtC15GroupActivities5Topic_pendingMessagesLock;
  v37 = type metadata accessor for Lock();
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  swift_allocObject();
  *(a6 + v36) = Lock.init()();
  v40 = v55;
  *(a6 + 80) = v54;
  *(a6 + 88) = v40;
  *(a6 + 64) = v57;
  swift_unknownObjectWeakAssign();
  v41 = v59;
  *(a6 + 24) = v58;
  *(a6 + 32) = v41;
  return a6;
}

uint64_t specialized Topic.__allocating_init(name:delegate:pubSubTopicGenerator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = type metadata accessor for Topic();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();

  return specialized Topic.init(name:delegate:pubSubTopicGenerator:)(a1, a2, a3, a4, a5, v18, a7, a8);
}

uint64_t _sSays6UInt64VGSgIegg_ADytIegnr_TRTA_0(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t type metadata accessor for Topic()
{
  result = type metadata singleton initialization cache for Topic;
  if (!type metadata singleton initialization cache for Topic)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void partial apply for closure #2 in Topic.unsubscribe()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  closure #2 in Topic.unsubscribe()();
}

unint64_t lazy protocol witness table accessor for type Topic.Errors and conformance Topic.Errors()
{
  result = lazy protocol witness table cache variable for type Topic.Errors and conformance Topic.Errors;
  if (!lazy protocol witness table cache variable for type Topic.Errors and conformance Topic.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Topic.Errors and conformance Topic.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Topic.Errors and conformance Topic.Errors;
  if (!lazy protocol witness table cache variable for type Topic.Errors and conformance Topic.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Topic.Errors and conformance Topic.Errors);
  }

  return result;
}

uint64_t specialized Topic.topicClosed(topic:reason:unackedMessages:)(uint64_t a1, char a2)
{
  v3 = v2;
  if (!a2)
  {
    v12 = one-time initialization token for topic;

    if (v12 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Log.topic);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_12;
    }

    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v68[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v3[10], v3[11], v68);
    v11 = "[Topic Closed] Disconnected, topic=%s";
    goto LABEL_11;
  }

  if (a2 == 1)
  {
    v5 = one-time initialization token for topic;

    if (v5 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Log.topic);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_12;
    }

    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v68[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v3[10], v3[11], v68);
    v11 = "[Topic Closed] Server bouncing, topic=%s";
LABEL_11:
    _os_log_impl(&dword_1AEE80000, v7, v8, v11, v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1B2715BA0](v10, -1, -1);
    MEMORY[0x1B2715BA0](v9, -1, -1);
LABEL_12:

    v14 = v3[6];
    LOBYTE(v68[0]) = 3;
    dispatch thunk of StateMachine.execute(_:)();
    (*(*v3 + 576))(a1);
    swift_beginAccess();
    v15 = v3[2];
    v3[2] = 0;

    v17 = *(v3 + OBJC_IVAR____TtC15GroupActivities5Topic_pendingMessagesLock);
    MEMORY[0x1EEE9AC00](v16);

    Lock.withLock<A>(_:)();

    return (*(*v3 + 648))(v18);
  }

  if (a1 > 2)
  {
    if (a1 == 3)
    {
      if (one-time initialization token for topic != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for Logger();
      __swift_project_value_buffer(v42, static Log.topic);

      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v68[0] = v46;
        *v45 = 136315138;
        *(v45 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v3[10], v3[11], v68);
        _os_log_impl(&dword_1AEE80000, v43, v44, "[Topic Closed] Message rejected, topic=%s", v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v46);
        MEMORY[0x1B2715BA0](v46, -1, -1);
        MEMORY[0x1B2715BA0](v45, -1, -1);
      }

      v47 = v3[6];
      LOBYTE(v68[0]) = 3;
      v48 = dispatch thunk of StateMachine.execute(_:)();
      v49 = (*(*v3 + 520))(v48);
      if (!v49)
      {
        goto LABEL_54;
      }

      v30 = v49;
      lazy protocol witness table accessor for type Topic.Errors and conformance Topic.Errors();
      v32 = swift_allocError();
      *v50 = 3;
      goto LABEL_48;
    }

    if (a1 != 4)
    {
      if (one-time initialization token for topic != -1)
      {
        swift_once();
      }

      v59 = type metadata accessor for Logger();
      __swift_project_value_buffer(v59, static Log.topic);

      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v68[0] = v63;
        *v62 = 136315138;
        *(v62 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v3[10], v3[11], v68);
        _os_log_impl(&dword_1AEE80000, v60, v61, "[Topic Closed] Successfully unsubscribed, topic=%s", v62, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v63);
        MEMORY[0x1B2715BA0](v63, -1, -1);
        MEMORY[0x1B2715BA0](v62, -1, -1);
      }

      v64 = v3[6];
      LOBYTE(v68[0]) = 2;
      dispatch thunk of StateMachine.execute(_:)();
      goto LABEL_54;
    }

    if (one-time initialization token for topic != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Log.topic);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v68[0] = v24;
      *v23 = 136315138;
      *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v3[10], v3[11], v68);
      v25 = "[Topic Closed] Decryption queue size exceeded, topic=%s";
      goto LABEL_26;
    }
  }

  else
  {
    if (!a1)
    {
      if (one-time initialization token for topic != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      __swift_project_value_buffer(v34, static Log.topic);

      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v68[0] = v38;
        *v37 = 136315138;
        *(v37 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v3[10], v3[11], v68);
        _os_log_impl(&dword_1AEE80000, v35, v36, "[Topic Closed] Became unavailable topic=%s", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v38);
        MEMORY[0x1B2715BA0](v38, -1, -1);
        MEMORY[0x1B2715BA0](v37, -1, -1);
      }

      v39 = v3[6];
      LOBYTE(v68[0]) = 3;
      v40 = dispatch thunk of StateMachine.execute(_:)();
      v41 = (*(*v3 + 520))(v40);
      if (!v41)
      {
        goto LABEL_54;
      }

      v30 = v41;
      lazy protocol witness table accessor for type Topic.Errors and conformance Topic.Errors();
      v32 = swift_allocError();
      v33 = 1;
      goto LABEL_47;
    }

    if (a1 != 1)
    {
      if (one-time initialization token for topic != -1)
      {
        swift_once();
      }

      v51 = type metadata accessor for Logger();
      __swift_project_value_buffer(v51, static Log.topic);

      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v68[0] = v55;
        *v54 = 136315138;
        *(v54 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v3[10], v3[11], v68);
        _os_log_impl(&dword_1AEE80000, v52, v53, "[Topic Closed] Unknown topic, topic=%s", v54, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v55);
        MEMORY[0x1B2715BA0](v55, -1, -1);
        MEMORY[0x1B2715BA0](v54, -1, -1);
      }

      v56 = v3[6];
      LOBYTE(v68[0]) = 3;
      v57 = dispatch thunk of StateMachine.execute(_:)();
      v58 = (*(*v3 + 520))(v57);
      if (!v58)
      {
        goto LABEL_54;
      }

      v30 = v58;
      lazy protocol witness table accessor for type Topic.Errors and conformance Topic.Errors();
      v32 = swift_allocError();
      v33 = 2;
      goto LABEL_47;
    }

    if (one-time initialization token for topic != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Log.topic);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v68[0] = v24;
      *v23 = 136315138;
      *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v3[10], v3[11], v68);
      v25 = "[Topic Closed] Cryptor failure, topic=%s";
LABEL_26:
      _os_log_impl(&dword_1AEE80000, v21, v22, v25, v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x1B2715BA0](v24, -1, -1);
      MEMORY[0x1B2715BA0](v23, -1, -1);
    }
  }

  v27 = v3[6];
  LOBYTE(v68[0]) = 3;
  v28 = dispatch thunk of StateMachine.execute(_:)();
  v29 = (*(*v3 + 520))(v28);
  if (v29)
  {
    v30 = v29;
    lazy protocol witness table accessor for type Topic.Errors and conformance Topic.Errors();
    v32 = swift_allocError();
    v33 = 4;
LABEL_47:
    *v31 = v33;
LABEL_48:
    v30();
    outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v30);
  }

LABEL_54:
  swift_beginAccess();
  v65 = v3[2];
  v3[2] = 0;

  v66 = *(v3 + OBJC_IVAR____TtC15GroupActivities5Topic_pendingMessagesLock);

  Lock.withLock<A>(_:)();

  v67 = v3[9];
  v3[9] = 0;
}

void (*specialized Topic.catchupNeeded(topic:catchupSender:completion:)(uint64_t a1, void (*a2)(char *)))(uint64_t)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOyyt14CopresenceCore17TopicCatchupErrorOGMd, &_ss6ResultOyyt14CopresenceCore17TopicCatchupErrorOGMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - v8;
  if (one-time initialization token for topic != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.topic);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19 = v14;
    *v13 = 136315138;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v3 + 80), *(v3 + 88), &v19);
    _os_log_impl(&dword_1AEE80000, v11, v12, "Catchup is needed, topic=%s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x1B2715BA0](v14, -1, -1);
    MEMORY[0x1B2715BA0](v13, -1, -1);
  }

  swift_storeEnumTagMultiPayload();
  a2(v9);
  v15 = outlined destroy of NSObject?(v9, &_ss6ResultOyyt14CopresenceCore17TopicCatchupErrorOGMd, &_ss6ResultOyyt14CopresenceCore17TopicCatchupErrorOGMR);
  result = (*(*v3 + 376))(v15);
  if (result)
  {
    v17 = result;
    result(a1);
    return outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v17);
  }

  return result;
}

void type metadata completion function for Topic()
{
  type metadata accessor for Published<[UInt64 : PubSubTopic.Participant]>();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for Published<PubSubTopic.QueueState>();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for Published<PubSubTopic.QueueState>()
{
  if (!lazy cache variable for type metadata for Published<PubSubTopic.QueueState>)
  {
    type metadata accessor for PubSubTopic.QueueState();
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<PubSubTopic.QueueState>);
    }
  }
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for Topic.BootstrapPubSubTopicInfo(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t storeEnumTagSinglePayload for Topic.BootstrapPubSubTopicInfo(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_s5Error_pSgIegg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Topic.PendingMessage(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Topic.PendingMessage(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Topic and conformance Topic(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _ss5Error_pIegg_sAA_pytIegnr_TRTA_0(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t _ss6UInt64VIegy_ABytIegnr_TRTA_0(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Data, @in_guaranteed UInt64, @in_guaranteed [UInt64]?) -> (@out ())(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v10[0] = a1;
  v10[1] = a2;
  v8 = a4;
  v9 = a3;
  return v5(v10, &v9, &v8);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed Data, @unowned UInt64, @guaranteed [UInt64]?) -> ()(void *a1, void *a2, void *a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  return v4(*a1, a1[1], *a2, *a3);
}

uint64_t partial apply for closure #2 in Topic.topicClosed(topic:reason:unackedMessages:)()
{
  v1 = OBJC_IVAR____TtC15GroupActivities5Topic_pendingMessages;
  swift_beginAccess();
  v2 = *(v0 + v1);
  *(v0 + v1) = MEMORY[0x1E69E7CC0];
}

uint64_t objectdestroy_28Tm()
{
  v1 = v0[2];

  v2 = v0[3];

  outlined consume of Data._Representation(v0[4], v0[5]);
  v3 = v0[6];

  v4 = v0[8];

  if (v0[11])
  {
    v5 = v0[12];
  }

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

GroupActivities::AbsoluteSpatialTemplateOutput __swiftcall AbsoluteSpatialTemplateOutput.init(elements:defaultInitiatorRole:)(Swift::OpaquePointer elements, GroupActivities::AbsoluteSpatialTemplateOutput::Role_optional defaultInitiatorRole)
{
  *v2 = elements;
  *(v2 + 8) = *defaultInitiatorRole.value.identifier._countAndFlagsBits;
  result.defaultInitiatorRole = defaultInitiatorRole;
  result.elements = elements;
  return result;
}

uint64_t SpatialTemplatePreferenceOutput.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  v3 = qword_1AF018D78[*(result + 9)];
  *a2 = *result;
  *(a2 + 8) = v2;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = v3;
  *(a2 + 40) = 2;
  return result;
}

__n128 AbsoluteSpatialTemplateOutput.Element.Seat.init(role:position:direction:)@<Q0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __n128 *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  v5 = *(a2 + 3);
  v6 = a3->n128_u64[0];
  v7 = a3[3].n128_i8[0];
  v8 = *a1;
  *(a4 + 32) = *(a2 + 2);
  *(a4 + 40) = v5;
  *a4 = v8;
  *(a4 + 16) = v4;
  *(a4 + 48) = v6;
  result = a3[1];
  v10 = a3[2];
  *(a4 + 64) = result;
  *(a4 + 80) = v10;
  *(a4 + 96) = v7;
  return result;
}

uint64_t AbsoluteSpatialTemplateOutput.Element.Direction.init(anchor:rotation:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v3 = *result;
  v4 = *(result + 32);
  if (v4 == 1)
  {
    v5 = 0;
    v6 = v3 == 2;
    v7 = v3 == 4;
    v3 = 2;
    if (!v7)
    {
      v3 = v6;
    }

    v8 = 0uLL;
  }

  else
  {
    v5 = *(result + 24);
    v8 = *(result + 8);
  }

  *a2 = a3;
  *(a2 + 16) = v3;
  *(a2 + 24) = v8;
  *(a2 + 40) = v5;
  *(a2 + 48) = v4;
  return result;
}

_BYTE *AbsoluteSpatialTemplateOutput.Element.Direction.Anchor.init(alignedWith:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>)
{
  v2 = 4;
  if (!*result)
  {
    v2 = 1;
  }

  *a2 = v2;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  return result;
}

void AbsoluteSpatialTemplateOutput.Element.Direction.anchor.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 48);
  if (v3)
  {
    v4 = 0;
    v2 = qword_1AF018DA0[v2];
    v5 = 0uLL;
  }

  else
  {
    v4 = *(v1 + 40);
    v5 = *(v1 + 24);
  }

  *a1 = v2;
  *(a1 + 8) = v5;
  *(a1 + 24) = v4;
  *(a1 + 32) = v3;
}

void AbsoluteSpatialTemplateOutput.Element.Position.init(anchor:offset:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
}

BOOL static AbsoluteSpatialTemplateOutput.Element.Position.== infix(_:_:)(double *a1, double *a2)
{
  v2 = *a1 == *a2;
  if (a1[1] != a2[1])
  {
    v2 = 0;
  }

  return a1[2] == a2[2] && v2;
}

uint64_t SpatialTemplatePreferenceOutput.contentExtent.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t SpatialTemplatePreferenceOutput.template.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v5 = *(v1 + 40);
  *(a1 + 24) = v5;
  return outlined copy of SpatialTemplatePreferenceOutput.SpatialTemplate(v2, v3, v4, v5);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys()
{
  v1 = *v0;
  v2 = 0x62416D6F74737563;
  v3 = 0x646E756F72727573;
  v4 = 1701736302;
  if (v1 != 4)
  {
    v4 = 0x61746E6573657270;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x61737265766E6F63;
  if (v1 != 1)
  {
    v5 = 0x6953794265646973;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SpatialTemplatePreferenceOutput.SpatialTemplate.ConversationalCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.SpatialTemplate.ConversationalCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.ConversationalCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SpatialTemplatePreferenceOutput.SpatialTemplate.ConversationalCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.SpatialTemplate.ConversationalCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.ConversationalCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CustomAbsoluteCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.SpatialTemplate.CustomAbsoluteCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CustomAbsoluteCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CustomAbsoluteCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.SpatialTemplate.CustomAbsoluteCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CustomAbsoluteCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SpatialTemplatePreferenceOutput.SpatialTemplate.NoneCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.SpatialTemplate.NoneCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.NoneCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SpatialTemplatePreferenceOutput.SpatialTemplate.NoneCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.SpatialTemplate.NoneCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.NoneCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SpatialTemplatePreferenceOutput.SpatialTemplate.PresentationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.SpatialTemplate.PresentationCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.PresentationCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SpatialTemplatePreferenceOutput.SpatialTemplate.PresentationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.SpatialTemplate.PresentationCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.PresentationCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SpatialTemplatePreferenceOutput.SpatialTemplate.SideBySideCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.SpatialTemplate.SideBySideCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.SideBySideCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SpatialTemplatePreferenceOutput.SpatialTemplate.SideBySideCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.SpatialTemplate.SideBySideCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.SideBySideCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SpatialTemplatePreferenceOutput.SpatialTemplate.SurroundCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.SpatialTemplate.SurroundCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.SurroundCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SpatialTemplatePreferenceOutput.SpatialTemplate.SurroundCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.SpatialTemplate.SurroundCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.SurroundCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SpatialTemplatePreferenceOutput.SpatialTemplate.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities31SpatialTemplatePreferenceOutputV0fG0O22PresentationCodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities31SpatialTemplatePreferenceOutputV0fG0O22PresentationCodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v56 = *(v3 - 8);
  v57 = v3;
  v4 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v55 = &v41 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities31SpatialTemplatePreferenceOutputV0fG0O14NoneCodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities31SpatialTemplatePreferenceOutputV0fG0O14NoneCodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v46 = *(v6 - 8);
  v47 = v6;
  v7 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v45 = &v41 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities31SpatialTemplatePreferenceOutputV0fG0O18SurroundCodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities31SpatialTemplatePreferenceOutputV0fG0O18SurroundCodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v43 = *(v9 - 8);
  v44 = v9;
  v10 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v42 = &v41 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities31SpatialTemplatePreferenceOutputV0fG0O06SideByJ10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities31SpatialTemplatePreferenceOutputV0fG0O06SideByJ10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v49 = *(v12 - 8);
  v50 = v12;
  v13 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v48 = &v41 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities31SpatialTemplatePreferenceOutputV0fG0O24ConversationalCodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities31SpatialTemplatePreferenceOutputV0fG0O24ConversationalCodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v52 = *(v15 - 8);
  v53 = v15;
  v16 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v51 = &v41 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities31SpatialTemplatePreferenceOutputV0fG0O24CustomAbsoluteCodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities31SpatialTemplatePreferenceOutputV0fG0O24CustomAbsoluteCodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v54 = *(v18 - 8);
  v19 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v41 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities31SpatialTemplatePreferenceOutputV0fG0O10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities31SpatialTemplatePreferenceOutputV0fG0O10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v59 = *(v22 - 8);
  v60 = v22;
  v23 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v1[1];
  v58 = *v1;
  v25 = v1[2];
  v26 = *(v1 + 24);
  v27 = a1[3];
  v28 = a1[4];
  v29 = a1;
  v31 = &v41 - v30;
  __swift_project_boxed_opaque_existential_1(v29, v27);
  lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (!v26)
  {
    LOBYTE(v61) = 0;
    lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.SpatialTemplate.CustomAbsoluteCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CustomAbsoluteCodingKeys();
    v33 = v60;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v61 = v58;
    v62 = v24;
    v63 = v25;
    lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput and conformance AbsoluteSpatialTemplateOutput();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v54 + 8))(v21, v18);
    return (*(v59 + 8))(v31, v33);
  }

  if (v26 == 1)
  {
    LOBYTE(v61) = 5;
    lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.SpatialTemplate.PresentationCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.PresentationCodingKeys();
    v32 = v55;
    v33 = v60;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    LOBYTE(v61) = v58 & 1;
    lazy protocol witness table accessor for type PresentationTemplateOutput and conformance PresentationTemplateOutput();
    v34 = v57;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v56 + 8))(v32, v34);
    return (*(v59 + 8))(v31, v33);
  }

  v36 = v25 | v24;
  if (v25 | v24 | v58)
  {
    if (v58 != 1 || v36)
    {
      if (v58 != 2 || v36)
      {
        LOBYTE(v61) = 4;
        lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.SpatialTemplate.NoneCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.NoneCodingKeys();
        v37 = v45;
        v38 = v60;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v40 = v46;
        v39 = v47;
      }

      else
      {
        LOBYTE(v61) = 3;
        lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.SpatialTemplate.SurroundCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.SurroundCodingKeys();
        v37 = v42;
        v38 = v60;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v40 = v43;
        v39 = v44;
      }
    }

    else
    {
      LOBYTE(v61) = 2;
      lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.SpatialTemplate.SideBySideCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.SideBySideCodingKeys();
      v37 = v48;
      v38 = v60;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v40 = v49;
      v39 = v50;
    }
  }

  else
  {
    LOBYTE(v61) = 1;
    lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.SpatialTemplate.ConversationalCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.ConversationalCodingKeys();
    v37 = v51;
    v38 = v60;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v40 = v52;
    v39 = v53;
  }

  (*(v40 + 8))(v37, v39);
  return (*(v59 + 8))(v31, v38);
}

void SpatialTemplatePreferenceOutput.SpatialTemplate.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  if (v7)
  {
    if (v7 == 1)
    {
      MEMORY[0x1B2715040](5);
      Hasher._combine(_:)(v4 & 1);
    }

    else
    {
      v8 = v6 | v5;
      if (v6 | v5 | v4)
      {
        if (v4 == 1 && v8 == 0)
        {
          v10 = 2;
        }

        else if (v4 != 2 || v8)
        {
          v10 = 4;
        }

        else
        {
          v10 = 3;
        }
      }

      else
      {
        v10 = 1;
      }

      MEMORY[0x1B2715040](v10);
    }
  }

  else
  {
    MEMORY[0x1B2715040](0);
    specialized Array<A>.hash(into:)(a1, v4);
    if (v6)
    {
      Hasher._combine(_:)(1u);

      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }
  }
}

Swift::Int SpatialTemplatePreferenceOutput.SpatialTemplate.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  Hasher.init(_seed:)();
  if (v4)
  {
    if (v4 == 1)
    {
      MEMORY[0x1B2715040](5);
      Hasher._combine(_:)(v1 & 1);
    }

    else
    {
      v5 = v3 | v2;
      if (v3 | v2 | v1)
      {
        if (v1 != 1 || v5)
        {
          if (v1 != 2 || v5)
          {
            v6 = 4;
          }

          else
          {
            v6 = 3;
          }
        }

        else
        {
          v6 = 2;
        }
      }

      else
      {
        v6 = 1;
      }

      MEMORY[0x1B2715040](v6);
    }
  }

  else
  {
    MEMORY[0x1B2715040](0);
    specialized Array<A>.hash(into:)(v8, v1);
    if (v3)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }
  }

  return Hasher._finalize()();
}

uint64_t SpatialTemplatePreferenceOutput.SpatialTemplate.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities31SpatialTemplatePreferenceOutputV0fG0O22PresentationCodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities31SpatialTemplatePreferenceOutputV0fG0O22PresentationCodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v4 = *(v3 - 8);
  v74 = v3;
  v75 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v79 = &v62 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities31SpatialTemplatePreferenceOutputV0fG0O14NoneCodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities31SpatialTemplatePreferenceOutputV0fG0O14NoneCodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v72 = *(v7 - 8);
  v73 = v7;
  v8 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v77 = &v62 - v9;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities31SpatialTemplatePreferenceOutputV0fG0O18SurroundCodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities31SpatialTemplatePreferenceOutputV0fG0O18SurroundCodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v68 = *(v71 - 8);
  v10 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v78 = &v62 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities31SpatialTemplatePreferenceOutputV0fG0O06SideByJ10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities31SpatialTemplatePreferenceOutputV0fG0O06SideByJ10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v69 = *(v12 - 8);
  v70 = v12;
  v13 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v76 = &v62 - v14;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities31SpatialTemplatePreferenceOutputV0fG0O24ConversationalCodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities31SpatialTemplatePreferenceOutputV0fG0O24ConversationalCodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v66 = *(v67 - 8);
  v15 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v17 = &v62 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities31SpatialTemplatePreferenceOutputV0fG0O24CustomAbsoluteCodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities31SpatialTemplatePreferenceOutputV0fG0O24CustomAbsoluteCodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v65 = *(v18 - 8);
  v19 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v62 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities31SpatialTemplatePreferenceOutputV0fG0O10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities31SpatialTemplatePreferenceOutputV0fG0O10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v62 - v25;
  v27 = a1[3];
  v28 = a1[4];
  v88 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v27);
  lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys();
  v29 = v81;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v29)
  {
    v30 = v21;
    v63 = v18;
    v31 = v78;
    v32 = v79;
    v81 = v23;
    v33 = v80;
    v64 = v22;
    v34 = KeyedDecodingContainer.allKeys.getter();
    v35 = (2 * *(v34 + 16)) | 1;
    v84 = v34;
    v85 = v34 + 32;
    v86 = 0;
    v87 = v35;
    v36 = specialized Collection<>.popFirst()();
    if (v36 == 6 || v86 != v87 >> 1)
    {
      v40 = type metadata accessor for DecodingError();
      swift_allocError();
      v42 = v41;
      v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
      *v42 = &type metadata for SpatialTemplatePreferenceOutput.SpatialTemplate;
      v44 = v64;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v40 - 8) + 104))(v42, *MEMORY[0x1E69E6AF8], v40);
      swift_willThrow();
      (*(v81 + 8))(v26, v44);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v36 > 2u)
      {
        if (v36 == 3)
        {
          LOBYTE(v82) = 3;
          lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.SpatialTemplate.SurroundCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.SurroundCodingKeys();
          v51 = v31;
          v52 = v64;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v53 = v81;
          (*(v68 + 8))(v51, v71);
          (*(v53 + 8))(v26, v52);
          swift_unknownObjectRelease();
          v60 = 0uLL;
          v59 = 2;
          v61 = 2;
        }

        else
        {
          v46 = v81;
          v47 = v64;
          if (v36 == 4)
          {
            LOBYTE(v82) = 4;
            lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.SpatialTemplate.NoneCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.NoneCodingKeys();
            v48 = v77;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            (*(v72 + 8))(v48, v73);
            (*(v46 + 8))(v26, v47);
            swift_unknownObjectRelease();
            v60 = 0uLL;
            v61 = 2;
            v59 = 3;
          }

          else
          {
            LOBYTE(v82) = 5;
            lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.SpatialTemplate.PresentationCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.PresentationCodingKeys();
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            lazy protocol witness table accessor for type PresentationTemplateOutput and conformance PresentationTemplateOutput();
            v57 = v74;
            KeyedDecodingContainer.decode<A>(_:forKey:)();
            (*(v75 + 8))(v32, v57);
            (*(v46 + 8))(v26, v47);
            swift_unknownObjectRelease();
            v59 = v82;
            v60 = 0uLL;
            v61 = 1;
          }
        }
      }

      else if (v36)
      {
        if (v36 == 1)
        {
          LOBYTE(v82) = 1;
          lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.SpatialTemplate.ConversationalCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.ConversationalCodingKeys();
          v37 = v17;
          v38 = v64;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v39 = v81;
          (*(v66 + 8))(v37, v67);
          (*(v39 + 8))(v26, v38);
          swift_unknownObjectRelease();
          v59 = 0;
          v60 = 0uLL;
          v61 = 2;
        }

        else
        {
          LOBYTE(v82) = 2;
          lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.SpatialTemplate.SideBySideCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.SideBySideCodingKeys();
          v54 = v76;
          v55 = v64;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v56 = v81;
          (*(v69 + 8))(v54, v70);
          (*(v56 + 8))(v26, v55);
          swift_unknownObjectRelease();
          v60 = 0uLL;
          v61 = 2;
          v59 = 1;
        }
      }

      else
      {
        LOBYTE(v82) = 0;
        lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.SpatialTemplate.CustomAbsoluteCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CustomAbsoluteCodingKeys();
        v49 = v26;
        v50 = v64;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput and conformance AbsoluteSpatialTemplateOutput();
        v58 = v63;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v65 + 8))(v30, v58);
        (*(v81 + 8))(v49, v50);
        swift_unknownObjectRelease();
        v61 = 0;
        v59 = v82;
        v60 = v83;
      }

      *v33 = v59;
      *(v33 + 8) = v60;
      *(v33 + 24) = v61;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v88);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SpatialTemplatePreferenceOutput.SpatialTemplate()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 24);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  Hasher.init(_seed:)();
  SpatialTemplatePreferenceOutput.SpatialTemplate.hash(into:)(v4);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SpatialTemplatePreferenceOutput.SpatialTemplate()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 24);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  Hasher.init(_seed:)();
  SpatialTemplatePreferenceOutput.SpatialTemplate.hash(into:)(v4);
  return Hasher._finalize()();
}

__n128 SpatialTemplatePreferenceOutput.init(template:contentExtent:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, __n128 *a4@<X8>)
{
  v4 = a1[1].n128_u64[0];
  v5 = a1[1].n128_u8[8];
  result = *a1;
  a4[1] = *a1;
  a4[2].n128_u64[0] = v4;
  a4[2].n128_u8[8] = v5;
  a4->n128_u64[0] = a2;
  a4->n128_u8[8] = a3 & 1;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance SpatialTemplatePreferenceOutput.CodingKeys()
{
  if (*v0)
  {
    result = 0x6574616C706D6574;
  }

  else
  {
    result = 0x45746E65746E6F63;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SpatialTemplatePreferenceOutput.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x45746E65746E6F63 && a2 == 0xED0000746E657478;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574616C706D6574 && a2 == 0xE800000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SpatialTemplatePreferenceOutput.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.CodingKeys and conformance SpatialTemplatePreferenceOutput.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SpatialTemplatePreferenceOutput.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.CodingKeys and conformance SpatialTemplatePreferenceOutput.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SpatialTemplatePreferenceOutput.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities31SpatialTemplatePreferenceOutputV10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities31SpatialTemplatePreferenceOutputV10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v10 = *(v1 + 16);
  v15 = *(v1 + 24);
  v16 = v10;
  v14 = *(v1 + 32);
  v22 = *(v1 + 40);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.CodingKeys and conformance SpatialTemplatePreferenceOutput.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = v8;
  LOBYTE(v19) = v9;
  v23 = 0;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  v12 = v17;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v12)
  {
    v18 = v16;
    v19 = v15;
    v20 = v14;
    v21 = v22;
    v23 = 1;
    outlined copy of SpatialTemplatePreferenceOutput.SpatialTemplate(v16, v15, v14, v22);
    lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.SpatialTemplate and conformance SpatialTemplatePreferenceOutput.SpatialTemplate();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of SpatialTemplatePreferenceOutput.SpatialTemplate(v18, v19, v20, v21);
  }

  return (*(v4 + 8))(v7, v3);
}

void SpatialTemplatePreferenceOutput.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = *(v2 + 40);
  if (*(v2 + 8) == 1)
  {
    Hasher._combine(_:)(0);
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *v2;
    Hasher._combine(_:)(1u);
    if ((v8 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    MEMORY[0x1B2715070](v9);
    if (v7)
    {
LABEL_3:
      if (v7 == 1)
      {
        MEMORY[0x1B2715040](5);
        Hasher._combine(_:)(v4 & 1);
      }

      else
      {
        v10 = v6 | v5;
        if (v6 | v5 | v4)
        {
          if (v4 != 1 || v10)
          {
            if (v4 != 2 || v10)
            {
              v11 = 4;
            }

            else
            {
              v11 = 3;
            }
          }

          else
          {
            v11 = 2;
          }
        }

        else
        {
          v11 = 1;
        }

        MEMORY[0x1B2715040](v11);
      }

      return;
    }
  }

  MEMORY[0x1B2715040](0);
  specialized Array<A>.hash(into:)(a1, v4);
  if (v6)
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int SpatialTemplatePreferenceOutput.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = v0[4];
  v3 = *(v0 + 40);
  v6 = *v0;
  v7 = v1;
  v8 = *(v0 + 1);
  v9 = v2;
  v10 = v3;
  Hasher.init(_seed:)();
  SpatialTemplatePreferenceOutput.hash(into:)(v5);
  return Hasher._finalize()();
}

uint64_t SpatialTemplatePreferenceOutput.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities31SpatialTemplatePreferenceOutputV10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities31SpatialTemplatePreferenceOutputV10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.CodingKeys and conformance SpatialTemplatePreferenceOutput.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v20 = 0;
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v11 = v17;
    v12 = BYTE8(v17);
    v20 = 1;
    lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.SpatialTemplate and conformance SpatialTemplatePreferenceOutput.SpatialTemplate();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    v13 = v18;
    v14 = v19;
    v15 = v17;
    *a2 = v11;
    *(a2 + 8) = v12;
    *(a2 + 16) = v15;
    *(a2 + 32) = v13;
    *(a2 + 40) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SpatialTemplatePreferenceOutput()
{
  v1 = *(v0 + 8);
  v2 = v0[4];
  v3 = *(v0 + 40);
  v6 = *v0;
  v7 = v1;
  v8 = *(v0 + 1);
  v9 = v2;
  v10 = v3;
  Hasher.init(_seed:)();
  SpatialTemplatePreferenceOutput.hash(into:)(v5);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SpatialTemplatePreferenceOutput()
{
  v1 = *(v0 + 8);
  v2 = v0[4];
  v3 = *(v0 + 40);
  v6 = *v0;
  v7 = v1;
  v8 = *(v0 + 1);
  v9 = v2;
  v10 = v3;
  Hasher.init(_seed:)();
  SpatialTemplatePreferenceOutput.hash(into:)(v5);
  return Hasher._finalize()();
}

uint64_t AbsoluteSpatialTemplateOutput.defaultInitiatorRole.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4)
  {
    return 1;
  }

  v39 = v2;
  v40 = v3;
  if (a1 == a2)
  {
    return 1;
  }

  v7 = 0;
  for (i = v4 - 1; ; --i)
  {
    v9 = *(a1 + v7 + 80);
    v10 = *(a1 + v7 + 64);
    v11 = *(a1 + v7 + 72);
    v12 = *(a2 + v7 + 64);
    v13 = *(a2 + v7 + 72);
    v14 = *(a2 + v7 + 80);
    v15 = *(a2 + v7 + 128);
    v37 = *(a1 + v7 + 128);
    v38 = v15;
    v17 = *(a1 + v7 + 32);
    v16 = *(a1 + v7 + 48);
    v31 = v10;
    v32 = v11;
    v30[0] = v17;
    v30[1] = v16;
    v33 = v9;
    v18 = *(a1 + v7 + 112);
    v34 = *(a1 + v7 + 96);
    v35 = v18;
    v36 = v37;
    v20 = *(a2 + v7 + 32);
    v19 = *(a2 + v7 + 48);
    v24 = v12;
    v25 = v13;
    v23[0] = v20;
    v23[1] = v19;
    v26 = v14;
    v21 = *(a2 + v7 + 112);
    v27 = *(a2 + v7 + 96);
    v28 = v21;
    v29 = v15;
    if ((specialized static AbsoluteSpatialTemplateOutput.Element.Seat.== infix(_:_:)(v30, v23) & 1) == 0)
    {
      break;
    }

    if (!i)
    {
      return 1;
    }

    v7 += 112;
  }

  return 0;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance AbsoluteSpatialTemplateOutput.CodingKeys()
{
  if (*v0)
  {
    result = 0xD000000000000014;
  }

  else
  {
    result = 0x73746E656D656C65;
  }

  *v0;
  return result;
}