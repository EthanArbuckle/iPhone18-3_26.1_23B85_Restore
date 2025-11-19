uint64_t protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return GroupSession.downloadAttachment(_:)(a1, a2);
}

uint64_t GroupSession.downloadAttachment(_:)(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  v5 = type metadata accessor for URLResourceValues();
  v3[18] = v5;
  v6 = *(v5 - 8);
  v3[19] = v6;
  v7 = *(v6 + 64) + 15;
  v3[20] = swift_task_alloc();
  v8 = type metadata accessor for URL();
  v3[21] = v8;
  v9 = *(v8 - 8);
  v3[22] = v9;
  v10 = *(v9 + 64) + 15;
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v11 = type metadata accessor for Date();
  v3[25] = v11;
  v12 = *(v11 - 8);
  v3[26] = v12;
  v13 = *(v12 + 64) + 15;
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSg04fileB0_Sd8sentTimetMd, &_s10Foundation3URLVSg04fileB0_Sd8sentTimetMR);
  v3[29] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v3[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](GroupSession.downloadAttachment(_:), 0, 0);
}

uint64_t GroupSession.downloadAttachment(_:)()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  v3 = *(v0 + 128);
  v4 = *(*(v0 + 232) + 48);
  *(v0 + 272) = v4;
  URL.init(string:)();
  *(v1 + v4) = 0;
  static Date.now.getter();
  v5 = *(v3 + direct field offset for GroupSession.linkManager);
  v6 = swift_task_alloc();
  *(v0 + 248) = v6;
  *v6 = v0;
  v6[1] = GroupSession.downloadAttachment(_:);
  v7 = *(v0 + 192);
  v8 = *(v0 + 120);

  return LinkManager.fetchAttachment(attachmentID:)(v7, v8);
}

{
  v1 = *(v0 + 264);
  v2 = *(v0 + 272);
  v3 = *(v0 + 240);
  v4 = *(v0 + 216);
  v5 = *(v0 + 224);
  v6 = *(v0 + 192);
  v7 = *(v0 + 168);
  v8 = *(v0 + 176);
  outlined destroy of NSObject?(v3, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v8 + 32))(v3, v6, v7);
  (*(v8 + 56))(v3, 0, 1, v7);
  *(v3 + v2) = v1;
  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  Date.timeIntervalSince1970.getter();
  v10 = v9;
  Date.timeIntervalSince1970.getter();
  v12 = v10 - v11;
  if ((*(v8 + 48))(v3, 1, v7))
  {
    v13 = *(v0 + 224);
    v14 = *(v0 + 200);
    v15 = *(*(v0 + 208) + 8);
    v15(*(v0 + 216), v14);
    v15(v13, v14);
LABEL_3:
    v16 = 0;
    goto LABEL_4;
  }

  v28 = *(v0 + 256);
  v29 = *(v0 + 160);
  (*(*(v0 + 176) + 16))(*(v0 + 184), *(v0 + 240), *(v0 + 168));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo16NSURLResourceKeyaGMd, &_ss23_ContiguousArrayStorageCySo16NSURLResourceKeyaGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AF00CA60;
  v31 = *MEMORY[0x1E695DB50];
  *(inited + 32) = *MEMORY[0x1E695DB50];
  v32 = v31;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo16NSURLResourceKeya_Tt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of Participant(inited + 32, type metadata accessor for NSURLResourceKey);
  URL.resourceValues(forKeys:)();
  v33 = v28;
  v35 = *(v0 + 216);
  v34 = *(v0 + 224);
  v36 = *(v0 + 200);
  v37 = *(v0 + 208);
  v38 = *(v0 + 176);
  v39 = *(v0 + 184);
  v40 = *(v0 + 168);
  if (!v33)
  {
    v70 = *(v0 + 216);
    v72 = *(v0 + 224);
    v59 = *(v0 + 152);
    v60 = *(v0 + 160);
    v68 = *(v0 + 144);
    (*(v38 + 8))(v39, v40);

    v61 = URLResourceValues.fileSize.getter();
    v63 = v62;
    (*(v59 + 8))(v60, v68);
    v64 = *(v37 + 8);
    v64(v70, v36);
    v64(v72, v36);
    if ((v63 & 1) == 0)
    {
      v65 = *(v0 + 128);
      v66 = direct field offset for GroupSession.attachmentDownloadBytes;
      swift_beginAccess();
      *(v65 + v66) = *(v65 + v66) + v61;
      v67 = direct field offset for GroupSession.attachmentDownloadTime;
      swift_beginAccess();
      v16 = 0;
      *(v65 + v67) = v12 + *(v65 + v67);
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  (*(v38 + 8))(v39, v40);
  v41 = *(v37 + 8);
  v41(v35, v36);
  v41(v34, v36);
  *(v0 + 104) = v33;
  v42 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if ((swift_dynamicCast() & 1) == 0 || *(v0 + 276) != 1)
  {

    goto LABEL_15;
  }

  v16 = 1;
LABEL_4:
  v17 = *(v0 + 128);
  v18 = objc_allocWithZone(type metadata accessor for AttachmentDataReport());
  v19 = AttachmentDataReport.init(isUpload:assetTotalSize:isServerBlocked:endToEndAttachmentLatency:loadTime:)();
  GroupSession.logAttachmentEvent(report:reportEvent:)(v19, 0xD000000000000019, 0x80000001AF01A690);
  if (v16)
  {
    v20 = *(v0 + 128);
    lazy protocol witness table accessor for type GroupSessionErrors and conformance GroupSessionErrors();
    v21 = swift_allocError();
    *v22 = 10;
    GroupSession.invalidate(reason:)(v21);

    swift_allocError();
    *v23 = 10;
  }

  else
  {
    v24 = *(v0 + 168);
    v25 = *(v0 + 176);
    v26 = *(v0 + 136);
    outlined init with copy of URL?(*(v0 + 240), v26, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if ((*(v25 + 48))(v26, 1, v24) != 1)
    {
      v43 = *(v0 + 240);
      v45 = *(v0 + 216);
      v44 = *(v0 + 224);
      v46 = *(v0 + 192);
      v48 = *(v0 + 168);
      v47 = *(v0 + 176);
      v69 = *(v0 + 184);
      v71 = *(v0 + 160);
      v49 = *(v0 + 136);
      v50 = *(v0 + 112);

      (*(v47 + 32))(v50, v49, v48);
      outlined destroy of NSObject?(v43, &_s10Foundation3URLVSg04fileB0_Sd8sentTimetMd, &_s10Foundation3URLVSg04fileB0_Sd8sentTimetMR);

      v51 = *(v0 + 8);
      goto LABEL_16;
    }

    outlined destroy of NSObject?(*(v0 + 136), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    lazy protocol witness table accessor for type GroupSessionErrors and conformance GroupSessionErrors();
    swift_allocError();
    *v27 = 11;
  }

  swift_willThrow();

LABEL_15:
  v53 = *(v0 + 216);
  v52 = *(v0 + 224);
  v55 = *(v0 + 184);
  v54 = *(v0 + 192);
  v56 = *(v0 + 160);
  v57 = *(v0 + 136);
  outlined destroy of NSObject?(*(v0 + 240), &_s10Foundation3URLVSg04fileB0_Sd8sentTimetMd, &_s10Foundation3URLVSg04fileB0_Sd8sentTimetMR);

  v51 = *(v0 + 8);
LABEL_16:

  return v51();
}

{
  (*(*(v0 + 208) + 8))(*(v0 + 224), *(v0 + 200));
  v1 = *(v0 + 256);
  *(v0 + 104) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast() && *(v0 + 276) == 1)
  {

    v3 = *(v0 + 128);
    v4 = objc_allocWithZone(type metadata accessor for AttachmentDataReport());
    v5 = AttachmentDataReport.init(isUpload:assetTotalSize:isServerBlocked:endToEndAttachmentLatency:loadTime:)();
    GroupSession.logAttachmentEvent(report:reportEvent:)(v5, 0xD000000000000019, 0x80000001AF01A690);
    v6 = *(v0 + 128);
    lazy protocol witness table accessor for type GroupSessionErrors and conformance GroupSessionErrors();
    v7 = swift_allocError();
    *v8 = 10;
    GroupSession.invalidate(reason:)(v7);

    swift_allocError();
    *v9 = 10;
    swift_willThrow();
  }

  else
  {
  }

  v11 = *(v0 + 216);
  v10 = *(v0 + 224);
  v13 = *(v0 + 184);
  v12 = *(v0 + 192);
  v14 = *(v0 + 160);
  v15 = *(v0 + 136);
  outlined destroy of NSObject?(*(v0 + 240), &_s10Foundation3URLVSg04fileB0_Sd8sentTimetMd, &_s10Foundation3URLVSg04fileB0_Sd8sentTimetMR);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t GroupSession.downloadAttachment(_:)(double a1)
{
  v4 = *v2;
  v5 = *(*v2 + 248);
  v8 = *v2;
  *(*v2 + 256) = v1;

  if (v1)
  {
    v6 = GroupSession.downloadAttachment(_:);
  }

  else
  {
    *(v4 + 264) = a1;
    v6 = GroupSession.downloadAttachment(_:);
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t protocol witness for AnyTransportSession.fetchMetadata(_:) in conformance GroupSession<A>(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for AnyTransportSession.fetchMetadata(_:) in conformance GroupSession<A>;

  return GroupSession.fetchMetadata(_:)(a1);
}

uint64_t protocol witness for AnyTransportSession.fetchMetadata(_:) in conformance GroupSession<A>(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 16);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t GroupSession.fetchMetadata(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](GroupSession.fetchMetadata(_:), 0, 0);
}

uint64_t GroupSession.fetchMetadata(_:)()
{
  v1 = *(v0[3] + direct field offset for GroupSession.linkManager);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = GroupSession.fetchMetadata(_:);
  v3 = v0[2];

  return LinkManager.fetchAttachmentMetadata(attachmentID:)(v3);
}

uint64_t GroupSession.fetchMetadata(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 32);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return GroupSession.removeAttachment(id:)(a1);
}

uint64_t protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t GroupSession.removeAttachment(id:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](GroupSession.removeAttachment(id:), 0, 0);
}

uint64_t GroupSession.removeAttachment(id:)()
{
  v23 = v0;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Log.default);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[5];
  v9 = v0[6];
  v11 = v0[4];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136315138;
    lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v22);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_1AEE80000, v6, v7, "Request to remove attachment: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x1B2715BA0](v13, -1, -1);
    MEMORY[0x1B2715BA0](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = *(v0[3] + direct field offset for GroupSession.linkManager);
  v19 = swift_task_alloc();
  v0[7] = v19;
  *v19 = v0;
  v19[1] = GroupSession.removeAttachment(id:);
  v20 = v0[2];

  return LinkManager.removeAttachment(id:)(v20);
}

{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t _s15GroupActivities0A7SessionC10TimestampsV08activityC0AEyx_GSo022TUConversationActivityC0C_tcfCAA03AnyaG0V_Tt1g5@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v31 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v31 - v17;
  v19 = [a1 timestamp];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v20 = [a1 localCreationTimestamp];
  if (v20)
  {
    v21 = v20;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v22 = v8;
    v23 = a2;
    v24 = *(v12 + 32);
    v24(v10, v16, v11);
    v32 = *(v12 + 56);
    v32(v10, 0, 1, v11);
    v24(v18, v10, v11);
    a2 = v23;
    v8 = v22;
  }

  else
  {
    v32 = *(v12 + 56);
    v32(v10, 1, 1, v11);
    v25 = [a1 timestamp];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    if ((*(v12 + 48))(v10, 1, v11) != 1)
    {
      outlined destroy of NSObject?(v10, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionC10TimestampsVyAA03AnyA8ActivityV_GMd, &_s15GroupActivities0A7SessionC10TimestampsVyAA03AnyA8ActivityV_GMR);
  (*(v12 + 32))(a2 + *(v26 + 36), v18, v11);
  v27 = [a1 permittedJoinTimestamp];
  if (v27)
  {
    v28 = v27;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v29 = 0;
    a1 = v28;
  }

  else
  {
    v29 = 1;
  }

  v32(v8, v29, 1, v11);
  return outlined init with take of Date?(v8, a2 + *(v26 + 40), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

uint64_t GroupSession.Timestamps.init(activitySession:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a2;
  v33 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v32 - v11;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v32 - v19;
  v21 = [a1 timestamp];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v22 = [a1 localCreationTimestamp];
  if (v22)
  {
    v23 = v22;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v24 = *(v14 + 32);
    v24(v12, v18, v13);
    v25 = *(v14 + 56);
    v25(v12, 0, 1, v13);
    v24(v20, v12, v13);
  }

  else
  {
    v25 = *(v14 + 56);
    v25(v12, 1, 1, v13);
    v26 = [a1 timestamp];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    if ((*(v14 + 48))(v12, 1, v13) != 1)
    {
      outlined destroy of NSObject?(v12, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  v27 = type metadata accessor for GroupSession.Timestamps();
  (*(v14 + 32))(a4 + *(v27 + 36), v20, v13);
  v28 = [a1 permittedJoinTimestamp];
  if (v28)
  {
    v29 = v28;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v30 = 0;
    a1 = v29;
  }

  else
  {
    v30 = 1;
  }

  v25(v10, v30, 1, v13);
  return outlined init with take of Date?(v10, a4 + *(v27 + 40), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

uint64_t GroupSession.__allocating_init(activitySession:publishQueue:)(uint64_t *a1, void *a2)
{
  v2 = specialized GroupSession.__allocating_init(activitySession:publishQueue:)(a1, a2);

  return v2;
}

uint64_t GroupSession.Timestamps.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 32);
  v5(a2, a1, v4);
  v6 = type metadata accessor for GroupSession.Timestamps();
  v7 = *(v6 + 36);
  v8 = type metadata accessor for GroupSession.Timestamps();
  v5(a2 + *(v8 + 36), a1 + v7, v4);
  return outlined init with take of Date?(a1 + *(v6 + 40), a2 + *(v8 + 40), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

uint64_t GroupSession.sendResource(atURL:to:metadata:completion:)(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v76 = a4;
  v77 = a6;
  v74 = a5;
  v75 = a3;
  v73 = *v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v68 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v66 = &v63 - v14;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v78 = &v63 - v22;
  v69 = v23;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v63 - v24;
  v72 = *a2;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, static Log.default);
  v27 = *(v16 + 16);
  v27(v25, a1, v15);

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.info.getter();

  v67 = v29;
  v30 = os_log_type_enabled(v28, v29);
  v70 = v27;
  v71 = a1;
  if (v30)
  {
    v65 = v28;
    v31 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    aBlock[0] = v64;
    *v31 = 136315394;
    v32 = v66;
    v27(v66, v25, v15);
    (*(v16 + 56))(v32, 0, 1, v15);
    v33 = v68;
    outlined init with copy of URL?(v32, v68, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if ((*(v16 + 48))(v33, 1, v15) == 1)
    {
      v34 = 0xE300000000000000;
      v35 = 7104878;
    }

    else
    {
      v37 = v33;
      v38 = v78;
      (*(v16 + 32))(v78, v37, v15);
      v27(v20, v38, v15);
      v35 = String.init<A>(reflecting:)();
      v34 = v39;
      (*(v16 + 8))(v38, v15);
    }

    outlined destroy of NSObject?(v32, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    (*(v16 + 8))(v25, v15);
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v34, aBlock);

    *(v31 + 4) = v40;
    *(v31 + 12) = 2080;
    v80[0] = v7;
    v36 = v73;
    v41 = >> prefix<A>(_:)(v80, v73);
    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, aBlock);

    *(v31 + 14) = v43;
    v44 = v65;
    _os_log_impl(&dword_1AEE80000, v65, v67, "Request to send resource at URL %s over %s ", v31, 0x16u);
    v45 = v64;
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v45, -1, -1);
    MEMORY[0x1B2715BA0](v31, -1, -1);
  }

  else
  {

    (*(v16 + 8))(v25, v15);
    v36 = v73;
  }

  v46 = *(*v7 + 288);
  swift_beginAccess();
  v47 = *(v7 + v46);
  v73 = XPCClient.queue.getter();

  v48 = v78;
  v70(v78, v71, v15);
  v49 = (*(v16 + 80) + 40) & ~*(v16 + 80);
  v50 = (v69 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = (v50 + 15) & 0xFFFFFFFFFFFFFFF8;
  v52 = (v51 + 23) & 0xFFFFFFFFFFFFFFF8;
  v53 = swift_allocObject();
  *(v53 + 2) = v36[10];
  *(v53 + 3) = v36[11];
  *(v53 + 4) = v7;
  (*(v16 + 32))(&v53[v49], v48, v15);
  *&v53[v50] = v72;
  v54 = &v53[v51];
  v56 = v75;
  v55 = v76;
  *v54 = v75;
  v54[1] = v55;
  v57 = &v53[v52];
  v58 = v77;
  *v57 = v74;
  *(v57 + 1) = v58;
  v59 = swift_allocObject();
  *(v59 + 16) = partial apply for closure #1 in GroupSession.sendResource(atURL:to:metadata:completion:);
  *(v59 + 24) = v53;
  aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v59;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_211;
  v60 = _Block_copy(aBlock);

  outlined copy of Data._Representation(v56, v55);

  v61 = v73;
  dispatch_sync(v73, v60);

  _Block_release(v60);
  LOBYTE(v61) = swift_isEscapingClosureAtFileLocation();

  if (v61)
  {
    __break(1u);
  }

  return result;
}

void closure #1 in GroupSession.sendResource(atURL:to:metadata:completion:)(uint64_t a1)
{
  v2 = *(*a1 + 288);
  swift_beginAccess();
  v3 = *(a1 + v2);
  XPCClient.withHost(body:errorHandler:)();
}

void closure #1 in closure #1 in GroupSession.sendResource(atURL:to:metadata:completion:)(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v54 = a5;
  v15 = type metadata accessor for Participant();
  v53 = *(v15 - 8);
  v16 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = *a1;
  v19 = objc_allocWithZone(MEMORY[0x1E69D8CB8]);
  URL._bridgeToObjectiveC()(v20);
  v22 = v21;
  v23 = [v19 initWithURL:v21 withExtensionType:0];

  if (a3)
  {
    v24 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy15GroupActivities11ParticipantVG_s6UInt64Vs5NeverOTg504_s15d111Activities0A7SessionC12sendResource5atURL2to8metadata10completiony10Foundation0G0V_AA12ParticipantsOAI4DataVys5c52_pSgctFyyXEfU_y14CopresenceCore08ActivityC7XPCHost_py4U_s6g5VAA11F7VXEfU0_Tf1cn_n(a3);
    _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCs6UInt64V_SayAEGTt0g5Tf4g_n(v24);

    v25.super.isa = Set._bridgeToObjectiveC()().super.isa;

    v26.super.isa = Data._bridgeToObjectiveC()().super.isa;
    v59 = a7;
    v60 = a8;
    aBlock = MEMORY[0x1E69E9820];
    v56 = 1107296256;
    v57 = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
    v58 = &block_descriptor_436;
    v27 = _Block_copy(&aBlock);

    [v61 sendResourceAtURL:v23 to:v25.super.isa metadata:v26.super.isa completion:v27];
LABEL_20:

    _Block_release(v27);
  }

  else
  {
    v48 = a7;
    v49 = a6;
    v50 = v23;
    v51 = a8;
    v28 = a4;
    v29 = GroupSession.activeParticipants.getter();
    v30 = v29;
    v31 = v29 + 56;
    v32 = 1 << *(v29 + 32);
    v33 = -1;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    v34 = v33 & *(v29 + 56);
    v35 = (v32 + 63) >> 6;

    v36 = 0;
    v52 = MEMORY[0x1E69E7CC0];
    v37 = v53;
    while (v34)
    {
LABEL_11:
      v39 = v37;
      outlined init with copy of Participant(*(v30 + 48) + *(v37 + 72) * (__clz(__rbit64(v34)) | (v36 << 6)), v18, type metadata accessor for Participant);
      closure #1 in closure #1 in closure #1 in GroupSession.sendResource(atURL:to:metadata:completion:)(v18, v28, &aBlock);
      if (v8)
      {
        goto LABEL_22;
      }

      v34 &= v34 - 1;
      outlined destroy of Participant(v18, type metadata accessor for Participant);
      v37 = v39;
      if ((v56 & 1) == 0)
      {
        v53 = aBlock;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v52 + 2) + 1, 1, v52, &_ss23_ContiguousArrayStorageCys6UInt64VGMd, &_ss23_ContiguousArrayStorageCys6UInt64VGMR);
        }

        v41 = *(v52 + 2);
        v40 = *(v52 + 3);
        v42 = v41 + 1;
        if (v41 >= v40 >> 1)
        {
          v46 = *(v52 + 2);
          v47 = v41 + 1;
          v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1, v52, &_ss23_ContiguousArrayStorageCys6UInt64VGMd, &_ss23_ContiguousArrayStorageCys6UInt64VGMR);
          v41 = v46;
          v42 = v47;
          v37 = v39;
          v52 = v44;
        }

        else
        {
          v37 = v39;
        }

        v43 = v52;
        *(v52 + 2) = v42;
        *&v43[8 * v41 + 32] = v53;
      }
    }

    while (1)
    {
      v38 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v38 >= v35)
      {

        _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCs6UInt64V_SayAEGTt0g5Tf4g_n(v52);

        v25.super.isa = Set._bridgeToObjectiveC()().super.isa;

        v26.super.isa = Data._bridgeToObjectiveC()().super.isa;
        v59 = v48;
        v60 = v51;
        aBlock = MEMORY[0x1E69E9820];
        v56 = 1107296256;
        v57 = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
        v58 = &block_descriptor_439;
        v27 = _Block_copy(&aBlock);

        v23 = v50;
        [v61 sendResourceAtURL:v50 to:v25.super.isa metadata:v26.super.isa completion:v27];
        goto LABEL_20;
      }

      v34 = *(v31 + 8 * v38);
      ++v36;
      if (v34)
      {
        v36 = v38;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_22:

    outlined destroy of Participant(v18, type metadata accessor for Participant);

    __break(1u);
  }
}

uint64_t closure #1 in closure #1 in closure #1 in GroupSession.sendResource(atURL:to:metadata:completion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Participant();
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + *(v7 + 32));
  outlined init with copy of Participant(*(a2 + direct field offset for GroupSession.linkManager) + OBJC_IVAR____TtC15GroupActivities11LinkManager_localParticipant, v10, type metadata accessor for Participant);
  v12 = *&v10[*(v7 + 32)];
  result = outlined destroy of Participant(v10, type metadata accessor for Participant);
  if (v11 == v12)
  {
    v14 = 0;
  }

  else
  {
    v14 = v11;
  }

  *a3 = v14;
  *(a3 + 8) = v11 == v12;
  return result;
}

uint64_t closure #1 in GroupSession.uploadAttachment(id:attachment:developerMetadata:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v20 = a5;
  v8 = *a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5Error_pGMd, &_sScCySbs5Error_pGMR);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - v12;
  (*(v10 + 16))(&v19 - v12, a1, v9);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v14, v13, v9);
  v16 = *(v8 + 80);
  v17 = *(v8 + 88);
  default argument 1 of GroupSession.sendResource(atURL:to:metadata:completion:)(&v22);
  v21 = v22;
  GroupSession.sendResource(atURL:to:metadata:completion:)(a3, &v21, a4, v20, partial apply for closure #1 in closure #1 in GroupSession.uploadAttachment(id:attachment:developerMetadata:), v15);
}

uint64_t closure #1 in closure #1 in GroupSession.uploadAttachment(id:attachment:developerMetadata:)(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5Error_pGMd, &_sScCySbs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5Error_pGMd, &_sScCySbs5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

Swift::Void __swiftcall GroupSession.logAttachmentSessionReport()()
{
  v1 = v0;
  v2 = *((*((*MEMORY[0x1E69E7D40] & **(v0 + direct field offset for GroupSession.linkManager)) + 0x130))() + 16);

  v3 = direct field offset for GroupSession.attachmentDownloadBytes;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = direct field offset for GroupSession.attachmentUploadBytes;
  swift_beginAccess();
  v6 = *(v1 + v5);
  v7 = direct field offset for GroupSession.attachmentDownloadTime;
  swift_beginAccess();
  v8 = *(v1 + v7);
  v9 = direct field offset for GroupSession.attachmentUploadTime;
  swift_beginAccess();
  v10 = v6 / *(v1 + v9);
  v11 = objc_allocWithZone(type metadata accessor for AttachmentDataReport());
  v12 = AttachmentDataReport.init(totalAttachments:totalDownloadBytes:totalUploadBytes:downloadSpeed:uploadSpeed:)();
  GroupSession.logAttachmentEvent(report:reportEvent:)(v12, 0xD000000000000023, 0x80000001AF01A6B0);
}

void specialized closure #1 in GroupSession.logAttachmentEvent(report:reportEvent:)(uint64_t a1)
{
  v2 = *(*a1 + 288);
  swift_beginAccess();
  v3 = *(a1 + v2);
  XPCClient.withHost(body:errorHandler:)();
}

void closure #1 in closure #1 in GroupSession.logAttachmentEvent(report:reportEvent:)(void **a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = *a1;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.default);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v14 = v12;
    *v11 = 136315138;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v14);
    _os_log_impl(&dword_1AEE80000, v9, v10, "GroupSession: Logging attachment event: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x1B2715BA0](v12, -1, -1);
    MEMORY[0x1B2715BA0](v11, -1, -1);
  }

  v13 = MEMORY[0x1B2714130](a2, a3);
  [v7 logAttachmentEventWithReport:a4 reportEvent:v13];
}

