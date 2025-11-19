uint64_t closure #7 in GroupActivitiesManager.session.didset()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    GroupActivitiesManager.updateIsSharePlaySessionActive()();
  }

  return result;
}

uint64_t GroupActivitiesManager.__allocating_init(coordinator:)(uint64_t a1)
{
  v2 = swift_allocObject();
  GroupActivitiesManager.init(coordinator:)(a1);
  return v2;
}

uint64_t GroupActivitiesManager.init(coordinator:)(uint64_t a1)
{
  v2 = v1;
  v36 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0);
  __chkstk_darwin(v3 - 8);
  v37 = &v33 - v4;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9MusicCore15SharedListeningO8ReactionVSgGMd);
  v5 = *(v34 - 8);
  __chkstk_darwin(v34);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v33 - v14;
  v35 = xmmword_1004F2EC0;
  *(v1 + 56) = xmmword_1004F2EC0;
  *(v1 + 96) = 0;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  v16 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager__participantsCount;
  *&v38 = 0;
  Published.init(initialValue:)();
  (*(v13 + 32))(v2 + v16, v15, v12);
  v17 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager__isLoading;
  LOBYTE(v38) = 0;
  Published.init(initialValue:)();
  (*(v9 + 32))(v2 + v17, v11, v8);
  v18 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager__reaction;
  v39 = 0u;
  v40 = 0u;
  v38 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore15SharedListeningO8ReactionVSgMd);
  Published.init(initialValue:)();
  (*(v5 + 32))(v2 + v18, v7, v34);
  *(v2 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount) = 0;
  v19 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_sessionStateObserver;
  type metadata accessor for GroupStateObserver();
  *(v2 + v19) = GroupStateObserver.__allocating_init()();
  *(v2 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_sessionSubscriptions) = &_swiftEmptySetSingleton;
  *(v2 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_nowPlayingSubscription) = 0;
  *(v2 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_isLeaveCommandInProgress) = 0;
  v20 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_activity;
  v21 = type metadata accessor for GroupActivitiesManager.Activity(0);
  (*(*(v21 - 8) + 56))(v2 + v20, 1, 1, v21);
  *(v2 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_pendingSession) = 0;
  *(v2 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session) = 0;
  *(v2 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_signpostJoinSessionState) = 0;
  v22 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_signpostInitiationToFirstAudioFrame;
  v23 = type metadata accessor for Signpost();
  (*(*(v23 - 8) + 56))(v2 + v22, 1, 1, v23);
  *(v2 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager____lazy_storage___autoBugCaptureDomain) = 0;
  v24 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_autoBugCaptureIntervalBeginDate;
  v25 = type metadata accessor for Date();
  (*(*(v25 - 8) + 56))(v2 + v24, 1, 1, v25);
  v26 = v2 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext;
  *v26 = v35;
  *(v26 + 16) = 0;
  v27 = v36;
  outlined init with copy of ActionPerforming(v36, v2 + 16);
  type metadata accessor for GroupActivitiesManager.State(0);
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  ObservationRegistrar.init()();
  *(v2 + 88) = v28;
  v29 = type metadata accessor for TaskPriority();
  v30 = v37;
  (*(*(v29 - 8) + 56))(v37, 1, 1, v29);
  v31 = swift_allocObject();
  v31[2] = 0;
  v31[3] = 0;
  v31[4] = v2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v30, &async function pointer to partial apply for closure #1 in GroupActivitiesManager.init(coordinator:), v31);

  __swift_destroy_boxed_opaque_existential_0Tm(v27);
  return v2;
}

uint64_t closure #1 in GroupActivitiesManager.init(coordinator:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return GroupActivitiesManager.startObserver()();
}

uint64_t GroupActivitiesManager.startObserver()()
{
  v1[5] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionC8SessionsVy9MusicCore0aB7ManagerC8ActivityV_GMd);
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionC8SessionsV8IteratorVy9MusicCore0aB7ManagerC8ActivityV__GMd);
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = type metadata accessor for MainActor();
  v1[13] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[14] = v5;
  v1[15] = v4;

  return _swift_task_switch(GroupActivitiesManager.startObserver(), v5, v4);
}

{
  if (one-time initialization token for groupActivities != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[16] = __swift_project_value_buffer(v1, static Logger.groupActivities);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "🚦 Initiating group session observer", v4, 2u);
  }

  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[6];

  type metadata accessor for GroupActivitiesManager.Activity(0);
  lazy protocol witness table accessor for type GroupActivitiesManager.Activity and conformance GroupActivitiesManager.Activity(&lazy protocol witness table cache variable for type GroupActivitiesManager.Activity and conformance GroupActivitiesManager.Activity, type metadata accessor for GroupActivitiesManager.Activity);
  static GroupActivity.sessions()();
  GroupSession.Sessions.makeAsyncIterator()();
  (*(v6 + 8))(v5, v7);
  v8 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session;
  v0[17] = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_isLeaveCommandInProgress;
  v0[18] = v8;
  v0[19] = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_pendingSession;
  v0[20] = static MainActor.shared.getter();
  v9 = lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type GroupSession<GroupActivitiesManager.Activity>.Sessions.Iterator and conformance GroupSession<A>.Sessions.Iterator, &_s15GroupActivities0A7SessionC8SessionsV8IteratorVy9MusicCore0aB7ManagerC8ActivityV__GMd);
  v10 = swift_task_alloc();
  v0[21] = v10;
  *v10 = v0;
  v10[1] = GroupActivitiesManager.startObserver();
  v11 = v0[9];

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 2, v11, v9);
}

{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 160);
  if (v0)
  {
    if (v3)
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

    v7 = GroupActivitiesManager.startObserver();
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = GroupActivitiesManager.startObserver();
  }

  return _swift_task_switch(v7, v4, v6);
}

{

  v0[23] = v0[2];
  v1 = v0[14];
  v2 = v0[15];

  return _swift_task_switch(GroupActivitiesManager.startObserver(), v1, v2);
}

{
  v16 = v0;
  v1 = v0[23];
  if (v1)
  {
    v2 = v0[5];
    if (*(v2 + v0[17]) == 1)
    {

      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        v15 = v6;
        *v5 = 136446210;
        v0[4] = v1;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionCy9MusicCore0aB7ManagerC8ActivityVGMd);
        v7 = String.init<A>(reflecting:)();
        v9 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v7, v8, &v15);

        *(v5 + 4) = v9;
        _os_log_impl(&_mh_execute_header, v3, v4, "leaveCommand in progress, setting pendingSession=%{public}s", v5, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v6);
      }

      *(v0[5] + v0[19]) = v0[23];
    }

    else
    {
      *(v2 + v0[18]) = v1;
      swift_retain_n();

      GroupActivitiesManager.session.didset();
    }

    v0[20] = static MainActor.shared.getter();
    v12 = lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type GroupSession<GroupActivitiesManager.Activity>.Sessions.Iterator and conformance GroupSession<A>.Sessions.Iterator, &_s15GroupActivities0A7SessionC8SessionsV8IteratorVy9MusicCore0aB7ManagerC8ActivityV__GMd);
    v13 = swift_task_alloc();
    v0[21] = v13;
    *v13 = v0;
    v13[1] = GroupActivitiesManager.startObserver();
    v14 = v0[9];

    return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 2, v14, v12);
  }

  else
  {
    (*(v0[10] + 8))(v0[11], v0[9]);

    v10 = v0[1];

    return v10();
  }
}

{
  *(v0 + 24) = *(v0 + 176);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

id GroupActivitiesManager.autoBugCaptureDomain.getter()
{
  v1 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager____lazy_storage___autoBugCaptureDomain;
  v2 = *(v0 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager____lazy_storage___autoBugCaptureDomain);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager____lazy_storage___autoBugCaptureDomain);
  }

  else
  {
    v4 = String._bridgeToObjectiveC()();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance GroupActivitiesManager.EligibilityContext(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  if (a1[17])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  if (a2[1])
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  if (a2[17])
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  return specialized static GroupActivitiesManager.EligibilityContext.__derived_struct_equals(_:_:)(v2 | *a1, *(a1 + 1), v3 | a1[16], v4 | *a2, *(a2 + 1), v5 | a2[16]);
}

uint64_t closure #1 in GroupActivitiesManager.prepare(_:)(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v1[3] = swift_task_alloc();
  v2 = type metadata accessor for URL();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[7] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in GroupActivitiesManager.prepare(_:), v4, v3);
}

uint64_t closure #1 in GroupActivitiesManager.prepare(_:)()
{

  v1 = [objc_opt_self() defaultWorkspace];
  if (v1)
  {
    v2 = *(v0 + 32);
    v3 = *(v0 + 40);
    v4 = *(v0 + 24);
    URL.init(string:)();
    if ((*(v3 + 48))(v4, 1, v2) == 1)
    {
      outlined destroy of TaskPriority?(*(v0 + 24), &_s10Foundation3URLVSgMd);
    }

    else
    {
      v6 = *(v0 + 40);
      v5 = *(v0 + 48);
      v7 = *(v0 + 32);
      (*(v6 + 32))(v5, *(v0 + 24), v7);
      URL._bridgeToObjectiveC()(v8);
      v10 = v9;
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n_0(_swiftEmptyArrayStorage);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v1 openSensitiveURL:v10 withOptions:isa];

      (*(v6 + 8))(v5, v7);
    }
  }

  **(v0 + 16) = v1 == 0;

  v12 = *(v0 + 8);

  return v12();
}

uint64_t closure #2 in GroupActivitiesManager.prepare(_:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return GroupActivitiesManager.join()();
}

uint64_t GroupActivitiesManager.join()()
{
  v1[25] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0);
  v1[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);
  v1[27] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo17MPCPlayerResponseCSg_GMd);
  v1[28] = v2;
  v1[29] = *(v2 - 8);
  v1[30] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVySo17MPCPlayerResponseCSg_GSo17OS_dispatch_queueCGMd);
  v1[31] = v3;
  v1[32] = *(v3 - 8);
  v1[33] = swift_task_alloc();
  v4 = type metadata accessor for OSSignpostID();
  v1[34] = v4;
  v1[35] = *(v4 - 8);
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = type metadata accessor for GroupActivitiesManager.Activity(0);
  v1[40] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GMd);
  v1[41] = v5;
  v1[42] = *(v5 - 8);
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = type metadata accessor for MainActor();
  v1[46] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[47] = v7;
  v1[48] = v6;

  return _swift_task_switch(GroupActivitiesManager.join(), v7, v6);
}

{
  v2 = *v1;
  v3 = *(*v1 + 544);
  *(*v1 + 560) = v0;

  if (v0)
  {
    v4 = *(v2 + 376);
    v5 = *(v2 + 384);
    v6 = GroupActivitiesManager.join();
  }

  else
  {
    outlined destroy of TaskPriority?(v2 + 64, &_s9MusicCore6PlayerC13CommandIssuer_pSgMd);

    v4 = *(v2 + 376);
    v5 = *(v2 + 384);
    v6 = GroupActivitiesManager.join();
  }

  return _swift_task_switch(v6, v4, v5);
}

{
  v72 = v0;
  v1 = *(v0 + 392);
  v2 = *(v0 + 200);

  $defer #2 () in GroupActivitiesManager.join()();

  v3 = *(v2 + v1);
  if (!v3)
  {
    v44 = 0;
LABEL_14:
    v47 = *(v0 + 464);
    v48 = *(v0 + 472);
    v49 = *(v0 + 456);
    v50 = *(v0 + 200);
    v51 = *(v0 + 208);
    lazy protocol witness table accessor for type SharedListening.ErrorHandling.Error and conformance SharedListening.ErrorHandling.Error();
    v52 = swift_allocError();
    *v53 = v44;
    *(v53 + 8) = 1;

    GroupActivitiesManager.handleError(_:intent:)(v52, 0);

    v54 = type metadata accessor for TaskPriority();
    (*(*(v54 - 8) + 56))(v51, 1, 1, v54);

    v55 = static MainActor.shared.getter();
    v56 = swift_allocObject();
    v56[2] = v55;
    v56[3] = &protocol witness table for MainActor;
    v56[4] = v50;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v51, &async function pointer to partial apply for closure #3 in GroupActivitiesManager.join(), v56);

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    LOBYTE(v51) = *(v0 + 580);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 581) = 0;

    static Published.subscript.setter();
    v57 = v51;
    goto LABEL_18;
  }

  v4 = *(v0 + 432);
  v66 = *(v0 + 408);
  v5 = *(v0 + 568);
  v7 = *(v0 + 344);
  v6 = *(v0 + 352);
  v8 = *(v0 + 328);

  GroupSession.state.getter();
  v66(v7, v5, v8);
  v9 = static GroupSession.State.== infix(_:_:)();
  v4(v7, v8);
  v4(v6, v8);
  if ((v9 & 1) == 0)
  {
    v45 = *(v0 + 392);
    v46 = *(v0 + 200);

    v44 = *(v46 + v45);
    goto LABEL_14;
  }

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v71 = v13;
    *v12 = 136446210;
    *(v0 + 192) = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionCy9MusicCore0aB7ManagerC8ActivityVGMd);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type GroupSession<GroupActivitiesManager.Activity> and conformance GroupSession<A>, &_s15GroupActivities0A7SessionCy9MusicCore0aB7ManagerC8ActivityVGMd);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v14, v15, &v71);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "🤝 Joining shared session=%{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
  }

  static OSSignpostID.exclusive.getter();
  v17 = OSSignposter.logHandle.getter();
  v18 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, v18, v20, "JoinSession", "", v19, 2u);
  }

  v21 = *(v0 + 520);
  v22 = *(v0 + 488);
  v69 = *(v0 + 392);
  v24 = *(v0 + 288);
  v23 = *(v0 + 296);
  v25 = *(v0 + 272);
  v26 = *(v0 + 200);

  v22(v23, v24, v25);
  swift_allocObject();
  v27 = OSSignpostIntervalState.init(id:isOpen:)();
  v21(v24, v25);
  *(v26 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_signpostJoinSessionState) = v27;

  if (*(v26 + v69))
  {

    GroupSession.join()();
  }

  v28 = *(v0 + 200);
  v29 = v28[5];
  v30 = v28[6];
  v31 = __swift_project_boxed_opaque_existential_0Tm(v28 + 2, v29);
  v32 = *(v29 - 8);
  v33 = swift_task_alloc();
  (*(v32 + 16))(v33, v31, v29);
  v34 = (*(v30 + 48))(v29, v30);
  (*(v32 + 8))(v33, v29);
  if (!v34)
  {
    goto LABEL_16;
  }

  v35 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  if (!*&v34[v35])
  {

LABEL_16:
    v58 = *(v0 + 464);
    v59 = *(v0 + 472);
    v60 = *(v0 + 456);

    v43 = 0;
    goto LABEL_17;
  }

  v67 = *(v0 + 472);
  v68 = *(v0 + 464);
  v70 = *(v0 + 456);
  v36 = *(v0 + 264);
  v37 = *(v0 + 240);
  v64 = *(v0 + 248);
  v65 = *(v0 + 256);
  v39 = *(v0 + 224);
  v38 = *(v0 + 232);
  v40 = *(v0 + 216);

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo17MPCPlayerResponseCSgGMd);
  Published.projectedValue.getter();
  swift_endAccess();

  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v41 = static OS_dispatch_queue.main.getter();
  *(v0 + 184) = v41;
  v42 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v42 - 8) + 56))(v40, 1, 1, v42);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Published<MPCPlayerResponse?>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySo17MPCPlayerResponseCSg_GMd);
  lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue();
  Publisher.receive<A>(on:options:)();
  outlined destroy of TaskPriority?(v40, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);

  (*(v38 + 8))(v37, v39);

  swift_allocObject();
  swift_weakInit();
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Published<MPCPlayerResponse?>.Publisher, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVySo17MPCPlayerResponseCSg_GSo17OS_dispatch_queueCGMd);
  v43 = Publisher<>.sink(receiveValue:)();

  (*(v65 + 8))(v36, v64);
LABEL_17:
  *(*(v0 + 200) + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_nowPlayingSubscription) = v43;

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v61 = *(v0 + 582);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 583) = 0;

  static Published.subscript.setter();
  v57 = v61;
LABEL_18:
  GroupActivitiesManager.isLoading.didset(v57);

  v62 = *(v0 + 8);

  return v62();
}

{
  v1 = *(v0 + 560);
  v3 = *(v0 + 464);
  v2 = *(v0 + 472);
  v4 = *(v0 + 456);
  v5 = *(v0 + 200);
  v6 = *(v0 + 208);

  outlined destroy of TaskPriority?(v0 + 64, &_s9MusicCore6PlayerC13CommandIssuer_pSgMd);

  $defer #2 () in GroupActivitiesManager.join()();

  GroupActivitiesManager.handleError(_:intent:)(v1, 0);
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);

  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v5;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v6, &async function pointer to partial apply for closure #2 in GroupActivitiesManager.join(), v9);

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  LOBYTE(v1) = *(v0 + 578);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 579) = 0;

  static Published.subscript.setter();
  GroupActivitiesManager.isLoading.didset(v1);

  v10 = *(v0 + 8);

  return v10();
}

id GroupActivitiesManager.join()()
{
  v70 = v0;
  v1 = *(v0 + 200);
  v2 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session;
  *(v0 + 392) = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session;
  v3 = *(v1 + v2);
  *(v0 + 400) = v3;
  if (!v3)
  {
    goto LABEL_24;
  }

  v5 = *(v0 + 344);
  v4 = *(v0 + 352);
  v6 = *(v0 + 328);
  v7 = *(v0 + 336);

  GroupSession.state.getter();
  *(v0 + 568) = enum case for GroupSession.State.waiting<A>(_:);
  v8 = *(v7 + 104);
  *(v0 + 408) = v8;
  *(v0 + 416) = (v7 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v8(v5);
  *(v0 + 424) = lazy protocol witness table accessor for type GroupActivitiesManager.Activity and conformance GroupActivitiesManager.Activity(&lazy protocol witness table cache variable for type GroupActivitiesManager.Activity and conformance GroupActivitiesManager.Activity, type metadata accessor for GroupActivitiesManager.Activity);
  v9 = static GroupSession.State.== infix(_:_:)();
  v10 = *(v7 + 8);
  *(v0 + 432) = v10;
  *(v0 + 440) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v5, v6);
  v10(v4, v6);
  if (v9)
  {
    if (one-time initialization token for groupActivities != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    *(v0 + 448) = __swift_project_value_buffer(v11, static Logger.groupActivities);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Attempting to join", v14, 2u);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v15 = *(v0 + 572);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 573) = 1;

    static Published.subscript.setter();
    GroupActivitiesManager.isLoading.didset(v15);
    if (*(v1 + v2))
    {
      v16 = *(v0 + 320);

      GroupSession.activity.getter();

      v17 = *(v16 + 48);
      if (v17)
      {
        v18 = *(v0 + 320);
        v19 = *(v17 + 16);
        *(v0 + 456) = v19;
        v20 = v19;
        outlined destroy of GroupActivitiesManager.PrepareResult(v18, type metadata accessor for GroupActivitiesManager.Activity);
        v21 = objc_allocWithZone(ICLiveLinkIdentity);
        v22 = swift_allocObject();
        *(v22 + 16) = partial apply for closure #1 in GroupActivitiesManager.join();
        *(v22 + 24) = v3;
        *(v0 + 48) = partial apply for thunk for @callee_guaranteed (@guaranteed MPIdentifierSet & MPMutableIdentifierSet) -> ();
        *(v0 + 56) = v22;
        *(v0 + 16) = _NSConcreteStackBlock;
        *(v0 + 24) = 1107296256;
        *(v0 + 32) = thunk for @escaping @callee_guaranteed (@guaranteed MPIdentifierSet & MPMutableIdentifierSet) -> ();
        *(v0 + 40) = &block_descriptor_191;
        v23 = _Block_copy((v0 + 16));

        v24 = [v21 initWithBlock:v23];
        *(v0 + 464) = v24;
        _Block_release(v23);

        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          __break(1u);
LABEL_42:
          swift_once();
LABEL_36:
          v49 = type metadata accessor for OSSignposter();
          *(v0 + 480) = __swift_project_value_buffer(v49, static OSSignposter.sharePlay);
          static OSSignpostID.exclusive.getter();
          v50 = OSSignposter.logHandle.getter();
          v51 = static os_signpost_type_t.begin.getter();
          if (OS_os_log.signpostsEnabled.getter())
          {
            v52 = swift_slowAlloc();
            *v52 = 0;
            v53 = OSSignpostID.rawValue.getter();
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v50, v51, v53, "AddIntent", "", v52, 2u);
          }

          v54 = *(v0 + 296);
          v55 = *(v0 + 304);
          v56 = *(v0 + 272);
          v57 = *(v0 + 280);
          v58 = *(v0 + 200);

          v59 = *(v57 + 16);
          *(v0 + 488) = v59;
          *(v0 + 496) = (v57 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
          v59(v54, v55, v56);
          *(v0 + 504) = type metadata accessor for OSSignpostIntervalState();
          swift_allocObject();
          *(v0 + 512) = OSSignpostIntervalState.init(id:isOpen:)();
          v60 = *(v57 + 8);
          *(v0 + 520) = v60;
          *(v0 + 528) = (v57 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v60(v55, v56);
          swift_beginAccess();
          v61 = v58[5];
          v62 = v58[6];
          __swift_project_boxed_opaque_existential_0Tm(v58 + 2, v61);
          v63 = *(v61 - 8);
          v64 = swift_task_alloc();
          *(v0 + 536) = v64;
          (*(v63 + 16))();
          v65 = (*(v62 + 48))(v61, v62);
          *(v0 + 544) = v65;
          (*(v63 + 8))(v64, v61);
          *(v0 + 176) = v58;

          v66 = String.init<A>(reflecting:)();
          *(v0 + 88) = &type metadata for Player.CommandIssuerIdentity;
          *(v0 + 96) = &protocol witness table for Player.CommandIssuerIdentity;
          *(v0 + 64) = v66;
          *(v0 + 72) = v67;
          v68 = swift_task_alloc();
          *(v0 + 552) = v68;
          *v68 = v0;
          v68[1] = GroupActivitiesManager.join();

          return static SharedListening.addIntent(_:playbackController:issuer:)(isEscapingClosureAtFileLocation, v65, v0 + 64);
        }

        v26 = [objc_opt_self() sharedSessionIntentWithProperties:v20 identity:v24];
        *(v0 + 472) = v26;
        if (v26)
        {
          isEscapingClosureAtFileLocation = v26;
          if (GroupSession.isLocallyInitiated.getter() & 1) != 0 && (GroupSession.isFirstJoin.getter())
          {
            v27 = 20;
          }

          else
          {
            v27 = 10;
          }

          [isEscapingClosureAtFileLocation setActionAfterQueueLoad:v27];

          v36 = Logger.logObject.getter();
          v37 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v36, v37))
          {
            v38 = swift_slowAlloc();
            v39 = swift_slowAlloc();
            v69 = v39;
            *v38 = 67240706;
            *(v38 + 4) = GroupSession.isLocallyInitiated.getter() & 1;
            *(v38 + 8) = 1026;
            *(v38 + 10) = GroupSession.isFirstJoin.getter() & 1;

            *(v38 + 14) = 2082;
            result = MPNSStringFromQueueLoadAction();
            if (!result)
            {
              __break(1u);
              return result;
            }

            v40 = result;
            v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v43 = v42;

            v44 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v41, v43, &v69);

            *(v38 + 16) = v44;
            _os_log_impl(&_mh_execute_header, v36, v37, "Will join session isLocallyInitiated=%{BOOL,public}d\n/ isFirstJoin=%{BOOL,public}d.\n-> actionAfterQueueLoad=%{public}s", v38, 0x18u);
            __swift_destroy_boxed_opaque_existential_0Tm(v39);
          }

          else
          {
          }

          if (one-time initialization token for sharePlay == -1)
          {
            goto LABEL_36;
          }

          goto LABEL_42;
        }

        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          _os_log_impl(&_mh_execute_header, v45, v46, "Failed to retrieve shared playback intent", v47, 2u);
        }

        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v48 = *(v0 + 576);
        swift_getKeyPath();
        swift_getKeyPath();
        *(v0 + 577) = 0;

        static Published.subscript.setter();
        v33 = v48;
        goto LABEL_23;
      }

      v28 = *(v0 + 320);

      outlined destroy of GroupActivitiesManager.PrepareResult(v28, type metadata accessor for GroupActivitiesManager.Activity);
    }

    else
    {
    }

    if (one-time initialization token for sharedListening != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v11, static Logger.sharedListening);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Session properties missing in activity", v31, 2u);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v32 = *(v0 + 574);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 575) = 0;

    static Published.subscript.setter();
    v33 = v32;
