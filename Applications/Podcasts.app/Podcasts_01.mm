void *sub_100021D60(uint64_t a1)
{
  v2 = v1;
  v2[3] = 0;
  swift_unknownObjectWeakInit();
  v2[4] = a1;
  sub_100168088(&unk_100578420);

  BaseObjectGraph.inject<A>(_:)();
  sub_1000109E4(v5, (v2 + 5));
  type metadata accessor for PlaybackController();
  BaseObjectGraph.inject<A>(_:)();
  v2[15] = *&v5[0];
  sub_100168088(&qword_100573DB8);
  BaseObjectGraph.inject<A>(_:)();
  sub_1000109E4(v5, (v2 + 10));
  v2[16] = [objc_allocWithZone(PFCoreAnalyticsChannel) init];
  return v2;
}

id sub_100021E4C()
{
  v1 = OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager____lazy_storage___restoreQueue;
  v2 = *(v0 + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager____lazy_storage___restoreQueue);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager____lazy_storage___restoreQueue);
  }

  else
  {
    v4 = [objc_allocWithZone(NSOperationQueue) init];
    [v4 setMaxConcurrentOperationCount:1];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_100021ED4()
{
  v1 = *&v0[OBJC_IVAR____TtC8Podcasts25SyncDownloadJobsOperation_tasks];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v1 + 32;
    while (v3 < *(v1 + 16))
    {
      sub_100004428(v4, v92);
      sub_10021A6FC(v92);
      ++v3;
      sub_100004590(v92);
      v4 += 40;
      if (v2 == v3)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_10;
  }

LABEL_5:
  v5 = *&v0[OBJC_IVAR____TtC8Podcasts25SyncDownloadJobsOperation_jobStorage];
  v6 = *&v0[OBJC_IVAR____TtC8Podcasts25SyncDownloadJobsOperation_jobStorage + 8];
  v7 = swift_allocObject();
  *(v7 + 16) = v0;
  sub_100009F1C(0, &qword_1005748A0);
  swift_unknownObjectRetain();
  v8 = v0;
  v9 = static OS_os_log.downloads.getter();
  v10 = sub_100168088(&qword_100578178);
  v11 = objc_allocWithZone(v10);
  v12 = &v11[*((swift_isaMask & *v11) + 0x198)];
  *v12 = 0;
  v12[8] = 2;
  v13 = &v11[*((swift_isaMask & *v11) + 0x1A8)];
  *v13 = sub_100030AD8;
  v13[1] = v7;
  v14 = &v11[*((swift_isaMask & *v11) + 0x1A0)];
  *v14 = v5;
  *(v14 + 1) = v6;
  *&v11[*((swift_isaMask & *v11) + 0x1B0)] = v9;
  v91.receiver = v11;
  v91.super_class = v10;
  swift_unknownObjectRetain();
  v15 = objc_msgSendSuper2(&v91, "init");
  v16 = swift_allocObject();
  *(v16 + 16) = v8;
  v17 = v8;
  v18 = static OS_os_log.downloads.getter();
  v19 = sub_100168088(&qword_100578180);
  v20 = objc_allocWithZone(v19);
  v21 = &v20[*((swift_isaMask & *v20) + 0x198)];
  *v21 = 0;
  v21[8] = 2;
  v22 = &v20[*((swift_isaMask & *v20) + 0x1A8)];
  *v22 = sub_10003CDF8;
  v22[1] = v16;
  v23 = &v20[*((swift_isaMask & *v20) + 0x1A0)];
  *v23 = v5;
  *(v23 + 1) = v6;
  *&v20[*((swift_isaMask & *v20) + 0x1B0)] = v18;
  v90.receiver = v20;
  v90.super_class = v19;
  v24 = objc_msgSendSuper2(&v90, "init");
  v25 = swift_allocObject();
  *(v25 + 16) = v17;
  v26 = sub_100168088(&qword_100578188);
  v27 = objc_allocWithZone(v26);
  v28 = &v27[*((swift_isaMask & *v27) + 0x180)];
  *v28 = 0;
  v28[8] = 2;
  v29 = &v27[*((swift_isaMask & *v27) + 0x188)];
  *v29 = sub_10003C508;
  v29[1] = v25;
  v89.receiver = v27;
  v89.super_class = v26;
  v30 = v17;
  v84.receiver = objc_msgSendSuper2(&v89, "init");
  v31 = swift_allocObject();
  *(v31 + 16) = v30;
  v32 = sub_100168088(&qword_100578190);
  v33 = objc_allocWithZone(v32);
  v34 = &v33[*((swift_isaMask & *v33) + 0x180)];
  *v34 = 0;
  v34[8] = 2;
  v35 = &v33[*((swift_isaMask & *v33) + 0x188)];
  *v35 = sub_100023670;
  *(v35 + 1) = v31;
  v88.receiver = v33;
  v88.super_class = v32;
  v82 = v30;
  v83 = objc_msgSendSuper2(&v88, "init");
  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v37 = &v15[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  v38 = *&v15[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  *v37 = sub_100031494;
  v37[1] = v36;

  sub_1000112B4(v38);

  ObjectType = swift_getObjectType();
  v40 = swift_conformsToProtocol2();
  if (!v40)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v41 = v40;
  v42 = swift_allocObject();
  *(v42 + 24) = v41;
  swift_unknownObjectWeakInit();
  v43 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v44 = swift_allocObject();
  *(v44 + 16) = v43;
  *(v44 + 24) = v42;
  v45 = *(v41 + 72);
  v46 = v15;

  v45(sub_1000319D0, v44, ObjectType, v41);

  v87.receiver = v24;
  v87.super_class = type metadata accessor for BaseOperation();
  v84.super_class = v87.super_class;
  objc_msgSendSuper2(&v87, "addDependency:", v46);

  v81 = v46;
  v47 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v48 = &v24[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  v49 = *&v24[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  *v48 = sub_10003B660;
  v48[1] = v47;

  sub_1000112B4(v49);

  v50 = swift_getObjectType();
  v51 = swift_conformsToProtocol2();
  if (!v51)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v52 = v51;
  v53 = swift_allocObject();
  *(v53 + 24) = v52;
  swift_unknownObjectWeakInit();
  v54 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v55 = swift_allocObject();
  *(v55 + 16) = v54;
  *(v55 + 24) = v53;
  v56 = *(v52 + 72);
  v57 = v24;

  v56(sub_10003B6A0, v55, v50, v52);

  v86 = v84;
  objc_msgSendSuper2(&v86, "addDependency:", v57);

  v58 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v59 = (v84.receiver + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
  v60 = *(v84.receiver + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
  *v59 = sub_10003B660;
  v59[1] = v58;

  sub_1000112B4(v60);

  v61 = swift_getObjectType();
  v62 = swift_conformsToProtocol2();
  if (v62)
  {
    v63 = v62;
    v64 = swift_allocObject();
    *(v64 + 24) = v63;
    swift_unknownObjectWeakInit();
    v65 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v66 = swift_allocObject();
    *(v66 + 16) = v65;
    *(v66 + 24) = v64;
    v67 = *(v63 + 72);
    v68 = v84.receiver;
    v69 = v83;

    v67(sub_10003B6A0, v66, v61, v63);

    v85.receiver = v69;
    v85.super_class = v84.super_class;
    objc_msgSendSuper2(&v85, "addDependency:", v68);

    v70 = swift_allocObject();
    *(v70 + 16) = v82;
    v71 = &v69[OBJC_IVAR____TtC8Podcasts13BaseOperation_onError];
    v72 = *&v69[OBJC_IVAR____TtC8Podcasts13BaseOperation_onError];
    *v71 = sub_10021B4D8;
    v71[1] = v70;
    v73 = v82;
    sub_1000112B4(v72);

    v74 = *&v73[OBJC_IVAR____TtC8Podcasts25SyncDownloadJobsOperation_operationQueue];
    sub_100168088(&unk_100574680);
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_100402D70;
    *(v75 + 32) = v81;
    *(v75 + 40) = v57;
    *(v75 + 48) = v68;
    *(v75 + 56) = v69;
    sub_100009F1C(0, &unk_10057A6A0);
    v76 = v81;
    v77 = v57;
    v78 = v68;
    v79 = v69;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v74 addOperations:isa waitUntilFinished:0];

    return;
  }

LABEL_12:
  __break(1u);

  sub_100004590(v92);
  __break(1u);
}

uint64_t sub_100022914()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002294C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100022984()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t type metadata accessor for JobStorageError()
{
  result = qword_100577C20;
  if (!qword_100577C20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100022A30()
{
  sub_100022AAC();
  if (v0 <= 0x3F)
  {
    type metadata accessor for DownloadJob(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100022AAC()
{
  if (!qword_100577C30)
  {
    sub_100168310(&qword_100575C50);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100577C30);
    }
  }
}

uint64_t sub_100022B28()
{
  result = type metadata accessor for OperationResult();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_100022C18()
{
  result = qword_10057EED0;
  if (!qword_10057EED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057EED0);
  }

  return result;
}

char *sub_100022C90(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100022DC0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100022DC0(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void *sub_100022DC0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100168088(&qword_10057CE38);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_100022E34(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), void (*a6)(uint64_t, uint64_t))
{
  sub_10001B944(a1, v18);
  sub_100168088(a3);
  swift_dynamicCast();
  v9 = v20;
  if (v20 >= 2u)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      [Strong cancel];
      goto LABEL_6;
    }
  }

  else
  {
    v10 = v19;
    swift_beginAccess();
    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      v12 = v11;
      v13 = v11 + *((swift_isaMask & *v11) + 0x198);
      swift_beginAccess();
      v14 = *v13;
      *v13 = v10;
      v15 = v13[8];
      v13[8] = v9;
      a5(v10, v9);
      a6(v14, v15);
LABEL_6:
    }
  }

  return (a6)(v19, v20);
}

uint64_t sub_100023004(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), void (*a6)(uint64_t, uint64_t))
{
  sub_10001B944(a1, v18);
  sub_100168088(a3);
  swift_dynamicCast();
  v9 = v20;
  if (v20 >= 2u)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      [Strong cancel];
      goto LABEL_6;
    }
  }

  else
  {
    v10 = v19;
    swift_beginAccess();
    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      v12 = v11;
      v13 = v11 + *((swift_isaMask & *v11) + 0x180);
      swift_beginAccess();
      v14 = *v13;
      *v13 = v10;
      v15 = v13[8];
      v13[8] = v9;
      a5(v10, v9);
      a6(v14, v15);
LABEL_6:
    }
  }

  return (a6)(v19, v20);
}

uint64_t sub_100023170()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *v0;
  v4 = swift_isaMask;
  v17 = *((swift_isaMask & v3) + 0x170);
  v5 = *(v17 - 8);
  __chkstk_darwin(ObjectType);
  v7 = &v16 - v6;
  v18 = type metadata accessor for OperationResult();
  v8 = *(v18 - 8);
  v9 = __chkstk_darwin(v18);
  __chkstk_darwin(v9);
  v11 = &v16 - v10;
  v12 = *(v1 + *((v4 & v3) + 0x188));
  WitnessTable = swift_getWitnessTable();
  sub_100014CBC(ObjectType, WitnessTable, v7);
  v12(v7);
  (*(v5 + 8))(v7, v17);
  v14 = swift_getWitnessTable();
  sub_10002DF44(v11, ObjectType, v14, &off_1004F25B8, &off_1004F2598);
  return (*(v8 + 8))(v11, v18);
}

id sub_100023468()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for NSUserDefaults.Name();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = &v0[OBJC_IVAR____TtC8Podcasts17MenuBarController_menuBarPresenter];
  v8 = type metadata accessor for GlobalActionController();
  *v7 = 0;
  *(v7 + 1) = 0;
  v9 = objc_allocWithZone(v8);

  *&v1[OBJC_IVAR____TtC8Podcasts17MenuBarController_globalActionController] = sub_1000236B0(v10);
  sub_100009F1C(0, &qword_100579A00);
  (*(v4 + 104))(v6, enum case for NSUserDefaults.Name.shared(_:), v3);
  sub_100024384(&unk_10057E7B0, &qword_100579A00);
  BaseObjectGraph.inject<A>(_:named:)();
  (*(v4 + 8))(v6, v3);
  *&v1[OBJC_IVAR____TtC8Podcasts17MenuBarController_userDefaults] = v15;
  v11 = [objc_opt_self() mainSystem];
  [v11 setNeedsRebuild];

  v14.receiver = v1;
  v14.super_class = ObjectType;
  return objc_msgSendSuper2(&v14, "init");
}

id sub_1000236B0(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC8PodcastsP33_1EBA7FB1085F92D3987B8EDF2EAB73D122GlobalActionController_debugActionsController;
  *&v2[v5] = [objc_allocWithZone(type metadata accessor for DebugActionsController()) init];
  *&v2[OBJC_IVAR____TtC8PodcastsP33_1EBA7FB1085F92D3987B8EDF2EAB73D122GlobalActionController_objectGraph] = a1;
  sub_100168088(&qword_10057E670);

  BaseObjectGraph.inject<A>(_:)();
  sub_1000109E4(v18, &v2[OBJC_IVAR____TtC8PodcastsP33_1EBA7FB1085F92D3987B8EDF2EAB73D122GlobalActionController_libraryActionController]);
  sub_100168088(&unk_100575CF0);
  BaseObjectGraph.inject<A>(_:)();
  *&v2[OBJC_IVAR____TtC8PodcastsP33_1EBA7FB1085F92D3987B8EDF2EAB73D122GlobalActionController_libraryDataProvider] = v18[0];
  sub_100168088(&unk_10057AB00);
  BaseObjectGraph.inject<A>(_:)();
  sub_1000109E4(v18, &v2[OBJC_IVAR____TtC8PodcastsP33_1EBA7FB1085F92D3987B8EDF2EAB73D122GlobalActionController_episodeController]);
  sub_100168088(&qword_10057ABC0);
  BaseObjectGraph.inject<A>(_:)();
  *&v2[OBJC_IVAR____TtC8PodcastsP33_1EBA7FB1085F92D3987B8EDF2EAB73D122GlobalActionController_syncController] = *&v18[0];
  type metadata accessor for PlaybackController();
  BaseObjectGraph.inject<A>(_:)();
  *&v2[OBJC_IVAR____TtC8PodcastsP33_1EBA7FB1085F92D3987B8EDF2EAB73D122GlobalActionController_playbackController] = *&v18[0];
  v17.receiver = v2;
  v17.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v17, "init");
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 defaultCenter];
  [v9 addObserver:v8 selector:"didChangeStoreAccount:" name:ACDAccountStoreDidChangeNotification object:0];

  v10 = v8;
  v11 = String._bridgeToObjectiveC()();
  [v9 addObserver:v10 selector:"mainWindowDidChangeKey:" name:v11 object:0];

  v12 = v10;
  v13 = String._bridgeToObjectiveC()();
  [v9 addObserver:v12 selector:"mainWindowDidChangeKey:" name:v13 object:0];

  v14 = v12;
  v15 = static NSNotificationName.pfPerShowSettingsChanged.getter();
  [v9 addObserver:v14 selector:"perShowSettingsDidChange:" name:v15 object:0];

  return v14;
}

uint64_t sub_10002398C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v37 = a3;
  v6 = type metadata accessor for DownloadJob(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = static os_log_type_t.default.getter();
  v33 = sub_100009F1C(0, &qword_1005748A0);
  v12 = static OS_os_log.downloads.getter();
  v32 = v11;
  v13 = os_log_type_enabled(v12, v11);
  v31[1] = v6;
  if (v13)
  {

    v14 = swift_slowAlloc();
    v31[0] = swift_slowAlloc();
    v34 = v31[0];
    *v14 = 134349314;
    *(v14 + 4) = *(v10 + 16);

    *(v14 + 12) = 2082;
    v15 = Array.description.getter();
    v17 = sub_1000153E0(v15, v16, &v34);

    *(v14 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v12, v32, "%{public}ld jobs retreived from storage %{public}s", v14, 0x16u);
    sub_100004590(v31[0]);
  }

  v18 = &_swiftEmptyDictionarySingleton;
  v34 = &_swiftEmptyDictionarySingleton;
  v19 = *(v10 + 16);
  if (v19)
  {
    v20 = 0;
    while (v20 < *(v10 + 16))
    {
      sub_1001BE270(v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v20, v9);
      sub_10021B000(&v34, v9);
      if (v3)
      {
        goto LABEL_15;
      }

      ++v20;
      sub_1001BE660(v9);
      if (v19 == v20)
      {
        v18 = v34;
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_15:

    sub_1001BE660(v9);

    __break(1u);
  }

  else
  {
LABEL_9:
    v21 = static os_log_type_t.default.getter();
    v22 = static OS_os_log.downloads.getter();
    if (os_log_type_enabled(v22, v21))
    {

      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v34 = v24;
      *v23 = 134349314;
      *(v23 + 4) = v18[2];

      *(v23 + 12) = 2082;
      sub_100168088(&qword_100574900);
      sub_100023DA8();
      v25 = Dictionary.description.getter();
      v27 = sub_1000153E0(v25, v26, &v34);

      *(v23 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v22, v21, "Sync completed. Number of jobs running: %{public}ld. %{public}s", v23, 0x16u);
      sub_100004590(v24);
    }

    v28 = *(a2 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
    if (v28)
    {
      v36 = sub_100168088(&qword_100578198);
      v34 = v18;
      v35 = 0;

      sub_100013CB4(v28);
      v28(&v34);
      sub_1000112B4(v28);
      sub_100004590(&v34);
    }

    sub_10003172C();

    v30 = v37;
    *v37 = 0;
    *(v30 + 8) = 0;
  }

  return result;
}

unint64_t sub_100023DA8()
{
  result = qword_1005781A0;
  if (!qword_1005781A0)
  {
    type metadata accessor for DownloadJob(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005781A0);
  }

  return result;
}

uint64_t sub_100023E24@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = sub_100168088(&unk_100581800);
  v6 = __chkstk_darwin(v49);
  v47 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v48 = &v41 - v8;
  v9 = *a1;
  v50 = a2;
  swift_unknownObjectWeakInit();
  v10 = *(v9 + 16);
  v11 = &_swiftEmptyArrayStorage;
  if (v10)
  {
    v42 = a3;
    v53 = &_swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v12 = v9 + 64;
    v13 = _HashTable.startBucket.getter();
    v14 = 0;
    v11 = *(v9 + 36);
    v43 = v9 + 72;
    v44 = v11;
    v45 = v9 + 64;
    v46 = v10;
    while (1)
    {
      if (v13 < 0 || v13 >= 1 << *(v9 + 32))
      {
        goto LABEL_40;
      }

      v16 = v13 >> 6;
      a3 = 1 << v13;
      if ((*(v12 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
      {
        break;
      }

      if (v11 != *(v9 + 36))
      {
        goto LABEL_42;
      }

      v51 = v14;
      v17 = v49;
      v18 = *(v49 + 48);
      v19 = *(v9 + 48);
      v20 = type metadata accessor for DownloadJob(0);
      v11 = v48;
      sub_1003711F4(v19 + *(*(v20 - 8) + 72) * v13, v48, type metadata accessor for DownloadJob);
      sub_100004428(*(v9 + 56) + 40 * v13, v11 + v18);
      v21 = v9;
      v22 = v47;
      sub_100370EAC(v11, v47, type metadata accessor for DownloadJob);
      v23 = *(v17 + 48);
      sub_1000109E4((v11 + v18), v22 + v23);
      sub_10035E75C(v22, v22 + v23);
      v24 = v22;
      v9 = v21;
      sub_100009104(v24, &unk_100581800);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v15 = 1 << *(v21 + 32);
      if (v13 >= v15)
      {
        goto LABEL_43;
      }

      v12 = v45;
      v25 = v46;
      v26 = *(v45 + 8 * v16);
      if ((v26 & a3) == 0)
      {
        goto LABEL_44;
      }

      v11 = v44;
      if (v44 != *(v9 + 36))
      {
        goto LABEL_45;
      }

      v27 = v26 & (-2 << (v13 & 0x3F));
      if (v27)
      {
        v15 = __clz(__rbit64(v27)) | v13 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v28 = v16 << 6;
        v29 = v16 + 1;
        v30 = (v43 + 8 * v16);
        while (v29 < (v15 + 63) >> 6)
        {
          v32 = *v30++;
          v31 = v32;
          v28 += 64;
          ++v29;
          if (v32)
          {
            sub_100252820(v13, v44, 0);
            v15 = __clz(__rbit64(v31)) + v28;
            goto LABEL_4;
          }
        }

        sub_100252820(v13, v44, 0);
      }

LABEL_4:
      v14 = v51 + 1;
      v13 = v15;
      if (v51 + 1 == v25)
      {
        v33 = v53;
        a3 = v42;
        v11 = &_swiftEmptyArrayStorage;
        goto LABEL_20;
      }
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v33 = &_swiftEmptyArrayStorage;
LABEL_20:
  swift_unknownObjectWeakDestroy();
  v54 = &_swiftEmptyArrayStorage;
  v34 = v33[2];
  if (v34)
  {
    for (i = 0; i != v34; ++i)
    {
      if (i >= v33[2])
      {
        goto LABEL_39;
      }

      v53 = v33[i + 4];

      sub_10035F790(&v53, v50, &v52);

      if (v52)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v11 = v54;
      }
    }
  }

  swift_unknownObjectWeakInit();
  if (v11 >> 62)
  {
LABEL_47:
    v36 = _CocoaArrayWrapper.endIndex.getter();
    if (!v36)
    {
      goto LABEL_48;
    }

LABEL_30:
    v37 = 0;
    while (1)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v39 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          goto LABEL_38;
        }
      }

      else
      {
        if (v37 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_46;
        }

        v38 = *(v11 + 8 * v37 + 32);

        v39 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }
      }

      v53 = v38;
      sub_10035FE1C(&v53, &v54);

      ++v37;
      if (v39 == v36)
      {
        goto LABEL_48;
      }
    }
  }

  v36 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v36)
  {
    goto LABEL_30;
  }

LABEL_48:

  result = swift_unknownObjectWeakDestroy();
  *a3 = 0;
  *(a3 + 8) = 0;
  return result;
}

uint64_t sub_100024384(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100009F1C(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000243C8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void, void), uint64_t a6)
{
  v11 = 0xD00000000000002DLL;
  v43 = type metadata accessor for Logger();
  v12 = *(v43 - 8);
  __chkstk_darwin(v43);
  v14 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && ((v16 = Strong, v17 = *sub_1000044A0(a4, a4[3]), v41[1] = a6, v42 = a5, v17 > 1) ? (v17 != 2 ? (v18 = "ts.downloads.episodes.headers", v11 = 0xD00000000000002FLL) : (v18 = "ts.downloads.episodes.restore")) : v17 ? (v18 = "sodes.userInitiated") : (v11 = 0xD000000000000033, v18 = "bytes"), v19 = v18 | 0x8000000000000000, v20 = *&v16[OBJC_IVAR____TtC8Podcasts23EpisodeDownloadsManager_accessQueue], v21 = swift_allocObject(), v21[2] = v16, v21[3] = v11, v21[4] = v19, v21[5] = a1, v21[6] = a2, v22 = swift_allocObject(), *(v22 + 16) = sub_10002D9B0, *(v22 + 24) = v21, v48 = sub_10002D7F0, v49 = v22, aBlock[0] = _NSConcreteStackBlock, aBlock[1] = 1107296256, aBlock[2] = sub_10002D904, v47 = &unk_1004F10C0, v23 = _Block_copy(aBlock), swift_unknownObjectRetain_n(), v24 = v16, , , dispatch_sync(v20, v23), swift_unknownObjectRelease(), _Block_release(v23), LOBYTE(v23) = swift_isEscapingClosureAtFileLocation(), v24, , result = , a5 = v42, (v23 & 1) != 0))
  {
    __break(1u);
  }

  else
  {
    static Logger.downloads.getter();
    sub_100004428(a4, aBlock);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v45 = v29;
      *v28 = 136446210;
      v30 = *sub_1000044A0(aBlock, v47);
      v31 = 0xD000000000000033;
      v32 = "bytes";
      v33 = "ts.downloads.episodes.restore";
      v34 = 0xD00000000000002FLL;
      if (v30 == 2)
      {
        v34 = 0xD00000000000002DLL;
      }

      else
      {
        v33 = "ts.downloads.episodes.headers";
      }

      if (v30)
      {
        v31 = 0xD00000000000002DLL;
        v32 = "sodes.userInitiated";
      }

      if (v30 <= 1)
      {
        v35 = v31;
      }

      else
      {
        v35 = v34;
      }

      if (v30 <= 1)
      {
        v36 = v32;
      }

      else
      {
        v36 = v33;
      }

      strcpy(v44, "ConfigType: ");
      BYTE5(v44[1]) = 0;
      HIWORD(v44[1]) = -5120;
      v37 = v36 | 0x8000000000000000;
      String.append(_:)(*&v35);

      v38 = v44[0];
      v39 = v44[1];
      sub_100004590(aBlock);
      v40 = sub_1000153E0(v38, v39, &v45);

      *(v28 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v26, v27, "Created downloader for %{public}s", v28, 0xCu);
      sub_100004590(v29);

      (*(v12 + 8))(v14, v43);
    }

    else
    {

      (*(v12 + 8))(v14, v43);
      sub_100004590(aBlock);
    }

    return a5(0, 0);
  }

  return result;
}

uint64_t sub_100024870()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000248BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  swift_unknownObjectRetain();

  sub_100024954(a4, a5, a2, a3);
  return swift_endAccess();
}

