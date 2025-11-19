Swift::Int protocol witness for Hashable.hashValue.getter in conformance Actions.DeleteOrRemoveDownload.Choice()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Actions.DeleteOrRemoveDownload.Choice()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Actions.DeleteOrRemoveDownload.Choice()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Actions.DeleteOrRemoveDownload.Choice@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Actions.DeleteOrRemoveDownload.Choice.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance Actions.DeleteOrRemoveDownload.Choice(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE0064616F6C6E77;
  v4 = 0x80000001004C4650;
  v5 = 0xD000000000000011;
  if (v2 != 1)
  {
    v5 = 0x6C65636E6163;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6F4465766F6D6572;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t static Actions.DeleteOrRemoveDownload.action(context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of Actions.DeleteOrRemoveDownload.Context(a1, a2);
  result = swift_allocObject();
  *(result + 16) = &async function pointer to specialized thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed Action<Actions.DeleteOrRemoveDownload.Context, Actions.DeleteOrRemoveDownload.Choice>, @in_guaranteed CheckedContinuation<Actions.DeleteOrRemoveDownload.Choice, Error>) -> ();
  *(result + 24) = 0;
  *(a2 + 192) = 51;
  *(a2 + 208) = 0;
  *(a2 + 216) = 0x403E000000000000;
  *(a2 + 200) = closure #1 in static Actions.DeleteOrRemoveDownload.action(context:);
  *(a2 + 224) = &async function pointer to partial apply for specialized closure #1 in Action.init(_:id:waitLogInterval:supportedStatus:perform:finish:);
  *(a2 + 232) = result;
  *(a2 + 240) = &async function pointer to closure #3 in static Actions.DeleteOrRemoveDownload.action(context:);
  *(a2 + 248) = 0;
  return result;
}

unint64_t closure #1 in static Actions.DeleteOrRemoveDownload.action(context:)(uint64_t (**a1)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore21ActionSupportedStatusOGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004F2EF0;
  *(inited + 32) = (*a1)();
  *(inited + 40) = v3;
  *(inited + 48) = a1[4]();
  *(inited + 56) = v4;
  v5 = static ActionSupportedStatus.allSupported(_:)(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  return v5;
}

uint64_t closure #2 in static Actions.DeleteOrRemoveDownload.action(context:)(uint64_t a1, uint64_t a2)
{
  v2[47] = a1;
  v2[48] = a2;
  type metadata accessor for MainActor();
  v2[49] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #2 in static Actions.DeleteOrRemoveDownload.action(context:), v4, v3);
}

uint64_t closure #2 in static Actions.DeleteOrRemoveDownload.action(context:)()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 376);

  outlined init with copy of Actions.DeleteOrRemoveDownload.Context(v2, v0 + 16);
  v4 = *(v0 + 192);
  v3 = *(v0 + 200);
  v5 = swift_task_alloc();
  *(v5 + 16) = v0 + 16;
  *(v5 + 24) = v1;

  v6 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay9MusicCore7ActionsO22DeleteOrRemoveDownloadO6ChoiceOG_AF5AlertV6ActionVs5NeverOTg5(partial apply for closure #1 in closure #2 in static Actions.DeleteOrRemoveDownload.action(context:), v5, &outlined read-only object #0 of closure #2 in static Actions.DeleteOrRemoveDownload.action(context:));

  *(v0 + 304) = 0;
  *(v0 + 312) = 0;
  *(v0 + 320) = v4;
  *(v0 + 328) = v3;
  *(v0 + 336) = 1;
  *(v0 + 344) = 0;
  *(v0 + 352) = 1;
  *(v0 + 360) = v6;
  *(v0 + 368) = 0;
  v7 = specialized static UIAlertController.alertController(with:overrideStyle:)(v0 + 304, 0, 1);
  v8 = v7;
  v9 = *(v0 + 336);
  v10 = *(v0 + 176);
  if (v10)
  {
    v11 = one-time initialization token for logger;

    if (v11 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static PresentationSource.logger);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Deferring presentation…", v15, 2u);
    }

    v16 = objc_allocWithZone(MSVBlockGuard);
    *(v0 + 240) = closure #1 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:);
    *(v0 + 248) = 0;
    *(v0 + 208) = _NSConcreteStackBlock;
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = thunk for @escaping @callee_guaranteed (@unowned MSVBlockGuardInterruptionReason) -> ();
    *(v0 + 232) = &block_descriptor_3;
    v17 = _Block_copy((v0 + 208));
    v18 = [v16 initWithTimeout:v17 interruptionHandler:10.0];
    _Block_release(v17);

    outlined init with copy of PresentationSource(v0 + 96, v0 + 208);
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    outlined init with take of PresentationSource(v0 + 208, v19 + 24);
    *(v19 + 120) = v8;
    *(v19 + 128) = v9;
    *(v19 + 129) = 1;
    *(v19 + 136) = 0;
    *(v19 + 144) = 0;
    v20 = v18;
    v8 = v8;
    v10(v0 + 96, v8, partial apply for closure #2 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:), v19);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v10);
  }

  else
  {
    PresentationSource._present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v7, *(v0 + 336), 1, 0, 0);
  }

  outlined destroy of Alert(v0 + 304);
  outlined destroy of Actions.DeleteOrRemoveDownload.Context(v0 + 16);
  v21 = *(v0 + 8);

  return v21();
}

uint64_t closure #1 in closure #2 in static Actions.DeleteOrRemoveDownload.action(context:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9MusicCore7ActionsO22DeleteOrRemoveDownloadO6ChoiceOs5Error_pGMd);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - v10;
  v12 = *a1;
  v26 = a2;
  if (!v12)
  {
    v25 = 2;
    v23 = 0x6F4465766F6D6572;
    v13 = 0xEE0064616F6C6E77;
LABEL_6:
    v14 = &v29;
    goto LABEL_7;
  }

  if (v12 != 1)
  {
    v25 = 0;
    v23 = 0x6C65636E6163;
    v13 = 0xE600000000000000;
    goto LABEL_6;
  }

  v24 = 0x80000001004C4650;
  v25 = 1;
  v13 = 0xD000000000000011;
  v14 = &v28;
LABEL_7:
  *(v14 - 32) = v13;
  v15 = Actions.DeleteOrRemoveDownload.Choice.buttonTitle.getter();
  v22 = v16;
  outlined init with copy of Actions.DeleteOrRemoveDownload.Context(v26, v27);
  (*(v9 + 16))(v11, a3, v8);
  v17 = (*(v9 + 80) + 216) & ~*(v9 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v12;
  outlined init with take of Actions.DeleteOrRemoveDownload.Context(v27, v18 + 24);
  result = (*(v9 + 32))(v18 + v17, v11, v8);
  v20 = v24;
  *a4 = v23;
  *(a4 + 8) = v20;
  v21 = v22;
  *(a4 + 16) = v15;
  *(a4 + 24) = v21;
  *(a4 + 32) = v25;
  *(a4 + 40) = &async function pointer to partial apply for closure #1 in closure #1 in closure #2 in static Actions.DeleteOrRemoveDownload.action(context:);
  *(a4 + 48) = v18;
  return result;
}

uint64_t closure #1 in closure #1 in closure #2 in static Actions.DeleteOrRemoveDownload.action(context:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 208) = a4;
  *(v5 + 216) = a5;
  *(v5 + 264) = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9MusicCore7ActionsO22DeleteOrRemoveDownloadO6ChoiceOs5Error_pGMd);
  *(v5 + 224) = v6;
  v7 = *(v6 - 8);
  *(v5 + 232) = v7;
  *(v5 + 240) = *(v7 + 64);
  *(v5 + 248) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0);
  *(v5 + 256) = swift_task_alloc();

  return _swift_task_switch(closure #1 in closure #1 in closure #2 in static Actions.DeleteOrRemoveDownload.action(context:), 0, 0);
}

uint64_t closure #1 in closure #1 in closure #2 in static Actions.DeleteOrRemoveDownload.action(context:)()
{
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 232);
  v5 = *(v0 + 216);
  v4 = *(v0 + 224);
  v6 = *(v0 + 208);
  v7 = *(v0 + 264);
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v1, 1, 1, v8);
  outlined init with copy of Actions.DeleteOrRemoveDownload.Context(v6, v0 + 16);
  (*(v3 + 16))(v2, v5, v4);
  v9 = (*(v3 + 80) + 232) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = v7;
  outlined init with take of Actions.DeleteOrRemoveDownload.Context(v0 + 16, v10 + 40);
  (*(v3 + 32))(v10 + v9, v2, v4);
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v1, &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in closure #2 in static Actions.DeleteOrRemoveDownload.action(context:), v10);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t closure #1 in closure #1 in closure #1 in closure #2 in static Actions.DeleteOrRemoveDownload.action(context:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a5;
  *(v6 + 24) = a6;
  *(v6 + 49) = a4;
  return _swift_task_switch(closure #1 in closure #1 in closure #1 in closure #2 in static Actions.DeleteOrRemoveDownload.action(context:), 0, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #2 in static Actions.DeleteOrRemoveDownload.action(context:)()
{
  if (!*(v0 + 49))
  {
    v5 = (*(*(v0 + 16) + 48) + **(*(v0 + 16) + 48));
    v1 = swift_task_alloc();
    *(v0 + 32) = v1;
    *v1 = v0;
    v2 = closure #1 in closure #1 in closure #1 in closure #2 in static Actions.DeleteOrRemoveDownload.action(context:);
    goto LABEL_5;
  }

  if (*(v0 + 49) == 1)
  {
    v5 = (*(*(v0 + 16) + 16) + **(*(v0 + 16) + 16));
    v1 = swift_task_alloc();
    *(v0 + 40) = v1;
    *v1 = v0;
    v2 = closure #1 in closure #1 in closure #1 in closure #2 in static Actions.DeleteOrRemoveDownload.action(context:);
LABEL_5:
    v1[1] = v2;

    return v5();
  }

  *(v0 + 48) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9MusicCore7ActionsO22DeleteOrRemoveDownloadO6ChoiceOs5Error_pGMd);
  CheckedContinuation.resume(returning:)();
  v4 = *(v0 + 8);

  return v4();
}

{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(closure #1 in closure #1 in closure #1 in closure #2 in static Actions.DeleteOrRemoveDownload.action(context:), 0, 0);
  }
}

{
  *(v0 + 48) = *(v0 + 49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9MusicCore7ActionsO22DeleteOrRemoveDownloadO6ChoiceOs5Error_pGMd);
  CheckedContinuation.resume(returning:)();
  v1 = *(v0 + 8);

  return v1();
}

{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(closure #1 in closure #1 in closure #1 in closure #2 in static Actions.DeleteOrRemoveDownload.action(context:), 0, 0);
  }
}

uint64_t specialized thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed Action<Actions.DeleteOrRemoveDownload.Context, Actions.DeleteOrRemoveDownload.Choice>, @in_guaranteed CheckedContinuation<Actions.DeleteOrRemoveDownload.Choice, Error>) -> ()(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return closure #2 in static Actions.DeleteOrRemoveDownload.action(context:)(a1, a2);
}

uint64_t closure #3 in static Actions.DeleteOrRemoveDownload.action(context:)()
{
  v3 = (*(*(v0 + 16) + 64) + **(*(v0 + 16) + 64));
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = closure #2 in static Actions.Collaborate.action(context:);

  return v3();
}

uint64_t protocol witness for static ActionDefinition.action(context:) in conformance Actions.DeleteOrRemoveDownload@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of Actions.DeleteOrRemoveDownload.Context(a1, a2);
  result = swift_allocObject();
  *(result + 16) = &async function pointer to specialized thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed Action<Actions.DeleteOrRemoveDownload.Context, Actions.DeleteOrRemoveDownload.Choice>, @in_guaranteed CheckedContinuation<Actions.DeleteOrRemoveDownload.Choice, Error>) -> ();
  *(result + 24) = 0;
  *(a2 + 192) = 51;
  *(a2 + 208) = 0;
  *(a2 + 216) = 0x403E000000000000;
  *(a2 + 200) = closure #1 in static Actions.DeleteOrRemoveDownload.action(context:);
  *(a2 + 224) = &closure #1 in Action.init(_:id:waitLogInterval:supportedStatus:perform:finish:)specialized partial apply;
  *(a2 + 232) = result;
  *(a2 + 240) = &async function pointer to closure #3 in static Actions.DeleteOrRemoveDownload.action(context:);
  *(a2 + 248) = 0;
  return result;
}

uint64_t Actions.DeleteOrRemoveDownload.Context.init<A>(item:library:presentationSource:metricsReportingContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t (**a8)()@<X8>)
{
  v86 = a4;
  v87 = a1;
  v77 = a8;
  v78 = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  v76 = *(v13 - 8);
  v75 = *(v76 + 64);
  v14 = __chkstk_darwin(v13 - 8);
  v72 = &v64 - v15;
  v16 = *(a5 - 8);
  v17 = __chkstk_darwin(v14);
  v71 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v67 = &v64 - v20;
  v21 = __chkstk_darwin(v19);
  v66 = &v64 - v22;
  v23 = __chkstk_darwin(v21);
  v68 = &v64 - v24;
  v88 = v25;
  __chkstk_darwin(v23);
  v27 = &v64 - v26;
  v28 = *(v16 + 16);
  v80 = v16 + 16;
  v28(&v64 - v26, a1, a5);
  v29 = v28;
  v69 = *(v16 + 80);
  v73 = v16;
  v30 = (v69 + 48) & ~v69;
  v79 = v69 | 7;
  v31 = swift_allocObject();
  v74 = v31;
  *(v31 + 2) = a5;
  *(v31 + 3) = a6;
  v32 = a7;
  v81 = a7;
  *(v31 + 4) = a7;
  *(v31 + 5) = a2;
  v85 = a2;
  v33 = v16 + 32;
  v34 = *(v16 + 32);
  v82 = v33;
  v83 = a6;
  v34(v31 + v30, v27, a5);
  v35 = v68;
  v84 = v29;
  v29(v68, v87, a5);
  v36 = swift_allocObject();
  v70 = v36;
  *(v36 + 2) = a5;
  *(v36 + 3) = a6;
  *(v36 + 4) = v32;
  *(v36 + 5) = a2;
  v34(v36 + v30, v35, a5);
  v37 = v66;
  v38 = v87;
  v29(v66, v87, a5);
  v39 = swift_allocObject();
  v68 = v39;
  v40 = v83;
  *(v39 + 2) = a5;
  *(v39 + 3) = v40;
  v41 = v81;
  v42 = v85;
  *(v39 + 4) = v81;
  *(v39 + 5) = v42;
  v34(&v39[v30], v37, a5);
  v43 = v34;
  v65 = v34;
  v44 = v67;
  v84(v67, v38, a5);
  v45 = swift_allocObject();
  v66 = v45;
  v46 = v83;
  *(v45 + 2) = a5;
  *(v45 + 3) = v46;
  *(v45 + 4) = v41;
  *(v45 + 5) = v42;
  v43(&v45[v30], v44, a5);
  v47 = v72;
  outlined init with copy of TaskPriority?(v86, v72, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  v48 = v71;
  v49 = v87;
  v84(v71, v87, a5);
  v50 = (*(v76 + 80) + 40) & ~*(v76 + 80);
  v51 = (v75 + v69 + v50) & ~v69;
  v52 = swift_allocObject();
  *(v52 + 2) = a5;
  *(v52 + 3) = v46;
  *(v52 + 4) = v81;
  outlined init with take of URL?(v47, v52 + v50, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  v65(v52 + v51, v48, a5);
  v53 = v77;
  v54 = v78;
  outlined init with copy of PresentationSource(v78, (v77 + 10));
  swift_retain_n();
  v55 = v49;
  v56 = closure #6 in Actions.DeleteOrRemoveDownload.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(v49, a5);
  v58 = v57;
  outlined destroy of TaskPriority?(v86, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  outlined destroy of PresentationSource(v54);
  result = (*(v73 + 8))(v55, a5);
  v60 = v74;
  *v53 = partial apply for closure #1 in Actions.DeleteOrRemoveDownload.Context.init<A>(item:library:presentationSource:metricsReportingContext:);
  v53[1] = v60;
  v61 = v70;
  v53[2] = &async function pointer to partial apply for closure #2 in Actions.DeleteOrRemoveDownload.Context.init<A>(item:library:presentationSource:metricsReportingContext:);
  v53[3] = v61;
  v62 = v68;
  v53[4] = partial apply for closure #3 in Actions.DeleteOrRemoveDownload.Context.init<A>(item:library:presentationSource:metricsReportingContext:);
  v53[5] = v62;
  v63 = v66;
  v53[6] = &async function pointer to partial apply for closure #4 in Actions.DeleteOrRemoveDownload.Context.init<A>(item:library:presentationSource:metricsReportingContext:);
  v53[7] = v63;
  v53[8] = &async function pointer to partial apply for closure #5 in Actions.DeleteOrRemoveDownload.Context.init<A>(item:library:presentationSource:metricsReportingContext:);
  v53[9] = v52;
  v53[22] = v56;
  v53[23] = v58;
  return result;
}

uint64_t closure #1 in Actions.DeleteOrRemoveDownload.Context.init<A>(item:library:presentationSource:metricsReportingContext:)()
{
  v0 = type metadata accessor for MusicLibrary.RemoveAction();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE12RemoveActionVGMd);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  static MusicLibraryAction<>.remove.getter();
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  (*(v1 + 8))(v3, v0);
  v8 = MusicLibrary.SupportedStatus<>.actionSupportedStatus.getter();
  (*(v5 + 8))(v7, v4);
  return v8;
}

uint64_t closure #2 in Actions.DeleteOrRemoveDownload.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return MusicLibrary.remove<A>(_:)(a2, a3, a4);
}

uint64_t closure #3 in Actions.DeleteOrRemoveDownload.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23[2] = a1;
  v23[3] = a5;
  v23[1] = a3;
  v23[0] = type metadata accessor for MusicLibrary.RemoveDownloadAction.UnsupportedReason();
  v5 = *(v23[0] - 8);
  __chkstk_darwin(v23[0]);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MusicLibrary.RemoveDownloadAction();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE20RemoveDownloadActionVGMd);
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v23 - v17;
  static MusicLibraryAction<>.removeDownload.getter();
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  (*(v9 + 8))(v11, v8);
  (*(v13 + 16))(v16, v18, v12);
  v19 = (*(v13 + 88))(v16, v12);
  if (v19 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    (*(v13 + 96))(v16, v12);
    v20 = v23[0];
    (*(v5 + 32))(v7, v16, v23[0]);
    v21 = closure #1 in MusicLibrary.SupportedStatus<>.actionSupportedStatus.getter(v7);
    (*(v5 + 8))(v7, v20);
LABEL_5:
    (*(v13 + 8))(v18, v12);
    return v21;
  }

  if (v19 == enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    v21 = 0;
    goto LABEL_5;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t closure #4 in Actions.DeleteOrRemoveDownload.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return MusicLibrary.removeDownload<A>(_:)(a2, a3, a4);
}

uint64_t closure #5 in Actions.DeleteOrRemoveDownload.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore12MetricsEventV4PageVSgMd);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = type metadata accessor for MetricsEvent.Click(0);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  v4[27] = swift_task_alloc();
  v5 = type metadata accessor for Actions.MetricsReportingContext();
  v4[28] = v5;
  v4[29] = *(v5 - 8);
  v4[30] = swift_task_alloc();

  return _swift_task_switch(closure #5 in Actions.DeleteOrRemoveDownload.Context.init<A>(item:library:presentationSource:metricsReportingContext:), 0, 0);
}

uint64_t closure #5 in Actions.DeleteOrRemoveDownload.Context.init<A>(item:library:presentationSource:metricsReportingContext:)()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  outlined init with copy of TaskPriority?(*(v0 + 72), v3, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 216), &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 208);
    v7 = *(v0 + 88);
    outlined init with take of Actions.MetricsReportingContext(*(v0 + 216), *(v0 + 240), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 248) = MusicItem.metricsTargetIdentifier.getter(v7);
    *(v0 + 256) = v8;
    v9 = type metadata accessor for URL();
    *(v0 + 264) = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    *(v0 + 272) = v11;
    *(v0 + 280) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v6, 1, 1, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore12MetricsEventV5ClickV13ActionDetailsO3KeyOGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004F2400;
    *(inited + 32) = MusicItem.metricsContentType.getter(v7);
    *(inited + 40) = v13;
    *(inited + 48) = 0;
    *(v0 + 288) = specialized MetricsEvent.Click.ActionDetails.init(_:)(inited);
    *(v0 + 296) = v14;
    *(v0 + 304) = v15;
    *(v0 + 320) = v16;
    swift_setDeallocating();
    outlined destroy of MetricsEvent.Click.ActionDetails.Key(inited + 32);
    type metadata accessor for MainActor();
    *(v0 + 312) = static MainActor.shared.getter();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(closure #5 in Actions.DeleteOrRemoveDownload.Context.init<A>(item:library:presentationSource:metricsReportingContext:), v18, v17);
  }
}

{
  v80 = *(v0 + 320);
  v73 = *(v0 + 288);
  v76 = *(v0 + 256);
  v78 = *(v0 + 304);
  v74 = *(v0 + 248);
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 168);
  v6 = *(v0 + 176);
  v7 = *(v0 + 160);
  v72 = *(v0 + 152);

  outlined init with copy of TaskPriority?(v3, v4, &_s10Foundation3URLVSgMd);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  outlined init with copy of TaskPriority?(v1 + v2[5], v7, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 9733;
  outlined init with take of URL?(v4, v6 + v5[7], &_s10Foundation3URLVSgMd);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  outlined init with copy of TaskPriority?(v7, v72, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 320);
  v17 = *(v0 + 296);
  v18 = *(v0 + 304);
  v19 = *(v0 + 288);
  v20 = *(v0 + 152);
  if (v15 == 1)
  {

    outlined copy of MetricsEvent.Click.ActionContext?(v75, v77);

    outlined copy of MetricsEvent.Click.ActionDetails(v19, v17, v18, v16, SBYTE1(v16));
    outlined destroy of TaskPriority?(v20, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    outlined copy of MetricsEvent.Click.ActionContext?(v75, v77);

    outlined copy of MetricsEvent.Click.ActionDetails(v19, v17, v18, v16, SBYTE1(v16));

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 160);
  v24 = *(v0 + 144);
  v25 = (*(v0 + 176) + *(*(v0 + 168) + 48));
  *v25 = v21;
  v25[1] = v22;
  outlined init with copy of TaskPriority?(v23, v24, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 144);
  if (v26 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 144), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 160);
  v31 = *(v0 + 136);
  v32 = (*(v0 + 176) + *(*(v0 + 168) + 52));
  *v32 = v28;
  v32[1] = v29;
  outlined init with copy of TaskPriority?(v30, v31, &_s9MusicCore12MetricsEventV4PageVSgMd);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 272);
    v34 = *(v0 + 264);
    v35 = *(v0 + 192);
    outlined destroy of TaskPriority?(*(v0 + 136), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 136);
    outlined init with copy of TaskPriority?(v36 + v14[6], *(v0 + 192), &_s10Foundation3URLVSgMd);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 160);
  v38 = *(v0 + 128);
  outlined init with take of URL?(*(v0 + 192), *(v0 + 176) + *(*(v0 + 168) + 56), &_s10Foundation3URLVSgMd);
  outlined init with copy of TaskPriority?(v37, v38, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 128);
  if (v39 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 128), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 160);
  v43 = *(v0 + 120);
  *(*(v0 + 176) + *(*(v0 + 168) + 60)) = v41;
  outlined init with copy of TaskPriority?(v42, v43, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 120);
  if (v44 == 1)
  {
    outlined destroy of TaskPriority?(v45, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 160);
  v48 = *(v0 + 112);
  *(*(v0 + 176) + *(*(v0 + 168) + 64)) = v46;
  outlined init with copy of TaskPriority?(v47, v48, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 112);
  if (v49 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 112), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 160);
  v55 = *(v0 + 104);
  v56 = (*(v0 + 176) + *(*(v0 + 168) + 72));
  *v56 = v51;
  v56[1] = v52;
  outlined init with take of URL?(v54, v55, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 104);
  if (v57 == 1)
  {
    outlined destroy of TaskPriority?(v58, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 176);
  v61 = *(v0 + 184);
  v62 = *(v0 + 168);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  outlined init with take of Actions.MetricsReportingContext(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 296);
  v63 = *(v0 + 304);
  v65 = *(v0 + 288);
  v66 = *(v0 + 240);
  v67 = *(v0 + 224);
  v68 = *(v0 + 208);
  v69 = *(v0 + 184);
  v70 = *(v0 + 320);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  outlined consume of MetricsEvent.Click.ActionDetails(v65, v64, v63, v70, SBYTE1(v70));
  _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v69, type metadata accessor for MetricsEvent.Click);
  outlined destroy of TaskPriority?(v68, &_s10Foundation3URLVSgMd);

  return _swift_task_switch(closure #5 in Actions.DeleteOrRemoveDownload.Context.init<A>(item:library:presentationSource:metricsReportingContext:), 0, 0);
}