uint64_t specialized GroupSession.cleanUpPlaybackSyncer()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v1 - 8);
  v2 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v5 = *(v13 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + *(*v0 + 296));
  v9 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = partial apply for specialized closure #1 in GroupSession.cleanUpPlaybackSyncer();
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_504;
  v10 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v15 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27147B0](0, v8, v4, v10);
  _Block_release(v10);
  (*(v14 + 8))(v4, v1);
  (*(v5 + 8))(v8, v13);
}

Swift::Void __swiftcall GroupSession.cleanUpPlaybackSyncer()()
{
  v1 = *v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v15 = *(v2 - 8);
  v3 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v6 = *(v14 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v0 + v1[37]);
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  v11[2] = v1[10];
  v11[3] = v1[11];
  v11[4] = v10;
  aBlock[4] = partial apply for closure #1 in GroupSession.cleanUpPlaybackSyncer();
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_218;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v16 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27147B0](0, v9, v5, v12);
  _Block_release(v12);
  (*(v15 + 8))(v5, v2);
  (*(v6 + 8))(v9, v14);
}

void closure #1 in GroupSession.invalidateIfWaiting()()
{
  GroupSession.internalState.getter();
  v0 = v6;
  v4 = 0;
  v5 = v6;
  v1 = static GroupSession.State.== infix(_:_:)(&v5, &v4);
  outlined consume of GroupSession<A>.State<A>(v0);
  if (v1)
  {
    lazy protocol witness table accessor for type GroupSessionErrors and conformance GroupSessionErrors();
    v2 = swift_allocError();
    *v3 = 9;
    GroupSession.invalidate(reason:)(v2);
  }
}

uint64_t GroupSession.registerPlaybackSyncerLink(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v41 - v7;
  v9 = type metadata accessor for NSNotificationCenter.Publisher();
  v10 = *(v9 - 8);
  v43 = v9;
  v44 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11SubscribeOnVy_So20NSNotificationCenterC10FoundationE9PublisherVSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO11SubscribeOnVy_So20NSNotificationCenterC10FoundationE9PublisherVSo17OS_dispatch_queueCGMR);
  v47 = *(v14 - 8);
  v48 = v14;
  v15 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v46 = &v41 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVyShy15GroupActivities11ParticipantVG_GMd, &_s7Combine9PublishedV9PublisherVyShy15GroupActivities11ParticipantVG_GMR);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v41 - v20;

  specialized GroupSession.playbackSyncerLink.setter(v22);
  v45 = a1;

  if (MEMORY[0x1E69E7CC0] >> 62 && __CocoaSet.count.getter())
  {
    v23 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v23 = MEMORY[0x1E69E7CD0];
  }

  v24 = *(*v2 + 312);
  swift_beginAccess();
  v25 = *(v2 + v24);
  *(v2 + v24) = v23;

  GroupSession.$activeParticipants.getter();
  v26 = swift_allocObject();
  swift_weakInit();
  v27 = swift_allocObject();
  v42 = *(v4 + 80);
  v27[2] = v42;
  v41 = *(v4 + 88);
  v27[3] = v41;
  v27[4] = v26;
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Published<Set<Participant>>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVyShy15GroupActivities11ParticipantVG_GMd, &_s7Combine9PublishedV9PublisherVyShy15GroupActivities11ParticipantVG_GMR);
  Publisher<>.sink(receiveValue:)();

  (*(v18 + 8))(v21, v17);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v28 = [objc_opt_self() defaultCenter];
  v29 = *MEMORY[0x1E69879A0];
  NSNotificationCenter.publisher(for:object:)();

  v49 = *(v2 + *(*v2 + 296));
  v30 = v49;
  v31 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v31 - 8) + 56))(v8, 1, 1, v31);
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher, MEMORY[0x1E6969F20]);
  lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue();
  v32 = v30;
  v33 = v46;
  v34 = v43;
  Publisher.subscribe<A>(on:options:)();
  outlined destroy of NSObject?(v8, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

  (*(v44 + 8))(v13, v34);
  v35 = swift_allocObject();
  swift_weakInit();
  v36 = swift_allocObject();
  v37 = v41;
  v36[2] = v42;
  v36[3] = v37;
  v36[4] = v35;
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.SubscribeOn<NSNotificationCenter.Publisher, OS_dispatch_queue> and conformance Publishers.SubscribeOn<A, B>, &_s7Combine10PublishersO11SubscribeOnVy_So20NSNotificationCenterC10FoundationE9PublisherVSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO11SubscribeOnVy_So20NSNotificationCenterC10FoundationE9PublisherVSo17OS_dispatch_queueCGMR);
  v38 = v48;
  Publisher<>.sink(receiveValue:)();

  (*(v47 + 8))(v33, v38);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return (*(*v45 + 400))(v39);
}

uint64_t closure #1 in GroupSession.registerPlaybackSyncerLink(_:)(uint64_t *a1)
{
  v2 = type metadata accessor for Participant();
  v45 = *(v2 - 8);
  v3 = *(v45 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v44 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v42 - v6;
  v8 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    if (one-time initialization token for playback == -1)
    {
      goto LABEL_3;
    }

    while (1)
    {
      swift_once();
LABEL_3:
      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, static Logger.playback);
      swift_retain_n();

      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v47[0] = v46;
        *v14 = 136315394;
        lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type Participant and conformance Participant, type metadata accessor for Participant);
        v15 = Set.description.getter();
        v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v47);

        *(v14 + 4) = v17;
        *(v14 + 12) = 2080;
        GroupSession.activeParticipants.getter();

        v18 = Set.description.getter();
        v20 = v19;

        v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, v47);

        *(v14 + 14) = v21;
        _os_log_impl(&dword_1AEE80000, v12, v13, "Active participants changed to latest participants:%s from previous participants:%s", v14, 0x16u);
        v22 = v46;
        swift_arrayDestroy();
        MEMORY[0x1B2715BA0](v22, -1, -1);
        MEMORY[0x1B2715BA0](v14, -1, -1);
      }

      else
      {
      }

      v23 = v44;
      v46 = v10;
      v48 = GroupSession.activeParticipants.getter();
      specialized Set._subtract<A>(_:)(v8);
      v24 = 0;
      v8 = v48;
      v26 = v48 + 56;
      v25 = *(v48 + 56);
      v27 = 1 << *(v48 + 32);
      v28 = -1;
      if (v27 < 64)
      {
        v28 = ~(-1 << v27);
      }

      v29 = v28 & v25;
      v30 = direct field offset for GroupSession.playbackSyncerLink;
      v31 = (v27 + 63) >> 6;
      v43 = direct field offset for GroupSession.playbackSyncerLink;
      if ((v28 & v25) != 0)
      {
        while (2)
        {
          v10 = v24;
LABEL_16:
          v32 = __clz(__rbit64(v29));
          v29 &= v29 - 1;
          outlined init with copy of Participant(*(v8 + 48) + *(v45 + 72) * (v32 | (v10 << 6)), v7, type metadata accessor for Participant);
          outlined init with take of Participant(v7, v23, type metadata accessor for Participant);
          v33 = v46;
          swift_beginAccess();
          v34 = *(v33 + v30);
          if (v34)
          {
            swift_endAccess();
            v35 = *(*v34 + 248);

            v37 = v35(v36);

            if (v37)
            {
              v38 = v8;
              v39 = v7;
              v40 = v44;
              v37(v44);
              v41 = v37;
              v23 = v40;
              v7 = v39;
              v8 = v38;
              v30 = v43;
              outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v41);
            }

            else
            {
              v23 = v44;
            }

            outlined destroy of Participant(v23, type metadata accessor for Participant);
            v24 = v10;
            if (v29)
            {
              continue;
            }
          }

          else
          {
            outlined destroy of Participant(v23, type metadata accessor for Participant);
            swift_endAccess();
            v24 = v10;
            if (v29)
            {
              continue;
            }
          }

          break;
        }
      }

      while (1)
      {
        v10 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        if (v10 >= v31)
        {
        }

        v29 = *(v26 + 8 * v10);
        ++v24;
        if (v29)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t closure #2 in GroupSession.registerPlaybackSyncerLink(_:)(uint64_t a1)
{
  v2 = type metadata accessor for GroupSessionEvent();
  v72 = *(v2 - 8);
  v3 = v72[8];
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A12SessionEventVSgMd, &_s15GroupActivities0A12SessionEventVSgMR);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v73 = &v60 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v60 - v14;
  v16 = type metadata accessor for Notification();
  v74 = *(v16 - 8);
  v17 = v74[8];
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v60 - v21;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v24 = Notification.userInfo.getter();
  if (!v24)
  {
  }

  v71 = v15;
  v25 = specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(v24);

  if (!v25)
  {
  }

  if (!*(v25 + 16) || (v26 = specialized __RawDictionaryStorage.find<A>(_:)(*MEMORY[0x1E6987988]), (v27 & 1) == 0) || (outlined init with copy of Any(*(v25 + 56) + 32 * v26, v76), type metadata accessor for AVPlaybackCoordinatorPlaybackObjectCommand(0), (swift_dynamicCast() & 1) == 0))
  {
  }

  v70 = v75;
  if (one-time initialization token for playback != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  v29 = __swift_project_value_buffer(v28, static Logger.playback);
  v66 = v74[2];
  v67 = v74 + 2;
  v66(v22, a1, v16);
  v68 = v29;
  v30 = Logger.logObject.getter();
  v64 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v30, v64))
  {
    v65 = v30;
    v31 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v76[0] = v62;
    v63 = v31;
    *v31 = 136315138;
    v32 = Notification.userInfo.getter();
    if (v32)
    {
      v75 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd, &_sSDys11AnyHashableVypGMR);
      v61 = String.init<A>(reflecting:)();
      v34 = v33;
    }

    else
    {
      v61 = 7104878;
      v34 = 0xE300000000000000;
    }

    v69 = v74[1];
    v69(v22, v16);
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v34, v76);

    v36 = v63;
    *(v63 + 1) = v35;
    _os_log_impl(&dword_1AEE80000, v65, v64, "Received event, notification: %s", v36, 0xCu);
    v37 = v62;
    __swift_destroy_boxed_opaque_existential_0(v62);
    MEMORY[0x1B2715BA0](v37, -1, -1);
    MEMORY[0x1B2715BA0](v36, -1, -1);
  }

  else
  {

    v69 = v74[1];
    v69(v22, v16);
  }

  v38 = v73;
  if (*(v25 + 16) && (v39 = specialized __RawDictionaryStorage.find<A>(_:)(*MEMORY[0x1E6987990]), (v40 & 1) != 0))
  {
    outlined init with copy of Any(*(v25 + 56) + 32 * v39, v76);
    v41 = type metadata accessor for UUID();
    v42 = v71;
    v43 = swift_dynamicCast();
    v44 = *(*(v41 - 8) + 56);
    v45 = v41;
    v38 = v73;
    v44(v42, v43 ^ 1u, 1, v45);
  }

  else
  {
    v46 = type metadata accessor for UUID();
    (*(*(v46 - 8) + 56))(v71, 1, 1, v46);
  }

  if (*(v25 + 16) && (v47 = specialized __RawDictionaryStorage.find<A>(_:)(*MEMORY[0x1E6987998]), (v48 & 1) != 0))
  {
    outlined init with copy of Any(*(v25 + 56) + 32 * v47, v76);

    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
    if (swift_dynamicCast())
    {
      v49 = v75;
    }

    else
    {
      v49 = 0;
    }
  }

  else
  {

    v49 = 0;
  }

  GroupSession.createPlaybackEvent(originatorUUID:avCommand:rate:)(v71, v70, v49, v38);
  outlined init with copy of URL?(v38, v10, &_s15GroupActivities0A12SessionEventVSgMd, &_s15GroupActivities0A12SessionEventVSgMR);
  if ((v72[6])(v10, 1, v2) == 1)
  {
    v72 = v49;
    outlined destroy of NSObject?(v10, &_s15GroupActivities0A12SessionEventVSgMd, &_s15GroupActivities0A12SessionEventVSgMR);
    v66(v20, a1, v16);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v76[0] = v53;
      *v52 = 136315138;
      v54 = Notification.userInfo.getter();
      if (v54)
      {
        v75 = v54;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd, &_sSDys11AnyHashableVypGMR);
        v55 = String.init<A>(reflecting:)();
        v57 = v56;
      }

      else
      {
        v55 = 7104878;
        v57 = 0xE300000000000000;
      }

      v69(v20, v16);
      v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v57, v76);

      *(v52 + 4) = v59;
      _os_log_impl(&dword_1AEE80000, v50, v51, "Could not create playback event %s", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v53);
      MEMORY[0x1B2715BA0](v53, -1, -1);
      MEMORY[0x1B2715BA0](v52, -1, -1);
    }

    else
    {

      v69(v20, v16);
    }

    v58 = v73;
  }

  else
  {
    outlined init with take of Participant(v10, v5, type metadata accessor for GroupSessionEvent);
    GroupSession.showNotice(_:)(v5);

    outlined destroy of Participant(v5, type metadata accessor for GroupSessionEvent);
    v58 = v38;
  }

  outlined destroy of NSObject?(v58, &_s15GroupActivities0A12SessionEventVSgMd, &_s15GroupActivities0A12SessionEventVSgMR);
  return outlined destroy of NSObject?(v71, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
}

uint64_t specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo55AVPlaybackCoordinatorDidIssueCommandToPlaybackObjectKeyaypGMd, &_ss18_DictionaryStorageCySo55AVPlaybackCoordinatorDidIssueCommandToPlaybackObjectKeyaypGMR);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v8 = 0;
  while (1)
  {
    if (!v4)
    {
      while (1)
      {
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v10 >= v5)
        {

          return v1;
        }

        v4 = *(a1 + 64 + 8 * v10);
        ++v8;
        if (v4)
        {
          v8 = v10;
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_29;
    }

LABEL_15:
    v11 = __clz(__rbit64(v4)) | (v8 << 6);
    outlined init with copy of AnyHashable(*(a1 + 48) + 40 * v11, v32);
    outlined init with copy of Any(*(a1 + 56) + 32 * v11, v33 + 8);
    v30[0] = v33[0];
    v30[1] = v33[1];
    v31 = v34;
    v29[0] = v32[0];
    v29[1] = v32[1];
    outlined init with copy of AnyHashable(v29, v26);
    type metadata accessor for AVPlaybackCoordinatorDidIssueCommandToPlaybackObjectKey(0);
    if (!swift_dynamicCast())
    {
      break;
    }

    v12 = v25;
    outlined init with copy of Any(v30 + 8, v27 + 8);
    outlined destroy of NSObject?(v29, &_ss11AnyHashableV3key_yp5valuetMd, &_ss11AnyHashableV3key_yp5valuetMR);
    outlined init with take of Any((v27 + 8), v24);
    v13 = v12;
    outlined init with take of Any(v24, v28);
    outlined init with take of Any(v28, v27);
    v14 = *(v1 + 40);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v15 = Hasher._finalize()();

    v16 = -1 << *(v1 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v6 + 8 * (v17 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v16) >> 6;
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        v22 = *(v6 + 8 * v18);
        if (v22 != -1)
        {
          v9 = __clz(__rbit64(~v22)) + (v18 << 6);
          goto LABEL_9;
        }
      }

LABEL_29:
      __break(1u);
      return result;
    }

    v9 = __clz(__rbit64((-1 << v17) & ~*(v6 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v4 &= v4 - 1;
    *(*(v1 + 48) + 8 * v9) = v13;
    result = outlined init with take of Any(v27, (*(v1 + 56) + 32 * v9));
    ++*(v1 + 16);
  }

  outlined destroy of NSObject?(v29, &_ss11AnyHashableV3key_yp5valuetMd, &_ss11AnyHashableV3key_yp5valuetMR);

  return 0;
}

uint64_t GroupSession.createPlaybackEvent(originatorUUID:avCommand:rate:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v90 = a4;
  v85 = a2;
  v86 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A12SessionEventVSgMd, &_s15GroupActivities0A12SessionEventVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v87 = v77 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11ParticipantVSgMd, &_s15GroupActivities11ParticipantVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v88 = v77 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v82 = v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v83 = v77 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = v77 - v17;
  v19 = type metadata accessor for UUID();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v80 = v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v81 = v77 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v84 = v77 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v29 = v77 - v28;
  v30 = type metadata accessor for Participant();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v33 = MEMORY[0x1EEE9AC00](v30);
  v35 = v77 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v37 = v77 - v36;
  outlined init with copy of URL?(a1, v18, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v38 = *(v20 + 48);
  if (v38(v18, 1, v19) == 1)
  {
    outlined destroy of NSObject?(v18, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined init with copy of Participant(*(v89 + direct field offset for GroupSession.linkManager) + OBJC_IVAR____TtC15GroupActivities11LinkManager_localParticipant, v37, type metadata accessor for Participant);
    goto LABEL_10;
  }

  v77[2] = v20 + 48;
  v78 = v38;
  v79 = v37;
  v77[0] = *(v20 + 32);
  v77[1] = v20 + 32;
  (v77[0])(v29, v18, v19);
  v39 = GroupSession.activeParticipants.getter();
  MEMORY[0x1EEE9AC00](v39);
  v77[-2] = v29;
  v40 = v88;
  specialized Sequence.first(where:)(partial apply for closure #1 in GroupSession.createPlaybackEvent(originatorUUID:avCommand:rate:), v39, v88);

  if ((*(v31 + 48))(v40, 1, v30) != 1)
  {
    v37 = v79;
    outlined init with take of Participant(v88, v79, type metadata accessor for Participant);
    (*(v20 + 8))(v29, v19);
LABEL_10:
    outlined init with copy of Participant(v37, v35, type metadata accessor for Participant);
    v59 = v86;
    v60 = v86;
    v61 = v85;
    v62 = v87;
    GroupSessionEvent.init(originator:avCommand:rate:)(v35, v61, v59, v87);
    v63 = type metadata accessor for GroupSessionEvent();
    v64 = *(v63 - 8);
    if ((*(v64 + 48))(v62, 1, v63) == 1)
    {
      outlined destroy of NSObject?(v62, &_s15GroupActivities0A12SessionEventVSgMd, &_s15GroupActivities0A12SessionEventVSgMR);
      if (one-time initialization token for playback != -1)
      {
        swift_once();
      }

      v65 = type metadata accessor for Logger();
      __swift_project_value_buffer(v65, static Logger.playback);
      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        *v68 = 0;
        _os_log_impl(&dword_1AEE80000, v66, v67, "AVCF event: Failed to create GroupSession Event from playback notification", v68, 2u);
        MEMORY[0x1B2715BA0](v68, -1, -1);
      }

      outlined destroy of Participant(v37, type metadata accessor for Participant);
      return (*(v64 + 56))(v90, 1, 1, v63);
    }

    else
    {
      outlined destroy of Participant(v37, type metadata accessor for Participant);
      v70 = v62;
      v71 = v90;
      outlined init with take of Participant(v70, v90, type metadata accessor for GroupSessionEvent);
      return (*(v64 + 56))(v71, 0, 1, v63);
    }
  }

  v87 = v29;
  v89 = v19;
  outlined destroy of NSObject?(v88, &_s15GroupActivities11ParticipantVSgMd, &_s15GroupActivities11ParticipantVSgMR);
  if (one-time initialization token for playback != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  __swift_project_value_buffer(v41, static Logger.playback);
  v42 = *(v20 + 16);
  v43 = v84;
  v44 = v87;
  v45 = v89;
  v42(v84, v87, v89);
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();
  v48 = os_log_type_enabled(v46, v47);
  v49 = v78;
  if (v48)
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v52 = v43;
    v53 = v51;
    v91 = v51;
    *v50 = 136315138;
    v54 = v83;
    v42(v83, v52, v45);
    (*(v20 + 56))(v54, 0, 1, v45);
    v55 = v54;
    v56 = v82;
    outlined init with copy of URL?(v55, v82, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (v49(v56, 1, v45) == 1)
    {
      v57 = 0xE300000000000000;
      v58 = 7104878;
    }

    else
    {
      v73 = v81;
      (v77[0])(v81, v56, v45);
      v42(v80, v73, v45);
      v58 = String.init<A>(reflecting:)();
      v57 = v74;
      (*(v20 + 8))(v73, v45);
    }

    outlined destroy of NSObject?(v83, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v72 = *(v20 + 8);
    v72(v84, v45);
    v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v57, &v91);

    *(v50 + 4) = v75;
    v45 = v89;
    _os_log_impl(&dword_1AEE80000, v46, v47, "createPlaybackNoticeEvent: Can't find participant: %s", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v53);
    MEMORY[0x1B2715BA0](v53, -1, -1);
    MEMORY[0x1B2715BA0](v50, -1, -1);

    v44 = v87;
  }

  else
  {

    v72 = *(v20 + 8);
    v72(v43, v45);
  }

  v76 = type metadata accessor for GroupSessionEvent();
  (*(*(v76 - 8) + 56))(v90, 1, 1, v76);
  return (v72)(v44, v45);
}

void closure #1 in variable initialization expression of GroupSession.GroupSessionPlaybackSyncerLink.onSendMessageCompletion(void *a1)
{
  if (a1)
  {
    v2 = a1;
    if (one-time initialization token for playback != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.playback);
    v4 = a1;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v7 = 136315138;
      v9 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v10 = String.init<A>(reflecting:)();
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v13);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_1AEE80000, v5, v6, "Error sending %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x1B2715BA0](v8, -1, -1);
      MEMORY[0x1B2715BA0](v7, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t key path setter for GroupSession.GroupSessionPlaybackSyncerLink.onSendMessageCompletion : <A><A1>GroupSession<A>.GroupSessionPlaybackSyncerLink<A1>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  v6 = *(**a2 + 208);

  return v6(partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Error?) -> (@out ()), v5);
}

uint64_t GroupSession.GroupSessionPlaybackSyncerLink.onSendMessageCompletion.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t GroupSession.GroupSessionPlaybackSyncerLink.onSendMessageCompletion.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t key path getter for GroupSession.GroupSessionPlaybackSyncerLink.receivedMessageHandler : <A><A1>GroupSession<A>.GroupSessionPlaybackSyncerLink<A1>@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*(**a1 + 224))();
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

uint64_t key path setter for GroupSession.GroupSessionPlaybackSyncerLink.receivedMessageHandler : <A><A1>GroupSession<A>.GroupSessionPlaybackSyncerLink<A1>(uint64_t *a1, uint64_t a2)
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

  v7 = *(**a2 + 232);
  outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(v3);
  return v7(v6, v5);
}

uint64_t GroupSession.GroupSessionPlaybackSyncerLink.receivedMessageHandler.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(v1);
  return v1;
}

uint64_t GroupSession.GroupSessionPlaybackSyncerLink.receivedMessageHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v5);
}

uint64_t key path getter for GroupSession.GroupSessionPlaybackSyncerLink.participantLeftHandler : <A><A1>GroupSession<A>.GroupSessionPlaybackSyncerLink<A1>@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*(**a1 + 248))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed UUID) -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for GroupSession.GroupSessionPlaybackSyncerLink.participantLeftHandler : <A><A1>GroupSession<A>.GroupSessionPlaybackSyncerLink<A1>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed UUID) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + 256);
  outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(v3);
  return v7(v6, v5);
}

uint64_t GroupSession.GroupSessionPlaybackSyncerLink.participantLeftHandler.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(v1);
  return v1;
}

uint64_t GroupSession.GroupSessionPlaybackSyncerLink.participantLeftHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 48);
  v6 = *(v2 + 56);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v5);
}

uint64_t GroupSession.GroupSessionPlaybackSyncerLink.connected.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 64) = a1;
  return result;
}

uint64_t GroupSession.id.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t (*GroupSession.GroupSessionPlaybackSyncerLink.groupSession.modify(uint64_t *a1))()
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
  v5 = direct field offset for GroupSession.GroupSessionPlaybackSyncerLink.groupSession;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return GroupSession.GroupSessionPlaybackSyncerLink.groupSession.modify;
}

uint64_t GroupSession.GroupSessionPlaybackSyncerLink.groupSession.getter(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  return swift_weakLoadStrong();
}

uint64_t GroupSession.GroupSessionPlaybackSyncerLink.groupSession.setter(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  swift_beginAccess();
  swift_weakAssign();
}

uint64_t (*GroupSession.GroupSessionPlaybackSyncerLink.messenger.modify(uint64_t *a1))()
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
  v5 = direct field offset for GroupSession.GroupSessionPlaybackSyncerLink.messenger;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return GroupSession.GroupSessionPlaybackSyncerLink.messenger.modify;
}

void GroupSession.GroupSessionPlaybackSyncerLink.groupSession.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32) + *(*a1 + 40);
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