uint64_t sub_100024954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_10002DAF0(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_10000F9A8(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_100260DB0();
        v16 = v18;
      }

      swift_unknownObjectRelease();
      result = sub_100292DA0(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

uint64_t sub_100024A58(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100168088(&qword_100572F50);
  v33 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100024D10@<X0>(uint64_t a1@<X8>)
{
  v345 = a1;
  v344 = sub_100168088(&qword_10057AC60);
  v343 = *(v344 - 8);
  __chkstk_darwin(v344);
  v342 = &v259 - v1;
  v341 = sub_100168088(&qword_10057AC68);
  v340 = *(v341 - 8);
  __chkstk_darwin(v341);
  v339 = &v259 - v2;
  v338 = sub_100168088(&qword_10057AC70);
  v337 = *(v338 - 8);
  __chkstk_darwin(v338);
  v336 = &v259 - v3;
  v335 = sub_100168088(&qword_10057AC78);
  v334 = *(v335 - 8);
  __chkstk_darwin(v335);
  v333 = &v259 - v4;
  v332 = sub_100168088(&qword_10057AC80);
  v331 = *(v332 - 8);
  __chkstk_darwin(v332);
  v329 = &v259 - v5;
  v328 = sub_100168088(&qword_10057AC88);
  v327 = *(v328 - 8);
  __chkstk_darwin(v328);
  v326 = &v259 - v6;
  v325 = sub_100168088(&qword_10057AC90);
  v324 = *(v325 - 8);
  __chkstk_darwin(v325);
  v323 = &v259 - v7;
  v322 = type metadata accessor for TabChangeActionOpenStoreURLActionImplementation();
  v321 = *(v322 - 8);
  __chkstk_darwin(v322);
  v320 = &v259 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v319 = type metadata accessor for TabChangeOpenAudioActionImplementation();
  v318 = *(v319 - 8);
  __chkstk_darwin(v319);
  v317 = &v259 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v316 = type metadata accessor for TabChangeOpenAppLocationActionImplementation();
  v315 = *(v316 - 8);
  __chkstk_darwin(v316);
  v313 = &v259 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v312 = sub_100168088(&qword_10057AC98);
  v311 = *(v312 - 8);
  __chkstk_darwin(v312);
  v310 = &v259 - v11;
  v309 = sub_100168088(&qword_10057ACA0);
  v308 = *(v309 - 8);
  __chkstk_darwin(v309);
  v307 = &v259 - v12;
  v306 = sub_100168088(&qword_10057ACA8);
  v305 = *(v306 - 8);
  __chkstk_darwin(v306);
  v304 = &v259 - v13;
  v303 = type metadata accessor for IgnorePurgedEpisodesActionImplementation();
  v302 = *(v303 - 8);
  __chkstk_darwin(v303);
  v301 = &v259 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v300 = type metadata accessor for RestorePurgedEpisodesActionImplementation();
  v299 = *(v300 - 8);
  __chkstk_darwin(v300);
  v298 = &v259 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v297 = type metadata accessor for IgnoreAbandonedDownloadsActionImplementation();
  v296 = *(v297 - 8);
  __chkstk_darwin(v297);
  v295 = &v259 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v294 = type metadata accessor for RemoveAbandonedDownloadsActionImplementation();
  v293 = *(v294 - 8);
  __chkstk_darwin(v294);
  v292 = &v259 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v291 = type metadata accessor for DeclineEpisodeLimitRecommendationActionImplementation();
  v290 = *(v291 - 8);
  __chkstk_darwin(v291);
  v289 = &v259 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v288 = type metadata accessor for AcceptEpisodeLimitRecommendationActionImplementation();
  v287 = *(v288 - 8);
  __chkstk_darwin(v288);
  v286 = &v259 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  refreshed = type metadata accessor for RequestTipProviderRefreshActionImplementation();
  v284 = *(refreshed - 8);
  __chkstk_darwin(refreshed);
  v283 = &v259 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100168088(&qword_10057ACB0);
  v22 = __chkstk_darwin(v21 - 8);
  v259 = &v259 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v281 = &v259 - v25;
  v26 = __chkstk_darwin(v24);
  v265 = &v259 - v27;
  __chkstk_darwin(v26);
  v264 = &v259 - v28;
  v262 = type metadata accessor for PlayQueueItemActionImplementation();
  v261 = *(v262 - 8);
  __chkstk_darwin(v262);
  v260 = &v259 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v279 = type metadata accessor for TextFieldAlertActionImplementation();
  v280 = *(v279 - 8);
  __chkstk_darwin(v279);
  v278 = &v259 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v276 = type metadata accessor for AlertSheetActionImplementation();
  v277 = *(v276 - 8);
  __chkstk_darwin(v276);
  v275 = &v259 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v273 = type metadata accessor for AlertActionImplementation();
  v274 = *(v273 - 8);
  __chkstk_darwin(v273);
  v272 = &v259 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v270 = type metadata accessor for FollowShowByURLActionImplementation();
  v271 = *(v270 - 8);
  __chkstk_darwin(v270);
  v269 = &v259 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v267 = sub_100168088(&qword_10057ACB8);
  v268 = *(v267 - 8);
  __chkstk_darwin(v267);
  v266 = &v259 - v34;
  StationActionImplementation = type metadata accessor for CreateStationActionImplementation();
  v36 = *(StationActionImplementation - 8);
  __chkstk_darwin(StationActionImplementation);
  v38 = &v259 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_100168088(&qword_10057AB40);
  v40 = *(v39 - 8);
  v41 = __chkstk_darwin(v39);
  v314 = &v259 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __chkstk_darwin(v41);
  v330 = &v259 - v44;
  v45 = __chkstk_darwin(v43);
  v380 = &v259 - v46;
  v47 = __chkstk_darwin(v45);
  v379 = &v259 - v48;
  v49 = __chkstk_darwin(v47);
  v378 = &v259 - v50;
  v51 = __chkstk_darwin(v49);
  v377 = &v259 - v52;
  v53 = __chkstk_darwin(v51);
  v376 = &v259 - v54;
  v55 = __chkstk_darwin(v53);
  v375 = &v259 - v56;
  v57 = __chkstk_darwin(v55);
  v374 = &v259 - v58;
  v59 = __chkstk_darwin(v57);
  v373 = &v259 - v60;
  v61 = __chkstk_darwin(v59);
  v372 = &v259 - v62;
  v63 = __chkstk_darwin(v61);
  v371 = &v259 - v64;
  v65 = __chkstk_darwin(v63);
  v370 = &v259 - v66;
  v67 = __chkstk_darwin(v65);
  v369 = &v259 - v68;
  v69 = __chkstk_darwin(v67);
  v368 = &v259 - v70;
  v71 = __chkstk_darwin(v69);
  v367 = &v259 - v72;
  v73 = __chkstk_darwin(v71);
  v366 = &v259 - v74;
  v75 = __chkstk_darwin(v73);
  v365 = &v259 - v76;
  v77 = __chkstk_darwin(v75);
  v364 = &v259 - v78;
  v79 = __chkstk_darwin(v77);
  v363 = &v259 - v80;
  v81 = __chkstk_darwin(v79);
  v263 = &v259 - v82;
  v83 = __chkstk_darwin(v81);
  v282 = &v259 - v84;
  v85 = __chkstk_darwin(v83);
  v346 = &v259 - v86;
  v87 = __chkstk_darwin(v85);
  v347 = &v259 - v88;
  v89 = __chkstk_darwin(v87);
  v348 = &v259 - v90;
  v91 = __chkstk_darwin(v89);
  v349 = &v259 - v92;
  v93 = __chkstk_darwin(v91);
  v350 = &v259 - v94;
  v95 = __chkstk_darwin(v93);
  v351 = &v259 - v96;
  v97 = __chkstk_darwin(v95);
  v352 = &v259 - v98;
  v99 = __chkstk_darwin(v97);
  v353 = &v259 - v100;
  v101 = __chkstk_darwin(v99);
  v354 = &v259 - v102;
  v103 = __chkstk_darwin(v101);
  v362 = &v259 - v104;
  v105 = __chkstk_darwin(v103);
  v361 = &v259 - v106;
  v107 = __chkstk_darwin(v105);
  v360 = &v259 - v108;
  v109 = __chkstk_darwin(v107);
  v359 = &v259 - v110;
  v111 = __chkstk_darwin(v109);
  v358 = &v259 - v112;
  v113 = __chkstk_darwin(v111);
  v357 = &v259 - v114;
  v115 = __chkstk_darwin(v113);
  v117 = &v259 - v116;
  __chkstk_darwin(v115);
  v119 = &v259 - v118;
  CreateStationActionImplementation.init()();
  v120 = type metadata accessor for BaseObjectGraph();
  ActionDispatcher.init()();
  v121 = v40 + 16;
  v381 = *(v40 + 16);
  v381(v119, v117, v39);
  sub_100283980(&qword_10057ACC0, &type metadata accessor for CreateStationActionImplementation);
  v356 = v119;
  ActionDispatcher.add<A>(_:)();
  v355 = v40;
  v385 = *(v40 + 8);
  v385(v117, v39);
  (*(v36 + 8))(v38, StationActionImplementation);
  type metadata accessor for DeleteStationAction();
  sub_100283980(&qword_10057ACC8, &type metadata accessor for DeleteStationAction);
  sub_100283980(&qword_10057ACD0, &type metadata accessor for DeleteStationAction);
  v122 = v266;
  IntentDelegatingActionImplementation.init()();
  ActionDispatcher.init()();
  v123 = v381;
  v381(v357, v117, v39);
  sub_100009FAC(&qword_10057ACD8, &qword_10057ACB8);
  v124 = v267;
  v125 = v120;
  ActionDispatcher.add<A>(_:)();
  v126 = v385;
  v385(v117, v39);
  (*(v268 + 8))(v122, v124);
  v127 = v269;
  FollowShowByURLActionImplementation.init()();
  ActionDispatcher.init()();
  v123(v358, v117, v39);
  sub_100283980(&qword_10057ACE0, &type metadata accessor for FollowShowByURLActionImplementation);
  v128 = v270;
  ActionDispatcher.add<A>(_:)();
  v126(v117, v39);
  v129 = v40 + 8;
  (*(v271 + 8))(v127, v128);
  v130 = v272;
  AlertActionImplementation.init()();
  ActionDispatcher.init()();
  v123(v359, v117, v39);
  sub_100283980(&qword_10057ACE8, &type metadata accessor for AlertActionImplementation);
  v131 = v273;
  ActionDispatcher.add<A>(_:)();
  v132 = v385;
  v385(v117, v39);
  (*(v274 + 8))(v130, v131);
  v133 = v275;
  AlertSheetActionImplementation.init()();
  ActionDispatcher.init()();
  v123(v360, v117, v39);
  sub_100283980(&qword_10057ACF0, &type metadata accessor for AlertSheetActionImplementation);
  v134 = v276;
  ActionDispatcher.add<A>(_:)();
  v132(v117, v39);
  (*(v277 + 8))(v133, v134);
  v135 = v278;
  TextFieldAlertActionImplementation.init()();
  v386 = v125;
  ActionDispatcher.init()();
  v383 = v121;
  v123(v361, v117, v39);
  sub_100283980(&unk_10057ACF8, &type metadata accessor for TextFieldAlertActionImplementation);
  v136 = v279;
  ActionDispatcher.add<A>(_:)();
  v382 = v117;
  v384 = v129;
  v132(v117, v39);
  (*(v280 + 8))(v135, v136);
  v137 = type metadata accessor for Podcasts();
  v388 = v137;
  v389 = sub_100283980(&qword_1005742C0, &type metadata accessor for Podcasts);
  v138 = sub_10000E680(&v387);
  (*(*(v137 - 8) + 104))(v138, enum case for Podcasts.experimentalPlayActionImplementations(_:), v137);
  LOBYTE(v137) = isFeatureEnabled(_:)();
  sub_100004590(&v387);
  if (v137)
  {
    sub_100168088(&qword_10057AE00);
    v139 = v381;
    sub_100009FAC(&qword_10057AE08, &qword_10057AE00);
    static ActionDispatcher.Builder<>.buildExpression<A>(_:)();
    sub_100168088(&qword_10057AE10);
    sub_100009FAC(&qword_10057AE18, &qword_10057AE10);
    static ActionDispatcher.Builder<>.buildExpression<A>(_:)();
    sub_100168088(&qword_10057AE20);
    sub_100009FAC(&qword_10057AE28, &qword_10057AE20);
    static ActionDispatcher.Builder<>.buildExpression<A>(_:)();
    sub_100168088(&qword_10057AE30);
    sub_100009FAC(&qword_10057AE38, &qword_10057AE30);
    static ActionDispatcher.Builder<>.buildExpression<A>(_:)();
    v140 = v260;
    PlayQueueItemActionImplementation.init()();
    v141 = v382;
    ActionDispatcher.init()();
    v139();
    sub_100283980(&qword_10057AE40, &type metadata accessor for PlayQueueItemActionImplementation);
    v142 = v262;
    ActionDispatcher.add<A>(_:)();
    v385(v141, v39);
    (*(v261 + 8))(v140, v142);
    sub_100168088(&qword_10057AE48);
    sub_100009FAC(&qword_10057AE50, &qword_10057AE48);
    static ActionDispatcher.Builder<>.buildExpression<A>(_:)();
    sub_100168088(&qword_10057AE58);
    sub_100009FAC(&qword_10057AE60, &qword_10057AE58);
    static ActionDispatcher.Builder<>.buildExpression<A>(_:)();
    sub_100168088(&qword_10057AE68);
    sub_100009FAC(&qword_10057AE70, &qword_10057AE68);
    static ActionDispatcher.Builder<>.buildExpression<A>(_:)();
    sub_100168088(&qword_10057AE78);
    sub_100009FAC(&qword_10057AE80, &qword_10057AE78);
    static ActionDispatcher.Builder<>.buildExpression<A>(_:)();
    sub_100168088(&qword_10057AE88);
    sub_100009FAC(&qword_10057AE90, &qword_10057AE88);
    v143 = v282;
    static ActionDispatcher.Builder<>.buildExpression<A>(_:)();
    sub_100168088(&qword_10057ADF8);
    v144 = v355;
    v145 = *(v355 + 72);
    v146 = (*(v355 + 80) + 32) & ~*(v355 + 80);
    v281 = swift_allocObject();
    v147 = v281 + v146;
    (v139)(v281 + v146, v354, v39);
    (v139)(v147 + v145, v353, v39);
    v278 = (2 * v145);
    (v139)(v147 + 2 * v145, v352, v39);
    v280 = 3 * v145;
    (v139)(v147 + 3 * v145, v351, v39);
    (v139)(v147 + 4 * v145, v350, v39);
    v279 = 5 * v145;
    (v139)(v147 + 5 * v145, v349, v39);
    v277 = v147 + 6 * v145;
    v139();
    v276 = 7 * v145;
    (v139)(v147 + 7 * v145, v347, v39);
    (v139)(v147 + 8 * v145, v346, v39);
    (v139)(v147 + 9 * v145, v143, v39);
    v148 = v263;
    ActionDispatcher.init()();
    ActionDispatcher.add(contentsOf:)();
    ActionDispatcher.add(contentsOf:)();
    ActionDispatcher.add(contentsOf:)();
    ActionDispatcher.add(contentsOf:)();
    ActionDispatcher.add(contentsOf:)();
    ActionDispatcher.add(contentsOf:)();
    ActionDispatcher.add(contentsOf:)();
    ActionDispatcher.add(contentsOf:)();
    ActionDispatcher.add(contentsOf:)();
    ActionDispatcher.add(contentsOf:)();
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v149 = v264;
    (v139)(v264, v148, v39);
    (*(v144 + 56))(v149, 0, 1, v39);
    v150 = v265;
    sub_100010430(v149, v265, &qword_10057ACB0);
    v151 = *(v144 + 48);
    if (v151(v150, 1, v39) != 1)
    {
      sub_100009104(v149, &qword_10057ACB0);
      v157 = v148;
      v158 = v385;
      v385(v157, v39);
      v158(v282, v39);
      v158(v346, v39);
      v158(v347, v39);
      v158(v348, v39);
      v158(v349, v39);
      v158(v350, v39);
      v158(v351, v39);
      v158(v352, v39);
      v158(v353, v39);
      v158(v354, v39);
      (*(v144 + 32))(v362, v150, v39);
      goto LABEL_10;
    }

    ActionDispatcher.init()();
    sub_100009104(v149, &qword_10057ACB0);
    v152 = v148;
    v153 = v385;
    v385(v152, v39);
    v153(v282, v39);
    v153(v346, v39);
    v153(v347, v39);
    v153(v348, v39);
    v153(v349, v39);
    v153(v350, v39);
    v153(v351, v39);
    v153(v352, v39);
    v153(v353, v39);
    v153(v354, v39);
    if (v151(v150, 1, v39) == 1)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v154 = v355;
  v155 = v281;
  (*(v355 + 56))(v281, 1, 1, v39);
  v150 = v259;
  sub_100010430(v155, v259, &qword_10057ACB0);
  v156 = *(v154 + 48);
  if (v156(v150, 1, v39) != 1)
  {
    sub_100009104(v281, &qword_10057ACB0);
    (*(v154 + 32))(v362, v150, v39);
    goto LABEL_10;
  }

  ActionDispatcher.init()();
  sub_100009104(v281, &qword_10057ACB0);
  if (v156(v150, 1, v39) != 1)
  {
LABEL_7:
    sub_100009104(v150, &qword_10057ACB0);
  }

LABEL_10:
  v159 = v283;
  RequestTipProviderRefreshActionImplementation.init()();
  v160 = v363;
  ActionDispatcher.init()();
  v161 = v381;
  (v381)();
  v162 = v161;
  sub_100283980(&qword_10057AD08, &type metadata accessor for RequestTipProviderRefreshActionImplementation);
  v163 = refreshed;
  ActionDispatcher.add<A>(_:)();
  v164 = v385;
  v385(v160, v39);
  (*(v284 + 8))(v159, v163);
  v165 = v286;
  AcceptEpisodeLimitRecommendationActionImplementation.init()();
  v166 = v364;
  ActionDispatcher.init()();
  v167 = v160;
  v168 = v166;
  v162(v167, v166, v39);
  sub_100283980(&qword_10057AD10, &type metadata accessor for AcceptEpisodeLimitRecommendationActionImplementation);
  v169 = v288;
  ActionDispatcher.add<A>(_:)();
  v164(v168, v39);
  (*(v287 + 8))(v165, v169);
  v170 = v289;
  DeclineEpisodeLimitRecommendationActionImplementation.init()();
  v171 = v365;
  ActionDispatcher.init()();
  v172 = v168;
  v173 = v171;
  v162(v172, v171, v39);
  sub_100283980(&qword_10057AD18, &type metadata accessor for DeclineEpisodeLimitRecommendationActionImplementation);
  v174 = v291;
  ActionDispatcher.add<A>(_:)();
  v164(v173, v39);
  (*(v290 + 8))(v170, v174);
  v175 = v292;
  RemoveAbandonedDownloadsActionImplementation.init()();
  v176 = v366;
  ActionDispatcher.init()();
  v177 = v173;
  v178 = v176;
  v162(v177, v176, v39);
  sub_100283980(&qword_10057AD20, &type metadata accessor for RemoveAbandonedDownloadsActionImplementation);
  v179 = v294;
  ActionDispatcher.add<A>(_:)();
  v164(v178, v39);
  (*(v293 + 8))(v175, v179);
  v180 = v295;
  IgnoreAbandonedDownloadsActionImplementation.init()();
  v181 = v367;
  ActionDispatcher.init()();
  v182 = v178;
  v183 = v181;
  v162(v182, v181, v39);
  sub_100283980(&qword_10057AD28, &type metadata accessor for IgnoreAbandonedDownloadsActionImplementation);
  v184 = v297;
  ActionDispatcher.add<A>(_:)();
  v164(v183, v39);
  (*(v296 + 8))(v180, v184);
  v185 = v298;
  RestorePurgedEpisodesActionImplementation.init()();
  v186 = v368;
  ActionDispatcher.init()();
  v187 = v183;
  v188 = v186;
  v162(v187, v186, v39);
  sub_100283980(&qword_10057AD30, &type metadata accessor for RestorePurgedEpisodesActionImplementation);
  v189 = v300;
  ActionDispatcher.add<A>(_:)();
  v164(v188, v39);
  (*(v299 + 8))(v185, v189);
  v190 = v301;
  IgnorePurgedEpisodesActionImplementation.init()();
  v191 = v369;
  ActionDispatcher.init()();
  v192 = v188;
  v193 = v191;
  v162(v192, v191, v39);
  sub_100283980(&qword_10057AD38, &type metadata accessor for IgnorePurgedEpisodesActionImplementation);
  v194 = v303;
  ActionDispatcher.add<A>(_:)();
  v164(v193, v39);
  (*(v302 + 8))(v190, v194);
  type metadata accessor for RemoveDownloadedEpisodesAction();
  sub_100283980(&qword_10057AD40, &type metadata accessor for RemoveDownloadedEpisodesAction);
  v195 = v164;
  sub_100283980(&qword_10057AD48, &type metadata accessor for RemoveDownloadedEpisodesAction);
  v196 = v304;
  IntentDelegatingActionImplementation.init()();
  v197 = v370;
  ActionDispatcher.init()();
  v198 = v193;
  v199 = v197;
  v162(v198, v197, v39);
  v200 = v162;
  v354 = &protocol conformance descriptor for IntentDelegatingActionImplementation<A>;
  sub_100009FAC(&qword_10057AD50, &qword_10057ACA8);
  v201 = v306;
  ActionDispatcher.add<A>(_:)();
  v195(v199, v39);
  v202 = v195;
  (*(v305 + 8))(v196, v201);
  type metadata accessor for DownloadEpisodesAction();
  sub_100283980(&qword_10057AD58, &type metadata accessor for DownloadEpisodesAction);
  sub_100283980(&qword_10057AD60, &type metadata accessor for DownloadEpisodesAction);
  v203 = v307;
  IntentDelegatingActionImplementation.init()();
  v204 = v371;
  ActionDispatcher.init()();
  v205 = v199;
  v206 = v204;
  v200(v205, v204, v39);
  sub_100009FAC(&qword_10057AD68, &qword_10057ACA0);
  v207 = v309;
  ActionDispatcher.add<A>(_:)();
  v195(v206, v39);
  (*(v308 + 8))(v203, v207);
  type metadata accessor for UpdateEpisodeDownloadBehaviorAction();
  sub_100283980(&qword_10057AD70, &type metadata accessor for UpdateEpisodeDownloadBehaviorAction);
  sub_100283980(&qword_10057AD78, &type metadata accessor for UpdateEpisodeDownloadBehaviorAction);
  v208 = v310;
  IntentDelegatingActionImplementation.init()();
  v209 = v372;
  ActionDispatcher.init()();
  v200(v206, v209, v39);
  sub_100009FAC(&qword_10057AD80, &qword_10057AC98);
  v210 = v312;
  ActionDispatcher.add<A>(_:)();
  v211 = v202;
  v202(v209, v39);
  (*(v311 + 8))(v208, v210);
  v212 = v313;
  TabChangeOpenAppLocationActionImplementation.init()();
  v213 = v373;
  ActionDispatcher.init()();
  v214 = v209;
  v215 = v213;
  v216 = v381;
  v381(v214, v213, v39);
  sub_100283980(&qword_10057AD88, &type metadata accessor for TabChangeOpenAppLocationActionImplementation);
  v217 = v316;
  ActionDispatcher.add<A>(_:)();
  v202(v215, v39);
  (*(v315 + 8))(v212, v217);
  v218 = v317;
  TabChangeOpenAudioActionImplementation.init()();
  v219 = v374;
  ActionDispatcher.init()();
  v220 = v215;
  v221 = v219;
  (v216)(v220, v219, v39);
  sub_100283980(&qword_10057AD90, &type metadata accessor for TabChangeOpenAudioActionImplementation);
  v222 = v319;
  ActionDispatcher.add<A>(_:)();
  v202(v221, v39);
  (*(v318 + 8))(v218, v222);
  v223 = v320;
  TabChangeActionOpenStoreURLActionImplementation.init()();
  v224 = v375;
  ActionDispatcher.init()();
  v225 = v221;
  v226 = v224;
  (v216)(v225, v224, v39);
  sub_100283980(&unk_10057AD98, &type metadata accessor for TabChangeActionOpenStoreURLActionImplementation);
  v227 = v322;
  ActionDispatcher.add<A>(_:)();
  v202(v226, v39);
  (*(v321 + 8))(v223, v227);
  type metadata accessor for FlowAction();
  v353 = &protocol conformance descriptor for Action;
  sub_100283980(&unk_10057A0D0, &type metadata accessor for FlowAction);
  v228 = v323;
  ActionRunnerDelegatingActionImplementation.init()();
  v229 = v376;
  ActionDispatcher.init()();
  (v216)(v226, v229, v39);
  v354 = &protocol conformance descriptor for ActionRunnerDelegatingActionImplementation<A>;
  sub_100009FAC(&qword_10057ADA8, &qword_10057AC90);
  v230 = v325;
  ActionDispatcher.add<A>(_:)();
  v211(v229, v39);
  (*(v324 + 8))(v228, v230);
  type metadata accessor for PopToRootAction();
  sub_100283980(&qword_10057ADB0, &type metadata accessor for PopToRootAction);
  v231 = v326;
  ActionRunnerDelegatingActionImplementation.init()();
  v232 = v377;
  ActionDispatcher.init()();
  v233 = v229;
  v234 = v232;
  (v216)(v233, v232, v39);
  sub_100009FAC(&qword_10057ADB8, &qword_10057AC88);
  v235 = v328;
  ActionDispatcher.add<A>(_:)();
  v236 = v385;
  v385(v234, v39);
  (*(v327 + 8))(v231, v235);
  type metadata accessor for SearchAction();
  sub_100283980(&qword_10057ADC0, &type metadata accessor for SearchAction);
  v237 = v329;
  ActionRunnerDelegatingActionImplementation.init()();
  v238 = v378;
  ActionDispatcher.init()();
  (v216)(v234, v238, v39);
  sub_100009FAC(&qword_10057ADC8, &qword_10057AC80);
  v239 = v332;
  ActionDispatcher.add<A>(_:)();
  v236(v238, v39);
  (*(v331 + 8))(v237, v239);
  type metadata accessor for TabChangeAction();
  sub_100283980(&qword_10057ADD0, &type metadata accessor for TabChangeAction);
  v240 = v333;
  ActionRunnerDelegatingActionImplementation.init()();
  v241 = v379;
  ActionDispatcher.init()();
  (v216)(v238, v241, v39);
  sub_100009FAC(&qword_10057ADD8, &qword_10057AC78);
  v242 = v335;
  ActionDispatcher.add<A>(_:)();
  v243 = v385;
  v385(v241, v39);
  (*(v334 + 8))(v240, v242);
  v388 = type metadata accessor for SyncTaskScheduler();
  v389 = &protocol witness table for SyncTaskScheduler;
  sub_10000E680(&v387);
  SyncTaskScheduler.init()();
  v244 = v336;
  ClosureActionImplementation.init(scheduler:)();
  v245 = v380;
  ActionDispatcher.init()();
  (v216)(v241, v245, v39);
  sub_100009FAC(&qword_10057ADE0, &qword_10057AC70);
  v246 = v338;
  ActionDispatcher.add<A>(_:)();
  v247 = v243;
  v243(v245, v39);
  (*(v337 + 8))(v244, v246);
  v248 = v339;
  CompoundActionImplementation.init()();
  v249 = v330;
  ActionDispatcher.init()();
  (v216)(v245, v249, v39);
  sub_100009FAC(&qword_10057ADE8, &qword_10057AC68);
  v250 = v341;
  ActionDispatcher.add<A>(_:)();
  v247(v249, v39);
  (*(v340 + 8))(v248, v250);
  v251 = v342;
  EmptyActionImplementation.init()();
  v252 = v314;
  ActionDispatcher.init()();
  (v216)(v249, v252, v39);
  sub_100009FAC(&qword_10057ADF0, &qword_10057AC60);
  v253 = v344;
  ActionDispatcher.add<A>(_:)();
  v247(v252, v39);
  (*(v343 + 8))(v251, v253);
  sub_100168088(&qword_10057ADF8);
  v254 = *(v355 + 72);
  v255 = (*(v355 + 80) + 32) & ~*(v355 + 80);
  v355 = swift_allocObject();
  v256 = v355 + v255;
  (v216)(v355 + v255, v356, v39);
  (v216)(v256 + v254, v357, v39);
  v352 = (2 * v254);
  (v216)(v256 + 2 * v254, v358, v39);
  v354 = 3 * v254;
  (v216)(v256 + 3 * v254, v359, v39);
  v350 = (4 * v254);
  (v216)(v256 + 4 * v254, v360, v39);
  v353 = 5 * v254;
  (v216)(v256 + 5 * v254, v361, v39);
  v351 = (v256 + 6 * v254);
  v216();
  v349 = 7 * v254;
  (v216)(v256 + 7 * v254, v382, v39);
  (v216)(v256 + 8 * v254, v363, v39);
  v348 = 9 * v254;
  (v216)(v256 + 9 * v254, v364, v39);
  v347 = (v256 + 10 * v254);
  v216();
  v346 = (v256 + 11 * v254);
  v216();
  v344 = v256 + 12 * v254;
  v216();
  v343 = v256 + 13 * v254;
  v216();
  v342 = (v256 + 14 * v254);
  v216();
  v341 = 15 * v254;
  (v216)(v256 + 15 * v254, v370, v39);
  (v216)(v256 + 16 * v254, v371, v39);
  v340 = 17 * v254;
  (v216)(v256 + 17 * v254, v372, v39);
  v339 = (v256 + 18 * v254);
  v216();
  v338 = v256 + 19 * v254;
  v216();
  v337 = v256 + 20 * v254;
  v216();
  v336 = (v256 + 21 * v254);
  v216();
  v335 = v256 + 22 * v254;
  v216();
  v334 = v256 + 23 * v254;
  v216();
  v333 = (v256 + 24 * v254);
  v216();
  v332 = v256 + 25 * v254;
  v216();
  (v216)(v256 + 26 * v254, v249, v39);
  ActionDispatcher.init()();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v257 = v385;
  v385(v249, v39);
  v257(v380, v39);
  v257(v379, v39);
  v257(v378, v39);
  v257(v377, v39);
  v257(v376, v39);
  v257(v375, v39);
  v257(v374, v39);
  v257(v373, v39);
  v257(v372, v39);
  v257(v371, v39);
  v257(v370, v39);
  v257(v369, v39);
  v257(v368, v39);
  v257(v367, v39);
  v257(v366, v39);
  v257(v365, v39);
  v257(v364, v39);
  v257(v363, v39);
  v257(v382, v39);
  v257(v362, v39);
  v257(v361, v39);
  v257(v360, v39);
  v257(v359, v39);
  v257(v358, v39);
  v257(v357, v39);
  return (v257)(v356, v39);
}

uint64_t LibraryDataProvider.showsPaginatedPublisher(listType:sortBy:lockupStyle:pageSize:)(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v8 = type metadata accessor for ShowLockupStyle();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100168088(&qword_100573AB8);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v25 - v14;
  v16 = sub_100029130(a1, a2 & 1);
  v25[6] = v17;
  v25[7] = v16;
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25[4] = v19;
  v25[5] = v18;
  v25[3] = sub_10002929C(a1, a2 & 1);
  v25[2] = ShowsSortType.sortDescriptors.getter(a3);
  v20 = [*(v25[1] + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_managedContextProvider) privateQueueContext];
  sub_100009F1C(0, &qword_1005729D0);
  static OS_dispatch_queue.main.getter();
  (*(v9 + 16))(v11, v26, v8);
  v21 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v22 = swift_allocObject();
  (*(v9 + 32))(v22 + v21, v11, v8);
  type metadata accessor for LibraryShowLockup();
  sub_100009F1C(0, &qword_100573AC0);
  FetchedResultsListPublisher.init(identifier:entityName:predicate:sortDescriptors:pageSize:managedObjectContext:receiveOn:transform:updateRequiredComparator:)();
  sub_100009FAC(&qword_100573AC8, &qword_100573AB8);
  v23 = PaginatedPublisher.eraseToAnyPaginatedPublisher()();
  (*(v13 + 8))(v15, v12);
  return v23;
}

uint64_t sub_100029130(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = 0x6465776F6C6C6F66;
    v3 = 0x6B72616D6B6F6F62;
    if (a1 != 5)
    {
      v3 = 0xD000000000000011;
    }

    v4 = 0x64616F6C6E776F64;
    if (a1 != 3)
    {
      v4 = 0xD000000000000011;
    }

    if (a1 <= 4)
    {
      v3 = v4;
    }

    v5 = 0x776F6C6C6F666E75;
    if (a1 != 1)
    {
      v5 = 7105633;
    }

    if (a1)
    {
      v2 = v5;
    }

    if (a1 <= 2)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }

  else
  {
    sub_10019BAC4();
    v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v7);

    v8._countAndFlagsBits = 41;
    v8._object = 0xE100000000000000;
    String.append(_:)(v8);
    return 0x286C656E6E616863;
  }
}

id sub_10002929C(uint64_t a1, char a2)
{
  result = objc_opt_self();
  if (a2)
  {
    if (a1 <= 2)
    {
      if (a1)
      {
        if (a1 == 1)
        {
          v6 = result;
          v7 = [result predicateForNotSubscribedAndNotHiddenAndNotImplicitlyFollowed];
          v8 = [v6 predicateForPodcastsWithLibraryEpisodes];
          v9 = [v7 AND:v8];

          return v9;
        }

        else
        {
          v10 = result;
          v11 = [result predicateForNotSubscribedAndNotHiddenAndNotImplicitlyFollowed];
          v12 = [v10 predicateForPodcastsWithLibraryEpisodes];
          v13 = [v11 AND:v12];

          v14 = [v10 predicateForSubscribedAndNotHidden];
          v15 = [v14 OR:v13];

          return v15;
        }
      }

      v5 = [result predicateForSubscribedAndNotHidden];
    }

    else if (a1 > 4)
    {
      if (a1 == 5)
      {
        v5 = [result predicateForPodcastsWithBookmarkedEpisodes];
      }

      else
      {
        v5 = [result predicateForPodcastsWithUnplayedBookmarkedEpisodes];
      }
    }

    else if (a1 == 3)
    {
      v5 = [result predicateForPodcastsWithDownloadedEpisodes];
    }

    else
    {
      v5 = [result predicateForPodcastsWithUnplayedDownloadedEpisodes];
    }
  }

  else
  {
    if (a1 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = [result predicateForNotImplicitlyFollowedPodcastsWithChannelStoreId:a1];
  }

  return v5;
}

id ShowsSortType.sortDescriptors.getter(char a1)
{
  result = [objc_opt_self() sortDescriptorsForSortType:qword_10040CC00[a1]];
  if (result)
  {
    v2 = result;
    sub_100029528();
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100029528()
{
  result = qword_10057B1F0;
  if (!qword_10057B1F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10057B1F0);
  }

  return result;
}

uint64_t LibraryDataProvider.fetchStationsObserver(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for StationListOptions();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_100168088(&qword_100573AD0);
  sub_100009F1C(0, &qword_1005748A0);
  static OS_os_log.libraryLoadingSignpost.getter();
  v7 = Promise.init(signpost:log:metadata:logResult:)();
  v8 = [*(v2 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_managedContextProvider) privateQueueContext];
  (*(v5 + 16))(aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  *(v10 + ((v6 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v7;
  aBlock[4] = sub_10019BA30;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004E16E0;
  v11 = _Block_copy(aBlock);

  [v8 performBlock:v11];
  _Block_release(v11);

  return v7;
}

uint64_t sub_1000297C4()
{
  v1 = type metadata accessor for StationListOptions();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100029864(uint64_t a1, char *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v19 = *(v7 - 8);
  v20 = v7;
  __chkstk_darwin(v7);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FeedManagerBagConfiguration();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v18[1] = *&a2[OBJC_IVAR___MTFeedManager_queue];
  (*(v11 + 16))(v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  v13 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  (*(v11 + 32))(v14 + v13, v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  aBlock[4] = sub_100029C24;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004EB548;
  v15 = _Block_copy(aBlock);
  v16 = a2;
  static DispatchQoS.unspecified.getter();
  v22 = &_swiftEmptyArrayStorage;
  sub_10000E53C(&qword_10057D380, &type metadata accessor for DispatchWorkItemFlags);
  sub_100168088(&unk_100575CD0);
  sub_100009FAC(&qword_10057D390, &unk_100575CD0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v21 + 8))(v6, v4);
  (*(v19 + 8))(v9, v20);
}

id sub_100029C24()
{
  v1 = *(type metadata accessor for FeedManagerBagConfiguration() - 8);
  v2 = *(v0 + 16);
  v3 = *(v2 + OBJC_IVAR___MTFeedManager__feedIngesterProvider);
  v4 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_100029C94(v4, v3, v2);
}

id sub_100029C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  updated = type metadata accessor for FeedUpdateRequest();
  v56 = *(updated - 8);
  __chkstk_darwin(updated);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v60 = *(v8 - 8);
  __chkstk_darwin(v8);
  v59 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FeedManagerBagConfiguration();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70[3] = type metadata accessor for FeedIngesterProvider();
  v70[4] = sub_10000E53C(&unk_10057D828, type metadata accessor for FeedIngesterProvider);
  v70[0] = a2;
  v14 = objc_opt_self();

  v15 = [v14 sharedInstance];
  v16 = [v15 importContext];

  (*(v11 + 16))(v13, a1, v10);
  sub_100004428(v70, v69);
  type metadata accessor for StoreFeedUpdater();
  swift_allocObject();
  v17 = v16;
  v18 = StoreFeedUpdater.init(bagConfiguration:ctx:ingesterProvider:)();
  result = [objc_allocWithZone(MTExternalFeedDownloader) initWithDelegate:0];
  if (result)
  {
    v20 = result;
    sub_100004428(v70, v69);
    v62 = type metadata accessor for RSSFeedUpdater();
    v21 = objc_allocWithZone(v62);
    v22 = v20;
    v58 = v17;
    v57 = v22;
    v23 = RSSFeedUpdater.init(ctx:ingesterProvider:externalFeedDownloader:)();
    v24 = (a3 + OBJC_IVAR___MTFeedManager__system);
    v25 = *(a3 + OBJC_IVAR___MTFeedManager__system);
    *v24 = v23;
    v24[1] = &protocol witness table for RSSFeedUpdater;
    v24[2] = v18;
    v26 = v23;
    v61 = a3;
    v27 = v26;
    swift_retain_n();
    v28 = v27;
    v29 = v61;
    v30 = v28;
    sub_10003F6FC(v25);
    v64 = v18;
    sub_10003E784(v30, &protocol witness table for RSSFeedUpdater, v18);
    v31 = OBJC_IVAR___MTFeedManager__pendingRequests;
    swift_beginAccess();
    v32 = *(v29 + v31);
    *(v29 + v31) = &_swiftEmptyArrayStorage;
    v33 = *(v32 + 16);
    if (v33)
    {
      v63 = v30;
      v55 = v8;
      v34 = objc_opt_self();
      v35 = v56 + 16;
      v36 = *(v56 + 16);
      v37 = (*(v56 + 80) + 32) & ~*(v56 + 80);
      v56 = v32;
      v38 = v32 + v37;
      v39 = *(v35 + 56);
      v40 = (v35 - 8);
      v36(v7, v38, updated);
      while (1)
      {
        if ([v34 isEmpty:FeedUpdateRequest.podcastStoreId.getter()])
        {
          dispatch thunk of URLBasedFeedUpdater.updateFeed(request:)();
        }

        else
        {
          dispatch thunk of StoreFeedUpdater.updateFeed(request:)();
        }

        v41 = updated;
        (*v40)(v7, updated);
        v38 += v39;
        if (!--v33)
        {
          break;
        }

        v36(v7, v38, v41);
      }

      v8 = v55;
      v29 = v61;
      v30 = v63;
    }

    else
    {
    }

    v42 = OBJC_IVAR___MTFeedManager__pendingBlocks;
    swift_beginAccess();
    v43 = *(v29 + v42);
    *(v29 + v42) = &_swiftEmptyArrayStorage;
    v44 = *(v43 + 16);
    v45 = v64;
    if (v44)
    {
      v46 = v43 + 40;
      do
      {
        v47 = *(v46 - 8);
        v66 = v30;
        v67 = &protocol witness table for RSSFeedUpdater;
        v68 = v45;

        v47(&v66);

        v46 += 16;
        --v44;
      }

      while (v44);
    }

    v66 = v30;
    v67 = &protocol witness table for RSSFeedUpdater;
    v68 = v45;
    sub_100168088(&unk_10057D640);
    UninitializedCurrentValueSubject.send(_:)();
    sub_100009F1C(0, &qword_1005748A0);
    v48 = v59;
    static OS_os_log.feedUpdate.getter();
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, "System setup complete", v51, 2u);

      v52 = v30;
      v53 = v49;
      v54 = v60;
    }

    else
    {

      v54 = v60;
      v53 = v58;
      v52 = v57;
    }

    (*(v54 + 8))(v48, v8);
    return sub_100004590(v70);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10002A344(unint64_t a1, void (*a2)(unint64_t *, unint64_t *), uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, _UNKNOWN **))
{
  v14 = sub_10002A4B4(a4);
  v15 = sub_10002A4B4(a1);
  a2(v14, v15);

  v16 = (a5 + OBJC_IVAR____TtC8Podcasts16AssetsDownloader_statusUpdateHandler);
  v17 = *(a5 + OBJC_IVAR____TtC8Podcasts16AssetsDownloader_statusUpdateHandler);
  *v16 = a6;
  v16[1] = a7;
  sub_100013CB4(a6);
  sub_1000112B4(v17);
  v18 = *(a5 + OBJC_IVAR____TtC8Podcasts16AssetsDownloader_fairPlayAssetsDownloader + 8);
  ObjectType = swift_getObjectType();
  v20 = *(v18 + 8);
  v21 = *(v20 + 16);
  sub_100013CB4(a6);
  v21(a6, a7, ObjectType, v20);
  return a8(a5, &off_1004F1300);
}

unint64_t *sub_10002A4B4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v17 = &_swiftEmptyArrayStorage;
  result = sub_1001A791C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v17 = v3;
        v8 = v3[2];
        v7 = v3[3];
        if (v8 >= v7 >> 1)
        {
          sub_1001A791C((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = sub_100009F1C(0, &qword_1005748F0);
        v16 = &off_1004E5188;
        *&v14 = v6;
        v3[2] = v8 + 1;
        sub_1000109E4(&v14, &v3[5 * v8 + 4]);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v17 = v3;
        v12 = v3[2];
        v11 = v3[3];
        v13 = v10;
        if (v12 >= v11 >> 1)
        {
          sub_1001A791C((v11 > 1), v12 + 1, 1);
          v3 = v17;
        }

        v15 = sub_100009F1C(0, &qword_1005748F0);
        v16 = &off_1004E5188;
        *&v14 = v13;
        v3[2] = v12 + 1;
        sub_1000109E4(&v14, &v3[5 * v12 + 4]);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t _s8Podcasts19LibraryDataProviderC26fetchPodcastDetailBlocking4from8ShelfKit0fG0CSg10Foundation3URLV_tF_0@<X0>(NSURL *a1@<X8>)
{
  URL._bridgeToObjectiveC()(a1);
  v2 = v1;
  v3 = [v1 pf_cleanUrlToStoreId];
  v4 = objc_opt_self();
  if (![v4 isNotEmpty:v3] || !objc_msgSend(v4, "isEmpty:", objc_msgSend(v2, "pf_cleanUrlToStoreTrackId")))
  {
    goto LABEL_10;
  }

  v5 = [v2 pf_cleanUrlToEpisodeGuid];
  if (v5)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v20[0] = v7;
  v20[1] = v9;
  sub_100168088(&qword_100574230);
  sub_1001A0728();
  v10 = Optional<A>.isEmpty.getter();

  if (v10)
  {
    v11 = objc_opt_self();
    v12 = [v11 predicateForPodcastStoreId:v3];
    v13 = type metadata accessor for Podcasts();
    v20[3] = v13;
    v20[4] = sub_10000F084(&qword_1005742C0, &type metadata accessor for Podcasts);
    v14 = sub_10000E680(v20);
    (*(*(v13 - 8) + 104))(v14, enum case for Podcasts.renderImplicitFollowsAsLocalShows(_:), v13);
    LOBYTE(v13) = isFeatureEnabled(_:)();
    sub_100004590(v20);
    v15 = &selRef_predicateForNotHiddenPodcasts;
    if ((v13 & 1) == 0)
    {
      v15 = &selRef_predicateForNotHiddenNotImplicitlyFollowedPodcasts;
    }

    v16 = [v11 *v15];
    v17 = [v12 AND:v16];

    type metadata accessor for CoreDataFetcher();
    v18 = v17;
    sub_100168088(&qword_100573B48);
    static CoreDataFetcher.performAndWaitOnPodcast<A>(with:block:)();

    return v20[0];
  }

  else
  {
LABEL_10:

    return 0;
  }
}

uint64_t LibraryDataProvider.fetchChannelDetailBlocking(from:)@<X0>(NSURL *a1@<X8>)
{
  URL._bridgeToObjectiveC()(a1);
  v2 = v1;
  if ([objc_opt_self() isNotEmpty:{objc_msgSend(v1, "pf_cleanUrlToChannelStoreId")}])
  {
    type metadata accessor for CoreDataFetcher();
    sub_100168088(&qword_100573AE0);
    static CoreDataFetcher.performAndWaitOnChannel<A>(for:block:)();

    return v4;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_10002AB00(uint64_t a1)
{
  v2 = v1;
  if (UITabBarController.canSelect(navigationTab:)())
  {

    return UITabBarController.selectTabIfPossible(_:)(a1);
  }

  else
  {
    v4 = static TabConverter.translateNavigationTab(for:interface:)();
    v5 = static NavigationTab.== infix(_:_:)();
    result = sub_10002ACE0(v4);
    if (v5)
    {
      sub_100168088(&qword_1005745B0);

      BaseObjectGraph.inject<A>(_:)();

      sub_1000044A0(v11, v12);
      v6 = dispatch thunk of TabGroupManager.tabGroup.getter();
      v7 = UITab.tab(matching:)();

      if (v7)
      {
        [v2 setSelectedTab:v7];
      }

      else
      {
        sub_1000044A0(v11, v12);
        v8 = dispatch thunk of TabGroupManager.tabGroup.getter();
        v9 = [v8 children];

        sub_100009F1C(0, &qword_1005745C0);
        static Array._unconditionallyBridgeFromObjectiveC(_:)();

        sub_100168088(&qword_100580548);
        sub_10033D854();
        Collection.isNotEmpty.getter();
      }

      return sub_100004590(v11);
    }
  }

  return result;
}

uint64_t sub_10002ACE0(uint64_t result)
{
  if ((result - 1) >= 0x12)
  {
  }

  return result;
}

uint64_t sub_10002ACF4(const char *a1, uint64_t a2, int a3)
{
  v26 = a3;
  v27 = a1;
  v3 = type metadata accessor for OSSignpostError();
  v24 = *(v3 - 8);
  v25 = v3;
  __chkstk_darwin(v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OSSignpostID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OSSignposter();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static OSSignposter.bootstrap.getter();
  v14 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v23 = static os_signpost_type_t.end.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
LABEL_13:

    (*(v7 + 8))(v9, v6);
    return (*(v11 + 8))(v13, v10);
  }

  v22 = v10;
  if ((v26 & 1) == 0)
  {
    if (v27)
    {
LABEL_9:

      checkForErrorAndConsumeState(state:)();

      v17 = v24;
      v16 = v25;
      if ((*(v24 + 88))(v5, v25) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v18 = "[Error] Interval already ended";
      }

      else
      {
        (*(v17 + 8))(v5, v16);
        v18 = "";
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, v23, v20, v27, v18, v19, 2u);

      v10 = v22;
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v27 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v27 & 0xFFFFF800) != 0xD800)
  {
    if (v27 >> 16 <= 0x10)
    {
      v27 = &v28;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

void sub_10002B038()
{
  v0 = sub_100168088(&qword_100575E38);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - v2;
  RepublishingValueSubject.value.getter();
  if (v8)
  {
  }

  else if (os_feature_enabled_red_sun())
  {
    UITabBarController.mcui.getter();
    sub_10002B22C();
    type metadata accessor for NowPlayingMediaPlayerController();
    sub_10002B2B0(&qword_100575E28, 255, &type metadata accessor for NowPlayingMediaPlayerController);
    v4 = MCUINamespace<A>.installNowPlayingView<A>(controller:)();

    (*(v1 + 8))(v3, v0);
    v8 = v4;
    RepublishingValueSubject.send(_:)();

    RepublishingValueSubject.value.getter();
    v6 = v8;
    if (v8)
    {
      sub_10002B2B0(&qword_100575E40, v5, type metadata accessor for NowPlayingBootstrap);
      swift_unknownObjectRetain();
      dispatch thunk of NowPlayingViewController.delegate.setter();
    }

    sub_10002B2F8();
  }
}

uint64_t sub_10002B22C()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 48);
  }

  else
  {
    type metadata accessor for NowPlayingMediaPlayerController();
    swift_allocObject();

    v1 = NowPlayingMediaPlayerController.init(asPartOf:)();
    *(v0 + 48) = v1;
  }

  return v1;
}

uint64_t sub_10002B2B0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_10002B2F8()
{
  v55 = *v0;
  v1 = sub_100168088(&qword_100575C10);
  __chkstk_darwin(v1 - 8);
  v65 = &v45 - v2;
  v3 = sub_100168088(&qword_100575E48);
  v4 = *(v3 - 8);
  v63 = v3;
  v64 = v4;
  __chkstk_darwin(v3);
  v58 = &v45 - v5;
  v49 = sub_100168088(&unk_100580450);
  v50 = *(v49 - 8);
  __chkstk_darwin(v49);
  v7 = &v45 - v6;
  v46 = sub_100168088(&unk_10057DE20);
  v48 = *(v46 - 8);
  __chkstk_darwin(v46);
  v9 = &v45 - v8;
  v10 = sub_100168088(&qword_100575E50);
  v11 = *(v10 - 8);
  v51 = v10;
  v52 = v11;
  __chkstk_darwin(v10);
  v13 = &v45 - v12;
  v54 = sub_100168088(&qword_100575E58);
  v56 = *(v54 - 8);
  __chkstk_darwin(v54);
  v47 = &v45 - v14;
  v15 = sub_100168088(&qword_100575E60);
  v16 = *(v15 - 8);
  v59 = v15;
  v60 = v16;
  __chkstk_darwin(v15);
  v53 = &v45 - v17;
  v18 = sub_100168088(&qword_100575E68);
  v19 = *(v18 - 8);
  v61 = v18;
  v62 = v19;
  __chkstk_darwin(v18);
  v57 = &v45 - v20;
  v45 = v0;
  dispatch thunk of PlaybackController.$nowPlayingItem.getter();
  dispatch thunk of PlaybackController.$isPlaying.getter();
  v21 = sub_10002B22C();
  swift_beginAccess();
  v22 = *(v21 + 264);

  v66 = v22;
  sub_100168088(&qword_100575E70);
  sub_100009FAC(&qword_100575E78, &unk_10057DE20);
  sub_100009FAC(&unk_100580460, &unk_100580450);
  sub_100009FAC(&qword_100575E80, &qword_100575E70);
  v23 = v46;
  v24 = v49;
  Publisher.combineLatest<A, B>(_:_:)();

  (*(v50 + 8))(v7, v24);
  (*(v48 + 8))(v9, v23);
  v25 = swift_allocObject();
  *(v25 + 16) = v55;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_10002C06C;
  *(v26 + 24) = v25;
  sub_100168088(&qword_100575E88);
  sub_100009FAC(&qword_100575E90, &qword_100575E50);
  v27 = v47;
  v28 = v51;
  Publisher.map<A>(_:)();

  (*(v52 + 8))(v13, v28);
  v29 = v45;
  v66 = v45[7];
  v30 = sub_100168088(&qword_100575E98);
  v31 = sub_100168088(&qword_100575EA0);
  v32 = sub_100009FAC(&qword_100575EA8, &qword_100575E98);
  v33 = v58;
  Publisher.nonNilValues<A>()();
  sub_100009FAC(&qword_100575EB0, &qword_100575E58);
  v66 = v30;
  v67 = v31;
  v68 = v32;
  swift_getOpaqueTypeConformance2();
  v35 = v53;
  v34 = v54;
  v36 = v63;
  Publisher.combineLatest<A>(_:)();
  (*(v64 + 8))(v33, v36);
  (*(v56 + 8))(v27, v34);
  sub_10002BD04();
  v37 = static OS_dispatch_queue.main.getter();
  v66 = v37;
  v38 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v39 = v65;
  (*(*(v38 - 8) + 56))(v65, 1, 1, v38);
  sub_100009FAC(&qword_100575EB8, &qword_100575E60);
  sub_10002B2B0(&qword_100575C40, 255, sub_10002BD04);
  v40 = v57;
  v41 = v59;
  Publisher.receive<A>(on:options:)();
  sub_100009104(v39, &qword_100575C10);

  (*(v60 + 8))(v35, v41);
  sub_100009FAC(&qword_100575EC0, &qword_100575E68);
  v42 = v61;
  v43 = Publisher<>.sink(receiveValue:)();
  (*(v62 + 8))(v40, v42);
  v29[5] = v43;
}

uint64_t sub_10002BCCC()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10002BD04()
{
  result = qword_1005729D0;
  if (!qword_1005729D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1005729D0);
  }

  return result;
}

uint64_t sub_10002BD50(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = sub_100168088(&qword_100575ED0);
  return v3(v4, v5, a1 + *(v6 + 64));
}

uint64_t sub_10002BDC0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = a1;
    v9 = MPModelObject.contentId.getter();
    v11 = v9;
    v13 = v12;
    v14 = v10;
    if (v10 <= 1u)
    {
      if (v10)
      {
        v18 = [v9 URIRepresentation];
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v15 = URL.absoluteString.getter();
        v17 = v19;
        (*(v5 + 8))(v7, v4);
      }

      else
      {
        v24[0] = v9;
        sub_1000366D8();
        v15 = BinaryInteger.description.getter();
        v17 = v16;
      }

      goto LABEL_8;
    }

    if (v10 == 2)
    {

      v15 = v11;
      v17 = v13;
LABEL_8:
      type metadata accessor for EpisodeEntity();
      v24[0] = v15;
      v24[1] = v17;
      sub_10002B2B0(&qword_100575ED8, 255, &type metadata accessor for EpisodeEntity);
      EntityIdentifier.init<A>(for:identifier:)();

      sub_1001CEA54(v11, v13, v14);
      v20 = type metadata accessor for EntityIdentifier();
      return (*(*(v20 - 8) + 56))(a2, 0, 1, v20);
    }
  }

  v22 = type metadata accessor for EntityIdentifier();
  v23 = *(*(v22 - 8) + 56);

  return v23(a2, 1, 1, v22);
}

uint64_t sub_10002C074(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10002C0E0@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for ChannelLockupGenerator();
  v3 = swift_allocObject();
  a1[3] = v2;
  result = sub_100283980(&qword_10057AFF8, type metadata accessor for ChannelLockupGenerator);
  a1[4] = result;
  *a1 = v3;
  return result;
}

void sub_10002C164(void *a1)
{
  v3 = sub_100168088(&qword_10057D398);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = objc_opt_self();
  v7 = [v6 sharedApplication];
  v8 = [v7 launchedToTest];

  if ((v8 & 1) == 0)
  {
    v9 = [v6 sharedApplication];
    v10 = [objc_opt_self() standardUserDefaults];
    v11 = String._bridgeToObjectiveC()();
    v12 = [v10 stringForKey:v11];

    if (!v12)
    {
      return;
    }
  }

  v13 = a1;
  PPTViewControllerProxy.init(tabBarController:)();
  v14 = type metadata accessor for PPTViewControllerProxy();
  (*(*(v14 - 8) + 56))(v5, 0, 1, v14);
  v15 = OBJC_IVAR____TtC8Podcasts11AppDelegate_pptViewHierarchyProxy;
  swift_beginAccess();
  sub_10002C62C(v5, v1 + v15);
  swift_endAccess();
}

uint64_t sub_10002C4C8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002C560(char *a1)
{
  v2 = *((swift_isaMask & *a1) + 0x180);
  v3 = type metadata accessor for OperationResult();
  (*(*(v3 - 8) + 8))(&a1[v2], v3);
}

uint64_t sub_10002C62C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_10057D398);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_10002C69C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for NSUserDefaults.Name();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ([objc_opt_self() isRunningOnInternalOS])
  {
    sub_100009F1C(0, &qword_100579A00);
    (*(v5 + 104))(v7, enum case for NSUserDefaults.Name.shared(_:), v4);
    sub_100024384(&unk_10057E7B0, &qword_100579A00);
    BaseObjectGraph.inject<A>(_:named:)();
    (*(v5 + 8))(v7, v4);
    v8 = v13;
    static UserDefaultsKey<>.demoMode.getter();
    NSUserDefaults.subscript.getter();

    if ((v12[7] & 1) == 0)
    {
      v9 = [objc_allocWithZone(UIScreenEdgePanGestureRecognizer) initWithTarget:v2 action:"handleDebugActivationFrom:"];
      [v9 setEdges:8];
      v10 = [a1 view];
      if (!v10)
      {
        __break(1u);
        return;
      }

      v11 = v10;
      [v10 addGestureRecognizer:v9];

      v8 = v11;
    }
  }
}

uint64_t sub_10002C914()
{
  v1 = v0;
  v72 = sub_100168088(&qword_10057E6A8);
  v70 = *(v72 - 8);
  __chkstk_darwin(v72);
  v69 = v49 - v2;
  v75 = sub_100168088(&qword_10057E6B0);
  v73 = *(v75 - 8);
  __chkstk_darwin(v75);
  v71 = v49 - v3;
  v4 = sub_100168088(&qword_10057E6B8);
  v65 = *(v4 - 8);
  __chkstk_darwin(v4);
  v74 = v49 - v5;
  v6 = sub_100168088(&unk_10057E6C0);
  v63 = *(v6 - 8);
  v64 = v6;
  __chkstk_darwin(v6);
  v62 = v49 - v7;
  v8 = sub_100168088(&qword_100575C10);
  __chkstk_darwin(v8 - 8);
  v61 = v49 - v9;
  v60 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v60);
  v59 = v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v11 - 8);
  v58 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v54 = *(v55 - 8);
  __chkstk_darwin(v55);
  v56 = v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for NSNotificationCenter.Publisher();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100168088(&qword_10057E6D0);
  v53 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = v49 - v19;
  v21 = sub_100168088(&qword_10057E6D8);
  v57 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = v49 - v22;
  v24 = sub_100168088(&qword_10057E6E0);
  v67 = *(v24 - 8);
  v68 = v24;
  result = __chkstk_darwin(v24);
  v66 = v49 - v26;
  if (*(v1 + OBJC_IVAR____TtC8Podcasts11AppDelegate_flowController))
  {
    v27 = *(v1 + OBJC_IVAR____TtC8Podcasts11AppDelegate_flowController);
    type metadata accessor for BaseFlowController();
    result = swift_dynamicCastClass();
    if (result)
    {
      v49[2] = result;
      v28 = objc_opt_self();
      v50 = v4;
      v29 = v28;
      v52 = v27;
      swift_unknownObjectRetain();
      v30 = [v29 defaultCenter];
      v31 = @"MTSyncControllerSubscriptionSyncCompleted";
      NSNotificationCenter.publisher(for:object:)();

      sub_10002C074(&qword_10057E6E8, &type metadata accessor for NSNotificationCenter.Publisher);
      Publisher.first()();
      (*(v15 + 8))(v17, v14);
      type metadata accessor for LibraryDataProvider(0);

      BaseObjectGraph.inject<A>(_:)();

      v32 = v76;
      *(swift_allocObject() + 16) = v32;
      static Subscribers.Demand.unlimited.getter();
      sub_100168088(&qword_10057E6F0);
      v51 = v1;
      v49[1] = &protocol conformance descriptor for Publishers.First<A>;
      sub_100009FAC(&qword_10057E6F8, &qword_10057E6D0);
      sub_100009FAC(&unk_10057E700, &qword_10057E6F0);
      Publisher<>.flatMap<A>(maxPublishers:_:)();

      (*(v53 + 8))(v20, v18);
      v33 = sub_100009F1C(0, &qword_1005729D0);
      (*(v54 + 104))(v56, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v55);
      static DispatchQoS.unspecified.getter();
      v76 = &_swiftEmptyArrayStorage;
      sub_10002C074(&qword_1005743B0, &type metadata accessor for OS_dispatch_queue.Attributes);
      sub_100168088(&unk_1005729E0);
      sub_100009FAC(&qword_1005743C0, &unk_1005729E0);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v34 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v76 = v34;
      v35 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
      v36 = v61;
      (*(*(v35 - 8) + 56))(v61, 1, 1, v35);
      v37 = sub_100009FAC(&unk_10057E710, &qword_10057E6D8);
      v38 = sub_100024384(&qword_100575C40, &qword_1005729D0);
      v39 = v66;
      Publisher.receiveAndSubscribe<A>(on:options:)();
      sub_100009104(v36, &qword_100575C10);

      (*(v57 + 8))(v23, v21);
      v76 = v21;
      v77 = v33;
      v78 = v37;
      v79 = v38;
      swift_getOpaqueTypeConformance2();
      v40 = v62;
      v41 = v68;
      Publisher.first()();
      sub_100009FAC(&qword_10057E720, &unk_10057E6C0);
      swift_unknownObjectRetain();
      v42 = v64;
      Publisher<>.sink(receiveValue:)();

      (*(v63 + 8))(v40, v42);
      swift_beginAccess();
      sub_100168088(&unk_1005783F0);
      sub_100009FAC(&unk_10057A070, &unk_1005783F0);
      AnyCancellable.store<A>(in:)();
      swift_endAccess();

      sub_100168088(&qword_10057E728);
      v43 = v69;
      Publisher.map<A>(_:)();
      v76 = 0;
      v77 = 0;
      sub_100168088(&qword_10057E730);
      sub_100009FAC(&qword_10057E738, &qword_10057E6A8);
      v45 = v71;
      v44 = v72;
      Publisher.scan<A>(_:_:)();
      (*(v70 + 8))(v43, v44);
      sub_100168088(&qword_10057E740);
      sub_100009FAC(&qword_10057E748, &qword_10057E6B0);
      v47 = v74;
      v46 = v75;
      Publisher.compactMap<A>(_:)();
      (*(v73 + 8))(v45, v46);
      sub_100009FAC(&unk_10057E750, &qword_10057E6B8);
      swift_unknownObjectRetain();
      v48 = v50;
      Publisher<>.sink(receiveValue:)();

      (*(v65 + 8))(v47, v48);
      swift_beginAccess();
      AnyCancellable.store<A>(in:)();
      swift_endAccess();
      swift_unknownObjectRelease();

      return (*(v67 + 8))(v39, v41);
    }
  }

  return result;
}

uint64_t sub_10002D764()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002D7AC(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC8Podcasts24FairPlayAssetsDownloader_statusUpdateHandler);
  v4 = *(v2 + OBJC_IVAR____TtC8Podcasts24FairPlayAssetsDownloader_statusUpdateHandler);
  *v3 = a1;
  v3[1] = a2;
  return sub_1000112B4(v4);
}

id sub_10002DA14()
{
  v1 = &v0[OBJC_IVAR____TtC8Podcasts25PlatformContentController_syncabilityController];
  v2 = type metadata accessor for PlatformContentController_Null();
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = &v0[OBJC_IVAR____TtC8Podcasts25PlatformContentController_platformImpl];
  v4[3] = v2;
  v4[4] = &off_1004E8FC8;
  *v4 = v3;
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  swift_beginAccess();
  sub_10002DC9C(v9, v1);
  swift_endAccess();
  v5 = &v0[OBJC_IVAR____TtC8Podcasts25PlatformContentController_syncToAppController];
  v6 = type metadata accessor for PlatformContentController();
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  v8.receiver = v0;
  v8.super_class = v6;
  return objc_msgSendSuper2(&v8, "init");
}

uint64_t sub_10002DAF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_10000F9A8(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_100024A58(v18, a5 & 1);
      v13 = sub_10000F9A8(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_100260DB0();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;

    return swift_unknownObjectRelease();
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

uint64_t sub_10002DC9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_10057B380);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002DD38(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2;
  return v3(&v5);
}

uint64_t sub_10002DD74(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *))
{
  v4 = a1;
  v5 = a2;
  return a3(&v4);
}

void sub_10002DDB8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = type metadata accessor for AsyncBlockOperation();
    WitnessTable = swift_getWitnessTable();
    sub_10002DF44(a1, v4, WitnessTable, &off_1004F25B8, &off_1004F2598);
  }
}

uint64_t sub_10002DF44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for OperationResult();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v22 - v12);
  v14 = *(a5 + 8);
  v23 = v5;
  v15 = v14(a2, a5);
  if (v15)
  {
    v16 = v15;
    v24[3] = v10;
    v17 = sub_10000E680(v24);
    v18 = *(v11 + 16);
    v18(v17, a1, v10);
    v16(v24);
    sub_1000112B4(v16);
    sub_100004590(v24);
  }

  else
  {
    v18 = *(v11 + 16);
  }

  v18(v13, a1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *v13;
    v20 = *(a4 + 88);
    swift_errorRetain();
    v20(v19, a2, a4);
  }

  else
  {
    (*(v11 + 8))(v13, v10);
  }

  return (*(a4 + 56))(a2, a4);
}

uint64_t sub_10002E154()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
  sub_100013CB4(v1);
  return v1;
}

