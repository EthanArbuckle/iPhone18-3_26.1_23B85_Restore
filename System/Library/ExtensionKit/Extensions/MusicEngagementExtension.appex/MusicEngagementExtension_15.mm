uint64_t specialized Action.execute(checkSupportedStatus:)(char a1)
{
  *(v2 + 1848) = v1;
  *(v2 + 1987) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0);
  *(v2 + 1856) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  *(v2 + 1864) = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  *(v2 + 1872) = v3;
  *(v2 + 1880) = *(v3 - 8);
  *(v2 + 1888) = swift_task_alloc();
  *(v2 + 1896) = swift_task_alloc();
  *(v2 + 1904) = swift_task_alloc();
  *(v2 + 1912) = swift_task_alloc();
  *(v2 + 1920) = swift_task_alloc();

  return _swift_task_switch(specialized Action.execute(checkSupportedStatus:), 0, 0);
}

uint64_t specialized closure #1 in Action.execute(checkSupportedStatus:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, const char *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  __chkstk_darwin(v8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for action != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v11, static Logger.action);
  (*(v12 + 16))(v14, v15, v11);
  outlined init with copy of TaskPriority?(a2, v10, a3);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v28 = a5;
    v19 = v18;
    v20 = swift_slowAlloc();
    v29 = v11;
    v30 = v20;
    v21 = v20;
    *v19 = 136446210;
    v22 = v10[*(v8 + 36)];
    outlined destroy of TaskPriority?(v10, a3);
    v23 = ActionType.rawValue.getter(v22);
    v25 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v23, v24, &v30);

    *(v19 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v16, v17, v28, v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v21);

    return (*(v12 + 8))(v14, v29);
  }

  else
  {
    outlined destroy of TaskPriority?(v10, a3);

    return (*(v12 + 8))(v14, v11);
  }
}

{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for action != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v8, static Logger.action);
  (*(v9 + 16))(v11, v12, v8);
  outlined init with copy of TaskPriority?(a2, v26, a3);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v24 = a3;
    v16 = v15;
    v17 = swift_slowAlloc();
    v26[0] = v17;
    *v16 = 136446210;
    v18 = ActionType.rawValue.getter(*(a2 + 48));
    v25 = a5;
    v19 = v18;
    v21 = v20;
    outlined destroy of TaskPriority?(a2, v24);
    v22 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v19, v21, v26);

    *(v16 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v13, v14, v25, v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
  }

  else
  {
    outlined destroy of TaskPriority?(a2, a3);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t specialized closure #2 in Action.execute(checkSupportedStatus:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  *(v4 + 1264) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  *(v4 + 1272) = v6;
  *(v4 + 1280) = *(v6 - 8);
  *(v4 + 1288) = swift_task_alloc();
  *(v4 + 1296) = swift_task_alloc();
  v7 = swift_task_alloc();
  v8 = a4[4];
  *(v4 + 232) = a4[5];
  v9 = a4[7];
  *(v4 + 248) = a4[6];
  *(v4 + 264) = v9;
  v10 = *a4;
  *(v4 + 168) = a4[1];
  v11 = a4[3];
  *(v4 + 184) = a4[2];
  *(v4 + 200) = v11;
  *(v4 + 216) = v8;
  *(v4 + 1304) = v7;
  *(v4 + 280) = *(a4 + 16);
  *(v4 + 152) = v10;

  return _swift_task_switch(specialized closure #2 in Action.execute(checkSupportedStatus:), 0, 0);
}

uint64_t specialized closure #2 in Action.execute(checkSupportedStatus:)()
{
  v43 = v0;
  v1 = (v0 + 152);
  if (one-time initialization token for action != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 1304);
  v3 = *(v0 + 1280);
  v4 = *(v0 + 1272);
  v5 = __swift_project_value_buffer(v4, static Logger.action);
  *(v0 + 1312) = v5;
  v6 = *(v3 + 16);
  *(v0 + 1320) = v6;
  *(v0 + 1328) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v4);
  v7 = *(v0 + 264);
  *(v0 + 112) = *(v0 + 248);
  *(v0 + 128) = v7;
  *(v0 + 144) = *(v0 + 280);
  v8 = *(v0 + 200);
  *(v0 + 48) = *(v0 + 184);
  *(v0 + 64) = v8;
  v9 = *(v0 + 232);
  *(v0 + 80) = *(v0 + 216);
  *(v0 + 96) = v9;
  v10 = *(v0 + 168);
  *(v0 + 16) = *v1;
  *(v0 + 32) = v10;
  outlined init with copy of TaskPriority?(v0 + 16, v0 + 288, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMd);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 1304);
  v15 = *(v0 + 1280);
  v16 = *(v0 + 1272);
  if (v13)
  {
    v40 = *(v0 + 1304);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v42 = v18;
    *v17 = 136446210;
    v19 = ActionType.rawValue.getter(*(v0 + 88));
    v21 = v20;
    outlined destroy of TaskPriority?(v0 + 16, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMd);
    v22 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v19, v21, &v42);

    *(v17 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v11, v12, "%{public}s: finishing…", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);

    (*(v15 + 8))(v40, v16);
  }

  else
  {
    outlined destroy of TaskPriority?(v0 + 16, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMd);

    (*(v15 + 8))(v14, v16);
  }

  v23 = *(v0 + 1264);
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSTimer);
  v24 = [objc_opt_self() mainRunLoop];
  v25 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v25 - 8) + 56))(v23, 1, 1, v25);
  v26 = static NSTimer.publish(every:tolerance:on:in:options:)();

  outlined destroy of TaskPriority?(v23, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  *(v0 + 1240) = v26;
  type metadata accessor for NSTimer.TimerPublisher();
  lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, &type metadata accessor for NSTimer.TimerPublisher);
  v27 = ConnectablePublisher.autoconnect()();

  *(v0 + 1248) = v27;
  v28 = *(v0 + 264);
  *(v0 + 520) = *(v0 + 248);
  *(v0 + 536) = v28;
  *(v0 + 552) = *(v0 + 280);
  v29 = *(v0 + 200);
  *(v0 + 456) = *(v0 + 184);
  *(v0 + 472) = v29;
  v30 = *(v0 + 232);
  *(v0 + 488) = *(v0 + 216);
  *(v0 + 504) = v30;
  v31 = *(v0 + 168);
  *(v0 + 424) = *v1;
  *(v0 + 440) = v31;
  v32 = *(v0 + 544);
  v33 = swift_allocObject();
  v34 = *(v0 + 264);
  *(v33 + 112) = *(v0 + 248);
  *(v33 + 128) = v34;
  *(v33 + 144) = *(v0 + 280);
  v35 = *(v0 + 200);
  *(v33 + 48) = *(v0 + 184);
  *(v33 + 64) = v35;
  v36 = *(v0 + 232);
  *(v33 + 80) = *(v0 + 216);
  *(v33 + 96) = v36;
  v37 = *(v0 + 168);
  *(v33 + 16) = *v1;
  *(v33 + 32) = v37;
  outlined init with copy of TaskPriority?(v0 + 424, v0 + 560, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd);
  *(v0 + 1336) = Publisher<>.sink(receiveValue:)();

  v41 = (v32 + *v32);
  v38 = swift_task_alloc();
  *(v0 + 1344) = v38;
  *v38 = v0;
  v38[1] = specialized closure #2 in Action.execute(checkSupportedStatus:);

  return v41(v1);
}

{
  *(*v1 + 1352) = v0;

  if (v0)
  {
    v2 = specialized closure #2 in Action.execute(checkSupportedStatus:);
  }

  else
  {
    v2 = specialized closure #2 in Action.execute(checkSupportedStatus:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v26 = v0;
  v1 = *(v0 + 1320);
  v2 = *(v0 + 1312);
  v3 = *(v0 + 1296);
  v4 = *(v0 + 1272);
  AnyCancellable.cancel()();
  v1(v3, v2, v4);
  v5 = *(v0 + 232);
  v6 = *(v0 + 264);
  *(v0 + 1064) = *(v0 + 248);
  *(v0 + 1080) = v6;
  *(v0 + 1096) = *(v0 + 280);
  v7 = *(v0 + 168);
  v8 = *(v0 + 200);
  *(v0 + 1000) = *(v0 + 184);
  *(v0 + 1016) = v8;
  *(v0 + 1032) = *(v0 + 216);
  *(v0 + 1048) = v5;
  *(v0 + 968) = *(v0 + 152);
  *(v0 + 984) = v7;
  outlined init with copy of TaskPriority?(v0 + 968, v0 + 1104, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMd);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1296);
  v13 = *(v0 + 1280);
  v14 = *(v0 + 1272);
  if (v11)
  {
    v24 = *(v0 + 1272);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v25 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 1040));
    v23 = v12;
    v19 = v18;
    outlined destroy of TaskPriority?(v0 + 968, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMd);
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v17, v19, &v25);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finish success", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);

    (*(v13 + 8))(v23, v24);
  }

  else
  {

    outlined destroy of TaskPriority?(v0 + 968, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMd);

    (*(v13 + 8))(v12, v14);
  }

  v21 = *(v0 + 8);

  return v21();
}

{
  v29 = v0;
  v1 = *(v0 + 1320);
  v2 = *(v0 + 1312);
  v3 = *(v0 + 1288);
  v4 = *(v0 + 1272);

  v1(v3, v2, v4);
  v5 = *(v0 + 232);
  v6 = *(v0 + 264);
  *(v0 + 792) = *(v0 + 248);
  *(v0 + 808) = v6;
  *(v0 + 824) = *(v0 + 280);
  v7 = *(v0 + 168);
  v8 = *(v0 + 200);
  *(v0 + 728) = *(v0 + 184);
  *(v0 + 744) = v8;
  *(v0 + 760) = *(v0 + 216);
  *(v0 + 776) = v5;
  *(v0 + 696) = *(v0 + 152);
  *(v0 + 712) = v7;
  outlined init with copy of TaskPriority?(v0 + 696, v0 + 832, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMd);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 1352);
    v12 = *(v0 + 1280);
    v26 = *(v0 + 1272);
    v27 = *(v0 + 1288);
    v13 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 768));
    v16 = v15;
    outlined destroy of TaskPriority?(v0 + 696, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMd);
    v17 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v14, v16, &v28);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1256) = v11;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v18 = String.init<A>(describing:)();
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v18, v19, &v28);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v12 + 8))(v27, v26);
  }

  else
  {
    v21 = *(v0 + 1288);
    v22 = *(v0 + 1280);
    v23 = *(v0 + 1272);

    outlined destroy of TaskPriority?(v0 + 696, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMd);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

{
  v37 = v0;
  if (one-time initialization token for action != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[13];
  v5 = v0[5];
  v6 = __swift_project_value_buffer(v2, static Logger.action);
  v0[19] = v6;
  v7 = *(v3 + 16);
  v0[20] = v7;
  v0[21] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v6, v2);
  outlined init with copy of TaskPriority?(v5, v4, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMd);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[18];
  v12 = v0[14];
  v13 = v0[15];
  v14 = v0[13];
  if (v10)
  {
    v15 = v0[7];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v36 = v17;
    *v16 = 136446210;
    LOBYTE(v15) = *(v14 + *(v15 + 36));
    outlined destroy of TaskPriority?(v14, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMd);
    v18 = ActionType.rawValue.getter(v15);
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v18, v19, &v36);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finishing…", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
  }

  else
  {
    outlined destroy of TaskPriority?(v0[13], &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMd);
  }

  (*(v13 + 8))(v11, v12);
  v21 = v0[12];
  v22 = v0[8];
  v23 = v0[6];
  v24 = v0[7];
  v25 = v0[5];
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSTimer);
  v26 = [objc_opt_self() mainRunLoop];
  v27 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v27 - 8) + 56))(v23, 1, 1, v27);
  v28 = static NSTimer.publish(every:tolerance:on:in:options:)();

  outlined destroy of TaskPriority?(v23, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  v0[2] = v28;
  type metadata accessor for NSTimer.TimerPublisher();
  lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, &type metadata accessor for NSTimer.TimerPublisher);
  v29 = ConnectablePublisher.autoconnect()();

  v0[3] = v29;
  outlined init with copy of TaskPriority?(v25, v21, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMd);
  v30 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v31 = swift_allocObject();
  outlined init with take of URL?(v21, v31 + v30, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd);
  v0[22] = Publisher<>.sink(receiveValue:)();

  v35 = (*(v25 + *(v24 + 52)) + **(v25 + *(v24 + 52)));
  v32 = swift_task_alloc();
  v0[23] = v32;
  *v32 = v0;
  v32[1] = specialized closure #2 in Action.execute(checkSupportedStatus:);
  v33 = v0[5];

  return v35(v33);
}

{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = specialized closure #2 in Action.execute(checkSupportedStatus:);
  }

  else
  {
    v2 = specialized closure #2 in Action.execute(checkSupportedStatus:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v24 = v0;
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[14];
  v5 = v0[11];
  v6 = v0[5];
  AnyCancellable.cancel()();
  v2(v3, v1, v4);
  outlined init with copy of TaskPriority?(v6, v5, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMd);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[17];
  v12 = v0[14];
  v11 = v0[15];
  v13 = v0[11];
  if (v9)
  {
    v14 = v0[7];
    v22 = v0[17];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v23 = v16;
    *v15 = 136446210;
    LOBYTE(v14) = *(v13 + *(v14 + 36));
    outlined destroy of TaskPriority?(v13, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMd);
    v17 = ActionType.rawValue.getter(v14);
    v19 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v17, v18, &v23);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: finish success", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);

    (*(v11 + 8))(v22, v12);
  }

  else
  {
    outlined destroy of TaskPriority?(v0[11], &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMd);

    (*(v11 + 8))(v10, v12);
  }

  v20 = v0[1];

  return v20();
}

{
  v28 = v0;
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[16];
  v4 = v0[14];
  v5 = v0[10];
  v6 = v0[5];

  v2(v3, v1, v4);
  outlined init with copy of TaskPriority?(v6, v5, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMd);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[24];
    v10 = v0[15];
    v26 = v0[16];
    v11 = v0[14];
    v12 = v0[10];
    v13 = v0[7];
    v14 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v14 = 136446466;
    LOBYTE(v13) = *(v12 + *(v13 + 36));
    outlined destroy of TaskPriority?(v12, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMd);
    v15 = ActionType.rawValue.getter(v13);
    v17 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v15, v16, &v27);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2082;
    v0[4] = v9;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v18 = String.init<A>(describing:)();
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v18, v19, &v27);

    *(v14 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: finish failed: %{public}s", v14, 0x16u);
    swift_arrayDestroy();

    (*(v10 + 8))(v26, v11);
  }

  else
  {
    v22 = v0[15];
    v21 = v0[16];
    v23 = v0[14];
    outlined destroy of TaskPriority?(v0[10], &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMd);

    (*(v22 + 8))(v21, v23);
  }

  v24 = v0[1];

  return v24();
}

{
  v37 = v0;
  if (one-time initialization token for action != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[13];
  v5 = v0[5];
  v6 = __swift_project_value_buffer(v2, static Logger.action);
  v0[19] = v6;
  v7 = *(v3 + 16);
  v0[20] = v7;
  v0[21] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v6, v2);
  outlined init with copy of TaskPriority?(v5, v4, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMd);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[18];
  v12 = v0[14];
  v13 = v0[15];
  v14 = v0[13];
  if (v10)
  {
    v15 = v0[7];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v36 = v17;
    *v16 = 136446210;
    LOBYTE(v15) = *(v14 + *(v15 + 36));
    outlined destroy of TaskPriority?(v14, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMd);
    v18 = ActionType.rawValue.getter(v15);
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v18, v19, &v36);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finishing…", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
  }

  else
  {
    outlined destroy of TaskPriority?(v0[13], &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMd);
  }

  (*(v13 + 8))(v11, v12);
  v21 = v0[12];
  v22 = v0[8];
  v23 = v0[6];
  v24 = v0[7];
  v25 = v0[5];
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSTimer);
  v26 = [objc_opt_self() mainRunLoop];
  v27 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v27 - 8) + 56))(v23, 1, 1, v27);
  v28 = static NSTimer.publish(every:tolerance:on:in:options:)();

  outlined destroy of TaskPriority?(v23, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  v0[2] = v28;
  type metadata accessor for NSTimer.TimerPublisher();
  lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, &type metadata accessor for NSTimer.TimerPublisher);
  v29 = ConnectablePublisher.autoconnect()();

  v0[3] = v29;
  outlined init with copy of TaskPriority?(v25, v21, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMd);
  v30 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v31 = swift_allocObject();
  outlined init with take of URL?(v21, v31 + v30, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd);
  v0[22] = Publisher<>.sink(receiveValue:)();

  v35 = (*(v25 + *(v24 + 52)) + **(v25 + *(v24 + 52)));
  v32 = swift_task_alloc();
  v0[23] = v32;
  *v32 = v0;
  v32[1] = specialized closure #2 in Action.execute(checkSupportedStatus:);
  v33 = v0[5];

  return v35(v33);
}

{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = specialized closure #2 in Action.execute(checkSupportedStatus:);
  }

  else
  {
    v2 = specialized closure #2 in Action.execute(checkSupportedStatus:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v24 = v0;
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[14];
  v5 = v0[11];
  v6 = v0[5];
  AnyCancellable.cancel()();
  v2(v3, v1, v4);
  outlined init with copy of TaskPriority?(v6, v5, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMd);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[17];
  v12 = v0[14];
  v11 = v0[15];
  v13 = v0[11];
  if (v9)
  {
    v14 = v0[7];
    v22 = v0[17];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v23 = v16;
    *v15 = 136446210;
    LOBYTE(v14) = *(v13 + *(v14 + 36));
    outlined destroy of TaskPriority?(v13, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMd);
    v17 = ActionType.rawValue.getter(v14);
    v19 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v17, v18, &v23);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: finish success", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);

    (*(v11 + 8))(v22, v12);
  }

  else
  {
    outlined destroy of TaskPriority?(v0[11], &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMd);

    (*(v11 + 8))(v10, v12);
  }

  v20 = v0[1];

  return v20();
}

{
  v28 = v0;
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[16];
  v4 = v0[14];
  v5 = v0[10];
  v6 = v0[5];

  v2(v3, v1, v4);
  outlined init with copy of TaskPriority?(v6, v5, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMd);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[24];
    v10 = v0[15];
    v26 = v0[16];
    v11 = v0[14];
    v12 = v0[10];
    v13 = v0[7];
    v14 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v14 = 136446466;
    LOBYTE(v13) = *(v12 + *(v13 + 36));
    outlined destroy of TaskPriority?(v12, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMd);
    v15 = ActionType.rawValue.getter(v13);
    v17 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v15, v16, &v27);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2082;
    v0[4] = v9;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v18 = String.init<A>(describing:)();
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v18, v19, &v27);

    *(v14 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: finish failed: %{public}s", v14, 0x16u);
    swift_arrayDestroy();

    (*(v10 + 8))(v26, v11);
  }

  else
  {
    v22 = v0[15];
    v21 = v0[16];
    v23 = v0[14];
    outlined destroy of TaskPriority?(v0[10], &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMd);

    (*(v22 + 8))(v21, v23);
  }

  v24 = v0[1];

  return v24();
}

{
  v39 = v0;
  if (one-time initialization token for action != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = __swift_project_value_buffer(v3, static Logger.action);
  *(v0 + 1096) = v4;
  v5 = *(v2 + 16);
  *(v0 + 1104) = v5;
  *(v0 + 1112) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 224);
  v7 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v7;
  v8 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v8;
  outlined init with copy of TaskPriority?(v0 + 16, v0 + 240, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMd);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1064);
  v14 = *(v0 + 1056);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 64));
    v19 = v18;
    outlined destroy of TaskPriority?(v0 + 16, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMd);
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
  }

  else
  {
    outlined destroy of TaskPriority?(v0 + 16, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMd);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSTimer);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = static NSTimer.publish(every:tolerance:on:in:options:)();

  outlined destroy of TaskPriority?(v21, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  *(v0 + 1024) = v24;
  type metadata accessor for NSTimer.TimerPublisher();
  lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, &type metadata accessor for NSTimer.TimerPublisher);
  v25 = ConnectablePublisher.autoconnect()();

  *(v0 + 1032) = v25;
  v26 = *(v0 + 224);
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 448) = v26;
  v27 = *(v0 + 192);
  v28 = *(v0 + 144);
  *(v0 + 352) = *(v0 + 128);
  *(v0 + 368) = v28;
  v29 = *(v0 + 160);
  *(v0 + 400) = *(v0 + 176);
  *(v0 + 416) = v27;
  *(v0 + 384) = v29;
  v30 = *(v0 + 448);
  v31 = swift_allocObject();
  v32 = *(v0 + 208);
  v31[5] = *(v0 + 192);
  v31[6] = v32;
  v31[7] = *(v0 + 224);
  v33 = *(v0 + 144);
  v31[1] = *(v0 + 128);
  v31[2] = v33;
  v34 = *(v0 + 176);
  v31[3] = *(v0 + 160);
  v31[4] = v34;
  outlined init with copy of TaskPriority?(v0 + 352, v0 + 464, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd);
  *(v0 + 1120) = Publisher<>.sink(receiveValue:)();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = specialized closure #2 in Action.execute(checkSupportedStatus:);

  return v37(v0 + 128);
}

{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = specialized closure #2 in Action.execute(checkSupportedStatus:);
  }

  else
  {
    v2 = specialized closure #2 in Action.execute(checkSupportedStatus:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  AnyCancellable.cancel()();
  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 864) = *(v0 + 192);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 800) = *(v0 + 128);
  *(v0 + 816) = v6;
  v7 = *(v0 + 176);
  *(v0 + 832) = *(v0 + 160);
  *(v0 + 848) = v7;
  outlined init with copy of TaskPriority?(v0 + 800, v0 + 912, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMd);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 1056);
  if (v10)
  {
    v22 = *(v0 + 1080);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 848));
    v18 = v17;
    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMd);
    v19 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMd);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

{
  v28 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1056);

  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 640) = *(v0 + 192);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 576) = *(v0 + 128);
  *(v0 + 592) = v6;
  v7 = *(v0 + 176);
  *(v0 + 608) = *(v0 + 160);
  *(v0 + 624) = v7;
  outlined init with copy of TaskPriority?(v0 + 576, v0 + 688, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMd);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1136);
    v26 = *(v0 + 1072);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMd);
    v17 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v18 = String.init<A>(describing:)();
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1072);
    v22 = *(v0 + 1064);
    v23 = *(v0 + 1056);

    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMd);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

{
  v39 = v0;
  if (one-time initialization token for action != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = __swift_project_value_buffer(v3, static Logger.action);
  *(v0 + 1096) = v4;
  v5 = *(v2 + 16);
  *(v0 + 1104) = v5;
  *(v0 + 1112) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 224);
  v7 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v7;
  v8 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v8;
  outlined init with copy of TaskPriority?(v0 + 16, v0 + 240, &_s9MusicCore6ActionVyAA7ActionsO13AddToPlaylistO7ContextVytGMd);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1064);
  v14 = *(v0 + 1056);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 64));
    v19 = v18;
    outlined destroy of TaskPriority?(v0 + 16, &_s9MusicCore6ActionVyAA7ActionsO13AddToPlaylistO7ContextVytGMd);
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
  }

  else
  {
    outlined destroy of TaskPriority?(v0 + 16, &_s9MusicCore6ActionVyAA7ActionsO13AddToPlaylistO7ContextVytGMd);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSTimer);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = static NSTimer.publish(every:tolerance:on:in:options:)();

  outlined destroy of TaskPriority?(v21, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  *(v0 + 1024) = v24;
  type metadata accessor for NSTimer.TimerPublisher();
  lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, &type metadata accessor for NSTimer.TimerPublisher);
  v25 = ConnectablePublisher.autoconnect()();

  *(v0 + 1032) = v25;
  v26 = *(v0 + 224);
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 448) = v26;
  v27 = *(v0 + 192);
  v28 = *(v0 + 144);
  *(v0 + 352) = *(v0 + 128);
  *(v0 + 368) = v28;
  v29 = *(v0 + 160);
  *(v0 + 400) = *(v0 + 176);
  *(v0 + 416) = v27;
  *(v0 + 384) = v29;
  v30 = *(v0 + 448);
  v31 = swift_allocObject();
  v32 = *(v0 + 208);
  v31[5] = *(v0 + 192);
  v31[6] = v32;
  v31[7] = *(v0 + 224);
  v33 = *(v0 + 144);
  v31[1] = *(v0 + 128);
  v31[2] = v33;
  v34 = *(v0 + 176);
  v31[3] = *(v0 + 160);
  v31[4] = v34;
  outlined init with copy of TaskPriority?(v0 + 352, v0 + 464, &_s9MusicCore6ActionVyAA7ActionsO13AddToPlaylistO7ContextVytGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd);
  *(v0 + 1120) = Publisher<>.sink(receiveValue:)();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = specialized closure #2 in Action.execute(checkSupportedStatus:);

  return v37(v0 + 128);
}

{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = specialized closure #2 in Action.execute(checkSupportedStatus:);
  }

  else
  {
    v2 = specialized closure #2 in Action.execute(checkSupportedStatus:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  AnyCancellable.cancel()();
  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 864) = *(v0 + 192);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 800) = *(v0 + 128);
  *(v0 + 816) = v6;
  v7 = *(v0 + 176);
  *(v0 + 832) = *(v0 + 160);
  *(v0 + 848) = v7;
  outlined init with copy of TaskPriority?(v0 + 800, v0 + 912, &_s9MusicCore6ActionVyAA7ActionsO13AddToPlaylistO7ContextVytGMd);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 1056);
  if (v10)
  {
    v22 = *(v0 + 1080);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 848));
    v18 = v17;
    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO13AddToPlaylistO7ContextVytGMd);
    v19 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO13AddToPlaylistO7ContextVytGMd);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

{
  v28 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1056);

  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 640) = *(v0 + 192);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 576) = *(v0 + 128);
  *(v0 + 592) = v6;
  v7 = *(v0 + 176);
  *(v0 + 608) = *(v0 + 160);
  *(v0 + 624) = v7;
  outlined init with copy of TaskPriority?(v0 + 576, v0 + 688, &_s9MusicCore6ActionVyAA7ActionsO13AddToPlaylistO7ContextVytGMd);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1136);
    v26 = *(v0 + 1072);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO13AddToPlaylistO7ContextVytGMd);
    v17 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v18 = String.init<A>(describing:)();
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1072);
    v22 = *(v0 + 1064);
    v23 = *(v0 + 1056);

    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO13AddToPlaylistO7ContextVytGMd);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

{
  v39 = v0;
  if (one-time initialization token for action != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = __swift_project_value_buffer(v3, static Logger.action);
  *(v0 + 1096) = v4;
  v5 = *(v2 + 16);
  *(v0 + 1104) = v5;
  *(v0 + 1112) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 224);
  v7 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v7;
  v8 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v8;
  outlined init with copy of TaskPriority?(v0 + 16, v0 + 240, &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMd);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1064);
  v14 = *(v0 + 1056);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 64));
    v19 = v18;
    outlined destroy of TaskPriority?(v0 + 16, &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMd);
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
  }

  else
  {
    outlined destroy of TaskPriority?(v0 + 16, &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMd);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSTimer);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = static NSTimer.publish(every:tolerance:on:in:options:)();

  outlined destroy of TaskPriority?(v21, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  *(v0 + 1024) = v24;
  type metadata accessor for NSTimer.TimerPublisher();
  lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, &type metadata accessor for NSTimer.TimerPublisher);
  v25 = ConnectablePublisher.autoconnect()();

  *(v0 + 1032) = v25;
  v26 = *(v0 + 224);
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 448) = v26;
  v27 = *(v0 + 192);
  v28 = *(v0 + 144);
  *(v0 + 352) = *(v0 + 128);
  *(v0 + 368) = v28;
  v29 = *(v0 + 160);
  *(v0 + 400) = *(v0 + 176);
  *(v0 + 416) = v27;
  *(v0 + 384) = v29;
  v30 = *(v0 + 448);
  v31 = swift_allocObject();
  v32 = *(v0 + 208);
  v31[5] = *(v0 + 192);
  v31[6] = v32;
  v31[7] = *(v0 + 224);
  v33 = *(v0 + 144);
  v31[1] = *(v0 + 128);
  v31[2] = v33;
  v34 = *(v0 + 176);
  v31[3] = *(v0 + 160);
  v31[4] = v34;
  outlined init with copy of TaskPriority?(v0 + 352, v0 + 464, &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd);
  *(v0 + 1120) = Publisher<>.sink(receiveValue:)();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = specialized closure #2 in Action.execute(checkSupportedStatus:);

  return v37(v0 + 128);
}

{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = specialized closure #2 in Action.execute(checkSupportedStatus:);
  }

  else
  {
    v2 = specialized closure #2 in Action.execute(checkSupportedStatus:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  AnyCancellable.cancel()();
  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 864) = *(v0 + 192);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 800) = *(v0 + 128);
  *(v0 + 816) = v6;
  v7 = *(v0 + 176);
  *(v0 + 832) = *(v0 + 160);
  *(v0 + 848) = v7;
  outlined init with copy of TaskPriority?(v0 + 800, v0 + 912, &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMd);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 1056);
  if (v10)
  {
    v22 = *(v0 + 1080);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 848));
    v18 = v17;
    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMd);
    v19 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMd);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