LABEL_23:
    GroupActivitiesManager.isLoading.didset(v33);
    goto LABEL_24;
  }

LABEL_24:

  v34 = *(v0 + 8);

  return v34();
}

uint64_t GroupActivitiesManager.presentRestrictionAlert(for:)(int a1)
{
  v2 = v1;
  v37 = a1;
  v36 = type metadata accessor for UUID();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v36 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMd);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1004F2400;
  String.LocalizationValue.init(stringLiteral:)();
  (*(v8 + 16))(v11, v13, v7);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v15 = static NSBundle.module;
  static Locale.current.getter();
  v16 = String.init(localized:table:bundle:locale:comment:)();
  v18 = v17;
  (*(v8 + 8))(v13, v7);

  UUID.init()();
  v19 = UUID.uuidString.getter();
  v21 = v20;
  (*(v3 + 8))(v5, v36);
  *(v14 + 32) = v19;
  *(v14 + 40) = v21;
  *(v14 + 48) = v16;
  *(v14 + 56) = v18;
  *(v14 + 64) = 0;
  *(v14 + 72) = &async function pointer to partial apply for closure #1 in GroupActivitiesManager.presentRestrictionAlert(for:);
  *(v14 + 80) = v2;
  GroupActivitiesManager.RestrictionKind.action.getter(v37 & 1, &v41);
  v22 = v42;
  if (v42)
  {
    v23 = v41;
    v25 = *(v14 + 16);
    v24 = *(v14 + 24);
    if (v25 >= v24 >> 1)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v14);
    }

    *(v14 + 16) = v25 + 1;
    v26 = v14 + 56 * v25;
    *(v26 + 32) = v23;
    *(v26 + 40) = v22;
    v27 = v44;
    *(v26 + 48) = v43;
    *(v26 + 64) = v27;
    *(v26 + 80) = v45;
  }

  v28 = GroupActivitiesManager.RestrictionKind.title.getter();
  v30 = v29;
  v31 = GroupActivitiesManager.RestrictionKind.message.getter();
  LOBYTE(v38[0]) = 1;
  v46[0] = v28;
  v46[1] = v30;
  v46[2] = v31;
  v46[3] = v32;
  v47 = 0;
  v48 = 0;
  v49 = 1;
  v50 = v14;
  v51 = 0;
  swift_beginAccess();
  outlined init with copy of ActionPerforming(v2 + 16, v38);
  v33 = v39;
  v34 = v40;
  __swift_project_boxed_opaque_existential_0Tm(v38, v39);
  (*(v34 + 32))(v46, v33, v34);
  outlined destroy of Alert(v46);
  return __swift_destroy_boxed_opaque_existential_0Tm(v38);
}

uint64_t closure #3 in GroupActivitiesManager.prepare(_:)()
{
  v1 = v0[26];
  swift_beginAccess();
  outlined init with copy of ActionPerforming(v1 + 16, (v0 + 18));
  v2 = v0[21];
  v3 = v0[22];
  __swift_project_boxed_opaque_existential_0Tm(v0 + 18, v2);
  v6 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  v0[27] = v4;
  *v4 = v0;
  v4[1] = closure #3 in GroupActivitiesManager.prepare(_:);

  return v6(v2, v3);
}

{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 144);
  if (one-time initialization token for groupActivities != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.groupActivities);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 232);
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "🛂 User did authenticate=%{BOOL,public}d", v5, 8u);
  }

  v6 = *(v0 + 232);

  if (v6 == 1)
  {
    v7 = [objc_opt_self() defaultIdentityStore];
    *(v0 + 224) = v7;
    *(v0 + 16) = v0;
    *(v0 + 24) = closure #3 in GroupActivitiesManager.prepare(_:);
    v8 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5NeverOGMd);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable () -> () with result type ();
    *(v0 + 104) = &block_descriptor_208;
    *(v0 + 112) = v8;
    [v7 synchronizeWithCompletionHandler:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    if (*(*(v0 + 208) + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session))
    {

      GroupSession.leave()();
    }

    v9 = *(v0 + 8);

    return v9();
  }
}

{

  return _swift_task_switch(closure #3 in GroupActivitiesManager.prepare(_:), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #3 in GroupActivitiesManager.prepare(_:)(char a1)
{
  *(*v1 + 232) = a1;

  return _swift_task_switch(closure #3 in GroupActivitiesManager.prepare(_:), 0, 0);
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable () -> () with result type ()(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_0Tm((a1 + 32), *(a1 + 56));

  return swift_continuation_resume();
}

uint64_t closure #4 in GroupActivitiesManager.prepare(_:)()
{
  v1 = v0[10];
  swift_beginAccess();
  outlined init with copy of ActionPerforming(v1 + 16, (v0 + 2));
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_0Tm(v0 + 2, v2);
  v6 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = closure #4 in GroupActivitiesManager.prepare(_:);

  return v6(v2, v3);
}

{
  v1 = *(v0 + 96);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);
  if (v1 != 2 && (*(v0 + 96) & 1) == 0)
  {
    if (*(*(v0 + 80) + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session))
    {

      GroupSession.leave()();
    }

    if (one-time initialization token for groupActivities != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.groupActivities);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "🛂 User did not complete the subscription flow", v5, 2u);
    }
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t closure #4 in GroupActivitiesManager.prepare(_:)(char a1)
{
  *(*v1 + 96) = a1;

  return _swift_task_switch(closure #4 in GroupActivitiesManager.prepare(_:), 0, 0);
}

void closure #1 in GroupActivitiesManager.join()(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Participant();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  GroupSession.localParticipant.getter();
  Participant.id.getter();
  (*(v7 + 8))(v9, v6);
  v10 = UUID.uuidString.getter();
  v12 = v11;
  (*(v3 + 8))(v5, v2);
  v13._countAndFlagsBits = 0x616C506572616853;
  v13._object = 0xEC0000003D444979;
  if (String.hasPrefix(_:)(v13))
  {
  }

  else
  {
    strcpy(v26, "SharePlayID=");
    BYTE5(v26[1]) = 0;
    HIWORD(v26[1]) = -5120;
    v14._countAndFlagsBits = v10;
    v14._object = v12;
    String.append(_:)(v14);
  }

  v15 = String._bridgeToObjectiveC()();

  [a1 setExternalIdentifier:v15];

  if (one-time initialization token for groupActivities != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.groupActivities);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v25 = v20;
    *v19 = 136446210;
    v21._countAndFlagsBits = 0x616C506572616853;
    v21._object = 0xEC0000003D444979;
    if (!String.hasPrefix(_:)(v21))
    {
      strcpy(v26, "SharePlayID=");
      BYTE5(v26[1]) = 0;
      HIWORD(v26[1]) = -5120;
      v22._countAndFlagsBits = v10;
      v22._object = v12;
      String.append(_:)(v22);

      v10 = v26[0];
      v12 = v26[1];
    }

    v23 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v10, v12, &v25);

    *(v19 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v17, v18, "externalID identity=%{public}s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
  }

  else
  {
  }
}

uint64_t $defer #2 () in GroupActivitiesManager.join()()
{
  v0 = type metadata accessor for OSSignpostError();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OSSignpostID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for sharePlay != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v8, static OSSignposter.sharePlay);
  v9 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v10 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v1 + 88))(v3, v0) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v11 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v3, v0);
      v11 = "";
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, v10, v13, "AddIntent", v11, v12, 2u);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t closure #2 in GroupActivitiesManager.join()()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = closure #2 in GroupActivitiesManager.join();

  return GroupActivitiesManager.leave(performLeaveCommand:)(1);
}

{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in PlaybackController.engine(_:didEndSharedListeningSessionWithError:), v1, v0);
}

uint64_t closure #3 in GroupActivitiesManager.join()()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = closure #3 in GroupActivitiesManager.join();

  return GroupActivitiesManager.leave(performLeaveCommand:)(1);
}

{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #3 in GroupActivitiesManager.join(), v1, v0);
}

void closure #4 in GroupActivitiesManager.join()(id *a1)
{
  if (!*a1)
  {
    return;
  }

  v14 = *a1;
  if (![v14 isSharedListeningSession])
  {
    goto LABEL_6;
  }

  v1 = [v14 tracklist];
  v13 = [v1 playingItem];

  if (!v13)
  {
    goto LABEL_6;
  }

  if ([v13 isPlaceholder])
  {

LABEL_6:
    v2 = v14;
LABEL_7:

    return;
  }

  v3 = [v13 metadataObject];
  if (!v3)
  {
LABEL_17:

    v2 = v13;
    goto LABEL_7;
  }

  v4 = v3;
  v5 = [v3 innermostModelObject];

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {

    goto LABEL_17;
  }

  v7 = v6;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v8 = GroupActivitiesManager.activity.modify(v15);
    v10 = v9;
    v11 = type metadata accessor for GroupActivitiesManager.Activity(0);
    if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
    {
      type metadata accessor for CodableModelObjectIdentity();
      v12 = swift_allocObject();
      *(v12 + 16) = v7;
      *(v10 + 56) = v12;
      v5 = v5;
    }

    v8(v15, 0);
  }

  else
  {
  }
}

uint64_t closure #1 in GroupActivitiesManager.invalidate(_:)()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session) != 0;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = closure #2 in static Actions.Collaborate.action(context:);

  return GroupActivitiesManager.leave(performLeaveCommand:)(v1);
}

uint64_t GroupActivitiesManager.RestrictionKind.title.getter()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v5, v7, v1);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v8 = static NSBundle.module;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t GroupActivitiesManager.RestrictionKind.message.getter()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v5, v7, v1);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v8 = static NSBundle.module;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t GroupActivitiesManager.RestrictionKind.action.getter@<X0>(int a1@<W0>, uint64_t *a2@<X8>)
{
  v27 = a1;
  v3 = type metadata accessor for UUID();
  v25 = *(v3 - 8);
  v26 = v3;
  __chkstk_darwin(v3);
  v24 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Locale();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for String.LocalizationValue();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v13 = &v24 - v12;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  if (v27)
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v7 + 16))(v10, v13, v6);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v20 = static NSBundle.module;
    static Locale.current.getter();
    v16 = String.init(localized:table:bundle:locale:comment:)();
    v17 = v21;
    (*(v7 + 8))(v13, v6);
    v22 = v24;
    UUID.init()();
    v14 = UUID.uuidString.getter();
    v15 = v23;
    result = (*(v25 + 8))(v22, v26);
    v19 = &async function pointer to closure #1 in GroupActivitiesManager.RestrictionKind.action.getter;
    v18 = 2;
  }

  *a2 = v14;
  a2[1] = v15;
  a2[2] = v16;
  a2[3] = v17;
  a2[4] = v18;
  a2[5] = v19;
  a2[6] = 0;
  return result;
}

uint64_t closure #1 in GroupActivitiesManager.RestrictionKind.action.getter()
{
  return _swift_task_switch(closure #1 in GroupActivitiesManager.RestrictionKind.action.getter, 0, 0);
}

{
  v1 = [objc_opt_self() defaultWorkspace];
  if (v1)
  {
    v2 = v1;
    LSApplicationWorkspace.openMusicSettings()();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t closure #1 in GroupActivitiesManager.presentRestrictionAlert(for:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return GroupActivitiesManager.leave(performLeaveCommand:)(1);
}

uint64_t GroupActivitiesManager.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);
  outlined consume of SharedListening.Event.Alert?(*(v0 + 56), *(v0 + 64));

  v1 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager__participantsCount;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager__isLoading;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager__reaction;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9MusicCore15SharedListeningO8ReactionVSgGMd);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  outlined destroy of TaskPriority?(v0 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_activity, &_s9MusicCore22GroupActivitiesManagerC8ActivityVSgMd);

  outlined destroy of TaskPriority?(v0 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_signpostInitiationToFirstAudioFrame, &_s14MusicUtilities8SignpostVSgMd);

  outlined destroy of TaskPriority?(v0 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_autoBugCaptureIntervalBeginDate, &_s10Foundation4DateVSgMd);
  outlined consume of GroupActivitiesManager.EligibilityContext?(*(v0 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext), *(v0 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext + 8));
  return v0;
}

uint64_t GroupActivitiesManager.__deallocating_deinit()
{
  GroupActivitiesManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t one-time initialization function for groupActivities()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.groupActivities);
  __swift_project_value_buffer(v0, static Logger.groupActivities);
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_os_log);
  OS_os_log.init(subsystem:category:)();
  return Logger.init(_:)();
}

uint64_t static Logger.groupActivities.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for groupActivities != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static Logger.groupActivities);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t specialized Collection.subscript.getter(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return String.subscript.getter();
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance CodableListeningProperties.CodingKey()
{
  if (*v0)
  {
    return 7955819;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CodableListeningProperties.CodingKey@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7955819 && a2 == 0xE300000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CodableListeningProperties.CodingKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CodableListeningProperties.CodingKey and conformance CodableListeningProperties.CodingKey();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CodableListeningProperties.CodingKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CodableListeningProperties.CodingKey and conformance CodableListeningProperties.CodingKey();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CodableListeningProperties.init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9MusicCore26CodableListeningProperties33_4D3C9D6548BB3147DD0F1D268040B2BFLLC9CodingKeyOGMd);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v12 - v6;
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  lazy protocol witness table accessor for type CodableListeningProperties.CodingKey and conformance CodableListeningProperties.CodingKey();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    type metadata accessor for CodableListeningProperties();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v14 = 0;
    KeyedDecodingContainer.decode(_:forKey:)();
    v13 = 1;
    v12[1] = KeyedDecodingContainer.decode(_:forKey:)();
    v9 = String._bridgeToObjectiveC()();

    v10 = String._bridgeToObjectiveC()();

    v11 = [objc_opt_self() propertiesWithSessionIdentifier:v9 sessionKey:v10];

    (*(v5 + 8))(v7, v4);
    *(v1 + 16) = v11;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v1;
}

uint64_t CodableListeningProperties.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MusicCore26CodableListeningProperties33_4D3C9D6548BB3147DD0F1D268040B2BFLLC9CodingKeyOGMd);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  lazy protocol witness table accessor for type CodableListeningProperties.CodingKey and conformance CodableListeningProperties.CodingKey();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = *(v3 + 16);
  v10 = [v9 sessionIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v13[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {

    v11 = [v9 sessionKey];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v13[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  (*(v6 + 8))(v8, v5);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance CodableModelObjectIdentity.CodingKey()
{
  if (*v0)
  {
    return 0x616C436C65646F6DLL;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CodableModelObjectIdentity.CodingKey@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEB00000000737265;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x616C436C65646F6DLL && a2 == 0xEE00656D614E7373)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CodableModelObjectIdentity.CodingKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CodableModelObjectIdentity.CodingKey and conformance CodableModelObjectIdentity.CodingKey();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CodableModelObjectIdentity.CodingKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CodableModelObjectIdentity.CodingKey and conformance CodableModelObjectIdentity.CodingKey();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CodableModelObjectIdentity.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9MusicCore26CodableModelObjectIdentity33_4D3C9D6548BB3147DD0F1D268040B2BFLLC9CodingKeyOGMd);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - v7;
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  lazy protocol witness table accessor for type CodableModelObjectIdentity.CodingKey and conformance CodableModelObjectIdentity.CodingKey();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v34 = 0;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v10 = aBlock;
    v9 = v29;
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSKeyedUnarchiver);
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPIdentifierSet);
    v11 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
    if (v11)
    {
      v27 = v11;
      LOBYTE(aBlock) = 1;
      KeyedDecodingContainer.decode(_:forKey:)();
      v26 = String._bridgeToObjectiveC()();

      v14 = v26;
      v25 = NSClassFromString(v26);

      if (v25)
      {
        swift_getObjCClassMetadata();
        type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPModelObject);
        v15 = swift_dynamicCastMetatype();
        if (v15)
        {
          if (one-time initialization token for sharedListeningSupportedModelObjects != -1)
          {
            v23 = v15;
            swift_once();
            v15 = v23;
          }

          v16 = *(static SharedListening.sharedListeningSupportedModelObjects + 2);
          v17 = (static SharedListening.sharedListeningSupportedModelObjects + 32);
          while (v16)
          {
            v18 = *v17++;
            --v16;
            if (v18 == v15)
            {
              v19 = objc_allocWithZone(swift_getObjCClassFromMetadata());
              v32 = CFRange.init(_:);
              v33 = 0;
              aBlock = _NSConcreteStackBlock;
              v29 = 1107296256;
              v30 = thunk for @escaping @callee_guaranteed (@guaranteed MPIdentifierSet & MPMutableIdentifierSet) -> ();
              v31 = &block_descriptor_128;
              v26 = _Block_copy(&aBlock);
              v20 = v19;
              v21 = v27;
              v25 = [v20 initWithIdentifiers:v27 block:v26];
              outlined consume of Data._Representation(v10, v9);

              _Block_release(v26);
              (*(v6 + 8))(v8, v5);

              result = swift_isEscapingClosureAtFileLocation();
              if ((result & 1) == 0)
              {
                *(v3 + 16) = v25;
                goto LABEL_6;
              }

              __break(1u);
              return result;
            }
          }
        }
      }

      lazy protocol witness table accessor for type CodableModelObjectIdentity.InitializerError and conformance CodableModelObjectIdentity.InitializerError();
      swift_allocError();
      *v22 = 1;
      swift_willThrow();
      outlined consume of Data._Representation(v10, v9);
    }

    else
    {
      lazy protocol witness table accessor for type CodableModelObjectIdentity.InitializerError and conformance CodableModelObjectIdentity.InitializerError();
      swift_allocError();
      *v12 = 0;
      swift_willThrow();
      outlined consume of Data._Representation(v10, v9);
    }

    (*(v6 + 8))(v8, v5);
  }

  type metadata accessor for CodableModelObjectIdentity();
  swift_deallocPartialClassInstance();
LABEL_6:
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v3;
}