id sub_10002E20C()
{
  v1 = OBJC_IVAR____TtC8Podcasts13BaseOperation_lock;
  [*(v0 + OBJC_IVAR____TtC8Podcasts13BaseOperation_lock) lock];
  v2 = OBJC_IVAR____TtC8Podcasts13BaseOperation__onFinishBlocks;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = *(v0 + v1);

  result = [v4 unlock];
  v6 = *(v3 + 16);
  if (!v6)
  {
  }

  v7 = 0;
  v8 = v3 + 40;
  while (v7 < *(v3 + 16))
  {
    ++v7;
    v9 = *(v8 - 8);

    v9(v10);

    v8 += 16;
    if (v6 == v7)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10002E2E8(char *a1)
{
  v2 = *((swift_isaMask & *a1) + 0x180);
  v3 = type metadata accessor for OperationResult();
  (*(*(v3 - 8) + 8))(&a1[v2], v3);
}

Swift::Void __swiftcall LibraryDataProvider.restorePreviouslyDownloadedEpisodes()()
{
  if (*(v0 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_downloadsRestoreController))
  {
    static os_log_type_t.default.getter();
    sub_100009F1C(0, &qword_1005748A0);
    v1 = static OS_os_log.restore.getter();
    os_log(_:dso:log:_:_:)();

    OS_dispatch_queue.sync<A>(execute:)();
    if (v5 == 1)
    {
      static os_log_type_t.default.getter();
      v2 = static OS_os_log.restore.getter();
      os_log(_:dso:log:_:_:)();
    }

    else
    {
      v3 = swift_allocObject();
      swift_weakInit();
      v4 = swift_allocObject();
      v4[2] = v3;
      v4[3] = UInt64.int64Representation.getter;
      v4[4] = 0;

      sub_10002E75C(sub_100030398, v4);
    }
  }
}

uint64_t sub_10002E6BC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002E6F4()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_10002E75C(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 2) = v2;
  *(v5 + 3) = a1;
  *(v5 + 4) = a2;
  v6 = sub_100168088(&unk_10057A690);
  v7 = objc_allocWithZone(v6);
  v8 = &v7[*((swift_isaMask & *v7) + 0x180)];
  *v8 = 0;
  v8[8] = 2;
  v9 = &v7[*((swift_isaMask & *v7) + 0x188)];
  *v9 = sub_10002F614;
  v9[1] = v5;
  v19.receiver = v7;
  v19.super_class = v6;

  v10 = objc_msgSendSuper2(&v19, "init");
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = &v10[OBJC_IVAR____TtC8Podcasts13BaseOperation_onError];
  v13 = *&v10[OBJC_IVAR____TtC8Podcasts13BaseOperation_onError];
  *v12 = sub_10027B8A8;
  v12[1] = v11;

  v14 = v10;
  sub_1000112B4(v13);

  v15 = sub_10002EA1C();
  sub_100168088(&unk_100574680);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1004007B0;
  *(v16 + 32) = v14;
  sub_100009F1C(0, &unk_10057A6A0);
  v17 = v14;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v15 addOperations:isa waitUntilFinished:{0, v19.receiver, v19.super_class}];
}