{
  v28 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1056);

  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 640) = *(v0 + 192);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 576) = *(v0 + 128);
  *(v0 + 592) = v6;
  v7 = *(v0 + 176);
  *(v0 + 608) = *(v0 + 160);
  *(v0 + 624) = v7;
  outlined init with copy of TaskPriority?(v0 + 576, v0 + 688, &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMd);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1136);
    v26 = *(v0 + 1072);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMd);
    v17 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v18 = String.init<A>(describing:)();
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1072);
    v22 = *(v0 + 1064);
    v23 = *(v0 + 1056);

    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMd);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

{
  v39 = v0;
  if (one-time initialization token for action != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = __swift_project_value_buffer(v3, static Logger.action);
  *(v0 + 1096) = v4;
  v5 = *(v2 + 16);
  *(v0 + 1104) = v5;
  *(v0 + 1112) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 224);
  v7 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v7;
  v8 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v8;
  outlined init with copy of TaskPriority?(v0 + 16, v0 + 240, &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMd);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1064);
  v14 = *(v0 + 1056);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 64));
    v19 = v18;
    outlined destroy of TaskPriority?(v0 + 16, &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMd);
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
  }

  else
  {
    outlined destroy of TaskPriority?(v0 + 16, &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMd);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSTimer);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = static NSTimer.publish(every:tolerance:on:in:options:)();

  outlined destroy of TaskPriority?(v21, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  *(v0 + 1024) = v24;
  type metadata accessor for NSTimer.TimerPublisher();
  lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, &type metadata accessor for NSTimer.TimerPublisher);
  v25 = ConnectablePublisher.autoconnect()();

  *(v0 + 1032) = v25;
  v26 = *(v0 + 224);
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 448) = v26;
  v27 = *(v0 + 192);
  v28 = *(v0 + 144);
  *(v0 + 352) = *(v0 + 128);
  *(v0 + 368) = v28;
  v29 = *(v0 + 160);
  *(v0 + 400) = *(v0 + 176);
  *(v0 + 416) = v27;
  *(v0 + 384) = v29;
  v30 = *(v0 + 448);
  v31 = swift_allocObject();
  v32 = *(v0 + 208);
  v31[5] = *(v0 + 192);
  v31[6] = v32;
  v31[7] = *(v0 + 224);
  v33 = *(v0 + 144);
  v31[1] = *(v0 + 128);
  v31[2] = v33;
  v34 = *(v0 + 176);
  v31[3] = *(v0 + 160);
  v31[4] = v34;
  outlined init with copy of TaskPriority?(v0 + 352, v0 + 464, &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd);
  *(v0 + 1120) = Publisher<>.sink(receiveValue:)();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = specialized closure #2 in Action.execute(checkSupportedStatus:);

  return v37(v0 + 128);
}

{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = specialized closure #2 in Action.execute(checkSupportedStatus:);
  }

  else
  {
    v2 = specialized closure #2 in Action.execute(checkSupportedStatus:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  AnyCancellable.cancel()();
  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 864) = *(v0 + 192);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 800) = *(v0 + 128);
  *(v0 + 816) = v6;
  v7 = *(v0 + 176);
  *(v0 + 832) = *(v0 + 160);
  *(v0 + 848) = v7;
  outlined init with copy of TaskPriority?(v0 + 800, v0 + 912, &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMd);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 1056);
  if (v10)
  {
    v22 = *(v0 + 1080);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 848));
    v18 = v17;
    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMd);
    v19 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMd);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

{
  v28 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1056);

  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 640) = *(v0 + 192);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 576) = *(v0 + 128);
  *(v0 + 592) = v6;
  v7 = *(v0 + 176);
  *(v0 + 608) = *(v0 + 160);
  *(v0 + 624) = v7;
  outlined init with copy of TaskPriority?(v0 + 576, v0 + 688, &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMd);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1136);
    v26 = *(v0 + 1072);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMd);
    v17 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v18 = String.init<A>(describing:)();
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1072);
    v22 = *(v0 + 1064);
    v23 = *(v0 + 1056);

    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMd);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

{
  v39 = v0;
  if (one-time initialization token for action != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = __swift_project_value_buffer(v3, static Logger.action);
  *(v0 + 1096) = v4;
  v5 = *(v2 + 16);
  *(v0 + 1104) = v5;
  *(v0 + 1112) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 224);
  v7 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v7;
  v8 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v8;
  outlined init with copy of TaskPriority?(v0 + 16, v0 + 240, &_s9MusicCore6ActionVyAA7ActionsO17DeleteFromLibraryO7ContextVytGMd);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1064);
  v14 = *(v0 + 1056);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 64));
    v19 = v18;
    outlined destroy of TaskPriority?(v0 + 16, &_s9MusicCore6ActionVyAA7ActionsO17DeleteFromLibraryO7ContextVytGMd);
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
  }

  else
  {
    outlined destroy of TaskPriority?(v0 + 16, &_s9MusicCore6ActionVyAA7ActionsO17DeleteFromLibraryO7ContextVytGMd);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSTimer);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = static NSTimer.publish(every:tolerance:on:in:options:)();

  outlined destroy of TaskPriority?(v21, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  *(v0 + 1024) = v24;
  type metadata accessor for NSTimer.TimerPublisher();
  lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, &type metadata accessor for NSTimer.TimerPublisher);
  v25 = ConnectablePublisher.autoconnect()();

  *(v0 + 1032) = v25;
  v26 = *(v0 + 224);
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 448) = v26;
  v27 = *(v0 + 192);
  v28 = *(v0 + 144);
  *(v0 + 352) = *(v0 + 128);
  *(v0 + 368) = v28;
  v29 = *(v0 + 160);
  *(v0 + 400) = *(v0 + 176);
  *(v0 + 416) = v27;
  *(v0 + 384) = v29;
  v30 = *(v0 + 448);
  v31 = swift_allocObject();
  v32 = *(v0 + 208);
  v31[5] = *(v0 + 192);
  v31[6] = v32;
  v31[7] = *(v0 + 224);
  v33 = *(v0 + 144);
  v31[1] = *(v0 + 128);
  v31[2] = v33;
  v34 = *(v0 + 176);
  v31[3] = *(v0 + 160);
  v31[4] = v34;
  outlined init with copy of TaskPriority?(v0 + 352, v0 + 464, &_s9MusicCore6ActionVyAA7ActionsO17DeleteFromLibraryO7ContextVytGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd);
  *(v0 + 1120) = Publisher<>.sink(receiveValue:)();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = specialized closure #2 in Action.execute(checkSupportedStatus:);

  return v37(v0 + 128);
}

{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = specialized closure #2 in Action.execute(checkSupportedStatus:);
  }

  else
  {
    v2 = specialized closure #2 in Action.execute(checkSupportedStatus:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  AnyCancellable.cancel()();
  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 864) = *(v0 + 192);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 800) = *(v0 + 128);
  *(v0 + 816) = v6;
  v7 = *(v0 + 176);
  *(v0 + 832) = *(v0 + 160);
  *(v0 + 848) = v7;
  outlined init with copy of TaskPriority?(v0 + 800, v0 + 912, &_s9MusicCore6ActionVyAA7ActionsO17DeleteFromLibraryO7ContextVytGMd);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 1056);
  if (v10)
  {
    v22 = *(v0 + 1080);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 848));
    v18 = v17;
    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO17DeleteFromLibraryO7ContextVytGMd);
    v19 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO17DeleteFromLibraryO7ContextVytGMd);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

{
  v28 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1056);

  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 640) = *(v0 + 192);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 576) = *(v0 + 128);
  *(v0 + 592) = v6;
  v7 = *(v0 + 176);
  *(v0 + 608) = *(v0 + 160);
  *(v0 + 624) = v7;
  outlined init with copy of TaskPriority?(v0 + 576, v0 + 688, &_s9MusicCore6ActionVyAA7ActionsO17DeleteFromLibraryO7ContextVytGMd);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1136);
    v26 = *(v0 + 1072);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO17DeleteFromLibraryO7ContextVytGMd);
    v17 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v18 = String.init<A>(describing:)();
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1072);
    v22 = *(v0 + 1064);
    v23 = *(v0 + 1056);

    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO17DeleteFromLibraryO7ContextVytGMd);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

{
  v39 = v0;
  if (one-time initialization token for action != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = __swift_project_value_buffer(v3, static Logger.action);
  *(v0 + 1096) = v4;
  v5 = *(v2 + 16);
  *(v0 + 1104) = v5;
  *(v0 + 1112) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 224);
  v7 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v7;
  v8 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v8;
  outlined init with copy of TaskPriority?(v0 + 16, v0 + 240, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMd);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1064);
  v14 = *(v0 + 1056);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 64));
    v19 = v18;
    outlined destroy of TaskPriority?(v0 + 16, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMd);
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
  }

  else
  {
    outlined destroy of TaskPriority?(v0 + 16, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMd);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSTimer);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = static NSTimer.publish(every:tolerance:on:in:options:)();

  outlined destroy of TaskPriority?(v21, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  *(v0 + 1024) = v24;
  type metadata accessor for NSTimer.TimerPublisher();
  lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, &type metadata accessor for NSTimer.TimerPublisher);
  v25 = ConnectablePublisher.autoconnect()();

  *(v0 + 1032) = v25;
  v26 = *(v0 + 224);
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 448) = v26;
  v27 = *(v0 + 192);
  v28 = *(v0 + 144);
  *(v0 + 352) = *(v0 + 128);
  *(v0 + 368) = v28;
  v29 = *(v0 + 160);
  *(v0 + 400) = *(v0 + 176);
  *(v0 + 416) = v27;
  *(v0 + 384) = v29;
  v30 = *(v0 + 448);
  v31 = swift_allocObject();
  v32 = *(v0 + 208);
  v31[5] = *(v0 + 192);
  v31[6] = v32;
  v31[7] = *(v0 + 224);
  v33 = *(v0 + 144);
  v31[1] = *(v0 + 128);
  v31[2] = v33;
  v34 = *(v0 + 176);
  v31[3] = *(v0 + 160);
  v31[4] = v34;
  outlined init with copy of TaskPriority?(v0 + 352, v0 + 464, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd);
  *(v0 + 1120) = Publisher<>.sink(receiveValue:)();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = specialized closure #2 in Action.execute(checkSupportedStatus:);

  return v37(v0 + 128);
}

{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = specialized closure #2 in Action.execute(checkSupportedStatus:);
  }

  else
  {
    v2 = specialized closure #2 in Action.execute(checkSupportedStatus:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  AnyCancellable.cancel()();
  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 864) = *(v0 + 192);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 800) = *(v0 + 128);
  *(v0 + 816) = v6;
  v7 = *(v0 + 176);
  *(v0 + 832) = *(v0 + 160);
  *(v0 + 848) = v7;
  outlined init with copy of TaskPriority?(v0 + 800, v0 + 912, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMd);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 1056);
  if (v10)
  {
    v22 = *(v0 + 1080);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 848));
    v18 = v17;
    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMd);
    v19 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMd);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

{
  v28 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1056);

  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 640) = *(v0 + 192);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 576) = *(v0 + 128);
  *(v0 + 592) = v6;
  v7 = *(v0 + 176);
  *(v0 + 608) = *(v0 + 160);
  *(v0 + 624) = v7;
  outlined init with copy of TaskPriority?(v0 + 576, v0 + 688, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMd);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1136);
    v26 = *(v0 + 1072);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMd);
    v17 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v18 = String.init<A>(describing:)();
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1072);
    v22 = *(v0 + 1064);
    v23 = *(v0 + 1056);

    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMd);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

{
  v39 = v0;
  if (one-time initialization token for action != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = __swift_project_value_buffer(v3, static Logger.action);
  *(v0 + 1096) = v4;
  v5 = *(v2 + 16);
  *(v0 + 1104) = v5;
  *(v0 + 1112) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 224);
  v7 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v7;
  v8 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v8;
  outlined init with copy of TaskPriority?(v0 + 16, v0 + 240, &_s9MusicCore6ActionVyAA7ActionsO12DeleteFolderO7ContextVytGMd);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1064);
  v14 = *(v0 + 1056);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 64));
    v19 = v18;
    outlined destroy of TaskPriority?(v0 + 16, &_s9MusicCore6ActionVyAA7ActionsO12DeleteFolderO7ContextVytGMd);
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
  }

  else
  {
    outlined destroy of TaskPriority?(v0 + 16, &_s9MusicCore6ActionVyAA7ActionsO12DeleteFolderO7ContextVytGMd);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSTimer);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = static NSTimer.publish(every:tolerance:on:in:options:)();

  outlined destroy of TaskPriority?(v21, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  *(v0 + 1024) = v24;
  type metadata accessor for NSTimer.TimerPublisher();
  lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, &type metadata accessor for NSTimer.TimerPublisher);
  v25 = ConnectablePublisher.autoconnect()();

  *(v0 + 1032) = v25;
  v26 = *(v0 + 224);
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 448) = v26;
  v27 = *(v0 + 192);
  v28 = *(v0 + 144);
  *(v0 + 352) = *(v0 + 128);
  *(v0 + 368) = v28;
  v29 = *(v0 + 160);
  *(v0 + 400) = *(v0 + 176);
  *(v0 + 416) = v27;
  *(v0 + 384) = v29;
  v30 = *(v0 + 448);
  v31 = swift_allocObject();
  v32 = *(v0 + 208);
  v31[5] = *(v0 + 192);
  v31[6] = v32;
  v31[7] = *(v0 + 224);
  v33 = *(v0 + 144);
  v31[1] = *(v0 + 128);
  v31[2] = v33;
  v34 = *(v0 + 176);
  v31[3] = *(v0 + 160);
  v31[4] = v34;
  outlined init with copy of TaskPriority?(v0 + 352, v0 + 464, &_s9MusicCore6ActionVyAA7ActionsO12DeleteFolderO7ContextVytGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd);
  *(v0 + 1120) = Publisher<>.sink(receiveValue:)();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = specialized closure #2 in Action.execute(checkSupportedStatus:);

  return v37(v0 + 128);
}

{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = specialized closure #2 in Action.execute(checkSupportedStatus:);
  }

  else
  {
    v2 = specialized closure #2 in Action.execute(checkSupportedStatus:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  AnyCancellable.cancel()();
  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 864) = *(v0 + 192);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 800) = *(v0 + 128);
  *(v0 + 816) = v6;
  v7 = *(v0 + 176);
  *(v0 + 832) = *(v0 + 160);
  *(v0 + 848) = v7;
  outlined init with copy of TaskPriority?(v0 + 800, v0 + 912, &_s9MusicCore6ActionVyAA7ActionsO12DeleteFolderO7ContextVytGMd);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 1056);
  if (v10)
  {
    v22 = *(v0 + 1080);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 848));
    v18 = v17;
    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO12DeleteFolderO7ContextVytGMd);
    v19 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO12DeleteFolderO7ContextVytGMd);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

{
  v28 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1056);

  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 640) = *(v0 + 192);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 576) = *(v0 + 128);
  *(v0 + 592) = v6;
  v7 = *(v0 + 176);
  *(v0 + 608) = *(v0 + 160);
  *(v0 + 624) = v7;
  outlined init with copy of TaskPriority?(v0 + 576, v0 + 688, &_s9MusicCore6ActionVyAA7ActionsO12DeleteFolderO7ContextVytGMd);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1136);
    v26 = *(v0 + 1072);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO12DeleteFolderO7ContextVytGMd);
    v17 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v18 = String.init<A>(describing:)();
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1072);
    v22 = *(v0 + 1064);
    v23 = *(v0 + 1056);

    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO12DeleteFolderO7ContextVytGMd);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

{
  v39 = v0;
  if (one-time initialization token for action != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = __swift_project_value_buffer(v3, static Logger.action);
  *(v0 + 1096) = v4;
  v5 = *(v2 + 16);
  *(v0 + 1104) = v5;
  *(v0 + 1112) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 224);
  v7 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v7;
  v8 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v8;
  outlined init with copy of TaskPriority?(v0 + 16, v0 + 240, &_s9MusicCore6ActionVyAA7ActionsO12RenameFolderO7ContextVytGMd);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1064);
  v14 = *(v0 + 1056);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 64));
    v19 = v18;
    outlined destroy of TaskPriority?(v0 + 16, &_s9MusicCore6ActionVyAA7ActionsO12RenameFolderO7ContextVytGMd);
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
  }

  else
  {
    outlined destroy of TaskPriority?(v0 + 16, &_s9MusicCore6ActionVyAA7ActionsO12RenameFolderO7ContextVytGMd);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSTimer);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = static NSTimer.publish(every:tolerance:on:in:options:)();

  outlined destroy of TaskPriority?(v21, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  *(v0 + 1024) = v24;
  type metadata accessor for NSTimer.TimerPublisher();
  lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, &type metadata accessor for NSTimer.TimerPublisher);
  v25 = ConnectablePublisher.autoconnect()();

  *(v0 + 1032) = v25;
  v26 = *(v0 + 224);
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 448) = v26;
  v27 = *(v0 + 192);
  v28 = *(v0 + 144);
  *(v0 + 352) = *(v0 + 128);
  *(v0 + 368) = v28;
  v29 = *(v0 + 160);
  *(v0 + 400) = *(v0 + 176);
  *(v0 + 416) = v27;
  *(v0 + 384) = v29;
  v30 = *(v0 + 448);
  v31 = swift_allocObject();
  v32 = *(v0 + 208);
  v31[5] = *(v0 + 192);
  v31[6] = v32;
  v31[7] = *(v0 + 224);
  v33 = *(v0 + 144);
  v31[1] = *(v0 + 128);
  v31[2] = v33;
  v34 = *(v0 + 176);
  v31[3] = *(v0 + 160);
  v31[4] = v34;
  outlined init with copy of TaskPriority?(v0 + 352, v0 + 464, &_s9MusicCore6ActionVyAA7ActionsO12RenameFolderO7ContextVytGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd);
  *(v0 + 1120) = Publisher<>.sink(receiveValue:)();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = specialized closure #2 in Action.execute(checkSupportedStatus:);

  return v37(v0 + 128);
}

{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = specialized closure #2 in Action.execute(checkSupportedStatus:);
  }

  else
  {
    v2 = specialized closure #2 in Action.execute(checkSupportedStatus:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  AnyCancellable.cancel()();
  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 864) = *(v0 + 192);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 800) = *(v0 + 128);
  *(v0 + 816) = v6;
  v7 = *(v0 + 176);
  *(v0 + 832) = *(v0 + 160);
  *(v0 + 848) = v7;
  outlined init with copy of TaskPriority?(v0 + 800, v0 + 912, &_s9MusicCore6ActionVyAA7ActionsO12RenameFolderO7ContextVytGMd);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 1056);
  if (v10)
  {
    v22 = *(v0 + 1080);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 848));
    v18 = v17;
    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO12RenameFolderO7ContextVytGMd);
    v19 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO12RenameFolderO7ContextVytGMd);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

{
  v28 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1056);

  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 640) = *(v0 + 192);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 576) = *(v0 + 128);
  *(v0 + 592) = v6;
  v7 = *(v0 + 176);
  *(v0 + 608) = *(v0 + 160);
  *(v0 + 624) = v7;
  outlined init with copy of TaskPriority?(v0 + 576, v0 + 688, &_s9MusicCore6ActionVyAA7ActionsO12RenameFolderO7ContextVytGMd);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1136);
    v26 = *(v0 + 1072);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO12RenameFolderO7ContextVytGMd);
    v17 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v18 = String.init<A>(describing:)();
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1072);
    v22 = *(v0 + 1064);
    v23 = *(v0 + 1056);

    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO12RenameFolderO7ContextVytGMd);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

{
  v39 = v0;
  if (one-time initialization token for action != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = __swift_project_value_buffer(v3, static Logger.action);
  *(v0 + 1096) = v4;
  v5 = *(v2 + 16);
  *(v0 + 1104) = v5;
  *(v0 + 1112) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 224);
  v7 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v7;
  v8 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v8;
  outlined init with copy of TaskPriority?(v0 + 16, v0 + 240, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMd);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1064);
  v14 = *(v0 + 1056);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 64));
    v19 = v18;
    outlined destroy of TaskPriority?(v0 + 16, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMd);
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
  }

  else
  {
    outlined destroy of TaskPriority?(v0 + 16, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMd);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSTimer);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = static NSTimer.publish(every:tolerance:on:in:options:)();

  outlined destroy of TaskPriority?(v21, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  *(v0 + 1024) = v24;
  type metadata accessor for NSTimer.TimerPublisher();
  lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, &type metadata accessor for NSTimer.TimerPublisher);
  v25 = ConnectablePublisher.autoconnect()();

  *(v0 + 1032) = v25;
  v26 = *(v0 + 224);
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 448) = v26;
  v27 = *(v0 + 192);
  v28 = *(v0 + 144);
  *(v0 + 352) = *(v0 + 128);
  *(v0 + 368) = v28;
  v29 = *(v0 + 160);
  *(v0 + 400) = *(v0 + 176);
  *(v0 + 416) = v27;
  *(v0 + 384) = v29;
  v30 = *(v0 + 448);
  v31 = swift_allocObject();
  v32 = *(v0 + 208);
  v31[5] = *(v0 + 192);
  v31[6] = v32;
  v31[7] = *(v0 + 224);
  v33 = *(v0 + 144);
  v31[1] = *(v0 + 128);
  v31[2] = v33;
  v34 = *(v0 + 176);
  v31[3] = *(v0 + 160);
  v31[4] = v34;
  outlined init with copy of TaskPriority?(v0 + 352, v0 + 464, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd);
  *(v0 + 1120) = Publisher<>.sink(receiveValue:)();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = specialized closure #2 in Action.execute(checkSupportedStatus:);

  return v37(v0 + 128);
}

{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = specialized closure #2 in Action.execute(checkSupportedStatus:);
  }

  else
  {
    v2 = specialized closure #2 in Action.execute(checkSupportedStatus:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  AnyCancellable.cancel()();
  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 864) = *(v0 + 192);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 800) = *(v0 + 128);
  *(v0 + 816) = v6;
  v7 = *(v0 + 176);
  *(v0 + 832) = *(v0 + 160);
  *(v0 + 848) = v7;
  outlined init with copy of TaskPriority?(v0 + 800, v0 + 912, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMd);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 1056);
  if (v10)
  {
    v22 = *(v0 + 1080);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 848));
    v18 = v17;
    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMd);
    v19 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMd);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

{
  v28 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1056);

  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 640) = *(v0 + 192);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 576) = *(v0 + 128);
  *(v0 + 592) = v6;
  v7 = *(v0 + 176);
  *(v0 + 608) = *(v0 + 160);
  *(v0 + 624) = v7;
  outlined init with copy of TaskPriority?(v0 + 576, v0 + 688, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMd);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1136);
    v26 = *(v0 + 1072);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMd);
    v17 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v18 = String.init<A>(describing:)();
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1072);
    v22 = *(v0 + 1064);
    v23 = *(v0 + 1056);

    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMd);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

{
  v38 = v0;
  if (one-time initialization token for action != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 944);
  v2 = *(v0 + 920);
  v3 = *(v0 + 912);
  v4 = __swift_project_value_buffer(v3, static Logger.action);
  *(v0 + 952) = v4;
  v5 = *(v2 + 16);
  *(v0 + 960) = v5;
  *(v0 + 968) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 160);
  *(v0 + 48) = *(v0 + 144);
  *(v0 + 64) = v6;
  v7 = *(v0 + 192);
  *(v0 + 80) = *(v0 + 176);
  *(v0 + 96) = v7;
  v8 = *(v0 + 128);
  *(v0 + 16) = *(v0 + 112);
  *(v0 + 32) = v8;
  outlined init with copy of TaskPriority?(v0 + 16, v0 + 208, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMd);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 944);
  v13 = *(v0 + 920);
  v14 = *(v0 + 912);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v37 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 48));
    v19 = v18;
    outlined destroy of TaskPriority?(v0 + 16, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMd);
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v17, v19, &v37);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
  }

  else
  {
    outlined destroy of TaskPriority?(v0 + 16, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMd);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 904);
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSTimer);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = static NSTimer.publish(every:tolerance:on:in:options:)();

  outlined destroy of TaskPriority?(v21, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  *(v0 + 880) = v24;
  type metadata accessor for NSTimer.TimerPublisher();
  lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, &type metadata accessor for NSTimer.TimerPublisher);
  v25 = ConnectablePublisher.autoconnect()();

  *(v0 + 888) = v25;
  v26 = *(v0 + 160);
  *(v0 + 336) = *(v0 + 144);
  *(v0 + 352) = v26;
  v27 = *(v0 + 192);
  *(v0 + 368) = *(v0 + 176);
  *(v0 + 384) = v27;
  v28 = *(v0 + 128);
  *(v0 + 304) = *(v0 + 112);
  *(v0 + 320) = v28;
  v29 = *(v0 + 384);
  v30 = swift_allocObject();
  v31 = *(v0 + 160);
  v30[3] = *(v0 + 144);
  v30[4] = v31;
  v32 = *(v0 + 192);
  v30[5] = *(v0 + 176);
  v30[6] = v32;
  v33 = *(v0 + 128);
  v30[1] = *(v0 + 112);
  v30[2] = v33;
  outlined init with copy of TaskPriority?(v0 + 304, v0 + 400, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd);
  *(v0 + 976) = Publisher<>.sink(receiveValue:)();

  v36 = (v29 + *v29);
  v34 = swift_task_alloc();
  *(v0 + 984) = v34;
  *v34 = v0;
  v34[1] = specialized closure #2 in Action.execute(checkSupportedStatus:);

  return v36(v0 + 112);
}

{
  *(*v1 + 992) = v0;

  if (v0)
  {
    v2 = specialized closure #2 in Action.execute(checkSupportedStatus:);
  }

  else
  {
    v2 = specialized closure #2 in Action.execute(checkSupportedStatus:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v24 = v0;
  v1 = *(v0 + 960);
  v2 = *(v0 + 952);
  v3 = *(v0 + 936);
  v4 = *(v0 + 912);
  AnyCancellable.cancel()();
  v1(v3, v2, v4);
  v5 = *(v0 + 160);
  *(v0 + 720) = *(v0 + 144);
  *(v0 + 736) = v5;
  v6 = *(v0 + 192);
  *(v0 + 752) = *(v0 + 176);
  *(v0 + 768) = v6;
  v7 = *(v0 + 128);
  *(v0 + 688) = *(v0 + 112);
  *(v0 + 704) = v7;
  outlined init with copy of TaskPriority?(v0 + 688, v0 + 784, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMd);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 936);
  v12 = *(v0 + 920);
  v13 = *(v0 + 912);
  if (v10)
  {
    v22 = *(v0 + 936);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 720));
    v18 = v17;
    outlined destroy of TaskPriority?(v0 + 688, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMd);
    v19 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    outlined destroy of TaskPriority?(v0 + 688, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMd);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

{
  v28 = v0;
  v1 = *(v0 + 960);
  v2 = *(v0 + 952);
  v3 = *(v0 + 928);
  v4 = *(v0 + 912);

  v1(v3, v2, v4);
  v5 = *(v0 + 160);
  *(v0 + 528) = *(v0 + 144);
  *(v0 + 544) = v5;
  v6 = *(v0 + 192);
  *(v0 + 560) = *(v0 + 176);
  *(v0 + 576) = v6;
  v7 = *(v0 + 128);
  *(v0 + 496) = *(v0 + 112);
  *(v0 + 512) = v7;
  outlined init with copy of TaskPriority?(v0 + 496, v0 + 592, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMd);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 992);
    v26 = *(v0 + 928);
    v11 = *(v0 + 920);
    v12 = *(v0 + 912);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 528));
    v16 = v15;
    outlined destroy of TaskPriority?(v0 + 496, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMd);
    v17 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 896) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v18 = String.init<A>(describing:)();
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 928);
    v22 = *(v0 + 920);
    v23 = *(v0 + 912);

    outlined destroy of TaskPriority?(v0 + 496, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMd);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