uint64_t CodableModelObjectIdentity.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MusicCore26CodableModelObjectIdentity33_4D3C9D6548BB3147DD0F1D268040B2BFLLC9CodingKeyOGMd);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20[-v7];
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  lazy protocol witness table accessor for type CodableModelObjectIdentity.CodingKey and conformance CodableModelObjectIdentity.CodingKey();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = objc_opt_self();
  v10 = [*(v3 + 16) identifiers];
  v21[0] = 0;
  v11 = [v9 archivedDataWithRootObject:v10 requiringSecureCoding:1 error:v21];

  v12 = v21[0];
  if (v11)
  {
    v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v21[0] = v13;
    v21[1] = v15;
    v20[7] = 0;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (v2)
    {
      (*(v6 + 8))(v8, v5);
    }

    else
    {
      swift_getObjectType();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v19 = NSStringFromClass(ObjCClassFromMetadata);
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      LOBYTE(v21[0]) = 1;
      KeyedEncodingContainer.encode(_:forKey:)();
      (*(v6 + 8))(v8, v5);
    }

    return outlined consume of Data._Representation(v13, v15);
  }

  else
  {
    v16 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t protocol witness for Decodable.init(from:) in conformance CodableListeningProperties@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X3>, uint64_t (*a3)(uint64_t)@<X4>, uint64_t *a4@<X8>)
{
  a2(0);
  swift_allocObject();
  result = a3(a1);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t outlined init with take of GroupActivitiesManager.PrepareResult(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of GroupActivitiesManager.PrepareResult(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002698DC()
{
  v1 = type metadata accessor for GroupActivitiesManager.Activity(0);
  v2 = (*(*(v1 - 8) + 80) + 48) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();

  v3 = v0 + v2;
  if (*(v0 + v2 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + v2);
  }

  v4 = v3 + *(v1 + 32);
  v5 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {

    v6 = *(v5 + 28);
    v7 = type metadata accessor for URL();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v4 + v6, 1, v7))
    {
      (*(v8 + 8))(v4 + v6, v7);
    }
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in GroupActivitiesManager.initiateSession(with:alwaysPromptSharePlayPermissions:confirmReplacement:)(uint64_t a1)
{
  v4 = *(type metadata accessor for GroupActivitiesManager.Activity(0) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in GroupActivitiesManager.initiateSession(with:alwaysPromptSharePlayPermissions:confirmReplacement:)(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t outlined destroy of GroupActivitiesManager.PrepareResult(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined consume of SharedListening.Event.Alert?(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_100269D20()
{

  outlined consume of SharedListening.Event(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));

  return swift_deallocObject();
}

void outlined consume of SharedListening.Event(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 <= 1u)
  {
    if (!a7)
    {
      goto LABEL_13;
    }

    if (a7 != 1)
    {
      return;
    }

LABEL_12:

    return;
  }

  if (a7 == 2)
  {

    goto LABEL_12;
  }

  if (a7 != 3)
  {
    if (a7 == 4)
    {

      outlined consume of SharedListening.Event.Alert?(a1, a2);
    }

    return;
  }

LABEL_13:
}

uint64_t outlined copy of SharedListening.Event.Alert?(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t specialized static GroupActivitiesManager.EligibilityContext.__derived_struct_equals(_:_:)(__int16 a1, void *a2, int a3, __int16 a4, void *a5, int a6)
{
  result = 0;
  v8 = a1 ^ a4;
  if (v8 & 0x100) != 0 || (v8)
  {
    return result;
  }

  if (!a2)
  {
    result = 0;
    if (a5 || ((a3 ^ a6) & 1) != 0)
    {
      return result;
    }

    return ((a6 & 0x100) == 0) ^ ((a3 & 0x100) >> 8);
  }

  if (!a5)
  {
    return 0;
  }

  v9 = a3;
  v10 = a6;
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for ICMusicSubscriptionStatus);
  v13 = a5;
  v14 = a2;
  v15 = static NSObject.== infix(_:_:)();

  result = 0;
  if (v15)
  {
    LOWORD(a6) = v10;
    LOWORD(a3) = v9;
    if (((v9 ^ v10) & 1) == 0)
    {
      return ((a6 & 0x100) == 0) ^ ((a3 & 0x100) >> 8);
    }
  }

  return result;
}

id specialized static GroupActivitiesManager.Activity.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  if (!v2)
  {
    return 0;
  }

  v3 = *(a2 + 56);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 16);
  v5 = *(v2 + 16);
  v6 = v4;
  v7 = [v5 identifiers];
  v8 = [v6 identifiers];
  v9 = [v7 intersectsSet:v8];

  return v9;
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo13MPModelObjectC14MusicUtilitiesE16LoggingComponentO_Tt0gq5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo13MPModelObjectC14MusicUtilitiesE16LoggingComponentOGMd);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      Hasher.init(_seed:)();
      NSDirectionalEdgeInsets.Edge.hash(into:)(v18, v10);
      result = Hasher._finalize()();
      v12 = -1 << *(v3 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      v15 = *(v5 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        while (1)
        {
          result = static NSDirectionalEdgeInsets.Edge.__derived_enum_equals(_:_:)(*(*(v3 + 48) + v13), v10);
          if (result)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

unint64_t lazy protocol witness table accessor for type GroupActivitiesManager.Activity.CodingKey and conformance GroupActivitiesManager.Activity.CodingKey()
{
  result = lazy protocol witness table cache variable for type GroupActivitiesManager.Activity.CodingKey and conformance GroupActivitiesManager.Activity.CodingKey;
  if (!lazy protocol witness table cache variable for type GroupActivitiesManager.Activity.CodingKey and conformance GroupActivitiesManager.Activity.CodingKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupActivitiesManager.Activity.CodingKey and conformance GroupActivitiesManager.Activity.CodingKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GroupActivitiesManager.Activity.CodingKey and conformance GroupActivitiesManager.Activity.CodingKey;
  if (!lazy protocol witness table cache variable for type GroupActivitiesManager.Activity.CodingKey and conformance GroupActivitiesManager.Activity.CodingKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupActivitiesManager.Activity.CodingKey and conformance GroupActivitiesManager.Activity.CodingKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GroupActivitiesManager.Activity.CodingKey and conformance GroupActivitiesManager.Activity.CodingKey;
  if (!lazy protocol witness table cache variable for type GroupActivitiesManager.Activity.CodingKey and conformance GroupActivitiesManager.Activity.CodingKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupActivitiesManager.Activity.CodingKey and conformance GroupActivitiesManager.Activity.CodingKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GroupActivitiesManager.Activity.CodingKey and conformance GroupActivitiesManager.Activity.CodingKey;
  if (!lazy protocol witness table cache variable for type GroupActivitiesManager.Activity.CodingKey and conformance GroupActivitiesManager.Activity.CodingKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupActivitiesManager.Activity.CodingKey and conformance GroupActivitiesManager.Activity.CodingKey);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type GroupActivitiesManager.Activity and conformance GroupActivitiesManager.Activity(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type CodableListeningProperties? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type CodableListeningProperties? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type CodableListeningProperties? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9MusicCore26CodableListeningProperties33_4D3C9D6548BB3147DD0F1D268040B2BFLLCSgMd);
    lazy protocol witness table accessor for type GroupActivitiesManager.Activity and conformance GroupActivitiesManager.Activity(&lazy protocol witness table cache variable for type CodableListeningProperties and conformance CodableListeningProperties, type metadata accessor for CodableListeningProperties);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableListeningProperties? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CodableModelObjectIdentity? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type CodableModelObjectIdentity? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type CodableModelObjectIdentity? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9MusicCore26CodableModelObjectIdentity33_4D3C9D6548BB3147DD0F1D268040B2BFLLCSgMd);
    lazy protocol witness table accessor for type GroupActivitiesManager.Activity and conformance GroupActivitiesManager.Activity(&lazy protocol witness table cache variable for type CodableModelObjectIdentity and conformance CodableModelObjectIdentity, type metadata accessor for CodableModelObjectIdentity);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableModelObjectIdentity? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SharedListening.ErrorHandling.Error and conformance SharedListening.ErrorHandling.Error()
{
  result = lazy protocol witness table cache variable for type SharedListening.ErrorHandling.Error and conformance SharedListening.ErrorHandling.Error;
  if (!lazy protocol witness table cache variable for type SharedListening.ErrorHandling.Error and conformance SharedListening.ErrorHandling.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharedListening.ErrorHandling.Error and conformance SharedListening.ErrorHandling.Error);
  }

  return result;
}

uint64_t sub_10026A520()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMd) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  v3 = v0 + v2;
  v4 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  if (!(*(*(v4 - 8) + 48))(v0 + v2, 1, v4))
  {

    v5 = *(v4 + 28);
    v6 = type metadata accessor for URL();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v3 + v5, 1, v6))
    {
      (*(v7 + 8))(v3 + v5, v6);
    }
  }

  return swift_deallocObject();
}

uint64_t outlined init with take of GroupActivitiesManager.Activity.Metadata?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in GroupActivitiesManager.itemProvider(with:metadata:)(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMd) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #1 in GroupActivitiesManager.itemProvider(with:metadata:)(a1, v6, v1 + v5, v7);
}

uint64_t partial apply for closure #1 in GroupActivitiesManager.init(coordinator:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in GroupActivitiesManager.init(coordinator:)();
}

void outlined consume of GroupActivitiesManager.EligibilityContext?(uint64_t a1, void *a2)
{
  if (a2 != 1)
  {
  }
}

void type metadata completion function for GroupActivitiesManager()
{
  type metadata accessor for Published<String>(319, &lazy cache variable for type metadata for Published<Int>, &type metadata for Int, &type metadata accessor for Published);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Published<String>(319, &lazy cache variable for type metadata for Published<Bool>, &type metadata for Bool, &type metadata accessor for Published);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Published<SharedListening.Reaction?>(319, &lazy cache variable for type metadata for Published<SharedListening.Reaction?>, &_s9MusicCore15SharedListeningO8ReactionVSgMd, &_s9MusicCore15SharedListeningO8ReactionVSgMR, &type metadata accessor for Published);
      if (v2 <= 0x3F)
      {
        type metadata accessor for GroupActivitiesManager.Activity?(319, &lazy cache variable for type metadata for GroupActivitiesManager.Activity?, type metadata accessor for GroupActivitiesManager.Activity);
        if (v3 <= 0x3F)
        {
          type metadata accessor for GroupActivitiesManager.Activity?(319, &lazy cache variable for type metadata for Signpost?, type metadata accessor for Signpost);
          if (v4 <= 0x3F)
          {
            type metadata accessor for GroupActivitiesManager.Activity?(319, &lazy cache variable for type metadata for Date?, &type metadata accessor for Date);
            if (v5 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for GroupActivitiesManager.Activity?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10026ADC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMd);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_10026AEA0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMd);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for GroupActivitiesManager.Activity()
{
  type metadata accessor for Published<SharedListening.Reaction?>(319, &lazy cache variable for type metadata for GroupActivitiesCoordinator?, &_s9MusicCore26GroupActivitiesCoordinator_pMd, &_s9MusicCore26GroupActivitiesCoordinator_pMR, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    type metadata accessor for MPCPlaybackIntent?();
    if (v1 <= 0x3F)
    {
      type metadata accessor for GroupActivitiesManager.Activity?(319, &lazy cache variable for type metadata for CodableListeningProperties?, type metadata accessor for CodableListeningProperties);
      if (v2 <= 0x3F)
      {
        type metadata accessor for GroupActivitiesManager.Activity?(319, &lazy cache variable for type metadata for CodableModelObjectIdentity?, type metadata accessor for CodableModelObjectIdentity);
        if (v3 <= 0x3F)
        {
          type metadata accessor for GroupActivitiesManager.Activity?(319, &lazy cache variable for type metadata for GroupActivitiesManager.Activity.Metadata?, type metadata accessor for GroupActivitiesManager.Activity.Metadata);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for Published<SharedListening.Reaction?>(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void type metadata accessor for MPCPlaybackIntent?()
{
  if (!lazy cache variable for type metadata for MPCPlaybackIntent?)
  {
    type metadata accessor for UIAction(255, &lazy cache variable for type metadata for MPCPlaybackIntent);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for MPCPlaybackIntent?);
    }
  }
}

uint64_t sub_10026B17C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_10026B258(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for GroupActivitiesManager.Activity.Metadata()
{
  type metadata accessor for Published<String>(319, &lazy cache variable for type metadata for String?, &type metadata for String, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    type metadata accessor for GroupActivitiesManager.Activity?(319, &lazy cache variable for type metadata for CGImageRef?, type metadata accessor for CGImageRef);
    if (v1 <= 0x3F)
    {
      type metadata accessor for GroupActivitiesManager.Activity?(319, &lazy cache variable for type metadata for URL?, &type metadata accessor for URL);
      if (v2 <= 0x3F)
      {
        type metadata accessor for CGSize(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t type metadata completion function for GroupActivitiesManager.State()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for GroupActivitiesManager.EligibilityContext(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 18))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for GroupActivitiesManager.EligibilityContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_10026B5B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GroupActivitiesManager.Activity(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 5)
  {
    return v5 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10026B634(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 4);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for GroupActivitiesManager.Activity(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t type metadata completion function for GroupActivitiesManager.PrepareResult()
{
  v0 = type metadata accessor for GroupActivitiesManager.Activity(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

unint64_t lazy protocol witness table accessor for type CodableListeningProperties.CodingKey and conformance CodableListeningProperties.CodingKey()
{
  result = lazy protocol witness table cache variable for type CodableListeningProperties.CodingKey and conformance CodableListeningProperties.CodingKey;
  if (!lazy protocol witness table cache variable for type CodableListeningProperties.CodingKey and conformance CodableListeningProperties.CodingKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableListeningProperties.CodingKey and conformance CodableListeningProperties.CodingKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableListeningProperties.CodingKey and conformance CodableListeningProperties.CodingKey;
  if (!lazy protocol witness table cache variable for type CodableListeningProperties.CodingKey and conformance CodableListeningProperties.CodingKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableListeningProperties.CodingKey and conformance CodableListeningProperties.CodingKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableListeningProperties.CodingKey and conformance CodableListeningProperties.CodingKey;
  if (!lazy protocol witness table cache variable for type CodableListeningProperties.CodingKey and conformance CodableListeningProperties.CodingKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableListeningProperties.CodingKey and conformance CodableListeningProperties.CodingKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableListeningProperties.CodingKey and conformance CodableListeningProperties.CodingKey;
  if (!lazy protocol witness table cache variable for type CodableListeningProperties.CodingKey and conformance CodableListeningProperties.CodingKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableListeningProperties.CodingKey and conformance CodableListeningProperties.CodingKey);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CodableModelObjectIdentity.CodingKey and conformance CodableModelObjectIdentity.CodingKey()
{
  result = lazy protocol witness table cache variable for type CodableModelObjectIdentity.CodingKey and conformance CodableModelObjectIdentity.CodingKey;
  if (!lazy protocol witness table cache variable for type CodableModelObjectIdentity.CodingKey and conformance CodableModelObjectIdentity.CodingKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableModelObjectIdentity.CodingKey and conformance CodableModelObjectIdentity.CodingKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableModelObjectIdentity.CodingKey and conformance CodableModelObjectIdentity.CodingKey;
  if (!lazy protocol witness table cache variable for type CodableModelObjectIdentity.CodingKey and conformance CodableModelObjectIdentity.CodingKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableModelObjectIdentity.CodingKey and conformance CodableModelObjectIdentity.CodingKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableModelObjectIdentity.CodingKey and conformance CodableModelObjectIdentity.CodingKey;
  if (!lazy protocol witness table cache variable for type CodableModelObjectIdentity.CodingKey and conformance CodableModelObjectIdentity.CodingKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableModelObjectIdentity.CodingKey and conformance CodableModelObjectIdentity.CodingKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableModelObjectIdentity.CodingKey and conformance CodableModelObjectIdentity.CodingKey;
  if (!lazy protocol witness table cache variable for type CodableModelObjectIdentity.CodingKey and conformance CodableModelObjectIdentity.CodingKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableModelObjectIdentity.CodingKey and conformance CodableModelObjectIdentity.CodingKey);
  }

  return result;
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

unint64_t lazy protocol witness table accessor for type CodableModelObjectIdentity.InitializerError and conformance CodableModelObjectIdentity.InitializerError()
{
  result = lazy protocol witness table cache variable for type CodableModelObjectIdentity.InitializerError and conformance CodableModelObjectIdentity.InitializerError;
  if (!lazy protocol witness table cache variable for type CodableModelObjectIdentity.InitializerError and conformance CodableModelObjectIdentity.InitializerError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableModelObjectIdentity.InitializerError and conformance CodableModelObjectIdentity.InitializerError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableModelObjectIdentity.InitializerError and conformance CodableModelObjectIdentity.InitializerError;
  if (!lazy protocol witness table cache variable for type CodableModelObjectIdentity.InitializerError and conformance CodableModelObjectIdentity.InitializerError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableModelObjectIdentity.InitializerError and conformance CodableModelObjectIdentity.InitializerError);
  }

  return result;
}

uint64_t block_copy_helper_126(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type Errno and conformance Errno()
{
  result = lazy protocol witness table cache variable for type Errno and conformance Errno;
  if (!lazy protocol witness table cache variable for type Errno and conformance Errno)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Errno and conformance Errno);
  }

  return result;
}

void outlined consume of SharedListening.ErrorHandling.Error(void *a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
      }

      return;
    }

LABEL_7:

    return;
  }

  if (a2 == 2)
  {

    return;
  }

  if (a2 == 3)
  {
    goto LABEL_7;
  }
}

uint64_t sub_10026BA7C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMd) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v17 = *(v1 + 64);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9MusicCore22GroupActivitiesManagerC8ActivityVs5Error_pGMd);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64);
  swift_unknownObjectRelease();
  v7 = v0 + v2;
  v8 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  if (!(*(*(v8 - 8) + 48))(v0 + v2, 1, v8))
  {

    v16 = v6;
    v9 = *(v8 + 28);
    v10 = type metadata accessor for URL();
    v11 = *(v10 - 8);
    v15 = v9;
    v12 = v7 + v9;
    v6 = v16;
    if (!(*(v11 + 48))(v12, 1, v10))
    {
      (*(v11 + 8))(v7 + v15, v10);
    }
  }

  v13 = (((v17 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + v5 + 8) & ~v5;

  (*(v4 + 8))(v0 + v13, v3);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in GroupActivitiesManager.itemProvider(with:metadata:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMd) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9MusicCore22GroupActivitiesManagerC8ActivityVs5Error_pGMd) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in closure #1 in closure #1 in GroupActivitiesManager.itemProvider(with:metadata:)(a1, v10, v11, v1 + v6, v12, v1 + v9, v13);
}

uint64_t sub_10026BE94()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMd) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v12 = *(v1 + 64);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9MusicCore22GroupActivitiesManagerC8ActivityVs5Error_pGMd);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = v0 + v2;
  v7 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  if (!(*(*(v7 - 8) + 48))(v0 + v2, 1, v7))
  {

    v8 = *(v7 + 28);
    v9 = type metadata accessor for URL();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v6 + v8, 1, v9))
    {
      (*(v10 + 8))(v6 + v8, v9);
    }
  }

  (*(v4 + 8))(v0 + ((((v12 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + v5 + 8) & ~v5), v3);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in GroupActivitiesManager.itemProvider(with:metadata:)(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMd) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9MusicCore22GroupActivitiesManagerC8ActivityVs5Error_pGMd) - 8);
  v7 = *(v1 + v5);
  v8 = v1 + ((v5 + *(v6 + 80) + 8) & ~*(v6 + 80));

  return closure #1 in closure #1 in closure #1 in closure #1 in GroupActivitiesManager.itemProvider(with:metadata:)(a1, v1 + v4, v7, v8);
}

uint64_t sub_10026C1D8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMd) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v12 = *(v1 + 64);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9MusicCore22GroupActivitiesManagerC8ActivityVs5Error_pGMd);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  swift_unknownObjectRelease();

  v6 = v0 + v2;
  v7 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  if (!(*(*(v7 - 8) + 48))(v0 + v2, 1, v7))
  {

    v8 = *(v7 + 28);
    v9 = type metadata accessor for URL();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v6 + v8, 1, v9))
    {
      (*(v10 + 8))(v6 + v8, v9);
    }
  }

  (*(v4 + 8))(v0 + ((((v12 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + v5 + 8) & ~v5), v3);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in GroupActivitiesManager.itemProvider(with:metadata:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMd) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9MusicCore22GroupActivitiesManagerC8ActivityVs5Error_pGMd) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = *(v1 + v7);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in GroupActivitiesManager.itemProvider(with:metadata:)(a1, v10, v11, v12, v1 + v6, v13, v1 + v9);
}

uint64_t outlined copy of SharedListening.Reaction?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t outlined consume of SharedListening.Reaction?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ApplicationCapabilities and conformance ApplicationCapabilities()
{
  result = lazy protocol witness table cache variable for type ApplicationCapabilities and conformance ApplicationCapabilities;
  if (!lazy protocol witness table cache variable for type ApplicationCapabilities and conformance ApplicationCapabilities)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ApplicationCapabilities and conformance ApplicationCapabilities);
  }

  return result;
}

uint64_t sub_10026C6A8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10026C6F0()
{

  return swift_deallocObject();
}

double _s9MusicCore23ApplicationCapabilitiesVSgWOi0_(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t _s9MusicCore23ApplicationCapabilitiesVSgWOg(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10026C778()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in GroupActivitiesManager.prepare(_:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in GroupActivitiesManager.prepare(_:)(a1);
}

uint64_t partial apply for closure #3 in GroupActivitiesManager.prepare(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #3 in GroupActivitiesManager.prepare(_:)(a1, v4, v5, v6);
}

uint64_t partial apply for closure #4 in GroupActivitiesManager.prepare(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #4 in GroupActivitiesManager.prepare(_:)(a1, v4, v5, v6);
}

uint64_t partial apply for closure #2 in GroupActivitiesManager.prepare(_:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #2 in GroupActivitiesManager.prepare(_:)();
}

id outlined copy of GroupActivitiesManager.EligibilityContext?(uint64_t a1, void *a2)
{
  if (a2 != 1)
  {
    return a2;
  }

  return result;
}

uint64_t partial apply for closure #2 in GroupActivitiesManager.join()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #2 in GroupActivitiesManager.join()();
}

uint64_t partial apply for closure #3 in GroupActivitiesManager.join()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #3 in GroupActivitiesManager.join()();
}

uint64_t partial apply for closure #1 in GroupActivitiesManager.presentRestrictionAlert(for:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in GroupActivitiesManager.presentRestrictionAlert(for:)();
}

uint64_t partial apply for closure #1 in GroupActivitiesManager.invalidate(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #1 in GroupActivitiesManager.invalidate(_:)(a1, v4, v5, v6);
}

uint64_t sub_10026CD70()
{
  v1 = type metadata accessor for GroupActivitiesManager.Activity(0);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  v3 = v0 + v2;
  if (*(v0 + v2 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + v2);
  }

  v4 = v3 + *(v1 + 32);
  v5 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {

    v6 = *(v5 + 28);
    v7 = type metadata accessor for URL();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v4 + v6, 1, v7))
    {
      (*(v8 + 8))(v4 + v6, v7);
    }
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in GroupActivitiesManager.initiateSession(with:alwaysPromptSharePlayPermissions:confirmReplacement:)(void *a1)
{
  v3 = *(type metadata accessor for GroupActivitiesManager.Activity(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return closure #1 in closure #1 in GroupActivitiesManager.initiateSession(with:alwaysPromptSharePlayPermissions:confirmReplacement:)(a1, v4, v5);
}

uint64_t sub_10026CF9C()
{
  v1 = type metadata accessor for GroupActivitiesManager.Activity(0);
  v2 = (*(*(v1 - 8) + 80) + 48) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();

  v3 = v0 + v2;
  if (*(v0 + v2 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + v2);
  }

  v4 = v3 + *(v1 + 32);
  v5 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {

    v6 = *(v5 + 28);
    v7 = type metadata accessor for URL();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v4 + v6, 1, v7))
    {
      (*(v8 + 8))(v4 + v6, v7);
    }
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in GroupActivitiesManager.initiateSession(with:alwaysPromptSharePlayPermissions:confirmReplacement:)(uint64_t a1)
{
  v4 = *(type metadata accessor for GroupActivitiesManager.Activity(0) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in closure #1 in closure #1 in GroupActivitiesManager.initiateSession(with:alwaysPromptSharePlayPermissions:confirmReplacement:)(a1, v6, v7, v8, v9, v1 + v5);
}

void MPCPlayerCommandDialog.alert(context:completion:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v86 = a5;
  v85 = a4;
  v90 = a2;
  v91 = a3;
  v89 = a1;
  v80 = a6;
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for String.LocalizationValue();
  v9 = *(v8 - 1);
  v10 = __chkstk_darwin(v8);
  v12 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v80 - v13;
  v84 = type metadata accessor for UUID();
  v15 = *(v84 - 8);
  __chkstk_darwin(v84);
  v83 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v6;
  v17 = [v6 actions];
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPCPlayerCommandDialogAction);
  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v18 >> 62)
  {
    v19 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v19)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMd);
    v19 = swift_allocObject();
    *(v19 + 1) = xmmword_1004F2400;
    String.LocalizationValue.init(stringLiteral:)();
    (*(v9 + 16))(v12, v14, v8);
    if (one-time initialization token for module == -1)
    {
      goto LABEL_35;
    }

    goto LABEL_50;
  }

  v8 = [v82 actions];
  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v20 >> 62)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
    if (v9)
    {
      goto LABEL_6;
    }

LABEL_42:

    v19 = _swiftEmptyArrayStorage;
LABEL_43:
    v74 = [v82 localizedTitle];
    if (v74)
    {
      v75 = v74;
      v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v70 = v76;
    }

    else
    {
      v68 = 0;
      v70 = 0;
    }

    v71 = [v82 localizedMessage];
    if (!v71)
    {
      goto LABEL_39;
    }

LABEL_47:
    v77 = v71;
    v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v73 = v78;

    goto LABEL_48;
  }

  v9 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    goto LABEL_42;
  }