uint64_t sub_10002E964()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002E99C()
{

  return _swift_deallocObject(v0, 40, 7);
}

id sub_10002EA1C()
{
  v1 = *(v0 + 88);
  if (v1)
  {
    v2 = *(v0 + 88);
  }

  else
  {
    v3 = [objc_allocWithZone(NSOperationQueue) init];
    [v3 setMaxConcurrentOperationCount:1];
    v4 = *(v0 + 88);
    *(v0 + 88) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_10002EA9C()
{
  v1 = v0;
  *&v0[OBJC_IVAR____TtC8Podcasts19ChannelListObserver_currentValue] = _swiftEmptyArrayStorage;
  v2 = &v0[OBJC_IVAR____TtC8Podcasts19ChannelListObserver_didChange];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = OBJC_IVAR____TtC8Podcasts19ChannelListObserver_mangedContextProvider;
  *&v0[v3] = [objc_opt_self() sharedInstance];
  v4 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:kMTChannelEntityName];
  sub_100009F1C(0, &qword_1005751F0);
  sub_100168088(&unk_100574670);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1004007C0;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  *(v5 + 56) = &type metadata for String;
  v9 = sub_100022C18();
  *(v5 + 64) = v9;
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v5 + 96) = &type metadata for String;
  *(v5 + 104) = v9;
  *(v5 + 72) = v10;
  *(v5 + 80) = v11;
  v12 = NSPredicate.init(format:_:)();
  [v4 setPredicate:v12];

  sub_100168088(&unk_100574680);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1004007B0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = objc_allocWithZone(NSSortDescriptor);
  v15 = String._bridgeToObjectiveC()();

  v16 = [v14 initWithKey:v15 ascending:1];

  *(v13 + 32) = v16;
  sub_100009F1C(0, &qword_10057B1F0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v4 setSortDescriptors:isa];

  v18 = [*&v1[v3] privateQueueContext];
  v19 = [objc_allocWithZone(MTFetchedResultsController) initWithFetchRequest:v4 managedObjectContext:v18 sectionNameKeyPath:0 cacheName:0];
  *&v1[OBJC_IVAR____TtC8Podcasts19ChannelListObserver_channelObserver] = v19;
  sub_100168088(&qword_100574690);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100401B10;
  *(v20 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v20 + 40) = v21;
  *(v20 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v20 + 56) = v22;
  *(v20 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v20 + 72) = v23;
  *(v20 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v20 + 88) = v24;
  *(v20 + 96) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v20 + 104) = v25;
  *(v20 + 112) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v20 + 120) = v26;
  v27 = v19;
  v28 = Array._bridgeToObjectiveC()().super.isa;

  [v27 setPropertyKeys:v28];

  v40.receiver = v1;
  v40.super_class = type metadata accessor for ChannelListObserver();
  v29 = objc_msgSendSuper2(&v40, "init");
  v30 = OBJC_IVAR____TtC8Podcasts19ChannelListObserver_channelObserver;
  v31 = *&v29[OBJC_IVAR____TtC8Podcasts19ChannelListObserver_channelObserver];
  v32 = v29;
  [v31 setDelegate:v32];
  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_1001A3240;
  *(v34 + 24) = v33;
  v39[4] = sub_10002D950;
  v39[5] = v34;
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 1107296256;
  v39[2] = sub_10002D904;
  v39[3] = &unk_1004E2330;
  v35 = _Block_copy(v39);

  [v18 performBlockAndWait:v35];
  _Block_release(v35);
  LOBYTE(v35) = swift_isEscapingClosureAtFileLocation();

  if (v35)
  {
    __break(1u);
  }

  else
  {
    objc_sync_enter(v32);
    v37 = *&v29[v30];
    v38 = sub_10002F748(v37);

    *&v32[OBJC_IVAR____TtC8Podcasts19ChannelListObserver_currentValue] = v38;

    objc_sync_exit(v32);

    return v32;
  }

  return result;
}

uint64_t sub_10002F008()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002F07C(char a1)
{
  sub_1000044A0((v1 + 16), *(v1 + 40));
  v3 = dispatch thunk of MediaLibraryClientProtocol.mostRecentRestoreToken.getter();
  if (!v4)
  {
    return 2;
  }

  v5 = v3;
  v6 = v4;
  v7 = sub_100278B4C();
  v9 = v7;
  v10 = v8;
  if ((a1 & 1) == 0)
  {
    if (v8)
    {
      if (v5 == v7 && v6 == v8)
      {
      }

      else
      {
        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v15 & 1) == 0)
        {
          return 0;
        }
      }

      return 0xD000000000000023;
    }

    goto LABEL_19;
  }

  if (!v8)
  {
LABEL_18:

    return 1;
  }

  if (v5 == v7 && v6 == v8)
  {
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v12 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v16 = sub_100278B4C();
  if (!v17)
  {
LABEL_19:

    return 0;
  }

  if (v9 == v16 && v10 == v17)
  {

    return 0;
  }

  v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v18)
  {
    return 0;
  }

  return 0;
}

uint64_t sub_10002F298@<X0>(uint64_t a1@<X1>, void (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_10002F07C(1);
  if ((v8 & 0x100) != 0)
  {
    v15 = v8;
    if (v8 == 2)
    {
      if (!(v6 | v7))
      {
        static os_log_type_t.default.getter();
        sub_100009F1C(0, &qword_1005748A0);
        v11 = static OS_os_log.restore.getter();
LABEL_11:
        os_log(_:dso:log:_:_:)();

        v17 = 0;
        goto LABEL_12;
      }

      if (!(v6 ^ 1 | v7))
      {
        static os_log_type_t.error.getter();
        sub_100009F1C(0, &qword_1005748A0);
        v16 = static OS_os_log.restore.getter();
        os_log(_:dso:log:_:_:)();

        v17 = 1;
LABEL_12:
        result = (a2)(0, v17, 0, 0);
        goto LABEL_13;
      }
    }

    v18 = v6;
    v19 = v7;
    a2();
    result = sub_1000316C4(v18, v19, v15, 1);
    goto LABEL_13;
  }

  static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0);
  v9 = static OS_os_log.restore.getter();
  os_log(_:dso:log:_:_:)();

  sub_1000044A0((a1 + 16), *(a1 + 40));
  v10 = *(dispatch thunk of MediaLibraryClientProtocol.postRestoreCandidates()() + 16);

  static os_log_type_t.default.getter();
  v11 = static OS_os_log.restore.getter();
  if (!v10)
  {
    goto LABEL_11;
  }

  sub_100168088(&unk_100574670);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100400790;
  *(v12 + 56) = &type metadata for Int;
  *(v12 + 64) = &protocol witness table for Int;
  *(v12 + 32) = v10;
  os_log(_:dso:log:_:_:)();

  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v10;

  (a2)(v10, sub_10027B8B0, v13, 0);

LABEL_13:
  *a3 = 0;
  *(a3 + 8) = 0;
  return result;
}

uint64_t sub_10002F5DC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002F634()
{
  v0 = [objc_opt_self() defaultMediaLibrary];
  v1 = [v0 valueForDatabaseProperty:MTMediaLibraryRestoreTokenProperty];

  if (v1)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_100009104(v6, &unk_1005783D0);
    return 0;
  }
}

unint64_t sub_10002F748(void *a1)
{
  v1 = a1;
  v11 = 0;
  v2 = [a1 managedObjectContext];
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = &v11;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1001A3238;
  *(v4 + 24) = v3;
  aBlock[4] = sub_10002D7F0;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002D904;
  aBlock[3] = &unk_1004E22B8;
  v5 = _Block_copy(aBlock);
  v6 = v1;

  [v2 performBlockAndWait:v5];
  _Block_release(v5);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
LABEL_9:
    type metadata accessor for LegacyLockup();

    v9 = _bridgeCocoaArray<A>(_:)();

    swift_bridgeObjectRelease_n();
    v7 = v9;
    goto LABEL_7;
  }

  if (v11)
  {
    v7 = v11;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  if (v7 >> 62)
  {
    goto LABEL_9;
  }

  dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  type metadata accessor for LegacyLockup();

LABEL_7:

  return v7;
}

uint64_t sub_10002F964()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10002FA08()
{
  v1 = String._bridgeToObjectiveC()();
  [v0 willChangeValueForKey:v1];

  v2 = OBJC_IVAR____TtC8Podcasts13BaseOperation_lock;
  [*&v0[OBJC_IVAR____TtC8Podcasts13BaseOperation_lock] lock];
  if (v0[OBJC_IVAR____TtC8Podcasts13BaseOperation__state] != 2)
  {
    v0[OBJC_IVAR____TtC8Podcasts13BaseOperation__state] = 1;
  }

  [*&v0[v2] unlock];
  v3 = String._bridgeToObjectiveC()();
  [v0 didChangeValueForKey:v3];
}

BOOL sub_10002FAF4()
{
  v1 = OBJC_IVAR____TtC8Podcasts13BaseOperation_lock;
  [*(v0 + OBJC_IVAR____TtC8Podcasts13BaseOperation_lock) lock];
  v2 = *(v0 + OBJC_IVAR____TtC8Podcasts13BaseOperation__state);
  [*(v0 + v1) unlock];
  return v2 == 1;
}

void sub_10002FB54(id a1)
{
  if (a1)
  {
    v3 = [a1 horizontalSizeClass];
  }

  else
  {
    v3 = 0;
  }

  v4 = [v1 traitCollection];
  v5 = [v4 horizontalSizeClass];

  if (!a1 || v3 != v5)
  {
    v6 = OBJC_IVAR____TtC8Podcasts28PodcastsFlowTabBarController_flowController;
    swift_beginAccess();
    if (*&v1[v6])
    {
      type metadata accessor for ParentFlowController();
      if (swift_dynamicCastClass())
      {
        swift_unknownObjectRetain();
        v7 = [v1 traitCollection];
        UITraitCollection.interfaceMode.getter();

        ParentFlowController.interfaceMode.setter();
        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_10002FC8C(uint64_t a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5, void (*a6)(void), uint64_t a7)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong && (v14 = *(Strong + 48), v26 = a7, v15 = Strong, v25 = a1, v16 = swift_allocObject(), *(v16 + 16) = v15, *(v16 + 24) = 1, v17 = swift_allocObject(), *(v17 + 16) = sub_100030AE0, *(v17 + 24) = v16, v31 = sub_10002D7F0, v32 = v17, aBlock = _NSConcreteStackBlock, v28 = 1107296256, v29 = sub_10002D904, v30 = &unk_1004ED188, v18 = _Block_copy(&aBlock), , , , dispatch_sync(v14, v18), _Block_release(v18), LOBYTE(v14) = swift_isEscapingClosureAtFileLocation(), a7 = v26, , a1 = v25, , result = , (v14 & 1) != 0))
  {
    __break(1u);
  }

  else if (a4)
  {
    static os_log_type_t.error.getter();
    sub_100009F1C(0, &qword_1005748A0);
    v20 = static OS_os_log.restore.getter();
    sub_100168088(&unk_100574670);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_100400790;
    aBlock = a1;
    v28 = a2;
    LOBYTE(v29) = a3;
    sub_100030C30();
    v22 = Error.localizedDescription.getter();
    v24 = v23;
    *(v21 + 56) = &type metadata for String;
    *(v21 + 64) = sub_100022C18();
    *(v21 + 32) = v22;
    *(v21 + 40) = v24;
    os_log(_:dso:log:_:_:)();

    return (a6)(0);
  }

  else
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_100305300(a1, a2, a3, a6, a7);
    }
  }

  return result;
}

uint64_t sub_10002FF8C()
{

  return _swift_deallocObject(v0, 25, 7);
}

BOOL sub_10002FFD4()
{
  v1 = OBJC_IVAR____TtC8Podcasts13BaseOperation_lock;
  [*(v0 + OBJC_IVAR____TtC8Podcasts13BaseOperation_lock) lock];
  v2 = *(v0 + OBJC_IVAR____TtC8Podcasts13BaseOperation__state);
  [*(v0 + v1) unlock];
  return v2 == 2;
}

unint64_t sub_100030034()
{
  result = qword_100574638;
  if (!qword_100574638)
  {
    sub_100168310(&unk_100574640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100574638);
  }

  return result;
}

uint64_t sub_10003009C(uint64_t a1)
{
  v2 = *((swift_isaMask & *v1) + 0x170);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(a1);
  v6 = &v23.i8[-v5];
  v9 = *&v1[*((v8 & v7) + 0x1B0)];
  v10 = &v1[*((v8 & v7) + 0x1A8)];
  v11 = *v10;
  v24 = v10[1];
  v25 = v11;
  v12 = *((v8 & v7) + 0x1A0);
  v13 = *((v8 & v7) + 0x188);
  v14 = *((v8 & v7) + 0x190);
  v4.i64[0] = v2;
  v23 = *v15;
  *&v16 = vdupq_laneq_s64(v23, 1).u64[0];
  v28 = v14;
  *(&v16 + 1) = v13;
  v26 = vzip1q_s64(v4, v23);
  v27 = v16;
  v17 = type metadata accessor for StorageOperation();
  WitnessTable = swift_getWitnessTable();
  sub_100014CBC(v17, WitnessTable, v6);
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = v2;
  *(v20 + 24) = v23;
  *(v20 + 40) = v13;
  *(v20 + 48) = v14;
  *(v20 + 56) = v9;
  *(v20 + 64) = v19;
  v21 = v9;

  v25(&v1[v12], v6, sub_10003142C, v20);

  (*(v3 + 8))(v6, v2);
}

uint64_t sub_100030320()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100030358()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000303D0@<X0>(uint64_t a1@<X8>)
{
  v3 = *((swift_isaMask & *v1) + 0x198);
  swift_beginAccess();
  v4 = type metadata accessor for OperationResult();
  return (*(*(v4 - 8) + 16))(a1, &v1[v3], v4);
}

void sub_100030490(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"MTListenNowManagerListenNowContentDidChange" object:0];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained update];
}

void sub_100030504(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v8 = *a1;
  v9 = static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0);
  v10 = static OS_os_log.downloads.getter();
  v44 = a3;
  v45 = a4;
  v43 = v8;
  if (os_log_type_enabled(v10, v9))
  {
    v11 = a5;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v47 = v13;
    *v12 = 136446466;
    v15 = *&v11[OBJC_IVAR____TtC8Podcasts25SyncDownloadJobsOperation_sessionIdentifier];
    v14 = *&v11[OBJC_IVAR____TtC8Podcasts25SyncDownloadJobsOperation_sessionIdentifier + 8];
    v16 = v11[OBJC_IVAR____TtC8Podcasts25SyncDownloadJobsOperation_sessionIdentifier + 16];
    aBlock = 0x496E6F6973736553;
    v49 = 0xEB00000000203A44;
    if (v16)
    {
      v17 = 1936484398;
    }

    else
    {
      v17 = 0x7261646E6174732ELL;
    }

    if (v16)
    {
      v18 = 0xE400000000000000;
    }

    else
    {
      v18 = 0xE900000000000064;
    }

    v46._countAndFlagsBits = v15;
    v46._object = v14;

    v19._countAndFlagsBits = v17;
    v19._object = v18;
    String.append(_:)(v19);

    String.append(_:)(v46);

    v20 = sub_1000153E0(aBlock, v49, &v47);

    *(v12 + 4) = v20;
    *(v12 + 12) = 2050;
    v21 = *(*&v11[OBJC_IVAR____TtC8Podcasts25SyncDownloadJobsOperation_tasks] + 16);

    *(v12 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v10, v9, "Delete not running jobs from storage for session %{public}s. Number of running downloads %{public}ld", v12, 0x16u);
    sub_100004590(v13);
  }

  v22 = *&a5[OBJC_IVAR____TtC8Podcasts25SyncDownloadJobsOperation_tasks];
  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = 0;
    v25 = v22 + 32;
    v26 = v23 - 1;
    v27 = &_swiftEmptyArrayStorage;
    do
    {
      v28 = v25 + 40 * v24;
      v29 = v24;
      while (1)
      {
        if (v29 >= *(v22 + 16))
        {
          __break(1u);

          sub_100004590(&aBlock);

          __break(1u);
          return;
        }

        sub_100004428(v28, &aBlock);
        sub_10021A9A0(&aBlock, a5, &v46);
        sub_100004590(&aBlock);
        if ((v46._object & 1) == 0)
        {
          break;
        }

        ++v29;
        v28 += 40;
        if (v23 == v29)
        {
          goto LABEL_24;
        }
      }

      v42 = v25;
      v30 = v26;
      countAndFlagsBits = v46._countAndFlagsBits;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_100243930(0, *(v27 + 2) + 1, 1, v27);
      }

      v33 = *(v27 + 2);
      v32 = *(v27 + 3);
      if (v33 >= v32 >> 1)
      {
        v27 = sub_100243930((v32 > 1), v33 + 1, 1, v27);
      }

      v24 = v29 + 1;
      *(v27 + 2) = v33 + 1;
      *&v27[8 * v33 + 32] = countAndFlagsBits;
      v26 = v30;
      v34 = v30 == v29;
      v25 = v42;
    }

    while (!v34);
  }

  else
  {
    v27 = &_swiftEmptyArrayStorage;
  }

LABEL_24:
  v35 = *&a5[OBJC_IVAR____TtC8Podcasts25SyncDownloadJobsOperation_sessionIdentifier];
  v36 = *&a5[OBJC_IVAR____TtC8Podcasts25SyncDownloadJobsOperation_sessionIdentifier + 8];
  v37 = a5[OBJC_IVAR____TtC8Podcasts25SyncDownloadJobsOperation_sessionIdentifier + 16];
  v38 = [*(v43 + 16) newBackgroundContext];
  v39 = swift_allocObject();
  *(v39 + 16) = v35;
  *(v39 + 24) = v36;
  *(v39 + 32) = v37;
  *(v39 + 40) = v27;
  *(v39 + 48) = v38;
  *(v39 + 56) = v44;
  *(v39 + 64) = v45;
  v52 = sub_10021B5E4;
  v53 = v39;
  aBlock = _NSConcreteStackBlock;
  v49 = 1107296256;
  v50 = sub_10000F038;
  v51 = &unk_1004E5D18;
  v40 = _Block_copy(&aBlock);

  v41 = v38;

  [v41 performBlock:v40];
  _Block_release(v40);
}

unint64_t sub_100030C30()
{
  result = qword_10057A680;
  if (!qword_10057A680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057A680);
  }

  return result;
}

