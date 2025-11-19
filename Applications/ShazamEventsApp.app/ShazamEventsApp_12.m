uint64_t sub_10017DC0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v38 = a2;
  v5 = sub_100009F70(&qword_10021B1F8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v33 - v7;
  v9 = type metadata accessor for Music.Artist();
  v35 = *(v9 - 8);
  v36 = v9;
  __chkstk_darwin(v9);
  v34 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Music();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + *(*v2 + 128)) = 0;
  v15 = (v2 + *(*v2 + 136));
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  *(v2 + *(*v2 + 144)) = 1;
  *(v2 + *(*v2 + 152)) = 0;
  *(v2 + *(*v2 + 160)) = 0;
  v16 = (v3 + *(*v3 + 168));
  *v16 = 0u;
  v16[1] = 0u;
  v17 = *(*v2 + 176);
  v18 = type metadata accessor for UserInterfaceSizeClass();
  (*(*(v18 - 8) + 56))(v2 + v17, 1, 1, v18);
  *(v2 + *(*v2 + 184)) = 0;
  *(v2 + *(*v2 + 192)) = 0;
  v19 = v3 + *(*v3 + 200);
  *v19 = 0;
  *(v19 + 8) = 1;
  *(v2 + *(*v2 + 208)) = 0;
  v20 = *(*v2 + 216);
  v21 = type metadata accessor for PromotionalContent.Video();
  (*(*(v21 - 8) + 56))(v3 + v20, 1, 1, v21);
  ObservationRegistrar.init()();
  v22 = *(v12 + 16);
  v22(v3 + *(*v3 + 112), a1, v11);
  v37 = v14;
  v22(v14, a1, v11);
  Music.lineup.getter();
  v23 = sub_10000D1EC(&qword_10021B1F0, &qword_10021B1F8);
  v24 = (*(v23 + 40))(v5, v23);
  (*(v6 + 8))(v8, v5);
  if (*(v24 + 16))
  {
    v26 = v34;
    v25 = v35;
    v27 = v36;
    (*(v35 + 16))(v34, v24 + ((*(v25 + 80) + 32) & ~*(v25 + 80)), v36);

    v28 = Music.Artist.name.getter();
    v30 = v29;
    (*(v25 + 8))(v26, v27);
  }

  else
  {

    v28 = 0;
    v30 = 0;
  }

  sub_100009F70(&qword_1002221A8);
  swift_allocObject();
  v31 = sub_10017E278(v37, v28, v30, v38);
  (*(v12 + 8))(a1, v11);
  *(v3 + *(*v3 + 120)) = v31;
  return v3;
}

uint64_t sub_10017E178(uint64_t a1)
{
  v2 = sub_100009F70(&qword_100219278);
  __chkstk_darwin(v2 - 8);
  sub_10000D58C(a1, &v5 - v3, &qword_100219278);
  return EnvironmentValues.horizontalSizeClass.setter();
}

uint64_t sub_10017E220@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10016A528();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10017E278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_100009F70(&qword_1002221B0);
  __chkstk_darwin(v10 - 8);
  v12 = v30 - v11;
  v13 = *(*v5 + 144);
  v14 = type metadata accessor for Playlist();
  (*(*(v14 - 8) + 56))(v5 + v13, 1, 1, v14);
  *(v5 + *(*v5 + 152)) = 0;
  ObservationRegistrar.init()();
  v15 = *(*v5 + 112);
  v16 = type metadata accessor for Music();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v5 + v15, a1, v16);
  v18 = (v5 + *(*v5 + 120));
  *v18 = a2;
  v18[1] = a3;
  *(v5 + *(*v5 + 128)) = a4;
  v19 = Music.playlists.getter();
  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = v19;
    v22 = type metadata accessor for Playlist();
    v23 = *(v22 - 8);
    (*(v23 + 16))(v12, v21 + ((*(v23 + 80) + 32) & ~*(v23 + 80)), v22);

    (*(v23 + 56))(v12, 0, 1, v22);
  }

  else
  {

    v24 = type metadata accessor for Playlist();
    (*(*(v24 - 8) + 56))(v12, 1, 1, v24);
  }

  v25 = v20 != 0;
  v26 = sub_10000D52C(v12, &qword_1002221B0);
  *(v5 + *(*v5 + 136)) = v25;
  v27 = *(*v5 + 152);
  if ((v25 ^ *(v5 + v27)))
  {
    __chkstk_darwin(v26);
    v30[-4] = v16;
    v30[-3] = type metadata accessor for AppleMusicFetcher();
    v30[-2] = sub_100180C60(&qword_10021CE98, &type metadata accessor for Music);
    v30[-1] = sub_100180C60(&qword_10021AFB0, type metadata accessor for AppleMusicFetcher);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v30[-2] = v5;
    LOBYTE(v30[-1]) = v25;
    v30[1] = v5;
    sub_10000D1EC(&qword_1002221B8, &qword_1002221A8);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    (*(v17 + 8))(a1, v16);
  }

  else
  {
    (*(v17 + 8))(a1, v16);
    *(v5 + v27) = v25;
  }

  return v5;
}

uint64_t sub_10017E748@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v68 = a1;
  v69 = sub_100009F70(&qword_100222168);
  __chkstk_darwin(v69);
  v4 = (&v54 - v3);
  v59 = type metadata accessor for Music();
  v58 = *(v59 - 8);
  v5 = __chkstk_darwin(v59);
  v55 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v57 = &v54 - v7;
  v63 = sub_100009F70(&qword_10021B968);
  __chkstk_darwin(v63);
  v56 = (&v54 - v8);
  v65 = sub_100009F70(&qword_100222170);
  __chkstk_darwin(v65);
  v67 = &v54 - v9;
  v60 = sub_100009F70(&qword_10021B978);
  __chkstk_darwin(v60);
  v62 = &v54 - v10;
  v66 = sub_100009F70(&qword_10021B980);
  __chkstk_darwin(v66);
  v64 = &v54 - v11;
  v61 = sub_100009F70(&qword_10021B988);
  __chkstk_darwin(v61);
  v13 = (&v54 - v12);
  v14 = sub_100009F70(&qword_1002196F8);
  __chkstk_darwin(v14);
  v16 = &v54 - v15;
  v17 = *(v1 + 3);
  v70 = type metadata accessor for PromotionalAssetsFetcher();
  v71 = sub_100180C60(&qword_100222178, type metadata accessor for PromotionalAssetsFetcher);
  swift_getKeyPath();
  v72[3] = v17;
  sub_10000D1EC(&qword_100222180, &qword_1002196F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v18 = *(*v17 + 96);
  swift_beginAccess();
  sub_10000D58C(v17 + v18, v16, &qword_1002196F8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v20 = v58;
      v21 = v57;
      v22 = v59;
      (*(v58 + 32))(v57, v16, v59);
      v23 = v55;
      (*(v20 + 16))(v55, v21, v22);
      type metadata accessor for AppleMusicFetcher();
      v24 = swift_allocObject();
      swift_defaultActor_initialize();
      sub_100009F70(&qword_100222188);
      swift_allocObject();
      v72[0] = sub_10017DC0C(v23, v24);
      State.init(wrappedValue:)();
      v25 = *(&v74 + 1);
      *v4 = v74;
      v4[1] = v25;
      type metadata accessor for RemoteViewConfiguration();
      sub_100180C60(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
      v4[2] = EnvironmentObject.init()();
      v4[3] = v26;
      v27 = v69;
      v28 = *(v69 + 56);
      *(v4 + v28) = swift_getKeyPath();
      sub_100009F70(&qword_100219710);
      swift_storeEnumTagMultiPayload();
      v29 = v27[15];
      *(v4 + v29) = swift_getKeyPath();
      sub_100009F70(&qword_100219718);
      swift_storeEnumTagMultiPayload();
      v30 = v27[16];
      *(v4 + v30) = swift_getKeyPath();
      sub_100009F70(&qword_1002196E8);
      swift_storeEnumTagMultiPayload();
      v31 = v27[17];
      *(v4 + v31) = swift_getKeyPath();
      swift_storeEnumTagMultiPayload();
      sub_10000D58C(v4, v67, &qword_100222168);
      swift_storeEnumTagMultiPayload();
      sub_100080A3C();
      sub_10000D1EC(&qword_100222190, &qword_100222168);
      _ConditionalContent<>.init(storage:)();
      sub_10000D52C(v4, &qword_100222168);
      return (*(v20 + 8))(v21, v22);
    }

    *v13 = swift_getKeyPath();
    sub_100009F70(&qword_100219710);
    swift_storeEnumTagMultiPayload();
    v47 = (v13 + *(type metadata accessor for LoadingView() + 20));
    type metadata accessor for RemoteViewConfiguration();
    sub_100180C60(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
    *v47 = EnvironmentObject.init()();
    v47[1] = v48;
    v49 = *v2;
    v75 = *(v2 + 16);
    v73 = v2[2];
    v74 = v49;
    v50 = swift_allocObject();
    v51 = v2[1];
    v50[1] = *v2;
    v50[2] = v51;
    v50[3] = v2[2];
    v52 = (v13 + *(v61 + 36));
    type metadata accessor for _TaskModifier();
    sub_1001809D4(&v74, v72);

    sub_10000D58C(&v73, v72, &qword_10021B9F0);
    static TaskPriority.userInitiated.getter();
    *v52 = &unk_1001BBE88;
    v52[1] = v50;
    v44 = &qword_10021B988;
    sub_10000D58C(v13, v62, &qword_10021B988);
    swift_storeEnumTagMultiPayload();
    sub_100080AC8();
    sub_100080BB4();
    v53 = v64;
    _ConditionalContent<>.init(storage:)();
    sub_10000D58C(v53, v67, &qword_10021B980);
    swift_storeEnumTagMultiPayload();
    sub_100080A3C();
    sub_10000D1EC(&qword_100222190, &qword_100222168);
    _ConditionalContent<>.init(storage:)();
    sub_10000D52C(v53, &qword_10021B980);
    v46 = v13;
  }

  else
  {
    sub_10000D52C(v16, &qword_1002196F8);
    KeyPath = swift_getKeyPath();
    v34 = v56;
    *v56 = KeyPath;
    sub_100009F70(&qword_100219710);
    swift_storeEnumTagMultiPayload();
    v35 = type metadata accessor for ErrorView();
    v36 = *(v35 + 20);
    *(v34 + v36) = swift_getKeyPath();
    sub_100009F70(&qword_100219718);
    swift_storeEnumTagMultiPayload();
    v37 = (v34 + *(v35 + 24));
    type metadata accessor for RemoteViewConfiguration();
    sub_100180C60(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
    *v37 = EnvironmentObject.init()();
    v37[1] = v38;
    v39 = *v2;
    v75 = *(v2 + 16);
    v73 = v2[2];
    v74 = v39;
    v40 = swift_allocObject();
    v41 = v2[1];
    *(v40 + 1) = *v2;
    *(v40 + 2) = v41;
    *(v40 + 3) = v2[2];
    v42 = v62;
    v43 = (v34 + *(v63 + 36));
    *v43 = sub_1001809CC;
    v43[1] = v40;
    v43[2] = 0;
    v43[3] = 0;
    v44 = &qword_10021B968;
    sub_10000D58C(v34, v42, &qword_10021B968);
    swift_storeEnumTagMultiPayload();

    sub_1001809D4(&v74, v72);
    sub_10000D58C(&v73, v72, &qword_10021B9F0);
    sub_100080AC8();
    sub_100080BB4();
    v45 = v64;
    _ConditionalContent<>.init(storage:)();
    sub_10000D58C(v45, v67, &qword_10021B980);
    swift_storeEnumTagMultiPayload();
    sub_100080A3C();
    sub_10000D1EC(&qword_100222190, &qword_100222168);
    _ConditionalContent<>.init(storage:)();
    sub_10000D52C(v45, &qword_10021B980);
    v46 = v34;
  }

  return sub_10000D52C(v46, v44);
}

uint64_t sub_10017F330(uint64_t a1)
{
  v1[2] = type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v4 = *a1;
  v3 = *(a1 + 8);
  if (*(a1 + 16))
  {
    v8 = sub_100180098;
    v5 = swift_task_alloc();
    v1[5] = v5;
    *v5 = v1;
    v6 = sub_10017F460;
  }

  else
  {
    v8 = sub_10017F59C;
    v5 = swift_task_alloc();
    v1[4] = v5;
    *v5 = v1;
    v6 = sub_100080584;
  }

  v5[1] = v6;

  return v8(v4, v3);
}

uint64_t sub_10017F460()
{

  dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100180E28);
}

uint64_t sub_10017F59C(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  sub_100009F70(&qword_10021E4E0);
  v3[9] = swift_task_alloc();
  v4 = type metadata accessor for Music();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = sub_100009F70(&qword_1002196F8);
  v3[14] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[15] = static MainActor.shared.getter();
  v3[16] = dispatch thunk of Actor.unownedExecutor.getter();
  v3[17] = v5;

  return _swift_task_switch(sub_10017F708);
}

uint64_t sub_10017F708()
{
  v1 = v0[14];
  v2 = v0[8];
  swift_storeEnumTagMultiPayload();
  v3 = swift_task_alloc();
  v4 = type metadata accessor for PromotionalAssetsFetcher();
  v0[18] = v4;
  *v3 = v4;
  v5 = sub_100180C60(&qword_100222178, type metadata accessor for PromotionalAssetsFetcher);
  v0[19] = v5;
  v3[1] = v5;
  swift_getKeyPath();

  v6 = swift_task_alloc();
  *(v6 + 16) = v2;
  *(v6 + 24) = v1;
  v0[20] = *(*v2 + 112);
  v0[2] = v2;
  v0[21] = sub_10000D1EC(&qword_100222180, &qword_1002196F0);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_10000D52C(v1, &qword_1002196F8);
  v12 = (*(v5 + 24) + **(v5 + 24));
  v7 = swift_task_alloc();
  v0[22] = v7;
  *v7 = v0;
  v7[1] = sub_10017F9AC;
  v8 = v0[9];
  v9 = v0[6];
  v10 = v0[7];

  return v12(v8, v9, v10, v4, v5);
}

uint64_t sub_10017F9AC()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_10017FDEC;
  }

  else
  {
    v2 = sub_10017FAE8;
  }

  return _swift_task_switch(v2);
}

uint64_t sub_10017FAE8()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];

  v4 = (*(v2 + 48))(v3, 1, v1);
  v5 = v0[18];
  v6 = v0[19];
  v7 = v0[14];
  if (v4 == 1)
  {
    v8 = v0[8];
    sub_10000D52C(v0[9], &qword_10021E4E0);
    sub_100009F70(&qword_100222198);
    sub_10000D1EC(&qword_1002221A0, &qword_100222198);
    *v7 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v9 = swift_task_alloc();
    *v9 = v5;
    v9[1] = v6;
    swift_getKeyPath();

    v10 = swift_task_alloc();
    *(v10 + 16) = v8;
    *(v10 + 24) = v7;
    v0[4] = v8;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    v12 = v0[11];
    v11 = v0[12];
    v13 = v0[10];
    v14 = v0[8];
    (*(v12 + 32))(v11, v0[9], v13);
    (*(v12 + 16))(v7, v11, v13);
    swift_storeEnumTagMultiPayload();
    v15 = swift_task_alloc();
    *v15 = v5;
    v15[1] = v6;
    swift_getKeyPath();

    v16 = swift_task_alloc();
    *(v16 + 16) = v14;
    *(v16 + 24) = v7;
    v0[5] = v14;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    (*(v12 + 8))(v11, v13);
  }

  sub_10000D52C(v7, &qword_1002196F8);

  v17 = v0[1];

  return v17();
}

uint64_t sub_10017FDEC()
{

  if (qword_100218470 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10001FDF4(v1, qword_100230610);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to fetch event promotional assets: %@", v4, 0xCu);
    sub_10000D52C(v5, &qword_10021B938);
  }

  v7 = *(v0 + 184);
  v8 = *(v0 + 112);
  v9 = *(v0 + 64);
  v13 = *(v0 + 144);

  *v8 = v7;
  swift_storeEnumTagMultiPayload();
  *swift_task_alloc() = v13;
  swift_getKeyPath();

  v10 = swift_task_alloc();
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;
  *(v0 + 24) = v9;
  swift_errorRetain();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_10000D52C(v8, &qword_1002196F8);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100180098(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  sub_100009F70(&qword_10021E4E0);
  v3[9] = swift_task_alloc();
  v4 = type metadata accessor for Music();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = sub_100009F70(&qword_1002196F8);
  v3[14] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[15] = static MainActor.shared.getter();
  v3[16] = dispatch thunk of Actor.unownedExecutor.getter();
  v3[17] = v5;

  return _swift_task_switch(sub_100180204);
}

uint64_t sub_100180204()
{
  v1 = v0[14];
  v2 = v0[8];
  swift_storeEnumTagMultiPayload();
  v3 = swift_task_alloc();
  v4 = type metadata accessor for PromotionalAssetsFetcher();
  v0[18] = v4;
  *v3 = v4;
  v5 = sub_100180C60(&qword_100222178, type metadata accessor for PromotionalAssetsFetcher);
  v0[19] = v5;
  v3[1] = v5;
  swift_getKeyPath();

  v6 = swift_task_alloc();
  *(v6 + 16) = v2;
  *(v6 + 24) = v1;
  v0[20] = *(*v2 + 112);
  v0[2] = v2;
  v0[21] = sub_10000D1EC(&qword_100222180, &qword_1002196F0);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_10000D52C(v1, &qword_1002196F8);
  v7 = swift_task_alloc();
  v0[22] = v7;
  *v7 = v0;
  v7[1] = sub_10018041C;
  v8 = v0[9];
  v9 = v0[6];
  v10 = v0[7];

  return sub_10019BCCC(v8, v9, v10);
}

uint64_t sub_10018041C()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_100180558;
  }

  else
  {
    v2 = sub_10017FAE8;
  }

  return _swift_task_switch(v2);
}