{
  _s9MusicCore12MetricsEventV5ClickVWOhTm_0(*(v0 + 240), type metadata accessor for Actions.MetricsReportingContext);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #6 in Actions.DeleteOrRemoveDownload.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(uint64_t a1, uint64_t a2)
{
  v137 = a1;
  v108 = type metadata accessor for Genre();
  v106 = *(v108 - 8);
  __chkstk_darwin(v108);
  v109 = &v102 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for Composer();
  v107 = *(v112 - 8);
  __chkstk_darwin(v112);
  v111 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for Artist();
  v110 = *(v115 - 8);
  __chkstk_darwin(v115);
  v114 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for TVEpisode();
  v113 = *(v118 - 8);
  __chkstk_darwin(v118);
  v117 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for TVSeason();
  v116 = *(v121 - 8);
  __chkstk_darwin(v121);
  v120 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for TVShow();
  v119 = *(v123 - 8);
  __chkstk_darwin(v123);
  v122 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for MusicMovie();
  v124 = *(v127 - 8);
  __chkstk_darwin(v127);
  v126 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for Song();
  v125 = *(v130 - 8);
  __chkstk_darwin(v130);
  v129 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = type metadata accessor for Playlist();
  v128 = *(v133 - 8);
  __chkstk_darwin(v133);
  v132 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for MusicVideo();
  v131 = *(v135 - 8);
  __chkstk_darwin(v135);
  v13 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Locale();
  __chkstk_darwin(v14 - 8);
  v136 = &v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for String.LocalizationValue();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v102 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v102 - v21;
  v23 = type metadata accessor for Album();
  v134 = *(v23 - 8);
  v24 = __chkstk_darwin(v23);
  v26 = &v102 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(a2 - 8);
  v28 = __chkstk_darwin(v24);
  v103 = &v102 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v105 = &v102 - v31;
  __chkstk_darwin(v30);
  v33 = &v102 - v32;
  v138 = v27;
  v104 = *(v27 + 16);
  v104(&v102 - v32, v137, a2);
  if (swift_dynamicCast())
  {
    v137 = a2;
    String.LocalizationValue.init(stringLiteral:)();
    v17[2](v20, v22, v16);
    v34 = v17;
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v35 = static NSBundle.module;
    static Locale.current.getter();
    v36 = String.init(localized:table:bundle:locale:comment:)();
    (v34[1])(v22, v16);
    (*(v134 + 8))(v26, v23);
    (*(v138 + 8))(v33, v137);
    return v36;
  }

  v102 = v20;
  v134 = v16;
  v37 = v17;
  v38 = v135;
  if (swift_dynamicCast())
  {
    v133 = v33;
    v39 = v13;
    String.LocalizationValue.init(stringLiteral:)();
    v40 = v37;
    v41 = v37[2];
    v42 = v134;
    (v41)(v102, v22, v134);
    v43 = v138;
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v44 = static NSBundle.module;
    static Locale.current.getter();
    v45 = String.init(localized:table:bundle:locale:comment:)();
    v40[1](v22, v42);
    (*(v131 + 8))(v39, v38);
    v36 = v45;
    (*(v43 + 8))(v133, a2);
    return v36;
  }

  v46 = a2;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    v47 = v37;
    v48 = v37[2];
    v49 = v134;
    (v48)(v102, v22, v134);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v50 = static NSBundle.module;
    static Locale.current.getter();
    v51 = String.init(localized:table:bundle:locale:comment:)();
    v47[1](v22, v49);
    (*(v128 + 8))(v132, v133);
LABEL_17:
    v56 = *(v138 + 8);
    v57 = v33;
    v58 = a2;
    v36 = v51;
LABEL_18:
    v56(v57, v58);
    return v36;
  }

  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    v52 = v37;
    v53 = v37[2];
    v54 = v134;
    (v53)(v102, v22, v134);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v55 = static NSBundle.module;
    static Locale.current.getter();
    v51 = String.init(localized:table:bundle:locale:comment:)();
    v52[1](v22, v54);
    (*(v125 + 8))(v129, v130);
    goto LABEL_17;
  }

  v60 = swift_dynamicCast();
  v61 = v33;
  v62 = v37;
  v63 = v134;
  if (v60)
  {
    String.LocalizationValue.init(stringLiteral:)();
    (v37[2])(v102, v22, v63);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v64 = static NSBundle.module;
    static Locale.current.getter();
    v65 = String.init(localized:table:bundle:locale:comment:)();
    v37[1](v22, v63);
    (*(v124 + 8))(v126, v127);
    v66 = v46;
    v36 = v65;
    (*(v138 + 8))(v33, v66);
    return v36;
  }

  v135 = v22;
  v67 = v122;
  v68 = v123;
  if (swift_dynamicCast())
  {
    (*(v119 + 8))(v67, v68);
LABEL_28:
    v71 = v135;
    (*(v138 + 8))(v61, v46);
    String.LocalizationValue.init(stringLiteral:)();
    (*(v62 + 2))(v102, v71, v63);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v72 = static NSBundle.module;
    static Locale.current.getter();
    v36 = String.init(localized:table:bundle:locale:comment:)();
    (*(v62 + 1))(v71, v63);
    return v36;
  }

  v132 = v37;
  v69 = v120;
  v70 = v121;
  if (swift_dynamicCast())
  {
    (*(v116 + 8))(v69, v70);
    v63 = v134;
    v62 = v132;
    goto LABEL_28;
  }

  v73 = swift_dynamicCast();
  v74 = v135;
  if (v73)
  {
    String.LocalizationValue.init(stringLiteral:)();
    v75 = v132;
    v76 = v134;
    (*(v132 + 2))(v102, v74, v134);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v77 = static NSBundle.module;
    static Locale.current.getter();
    v78 = String.init(localized:table:bundle:locale:comment:)();
    (*(v75 + 1))(v74, v76);
    (*(v113 + 8))(v117, v118);
LABEL_43:
    v56 = *(v138 + 8);
    v57 = v61;
LABEL_44:
    v58 = v46;
    v36 = v78;
    goto LABEL_18;
  }

  v79 = swift_dynamicCast();
  v80 = v134;
  v81 = v132;
  if (v79)
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v81 + 2))(v102, v74, v80);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v82 = static NSBundle.module;
    static Locale.current.getter();
    v78 = String.init(localized:table:bundle:locale:comment:)();
    (*(v81 + 1))(v74, v80);
    (*(v110 + 8))(v114, v115);
    goto LABEL_43;
  }

  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v81 + 2))(v102, v74, v80);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v83 = static NSBundle.module;
    static Locale.current.getter();
    v78 = String.init(localized:table:bundle:locale:comment:)();
    (*(v81 + 1))(v74, v80);
    (*(v107 + 8))(v111, v112);
    goto LABEL_43;
  }

  v133 = v61;
  v84 = v108;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v81 + 2))(v102, v74, v80);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v85 = static NSBundle.module;
    static Locale.current.getter();
    v78 = String.init(localized:table:bundle:locale:comment:)();
    (*(v81 + 1))(v74, v80);
    (*(v106 + 8))(v109, v84);
    v56 = *(v138 + 8);
    v57 = v133;
    goto LABEL_44;
  }

  if (one-time initialization token for actions != -1)
  {
    swift_once();
  }

  v86 = type metadata accessor for Logger();
  __swift_project_value_buffer(v86, static Logger.actions);
  v87 = v105;
  v88 = v104;
  v104(v105, v137, v46);
  v89 = Logger.logObject.getter();
  v90 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v89, v90))
  {
    v91 = swift_slowAlloc();
    v137 = swift_slowAlloc();
    v139 = v137;
    *v91 = 136315138;
    v88(v103, v87, v46);
    v92 = String.init<A>(describing:)();
    v93 = v46;
    v95 = v94;
    v96 = *(v138 + 8);
    v96(v87, v93);
    v97 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v92, v95, &v139);
    v46 = v93;
    v74 = v22;

    *(v91 + 4) = v97;
    _os_log_impl(&_mh_execute_header, v89, v90, "DeleteOrRemoveDownload: unhandled item type=%s", v91, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v137);

    v81 = v37;
  }

  else
  {

    v96 = *(v138 + 8);
    v96(v87, v46);
  }

  String.LocalizationValue.init(stringLiteral:)();
  v98 = v134;
  (*(v81 + 2))(v102, v74, v134);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v99 = static NSBundle.module;
  static Locale.current.getter();
  v100 = String.init(localized:table:bundle:locale:comment:)();
  (*(v81 + 1))(v74, v98);
  v101 = v46;
  v36 = v100;
  v96(v133, v101);
  return v36;
}

uint64_t Actions.DeleteOrRemoveDownload.Context.menuItemTitle.getter()
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

uint64_t (*Actions.DeleteOrRemoveDownload.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6873617274;
  *(v0 + 24) = 0xE500000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x6873617274;
  *(v1 + 24) = 0xE500000000000000;
  return _s9MusicCore19ActionMenuItemImageV10systemNameACSS_tcfc7SwiftUI0F0VSgyYbcfU_TA_0;
}

uint64_t (*protocol witness for ActionMenuItemConfiguring.menuItemImage.getter in conformance Actions.DeleteOrRemoveDownload.Context())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6873617274;
  *(v0 + 24) = 0xE500000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x6873617274;
  *(v1 + 24) = 0xE500000000000000;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

uint64_t specialized closure #1 in Action.init(_:id:waitLogInterval:supportedStatus:perform:finish:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(specialized closure #1 in Action.init(_:id:waitLogInterval:supportedStatus:perform:finish:), 0, 0);
}

uint64_t specialized closure #1 in Action.init(_:id:waitLogInterval:supportedStatus:perform:finish:)()
{
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = *(v0 + 32);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = specialized closure #1 in Action.init(_:id:waitLogInterval:supportedStatus:perform:finish:);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 72, 0, 0, 0xD00000000000003ALL, 0x80000001004C56F0, partial apply for specialized closure #1 in closure #1 in Action.init(_:id:waitLogInterval:supportedStatus:perform:finish:), v2, &type metadata for Actions.DeleteOrRemoveDownload.Choice);
}

{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return _swift_task_switch(specialized closure #1 in Action.init(_:id:waitLogInterval:supportedStatus:perform:finish:), 0, 0);
  }

  else
  {
    v3 = *(v2 + 16);

    *v3 = *(v2 + 72);
    v4 = *(v2 + 8);

    return v4();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t specialized Actions.DeleteOrRemoveDownload.Choice.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Actions.DeleteOrRemoveDownload.Choice.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000656F8()
{

  return swift_deallocObject();
}

uint64_t partial apply for specialized closure #1 in Action.init(_:id:waitLogInterval:supportedStatus:perform:finish:)(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #1 in Action.init(_:id:waitLogInterval:supportedStatus:perform:finish:)(a1, a2, v7, v6);
}

uint64_t partial apply for closure #2 in Actions.DeleteOrRemoveDownload.Context.init<A>(item:library:presentationSource:metricsReportingContext:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[5];
  v5 = (*(*(v2 - 8) + 80) + 48) & ~*(*(v2 - 8) + 80);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #2 in Actions.DeleteOrRemoveDownload.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(v4, v0 + v5, v2, v3);
}

uint64_t objectdestroy_3Tm()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t partial apply for closure #4 in Actions.DeleteOrRemoveDownload.Context.init<A>(item:library:presentationSource:metricsReportingContext:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[5];
  v5 = (*(*(v2 - 8) + 80) + 48) & ~*(*(v2 - 8) + 80);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #4 in Actions.DeleteOrRemoveDownload.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(v4, v0 + v5, v2, v3);
}

uint64_t sub_100065B00()
{
  v1 = *(v0 + 16);
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd) - 8);
  v3 = *(v2 + 64);
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v5 = *(v1 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v4;
  v8 = type metadata accessor for Actions.MetricsReportingContext();
  if (!(*(*(v8 - 8) + 48))(v0 + v4, 1, v8))
  {
    v16 = v3;
    if (*(v7 + 8) >= 0xDuLL)
    {
    }

    v9 = v7 + *(v8 + 20);
    v10 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {

      v15 = *(v10 + 24);
      v11 = type metadata accessor for URL();
      v13 = *(v11 - 8);
      v14 = v11;
      if (!(*(v13 + 48))(v9 + v15, 1))
      {
        (*(v13 + 8))(v9 + v15, v14);
      }
    }

    v3 = v16;
  }

  (*(v5 + 8))(v0 + ((v4 + v3 + v6) & ~v6), v1);

  return swift_deallocObject();
}

uint64_t partial apply for closure #5 in Actions.DeleteOrRemoveDownload.Context.init<A>(item:library:presentationSource:metricsReportingContext:)()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #5 in Actions.DeleteOrRemoveDownload.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(v0 + v5, v0 + v6, v2, v3);
}

uint64_t sub_100065F10()
{

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type Actions.DeleteOrRemoveDownload.Choice and conformance Actions.DeleteOrRemoveDownload.Choice()
{
  result = lazy protocol witness table cache variable for type Actions.DeleteOrRemoveDownload.Choice and conformance Actions.DeleteOrRemoveDownload.Choice;
  if (!lazy protocol witness table cache variable for type Actions.DeleteOrRemoveDownload.Choice and conformance Actions.DeleteOrRemoveDownload.Choice)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Actions.DeleteOrRemoveDownload.Choice and conformance Actions.DeleteOrRemoveDownload.Choice);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [Actions.DeleteOrRemoveDownload.Choice] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Actions.DeleteOrRemoveDownload.Choice] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Actions.DeleteOrRemoveDownload.Choice] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay9MusicCore7ActionsO22DeleteOrRemoveDownloadO6ChoiceOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Actions.DeleteOrRemoveDownload.Choice] and conformance [A]);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9MusicCore18PresentationSourceV8PositionVSg(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for Actions.DeleteOrRemoveDownload.Context(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
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

uint64_t storeEnumTagSinglePayload for Actions.DeleteOrRemoveDownload.Context(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 192) = 1;
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

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t closure #1 in Action.init(_:id:waitLogInterval:supportedStatus:perform:finish:)specialized partial apply(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return specialized closure #1 in Action.init(_:id:waitLogInterval:supportedStatus:perform:finish:)(a1, a2, v7, v6);
}

uint64_t sub_1000661E4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9MusicCore7ActionsO22DeleteOrRemoveDownloadO6ChoiceOs5Error_pGMd);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  swift_unknownObjectRelease();

  swift_unknownObjectWeakDestroy();
  v4 = *(v0 + 176);
  if (v4 != 255)
  {
    outlined consume of PresentationSource.Position.Source(*(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), v4);
  }

  if (*(v0 + 192))
  {
  }

  if (*(v0 + 208))
  {
  }

  (*(v2 + 8))(v0 + ((v3 + 304) & ~v3), v1);

  return swift_deallocObject();
}

uint64_t partial apply for specialized closure #1 in closure #1 in closure #1 in Action.init(_:id:waitLogInterval:supportedStatus:perform:finish:)(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9MusicCore7ActionsO22DeleteOrRemoveDownloadO6ChoiceOs5Error_pGMd) - 8);
  v5 = (*(v4 + 80) + 304) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #1 in closure #1 in closure #1 in Action.init(_:id:waitLogInterval:supportedStatus:perform:finish:)(a1, v6, v7, v8, v9, (v1 + 6), v1 + v5);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000664C4()
{
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 72);
  if (v1 != 255)
  {
    outlined consume of PresentationSource.Position.Source(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), v1);
  }

  if (*(v0 + 88))
  {
  }

  if (*(v0 + 104))
  {
  }

  if (*(v0 + 136))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100066558()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9MusicCore7ActionsO22DeleteOrRemoveDownloadO6ChoiceOs5Error_pGMd);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);

  swift_unknownObjectWeakDestroy();
  v4 = *(v0 + 152);
  if (v4 != 255)
  {
    outlined consume of PresentationSource.Position.Source(*(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), v4);
  }

  if (*(v0 + 168))
  {
  }

  if (*(v0 + 184))
  {
  }

  (*(v2 + 8))(v0 + ((v3 + 216) & ~v3), v1);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in closure #2 in static Actions.DeleteOrRemoveDownload.action(context:)(uint64_t a1, uint64_t a2)
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9MusicCore7ActionsO22DeleteOrRemoveDownloadO6ChoiceOs5Error_pGMd) - 8);
  v7 = (*(v6 + 80) + 216) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #1 in closure #1 in closure #2 in static Actions.DeleteOrRemoveDownload.action(context:)(a1, a2, v8, v2 + 24, v2 + v7);
}

uint64_t sub_1000667CC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9MusicCore7ActionsO22DeleteOrRemoveDownloadO6ChoiceOs5Error_pGMd);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  swift_unknownObjectRelease();

  swift_unknownObjectWeakDestroy();
  v4 = *(v0 + 168);
  if (v4 != 255)
  {
    outlined consume of PresentationSource.Position.Source(*(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), v4);
  }

  if (*(v0 + 184))
  {
  }

  if (*(v0 + 200))
  {
  }

  (*(v2 + 8))(v0 + ((v3 + 232) & ~v3), v1);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #2 in static Actions.DeleteOrRemoveDownload.action(context:)(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9MusicCore7ActionsO22DeleteOrRemoveDownloadO6ChoiceOs5Error_pGMd) - 8);
  v5 = (*(v4 + 80) + 232) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in closure #1 in closure #1 in closure #2 in static Actions.DeleteOrRemoveDownload.action(context:)(a1, v6, v7, v8, v1 + 40, v1 + v5);
}

uint64_t Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t (**a8)()@<X8>)
{
  v67 = a8;
  v68 = a7;
  v72 = a6;
  v65 = a3;
  v66 = a4;
  v74 = a2;
  v9 = *(a5 - 8);
  v76 = a5;
  v77 = v9;
  v78 = *(v9 + 64);
  v10 = __chkstk_darwin(a1);
  v64 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v73 = &v58 - v13;
  __chkstk_darwin(v12);
  v69 = &v58 - v14;
  v15 = type metadata accessor for MusicLibrary.DownloadAction();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE14DownloadActionVGMd);
  v19 = *(v75 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v75);
  v71 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v21);
  v24 = &v58 - v23;
  v59 = &v58 - v23;
  __chkstk_darwin(v22);
  v26 = &v58 - v25;
  static MusicLibraryAction<>.download.getter();
  v70 = a1;
  v27 = v76;
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  (*(v16 + 8))(v18, v15);
  v28 = v77;
  v61 = *(v77 + 16);
  v61(v69, a1, v27);
  v58 = v19;
  v29 = v26;
  (*(v19 + 16))(v24, v26, v75);
  v30 = *(v28 + 80);
  v31 = v28;
  v32 = (v30 + 40) & ~v30;
  v33 = *(v19 + 80);
  v34 = (v78 + v32 + v33) & ~v33;
  v60 = v30 | v33;
  v35 = swift_allocObject();
  v36 = v72;
  *(v35 + 2) = v76;
  *(v35 + 3) = v36;
  v37 = v69;
  *(v35 + 4) = v68;
  v38 = *(v31 + 32);
  v77 = v31 + 32;
  v62 = v38;
  v63 = v35;
  (v38)(v35 + v32, v37);
  v39 = *(v58 + 32);
  v40 = v35 + v34;
  v41 = v75;
  v39(v40, v59, v75);
  v39(v71, v29, v41);
  v42 = v76;
  v61(v73, v70, v76);
  v43 = (v33 + 136) & ~v33;
  v44 = (v20 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  *(v45 + 2) = v42;
  *(v45 + 3) = v36;
  v46 = v68;
  *(v45 + 4) = v68;
  outlined init with take of PresentationSource(v65, v45 + 40);
  v39(v45 + v43, v71, v75);
  v47 = v73;
  *(v45 + v44) = v74;
  v48 = v62;
  v62(v45 + ((v30 + v44 + 8) & ~v30), v47, v42);
  v49 = v64;
  v48(v64, v70, v42);
  v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd) - 8);
  v51 = (*(v50 + 80) + 40) & ~*(v50 + 80);
  v52 = (*(v50 + 64) + v30 + v51) & ~v30;
  v53 = swift_allocObject();
  v54 = v72;
  *(v53 + 2) = v42;
  *(v53 + 3) = v54;
  *(v53 + 4) = v46;
  outlined init with take of URL?(v66, v53 + v51, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  result = (v48)(v53 + v52, v49, v42);
  v56 = v67;
  v57 = v63;
  *v67 = partial apply for closure #1 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:);
  v56[1] = v57;
  v56[2] = &async function pointer to partial apply for closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:);
  v56[3] = v45;
  v56[4] = &async function pointer to partial apply for closure #3 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:);
  v56[5] = v53;
  return result;
}

uint64_t static Actions.Download.action(context:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = a1[2];
  *(a2 + 48) = 1;
  *(a2 + 56) = closure #1 in static Actions.AddToLibrary.action(context:);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &async function pointer to closure #2 in static Actions.Download.action(context:);
  *(a2 + 88) = 0;
  *(a2 + 96) = &async function pointer to closure #3 in static Actions.Download.action(context:);
  *(a2 + 104) = 0;
}

uint64_t protocol witness for static ActionDefinition.action(context:) in conformance Actions.Download@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 40);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = v2;
  *(a2 + 48) = 1;
  *(a2 + 56) = closure #1 in static Actions.AddToLibrary.action(context:);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &async function pointer to closure #2 in static Actions.Download.action(context:);
  *(a2 + 88) = 0;
  *(a2 + 96) = &async function pointer to closure #3 in static Actions.Download.action(context:);
  *(a2 + 104) = 0;
}

unint64_t closure #1 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a2;
  v30 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVyAA8PlaylistV5EntryVGSgMd);
  __chkstk_darwin(v4 - 8);
  v6 = &v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVyAA8PlaylistV5EntryVGMd);
  v28 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistVSgMd);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v27 - v12;
  v14 = *(a3 - 8);
  __chkstk_darwin(v11);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Playlist();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v16, v30, a3);
  v21 = swift_dynamicCast();
  v22 = *(v18 + 56);
  if ((v21 & 1) == 0)
  {
    v22(v13, 1, 1, v17);
    v24 = &_s8MusicKit8PlaylistVSgMd;
    v25 = v13;
    goto LABEL_5;
  }

  v22(v13, 0, 1, v17);
  (*(v18 + 32))(v20, v13, v17);
  Playlist.entries.getter();
  v23 = v28;
  if ((*(v28 + 48))(v6, 1, v7) == 1)
  {
    (*(v18 + 8))(v20, v17);
    v24 = &_s8MusicKit0A14ItemCollectionVyAA8PlaylistV5EntryVGSgMd;
    v25 = v6;
LABEL_5:
    outlined destroy of TaskPriority?(v25, v24);
    return MusicLibrary.SupportedStatus<>.actionSupportedStatus.getter();
  }

  (*(v23 + 32))(v9, v6, v7);
  lazy protocol witness table accessor for type MusicItemCollection<Playlist.Entry> and conformance MusicItemCollection<A>();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v32 == v31)
  {
    (*(v23 + 8))(v9, v7);
    (*(v18 + 8))(v20, v17);
    return 0xD000000000000011;
  }

  (*(v23 + 8))(v9, v7);
  (*(v18 + 8))(v20, v17);
  return MusicLibrary.SupportedStatus<>.actionSupportedStatus.getter();
}

uint64_t sub_100067578()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE14DownloadActionVGMd);
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

unint64_t partial apply for closure #1 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)()
{
  v1 = *(v0 + 16);
  v2 = (*(*(v1 - 8) + 80) + 40) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE14DownloadActionVGMd) - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return closure #1 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(v0 + v2, v5, v1);
}

uint64_t closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[44] = a6;
  v7[45] = a7;
  v7[42] = a4;
  v7[43] = a5;
  v7[40] = a2;
  v7[41] = a3;
  v7[39] = a1;
  type metadata accessor for Locale();
  v7[46] = swift_task_alloc();
  v9 = type metadata accessor for String.LocalizationValue();
  v7[47] = v9;
  v7[48] = *(v9 - 8);
  v7[49] = swift_task_alloc();
  v7[50] = swift_task_alloc();
  v10 = *(a5 - 8);
  v7[51] = v10;
  v7[52] = *(v10 + 64);
  v7[53] = swift_task_alloc();
  v7[54] = swift_task_alloc();
  v11 = type metadata accessor for MusicLibrary.DownloadAction.UnsupportedReason();
  v7[55] = v11;
  v7[56] = *(v11 - 8);
  v7[57] = swift_task_alloc();
  v7[58] = swift_task_alloc();
  v7[59] = swift_task_alloc();
  v7[60] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE14DownloadActionVGMd);
  v7[61] = v12;
  v7[62] = *(v12 - 8);
  v7[63] = swift_task_alloc();
  v7[64] = swift_task_alloc();
  v7[65] = swift_task_alloc();

  return _swift_task_switch(closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:), 0, 0);
}

uint64_t closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)()
{
  v90 = v0;
  v1 = *(v0 + 520);
  v2 = *(v0 + 488);
  v3 = *(v0 + 496);
  v4 = *(v3 + 16);
  v4(v1, *(v0 + 320), v2);
  v5 = (*(v3 + 88))(v1, v2);
  if (v5 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    v6 = *(v0 + 520);
    v8 = *(v0 + 472);
    v7 = *(v0 + 480);
    v9 = *(v0 + 440);
    v10 = *(v0 + 448);
    (*(*(v0 + 496) + 96))(v6, *(v0 + 488));
    (*(v10 + 32))(v7, v6, v9);
    v11 = *(v10 + 16);
    v11(v8, v7, v9);
    if ((*(v10 + 88))(v8, v9) == enum case for MusicLibrary.DownloadAction.UnsupportedReason.cellularDataDisallowed(_:))
    {
      v12 = *(v0 + 312);
      v13 = swift_task_alloc();
      *(v0 + 528) = v13;
      *(v13 + 16) = v12;
      v14 = swift_task_alloc();
      *(v0 + 536) = v14;
      *v14 = v0;
      v14[1] = closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:);

      return withCheckedContinuation<A>(isolation:function:_:)(v0 + 600, 0, 0, 0xD00000000000001DLL, 0x80000001004C61C0, partial apply for closure #1 in cellularDataDisallowedAlert #1 <A>() in closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:), v13, &type metadata for Bool);
    }

    if (one-time initialization token for actions != -1)
    {
      swift_once();
    }

    v32 = *(v0 + 480);
    v33 = *(v0 + 464);
    v34 = *(v0 + 440);
    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static Logger.actions);
    v11(v33, v32, v34);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    v38 = os_log_type_enabled(v36, v37);
    v39 = *(v0 + 480);
    v40 = *(v0 + 464);
    if (v38)
    {
      v41 = *(v0 + 448);
      v42 = *(v0 + 456);
      v43 = *(v0 + 440);
      v87 = *(v0 + 480);
      v44 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v89 = v84;
      *v44 = 136315138;
      v11(v42, v40, v43);
      v45 = String.init<A>(describing:)();
      v47 = v46;
      v48 = *(v41 + 8);
      v48(v40, v43);
      v49 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v45, v47, &v89);

      *(v44 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v36, v37, "Couldn't download for reason: %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v84);

      v50 = v87;
    }

    else
    {
      v43 = *(v0 + 440);
      v63 = *(v0 + 448);

      v48 = *(v63 + 8);
      v48(v40, v43);
      v50 = v39;
    }

    v48(v50, v43);
    v48(*(v0 + 472), *(v0 + 440));
    goto LABEL_25;
  }

  if (v5 != enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    if (one-time initialization token for actions != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 512);
    v16 = *(v0 + 488);
    v17 = *(v0 + 320);
    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.actions);
    v4(v15, v17, v16);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.fault.getter();
    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 512);
    if (v21)
    {
      v86 = v20;
      v23 = *(v0 + 496);
      v24 = *(v0 + 504);
      v25 = *(v0 + 488);
      v26 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v89 = v83;
      *v26 = 136315138;
      v4(v24, v22, v25);
      v27 = String.init<A>(describing:)();
      v29 = v28;
      v30 = *(v23 + 8);
      v30(v22, v25);
      v31 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v27, v29, &v89);

      *(v26 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v19, v86, "Unknown status=%s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v83);

      v30(*(v0 + 520), *(v0 + 488));
    }

    else
    {
      v51 = *(v0 + 488);
      v52 = *(v0 + 496);

      v53 = *(v52 + 8);
      v53(v22, v51);
      v53(*(v0 + 520), *(v0 + 488));
    }
  }

  v54 = *(*(v0 + 408) + 16);
  v54(*(v0 + 432), *(v0 + 336), *(v0 + 344));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore21AudioVariantProviding_pMd);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 304) = 0;
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0u;
    outlined destroy of TaskPriority?(v0 + 272, &_s9MusicCore21AudioVariantProviding_pSgMd);
    goto LABEL_22;
  }

  outlined init with take of ActionPerforming((v0 + 272), v0 + 232);
  v56 = *(v0 + 256);
  v55 = *(v0 + 264);
  __swift_project_boxed_opaque_existential_0Tm((v0 + 232), v56);
  if (!AudioVariantProviding.supportsDolbyPlayback.getter(v56, v55) || (v57 = [objc_opt_self() standardUserDefaults], v58 = objc_msgSend(v57, "prefersSpatialDownloads"), v57, (v58 & 1) != 0) || (v59 = objc_opt_self(), *(v0 + 544) = v59, v60 = objc_msgSend(v59, "standardUserDefaults"), v61 = String._bridgeToObjectiveC()(), v62 = objc_msgSend(v60, "BOOLForKey:", v61), v61, v60, (v62 & 1) != 0))
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 232);
LABEL_22:
    kickOffDownload #1 <A>() in closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(*(v0 + 328), *(v0 + 336), *(v0 + 344), *(v0 + 352), *(v0 + 360));