uint64_t sub_100030C84(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

char *sub_100030CA0(uint64_t a1, unint64_t a2)
{
  v3 = sub_100022C90(a1, a2);
  sub_100030CEC(&off_1004DE630);
  return v3;
}

uint64_t sub_100030CEC(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10003C524(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

__n128 sub_100030DD8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100030DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v56 = a4;
  v57 = a6;
  v61 = a2;
  v62 = a3;
  v12 = *(a5 - 8);
  __chkstk_darwin(a1);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for OperationResult();
  v58 = *(v15 - 8);
  v59 = v15;
  v16 = __chkstk_darwin(v15);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v55 = (&v53 - v20);
  v60 = *(a7 - 8);
  v21 = __chkstk_darwin(v19);
  v54 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v53 - v23;
  v25 = a8;
  v26 = type metadata accessor for Result();
  __chkstk_darwin(v26);
  v28 = &v53 - v27;
  (*(v29 + 16))(&v53 - v27, a1, v26);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v53 = *(v60 + 32);
    v53(v24, v28, a7);
    static os_log_type_t.error.getter();
    sub_100168088(&unk_100574670);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_100400790;
    v31 = v25;
    v32 = Error.localizedDescription.getter();
    v34 = v33;
    *(v30 + 56) = &type metadata for String;
    *(v30 + 64) = sub_100022C18();
    *(v30 + 32) = v32;
    *(v30 + 40) = v34;
    os_log(_:dso:log:_:_:)();

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v36 = Strong;
      v37 = v60;
      v38 = v54;
      (*(v60 + 16))(v54, v24, a7);
      v39 = _getErrorEmbeddedNSError<A>(_:)();
      if (v39)
      {
        v40 = v39;
        (*(v37 + 8))(v38, a7);
      }

      else
      {
        v40 = swift_allocError();
        v53(v48, v38, a7);
      }

      v49 = v55;
      *v55 = v40;
      v50 = v59;
      swift_storeEnumTagMultiPayload();
      v63 = v56;
      v64 = a5;
      v65 = v57;
      v66 = a7;
      v67 = v31;
      v51 = type metadata accessor for StorageOperation();
      WitnessTable = swift_getWitnessTable();
      sub_10002DF44(v49, v51, WitnessTable, &off_1004F25B8, &off_1004F2598);

      (*(v58 + 8))(v49, v50);
      return (*(v37 + 8))(v24, a7);
    }

    else
    {
      return (*(v60 + 8))(v24, a7);
    }
  }

  else
  {
    v41 = v25;
    (*(v12 + 32))(v14, v28, a5);
    static os_log_type_t.debug.getter();
    os_log(_:dso:log:_:_:)();
    swift_beginAccess();
    v42 = swift_unknownObjectWeakLoadStrong();
    if (v42)
    {
      v43 = v42;
      (*(v12 + 16))(v18, v14, a5);
      v44 = v59;
      swift_storeEnumTagMultiPayload();
      v63 = v56;
      v64 = a5;
      v65 = v57;
      v66 = a7;
      v67 = v41;
      v45 = type metadata accessor for StorageOperation();
      v46 = swift_getWitnessTable();
      sub_10002DF44(v18, v45, v46, &off_1004F25B8, &off_1004F2598);

      (*(v58 + 8))(v18, v44);
    }

    return (*(v12 + 8))(v14, a5);
  }
}

uint64_t sub_1000314A0(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
    return swift_errorRetain();
  }

  return result;
}

unint64_t sub_1000314C0(uint64_t a1, unint64_t a2, char a3)
{
  if (!a3)
  {
    _StringGuts.grow(_:)(34);

    v9 = 0xD000000000000020;
    v6._countAndFlagsBits = a1;
    v6._object = a2;
    String.append(_:)(v6);
    return v9;
  }

  if (a3 == 1)
  {
    _StringGuts.grow(_:)(18);

    v9 = 0xD000000000000010;
    swift_getErrorValue();
    v4._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v4);

    return v9;
  }

  v8 = 0xD00000000000003BLL;
  if (!(a1 ^ 1 | a2))
  {
    v8 = 0xD000000000000038;
  }

  if (a1 | a2)
  {
    return v8;
  }

  else
  {
    return 0xD000000000000037;
  }
}

uint64_t sub_10003163C(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
  }

  return result;
}

id sub_100031650(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10003967C;
  v4[3] = &unk_1004D8358;
  v4[4] = v2;
  return [v2 processListenNowEpisodes:a2 completion:v4];
}

uint64_t sub_1000316C4(uint64_t a1, uint64_t a2, char a3, char a4)
{
  if (a4)
  {
    return sub_1000316D0(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1000316D0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  if (!a3)
  {
  }

  return result;
}

void sub_10003172C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8Podcasts13BaseOperation_lock;
  [*(v1 + OBJC_IVAR____TtC8Podcasts13BaseOperation_lock) lock];
  v3 = *(v1 + OBJC_IVAR____TtC8Podcasts13BaseOperation__error);
  v4 = *(v1 + v2);
  swift_errorRetain();
  [v4 unlock];
  if (v3)
  {
    v5 = *(v1 + OBJC_IVAR____TtC8Podcasts13BaseOperation_onError);
    if (v5)
    {

      v5(v3);
      sub_1000112B4(v5);
    }
  }

  sub_10002E20C();

  sub_100031E00();
}

void sub_100031854(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(a2 + 24);
      ObjectType = swift_getObjectType();
      v7 = (*(v5 + 80))(ObjectType, v5);
      swift_unknownObjectRelease();
    }

    else
    {
      v7 = 0;
    }

    v8 = OBJC_IVAR____TtC8Podcasts13BaseOperation_lock;
    [*&v4[OBJC_IVAR____TtC8Podcasts13BaseOperation_lock] lock];
    *&v4[OBJC_IVAR____TtC8Podcasts13BaseOperation__error] = v7;
    swift_errorRetain();

    [*&v4[v8] unlock];
  }
}

uint64_t sub_100031980(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100009F1C(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1000319E0(uint64_t a1, char a2)
{
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = sub_10002929C(a1, a2 & 1);
  v6 = objc_allocWithZone(MTUuidQueryObserver);
  v7 = String._bridgeToObjectiveC()();

  v8 = [v6 initWithEntityName:v7 predicate:v5];

  if (v8)
  {
    *(v2 + 16) = v8;
    [v8 startObserving];
    v9 = [*(v2 + 16) uuids];
    if (v9)
    {
      v10 = v9;
      v11 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v12 = *(v11 + 16);

      *(v2 + 24) = v12;
      v13 = *(v2 + 16);
      v14 = swift_allocObject();
      swift_weakInit();
      v18[4] = sub_100043C4C;
      v18[5] = v14;
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 1107296256;
      v18[2] = sub_100043B8C;
      v18[3] = &unk_1004E9A40;
      v15 = _Block_copy(v18);
      v16 = v13;

      v17 = [v16 addResultsChangedHandler:v15];
      _Block_release(v15);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100031BD4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100031C0C()
{
  v1 = OBJC_IVAR____TtC8Podcasts13BaseOperation_lock;
  [*(v0 + OBJC_IVAR____TtC8Podcasts13BaseOperation_lock) lock];
  v2 = *(v0 + OBJC_IVAR____TtC8Podcasts13BaseOperation__error);
  v3 = *(v0 + v1);
  swift_errorRetain();
  [v3 unlock];
  return v2;
}

void sub_100031C74(void *a1, uint64_t a2, void *a3, SEL *a4)
{
  v7 = objc_opt_self();
  v8 = a3;
  v12 = a1;
  v9 = [v7 sharedApplication];
  v10 = [v9 delegate];

  if (v10)
  {
    if ([v10 respondsToSelector:*a4])
    {
      v11 = [v7 sharedApplication];
      [v10 *a4];
    }

    else
    {
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_100031E00()
{
  v1 = String._bridgeToObjectiveC()();
  [v0 willChangeValueForKey:v1];

  v2 = String._bridgeToObjectiveC()();
  [v0 willChangeValueForKey:v2];

  v3 = OBJC_IVAR____TtC8Podcasts13BaseOperation_lock;
  [*&v0[OBJC_IVAR____TtC8Podcasts13BaseOperation_lock] lock];
  if (v0[OBJC_IVAR____TtC8Podcasts13BaseOperation__state] != 2)
  {
    v0[OBJC_IVAR____TtC8Podcasts13BaseOperation__state] = 2;
  }

  [*&v0[v3] unlock];
  v4 = String._bridgeToObjectiveC()();
  [v0 didChangeValueForKey:v4];

  v5 = String._bridgeToObjectiveC()();
  [v0 didChangeValueForKey:v5];
}

void sub_100032178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000321AC()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t type metadata accessor for ForegroundSyncUtil()
{
  result = qword_10057F7D8;
  if (!qword_10057F7D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100032270()
{
  result = type metadata accessor for Date();
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

id sub_1000323A4()
{
  result = [objc_allocWithZone(type metadata accessor for ForegroundSyncUtil()) init];
  static ForegroundSyncUtil.shared = result;
  return result;
}

char *sub_100032410()
{
  v1 = sub_100168088(&qword_100574760);
  __chkstk_darwin(v1 - 8);
  v51 = &v44 - v2;
  v49 = type metadata accessor for LibraryImageProvider();
  v50 = *(v49 - 8);
  __chkstk_darwin(v49);
  v48 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR___MTForegroundSyncUtil_defaults;
  v47 = objc_opt_self();
  *(v0 + v10) = [v47 _applePodcastsFoundationSharedUserDefaults];
  v45 = OBJC_IVAR___MTForegroundSyncUtil_workQueue;
  v44 = sub_100009F1C(0, &qword_1005729D0);
  (*(v7 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v6);
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000E5CC(&qword_1005743B0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100168088(&unk_1005729E0);
  sub_100015E58(&qword_1005743C0, &unk_1005729E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v11 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v12 = v46;
  *&v46[v45] = v11;
  v13 = OBJC_IVAR___MTForegroundSyncUtil_syncController;
  *&v12[v13] = [objc_opt_self() sharedInstance];
  v14 = v12;
  v15 = [objc_opt_self() sharedInstance];
  v53 = sub_100009F1C(0, &unk_100572A00);
  v54 = &protocol witness table for IMURLBag;
  aBlock[0] = v15;
  v16 = type metadata accessor for MediaRequestController();
  v17 = [objc_allocWithZone(v16) init];
  v61 = v16;
  v62 = &protocol witness table for MediaRequestController;
  v60 = v17;
  v18 = type metadata accessor for MAPICategoriesProvider();
  swift_allocObject();
  v19 = MAPICategoriesProvider.init(mediaRequestController:)();
  v61 = v18;
  v62 = &protocol witness table for MAPICategoriesProvider;
  v60 = v19;
  v20 = v48;
  static LibraryImageProvider.background.getter();
  type metadata accessor for CategoryIngester();
  v21 = swift_allocObject();
  v22 = v49;
  v21[5] = v49;
  v21[6] = &protocol witness table for LibraryImageProvider;
  v23 = sub_10000E680(v21 + 2);
  (*(v50 + 32))(v23, v20, v22);
  v24 = [v47 _applePodcastsFoundationSharedUserDefaults];
  v25 = [v24 objectForKey:kMTLastCategoriesSyncDateDefaultKey];

  if (v25)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v57 = 0u;
    v58 = 0u;
  }

  v59[0] = v57;
  v59[1] = v58;
  v26 = v51;
  if (*(&v58 + 1))
  {
    v27 = type metadata accessor for Date();
    v28 = swift_dynamicCast();
    (*(*(v27 - 8) + 56))(v26, v28 ^ 1u, 1, v27);
  }

  else
  {
    sub_100009104(v59, &unk_1005783D0);
    v29 = type metadata accessor for Date();
    (*(*(v29 - 8) + 56))(v26, 1, 1, v29);
  }

  v30 = OBJC_IVAR___MTForegroundSyncUtil_categoriesSyncUtil;
  static OS_dispatch_queue.uiAssetPreparationQueue.getter();
  v31 = [objc_opt_self() sharedInstance];
  v32 = [v31 importContext];

  type metadata accessor for CategoriesSyncUtil();
  swift_allocObject();
  *&v14[v30] = CategoriesSyncUtil.init(categoriesSyncThresholdProvider:categoriesProvider:categoryIngester:lastCategoriesSyncDate:queue:ctx:)();
  v33 = &v14[OBJC_IVAR___MTForegroundSyncUtil_storefrontChangeObserver];
  *v33 = 0u;
  v33[1] = 0u;
  static Date.distantPast.getter();
  *&v14[OBJC_IVAR___MTForegroundSyncUtil____lazy_storage___formatter] = 0;
  v14[OBJC_IVAR___MTForegroundSyncUtil_needsSyncing] = 1;
  v34 = type metadata accessor for ForegroundSyncUtil();
  v56.receiver = v14;
  v56.super_class = v34;
  v35 = objc_msgSendSuper2(&v56, "init");
  v36 = objc_opt_self();
  v37 = v35;
  v38 = [v36 sharedCoordinator];
  v39 = *&v37[OBJC_IVAR___MTForegroundSyncUtil_categoriesSyncUtil];
  v54 = sub_10031FE88;
  v55 = v39;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  v53 = &unk_1004EDDC8;
  v40 = _Block_copy(aBlock);

  v41 = [v38 registerCleanupHandler:v40];
  _Block_release(v40);

  v53 = sub_100009F1C(0, &qword_10057F7F0);
  aBlock[0] = v41;
  v42 = OBJC_IVAR___MTForegroundSyncUtil_storefrontChangeObserver;
  swift_beginAccess();
  sub_1000333FC(aBlock, &v37[v42]);
  swift_endAccess();

  return v37;
}

uint64_t sub_100032C70@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for ShowLockupStyle();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for LibraryShowLockup();
  (*(v7 + 16))(v9, a2, v6);
  v10 = a1;
  static MetricsDataConfiguration.default.getter();
  result = sub_100032D90(v10, v9, v12);
  *a3 = result;
  return result;
}

uint64_t sub_100032D90(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100168088(&qword_100574038);
  __chkstk_darwin(v7 - 8);
  v9 = v36 - v8;
  v10 = sub_100168088(&unk_100578C10);
  __chkstk_darwin(v10 - 8);
  v12 = v36 - v11;
  v13 = type metadata accessor for ShowLockupStyle.LockupStyleOptions();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a1 uuid];
  if (v17)
  {
    v40 = v9;
    v48 = v3;
    v18 = v17;
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    [a1 storeCollectionId];
    v50 = AdamID.init(rawValue:)();
    v49 = sub_10003346C(a1);
    v51 = v22;
    ShowLockupStyle.subline.getter();
    v43 = MTPodcast.lockupString(with:)();
    (*(v14 + 8))(v16, v13);
    if (ShowLockupStyle.includesOfferButton.getter())
    {
      type metadata accessor for LibraryFollowAction();
      swift_allocObject();

      v23 = LibraryFollowAction.init(podcastUuid:displaySuccessHUD:)();
    }

    else
    {
      v23 = 0;
    }

    MTPodcast.artworkModel.getter();
    v26 = [a1 title];
    if (v26)
    {
      v27 = v26;
      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v28;
    }

    else
    {
      v42 = 0;
      v41 = 0;
    }

    v47 = v12;
    [a1 addedDate];

    v29 = sub_100034D1C(a1, a2, v49, v51, a3);
    v30 = v29;
    v45 = v21;
    v46 = v19;
    v44 = v23;
    v31 = v40;
    if (v29)
    {
      v32 = type metadata accessor for Action();
      v29 = sub_100036A24();
    }

    else
    {
      v32 = 0;
      *(&v52 + 1) = 0;
      v53 = 0;
    }

    *&v52 = v30;
    v54 = v32;
    v55 = v29;
    v38 = sub_100036C30(a1);
    v37 = sub_100037100(a1);
    v36[1] = [a1 subscribed];
    v36[0] = [a1 isExplicit];
    *&v57 = v50;
    sub_1000366D8();
    BinaryInteger.description.getter();
    static MetricsIDType.itsContentID.getter();
    static MetricsTargetType.lockup.getter();
    v40 = a2;
    static MetricsContentKind.show.getter();
    v39 = a1;
    static ImpressionMetrics.shelfItem(id:idType:uniqueID:impressionType:kind:name:)();

    v33 = type metadata accessor for ImpressionMetrics();
    (*(*(v33 - 8) + 56))(v31, 0, 1, v33);
    LOBYTE(v57) = 1;
    v25 = dispatch thunk of LibraryShowLockup.__allocating_init(uuid:adamId:icon:name:title:addedDate:subtitles:ordinal:rating:buttonAction:clickAction:providerAction:playAction:contextAction:isSubscribed:isExplicit:shelfUniqueId:impressionMetrics:)();
    v57 = *a3;
    sub_100009104(&v57, &unk_100574650);
    v58[0] = *(a3 + 16);
    sub_100009104(v58, &unk_100573A90);
    v56 = *(a3 + 24);
    sub_100009104(&v56, &unk_100574660);
    sub_100037470(*(a3 + 32));

    v34 = type metadata accessor for ShowLockupStyle();
    (*(*(v34 - 8) + 8))(v40, v34);
  }

  else
  {
    v24 = type metadata accessor for ShowLockupStyle();
    (*(*(v24 - 8) + 8))(a2, v24);
    v52 = *a3;
    sub_100009104(&v52, &unk_100574650);
    *&v57 = *(a3 + 16);
    sub_100009104(&v57, &unk_100573A90);
    v58[0] = *(a3 + 24);
    sub_100009104(v58, &unk_100574660);
    sub_100037470(*(a3 + 32));

    return 0;
  }

  return v25;
}

uint64_t sub_1000333FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&unk_1005783D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003346C(void *a1)
{
  v2 = sub_100168088(&qword_100575048);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  v5 = type metadata accessor for ShowLockupStyle.LockupStyleOptions();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  ShowLockupStyle.title.getter();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100009104(v4, &qword_100575048);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v9 = MTPodcast.lockupString(with:)();
    if (*(v9 + 2))
    {
      v10 = *(v9 + 4);

      (*(v6 + 8))(v8, v5);
      return v10;
    }

    (*(v6 + 8))(v8, v5);
  }

  v11 = [a1 title];
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v10;
}

char *MTPodcast.lockupString(with:)()
{
  if ([v0 subscribed])
  {
    v1 = [v0 showTypeInFeedResolvedValue];
    v2 = [v0 newEpisodesCount];
    if (v1 == 2)
    {
      if (v2 || [v0 newTrailersCount])
      {
        v3 = ShowLockupStyle.LockupStyleOptions.followedSerialShowStyle.getter();
      }

      else
      {
        v3 = ShowLockupStyle.LockupStyleOptions.followedSerialShowFallbackStyle.getter();
      }
    }

    else
    {
      if (v2 || [v0 newTrailersCount])
      {
        goto LABEL_14;
      }

      v3 = ShowLockupStyle.LockupStyleOptions.followedEpisodicShowFallbackStyle.getter();
    }

LABEL_10:
    if (v3 != 15)
    {
      goto LABEL_15;
    }

LABEL_14:
    v3 = ShowLockupStyle.LockupStyleOptions.followedEpisodicShowStyle.getter();
    goto LABEL_15;
  }

  if ([v0 newEpisodesCount] || objc_msgSend(v0, "newTrailersCount") || (v3 = ShowLockupStyle.LockupStyleOptions.unfollowedShowFallbackStyle.getter(), v3 == 15))
  {
    v3 = ShowLockupStyle.LockupStyleOptions.unfollowedShowStyle.getter();
    goto LABEL_10;
  }

LABEL_15:

  return MTPodcast.lockupString(with:)(v3);
}

char *MTPodcast.lockupString(with:)(char a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v10 = &v114 - v9;
  result = _swiftEmptyArrayStorage;
  switch(a1)
  {
    case 1:
      v38 = v8;
      [v1 latestEpisodeAvailabilityTime];
      if (v39 <= 0.0)
      {
        return _swiftEmptyArrayStorage;
      }

      [v1 latestEpisodeAvailabilityTime];
      Date.init()();
      Date.init()();
      v40 = static AbbreviatedTimeIntervalFormatter.string(from:relativeTo:currentYearReferenceDate:)();
      v42 = v41;
      v43 = *(v4 + 8);
      v43(v7, v38);
      v43(v10, v38);
      v44 = &selRef_newEpisodesCount;
      if ([v1 newEpisodesCount] <= 0)
      {
        v44 = &selRef_newTrailersCount;
        if ([v1 newTrailersCount] <= 0)
        {
          goto LABEL_49;
        }

        v45 = "NEW_TRAILERS_AND_LAST_UPDATED_DATE_FORMAT";
      }

      else
      {
        v45 = "NEW_EPISODES_AND_LAST_UPDATED_DATE_FORMAT";
      }

      v50 = (v45 - 32);
      v51 = 0xD000000000000029;
      goto LABEL_48;
    case 2:
      v46 = v8;
      [v1 latestEpisodeAvailabilityTime];
      if (v47 <= 0.0)
      {
        return _swiftEmptyArrayStorage;
      }

      [v1 latestEpisodeAvailabilityTime];
      Date.init()();
      Date.init()();
      v40 = static AbbreviatedTimeIntervalFormatter.string(from:relativeTo:currentYearReferenceDate:)();
      v42 = v48;
      v49 = *(v4 + 8);
      v49(v7, v46);
      v49(v10, v46);
      v44 = &selRef_newEpisodesCount;
      if ([v1 newEpisodesCount] > 0)
      {
        v50 = "_LAST_UPDATED_DATE_FORMAT";
        v51 = 0xD00000000000002ALL;
LABEL_48:
        v105 = v50 | 0x8000000000000000;
        v106._countAndFlagsBits = 0;
        v106._object = 0xE000000000000000;
        PFLocalizedString(_:comment:)(*&v51, v106);
        sub_100168088(&unk_100574670);
        v107 = swift_allocObject();
        v114 = xmmword_100400790;
        *(v107 + 16) = xmmword_100400790;
        v108 = [v1 *v44];
        *(v107 + 56) = &type metadata for Int64;
        *(v107 + 64) = &protocol witness table for Int64;
        *(v107 + 32) = v108;
        static String.localizedStringWithFormat(_:_:)();

        sub_100168088(&qword_100574690);
        v109 = swift_allocObject();
        *(v109 + 16) = v114;
        sub_100168088(&unk_100574670);
        v110 = swift_allocObject();
        *(v110 + 16) = v114;
        *(v110 + 56) = &type metadata for String;
        *(v110 + 64) = sub_100022C18();
        *(v110 + 32) = v40;
        *(v110 + 40) = v42;
        v111 = String.init(format:_:)();
        v113 = v112;

        result = v109;
        *(v109 + 32) = v111;
        *(v109 + 40) = v113;
        return result;
      }

      v44 = &selRef_newTrailersCount;
      if ([v1 newTrailersCount] > 0)
      {
        v50 = "EPISODES_COUNT_FORMAT";
        v51 = 0xD000000000000029;
        goto LABEL_48;
      }

LABEL_49:

      return _swiftEmptyArrayStorage;
    case 3:
    case 4:
      v12 = v8;
      [v1 latestEpisodeAvailabilityTime];
      if (v13 <= 0.0)
      {
        return _swiftEmptyArrayStorage;
      }

      [v1 latestEpisodeAvailabilityTime];
      Date.init()();
      Date.init()();
      v14 = static AbbreviatedTimeIntervalFormatter.string(from:relativeTo:currentYearReferenceDate:)();
      v16 = v15;
      v17 = *(v4 + 8);
      v17(v7, v12);
      v17(v10, v12);
      sub_100168088(&qword_100574690);
      v18 = swift_allocObject();
      v114 = xmmword_100400790;
      *(v18 + 16) = xmmword_100400790;
      v19._countAndFlagsBits = 0xD000000000000016;
      v19._object = 0x800000010046D600;
      v20._countAndFlagsBits = 0;
      v20._object = 0xE000000000000000;
      PFLocalizedString(_:comment:)(v19, v20);
      sub_100168088(&unk_100574670);
      v21 = swift_allocObject();
      *(v21 + 16) = v114;
      *(v21 + 56) = &type metadata for String;
      *(v21 + 64) = sub_100022C18();
      *(v21 + 32) = v14;
      *(v21 + 40) = v16;
      v22 = static String.localizedStringWithFormat(_:_:)();
      v24 = v23;

      goto LABEL_25;
    case 5:
      [v1 addedDate];
      if (v68 <= 0.0)
      {
        return _swiftEmptyArrayStorage;
      }

      [v1 addedDate];
      v70 = [objc_allocWithZone(NSDate) initWithTimeIntervalSinceReferenceDate:v69];
      v71 = [v70 microUnabbreviatedFriendlyDisplayString];

      v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v73;

      sub_100168088(&qword_100574690);
      result = swift_allocObject();
      *(result + 1) = xmmword_100400790;
      *(result + 4) = v72;
      goto LABEL_22;
    case 6:
      [v1 addedDate];
      if (v52 <= 0.0)
      {
        return _swiftEmptyArrayStorage;
      }

      [v1 addedDate];
      v54 = [objc_allocWithZone(NSDate) initWithTimeIntervalSinceReferenceDate:v53];
      v55 = [v54 microUnabbreviatedFriendlyDisplayString];

      v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v57;

      sub_100168088(&qword_100574690);
      v59 = swift_allocObject();
      v114 = xmmword_100400790;
      *(v59 + 16) = xmmword_100400790;
      v60 = 0x776F6C6C6F46;
      goto LABEL_28;
    case 7:
      [v1 latestEpisodeAvailabilityTime];
      if (v77 <= 0.0)
      {
        return _swiftEmptyArrayStorage;
      }

      [v1 latestEpisodeAvailabilityTime];
      v79 = [objc_allocWithZone(NSDate) initWithTimeIntervalSinceReferenceDate:v78];
      v80 = [v79 microUnabbreviatedFriendlyDisplayString];

      v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v81;

      sub_100168088(&qword_100574690);
      v59 = swift_allocObject();
      v114 = xmmword_100400790;
      *(v59 + 16) = xmmword_100400790;
      v60 = 0x696669646F4DLL;
LABEL_28:
      v82._countAndFlagsBits = v60 & 0xFFFFFFFFFFFFLL | 0x6465000000000000;
      v82._object = 0xEB00000000402520;
      v83._countAndFlagsBits = 0;
      v83._object = 0xE000000000000000;
      PFLocalizedString(_:comment:)(v82, v83);
      sub_100168088(&unk_100574670);
      v84 = swift_allocObject();
      *(v84 + 16) = v114;
      *(v84 + 56) = &type metadata for String;
      *(v84 + 64) = sub_100022C18();
      *(v84 + 32) = v56;
      *(v84 + 40) = v58;
      v85 = static String.localizedStringWithFormat(_:_:)();
      v87 = v86;

      result = v59;
      *(v59 + 32) = v85;
      *(v59 + 40) = v87;
      return result;
    case 8:
      sub_100168088(&qword_100574690);
      v18 = swift_allocObject();
      v114 = xmmword_100400790;
      *(v18 + 16) = xmmword_100400790;
      v36._object = 0x800000010046D550;
      v36._countAndFlagsBits = 0xD000000000000015;
      v37._countAndFlagsBits = 0;
      v37._object = 0xE000000000000000;
      PFLocalizedString(_:comment:)(v36, v37);
      sub_100168088(&unk_100574670);
      v32 = swift_allocObject();
      *(v32 + 16) = v114;
      v33 = [v1 downloadedEpisodesCount];
      goto LABEL_24;
    case 9:
      sub_100168088(&qword_100574690);
      v18 = swift_allocObject();
      v114 = xmmword_100400790;
      *(v18 + 16) = xmmword_100400790;
      v74._object = 0x800000010046D550;
      v74._countAndFlagsBits = 0xD000000000000015;
      v75._countAndFlagsBits = 0;
      v75._object = 0xE000000000000000;
      PFLocalizedString(_:comment:)(v74, v75);
      sub_100168088(&unk_100574670);
      v32 = swift_allocObject();
      *(v32 + 16) = v114;
      v33 = [v1 downloadedUnplayedEpisodesCount];
      goto LABEL_24;
    case 10:
      sub_100168088(&qword_100574690);
      v18 = swift_allocObject();
      v114 = xmmword_100400790;
      *(v18 + 16) = xmmword_100400790;
      v30._object = 0x800000010046D550;
      v30._countAndFlagsBits = 0xD000000000000015;
      v31._countAndFlagsBits = 0;
      v31._object = 0xE000000000000000;
      PFLocalizedString(_:comment:)(v30, v31);
      sub_100168088(&unk_100574670);
      v32 = swift_allocObject();
      *(v32 + 16) = v114;
      v33 = [v1 savedEpisodesCount];
      goto LABEL_24;
    case 11:
      sub_100168088(&qword_100574690);
      v18 = swift_allocObject();
      v114 = xmmword_100400790;
      *(v18 + 16) = xmmword_100400790;
      v34._object = 0x800000010046D550;
      v34._countAndFlagsBits = 0xD000000000000015;
      v35._countAndFlagsBits = 0;
      v35._object = 0xE000000000000000;
      PFLocalizedString(_:comment:)(v34, v35);
      sub_100168088(&unk_100574670);
      v32 = swift_allocObject();
      *(v32 + 16) = v114;
      v33 = [v1 savedUnplayedEpisodesCount];
      goto LABEL_24;
    case 12:
      sub_100168088(&qword_100574690);
      v18 = swift_allocObject();
      v114 = xmmword_100400790;
      *(v18 + 16) = xmmword_100400790;
      v66._object = 0x800000010046D550;
      v66._countAndFlagsBits = 0xD000000000000015;
      v67._countAndFlagsBits = 0;
      v67._object = 0xE000000000000000;
      PFLocalizedString(_:comment:)(v66, v67);
      sub_100168088(&unk_100574670);
      v32 = swift_allocObject();
      *(v32 + 16) = v114;
      v33 = [v1 libraryEpisodesCount];
LABEL_24:
      *(v32 + 56) = &type metadata for Int64;
      *(v32 + 64) = &protocol witness table for Int64;
      *(v32 + 32) = v33;
      v22 = static String.localizedStringWithFormat(_:_:)();
      v24 = v76;

LABEL_25:

      result = v18;
      *(v18 + 32) = v22;
      *(v18 + 40) = v24;
      return result;
    case 13:
      v25 = [v1 category];
      if (!v25)
      {
        return _swiftEmptyArrayStorage;
      }

      v26 = v25;
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      sub_100168088(&qword_100574690);
      result = swift_allocObject();
      *(result + 1) = xmmword_100400790;
      *(result + 4) = v27;
LABEL_22:
      *(result + 5) = v29;
      return result;
    case 14:
      return result;
    default:
      v61 = [v1 author];
      if (v61)
      {
        v62 = v61;
        v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v65 = v64;
      }

      else
      {
        v63 = 0;
        v65 = 0;
      }

      v88 = [v1 provider];
      if (v88)
      {
        v89 = v88;
        v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v92 = v91;
      }

      else
      {
        v90 = 0;
        v92 = 0;
      }

      v93 = 0;
      v115 = v63;
      v116[0] = v65;
      v116[1] = v90;
      v116[2] = v92;
      v94 = _swiftEmptyArrayStorage;
LABEL_34:
      v95 = &v116[2 * v93];
      while (++v93 != 3)
      {
        v96 = v95 + 2;
        v97 = *v95;
        v95 += 2;
        if (v97)
        {
          v98 = *(v96 - 3);
          v99 = v94;

          v100 = v99;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v100 = sub_100243134(0, *(v99 + 2) + 1, 1, v99);
          }

          v94 = v100;
          v102 = *(v100 + 2);
          v101 = *(v100 + 3);
          if (v102 >= v101 >> 1)
          {
            v94 = sub_100243134((v101 > 1), v102 + 1, 1, v100);
          }

          *(v94 + 2) = v102 + 1;
          v103 = &v94[16 * v102];
          *(v103 + 4) = v98;
          *(v103 + 5) = v97;
          goto LABEL_34;
        }
      }

      v104 = v94;
      sub_100168088(&qword_100574230);
      swift_arrayDestroy();
      return v104;
  }
}

Swift::Void __swiftcall ForegroundSyncUtil.updatePlaybackSettingIfNeeded()()
{
  v57 = type metadata accessor for Logger();
  v1 = *(v57 - 8);
  __chkstk_darwin(v57);
  v3 = &v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v54 - v5;
  __chkstk_darwin(v7);
  v9 = &v54 - v8;
  __chkstk_darwin(v10);
  v12 = &v54 - v11;
  __chkstk_darwin(v13);
  v15 = &v54 - v14;
  sub_100009F1C(0, &qword_10057AB20);
  v16 = [swift_getObjCClassFromMetadata() sharedInstance];
  v17 = [v16 activeAccount];

  v18 = *(v0 + OBJC_IVAR___MTForegroundSyncUtil_defaults);
  static String.Account.lastSignedInDSIDKey.getter();
  v19 = String._bridgeToObjectiveC()();

  v56 = v18;
  v20 = [v18 stringForKey:v19];

  if (!v20)
  {
    v21 = 0;
    v23 = 0;
    if (!v17)
    {
      goto LABEL_13;
    }

LABEL_5:
    v24 = [v17 ams_DSID];
    if (!v24)
    {
      goto LABEL_13;
    }

    v55 = v1;
    v25 = v24;
    v26 = [v24 stringValue];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    type metadata accessor for AnalyticsIdentifierManager();
    v27 = static AnalyticsIdentifierManager.hashDSIDWithSalt(_:)();
    v29 = v28;

    if (!v29)
    {

      static Logger.playback.getter();
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&_mh_execute_header, v39, v40, "[Foreground Sync] Not setting Continuous Playback. Failed to hash DSID.", v41, 2u);
      }

      else
      {
      }

      (*(v55 + 8))(v6, v57);
      return;
    }

    if (v23 && (v21 == v27 && v23 == v29 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {

      static Logger.playback.getter();
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v30, v31, "[Foreground Sync] User hasn't changed. Not updating Continuous Playback setting.", v32, 2u);
      }

      else
      {
      }

      (*(v55 + 8))(v9, v57);
      return;
    }

    v42 = [v17 ams_accountFlagValueForAccountFlag:AMSAccountFlagUnderThirteen];
    v43 = v55;
    if (v42)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v58 = 0u;
      v59 = 0u;
    }

    v60[0] = v58;
    v60[1] = v59;
    if (*(&v59 + 1))
    {
      if (swift_dynamicCast() && (v58 & 1) != 0)
      {

        v44 = 1;
        goto LABEL_36;
      }
    }

    else
    {
      sub_100009104(v60, &unk_1005783D0);
    }

    if (!v23)
    {
      static Logger.playback.getter();
      v46 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v46, v50))
      {
        v15 = v12;
        v45 = v56;
        v49 = v57;
        goto LABEL_43;
      }

      v51 = swift_slowAlloc();
      *v51 = 67109120;
      _os_log_impl(&_mh_execute_header, v46, v50, "[Foreground Sync] User has changed but doesn't need setting reset. U13=%{BOOL}d", v51, 8u);
      v15 = v12;
      v45 = v56;
      v49 = v57;
      goto LABEL_41;
    }

    v44 = 0;
LABEL_36:
    v45 = v56;
    [v56 setBool:v44 ^ 1u forKey:kMTContinuousPlaybackEnabledKey];
    static Logger.playback.getter();
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v46, v47))
    {
      v43 = v55;
      v49 = v57;
LABEL_43:

      (*(v43 + 8))(v15, v49);
      v52 = String._bridgeToObjectiveC()();

      static String.Account.lastSignedInDSIDKey.getter();
      v53 = String._bridgeToObjectiveC()();

      [v45 setObject:v52 forKey:v53];

      return;
    }

    v48 = swift_slowAlloc();
    *v48 = 67109376;
    *(v48 + 4) = v44 ^ 1;
    *(v48 + 8) = 1024;
    *(v48 + 10) = v44;
    _os_log_impl(&_mh_execute_header, v46, v47, "[Foreground Sync] Setting Continuous Playback to %{BOOL}d for user U13=%{BOOL}d.", v48, 0xEu);
    v43 = v55;
    v49 = v57;
LABEL_41:

    goto LABEL_43;
  }

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  if (v17)
  {
    goto LABEL_5;
  }

LABEL_13:
  v33 = v57;
  if (v23)
  {
    *&v60[0] = v21;
    *(&v60[0] + 1) = v23;
    sub_1001A0728();
    v34 = Collection.isNotEmpty.getter();

    if (v34)
    {
      static String.Account.lastSignedInDSIDKey.getter();
      v35 = String._bridgeToObjectiveC()();

      [v56 setURL:0 forKey:v35];
    }
  }

  static Logger.playback.getter();
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v36, v37, "[Foreground Sync] Not setting Continuous Playback. No current signed in user.", v38, 2u);
  }

  else
  {
  }

  (*(v1 + 8))(v3, v33);
}