uint64_t sub_100180558()
{

  if (qword_100218470 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10001FDF4(v1, qword_100230610);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to fetch artist promotional assets: %@", v4, 0xCu);
    sub_10000D52C(v5, &qword_10021B938);
  }

  v7 = *(v0 + 184);
  v8 = *(v0 + 112);
  v9 = *(v0 + 64);
  v13 = *(v0 + 144);

  *v8 = v7;
  swift_storeEnumTagMultiPayload();
  *swift_task_alloc() = v13;
  swift_getKeyPath();

  v10 = swift_task_alloc();
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;
  *(v0 + 24) = v9;
  swift_errorRetain();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_10000D52C(v8, &qword_1002196F8);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100180804(uint64_t result)
{
  if (*(result + 16))
  {
    v1 = *(result + 32);
    if (v1)
    {
      v2 = *result;
      v3 = *(result + 8);

      sub_1000DCEDC(v2, v3, 14, v1);
    }

    else
    {
      type metadata accessor for RemoteViewConfiguration();
      sub_100180C60(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
      result = EnvironmentObject.error()();
      __break(1u);
    }
  }

  return result;
}

__n128 sub_100180978(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_100180A0C()
{
  sub_1001809C4();

  return swift_deallocObject();
}

uint64_t sub_100180A58()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10000D890;

  return sub_10017F330(v0 + 16);
}

uint64_t sub_100180AEC(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 96);
  swift_beginAccess();
  sub_100180B80(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_100180B80(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F70(&qword_1002196F8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100180BF0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10016A528();
  *a1 = result & 1;
  return result;
}

__n128 sub_100180C54(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_100180C60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100180CA8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_100180CF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_100180D54()
{
  result = qword_1002221C0;
  if (!qword_1002221C0)
  {
    sub_10000B3DC(&qword_1002221C8);
    sub_100080A3C();
    sub_10000D1EC(&qword_100222190, &qword_100222168);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002221C0);
  }

  return result;
}

void sub_100180E74()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v21 = v2;
  v22 = v3;
  __chkstk_darwin(v2);
  v20 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100009F70(qword_100218748);
  __chkstk_darwin(v5 - 8);
  v7 = &v19 - v6;
  v8 = type metadata accessor for DesignTimeImage();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100009F70(&qword_10021E8F0);
  __chkstk_darwin(v12 - 8);
  v14 = &v19 - v13;
  String.hash(into:)();
  String.hash(into:)();
  v15 = type metadata accessor for DesignTimeMusicAlbum();
  sub_10000D58C(v1 + *(v15 + 24), v14, &qword_10021E8F0);
  if ((*(v9 + 48))(v14, 1, v8) == 1)
  {
    Hasher._combine(_:)(0);
    v16 = v21;
    v17 = v22;
  }

  else
  {
    sub_100028E88(v14, v11);
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    sub_100181AE0(&qword_1002191D8, &type metadata accessor for URL);
    v16 = v21;
    dispatch thunk of Hashable.hash(into:)();
    if (*&v11[*(v8 + 24)])
    {
      Hasher._combine(_:)(1u);
      type metadata accessor for CGColor(0);
      sub_100181AE0(&qword_1002194F8, type metadata accessor for CGColor);
      _CFObject.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    v17 = v22;
    Hasher._combine(_:)(v11[*(v8 + 28)]);
    sub_100128D88(v11);
  }

  sub_10000D58C(v1 + *(v15 + 28), v7, qword_100218748);
  if ((*(v17 + 48))(v7, 1, v16) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v18 = v20;
    (*(v17 + 32))(v20, v7, v16);
    Hasher._combine(_:)(1u);
    sub_100181AE0(&qword_1002191D8, &type metadata accessor for URL);
    dispatch thunk of Hashable.hash(into:)();
    (*(v17 + 8))(v18, v16);
  }
}

uint64_t sub_100181320(uint64_t a1)
{
  *(a1 + 8) = sub_100181AE0(&qword_100222218, type metadata accessor for DesignTimeMusicAlbum);
  result = sub_100181AE0(&qword_100222220, type metadata accessor for DesignTimeMusicAlbum);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for DesignTimeMusicAlbum()
{
  result = qword_100222288;
  if (!qword_100222288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Int sub_100181438()
{
  Hasher.init(_seed:)();
  sub_100180E74();
  return Hasher._finalize()();
}

Swift::Int sub_10018147C()
{
  Hasher.init(_seed:)();
  sub_100180E74();
  return Hasher._finalize()();
}

BOOL sub_1001814BC(void *a1, void *a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100009F70(qword_100218748);
  __chkstk_darwin(v8 - 8);
  v45 = &v42 - v9;
  v48 = sub_100009F70(&qword_10021E8E8);
  __chkstk_darwin(v48);
  v49 = &v42 - v10;
  v11 = type metadata accessor for DesignTimeImage();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v47 = (&v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_100009F70(&qword_10021E8F0);
  __chkstk_darwin(v14 - 8);
  v16 = (&v42 - v15);
  v17 = sub_100009F70(&qword_10021E8F8);
  __chkstk_darwin(v17);
  v19 = &v42 - v18;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v42 = v7;
  v46 = v5;
  v44 = v4;
  v43 = type metadata accessor for DesignTimeMusicAlbum();
  v20 = *(v43 + 24);
  v21 = *(v17 + 48);
  sub_10000D58C(a1 + v20, v19, &qword_10021E8F0);
  sub_10000D58C(a2 + v20, &v19[v21], &qword_10021E8F0);
  v22 = *(v12 + 48);
  if (v22(v19, 1, v11) != 1)
  {
    sub_10000D58C(v19, v16, &qword_10021E8F0);
    v25 = v22(&v19[v21], 1, v11);
    v24 = v46;
    if (v25 != 1)
    {
      v28 = v47;
      sub_100028E88(&v19[v21], v47);
      v29 = sub_100022244(v16, v28);
      sub_100128D88(v28);
      sub_100128D88(v16);
      sub_10000D52C(v19, &qword_10021E8F0);
      if ((v29 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_14;
    }

    sub_100128D88(v16);
LABEL_12:
    v26 = &qword_10021E8F8;
    v27 = v19;
LABEL_20:
    sub_10000D52C(v27, v26);
    return 0;
  }

  v23 = v22(&v19[v21], 1, v11);
  v24 = v46;
  if (v23 != 1)
  {
    goto LABEL_12;
  }

  sub_10000D52C(v19, &qword_10021E8F0);
LABEL_14:
  v30 = *(v43 + 28);
  v31 = *(v48 + 48);
  v32 = a1 + v30;
  v33 = v49;
  sub_10000D58C(v32, v49, qword_100218748);
  sub_10000D58C(a2 + v30, v33 + v31, qword_100218748);
  v34 = *(v24 + 48);
  v35 = v44;
  if (v34(v33, 1, v44) == 1)
  {
    if (v34(v33 + v31, 1, v35) == 1)
    {
      sub_10000D52C(v33, qword_100218748);
      return 1;
    }

    goto LABEL_19;
  }

  v36 = v45;
  sub_10000D58C(v33, v45, qword_100218748);
  if (v34(v33 + v31, 1, v35) == 1)
  {
    (*(v24 + 8))(v36, v35);
LABEL_19:
    v26 = &qword_10021E8E8;
    v27 = v33;
    goto LABEL_20;
  }

  v38 = v33 + v31;
  v39 = v42;
  (*(v24 + 32))(v42, v38, v35);
  sub_100181AE0(&qword_10021D560, &type metadata accessor for URL);
  v40 = dispatch thunk of static Equatable.== infix(_:_:)();
  v41 = *(v24 + 8);
  v41(v39, v35);
  v41(v36, v35);
  sub_10000D52C(v33, qword_100218748);
  return (v40 & 1) != 0;
}

uint64_t sub_100181AE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100181B3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100009F70(&qword_10021E8F0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100009F70(qword_100218748);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100181C8C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_100009F70(&qword_10021E8F0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100009F70(qword_100218748);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_100181DC8()
{
  sub_100181E94(319, &qword_10021E980, type metadata accessor for DesignTimeImage);
  if (v0 <= 0x3F)
  {
    sub_100181E94(319, &qword_100218E80, &type metadata accessor for URL);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100181E94(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_100181EE8()
{
  result = type metadata accessor for PromotionalAssetsController.State();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for ObservationRegistrar();
      if (v3 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_100181FF8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_10018297C();

  v3 = *(*v1 + 96);
  swift_beginAccess();
  v4 = type metadata accessor for PromotionalAssetsController.State();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1001820F0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *v2;
  v3[5] = *(*v2 + 80);
  v3[6] = *(v4 + 88);
  v5 = type metadata accessor for PromotionalAssetsController.State();
  v3[7] = v5;
  v3[8] = *(v5 - 8);
  v3[9] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[10] = AssociatedTypeWitness;
  v7 = type metadata accessor for Optional();
  v3[11] = v7;
  v3[12] = *(v7 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = *(AssociatedTypeWitness - 8);
  v3[15] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[16] = static MainActor.shared.getter();
  v3[17] = dispatch thunk of Actor.unownedExecutor.getter();
  v3[18] = v8;

  return _swift_task_switch(sub_1001822FC);
}

uint64_t sub_1001822FC()
{
  v9 = v0[6];
  sub_100182BD0();
  v8 = (*(v9 + 32) + **(v9 + 32));
  v1 = swift_task_alloc();
  v0[19] = v1;
  *v1 = v0;
  v1[1] = sub_10018243C;
  v2 = v0[13];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[2];
  v6 = v0[3];

  return v8(v2, v5, v6, v3, v4);
}

uint64_t sub_10018243C()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_100182774;
  }

  else
  {
    v2 = sub_100182578;
  }

  return _swift_task_switch(v2);
}

uint64_t sub_100182578()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[10];

  v4 = (*(v2 + 48))(v1, 1, v3);
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];
  if (v4 == 1)
  {
    (*(v0[12] + 8))(v0[13], v0[11]);
    type metadata accessor for PromotionalAssetsController.Error();
    swift_getWitnessTable();
    *v5 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    sub_100183234();
    (*(v6 + 8))(v5, v7);
  }

  else
  {
    v9 = v0[14];
    v8 = v0[15];
    v10 = v0[10];
    (*(v9 + 32))(v8, v0[13], v10);
    (*(v9 + 16))(v5, v8, v10);
    swift_storeEnumTagMultiPayload();
    sub_100183234();
    (*(v6 + 8))(v5, v7);
    (*(v9 + 8))(v8, v10);
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_100182774()
{

  if (qword_100218470 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10001FDF4(v1, qword_100230610);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to fetch artist promotional assets: %@", v4, 0xCu);
    sub_1000EB068(v5);
  }

  v7 = v0[20];
  v9 = v0[8];
  v8 = v0[9];
  v10 = v0[7];

  *v8 = v7;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  sub_100183234();
  (*(v9 + 8))(v8, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_100182A1C(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 96);
  swift_beginAccess();
  v5 = type metadata accessor for PromotionalAssetsController.State();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_100182BD0()
{
  v0 = type metadata accessor for PromotionalAssetsController.State();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  swift_storeEnumTagMultiPayload();
  sub_100183234();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100182CC8()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 80);
  v3 = type metadata accessor for PromotionalAssetsController.State();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  (*(*(v2 - 8) + 8))(v0 + *(*v0 + 104), v2);
  v4 = *(*v0 + 112);
  v5 = type metadata accessor for ObservationRegistrar();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t sub_100182DFC()
{
  sub_100182CC8();

  return swift_deallocClassInstance();
}

unint64_t sub_100182E84()
{
  result = sub_10009FE14();
  if (v1 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100182F0C(unsigned __int16 *a1, unsigned int a2)
{
  v4 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v5 = 8;
  if (v4 > 8)
  {
    v5 = v4;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if ((v5 + 1) <= 3)
  {
    v10 = ((a2 + ~(-1 << v7) - 253) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v10 < 2)
    {
LABEL_25:
      v12 = *(a1 + v5);
      if (v12 >= 3)
      {
        return (v12 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_25;
  }

LABEL_14:
  v11 = (v8 - 1) << v7;
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

  return (v6 | v11) + 254;
}

void sub_10018305C(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  v6 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v6 <= 8)
  {
    v6 = 8;
  }

  v7 = v6 + 1;
  if (a3 < 0xFE)
  {
    v8 = 0;
  }

  else if (v7 <= 3)
  {
    v11 = ((a3 + ~(-1 << (8 * v7)) - 253) >> (8 * v7)) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFD)
  {
    v9 = a2 - 254;
    if (v7 >= 4)
    {
      bzero(a1, v6 + 1);
      *a1 = v9;
      v10 = 1;
      if (v8 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v10 = (v9 >> (8 * v7)) + 1;
    if (v6 != -1)
    {
      v13 = v9 & ~(-1 << (8 * v7));
      bzero(a1, v7);
      if (v7 != 3)
      {
        if (v7 == 2)
        {
          *a1 = v13;
          if (v8 > 1)
          {
LABEL_39:
            if (v8 == 2)
            {
              *&a1[v7] = v10;
            }

            else
            {
              *&a1[v7] = v10;
            }

            return;
          }
        }

        else
        {
          *a1 = v9;
          if (v8 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v8)
        {
          a1[v7] = v10;
        }

        return;
      }

      *a1 = v13;
      a1[2] = BYTE2(v13);
    }

    if (v8 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v8 <= 1)
  {
    if (v8)
    {
      a1[v7] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v6] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v8 == 2)
  {
    *&a1[v7] = 0;
    goto LABEL_24;
  }

  *&a1[v7] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_100183234()
{
  swift_getKeyPath();
  sub_100182AF8();
}

__n128 sub_100183308(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_10018334C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ObservationRegistrar();
    if (v2 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_100183444(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1001842D0(a1, a2);
  return v4;
}

uint64_t sub_1001834C4(uint64_t (*a1)(uint64_t, uint64_t))
{
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v8 = &v12 - v7;
  (*(v3 + 168))(v4, v3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = a1(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v6 + 8))(v8, AssociatedTypeWitness);
  return v10;
}

uint64_t sub_100183654()
{
  v1 = *v0;
  v2 = *(v1 + 88);
  v3 = *(v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v7 = &v12 - v6;
  if (sub_1000A0020(v3, v2))
  {
    v8 = 0;
  }

  else
  {
    (*(v2 + 168))(v3, v2);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v10 = sub_1000FE2B8(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v5 + 8))(v7, AssociatedTypeWitness);
    v8 = v10 ^ 1;
  }

  return v8 & 1;
}

void sub_1001837F8(uint64_t a1)
{
  v3 = *v1;
  sub_100009F70(qword_100218F38);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001AD8A0;
  v5 = (*(*(v3 + 88) + 120))(*(v3 + 80));
  *(v4 + 56) = &type metadata for AnalyticsString;
  *(v4 + 64) = &off_10021CBD0;
  *(v4 + 32) = 0;
  *(v4 + 40) = v5;
  *(v4 + 48) = v6;
  v7 = sub_1000A199C(v1 + *(*v1 + 104), *(*v1 + 80), *(*v1 + 88));
  *(v4 + 96) = &type metadata for AnalyticsPageName;
  *(v4 + 104) = &off_10021CBA8;
  *(v4 + 72) = v7;
  *(v4 + 136) = &type metadata for AnalyticsModuleName;
  *(v4 + 144) = &off_10021CC30;
  *(v4 + 112) = 2;
  *(v4 + 176) = &type metadata for AnalyticsModuleAction;
  *(v4 + 184) = &off_10021CC08;
  *(v4 + 152) = xmmword_1001BC200;
  *(v4 + 168) = 3;
  if (*(a1 + 72))
  {
    v8 = *(a1 + 64);
    v9 = *(a1 + 72);
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  v22 = &type metadata for AnalyticsString;
  v23 = &off_10021CBD0;
  LOBYTE(aBlock) = 1;
  v20 = v8;
  v21 = v9;

  v10 = sub_1001666DC(1, 5, 1, v4);
  v25 = v10;
  v11 = sub_100031420(&aBlock, &type metadata for AnalyticsString);
  __chkstk_darwin(v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13);
  sub_1000EB0D0(4, v13, &v25, &type metadata for AnalyticsString, &off_10021CBD0);
  sub_100021498(&aBlock);
  v15 = String._bridgeToObjectiveC()();
  v16 = swift_allocObject();
  v16[2] = 0xD00000000000001ELL;
  v16[3] = 0x80000001001BDDE0;
  v16[4] = v10;
  v23 = sub_100010AAC;
  v24 = v16;
  aBlock = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_1000DCA40;
  v22 = &unk_100211AA0;
  v17 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v17);
}

uint64_t sub_100183B58()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v6 = &v10 - v5;
  (*(v1 + 176))(v2, v1);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = (*(AssociatedConformanceWitness + 48))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v4 + 8))(v6, AssociatedTypeWitness);
  return v8;
}

id sub_100183CE8()
{
  result = *(v0 + *(*v0 + 112));
  if (result)
  {
    result = [result addressRepresentations];
    if (result)
    {
      v2 = result;
      v3 = [result cityWithContextUsingStyle:2];

      if (v3)
      {
        v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        return v4;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100183D90(uint64_t a1)
{
  v2 = *(*v1 + 80);
  __chkstk_darwin(a1);
  (*(v4 + 16))(&v9[-v5 - 8], v1 + *(v3 + 104), v2);
  sub_100009F70(&qword_1002224C8);
  result = swift_dynamicCast();
  if (result)
  {
    v7 = result;
    sub_100021498(v9);
    return v7;
  }

  return result;
}

uint64_t sub_100183F20()
{
  swift_getKeyPath();
  sub_100184158();

  return *(v0 + 16);
}

uint64_t sub_100183F94(char a1)
{
  v2 = a1 & 1;
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    *(v1 + 16) = v2;
  }

  else
  {
    __chkstk_darwin(result);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001841F8();
  }

  return result;
}

_BYTE *sub_1001842D0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v2[16] = 0;
  v6 = &v2[*(v5 + 120)];
  *v6 = LocalizedStringKey.init(stringLiteral:)();
  *(v6 + 1) = v7;
  v6[16] = v8 & 1;
  *(v6 + 3) = v9;
  v10 = *(*v2 + 128);
  *&v2[v10] = [objc_allocWithZone(EKEventStore) init];
  ObservationRegistrar.init()();
  (*(*(*(v5 + 80) - 8) + 32))(&v2[*(*v2 + 104)], a1);
  *&v2[*(*v2 + 112)] = a2;
  return v2;
}

uint64_t sub_100184410()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 104));

  v1 = *(*v0 + 136);
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_100184538()
{
  sub_100184410();

  return swift_deallocClassInstance();
}

__n128 sub_1001845BC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1001845C8()
{

  return swift_deallocObject();
}

uint64_t sub_100184608(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100184620@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  sub_100009F70(a1);
  sub_100186C60(a2, a1);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v15[4] == v15[0])
  {
    v8 = a3(0);
    return (*(*(v8 - 8) + 56))(a4, 1, 1, v8);
  }

  else
  {
    v10 = dispatch thunk of Collection.subscript.read();
    v12 = v11;
    v13 = a3(0);
    v14 = *(v13 - 8);
    (*(v14 + 16))(a4, v12, v13);
    v10(v15, 0);
    return (*(v14 + 56))(a4, 0, 1, v13);
  }
}

uint64_t sub_1001847B0(uint64_t a1)
{
  v2 = _HashTable.startBucket.getter();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_100186D1C(v2, *(a1 + 36), 0, a1);

  return v4;
}

uint64_t sub_10018482C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  sub_100009F70(&unk_10021D210);
  v4[12] = swift_task_alloc();
  v5 = sub_100009F70(&qword_1002225F8);
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v6 = sub_100009F70(&qword_100222600);
  v4[16] = v6;
  v4[17] = *(v6 - 8);
  v4[18] = swift_task_alloc();
  v7 = sub_100009F70(&qword_100222608);
  v4[19] = v7;
  v4[20] = *(v7 - 8);
  v4[21] = swift_task_alloc();
  v8 = type metadata accessor for MusicDataRequest.ExecutionMethod();
  v4[22] = v8;
  v4[23] = *(v8 - 8);
  v4[24] = swift_task_alloc();
  v9 = type metadata accessor for MusicAuthorization.Status();
  v4[25] = v9;
  v4[26] = *(v9 - 8);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();

  return _swift_task_switch(sub_100184AC8);
}

uint64_t sub_100184AC8()
{
  (*(v0[23] + 104))(v0[24], enum case for MusicDataRequest.ExecutionMethod.firstParty(_:), v0[22]);
  static MusicDataRequest.preferredExecutionMethod.setter();
  v1 = swift_task_alloc();
  v0[29] = v1;
  *v1 = v0;
  v1[1] = sub_100184B90;
  v2 = v0[28];

  return static MusicAuthorization.request()(v2);
}

uint64_t sub_100184B90()
{

  return _swift_task_switch(sub_100184CA0);
}

uint64_t sub_100184CA0()
{
  v24 = v0;
  (*(v0[26] + 104))(v0[27], enum case for MusicAuthorization.Status.authorized(_:), v0[25]);
  sub_100186C18(&qword_1002225D8, &type metadata accessor for MusicAuthorization.Status);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[25];
  v4 = v0[26];
  if (v0[2] == v0[4] && v0[3] == v0[5])
  {
    v5 = *(v4 + 8);
    v5(v0[27], v0[25]);
    v5(v1, v3);

LABEL_5:
    swift_getKeyPath();

    v0[6] = MusicItemID.init(_:)();
    v0[7] = v8;
    v0[30] = type metadata accessor for Artist();
    sub_100186C18(&qword_100222610, &type metadata accessor for Artist);
    MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
    sub_100009F70(&qword_1002231C0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1001BC310;
    sub_100009F70(&qword_100222618);
    *(v9 + 32) = static PartialMusicProperty<A>.topSongs.getter();
    *(v9 + 40) = static PartialMusicProperty<A>.featuredPlaylists.getter();
    *(v9 + 48) = static PartialMusicProperty<A>.featuredAlbums.getter();
    MusicCatalogResourceRequest.properties.setter();
    v10 = swift_task_alloc();
    v0[31] = v10;
    *v10 = v0;
    v10[1] = sub_100185174;
    v11 = v0[18];
    v12 = v0[19];

    return MusicCatalogResourceRequest.response()(v11, v12);
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v7 = *(v4 + 8);
  v7(v2, v3);
  v7(v1, v3);

  if (v6)
  {
    goto LABEL_5;
  }

  if (qword_100218470 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10001FDF4(v13, qword_100230610);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v17 = v0[9];
    v16 = v0[10];
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v23 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_10005D4E8(v17, v16, &v23);
    _os_log_impl(&_mh_execute_header, v14, v15, "Authorization error fetching artist. ID: %s", v18, 0xCu);
    sub_100021498(v19);
  }

  sub_100186B3C();
  swift_allocError();
  *v20 = 0;
  swift_willThrow();

  v21 = v0[1];

  return v21();
}

uint64_t sub_100185174()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_100185674;
  }

  else
  {
    v2 = sub_1001852A0;
  }

  return _swift_task_switch(v2);
}

uint64_t sub_1001852A0()
{
  v30 = v0;
  v1 = v0[30];
  v2 = v0[15];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[12];
  MusicCatalogResourceResponse.items.getter();
  sub_100184620(&qword_1002225F8, &qword_100222620, &type metadata accessor for Artist, v5);
  (*(v4 + 8))(v2, v3);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v5, 1, v1) == 1)
  {
    sub_10000D52C(v0[12], &unk_10021D210);
    if (qword_100218470 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10001FDF4(v7, qword_100230610);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v11 = v0[9];
      v10 = v0[10];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v29 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_10005D4E8(v11, v10, &v29);
      _os_log_impl(&_mh_execute_header, v8, v9, "Artist not found. ID: %s", v12, 0xCu);
      sub_100021498(v13);
    }

    v15 = v0[20];
    v14 = v0[21];
    v17 = v0[18];
    v16 = v0[19];
    v18 = v0[16];
    v19 = v0[17];
    sub_100186B3C();
    swift_allocError();
    *v20 = 1;
    swift_willThrow();
    (*(v19 + 8))(v17, v18);
    (*(v15 + 8))(v14, v16);

    v21 = v0[1];
  }

  else
  {
    v22 = v0[30];
    v23 = v0[20];
    v24 = v0[21];
    v25 = v0[19];
    v26 = v0[12];
    v27 = v0[8];
    (*(v0[17] + 8))(v0[18], v0[16]);
    (*(v23 + 8))(v24, v25);
    (*(v6 + 32))(v27, v26, v22);

    v21 = v0[1];
  }

  return v21();
}

uint64_t sub_100185674()
{
  (*(v0[20] + 8))(v0[21], v0[19]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10018574C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  sub_100009F70(&qword_1002225C0);
  v4[12] = swift_task_alloc();
  v5 = sub_100009F70(&qword_100221A80);
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v6 = sub_100009F70(&qword_1002225C8);
  v4[16] = v6;
  v4[17] = *(v6 - 8);
  v4[18] = swift_task_alloc();
  v7 = sub_100009F70(&qword_1002225D0);
  v4[19] = v7;
  v4[20] = *(v7 - 8);
  v4[21] = swift_task_alloc();
  v8 = type metadata accessor for MusicDataRequest.ExecutionMethod();
  v4[22] = v8;
  v4[23] = *(v8 - 8);
  v4[24] = swift_task_alloc();
  v9 = type metadata accessor for MusicAuthorization.Status();
  v4[25] = v9;
  v4[26] = *(v9 - 8);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();

  return _swift_task_switch(sub_1001859E8);
}

uint64_t sub_1001859E8()
{
  (*(v0[23] + 104))(v0[24], enum case for MusicDataRequest.ExecutionMethod.firstParty(_:), v0[22]);
  static MusicDataRequest.preferredExecutionMethod.setter();
  v1 = swift_task_alloc();
  v0[29] = v1;
  *v1 = v0;
  v1[1] = sub_100185AB0;
  v2 = v0[28];

  return static MusicAuthorization.request()(v2);
}

uint64_t sub_100185AB0()
{

  return _swift_task_switch(sub_100185BC0);
}

uint64_t sub_100185BC0()
{
  v24 = v0;
  (*(v0[26] + 104))(v0[27], enum case for MusicAuthorization.Status.authorized(_:), v0[25]);
  sub_100186C18(&qword_1002225D8, &type metadata accessor for MusicAuthorization.Status);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[25];
  v4 = v0[26];
  if (v0[2] == v0[4] && v0[3] == v0[5])
  {
    v5 = *(v4 + 8);
    v5(v0[27], v0[25]);
    v5(v1, v3);

LABEL_5:
    swift_getKeyPath();

    v0[6] = MusicItemID.init(_:)();
    v0[7] = v8;
    v0[30] = type metadata accessor for Playlist();
    sub_100186C18(&qword_1002225E8, &type metadata accessor for Playlist);
    MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
    sub_100009F70(&qword_1002231C0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1001BC320;
    sub_100009F70(&qword_1002225F0);
    *(v9 + 32) = static PartialMusicProperty<A>.tracks.getter();
    MusicCatalogResourceRequest.properties.setter();
    v10 = swift_task_alloc();
    v0[31] = v10;
    *v10 = v0;
    v10[1] = sub_100186084;
    v11 = v0[18];
    v12 = v0[19];

    return MusicCatalogResourceRequest.response()(v11, v12);
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v7 = *(v4 + 8);
  v7(v2, v3);
  v7(v1, v3);

  if (v6)
  {
    goto LABEL_5;
  }

  if (qword_100218470 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10001FDF4(v13, qword_100230610);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v17 = v0[9];
    v16 = v0[10];
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v23 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_10005D4E8(v17, v16, &v23);
    _os_log_impl(&_mh_execute_header, v14, v15, "Authorization error fetching playlist. ID: %s", v18, 0xCu);
    sub_100021498(v19);
  }

  sub_100186B3C();
  swift_allocError();
  *v20 = 0;
  swift_willThrow();

  v21 = v0[1];

  return v21();
}

uint64_t sub_100186084()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_100186738;
  }

  else
  {
    v2 = sub_1001861B0;
  }

  return _swift_task_switch(v2);
}

uint64_t sub_1001861B0()
{
  v39 = v0;
  v1 = v0[30];
  v2 = v0[15];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[12];
  MusicCatalogResourceResponse.items.getter();
  sub_100184620(&qword_100221A80, &qword_100221AA0, &type metadata accessor for Playlist, v5);
  (*(v4 + 8))(v2, v3);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v5, 1, v1) == 1)
  {
    sub_10000D52C(v0[12], &qword_1002225C0);
    if (qword_100218470 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10001FDF4(v7, qword_100230610);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v11 = v0[9];
      v10 = v0[10];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v38[0] = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_10005D4E8(v11, v10, v38);
      _os_log_impl(&_mh_execute_header, v8, v9, "Playlist not found. ID: %s", v12, 0xCu);
      sub_100021498(v13);
    }

    v15 = v0[17];
    v14 = v0[18];
    v16 = v0[16];
    sub_100186B3C();
    swift_allocError();
    *v17 = 2;
    swift_willThrow();
    (*(v15 + 8))(v14, v16);
    if (qword_100218470 != -1)
    {
      swift_once();
    }

    sub_10001FDF4(v7, qword_100230610);

    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v21 = v0[9];
      v20 = v0[10];
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v38[0] = v24;
      *v22 = 136315394;
      *(v22 + 4) = sub_10005D4E8(v21, v20, v38);
      *(v22 + 12) = 2112;
      swift_errorRetain();
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 14) = v25;
      *v23 = v25;
      _os_log_impl(&_mh_execute_header, v18, v19, "Error fetching playlist. ID: %s. Error: %@", v22, 0x16u);
      sub_10000D52C(v23, &qword_10021B938);

      sub_100021498(v24);
    }

    v27 = v0[20];
    v26 = v0[21];
    v28 = v0[19];
    swift_allocError();
    *v29 = 2;
    swift_willThrow();

    (*(v27 + 8))(v26, v28);

    v30 = v0[1];
  }

  else
  {
    v31 = v0[30];
    v32 = v0[20];
    v33 = v0[21];
    v34 = v0[19];
    v35 = v0[12];
    v36 = v0[8];
    (*(v0[17] + 8))(v0[18], v0[16]);
    (*(v32 + 8))(v33, v34);
    (*(v6 + 32))(v36, v35, v31);

    v30 = v0[1];
  }

  return v30();
}

uint64_t sub_100186738()
{
  v17 = v0;
  if (qword_100218470 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10001FDF4(v1, qword_100230610);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[9];
    v4 = v0[10];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_10005D4E8(v5, v4, &v16);
    *(v6 + 12) = 2112;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error fetching playlist. ID: %s. Error: %@", v6, 0x16u);
    sub_10000D52C(v7, &qword_10021B938);

    sub_100021498(v8);
  }

  v11 = v0[20];
  v10 = v0[21];
  v12 = v0[19];
  sub_100186B3C();
  swift_allocError();
  *v13 = 2;
  swift_willThrow();

  (*(v11 + 8))(v10, v12);

  v14 = v0[1];

  return v14();
}

uint64_t sub_100186A88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000D890;

  return sub_10018574C(a1, a2, a3);
}

unint64_t sub_100186B3C()
{
  result = qword_1002225E0;
  if (!qword_1002225E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002225E0);
  }

  return result;
}

uint64_t sub_100186BC0@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  sub_100028124(a1, v5);
  result = a2(v5, v6);
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t sub_100186C18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100186C60(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10000B3DC(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100186CC8()
{
  result = qword_100222628[0];
  if (!qword_100222628[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100222628);
  }

  return result;
}

uint64_t sub_100186D1C(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_100186D70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 32))(a3, a1, a2);
  v4 = type metadata accessor for VenueEventListHeader();
  v5 = (a3 + v4[9]);
  *v5 = sub_100186E68();
  v5[1] = v6;
  v7 = v4[10];
  *(a3 + v7) = swift_getKeyPath();
  sub_100009F70(&qword_100219720);
  swift_storeEnumTagMultiPayload();
  v8 = a3 + v4[11];
  result = swift_getKeyPath();
  *v8 = result;
  *(v8 + 8) = 0;
  return result;
}

uint64_t sub_100186E68()
{
  sub_100009F70(&qword_10021CD20);
  State.init(wrappedValue:)();
  return v1;
}

void sub_100186EC0()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_100187450();
    if (v1 <= 0x3F)
    {
      sub_10012EB5C();
      if (v2 <= 0x3F)
      {
        sub_100027AA4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_100186F78(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(type metadata accessor for ContentSizeCategory() - 8);
  v10 = 8;
  if (*(v9 + 64) > 8uLL)
  {
    v10 = *(v9 + 64);
  }

  v11 = *(v6 + 64);
  if (!a2)
  {
    return 0;
  }

  if (v8 < a2)
  {
    v12 = *(v9 + 80) & 0xF8 | 7;
    v13 = ((v10 + ((((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + v12 + 16) & ~v12) + 8) & 0xFFFFFFFFFFFFFFF8) + 9;
    if (v13 <= 3)
    {
      v14 = ((a2 - v8 + 255) >> 8) + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    if (v16 > 1)
    {
      if (v16 == 2)
      {
        v17 = *&a1[v13];
        if (!*&a1[v13])
        {
          goto LABEL_33;
        }
      }

      else
      {
        v17 = *&a1[v13];
        if (!v17)
        {
          goto LABEL_33;
        }
      }
    }

    else
    {
      if (!v16)
      {
        goto LABEL_33;
      }

      v17 = a1[v13];
      if (!a1[v13])
      {
        goto LABEL_33;
      }
    }

    v19 = v13 > 3;
    if (v13 <= 3)
    {
      v20 = (v17 - 1) << (8 * v13);
    }

    else
    {
      v20 = 0;
    }

    if (v19)
    {
      v24 = *a1;
    }

    else
    {
      v24 = *a1;
    }

    v23 = v8 + (v24 | v20);
    return (v23 + 1);
  }

LABEL_33:
  if (v7 < 0x7FFFFFFE)
  {
    v22 = *(&a1[v11 + 7] & 0xFFFFFFFFFFFFFFF8);
    if (v22 >= 0xFFFFFFFF)
    {
      LODWORD(v22) = -1;
    }

    v23 = v22 - 1;
    if (v23 < 0)
    {
      v23 = -1;
    }

    return (v23 + 1);
  }

  v21 = *(v6 + 48);

  return v21(a1, v7, v5);
}

void sub_1001871C0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v23 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(type metadata accessor for ContentSizeCategory() - 8);
  v12 = 8;
  if (*(v11 + 64) > 8uLL)
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v8 + 64);
  v14 = *(v11 + 80) & 0xF8 | 7;
  v15 = ((v12 + ((((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + v14 + 16) & ~v14) + 8) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v10 >= a3)
  {
    v18 = 0;
    if (v10 >= a2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v15 <= 3)
    {
      v16 = ((a3 - v10 + 255) >> 8) + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    if (v10 >= a2)
    {
LABEL_19:
      if (v18 > 1)
      {
        if (v18 != 2)
        {
          *&a1[v15] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_34;
        }

        *&a1[v15] = 0;
      }

      else if (v18)
      {
        a1[v15] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      if (!a2)
      {
        return;
      }

LABEL_34:
      if (v9 < 0x7FFFFFFE)
      {
        v22 = (&a1[v13 + 7] & 0xFFFFFFFFFFFFFFF8);
        if (a2 > 0x7FFFFFFE)
        {
          *v22 = (a2 - 0x7FFFFFFF);
          v22[1] = 0;
        }

        else
        {
          *v22 = a2;
        }
      }

      else
      {
        v21 = *(v23 + 56);

        v21(a1, a2, v9, v7);
      }

      return;
    }
  }

  v19 = ~v10 + a2;
  bzero(a1, v15);
  if (v15 <= 3)
  {
    v20 = (v19 >> 8) + 1;
  }

  else
  {
    v20 = 1;
  }

  if (v15 <= 3)
  {
    *a1 = v19;
    if (v18 > 1)
    {
LABEL_29:
      if (v18 == 2)
      {
        *&a1[v15] = v20;
      }

      else
      {
        *&a1[v15] = v20;
      }

      return;
    }
  }

  else
  {
    *a1 = v19;
    if (v18 > 1)
    {
      goto LABEL_29;
    }
  }

  if (v18)
  {
    a1[v15] = v20;
  }
}

void sub_100187450()
{
  if (!qword_1002226B0)
  {
    sub_10000B3DC(&qword_10021CD20);
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_1002226B0);
    }
  }
}

uint64_t sub_1001874F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(a1);
  v9 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v8 + 16);
  v11 = *(v8 + 24);
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0x4028000000000000;
  *(a2 + 16) = 0;
  v12 = sub_100009F70(&qword_1002226B8);
  sub_100187690(v3, v10, v11, a2 + *(v12 + 44));
  (*(v6 + 16))(v9, v3, a1);
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v10;
  *(v14 + 24) = v11;
  (*(v6 + 32))(v14 + v13, v9, a1);
  v15 = (a2 + *(sub_100009F70(&qword_1002226C0) + 36));
  type metadata accessor for _TaskModifier();
  result = static TaskPriority.userInitiated.getter();
  *v15 = &unk_1001BC658;
  v15[1] = v14;
  return result;
}

uint64_t sub_100187690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v91 = a3;
  v90 = a2;
  v89 = a1;
  v106 = a4;
  v5 = type metadata accessor for AccessibilityTraits();
  v104 = *(v5 - 8);
  v105 = v5;
  __chkstk_darwin(v5);
  v103 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for AccessibilityChildBehavior();
  v101 = *(v102 - 8);
  __chkstk_darwin(v102);
  v96 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_100009F70(&qword_10021C078);
  __chkstk_darwin(v97);
  v9 = &v81 - v8;
  v99 = sub_100009F70(&qword_10021C080);
  v100 = *(v99 - 8);
  __chkstk_darwin(v99);
  v94 = &v81 - v10;
  v11 = sub_100009F70(&qword_10021C088);
  v12 = __chkstk_darwin(v11 - 8);
  v98 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v95 = &v81 - v14;
  v15 = type metadata accessor for RoundedRectangle();
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v18 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_100009F70(&qword_1002226C8);
  __chkstk_darwin(v88);
  v20 = &v81 - v19;
  v92 = sub_100009F70(&qword_1002226D0);
  __chkstk_darwin(v92);
  v22 = &v81 - v21;
  v23 = sub_100009F70(&qword_1002226D8);
  v24 = __chkstk_darwin(v23 - 8);
  v93 = &v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v87 = &v81 - v26;
  sub_100188118(a1, &v112);
  v27 = v114;
  v28 = type metadata accessor for RoundedCornerStyle();
  v82 = v112;
  v81 = v113;
  v29 = *(v16 + 28);
  v85 = enum case for RoundedCornerStyle.continuous(_:);
  v30 = *(v28 - 8);
  v84 = *(v30 + 104);
  v86 = v30 + 104;
  v84(&v18[v29]);
  __asm { FMOV            V0.2D, #10.0 }

  v83 = _Q0;
  *v18 = _Q0;
  v36 = static HierarchicalShapeStyle.primary.getter();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v37 = &v20[*(sub_100009F70(&qword_1002226E0) + 36)];
  sub_1000A3BD8(v18, v37);
  v38 = v37 + *(sub_100009F70(&qword_10021BE20) + 36);
  v39 = v110;
  *v38 = v109;
  *(v38 + 16) = v39;
  *(v38 + 32) = v111;
  v40 = sub_100009F70(&qword_1002226E8);
  v41 = (v37 + *(v40 + 52));
  *v41 = v36;
  v41[1] = 1036831949;
  *(v37 + *(v40 + 56)) = 256;
  v42 = static Alignment.center.getter();
  v44 = v43;
  sub_1000A3C3C(v18);
  v45 = (v37 + *(sub_100009F70(&qword_1002226F0) + 36));
  *v45 = v42;
  v45[1] = v44;
  v46 = static Alignment.center.getter();
  v48 = v47;
  v49 = (v37 + *(sub_100009F70(&qword_1002226F8) + 36));
  *v49 = v46;
  v49[1] = v48;
  v50 = v81;
  *v20 = v82;
  *(v20 + 1) = v50;
  v20[32] = v27;
  KeyPath = swift_getKeyPath();
  v52 = swift_allocObject();
  *(v52 + 16) = 1;
  v53 = &v20[*(sub_100009F70(&qword_100222700) + 36)];
  *v53 = KeyPath;
  v53[1] = sub_100189D14;
  v53[2] = v52;
  LOBYTE(KeyPath) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v62 = &v20[*(sub_100009F70(&qword_100222708) + 36)];
  *v62 = KeyPath;
  *(v62 + 1) = v55;
  *(v62 + 2) = v57;
  *(v62 + 3) = v59;
  *(v62 + 4) = v61;
  v62[40] = 0;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v63 = &v20[*(sub_100009F70(&qword_100222710) + 36)];
  v64 = v113;
  *v63 = v112;
  *(v63 + 1) = v64;
  *(v63 + 2) = v114;
  *&v20[*(sub_100009F70(&qword_100222718) + 36)] = 0;
  v65 = &v20[*(v88 + 36)];
  (v84)(&v65[*(v16 + 28)], v85, v28);
  *v65 = v83;
  *&v65[*(sub_100009F70(&qword_100218928) + 36)] = 256;
  sub_100189D2C();
  View.accessibility(hidden:)();
  sub_10000D52C(v20, &qword_1002226C8);
  v22[*(v92 + 36)] = 1;
  sub_10018A2EC();
  v66 = v87;
  View.accessibilityIdentifier(_:)();
  sub_10000D52C(v22, &qword_1002226D0);
  *v9 = static HorizontalAlignment.leading.getter();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v67 = sub_100009F70(&qword_10021C110);
  sub_1001884C8(v89, v90, v91, &v9[*(v67 + 44)]);
  v68 = v96;
  static AccessibilityChildBehavior.combine.getter();
  v69 = sub_10000D1EC(&qword_10021C118, &qword_10021C078);
  v70 = v94;
  v71 = v97;
  View.accessibilityElement(children:)();
  (*(v101 + 8))(v68, v102);
  sub_10000D52C(v9, &qword_10021C078);
  v72 = v103;
  static AccessibilityTraits.isHeader.getter();
  v107 = v71;
  v108 = v69;
  swift_getOpaqueTypeConformance2();
  v73 = v95;
  v74 = v99;
  View.accessibility(addTraits:)();
  (*(v104 + 8))(v72, v105);
  (*(v100 + 8))(v70, v74);
  v75 = v93;
  sub_10000D58C(v66, v93, &qword_1002226D8);
  v76 = v98;
  sub_1000916F0(v73, v98);
  v77 = v106;
  sub_10000D58C(v75, v106, &qword_1002226D8);
  v78 = sub_100009F70(&qword_1002227A0);
  sub_1000916F0(v76, v77 + *(v78 + 48));
  v79 = v77 + *(v78 + 64);
  *v79 = 0;
  *(v79 + 8) = 1;
  sub_100091760(v73);
  sub_10000D52C(v66, &qword_1002226D8);
  sub_100091760(v76);
  return sub_10000D52C(v75, &qword_1002226D8);
}

double sub_100188118@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v22 = a2;
  v3 = type metadata accessor for OpacityTransition();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = type metadata accessor for Image.ResizingMode();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(a1 + *(type metadata accessor for VenueEventListHeader() + 36));
  sub_100009F70(&qword_10021D600);
  State.wrappedValue.getter();
  if (v23)
  {
    v14 = v23;
    Image.init(uiImage:)();
    (*(v11 + 104))(v13, enum case for Image.ResizingMode.stretch(_:), v10);
    v15 = Image.resizable(capInsets:resizingMode:)();

    (*(v11 + 8))(v13, v10);
    OpacityTransition.init()();
    (*(v4 + 16))(v7, v9, v3);
    sub_10018A538(&qword_10021D618, &type metadata accessor for OpacityTransition);
    v16 = AnyTransition.init<A>(_:)();
    (*(v4 + 8))(v9, v3);
    v23 = v15;
    v24 = xmmword_1001BC550;
    v25 = v16;
    v26 = 0;

    sub_100009F70(&qword_100222778);
    sub_10018A234();
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v17 = [objc_opt_self() systemGray5Color];
    v23 = Color.init(uiColor:)();
    v24 = 0uLL;
    v25 = 0;
    v26 = 1;
    sub_100009F70(&qword_100222778);
    sub_10018A234();
    _ConditionalContent<>.init(storage:)();
  }

  result = *&v27;
  v19 = v28;
  v20 = v29;
  v21 = v22;
  *v22 = v27;
  v21[1] = v19;
  *(v21 + 32) = v20;
  return result;
}

uint64_t sub_1001884C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v77 = a3;
  v80 = a2;
  v76 = a1;
  v90 = a4;
  v4 = sub_100009F70(&qword_10021C128);
  v5 = __chkstk_darwin(v4 - 8);
  v89 = &v67[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v88 = &v67[-v7];
  v8 = type metadata accessor for ContentSizeCategory();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v67[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v14 = &v67[-v13];
  v15 = sub_100009F70(&qword_10021C140);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v18 = &v67[-v17];
  v84 = sub_100009F70(&qword_10021C148) - 8;
  __chkstk_darwin(v84);
  v82 = &v67[-v19];
  v86 = sub_100009F70(&qword_10021C130);
  __chkstk_darwin(v86);
  v85 = &v67[-v20];
  v21 = sub_100009F70(&qword_10021C138);
  v22 = __chkstk_darwin(v21 - 8);
  v87 = &v67[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v22);
  v83 = &v67[-v24];
  LocalizedStringKey.init(stringLiteral:)();
  v70 = Text.init(_:tableName:bundle:comment:)();
  v69 = v25;
  v68 = v26;
  v71 = v27;
  v81 = *(type metadata accessor for VenueEventListHeader() + 40);
  sub_100024890(v14);
  v79 = enum case for ContentSizeCategory.accessibilityMedium(_:);
  v78 = *(v9 + 104);
  v28 = v12;
  v73 = v8;
  v78(v12);
  v72 = v14;
  v74 = v12;
  v29 = sub_1000B06A0(v14, v12);
  v30 = *(v9 + 8);
  v75 = v9 + 8;
  v30(v28, v8);
  v30(v14, v8);
  if (v29)
  {
    v31 = 2;
  }

  else
  {
    v31 = 1;
  }

  KeyPath = swift_getKeyPath();
  v33 = &v18[*(v16 + 44)];
  v34 = *(sub_100009F70(&qword_100219828) + 28);
  v35 = enum case for Text.Case.uppercase(_:);
  v36 = type metadata accessor for Text.Case();
  v37 = *(v36 - 8);
  (*(v37 + 104))(v33 + v34, v35, v36);
  (*(v37 + 56))(v33 + v34, 0, 1, v36);
  *v33 = swift_getKeyPath();
  v38 = v69;
  *v18 = v70;
  *(v18 + 1) = v38;
  v18[16] = v68 & 1;
  *(v18 + 3) = v71;
  *(v18 + 4) = KeyPath;
  *(v18 + 5) = v31;
  v18[48] = 0;
  static Font.caption.getter();
  static Font.Weight.semibold.getter();
  v39 = Font.weight(_:)();

  v40 = swift_getKeyPath();
  v41 = v82;
  sub_10000F618(v18, v82, &qword_10021C140);
  v42 = &v41[*(v84 + 44)];
  *v42 = v40;
  v42[1] = v39;
  v43 = [objc_opt_self() secondaryLabelColor];
  v44 = Color.init(uiColor:)();
  v45 = v41;
  v46 = v85;
  sub_10000F618(v45, v85, &qword_10021C148);
  *&v46[*(v86 + 36)] = v44;
  sub_1000917E0();
  v47 = v83;
  View.accessibilityIdentifier(_:)();
  sub_10000D52C(v46, &qword_10021C130);
  v48 = (*(v77 + 48))(v80);
  v50 = v49;
  v51 = v72;
  sub_100024890(v72);
  v52 = v74;
  v53 = v73;
  (v78)(v74, v79, v73);
  v54 = v52;
  LOBYTE(v52) = sub_1000B06A0(v51, v52);
  v30(v54, v53);
  v30(v51, v53);
  if (v52)
  {
    v55 = 3;
  }

  else
  {
    v55 = 2;
  }

  v56 = swift_getKeyPath();
  static Font.title.getter();
  static Font.Weight.bold.getter();
  v57 = Font.weight(_:)();

  v58 = swift_getKeyPath();
  v99 = 0;
  v98 = 0;
  *&v91 = v48;
  *(&v91 + 1) = v50;
  LOBYTE(v92) = 0;
  *(&v92 + 1) = _swiftEmptyArrayStorage;
  *&v93 = v56;
  *(&v93 + 1) = v55;
  LOBYTE(v94) = 0;
  *(&v94 + 1) = v58;
  v95 = v57;
  sub_100009F70(&qword_10021C168);
  sub_100091A08();
  v59 = v88;
  View.accessibilityIdentifier(_:)();
  v96[2] = v93;
  v96[3] = v94;
  v97 = v95;
  v96[0] = v91;
  v96[1] = v92;
  sub_10000D52C(v96, &qword_10021C168);
  v60 = v47;
  v61 = v47;
  v62 = v87;
  sub_10000D58C(v61, v87, &qword_10021C138);
  v63 = v89;
  sub_10000D58C(v59, v89, &qword_10021C128);
  v64 = v90;
  sub_10000D58C(v62, v90, &qword_10021C138);
  v65 = sub_100009F70(&qword_10021C178);
  sub_10000D58C(v63, v64 + *(v65 + 48), &qword_10021C128);
  sub_10000D52C(v59, &qword_10021C128);
  sub_10000D52C(v60, &qword_10021C138);
  sub_10000D52C(v63, &qword_10021C128);
  return sub_10000D52C(v62, &qword_10021C138);
}

uint64_t sub_100188DC4()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  v2 = type metadata accessor for VenueEventListHeader();
  *v1 = v0;
  v1[1] = sub_100188E94;

  return sub_100189018(v2);
}

uint64_t sub_100188E94()
{

  if (v0)
  {

    dispatch thunk of Actor.unownedExecutor.getter();
    v1 = sub_100180E28;
  }

  else
  {
    dispatch thunk of Actor.unownedExecutor.getter();
    v1 = sub_10001D744;
  }

  return _swift_task_switch(v1);
}

uint64_t sub_100189018(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v2[6] = v4;
  v2[7] = *(v4 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = type metadata accessor for MainActor();
  v2[10] = static MainActor.shared.getter();
  v5 = swift_task_alloc();
  v2[11] = v5;
  v6 = *(a1 + 16);
  v2[12] = v6;
  v7 = *(a1 + 24);
  v2[13] = v7;
  *v5 = v2;
  v5[1] = sub_100189140;

  return sub_10019C8F0(v1, v6, v7);
}

uint64_t sub_100189140(uint64_t a1)
{
  v3 = *v2;
  v3[14] = a1;
  v3[15] = v1;

  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v1)
  {
    v6 = sub_10018983C;
  }

  else
  {
    v3[16] = v4;
    v3[17] = v5;
    v6 = sub_1001892AC;
  }

  return _swift_task_switch(v6);
}

uint64_t sub_1001892AC()
{
  v1 = *(v0 + 40) + *(*(v0 + 32) + 44);
  v2 = *v1;
  if (*(v1 + 8) == 1)
  {
    v3 = *v1;
    v4 = *v1;
  }

  else
  {
    v6 = *(v0 + 56);
    v5 = *(v0 + 64);
    v7 = *(v0 + 48);

    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100027EB0(*&v2, 0);
    v9 = *(v6 + 8);
    v9(v5, v7);
    v4 = *(v0 + 16);

    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100027EB0(*&v2, 0);
    v9(v5, v7);
    v3 = *(v0 + 24);
  }

  v11 = v3 * 60.0;
  v12 = swift_task_alloc();
  *(v0 + 144) = v12;
  *v12 = v0;
  v12[1] = sub_1001894D0;
  v13 = *(v0 + 112);

  return sub_10019DEE8(v13, v4 * 60.0, v11);
}

uint64_t sub_1001894D0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 152) = a1;
  *(v3 + 160) = v1;

  if (v1)
  {
    v4 = sub_10018973C;
  }

  else
  {
    v4 = sub_1001895EC;
  }

  return _swift_task_switch(v4);
}

uint64_t sub_1001895EC()
{
  *(v0 + 168) = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100189678);
}

uint64_t sub_100189678()
{
  v1 = *(v0 + 160);

  sub_1001898A8();
  if (v1)
  {
  }

  else
  {

    return _swift_task_switch(sub_1001897B0);
  }
}

uint64_t sub_10018973C()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001897B0()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10018983C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001898A8()
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

uint64_t sub_10018992C(uint64_t a1, void *a2)
{
  type metadata accessor for VenueEventListHeader();
  v3 = a2;
  sub_100009F70(&qword_10021D600);
  return State.wrappedValue.setter();
}

uint64_t sub_1001899B4()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for VenueEventListHeader();
  v3 = v0 + ((*(*(v2 - 1) + 80) + 32) & ~*(*(v2 - 1) + 80));
  (*(*(v1 - 8) + 8))(v3, v1);

  v4 = v2[10];
  sub_100009F70(&qword_100219720);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for ContentSizeCategory();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  sub_100027EB0(*(v3 + v2[11]), *(v3 + v2[11] + 8));

  return swift_deallocObject();
}

uint64_t sub_100189B38()
{
  type metadata accessor for VenueEventListHeader();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000D890;

  return sub_100188DC4();
}

uint64_t sub_100189C20@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100189CAC@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

unint64_t sub_100189D2C()
{
  result = qword_100222720;
  if (!qword_100222720)
  {
    sub_10000B3DC(&qword_1002226C8);
    sub_100189DE4();
    sub_10000D1EC(&qword_100218920, &qword_100218928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222720);
  }

  return result;
}

unint64_t sub_100189DE4()
{
  result = qword_100222728;
  if (!qword_100222728)
  {
    sub_10000B3DC(&qword_100222718);
    sub_100189E9C();
    sub_10000D1EC(&qword_10021B628, &qword_10021B630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222728);
  }

  return result;
}

unint64_t sub_100189E9C()
{
  result = qword_100222730;
  if (!qword_100222730)
  {
    sub_10000B3DC(&qword_100222710);
    sub_100189F28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222730);
  }

  return result;
}

unint64_t sub_100189F28()
{
  result = qword_100222738;
  if (!qword_100222738)
  {
    sub_10000B3DC(&qword_100222708);
    sub_100189FB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222738);
  }

  return result;
}

unint64_t sub_100189FB4()
{
  result = qword_100222740;
  if (!qword_100222740)
  {
    sub_10000B3DC(&qword_100222700);
    sub_10018A06C();
    sub_10000D1EC(&qword_10021FAB0, &qword_10021FAB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222740);
  }

  return result;
}

unint64_t sub_10018A06C()
{
  result = qword_100222748;
  if (!qword_100222748)
  {
    sub_10000B3DC(&qword_1002226E0);
    sub_10018A124();
    sub_10000D1EC(&qword_100222780, &qword_1002226F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222748);
  }

  return result;
}

unint64_t sub_10018A124()
{
  result = qword_100222750;
  if (!qword_100222750)
  {
    sub_10000B3DC(&qword_100222758);
    sub_10018A1A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222750);
  }

  return result;
}

unint64_t sub_10018A1A8()
{
  result = qword_100222760;
  if (!qword_100222760)
  {
    sub_10000B3DC(&qword_100222768);
    sub_10018A234();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222760);
  }

  return result;
}

unint64_t sub_10018A234()
{
  result = qword_100222770;
  if (!qword_100222770)
  {
    sub_10000B3DC(&qword_100222778);
    sub_100079534();
    sub_10000D1EC(&qword_10021D670, &qword_10021D678);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222770);
  }

  return result;
}

unint64_t sub_10018A2EC()
{
  result = qword_100222788;
  if (!qword_100222788)
  {
    sub_10000B3DC(&qword_1002226D0);
    sub_10018A378();
    sub_10002D070();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222788);
  }

  return result;
}

unint64_t sub_10018A378()
{
  result = qword_100222790;
  if (!qword_100222790)
  {
    sub_10000B3DC(&qword_100222798);
    sub_100189D2C();
    sub_10018A538(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222790);
  }

  return result;
}

unint64_t sub_10018A450()
{
  result = qword_1002227A8;
  if (!qword_1002227A8)
  {
    sub_10000B3DC(&qword_1002226C0);
    sub_10000D1EC(&qword_1002227B0, &qword_1002227B8);
    sub_10018A538(&qword_100218490, &type metadata accessor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002227A8);
  }

  return result;
}

uint64_t sub_10018A538(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_10018A610@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v6 = UUID.uuidString.getter();
  v34 = v7;
  v35 = v6;
  (*(v3 + 8))(v5, v2);
  v32 = 0x80000001001C20E0;
  v33 = 0x80000001001C2100;
  v8 = type metadata accessor for DesignTimeMusicPlaylist();
  v9 = *(v8 + 32);
  v10 = v8;
  v31 = v8;
  sub_1000214E8((a1 + v9));
  v11 = type metadata accessor for DesignTimeImage();
  v12 = *(*(v11 - 8) + 56);
  v12(a1 + v9, 0, 1, v11);
  v13 = *(v10 + 36);
  v14 = type metadata accessor for URL();
  v30 = *(*(v14 - 8) + 56);
  v30(a1 + v13, 1, 1, v14);
  sub_100009F70(&qword_100222848);
  v15 = (type metadata accessor for DesignTimeSong() - 8);
  v16 = (*(*v15 + 80) + 32) & ~*(*v15 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1001AEB90;
  v18 = (v17 + v16);
  v29 = 0x80000001001C2130;
  v19 = v15[9];
  sub_1000214E8(&v18[v19]);
  v12(&v18[v19], 0, 1, v11);
  URL.init(string:)();
  v20 = v15[11];
  v21 = type metadata accessor for PlayParameters();
  (*(*(v21 - 8) + 56))(&v18[v20], 1, 1, v21);
  v30(&v18[v15[13]], 1, 1, v14);
  *v18 = 0x61662072656B6F50;
  *(v18 + 1) = 0xEA00000000006563;
  *(v18 + 2) = 0x676147207964614CLL;
  *(v18 + 3) = 0xE900000000000061;
  v22 = v29;
  *(v18 + 4) = 0xD000000000000010;
  *(v18 + 5) = v22;
  v23 = &v18[v15[12]];
  *v23 = 0;
  v23[8] = 1;
  v18[v15[14]] = 0;
  v24 = v34;
  *a1 = v35;
  *(a1 + 8) = v24;
  v25 = v32;
  *(a1 + 16) = 0xD000000000000014;
  *(a1 + 24) = v25;
  result = 1.09334023e257;
  *(a1 + 32) = xmmword_1001BC810;
  v27 = v33;
  *(a1 + 48) = 0xD000000000000021;
  *(a1 + 56) = v27;
  *(a1 + *(v31 + 40)) = v17;
  return result;
}

void sub_10018A9C4()
{
  v1 = type metadata accessor for URL();
  v21 = *(v1 - 8);
  v22 = v1;
  __chkstk_darwin(v1);
  v20 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100009F70(qword_100218748);
  __chkstk_darwin(v3 - 8);
  v5 = &v19 - v4;
  v6 = type metadata accessor for DesignTimeImage();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100009F70(&qword_10021E8F0);
  __chkstk_darwin(v10 - 8);
  v12 = &v19 - v11;
  String.hash(into:)();
  String.hash(into:)();
  if (*(v0 + 40))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (*(v0 + 56))
    {
LABEL_3:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_6;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (*(v0 + 56))
    {
      goto LABEL_3;
    }
  }

  Hasher._combine(_:)(0);
LABEL_6:
  v13 = type metadata accessor for DesignTimeMusicPlaylist();
  sub_10000D58C(v0 + v13[8], v12, &qword_10021E8F0);
  if ((*(v7 + 48))(v12, 1, v6) == 1)
  {
    Hasher._combine(_:)(0);
    v15 = v21;
    v14 = v22;
  }

  else
  {
    sub_100028E88(v12, v9);
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    sub_10018B788(&qword_1002191D8, &type metadata accessor for URL);
    v14 = v22;
    dispatch thunk of Hashable.hash(into:)();
    if (*&v9[*(v6 + 24)])
    {
      Hasher._combine(_:)(1u);
      type metadata accessor for CGColor(0);
      sub_10018B788(&qword_1002194F8, type metadata accessor for CGColor);
      _CFObject.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    v15 = v21;
    Hasher._combine(_:)(v9[*(v6 + 28)]);
    sub_100128D88(v9);
  }

  sub_10000D58C(v0 + v13[9], v5, qword_100218748);
  if ((*(v15 + 48))(v5, 1, v14) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v16 = v20;
    (*(v15 + 32))(v20, v5, v14);
    Hasher._combine(_:)(1u);
    sub_10018B788(&qword_1002191D8, &type metadata accessor for URL);
    dispatch thunk of Hashable.hash(into:)();
    (*(v15 + 8))(v16, v14);
  }

  v17 = *(v0 + v13[10]);
  Hasher._combine(_:)(*(v17 + 16));
  for (i = *(v17 + 16); i; --i)
  {
    MusicItemID.init(stringLiteral:)();
    String.hash(into:)();
  }
}

uint64_t sub_10018AF54(uint64_t a1)
{
  *(a1 + 8) = sub_10018B788(&qword_100222830, type metadata accessor for DesignTimeMusicPlaylist);
  result = sub_10018B788(&qword_100222838, type metadata accessor for DesignTimeMusicPlaylist);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for DesignTimeMusicPlaylist()
{
  result = qword_1002228A8;
  if (!qword_1002228A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Int sub_10018B06C()
{
  Hasher.init(_seed:)();
  sub_10018A9C4();
  return Hasher._finalize()();
}

Swift::Int sub_10018B0B0()
{
  Hasher.init(_seed:)();
  sub_10018A9C4();
  return Hasher._finalize()();
}

uint64_t sub_10018B0EC(void *a1, void *a2)
{
  v4 = type metadata accessor for URL();
  v51 = *(v4 - 8);
  __chkstk_darwin(v4);
  v48 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100009F70(qword_100218748);
  __chkstk_darwin(v6 - 8);
  v49 = &v46 - v7;
  v8 = sub_100009F70(&qword_10021E8E8);
  __chkstk_darwin(v8);
  v50 = &v46 - v9;
  v10 = type metadata accessor for DesignTimeImage();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_100009F70(&qword_10021E8F0);
  __chkstk_darwin(v14 - 8);
  v16 = (&v46 - v15);
  v17 = sub_100009F70(&qword_10021E8F8);
  __chkstk_darwin(v17);
  v19 = &v46 - v18;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_35;
  }

  v20 = a1[5];
  v21 = a2[5];
  if (v20)
  {
    if (!v21 || (a1[4] != a2[4] || v20 != v21) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  else if (v21)
  {
    goto LABEL_35;
  }

  v22 = a1[7];
  v23 = a2[7];
  if (v22)
  {
    if (!v23 || (a1[6] != a2[6] || v22 != v23) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  else if (v23)
  {
    goto LABEL_35;
  }

  v47 = v4;
  v46 = type metadata accessor for DesignTimeMusicPlaylist();
  v24 = *(v46 + 32);
  v25 = *(v17 + 48);
  sub_10000D58C(a1 + v24, v19, &qword_10021E8F0);
  v26 = a2 + v24;
  v27 = v25;
  sub_10000D58C(v26, &v19[v25], &qword_10021E8F0);
  v28 = *(v11 + 48);
  if (v28(v19, 1, v10) != 1)
  {
    sub_10000D58C(v19, v16, &qword_10021E8F0);
    if (v28(&v19[v27], 1, v10) != 1)
    {
      sub_100028E88(&v19[v27], v13);
      v31 = sub_100022244(v16, v13);
      sub_100128D88(v13);
      sub_100128D88(v16);
      sub_10000D52C(v19, &qword_10021E8F0);
      if ((v31 & 1) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_28;
    }

    sub_100128D88(v16);
LABEL_26:
    v29 = &qword_10021E8F8;
    v30 = v19;
LABEL_34:
    sub_10000D52C(v30, v29);
    goto LABEL_35;
  }

  if (v28(&v19[v27], 1, v10) != 1)
  {
    goto LABEL_26;
  }

  sub_10000D52C(v19, &qword_10021E8F0);
LABEL_28:
  v32 = v46;
  v33 = *(v46 + 36);
  v34 = *(v8 + 48);
  v35 = v50;
  sub_10000D58C(a1 + v33, v50, qword_100218748);
  sub_10000D58C(a2 + v33, v35 + v34, qword_100218748);
  v36 = v51;
  v37 = *(v51 + 48);
  v38 = v47;
  if (v37(v35, 1, v47) == 1)
  {
    if (v37(v35 + v34, 1, v38) == 1)
    {
      sub_10000D52C(v35, qword_100218748);
LABEL_38:
      v40 = sub_1000E4D6C(*(a1 + *(v32 + 40)), *(a2 + *(v32 + 40)));
      return v40 & 1;
    }

    goto LABEL_33;
  }

  v39 = v49;
  sub_10000D58C(v35, v49, qword_100218748);
  if (v37(v35 + v34, 1, v38) == 1)
  {
    (*(v36 + 8))(v39, v38);
LABEL_33:
    v29 = &qword_10021E8E8;
    v30 = v35;
    goto LABEL_34;
  }

  v42 = v35 + v34;
  v43 = v48;
  (*(v36 + 32))(v48, v42, v38);
  sub_10018B788(&qword_10021D560, &type metadata accessor for URL);
  v44 = dispatch thunk of static Equatable.== infix(_:_:)();
  v45 = *(v36 + 8);
  v45(v43, v38);
  v45(v39, v38);
  sub_10000D52C(v35, qword_100218748);
  if (v44)
  {
    goto LABEL_38;
  }

LABEL_35:
  v40 = 0;
  return v40 & 1;
}

uint64_t sub_10018B788(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10018B7E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100009F70(&qword_10021E8F0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100009F70(qword_100218748);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10018B934(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_100009F70(&qword_10021E8F0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100009F70(qword_100218748);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_10018BA70()
{
  sub_1000F72EC();
  if (v0 <= 0x3F)
  {
    sub_10018BBC4(319, &qword_10021E980, type metadata accessor for DesignTimeImage, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_10018BBC4(319, &qword_100218E80, &type metadata accessor for URL, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_10018BBC4(319, &qword_10021E968, type metadata accessor for DesignTimeSong, &type metadata accessor for Array);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10018BBC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_10018BC28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v8 = *a5;
  v9 = *a6;
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  v12.val[0] = *(v8 + 80);
  v12.val[1] = *(v9 + 80);
  v14 = 0;
  State.init(wrappedValue:)();
  v10 = v13[1];
  *(a7 + 32) = LOBYTE(v13[0]) & 1;
  *(a7 + 40) = v10;
  v15 = v12;
  vst2q_f64(v13, v15);
  type metadata accessor for PhoneWallpapersWatchFacesView();
  swift_getWitnessTable();
  Bindable<A>.init(wrappedValue:)();
  swift_getWitnessTable();
  return Bindable<A>.init(wrappedValue:)();
}

uint64_t sub_10018BDF0()
{
  type metadata accessor for PhoneWallpaperViewModel();
  type metadata accessor for Bindable();
  Bindable.wrappedValue.getter();
  return v1;
}

void sub_10018BE54()
{
  sub_10018C248(319, &qword_10021EBD0, &type metadata for String, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_10018C248(319, &qword_100222978, &type metadata for PhoneWallpapersWatchFacesConfiguration, &type metadata accessor for State);
    if (v1 <= 0x3F)
    {
      type metadata accessor for PhoneWallpaperViewModel();
      type metadata accessor for Bindable();
      if (v2 <= 0x3F)
      {
        type metadata accessor for WatchFacesViewModel();
        type metadata accessor for Bindable();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_10018BF9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    type metadata accessor for PhoneWallpaperViewModel();
    v8 = type metadata accessor for Bindable();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 60);

      return v11(v12, a2, v10);
    }

    else
    {
      type metadata accessor for WatchFacesViewModel();
      v13 = type metadata accessor for Bindable();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 64);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10018C0FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    type metadata accessor for PhoneWallpaperViewModel();
    v8 = type metadata accessor for Bindable();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 60);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      type metadata accessor for WatchFacesViewModel();
      v13 = type metadata accessor for Bindable();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 64);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_10018C248(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_10018C29C()
{
  result = qword_100222980;
  if (!qword_100222980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222980);
  }

  return result;
}

uint64_t sub_10018C2F0()
{
  type metadata accessor for WatchFacesViewModel();
  type metadata accessor for Bindable();
  Bindable.wrappedValue.getter();
  return v1;
}

uint64_t sub_10018C344@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = a1[4];
  v24 = a1[2];
  v25 = v3;
  type metadata accessor for PhoneWallpaperView();
  v4 = a1[3];
  v5 = a1[5];
  type metadata accessor for WatchFacesView();
  type metadata accessor for _ConditionalContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v6 = type metadata accessor for VStack();
  v26 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v23 - v7;
  sub_10000B3DC(&qword_100222988);
  v9 = type metadata accessor for ModifiedContent();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v23 - v14;
  *&v16 = v24;
  *&v17 = v25;
  *(&v16 + 1) = v4;
  *(&v17 + 1) = v5;
  v29 = v16;
  v30 = v17;
  v31 = v27;
  static HorizontalAlignment.center.getter();
  VStack.init(alignment:spacing:content:)();
  static Alignment.center.getter();
  WitnessTable = swift_getWitnessTable();
  sub_10000B5E0();
  View.background<A>(_:alignment:)();
  (*(v26 + 8))(v8, v6);
  v19 = sub_10000D1EC(&qword_100222990, &qword_100222988);
  v32 = WitnessTable;
  v33 = v19;
  v20 = swift_getWitnessTable();
  sub_100157EFC(v13, v9, v20);
  v21 = *(v10 + 8);
  v21(v13, v9);
  sub_100157EFC(v15, v9, v20);
  return (v21)(v15, v9);
}

uint64_t sub_10018C6B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v80 = a6;
  v11 = type metadata accessor for Optional();
  __chkstk_darwin(v11 - 8);
  v64 = &v60 - v12;
  v73 = a3;
  *(&v70 + 1) = a5;
  v13 = type metadata accessor for WatchFacesView();
  v67 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v66 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v65 = &v60 - v16;
  v17 = type metadata accessor for Optional();
  __chkstk_darwin(v17 - 8);
  v60 = &v60 - v18;
  v71 = a2;
  *&v70 = a4;
  v19 = type metadata accessor for PhoneWallpaperView();
  v63 = *(v19 - 8);
  v20 = __chkstk_darwin(v19);
  v62 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v61 = &v60 - v22;
  v75 = v23;
  v79 = v13;
  v24 = type metadata accessor for _ConditionalContent();
  v77 = *(v24 - 8);
  v78 = v24;
  v25 = __chkstk_darwin(v24);
  v76 = &v60 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v74 = &v60 - v27;
  v28 = *a1;
  v29 = a1[1];
  v30 = a1[3];
  v68 = a1[2];
  v69 = v28;
  LOBYTE(a4) = *(a1 + 32);
  v72 = a1;
  v31 = a1[5];
  LOBYTE(v92) = a4;
  *(&v92 + 1) = v31;

  sub_100009F70(&qword_100222998);
  State.projectedValue.getter();
  v32 = v97;
  v33 = v98;
  type metadata accessor for RemoteViewConfiguration();
  sub_10018F880(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
  v34 = EnvironmentObject.init()();
  *&v97 = v69;
  *(&v97 + 1) = v29;
  *&v98 = v68;
  *(&v98 + 1) = v30;
  v99 = v32;
  LOBYTE(v100) = v33;
  *(&v100 + 1) = v34;
  v101 = v35;
  LOBYTE(v92) = a4;
  *(&v92 + 1) = v31;
  State.wrappedValue.getter();
  if (v86)
  {
    v36 = v73;
    *&v92 = v71;
    *(&v92 + 1) = v73;
    v93 = v70;
    type metadata accessor for PhoneWallpapersWatchFacesView();
    sub_10018C2F0();
    v37 = v64;
    (*(*(v36 - 8) + 56))(v64, 1, 1, v36);
    v38 = v66;
    sub_10001555C(v37, v66);
    v39 = v79;
    WitnessTable = swift_getWitnessTable();
    v41 = v65;
    sub_100157EFC(v38, v39, WitnessTable);
    v42 = *(v67 + 8);
    v42(v38, v39);
    sub_100157EFC(v41, v39, WitnessTable);
    v43 = v75;
    swift_getWitnessTable();
    v44 = v74;
    sub_100061970(v38, v43, v39);
    v42(v38, v39);
    v45 = v41;
    v46 = v39;
  }

  else
  {
    v47 = v71;
    *&v92 = v71;
    *(&v92 + 1) = v73;
    v93 = v70;
    type metadata accessor for PhoneWallpapersWatchFacesView();
    sub_10018BDF0();
    v48 = v60;
    (*(*(v47 - 8) + 56))(v60, 1, 1, v47);
    v49 = v62;
    sub_100006C94(v48, v62);
    v50 = v75;
    v51 = swift_getWitnessTable();
    v52 = v61;
    sub_100157EFC(v49, v50, v51);
    v42 = *(v63 + 8);
    v42(v49, v50);
    sub_100157EFC(v52, v50, v51);
    swift_getWitnessTable();
    v44 = v74;
    sub_100061878(v49, v50);
    v42(v49, v50);
    v45 = v52;
    v46 = v50;
  }

  v42(v45, v46);
  v88 = v99;
  v89 = v100;
  v90 = v101;
  v86 = v97;
  v87 = v98;
  v91[0] = &v86;
  v54 = v76;
  v53 = v77;
  v55 = v78;
  (*(v77 + 16))(v76, v44, v78);
  v91[1] = v54;
  sub_10018F2BC(&v97, &v92);
  v85[0] = &type metadata for PhoneWallpapersWatchFacesHeader;
  v85[1] = v55;
  v83 = sub_10018F2F4();
  v56 = swift_getWitnessTable();
  v57 = swift_getWitnessTable();
  v81 = v56;
  v82 = v57;
  v84 = swift_getWitnessTable();
  sub_100151024(v91, 2uLL, v85);
  sub_10018F348(&v97);
  v58 = *(v53 + 8);
  v58(v44, v55);
  v58(v54, v55);
  v94 = v88;
  v95 = v89;
  v96 = v90;
  v92 = v86;
  v93 = v87;
  return sub_10018F348(&v92);
}

uint64_t sub_10018CE68@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100009F70(&qword_1002229A8);
  __chkstk_darwin(v3 - 8);
  v5 = v54 - v4;
  v6 = sub_100009F70(&qword_1002229B0);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = v54 - v8;
  v10 = sub_100009F70(&qword_1002229B8);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = v54 - v12;
  v14 = sub_100009F70(&qword_1002229C0);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v17 = v54 - v16;
  *v5 = static HorizontalAlignment.leading.getter();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v18 = sub_100009F70(&qword_1002229C8);
  sub_10018D1D4(v1, &v5[*(v18 + 44)]);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10000F618(v5, v9, &qword_1002229A8);
  v19 = &v9[*(v7 + 44)];
  v20 = v54[5];
  *(v19 + 4) = v54[4];
  *(v19 + 5) = v20;
  *(v19 + 6) = v54[6];
  v21 = v54[1];
  *v19 = v54[0];
  *(v19 + 1) = v21;
  v22 = v54[3];
  *(v19 + 2) = v54[2];
  *(v19 + 3) = v22;
  v23 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_10000F618(v9, v13, &qword_1002229B0);
  v32 = &v13[*(v11 + 44)];
  *v32 = v23;
  *(v32 + 1) = v25;
  *(v32 + 2) = v27;
  *(v32 + 3) = v29;
  *(v32 + 4) = v31;
  v32[40] = 0;
  v33 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  sub_10000F618(v13, v17, &qword_1002229B8);
  v42 = &v17[*(v15 + 44)];
  *v42 = v33;
  *(v42 + 1) = v35;
  *(v42 + 2) = v37;
  *(v42 + 3) = v39;
  *(v42 + 4) = v41;
  v42[40] = 0;
  v43 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  sub_10000F618(v17, a1, &qword_1002229C0);
  result = sub_100009F70(&qword_1002229D0);
  v53 = a1 + *(result + 36);
  *v53 = v43;
  *(v53 + 8) = v45;
  *(v53 + 16) = v47;
  *(v53 + 24) = v49;
  *(v53 + 32) = v51;
  *(v53 + 40) = 0;
  return result;
}

uint64_t sub_10018D1D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v73 = sub_100009F70(&qword_1002229D8);
  v3 = __chkstk_darwin(v73);
  v77 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v75 = (&v66 - v5);
  v6 = sub_100009F70(&qword_10021A608);
  v72 = *(v6 - 8);
  __chkstk_darwin(v6);
  v71 = &v66 - v7;
  v8 = sub_100009F70(&qword_1002229E0);
  v9 = __chkstk_darwin(v8 - 8);
  v74 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v66 - v11;
  v105 = *(a1 + 32);
  v106 = *(a1 + 48);
  v93 = *(a1 + 32);
  LOBYTE(v94) = *(a1 + 48);
  v70 = sub_100009F70(&qword_1002229E8);
  Binding.wrappedValue.getter();
  LocalizedStringKey.init(stringLiteral:)();
  v13 = Text.init(_:tableName:bundle:comment:)();
  v15 = v14;
  v17 = v16;
  static Font.title2.getter();
  static Font.Weight.bold.getter();
  Font.weight(_:)();

  v18 = Text.font(_:)();
  v81 = v19;
  v82 = v18;
  v21 = v20;
  v83 = v22;

  sub_10000D60C(v13, v15, v17 & 1);

  KeyPath = swift_getKeyPath();
  v79 = swift_getKeyPath();
  v78 = v21 & 1;
  v104 = v21 & 1;
  v102 = 0;
  v23 = *(a1 + 24);
  if (v23)
  {
    v67 = v6;
    v68 = a1;
    v69 = v12;
    v24 = *(a1 + 16);
    v93 = v105;
    LOBYTE(v94) = v106;
    Binding.wrappedValue.getter();
    sub_10018DA0C(v24, v23, v84);
    v25 = Text.init(_:tableName:bundle:comment:)();
    v27 = v26;
    v29 = v28;
    static Font.subheadline.getter();
    static Font.Weight.regular.getter();
    Font.weight(_:)();

    v30 = Text.font(_:)();
    v32 = v31;
    v34 = v33;

    sub_10000D60C(v25, v27, v29 & 1);

    if (qword_100218338 != -1)
    {
      swift_once();
    }

    *&v93 = qword_100230570;

    v35 = Text.foregroundStyle<A>(_:)();
    v37 = v36;
    v39 = v38;
    v41 = v40;
    sub_10000D60C(v30, v32, v34 & 1);

    v42 = swift_getKeyPath();
    v43 = swift_getKeyPath();
    v39 &= 1u;
    LOBYTE(v93) = v39;
    LOBYTE(v84) = 0;
    v44 = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v92 = 0;
    *&v84 = v35;
    *(&v84 + 1) = v37;
    LOBYTE(v85) = v39;
    *(&v85 + 1) = v41;
    *&v86 = v42;
    *(&v86 + 1) = 2;
    LOBYTE(v87) = 0;
    *(&v87 + 1) = v43;
    LOBYTE(v88) = 0;
    BYTE8(v88) = v44;
    *&v89 = v45;
    *(&v89 + 1) = v46;
    *&v90 = v47;
    *(&v90 + 1) = v48;
    v91 = 0;
    sub_100009F70(&qword_10021A618);
    sub_10018FB8C(&qword_10021A620, &qword_10021A618, &unk_1001AFD40, sub_10004DC70);
    v49 = v71;
    View.accessibilityIdentifier(_:)();
    v97 = v88;
    v98 = v89;
    v99 = v90;
    v100 = v91;
    v93 = v84;
    v94 = v85;
    v95 = v86;
    v96 = v87;
    sub_10000D52C(&v93, &qword_10021A618);
    v12 = v69;
    sub_10000F618(v49, v69, &qword_10021A608);
    (*(v72 + 56))(v12, 0, 1, v67);
    a1 = v68;
  }

  else
  {
    (*(v72 + 56))(v12, 1, 1, v6);
  }

  v50 = static VerticalAlignment.center.getter();
  v51 = v75;
  *v75 = v50;
  *(v51 + 8) = 0x4020000000000000;
  *(v51 + 16) = 0;
  v52 = sub_100009F70(&qword_1002229F0);
  sub_10018DB04(a1, (v51 + *(v52 + 44)));
  v53 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v54 = v74;
  v55 = v51 + *(v73 + 36);
  *v55 = v53;
  *(v55 + 8) = v56;
  *(v55 + 16) = v57;
  *(v55 + 24) = v58;
  *(v55 + 32) = v59;
  *(v55 + 40) = 0;
  sub_10000D58C(v12, v54, &qword_1002229E0);
  v60 = v77;
  sub_10018F50C(v51, v77);
  *&v84 = v82;
  *(&v84 + 1) = v81;
  LOBYTE(v85) = v78;
  *(&v85 + 1) = *v103;
  DWORD1(v85) = *&v103[3];
  *(&v85 + 1) = v83;
  *&v86 = KeyPath;
  *(&v86 + 1) = 2;
  LOBYTE(v87) = 0;
  *(&v87 + 1) = *v101;
  DWORD1(v87) = *&v101[3];
  *(&v87 + 1) = v79;
  LOBYTE(v88) = 0;
  v61 = v76;
  *(v76 + 64) = 0;
  v62 = v85;
  *v61 = v84;
  v61[1] = v62;
  v63 = v87;
  v61[2] = v86;
  v61[3] = v63;
  v64 = sub_100009F70(&qword_1002229F8);
  sub_10000D58C(v54, v61 + *(v64 + 48), &qword_1002229E0);
  sub_10018F50C(v60, v61 + *(v64 + 64));
  sub_10000D58C(&v84, &v93, &qword_10021A630);
  sub_10018F57C(v51);
  sub_10000D52C(v12, &qword_1002229E0);
  sub_10018F57C(v60);
  sub_10000D52C(v54, &qword_1002229E0);
  *&v93 = v82;
  *(&v93 + 1) = v81;
  LOBYTE(v94) = v78;
  *(&v94 + 1) = *v103;
  DWORD1(v94) = *&v103[3];
  *(&v94 + 1) = v83;
  *&v95 = KeyPath;
  *(&v95 + 1) = 2;
  LOBYTE(v96) = 0;
  *(&v96 + 1) = *v101;
  DWORD1(v96) = *&v101[3];
  *(&v96 + 1) = v79;
  LOBYTE(v97) = 0;
  return sub_10000D52C(&v93, &qword_10021A630);
}

uint64_t sub_10018DA0C(uint64_t a1, void *a2, char a3)
{
  v6 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v6 - 8);
  if (a3)
  {
    v7 = "ts-Page-Title-Statictext";
  }

  else
  {
    v7 = "ICE_WATCHFACES_SUBHEADER ";
  }

  if (a3)
  {
    v8 = 0xD000000000000029;
  }

  else
  {
    v8 = 0xD00000000000002DLL;
  }

  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._object = (v7 | 0x8000000000000000);
  v9._countAndFlagsBits = v8;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v9);
  v10._countAndFlagsBits = a1;
  v10._object = a2;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v10);
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v11);
  return LocalizedStringKey.init(stringInterpolation:)();
}

uint64_t sub_10018DB04@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v49 = a2;
  v46 = sub_100009F70(&qword_100222A00);
  v48 = *(v46 - 8);
  __chkstk_darwin(v46);
  v43 = &v40 - v3;
  v47 = sub_100009F70(&qword_100222A08);
  v45 = *(v47 - 8);
  v4 = __chkstk_darwin(v47);
  v44 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v51 = &v40 - v6;
  v7 = type metadata accessor for PlainButtonStyle();
  v53 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100009F70(&qword_100222A10);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v40 - v12;
  v42 = sub_100009F70(&qword_100222A18);
  v52 = *(v42 - 8);
  v14 = __chkstk_darwin(v42);
  v41 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v50 = &v40 - v16;
  v17 = swift_allocObject();
  v18 = *(a1 + 48);
  *(v17 + 48) = *(a1 + 32);
  *(v17 + 64) = v18;
  *(v17 + 80) = *(a1 + 64);
  v19 = *(a1 + 16);
  *(v17 + 16) = *a1;
  *(v17 + 32) = v19;
  v55 = a1;
  sub_10018F2BC(a1, v56);
  sub_100009F70(&qword_100222A20);
  sub_10018F5F8();
  Button.init(action:label:)();
  PlainButtonStyle.init()();
  sub_10000D1EC(&qword_100222A60, &qword_100222A10);
  sub_10018F880(&qword_100218810, &type metadata accessor for PlainButtonStyle);
  View.buttonStyle<A>(_:)();
  v20 = *(v53 + 8);
  v53 += 8;
  v20(v9, v7);
  (*(v11 + 8))(v13, v10);
  v21 = swift_allocObject();
  v22 = *(a1 + 48);
  *(v21 + 48) = *(a1 + 32);
  *(v21 + 64) = v22;
  *(v21 + 80) = *(a1 + 64);
  v23 = *(a1 + 16);
  *(v21 + 16) = *a1;
  *(v21 + 32) = v23;
  v54 = a1;
  sub_10018F2BC(a1, v56);
  sub_100009F70(&qword_100222A68);
  sub_10018F930();
  v24 = v43;
  Button.init(action:label:)();
  PlainButtonStyle.init()();
  sub_10000D1EC(&qword_100222A88, &qword_100222A00);
  v25 = v51;
  v26 = v46;
  View.buttonStyle<A>(_:)();
  v20(v9, v7);
  (*(v48 + 8))(v24, v26);
  v27 = *(v52 + 16);
  v28 = v41;
  v29 = v42;
  v27(v41, v50, v42);
  v30 = v45;
  v31 = *(v45 + 16);
  v32 = v44;
  v33 = v25;
  v34 = v47;
  v31(v44, v33, v47);
  v35 = v49;
  v27(v49, v28, v29);
  v36 = sub_100009F70(&qword_100222A90);
  v31(&v35[*(v36 + 48)], v32, v34);
  v37 = *(v30 + 8);
  v37(v51, v34);
  v38 = *(v52 + 8);
  v38(v50, v29);
  v37(v32, v34);
  return (v38)(v28, v29);
}

void sub_10018E1FC(__int128 *a1)
{
  aBlock = a1[2];
  LOBYTE(v15) = *(a1 + 48);
  v13[0] = 0;
  sub_100009F70(&qword_1002229E8);
  Binding.wrappedValue.setter();
  v2 = *(a1 + 7);
  if (v2)
  {
    v12 = *a1;
    sub_100009F70(qword_100218F38);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001AD8A0;
    v4 = v12;
    *(inited + 56) = &type metadata for AnalyticsString;
    *(inited + 64) = &off_10021CBD0;
    *(inited + 32) = 0;
    *(inited + 40) = v4;
    *(inited + 96) = &type metadata for AnalyticsPageName;
    *(inited + 104) = &off_10021CBA8;
    *(inited + 72) = 13;
    *(inited + 136) = &type metadata for AnalyticsModuleName;
    *(inited + 144) = &off_10021CC30;
    *(inited + 112) = 12;
    *(inited + 176) = &type metadata for AnalyticsModuleAction;
    *(inited + 184) = &off_10021CC08;
    *(inited + 152) = xmmword_1001BC910;
    *(inited + 168) = 3;
    if (*(v2 + 72))
    {
      v5 = *(v2 + 64);
      v6 = *(v2 + 72);
    }

    else
    {
      v5 = 0;
      v6 = 0xE000000000000000;
    }

    LOBYTE(aBlock) = 1;
    *(&aBlock + 1) = v5;
    v15 = v6;

    sub_100081738(&v12, v13);

    v7 = sub_1001666DC(1, 5, 1, inited);
    v11 = v7;
    sub_1000109BC(&aBlock, v13);
    sub_1000EB0D0(4, v13, &v11, &type metadata for AnalyticsString, &off_10021CBD0);
    sub_100010A18(&aBlock);
    v8 = String._bridgeToObjectiveC()();
    v9 = swift_allocObject();
    v9[2] = 0xD00000000000001ELL;
    v9[3] = 0x80000001001BDDE0;
    v9[4] = v7;
    v17 = sub_100038F2C;
    v18 = v9;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v15 = sub_1000DCA40;
    v16 = &unk_100211E38;
    v10 = _Block_copy(&aBlock);

    AnalyticsSendEventLazy();

    _Block_release(v10);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10018F880(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t sub_10018E520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v3 = sub_100009F70(&qword_100222A48);
  __chkstk_darwin(v3 - 8);
  v72 = &v66 - v4;
  v71 = sub_100009F70(&qword_100222A38);
  __chkstk_darwin(v71);
  v73 = &v66 - v5;
  LocalizedStringKey.init(stringLiteral:)();
  v6 = Text.init(_:tableName:bundle:comment:)();
  v8 = v7;
  v10 = v9;
  static Font.footnote.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v11 = Text.font(_:)();
  v68 = v12;
  v69 = v13;
  v15 = v14;

  sub_10000D60C(v6, v8, v10 & 1);

  v107 = *(a1 + 32);
  v108 = *(a1 + 48);
  v89 = *(a1 + 32);
  LOBYTE(v90) = *(a1 + 48);
  v70 = sub_100009F70(&qword_1002229E8);
  Binding.wrappedValue.getter();
  if (v76)
  {
    v16 = static Color.primary.getter();
  }

  else
  {
    if (qword_100218328 != -1)
    {
      swift_once();
    }

    v16 = qword_100230560;
  }

  *&v89 = v16;
  v17 = v68;
  v67 = Text.foregroundStyle<A>(_:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_10000D60C(v11, v17, v15 & 1);

  KeyPath = swift_getKeyPath();
  v25 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = v21 & 1;
  v104 = v21 & 1;
  v103 = 0;
  v102 = 0;
  v35 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v105 = 0;
  v44 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v106 = 0;
  *&v76 = v67;
  *(&v76 + 1) = v19;
  LOBYTE(v77) = v34;
  *(&v77 + 1) = v23;
  *&v78 = KeyPath;
  *(&v78 + 1) = 1;
  LOBYTE(v79) = 0;
  BYTE8(v79) = v25;
  *&v80 = v27;
  *(&v80 + 1) = v29;
  *&v81 = v31;
  *(&v81 + 1) = v33;
  LOBYTE(v82) = 0;
  BYTE8(v82) = v35;
  *&v83 = v37;
  *(&v83 + 1) = v39;
  *&v84 = v41;
  *(&v84 + 1) = v43;
  LOBYTE(v85) = 0;
  BYTE8(v85) = v44;
  *&v86 = v45;
  *(&v86 + 1) = v46;
  *&v87 = v47;
  *(&v87 + 1) = v48;
  v88 = 0;
  sub_100009F70(&qword_100222A58);
  sub_10018FB8C(&qword_100222A50, &qword_100222A58, &unk_1001BCC10, sub_10018F850);
  v49 = v72;
  View.accessibilityIdentifier(_:)();
  v99 = v86;
  v100 = v87;
  v101 = v88;
  v95 = v82;
  v96 = v83;
  v97 = v84;
  v98 = v85;
  v91 = v78;
  v92 = v79;
  v93 = v80;
  v94 = v81;
  v89 = v76;
  v90 = v77;
  sub_10000D52C(&v89, &qword_100222A58);
  v76 = v107;
  LOBYTE(v77) = v108;
  Binding.wrappedValue.getter();
  if (v75)
  {
    if (qword_100218328 != -1)
    {
      swift_once();
    }

    v50 = qword_100230560;
  }

  else
  {
    v50 = static Color.primary.getter();
  }

  v51 = static Edge.Set.all.getter();
  v52 = v73;
  sub_10000F618(v49, v73, &qword_100222A48);
  v53 = v52 + *(v71 + 36);
  *v53 = v50;
  *(v53 + 8) = v51;
  v54 = sub_100009F70(&qword_100222A20);
  v55 = v74;
  v56 = (v74 + *(v54 + 36));
  v57 = *(type metadata accessor for RoundedRectangle() + 20);
  v58 = enum case for RoundedCornerStyle.continuous(_:);
  v59 = type metadata accessor for RoundedCornerStyle();
  (*(*(v59 - 8) + 104))(&v56[v57], v58, v59);
  __asm { FMOV            V0.2D, #16.0 }

  *v56 = _Q0;
  *&v56[*(sub_100009F70(&qword_100218928) + 36)] = 256;
  return sub_10000F618(v52, v55, &qword_100222A38);
}

void sub_10018EAE0(__int128 *a1)
{
  aBlock = a1[2];
  LOBYTE(v15) = *(a1 + 48);
  v13[0] = 1;
  sub_100009F70(&qword_1002229E8);
  Binding.wrappedValue.setter();
  v2 = *(a1 + 7);
  if (v2)
  {
    v12 = *a1;
    sub_100009F70(qword_100218F38);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001AD8A0;
    v4 = v12;
    *(inited + 56) = &type metadata for AnalyticsString;
    *(inited + 64) = &off_10021CBD0;
    *(inited + 32) = 0;
    *(inited + 40) = v4;
    *(inited + 96) = &type metadata for AnalyticsPageName;
    *(inited + 104) = &off_10021CBA8;
    *(inited + 72) = 13;
    *(inited + 136) = &type metadata for AnalyticsModuleName;
    *(inited + 144) = &off_10021CC30;
    *(inited + 112) = 12;
    *(inited + 176) = &type metadata for AnalyticsModuleAction;
    *(inited + 184) = &off_10021CC08;
    *(inited + 152) = xmmword_1001BC920;
    *(inited + 168) = 3;
    if (*(v2 + 72))
    {
      v5 = *(v2 + 64);
      v6 = *(v2 + 72);
    }

    else
    {
      v5 = 0;
      v6 = 0xE000000000000000;
    }

    LOBYTE(aBlock) = 1;
    *(&aBlock + 1) = v5;
    v15 = v6;

    sub_100081738(&v12, v13);

    v7 = sub_1001666DC(1, 5, 1, inited);
    v11 = v7;
    sub_1000109BC(&aBlock, v13);
    sub_1000EB0D0(4, v13, &v11, &type metadata for AnalyticsString, &off_10021CBD0);
    sub_100010A18(&aBlock);
    v8 = String._bridgeToObjectiveC()();
    v9 = swift_allocObject();
    v9[2] = 0xD00000000000001ELL;
    v9[3] = 0x80000001001BDDE0;
    v9[4] = v7;
    v17 = sub_100010AAC;
    v18 = v9;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v15 = sub_1000DCA40;
    v16 = &unk_100211DE8;
    v10 = _Block_copy(&aBlock);

    AnalyticsSendEventLazy();

    _Block_release(v10);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10018F880(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
    EnvironmentObject.error()();
    __break(1u);
  }
}

double sub_10018EE08@<D0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  static Font.footnote.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v7 = Text.font(_:)();
  v9 = v8;
  v11 = v10;

  sub_10000D60C(v2, v4, v6 & 1);

  sub_100009F70(&qword_1002229E8);
  Binding.wrappedValue.getter();
  if (v62 == 1)
  {
    if (qword_100218328 != -1)
    {
      swift_once();
    }
  }

  else
  {
    static Color.primary.getter();
  }

  v12 = Text.foregroundStyle<A>(_:)();
  v59 = v13;
  v60 = v12;
  v15 = v14;
  v58 = v16;
  sub_10000D60C(v7, v9, v11 & 1);

  KeyPath = swift_getKeyPath();
  v57 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v55 = v19;
  v56 = v18;
  v53 = v21;
  v54 = v20;
  v22 = v15 & 1;
  v23 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  Binding.wrappedValue.getter();
  if (v61 == 1)
  {
    v41 = static Color.primary.getter();
  }

  else
  {
    if (qword_100218328 != -1)
    {
      swift_once();
    }

    v41 = qword_100230560;
  }

  v42 = static Edge.Set.all.getter();
  v43 = (a1 + *(sub_100009F70(&qword_100222A68) + 36));
  v44 = *(type metadata accessor for RoundedRectangle() + 20);
  v45 = enum case for RoundedCornerStyle.continuous(_:);
  v46 = type metadata accessor for RoundedCornerStyle();
  (*(*(v46 - 8) + 104))(&v43[v44], v45, v46);
  __asm { FMOV            V0.2D, #16.0 }

  *v43 = _Q0;
  *&v43[*(sub_100009F70(&qword_100218928) + 36)] = 256;
  *a1 = v60;
  *(a1 + 8) = v59;
  *(a1 + 16) = v22;
  *(a1 + 24) = v58;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = v57;
  *(a1 + 64) = v56;
  *(a1 + 72) = v55;
  result = v53;
  *(a1 + 80) = v54;
  *(a1 + 88) = v53;
  *(a1 + 96) = 0;
  *(a1 + 104) = v23;
  *(a1 + 112) = v25;
  *(a1 + 120) = v27;
  *(a1 + 128) = v29;
  *(a1 + 136) = v31;
  *(a1 + 144) = 0;
  *(a1 + 152) = v32;
  *(a1 + 160) = v34;
  *(a1 + 168) = v36;
  *(a1 + 176) = v38;
  *(a1 + 184) = v40;
  *(a1 + 192) = 0;
  *(a1 + 200) = v41;
  *(a1 + 208) = v42;
  return result;
}

unint64_t sub_10018F2F4()
{
  result = qword_1002229A0;
  if (!qword_1002229A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002229A0);
  }

  return result;
}

uint64_t sub_10018F388()
{
  type metadata accessor for PhoneWallpaperView();
  type metadata accessor for WatchFacesView();
  type metadata accessor for _ConditionalContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  sub_10000B3DC(&qword_100222988);
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  sub_10000D1EC(&qword_100222990, &qword_100222988);
  return swift_getWitnessTable();
}

uint64_t sub_10018F50C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F70(&qword_1002229D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10018F57C(uint64_t a1)
{
  v2 = sub_100009F70(&qword_1002229D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10018F5F8()
{
  result = qword_100222A28;
  if (!qword_100222A28)
  {
    sub_10000B3DC(&qword_100222A20);
    sub_10018F6B0();
    sub_10000D1EC(&qword_100218920, &qword_100218928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222A28);
  }

  return result;
}

unint64_t sub_10018F6B0()
{
  result = qword_100222A30;
  if (!qword_100222A30)
  {
    sub_10000B3DC(&qword_100222A38);
    sub_10018F768();
    sub_10000D1EC(&qword_1002188F0, &qword_1002188F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222A30);
  }

  return result;
}

unint64_t sub_10018F768()
{
  result = qword_100222A40;
  if (!qword_100222A40)
  {
    sub_10000B3DC(&qword_100222A48);
    sub_10018FB8C(&qword_100222A50, &qword_100222A58, &unk_1001BCC10, sub_10018F850);
    sub_10018F880(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222A40);
  }

  return result;
}

uint64_t sub_10018F880(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10018F8C8()
{

  return swift_deallocObject();
}

unint64_t sub_10018F930()
{
  result = qword_100222A70;
  if (!qword_100222A70)
  {
    sub_10000B3DC(&qword_100222A68);
    sub_10018F9E8();
    sub_10000D1EC(&qword_100218920, &qword_100218928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222A70);
  }

  return result;
}

unint64_t sub_10018F9E8()
{
  result = qword_100222A78;
  if (!qword_100222A78)
  {
    sub_10000B3DC(&qword_100222A80);
    sub_10018FB8C(&qword_100222A50, &qword_100222A58, &unk_1001BCC10, sub_10018F850);
    sub_10000D1EC(&qword_1002188F0, &qword_1002188F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222A78);
  }

  return result;
}

uint64_t sub_10018FAD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10018FB8C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000B3DC(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10018FC10()
{
  result = qword_100222AB0;
  if (!qword_100222AB0)
  {
    sub_10000B3DC(&qword_1002229B0);
    sub_10000D1EC(&qword_100222AB8, &qword_1002229A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222AB0);
  }

  return result;
}

uint64_t sub_10018FCEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100009F70(&qword_100218950);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100009F70(&qword_100219838);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_10018FE30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100009F70(&qword_100218950);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100009F70(&qword_100219838);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for ErrorView()
{
  result = qword_100222B58;
  if (!qword_100222B58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10018FF9C()
{
  sub_1000617D8(319, &qword_10021A308, &type metadata accessor for DismissAction);
  if (v0 <= 0x3F)
  {
    sub_1000617D8(319, &qword_1002198B8, &type metadata accessor for ColorScheme);
    if (v1 <= 0x3F)
    {
      sub_10000B304();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10019008C()
{
  result = LocalizedStringKey.init(stringLiteral:)();
  qword_100222AC0 = result;
  *algn_100222AC8 = v1;
  byte_100222AD0 = v2 & 1;
  qword_100222AD8 = v3;
  return result;
}

uint64_t sub_1001900D4()
{
  result = LocalizedStringKey.init(stringLiteral:)();
  qword_100222AE0 = result;
  *algn_100222AE8 = v1;
  byte_100222AF0 = v2 & 1;
  qword_100222AF8 = v3;
  return result;
}

uint64_t sub_10019011C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27[0] = a1;
  v27[1] = a2;
  v2 = type metadata accessor for ColorScheme();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v27 - v7;
  v9 = sub_100009F70(&qword_100222BC8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v27 - v11;
  v13 = sub_100009F70(&qword_100222BB8);
  __chkstk_darwin(v13 - 8);
  v15 = v27 - v14;
  v16 = sub_100009F70(&qword_100222BA0);
  __chkstk_darwin(v16);
  v18 = v27 - v17;
  ContentUnavailableView.init(label:description:actions:)();
  sub_10000D1EC(&qword_100222BC0, &qword_100222BC8);
  View.accessibilityIdentifier(_:)();
  (*(v10 + 8))(v12, v9);
  type metadata accessor for ErrorView();
  sub_100024640(v8);
  (*(v3 + 104))(v6, enum case for ColorScheme.light(_:), v2);
  LOBYTE(v10) = static ColorScheme.== infix(_:_:)();
  v19 = *(v3 + 8);
  v19(v6, v2);
  v19(v8, v2);
  if (v10)
  {
    if (qword_100218330 != -1)
    {
      swift_once();
    }

    v20 = qword_100230568;
  }

  else
  {
    v20 = static Color.black.getter();
  }

  v21 = static Edge.Set.all.getter();
  v22 = sub_100191320(v15, v18);
  v23 = &v18[*(v16 + 36)];
  *v23 = v20;
  v23[8] = v21;
  __chkstk_darwin(v22);
  sub_100009F70(&qword_10021E3C0);
  sub_100191180();
  v24 = sub_10000B3DC(&qword_10021A8B8);
  v25 = sub_1000DB938();
  v27[2] = v24;
  v27[3] = v25;
  swift_getOpaqueTypeConformance2();
  View.toolbar<A>(content:)();
  return sub_100191398(v18);
}

uint64_t sub_1001905CC@<X0>(uint64_t a1@<X8>)
{
  if (qword_100218458 != -1)
  {
    swift_once();
  }

  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  static Font.title2.getter();
  v7 = Text.font(_:)();
  v9 = v8;
  v11 = v10;

  sub_10000D60C(v2, v4, v6 & 1);

  static Font.Weight.bold.getter();
  v12 = Text.fontWeight(_:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_10000D60C(v7, v9, v11 & 1);

  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v18;
  return result;
}

uint64_t sub_10019074C@<X0>(uint64_t a1@<X8>)
{
  if (qword_100218460 != -1)
  {
    swift_once();
  }

  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  static Font.body.getter();
  v7 = Text.font(_:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  sub_10000D60C(v2, v4, v6 & 1);

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_100190884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = sub_100009F70(&qword_10021A8A8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v25 - v5;
  v7 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v7 - 8);
  v27 = sub_100009F70(&qword_10021A8B0);
  v8 = *(v27 - 8);
  __chkstk_darwin(v27);
  v10 = &v25 - v9;
  v28 = sub_100009F70(&qword_10021A8B8);
  v11 = __chkstk_darwin(v28);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v25 - v14;
  v16 = *(type metadata accessor for ErrorView() + 24);
  v26 = a1;
  v17 = *(a1 + v16);
  if (v17)
  {
    v30 = v15;
    if (*(v17 + 88) && (*(v17 + 80) & 1) != 0)
    {
      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v18 & 1) == 0)
      {
        (*(v4 + 56))(v13, 1, 1, v3);
        v19 = sub_10000D1EC(&qword_10021A8E0, &qword_10021A8B0);
        v31 = v27;
        v32 = v19;
        swift_getOpaqueTypeConformance2();
        v20 = v30;
        static ToolbarContentBuilder.buildIf<A>(_:)();
        sub_1000DBA94(v13);
LABEL_8:
        sub_1000DB938();
        static ToolbarContentBuilder.buildBlock<A>(_:)();
        return sub_1000DBA94(v20);
      }
    }

    else
    {
    }

    v21 = static ToolbarItemPlacement.navigationBarTrailing.getter();
    v22 = v27;
    __chkstk_darwin(v21);
    *(&v25 - 2) = v26;
    sub_100042DC4();
    ToolbarItem<>.init(placement:content:)();
    v23 = sub_10000D1EC(&qword_10021A8E0, &qword_10021A8B0);
    static ToolbarContentBuilder.buildBlock<A>(_:)();
    (*(v4 + 16))(v13, v6, v3);
    (*(v4 + 56))(v13, 0, 1, v3);
    v31 = v22;
    v32 = v23;
    swift_getOpaqueTypeConformance2();
    v20 = v30;
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_1000DBA94(v13);
    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v22);
    goto LABEL_8;
  }

  type metadata accessor for RemoteViewConfiguration();
  sub_1000A3F28(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_100190D80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for EnvironmentValues();
  v22 = *(v4 - 8);
  v23 = v4;
  __chkstk_darwin(v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100009F70(&qword_100219710);
  __chkstk_darwin(v7);
  v9 = &v22 - v8;
  v10 = type metadata accessor for DismissAction();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v22 - v15;
  sub_1000DBB04(a1, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *(v11 + 32);
    v17(v16, v9, v10);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v18 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v22 + 8))(v6, v23);
    v17 = *(v11 + 32);
  }

  v17(v14, v16, v10);
  v19 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v20 = swift_allocObject();
  result = (v17)(v20 + v19, v14, v10);
  *a2 = 0;
  *(a2 + 8) = sub_10004329C;
  *(a2 + 16) = v20;
  return result;
}

uint64_t sub_10019105C()
{
  sub_100009F70(&qword_100222B98);
  sub_10000B3DC(&qword_100222BA0);
  sub_10000B3DC(&qword_10021E3C0);
  sub_100191180();
  sub_10000B3DC(&qword_10021A8B8);
  sub_1000DB938();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return NavigationStack.init<>(root:)();
}

unint64_t sub_100191180()
{
  result = qword_100222BA8;
  if (!qword_100222BA8)
  {
    sub_10000B3DC(&qword_100222BA0);
    sub_100191238();
    sub_10000D1EC(&qword_1002188F0, &qword_1002188F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222BA8);
  }

  return result;
}

unint64_t sub_100191238()
{
  result = qword_100222BB0;
  if (!qword_100222BB0)
  {
    sub_10000B3DC(&qword_100222BB8);
    sub_10000D1EC(&qword_100222BC0, &qword_100222BC8);
    sub_1000A3F28(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222BB0);
  }

  return result;
}

uint64_t sub_100191320(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F70(&qword_100222BB8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100191398(uint64_t a1)
{
  v2 = sub_100009F70(&qword_100222BA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100191408()
{
  v1 = type metadata accessor for DismissAction();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1001914E4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id sub_100191528()
{
  v1 = *(v0 + 32);
  v16 = *(v0 + 48);
  v17 = v1;
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  v6 = type metadata accessor for AppStoreComponent.AppStoreCoordinator();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtCV15ShazamEventsApp17AppStoreComponent19AppStoreCoordinator_subtitle] = *(v0 + 32);
  sub_100009F70(&qword_100222CD8);
  v8 = swift_allocObject();
  *(v8 + 32) = 0;
  *(v8 + 16) = v16;
  *&v7[OBJC_IVAR____TtCV15ShazamEventsApp17AppStoreComponent19AppStoreCoordinator_metricsQuery] = v8;
  if (v2)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v2;
    *(v9 + 24) = v3;
    v10 = sub_100144F54;
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  sub_100009F70(&unk_100222CE0);
  v11 = swift_allocObject();
  *(v11 + 32) = 0;
  *(v11 + 16) = v10;
  *(v11 + 24) = v9;
  *&v7[OBJC_IVAR____TtCV15ShazamEventsApp17AppStoreComponent19AppStoreCoordinator_onOpen] = v11;
  v12 = &v7[OBJC_IVAR____TtCV15ShazamEventsApp17AppStoreComponent19AppStoreCoordinator_onStateChange];
  *v12 = v5;
  v12[1] = v4;
  sub_10000D58C(&v17, v15, &qword_100219F00);
  sub_10000D58C(&v16, v15, &qword_100219F00);
  sub_1000BF57C(v2);
  sub_1000BF57C(v5);
  v14.receiver = v7;
  v14.super_class = v6;
  return objc_msgSendSuper2(&v14, "init");
}

id sub_1001916BC()
{
  v1 = v0;
  v2 = [objc_allocWithZone(ASCLockupView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 clearColor];
  [v4 setBackgroundColor:v5];

  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_100009F70(&unk_100222CF0);
  UIViewRepresentableContext.coordinator.getter();
  [v4 setDelegate:v14];

  v6 = objc_allocWithZone(ASCAdamID);
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 initWithStringValue:v7];

  v9 = ASCLockupKindApp;
  v10 = ASCLockupContextStandard;
  if (*(v1 + 24))
  {
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = 0;
  }

  v12 = [objc_opt_self() _requestWithID:v8 kind:v9 context:v10 productVariantID:v11];

  [v4 setRequest:v12];
  return v4;
}

void sub_10019188C()
{
  v1 = *(v0 + OBJC_IVAR____TtCV15ShazamEventsApp17AppStoreComponent19AppStoreCoordinator_metricsQuery);
  os_unfair_lock_lock((v1 + 32));
  sub_10019346C((v1 + 16));
  os_unfair_lock_unlock((v1 + 32));
  v2 = *(v0 + OBJC_IVAR____TtCV15ShazamEventsApp17AppStoreComponent19AppStoreCoordinator_onOpen);
  os_unfair_lock_lock((v2 + 32));
  sub_1001934B4((v2 + 16));
  os_unfair_lock_unlock((v2 + 32));
}

uint64_t sub_100191928(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if (v6)
  {
    sub_1000F9D10(v6);
  }

  if (a2)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a2;
    *(v7 + 24) = a3;
    v8 = sub_100144F54;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  *a1 = v8;
  a1[1] = v7;
  return sub_1000BF57C(a2);
}

uint64_t sub_100191A00(void *a1, void *a2)
{
  v45 = a1;
  v4 = sub_100009F70(&qword_10021F7D0);
  __chkstk_darwin(v4 - 8);
  v6 = v43 - v5;
  v7 = type metadata accessor for TaskPriority();
  v8 = *(v7 - 8);
  v9 = *(v8 + 56);
  v43[1] = v8 + 56;
  v44 = v9;
  v9(v6, 1, 1, v7);
  type metadata accessor for MainActor();
  v10 = v2;
  v11 = a2;
  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = v10;
  v13[5] = v11;
  sub_10013F42C(0, 0, v6, &unk_1001BCE20, v13);

  v14 = *&v10[OBJC_IVAR____TtCV15ShazamEventsApp17AppStoreComponent19AppStoreCoordinator_onOpen];
  os_unfair_lock_lock((v14 + 32));
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = *(v14 + 24);
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    *(v17 + 24) = v16;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_1001934E4;
    *(v18 + 24) = v17;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_1001934E4;
    *(v19 + 24) = v17;
    *(v14 + 16) = sub_100144F54;
    *(v14 + 24) = v19;

    os_unfair_lock_unlock((v14 + 32));
    v20 = swift_allocObject();
    *(v20 + 16) = sub_100144114;
    *(v20 + 24) = v18;
    v21 = sub_100193324;
  }

  else
  {
    os_unfair_lock_unlock((v14 + 32));
    v21 = 0;
    v20 = 0;
  }

  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;
  if (v22 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v24 == v25)
  {
    goto LABEL_6;
  }

  v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v27 & 1) == 0)
  {
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;
    if (v38 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v40 == v41)
    {
LABEL_6:

      goto LABEL_8;
    }

    v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v42 & 1) == 0)
    {
      return sub_1000F9D10(v21);
    }
  }

LABEL_8:
  if (v15)
  {
    v28 = [objc_opt_self() mainBundle];
    v46._object = 0xE000000000000000;
    v29._object = 0x80000001001C2390;
    v29._countAndFlagsBits = 0xD000000000000026;
    v30._countAndFlagsBits = 0;
    v30._object = 0xE000000000000000;
    v46._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v29, 0, v28, v30, v46);

    v31 = objc_opt_self();
    v32 = String._bridgeToObjectiveC()();

    v33 = [v31 textMetadataWithTitle:v32 subtitle:0];

    v44(v6, 1, 1, v7);
    v34 = v33;
    sub_1000BF57C(v21);
    v35 = v45;
    v36 = static MainActor.shared.getter();
    v37 = swift_allocObject();
    v37[2] = v36;
    v37[3] = &protocol witness table for MainActor;
    v37[4] = v34;
    v37[5] = v21;
    v37[6] = v20;
    v37[7] = v35;
    sub_10013F12C(0, 0, v6, &unk_1001BCE30, v37);

    sub_1000F9D10(v21);
  }

  return result;
}

uint64_t sub_100191EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100191F60);
}

uint64_t sub_100191F60()
{
  v1 = *(v0 + 24);

  v2 = *(v1 + OBJC_IVAR____TtCV15ShazamEventsApp17AppStoreComponent19AppStoreCoordinator_onStateChange);
  if (v2)
  {
    v2(*(v0 + 32));
  }

  **(v0 + 16) = v2 == 0;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100191FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  type metadata accessor for MainActor();
  v7[12] = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100192094);
}

uint64_t sub_100192094()
{
  v1 = v0[11];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];

  v5 = objc_allocWithZone(ASCLocalOffer);
  v0[6] = v3;
  v0[7] = v2;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_1001914E4;
  v0[5] = &unk_100212028;
  v6 = _Block_copy(v0 + 2);

  v7 = [v5 initWithMetadata:v4 action:v6];
  _Block_release(v6);
  v8 = [v1 lockup];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 lockupWithOffer:v7];
  }

  else
  {
    v10 = 0;
  }

  [v0[11] setLockup:v10];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100192288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  type metadata accessor for MainActor();
  v6[5] = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100192324);
}

uint64_t sub_100192324()
{
  v1 = v0;
  v2 = *(v0 + 16);

  v3 = [v2 lockup];
  if (v3)
  {
    v4 = v3;
    v29 = [v3 id];
    v28 = [v4 kind];
    v27 = [v4 metrics];
    v26 = [v4 icon];
    v5 = [v4 heading];
    if (v5)
    {
      v6 = v5;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = [v4 title];
    if (v9)
    {
      v10 = v9;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = [v4 ageRating];
    if (v13)
    {
      v14 = v13;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v1 = v0;
    }

    else
    {
      v16 = 0;
    }

    v17 = [v4 offer];
    if (v8)
    {
      v25 = String._bridgeToObjectiveC()();

      if (v12)
      {
LABEL_13:
        v24 = String._bridgeToObjectiveC()();

LABEL_16:
        v18 = String._bridgeToObjectiveC()();
        if (v16)
        {
          v19 = String._bridgeToObjectiveC()();
        }

        else
        {
          v19 = 0;
        }

        v23 = *(v1 + 16);
        v20 = [objc_allocWithZone(ASCLockup) initWithID:v29 kind:v28 metrics:v27 icon:v26 heading:v25 title:v24 subtitle:v18 ageRating:v19 offer:v17];
        swift_unknownObjectRelease();

        [v23 setLockup:v20];
        goto LABEL_20;
      }
    }

    else
    {
      v25 = 0;
      if (v12)
      {
        goto LABEL_13;
      }
    }

    v24 = 0;
    goto LABEL_16;
  }

LABEL_20:
  v21 = *(v1 + 8);

  return v21();
}

void sub_1001927A8(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[1];
  if (v3)
  {
    v4 = *a1;
    sub_100009F70(&qword_100222C88);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001AEB90;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v6;
    *(inited + 48) = v4;
    *(inited + 56) = v3;

    sub_100192E34(inited);
    swift_setDeallocating();
    sub_100192F48(inited + 32);
    v7 = objc_allocWithZone(ASCMetricsActivity);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v9 = [v7 initWithFields:isa];
  }

  else
  {
    v9 = [objc_allocWithZone(ASCMetricsActivity) init];
  }

  *a2 = v9;
}

uint64_t sub_100192A20(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_100192A3C()
{
  sub_100009F70(&unk_100222CF0);
  UIViewRepresentableContext.coordinator.getter();
  sub_10019188C();
}

id sub_100192AB8@<X0>(void *a1@<X8>)
{
  result = sub_100191528();
  *a1 = result;
  return result;
}

uint64_t sub_100192AE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100193418();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100192B44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100193418();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100192BA8()
{
  sub_100193418();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_100192BD0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100009F70(&qword_100222CC8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000D58C(v4, &v11, &qword_100222CD0);
      v5 = v11;
      result = sub_1000D8BC0(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100022424(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100192CF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100009F70(&qword_100222CA8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000D58C(v4, v13, &unk_100222CB0);
      result = sub_1000D8630(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_100022424(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100192E34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100009F70(&unk_100222C98);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100022004(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100192F48(uint64_t a1)
{
  v2 = sub_100009F70(&qword_100222C90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100192FB0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100192FF8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000214E4;

  return sub_100192288(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1001930C0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100193108(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000D890;

  return sub_100191EC4(a1, v4, v5, v7, v6);
}

uint64_t sub_1001931C8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100193218(uint64_t a1)
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
  v10[1] = sub_1000214E4;

  return sub_100191FF8(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1001932EC()
{

  return swift_deallocObject();
}

uint64_t sub_10019334C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100193364(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001933AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100193418()
{
  result = qword_100222CC0;
  if (!qword_100222CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222CC0);
  }

  return result;
}

uint64_t sub_10019346C(void *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);

  *a1 = v4;
  a1[1] = v3;
}

uint64_t sub_100193504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AttributionViewModel();
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1001935E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AttributionViewModel();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t type metadata accessor for AttributionModule()
{
  result = qword_100222DB8;
  if (!qword_100222DB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001936E4()
{
  type metadata accessor for AttributionViewModel();
  if (v0 <= 0x3F)
  {
    sub_10000B304();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100193784@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v2 = type metadata accessor for AttributionModule();
  v33 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v34 = v3;
  v35 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AttributedString();
  __chkstk_darwin(v4 - 8);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_100009F70(&qword_100222DF0);
  __chkstk_darwin(v37);
  v8 = &v32 - v7;
  v36 = v1;
  sub_1000DBF78(v6);
  v9 = Text.init(_:)();
  v11 = v10;
  v13 = v12;
  if (qword_100218338 != -1)
  {
    swift_once();
  }

  v39 = qword_100230570;

  v14 = Text.foregroundStyle<A>(_:)();
  v16 = v15;
  v18 = v17;
  sub_10000D60C(v9, v11, v13 & 1);

  static Font.footnote.getter();
  v19 = Text.font(_:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;

  sub_10000D60C(v14, v16, v18 & 1);

  KeyPath = swift_getKeyPath();
  v27 = v35;
  sub_100193B9C(v36, v35);
  v28 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v29 = swift_allocObject();
  sub_100193D60(v27, v29 + v28);
  v30 = &v8[*(v37 + 36)];
  sub_100009F70(&qword_100222DF8);
  OpenURLAction.init(handler:)();
  *v30 = KeyPath;
  *v8 = v19;
  *(v8 + 1) = v21;
  v8[16] = v23 & 1;
  *(v8 + 3) = v25;
  sub_100193E44();
  View.accessibilityIdentifier(_:)();
  return sub_100193F34(v8);
}

uint64_t sub_100193AC8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + *(type metadata accessor for AttributionModule() + 20)))
  {

    sub_1000DC608(v2);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_1000A3F28(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
    v3 = EnvironmentObject.error()();
    __break(1u);
  }

  return static OpenURLAction.Result.systemAction.getter(v3);
}

uint64_t sub_100193B9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributionModule();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100193C00()
{
  v1 = *(type metadata accessor for AttributionModule() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  v3 = *(type metadata accessor for AttributionViewModel() + 32);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_100193D60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributionModule();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100193DC4(uint64_t a1)
{
  v3 = *(type metadata accessor for AttributionModule() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100193AC8(a1, v4);
}

unint64_t sub_100193E44()
{
  result = qword_100222E00;
  if (!qword_100222E00)
  {
    sub_10000B3DC(&qword_100222DF0);
    sub_100193ED0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222E00);
  }

  return result;
}

unint64_t sub_100193ED0()
{
  result = qword_100222E08;
  if (!qword_100222E08)
  {
    sub_10000B3DC(&qword_100222DF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222E08);
  }

  return result;
}

uint64_t sub_100193F34(uint64_t a1)
{
  v2 = sub_100009F70(&qword_100222DF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100193FA0()
{
  result = qword_100222E10;
  if (!qword_100222E10)
  {
    sub_10000B3DC(qword_100222E18);
    sub_100193E44();
    sub_1000A3F28(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222E10);
  }

  return result;
}

uint64_t sub_10019405C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Optional();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_1001940C8()
{
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100194138(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_1001942B8(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

uint64_t sub_100194540()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 1)
  {
    return 1149;
  }

  else
  {
    return 640;
  }
}

uint64_t sub_1001945A4()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 1)
  {
    return 2040;
  }

  else
  {
    return 1136;
  }
}

uint64_t sub_100194608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 16);
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18[-v9];
  (*(v8 + 16))(&v18[-v9], v3, v7);
  v11 = *(v6 - 8);
  v12 = 1;
  if ((*(v11 + 48))(v10, 1, v6) == 1)
  {
    v6 = v7;
  }

  else
  {
    v13 = *(a1 + 24);
    v14 = sub_1001945A4();
    v15 = sub_100194540();
    (*(v13 + 32))(v14, v15, v6, v13);
    v12 = 0;
    v8 = v11;
  }

  (*(v8 + 8))(v10, v6);
  v16 = type metadata accessor for URL();
  return (*(*(v16 - 8) + 56))(a2, v12, 1, v16);
}

uint64_t sub_100194808(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  (*(v6 + 16))(&v13 - v7, v2, v5);
  v9 = *(v4 - 8);
  if ((*(v9 + 48))(v8, 1, v4) == 1)
  {
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    v10 = (*(*(a1 + 24) + 24))(v4);
    (*(v9 + 8))(v8, v4);
    if (v10)
    {
      return Color.init(cgColor:)();
    }
  }

  v12 = [objc_opt_self() systemGray5Color];
  return Color.init(uiColor:)();
}

uint64_t sub_1001949B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v4 = type metadata accessor for RoundedRectangle();
  v5 = v4 - 8;
  v6 = __chkstk_darwin(v4);
  v46 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  v10 = sub_100009F70(qword_100218748);
  __chkstk_darwin(v10 - 8);
  v12 = &v45 - v11;
  v47 = sub_100009F70(&qword_100222EA0);
  __chkstk_darwin(v47);
  v14 = &v45 - v13;
  sub_100194608(a1, v12);
  static Animation.easeInOut.getter();
  Transaction.init(animation:)();
  (*(v8 + 16))(&v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v15 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = *(a1 + 16);
  (*(v8 + 32))(v16 + v15, &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_100009F70(&qword_100221140);
  sub_10019540C();
  AsyncImage.init(url:scale:transaction:content:)();
  v17 = &v14[*(sub_100009F70(&qword_100222EA8) + 36)];
  *v17 = 0x3FFC71C71C71C71CLL;
  *(v17 + 4) = 0;
  *&v14[*(sub_100009F70(&qword_100222EB0) + 36)] = 0;
  v18 = &v14[*(sub_100009F70(&qword_100222EB8) + 36)];
  v19 = *(v5 + 28);
  v20 = enum case for RoundedCornerStyle.continuous(_:);
  v21 = type metadata accessor for RoundedCornerStyle();
  v22 = *(*(v21 - 8) + 104);
  v22(&v18[v19], v20, v21);
  __asm { FMOV            V0.2D, #24.0 }

  v45 = _Q0;
  *v18 = _Q0;
  *&v18[*(sub_100009F70(&qword_100218928) + 36)] = 256;
  v28 = v46;
  v22(&v46[*(v5 + 28)], v20, v21);
  *v28 = v45;
  static Color.black.getter();
  v29 = Color.opacity(_:)();

  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v30 = &v14[*(sub_100009F70(&qword_100222EC0) + 36)];
  sub_1000A3BD8(v28, v30);
  v31 = v30 + *(sub_100009F70(&qword_10021BE20) + 36);
  v32 = v50;
  *v31 = v49;
  *(v31 + 16) = v32;
  *(v31 + 32) = v51;
  v33 = sub_100009F70(&qword_10021BE28);
  *(v30 + *(v33 + 52)) = v29;
  *(v30 + *(v33 + 56)) = 256;
  v34 = static Alignment.center.getter();
  v36 = v35;
  sub_1000A3C3C(v28);
  v37 = (v30 + *(sub_100009F70(&qword_10021BE30) + 36));
  *v37 = v34;
  v37[1] = v36;
  v38 = static Alignment.center.getter();
  v40 = v39;
  v41 = (v30 + *(sub_100009F70(&qword_10021BDF8) + 36));
  *v41 = v38;
  v41[1] = v40;
  static Color.black.getter();
  v42 = Color.opacity(_:)();

  v43 = &v14[*(sub_100009F70(&qword_100222EC8) + 36)];
  *v43 = v42;
  *(v43 + 8) = xmmword_1001B59F0;
  *(v43 + 3) = 0x4024000000000000;
  v14[*(v47 + 36)] = 1;
  sub_100195498();
  View.accessibilityIdentifier(_:)();
  return sub_100195890(v14);
}

uint64_t sub_100194F00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v19 = a2;
  v5 = type metadata accessor for Image.ResizingMode();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AsyncImagePhase();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, a1, v9);
  if ((*(v10 + 88))(v12, v9) == enum case for AsyncImagePhase.success(_:))
  {
    (*(v10 + 96))(v12, v9);
    (*(v6 + 104))(v8, enum case for Image.ResizingMode.stretch(_:), v5);
    v13 = Image.resizable(capInsets:resizingMode:)();
    (*(v6 + 8))(v8, v5);
    v20 = v13;
    v21 = 0;
    v22 = 257;
    v23 = 0;
    swift_retain_n();
    sub_100009F70(&qword_10021B5E8);
    sub_100009F70(&qword_10021A7B8);
    sub_100079534();
    sub_10004FA48();
    _ConditionalContent<>.init(storage:)();

    v15 = v24;
    v16 = v25;
    v17 = v26;
  }

  else
  {
    v18 = type metadata accessor for HeroImageView();
    v20 = sub_100194808(v18);
    v21 = 0;
    v22 = 0;
    v23 = 1;
    sub_100009F70(&qword_10021B5E8);
    sub_100009F70(&qword_10021A7B8);
    sub_100079534();
    sub_10004FA48();
    _ConditionalContent<>.init(storage:)();
    v19 = v24;
    v16 = v25;
    v17 = v26;
    result = (*(v10 + 8))(v12, v9);
    v15 = v19;
  }

  *a3 = v15;
  *(a3 + 16) = v16;
  *(a3 + 18) = v17;
  return result;
}

uint64_t sub_100195268()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for HeroImageView() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v1 - 8);
  if (!(*(v4 + 48))(v0 + v3, 1, v1))
  {
    (*(v4 + 8))(v0 + v3, v1);
  }

  return swift_deallocObject();
}

uint64_t sub_100195370@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for HeroImageView() - 8);
  v6 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_100194F00(a1, v6, a2);
}

unint64_t sub_10019540C()
{
  result = qword_100221148;
  if (!qword_100221148)
  {
    sub_10000B3DC(&qword_100221140);
    sub_100079534();
    sub_10004FA48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221148);
  }

  return result;
}

unint64_t sub_100195498()
{
  result = qword_100222ED0;
  if (!qword_100222ED0)
  {
    sub_10000B3DC(&qword_100222EA0);
    sub_100195524();
    sub_10002D070();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222ED0);
  }

  return result;
}

unint64_t sub_100195524()
{
  result = qword_100222ED8;
  if (!qword_100222ED8)
  {
    sub_10000B3DC(&qword_100222EC8);
    sub_1001955B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222ED8);
  }

  return result;
}

unint64_t sub_1001955B0()
{
  result = qword_100222EE0;
  if (!qword_100222EE0)
  {
    sub_10000B3DC(&qword_100222EC0);
    sub_100195668();
    sub_10000D1EC(&qword_10021BDF0, &qword_10021BDF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222EE0);
  }

  return result;
}

unint64_t sub_100195668()
{
  result = qword_100222EE8;
  if (!qword_100222EE8)
  {
    sub_10000B3DC(&qword_100222EB8);
    sub_100195720();
    sub_10000D1EC(&qword_100218920, &qword_100218928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222EE8);
  }

  return result;
}

unint64_t sub_100195720()
{
  result = qword_100222EF0;
  if (!qword_100222EF0)
  {
    sub_10000B3DC(&qword_100222EB0);
    sub_1001957D8();
    sub_10000D1EC(&qword_10021B628, &qword_10021B630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222EF0);
  }

  return result;
}

unint64_t sub_1001957D8()
{
  result = qword_100222EF8;
  if (!qword_100222EF8)
  {
    sub_10000B3DC(&qword_100222EA8);
    sub_10000D1EC(&qword_100222F00, &qword_100222F08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222EF8);
  }

  return result;
}

uint64_t sub_100195890(uint64_t a1)
{
  v2 = sub_100009F70(&qword_100222EA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001958FC()
{
  result = qword_100222F10;
  if (!qword_100222F10)
  {
    sub_10000B3DC(qword_100222F18);
    sub_100195498();
    sub_100027BF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222F10);
  }

  return result;
}

uint64_t sub_100195988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MusicViewModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  v5 = type metadata accessor for MusicModule();
  v6 = v5[9];
  *(a2 + v6) = swift_getKeyPath();
  sub_100009F70(&qword_100219718);
  swift_storeEnumTagMultiPayload();
  v7 = v5[10];
  *(a2 + v7) = swift_getKeyPath();
  sub_100009F70(&qword_100218DF8);
  swift_storeEnumTagMultiPayload();
  v8 = (a2 + v5[11]);
  type metadata accessor for RemoteViewConfiguration();
  sub_10019A7F4(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
  result = EnvironmentObject.init()();
  *v8 = result;
  v8[1] = v10;
  return result;
}

void sub_100195AFC()
{
  type metadata accessor for MusicViewModel();
  if (v0 <= 0x3F)
  {
    sub_100195EFC(319, &qword_1002198B8, &type metadata accessor for ColorScheme);
    if (v1 <= 0x3F)
    {
      sub_100195EFC(319, &qword_100218D70, &type metadata accessor for OpenURLAction);
      if (v2 <= 0x3F)
      {
        sub_10000B304();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_100195C00(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for MusicViewModel();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_100009F70(&qword_100219838);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[9];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_100009F70(&qword_100218D00);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[10];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[11]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  v17 = v16 - 1;
  if (v17 < 0)
  {
    v17 = -1;
  }

  return (v17 + 1);
}

uint64_t sub_100195D90(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for MusicViewModel();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_100009F70(&qword_100219838);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[9];
    }

    else
    {
      result = sub_100009F70(&qword_100218D00);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[11]) = a2;
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[10];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void sub_100195EFC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100195F94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v77 = type metadata accessor for TaskPriority();
  v76 = *(v77 - 8);
  v3 = __chkstk_darwin(v77);
  v75 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = a1;
  v81 = a1;
  v74 = *(a1 - 8);
  v83 = *(v74 + 64);
  __chkstk_darwin(v3);
  v73 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000B3DC(&qword_10021AFA8);
  sub_10000B3DC(&qword_100222FA0);
  v7 = *(a1 + 16);
  v8 = type metadata accessor for Array();
  v80 = *(v5 + 24);
  v9 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_10000B3DC(&qword_100222FA8);
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v93 = v8;
  v94 = AssociatedTypeWitness;
  v95 = v11;
  v96 = WitnessTable;
  v97 = AssociatedConformanceWitness;
  type metadata accessor for ForEach();
  v14 = type metadata accessor for Section();
  v92 = sub_10019A1B0();
  v15 = swift_getWitnessTable();
  v89 = &protocol witness table for EmptyView;
  v90 = v15;
  v91 = &protocol witness table for EmptyView;
  v16 = swift_getWitnessTable();
  v93 = v14;
  v94 = v16;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v93 = v14;
  v94 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v93 = &type metadata for Never;
  v94 = OpaqueTypeMetadata2;
  v95 = &protocol witness table for Never;
  v96 = OpaqueTypeConformance2;
  v19 = type metadata accessor for List();
  v20 = swift_getWitnessTable();
  v93 = v19;
  v94 = v20;
  v21 = swift_getOpaqueTypeMetadata2();
  v22 = type metadata accessor for PlainListStyle();
  v93 = v19;
  v94 = v20;
  v23 = swift_getOpaqueTypeConformance2();
  v93 = v21;
  v94 = v22;
  v95 = v23;
  v96 = &protocol witness table for PlainListStyle;
  v24 = swift_getOpaqueTypeMetadata2();
  v93 = v21;
  v94 = v22;
  v95 = v23;
  v96 = &protocol witness table for PlainListStyle;
  v25 = swift_getOpaqueTypeConformance2();
  v93 = v24;
  v94 = v25;
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_100222FD8);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  sub_10000B3DC(&qword_100218DD8);
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v26 = type metadata accessor for VStack();
  v64 = v26;
  v68 = *(v26 - 8);
  __chkstk_darwin(v26);
  v61 = &v58 - v27;
  v79 = swift_getWitnessTable();
  v93 = v26;
  v94 = v79;
  v69 = &unk_1001C2954;
  v66 = swift_getOpaqueTypeMetadata2();
  v71 = *(v66 - 8);
  __chkstk_darwin(v66);
  v63 = &v58 - v28;
  v70 = type metadata accessor for ModifiedContent();
  v72 = *(v70 - 8);
  v29 = __chkstk_darwin(v70);
  v65 = &v58 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v67 = &v58 - v31;
  static HorizontalAlignment.leading.getter();
  v32 = v9;
  v60 = v9;
  v33 = v80;
  v84 = v9;
  v85 = v80;
  v34 = v82;
  v86 = v82;
  VStack.init(alignment:spacing:content:)();
  v59 = "Event-Page-Hero-Image";
  v35 = v74;
  v62 = *(v74 + 16);
  v36 = v73;
  v37 = v81;
  v62(v73, v34, v81);
  type metadata accessor for MainActor();
  v38 = static MainActor.shared.getter();
  v39 = *(v35 + 80);
  v40 = swift_allocObject();
  v40[2] = v38;
  v40[3] = &protocol witness table for MainActor;
  v40[4] = v32;
  v40[5] = v33;
  v74 = *(v35 + 32);
  v41 = v36;
  (v74)(v40 + ((v39 + 48) & ~v39), v36, v37);
  v42 = v75;
  v43 = v64;
  v44 = v79;
  j___sScP13userInitiatedScPvgZ();
  v45 = v63;
  v46 = v61;
  sub_100009FB8(0, v42, 0xD000000000000021, (v59 | 0x8000000000000000), 91, &unk_1001BD1D0, v40, v63, v43, v44);
  (*(v76 + 8))(v42, v77);
  (*(v68 + 8))(v46, v43);
  v47 = v81;
  v62(v41, v82, v81);
  v48 = swift_allocObject();
  v49 = v80;
  *(v48 + 16) = v60;
  *(v48 + 24) = v49;
  (v74)(v48 + ((v39 + 32) & ~v39), v41, v47);
  v93 = v43;
  v94 = v79;
  v50 = swift_getOpaqueTypeConformance2();
  v51 = v65;
  v52 = v66;
  View.onDisappear(perform:)();

  (*(v71 + 8))(v45, v52);
  v87 = v50;
  v88 = &protocol witness table for _AppearanceActionModifier;
  v53 = v70;
  v54 = swift_getWitnessTable();
  v55 = v67;
  sub_100157EFC(v51, v53, v54);
  v56 = *(v72 + 8);
  v56(v51, v53);
  sub_100157EFC(v55, v53, v54);
  return (v56)(v55, v53);
}

uint64_t sub_100196A1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v83 = a3;
  v86 = a4;
  v85 = sub_100009F70(&qword_100218DD0);
  __chkstk_darwin(v85);
  v84 = (&v68 - v6);
  sub_10000B3DC(&qword_100222FA0);
  v7 = type metadata accessor for Array();
  v82 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_10000B3DC(&qword_100222FA8);
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v104 = v7;
  *(&v104 + 1) = AssociatedTypeWitness;
  *&v105 = v9;
  *(&v105 + 1) = WitnessTable;
  *&v106 = AssociatedConformanceWitness;
  type metadata accessor for ForEach();
  v12 = type metadata accessor for Section();
  v103 = sub_10019A1B0();
  v13 = swift_getWitnessTable();
  v100 = &protocol witness table for EmptyView;
  v101 = v13;
  v102 = &protocol witness table for EmptyView;
  v14 = swift_getWitnessTable();
  *&v104 = v12;
  *(&v104 + 1) = v14;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *&v104 = v12;
  *(&v104 + 1) = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v104 = &type metadata for Never;
  *(&v104 + 1) = OpaqueTypeMetadata2;
  *&v105 = &protocol witness table for Never;
  *(&v105 + 1) = OpaqueTypeConformance2;
  v17 = type metadata accessor for List();
  v18 = swift_getWitnessTable();
  *&v104 = v17;
  *(&v104 + 1) = v18;
  v19 = swift_getOpaqueTypeMetadata2();
  v20 = type metadata accessor for PlainListStyle();
  *&v104 = v17;
  *(&v104 + 1) = v18;
  v21 = swift_getOpaqueTypeConformance2();
  *&v104 = v19;
  *(&v104 + 1) = v20;
  *&v105 = v21;
  *(&v105 + 1) = &protocol witness table for PlainListStyle;
  v22 = swift_getOpaqueTypeMetadata2();
  *&v104 = v19;
  *(&v104 + 1) = v20;
  *&v105 = v21;
  *(&v105 + 1) = &protocol witness table for PlainListStyle;
  v23 = swift_getOpaqueTypeConformance2();
  *&v104 = v22;
  *(&v104 + 1) = v23;
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_100222FD8);
  swift_getTupleTypeMetadata3();
  v75 = type metadata accessor for TupleView();
  v74 = swift_getWitnessTable();
  v24 = type metadata accessor for VStack();
  v76 = *(v24 - 8);
  __chkstk_darwin(v24);
  v73 = &v68 - v25;
  sub_10000B3DC(&qword_100218DD8);
  v77 = v24;
  v81 = type metadata accessor for ModifiedContent();
  v78 = *(v81 - 8);
  v26 = __chkstk_darwin(v81);
  v80 = &v68 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v79 = &v68 - v28;
  v72 = type metadata accessor for AccessibilityTraits();
  v70 = *(v72 - 8);
  __chkstk_darwin(v72);
  v69 = &v68 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_100009F70(&qword_10021AFA8);
  v30 = __chkstk_darwin(v87);
  v89 = &v68 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v88 = &v68 - v32;
  v71 = a1;

  v33 = Text.init(_:tableName:bundle:comment:)();
  v35 = v34;
  LOBYTE(v20) = v36;
  static Font.title3.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v37 = Text.font(_:)();
  v39 = v38;
  LOBYTE(v19) = v40;
  v42 = v41;

  sub_10000D60C(v33, v35, v20 & 1);

  LOBYTE(v33) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  LOBYTE(v95[0]) = v19 & 1;
  LOBYTE(v93) = 0;
  *&v96 = v37;
  *(&v96 + 1) = v39;
  v43 = v73;
  LOBYTE(v97) = v19 & 1;
  *(&v97 + 1) = v42;
  LOBYTE(v98) = v33;
  *(&v98 + 1) = v44;
  *&v99[0] = v45;
  *(&v99[0] + 1) = v46;
  *&v99[1] = v47;
  BYTE8(v99[1]) = 0;
  v48 = v69;
  static AccessibilityTraits.isHeader.getter();
  sub_100009F70(&qword_10021AFE8);
  sub_100071294();
  v49 = v89;
  View.accessibility(addTraits:)();
  (*(v70 + 8))(v48, v72);
  v106 = v98;
  v107[0] = v99[0];
  *(v107 + 9) = *(v99 + 9);
  v104 = v96;
  v105 = v97;
  sub_10000D52C(&v104, &qword_10021AFE8);
  ModifiedContent<>.accessibilityIdentifier(_:)();
  sub_10000D52C(v49, &qword_10021AFA8);
  static HorizontalAlignment.leading.getter();
  v90 = v82;
  v91 = v83;
  v92 = v71;
  VStack.init(alignment:spacing:content:)();
  if (qword_100218428 != -1)
  {
    swift_once();
  }

  v50 = qword_1002305F8;
  v51 = *(type metadata accessor for RoundedRectangle() + 20);
  v52 = enum case for RoundedCornerStyle.continuous(_:);
  v53 = type metadata accessor for RoundedCornerStyle();
  v54 = v84;
  (*(*(v53 - 8) + 104))(v84 + v51, v52, v53);
  *v54 = v50;
  v54[1] = v50;
  v55 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  *(v54 + *(v85 + 36)) = Color.init(uiColor:)();
  static Alignment.center.getter();
  v56 = v77;
  v57 = swift_getWitnessTable();
  sub_100139C94();
  v58 = v80;
  View.background<A>(_:alignment:)();
  sub_10000D52C(v54, &qword_100218DD0);
  (*(v76 + 8))(v43, v56);
  v59 = sub_10000D1EC(&qword_100218E30, &qword_100218DD8);
  v95[2] = v57;
  v95[3] = v59;
  v60 = v81;
  v61 = swift_getWitnessTable();
  v62 = v79;
  sub_100157EFC(v58, v60, v61);
  v63 = v78;
  v64 = *(v78 + 8);
  v64(v58, v60);
  v66 = v88;
  v65 = v89;
  sub_10000D58C(v88, v89, &qword_10021AFA8);
  *&v96 = v65;
  (*(v63 + 16))(v58, v62, v60);
  *(&v96 + 1) = v58;
  v95[0] = v87;
  v95[1] = v60;
  v93 = sub_10019AA5C(&qword_10021B000, &qword_10021AFA8, &unk_1001B6A30, sub_100071294);
  v94 = v61;
  sub_100151024(&v96, 2uLL, v95);
  v64(v62, v60);
  sub_10000D52C(v66, &qword_10021AFA8);
  v64(v58, v60);
  return sub_10000D52C(v65, &qword_10021AFA8);
}

uint64_t sub_100197520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v151 = a1;
  v143 = a4;
  v6 = sub_100009F70(&qword_100222FE0);
  v140 = *(v6 - 8);
  v141 = v6;
  __chkstk_darwin(v6);
  v112 = (&v111 - v7);
  v8 = sub_100009F70(qword_100218748);
  __chkstk_darwin(v8 - 8);
  v113 = &v111 - v9;
  v10 = type metadata accessor for URL();
  v114 = *(v10 - 8);
  v115 = v10;
  __chkstk_darwin(v10);
  v111 = &v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_100009F70(&qword_100222FD8);
  v12 = __chkstk_darwin(v139);
  v142 = &v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v144 = &v111 - v14;
  v15 = type metadata accessor for PlainListStyle();
  v135 = *(v15 - 8);
  __chkstk_darwin(v15);
  v134 = &v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Array();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = sub_10000B3DC(&qword_100222FA8);
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v163 = v17;
  *(&v163 + 1) = AssociatedTypeWitness;
  *&v164 = v19;
  *(&v164 + 1) = WitnessTable;
  *&v165 = AssociatedConformanceWitness;
  type metadata accessor for ForEach();
  v22 = type metadata accessor for Section();
  v189 = sub_10019A1B0();
  v23 = swift_getWitnessTable();
  v186 = &protocol witness table for EmptyView;
  v187 = v23;
  v188 = &protocol witness table for EmptyView;
  v24 = swift_getWitnessTable();
  *&v163 = v22;
  *(&v163 + 1) = v24;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *&v163 = v22;
  *(&v163 + 1) = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v163 = &type metadata for Never;
  v132 = OpaqueTypeMetadata2;
  *(&v163 + 1) = OpaqueTypeMetadata2;
  *&v164 = &protocol witness table for Never;
  v131 = OpaqueTypeConformance2;
  *(&v164 + 1) = OpaqueTypeConformance2;
  v27 = type metadata accessor for List();
  v130 = *(v27 - 8);
  __chkstk_darwin(v27);
  v128 = &v111 - v28;
  v29 = swift_getWitnessTable();
  *&v163 = v27;
  *(&v163 + 1) = v29;
  v30 = swift_getOpaqueTypeMetadata2();
  v127 = *(v30 - 8);
  __chkstk_darwin(v30);
  v125 = v29;
  v126 = &v111 - v31;
  *&v163 = v27;
  *(&v163 + 1) = v29;
  v32 = swift_getOpaqueTypeConformance2();
  *&v163 = v30;
  *(&v163 + 1) = v15;
  *&v164 = v32;
  *(&v164 + 1) = &protocol witness table for PlainListStyle;
  v33 = swift_getOpaqueTypeMetadata2();
  v123 = *(v33 - 8);
  __chkstk_darwin(v33);
  v121 = &v111 - v34;
  v122 = v32;
  v129 = v30;
  *&v163 = v30;
  v136 = v15;
  *(&v163 + 1) = v15;
  *&v164 = v32;
  *(&v164 + 1) = &protocol witness table for PlainListStyle;
  v35 = swift_getOpaqueTypeConformance2();
  v124 = v33;
  *&v163 = v33;
  v120 = v35;
  *(&v163 + 1) = v35;
  v150 = swift_getOpaqueTypeMetadata2();
  v147 = *(v150 - 8);
  v36 = __chkstk_darwin(v150);
  v149 = &v111 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v148 = &v111 - v38;
  v39 = type metadata accessor for ColorScheme();
  v40 = *(v39 - 8);
  v41 = __chkstk_darwin(v39);
  v43 = &v111 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v45 = &v111 - v44;
  v46 = sub_100009F70(&qword_100222FE8);
  __chkstk_darwin(v46 - 8);
  v117 = &v111 - v47;
  v118 = sub_100009F70(&qword_100222FF0);
  __chkstk_darwin(v118);
  v49 = &v111 - v48;
  v133 = sub_100009F70(&qword_100222FA0);
  v50 = __chkstk_darwin(v133);
  v146 = &v111 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v145 = &v111 - v52;
  v137 = a2;
  v138 = a3;
  v119 = type metadata accessor for MusicModule();
  sub_100024640(v45);
  (*(v40 + 104))(v43, enum case for ColorScheme.light(_:), v39);
  static ColorScheme.== infix(_:_:)();
  v53 = *(v40 + 8);
  v53(v43, v39);
  v53(v45, v39);
  v116 = Image.init(_:bundle:)();
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_100009F70(&qword_100218DC0);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_1001ACB00;
  LOBYTE(v24) = static Edge.Set.leading.getter();
  *(v54 + 32) = v24;
  v55 = static Edge.Set.top.getter();
  *(v54 + 33) = v55;
  v56 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v24)
  {
    v56 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v55)
  {
    v56 = Edge.Set.init(rawValue:)();
  }

  v184 = 1;
  v57 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  *(&v156[3] + 8) = v180;
  *(&v156[4] + 8) = v181;
  *(&v156[5] + 8) = v182;
  *(&v156[6] + 8) = v183;
  *(v156 + 8) = v177;
  *(&v156[1] + 8) = v178;
  v185 = 0;
  *&v156[0] = v116;
  *(&v156[2] + 8) = v179;
  BYTE8(v156[7]) = v56;
  v157 = 0u;
  v158 = 0u;
  LOBYTE(v159) = 1;
  BYTE8(v159) = v57;
  *&v160 = v58;
  *(&v160 + 1) = v59;
  *&v161 = v60;
  *(&v161 + 1) = v61;
  v162 = 0;
  sub_100009F70(&qword_100222FF8);
  sub_10019A83C();
  v62 = v117;
  View.accessibilityIdentifier(_:)();
  v173 = v159;
  v174 = v160;
  v175 = v161;
  v176 = v162;
  v169 = v156[6];
  v170 = v156[7];
  v171 = v157;
  v172 = v158;
  v165 = v156[2];
  v166 = v156[3];
  v167 = v156[4];
  v168 = v156[5];
  v163 = v156[0];
  v164 = v156[1];
  sub_10000D52C(&v163, &qword_100222FF8);
  sub_10000F618(v62, v49, &qword_100222FE8);
  v49[*(v118 + 36)] = 1;
  sub_10019A9A4();
  View.accessibilityHidden(_:)();
  v63 = sub_10000D52C(v49, &qword_100222FF0);
  __chkstk_darwin(v63);
  v65 = v137;
  v64 = v138;
  v66 = v151;
  v67 = v128;
  List<>.init(content:)();
  v68 = v126;
  View.scrollContentBackground(_:)();
  (*(v130 + 8))(v67, v27);
  v69 = v134;
  PlainListStyle.init()();
  v70 = v121;
  v71 = v129;
  v72 = v136;
  View.listStyle<A>(_:)();
  (*(v135 + 1))(v69, v72);
  (*(v127 + 8))(v68, v71);
  v73 = v149;
  v74 = v124;
  v75 = v120;
  View.listHasStackBehavior()();
  (*(v123 + 8))(v70, v74);
  *&v156[0] = v74;
  *(&v156[0] + 1) = v75;
  v76 = swift_getOpaqueTypeConformance2();
  v77 = v150;
  sub_100157EFC(v73, v150, v76);
  v78 = v147 + 8;
  v79 = *(v147 + 8);
  v79(v73, v77);
  if (*(v66 + *(v119 + 44)))
  {

    v81 = sub_1000FF844(v80);

    v82 = v144;
    v135 = v79;
    v136 = v78;
    v134 = v76;
    if (v81)
    {
      v83 = type metadata accessor for MusicViewModel();
      v84 = v113;
      sub_1000FEC18(v83, v113);
      v86 = v114;
      v85 = v115;
      if ((*(v114 + 48))(v84, 1, v115) != 1)
      {
        v88 = v111;
        (*(v86 + 32))(v111, v84, v85);
        v89 = static HorizontalAlignment.leading.getter();
        v90 = v85;
        v91 = v66;
        v92 = v112;
        *v112 = v89;
        *(v92 + 8) = 0x4030000000000000;
        *(v92 + 16) = 0;
        v93 = sub_100009F70(&qword_100223060);
        sub_100199730(v91, v88, v65, v64, (v92 + *(v93 + 44)));
        LOBYTE(v91) = static Edge.Set.top.getter();
        EdgeInsets.init(_all:)();
        v94 = v86;
        v95 = v141;
        v96 = v92 + *(v141 + 36);
        *v96 = v91;
        *(v96 + 8) = v97;
        *(v96 + 16) = v98;
        *(v96 + 24) = v99;
        *(v96 + 32) = v100;
        *(v96 + 40) = 0;
        v101 = v144;
        sub_10000F618(v92, v144, &qword_100222FE0);
        v102 = v95;
        v87 = v101;
        (*(v140 + 56))(v101, 0, 1, v102);
        (*(v94 + 8))(v88, v90);
        goto LABEL_11;
      }

      sub_10000D52C(v84, qword_100218748);
      v82 = v144;
    }

    (*(v140 + 56))(v82, 1, 1, v141);
    v87 = v82;
LABEL_11:
    v103 = v145;
    v104 = v146;
    sub_10000D58C(v145, v146, &qword_100222FA0);
    *&v156[0] = v104;
    v105 = v148;
    v107 = v149;
    v106 = v150;
    (*(v147 + 16))(v149, v148, v150);
    *(&v156[0] + 1) = v107;
    v108 = v142;
    sub_10000D58C(v87, v142, &qword_100222FD8);
    *&v156[1] = v108;
    v155[0] = v133;
    v155[1] = v106;
    v155[2] = v139;
    v152 = sub_10019AA5C(&qword_100223038, &qword_100222FA0, &unk_1001BD1A0, sub_10019A9A4);
    v153 = v134;
    v154 = sub_10019AB1C();
    sub_100151024(v156, 3uLL, v155);
    sub_10000D52C(v87, &qword_100222FD8);
    v109 = v135;
    v135(v105, v106);
    sub_10000D52C(v103, &qword_100222FA0);
    sub_10000D52C(v108, &qword_100222FD8);
    v109(v107, v106);
    return sub_10000D52C(v146, &qword_100222FA0);
  }

  type metadata accessor for RemoteViewConfiguration();
  sub_10019A7F4(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1001986D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22 = a3;
  v23 = a1;
  v24 = a4;
  v21 = a2;
  v32 = type metadata accessor for Array();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = sub_10000B3DC(&qword_100222FA8);
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for ForEach();
  v4 = type metadata accessor for Section();
  v20 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v19 - v5;
  v31 = sub_10019A1B0();
  v7 = swift_getWitnessTable();
  v28 = &protocol witness table for EmptyView;
  v29 = v7;
  v30 = &protocol witness table for EmptyView;
  v8 = swift_getWitnessTable();
  v32 = v4;
  AssociatedTypeWitness = v8;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v10 = *(OpaqueTypeMetadata2 - 8);
  v11 = __chkstk_darwin(OpaqueTypeMetadata2);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v19 - v14;
  v25 = v21;
  v26 = v22;
  v27 = v23;
  Section<>.init(content:)();
  static VerticalEdge.Set.bottom.getter();
  View.listSectionSeparator(_:edges:)();
  (*(v20 + 8))(v6, v4);
  v32 = v4;
  AssociatedTypeWitness = v8;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_100157EFC(v13, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v17 = *(v10 + 8);
  v17(v13, OpaqueTypeMetadata2);
  sub_100157EFC(v15, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v17)(v15, OpaqueTypeMetadata2);
}

uint64_t sub_100198A58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a4;
  v29[0] = a3;
  v32 = type metadata accessor for MusicModule();
  v7 = *(v32 - 8);
  __chkstk_darwin(v32);
  v30 = v29 - v8;
  v9 = type metadata accessor for Array();
  v29[5] = v9;
  v29[1] = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v29[4] = AssociatedTypeWitness;
  v11 = sub_10000B3DC(&qword_100222FA8);
  v29[3] = v11;
  WitnessTable = swift_getWitnessTable();
  v29[2] = WitnessTable;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v35 = v9;
  v36 = AssociatedTypeWitness;
  v37 = v11;
  v38 = WitnessTable;
  v39 = AssociatedConformanceWitness;
  v14 = type metadata accessor for ForEach();
  v31 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = v29 - v18;
  v20 = v29[0];
  type metadata accessor for MusicViewModel();
  v35 = sub_1000FEDA8();
  v21 = v30;
  v22 = v32;
  (*(v7 + 16))(v30, a1, v32);
  v23 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = a2;
  *(v24 + 24) = v20;
  (*(v7 + 32))(v24 + v23, v21, v22);
  v25 = sub_10019A1B0();
  ForEach<>.init(_:content:)();
  v34 = v25;
  v26 = swift_getWitnessTable();
  sub_100157EFC(v17, v14, v26);
  v27 = *(v31 + 8);
  v27(v17, v14);
  sub_100157EFC(v19, v14, v26);
  return (v27)(v19, v14);
}

double sub_100198DC4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v35 = a2;
  v36 = a4;
  v43 = a5;
  v8 = type metadata accessor for PlainButtonStyle();
  v9 = *(v8 - 8);
  v41 = v8;
  v42 = v9;
  v10 = __chkstk_darwin(v8);
  v40 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a3 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v10);
  v34 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MusicModule();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v34 - v17;
  v19 = sub_100009F70(&qword_100222FC8);
  v20 = *(v19 - 8);
  v38 = v19;
  v39 = v20;
  __chkstk_darwin(v19);
  v37 = &v34 - v21;
  (*(v15 + 16))(v18, a2, v14);
  (*(v12 + 16))(&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);
  v22 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v23 = (v16 + *(v12 + 80) + v22) & ~*(v12 + 80);
  v24 = swift_allocObject();
  v25 = v36;
  *(v24 + 16) = a3;
  *(v24 + 24) = v25;
  (*(v15 + 32))(v24 + v22, v18, v14);
  (*(v12 + 32))(v24 + v23, v34, a3);
  v44 = a3;
  v45 = v25;
  v46 = a1;
  v47 = v35;
  sub_100009F70(&qword_100223078);
  sub_10019B734();
  v26 = v37;
  Button.init(action:label:)();
  v27 = v40;
  PlainButtonStyle.init()();
  sub_10000D1EC(&qword_100222FD0, &qword_100222FC8);
  sub_10019A7F4(&qword_100218810, &type metadata accessor for PlainButtonStyle);
  v28 = v43;
  v29 = v38;
  v30 = v41;
  View.buttonStyle<A>(_:)();
  (*(v42 + 8))(v27, v30);
  (*(v39 + 8))(v26, v29);
  v48 = static Color.clear.getter();
  v31 = AnyView.init<A>(_:)();
  *(v28 + *(sub_100009F70(&qword_100222FC0) + 36)) = v31;
  v32 = v28 + *(sub_100009F70(&qword_100222FA8) + 36);
  result = 10.0;
  *v32 = xmmword_1001BD0C0;
  *(v32 + 16) = xmmword_1001BD0C0;
  *(v32 + 32) = 0;
  return result;
}

uint64_t sub_100199270(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicViewModel();
  sub_1000FEF98(a2, v4);
  if (*(a1 + *(type metadata accessor for MusicModule() + 44)))
  {

    sub_1000FF234(v5, v4);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10019A7F4(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

double sub_10019936C@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v32 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v32 - v10;
  v12 = (*(a3 + 48))(a2, a3);
  v35 = v13;
  v36 = v12;
  v14 = (*(a3 + 64))(a2, a3);
  if (v15)
  {
    v16 = v15;
    v34 = v14;
  }

  else
  {
    v34 = (*(a3 + 56))(a2, a3);
    v16 = v17;
  }

  v33 = (*(a3 + 112))(a2, a3);
  (*(a3 + 72))(a2, a3);
  v18 = *(AssociatedTypeWitness - 8);
  if ((*(v18 + 48))(v11, 1, AssociatedTypeWitness) == 1)
  {
    (*(v9 + 8))(v11, v8);
    AssociatedConformanceWitness = 0;
    v39 = 0u;
    v40 = 0u;
  }

  else
  {
    *(&v40 + 1) = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v19 = sub_100043D3C(&v39);
    (*(v18 + 32))(v19, v11, AssociatedTypeWitness);
  }

  v20 = type metadata accessor for MusicViewModel();
  sub_1000FEE74(v20);
  v21 = v38;
  if (v38)
  {
    sub_100028124(v37, v38);
    v22 = dispatch thunk of MusicItem.id.getter();
    v21 = v23;
    sub_100021498(v37);
  }

  else
  {
    sub_10000D52C(v37, &qword_10021A650);
    v22 = 0;
  }

  v24 = dispatch thunk of MusicItem.id.getter();
  if (v21)
  {
    if (v22 == v24 && v21 == v25)
    {
      v26 = 1;
    }

    else
    {
      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v26 = 0;
  }

  v27 = v33 & 1;
  *&v42[7] = v39;
  *&v42[23] = v40;
  *&v42[39] = AssociatedConformanceWitness;
  KeyPath = swift_getKeyPath();
  v29 = *&v42[16];
  *(a4 + 33) = *v42;
  v30 = v35;
  *a4 = v36;
  *(a4 + 8) = v30;
  *(a4 + 16) = v34;
  *(a4 + 24) = v16;
  *(a4 + 32) = v27;
  *(a4 + 49) = v29;
  result = *&v42[31];
  *(a4 + 64) = *&v42[31];
  *(a4 + 80) = v26 & 1;
  *(a4 + 81) = v39;
  *(a4 + 84) = *(&v39 + 3);
  *(a4 + 88) = KeyPath;
  *(a4 + 96) = 0;
  return result;
}

uint64_t sub_100199730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v64 = a4;
  v63 = a3;
  v65 = a2;
  v76 = a5;
  v77 = a1;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = type metadata accessor for MusicModule();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v60 - v11;
  v61 = &v60 - v11;
  v70 = sub_100009F70(&qword_100218930);
  v68 = *(v70 - 8);
  __chkstk_darwin(v70);
  v62 = &v60 - v13;
  v69 = sub_100009F70(&qword_10021FAA8);
  __chkstk_darwin(v69);
  v66 = &v60 - v14;
  v15 = sub_100009F70(&qword_100223068);
  v16 = __chkstk_darwin(v15 - 8);
  v75 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v72 = &v60 - v18;
  v19 = type metadata accessor for Divider();
  v73 = *(v19 - 8);
  v74 = v19;
  v20 = __chkstk_darwin(v19);
  v71 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v67 = &v60 - v22;
  Divider.init()();
  v23 = v12;
  v24 = v8;
  (*(v9 + 16))(v23, v77, v8);
  v25 = v6;
  v26 = *(v6 + 16);
  v27 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v5;
  v26(v27, v65, v5);
  v29 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v30 = (v10 + *(v25 + 80) + v29) & ~*(v25 + 80);
  v31 = swift_allocObject();
  v32 = v63;
  v33 = v64;
  *(v31 + 16) = v63;
  *(v31 + 24) = v33;
  v34 = v31 + v29;
  v35 = v62;
  (*(v9 + 32))(v34, v61, v24);
  (*(v25 + 32))(v31 + v30, v27, v28);
  v78 = v32;
  v79 = v33;
  v80 = v77;
  Button.init(action:label:)();
  sub_100009F70(&qword_100218DC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001ACB00;
  LOBYTE(v25) = static Edge.Set.leading.getter();
  *(inited + 32) = v25;
  v37 = static Edge.Set.bottom.getter();
  *(inited + 33) = v37;
  v38 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v25)
  {
    v38 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v37)
  {
    v38 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = v66;
  (*(v68 + 32))(v66, v35, v70);
  v48 = v47 + *(v69 + 36);
  *v48 = v38;
  *(v48 + 8) = v40;
  *(v48 + 16) = v42;
  *(v48 + 24) = v44;
  *(v48 + 32) = v46;
  *(v48 + 40) = 0;
  sub_10011CCF0();
  v49 = v72;
  View.accessibilityIdentifier(_:)();
  sub_10000D52C(v47, &qword_10021FAA8);
  v51 = v73;
  v50 = v74;
  v52 = *(v73 + 16);
  v53 = v71;
  v54 = v67;
  v52(v71, v67, v74);
  v55 = v75;
  sub_10000D58C(v49, v75, &qword_100223068);
  v56 = v76;
  v52(v76, v53, v50);
  v57 = sub_100009F70(&qword_100223070);
  sub_10000D58C(v55, &v56[*(v57 + 48)], &qword_100223068);
  sub_10000D52C(v49, &qword_100223068);
  v58 = *(v51 + 8);
  v58(v54, v50);
  sub_10000D52C(v55, &qword_100223068);
  return (v58)(v53, v50);
}

uint64_t sub_100199E40(uint64_t a1)
{
  v2 = type metadata accessor for OpenURLAction();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MusicModule();
  sub_100023FD4(v5);
  OpenURLAction.callAsFunction(_:)();
  (*(v3 + 8))(v5, v2);
  v7 = *(a1 + *(v6 + 44));
  if (v7)
  {
    v8 = type metadata accessor for MusicViewModel();

    sub_1000FEFAC(15, 0, 3u, v7, v8);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10019A7F4(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100199FFC@<X0>(uint64_t a1@<X8>)
{

  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_10019A090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a3;
  type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10019A12C);
}

uint64_t sub_10019A12C()
{

  v1 = type metadata accessor for MusicViewModel();
  sub_1000FEED8(v1);
  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_10019A1B0()
{
  result = qword_100222FB0;
  if (!qword_100222FB0)
  {
    sub_10000B3DC(&qword_100222FA8);
    sub_10019A268();
    sub_10000D1EC(&qword_10021A498, &qword_10021A310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222FB0);
  }

  return result;
}

unint64_t sub_10019A268()
{
  result = qword_100222FB8;
  if (!qword_100222FB8)
  {
    sub_10000B3DC(&qword_100222FC0);
    sub_10000B3DC(&qword_100222FC8);
    type metadata accessor for PlainButtonStyle();
    sub_10000D1EC(&qword_100222FD0, &qword_100222FC8);
    sub_10019A7F4(&qword_100218810, &type metadata accessor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_10000D1EC(&qword_10021F370, &qword_10021F378);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222FB8);
  }

  return result;
}

uint64_t sub_10019A3EC()
{
  v1 = type metadata accessor for MusicModule();
  v2 = (*(*(v1 - 8) + 80) + 48) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  v4 = *(type metadata accessor for MusicViewModel() + 44);
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v2 + v4, 1, v5))
  {
    (*(v6 + 8))(v3 + v4, v5);
  }

  v7 = *(v1 + 36);
  sub_100009F70(&qword_100219718);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for ColorScheme();
    (*(*(v8 - 8) + 8))(v3 + v7, v8);
  }

  else
  {
  }

  v9 = *(v1 + 40);
  sub_100009F70(&qword_100218DF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for OpenURLAction();
    (*(*(v10 - 8) + 8))(v3 + v9, v10);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10019A66C()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = *(type metadata accessor for MusicModule() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v0[2];
  v7 = v0[3];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_10000D890;

  return sub_10019A090(v6, v7, v0 + v5, v2, v3);
}

uint64_t sub_10019A768()
{
  type metadata accessor for MusicModule();
  v0 = type metadata accessor for MusicViewModel();
  return sub_1000FEF3C(v0);
}

uint64_t sub_10019A7F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10019A89C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000B3DC(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10019A920()
{
  result = qword_100223018;
  if (!qword_100223018)
  {
    sub_10000B3DC(&qword_100223020);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100223018);
  }

  return result;
}

unint64_t sub_10019A9A4()
{
  result = qword_100223028;
  if (!qword_100223028)
  {
    sub_10000B3DC(&qword_100222FF0);
    sub_10019AA5C(&qword_100223030, &qword_100222FE8, &unk_1001BD1E0, sub_10019A83C);
    sub_10002D070();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100223028);
  }

  return result;
}

uint64_t sub_10019AA5C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000B3DC(a2);
    a4();
    sub_10019A7F4(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10019AB1C()
{
  result = qword_100223040;
  if (!qword_100223040)
  {
    sub_10000B3DC(&qword_100222FD8);
    sub_10019ABA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100223040);
  }

  return result;
}

unint64_t sub_10019ABA0()
{
  result = qword_100223048;
  if (!qword_100223048)
  {
    sub_10000B3DC(&qword_100222FE0);
    sub_10000D1EC(&qword_100223050, &qword_100223058);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100223048);
  }

  return result;
}

uint64_t sub_10019AC58()
{
  v1 = type metadata accessor for MusicModule();
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v13 = *(*(v1 - 8) + 64);
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = v0 + v2;

  v7 = *(type metadata accessor for MusicViewModel() + 44);
  if (!(*(v4 + 48))(v0 + v2 + v7, 1, v3))
  {
    (*(v4 + 8))(v6 + v7, v3);
  }

  v8 = *(v1 + 36);
  sub_100009F70(&qword_100219718);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for ColorScheme();
    (*(*(v9 - 8) + 8))(v6 + v8, v9);
  }

  else
  {
  }

  v10 = *(v1 + 40);
  sub_100009F70(&qword_100218DF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for OpenURLAction();
    (*(*(v11 - 8) + 8))(v6 + v10, v11);
  }

  else
  {
  }

  (*(v4 + 8))(v0 + ((v2 + v13 + v5) & ~v5), v3);

  return swift_deallocObject();
}

uint64_t sub_10019AF34()
{
  v1 = *(type metadata accessor for MusicModule() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  type metadata accessor for URL();

  return sub_100199E40(v0 + v2);
}

uint64_t sub_10019B034()
{
  v1 = type metadata accessor for MusicModule();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80));

  v3 = *(type metadata accessor for MusicViewModel() + 44);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  v6 = *(v1 + 36);
  sub_100009F70(&qword_100219718);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for ColorScheme();
    (*(*(v7 - 8) + 8))(v2 + v6, v7);
  }

  else
  {
  }

  v8 = *(v1 + 40);
  sub_100009F70(&qword_100218DF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for OpenURLAction();
    (*(*(v9 - 8) + 8))(v2 + v8, v9);
  }

  else
  {
  }

  return swift_deallocObject();
}

double sub_10019B2AC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for MusicModule() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_100198DC4(a1, v8, v5, v6, a2);
}

uint64_t sub_10019B348()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for MusicModule();
  v15 = *(*(v2 - 8) + 64);
  v16 = *(*(v2 - 8) + 80);
  v3 = *(v1 - 8);
  v4 = *(v3 + 80);
  v14 = (v16 + 32) & ~v16;
  v5 = v0 + v14;

  v6 = *(type metadata accessor for MusicViewModel() + 44);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v14 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  v9 = *(v2 + 36);
  sub_100009F70(&qword_100219718);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for ColorScheme();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
  }

  v11 = *(v2 + 40);
  sub_100009F70(&qword_100218DF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for OpenURLAction();
    (*(*(v12 - 8) + 8))(v5 + v11, v12);
  }

  else
  {
  }

  (*(v3 + 8))(v0 + ((v14 + v15 + v4) & ~v4), v1);

  return swift_deallocObject();
}

uint64_t sub_10019B650()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for MusicModule() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = v0 + ((v3 + *(v2 + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80));

  return sub_100199270(v0 + v3, v4);
}

unint64_t sub_10019B734()
{
  result = qword_100223080;
  if (!qword_100223080)
  {
    sub_10000B3DC(&qword_100223078);
    sub_10019B7EC();
    sub_10000D1EC(&qword_100219D48, &qword_100219D50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100223080);
  }

  return result;
}

unint64_t sub_10019B7EC()
{
  result = qword_100223088;
  if (!qword_100223088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100223088);
  }

  return result;
}

uint64_t sub_10019B848()
{
  sub_10000B3DC(&qword_10021AFA8);
  sub_10000B3DC(&qword_100222FA0);
  type metadata accessor for Array();
  swift_getAssociatedTypeWitness();
  sub_10000B3DC(&qword_100222FA8);
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ForEach();
  type metadata accessor for Section();
  sub_10019A1B0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for List();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for PlainListStyle();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_100222FD8);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  sub_10000B3DC(&qword_100218DD8);
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_10019BCCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for EventService();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  sub_100009F70(&qword_100223188);
  v4[9] = swift_task_alloc();

  return _swift_task_switch(sub_10019BDC8);
}

uint64_t sub_10019BDC8()
{
  (*(v0[7] + 16))(v0[8], v0[5] + OBJC_IVAR____TtC15ShazamEventsApp24PromotionalAssetsFetcher_service, v0[6]);

  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_10019BE98;
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[3];
  v5 = v0[4];

  return ArtistPromotionalAssets.init(artistID:service:)(v2, v4, v5, v3);
}

uint64_t sub_10019BE98()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_10019C12C;
  }

  else
  {
    v2 = sub_10019BFC4;
  }

  return _swift_task_switch(v2);
}

uint64_t sub_10019BFC4()
{
  v1 = v0[9];
  v2 = type metadata accessor for ArtistPromotionalAssets();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_10019C888(v1);
    v4 = 1;
  }

  else
  {
    ArtistPromotionalAssets.eventWithPromotionalAssets.getter();
    (*(v3 + 8))(v1, v2);
    v4 = 0;
  }

  v5 = v0[2];
  v6 = type metadata accessor for Music();
  (*(*(v6 - 8) + 56))(v5, v4, 1, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10019C12C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10019C198()
{
  v1 = OBJC_IVAR____TtC15ShazamEventsApp24PromotionalAssetsFetcher_service;
  v2 = type metadata accessor for EventService();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for PromotionalAssetsFetcher()
{
  result = qword_1002230C0;
  if (!qword_1002230C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10019C264()
{
  result = type metadata accessor for EventService();
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

uint64_t sub_10019C334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a2;
  v4[4] = a3;
  v4[2] = a1;
  v5 = sub_100009F70(&qword_10021B370);
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *v3;
  v4[7] = v6;
  v4[8] = v7;

  return _swift_task_switch(sub_10019C404);
}

uint64_t sub_10019C404()
{
  v1 = v0;
  v2 = type metadata accessor for Music();
  sub_10019C844(&qword_10021B378);
  static EventService.RequestType<>.music.getter();
  v3 = swift_task_alloc();
  v1[9] = v3;
  sub_10019C844(&qword_10021CB90);
  *v3 = v1;
  v3[1] = sub_10019C540;
  v4 = v1[7];
  v6 = v1[2];
  v5 = v1 + 2;
  v7 = v5[1];
  v8 = v5[2];
  v9 = v6;

  return EventService.event<A, B>(identifier:ofType:_:)(v9, v5, v7, v8, v4, v5, 0, v2);
}

uint64_t sub_10019C540()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  *(*v1 + 80) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_10019C72C;
  }

  else
  {
    v5 = sub_10019C6C8;
  }

  return _swift_task_switch(v5);
}

uint64_t sub_10019C6C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10019C72C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10019C790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000D890;

  return sub_10019BCCC(a1, a2, a3);
}

uint64_t sub_10019C844(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Music();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10019C888(uint64_t a1)
{
  v2 = sub_100009F70(&qword_100223188);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10019C8F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return _swift_task_switch(sub_10019C914);
}

uint64_t sub_10019C914()
{
  v1 = (*(v0[7] + 40))(v0[6]);
  v3 = v2;
  v0[8] = v2;
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_10019C9D0;

  return sub_10019D570(v1, v3);
}

uint64_t sub_10019C9D0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10019CB28);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_10019CB28()
{
  v1 = v0[7];
  v2 = v0[6];

  v3 = (*(v1 + 56))(v2, v1);
  v0[11] = v3;
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_10019CBF0;

  return sub_10019D974(v3);
}

uint64_t sub_10019CBF0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 16) = v2;
  *(v3 + 24) = a1;
  *(v3 + 32) = v1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v4 = sub_10019CD7C;
  }

  else
  {

    v4 = sub_10019CD14;
  }

  return _swift_task_switch(v4);
}

uint64_t sub_10019CD14()
{

  v1 = *(v0 + 24);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10019CD7C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10019CDE8(uint64_t a1, void *a2)
{
  v4 = sub_100009F70(&qword_1002231D8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  (*(v5 + 16))(aBlock - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  aBlock[4] = sub_10019E530;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10019D3F4;
  aBlock[3] = &unk_100212400;
  v10 = _Block_copy(aBlock);

  [a2 startWithCompletionHandler:v10];
  _Block_release(v10);
}

uint64_t sub_10019CF98(void *a1, uint64_t a2, uint64_t a3)
{
  v23 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v24 = *(v8 - 8);
  v25 = v8;
  __chkstk_darwin(v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100009F70(&qword_1002231D8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v22 - v14;
  sub_10005DB18(0, &qword_1002231E0);
  v22 = static OS_dispatch_queue.main.getter();
  (*(v12 + 16))(v15, a3, v11);
  v16 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  (*(v12 + 32))(v17 + v16, v15, v11);
  *(v17 + ((v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v23;
  aBlock[4] = sub_10019E6B8;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001914E4;
  aBlock[3] = &unk_100212450;
  v18 = _Block_copy(aBlock);
  v19 = a1;
  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v27 = _swiftEmptyArrayStorage;
  sub_1000F84F0();
  sub_100009F70(&qword_1002231F0);
  sub_1000F8548();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v20 = v22;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v26 + 8))(v7, v5);
  (*(v24 + 8))(v10, v25);
}

void sub_10019D31C(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = a1;
    [v3 image];
    sub_100009F70(&qword_1002231D8);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (!a3)
    {
      sub_10019DE14();
      swift_allocError();
      *v4 = 4;
    }

    swift_errorRetain();
    sub_100009F70(&qword_1002231D8);
    CheckedContinuation.resume(throwing:)();
  }
}

void sub_10019D3F4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_10019D480(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_100028124((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100009F70(qword_10021A1B8);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_10005DB18(0, &qword_1002231A0);
    **(*(v4 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t sub_10019D570(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return _swift_task_switch(sub_10019D590);
}

uint64_t sub_10019D590()
{
  v1 = objc_allocWithZone(MKMapItemIdentifier);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 initWithIdentifierString:v2];
  v0[21] = v3;

  if (v3)
  {
    v4 = [objc_allocWithZone(MKMapItemRequest) initWithMapItemIdentifier:v3];
    v0[22] = v4;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_10019D780;
    v5 = swift_continuation_init();
    v0[17] = sub_100009F70(&qword_1002231B0);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10013A864;
    v0[13] = &unk_100212320;
    v0[14] = v5;
    [v4 getMapItemWithCompletionHandler:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    sub_10019DE14();
    swift_allocError();
    *v6 = 1;
    swift_willThrow();
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_10019D780()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_10019D8FC;
  }

  else
  {
    v2 = sub_10019D890;
  }

  return _swift_task_switch(v2);
}

uint64_t sub_10019D890()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 144);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_10019D8FC()
{
  v1 = v0[22];
  v2 = v0[21];
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_10019D994()
{
  v1 = [objc_allocWithZone(MKReverseGeocodingRequest) initWithLocation:v0[19]];
  v0[20] = v1;
  if (v1)
  {
    v2 = v1;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_10019DB44;
    v3 = swift_continuation_init();
    v0[17] = sub_100009F70(&qword_100223198);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10019D480;
    v0[13] = &unk_1002122F8;
    v0[14] = v3;
    [v2 getMapItemsWithCompletionHandler:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    sub_10019DE14();
    swift_allocError();
    *v4 = 2;
    swift_willThrow();
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_10019DB44()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_10019DDA4;
  }

  else
  {
    v2 = sub_10019DC54;
  }

  return _swift_task_switch(v2);
}

uint64_t sub_10019DC54()
{
  v1 = v0[18];
  if (v1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    v7 = v0[20];

    sub_10019DE14();
    swift_allocError();
    *v8 = 3;
    swift_willThrow();

    v9 = v0[1];

    return v9();
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v1 + 32);
  }

  v4 = v3;
  v5 = v0[20];

  v6 = v0[1];

  return v6(v4);
}

uint64_t sub_10019DDA4()
{
  v1 = *(v0 + 160);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_10019DE14()
{
  result = qword_100223190;
  if (!qword_100223190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100223190);
  }

  return result;
}

unint64_t sub_10019DE94()
{
  result = qword_1002231B8;
  if (!qword_1002231B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002231B8);
  }

  return result;
}

uint64_t sub_10019DEE8(uint64_t a1, double a2, double a3)
{
  *(v3 + 32) = a2;
  *(v3 + 40) = a3;
  *(v3 + 24) = a1;
  return _swift_task_switch(sub_10019DF0C);
}

uint64_t sub_10019DF0C()
{
  v1 = *(v0 + 32);
  if (v1 == 0.0 || (v2 = *(v0 + 40), v2 == 0.0))
  {
    sub_10019DE14();
    swift_allocError();
    *v22 = 0;
    swift_willThrow();
    v23 = *(v0 + 8);

    return v23();
  }

  else
  {
    v3 = *(v0 + 24);
    v4 = [v3 location];
    [v4 coordinate];
    v6 = v5;
    v8 = v7;

    v9 = [objc_allocWithZone(MKMapSnapshotOptions) init];
    *(v0 + 48) = v9;
    [v9 setRegion:{v6, v8, 0.01, 0.01}];
    [v9 setSize:{v1, v2}];
    [v9 setMapType:0];
    v10 = [v3 location];
    [v10 coordinate];
    v12 = v11;
    v14 = v13;

    v15 = [objc_opt_self() cameraLookingAtCenterCoordinate:v12 fromDistance:v14 pitch:750.0 heading:{0.0, 0.0}];
    [v9 setCamera:v15];

    sub_100009F70(&qword_1002231C0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1001BC320;
    *(v16 + 32) = [objc_opt_self() customFeatureAnnotationForMapItem:v3];
    sub_100009F70(&qword_1002231C8);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v9 _setCustomFeatureAnnotations:isa];

    v18 = [objc_allocWithZone(MKMapSnapshotter) initWithOptions:v9];
    *(v0 + 56) = v18;
    v19 = swift_task_alloc();
    *(v0 + 64) = v19;
    *(v19 + 16) = v18;
    v20 = swift_task_alloc();
    *(v0 + 72) = v20;
    v21 = sub_10005DB18(0, &qword_1002231D0);
    *v20 = v0;
    v20[1] = sub_10019E298;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD00000000000001CLL, 0x80000001001C2550, sub_10019E494, v19, v21);
  }
}

uint64_t sub_10019E298()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_10019E420;
  }

  else
  {

    v2 = sub_10019E3B4;
  }

  return _swift_task_switch(v2);
}

uint64_t sub_10019E3B4()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 16);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_10019E420()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10019E49C()
{
  v1 = sub_100009F70(&qword_1002231D8);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_10019E530(void *a1, uint64_t a2)
{
  v5 = *(sub_100009F70(&qword_1002231D8) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10019CF98(a1, a2, v6);
}

uint64_t sub_10019E5BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10019E5D4()
{
  v1 = sub_100009F70(&qword_1002231D8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_10019E6B8()
{
  v1 = *(sub_100009F70(&qword_1002231D8) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_10019D31C(v3, v0 + v2, v4);
}

uint64_t sub_10019E790()
{
  result = static Color.secondary.getter();
  qword_1002231F8 = result;
  return result;
}

uint64_t sub_10019E7B0@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v46 = a2;
  v49 = a4;
  v6 = sub_100009F70(&qword_100223210);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v45 = &v44 - v8;
  v9 = sub_100009F70(&qword_100223218);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v44 - v13;
  v15 = sub_100009F70(&qword_100223220);
  v16 = __chkstk_darwin(v15 - 8);
  v48 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v44 - v18;
  v20 = sub_100009F70(&qword_100219C30);
  v21 = v20 - 8;
  v22 = __chkstk_darwin(v20);
  v47 = &v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v44 - v24;
  Divider.init()();
  v26 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v27 = *(v21 + 44);
  v28 = v46;
  v29 = &v25[v27];
  *v29 = v26;
  *(v29 + 1) = v30;
  *(v29 + 2) = v31;
  *(v29 + 3) = v32;
  *(v29 + 4) = v33;
  v29[40] = 0;
  *v19 = static VerticalAlignment.center.getter();
  *(v19 + 1) = 0x4018000000000000;
  v19[16] = 0;
  v34 = sub_100009F70(&qword_100223228);
  sub_10019EC84(a1, &v19[*(v34 + 44)]);
  if (a1)
  {
    v35 = 1;
  }

  else
  {
    v36 = swift_allocObject();
    *(v36 + 16) = 0;
    *(v36 + 24) = v28;
    *(v36 + 32) = a3;

    sub_100009F70(&qword_100223230);
    sub_10019F4A4();
    v37 = v45;
    Button.init(action:label:)();
    (*(v7 + 32))(v14, v37, v6);
    v35 = 0;
  }

  (*(v7 + 56))(v14, v35, 1, v6);
  v38 = v47;
  sub_10000D58C(v25, v47, &qword_100219C30);
  v39 = v48;
  v46 = v25;
  sub_10000D58C(v19, v48, &qword_100223220);
  sub_10000D58C(v14, v12, &qword_100223218);
  v40 = v12;
  v41 = v49;
  sub_10000D58C(v38, v49, &qword_100219C30);
  v42 = sub_100009F70(&qword_100223260);
  sub_10000D58C(v39, v41 + *(v42 + 48), &qword_100223220);
  sub_10000D58C(v40, v41 + *(v42 + 64), &qword_100223218);
  sub_10000D52C(v14, &qword_100223218);
  sub_10000D52C(v19, &qword_100223220);
  sub_10000D52C(v46, &qword_100219C30);
  sub_10000D52C(v40, &qword_100223218);
  sub_10000D52C(v39, &qword_100223220);
  return sub_10000D52C(v38, &qword_100219C30);
}

uint64_t sub_10019EC84@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = sub_100009F70(&qword_10021BF58);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v32 - v5;
  v7 = sub_100009F70(&qword_100223268);
  v8 = __chkstk_darwin(v7 - 8);
  v33 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v32 - v10;
  if (a1)
  {
    ProgressView<>.init<>()();
    if (qword_100218468 != -1)
    {
      swift_once();
    }

    v12 = qword_1002231F8;
    KeyPath = swift_getKeyPath();
    v35 = v12;

    v14 = AnyShapeStyle.init<A>(_:)();
    v15 = &v6[*(v3 + 36)];
    *v15 = KeyPath;
    v15[1] = v14;
    sub_10019F6C4(v6, v11);
    (*(v4 + 56))(v11, 0, 1, v3);
  }

  else
  {
    (*(v4 + 56))(&v32 - v10, 1, 1, v3);
  }

  LocalizedStringKey.init(_:)();
  v16 = Text.init(_:tableName:bundle:comment:)();
  v18 = v17;
  v20 = v19;
  if (qword_100218468 != -1)
  {
    swift_once();
  }

  v35 = qword_1002231F8;

  v21 = Text.foregroundStyle<A>(_:)();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_10000D60C(v16, v18, v20 & 1);

  v28 = v33;
  sub_10000D58C(v11, v33, &qword_100223268);
  v29 = v34;
  sub_10000D58C(v28, v34, &qword_100223268);
  v30 = v29 + *(sub_100009F70(&qword_100223270) + 48);
  *v30 = v21;
  *(v30 + 8) = v23;
  v25 &= 1u;
  *(v30 + 16) = v25;
  *(v30 + 24) = v27;
  sub_10000D5FC(v21, v23, v25);

  sub_10000D52C(v11, &qword_100223268);
  sub_10000D60C(v21, v23, v25);

  return sub_10000D52C(v28, &qword_100223268);
}

double sub_10019F054@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v2);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  LocalizedStringKey.init(_:)();
  v5 = Text.init(_:tableName:bundle:comment:)();
  v7 = v6;
  v9 = v8;
  v38 = v10;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v11 = v9 & 1;
  LOBYTE(v47[0]) = v9 & 1;
  v12 = static Edge.Set.horizontal.getter();
  LOBYTE(v39) = 1;
  if (qword_100218468 != -1)
  {
    swift_once();
  }

  v13 = qword_1002231F8;
  v14 = *(v2 + 20);
  v15 = enum case for RoundedCornerStyle.continuous(_:);
  v16 = type metadata accessor for RoundedCornerStyle();
  (*(*(v16 - 8) + 104))(&v4[v14], v15, v16);
  __asm { FMOV            V0.2D, #3.0 }

  *v4 = _Q0;

  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v22 = a1 + *(sub_100009F70(&qword_100223230) + 36);
  sub_1000A3BD8(v4, v22);
  v23 = v22 + *(sub_100009F70(&qword_10021BE20) + 36);
  v24 = v40;
  *v23 = v39;
  *(v23 + 16) = v24;
  *(v23 + 32) = v41;
  v25 = sub_100009F70(&qword_10021BE28);
  *(v22 + *(v25 + 52)) = v13;
  *(v22 + *(v25 + 56)) = 256;

  v26 = static Alignment.center.getter();
  v28 = v27;
  sub_1000A3C3C(v4);
  v29 = (v22 + *(sub_100009F70(&qword_10021BE30) + 36));
  *v29 = v26;
  v29[1] = v28;
  v30 = static Alignment.center.getter();
  v32 = v31;
  v33 = (v22 + *(sub_100009F70(&qword_100223258) + 36));
  *v33 = v30;
  v33[1] = v32;
  *a1 = v5;
  *(a1 + 8) = v7;
  *(a1 + 16) = v11;
  *(a1 + 20) = *(v47 + 3);
  v34 = *&v46[3];
  *(a1 + 17) = v47[0];
  *(a1 + 24) = v38;
  v35 = v44;
  v36 = v42;
  *(a1 + 48) = v43;
  *(a1 + 64) = v35;
  *(a1 + 32) = v36;
  *(a1 + 80) = v12;
  LODWORD(v33) = *v46;
  *(a1 + 84) = v34;
  *(a1 + 81) = v33;
  result = 0.0;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 1;
  LODWORD(v33) = *v45;
  *(a1 + 124) = *&v45[3];
  *(a1 + 121) = v33;
  *(a1 + 128) = v13;
  return result;
}

double sub_10019F380@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v5 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0x4035000000000000;
  *(a1 + 16) = 0;
  v6 = sub_100009F70(&qword_100223200);
  sub_10019E7B0(v3, v5, v4, a1 + *(v6 + 44));
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v7 = (a1 + *(sub_100009F70(&qword_100223208) + 36));
  *v7 = v9;
  v7[1] = v10;
  result = *&v11;
  v7[2] = v11;
  return result;
}

uint64_t sub_10019F444()
{

  return swift_deallocObject();
}

unint64_t sub_10019F4A4()
{
  result = qword_100223238;
  if (!qword_100223238)
  {
    sub_10000B3DC(&qword_100223230);
    sub_10019F55C();
    sub_10000D1EC(&qword_100223250, &qword_100223258);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100223238);
  }

  return result;
}

unint64_t sub_10019F55C()
{
  result = qword_100223240;
  if (!qword_100223240)
  {
    sub_10000B3DC(&qword_100223248);
    sub_10011D298();
    sub_10000D1EC(&qword_1002188E0, &qword_1002188E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100223240);
  }

  return result;
}

uint64_t sub_10019F614@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tint.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10019F640@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tint.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10019F6C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F70(&qword_10021BF58);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10019F738()
{
  result = qword_100223278;
  if (!qword_100223278)
  {
    sub_10000B3DC(&qword_100223208);
    sub_10000D1EC(&qword_100223280, qword_100223288);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100223278);
  }

  return result;
}

uint64_t sub_10019F7F0()
{
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    result = type metadata accessor for Optional();
    if (v2 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        result = swift_checkMetadataState();
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for ObservationRegistrar();
          if (v5 <= 0x3F)
          {
            return swift_initClassMetadata2();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10019FAF8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1001A3344();

  v3 = *(*v1 + 192);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

void *sub_10019FC4C()
{
  sub_1001A59A8(v3);
  if (!v3[3] || !v3[1])
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100009F70(&qword_10021C438);
  type metadata accessor for URLQueryItem();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1001ACB00;
  sub_10008319C(v3, &v2);
  URLQueryItem.init(name:value:)();
  URLQueryItem.init(name:value:)();
  sub_1000831F8(v3);
  return v0;
}

uint64_t sub_10019FD9C()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v6 = &v15 - v5;
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - v9;
  sub_1001A18E0(&v15 - v9);
  v11 = *(v2 - 8);
  if ((*(v11 + 48))(v10, 1, v2) == 1)
  {
    (*(v8 + 8))(v10, v7);
    v12 = 0;
  }

  else
  {
    (*(v1 + 104))(v2, v1);
    (*(v11 + 8))(v10, v2);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v12 = sub_100061120(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v4 + 8))(v6, AssociatedTypeWitness);
  }

  return v12 & 1;
}

uint64_t sub_1001A0014()
{
  v0 = type metadata accessor for Optional();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  sub_1001A18E0(&v5 - v2);
  sub_1001A5A54(v3);
  return (*(v1 + 8))(v3, v0);
}

void sub_1001A00EC(uint64_t a1)
{
  v36 = a1;
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = type metadata accessor for Optional();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v6 = &v34 - v5;
  v7 = *(v2 + 120);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v34 - v11;
  sub_100009F70(qword_100218F38);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1001AD7C0;
  *(v13 + 56) = &type metadata for AnalyticsPageName;
  *(v13 + 64) = &off_10021CBA8;
  *(v13 + 32) = 7;
  *(v13 + 96) = &type metadata for AnalyticsModuleName;
  *(v13 + 104) = &off_10021CC30;
  *(v13 + 72) = 3;
  sub_1001A06AC(v12);
  if ((*(*(AssociatedTypeWitness - 8) + 48))(v12, 1, AssociatedTypeWitness) == 1)
  {
    v14 = 12;
  }

  else
  {
    v14 = 11;
  }

  (*(v10 + 8))(v12, v9);
  *(v13 + 136) = &type metadata for AnalyticsModuleAction;
  *(v13 + 144) = &off_10021CC08;
  *(v13 + 112) = v14;
  *(v13 + 120) = 0;
  *(v13 + 128) = 3;
  v42 = v13;
  sub_1001A18E0(v6);
  v15 = *(v3 - 8);
  v16 = &type metadata for AnalyticsString;
  v17 = &off_10021CBD0;
  if ((*(v15 + 48))(v6, 1, v3) == 1)
  {
    (*(v34 + 8))(v6, v35);
  }

  else
  {
    v18 = (*(*(v7 + 8) + 120))(v3);
    v20 = v19;
    (*(v15 + 8))(v6, v3);
    v22 = *(v13 + 16);
    v21 = *(v13 + 24);
    if (v22 >= v21 >> 1)
    {
      v13 = sub_1001666DC((v21 > 1), v22 + 1, 1, v13);
    }

    v39 = &type metadata for AnalyticsString;
    v40 = &off_10021CBD0;
    LOBYTE(aBlock) = 0;
    *(&aBlock + 1) = v18;
    v38 = v20;
    *(v13 + 16) = v22 + 1;
    sub_100071318(&aBlock, v13 + 40 * v22 + 32);
  }

  if (*(v36 + 72))
  {
    v23 = *(v36 + 64);
    v24 = *(v36 + 72);
  }

  else
  {
    v23 = 0;
    v24 = 0xE000000000000000;
  }

  v39 = &type metadata for AnalyticsString;
  v40 = &off_10021CBD0;
  LOBYTE(aBlock) = 1;
  *(&aBlock + 1) = v23;
  v38 = v24;
  v42 = v13;
  v25 = *(v13 + 16);
  v26 = *(v13 + 24);

  if (v25 >= v26 >> 1)
  {
    v13 = sub_1001666DC((v26 > 1), v25 + 1, 1, v13);
    v42 = v13;
    v16 = v39;
    v17 = v40;
  }

  v27 = sub_100031420(&aBlock, v16);
  __chkstk_darwin(v27);
  v29 = &v34 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29);
  sub_1000EB0D0(v25, v29, &v42, v16, v17);
  sub_100021498(&aBlock);
  v31 = String._bridgeToObjectiveC()();
  v32 = swift_allocObject();
  v32[2] = 0xD00000000000001ELL;
  v32[3] = 0x80000001001BDDE0;
  v32[4] = v13;
  v40 = sub_100038F2C;
  v41 = v32;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v38 = sub_1000DCA40;
  v39 = &unk_100212650;
  v33 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v33);
}

uint64_t sub_1001A06AC@<X0>(uint64_t a1@<X8>)
{
  v17[0] = a1;
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v7 = v17 - v6;
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v17 - v10;
  sub_1001A18E0(v17 - v10);
  v12 = *(v3 - 8);
  if ((*(v12 + 48))(v11, 1, v3) == 1)
  {
    (*(v9 + 8))(v11, v8);
    swift_getAssociatedConformanceWitness();
    v13 = swift_getAssociatedTypeWitness();
    return (*(*(v13 - 8) + 56))(v17[0], 1, 1, v13);
  }

  else
  {
    (*(v2 + 104))(v3, v2);
    (*(v12 + 8))(v11, v3);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v16 = (*(AssociatedConformanceWitness + 56))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v5 + 8))(v7, AssociatedTypeWitness);
    v17[1] = v16;
    swift_getAssociatedTypeWitness();
    type metadata accessor for Array();
    swift_getWitnessTable();
    Collection.first.getter();
  }
}

BOOL sub_1001A0A1C()
{
  type metadata accessor for Array();
  swift_getWitnessTable();
  return (Collection.isEmpty.getter() & 1) == 0;
}

char *sub_1001A0AB4(char a1)
{
  v3 = *(v1 + *(*v1 + 216));
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = sub_100166C68(*(v3 + 16), 0);
    v6 = sub_10012E330(&v17, v5 + 4, v4, v3);

    sub_10012E4B0();
    if (v6 == v4)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v5 = _swiftEmptyArrayStorage;
LABEL_5:
  v17 = v5;
  sub_1001A4DBC(&v17);
  v7 = v17;
  v8 = _swiftEmptyArrayStorage;
  if (*(v3 + 16) == 1)
  {
    v17 = _swiftEmptyArrayStorage;
    if ((a1 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_100009F70(&qword_100220E08);
    v8 = swift_allocObject();
    *(v8 + 1) = xmmword_1001AEB90;
    *(v8 + 4) = 0;
    *(v8 + 5) = 0;
    v17 = v8;
    if ((a1 & 1) == 0)
    {
LABEL_7:
      v9 = *(v7 + 2);
      if (!v9)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }
  }

  sub_1001A4CC8(&off_100209AC0);
  v8 = v17;
  v9 = *(v7 + 2);
  if (!v9)
  {
    goto LABEL_15;
  }

LABEL_8:
  sub_10014462C(0, v9, 0);
  v10 = (v7 + 40);
  do
  {
    v12 = *(v10 - 1);
    v11 = *v10;
    v14 = _swiftEmptyArrayStorage[2];
    v13 = _swiftEmptyArrayStorage[3];

    if (v14 >= v13 >> 1)
    {
      sub_10014462C((v13 > 1), v14 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v14 + 1;
    v15 = &_swiftEmptyArrayStorage[2 * v14];
    *(v15 + 4) = v12;
    *(v15 + 5) = v11;
    v10 += 2;
    --v9;
  }

  while (v9);
LABEL_15:

  sub_1001A4CC8(_swiftEmptyArrayStorage);
  return v8;
}

uint64_t sub_1001A0CDC()
{
  v0 = sub_1001A5D5C();
  sub_1000E4108(v0, v1);
  return v0;
}

uint64_t sub_1001A0D10(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = *v2;
  type metadata accessor for MainActor();
  v3[7] = static MainActor.shared.getter();
  v3[8] = dispatch thunk of Actor.unownedExecutor.getter();
  v3[9] = v4;

  return _swift_task_switch(sub_1001A0DD4);
}

uint64_t sub_1001A0DD4()
{
  v1 = v0[4];
  sub_10005E8AC();
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = swift_task_alloc();
      v0[10] = v2;
      *v2 = v0;
      v2[1] = sub_1001A1010;

      return sub_1001A3F78();
    }

    v5 = v0[6];
    v7 = v0[4];
    v6 = v0[5];
    v8 = v0[3];

    v0[2] = *(v6 + *(*v6 + 208));
    v9 = swift_task_alloc();
    *(v9 + 16) = *(v5 + 80);
    *(v9 + 24) = *(v5 + 88);
    *(v9 + 32) = *(v5 + 96);
    *(v9 + 48) = *(v5 + 112);
    *(v9 + 56) = *(v5 + 120);
    *(v9 + 72) = *(v5 + 136);
    *(v9 + 80) = v8;
    *(v9 + 88) = v7;
    type metadata accessor for Array();

    swift_getWitnessTable();
    v10 = _ArrayProtocol.filter(_:)();

    v4 = v10;
  }

  else
  {
  }

  sub_1001A37D8(v4);
  v11 = v0[4];
  v12 = v0[3];
  sub_1000E4108(v12, v11);
  sub_1001A3584(v12, v11);
  v13 = v0[1];

  return v13();
}

uint64_t sub_1001A1010(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = sub_1001A11D0;
  }

  else
  {
    *(v4 + 96) = a1;
    v5 = sub_1001A1138;
  }

  return _swift_task_switch(v5);
}

uint64_t sub_1001A1138()
{
  v1 = v0[12];

  sub_1001A37D8(v1);
  v2 = v0[4];
  v3 = v0[3];
  sub_1000E4108(v3, v2);
  sub_1001A3584(v3, v2);
  v4 = v0[1];

  return v4();
}

uint64_t sub_1001A11D0()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1001A123C(char a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5)
{
  sub_100009F70(qword_100218F38);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1001AD8A0;
  v12 = (*(*(*v5 + 112) + 40))(*(*v5 + 80));
  *(v11 + 56) = &type metadata for AnalyticsString;
  *(v11 + 64) = &off_10021CBD0;
  *(v11 + 32) = 0;
  *(v11 + 40) = v12;
  *(v11 + 48) = v13;
  *(v11 + 96) = &type metadata for AnalyticsPageName;
  *(v11 + 104) = &off_10021CBA8;
  *(v11 + 72) = 7;
  *(v11 + 136) = &type metadata for AnalyticsModuleName;
  *(v11 + 144) = &off_10021CC30;
  *(v11 + 112) = a1;
  *(v11 + 176) = &type metadata for AnalyticsModuleAction;
  *(v11 + 184) = &off_10021CC08;
  *(v11 + 152) = a2;
  *(v11 + 160) = a3;
  *(v11 + 168) = a4;
  if (*(a5 + 72))
  {
    v14 = *(a5 + 64);
    v15 = *(a5 + 72);
  }

  else
  {
    v14 = 0;
    v15 = 0xE000000000000000;
  }

  v29 = &type metadata for AnalyticsString;
  v30 = &off_10021CBD0;
  LOBYTE(aBlock) = 1;
  v27 = v14;
  v28 = v15;
  sub_1000109A4(a2, a3, a4);
  v32 = v11;
  v16 = *(v11 + 16);
  v17 = *(v11 + 24);

  if (v16 >= v17 >> 1)
  {
    v11 = sub_1001666DC((v17 > 1), v16 + 1, 1, v11);
    v32 = v11;
  }

  v18 = sub_100031420(&aBlock, &type metadata for AnalyticsString);
  __chkstk_darwin(v18);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20);
  sub_1000EB0D0(v16, v20, &v32, &type metadata for AnalyticsString, &off_10021CBD0);
  sub_100021498(&aBlock);
  v22 = String._bridgeToObjectiveC()();
  v23 = swift_allocObject();
  v23[2] = 0xD00000000000001ELL;
  v23[3] = 0x80000001001BDDE0;
  v23[4] = v11;
  v30 = sub_100010AAC;
  v31 = v23;
  aBlock = _NSConcreteStackBlock;
  v27 = 1107296256;
  v28 = sub_1000DCA40;
  v29 = &unk_100212600;
  v24 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v24);
}

uint64_t sub_1001A1584()
{
  sub_1001A5918();
}

uint64_t sub_1001A15AC(char a1)
{
  v2 = *(*v1 + 168);
  v3 = a1 & 1;
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    *(v1 + v2) = v3;
  }

  else
  {
    __chkstk_darwin(result);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001A34AC();
  }

  return result;
}

uint64_t sub_1001A171C()
{
  swift_getKeyPath();
  sub_1001A3344();

  return *(v0 + *(*v0 + 168));
}

uint64_t sub_1001A17AC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1001A3344();

  v3 = *(*v1 + 144);
  swift_beginAccess();
  v4 = type metadata accessor for Optional();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1001A18E0@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v2 = *v1;
  v3 = type metadata accessor for PromotionalAssetsController.State();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = __chkstk_darwin(AssociatedTypeWitness);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v20 - v12;
  sub_100181FF8(v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *(v8 + 32);
    v14(v13, v6, AssociatedTypeWitness);
    v14(v11, v13, AssociatedTypeWitness);
    v15 = *(v2 + 88);
    v16 = v21;
    if (swift_dynamicCast())
    {
      v17 = v16;
      v18 = 0;
    }

    else
    {
      v17 = v16;
      v18 = 1;
    }

    return (*(*(v15 - 8) + 56))(v17, v18, 1);
  }

  else
  {
    (*(v4 + 8))(v6, v3);
    return (*(*(*(v2 + 88) - 8) + 56))(v21, 1, 1);
  }
}

uint64_t sub_1001A1BC0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1001A3344();

  v3 = *(*v1 + 160);
  swift_beginAccess();
  v4 = type metadata accessor for Optional();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1001A1CF4(uint64_t a1)
{
  v3 = (*(*(*v1 + 112) + 40))(*(*v1 + 80));
  sub_1000DCEDC(v3, v4, 7, a1);
}

uint64_t sub_1001A1D90()
{
  v1[10] = v0;
  v1[11] = *v0;
  type metadata accessor for MainActor();
  v1[12] = static MainActor.shared.getter();
  v1[13] = dispatch thunk of Actor.unownedExecutor.getter();
  v1[14] = v2;

  return _swift_task_switch(sub_1001A1E50);
}

uint64_t sub_1001A1E50()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v3 = [v2 bundleIdentifier];

  if (v3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = swift_task_alloc();
  *(v0 + 120) = v7;
  *v7 = v0;
  v7[1] = sub_1001A1F7C;

  return sub_10013AF88(v0 + 16, v4, v6);
}

uint64_t sub_1001A1F7C()
{

  return _swift_task_switch(sub_1001A209C);
}

uint64_t sub_1001A209C()
{

  sub_1001A3B14(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001A2108()
{
  v1[2] = v0;
  v1[3] = *v0;
  type metadata accessor for MainActor();
  v1[4] = static MainActor.shared.getter();
  v1[5] = dispatch thunk of Actor.unownedExecutor.getter();
  v1[6] = v2;

  return _swift_task_switch(sub_1001A21C8);
}

uint64_t sub_1001A21C8()
{
  v1 = (*(*(v0[3] + 112) + 40))(*(v0[3] + 80));
  v3 = v2;
  v0[7] = v2;
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_1001A22C8;

  return sub_1001820F0(v1, v3);
}

uint64_t sub_1001A22C8()
{

  return _swift_task_switch(sub_1001A240C);
}

uint64_t sub_1001A240C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001A246C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *v2;
  v3[5] = *(*v2 + 136);
  v3[6] = *(v4 + 104);
  v3[7] = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[12] = static MainActor.shared.getter();
  v3[13] = dispatch thunk of Actor.unownedExecutor.getter();
  v3[14] = v6;

  return _swift_task_switch(sub_1001A25C4);
}

uint64_t sub_1001A25C4()
{
  v1 = v0[3];
  if (v1)
  {
    v21 = v0[5];
    v2 = sub_1001A3C70();
    v4 = v3;
    v0[15] = v3;
    v20 = (*(v21 + 24) + **(v21 + 24));
    v5 = swift_task_alloc();
    v0[16] = v5;
    *v5 = v0;
    v5[1] = sub_1001A282C;
    v6 = v0[11];
    v8 = v0[5];
    v7 = v0[6];
    v9 = v0[2];

    return v20(v6, v9, v1, v2, v4, v7, v8);
  }

  else
  {
    v11 = sub_1001A3C70();
    v0[18] = v12;
    if (v12)
    {
      v13 = v11;
      v14 = v12;
      v15 = swift_task_alloc();
      v0[19] = v15;
      *v15 = v0;
      v15[1] = sub_1001A2A68;
      v16 = v0[10];
      v18 = v0[5];
      v17 = v0[6];

      return sub_100020BB8(v16, v13, v14, v17, v18);
    }

    else
    {

      v19 = v0[1];

      return v19();
    }
  }
}

uint64_t sub_1001A282C()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_1001A2CA4;
  }

  else
  {
    v2 = sub_1001A2984;
  }

  return _swift_task_switch(v2);
}

uint64_t sub_1001A2984()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[7];

  (*(*(v4 - 8) + 56))(v1, 0, 1, v4);
  sub_1001A60F8(v1);
  (*(v3 + 8))(v1, v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1001A2A68()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_1001A2F4C;
  }

  else
  {
    v2 = sub_1001A2BC0;
  }

  return _swift_task_switch(v2);
}

uint64_t sub_1001A2BC0()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];

  (*(*(v4 - 8) + 56))(v1, 0, 1, v4);
  sub_1001A60F8(v1);
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1001A2CA4()
{
  v19 = v0;

  if (qword_100218470 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = type metadata accessor for Logger();
  sub_10001FDF4(v2, qword_100230610);

  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[3];
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v7 = 136315650;
    if (v5)
    {
      v9 = v1;
    }

    else
    {
      v6 = 1701736270;
      v9 = 0xE400000000000000;
    }

    v10 = sub_10005D4E8(v6, v9, &v18);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    v11 = sub_1001A3C70();
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v11 = 1701736270;
      v13 = 0xE400000000000000;
    }

    v14 = sub_10005D4E8(v11, v13, &v18);

    *(v7 + 14) = v14;
    *(v7 + 22) = 2112;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 24) = v15;
    *v8 = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to fetch promotional playlist. Configuration playlist ID: %s, event playlist ID: %s, error: %@", v7, 0x20u);
    sub_1000EB068(v8);

    swift_arrayDestroy();
  }

  else
  {
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_1001A2F4C()
{
  v19 = v0;

  if (qword_100218470 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = type metadata accessor for Logger();
  sub_10001FDF4(v2, qword_100230610);

  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[3];
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v7 = 136315650;
    if (v5)
    {
      v9 = v1;
    }

    else
    {
      v6 = 1701736270;
      v9 = 0xE400000000000000;
    }

    v10 = sub_10005D4E8(v6, v9, &v18);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    v11 = sub_1001A3C70();
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v11 = 1701736270;
      v13 = 0xE400000000000000;
    }

    v14 = sub_10005D4E8(v11, v13, &v18);

    *(v7 + 14) = v14;
    *(v7 + 22) = 2112;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 24) = v15;
    *v8 = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to fetch promotional playlist. Configuration playlist ID: %s, event playlist ID: %s, error: %@", v7, 0x20u);
    sub_1000EB068(v8);

    swift_arrayDestroy();
  }

  else
  {
  }

  v16 = v0[1];

  return v16();
}

BOOL sub_1001A31F4()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = type metadata accessor for Optional();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  sub_10019FAF8(&v7 - v3);
  v5 = (*(*(AssociatedTypeWitness - 8) + 48))(v4, 1, AssociatedTypeWitness) != 1;
  (*(v2 + 8))(v4, v1);
  return v5;
}

uint64_t sub_1001A33E4(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 144);
  swift_beginAccess();
  v5 = type metadata accessor for Optional();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_1001A3584(uint64_t a1, unint64_t a2)
{
  v5 = (v2 + *(*v2 + 152));
  sub_1001212F8();
  v6 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v6)
  {
    v7 = *v5;
    v8 = v5[1];
    *v5 = a1;
    v5[1] = a2;
    return sub_10008324C(v7, v8);
  }

  else
  {
    __chkstk_darwin(v6);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001A34AC();
    sub_10008324C(a1, a2);
  }
}

uint64_t sub_1001A3710(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 160);
  swift_beginAccess();
  v5 = type metadata accessor for Optional();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_1001A37D8(uint64_t a1)
{
  v3 = *(*v1 + 184);
  type metadata accessor for Array();
  swift_getWitnessTable();
  v4 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v4)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    __chkstk_darwin(v4);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001A34AC();
  }
}

uint64_t sub_1001A39D0(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 192);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

double sub_1001A3AC8@<D0>(_OWORD *a1@<X8>)
{
  sub_1001A59A8(v6);
  sub_10008319C(v6, &v5);
  v2 = v6[1];
  *a1 = v6[0];
  a1[1] = v2;
  result = *&v7;
  v4 = v8;
  a1[2] = v7;
  a1[3] = v4;
  return result;
}

uint64_t sub_1001A3B14(uint64_t a1)
{
  swift_getKeyPath();
  sub_1001A34AC();
  sub_1000831F8(a1);
}

uint64_t sub_1001A3BCC(uint64_t a1, _OWORD *a2)
{
  v2 = (a1 + *(*a1 + 248));
  v3 = a2[1];
  *v2 = *a2;
  v2[1] = v3;
  v4 = a2[3];
  v2[2] = a2[2];
  v2[3] = v4;
  sub_10008319C(a2, &v6);
}

uint64_t sub_1001A3C70()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = type metadata accessor for Optional();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - v5;
  v7 = *(v1 + 120);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v18 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v17 - v10;
  sub_1001A18E0(v6);
  v12 = *(v2 - 8);
  if ((*(v12 + 48))(v6, 1, v2) == 1)
  {
    (*(v4 + 8))(v6, v3);
    return 0;
  }

  sub_1000755BC(v2, v7, v11);
  (*(v12 + 8))(v6, v2);
  v13 = *(AssociatedTypeWitness - 8);
  if ((*(v13 + 48))(v11, 1, AssociatedTypeWitness) == 1)
  {
    (*(v18 + 8))(v11, v9);
    return 0;
  }

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v13 + 8))(v11, AssociatedTypeWitness);
  return v16;
}

uint64_t sub_1001A3F78()
{
  v1[3] = v0;
  v1[4] = *v0;
  type metadata accessor for MainActor();
  v1[5] = static MainActor.shared.getter();
  v1[6] = dispatch thunk of Actor.unownedExecutor.getter();
  v1[7] = v2;

  return _swift_task_switch(sub_1001A4038);
}

uint64_t sub_1001A4038()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1001A40E0;

  return sub_10005E31C();
}

uint64_t sub_1001A40E0(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *v4;
  *(v6 + 72) = a1;
  *(v6 + 80) = a2;
  *(v6 + 88) = v3;

  if (v3)
  {
    v7 = sub_100016584;
  }

  else
  {
    *(v6 + 96) = a3;
    v7 = sub_1001A420C;
  }

  return _swift_task_switch(v7);
}

uint64_t sub_1001A420C()
{
  v1 = *(v0 + 96);

  if (v1)
  {
    v2 = static Array._allocateUninitialized(_:)();
  }

  else
  {
    *(v0 + 16) = *(*(v0 + 24) + *(**(v0 + 24) + 208));
    v3 = *(v0 + 80);
    v4 = *(v0 + 72);
    v5 = *(v0 + 32);
    v6 = swift_task_alloc();
    *(v6 + 16) = *(v5 + 80);
    *(v6 + 24) = *(v5 + 88);
    *(v6 + 32) = *(v5 + 96);
    *(v6 + 48) = *(v5 + 112);
    *(v6 + 56) = *(v5 + 120);
    *(v6 + 72) = *(v5 + 136);
    *(v6 + 80) = v4;
    *(v6 + 88) = v3;
    type metadata accessor for Array();

    swift_getWitnessTable();
    v7 = _ArrayProtocol.filter(_:)();

    v2 = v7;
  }

  v8 = *(v0 + 8);

  return v8(v2);
}

uint64_t sub_1001A4378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v28 = a2;
  v29 = a3;
  v10 = *(a9 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v14 = &v28 - v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = swift_getAssociatedTypeWitness();
  v17 = type metadata accessor for Optional();
  v30 = *(v17 - 8);
  v31 = v17;
  __chkstk_darwin(v17);
  v19 = &v28 - v18;
  (*(v10 + 176))(a5, v10);
  (*(AssociatedConformanceWitness + 64))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v12 + 8))(v14, AssociatedTypeWitness);
  v20 = *(v16 - 8);
  if ((*(v20 + 48))(v19, 1, v16) == 1)
  {
    (*(v30 + 8))(v19, v31);
    v21 = 0;
  }

  else
  {
    v22 = swift_getAssociatedConformanceWitness();
    v23 = (*(v22 + 40))(v16, v22);
    v25 = v24;
    (*(v20 + 8))(v19, v16);
    if (v25)
    {
      if (v23 == v28 && v25 == v29)
      {

        v21 = 1;
      }

      else
      {
        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      v21 = 0;
    }
  }

  return v21 & 1;
}

BOOL sub_1001A4698(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *(a9 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v16 = &v28 - v15;
  (*(v12 + 176))(a5, v12);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = (*(AssociatedConformanceWitness + 56))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v14 + 8))(v16, AssociatedTypeWitness);
  [v18 coordinate];
  v20 = v19;
  v22 = v21;

  v23 = [objc_allocWithZone(CLLocation) initWithLatitude:v20 longitude:v22];
  v24 = [objc_allocWithZone(CLLocation) initWithLatitude:a1 longitude:a2];
  [v24 distanceFromLocation:v23];
  v26 = v25;

  return v26 <= 161000.0;
}

char *sub_1001A488C()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v3 = type metadata accessor for Optional();
  v4 = *(*(v3 - 8) + 8);
  v4(&v0[v2], v3);
  sub_10008324C(*&v0[*(*v0 + 152)], *&v0[*(*v0 + 152) + 8]);
  v4(&v0[*(*v0 + 160)], v3);

  v5 = *(*v0 + 192);
  v6 = *(v1 + 104);
  swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Optional();
  (*(*(v7 - 8) + 8))(&v0[v5], v7);
  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(*v0 + 200)]);

  (*(*(v6 - 8) + 8))(&v0[*(*v0 + 240)], v6);

  v8 = *(*v0 + 288);
  v9 = type metadata accessor for ObservationRegistrar();
  (*(*(v9 - 8) + 8))(&v0[v8], v9);
  return v0;
}