uint64_t GroupSession.GroupSessionPlaybackSyncerLink.shouldRequestCatchup.getter()
{
  v1 = direct field offset for GroupSession.GroupSessionPlaybackSyncerLink.shouldRequestCatchup;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t GroupSession.GroupSessionPlaybackSyncerLink.shouldRequestCatchup.setter(uint64_t a1)
{
  v3 = direct field offset for GroupSession.GroupSessionPlaybackSyncerLink.shouldRequestCatchup;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t GroupSession.GroupSessionPlaybackSyncerLink.__allocating_init(groupSession:messenger:playbackSyncer:)(char *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  GroupSession.GroupSessionPlaybackSyncerLink.init(groupSession:messenger:playbackSyncer:)(a1, a2, a3);
  return v9;
}

void *GroupSession.GroupSessionPlaybackSyncerLink.init(groupSession:messenger:playbackSyncer:)(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v41 = a2;
  v42 = a3;
  v6 = *v3;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Participant();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4[2] = closure #1 in variable initialization expression of GroupSession.GroupSessionPlaybackSyncerLink.onSendMessageCompletion;
  *(v4 + 3) = 0u;
  *(v4 + 5) = 0u;
  v4[7] = 0;
  swift_weakInit();
  swift_weakInit();
  if (MEMORY[0x1E69E7CC0] >> 62 && __CocoaSet.count.getter())
  {
    v16 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CD0];
  }

  *(v4 + direct field offset for GroupSession.GroupSessionPlaybackSyncerLink.cancellables) = v16;
  swift_beginAccess();
  swift_weakAssign();
  v17 = *(v8 + 16);
  v17(v4 + direct field offset for GroupSession.GroupSessionPlaybackSyncerLink.sessionUUID, &a1[direct field offset for GroupSession.id], v7);
  outlined init with copy of Participant(*&a1[direct field offset for GroupSession.linkManager] + OBJC_IVAR____TtC15GroupActivities11LinkManager_localParticipant, v15, type metadata accessor for Participant);
  v17(v11, v15, v7);
  outlined destroy of Participant(v15, type metadata accessor for Participant);
  (*(v8 + 32))(v4 + direct field offset for GroupSession.GroupSessionPlaybackSyncerLink.localUUID, v11, v7);
  swift_beginAccess();
  swift_weakAssign();
  *(v4 + direct field offset for GroupSession.GroupSessionPlaybackSyncerLink.playbackSyncer) = v42;
  *(v4 + 64) = 0;
  v18 = *a1;
  v19 = *(*a1 + 264);
  if ((a1[v19] & 1) != 0 || a1[*(v18 + 272)] == 1)
  {
    v20 = *(v18 + 280);
    swift_beginAccess();
    v21 = a1[v20] ^ 1;
  }

  else
  {
    v21 = 1;
  }

  LOBYTE(v44[0]) = v21 & 1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySbs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySbs5NeverOGMR);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();

  *(v4 + direct field offset for GroupSession.GroupSessionPlaybackSyncerLink.shouldRequestCatchup) = CurrentValueSubject.init(_:)();
  if (one-time initialization token for playback != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static Logger.playback);

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 67109888;
    v29 = direct field offset for GroupSession.GroupSessionPlaybackSyncerLink.shouldRequestCatchup;
    swift_beginAccess();
    v30 = *(v4 + v29);

    CurrentValueSubject.value.getter();

    *(v28 + 4) = LOBYTE(v44[0]);

    v31 = a1[v19];
    *(v28 + 8) = 1024;
    *(v28 + 10) = v31;
    *(v28 + 14) = 1024;
    v32 = *a1;
    *(v28 + 16) = a1[*(*a1 + 272)];
    *(v28 + 20) = 1024;
    v33 = *(v32 + 280);
    swift_beginAccess();
    *(v28 + 22) = a1[v33];

    _os_log_impl(&dword_1AEE80000, v26, v27, "ShouldRequestCatchup:%{BOOL}d isLocallyInitiated:%{BOOL}d isLightweightPrimaryInitiated:%{BOOL}d isFirstJoin:%{BOOL}d", v28, 0x1Au);
    MEMORY[0x1B2715BA0](v28, -1, -1);
  }

  else
  {
  }

  if (swift_weakLoadStrong())
  {
    v34 = GroupSession.catchupNeededPublisher.getter();

    v44[0] = v34;
    v35 = swift_allocObject();
    swift_weakInit();
    v36 = swift_allocObject();
    *(v36 + 16) = *(v6 + 80);
    *(v36 + 24) = *(v6 + 88);
    *(v36 + 40) = *(v6 + 104);
    *(v36 + 48) = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy15GroupActivities11ParticipantVs5NeverOGMd, &_s7Combine12AnyPublisherVy15GroupActivities11ParticipantVs5NeverOGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<Participant, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy15GroupActivities11ParticipantVs5NeverOGMd, &_s7Combine12AnyPublisherVy15GroupActivities11ParticipantVs5NeverOGMR);
    Publisher<>.sink(receiveValue:)();

    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  if (swift_weakLoadStrong())
  {
    _s15GroupActivities0A16SessionMessengerC7receiveyAC13MessageStreamVy_xGxmSeRzSERzlFAA14PlaybackSyncerC0F0V_Tt0g5(v44);

    v43 = v44[0];
    v37 = swift_allocObject();
    swift_weakInit();
    v38 = swift_allocObject();
    *(v38 + 16) = *(v6 + 80);
    *(v38 + 24) = *(v6 + 88);
    *(v38 + 40) = *(v6 + 104);
    *(v38 + 48) = v37;
    v39 = swift_allocObject();
    *(v39 + 16) = partial apply for closure #2 in GroupSession.GroupSessionPlaybackSyncerLink.init(groupSession:messenger:playbackSyncer:);
    *(v39 + 24) = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A16SessionMessengerC13MessageStreamVy_AA14PlaybackSyncerC0E0VGMd, &_s15GroupActivities0A16SessionMessengerC13MessageStreamVy_AA14PlaybackSyncerC0E0VGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type GroupSessionMessenger.MessageStream<PlaybackSyncer.Message> and conformance GroupSessionMessenger.MessageStream<A>, &_s15GroupActivities0A16SessionMessengerC13MessageStreamVy_AA14PlaybackSyncerC0E0VGMd, &_s15GroupActivities0A16SessionMessengerC13MessageStreamVy_AA14PlaybackSyncerC0E0VGMR);
    Publisher<>.sink(receiveValue:)();

    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  return v4;
}

uint64_t closure #1 in GroupSession.GroupSessionPlaybackSyncerLink.init(groupSession:messenger:playbackSyncer:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if ((*(*result + 272))())
    {
      if (one-time initialization token for playback != -1)
      {
        swift_once();
      }

      v2 = type metadata accessor for Logger();
      __swift_project_value_buffer(v2, static Logger.playback);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&dword_1AEE80000, v3, v4, "Processing catchup needed signal", v5, 2u);
        MEMORY[0x1B2715BA0](v5, -1, -1);
      }

      (*(*v1 + 344))();
      CurrentValueSubject.send(_:)();
    }

    else
    {
      if (one-time initialization token for playback != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      __swift_project_value_buffer(v6, static Logger.playback);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_1AEE80000, v7, v8, "Ignoring catchup needed signal since not connected to PlaybackSyncer yet", v9, 2u);
        MEMORY[0x1B2715BA0](v9, -1, -1);
      }
    }
  }

  return result;
}

void _s15GroupActivities0A16SessionMessengerC7receiveyAC13MessageStreamVy_xGxmSeRzSERzlFAA14PlaybackSyncerC0F0V_Tt0g5(void *a1@<X8>)
{
  v18 = a1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_AA12AnyPublisherVy15GroupActivities0G16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AJ0K7ContextVAH15SendReliabilityOts5NeverOGAH14PlaybackSyncerC0K0V_AOtGMd, &_s7Combine10PublishersO10CompactMapVy_AA12AnyPublisherVy15GroupActivities0G16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AJ0K7ContextVAH15SendReliabilityOts5NeverOGAH14PlaybackSyncerC0K0V_AOtGMR);
  v2 = *(v16 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v5 = &v16 - v4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO12HandleEventsVy_AC10CompactMapVy_AA12AnyPublisherVy15GroupActivities0I16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AL0M7ContextVAJ15SendReliabilityOts5NeverOGAJ14PlaybackSyncerC0M0V_AQtGGMd, &_s7Combine10PublishersO12HandleEventsVy_AC10CompactMapVy_AA12AnyPublisherVy15GroupActivities0I16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AL0M7ContextVAJ15SendReliabilityOts5NeverOGAJ14PlaybackSyncerC0M0V_AQtGGMR);
  v6 = *(v17 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v9 = &v16 - v8;
  v19 = _s15GroupActivities0A16SessionMessengerC18MessageStreamStoreO07messageF033_7F6FED5A36F2E7FBC6D91B446E55DE7FLL3for0H4Type7Combine12AnyPublisherVyAC0E7WrapperAGLLV_AC0E7ContextVAA15SendReliabilityOts5NeverOGAA0v9TransportC0_p_xmtSeRzSERzlFZAA14PlaybackSyncerC0E0V_Tt0t1g5(*(v1 + 16), *(v1 + 24));
  v10 = *(v1 + 40);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = partial apply for specialized closure #1 in GroupSessionMessenger.receive<A>(_:);
  *(v12 + 24) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy15GroupActivities0D16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AF0H7ContextVAD15SendReliabilityOts5NeverOGMd, &_s7Combine12AnyPublisherVy15GroupActivities0D16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AF0H7ContextVAD15SendReliabilityOts5NeverOGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities14PlaybackSyncerC7MessageV_AA0A16SessionMessengerC0E7ContextVtMd, &_s15GroupActivities14PlaybackSyncerC7MessageV_AA0A16SessionMessengerC0E7ContextVtMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<(GroupSessionMessenger.MessageWrapper, GroupSessionMessenger.MessageContext, SendReliability), Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy15GroupActivities0D16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AF0H7ContextVAD15SendReliabilityOts5NeverOGMd, &_s7Combine12AnyPublisherVy15GroupActivities0D16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AF0H7ContextVAD15SendReliabilityOts5NeverOGMR);
  Publisher.compactMap<A>(_:)();

  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.CompactMap<AnyPublisher<(GroupSessionMessenger.MessageWrapper, GroupSessionMessenger.MessageContext, SendReliability), Never>, (PlaybackSyncer.Message, GroupSessionMessenger.MessageContext)> and conformance Publishers.CompactMap<A, B>, &_s7Combine10PublishersO10CompactMapVy_AA12AnyPublisherVy15GroupActivities0G16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AJ0K7ContextVAH15SendReliabilityOts5NeverOGAH14PlaybackSyncerC0K0V_AOtGMd, &_s7Combine10PublishersO10CompactMapVy_AA12AnyPublisherVy15GroupActivities0G16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AJ0K7ContextVAH15SendReliabilityOts5NeverOGAH14PlaybackSyncerC0K0V_AOtGMR);
  v13 = v16;
  Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();
  (*(v2 + 8))(v5, v13);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.HandleEvents<Publishers.CompactMap<AnyPublisher<(GroupSessionMessenger.MessageWrapper, GroupSessionMessenger.MessageContext, SendReliability), Never>, (PlaybackSyncer.Message, GroupSessionMessenger.MessageContext)>> and conformance Publishers.HandleEvents<A>, &_s7Combine10PublishersO12HandleEventsVy_AC10CompactMapVy_AA12AnyPublisherVy15GroupActivities0I16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AL0M7ContextVAJ15SendReliabilityOts5NeverOGAJ14PlaybackSyncerC0M0V_AQtGGMd, &_s7Combine10PublishersO12HandleEventsVy_AC10CompactMapVy_AA12AnyPublisherVy15GroupActivities0I16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AL0M7ContextVAJ15SendReliabilityOts5NeverOGAJ14PlaybackSyncerC0M0V_AQtGGMR);
  v14 = v17;
  v15 = Publisher.eraseToAnyPublisher()();
  (*(v6 + 8))(v9, v14);
  _s15GroupActivities0A16SessionMessengerC13MessageStreamV06outputF0AEy_xG7Combine12AnyPublisherVyx_AC0E7ContextVts5NeverOG_tcfCAA14PlaybackSyncerC0E0V_Tt1g5(v15, v18);
}

uint64_t closure #2 in GroupSession.GroupSessionPlaybackSyncerLink.init(groupSession:messenger:playbackSyncer:)(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = (*(*result + 224))();

    if (v7)
    {
      v8[0] = v3;
      v9 = v4;
      v10 = v5;
      v7(v8, a2);
      return outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v7);
    }
  }

  return result;
}

Swift::Void __swiftcall GroupSession.GroupSessionPlaybackSyncerLink.connect()()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v2 + 88);
  v75 = *(v2 + 104);
  type metadata accessor for GroupSession.State();
  v4 = type metadata accessor for Published.Publisher();
  v74 = *(v4 - 8);
  v5 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v73 = &v59 - v6;
  WitnessTable = swift_getWitnessTable();
  v7 = type metadata accessor for Publishers.Drop();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v59 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v59 - v14;
  v78 = type metadata accessor for UUID();
  v16 = *(v78 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v78);
  v70 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v69 = &v59 - v20;
  v21 = type metadata accessor for Participant();
  v77 = *(v21 - 8);
  v22 = *(v77 + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v25 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = v2;
  v26 = (*(v2 + 296))(v23);
  if (v26)
  {
    v68 = v16;
    v71 = v4;
    v27 = v26;
    GroupSession.state.getter();
    v28 = v80;
    v81 = 1;
    v82 = v80;
    v29 = static GroupSession.State.== infix(_:_:)(&v82, &v81);
    outlined consume of GroupSession<A>.State<A>(v28);
    if (v29)
    {
      v76 = v27;
      v63 = v11;
      if (one-time initialization token for playback != -1)
      {
LABEL_24:
        swift_once();
      }

      v64 = v8;
      v65 = v7;
      v66 = v3;
      v30 = type metadata accessor for Logger();
      __swift_project_value_buffer(v30, static Logger.playback);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.default.getter();
      v33 = os_log_type_enabled(v31, v32);
      v34 = v68;
      if (v33)
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_1AEE80000, v31, v32, "GroupSession was already joined so calling didJoinHandler", v35, 2u);
        MEMORY[0x1B2715BA0](v35, -1, -1);
      }

      v36 = GroupSession.activeParticipants.getter();
      v37 = v36;
      v38 = v36 + 56;
      v39 = 1 << *(v36 + 32);
      v40 = -1;
      if (v39 < 64)
      {
        v40 = ~(-1 << v39);
      }

      v3 = v40 & *(v36 + 56);
      v7 = (v39 + 63) >> 6;
      v8 = v34 + 48;
      v62 = (v34 + 32);

      v41 = 0;
      v67 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v42 = v41;
        if (!v3)
        {
          break;
        }

LABEL_13:
        outlined init with copy of Participant(*(v37 + 48) + *(v77 + 72) * (__clz(__rbit64(v3)) | (v41 << 6)), v25, type metadata accessor for Participant);
        v43 = *(v79 + 80);
        v44 = *(v79 + 96);
        closure #1 in GroupSession.GroupSessionPlaybackSyncerLink.connect()(v25, v76, v15);
        v3 &= v3 - 1;
        outlined destroy of Participant(v25, type metadata accessor for Participant);
        if ((*v8)(v15, 1, v78) == 1)
        {
          outlined destroy of NSObject?(v15, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        }

        else
        {
          v61 = *v62;
          v61(v69, v15, v78);
          v61(v70, v69, v78);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v67 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v67 + 2) + 1, 1, v67, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR, MEMORY[0x1E69695A8]);
          }

          v46 = *(v67 + 2);
          v45 = *(v67 + 3);
          v47 = v46 + 1;
          if (v46 >= v45 >> 1)
          {
            v60 = v46 + 1;
            v59 = v46;
            v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v45 > 1, v46 + 1, 1, v67, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR, MEMORY[0x1E69695A8]);
            v47 = v60;
            v46 = v59;
            v67 = v50;
          }

          v49 = v67;
          v48 = v68;
          *(v67 + 2) = v47;
          v61(&v49[((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v46], v70, v78);
        }
      }

      while (1)
      {
        v41 = v42 + 1;
        if (__OFADD__(v42, 1))
        {
          __break(1u);
          goto LABEL_24;
        }

        if (v41 >= v7)
        {
          break;
        }

        v3 = *(v38 + 8 * v41);
        ++v42;
        if (v3)
        {
          goto LABEL_13;
        }
      }

      v51 = *(v1 + direct field offset for GroupSession.GroupSessionPlaybackSyncerLink.playbackSyncer);
      v52 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4UUIDV_SayAFGTt0g5Tf4g_n(v67);

      (*(*v51 + 480))(v1, &protocol witness table for GroupSession<A>.GroupSessionPlaybackSyncerLink<A1>, v52);

      (*(*v1 + 280))(1);
      v7 = v65;
      v3 = v66;
      v8 = v64;
      v11 = v63;
    }

    v53 = v73;
    GroupSession.$state.getter();
    v54 = v71;
    Publisher.dropFirst(_:)();
    (*(v74 + 8))(v53, v54);
    v55 = swift_allocObject();
    swift_weakInit();
    v56 = swift_allocObject();
    v57 = v79;
    v56[2] = *(v79 + 80);
    v56[3] = v3;
    v58 = v75;
    v56[4] = *(v57 + 96);
    v56[5] = v58;
    v56[6] = v55;
    swift_getWitnessTable();
    Publisher<>.sink(receiveValue:)();

    (*(v8 + 8))(v11, v7);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }
}

uint64_t closure #2 in GroupSession.GroupSessionPlaybackSyncerLink.connect()(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v52 = a3;
  v53 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v43 - v8;
  v54 = type metadata accessor for UUID();
  v10 = *(v54 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v54);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v43 - v15;
  v17 = type metadata accessor for Participant();
  v51 = *(v17 - 8);
  v18 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v23 = result;
    v55 = (*(*result + 296))();
    if (v55)
    {
      v56 = 1;
      v57 = v21;
      if (static GroupSession.State.== infix(_:_:)(&v57, &v56))
      {
        v48 = v14;
        if (one-time initialization token for playback != -1)
        {
LABEL_26:
          swift_once();
        }

        v47 = v16;
        v24 = type metadata accessor for Logger();
        __swift_project_value_buffer(v24, static Logger.playback);
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          _os_log_impl(&dword_1AEE80000, v25, v26, "GroupSession joined so connecting link to PlaybackSyncer", v27, 2u);
          MEMORY[0x1B2715BA0](v27, -1, -1);
        }

        v28 = GroupSession.activeParticipants.getter();
        v29 = v28;
        v30 = v28 + 56;
        v31 = 1 << *(v28 + 32);
        v32 = -1;
        if (v31 < 64)
        {
          v32 = ~(-1 << v31);
        }

        v16 = v32 & *(v28 + 56);
        v33 = (v31 + 63) >> 6;
        v34 = (v10 + 48);
        v46 = v10;
        v49 = (v10 + 32);

        v10 = 0;
        v50 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          v35 = v10;
          if (!v16)
          {
            break;
          }

LABEL_14:
          outlined init with copy of Participant(*(v29 + 48) + *(v51 + 72) * (__clz(__rbit64(v16)) | (v10 << 6)), v20, type metadata accessor for Participant);
          closure #1 in GroupSession.GroupSessionPlaybackSyncerLink.connect()(v20, v55, v9);
          v16 &= v16 - 1;
          outlined destroy of Participant(v20, type metadata accessor for Participant);
          if ((*v34)(v9, 1, v54) == 1)
          {
            outlined destroy of NSObject?(v9, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          }

          else
          {
            v45 = *v49;
            v45(v47, v9, v54);
            v45(v48, v47, v54);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v50[2] + 1, 1, v50, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR, MEMORY[0x1E69695A8]);
            }

            v37 = v50[2];
            v36 = v50[3];
            v38 = v37 + 1;
            if (v37 >= v36 >> 1)
            {
              v43 = v50[2];
              v44 = v37 + 1;
              v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v36 > 1, v37 + 1, 1, v50, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR, MEMORY[0x1E69695A8]);
              v37 = v43;
              v38 = v44;
              v50 = v40;
            }

            v39 = v50;
            v50[2] = v38;
            v45(v39 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v37, v48, v54);
          }
        }

        while (1)
        {
          v10 = v35 + 1;
          if (__OFADD__(v35, 1))
          {
            __break(1u);
            goto LABEL_26;
          }

          if (v10 >= v33)
          {
            break;
          }

          v16 = *(v30 + 8 * v10);
          ++v35;
          if (v16)
          {
            goto LABEL_14;
          }
        }

        v41 = *(v23 + direct field offset for GroupSession.GroupSessionPlaybackSyncerLink.playbackSyncer);

        v42 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4UUIDV_SayAFGTt0g5Tf4g_n(v50);

        (*(*v41 + 480))(v23, &protocol witness table for GroupSession<A>.GroupSessionPlaybackSyncerLink<A1>, v42);

        (*(*v23 + 280))(1);
      }
    }
  }

  return result;
}

uint64_t closure #1 in GroupSession.GroupSessionPlaybackSyncerLink.connect()@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Participant();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Participant(*(a2 + direct field offset for GroupSession.linkManager) + OBJC_IVAR____TtC15GroupActivities11LinkManager_localParticipant, v14, type metadata accessor for Participant);
  v15 = *(v7 + 16);
  v15(v10, v14, v6);
  outlined destroy of Participant(v14, type metadata accessor for Participant);
  lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  LOBYTE(a2) = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v7 + 8))(v10, v6);
  if (a2)
  {
    v16 = 1;
  }

  else
  {
    v15(a3, a1, v6);
    v16 = 0;
  }

  return (*(v7 + 56))(a3, v16, 1, v6);
}

uint64_t GroupSession.GroupSessionPlaybackSyncerLink.sendMessage(_:to:)(unsigned __int8 *a1, uint64_t a2)
{
  v64 = type metadata accessor for UUID();
  v66 = *(v64 - 8);
  v5 = *(v66 + 64);
  v6 = MEMORY[0x1EEE9AC00](v64);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v65 = &v54 - v9;
  v10 = type metadata accessor for Participant();
  v62 = *(v10 - 8);
  v63 = v10;
  v11 = *(v62 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v17 = *(a1 + 1);
  v16 = *(a1 + 2);
  if (a2)
  {
    v58 = v16;
    v18 = *(a2 + 16);
    v19 = MEMORY[0x1E69E7CC0];
    if (v18)
    {
      v55 = v17;
      v56 = v15;
      v57 = v2;
      v67 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 0);
      v19 = v67;
      v20 = *(v66 + 16);
      v21 = (a2 + ((*(v66 + 80) + 32) & ~*(v66 + 80)));
      v60 = *(v66 + 72);
      v61 = v20;
      v66 += 16;
      v59 = (v66 - 8);
      v22 = v64;
      do
      {
        v23 = v65;
        v24 = v61;
        v61(v65, v21, v22);
        v24(v8, v23, v22);
        v24(v14, v8, v22);
        UUID.uuid.getter();
        v26 = v25;
        UUID.uuid.getter();
        v28 = (v27 >> 40) & 0xFF00 | v26;
        UUID.uuid.getter();
        v30 = (v29 >> 24) & 0xFF0000;
        UUID.uuid.getter();
        v32 = v28 | v30 | (v31 >> 8) & 0xFF000000;
        UUID.uuid.getter();
        v34 = v32 & 0xFFFFFF00FFFFFFFFLL | (v33 << 32);
        UUID.uuid.getter();
        v36 = v34 & 0xFFFF00FFFFFFFFFFLL | (v35 << 40);
        UUID.uuid.getter();
        v38 = v36 & 0xFF00FFFFFFFFFFFFLL | (v37 << 48);
        UUID.uuid.getter();
        v40 = v38 | (v39 << 56);
        v41 = *v59;
        (*v59)(v8, v22);
        v41(v23, v22);
        v42 = v63;
        *&v14[v63[6]] = v40;
        v43 = &v14[v42[5]];
        *v43 = 0;
        *(v43 + 1) = 0xE000000000000000;
        v44 = &v14[v42[7]];
        *v44 = 0;
        *(v44 + 1) = 0;
        v14[v42[8]] = 0;
        v14[v42[9]] = 0;
        v67 = v19;
        v46 = *(v19 + 16);
        v45 = *(v19 + 24);
        if (v46 >= v45 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v45 > 1, v46 + 1, 1);
          v19 = v67;
        }

        *(v19 + 16) = v46 + 1;
        v12 = outlined init with take of Participant(v14, v19 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v46, type metadata accessor for Participant);
        v21 += v60;
        --v18;
      }

      while (v18);
      v2 = v57;
      LOBYTE(v15) = v56;
      v17 = v55;
    }

    if ((*(*v2 + 320))(v12))
    {
      v47 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15GroupActivities11ParticipantV_SayAFGTt0g5Tf4g_n(v19);

      v49 = (*(*v2 + 200))(v48);
      specialized GroupSessionMessenger.send<A>(_:to:completion:)(v15, v17, v58, v47, v49, v50);
    }

    else
    {
    }
  }

  else
  {
    result = (*(*v2 + 320))(v12);
    if (result)
    {
      v52 = (*(*v2 + 200))();
      specialized GroupSessionMessenger.send<A>(_:to:completion:)(v15, v17, v16, 0, v52, v53);
    }
  }

  return result;
}

