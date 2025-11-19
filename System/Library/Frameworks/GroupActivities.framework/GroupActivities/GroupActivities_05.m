uint64_t closure #1 in closure #1 in AttachmentLedgerTopic.fetchTopic(function:line:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[43] = a6;
  v7[44] = a7;
  v7[41] = a4;
  v7[42] = a5;
  v7[40] = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCy15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgs5NeverOGGMd, &_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCy15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgs5NeverOGGMR);
  v7[45] = v8;
  v9 = *(v8 - 8);
  v7[46] = v9;
  v10 = *(v9 + 64) + 15;
  v7[47] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVy15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgGMd, &_s14CopresenceCore14CurrentSubjectVy15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgGMR);
  v7[48] = v11;
  v12 = *(v11 - 8);
  v7[49] = v12;
  v13 = *(v12 + 64) + 15;
  v7[50] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgs5NeverOG_GMR);
  v7[51] = v14;
  v15 = *(v14 - 8);
  v7[52] = v15;
  v16 = *(v15 + 64) + 15;
  v7[53] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in AttachmentLedgerTopic.fetchTopic(function:line:), 0, 0);
}

uint64_t closure #1 in closure #1 in AttachmentLedgerTopic.fetchTopic(function:line:)()
{
  v1 = v0[53];
  v3 = v0[49];
  v2 = v0[50];
  v4 = v0[47];
  v5 = v0[48];
  v6 = v0[45];
  v7 = v0[46];
  (*(v3 + 16))(v2, v0[41] + OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic__topic, v5);
  v8 = CurrentSubject.projectedValue.getter();
  (*(v3 + 8))(v2, v5);
  v0[37] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgs5NeverOGMR);
  v10 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type CurrentValueSubject<PluginAttachmentLedgerTopicProvider?, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCy15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgs5NeverOGMR);
  MEMORY[0x1B2713ED0](v9, v10);

  AsyncPublisher.makeAsyncIterator()();
  (*(v7 + 8))(v4, v6);
  v11 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<PluginAttachmentLedgerTopicProvider?, Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgs5NeverOG_GMR);
  v12 = *(MEMORY[0x1E69E85A8] + 4);
  v13 = swift_task_alloc();
  v0[54] = v13;
  *v13 = v0;
  v13[1] = closure #1 in closure #1 in AttachmentLedgerTopic.fetchTopic(function:line:);
  v14 = v0[53];
  v15 = v0[51];

  return MEMORY[0x1EEE6D8C8](v0 + 2, v15, v11);
}

{
  v2 = *(*v1 + 432);
  v5 = *v1;
  *(*v1 + 440) = v0;

  if (v0)
  {
    v3 = closure #1 in closure #1 in AttachmentLedgerTopic.fetchTopic(function:line:);
  }

  else
  {
    v3 = closure #1 in closure #1 in AttachmentLedgerTopic.fetchTopic(function:line:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in AttachmentLedgerTopic.fetchTopic(function:line:), 0, 0);
}

{
  v48 = v0;
  if (*(v0 + 40) == 1)
  {
    (*(*(v0 + 416) + 8))(*(v0 + 424), *(v0 + 408));
    if (one-time initialization token for attachmentLedgerTopic != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 344);
    v2 = *(v0 + 328);
    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Log.attachmentLedgerTopic);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 344);
      v7 = *(v0 + 352);
      v8 = *(v0 + 328);
      v9 = *(v0 + 336);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v47[0] = v11;
      *v10 = 136315650;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v6, v47);
      *(v10 + 12) = 2048;
      *(v10 + 14) = v7;
      *(v10 + 22) = 2080;
      v12 = AttachmentLedgerTopic.description.getter();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v47);

      *(v10 + 24) = v14;
      _os_log_impl(&dword_1AEE80000, v4, v5, "%s:%ld Received signal that there will be no more topics on %s", v10, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B2715BA0](v11, -1, -1);
      MEMORY[0x1B2715BA0](v10, -1, -1);
    }

    v15 = *(v0 + 424);
    v16 = *(v0 + 400);
    v17 = *(v0 + 376);
    type metadata accessor for CancellationError();
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type CancellationError and conformance CancellationError, MEMORY[0x1E69E8550]);
    swift_allocError();
    CancellationError.init()();
    swift_willThrow();

    v18 = *(v0 + 8);
    goto LABEL_17;
  }

  v19 = *(v0 + 32);
  *(v0 + 56) = *(v0 + 16);
  *(v0 + 72) = v19;
  *(v0 + 88) = *(v0 + 48);
  if (one-time initialization token for attachmentLedgerTopic != -1)
  {
    swift_once();
  }

  v20 = *(v0 + 344);
  v21 = *(v0 + 328);
  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Log.attachmentLedgerTopic);
  outlined init with copy of URL?(v0 + 56, v0 + 96, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMR);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = *(v0 + 344);
    v26 = *(v0 + 352);
    v27 = *(v0 + 336);
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *(v0 + 312) = v29;
    *v28 = 136315906;
    *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v25, (v0 + 312));
    *(v28 + 12) = 2048;
    *(v28 + 14) = v26;
    *(v28 + 22) = 2080;
    outlined init with copy of URL?(v0 + 96, v0 + 176, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMR);
    if (*(v0 + 200))
    {
      outlined init with take of Transferable((v0 + 176), v0 + 216);
      outlined init with copy of Transferable(v0 + 216, v0 + 256);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pMR);
      v30 = String.init<A>(reflecting:)();
      v32 = v31;
      __swift_destroy_boxed_opaque_existential_0((v0 + 216));
    }

    else
    {
      v32 = 0xE300000000000000;
      v30 = 7104878;
    }

    v33 = *(v0 + 328);
    outlined destroy of NSObject?(v0 + 96, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMR);
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, (v0 + 312));

    *(v28 + 24) = v34;
    *(v28 + 32) = 2080;
    v35 = AttachmentLedgerTopic.description.getter();
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, (v0 + 312));

    *(v28 + 34) = v37;
    _os_log_impl(&dword_1AEE80000, v23, v24, "%s:%ld Received updated topic: %s on %s", v28, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v29, -1, -1);
    MEMORY[0x1B2715BA0](v28, -1, -1);
  }

  else
  {

    outlined destroy of NSObject?(v0 + 96, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMR);
  }

  *(v0 + 168) = *(v0 + 88);
  *(v0 + 152) = *(v0 + 72);
  *(v0 + 136) = *(v0 + 56);
  if (*(v0 + 160))
  {
    v38 = *(v0 + 400);
    v39 = *(v0 + 376);
    v40 = *(v0 + 320);
    (*(*(v0 + 416) + 8))(*(v0 + 424), *(v0 + 408));
    outlined init with take of Transferable((v0 + 136), v40);

    v18 = *(v0 + 8);
LABEL_17:

    return v18();
  }

  outlined destroy of NSObject?(v0 + 136, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMR);
  v42 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<PluginAttachmentLedgerTopicProvider?, Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgs5NeverOG_GMR);
  v43 = *(MEMORY[0x1E69E85A8] + 4);
  v44 = swift_task_alloc();
  *(v0 + 432) = v44;
  *v44 = v0;
  v44[1] = closure #1 in closure #1 in AttachmentLedgerTopic.fetchTopic(function:line:);
  v45 = *(v0 + 424);
  v46 = *(v0 + 408);

  return MEMORY[0x1EEE6D8C8](v0 + 16, v46, v42);
}

{
  *(v0 + 304) = *(v0 + 440);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

void closure #2 in closure #1 in AttachmentLedgerTopic.fetchTopic(function:line:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);

  JUMPOUT(0x1B27144E0);
}

uint64_t AttachmentLedgerTopic.requestUploadToken()(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](AttachmentLedgerTopic.requestUploadToken(), 0, 0);
}

uint64_t AttachmentLedgerTopic.requestUploadToken()()
{
  v15 = v0;
  if (one-time initialization token for attachmentLedgerTopic != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = type metadata accessor for Logger();
  v0[9] = __swift_project_value_buffer(v2, static Log.attachmentLedgerTopic);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[8];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    v8 = AttachmentLedgerTopic.description.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1AEE80000, v3, v4, "Received request for uploadToken %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1B2715BA0](v7, -1, -1);
    MEMORY[0x1B2715BA0](v6, -1, -1);
  }

  v11 = swift_task_alloc();
  v0[10] = v11;
  *v11 = v0;
  v11[1] = AttachmentLedgerTopic.requestUploadToken();
  v12 = v0[8];

  return AttachmentLedgerTopic.fetchTopic(function:line:)((v0 + 2), 0xD000000000000014, 0x80000001AF01B6D0, 345);
}

{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = AttachmentLedgerTopic.requestUploadToken();
  }

  else
  {
    v3 = AttachmentLedgerTopic.requestUploadToken();
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v22 = v0;
  v1 = *(*(v0 + 64) + OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_stateMachine);
  *(v0 + 112) = 7;
  if (dispatch thunk of StateMachine.execute(_:)())
  {
    v2 = *(v0 + 40);
    v3 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
    v4 = *(v3 + 48);
    v20 = (v4 + *v4);
    v5 = v4[1];
    v6 = swift_task_alloc();
    *(v0 + 96) = v6;
    *v6 = v0;
    v6[1] = AttachmentLedgerTopic.requestUploadToken();
    v7 = *(v0 + 56);

    return v20(v7, v2, v3);
  }

  else
  {
    v10 = *(v0 + 64);
    v9 = *(v0 + 72);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 64);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21 = v15;
      *v14 = 136315138;
      v16 = AttachmentLedgerTopic.description.getter();
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v21);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_1AEE80000, v11, v12, "Dropping request for uploadToken because state of AttachmentLedgerTopic is invalid %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x1B2715BA0](v15, -1, -1);
      MEMORY[0x1B2715BA0](v14, -1, -1);
    }

    lazy protocol witness table accessor for type AttachmentLedgerTopic.Errors and conformance AttachmentLedgerTopic.Errors();
    swift_allocError();
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v19 = *(v0 + 8);

    return v19();
  }
}

{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = AttachmentLedgerTopic.requestUploadToken();
  }

  else
  {
    v3 = AttachmentLedgerTopic.requestUploadToken();
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t AttachmentLedgerTopic.refreshUploadToken()(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](AttachmentLedgerTopic.refreshUploadToken(), 0, 0);
}

uint64_t AttachmentLedgerTopic.refreshUploadToken()()
{
  if (one-time initialization token for attachmentLedgerTopic != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[9] = __swift_project_value_buffer(v1, static Log.attachmentLedgerTopic);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1AEE80000, v2, v3, "Received request to refresh uploadToken", v4, 2u);
    MEMORY[0x1B2715BA0](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = AttachmentLedgerTopic.refreshUploadToken();
  v6 = v0[8];

  return AttachmentLedgerTopic.fetchTopic(function:line:)((v0 + 2), 0xD000000000000014, 0x80000001AF01B6F0, 357);
}

{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = AttachmentLedgerTopic.refreshUploadToken();
  }

  else
  {
    v3 = AttachmentLedgerTopic.refreshUploadToken();
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v22 = v0;
  v1 = *(*(v0 + 64) + OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_stateMachine);
  *(v0 + 112) = 8;
  if (dispatch thunk of StateMachine.execute(_:)())
  {
    v2 = *(v0 + 40);
    v3 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
    v4 = *(v3 + 56);
    v20 = (v4 + *v4);
    v5 = v4[1];
    v6 = swift_task_alloc();
    *(v0 + 96) = v6;
    *v6 = v0;
    v6[1] = AttachmentLedgerTopic.refreshUploadToken();
    v7 = *(v0 + 56);

    return v20(v7, v2, v3);
  }

  else
  {
    v10 = *(v0 + 64);
    v9 = *(v0 + 72);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 64);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21 = v15;
      *v14 = 136315138;
      v16 = AttachmentLedgerTopic.description.getter();
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v21);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_1AEE80000, v11, v12, "Dropping to refresh uploadToken because state of AttachmentLedgerTopic is invalid %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x1B2715BA0](v15, -1, -1);
      MEMORY[0x1B2715BA0](v14, -1, -1);
    }

    lazy protocol witness table accessor for type AttachmentLedgerTopic.Errors and conformance AttachmentLedgerTopic.Errors();
    swift_allocError();
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v19 = *(v0 + 8);

    return v19();
  }
}

{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = AttachmentLedgerTopic.refreshUploadToken();
  }

  else
  {
    v3 = AttachmentLedgerTopic.refreshUploadToken();
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 88);
  return (*(v0 + 8))();
}

{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[13];
  v2 = v0[1];

  return v2();
}

uint64_t AttachmentLedgerTopic.requestDownloadToken(for:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = type metadata accessor for UUID();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](AttachmentLedgerTopic.requestDownloadToken(for:), 0, 0);
}

uint64_t AttachmentLedgerTopic.requestDownloadToken(for:)()
{
  v22 = v0;
  if (one-time initialization token for attachmentLedgerTopic != -1)
  {
    swift_once();
  }

  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[8];
  v5 = type metadata accessor for Logger();
  v0[13] = __swift_project_value_buffer(v5, static Log.attachmentLedgerTopic);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[11];
  v9 = v0[12];
  v11 = v0[10];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v12 = 136315138;
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v21);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_1AEE80000, v6, v7, "Received request for downloadToken on attachment: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x1B2715BA0](v13, -1, -1);
    MEMORY[0x1B2715BA0](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = swift_task_alloc();
  v0[14] = v18;
  *v18 = v0;
  v18[1] = AttachmentLedgerTopic.requestDownloadToken(for:);
  v19 = v0[9];

  return AttachmentLedgerTopic.fetchTopic(function:line:)((v0 + 2), 0xD00000000000001ALL, 0x80000001AF01B710, 369);
}

{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = AttachmentLedgerTopic.requestDownloadToken(for:);
  }

  else
  {
    v3 = AttachmentLedgerTopic.requestDownloadToken(for:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v24 = v0;
  v1 = *(*(v0 + 72) + OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_stateMachine);
  *(v0 + 144) = 7;
  if (dispatch thunk of StateMachine.execute(_:)())
  {
    v2 = *(v0 + 40);
    v3 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
    v4 = *(v3 + 64);
    v22 = (v4 + *v4);
    v5 = v4[1];
    v6 = swift_task_alloc();
    *(v0 + 128) = v6;
    *v6 = v0;
    v6[1] = AttachmentLedgerTopic.requestDownloadToken(for:);
    v7 = *(v0 + 56);
    v8 = *(v0 + 64);

    return v22(v7, v8, v2, v3);
  }

  else
  {
    v10 = *(v0 + 104);
    v11 = *(v0 + 72);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(v0 + 72);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v23 = v16;
      *v15 = 136315138;
      v17 = AttachmentLedgerTopic.description.getter();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v23);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_1AEE80000, v12, v13, "Dropping request for downloadToken because state machine of AttachmentLedgerTopic is invalid %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x1B2715BA0](v16, -1, -1);
      MEMORY[0x1B2715BA0](v15, -1, -1);
    }

    lazy protocol witness table accessor for type AttachmentLedgerTopic.Errors and conformance AttachmentLedgerTopic.Errors();
    swift_allocError();
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v20 = *(v0 + 96);

    v21 = *(v0 + 8);

    return v21();
  }
}

{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = AttachmentLedgerTopic.requestDownloadToken(for:);
  }

  else
  {
    v3 = AttachmentLedgerTopic.requestDownloadToken(for:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0[12];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v2 = v0[1];

  return v2();
}

{
  v1 = v0[15];
  v2 = v0[12];

  v3 = v0[1];

  return v3();
}

{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[17];
  v2 = v0[12];

  v3 = v0[1];

  return v3();
}

uint64_t AttachmentLedgerTopic.UploadRequest.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AttachmentLedgerTopic.UploadRequest.id.setter(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AttachmentLedgerTopic.UploadRequest.key.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AttachmentLedgerTopic.UploadRequest(0) + 20);
  v4 = type metadata accessor for SymmetricKey();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AttachmentLedgerTopic.UploadRequest.key.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AttachmentLedgerTopic.UploadRequest(0) + 20);
  v4 = type metadata accessor for SymmetricKey();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AttachmentLedgerTopic.UploadRequest.assetSkeleton.getter()
{
  v1 = v0 + *(type metadata accessor for AttachmentLedgerTopic.UploadRequest(0) + 24);
  v2 = *v1;
  outlined copy of Data._Representation(*v1, *(v1 + 8));
  return v2;
}

uint64_t AttachmentLedgerTopic.UploadRequest.assetSkeleton.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for AttachmentLedgerTopic.UploadRequest(0) + 24);
  result = outlined consume of Data._Representation(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t AttachmentLedgerTopic.UploadRequest.developerMetadata.getter()
{
  v1 = v0 + *(type metadata accessor for AttachmentLedgerTopic.UploadRequest(0) + 28);
  v2 = *v1;
  outlined copy of Data?(*v1, *(v1 + 8));
  return v2;
}

uint64_t AttachmentLedgerTopic.UploadRequest.developerMetadata.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for AttachmentLedgerTopic.UploadRequest(0) + 28);
  result = outlined consume of Data?(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t AttachmentLedgerTopic.UploadRequest.storageLocation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AttachmentLedgerTopic.UploadRequest(0) + 32);
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AttachmentLedgerTopic.UploadRequest.storageLocation.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AttachmentLedgerTopic.UploadRequest(0) + 32);
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AttachmentLedgerTopic.UploadRequest.fileHash.getter()
{
  v1 = v0 + *(type metadata accessor for AttachmentLedgerTopic.UploadRequest(0) + 36);
  v2 = *v1;
  outlined copy of Data._Representation(*v1, *(v1 + 8));
  return v2;
}

uint64_t AttachmentLedgerTopic.UploadRequest.fileHash.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for AttachmentLedgerTopic.UploadRequest(0) + 36);
  result = outlined consume of Data._Representation(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t AttachmentLedgerTopic.UploadRequest.refSignature.getter()
{
  v1 = v0 + *(type metadata accessor for AttachmentLedgerTopic.UploadRequest(0) + 40);
  v2 = *v1;
  outlined copy of Data._Representation(*v1, *(v1 + 8));
  return v2;
}

uint64_t AttachmentLedgerTopic.UploadRequest.refSignature.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for AttachmentLedgerTopic.UploadRequest(0) + 40);
  result = outlined consume of Data._Representation(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t AttachmentLedgerTopic.UploadRequest.init(id:key:assetSkeleton:developerMetadata:storageLocation:fileHash:refSignature:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v20 = type metadata accessor for UUID();
  (*(*(v20 - 8) + 32))(a9, a1, v20);
  v21 = type metadata accessor for AttachmentLedgerTopic.UploadRequest(0);
  v22 = v21[5];
  v23 = type metadata accessor for SymmetricKey();
  (*(*(v23 - 8) + 32))(a9 + v22, a2, v23);
  v24 = (a9 + v21[6]);
  *v24 = a3;
  v24[1] = a4;
  v25 = (a9 + v21[7]);
  *v25 = a5;
  v25[1] = a6;
  v26 = v21[8];
  v27 = type metadata accessor for URL();
  result = (*(*(v27 - 8) + 32))(a9 + v26, a7, v27);
  v29 = (a9 + v21[9]);
  *v29 = a8;
  v29[1] = a10;
  v30 = (a9 + v21[10]);
  *v30 = a11;
  v30[1] = a12;
  return result;
}

uint64_t AttachmentLedgerTopic.upload(request:)(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for TaskPriority();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities21AttachmentLedgerTopicC13UploadRequestVSgMd, &_s15GroupActivities21AttachmentLedgerTopicC13UploadRequestVSgMR) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v7 = type metadata accessor for AttachmentLedgerTopic.UploadRequest(0);
  v2[16] = v7;
  v8 = *(v7 - 8);
  v2[17] = v8;
  v9 = *(v8 + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](AttachmentLedgerTopic.upload(request:), 0, 0);
}

uint64_t AttachmentLedgerTopic.upload(request:)()
{
  v33 = v0;
  if (one-time initialization token for attachmentLedgerTopic != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v2 = v0[7];
  v3 = type metadata accessor for Logger();
  v0[22] = __swift_project_value_buffer(v3, static Log.attachmentLedgerTopic);
  outlined init with copy of AttachmentLedgerTopic.UploadRequest(v2, v1);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[21];
  if (v6)
  {
    v9 = v0[16];
    v8 = v0[17];
    v11 = v0[14];
    v10 = v0[15];
    v12 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = v31;
    *v12 = 136315394;
    outlined init with copy of AttachmentLedgerTopic.UploadRequest(v7, v10);
    (*(v8 + 56))(v10, 0, 1, v9);
    outlined init with copy of URL?(v10, v11, &_s15GroupActivities21AttachmentLedgerTopicC13UploadRequestVSgMd, &_s15GroupActivities21AttachmentLedgerTopicC13UploadRequestVSgMR);
    if ((*(v8 + 48))(v11, 1, v9) == 1)
    {
      v13 = 0xE300000000000000;
      v14 = 7104878;
    }

    else
    {
      v16 = v0[19];
      v15 = v0[20];
      v17 = v0[16];
      outlined init with take of AttachmentLedgerTopic.UploadRequest(v0[14], v15);
      outlined init with copy of AttachmentLedgerTopic.UploadRequest(v15, v16);
      v14 = String.init<A>(reflecting:)();
      v13 = v18;
      outlined destroy of AttachmentLedgerTopic.UploadRequest(v15);
    }

    v19 = v0[21];
    v21 = v0[10];
    v20 = v0[11];
    v22 = v0[9];
    outlined destroy of NSObject?(v0[15], &_s15GroupActivities21AttachmentLedgerTopicC13UploadRequestVSgMd, &_s15GroupActivities21AttachmentLedgerTopicC13UploadRequestVSgMR);
    outlined destroy of AttachmentLedgerTopic.UploadRequest(v19);
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v13, &v32);

    *(v12 + 4) = v23;
    *(v12 + 12) = 2080;
    static Task<>.currentPriority.getter();
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type TaskPriority and conformance TaskPriority, MEMORY[0x1E69E85F0]);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    (*(v21 + 8))(v20, v22);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v32);

    *(v12 + 14) = v27;
    _os_log_impl(&dword_1AEE80000, v4, v5, "Received uploadRequest %s with priority: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v31, -1, -1);
    MEMORY[0x1B2715BA0](v12, -1, -1);
  }

  else
  {

    outlined destroy of AttachmentLedgerTopic.UploadRequest(v7);
  }

  v28 = swift_task_alloc();
  v0[23] = v28;
  *v28 = v0;
  v28[1] = AttachmentLedgerTopic.upload(request:);
  v29 = v0[8];

  return AttachmentLedgerTopic.fetchTopic(function:line:)((v0 + 2), 0xD000000000000010, 0x80000001AF01B730, 392);
}