{
  v39 = v0;
  if (one-time initialization token for action != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = __swift_project_value_buffer(v3, static Logger.action);
  *(v0 + 1096) = v4;
  v5 = *(v2 + 16);
  *(v0 + 1104) = v5;
  *(v0 + 1112) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 224);
  v7 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v7;
  v8 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v8;
  outlined init with copy of TaskPriority?(v0 + 16, v0 + 240, &_s9MusicCore6ActionVyAA7ActionsO15UndoSuggestLessO7ContextVytGMd);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1064);
  v14 = *(v0 + 1056);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 64));
    v19 = v18;
    outlined destroy of TaskPriority?(v0 + 16, &_s9MusicCore6ActionVyAA7ActionsO15UndoSuggestLessO7ContextVytGMd);
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
  }

  else
  {
    outlined destroy of TaskPriority?(v0 + 16, &_s9MusicCore6ActionVyAA7ActionsO15UndoSuggestLessO7ContextVytGMd);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSTimer);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = static NSTimer.publish(every:tolerance:on:in:options:)();

  outlined destroy of TaskPriority?(v21, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  *(v0 + 1024) = v24;
  type metadata accessor for NSTimer.TimerPublisher();
  lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, &type metadata accessor for NSTimer.TimerPublisher);
  v25 = ConnectablePublisher.autoconnect()();

  *(v0 + 1032) = v25;
  v26 = *(v0 + 224);
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 448) = v26;
  v27 = *(v0 + 192);
  v28 = *(v0 + 144);
  *(v0 + 352) = *(v0 + 128);
  *(v0 + 368) = v28;
  v29 = *(v0 + 160);
  *(v0 + 400) = *(v0 + 176);
  *(v0 + 416) = v27;
  *(v0 + 384) = v29;
  v30 = *(v0 + 448);
  v31 = swift_allocObject();
  v32 = *(v0 + 208);
  v31[5] = *(v0 + 192);
  v31[6] = v32;
  v31[7] = *(v0 + 224);
  v33 = *(v0 + 144);
  v31[1] = *(v0 + 128);
  v31[2] = v33;
  v34 = *(v0 + 176);
  v31[3] = *(v0 + 160);
  v31[4] = v34;
  outlined init with copy of TaskPriority?(v0 + 352, v0 + 464, &_s9MusicCore6ActionVyAA7ActionsO15UndoSuggestLessO7ContextVytGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd);
  *(v0 + 1120) = Publisher<>.sink(receiveValue:)();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = specialized closure #2 in Action.execute(checkSupportedStatus:);

  return v37(v0 + 128);
}

{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = specialized closure #2 in Action.execute(checkSupportedStatus:);
  }

  else
  {
    v2 = specialized closure #2 in Action.execute(checkSupportedStatus:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  AnyCancellable.cancel()();
  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 864) = *(v0 + 192);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 800) = *(v0 + 128);
  *(v0 + 816) = v6;
  v7 = *(v0 + 176);
  *(v0 + 832) = *(v0 + 160);
  *(v0 + 848) = v7;
  outlined init with copy of TaskPriority?(v0 + 800, v0 + 912, &_s9MusicCore6ActionVyAA7ActionsO15UndoSuggestLessO7ContextVytGMd);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 1056);
  if (v10)
  {
    v22 = *(v0 + 1080);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 848));
    v18 = v17;
    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO15UndoSuggestLessO7ContextVytGMd);
    v19 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO15UndoSuggestLessO7ContextVytGMd);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

{
  v28 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1056);

  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 640) = *(v0 + 192);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 576) = *(v0 + 128);
  *(v0 + 592) = v6;
  v7 = *(v0 + 176);
  *(v0 + 608) = *(v0 + 160);
  *(v0 + 624) = v7;
  outlined init with copy of TaskPriority?(v0 + 576, v0 + 688, &_s9MusicCore6ActionVyAA7ActionsO15UndoSuggestLessO7ContextVytGMd);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1136);
    v26 = *(v0 + 1072);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO15UndoSuggestLessO7ContextVytGMd);
    v17 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v18 = String.init<A>(describing:)();
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1072);
    v22 = *(v0 + 1064);
    v23 = *(v0 + 1056);

    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO15UndoSuggestLessO7ContextVytGMd);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

{
  v39 = v0;
  if (one-time initialization token for action != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = __swift_project_value_buffer(v3, static Logger.action);
  *(v0 + 1096) = v4;
  v5 = *(v2 + 16);
  *(v0 + 1104) = v5;
  *(v0 + 1112) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 224);
  v7 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v7;
  v8 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v8;
  outlined init with copy of TaskPriority?(v0 + 16, v0 + 240, &_s9MusicCore6ActionVyAA7ActionsO11SuggestLessO7ContextVytGMd);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1064);
  v14 = *(v0 + 1056);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 64));
    v19 = v18;
    outlined destroy of TaskPriority?(v0 + 16, &_s9MusicCore6ActionVyAA7ActionsO11SuggestLessO7ContextVytGMd);
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
  }

  else
  {
    outlined destroy of TaskPriority?(v0 + 16, &_s9MusicCore6ActionVyAA7ActionsO11SuggestLessO7ContextVytGMd);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSTimer);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = static NSTimer.publish(every:tolerance:on:in:options:)();

  outlined destroy of TaskPriority?(v21, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  *(v0 + 1024) = v24;
  type metadata accessor for NSTimer.TimerPublisher();
  lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, &type metadata accessor for NSTimer.TimerPublisher);
  v25 = ConnectablePublisher.autoconnect()();

  *(v0 + 1032) = v25;
  v26 = *(v0 + 224);
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 448) = v26;
  v27 = *(v0 + 192);
  v28 = *(v0 + 144);
  *(v0 + 352) = *(v0 + 128);
  *(v0 + 368) = v28;
  v29 = *(v0 + 160);
  *(v0 + 400) = *(v0 + 176);
  *(v0 + 416) = v27;
  *(v0 + 384) = v29;
  v30 = *(v0 + 448);
  v31 = swift_allocObject();
  v32 = *(v0 + 208);
  v31[5] = *(v0 + 192);
  v31[6] = v32;
  v31[7] = *(v0 + 224);
  v33 = *(v0 + 144);
  v31[1] = *(v0 + 128);
  v31[2] = v33;
  v34 = *(v0 + 176);
  v31[3] = *(v0 + 160);
  v31[4] = v34;
  outlined init with copy of TaskPriority?(v0 + 352, v0 + 464, &_s9MusicCore6ActionVyAA7ActionsO11SuggestLessO7ContextVytGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd);
  *(v0 + 1120) = Publisher<>.sink(receiveValue:)();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = specialized closure #2 in Action.execute(checkSupportedStatus:);

  return v37(v0 + 128);
}

{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = specialized closure #2 in Action.execute(checkSupportedStatus:);
  }

  else
  {
    v2 = specialized closure #2 in Action.execute(checkSupportedStatus:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  AnyCancellable.cancel()();
  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 864) = *(v0 + 192);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 800) = *(v0 + 128);
  *(v0 + 816) = v6;
  v7 = *(v0 + 176);
  *(v0 + 832) = *(v0 + 160);
  *(v0 + 848) = v7;
  outlined init with copy of TaskPriority?(v0 + 800, v0 + 912, &_s9MusicCore6ActionVyAA7ActionsO11SuggestLessO7ContextVytGMd);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 1056);
  if (v10)
  {
    v22 = *(v0 + 1080);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 848));
    v18 = v17;
    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO11SuggestLessO7ContextVytGMd);
    v19 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO11SuggestLessO7ContextVytGMd);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

{
  v28 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1056);

  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 640) = *(v0 + 192);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 576) = *(v0 + 128);
  *(v0 + 592) = v6;
  v7 = *(v0 + 176);
  *(v0 + 608) = *(v0 + 160);
  *(v0 + 624) = v7;
  outlined init with copy of TaskPriority?(v0 + 576, v0 + 688, &_s9MusicCore6ActionVyAA7ActionsO11SuggestLessO7ContextVytGMd);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1136);
    v26 = *(v0 + 1072);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO11SuggestLessO7ContextVytGMd);
    v17 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v18 = String.init<A>(describing:)();
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1072);
    v22 = *(v0 + 1064);
    v23 = *(v0 + 1056);

    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO11SuggestLessO7ContextVytGMd);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

{
  v39 = v0;
  if (one-time initialization token for action != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = __swift_project_value_buffer(v3, static Logger.action);
  *(v0 + 1096) = v4;
  v5 = *(v2 + 16);
  *(v0 + 1104) = v5;
  *(v0 + 1112) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 224);
  v7 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v7;
  v8 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v8;
  outlined init with copy of TaskPriority?(v0 + 16, v0 + 240, &_s9MusicCore6ActionVyAA7ActionsO12UndoFavoriteO7ContextVytGMd);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1064);
  v14 = *(v0 + 1056);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 64));
    v19 = v18;
    outlined destroy of TaskPriority?(v0 + 16, &_s9MusicCore6ActionVyAA7ActionsO12UndoFavoriteO7ContextVytGMd);
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
  }

  else
  {
    outlined destroy of TaskPriority?(v0 + 16, &_s9MusicCore6ActionVyAA7ActionsO12UndoFavoriteO7ContextVytGMd);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSTimer);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = static NSTimer.publish(every:tolerance:on:in:options:)();

  outlined destroy of TaskPriority?(v21, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  *(v0 + 1024) = v24;
  type metadata accessor for NSTimer.TimerPublisher();
  lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, &type metadata accessor for NSTimer.TimerPublisher);
  v25 = ConnectablePublisher.autoconnect()();

  *(v0 + 1032) = v25;
  v26 = *(v0 + 224);
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 448) = v26;
  v27 = *(v0 + 192);
  v28 = *(v0 + 144);
  *(v0 + 352) = *(v0 + 128);
  *(v0 + 368) = v28;
  v29 = *(v0 + 160);
  *(v0 + 400) = *(v0 + 176);
  *(v0 + 416) = v27;
  *(v0 + 384) = v29;
  v30 = *(v0 + 448);
  v31 = swift_allocObject();
  v32 = *(v0 + 208);
  v31[5] = *(v0 + 192);
  v31[6] = v32;
  v31[7] = *(v0 + 224);
  v33 = *(v0 + 144);
  v31[1] = *(v0 + 128);
  v31[2] = v33;
  v34 = *(v0 + 176);
  v31[3] = *(v0 + 160);
  v31[4] = v34;
  outlined init with copy of TaskPriority?(v0 + 352, v0 + 464, &_s9MusicCore6ActionVyAA7ActionsO12UndoFavoriteO7ContextVytGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd);
  *(v0 + 1120) = Publisher<>.sink(receiveValue:)();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = specialized closure #2 in Action.execute(checkSupportedStatus:);

  return v37(v0 + 128);
}

{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = specialized closure #2 in Action.execute(checkSupportedStatus:);
  }

  else
  {
    v2 = specialized closure #2 in Action.execute(checkSupportedStatus:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  AnyCancellable.cancel()();
  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 864) = *(v0 + 192);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 800) = *(v0 + 128);
  *(v0 + 816) = v6;
  v7 = *(v0 + 176);
  *(v0 + 832) = *(v0 + 160);
  *(v0 + 848) = v7;
  outlined init with copy of TaskPriority?(v0 + 800, v0 + 912, &_s9MusicCore6ActionVyAA7ActionsO12UndoFavoriteO7ContextVytGMd);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 1056);
  if (v10)
  {
    v22 = *(v0 + 1080);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 848));
    v18 = v17;
    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO12UndoFavoriteO7ContextVytGMd);
    v19 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO12UndoFavoriteO7ContextVytGMd);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

{
  v28 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1056);

  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 640) = *(v0 + 192);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 576) = *(v0 + 128);
  *(v0 + 592) = v6;
  v7 = *(v0 + 176);
  *(v0 + 608) = *(v0 + 160);
  *(v0 + 624) = v7;
  outlined init with copy of TaskPriority?(v0 + 576, v0 + 688, &_s9MusicCore6ActionVyAA7ActionsO12UndoFavoriteO7ContextVytGMd);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1136);
    v26 = *(v0 + 1072);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO12UndoFavoriteO7ContextVytGMd);
    v17 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v18 = String.init<A>(describing:)();
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1072);
    v22 = *(v0 + 1064);
    v23 = *(v0 + 1056);

    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO12UndoFavoriteO7ContextVytGMd);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

{
  v39 = v0;
  if (one-time initialization token for action != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = __swift_project_value_buffer(v3, static Logger.action);
  *(v0 + 1096) = v4;
  v5 = *(v2 + 16);
  *(v0 + 1104) = v5;
  *(v0 + 1112) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 224);
  v7 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v7;
  v8 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v8;
  outlined init with copy of TaskPriority?(v0 + 16, v0 + 240, &_s9MusicCore6ActionVyAA7ActionsO8FavoriteO7ContextVytGMd);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1064);
  v14 = *(v0 + 1056);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 64));
    v19 = v18;
    outlined destroy of TaskPriority?(v0 + 16, &_s9MusicCore6ActionVyAA7ActionsO8FavoriteO7ContextVytGMd);
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
  }

  else
  {
    outlined destroy of TaskPriority?(v0 + 16, &_s9MusicCore6ActionVyAA7ActionsO8FavoriteO7ContextVytGMd);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSTimer);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = static NSTimer.publish(every:tolerance:on:in:options:)();

  outlined destroy of TaskPriority?(v21, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  *(v0 + 1024) = v24;
  type metadata accessor for NSTimer.TimerPublisher();
  lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, &type metadata accessor for NSTimer.TimerPublisher);
  v25 = ConnectablePublisher.autoconnect()();

  *(v0 + 1032) = v25;
  v26 = *(v0 + 224);
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 448) = v26;
  v27 = *(v0 + 192);
  v28 = *(v0 + 144);
  *(v0 + 352) = *(v0 + 128);
  *(v0 + 368) = v28;
  v29 = *(v0 + 160);
  *(v0 + 400) = *(v0 + 176);
  *(v0 + 416) = v27;
  *(v0 + 384) = v29;
  v30 = *(v0 + 448);
  v31 = swift_allocObject();
  v32 = *(v0 + 208);
  v31[5] = *(v0 + 192);
  v31[6] = v32;
  v31[7] = *(v0 + 224);
  v33 = *(v0 + 144);
  v31[1] = *(v0 + 128);
  v31[2] = v33;
  v34 = *(v0 + 176);
  v31[3] = *(v0 + 160);
  v31[4] = v34;
  outlined init with copy of TaskPriority?(v0 + 352, v0 + 464, &_s9MusicCore6ActionVyAA7ActionsO8FavoriteO7ContextVytGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd);
  *(v0 + 1120) = Publisher<>.sink(receiveValue:)();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = specialized closure #2 in Action.execute(checkSupportedStatus:);

  return v37(v0 + 128);
}

{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = specialized closure #2 in Action.execute(checkSupportedStatus:);
  }

  else
  {
    v2 = specialized closure #2 in Action.execute(checkSupportedStatus:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  AnyCancellable.cancel()();
  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 864) = *(v0 + 192);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 800) = *(v0 + 128);
  *(v0 + 816) = v6;
  v7 = *(v0 + 176);
  *(v0 + 832) = *(v0 + 160);
  *(v0 + 848) = v7;
  outlined init with copy of TaskPriority?(v0 + 800, v0 + 912, &_s9MusicCore6ActionVyAA7ActionsO8FavoriteO7ContextVytGMd);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 1056);
  if (v10)
  {
    v22 = *(v0 + 1080);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 848));
    v18 = v17;
    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO8FavoriteO7ContextVytGMd);
    v19 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO8FavoriteO7ContextVytGMd);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

{
  v28 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1056);

  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 640) = *(v0 + 192);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 576) = *(v0 + 128);
  *(v0 + 592) = v6;
  v7 = *(v0 + 176);
  *(v0 + 608) = *(v0 + 160);
  *(v0 + 624) = v7;
  outlined init with copy of TaskPriority?(v0 + 576, v0 + 688, &_s9MusicCore6ActionVyAA7ActionsO8FavoriteO7ContextVytGMd);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1136);
    v26 = *(v0 + 1072);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO8FavoriteO7ContextVytGMd);
    v17 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v18 = String.init<A>(describing:)();
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1072);
    v22 = *(v0 + 1064);
    v23 = *(v0 + 1056);

    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO8FavoriteO7ContextVytGMd);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

{
  v32 = v0;
  if (one-time initialization token for action != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1112);
  v2 = *(v0 + 1088);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1064);
  v5 = __swift_project_value_buffer(v3, static Logger.action);
  *(v0 + 1120) = v5;
  v6 = *(v2 + 16);
  *(v0 + 1128) = v6;
  *(v0 + 1136) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v3);
  outlined init with copy of TaskPriority?(v4, v0 + 16, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMd);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 1112);
  v11 = *(v0 + 1088);
  v12 = *(v0 + 1080);
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136446210;
    v15 = *(v0 + 208);
    outlined destroy of TaskPriority?(v0 + 16, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMd);
    v16 = ActionType.rawValue.getter(v15);
    v18 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v16, v17, &v31);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: finishing…", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
  }

  else
  {
    outlined destroy of TaskPriority?(v0 + 16, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMd);
  }

  v19 = *(v11 + 8);
  v19(v10, v12);
  *(v0 + 1144) = v19;
  v20 = *(v0 + 1072);
  v21 = *(v0 + 1064);
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSTimer);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v23 - 8) + 56))(v20, 1, 1, v23);
  v24 = static NSTimer.publish(every:tolerance:on:in:options:)();

  outlined destroy of TaskPriority?(v20, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  *(v0 + 1040) = v24;
  type metadata accessor for NSTimer.TimerPublisher();
  lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, &type metadata accessor for NSTimer.TimerPublisher);
  v25 = ConnectablePublisher.autoconnect()();

  *(v0 + 1048) = v25;
  outlined init with copy of TaskPriority?(v21, v0 + 272, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMd);
  v26 = swift_allocObject();
  outlined init with take of URL?(v0 + 272, v26 + 16, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd);
  *(v0 + 1152) = Publisher<>.sink(receiveValue:)();

  v30 = (*(v21 + 240) + **(v21 + 240));
  v27 = swift_task_alloc();
  *(v0 + 1160) = v27;
  *v27 = v0;
  v27[1] = specialized closure #2 in Action.execute(checkSupportedStatus:);
  v28 = *(v0 + 1064);

  return v30(v28, v0 + 1176);
}

{
  *(*v1 + 1168) = v0;

  if (v0)
  {
    v2 = specialized closure #2 in Action.execute(checkSupportedStatus:);
  }

  else
  {
    v2 = specialized closure #2 in Action.execute(checkSupportedStatus:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v23 = v0;
  v1 = *(v0 + 1128);
  v2 = *(v0 + 1120);
  v3 = *(v0 + 1104);
  v4 = *(v0 + 1080);
  v5 = *(v0 + 1064);
  AnyCancellable.cancel()();
  v1(v3, v2, v4);
  outlined init with copy of TaskPriority?(v5, v0 + 784, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMd);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 1144);
  v10 = *(v0 + 1104);
  v11 = *(v0 + 1080);
  if (v8)
  {
    v21 = *(v0 + 1144);
    v12 = swift_slowAlloc();
    v20 = v10;
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136446210;
    v14 = *(v0 + 976);
    outlined destroy of TaskPriority?(v0 + 784, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMd);
    v15 = ActionType.rawValue.getter(v14);
    v17 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v15, v16, &v22);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s: finish success", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);

    v21(v20, v11);
  }

  else
  {
    outlined destroy of TaskPriority?(v0 + 784, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMd);

    v9(v10, v11);
  }

  v18 = *(v0 + 8);

  return v18();
}

{
  v26 = v0;
  v1 = *(v0 + 1128);
  v2 = *(v0 + 1120);
  v3 = *(v0 + 1096);
  v4 = *(v0 + 1080);
  v5 = *(v0 + 1064);

  v1(v3, v2, v4);
  outlined init with copy of TaskPriority?(v5, v0 + 528, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMd);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 1168);
    v23 = *(v0 + 1096);
    v24 = *(v0 + 1144);
    v9 = *(v0 + 1080);
    v10 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v10 = 136446466;
    v11 = *(v0 + 720);
    outlined destroy of TaskPriority?(v0 + 528, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMd);
    v12 = ActionType.rawValue.getter(v11);
    v14 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v12, v13, &v25);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    *(v0 + 1056) = v8;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v15 = String.init<A>(describing:)();
    v17 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v15, v16, &v25);

    *(v10 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s: finish failed: %{public}s", v10, 0x16u);
    swift_arrayDestroy();

    v24(v23, v9);
  }

  else
  {
    v18 = *(v0 + 1144);
    v19 = *(v0 + 1096);
    v20 = *(v0 + 1080);
    outlined destroy of TaskPriority?(v0 + 528, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMd);

    v18(v19, v20);
  }

  v21 = *(v0 + 8);

  return v21();
}

{
  v37 = v0;
  if (one-time initialization token for action != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[13];
  v5 = v0[5];
  v6 = __swift_project_value_buffer(v2, static Logger.action);
  v0[19] = v6;
  v7 = *(v3 + 16);
  v0[20] = v7;
  v0[21] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v6, v2);
  outlined init with copy of TaskPriority?(v5, v4, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMd);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[18];
  v12 = v0[14];
  v13 = v0[15];
  v14 = v0[13];
  if (v10)
  {
    v15 = v0[7];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v36 = v17;
    *v16 = 136446210;
    LOBYTE(v15) = *(v14 + *(v15 + 36));
    outlined destroy of TaskPriority?(v14, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMd);
    v18 = ActionType.rawValue.getter(v15);
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v18, v19, &v36);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finishing…", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
  }

  else
  {
    outlined destroy of TaskPriority?(v0[13], &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMd);
  }

  (*(v13 + 8))(v11, v12);
  v21 = v0[12];
  v22 = v0[8];
  v23 = v0[6];
  v24 = v0[7];
  v25 = v0[5];
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSTimer);
  v26 = [objc_opt_self() mainRunLoop];
  v27 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v27 - 8) + 56))(v23, 1, 1, v27);
  v28 = static NSTimer.publish(every:tolerance:on:in:options:)();

  outlined destroy of TaskPriority?(v23, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  v0[2] = v28;
  type metadata accessor for NSTimer.TimerPublisher();
  lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, &type metadata accessor for NSTimer.TimerPublisher);
  v29 = ConnectablePublisher.autoconnect()();

  v0[3] = v29;
  outlined init with copy of TaskPriority?(v25, v21, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMd);
  v30 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v31 = swift_allocObject();
  outlined init with take of URL?(v21, v31 + v30, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd);
  v0[22] = Publisher<>.sink(receiveValue:)();

  v35 = (*(v25 + *(v24 + 52)) + **(v25 + *(v24 + 52)));
  v32 = swift_task_alloc();
  v0[23] = v32;
  *v32 = v0;
  v32[1] = specialized closure #2 in Action.execute(checkSupportedStatus:);
  v33 = v0[5];

  return v35(v33);
}

{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = specialized closure #2 in Action.execute(checkSupportedStatus:);
  }

  else
  {
    v2 = specialized closure #2 in Action.execute(checkSupportedStatus:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v24 = v0;
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[14];
  v5 = v0[11];
  v6 = v0[5];
  AnyCancellable.cancel()();
  v2(v3, v1, v4);
  outlined init with copy of TaskPriority?(v6, v5, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMd);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[17];
  v12 = v0[14];
  v11 = v0[15];
  v13 = v0[11];
  if (v9)
  {
    v14 = v0[7];
    v22 = v0[17];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v23 = v16;
    *v15 = 136446210;
    LOBYTE(v14) = *(v13 + *(v14 + 36));
    outlined destroy of TaskPriority?(v13, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMd);
    v17 = ActionType.rawValue.getter(v14);
    v19 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v17, v18, &v23);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: finish success", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);

    (*(v11 + 8))(v22, v12);
  }

  else
  {
    outlined destroy of TaskPriority?(v0[11], &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMd);

    (*(v11 + 8))(v10, v12);
  }

  v20 = v0[1];

  return v20();
}

{
  v28 = v0;
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[16];
  v4 = v0[14];
  v5 = v0[10];
  v6 = v0[5];

  v2(v3, v1, v4);
  outlined init with copy of TaskPriority?(v6, v5, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMd);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[24];
    v10 = v0[15];
    v26 = v0[16];
    v11 = v0[14];
    v12 = v0[10];
    v13 = v0[7];
    v14 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v14 = 136446466;
    LOBYTE(v13) = *(v12 + *(v13 + 36));
    outlined destroy of TaskPriority?(v12, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMd);
    v15 = ActionType.rawValue.getter(v13);
    v17 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v15, v16, &v27);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2082;
    v0[4] = v9;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v18 = String.init<A>(describing:)();
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v18, v19, &v27);

    *(v14 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: finish failed: %{public}s", v14, 0x16u);
    swift_arrayDestroy();

    (*(v10 + 8))(v26, v11);
  }

  else
  {
    v22 = v0[15];
    v21 = v0[16];
    v23 = v0[14];
    outlined destroy of TaskPriority?(v0[10], &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMd);

    (*(v22 + 8))(v21, v23);
  }

  v24 = v0[1];

  return v24();
}

uint64_t specialized closure #2 in Action.execute(checkSupportedStatus:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  v4[6] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMd);
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v4[9] = *(v6 + 64);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return _swift_task_switch(specialized closure #2 in Action.execute(checkSupportedStatus:), 0, 0);
}

{
  v4[5] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  v4[6] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMd);
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v4[9] = *(v6 + 64);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return _swift_task_switch(specialized closure #2 in Action.execute(checkSupportedStatus:), 0, 0);
}

{
  v4[5] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  v4[6] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMd);
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v4[9] = *(v6 + 64);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return _swift_task_switch(specialized closure #2 in Action.execute(checkSupportedStatus:), 0, 0);
}

{
  v8 = *(a4 + 112);
  *(v4 + 112) = *(a4 + 96);
  *(v4 + 128) = v8;
  *(v4 + 144) = *(a4 + 128);
  v9 = *(a4 + 48);
  *(v4 + 48) = *(a4 + 32);
  *(v4 + 64) = v9;
  v10 = *(a4 + 80);
  *(v4 + 80) = *(a4 + 64);
  *(v4 + 96) = v10;
  v11 = *(a4 + 16);
  *(v4 + 16) = *a4;
  *(v4 + 32) = v11;
  v12 = swift_task_alloc();
  *(v4 + 152) = v12;
  *v12 = v4;
  v12[1] = specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:);

  return specialized closure #2 in Action.execute(checkSupportedStatus:)(a1, a2, a3, (v4 + 16));
}

{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #2 in Action.execute(checkSupportedStatus:)(a1, a2, a3, a4);
}

{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #2 in Action.execute(checkSupportedStatus:)(a1, a2, a3, a4);
}

{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return specialized closure #2 in Action.execute(checkSupportedStatus:)(a1, a2, a3, a4);
}