uint64_t specialized GroupSessionMessenger.send<A>(_:to:completion:)(char a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v45 = &type metadata for PlaybackSyncer.Message;
  v46 = lazy protocol witness table accessor for type PlaybackSyncer.Message and conformance PlaybackSyncer.Message();
  v47 = lazy protocol witness table accessor for type PlaybackSyncer.Message and conformance PlaybackSyncer.Message();
  v42[0] = a1;
  v43 = a2;
  v44 = a3;
  v48 = 1;
  outlined copy of Data._Representation(a2, a3);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Log.default);
  outlined copy of Data._Representation(a2, a3);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v37 = a6;
    v17 = swift_slowAlloc();
    v40 = v17;
    *v16 = 136315394;
    v18 = _typeName(_:qualified:)();
    v20 = v19;
    outlined consume of Data._Representation(a2, a3);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v40);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    v39 = a4;

    v22 = String.init<A>(reflecting:)();
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v40);

    *(v16 + 14) = v24;
    _os_log_impl(&dword_1AEE80000, v14, v15, "Sending message: %s to: %s", v16, 0x16u);
    swift_arrayDestroy();
    v25 = v17;
    a6 = v37;
    MEMORY[0x1B2715BA0](v25, -1, -1);
    MEMORY[0x1B2715BA0](v16, -1, -1);
  }

  else
  {

    outlined consume of Data._Representation(a2, a3);
  }

  v26 = swift_conformsToProtocol2();
  if (v26)
  {
    v26 = (*(v26 + 8))(&type metadata for PlaybackSyncer.Message, v26);
    v27 = v26;
    v29 = v28;
  }

  else
  {
    v29 = 0x80000001AF01AC20;
    v27 = 0xD000000000000026;
  }

  v30 = *(v7 + 40);
  MEMORY[0x1EEE9AC00](v26);
  tryLog<A>(_:_:function:line:)();
  v31 = v41;
  if (v41 >> 60 == 15)
  {
  }

  else
  {
    v32 = v40;
    v33 = *(v7 + 16);
    v34 = *(v7 + 24);
    v40 = a4;
    ObjectType = swift_getObjectType();
    LOBYTE(v39) = v30;
    (*(v34 + 16))(v32, v31, &v40, v27, v29, &v39, a5, a6, ObjectType, v34);

    outlined consume of Data?(v32, v31);
  }

  return outlined destroy of GroupSessionMessenger.MessageWrapper(v42);
}

char *GroupSession.GroupSessionPlaybackSyncerLink.deinit()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 5);
  outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(*(v0 + 4));
  v3 = *(v0 + 7);
  outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(*(v0 + 6));
  v4 = direct field offset for GroupSession.GroupSessionPlaybackSyncerLink.sessionUUID;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(&v0[v4], v5);
  v6(&v0[direct field offset for GroupSession.GroupSessionPlaybackSyncerLink.localUUID], v5);
  swift_weakDestroy();
  swift_weakDestroy();
  v7 = *&v0[direct field offset for GroupSession.GroupSessionPlaybackSyncerLink.playbackSyncer];

  v8 = *&v0[direct field offset for GroupSession.GroupSessionPlaybackSyncerLink.shouldRequestCatchup];

  v9 = *&v0[direct field offset for GroupSession.GroupSessionPlaybackSyncerLink.cancellables];

  return v0;
}

uint64_t GroupSession.__deallocating_deinit(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return swift_deallocClassInstance();
}

uint64_t (*protocol witness for PlaybackSyncerLink.receivedMessageHandler.modify in conformance GroupSession<A>.GroupSessionPlaybackSyncerLink<A1>(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 240))();
  return protocol witness for PlaybackSyncerLink.receivedMessageHandler.modify in conformance GroupSession<A>.GroupSessionPlaybackSyncerLink<A1>;
}

uint64_t (*protocol witness for PlaybackSyncerLink.participantLeftHandler.modify in conformance GroupSession<A>.GroupSessionPlaybackSyncerLink<A1>(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 264))();
  return protocol witness for PlaybackSyncerLink.participantLeftHandler.modify in conformance GroupSession<A>.GroupSessionPlaybackSyncerLink<A1>;
}

void protocol witness for PlaybackSyncerLink.receivedMessageHandler.modify in conformance GroupSession<A>.GroupSessionPlaybackSyncerLink<A1>(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t protocol witness for PlaybackSyncerLink.localUUID.getter in conformance GroupSession<A>.GroupSessionPlaybackSyncerLink<A1>@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t specialized closure #1 in GroupSession.cleanUpPlaybackSyncer()()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = direct field offset for GroupSession.playbackSyncerLink;
    swift_beginAccess();
    v3 = *(v1 + v2);
    if (v3)
    {
      v4 = *(**(v3 + direct field offset for GroupSession.GroupSessionPlaybackSyncerLink.playbackSyncer) + 512);

      v4(v5);

      if (one-time initialization token for playback != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      __swift_project_value_buffer(v6, static Logger.playback);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_1AEE80000, v7, v8, "Cleaned up playback syncer", v9, 2u);
        MEMORY[0x1B2715BA0](v9, -1, -1);
      }
    }

    if (MEMORY[0x1E69E7CC0] >> 62 && __CocoaSet.count.getter())
    {
      v10 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v10 = MEMORY[0x1E69E7CD0];
    }

    v11 = *(*v1 + 312);
    swift_beginAccess();
    v12 = *(v1 + v11);
    *(v1 + v11) = v10;

    v13 = direct field offset for GroupSession.playbackSyncMessenger;
    swift_beginAccess();
    v14 = *(v1 + v13);
    *(v1 + v13) = 0;

    specialized GroupSession.playbackSyncerLink.setter(0);
  }

  return result;
}

uint64_t closure #1 in GroupSession.cleanUpPlaybackSyncer()()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = direct field offset for GroupSession.playbackSyncerLink;
    swift_beginAccess();
    v3 = *(v1 + v2);
    if (v3)
    {
      v4 = *(**(v3 + direct field offset for GroupSession.GroupSessionPlaybackSyncerLink.playbackSyncer) + 512);

      v4(v5);

      if (one-time initialization token for playback != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      __swift_project_value_buffer(v6, static Logger.playback);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_1AEE80000, v7, v8, "Cleaned up playback syncer", v9, 2u);
        MEMORY[0x1B2715BA0](v9, -1, -1);
      }
    }

    if (MEMORY[0x1E69E7CC0] >> 62 && __CocoaSet.count.getter())
    {
      v10 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v10 = MEMORY[0x1E69E7CD0];
    }

    v11 = *(*v1 + 312);
    swift_beginAccess();
    v12 = *(v1 + v11);
    *(v1 + v11) = v10;

    v13 = direct field offset for GroupSession.playbackSyncMessenger;
    swift_beginAccess();
    v14 = *(v1 + v13);
    *(v1 + v13) = 0;

    specialized GroupSession.playbackSyncerLink.setter(0);
  }

  return result;
}

uint64_t specialized GroupSession.description.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(120);
  MEMORY[0x1B27141F0](0x73655370756F7247, 0xED00003C6E6F6973);
  MEMORY[0x1B27141F0](0xD000000000000010, 0x80000001AF01AD20);
  MEMORY[0x1B27141F0](0x203A666C6573283ELL, 0xE800000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1B27141F0](0x203A6469202CLL, 0xE600000000000000);
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B27141F0](v2);

  MEMORY[0x1B27141F0](0x3A6574617473202CLL, 0xE900000000000020);
  type metadata accessor for AnyGroupActivity(0);
  lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type AnyGroupActivity and conformance AnyGroupActivity, type metadata accessor for AnyGroupActivity);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionC5StateOyAA03AnyA8ActivityV_GMd, &_s15GroupActivities0A7SessionC5StateOyAA03AnyA8ActivityV_GMR);
  _print_unlocked<A, B>(_:_:)();
  outlined consume of GroupSession<A>.State<A>(v0);
  MEMORY[0x1B27141F0](0xD000000000000014, 0x80000001AF01A6E0);
  if (*(v0 + *(*v0 + 264)))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (*(v0 + *(*v0 + 264)))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x1B27141F0](v3, v4);

  MEMORY[0x1B27141F0](0xD00000000000001CLL, 0x80000001AF01A700);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v5 = v0[2];

  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B27141F0](v6);

  MEMORY[0x1B27141F0](0xD000000000000015, 0x80000001AF01A720);
  v9 = *(v1 + *(*v1 + 408));
  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B27141F0](v7);

  MEMORY[0x1B27141F0](41, 0xE100000000000000);
  return 0;
}

uint64_t GroupSession.description.getter()
{
  v1 = v0;
  v2 = *v0;
  _StringGuts.grow(_:)(120);
  MEMORY[0x1B27141F0](0x73655370756F7247, 0xED00003C6E6F6973);
  v3 = *(v2 + 80);
  v4 = _typeName(_:qualified:)();
  MEMORY[0x1B27141F0](v4);

  MEMORY[0x1B27141F0](0x203A666C6573283ELL, 0xE800000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1B27141F0](0x203A6469202CLL, 0xE600000000000000);
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B27141F0](v5);

  MEMORY[0x1B27141F0](0x3A6574617473202CLL, 0xE900000000000020);
  GroupSession.state.getter();
  v6 = *(v2 + 88);
  type metadata accessor for GroupSession.State();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  outlined consume of GroupSession<A>.State<A>(v0);
  MEMORY[0x1B27141F0](0xD000000000000014, 0x80000001AF01A6E0);
  if (v0[*(*v0 + 264)])
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v0[*(*v0 + 264)])
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x1B27141F0](v7, v8);

  MEMORY[0x1B27141F0](0xD00000000000001CLL, 0x80000001AF01A700);
  v9 = *(GroupSession.activeParticipants.getter() + 16);

  v10 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B27141F0](v10);

  MEMORY[0x1B27141F0](0xD000000000000015, 0x80000001AF01A720);
  v13 = *&v1[*(*v1 + 408)];
  v11 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B27141F0](v11);

  MEMORY[0x1B27141F0](41, 0xE100000000000000);
  return 0;
}

Swift::Void __swiftcall GroupSession.invalidateConnection()()
{
  v1 = *(*v0 + 288);
  swift_beginAccess();
  v2 = *(v0 + v1);
  dispatch thunk of XPCClient.destroyConnection()();
}

uint64_t GroupSession.shouldDismissPlayback(allowingCancellation:completionHandler:)(char a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Log.default);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();

  v27 = a1;
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock[0] = v13;
    *v12 = 136315394;
    LOBYTE(v30) = a1 & 1;
    v14 = String.init<A>(reflecting:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, aBlock);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    v30 = v4;
    v17 = >> prefix<A>(_:)(&v30, v8);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, aBlock);

    *(v12 + 14) = v19;
    _os_log_impl(&dword_1AEE80000, v10, v11, "GroupSession got shouldDismissPlayback allowingCancellation:%s. Will end %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v13, -1, -1);
    MEMORY[0x1B2715BA0](v12, -1, -1);
  }

  GroupSession.state.getter();
  v20 = aBlock[0];
  v29 = 1;
  v30 = aBlock[0];
  v21 = static GroupSession.State.== infix(_:_:)(&v30, &v29);
  outlined consume of GroupSession<A>.State<A>(v20);
  if (v21)
  {
    v22 = *(v4 + *(*v4 + 296));
    v23 = swift_allocObject();
    *(v23 + 16) = v4;
    *(v23 + 24) = v27 & 1;
    *(v23 + 32) = a2;
    *(v23 + 40) = a3;
    v24 = swift_allocObject();
    *(v24 + 16) = partial apply for closure #1 in GroupSession.shouldDismissPlayback(allowingCancellation:completionHandler:);
    *(v24 + 24) = v23;
    aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_253;
    a2 = _Block_copy(aBlock);

    dispatch_sync(v22, a2);
    _Block_release(a2);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  return (a2)(0);
}

uint64_t closure #1 in GroupSession.shouldDismissPlayback(allowingCancellation:completionHandler:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*a1 + 288);
  swift_beginAccess();
  v9 = *(a1 + v8);
  v10 = XPCClient.queue.getter();

  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3;
  *(v11 + 40) = a4;
  v12 = swift_allocObject();
  *(v12 + 16) = partial apply for closure #1 in closure #1 in GroupSession.shouldDismissPlayback(allowingCancellation:completionHandler:);
  *(v12 + 24) = v11;
  aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_418;
  v13 = _Block_copy(aBlock);

  dispatch_sync(v10, v13);

  _Block_release(v13);
  LOBYTE(a4) = swift_isEscapingClosureAtFileLocation();

  if (a4)
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in closure #1 in GroupSession.shouldDismissPlayback(allowingCancellation:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(*a1 + 288);
  swift_beginAccess();
  v8 = *(a1 + v7);
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v10 = v8;

  XPCClient.withHost(body:errorHandler:)();
}

void closure #1 in closure #1 in closure #1 in GroupSession.shouldDismissPlayback(allowingCancellation:completionHandler:)(void **a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v10[4] = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in GroupSession.shouldDismissPlayback(allowingCancellation:completionHandler:);
  v10[5] = v8;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v10[3] = &block_descriptor_427;
  v9 = _Block_copy(v10);

  [v7 presentSessionDismissalAlertWithAllowingCancellation:a2 & 1 completion:v9];
  _Block_release(v9);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in GroupSession.shouldDismissPlayback(allowingCancellation:completionHandler:)(char a1, uint64_t (*a2)(void))
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.default);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    v9 = String.init<A>(reflecting:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1AEE80000, v5, v6, "GroupSession got result of dismissal alert %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B2715BA0](v8, -1, -1);
    MEMORY[0x1B2715BA0](v7, -1, -1);
  }

  return a2(a1 & 1);
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned Bool) -> ()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t GroupSession.Timestamps.globalCreation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Date();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t GroupSession.Timestamps.localCreation.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t GroupSession.Timestamps.init()@<X0>(uint64_t a1@<X8>)
{
  Date.init()();
  v2 = type metadata accessor for GroupSession.Timestamps();
  v3 = a1 + *(v2 + 36);
  Date.init()();
  v4 = *(v2 + 40);
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 56);

  return v6(a1 + v4, 1, 1, v5);
}

uint64_t InternalParticipant.isTranslated.setter(char a1)
{
  result = type metadata accessor for InternalParticipant();
  *(v1 + *(result + 20)) = a1;
  return result;
}

int *InternalParticipant.init(_:isTranslated:isSaltVerified:isLocalParticipant:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  outlined init with take of Participant(a1, a5, type metadata accessor for Participant);
  result = type metadata accessor for InternalParticipant();
  *(a5 + result[5]) = a2;
  *(a5 + result[6]) = a3;
  *(a5 + result[7]) = a4;
  return result;
}

void InternalParticipant.hash(into:)()
{
  Participant.hash(into:)();
  v1 = type metadata accessor for InternalParticipant();
  Hasher._combine(_:)(*(v0 + v1[5]));
  Hasher._combine(_:)(*(v0 + v1[6]));
  Hasher._combine(_:)(*(v0 + v1[7]));
}

Swift::Int InternalParticipant.hashValue.getter()
{
  Hasher.init(_seed:)();
  Participant.hash(into:)();
  v1 = type metadata accessor for InternalParticipant();
  Hasher._combine(_:)(*(v0 + v1[5]));
  Hasher._combine(_:)(*(v0 + v1[6]));
  Hasher._combine(_:)(*(v0 + v1[7]));
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance InternalParticipant(uint64_t a1, int *a2)
{
  Participant.hash(into:)();
  Hasher._combine(_:)(*(v2 + a2[5]));
  Hasher._combine(_:)(*(v2 + a2[6]));
  Hasher._combine(_:)(*(v2 + a2[7]));
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance InternalParticipant(uint64_t a1, int *a2)
{
  Hasher.init(_seed:)();
  Participant.hash(into:)();
  Hasher._combine(_:)(*(v2 + a2[5]));
  Hasher._combine(_:)(*(v2 + a2[6]));
  Hasher._combine(_:)(*(v2 + a2[7]));
  return Hasher._finalize()();
}

uint64_t specialized closure #1 in GroupSessionMessenger.receive<A>(_:)@<X0>(uint64_t a1@<X0>, char a2@<W2>, char a3@<W3>, uint64_t a4@<X8>)
{
  if (a3)
  {
    if ((a2 & 1) == 0)
    {
LABEL_3:
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities14PlaybackSyncerC7MessageV_AA0A16SessionMessengerC0E7ContextVtMd, &_s15GroupActivities14PlaybackSyncerC7MessageV_AA0A16SessionMessengerC0E7ContextVtMR);
      v6 = *(*(v5 - 8) + 56);

      return v6(a4, 1, 1, v5);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  outlined init with copy of GroupSessionMessenger.MessageType(a1, v13);
  if (v14)
  {
    v15[0] = v13[0];
    v15[1] = v13[1];
    v15[2] = v13[2];
    outlined init with copy of Decodable & Encodable(v15, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSe_SEpMd, &_sSe_SEpMR);
    v8 = swift_dynamicCast();
    if ((v8 & 1) == 0)
    {
      v11 = 0;
      v12 = 0;
      v10 = 4;
    }

    MEMORY[0x1EEE9AC00](v8);
    _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF15GroupActivities14PlaybackSyncerC7MessageV_s5NeverOAH_AD0C16SessionMessengerC0G7ContextVtTB5(partial apply for specialized closure #1 in closure #1 in GroupSessionMessenger.receive<A>(_:), v10, v11, v12, a4);
    outlined destroy of TypedPayloadBox(v15);
    return outlined consume of PlaybackSyncer.Message?(v10, v11, v12);
  }

  else
  {
    outlined destroy of GroupSessionMessenger.MessageType(v13);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities14PlaybackSyncerC7MessageV_AA0A16SessionMessengerC0E7ContextVtMd, &_s15GroupActivities14PlaybackSyncerC7MessageV_AA0A16SessionMessengerC0E7ContextVtMR);
    return (*(*(v9 - 8) + 56))(a4, 1, 1, v9);
  }
}

void specialized closure #2 in GroupSessionMessenger.receive<A>(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities14PlaybackSyncerC7MessageV_AA0A16SessionMessengerC0E7ContextVtMd, &_s15GroupActivities14PlaybackSyncerC7MessageV_AA0A16SessionMessengerC0E7ContextVtMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v15 - v4;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.default);
  outlined init with copy of URL?(a1, v5, &_s15GroupActivities14PlaybackSyncerC7MessageV_AA0A16SessionMessengerC0E7ContextVtMd, &_s15GroupActivities14PlaybackSyncerC7MessageV_AA0A16SessionMessengerC0E7ContextVtMR);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    v11 = _typeName(_:qualified:)();
    v13 = v12;
    outlined destroy of NSObject?(v5, &_s15GroupActivities14PlaybackSyncerC7MessageV_AA0A16SessionMessengerC0E7ContextVtMd, &_s15GroupActivities14PlaybackSyncerC7MessageV_AA0A16SessionMessengerC0E7ContextVtMR);
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v16);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_1AEE80000, v7, v8, "Receiving message: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1B2715BA0](v10, -1, -1);
    MEMORY[0x1B2715BA0](v9, -1, -1);
  }

  else
  {

    outlined destroy of NSObject?(v5, &_s15GroupActivities14PlaybackSyncerC7MessageV_AA0A16SessionMessengerC0E7ContextVtMd, &_s15GroupActivities14PlaybackSyncerC7MessageV_AA0A16SessionMessengerC0E7ContextVtMR);
  }
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZs6UInt64V_15GroupActivities19InternalParticipantVTt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InternalParticipant();
  v68 = *(v4 - 8);
  v69 = v4;
  v5 = *(v68 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v60 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v66 = &v60 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V3key_15GroupActivities19InternalParticipantV5valuetSgMd, &_ss6UInt64V3key_15GroupActivities19InternalParticipantV5valuetSgMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v67 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v15);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v63 = a2;
  v64 = &v60 - v18;
  v19 = 0;
  v20 = *(a1 + 64);
  v61 = a1 + 64;
  v21 = 1 << *(a1 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v20;
  v24 = (v21 + 63) >> 6;
  v62 = v24;
  while (v23)
  {
    v65 = (v23 - 1) & v23;
    v25 = __clz(__rbit64(v23)) | (v19 << 6);
    v26 = v67;
LABEL_16:
    v32 = *(*(a1 + 48) + 8 * v25);
    v33 = v66;
    outlined init with copy of Participant(*(a1 + 56) + *(v68 + 72) * v25, v66, type metadata accessor for InternalParticipant);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V3key_15GroupActivities19InternalParticipantV5valuetMd, &_ss6UInt64V3key_15GroupActivities19InternalParticipantV5valuetMR);
    v35 = *(v34 + 48);
    *v26 = v32;
    outlined init with take of Participant(v33, v26 + v35, type metadata accessor for InternalParticipant);
    (*(*(v34 - 8) + 56))(v26, 0, 1, v34);
    v29 = v64;
LABEL_17:
    outlined init with take of Date?(v26, v29, &_ss6UInt64V3key_15GroupActivities19InternalParticipantV5valuetSgMd, &_ss6UInt64V3key_15GroupActivities19InternalParticipantV5valuetSgMR);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V3key_15GroupActivities19InternalParticipantV5valuetMd, &_ss6UInt64V3key_15GroupActivities19InternalParticipantV5valuetMR);
    v37 = (*(*(v36 - 8) + 48))(v29, 1, v36);
    v38 = v37 == 1;
    if (v37 == 1)
    {
      return v38;
    }

    v39 = *(v36 + 48);
    v40 = *v29;
    outlined init with take of Participant(v29 + v39, v11, type metadata accessor for InternalParticipant);
    v41 = v63;
    v42 = specialized __RawDictionaryStorage.find<A>(_:)(v40);
    if ((v43 & 1) == 0)
    {
      goto LABEL_40;
    }

    outlined init with copy of Participant(*(v41 + 56) + *(v68 + 72) * v42, v8, type metadata accessor for InternalParticipant);
    if ((static UUID.== infix(_:_:)() & 1) == 0 || ((v44 = type metadata accessor for Participant(), v45 = v44[5], v46 = *&v8[v45], v47 = *&v8[v45 + 8], v48 = &v11[v45], v46 != *v48) || v47 != *(v48 + 1)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *&v8[v44[6]] != *&v11[v44[6]])
    {
LABEL_39:
      outlined destroy of Participant(v8, type metadata accessor for InternalParticipant);
LABEL_40:
      outlined destroy of Participant(v11, type metadata accessor for InternalParticipant);
      return 0;
    }

    v49 = v44[7];
    v50 = &v8[v49];
    v51 = *&v8[v49 + 8];
    v52 = &v11[v49];
    v53 = *(v52 + 1);
    if (v51)
    {
      if (!v53 || (*v50 != *v52 || v51 != v53) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_39;
      }
    }

    else if (v53)
    {
      goto LABEL_39;
    }

    if (v8[v44[8]] != v11[v44[8]] || v8[v44[9]] != v11[v44[9]] || v8[v69[5]] != v11[v69[5]] || v8[v69[6]] != v11[v69[6]])
    {
      goto LABEL_39;
    }

    v54 = v69[7];
    v55 = a1;
    v56 = v8[v54];
    v57 = v11[v54];
    outlined destroy of Participant(v8, type metadata accessor for InternalParticipant);
    result = outlined destroy of Participant(v11, type metadata accessor for InternalParticipant);
    v58 = v56 == v57;
    a1 = v55;
    v24 = v62;
    v23 = v65;
    if (!v58)
    {
      return v38;
    }
  }

  if (v24 <= v19 + 1)
  {
    v27 = v19 + 1;
  }

  else
  {
    v27 = v24;
  }

  v28 = v27 - 1;
  v26 = v67;
  v29 = v64;
  while (1)
  {
    v30 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v30 >= v24)
    {
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V3key_15GroupActivities19InternalParticipantV5valuetMd, &_ss6UInt64V3key_15GroupActivities19InternalParticipantV5valuetMR);
      (*(*(v59 - 8) + 56))(v26, 1, 1, v59);
      v65 = 0;
      v19 = v28;
      goto LABEL_17;
    }

    v31 = *(v61 + 8 * v30);
    ++v19;
    if (v31)
    {
      v65 = (v31 - 1) & v31;
      v25 = __clz(__rbit64(v31)) | (v30 << 6);
      v19 = v30;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

void _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZs6UInt64V_15GroupActivities22SystemCoordinatorStateC011ParticipantG0CTt1g5(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = v9 | (v4 << 6);
      v13 = *(*(a1 + 56) + 8 * v12);
      v14 = specialized __RawDictionaryStorage.find<A>(_:)(*(*(a1 + 48) + 8 * v12));
      if (v15)
      {
        v16 = v14;
        type metadata accessor for SystemCoordinatorState.ParticipantState();
        v17 = *(*(a2 + 56) + 8 * v16);
        v18 = v13;
        v19 = v17;
        LOBYTE(v17) = static NSObject.== infix(_:_:)();

        if (v17)
        {
          continue;
        }
      }

      return;
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a1 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ15GroupActivities11ParticipantV_AC17SystemCoordinatorC0D5StateVTt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Participant();
  v67 = *(v4 - 8);
  v5 = *(v67 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v68 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v66 = &v62 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11ParticipantV3key_AA17SystemCoordinatorC0C5StateV5valuetSgMd, &_s15GroupActivities11ParticipantV3key_AA17SystemCoordinatorC0C5StateV5valuetSgMR);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v11);
  v16 = &v62 - v15;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v17 = 0;
  v62 = v13;
  v63 = a1;
  v20 = *(a1 + 64);
  v19 = a1 + 64;
  v18 = v20;
  v21 = 1 << *(v19 - 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v18;
  v24 = (v21 + 63) >> 6;
  v64 = a2;
  v65 = v16;
  if ((v22 & v18) != 0)
  {
    do
    {
      v25 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      v26 = v25 | (v17 << 6);
LABEL_15:
      v31 = v63;
      v32 = v66;
      outlined init with copy of Participant(*(v63 + 48) + *(v67 + 72) * v26, v66, type metadata accessor for Participant);
      outlined init with copy of SystemCoordinator.ParticipantState(*(v31 + 56) + 240 * v26, &v71);
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11ParticipantV3key_AA17SystemCoordinatorC0C5StateV5valuetMd, &_s15GroupActivities11ParticipantV3key_AA17SystemCoordinatorC0C5StateV5valuetMR);
      v34 = &v62[*(v33 + 48)];
      v35 = v32;
      v13 = v62;
      outlined init with take of Participant(v35, v62, type metadata accessor for Participant);
      v36 = v84;
      *(v34 + 12) = v83;
      *(v34 + 13) = v36;
      *(v34 + 14) = v85;
      v37 = v80;
      *(v34 + 8) = v79;
      *(v34 + 9) = v37;
      v38 = v82;
      *(v34 + 10) = v81;
      *(v34 + 11) = v38;
      v39 = v76;
      *(v34 + 4) = v75;
      *(v34 + 5) = v39;
      v40 = v78;
      *(v34 + 6) = v77;
      *(v34 + 7) = v40;
      v41 = v72;
      *v34 = v71;
      *(v34 + 1) = v41;
      v42 = v74;
      *(v34 + 2) = v73;
      *(v34 + 3) = v42;
      (*(*(v33 - 8) + 56))(v13, 0, 1, v33);
      v69 = v17;
LABEL_16:
      v43 = v65;
      outlined init with take of Date?(v13, v65, &_s15GroupActivities11ParticipantV3key_AA17SystemCoordinatorC0C5StateV5valuetSgMd, &_s15GroupActivities11ParticipantV3key_AA17SystemCoordinatorC0C5StateV5valuetSgMR);
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11ParticipantV3key_AA17SystemCoordinatorC0C5StateV5valuetMd, &_s15GroupActivities11ParticipantV3key_AA17SystemCoordinatorC0C5StateV5valuetMR);
      v45 = 1;
      if ((*(*(v44 - 8) + 48))(v43, 1, v44) == 1)
      {
        return v45;
      }

      v46 = (v43 + *(v44 + 48));
      v47 = v43;
      v48 = v68;
      outlined init with take of Participant(v47, v68, type metadata accessor for Participant);
      v49 = v46[13];
      v83 = v46[12];
      v84 = v49;
      v85 = v46[14];
      v50 = v46[9];
      v79 = v46[8];
      v80 = v50;
      v51 = v46[11];
      v81 = v46[10];
      v82 = v51;
      v52 = v46[5];
      v75 = v46[4];
      v76 = v52;
      v53 = v46[7];
      v77 = v46[6];
      v78 = v53;
      v54 = v46[1];
      v71 = *v46;
      v72 = v54;
      v55 = v46[3];
      v73 = v46[2];
      v74 = v55;
      v56 = v64;
      v57 = specialized __RawDictionaryStorage.find<A>(_:)(v48);
      v59 = v58;
      outlined destroy of Participant(v48, type metadata accessor for Participant);
      if ((v59 & 1) == 0)
      {
        outlined destroy of SystemCoordinator.ParticipantState(&v71);
        return 0;
      }

      outlined init with copy of SystemCoordinator.ParticipantState(*(v56 + 56) + 240 * v57, v70);
      v60 = specialized static SystemCoordinator.ParticipantState.== infix(_:_:)(v70, &v71);
      outlined destroy of SystemCoordinator.ParticipantState(v70);
      result = outlined destroy of SystemCoordinator.ParticipantState(&v71);
      if ((v60 & 1) == 0)
      {
        return 0;
      }

      v17 = v69;
    }

    while (v23);
  }

  if (v24 <= v17 + 1)
  {
    v27 = v17 + 1;
  }

  else
  {
    v27 = v24;
  }

  v28 = v27 - 1;
  while (1)
  {
    v29 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v29 >= v24)
    {
      v69 = v28;
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11ParticipantV3key_AA17SystemCoordinatorC0C5StateV5valuetMd, &_s15GroupActivities11ParticipantV3key_AA17SystemCoordinatorC0C5StateV5valuetMR);
      (*(*(v61 - 8) + 56))(v13, 1, 1, v61);
      v23 = 0;
      goto LABEL_16;
    }

    v30 = *(v19 + 8 * v29);
    ++v17;
    if (v30)
    {
      v23 = (v30 - 1) & v30;
      v26 = __clz(__rbit64(v30)) | (v29 << 6);
      v17 = v29;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t Published.init(wrappedValue:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 16))(&v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  Published.init(initialValue:)();
  return (*(v4 + 8))(a1, a2);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v7(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15GroupActivities11LinkManagerC10AttachmentVGMd, &_ss23_ContiguousArrayStorageCy15GroupActivities11LinkManagerC10AttachmentVGMR, type metadata accessor for LinkManager.Attachment);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR, MEMORY[0x1E69695A8]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMd, &_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMR, MEMORY[0x1E69E8450]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15GroupActivities0D14SessionJournalC10AttachmentVGMd, &_ss23_ContiguousArrayStorageCy15GroupActivities0D14SessionJournalC10AttachmentVGMR, type metadata accessor for GroupSessionJournal.Attachment);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15GroupActivities0D24SessionAttachmentManagerC0G0VGMd, &_ss23_ContiguousArrayStorageCy15GroupActivities0D24SessionAttachmentManagerC0G0VGMR, type metadata accessor for GroupSessionAttachmentManager.Attachment);
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3, char *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySccySay15GroupActivities0D14SessionJournalC10AttachmentVGSgs5NeverOGGMd, &_ss23_ContiguousArrayStorageCySccySay15GroupActivities0D14SessionJournalC10AttachmentVGSgs5NeverOGGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySccySay15GroupActivities0D24SessionAttachmentManagerC0G0VGSgs5NeverOGGMd, &_ss23_ContiguousArrayStorageCySccySay15GroupActivities0D24SessionAttachmentManagerC0G0VGSgs5NeverOGGMR);
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyScs12ContinuationVySo7CKShareCs5Error_p_GGMd, &_ss23_ContiguousArrayStorageCyScs12ContinuationVySo7CKShareCs5Error_p_GGMR);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVySo7CKShareCs5Error_p_GMd, &_sScs12ContinuationVySo7CKShareCs5Error_p_GMR) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVySo7CKShareCs5Error_p_GMd, &_sScs12ContinuationVySo7CKShareCs5Error_p_GMR) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15GroupActivities5TopicC14PendingMessage33_FCF72D66A10B9B1DA93469C1BA0E40A1LLVGMd, &_ss23_ContiguousArrayStorageCy15GroupActivities5TopicC14PendingMessage33_FCF72D66A10B9B1DA93469C1BA0E40A1LLVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCys6UInt64VGMd, &_ss23_ContiguousArrayStorageCys6UInt64VGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR, MEMORY[0x1E69695A8]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy15GroupActivities11ParticipantVGMd, &_ss23_ContiguousArrayStorageCy15GroupActivities11ParticipantVGMR, type metadata accessor for Participant);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy15GroupActivities19PresenceSessionInfoV11ParticipantVGMd, &_ss23_ContiguousArrayStorageCy15GroupActivities19PresenceSessionInfoV11ParticipantVGMR, type metadata accessor for PresenceSessionInfo.Participant);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy16CoreTransferable30ResolvedTransferRepresentationVGMd, &_ss23_ContiguousArrayStorageCy16CoreTransferable30ResolvedTransferRepresentationVGMR, MEMORY[0x1E6965C30]);
  *v3 = result;
  return result;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementOGMd, &_ss23_ContiguousArrayStorageCy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementOGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[112 * v8])
    {
      memmove(v12, v13, 112 * v8);
    }

    *(a4 + 2) = 0;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15GroupActivities27ActivityExternalParticipantVGMd, &_ss23_ContiguousArrayStorageCy15GroupActivities27ActivityExternalParticipantVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15GroupActivities17AddressableMemberVGMd, &_ss23_ContiguousArrayStorageCy15GroupActivities17AddressableMemberVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15GroupActivities5TopicC14PendingMessage33_FCF72D66A10B9B1DA93469C1BA0E40A1LLVGMd, &_ss23_ContiguousArrayStorageCy15GroupActivities5TopicC14PendingMessage33_FCF72D66A10B9B1DA93469C1BA0E40A1LLVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