{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = AttachmentLedgerTopic.upload(request:);
  }

  else
  {
    v3 = AttachmentLedgerTopic.upload(request:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v61 = v0;
  v1 = *(*(v0 + 64) + OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_stateMachine);
  *(v0 + 216) = 9;
  if (dispatch thunk of StateMachine.execute(_:)())
  {
    v2 = *(v0 + 128);
    v4 = *(v0 + 48);
    v3 = *(v0 + 56);
    v5 = *(v0 + 40);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v5);
    v6 = v2[5];
    v7 = (v3 + v2[6]);
    v8 = v7[1];
    v58 = *v7;
    v9 = v2[8];
    v10 = (v3 + v2[7]);
    v57 = *v10;
    v56 = v10[1];
    v11 = v2[10];
    v12 = (v3 + v2[9]);
    v14 = *v12;
    v13 = v12[1];
    v15 = *(v3 + v11);
    v16 = *(v3 + v11 + 8);
    v17 = *(v4 + 72);
    v55 = v17 + *v17;
    v18 = v17[1];
    v19 = swift_task_alloc();
    *(v0 + 200) = v19;
    *v19 = v0;
    v19[1] = AttachmentLedgerTopic.upload(request:);
    v20 = *(v0 + 56);
    v66 = v5;
    v67 = v4;
    v64 = v15;
    v65 = v16;
    v63 = v13;

    __asm { BRAA            X8, X16 }
  }

  v21 = *(v0 + 176);
  v22 = *(v0 + 64);
  outlined init with copy of AttachmentLedgerTopic.UploadRequest(*(v0 + 56), *(v0 + 144));

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();

  v25 = os_log_type_enabled(v23, v24);
  v26 = *(v0 + 144);
  if (v25)
  {
    v28 = *(v0 + 128);
    v27 = *(v0 + 136);
    v30 = *(v0 + 96);
    v29 = *(v0 + 104);
    v31 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v60 = v59;
    *v31 = 136315394;
    outlined init with copy of AttachmentLedgerTopic.UploadRequest(v26, v29);
    (*(v27 + 56))(v29, 0, 1, v28);
    outlined init with copy of URL?(v29, v30, &_s15GroupActivities21AttachmentLedgerTopicC13UploadRequestVSgMd, &_s15GroupActivities21AttachmentLedgerTopicC13UploadRequestVSgMR);
    if ((*(v27 + 48))(v30, 1, v28) == 1)
    {
      v32 = 0xE300000000000000;
      v33 = 7104878;
    }

    else
    {
      v34 = *(v0 + 152);
      v35 = *(v0 + 160);
      v36 = *(v0 + 128);
      outlined init with take of AttachmentLedgerTopic.UploadRequest(*(v0 + 96), v35);
      outlined init with copy of AttachmentLedgerTopic.UploadRequest(v35, v34);
      v33 = String.init<A>(reflecting:)();
      v32 = v37;
      outlined destroy of AttachmentLedgerTopic.UploadRequest(v35);
    }

    v38 = *(v0 + 144);
    v39 = *(v0 + 64);
    outlined destroy of NSObject?(*(v0 + 104), &_s15GroupActivities21AttachmentLedgerTopicC13UploadRequestVSgMd, &_s15GroupActivities21AttachmentLedgerTopicC13UploadRequestVSgMR);
    outlined destroy of AttachmentLedgerTopic.UploadRequest(v38);
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v32, &v60);

    *(v31 + 4) = v40;
    *(v31 + 12) = 2080;
    v41 = AttachmentLedgerTopic.description.getter();
    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, &v60);

    *(v31 + 14) = v43;
    _os_log_impl(&dword_1AEE80000, v23, v24, "Dropping request %s because state of AttachmentLedgerTopic is invalid %s", v31, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v59, -1, -1);
    MEMORY[0x1B2715BA0](v31, -1, -1);
  }

  else
  {

    outlined destroy of AttachmentLedgerTopic.UploadRequest(v26);
  }

  lazy protocol witness table accessor for type AttachmentLedgerTopic.Errors and conformance AttachmentLedgerTopic.Errors();
  swift_allocError();
  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v45 = *(v0 + 160);
  v44 = *(v0 + 168);
  v47 = *(v0 + 144);
  v46 = *(v0 + 152);
  v49 = *(v0 + 112);
  v48 = *(v0 + 120);
  v51 = *(v0 + 96);
  v50 = *(v0 + 104);
  v52 = *(v0 + 88);

  v53 = *(v0 + 8);

  return v53();
}

{
  v2 = *(*v1 + 200);
  v5 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = AttachmentLedgerTopic.upload(request:);
  }

  else
  {
    v3 = AttachmentLedgerTopic.upload(request:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0[20];
  v2 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v6 = v0[14];
  v5 = v0[15];
  v8 = v0[12];
  v7 = v0[13];
  v9 = v0[11];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v10 = v0[1];

  return v10();
}

{
  v1 = v0[24];
  v3 = v0[20];
  v2 = v0[21];
  v5 = v0[18];
  v4 = v0[19];
  v7 = v0[14];
  v6 = v0[15];
  v9 = v0[12];
  v8 = v0[13];
  v10 = v0[11];

  v11 = v0[1];

  return v11();
}

{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[26];
  v3 = v0[20];
  v2 = v0[21];
  v5 = v0[18];
  v4 = v0[19];
  v7 = v0[14];
  v6 = v0[15];
  v9 = v0[12];
  v8 = v0[13];
  v10 = v0[11];

  v11 = v0[1];

  return v11();
}

uint64_t AttachmentLedgerTopic.updateProgress(on:with:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = type metadata accessor for TaskPriority();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore10AttachmentC12MMCSMetadataV12UploadStatusOSgMd, &_s14CopresenceCore10AttachmentC12MMCSMetadataV12UploadStatusOSgMR) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v8 = type metadata accessor for Attachment.MMCSMetadata.UploadStatus();
  v3[15] = v8;
  v9 = *(v8 - 8);
  v3[16] = v9;
  v10 = *(v9 + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](AttachmentLedgerTopic.updateProgress(on:with:), 0, 0);
}

uint64_t AttachmentLedgerTopic.updateProgress(on:with:)()
{
  v46 = v0;
  if (one-time initialization token for attachmentLedgerTopic != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[8];
  v5 = v0[9];
  v6 = type metadata accessor for Logger();
  v0[20] = __swift_project_value_buffer(v6, static Log.attachmentLedgerTopic);
  v44 = *(v3 + 16);
  v44(v1, v4, v2);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[19];
  v12 = v0[15];
  v11 = v0[16];
  if (v9)
  {
    v42 = v8;
    log = v7;
    v13 = v0[13];
    v14 = v0[14];
    v15 = v0[9];
    v16 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v45 = v41;
    *v16 = 136315650;
    v17 = AttachmentLedgerTopic.description.getter();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v45);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2080;
    v44(v14, v10, v12);
    (*(v11 + 56))(v14, 0, 1, v12);
    outlined init with copy of URL?(v14, v13, &_s14CopresenceCore10AttachmentC12MMCSMetadataV12UploadStatusOSgMd, &_s14CopresenceCore10AttachmentC12MMCSMetadataV12UploadStatusOSgMR);
    if ((*(v11 + 48))(v13, 1, v12) == 1)
    {
      v20 = 0xE300000000000000;
      v21 = 7104878;
    }

    else
    {
      v23 = v0[17];
      v22 = v0[18];
      v25 = v0[15];
      v24 = v0[16];
      (*(v24 + 32))(v22, v0[13], v25);
      v44(v23, v22, v25);
      v21 = String.init<A>(reflecting:)();
      v20 = v26;
      (*(v24 + 8))(v22, v25);
    }

    v27 = v0[19];
    v29 = v0[15];
    v28 = v0[16];
    v30 = v0[11];
    v31 = v0[12];
    v32 = v0[10];
    outlined destroy of NSObject?(v0[14], &_s14CopresenceCore10AttachmentC12MMCSMetadataV12UploadStatusOSgMd, &_s14CopresenceCore10AttachmentC12MMCSMetadataV12UploadStatusOSgMR);
    (*(v28 + 8))(v27, v29);
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v20, &v45);

    *(v16 + 14) = v33;
    *(v16 + 22) = 2080;
    static Task<>.currentPriority.getter();
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type TaskPriority and conformance TaskPriority, MEMORY[0x1E69E85F0]);
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v35;
    (*(v30 + 8))(v31, v32);
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, &v45);

    *(v16 + 24) = v37;
    _os_log_impl(&dword_1AEE80000, log, v42, "%s Received request to update progressBlob with status: %s with priority: %s", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v41, -1, -1);
    MEMORY[0x1B2715BA0](v16, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v38 = swift_task_alloc();
  v0[21] = v38;
  *v38 = v0;
  v38[1] = AttachmentLedgerTopic.updateProgress(on:with:);
  v39 = v0[9];

  return AttachmentLedgerTopic.fetchTopic(function:line:)((v0 + 2), 0xD000000000000018, 0x80000001AF01B750, 404);
}

{
  v2 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = AttachmentLedgerTopic.updateProgress(on:with:);
  }

  else
  {
    v3 = AttachmentLedgerTopic.updateProgress(on:with:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v29 = v0;
  v1 = *(*(v0 + 72) + OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_stateMachine);
  *(v0 + 200) = 10;
  if (dispatch thunk of StateMachine.execute(_:)())
  {
    v2 = *(v0 + 40);
    v3 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
    v4 = *(v3 + 80);
    v27 = (v4 + *v4);
    v5 = v4[1];
    v6 = swift_task_alloc();
    *(v0 + 184) = v6;
    *v6 = v0;
    v6[1] = AttachmentLedgerTopic.updateProgress(on:with:);
    v8 = *(v0 + 56);
    v7 = *(v0 + 64);

    return v27(v8, v7, v2, v3);
  }

  else
  {
    v10 = *(v0 + 160);
    v11 = *(v0 + 72);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(v0 + 72);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v28 = v16;
      *v15 = 136315138;
      v17 = AttachmentLedgerTopic.description.getter();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v28);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_1AEE80000, v12, v13, "Dropping request to update progressBlob because state of AttachmentLedgerTopic is invalid %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x1B2715BA0](v16, -1, -1);
      MEMORY[0x1B2715BA0](v15, -1, -1);
    }

    lazy protocol witness table accessor for type AttachmentLedgerTopic.Errors and conformance AttachmentLedgerTopic.Errors();
    swift_allocError();
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v21 = *(v0 + 144);
    v20 = *(v0 + 152);
    v22 = *(v0 + 136);
    v24 = *(v0 + 104);
    v23 = *(v0 + 112);
    v25 = *(v0 + 96);

    v26 = *(v0 + 8);

    return v26();
  }
}

{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = AttachmentLedgerTopic.updateProgress(on:with:);
  }

  else
  {
    v3 = AttachmentLedgerTopic.updateProgress(on:with:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v7 = v0[1];

  return v7();
}

{
  v1 = v0[22];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[17];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[12];

  v8 = v0[1];

  return v8();
}

{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[24];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[17];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[12];

  v8 = v0[1];

  return v8();
}

uint64_t AttachmentLedgerTopic.description.getter()
{
  _StringGuts.grow(_:)(51);
  MEMORY[0x1B27141F0](0xD00000000000001CLL, 0x80000001AF01B770);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1B27141F0](0x203A656D616E202CLL, 0xE800000000000000);
  MEMORY[0x1B27141F0](*(v0 + 16), *(v0 + 24));
  MEMORY[0x1B27141F0](0x203A657461747320, 0xE800000000000000);
  v1 = *(v0 + OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_stateMachine);
  dispatch thunk of StateMachine.currentState.getter();
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1B27141F0](41, 0xE100000000000000);
  return 0;
}

uint64_t AttachmentLedgerTopic.remove(id:)(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for UUID();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](AttachmentLedgerTopic.remove(id:), 0, 0);
}

uint64_t AttachmentLedgerTopic.remove(id:)()
{
  v24 = v0;
  if (one-time initialization token for attachmentLedgerTopic != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[7];
  v5 = type metadata accessor for Logger();
  v0[13] = __swift_project_value_buffer(v5, static Log.attachmentLedgerTopic);
  v6 = *(v3 + 16);
  v0[14] = v6;
  v0[15] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[12];
  v11 = v0[9];
  v12 = v0[10];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = v22;
    *v13 = 136315138;
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v23);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_1AEE80000, v7, v8, "Received removal request %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x1B2715BA0](v22, -1, -1);
    MEMORY[0x1B2715BA0](v13, -1, -1);
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  v0[16] = v17;
  v19 = swift_task_alloc();
  v0[17] = v19;
  *v19 = v0;
  v19[1] = AttachmentLedgerTopic.remove(id:);
  v20 = v0[8];

  return AttachmentLedgerTopic.fetchTopic(function:line:)((v0 + 2), 0x692865766F6D6572, 0xEB00000000293A64, 416);
}

{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = AttachmentLedgerTopic.remove(id:);
  }

  else
  {
    v3 = AttachmentLedgerTopic.remove(id:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v35 = v0;
  v1 = *(*(v0 + 64) + OBJC_IVAR____TtC15GroupActivities21AttachmentLedgerTopic_stateMachine);
  *(v0 + 168) = 11;
  v2 = (v0 + 16);
  if (dispatch thunk of StateMachine.execute(_:)())
  {
    v3 = *(v0 + 40);
    v4 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v3);
    v5 = *(v4 + 88);
    v33 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    *(v0 + 152) = v7;
    *v7 = v0;
    v7[1] = AttachmentLedgerTopic.remove(id:);
    v8 = *(v0 + 56);

    return v33(v8, v3, v4);
  }

  else
  {
    v10 = *(v0 + 120);
    v11 = *(v0 + 104);
    v12 = *(v0 + 64);
    (*(v0 + 112))(*(v0 + 88), *(v0 + 56), *(v0 + 72));

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 128);
    v18 = *(v0 + 80);
    v17 = *(v0 + 88);
    v19 = *(v0 + 72);
    if (v15)
    {
      v31 = *(v0 + 64);
      v20 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v34[0] = v32;
      *v20 = 136315394;
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      v16(v17, v19);
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, v34);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2080;
      v25 = AttachmentLedgerTopic.description.getter();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v34);

      *(v20 + 14) = v27;
      v2 = (v0 + 16);
      _os_log_impl(&dword_1AEE80000, v13, v14, "Dropping request to remove attachment %s because state of AttachmentLedgerTopic is invalid %s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B2715BA0](v32, -1, -1);
      MEMORY[0x1B2715BA0](v20, -1, -1);
    }

    else
    {

      v16(v17, v19);
    }

    lazy protocol witness table accessor for type AttachmentLedgerTopic.Errors and conformance AttachmentLedgerTopic.Errors();
    swift_allocError();
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0(v2);
    v29 = *(v0 + 88);
    v28 = *(v0 + 96);

    v30 = *(v0 + 8);

    return v30();
  }
}

{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = AttachmentLedgerTopic.remove(id:);
  }

  else
  {
    v3 = AttachmentLedgerTopic.remove(id:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0[11];
  v2 = v0[12];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v3 = v0[1];

  return v3();
}

{
  v1 = v0[18];
  v3 = v0[11];
  v2 = v0[12];

  v4 = v0[1];

  return v4();
}

{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[20];
  v3 = v0[11];
  v2 = v0[12];

  v4 = v0[1];

  return v4();
}

Swift::Int AttachmentLedgerTopic.Errors.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AttachmentLedgerTopic.Errors()
{
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AttachmentLedgerTopic.Errors()
{
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](0);
  return Hasher._finalize()();
}

Swift::Int AttachmentLedgerTopic.State.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](a1);
  return Hasher._finalize()();
}

uint64_t protocol witness for DownloadAttachmentTopic.requestDownloadToken(for:) in conformance AttachmentLedgerTopic(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return AttachmentLedgerTopic.requestDownloadToken(for:)(a1, a2);
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

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = __CocoaSet.count.getter();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  specialized Array._copyContents(initializing:)(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t specialized Clock.sleep(for:tolerance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](specialized Clock.sleep(for:tolerance:), 0, 0);
}

uint64_t specialized Clock.sleep(for:tolerance:)()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = type metadata accessor for ContinuousClock();
  v7 = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type ContinuousClock and conformance ContinuousClock, MEMORY[0x1E69E8820]);
  dispatch thunk of Clock.now.getter();
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type ContinuousClock.Instant and conformance ContinuousClock.Instant, MEMORY[0x1E69E87E8]);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x1E69E8938] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = specialized Clock.sleep(for:tolerance:);
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x1EEE6DE58](v11, v0 + 2, v6, v7);
}

{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](specialized Clock.sleep(for:tolerance:), 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
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
          lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [Attachment] and conformance [A], &_sSay14CopresenceCore10AttachmentCGMd, &_sSay14CopresenceCore10AttachmentCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14CopresenceCore10AttachmentCGMd, &_sSay14CopresenceCore10AttachmentCGMR);
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
        type metadata accessor for Attachment();
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

uint64_t partial apply for closure #1 in closure #1 in AttachmentLedgerTopic.fetchTopic(function:line:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return closure #1 in closure #1 in AttachmentLedgerTopic.fetchTopic(function:line:)(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t lazy protocol witness table accessor for type AttachmentLedgerTopic.Errors and conformance AttachmentLedgerTopic.Errors()
{
  result = lazy protocol witness table cache variable for type AttachmentLedgerTopic.Errors and conformance AttachmentLedgerTopic.Errors;
  if (!lazy protocol witness table cache variable for type AttachmentLedgerTopic.Errors and conformance AttachmentLedgerTopic.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentLedgerTopic.Errors and conformance AttachmentLedgerTopic.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttachmentLedgerTopic.Errors and conformance AttachmentLedgerTopic.Errors;
  if (!lazy protocol witness table cache variable for type AttachmentLedgerTopic.Errors and conformance AttachmentLedgerTopic.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentLedgerTopic.Errors and conformance AttachmentLedgerTopic.Errors);
  }

  return result;
}

uint64_t outlined init with copy of AttachmentLedgerTopic.UploadRequest(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedgerTopic.UploadRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of AttachmentLedgerTopic.UploadRequest(uint64_t a1)
{
  v2 = type metadata accessor for AttachmentLedgerTopic.UploadRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of AttachmentLedgerTopic.UploadRequest(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedgerTopic.UploadRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void type metadata completion function for AttachmentLedgerTopic()
{
  type metadata accessor for CurrentSubject<PluginAttachmentLedgerTopicProvider?>(319, &lazy cache variable for type metadata for CurrentSubject<PluginAttachmentLedgerTopicProvider?>, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pSgMR);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for CurrentSubject<PluginAttachmentLedgerTopicProvider?>(319, &lazy cache variable for type metadata for CurrentSubject<[Attachment]>, &_sSay14CopresenceCore10AttachmentCGMd, &_sSay14CopresenceCore10AttachmentCGMR);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for CurrentSubject<PluginAttachmentLedgerTopicProvider?>(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = type metadata accessor for CurrentSubject();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for AttachmentLedgerTopic.RetryInfo(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for AttachmentLedgerTopic.RetryInfo(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

void type metadata completion function for AttachmentLedgerTopic.UploadRequest()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SymmetricKey();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Data?();
      if (v2 <= 0x3F)
      {
        type metadata accessor for URL();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for Data?()
{
  if (!lazy cache variable for type metadata for Data?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Data?);
    }
  }
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

uint64_t getEnumTagSinglePayload for AttachmentLedgerTopic.BootstrapTopicInfo(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for AttachmentLedgerTopic.BootstrapTopicInfo(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AttachmentLedgerTopic.Errors(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for AttachmentLedgerTopic.Errors(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t partial apply for closure #1 in AttachmentLedgerTopic.processShutdown(shutdownInfo:)(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return closure #1 in AttachmentLedgerTopic.processShutdown(shutdownInfo:)(v7, a1, v4, v5, v6);
}

Swift::Int ImageRepresentationEncodingErrors.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](0);
  return Hasher._finalize()();
}

uint64_t ImageRepresentation.Image.image.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySo10CGImageRefaGMd, &_sScSySo10CGImageRefaGMR);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ImageRepresentation.Image.image.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySo10CGImageRefaGMd, &_sScSySo10CGImageRefaGMR);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ImageRepresentation.Image.init(image:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySo10CGImageRefaGMd, &_sScSySo10CGImageRefaGMR);
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t ImageRepresentation.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = type metadata accessor for UTType();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(a1 + 16);
  v28 = v27;
  v8 = type metadata accessor for DataRepresentation();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v27 - v14;
  v16 = *(v2 + 2);
  v17 = *(v2 + 3);
  static UTType.data.getter();
  v18 = swift_allocObject();
  *(v18 + 48) = v16;
  *(v18 + 56) = v17;
  v19 = swift_allocObject();
  v20 = *v2;
  v21 = v27;
  *(v18 + 16) = v27;
  *(v18 + 32) = v20;
  *(v19 + 16) = v21;
  *(v19 + 32) = v20;
  *(v19 + 48) = v16;
  *(v19 + 56) = v17;
  swift_retain_n();
  swift_retain_n();
  v22 = v7;
  v23 = v28;
  MEMORY[0x1B2713760](v22, &async function pointer to partial apply for closure #1 in ImageRepresentation.body.getter, v18, &async function pointer to partial apply for closure #2 in ImageRepresentation.body.getter, v19, v28, *(&v28 + 1));
  WitnessTable = swift_getWitnessTable();
  static TransferRepresentationBuilder.buildExpression<A>(_:)(v13, v23, v8, WitnessTable);
  v25 = *(v9 + 8);
  v25(v13, v8);
  static TransferRepresentationBuilder.buildExpression<A>(_:)(v15, v23, v8, WitnessTable);
  return (v25)(v15, v8);
}

uint64_t closure #1 in ImageRepresentation.body.getter(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = closure #1 in ImageRepresentation.body.getter;

  return v7(a1);
}

uint64_t closure #1 in ImageRepresentation.body.getter(uint64_t a1)
{
  v3 = *(*v2 + 16);
  v4 = *v2;
  *(v4 + 24) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](closure #1 in ImageRepresentation.body.getter, 0, 0);
  }
}

id closure #1 in ImageRepresentation.body.getter()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCGImage_];
  v2 = [objc_allocWithZone(MEMORY[0x1E695F620]) init];
  v3 = [v2 workingFormat];
  result = [v2 workingColorSpace];
  if (result)
  {
    v5 = result;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo27CIImageRepresentationOptiona_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    type metadata accessor for CIImageRepresentationOption(0);
    lazy protocol witness table accessor for type CIImageRepresentationOption and conformance CIImageRepresentationOption();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v7 = [v2 HEIFRepresentationOfImage:v1 format:v3 colorSpace:v5 options:isa];

    v8 = *(v0 + 24);
    if (v7)
    {
      v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      v12 = *(v0 + 8);

      return v12(v9, v11);
    }

    else
    {
      lazy protocol witness table accessor for type ImageRepresentationEncodingErrors and conformance ImageRepresentationEncodingErrors();
      swift_allocError();
      swift_willThrow();

      v13 = *(v0 + 8);

      return v13();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t partial apply for closure #1 in ImageRepresentation.body.getter(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in GroupActivityTransferRepresentation.body.getter;

  return closure #1 in ImageRepresentation.body.getter(a1, v6);
}

uint64_t closure #2 in ImageRepresentation.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOySo10CGImageRefa__GMd, &_sScS12ContinuationV15BufferingPolicyOySo10CGImageRefa__GMR);
  v7[7] = v8;
  v9 = *(v8 - 8);
  v7[8] = v9;
  v10 = *(v9 + 64) + 15;
  v7[9] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySo10CGImageRefaGMd, &_sScSySo10CGImageRefaGMR) - 8) + 64) + 15;
  v7[10] = swift_task_alloc();
  v12 = type metadata accessor for ImageRepresentation.Image();
  v7[11] = v12;
  v13 = *(v12 - 8);
  v7[12] = v13;
  v14 = *(v13 + 64) + 15;
  v7[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #2 in ImageRepresentation.body.getter, 0, 0);
}

uint64_t closure #2 in ImageRepresentation.body.getter()
{
  v1 = v0[13];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v5 = v0[8];
  v7 = v0[4];
  v6 = v0[5];
  v8 = v0[3];
  v9 = swift_task_alloc();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  type metadata accessor for CGImageRef(0);
  (*(v5 + 104))(v3, *MEMORY[0x1E69E8650], v4);
  AsyncStream.init(_:bufferingPolicy:_:)();

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySo10CGImageRefaGMd, &_sScSySo10CGImageRefaGMR);
  (*(*(v10 - 8) + 32))(v1, v2, v10);
  v17 = (v6 + *v6);
  v11 = v6[1];
  v12 = swift_task_alloc();
  v0[14] = v12;
  *v12 = v0;
  v12[1] = closure #2 in ImageRepresentation.body.getter;
  v13 = v0[13];
  v14 = v0[6];
  v15 = v0[2];

  return v17(v15, v13);
}

{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *v1;
  v6[15] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](closure #2 in ImageRepresentation.body.getter, 0, 0);
  }

  else
  {
    v7 = v6[13];
    v8 = v6[9];
    v9 = v6[10];

    v10 = v6[1];

    return v10();
  }
}

{
  v1 = v0[13];
  v2 = v0[9];
  v3 = v0[10];

  v4 = v0[1];
  v5 = v0[15];

  return v4();
}

uint64_t objectdestroyTm_3()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t partial apply for closure #2 in ImageRepresentation.body.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v11 = v3[5];
  v13 = v3[6];
  v12 = v3[7];
  v14 = swift_task_alloc();
  *(v4 + 16) = v14;
  *v14 = v4;
  v14[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return closure #2 in ImageRepresentation.body.getter(a1, a2, a3, v10, v11, v13, v12);
}

void closure #1 in closure #2 in ImageRepresentation.body.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOySo10CGImageRefa__GMd, &_sScS12ContinuationV11YieldResultOySo10CGImageRefa__GMR);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v18 - v3;
  v5 = objc_allocWithZone(MEMORY[0x1E695F658]);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v7 = [v5 initWithData_];

  if (v7)
  {
    v18[0] = [objc_allocWithZone(MEMORY[0x1E695F620]) init];
    [v7 extent];
    v8 = [v18[0] createCGImage:v7 fromRect:?];
    if (v8)
    {
      v18[1] = v8;
      v9 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo10CGImageRefa_GMd, &_sScS12ContinuationVySo10CGImageRefa_GMR);
      AsyncStream.Continuation.yield(_:)();

      (*(v1 + 8))(v4, v0);
      return;
    }

    if (one-time initialization token for ledger != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Log.ledger);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1AEE80000, v14, v15, "Failed to create CGImage from CIImage", v16, 2u);
      MEMORY[0x1B2715BA0](v16, -1, -1);
    }
  }

  else
  {
    if (one-time initialization token for ledger != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Log.ledger);
    v18[0] = Logger.logObject.getter();
    v11 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v18[0], v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1AEE80000, v18[0], v11, "Failed to create CIImage from Data", v12, 2u);
      MEMORY[0x1B2715BA0](v12, -1, -1);
    }
  }

  v17 = v18[0];
}