uint64_t specialized closure #2 in Action.execute(checkSupportedStatus:)(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  *(v4 + 1048) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  *(v4 + 1056) = v6;
  *(v4 + 1064) = *(v6 - 8);
  *(v4 + 1072) = swift_task_alloc();
  *(v4 + 1080) = swift_task_alloc();
  *(v4 + 1088) = swift_task_alloc();
  v7 = a4[5];
  *(v4 + 192) = a4[4];
  *(v4 + 208) = v7;
  *(v4 + 224) = a4[6];
  v8 = a4[1];
  *(v4 + 128) = *a4;
  *(v4 + 144) = v8;
  v9 = a4[3];
  *(v4 + 160) = a4[2];
  *(v4 + 176) = v9;

  return _swift_task_switch(specialized closure #2 in Action.execute(checkSupportedStatus:), 0, 0);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  *(v4 + 1048) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  *(v4 + 1056) = v6;
  *(v4 + 1064) = *(v6 - 8);
  *(v4 + 1072) = swift_task_alloc();
  *(v4 + 1080) = swift_task_alloc();
  *(v4 + 1088) = swift_task_alloc();
  v7 = a4[5];
  *(v4 + 192) = a4[4];
  *(v4 + 208) = v7;
  *(v4 + 224) = a4[6];
  v8 = a4[1];
  *(v4 + 128) = *a4;
  *(v4 + 144) = v8;
  v9 = a4[3];
  *(v4 + 160) = a4[2];
  *(v4 + 176) = v9;

  return _swift_task_switch(specialized closure #2 in Action.execute(checkSupportedStatus:), 0, 0);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  *(v4 + 1048) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  *(v4 + 1056) = v6;
  *(v4 + 1064) = *(v6 - 8);
  *(v4 + 1072) = swift_task_alloc();
  *(v4 + 1080) = swift_task_alloc();
  *(v4 + 1088) = swift_task_alloc();
  v7 = a4[5];
  *(v4 + 192) = a4[4];
  *(v4 + 208) = v7;
  *(v4 + 224) = a4[6];
  v8 = a4[1];
  *(v4 + 128) = *a4;
  *(v4 + 144) = v8;
  v9 = a4[3];
  *(v4 + 160) = a4[2];
  *(v4 + 176) = v9;

  return _swift_task_switch(specialized closure #2 in Action.execute(checkSupportedStatus:), 0, 0);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  *(v4 + 1048) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  *(v4 + 1056) = v6;
  *(v4 + 1064) = *(v6 - 8);
  *(v4 + 1072) = swift_task_alloc();
  *(v4 + 1080) = swift_task_alloc();
  *(v4 + 1088) = swift_task_alloc();
  v7 = a4[5];
  *(v4 + 192) = a4[4];
  *(v4 + 208) = v7;
  *(v4 + 224) = a4[6];
  v8 = a4[1];
  *(v4 + 128) = *a4;
  *(v4 + 144) = v8;
  v9 = a4[3];
  *(v4 + 160) = a4[2];
  *(v4 + 176) = v9;

  return _swift_task_switch(specialized closure #2 in Action.execute(checkSupportedStatus:), 0, 0);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  *(v4 + 1048) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  *(v4 + 1056) = v6;
  *(v4 + 1064) = *(v6 - 8);
  *(v4 + 1072) = swift_task_alloc();
  *(v4 + 1080) = swift_task_alloc();
  *(v4 + 1088) = swift_task_alloc();
  v7 = a4[5];
  *(v4 + 192) = a4[4];
  *(v4 + 208) = v7;
  *(v4 + 224) = a4[6];
  v8 = a4[1];
  *(v4 + 128) = *a4;
  *(v4 + 144) = v8;
  v9 = a4[3];
  *(v4 + 160) = a4[2];
  *(v4 + 176) = v9;

  return _swift_task_switch(specialized closure #2 in Action.execute(checkSupportedStatus:), 0, 0);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  *(v4 + 1048) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  *(v4 + 1056) = v6;
  *(v4 + 1064) = *(v6 - 8);
  *(v4 + 1072) = swift_task_alloc();
  *(v4 + 1080) = swift_task_alloc();
  *(v4 + 1088) = swift_task_alloc();
  v7 = a4[5];
  *(v4 + 192) = a4[4];
  *(v4 + 208) = v7;
  *(v4 + 224) = a4[6];
  v8 = a4[1];
  *(v4 + 128) = *a4;
  *(v4 + 144) = v8;
  v9 = a4[3];
  *(v4 + 160) = a4[2];
  *(v4 + 176) = v9;

  return _swift_task_switch(specialized closure #2 in Action.execute(checkSupportedStatus:), 0, 0);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  *(v4 + 1048) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  *(v4 + 1056) = v6;
  *(v4 + 1064) = *(v6 - 8);
  *(v4 + 1072) = swift_task_alloc();
  *(v4 + 1080) = swift_task_alloc();
  *(v4 + 1088) = swift_task_alloc();
  v7 = a4[5];
  *(v4 + 192) = a4[4];
  *(v4 + 208) = v7;
  *(v4 + 224) = a4[6];
  v8 = a4[1];
  *(v4 + 128) = *a4;
  *(v4 + 144) = v8;
  v9 = a4[3];
  *(v4 + 160) = a4[2];
  *(v4 + 176) = v9;

  return _swift_task_switch(specialized closure #2 in Action.execute(checkSupportedStatus:), 0, 0);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  *(v4 + 1048) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  *(v4 + 1056) = v6;
  *(v4 + 1064) = *(v6 - 8);
  *(v4 + 1072) = swift_task_alloc();
  *(v4 + 1080) = swift_task_alloc();
  *(v4 + 1088) = swift_task_alloc();
  v7 = a4[5];
  *(v4 + 192) = a4[4];
  *(v4 + 208) = v7;
  *(v4 + 224) = a4[6];
  v8 = a4[1];
  *(v4 + 128) = *a4;
  *(v4 + 144) = v8;
  v9 = a4[3];
  *(v4 + 160) = a4[2];
  *(v4 + 176) = v9;

  return _swift_task_switch(specialized closure #2 in Action.execute(checkSupportedStatus:), 0, 0);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  *(v4 + 1048) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  *(v4 + 1056) = v6;
  *(v4 + 1064) = *(v6 - 8);
  *(v4 + 1072) = swift_task_alloc();
  *(v4 + 1080) = swift_task_alloc();
  *(v4 + 1088) = swift_task_alloc();
  v7 = a4[5];
  *(v4 + 192) = a4[4];
  *(v4 + 208) = v7;
  *(v4 + 224) = a4[6];
  v8 = a4[1];
  *(v4 + 128) = *a4;
  *(v4 + 144) = v8;
  v9 = a4[3];
  *(v4 + 160) = a4[2];
  *(v4 + 176) = v9;

  return _swift_task_switch(specialized closure #2 in Action.execute(checkSupportedStatus:), 0, 0);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  *(v4 + 904) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  *(v4 + 912) = v6;
  *(v4 + 920) = *(v6 - 8);
  *(v4 + 928) = swift_task_alloc();
  *(v4 + 936) = swift_task_alloc();
  *(v4 + 944) = swift_task_alloc();
  v7 = a4[3];
  *(v4 + 144) = a4[2];
  *(v4 + 160) = v7;
  v8 = a4[5];
  *(v4 + 176) = a4[4];
  *(v4 + 192) = v8;
  v9 = a4[1];
  *(v4 + 112) = *a4;
  *(v4 + 128) = v9;

  return _swift_task_switch(specialized closure #2 in Action.execute(checkSupportedStatus:), 0, 0);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  *(v4 + 1048) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  *(v4 + 1056) = v6;
  *(v4 + 1064) = *(v6 - 8);
  *(v4 + 1072) = swift_task_alloc();
  *(v4 + 1080) = swift_task_alloc();
  *(v4 + 1088) = swift_task_alloc();
  v7 = a4[5];
  *(v4 + 192) = a4[4];
  *(v4 + 208) = v7;
  *(v4 + 224) = a4[6];
  v8 = a4[1];
  *(v4 + 128) = *a4;
  *(v4 + 144) = v8;
  v9 = a4[3];
  *(v4 + 160) = a4[2];
  *(v4 + 176) = v9;

  return _swift_task_switch(specialized closure #2 in Action.execute(checkSupportedStatus:), 0, 0);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  *(v4 + 1048) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  *(v4 + 1056) = v6;
  *(v4 + 1064) = *(v6 - 8);
  *(v4 + 1072) = swift_task_alloc();
  *(v4 + 1080) = swift_task_alloc();
  *(v4 + 1088) = swift_task_alloc();
  v7 = a4[5];
  *(v4 + 192) = a4[4];
  *(v4 + 208) = v7;
  *(v4 + 224) = a4[6];
  v8 = a4[1];
  *(v4 + 128) = *a4;
  *(v4 + 144) = v8;
  v9 = a4[3];
  *(v4 + 160) = a4[2];
  *(v4 + 176) = v9;

  return _swift_task_switch(specialized closure #2 in Action.execute(checkSupportedStatus:), 0, 0);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  *(v4 + 1048) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  *(v4 + 1056) = v6;
  *(v4 + 1064) = *(v6 - 8);
  *(v4 + 1072) = swift_task_alloc();
  *(v4 + 1080) = swift_task_alloc();
  *(v4 + 1088) = swift_task_alloc();
  v7 = a4[5];
  *(v4 + 192) = a4[4];
  *(v4 + 208) = v7;
  *(v4 + 224) = a4[6];
  v8 = a4[1];
  *(v4 + 128) = *a4;
  *(v4 + 144) = v8;
  v9 = a4[3];
  *(v4 + 160) = a4[2];
  *(v4 + 176) = v9;

  return _swift_task_switch(specialized closure #2 in Action.execute(checkSupportedStatus:), 0, 0);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  *(v4 + 1048) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  *(v4 + 1056) = v6;
  *(v4 + 1064) = *(v6 - 8);
  *(v4 + 1072) = swift_task_alloc();
  *(v4 + 1080) = swift_task_alloc();
  *(v4 + 1088) = swift_task_alloc();
  v7 = a4[5];
  *(v4 + 192) = a4[4];
  *(v4 + 208) = v7;
  *(v4 + 224) = a4[6];
  v8 = a4[1];
  *(v4 + 128) = *a4;
  *(v4 + 144) = v8;
  v9 = a4[3];
  *(v4 + 160) = a4[2];
  *(v4 + 176) = v9;

  return _swift_task_switch(specialized closure #2 in Action.execute(checkSupportedStatus:), 0, 0);
}

{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:);

  return specialized closure #2 in Action.execute(checkSupportedStatus:)(a1, a2, a3, (v4 + 16));
}

{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:);

  return specialized closure #2 in Action.execute(checkSupportedStatus:)(a1, a2, a3, (v4 + 16));
}

{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:);

  return specialized closure #2 in Action.execute(checkSupportedStatus:)(a1, a2, a3, (v4 + 16));
}

{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:);

  return specialized closure #2 in Action.execute(checkSupportedStatus:)(a1, a2, a3, (v4 + 16));
}

{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:);

  return specialized closure #2 in Action.execute(checkSupportedStatus:)(a1, a2, a3, (v4 + 16));
}

{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:);

  return specialized closure #2 in Action.execute(checkSupportedStatus:)(a1, a2, a3, (v4 + 16));
}

{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:);

  return specialized closure #2 in Action.execute(checkSupportedStatus:)(a1, a2, a3, (v4 + 16));
}

{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:);

  return specialized closure #2 in Action.execute(checkSupportedStatus:)(a1, a2, a3, (v4 + 16));
}

{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:);

  return specialized closure #2 in Action.execute(checkSupportedStatus:)(a1, a2, a3, (v4 + 16));
}

{
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v9;
  v10 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v10;
  v11 = swift_task_alloc();
  *(v4 + 112) = v11;
  *v11 = v4;
  v11[1] = specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:);

  return specialized closure #2 in Action.execute(checkSupportedStatus:)(a1, a2, a3, (v4 + 16));
}

{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:);

  return specialized closure #2 in Action.execute(checkSupportedStatus:)(a1, a2, a3, (v4 + 16));
}

{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:);

  return specialized closure #2 in Action.execute(checkSupportedStatus:)(a1, a2, a3, (v4 + 16));
}

{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:);

  return specialized closure #2 in Action.execute(checkSupportedStatus:)(a1, a2, a3, (v4 + 16));
}

{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:);

  return specialized closure #2 in Action.execute(checkSupportedStatus:)(a1, a2, a3, (v4 + 16));
}

uint64_t specialized closure #2 in Action.execute(checkSupportedStatus:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 1064) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  *(v5 + 1072) = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  *(v5 + 1080) = v7;
  *(v5 + 1088) = *(v7 - 8);
  *(v5 + 1096) = swift_task_alloc();
  *(v5 + 1104) = swift_task_alloc();
  *(v5 + 1112) = swift_task_alloc();
  *(v5 + 1176) = a5;

  return _swift_task_switch(specialized closure #2 in Action.execute(checkSupportedStatus:), 0, 0);
}

uint64_t specialized closure #1 in Action.execute(checkSupportedStatus:)(uint64_t a1, uint64_t a2, const char *a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for action != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v5, static Logger.action);
  (*(v6 + 16))(v8, v9, v5);
  outlined init with copy of TaskPriority?(a2, v21, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMd);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v20 = a3;
    v13 = v12;
    v14 = swift_slowAlloc();
    v21[0] = v14;
    *v13 = 136446210;
    v15 = ActionType.rawValue.getter(*(a2 + 72));
    v17 = v16;
    outlined destroy of TaskPriority?(a2, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMd);
    v18 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v15, v17, v21);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, v20, v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
  }

  else
  {
    outlined destroy of TaskPriority?(a2, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMd);
  }

  return (*(v6 + 8))(v8, v5);
}

{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for action != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v5, static Logger.action);
  (*(v6 + 16))(v8, v9, v5);
  outlined init with copy of TaskPriority?(a2, v22, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMd);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21 = a3;
    v13 = v12;
    v14 = swift_slowAlloc();
    v22[0] = v14;
    *v13 = 136446210;
    v15 = ActionType.rawValue.getter(*(a2 + 32));
    v17 = v16;
    outlined destroy of TaskPriority?(a2, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMd);
    v18 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v15, v17, v22);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, v21, v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
  }

  else
  {
    outlined destroy of TaskPriority?(a2, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMd);
  }

  return (*(v6 + 8))(v8, v5);
}

{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for action != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v5, static Logger.action);
  (*(v6 + 16))(v8, v9, v5);
  outlined init with copy of TaskPriority?(a2, v23, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMd);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21 = a3;
    v13 = v12;
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 136446210;
    v15 = v23[192];
    outlined destroy of TaskPriority?(v23, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMd);
    v16 = ActionType.rawValue.getter(v15);
    v18 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v16, v17, &v22);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, v21, v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
  }

  else
  {
    outlined destroy of TaskPriority?(v23, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMd);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t specialized NoticePresenting.present(_:internalOnly:)(uint64_t a1, char a2)
{
  v4 = type metadata accessor for Notice(0);
  __chkstk_darwin(v4 - 8);
  v6 = (&v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  static Notice.variant(_:)(a1, v6);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return _s9MusicCore6NoticeV7VariantOWOhTm_1(v6, type metadata accessor for Notice);
  }

  v8 = Strong;
  UIViewController.noticePresenting.getter(v13);

  v9 = v14;
  if (v14)
  {
    v10 = v15;
    __swift_project_boxed_opaque_existential_0Tm(v13, v14);
    (*(v10 + 8))(v6, a2 & 1, v9, v10);
    _s9MusicCore6NoticeV7VariantOWOhTm_1(v6, type metadata accessor for Notice);
    return __swift_destroy_boxed_opaque_existential_0Tm(v13);
  }

  else
  {
    _s9MusicCore6NoticeV7VariantOWOhTm_1(v6, type metadata accessor for Notice);
    return outlined destroy of TaskPriority?(v13, &_s9MusicCore16NoticePresenting_pSgMd);
  }
}

uint64_t MusicLibrary.ActionableState.description.getter(uint64_t a1, unsigned __int16 a2)
{
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMd);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v23 - v8;
  if (!(a2 >> 14))
  {
    v11 = a1;
    v12 = 0xE000000000000000;
    if (v11 == 5)
    {
      v13 = 0;
LABEL_31:
      v25 = 0x6164644120959EE2;
      v26 = 0xAB00000000656C62;
      v22 = v12;
      String.append(_:)(*&v13);

      return v25;
    }

    v16 = 0xD000000000000016;
    v25 = 0;
    v26 = 0xE000000000000000;
    _StringGuts.grow(_:)(29);

    v25 = 0xD00000000000001BLL;
    v26 = 0x80000001004CB610;
    if (v11 <= 1)
    {
      if (v11)
      {
        v17 = "Cloud Library Initial Import";
        v16 = 0xD00000000000001FLL;
        goto LABEL_30;
      }

      v20 = "Cloud Library Required";
    }

    else
    {
      if (v11 == 2)
      {
        v17 = "Unadded Tracks Present";
        v16 = 0xD00000000000001CLL;
        goto LABEL_30;
      }

      if (v11 == 3)
      {
        v17 = "hat requires an iCloud account.";
        v16 = 0xD000000000000015;
LABEL_30:
        v24._countAndFlagsBits = v16;
        v24._object = (v17 | 0x8000000000000000);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
        v21._countAndFlagsBits = String.init<A>(describing:)();
        String.append(_:)(v21);

        v13 = v25;
        v12 = v26;
        goto LABEL_31;
      }

      v20 = "Unadded Tracks Present";
    }

    v17 = (v20 - 32);
    goto LABEL_30;
  }

  if (a2 >> 14 == 1)
  {
    if ((a2 & 0x100) != 0)
    {
      v10 = 9;
      return v10 | 0x1000000000000014;
    }

    if (a2)
    {
      v10 = 10;
      return v10 | 0x1000000000000014;
    }

    v25 = 0;
    v26 = 0xE000000000000000;
    v18 = v7;
    _StringGuts.grow(_:)(24);

    v25 = 0x1000000000000014;
    v26 = 0x80000001004CB590;
    v23[1] = a1;
    static Locale.autoupdatingCurrent.getter();
    lazy protocol witness table accessor for type Double and conformance Double();
    FloatingPointFormatStyle.Percent.init(locale:)();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type FloatingPointFormatStyle<Double>.Percent and conformance FloatingPointFormatStyle<A>.Percent, &_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMd);
    BinaryFloatingPoint.formatted<A>(_:)();
    (*(v6 + 8))(v9, v18);
    String.append(_:)(v24);

    v19._countAndFlagsBits = 8233;
    v19._object = 0xE200000000000000;
    String.append(_:)(v19);
    return v25;
  }

  if (!(a1 | a2 ^ 0x8000))
  {
    return 1701736270;
  }

  if (a2 == 0x8000 && a1 == 1)
  {
    return 0x1000000000000013;
  }

  else
  {
    return 0x1000000000000014;
  }
}

unint64_t MusicLibrary.ActionableState.AddOverride.description.getter(unsigned __int8 a1)
{
  v1 = 0xD000000000000016;
  v2 = 0xD00000000000001CLL;
  v3 = 0xD000000000000015;
  if (a1 != 3)
  {
    v3 = 0xD000000000000016;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0xD00000000000001FLL;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t lazy protocol witness table accessor for type Double and conformance Double()
{
  result = lazy protocol witness table cache variable for type Double and conformance Double;
  if (!lazy protocol witness table cache variable for type Double and conformance Double)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Double and conformance Double);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Double and conformance Double;
  if (!lazy protocol witness table cache variable for type Double and conformance Double)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Double and conformance Double);
  }

  return result;
}

uint64_t MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:)(uint64_t a1, __int16 a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 1496) = v8;
  *(v9 + 1488) = v24;
  *(v9 + 1480) = a8;
  *(v9 + 1472) = a7;
  *(v9 + 1464) = a6;
  *(v9 + 1456) = a5;
  *(v9 + 1448) = a4;
  *(v9 + 1440) = a3;
  *(v9 + 1402) = a2;
  *(v9 + 1432) = a1;
  v10 = *a4;
  *(v9 + 1504) = *a4;
  v11 = type metadata accessor for Playlist.Variant();
  *(v9 + 1512) = v11;
  *(v9 + 1520) = *(v11 - 8);
  *(v9 + 1528) = swift_task_alloc();
  *(v9 + 1536) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE7VariantOSg_AGtMd);
  *(v9 + 1544) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd);
  *(v9 + 1552) = swift_task_alloc();
  *(v9 + 1560) = swift_task_alloc();
  *(v9 + 1568) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistVSgMd);
  *(v9 + 1576) = swift_task_alloc();
  v12 = type metadata accessor for Playlist();
  *(v9 + 1584) = v12;
  *(v9 + 1592) = *(v12 - 8);
  *(v9 + 1600) = swift_task_alloc();
  v13 = type metadata accessor for MusicLibrary.DownloadStatus.DownloadPauseReasons();
  *(v9 + 1608) = v13;
  *(v9 + 1616) = *(v13 - 8);
  *(v9 + 1624) = swift_task_alloc();
  *(v9 + 1632) = swift_task_alloc();
  *(v9 + 1640) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  *(v9 + 1648) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore12MetricsEventV4PageVSgMd);
  *(v9 + 1656) = swift_task_alloc();
  *(v9 + 1664) = swift_task_alloc();
  *(v9 + 1672) = swift_task_alloc();
  *(v9 + 1680) = swift_task_alloc();
  *(v9 + 1688) = swift_task_alloc();
  *(v9 + 1696) = swift_task_alloc();
  *(v9 + 1704) = swift_task_alloc();
  *(v9 + 1712) = swift_task_alloc();
  *(v9 + 1720) = type metadata accessor for MetricsEvent.Click(0);
  *(v9 + 1728) = swift_task_alloc();
  *(v9 + 1736) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  *(v9 + 1744) = swift_task_alloc();
  *(v9 + 1752) = swift_task_alloc();
  *(v9 + 1760) = swift_task_alloc();
  *(v9 + 1768) = type metadata accessor for Notice.Variant(0);
  *(v9 + 1776) = swift_task_alloc();
  v14 = type metadata accessor for UUID();
  *(v9 + 1784) = v14;
  *(v9 + 1792) = *(v14 - 8);
  *(v9 + 1800) = swift_task_alloc();
  type metadata accessor for Locale();
  *(v9 + 1808) = swift_task_alloc();
  v15 = type metadata accessor for String.LocalizationValue();
  *(v9 + 1816) = v15;
  *(v9 + 1824) = *(v15 - 8);
  *(v9 + 1832) = swift_task_alloc();
  *(v9 + 1840) = swift_task_alloc();
  v16 = type metadata accessor for MusicLibrary.AddStatus.UnaddableReason();
  *(v9 + 1848) = v16;
  *(v9 + 1856) = *(v16 - 8);
  *(v9 + 1864) = swift_task_alloc();
  *(v9 + 1872) = swift_task_alloc();
  *(v9 + 1880) = swift_task_alloc();
  v17 = type metadata accessor for MusicLibrary.DownloadStatus();
  *(v9 + 1888) = v17;
  *(v9 + 1896) = *(v17 - 8);
  *(v9 + 1904) = swift_task_alloc();
  *(v9 + 1912) = swift_task_alloc();
  v18 = type metadata accessor for MusicLibrary.AddStatus();
  *(v9 + 1920) = v18;
  *(v9 + 1928) = *(v18 - 8);
  *(v9 + 1936) = swift_task_alloc();
  *(v9 + 1944) = swift_task_alloc();
  v19 = *(v10 + class metadata base offset for MusicLibrary.ItemState);
  *(v9 + 1952) = v19;
  *(v9 + 1960) = *(v19 - 8);
  *(v9 + 1968) = swift_task_alloc();
  *(v9 + 1976) = swift_task_alloc();
  *(v9 + 1984) = swift_task_alloc();
  *(v9 + 1992) = swift_task_alloc();
  *(v9 + 2000) = swift_task_alloc();
  *(v9 + 2008) = type metadata accessor for MainActor();
  *(v9 + 2016) = static MainActor.shared.getter();
  v21 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v9 + 2024) = v21;
  *(v9 + 2032) = v20;

  return _swift_task_switch(MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:), v21, v20);
}