LABEL_6:
  if (v9 >= 1)
  {
    v21 = 0;
    v92 = v20 & 0xC000000000000001;
    v93 = MPCPlayerCommandDialogActionTitlePlayOnlyForMe;
    v19 = _swiftEmptyArrayStorage;
    v81 = (v15 + 8);
    v88 = v20;
    v87 = v9;
    while (1)
    {
      if (v92)
      {
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v22 = *(v20 + 8 * v21 + 32);
      }

      v23 = v22;
      v24 = [v22 localizedTitle];
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;

      if (v25 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v27 == v28)
      {
      }

      else
      {
        v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v30 & 1) == 0)
        {
          v95 = v21;
          v31 = [v23 localizedTitle];
          v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v33 = v32;

          v34 = [v23 type];
          if (v34 == 2)
          {
            v35 = 1;
          }

          else
          {
            v35 = 2;
          }

          if (v34 == 1)
          {
            v36 = 0;
          }

          else
          {
            v36 = v35;
          }

          v37 = swift_allocObject();
          v38 = v85;
          v37[2] = v23;
          v37[3] = v38;
          v37[4] = v86;
          v39 = v23;
          outlined copy of (@escaping @callee_guaranteed () -> ())?(v38);
          v40 = v83;
          UUID.init()();
          v97 = UUID.uuidString.getter();
          v42 = v41;
          (*v81)(v40, v84);

          v43 = v33;

          v44 = v37;

          v96 = &async function pointer to partial apply for closure #2 in MPCPlayerCommandDialog.alert(context:completion:);
          v98 = v36;
          v94 = v36;
          goto LABEL_28;
        }
      }

      specialized static SharedListening.ErrorHandling.playLocallyAction(with:)(v89, v90, v91, &v101);
      v42 = v102;
      if (v102)
      {
        v95 = v21;
        v45 = v106;
        v46 = v107;
        v94 = v105;
        v47 = v104;
        v98 = v105;
        v99 = v103;
        v97 = v101;

        v43 = v47;

        v96 = v45;
        v44 = v46;
        outlined copy of (@escaping @callee_guaranteed () -> ())?(v45);
LABEL_28:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19[2] + 1, 1, v19);
        }

        v49 = v19[2];
        v48 = v19[3];
        v50 = v23;
        if (v49 >= v48 >> 1)
        {
          v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, v19);
        }

        v51 = v97;
        v52 = v99;
        v53 = v96;
        outlined consume of Alert.Action?(v97, v42, v99, v43, v98, v96);

        v19[2] = (v49 + 1);
        v54 = &v19[7 * v49];
        v54[4] = v51;
        v54[5] = v42;
        v54[6] = v52;
        v54[7] = v43;
        *(v54 + 64) = v94;
        v54[9] = v53;
        v54[10] = v44;
        v20 = v88;
        v9 = v87;
        v21 = v95;
        goto LABEL_9;
      }

LABEL_9:
      if (v9 == ++v21)
      {

        goto LABEL_43;
      }
    }
  }

  __break(1u);
LABEL_50:
  swift_once();
LABEL_35:
  v55 = static NSBundle.module;
  static Locale.current.getter();
  v56 = String.init(localized:table:bundle:locale:comment:)();
  v58 = v57;
  (*(v9 + 8))(v14, v8);
  v59 = swift_allocObject();
  v60 = v85;
  v61 = v86;
  *(v59 + 16) = v85;
  *(v59 + 24) = v61;
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v60);
  v62 = v83;
  UUID.init()();
  v63 = UUID.uuidString.getter();
  v65 = v64;
  (*(v15 + 8))(v62, v84);
  v19[4] = v63;
  v19[5] = v65;
  v19[6] = v56;
  v19[7] = v58;
  *(v19 + 64) = 2;
  v19[9] = &async function pointer to partial apply for closure #1 in MPCPlayerCommandDialog.alert(context:completion:);
  v19[10] = v59;
  v66 = [v82 localizedTitle];
  if (v66)
  {
    v67 = v66;
    v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v70 = v69;
  }

  else
  {
    v68 = 0;
    v70 = 0;
  }

  v71 = [v82 localizedMessage];
  if (v71)
  {
    goto LABEL_47;
  }

LABEL_39:
  v72 = 0;
  v73 = 0;
LABEL_48:
  v100 = 1;
  v79 = v80;
  *v80 = v68;
  v79[1] = v70;
  v79[2] = v72;
  v79[3] = v73;
  *(v79 + 32) = 0;
  v79[5] = 0;
  *(v79 + 48) = 1;
  v79[7] = v19;
  v79[8] = 0;
}

BOOL static SharedListening.isMusicItemTypeSupported(_:)(uint64_t a1)
{
  if (one-time initialization token for sharedListeningSupportedMusicItems != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = (static SharedListening.sharedListeningSupportedMusicItems + 32);
  v2 = *(static SharedListening.sharedListeningSupportedMusicItems + 2) + 1;
  do
  {
    if (!--v2)
    {
      break;
    }

    v3 = *v1;
    v1 += 2;
  }

  while (v3 != a1);
  return v2 != 0;
}

uint64_t Logger.sharedListening.unsafeMutableAddressor()
{
  if (one-time initialization token for sharedListening != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, static Logger.sharedListening);
}

uint64_t *SharedListening.Event.properties.unsafeMutableAddressor()
{
  if (one-time initialization token for properties != -1)
  {
    swift_once();
  }

  return &static SharedListening.Event.properties;
}

double SharedListening.Event.init(_:)@<D0>(NSObject *a1@<X0>, uint64_t a2@<X8>)
{
  specialized SharedListening.Event.init(_:)(a1, v5);
  v3 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v3;
  result = *&v6;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  return result;
}

uint64_t static SharedListening.buildSharedSession(with:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = MPCPlayerResponse.perform(_:issuance:options:);

  return specialized static SharedListening.buildSharedSession(with:)(a1);
}

uint64_t static SharedListening.buildSharedSession(with:on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return specialized static SharedListening.buildSharedSession(with:on:)(a1, a2, a3, a4);
}

uint64_t SharedListening.Event.Content.title.getter(void *a1, char a2)
{
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v22[-v10];
  if (a2)
  {
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (v12)
    {
      v13 = [v12 title];
      if (!v13)
      {
        goto LABEL_9;
      }

LABEL_6:
      v14 = v13;
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v15;
    }

    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (v17)
    {
      v13 = [v17 name];
      if (v13)
      {
        goto LABEL_6;
      }
    }

    else
    {
      objc_opt_self();
      v20 = swift_dynamicCastObjCClass();
      if (!v20)
      {
        v23 = 0;
        v24 = 0xE000000000000000;
        _StringGuts.grow(_:)(34);

        v23 = 0xD000000000000020;
        v24 = 0x80000001004CE790;
        swift_getObjectType();
        v21._countAndFlagsBits = _typeName(_:qualified:)();
        String.append(_:)(v21);

        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      v13 = [v20 name];
      if (v13)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
    v13 = [a1 title];
    if (v13)
    {
      goto LABEL_6;
    }
  }

LABEL_9:
  String.LocalizationValue.init(stringLiteral:)();
  (*(v6 + 16))(v9, v11, v5);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v18 = static NSBundle.module;
  static Locale.current.getter();
  v19 = String.init(localized:table:bundle:locale:comment:)();
  (*(v6 + 8))(v11, v5);
  return v19;
}

Swift::Void __swiftcall SharedListening.ErrorHandling.Error.log()()
{
  if (v1 <= 2u)
  {
    if (v1 == 1)
    {
      v16 = v0;
      if (one-time initialization token for groupActivities != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, static Logger.groupActivities);

      oslog = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      outlined consume of SharedListening.ErrorHandling.Error(v16, 1u);
      if (os_log_type_enabled(oslog, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v43 = v20;
        *v19 = 136446210;
        v45 = v16;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionCy9MusicCore0aB7ManagerC8ActivityVGSgMd);
        v21 = String.init<A>(describing:)();
        v23 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v21, v22, &v43);

        *(v19 + 4) = v23;
        _os_log_impl(&_mh_execute_header, oslog, v18, "Cannot joined invalid session=%{public}s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v20);

        return;
      }
    }

    else
    {
      if (v1 != 2)
      {
        return;
      }

      v2 = [v0 error];
      if (one-time initialization token for sharedListening != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      __swift_project_value_buffer(v3, static Logger.sharedListening);
      v4 = v2;
      oslog = Logger.logObject.getter();
      v5 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(oslog, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v45 = v7;
        *v6 = 136446210;
        v43 = v2;
        LOBYTE(v44) = 0;
        v8 = v4;
        v9 = String.init<A>(describing:)();
        v11 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v9, v10, &v45);

        *(v6 + 4) = v11;
        _os_log_impl(&_mh_execute_header, oslog, v5, "Creation error %{public}s", v6, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v7);

        return;
      }
    }

    goto LABEL_42;
  }

  if (v1 != 3)
  {
    if (v1 != 4)
    {
      return;
    }

    if (v0 == 2)
    {
      if (one-time initialization token for sharedListening != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      __swift_project_value_buffer(v41, static Logger.sharedListening);
      oslog = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(oslog, v13))
      {
        goto LABEL_42;
      }

      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "Building session failed because the queue is empty";
    }

    else
    {
      if (v0 == 3)
      {
        if (one-time initialization token for sharedListening != -1)
        {
          swift_once();
        }

        v34 = type metadata accessor for Logger();
        __swift_project_value_buffer(v34, static Logger.sharedListening);
        oslog = Logger.logObject.getter();
        v35 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(oslog, v35))
        {
          goto LABEL_42;
        }

        v36 = swift_slowAlloc();
        *v36 = 67109120;
        *(v36 + 1) = FigOutputMonitorIsScreenProbablyBeingRecorded() != 0;
        v15 = "Presenting not supported content alert (isScreenSharing=%{BOOL}d)";
        v37 = v35;
        v38 = oslog;
        v39 = v36;
        v40 = 8;
LABEL_41:
        _os_log_impl(&_mh_execute_header, v38, v37, v15, v39, v40);

LABEL_42:

        return;
      }

      if (v0 != 4)
      {
        return;
      }

      if (one-time initialization token for sharedListening != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      __swift_project_value_buffer(v12, static Logger.sharedListening);
      oslog = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(oslog, v13))
      {
        goto LABEL_42;
      }

      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "Cannot add intent for the current route.";
    }

    v37 = v13;
    v38 = oslog;
    v39 = v14;
    v40 = 2;
    goto LABEL_41;
  }

  if (v0)
  {
    swift_getErrorValue();
    v0 = Error.localizedDescription.getter();
  }

  else
  {
    v24 = 0;
  }

  v43 = v0;
  v44 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
  v25 = String.init<A>(describing:)();
  v27 = v26;
  if (one-time initialization token for groupActivities != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  __swift_project_value_buffer(v28, static Logger.groupActivities);

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v43 = v32;
    *v31 = 136446210;
    v33 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v25, v27, &v43);

    *(v31 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v29, v30, "Could not add intent to the player: %{public}s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v32);
  }

  else
  {
  }
}

void SharedListening.ErrorHandling.Error.alert(with:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(char *, uint64_t)@<X3>, char a5@<W4>, uint64_t *a6@<X8>)
{
  v170 = a4;
  v169 = a3;
  v168 = a2;
  v167 = a1;
  v175 = a6;
  v7 = type metadata accessor for URL();
  v165 = *(v7 - 8);
  v8 = *(v165 + 64);
  v9 = __chkstk_darwin(v7);
  __chkstk_darwin(v9);
  v11 = (v157 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = v157 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v157 - v16;
  v172 = type metadata accessor for UUID();
  v18 = *(v172 - 8);
  __chkstk_darwin(v172);
  v171 = v157 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Locale();
  __chkstk_darwin(v20 - 8);
  v173 = v157 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for String.LocalizationValue();
  v174 = *(v22 - 8);
  v23 = __chkstk_darwin(v22);
  v25 = v157 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  if (a5 == 2)
  {
    v159 = v15;
    v157[1] = v8;
    v158 = v157 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v160 = v17;
    v163 = v11;
    v164 = v7;
    v28 = v157 - v26;
    v67 = v170;
    v68 = [v170 dialog];
    if (v68)
    {
      v69 = v68;
      MPCPlayerCommandDialog.alert(context:completion:)(v167, v168, v169, 0, 0, &v176);
      v70 = v176;
      v44 = v177;
      v71 = *(&v178 + 1);
      v40 = v178;
      v48 = *(&v179 + 1);
      v72 = v179;
      v73 = v180;
      v47 = v181;
      v49 = v182;

      v46 = v70;
      v52 = v72 & 0xFFFFFFFFFFFFFF00;
      v50 = v73 & 0xFFFFFFFFFFFFFF00;
      v51 = v72;
      v53 = v73;
      v45 = v71;
LABEL_26:
      v27 = v175;
      goto LABEL_27;
    }

    v74 = [v67 error];
    v27 = v175;
    if (v74)
    {
      v176 = v74;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
      type metadata accessor for related decl 'e' for MPCPlayerEnqueueErrorCode(0);
      if (swift_dynamicCast())
      {
        v75 = v183;
        v176 = v183;
        lazy protocol witness table accessor for type related decl 'e' for MPCPlayerRequestErrorCode and conformance related decl 'e' for MPCPlayerRequestErrorCode(&lazy protocol witness table cache variable for type related decl 'e' for MPCPlayerEnqueueErrorCode and conformance related decl 'e' for MPCPlayerEnqueueErrorCode, type metadata accessor for related decl 'e' for MPCPlayerEnqueueErrorCode);
        _BridgedStoredNSError.code.getter();

        if (v183 == 3)
        {
          goto LABEL_19;
        }
      }
    }

    v166 = v18;
    String.LocalizationValue.init(stringLiteral:)();
    v94 = v174;
    v95 = v22;
    v96 = *(v174 + 16);
    v96(v25, v28, v95);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v97 = static NSBundle.module;
    static Locale.current.getter();
    v98 = v97;
    v162 = String.init(localized:table:bundle:locale:comment:)();
    v161 = v99;
    v174 = *(v94 + 8);
    (v174)(v28, v95);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMd);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_1004F2400;
    String.LocalizationValue.init(stringLiteral:)();
    v96(v25, v28, v95);
    static Locale.current.getter();
    v100 = String.init(localized:table:bundle:locale:comment:)();
    v102 = v101;
    (v174)(v28, v95);
    v103 = v171;
    UUID.init()();
    v104 = UUID.uuidString.getter();
    v106 = v105;
    v107 = *(v166 + 8);
    v166 += 8;
    v107(v103, v172);
    *(v47 + 32) = v104;
    *(v47 + 40) = v106;
    *(v47 + 48) = v100;
    *(v47 + 56) = v102;
    *(v47 + 64) = 2;
    *(v47 + 72) = 0;
    *(v47 + 80) = 0;
    v176 = 0;
    v177 = 0xE000000000000000;
    _StringGuts.grow(_:)(30);

    v176 = 0xD00000000000001CLL;
    v177 = 0x80000001004CE8E0;
    *&v183 = [v67 error];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd);
    v108._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v108);

    v110 = v176;
    v109 = v177;
    v111 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4DataVTt0gq5Tf4g_n(_swiftEmptyArrayStorage);
    if (one-time initialization token for isInternalInstall != -1)
    {
      swift_once();
    }

    v27 = v175;
    v112 = v164;
    v113 = v163;
    if (static DeviceCapabilities.isInternalInstall == 1)
    {
      v114 = v110;
      v115 = v160;
      static URL.tapToRadar(title:description:screenshots:attachments:files:keywords:withDevicePrefix:)(v114, v109, 0xD000000000000032, 0x80000001004C8F70, _swiftEmptyArrayStorage, v111, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, v160, 1u);

      v116 = v159;
      outlined init with copy of TaskPriority?(v115, v159, &_s10Foundation3URLVSgMd);
      v117 = v165;
      if ((*(v165 + 48))(v116, 1, v112) == 1)
      {
        outlined destroy of TaskPriority?(v115, &_s10Foundation3URLVSgMd);
        v118 = v116;
      }

      else
      {
        v174 = v107;
        v140 = *(v117 + 32);
        v140(v113, v116, v112);
        v141 = v113;
        v142 = [objc_opt_self() sharedApplication];
        URL._bridgeToObjectiveC()(v143);
        v145 = v144;
        v146 = [v142 canOpenURL:v144];

        if (v146)
        {
          v147 = v158;
          (*(v117 + 16))(v158, v141, v112);
          v148 = (*(v117 + 80) + 16) & ~*(v117 + 80);
          v149 = swift_allocObject();
          v140(v149 + v148, v147, v112);
          v150 = v171;
          UUID.init()();
          v151 = UUID.uuidString.getter();
          v153 = v152;
          (v174)(v150, v172);
          (*(v117 + 8))(v141, v112);
          outlined destroy of TaskPriority?(v160, &_s10Foundation3URLVSgMd);
          v155 = *(v47 + 16);
          v154 = *(v47 + 24);
          if (v155 >= v154 >> 1)
          {
            v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v154 > 1), v155 + 1, 1, v47);
          }

          v40 = v162;
          *(v47 + 16) = v155 + 1;
          v156 = v47 + 56 * v155;
          *(v156 + 32) = v151;
          *(v156 + 40) = v153;
          strcpy((v156 + 48), "File a Radar");
          *(v156 + 61) = 0;
          *(v156 + 62) = -5120;
          *(v156 + 64) = 2;
          *(v156 + 72) = &async function pointer to partial apply for closure #1 in static Alert.Action.tapToRadar(title:description:screenshots:attachments:files:keywords:withDevicePrefix:);
          *(v156 + 80) = v149;
          goto LABEL_52;
        }

        (*(v117 + 8))(v141, v112);
        v118 = v160;
      }

      outlined destroy of TaskPriority?(v118, &_s10Foundation3URLVSgMd);
    }

    else
    {
    }

    v40 = v162;
LABEL_52:
    v46 = 0;
    v44 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = 1;
    v45 = v161;
    goto LABEL_27;
  }

  if (a5 == 3)
  {
    v54 = v171;
    v166 = v18;
    v55 = v157 - v26;
    String.LocalizationValue.init(stringLiteral:)();
    v56 = v174;
    v167 = *(v174 + 16);
    (v167)(v25, v55, v22);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v57 = static NSBundle.module;
    static Locale.current.getter();
    v170 = v57;
    v169 = String.init(localized:table:bundle:locale:comment:)();
    v168 = v58;
    v59 = *(v56 + 8);
    v59(v55, v22);
    UUID.init()();
    v174 = UUID.uuidString.getter();
    v165 = v60;
    (*(v166 + 8))(v54, v172);
    String.LocalizationValue.init(stringLiteral:)();
    v61 = v167;
    (v167)(v25, v55, v22);
    static Locale.current.getter();
    v62 = v170;
    v63 = String.init(localized:table:bundle:locale:comment:)();
    v170 = v64;
    v59(v55, v22);
    String.LocalizationValue.init(stringLiteral:)();
    v61(v25, v55, v22);
    v46 = v63;
    static Locale.current.getter();
    v40 = String.init(localized:table:bundle:locale:comment:)();
    v45 = v65;
    v66 = v22;
    v44 = v170;
    v59(v55, v66);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMd);
    v47 = swift_allocObject();
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    *(v47 + 32) = v174;
    *(v47 + 40) = v165;
    *(v47 + 16) = xmmword_1004F2400;
    *(v47 + 48) = v169;
    *(v47 + 56) = v168;
    *(v47 + 64) = 2;
    *(v47 + 72) = 0;
    *(v47 + 80) = 0;
    v53 = 1;
    goto LABEL_26;
  }

  v27 = v175;
  if (a5 != 4)
  {
    goto LABEL_10;
  }

  v28 = v157 - v26;
  if (v170 == 2)
  {
    v166 = v18;
    v80 = v157 - v26;
    String.LocalizationValue.init(stringLiteral:)();
    v81 = v174;
    v82 = *(v174 + 16);
    v82(v25, v28, v22);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v83 = static NSBundle.module;
    static Locale.current.getter();
    v84 = v83;
    v165 = String.init(localized:table:bundle:locale:comment:)();
    v170 = v85;
    v174 = *(v81 + 8);
    (v174)(v80, v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMd);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_1004F2400;
    String.LocalizationValue.init(stringLiteral:)();
    v82(v25, v80, v22);
    static Locale.current.getter();
    v86 = String.init(localized:table:bundle:locale:comment:)();
    v88 = v87;
    v89 = v22;
    v44 = v170;
    (v174)(v80, v89);
    v90 = v171;
    UUID.init()();
    v91 = UUID.uuidString.getter();
    v93 = v92;
    (*(v166 + 8))(v90, v172);
    v45 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    *(v47 + 32) = v91;
    *(v47 + 40) = v93;
    v46 = v165;
    *(v47 + 48) = v86;
    *(v47 + 56) = v88;
    v40 = 0;
    *(v47 + 64) = 0;
    v53 = 1;
    *(v47 + 72) = 0;
    *(v47 + 80) = 0;
    goto LABEL_26;
  }

  if (v170 != 3)
  {
    if (v170 == 4)
    {
      v166 = v18;
      String.LocalizationValue.init(stringLiteral:)();
      v29 = v174;
      v30 = *(v174 + 16);
      v30(v25, v28, v22);
      if (one-time initialization token for module != -1)
      {
        swift_once();
      }

      v31 = static NSBundle.module;
      v32 = static NSBundle.module;
      v164 = v31;
      v33 = v32;
      static Locale.current.getter();
      v170 = v33;
      v169 = String.init(localized:table:bundle:locale:comment:)();
      v168 = v34;
      v163 = *(v29 + 8);
      (v163)(v28, v22);
      v35 = v171;
      UUID.init()();
      v174 = UUID.uuidString.getter();
      v167 = v36;
      (*(v166 + 8))(v35, v172);
      String.LocalizationValue.init(stringLiteral:)();
      v30(v25, v28, v22);
      static Locale.current.getter();
      v37 = v170;
      v165 = String.init(localized:table:bundle:locale:comment:)();
      v170 = v38;
      v39 = v163;
      (v163)(v28, v22);
      String.LocalizationValue.init(stringLiteral:)();
      v30(v25, v28, v22);
      static Locale.current.getter();
      v40 = String.init(localized:table:bundle:locale:comment:)();
      v42 = v41;
      v43 = v22;
      v44 = v170;
      (v39)(v28, v43);
      v45 = v42;
      v46 = v165;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMd);
      v47 = swift_allocObject();
      v48 = 0;
      v49 = 0;
      v50 = 0;
      v51 = 0;
      v52 = 0;
      *(v47 + 32) = v174;
      *(v47 + 40) = v167;
      *(v47 + 16) = xmmword_1004F2400;
      *(v47 + 48) = v169;
      *(v47 + 56) = v168;
      *(v47 + 64) = 2;
      *(v47 + 72) = 0;
      *(v47 + 80) = 0;
      v53 = 1;
      goto LABEL_27;
    }

LABEL_10:
    v46 = 0;
    v44 = 0;
    v40 = 0;
    v45 = 0;
    v48 = 0;
    v47 = 0;
    v49 = 0;
    v53 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    goto LABEL_27;
  }