LABEL_25:

    v64 = *(v0 + 8);

    return v64();
  }

  v65 = *(v0 + 392);
  v66 = *(v0 + 400);
  v67 = *(v0 + 376);
  v68 = *(v0 + 384);
  String.LocalizationValue.init(stringLiteral:)();
  (*(v68 + 16))(v65, v66, v67);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v70 = *(v0 + 400);
  v69 = *(v0 + 408);
  v71 = *(v0 + 384);
  v72 = *(v0 + 376);
  v85 = *(v0 + 360);
  v80 = *(v0 + 336);
  v81 = *(v0 + 424);
  v82 = *(v0 + 328);
  v73 = static NSBundle.module;
  v88 = *(v0 + 344);
  static Locale.current.getter();
  *(v0 + 552) = String.init(localized:table:bundle:locale:comment:)();
  *(v0 + 560) = v74;
  (*(v71 + 8))(v70, v72);
  v54(v81, v80, v88);
  v75 = (*(v69 + 80) + 48) & ~*(v69 + 80);
  v76 = swift_allocObject();
  *(v0 + 568) = v76;
  *(v76 + 16) = v88;
  *(v76 + 32) = v85;
  *(v76 + 40) = v82;
  (*(v69 + 32))(v76 + v75, v81, v88);
  *(v0 + 576) = type metadata accessor for MainActor();

  *(v0 + 584) = static MainActor.shared.getter();
  v78 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:), v78, v77);
}

{

  return _swift_task_switch(closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:), 0, 0);
}

{
  v1 = *(v0 + 600);
  if (one-time initialization token for actions != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.actions);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v1;
    _os_log_impl(&_mh_execute_header, v3, v4, "Cellular data enablement: %{BOOL}d", v5, 8u);
  }

  v6 = *(v0 + 480);
  v7 = *(v0 + 440);
  v8 = *(v0 + 448);

  (*(v8 + 8))(v6, v7);
  if (!v1)
  {
    goto LABEL_13;
  }

  v9 = *(*(v0 + 408) + 16);
  v9(*(v0 + 432), *(v0 + 336), *(v0 + 344));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore21AudioVariantProviding_pMd);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 304) = 0;
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0u;
    outlined destroy of TaskPriority?(v0 + 272, &_s9MusicCore21AudioVariantProviding_pSgMd);
    goto LABEL_12;
  }

  outlined init with take of ActionPerforming((v0 + 272), v0 + 232);
  v11 = *(v0 + 256);
  v10 = *(v0 + 264);
  __swift_project_boxed_opaque_existential_0Tm((v0 + 232), v11);
  if (!AudioVariantProviding.supportsDolbyPlayback.getter(v11, v10) || (v12 = [objc_opt_self() standardUserDefaults], v13 = objc_msgSend(v12, "prefersSpatialDownloads"), v12, (v13 & 1) != 0) || (v14 = objc_opt_self(), *(v0 + 544) = v14, v15 = objc_msgSend(v14, "standardUserDefaults"), v16 = String._bridgeToObjectiveC()(), v17 = objc_msgSend(v15, "BOOLForKey:", v16), v16, v15, (v17 & 1) != 0))
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 232);
LABEL_12:
    kickOffDownload #1 <A>() in closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(*(v0 + 328), *(v0 + 336), *(v0 + 344), *(v0 + 352), *(v0 + 360));
LABEL_13:

    v18 = *(v0 + 8);

    return v18();
  }

  v20 = *(v0 + 392);
  v21 = *(v0 + 400);
  v22 = *(v0 + 376);
  v23 = *(v0 + 384);
  String.LocalizationValue.init(stringLiteral:)();
  (*(v23 + 16))(v20, v21, v22);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v25 = *(v0 + 400);
  v24 = *(v0 + 408);
  v26 = *(v0 + 384);
  v27 = *(v0 + 376);
  v37 = *(v0 + 360);
  v34 = *(v0 + 336);
  v35 = *(v0 + 424);
  v36 = *(v0 + 328);
  v28 = static NSBundle.module;
  v38 = *(v0 + 344);
  static Locale.current.getter();
  *(v0 + 552) = String.init(localized:table:bundle:locale:comment:)();
  *(v0 + 560) = v29;
  (*(v26 + 8))(v25, v27);
  v9(v35, v34, v38);
  v30 = (*(v24 + 80) + 48) & ~*(v24 + 80);
  v31 = swift_allocObject();
  *(v0 + 568) = v31;
  *(v31 + 16) = v38;
  *(v31 + 32) = v37;
  *(v31 + 40) = v36;
  (*(v24 + 32))(v31 + v30, v35, v38);
  *(v0 + 576) = type metadata accessor for MainActor();

  *(v0 + 584) = static MainActor.shared.getter();
  v33 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:), v33, v32);
}

{
  v1 = v0[71];
  v2 = v0[70];
  v3 = v0[69];

  specialized static Alert.dolbyAtmosDownloadsAlert(message:completion:)(v3, v2, &async function pointer to partial apply for closure #1 in closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:), v1, (v0 + 14));

  return _swift_task_switch(closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:), 0, 0);
}

{
  *(v0 + 592) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:), v2, v1);
}

{
  v1 = *(v0 + 312);

  v2 = specialized static UIAlertController.alertController(with:overrideStyle:)(v0 + 112, 0, 1);
  v3 = v2;
  v4 = *(v0 + 144);
  v5 = *(v1 + 80);
  if (v5)
  {
    v6 = one-time initialization token for logger;

    if (v6 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static PresentationSource.logger);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Deferring presentation…", v10, 2u);
    }

    v11 = *(v0 + 312);

    v12 = objc_allocWithZone(MSVBlockGuard);
    *(v0 + 216) = closure #1 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:);
    *(v0 + 224) = 0;
    *(v0 + 184) = _NSConcreteStackBlock;
    *(v0 + 192) = 1107296256;
    *(v0 + 200) = thunk for @escaping @callee_guaranteed (@unowned MSVBlockGuardInterruptionReason) -> ();
    *(v0 + 208) = &block_descriptor_4;
    v13 = _Block_copy((v0 + 184));
    v14 = [v12 initWithTimeout:v13 interruptionHandler:10.0];
    _Block_release(v13);

    outlined init with copy of PresentationSource(v11, v0 + 16);
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    outlined init with take of PresentationSource(v0 + 16, v15 + 24);
    *(v15 + 120) = v3;
    *(v15 + 128) = v4;
    *(v15 + 129) = 1;
    *(v15 + 136) = 0;
    *(v15 + 144) = 0;
    v16 = v14;
    v3 = v3;
    v5(v11, v3, _s9MusicCore18PresentationSourceV7present_019wantsAutomaticModalC5Style8animated10completionySo16UIViewControllerC_S2byycSgtFyycfU0_TA_0, v15);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v5);
  }

  else
  {
    PresentationSource._present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v2, *(v0 + 144), 1, 0, 0);
  }

  return _swift_task_switch(closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:), 0, 0);
}

{
  v1 = [*(v0 + 544) standardUserDefaults];
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v3 = String._bridgeToObjectiveC()();
  [v1 setValue:isa forKey:v3];

  outlined destroy of Alert(v0 + 112);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 232);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100069520()
{
  v1 = *(v0 + 16);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE14DownloadActionVGMd);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(v1 - 8);
  v7 = *(v6 + 80);
  swift_unknownObjectWeakDestroy();
  v8 = *(v0 + 88);
  if (v8 != 255)
  {
    outlined consume of PresentationSource.Position.Source(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), v8);
  }

  if (*(v0 + 104))
  {
  }

  if (*(v0 + 120))
  {
  }

  v9 = (v4 + 136) & ~v4;
  v10 = (((v5 + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & ~v7;
  (*(v3 + 8))(v0 + v9, v2);

  (*(v6 + 8))(v0 + v10, v1);

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)()
{
  v3 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE14DownloadActionVGMd) - 8);
  v6 = (*(v5 + 80) + 136) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + *(*(v3 - 8) + 80) + 8) & ~*(*(v3 - 8) + 80);
  v9 = *(v0 + v7);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)((v0 + 5), v0 + v6, v9, v0 + v8, v3, v2, v4);
}

uint64_t closure #1 in cellularDataDisallowedAlert #1 <A>() in closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0);
  __chkstk_darwin(v9 - 8);
  v11 = &v18[-v10];
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  (*(v5 + 16))(v8, a1, v4);
  outlined init with copy of PresentationSource(a2, v18);
  type metadata accessor for MainActor();
  v13 = static MainActor.shared.getter();
  v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v15 = (v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  *(v16 + 24) = &protocol witness table for MainActor;
  (*(v5 + 32))(v16 + v14, v8, v4);
  outlined init with take of PresentationSource(v18, v16 + v15);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v11, &async function pointer to partial apply for closure #1 in closure #1 in cellularDataDisallowedAlert #1 <A>() in closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:), v16);
}

uint64_t closure #1 in closure #1 in cellularDataDisallowedAlert #1 <A>() in closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[29] = a4;
  v5[30] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd);
  v5[31] = v6;
  v7 = *(v6 - 8);
  v5[32] = v7;
  v5[33] = *(v7 + 64);
  v5[34] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[35] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in closure #1 in cellularDataDisallowedAlert #1 <A>() in closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:), v9, v8);
}

uint64_t closure #1 in closure #1 in cellularDataDisallowedAlert #1 <A>() in closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)()
{

  if (one-time initialization token for actions != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.actions);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Will present cellular data enablement alert", v4, 2u);
  }

  v5 = *(v0 + 272);
  v6 = *(v0 + 248);
  v7 = *(v0 + 256);
  v8 = *(v0 + 232);
  v9 = *(v0 + 240);

  (*(v7 + 16))(v5, v8, v6);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  (*(v7 + 32))(v11 + v10, v5, v6);
  specialized static Alert.cellularDataDisallowedAlert(_:)(partial apply for closure #1 in closure #1 in closure #1 in cellularDataDisallowedAlert #1 <A>() in closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:), v11, (v0 + 112));

  v12 = specialized static UIAlertController.alertController(with:overrideStyle:)(v0 + 112, 0, 1);
  v13 = v12;
  v14 = *(v0 + 144);
  v15 = *(v9 + 80);
  if (v15)
  {
    v16 = one-time initialization token for logger;

    if (v16 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v1, static PresentationSource.logger);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Deferring presentation…", v19, 2u);
    }

    v20 = *(v0 + 240);

    v21 = objc_allocWithZone(MSVBlockGuard);
    *(v0 + 216) = closure #1 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:);
    *(v0 + 224) = 0;
    *(v0 + 184) = _NSConcreteStackBlock;
    *(v0 + 192) = 1107296256;
    *(v0 + 200) = thunk for @escaping @callee_guaranteed (@unowned MSVBlockGuardInterruptionReason) -> ();
    *(v0 + 208) = &block_descriptor_56;
    v22 = _Block_copy((v0 + 184));
    v23 = [v21 initWithTimeout:v22 interruptionHandler:10.0];
    _Block_release(v22);

    outlined init with copy of PresentationSource(v20, v0 + 16);
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    outlined init with take of PresentationSource(v0 + 16, v24 + 24);
    *(v24 + 120) = v13;
    *(v24 + 128) = v14;
    *(v24 + 129) = 1;
    *(v24 + 136) = 0;
    *(v24 + 144) = 0;
    v25 = v23;
    v13 = v13;
    v15(v20, v13, closure #2 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)partial apply, v24);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v15);
  }

  else
  {
    PresentationSource._present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v12, *(v0 + 144), 1, 0, 0);
  }

  outlined destroy of Alert(v0 + 112);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t kickOffDownload #1 <A>() in closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(a1);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0);
  __chkstk_darwin(v13 - 8);
  v15 = &v20 - v14;
  static TaskPriority.userInitiated.getter();
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
  (*(v10 + 16))(v12, a2, a3);
  v17 = (*(v10 + 80) + 64) & ~*(v10 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  *(v18 + 4) = a3;
  *(v18 + 5) = a4;
  *(v18 + 6) = a5;
  *(v18 + 7) = a1;
  (*(v10 + 32))(&v18[v17], v12, a3);

  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v15, &async function pointer to partial apply for closure #1 in kickOffDownload #1 <A>() in closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:), v18);

  return outlined destroy of TaskPriority?(v15, &_sScPSgMd_0);
}

uint64_t closure #1 in kickOffDownload #1 <A>() in closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a5;
  v7[4] = a6;
  v7[5] = *(a6 - 8);
  v7[6] = swift_task_alloc();
  v7[7] = swift_task_alloc();
  v11 = swift_task_alloc();
  v7[8] = v11;
  *v11 = v7;
  v11[1] = closure #1 in kickOffDownload #1 <A>() in closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:);

  return MusicLibrary.download<A>(_:)(a5, a6, a7);
}

uint64_t closure #1 in kickOffDownload #1 <A>() in closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return _swift_task_switch(closure #1 in kickOffDownload #1 <A>() in closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

{
  v29 = v0;
  if (one-time initialization token for actions != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[3];
  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.actions);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[9];
  v11 = v0[7];
  if (v9)
  {
    v27 = v8;
    v12 = v0[5];
    v13 = v0[6];
    v14 = v0[4];
    v15 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v15 = 136446466;
    v6(v13, v11, v14);
    v16 = String.init<A>(describing:)();
    v18 = v17;
    (*(v12 + 8))(v11, v14);
    v19 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v16, v18, &v28);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2082;
    v0[2] = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v20 = String.init<A>(describing:)();
    v22 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v20, v21, &v28);

    *(v15 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v7, v27, "Download failed to item=%{public}s with error=%{public}s", v15, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v23 = v0[4];
    v24 = v0[5];

    (*(v24 + 8))(v11, v23);
  }

  v25 = v0[1];

  return v25();
}

uint64_t closure #1 in closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a3;
  v6[4] = a4;
  v6[2] = a2;
  return _swift_task_switch(closure #1 in closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:), 0, 0);
}

uint64_t closure #1 in closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)()
{
  kickOffDownload #1 <A>() in closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(v0[2], v0[3], v0[4], v0[5], v0[6]);
  v1 = v0[1];

  return v1();
}

uint64_t closure #3 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore12MetricsEventV4PageVSgMd);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = type metadata accessor for MetricsEvent.Click(0);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  v4[27] = swift_task_alloc();
  v5 = type metadata accessor for Actions.MetricsReportingContext();
  v4[28] = v5;
  v4[29] = *(v5 - 8);
  v4[30] = swift_task_alloc();

  return _swift_task_switch(closure #3 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:), 0, 0);
}

uint64_t closure #3 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  outlined init with copy of TaskPriority?(*(v0 + 72), v3, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 216), &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 208);
    v7 = *(v0 + 88);
    outlined init with take of Actions.MetricsReportingContext(*(v0 + 216), *(v0 + 240), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 248) = MusicItem.metricsTargetIdentifier.getter(v7);
    *(v0 + 256) = v8;
    v9 = type metadata accessor for URL();
    *(v0 + 264) = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    *(v0 + 272) = v11;
    *(v0 + 280) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v6, 1, 1, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore12MetricsEventV5ClickV13ActionDetailsO3KeyOGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004F2400;
    *(inited + 32) = MusicItem.metricsContentType.getter(v7);
    *(inited + 40) = v13;
    *(inited + 48) = 0;
    *(v0 + 288) = specialized MetricsEvent.Click.ActionDetails.init(_:)(inited);
    *(v0 + 296) = v14;
    *(v0 + 304) = v15;
    *(v0 + 320) = v16;
    swift_setDeallocating();
    outlined destroy of MetricsEvent.Click.ActionDetails.Key(inited + 32);
    type metadata accessor for MainActor();
    *(v0 + 312) = static MainActor.shared.getter();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(closure #3 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:), v18, v17);
  }
}

{
  v80 = *(v0 + 320);
  v73 = *(v0 + 288);
  v76 = *(v0 + 256);
  v78 = *(v0 + 304);
  v74 = *(v0 + 248);
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 168);
  v6 = *(v0 + 176);
  v7 = *(v0 + 160);
  v72 = *(v0 + 152);

  outlined init with copy of TaskPriority?(v3, v4, &_s10Foundation3URLVSgMd);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  outlined init with copy of TaskPriority?(v1 + v2[5], v7, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 3589;
  outlined init with take of URL?(v4, v6 + v5[7], &_s10Foundation3URLVSgMd);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  outlined init with copy of TaskPriority?(v7, v72, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 320);
  v17 = *(v0 + 296);
  v18 = *(v0 + 304);
  v19 = *(v0 + 288);
  v20 = *(v0 + 152);
  if (v15 == 1)
  {

    outlined copy of MetricsEvent.Click.ActionContext?(v75, v77);

    outlined copy of MetricsEvent.Click.ActionDetails(v19, v17, v18, v16, SBYTE1(v16));
    outlined destroy of TaskPriority?(v20, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    outlined copy of MetricsEvent.Click.ActionContext?(v75, v77);

    outlined copy of MetricsEvent.Click.ActionDetails(v19, v17, v18, v16, SBYTE1(v16));

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 160);
  v24 = *(v0 + 144);
  v25 = (*(v0 + 176) + *(*(v0 + 168) + 48));
  *v25 = v21;
  v25[1] = v22;
  outlined init with copy of TaskPriority?(v23, v24, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 144);
  if (v26 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 144), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 160);
  v31 = *(v0 + 136);
  v32 = (*(v0 + 176) + *(*(v0 + 168) + 52));
  *v32 = v28;
  v32[1] = v29;
  outlined init with copy of TaskPriority?(v30, v31, &_s9MusicCore12MetricsEventV4PageVSgMd);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 272);
    v34 = *(v0 + 264);
    v35 = *(v0 + 192);
    outlined destroy of TaskPriority?(*(v0 + 136), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 136);
    outlined init with copy of TaskPriority?(v36 + v14[6], *(v0 + 192), &_s10Foundation3URLVSgMd);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 160);
  v38 = *(v0 + 128);
  outlined init with take of URL?(*(v0 + 192), *(v0 + 176) + *(*(v0 + 168) + 56), &_s10Foundation3URLVSgMd);
  outlined init with copy of TaskPriority?(v37, v38, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 128);
  if (v39 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 128), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 160);
  v43 = *(v0 + 120);
  *(*(v0 + 176) + *(*(v0 + 168) + 60)) = v41;
  outlined init with copy of TaskPriority?(v42, v43, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 120);
  if (v44 == 1)
  {
    outlined destroy of TaskPriority?(v45, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 160);
  v48 = *(v0 + 112);
  *(*(v0 + 176) + *(*(v0 + 168) + 64)) = v46;
  outlined init with copy of TaskPriority?(v47, v48, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 112);
  if (v49 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 112), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 160);
  v55 = *(v0 + 104);
  v56 = (*(v0 + 176) + *(*(v0 + 168) + 72));
  *v56 = v51;
  v56[1] = v52;
  outlined init with take of URL?(v54, v55, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 104);
  if (v57 == 1)
  {
    outlined destroy of TaskPriority?(v58, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 176);
  v61 = *(v0 + 184);
  v62 = *(v0 + 168);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  outlined init with take of Actions.MetricsReportingContext(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 296);
  v63 = *(v0 + 304);
  v65 = *(v0 + 288);
  v66 = *(v0 + 240);
  v67 = *(v0 + 224);
  v68 = *(v0 + 208);
  v69 = *(v0 + 184);
  v70 = *(v0 + 320);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  outlined consume of MetricsEvent.Click.ActionDetails(v65, v64, v63, v70, SBYTE1(v70));
  _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v69, type metadata accessor for MetricsEvent.Click);
  outlined destroy of TaskPriority?(v68, &_s10Foundation3URLVSgMd);

  return _swift_task_switch(closure #5 in Actions.DeleteOrRemoveDownload.Context.init<A>(item:library:presentationSource:metricsReportingContext:), 0, 0);
}

uint64_t sub_10006B3F4()
{
  v1 = *(v0 + 16);
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd) - 8);
  v3 = *(v2 + 64);
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v5 = *(v1 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v4;
  v8 = type metadata accessor for Actions.MetricsReportingContext();
  if (!(*(*(v8 - 8) + 48))(v0 + v4, 1, v8))
  {
    v16 = v3;
    if (*(v7 + 8) >= 0xDuLL)
    {
    }

    v9 = v7 + *(v8 + 20);
    v10 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {

      v15 = *(v10 + 24);
      v11 = type metadata accessor for URL();
      v13 = *(v11 - 8);
      v14 = v11;
      if (!(*(v13 + 48))(v9 + v15, 1))
      {
        (*(v13 + 8))(v9 + v15, v14);
      }
    }

    v3 = v16;
  }

  (*(v5 + 8))(v0 + ((v4 + v3 + v6) & ~v6), v1);

  return swift_deallocObject();
}

uint64_t partial apply for closure #3 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #3 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(v0 + v5, v0 + v6, v2, v3);
}

uint64_t Actions.Download.Context.menuItemTitle.getter()
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

uint64_t (*Actions.Download.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000011;
  *(v0 + 24) = 0x80000001004C60B0;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000011;
  *(v1 + 24) = 0x80000001004C60B0;
  return _s9MusicCore19ActionMenuItemImageV10systemNameACSS_tcfc7SwiftUI0F0VSgyYbcfU_TA_0;
}

uint64_t sub_10006BA80()
{

  return swift_deallocObject();
}

uint64_t (*Actions.Download.Context.menuItemCompactStyleImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000016;
  *(v0 + 24) = 0x80000001004C60D0;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000016;
  *(v1 + 24) = 0x80000001004C60D0;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

uint64_t (*protocol witness for ActionMenuItemConfiguring.menuItemImage.getter in conformance Actions.Download.Context())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000011;
  *(v0 + 24) = 0x80000001004C60B0;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000011;
  *(v1 + 24) = 0x80000001004C60B0;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

uint64_t (*protocol witness for ActionMenuItemConfiguring.menuItemCompactStyleImage.getter in conformance Actions.Download.Context())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000016;
  *(v0 + 24) = 0x80000001004C60D0;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000016;
  *(v1 + 24) = 0x80000001004C60D0;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

uint64_t sub_10006BCB8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = (*(*(v4 - 8) + 80) + 48) & ~*(*(v4 - 8) + 80);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(a1, v7, v1 + v8, v4, v5, v6);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10006BE90()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  v5 = v0 + v4;
  swift_unknownObjectWeakDestroy();
  v6 = *(v0 + v4 + 48);
  if (v6 != 255)
  {
    outlined consume of PresentationSource.Position.Source(*(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), v6);
  }

  if (*(v5 + 64))
  {
  }

  if (*(v5 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in cellularDataDisallowedAlert #1 <A>() in closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in closure #1 in cellularDataDisallowedAlert #1 <A>() in closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(a1, v7, v8, v1 + v5, v1 + v6);
}

uint64_t sub_10006C0DC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in cellularDataDisallowedAlert #1 <A>() in closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_10006C214()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in kickOffDownload #1 <A>() in closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[7];
  v7 = (*(*(v4 - 8) + 80) + 64) & ~*(*(v4 - 8) + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #1 in kickOffDownload #1 <A>() in closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(a1, v8, v9, v6, v1 + v7, v4, v5);
}

unint64_t lazy protocol witness table accessor for type MusicItemCollection<Playlist.Entry> and conformance MusicItemCollection<A>()
{
  result = lazy protocol witness table cache variable for type MusicItemCollection<Playlist.Entry> and conformance MusicItemCollection<A>;
  if (!lazy protocol witness table cache variable for type MusicItemCollection<Playlist.Entry> and conformance MusicItemCollection<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s8MusicKit0A14ItemCollectionVyAA8PlaylistV5EntryVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MusicItemCollection<Playlist.Entry> and conformance MusicItemCollection<A>);
  }

  return result;
}

uint64_t Actions.EditPlaylist.Context.playlist.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Playlist();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Actions.EditPlaylist.Context.playlist.setter(uint64_t a1)
{
  v3 = type metadata accessor for Playlist();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Actions.EditPlaylist.Context.presentEditPlaylistView.getter()
{
  v1 = *(v0 + *(type metadata accessor for Actions.EditPlaylist.Context() + 20));

  return v1;
}

uint64_t type metadata accessor for Actions.EditPlaylist.Context()
{
  result = type metadata singleton initialization cache for Actions.EditPlaylist.Context;
  if (!type metadata singleton initialization cache for Actions.EditPlaylist.Context)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Actions.EditPlaylist.Context.presentEditPlaylistView.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Actions.EditPlaylist.Context() + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Actions.EditPlaylist.Context.finish.getter()
{
  v1 = *(v0 + *(type metadata accessor for Actions.EditPlaylist.Context() + 24));

  return v1;
}

uint64_t Actions.EditPlaylist.Context.finish.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Actions.EditPlaylist.Context() + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Actions.EditPlaylist.Context.init(playlist:presentEditPlaylistView:metricsReportingContext:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v24 = a4;
  v9 = type metadata accessor for Playlist();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(a5, a1, v9);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  v14 = type metadata accessor for Actions.EditPlaylist.Context();
  v15 = (a5 + *(v14 + 20));
  *v15 = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable () -> () with global actor constraint MainActor;
  v15[1] = v13;
  v16 = *(v10 + 32);
  v16(v12, a1, v9);
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd) - 8);
  v18 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v19 = (v18 + *(v17 + 64) + *(v10 + 80)) & ~*(v10 + 80);
  v20 = swift_allocObject();
  outlined init with take of URL?(v24, v20 + v18, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  result = v16(v20 + v19, v12, v9);
  v22 = (a5 + *(v14 + 24));
  *v22 = &async function pointer to partial apply for closure #1 in Actions.EditPlaylist.Context.init(playlist:presentEditPlaylistView:metricsReportingContext:);
  v22[1] = v20;
  return result;
}

uint64_t sub_10006C95C()
{

  return swift_deallocObject();
}

uint64_t closure #1 in Actions.EditPlaylist.Context.init(playlist:presentEditPlaylistView:metricsReportingContext:)(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore12MetricsEventV4PageVSgMd);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = type metadata accessor for MetricsEvent.Click(0);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  v2[30] = swift_task_alloc();
  v3 = type metadata accessor for Actions.MetricsReportingContext();
  v2[31] = v3;
  v2[32] = *(v3 - 8);
  v2[33] = swift_task_alloc();

  return _swift_task_switch(closure #1 in Actions.EditPlaylist.Context.init(playlist:presentEditPlaylistView:metricsReportingContext:), 0, 0);
}

uint64_t closure #1 in Actions.EditPlaylist.Context.init(playlist:presentEditPlaylistView:metricsReportingContext:)()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);
  v3 = *(v0 + 240);
  outlined init with copy of TaskPriority?(*(v0 + 112), v3, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 240), &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 232);
    outlined init with take of Actions.MetricsReportingContext(*(v0 + 240), *(v0 + 264), type metadata accessor for Actions.MetricsReportingContext);
    v7 = Playlist.catalogID.getter();
    *(v0 + 272) = v8;
    *(v0 + 280) = v7;
    v9 = type metadata accessor for URL();
    *(v0 + 288) = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    *(v0 + 296) = v11;
    *(v0 + 304) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v6, 1, 1, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore12MetricsEventV5ClickV13ActionDetailsO3KeyOGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004F2400;
    *(v0 + 104) = type metadata accessor for Playlist();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistVmMd);
    v13 = String.init<A>(describing:)();
    v15 = v14;
    specialized Collection.prefix(_:)(1);
    v16 = Substring.lowercased()();

    v17 = specialized Collection.dropFirst(_:)(1uLL, v13, v15);
    v19 = v18;
    v21 = v20;
    v23 = v22;

    *(v0 + 72) = v17;
    *(v0 + 80) = v19;
    *(v0 + 88) = v21;
    *(v0 + 96) = v23;
    lazy protocol witness table accessor for type Substring and conformance Substring();
    String.append<A>(contentsOf:)();

    *(inited + 32) = v16;
    *(inited + 48) = 0;
    *(v0 + 312) = specialized MetricsEvent.Click.ActionDetails.init(_:)(inited);
    *(v0 + 320) = v24;
    *(v0 + 328) = v25;
    *(v0 + 344) = v26;
    swift_setDeallocating();
    outlined destroy of MetricsEvent.Click.ActionDetails.Key(inited + 32);
    type metadata accessor for MainActor();
    *(v0 + 336) = static MainActor.shared.getter();
    v28 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(closure #1 in Actions.EditPlaylist.Context.init(playlist:presentEditPlaylistView:metricsReportingContext:), v28, v27);
  }
}