uint64_t MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:)()
{
  v551 = v0;
  if (one-time initialization token for libraryActionableState != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 2000);
  v2 = *(v0 + 1960);
  v3 = *(v0 + 1952);
  v4 = *(v0 + 1440);
  v516 = type metadata accessor for Logger();
  *(v0 + 2040) = __swift_project_value_buffer(v516, static Logger.libraryActionableState);
  v5 = *(v2 + 16);
  *(v0 + 2048) = v5;
  *(v0 + 2056) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  (v5)(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 2000);
  v522 = v5;
  if (v8)
  {
    v10 = *(v0 + 1992);
    v11 = *(v0 + 1960);
    v12 = *(v0 + 1952);
    v13 = swift_slowAlloc();
    v512 = v0;
    v14 = swift_slowAlloc();
    v550[0] = v14;
    *v13 = 136446210;
    (v5)(v10, v9, v12);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    (*(v11 + 8))(v9, v12);
    v18 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v15, v17, v550);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v6, v7, "╭ Performing action for item: %{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    v0 = v512;
  }

  else
  {
    v19 = *(v0 + 1960);
    v20 = *(v0 + 1952);

    (*(v19 + 8))(v9, v20);
  }

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = *(v0 + 1432);
    v24 = *(v0 + 1402);
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v550[0] = v26;
    *v25 = 136446210;
    v27 = MusicLibrary.ActionableState.description.getter(v23, v24);
    v29 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v27, v28, v550);

    *(v25 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v21, v22, "| Actionable state: %{public}s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v26);
  }

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = *(v0 + 1944);
    v33 = *(v0 + 1928);
    v34 = *(v0 + 1920);
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v550[0] = v36;
    *v35 = 136446210;
    dispatch thunk of MusicLibrary.ItemState.addStatus.getter();
    lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus, &type metadata accessor for MusicLibrary.AddStatus);
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    v39 = v38;
    (*(v33 + 8))(v32, v34);
    v40 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v37, v39, v550);

    *(v35 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v30, v31, "| Add status: %{public}s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v36);
  }

  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = *(v0 + 1912);
    v44 = *(v0 + 1896);
    v45 = *(v0 + 1888);
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v550[0] = v47;
    *v46 = 136446210;
    dispatch thunk of MusicLibrary.ItemState.downloadStatus.getter();
    lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type MusicLibrary.DownloadStatus and conformance MusicLibrary.DownloadStatus, &type metadata accessor for MusicLibrary.DownloadStatus);
    v48 = dispatch thunk of CustomStringConvertible.description.getter();
    v50 = v49;
    (*(v44 + 8))(v43, v45);
    v51 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v48, v50, v550);

    *(v46 + 4) = v51;
    _os_log_impl(&_mh_execute_header, v41, v42, "| Download status: %{public}s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v47);
  }

  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v550[0] = swift_slowAlloc();
    *v54 = 136446466;
    v55 = MusicLibrary.name.getter();
    v57 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v55, v56, v550);

    *(v54 + 4) = v57;
    *(v54 + 12) = 2082;
    v58 = MusicLibrary.id.getter();
    v60 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v58, v59, v550);

    *(v54 + 14) = v60;
    _os_log_impl(&_mh_execute_header, v52, v53, "| Library: %{public}s (%{public}s)", v54, 0x16u);
    swift_arrayDestroy();
  }

  v61 = *(v0 + 1402);
  if (v61 >> 14)
  {
    if (v61 >> 14 == 1)
    {
      if ((v61 & 0x100) == 0)
      {
        v62 = Logger.logObject.getter();
        v63 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          *v64 = 0;
          _os_log_impl(&_mh_execute_header, v62, v63, "|—● Cancelling download", v64, 2u);
        }

        v65 = swift_task_alloc();
        *(v0 + 2184) = v65;
        *v65 = v0;
        v65[1] = MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:);
        v66 = *(v0 + 1952);
        v67 = *(v0 + 1488);
        v68 = *(v0 + 1440);

        return MusicLibrary.cancelDownload<A>(_:)(v68, v66, v67);
      }

      v113 = Logger.logObject.getter();
      v114 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v113, v114))
      {
        v115 = swift_slowAlloc();
        *v115 = 0;
        _os_log_impl(&_mh_execute_header, v113, v114, "|—● Download is paused: Checking for reasons…", v115, 2u);
      }

      v116 = *(v0 + 1904);
      v117 = *(v0 + 1896);
      v118 = *(v0 + 1888);

      dispatch thunk of MusicLibrary.ItemState.downloadStatus.getter();
      v119 = (*(v117 + 88))(v116, v118);
      v120 = *(v0 + 1904);
      v121 = *(v0 + 1896);
      v122 = *(v0 + 1888);
      if (v119 == enum case for MusicLibrary.DownloadStatus.paused(_:))
      {
        v123 = *(v0 + 1640);
        v124 = *(v0 + 1616);
        v125 = *(v0 + 1608);
        (*(v121 + 96))(*(v0 + 1904), v122);
        (*(v124 + 32))(v123, v120, v125);
        MusicLibrary.DownloadStatus.DownloadPauseReasons.alert.getter((v0 + 1120));
        v126 = *(v0 + 1176);
        v127 = *(v0 + 1640);
        v128 = *(v0 + 1616);
        v129 = *(v0 + 1608);
        if (v126)
        {
          v130 = *(v0 + 1632);
          v131 = *(v0 + 1184);
          v132 = *(v0 + 1136);
          *(v0 + 1048) = *(v0 + 1120);
          *(v0 + 1064) = v132;
          *(v0 + 1080) = *(v0 + 1152);
          *(v0 + 1096) = *(v0 + 1168);
          *(v0 + 1104) = v126;
          *(v0 + 1112) = v131;
          (*(v128 + 16))(v130, v127, v129);
          v133 = Logger.logObject.getter();
          v134 = static os_log_type_t.default.getter();
          v135 = os_log_type_enabled(v133, v134);
          v136 = *(v0 + 1632);
          v137 = *(v0 + 1616);
          v138 = *(v0 + 1608);
          if (v135)
          {
            v529 = swift_slowAlloc();
            v536 = swift_slowAlloc();
            v550[0] = v536;
            *v529 = 136446210;
            lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type MusicLibrary.DownloadStatus.DownloadPauseReasons and conformance MusicLibrary.DownloadStatus.DownloadPauseReasons, &type metadata accessor for MusicLibrary.DownloadStatus.DownloadPauseReasons);
            v524 = v134;
            v139 = dispatch thunk of CustomStringConvertible.description.getter();
            v141 = v140;
            v517 = v133;
            v142 = *(v137 + 8);
            v142(v136, v138);
            v143 = v142;
            v144 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v139, v141, v550);

            *(v529 + 4) = v144;
            _os_log_impl(&_mh_execute_header, v517, v524, "|—| Showing alert for reason: %{public}s", v529, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v536);
          }

          else
          {

            v446 = *(v137 + 8);
            v446(v136, v138);
            v143 = v446;
          }

          v447 = *(v0 + 1640);
          v448 = *(v0 + 1608);
          v449 = specialized static UIAlertController.alertController(with:overrideStyle:)(v0 + 1048, 0, 1);
          PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v449, *(v0 + 1080), 1, 0, 0);

          outlined destroy of TaskPriority?(v0 + 1120, &_s9MusicCore5AlertVSgMd);
          v143(v447, v448);
        }

        else
        {
          (*(v128 + 16))(*(v0 + 1624), v127, v129);
          v399 = Logger.logObject.getter();
          v400 = static os_log_type_t.error.getter();
          v401 = os_log_type_enabled(v399, v400);
          v402 = *(v0 + 1640);
          v403 = *(v0 + 1624);
          v404 = *(v0 + 1616);
          v405 = *(v0 + 1608);
          if (v401)
          {
            v545 = *(v0 + 1640);
            v406 = swift_slowAlloc();
            v533 = swift_slowAlloc();
            v550[0] = v533;
            *v406 = 136446210;
            lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type MusicLibrary.DownloadStatus.DownloadPauseReasons and conformance MusicLibrary.DownloadStatus.DownloadPauseReasons, &type metadata accessor for MusicLibrary.DownloadStatus.DownloadPauseReasons);
            v407 = dispatch thunk of CustomStringConvertible.description.getter();
            v409 = v408;
            v410 = *(v404 + 8);
            v410(v403, v405);
            v411 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v407, v409, v550);

            *(v406 + 4) = v411;
            _os_log_impl(&_mh_execute_header, v399, v400, "|—| Unhandled alert for reason: %{public}s", v406, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v533);

            v410(v545, v405);
          }

          else
          {

            v458 = *(v404 + 8);
            v458(v403, v405);
            v458(v402, v405);
          }
        }
      }

      else
      {
        v239 = *(v121 + 8);
        v239(*(v0 + 1904), v122);

        v240 = Logger.logObject.getter();
        v241 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v240, v241))
        {
          v242 = *(v0 + 1912);
          v243 = *(v0 + 1888);
          v244 = swift_slowAlloc();
          v540 = swift_slowAlloc();
          v550[0] = v540;
          *v244 = 136446210;
          dispatch thunk of MusicLibrary.ItemState.downloadStatus.getter();
          lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type MusicLibrary.DownloadStatus and conformance MusicLibrary.DownloadStatus, &type metadata accessor for MusicLibrary.DownloadStatus);
          v245 = dispatch thunk of CustomStringConvertible.description.getter();
          v247 = v246;
          v239(v242, v243);
          v248 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v245, v247, v550);

          *(v244 + 4) = v248;
          _os_log_impl(&_mh_execute_header, v240, v241, "|—| No reasons found, download status does not match UI state %{public}s", v244, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v540);
        }
      }

      goto LABEL_145;
    }

    v96 = *(v0 + 1432);
    if (v96 | v61 ^ 0x8000)
    {
      if (*(v0 + 1402) == 0x8000 && v96 == 1)
      {
        v98 = Logger.logObject.getter();
        v99 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v98, v99))
        {
          v100 = swift_slowAlloc();
          *v100 = 0;
          _os_log_impl(&_mh_execute_header, v98, v99, "|—● Triggering download", v100, 2u);
        }

        v101 = *(v0 + 1992);
        v102 = *(v0 + 1952);
        v103 = *(v0 + 1648);
        v104 = *(v0 + 1504);
        v105 = *(v0 + 1496);
        v534 = *(v0 + 1488);
        v106 = *(v0 + 1480);
        v107 = *(v0 + 1456);
        v108 = *(v0 + 1440);

        (v522)(v101, v108, v102);
        outlined init with copy of PresentationSource(v107, v0 + 688);
        outlined init with copy of Actions.MetricsReportingContext(v106, v103);
        v109 = type metadata accessor for Actions.MetricsReportingContext();
        (*(*(v109 - 8) + 56))(v103, 0, 1, v109);
        v110 = *(v104 + class metadata base offset for MusicLibrary.ItemState + 8);

        Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(v101, v105, v0 + 688, v103, v102, v534, v110, &v547);
        *(v0 + 2144) = *(&v547 + 1);
        *(v0 + 2152) = *(&v548 + 1);
        *(v0 + 2160) = *(&v549 + 1);
        v111 = v548;
        *(v0 + 384) = v547;
        *(v0 + 400) = v111;
        *(v0 + 416) = v549;
        *(v0 + 432) = 1;
        *(v0 + 440) = closure #1 in static Actions.AddToLibrary.action(context:);
        *(v0 + 448) = 0;
        *(v0 + 456) = 0x4014000000000000;
        *(v0 + 464) = &async function pointer to closure #2 in static Actions.Download.action(context:);
        v535 = specialized Action.execute(checkSupportedStatus:);
        *(v0 + 472) = 0;
        *(v0 + 480) = &async function pointer to closure #3 in static Actions.Download.action(context:);
        *(v0 + 488) = 0;

        v112 = swift_task_alloc();
        *(v0 + 2168) = v112;
        *v112 = v0;
        v112[1] = MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:);
        goto LABEL_36;
      }

      v215 = Logger.logObject.getter();
      v216 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v215, v216))
      {
        v218 = swift_slowAlloc();
        *v218 = 0;
        _os_log_impl(&_mh_execute_header, v215, v216, "|—● Is Downloaded: Prompting for delete/remove alert", v218, 2u);
      }

      v219 = *(v0 + 1984);
      v220 = *(v0 + 1952);
      v221 = *(v0 + 1592);
      v222 = *(v0 + 1440);

      (v522)(v219, v222, v220);
      v223 = swift_dynamicCast();
      v224 = *(v221 + 56);
      if ((v223 & 1) == 0)
      {
        v358 = *(v0 + 1576);
        v224(v358, 1, 1, *(v0 + 1584));
        outlined destroy of TaskPriority?(v358, &_s8MusicKit8PlaylistVSgMd);
        v238 = v522;
LABEL_134:
        v435 = *(v0 + 1992);
        v436 = *(v0 + 1952);
        v437 = *(v0 + 1648);
        v438 = *(v0 + 1504);
        v439 = *(v0 + 1488);
        v440 = *(v0 + 1480);
        v441 = *(v0 + 1456);
        (v238)(v435, *(v0 + 1440), v436);
        outlined init with copy of PresentationSource(v441, v0 + 496);
        outlined init with copy of Actions.MetricsReportingContext(v440, v437);
        v442 = type metadata accessor for Actions.MetricsReportingContext();
        (*(*(v442 - 8) + 56))(v437, 0, 1, v442);
        type metadata accessor for MusicLibrary();
        v443 = static MusicLibrary.shared.getter();
        Actions.DeleteOrRemoveDownload.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(v435, v443, v0 + 496, v437, v436, v439, *(v438 + class metadata base offset for MusicLibrary.ItemState + 8), (v0 + 16));
        v444 = swift_allocObject();
        *(v444 + 16) = &async function pointer to specialized thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed Action<Actions.DeleteOrRemoveDownload.Context, Actions.DeleteOrRemoveDownload.Choice>, @in_guaranteed CheckedContinuation<Actions.DeleteOrRemoveDownload.Choice, Error>) -> ();
        *(v444 + 24) = 0;
        *(v0 + 208) = 51;
        *(v0 + 224) = 0;
        *(v0 + 232) = 0x403E000000000000;
        *(v0 + 216) = closure #1 in static Actions.DeleteOrRemoveDownload.action(context:);
        *(v0 + 240) = &async function pointer to partial apply for specialized closure #1 in Action.init(_:id:waitLogInterval:supportedStatus:perform:finish:);
        *(v0 + 248) = v444;
        *(v0 + 256) = &async function pointer to closure #3 in static Actions.DeleteOrRemoveDownload.action(context:);
        *(v0 + 264) = 0;
        v445 = swift_task_alloc();
        *(v0 + 2216) = v445;
        *v445 = v0;
        v445[1] = MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:);

        return specialized Action.execute(checkSupportedStatus:)(0);
      }

      v225 = *(v0 + 1600);
      v226 = *(v0 + 1592);
      v227 = *(v0 + 1584);
      v228 = *(v0 + 1576);
      v520 = *(v0 + 1568);
      v229 = *(v0 + 1560);
      v230 = *(v0 + 1544);
      v539 = *(v0 + 1536);
      v231 = *(v0 + 1520);
      v232 = *(v0 + 1512);
      v224(v228, 0, 1, v227);
      (*(v226 + 32))(v225, v228, v227);
      v233 = v230;
      Playlist.variant.getter();
      (*(v231 + 104))(v229, enum case for Playlist.Variant.favoriteSongs(_:), v232);
      (*(v231 + 56))(v229, 0, 1, v232);
      v234 = *(v539 + 12);
      outlined init with copy of TaskPriority?(v520, v230, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd);
      outlined init with copy of TaskPriority?(v229, v230 + v234, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd);
      v235 = *(v231 + 48);
      if (v235(v233, 1, v232) == 1)
      {
        v236 = *(v0 + 1568);
        v237 = *(v0 + 1512);
        outlined destroy of TaskPriority?(*(v0 + 1560), &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd);
        outlined destroy of TaskPriority?(v236, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd);
        if (v235(v233 + v234, 1, v237) == 1)
        {
          outlined destroy of TaskPriority?(*(v0 + 1544), &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd);
          v238 = v522;
LABEL_152:
          v464 = *(v0 + 1992);
          v465 = *(v0 + 1952);
          v466 = *(v0 + 1648);
          v467 = *(v0 + 1504);
          v468 = *(v0 + 1488);
          v469 = *(v0 + 1480);
          v470 = *(v0 + 1456);
          (v238)(v464, *(v0 + 1440), v465);
          outlined init with copy of PresentationSource(v470, v0 + 592);
          outlined init with copy of Actions.MetricsReportingContext(v469, v466);
          v471 = type metadata accessor for Actions.MetricsReportingContext();
          (*(*(v471 - 8) + 56))(v466, 0, 1, v471);
          type metadata accessor for MusicLibrary();
          v472 = static MusicLibrary.shared.getter();
          Actions.RemoveDownload.Context.init<A>(item:library:showConfirmationDialog:presentationSource:metricsReportingContext:)(v464, v472, 1, v0 + 592, v466, v465, v468, *(v467 + class metadata base offset for MusicLibrary.ItemState + 8), (v0 + 272));
          *(v0 + 320) = 48;
          *(v0 + 328) = closure #1 in static Actions.AddToLibrary.action(context:);
          *(v0 + 336) = 0;
          *(v0 + 344) = 0x4014000000000000;
          *(v0 + 352) = &async function pointer to closure #2 in static Actions.RemoveDownload.action(context:);
          v535 = specialized Action.execute(checkSupportedStatus:);
          *(v0 + 360) = 0;
          *(v0 + 368) = &async function pointer to closure #3 in static Actions.RemoveDownload.action(context:);
          *(v0 + 376) = 0;
          v473 = swift_task_alloc();
          *(v0 + 2200) = v473;
          *v473 = v0;
          v473[1] = MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:);
LABEL_36:

          return v535();
        }
      }

      else
      {
        v428 = *(v0 + 1512);
        outlined init with copy of TaskPriority?(*(v0 + 1544), *(v0 + 1552), &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd);
        v429 = v235(v233 + v234, 1, v428);
        v430 = *(v0 + 1568);
        v431 = *(v0 + 1560);
        v432 = *(v0 + 1552);
        if (v429 != 1)
        {
          v546 = *(v0 + 1544);
          v459 = *(v0 + 1528);
          v460 = *(v0 + 1520);
          v461 = *(v0 + 1512);
          (*(v460 + 32))(v459, v233 + v234, v461);
          lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type Playlist.Variant and conformance Playlist.Variant, &type metadata accessor for Playlist.Variant);
          v462 = dispatch thunk of static Equatable.== infix(_:_:)();
          v463 = *(v460 + 8);
          v463(v459, v461);
          outlined destroy of TaskPriority?(v431, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd);
          outlined destroy of TaskPriority?(v430, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd);
          v463(v432, v461);
          outlined destroy of TaskPriority?(v546, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd);
          v238 = v522;
          if (v462)
          {
            goto LABEL_152;
          }

          goto LABEL_133;
        }

        v433 = *(v0 + 1520);
        v434 = *(v0 + 1512);
        outlined destroy of TaskPriority?(*(v0 + 1560), &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd);
        outlined destroy of TaskPriority?(v430, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd);
        (*(v433 + 8))(v432, v434);
      }

      outlined destroy of TaskPriority?(*(v0 + 1544), &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSg_AGtMd);
      v238 = v522;
LABEL_133:
      (*(*(v0 + 1592) + 8))(*(v0 + 1600), *(v0 + 1584));
      goto LABEL_134;
    }

    v178 = Logger.logObject.getter();
    v179 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v178, v179))
    {
      v180 = swift_slowAlloc();
      *v180 = 0;
      _os_log_impl(&_mh_execute_header, v178, v179, "|—● Nothing to Perform: Actionable State is unknown", v180, 2u);
    }

    lazy protocol witness table accessor for type MusicLibrary.ActionableState.Error and conformance MusicLibrary.ActionableState.Error();
    v181 = swift_allocError();
    swift_willThrow();
    goto LABEL_54;
  }

  v69 = *(v0 + 1936);
  v70 = *(v0 + 1928);
  v71 = *(v0 + 1920);
  dispatch thunk of MusicLibrary.ItemState.addStatus.getter();
  if ((*(v70 + 88))(v69, v71) == enum case for MusicLibrary.AddStatus.unaddable(_:))
  {
    v72 = *(v0 + 1936);
    v73 = *(v0 + 1880);
    v74 = *(v0 + 1856);
    v75 = *(v0 + 1848);
    (*(*(v0 + 1928) + 96))(v72, *(v0 + 1920));
    (*(v74 + 32))(v73, v72, v75);
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&_mh_execute_header, v76, v77, "|—● Unaddable", v78, 2u);
    }

    v79 = *(v0 + 1880);
    v80 = *(v0 + 1872);
    v81 = *(v0 + 1856);
    v82 = *(v0 + 1848);

    v83 = *(v81 + 16);
    v83(v80, v79, v82);
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.default.getter();
    v86 = os_log_type_enabled(v84, v85);
    v87 = *(v0 + 1872);
    v88 = *(v0 + 1856);
    v89 = *(v0 + 1848);
    if (v86)
    {
      v528 = v83;
      v90 = swift_slowAlloc();
      v523 = swift_slowAlloc();
      v550[0] = v523;
      *v90 = 136446210;
      lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type MusicLibrary.AddStatus.UnaddableReason and conformance MusicLibrary.AddStatus.UnaddableReason, &type metadata accessor for MusicLibrary.AddStatus.UnaddableReason);
      v513 = v85;
      v91 = dispatch thunk of CustomStringConvertible.description.getter();
      v93 = v92;
      v94 = *(v88 + 8);
      (v94)(v87, v89);
      v95 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v91, v93, v550);

      *(v90 + 4) = v95;
      _os_log_impl(&_mh_execute_header, v84, v513, "|—| Reason: %{public}s", v90, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v523);

      v83 = v528;
    }

    else
    {

      v94 = *(v88 + 8);
      (v94)(v87, v89);
    }

    v541 = v94;
    *(v0 + 2064) = v94;
    v249 = *(v0 + 1864);
    v250 = *(v0 + 1856);
    v251 = *(v0 + 1848);
    v83(v249, *(v0 + 1880), v251);
    v252 = (*(v250 + 88))(v249, v251);
    if (v252 == enum case for MusicLibrary.AddStatus.UnaddableReason.allExplicitContentRestricted(_:))
    {

      v253 = Logger.logObject.getter();
      v254 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v253, v254))
      {
        v255 = swift_slowAlloc();
        *v255 = 0;
        _os_log_impl(&_mh_execute_header, v253, v254, "|—| Presenting Explicit Restriction alert", v255, 2u);
      }

      v256 = *(v0 + 1456);

      specialized static Alert.explicitRestrictedAlert(traitCollection:)(0, v0 + 1192);
      v257 = specialized static UIAlertController.alertController(with:overrideStyle:)(v0 + 1192, 0, 1);
      v258 = v257;
      v259 = *(v0 + 1224);
      v260 = *(v256 + 80);
      if (v260)
      {
        v261 = one-time initialization token for logger;

        if (v261 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v516, static PresentationSource.logger);
        v262 = Logger.logObject.getter();
        v263 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v262, v263))
        {
          v264 = swift_slowAlloc();
          *v264 = 0;
          _os_log_impl(&_mh_execute_header, v262, v263, "Deferring presentation…", v264, 2u);
        }

        v530 = *(v0 + 1880);
        v265 = *(v0 + 1848);
        v266 = *(v0 + 1456);

        v267 = objc_allocWithZone(MSVBlockGuard);
        *(v0 + 1344) = closure #1 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:);
        *(v0 + 1352) = 0;
        *(v0 + 1312) = _NSConcreteStackBlock;
        *(v0 + 1320) = 1107296256;
        *(v0 + 1328) = thunk for @escaping @callee_guaranteed (@unowned MSVBlockGuardInterruptionReason) -> ();
        *(v0 + 1336) = &block_descriptor_16;
        v268 = _Block_copy((v0 + 1312));
        v269 = [v267 initWithTimeout:v268 interruptionHandler:10.0];
        _Block_release(v268);

        outlined init with copy of PresentationSource(v266, v0 + 880);
        v270 = swift_allocObject();
        *(v270 + 16) = v269;
        outlined init with take of PresentationSource(v0 + 880, v270 + 24);
        *(v270 + 120) = v258;
        *(v270 + 128) = v259;
        *(v270 + 129) = 1;
        *(v270 + 136) = 0;
        *(v270 + 144) = 0;
        v271 = v269;
        v272 = v258;
        v260(v266, v272, closure #2 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)partial apply, v270);
        outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v260);

        outlined destroy of Alert(v0 + 1192);
        v273 = v530;
        v274 = v265;
        goto LABEL_144;
      }

      v412 = *(v0 + 1880);
      v413 = *(v0 + 1848);
      PresentationSource._present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v257, *(v0 + 1224), 1, 0, 0);

      outlined destroy of Alert(v0 + 1192);
      v273 = v412;
LABEL_143:
      v274 = v413;
LABEL_144:
      (v541)(v273, v274);
LABEL_145:
      v454 = Logger.logObject.getter();
      v455 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v454, v455))
      {
        v456 = swift_slowAlloc();
        *v456 = 0;
        _os_log_impl(&_mh_execute_header, v454, v455, "╰ ✅ Succeeded", v456, 2u);
      }

      v457 = *(v0 + 8);

      return v457();
    }

    if (v252 != enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryRequired(_:))
    {
      if (v252 == enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryInitialImport(_:))
      {

        v359 = Logger.logObject.getter();
        v360 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v359, v360))
        {
          v361 = swift_slowAlloc();
          *v361 = 0;
          _os_log_impl(&_mh_execute_header, v359, v360, "|—| Presenting library import in progress alert", v361, 2u);
        }

        v362 = *(v0 + 1840);
        v363 = *(v0 + 1832);
        v364 = *(v0 + 1824);
        v365 = *(v0 + 1816);

        String.LocalizationValue.init(stringLiteral:)();
        v507 = *(v364 + 16);
        v507(v363, v362, v365);
        if (one-time initialization token for module != -1)
        {
          swift_once();
        }

        v366 = *(v0 + 1840);
        v367 = *(v0 + 1832);
        v368 = *(v0 + 1824);
        v369 = *(v0 + 1816);
        v503 = *(v0 + 1800);
        v511 = *(v0 + 1792);
        v515 = *(v0 + 1784);
        v543 = *(v0 + 1456);
        v370 = static NSBundle.module;
        static Locale.current.getter();
        v371 = v370;
        v372 = String.init(localized:table:bundle:locale:comment:)();
        v527 = v373;
        v531 = v372;
        v374 = *(v368 + 8);
        v374(v366, v369);
        String.LocalizationValue.init(stringLiteral:)();
        v507(v367, v366, v369);
        static Locale.current.getter();
        v375 = String.init(localized:table:bundle:locale:comment:)();
        v494 = v376;
        v499 = v375;
        v374(v366, v369);
        String.LocalizationValue.init(stringLiteral:)();
        v507(v367, v366, v369);
        static Locale.current.getter();
        v377 = String.init(localized:table:bundle:locale:comment:)();
        v379 = v378;
        v374(v366, v369);
        UUID.init()();
        v380 = UUID.uuidString.getter();
        v382 = v381;
        (*(v511 + 8))(v503, v515);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMd);
        v383 = swift_allocObject();
        *(v383 + 16) = xmmword_1004F2400;
        *(v383 + 32) = v380;
        *(v383 + 40) = v382;
        *(v383 + 48) = v377;
        *(v383 + 56) = v379;
        *(v383 + 64) = 2;
        *(v383 + 72) = 0;
        *(v383 + 80) = 0;
        LOBYTE(v550[0]) = 1;
        *(v0 + 976) = v531;
        *(v0 + 984) = v527;
        *(v0 + 992) = v499;
        *(v0 + 1000) = v494;
        *(v0 + 1008) = 0;
        *(v0 + 1016) = 0;
        *(v0 + 1024) = 1;
        *(v0 + 1032) = v383;
        *(v0 + 1040) = 0;

        v384 = specialized static UIAlertController.alertController(with:overrideStyle:)(v0 + 976, 0, 1);
        v385 = v384;
        v386 = *(v543 + 10);
        if (v386)
        {
          v387 = one-time initialization token for logger;

          if (v387 != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v516, static PresentationSource.logger);
          v388 = Logger.logObject.getter();
          v389 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v388, v389))
          {
            v390 = swift_slowAlloc();
            *v390 = 0;
            _os_log_impl(&_mh_execute_header, v388, v389, "Deferring presentation…", v390, 2u);
          }

          v391 = *(v0 + 1856);
          v532 = *(v0 + 1848);
          v544 = *(v0 + 1880);
          v392 = *(v0 + 1456);

          v393 = objc_allocWithZone(MSVBlockGuard);
          *(v0 + 1296) = closure #1 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:);
          *(v0 + 1304) = 0;
          *(v0 + 1264) = _NSConcreteStackBlock;
          *(v0 + 1272) = 1107296256;
          *(v0 + 1280) = thunk for @escaping @callee_guaranteed (@unowned MSVBlockGuardInterruptionReason) -> ();
          *(v0 + 1288) = &block_descriptor_23;
          v394 = _Block_copy((v0 + 1264));
          v395 = [v393 initWithTimeout:v394 interruptionHandler:10.0];
          _Block_release(v394);

          outlined init with copy of PresentationSource(v392, v0 + 784);
          v396 = swift_allocObject();
          *(v396 + 16) = v395;
          outlined init with take of PresentationSource(v0 + 784, v396 + 24);
          *(v396 + 120) = v385;
          *(v396 + 128) = 257;
          *(v396 + 136) = 0;
          *(v396 + 144) = 0;
          v397 = v395;
          v398 = v385;
          v386(v392, v398, _s9MusicCore18PresentationSourceV7present_019wantsAutomaticModalC5Style8animated10completionySo16UIViewControllerC_S2byycSgtFyycfU0_TA_0, v396);
          outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v386);

          outlined destroy of Alert(v0 + 976);

          (*(v391 + 8))(v544, v532);
        }

        else
        {
          v480 = *(v0 + 1880);
          v481 = *(v0 + 1856);
          v482 = *(v0 + 1848);
          PresentationSource._present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v384, 1, 1, 0, 0);

          outlined destroy of Alert(v0 + 976);

          (*(v481 + 8))(v480, v482);
        }

        goto LABEL_145;
      }

      if (v252 != enum case for MusicLibrary.AddStatus.UnaddableReason.subscriptionRequired(_:))
      {
        v474 = Logger.logObject.getter();
        v475 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v474, v475))
        {
          v476 = swift_slowAlloc();
          *v476 = 0;
          _os_log_impl(&_mh_execute_header, v474, v475, "|—| Unaddable reason is not supported by the UI", v476, 2u);
        }

        v477 = *(v0 + 1880);
        v478 = *(v0 + 1864);
        v479 = *(v0 + 1848);

        lazy protocol witness table accessor for type MusicLibrary.ActionableState.Error and conformance MusicLibrary.ActionableState.Error();
        v181 = swift_allocError();
        swift_willThrow();
        (v541)(v477, v479);
        (v541)(v478, v479);