uint64_t ImageRepresentation.init(exporting:importing:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

unint64_t lazy protocol witness table accessor for type ImageRepresentationEncodingErrors and conformance ImageRepresentationEncodingErrors()
{
  result = lazy protocol witness table cache variable for type ImageRepresentationEncodingErrors and conformance ImageRepresentationEncodingErrors;
  if (!lazy protocol witness table cache variable for type ImageRepresentationEncodingErrors and conformance ImageRepresentationEncodingErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageRepresentationEncodingErrors and conformance ImageRepresentationEncodingErrors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ImageRepresentationEncodingErrors and conformance ImageRepresentationEncodingErrors;
  if (!lazy protocol witness table cache variable for type ImageRepresentationEncodingErrors and conformance ImageRepresentationEncodingErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageRepresentationEncodingErrors and conformance ImageRepresentationEncodingErrors);
  }

  return result;
}

uint64_t type metadata instantiation function for ImageRepresentation()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for ImageRepresentation(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ImageRepresentation(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void type metadata completion function for ImageRepresentation.Image()
{
  type metadata accessor for AsyncStream<CGImageRef>();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void type metadata accessor for AsyncStream<CGImageRef>()
{
  if (!lazy cache variable for type metadata for AsyncStream<CGImageRef>)
  {
    type metadata accessor for CGImageRef(255);
    v0 = type metadata accessor for AsyncStream();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AsyncStream<CGImageRef>);
    }
  }
}

void partial apply for closure #1 in closure #2 in ImageRepresentation.body.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  closure #1 in closure #2 in ImageRepresentation.body.getter();
}

unint64_t lazy protocol witness table accessor for type CIImageRepresentationOption and conformance CIImageRepresentationOption()
{
  result = lazy protocol witness table cache variable for type CIImageRepresentationOption and conformance CIImageRepresentationOption;
  if (!lazy protocol witness table cache variable for type CIImageRepresentationOption and conformance CIImageRepresentationOption)
  {
    type metadata accessor for CIImageRepresentationOption(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CIImageRepresentationOption and conformance CIImageRepresentationOption);
  }

  return result;
}

uint64_t SystemCoordinatorConfiguration.spatialTemplatePreferenceOutput.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___CPSystemCoordinatorConfiguration_wrapped);
  if (v3)
  {
    swift_getKeyPath();
    (*((*MEMORY[0x1E69E7D40] & *v3) + 0x90))(&v11);

    v5 = v12;
    v6 = v14;
    v7 = v15;
    v8 = v13;
    *a1 = v11;
    *(a1 + 8) = v5;
    *(a1 + 16) = v8;
    *(a1 + 32) = v6;
    *(a1 + 40) = v7;
  }

  else
  {
    if (one-time initialization token for none != -1)
    {
      result = swift_once();
    }

    v9 = word_1EB619638;
    v10 = qword_1AF00FC08[SHIBYTE(word_1EB619638)];
    *a1 = static SpatialTemplatePreference.none;
    *(a1 + 8) = v9;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 16) = v10;
    *(a1 + 40) = 2;
  }

  return result;
}

uint64_t SystemCoordinatorConfiguration.localParticipantRoleAssignmentRequest.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___CPSystemCoordinatorConfiguration_wrapped);
  if (v3)
  {
    swift_getKeyPath();
    (*((*MEMORY[0x1E69E7D40] & *v3) + 0x90))(&v6);

    v5 = v6;
  }

  else
  {
    v5 = 0uLL;
  }

  *a1 = v5;
  return result;
}

uint64_t SystemCoordinatorConfiguration.defaultSpatialTemplatePreferences.getter(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = *(v2 + OBJC_IVAR___CPSystemCoordinatorConfiguration_wrapped);
  if (v3)
  {
    swift_getKeyPath();
    (*((*MEMORY[0x1E69E7D40] & *v3) + 0x90))(&v6);

    return v6;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];

    return a2(v5);
  }
}

id SystemCoordinatorConfiguration.__allocating_init(supportsGroupImmersiveSpace:isObservingGroupImmersionStyle:)(char a1, char a2)
{
  v5 = objc_allocWithZone(v2);
  v5[OBJC_IVAR___CPSystemCoordinatorConfiguration_supportsGroupImmersiveSpace] = a1;
  v5[OBJC_IVAR___CPSystemCoordinatorConfiguration_isObservingGroupImmersionStyle] = a2;
  v5[OBJC_IVAR___CPSystemCoordinatorConfiguration_faceAppTowardsEachParticipant] = 0;
  *&v5[OBJC_IVAR___CPSystemCoordinatorConfiguration_wrapped] = 0;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id SystemCoordinatorConfiguration.init(supportsGroupImmersiveSpace:isObservingGroupImmersionStyle:)(char a1, char a2)
{
  v2[OBJC_IVAR___CPSystemCoordinatorConfiguration_supportsGroupImmersiveSpace] = a1;
  v2[OBJC_IVAR___CPSystemCoordinatorConfiguration_isObservingGroupImmersionStyle] = a2;
  v2[OBJC_IVAR___CPSystemCoordinatorConfiguration_faceAppTowardsEachParticipant] = 0;
  *&v2[OBJC_IVAR___CPSystemCoordinatorConfiguration_wrapped] = 0;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SystemCoordinatorConfiguration();
  return objc_msgSendSuper2(&v4, sel_init);
}

void *SystemCoordinatorConfiguration.__allocating_init(spatialTemplatePreference:supportsGroupImmersiveSpace:isObservingGroupImmersionStyle:localParticipantRoleAssignmentRequest:faceAppTowardsEachParticipant:defaultSpatialTemplatePreferences:defaultSpatialTemplateRoles:)(uint64_t *a1, char a2, char a3, uint64_t *a4, char a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v48 = v8;
  v15 = objc_allocWithZone(v8);
  v43 = *a1;
  v60 = *(a1 + 8);
  v16 = *(a1 + 9);
  v44 = a4[1];
  v45 = *a4;
  v15[OBJC_IVAR___CPSystemCoordinatorConfiguration_supportsGroupImmersiveSpace] = a2;
  v15[OBJC_IVAR___CPSystemCoordinatorConfiguration_isObservingGroupImmersionStyle] = a3;
  v15[OBJC_IVAR___CPSystemCoordinatorConfiguration_faceAppTowardsEachParticipant] = a5;
  v42 = qword_1AF00FC08[v16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS15GroupActivities31SpatialTemplatePreferenceOutputVGMd, &_ss18_DictionaryStorageCySS15GroupActivities31SpatialTemplatePreferenceOutputVGMR);
  result = static _DictionaryStorage.copy(original:)();
  v18 = result;
  v19 = 0;
  v20 = 1 << *(a6 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(a6 + 64);
  v23 = (v20 + 63) >> 6;
  v24 = (result + 8);
  if (v22)
  {
    while (1)
    {
      v25 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_10:
      v28 = v25 | (v19 << 6);
      v29 = (*(a6 + 48) + 16 * v28);
      v30 = *v29;
      result = v29[1];
      v31 = *(a6 + 56) + 16 * v28;
      v32 = *v31;
      v33 = *(v31 + 8);
      v34 = qword_1AF00FC08[*(v31 + 9)];
      *&v24[(v28 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v28;
      v35 = (v18[6] + 16 * v28);
      *v35 = v30;
      v35[1] = result;
      v36 = v18[7] + 48 * v28;
      *v36 = v32;
      *(v36 + 8) = v33;
      *(v36 + 24) = 0;
      *(v36 + 32) = 0;
      *(v36 + 16) = v34;
      *(v36 + 40) = 2;
      v37 = v18[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        break;
      }

      v18[2] = v39;

      if (!v22)
      {
        goto LABEL_5;
      }
    }

LABEL_17:
    __break(1u);
  }

  else
  {
LABEL_5:
    v26 = v19;
    while (1)
    {
      v19 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_17;
      }

      if (v19 >= v23)
      {
        break;
      }

      v27 = *(a6 + 64 + 8 * v19);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v22 = (v27 - 1) & v27;
        goto LABEL_10;
      }
    }

    v59 = v60;
    *&v50 = v43;
    BYTE8(v50) = v60;
    v52 = 0;
    v53 = 0;
    v51 = v42;
    v54 = 2;
    v55 = v45;
    v56 = v44;
    v57 = v18;
    v58 = a7;
    v40 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities10XPCWrapperCyAA30SystemCoordinatorConfigurationC7WrappedVGMd, &_s15GroupActivities10XPCWrapperCyAA30SystemCoordinatorConfigurationC7WrappedVGMR));
    v41 = specialized XPCWrapper.init(_:)(&v50);
    if (v47)
    {
      return swift_deallocPartialClassInstance();
    }

    else
    {
      *&v15[OBJC_IVAR___CPSystemCoordinatorConfiguration_wrapped] = v41;
      v49.receiver = v15;
      v49.super_class = v48;
      return objc_msgSendSuper2(&v49, sel_init);
    }
  }

  return result;
}

void *SystemCoordinatorConfiguration.init(spatialTemplatePreference:supportsGroupImmersiveSpace:isObservingGroupImmersionStyle:localParticipantRoleAssignmentRequest:faceAppTowardsEachParticipant:defaultSpatialTemplatePreferences:defaultSpatialTemplateRoles:)(uint64_t *a1, char a2, char a3, uint64_t *a4, char a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v37 = *a1;
  v53 = *(a1 + 8);
  v10 = *(a1 + 9);
  v38 = a4[1];
  v39 = *a4;
  v7[OBJC_IVAR___CPSystemCoordinatorConfiguration_supportsGroupImmersiveSpace] = a2;
  v7[OBJC_IVAR___CPSystemCoordinatorConfiguration_isObservingGroupImmersionStyle] = a3;
  v7[OBJC_IVAR___CPSystemCoordinatorConfiguration_faceAppTowardsEachParticipant] = a5;
  v36 = qword_1AF00FC08[v10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS15GroupActivities31SpatialTemplatePreferenceOutputVGMd, &_ss18_DictionaryStorageCySS15GroupActivities31SpatialTemplatePreferenceOutputVGMR);
  result = static _DictionaryStorage.copy(original:)();
  v12 = result;
  v13 = 0;
  v14 = 1 << *(a6 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a6 + 64);
  v17 = (v14 + 63) >> 6;
  v18 = (result + 8);
  if (v16)
  {
    while (1)
    {
      v19 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_10:
      v22 = v19 | (v13 << 6);
      v23 = (*(a6 + 48) + 16 * v22);
      v24 = *v23;
      result = v23[1];
      v25 = *(a6 + 56) + 16 * v22;
      v26 = *v25;
      v27 = *(v25 + 8);
      v28 = qword_1AF00FC08[*(v25 + 9)];
      *&v18[(v22 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v22;
      v29 = (v12[6] + 16 * v22);
      *v29 = v24;
      v29[1] = result;
      v30 = v12[7] + 48 * v22;
      *v30 = v26;
      *(v30 + 8) = v27;
      *(v30 + 24) = 0;
      *(v30 + 32) = 0;
      *(v30 + 16) = v28;
      *(v30 + 40) = 2;
      v31 = v12[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        break;
      }

      v12[2] = v33;

      if (!v16)
      {
        goto LABEL_5;
      }
    }

LABEL_17:
    __break(1u);
  }

  else
  {
LABEL_5:
    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_17;
      }

      if (v13 >= v17)
      {
        break;
      }

      v21 = *(a6 + 64 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v16 = (v21 - 1) & v21;
        goto LABEL_10;
      }
    }

    v52 = v53;
    *&v43 = v37;
    BYTE8(v43) = v53;
    v45 = 0;
    v46 = 0;
    v44 = v36;
    v47 = 2;
    v48 = v39;
    v49 = v38;
    v50 = v12;
    v51 = a7;
    v34 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities10XPCWrapperCyAA30SystemCoordinatorConfigurationC7WrappedVGMd, &_s15GroupActivities10XPCWrapperCyAA30SystemCoordinatorConfigurationC7WrappedVGMR));
    v35 = specialized XPCWrapper.init(_:)(&v43);
    if (v41)
    {
      type metadata accessor for SystemCoordinatorConfiguration();
      return swift_deallocPartialClassInstance();
    }

    else
    {
      *&v8[OBJC_IVAR___CPSystemCoordinatorConfiguration_wrapped] = v35;
      v42.receiver = v8;
      v42.super_class = type metadata accessor for SystemCoordinatorConfiguration();
      return objc_msgSendSuper2(&v42, sel_init);
    }
  }

  return result;
}

__n128 SystemCoordinatorConfiguration.Wrapped.init(spatialTemplatePreferenceOutput:localParticipantRoleAssignmentRequest:defaultSpatialTemplatePreferences:defaultSpatialTemplateRoles:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  *a5 = *a1;
  *(a5 + 8) = v5;
  *(a5 + 16) = *(a1 + 16);
  *(a5 + 32) = v6;
  *(a5 + 40) = v7;
  result = *a2;
  *(a5 + 48) = *a2;
  *(a5 + 64) = a3;
  *(a5 + 72) = a4;
  return result;
}

uint64_t SystemCoordinatorConfiguration.description.getter()
{
  v10 = 0;
  v11 = 0xE000000000000000;
  _StringGuts.grow(_:)(145);
  v12 = 0;
  v13 = 0xE000000000000000;
  v1 = MEMORY[0x1B27141F0](0xD000000000000021, 0x80000001AF01B880);
  v2 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x70))(&v10, v1);
  v3 = String.init<A>(reflecting:)();
  MEMORY[0x1B27141F0](v3);

  MEMORY[0x1B27141F0](0xD00000000000001ELL, 0x80000001AF01B8B0);
  LOBYTE(v10) = *(v0 + OBJC_IVAR___CPSystemCoordinatorConfiguration_supportsGroupImmersiveSpace);
  v4 = String.init<A>(reflecting:)();
  MEMORY[0x1B27141F0](v4);

  MEMORY[0x1B27141F0](0xD000000000000021, 0x80000001AF01B8D0);
  LOBYTE(v10) = *(v0 + OBJC_IVAR___CPSystemCoordinatorConfiguration_isObservingGroupImmersionStyle);
  v5 = String.init<A>(reflecting:)();
  MEMORY[0x1B27141F0](v5);

  v6 = MEMORY[0x1B27141F0](0xD000000000000028, 0x80000001AF01B900);
  (*((*v2 & *v0) + 0x78))(&v10, v6);
  v7 = v10;
  v8 = v11;
  _print_unlocked<A, B>(_:_:)();
  outlined consume of SystemCoordinatorParticipantRoleRequest(v7, v8);
  MEMORY[0x1B27141F0](41, 0xE100000000000000);
  return v12;
}

Swift::Void __swiftcall SystemCoordinatorConfiguration.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR___CPSystemCoordinatorConfiguration_supportsGroupImmersiveSpace);
  v4 = MEMORY[0x1B2714130](0xD00000000000001BLL, 0x80000001AF01B930);
  [(objc_class *)with.super.isa encodeBool:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR___CPSystemCoordinatorConfiguration_isObservingGroupImmersionStyle);
  v6 = MEMORY[0x1B2714130](0xD00000000000001ELL, 0x80000001AF01B950);
  [(objc_class *)with.super.isa encodeBool:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR___CPSystemCoordinatorConfiguration_faceAppTowardsEachParticipant);
  v8 = MEMORY[0x1B2714130](0xD00000000000001DLL, 0x80000001AF01B970);
  [(objc_class *)with.super.isa encodeBool:v7 forKey:v8];

  v9 = *(v1 + OBJC_IVAR___CPSystemCoordinatorConfiguration_wrapped);
  v10 = MEMORY[0x1B2714130](0x64657070617277, 0xE700000000000000);
  [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];
}

id SystemCoordinatorConfiguration.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = specialized SystemCoordinatorConfiguration.init(coder:)(a1);

  return v4;
}

id SystemCoordinatorConfiguration.init(coder:)(void *a1)
{
  v2 = specialized SystemCoordinatorConfiguration.init(coder:)(a1);

  return v2;
}

uint64_t SystemCoordinatorConfiguration.Wrapped.spatialTemplatePreferenceOutput.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  v6 = *(v1 + 40);
  *(a1 + 40) = v6;
  return outlined copy of SpatialTemplatePreferenceOutput.SpatialTemplate(v3, v4, v5, v6);
}

uint64_t SystemCoordinatorConfiguration.Wrapped.localParticipantRoleAssignmentRequest.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  *a1 = v2;
  a1[1] = v3;
  return outlined copy of SystemCoordinatorParticipantRoleRequest(v2, v3);
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance SystemCoordinatorConfiguration.Wrapped.CodingKeys()
{
  v1 = 0xD000000000000021;
  if (*v0 != 2)
  {
    v1 = 0xD00000000000001BLL;
  }

  v2 = 0xD000000000000025;
  if (!*v0)
  {
    v2 = 0xD00000000000001FLL;
  }

  if (*v0 <= 1u)
  {
    result = v2;
  }

  else
  {
    result = v1;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SystemCoordinatorConfiguration.Wrapped.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized SystemCoordinatorConfiguration.Wrapped.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SystemCoordinatorConfiguration.Wrapped.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SystemCoordinatorConfiguration.Wrapped.CodingKeys and conformance SystemCoordinatorConfiguration.Wrapped.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SystemCoordinatorConfiguration.Wrapped.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SystemCoordinatorConfiguration.Wrapped.CodingKeys and conformance SystemCoordinatorConfiguration.Wrapped.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SystemCoordinatorConfiguration.Wrapped.encode(to:)(void *a1)
{
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities30SystemCoordinatorConfigurationC7WrappedV10CodingKeys33_E687053184EB28B6472960559EE3ADA1LLOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities30SystemCoordinatorConfigurationC7WrappedV10CodingKeys33_E687053184EB28B6472960559EE3ADA1LLOGMR);
  v27 = *(v25 - 8);
  v3 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v5 = &v20 - v4;
  v6 = *v1;
  v34 = *(v1 + 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 32);
  v10 = *(v1 + 56);
  v23 = *(v1 + 48);
  v24 = v6;
  v11 = *(v1 + 72);
  v21 = *(v1 + 64);
  v22 = v10;
  v20 = v11;
  v12 = a1[4];
  v13 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  outlined copy of SpatialTemplatePreferenceOutput.SpatialTemplate(v7, v8, v9, v13);
  lazy protocol witness table accessor for type SystemCoordinatorConfiguration.Wrapped.CodingKeys and conformance SystemCoordinatorConfiguration.Wrapped.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = v25;
  v28 = v24;
  LOBYTE(v29) = v34;
  v30 = v7;
  v31 = v8;
  v32 = v9;
  v33 = v13;
  v35 = 0;
  lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput and conformance SpatialTemplatePreferenceOutput();
  v15 = v26;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v15)
  {
    outlined consume of SpatialTemplatePreferenceOutput.SpatialTemplate(v30, v31, v32, v33);
    return (*(v27 + 8))(v5, v14);
  }

  else
  {
    v18 = v20;
    v17 = v21;
    v19 = v27;
    outlined consume of SpatialTemplatePreferenceOutput.SpatialTemplate(v30, v31, v32, v33);
    v28 = v23;
    v29 = v22;
    v35 = 1;
    outlined copy of SystemCoordinatorParticipantRoleRequest(v23, v22);
    lazy protocol witness table accessor for type SystemCoordinatorParticipantRoleRequest and conformance SystemCoordinatorParticipantRoleRequest();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of SystemCoordinatorParticipantRoleRequest(v28, v29);
    v28 = v17;
    v35 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS15GroupActivities31SpatialTemplatePreferenceOutputVGMd, &_sSDySS15GroupActivities31SpatialTemplatePreferenceOutputVGMR);
    lazy protocol witness table accessor for type [String : SpatialTemplatePreferenceOutput] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : SpatialTemplatePreferenceOutput] and conformance <> [A : B], lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput and conformance SpatialTemplatePreferenceOutput);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v28 = v18;
    v35 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    return (*(v19 + 8))(v5, v14);
  }
}

uint64_t SystemCoordinatorConfiguration.Wrapped.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities30SystemCoordinatorConfigurationC7WrappedV10CodingKeys33_E687053184EB28B6472960559EE3ADA1LLOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities30SystemCoordinatorConfigurationC7WrappedV10CodingKeys33_E687053184EB28B6472960559EE3ADA1LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SystemCoordinatorConfiguration.Wrapped.CodingKeys and conformance SystemCoordinatorConfiguration.Wrapped.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v30) = 0;
  lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput and conformance SpatialTemplatePreferenceOutput();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v35;
  v27 = v37;
  v28 = v38;
  v29 = v39;
  v45 = v36;
  LOBYTE(v30) = 1;
  lazy protocol witness table accessor for type SystemCoordinatorParticipantRoleRequest and conformance SystemCoordinatorParticipantRoleRequest();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v24 = v11;
  v26 = v35;
  v25 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS15GroupActivities31SpatialTemplatePreferenceOutputVGMd, &_sSDySS15GroupActivities31SpatialTemplatePreferenceOutputVGMR);
  LOBYTE(v30) = 2;
  lazy protocol witness table accessor for type [String : SpatialTemplatePreferenceOutput] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : SpatialTemplatePreferenceOutput] and conformance <> [A : B], lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput and conformance SpatialTemplatePreferenceOutput);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v12 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
  v46 = 3;
  lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v22 = v44;
  *&v30 = v24;
  v23 = v45;
  BYTE8(v30) = v45;
  v13 = v27;
  v31 = v27;
  v14 = v28;
  *&v32 = v28;
  v15 = v12;
  v21 = v12;
  LOBYTE(v12) = v29;
  BYTE8(v32) = v29;
  v16 = v26;
  v17 = v25;
  *&v33 = v26;
  *(&v33 + 1) = v25;
  *&v34 = v15;
  *(&v34 + 1) = v44;
  v18 = v33;
  a2[2] = v32;
  a2[3] = v18;
  a2[4] = v34;
  v19 = v31;
  *a2 = v30;
  a2[1] = v19;
  outlined init with copy of SystemCoordinatorConfiguration.Wrapped(&v30, &v35);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v35 = v24;
  LOBYTE(v36) = v23;
  v37 = v13;
  v38 = v14;
  v39 = v12;
  v40 = v16;
  v41 = v17;
  v42 = v21;
  v43 = v22;
  return outlined destroy of SystemCoordinatorConfiguration.Wrapped(&v35);
}

uint64_t SystemCoordinatorConfiguration._SpatialTemplatePreference.contentExtent.getter()
{
  result = *(v0 + OBJC_IVAR___CPSystemCoordinatorConfigurationTemplatePreference_contentExtent);
  v2 = *(v0 + OBJC_IVAR___CPSystemCoordinatorConfigurationTemplatePreference_contentExtent + 8);
  return result;
}

id SystemCoordinatorConfiguration._SpatialTemplatePreference.__allocating_init(_:)(uint64_t *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = *a1;
  v5 = *(a1 + 8);
  *&v3[OBJC_IVAR___CPSystemCoordinatorConfigurationTemplatePreference_storage] = *(a1 + 9);
  v6 = &v3[OBJC_IVAR___CPSystemCoordinatorConfigurationTemplatePreference_contentExtent];
  *v6 = v4;
  v6[8] = v5;
  v8.receiver = v3;
  v8.super_class = v1;
  return objc_msgSendSuper2(&v8, sel_init);
}

id SystemCoordinatorConfiguration._SpatialTemplatePreference.init(_:)(uint64_t *a1)
{
  v2 = *a1;
  *&v1[OBJC_IVAR___CPSystemCoordinatorConfigurationTemplatePreference_storage] = *(a1 + 9);
  v3 = *(a1 + 8);
  v4 = &v1[OBJC_IVAR___CPSystemCoordinatorConfigurationTemplatePreference_contentExtent];
  *v4 = v2;
  v4[8] = v3;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for SystemCoordinatorConfiguration._SpatialTemplatePreference();
  return objc_msgSendSuper2(&v6, sel_init);
}

void SystemCoordinatorConfiguration._SpatialTemplatePreference.spatialTemplatePreference.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___CPSystemCoordinatorConfigurationTemplatePreference_storage);
  if (v2 >= 5)
  {
    LOBYTE(v2) = 0;
  }

  v3 = *(v1 + OBJC_IVAR___CPSystemCoordinatorConfigurationTemplatePreference_contentExtent + 8);
  *a1 = *(v1 + OBJC_IVAR___CPSystemCoordinatorConfigurationTemplatePreference_contentExtent);
  *(a1 + 8) = v3;
  *(a1 + 9) = v2;
}