{
  v85 = *(v0 + 344);
  v83 = *(v0 + 328);
  v78 = *(v0 + 312);
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v3 = *(v0 + 264);
  v4 = *(v0 + 248);
  v5 = *(v0 + 224);
  v6 = *(v0 + 232);
  v79 = v5;
  v7 = *(v0 + 192);
  v8 = *(v0 + 200);
  v9 = *(v0 + 184);
  v77 = *(v0 + 176);

  v10 = 0xEB000000006D6574;
  if (v2)
  {
    v10 = v2;
  }

  v80 = v10;
  if (!v2)
  {
    v1 = 0x497972617262694CLL;
  }

  outlined init with copy of TaskPriority?(v6, v5, &_s10Foundation3URLVSgMd);
  v11 = *(v3 + v4[7]);
  v13 = *v3;
  v12 = v3[1];
  outlined init with copy of TaskPriority?(v3 + v4[5], v9, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v82 = *(v3 + v4[8]);
  *(v8 + v7[19]) = 0;
  v14 = (v8 + v7[20]);
  *v14 = 0;
  v14[1] = 0;
  *v8 = v1;
  *(v8 + 8) = v80;
  *(v8 + 16) = 5125;
  outlined init with take of URL?(v79, v8 + v7[7], &_s10Foundation3URLVSgMd);
  v81 = v12;
  *(v8 + v7[8]) = v11;
  v15 = (v8 + v7[9]);
  *v15 = v13;
  v15[1] = v12;
  v16 = v8 + v7[10];
  *v16 = v78;
  *(v16 + 16) = v83;
  *(v16 + 24) = v85;
  outlined init with copy of TaskPriority?(v9, v77, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v17 = type metadata accessor for MetricsEvent.Page(0);
  v84 = *(*(v17 - 1) + 48);
  v18 = v84(v77, 1, v17);
  v19 = *(v0 + 344);
  v20 = *(v0 + 320);
  v21 = *(v0 + 328);
  v22 = *(v0 + 312);
  v23 = *(v0 + 176);
  if (v18 == 1)
  {

    outlined copy of MetricsEvent.Click.ActionContext?(v13, v81);
    v24 = v82;

    outlined copy of MetricsEvent.Click.ActionDetails(v22, v20, v21, v19, SBYTE1(v19));
    outlined destroy of TaskPriority?(v23, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v25 = 0;
    v26 = 0;
  }

  else
  {
    v25 = *v23;
    v26 = v23[1];

    outlined copy of MetricsEvent.Click.ActionContext?(v13, v81);
    v24 = v82;

    outlined copy of MetricsEvent.Click.ActionDetails(v22, v20, v21, v19, SBYTE1(v19));

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v23, type metadata accessor for MetricsEvent.Page);
  }

  v27 = *(v0 + 184);
  v28 = *(v0 + 168);
  v29 = (*(v0 + 200) + *(*(v0 + 192) + 48));
  *v29 = v25;
  v29[1] = v26;
  outlined init with copy of TaskPriority?(v27, v28, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v30 = v84(v28, 1, v17);
  v31 = *(v0 + 168);
  if (v30 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 168), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v32 = 0;
    v33 = 0;
  }

  else
  {
    v32 = *(v31 + 16);
    v33 = *(v31 + 24);

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v31, type metadata accessor for MetricsEvent.Page);
  }

  v34 = *(v0 + 184);
  v35 = *(v0 + 160);
  v36 = (*(v0 + 200) + *(*(v0 + 192) + 52));
  *v36 = v32;
  v36[1] = v33;
  outlined init with copy of TaskPriority?(v34, v35, &_s9MusicCore12MetricsEventV4PageVSgMd);
  if (v84(v35, 1, v17) == 1)
  {
    v37 = v24;
    v38 = *(v0 + 296);
    v39 = *(v0 + 288);
    v40 = *(v0 + 216);
    outlined destroy of TaskPriority?(*(v0 + 160), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v38(v40, 1, 1, v39);
    v24 = v37;
  }

  else
  {
    v41 = *(v0 + 160);
    outlined init with copy of TaskPriority?(v41 + v17[6], *(v0 + 216), &_s10Foundation3URLVSgMd);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v41, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 184);
  v43 = *(v0 + 152);
  outlined init with take of URL?(*(v0 + 216), *(v0 + 200) + *(*(v0 + 192) + 56), &_s10Foundation3URLVSgMd);
  outlined init with copy of TaskPriority?(v42, v43, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v44 = v84(v43, 1, v17);
  v45 = *(v0 + 152);
  if (v44 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 152), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v46 = 0;
  }

  else
  {
    v46 = *(v45 + v17[7]);

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 184);
  v48 = *(v0 + 144);
  *(*(v0 + 200) + *(*(v0 + 192) + 60)) = v46;
  outlined init with copy of TaskPriority?(v47, v48, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v49 = v84(v48, 1, v17);
  v50 = *(v0 + 144);
  if (v49 == 1)
  {
    outlined destroy of TaskPriority?(v50, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v51 = 1;
  }

  else
  {
    v51 = *(v50 + v17[9]);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v50, type metadata accessor for MetricsEvent.Page);
  }

  v52 = *(v0 + 184);
  v53 = *(v0 + 136);
  *(*(v0 + 200) + *(*(v0 + 192) + 64)) = v51;
  outlined init with copy of TaskPriority?(v52, v53, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v54 = v84(v53, 1, v17);
  v55 = *(v0 + 136);
  if (v54 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 136), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v56 = 0;
    v57 = 0;
  }

  else
  {
    v58 = (v55 + v17[8]);
    v56 = *v58;
    v57 = v58[1];

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v55, type metadata accessor for MetricsEvent.Page);
  }

  v59 = *(v0 + 184);
  v60 = *(v0 + 128);
  v61 = (*(v0 + 200) + *(*(v0 + 192) + 72));
  *v61 = v56;
  v61[1] = v57;
  outlined init with take of URL?(v59, v60, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v62 = v84(v60, 1, v17);
  v63 = *(v0 + 128);
  if (v62 == 1)
  {
    outlined destroy of TaskPriority?(v63, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v64 = 2;
  }

  else
  {
    v64 = *(v63 + v17[11]);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v63, type metadata accessor for MetricsEvent.Page);
  }

  v65 = *(v0 + 200);
  v66 = *(v0 + 208);
  v67 = *(v0 + 192);
  *(v65 + *(v67 + 68)) = v64;
  *(v65 + *(v67 + 44)) = v24;
  outlined init with take of Actions.MetricsReportingContext(v65, v66, type metadata accessor for MetricsEvent.Click);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v69 = *(v0 + 320);
  v68 = *(v0 + 328);
  v70 = *(v0 + 312);
  v71 = *(v0 + 264);
  v72 = *(v0 + 248);
  v73 = *(v0 + 232);
  v74 = *(v0 + 208);
  v75 = *(v0 + 344);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v74, *(v71 + *(v72 + 24)), *(v71 + *(v72 + 24) + 8), *(v71 + *(v72 + 36)), *(v71 + *(v72 + 36) + 8), *(v71 + *(v72 + 36) + 16));
  outlined consume of MetricsEvent.Click.ActionDetails(v70, v69, v68, v75, SBYTE1(v75));
  _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v74, type metadata accessor for MetricsEvent.Click);
  outlined destroy of TaskPriority?(v73, &_s10Foundation3URLVSgMd);

  return _swift_task_switch(closure #1 in Actions.Collaborate.Context.init(playlist:canCollaborateOnPlaylist:collaborate:metricsReportingContext:), 0, 0);
}

uint64_t sub_10006D72C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for Playlist();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v2;
  v8 = type metadata accessor for Actions.MetricsReportingContext();
  if (!(*(*(v8 - 8) + 48))(v0 + v2, 1, v8))
  {
    v16 = v3;
    if (*(v7 + 8) >= 0xDuLL)
    {
    }

    v9 = v7 + *(v8 + 20);
    v10 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {

      v15 = *(v10 + 24);
      v11 = type metadata accessor for URL();
      v13 = *(v11 - 8);
      v14 = v11;
      if (!(*(v13 + 48))(v9 + v15, 1))
      {
        (*(v13 + 8))(v9 + v15, v14);
      }
    }

    v3 = v16;
  }

  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in Actions.EditPlaylist.Context.init(playlist:presentEditPlaylistView:metricsReportingContext:)()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for Playlist() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #1 in Actions.EditPlaylist.Context.init(playlist:presentEditPlaylistView:metricsReportingContext:)(v0 + v3, v0 + v6);
}

int *static Actions.EditPlaylist.action(context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of Actions.EditPlaylist.Context(a1, a2);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6ActionVyAA7ActionsO12EditPlaylistO7ContextVytGMd);
  *(a2 + result[9]) = 12;
  *(a2 + result[11]) = 0x4014000000000000;
  v4 = (a2 + result[10]);
  *v4 = closure #1 in static Actions.EditPlaylist.action(context:);
  v4[1] = 0;
  v5 = (a2 + result[12]);
  *v5 = &async function pointer to closure #2 in static Actions.EditPlaylist.action(context:);
  v5[1] = 0;
  v6 = (a2 + result[13]);
  *v6 = &async function pointer to closure #3 in static Actions.EditPlaylist.action(context:);
  v6[1] = 0;
  return result;
}

unint64_t closure #1 in static Actions.EditPlaylist.action(context:)()
{
  v0 = type metadata accessor for Playlist.EditableComponents();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE18EditableComponentsVSgMd);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  Playlist.editableComponents.getter();
  if ((*(v1 + 48))(v6, 1, v0) == 1)
  {
    outlined destroy of TaskPriority?(v6, &_s8MusicKit8PlaylistV0aB8InternalE18EditableComponentsVSgMd);
  }

  else
  {
    lazy protocol witness table accessor for type Playlist.EditableComponents and conformance Playlist.EditableComponents(&lazy protocol witness table cache variable for type Playlist.EditableComponents and conformance Playlist.EditableComponents);
    dispatch thunk of SetAlgebra.init()();
    lazy protocol witness table accessor for type Playlist.EditableComponents and conformance Playlist.EditableComponents(&lazy protocol witness table cache variable for type Playlist.EditableComponents and conformance Playlist.EditableComponents);
    v7 = dispatch thunk of static Equatable.== infix(_:_:)();
    v8 = *(v1 + 8);
    v8(v3, v0);
    v8(v6, v0);
    if ((v7 & 1) == 0 && ![objc_opt_self() isRunningInStoreDemoMode])
    {
      return 0;
    }
  }

  return 0xD000000000000013;
}

uint64_t closure #2 in static Actions.EditPlaylist.action(context:)()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.EditPlaylist.Context() + 20));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = closure #2 in static Actions.EditPlaylist.action(context:);

  return v5();
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t closure #3 in static Actions.EditPlaylist.action(context:)()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.EditPlaylist.Context() + 24));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = closure #2 in static Actions.Collaborate.action(context:);

  return v5();
}

uint64_t outlined init with copy of Actions.EditPlaylist.Context(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Actions.EditPlaylist.Context();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Actions.EditPlaylist.Context.menuItemTitle.getter()
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

uint64_t (*Actions.EditPlaylist.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6C69636E6570;
  *(v0 + 24) = 0xE600000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x6C69636E6570;
  *(v1 + 24) = 0xE600000000000000;
  return _s9MusicCore19ActionMenuItemImageV10systemNameACSS_tcfc7SwiftUI0F0VSgyYbcfU_TA_0;
}

uint64_t sub_10006E3F8()
{

  return swift_deallocObject();
}

uint64_t (*protocol witness for ActionMenuItemConfiguring.menuItemImage.getter in conformance Actions.EditPlaylist.Context())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6C69636E6570;
  *(v0 + 24) = 0xE600000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x6C69636E6570;
  *(v1 + 24) = 0xE600000000000000;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

uint64_t sub_10006E4EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Playlist();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10006E5BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Playlist();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

unint64_t type metadata completion function for Actions.EditPlaylist.Context()
{
  result = type metadata accessor for Playlist();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ()();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Playlist.EditableComponents and conformance Playlist.EditableComponents(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Playlist.EditableComponents();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Actions.MoveToFolder.Context.init<A>(item:library:folderPickerPresenter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t (**a6)()@<X8>)
{
  v27 = a5;
  v28 = a3;
  v29 = a4;
  v25[0] = a1;
  v9 = type metadata accessor for Playlist.Folder.Item();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v26 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v25 - v13;
  (*(v10 + 16))(v25 - v13, a1, v9);
  v15 = *(v10 + 80);
  v25[1] = v15 | 7;
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  v17 = *(v10 + 32);
  v17(v16 + ((v15 + 24) & ~v15), v14, v9);
  v17(v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v25[0], v9);
  v18 = *(v29 - 8);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = (*(v18 + 64) + v15 + v19) & ~v15;
  v21 = swift_allocObject();
  v22 = v28;
  v23 = v27;
  *(v21 + 16) = v29;
  *(v21 + 24) = v23;
  (*(v18 + 32))(v21 + v19, v22);
  result = (v17)(v21 + v20, v26, v9);
  *a6 = partial apply for closure #1 in Actions.MoveToFolder.Context.init<A>(item:library:folderPickerPresenter:);
  a6[1] = v16;
  a6[2] = &async function pointer to partial apply for closure #2 in Actions.MoveToFolder.Context.init<A>(item:library:folderPickerPresenter:);
  a6[3] = v21;
  a6[4] = &async function pointer to closure #3 in Actions.MoveToFolder.Context.init<A>(item:library:folderPickerPresenter:);
  a6[5] = 0;
  return result;
}

uint64_t Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t (*a3)()@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t (**a7)()@<X8>)
{
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE6FolderVSgMd) - 8);
  v13 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v14 = (*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  outlined init with take of Playlist.Folder?(a1, v16 + v13);
  *(v16 + v14) = a2;
  v17 = (v16 + v15);
  *v17 = a5;
  v17[1] = a6;
  result = outlined init with take of PresentationSource(a4, v16 + ((v15 + 23) & 0xFFFFFFFFFFFFFFF8));
  *a7 = _s9MusicCore7ActionsO12CreateFolderO7ContextV6folder8children7library18presentationSource10completionAG0A3Kit8PlaylistV0aM8InternalE0E0VSg_SayAR4ItemOGSgAM0A7LibraryCAA012PresentationK0VyAG10FlowResultOYacSgtcfcAA21ActionSupportedStatusOyYbcfU_TA_0;
  a7[1] = a3;
  a7[2] = &async function pointer to partial apply for closure #2 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:);
  a7[3] = v16;
  a7[4] = &async function pointer to closure #3 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:);
  a7[5] = 0;
  return result;
}

uint64_t Actions.RenameFolder.Context.init(folder:library:presentationSource:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = type metadata accessor for Playlist.Folder();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  (*(v9 + 32))(v12 + v10, a1, v8);
  result = outlined init with take of PresentationSource(a3, v12 + v11);
  *a4 = partial apply for closure #1 in Actions.RenameFolder.Context.init(folder:library:presentationSource:);
  a4[1] = a2;
  a4[2] = &async function pointer to partial apply for closure #2 in Actions.RenameFolder.Context.init(folder:library:presentationSource:);
  a4[3] = v12;
  a4[4] = &async function pointer to closure #3 in Actions.RenameFolder.Context.init(folder:library:presentationSource:);
  a4[5] = 0;
  return result;
}

uint64_t Actions.DeleteFolder.Context.init(folder:library:presentationSource:)@<X0>(uint64_t a1@<X0>, unint64_t (*a2)()@<X1>, uint64_t a3@<X2>, unint64_t (**a4)()@<X8>)
{
  v8 = type metadata accessor for Playlist.Folder();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  (*(v9 + 32))(v12 + v10, a1, v8);
  outlined init with take of PresentationSource(a3, v12 + v11);
  *a4 = partial apply for closure #1 in Actions.DeleteFolder.Context.init(folder:library:presentationSource:);
  a4[1] = a2;
  a4[2] = &async function pointer to partial apply for closure #2 in Actions.DeleteFolder.Context.init(folder:library:presentationSource:);
  a4[3] = v12;
  a4[4] = &async function pointer to closure #3 in Actions.DeleteFolder.Context.init(folder:library:presentationSource:);
  a4[5] = 0;
}

uint64_t static Actions.MoveToFolder.action(context:)@<X0>(_OWORD *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = a1[1];
  *a6 = *a1;
  *(a6 + 16) = v6;
  *(a6 + 32) = a1[2];
  *(a6 + 48) = a2;
  *(a6 + 56) = a3;
  *(a6 + 64) = 0;
  *(a6 + 72) = 0x4014000000000000;
  *(a6 + 80) = a4;
  *(a6 + 88) = 0;
  *(a6 + 96) = a5;
  *(a6 + 104) = 0;
}

uint64_t (*Actions.CreateFolder.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000011;
  *(v0 + 24) = 0x80000001004C6220;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000011;
  *(v1 + 24) = 0x80000001004C6220;
  return _s9MusicCore19ActionMenuItemImageV10systemNameACSS_tcfc7SwiftUI0F0VSgyYbcfU_TA_0;
}

uint64_t (*protocol witness for ActionMenuItemConfiguring.menuItemImage.getter in conformance Actions.CreateFolder.Context())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000011;
  *(v0 + 24) = 0x80000001004C6220;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000011;
  *(v1 + 24) = 0x80000001004C6220;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

uint64_t closure #2 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[39] = a4;
  v5[40] = a5;
  v5[37] = a2;
  v5[38] = a3;
  v5[36] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0);
  v5[41] = swift_task_alloc();
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE6FolderVSgMd) - 8);
  v5[42] = v6;
  v5[43] = *(v6 + 64);
  v5[44] = swift_task_alloc();

  return _swift_task_switch(closure #2 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:), 0, 0);
}

uint64_t closure #2 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:)()
{
  v2 = v0[43];
  v1 = v0[44];
  v3 = v0[42];
  v4 = v0[39];
  v5 = v0[40];
  v7 = v0[37];
  v6 = v0[38];
  v8 = v0[36];
  specialized static TextFieldAlert.Configuration.newFolder.getter((v0 + 26));
  outlined init with copy of Playlist.Folder?(v8, v1);
  outlined init with copy of PresentationSource(v5, (v0 + 2));
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = (v2 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  v0[45] = v12;
  outlined init with take of Playlist.Folder?(v1, v12 + v9);
  *(v12 + v10) = v7;
  v13 = (v12 + v11);
  *v13 = v6;
  v13[1] = v4;
  outlined init with take of PresentationSource((v0 + 2), v12 + ((v11 + 23) & 0xFFFFFFFFFFFFFFF8));
  v0[46] = type metadata accessor for MainActor();

  outlined copy of (@escaping @callee_guaranteed @async (@in_guaranteed Actions.CreateFolder.Context.FlowResult) -> ())?(v6, v4);
  v0[47] = static MainActor.shared.getter();
  v15 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #2 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:), v15, v14);
}

{
  v1 = *(v0 + 360);

  v2 = objc_allocWithZone(type metadata accessor for TextFieldAlert());
  *(v0 + 384) = TextFieldAlert.init(configuration:callback:)(v0 + 208, partial apply for closure #1 in closure #2 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:), v1);

  return _swift_task_switch(closure #2 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:), 0, 0);
}

{
  v1 = v0[48];
  v3 = v0[40];
  v2 = v0[41];
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  outlined init with copy of PresentationSource(v3, (v0 + 14));
  v5 = v1;
  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  outlined init with take of PresentationSource((v0 + 14), (v7 + 4));
  v7[16] = v5;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v2, &async function pointer to partial apply for closure #2 in closure #2 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:), v7);

  v8 = v0[1];

  return v8();
}

uint64_t closure #1 in closure #2 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a1;
  v29 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE6FolderVSgMd);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v16 = &v28 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0);
  __chkstk_darwin(v17 - 8);
  v19 = &v28 - v18;
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  outlined init with copy of Playlist.Folder?(a3, v16);
  outlined init with copy of PresentationSource(a7, v30);
  v21 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v22 = (v14 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v28;
  v24[5] = a2;
  outlined init with take of Playlist.Folder?(v16, v24 + v21);
  *(v24 + v22) = a4;
  v25 = (v24 + v23);
  v26 = v29;
  *v25 = a5;
  v25[1] = v26;
  outlined init with take of PresentationSource(v30, v24 + ((v23 + 23) & 0xFFFFFFFFFFFFFFF8));

  outlined copy of (@escaping @callee_guaranteed @async (@in_guaranteed Actions.CreateFolder.Context.FlowResult) -> ())?(a5, v26);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v19, &async function pointer to partial apply for closure #1 in closure #1 in closure #2 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:), v24);
}

uint64_t closure #1 in closure #1 in closure #2 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[21] = v14;
  v8[22] = v15;
  v8[19] = a7;
  v8[20] = a8;
  v8[17] = a5;
  v8[18] = a6;
  v8[16] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0);
  v8[23] = swift_task_alloc();
  type metadata accessor for Actions.CreateFolder.Context.FlowResult();
  v8[24] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal0A23LibraryPlaylistResponseVy0aB00E0VAAE6FolderVGMd);
  v8[25] = v9;
  v8[26] = *(v9 - 8);
  v8[27] = swift_task_alloc();
  v10 = type metadata accessor for Playlist.Folder();
  v8[28] = v10;
  v8[29] = *(v10 - 8);
  v8[30] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal0A22LibraryPlaylistRequestVy0aB00E0VAAE6FolderVGMd);
  v8[31] = v11;
  v8[32] = *(v11 - 8);
  v8[33] = swift_task_alloc();

  return _swift_task_switch(closure #1 in closure #1 in closure #2 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:), 0, 0);
}

uint64_t closure #1 in closure #1 in closure #2 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:)()
{
  v0[14] = v0[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8MusicKit8PlaylistV0aB8InternalE6FolderV4ItemOGMd);
  lazy protocol witness table accessor for type [Playlist.Folder.Item] and conformance [A]();
  static MusicLibraryPlaylistRequest.creatingFolder<A>(name:description:userImage:parent:children:)();
  v1 = swift_task_alloc();
  v0[34] = v1;
  *v1 = v0;
  v1[1] = closure #1 in closure #1 in closure #2 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:);
  v2 = v0[27];

  return MusicLibraryPlaylistRequest.response<>()(v2);
}

{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = closure #1 in closure #1 in closure #2 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:);
  }

  else
  {
    v2 = closure #1 in closure #1 in closure #2 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  v4 = v0[20];
  MusicLibraryPlaylistResponse.item.getter();
  (*(v2 + 8))(v1, v3);
  v5 = v0[29];
  v6 = v0[28];
  if (v4)
  {
    v7 = v0[24];
    v8 = v0[20];
    (*(v5 + 16))(v7, v0[30], v0[28]);
    (*(v5 + 56))(v7, 0, 1, v6);
    v13 = (v8 + *v8);
    v9 = swift_task_alloc();
    v0[36] = v9;
    *v9 = v0;
    v9[1] = closure #1 in closure #1 in closure #2 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:);
    v10 = v0[24];

    return v13(v10);
  }

  else
  {
    (*(v5 + 8))(v0[30], v0[28]);
    (*(v0[32] + 8))(v0[33], v0[31]);

    v12 = v0[1];

    return v12();
  }
}

{
  v1 = *(*v0 + 192);

  _s9MusicCore6NoticeV7VariantOWOhTm_0(v1, type metadata accessor for Actions.CreateFolder.Context.FlowResult);

  return _swift_task_switch(closure #1 in closure #1 in closure #2 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:), 0, 0);
}

{
  (*(v0[29] + 8))(v0[30], v0[28]);
  (*(v0[32] + 8))(v0[33], v0[31]);

  v1 = v0[1];

  return v1();
}

{
  v18 = v0;
  if (one-time initialization token for actions != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.actions);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[35];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136446210;
    v0[15] = v4;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v7 = String.init<A>(describing:)();
    v9 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v7, v8, &v17);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to create folder with error=%{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
  }

  v10 = v0[22];
  v11 = v0[23];
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  outlined init with copy of PresentationSource(v10, (v0 + 2));
  type metadata accessor for MainActor();
  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = &protocol witness table for MainActor;
  outlined init with take of PresentationSource((v0 + 2), v14 + 32);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v11, &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in closure #2 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:), v14);

  (*(v0[32] + 8))(v0[33], v0[31]);

  v15 = v0[1];

  return v15();
}