LABEL_54:
        *(v0 + 2232) = v181;
        *(v0 + 1408) = v181;
        swift_errorRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
        v182 = swift_dynamicCast();
        v183 = *(v0 + 2048);
        v184 = *(v0 + 1952);
        v185 = *(v0 + 1440);
        if (v182)
        {
          v186 = *(v0 + 1976);

          v183(v186, v185, v184);

          v187 = Logger.logObject.getter();
          v188 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v187, v188))
          {
            v509 = *(v0 + 2048);
            v501 = *(v0 + 1992);
            v505 = *(v0 + 1976);
            v519 = *(v0 + 1960);
            v189 = *(v0 + 1944);
            v190 = *(v0 + 1928);
            v191 = *(v0 + 1920);
            v192 = *(v0 + 1912);
            v193 = *(v0 + 1896);
            v492 = *(v0 + 1888);
            v497 = *(v0 + 1952);
            v538 = v188;
            v194 = *(v0 + 1432);
            v195 = *(v0 + 1402);
            v525 = v187;
            v196 = swift_slowAlloc();
            v550[0] = swift_slowAlloc();
            *v196 = 136447234;
            v197 = MusicLibrary.ActionableState.description.getter(v194, v195);
            v199 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v197, v198, v550);

            *(v196 + 4) = v199;
            *(v196 + 12) = 2082;
            dispatch thunk of MusicLibrary.ItemState.addStatus.getter();
            lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus, &type metadata accessor for MusicLibrary.AddStatus);
            v200 = dispatch thunk of CustomStringConvertible.description.getter();
            v202 = v201;
            (*(v190 + 8))(v189, v191);
            v203 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v200, v202, v550);

            *(v196 + 14) = v203;
            *(v196 + 22) = 2082;
            dispatch thunk of MusicLibrary.ItemState.downloadStatus.getter();
            lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type MusicLibrary.DownloadStatus and conformance MusicLibrary.DownloadStatus, &type metadata accessor for MusicLibrary.DownloadStatus);
            v204 = dispatch thunk of CustomStringConvertible.description.getter();
            v206 = v205;
            (*(v193 + 8))(v192, v492);
            v207 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v204, v206, v550);

            *(v196 + 24) = v207;
            *(v196 + 32) = 2082;
            v509(v501, v505, v497);
            v208 = String.init<A>(describing:)();
            v210 = v209;
            (*(v519 + 8))(v505, v497);
            v211 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v208, v210, v550);

            *(v196 + 34) = v211;
            *(v196 + 42) = 2082;
            v212 = String.init<A>(describing:)();
            v214 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v212, v213, v550);

            *(v196 + 44) = v214;
            _os_log_impl(&_mh_execute_header, v525, v538, "Attempted to perform unsupported action for state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v196, 0x34u);
            swift_arrayDestroy();
          }

          else
          {
            v414 = *(v0 + 1976);
            v415 = *(v0 + 1960);
            v416 = *(v0 + 1952);

            (*(v415 + 8))(v414, v416);
          }

          *(v0 + 2240) = lazy protocol witness table accessor for type MusicLibrary.ActionableState.Error and conformance MusicLibrary.ActionableState.Error();
          v417 = swift_allocError();
          *(v0 + 2248) = v417;
          v418 = swift_task_alloc();
          *(v0 + 2256) = v418;
          *v418 = v0;
          v418[1] = MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:);
          v419 = *(v0 + 1456);
          v420 = *(v0 + 1448);
          v421 = *(v0 + 1432);
          v422 = *(v0 + 1402);
          v423 = v417;
        }

        else
        {
          v331 = *(v0 + 1968);

          v183(v331, v185, v184);

          swift_errorRetain();
          v332 = Logger.logObject.getter();
          v333 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v332, v333))
          {
            v510 = *(v0 + 2048);
            v502 = *(v0 + 1992);
            v506 = *(v0 + 1968);
            v521 = *(v0 + 1960);
            v334 = *(v0 + 1944);
            v335 = *(v0 + 1928);
            v336 = *(v0 + 1920);
            v493 = *(v0 + 1896);
            v498 = *(v0 + 1952);
            v488 = *(v0 + 1912);
            v490 = *(v0 + 1888);
            v542 = v333;
            v337 = *(v0 + 1432);
            v338 = *(v0 + 1402);
            v526 = v332;
            v339 = swift_slowAlloc();
            v550[0] = swift_slowAlloc();
            *v339 = 136447234;
            v340 = MusicLibrary.ActionableState.description.getter(v337, v338);
            v342 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v340, v341, v550);

            *(v339 + 4) = v342;
            *(v339 + 12) = 2082;
            dispatch thunk of MusicLibrary.ItemState.addStatus.getter();
            lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus, &type metadata accessor for MusicLibrary.AddStatus);
            v343 = dispatch thunk of CustomStringConvertible.description.getter();
            v345 = v344;
            (*(v335 + 8))(v334, v336);
            v346 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v343, v345, v550);

            *(v339 + 14) = v346;
            *(v339 + 22) = 2082;
            dispatch thunk of MusicLibrary.ItemState.downloadStatus.getter();
            lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type MusicLibrary.DownloadStatus and conformance MusicLibrary.DownloadStatus, &type metadata accessor for MusicLibrary.DownloadStatus);
            v347 = dispatch thunk of CustomStringConvertible.description.getter();
            v349 = v348;
            (*(v493 + 8))(v488, v490);
            v350 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v347, v349, v550);

            *(v339 + 24) = v350;
            *(v339 + 32) = 2082;
            v510(v502, v506, v498);
            v351 = String.init<A>(describing:)();
            v353 = v352;
            (*(v521 + 8))(v506, v498);
            v354 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v351, v353, v550);

            *(v339 + 34) = v354;
            *(v339 + 42) = 2082;
            *(v0 + 1416) = v181;
            swift_errorRetain();
            v355 = String.init<A>(describing:)();
            v357 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v355, v356, v550);

            *(v339 + 44) = v357;
            _os_log_impl(&_mh_execute_header, v526, v542, "Action failed for button state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v339, 0x34u);
            swift_arrayDestroy();
          }

          else
          {
            v424 = *(v0 + 1968);
            v425 = *(v0 + 1960);
            v426 = *(v0 + 1952);

            (*(v425 + 8))(v424, v426);
          }

          v427 = swift_task_alloc();
          *(v0 + 2264) = v427;
          *v427 = v0;
          v427[1] = MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:);
          v419 = *(v0 + 1456);
          v420 = *(v0 + 1448);
          v421 = *(v0 + 1432);
          v422 = *(v0 + 1402);
          v423 = v181;
        }

        return presentTTRIfNeeded #1 <A>(for:) in MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:)(v423, v421, v422, v420, v419);
      }

      v450 = Logger.logObject.getter();
      v451 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v450, v451))
      {
        v452 = swift_slowAlloc();
        *v452 = 0;
        _os_log_impl(&_mh_execute_header, v450, v451, "|—| Presenting upsell", v452, 2u);
      }

      v453 = *(v0 + 1880);
      v413 = *(v0 + 1848);

      *(v0 + 1392) = 0;
      *(v0 + 1360) = 0u;
      *(v0 + 1376) = 0u;
      *(v0 + 1400) = -1;
      specialized static SubscriptionUpsellPresenter.present(for:)(v0 + 1360);
      outlined destroy of SubscriptionUpsellPresenter.Placement(v0 + 1360);
      v273 = v453;
      goto LABEL_143;
    }

    v282 = Logger.logObject.getter();
    v283 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v282, v283))
    {
      v284 = swift_slowAlloc();
      *v284 = 0;
      _os_log_impl(&_mh_execute_header, v282, v283, "|—| Presenting Cloud Library Requirement alert", v284, 2u);
    }

    *(v0 + 2072) = static MainActor.shared.getter();
    v286 = dispatch thunk of Actor.unownedExecutor.getter();
    *(v0 + 2080) = v286;
    *(v0 + 2088) = v285;

    return _swift_task_switch(MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:), v286, v285);
  }

  else
  {
    v145 = Logger.logObject.getter();
    v146 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v145, v146))
    {
      v147 = swift_slowAlloc();
      *v147 = 0;
      _os_log_impl(&_mh_execute_header, v145, v146, "|—● Adding to library", v147, 2u);
    }

    v148 = *(v0 + 1464);

    if (v148)
    {
      v149 = *(v0 + 1472);
      ObjectType = swift_getObjectType();
      (*(v149 + 8))(0, ObjectType, v149);
    }

    v151 = *(v0 + 1952);
    v152 = *(v0 + 1776);
    v153 = *(v0 + 1760);
    v154 = *(v0 + 1728);
    v155 = *(v0 + 1720);
    v491 = *(v0 + 1752);
    v495 = *(v0 + 1712);
    v500 = *(v0 + 1704);
    v156 = *(v0 + 1480);
    swift_storeEnumTagMultiPayload();
    specialized NoticePresenting.present(_:internalOnly:)(v152, 0);
    _s9MusicCore6NoticeV7VariantOWOhTm_1(v152, type metadata accessor for Notice.Variant);
    v157 = MusicItem.metricsTargetIdentifier.getter(v151);
    v486 = v158;
    v487 = v157;
    v159 = type metadata accessor for URL();
    v484 = *(*(v159 - 8) + 56);
    v485 = v159;
    v484(v153, 1, 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore12MetricsEventV5ClickV13ActionDetailsO3KeyOGMd);
    v160 = swift_allocObject();
    *(v160 + 16) = xmmword_1004F2EF0;
    *(v160 + 32) = MusicItem.metricsContentType.getter(v151);
    *(v160 + 40) = v161;
    *(v160 + 48) = 0;
    *(v160 + 56) = 0;
    *(v160 + 64) = 0;
    *(v160 + 72) = 1;
    v508 = specialized MetricsEvent.Click.ActionDetails.init(_:)(v160);
    v518 = v162;
    v537 = v163;
    v514 = v164;
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    outlined init with copy of TaskPriority?(v153, v491, &_s10Foundation3URLVSgMd);
    v165 = type metadata accessor for Actions.MetricsReportingContext();
    v166 = *(v156 + v165[7]);
    v168 = *v156;
    v167 = v156[1];
    outlined init with copy of TaskPriority?(v156 + v165[5], v495, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v504 = v165;
    v489 = *(v156 + v165[8]);
    *(v154 + v155[19]) = 0;
    v169 = (v154 + v155[20]);
    *v169 = 0;
    v169[1] = 0;
    *v154 = v487;
    *(v154 + 8) = v486;
    *(v154 + 16) = 773;
    outlined init with take of URL?(v491, v154 + v155[7], &_s10Foundation3URLVSgMd);
    *(v154 + v155[8]) = v166;
    v170 = (v154 + v155[9]);
    *v170 = v168;
    v170[1] = v167;
    v171 = v154 + v155[10];
    *v171 = v508;
    *(v171 + 8) = v518;
    *(v171 + 16) = v537;
    *(v171 + 24) = v514;
    outlined init with copy of TaskPriority?(v495, v500, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v172 = type metadata accessor for MetricsEvent.Page(0);
    v496 = *(*(v172 - 1) + 48);
    v173 = v496(v500, 1, v172);
    v174 = *(v0 + 1704);
    if (v173 == 1)
    {

      outlined copy of MetricsEvent.Click.ActionContext?(v168, v167);

      v175 = v508;
      outlined copy of MetricsEvent.Click.ActionDetails(v508, v518, v537, v514, SBYTE1(v514));
      outlined destroy of TaskPriority?(v174, &_s9MusicCore12MetricsEventV4PageVSgMd);
      v176 = 0;
      v177 = 0;
    }

    else
    {
      v176 = *v174;
      v177 = v174[1];

      outlined copy of MetricsEvent.Click.ActionContext?(v168, v167);

      v175 = v508;
      outlined copy of MetricsEvent.Click.ActionDetails(v508, v518, v537, v514, SBYTE1(v514));

      _s9MusicCore6NoticeV7VariantOWOhTm_1(v174, type metadata accessor for MetricsEvent.Page);
    }

    v275 = *(v0 + 1712);
    v276 = *(v0 + 1696);
    v277 = (*(v0 + 1728) + *(*(v0 + 1720) + 48));
    *v277 = v176;
    v277[1] = v177;
    outlined init with copy of TaskPriority?(v275, v276, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v278 = v496(v276, 1, v172);
    v279 = *(v0 + 1696);
    if (v278 == 1)
    {
      outlined destroy of TaskPriority?(*(v0 + 1696), &_s9MusicCore12MetricsEventV4PageVSgMd);
      v280 = 0;
      v281 = 0;
    }

    else
    {
      v280 = *(v279 + 16);
      v281 = *(v279 + 24);

      _s9MusicCore6NoticeV7VariantOWOhTm_1(v279, type metadata accessor for MetricsEvent.Page);
    }

    v287 = *(v0 + 1712);
    v288 = *(v0 + 1688);
    v289 = (*(v0 + 1728) + *(*(v0 + 1720) + 52));
    *v289 = v280;
    v289[1] = v281;
    outlined init with copy of TaskPriority?(v287, v288, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v290 = v496(v288, 1, v172);
    v291 = *(v0 + 1744);
    v292 = *(v0 + 1688);
    if (v290 == 1)
    {
      outlined destroy of TaskPriority?(*(v0 + 1688), &_s9MusicCore12MetricsEventV4PageVSgMd);
      (v484)(v291, 1, 1, v485);
    }

    else
    {
      outlined init with copy of TaskPriority?(v292 + v172[6], *(v0 + 1744), &_s10Foundation3URLVSgMd);
      _s9MusicCore6NoticeV7VariantOWOhTm_1(v292, type metadata accessor for MetricsEvent.Page);
    }

    v293 = *(v0 + 1712);
    v294 = *(v0 + 1680);
    outlined init with take of URL?(*(v0 + 1744), *(v0 + 1728) + *(*(v0 + 1720) + 56), &_s10Foundation3URLVSgMd);
    outlined init with copy of TaskPriority?(v293, v294, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v295 = v496(v294, 1, v172);
    v296 = *(v0 + 1680);
    if (v295 == 1)
    {
      outlined destroy of TaskPriority?(*(v0 + 1680), &_s9MusicCore12MetricsEventV4PageVSgMd);
      v297 = 0;
    }

    else
    {
      v297 = *(v296 + v172[7]);

      _s9MusicCore6NoticeV7VariantOWOhTm_1(v296, type metadata accessor for MetricsEvent.Page);
    }

    v298 = *(v0 + 1712);
    v299 = *(v0 + 1672);
    *(*(v0 + 1728) + *(*(v0 + 1720) + 60)) = v297;
    outlined init with copy of TaskPriority?(v298, v299, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v300 = v496(v299, 1, v172);
    v301 = *(v0 + 1672);
    if (v300 == 1)
    {
      outlined destroy of TaskPriority?(v301, &_s9MusicCore12MetricsEventV4PageVSgMd);
      v302 = 1;
    }

    else
    {
      v302 = *(v301 + v172[9]);
      _s9MusicCore6NoticeV7VariantOWOhTm_1(v301, type metadata accessor for MetricsEvent.Page);
    }

    v303 = *(v0 + 1712);
    v304 = *(v0 + 1664);
    *(*(v0 + 1728) + *(*(v0 + 1720) + 64)) = v302;
    outlined init with copy of TaskPriority?(v303, v304, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v305 = v496(v304, 1, v172);
    v306 = *(v0 + 1664);
    if (v305 == 1)
    {
      outlined destroy of TaskPriority?(*(v0 + 1664), &_s9MusicCore12MetricsEventV4PageVSgMd);
      v307 = 0;
      v308 = 0;
    }

    else
    {
      v309 = (v306 + v172[8]);
      v307 = *v309;
      v308 = v309[1];

      _s9MusicCore6NoticeV7VariantOWOhTm_1(v306, type metadata accessor for MetricsEvent.Page);
    }

    v310 = *(v0 + 1712);
    v311 = *(v0 + 1656);
    v312 = (*(v0 + 1728) + *(*(v0 + 1720) + 72));
    *v312 = v307;
    v312[1] = v308;
    outlined init with take of URL?(v310, v311, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v313 = v496(v311, 1, v172);
    v314 = *(v0 + 1656);
    if (v313 == 1)
    {
      outlined destroy of TaskPriority?(v314, &_s9MusicCore12MetricsEventV4PageVSgMd);
      v315 = 2;
    }

    else
    {
      v315 = *(v314 + v172[11]);
      _s9MusicCore6NoticeV7VariantOWOhTm_1(v314, type metadata accessor for MetricsEvent.Page);
    }

    v316 = *(v0 + 1736);
    v317 = *(v0 + 1728);
    v318 = *(v0 + 1720);
    *(v317 + *(v318 + 68)) = v315;
    *(v317 + *(v318 + 44)) = v489;
    outlined init with take of MetricsEvent.Click(v317, v316);
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v319 = *(v0 + 1952);
    v320 = *(v0 + 1760);
    v321 = *(v0 + 1736);
    v322 = *(v0 + 1480);
    v323 = *(v0 + 1440);
    MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v321, *(v322 + v504[6]), *(v322 + v504[6] + 8), *(v322 + v504[9]), *(v322 + v504[9] + 8), *(v322 + v504[9] + 16));
    outlined consume of MetricsEvent.Click.ActionDetails(v175, v518, v537, v514, SBYTE1(v514));
    _s9MusicCore6NoticeV7VariantOWOhTm_1(v321, type metadata accessor for MetricsEvent.Click);
    outlined destroy of TaskPriority?(v320, &_s10Foundation3URLVSgMd);
    getContiguousArrayStorageType<A>(for:)(v319, v319);
    swift_allocObject();
    v324 = static Array._adoptStorage(_:count:)();
    *(v0 + 2120) = v324;
    (v522)(v325, v323, v319);
    v326 = type metadata accessor for Array();
    *(v0 + 1424) = v324;
    v327 = swift_task_alloc();
    *(v0 + 2128) = v327;
    WitnessTable = swift_getWitnessTable();
    *v327 = v0;
    v327[1] = MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:);
    v329 = *(v0 + 1952);
    v330 = *(v0 + 1488);

    return MusicLibrary.add<A, B>(_:)(v0 + 1424, v326, v329, WitnessTable, v330);
  }
}

{
  v1 = v0[182];
  v2 = static MainActor.shared.getter();
  v0[262] = v2;
  v3 = swift_task_alloc();
  v0[263] = v3;
  *(v3 + 16) = 1;
  *(v3 + 24) = v1;
  *(v3 + 32) = 0;
  v4 = swift_task_alloc();
  v0[264] = v4;
  *v4 = v0;
  v4[1] = MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:);

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 1401, v2, &protocol witness table for MainActor, 0xD00000000000003DLL, 0x80000001004C5A70, partial apply for closure #1 in static CloudLibrary.presentCloudLibraryEnabler(context:presentationSource:style:), v3, &type metadata for Bool);
}

{
  v1 = *v0;

  v2 = *(v1 + 2088);
  v3 = *(v1 + 2080);

  return _swift_task_switch(MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:), v3, v2);
}

{

  v1 = *(v0 + 2032);
  v2 = *(v0 + 2024);

  return _swift_task_switch(MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:), v2, v1);
}

{
  v1 = v0[258];
  v2 = v0[235];
  v3 = v0[231];

  v1(v2, v3);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "╰ ✅ Succeeded", v6, 2u);
  }

  v7 = v0[1];

  return v7();
}

{
  v2 = *v1;
  *(*v1 + 2136) = v0;

  if (v0)
  {
    v3 = *(v2 + 2032);
    v4 = *(v2 + 2024);
    v5 = MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:);
  }

  else
  {

    v3 = *(v2 + 2032);
    v4 = *(v2 + 2024);
    v5 = MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:);
  }

  return _swift_task_switch(v5, v4, v3);
}

{
  v1 = v0[183];

  if (v1)
  {
    v2 = v0[184];
    ObjectType = swift_getObjectType();
    (*(v2 + 16))(0, ObjectType, v2);
  }

  (*(v0[241] + 8))(v0[242], v0[240]);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "╰ ✅ Succeeded", v6, 2u);
  }

  v7 = v0[1];

  return v7();
}

{
  v2 = *v1;
  v2[272] = v0;

  outlined destroy of TaskPriority?((v2 + 48), &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMd);
  v3 = v2[254];
  v4 = v2[253];
  if (v0)
  {
    v5 = MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:);
  }

  else
  {
    v5 = MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:);
  }

  return _swift_task_switch(v5, v4, v3);
}

{

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "╰ ✅ Succeeded", v3, 2u);
  }

  v4 = *(v0 + 8);

  return v4();
}

{
  v2 = *v1;
  *(*v1 + 2192) = v0;

  v3 = *(v2 + 2032);
  v4 = *(v2 + 2024);
  if (v0)
  {
    v5 = MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:);
  }

  else
  {
    v5 = MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:);
  }

  return _swift_task_switch(v5, v4, v3);
}

{

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "╰ ✅ Succeeded", v3, 2u);
  }

  v4 = *(v0 + 8);

  return v4();
}

{
  v2 = *v1;
  v2[276] = v0;

  outlined destroy of TaskPriority?((v2 + 34), &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMd);
  v3 = v2[254];
  v4 = v2[253];
  if (v0)
  {
    v5 = MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:);
  }

  else
  {
    v5 = MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:);
  }

  return _swift_task_switch(v5, v4, v3);
}

{
  v1 = v0[200];
  v2 = v0[199];
  v3 = v0[198];

  (*(v2 + 8))(v1, v3);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "╰ ✅ Succeeded", v6, 2u);
  }

  v7 = v0[1];

  return v7();
}

{
  v2 = *v1;
  v2[278] = v0;

  outlined destroy of TaskPriority?((v2 + 2), &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMd);
  v3 = v2[254];
  v4 = v2[253];
  if (v0)
  {
    v5 = MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:);
  }

  else
  {
    v5 = MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:);
  }

  return _swift_task_switch(v5, v4, v3);
}

{
  v1 = *v0;

  v2 = *(v1 + 2032);
  v3 = *(v1 + 2024);

  return _swift_task_switch(MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:), v3, v2);
}

{

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "╰ ❌ Failed", v3, 2u);
  }

  swift_allocError();
  swift_willThrow();

  v4 = *(v0 + 8);

  return v4();
}

{
  v1 = *v0;

  v2 = *(v1 + 2032);
  v3 = *(v1 + 2024);

  return _swift_task_switch(MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:), v3, v2);
}

{

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "╰ ❌ Failed", v3, 2u);
  }

  swift_willThrow();

  v4 = *(v0 + 8);

  return v4();
}

{
  v96 = v0;
  (*(*(v0 + 1928) + 8))(*(v0 + 1936), *(v0 + 1920));
  v1 = *(v0 + 2136);
  *(v0 + 2232) = v1;
  *(v0 + 1408) = v1;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  v2 = swift_dynamicCast();
  v3 = *(v0 + 2048);
  v4 = *(v0 + 1952);
  v5 = *(v0 + 1440);
  if (v2)
  {
    v6 = *(v0 + 1976);

    v3(v6, v5, v4);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v87 = *(v0 + 2048);
      v83 = *(v0 + 1992);
      v85 = *(v0 + 1976);
      v89 = *(v0 + 1960);
      v9 = *(v0 + 1944);
      v10 = *(v0 + 1928);
      v11 = *(v0 + 1920);
      v12 = *(v0 + 1912);
      v13 = *(v0 + 1896);
      v79 = *(v0 + 1888);
      v81 = *(v0 + 1952);
      v93 = v8;
      v14 = *(v0 + 1432);
      v15 = *(v0 + 1402);
      log = v7;
      v16 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v16 = 136447234;
      v17 = MusicLibrary.ActionableState.description.getter(v14, v15);
      v19 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v17, v18, &v95);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2082;
      dispatch thunk of MusicLibrary.ItemState.addStatus.getter();
      lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus, &type metadata accessor for MusicLibrary.AddStatus);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
      (*(v10 + 8))(v9, v11);
      v23 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v20, v22, &v95);

      *(v16 + 14) = v23;
      *(v16 + 22) = 2082;
      dispatch thunk of MusicLibrary.ItemState.downloadStatus.getter();
      lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type MusicLibrary.DownloadStatus and conformance MusicLibrary.DownloadStatus, &type metadata accessor for MusicLibrary.DownloadStatus);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      (*(v13 + 8))(v12, v79);
      v27 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v24, v26, &v95);

      *(v16 + 24) = v27;
      *(v16 + 32) = 2082;
      v87(v83, v85, v81);
      v28 = String.init<A>(describing:)();
      v30 = v29;
      (*(v89 + 8))(v85, v81);
      v31 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v28, v30, &v95);

      *(v16 + 34) = v31;
      *(v16 + 42) = 2082;
      v32 = String.init<A>(describing:)();
      v34 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v32, v33, &v95);

      *(v16 + 44) = v34;
      _os_log_impl(&_mh_execute_header, log, v93, "Attempted to perform unsupported action for state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v16, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v62 = *(v0 + 1976);
      v63 = *(v0 + 1960);
      v64 = *(v0 + 1952);

      (*(v63 + 8))(v62, v64);
    }

    *(v0 + 2240) = lazy protocol witness table accessor for type MusicLibrary.ActionableState.Error and conformance MusicLibrary.ActionableState.Error();
    v65 = swift_allocError();
    *(v0 + 2248) = v65;
    v66 = swift_task_alloc();
    *(v0 + 2256) = v66;
    *v66 = v0;
    v66[1] = MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:);
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v65;
  }

  else
  {
    v35 = *(v0 + 1968);

    v3(v35, v5, v4);

    swift_errorRetain();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v88 = *(v0 + 2048);
      v84 = *(v0 + 1992);
      v86 = *(v0 + 1968);
      v90 = *(v0 + 1960);
      v38 = *(v0 + 1944);
      v39 = *(v0 + 1928);
      v40 = *(v0 + 1920);
      v80 = *(v0 + 1896);
      v82 = *(v0 + 1952);
      v77 = *(v0 + 1912);
      v78 = *(v0 + 1888);
      v94 = v37;
      v41 = *(v0 + 1432);
      v42 = *(v0 + 1402);
      loga = v36;
      v43 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v43 = 136447234;
      v44 = MusicLibrary.ActionableState.description.getter(v41, v42);
      v46 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v44, v45, &v95);

      *(v43 + 4) = v46;
      *(v43 + 12) = 2082;
      dispatch thunk of MusicLibrary.ItemState.addStatus.getter();
      lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus, &type metadata accessor for MusicLibrary.AddStatus);
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v48;
      (*(v39 + 8))(v38, v40);
      v50 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v47, v49, &v95);

      *(v43 + 14) = v50;
      *(v43 + 22) = 2082;
      dispatch thunk of MusicLibrary.ItemState.downloadStatus.getter();
      lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type MusicLibrary.DownloadStatus and conformance MusicLibrary.DownloadStatus, &type metadata accessor for MusicLibrary.DownloadStatus);
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      (*(v80 + 8))(v77, v78);
      v54 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v51, v53, &v95);

      *(v43 + 24) = v54;
      *(v43 + 32) = 2082;
      v88(v84, v86, v82);
      v55 = String.init<A>(describing:)();
      v57 = v56;
      (*(v90 + 8))(v86, v82);
      v58 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v55, v57, &v95);

      *(v43 + 34) = v58;
      *(v43 + 42) = 2082;
      *(v0 + 1416) = v1;
      swift_errorRetain();
      v59 = String.init<A>(describing:)();
      v61 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v59, v60, &v95);

      *(v43 + 44) = v61;
      _os_log_impl(&_mh_execute_header, loga, v94, "Action failed for button state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v43, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v72 = *(v0 + 1968);
      v73 = *(v0 + 1960);
      v74 = *(v0 + 1952);

      (*(v73 + 8))(v72, v74);
    }

    v75 = swift_task_alloc();
    *(v0 + 2264) = v75;
    *v75 = v0;
    v75[1] = MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:);
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v1;
  }

  return presentTTRIfNeeded #1 <A>(for:) in MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:)(v71, v69, v70, v68, v67);
}

{
  v96 = v0;

  v1 = *(v0 + 2176);
  *(v0 + 2232) = v1;
  *(v0 + 1408) = v1;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  v2 = swift_dynamicCast();
  v3 = *(v0 + 2048);
  v4 = *(v0 + 1952);
  v5 = *(v0 + 1440);
  if (v2)
  {
    v6 = *(v0 + 1976);

    v3(v6, v5, v4);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v87 = *(v0 + 2048);
      v83 = *(v0 + 1992);
      v85 = *(v0 + 1976);
      v89 = *(v0 + 1960);
      v9 = *(v0 + 1944);
      v10 = *(v0 + 1928);
      v11 = *(v0 + 1920);
      v12 = *(v0 + 1912);
      v13 = *(v0 + 1896);
      v79 = *(v0 + 1888);
      v81 = *(v0 + 1952);
      v93 = v8;
      v14 = *(v0 + 1432);
      v15 = *(v0 + 1402);
      log = v7;
      v16 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v16 = 136447234;
      v17 = MusicLibrary.ActionableState.description.getter(v14, v15);
      v19 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v17, v18, &v95);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2082;
      dispatch thunk of MusicLibrary.ItemState.addStatus.getter();
      lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus, &type metadata accessor for MusicLibrary.AddStatus);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
      (*(v10 + 8))(v9, v11);
      v23 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v20, v22, &v95);

      *(v16 + 14) = v23;
      *(v16 + 22) = 2082;
      dispatch thunk of MusicLibrary.ItemState.downloadStatus.getter();
      lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type MusicLibrary.DownloadStatus and conformance MusicLibrary.DownloadStatus, &type metadata accessor for MusicLibrary.DownloadStatus);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      (*(v13 + 8))(v12, v79);
      v27 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v24, v26, &v95);

      *(v16 + 24) = v27;
      *(v16 + 32) = 2082;
      v87(v83, v85, v81);
      v28 = String.init<A>(describing:)();
      v30 = v29;
      (*(v89 + 8))(v85, v81);
      v31 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v28, v30, &v95);

      *(v16 + 34) = v31;
      *(v16 + 42) = 2082;
      v32 = String.init<A>(describing:)();
      v34 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v32, v33, &v95);

      *(v16 + 44) = v34;
      _os_log_impl(&_mh_execute_header, log, v93, "Attempted to perform unsupported action for state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v16, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v62 = *(v0 + 1976);
      v63 = *(v0 + 1960);
      v64 = *(v0 + 1952);

      (*(v63 + 8))(v62, v64);
    }

    *(v0 + 2240) = lazy protocol witness table accessor for type MusicLibrary.ActionableState.Error and conformance MusicLibrary.ActionableState.Error();
    v65 = swift_allocError();
    *(v0 + 2248) = v65;
    v66 = swift_task_alloc();
    *(v0 + 2256) = v66;
    *v66 = v0;
    v66[1] = MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:);
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v65;
  }

  else
  {
    v35 = *(v0 + 1968);

    v3(v35, v5, v4);

    swift_errorRetain();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v88 = *(v0 + 2048);
      v84 = *(v0 + 1992);
      v86 = *(v0 + 1968);
      v90 = *(v0 + 1960);
      v38 = *(v0 + 1944);
      v39 = *(v0 + 1928);
      v40 = *(v0 + 1920);
      v80 = *(v0 + 1896);
      v82 = *(v0 + 1952);
      v77 = *(v0 + 1912);
      v78 = *(v0 + 1888);
      v94 = v37;
      v41 = *(v0 + 1432);
      v42 = *(v0 + 1402);
      loga = v36;
      v43 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v43 = 136447234;
      v44 = MusicLibrary.ActionableState.description.getter(v41, v42);
      v46 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v44, v45, &v95);

      *(v43 + 4) = v46;
      *(v43 + 12) = 2082;
      dispatch thunk of MusicLibrary.ItemState.addStatus.getter();
      lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus, &type metadata accessor for MusicLibrary.AddStatus);
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v48;
      (*(v39 + 8))(v38, v40);
      v50 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v47, v49, &v95);

      *(v43 + 14) = v50;
      *(v43 + 22) = 2082;
      dispatch thunk of MusicLibrary.ItemState.downloadStatus.getter();
      lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type MusicLibrary.DownloadStatus and conformance MusicLibrary.DownloadStatus, &type metadata accessor for MusicLibrary.DownloadStatus);
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      (*(v80 + 8))(v77, v78);
      v54 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v51, v53, &v95);

      *(v43 + 24) = v54;
      *(v43 + 32) = 2082;
      v88(v84, v86, v82);
      v55 = String.init<A>(describing:)();
      v57 = v56;
      (*(v90 + 8))(v86, v82);
      v58 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v55, v57, &v95);

      *(v43 + 34) = v58;
      *(v43 + 42) = 2082;
      *(v0 + 1416) = v1;
      swift_errorRetain();
      v59 = String.init<A>(describing:)();
      v61 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v59, v60, &v95);

      *(v43 + 44) = v61;
      _os_log_impl(&_mh_execute_header, loga, v94, "Action failed for button state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v43, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v72 = *(v0 + 1968);
      v73 = *(v0 + 1960);
      v74 = *(v0 + 1952);

      (*(v73 + 8))(v72, v74);
    }

    v75 = swift_task_alloc();
    *(v0 + 2264) = v75;
    *v75 = v0;
    v75[1] = MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:);
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v1;
  }

  return presentTTRIfNeeded #1 <A>(for:) in MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:)(v71, v69, v70, v68, v67);
}