uint64_t sub_100034D1C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v121 = a5;
  v104 = a3;
  v105 = a4;
  v115 = a2;
  v6 = sub_100168088(&qword_10057CF40);
  __chkstk_darwin(v6 - 8);
  v8 = v101 - v7;
  v9 = type metadata accessor for ScalarDictionary();
  __chkstk_darwin(v9 - 8);
  v11 = v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ActionMetrics();
  v13 = __chkstk_darwin(v12 - 8);
  v101[1] = v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v101[2] = v101 - v16;
  v17 = __chkstk_darwin(v15);
  v103 = v101 - v18;
  __chkstk_darwin(v17);
  v116 = v101 - v19;
  v20 = type metadata accessor for FlowDestinationPageHeader();
  v122 = *(v20 - 8);
  v21 = __chkstk_darwin(v20);
  v111 = v101 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v112 = v101 - v24;
  __chkstk_darwin(v23);
  v126 = v101 - v25;
  v26 = type metadata accessor for FlowPresentationContext();
  v119 = *(v26 - 8);
  v120 = v26;
  v27 = __chkstk_darwin(v26);
  v109 = v101 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v110 = v101 - v30;
  v31 = __chkstk_darwin(v29);
  v102 = v101 - v32;
  __chkstk_darwin(v31);
  v125 = v101 - v33;
  v34 = type metadata accessor for FlowDestination();
  v123 = *(v34 - 8);
  v124 = v34;
  v35 = __chkstk_darwin(v34);
  v107 = (v101 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = __chkstk_darwin(v35);
  v108 = (v101 - v38);
  v39 = __chkstk_darwin(v37);
  v113 = v101 - v40;
  v41 = __chkstk_darwin(v39);
  v114 = v101 - v42;
  __chkstk_darwin(v41);
  v44 = (v101 - v43);
  v45 = sub_100168088(&qword_100574040);
  v46 = __chkstk_darwin(v45 - 8);
  v106 = v101 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __chkstk_darwin(v46);
  v50 = v101 - v49;
  v51 = __chkstk_darwin(v48);
  v53 = v101 - v52;
  v54 = __chkstk_darwin(v51);
  v56 = v101 - v55;
  __chkstk_darwin(v54);
  v58 = v101 - v57;
  [a1 storeCollectionId];
  v118 = AdamID.init(rawValue:)();
  if ([a1 isHiddenOrImplicitlyFollowed])
  {
    v59 = [a1 bestAvailableStoreCleanURL];
    v117 = v11;
    if (v59)
    {
      v60 = v59;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v61 = type metadata accessor for URL();
      (*(*(v61 - 8) + 56))(v56, 0, 1, v61);
    }

    else
    {
      v68 = type metadata accessor for URL();
      (*(*(v68 - 8) + 56))(v56, 1, 1, v68);
    }

    sub_1001B8A3C(v56, v58);
    v69 = *(sub_100168088(&unk_10057C230) + 48);
    *v44 = 0;
    sub_1001BB0E0(v58, v44 + v69);
    (*(v123 + 104))(v44, enum case for FlowDestination.page(_:), v124);
    (*(v119 + 104))(v125, enum case for FlowPresentationContext.pushDetail(_:), v120);
    (*(v122 + 104))(v126, enum case for FlowDestinationPageHeader.uber(_:), v20);
    *&v130 = v118;
    sub_1000366D8();
    BinaryInteger.description.getter();
    static MetricsTargetType.lockup.getter();
    sub_100168088(&unk_10057DC50);
    type metadata accessor for MetricsData();
    *(swift_allocObject() + 16) = xmmword_100400790;
    static MetricsActionType.navigate.getter();
    static MetricsData.clickData(targetID:targetType:actionType:actionContext:actionResult:actionURL:fields:configuration:)();

    ScalarDictionary.init()();
    ActionMetrics.init(data:custom:)();
    sub_100168088(&qword_1005742B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004007C0;
    v71 = static Link.Presentation.textFollowsTintColor.getter();
    *(inited + 32) = v71;
    v72 = static Link.Presentation.hasDisclosureIndicatorCompactOnly.getter();
    *(inited + 33) = v72;
    Link.Presentation.init(rawValue:)();
    Link.Presentation.init(rawValue:)();
    if (Link.Presentation.init(rawValue:)() != v71)
    {
      Link.Presentation.init(rawValue:)();
    }

    Link.Presentation.init(rawValue:)();
    if (Link.Presentation.init(rawValue:)() != v72)
    {
      Link.Presentation.init(rawValue:)();
    }

    type metadata accessor for FlowAction();
    swift_allocObject();
    v73 = FlowAction.init(_:id:title:presentationContext:animationBehavior:presentationStyle:destinationPageHeader:actionMetrics:)();
    sub_100009104(v58, &qword_100574040);
    return v73;
  }

  ShowLockupStyle.groupedEpisodesListType.getter();
  if (v129 != 255)
  {
    v126 = v20;
    v130 = v128[0];
    v131 = v128[1];
    v132 = v128[2];
    v133 = v128[3];
    v134 = v129;
    v62 = [a1 uuid];
    if (!v62)
    {
      v66 = &qword_100575040;
      v67 = v128;
      goto LABEL_22;
    }

    v117 = v11;
    v63 = v62;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    EpisodeListType.groupedFlowDestination(podcastUUID:)();

    v65 = v123;
    v64 = v124;
    if ((*(v123 + 48))(v8, 1, v124) == 1)
    {
      sub_100009104(v128, &qword_100575040);
      v66 = &qword_10057CF40;
      v67 = v8;
LABEL_22:
      sub_100009104(v67, v66);
      return 0;
    }

    v82 = v114;
    (*(v65 + 32))(v114, v8, v64);
    (*(v65 + 16))(v113, v82, v64);
    v127 = v118;
    sub_1000366D8();
    BinaryInteger.description.getter();
    static MetricsTargetType.lockup.getter();
    v83 = [a1 uuid];
    if (v83)
    {
      v84 = v83;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      URL.init(string:)();

      v85 = type metadata accessor for URL();
      v86 = *(v85 - 8);
      if ((*(v86 + 48))(v50, 1, v85) != 1)
      {
        (*(v86 + 32))(v53, v50, v85);
        (*(v86 + 56))(v53, 0, 1, v85);
        goto LABEL_35;
      }

      sub_100009104(v50, &qword_100574040);
    }

    v87 = type metadata accessor for URL();
    (*(*(v87 - 8) + 56))(v53, 1, 1, v87);
LABEL_35:
    sub_100168088(&unk_10057DC50);
    type metadata accessor for MetricsData();
    *(swift_allocObject() + 16) = xmmword_100400790;
    static MetricsActionType.navigate.getter();
    static MetricsData.clickData(targetID:targetType:actionType:actionContext:actionResult:actionURL:fields:configuration:)();

    ScalarDictionary.init()();
    ActionMetrics.init(data:custom:)();
    sub_100009104(v53, &qword_100574040);
    (*(v119 + 104))(v102, enum case for FlowPresentationContext.infer(_:), v120);
    sub_100168088(&qword_1005742B0);
    v95 = swift_initStackObject();
    *(v95 + 16) = xmmword_1004007C0;
    v96 = static Link.Presentation.textFollowsTintColor.getter();
    *(v95 + 32) = v96;
    v97 = static Link.Presentation.hasDisclosureIndicatorCompactOnly.getter();
    *(v95 + 33) = v97;
    Link.Presentation.init(rawValue:)();
    Link.Presentation.init(rawValue:)();
    if (Link.Presentation.init(rawValue:)() != v96)
    {
      Link.Presentation.init(rawValue:)();
    }

    Link.Presentation.init(rawValue:)();
    v98 = Link.Presentation.init(rawValue:)();
    v99 = v126;
    if (v98 != v97)
    {
      Link.Presentation.init(rawValue:)();
    }

    (*(v122 + 104))(v112, enum case for FlowDestinationPageHeader.standard(_:), v99);
    type metadata accessor for FlowAction();
    swift_allocObject();

    v73 = FlowAction.init(_:id:title:presentationContext:animationBehavior:presentationStyle:destinationPageHeader:actionMetrics:)();
    sub_100009104(v128, &qword_100575040);
    (*(v123 + 8))(v114, v124);
    return v73;
  }

  v117 = v11;
  type metadata accessor for PodcastDetail();
  v74 = a1;
  v75 = PodcastDetail.__allocating_init(from:episodes:episodeToPlay:seasonToShow:)();
  if (!v75)
  {
    return 0;
  }

  v76 = v75;
  sub_100036618();
  LODWORD(v125) = static UITraitCollection.interfaceIdiomIsMac.getter();
  if ([v74 subscribed])
  {
    *v107 = v76;
    (*(v123 + 104))();
    (*(v119 + 104))(v109, enum case for FlowPresentationContext.push(_:), v120);
    (*(v122 + 104))(v111, enum case for FlowDestinationPageHeader.uber(_:), v20);
    *&v130 = v118;
    sub_1000366D8();

    BinaryInteger.description.getter();
    static MetricsTargetType.lockup.getter();
    v77 = type metadata accessor for URL();
    v78 = v106;
    (*(*(v77 - 8) + 56))(v106, 1, 1, v77);
    sub_100168088(&unk_10057DC50);
    type metadata accessor for MetricsData();
    *(swift_allocObject() + 16) = xmmword_100400790;
    static MetricsActionType.navigate.getter();
    static MetricsData.clickData(targetID:targetType:actionType:actionContext:actionResult:actionURL:fields:configuration:)();

    ScalarDictionary.init()();
    ActionMetrics.init(data:custom:)();
    sub_100009104(v78, &qword_100574040);
    sub_100168088(&qword_1005742B0);
    v79 = swift_initStackObject();
    *(v79 + 16) = xmmword_1004007C0;
    v80 = static Link.Presentation.textFollowsTintColor.getter();
    *(v79 + 32) = v80;
    v81 = static Link.Presentation.hasDisclosureIndicatorCompactOnly.getter();
    *(v79 + 33) = v81;
    Link.Presentation.init(rawValue:)();
    Link.Presentation.init(rawValue:)();
    if (Link.Presentation.init(rawValue:)() != v80)
    {
      Link.Presentation.init(rawValue:)();
    }

    Link.Presentation.init(rawValue:)();
    if (Link.Presentation.init(rawValue:)() != v81)
    {
      Link.Presentation.init(rawValue:)();
    }

    type metadata accessor for FlowAction();
    swift_allocObject();
  }

  else
  {
    v126 = v20;

    v88 = Podcast.uuid.getter();
    v89 = v108;
    *v108 = v88;
    v89[1] = v90;
    *(v89 + 64) = 9;
    (*(v123 + 104))(v89, enum case for FlowDestination.episodeList(_:), v124);
    (*(v119 + 104))(v110, enum case for FlowPresentationContext.push(_:), v120);
    *&v130 = v118;
    sub_1000366D8();
    BinaryInteger.description.getter();
    static MetricsTargetType.lockup.getter();
    Podcast.uuid.getter();

    v91 = v106;
    URL.init(string:)();

    sub_100168088(&unk_10057DC50);
    type metadata accessor for MetricsData();
    *(swift_allocObject() + 16) = xmmword_100400790;
    static MetricsActionType.navigate.getter();
    static MetricsData.clickData(targetID:targetType:actionType:actionContext:actionResult:actionURL:fields:configuration:)();

    ScalarDictionary.init()();
    ActionMetrics.init(data:custom:)();
    sub_100009104(v91, &qword_100574040);
    sub_100168088(&qword_1005742B0);
    v92 = swift_initStackObject();
    *(v92 + 16) = xmmword_1004007C0;
    v93 = static Link.Presentation.textFollowsTintColor.getter();
    *(v92 + 32) = v93;
    v94 = static Link.Presentation.hasDisclosureIndicatorCompactOnly.getter();
    *(v92 + 33) = v94;
    Link.Presentation.init(rawValue:)();
    Link.Presentation.init(rawValue:)();
    if (Link.Presentation.init(rawValue:)() != v93)
    {
      Link.Presentation.init(rawValue:)();
    }

    Link.Presentation.init(rawValue:)();
    if (Link.Presentation.init(rawValue:)() != v94)
    {
      Link.Presentation.init(rawValue:)();
    }

    (*(v122 + 104))(v112, enum case for FlowDestinationPageHeader.standard(_:), v126);
    type metadata accessor for FlowAction();
    swift_allocObject();
  }

  v73 = FlowAction.init(_:id:title:presentationContext:animationBehavior:presentationStyle:destinationPageHeader:actionMetrics:)();

  return v73;
}

size_t sub_100036208(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100168088(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
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

uint64_t sub_10003643C()
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  *(*v1 + 80) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_1003268F0;
  }

  else
  {
    v5 = sub_100036664;
  }

  return _swift_task_switch(v5, 0, 0);
}

unint64_t sub_100036618()
{
  result = qword_10057BC40;
  if (!qword_10057BC40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10057BC40);
  }

  return result;
}

uint64_t sub_100036664()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_1000366D8()
{
  result = qword_10057E7A0;
  if (!qword_10057E7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057E7A0);
  }

  return result;
}

Swift::Void __swiftcall ForegroundSyncUtil.feedUpdateAllPodcastsOnForeground()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v5 = *(v12 - 8);
  __chkstk_darwin(v12);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[1] = *&v0[OBJC_IVAR___MTForegroundSyncUtil_workQueue];
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_100037AC8;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004EDCD8;
  v9 = _Block_copy(aBlock);
  v10 = v0;
  static DispatchQoS.unspecified.getter();
  v13 = _swiftEmptyArrayStorage;
  sub_10000E5CC(&qword_10057D380, &type metadata accessor for DispatchWorkItemFlags);
  sub_100168088(&unk_100575CD0);
  sub_100015E58(&qword_10057D390, &unk_100575CD0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v12);
}

uint64_t sub_1000369E8()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100036A24()
{
  result = qword_100578430;
  if (!qword_100578430)
  {
    type metadata accessor for Action();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100578430);
  }

  return result;
}

uint64_t sub_100036A8C()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  *(*v1 + 64) = v0;

  sub_100009104(v5, &qword_100578010);
  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v6 = sub_1003279E8;
  }

  else
  {
    v6 = sub_10003708C;
  }

  return _swift_task_switch(v6, 0, 0);
}

id sub_100036C30(void *a1)
{
  v2 = type metadata accessor for ScalarDictionary();
  __chkstk_darwin(v2 - 8);
  v3 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v3 - 8);
  v5 = v21 - v4;
  v6 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v6 - 8);
  v7 = sub_100168088(&unk_100573A80);
  __chkstk_darwin(v7 - 8);
  v9 = v21 - v8;
  result = [a1 smartPlayEpisode];
  if (result)
  {
    v11 = result;
    v12 = [result uuid];
    if (v12)
    {
      v13 = v12;
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      v27 = MTEpisode.adamID.getter();
      v26 = v15;
      v16 = type metadata accessor for EpisodeListSettings();
      (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
      [v11 storeTrackId];
      v17 = AdamID.init(rawValue:)();
      v25 = static MetricsTargetType.button.getter();
      if (AdamID.isEmpty.getter())
      {

        static ActionMetrics.notInstrumented.getter();
      }

      else
      {
        sub_100168088(&unk_10057DC50);
        v24 = v14;
        v18 = *(type metadata accessor for MetricsData() - 8);
        v23 = (*(v18 + 80) + 32) & ~*(v18 + 80);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_100400790;
        v28 = v17;
        sub_1000366D8();
        v21[2] = BinaryInteger.description.getter();
        v21[1] = static MetricsActionType.play.getter();
        v19 = type metadata accessor for URL();
        (*(*(v19 - 8) + 56))(v5, 1, 1, v19);
        static MetricsData.clickData(targetID:targetType:actionType:actionContext:actionResult:actionURL:fields:configuration:)();

        sub_100009104(v5, &qword_100574040);
        ScalarDictionary.init()();
        ActionMetrics.init(data:custom:)();
      }

      type metadata accessor for LibraryPlayAction();
      swift_allocObject();
      v20 = LibraryPlayAction.init(episodeUuid:episodeAdamId:channelAdamId:settings:showPlayerIfPlaying:title:timestamp:actionMetrics:)();

      return v20;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_10003708C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

id sub_100037100(void *a1)
{
  result = [a1 uuid];
  if (result)
  {
    v2 = result;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    ShowLockupStyle.groupedEpisodesListType.getter();
    if (v4 == 255 || (v6 = v3[0], v7 = v3[1], v8 = v3[2], v9 = v3[3], v10 = v4, EpisodeListType.singleShowListType(showUuid:)(), sub_100009104(v3, &qword_100575040), v5 == 255))
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v15 = -1;
    }

    type metadata accessor for LibraryPodcastContextAction();
    swift_allocObject();
    return LibraryPodcastContextAction.init(podcastUuid:groupedEpisodeListType:)();
  }

  return result;
}

uint64_t sub_100037208(uint64_t a1)
{
  v3 = *v2;
  v3[13] = a1;
  v3[14] = v1;

  if (v1)
  {

    v4 = v3[1];

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_100037474, 0, 0);
  }
}

uint64_t sub_100037474()
{
  v1 = v0[13];
  v2 = *(v1 + 16);
  v0[15] = v2;
  if (v2)
  {
    v3 = v0[8];
    v4 = v0[14];
    v0[16] = 0;
    if (*(v1 + 16))
    {
      v5 = *(v3 + 16);
      v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v5(v0[11], v1 + v6, v0[7]);
      static Task<>.checkCancellation()();
      v0[17] = v4;
      if (v4)
      {
        (*(v0[8] + 8))(v0[11], v0[7]);

LABEL_6:

        v8 = v0[1];

        return v8();
      }

      v10 = v0[10];
      v11 = v0[8];
      v21 = v0[11];
      v22 = v0[9];
      v12 = v0[7];
      v14 = v0[2];
      v13 = v0[3];
      static OSSignposter.widget.getter();
      v15 = type metadata accessor for TaskPriority();
      (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
      v5(v10, v21, v12);
      v16 = swift_allocObject();
      *(v16 + 16) = 0;
      *(v16 + 24) = 0;
      (*(v11 + 32))(v16 + v6, v10, v12);
      *(v16 + ((v6 + v22 + 7) & 0xFFFFFFFFFFFFFFF8)) = v14;
      v17 = v14;
      v18 = swift_task_alloc();
      v0[18] = v18;
      *v18 = v0;
      v18[1] = sub_100042F78;
    }

    else
    {
      __break(1u);
    }

    return __s2os12OSSignposterV18PodcastsFoundationE4task8priority4name5blockxScPSg_s12StaticStringVxyYaYAcntYas8SendableRzlF();
  }

  v7 = v0[14];

  static Task<>.checkCancellation()();
  if (v7)
  {
    goto LABEL_6;
  }

  type metadata accessor for MainActor();
  v0[19] = static MainActor.shared.getter();
  v20 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10032684C, v20, v19);
}

void sub_100037830()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009F1C(0, &qword_1005748A0);
  static OS_os_log.feedUpdate.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "[Foreground Sync] Initiating feed updates on app foreground.", v6, 2u);
  }

  (*(v1 + 8))(v3, v0);
  v7 = [objc_opt_self() sharedInstance];
  v8 = [v7 integerForKey:kForegroundFeedUpdateThreshold];

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_100038984;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100038258;
  aBlock[3] = &unk_1004EDD28;
  v10 = _Block_copy(aBlock);

  [v8 asyncValueWithCompletion:v10];
  _Block_release(v10);
}