uint64_t closure #1 in closure #1 in closure #1 in closure #2 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v4[8] = type metadata accessor for Notice.Variant(0);
  v4[9] = swift_task_alloc();
  type metadata accessor for Notice(0);
  v4[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[11] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in closure #1 in closure #1 in closure #2 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:), v6, v5);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #2 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:)()
{
  v1 = v0[10];
  v2 = v0[9];

  *v2 = 0xD000000000000022;
  v2[1] = 0x80000001004C6370;
  swift_storeEnumTagMultiPayload();
  static Notice.variant(_:)(v2, v1);
  _s9MusicCore6NoticeV7VariantOWOhTm_0(v2, type metadata accessor for Notice.Variant);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    UIViewController.noticePresenting.getter((v0 + 2));

    v5 = v0[5];
    v6 = v0[10];
    if (v5)
    {
      v7 = v0[6];
      __swift_project_boxed_opaque_existential_0Tm(v0 + 2, v0[5]);
      (*(v7 + 8))(v6, 1, v5, v7);
      _s9MusicCore6NoticeV7VariantOWOhTm_0(v6, type metadata accessor for Notice);
      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 2));
    }

    else
    {
      _s9MusicCore6NoticeV7VariantOWOhTm_0(v0[10], type metadata accessor for Notice);
      outlined destroy of NoticePresenting?((v0 + 2));
    }
  }

  else
  {
    _s9MusicCore6NoticeV7VariantOWOhTm_0(v0[10], type metadata accessor for Notice);
  }

  v8 = v0[1];

  return v8();
}

uint64_t closure #2 in closure #2 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  type metadata accessor for MainActor();
  v5[16] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #2 in closure #2 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:), v7, v6);
}

uint64_t closure #2 in closure #2 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:)()
{
  v1 = v0[14];

  v2 = *(v1 + 80);
  if (v2)
  {
    v3 = one-time initialization token for logger;

    if (v3 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static PresentationSource.logger);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Deferring presentation…", v7, 2u);
    }

    v8 = v0[14];
    v9 = v0[15];

    v10 = objc_allocWithZone(MSVBlockGuard);
    v0[6] = closure #1 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:);
    v0[7] = 0;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = thunk for @escaping @callee_guaranteed (@unowned MSVBlockGuardInterruptionReason) -> ();
    v0[5] = &block_descriptor_164;
    v11 = _Block_copy(v0 + 2);
    v12 = [v10 initWithTimeout:v11 interruptionHandler:10.0];
    _Block_release(v11);

    outlined init with copy of PresentationSource(v8, (v0 + 2));
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    outlined init with take of PresentationSource((v0 + 2), v13 + 24);
    *(v13 + 120) = v9;
    *(v13 + 128) = 257;
    *(v13 + 136) = 0;
    *(v13 + 144) = 0;
    v14 = v12;
    v2(v8, v9, closure #2 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)partial apply, v13);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v2);
  }

  else
  {
    PresentationSource._present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v0[15], 1, 1, 0, 0);
  }

  v15 = v0[1];

  return v15();
}

uint64_t closure #2 in static Actions.RenameFolder.action(context:)(uint64_t a1, uint64_t a2)
{
  v5 = (*(a2 + 16) + **(a2 + 16));
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return v5();
}

uint64_t Actions.RenameFolder.Context.menuItemTitle.getter()
{
  return Actions.RenameFolder.Context.menuItemTitle.getter();
}

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

uint64_t (*Actions.RenameFolder.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6C69636E6570;
  *(v0 + 24) = 0xE600000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x6C69636E6570;
  *(v1 + 24) = 0xE600000000000000;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

uint64_t protocol witness for ActionMenuItemConfiguring.menuItemTitle.getter in conformance Actions.RenameFolder.Context()
{
  return protocol witness for ActionMenuItemConfiguring.menuItemTitle.getter in conformance Actions.RenameFolder.Context();
}

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

uint64_t (*protocol witness for ActionMenuItemConfiguring.menuItemImage.getter in conformance Actions.RenameFolder.Context())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6C69636E6570;
  *(v0 + 24) = 0xE600000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x6C69636E6570;
  *(v1 + 24) = 0xE600000000000000;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

unint64_t closure #1 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:)()
{
  type metadata accessor for MusicLibrary();
  static MusicLibrary.shared.getter();
  v0 = static MusicLibrary.== infix(_:_:)();

  if (v0)
  {
    return 0;
  }

  else
  {
    return 0xD00000000000001DLL;
  }
}

uint64_t closure #2 in Actions.RenameFolder.Context.init(folder:library:presentationSource:)(uint64_t a1, uint64_t a2)
{
  v2[24] = a1;
  v2[25] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0);
  v2[26] = swift_task_alloc();
  v3 = type metadata accessor for Playlist.Folder();
  v2[27] = v3;
  v4 = *(v3 - 8);
  v2[28] = v4;
  v2[29] = *(v4 + 64);
  v2[30] = swift_task_alloc();

  return _swift_task_switch(closure #2 in Actions.RenameFolder.Context.init(folder:library:presentationSource:), 0, 0);
}

uint64_t closure #2 in Actions.RenameFolder.Context.init(folder:library:presentationSource:)()
{
  v1 = v0[30];
  v2 = v0[27];
  v3 = v0[28];
  v4 = v0[24];
  v5 = Playlist.Folder.name.getter();
  specialized static TextFieldAlert.Configuration.renameFolder(currentName:)(v5, v6, v0 + 14);

  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v0[31] = v8;
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[32] = type metadata accessor for MainActor();
  v0[33] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #2 in Actions.RenameFolder.Context.init(folder:library:presentationSource:), v10, v9);
}

{
  v1 = *(v0 + 248);

  v2 = objc_allocWithZone(type metadata accessor for TextFieldAlert());
  *(v0 + 272) = TextFieldAlert.init(configuration:callback:)(v0 + 112, partial apply for closure #1 in closure #2 in Actions.RenameFolder.Context.init(folder:library:presentationSource:), v1);

  return _swift_task_switch(closure #2 in Actions.RenameFolder.Context.init(folder:library:presentationSource:), 0, 0);
}

{
  v1 = v0[34];
  v3 = v0[25];
  v2 = v0[26];
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  outlined init with copy of PresentationSource(v3, (v0 + 2));
  v5 = v1;
  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  outlined init with take of PresentationSource((v0 + 2), (v7 + 4));
  v7[16] = v5;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v2, &async function pointer to partial apply for closure #2 in closure #2 in Actions.RenameFolder.Context.init(folder:library:presentationSource:), v7);

  v8 = v0[1];

  return v8();
}

uint64_t closure #1 in closure #2 in Actions.RenameFolder.Context.init(folder:library:presentationSource:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Playlist.Folder();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  (*(v7 + 16))(&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6);
  v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  (*(v7 + 32))(v14 + v13, &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v15 = (v14 + ((v8 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v15 = a1;
  v15[1] = a2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v11, &async function pointer to partial apply for closure #1 in closure #1 in closure #2 in Actions.RenameFolder.Context.init(folder:library:presentationSource:), v14);
}

uint64_t closure #1 in closure #1 in closure #2 in Actions.RenameFolder.Context.init(folder:library:presentationSource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v7 = type metadata accessor for Playlist.Folder();
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal0A23LibraryPlaylistResponseVy0aB00E0VAAE6FolderVGMd);
  v6[9] = v8;
  v6[10] = *(v8 - 8);
  v6[11] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal0A22LibraryPlaylistRequestVy0aB00E0VAAE6FolderVGMd);
  v6[12] = v9;
  v6[13] = *(v9 - 8);
  v6[14] = swift_task_alloc();

  return _swift_task_switch(closure #1 in closure #1 in closure #2 in Actions.RenameFolder.Context.init(folder:library:presentationSource:), 0, 0);
}

uint64_t closure #1 in closure #1 in closure #2 in Actions.RenameFolder.Context.init(folder:library:presentationSource:)()
{
  static MusicLibraryPlaylistRequest.editing<>(_:name:description:userImage:)();
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = closure #1 in closure #1 in closure #2 in Actions.RenameFolder.Context.init(folder:library:presentationSource:);
  v2 = *(v0 + 88);

  return MusicLibraryPlaylistRequest.response<>()(v2);
}

{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = closure #1 in closure #1 in closure #2 in Actions.RenameFolder.Context.init(folder:library:presentationSource:);
  }

  else
  {
    (*(v2[10] + 8))(v2[11], v2[9]);
    v3 = closure #1 in closure #1 in closure #2 in Actions.RenameFolder.Context.init(folder:library:presentationSource:);
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  (*(v0[13] + 8))(v0[14], v0[12]);

  v1 = v0[1];

  return v1();
}

{
  v29 = v0;
  if (one-time initialization token for actions != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = v0[3];
  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.actions);
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[13];
  v9 = v0[14];
  v11 = v0[12];
  v13 = v0[7];
  v12 = v0[8];
  v14 = v0[6];
  if (v8)
  {
    v25 = v0[16];
    v15 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v15 = 136446466;
    lazy protocol witness table accessor for type Playlist.Folder and conformance Playlist.Folder();
    v26 = v11;
    v27 = v9;
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v13 + 8))(v12, v14);
    v19 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v16, v18, &v28);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2082;
    v0[2] = v25;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v20 = String.init<A>(describing:)();
    v22 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v20, v21, &v28);

    *(v15 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to rename folder=%{public}s with error=%{public}s", v15, 0x16u);
    swift_arrayDestroy();

    (*(v10 + 8))(v27, v26);
  }

  else
  {

    (*(v13 + 8))(v12, v14);
    (*(v10 + 8))(v9, v11);
  }

  v23 = v0[1];

  return v23();
}

uint64_t closure #2 in closure #2 in Actions.RenameFolder.Context.init(folder:library:presentationSource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  type metadata accessor for MainActor();
  v5[16] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #2 in closure #2 in Actions.RenameFolder.Context.init(folder:library:presentationSource:), v7, v6);
}

uint64_t closure #2 in closure #2 in Actions.RenameFolder.Context.init(folder:library:presentationSource:)()
{
  v1 = v0[14];

  v2 = *(v1 + 80);
  if (v2)
  {
    v3 = one-time initialization token for logger;

    if (v3 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static PresentationSource.logger);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Deferring presentation…", v7, 2u);
    }

    v8 = v0[14];
    v9 = v0[15];

    v10 = objc_allocWithZone(MSVBlockGuard);
    v0[6] = closure #1 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:);
    v0[7] = 0;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = thunk for @escaping @callee_guaranteed (@unowned MSVBlockGuardInterruptionReason) -> ();
    v0[5] = &block_descriptor_141;
    v11 = _Block_copy(v0 + 2);
    v12 = [v10 initWithTimeout:v11 interruptionHandler:10.0];
    _Block_release(v11);

    outlined init with copy of PresentationSource(v8, (v0 + 2));
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    outlined init with take of PresentationSource((v0 + 2), v13 + 24);
    *(v13 + 120) = v9;
    *(v13 + 128) = 257;
    *(v13 + 136) = 0;
    *(v13 + 144) = 0;
    v14 = v12;
    v2(v8, v9, closure #2 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)partial apply, v13);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v2);
  }

  else
  {
    PresentationSource._present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v0[15], 1, 1, 0, 0);
  }

  v15 = v0[1];

  return v15();
}

uint64_t (*Actions.MoveToFolder.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x7265646C6F66;
  *(v0 + 24) = 0xE600000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x7265646C6F66;
  *(v1 + 24) = 0xE600000000000000;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

uint64_t (*protocol witness for ActionMenuItemConfiguring.menuItemImage.getter in conformance Actions.MoveToFolder.Context())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x7265646C6F66;
  *(v0 + 24) = 0xE600000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x7265646C6F66;
  *(v1 + 24) = 0xE600000000000000;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

unint64_t closure #1 in Actions.MoveToFolder.Context.init<A>(item:library:folderPickerPresenter:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for MusicLibrary.AddAction();
  v23 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE9AddActionVGMd);
  v26 = *(v28 - 8);
  __chkstk_darwin(v28);
  v27 = &v23 - v6;
  v7 = type metadata accessor for Playlist();
  v24 = *(v7 - 8);
  v25 = v7;
  __chkstk_darwin(v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Playlist.Folder.Item();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MusicLibrary();
  static MusicLibrary.shared.getter();
  v14 = static MusicLibrary.== infix(_:_:)();

  if ((v14 & 1) == 0)
  {
    return 0xD00000000000001DLL;
  }

  (*(v11 + 16))(v13, a2, v10);
  v15 = (*(v11 + 88))(v13, v10);
  if (v15 == enum case for Playlist.Folder.Item.folder(_:) || v15 != enum case for Playlist.Folder.Item.playlist(_:))
  {
    (*(v11 + 8))(v13, v10);
  }

  else
  {
    (*(v11 + 96))(v13, v10);
    v16 = v24;
    v17 = v13;
    v18 = v25;
    (*(v24 + 32))(v9, v17, v25);
    static MusicLibrary.shared.getter();
    static MusicLibraryAction<>.add.getter();
    v19 = v27;
    MusicLibrary.supportedStatus<A, B>(for:action:)();

    (*(v23 + 8))(v5, v3);
    v20 = v26;
    v21 = v28;
    if ((*(v26 + 88))(v19, v28) != enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:) || ((*(v20 + 96))(v19, v21), v21 = type metadata accessor for MusicLibrary.AddAction.UnsupportedReason(), v20 = *(v21 - 8), (*(v20 + 88))(v19, v21) != enum case for MusicLibrary.AddAction.UnsupportedReason.alreadyAdded(_:)))
    {
      (*(v20 + 8))(v19, v21);
      (*(v16 + 8))(v9, v18);
      return 0xD00000000000001ALL;
    }

    (*(v16 + 8))(v9, v18);
    (*(v20 + 8))(v19, v21);
  }

  return 0;
}

uint64_t sub_100072594()
{
  v1 = type metadata accessor for Playlist.Folder.Item();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

unint64_t partial apply for closure #1 in Actions.MoveToFolder.Context.init<A>(item:library:folderPickerPresenter:)()
{
  v1 = *(type metadata accessor for Playlist.Folder.Item() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return closure #1 in Actions.MoveToFolder.Context.init<A>(item:library:folderPickerPresenter:)(v2, v3);
}

uint64_t closure #2 in Actions.MoveToFolder.Context.init<A>(item:library:folderPickerPresenter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = (*(a4 + 16) + **(a4 + 16));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v10(a2, a3, a4);
}

uint64_t sub_1000727EC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for Playlist.Folder.Item();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in Actions.MoveToFolder.Context.init<A>(item:library:folderPickerPresenter:)()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  v5 = *(*(v2 - 8) + 64);
  v6 = *(type metadata accessor for Playlist.Folder.Item() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #2 in Actions.MoveToFolder.Context.init<A>(item:library:folderPickerPresenter:)(v0 + v4, v0 + v7, v2, v3);
}

uint64_t outlined init with take of Playlist.Folder?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE6FolderVSgMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s9MusicCore7ActionsO12CreateFolderO7ContextV6folder8children7library18presentationSource10completionAG0A3Kit8PlaylistV0aM8InternalE0E0VSg_SayAR4ItemOGSgAM0A7LibraryCAA012PresentationK0VyAG10FlowResultOYacSgtcfcyyYaYbcfU0_TA_0()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE6FolderVSgMd) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + v4);
  v7 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + v5);
  v9 = *(v0 + v5 + 8);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #2 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:)(v0 + v3, v6, v8, v9, v0 + v7);
}

uint64_t sub_100072C30()
{
  v1 = type metadata accessor for Playlist.Folder();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v5 = v0 + v4;
  swift_unknownObjectWeakDestroy();
  v6 = *(v0 + v4 + 48);
  if (v6 != 255)
  {
    outlined consume of PresentationSource.Position.Source(*(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), v6);
  }

  if (*(v5 + 64))
  {
  }

  if (*(v5 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t protocol witness for static ActionDefinition.action(context:) in conformance Actions.CreateFolder@<X0>(uint64_t a1@<X0>, char a2@<W3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v6 = *(a1 + 40);
  *a6 = *a1;
  *(a6 + 8) = *(a1 + 8);
  *(a6 + 24) = *(a1 + 24);
  *(a6 + 40) = v6;
  *(a6 + 48) = a2;
  *(a6 + 56) = a3;
  *(a6 + 64) = 0;
  *(a6 + 72) = 0x4014000000000000;
  *(a6 + 80) = a4;
  *(a6 + 88) = 0;
  *(a6 + 96) = a5;
  *(a6 + 104) = 0;
}

uint64_t (*Actions.DeleteFolder.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6873617274;
  *(v0 + 24) = 0xE500000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x6873617274;
  *(v1 + 24) = 0xE500000000000000;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

uint64_t (*protocol witness for ActionMenuItemConfiguring.menuItemImage.getter in conformance Actions.DeleteFolder.Context())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6873617274;
  *(v0 + 24) = 0xE500000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x6873617274;
  *(v1 + 24) = 0xE500000000000000;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

unint64_t closure #1 in Actions.DeleteFolder.Context.init(folder:library:presentationSource:)()
{
  type metadata accessor for MusicLibrary();
  static MusicLibrary.shared.getter();
  v0 = static MusicLibrary.== infix(_:_:)();

  if ((v0 & 1) == 0)
  {
    return 0xD00000000000001DLL;
  }

  if (MusicLibrary.isRemovalRestricted.getter())
  {
    return 0xD000000000000019;
  }

  return 0;
}

uint64_t closure #2 in Actions.DeleteFolder.Context.init(folder:library:presentationSource:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[49] = a2;
  v3[50] = a3;
  v3[48] = a1;
  type metadata accessor for String.LocalizationValue.StringInterpolation();
  v3[51] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v3[52] = v4;
  v3[53] = *(v4 - 8);
  v3[54] = swift_task_alloc();
  v5 = type metadata accessor for Playlist.Folder();
  v3[55] = v5;
  v6 = *(v5 - 8);
  v3[56] = v6;
  v3[57] = *(v6 + 64);
  v3[58] = swift_task_alloc();
  type metadata accessor for Locale();
  v3[59] = swift_task_alloc();
  v7 = type metadata accessor for String.LocalizationValue();
  v3[60] = v7;
  v3[61] = *(v7 - 8);
  v3[62] = swift_task_alloc();
  v3[63] = swift_task_alloc();

  return _swift_task_switch(closure #2 in Actions.DeleteFolder.Context.init(folder:library:presentationSource:), 0, 0);
}

uint64_t closure #2 in Actions.DeleteFolder.Context.init(folder:library:presentationSource:)()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 504);
  v3 = *(v0 + 480);
  v4 = *(v0 + 488);
  String.LocalizationValue.init(stringLiteral:)();
  v49 = *(v4 + 16);
  v49(v1, v2, v3);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v50 = *(v0 + 504);
  v5 = *(v0 + 480);
  v6 = *(v0 + 488);
  v34 = *(v0 + 496);
  v7 = *(v0 + 448);
  v45 = *(v0 + 456);
  v8 = *(v0 + 432);
  v32 = *(v0 + 440);
  v33 = *(v0 + 464);
  v35 = *(v0 + 424);
  v36 = *(v0 + 416);
  v39 = *(v0 + 400);
  v31 = *(v0 + 392);
  v41 = *(v0 + 384);
  v9 = static NSBundle.module;
  static Locale.current.getter();
  v43 = v9;
  v10 = String.init(localized:table:bundle:locale:comment:)();
  v47 = v11;
  v48 = v10;
  *(v0 + 512) = v11;
  v38 = *(v6 + 8);
  v38(v50, v5);
  (*(v7 + 16))(v33, v31, v32);
  outlined init with copy of PresentationSource(v39, v0 + 16);
  v12 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v13 = (v45 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  *(v0 + 520) = v14;
  *(v14 + 16) = v41;
  v15 = v14 + v12;
  v16 = v14;
  v46 = v14;
  (*(v7 + 32))(v15, v33, v32);
  outlined init with take of PresentationSource(v0 + 16, v16 + v13);

  UUID.init()();
  v42 = UUID.uuidString.getter();
  v40 = v17;
  *(v0 + 528) = v17;
  (*(v35 + 8))(v8, v36);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18._object = 0x80000001004C6280;
  v18._countAndFlagsBits = 0x100000000000002ELL;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v18);
  v19._countAndFlagsBits = Playlist.Folder.name.getter();
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v19);

  v20._countAndFlagsBits = 1067286754;
  v20._object = 0xA400000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v20);
  String.LocalizationValue.init(stringInterpolation:)();
  v49(v34, v50, v5);
  static Locale.current.getter();
  v21 = v43;
  v44 = String.init(localized:table:bundle:locale:comment:)();
  v37 = v22;
  v38(v50, v5);
  String.LocalizationValue.init(stringLiteral:)();
  v49(v34, v50, v5);
  static Locale.current.getter();
  v23 = String.init(localized:table:bundle:locale:comment:)();
  v25 = v24;
  v38(v50, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMd);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1004F2EF0;
  *(v26 + 32) = v42;
  *(v26 + 40) = v40;
  *(v26 + 48) = v48;
  *(v26 + 56) = v47;
  *(v26 + 64) = 1;
  *(v26 + 72) = &async function pointer to partial apply for closure #1 in closure #2 in Actions.DeleteFolder.Context.init(folder:library:presentationSource:);
  *(v26 + 80) = v46;

  specialized static Alert.Action.cancel.getter(v0 + 280);
  v27 = *(v0 + 296);
  *(v26 + 88) = *(v0 + 280);
  *(v26 + 104) = v27;
  *(v26 + 120) = *(v0 + 312);
  *(v26 + 136) = *(v0 + 328);
  *(v0 + 208) = v44;
  *(v0 + 216) = v37;
  *(v0 + 224) = v23;
  *(v0 + 232) = v25;
  *(v0 + 240) = 1;
  *(v0 + 248) = 0;
  *(v0 + 256) = 1;
  *(v0 + 264) = v26;
  *(v0 + 272) = 0;
  type metadata accessor for MainActor();
  *(v0 + 536) = static MainActor.shared.getter();
  v29 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #2 in Actions.DeleteFolder.Context.init(folder:library:presentationSource:), v29, v28);
}

{
  v1 = *(v0 + 400);

  v2 = specialized static UIAlertController.alertController(with:overrideStyle:)(v0 + 208, 0, 1);
  v3 = v2;
  v4 = *(v0 + 240);
  v5 = *(v1 + 80);
  if (v5)
  {
    v6 = one-time initialization token for logger;

    if (v6 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static PresentationSource.logger);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Deferring presentation…", v10, 2u);
    }

    v11 = *(v0 + 400);

    v12 = objc_allocWithZone(MSVBlockGuard);
    *(v0 + 368) = closure #1 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:);
    *(v0 + 376) = 0;
    *(v0 + 336) = _NSConcreteStackBlock;
    *(v0 + 344) = 1107296256;
    *(v0 + 352) = thunk for @escaping @callee_guaranteed (@unowned MSVBlockGuardInterruptionReason) -> ();
    *(v0 + 360) = &block_descriptor_5;
    v13 = _Block_copy((v0 + 336));
    v14 = [v12 initWithTimeout:v13 interruptionHandler:10.0];
    _Block_release(v13);

    outlined init with copy of PresentationSource(v11, v0 + 112);
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    outlined init with take of PresentationSource(v0 + 112, v15 + 24);
    *(v15 + 120) = v3;
    *(v15 + 128) = v4;
    *(v15 + 129) = 1;
    *(v15 + 136) = 0;
    *(v15 + 144) = 0;
    v16 = v14;
    v3 = v3;
    v5(v11, v3, _s9MusicCore18PresentationSourceV7present_019wantsAutomaticModalC5Style8animated10completionySo16UIViewControllerC_S2byycSgtFyycfU0_TA_0, v15);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v5);
  }

  else
  {
    PresentationSource._present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v2, *(v0 + 240), 1, 0, 0);
  }

  return _swift_task_switch(closure #2 in Actions.DeleteFolder.Context.init(folder:library:presentationSource:), 0, 0);
}

{
  outlined destroy of Alert(v0 + 208);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in closure #2 in Actions.DeleteFolder.Context.init(folder:library:presentationSource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0);
  v5[16] = swift_task_alloc();
  v7 = swift_task_alloc();
  v5[17] = v7;
  *v7 = v5;
  v7[1] = closure #1 in closure #2 in Actions.DeleteFolder.Context.init(folder:library:presentationSource:);

  return MusicLibrary.remove(_:)(a4);
}

uint64_t closure #1 in closure #2 in Actions.DeleteFolder.Context.init(folder:library:presentationSource:)()
{
  v2 = *v1;
  *(v2 + 144) = v0;

  if (v0)
  {

    return _swift_task_switch(closure #1 in closure #2 in Actions.DeleteFolder.Context.init(folder:library:presentationSource:), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

{
  v18 = v0;
  if (one-time initialization token for actions != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.actions);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[18];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136446210;
    v0[14] = v4;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v7 = String.init<A>(describing:)();
    v9 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v7, v8, &v17);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to delete folder with error=%{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
  }

  v10 = v0[15];
  v11 = v0[16];
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  outlined init with copy of PresentationSource(v10, (v0 + 2));
  type metadata accessor for MainActor();
  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = &protocol witness table for MainActor;
  outlined init with take of PresentationSource((v0 + 2), v14 + 32);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v11, &async function pointer to partial apply for closure #1 in closure #1 in closure #2 in Actions.DeleteFolder.Context.init(folder:library:presentationSource:), v14);

  v15 = v0[1];

  return v15();
}

uint64_t closure #1 in closure #1 in closure #2 in Actions.DeleteFolder.Context.init(folder:library:presentationSource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v4[8] = type metadata accessor for Notice.Variant(0);
  v4[9] = swift_task_alloc();
  type metadata accessor for Notice(0);
  v4[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[11] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in closure #1 in closure #2 in Actions.DeleteFolder.Context.init(folder:library:presentationSource:), v6, v5);
}

uint64_t closure #1 in closure #1 in closure #2 in Actions.DeleteFolder.Context.init(folder:library:presentationSource:)()
{
  v1 = v0[10];
  v2 = v0[9];

  *v2 = 0xD000000000000022;
  v2[1] = 0x80000001004C6300;
  swift_storeEnumTagMultiPayload();
  static Notice.variant(_:)(v2, v1);
  _s9MusicCore6NoticeV7VariantOWOhTm_0(v2, type metadata accessor for Notice.Variant);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    UIViewController.noticePresenting.getter((v0 + 2));

    v5 = v0[5];
    v6 = v0[10];
    if (v5)
    {
      v7 = v0[6];
      __swift_project_boxed_opaque_existential_0Tm(v0 + 2, v0[5]);
      (*(v7 + 8))(v6, 1, v5, v7);
      _s9MusicCore6NoticeV7VariantOWOhTm_0(v6, type metadata accessor for Notice);
      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 2));
    }

    else
    {
      _s9MusicCore6NoticeV7VariantOWOhTm_0(v0[10], type metadata accessor for Notice);
      outlined destroy of NoticePresenting?((v0 + 2));
    }
  }

  else
  {
    _s9MusicCore6NoticeV7VariantOWOhTm_0(v0[10], type metadata accessor for Notice);
  }

  v8 = v0[1];

  return v8();
}