size_t specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7Combine4JustVy15GroupActivities0F7SessionCyAF03AnyF8ActivityVGGGMd, &_ss23_ContiguousArrayStorageCy7Combine4JustVy15GroupActivities0F7SessionCyAF03AnyF8ActivityVGGGMR);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine4JustVy15GroupActivities0C7SessionCyAD03AnyC8ActivityVGGMd, &_s7Combine4JustVy15GroupActivities0C7SessionCyAD03AnyC8ActivityVGGMR) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine4JustVy15GroupActivities0C7SessionCyAD03AnyC8ActivityVGGMd, &_s7Combine4JustVy15GroupActivities0C7SessionCyAD03AnyC8ActivityVGGMR) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15GroupActivities18DownloadAttachment_pGMd, &_ss23_ContiguousArrayStorageCy15GroupActivities18DownloadAttachment_pGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities18DownloadAttachment_pMd, &_s15GroupActivities18DownloadAttachment_pMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t specialized _NativeDictionary.mapValues<A>(_:)(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v38 = a1;
  v39 = a2;
  v4 = type metadata accessor for InternalParticipant();
  v34 = *(v4 - 8);
  v5 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for PubSubTopic.Participant();
  v8 = *(v43 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys6UInt64V15GroupActivities19InternalParticipantVGMd, &_ss18_DictionaryStorageCys6UInt64V15GroupActivities19InternalParticipantVGMR);
  result = static _DictionaryStorage.copy(original:)();
  v12 = 0;
  v40 = a3;
  v41 = result;
  v15 = *(a3 + 64);
  v14 = a3 + 64;
  v13 = v15;
  v16 = 1 << *(v14 - 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v37 = v8;
  v35 = v8 + 16;
  v36 = (v8 + 8);
  v33 = result + 64;
  v20 = v42;
  v21 = v43;
  if (v18)
  {
    while (1)
    {
      v22 = __clz(__rbit64(v18));
      v44 = (v18 - 1) & v18;
LABEL_10:
      v25 = v22 | (v12 << 6);
      v26 = *(*(v40 + 48) + 8 * v25);
      (*(v37 + 16))(v20, *(v40 + 56) + *(v37 + 72) * v25, v21);
      v27 = v45;
      v38(v20);
      if (v27)
      {
        break;
      }

      v45 = 0;
      (*v36)(v20, v21);
      *(v33 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      v28 = v41;
      *(*(v41 + 48) + 8 * v25) = v26;
      result = outlined init with take of Participant(v7, *(v28 + 56) + *(v34 + 72) * v25, type metadata accessor for InternalParticipant);
      v29 = *(v28 + 16);
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_17;
      }

      *(v28 + 16) = v31;
      v18 = v44;
      v20 = v42;
      v21 = v43;
      if (!v44)
      {
        goto LABEL_5;
      }
    }

    (*v36)(v20, v21);
    v32 = v41;

    return v32;
  }

  else
  {
LABEL_5:
    v23 = v12;
    while (1)
    {
      v12 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v12 >= v19)
      {
        return v41;
      }

      v24 = *(v14 + 8 * v12);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v44 = (v24 - 1) & v24;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V3key_15GroupActivities19InternalParticipantV5valuetMd, &_ss6UInt64V3key_15GroupActivities19InternalParticipantV5valuetMR) + 48);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V_15GroupActivities19InternalParticipantVtMd, &_ss6UInt64V_15GroupActivities19InternalParticipantVtMR);
  v6 = *a1;
  result = outlined init with copy of Participant(a1 + v4, a2 + *(v5 + 48), type metadata accessor for InternalParticipant);
  *a2 = v6;
  return result;
}

uint64_t (*specialized Dictionary._Variant.subscript.modify(uint64_t *a1, uint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = specialized Dictionary._Variant.asNative.modify(v6);
  v6[9] = specialized _NativeDictionary.subscript.modify(v6 + 4, a2, isUniquelyReferenced_nonNull_native);
  return Dictionary._Variant.subscript.modifyspecialized ;
}

{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = specialized Dictionary._Variant.asNative.modify(v6);
  v6[9] = specialized _NativeDictionary.subscript.modify(v6 + 4, a2, isUniquelyReferenced_nonNull_native);
  return Dictionary._Variant.subscript.modifyspecialized ;
}

void (*specialized Dictionary._Variant.subscript.modify(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x68uLL);
  }

  v7 = v6;
  *a1 = v6;
  v8 = type metadata accessor for UUID();
  v7[8] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v7[9] = v9;
  if (v5)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(v9 + 64));
  }

  v12 = v11;
  v7[10] = v11;
  v13 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v10 + 16))(v12, a2, v8);
  v7[11] = specialized Dictionary._Variant.asNative.modify(v7);
  v7[12] = specialized _NativeDictionary.subscript.modify(v7 + 4, v12, isUniquelyReferenced_nonNull_native);
  return Dictionary._Variant.subscript.modifyspecialized ;
}

void Dictionary._Variant.subscript.modifyspecialized (uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v2(v1, 0);
  free(v3);

  free(v1);
}

{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*specialized _NativeDictionary.subscript.modify(void *a1, uint64_t a2, char a3))(uint64_t a1, char a2)
{
  v4 = v3;
  v8 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x60uLL);
  }

  v10 = v9;
  *a1 = v9;
  *v9 = a2;
  v9[1] = v3;
  v11 = type metadata accessor for InternalParticipant();
  v10[2] = v11;
  v12 = *(v11 - 8);
  v13 = v12;
  v10[3] = v12;
  v14 = *(v12 + 64);
  if (v8)
  {
    v10[4] = swift_coroFrameAlloc();
    v10[5] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v10[4] = malloc(*(v12 + 64));
    v10[5] = malloc(v14);
    v15 = malloc(v14);
  }

  v10[6] = v15;
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities19InternalParticipantVSgMd, &_s15GroupActivities19InternalParticipantVSgMR) - 8) + 64);
  if (v8)
  {
    v10[7] = swift_coroFrameAlloc();
    v10[8] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v10[7] = malloc(v16);
    v10[8] = malloc(v16);
    v17 = malloc(v16);
  }

  v18 = v17;
  v10[9] = v17;
  v19 = *v4;
  v20 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  *(v10 + 88) = v21 & 1;
  v22 = *(v19 + 16);
  v23 = (v21 & 1) == 0;
  v24 = __OFADD__(v22, v23);
  v25 = v22 + v23;
  if (v24)
  {
    __break(1u);
    goto LABEL_22;
  }

  v26 = v21;
  v27 = *(v19 + 24);
  if (v27 < v25 || (a3 & 1) == 0)
  {
    if (v27 >= v25 && (a3 & 1) == 0)
    {
      v28 = v20;
      specialized _NativeDictionary.copy()();
      v20 = v28;
      goto LABEL_17;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v25, a3 & 1);
    v29 = *v4;
    v20 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v26 & 1) == (v30 & 1))
    {
      goto LABEL_17;
    }

LABEL_22:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_17:
  v10[10] = v20;
  if (v26)
  {
    outlined init with take of Participant(*(*v4 + 56) + *(v13 + 72) * v20, v18, type metadata accessor for InternalParticipant);
    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  (*(v13 + 56))(v18, v31, 1, v11);
  return _NativeDictionary.subscript.modifyspecialized ;
}

void _NativeDictionary.subscript.modifyspecialized (uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  v4 = (*(*a1 + 24) + 48);
  v5 = *(*a1 + 72);
  if (a2)
  {
    v6 = *(v2 + 7);
    outlined init with copy of URL?(v5, v6, &_s15GroupActivities19InternalParticipantVSgMd, &_s15GroupActivities19InternalParticipantVSgMR);
    v7 = (*v4)(v6, 1, v3);
    v8 = *(v2 + 88);
    v9 = *(v2 + 7);
    if (v7 != 1)
    {
      v10 = *(v2 + 1);
      outlined init with take of Participant(v9, *(v2 + 5), type metadata accessor for InternalParticipant);
      v11 = *v10;
      v12 = *(v2 + 10);
      v13 = *(v2 + 5);
      if ((v8 & 1) == 0)
      {
LABEL_4:
        v14 = *(v2 + 4);
        v15 = *v2;
        outlined init with take of Participant(v13, v14, type metadata accessor for InternalParticipant);
        specialized _NativeDictionary._insert(at:key:value:)(v12, v15, v14, v11);
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v16 = *(v2 + 8);
    outlined init with copy of URL?(v5, v16, &_s15GroupActivities19InternalParticipantVSgMd, &_s15GroupActivities19InternalParticipantVSgMR);
    v17 = (*v4)(v16, 1, v3);
    v8 = *(v2 + 88);
    v9 = *(v2 + 8);
    if (v17 != 1)
    {
      v18 = *(v2 + 1);
      outlined init with take of Participant(v9, *(v2 + 6), type metadata accessor for InternalParticipant);
      v11 = *v18;
      v12 = *(v2 + 10);
      v13 = *(v2 + 6);
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      outlined init with take of Participant(v13, v11[7] + *(*(v2 + 3) + 72) * v12, type metadata accessor for InternalParticipant);
      goto LABEL_10;
    }
  }

  outlined destroy of NSObject?(v9, &_s15GroupActivities19InternalParticipantVSgMd, &_s15GroupActivities19InternalParticipantVSgMR);
  if (v8)
  {
    specialized _NativeDictionary._delete(at:)(*(v2 + 10), **(v2 + 1));
  }

LABEL_10:
  v19 = *(v2 + 8);
  v20 = *(v2 + 9);
  v22 = *(v2 + 6);
  v21 = *(v2 + 7);
  v24 = *(v2 + 4);
  v23 = *(v2 + 5);
  outlined destroy of NSObject?(v20, &_s15GroupActivities19InternalParticipantVSgMd, &_s15GroupActivities19InternalParticipantVSgMR);
  free(v20);
  free(v19);
  free(v21);
  free(v22);
  free(v23);
  free(v24);

  free(v2);
}

void (*specialized _NativeDictionary.subscript.modify(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  v8 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x48uLL);
  }

  v10 = v9;
  *a1 = v9;
  *(v9 + 16) = a2;
  *(v9 + 24) = v4;
  v11 = type metadata accessor for UUID();
  *(v10 + 32) = v11;
  v12 = *(v11 - 8);
  *(v10 + 40) = v12;
  if (v8)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v12 + 64));
  }

  *(v10 + 48) = v13;
  v14 = *v4;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  *(v10 + 64) = v16 & 1;
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_19;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      v23 = v15;
      specialized _NativeDictionary.copy()();
      v15 = v23;
      goto LABEL_14;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, a3 & 1);
    v24 = *v4;
    v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v21 & 1) == (v25 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v10 + 56) = v15;
  if (v21)
  {
    v26 = (*(*v4 + 56) + 16 * v15);
    v27 = *v26;
    v28 = v26[1];
  }

  else
  {
    v27 = 0;
    v28 = 0;
  }

  *v10 = v27;
  *(v10 + 8) = v28;
  return _NativeDictionary.subscript.modifyspecialized ;
}

{
  v4 = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 24) = a2;
  *(v8 + 32) = v3;
  v10 = *v3;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  *(v9 + 48) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_11;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a3 & 1);
    v20 = *v4;
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v17 & 1) == (v21 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 40) = v11;
  if (v17)
  {
    v22 = *(*v4 + 56) + 24 * v11;
    v23 = *v22;
    v24 = *(v22 + 8);
  }

  else
  {
    v23 = 0;
    v24 = 0uLL;
  }

  *v9 = v23;
  *(v9 + 8) = v24;
  return _NativeDictionary.subscript.modifyspecialized ;
}

void _NativeDictionary.subscript.modifyspecialized (uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = (*a1)[1];
  v4 = *(*a1 + 64);
  if (v3)
  {
    v5 = *v1[3];
    v6 = v1[7];
    if ((*a1)[8])
    {
      v7 = (v5[7] + 16 * v6);
      *v7 = v2;
      v7[1] = v3;
    }

    else
    {
      v10 = v1[6];
      (*(v1[5] + 16))(v10, v1[2], v1[4]);
      specialized _NativeDictionary._insert(at:key:value:)(v6, v10, v2, v3, v5);
    }
  }

  else if ((*a1)[8])
  {
    v8 = v1[7];
    v9 = *v1[3];
    (*(v1[5] + 8))(*(v9 + 48) + *(v1[5] + 72) * v8, v1[4]);
    specialized _NativeDictionary._delete(at:)(v8, v9);
  }

  v11 = v1[6];
  v12 = *v1;
  v13 = v1[1];
  outlined copy of SystemCoordinatorTable.Storage?(v2, v3);
  outlined consume of SystemCoordinatorTable.Storage?(v12, v13);
  free(v11);

  free(v1);
}

{
  v1 = *a1;
  v2 = **a1;
  v3 = (*a1)[1];
  v4 = (*a1)[2];
  v5 = *(*a1 + 48);
  if (v3)
  {
    v6 = v1[5];
    v7 = *v1[4];
    if (v5)
    {
      v8 = (v7[7] + 24 * v6);
      *v8 = v2;
      v8[1] = v3;
      v8[2] = v4;
    }

    else
    {
      specialized _NativeDictionary._insert(at:key:value:)(v6, v1[3], v2, v3, v4, v7);
    }
  }

  else if ((*a1)[6])
  {
    specialized _NativeDictionary._delete(at:)(v1[5], *v1[4]);
  }

  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  outlined copy of GroupSessionMessenger.MessageStreamStore.Storage?(v2, v3);
  outlined consume of GroupSessionMessenger.MessageStreamStore.Storage?(v9, v10);

  free(v1);
}

uint64_t (*specialized Dictionary._Variant.asNative.modify(void *a1))()
{
  *a1 = *v1;
  a1[1] = v1;
  return Dictionary._Variant.asNative.modifyspecialized ;
}