id @objc SystemCoordinatorConfiguration.description.getter(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v7 = v6;

  v8 = MEMORY[0x1B2714130](v5, v7);

  return v8;
}

uint64_t SystemCoordinatorConfiguration._SpatialTemplatePreference.description.getter()
{
  _StringGuts.grow(_:)(30);

  v6 = *(v0 + OBJC_IVAR___CPSystemCoordinatorConfigurationTemplatePreference_storage);
  v1 = String.init<A>(reflecting:)();
  MEMORY[0x1B27141F0](v1);

  MEMORY[0x1B27141F0](0xD000000000000010, 0x80000001AF01B9C0);
  if (*(v0 + OBJC_IVAR___CPSystemCoordinatorConfigurationTemplatePreference_contentExtent + 8))
  {
    v2 = 0xE300000000000000;
    v3 = 7104878;
  }

  else
  {
    v7 = *(v0 + OBJC_IVAR___CPSystemCoordinatorConfigurationTemplatePreference_contentExtent);
    v3 = String.init<A>(reflecting:)();
    v2 = v4;
  }

  MEMORY[0x1B27141F0](v3, v2);

  MEMORY[0x1B27141F0](41, 0xE100000000000000);
  return 0x656761726F747328;
}

Swift::Void __swiftcall SystemCoordinatorConfiguration._SpatialTemplatePreference.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR___CPSystemCoordinatorConfigurationTemplatePreference_storage);
  v4 = MEMORY[0x1B2714130](0x656761726F7473, 0xE700000000000000);
  [(objc_class *)with.super.isa encodeInteger:v3 forKey:v4];

  if (*(v1 + OBJC_IVAR___CPSystemCoordinatorConfigurationTemplatePreference_contentExtent + 8))
  {
    v6 = 0;
  }

  else
  {
    v5 = (v1 + OBJC_IVAR___CPSystemCoordinatorConfigurationTemplatePreference_contentExtent);
    v6 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  }

  v7 = MEMORY[0x1B2714130](0x45746E65746E6F63, 0xED0000746E657478);
  [(objc_class *)with.super.isa encodeObject:v6 forKey:v7];
  swift_unknownObjectRelease();
}

id SystemCoordinatorConfiguration._SpatialTemplatePreference.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = specialized SystemCoordinatorConfiguration._SpatialTemplatePreference.init(coder:)(a1);

  return v4;
}

id SystemCoordinatorConfiguration._SpatialTemplatePreference.init(coder:)(void *a1)
{
  v2 = specialized SystemCoordinatorConfiguration._SpatialTemplatePreference.init(coder:)(a1);

  return v2;
}

id SystemCoordinatorConfiguration._SpatialTemplatePreference.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SystemCoordinatorConfiguration.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id specialized XPCWrapper.init(_:)(__int128 *a1)
{
  v3 = a1[3];
  v29 = a1[2];
  v30 = v3;
  v31 = a1[4];
  v4 = a1[1];
  v27 = *a1;
  v28 = v4;
  v5 = MEMORY[0x1E69E7D40];
  v6 = (v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x68));
  v32[2] = v29;
  v32[3] = v3;
  v32[4] = v31;
  v32[0] = v27;
  v32[1] = v4;
  v7 = a1[4];
  v6[3] = a1[3];
  v6[4] = v7;
  v8 = a1[2];
  v6[1] = a1[1];
  v6[2] = v8;
  *v6 = *a1;
  v9 = type metadata accessor for JSONEncoder();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  outlined init with copy of SystemCoordinatorConfiguration.Wrapped(v32, &v22);
  JSONEncoder.init()();
  lazy protocol witness table accessor for type SystemCoordinatorConfiguration.Wrapped and conformance SystemCoordinatorConfiguration.Wrapped();
  v12 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v2)
  {

    v21[2] = v29;
    v21[3] = v30;
    v21[4] = v31;
    v21[0] = v27;
    v21[1] = v28;
    outlined destroy of SystemCoordinatorConfiguration.Wrapped(v21);
    v14 = v6[3];
    v24 = v6[2];
    v25 = v14;
    v26 = v6[4];
    v15 = v6[1];
    v22 = *v6;
    v23 = v15;
    outlined destroy of SystemCoordinatorConfiguration.Wrapped(&v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities10XPCWrapperCyAA30SystemCoordinatorConfigurationC7WrappedVGMd, &_s15GroupActivities10XPCWrapperCyAA30SystemCoordinatorConfigurationC7WrappedVGMR);
    return swift_deallocPartialClassInstance();
  }

  else
  {
    v17 = v12;
    v18 = v13;
    v24 = v29;
    v25 = v30;
    v26 = v31;
    v22 = v27;
    v23 = v28;
    outlined destroy of SystemCoordinatorConfiguration.Wrapped(&v22);

    v19 = (v1 + *((*v5 & *v1) + 0x70));
    *v19 = v17;
    v19[1] = v18;
    v20.receiver = v1;
    v20.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities10XPCWrapperCyAA30SystemCoordinatorConfigurationC7WrappedVGMd, &_s15GroupActivities10XPCWrapperCyAA30SystemCoordinatorConfigurationC7WrappedVGMR);
    return objc_msgSendSuper2(&v20, sel_init);
  }
}

{
  v3 = a1[7];
  v57 = a1[6];
  v58 = v3;
  v4 = a1[9];
  v59 = a1[8];
  v60 = v4;
  v5 = a1[3];
  v53 = a1[2];
  v54 = v5;
  v6 = a1[5];
  v55 = a1[4];
  v56 = v6;
  v7 = a1[1];
  v51 = *a1;
  v52 = v7;
  v8 = MEMORY[0x1E69E7D40];
  v9 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x68);
  v10 = a1[7];
  v11 = a1[5];
  v66 = a1[6];
  v67 = v10;
  v12 = a1[7];
  v13 = a1[9];
  v68 = a1[8];
  v14 = v68;
  v69 = v13;
  v15 = a1[3];
  v17 = a1[1];
  v62 = a1[2];
  v16 = v62;
  v63 = v15;
  v18 = a1[3];
  v19 = a1[5];
  v64 = a1[4];
  v20 = v64;
  v65 = v19;
  v21 = a1[1];
  v61[0] = *a1;
  v22 = v61[0];
  v61[1] = v21;
  v23 = (v1 + v9);
  v23[6] = v66;
  v23[7] = v12;
  v24 = a1[9];
  v23[8] = v14;
  v23[9] = v24;
  v23[2] = v16;
  v23[3] = v18;
  v23[4] = v20;
  v23[5] = v11;
  *v23 = v22;
  v23[1] = v17;
  v25 = type metadata accessor for JSONEncoder();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  outlined init with copy of SystemCoordinatorState.ParticipantState.Seat(v61, &v41);
  JSONEncoder.init()();
  lazy protocol witness table accessor for type SystemCoordinatorState.ParticipantState.Seat and conformance SystemCoordinatorState.ParticipantState.Seat();
  v28 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v2)
  {

    v40[6] = v57;
    v40[7] = v58;
    v40[8] = v59;
    v40[9] = v60;
    v40[2] = v53;
    v40[3] = v54;
    v40[4] = v55;
    v40[5] = v56;
    v40[0] = v51;
    v40[1] = v52;
    outlined destroy of SystemCoordinatorState.ParticipantState.Seat(v40);
    v30 = v23[7];
    v47 = v23[6];
    v48 = v30;
    v31 = v23[9];
    v49 = v23[8];
    v50 = v31;
    v32 = v23[3];
    v43 = v23[2];
    v44 = v32;
    v33 = v23[5];
    v45 = v23[4];
    v46 = v33;
    v34 = v23[1];
    v41 = *v23;
    v42 = v34;
    outlined destroy of SystemCoordinatorState.ParticipantState.Seat(&v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities10XPCWrapperCyAA22SystemCoordinatorStateC011ParticipantF0C4SeatVGMd, &_s15GroupActivities10XPCWrapperCyAA22SystemCoordinatorStateC011ParticipantF0C4SeatVGMR);
    return swift_deallocPartialClassInstance();
  }

  else
  {
    v36 = v28;
    v37 = v29;
    v47 = v57;
    v48 = v58;
    v49 = v59;
    v50 = v60;
    v43 = v53;
    v44 = v54;
    v45 = v55;
    v46 = v56;
    v41 = v51;
    v42 = v52;
    outlined destroy of SystemCoordinatorState.ParticipantState.Seat(&v41);

    v38 = (v1 + *((*v8 & *v1) + 0x70));
    *v38 = v36;
    v38[1] = v37;
    v39.receiver = v1;
    v39.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities10XPCWrapperCyAA22SystemCoordinatorStateC011ParticipantF0C4SeatVGMd, &_s15GroupActivities10XPCWrapperCyAA22SystemCoordinatorStateC011ParticipantF0C4SeatVGMR);
    return objc_msgSendSuper2(&v39, sel_init);
  }
}

uint64_t outlined consume of SystemCoordinatorParticipantRoleRequest(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

id specialized SystemCoordinatorConfiguration.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1B2714130](0xD00000000000001BLL, 0x80000001AF01B930);
  v5 = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR___CPSystemCoordinatorConfiguration_supportsGroupImmersiveSpace] = v5;
  v6 = MEMORY[0x1B2714130](0xD00000000000001ELL, 0x80000001AF01B950);
  v7 = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR___CPSystemCoordinatorConfiguration_isObservingGroupImmersionStyle] = v7;
  v8 = MEMORY[0x1B2714130](0xD00000000000001DLL, 0x80000001AF01B970);
  v9 = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR___CPSystemCoordinatorConfiguration_faceAppTowardsEachParticipant] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities10XPCWrapperCyAA30SystemCoordinatorConfigurationC7WrappedVGMd, &_s15GroupActivities10XPCWrapperCyAA30SystemCoordinatorConfigurationC7WrappedVGMR);
  *&v2[OBJC_IVAR___CPSystemCoordinatorConfiguration_wrapped] = NSCoder.decodeObject<A>(of:forKey:)();
  v11.receiver = v2;
  v11.super_class = type metadata accessor for SystemCoordinatorConfiguration();
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t outlined copy of SpatialTemplatePreferenceOutput.SpatialTemplate(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!a4)
  {
  }

  return result;
}

uint64_t outlined copy of SystemCoordinatorParticipantRoleRequest(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SystemCoordinatorConfiguration.Wrapped.CodingKeys and conformance SystemCoordinatorConfiguration.Wrapped.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SystemCoordinatorConfiguration.Wrapped.CodingKeys and conformance SystemCoordinatorConfiguration.Wrapped.CodingKeys;
  if (!lazy protocol witness table cache variable for type SystemCoordinatorConfiguration.Wrapped.CodingKeys and conformance SystemCoordinatorConfiguration.Wrapped.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemCoordinatorConfiguration.Wrapped.CodingKeys and conformance SystemCoordinatorConfiguration.Wrapped.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SystemCoordinatorConfiguration.Wrapped.CodingKeys and conformance SystemCoordinatorConfiguration.Wrapped.CodingKeys;
  if (!lazy protocol witness table cache variable for type SystemCoordinatorConfiguration.Wrapped.CodingKeys and conformance SystemCoordinatorConfiguration.Wrapped.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemCoordinatorConfiguration.Wrapped.CodingKeys and conformance SystemCoordinatorConfiguration.Wrapped.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SystemCoordinatorConfiguration.Wrapped.CodingKeys and conformance SystemCoordinatorConfiguration.Wrapped.CodingKeys;
  if (!lazy protocol witness table cache variable for type SystemCoordinatorConfiguration.Wrapped.CodingKeys and conformance SystemCoordinatorConfiguration.Wrapped.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemCoordinatorConfiguration.Wrapped.CodingKeys and conformance SystemCoordinatorConfiguration.Wrapped.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SystemCoordinatorConfiguration.Wrapped.CodingKeys and conformance SystemCoordinatorConfiguration.Wrapped.CodingKeys;
  if (!lazy protocol witness table cache variable for type SystemCoordinatorConfiguration.Wrapped.CodingKeys and conformance SystemCoordinatorConfiguration.Wrapped.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemCoordinatorConfiguration.Wrapped.CodingKeys and conformance SystemCoordinatorConfiguration.Wrapped.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput and conformance SpatialTemplatePreferenceOutput()
{
  result = lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput and conformance SpatialTemplatePreferenceOutput;
  if (!lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput and conformance SpatialTemplatePreferenceOutput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput and conformance SpatialTemplatePreferenceOutput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput and conformance SpatialTemplatePreferenceOutput;
  if (!lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput and conformance SpatialTemplatePreferenceOutput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput and conformance SpatialTemplatePreferenceOutput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput and conformance SpatialTemplatePreferenceOutput;
  if (!lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput and conformance SpatialTemplatePreferenceOutput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput and conformance SpatialTemplatePreferenceOutput);
  }

  return result;
}

uint64_t outlined consume of SpatialTemplatePreferenceOutput.SpatialTemplate(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!a4)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SystemCoordinatorParticipantRoleRequest and conformance SystemCoordinatorParticipantRoleRequest()
{
  result = lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest and conformance SystemCoordinatorParticipantRoleRequest;
  if (!lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest and conformance SystemCoordinatorParticipantRoleRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest and conformance SystemCoordinatorParticipantRoleRequest);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest and conformance SystemCoordinatorParticipantRoleRequest;
  if (!lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest and conformance SystemCoordinatorParticipantRoleRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest and conformance SystemCoordinatorParticipantRoleRequest);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest and conformance SystemCoordinatorParticipantRoleRequest;
  if (!lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest and conformance SystemCoordinatorParticipantRoleRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest and conformance SystemCoordinatorParticipantRoleRequest);
  }

  return result;
}

uint64_t specialized SystemCoordinatorConfiguration.Wrapped.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001FLL && 0x80000001AF01BAE0 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000025 && 0x80000001AF01BB00 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000021 && 0x80000001AF01BB30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001AF01BB60 == a2)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

id specialized SystemCoordinatorConfiguration._SpatialTemplatePreference.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1B2714130](0x656761726F7473, 0xE700000000000000);
  v5 = [a1 decodeIntegerForKey_];

  *&v2[OBJC_IVAR___CPSystemCoordinatorConfigurationTemplatePreference_storage] = v5;
  type metadata accessor for NSNumber();
  v6 = NSCoder.decodeObject<A>(of:forKey:)();
  v7 = v6;
  if (v6)
  {
    [v6 doubleValue];
    v9 = v8;

    v10 = OBJC_IVAR___CPSystemCoordinatorConfigurationTemplatePreference_contentExtent;
    *&v2[OBJC_IVAR___CPSystemCoordinatorConfigurationTemplatePreference_contentExtent] = v9;
  }

  else
  {
    v10 = OBJC_IVAR___CPSystemCoordinatorConfigurationTemplatePreference_contentExtent;
    *&v2[OBJC_IVAR___CPSystemCoordinatorConfigurationTemplatePreference_contentExtent] = 0;
  }

  v2[v10 + 8] = v7 == 0;
  v12.receiver = v2;
  v12.super_class = type metadata accessor for SystemCoordinatorConfiguration._SpatialTemplatePreference();
  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t get_enum_tag_for_layout_string_15GroupActivities31SpatialTemplatePreferenceOutputV0cD0O(uint64_t a1)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

uint64_t get_enum_tag_for_layout_string_15GroupActivities39SystemCoordinatorParticipantRoleRequestO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

uint64_t getEnumTagSinglePayload for SystemCoordinatorConfiguration.Wrapped(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SystemCoordinatorConfiguration.Wrapped(uint64_t result, int a2, int a3)
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
      *(result + 64) = (a2 - 1);
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

unint64_t lazy protocol witness table accessor for type SystemCoordinatorState.ParticipantState.Seat and conformance SystemCoordinatorState.ParticipantState.Seat()
{
  result = lazy protocol witness table cache variable for type SystemCoordinatorState.ParticipantState.Seat and conformance SystemCoordinatorState.ParticipantState.Seat;
  if (!lazy protocol witness table cache variable for type SystemCoordinatorState.ParticipantState.Seat and conformance SystemCoordinatorState.ParticipantState.Seat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemCoordinatorState.ParticipantState.Seat and conformance SystemCoordinatorState.ParticipantState.Seat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SystemCoordinatorState.ParticipantState.Seat and conformance SystemCoordinatorState.ParticipantState.Seat;
  if (!lazy protocol witness table cache variable for type SystemCoordinatorState.ParticipantState.Seat and conformance SystemCoordinatorState.ParticipantState.Seat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemCoordinatorState.ParticipantState.Seat and conformance SystemCoordinatorState.ParticipantState.Seat);
  }

  return result;
}

unint64_t type metadata accessor for NSNumber()
{
  result = lazy cache variable for type metadata for NSNumber;
  if (!lazy cache variable for type metadata for NSNumber)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSNumber);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SystemCoordinatorConfiguration.Wrapped and conformance SystemCoordinatorConfiguration.Wrapped()
{
  result = lazy protocol witness table cache variable for type SystemCoordinatorConfiguration.Wrapped and conformance SystemCoordinatorConfiguration.Wrapped;
  if (!lazy protocol witness table cache variable for type SystemCoordinatorConfiguration.Wrapped and conformance SystemCoordinatorConfiguration.Wrapped)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemCoordinatorConfiguration.Wrapped and conformance SystemCoordinatorConfiguration.Wrapped);
  }

  return result;
}

uint64_t AssertionManager.updateCallback.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t AssertionManager.assertionCount.getter()
{
  v1 = *(v0 + 32);
  Lock.withLock<A>(_:)();
  return v3;
}

void AssertionManager.assertionCount.setter(uint64_t a1)
{
  v2 = v1;
  v4 = v1[4];
  Lock.lock()();
  v5 = v1[5];
  if (v5 == a1)
  {
    Lock.unlock()();
  }

  else
  {
    v1[5] = a1;
    Lock.unlock()();
    if (v5)
    {
      v6 = 1;
    }

    else
    {
      v6 = a1 <= 0;
    }

    if (!v6 || (v5 >= 1 ? (v7 = a1 == 0) : (v7 = 0), v7))
    {
      v8 = v1[3];
      (v2[2])(a1);
    }
  }

  Lock.assertNotOwned()();
}

void *AssertionManager.__allocating_init(callback:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = type metadata accessor for Lock();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v4[4] = Lock.init()();
  v4[5] = 0;
  v4[2] = a1;
  v4[3] = a2;
  return v4;
}

void *AssertionManager.init(callback:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Lock();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v2[4] = Lock.init()();
  v2[5] = 0;
  v2[2] = a1;
  v2[3] = a2;
  return v2;
}

uint64_t AssertionManager.subscribe()()
{
  type metadata accessor for AssertionManager.Assertion();
  swift_allocObject();

  v1 = specialized AssertionManager.Assertion.init(manager:)(v0);

  return v1;
}

uint64_t AssertionManager.Assertion.__allocating_init(manager:)(uint64_t a1)
{
  swift_allocObject();
  v2 = specialized AssertionManager.Assertion.init(manager:)(a1);

  return v2;
}

uint64_t AssertionManager.Assertion.init(manager:)(uint64_t a1)
{
  v1 = specialized AssertionManager.Assertion.init(manager:)(a1);

  return v1;
}

uint64_t AssertionManager.Assertion.deinit()
{
  v1 = v0;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
LABEL_11:
    swift_weakDestroy();
    return v1;
  }

  v3 = Strong;
  v4 = *(Strong + 32);
  result = Lock.withLock<A>(_:)();
  v6 = v10 - 1;
  if (!__OFSUB__(v10, 1))
  {
    v7 = *(v3 + 32);
    Lock.lock()();
    v8 = *(v3 + 40);
    if (v8 == v6)
    {
      Lock.unlock()();
    }

    else
    {
      *(v3 + 40) = v6;
      Lock.unlock()();
      if (!v8 && v6 >= 1 || v8 >= 1 && v10 == 1)
      {
        v9 = *(v3 + 24);
        (*(v3 + 16))(v6);
      }
    }

    Lock.assertNotOwned()();

    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t AssertionManager.Assertion.__deallocating_deinit()
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
LABEL_11:
    swift_weakDestroy();
    return swift_deallocClassInstance();
  }

  v1 = Strong;
  v2 = *(Strong + 32);
  result = Lock.withLock<A>(_:)();
  v4 = v8 - 1;
  if (!__OFSUB__(v8, 1))
  {
    v5 = *(v1 + 32);
    Lock.lock()();
    v6 = *(v1 + 40);
    if (v6 == v4)
    {
      Lock.unlock()();
    }

    else
    {
      *(v1 + 40) = v4;
      Lock.unlock()();
      if (!v6 && v4 >= 1 || v6 >= 1 && v8 == 1)
      {
        v7 = *(v1 + 24);
        (*(v1 + 16))(v4);
      }
    }

    Lock.assertNotOwned()();

    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t AssertionManager.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t AssertionManager.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t specialized AssertionManager.Assertion.init(manager:)(uint64_t a1)
{
  v2 = v1;
  swift_weakInit();
  swift_weakAssign();
  v4 = *(a1 + 32);
  result = Lock.withLock<A>(_:)();
  v6 = v9 + 1;
  if (__OFADD__(v9, 1))
  {
    __break(1u);
  }

  else
  {
    Lock.lock()();
    v7 = *(a1 + 40);
    if (v7 == v6)
    {
      Lock.unlock()();
    }

    else
    {
      *(a1 + 40) = v6;
      Lock.unlock()();
      if (!v7 && v6 > 0 || v7 >= 1 && v9 == -1)
      {
        v8 = *(a1 + 24);
        (*(a1 + 16))(v6);
      }
    }

    Lock.assertNotOwned()();
    return v2;
  }

  return result;
}

uint64_t SecTaskRef.value<A>(_:forEntitlement:)@<X0>(void (*a1)(void, void, void)@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  error[1] = *MEMORY[0x1E69E9840];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore11EntitlementOSgMd, &_s14CopresenceCore11EntitlementOSgMR);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v71 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v73 = &v64 - v12;
  v13 = type metadata accessor for Entitlement();
  v74 = *(v13 - 8);
  v14 = *(v74 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v69 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v70 = &v64 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v75 = &v64 - v19;
  v20 = type metadata accessor for Optional();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v64 - v23;
  error[0] = 0;
  v72 = a1;
  v25 = Entitlement.rawValue.getter();
  v26 = MEMORY[0x1B2714130](v25);

  v27 = SecTaskCopyValueForEntitlement(v4, v26, error);

  v77 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_syXlSgMd, &_syXlSgMR);
  v28 = swift_dynamicCast();
  v29 = *(*(a2 - 8) + 56);
  if (v28)
  {
    v30 = *(a2 - 8);
    v29(v24, 0, 1, a2);
    (*(v30 + 32))(a3, v24, a2);
    v31 = a3;
    v32 = 0;
  }

  else
  {
    v68 = a3;
    v29(v24, 1, 1, a2);
    (*(v21 + 8))(v24, v20);
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static Log.default);
    v34 = v74;
    v35 = v75;
    v36 = v72;
    v72 = *(v74 + 16);
    v72(v75, v36, v13);
    v37 = v4;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v65 = v39;
      v66 = v38;
      v67 = v29;
      v40 = v34;
      v41 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v78 = v64;
      *v41 = 136315650;
      v77 = v37;
      type metadata accessor for SecTaskRef(0);
      v42 = v37;
      v43 = String.init<A>(reflecting:)();
      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, &v78);

      *(v41 + 4) = v45;
      *(v41 + 12) = 2080;
      v47 = v72;
      v46 = v73;
      v72(v73, v35, v13);
      (*(v40 + 56))(v46, 0, 1, v13);
      v48 = v46;
      v49 = v71;
      outlined init with copy of Entitlement?(v48, v71);
      if ((*(v40 + 48))(v49, 1, v13) == 1)
      {
        v50 = 0xE300000000000000;
        v51 = 7104878;
      }

      else
      {
        v53 = v70;
        (*(v40 + 32))(v70, v49, v13);
        v47(v69, v53, v13);
        v51 = String.init<A>(reflecting:)();
        v50 = v54;
        (*(v40 + 8))(v53, v13);
      }

      outlined destroy of Entitlement?(v73);
      (*(v40 + 8))(v75, v13);
      v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v50, &v78);

      *(v41 + 14) = v55;
      *(v41 + 22) = 2080;
      swift_beginAccess();
      if (error[0])
      {
        v76 = error[0];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss9UnmanagedVySo10CFErrorRefaGMd, &_ss9UnmanagedVySo10CFErrorRefaGMR);
        v56 = String.init<A>(reflecting:)();
        v58 = v57;
        v29 = v67;
        v52 = v68;
        v59 = v66;
      }

      else
      {
        v58 = 0xE300000000000000;
        v29 = v67;
        v52 = v68;
        v59 = v66;
        v56 = 7104878;
      }

      v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v58, &v78);

      *(v41 + 24) = v60;
      _os_log_impl(&dword_1AEE80000, v59, v65, "Task %s couldn't find entitlement %s error %s", v41, 0x20u);
      v61 = v64;
      swift_arrayDestroy();
      MEMORY[0x1B2715BA0](v61, -1, -1);
      MEMORY[0x1B2715BA0](v41, -1, -1);
    }

    else
    {

      (*(v34 + 8))(v35, v13);
      v52 = v68;
    }

    v31 = v52;
    v32 = 1;
  }

  result = (v29)(v31, v32, 1, a2);
  v63 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t outlined init with copy of Entitlement?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore11EntitlementOSgMd, &_s14CopresenceCore11EntitlementOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Entitlement?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore11EntitlementOSgMd, &_s14CopresenceCore11EntitlementOSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static Encodable.messageIdentifier.getter(uint64_t a1)
{
  v2 = swift_conformsToProtocol2();
  if (v2 && a1)
  {
    return (*(v2 + 8))(a1, v2);
  }

  return _typeName(_:qualified:)();
}