uint64_t specialized Actions.CreateFolder.Context.menuItemTitle.getter()
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

uint64_t specialized Actions.DeleteFolder.Context.menuItemTitle.getter()
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

uint64_t sub_100074578(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Playlist.Folder();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000745F8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for Playlist.Folder();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t type metadata accessor for Actions.CreateFolder.Context.FlowResult()
{
  result = type metadata singleton initialization cache for Actions.CreateFolder.Context.FlowResult;
  if (!type metadata singleton initialization cache for Actions.CreateFolder.Context.FlowResult)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for Actions.CreateFolder.Context.FlowResult()
{
  v0 = type metadata accessor for Playlist.Folder();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_10007477C()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_14Tm()
{
  v1 = type metadata accessor for Playlist.Folder();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  v5 = v0 + v4;
  swift_unknownObjectWeakDestroy();
  v6 = *(v0 + v4 + 48);
  if (v6 != 255)
  {
    outlined consume of PresentationSource.Position.Source(*(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), v6);
  }

  if (*(v5 + 64))
  {
  }

  if (*(v5 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #2 in Actions.DeleteFolder.Context.init(folder:library:presentationSource:)(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for Playlist.Folder() - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + 16);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in closure #2 in Actions.DeleteFolder.Context.init(folder:library:presentationSource:)(a1, a2, v9, v2 + v7, v2 + v8);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for closure #1 in closure #1 in closure #2 in Actions.DeleteFolder.Context.init(folder:library:presentationSource:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in closure #1 in closure #2 in Actions.DeleteFolder.Context.init(folder:library:presentationSource:)(a1, v4, v5, v1 + 32);
}

uint64_t outlined destroy of NoticePresenting?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore16NoticePresenting_pSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double specialized static TextFieldAlert.Configuration.newFolder.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  String.LocalizationValue.init(stringLiteral:)();
  v10 = *(v4 + 16);
  v10(v7, v9, v3);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v11 = static NSBundle.module;
  static Locale.current.getter();
  v12 = v11;
  v13 = String.init(localized:table:bundle:locale:comment:)();
  v32 = v14;
  v33 = v13;
  v15 = *(v4 + 8);
  v15(v9, v3);
  String.LocalizationValue.init(stringLiteral:)();
  v10(v7, v9, v3);
  static Locale.current.getter();
  v16 = String.init(localized:table:bundle:locale:comment:)();
  v30 = v17;
  v31 = v16;
  v15(v9, v3);
  String.LocalizationValue.init(stringLiteral:)();
  v10(v7, v9, v3);
  static Locale.current.getter();
  v18 = String.init(localized:table:bundle:locale:comment:)();
  v28 = v19;
  v29 = v18;
  v15(v9, v3);
  String.LocalizationValue.init(stringLiteral:)();
  v10(v7, v9, v3);
  static Locale.current.getter();
  v20 = String.init(localized:table:bundle:locale:comment:)();
  v22 = v21;
  v15(v9, v3);
  result = 0.0;
  *a1 = xmmword_1004F2EC0;
  v24 = v32;
  *(a1 + 16) = v33;
  *(a1 + 24) = v24;
  v25 = v30;
  *(a1 + 32) = v31;
  *(a1 + 40) = v25;
  v26 = v28;
  *(a1 + 48) = v29;
  *(a1 + 56) = v26;
  *(a1 + 64) = v20;
  *(a1 + 72) = v22;
  return result;
}

uint64_t specialized static TextFieldAlert.Configuration.renameFolder(currentName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v33 = a1;
  v34 = a2;
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v28 - v10;
  String.LocalizationValue.init(stringLiteral:)();
  v12 = *(v6 + 16);
  v12(v9, v11, v5);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v13 = static NSBundle.module;
  static Locale.current.getter();
  v14 = v13;
  v15 = String.init(localized:table:bundle:locale:comment:)();
  v31 = v16;
  v32 = v15;
  v17 = *(v6 + 8);
  v17(v11, v5);
  String.LocalizationValue.init(stringLiteral:)();
  v12(v9, v11, v5);
  static Locale.current.getter();
  v18 = String.init(localized:table:bundle:locale:comment:)();
  v29 = v19;
  v30 = v18;
  v17(v11, v5);
  String.LocalizationValue.init(stringLiteral:)();
  v12(v9, v11, v5);
  static Locale.current.getter();
  v20 = String.init(localized:table:bundle:locale:comment:)();
  v22 = v21;
  v17(v11, v5);

  v24 = v32;
  *a3 = v33;
  a3[1] = result;
  v26 = v30;
  v25 = v31;
  a3[2] = v24;
  a3[3] = v25;
  a3[4] = 0;
  a3[5] = 0;
  v27 = v29;
  a3[6] = v26;
  a3[7] = v27;
  a3[8] = v20;
  a3[9] = v22;
  return result;
}

uint64_t sub_1000751D4()
{
  v1 = type metadata accessor for Playlist.Folder();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #2 in Actions.RenameFolder.Context.init(folder:library:presentationSource:)(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for Playlist.Folder() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return closure #1 in closure #2 in Actions.RenameFolder.Context.init(folder:library:presentationSource:)(a1, a2, v6);
}

uint64_t partial apply for closure #2 in closure #2 in Actions.RenameFolder.Context.init(folder:library:presentationSource:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[16];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #2 in closure #2 in Actions.RenameFolder.Context.init(folder:library:presentationSource:)(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_1000753A0()
{
  v1 = type metadata accessor for Playlist.Folder();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in closure #2 in Actions.RenameFolder.Context.init(folder:library:presentationSource:)(uint64_t a1)
{
  v4 = *(type metadata accessor for Playlist.Folder() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in closure #1 in closure #2 in Actions.RenameFolder.Context.init(folder:library:presentationSource:)(a1, v6, v7, v1 + v5, v9, v10);
}

unint64_t lazy protocol witness table accessor for type Playlist.Folder and conformance Playlist.Folder()
{
  result = lazy protocol witness table cache variable for type Playlist.Folder and conformance Playlist.Folder;
  if (!lazy protocol witness table cache variable for type Playlist.Folder and conformance Playlist.Folder)
  {
    type metadata accessor for Playlist.Folder();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Playlist.Folder and conformance Playlist.Folder);
  }

  return result;
}

uint64_t outlined init with copy of Playlist.Folder?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE6FolderVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_6Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE6FolderVSgMd) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = type metadata accessor for Playlist.Folder();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  v6 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;

  if (*(v0 + v3))
  {
  }

  v7 = v0 + v6;
  swift_unknownObjectWeakDestroy();
  v8 = *(v0 + v6 + 48);
  if (v8 != 255)
  {
    outlined consume of PresentationSource.Position.Source(*(v7 + 8), *(v7 + 16), *(v7 + 24), *(v7 + 32), *(v7 + 40), v8);
  }

  if (*(v7 + 64))
  {
  }

  if (*(v7 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #2 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:)(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE6FolderVSgMd) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + v7);
  v10 = *(v2 + v8);
  v11 = *(v2 + v8 + 8);

  return closure #1 in closure #2 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:)(a1, a2, v2 + v6, v9, v10, v11, v2 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t objectdestroy_136Tm()
{
  swift_unknownObjectRelease();
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 80);
  if (v1 != 255)
  {
    outlined consume of PresentationSource.Position.Source(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), v1);
  }

  if (*(v0 + 96))
  {
  }

  if (*(v0 + 112))
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in closure #2 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[16];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #2 in closure #2 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:)(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_100075A30()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE6FolderVSgMd) - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = (((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v4 = type metadata accessor for Playlist.Folder();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  v6 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;

  if (*(v0 + v3))
  {
  }

  v7 = v0 + v6;
  swift_unknownObjectWeakDestroy();
  v8 = *(v0 + v6 + 48);
  if (v8 != 255)
  {
    outlined consume of PresentationSource.Position.Source(*(v7 + 8), *(v7 + 16), *(v7 + 24), *(v7 + 32), *(v7 + 40), v8);
  }

  if (*(v7 + 64))
  {
  }

  if (*(v7 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in closure #2 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:)(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE6FolderVSgMd) - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v1[3];
  v13 = v1[2];
  v7 = v1[4];
  v8 = v1[5];
  v9 = *(v1 + v5);
  v10 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #1 in closure #1 in closure #2 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:)(a1, v13, v6, v7, v8, v1 + v4, v9, v10);
}

unint64_t lazy protocol witness table accessor for type [Playlist.Folder.Item] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Playlist.Folder.Item] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Playlist.Folder.Item] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8MusicKit8PlaylistV0aB8InternalE6FolderV4ItemOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Playlist.Folder.Item] and conformance [A]);
  }

  return result;
}

uint64_t objectdestroy_124Tm()
{
  swift_unknownObjectRelease();
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 80);
  if (v1 != 255)
  {
    outlined consume of PresentationSource.Position.Source(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), v1);
  }

  if (*(v0 + 96))
  {
  }

  if (*(v0 + 112))
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #2 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in closure #1 in closure #1 in closure #2 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:)(a1, v4, v5, v1 + 32);
}

uint64_t _s9MusicCore6NoticeV7VariantOWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t Actions.RemoveDownload.Context.init<A>(item:library:showConfirmationDialog:presentationSource:metricsReportingContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t (**a9)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)@<X8>)
{
  v53 = a4;
  v54 = a5;
  v51 = a3;
  v56 = a2;
  v57 = a1;
  v55 = a9;
  v59 = *(a6 - 8);
  v12 = v59;
  v13 = __chkstk_darwin(a1);
  v49 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v47 = &v44 - v16;
  v18 = v17;
  v50 = v17;
  __chkstk_darwin(v15);
  v20 = &v44 - v19;
  v46 = *(v12 + 16);
  v46(&v44 - v19);
  v21 = *(v12 + 80);
  v22 = (v21 + 40) & ~v21;
  v58 = v21 | 7;
  v44 = v18 + 7;
  v23 = (v18 + 7 + v22) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  v24[2] = a6;
  v24[3] = a7;
  v25 = a8;
  v48 = a8;
  v24[4] = a8;
  v45 = *(v59 + 32);
  v59 += 32;
  v26 = v24;
  v52 = v24;
  v45(v24 + v22, v20, a6);
  v28 = v56;
  v27 = v57;
  *(v26 + v23) = v56;
  v29 = v47;
  (v46)(v47, v27, a6);
  v30 = (v21 + 41) & ~v21;
  v31 = (v44 + v30) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  *(v32 + 16) = a6;
  *(v32 + 24) = a7;
  *(v32 + 32) = v25;
  *(v32 + 40) = v51;
  v33 = v32 + v30;
  v34 = v45;
  v45(v33, v29, a6);
  *(v32 + v31) = v28;
  outlined init with take of PresentationSource(v53, v32 + ((v31 + 15) & 0xFFFFFFFFFFFFFFF8));
  v35 = v49;
  v34(v49, v57, a6);
  v36 = v34;
  v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd) - 8);
  v38 = (*(v37 + 80) + 40) & ~*(v37 + 80);
  v39 = (*(v37 + 64) + v21 + v38) & ~v21;
  v40 = swift_allocObject();
  *(v40 + 2) = a6;
  *(v40 + 3) = a7;
  *(v40 + 4) = v48;
  outlined init with take of URL?(v54, v40 + v38, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  v36(v40 + v39, v35, a6);

  v42 = v55;
  v43 = v52;
  *v55 = partial apply for closure #1 in Actions.RemoveDownload.Context.init<A>(item:library:showConfirmationDialog:presentationSource:metricsReportingContext:);
  v42[1] = v43;
  v42[2] = &async function pointer to partial apply for closure #2 in Actions.RemoveDownload.Context.init<A>(item:library:showConfirmationDialog:presentationSource:metricsReportingContext:);
  v42[3] = v32;
  v42[4] = &async function pointer to partial apply for closure #3 in Actions.RemoveDownload.Context.init<A>(item:library:showConfirmationDialog:presentationSource:metricsReportingContext:);
  v42[5] = v40;
  return result;
}

uint64_t static Actions.RemoveDownload.action(context:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = a1[2];
  *(a2 + 48) = 48;
  *(a2 + 56) = closure #1 in static Actions.AddToLibrary.action(context:);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &async function pointer to closure #2 in static Actions.RemoveDownload.action(context:);
  *(a2 + 88) = 0;
  *(a2 + 96) = &async function pointer to closure #3 in static Actions.RemoveDownload.action(context:);
  *(a2 + 104) = 0;
}

uint64_t static Actions.RemoveDownload.canRemoveDownload<A>(item:library:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23[1] = a3;
  v23[2] = a5;
  v23[3] = a2;
  v23[0] = type metadata accessor for MusicLibrary.RemoveDownloadAction.UnsupportedReason();
  v5 = *(v23[0] - 8);
  __chkstk_darwin(v23[0]);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MusicLibrary.RemoveDownloadAction();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE20RemoveDownloadActionVGMd);
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v23 - v17;
  static MusicLibraryAction<>.removeDownload.getter();
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  (*(v9 + 8))(v11, v8);
  (*(v13 + 16))(v16, v18, v12);
  v19 = (*(v13 + 88))(v16, v12);
  if (v19 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    (*(v13 + 96))(v16, v12);
    v20 = v23[0];
    (*(v5 + 32))(v7, v16, v23[0]);
    v21 = closure #1 in MusicLibrary.SupportedStatus<>.actionSupportedStatus.getter(v7);
    (*(v5 + 8))(v7, v20);
LABEL_5:
    (*(v13 + 8))(v18, v12);
    return v21;
  }

  if (v19 == enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    v21 = 0;
    goto LABEL_5;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t static Actions.RemoveDownload.removeDownload<A>(item:library:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return MusicLibrary.removeDownload<A>(_:)(a1, a3, a4);
}

uint64_t protocol witness for static ActionDefinition.action(context:) in conformance Actions.RemoveDownload@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 40);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = v2;
  *(a2 + 48) = 48;
  *(a2 + 56) = closure #1 in static Actions.AddToLibrary.action(context:);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &async function pointer to closure #2 in static Actions.RemoveDownload.action(context:);
  *(a2 + 88) = 0;
  *(a2 + 96) = &async function pointer to closure #3 in static Actions.RemoveDownload.action(context:);
  *(a2 + 104) = 0;
}

uint64_t Actions.RemoveDownload.Context.menuItemTitle.getter()
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

uint64_t (*Actions.RemoveDownload.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  strcpy((v0 + 16), "xmark.circle");
  *(v0 + 29) = 0;
  *(v0 + 30) = -5120;
  v1 = swift_allocObject();
  strcpy((v1 + 16), "xmark.circle");
  *(v1 + 29) = 0;
  *(v1 + 30) = -5120;
  return _s9MusicCore19ActionMenuItemImageV10systemNameACSS_tcfc7SwiftUI0F0VSgyYbcfU_TA_0;
}

uint64_t (*protocol witness for ActionMenuItemConfiguring.menuItemImage.getter in conformance Actions.RemoveDownload.Context())()
{
  v0 = swift_allocObject();
  strcpy((v0 + 16), "xmark.circle");
  *(v0 + 29) = 0;
  *(v0 + 30) = -5120;
  v1 = swift_allocObject();
  strcpy((v1 + 16), "xmark.circle");
  *(v1 + 29) = 0;
  *(v1 + 30) = -5120;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

uint64_t closure #2 in Actions.RemoveDownload.Context.init<A>(item:library:showConfirmationDialog:presentationSource:metricsReportingContext:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 320) = a6;
  *(v7 + 328) = a7;
  *(v7 + 304) = a4;
  *(v7 + 312) = a5;
  *(v7 + 288) = a2;
  *(v7 + 296) = a3;
  *(v7 + 744) = a1;
  v9 = type metadata accessor for UUID();
  *(v7 + 336) = v9;
  *(v7 + 344) = *(v9 - 8);
  *(v7 + 352) = swift_task_alloc();
  v10 = type metadata accessor for Genre();
  *(v7 + 360) = v10;
  *(v7 + 368) = *(v10 - 8);
  *(v7 + 376) = swift_task_alloc();
  v11 = type metadata accessor for Composer();
  *(v7 + 384) = v11;
  *(v7 + 392) = *(v11 - 8);
  *(v7 + 400) = swift_task_alloc();
  v12 = type metadata accessor for Artist();
  *(v7 + 408) = v12;
  *(v7 + 416) = *(v12 - 8);
  *(v7 + 424) = swift_task_alloc();
  v13 = type metadata accessor for TVEpisode();
  *(v7 + 432) = v13;
  *(v7 + 440) = *(v13 - 8);
  *(v7 + 448) = swift_task_alloc();
  v14 = type metadata accessor for TVSeason();
  *(v7 + 456) = v14;
  *(v7 + 464) = *(v14 - 8);
  *(v7 + 472) = swift_task_alloc();
  v15 = type metadata accessor for TVShow();
  *(v7 + 480) = v15;
  *(v7 + 488) = *(v15 - 8);
  *(v7 + 496) = swift_task_alloc();
  v16 = type metadata accessor for MusicMovie();
  *(v7 + 504) = v16;
  *(v7 + 512) = *(v16 - 8);
  *(v7 + 520) = swift_task_alloc();
  v17 = type metadata accessor for Song();
  *(v7 + 528) = v17;
  *(v7 + 536) = *(v17 - 8);
  *(v7 + 544) = swift_task_alloc();
  v18 = type metadata accessor for Playlist();
  *(v7 + 552) = v18;
  *(v7 + 560) = *(v18 - 8);
  *(v7 + 568) = swift_task_alloc();
  v19 = type metadata accessor for MusicVideo();
  *(v7 + 576) = v19;
  *(v7 + 584) = *(v19 - 8);
  *(v7 + 592) = swift_task_alloc();
  type metadata accessor for Locale();
  *(v7 + 600) = swift_task_alloc();
  v20 = type metadata accessor for String.LocalizationValue();
  *(v7 + 608) = v20;
  *(v7 + 616) = *(v20 - 8);
  *(v7 + 624) = swift_task_alloc();
  *(v7 + 632) = swift_task_alloc();
  v21 = type metadata accessor for Album();
  *(v7 + 640) = v21;
  *(v7 + 648) = *(v21 - 8);
  *(v7 + 656) = swift_task_alloc();
  v22 = *(a5 - 8);
  *(v7 + 664) = v22;
  *(v7 + 672) = *(v22 + 64);
  *(v7 + 680) = swift_task_alloc();
  *(v7 + 688) = swift_task_alloc();
  *(v7 + 696) = swift_task_alloc();

  return _swift_task_switch(closure #2 in Actions.RemoveDownload.Context.init<A>(item:library:showConfirmationDialog:presentationSource:metricsReportingContext:), 0, 0);
}

uint64_t closure #2 in Actions.RemoveDownload.Context.init<A>(item:library:showConfirmationDialog:presentationSource:metricsReportingContext:)()
{
  v145 = v0;
  if (*(v0 + 744) == 1)
  {
    v1 = *(*(v0 + 664) + 16);
    v1(*(v0 + 696), *(v0 + 288), *(v0 + 312));
    p_class_meths = &OBJC_PROTOCOL___CAAnimationDelegate.class_meths;
    v140 = v1;
    if (swift_dynamicCast())
    {
      v3 = *(v0 + 632);
      v4 = *(v0 + 624);
      v5 = *(v0 + 616);
      v6 = *(v0 + 608);
      String.LocalizationValue.init(stringLiteral:)();
      log = *(v5 + 16);
      log(v4, v3, v6);
      if (one-time initialization token for module != -1)
      {
        swift_once();
      }

      v7 = *(v0 + 664);
      v127 = *(v0 + 656);
      v130 = *(v0 + 696);
      v8 = *(v0 + 648);
      v9 = *(v0 + 640);
      v10 = *(v0 + 632);
      v11 = *(v0 + 616);
      v12 = *(v0 + 608);
      v124 = *(v0 + 312);
      static NSBundle.module;
      static Locale.current.getter();
      v13 = String.init(localized:table:bundle:locale:comment:)();
      v136 = v14;
      v137 = v13;
      v135 = *(v11 + 8);
      v135(v10, v12);
      (*(v8 + 8))(v127, v9);
      (*(v7 + 8))(v130, v124);
      goto LABEL_26;
    }

    if (swift_dynamicCast())
    {
      v21 = *(v0 + 632);
      v22 = *(v0 + 624);
      v23 = *(v0 + 616);
      v24 = *(v0 + 608);
      String.LocalizationValue.init(stringLiteral:)();
      log = *(v23 + 16);
      log(v22, v21, v24);
      if (one-time initialization token for module != -1)
      {
        swift_once();
      }

      v131 = *(v0 + 696);
      v25 = *(v0 + 664);
      v26 = *(v0 + 632);
      v27 = *(v0 + 616);
      v28 = *(v0 + 608);
      v125 = *(v0 + 592);
      v29 = *(v0 + 584);
      v30 = *(v0 + 576);
    }

    else if (swift_dynamicCast())
    {
      v31 = *(v0 + 632);
      v32 = *(v0 + 624);
      v33 = *(v0 + 616);
      v34 = *(v0 + 608);
      String.LocalizationValue.init(stringLiteral:)();
      log = *(v33 + 16);
      log(v32, v31, v34);
      if (one-time initialization token for module != -1)
      {
        swift_once();
      }

      v131 = *(v0 + 696);
      v25 = *(v0 + 664);
      v26 = *(v0 + 632);
      v27 = *(v0 + 616);
      v28 = *(v0 + 608);
      v125 = *(v0 + 568);
      v29 = *(v0 + 560);
      v30 = *(v0 + 552);
    }

    else if (swift_dynamicCast())
    {
      v35 = *(v0 + 632);
      v36 = *(v0 + 624);
      v37 = *(v0 + 616);
      v38 = *(v0 + 608);
      String.LocalizationValue.init(stringLiteral:)();
      log = *(v37 + 16);
      log(v36, v35, v38);
      if (one-time initialization token for module != -1)
      {
        swift_once();
      }

      v131 = *(v0 + 696);
      v25 = *(v0 + 664);
      v26 = *(v0 + 632);
      v27 = *(v0 + 616);
      v28 = *(v0 + 608);
      v125 = *(v0 + 544);
      v29 = *(v0 + 536);
      v30 = *(v0 + 528);
    }

    else
    {
      if (!swift_dynamicCast())
      {
        if (swift_dynamicCast())
        {
          v65 = (v0 + 496);
          v66 = (v0 + 480);
          v67 = 488;
        }

        else
        {
          if (!swift_dynamicCast())
          {
            if (swift_dynamicCast())
            {
              v77 = *(v0 + 632);
              v78 = *(v0 + 624);
              v79 = *(v0 + 616);
              v80 = *(v0 + 608);
              String.LocalizationValue.init(stringLiteral:)();
              log = *(v79 + 16);
              log(v78, v77, v80);
              if (one-time initialization token for module != -1)
              {
                swift_once();
              }

              v131 = *(v0 + 696);
              v25 = *(v0 + 664);
              v26 = *(v0 + 632);
              v27 = *(v0 + 616);
              v28 = *(v0 + 608);
              v29 = *(v0 + 440);
              v125 = *(v0 + 448);
              v30 = *(v0 + 432);
            }

            else if (swift_dynamicCast())
            {
              v81 = *(v0 + 632);
              v82 = *(v0 + 624);
              v83 = *(v0 + 616);
              v84 = *(v0 + 608);
              String.LocalizationValue.init(stringLiteral:)();
              log = *(v83 + 16);
              log(v82, v81, v84);
              if (one-time initialization token for module != -1)
              {
                swift_once();
              }

              v131 = *(v0 + 696);
              v25 = *(v0 + 664);
              v26 = *(v0 + 632);
              v27 = *(v0 + 616);
              v28 = *(v0 + 608);
              v29 = *(v0 + 416);
              v125 = *(v0 + 424);
              v30 = *(v0 + 408);
            }

            else if (swift_dynamicCast())
            {
              v85 = *(v0 + 632);
              v86 = *(v0 + 624);
              v87 = *(v0 + 616);
              v88 = *(v0 + 608);
              String.LocalizationValue.init(stringLiteral:)();
              log = *(v87 + 16);
              log(v86, v85, v88);
              if (one-time initialization token for module != -1)
              {
                swift_once();
              }

              v131 = *(v0 + 696);
              v25 = *(v0 + 664);
              v26 = *(v0 + 632);
              v27 = *(v0 + 616);
              v28 = *(v0 + 608);
              v29 = *(v0 + 392);
              v125 = *(v0 + 400);
              v30 = *(v0 + 384);
            }

            else
            {
              if (!swift_dynamicCast())
              {
                if (one-time initialization token for actions != -1)
                {
                  swift_once();
                }

                v93 = *(v0 + 688);
                v94 = *(v0 + 312);
                v95 = *(v0 + 288);
                v96 = type metadata accessor for Logger();
                __swift_project_value_buffer(v96, static Logger.actions);
                v1(v93, v95, v94);
                v97 = Logger.logObject.getter();
                v98 = static os_log_type_t.fault.getter();
                v99 = os_log_type_enabled(v97, v98);
                v100 = *(v0 + 688);
                if (v99)
                {
                  v101 = *(v0 + 680);
                  logb = v97;
                  v102 = *(v0 + 664);
                  v103 = *(v0 + 312);
                  v104 = swift_slowAlloc();
                  v139 = swift_slowAlloc();
                  v144[0] = v139;
                  *v104 = 136315138;
                  v1(v101, v100, v103);
                  v105 = String.init<A>(describing:)();
                  v107 = v106;
                  v108 = v103;
                  p_class_meths = (&OBJC_PROTOCOL___CAAnimationDelegate + 32);
                  v133 = *(v102 + 8);
                  v133(v100, v108);
                  v109 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v105, v107, v144);

                  *(v104 + 4) = v109;
                  _os_log_impl(&_mh_execute_header, logb, v98, "RemoveDownload: unhandled item type=%s", v104, 0xCu);
                  __swift_destroy_boxed_opaque_existential_0Tm(v139);
                }

                else
                {
                  v110 = *(v0 + 664);
                  v111 = *(v0 + 312);

                  v133 = *(v110 + 8);
                  v133(v100, v111);
                }

                v112 = *(v0 + 632);
                v113 = *(v0 + 624);
                v114 = *(v0 + 616);
                v115 = *(v0 + 608);
                String.LocalizationValue.init(stringLiteral:)();
                log = *(v114 + 16);
                log(v113, v112, v115);
                if (p_class_meths[8] != -1)
                {
                  swift_once();
                }

                v116 = *(v0 + 696);
                v117 = *(v0 + 632);
                v118 = *(v0 + 616);
                v119 = *(v0 + 608);
                v120 = *(v0 + 312);
                static NSBundle.module;
                static Locale.current.getter();
                v121 = String.init(localized:table:bundle:locale:comment:)();
                v136 = v122;
                v137 = v121;
                v135 = *(v118 + 8);
                v135(v117, v119);
                v133(v116, v120);
                goto LABEL_26;
              }

              v89 = *(v0 + 632);
              v90 = *(v0 + 624);
              v91 = *(v0 + 616);
              v92 = *(v0 + 608);
              String.LocalizationValue.init(stringLiteral:)();
              log = *(v91 + 16);
              log(v90, v89, v92);
              if (one-time initialization token for module != -1)
              {
                swift_once();
              }

              v131 = *(v0 + 696);
              v25 = *(v0 + 664);
              v26 = *(v0 + 632);
              v27 = *(v0 + 616);
              v28 = *(v0 + 608);
              v29 = *(v0 + 368);
              v125 = *(v0 + 376);
              v30 = *(v0 + 360);
            }

            goto LABEL_25;
          }

          v65 = (v0 + 472);
          v66 = (v0 + 456);
          v67 = 464;
        }

        (*(*(v0 + v67) + 8))(*v65, *v66);
        v68 = *(v0 + 632);
        v69 = *(v0 + 624);
        v70 = *(v0 + 616);
        v71 = *(v0 + 608);
        (*(*(v0 + 664) + 8))(*(v0 + 696), *(v0 + 312));
        String.LocalizationValue.init(stringLiteral:)();
        v45 = *(v70 + 16);
        v45(v69, v68, v71);
        if (one-time initialization token for module != -1)
        {
          swift_once();
        }

        v72 = *(v0 + 632);
        v73 = *(v0 + 616);
        v74 = *(v0 + 608);
        static NSBundle.module;
        static Locale.current.getter();
        v75 = String.init(localized:table:bundle:locale:comment:)();
        v136 = v76;
        v137 = v75;
        v135 = *(v73 + 8);
        v135(v72, v74);
        goto LABEL_27;
      }

      v39 = *(v0 + 632);
      v40 = *(v0 + 624);
      v41 = *(v0 + 616);
      v42 = *(v0 + 608);
      String.LocalizationValue.init(stringLiteral:)();
      log = *(v41 + 16);
      log(v40, v39, v42);
      if (one-time initialization token for module != -1)
      {
        swift_once();
      }

      v131 = *(v0 + 696);
      v25 = *(v0 + 664);
      v26 = *(v0 + 632);
      v27 = *(v0 + 616);
      v28 = *(v0 + 608);
      v125 = *(v0 + 520);
      v30 = *(v0 + 504);
      v29 = *(v0 + 512);
    }

LABEL_25:
    v128 = *(v0 + 312);
    static NSBundle.module;
    static Locale.current.getter();
    v43 = String.init(localized:table:bundle:locale:comment:)();
    v136 = v44;
    v137 = v43;
    v135 = *(v27 + 8);
    v135(v26, v28);
    (*(v29 + 8))(v125, v30);
    (*(v25 + 8))(v131, v128);
LABEL_26:
    v45 = log;
LABEL_27:
    v46 = *(v0 + 632);
    v47 = *(v0 + 624);
    v48 = *(v0 + 608);
    String.LocalizationValue.init(stringLiteral:)();
    v45(v47, v46, v48);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v123 = *(v0 + 680);
    v126 = *(v0 + 672);
    v49 = *(v0 + 664);
    v50 = *(v0 + 632);
    v51 = *(v0 + 608);
    v53 = *(v0 + 344);
    v52 = *(v0 + 352);
    v129 = *(v0 + 328);
    v54 = *(v0 + 288);
    v132 = *(v0 + 296);
    v134 = *(v0 + 336);
    *loga = *(v0 + 312);
    static Locale.current.getter();
    v138 = String.init(localized:table:bundle:locale:comment:)();
    v56 = v55;
    *(v0 + 704) = v55;
    v135(v50, v51);
    v140(v123, v54, loga[0]);
    v57 = (*(v49 + 80) + 40) & ~*(v49 + 80);
    v58 = swift_allocObject();
    *(v0 + 712) = v58;
    *(v58 + 16) = *loga;
    *(v58 + 32) = v129;
    (*(v49 + 32))(v58 + v57, v123, loga[0]);
    *(v58 + ((v126 + v57 + 7) & 0xFFFFFFFFFFFFFFF8)) = v132;

    UUID.init()();
    v59 = UUID.uuidString.getter();
    v61 = v60;
    *(v0 + 720) = v60;
    (*(v53 + 8))(v52, v134);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMd);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_1004F2EF0;
    *(v62 + 32) = v59;
    *(v62 + 40) = v61;
    *(v62 + 48) = v138;
    *(v62 + 56) = v56;
    *(v62 + 64) = 2;
    *(v62 + 72) = &async function pointer to partial apply for closure #1 in closure #2 in Actions.RemoveDownload.Context.init<A>(item:library:showConfirmationDialog:presentationSource:metricsReportingContext:);
    *(v62 + 80) = v58;

    specialized static Alert.Action.cancel.getter(v0 + 184);
    *(v62 + 88) = *(v0 + 184);
    *(v62 + 104) = *(v0 + 200);
    *(v62 + 120) = *(v0 + 216);
    *(v62 + 136) = *(v0 + 232);
    LOBYTE(v144[0]) = 1;
    *(v0 + 112) = 0;
    *(v0 + 120) = 0;
    *(v0 + 128) = v137;
    *(v0 + 136) = v136;
    *(v0 + 144) = 1;
    *(v0 + 152) = 0;
    *(v0 + 160) = 1;
    *(v0 + 168) = v62;
    *(v0 + 176) = 0;
    type metadata accessor for MainActor();
    *(v0 + 728) = static MainActor.shared.getter();
    v64 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(closure #2 in Actions.RemoveDownload.Context.init<A>(item:library:showConfirmationDialog:presentationSource:metricsReportingContext:), v64, v63);
  }

  v15 = swift_task_alloc();
  *(v0 + 736) = v15;
  *v15 = v0;
  v15[1] = closure #2 in Actions.RemoveDownload.Context.init<A>(item:library:showConfirmationDialog:presentationSource:metricsReportingContext:);
  v16 = *(v0 + 312);
  v17 = *(v0 + 320);
  v19 = *(v0 + 288);
  v18 = *(v0 + 296);

  return static Actions.RemoveDownload.removeDownload<A>(item:library:)(v19, v18, v16, v17);
}