uint64_t sub_100037A90()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t type metadata accessor for StationListObserver()
{
  result = qword_100581560;
  if (!qword_100581560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100037B60()
{
  result = type metadata accessor for StationListOptions();
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

uint64_t sub_100037C20(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC8Podcasts19StationListObserver_currentValue] = _swiftEmptyArrayStorage;
  v3 = &v1[OBJC_IVAR____TtC8Podcasts19StationListObserver_didChange];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = OBJC_IVAR____TtC8Podcasts19StationListObserver_managedContextProvider;
  *&v1[v4] = [objc_opt_self() sharedInstance];
  v5 = OBJC_IVAR____TtC8Podcasts19StationListObserver_options;
  v6 = type metadata accessor for StationListOptions();
  v7 = *(v6 - 8);
  v32 = v6;
  v33 = a1;
  (*(v7 + 16))(&v1[v5], a1);
  v8 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:kMTPlaylistEntityName];
  v9 = objc_opt_self();
  v10 = [v9 topLevelPlaylistsExcludingFoldersPredicate];
  [v8 setPredicate:v10];

  v11 = [v9 sortDescriptors];
  [v8 setSortDescriptors:v11];

  v12 = [*&v1[v4] privateQueueContext];
  v13 = [objc_allocWithZone(MTFetchedResultsController) initWithFetchRequest:v8 managedObjectContext:v12 sectionNameKeyPath:0 cacheName:0];
  *&v1[OBJC_IVAR____TtC8Podcasts19StationListObserver_stationsObserver] = v13;
  sub_100168088(&qword_100574690);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1004007A0;
  *(v14 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v14 + 40) = v15;
  *(v14 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v14 + 56) = v16;
  *(v14 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v14 + 72) = v17;
  *(v14 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v14 + 88) = v18;
  *(v14 + 96) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v14 + 104) = v19;
  v20 = v13;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v20 setPropertyKeys:isa];

  v35.receiver = v1;
  v35.super_class = type metadata accessor for StationListObserver();
  v22 = objc_msgSendSuper2(&v35, "init");
  v23 = OBJC_IVAR____TtC8Podcasts19StationListObserver_stationsObserver;
  v24 = *&v22[OBJC_IVAR____TtC8Podcasts19StationListObserver_stationsObserver];
  v25 = v22;
  [v24 setDelegate:v25];
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = swift_allocObject();
  *(v27 + 16) = sub_10035D814;
  *(v27 + 24) = v26;
  aBlock[4] = sub_10002D950;
  aBlock[5] = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002D904;
  aBlock[3] = &unk_1004F0488;
  v28 = _Block_copy(aBlock);

  [v12 performBlockAndWait:v28];
  _Block_release(v28);
  LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

  if (v28)
  {
    __break(1u);
  }

  else
  {
    objc_sync_enter(v25);
    v30 = *&v22[v23];
    v31 = sub_100038FE4(v30, v33);

    *&v25[OBJC_IVAR____TtC8Podcasts19StationListObserver_currentValue] = v31;

    objc_sync_exit(v25);

    (*(v7 + 8))(v33, v32);

    return v25;
  }

  return result;
}

uint64_t sub_1000380C4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100038258(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  v9 = a2;
  v8 = a4;
  v7(a2, a3, a4);
}

uint64_t sub_1000382EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v40 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v38 = *(v8 - 8);
  v39 = v8;
  __chkstk_darwin(v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for Logger();
  v11 = *(v41 - 8);
  __chkstk_darwin(v41);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v38 - v15;
  __chkstk_darwin(v17);
  v19 = &v38 - v18;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    if (a3)
    {
      sub_100009F1C(0, &qword_1005748A0);
      swift_errorRetain();
      static OS_os_log.feedUpdate.getter();
      swift_errorRetain();
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *v24 = 138412290;
        v26 = _convertErrorToNSError(_:)();
        *(v24 + 4) = v26;
        *v25 = v26;
        _os_log_impl(&_mh_execute_header, v22, v23, "[Foreground Sync] Failed to fetch feed update threshold from the bag with error: %@", v24, 0xCu);
        sub_100009104(v25, &qword_100575B20);
      }

      else
      {
      }

      return (*(v11 + 8))(v16, v41);
    }

    else if (a1 && (aBlock = 0, LOBYTE(v44) = 1, static Double._conditionallyBridgeFromObjectiveC(_:result:)(), (v44 & 1) == 0))
    {
      v34 = aBlock;
      v35 = swift_allocObject();
      *(v35 + 16) = v34;
      *(v35 + 24) = v21;
      v47 = sub_10003931C;
      v48 = v35;
      aBlock = _NSConcreteStackBlock;
      v44 = 1107296256;
      v45 = sub_10000F038;
      v46 = &unk_1004EDD78;
      v36 = _Block_copy(&aBlock);
      v37 = v21;
      static DispatchQoS.unspecified.getter();
      v42 = _swiftEmptyArrayStorage;
      sub_10000E5CC(&qword_10057D380, &type metadata accessor for DispatchWorkItemFlags);
      sub_100168088(&unk_100575CD0);
      sub_100015E58(&qword_10057D390, &unk_100575CD0);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v36);
      (*(v40 + 8))(v7, v5);
      (*(v38 + 8))(v10, v39);
    }

    else
    {
      sub_100009F1C(0, &qword_1005748A0);
      static OS_os_log.feedUpdate.getter();
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v31, v32, "[Foreground Sync] Unable to cast value for feed update threshold from the bag to a Double.", v33, 2u);
      }

      else
      {
      }

      return (*(v11 + 8))(v13, v41);
    }
  }

  else
  {
    sub_100009F1C(0, &qword_1005748A0);
    static OS_os_log.feedUpdate.getter();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "[Foreground Sync] Unable to unwrap self in ForegroundSyncUtil.", v29, 2u);
    }

    return (*(v11 + 8))(v19, v41);
  }
}

uint64_t sub_10003894C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000389C4(char *a1, double a2)
{
  v4 = type metadata accessor for Date();
  v51 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v45 - v8;
  __chkstk_darwin(v10);
  v12 = &v45 - v11;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v50 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v45 - v17;
  v46 = sub_100009F1C(0, &qword_1005748A0);
  static OS_os_log.feedUpdate.getter();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  v21 = os_log_type_enabled(v19, v20);
  v52 = a1;
  if (v21)
  {
    v22 = swift_slowAlloc();
    *v22 = 134217984;
    *(v22 + 4) = a2;
    _os_log_impl(&_mh_execute_header, v19, v20, "[Foreground Sync] threshold bag value: %f", v22, 0xCu);
    a1 = v52;
  }

  v23 = *(v14 + 8);
  v48 = v14 + 8;
  v49 = v13;
  v47 = v23;
  v23(v18, v13);
  static Date.now.getter();
  v24 = OBJC_IVAR___MTForegroundSyncUtil_lastExpectedFeedsUpdateDate;
  swift_beginAccess();
  v25 = v51;
  v45 = *(v51 + 16);
  v45(v6, &a1[v24], v4);
  static Date.+ infix(_:_:)();
  v26 = *(v25 + 8);
  v26(v6, v4);
  sub_10000E5CC(&qword_10057F7E8, &type metadata accessor for Date);
  v27 = dispatch thunk of static Comparable.< infix(_:_:)();
  v26(v9, v4);
  v26(v12, v4);
  if (v27)
  {
    v28 = v50;
    static OS_os_log.feedUpdate.getter();
    v29 = v52;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      aBlock[0] = v51;
      *v32 = 136315138;
      LODWORD(v46) = v31;
      v33 = sub_10031F498();
      v45(v12, &v52[v24], v4);
      isa = Date._bridgeToObjectiveC()().super.isa;
      v26(v12, v4);
      v35 = [v33 stringFromDate:isa];

      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;

      v39 = sub_1000153E0(v36, v38, aBlock);

      *(v32 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v30, v46, "[Foreground Sync] Not updating feeds on app foreground because within feed update threshold. Last update occurred: %s", v32, 0xCu);
      sub_100004590(v51);

      v40 = v50;
    }

    else
    {

      v40 = v28;
    }

    return v47(v40, v49);
  }

  else
  {
    sub_100009F1C(0, &qword_100573DE0);
    v41 = [swift_getObjCClassFromMetadata() sharedInstance];
    aBlock[4] = sub_100045200;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100045040;
    aBlock[3] = &unk_1004EDDA0;
    v42 = _Block_copy(aBlock);
    [v41 updateAllPodcastsUserInitiated:0 forced:0 source:24 started:v42];
    _Block_release(v42);

    static Date.now.getter();
    v43 = v52;
    swift_beginAccess();
    (*(v25 + 40))(&v43[v24], v12, v4);
    return swift_endAccess();
  }
}

uint64_t sub_100038FE4(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for StationListOptions();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v17 = 0;
  v7 = [a1 managedObjectContext];
  (*(v5 + 16))(&aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = &v17;
  (*(v5 + 32))(v9 + v8, &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_10035D794;
  *(v10 + 24) = v9;
  aBlock[4] = sub_10002D7F0;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002D904;
  aBlock[3] = &unk_1004F0410;
  v11 = _Block_copy(aBlock);
  v12 = a1;

  [v7 performBlockAndWait:v11];
  _Block_release(v11);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  else
  {
    v14 = v17;
    if (v17)
    {
    }

    else
    {
      v14 = _swiftEmptyArrayStorage;
    }

    return v14;
  }

  return result;
}

uint64_t sub_100039258()
{
  v1 = type metadata accessor for StationListOptions();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

unint64_t sub_100039340()
{
  result = qword_100573CE0;
  if (!qword_100573CE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100573CE0);
  }

  return result;
}

void *sub_10003938C(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v15 = _swiftEmptyArrayStorage;
  if (a3 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
    v11 = _swiftEmptyArrayStorage;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v14 = v7;
      a1(&v13, &v14);
      if (v3)
      {

        return v11;
      }

      if (v13)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v11 = v15;
      }

      ++v6;
      if (v9 == i)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return _swiftEmptyArrayStorage;
}

unint64_t sub_10003955C()
{
  result = qword_100581588;
  if (!qword_100581588)
  {
    type metadata accessor for StationListOptions();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100581588);
  }

  return result;
}

unint64_t sub_1000395B4()
{
  result = qword_100581570;
  if (!qword_100581570)
  {
    sub_100168310(&unk_100581578);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100581570);
  }

  return result;
}

uint64_t sub_100039618()
{
  if (+[MTApplication localLibraryUpdatesDisabled](MTApplication, "localLibraryUpdatesDisabled") || (+[PFClientUtil isRunningOnHomepod]& 1) != 0)
  {
    v0 = 1;
  }

  else
  {
    if (qword_100583CE0 != -1)
    {
      sub_10003985C();
    }

    v0 = byte_100583CE8;
  }

  return v0 & 1;
}

void sub_10003967C(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  *(*(a1 + 32) + 9) = 0;
  if (*(*(a1 + 32) + 10) == 1)
  {
    v3 = _MTLogCategoryDefault();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "MTListenNowManager update task finished but there is a pending task. Will run update again", buf, 2u);
    }

    [*(a1 + 32) update];
  }

  else
  {
    v4 = _MTLogCategoryDefault();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "MTListenNowManager update task finished.", v5, 2u);
    }

    [*(a1 + 32) _endBackgroundTask];
  }

  objc_sync_exit(v2);
}

void sub_100039870(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  byte_100583CE8 = [v1 BOOLForKey:@"MTFeatureDisabled_FeedUpdate"];
}

uint64_t _s8Podcasts11FeedManagerC32abortUpdatesIfNetworkUnreachable13userInitiatedS2b_tF_0(char a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v11 = result;
    v12 = [result isReachable];

    result = v12 ^ 1;
    if (v12 & 1) == 0 && (a1)
    {
      sub_100009F1C(0, &qword_1005729D0);
      v13 = static OS_dispatch_queue.main.getter();
      aBlock[4] = sub_1002D5714;
      aBlock[5] = 0;
      v17 = v13;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10000F038;
      aBlock[3] = &unk_1004EB6B0;
      v14 = _Block_copy(aBlock);
      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_10000E53C(&qword_10057D380, &type metadata accessor for DispatchWorkItemFlags);
      v16 = v6;
      sub_100168088(&unk_100575CD0);
      sub_100009FAC(&qword_10057D390, &unk_100575CD0);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v15 = v17;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v14);

      (*(v3 + 8))(v5, v2);
      (*(v7 + 8))(v9, v16);
      return 1;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100039C94(uint64_t a1)
{
  v4 = *(type metadata accessor for ArtworkRequest() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001C51C;

  return sub_100039DB4(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_100039DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for ArtworkRequest();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_100039ED0, 0, 0);
}

uint64_t sub_100039ED0()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  static Logger.widget.getter();
  (*(v2 + 16))(v1, v4, v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[5];
  v8 = v0[6];
  v10 = v0[4];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = ArtworkRequest.key.getter();
    (*(v9 + 8))(v8, v10);
    *(v11 + 4) = v13;
    *v12 = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "[%@] Prefetching widget artwork", v11, 0xCu);
    sub_100009104(v12, &qword_100575B20);
  }

  else
  {

    (*(v9 + 8))(v8, v10);
  }

  v14 = v0[3];
  (*(v0[8] + 8))(v0[9], v0[7]);
  v15 = (v14 + OBJC_IVAR____TtC8Podcasts13WidgetManager_imageProvider);
  v17 = *(v14 + OBJC_IVAR____TtC8Podcasts13WidgetManager_imageProvider + 24);
  v16 = v15[4];
  sub_1000044A0(v15, v17);
  v18 = swift_task_alloc();
  v0[10] = v18;
  *v18 = v0;
  v18[1] = sub_100042D74;
  v19 = v0[2];

  return ImageProvider.prefetching(artwork:)(v19, v17, v16);
}

void sub_10003A0F4(uint64_t a1, void *a2)
{
  v3 = [a2 mt_compactMap:&stru_1004DB728];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

uint64_t sub_10003A508()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

void FeedManager.updateFeed(forFeedUrl:cloudSyncFeedUrl:podcastStoreId:triggerBy:userInitiated:forceBootstrap:useBackgroundFetch:source:telemetryIdentifier:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, NSString a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v37 = a3;
  v34 = a8;
  v35 = a6;
  v36 = a7;
  v14 = sub_100168088(&unk_10057D668);
  __chkstk_darwin(v14 - 8);
  v16 = &v33[-v15];
  v17 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v17 - 8);
  v19 = (v33 - v18);
  URL._bridgeToObjectiveC()(v18);
  v21 = v20;
  sub_100010430(a2, v19, &qword_100574040);
  v22 = type metadata accessor for URL();
  v23 = *(v22 - 8);
  v25 = 0;
  if ((*(v23 + 48))(v19, 1, v22) != 1)
  {
    URL._bridgeToObjectiveC()(v24);
    v25 = v26;
    (*(v23 + 8))(v19, v22);
  }

  if (a5)
  {
    a5 = String._bridgeToObjectiveC()();
  }

  sub_100010430(a10, v16, &unk_10057D668);
  v27 = type metadata accessor for UUID();
  v28 = *(v27 - 8);
  isa = 0;
  if ((*(v28 + 48))(v16, 1, v27) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v28 + 8))(v16, v27);
  }

  if (a11)
  {
    aBlock[4] = a11;
    aBlock[5] = a12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100185CE0;
    aBlock[3] = &unk_1004EB228;
    v30 = _Block_copy(aBlock);
  }

  else
  {
    v30 = 0;
  }

  LOBYTE(v32) = 0;
  LOBYTE(v31) = v34 & 1;
  [v38 updateFeedForFeedUrl:v21 cloudSyncFeedUrl:v25 podcastStoreId:v37 triggerBy:a5 userInitiated:v35 & 1 forceBootstrap:v36 & 1 useBackgroundFetch:v31 source:a9 isSubscribing:v32 telemetryIdentifier:isa feedDownloadedHook:0 preProcessFeedHook:0 postProcessFeedHook:0 completion:v30];
  _Block_release(v30);
}

uint64_t FeedManager.updateFeed(forFeedUrl:cloudSyncFeedUrl:podcastStoreId:triggerBy:userInitiated:forceBootstrap:useBackgroundFetch:source:isSubscribing:telemetryIdentifier:feedDownloadedHook:preProcessFeedHook:postProcessFeedHook:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v67 = a7;
  LODWORD(v68) = a8;
  v66 = a6;
  v59 = a5;
  v63 = a3;
  v64 = a4;
  v58 = a2;
  v57 = a1;
  v62 = a9;
  v61 = a10;
  v55 = a19;
  v60 = a18;
  v54 = a17;
  v51 = a16;
  v56 = a11;
  v72 = type metadata accessor for DispatchWorkItemFlags();
  v74 = *(v72 - 8);
  __chkstk_darwin(v72);
  v70 = v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for DispatchQoS();
  v71 = *(v73 - 8);
  __chkstk_darwin(v73);
  v65 = v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100168088(&unk_10057D668);
  __chkstk_darwin(v21 - 8);
  v23 = v48 - v22;
  v48[0] = v48 - v22;
  v24 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v24 - 8);
  v26 = v48 - v25;
  v48[1] = v48 - v25;
  v27 = type metadata accessor for URL();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = v48 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48[2] = v30;
  updated = type metadata accessor for FeedUpdateRequest();
  v52 = *(updated - 8);
  v31 = *(v52 + 64);
  __chkstk_darwin(updated);
  v50 = v48 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v32);
  v49 = v48 - v34;
  (*(v28 + 16))(v30, v57, v27, v33);
  sub_100010430(v58, v26, &qword_100574040);
  sub_100010430(v56, v23, &unk_10057D668);

  sub_100013CB4(a12);
  sub_100013CB4(a14);
  sub_100013CB4(v51);
  sub_100013CB4(v60);
  v35 = v49;
  FeedUpdateRequest.init(feedUrl:cloudSyncFeedUrl:podcastStoreId:triggerBy:userInitiated:forceBootstrap:useBackgroundFetch:source:isSubscribing:telemetryIdentifier:feedDownloadedHook:preProcessFeedHook:postProcessFeedHook:completion:)();
  v36 = v69;
  v68 = *&v69[OBJC_IVAR___MTFeedManager_queue];
  v37 = v52;
  v38 = v50;
  v39 = updated;
  (*(v52 + 16))(v50, v35, updated);
  v40 = (*(v37 + 80) + 24) & ~*(v37 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = v36;
  (*(v37 + 32))(v41 + v40, v38, v39);
  aBlock[4] = sub_10004286C;
  aBlock[5] = v41;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004EB278;
  v42 = _Block_copy(aBlock);
  v43 = v36;
  v44 = v65;
  static DispatchQoS.unspecified.getter();
  v75 = _swiftEmptyArrayStorage;
  sub_10000E53C(&qword_10057D380, &type metadata accessor for DispatchWorkItemFlags);
  sub_100168088(&unk_100575CD0);
  sub_100009FAC(&qword_10057D390, &unk_100575CD0);
  v45 = v70;
  v46 = v72;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v42);
  (*(v74 + 8))(v45, v46);
  (*(v71 + 8))(v44, v73);
  (*(v37 + 8))(v35, v39);
}

uint64_t sub_10003B43C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10003B668(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
    return swift_errorRetain();
  }

  if (!a2)
  {
  }

  return result;
}

uint64_t sub_10003B684(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
  }

  if (!a2)
  {
  }

  return result;
}

void sub_10003B728(void *a1)
{
  static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0);
  v2 = static OS_os_log.launch.getter();
  sub_100168088(&unk_100574670);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100400790;
  v4 = [a1 activityType];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  *(v3 + 56) = &type metadata for String;
  *(v3 + 64) = sub_100022C18();
  *(v3 + 32) = v5;
  *(v3 + 40) = v7;
  os_log(_:dso:log:_:_:)();

  v8 = objc_opt_self();
  v9 = [v8 sharedApplication];
  v10 = [v9 delegate];

  if (v10)
  {
    if ([v10 respondsToSelector:"application:continueUserActivity:restorationHandler:"])
    {
      v11 = [v8 sharedApplication];
      v13[4] = UInt64.int64Representation.getter;
      v13[5] = 0;
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 1107296256;
      v13[2] = sub_100270A4C;
      v13[3] = &unk_1004E7ED8;
      v12 = _Block_copy(v13);
      [v10 application:v11 continueUserActivity:a1 restorationHandler:v12];
      swift_unknownObjectRelease();

      _Block_release(v12);
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_10003BA44(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UserActivityController();

  BaseObjectGraph.injectIfAvailable<A>(_:)();

  if (v12[1])
  {
    if (sub_10003BC20(a1))
    {
      v6 = a1;
      v7 = sub_10003BEBC(v6);
      if (v7 > 1)
      {
        if (v7 == 2)
        {
          sub_10026B584(v6);
        }
      }

      else if (v7)
      {
        sub_100264D64(v6);
      }

      else
      {
        sub_1002647E0(v6);
      }
    }
  }

  else
  {
    static Logger.userActivity.getter();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Unable to find PlaybackContinuityController in graph", v10, 2u);
    }

    (*(v3 + 8))(v5, v2);
  }

  return 1;
}

BOOL sub_10003BC20(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1;
  v7 = sub_10003BEBC(v6);
  static Logger.userActivity.getter();
  v8 = v6;

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v22 = v2;
    v12 = v11;
    v23 = swift_slowAlloc();
    *v12 = 136315650;
    v13 = _typeName(_:qualified:)();
    v15 = sub_1000153E0(v13, v14, &v23);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    v16 = [v8 activityType];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = sub_1000153E0(v17, v19, &v23);

    *(v12 + 14) = v20;
    *(v12 + 22) = 1024;
    *(v12 + 24) = v7 != 3;
    _os_log_impl(&_mh_execute_header, v9, v10, "Asking if %s supports '%s'. Returning %{BOOL}d", v12, 0x1Cu);
    swift_arrayDestroy();

    (*(v3 + 8))(v5, v22);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  return v7 != 3;
}

uint64_t sub_10003BEBC(void *a1)
{
  v2 = [a1 activityType];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v21[0] = v3;
  v21[1] = v5;
  v20[2] = v21;
  LOBYTE(v2) = sub_10003C0AC(sub_10003C218, v20, &off_1004DEFA0);

  if (v2)
  {

    return 0;
  }

  v7 = [a1 activityType];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  if (v8 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v10 == v11)
  {

    return 1;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v13)
  {

    return 1;
  }

  v14 = [a1 activityType];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
  {

    return 2;
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v19)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_10003C0AC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_10003C158@<X0>(uint64_t a1@<X8>)
{
  v3 = *((swift_isaMask & *v1) + 0x180);
  swift_beginAccess();
  v4 = type metadata accessor for OperationResult();
  return (*(*(v4 - 8) + 16))(a1, &v1[v3], v4);
}

uint64_t sub_10003C238(void *a1)
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

uint64_t sub_10003C290(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_10003C2EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a2;
  v6 = type metadata accessor for DownloadJob(0);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6 - 8);
  v26 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v12 = &v23 - v11;
  v13 = *a1;
  v14 = *(*a1 + 16);
  v15 = &_swiftEmptyArrayStorage;
  if (v14)
  {
    v28 = v3;
    v23 = a3;
    v29 = &_swiftEmptyArrayStorage;
    result = sub_1001A7694(0, v14, 0);
    v16 = 0;
    v15 = v29;
    v25 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v24 = v13 + v25;
    while (v16 < *(v13 + 16))
    {
      v17 = v7;
      v18 = *(v7 + 72);
      v19 = v26;
      sub_1001BE270(v24 + v18 * v16, v26);
      v20 = v28;
      sub_10021AC84(v19, v27, v12);
      v28 = v20;
      result = v19;
      if (v20)
      {
        goto LABEL_11;
      }

      sub_1001BE660(v19);
      v29 = v15;
      v22 = v15[2];
      v21 = v15[3];
      if (v22 >= v21 >> 1)
      {
        sub_1001A7694(v21 > 1, v22 + 1, 1);
        v15 = v29;
      }

      ++v16;
      v15[2] = v22 + 1;
      result = sub_10021B4E0(v12, v15 + v25 + v22 * v18);
      v7 = v17;
      if (v14 == v16)
      {
        a3 = v23;
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_11:
    sub_1001BE660(result);

    __break(1u);
  }

  else
  {
LABEL_9:
    *a3 = v15;
    *(a3 + 8) = 0;
  }

  return result;
}

char *sub_10003C524(char *result, int64_t a2, char a3, char *a4)
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
    sub_100168088(&qword_10057CE38);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

void sub_10003C66C(char *a1)
{
  v2 = *a1;
  v3 = swift_isaMask;
  v4 = *((swift_isaMask & *a1) + 0x198);
  v5 = type metadata accessor for OperationResult();
  (*(*(v5 - 8) + 8))(&a1[v4], v5);
  (*(*(*((v3 & v2) + 0x180) - 8) + 8))(&a1[*((swift_isaMask & *a1) + 0x1A0)]);

  v6 = *&a1[*((swift_isaMask & *a1) + 0x1B0)];
}

void sub_10003C7C0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  v8 = *a2;
  v9 = static os_log_type_t.default.getter();
  v10 = sub_100009F1C(0, &qword_1005748A0);
  v11 = static OS_os_log.downloads.getter();
  v12 = os_log_type_enabled(v11, v9);
  v59 = v7;
  if (v8 < 1)
  {
    if (!v12)
    {
      goto LABEL_19;
    }

    v57 = v10;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v63 = v23;
    *v22 = 136446210;
    v25 = *(a5 + OBJC_IVAR____TtC8Podcasts25SyncDownloadJobsOperation_sessionIdentifier);
    v24 = *(a5 + OBJC_IVAR____TtC8Podcasts25SyncDownloadJobsOperation_sessionIdentifier + 8);
    v26 = *(a5 + OBJC_IVAR____TtC8Podcasts25SyncDownloadJobsOperation_sessionIdentifier + 16);
    aBlock = 0x496E6F6973736553;
    v65 = 0xEB00000000203A44;
    if (v26)
    {
      v27 = 1936484398;
    }

    else
    {
      v27 = 0x7261646E6174732ELL;
    }

    if (v26)
    {
      v28 = 0xE400000000000000;
    }

    else
    {
      v28 = 0xE900000000000064;
    }

    v61._countAndFlagsBits = v25;
    v61._object = v24;

    v29._countAndFlagsBits = v27;
    v29._object = v28;
    String.append(_:)(v29);

    String.append(_:)(v61);

    v30 = sub_1000153E0(aBlock, v65, &v63);

    *(v22 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v11, v9, "No jobs have been deleted from storage for session %{public}s", v22, 0xCu);
    sub_100004590(v23);
  }

  else
  {
    if (!v12)
    {
      goto LABEL_19;
    }

    v57 = v10;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v63 = v14;
    *v13 = 134349314;
    *(v13 + 4) = v8;
    *(v13 + 12) = 2082;
    v16 = *(a5 + OBJC_IVAR____TtC8Podcasts25SyncDownloadJobsOperation_sessionIdentifier);
    v15 = *(a5 + OBJC_IVAR____TtC8Podcasts25SyncDownloadJobsOperation_sessionIdentifier + 8);
    v17 = *(a5 + OBJC_IVAR____TtC8Podcasts25SyncDownloadJobsOperation_sessionIdentifier + 16);
    aBlock = 0x496E6F6973736553;
    v65 = 0xEB00000000203A44;
    if (v17)
    {
      v18 = 1936484398;
    }

    else
    {
      v18 = 0x7261646E6174732ELL;
    }

    if (v17)
    {
      v19 = 0xE400000000000000;
    }

    else
    {
      v19 = 0xE900000000000064;
    }

    v60._countAndFlagsBits = v16;
    v60._object = v15;

    v20._countAndFlagsBits = v18;
    v20._object = v19;
    String.append(_:)(v20);

    String.append(_:)(v60);

    v21 = sub_1000153E0(aBlock, v65, &v63);

    *(v13 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v11, v9, "Deleted %{public}ld jobs from storage for session %{public}s", v13, 0x16u);
    sub_100004590(v14);
  }

LABEL_19:

  v31 = static os_log_type_t.default.getter();
  v32 = static OS_os_log.downloads.getter();
  if (os_log_type_enabled(v32, v31))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v63 = v34;
    *v33 = 136446210;
    v36 = *(a5 + OBJC_IVAR____TtC8Podcasts25SyncDownloadJobsOperation_sessionIdentifier);
    v35 = *(a5 + OBJC_IVAR____TtC8Podcasts25SyncDownloadJobsOperation_sessionIdentifier + 8);
    v37 = *(a5 + OBJC_IVAR____TtC8Podcasts25SyncDownloadJobsOperation_sessionIdentifier + 16);
    aBlock = 0x496E6F6973736553;
    v65 = 0xEB00000000203A44;
    if (v37)
    {
      v38 = 1936484398;
    }

    else
    {
      v38 = 0x7261646E6174732ELL;
    }

    if (v37)
    {
      v39 = 0xE400000000000000;
    }

    else
    {
      v39 = 0xE900000000000064;
    }

    v62._countAndFlagsBits = v36;
    v62._object = v35;

    v40._countAndFlagsBits = v38;
    v40._object = v39;
    String.append(_:)(v40);

    String.append(_:)(v62);

    v41 = sub_1000153E0(aBlock, v65, &v63);

    *(v33 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v32, v31, "Fetch running jobs from storage for session%{public}s", v33, 0xCu);
    sub_100004590(v34);
  }

  v42 = *(a5 + OBJC_IVAR____TtC8Podcasts25SyncDownloadJobsOperation_tasks);
  v43 = *(v42 + 16);
  if (v43)
  {
    sub_1001A779C(0, v43, 0);
    v44 = v42 + 32;
    do
    {
      sub_100004428(v44, &aBlock);
      v45 = v67;
      v46 = v68;
      sub_1000044A0(&aBlock, v67);
      v47 = (*(v46 + 3))(v45, v46);
      sub_100004590(&aBlock);
      v49 = _swiftEmptyArrayStorage[2];
      v48 = _swiftEmptyArrayStorage[3];
      if (v49 >= v48 >> 1)
      {
        sub_1001A779C((v48 > 1), v49 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v49 + 1;
      _swiftEmptyArrayStorage[v49 + 4] = v47;
      v44 += 40;
      --v43;
    }

    while (v43);
  }

  v51 = *(a5 + OBJC_IVAR____TtC8Podcasts25SyncDownloadJobsOperation_sessionIdentifier);
  v50 = *(a5 + OBJC_IVAR____TtC8Podcasts25SyncDownloadJobsOperation_sessionIdentifier + 8);
  v52 = *(a5 + OBJC_IVAR____TtC8Podcasts25SyncDownloadJobsOperation_sessionIdentifier + 16);
  v53 = [*(v59 + 16) newBackgroundContext];
  v54 = swift_allocObject();
  *(v54 + 16) = v51;
  *(v54 + 24) = v50;
  *(v54 + 32) = v52;
  *(v54 + 40) = _swiftEmptyArrayStorage;
  *(v54 + 48) = v53;
  *(v54 + 56) = a3;
  *(v54 + 64) = a4;
  v68 = sub_10021B5CC;
  v69 = v54;
  aBlock = _NSConcreteStackBlock;
  v65 = 1107296256;
  v66 = sub_10000F038;
  v67 = &unk_1004E5CC8;
  v55 = _Block_copy(&aBlock);

  v56 = v53;

  [v56 performBlock:v55];
  _Block_release(v55);
}

uint64_t sub_10003CE14()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001C51C;

  return sub_10003CEC8();
}

uint64_t sub_10003CEC8()
{
  v0[3] = type metadata accessor for MainActor();
  v0[4] = static MainActor.shared.getter();
  v1 = type metadata accessor for DownloadRemovalObserver();
  v0[5] = v1;
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_100042038;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_10003CF98()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001C51C;

  return sub_10003D04C();
}

uint64_t sub_10003D04C()
{
  v1 = type metadata accessor for Logger();
  v0[4] = v1;
  v0[5] = *(v1 - 8);
  v0[6] = swift_task_alloc();
  v0[7] = type metadata accessor for MainActor();
  v0[8] = static MainActor.shared.getter();
  v2 = type metadata accessor for CacheDeleteObserver();
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_10003D174;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v2, v2);
}

uint64_t sub_10003D174()
{
  v2 = *v1;
  v2[10] = v0;

  if (v0)
  {
    v4 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100303718, v4, v3);
  }

  else
  {
    v2[11] = v2[2];
    v7 = (&async function pointer to dispatch thunk of CacheDeleteObserver.subscribeToObservation() + async function pointer to dispatch thunk of CacheDeleteObserver.subscribeToObservation());
    v5 = swift_task_alloc();
    v2[12] = v5;
    *v5 = v2;
    v5[1] = sub_100042258;

    return v7();
  }
}