uint64_t _PublisherElements.Iterator.Inner.pending.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t _PublisherElements.Iterator.Inner.pending.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t _PublisherElements.Iterator.Inner.state.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 80);
  v5 = *(v3 + 88);
  v6 = type metadata accessor for _PublisherElements.Iterator.Inner.State();
  return (*(*(v6 - 8) + 16))(a1, v1 + 4, v6);
}

uint64_t _PublisherElements.Iterator.Inner.state.setter(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 80);
  v5 = *(v3 + 88);
  v6 = type metadata accessor for _PublisherElements.Iterator.Inner.State();
  (*(*(v6 - 8) + 40))(v1 + 4, a1, v6);
  return swift_endAccess();
}

uint64_t _PublisherElements.Iterator.Inner.pendingDemand.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 72) = a1;
  return result;
}

uint64_t _PublisherElements.Iterator.Inner.__allocating_init()()
{
  v0 = swift_allocObject();
  _PublisherElements.Iterator.Inner.init()();
  return v0;
}

uint64_t *_PublisherElements.Iterator.Inner.deinit()
{
  v1 = *v0;
  MEMORY[0x1B2715BA0](v0[2], -1, -1);
  v2 = v0[3];

  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  v5 = type metadata accessor for _PublisherElements.Iterator.Inner.State();
  (*(*(v5 - 8) + 8))(v0 + 4, v5);
  return v0;
}

uint64_t _PublisherElements.Iterator.Inner.__deallocating_deinit()
{
  _PublisherElements.Iterator.Inner.deinit();

  return swift_deallocClassInstance();
}

uint64_t _PublisherElements.Iterator.Inner.receive(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 88);
  v6 = *(v4 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  v27 = *(v8 - 8);
  v9 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - v10;
  v12 = *(v2 + 16);
  os_unfair_lock_lock(v12);
  swift_beginAccess();
  v13 = type metadata accessor for _PublisherElements.Iterator.Inner.State();
  v14 = *(v13 - 1);
  (*(v14 + 16))(v30, v2 + 32, v13);
  if (v31 >= 2)
  {
LABEL_11:
    swift_beginAccess();
    v29 = *(v2 + 24);
    type metadata accessor for UnsafeContinuation();
    type metadata accessor for Array();
    swift_getWitnessTable();
    if (Collection.isEmpty.getter())
    {
      os_unfair_lock_unlock(v12);
    }

    else
    {
      swift_beginAccess();
      swift_getWitnessTable();
      RangeReplaceableCollection.removeFirst()();
      swift_endAccess();
      v20 = v28;
      os_unfair_lock_unlock(v12);
      v21 = v14;
      v22 = *(AssociatedTypeWitness - 8);
      (*(v22 + 16))(v11, a1, AssociatedTypeWitness);
      (*(v22 + 56))(v11, 0, 1, AssociatedTypeWitness);
      v14 = v21;
      (*(v27 + 32))(*(*(v20 + 64) + 40), v11, v8);
      swift_continuation_resume();
    }
  }

  else
  {
    v25 = v14;
    v26 = v13;
    swift_beginAccess();
    a1 = *(v2 + 24);
    swift_beginAccess();
    v15 = type metadata accessor for UnsafeContinuation();
    type metadata accessor for Array();

    Array.removeAll(keepingCapacity:)(0);
    swift_endAccess();
    os_unfair_lock_unlock(v12);
    if (MEMORY[0x1B2714340](a1, v15))
    {
      v12 = (AssociatedTypeWitness - 8);
      v13 = (v27 + 32);
      v14 = 4;
      do
      {
        v16 = v14 - 4;
        IsNativeType = Array._hoistableIsNativeTypeChecked()();
        Array._checkSubscript(_:wasNativeTypeChecked:)();
        if (IsNativeType)
        {
          v18 = *(a1 + 8 * v14);
          v19 = __OFADD__(v16, 1);
          v2 = v14 - 3;
          if (v19)
          {
            goto LABEL_10;
          }
        }

        else
        {
          v18 = _ArrayBuffer._getElementSlowPath(_:)();
          swift_unknownObjectRelease();
          v19 = __OFADD__(v16, 1);
          v2 = v14 - 3;
          if (v19)
          {
LABEL_10:
            __break(1u);
            goto LABEL_11;
          }
        }

        (*(*(AssociatedTypeWitness - 8) + 56))(v11, 1, 1, AssociatedTypeWitness);
        (*v13)(*(*(v18 + 64) + 40), v11, v8);
        swift_continuation_resume();
        ++v14;
      }

      while (v2 != MEMORY[0x1B2714340](a1, v15));
    }

    v14 = v25;
    v13 = v26;
  }

  v23 = static Subscribers.Demand.none.getter();
  (*(v14 + 8))(v30, v13);
  return v23;
}

Swift::Void __swiftcall _PublisherElements.Iterator.Inner.cancel()()
{
  v1 = v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  v60 = *(v5 - 8);
  v6 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v55 - v7;
  v59 = *(v1 + 16);
  os_unfair_lock_lock(v59);
  swift_beginAccess();
  v9 = *(v1 + 24);
  swift_beginAccess();
  v63 = v5;
  v10 = type metadata accessor for UnsafeContinuation();
  type metadata accessor for Array();

  Array.removeAll(keepingCapacity:)(0);
  swift_endAccess();
  swift_beginAccess();
  v11 = type metadata accessor for _PublisherElements.Iterator.Inner.State();
  v61 = *(v11 - 8);
  v62 = v11;
  v12 = *(v61 + 16);
  v12(&v74, v1 + 32, v11);
  if (v75 >= 2)
  {
    outlined init with take of Transferable(&v74, v72);
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Log.default);
    outlined init with copy of Transferable(v72, v70);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    v30 = os_log_type_enabled(v28, v29);
    v31 = v60;
    if (v30)
    {
      LODWORD(v58) = v29;
      v32 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v69 = v57;
      v33 = v32;
      *v32 = 136315138;
      outlined init with copy of Transferable(v70, v68);
      outlined init with copy of Subscription?(v68, &v66);
      if (v67)
      {
        outlined init with take of Transferable(&v66, v65);
        outlined init with copy of Transferable(v65, &v64);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12Subscription_pMd, &_s7Combine12Subscription_pMR);
        v34 = String.init<A>(reflecting:)();
        v36 = v35;
        __swift_destroy_boxed_opaque_existential_0(v65);
      }

      else
      {
        v36 = 0xE300000000000000;
        v34 = 7104878;
      }

      outlined destroy of Subscription?(v68);
      __swift_destroy_boxed_opaque_existential_0(v70);
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, &v69);

      v45 = v33;
      *(v33 + 1) = v44;
      _os_log_impl(&dword_1AEE80000, v28, v58, "Handling cancellation by terminating upstream subscription: %s", v33, 0xCu);
      v46 = v57;
      __swift_destroy_boxed_opaque_existential_0(v57);
      MEMORY[0x1B2715BA0](v46, -1, -1);
      MEMORY[0x1B2715BA0](v45, -1, -1);

      v31 = v60;
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v70);
    }

    memset(v70, 0, sizeof(v70));
    v71 = xmmword_1AF00FCC0;
    swift_beginAccess();
    (*(v61 + 40))(v1 + 32, v70, v62);
    swift_endAccess();
    os_unfair_lock_unlock(v59);
    v47 = *(&v73 + 1);
    __swift_project_boxed_opaque_existential_1(v72, v73);
    v48 = *(v47 + 8);
    dispatch thunk of Cancellable.cancel()();
    if (MEMORY[0x1B2714340](v9, v10))
    {
      v49 = (v31 + 32);
      v50 = 4;
      do
      {
        v51 = v50 - 4;
        IsNativeType = Array._hoistableIsNativeTypeChecked()();
        Array._checkSubscript(_:wasNativeTypeChecked:)();
        if (IsNativeType)
        {
          v53 = *(v9 + 8 * v50);
          v42 = __OFADD__(v51, 1);
          v54 = v50 - 3;
          if (v42)
          {
            goto LABEL_33;
          }
        }

        else
        {
          v53 = _ArrayBuffer._getElementSlowPath(_:)();
          swift_unknownObjectRelease();
          v42 = __OFADD__(v51, 1);
          v54 = v50 - 3;
          if (v42)
          {
LABEL_33:
            __break(1u);
            break;
          }
        }

        (*(*(AssociatedTypeWitness - 8) + 56))(v8, 1, 1, AssociatedTypeWitness);
        (*v49)(*(*(v53 + 64) + 40), v8, v63);
        swift_continuation_resume();
        ++v50;
      }

      while (v54 != MEMORY[0x1B2714340](v9, v10));
    }

    __swift_destroy_boxed_opaque_existential_0(v72);
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Log.default);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v57 = v14;
      v17 = v16;
      v58 = swift_slowAlloc();
      v70[0] = v58;
      *v17 = 136315138;
      v56 = v15;
      v18 = v62;
      v12(v72, v1 + 32, v62);
      v19 = >> prefix<A>(_:)(v72, v18);
      v21 = v20;
      v22 = type metadata accessor for Optional();
      (*(*(v22 - 8) + 8))(v72, v22);
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, v70);

      v24 = v17;
      *(v17 + 4) = v23;
      v25 = v57;
      _os_log_impl(&dword_1AEE80000, v57, v56, "Terminating sequence from state: %s", v24, 0xCu);
      v26 = v58;
      __swift_destroy_boxed_opaque_existential_0(v58);
      MEMORY[0x1B2715BA0](v26, -1, -1);
      MEMORY[0x1B2715BA0](v24, -1, -1);
    }

    else
    {

      v18 = v62;
    }

    memset(v72, 0, sizeof(v72));
    v73 = xmmword_1AF00FCC0;
    swift_beginAccess();
    (*(v61 + 40))(v1 + 32, v72, v18);
    swift_endAccess();
    os_unfair_lock_unlock(v59);
    if (MEMORY[0x1B2714340](v9, v10))
    {
      v37 = (v60 + 32);
      v38 = 4;
      do
      {
        v39 = v38 - 4;
        v40 = Array._hoistableIsNativeTypeChecked()();
        Array._checkSubscript(_:wasNativeTypeChecked:)();
        if (v40)
        {
          v41 = *(v9 + 8 * v38);
          v42 = __OFADD__(v39, 1);
          v43 = v38 - 3;
          if (v42)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v41 = _ArrayBuffer._getElementSlowPath(_:)();
          swift_unknownObjectRelease();
          v42 = __OFADD__(v39, 1);
          v43 = v38 - 3;
          if (v42)
          {
LABEL_20:
            __break(1u);
            break;
          }
        }

        (*(*(AssociatedTypeWitness - 8) + 56))(v8, 1, 1, AssociatedTypeWitness);
        (*v37)(*(*(v41 + 64) + 40), v8, v63);
        swift_continuation_resume();
        ++v38;
      }

      while (v43 != MEMORY[0x1B2714340](v9, v10));
    }

    (*(v61 + 8))(&v74, v62);
  }
}

uint64_t _PublisherElements.Iterator.init(_:)(uint64_t a1, uint64_t a2)
{
  v4 = specialized _PublisherElements.Iterator.init(_:)();
  (*(*(a2 - 8) + 8))(a1, a2);
  return v4;
}

void _PublisherElements.Iterator.next()()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 40);
    v6 = *(v2 + 48);

    v7 = *(v4 + 8);

    v7();
  }
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance _PublisherElements<A>.Iterator(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return _PublisherElements.Iterator.next()(a1, a2);
}

uint64_t _s15GroupActivities18_PublisherElementsV8IteratorVyx_GScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x1E69E85D8] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = _s15GroupActivities18_PublisherElementsV8IteratorVyx_GScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6);
}

uint64_t _s15GroupActivities18_PublisherElementsV8IteratorVyx_GScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t protocol witness for AsyncSequence.makeAsyncIterator() in conformance _PublisherElements<A>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = _PublisherElements.makeAsyncIterator()(a1);
  result = (*(*(a1 - 8) + 8))(v2, a1);
  *a2 = v5;
  return result;
}

uint64_t specialized _PublisherElements.Iterator.Inner.receive(completion:)()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v21[-v7];
  v9 = v0[2];
  os_unfair_lock_lock(v9);
  memset(v22, 0, sizeof(v22));
  v23 = xmmword_1AF00FCC0;
  swift_beginAccess();
  v10 = type metadata accessor for _PublisherElements.Iterator.Inner.State();
  (*(*(v10 - 8) + 40))(v0 + 4, v22, v10);
  swift_endAccess();
  swift_beginAccess();
  v11 = v0[3];
  swift_beginAccess();
  v12 = type metadata accessor for UnsafeContinuation();
  type metadata accessor for Array();

  Array.removeAll(keepingCapacity:)(0);
  swift_endAccess();
  os_unfair_lock_unlock(v9);
  if (MEMORY[0x1B2714340](v11, v12))
  {
    v13 = (v5 + 32);
    v14 = 4;
    do
    {
      v15 = v14 - 4;
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        v17 = *(v11 + 8 * v14);
        v18 = __OFADD__(v15, 1);
        v19 = v14 - 3;
        if (v18)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v17 = _ArrayBuffer._getElementSlowPath(_:)();
        swift_unknownObjectRelease();
        v18 = __OFADD__(v15, 1);
        v19 = v14 - 3;
        if (v18)
        {
LABEL_9:
          __break(1u);
        }
      }

      (*(*(AssociatedTypeWitness - 8) + 56))(v8, 1, 1, AssociatedTypeWitness);
      (*v13)(*(*(v17 + 64) + 40), v8, v4);
      swift_continuation_resume();
      ++v14;
    }

    while (v19 != MEMORY[0x1B2714340](v11, v12));
  }
}

uint64_t outlined init with copy of Subscription?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12Subscription_pSgMd, &_s7Combine12Subscription_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Subscription?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12Subscription_pSgMd, &_s7Combine12Subscription_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for _PublisherElements(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *storeEnumTagSinglePayload for _PublisherElements(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
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

uint64_t getEnumTagSinglePayload for _PublisherElements.Iterator.Inner.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 40))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 24);
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

uint64_t storeEnumTagSinglePayload for _PublisherElements.Iterator.Inner.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

double destructiveInjectEnumTag for _PublisherElements.Iterator.Inner.State(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

uint64_t dispatch thunk of AnyTransportSession.uploadAttachment(id:attachment:developerMetadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 40);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of AnyTransportSession.downloadAttachment(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 48);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of AnyTransportSession.fetchMetadata(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 56);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = partial apply for closure #1 in GroupActivityTransferRepresentation.body.getter;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of AnyTransportSession.removeAttachment(id:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 64);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return v11(a1, a2, a3);
}

void thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ()(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t PresenceSession.__allocating_init(provider:serviceProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  ObjectType = swift_getObjectType();
  v13 = specialized PresenceSession.init(provider:serviceProvider:)(a1, a2, a3, v11, ObjectType, a4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v13;
}

uint64_t PresenceSessionInfo.Participant.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PresenceSessionInfo.Participant.handle.getter()
{
  v1 = (v0 + *(type metadata accessor for PresenceSessionInfo.Participant(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PresenceSessionInfo.Participant.description.getter()
{
  _StringGuts.grow(_:)(52);
  MEMORY[0x1B27141F0](0xD000000000000010, 0x80000001AF01BC20);
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B27141F0](v1);

  MEMORY[0x1B27141F0](0x656C646E6168202CLL, 0xEA0000000000203ALL);
  v2 = type metadata accessor for PresenceSessionInfo.Participant(0);
  MEMORY[0x1B27141F0](*(v0 + *(v2 + 20)), *(v0 + *(v2 + 20) + 8));
  MEMORY[0x1B27141F0](0xD000000000000013, 0x80000001AF01BC40);
  if (*(v0 + *(v2 + 24)))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (*(v0 + *(v2 + 24)))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x1B27141F0](v3, v4);

  MEMORY[0x1B27141F0](41, 0xE100000000000000);
  return 0;
}

uint64_t static PresenceSessionInfo.Participant.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (static UUID.== infix(_:_:)() & 1) != 0 && ((v4 = type metadata accessor for PresenceSessionInfo.Participant(0), v5 = *(v4 + 20), v6 = *(a1 + v5), v7 = *(a1 + v5 + 8), v8 = (a2 + v5), v6 == *v8) ? (v9 = v7 == v8[1]) : (v9 = 0), v9 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
  {
    v10 = *(a1 + *(v4 + 24)) ^ *(a2 + *(v4 + 24)) ^ 1;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

void PresenceSessionInfo.Participant.hash(into:)()
{
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  dispatch thunk of Hashable.hash(into:)();
  v1 = type metadata accessor for PresenceSessionInfo.Participant(0);
  v2 = (v0 + *(v1 + 20));
  v3 = *v2;
  v4 = v2[1];
  String.hash(into:)();
  Hasher._combine(_:)(*(v0 + *(v1 + 24)));
}

Swift::Int PresenceSessionInfo.Participant.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  dispatch thunk of Hashable.hash(into:)();
  v1 = type metadata accessor for PresenceSessionInfo.Participant(0);
  v2 = (v0 + *(v1 + 20));
  v3 = *v2;
  v4 = v2[1];
  String.hash(into:)();
  Hasher._combine(_:)(*(v0 + *(v1 + 24)));
  return Hasher._finalize()();
}

uint64_t PresenceSessionInfo.Participant.init(id:handle:isCurrentDevice:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for UUID();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  result = type metadata accessor for PresenceSessionInfo.Participant(0);
  v12 = (a5 + *(result + 20));
  *v12 = a2;
  v12[1] = a3;
  *(a5 + *(result + 24)) = a4;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PresenceSessionInfo.Participant(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  dispatch thunk of Hashable.hash(into:)();
  v3 = (v1 + *(a1 + 20));
  v4 = *v3;
  v5 = v3[1];
  String.hash(into:)();
  Hasher._combine(_:)(*(v1 + *(a1 + 24)));
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance PresenceSessionInfo.Participant(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  dispatch thunk of Hashable.hash(into:)();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];
  String.hash(into:)();
  Hasher._combine(_:)(*(v2 + *(a2 + 24)));
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PresenceSessionInfo.Participant(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  dispatch thunk of Hashable.hash(into:)();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];
  String.hash(into:)();
  Hasher._combine(_:)(*(v2 + *(a2 + 24)));
  return Hasher._finalize()();
}

uint64_t protocol witness for Identifiable.id.getter in conformance PresenceSessionInfo.Participant@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PresenceSessionInfo.Participant(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (static UUID.== infix(_:_:)() & 1) != 0 && ((v6 = *(a3 + 20), v7 = *(a1 + v6), v8 = *(a1 + v6 + 8), v9 = (a2 + v6), v7 == *v9) ? (v10 = v8 == v9[1]) : (v10 = 0), v10 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
  {
    v11 = *(a1 + *(a3 + 24)) ^ *(a2 + *(a3 + 24)) ^ 1;
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t static PresenceSessionInfo.default.getter@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for default != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static PresenceSessionInfo.default;
}

Swift::Int PresenceSession.Errors.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](a1 & 1);
  return Hasher._finalize()();
}

Swift::Int PresenceSession.State.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](a1);
  return Hasher._finalize()();
}

uint64_t PresenceSession.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15GroupActivities15PresenceSession_id;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t key path setter for PresenceSession.state : PresenceSession(_BYTE *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVy15GroupActivities15PresenceSessionC5StateOGMd, &_s14CopresenceCore14CurrentSubjectVy15GroupActivities15PresenceSessionC5StateOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10[-v7];
  LOBYTE(a1) = *a1;
  (*(v5 + 16))(&v10[-v7], *a2 + OBJC_IVAR____TtC15GroupActivities15PresenceSession__state, v4);
  v10[15] = a1;
  CurrentSubject.wrappedValue.setter();
  return (*(v5 + 8))(v8, v4);
}

uint64_t PresenceSession.state.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVy15GroupActivities15PresenceSessionC5StateOGMd, &_s14CopresenceCore14CurrentSubjectVy15GroupActivities15PresenceSessionC5StateOGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v7[-v4];
  (*(v2 + 16))(&v7[-v4], v0 + OBJC_IVAR____TtC15GroupActivities15PresenceSession__state, v1);
  CurrentSubject.wrappedValue.getter();
  (*(v2 + 8))(v5, v1);
  return v7[15];
}

uint64_t key path setter for PresenceSession.activeParticipants : PresenceSession(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15GroupActivities15PresenceSession_activeParticipants;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;

  return (*(*v3 + 392))(v6);
}

uint64_t PresenceSession.members.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVyShy15GroupActivities17AddressableMemberVGGMd, &_s14CopresenceCore14CurrentSubjectVyShy15GroupActivities17AddressableMemberVGGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v7 - v4;
  (*(v2 + 16))(v7 - v4, v0 + OBJC_IVAR____TtC15GroupActivities15PresenceSession__members, v1);
  CurrentSubject.wrappedValue.getter();
  (*(v2 + 8))(v5, v1);
  return v7[1];
}

uint64_t PresenceSession.members.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVyShy15GroupActivities17AddressableMemberVGGMd, &_s14CopresenceCore14CurrentSubjectVyShy15GroupActivities17AddressableMemberVGGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v9 - v6;
  (*(v4 + 16))(v9 - v6, v1 + OBJC_IVAR____TtC15GroupActivities15PresenceSession__members, v3);
  v9[1] = a1;
  CurrentSubject.wrappedValue.setter();
  return (*(v4 + 8))(v7, v3);
}

uint64_t (*PresenceSession.members.modify(uint64_t *a1))()
{
  v2 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVyShy15GroupActivities17AddressableMemberVGGMd, &_s14CopresenceCore14CurrentSubjectVyShy15GroupActivities17AddressableMemberVGGMR);
  v4[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[5] = v6;
  if (v2)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v6 + 64));
  }

  v4[6] = v8;
  (*(v7 + 16))();
  v4[7] = CurrentSubject.wrappedValue.modify();
  return PresenceSession.members.modify;
}

uint64_t PresenceSession.sessionInfo.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVy15GroupActivities19PresenceSessionInfoVGMd, &_s14CopresenceCore14CurrentSubjectVy15GroupActivities19PresenceSessionInfoVGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v7 - v4;
  (*(v2 + 16))(&v7 - v4, v0 + OBJC_IVAR____TtC15GroupActivities15PresenceSession__sessionInfo, v1);
  CurrentSubject.wrappedValue.getter();
  return (*(v2 + 8))(v5, v1);
}

uint64_t PresenceSession.sessionInfo.setter(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVy15GroupActivities19PresenceSessionInfoVGMd, &_s14CopresenceCore14CurrentSubjectVy15GroupActivities19PresenceSessionInfoVGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v10 - v6;
  v8 = *a1;
  (*(v4 + 16))(v10 - v6, v1 + OBJC_IVAR____TtC15GroupActivities15PresenceSession__sessionInfo, v3);
  v10[1] = v8;
  CurrentSubject.wrappedValue.setter();
  return (*(v4 + 8))(v7, v3);
}

uint64_t (*PresenceSession.sessionInfo.modify(uint64_t *a1))()
{
  v2 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVy15GroupActivities19PresenceSessionInfoVGMd, &_s14CopresenceCore14CurrentSubjectVy15GroupActivities19PresenceSessionInfoVGMR);
  v4[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[5] = v6;
  if (v2)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v6 + 64));
  }

  v4[6] = v8;
  (*(v7 + 16))();
  v4[7] = CurrentSubject.wrappedValue.modify();
  return PresenceSession.sessionInfo.modify;
}

uint64_t PresenceSession.$state.getter(uint64_t *a1, uint64_t *a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  (*(v6 + 16))(&v12 - v8, v3 + *a3, v5);
  v10 = CurrentSubject.projectedValue.getter();
  (*(v6 + 8))(v9, v5);
  return v10;
}