{
  v1 = *(v0 + 304);

  v2 = specialized static UIAlertController.alertController(with:overrideStyle:)(v0 + 112, 0, 1);
  v3 = v2;
  v4 = *(v0 + 144);
  v5 = *(v1 + 80);
  if (v5)
  {
    v6 = one-time initialization token for logger;

    if (v6 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static PresentationSource.logger);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Deferring presentation…", v10, 2u);
    }

    v11 = *(v0 + 304);

    v12 = objc_allocWithZone(MSVBlockGuard);
    *(v0 + 272) = closure #1 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:);
    *(v0 + 280) = 0;
    *(v0 + 240) = _NSConcreteStackBlock;
    *(v0 + 248) = 1107296256;
    *(v0 + 256) = thunk for @escaping @callee_guaranteed (@unowned MSVBlockGuardInterruptionReason) -> ();
    *(v0 + 264) = &block_descriptor_6;
    v13 = _Block_copy((v0 + 240));
    v14 = [v12 initWithTimeout:v13 interruptionHandler:10.0];
    _Block_release(v13);

    outlined init with copy of PresentationSource(v11, v0 + 16);
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    outlined init with take of PresentationSource(v0 + 16, v15 + 24);
    *(v15 + 120) = v3;
    *(v15 + 128) = v4;
    *(v15 + 129) = 1;
    *(v15 + 136) = 0;
    *(v15 + 144) = 0;
    v16 = v14;
    v17 = v3;
    v5(v11, v17, partial apply for closure #2 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:), v15);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v5);

    v18 = closure #2 in Actions.RemoveDownload.Context.init<A>(item:library:showConfirmationDialog:presentationSource:metricsReportingContext:);
  }

  else
  {
    PresentationSource._present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v2, *(v0 + 144), 1, 0, 0);

    v18 = closure #2 in Actions.RemoveDownload.Context.init<A>(item:library:showConfirmationDialog:presentationSource:metricsReportingContext:);
  }

  return _swift_task_switch(v18, 0, 0);
}

{
  outlined destroy of Alert(v0 + 112);

  v1 = *(v0 + 8);

  return v1();
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100078AF4()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = (*(v1 + 80) + 41) & ~*(v1 + 80);
  v3 = (((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);

  v4 = v0 + v3;
  swift_unknownObjectWeakDestroy();
  v5 = *(v0 + v3 + 48);
  if (v5 != 255)
  {
    outlined consume of PresentationSource.Position.Source(*(v4 + 8), *(v4 + 16), *(v4 + 24), *(v4 + 32), *(v4 + 40), v5);
  }

  if (*(v4 + 64))
  {
  }

  if (*(v4 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in Actions.RemoveDownload.Context.init<A>(item:library:showConfirmationDialog:presentationSource:metricsReportingContext:)()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = (*(*(v2 - 8) + 80) + 41) & ~*(*(v2 - 8) + 80);
  v6 = (*(*(v2 - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 40);
  v9 = *(v0 + v6);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #2 in Actions.RemoveDownload.Context.init<A>(item:library:showConfirmationDialog:presentationSource:metricsReportingContext:)(v8, v0 + v5, v9, v0 + v7, v2, v3, v4);
}

uint64_t closure #1 in closure #2 in Actions.RemoveDownload.Context.init<A>(item:library:showConfirmationDialog:presentationSource:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_task_alloc();
  *(v6 + 24) = v11;
  *v11 = v6;
  v11[1] = closure #1 in closure #2 in Actions.RemoveDownload.Context.init<A>(item:library:showConfirmationDialog:presentationSource:metricsReportingContext:);

  return static Actions.RemoveDownload.removeDownload<A>(item:library:)(a3, a4, a5, a6);
}

uint64_t closure #1 in closure #2 in Actions.RemoveDownload.Context.init<A>(item:library:showConfirmationDialog:presentationSource:metricsReportingContext:)()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {

    return _swift_task_switch(closure #1 in closure #2 in Actions.RemoveDownload.Context.init<A>(item:library:showConfirmationDialog:presentationSource:metricsReportingContext:), 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

{
  v14 = v0;
  if (one-time initialization token for actions != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.actions);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[4];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    v0[2] = v5;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v8 = String.init<A>(describing:)();
    v10 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to remove Download with error=%{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t closure #3 in Actions.RemoveDownload.Context.init<A>(item:library:showConfirmationDialog:presentationSource:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore12MetricsEventV4PageVSgMd);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = type metadata accessor for MetricsEvent.Click(0);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  v4[27] = swift_task_alloc();
  v5 = type metadata accessor for Actions.MetricsReportingContext();
  v4[28] = v5;
  v4[29] = *(v5 - 8);
  v4[30] = swift_task_alloc();

  return _swift_task_switch(closure #3 in Actions.RemoveDownload.Context.init<A>(item:library:showConfirmationDialog:presentationSource:metricsReportingContext:), 0, 0);
}

uint64_t closure #3 in Actions.RemoveDownload.Context.init<A>(item:library:showConfirmationDialog:presentationSource:metricsReportingContext:)()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  outlined init with copy of TaskPriority?(*(v0 + 72), v3, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 216), &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 208);
    v7 = *(v0 + 88);
    outlined init with take of Actions.MetricsReportingContext(*(v0 + 216), *(v0 + 240), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 248) = MusicItem.metricsTargetIdentifier.getter(v7);
    *(v0 + 256) = v8;
    v9 = type metadata accessor for URL();
    *(v0 + 264) = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    *(v0 + 272) = v11;
    *(v0 + 280) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v6, 1, 1, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore12MetricsEventV5ClickV13ActionDetailsO3KeyOGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004F2400;
    *(inited + 32) = MusicItem.metricsContentType.getter(v7);
    *(inited + 40) = v13;
    *(inited + 48) = 0;
    *(v0 + 288) = specialized MetricsEvent.Click.ActionDetails.init(_:)(inited);
    *(v0 + 296) = v14;
    *(v0 + 304) = v15;
    *(v0 + 320) = v16;
    swift_setDeallocating();
    outlined destroy of MetricsEvent.Click.ActionDetails.Key(inited + 32);
    type metadata accessor for MainActor();
    *(v0 + 312) = static MainActor.shared.getter();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(closure #3 in Actions.RemoveDownload.Context.init<A>(item:library:showConfirmationDialog:presentationSource:metricsReportingContext:), v18, v17);
  }
}

{
  v80 = *(v0 + 320);
  v73 = *(v0 + 288);
  v76 = *(v0 + 256);
  v78 = *(v0 + 304);
  v74 = *(v0 + 248);
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 168);
  v6 = *(v0 + 176);
  v7 = *(v0 + 160);
  v72 = *(v0 + 152);

  outlined init with copy of TaskPriority?(v3, v4, &_s10Foundation3URLVSgMd);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  outlined init with copy of TaskPriority?(v1 + v2[5], v7, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 9477;
  outlined init with take of URL?(v4, v6 + v5[7], &_s10Foundation3URLVSgMd);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  outlined init with copy of TaskPriority?(v7, v72, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 320);
  v17 = *(v0 + 296);
  v18 = *(v0 + 304);
  v19 = *(v0 + 288);
  v20 = *(v0 + 152);
  if (v15 == 1)
  {

    outlined copy of MetricsEvent.Click.ActionContext?(v75, v77);

    outlined copy of MetricsEvent.Click.ActionDetails(v19, v17, v18, v16, SBYTE1(v16));
    outlined destroy of TaskPriority?(v20, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    outlined copy of MetricsEvent.Click.ActionContext?(v75, v77);

    outlined copy of MetricsEvent.Click.ActionDetails(v19, v17, v18, v16, SBYTE1(v16));

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 160);
  v24 = *(v0 + 144);
  v25 = (*(v0 + 176) + *(*(v0 + 168) + 48));
  *v25 = v21;
  v25[1] = v22;
  outlined init with copy of TaskPriority?(v23, v24, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 144);
  if (v26 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 144), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 160);
  v31 = *(v0 + 136);
  v32 = (*(v0 + 176) + *(*(v0 + 168) + 52));
  *v32 = v28;
  v32[1] = v29;
  outlined init with copy of TaskPriority?(v30, v31, &_s9MusicCore12MetricsEventV4PageVSgMd);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 272);
    v34 = *(v0 + 264);
    v35 = *(v0 + 192);
    outlined destroy of TaskPriority?(*(v0 + 136), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 136);
    outlined init with copy of TaskPriority?(v36 + v14[6], *(v0 + 192), &_s10Foundation3URLVSgMd);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 160);
  v38 = *(v0 + 128);
  outlined init with take of URL?(*(v0 + 192), *(v0 + 176) + *(*(v0 + 168) + 56), &_s10Foundation3URLVSgMd);
  outlined init with copy of TaskPriority?(v37, v38, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 128);
  if (v39 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 128), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 160);
  v43 = *(v0 + 120);
  *(*(v0 + 176) + *(*(v0 + 168) + 60)) = v41;
  outlined init with copy of TaskPriority?(v42, v43, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 120);
  if (v44 == 1)
  {
    outlined destroy of TaskPriority?(v45, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 160);
  v48 = *(v0 + 112);
  *(*(v0 + 176) + *(*(v0 + 168) + 64)) = v46;
  outlined init with copy of TaskPriority?(v47, v48, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 112);
  if (v49 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 112), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 160);
  v55 = *(v0 + 104);
  v56 = (*(v0 + 176) + *(*(v0 + 168) + 72));
  *v56 = v51;
  v56[1] = v52;
  outlined init with take of URL?(v54, v55, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 104);
  if (v57 == 1)
  {
    outlined destroy of TaskPriority?(v58, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 176);
  v61 = *(v0 + 184);
  v62 = *(v0 + 168);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  outlined init with take of Actions.MetricsReportingContext(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 296);
  v63 = *(v0 + 304);
  v65 = *(v0 + 288);
  v66 = *(v0 + 240);
  v67 = *(v0 + 224);
  v68 = *(v0 + 208);
  v69 = *(v0 + 184);
  v70 = *(v0 + 320);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  outlined consume of MetricsEvent.Click.ActionDetails(v65, v64, v63, v70, SBYTE1(v70));
  _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v69, type metadata accessor for MetricsEvent.Click);
  outlined destroy of TaskPriority?(v68, &_s10Foundation3URLVSgMd);

  return _swift_task_switch(closure #5 in Actions.DeleteOrRemoveDownload.Context.init<A>(item:library:presentationSource:metricsReportingContext:), 0, 0);
}

uint64_t sub_100079D78()
{
  v1 = *(v0 + 16);
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd) - 8);
  v3 = *(v2 + 64);
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v5 = *(v1 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v4;
  v8 = type metadata accessor for Actions.MetricsReportingContext();
  if (!(*(*(v8 - 8) + 48))(v0 + v4, 1, v8))
  {
    v16 = v3;
    if (*(v7 + 8) >= 0xDuLL)
    {
    }

    v9 = v7 + *(v8 + 20);
    v10 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {

      v15 = *(v10 + 24);
      v11 = type metadata accessor for URL();
      v13 = *(v11 - 8);
      v14 = v11;
      if (!(*(v13 + 48))(v9 + v15, 1))
      {
        (*(v13 + 8))(v9 + v15, v14);
      }
    }

    v3 = v16;
  }

  (*(v5 + 8))(v0 + ((v4 + v3 + v6) & ~v6), v1);

  return swift_deallocObject();
}

uint64_t partial apply for closure #3 in Actions.RemoveDownload.Context.init<A>(item:library:showConfirmationDialog:presentationSource:metricsReportingContext:)()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #3 in Actions.RemoveDownload.Context.init<A>(item:library:showConfirmationDialog:presentationSource:metricsReportingContext:)(v0 + v5, v0 + v6, v2, v3);
}

uint64_t sub_10007A188()
{

  return swift_deallocObject();
}

uint64_t closure #1 in MusicLibrary.SupportedStatus<>.actionSupportedStatus.getter(uint64_t a1)
{
  v2 = type metadata accessor for MusicLibrary.RemoveDownloadAction.UnsupportedReason();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for MusicLibrary.RemoveDownloadAction.UnsupportedReason.unsupportedType(_:))
  {
    return 0xD000000000000010;
  }

  if (v6 == enum case for MusicLibrary.RemoveDownloadAction.UnsupportedReason.removalNotPermitted(_:))
  {
    return 0xD000000000000015;
  }

  if (v6 == enum case for MusicLibrary.RemoveDownloadAction.UnsupportedReason.notDownloaded(_:))
  {
    return 0x6E776F6420746F4ELL;
  }

  if (v6 == enum case for MusicLibrary.RemoveDownloadAction.UnsupportedReason.sharedLibrary(_:))
  {
    return 0x61685320656D6F48;
  }

  if (v6 == enum case for MusicLibrary.RemoveDownloadAction.UnsupportedReason.cloudLibraryInitialImport(_:))
  {
    return 0xD00000000000001CLL;
  }

  (*(v3 + 8))(v5, v2);
  return 0x206E776F6E6B6E55;
}

{
  v2 = type metadata accessor for MusicLibrary.DislikeAction.UnsupportedReason();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v15 - v7;
  v9 = *(v3 + 16);
  v9(&v15 - v7, a1, v2);
  v10 = (*(v3 + 88))(v8, v2);
  if (v10 == enum case for MusicLibrary.DislikeAction.UnsupportedReason.unsupportedType(_:))
  {
    return 0xD000000000000010;
  }

  if (v10 == enum case for MusicLibrary.DislikeAction.UnsupportedReason.alreadyDisliked(_:))
  {
    return 0xD000000000000010;
  }

  if (v10 == enum case for MusicLibrary.DislikeAction.UnsupportedReason.cannotDislikeWhenFavorited(_:))
  {
    v12 = 13;
    return v12 | 0xD000000000000010;
  }

  if (v10 == enum case for MusicLibrary.DislikeAction.UnsupportedReason.cannotDislikeWhenLiked(_:))
  {
LABEL_8:
    v12 = 9;
    return v12 | 0xD000000000000010;
  }

  if (v10 == enum case for MusicLibrary.DislikeAction.UnsupportedReason.subscriptionRequired(_:))
  {
    v12 = 5;
    return v12 | 0xD000000000000010;
  }

  if (v10 == enum case for MusicLibrary.DislikeAction.UnsupportedReason.cloudLibraryRequired(_:))
  {
    return 0xD000000000000016;
  }

  if (v10 == enum case for MusicLibrary.DislikeAction.UnsupportedReason.networkRequired(_:))
  {
    return 0xD000000000000010;
  }

  if (v10 == enum case for MusicLibrary.DislikeAction.UnsupportedReason.sharedLibrary(_:))
  {
    return 0x6C20646572616853;
  }

  if (v10 == enum case for MusicLibrary.DislikeAction.UnsupportedReason.cloudLibraryInitialImport(_:))
  {
    goto LABEL_8;
  }

  v15 = 0;
  v16 = 0xE000000000000000;
  _StringGuts.grow(_:)(17);

  v15 = 0x206E776F6E6B6E55;
  v16 = 0xEF206E6F73616572;
  v9(v6, a1, v2);
  v13._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v13);

  v14 = v15;
  (*(v3 + 8))(v8, v2);
  return v14;
}

uint64_t objectdestroyTm_3()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 40) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #2 in Actions.RemoveDownload.Context.init<A>(item:library:showConfirmationDialog:presentationSource:metricsReportingContext:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = (*(*(v6 - 8) + 80) + 40) & ~*(*(v6 - 8) + 80);
  v9 = *(v2 + ((*(*(v6 - 8) + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #1 in closure #2 in Actions.RemoveDownload.Context.init<A>(item:library:showConfirmationDialog:presentationSource:metricsReportingContext:)(a1, a2, v2 + v8, v9, v6, v7);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10007A5D8()
{
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 72);
  if (v1 != 255)
  {
    outlined consume of PresentationSource.Position.Source(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), v1);
  }

  if (*(v0 + 88))
  {
  }

  if (*(v0 + 104))
  {
  }

  if (*(v0 + 136))
  {
  }

  return swift_deallocObject();
}

uint64_t static Actions.RemoveFromPlaylist.action(context:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = a1[2];
  *(a2 + 48) = 47;
  *(a2 + 56) = closure #1 in static Actions.AddToLibrary.action(context:);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &async function pointer to closure #2 in static Actions.RemoveFromPlaylist.action(context:);
  *(a2 + 88) = 0;
  *(a2 + 96) = &async function pointer to closure #3 in static Actions.RemoveFromPlaylist.action(context:);
  *(a2 + 104) = 0;
}

uint64_t protocol witness for static ActionDefinition.action(context:) in conformance Actions.RemoveFromPlaylist@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 40);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = v2;
  *(a2 + 48) = 47;
  *(a2 + 56) = closure #1 in static Actions.AddToLibrary.action(context:);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &async function pointer to closure #2 in static Actions.RemoveFromPlaylist.action(context:);
  *(a2 + 88) = 0;
  *(a2 + 96) = &async function pointer to closure #3 in static Actions.RemoveFromPlaylist.action(context:);
  *(a2 + 104) = 0;
}

uint64_t (*Actions.RemoveFromPlaylist.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  strcpy((v0 + 16), "minus.circle");
  *(v0 + 29) = 0;
  *(v0 + 30) = -5120;
  v1 = swift_allocObject();
  strcpy((v1 + 16), "minus.circle");
  *(v1 + 29) = 0;
  *(v1 + 30) = -5120;
  return _s9MusicCore19ActionMenuItemImageV10systemNameACSS_tcfc7SwiftUI0F0VSgyYbcfU_TA_0;
}

uint64_t (*protocol witness for ActionMenuItemConfiguring.menuItemImage.getter in conformance Actions.RemoveFromPlaylist.Context())()
{
  v0 = swift_allocObject();
  strcpy((v0 + 16), "minus.circle");
  *(v0 + 29) = 0;
  *(v0 + 30) = -5120;
  v1 = swift_allocObject();
  strcpy((v1 + 16), "minus.circle");
  *(v1 + 29) = 0;
  *(v1 + 30) = -5120;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

uint64_t Actions.RemoveFromPlaylist.Context.init(entry:playlist:library:metricsReportingContext:)@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t (**a5)()@<X8>)
{
  v44 = a3;
  v45 = a4;
  v48 = a1;
  v46 = a5;
  v6 = type metadata accessor for Playlist.Entry();
  v40 = *(v6 - 8);
  v41 = v6;
  v47 = *(v40 + 64);
  v7 = __chkstk_darwin(v6);
  v43 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v37 - v9;
  v38 = &v37 - v9;
  v11 = type metadata accessor for Playlist();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v37 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v37 - v15;
  (*(v12 + 16))(&v37 - v15, a2, v11);
  v17 = *(v12 + 80);
  v39 = v17 | 7;
  v42 = swift_allocObject();
  v18 = *(v12 + 32);
  v18(v42 + ((v17 + 16) & ~v17), v16, v11);
  v19 = v40;
  v20 = v10;
  v21 = v41;
  (*(v40 + 16))(v20, v48, v41);
  v18(&v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v11);
  v22 = *(v19 + 80);
  v23 = v19;
  v24 = (v22 + 24) & ~v22;
  v25 = (v47 + v17 + v24) & ~v17;
  v26 = swift_allocObject();
  *(v26 + 16) = v44;
  v27 = *(v23 + 32);
  v27(v26 + v24, v38, v21);
  v18(v26 + v25, v37, v11);
  v28 = v43;
  v29 = v21;
  v27(v43, v48, v21);
  v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd) - 8);
  v31 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v32 = (*(v30 + 64) + v22 + v31) & ~v22;
  v33 = swift_allocObject();
  outlined init with take of URL?(v45, v33 + v31, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  result = (v27)(v33 + v32, v28, v29);
  v35 = v46;
  v36 = v42;
  *v46 = partial apply for closure #1 in Actions.RemoveFromPlaylist.Context.init(entry:playlist:library:metricsReportingContext:);
  v35[1] = v36;
  v35[2] = &async function pointer to partial apply for closure #2 in Actions.RemoveFromPlaylist.Context.init(entry:playlist:library:metricsReportingContext:);
  v35[3] = v26;
  v35[4] = &async function pointer to partial apply for closure #3 in Actions.RemoveFromPlaylist.Context.init(entry:playlist:library:metricsReportingContext:);
  v35[5] = v33;
  return result;
}

unint64_t closure #1 in Actions.RemoveFromPlaylist.Context.init(entry:playlist:library:metricsReportingContext:)()
{
  v0 = type metadata accessor for Playlist.EditableComponents();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE18EditableComponentsVSgMd);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  Playlist.editableComponents.getter();
  if ((*(v1 + 48))(v6, 1, v0) == 1)
  {
    outlined destroy of TaskPriority?(v6, &_s8MusicKit8PlaylistV0aB8InternalE18EditableComponentsVSgMd);
  }

  else
  {
    static Playlist.EditableComponents.tracklist.getter();
    lazy protocol witness table accessor for type Playlist.EditableComponents and conformance Playlist.EditableComponents();
    v7 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v8 = *(v1 + 8);
    v8(v3, v0);
    v8(v6, v0);
    if ((v7 & 1) != 0 && ![objc_opt_self() isRunningInStoreDemoMode])
    {
      return 0;
    }
  }

  return 0xD00000000000001ALL;
}