LABEL_19:
  v166 = v18;
  IsScreenProbablyBeingRecorded = FigOutputMonitorIsScreenProbablyBeingRecorded();
  v77 = (v174 + 16);
  v157[0] = v22;
  if (IsScreenProbablyBeingRecorded)
  {
    String.LocalizationValue.init(stringLiteral:)();
    v78 = *v77;
    (*v77)(v25, v28, v22);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v175 = static NSBundle.module;
    static Locale.current.getter();
    v162 = String.init(localized:table:bundle:locale:comment:)();
    v161 = v79;
    v170 = *(v174 + 8);
    v170(v28, v22);
    v165 = 0;
    v44 = 0;
    FigOutputMonitorIsScreenProbablyBeingRecorded();
  }

  else
  {
    String.LocalizationValue.init(stringLiteral:)();
    v119 = v25;
    v120 = *v77;
    (*v77)(v119, v28, v22);
    v164 = v77;
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v121 = static NSBundle.module;
    static Locale.current.getter();
    v175 = v121;
    v162 = String.init(localized:table:bundle:locale:comment:)();
    v161 = v122;
    v123 = *(v174 + 8);
    v123(v28, v22);
    String.LocalizationValue.init(stringLiteral:)();
    v120(v119, v28, v22);
    static Locale.current.getter();
    v163 = v120;
    v25 = v119;
    v165 = String.init(localized:table:bundle:locale:comment:)();
    v125 = v124;
    v126 = v22;
    v44 = v125;
    v170 = v123;
    v123(v28, v126);
    v78 = v163;
    FigOutputMonitorIsScreenProbablyBeingRecorded();
  }

  String.LocalizationValue.init(stringLiteral:)();
  v127 = v28;
  v78(v25, v28, v157[0]);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v128 = v175;
  static Locale.current.getter();
  v129 = String.init(localized:table:bundle:locale:comment:)();
  v131 = v130;
  v132 = v166;
  v170(v127, v157[0]);
  v133 = v171;
  UUID.init()();
  v134 = UUID.uuidString.getter();
  v136 = v135;
  (*(v132 + 8))(v133, v172);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMd);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1004F2400;
  *(v47 + 32) = v134;
  *(v47 + 40) = v136;
  *(v47 + 48) = v129;
  *(v47 + 56) = v131;
  *(v47 + 64) = 0;
  *(v47 + 72) = 0;
  *(v47 + 80) = 0;

  specialized static SharedListening.ErrorHandling.playLocallyAction(with:)(v167, v168, v169, &v176);
  v137 = v177;
  if (v177)
  {
    v138 = v176;
    v183 = v178;
    v184 = v179;
    v185 = v180;
    v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, 2, 1, v47);

    *(v47 + 16) = 2;
    *(v47 + 88) = v138;
    *(v47 + 96) = v137;
    v139 = v184;
    *(v47 + 104) = v183;
    *(v47 + 120) = v139;
    *(v47 + 136) = v185;
  }

  else
  {
  }

  v40 = v162;
  v45 = v161;
  v48 = 0;
  v49 = 0;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v53 = 1;
  v46 = v165;
LABEL_27:
  *v27 = v46;
  v27[1] = v44;
  v27[2] = v40;
  v27[3] = v45;
  v27[4] = v52 | v51;
  v27[5] = v48;
  v27[6] = v50 | v53;
  v27[7] = v47;
  v27[8] = v49;
}

uint64_t static SharedListening.addIntent(_:playbackController:issuer:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[85] = a3;
  v3[84] = a2;
  v3[83] = a1;
  v3[86] = type metadata accessor for MainActor();
  v3[87] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[88] = v5;
  v3[89] = v4;

  return _swift_task_switch(static SharedListening.addIntent(_:playbackController:issuer:), v5, v4);
}

uint64_t static SharedListening.addIntent(_:playbackController:issuer:)()
{
  v22 = v0;
  v1 = one-time initialization token for sharedListening;
  v2 = *(v0 + 664);
  if (v1 == -1)
  {
    v3 = v2;
  }

  else
  {
    swift_once();
    v3 = *(v0 + 664);
  }

  v4 = type metadata accessor for Logger();
  *(v0 + 720) = __swift_project_value_buffer(v4, static Logger.sharedListening);
  v5 = v3;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 664);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136446210;
    *(v0 + 592) = v8;
    *(v0 + 600) = 1;
    v11 = v8;
    v12 = String.init<A>(describing:)();
    v14 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v12, v13, &v21);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "Adding the intent to the player with command%{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
  }

  if (*(v0 + 672))
  {
    v15 = *(v0 + 664);
    *(v0 + 552) = &type metadata for Player.ReplaceCommand;
    *(v0 + 560) = &protocol witness table for Player.ReplaceCommand;
    *(v0 + 528) = v15;
    *(v0 + 536) = 1;
    v16 = v15;
    *(v0 + 728) = static MainActor.shared.getter();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    *(v0 + 736) = v18;
    *(v0 + 744) = v17;

    return _swift_task_switch(static SharedListening.addIntent(_:playbackController:issuer:), v18, v17);
  }

  else
  {

    v19 = *(v0 + 8);

    return v19();
  }
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore6PlayerC7Command_pGMd);
  v1 = swift_allocObject();
  v0[94] = v1;
  *(v1 + 16) = xmmword_1004F2400;
  outlined init with copy of ActionPerforming((v0 + 66), v1 + 32);
  v0[95] = static MainActor.shared.getter();
  v2 = swift_task_alloc();
  v0[96] = v2;
  *v2 = v0;
  v2[1] = static SharedListening.addIntent(_:playbackController:issuer:);
  v3 = v0[85];

  return PlaybackController.perform(_:options:intent:issuer:)(v1, 0x10000, 1, 0, 0, v3);
}

{

  v1 = *(v0 + 744);
  v2 = *(v0 + 736);

  return _swift_task_switch(static SharedListening.addIntent(_:playbackController:issuer:), v2, v1);
}

{
  v1 = v0[97];

  if (v1 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_8:

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 66));
    v3 = v0[89];
    v2 = v0[88];
    v6 = static SharedListening.addIntent(_:playbackController:issuer:);
    goto LABEL_9;
  }

  v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return _swift_task_switch(v4, v2, v3);
    }

    v5 = *(v0[97] + 32);
  }

  v0[99] = v5;

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 66));
  v3 = v0[89];
  v2 = v0[88];
  v6 = static SharedListening.addIntent(_:playbackController:issuer:);
LABEL_9:
  v4 = v6;

  return _swift_task_switch(v4, v2, v3);
}

{

  v1 = *(v0 + 744);
  v2 = *(v0 + 736);

  return _swift_task_switch(static SharedListening.addIntent(_:playbackController:issuer:), v2, v1);
}

{

  v1 = *(v0 + 712);
  v2 = *(v0 + 704);

  return _swift_task_switch(static SharedListening.addIntent(_:playbackController:issuer:), v2, v1);
}

{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 66));
  v0[76] = v0[98];
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  type metadata accessor for related decl 'e' for MPCPlayerRequestErrorCode(0);
  if (!swift_dynamicCast())
  {
    goto LABEL_9;
  }

  v1 = v0[77];
  v0[100] = v1;
  v0[78] = v1;
  lazy protocol witness table accessor for type related decl 'e' for MPCPlayerRequestErrorCode and conformance related decl 'e' for MPCPlayerRequestErrorCode(&lazy protocol witness table cache variable for type related decl 'e' for MPCPlayerRequestErrorCode and conformance related decl 'e' for MPCPlayerRequestErrorCode, type metadata accessor for related decl 'e' for MPCPlayerRequestErrorCode);
  _BridgedStoredNSError.code.getter();
  if (v0[79] != 1001)
  {

LABEL_9:
    v11 = v0[83];

    swift_willThrow();

    goto LABEL_10;
  }

  v2 = v1;
  v3 = _convertErrorToNSError(_:)();

  v4 = [v3 msv_errorByUnwrappingDomain:MPCErrorDomain];
  v0[101] = v4;

  if (v4)
  {
    swift_getErrorValue();
    if (dispatch thunk of Error._code.getter() == 58)
    {
      v5 = [objc_allocWithZone(MPAVEndpointRoutingDataSource) init];
      v6 = objc_allocWithZone(MPAVRoutingController);
      v7 = String._bridgeToObjectiveC()();
      v8 = [v6 initWithDataSource:v5 name:v7];
      v0[102] = v8;

      v0[2] = v0;
      v0[7] = v0 + 81;
      v0[3] = static SharedListening.addIntent(_:playbackController:issuer:);
      v9 = swift_continuation_init();
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo9MPAVRouteCSgs5NeverOGMd);
      v0[103] = v10;
      v0[41] = v10;
      v0[34] = _NSConcreteStackBlock;
      v0[35] = 1107296256;
      v0[36] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned MPAVRoute?) -> () with result type MPAVRoute?;
      v0[37] = &block_descriptor_42;
      v0[38] = v9;
      [v8 getActiveRouteWithTimeout:v0 + 34 completion:2.0];

      return _swift_continuation_await(v0 + 2);
    }
  }

  v13 = v0[83];

  swift_willThrow();

LABEL_10:
  v12 = v0[1];

  return v12();
}

{
  v1 = [*(v0 + 792) error];
  if (!v1)
  {
    v1 = [*(v0 + 792) dialog];
    if (!v1)
    {
      v17 = *(v0 + 792);
      v18 = *(v0 + 664);

      v16 = *(v0 + 8);
      goto LABEL_13;
    }
  }

  v2 = *(v0 + 792);

  lazy protocol witness table accessor for type SharedListening.ErrorHandling.Error and conformance SharedListening.ErrorHandling.Error();
  v3 = swift_allocError();
  *v4 = v2;
  *(v4 + 8) = 2;
  swift_willThrow();

  *(v0 + 608) = v3;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  type metadata accessor for related decl 'e' for MPCPlayerRequestErrorCode(0);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 616);
    *(v0 + 800) = v5;
    *(v0 + 624) = v5;
    lazy protocol witness table accessor for type related decl 'e' for MPCPlayerRequestErrorCode and conformance related decl 'e' for MPCPlayerRequestErrorCode(&lazy protocol witness table cache variable for type related decl 'e' for MPCPlayerRequestErrorCode and conformance related decl 'e' for MPCPlayerRequestErrorCode, type metadata accessor for related decl 'e' for MPCPlayerRequestErrorCode);
    _BridgedStoredNSError.code.getter();
    if (*(v0 + 632) == 1001)
    {

      v6 = v5;
      v7 = _convertErrorToNSError(_:)();

      v8 = [v7 msv_errorByUnwrappingDomain:MPCErrorDomain];
      *(v0 + 808) = v8;

      if (v8)
      {
        swift_getErrorValue();
        if (dispatch thunk of Error._code.getter() == 58)
        {
          v9 = [objc_allocWithZone(MPAVEndpointRoutingDataSource) init];
          v10 = objc_allocWithZone(MPAVRoutingController);
          v11 = String._bridgeToObjectiveC()();
          v12 = [v10 initWithDataSource:v9 name:v11];
          *(v0 + 816) = v12;

          *(v0 + 16) = v0;
          *(v0 + 56) = v0 + 648;
          *(v0 + 24) = static SharedListening.addIntent(_:playbackController:issuer:);
          v13 = swift_continuation_init();
          v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo9MPAVRouteCSgs5NeverOGMd);
          *(v0 + 824) = v14;
          *(v0 + 328) = v14;
          *(v0 + 272) = _NSConcreteStackBlock;
          *(v0 + 280) = 1107296256;
          *(v0 + 288) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned MPAVRoute?) -> () with result type MPAVRoute?;
          *(v0 + 296) = &block_descriptor_42;
          *(v0 + 304) = v13;
          [v12 getActiveRouteWithTimeout:v0 + 272 completion:2.0];

          return _swift_continuation_await(v0 + 16);
        }
      }

      v19 = *(v0 + 664);

      swift_willThrow();

      goto LABEL_12;
    }
  }

  v15 = *(v0 + 664);

  swift_willThrow();

LABEL_12:
  v16 = *(v0 + 8);
LABEL_13:

  return v16();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 880);
  v2 = *(v0 + 816);
  v3 = *(v0 + 808);
  v4 = *(v0 + 800);

  v5 = *(v0 + 8);

  return v5();
}

{
  v1 = *(*v0 + 712);
  v2 = *(*v0 + 704);

  return _swift_task_switch(static SharedListening.addIntent(_:playbackController:issuer:), v2, v1);
}

{
  v1 = v0[81];
  v0[104] = v1;
  v2 = objc_opt_self();
  v0[105] = v2;
  v3 = v1;
  v4 = [v2 systemRoute];
  v5 = v4;
  if (!v1)
  {
    if (!v4)
    {
      goto LABEL_6;
    }

LABEL_10:

LABEL_11:
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "SharedListening requires system route, switching…", v14, 2u);
    }

    v0[10] = v0;
    v0[11] = static SharedListening.addIntent(_:playbackController:issuer:);
    v15 = swift_continuation_init();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd);
    v0[106] = v16;
    v0[49] = v16;
    v0[42] = _NSConcreteStackBlock;
    v0[43] = 1107296256;
    v0[44] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
    v0[45] = &block_descriptor_14;
    v0[46] = v15;
    [v2 setActiveRoute:0 completion:v0 + 42];

    return _swift_continuation_await(v0 + 10);
  }

  if (!v4)
  {
    v5 = v3;
    goto LABEL_10;
  }

  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPAVRoute);
  v6 = static NSObject.== infix(_:_:)();

  if ((v6 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v7 = v0[102];
  v8 = v0[101];
  v9 = v0[83];

  swift_willThrow();

  v10 = v0[1];

  return v10();
}

{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 856) = v2;
  v3 = *(v1 + 712);
  v4 = *(v1 + 704);
  if (v2)
  {
    v5 = static SharedListening.addIntent(_:playbackController:issuer:);
  }

  else
  {
    v5 = static SharedListening.addIntent(_:playbackController:issuer:);
  }

  return _swift_task_switch(v5, v4, v3);
}

{
  v1 = *(v0 + 848);
  v2 = *(v0 + 816);
  v3 = [*(v0 + 840) systemRoute];
  *(v0 + 864) = v3;
  *(v0 + 144) = v0;
  *(v0 + 152) = static SharedListening.addIntent(_:playbackController:issuer:);
  v4 = swift_continuation_init();
  *(v0 + 456) = v1;
  *(v0 + 400) = _NSConcreteStackBlock;
  *(v0 + 408) = 1107296256;
  *(v0 + 416) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
  *(v0 + 424) = &block_descriptor_17_0;
  *(v0 + 432) = v4;
  [v2 selectRoute:v3 operation:0 completion:v0 + 400];

  return _swift_continuation_await(v0 + 144);
}

{
  v1 = *v0;
  v2 = *(*v0 + 176);
  *(*v0 + 872) = v2;
  v3 = *(v1 + 712);
  v4 = *(v1 + 704);
  if (v2)
  {
    v5 = static SharedListening.addIntent(_:playbackController:issuer:);
  }

  else
  {
    v5 = static SharedListening.addIntent(_:playbackController:issuer:);
  }

  return _swift_task_switch(v5, v4, v3);
}

{
  v1 = *(v0 + 824);
  v2 = *(v0 + 816);

  *(v0 + 208) = v0;
  *(v0 + 248) = v0 + 656;
  *(v0 + 216) = static SharedListening.addIntent(_:playbackController:issuer:);
  v3 = swift_continuation_init();
  *(v0 + 520) = v1;
  *(v0 + 464) = _NSConcreteStackBlock;
  *(v0 + 472) = 1107296256;
  *(v0 + 480) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned MPAVRoute?) -> () with result type MPAVRoute?;
  *(v0 + 488) = &block_descriptor_20;
  *(v0 + 496) = v3;
  [v2 getActiveRouteWithTimeout:v0 + 464 completion:2.0];

  return _swift_continuation_await(v0 + 208);
}

{
  v1 = *(*v0 + 712);
  v2 = *(*v0 + 704);

  return _swift_task_switch(static SharedListening.addIntent(_:playbackController:issuer:), v2, v1);
}

{

  v1 = *(v0 + 656);
  *(v0 + 880) = v1;
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v1;
    v7 = v2;
    _os_log_impl(&_mh_execute_header, v3, v4, "active route=%@", v5, 0xCu);
    outlined destroy of TaskPriority?(v6, &_sSo8NSObjectCSgMd_0);
  }

  v8 = *(v0 + 840);

  v9 = [v8 systemRoute];
  v10 = v9;
  if (!v1)
  {
    v11 = v9;
    if (!v9)
    {
LABEL_12:
      v20 = swift_task_alloc();
      *(v0 + 888) = v20;
      *v20 = v0;
      v20[1] = static SharedListening.addIntent(_:playbackController:issuer:);
      v21 = *(v0 + 680);
      v22 = *(v0 + 672);
      v23 = *(v0 + 664);

      return static SharedListening.addIntent(_:playbackController:issuer:)(v23, v22, v21);
    }

    goto LABEL_8;
  }

  v11 = v2;
  if (!v9)
  {
LABEL_8:

    goto LABEL_9;
  }

  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPAVRoute);
  v12 = static NSObject.== infix(_:_:)();

  if (v12)
  {
    goto LABEL_12;
  }

LABEL_9:
  v13 = *(v0 + 816);
  v14 = *(v0 + 808);
  v15 = *(v0 + 800);
  v16 = *(v0 + 664);

  lazy protocol witness table accessor for type SharedListening.ErrorHandling.Error and conformance SharedListening.ErrorHandling.Error();
  swift_allocError();
  *v17 = 4;
  *(v17 + 8) = 4;
  swift_willThrow();

  v18 = *(v0 + 8);

  return v18();
}

{
  v2 = *v1;
  *(*v1 + 896) = v0;

  v3 = *(v2 + 712);
  v4 = *(v2 + 704);
  if (v0)
  {
    v5 = static SharedListening.addIntent(_:playbackController:issuer:);
  }

  else
  {
    v5 = static SharedListening.addIntent(_:playbackController:issuer:);
  }

  return _swift_task_switch(v5, v4, v3);
}

{
  v1 = v0[104];
  v2 = v0[102];
  v3 = v0[101];
  v4 = v0[100];
  v5 = v0[83];

  swift_willThrow();

  v6 = v0[1];

  return v6();
}

{
  v1 = v0[108];
  v2 = v0[104];
  v3 = v0[102];
  v4 = v0[101];
  v5 = v0[100];
  v6 = v0[83];

  swift_willThrow();

  v7 = v0[1];

  return v7();
}

{
  v1 = *(v0 + 880);
  v2 = *(v0 + 816);
  v3 = *(v0 + 808);
  v4 = *(v0 + 800);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t static SharedListening.addIntent(_:playbackController:issuer:)(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 776) = a1;
  *(v3 + 784) = v1;

  if (v1)
  {

    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
    v7 = static SharedListening.addIntent(_:playbackController:issuer:);
  }

  else
  {
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v8;
    v7 = static SharedListening.addIntent(_:playbackController:issuer:);
  }

  return _swift_task_switch(v7, v4, v6);
}