uint64_t PresenceSession.activeParticipants.getter(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t PresenceSession.observers.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15GroupActivities15PresenceSession_observers;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t PresenceSession.provider.getter()
{
  v1 = v0 + OBJC_IVAR____TtC15GroupActivities15PresenceSession_provider;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t PresenceSession.provider.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15GroupActivities15PresenceSession_provider;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*PresenceSession.provider.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15GroupActivities15PresenceSession_provider;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return SystemCoordinatorHost.delegate.modify;
}

uint64_t PresenceSession.serviceProvider.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15GroupActivities15PresenceSession_serviceProvider);
  v2 = *(v0 + OBJC_IVAR____TtC15GroupActivities15PresenceSession_serviceProvider + 8);
  return swift_unknownObjectRetain();
}

void *PresenceSession.connection.getter()
{
  v1 = OBJC_IVAR____TtC15GroupActivities15PresenceSession_connection;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void PresenceSession.connection.setter(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15GroupActivities15PresenceSession_connection;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (v5)
  {
    v6 = v5;
    dispatch thunk of XPCClient.destroyConnection()();

    v5 = *(v2 + v4);
  }

  *(v2 + v4) = a1;
}

void (*PresenceSession.connection.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC15GroupActivities15PresenceSession_connection;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return PresenceSession.connection.modify;
}

void PresenceSession.connection.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  v6 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v7 = *(v6 + v5);
  if (a2)
  {
    v8 = v3;
    if (v7)
    {
      v9 = v7;
      dispatch thunk of XPCClient.destroyConnection()();

      v10 = *(v6 + v5);
      v6 = v2[4];
      v5 = v2[5];
    }

    else
    {
      v10 = 0;
    }

    *(v6 + v5) = v3;

    v12 = *v4;
  }

  else
  {
    if (v7)
    {
      v11 = v7;
      dispatch thunk of XPCClient.destroyConnection()();

      v12 = *(v6 + v5);
      v6 = v2[4];
      v5 = v2[5];
    }

    else
    {
      v12 = 0;
    }

    *(v6 + v5) = v3;
  }

  free(v2);
}

uint64_t PresenceSession.__allocating_init(provider:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static BackgroundGroupSessionManager.shared;
  v7 = *(v2 + 352);

  return v7(a1, a2, v5, &protocol witness table for BackgroundGroupSessionManager);
}

uint64_t PresenceSession.init(provider:serviceProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v10 = specialized PresenceSession.init(provider:serviceProvider:)(a1, a2, a3, v4, ObjectType, a4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v10;
}

uint64_t closure #1 in PresenceSession.init(provider:serviceProvider:)(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v19 - v4;
  v6 = *a1;
  if (one-time initialization token for presenceSession != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Log.presenceSession);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v6;
    v20 = v11;
    *v10 = 136315138;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy15GroupActivities17AddressableMemberVGMd, &_sShy15GroupActivities17AddressableMemberVGMR);
    v12 = String.init<A>(reflecting:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v20);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1AEE80000, v8, v9, "Received updated membership list: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x1B2715BA0](v11, -1, -1);
    MEMORY[0x1B2715BA0](v10, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = result;
    v17 = type metadata accessor for TaskPriority();
    (*(*(v17 - 8) + 56))(v5, 1, 1, v17);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = v16;
    v18[5] = v6;

    _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in closure #1 in PresenceSession.init(provider:serviceProvider:), v18);
  }

  return result;
}

uint64_t closure #1 in closure #1 in PresenceSession.init(provider:serviceProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(*a4 + 376);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return v11(a5);
}

uint64_t PresenceSession.join()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x1EEE6DFA0](PresenceSession.join(), 0, 0);
}

{
  v17 = v0;
  if (one-time initialization token for presenceSession != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.presenceSession);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 16);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315138;
    v8 = PresenceSession.description.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v16);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1AEE80000, v3, v4, "%s received request to join", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1B2715BA0](v7, -1, -1);
    MEMORY[0x1B2715BA0](v6, -1, -1);
  }

  v11 = *(v0 + 16);
  v12 = *(MEMORY[0x1E6997520] + 4);

  v13 = swift_task_alloc();
  *(v0 + 24) = v13;
  *v13 = v0;
  v13[1] = PresenceSession.join();
  v14 = *(v0 + 16);

  return MEMORY[0x1EEDF8788]();
}

{
  v2 = *v1;
  v3 = *(*v1 + 24);
  v7 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v4 = PresenceSession.join();
  }

  else
  {
    v5 = *(v2 + 16);

    v4 = PresenceSession.join();
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  return (*(v0 + 8))();
}

{
  v1 = v0[2];

  v2 = v0[1];
  v3 = v0[4];

  return v2();
}

uint64_t closure #1 in PresenceSession.join()()
{
  v1 = *(**(v0 + 16) + 384);

  v6 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = closure #1 in PresenceSession.join();
  v4 = *(v0 + 16);

  return v6(&async function pointer to partial apply for closure #1 in closure #1 in PresenceSession.join());
}

{
  v2 = *(*v1 + 24);
  v3 = *v1;
  v3[4] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](PresenceSession.join(), 0, 0);
  }

  else
  {
    v4 = v3[2];

    v5 = v3[1];

    return v5();
  }
}

uint64_t closure #1 in closure #1 in PresenceSession.join()(uint64_t a1)
{
  v1[3] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVy15GroupActivities15PresenceSessionC5StateOGMd, &_s14CopresenceCore14CurrentSubjectVy15GroupActivities15PresenceSessionC5StateOGMR);
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in PresenceSession.join(), 0, 0);
}

{
  v3 = *v2;
  v4 = *(*v2 + 64);
  v7 = *v2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v1;

  if (v1)
  {
    v5 = closure #1 in closure #1 in PresenceSession.join();
  }

  else
  {
    v5 = closure #1 in closure #1 in PresenceSession.join();
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t closure #1 in closure #1 in PresenceSession.join()()
{
  v40 = v0;
  if (one-time initialization token for presenceSession != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = type metadata accessor for Logger();
  v0[7] = __swift_project_value_buffer(v2, static Log.presenceSession);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v39[0] = v7;
    *v6 = 136315138;
    v8 = PresenceSession.description.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, v39);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1AEE80000, v3, v4, "%s Starting to process request to join", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1B2715BA0](v7, -1, -1);
    MEMORY[0x1B2715BA0](v6, -1, -1);
  }

  if ((*(*v0[3] + 160))())
  {
    v11 = v0[3];

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = v0[3];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v39[0] = v16;
      *v15 = 136315138;
      v17 = PresenceSession.description.getter();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, v39);

      *(v15 + 4) = v19;
      v20 = "%s Failed to join due to invalid state";
LABEL_11:
      _os_log_impl(&dword_1AEE80000, v12, v13, v20, v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x1B2715BA0](v16, -1, -1);
      MEMORY[0x1B2715BA0](v15, -1, -1);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v21 = (*(*v0[3] + 328))();
  v22 = v0[3];
  if (v21)
  {

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v23 = v0[3];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v39[0] = v16;
      *v15 = 136315138;
      v24 = PresenceSession.description.getter();
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v39);

      *(v15 + 4) = v26;
      v20 = "%s has existing connection. Failing.";
      goto LABEL_11;
    }

LABEL_12:

    lazy protocol witness table accessor for type PresenceSession.Errors and conformance PresenceSession.Errors();
    swift_allocError();
    *v27 = 0;
    swift_willThrow();
    v28 = v0[6];

    v29 = v0[1];

    return v29();
  }

  v32 = *(v22 + OBJC_IVAR____TtC15GroupActivities15PresenceSession_serviceProvider);
  v31 = *(v22 + OBJC_IVAR____TtC15GroupActivities15PresenceSession_serviceProvider + 8);
  ObjectType = swift_getObjectType();
  v34 = *(v31 + 56);
  v38 = (v34 + *v34);
  v35 = v34[1];
  v36 = swift_task_alloc();
  v0[8] = v36;
  *v36 = v0;
  v36[1] = closure #1 in closure #1 in PresenceSession.join();
  v37 = v0[3];

  return v38(v37, ObjectType, v31);
}

{
  v1 = v0[9];
  v2 = v0[3];
  type metadata accessor for PresenceSessionClientConnection();
  v3 = v1;
  PresenceSessionConnectionInfo.endpoint.getter();

  v4 = XPCClient.__allocating_init(listenerEndpoint:)();
  v0[11] = v4;
  swift_allocObject();
  swift_weakInit();

  PresenceSessionClientConnection.handleUpdatedPresentDevices.setter();

  swift_allocObject();
  swift_weakInit();

  PresenceSessionClientConnection.handleServerDisconnectClosure.setter();

  v5 = swift_task_alloc();
  v0[12] = v5;
  *(v5 + 16) = v4;
  *(v5 + 24) = v2;
  v6 = *(MEMORY[0x1E69E8920] + 4);
  v7 = swift_task_alloc();
  v0[13] = v7;
  *v7 = v0;
  v7[1] = closure #1 in closure #1 in PresenceSession.join();
  v8 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v7, 0, 0, 0x29286E696F6ALL, 0xE600000000000000, partial apply for closure #3 in closure #1 in closure #1 in PresenceSession.join(), v5, v8);
}

{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = v0;

  v5 = *(v2 + 96);

  if (v0)
  {
    v6 = closure #1 in closure #1 in PresenceSession.join();
  }

  else
  {
    v6 = closure #1 in closure #1 in PresenceSession.join();
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

{
  v1 = *(v0 + 88);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(*v4 + 336);
  v7 = v1;
  v6(v1);
  (*(v3 + 16))(v2, v4 + OBJC_IVAR____TtC15GroupActivities15PresenceSession__state, v5);
  *(v0 + 144) = 1;
  CurrentSubject.wrappedValue.setter();
  v8 = (*(v3 + 8))(v2, v5);
  v9 = (*(*v4 + 216))(v8);
  *(v0 + 120) = v9;
  v14 = (*v4 + 376);
  v15 = (*v14 + **v14);
  v10 = (*v14)[1];
  v11 = swift_task_alloc();
  *(v0 + 128) = v11;
  *v11 = v0;
  v11[1] = closure #1 in closure #1 in PresenceSession.join();
  v12 = *(v0 + 24);

  return v15(v9);
}

{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  v5 = *(v2 + 120);

  if (v0)
  {
    v6 = closure #1 in closure #1 in PresenceSession.join();
  }

  else
  {
    v6 = closure #1 in closure #1 in PresenceSession.join();
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

{
  v1 = *(v0 + 88);
  v2 = *(v0 + 48);

  v3 = *(v0 + 8);

  return v3();
}

{
  v24 = v0;
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[3];

  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[10];
    v8 = v0[3];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23[0] = v10;
    *v9 = 136315394;
    v11 = PresenceSession.description.getter();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v23);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    v0[2] = v7;
    v14 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v15 = String.init<A>(reflecting:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v23);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_1AEE80000, v5, v6, "%s failed to create remote presence session, error: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v10, -1, -1);
    MEMORY[0x1B2715BA0](v9, -1, -1);
  }

  v18 = v0[10];
  swift_willThrow();
  v19 = v0[10];
  v20 = v0[6];

  v21 = v0[1];

  return v21();
}

{
  v1 = *(v0 + 88);

  v2 = *(v0 + 112);
  v3 = *(v0 + 48);

  v4 = *(v0 + 8);

  return v4();
}

{
  v1 = *(v0 + 88);

  v2 = *(v0 + 136);
  v3 = *(v0 + 48);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t closure #1 in closure #1 in closure #1 in PresenceSession.join()(unint64_t a1)
{
  v2 = type metadata accessor for PresenceSessionInfo.Participant(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v47 - v8;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    if (one-time initialization token for presenceSession != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Log.presenceSession);
    v48 = a1;

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v49 = v47;
      *v15 = 136315138;
      v16 = type metadata accessor for PresenceSessionParticipant();
      v17 = MEMORY[0x1B27142D0](a1, v16);
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v49);

      *(v15 + 4) = v19;
      a1 = v48;
      _os_log_impl(&dword_1AEE80000, v13, v14, "Received updated participants: %s", v15, 0xCu);
      v20 = v47;
      __swift_destroy_boxed_opaque_existential_0(v47);
      MEMORY[0x1B2715BA0](v20, -1, -1);
      MEMORY[0x1B2715BA0](v15, -1, -1);
    }

    if (a1 >> 62)
    {
      v21 = __CocoaSet.count.getter();
    }

    else
    {
      v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v22 = MEMORY[0x1E69E7CC0];
    if (v21)
    {
      v49 = MEMORY[0x1E69E7CC0];
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21 & ~(v21 >> 63), 0);
      if (v21 < 0)
      {
        __break(1u);
        return result;
      }

      v47 = v11;
      v22 = v49;
      v23 = a1;
      if ((a1 & 0xC000000000000001) != 0)
      {
        v24 = 0;
        do
        {
          MEMORY[0x1B2714B30](v24, v23);
          v25 = PresenceSessionParticipant.id.getter();
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v26 = PresenceSessionParticipant.handle.getter();
          v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v29 = v28;

          LOBYTE(v26) = PresenceSessionParticipant.isCurrentDevice.getter();
          swift_unknownObjectRelease();
          v30 = &v9[*(v2 + 20)];
          *v30 = v27;
          v30[1] = v29;
          v9[*(v2 + 24)] = v26 & 1;
          v49 = v22;
          v32 = *(v22 + 16);
          v31 = *(v22 + 24);
          if (v32 >= v31 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v31 > 1, v32 + 1, 1);
            v22 = v49;
          }

          ++v24;
          *(v22 + 16) = v32 + 1;
          outlined init with take of PresenceSessionInfo.Participant(v9, v22 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v32);
          v23 = v48;
        }

        while (v21 != v24);
      }

      else
      {
        v33 = (a1 + 32);
        do
        {
          v34 = *v33;
          v35 = PresenceSessionParticipant.id.getter();
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v36 = PresenceSessionParticipant.handle.getter();
          v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v39 = v38;

          LOBYTE(v36) = PresenceSessionParticipant.isCurrentDevice.getter();
          v40 = &v7[*(v2 + 20)];
          *v40 = v37;
          v40[1] = v39;
          v7[*(v2 + 24)] = v36 & 1;
          v49 = v22;
          v42 = *(v22 + 16);
          v41 = *(v22 + 24);
          if (v42 >= v41 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v41 > 1, v42 + 1, 1);
            v22 = v49;
          }

          *(v22 + 16) = v42 + 1;
          outlined init with take of PresenceSessionInfo.Participant(v7, v22 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v42);
          ++v33;
          --v21;
        }

        while (v21);
      }

      v11 = v47;
    }

    v43 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15GroupActivities19PresenceSessionInfoV11ParticipantV_SayAHGTt0g5Tf4g_n(v22);

    v44 = OBJC_IVAR____TtC15GroupActivities15PresenceSession_activeParticipants;
    swift_beginAccess();
    v45 = *(v11 + v44);
    *(v11 + v44) = v43;

    (*(*v11 + 392))(v46);
  }

  return result;
}

uint64_t closure #2 in closure #1 in closure #1 in PresenceSession.join()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVy15GroupActivities15PresenceSessionC5StateOGMd, &_s14CopresenceCore14CurrentSubjectVy15GroupActivities15PresenceSessionC5StateOGMR);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v11[-v3];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    if (one-time initialization token for presenceSession != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Log.presenceSession);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1AEE80000, v8, v9, "Server disconnected. Invalidating session.", v10, 2u);
      MEMORY[0x1B2715BA0](v10, -1, -1);
    }

    (*(v1 + 16))(v4, v6 + OBJC_IVAR____TtC15GroupActivities15PresenceSession__state, v0);
    v11[7] = 2;
    CurrentSubject.wrappedValue.setter();

    return (*(v1 + 8))(v4, v0);
  }

  return result;
}

uint64_t closure #3 in closure #1 in closure #1 in PresenceSession.join()(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = aBlock - v9;
  v11 = XPCClient.queue.getter();
  (*(v7 + 16))(v10, a1, v6);
  v12 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  (*(v7 + 32))(v13 + v12, v10, v6);
  *(v13 + ((v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  v14 = swift_allocObject();
  *(v14 + 16) = partial apply for closure #1 in closure #3 in closure #1 in closure #1 in PresenceSession.join();
  *(v14 + 24) = v13;
  aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_100;
  v15 = _Block_copy(aBlock);
  v16 = a2;

  dispatch_sync(v11, v15);

  _Block_release(v15);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in closure #3 in closure #1 in closure #1 in PresenceSession.join()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13[-v8];
  v14 = a2;
  (*(v6 + 16))(&v13[-v8], a2, v5);
  v10 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  (*(v6 + 32))(v11 + v10, v9, v5);

  XPCClient.withSynchronousHost<A>(body:errorHandler:)();
}

uint64_t PresenceSession.leave()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x1EEE6DFA0](PresenceSession.leave(), 0, 0);
}

{
  v17 = v0;
  if (one-time initialization token for presenceSession != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.presenceSession);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 16);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315138;
    v8 = PresenceSession.description.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v16);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1AEE80000, v3, v4, "%s received request to leave", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1B2715BA0](v7, -1, -1);
    MEMORY[0x1B2715BA0](v6, -1, -1);
  }

  v11 = *(v0 + 16);
  v12 = *(MEMORY[0x1E6997520] + 4);

  v13 = swift_task_alloc();
  *(v0 + 24) = v13;
  *v13 = v0;
  v13[1] = PresenceSession.leave();
  v14 = *(v0 + 16);

  return MEMORY[0x1EEDF8788]();
}

{
  v2 = *v1;
  v3 = *(*v1 + 24);
  v7 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v4 = PresenceSession.leave();
  }

  else
  {
    v5 = *(v2 + 16);

    v4 = PresenceSession.leave();
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t closure #1 in PresenceSession.leave()()
{
  v1 = *(**(v0 + 16) + 384);

  v6 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = closure #1 in PresenceSession.leave();
  v4 = *(v0 + 16);

  return v6(&async function pointer to partial apply for closure #1 in closure #1 in PresenceSession.leave());
}

{
  v2 = *(*v1 + 24);
  v3 = *v1;
  v3[4] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](PresenceSession.leave(), 0, 0);
  }

  else
  {
    v4 = v3[2];

    v5 = v3[1];

    return v5();
  }
}

uint64_t closure #1 in closure #1 in PresenceSession.leave()(uint64_t a1)
{
  v1[2] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVy15GroupActivities15PresenceSessionC5StateOGMd, &_s14CopresenceCore14CurrentSubjectVy15GroupActivities15PresenceSessionC5StateOGMR);
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in PresenceSession.leave(), 0, 0);
}

uint64_t closure #1 in closure #1 in PresenceSession.leave()()
{
  v27 = v0;
  if ((*(**(v0 + 16) + 160))() == 1)
  {
    v1 = (*(**(v0 + 16) + 328))();
    *(v0 + 48) = v1;
    if (v1)
    {
      v2 = v1;
      v3 = *(v0 + 16);
      v4 = swift_task_alloc();
      *(v0 + 56) = v4;
      *(v4 + 16) = v2;
      *(v4 + 24) = v3;
      v5 = *(MEMORY[0x1E69E8920] + 4);
      v6 = swift_task_alloc();
      *(v0 + 64) = v6;
      *v6 = v0;
      v6[1] = closure #1 in closure #1 in PresenceSession.leave();
      v7 = MEMORY[0x1E69E7CA8] + 8;

      return MEMORY[0x1EEE6DE38](v6, 0, 0, 0x2928657661656CLL, 0xE700000000000000, partial apply for closure #1 in closure #1 in closure #1 in PresenceSession.leave(), v4, v7);
    }

    if (one-time initialization token for presenceSession != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 16);
    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Log.presenceSession);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = *(v0 + 16);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v26 = v17;
      *v16 = 136315138;
      v18 = PresenceSession.description.getter();
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v26);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_1AEE80000, v13, v14, "%s couldn't leave because we don't have an XPC connection. Daemon would've torn down when the connection went away so returning success.", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x1B2715BA0](v17, -1, -1);
      MEMORY[0x1B2715BA0](v16, -1, -1);
    }

    v22 = *(v0 + 32);
    v21 = *(v0 + 40);
    v23 = *(v0 + 24);
    (*(v22 + 16))(v21, *(v0 + 16) + OBJC_IVAR____TtC15GroupActivities15PresenceSession__state, v23);
    *(v0 + 80) = 2;
    CurrentSubject.wrappedValue.setter();
    (*(v22 + 8))(v21, v23);
    v24 = *(v0 + 40);
    (*(**(v0 + 16) + 336))(0);

    v10 = *(v0 + 8);
  }

  else
  {
    lazy protocol witness table accessor for type PresenceSession.Errors and conformance PresenceSession.Errors();
    swift_allocError();
    *v8 = 0;
    swift_willThrow();
    v9 = *(v0 + 40);

    v10 = *(v0 + 8);
  }

  return v10();
}

{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = closure #1 in closure #1 in PresenceSession.leave();
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = closure #1 in closure #1 in PresenceSession.leave();
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);

  (*(v3 + 16))(v1, v4 + OBJC_IVAR____TtC15GroupActivities15PresenceSession__state, v2);
  *(v0 + 82) = 2;
  CurrentSubject.wrappedValue.setter();
  (*(v3 + 8))(v1, v2);
  v5 = *(v0 + 40);
  (*(**(v0 + 16) + 336))(0);

  v6 = *(v0 + 8);

  return v6();
}

{
  v1 = *(v0 + 56);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);

  (*(v3 + 16))(v2, v5 + OBJC_IVAR____TtC15GroupActivities15PresenceSession__state, v4);
  *(v0 + 81) = 2;
  CurrentSubject.wrappedValue.setter();
  (*(v3 + 8))(v2, v4);
  (*(*v5 + 336))(0);
  v6 = *(v0 + 72);
  v7 = *(v0 + 40);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t closure #1 in closure #1 in closure #1 in PresenceSession.leave()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13[-v8];
  v14 = a1;
  (*(v6 + 16))(&v13[-v8], a1, v5);
  v10 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  (*(v6 + 32))(v11 + v10, v9, v5);

  XPCClient.withSynchronousHost<A>(body:errorHandler:)();
}

void closure #1 in closure #1 in closure #3 in closure #1 in closure #1 in PresenceSession.join()(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v20 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v19 - v13;
  v15 = *a1;
  (*(v11 + 16))(&v19 - v13, a2, v10);
  v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = swift_allocObject();
  (*(v11 + 32))(v17 + v16, v14, v10);
  aBlock[4] = a4;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  aBlock[3] = a5;
  v18 = _Block_copy(aBlock);

  [v15 *v20];
  _Block_release(v18);
}

uint64_t PresenceSession.updateMembers(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](PresenceSession.updateMembers(_:), 0, 0);
}