{
  v96 = v0;
  v1 = *(v0 + 2192);
  *(v0 + 2232) = v1;
  *(v0 + 1408) = v1;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  v2 = swift_dynamicCast();
  v3 = *(v0 + 2048);
  v4 = *(v0 + 1952);
  v5 = *(v0 + 1440);
  if (v2)
  {
    v6 = *(v0 + 1976);

    v3(v6, v5, v4);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v87 = *(v0 + 2048);
      v83 = *(v0 + 1992);
      v85 = *(v0 + 1976);
      v89 = *(v0 + 1960);
      v9 = *(v0 + 1944);
      v10 = *(v0 + 1928);
      v11 = *(v0 + 1920);
      v12 = *(v0 + 1912);
      v13 = *(v0 + 1896);
      v79 = *(v0 + 1888);
      v81 = *(v0 + 1952);
      v93 = v8;
      v14 = *(v0 + 1432);
      v15 = *(v0 + 1402);
      log = v7;
      v16 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v16 = 136447234;
      v17 = MusicLibrary.ActionableState.description.getter(v14, v15);
      v19 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v17, v18, &v95);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2082;
      dispatch thunk of MusicLibrary.ItemState.addStatus.getter();
      lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus, &type metadata accessor for MusicLibrary.AddStatus);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
      (*(v10 + 8))(v9, v11);
      v23 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v20, v22, &v95);

      *(v16 + 14) = v23;
      *(v16 + 22) = 2082;
      dispatch thunk of MusicLibrary.ItemState.downloadStatus.getter();
      lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type MusicLibrary.DownloadStatus and conformance MusicLibrary.DownloadStatus, &type metadata accessor for MusicLibrary.DownloadStatus);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      (*(v13 + 8))(v12, v79);
      v27 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v24, v26, &v95);

      *(v16 + 24) = v27;
      *(v16 + 32) = 2082;
      v87(v83, v85, v81);
      v28 = String.init<A>(describing:)();
      v30 = v29;
      (*(v89 + 8))(v85, v81);
      v31 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v28, v30, &v95);

      *(v16 + 34) = v31;
      *(v16 + 42) = 2082;
      v32 = String.init<A>(describing:)();
      v34 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v32, v33, &v95);

      *(v16 + 44) = v34;
      _os_log_impl(&_mh_execute_header, log, v93, "Attempted to perform unsupported action for state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v16, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v62 = *(v0 + 1976);
      v63 = *(v0 + 1960);
      v64 = *(v0 + 1952);

      (*(v63 + 8))(v62, v64);
    }

    *(v0 + 2240) = lazy protocol witness table accessor for type MusicLibrary.ActionableState.Error and conformance MusicLibrary.ActionableState.Error();
    v65 = swift_allocError();
    *(v0 + 2248) = v65;
    v66 = swift_task_alloc();
    *(v0 + 2256) = v66;
    *v66 = v0;
    v66[1] = MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:);
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v65;
  }

  else
  {
    v35 = *(v0 + 1968);

    v3(v35, v5, v4);

    swift_errorRetain();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v88 = *(v0 + 2048);
      v84 = *(v0 + 1992);
      v86 = *(v0 + 1968);
      v90 = *(v0 + 1960);
      v38 = *(v0 + 1944);
      v39 = *(v0 + 1928);
      v40 = *(v0 + 1920);
      v80 = *(v0 + 1896);
      v82 = *(v0 + 1952);
      v77 = *(v0 + 1912);
      v78 = *(v0 + 1888);
      v94 = v37;
      v41 = *(v0 + 1432);
      v42 = *(v0 + 1402);
      loga = v36;
      v43 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v43 = 136447234;
      v44 = MusicLibrary.ActionableState.description.getter(v41, v42);
      v46 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v44, v45, &v95);

      *(v43 + 4) = v46;
      *(v43 + 12) = 2082;
      dispatch thunk of MusicLibrary.ItemState.addStatus.getter();
      lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus, &type metadata accessor for MusicLibrary.AddStatus);
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v48;
      (*(v39 + 8))(v38, v40);
      v50 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v47, v49, &v95);

      *(v43 + 14) = v50;
      *(v43 + 22) = 2082;
      dispatch thunk of MusicLibrary.ItemState.downloadStatus.getter();
      lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type MusicLibrary.DownloadStatus and conformance MusicLibrary.DownloadStatus, &type metadata accessor for MusicLibrary.DownloadStatus);
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      (*(v80 + 8))(v77, v78);
      v54 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v51, v53, &v95);

      *(v43 + 24) = v54;
      *(v43 + 32) = 2082;
      v88(v84, v86, v82);
      v55 = String.init<A>(describing:)();
      v57 = v56;
      (*(v90 + 8))(v86, v82);
      v58 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v55, v57, &v95);

      *(v43 + 34) = v58;
      *(v43 + 42) = 2082;
      *(v0 + 1416) = v1;
      swift_errorRetain();
      v59 = String.init<A>(describing:)();
      v61 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v59, v60, &v95);

      *(v43 + 44) = v61;
      _os_log_impl(&_mh_execute_header, loga, v94, "Action failed for button state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v43, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v72 = *(v0 + 1968);
      v73 = *(v0 + 1960);
      v74 = *(v0 + 1952);

      (*(v73 + 8))(v72, v74);
    }

    v75 = swift_task_alloc();
    *(v0 + 2264) = v75;
    *v75 = v0;
    v75[1] = MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:);
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v1;
  }

  return presentTTRIfNeeded #1 <A>(for:) in MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:)(v71, v69, v70, v68, v67);
}

{
  v96 = v0;
  (*(*(v0 + 1592) + 8))(*(v0 + 1600), *(v0 + 1584));
  v1 = *(v0 + 2208);
  *(v0 + 2232) = v1;
  *(v0 + 1408) = v1;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  v2 = swift_dynamicCast();
  v3 = *(v0 + 2048);
  v4 = *(v0 + 1952);
  v5 = *(v0 + 1440);
  if (v2)
  {
    v6 = *(v0 + 1976);

    v3(v6, v5, v4);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v87 = *(v0 + 2048);
      v83 = *(v0 + 1992);
      v85 = *(v0 + 1976);
      v89 = *(v0 + 1960);
      v9 = *(v0 + 1944);
      v10 = *(v0 + 1928);
      v11 = *(v0 + 1920);
      v12 = *(v0 + 1912);
      v13 = *(v0 + 1896);
      v79 = *(v0 + 1888);
      v81 = *(v0 + 1952);
      v93 = v8;
      v14 = *(v0 + 1432);
      v15 = *(v0 + 1402);
      log = v7;
      v16 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v16 = 136447234;
      v17 = MusicLibrary.ActionableState.description.getter(v14, v15);
      v19 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v17, v18, &v95);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2082;
      dispatch thunk of MusicLibrary.ItemState.addStatus.getter();
      lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus, &type metadata accessor for MusicLibrary.AddStatus);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
      (*(v10 + 8))(v9, v11);
      v23 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v20, v22, &v95);

      *(v16 + 14) = v23;
      *(v16 + 22) = 2082;
      dispatch thunk of MusicLibrary.ItemState.downloadStatus.getter();
      lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type MusicLibrary.DownloadStatus and conformance MusicLibrary.DownloadStatus, &type metadata accessor for MusicLibrary.DownloadStatus);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      (*(v13 + 8))(v12, v79);
      v27 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v24, v26, &v95);

      *(v16 + 24) = v27;
      *(v16 + 32) = 2082;
      v87(v83, v85, v81);
      v28 = String.init<A>(describing:)();
      v30 = v29;
      (*(v89 + 8))(v85, v81);
      v31 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v28, v30, &v95);

      *(v16 + 34) = v31;
      *(v16 + 42) = 2082;
      v32 = String.init<A>(describing:)();
      v34 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v32, v33, &v95);

      *(v16 + 44) = v34;
      _os_log_impl(&_mh_execute_header, log, v93, "Attempted to perform unsupported action for state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v16, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v62 = *(v0 + 1976);
      v63 = *(v0 + 1960);
      v64 = *(v0 + 1952);

      (*(v63 + 8))(v62, v64);
    }

    *(v0 + 2240) = lazy protocol witness table accessor for type MusicLibrary.ActionableState.Error and conformance MusicLibrary.ActionableState.Error();
    v65 = swift_allocError();
    *(v0 + 2248) = v65;
    v66 = swift_task_alloc();
    *(v0 + 2256) = v66;
    *v66 = v0;
    v66[1] = MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:);
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v65;
  }

  else
  {
    v35 = *(v0 + 1968);

    v3(v35, v5, v4);

    swift_errorRetain();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v88 = *(v0 + 2048);
      v84 = *(v0 + 1992);
      v86 = *(v0 + 1968);
      v90 = *(v0 + 1960);
      v38 = *(v0 + 1944);
      v39 = *(v0 + 1928);
      v40 = *(v0 + 1920);
      v80 = *(v0 + 1896);
      v82 = *(v0 + 1952);
      v77 = *(v0 + 1912);
      v78 = *(v0 + 1888);
      v94 = v37;
      v41 = *(v0 + 1432);
      v42 = *(v0 + 1402);
      loga = v36;
      v43 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v43 = 136447234;
      v44 = MusicLibrary.ActionableState.description.getter(v41, v42);
      v46 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v44, v45, &v95);

      *(v43 + 4) = v46;
      *(v43 + 12) = 2082;
      dispatch thunk of MusicLibrary.ItemState.addStatus.getter();
      lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus, &type metadata accessor for MusicLibrary.AddStatus);
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v48;
      (*(v39 + 8))(v38, v40);
      v50 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v47, v49, &v95);

      *(v43 + 14) = v50;
      *(v43 + 22) = 2082;
      dispatch thunk of MusicLibrary.ItemState.downloadStatus.getter();
      lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type MusicLibrary.DownloadStatus and conformance MusicLibrary.DownloadStatus, &type metadata accessor for MusicLibrary.DownloadStatus);
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      (*(v80 + 8))(v77, v78);
      v54 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v51, v53, &v95);

      *(v43 + 24) = v54;
      *(v43 + 32) = 2082;
      v88(v84, v86, v82);
      v55 = String.init<A>(describing:)();
      v57 = v56;
      (*(v90 + 8))(v86, v82);
      v58 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v55, v57, &v95);

      *(v43 + 34) = v58;
      *(v43 + 42) = 2082;
      *(v0 + 1416) = v1;
      swift_errorRetain();
      v59 = String.init<A>(describing:)();
      v61 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v59, v60, &v95);

      *(v43 + 44) = v61;
      _os_log_impl(&_mh_execute_header, loga, v94, "Action failed for button state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v43, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v72 = *(v0 + 1968);
      v73 = *(v0 + 1960);
      v74 = *(v0 + 1952);

      (*(v73 + 8))(v72, v74);
    }

    v75 = swift_task_alloc();
    *(v0 + 2264) = v75;
    *v75 = v0;
    v75[1] = MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:);
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v1;
  }

  return presentTTRIfNeeded #1 <A>(for:) in MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:)(v71, v69, v70, v68, v67);
}

{
  v96 = v0;
  v1 = *(v0 + 2224);
  *(v0 + 2232) = v1;
  *(v0 + 1408) = v1;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  v2 = swift_dynamicCast();
  v3 = *(v0 + 2048);
  v4 = *(v0 + 1952);
  v5 = *(v0 + 1440);
  if (v2)
  {
    v6 = *(v0 + 1976);

    v3(v6, v5, v4);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v87 = *(v0 + 2048);
      v83 = *(v0 + 1992);
      v85 = *(v0 + 1976);
      v89 = *(v0 + 1960);
      v9 = *(v0 + 1944);
      v10 = *(v0 + 1928);
      v11 = *(v0 + 1920);
      v12 = *(v0 + 1912);
      v13 = *(v0 + 1896);
      v79 = *(v0 + 1888);
      v81 = *(v0 + 1952);
      v93 = v8;
      v14 = *(v0 + 1432);
      v15 = *(v0 + 1402);
      log = v7;
      v16 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v16 = 136447234;
      v17 = MusicLibrary.ActionableState.description.getter(v14, v15);
      v19 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v17, v18, &v95);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2082;
      dispatch thunk of MusicLibrary.ItemState.addStatus.getter();
      lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus, &type metadata accessor for MusicLibrary.AddStatus);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
      (*(v10 + 8))(v9, v11);
      v23 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v20, v22, &v95);

      *(v16 + 14) = v23;
      *(v16 + 22) = 2082;
      dispatch thunk of MusicLibrary.ItemState.downloadStatus.getter();
      lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type MusicLibrary.DownloadStatus and conformance MusicLibrary.DownloadStatus, &type metadata accessor for MusicLibrary.DownloadStatus);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      (*(v13 + 8))(v12, v79);
      v27 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v24, v26, &v95);

      *(v16 + 24) = v27;
      *(v16 + 32) = 2082;
      v87(v83, v85, v81);
      v28 = String.init<A>(describing:)();
      v30 = v29;
      (*(v89 + 8))(v85, v81);
      v31 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v28, v30, &v95);

      *(v16 + 34) = v31;
      *(v16 + 42) = 2082;
      v32 = String.init<A>(describing:)();
      v34 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v32, v33, &v95);

      *(v16 + 44) = v34;
      _os_log_impl(&_mh_execute_header, log, v93, "Attempted to perform unsupported action for state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v16, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v62 = *(v0 + 1976);
      v63 = *(v0 + 1960);
      v64 = *(v0 + 1952);

      (*(v63 + 8))(v62, v64);
    }

    *(v0 + 2240) = lazy protocol witness table accessor for type MusicLibrary.ActionableState.Error and conformance MusicLibrary.ActionableState.Error();
    v65 = swift_allocError();
    *(v0 + 2248) = v65;
    v66 = swift_task_alloc();
    *(v0 + 2256) = v66;
    *v66 = v0;
    v66[1] = MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:);
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v65;
  }

  else
  {
    v35 = *(v0 + 1968);

    v3(v35, v5, v4);

    swift_errorRetain();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v88 = *(v0 + 2048);
      v84 = *(v0 + 1992);
      v86 = *(v0 + 1968);
      v90 = *(v0 + 1960);
      v38 = *(v0 + 1944);
      v39 = *(v0 + 1928);
      v40 = *(v0 + 1920);
      v80 = *(v0 + 1896);
      v82 = *(v0 + 1952);
      v77 = *(v0 + 1912);
      v78 = *(v0 + 1888);
      v94 = v37;
      v41 = *(v0 + 1432);
      v42 = *(v0 + 1402);
      loga = v36;
      v43 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v43 = 136447234;
      v44 = MusicLibrary.ActionableState.description.getter(v41, v42);
      v46 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v44, v45, &v95);

      *(v43 + 4) = v46;
      *(v43 + 12) = 2082;
      dispatch thunk of MusicLibrary.ItemState.addStatus.getter();
      lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus, &type metadata accessor for MusicLibrary.AddStatus);
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v48;
      (*(v39 + 8))(v38, v40);
      v50 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v47, v49, &v95);

      *(v43 + 14) = v50;
      *(v43 + 22) = 2082;
      dispatch thunk of MusicLibrary.ItemState.downloadStatus.getter();
      lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type MusicLibrary.DownloadStatus and conformance MusicLibrary.DownloadStatus, &type metadata accessor for MusicLibrary.DownloadStatus);
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      (*(v80 + 8))(v77, v78);
      v54 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v51, v53, &v95);

      *(v43 + 24) = v54;
      *(v43 + 32) = 2082;
      v88(v84, v86, v82);
      v55 = String.init<A>(describing:)();
      v57 = v56;
      (*(v90 + 8))(v86, v82);
      v58 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v55, v57, &v95);

      *(v43 + 34) = v58;
      *(v43 + 42) = 2082;
      *(v0 + 1416) = v1;
      swift_errorRetain();
      v59 = String.init<A>(describing:)();
      v61 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v59, v60, &v95);

      *(v43 + 44) = v61;
      _os_log_impl(&_mh_execute_header, loga, v94, "Action failed for button state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v43, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v72 = *(v0 + 1968);
      v73 = *(v0 + 1960);
      v74 = *(v0 + 1952);

      (*(v73 + 8))(v72, v74);
    }

    v75 = swift_task_alloc();
    *(v0 + 2264) = v75;
    *v75 = v0;
    v75[1] = MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:);
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v1;
  }

  return presentTTRIfNeeded #1 <A>(for:) in MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:)(v71, v69, v70, v68, v67);
}

uint64_t Logger.libraryActionableState.unsafeMutableAddressor()
{
  if (one-time initialization token for libraryActionableState != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, static Logger.libraryActionableState);
}

uint64_t presentTTRIfNeeded #1 <A>(for:) in MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:)(uint64_t a1, uint64_t a2, __int16 a3, void *a4, uint64_t a5)
{
  *(v5 + 272) = a4;
  *(v5 + 280) = a5;
  *(v5 + 384) = a3;
  *(v5 + 256) = a1;
  *(v5 + 264) = a2;
  *(v5 + 288) = *a4;
  v6 = type metadata accessor for UUID();
  *(v5 + 296) = v6;
  *(v5 + 304) = *(v6 - 8);
  *(v5 + 312) = swift_task_alloc();
  v7 = type metadata accessor for URL();
  *(v5 + 320) = v7;
  v8 = *(v7 - 8);
  *(v5 + 328) = v8;
  *(v5 + 336) = *(v8 + 64);
  *(v5 + 344) = swift_task_alloc();
  *(v5 + 352) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  *(v5 + 360) = swift_task_alloc();
  *(v5 + 368) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v5 + 376) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(presentTTRIfNeeded #1 <A>(for:) in MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:), v10, v9);
}

uint64_t presentTTRIfNeeded #1 <A>(for:) in MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:)()
{
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 256);
  v4 = *(v0 + 384);

  _StringGuts.grow(_:)(91);
  v5._countAndFlagsBits = 0xD000000000000032;
  v5._object = 0x80000001004CB7E0;
  String.append(_:)(v5);
  *(v0 + 232) = v3;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  v6._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v6);

  v7._object = 0x80000001004CB820;
  v7._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v7);
  v8._countAndFlagsBits = MusicLibrary.ActionableState.description.getter(v2, v4);
  String.append(_:)(v8);

  v9._countAndFlagsBits = 0x53206D6574490A0ALL;
  v9._object = 0xEE00203A65746174;
  String.append(_:)(v9);
  *(v0 + 240) = v1;
  type metadata accessor for MusicLibrary.ItemState();

  v10._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v10);

  v11._countAndFlagsBits = 10;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);
  v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4DataVTt0gq5Tf4g_n(_swiftEmptyArrayStorage);
  if (one-time initialization token for isInternalInstall != -1)
  {
    v62 = v12;
    swift_once();
    v12 = v62;
  }

  if (static DeviceCapabilities.isInternalInstall == 1)
  {
    v14 = *(v0 + 360);
    v13 = *(v0 + 368);
    v16 = *(v0 + 320);
    v15 = *(v0 + 328);
    static URL.tapToRadar(title:description:screenshots:attachments:files:keywords:withDevicePrefix:)(0xD00000000000001DLL, 0x80000001004CB7C0, 0, 0xE000000000000000, _swiftEmptyArrayStorage, v12, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, v13, 1u);

    outlined init with copy of TaskPriority?(v13, v14, &_s10Foundation3URLVSgMd);
    if ((*(v15 + 48))(v14, 1, v16) == 1)
    {
      v17 = *(v0 + 360);
      outlined destroy of TaskPriority?(*(v0 + 368), &_s10Foundation3URLVSgMd);
      outlined destroy of TaskPriority?(v17, &_s10Foundation3URLVSgMd);
    }

    else
    {
      v20 = *(*(v0 + 328) + 32);
      v20(*(v0 + 352), *(v0 + 360), *(v0 + 320));
      v21 = [objc_opt_self() sharedApplication];
      URL._bridgeToObjectiveC()(v22);
      v24 = v23;
      v25 = [v21 canOpenURL:v23];

      v26 = *(v0 + 368);
      v27 = *(v0 + 352);
      if (v25)
      {
        v70 = *(v0 + 368);
        v28 = *(v0 + 344);
        v73 = v0 + 112;
        v30 = *(v0 + 320);
        v29 = *(v0 + 328);
        v31 = *(v0 + 304);
        v32 = *(v0 + 312);
        v69 = *(v0 + 296);
        (*(v29 + 16))(v28, v27, v30);
        v67 = v20;
        v33 = (*(v29 + 80) + 16) & ~*(v29 + 80);
        v72 = swift_allocObject();
        v67(v72 + v33, v28, v30);
        UUID.init()();
        v66 = UUID.uuidString.getter();
        v35 = v34;
        v68 = *(v31 + 8);
        v68(v32, v69);
        (*(v29 + 8))(v27, v30);
        outlined destroy of TaskPriority?(v70, &_s10Foundation3URLVSgMd);
        if (one-time initialization token for libraryActionableState != -1)
        {
          swift_once();
        }

        v71 = v35;
        v63 = type metadata accessor for Logger();
        __swift_project_value_buffer(v63, static Logger.libraryActionableState);
        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          *v38 = 0;
          _os_log_impl(&_mh_execute_header, v36, v37, "|—● Presenting Tap-To-Radar alert", v38, 2u);
        }

        v39 = *(v0 + 312);
        v40 = *(v0 + 296);
        v65 = *(v0 + 280);
        v41 = *(v0 + 256);

        *(v0 + 248) = v41;
        swift_errorRetain();
        v74 = String.init<A>(describing:)();
        v64 = v42;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMd);
        v43 = swift_allocObject();
        *(v43 + 16) = xmmword_1004F2EF0;
        *(v43 + 32) = v66;
        *(v43 + 40) = v71;
        strcpy((v43 + 48), "File a Radar");
        *(v43 + 61) = 0;
        *(v43 + 62) = -5120;
        *(v43 + 64) = 2;
        *(v43 + 72) = &async function pointer to partial apply for closure #1 in static Alert.Action.tapToRadar(title:description:screenshots:attachments:files:keywords:withDevicePrefix:);
        *(v43 + 80) = v72;

        UUID.init()();
        v44 = UUID.uuidString.getter();
        v46 = v45;
        v68(v39, v40);
        *(v43 + 88) = v44;
        *(v43 + 96) = v46;
        *(v43 + 104) = 19279;
        *(v43 + 112) = 0xE200000000000000;
        *(v43 + 120) = 2;
        *(v43 + 128) = 0;
        *(v43 + 136) = 0;
        *(v0 + 112) = xmmword_1004F2FE0;
        *(v0 + 128) = v74;
        *(v0 + 136) = v64;
        *(v0 + 144) = 0;
        *(v0 + 152) = 0;
        *(v0 + 160) = 1;
        *(v0 + 168) = v43;
        *(v0 + 176) = 0;
        v47 = specialized static UIAlertController.alertController(with:overrideStyle:)(v73, 0, 1);
        v48 = v47;
        v49 = *(v65 + 80);
        if (v49)
        {
          v50 = *(v0 + 144);
          v51 = one-time initialization token for logger;

          if (v51 != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v63, static PresentationSource.logger);
          v52 = Logger.logObject.getter();
          v53 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v52, v53))
          {
            v54 = swift_slowAlloc();
            *v54 = 0;
            _os_log_impl(&_mh_execute_header, v52, v53, "Deferring presentation…", v54, 2u);
          }

          v55 = *(v0 + 280);

          v56 = objc_allocWithZone(MSVBlockGuard);
          *(v0 + 216) = closure #1 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:);
          *(v0 + 224) = 0;
          *(v0 + 184) = _NSConcreteStackBlock;
          *(v0 + 192) = 1107296256;
          *(v0 + 200) = thunk for @escaping @callee_guaranteed (@unowned MSVBlockGuardInterruptionReason) -> ();
          *(v0 + 208) = &block_descriptor_114_0;
          v57 = _Block_copy((v0 + 184));
          v58 = [v56 initWithTimeout:v57 interruptionHandler:10.0];
          _Block_release(v57);

          outlined init with copy of PresentationSource(v55, v0 + 16);
          v59 = swift_allocObject();
          *(v59 + 16) = v58;
          outlined init with take of PresentationSource(v0 + 16, v59 + 24);
          *(v59 + 120) = v48;
          *(v59 + 128) = v50;
          *(v59 + 129) = 1;
          *(v59 + 136) = 0;
          *(v59 + 144) = 0;
          v60 = v58;
          v61 = v48;
          v49(v55, v61, closure #2 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)partial apply, v59);
          outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v49);

          outlined destroy of Alert(v73);
        }

        else
        {
          PresentationSource._present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v47, *(v0 + 144), 1, 0, 0);

          outlined destroy of Alert(v73);
        }
      }

      else
      {
        (*(*(v0 + 328) + 8))(*(v0 + 352), *(v0 + 320));
        outlined destroy of TaskPriority?(v26, &_s10Foundation3URLVSgMd);
      }
    }
  }

  else
  {
  }

  v18 = *(v0 + 8);

  return v18();
}

char *MusicLibrary.ActionableStateController.__allocating_init(item:library:actionsObserver:onStateUpdate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  swift_allocObject();
  v14 = specialized MusicLibrary.ActionableStateController.init(item:library:actionsObserver:onStateUpdate:)(a1, a2, a3, a4, a5, a6);
  (*(*(*(v7 + 80) - 8) + 8))(a1);
  return v14;
}

char *MusicLibrary.ActionableStateController.init(item:library:actionsObserver:onStateUpdate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *v6;
  v9 = specialized MusicLibrary.ActionableStateController.init(item:library:actionsObserver:onStateUpdate:)(a1, a2, a3, a4, a5, a6);
  (*(*(*(v8 + 80) - 8) + 8))(a1);
  return v9;
}

uint64_t closure #1 in MusicLibrary.ActionableStateController.init(item:library:actionsObserver:onStateUpdate:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE14DownloadStatusOSgMd);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusOSgMd);
  __chkstk_darwin(v3 - 8);
  v5 = (&v9 - v4);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = type metadata accessor for MusicLibrary.AddStatus();
    (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
    v8 = type metadata accessor for MusicLibrary.DownloadStatus();
    (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
    MusicLibrary.ActionableStateController.updateState(addStatus:downloadStatus:)(v5, v2);

    outlined destroy of TaskPriority?(v2, &_s8MusicKit0A7LibraryC0aB8InternalE14DownloadStatusOSgMd);
    return outlined destroy of TaskPriority?(v5, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusOSgMd);
  }

  return result;
}

uint64_t MusicLibrary.ActionableStateController.item.didset(uint64_t a1)
{
  v85 = a1;
  v2 = *v1;
  v96 = type metadata accessor for Album();
  v87 = *(v96 - 8);
  __chkstk_darwin(v96);
  v95 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE14DownloadStatusOSgMd);
  __chkstk_darwin(v4 - 8);
  v91 = &v77 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusOSgMd);
  __chkstk_darwin(v6 - 8);
  v90 = &v77 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVyAA8PlaylistV5EntryVGSgMd);
  v9 = __chkstk_darwin(v8 - 8);
  v81 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v89 = &v77 - v11;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVyAA8PlaylistV5EntryVGMd);
  v88 = *(v99 - 8);
  v12 = __chkstk_darwin(v99);
  v80 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v86 = &v77 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistVSgMd);
  v16 = __chkstk_darwin(v15 - 8);
  v84 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v97 = &v77 - v18;
  v19 = type metadata accessor for Playlist();
  v20 = __chkstk_darwin(v19);
  v82 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v92 = &v77 - v23;
  v24 = *(v2 + 80);
  v25 = *(v24 - 8);
  v26 = __chkstk_darwin(v22);
  v94 = &v77 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v83 = &v77 - v29;
  v30 = __chkstk_darwin(v28);
  v32 = &v77 - v31;
  __chkstk_darwin(v30);
  v34 = &v77 - v33;
  v35 = v2;
  v37 = v36;
  v38 = *(v35 + 128);
  swift_beginAccess();
  v39 = *(v25 + 16);
  v39(v34, &v1[v38], v24);
  dispatch thunk of MusicLibrary.ItemState.item.setter();
  v98 = v1;
  v93 = v38;
  v40 = &v1[v38];
  v41 = v97;
  v101 = v39;
  v102 = v25 + 16;
  v39(v32, v40, v24);
  v100 = v24;
  v42 = swift_dynamicCast();
  v43 = *(v37 + 56);
  if ((v42 & 1) == 0)
  {
    v43(v41, 1, 1, v19);
    v47 = &_s8MusicKit8PlaylistVSgMd;
    goto LABEL_5;
  }

  v43(v41, 0, 1, v19);
  v44 = *(v37 + 32);
  v45 = v92;
  v44(v92, v41, v19);
  v41 = v89;
  Playlist.entries.getter();
  v46 = v88;
  v97 = *(v88 + 48);
  if ((v97)(v41, 1, v99) == 1)
  {
    (*(v37 + 8))(v45, v19);
    v47 = &_s8MusicKit0A14ItemCollectionVyAA8PlaylistV5EntryVGSgMd;
LABEL_5:
    v48 = v41;
LABEL_6:
    outlined destroy of TaskPriority?(v48, v47);
    v49 = v96;
    v50 = v98;
    goto LABEL_7;
  }

  v78 = v44;
  v79 = v37;
  v57 = *(v46 + 32);
  v58 = v86;
  v89 = (v46 + 32);
  v77 = v57;
  v57(v86, v41, v99);
  v101(v83, v85, v100);
  v59 = v84;
  v60 = v19;
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v46 + 8))(v58, v99);
    (*(v79 + 8))(v92, v19);
    v43(v59, 1, 1, v19);
    v47 = &_s8MusicKit8PlaylistVSgMd;
    v48 = v59;
    goto LABEL_6;
  }

  v61 = v46;
  v43(v59, 0, 1, v19);
  v62 = v82;
  v78(v82, v59, v19);
  v63 = v81;
  Playlist.entries.getter();
  v64 = v99;
  if ((v97)(v63, 1, v99) == 1)
  {
    v65 = *(v79 + 8);
    v65(v62, v60);
    (*(v61 + 8))(v86, v64);
    v65(v92, v60);
    v47 = &_s8MusicKit0A14ItemCollectionVyAA8PlaylistV5EntryVGSgMd;
    v48 = v63;
    goto LABEL_6;
  }

  v66 = v60;
  v67 = v80;
  v77(v80, v63, v64);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type MusicItemCollection<Playlist.Entry> and conformance MusicItemCollection<A>, &_s8MusicKit0A14ItemCollectionVyAA8PlaylistV5EntryVGMd);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v68 = dispatch thunk of Collection.distance(from:to:)();
  v50 = v98;
  if (!v68 && (dispatch thunk of Collection.startIndex.getter(), dispatch thunk of Collection.endIndex.getter(), dispatch thunk of Collection.distance(from:to:)() > 0) || (dispatch thunk of Collection.startIndex.getter(), dispatch thunk of Collection.endIndex.getter(), dispatch thunk of Collection.distance(from:to:)() >= 1) && (dispatch thunk of Collection.startIndex.getter(), dispatch thunk of Collection.endIndex.getter(), !dispatch thunk of Collection.distance(from:to:)()))
  {
    v71 = type metadata accessor for MusicLibrary.AddStatus();
    v72 = v90;
    (*(*(v71 - 8) + 56))(v90, 1, 1, v71);
    v73 = type metadata accessor for MusicLibrary.DownloadStatus();
    v74 = v91;
    (*(*(v73 - 8) + 56))(v91, 1, 1, v73);
    MusicLibrary.ActionableStateController.updateState(addStatus:downloadStatus:)(v72, v74);
    outlined destroy of TaskPriority?(v74, &_s8MusicKit0A7LibraryC0aB8InternalE14DownloadStatusOSgMd);
    outlined destroy of TaskPriority?(v72, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusOSgMd);
    v75 = *(v46 + 8);
    v75(v67, v64);
    v76 = *(v79 + 8);
    v76(v62, v66);
    v75(v86, v64);
    return (v76)(v92, v66);
  }

  v69 = *(v46 + 8);
  v69(v67, v64);
  v70 = *(v79 + 8);
  v70(v62, v66);
  v69(v86, v64);
  v70(v92, v66);
  v49 = v96;