uint64_t sub_1001A4C58()
{
  sub_1001A488C();

  return swift_deallocClassInstance();
}

uint64_t sub_1001A4CC8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_100166B5C(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

Swift::Int sub_1001A4DBC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10012E49C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1001A4E28(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_1001A4E28(uint64_t *a1)
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
        v5 = &_swiftEmptyArrayStorage;
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1001A5024(v7, v8, a1, v4);
      v6[2] = 0;
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
    return sub_1001A4F20(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1001A4F20(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = result;
    v6 = *a4;
    sub_100027068();
    v7 = v5 - v4;
    v8 = (v6 + 16 * v4);
LABEL_5:
    v14 = v7;
    v9 = v8;
    while (1)
    {
      result = StringProtocol.localizedStandardCompare<A>(_:)();
      if (result != -1)
      {
LABEL_4:
        ++v4;
        v8 += 2;
        v7 = v14 - 1;
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

      v10 = *v9;
      v11 = v9[1];
      *v9 = *(v9 - 1);
      *(v9 - 1) = v11;
      *(v9 - 2) = v10;
      v9 -= 2;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1001A5024(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v90 = result;
  v8 = a3[1];
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = &_swiftEmptyArrayStorage;
    while (1)
    {
      v11 = v9;
      v12 = v9 + 1;
      if (v12 >= v8)
      {
        v8 = v12;
      }

      else
      {
        v87 = v10;
        v13 = 16 * v11;
        v14 = v11;
        v15 = *v7 + 16 * v11 + 40;
        v5 = sub_100027068();
        result = StringProtocol.localizedStandardCompare<A>(_:)();
        v16 = result;
        v89 = v14;
        v17 = v14 + 2;
        while (v8 != v17)
        {
          result = StringProtocol.localizedStandardCompare<A>(_:)();
          ++v17;
          v15 += 16;
          if ((v16 == -1) == (result != -1))
          {
            v8 = v17 - 1;
            break;
          }
        }

        v11 = v89;
        if (v16 == -1)
        {
          if (v8 < v89)
          {
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
            return result;
          }

          if (v89 < v8)
          {
            v18 = 0;
            v19 = 16 * v8;
            v20 = v89;
            do
            {
              if (v20 != v8 + v18 - 1)
              {
                v25 = *a3;
                if (!*a3)
                {
                  goto LABEL_124;
                }

                v21 = (v25 + v13);
                v22 = v25 + v19;
                v23 = *v21;
                v24 = v21[1];
                *v21 = *(v22 - 16);
                *(v22 - 16) = v23;
                *(v22 - 8) = v24;
              }

              ++v20;
              --v18;
              v19 -= 16;
              v13 += 16;
            }

            while (v20 < v8 + v18);
          }
        }

        v7 = a3;
        v10 = v87;
      }

      v26 = v7[1];
      if (v8 < v26)
      {
        if (__OFSUB__(v8, v11))
        {
          goto LABEL_116;
        }

        if (v8 - v11 < a4)
        {
          if (__OFADD__(v11, a4))
          {
            goto LABEL_117;
          }

          if (v11 + a4 < v26)
          {
            v26 = v11 + a4;
          }

          if (v26 < v11)
          {
LABEL_118:
            __break(1u);
            goto LABEL_119;
          }

          if (v8 != v26)
          {
            v92 = v26;
            v88 = v10;
            v85 = v6;
            v27 = *v7;
            v5 = sub_100027068();
            v28 = (v27 + 16 * v8);
            v29 = v11 - v8;
            do
            {
              v30 = v29;
              v31 = v28;
              do
              {
                result = StringProtocol.localizedStandardCompare<A>(_:)();
                if (result != -1)
                {
                  break;
                }

                if (!v27)
                {
                  goto LABEL_121;
                }

                v32 = *v31;
                v33 = v31[1];
                *v31 = *(v31 - 1);
                *(v31 - 1) = v33;
                *(v31 - 2) = v32;
                v31 -= 2;
              }

              while (!__CFADD__(v30++, 1));
              ++v8;
              v28 += 2;
              --v29;
            }

            while (v8 != v92);
            v6 = v85;
            v7 = a3;
            v8 = v92;
            v10 = v88;
          }
        }
      }

      if (v8 < v11)
      {
        goto LABEL_115;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_10012DF88(0, *(v10 + 2) + 1, 1, v10);
        v10 = result;
      }

      v36 = *(v10 + 2);
      v35 = *(v10 + 3);
      v37 = v36 + 1;
      if (v36 >= v35 >> 1)
      {
        result = sub_10012DF88((v35 > 1), v36 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 2) = v37;
      v38 = &v10[16 * v36];
      *(v38 + 4) = v11;
      *(v38 + 5) = v8;
      v5 = *v90;
      if (!*v90)
      {
        goto LABEL_125;
      }

      v93 = v8;
      if (v36)
      {
        while (1)
        {
          v39 = v37 - 1;
          if (v37 >= 4)
          {
            break;
          }

          if (v37 == 3)
          {
            v40 = *(v10 + 4);
            v41 = *(v10 + 5);
            v50 = __OFSUB__(v41, v40);
            v42 = v41 - v40;
            v43 = v50;
LABEL_57:
            if (v43)
            {
              goto LABEL_104;
            }

            v56 = &v10[16 * v37];
            v58 = *v56;
            v57 = *(v56 + 1);
            v59 = __OFSUB__(v57, v58);
            v60 = v57 - v58;
            v61 = v59;
            if (v59)
            {
              goto LABEL_107;
            }

            v62 = &v10[16 * v39 + 32];
            v64 = *v62;
            v63 = *(v62 + 1);
            v50 = __OFSUB__(v63, v64);
            v65 = v63 - v64;
            if (v50)
            {
              goto LABEL_110;
            }

            if (__OFADD__(v60, v65))
            {
              goto LABEL_111;
            }

            if (v60 + v65 >= v42)
            {
              if (v42 < v65)
              {
                v39 = v37 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          v66 = &v10[16 * v37];
          v68 = *v66;
          v67 = *(v66 + 1);
          v50 = __OFSUB__(v67, v68);
          v60 = v67 - v68;
          v61 = v50;
LABEL_71:
          if (v61)
          {
            goto LABEL_106;
          }

          v69 = &v10[16 * v39];
          v71 = *(v69 + 4);
          v70 = *(v69 + 5);
          v50 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v50)
          {
            goto LABEL_109;
          }

          if (v72 < v60)
          {
            goto LABEL_3;
          }

LABEL_78:
          v77 = v39 - 1;
          if (v39 - 1 >= v37)
          {
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
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
            goto LABEL_118;
          }

          if (!*v7)
          {
            goto LABEL_122;
          }

          v78 = *&v10[16 * v77 + 32];
          v79 = *&v10[16 * v39 + 40];
          sub_1001A5688((*v7 + 16 * v78), (*v7 + 16 * *&v10[16 * v39 + 32]), (*v7 + 16 * v79), v5);
          if (v6)
          {
          }

          if (v79 < v78)
          {
            goto LABEL_100;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_10012DE90(v10);
          }

          if (v77 >= *(v10 + 2))
          {
            goto LABEL_101;
          }

          v80 = &v10[16 * v77];
          *(v80 + 4) = v78;
          *(v80 + 5) = v79;
          result = sub_10012DE04(v39);
          v37 = *(v10 + 2);
          if (v37 <= 1)
          {
            goto LABEL_3;
          }
        }

        v44 = &v10[16 * v37 + 32];
        v45 = *(v44 - 64);
        v46 = *(v44 - 56);
        v50 = __OFSUB__(v46, v45);
        v47 = v46 - v45;
        if (v50)
        {
          goto LABEL_102;
        }

        v49 = *(v44 - 48);
        v48 = *(v44 - 40);
        v50 = __OFSUB__(v48, v49);
        v42 = v48 - v49;
        v43 = v50;
        if (v50)
        {
          goto LABEL_103;
        }

        v51 = &v10[16 * v37];
        v53 = *v51;
        v52 = *(v51 + 1);
        v50 = __OFSUB__(v52, v53);
        v54 = v52 - v53;
        if (v50)
        {
          goto LABEL_105;
        }

        v50 = __OFADD__(v42, v54);
        v55 = v42 + v54;
        if (v50)
        {
          goto LABEL_108;
        }

        if (v55 >= v47)
        {
          v73 = &v10[16 * v39 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v50 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v50)
          {
            goto LABEL_112;
          }

          if (v42 < v76)
          {
            v39 = v37 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_57;
      }

LABEL_3:
      v8 = v7[1];
      v9 = v93;
      if (v93 >= v8)
      {
        goto LABEL_88;
      }
    }
  }

  v10 = &_swiftEmptyArrayStorage;
LABEL_88:
  v5 = v10;
  v10 = *v90;
  if (!*v90)
  {
    goto LABEL_126;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_119:
    result = sub_10012DE90(v5);
    v5 = result;
  }

  v81 = *(v5 + 16);
  if (v81 >= 2)
  {
    while (*v7)
    {
      v82 = *(v5 + 16 * v81);
      v83 = *(v5 + 16 * (v81 - 1) + 40);
      sub_1001A5688((*v7 + 16 * v82), (*v7 + 16 * *(v5 + 16 * (v81 - 1) + 32)), (*v7 + 16 * v83), v10);
      if (v6)
      {
      }

      if (v83 < v82)
      {
        goto LABEL_113;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_10012DE90(v5);
      }

      if (v81 - 2 >= *(v5 + 16))
      {
        goto LABEL_114;
      }

      v84 = (v5 + 16 * v81);
      *v84 = v82;
      v84[1] = v83;
      result = sub_10012DE04(v81 - 1);
      v81 = *(v5 + 16);
      if (v81 <= 1)
      {
      }
    }

    goto LABEL_123;
  }
}

uint64_t sub_1001A5688(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 15;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 4;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 15;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 4;
  if (v10 >= v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v13] <= a4)
    {
      memmove(a4, __dst, 16 * v13);
    }

    v14 = &v4[16 * v13];
    if (v11 >= 16 && v6 > v7)
    {
      sub_100027068();
LABEL_27:
      v20 = v6 - 16;
      v5 -= 16;
      v17 = v14;
      do
      {
        v18 = v5 + 16;
        v17 -= 16;
        if (StringProtocol.localizedStandardCompare<A>(_:)() == -1)
        {
          if (v18 != v6)
          {
            *v5 = *v20;
          }

          if (v14 <= v4 || (v6 -= 16, v20 <= v7))
          {
            v6 = v20;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        if (v18 != v14)
        {
          *v5 = *v17;
        }

        v5 -= 16;
        v14 = v17;
      }

      while (v17 > v4);
      v14 = v17;
    }
  }

  else
  {
    if (a4 != __src || &__src[16 * v10] <= a4)
    {
      memmove(a4, __src, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 >= 16 && v6 < v5)
    {
      sub_100027068();
      while (StringProtocol.localizedStandardCompare<A>(_:)() == -1)
      {
        v15 = v6;
        v16 = v7 == v6;
        v6 += 16;
        if (!v16)
        {
          goto LABEL_14;
        }

LABEL_15:
        v7 += 16;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_37;
        }
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (v16)
      {
        goto LABEL_15;
      }

LABEL_14:
      *v7 = *v15;
      goto LABEL_15;
    }

LABEL_37:
    v6 = v7;
  }

LABEL_39:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_1001A5918()
{
  swift_getKeyPath();
  sub_1001A3344();

  return *(v0 + *(*v0 + 184));
}

__n128 sub_1001A59A8@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1001A3344();

  v3 = v1 + *(*v1 + 248);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
  result = *(v3 + 32);
  v6 = *(v3 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_1001A5A54(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *v1;
  v6 = *(*v1 + 88);
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - v9;
  v11 = v4[20];
  swift_beginAccess();
  (*(v8 + 16))(v10, v2 + v11, v7);
  v20 = v4[10];
  v19 = *(v5 + 6);
  v18 = v4[14];
  v12 = *(v5 + 15);
  v13 = v4[17];
  v17 = v12;
  v21 = *(*(*(v12 + 8) + 8) + 8);
  swift_getWitnessTable();
  LOBYTE(v4) = dispatch thunk of static Equatable.== infix(_:_:)();
  v14 = (*(v8 + 8))(v10, v7);
  if (v4)
  {
    swift_beginAccess();
    (*(v8 + 24))(v2 + v11, a1, v7);
    return swift_endAccess();
  }

  else
  {
    __chkstk_darwin(v14);
    *(&v17 - 8) = v20;
    *(&v17 - 7) = v6;
    *(&v17 - 3) = v19;
    *(&v17 - 4) = v18;
    *(&v17 - 24) = v17;
    *(&v17 - 1) = v13;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v17 - 2) = v2;
    *(&v17 - 1) = a1;
    sub_1001A34AC();
  }
}

uint64_t sub_1001A5D5C()
{
  swift_getKeyPath();
  sub_1001A3344();

  return *(v0 + *(*v0 + 152));
}

uint64_t sub_1001A5DF0(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *v1;
  v6 = *(*v1 + 88);
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - v9;
  v11 = v4[18];
  swift_beginAccess();
  (*(v8 + 16))(v10, v2 + v11, v7);
  v20 = v4[10];
  v19 = *(v5 + 6);
  v18 = v4[14];
  v12 = *(v5 + 15);
  v13 = v4[17];
  v17 = v12;
  v21 = *(*(*(v12 + 8) + 8) + 8);
  swift_getWitnessTable();
  LOBYTE(v4) = dispatch thunk of static Equatable.== infix(_:_:)();
  v14 = (*(v8 + 8))(v10, v7);
  if (v4)
  {
    swift_beginAccess();
    (*(v8 + 24))(v2 + v11, a1, v7);
    return swift_endAccess();
  }

  else
  {
    __chkstk_darwin(v14);
    *(&v17 - 8) = v20;
    *(&v17 - 7) = v6;
    *(&v17 - 3) = v19;
    *(&v17 - 4) = v18;
    *(&v17 - 24) = v17;
    *(&v17 - 1) = v13;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v17 - 2) = v2;
    *(&v17 - 1) = a1;
    sub_1001A34AC();
  }
}

uint64_t sub_1001A60F8(uint64_t a1)
{
  v2 = v1;
  v22 = a1;
  v3 = *v1;
  v4 = *v1;
  v5 = *(*v1 + 136);
  v6 = *(*v1 + 104);
  swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  v11 = v3[24];
  swift_beginAccess();
  (*(v8 + 16))(v10, v2 + v11, v7);
  v21 = *(v4 + 5);
  v19 = v3[12];
  v20 = *(v4 + 7);
  v12 = v3[16];
  v13 = v22;
  v23 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  swift_getWitnessTable();
  LOBYTE(v3) = dispatch thunk of static Equatable.== infix(_:_:)();
  v14 = (*(v8 + 8))(v10, v7);
  if (v3)
  {
    swift_beginAccess();
    (*(v8 + 24))(v2 + v11, v13, v7);
    return swift_endAccess();
  }

  else
  {
    __chkstk_darwin(v14);
    v16 = v20;
    *(&v18 - 4) = v21;
    *(&v18 - 6) = v19;
    *(&v18 - 5) = v6;
    *(&v18 - 2) = v16;
    *(&v18 - 2) = v12;
    *(&v18 - 1) = v5;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v18 - 2) = v2;
    *(&v18 - 1) = v13;
    sub_1001A34AC();
  }
}

__n128 sub_1001A6480(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_1001A64B0@<X0>(_OWORD *a1@<X8>)
{
  sub_1001A59A8(v6);
  v2 = v6[1];
  *a1 = v6[0];
  a1[1] = v2;
  v3 = v6[3];
  a1[2] = v6[2];
  a1[3] = v3;
  return sub_10008319C(v6, &v5);
}

uint64_t sub_1001A6500(_OWORD *a1)
{
  v1 = a1[1];
  v5[0] = *a1;
  v5[1] = v1;
  v2 = a1[3];
  v5[2] = a1[2];
  v5[3] = v2;
  sub_10008319C(v5, &v4);
  return sub_1001A3B14(v5);
}

uint64_t sub_1001A65D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001A65F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1001A171C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1001A6678@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1001A5918();
}

uint64_t sub_1001A66EC()
{
  *(*(v0 + 16) + *(**(v0 + 16) + 184)) = *(v0 + 24);
}

uint64_t sub_1001A67BC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1001A5D5C();
  *a1 = v2;
  a1[1] = v3;

  return sub_1000E4108(v2, v3);
}

uint64_t sub_1001A67F8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1000E4108(*a1, v2);
  return sub_1001A3584(v1, v2);
}

uint64_t sub_1001A6848()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = (v0[2] + *(*v0[2] + 152));
  v4 = *v3;
  v5 = v3[1];
  *v3 = v1;
  v3[1] = v2;
  sub_1000E4108(v1, v2);
  return sub_10008324C(v4, v5);
}

uint64_t sub_1001A68D0()
{
  v0 = type metadata accessor for Logger();
  sub_1000758A8(v0, qword_100230610);
  sub_10001FDF4(v0, qword_100230610);
  return Logger.init(subsystem:category:)();
}

unint64_t sub_1001A6944()
{
  result = qword_10021CEA0;
  if (!qword_10021CEA0)
  {
    type metadata accessor for Music.Artist();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021CEA0);
  }

  return result;
}

uint64_t sub_1001A699C(uint64_t a1, uint64_t a2)
{
  v11 = (*(a2 + 40))();
  v10[2] = a1;
  v10[3] = a2;
  swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  v7 = sub_1001A6D9C(sub_1001A72D4, v10, v4, &type metadata for String, &type metadata for Never, WitnessTable, &protocol witness table for Never, v6);

  v11 = v7;
  sub_100009F70(&qword_100219F08);
  sub_10000D1EC(&qword_100219F10, &qword_100219F08);
  v8 = BidirectionalCollection<>.joined(separator:)();

  return v8;
}

uint64_t sub_1001A6B08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v15 - v9;
  v15[1] = (*(a2 + 40))(a1, a2);
  type metadata accessor for Array();
  swift_getWitnessTable();
  Collection.first.getter();

  v11 = *(AssociatedTypeWitness - 8);
  if ((*(v11 + 48))(v10, 1, AssociatedTypeWitness) == 1)
  {
    (*(v8 + 8))(v10, v7);
    swift_getAssociatedConformanceWitness();
    v12 = swift_getAssociatedTypeWitness();
    return (*(*(v12 - 8) + 56))(a3, 1, 1, v12);
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 56))(AssociatedTypeWitness, AssociatedConformanceWitness);
    return (*(v11 + 8))(v10, AssociatedTypeWitness);
  }
}

uint64_t sub_1001A6D9C(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  __chkstk_darwin(a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = __chkstk_darwin(AssociatedTypeWitness);
  v14 = &v27 - v13;
  __chkstk_darwin(v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  __chkstk_darwin(v16);
  v18 = &v27 - v17;
  v19 = dispatch thunk of Collection.count.getter();
  if (!v19)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v41 = v19;
  v45 = ContiguousArray.init()();
  v32 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v41);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = dispatch thunk of Collection.subscript.read();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1001A71BC@<X0>(uint64_t *a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v3 = *(AssociatedConformanceWitness + 48);
  v4 = swift_checkMetadataState();
  result = v3(v4, AssociatedConformanceWitness);
  *a1 = result;
  a1[1] = v6;
  return result;
}

uint64_t sub_1001A7280(uint64_t a1)
{
  result = sub_10000D1EC(&qword_100223340, &qword_10021B1F8);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1001A72F8()
{
  result = qword_100223348;
  if (!qword_100223348)
  {
    type metadata accessor for Sport.Competitor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100223348);
  }

  return result;
}

uint64_t sub_1001A7350(uint64_t a1)
{
  *(a1 + 8) = sub_1001A73B8(&qword_100223398);
  result = sub_1001A73B8(&qword_1002233A0);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1001A73B8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10000B3DC(&qword_10021C4D8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001A7444(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_100230528 == -1)
  {
    if (qword_100230530)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_1001A790C();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_100230530)
    {
      return _availability_version_check();
    }
  }

  if (qword_100230520 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_1001A7924();
    a3 = v10;
    a4 = v9;
    v8 = dword_100230510 < v11;
    if (dword_100230510 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_100230514 > a3)
      {
        return 1;
      }

      if (dword_100230514 >= a3)
      {
        return dword_100230518 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_100230510 < a2;
  if (dword_100230510 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_1001A75D8(uint64_t result)
{
  v1 = qword_100230530;
  if (qword_100230530)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_100230530 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_100230510, &dword_100230514, &dword_100230518);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

Swift::String_optional __swiftcall Locale.localizedString(forRegionCode:)(Swift::String forRegionCode)
{
  v1 = Locale.localizedString(forRegionCode:)(forRegionCode._countAndFlagsBits, forRegionCode._object);
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t Playlist.id.getter()
{
  return Playlist.id.getter();
}

{
  return Playlist.id.getter();
}

uint64_t type metadata accessor for Playlist()
{
  return type metadata accessor for Playlist();
}

{
  return type metadata accessor for Playlist();
}

uint64_t View.buttonStyle<A>(_:)()
{
  return View.buttonStyle<A>(_:)();
}

{
  return View.buttonStyle<A>(_:)();
}

uint64_t View.onChange<A>(of:initial:_:)()
{
  return View.onChange<A>(of:initial:_:)();
}

{
  return View.onChange<A>(of:initial:_:)();
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

CMTime __swiftcall CMTime.init(value:timescale:)(Swift::Int64 value, Swift::Int32 timescale)
{
  v2 = CMTime.init(value:timescale:)(value, *&timescale);
  result.epoch = v4;
  result.timescale = v3;
  result.flags = HIDWORD(v3);
  result.value = v2;
  return result;
}