BOOL static SharedListening.isModelObjectTypeSupported(_:)(uint64_t a1)
{
  if (one-time initialization token for sharedListeningSupportedModelObjects != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *(static SharedListening.sharedListeningSupportedModelObjects + 2);
  v2 = (static SharedListening.sharedListeningSupportedModelObjects + 32);
  do
  {
    v3 = v1;
    if (v1-- == 0)
    {
      break;
    }

    v5 = *v2++;
  }

  while (v5 != a1);
  return v3 != 0;
}

void __swiftcall SharedListening.Reaction.init(id:emoji:senderID:)(MusicCore::SharedListening::Reaction *__return_ptr retstr, Swift::String_optional id, Swift::String emoji, Swift::String_optional senderID)
{
  object = senderID.value._object;
  countAndFlagsBits = senderID.value._countAndFlagsBits;
  v6 = emoji._object;
  v7 = emoji._countAndFlagsBits;
  v8 = id.value._object;
  v9 = id.value._countAndFlagsBits;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v8)
  {
    UUID.init()();
    v9 = UUID.uuidString.getter();
    v8 = v15;
    (*(v12 + 8))(v14, v11);
  }

  retstr->id._countAndFlagsBits = v9;
  retstr->id._object = v8;
  retstr->emoji._countAndFlagsBits = v7;
  retstr->emoji._object = v6;
  retstr->senderID.value._countAndFlagsBits = countAndFlagsBits;
  retstr->senderID.value._object = object;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance SharedListening.Reaction.CodingKeys()
{
  v1 = 0x696A6F6D65;
  if (*v0 != 1)
  {
    v1 = 0x44497265646E6573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SharedListening.Reaction.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized SharedListening.Reaction.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SharedListening.Reaction.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SharedListening.Reaction.CodingKeys and conformance SharedListening.Reaction.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SharedListening.Reaction.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SharedListening.Reaction.CodingKeys and conformance SharedListening.Reaction.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SharedListening.Reaction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MusicCore15SharedListeningO8ReactionV10CodingKeys33_962CB2D05357BEA070941EB4D8F61D5ELLOGMd);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  lazy protocol witness table accessor for type SharedListening.Reaction.CodingKeys and conformance SharedListening.Reaction.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

void SharedListening.Reaction.hash(into:)()
{
  String.hash(into:)();
  String.hash(into:)();
  if (*(v0 + 40))
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int SharedListening.Reaction.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  if (*(v0 + 40))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

double SharedListening.Reaction.init(from:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  specialized SharedListening.Reaction.init(from:)(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SharedListening.Reaction()
{
  v1 = *(v0 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  if (v1)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance SharedListening.Reaction()
{
  v1 = *(v0 + 40);
  String.hash(into:)();
  String.hash(into:)();
  if (v1)
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SharedListening.Reaction()
{
  v1 = *(v0 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  if (v1)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SharedListening.Reaction(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return specialized static SharedListening.Reaction.__derived_struct_equals(_:_:)(v7, v8) & 1;
}

void one-time initialization function for properties()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So13MPPropertySetCtGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004F2EE0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1004F2400;
  *(v2 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v2 + 40) = v3;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = objc_opt_self();
  v6 = [v5 propertySetWithProperties:isa];

  *(inited + 48) = v6;
  *(inited + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 64) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1004F2400;
  *(v8 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v8 + 40) = v9;
  v10 = Array._bridgeToObjectiveC()().super.isa;

  v11 = [v5 propertySetWithProperties:v10];

  *(inited + 72) = v11;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1004F2400;
  *(v13 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v13 + 40) = v14;
  v15 = Array._bridgeToObjectiveC()().super.isa;

  v16 = [v5 propertySetWithProperties:v15];

  *(inited + 96) = v16;
  *(inited + 104) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 112) = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1004F2400;
  *(v18 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v18 + 40) = v19;
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1004F2400;
  *(v20 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v20 + 40) = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1004F2400;
  *(v22 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v22 + 40) = v23;
  v24 = Array._bridgeToObjectiveC()().super.isa;

  v25 = [v5 propertySetWithProperties:v24];

  *(v20 + 48) = v25;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So13MPPropertySetCTt0g5Tf4g_n(v20);
  swift_setDeallocating();
  outlined destroy of TaskPriority?(v20 + 32, &_sSS_So13MPPropertySetCtMd);
  v26 = objc_allocWithZone(MPPropertySet);
  v27 = Array._bridgeToObjectiveC()().super.isa;

  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPPropertySet);
  v28 = Dictionary._bridgeToObjectiveC()().super.isa;

  v29 = [v26 initWithProperties:v27 relationships:v28];

  *(inited + 120) = v29;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So13MPPropertySetCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So13MPPropertySetCtMd);
  swift_arrayDestroy();
  v30 = objc_allocWithZone(MPPropertySet);
  v31 = Array._bridgeToObjectiveC()().super.isa;
  v32 = Dictionary._bridgeToObjectiveC()().super.isa;

  v33 = [v30 initWithProperties:v31 relationships:v32];

  static SharedListening.Event.properties = v33;
}

id static SharedListening.Event.properties.getter()
{
  if (one-time initialization token for properties != -1)
  {
    swift_once();
  }

  v1 = static SharedListening.Event.properties;

  return v1;
}

uint64_t one-time initialization function for sharedListeningSupportedModelObjects()
{
  _ss29getContiguousArrayStorageType3fors01_bcD0CyxGmxm_tlFSo13MPModelObjectCm_Ttg5();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004F2F00;
  *(v0 + 32) = type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPModelAlbum);
  *(v0 + 40) = type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPModelSong);
  *(v0 + 48) = type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPModelPlaylist);
  *(v0 + 56) = type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPModelRadioStation);
  result = type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPModelArtist);
  *(v0 + 64) = result;
  static SharedListening.sharedListeningSupportedModelObjects = v0;
  return result;
}

void *one-time initialization function for sharedListeningSupportedMusicItems()
{
  result = closure #1 in variable initialization expression of static SharedListening.sharedListeningSupportedMusicItems();
  static SharedListening.sharedListeningSupportedMusicItems = result;
  return result;
}

uint64_t closure #1 in variable initialization expression of static SharedListening.sharedListeningSupportedMusicItems()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8MusicKit0D4Item_pXpGMd);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004F3070;
  *(v0 + 32) = type metadata accessor for Album();
  *(v0 + 40) = &protocol witness table for Album;
  *(v0 + 48) = type metadata accessor for Song();
  *(v0 + 56) = &protocol witness table for Song;
  *(v0 + 64) = type metadata accessor for MusicVideo();
  *(v0 + 72) = &protocol witness table for MusicVideo;
  *(v0 + 80) = type metadata accessor for Playlist();
  *(v0 + 88) = &protocol witness table for Playlist;
  *(v0 + 96) = type metadata accessor for Station();
  *(v0 + 104) = &protocol witness table for Station;
  *(v0 + 112) = type metadata accessor for Artist();
  *(v0 + 120) = &protocol witness table for Artist;
  return v0;
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned MPAVRoute?) -> () with result type MPAVRoute?(uint64_t a1, void *a2)
{
  **(*(*__swift_project_boxed_opaque_existential_0Tm((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;
  v3 = a2;

  return swift_continuation_resume();
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned MPCPlaybackIntent?, @unowned MPCPlayerCommandStatus) -> () with result type (MPCPlaybackIntent?, MPCPlayerCommandStatus)(uint64_t a1, void *a2, void *a3)
{
  v5 = *(*(*__swift_project_boxed_opaque_existential_0Tm((a1 + 32), *(a1 + 56)) + 64) + 40);
  *v5 = a2;
  v5[1] = a3;
  v6 = a2;
  v7 = a3;

  return swift_continuation_resume();
}

uint64_t closure #1 in static SharedListening.ErrorHandling.playLocallyAction(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[32] = a4;
  v5[33] = a5;
  v5[30] = a2;
  v5[31] = a3;
  v5[29] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0);
  v5[34] = swift_task_alloc();

  return _swift_task_switch(closure #1 in static SharedListening.ErrorHandling.playLocallyAction(with:), 0, 0);
}

uint64_t closure #1 in static SharedListening.ErrorHandling.playLocallyAction(with:)()
{
  v1 = *(v0 + 248);
  if (v1)
  {
    *(v0 + 88) = v1;
    *(v0 + 96) = 3;
    v2 = &protocol witness table for Player.ReplaceCommand;
    v3 = &type metadata for Player.ReplaceCommand;
    v21 = v1;
  }

  else
  {
    v21 = 0;
    *(v0 + 88) = 0;
    v2 = &protocol witness table for Player.PlaybackCommand;
    v3 = &type metadata for Player.PlaybackCommand;
  }

  v5 = *(v0 + 264);
  v4 = *(v0 + 272);
  v6 = *(v0 + 256);
  v8 = *(v0 + 232);
  v7 = *(v0 + 240);
  *(v0 + 112) = v3;
  *(v0 + 120) = v2;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  outlined init with copy of ActionPerforming(v0 + 88, v0 + 128);
  *(v0 + 168) = *v8;
  *(v0 + 184) = v8[1];
  v20 = *(v8 + 5);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = v1;
  *(v10 + 40) = v6;
  *(v10 + 48) = v5;
  *(v10 + 56) = v1 == 0;
  outlined init with take of CatalogIDProviding(v0 + 128, v10 + 64);
  v11 = *v8;
  v12 = v8[1];
  v13 = v8[2];
  *(v10 + 152) = *(v8 + 6);
  *(v10 + 136) = v13;
  *(v10 + 120) = v12;
  *(v10 + 104) = v11;
  *(v10 + 160) = *v7;
  v14 = *(v7 + 64);
  v16 = *(v7 + 32);
  v15 = *(v7 + 48);
  *(v10 + 176) = *(v7 + 16);
  *(v10 + 192) = v16;
  *(v10 + 208) = v15;
  *(v10 + 224) = v14;

  v17 = v21;

  outlined init with copy of String(v0 + 168, v0 + 200);
  outlined init with copy of String(v0 + 184, v0 + 216);
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v20);
  outlined init with copy of TaskPriority?(v7, v0 + 16, &_s9MusicCore5AlertVSgMd);
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in closure #1 in static SharedListening.ErrorHandling.playLocallyAction(with:), v10);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 88);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t closure #1 in closure #1 in static SharedListening.ErrorHandling.playLocallyAction(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 152) = v10;
  *(v8 + 160) = v11;
  *(v8 + 136) = a6;
  *(v8 + 144) = a8;
  *(v8 + 192) = a7;
  *(v8 + 128) = a5;
  return _swift_task_switch(closure #1 in closure #1 in static SharedListening.ErrorHandling.playLocallyAction(with:), 0, 0);
}

uint64_t closure #1 in closure #1 in static SharedListening.ErrorHandling.playLocallyAction(with:)()
{
  if (*(v0 + 128))
  {
    v1 = swift_task_alloc();
    *(v0 + 168) = v1;
    *v1 = v0;
    v1[1] = closure #1 in closure #1 in static SharedListening.ErrorHandling.playLocallyAction(with:);
    v2 = *(v0 + 192);

    return GroupActivitiesManager.leave(performLeaveCommand:)(v2);
  }

  else if (*(v0 + 136))
  {
    v4 = *(v0 + 152);
    v5 = *(v0 + 160);
    v6 = *v4;
    v7 = v4[1];
    v8 = v4[2];
    v9 = v4[3];
    v10 = v4[5];
    v11 = v4[6];

    outlined copy of (@escaping @callee_guaranteed () -> ())?(v10);
    outlined init with copy of TaskPriority?(v5, v0 + 16, &_s9MusicCore5AlertVSgMd);
    v12 = specialized Alert.ActionCommandIssuingContext.init(action:in:)(v6, v7, v8, v9, v10, v11, v5);
    *(v0 + 112) = &type metadata for Alert.ActionCommandIssuingContext;
    *(v0 + 120) = &protocol witness table for Alert.ActionCommandIssuingContext;
    *(v0 + 88) = v12;
    *(v0 + 96) = v13;
    v14 = swift_task_alloc();
    *(v0 + 176) = v14;
    *v14 = v0;
    v14[1] = closure #1 in closure #1 in static SharedListening.ErrorHandling.playLocallyAction(with:);
    v15 = *(v0 + 144);

    return Player.perform(_:options:issuer:)(v15, 0, 0, 0, v0 + 88);
  }

  else
  {
    v16 = *(v0 + 8);

    return v16();
  }
}

{

  return _swift_task_switch(closure #1 in closure #1 in static SharedListening.ErrorHandling.playLocallyAction(with:), 0, 0);
}

{
  if (v0[17])
  {
    v1 = v0[19];
    v2 = v0[20];
    v3 = *v1;
    v4 = v1[1];
    v5 = v1[2];
    v6 = v1[3];
    v7 = v1[5];
    v8 = v1[6];

    outlined copy of (@escaping @callee_guaranteed () -> ())?(v7);
    outlined init with copy of TaskPriority?(v2, (v0 + 2), &_s9MusicCore5AlertVSgMd);
    v9 = specialized Alert.ActionCommandIssuingContext.init(action:in:)(v3, v4, v5, v6, v7, v8, v2);
    v0[14] = &type metadata for Alert.ActionCommandIssuingContext;
    v0[15] = &protocol witness table for Alert.ActionCommandIssuingContext;
    v0[11] = v9;
    v0[12] = v10;
    v11 = swift_task_alloc();
    v0[22] = v11;
    *v11 = v0;
    v11[1] = closure #1 in closure #1 in static SharedListening.ErrorHandling.playLocallyAction(with:);
    v12 = v0[18];

    return Player.perform(_:options:issuer:)(v12, 0, 0, 0, (v0 + 11));
  }

  else
  {
    v14 = v0[1];

    return v14();
  }
}

{
  outlined destroy of TaskPriority?(v0 + 88, &_s9MusicCore6PlayerC13CommandIssuer_pSgMd);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in closure #1 in static SharedListening.ErrorHandling.playLocallyAction(with:)(void *a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {

    return _swift_task_switch(closure #1 in closure #1 in static SharedListening.ErrorHandling.playLocallyAction(with:), 0, 0);
  }

  else
  {

    outlined destroy of TaskPriority?(v4 + 88, &_s9MusicCore6PlayerC13CommandIssuer_pSgMd);
    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t one-time initialization function for sharedListening()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.sharedListening);
  __swift_project_value_buffer(v0, static Logger.sharedListening);
  return Logger.init(subsystem:category:)();
}

uint64_t static Logger.sharedListening.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for sharedListening != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static Logger.sharedListening);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t closure #1 in MPCPlayerCommandDialog.alert(context:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  return _swift_task_switch(closure #1 in MPCPlayerCommandDialog.alert(context:completion:), 0, 0);
}

uint64_t closure #1 in MPCPlayerCommandDialog.alert(context:completion:)()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = [objc_allocWithZone(NSError) initWithDomain:NSCocoaErrorDomain code:3072 userInfo:0];
    v1();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t closure #2 in MPCPlayerCommandDialog.alert(context:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[8] = a3;
  return _swift_task_switch(closure #2 in MPCPlayerCommandDialog.alert(context:completion:), 0, 0);
}

uint64_t closure #2 in MPCPlayerCommandDialog.alert(context:completion:)()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = objc_opt_self();
  v5 = [v3 commandRequest];
  v6 = swift_allocObject();
  v6[2] = v3;
  v6[3] = v2;
  v6[4] = v1;
  v0[6] = partial apply for closure #1 in closure #2 in MPCPlayerCommandDialog.alert(context:completion:);
  v0[7] = v6;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  v0[5] = &block_descriptor_99;
  v7 = _Block_copy(v0 + 2);
  v8 = v3;
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v2);

  [v4 performRequest:v5 completion:v7];
  _Block_release(v7);

  v9 = v0[1];

  return v9();
}

uint64_t partial apply for closure #2 in MPCPlayerCommandDialog.alert(context:completion:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #2 in MPCPlayerCommandDialog.alert(context:completion:)(a1, a2, v6, v7, v8);
}

void closure #1 in closure #2 in MPCPlayerCommandDialog.alert(context:completion:)(uint64_t a1, id a2, void (*a3)(void))
{
  if ([a2 type] == 1)
  {
    if (a3)
    {
      v5 = [objc_allocWithZone(NSError) initWithDomain:NSCocoaErrorDomain code:3072 userInfo:0];
      a3();
    }
  }

  else if (a3)
  {
    (a3)(a1);
  }
}

uint64_t _ss29getContiguousArrayStorageType3fors01_bcD0CyxGmxm_tlFSo13MPModelObjectCm_Ttg5()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13MPModelObjectCmMd);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &_ss23_ContiguousArrayStorageCySo13MPModelObjectCmGMd;
  }

  else
  {
    v2 = &_ss23_ContiguousArrayStorageCyyXlGMd;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v2);
}

void outlined consume of Alert.Action?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {

    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(a6);
  }
}

uint64_t specialized static SharedListening.Reaction.__derived_struct_equals(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v5 = a1[2] == a2[2] && a1[3] == a2[3];
    if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v6 = a1[5];
      v7 = a2[5];
      if (v6)
      {
        if (v7 && (a1[4] == a2[4] && v6 == v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
        {
          return 1;
        }
      }

      else if (!v7)
      {
        return 1;
      }
    }
  }

  return 0;
}

void specialized static SharedListening.ErrorHandling.playLocallyAction(with:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v37 = a3;
  v38 = a2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Locale();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for String.LocalizationValue();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v34 - v16;
  if (FigOutputMonitorIsScreenProbablyBeingRecorded())
  {
    if (one-time initialization token for sharedListening != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.sharedListening);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Play locally action is NOT available because of screen sharing", v21, 2u);
    }

    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
  }

  else
  {
    v35 = v6;
    v36 = v7;
    String.LocalizationValue.init(stringLiteral:)();
    (*(v12 + 16))(v15, v17, v11);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v29 = static NSBundle.module;
    static Locale.current.getter();
    v24 = String.init(localized:table:bundle:locale:comment:)();
    v25 = v30;
    (*(v12 + 8))(v17, v11);
    v28 = swift_allocObject();
    v31 = v38;
    v28[2] = a1;
    v28[3] = v31;
    v28[4] = v37;

    v32 = a1;

    UUID.init()();
    v22 = UUID.uuidString.getter();
    v23 = v33;
    (*(v36 + 8))(v9, v35);
    v27 = &async function pointer to partial apply for closure #1 in static SharedListening.ErrorHandling.playLocallyAction(with:);
    v26 = 2;
  }

  *a4 = v22;
  a4[1] = v23;
  a4[2] = v24;
  a4[3] = v25;
  a4[4] = v26;
  a4[5] = v27;
  a4[6] = v28;
}

uint64_t sub_1002746F8()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in MPCPlayerCommandDialog.alert(context:completion:)(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in MPCPlayerCommandDialog.alert(context:completion:)(a1, a2, v7, v6);
}

void specialized SharedListening.Event.init(_:)(NSObject *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v4 = [a1 type];
  if (v4 <= 2)
  {
    if (v4 == 1)
    {
      v28 = [v2 sessionEvent];
      if (v28)
      {
        v29 = v28;
        v30 = [v28 kind];

        if (v30 == 4)
        {

          v8 = 0;
          v9 = 0;
          v10 = 0;
          v11 = 5;
          v12 = 2;
          goto LABEL_83;
        }

        if (v30 == 1)
        {

          v12 = 0;
          v8 = 0;
          v9 = 0;
          v10 = 0;
          v11 = 5;
          goto LABEL_83;
        }
      }

      if (one-time initialization token for sharedListening != -1)
      {
        swift_once();
      }

      v38 = type metadata accessor for Logger();
      __swift_project_value_buffer(v38, static Logger.sharedListening);
      v20 = v2;
      v2 = Logger.logObject.getter();
      v21 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v2, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v82 = v23;
        *v22 = 136446210;
        v39 = [v20 sessionEvent];
        v40 = v39;
        if (v39)
        {
          v41 = [v39 kind];
        }

        else
        {
          v41 = 0;
        }

        v80 = v41;
        v81 = v40 == 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo34MPCSharedListeningSessionEventKindVSgMd);
        v59 = String.init<A>(describing:)();
        v61 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v59, v60, &v82);

        *(v22 + 4) = v61;
        v27 = "Unknown session event kind: %{public}s";
        goto LABEL_59;
      }

LABEL_46:

LABEL_47:
LABEL_60:
      v12 = 0;
      goto LABEL_61;
    }

    if (v4 == 2)
    {
      v5 = [v2 playbackEvent];
      if (v5)
      {
        v6 = v5;
        v7 = [v5 kind];

        if (v7 > 2)
        {
          if (v7 == 3)
          {

            v8 = 0;
            v9 = 0;
            v10 = 0;
            v11 = 5;
            v12 = 1;
            goto LABEL_83;
          }

          if (v7 == 4)
          {
            v42 = [v2 playbackEvent];
            if (v42)
            {
              v43 = v42;
              v44 = [v42 item];

              if (v44)
              {
                v45 = [v44 innermostModelObject];

                objc_opt_self();
                v46 = swift_dynamicCastObjCClass();
                v44 = v46;
                if (v46)
                {
                  v47 = [v46 title];
                  if (v47)
                  {
                    v48 = v47;
                    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v8 = v49;

                    v9 = 0;
                    v10 = 0;
                    v11 = 2;
                    goto LABEL_83;
                  }
                }

                else
                {
                }
              }
            }

            else
            {
              v44 = 0;
            }

            v12 = 0;
            v9 = 0;
            v10 = 0;
            v11 = 2;
            v8 = 0xE000000000000000;
            goto LABEL_83;
          }
        }

        else
        {
          if (v7 == 1)
          {

            v8 = 0;
            v9 = 0;
            v10 = 0;
            v11 = 5;
            v12 = 4;
            goto LABEL_83;
          }

          if (v7 == 2)
          {

            v8 = 0;
            v9 = 0;
            v10 = 0;
            v11 = 5;
            v12 = 3;
LABEL_83:
            *a2 = v12;
            *(a2 + 8) = v8;
            *(a2 + 16) = v9;
            *(a2 + 24) = v10;
            *(a2 + 32) = 0;
            *(a2 + 40) = 0;
            *(a2 + 48) = v11;
            return;
          }
        }
      }

      if (one-time initialization token for sharedListening != -1)
      {
        swift_once();
      }

      v50 = type metadata accessor for Logger();
      __swift_project_value_buffer(v50, static Logger.sharedListening);
      v20 = v2;
      v2 = Logger.logObject.getter();
      v21 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v2, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v82 = v23;
        *v22 = 136446210;
        v51 = [v20 playbackEvent];
        v52 = v51;
        if (v51)
        {
          v53 = [v51 kind];
        }

        else
        {
          v53 = 0;
        }

        v80 = v53;
        v81 = v52 == 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo35MPCSharedListeningPlaybackEventKindVSgMd);
        v62 = String.init<A>(describing:)();
        v64 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v62, v63, &v82);

        *(v22 + 4) = v64;
        v27 = "Unknown playback event kind: %{public}s";
        goto LABEL_59;
      }

      goto LABEL_46;
    }

LABEL_13:
    if (one-time initialization token for sharedListening != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.sharedListening);
    v20 = v2;
    v2 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v2, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v80 = v23;
      *v22 = 136446210;
      v82 = [v20 type];
      type metadata accessor for MPCSharedListeningEventType(0);
      v24 = String.init<A>(describing:)();
      v26 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v24, v25, &v80);

      *(v22 + 4) = v26;
      v27 = "Unknown event type: %{public}s";
LABEL_59:
      _os_log_impl(&_mh_execute_header, v2, v21, v27, v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);

      goto LABEL_60;
    }

    goto LABEL_46;
  }

  if (v4 != 3)
  {
    if (v4 == 4)
    {
      v13 = [v2 reactionEvent];
      if (v13)
      {
        v14 = v13;
        v15 = [v13 reactionIdentifier];
        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v8 = v16;

        v17 = [v14 reaction];
        v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v10 = v18;

        v11 = 1;
        goto LABEL_83;
      }

      goto LABEL_47;
    }

    goto LABEL_13;
  }

  v31 = [v2 queueEvent];
  if (!v31)
  {
    goto LABEL_81;
  }

  v32 = v31;
  v33 = [v31 kind];

  if (v33 != 1)
  {
    if (v33 != 7)
    {
      if (v33 == 6)
      {
        v34 = [v2 queueEvent];
        if (v34)
        {
          v35 = v34;
          v12 = [v34 playedNowContent];

          if (v12)
          {
            v36 = [v12 startItem];
            v37 = [v36 innermostModelObject];

            objc_opt_self();
            v12 = swift_dynamicCastObjCClass();
            if (v12)
            {
              v8 = 0;
              v9 = 0;
              v10 = 0;
              v11 = 3;
              goto LABEL_83;
            }
          }

          else
          {
          }

LABEL_61:
          v8 = 0;
          v9 = 0;
          v10 = 0;
          v11 = -1;
          goto LABEL_83;
        }

        goto LABEL_47;
      }

      goto LABEL_81;
    }

LABEL_77:
    v71 = [v2 queueEvent];
    if (v71)
    {
      v72 = v71;
      v73 = [v71 contentUpdatedMessage];

      if (v73)
      {
        v74 = [v73 localizedTitle];
        if (v74)
        {
          v75 = v74;
          v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v8 = v76;
        }

        else
        {
          v12 = 0;
          v8 = 0;
        }

        v77 = [v73 localizedMessage];
        if (v77)
        {
          v78 = v77;
          v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v10 = v79;
        }

        else
        {

          v9 = 0;
          v10 = 0;
        }

        v11 = 4;
        goto LABEL_83;
      }
    }

LABEL_81:

    v12 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 4;
    goto LABEL_82;
  }

  v54 = [v2 queueEvent];
  if (!v54)
  {
    goto LABEL_77;
  }

  v55 = v54;
  v56 = [v54 addedContent];

  if (!v56)
  {
    goto LABEL_77;
  }

  v57 = [v56 container];
  if (v57)
  {
    v58 = v57;
    v12 = [v57 innermostModelObject];

    v9 = 0;
    v10 = 0;
    v11 = 0;
LABEL_82:
    v8 = 1;
    goto LABEL_83;
  }

  v65 = [v56 items];
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPModelGenericObject);
  v66 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v66 >> 62))
  {
    if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_66;
    }

LABEL_76:

    goto LABEL_77;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_76;
  }

LABEL_66:
  if ((v66 & 0xC000000000000001) != 0)
  {
    v67 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_69;
  }

  if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v67 = *(v66 + 32);
LABEL_69:
    v68 = v67;

    v69 = [v68 innermostModelObject];

    objc_opt_self();
    v70 = swift_dynamicCastObjCClass();
    if (v70)
    {
      v12 = v70;

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      goto LABEL_83;
    }

    goto LABEL_77;
  }

  __break(1u);
}

uint64_t specialized static SharedListening.buildSharedSession(with:)()
{
  if (one-time initialization token for sharedListening != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v2 = type metadata accessor for Logger();
  v0[21] = __swift_project_value_buffer(v2, static Logger.sharedListening);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[20];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "🏗 Building session with intent=%{public}@", v7, 0xCu);
    outlined destroy of TaskPriority?(v8, &_sSo8NSObjectCSgMd_0);
  }

  v10 = objc_allocWithZone(ICLiveLinkIdentity);
  v0[14] = CFRange.init(_:);
  v0[15] = 0;
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = thunk for @escaping @callee_guaranteed (@guaranteed MPIdentifierSet & MPMutableIdentifierSet) -> ();
  v0[13] = &block_descriptor_74;
  v11 = _Block_copy(v0 + 10);
  v12 = [v10 initWithBlock:v11];
  v0[22] = v12;
  _Block_release(v11);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v14 = v0[20];
    v15 = objc_opt_self();
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = specialized static SharedListening.buildSharedSession(with:);
    v16 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo17MPCPlaybackIntentCSg_So22MPCPlayerCommandStatusCts5NeverOGMd);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned MPCPlaybackIntent?, @unowned MPCPlayerCommandStatus) -> () with result type (MPCPlaybackIntent?, MPCPlayerCommandStatus);
    v0[13] = &block_descriptor_77;
    v0[14] = v16;
    [v15 buildSharedSessionIntentWithIntent:v14 identity:v12 extendedStatusCompletion:v0 + 10];
    isEscapingClosureAtFileLocation = (v0 + 2);
  }

  return _swift_continuation_await(isEscapingClosureAtFileLocation);
}

{

  return _swift_task_switch(specialized static SharedListening.buildSharedSession(with:), 0, 0);
}

{
  v23 = v0;
  v1 = v0[18];
  v2 = v0[19];
  if (v1 && (v3 = v1, v4 = [v3 sharedListeningProperties], v3, v4))
  {

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "✅ Shared listening intent successfully built", v7, 2u);
    }

    v8 = v0[22];

    v9 = v0[1];

    return v9(v1);
  }

  else
  {
    v11 = v2;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22 = v15;
      *v14 = 136446210;
      v0[10] = [v11 error];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd);
      v16 = String.init<A>(describing:)();
      v18 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v16, v17, &v22);

      *(v14 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v12, v13, "⚠️ Creation error %{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
    }

    v19 = v0[22];
    lazy protocol witness table accessor for type SharedListening.ErrorHandling.Error and conformance SharedListening.ErrorHandling.Error();
    swift_allocError();
    *v20 = v11;
    *(v20 + 8) = 2;
    swift_willThrow();

    v21 = v0[1];

    return v21();
  }
}