LABEL_7:
  v101(v94, &v50[v93], v100);
  v51 = v95;
  result = swift_dynamicCast();
  if (result)
  {
    (*(v87 + 8))(v51, v49);
    v53 = type metadata accessor for MusicLibrary.AddStatus();
    v54 = v90;
    (*(*(v53 - 8) + 56))(v90, 1, 1, v53);
    v55 = type metadata accessor for MusicLibrary.DownloadStatus();
    v56 = v91;
    (*(*(v55 - 8) + 56))(v91, 1, 1, v55);
    MusicLibrary.ActionableStateController.updateState(addStatus:downloadStatus:)(v54, v56);
    outlined destroy of TaskPriority?(v56, &_s8MusicKit0A7LibraryC0aB8InternalE14DownloadStatusOSgMd);
    return outlined destroy of TaskPriority?(v54, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusOSgMd);
  }

  return result;
}

uint64_t MusicLibrary.ActionableStateController.item.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 128);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t MusicLibrary.ActionableStateController.item.setter(uint64_t a1)
{
  v3 = *v1;
  specialized MusicLibrary.ActionableStateController.item.setter(a1);
  v4 = *(*(*(v3 + 80) - 8) + 8);

  return v4(a1);
}

void (*MusicLibrary.ActionableStateController.item.modify(void *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[3] = v1;
  v5 = *(*v1 + 80);
  v3[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v3[5] = v6;
  v8 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v3[6] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v3[6] = malloc(*(v6 + 64));
    v9 = malloc(v8);
  }

  v10 = v9;
  v4[7] = v9;
  v11 = *(*v1 + 128);
  swift_beginAccess();
  v12 = *(v7 + 16);
  v4[8] = v12;
  v4[9] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v10, v1 + v11, v5);
  return MusicLibrary.ActionableStateController.item.modify;
}

void MusicLibrary.ActionableStateController.item.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  v5 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  if (a2)
  {
    (*(v2 + 64))(*(v2 + 48), *(v2 + 56), *(v2 + 32));
    specialized MusicLibrary.ActionableStateController.item.setter(v4);
    v7 = *(v6 + 8);
    v7(v4, v5);
    v7(v3, v5);
  }

  else
  {
    specialized MusicLibrary.ActionableStateController.item.setter(*(v2 + 56));
    (*(v6 + 8))(v3, v5);
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t MusicLibrary.ActionableStateController.onStateUpdate.getter()
{
  v1 = (v0 + *(*v0 + 144));
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t MusicLibrary.ActionableStateController.onStateUpdate.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 144));
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t MusicLibrary.ActionableStateController.currentState.didset(uint64_t a1, unsigned int a2)
{
  v3 = v2;
  v6 = *(*v2 + 80);
  v7 = *(v6 - 8);
  __chkstk_darwin(a1);
  v9 = &v42 - v8;
  v11 = v2 + *(v10 + 152);
  result = swift_beginAccess();
  v13 = *v11;
  v14 = *(v11 + 8);
  if (!(v14 >> 14))
  {
    if (a2 < 0x4000u)
    {
      if (*v11 == 5)
      {
        if (a1 == 5)
        {
          return result;
        }
      }

      else if (a1 != 5 && v13 == a1)
      {
        return result;
      }
    }

    goto LABEL_37;
  }

  if (v14 >> 14 != 1)
  {
    if (v13 | v14 ^ 0x8000)
    {
      if (*(v11 + 8) == 0x8000 && v13 == 1)
      {
        if ((a2 & 0xC000) != 0x8000 || a1 != 1)
        {
          goto LABEL_37;
        }
      }

      else if ((a2 & 0xC000) != 0x8000 || a1 != 2)
      {
        goto LABEL_37;
      }
    }

    else if ((a2 & 0xC000) != 0x8000 || *&a1 != 0.0)
    {
      goto LABEL_37;
    }

    if (a2 == 0x8000)
    {
      return result;
    }

    goto LABEL_37;
  }

  if ((a2 & 0xC000) == 0x4000)
  {
    if (v14)
    {
      if ((a2 & 1) != 0 && (((a2 ^ v14) >> 8) & 1) == 0)
      {
        return result;
      }
    }

    else if ((a2 & 1) == 0 && *v11 == *&a1 && (((a2 ^ v14) >> 8) & 1) == 0)
    {
      return result;
    }
  }

LABEL_37:
  if (one-time initialization token for libraryActionableState != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.libraryActionableState);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  v20 = os_log_type_enabled(v18, v19);
  v44 = a2;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v45 = v6;
    v22 = v21;
    v23 = swift_slowAlloc();
    v43 = v7;
    v46[0] = v23;
    *v22 = 136446722;
    v24 = MusicLibrary.ActionableState.description.getter(a1, a2);
    v26 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v24, v25, v46);
    v42 = a1;
    v27 = v26;

    *(v22 + 4) = v27;
    *(v22 + 12) = 2082;
    v28 = MusicLibrary.ActionableState.description.getter(*v11, *(v11 + 8));
    v30 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v28, v29, v46);

    *(v22 + 14) = v30;
    *(v22 + 22) = 2082;
    v31 = *(*v3 + 128);
    swift_beginAccess();
    (*(v43 + 16))(v9, v3 + v31, v45);
    v32 = String.init<A>(describing:)();
    v34 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v32, v33, v46);

    *(v22 + 24) = v34;
    v35 = v19;
    v36 = v42;
    _os_log_impl(&_mh_execute_header, v18, v35, "State updated from: %{public}s to: %{public}s for item: %{public}s)", v22, 0x20u);
    swift_arrayDestroy();
    v7 = v43;

    v6 = v45;
  }

  else
  {

    v36 = a1;
  }

  v37 = (v3 + *(*v3 + 144));
  swift_beginAccess();
  v38 = *v37;
  v39 = *(*v3 + 128);
  swift_beginAccess();
  (*(v7 + 16))(v9, v3 + v39, v6);
  v40 = *v11;
  v41 = *(v11 + 8);

  v38(v9, v36, v44, v40, v41);

  return (*(v7 + 8))(v9, v6);
}

uint64_t MusicLibrary.ActionableStateController.currentState.getter()
{
  v1 = v0 + *(*v0 + 152);
  swift_beginAccess();
  return *v1;
}

uint64_t MusicLibrary.ActionableStateController.currentState.setter(uint64_t a1, __int16 a2)
{
  v5 = v2 + *(*v2 + 152);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v7 = *(v5 + 8);
  *(v5 + 8) = a2;
  return MusicLibrary.ActionableStateController.currentState.didset(v6, v7);
}

uint64_t MusicLibrary.ActionableStateController.performAction(presentationSource:metricsReportingContext:)(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = *v2;
  v3[11] = *v2;
  v5 = *(v4 + 80);
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[15] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[16] = v7;
  v3[17] = v6;

  return _swift_task_switch(MusicLibrary.ActionableStateController.performAction(presentationSource:metricsReportingContext:), v7, v6);
}

uint64_t MusicLibrary.ActionableStateController.performAction(presentationSource:metricsReportingContext:)()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[10];
  v5 = &v4[*(*v4 + 152)];
  swift_beginAccess();
  v6 = *v5;
  v7 = *(*v4 + 128);
  v8 = *(v5 + 4);
  swift_beginAccess();
  (*(v2 + 16))(v1, &v4[v7], v3);
  v9 = *&v4[*(*v4 + 136)];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[18] = Strong;
  v11 = *(v4 + 4);
  v12 = swift_task_alloc();
  v0[19] = v12;
  *v12 = v0;
  v12[1] = MusicLibrary.ActionableStateController.performAction(presentationSource:metricsReportingContext:);
  v13 = v0[14];
  v14 = v0[8];
  v15 = v0[9];

  return MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:)(v6, v8, v13, v9, v14, Strong, v11, v15);
}

{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  *(*v1 + 160) = v0;

  (*(v4 + 8))(v3, v5);
  swift_unknownObjectRelease();
  v6 = *(v2 + 136);
  v7 = *(v2 + 128);
  if (v0)
  {
    v8 = MusicLibrary.ActionableStateController.performAction(presentationSource:metricsReportingContext:);
  }

  else
  {
    v8 = MusicLibrary.ActionableStateController.performAction(presentationSource:metricsReportingContext:);
  }

  return _swift_task_switch(v8, v7, v6);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

id MusicLibrary.ActionableStateController.updateState(addStatus:downloadStatus:)(void (*a1)(_BYTE *, uint64_t), uint64_t a2)
{
  v3 = v2;
  v243 = a2;
  v238 = a1;
  v4 = *v2;
  v5 = type metadata accessor for MusicLibrary.AddStatus.UnaddableReason();
  v229 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v224 = &v208[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __chkstk_darwin(v6);
  v228 = &v208[-v9];
  v10 = __chkstk_darwin(v8);
  v227 = &v208[-v11];
  v12 = __chkstk_darwin(v10);
  v226 = &v208[-v13];
  __chkstk_darwin(v12);
  v232 = &v208[-v14];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVyAA8PlaylistV5EntryVGSgMd);
  __chkstk_darwin(v15 - 8);
  v220 = &v208[-v16];
  v225 = type metadata accessor for Playlist();
  v216 = *(v225 - 8);
  v17 = __chkstk_darwin(v225);
  v215 = &v208[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v217 = &v208[-v19];
  v222 = type metadata accessor for Album();
  v219 = *(v222 - 8);
  v20 = __chkstk_darwin(v222);
  v218 = &v208[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v221 = &v208[-v22];
  v23 = *(v4 + 80);
  v24 = type metadata accessor for MusicLibrary.AddStatus();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v223 = *(TupleTypeMetadata2 - 8);
  __chkstk_darwin(TupleTypeMetadata2);
  v237 = &v208[-v25];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE14DownloadStatusOSgMd);
  __chkstk_darwin(v26 - 8);
  v28 = &v208[-v27];
  v29 = type metadata accessor for MusicLibrary.DownloadStatus();
  v242 = *(v29 - 8);
  v30 = __chkstk_darwin(v29);
  v213 = &v208[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = __chkstk_darwin(v30);
  v234 = &v208[-v33];
  __chkstk_darwin(v32);
  v244 = &v208[-v34];
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusOSgMd);
  v36 = __chkstk_darwin(v35 - 8);
  v38 = &v208[-v37];
  v245 = *(v24 - 8);
  v39 = __chkstk_darwin(v36);
  v214 = &v208[-((v40 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v41 = __chkstk_darwin(v39);
  v43 = &v208[-v42];
  v44 = __chkstk_darwin(v41);
  v247 = &v208[-v45];
  v239 = *(v23 - 8);
  __chkstk_darwin(v44);
  v230 = &v208[-v46];
  v47 = v3 + *(v4 + 152);
  swift_beginAccess();
  v210 = *v47;
  v209 = *(v47 + 8);
  if (one-time initialization token for libraryActionableState != -1)
  {
    swift_once();
  }

  v48 = type metadata accessor for Logger();
  v49 = __swift_project_value_buffer(v48, static Logger.libraryActionableState);

  v246 = v49;
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();

  v52 = os_log_type_enabled(v50, v51);
  v240 = v29;
  v241 = v24;
  v231 = v5;
  v236 = v23;
  if (v52)
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v250 = v54;
    *v53 = 136446210;
    v55 = *(*v3 + 128);
    swift_beginAccess();
    (*(v239 + 16))(v230, v3 + v55, v23);
    v56 = String.init<A>(describing:)();
    v58 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v56, v57, &v250);

    *(v53 + 4) = v58;
    _os_log_impl(&_mh_execute_header, v50, v51, "╭ Updating state for item: %{public}s", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v54);
    v24 = v241;

    v29 = v240;
  }

  outlined init with copy of TaskPriority?(v238, v38, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusOSgMd);
  v59 = v245;
  v60 = *(v245 + 48);
  v61 = v60(v38, 1, v24);
  v62 = v242;
  if (v61 == 1)
  {
    dispatch thunk of MusicLibrary.ItemState.addStatus.getter();
    if (v60(v38, 1, v24) != 1)
    {
      outlined destroy of TaskPriority?(v38, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusOSgMd);
    }
  }

  else
  {
    (*(v59 + 32))(v247, v38, v24);
  }

  outlined init with copy of TaskPriority?(v243, v28, &_s8MusicKit0A7LibraryC0aB8InternalE14DownloadStatusOSgMd);
  v63 = *(v62 + 48);
  v64 = v63(v28, 1, v29);
  v243 = v3;
  if (v64 == 1)
  {
    dispatch thunk of MusicLibrary.ItemState.downloadStatus.getter();
    if (v63(v28, 1, v29) != 1)
    {
      outlined destroy of TaskPriority?(v28, &_s8MusicKit0A7LibraryC0aB8InternalE14DownloadStatusOSgMd);
    }
  }

  else
  {
    (*(v62 + 32))(v244, v28, v29);
  }

  v65 = v245;
  v233 = *(v245 + 16);
  v233(v43, v247, v24);
  v66 = Logger.logObject.getter();
  v67 = v24;
  v68 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v66, v68))
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v250 = v70;
    *v69 = 136446210;
    lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus, &type metadata accessor for MusicLibrary.AddStatus);
    v71 = dispatch thunk of CustomStringConvertible.description.getter();
    v73 = v72;
    v238 = *(v65 + 8);
    v238(v43, v67);
    v74 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v71, v73, &v250);

    *(v69 + 4) = v74;
    _os_log_impl(&_mh_execute_header, v66, v68, "| Add Status: %{public}s", v69, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v70);
    v29 = v240;

    v62 = v242;
  }

  else
  {

    v238 = *(v65 + 8);
    v238(v43, v67);
  }

  v75 = *(v62 + 16);
  v76 = v234;
  v212 = v62 + 16;
  v211 = v75;
  v75(v234, v244, v29);
  v77 = Logger.logObject.getter();
  v78 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v77, v78))
  {
    v79 = v62;
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v250 = v81;
    *v80 = 136446210;
    lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type MusicLibrary.DownloadStatus and conformance MusicLibrary.DownloadStatus, &type metadata accessor for MusicLibrary.DownloadStatus);
    v82 = dispatch thunk of CustomStringConvertible.description.getter();
    v84 = v83;
    v234 = *(v79 + 8);
    (v234)(v76, v29);
    v85 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v82, v84, &v250);

    *(v80 + 4) = v85;
    _os_log_impl(&_mh_execute_header, v77, v78, "| Download Status: %{public}s", v80, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v81);
  }

  else
  {

    v234 = *(v62 + 8);
    (v234)(v76, v29);
  }

  v86 = v236;
  v87 = v239;
  v88 = v243;
  v89 = *(*v243 + 128);
  swift_beginAccess();
  v90 = *(TupleTypeMetadata2 + 48);
  v91 = *(v87 + 16);
  v92 = v237;
  v91(v237, v88 + v89, v86);
  v93 = v241;
  v233(&v92[v90], v247, v241);
  v94 = v245;
  v95 = (*(v245 + 88))(&v92[v90], v93);
  if (v95 == enum case for MusicLibrary.AddStatus.addable(_:))
  {
    v238(&v92[v90], v93);
    v96 = 0;
    v97 = 5;
    goto LABEL_73;
  }

  if (v95 != enum case for MusicLibrary.AddStatus.unaddable(_:))
  {
    if (v95 != enum case for MusicLibrary.AddStatus.added(_:))
    {

      v145 = Logger.logObject.getter();
      v146 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v145, v146))
      {
        v147 = swift_slowAlloc();
        v239 = swift_slowAlloc();
        v249 = v239;
        *v147 = 136446466;
        v148 = v214;
        dispatch thunk of MusicLibrary.ItemState.addStatus.getter();
        lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus, &type metadata accessor for MusicLibrary.AddStatus);
        v149 = v241;
        v150 = dispatch thunk of CustomStringConvertible.description.getter();
        v152 = v151;
        v238(v148, v149);
        v153 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v150, v152, &v249);

        *(v147 + 4) = v153;
        *(v147 + 12) = 2082;
        v91(v230, v243 + v89, v236);
        v154 = String.init<A>(describing:)();
        v156 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v154, v155, &v249);

        *(v147 + 14) = v156;
        _os_log_impl(&_mh_execute_header, v145, v146, "| Unhandled add status (%{public}s) for item: %{public}s", v147, 0x16u);
        swift_arrayDestroy();

        v92 = v237;
      }

      v97 = 0;
      v96 = 0x8000;
      v87 = v223;
      v86 = TupleTypeMetadata2;
      goto LABEL_73;
    }

    v116 = v221;
    v117 = v222;
    v118 = swift_dynamicCast();
    v119 = v242;
    v120 = v243;
    v121 = v225;
    if (v118)
    {
      v122 = v219;
      v123 = v116;
      v124 = v218;
      (*(v219 + 32))(v218, v123, v117);
      if (Album.childrenAddStatus(_:)(*(v120 + 16)) == 1)
      {
        v125 = Logger.logObject.getter();
        v126 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v125, v126))
        {
          v127 = swift_slowAlloc();
          *v127 = 0;
          _os_log_impl(&_mh_execute_header, v125, v126, "| Album is already added but has at least 1 addable track", v127, 2u);
        }

        (*(v219 + 8))(v218, v117);
        v96 = 0;
        v97 = 4;
        goto LABEL_73;
      }

      (*(v122 + 8))(v124, v117);
    }

    v160 = v217;
    if (swift_dynamicCast())
    {
      v161 = v216;
      v162 = v215;
      (*(v216 + 32))(v215, v160, v121);
      v163 = v220;
      Playlist.entries.getter();
      v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVyAA8PlaylistV5EntryVGMd);
      v165 = v163;
      v166 = v164;
      v167 = *(v164 - 8);
      if ((*(v167 + 48))(v165, 1, v164) == 1)
      {
        (*(v161 + 8))(v162, v121);
        outlined destroy of TaskPriority?(v220, &_s8MusicKit0A14ItemCollectionVyAA8PlaylistV5EntryVGSgMd);
      }

      else
      {
        lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type MusicItemCollection<Playlist.Entry> and conformance MusicItemCollection<A>, &_s8MusicKit0A14ItemCollectionVyAA8PlaylistV5EntryVGMd);
        v168 = v220;
        dispatch thunk of Collection.startIndex.getter();
        dispatch thunk of Collection.endIndex.getter();
        v170 = v248;
        v169 = v249;
        (*(v167 + 8))(v168, v166);
        if (v169 == v170)
        {
          v171 = Logger.logObject.getter();
          v172 = static os_log_type_t.default.getter();
          v173 = os_log_type_enabled(v171, v172);
          v174 = v216;
          v175 = v215;
          if (v173)
          {
            v176 = swift_slowAlloc();
            *v176 = 0;
            _os_log_impl(&_mh_execute_header, v171, v172, "| Playlist is already added but does not have any tracks", v176, 2u);
          }

          (*(v174 + 8))(v175, v225);
          goto LABEL_72;
        }

        (*(v216 + 8))(v215, v225);
      }

      v119 = v242;
    }

    v177 = Logger.logObject.getter();
    v178 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v177, v178))
    {
      v179 = swift_slowAlloc();
      *v179 = 0;
      _os_log_impl(&_mh_execute_header, v177, v178, "|—● Item is added", v179, 2u);
    }

    result = [objc_opt_self() sharedCloudController];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v181 = result;
    v182 = [result canShowCloudDownloadButtons];

    if (v182)
    {
      v183 = v213;
      v184 = v240;
      v211(v213, v244, v240);
      v185 = (*(v119 + 88))(v183, v184);
      if (v185 == enum case for MusicLibrary.DownloadStatus.downloading(_:))
      {
        (*(v119 + 96))(v183, v184);
        v97 = *v183;
        v96 = 0x4000;
        goto LABEL_73;
      }

      if (v185 == enum case for MusicLibrary.DownloadStatus.paused(_:))
      {
        (*(v119 + 96))(v183, v184);
        if (((v209 & 0xC000) != 0x4000) | v209 & 1)
        {
          v97 = 0;
        }

        else
        {
          v97 = v210;
        }

        v96 = ((v209 & 0xC000) != 0x4000) | v209 & 1 | 0x4100;
        v196 = type metadata accessor for MusicLibrary.DownloadStatus.DownloadPauseReasons();
        (*(*(v196 - 8) + 8))(v183, v196);
        goto LABEL_73;
      }

      if (v185 != enum case for MusicLibrary.DownloadStatus.notDownloadable(_:))
      {
        if (v185 == enum case for MusicLibrary.DownloadStatus.downloadable(_:))
        {
          v96 = 0x8000;
          v97 = 1;
        }

        else if (v185 == enum case for MusicLibrary.DownloadStatus.downloadWaiting(_:))
        {
          v97 = 0;
          v96 = 16385;
        }

        else if (v185 == enum case for MusicLibrary.DownloadStatus.downloaded(_:))
        {
          v96 = 0x8000;
          v97 = 2;
        }

        else
        {
          v197 = v86;
          v198 = enum case for MusicLibrary.DownloadStatus.cancelled(_:);
          v199 = v185;
          v200 = Logger.logObject.getter();
          v201 = static os_log_type_t.default.getter();
          v202 = os_log_type_enabled(v200, v201);
          if (v199 == v198)
          {
            if (v202)
            {
              v203 = swift_slowAlloc();
              *v203 = 0;
            }

            v204 = Logger.logObject.getter();
            v205 = static os_log_type_t.default.getter();
            v86 = v197;
            if (os_log_type_enabled(v204, v205))
            {
              v206 = swift_slowAlloc();
              *v206 = 0;
              _os_log_impl(&_mh_execute_header, v204, v205, "|—| 🌚 though we're not sure this is the right thing to do", v206, 2u);
            }

            v96 = 0x8000;
            v97 = 1;
            v87 = v239;
          }

          else
          {
            v86 = v197;
            if (v202)
            {
              v207 = swift_slowAlloc();
              *v207 = 0;
              _os_log_impl(&_mh_execute_header, v200, v201, "|—| Unhandled case", v207, 2u);
            }

            (v234)(v213, v240);
            v97 = 0;
            v96 = 0x8000;
            v87 = v239;
          }
        }

        goto LABEL_73;
      }
    }

    else
    {
      v186 = Logger.logObject.getter();
      v187 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v186, v187))
      {
        v188 = swift_slowAlloc();
        *v188 = 0;
        _os_log_impl(&_mh_execute_header, v186, v187, "|—| MPCloudController -canShowCloudDownloadButton: NO", v188, 2u);
      }
    }

LABEL_72:
    v97 = 0;
    v96 = 0x8000;
    goto LABEL_73;
  }

  v98 = v229;
  (*(v94 + 96))(&v92[v90], v93);
  v99 = v98[4];
  v100 = &v92[v90];
  v101 = v232;
  v102 = v231;
  TupleTypeMetadata2 = (v98 + 4);
  v233 = v99;
  v99(v232, v100, v231);
  v103 = v98[2];
  v104 = v226;
  v103(v226, v101, v102);
  v105 = Logger.logObject.getter();
  v106 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v105, v106))
  {
    v107 = v104;
    v108 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    v249 = v109;
    *v108 = 136446210;
    lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type MusicLibrary.AddStatus.UnaddableReason and conformance MusicLibrary.AddStatus.UnaddableReason, &type metadata accessor for MusicLibrary.AddStatus.UnaddableReason);
    v110 = dispatch thunk of CustomStringConvertible.description.getter();
    v112 = v111;
    v113 = v107;
    v114 = v98[1];
    v114(v113, v231);
    v115 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v110, v112, &v249);

    *(v108 + 4) = v115;
    v102 = v231;
    _os_log_impl(&_mh_execute_header, v105, v106, "|—● Item is unaddable: %{public}s", v108, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v109);
  }

  else
  {

    v114 = v98[1];
    v114(v104, v102);
  }

  v128 = v227;
  v103(v227, v232, v102);
  v129 = v98[11];
  v130 = v129(v128, v102);
  v131 = enum case for MusicLibrary.AddStatus.UnaddableReason.allExplicitContentRestricted(_:);
  v132 = v228;
  if (v130 != enum case for MusicLibrary.AddStatus.UnaddableReason.allExplicitContentRestricted(_:) && v130 != enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryRequired(_:) && v130 != enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryInitialImport(_:) && v130 != enum case for MusicLibrary.AddStatus.UnaddableReason.subscriptionRequired(_:))
  {
    v133 = Logger.logObject.getter();
    v134 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v133, v134))
    {
      v135 = swift_slowAlloc();
      *v135 = 0;
      _os_log_impl(&_mh_execute_header, v133, v134, "|—| Reason is not actionable by the user", v135, 2u);
    }

    v136 = v231;
    v114(v232, v231);
    v114(v128, v136);
    v97 = 0;
    v96 = 0x8000;
    goto LABEL_46;
  }

  LODWORD(v230) = enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryRequired(_:);
  LODWORD(v227) = enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryInitialImport(_:);
  LODWORD(v226) = enum case for MusicLibrary.AddStatus.UnaddableReason.subscriptionRequired(_:);
  v103(v228, v232, v102);
  v137 = v132;
  v138 = Logger.logObject.getter();
  v139 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v138, v139))
  {
    v140 = swift_slowAlloc();
    v225 = swift_slowAlloc();
    v249 = v225;
    *v140 = 136315138;
    lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type MusicLibrary.AddStatus.UnaddableReason and conformance MusicLibrary.AddStatus.UnaddableReason, &type metadata accessor for MusicLibrary.AddStatus.UnaddableReason);
    v141 = dispatch thunk of CustomStringConvertible.description.getter();
    v143 = v142;
    v114(v137, v231);
    v144 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v141, v143, &v249);

    *(v140 + 4) = v144;
    v102 = v231;
    __swift_destroy_boxed_opaque_existential_0Tm(v225);
  }

  else
  {

    v114(v137, v102);
  }

  v157 = v224;
  v233(v224, v232, v102);
  v158 = v129(v157, v102);
  if (v158 == v131)
  {
    v96 = 0;
    v97 = 1;
LABEL_46:
    v92 = v237;
    v86 = v236;
    v87 = v239;
    goto LABEL_73;
  }

  v159 = v114;
  v92 = v237;
  v86 = v236;
  v87 = v239;
  if (v158 == v230)
  {
    v97 = 0;
    v96 = 0;
  }

  else if (v158 == v227)
  {
    v96 = 0;
    v97 = 2;
  }

  else if (v158 == v226)
  {
    v96 = 0;
    v97 = 3;
  }

  else
  {
    v159(v157, v102);
    v96 = 0;
    v97 = 5;
  }

LABEL_73:
  (*(v87 + 8))(v92, v86);
  v189 = Logger.logObject.getter();
  v190 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v189, v190))
  {
    v191 = swift_slowAlloc();
    v192 = swift_slowAlloc();
    v249 = v192;
    *v191 = 136446210;
    v193 = MusicLibrary.ActionableState.description.getter(v97, v96);
    v195 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v193, v194, &v249);

    *(v191 + 4) = v195;
    _os_log_impl(&_mh_execute_header, v189, v190, "╰ Item state resolved to %{public}s", v191, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v192);
  }

  MusicLibrary.ActionableStateController.currentState.setter(v97, v96);
  (v234)(v244, v240);
  return (v238)(v247, v241);
}