uint64_t closure #2 in Actions.RemoveFromPlaylist.Context.init(entry:playlist:library:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v6 = type metadata accessor for Playlist();
  v3[5] = v6;
  v3[6] = *(v6 - 8);
  v3[7] = swift_task_alloc();
  v7 = type metadata accessor for Playlist.Entry();
  v3[8] = v7;
  v3[9] = *(v7 - 8);
  v3[10] = swift_task_alloc();
  v8 = swift_task_alloc();
  v3[11] = v8;
  *v8 = v3;
  v8[1] = closure #2 in Actions.RemoveFromPlaylist.Context.init(entry:playlist:library:metricsReportingContext:);

  return MusicLibrary.remove(_:from:)(a2, a3);
}

uint64_t closure #2 in Actions.RemoveFromPlaylist.Context.init(entry:playlist:library:metricsReportingContext:)()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {

    return _swift_task_switch(closure #2 in Actions.RemoveFromPlaylist.Context.init(entry:playlist:library:metricsReportingContext:), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

{
  v37 = v0;
  if (one-time initialization token for actions != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v35 = v0[7];
  v5 = v0[5];
  v4 = v0[6];
  v7 = v0[3];
  v6 = v0[4];
  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.actions);
  (*(v2 + 16))(v1, v7, v3);
  (*(v4 + 16))(v35, v6, v5);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[9];
  v13 = v0[10];
  v14 = v0[7];
  v15 = v0[8];
  v17 = v0[5];
  v16 = v0[6];
  if (v11)
  {
    v32 = v0[12];
    v18 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v18 = 136446722;
    v33 = v10;
    v19 = Playlist.Entry.description.getter();
    log = v9;
    v21 = v20;
    (*(v12 + 8))(v13, v15);
    v22 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v19, v21, &v36);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2082;
    v23 = Playlist.description.getter();
    v25 = v24;
    (*(v16 + 8))(v14, v17);
    v26 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v23, v25, &v36);

    *(v18 + 14) = v26;
    *(v18 + 22) = 2082;
    v0[2] = v32;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v27 = String.init<A>(describing:)();
    v29 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v27, v28, &v36);

    *(v18 + 24) = v29;
    _os_log_impl(&_mh_execute_header, log, v33, "Failed to remove entry=%{public}s from playlist=%{public}s with error=%{public}s", v18, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v16 + 8))(v14, v17);
    (*(v12 + 8))(v13, v15);
  }

  v30 = v0[1];

  return v30();
}

uint64_t closure #3 in Actions.RemoveFromPlaylist.Context.init(entry:playlist:library:metricsReportingContext:)(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore12MetricsEventV4PageVSgMd);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = type metadata accessor for MetricsEvent.Click(0);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  v2[28] = swift_task_alloc();
  v3 = type metadata accessor for Actions.MetricsReportingContext();
  v2[29] = v3;
  v2[30] = *(v3 - 8);
  v2[31] = swift_task_alloc();

  return _swift_task_switch(closure #3 in Actions.RemoveFromPlaylist.Context.init(entry:playlist:library:metricsReportingContext:), 0, 0);
}

uint64_t closure #3 in Actions.RemoveFromPlaylist.Context.init(entry:playlist:library:metricsReportingContext:)()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 224);
  outlined init with copy of TaskPriority?(*(v0 + 96), v3, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 224), &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 216);
    outlined init with take of Actions.MetricsReportingContext(*(v0 + 224), *(v0 + 248), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 256) = Playlist.Entry.metricsTargetIdentifier.getter();
    *(v0 + 264) = v7;
    v8 = type metadata accessor for URL();
    *(v0 + 272) = v8;
    v9 = *(v8 - 8);
    v10 = *(v9 + 56);
    *(v0 + 280) = v10;
    *(v0 + 288) = (v9 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v10(v6, 1, 1, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore12MetricsEventV5ClickV13ActionDetailsO3KeyOGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004F2EF0;
    *(inited + 32) = Playlist.Entry.metricsContentType.getter();
    *(inited + 40) = v12;
    *(inited + 48) = 0;
    *(inited + 56) = xmmword_1004F2F20;
    *(inited + 72) = 2;
    *(v0 + 296) = specialized MetricsEvent.Click.ActionDetails.init(_:)(inited);
    *(v0 + 304) = v13;
    *(v0 + 312) = v14;
    *(v0 + 328) = v15;
    swift_setDeallocating();
    swift_arrayDestroy();
    type metadata accessor for MainActor();
    *(v0 + 320) = static MainActor.shared.getter();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(closure #3 in Actions.RemoveFromPlaylist.Context.init(entry:playlist:library:metricsReportingContext:), v17, v16);
  }
}

{
  v80 = *(v0 + 328);
  v73 = *(v0 + 296);
  v76 = *(v0 + 264);
  v78 = *(v0 + 312);
  v74 = *(v0 + 256);
  v1 = *(v0 + 248);
  v2 = *(v0 + 232);
  v4 = *(v0 + 208);
  v3 = *(v0 + 216);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  v7 = *(v0 + 168);
  v72 = *(v0 + 160);

  outlined init with copy of TaskPriority?(v3, v4, &_s10Foundation3URLVSgMd);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  outlined init with copy of TaskPriority?(v1 + v2[5], v7, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 9989;
  outlined init with take of URL?(v4, v6 + v5[7], &_s10Foundation3URLVSgMd);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  outlined init with copy of TaskPriority?(v7, v72, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 328);
  v17 = *(v0 + 304);
  v18 = *(v0 + 312);
  v19 = *(v0 + 296);
  v20 = *(v0 + 160);
  if (v15 == 1)
  {

    outlined copy of MetricsEvent.Click.ActionContext?(v75, v77);

    outlined copy of MetricsEvent.Click.ActionDetails(v19, v17, v18, v16, SBYTE1(v16));
    outlined destroy of TaskPriority?(v20, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    outlined copy of MetricsEvent.Click.ActionContext?(v75, v77);

    outlined copy of MetricsEvent.Click.ActionDetails(v19, v17, v18, v16, SBYTE1(v16));

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 168);
  v24 = *(v0 + 152);
  v25 = (*(v0 + 184) + *(*(v0 + 176) + 48));
  *v25 = v21;
  v25[1] = v22;
  outlined init with copy of TaskPriority?(v23, v24, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 152);
  if (v26 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 152), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 168);
  v31 = *(v0 + 144);
  v32 = (*(v0 + 184) + *(*(v0 + 176) + 52));
  *v32 = v28;
  v32[1] = v29;
  outlined init with copy of TaskPriority?(v30, v31, &_s9MusicCore12MetricsEventV4PageVSgMd);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 280);
    v34 = *(v0 + 272);
    v35 = *(v0 + 200);
    outlined destroy of TaskPriority?(*(v0 + 144), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 144);
    outlined init with copy of TaskPriority?(v36 + v14[6], *(v0 + 200), &_s10Foundation3URLVSgMd);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 168);
  v38 = *(v0 + 136);
  outlined init with take of URL?(*(v0 + 200), *(v0 + 184) + *(*(v0 + 176) + 56), &_s10Foundation3URLVSgMd);
  outlined init with copy of TaskPriority?(v37, v38, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 136);
  if (v39 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 136), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 168);
  v43 = *(v0 + 128);
  *(*(v0 + 184) + *(*(v0 + 176) + 60)) = v41;
  outlined init with copy of TaskPriority?(v42, v43, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 128);
  if (v44 == 1)
  {
    outlined destroy of TaskPriority?(v45, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 168);
  v48 = *(v0 + 120);
  *(*(v0 + 184) + *(*(v0 + 176) + 64)) = v46;
  outlined init with copy of TaskPriority?(v47, v48, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 120);
  if (v49 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 120), &_s9MusicCore12MetricsEventV4PageVSgMd);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 168);
  v55 = *(v0 + 112);
  v56 = (*(v0 + 184) + *(*(v0 + 176) + 72));
  *v56 = v51;
  v56[1] = v52;
  outlined init with take of URL?(v54, v55, &_s9MusicCore12MetricsEventV4PageVSgMd);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 112);
  if (v57 == 1)
  {
    outlined destroy of TaskPriority?(v58, &_s9MusicCore12MetricsEventV4PageVSgMd);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 184);
  v61 = *(v0 + 192);
  v62 = *(v0 + 176);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  outlined init with take of Actions.MetricsReportingContext(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 304);
  v63 = *(v0 + 312);
  v65 = *(v0 + 296);
  v66 = *(v0 + 248);
  v67 = *(v0 + 232);
  v68 = *(v0 + 216);
  v69 = *(v0 + 192);
  v70 = *(v0 + 328);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  outlined consume of MetricsEvent.Click.ActionDetails(v65, v64, v63, v70, SBYTE1(v70));
  _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v69, type metadata accessor for MetricsEvent.Click);
  outlined destroy of TaskPriority?(v68, &_s10Foundation3URLVSgMd);

  return _swift_task_switch(closure #3 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:), 0, 0);
}

uint64_t specialized Actions.RemoveFromPlaylist.Context.menuItemTitle.getter()
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

uint64_t sub_10007C36C()
{

  return swift_deallocObject();
}

uint64_t sub_10007C3A4()
{
  v1 = type metadata accessor for Playlist();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

unint64_t partial apply for closure #1 in Actions.RemoveFromPlaylist.Context.init(entry:playlist:library:metricsReportingContext:)()
{
  type metadata accessor for Playlist();

  return closure #1 in Actions.RemoveFromPlaylist.Context.init(entry:playlist:library:metricsReportingContext:)();
}

uint64_t sub_10007C48C()
{
  v1 = type metadata accessor for Playlist.Entry();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for Playlist();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in Actions.RemoveFromPlaylist.Context.init(entry:playlist:library:metricsReportingContext:)()
{
  v2 = *(type metadata accessor for Playlist.Entry() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for Playlist() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #2 in Actions.RemoveFromPlaylist.Context.init(entry:playlist:library:metricsReportingContext:)(v7, v0 + v3, v0 + v6);
}

uint64_t sub_10007C710()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for Playlist.Entry();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v2;
  v8 = type metadata accessor for Actions.MetricsReportingContext();
  if (!(*(*(v8 - 8) + 48))(v0 + v2, 1, v8))
  {
    v16 = v3;
    if (*(v7 + 8) >= 0xDuLL)
    {
    }

    v9 = v7 + *(v8 + 20);
    v10 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {

      v15 = *(v10 + 24);
      v11 = type metadata accessor for URL();
      v13 = *(v11 - 8);
      v14 = v11;
      if (!(*(v13 + 48))(v9 + v15, 1))
      {
        (*(v13 + 8))(v9 + v15, v14);
      }
    }

    v3 = v16;
  }

  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t partial apply for closure #3 in Actions.RemoveFromPlaylist.Context.init(entry:playlist:library:metricsReportingContext:)()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for Playlist.Entry() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #3 in Actions.RemoveFromPlaylist.Context.init(entry:playlist:library:metricsReportingContext:)(v0 + v3, v0 + v6);
}

unint64_t lazy protocol witness table accessor for type Playlist.EditableComponents and conformance Playlist.EditableComponents()
{
  result = lazy protocol witness table cache variable for type Playlist.EditableComponents and conformance Playlist.EditableComponents;
  if (!lazy protocol witness table cache variable for type Playlist.EditableComponents and conformance Playlist.EditableComponents)
  {
    type metadata accessor for Playlist.EditableComponents();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Playlist.EditableComponents and conformance Playlist.EditableComponents);
  }

  return result;
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = "gMusicTabsDictionary";
      v3 = 0xD000000000000025;
    }

    else
    {
      v4 = "countUniqueIdentifier";
      v3 = 0xD000000000000014;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0xD000000000000024;
    }

    else
    {
      v3 = 0xD00000000000001FLL;
    }

    if (v2)
    {
      v4 = "UserRequestedSubscriptionHidden";
    }

    else
    {
      v4 = "sharePlayTogether";
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v5 = 0xD000000000000025;
    }

    else
    {
      v5 = 0xD000000000000014;
    }

    if (a2 == 2)
    {
      v6 = "gMusicTabsDictionary";
    }

    else
    {
      v6 = "countUniqueIdentifier";
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0xD000000000000024;
    }

    else
    {
      v5 = 0xD00000000000001FLL;
    }

    if (a2)
    {
      v6 = "UserRequestedSubscriptionHidden";
    }

    else
    {
      v6 = "sharePlayTogether";
    }
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

{
  v2 = 0xE900000000000064;
  v3 = 0x657469726F766166;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x64656B696C736964;
    }

    else
    {
      v5 = 0x726F707075736E75;
    }

    if (v4 == 2)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xEB00000000646574;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6C61727475656ELL;
    }

    else
    {
      v5 = 0x657469726F766166;
    }

    if (v4)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE900000000000064;
    }
  }

  v7 = 0xE800000000000000;
  v8 = 0x64656B696C736964;
  if (a2 != 2)
  {
    v8 = 0x726F707075736E75;
    v7 = 0xEB00000000646574;
  }

  if (a2)
  {
    v3 = 0x6C61727475656ELL;
    v2 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0x7473696C79616C70;
  v5 = 0xE900000000000073;
  if (a1 != 5)
  {
    v4 = 0x73676E6F73;
    v5 = 0xE500000000000000;
  }

  v6 = 0x59726F466564616DLL;
  v7 = 0xEA0000000000756FLL;
  if (a1 != 3)
  {
    v6 = 0x646956636973756DLL;
    v7 = 0xEB00000000736F65;
  }

  if (a1 <= 4u)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0xE700000000000000;
  v9 = 0x73747369747261;
  if (a1 != 1)
  {
    v9 = 0x74616C69706D6F63;
    v8 = 0xEC000000736E6F69;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x736D75626C61;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE700000000000000;
        if (v10 != 0x73747369747261)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xEC000000736E6F69;
        if (v10 != 0x74616C69706D6F63)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x736D75626C61)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE900000000000073;
      if (v10 != 0x7473696C79616C70)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x73676E6F73)
      {
LABEL_39:
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xEA0000000000756FLL;
    if (v10 != 0x59726F466564616DLL)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xEB00000000736F65;
    if (v10 != 0x646956636973756DLL)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

{
  v2 = 0xED0000726564724FLL;
  v3 = 0x7473696C79616C70;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x656C746974;
    }

    else
    {
      v5 = 0x7473696C79616C70;
    }

    if (v4)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xED0000726564724FLL;
    }
  }

  else if (a1 == 2)
  {
    v6 = 0xE600000000000000;
    v5 = 0x747369747261;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x6D75626C61;
    }

    else
    {
      v5 = 0x44657361656C6572;
    }

    if (v4 == 3)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xEB00000000657461;
    }
  }

  v7 = 0xE600000000000000;
  v8 = 0x747369747261;
  v9 = 0xE500000000000000;
  v10 = 0x6D75626C61;
  if (a2 != 3)
  {
    v10 = 0x44657361656C6572;
    v9 = 0xEB00000000657461;
  }

  if (a2 != 2)
  {
    v8 = v10;
    v7 = v9;
  }

  if (a2)
  {
    v3 = 0x656C746974;
    v2 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v7;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v13 & 1;
}

{
  v2 = "updateServerLandingPages";
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = "ribedPlaylistsDate";
      v4 = 0xD000000000000028;
    }

    else
    {
      v5 = "efreshServerLandingPages";
      v4 = 0xD000000000000027;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xD000000000000032;
    }

    else
    {
      v4 = 0xD00000000000002FLL;
    }

    if (v3)
    {
      v5 = "efreshPinnedSubscribedPlaylists";
    }

    else
    {
      v5 = "updateServerLandingPages";
    }
  }

  if (a2 > 1u)
  {
    v2 = "ribedPlaylistsDate";
    v6 = "efreshServerLandingPages";
    v7 = a2 == 2;
    if (a2 == 2)
    {
      v8 = 0xD000000000000028;
    }

    else
    {
      v8 = 0xD000000000000027;
    }
  }

  else
  {
    v6 = "efreshPinnedSubscribedPlaylists";
    v7 = a2 == 0;
    if (a2)
    {
      v8 = 0xD000000000000032;
    }

    else
    {
      v8 = 0xD00000000000002FLL;
    }
  }

  if (v7)
  {
    v9 = v2;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && (v5 | 0x8000000000000000) == (v9 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x686372616573;
  if (a1 != 5)
  {
    v5 = 0x6F65646976;
    v4 = 0xE500000000000000;
  }

  v6 = 0xE600000000000000;
  v7 = 0x6573776F7262;
  if (a1 != 3)
  {
    v7 = 0x6F69646172;
    v6 = 0xE500000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE700000000000000;
  v9 = 0x756F795F726F66;
  if (a1 != 1)
  {
    v9 = 0x6E5F6E657473696CLL;
    v8 = 0xEA0000000000776FLL;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x636973756D5F796DLL;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE700000000000000;
        if (v10 != 0x756F795F726F66)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xEA0000000000776FLL;
        if (v10 != 0x6E5F6E657473696CLL)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x636973756D5F796DLL)
      {
        goto LABEL_39;
      }
    }

    goto LABEL_37;
  }

  if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x686372616573)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }

    v12 = 0xE500000000000000;
    v13 = 1701079414;
  }

  else
  {
    if (a2 == 3)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x6573776F7262)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }

    v12 = 0xE500000000000000;
    v13 = 1768186226;
  }

  if (v10 != (v13 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000))
  {
LABEL_39:
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_40;
  }

LABEL_37:
  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v14 = 1;
LABEL_40:

  return v14 & 1;
}

{
  v2 = 0xE900000000000064;
  v3 = 0x6564696365646E75;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6269726373627573;
    }

    else
    {
      v5 = 0x6275536563696F76;
    }

    if (v4 == 2)
    {
      v6 = 0xEA00000000007265;
    }

    else
    {
      v6 = 0xEF72656269726373;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x63697373616C63;
    }

    else
    {
      v5 = 0x6564696365646E75;
    }

    if (v4)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE900000000000064;
    }
  }

  v7 = 0x6269726373627573;
  v8 = 0xEA00000000007265;
  if (a2 != 2)
  {
    v7 = 0x6275536563696F76;
    v8 = 0xEF72656269726373;
  }

  if (a2)
  {
    v3 = 0x63697373616C63;
    v2 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xEA00000000007373;
  v5 = 0x6574656C706D6F63;
  if (a1 == 2)
  {
    v5 = 0x6572676F72506E69;
  }

  else
  {
    v4 = 0xE900000000000064;
  }

  v6 = 0xD00000000000001ELL;
  if (a1)
  {
    v6 = 0x6E776F6E6B6E75;
  }

  else
  {
    v3 = 0x80000001004C3F70;
  }

  if (a1 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  if (v2 <= 1)
  {
    v8 = v3;
  }

  else
  {
    v8 = v4;
  }

  if (a2 > 1u)
  {
    v11 = a2 == 2;
    v10 = 0xEA00000000007373;
    v9 = 0xE900000000000064;
    if (a2 == 2)
    {
      v12 = 0x6572676F72506E69;
    }

    else
    {
      v12 = 0x6574656C706D6F63;
    }
  }

  else
  {
    v9 = 0xE700000000000000;
    v10 = 0x80000001004C3F70;
    v11 = a2 == 0;
    if (a2)
    {
      v12 = 0x6E776F6E6B6E75;
    }

    else
    {
      v12 = 0xD00000000000001ELL;
    }
  }

  if (v11)
  {
    v13 = v10;
  }

  else
  {
    v13 = v9;
  }

  if (v7 == v12 && v8 == v13)
  {
    v14 = 1;
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v14 & 1;
}

{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x736F65646976;
  if (a1 != 5)
  {
    v5 = 0x7473696C79616C70;
    v4 = 0xE900000000000073;
  }

  v6 = 0xE500000000000000;
  v7 = 0x6F69646172;
  if (a1 != 3)
  {
    v7 = 0x686372616573;
    v6 = 0xE600000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0x6F4E6E657473696CLL;
  v9 = 0xE900000000000077;
  if (a1 != 1)
  {
    v8 = 0x6573776F7262;
    v9 = 0xE600000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x7972617262696CLL;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE900000000000077;
        if (v10 != 0x6F4E6E657473696CLL)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xE600000000000000;
        if (v10 != 0x6573776F7262)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x7972617262696CLL)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x736F65646976)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE900000000000073;
      if (v10 != 0x7473696C79616C70)
      {
LABEL_39:
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xE500000000000000;
    if (v10 != 0x6F69646172)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xE600000000000000;
    if (v10 != 0x686372616573)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

{
  v2 = 0x6D75626C41;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x7473696C79616C50;
    }

    else
    {
      v4 = 0x434174726F706552;
    }

    if (v3 == 2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xEE006E7265636E6FLL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x747369747241;
    }

    else
    {
      v4 = 0x6D75626C41;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0xE800000000000000;
  v8 = 0x7473696C79616C50;
  if (a2 != 2)
  {
    v8 = 0x434174726F706552;
    v7 = 0xEE006E7265636E6FLL;
  }

  if (a2)
  {
    v2 = 0x747369747241;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
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

{
  v2 = 1819047270;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6C6F686563616C70;
    }

    else
    {
      v4 = 0x73756F6976657270;
    }

    if (v3 == 2)
    {
      v5 = 0xEB00000000726564;
    }

    else
    {
      v5 = 0xEF6E776F6853796CLL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6C616974726170;
    }

    else
    {
      v4 = 1819047270;
    }

    if (v3)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0x6C6F686563616C70;
  v8 = 0xEB00000000726564;
  if (a2 != 2)
  {
    v7 = 0x73756F6976657270;
    v8 = 0xEF6E776F6853796CLL;
  }

  if (a2)
  {
    v2 = 0x6C616974726170;
    v6 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
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

uint64_t Actions.SortPlaylist.Context.currentSort.getter()
{
  if (*(v0 + 2))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return v1 | *(v0 + 1);
}

uint64_t Actions.SortPlaylist.Context.currentSort.setter(uint64_t result)
{
  *(v1 + 1) = result;
  *(v1 + 2) = BYTE1(result) & 1;
  return result;
}

uint64_t Actions.SortPlaylist.Context.playlistVariant.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Actions.SortPlaylist.Context() + 24);

  return outlined init with copy of Playlist.Variant?(v3, a1);
}

uint64_t type metadata accessor for Actions.SortPlaylist.Context()
{
  result = type metadata singleton initialization cache for Actions.SortPlaylist.Context;
  if (!type metadata singleton initialization cache for Actions.SortPlaylist.Context)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of Playlist.Variant?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Actions.SortPlaylist.Context.playlistVariant.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Actions.SortPlaylist.Context() + 24);

  return outlined assign with take of Playlist.Variant?(a1, v3);
}

uint64_t outlined assign with take of Playlist.Variant?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Actions.SortPlaylist.Context.didSelectSort.getter()
{
  v1 = *(v0 + *(type metadata accessor for Actions.SortPlaylist.Context() + 28));

  return v1;
}

uint64_t Actions.SortPlaylist.Context.didSelectSort.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Actions.SortPlaylist.Context() + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Actions.SortPlaylist.Context.init(sortOption:currentSort:playlistVariant:didSelectSort:)@<X0>(char a1@<W0>, __int16 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v12 = type metadata accessor for Actions.SortPlaylist.Context();
  v13 = *(v12 + 24);
  v14 = type metadata accessor for Playlist.Variant();
  (*(*(v14 - 8) + 56))(&a6[v13], 1, 1, v14);
  *a6 = a1;
  a6[1] = a2;
  a6[2] = HIBYTE(a2) & 1;
  result = outlined assign with take of Playlist.Variant?(a3, &a6[v13]);
  v16 = &a6[*(v12 + 28)];
  *v16 = a4;
  v16[1] = a5;
  return result;
}

int *static Actions.SortPlaylist.action(context:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Actions.SortPlaylist.Context();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4 - 8);
  v8 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  outlined init with copy of Actions.SortPlaylist.Context(a1, &v18 - v9);
  v11 = *a1 + 14;
  outlined init with copy of Actions.SortPlaylist.Context(a1, v8);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  outlined init with take of Actions.SortPlaylist.Context(v8, v13 + v12);
  outlined init with take of Actions.SortPlaylist.Context(v10, a2);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMd);
  *(a2 + result[9]) = v11;
  *(a2 + result[11]) = 0x4014000000000000;
  v15 = (a2 + result[10]);
  *v15 = variable initialization expression of _NSRange.NSRangeIterator.current;
  v15[1] = 0;
  v16 = (a2 + result[12]);
  *v16 = &async function pointer to partial apply for closure #2 in static Actions.SortPlaylist.action(context:);
  v16[1] = v13;
  v17 = (a2 + result[13]);
  *v17 = &async function pointer to closure #3 in static Actions.SortPlaylist.action(context:);
  v17[1] = 0;
  return result;
}

uint64_t outlined init with copy of Actions.SortPlaylist.Context(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Actions.SortPlaylist.Context();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t closure #2 in static Actions.SortPlaylist.action(context:)()
{
  v1 = *(v0 + 16);
  v2 = *v1;
  *(v0 + 52) = v2;
  if (specialized == infix<A>(_:_:)(v2, v1[1]))
  {
    v3 = 0;
    v4 = *(v0 + 16);
    v5 = *(v4 + 2);
    v6 = 256;
  }

  else
  {
    v6 = 0;
    v5 = v2 < 4;
    v4 = *(v0 + 16);
    v3 = 256;
  }

  *(v0 + 53) = v5;
  *(v0 + 50) = v3;
  *(v0 + 48) = v6;
  v7 = (v4 + *(type metadata accessor for Actions.SortPlaylist.Context() + 28));
  *(v0 + 24) = *v7;
  *(v0 + 32) = v7[1];
  type metadata accessor for MainActor();
  *(v0 + 40) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #2 in static Actions.SortPlaylist.action(context:), v9, v8);
}

{
  v1 = *(v0 + 24);
  v2 = *(v0 + 52);
  if (*(v0 + 53))
  {
    v3 = (v0 + 50);
  }

  else
  {
    v3 = (v0 + 48);
  }

  v4 = *v3;

  v1(v4 | v2);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10007E468()
{
  v1 = type metadata accessor for Actions.SortPlaylist.Context();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = *(v1 + 24);
  v4 = type metadata accessor for Playlist.Variant();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t outlined init with take of Actions.SortPlaylist.Context(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Actions.SortPlaylist.Context();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #2 in static Actions.SortPlaylist.action(context:)(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for Actions.SortPlaylist.Context() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #2 in static Actions.SortPlaylist.action(context:)(a1, a2, v2 + v7);
}

uint64_t Actions.SortPlaylist.TrackListSort.init(option:isAscending:)(unsigned __int8 a1, char a2)
{
  if (a2)
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 0xFFFFFF00 | a1;
}