uint64_t specialized static SharedListening.buildSharedSession(with:on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[42] = a3;
  v4[43] = a4;
  v4[40] = a1;
  v4[41] = a2;
  v4[44] = type metadata accessor for MainActor();
  v4[45] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[46] = v6;
  v4[47] = v5;

  return _swift_task_switch(specialized static SharedListening.buildSharedSession(with:on:), v6, v5);
}

uint64_t specialized static SharedListening.buildSharedSession(with:on:)()
{
  v45 = v0;
  if (one-time initialization token for sharedListening != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 320);
  v2 = type metadata accessor for Logger();
  *(v0 + 384) = __swift_project_value_buffer(v2, static Logger.sharedListening);
  v3 = v1;

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 336);
    v43 = *(v0 + 320);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v44[0] = v8;
    *v7 = 136446210;
    *(v0 + 272) = v43;
    *(v0 + 288) = v6;
    v9 = v43;

    v10 = String.init<A>(describing:)();
    v12 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v10, v11, v44);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "🏗 Building session with command=%{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
  }

  v13 = *(v0 + 344);
  if (v13 && (v14 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player, swift_beginAccess(), *(v13 + v14)) && (swift_getKeyPath(), swift_getKeyPath(), , static Published.subscript.getter(), , , , (v15 = *(v0 + 296)) != 0) && (v16 = [*(v0 + 296) tracklist], v17 = objc_msgSend(v16, "playingItem"), v15, v16, v17))
  {

    v18 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
    swift_beginAccess();
    if (!*(v13 + v18) || (swift_getKeyPath(), swift_getKeyPath(), , static Published.subscript.getter(), , , , (v19 = *(v0 + 304)) == 0) || (v20 = [*(v0 + 304) route], *(v0 + 392) = v20, v19, !v20))
    {
LABEL_14:
      v21 = *(v0 + 336);
      v22 = *(v0 + 320);
      *(v0 + 144) = v22;
      *(v0 + 208) = &type metadata for Player.CommandIssuerIdentity;
      *(v0 + 216) = &protocol witness table for Player.CommandIssuerIdentity;
      *(v0 + 176) = &protocol witness table for Player.BuildSharedSessionCommand;
      *(v0 + 184) = 0x694C646572616853;
      *(v0 + 192) = 0xEF676E696E657473;
      *(v0 + 160) = v21;
      *(v0 + 168) = &type metadata for Player.BuildSharedSessionCommand;
      v23 = v22;

      *(v0 + 416) = static MainActor.shared.getter();
      v25 = dispatch thunk of Actor.unownedExecutor.getter();
      *(v0 + 424) = v25;
      *(v0 + 432) = v24;

      return _swift_task_switch(specialized static SharedListening.buildSharedSession(with:on:), v25, v24);
    }

    if ([v20 isDeviceRoute])
    {

      goto LABEL_14;
    }

    v28 = v20;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v44[0] = v32;
      *v31 = 136446210;
      v33 = v28;
      v34 = [v33 description];
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      v38 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v35, v37, v44);

      *(v31 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v29, v30, "    Build session command needs to be performed on the system route.\n    Switching from %{public}s) to system route.", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v32);
    }

    v39 = objc_opt_self();
    v40 = [v39 systemRoute];
    *(v0 + 400) = v40;
    *(v0 + 16) = v0;
    *(v0 + 24) = specialized static SharedListening.buildSharedSession(with:on:);
    v41 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
    *(v0 + 104) = &block_descriptor_71_0;
    *(v0 + 112) = v41;
    [v39 setActiveRoute:v40 completion:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {

    lazy protocol witness table accessor for type SharedListening.ErrorHandling.Error and conformance SharedListening.ErrorHandling.Error();
    swift_allocError();
    *v26 = 2;
    *(v26 + 8) = 4;
    swift_willThrow();
    v27 = *(v0 + 8);

    return v27();
  }
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 408) = v2;
  v3 = *(v1 + 376);
  v4 = *(v1 + 368);
  if (v2)
  {
    v5 = specialized static SharedListening.buildSharedSession(with:on:);
  }

  else
  {
    v5 = specialized static SharedListening.buildSharedSession(with:on:);
  }

  return _swift_task_switch(v5, v4, v3);
}

{
  v1 = *(v0 + 400);

  v2 = *(v0 + 336);
  v3 = *(v0 + 320);
  *(v0 + 144) = v3;
  *(v0 + 208) = &type metadata for Player.CommandIssuerIdentity;
  *(v0 + 216) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v0 + 176) = &protocol witness table for Player.BuildSharedSessionCommand;
  *(v0 + 184) = 0x694C646572616853;
  *(v0 + 192) = 0xEF676E696E657473;
  *(v0 + 160) = v2;
  *(v0 + 168) = &type metadata for Player.BuildSharedSessionCommand;
  v4 = v3;

  *(v0 + 416) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 424) = v6;
  *(v0 + 432) = v5;

  return _swift_task_switch(specialized static SharedListening.buildSharedSession(with:on:), v6, v5);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore6PlayerC7Command_pGMd);
  v1 = swift_allocObject();
  v0[55] = v1;
  *(v1 + 16) = xmmword_1004F2400;
  outlined init with copy of ActionPerforming((v0 + 18), v1 + 32);
  v0[56] = static MainActor.shared.getter();
  v2 = swift_task_alloc();
  v0[57] = v2;
  *v2 = v0;
  v2[1] = specialized static SharedListening.buildSharedSession(with:on:);

  return PlaybackController.perform(_:options:intent:issuer:)(v1, 0x10000, 1, 0, 0, (v0 + 23));
}

{

  v1 = *(v0 + 424);
  v2 = *(v0 + 432);

  return _swift_task_switch(specialized static SharedListening.buildSharedSession(with:on:), v1, v2);
}

{
  v1 = v0[58];

  if (v1 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_8:

    outlined destroy of TaskPriority?((v0 + 23), &_s9MusicCore6PlayerC13CommandIssuer_pSgMd);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 18));
    v2 = v0[46];
    v3 = v0[47];
    v6 = specialized static SharedListening.buildSharedSession(with:on:);
    goto LABEL_9;
  }

  v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return _swift_task_switch(v4, v2, v3);
    }

    v5 = *(v0[58] + 32);
  }

  v0[60] = v5;

  outlined destroy of TaskPriority?((v0 + 23), &_s9MusicCore6PlayerC13CommandIssuer_pSgMd);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 18));
  v2 = v0[46];
  v3 = v0[47];
  v6 = specialized static SharedListening.buildSharedSession(with:on:);
LABEL_9:
  v4 = v6;

  return _swift_task_switch(v4, v2, v3);
}

{

  v1 = *(v0 + 424);
  v2 = *(v0 + 432);

  return _swift_task_switch(specialized static SharedListening.buildSharedSession(with:on:), v1, v2);
}

{

  v1 = *(v0 + 368);
  v2 = *(v0 + 376);

  return _swift_task_switch(specialized static SharedListening.buildSharedSession(with:on:), v1, v2);
}

{
  v13 = v0;

  outlined destroy of TaskPriority?((v0 + 23), &_s9MusicCore6PlayerC13CommandIssuer_pSgMd);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 18));
  v1 = v0[59];
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136446210;
    v0[39] = v1;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v6 = String.init<A>(describing:)();
    v8 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "⚠️ Building session failed with error=%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
  }

  lazy protocol witness table accessor for type SharedListening.ErrorHandling.Error and conformance SharedListening.ErrorHandling.Error();
  swift_allocError();
  *v9 = 3;
  *(v9 + 8) = 4;
  swift_willThrow();

  v10 = v0[1];

  return v10();
}

{
  v18 = v0;
  v1 = *(v0 + 480);

  v2 = [v1 error];
  if (v2 || (v2 = [*(v0 + 480) dialog]) != 0)
  {
    v3 = *(v0 + 480);

    lazy protocol witness table accessor for type SharedListening.ErrorHandling.Error and conformance SharedListening.ErrorHandling.Error();
    v4 = swift_allocError();
    *v5 = v3;
    *(v5 + 8) = 2;
    swift_willThrow();

    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v17 = v9;
      *v8 = 136446210;
      *(v0 + 312) = v4;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
      v10 = String.init<A>(describing:)();
      v12 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v10, v11, &v17);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v6, v7, "⚠️ Building session failed with error=%{public}s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
    }

    swift_allocError();
    *v13 = 3;
    *(v13 + 8) = 4;
    swift_willThrow();

    v14 = *(v0 + 8);
  }

  else
  {
    v16 = *(v0 + 480);

    v14 = *(v0 + 8);
  }

  return v14();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[50];
  v2 = v0[49];

  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t specialized static SharedListening.buildSharedSession(with:on:)(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 464) = a1;
  *(v3 + 472) = v1;

  if (v1)
  {

    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
    v7 = specialized static SharedListening.buildSharedSession(with:on:);
  }

  else
  {
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v8;
    v7 = specialized static SharedListening.buildSharedSession(with:on:);
  }

  return _swift_task_switch(v7, v4, v6);
}

unint64_t lazy protocol witness table accessor for type SharedListening.Reaction.CodingKeys and conformance SharedListening.Reaction.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SharedListening.Reaction.CodingKeys and conformance SharedListening.Reaction.CodingKeys;
  if (!lazy protocol witness table cache variable for type SharedListening.Reaction.CodingKeys and conformance SharedListening.Reaction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharedListening.Reaction.CodingKeys and conformance SharedListening.Reaction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharedListening.Reaction.CodingKeys and conformance SharedListening.Reaction.CodingKeys;
  if (!lazy protocol witness table cache variable for type SharedListening.Reaction.CodingKeys and conformance SharedListening.Reaction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharedListening.Reaction.CodingKeys and conformance SharedListening.Reaction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharedListening.Reaction.CodingKeys and conformance SharedListening.Reaction.CodingKeys;
  if (!lazy protocol witness table cache variable for type SharedListening.Reaction.CodingKeys and conformance SharedListening.Reaction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharedListening.Reaction.CodingKeys and conformance SharedListening.Reaction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharedListening.Reaction.CodingKeys and conformance SharedListening.Reaction.CodingKeys;
  if (!lazy protocol witness table cache variable for type SharedListening.Reaction.CodingKeys and conformance SharedListening.Reaction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharedListening.Reaction.CodingKeys and conformance SharedListening.Reaction.CodingKeys);
  }

  return result;
}

uint64_t specialized SharedListening.Reaction.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696A6F6D65 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x44497265646E6573 && a2 == 0xE800000000000000)
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

uint64_t specialized SharedListening.Reaction.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9MusicCore15SharedListeningO8ReactionV10CodingKeys33_962CB2D05357BEA070941EB4D8F61D5ELLOGMd);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  lazy protocol witness table accessor for type SharedListening.Reaction.CodingKeys and conformance SharedListening.Reaction.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v25 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v20 = KeyedDecodingContainer.decode(_:forKey:)();
  v21 = v12;
  v23 = 2;
  v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v14 = v8;
  v16 = v15;
  (*(v6 + 8))(v14, v5);
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *a2 = v22;
  a2[1] = v11;
  v18 = v21;
  a2[2] = v20;
  a2[3] = v18;
  a2[4] = v13;
  a2[5] = v16;
  return result;
}