uint64_t PresenceSession.updateMembers(_:)()
{
  v63 = v0;
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(*v2 + 224);

  v5 = v3(v4);
  v6 = (*(*v2 + 328))(v5);
  v0[4] = v6;
  if (v6)
  {
    v60 = v6;
    v61 = v0;
    v0 = v0[2];
    v7 = MEMORY[0x1E69E7CC0];
    v8 = v0[7];
    v62[0] = MEMORY[0x1E69E7CC0];
    v9 = -1;
    v10 = -1 << *(v0 + 32);
    if (-v10 < 64)
    {
      v9 = ~(-1 << -v10);
    }

    v11 = v9 & v8;
    v12 = (63 - v10) >> 6;

    v13 = 0;
    if (!v11)
    {
      goto LABEL_7;
    }

    do
    {
LABEL_5:
      while (1)
      {
        v14 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v15 = (v0[6] + ((v13 << 10) | (16 * v14)));
        v16 = *v15;
        v17 = v15[1];
        v18 = objc_opt_self();

        v19 = MEMORY[0x1B2714130](v16, v17);
        v20 = [v18 normalizedHandleWithDestinationID_];

        if (v20)
        {
          break;
        }

        if (!v11)
        {
          goto LABEL_7;
        }
      }

      MEMORY[0x1B27142A0](v21);
      if (*((v62[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v23 = *((v62[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v7 = v62[0];
    }

    while (v11);
    while (1)
    {
LABEL_7:
      v22 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v22 >= v12)
      {
        break;
      }

      v11 = v0[v22 + 7];
      ++v13;
      if (v11)
      {
        v13 = v22;
        goto LABEL_5;
      }
    }

    v0 = v61;
    v24 = v61[2];

    v25 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo8TUHandleC_SayAEGTt0g5Tf4g_n(v7);
    v61[5] = v25;

    if ((v25 & 0xC000000000000001) != 0)
    {
      v26 = __CocoaSet.count.getter();
    }

    else
    {
      v26 = *(v25 + 16);
    }

    if (v26 == *(v61[2] + 16))
    {
      v38 = v61[3];
      v39 = swift_task_alloc();
      v61[6] = v39;
      v39[2] = v60;
      v39[3] = v25;
      v39[4] = v38;
      v40 = *(MEMORY[0x1E69E8920] + 4);
      v41 = swift_task_alloc();
      v61[7] = v41;
      *v41 = v61;
      v41[1] = PresenceSession.updateMembers(_:);
      v42 = MEMORY[0x1E69E7CA8] + 8;

      return MEMORY[0x1EEE6DE38](v41, 0, 0, 0xD000000000000011, 0x80000001AF01BC60, partial apply for closure #2 in PresenceSession.updateMembers(_:), v39, v42);
    }

    if (one-time initialization token for default != -1)
    {
      swift_once();
      v58 = v61[2];
    }

    v43 = type metadata accessor for Logger();
    __swift_project_value_buffer(v43, static Log.default);

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = v61[2];
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v62[0] = v48;
      *v47 = 136315394;
      lazy protocol witness table accessor for type AddressableMember and conformance AddressableMember();
      v49 = Set.description.getter();
      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, v62);

      *(v47 + 4) = v51;
      *(v47 + 12) = 2080;
      type metadata accessor for TUHandle();
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, type metadata accessor for TUHandle);
      v52 = Set.description.getter();
      v54 = v53;

      v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v54, v62);

      *(v47 + 14) = v55;
      _os_log_impl(&dword_1AEE80000, v44, v45, "Failed to convert members types: %s vs convertedMembers: %s", v47, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B2715BA0](v48, -1, -1);
      MEMORY[0x1B2715BA0](v47, -1, -1);
    }

    else
    {
    }

    lazy protocol witness table accessor for type PresenceSession.Errors and conformance PresenceSession.Errors();
    swift_allocError();
    *v56 = 1;
    swift_willThrow();
  }

  else
  {
    if (one-time initialization token for presenceSession != -1)
    {
LABEL_36:
      swift_once();
    }

    v27 = v0[3];
    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Log.presenceSession);

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = v0[3];
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v62[0] = v33;
      *v32 = 136315138;
      v34 = PresenceSession.description.getter();
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, v62);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_1AEE80000, v29, v30, "%s Dropping update due to no connection existing", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x1B2715BA0](v33, -1, -1);
      MEMORY[0x1B2715BA0](v32, -1, -1);
    }

    lazy protocol witness table accessor for type PresenceSession.Errors and conformance PresenceSession.Errors();
    swift_allocError();
    *v37 = 0;
    swift_willThrow();
  }

  v57 = v0[1];

  return v57();
}

{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v8 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = PresenceSession.updateMembers(_:);
  }

  else
  {
    v5 = *(v2 + 40);
    v6 = *(v2 + 48);

    v4 = PresenceSession.updateMembers(_:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];

  v4 = v0[8];
  v5 = v0[1];

  return v5();
}

uint64_t closure #2 in PresenceSession.updateMembers(_:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = aBlock - v11;
  v13 = XPCClient.queue.getter();
  (*(v9 + 16))(v12, a1, v8);
  v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  (*(v9 + 32))(v15 + v14, v12, v8);
  *(v15 + ((v10 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = a4;
  v16 = swift_allocObject();
  *(v16 + 16) = partial apply for closure #1 in closure #2 in PresenceSession.updateMembers(_:);
  *(v16 + 24) = v15;
  aBlock[4] = _sIg_Ieg_TRTA_0;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_3;
  v17 = _Block_copy(aBlock);
  v18 = a2;

  dispatch_sync(v13, v17);

  _Block_release(v17);
  LOBYTE(a4) = swift_isEscapingClosureAtFileLocation();

  if (a4)
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in closure #2 in PresenceSession.updateMembers(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15[-v10];
  v16 = a2;
  v17 = a3;
  (*(v8 + 16))(&v15[-v10], a3, v7);
  v12 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  (*(v8 + 32))(v13 + v12, v11, v7);

  XPCClient.withSynchronousHost<A>(body:errorHandler:)();
}

void closure #1 in closure #1 in closure #2 in PresenceSession.updateMembers(_:)(void **a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = aBlock - v8;
  v10 = *a1;
  type metadata accessor for TUHandle();
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, type metadata accessor for TUHandle);
  isa = Set._bridgeToObjectiveC()().super.isa;
  (*(v6 + 16))(v9, a3, v5);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  (*(v6 + 32))(v13 + v12, v9, v5);
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in closure #2 in PresenceSession.updateMembers(_:);
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_65;
  v14 = _Block_copy(aBlock);

  [v10 updateMembers:isa completion:v14];
  _Block_release(v14);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #3 in closure #1 in closure #1 in PresenceSession.join()(void *a1)
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

uint64_t closure #2 in closure #1 in closure #3 in closure #1 in closure #1 in PresenceSession.join()(void *a1)
{
  if (one-time initialization token for presenceSession != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.presenceSession);

  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315394;
    v8 = PresenceSession.description.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v17);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    v11 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v12 = String.init<A>(reflecting:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v17);

    *(v6 + 14) = v14;
    _os_log_impl(&dword_1AEE80000, v4, v5, "%s had its error handler triggered for the XPC message. Error: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v7, -1, -1);
    MEMORY[0x1B2715BA0](v6, -1, -1);
  }

  v17 = a1;
  v15 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t PresenceSession.invalidation(block:)(int *a1)
{
  v2[3] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVy15GroupActivities15PresenceSessionC5StateOGMd, &_s14CopresenceCore14CurrentSubjectVy15GroupActivities15PresenceSessionC5StateOGMR);
  v2[4] = v4;
  v5 = *(v4 - 8);
  v2[5] = v5;
  v6 = *(v5 + 64) + 15;
  v2[6] = swift_task_alloc();
  v10 = (a1 + *a1);
  v7 = a1[1];
  v8 = swift_task_alloc();
  v2[7] = v8;
  *v8 = v2;
  v8[1] = PresenceSession.invalidation(block:);

  return v10();
}

uint64_t PresenceSession.invalidation(block:)()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](PresenceSession.invalidation(block:), 0, 0);
  }

  else
  {
    v4 = v3[6];

    v5 = v3[1];

    return v5();
  }
}

{
  v27 = v0;
  if (one-time initialization token for presenceSession != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.presenceSession);

  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 64);
    v8 = *(v0 + 24);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26[0] = v10;
    *v9 = 136315394;
    v11 = PresenceSession.description.getter();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v26);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    *(v0 + 16) = v7;
    v14 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v15 = String.init<A>(reflecting:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v26);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_1AEE80000, v5, v6, "Invalidating %s due to invalidation block throwing error. %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v10, -1, -1);
    MEMORY[0x1B2715BA0](v9, -1, -1);
  }

  v18 = *(v0 + 64);
  v20 = *(v0 + 40);
  v19 = *(v0 + 48);
  v22 = *(v0 + 24);
  v21 = *(v0 + 32);
  (*(v20 + 16))(v19, v22 + OBJC_IVAR____TtC15GroupActivities15PresenceSession__state, v21);
  *(v0 + 72) = 2;
  CurrentSubject.wrappedValue.setter();
  (*(v20 + 8))(v19, v21);
  (*(*v22 + 336))(0);
  swift_willThrow();

  v23 = *(v0 + 8);
  v24 = *(v0 + 64);

  return v23();
}

uint64_t PresenceSession.deinit()
{
  v1 = OBJC_IVAR____TtC15GroupActivities15PresenceSession_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15GroupActivities15PresenceSession__state;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVy15GroupActivities15PresenceSessionC5StateOGMd, &_s14CopresenceCore14CurrentSubjectVy15GroupActivities15PresenceSessionC5StateOGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC15GroupActivities15PresenceSession_activeParticipants);

  v6 = OBJC_IVAR____TtC15GroupActivities15PresenceSession__members;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVyShy15GroupActivities17AddressableMemberVGGMd, &_s14CopresenceCore14CurrentSubjectVyShy15GroupActivities17AddressableMemberVGGMR);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC15GroupActivities15PresenceSession__sessionInfo;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVy15GroupActivities19PresenceSessionInfoVGMd, &_s14CopresenceCore14CurrentSubjectVy15GroupActivities19PresenceSessionInfoVGMR);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = OBJC_IVAR____TtC15GroupActivities15PresenceSession_workQueue;
  v11 = type metadata accessor for AsyncSerialQueue();
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v12 = *(v0 + OBJC_IVAR____TtC15GroupActivities15PresenceSession_observers);

  outlined destroy of weak SystemCoordinatorHostDelegate?(v0 + OBJC_IVAR____TtC15GroupActivities15PresenceSession_provider);
  v13 = *(v0 + OBJC_IVAR____TtC15GroupActivities15PresenceSession_serviceProvider);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t PresenceSession.__deallocating_deinit()
{
  PresenceSession.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Identifiable.id.getter in conformance PresenceSession@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC15GroupActivities15PresenceSession_id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t PresenceSession.description.getter()
{
  _StringGuts.grow(_:)(36);
  MEMORY[0x1B27141F0](0xD000000000000016, 0x80000001AF01BC80);
  _print_unlocked<A, B>(_:_:)();
  v1 = MEMORY[0x1B27141F0](0x3A6574617473202CLL, 0xE900000000000020);
  (*(*v0 + 160))(v1);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1B27141F0](41, 0xE100000000000000);
  return 0;
}

uint64_t specialized PresenceSession.init(provider:serviceProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v53 = a3;
  v54 = a6;
  v51 = a2;
  v49 = a1;
  v52 = type metadata accessor for UUID();
  v50 = *(v52 - 8);
  v7 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v48 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOyyyYaYbc__GMd, &_sScS12ContinuationV15BufferingPolicyOyyyYaYbc__GMR);
  v46 = *(v9 - 8);
  v47 = v9;
  v10 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v43 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v44 = &v43 - v14;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVy15GroupActivities19PresenceSessionInfoVGMd, &_s14CopresenceCore14CurrentSubjectVy15GroupActivities19PresenceSessionInfoVGMR);
  v15 = *(v43 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v18 = &v43 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVyShy15GroupActivities17AddressableMemberVGGMd, &_s14CopresenceCore14CurrentSubjectVyShy15GroupActivities17AddressableMemberVGGMR);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v43 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVy15GroupActivities15PresenceSessionC5StateOGMd, &_s14CopresenceCore14CurrentSubjectVy15GroupActivities15PresenceSessionC5StateOGMR);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v43 - v27;
  v29 = OBJC_IVAR____TtC15GroupActivities15PresenceSession__state;
  LOBYTE(v56) = 0;
  CurrentSubject.init(wrappedValue:)();
  (*(v25 + 32))(a4 + v29, v28, v24);
  v30 = MEMORY[0x1E69E7CD0];
  *(a4 + OBJC_IVAR____TtC15GroupActivities15PresenceSession_activeParticipants) = MEMORY[0x1E69E7CD0];
  v31 = OBJC_IVAR____TtC15GroupActivities15PresenceSession__members;
  v56 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy15GroupActivities17AddressableMemberVGMd, &_sShy15GroupActivities17AddressableMemberVGMR);
  CurrentSubject.init(wrappedValue:)();
  (*(v20 + 32))(a4 + v31, v23, v19);
  v32 = OBJC_IVAR____TtC15GroupActivities15PresenceSession__sessionInfo;
  v56 = v30;
  CurrentSubject.init(wrappedValue:)();
  (*(v15 + 32))(a4 + v32, v18, v43);
  v33 = type metadata accessor for TaskPriority();
  (*(*(v33 - 8) + 56))(v44, 1, 1, v33);
  (*(v46 + 104))(v45, *MEMORY[0x1E69E8650], v47);
  AsyncSerialQueue.init(priority:bufferingPolicy:)();
  *(a4 + OBJC_IVAR____TtC15GroupActivities15PresenceSession_observers) = v30;
  v34 = a4 + OBJC_IVAR____TtC15GroupActivities15PresenceSession_provider;
  *(a4 + OBJC_IVAR____TtC15GroupActivities15PresenceSession_provider + 8) = 0;
  swift_unknownObjectWeakInit();
  *(a4 + OBJC_IVAR____TtC15GroupActivities15PresenceSession_connection) = 0;
  ObjectType = swift_getObjectType();
  v36 = v51;
  v37 = *(v51 + 8);
  v38 = v48;
  GroupSessionProvider.uuid.getter(ObjectType, v37, v48);
  (*(v50 + 32))(a4 + OBJC_IVAR____TtC15GroupActivities15PresenceSession_id, v38, v52);
  swift_beginAccess();
  *(v34 + 8) = v36;
  swift_unknownObjectWeakAssign();
  v39 = (a4 + OBJC_IVAR____TtC15GroupActivities15PresenceSession_serviceProvider);
  v40 = v54;
  *v39 = v53;
  v39[1] = v40;
  v41 = *(v37 + 72);
  swift_unknownObjectRetain();
  v55 = v41(ObjectType, v37);
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCyShy15GroupActivities17AddressableMemberVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCyShy15GroupActivities17AddressableMemberVGs5NeverOGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<Set<AddressableMember>, Never> and conformance CurrentValueSubject<A, B>();
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return a4;
}

uint64_t partial apply for closure #1 in PresenceSession.join()(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return closure #1 in PresenceSession.join()(a1, v1);
}

uint64_t partial apply for closure #1 in PresenceSession.leave()(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return closure #1 in PresenceSession.leave()(a1, v1);
}

unint64_t lazy protocol witness table accessor for type PresenceSession.Errors and conformance PresenceSession.Errors()
{
  result = lazy protocol witness table cache variable for type PresenceSession.Errors and conformance PresenceSession.Errors;
  if (!lazy protocol witness table cache variable for type PresenceSession.Errors and conformance PresenceSession.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresenceSession.Errors and conformance PresenceSession.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PresenceSession.Errors and conformance PresenceSession.Errors;
  if (!lazy protocol witness table cache variable for type PresenceSession.Errors and conformance PresenceSession.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresenceSession.Errors and conformance PresenceSession.Errors);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AddressableMember and conformance AddressableMember()
{
  result = lazy protocol witness table cache variable for type AddressableMember and conformance AddressableMember;
  if (!lazy protocol witness table cache variable for type AddressableMember and conformance AddressableMember)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AddressableMember and conformance AddressableMember);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AddressableMember and conformance AddressableMember;
  if (!lazy protocol witness table cache variable for type AddressableMember and conformance AddressableMember)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AddressableMember and conformance AddressableMember);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AddressableMember and conformance AddressableMember;
  if (!lazy protocol witness table cache variable for type AddressableMember and conformance AddressableMember)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AddressableMember and conformance AddressableMember);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AddressableMember and conformance AddressableMember;
  if (!lazy protocol witness table cache variable for type AddressableMember and conformance AddressableMember)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AddressableMember and conformance AddressableMember);
  }

  return result;
}

unint64_t type metadata accessor for TUHandle()
{
  result = lazy cache variable for type metadata for TUHandle;
  if (!lazy cache variable for type metadata for TUHandle)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for TUHandle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PresenceSession.State and conformance PresenceSession.State()
{
  result = lazy protocol witness table cache variable for type PresenceSession.State and conformance PresenceSession.State;
  if (!lazy protocol witness table cache variable for type PresenceSession.State and conformance PresenceSession.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresenceSession.State and conformance PresenceSession.State);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PresenceSessionInfo(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PresenceSessionInfo(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata completion function for PresenceSessionInfo.Participant()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for PresenceSession()
{
  v0 = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    type metadata accessor for CurrentSubject<PresenceSession.State>(319, &lazy cache variable for type metadata for CurrentSubject<PresenceSession.State>);
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      type metadata accessor for CurrentSubject<Set<AddressableMember>>();
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        type metadata accessor for CurrentSubject<PresenceSession.State>(319, &lazy cache variable for type metadata for CurrentSubject<PresenceSessionInfo>);
        if (v7 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          v8 = type metadata accessor for AsyncSerialQueue();
          if (v9 <= 0x3F)
          {
            v14 = *(v8 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t dispatch thunk of PresenceSession.join()()
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

uint64_t dispatch thunk of PresenceSession.leave()()
{
  v2 = *(*v0 + 368);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v6();
}

uint64_t dispatch thunk of PresenceSession.updateMembers(_:)(uint64_t a1)
{
  v4 = *(*v1 + 376);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v8(a1);
}

uint64_t dispatch thunk of PresenceSession.invalidation(block:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 384);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return v10(a1, a2);
}

void type metadata accessor for CurrentSubject<Set<AddressableMember>>()
{
  if (!lazy cache variable for type metadata for CurrentSubject<Set<AddressableMember>>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sShy15GroupActivities17AddressableMemberVGMd, &_sShy15GroupActivities17AddressableMemberVGMR);
    v0 = type metadata accessor for CurrentSubject();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CurrentSubject<Set<AddressableMember>>);
    }
  }
}

void type metadata accessor for CurrentSubject<PresenceSession.State>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for CurrentSubject();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t partial apply for closure #1 in closure #1 in PresenceSession.init(provider:serviceProvider:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return closure #1 in closure #1 in PresenceSession.init(provider:serviceProvider:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in closure #2 in PresenceSession.updateMembers(_:)()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in closure #2 in PresenceSession.updateMembers(_:)(v3, v4, v0 + v2, v5);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for closure #1 in closure #1 in PresenceSession.leave()()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return closure #1 in closure #1 in PresenceSession.leave()(v0);
}

uint64_t partial apply for closure #2 in closure #1 in closure #2 in PresenceSession.updateMembers(_:)(void *a1)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR) - 8) + 80);
  v4 = *(v1 + 16);
  return closure #2 in closure #1 in closure #3 in closure #1 in closure #1 in PresenceSession.join()(a1);
}

uint64_t partial apply for closure #1 in closure #1 in PresenceSession.join()()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return closure #1 in closure #1 in PresenceSession.join()(v0);
}

uint64_t partial apply for closure #1 in closure #3 in closure #1 in closure #1 in PresenceSession.join()()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in closure #3 in closure #1 in closure #1 in PresenceSession.join()(v3, v0 + v2, v4);
}

uint64_t objectdestroy_58Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroy_61Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t outlined init with take of PresenceSessionInfo.Participant(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PresenceSessionInfo.Participant(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type CurrentValueSubject<Set<AddressableMember>, Never> and conformance CurrentValueSubject<A, B>()
{
  result = lazy protocol witness table cache variable for type CurrentValueSubject<Set<AddressableMember>, Never> and conformance CurrentValueSubject<A, B>;
  if (!lazy protocol witness table cache variable for type CurrentValueSubject<Set<AddressableMember>, Never> and conformance CurrentValueSubject<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine19CurrentValueSubjectCyShy15GroupActivities17AddressableMemberVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCyShy15GroupActivities17AddressableMemberVGs5NeverOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CurrentValueSubject<Set<AddressableMember>, Never> and conformance CurrentValueSubject<A, B>);
  }

  return result;
}

Swift::Int CKShareGroupSessionProvider.Errors.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](a1 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CKShareGroupSessionProvider<A>.Errors()
{
  Hasher.init(_seed:)();
  CKShareGroupSessionProvider.Errors.hash(into:)(v2, *v0);
  return Hasher._finalize()();
}

uint64_t CKShareGroupSessionProvider.presenceInfo.getter()
{
  v1 = *(*v0 + 136);
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t CKShareGroupSessionProvider.presenceInfo.setter(uint64_t a1)
{
  v3 = *(*v1 + 136);
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t (*CKShareGroupSessionProvider.presenceInfo.modify())()
{
  v1 = *(*v0 + 136);
  swift_beginAccess();
  return GroupSession.attachmentDownloadBytes.modify;
}

uint64_t key path setter for CKShareGroupSessionProvider.queue : <A>CKShareGroupSessionProvider<A>(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AsyncSerialQueue();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  return (*(**a2 + 280))(v7);
}

uint64_t CKShareGroupSessionProvider.queue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 144);
  swift_beginAccess();
  v4 = type metadata accessor for AsyncSerialQueue();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t CKShareGroupSessionProvider.queue.setter(uint64_t a1)
{
  v3 = *(*v1 + 144);
  swift_beginAccess();
  v4 = type metadata accessor for AsyncSerialQueue();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t (*CKShareGroupSessionProvider.queue.modify())()
{
  v1 = *(*v0 + 144);
  swift_beginAccess();
  return GroupSession.attachmentDownloadBytes.modify;
}

id CKShareGroupSessionProvider.container.getter()
{
  v1 = *(*v0 + 152);
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void CKShareGroupSessionProvider.container.setter(uint64_t a1)
{
  v3 = *(*v1 + 152);
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t (*CKShareGroupSessionProvider.container.modify())()
{
  v1 = *(*v0 + 152);
  swift_beginAccess();
  return GroupSession.attachmentDownloadBytes.modify;
}

uint64_t key path getter for CKShareGroupSessionProvider.share : <A>CKShareGroupSessionProvider<A>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 320))();
  *a2 = result;
  return result;
}

uint64_t CKShareGroupSessionProvider.share.getter()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v4;
}

uint64_t CKShareGroupSessionProvider.share.setter()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void (*CKShareGroupSessionProvider.share.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  MEMORY[0x1EEE9AC00](v3);
  v7 = *(v6 + 80);
  v8 = *(v6 + 88);
  KeyPath = swift_getKeyPath();
  v4[4] = KeyPath;
  MEMORY[0x1EEE9AC00](KeyPath);
  v4[5] = swift_getKeyPath();
  v4[6] = static Published.subscript.modify();
  return CKShareGroupSessionProvider.share.modify;
}

void CKShareGroupSessionProvider.share.modify(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t key path setter for CKShareGroupSessionProvider.$share : <A>CKShareGroupSessionProvider<A>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo7CKShareC_GMd, &_s7Combine9PublishedV9PublisherVySo7CKShareC_GMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1);
  return (*(**a2 + 352))(v7);
}

uint64_t CKShareGroupSessionProvider.$share.getter()
{
  v1 = *(*v0 + 160);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo7CKShareCGMd, &_s7Combine9PublishedVySo7CKShareCGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t CKShareGroupSessionProvider.$share.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo7CKShareC_GMd, &_s7Combine9PublishedV9PublisherVySo7CKShareC_GMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  (*(v4 + 16))(&v9 - v6, a1, v3);
  v7 = *(*v1 + 160);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo7CKShareCGMd, &_s7Combine9PublishedVySo7CKShareCGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(a1, v3);
}

void (*CKShareGroupSessionProvider.$share.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo7CKShareC_GMd, &_s7Combine9PublishedV9PublisherVySo7CKShareC_GMR);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v5[4] = v9;
  CKShareGroupSessionProvider.$share.getter();
  return CKShareGroupSessionProvider.$share.modify;
}