uint64_t (*specialized Dictionary._Variant.asNative.modify(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return Dictionary._Variant.asNative.modifyspecialized ;
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVys6UInt64V15GroupActivities19InternalParticipantVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab9VKXEfU_s6i4V_15j12Activities19lM4VTG5AMxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAiLIsgnndzo_Tf1nc_n04_ss6i3V15jvlm16VSbIgynd_AbESbs5X13_pIegnndzo_TRAiLSbIgynd_Tf1nnc_n(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = specialized closure #1 in _NativeDictionary.filter(_:)(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t specialized Set._subtract<A>(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11ParticipantVSgMd, &_s15GroupActivities11ParticipantVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v20 - v5;
  v7 = type metadata accessor for Participant();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = MEMORY[0x1EEE9AC00](v7 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a1 + 56);
    v16 = (v13 + 63) >> 6;

    for (i = 0; v15; result = outlined destroy of NSObject?(v6, &_s15GroupActivities11ParticipantVSgMd, &_s15GroupActivities11ParticipantVSgMR))
    {
      v18 = i;
LABEL_10:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      outlined init with copy of Participant(*(a1 + 48) + *(v8 + 72) * (v19 | (v18 << 6)), v12, type metadata accessor for Participant);
      specialized Set._Variant.remove(_:)(v12, v6);
      outlined destroy of Participant(v12, type metadata accessor for Participant);
    }

    while (1)
    {
      v18 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v18 >= v16)
      {
      }

      v15 = *(a1 + 56 + 8 * v18);
      ++i;
      if (v15)
      {
        i = v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized LazyMapSequence.Iterator.next()@<X0>(uint64_t a1@<X8>)
{
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V3key_15GroupActivities19InternalParticipantV5valuetMd, &_ss6UInt64V3key_15GroupActivities19InternalParticipantV5valuetMR);
  v3 = *(v45 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v43 = &v42 - v5;
  v6 = type metadata accessor for InternalParticipant();
  v44 = *(v6 - 8);
  v7 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V3key_15GroupActivities19InternalParticipantV5valuetSgMd, &_ss6UInt64V3key_15GroupActivities19InternalParticipantV5valuetSgMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v12);
  v17 = (&v42 - v16);
  v19 = *v1;
  v18 = v1[1];
  v21 = v1[2];
  v20 = v1[3];
  v22 = v1[4];
  v46 = v21;
  v47 = a1;
  if (v22)
  {
    v23 = v20;
LABEL_10:
    v27 = (v22 - 1) & v22;
    v28 = __clz(__rbit64(v22)) | (v23 << 6);
    v29 = *(*(v19 + 48) + 8 * v28);
    outlined init with copy of Participant(*(v19 + 56) + *(v44 + 72) * v28, v9, type metadata accessor for InternalParticipant);
    v30 = v45;
    v31 = *(v45 + 48);
    *v17 = v29;
    v32 = v9;
    v33 = v30;
    outlined init with take of Participant(v32, v17 + v31, type metadata accessor for InternalParticipant);
    (*(v3 + 56))(v17, 0, 1, v33);
    v26 = v23;
LABEL_11:
    *v1 = v19;
    v1[1] = v18;
    v1[2] = v46;
    v1[3] = v26;
    v1[4] = v27;
    v34 = v1[5];
    v35 = v1[6];
    outlined init with take of Date?(v17, v14, &_ss6UInt64V3key_15GroupActivities19InternalParticipantV5valuetSgMd, &_ss6UInt64V3key_15GroupActivities19InternalParticipantV5valuetSgMR);
    v36 = 1;
    v37 = (*(v3 + 48))(v14, 1, v33);
    v38 = v47;
    if (v37 != 1)
    {
      v39 = v14;
      v40 = v43;
      outlined init with take of Date?(v39, v43, &_ss6UInt64V3key_15GroupActivities19InternalParticipantV5valuetMd, &_ss6UInt64V3key_15GroupActivities19InternalParticipantV5valuetMR);
      v34(v40);
      outlined destroy of NSObject?(v40, &_ss6UInt64V3key_15GroupActivities19InternalParticipantV5valuetMd, &_ss6UInt64V3key_15GroupActivities19InternalParticipantV5valuetMR);
      v36 = 0;
    }

    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V_15GroupActivities19InternalParticipantVtMd, &_ss6UInt64V_15GroupActivities19InternalParticipantVtMR);
    return (*(*(v41 - 8) + 56))(v38, v36, 1, v41);
  }

  else
  {
    v24 = (v21 + 64) >> 6;
    if (v24 <= v20 + 1)
    {
      v25 = v20 + 1;
    }

    else
    {
      v25 = (v21 + 64) >> 6;
    }

    v26 = v25 - 1;
    while (1)
    {
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v23 >= v24)
      {
        v33 = v45;
        (*(v3 + 56))(&v42 - v16, 1, 1, v45);
        v27 = 0;
        goto LABEL_11;
      }

      v22 = *(v18 + 8 * v23);
      ++v20;
      if (v22)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in closure #1 in GroupSessionMessenger.receive<A>(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 1);
  v7 = *(a1 + 2);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities14PlaybackSyncerC7MessageV_AA0A16SessionMessengerC0E7ContextVtMd, &_s15GroupActivities14PlaybackSyncerC7MessageV_AA0A16SessionMessengerC0E7ContextVtMR) + 48);
  *a3 = v5;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7;
  outlined init with copy of Participant(a2, a3 + v8, type metadata accessor for GroupSessionMessenger.MessageContext);
  return outlined copy of Data._Representation(v6, v7);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR15GroupActivities17SystemCoordinatorCSg_TG5(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR15GroupActivities17SystemCoordinatorCSg_TG5TQ0_;

  return v6(v2 + 16);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR15GroupActivities17SystemCoordinatorCSg_TG5TQ0_()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v6 = *v0;

  *v3 = *(v1 + 16);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t specialized static InternalParticipant.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_21;
  }

  v4 = type metadata accessor for Participant();
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + v4[6]) != *(a2 + v4[6]))
  {
    goto LABEL_21;
  }

  v10 = v4[7];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = v13[1];
  if (v12)
  {
    if (!v14)
    {
      goto LABEL_21;
    }

    v15 = *v11 == *v13 && v12 == v14;
    if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (v14)
  {
    goto LABEL_21;
  }

  if (*(a1 + v4[8]) == *(a2 + v4[8]) && *(a1 + v4[9]) == *(a2 + v4[9]))
  {
    v16 = type metadata accessor for InternalParticipant();
    if (*(a1 + v16[5]) == *(a2 + v16[5]) && *(a1 + v16[6]) == *(a2 + v16[6]))
    {
      v17 = *(a1 + v16[7]) ^ *(a2 + v16[7]) ^ 1;
      return v17 & 1;
    }
  }

LABEL_21:
  v17 = 0;
  return v17 & 1;
}

uint64_t specialized GroupSession.$receivedDataPublisher.getter()
{
  v1 = direct field offset for GroupSession._receivedDataPublisher;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t specialized GroupSession.$receivedAttachmentPublisher.getter()
{
  v1 = direct field offset for GroupSession._receivedAttachmentPublisher;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t specialized GroupSession.$catchupNeededPublisher.getter()
{
  v1 = direct field offset for GroupSession._catchupNeededPublisher;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t specialized GroupSession.$state.setter(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 88);
  type metadata accessor for GroupSession.State();
  v5 = type metadata accessor for Published.Publisher();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  (*(v8 + 16))(&v11 - v7, a1);
  v9 = *(*v1 + 208);
  swift_beginAccess();
  type metadata accessor for Published();
  Published.projectedValue.setter();
  return swift_endAccess();
}

uint64_t GroupSession.invalidateIfWaiting()(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v10 = *(v17 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *(v2 + *(*v2 + 296));
  aBlock[4] = a1;
  v20 = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = a2;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v18 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27147B0](0, v13, v9, v14);
  _Block_release(v14);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v17);
}

void specialized GroupSession.activity.setter(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v11 - v6;
  v11[2] = v3;
  v12 = *(v8 + 88);
  v9 = v12;
  swift_getKeyPath();
  v11[0] = v3;
  v11[1] = v9;
  swift_getKeyPath();
  (*(v4 + 16))(v7, a1, v3);

  v10 = static Published.subscript.setter();
  GroupSession.activity.didset(v10);
}

id outlined copy of GroupSession<A>.State<A>(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

void outlined consume of GroupSession<A>.State<A>(id a1)
{
  if (a1 >= 2)
  {
  }
}

uint64_t specialized GroupSession.$activity.setter(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = type metadata accessor for Published.Publisher();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  (*(v7 + 16))(&v10 - v6, a1);
  v8 = *(*v1 + 216);
  swift_beginAccess();
  type metadata accessor for Published();
  Published.projectedValue.setter();
  return swift_endAccess();
}

uint64_t partial apply for closure #1 in GroupSession.setInternalActiveParticipants(to:)(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;

  *a1 = v3;
}

void partial apply for closure #2 in GroupSession.updateInternalActiveParticipants(_:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  closure #2 in GroupSession.updateInternalActiveParticipants(_:)();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t lazy protocol witness table accessor for type Participant and conformance Participant(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t partial apply for closure #3 in GroupSession.updateInternalActiveParticipants(_:)()
{
  v1 = *(v0 + 24);
  v2 = *(*(v0 + 16) + *(**(v0 + 16) + 392));
  return CurrentValueSubject.send(_:)();
}

uint64_t type metadata accessor for InternalParticipant()
{
  result = type metadata singleton initialization cache for InternalParticipant;
  if (!type metadata singleton initialization cache for InternalParticipant)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t specialized GroupSession.messageQueue.setter(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 88);
  v5 = type metadata accessor for GroupSession.MessageQueue();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v11 - v8;
  v11[2] = v3;
  v11[3] = v4;
  swift_getKeyPath();
  v11[0] = v3;
  v11[1] = v4;
  swift_getKeyPath();
  (*(v6 + 16))(v9, a1, v5);

  return static Published.subscript.setter();
}

uint64_t specialized GroupSession.$messageQueue.setter(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 88);
  type metadata accessor for GroupSession.MessageQueue();
  v5 = type metadata accessor for Published.Publisher();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  (*(v8 + 16))(&v11 - v7, a1);
  v9 = *(*v1 + 248);
  swift_beginAccess();
  type metadata accessor for Published();
  Published.projectedValue.setter();
  return swift_endAccess();
}

uint64_t specialized GroupSession.$internalState.setter(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 88);
  type metadata accessor for GroupSession.State();
  v5 = type metadata accessor for Published.Publisher();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  (*(v8 + 16))(&v11 - v7, a1);
  v9 = *(*v1 + 400);
  swift_beginAccess();
  type metadata accessor for Published();
  Published.projectedValue.setter();
  return swift_endAccess();
}

uint64_t partial apply for closure #1 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return closure #1 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)();
}

uint64_t partial apply for closure #2 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return closure #2 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)();
}

uint64_t partial apply for closure #5 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(uint64_t a1, void *a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return closure #5 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(a1, a2);
}

void partial apply for closure #6 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  specialized closure #6 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)();
}

uint64_t partial apply for closure #7 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  return closure #7 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(a1, a2, a3, a4);
}

uint64_t *partial apply for closure #9 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(uint64_t a1, unint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v9 = *(v4 + 16);
  v10 = *(v4 + 24);
  v11 = *(type metadata accessor for UUID() - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = *(v4 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #9 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(a1, a2, a3, a4, v4 + v12, v13);
}

uint64_t partial apply for closure #10 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return closure #10 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)();
}

uint64_t partial apply for closure #11 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return closure #11 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(a1);
}

uint64_t partial apply for closure #13 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return closure #13 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(a1);
}

uint64_t partial apply for closure #16 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return closure #16 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(a1);
}

void partial apply for closure #17 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for Participant() - 8);
  v6 = (*(v5 + 80) + 17) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for UUID() - 8);
  v9 = *(v2 + 16);
  v10 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  closure #17 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(a1, v9, v2 + v6, v10, a2);
}

uint64_t partial apply for closure #18 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return closure #18 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(a1, a2);
}

uint64_t partial apply for closure #19 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return closure #19 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(a1);
}

uint64_t partial apply for closure #22 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return closure #22 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(a1, v4, v5, v6);
}

uint64_t partial apply for closure #20 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  return closure #20 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(a1, *(v2 + 40), a2);
}