unint64_t lazy protocol witness table accessor for type SharedListening.Reaction and conformance SharedListening.Reaction()
{
  result = lazy protocol witness table cache variable for type SharedListening.Reaction and conformance SharedListening.Reaction;
  if (!lazy protocol witness table cache variable for type SharedListening.Reaction and conformance SharedListening.Reaction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharedListening.Reaction and conformance SharedListening.Reaction);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9MusicCore15SharedListeningO5EventO5AlertVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t get_enum_tag_for_layout_string_9MusicCore15SharedListeningO5EventO(uint64_t a1)
{
  if ((*(a1 + 48) & 7u) <= 4)
  {
    return *(a1 + 48) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t getEnumTagSinglePayload for SharedListening.Event(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 49))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 48);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for SharedListening.Event(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for SharedListening.Event(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for SharedListening.Event.Alert(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for SharedListening.Event.Alert(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SharedListening.ErrorHandling.Context(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for SharedListening.ErrorHandling.Context(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9MusicCore15SharedListeningO13ErrorHandlingV0E0O(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 8) & 7;
  }
}

uint64_t getEnumTagSinglePayload for SharedListening.ErrorHandling.Error(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 9))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 8);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for SharedListening.ErrorHandling.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t destructiveInjectEnumTag for SharedListening.ErrorHandling.Error(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t block_copy_helper_72(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_destroy_helper_73()
{
}

{
}

uint64_t sub_1002775D4()
{
  v1 = type metadata accessor for URL();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t lazy protocol witness table accessor for type related decl e for MPCPlayerRequestErrorCode and conformance related decl e for MPCPlayerRequestErrorCode(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002776A4()
{

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in static SharedListening.ErrorHandling.playLocallyAction(with:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #1 in static SharedListening.ErrorHandling.playLocallyAction(with:)(a1, a2, v6, v7, v8);
}

uint64_t sub_1002777AC()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 64);

  if (*(v0 + 144))
  {
  }

  if (*(v0 + 216))
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in static SharedListening.ErrorHandling.playLocallyAction(with:)(uint64_t a1)
{
  v4 = *(v1 + 24);
  v11 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #1 in closure #1 in static SharedListening.ErrorHandling.playLocallyAction(with:)(a1, v11, v4, v5, v6, v7, v8, v1 + 64);
}

uint64_t objectdestroyTm_11()
{
  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

unint64_t UnifiedMessages.MLI.State.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x6572676F72506E69;
  if (a1 != 2)
  {
    v2 = 0x6574656C706D6F63;
  }

  if (!a1)
  {
    v1 = 0xD00000000000001ELL;
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance UnifiedMessages.MLI.State()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance UnifiedMessages.MLI.State()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UnifiedMessages.MLI.State()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance UnifiedMessages.MLI.State@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9MusicCore15UnifiedMessagesO3MLIV5StateO8rawValueAGSgSS_tcfCTf4nd_n_0(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance UnifiedMessages.MLI.State(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xEA00000000007373;
  v5 = 0x6572676F72506E69;
  if (*v1 != 2)
  {
    v5 = 0x6574656C706D6F63;
    v4 = 0xE900000000000064;
  }

  if (!*v1)
  {
    v3 = 0xD00000000000001ELL;
    v2 = 0x80000001004C3F70;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

MusicCore::UnifiedMessages::GroupDefaultsKey_optional __swiftcall UnifiedMessages.GroupDefaultsKey.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of UnifiedMessages.GroupDefaultsKey.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = MusicCore_UnifiedMessages_GroupDefaultsKey_countOfSongsInLibrary;
  }

  else
  {
    v4.value = MusicCore_UnifiedMessages_GroupDefaultsKey_unknownDefault;
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

unint64_t UnifiedMessages.GroupDefaultsKey.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0xD000000000000019;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance UnifiedMessages.GroupDefaultsKey(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000015;
  }

  else
  {
    v3 = 0xD000000000000019;
  }

  if (v2)
  {
    v4 = "countOfSongsInLibrary";
  }

  else
  {
    v4 = "xtension";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000015;
  }

  else
  {
    v6 = 0xD000000000000019;
  }

  if (*a2)
  {
    v7 = "xtension";
  }

  else
  {
    v7 = "countOfSongsInLibrary";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance UnifiedMessages.GroupDefaultsKey()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance UnifiedMessages.GroupDefaultsKey()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UnifiedMessages.GroupDefaultsKey()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance UnifiedMessages.GroupDefaultsKey@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of UnifiedMessages.GroupDefaultsKey.init(rawValue:), *a1);

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

void protocol witness for RawRepresentable.rawValue.getter in conformance UnifiedMessages.GroupDefaultsKey(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000015;
  }

  else
  {
    v2 = 0xD000000000000019;
  }

  if (*v1)
  {
    v3 = "xtension";
  }

  else
  {
    v3 = "countOfSongsInLibrary";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

unint64_t _s9MusicCore15UnifiedMessagesO3MLIV5StateO8rawValueAGSgSS_tcfCTf4nd_n_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&_s9MusicCore15UnifiedMessagesO3MLIV5StateO8rawValueAGSgSS_tcfCTv_r_0, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type UnifiedMessages.GroupDefaultsKey and conformance UnifiedMessages.GroupDefaultsKey()
{
  result = lazy protocol witness table cache variable for type UnifiedMessages.GroupDefaultsKey and conformance UnifiedMessages.GroupDefaultsKey;
  if (!lazy protocol witness table cache variable for type UnifiedMessages.GroupDefaultsKey and conformance UnifiedMessages.GroupDefaultsKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnifiedMessages.GroupDefaultsKey and conformance UnifiedMessages.GroupDefaultsKey);
  }

  return result;
}

MusicCore::AccessibilityIdentifier __swiftcall AccessibilityIdentifier.init(name:)(Swift::String name)
{
  object = name._object;
  countAndFlagsBits = name._countAndFlagsBits;
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v9 = static AccessibilityIdentifier.prefix;
  v10 = *algn_100608508;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);

  v4._countAndFlagsBits = countAndFlagsBits;
  v4._object = object;
  String.append(_:)(v4);

  v5 = v9;
  v6 = v10;
  v7 = countAndFlagsBits;
  v8 = object;
  result.name._object = v8;
  result.name._countAndFlagsBits = v7;
  result.rawValue._object = v6;
  result.rawValue._countAndFlagsBits = v5;
  return result;
}

uint64_t static ViewBuilder.buildBlock<each A>(_:)(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  __chkstk_darwin(TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return TupleView.init(_:)();
}

uint64_t *AccessibilityIdentifier.libraryAlbumsView.unsafeMutableAddressor()
{
  if (one-time initialization token for libraryAlbumsView != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryAlbumsView;
}

uint64_t *AccessibilityIdentifier.libraryArtistsListView.unsafeMutableAddressor()
{
  if (one-time initialization token for libraryArtistsListView != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryArtistsListView;
}

uint64_t *AccessibilityIdentifier.librarySongsView.unsafeMutableAddressor()
{
  if (one-time initialization token for librarySongsView != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.librarySongsView;
}

uint64_t *AccessibilityIdentifier.libraryPlaylistsView.unsafeMutableAddressor()
{
  if (one-time initialization token for libraryPlaylistsView != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryPlaylistsView;
}

uint64_t *AccessibilityIdentifier.libraryGenresView.unsafeMutableAddressor()
{
  if (one-time initialization token for libraryGenresView != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryGenresView;
}

uint64_t *AccessibilityIdentifier.libraryRecentlyAddedView.unsafeMutableAddressor()
{
  if (one-time initialization token for libraryRecentlyAddedView != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryRecentlyAddedView;
}

uint64_t *AccessibilityIdentifier.libraryMadeForYouView.unsafeMutableAddressor()
{
  if (one-time initialization token for libraryMadeForYouView != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryMadeForYouView;
}

uint64_t *AccessibilityIdentifier.libraryMusicVideosView.unsafeMutableAddressor()
{
  if (one-time initialization token for libraryMusicVideosView != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryMusicVideosView;
}

uint64_t *AccessibilityIdentifier.libraryCompilationsView.unsafeMutableAddressor()
{
  if (one-time initialization token for libraryCompilationsView != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryCompilationsView;
}

uint64_t *AccessibilityIdentifier.libraryComposersView.unsafeMutableAddressor()
{
  if (one-time initialization token for libraryComposersView != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryComposersView;
}

uint64_t *AccessibilityIdentifier.libraryTVAndMoviesView.unsafeMutableAddressor()
{
  if (one-time initialization token for libraryTVAndMoviesView != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryTVAndMoviesView;
}

uint64_t *AccessibilityIdentifier.libraryDownloadedView.unsafeMutableAddressor()
{
  if (one-time initialization token for libraryDownloadedView != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryDownloadedView;
}

uint64_t *AccessibilityIdentifier.libraryDownloadingView.unsafeMutableAddressor()
{
  if (one-time initialization token for libraryDownloadingView != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryDownloadingView;
}

uint64_t *AccessibilityIdentifier.playlistEditorMetadataArtworkExpression1.unsafeMutableAddressor()
{
  if (one-time initialization token for playlistEditorMetadataArtworkExpression1 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression1;
}

uint64_t *AccessibilityIdentifier.playlistEditorMetadataArtworkExpression2.unsafeMutableAddressor()
{
  if (one-time initialization token for playlistEditorMetadataArtworkExpression2 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression2;
}

uint64_t *AccessibilityIdentifier.playlistEditorMetadataArtworkExpression3.unsafeMutableAddressor()
{
  if (one-time initialization token for playlistEditorMetadataArtworkExpression3 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression3;
}

uint64_t *AccessibilityIdentifier.playlistEditorMetadataArtworkExpression4.unsafeMutableAddressor()
{
  if (one-time initialization token for playlistEditorMetadataArtworkExpression4 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression4;
}

uint64_t *AccessibilityIdentifier.playlistEditorMetadataArtworkExpression5.unsafeMutableAddressor()
{
  if (one-time initialization token for playlistEditorMetadataArtworkExpression5 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression5;
}

uint64_t *AccessibilityIdentifier.playlistEditorMetadataArtworkExpression6.unsafeMutableAddressor()
{
  if (one-time initialization token for playlistEditorMetadataArtworkExpression6 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression6;
}

uint64_t *AccessibilityIdentifier.playlistEditorMetadataArtworkExpression7.unsafeMutableAddressor()
{
  if (one-time initialization token for playlistEditorMetadataArtworkExpression7 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression7;
}

uint64_t *AccessibilityIdentifier.playlistEditorMetadataArtworkExpression8.unsafeMutableAddressor()
{
  if (one-time initialization token for playlistEditorMetadataArtworkExpression8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression8;
}

MusicCore::AccessibilityIdentifier __swiftcall AccessibilityIdentifier.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  countAndFlagsBits = rawValue._countAndFlagsBits;

  v3 = countAndFlagsBits;
  v4 = object;
  v5 = countAndFlagsBits;
  v6 = object;
  result.name._object = v6;
  result.name._countAndFlagsBits = v5;
  result.rawValue._object = v4;
  result.rawValue._countAndFlagsBits = v3;
  return result;
}

uint64_t static AccessibilityIdentifier.named(_:)(uint64_t a1, void *a2)
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v7 = static AccessibilityIdentifier.prefix;

  v4._countAndFlagsBits = 46;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);

  v5._countAndFlagsBits = a1;
  v5._object = a2;
  String.append(_:)(v5);

  return v7;
}

void one-time initialization function for prefix()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = NSBundle.appName.getter();
  v3 = v2;

  static AccessibilityIdentifier.prefix = v1;
  *algn_100608508 = v3;
}

uint64_t NSBundle.appName.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v29[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v29[-v6];
  v32 = 0;
  v33 = 0xE000000000000000;
  v8 = [v1 bundleIdentifier];
  if (v8)
  {
    v9 = v8;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v30 = 46;
    v31 = 0xE100000000000000;
    __chkstk_darwin(v13);
    *&v29[-16] = &v30;
    if (*(specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)(0x7FFFFFFFFFFFFFFFLL, 1, partial apply for specialized closure #1 in Sequence<>.contains(_:), &v29[-32], v10, v12, v29) + 2))
    {

      goto LABEL_12;
    }
  }

  v30 = 0;
  v31 = 0xE000000000000000;
  v14 = [v1 executableURL];
  if (v14)
  {
    v15 = v14;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  (*(v18 + 56))(v5, v16, 1, v17);
  outlined init with take of URL?(v5, v7);
  if ((*(v18 + 48))(v7, 1, v17) == 1)
  {
    outlined destroy of URL?(v7);
    v19 = 0xE500000000000000;
    v20 = 0x636973754DLL;
  }

  else
  {
    v21 = URL.lastPathComponent.getter();
    v19 = v22;
    (*(v18 + 8))(v7, v17);
    v20 = v21;
  }

  v23 = v19;
  String.append(_:)(*&v20);

  Substring.init(_:)();
LABEL_12:
  v24 = static String._fromSubstring(_:)();
  v26 = v25;

  v27._countAndFlagsBits = v24;
  v27._object = v26;
  String.append(_:)(v27);

  return v32;
}

uint64_t one-time initialization function for artwork()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v3 = static AccessibilityIdentifier.prefix;
  v4 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0x6B726F77747241;
  v1._object = 0xE700000000000000;
  String.append(_:)(v1);

  static AccessibilityIdentifier.artwork = v3;
  unk_10063D7D0 = v4;
  qword_10063D7D8 = 0x6B726F77747241;
  unk_10063D7E0 = 0xE700000000000000;
  return result;
}

{
  v0 = objc_allocWithZone(UIColor);
  v3[4] = closure #1 in variable initialization expression of static Border.artwork;
  v3[5] = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = thunk for @escaping @callee_guaranteed (@guaranteed UITraitCollection) -> (@owned UIColor);
  v3[3] = &block_descriptor_56;
  v1 = _Block_copy(v3);
  [v0 initWithDynamicProvider:v1];
  _Block_release(v1);

  result = Color.init(uiColor:)();
  static Border.artwork = result;
  qword_10063F0B8 = 0x3FE0000000000000;
  byte_10063F0C0 = 0;
  return result;
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.artwork);
  __swift_project_value_buffer(v0, static Logger.artwork);
  return static Logger.music(_:)();
}

uint64_t *AccessibilityIdentifier.artwork.unsafeMutableAddressor()
{
  if (one-time initialization token for artwork != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.artwork;
}

uint64_t static AccessibilityIdentifier.artwork.getter()
{
  if (one-time initialization token for artwork != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.artwork;

  return v0;
}

uint64_t one-time initialization function for doneButton()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v3 = static AccessibilityIdentifier.prefix;
  v4 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD00000000000001ALL;
  v1._object = 0x80000001004CF7B0;
  String.append(_:)(v1);

  static AccessibilityIdentifier.doneButton = v3;
  unk_10063D7F0 = v4;
  qword_10063D7F8 = 0xD00000000000001ALL;
  unk_10063D800 = 0x80000001004CF7B0;
  return result;
}

uint64_t *AccessibilityIdentifier.doneButton.unsafeMutableAddressor()
{
  if (one-time initialization token for doneButton != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.doneButton;
}

uint64_t static AccessibilityIdentifier.doneButton.getter()
{
  if (one-time initialization token for doneButton != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.doneButton;

  return v0;
}

uint64_t one-time initialization function for backButton()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v3 = static AccessibilityIdentifier.prefix;
  v4 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0x747475426B636142;
  v1._object = 0xEA00000000006E6FLL;
  String.append(_:)(v1);

  static AccessibilityIdentifier.backButton = v3;
  unk_10063D810 = v4;
  qword_10063D818 = 0x747475426B636142;
  unk_10063D820 = 0xEA00000000006E6FLL;
  return result;
}

uint64_t *AccessibilityIdentifier.backButton.unsafeMutableAddressor()
{
  if (one-time initialization token for backButton != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.backButton;
}

uint64_t static AccessibilityIdentifier.backButton.getter()
{
  if (one-time initialization token for backButton != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.backButton;

  return v0;
}

uint64_t one-time initialization function for moreButton()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v3 = static AccessibilityIdentifier.prefix;
  v4 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 1701998413;
  v1._object = 0xE400000000000000;
  String.append(_:)(v1);

  static AccessibilityIdentifier.moreButton = v3;
  unk_10063D830 = v4;
  qword_10063D838 = 1701998413;
  unk_10063D840 = 0xE400000000000000;
  return result;
}

uint64_t *AccessibilityIdentifier.moreButton.unsafeMutableAddressor()
{
  if (one-time initialization token for moreButton != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.moreButton;
}

uint64_t static AccessibilityIdentifier.moreButton.getter()
{
  if (one-time initialization token for moreButton != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.moreButton;

  return v0;
}

uint64_t one-time initialization function for calendarButton()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v3 = static AccessibilityIdentifier.prefix;
  v4 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000014;
  v1._object = 0x80000001004CF790;
  String.append(_:)(v1);

  static AccessibilityIdentifier.calendarButton = v3;
  unk_10063D850 = v4;
  qword_10063D858 = 0xD000000000000014;
  unk_10063D860 = 0x80000001004CF790;
  return result;
}

uint64_t *AccessibilityIdentifier.calendarButton.unsafeMutableAddressor()
{
  if (one-time initialization token for calendarButton != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.calendarButton;
}

uint64_t static AccessibilityIdentifier.calendarButton.getter()
{
  if (one-time initialization token for calendarButton != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.calendarButton;

  return v0;
}

uint64_t one-time initialization function for detailHeader()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v3 = static AccessibilityIdentifier.prefix;
  v4 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0x65486C6961746544;
  v1._object = 0xEC00000072656461;
  String.append(_:)(v1);

  static AccessibilityIdentifier.detailHeader = v3;
  unk_10063D870 = v4;
  strcpy(&qword_10063D878, "DetailHeader");
  unk_10063D885 = 0;
  unk_10063D886 = -5120;
  return result;
}

uint64_t *AccessibilityIdentifier.detailHeader.unsafeMutableAddressor()
{
  if (one-time initialization token for detailHeader != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.detailHeader;
}

uint64_t static AccessibilityIdentifier.detailHeader.getter()
{
  if (one-time initialization token for detailHeader != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.detailHeader;

  return v0;
}

uint64_t one-time initialization function for detailHeaderTitle()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v3 = static AccessibilityIdentifier.prefix;
  v4 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000012;
  v1._object = 0x80000001004CF770;
  String.append(_:)(v1);

  static AccessibilityIdentifier.detailHeaderTitle = v3;
  unk_10063D890 = v4;
  qword_10063D898 = 0xD000000000000012;
  unk_10063D8A0 = 0x80000001004CF770;
  return result;
}

uint64_t *AccessibilityIdentifier.detailHeaderTitle.unsafeMutableAddressor()
{
  if (one-time initialization token for detailHeaderTitle != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.detailHeaderTitle;
}

uint64_t static AccessibilityIdentifier.detailHeaderTitle.getter()
{
  if (one-time initialization token for detailHeaderTitle != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.detailHeaderTitle;

  return v0;
}

uint64_t one-time initialization function for detailHeaderTitleFavorited()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v3 = static AccessibilityIdentifier.prefix;
  v4 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD00000000000001CLL;
  v1._object = 0x80000001004CF750;
  String.append(_:)(v1);

  static AccessibilityIdentifier.detailHeaderTitleFavorited = v3;
  unk_10063D8B0 = v4;
  qword_10063D8B8 = 0xD00000000000001CLL;
  unk_10063D8C0 = 0x80000001004CF750;
  return result;
}

uint64_t *AccessibilityIdentifier.detailHeaderTitleFavorited.unsafeMutableAddressor()
{
  if (one-time initialization token for detailHeaderTitleFavorited != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.detailHeaderTitleFavorited;
}

uint64_t static AccessibilityIdentifier.detailHeaderTitleFavorited.getter()
{
  if (one-time initialization token for detailHeaderTitleFavorited != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.detailHeaderTitleFavorited;

  return v0;
}

uint64_t one-time initialization function for detailHeaderLabel()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v3 = static AccessibilityIdentifier.prefix;
  v4 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000018;
  v1._object = 0x80000001004CF730;
  String.append(_:)(v1);

  static AccessibilityIdentifier.detailHeaderLabel = v3;
  unk_10063D8D0 = v4;
  qword_10063D8D8 = 0xD000000000000018;
  unk_10063D8E0 = 0x80000001004CF730;
  return result;
}

uint64_t *AccessibilityIdentifier.detailHeaderLabel.unsafeMutableAddressor()
{
  if (one-time initialization token for detailHeaderLabel != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.detailHeaderLabel;
}

uint64_t static AccessibilityIdentifier.detailHeaderLabel.getter()
{
  if (one-time initialization token for detailHeaderLabel != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.detailHeaderLabel;

  return v0;
}

uint64_t one-time initialization function for detailHeaderArtistLink()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v3 = static AccessibilityIdentifier.prefix;
  v4 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000017;
  v1._object = 0x80000001004CF710;
  String.append(_:)(v1);

  static AccessibilityIdentifier.detailHeaderArtistLink = v3;
  unk_10063D8F0 = v4;
  qword_10063D8F8 = 0xD000000000000017;
  unk_10063D900 = 0x80000001004CF710;
  return result;
}

uint64_t *AccessibilityIdentifier.detailHeaderArtistLink.unsafeMutableAddressor()
{
  if (one-time initialization token for detailHeaderArtistLink != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.detailHeaderArtistLink;
}

uint64_t static AccessibilityIdentifier.detailHeaderArtistLink.getter()
{
  if (one-time initialization token for detailHeaderArtistLink != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.detailHeaderArtistLink;

  return v0;
}

uint64_t one-time initialization function for detailHeaderDescriptionLabel()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v3 = static AccessibilityIdentifier.prefix;
  v4 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD00000000000001DLL;
  v1._object = 0x80000001004CF6F0;
  String.append(_:)(v1);

  static AccessibilityIdentifier.detailHeaderDescriptionLabel = v3;
  unk_10063D910 = v4;
  qword_10063D918 = 0xD00000000000001DLL;
  unk_10063D920 = 0x80000001004CF6F0;
  return result;
}

uint64_t *AccessibilityIdentifier.detailHeaderDescriptionLabel.unsafeMutableAddressor()
{
  if (one-time initialization token for detailHeaderDescriptionLabel != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.detailHeaderDescriptionLabel;
}

uint64_t static AccessibilityIdentifier.detailHeaderDescriptionLabel.getter()
{
  if (one-time initialization token for detailHeaderDescriptionLabel != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.detailHeaderDescriptionLabel;

  return v0;
}

uint64_t one-time initialization function for detailHeaderMore()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v3 = static AccessibilityIdentifier.prefix;
  v4 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000011;
  v1._object = 0x80000001004CF6D0;
  String.append(_:)(v1);

  static AccessibilityIdentifier.detailHeaderMore = v3;
  unk_10063D930 = v4;
  qword_10063D938 = 0xD000000000000011;
  unk_10063D940 = 0x80000001004CF6D0;
  return result;
}

uint64_t *AccessibilityIdentifier.detailHeaderMore.unsafeMutableAddressor()
{
  if (one-time initialization token for detailHeaderMore != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.detailHeaderMore;
}

uint64_t static AccessibilityIdentifier.detailHeaderMore.getter()
{
  if (one-time initialization token for detailHeaderMore != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.detailHeaderMore;

  return v0;
}

uint64_t one-time initialization function for playIntentButton()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v3 = static AccessibilityIdentifier.prefix;
  v4 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000015;
  v1._object = 0x80000001004CF6B0;
  String.append(_:)(v1);

  static AccessibilityIdentifier.playIntentButton = v3;
  unk_10063D950 = v4;
  qword_10063D958 = 0xD000000000000015;
  unk_10063D960 = 0x80000001004CF6B0;
  return result;
}

uint64_t *AccessibilityIdentifier.playIntentButton.unsafeMutableAddressor()
{
  if (one-time initialization token for playIntentButton != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playIntentButton;
}

uint64_t static AccessibilityIdentifier.playIntentButton.getter()
{
  if (one-time initialization token for playIntentButton != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playIntentButton;

  return v0;
}

uint64_t one-time initialization function for shuffleIntentButton()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v3 = static AccessibilityIdentifier.prefix;
  v4 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000018;
  v1._object = 0x80000001004CF690;
  String.append(_:)(v1);

  static AccessibilityIdentifier.shuffleIntentButton = v3;
  unk_10063D970 = v4;
  qword_10063D978 = 0xD000000000000018;
  unk_10063D980 = 0x80000001004CF690;
  return result;
}

uint64_t *AccessibilityIdentifier.shuffleIntentButton.unsafeMutableAddressor()
{
  if (one-time initialization token for shuffleIntentButton != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.shuffleIntentButton;
}

uint64_t static AccessibilityIdentifier.shuffleIntentButton.getter()
{
  if (one-time initialization token for shuffleIntentButton != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.shuffleIntentButton;

  return v0;
}

uint64_t one-time initialization function for startSingingIntentButton()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v3 = static AccessibilityIdentifier.prefix;
  v4 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD00000000000001DLL;
  v1._object = 0x80000001004CF670;
  String.append(_:)(v1);

  static AccessibilityIdentifier.startSingingIntentButton = v3;
  unk_10063D990 = v4;
  qword_10063D998 = 0xD00000000000001DLL;
  unk_10063D9A0 = 0x80000001004CF670;
  return result;
}

uint64_t *AccessibilityIdentifier.startSingingIntentButton.unsafeMutableAddressor()
{
  if (one-time initialization token for startSingingIntentButton != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.startSingingIntentButton;
}

uint64_t static AccessibilityIdentifier.startSingingIntentButton.getter()
{
  if (one-time initialization token for startSingingIntentButton != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.startSingingIntentButton;

  return v0;
}

uint64_t one-time initialization function for songCell()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v3 = static AccessibilityIdentifier.prefix;
  v4 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0x6C6C6543676E6F53;
  v1._object = 0xE800000000000000;
  String.append(_:)(v1);

  static AccessibilityIdentifier.songCell = v3;
  unk_10063D9B0 = v4;
  qword_10063D9B8 = 0x6C6C6543676E6F53;
  unk_10063D9C0 = 0xE800000000000000;
  return result;
}

uint64_t *AccessibilityIdentifier.songCell.unsafeMutableAddressor()
{
  if (one-time initialization token for songCell != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.songCell;
}

uint64_t static AccessibilityIdentifier.songCell.getter()
{
  if (one-time initialization token for songCell != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.songCell;

  return v0;
}

uint64_t one-time initialization function for trackListCell()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v3 = static AccessibilityIdentifier.prefix;
  v4 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0x73694C6B63617254;
  v1._object = 0xED00006C6C654374;
  String.append(_:)(v1);

  static AccessibilityIdentifier.trackListCell = v3;
  unk_10063D9D0 = v4;
  strcpy(&qword_10063D9D8, "TrackListCell");
  unk_10063D9E6 = -4864;
  return result;
}

uint64_t *AccessibilityIdentifier.trackListCell.unsafeMutableAddressor()
{
  if (one-time initialization token for trackListCell != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListCell;
}

uint64_t static AccessibilityIdentifier.trackListCell.getter()
{
  if (one-time initialization token for trackListCell != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListCell;

  return v0;
}

uint64_t one-time initialization function for trackListEmptyCell()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v3 = static AccessibilityIdentifier.prefix;
  v4 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000013;
  v1._object = 0x80000001004CF650;
  String.append(_:)(v1);

  static AccessibilityIdentifier.trackListEmptyCell = v3;
  unk_10063D9F0 = v4;
  qword_10063D9F8 = 0xD000000000000013;
  unk_10063DA00 = 0x80000001004CF650;
  return result;
}

uint64_t *AccessibilityIdentifier.trackListEmptyCell.unsafeMutableAddressor()
{
  if (one-time initialization token for trackListEmptyCell != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListEmptyCell;
}

uint64_t static AccessibilityIdentifier.trackListEmptyCell.getter()
{
  if (one-time initialization token for trackListEmptyCell != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListEmptyCell;

  return v0;
}

uint64_t one-time initialization function for trackListCellArtwork()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v3 = static AccessibilityIdentifier.prefix;
  v4 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000015;
  v1._object = 0x80000001004CF630;
  String.append(_:)(v1);

  static AccessibilityIdentifier.trackListCellArtwork = v3;
  unk_10063DA10 = v4;
  qword_10063DA18 = 0xD000000000000015;
  unk_10063DA20 = 0x80000001004CF630;
  return result;
}

uint64_t *AccessibilityIdentifier.trackListCellArtwork.unsafeMutableAddressor()
{
  if (one-time initialization token for trackListCellArtwork != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListCellArtwork;
}

uint64_t static AccessibilityIdentifier.trackListCellArtwork.getter()
{
  if (one-time initialization token for trackListCellArtwork != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListCellArtwork;

  return v0;
}

uint64_t one-time initialization function for trackListCellFavoriteBadge()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v3 = static AccessibilityIdentifier.prefix;
  v4 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD00000000000001CLL;
  v1._object = 0x80000001004CF610;
  String.append(_:)(v1);

  static AccessibilityIdentifier.trackListCellFavoriteBadge = v3;
  unk_10063DA30 = v4;
  qword_10063DA38 = 0xD00000000000001CLL;
  unk_10063DA40 = 0x80000001004CF610;
  return result;
}

uint64_t *AccessibilityIdentifier.trackListCellFavoriteBadge.unsafeMutableAddressor()
{
  if (one-time initialization token for trackListCellFavoriteBadge != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListCellFavoriteBadge;
}

uint64_t static AccessibilityIdentifier.trackListCellFavoriteBadge.getter()
{
  if (one-time initialization token for trackListCellFavoriteBadge != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListCellFavoriteBadge;

  return v0;
}

uint64_t one-time initialization function for trackListCellPopularBadge()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v3 = static AccessibilityIdentifier.prefix;
  v4 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD00000000000001BLL;
  v1._object = 0x80000001004CF5F0;
  String.append(_:)(v1);

  static AccessibilityIdentifier.trackListCellPopularBadge = v3;
  unk_10063DA50 = v4;
  qword_10063DA58 = 0xD00000000000001BLL;
  unk_10063DA60 = 0x80000001004CF5F0;
  return result;
}

uint64_t *AccessibilityIdentifier.trackListCellPopularBadge.unsafeMutableAddressor()
{
  if (one-time initialization token for trackListCellPopularBadge != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListCellPopularBadge;
}

uint64_t static AccessibilityIdentifier.trackListCellPopularBadge.getter()
{
  if (one-time initialization token for trackListCellPopularBadge != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListCellPopularBadge;

  return v0;
}

uint64_t one-time initialization function for trackListCellTrackNumber()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v3 = static AccessibilityIdentifier.prefix;
  v4 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000019;
  v1._object = 0x80000001004CF5D0;
  String.append(_:)(v1);

  static AccessibilityIdentifier.trackListCellTrackNumber = v3;
  unk_10063DA70 = v4;
  qword_10063DA78 = 0xD000000000000019;
  unk_10063DA80 = 0x80000001004CF5D0;
  return result;
}

uint64_t *AccessibilityIdentifier.trackListCellTrackNumber.unsafeMutableAddressor()
{
  if (one-time initialization token for trackListCellTrackNumber != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListCellTrackNumber;
}

uint64_t static AccessibilityIdentifier.trackListCellTrackNumber.getter()
{
  if (one-time initialization token for trackListCellTrackNumber != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListCellTrackNumber;

  return v0;
}

uint64_t one-time initialization function for trackListCellChartNumber()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v3 = static AccessibilityIdentifier.prefix;
  v4 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000019;
  v1._object = 0x80000001004CF5B0;
  String.append(_:)(v1);

  static AccessibilityIdentifier.trackListCellChartNumber = v3;
  unk_10063DA90 = v4;
  qword_10063DA98 = 0xD000000000000019;
  unk_10063DAA0 = 0x80000001004CF5B0;
  return result;
}

uint64_t *AccessibilityIdentifier.trackListCellChartNumber.unsafeMutableAddressor()
{
  if (one-time initialization token for trackListCellChartNumber != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListCellChartNumber;
}

uint64_t static AccessibilityIdentifier.trackListCellChartNumber.getter()
{
  if (one-time initialization token for trackListCellChartNumber != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListCellChartNumber;

  return v0;
}

uint64_t one-time initialization function for trackListCellVideoIcon()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v3 = static AccessibilityIdentifier.prefix;
  v4 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000017;
  v1._object = 0x80000001004CF590;
  String.append(_:)(v1);

  static AccessibilityIdentifier.trackListCellVideoIcon = v3;
  unk_10063DAB0 = v4;
  qword_10063DAB8 = 0xD000000000000017;
  unk_10063DAC0 = 0x80000001004CF590;
  return result;
}

uint64_t *AccessibilityIdentifier.trackListCellVideoIcon.unsafeMutableAddressor()
{
  if (one-time initialization token for trackListCellVideoIcon != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListCellVideoIcon;
}

uint64_t static AccessibilityIdentifier.trackListCellVideoIcon.getter()
{
  if (one-time initialization token for trackListCellVideoIcon != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListCellVideoIcon;

  return v0;
}

uint64_t one-time initialization function for trackListCellTitle()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v3 = static AccessibilityIdentifier.prefix;
  v4 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000013;
  v1._object = 0x80000001004CF570;
  String.append(_:)(v1);

  static AccessibilityIdentifier.trackListCellTitle = v3;
  unk_10063DAD0 = v4;
  qword_10063DAD8 = 0xD000000000000013;
  unk_10063DAE0 = 0x80000001004CF570;
  return result;
}

uint64_t *AccessibilityIdentifier.trackListCellTitle.unsafeMutableAddressor()
{
  if (one-time initialization token for trackListCellTitle != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListCellTitle;
}

uint64_t static AccessibilityIdentifier.trackListCellTitle.getter()
{
  if (one-time initialization token for trackListCellTitle != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListCellTitle;

  return v0;
}

uint64_t one-time initialization function for trackListCellArtist()
{
  if (one-time initialization token for prefix != -1)
  {
    swift_once();
  }

  v3 = static AccessibilityIdentifier.prefix;
  v4 = *algn_100608508;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000014;
  v1._object = 0x80000001004CF550;
  String.append(_:)(v1);

  static AccessibilityIdentifier.trackListCellArtist = v3;
  unk_10063DAF0 = v4;
  qword_10063DAF8 = 0xD000000000000014;
  unk_10063DB00 = 0x80000001004CF550;
  return result;
}

uint64_t *AccessibilityIdentifier.trackListCellArtist.unsafeMutableAddressor()
{
  if (one-time initialization token for trackListCellArtist != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListCellArtist;
}

uint64_t static AccessibilityIdentifier.trackListCellArtist.getter()
{
  if (one-time initialization token for trackListCellArtist != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListCellArtist;

  return v0;
}