void CKShareGroupSessionProvider.$share.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    v7 = *v2;
    (*(v6 + 16))((*a1)[3], v4, v5);
    CKShareGroupSessionProvider.$share.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v8 = *v2;
    CKShareGroupSessionProvider.$share.setter((*a1)[4]);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t CKShareGroupSessionProvider.cancellables.getter()
{
  v1 = *(*v0 + 168);
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t CKShareGroupSessionProvider.cancellables.setter(uint64_t a1)
{
  v3 = *(*v1 + 168);
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t (*CKShareGroupSessionProvider.cancellables.modify())()
{
  v1 = *(*v0 + 168);
  swift_beginAccess();
  return GroupSession.GroupSessionPlaybackSyncerLink.shouldRequestCatchup.modify;
}

uint64_t CKShareGroupSessionProvider.__allocating_init(id:activity:share:container:)(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  v13 = swift_allocObject();
  CKShareGroupSessionProvider.init(id:activity:share:container:)(a1, a2, a3, a4, a5);
  return v13;
}

char *CKShareGroupSessionProvider.init(id:activity:share:container:)(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v6 = v5;
  v109 = a5;
  v110 = a3;
  v107 = a1;
  v108 = a2;
  v8 = *v5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOyyyYaYbc__GMd, &_sScS12ContinuationV15BufferingPolicyOyyyYaYbc__GMR);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v101 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v101 - v16;
  v111[0] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy15GroupActivities0E20SessionProviderStateOs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy15GroupActivities0E20SessionProviderStateOs5NeverOGMR);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  *(v5 + 4) = CurrentValueSubject.init(_:)();
  v21 = *(*v5 + 136);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v111[0] = static PresenceSessionInfo.default;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy15GroupActivities19PresenceSessionInfoVs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy15GroupActivities19PresenceSessionInfoVs5NeverOGMR);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();

  *&v5[v21] = CurrentValueSubject.init(_:)();
  v25 = *(*v5 + 144);
  static TaskPriority.userInitiated.getter();
  v26 = type metadata accessor for TaskPriority();
  v27 = *(v26 - 8);
  v28 = *(v27 + 56);
  v103 = v27 + 56;
  v104 = v28;
  v28(v17, 0, 1, v26);
  (*(v10 + 104))(v13, *MEMORY[0x1E69E8650], v9);
  AsyncSerialQueue.init(priority:bufferingPolicy:)();
  *&v6[*(*v6 + 168)] = MEMORY[0x1E69E7CD0];
  v29 = v108;
  *(v6 + 2) = v107;
  *(v6 + 3) = v29;
  v30 = v8[10];
  v31 = *(v30 - 8);
  v32 = *(v31 + 16);
  v108 = *(*v6 + 120);
  v33 = v110;
  v32(&v6[v108], v110, v30);
  v34 = [a4 containerID];
  v106 = v8;
  v107 = v34;
  if (!v34)
  {
    if (one-time initialization token for ckShareGroupSessionProvider != -1)
    {
      swift_once();
    }

    v79 = type metadata accessor for Logger();
    __swift_project_value_buffer(v79, static Log.ckShareGroupSessionProvider);
    v80 = a4;
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v69, v70))
    {
      goto LABEL_18;
    }

    v71 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v105 = v31;
    v73 = v81;
    v111[0] = v81;
    *v71 = 136315138;
    v112 = v80;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CKShare, 0x1E695BAC8);
    v82 = v80;
    v83 = String.init<A>(reflecting:)();
    v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v84, v111);

    *(v71 + 4) = v85;
    v78 = "Share %s doesn't have a containerID";
    goto LABEL_17;
  }

  v102 = v17;

  v111[0] = CKShare.members.getter();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCyShy15GroupActivities17AddressableMemberVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCyShy15GroupActivities17AddressableMemberVGs5NeverOGMR);
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  *(v6 + 5) = CurrentValueSubject.init(_:)();
  v38 = [a4 currentUserParticipant];
  v39 = a4;
  if (v38)
  {
    v40 = v38;
    v41 = CKShareParticipant.handle.getter();

    if (v41)
    {
      v105 = v31;
      v108 = v30;
      v42 = [v41 normalizedValue];
      if (!v42)
      {
        v42 = [v41 value];
      }

      v43 = v42;
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v107 = v41;
      v46 = v45;

      v47 = lazy protocol witness table accessor for type AddressableMember and conformance AddressableMember();
      v48 = &v6[*(*v6 + 128)];
      *v48 = v44;
      v48[1] = v46;
      v48[3] = &type metadata for AddressableMember;
      v48[4] = v47;
      v49 = v109;
      *&v6[*(*v6 + 152)] = v109;
      v50 = *(*v6 + 160);
      swift_beginAccess();
      v109 = v49;
      v106 = v39;
      v112 = v106;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CKShare, 0x1E695BAC8);
      Published.init(initialValue:)();
      swift_endAccess();
      v51 = v102;
      v52 = v104;
      v104(v102, 1, 1, v26);
      v53 = swift_allocObject();
      v53[2] = 0;
      v53[3] = 0;
      v53[4] = v6;

      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v51, &async function pointer to partial apply for closure #1 in CKShareGroupSessionProvider.init(id:activity:share:container:), v53);
      v54 = *(*v6 + 168);
      swift_beginAccess();
      v55 = type metadata accessor for AnyCancellable();
      v56 = *(v55 + 48);
      v57 = *(v55 + 52);
      swift_allocObject();

      v58 = AnyCancellable.init(_:)();
      specialized Set._Variant.insert(_:)(&v112, v58);

      swift_endAccess();

      v52(v51, 1, 1, v26);
      v59 = swift_allocObject();
      v59[2] = 0;
      v59[3] = 0;
      v60 = v106;
      v59[4] = v6;
      v59[5] = v60;
      v61 = v109;
      v59[6] = v109;
      v62 = v61;
      v63 = v60;

      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v51, &async function pointer to partial apply for closure #2 in CKShareGroupSessionProvider.init(id:activity:share:container:), v59);
      swift_beginAccess();
      v64 = *(v55 + 48);
      v65 = *(v55 + 52);
      swift_allocObject();

      v66 = AnyCancellable.init(_:)();
      specialized Set._Variant.insert(_:)(&v112, v66);

      swift_endAccess();

      (*(v105 + 8))(v110, v108);
      return v6;
    }
  }

  if (one-time initialization token for ckShareGroupSessionProvider != -1)
  {
    swift_once();
  }

  v67 = type metadata accessor for Logger();
  __swift_project_value_buffer(v67, static Log.ckShareGroupSessionProvider);
  a4 = v39;
  v68 = v39;
  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v105 = v31;
    v73 = v72;
    v111[0] = v72;
    *v71 = 136315138;
    v112 = v68;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CKShare, 0x1E695BAC8);
    v74 = v68;
    v75 = String.init<A>(reflecting:)();
    v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v76, v111);

    *(v71 + 4) = v77;
    v78 = "Share %s doesn't have a currentUserParticipant";
LABEL_17:
    _os_log_impl(&dword_1AEE80000, v69, v70, v78, v71, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v73);
    v86 = v73;
    v31 = v105;
    MEMORY[0x1B2715BA0](v86, -1, -1);
    v87 = v71;
    v33 = v110;
    MEMORY[0x1B2715BA0](v87, -1, -1);
  }

LABEL_18:

  v88 = *(v106 + 11);
  type metadata accessor for CKShareGroupSessionProvider.Errors();
  swift_getWitnessTable();
  swift_allocError();
  *v89 = 0;
  swift_willThrow();

  v90 = *(v31 + 8);
  v90(v33, v30);
  v91 = *(v6 + 3);

  v92 = *(v6 + 4);

  if (v107)
  {
    v93 = *(v6 + 5);
  }

  v90(&v6[v108], v30);
  v94 = *&v6[*(*v6 + 136)];

  v95 = *(*v6 + 144);
  v96 = type metadata accessor for AsyncSerialQueue();
  (*(*(v96 - 8) + 8))(&v6[v95], v96);
  v97 = *&v6[*(*v6 + 168)];

  type metadata accessor for CKShareGroupSessionProvider();
  v98 = *(*v6 + 48);
  v99 = *(*v6 + 52);
  swift_deallocPartialClassInstance();
  return v6;
}

char *CKShare.members.getter()
{
  v1 = [v0 participants];
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CKShareParticipant, 0x1E695BAD8);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v46 = MEMORY[0x1E69E7CC0];
  v3 = v2 & 0xFFFFFFFFFFFFFF8;
  if (v2 >> 62)
  {
LABEL_41:
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v6 = 0;
    v43 = v2 & 0xC000000000000001;
    v7 = &selRef_activityIdentifier;
    v42 = v2;
    do
    {
      v41 = v5;
      v8 = v6;
      v9 = v43;
      while (1)
      {
        if (v9)
        {
          v11 = MEMORY[0x1B2714B30](v8, v2);
        }

        else
        {
          if (v8 >= *(v3 + 16))
          {
            goto LABEL_40;
          }

          v11 = *(v2 + 8 * v8 + 32);
        }

        v12 = v11;
        v6 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ([v11 v7[51]] != 2)
        {
          if (one-time initialization token for default != -1)
          {
            swift_once();
          }

          v13 = type metadata accessor for Logger();
          __swift_project_value_buffer(v13, static Log.default);
          v14 = v12;
          v15 = Logger.logObject.getter();
          v16 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v15, v16))
          {
            v17 = swift_slowAlloc();
            v18 = swift_slowAlloc();
            v45 = v18;
            *v17 = 136315138;
            v44 = v14;
            v19 = String.init<A>(reflecting:)();
            v21 = v4;
            v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v45);
            v2 = v42;

            *(v17 + 4) = v22;
            v4 = v21;
            _os_log_impl(&dword_1AEE80000, v15, v16, "Skipping participant due to status: %s", v17, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v18);
            v23 = v18;
            v9 = v43;
            MEMORY[0x1B2715BA0](v23, -1, -1);
            MEMORY[0x1B2715BA0](v17, -1, -1);
          }

          else
          {
          }

          v7 = &selRef_activityIdentifier;
          goto LABEL_7;
        }

        v10 = CKShareParticipant.handle.getter();

        if (v10)
        {
          break;
        }

LABEL_7:
        ++v8;
        if (v6 == v4)
        {
          v5 = v41;
          goto LABEL_25;
        }
      }

      MEMORY[0x1B27142A0]();
      if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v24 = v4;
        v25 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v4 = v24;
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v5 = v46;
    }

    while (v6 != v4);
  }

LABEL_25:

  if (!(v5 >> 62))
  {
    v26 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v26)
    {
      goto LABEL_27;
    }

LABEL_43:

    v29 = MEMORY[0x1E69E7CC0];
LABEL_44:
    v40 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15GroupActivities17AddressableMemberV_SayAFGTt0g5Tf4g_n(v29);

    return v40;
  }

  v26 = __CocoaSet.count.getter();
  if (!v26)
  {
    goto LABEL_43;
  }

LABEL_27:
  v46 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26 & ~(v26 >> 63), 0);
  if ((v26 & 0x8000000000000000) == 0)
  {
    v28 = 0;
    v29 = v46;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x1B2714B30](v28, v5);
      }

      else
      {
        v30 = *(v5 + 8 * v28 + 32);
      }

      v31 = v30;
      v32 = [v30 normalizedValue];
      if (v32)
      {
        v33 = v31;
        v31 = v32;
      }

      else
      {
        v33 = [v31 value];
      }

      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;

      v46 = v29;
      v38 = *(v29 + 16);
      v37 = *(v29 + 24);
      if (v38 >= v37 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1);
        v29 = v46;
      }

      ++v28;
      *(v29 + 16) = v38 + 1;
      v39 = v29 + 16 * v38;
      *(v39 + 32) = v34;
      *(v39 + 40) = v36;
    }

    while (v26 != v28);

    goto LABEL_44;
  }

  __break(1u);
  return result;
}

id CKShareParticipant.handle.getter()
{
  v1 = v0;
  v2 = [v0 userIdentity];
  v3 = [v2 lookupInfo];

  if (!v3)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Log.default);
    v8 = v1;
    v3 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v3, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v35[0] = v11;
      *v10 = 136315138;
      v36 = v8;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CKShareParticipant, 0x1E695BAD8);
      v12 = v8;
      v13 = String.init<A>(reflecting:)();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v35);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_1AEE80000, v3, v9, "Missing user identity for participant: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x1B2715BA0](v11, -1, -1);
      MEMORY[0x1B2715BA0](v10, -1, -1);
    }

    goto LABEL_20;
  }

  v4 = [v3 emailAddress];
  if (v4)
  {
    v5 = v4;
    v6 = [objc_opt_self() normalizedEmailAddressHandleForValue_];

    if (!v6)
    {
LABEL_15:
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      __swift_project_value_buffer(v24, static Log.default);
      v25 = v1;
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v35[0] = v29;
        *v28 = 136315138;
        v36 = v25;
        type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CKShareParticipant, 0x1E695BAD8);
        v30 = v25;
        v31 = String.init<A>(reflecting:)();
        v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, v35);

        *(v28 + 4) = v33;
        _os_log_impl(&dword_1AEE80000, v26, v27, "Missing handle for participant: %s", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v29);
        MEMORY[0x1B2715BA0](v29, -1, -1);
        MEMORY[0x1B2715BA0](v28, -1, -1);
      }

LABEL_20:
      return 0;
    }
  }

  else
  {
    v16 = [v3 phoneNumber];
    if (!v16)
    {
      goto LABEL_15;
    }

    v17 = v16;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;
    v21 = PNCopyBestGuessCountryCodeForNumber();
    if (v21)
    {
      v22 = v21;
    }

    else
    {
      v35[0] = 43;
      v35[1] = 0xE100000000000000;
      MEMORY[0x1B27141F0](v18, v20);

      v23 = MEMORY[0x1B2714130](43, 0xE100000000000000);

      v22 = PNCopyBestGuessCountryCodeForNumber();
    }

    v6 = [objc_opt_self() normalizedPhoneNumberHandleForValue:v17 isoCountryCode:v22];

    if (!v6)
    {
      goto LABEL_15;
    }
  }

  return v6;
}

uint64_t closure #1 in CKShareGroupSessionProvider.init(id:activity:share:container:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySo7CKShareC_GGMd, &_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySo7CKShareC_GGMR);
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v7 = *(v6 + 64) + 15;
  v4[7] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo7CKShareC_GMd, &_s7Combine9PublishedV9PublisherVySo7CKShareC_GMR);
  v4[8] = v8;
  v9 = *(v8 - 8);
  v4[9] = v9;
  v10 = *(v9 + 64) + 15;
  v4[10] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySo7CKShareC_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySo7CKShareC_G_GMR);
  v4[11] = v11;
  v12 = *(v11 - 8);
  v4[12] = v12;
  v13 = *(v12 + 64) + 15;
  v4[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in CKShareGroupSessionProvider.init(id:activity:share:container:), 0, 0);
}

uint64_t closure #1 in CKShareGroupSessionProvider.init(id:activity:share:container:)()
{
  v1 = *(v0 + 104);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  (*(**(v0 + 32) + 344))();
  v8 = lazy protocol witness table accessor for type Published<CKShare>.Publisher and conformance Published<A>.Publisher();
  MEMORY[0x1B2713ED0](v4, v8);
  (*(v3 + 8))(v2, v4);
  AsyncPublisher.makeAsyncIterator()();
  (*(v7 + 8))(v5, v6);
  v9 = swift_task_alloc();
  *(v0 + 112) = v9;
  *v9 = v0;
  v9[1] = closure #1 in CKShareGroupSessionProvider.init(id:activity:share:container:);
  v10 = *(v0 + 104);

  return _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF7Combine14AsyncPublisherV8IteratorVyAI9PublishedV0G0VySo7CKShareC_G_G_Tg5(0, 0);
}

{
  v40 = v0;
  v1 = v0[15];
  if (v1)
  {
    if (one-time initialization token for ckShareGroupSessionProvider != -1)
    {
      swift_once();
    }

    v2 = v0[4];
    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Log.ckShareGroupSessionProvider);

    v4 = v1;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[4];
    if (v7)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v39 = v10;
      *v9 = 136315394;
      v11 = (*(*v8 + 408))();
      v13 = v12;

      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v39);

      *(v9 + 4) = v14;
      *(v9 + 12) = 2080;
      v0[3] = v4;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CKShare, 0x1E695BAC8);
      v15 = v4;
      v16 = String.init<A>(reflecting:)();
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v39);

      *(v9 + 14) = v18;
      _os_log_impl(&dword_1AEE80000, v5, v6, "%s Saw an updated CKShare: %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B2715BA0](v10, -1, -1);
      MEMORY[0x1B2715BA0](v9, -1, -1);
    }

    else
    {
    }

    (*(*v0[4] + 224))(v19);
    v0[2] = CKShare.members.getter();
    CurrentValueSubject.send(_:)();

    v32 = swift_task_alloc();
    v0[14] = v32;
    *v32 = v0;
    v32[1] = closure #1 in CKShareGroupSessionProvider.init(id:activity:share:container:);
    v33 = v0[13];

    return _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF7Combine14AsyncPublisherV8IteratorVyAI9PublishedV0G0VySo7CKShareC_G_G_Tg5(0, 0);
  }

  else
  {
    (*(v0[12] + 8))(v0[13], v0[11]);
    if (one-time initialization token for ckShareGroupSessionProvider != -1)
    {
      swift_once();
    }

    v20 = v0[4];
    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Log.ckShareGroupSessionProvider);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    v24 = os_log_type_enabled(v22, v23);
    v25 = v0[4];
    if (v24)
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v39 = v27;
      *v26 = 136315138;
      v28 = (*(*v25 + 408))();
      v30 = v29;

      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v39);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_1AEE80000, v22, v23, "%s Stopped listening for updated CKShares", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x1B2715BA0](v27, -1, -1);
      MEMORY[0x1B2715BA0](v26, -1, -1);
    }

    else
    {
    }

    v35 = v0[13];
    v36 = v0[10];
    v37 = v0[7];

    v38 = v0[1];

    return v38();
  }
}

uint64_t closure #1 in CKShareGroupSessionProvider.init(id:activity:share:container:)(uint64_t a1)
{
  v3 = *(*v2 + 112);
  v5 = *v2;
  *(*v2 + 120) = a1;

  if (!v1)
  {

    return MEMORY[0x1EEE6DFA0](closure #1 in CKShareGroupSessionProvider.init(id:activity:share:container:), 0, 0);
  }

  return result;
}

uint64_t closure #2 in CKShareGroupSessionProvider.init(id:activity:share:container:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  v7 = type metadata accessor for AsyncSerialQueue();
  v6[11] = v7;
  v8 = *(v7 - 8);
  v6[12] = v8;
  v9 = *(v8 + 64) + 15;
  v6[13] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsySo7CKShareCs5Error_pGMd, &_sScsySo7CKShareCs5Error_pGMR);
  v6[14] = v10;
  v11 = *(v10 - 8);
  v6[15] = v11;
  v12 = *(v11 + 64) + 15;
  v6[16] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs8IteratorVySo7CKShareCs5Error_p_GMd, &_sScs8IteratorVySo7CKShareCs5Error_p_GMR);
  v6[17] = v13;
  v14 = *(v13 - 8);
  v6[18] = v14;
  v15 = *(v14 + 64) + 15;
  v6[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #2 in CKShareGroupSessionProvider.init(id:activity:share:container:), 0, 0);
}

uint64_t closure #2 in CKShareGroupSessionProvider.init(id:activity:share:container:)()
{
  v39 = v0;
  if (one-time initialization token for ckShareGroupSessionProvider != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = type metadata accessor for Logger();
  v0[20] = __swift_project_value_buffer(v4, static Log.ckShareGroupSessionProvider);

  v5 = v2;
  v6 = v1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[9];
    v37 = v0[10];
    v10 = v0[8];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v38 = v12;
    *v11 = 136315650;
    v13 = (*(*v10 + 408))();
    v15 = v14;

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v38);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    v0[6] = v9;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CKShare, 0x1E695BAC8);
    v17 = v9;
    v18 = String.init<A>(reflecting:)();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v38);

    *(v11 + 14) = v20;
    *(v11 + 22) = 2080;
    v0[7] = v37;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CKContainer, 0x1E695B888);
    v21 = v37;
    v22 = String.init<A>(reflecting:)();
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v38);

    *(v11 + 24) = v24;
    _os_log_impl(&dword_1AEE80000, v7, v8, "%s Starting task to listen for CKShare updates on share: %s, container: %s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v12, -1, -1);
    MEMORY[0x1B2715BA0](v11, -1, -1);
  }

  else
  {
    v10 = v0[8];
  }

  v0[21] = v10;
  v25 = v0[19];
  v27 = v0[15];
  v26 = v0[16];
  v28 = v0[14];
  v29 = v0[9];
  v30 = v0[10];
  type metadata accessor for ShareChangeObserver();
  swift_allocObject();
  v31 = ShareChangeObserver.init(share:container:)(v29, v30);
  v0[22] = v31;
  (*(*v31 + 128))();
  MEMORY[0x1B27145A0](v28);
  (*(v27 + 8))(v26, v28);
  v32 = *(MEMORY[0x1E69E87A8] + 4);
  v33 = swift_task_alloc();
  v0[23] = v33;
  *v33 = v0;
  v33[1] = closure #2 in CKShareGroupSessionProvider.init(id:activity:share:container:);
  v34 = v0[19];
  v35 = v0[17];

  return MEMORY[0x1EEE6DB90](v0 + 2, 0, 0, v35, v0 + 3);
}

{
  v2 = *(*v1 + 184);
  v5 = *v1;

  if (v0)
  {
    v3 = closure #2 in CKShareGroupSessionProvider.init(id:activity:share:container:);
  }

  else
  {
    v3 = closure #2 in CKShareGroupSessionProvider.init(id:activity:share:container:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v44 = v0;
  v1 = v0[2];
  if (v1)
  {
    v2 = v0[20];
    v3 = v0[8];

    v4 = v1;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = v0[21];
      v8 = v0[8];
      v9 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v43 = v42;
      *v9 = 136315650;
      v10 = (*(*v8 + 408))();
      v12 = v11;

      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v43);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2080;
      v0[4] = v4;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CKShare, 0x1E695BAC8);
      v14 = v4;
      v15 = String.init<A>(reflecting:)();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v43);

      *(v9 + 14) = v17;
      *(v9 + 22) = 2080;
      v18 = [v14 participants];
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CKShareParticipant, 0x1E695BAD8);
      v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v0[5] = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo18CKShareParticipantCGMd, &_sSaySo18CKShareParticipantCGMR);
      v20 = String.init<A>(reflecting:)();
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v43);

      *(v9 + 24) = v22;
      _os_log_impl(&dword_1AEE80000, v5, v6, "%s Saw share %s updated with participants: %s", v9, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B2715BA0](v42, -1, -1);
      MEMORY[0x1B2715BA0](v9, -1, -1);
    }

    else
    {
      v30 = v0[8];
    }

    v31 = v0[21];
    v33 = v0[12];
    v32 = v0[13];
    v34 = v0[11];
    v35 = v0[8];
    (*(*v35 + 272))(v23);
    v36 = swift_allocObject();
    *(v36 + 16) = v35;
    *(v36 + 24) = v4;

    v37 = v4;
    AsyncSerialQueue.perform(_:)();

    (*(v33 + 8))(v32, v34);
    v38 = *(MEMORY[0x1E69E87A8] + 4);
    v39 = swift_task_alloc();
    v0[23] = v39;
    *v39 = v0;
    v39[1] = closure #2 in CKShareGroupSessionProvider.init(id:activity:share:container:);
    v40 = v0[19];
    v41 = v0[17];

    return MEMORY[0x1EEE6DB90](v0 + 2, 0, 0, v41, v0 + 3);
  }

  else
  {
    v24 = v0[22];
    (*(v0[18] + 8))(v0[19], v0[17]);

    v25 = v0[19];
    v26 = v0[16];
    v27 = v0[13];

    v28 = v0[1];

    return v28();
  }
}

{
  v24 = v0;
  v1 = v0[20];
  v2 = v0[8];
  (*(v0[18] + 8))(v0[19], v0[17]);
  v3 = v0[3];

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[22];
  if (v6)
  {
    v8 = v0[21];
    v9 = v0[8];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v10 = 136315138;
    v12 = (*(*v9 + 408))(v11);
    v14 = v13;

    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v23);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_1AEE80000, v4, v5, "%s Share ended", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x1B2715BA0](v11, -1, -1);
    MEMORY[0x1B2715BA0](v10, -1, -1);
  }

  else
  {
    v16 = v0[8];
    v17 = v0[22];
  }

  v18 = v0[19];
  v19 = v0[16];
  v20 = v0[13];

  v21 = v0[1];

  return v21();
}

uint64_t closure #1 in closure #2 in CKShareGroupSessionProvider.init(id:activity:share:container:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #2 in CKShareGroupSessionProvider.init(id:activity:share:container:), 0, 0);
}

uint64_t closure #1 in closure #2 in CKShareGroupSessionProvider.init(id:activity:share:container:)()
{
  (*(**(v0 + 16) + 400))(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CKShareGroupSessionProvider.updateShare(with:)(CKShare with)
{
  v2 = v1;
  v4 = *v1;
  v5 = [(objc_class *)with.super.super.isa recordChangeTag];
  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = v5;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10 = (*(*v2 + 320))();
  v11 = [v10 recordChangeTag];

  if (!v11)
  {
    goto LABEL_11;
  }

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  if (v12 == v7 && v14 == v9)
  {

LABEL_11:

    goto LABEL_12;
  }

  v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v16)
  {
    (*(*v2 + 328))(with.super.super.isa);
    return;
  }

LABEL_12:
  if (one-time initialization token for ckShareGroupSessionProvider != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Log.ckShareGroupSessionProvider);
  v18 = with.super.super.isa;

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v39 = v4;
    v21 = 7104878;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v40 = v23;
    *v22 = 136315394;
    v24 = [(objc_class *)v18 recordChangeTag];
    if (v24)
    {
      v25 = v24;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v26 = String.init<A>(reflecting:)();
      v28 = v27;
    }

    else
    {
      v28 = 0xE300000000000000;
      v26 = 7104878;
    }

    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v40);

    *(v22 + 4) = v29;
    *(v22 + 12) = 2080;
    v31 = (*(*v2 + 320))(v30);
    v32 = [v31 recordChangeTag];

    if (v32)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v21 = String.init<A>(reflecting:)();
      v34 = v33;
    }

    else
    {
      v34 = 0xE300000000000000;
    }

    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v34, &v40);

    *(v22 + 14) = v35;
    _os_log_impl(&dword_1AEE80000, v19, v20, "Dropping share because recordChangeTag %s <= %s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v23, -1, -1);
    MEMORY[0x1B2715BA0](v22, -1, -1);

    v4 = v39;
  }

  else
  {
  }

  v36 = *(v4 + 80);
  v37 = *(v4 + 88);
  type metadata accessor for CKShareGroupSessionProvider.Errors();
  swift_getWitnessTable();
  swift_allocError();
  *v38 = 0;
  swift_willThrow();
}