void sub_10003D318(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  if ([*(a1 + 32) subscriptionState] == 1)
  {
    objc_sync_exit(v2);

    v2 = +[UIApplication sharedApplication];
    [v2 registerForRemoteNotifications];
  }

  else
  {
    v3 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to complete APNS registration. Reason: interrupted.", v4, 2u);
    }

    objc_sync_exit(v2);
  }
}

void sub_10003D448(id a1)
{
  v1 = objc_alloc_init(MTPodcastDerivedPropertyObserver);
  v2 = qword_100583CB8;
  qword_100583CB8 = v1;
}

uint64_t sub_10003DBA0()
{
  if (+[MTApplication localLibraryUpdatesDisabled])
  {
    v0 = 1;
  }

  else
  {
    if (qword_100583CA8 != -1)
    {
      sub_10003DBF0();
    }

    v0 = byte_100583CB0;
  }

  return v0 & 1;
}

void sub_10003DC04(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  byte_100583CB0 = [v1 BOOLForKey:@"MTFeatureDisabled_CloudSync"];
}

void sub_10003DC98(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = [*(a1 + 32) URLForKey:kMTSyncPutAll];
  v9 = *(a1 + 40);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10003DDB0;
  v14[3] = &unk_1004DC0C8;
  v15 = v7;
  v13 = *(a1 + 40);
  v10 = v13.i64[0];
  v16 = vextq_s8(v13, v13, 8uLL);
  v17 = v6;
  v11 = v6;
  v12 = v7;
  [v8 asyncValueOnQueue:v9 withCompletion:v14];
}

void sub_10003DDB0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (v7 | *(a1 + 32))
  {
    v8 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      *buf = 138412546;
      v20 = v9;
      v21 = 2112;
      v22 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "MTSyncController fetch of GetAll/PutAll bag value failed. Errors=%@ %@", buf, 0x16u);
    }

    v10 = dispatch_time(0, 60000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000EF5C8;
    block[3] = &unk_1004D8358;
    block[4] = *(a1 + 40);
    dispatch_after(v10, &_dispatch_main_q, block);
  }

  else
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10003DF80;
    v14[3] = &unk_1004D94C8;
    v11 = *(a1 + 48);
    v12 = *(a1 + 56);
    v13 = *(a1 + 40);
    v15 = v12;
    v16 = v13;
    v17 = v6;
    dispatch_async(v11, v14);
  }
}

void sub_10003DF80(uint64_t a1)
{
  v2 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Starting MTSyncController and the bag has loaded with GetAll=%@. ", buf, 0xCu);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003E0C8;
  block[3] = &unk_1004D94C8;
  v5 = *(a1 + 32);
  v4 = v5.i64[0];
  v7 = vextq_s8(v5, v5, 8uLL);
  v8 = *(a1 + 48);
  if (qword_100583CA0 != -1)
  {
    dispatch_once(&qword_100583CA0, block);
  }
}

void sub_10003E0C8(uint64_t a1)
{
  v2 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Setting up MTSyncController. Will kick off initial syncs.", &v13, 2u);
  }

  [*(a1 + 32) _setupUPP];
  v3 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v13 = 138412546;
    v14 = v4;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "MTSyncController GET URL: %@, PUT URL: %@", &v13, 0x16u);
  }

  v6 = [*(a1 + 32) cloudSyncController];

  if (v6)
  {
    v7 = [*(a1 + 32) cloudSyncController];
    [v7 setDelegate:0];
  }

  v8 = [MZKeyValueStoreController alloc];
  v9 = [(MZKeyValueStoreController *)v8 initWithDomain:kMTPodcastsDomain baseURLForGETAll:*(a1 + 40) baseURLForPUTAll:*(a1 + 48)];
  [*(a1 + 32) setCloudSyncController:v9];

  v10 = [*(a1 + 32) cloudSyncController];
  [v10 setDelegate:*(a1 + 32)];

  v11 = [*(a1 + 32) cloudSyncController];
  [v11 reset];

  [*(a1 + 32) setIsRunning:1];
  [*(a1 + 32) syncEverything];
  v12 = +[NSNotificationCenter defaultCenter];
  [v12 postNotificationName:@"MTSyncControllerDidStartRunningNotification" object:0];
}

void sub_10003E534(id a1)
{
  v1 = objc_alloc_init(MZPreferences);
  v2 = qword_100583BB8;
  qword_100583BB8 = v1;
}

void sub_10003E5F8(uint64_t a1)
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"DerivedPropertyObserverPersistentHistoryToken"];

  if (v3)
  {
    v9 = 0;
    v4 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v9];
    v5 = v9;
    if (v5)
    {
      v6 = _MTLogCategoryDatabase();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v11 = v5;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Derived Property Observer encountered error trying to fetch previous history token %@", buf, 0xCu);
      }
    }

    else
    {
      v7 = *(a1 + 32);
      v8 = v4;
      v6 = *(v7 + 96);
      *(v7 + 96) = v8;
    }
  }

  else
  {
    v5 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Derived Property Observer has never processed persistent history data.", buf, 2u);
    }
  }
}

uint64_t sub_10003E784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v74 = a3;
  v70 = a2;
  v69 = a1;
  v3 = sub_100168088(&qword_10057D790);
  v4 = *(v3 - 8);
  v81 = v3;
  v82 = v4;
  __chkstk_darwin(v3);
  v79 = &v48 - v5;
  v6 = sub_100168088(&qword_10057D798);
  v7 = *(v6 - 8);
  v83 = v6;
  v84 = v7;
  __chkstk_darwin(v6);
  v80 = &v48 - v8;
  v76 = sub_100168088(&qword_10057D7A0);
  v78 = *(v76 - 8);
  __chkstk_darwin(v76);
  v72 = &v48 - v9;
  v75 = sub_100168088(&qword_10057D7A8);
  v77 = *(v75 - 8);
  __chkstk_darwin(v75);
  v71 = &v48 - v10;
  v65 = sub_100168088(&unk_10057D690);
  v66 = *(v65 - 8);
  __chkstk_darwin(v65);
  v63 = &v48 - v11;
  v67 = sub_100168088(&qword_10057D7B0);
  v73 = *(v67 - 8);
  __chkstk_darwin(v67);
  v62 = &v48 - v12;
  v59 = sub_100168088(&qword_10057D688);
  v60 = *(v59 - 8);
  __chkstk_darwin(v59);
  v58 = &v48 - v13;
  v64 = sub_100168088(&unk_10057D7B8);
  v68 = *(v64 - 8);
  __chkstk_darwin(v64);
  v57 = &v48 - v14;
  v15 = sub_100168088(&qword_100575C10);
  __chkstk_darwin(v15 - 8);
  v85 = &v48 - v16;
  v56 = sub_100168088(&qword_10057D630);
  v17 = *(v56 - 8);
  __chkstk_darwin(v56);
  v19 = &v48 - v18;
  v54 = sub_100168088(&qword_10057D7C8);
  v55 = *(v54 - 8);
  __chkstk_darwin(v54);
  v49 = &v48 - v20;
  v53 = OBJC_IVAR___MTFeedManager_systemFuture;
  static Subscribers.Demand.unlimited.getter();
  sub_100168088(&unk_10057D640);
  sub_100168088(&unk_1005783E0);
  sub_100009FAC(&unk_10057D650, &unk_10057D640);
  v61 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_100009FAC(&qword_10057DE80, &unk_1005783E0);
  Publisher<>.flatMap<A>(maxPublishers:_:)();
  sub_100009FAC(&qword_10057D660, &qword_10057D630);
  v21 = v56;
  v22 = Publisher.eraseToAnyPublisher()();
  (*(v17 + 8))(v19, v21);
  v86 = v22;
  sub_100009F1C(0, &qword_1005729D0);
  v23 = static OS_dispatch_queue.main.getter();
  v87 = v23;
  v52 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v24 = *(v52 - 8);
  v51 = *(v24 + 56);
  v53 = v24 + 56;
  v25 = v85;
  v51(v85, 1, 1, v52);
  v56 = sub_1000179F8();
  v26 = v49;
  Publisher.receive<A>(on:options:)();
  sub_100009104(v25, &qword_100575C10);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v50 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_100009FAC(&qword_10057D7D0, &qword_10057D7C8);
  v27 = v54;
  Publisher<>.sink(receiveValue:)();

  (*(v55 + 8))(v26, v27);
  swift_beginAccess();
  v55 = sub_100168088(&unk_1005783F0);
  v54 = sub_100009FAC(&unk_10057A070, &unk_1005783F0);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  swift_getObjectType();
  v28 = v58;
  dispatch thunk of URLBasedFeedUpdater.updatingFeedURLs.getter();
  swift_getKeyPath();
  sub_100009FAC(&qword_10057D7D8, &qword_10057D688);
  v29 = v57;
  v30 = v59;
  Publisher.map<A>(_:)();

  (*(v60 + 8))(v28, v30);
  v31 = v63;
  dispatch thunk of StoreFeedUpdater.updatingStoreIDs.getter();
  swift_getKeyPath();
  sub_100009FAC(&qword_10057D7E0, &unk_10057D690);
  v32 = v62;
  v33 = v65;
  Publisher.map<A>(_:)();

  (*(v66 + 8))(v31, v33);
  sub_100009FAC(&qword_10057D7E8, &unk_10057D7B8);
  sub_100009FAC(&qword_10057D7F0, &qword_10057D7B0);
  v34 = v72;
  v35 = v64;
  v36 = v67;
  Publisher.combineLatest<A>(_:)();
  sub_100009FAC(&qword_10057D7F8, &qword_10057D7A0);
  v37 = v71;
  v38 = v76;
  Publisher.map<A>(_:)();
  (*(v78 + 8))(v34, v38);
  sub_100009FAC(&qword_10057D800, &qword_10057D7A8);
  v39 = v75;
  v40 = Publisher.eraseToAnyPublisher()();
  (*(v77 + 8))(v37, v39);
  (*(v73 + 8))(v32, v36);
  (*(v68 + 8))(v29, v35);
  v86 = v40;

  v41 = static OS_dispatch_queue.main.getter();
  v87 = v41;
  v42 = v85;
  v51(v85, 1, 1, v52);
  sub_100168088(&qword_10057D808);
  sub_100009FAC(&qword_10057D810, &qword_10057D808);
  v43 = v79;
  Publisher.receive<A>(on:options:)();
  sub_100009104(v42, &qword_100575C10);

  sub_100009FAC(&qword_10057D818, &qword_10057D790);
  v45 = v80;
  v44 = v81;
  Publisher.drop(while:)();
  (*(v82 + 8))(v43, v44);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009FAC(&qword_10057D820, &qword_10057D798);
  v46 = v83;
  Publisher<>.sink(receiveValue:)();

  (*(v84 + 8))(v45, v46);
  swift_beginAccess();
  AnyCancellable.store<A>(in:)();
  swift_endAccess();
}

uint64_t sub_10003F658()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10003F6BC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _processLatestPersistentHistoryTransactions];
}

uint64_t sub_10003F6FC(uint64_t result)
{
  if (result)
  {
    swift_unknownObjectRelease();
  }

  return result;
}

void sub_10003FE08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id location)
{
  _Block_object_dispose((v31 - 256), 8);
  _Block_object_dispose((v31 - 224), 8);
  _Unwind_Resume(a1);
}

void sub_100040158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_10004018C(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 executeRequest:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

uint64_t sub_100040214(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

void *sub_10004025C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  if (__OFADD__(*result, v2))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + v2;
  }

  return result;
}

__n128 sub_100040274(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100040288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = a3;
  v3 = sub_100168088(&qword_100575C10);
  __chkstk_darwin(v3 - 8);
  v55 = &v37 - v4;
  v45 = sub_100168088(&qword_10057D848);
  v48 = *(v45 - 8);
  __chkstk_darwin(v45);
  v41 = &v37 - v5;
  v47 = sub_100168088(&qword_10057D850);
  v49 = *(v47 - 8);
  __chkstk_darwin(v47);
  v42 = &v37 - v6;
  v51 = sub_100168088(&qword_10057D858);
  v54 = *(v51 - 8);
  __chkstk_darwin(v51);
  v43 = &v37 - v7;
  v8 = sub_100168088(&qword_10057D860);
  v9 = *(v8 - 8);
  v52 = v8;
  v53 = v9;
  __chkstk_darwin(v8);
  v46 = &v37 - v10;
  v11 = sub_100168088(&unk_10057D690);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v37 - v13;
  v39 = sub_100168088(&qword_10057D868);
  v50 = *(v39 - 8);
  __chkstk_darwin(v39);
  v56 = &v37 - v15;
  v16 = sub_100168088(&qword_10057D688);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v37 - v18;
  v38 = sub_100168088(&qword_10057D870);
  v44 = *(v38 - 8);
  __chkstk_darwin(v38);
  v21 = &v37 - v20;
  swift_getObjectType();
  dispatch thunk of URLBasedFeedUpdater.updatingFeedURLs.getter();
  swift_getKeyPath();
  sub_100009FAC(&qword_10057D7D8, &qword_10057D688);
  Publisher.map<A>(_:)();

  (*(v17 + 8))(v19, v16);
  dispatch thunk of StoreFeedUpdater.updatingStoreIDs.getter();
  swift_getKeyPath();
  sub_100009FAC(&qword_10057D7E0, &unk_10057D690);
  Publisher.map<A>(_:)();

  (*(v12 + 8))(v14, v11);
  sub_100009FAC(&qword_10057D878, &qword_10057D870);
  sub_100009FAC(&qword_10057D880, &qword_10057D868);
  v22 = v41;
  v24 = v38;
  v23 = v39;
  Publisher.combineLatest<A>(_:)();
  sub_100009FAC(&qword_10057D888, &qword_10057D848);
  v25 = v42;
  v26 = v45;
  Publisher.map<A>(_:)();
  (*(v48 + 8))(v22, v26);
  sub_100009FAC(&qword_10057D890, &qword_10057D850);
  v27 = v43;
  v28 = v47;
  Publisher<>.removeDuplicates()();
  (*(v49 + 8))(v25, v28);
  sub_100009F1C(0, &qword_1005729D0);
  v29 = static OS_dispatch_queue.main.getter();
  v57 = v29;
  v30 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v31 = v55;
  (*(*(v30 - 8) + 56))(v55, 1, 1, v30);
  sub_100009FAC(&qword_10057D898, &qword_10057D858);
  sub_1000179F8();
  v32 = v46;
  v33 = v51;
  Publisher.receive<A>(on:options:)();
  sub_100009104(v31, &qword_100575C10);

  (*(v54 + 8))(v27, v33);
  sub_100009FAC(&qword_10057D8A0, &qword_10057D860);
  v34 = v52;
  v35 = Publisher.eraseToAnyPublisher()();
  (*(v53 + 8))(v32, v34);
  (*(v50 + 8))(v56, v23);
  (*(v44 + 8))(v21, v24);
  return v35;
}

uint64_t sub_100040C48@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100040288(*a1, a1[1], a1[2]);
  *a2 = result;
  return result;
}

uint64_t sub_100040C7C@<X0>(uint64_t *a1@<X3>, unint64_t *a2@<X5>, _BYTE *a3@<X8>)
{
  sub_100168088(a1);
  sub_100009FAC(a2, a1);
  result = Collection.isNotEmpty.getter();
  *a3 = result & 1;
  return result;
}

uint64_t sub_100040E48()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100040E88()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100040EE0(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_100040F2C()
{
  v1 = type metadata accessor for PerformanceTestCase();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100040FC8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100041008(void (*a1)(void), void (*a2)(void), uint64_t a3)
{
  a1(*(v3 + 32));
  a2(*(v3 + 40));

  return _swift_deallocObject(v3, a3, 7);
}

uint64_t sub_10004106C()
{
  v1 = type metadata accessor for ShowSettingsView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  sub_100004590(v0 + v3);

  v5 = *(v1 + 32);
  sub_100168088(&qword_100577830);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for DismissAction();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000411F4()
{
  v1 = type metadata accessor for PlaybackIntent();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  sub_100004590(v0 + v5);

  if (*(v0 + v6 + 24))
  {
    sub_100004590(v0 + v6);
  }

  return _swift_deallocObject(v0, v6 + 32, v3 | 7);
}

uint64_t sub_10004131C()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10004136C()
{
  v1 = type metadata accessor for DownloadedAssetEffect();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for DownloadEnvironment();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_1000414CC(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_100041598()
{
  v1 = sub_100168088(&qword_100580288);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10004162C()
{

  return _swift_deallocObject(v0, 56, 7);
}

void sub_100041758(uint64_t a1)
{
  v1 = a1;
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v116 objects:v128 count:16];
  if (v2)
  {
    v4 = v2;
    v5 = *v117;
    v89 = kMTPodcastEntityName;
    v83 = kPodcastUuid;
    v6 = (v1 + 48);
    v92 = kMTEpisodeEntityName;
    v82 = kEpisodePodcastUuid;
    v7 = (v1 + 56);
    v91 = kEpisodePodcast;
    *&v3 = 134349056;
    v74 = v3;
    v95 = v1;
    v75 = *v117;
    do
    {
      v8 = 0;
      v76 = v4;
      do
      {
        if (*v117 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v81 = v8;
        v9 = *(*(&v116 + 1) + 8 * v8);
        context = objc_autoreleasePoolPush();
        v10 = [v9 author];
        v11 = [v10 isEqualToString:@"MTPodcastDerivedPropertyObserver"];

        if ((v11 & 1) == 0)
        {
          v86 = +[NSMutableSet set];
          v85 = +[NSMutableSet set];
          v84 = +[NSMutableSet set];
          v112 = 0u;
          v113 = 0u;
          v114 = 0u;
          v115 = 0u;
          v79 = v9;
          v93 = [v9 changes];
          v12 = [v93 countByEnumeratingWithState:&v112 objects:v127 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v113;
            do
            {
              for (i = 0; i != v13; i = i + 1)
              {
                if (*v113 != v14)
                {
                  objc_enumerationMutation(v93);
                }

                v16 = *(*(&v112 + 1) + 8 * i);
                v17 = *(*(v1 + 72) + 8);
                if (*(v17 + 24))
                {
                  v18 = 1;
                }

                else
                {
                  v18 = [*(v1 + 40) _shouldUpdatePodcastsStatsForChange:*(*(&v112 + 1) + 8 * i)];
                  v17 = *(*(v1 + 72) + 8);
                }

                *(v17 + 24) = v18;
                if ([*(v1 + 40) _changeContainsRelevantEpisodeChanges:{v16, v74}])
                {
                  v19 = [v16 changedObjectID];
                  [v86 addObject:v19];
                }

                if ([*(v1 + 40) _changeContainsRelevantPodcastChanges:v16])
                {
                  v20 = [v16 changedObjectID];
                  [v85 addObject:v20];
                }

                if ([*(v1 + 40) _changeContainsRelevantChannelChanges:v16])
                {
                  v21 = [v16 changedObjectID];
                  [v84 addObject:v21];
                }

                v22 = [v16 changedObjectID];
                v23 = [v22 entity];
                v24 = [v23 name];

                v25 = [v16 changeType];
                if ([v24 isEqualToString:v89])
                {
                  v26 = v25 == 2;
                }

                else
                {
                  v26 = 0;
                }

                if (v26)
                {
                  v27 = v13;
                  v28 = v14;
                  v29 = [v16 tombstone];
                  v30 = [v29 objectForKey:v83];

                  if (v30)
                  {
                    [*v6 addObject:v30];
                  }

                  v14 = v28;
                  v13 = v27;
                  v1 = v95;
                }

                if ([v24 isEqualToString:v92] && v25 == 2)
                {
                  v31 = [v16 tombstone];
                  v32 = [v31 objectForKey:v82];

                  if (v32)
                  {
                    [*v7 addObject:v32];
                  }
                }
              }

              v13 = [v93 countByEnumeratingWithState:&v112 objects:v127 count:16];
            }

            while (v13);
          }

          v33 = [[NSFetchRequest alloc] initWithEntityName:v92];
          v34 = [NSPredicate predicateForObjectIdsInSet:v86];
          [v33 setPredicate:v34];

          [v33 setReturnsDistinctResults:1];
          [v33 setIncludesPropertyValues:1];
          v126 = v91;
          v35 = [NSArray arrayWithObjects:&v126 count:1];
          [v33 setPropertiesToFetch:v35];

          [v33 setResultType:2];
          v78 = v33;
          v36 = [*(v1 + 64) executeFetchRequest:v33];
          v108 = 0u;
          v109 = 0u;
          v110 = 0u;
          v111 = 0u;
          v88 = v36;
          v37 = [v36 countByEnumeratingWithState:&v108 objects:v125 count:16];
          if (v37)
          {
            v38 = v37;
            v39 = *v109;
            do
            {
              for (j = 0; j != v38; j = j + 1)
              {
                if (*v109 != v39)
                {
                  objc_enumerationMutation(v88);
                }

                v41 = [*(*(&v108 + 1) + 8 * j) objectForKeyedSubscript:{v91, v74}];
                if (v41)
                {
                  v42 = [*(v1 + 64) objectWithID:v41];
                  v43 = [v42 uuid];

                  if (v43)
                  {
                    if ([v42 isHiddenOrImplicitlyFollowed])
                    {
                      v44 = v6;
                    }

                    else
                    {
                      v44 = v7;
                    }

                    v45 = *v44;
                    v46 = [v42 uuid];
                    [v45 addObject:v46];
                  }
                }
              }

              v38 = [v88 countByEnumeratingWithState:&v108 objects:v125 count:16];
            }

            while (v38);
          }

          v106 = 0u;
          v107 = 0u;
          v104 = 0u;
          v105 = 0u;
          v47 = [v85 allObjects];
          v48 = [v47 countByEnumeratingWithState:&v104 objects:v124 count:16];
          if (v48)
          {
            v49 = v48;
            v50 = *v105;
            do
            {
              for (k = 0; k != v49; k = k + 1)
              {
                if (*v105 != v50)
                {
                  objc_enumerationMutation(v47);
                }

                v52 = [*(v1 + 64) objectWithID:*(*(&v104 + 1) + 8 * k)];
                v53 = [v52 uuid];

                if (v53)
                {
                  if ([v52 hidden])
                  {
                    v54 = v6;
                  }

                  else
                  {
                    v54 = v7;
                  }

                  v55 = *v54;
                  v56 = [v52 uuid];
                  [v55 addObject:v56];
                }
              }

              v49 = [v47 countByEnumeratingWithState:&v104 objects:v124 count:16];
            }

            while (v49);
          }

          v102 = 0u;
          v103 = 0u;
          v100 = 0u;
          v101 = 0u;
          v87 = [v84 allObjects];
          v94 = [v87 countByEnumeratingWithState:&v100 objects:v123 count:16];
          if (v94)
          {
            v90 = *v101;
            do
            {
              for (m = 0; m != v94; m = m + 1)
              {
                if (*v101 != v90)
                {
                  objc_enumerationMutation(v87);
                }

                v58 = [*(v1 + 64) objectWithID:*(*(&v100 + 1) + 8 * m)];
                v96 = 0u;
                v97 = 0u;
                v98 = 0u;
                v99 = 0u;
                v59 = [v58 podcasts];
                v60 = [v59 countByEnumeratingWithState:&v96 objects:v122 count:16];
                if (v60)
                {
                  v61 = v60;
                  v62 = *v97;
                  do
                  {
                    for (n = 0; n != v61; n = n + 1)
                    {
                      if (*v97 != v62)
                      {
                        objc_enumerationMutation(v59);
                      }

                      v64 = *(*(&v96 + 1) + 8 * n);
                      v65 = [v64 uuid];

                      if (v65)
                      {
                        if ([v64 hidden])
                        {
                          v66 = v6;
                        }

                        else
                        {
                          v66 = v7;
                        }

                        v67 = *v66;
                        v68 = [v64 uuid];
                        [v67 addObject:v68];
                      }
                    }

                    v61 = [v59 countByEnumeratingWithState:&v96 objects:v122 count:16];
                  }

                  while (v61);
                }

                v1 = v95;
              }

              v94 = [v87 countByEnumeratingWithState:&v100 objects:v123 count:16];
            }

            while (v94);
          }

          v69 = _MTLogCategoryDatabase();
          if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
          {
            v70 = [v79 transactionNumber];
            *buf = v74;
            v121 = v70;
            _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_INFO, "Derived Property Observer processed transaction %{public}lld", buf, 0xCu);
          }

          v71 = [v79 token];
          v72 = *(*(v1 + 80) + 8);
          v73 = *(v72 + 40);
          *(v72 + 40) = v71;

          v5 = v75;
          v4 = v76;
        }

        objc_autoreleasePoolPop(context);
        v8 = v81 + 1;
      }

      while ((v81 + 1) != v4);
      v4 = [obj countByEnumeratingWithState:&v116 objects:v128 count:16];
    }

    while (v4);
  }
}