unint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = __CocoaSet.count.getter();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7Combine14AnyCancellableCGMd, &_ss11_SetStorageCy7Combine14AnyCancellableCGMR);
      result = static _SetStorage.allocate(capacity:)();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = __CocoaSet.count.getter();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v22 = v1 & 0xC000000000000001;
  v19 = v1 + 32;
  v20 = v1 & 0xFFFFFFFFFFFFFF8;
  v21 = v1;
  while (v22)
  {
    result = MEMORY[0x1B2714B30](v6, v1);
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_18:
    v10 = *(v3 + 40);
    type metadata accessor for AnyCancellable();
    lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x1E695BF10]);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v11 = -1 << *(v3 + 32);
    v12 = result & ~v11;
    v13 = v12 >> 6;
    v14 = *(v7 + 8 * (v12 >> 6));
    v15 = 1 << v12;
    if (((1 << v12) & v14) != 0)
    {
      v16 = ~v11;
      lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x1E695BF10]);
      do
      {
        v23 = *(*(v3 + 48) + 8 * v12);
        result = dispatch thunk of static Equatable.== infix(_:_:)();
        if (result)
        {

          v1 = v21;
          goto LABEL_11;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v7 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v1 = v21;
    }

    *(v7 + 8 * v13) = v15 | v14;
    *(*(v3 + 48) + 8 * v12) = v8;
    v17 = *(v3 + 16);
    v9 = __OFADD__(v17, 1);
    v18 = v17 + 1;
    if (v9)
    {
      goto LABEL_27;
    }

    *(v3 + 16) = v18;
LABEL_11:
    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v20 + 16))
  {
    goto LABEL_28;
  }

  v8 = *(v19 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in GroupSession.requestEncryptionKey(for:)()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  return GroupSession.invalidationBlock(execute:)(partial apply for closure #1 in closure #1 in GroupSession.requestEncryptionKey(for:));
}

uint64_t partial apply for thunk for @callee_guaranteed () -> ()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t partial apply for closure #1 in GroupSession.updateNearbyParticipants(_:)()
{
  v1 = v0[2];
  v2 = v0[3];
  return closure #1 in GroupSession.updateNearbyParticipants(_:)(v0[4], v0[5]);
}

uint64_t partial apply for closure #1 in GroupSession.translateSubscribedParticipants(_:isNearbyFaceTimeEnabled:)()
{
  if (*(*(v0 + 16) + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)();
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t specialized closure #1 in _NativeDictionary.filter(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, char *))
{
  v22 = a2;
  v26 = a4;
  v23 = a1;
  v5 = type metadata accessor for InternalParticipant();
  v25 = *(v5 - 8);
  v6 = *(v25 + 64);
  result = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = 0;
  v10 = 0;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 64);
  v14 = (v11 + 63) >> 6;
  while (v13)
  {
    v15 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_11:
    v18 = v15 | (v10 << 6);
    v19 = *(*(a3 + 48) + 8 * v18);
    outlined init with copy of Participant(*(a3 + 56) + *(v25 + 72) * v18, v9, type metadata accessor for InternalParticipant);
    LOBYTE(v19) = v26(v19, v9);
    result = outlined destroy of Participant(v9, type metadata accessor for InternalParticipant);
    if (v19)
    {
      *(v23 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      if (__OFADD__(v24++, 1))
      {
        __break(1u);
        return specialized _NativeDictionary.extractDictionary(using:count:)(v23, v22, v24, a3);
      }
    }
  }

  v16 = v10;
  while (1)
  {
    v10 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v10 >= v14)
    {
      return specialized _NativeDictionary.extractDictionary(using:count:)(v23, v22, v24, a3);
    }

    v17 = *(a3 + 64 + 8 * v10);
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v13 = (v17 - 1) & v17;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized _NativeDictionary.filter(_:)(uint64_t a1, uint64_t (*a2)(uint64_t, char *))
{
  v4 = a1;
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v8 = v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = specialized closure #1 in _NativeDictionary.filter(_:)(v8, v6, v4, a2);
    if (v2)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v11 = swift_slowAlloc();
  v12 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVys6UInt64V15GroupActivities19InternalParticipantVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab9VKXEfU_s6i4V_15j12Activities19lM4VTG5AMxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAiLIsgnndzo_Tf1nc_n04_ss6i3V15jvlm16VSbIgynd_AbESbs5X13_pIegnndzo_TRAiLSbIgynd_Tf1nnc_n(v11, v6, v4, a2);
  result = MEMORY[0x1B2715BA0](v11, -1, -1);
  if (!v2)
  {
    result = v12;
  }

LABEL_4:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v50 = type metadata accessor for InternalParticipant();
  v58 = *(v50 - 8);
  v10 = *(v58 + 64);
  v11 = MEMORY[0x1EEE9AC00](v50);
  v13 = v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v49 = v48 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = v48 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V_15GroupActivities19InternalParticipantVtSgMd, &_ss6UInt64V_15GroupActivities19InternalParticipantVtSgMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = (v48 - v20);
  v22 = -1 << *(a1 + 32);
  v23 = ~v22;
  v24 = *(a1 + 64);
  v25 = -v22;
  v51 = a1;
  v52 = a1 + 64;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  else
  {
    v26 = -1;
  }

  v53 = v23;
  v54 = 0;
  v55 = v26 & v24;
  v56 = a2;
  v57 = a3;

  v48[1] = a3;

  while (1)
  {
    specialized LazyMapSequence.Iterator.next()(v21);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V_15GroupActivities19InternalParticipantVtMd, &_ss6UInt64V_15GroupActivities19InternalParticipantVtMR);
    if ((*(*(v29 - 8) + 48))(v21, 1, v29) == 1)
    {
      outlined consume of [UUID : Conversation].Iterator._Variant();
    }

    v30 = *v21;
    outlined init with take of Participant(v21 + *(v29 + 48), v17, type metadata accessor for InternalParticipant);
    v31 = *a5;
    v33 = specialized __RawDictionaryStorage.find<A>(_:)(v30);
    v34 = v31[2];
    v35 = (v32 & 1) == 0;
    v36 = v34 + v35;
    if (__OFADD__(v34, v35))
    {
      break;
    }

    v37 = v32;
    if (v31[3] >= v36)
    {
      if (a4)
      {
        v41 = *a5;
        if ((v32 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        v41 = *a5;
        if ((v37 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

LABEL_15:
      v42 = *(v58 + 72) * v33;
      outlined init with copy of Participant(v41[7] + v42, v13, type metadata accessor for InternalParticipant);
      v43 = *(v50 + 24);
      if (v13[v43] != 1 || (v27 = v17, v17[v43] == 1))
      {
        v27 = v13;
      }

      v28 = v49;
      outlined init with copy of Participant(v27, v49, type metadata accessor for InternalParticipant);
      outlined destroy of Participant(v13, type metadata accessor for InternalParticipant);
      outlined destroy of Participant(v17, type metadata accessor for InternalParticipant);
      outlined assign with take of Participant(v28, v41[7] + v42, type metadata accessor for InternalParticipant);
      a4 = 1;
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v36, a4 & 1);
      v38 = *a5;
      v39 = specialized __RawDictionaryStorage.find<A>(_:)(v30);
      if ((v37 & 1) != (v40 & 1))
      {
        goto LABEL_24;
      }

      v33 = v39;
      v41 = *a5;
      if (v37)
      {
        goto LABEL_15;
      }

LABEL_19:
      v41[(v33 >> 6) + 8] |= 1 << v33;
      *(v41[6] + 8 * v33) = v30;
      outlined init with take of Participant(v17, v41[7] + *(v58 + 72) * v33, type metadata accessor for InternalParticipant);
      v44 = v41[2];
      v45 = __OFADD__(v44, 1);
      v46 = v44 + 1;
      if (v45)
      {
        goto LABEL_23;
      }

      v41[2] = v46;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC14CopresenceCore30ParticipantTranslationResponseC_Tt0g5Tf4g_n(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy14CopresenceCore30ParticipantTranslationResponseCGMd, &_ss11_SetStorageCy14CopresenceCore30ParticipantTranslationResponseCGMR);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = __CocoaSet.count.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v38 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v36 = v1;
    while (1)
    {
      v8 = MEMORY[0x1B2714B30](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = NSObject._rawHashValue(seed:)(*(v3 + 40));
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        type metadata accessor for ParticipantTranslationResponse();
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v36;
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v36;
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = *(v3 + 40);
      v24 = *(v1 + 32 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *(v6 + 8 * (v27 >> 6));
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        type metadata accessor for ParticipantTranslationResponse();
        while (1)
        {
          v32 = *(*(v3 + 48) + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {
            break;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *(v6 + 8 * (v27 >> 6));
          v30 = 1 << v27;
          if (((1 << v27) & v29) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v6 + 8 * v28) = v30 | v29;
        *(*(v3 + 48) + 8 * v27) = v24;
        v34 = *(v3 + 16);
        v9 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        *(v3 + 16) = v35;
      }

      if (++v22 == v38)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t partial apply for closure #1 in GroupSession.join()()
{
  v1 = *(type metadata accessor for SharePlayLatencyLogger.Interval() - 8);
  v2 = *(v0 + 32);
  v3 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return closure #1 in GroupSession.join()(v2, v3);
}

void partial apply for closure #1 in GroupSession.logAttachmentEvent(report:reportEvent:)()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  specialized closure #1 in GroupSession.logAttachmentEvent(report:reportEvent:)(v0[2]);
}

uint64_t outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
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

{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

uint64_t outlined copy of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

unint64_t lazy protocol witness table accessor for type GroupSessionErrors and conformance GroupSessionErrors()
{
  result = lazy protocol witness table cache variable for type GroupSessionErrors and conformance GroupSessionErrors;
  if (!lazy protocol witness table cache variable for type GroupSessionErrors and conformance GroupSessionErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupSessionErrors and conformance GroupSessionErrors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GroupSessionErrors and conformance GroupSessionErrors;
  if (!lazy protocol witness table cache variable for type GroupSessionErrors and conformance GroupSessionErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupSessionErrors and conformance GroupSessionErrors);
  }

  return result;
}

uint64_t specialized GroupSession<>.init(tuConversationActivitySession:groupUUID:initiatorHandle:localParticipantIdentifier:localParticipantHandle:unreliableMessengerConfig:topicManager:audioSessionAssertionManager:supportsSceneAssociation:requiresParticipantTranslation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(), uint64_t (*a8)(), uint64_t a9, uint64_t *a10, unsigned __int8 a11, unsigned __int8 a12)
{
  v388 = a8;
  v390 = a7;
  v371 = a6;
  v370 = a5;
  v387 = a4;
  v344 = a3;
  v393 = a2;
  v391 = a10;
  v394 = a9;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15GroupActivities03AnyD8ActivityV_GMd, &_s7Combine9PublishedV9PublisherVy15GroupActivities03AnyD8ActivityV_GMR);
  v368 = *(v13 - 8);
  v14 = *(v368 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v366 = &v309 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v367 = &v309 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v362 = &v309 - v20;
  v363 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_AA18PassthroughSubjectCySo22TUConversationActivityCs5NeverOG15GroupActivities03AnyjH0VGMd, &_s7Combine10PublishersO10CompactMapVy_AA18PassthroughSubjectCySo22TUConversationActivityCs5NeverOG15GroupActivities03AnyjH0VGMR);
  v361 = *(v363 - 8);
  v21 = *(v361 + 64);
  MEMORY[0x1EEE9AC00](v363);
  v360 = &v309 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AC10CompactMapVy_AA18PassthroughSubjectCySo22TUConversationActivityCs5NeverOG15GroupActivities03AnylJ0VGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AC10CompactMapVy_AA18PassthroughSubjectCySo22TUConversationActivityCs5NeverOG15GroupActivities03AnylJ0VGSo17OS_dispatch_queueCGMR);
  v365 = *(v23 - 8);
  v24 = *(v365 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v364 = &v309 - v25;
  v357 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO12HandleEventsVy_AA18PassthroughSubjectCy10Foundation4UUIDV_AH3URLV15GroupActivities11ParticipantVts5NeverOGGMd, &_s7Combine10PublishersO12HandleEventsVy_AA18PassthroughSubjectCy10Foundation4UUIDV_AH3URLV15GroupActivities11ParticipantVts5NeverOGGMR);
  v356 = *(v357 - 8);
  v26 = *(v356 + 64);
  MEMORY[0x1EEE9AC00](v357);
  v355 = &v309 - v27;
  v28 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v354 = *(v28 - 8);
  v29 = *(v354 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v353 = &v309 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v351 = type metadata accessor for OS_dispatch_queue.Attributes();
  v31 = *(*(v351 - 8) + 64);
  MEMORY[0x1EEE9AC00](v351);
  v352 = &v309 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for DispatchQoS();
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v350 = &v309 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v327 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GMd, &_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GMR);
  v326 = *(v327 - 8);
  v36 = *(v326 + 64);
  MEMORY[0x1EEE9AC00](v327);
  v324 = &v309 - v37;
  v329 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GSayAKGGMd, &_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GSayAKGGMR);
  v328 = *(v329 - 8);
  v38 = *(v328 + 64);
  MEMORY[0x1EEE9AC00](v329);
  v325 = &v309 - v39;
  v347 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVySay15GroupActivities11LinkManagerC10AttachmentVGGMd, &_s14CopresenceCore14CurrentSubjectVySay15GroupActivities11LinkManagerC10AttachmentVGGMR);
  v346 = *(v347 - 8);
  v40 = *(v346 + 64);
  MEMORY[0x1EEE9AC00](v347);
  v345 = &v309 - v41;
  v343 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVy15GroupActivities21AttachmentLedgerTopicCSgGMd, &_s14CopresenceCore14CurrentSubjectVy15GroupActivities21AttachmentLedgerTopicCSgGMR);
  v342 = *(v343 - 8);
  v42 = *(v342 + 64);
  MEMORY[0x1EEE9AC00](v343);
  v341 = &v309 - v43;
  v337 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15GroupActivities0C7SessionC12MessageQueueVyAD03AnyC8ActivityV_GGMd, &_s7Combine9PublishedVy15GroupActivities0C7SessionC12MessageQueueVyAD03AnyC8ActivityV_GGMR);
  v336 = *(v337 - 1);
  v44 = *(v336 + 64);
  MEMORY[0x1EEE9AC00](v337);
  v46 = &v309 - v45;
  v335 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionC12MessageQueueVyAA03AnyA8ActivityV_GMd, &_s15GroupActivities0A7SessionC12MessageQueueVyAA03AnyA8ActivityV_GMR);
  v47 = *(*(v335 - 8) + 64);
  v48 = MEMORY[0x1EEE9AC00](v335);
  v334 = &v309 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v333 = &v309 - v50;
  v332 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShy15GroupActivities11ParticipantVGGMd, &_s7Combine9PublishedVyShy15GroupActivities11ParticipantVGGMR);
  v331 = *(v332 - 8);
  v51 = *(v331 + 64);
  MEMORY[0x1EEE9AC00](v332);
  v330 = &v309 - v52;
  v373 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15GroupActivities0C7SessionC5StateOyAD03AnyC8ActivityV_GGMd, &_s7Combine9PublishedVy15GroupActivities0C7SessionC5StateOyAD03AnyC8ActivityV_GGMR);
  v340 = *(v373 - 8);
  v53 = *(v340 + 64);
  MEMORY[0x1EEE9AC00](v373);
  v372 = &v309 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionC10TimestampsVyAA03AnyA8ActivityV_GMd, &_s15GroupActivities0A7SessionC10TimestampsVyAA03AnyA8ActivityV_GMR);
  v56 = *(*(v55 - 8) + 64);
  MEMORY[0x1EEE9AC00](v55 - 8);
  v383 = &v309 - v57;
  v379 = type metadata accessor for Participant();
  v348 = *(v379 - 8);
  v58 = *(v348 + 64);
  v59 = MEMORY[0x1EEE9AC00](v379);
  v375 = &v309 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = MEMORY[0x1EEE9AC00](v59);
  v377 = &v309 - v62;
  v63 = MEMORY[0x1EEE9AC00](v61);
  v374 = &v309 - v64;
  v349 = v65;
  MEMORY[0x1EEE9AC00](v63);
  v380 = &v309 - v66;
  v376 = type metadata accessor for AnyGroupActivity(0);
  v67 = *(*(v376 - 8) + 64);
  v68 = MEMORY[0x1EEE9AC00](v376);
  v338 = &v309 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = MEMORY[0x1EEE9AC00](v68);
  v339 = &v309 - v71;
  MEMORY[0x1EEE9AC00](v70);
  v389 = &v309 - v72;
  v73 = type metadata accessor for UUID();
  v74 = *(v73 - 8);
  v75 = *(v74 + 64);
  v76 = MEMORY[0x1EEE9AC00](v73);
  v359 = &v309 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = MEMORY[0x1EEE9AC00](v76);
  v386 = &v309 - v79;
  v80 = MEMORY[0x1EEE9AC00](v78);
  v385 = &v309 - v81;
  v82 = MEMORY[0x1EEE9AC00](v80);
  v395 = &v309 - v83;
  v358 = v84;
  MEMORY[0x1EEE9AC00](v82);
  v401 = &v309 - v85;
  v381 = type metadata accessor for AnyGroupActivity.MetadataProvider(0);
  v86 = *(*(v381 - 1) + 64);
  v87 = MEMORY[0x1EEE9AC00](v381);
  v89 = &v309 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v87);
  v91 = &v309 - v90;
  v92 = [a1 endpoint];
  if (v92)
  {
    v320 = v46;
    v93 = v393;
    v369 = v92;
    v384 = v74;
    v323 = v13;
    v392 = v73;
    v378 = a1;
    v94 = [a1 activity];
    v95 = [v94 metadata];

    v322 = v23;
    v321 = v28;
    if (v95)
    {
      GroupActivityMetadata.init(_:)(v95, v91);
      v96 = v91;
      v97 = v395;
      v98 = v384;
      v99 = v93;
    }

    else
    {
      if (one-time initialization token for generic != -1)
      {
        swift_once();
      }

      v101 = type metadata accessor for GroupActivityMetadata.ActivityType(0);
      v102 = __swift_project_value_buffer(v101, static GroupActivityMetadata.ActivityType.generic);
      outlined init with copy of Participant(v102, v91, type metadata accessor for GroupActivityMetadata.ActivityType);
      v103 = type metadata accessor for GroupActivityMetadata(0);
      v104 = &v91[v103[5]];
      *v104 = 0;
      *(v104 + 1) = 0;
      v105 = &v91[v103[6]];
      *v105 = 0;
      *(v105 + 1) = 0;
      *&v91[v103[7]] = 0;
      v106 = v103[8];
      v107 = type metadata accessor for URL();
      v108 = *(*(v107 - 8) + 56);
      v108(&v91[v106], 1, 1, v107);
      *&v91[v103[9]] = 0;
      v91[v103[10]] = dyld_program_sdk_at_least() ^ 1;
      v108(&v91[v103[11]], 1, 1, v107);
      v109 = &v91[v103[12]];
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v110 = qword_1EDADC9F0;
      v111 = qword_1EDADCA08;
      *v109 = static SceneAssociationBehavior.default;
      *(v109 + 1) = v110;
      *(v109 + 1) = xmmword_1EDADC9F8;
      *(v109 + 4) = v111;
      v91[v103[13]] = 0;
      *&v91[v103[14]] = 2;

      v99 = v393;
      v96 = v91;
      v97 = v395;
      v98 = v384;
    }

    swift_storeEnumTagMultiPayload();
    v112 = v378;
    v113 = [v378 UUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v114 = *(v98 + 16);
    v115 = v97;
    v116 = v392;
    v114(v115, v99, v392);
    v117 = [v112 activity];
    outlined init with copy of Participant(v96, v89, type metadata accessor for AnyGroupActivity.MetadataProvider);
    v118 = v382;
    AnyGroupActivity.init(tuConversationActivity:metadataProvider:)(v117, v89, v389);
    if (v118)
    {

      __swift_destroy_boxed_opaque_existential_0(v391);
      a1 = *(v98 + 8);
      (a1)(v99, v116);
      (a1)(v395, v116);
      (a1)(v401, v116);
      outlined destroy of Participant(v96, type metadata accessor for AnyGroupActivity.MetadataProvider);
    }

    else
    {
      v381 = v114;
      v382 = v98 + 16;
      v318 = 0;
      v319 = v96;
      v317 = [v112 isLocallyInitiated];
      v316 = [v112 isLightweightPrimaryInitiated];
      v119 = v380;
      v120 = v370;
      UUID.init(_:)();
      v121 = v379;
      *(v119 + *(v379 + 24)) = v120;
      v122 = (v119 + v121[5]);
      v123 = v390;
      *v122 = v371;
      v122[1] = v123;
      *(v119 + v121[8]) = 0;
      v124 = (v119 + v121[7]);
      *v124 = 0;
      v124[1] = 0;
      *(v119 + v121[9]) = 0;
      v315 = [v112 isFirstJoin];
      v314 = [v112 distributionCount];
      v125 = [v112 persistentSceneIdentifier];
      if (v125)
      {
        v126 = v125;
        v313 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v312 = v127;
      }

      else
      {
        v313 = 0;
        v312 = 0;
      }

      v128 = v373;
      v129 = v340;
      v130 = v372;
      outlined init with copy of Transferable(v391, &v400);
      v378 = v378;
      _s15GroupActivities0A7SessionC10TimestampsV08activityC0AEyx_GSo022TUConversationActivityC0C_tcfCAA03AnyaG0V_Tt1g5(v378, v383);
      v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionCyAA03AnyA8ActivityVGMd, &_s15GroupActivities0A7SessionCyAA03AnyA8ActivityVGMR);
      v132 = *(v131 + 48);
      v133 = *(v131 + 52);
      a1 = swift_allocObject();
      *(a1 + direct field offset for GroupSession.playbackSyncerLink) = 0;
      *(a1 + direct field offset for GroupSession.playbackSyncMessenger) = 0;
      *(a1 + direct field offset for GroupSession.attachmentDownloadBytes) = 0;
      *(a1 + direct field offset for GroupSession.attachmentUploadBytes) = 0;
      *(a1 + direct field offset for GroupSession.attachmentDownloadTime) = 0;
      *(a1 + direct field offset for GroupSession.attachmentUploadTime) = 0;
      v134 = (a1 + direct field offset for GroupSession.receivedDataHandler);
      *v134 = 0;
      v134[1] = 0;
      v135 = (a1 + direct field offset for GroupSession._receivedDataPublisher);
      v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy10Foundation4DataV_15GroupActivities11ParticipantVAG15SendReliabilityOts5NeverOGMd, &_s7Combine18PassthroughSubjectCy10Foundation4DataV_15GroupActivities11ParticipantVAG15SendReliabilityOts5NeverOGMR);
      v137 = *(v136 + 48);
      v138 = *(v136 + 52);
      swift_allocObject();
      *v135 = PassthroughSubject.init()();
      v135[1] = 0;
      v139 = (a1 + direct field offset for GroupSession._receivedAttachmentPublisher);
      v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy10Foundation4UUIDV_AD3URLV15GroupActivities11ParticipantVts5NeverOGMd, &_s7Combine18PassthroughSubjectCy10Foundation4UUIDV_AD3URLV15GroupActivities11ParticipantVts5NeverOGMR);
      v141 = *(v140 + 48);
      v142 = *(v140 + 52);
      v340 = v140;
      swift_allocObject();
      *v139 = PassthroughSubject.init()();
      v139[1] = 0;
      v143 = (a1 + direct field offset for GroupSession._catchupNeededPublisher);
      v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy15GroupActivities11ParticipantVs5NeverOGMd, &_s7Combine18PassthroughSubjectCy15GroupActivities11ParticipantVs5NeverOGMR);
      v145 = *(v144 + 48);
      v146 = *(v144 + 52);
      swift_allocObject();
      *v143 = PassthroughSubject.init()();
      v143[1] = 0;
      v147 = *(*a1 + 208);
      v396 = 0;
      v311 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionC5StateOyAA03AnyA8ActivityV_GMd, &_s15GroupActivities0A7SessionC5StateOyAA03AnyA8ActivityV_GMR);
      Published.init(initialValue:)();
      v310 = *(v129 + 32);
      v310(a1 + v147, v130, v128);
      v148 = *(*a1 + 224);
      v149 = MEMORY[0x1E69E7CD0];
      v396 = MEMORY[0x1E69E7CD0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy15GroupActivities11ParticipantVGMd, &_sShy15GroupActivities11ParticipantVGMR);
      v150 = v330;
      Published.init(initialValue:)();
      (*(v331 + 32))(a1 + v148, v150, v332);
      v151 = (a1 + *(*a1 + 232));
      *v151 = 0;
      v151[1] = 0;
      v332 = v151;
      v152 = *(*a1 + 248);
      v153 = v333;
      PubSubTopic.QueueState.init()();
      outlined init with copy of URL?(v153, v334, &_s15GroupActivities0A7SessionC12MessageQueueVyAA03AnyA8ActivityV_GMd, &_s15GroupActivities0A7SessionC12MessageQueueVyAA03AnyA8ActivityV_GMR);
      v154 = v320;
      Published.init(initialValue:)();
      outlined destroy of NSObject?(v153, &_s15GroupActivities0A7SessionC12MessageQueueVyAA03AnyA8ActivityV_GMd, &_s15GroupActivities0A7SessionC12MessageQueueVyAA03AnyA8ActivityV_GMR);
      (*(v336 + 32))(a1 + v152, v154, v337);
      v337 = (a1 + *(*a1 + 304));
      *v337 = 0;
      v155 = v389;
      v156 = v394;
      v157 = v381;
      if (MEMORY[0x1E69E7CC0] >> 62 && __CocoaSet.count.getter())
      {
        v149 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      }

      *(a1 + *(*a1 + 312)) = v149;
      *(a1 + *(*a1 + 328)) = 0;
      v158 = *(*a1 + 336);
      v159 = type metadata accessor for SharePlayLatencyLogger.Interval();
      (*(*(v159 - 8) + 56))(a1 + v158, 1, 1, v159);
      *(a1 + *(*a1 + 344)) = 0;
      *(a1 + *(*a1 + 368)) = 0;
      *(a1 + *(*a1 + 376)) = 0;
      v160 = (a1 + *(*a1 + 384));
      v161 = MEMORY[0x1E69E7CC0];
      v162 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_15GroupActivities19InternalParticipantVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      *v160 = 0;
      *(v160 + 1) = v162;
      v163 = *(*a1 + 392);
      v396 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_15GroupActivities19InternalParticipantVTt0g5Tf4g_n(v161);
      v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySDys6UInt64V15GroupActivities19InternalParticipantVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySDys6UInt64V15GroupActivities19InternalParticipantVGs5NeverOGMR);
      v165 = *(v164 + 48);
      v166 = *(v164 + 52);
      swift_allocObject();
      *(a1 + v163) = CurrentValueSubject.init(_:)();
      v167 = *(*a1 + 400);
      v396 = 0;
      v168 = v372;
      Published.init(initialValue:)();
      v310(a1 + v167, v168, v373);
      v169 = (a1 + *(*a1 + 416));
      *v169 = 0;
      v169[1] = 0;
      *(a1 + *(*a1 + 424)) = 0;
      v170 = v401;
      v157(a1 + direct field offset for GroupSession.id, v401, v392);
      v171 = v374;
      UUID.init()();
      v172 = v379;
      v173 = (v171 + *(v379 + 20));
      v174 = v387;
      *v173 = v344;
      v173[1] = v174;
      *(v171 + v172[6]) = 0;
      *(v171 + v172[8]) = 0;
      v175 = (v171 + v172[7]);
      *v175 = 0;
      v175[1] = 0;
      *(v171 + v172[9]) = 0;
      outlined init with take of Participant(v171, a1 + direct field offset for GroupSession.initiator, type metadata accessor for Participant);
      v176 = v155;
      v177 = v339;
      outlined init with copy of Participant(v176, v339, type metadata accessor for AnyGroupActivity);
      v178 = *(*a1 + 216);
      swift_beginAccess();
      outlined init with copy of Participant(v177, v338, type metadata accessor for AnyGroupActivity);
      Published.init(initialValue:)();
      outlined destroy of Participant(v177, type metadata accessor for AnyGroupActivity);
      swift_endAccess();
      *(a1 + direct field offset for GroupSession.topicManager) = v156;

      v179 = UUID.uuidString.getter();
      v181 = (*(*v156 + 248))(v395, v179, v180);

      if ([*(v156 + OBJC_IVAR____TtC15GroupActivities12TopicManager_featureFlags) nearbyFaceTimeEnabled])
      {
        v182 = v377;
        *(v377 + v172[6]) = v370;
        v183 = v390;

        UUID.init(_:)();
        v184 = (v182 + v172[5]);
        *v184 = v371;
        v184[1] = v183;
        v185 = (v182 + v172[7]);
        *v185 = 0;
        v185[1] = 0;
        *(v182 + v172[8]) = 1;
        *(v182 + v172[9]) = 0;
      }

      else
      {
        v182 = v377;
        outlined init with copy of Participant(v380, v377, type metadata accessor for Participant);
      }

      v186 = v375;
      v187 = v392;
      v157(v385, v170, v392);
      v157(v386, v395, v187);
      outlined init with copy of Participant(v182, v186, type metadata accessor for Participant);
      v188 = objc_allocWithZone(MEMORY[0x1E6997708]);

      v390 = v388;
      v189 = [v188 init];
      v190 = type metadata accessor for LinkManager(0);
      v191 = objc_allocWithZone(v190);
      v192 = OBJC_IVAR____TtC15GroupActivities11LinkManager_lock;
      *&v191[v192] = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
      *&v191[OBJC_IVAR____TtC15GroupActivities11LinkManager_unreliableMessenger] = 0;
      v193 = OBJC_IVAR____TtC15GroupActivities11LinkManager__attachmentLedgerTopic;
      v396 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities21AttachmentLedgerTopicCSgMd, &_s15GroupActivities21AttachmentLedgerTopicCSgMR);
      v194 = v341;
      CurrentSubject.init(wrappedValue:)();
      (*(v342 + 32))(&v191[v193], v194, v343);
      *&v191[OBJC_IVAR____TtC15GroupActivities11LinkManager_pendingLocalAttachments] = MEMORY[0x1E69E7CC8];
      v195 = OBJC_IVAR____TtC15GroupActivities11LinkManager__attachments;
      v196 = MEMORY[0x1E69E7CC0];
      v396 = MEMORY[0x1E69E7CC0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15GroupActivities11LinkManagerC10AttachmentVGMd, &_sSay15GroupActivities11LinkManagerC10AttachmentVGMR);
      v197 = v345;
      CurrentSubject.init(wrappedValue:)();
      (*(v346 + 32))(&v191[v195], v197, v347);
      if (v196 >> 62 && __CocoaSet.count.getter())
      {
        v198 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      }

      else
      {
        v198 = MEMORY[0x1E69E7CD0];
      }

      v199 = v381;
      v200 = v386;
      v201 = v392;
      LODWORD(v372) = a12;
      LODWORD(v371) = a11;
      *&v191[OBJC_IVAR____TtC15GroupActivities11LinkManager_cancellables] = v198;
      v191[OBJC_IVAR____TtC15GroupActivities11LinkManager_state] = 0;
      v191[OBJC_IVAR____TtC15GroupActivities11LinkManager_hasConnectedOnce] = 0;
      v202 = &v191[OBJC_IVAR____TtC15GroupActivities11LinkManager_receivedDataHandler];
      *v202 = 0;
      v202[1] = 0;
      v203 = &v191[OBJC_IVAR____TtC15GroupActivities11LinkManager_onFirstConnectedHandler];
      *v203 = 0;
      v203[1] = 0;
      v204 = &v191[OBJC_IVAR____TtC15GroupActivities11LinkManager_invalidationHandler];
      *v204 = 0;
      v204[1] = 0;
      v205 = &v191[OBJC_IVAR____TtC15GroupActivities11LinkManager_requestEncryptionKeysHandler];
      *v205 = 0;
      v205[1] = 0;
      v199(&v191[OBJC_IVAR____TtC15GroupActivities11LinkManager_identifier], v385, v201);
      v199(&v191[OBJC_IVAR____TtC15GroupActivities11LinkManager_groupUUID], v200, v201);
      *&v191[OBJC_IVAR____TtC15GroupActivities11LinkManager_topic] = v181;
      v206 = v181;
      v207 = v375;
      outlined init with copy of Participant(v375, &v191[OBJC_IVAR____TtC15GroupActivities11LinkManager_localParticipant], type metadata accessor for Participant);
      v208 = v390;
      *&v191[OBJC_IVAR____TtC15GroupActivities11LinkManager_unreliableMessengerConfig] = v390;
      *&v191[OBJC_IVAR____TtC15GroupActivities11LinkManager_featureFlags] = v189;
      v399.receiver = v191;
      v399.super_class = v190;

      v390 = v208;
      v388 = v189;
      v209 = objc_msgSendSuper2(&v399, sel_init);
      v210 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v211 = v374;
      outlined init with copy of Participant(v207, v374, type metadata accessor for Participant);
      v212 = (*(v348 + 80) + 24) & ~*(v348 + 80);
      v213 = swift_allocObject();
      *(v213 + 16) = v210;
      outlined init with take of Participant(v211, v213 + v212, type metadata accessor for Participant);
      v214 = *(*v206 + 336);
      v215 = v209;

      v214(closure #1 in LinkManager.init(identifier:groupUUID:topicManager:topic:localParticipant:unreliableMessengerConfig:featureFlags:)partial apply, v213);

      if ([v388 unreliableMessengerEnabled])
      {
        v216 = UUID.uuidString.getter();
        v218 = v217;
        v219 = *(v207 + *(v379 + 24));
        v220 = lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type LinkManager and conformance LinkManager, type metadata accessor for LinkManager);
        v221 = (*(*v394 + 256))(v386, v216, v218, v219, v390, v215, v220);

        v223 = v324;
        (*(*v206 + 448))(v222);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt64VGMd, &_sSays6UInt64VGMR);
        lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Published<[UInt64 : PubSubTopic.Participant]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GMd, &_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GMR);
        v224 = v325;
        v225 = v327;
        Publisher.map<A>(_:)();
        (*(v326 + 8))(v223, v225);
        v226 = UnreliableMessenger.$activeReliableSubscribers.modify();
        lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Map<Published<[UInt64 : PubSubTopic.Participant]>.Publisher, [UInt64]> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GSayAKGGMd, &_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GSayAKGGMR);
        v227 = v329;
        Publisher<>.assign(to:)();
        (*(v328 + 8))(v224, v227);
        v226(&v396, 0);
        v228 = *&v215[OBJC_IVAR____TtC15GroupActivities11LinkManager_unreliableMessenger];
        *&v215[OBJC_IVAR____TtC15GroupActivities11LinkManager_unreliableMessenger] = v221;
      }

      v229 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v230 = *v206;
      v373 = v206;
      v231 = *(v230 + 360);

      v231(closure #3 in LinkManager.init(identifier:groupUUID:topicManager:topic:localParticipant:unreliableMessengerConfig:featureFlags:)partial apply, v229);

      v388 = type metadata accessor for Participant;
      outlined destroy of Participant(v207, type metadata accessor for Participant);
      v232 = *(v384 + 8);
      v379 = v232;
      v387 = v384 + 8;
      v233 = v392;
      v232(v386, v392);
      v232(v385, v233);

      *(a1 + direct field offset for GroupSession.linkManager) = v215;
      v385 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
      static DispatchQoS.unspecified.getter();
      v396 = MEMORY[0x1E69E7CC0];
      lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v354 + 104))(v353, *MEMORY[0x1E69E8090], v321);
      *(a1 + *(*a1 + 296)) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v234 = v337;
      swift_beginAccess();
      v235 = *v234;
      *v234 = 0;

      v236 = v369;
      *(a1 + *(*a1 + 256)) = v369;
      outlined init with copy of URL?(v383, a1 + *(*a1 + 240), &_s15GroupActivities0A7SessionC10TimestampsVyAA03AnyA8ActivityV_GMd, &_s15GroupActivities0A7SessionC10TimestampsVyAA03AnyA8ActivityV_GMR);
      *(a1 + *(*a1 + 264)) = v317;
      *(a1 + *(*a1 + 272)) = v316;
      *(a1 + *(*a1 + 280)) = v315;
      *(a1 + *(*a1 + 408)) = v314;
      v237 = v332;
      swift_beginAccess();
      v238 = v237[1];
      v239 = v312;
      *v237 = v313;
      v237[1] = v239;
      v240 = v236;

      outlined init with copy of Transferable(&v400, a1 + *(*a1 + 320));
      *(a1 + *(*a1 + 352)) = v371 & 1;
      *(a1 + *(*a1 + 360)) = v372 & 1;
      type metadata accessor for ActivitySessionClientConnection();
      v386 = v240;
      v241 = XPCClient.__allocating_init(listenerEndpoint:)();
      v242 = *(*a1 + 288);
      *(a1 + v242) = v241;
      v243 = (a1 + direct field offset for GroupSession._receivedAttachmentPublisher);
      swift_beginAccess();
      v398 = *v243;
      swift_allocObject();
      swift_weakInit();
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type PassthroughSubject<(UUID, URL, Participant), Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCy10Foundation4UUIDV_AD3URLV15GroupActivities11ParticipantVts5NeverOGMd, &_s7Combine18PassthroughSubjectCy10Foundation4UUIDV_AD3URLV15GroupActivities11ParticipantVts5NeverOGMR);

      v244 = v355;
      Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.HandleEvents<PassthroughSubject<(UUID, URL, Participant), Never>> and conformance Publishers.HandleEvents<A>, &_s7Combine10PublishersO12HandleEventsVy_AA18PassthroughSubjectCy10Foundation4UUIDV_AH3URLV15GroupActivities11ParticipantVts5NeverOGGMd, &_s7Combine10PublishersO12HandleEventsVy_AA18PassthroughSubjectCy10Foundation4UUIDV_AH3URLV15GroupActivities11ParticipantVts5NeverOGGMR);
      v245 = v357;
      v246 = Publisher.eraseToAnyPublisher()();
      (*(v356 + 8))(v244, v245);
      v247 = v243[1];
      v243[1] = v246;

      swift_beginAccess();
      v248 = *(a1 + v242);
      swift_allocObject();
      swift_weakInit();
      v249 = v248;

      ActivitySessionClientConnection.serverDisconnectedCallback.setter();

      v250 = *(a1 + v242);
      swift_allocObject();
      swift_weakInit();
      v251 = v250;

      ActivitySessionClientConnection.setAssociatedSceneCallback.setter();

      v252 = *(a1 + v242);
      swift_allocObject();
      swift_weakInit();
      v253 = v252;

      ActivitySessionClientConnection.setExternalParticipantsCallback.setter();

      v254 = *(a1 + v242);
      swift_allocObject();
      swift_weakInit();
      v255 = v254;

      ActivitySessionClientConnection.setStateCallback.setter();

      v256 = *(a1 + v242);
      swift_allocObject();
      swift_weakInit();
      v257 = v256;

      ActivitySessionClientConnection.setDataCryptorCallback.setter();

      v258 = *(a1 + v242);
      swift_allocObject();
      swift_weakInit();
      v259 = v258;

      ActivitySessionClientConnection.receivedResourceCallback.setter();

      v260 = *(a1 + v242);
      v261 = ActivitySessionClientConnection.setActivityPublisher.getter();

      v397 = v261;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCySo22TUConversationActivityCs5NeverOGMd, &_s7Combine18PassthroughSubjectCySo22TUConversationActivityCs5NeverOGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type PassthroughSubject<TUConversationActivity, Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCySo22TUConversationActivityCs5NeverOGMd, &_s7Combine18PassthroughSubjectCySo22TUConversationActivityCs5NeverOGMR);
      v262 = v360;
      Publisher.compactMap<A>(_:)();

      v397 = *(a1 + *(*a1 + 296));
      v263 = v397;
      v264 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
      v265 = v362;
      (*(*(v264 - 8) + 56))(v362, 1, 1, v264);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.CompactMap<PassthroughSubject<TUConversationActivity, Never>, AnyGroupActivity> and conformance Publishers.CompactMap<A, B>, &_s7Combine10PublishersO10CompactMapVy_AA18PassthroughSubjectCySo22TUConversationActivityCs5NeverOG15GroupActivities03AnyjH0VGMd, &_s7Combine10PublishersO10CompactMapVy_AA18PassthroughSubjectCySo22TUConversationActivityCs5NeverOG15GroupActivities03AnyjH0VGMR);
      lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue();
      v266 = v263;
      v267 = v364;
      v268 = v363;
      Publisher.receive<A>(on:options:)();
      outlined destroy of NSObject?(v265, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

      (*(v361 + 8))(v262, v268);
      v269 = *(*a1 + 216);
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15GroupActivities03AnyC8ActivityVGMd, &_s7Combine9PublishedVy15GroupActivities03AnyC8ActivityVGMR);
      v270 = v367;
      Published.projectedValue.getter();
      swift_endAccess();
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Publishers.CompactMap<PassthroughSubject<TUConversationActivity, Never>, AnyGroupActivity>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AC10CompactMapVy_AA18PassthroughSubjectCySo22TUConversationActivityCs5NeverOG15GroupActivities03AnylJ0VGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AC10CompactMapVy_AA18PassthroughSubjectCySo22TUConversationActivityCs5NeverOG15GroupActivities03AnylJ0VGSo17OS_dispatch_queueCGMR);
      v271 = v322;
      Publisher<>.assign(to:)();
      (*(v365 + 8))(v267, v271);
      v272 = v368;
      v273 = v323;
      (*(v368 + 16))(v366, v270, v323);
      swift_beginAccess();
      Published.projectedValue.setter();
      swift_endAccess();
      (*(v272 + 8))(v270, v273);
      v385 = direct field offset for GroupSession.linkManager;
      v274 = *(a1 + direct field offset for GroupSession.linkManager);
      v275 = swift_allocObject();
      swift_weakInit();
      v276 = v359;
      v277 = v392;
      v381(v359, v401, v392);
      v278 = v384;
      v279 = (*(v384 + 80) + 16) & ~*(v384 + 80);
      v280 = (v358 + v279 + 7) & 0xFFFFFFFFFFFFFFF8;
      v281 = swift_allocObject();
      (*(v278 + 32))(v281 + v279, v276, v277);
      *(v281 + v280) = v275;
      v282 = MEMORY[0x1E69E7D40];
      v283 = *((*MEMORY[0x1E69E7D40] & *v274) + 0x1B8);

      v283(partial apply for specialized closure #9 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:), v281);

      v284 = v385;
      v285 = *&v385[a1];
      v286 = swift_allocObject();
      swift_weakInit();
      v287 = *((*v282 & *v285) + 0x1D0);
      v288 = v285;

      v287(partial apply for specialized closure #10 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:), v286);

      v289 = *&v284[a1];
      v290 = swift_allocObject();
      swift_weakInit();
      v291 = *((*v282 & *v289) + 0x200);
      v292 = v289;

      v291(partial apply for specialized closure #11 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:), v290);

      v293 = *&v284[a1];
      v294 = swift_allocObject();
      swift_weakInit();
      v295 = *((*v282 & *v293) + 0x1E8);
      v296 = v293;

      v295(partial apply for specialized closure #12 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:), v294);

      v297 = *&v284[a1];
      v298 = swift_allocObject();
      swift_weakInit();
      v299 = *((*v282 & *v297) + 0x218);
      v300 = v297;

      v299(partial apply for specialized closure #13 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:), v298);

      v301 = swift_allocObject();
      swift_weakInit();
      v302 = v373;
      v303 = *(*v373 + 528);

      v303(partial apply for specialized closure #14 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:), v301);

      v304 = swift_allocObject();
      swift_weakInit();

      v305 = *(*v302 + 552);

      v305(partial apply for specialized closure #15 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:), v304);

      __swift_destroy_boxed_opaque_existential_0(v391);
      v306 = v379;
      (v379)(v393, v277);
      v307 = v388;
      outlined destroy of Participant(v377, v388);
      outlined destroy of NSObject?(v383, &_s15GroupActivities0A7SessionC10TimestampsVyAA03AnyA8ActivityV_GMd, &_s15GroupActivities0A7SessionC10TimestampsVyAA03AnyA8ActivityV_GMR);
      __swift_destroy_boxed_opaque_existential_0(&v400);
      outlined destroy of Participant(v380, v307);
      outlined destroy of Participant(v389, type metadata accessor for AnyGroupActivity);
      v306(v395, v277);
      v306(v401, v277);
      outlined destroy of Participant(v319, type metadata accessor for AnyGroupActivity.MetadataProvider);
    }
  }

  else
  {

    lazy protocol witness table accessor for type GroupSessionErrors and conformance GroupSessionErrors();
    swift_allocError();
    *v100 = 4;
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_0(v391);
    (*(v74 + 8))(v393, v73);
  }

  return a1;
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo16NSURLResourceKeya_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo16NSURLResourceKeyaGMd, &_ss11_SetStorageCySo16NSURLResourceKeyaGMR);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v29 = v7;
      String.hash(into:)();
      v9 = Hasher._finalize()();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;
        if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t specialized GroupSession.__allocating_init(activitySession:publishQueue:)(uint64_t *a1, void *a2)
{
  v88 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionC10TimestampsVyAA03AnyA8ActivityV_GMd, &_s15GroupActivities0A7SessionC10TimestampsVyAA03AnyA8ActivityV_GMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v79 = &v70 - v6;
  v7 = *(v2 + 80);
  v8 = *(v2 + 88);
  v82 = v2;
  v96 = v8;
  v9 = v7;
  v90 = v7;
  v10 = type metadata accessor for GroupSession.Timestamps();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v81 = &v70 - v12;
  v13 = type metadata accessor for Participant();
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v80 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AnyGroupActivity(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v78 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v84 = &v70 - v22;
  v23 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v89 = &v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for UUID();
  v26 = *(v25 - 8);
  v27 = v26[8];
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = &v70 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v83 = v26;
  v31 = v26[2];
  v86 = &v70 - v32;
  v31();
  v77 = *(a1 + direct field offset for GroupSession.linkManager);
  v87 = v30;
  (v31)(v30, v77 + OBJC_IVAR____TtC15GroupActivities11LinkManager_groupUUID, v25);
  v33 = a1 + direct field offset for GroupSession.initiator;
  v34 = (a1 + direct field offset for GroupSession.initiator + *(v14 + 28));
  v35 = *v34;
  v36 = v34[1];
  v37 = objc_allocWithZone(MEMORY[0x1E6997710]);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v39 = MEMORY[0x1B2714130](v35, v36);
  v40 = [v37 initWithUUID:isa accountIdentifier:v39];

  [v40 _setParticipantIdentifier_];
  v41 = [v40 accountIdentifier];

  v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = v43;

  v93 = v17;
  v45 = lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type AnyGroupActivity and conformance AnyGroupActivity, type metadata accessor for AnyGroupActivity);
  v94 = v45;
  swift_getKeyPath();
  v91 = v17;
  v92 = v45;
  swift_getKeyPath();
  v46 = v84;
  static Published.subscript.getter();

  v47 = v85;
  GroupActivity.init(activity:)(v46, v90, v96, v89);
  if (v47)
  {

    v48 = v83[1];
    v48(v87, v25);
    v48(v86, v25);
  }

  else
  {
    v49 = *(*a1 + 256);
    v50 = swift_beginAccess();
    v51 = *(a1 + v49);
    MEMORY[0x1EEE9AC00](v50);
    KeyPath = swift_getKeyPath();
    v85 = v44;
    MEMORY[0x1EEE9AC00](KeyPath);
    swift_getKeyPath();
    v84 = v51;
    v53 = v78;
    static Published.subscript.getter();

    v54 = *(v53 + 8);
    v83 = *v53;
    v76 = v54;

    outlined destroy of Participant(v53, type metadata accessor for AnyGroupActivity);
    v55 = *a1;
    LODWORD(v78) = *(a1 + *(*a1 + 264));
    v75 = *(a1 + *(v55 + 272));
    v56 = v77;
    v57 = v80;
    outlined init with copy of Participant(v77 + OBJC_IVAR____TtC15GroupActivities11LinkManager_localParticipant, v80, type metadata accessor for Participant);
    v58 = *(*a1 + 280);
    swift_beginAccess();
    v74 = *(a1 + v58);
    v59 = *a1;
    v73 = *(a1 + *(*a1 + 408));
    v71 = *(v56 + OBJC_IVAR____TtC15GroupActivities11LinkManager_unreliableMessengerConfig);
    v60 = (a1 + *(v59 + 232));
    swift_beginAccess();
    v72 = *v60;
    v77 = v42;
    v61 = v60[1];
    v62 = *(a1 + direct field offset for GroupSession.topicManager);
    outlined init with copy of Transferable(a1 + *(*a1 + 320), v95);
    v63 = v79;
    outlined init with copy of URL?(a1 + *(*a1 + 240), v79, &_s15GroupActivities0A7SessionC10TimestampsVyAA03AnyA8ActivityV_GMd, &_s15GroupActivities0A7SessionC10TimestampsVyAA03AnyA8ActivityV_GMR);
    v64 = v81;
    GroupSession.Timestamps.init<A>(_:)(v63, v81);
    LOBYTE(v63) = *(a1 + *(*a1 + 352));
    v65 = *(a1 + *(*a1 + 360));
    v66 = *(v82 + 48);
    v67 = *(v82 + 52);
    v45 = swift_allocObject();
    v68 = v71;

    GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(v86, v87, v77, v85, v89, v84, v83, v76, v78, v75, v57, v74, v88, v73, v68, v72, v61, v62, v95, v64, v63, v65);
  }

  return v45;
}

void partial apply for closure #1 in GroupSession.sendResource(atURL:to:metadata:completion:)()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 64) + ((*(v1 + 80) + 40) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v3 = (v2 + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 32);
  v5 = *(v0 + v2);
  v6 = *(v0 + v3);
  v7 = *(v0 + v3 + 8);
  v8 = (v0 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  closure #1 in GroupSession.sendResource(atURL:to:metadata:completion:)(v4);
}

uint64_t partial apply for closure #1 in GroupSession.cleanUpPlaybackSyncer()()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return closure #1 in GroupSession.cleanUpPlaybackSyncer()();
}

uint64_t partial apply for closure #1 in GroupSession.registerPlaybackSyncerLink(_:)(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return closure #1 in GroupSession.registerPlaybackSyncerLink(_:)(a1);
}

uint64_t partial apply for closure #2 in GroupSession.registerPlaybackSyncerLink(_:)(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return closure #2 in GroupSession.registerPlaybackSyncerLink(_:)(a1);
}

uint64_t partial apply for closure #1 in GroupSession.GroupSessionPlaybackSyncerLink.init(groupSession:messenger:playbackSyncer:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  return closure #1 in GroupSession.GroupSessionPlaybackSyncerLink.init(groupSession:messenger:playbackSyncer:)();
}

uint64_t partial apply for closure #2 in GroupSession.GroupSessionPlaybackSyncerLink.init(groupSession:messenger:playbackSyncer:)(char *a1, uint64_t a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  v7 = v2[6];
  return closure #2 in GroupSession.GroupSessionPlaybackSyncerLink.init(groupSession:messenger:playbackSyncer:)(a1, a2);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed PlaybackSyncer.Message, @in_guaranteed GroupSessionMessenger.MessageContext) -> ()(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities14PlaybackSyncerC7MessageV_AA0A16SessionMessengerC0E7ContextVtMd, &_s15GroupActivities14PlaybackSyncerC7MessageV_AA0A16SessionMessengerC0E7ContextVtMR);
  return v4(a1, a1 + *(v5 + 48));
}

unint64_t lazy protocol witness table accessor for type Capabilities and conformance Capabilities()
{
  result = lazy protocol witness table cache variable for type Capabilities and conformance Capabilities;
  if (!lazy protocol witness table cache variable for type Capabilities and conformance Capabilities)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Capabilities and conformance Capabilities);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Capabilities and conformance Capabilities;
  if (!lazy protocol witness table cache variable for type Capabilities and conformance Capabilities)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Capabilities and conformance Capabilities);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Capabilities and conformance Capabilities;
  if (!lazy protocol witness table cache variable for type Capabilities and conformance Capabilities)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Capabilities and conformance Capabilities);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Capabilities and conformance Capabilities;
  if (!lazy protocol witness table cache variable for type Capabilities and conformance Capabilities)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Capabilities and conformance Capabilities);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ActivityExternalParticipant and conformance ActivityExternalParticipant()
{
  result = lazy protocol witness table cache variable for type ActivityExternalParticipant and conformance ActivityExternalParticipant;
  if (!lazy protocol witness table cache variable for type ActivityExternalParticipant and conformance ActivityExternalParticipant)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActivityExternalParticipant and conformance ActivityExternalParticipant);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ActivityExternalParticipantStatus and conformance ActivityExternalParticipantStatus()
{
  result = lazy protocol witness table cache variable for type ActivityExternalParticipantStatus and conformance ActivityExternalParticipantStatus;
  if (!lazy protocol witness table cache variable for type ActivityExternalParticipantStatus and conformance ActivityExternalParticipantStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActivityExternalParticipantStatus and conformance ActivityExternalParticipantStatus);
  }

  return result;
}

uint64_t keypath_set_263Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;

  return a5(v8);
}

uint64_t getEnumTagSinglePayload for GroupSessionErrors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GroupSessionErrors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for ActivityExternalParticipant(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t storeEnumTagSinglePayload for ActivityExternalParticipant(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActivityExternalParticipantStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ActivityExternalParticipantStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15GroupActivities0A7SessionC5StateOyx_G(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for GroupSession.State(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t type metadata completion function for GroupSession.GroupSessionPlaybackSyncerLink()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for InternalParticipant()
{
  result = type metadata accessor for Participant();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed UUID) -> (@out ())()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed UUID) -> ()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed PlaybackSyncer.Message, @in_guaranteed UUID) -> (@out ())()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed PlaybackSyncer.Message, @in_guaranteed UUID) -> ()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Error?) -> (@out ())(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ()(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Data, @in_guaranteed UInt64) -> (@out ())(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v8[0] = a1;
  v8[1] = a2;
  v7 = a3;
  return v4(v8, &v7);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed Data, @unowned UInt64) -> ()(void *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, a1[1], *a2);
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC15GroupActivities11ParticipantV_Tt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for Participant();
  v3 = *(v2 - 1);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v38 - v8;
  v10 = *(a1 + 16);
  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15GroupActivities11ParticipantVGMd, &_ss11_SetStorageCy15GroupActivities11ParticipantVGMR);
    v11 = static _SetStorage.allocate(capacity:)();
    v12 = 0;
    v39 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v40 = v10;
    v13 = *(v3 + 72);
    v38 = v11 + 56;
    while (1)
    {
      v42 = v12;
      outlined init with copy of Participant(v39 + v13 * v12, v9, type metadata accessor for Participant);
      v14 = *(v11 + 40);
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      dispatch thunk of Hashable.hash(into:)();
      v15 = &v9[v2[5]];
      v16 = *v15;
      v17 = *(v15 + 1);
      String.hash(into:)();
      v46 = *&v9[v2[6]];
      MEMORY[0x1B2715070]();
      v18 = &v9[v2[7]];
      v19 = *(v18 + 1);
      v44 = *v18;
      v45 = v19;
      if (v19)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v43 = v9[v2[8]];
      Hasher._combine(_:)(v43);
      v41 = v9[v2[9]];
      Hasher._combine(_:)(v41);
      v20 = Hasher._finalize()();
      v21 = -1 << *(v11 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      v24 = v38;
      v25 = *(v38 + 8 * (v22 >> 6));
      v26 = 1 << v22;
      if (((1 << v22) & v25) != 0)
      {
        break;
      }

LABEL_27:
      *(v24 + 8 * v23) = v25 | v26;
      result = outlined init with take of Participant(v9, *(v11 + 48) + v22 * v13, type metadata accessor for Participant);
      v35 = *(v11 + 16);
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      v33 = v40;
      if (v36)
      {
        __break(1u);
        return result;
      }

      *(v11 + 16) = v37;
LABEL_29:
      v12 = v42 + 1;
      if (v42 + 1 == v33)
      {
        return v11;
      }
    }

    v27 = ~v21;
    while (1)
    {
      outlined init with copy of Participant(*(v11 + 48) + v22 * v13, v7, type metadata accessor for Participant);
      if ((static UUID.== infix(_:_:)() & 1) == 0)
      {
        goto LABEL_9;
      }

      v28 = &v7[v2[5]];
      v29 = *v28 == v16 && *(v28 + 1) == v17;
      if (!v29 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *&v7[v2[6]] != v46)
      {
        goto LABEL_9;
      }

      v30 = &v7[v2[7]];
      v31 = *(v30 + 1);
      if (v31)
      {
        if (!v45)
        {
          goto LABEL_9;
        }

        v32 = *v30 == v44 && v31 == v45;
        if (!v32 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      else if (v45)
      {
        goto LABEL_9;
      }

      if (v43 == v7[v2[8]] && v41 == v7[v2[9]])
      {
        outlined destroy of Participant(v7, type metadata accessor for Participant);
        outlined destroy of Participant(v9, type metadata accessor for Participant);
        v33 = v40;
        goto LABEL_29;
      }

LABEL_9:
      outlined destroy of Participant(v7, type metadata accessor for Participant);
      v22 = (v22 + 1) & v27;
      v23 = v22 >> 6;
      v25 = *(v24 + 8 * (v22 >> 6));
      v26 = 1 << v22;
      if ((v25 & (1 << v22)) == 0)
      {
        goto LABEL_27;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t outlined copy of GroupSessionMessenger.MessageStreamStore.Storage?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t outlined consume of GroupSessionMessenger.MessageStreamStore.Storage?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t outlined copy of SystemCoordinatorTable.Storage?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t outlined consume of SystemCoordinatorTable.Storage?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR15GroupActivities17SystemCoordinatorCSg_TG5TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR15GroupActivities17SystemCoordinatorCSg_TG5(a1, v5);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR15GroupActivities17SystemCoordinatorCSg_TG5TA_406(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR15GroupActivities17SystemCoordinatorCSg_TG5(a1, v5);
}

uint64_t objectdestroy_245Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t partial apply for closure #2 in closure #1 in closure #1 in GroupSession.shouldDismissPlayback(allowingCancellation:completionHandler:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(0);
}

unint64_t lazy protocol witness table accessor for type PlaybackSyncer.Message and conformance PlaybackSyncer.Message()
{
  result = lazy protocol witness table cache variable for type PlaybackSyncer.Message and conformance PlaybackSyncer.Message;
  if (!lazy protocol witness table cache variable for type PlaybackSyncer.Message and conformance PlaybackSyncer.Message)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackSyncer.Message and conformance PlaybackSyncer.Message);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlaybackSyncer.Message and conformance PlaybackSyncer.Message;
  if (!lazy protocol witness table cache variable for type PlaybackSyncer.Message and conformance PlaybackSyncer.Message)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackSyncer.Message and conformance PlaybackSyncer.Message);
  }

  return result;
}

uint64_t partial apply for specialized thunk for @escaping @callee_guaranteed (@in_guaranteed GroupSessionMessenger.MessageWrapper, @in_guaranteed GroupSessionMessenger.MessageContext, @in_guaranteed SendReliability) -> (@out (A, GroupSessionMessenger.MessageContext)?)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AC0E7ContextVAA15SendReliabilityOtMd, &_s15GroupActivities0A16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AC0E7ContextVAA15SendReliabilityOtMR);
  return v4(a1, a1 + *(v5 + 48), a1 + *(v5 + 64));
}

uint64_t outlined init with copy of Decodable & Encodable(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined consume of PlaybackSyncer.Message?(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result != 4)
  {
    return outlined consume of Data._Representation(a2, a3);
  }

  return result;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void partial apply for closure #1 in LinkManager.init(identifier:groupUUID:topicManager:topic:localParticipant:unreliableMessengerConfig:featureFlags:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for Participant() - 8);
  v10 = *(v4 + 16);
  v11 = v4 + ((*(v9 + 80) + 24) & ~*(v9 + 80));

  closure #1 in LinkManager.init(identifier:groupUUID:topicManager:topic:localParticipant:unreliableMessengerConfig:featureFlags:)(a1, a2, a3, a4, v10, v11);
}

uint64_t *partial apply for specialized closure #9 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(uint64_t a1, unint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v9 = *(type metadata accessor for UUID() - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = *(v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *a4;

  return specialized closure #9 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(a1, a2, a3, v12, v4 + v10, v11);
}

uint64_t objectdestroy_162Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void partial apply for specialized closure #1 in GroupSession.logAttachmentEvent(report:reportEvent:)()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  specialized closure #1 in GroupSession.logAttachmentEvent(report:reportEvent:)(v0[2]);
}

uint64_t partial apply for specialized closure #1 in closure #12 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  return specialized GroupSession.invalidate(reason:)(v1);
}

uint64_t outlined assign with take of SharePlayLatencyLogger.Interval?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMd, &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_121Tm(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return MEMORY[0x1EEE6BDD0](v2, 40, 7);
}

id partial apply for specialized closure #1 in closure #1 in GroupSession.capabilities.didset(void **a1)
{
  v2 = *a1;
  v3 = *(*v1 + 368);
  swift_beginAccess();
  return [v2 updateCapabilitiesWithCapabilities_];
}

uint64_t partial apply for closure #1 in closure #1 in GroupSession.uploadAttachment(id:attachment:developerMetadata:)(void *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5Error_pGMd, &_sScCySbs5Error_pGMR) - 8) + 80);

  return closure #1 in closure #1 in GroupSession.uploadAttachment(id:attachment:developerMetadata:)(a1);
}

uint64_t partial apply for closure #1 in closure #1 in GroupSession.updateParticipants(participants:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return closure #1 in closure #1 in GroupSession.updateParticipants(participants:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in GroupSession.join()()
{
  v1 = *(v0 + 24);
  v3 = *(v0 + 28);
  return closure #1 in closure #1 in closure #1 in GroupSession.join()(*(v0 + 16));
}

uint64_t outlined init with copy of URL?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with take of Participant(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined assign with take of Participant(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of Date?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v5);
}

uint64_t objectdestroy_80Tm()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t partial apply for closure #1 in GroupSession.configureWithGroupActivityAssociationCoordinator()(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in GroupSession.configureWithGroupActivityAssociationCoordinator()(a1, v1 + v6, v7, v3, v4);
}

uint64_t partial apply for closure #1 in closure #1 in GroupSession.configureWithGroupActivityAssociationCoordinator()(Swift::OpaquePointer a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return closure #1 in closure #1 in GroupSession.configureWithGroupActivityAssociationCoordinator()(a1);
}

uint64_t objectdestroyTm(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));

  return MEMORY[0x1EEE6BDD0](v2, 32, 7);
}

uint64_t partial apply for closure #1 in closure #12 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  return GroupSession.invalidate(reason:)(v1);
}

uint64_t objectdestroy_523Tm()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroy_143Tm(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 32));
  a2(*(v2 + 40));

  return MEMORY[0x1EEE6BDD0](v2, 48, 7);
}

uint64_t partial apply for closure #1 in closure #4 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[5];
  return specialized closure #1 in closure #4 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(v0[4]);
}

uint64_t partial apply for closure #1 in closure #3 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)()
{
  v1 = v0[2];
  v2 = v0[3];
  return specialized closure #1 in closure #3 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(v0[4], v0[5], v0[6]);
}

void outlined consume of GroupSession<A>.State?<A>(id a1)
{
  if (a1 != 2)
  {
    outlined consume of GroupSession<A>.State<A>(a1);
  }
}

uint64_t partial apply for closure #1 in AnyGroupActivity.tuConversationActivity.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AnyGroupActivity(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return closure #1 in AnyGroupActivity.tuConversationActivity.getter(a1, a2, v6);
}

uint64_t outlined init with copy of Participant(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of Participant(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x746E65746E6F63;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xE400000000000000;
      v4 = 1684632949;
    }

    else
    {
      v4 = 0xD000000000000010;
      v5 = 0x80000001AF01A310;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x746E65746E6F63;
    }

    else
    {
      v4 = 0xD000000000000012;
    }

    if (v3)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0x80000001AF01A2F0;
    }
  }

  v6 = 1684632949;
  v7 = 0x80000001AF01A310;
  if (a2 == 2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xD000000000000010;
  }

  v8 = 0x80000001AF01A2F0;
  if (a2)
  {
    v8 = 0xE700000000000000;
  }

  else
  {
    v2 = 0xD000000000000012;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v6;
  }

  if (a2 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

void AnyGroupActivity.init(tuConversationActivity:)(void *a1@<X0>, char *a2@<X8>)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AnyGroupActivity.MetadataProvider(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for GroupActivityMetadata(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [a1 metadata];
  if (v18)
  {
    v42 = v6;
    v43 = v5;
    v44 = v2;
    v19 = v18;
    GroupActivityMetadata.init(_:)(v19, v17);
    v20 = [a1 activityIdentifier];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v22;
    v41 = v21;

    outlined init with copy of GroupActivityMetadata(v17, v13, type metadata accessor for GroupActivityMetadata);
    swift_storeEnumTagMultiPayload();
    v23 = [a1 applicationContext];
    v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v25;
    v39 = v24;

    v26 = [a1 UUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v27 = [a1 staticIdentifier];
    if (v27)
    {
      v28 = v27;
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      outlined destroy of GroupActivityMetadata(v17, type metadata accessor for GroupActivityMetadata);
    }

    else
    {
      outlined destroy of GroupActivityMetadata(v17, type metadata accessor for GroupActivityMetadata);

      v29 = 0;
      v31 = 0;
    }

    v33 = v40;
    *a2 = v41;
    *(a2 + 1) = v33;
    v34 = type metadata accessor for AnyGroupActivity(0);
    outlined init with take of AnyGroupActivity.MetadataProvider(v13, &a2[v34[5]], type metadata accessor for AnyGroupActivity.MetadataProvider);
    v35 = &a2[v34[6]];
    v36 = v38;
    *v35 = v39;
    v35[1] = v36;
    (*(v42 + 32))(&a2[v34[7]], v9, v43);
    v37 = &a2[v34[8]];
    *v37 = v29;
    v37[1] = v31;
  }

  else
  {
    lazy protocol witness table accessor for type GroupActivityError and conformance GroupActivityError();
    swift_allocError();
    *v32 = 1;
    swift_willThrow();
  }
}