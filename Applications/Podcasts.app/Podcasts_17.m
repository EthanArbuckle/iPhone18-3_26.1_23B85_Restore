size_t sub_100285C20@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for EpisodeEntity();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v24 - v8;
  sub_100009F1C(0, &qword_100573660);
  result = NSManagedObjectContext.fetch<A>(_:)();
  if (v1)
  {
    return result;
  }

  v26 = 0;
  if (!(result >> 62))
  {
    v11 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_4;
    }

LABEL_17:

    *a1 = _swiftEmptyArrayStorage;
    return result;
  }

  v23 = result;
  v11 = _CocoaArrayWrapper.endIndex.getter();
  result = v23;
  if (!v11)
  {
    goto LABEL_17;
  }

LABEL_4:
  v12 = result;
  v28 = _swiftEmptyArrayStorage;
  result = sub_1001A7848(0, v11 & ~(v11 >> 63), 0);
  if (v11 < 0)
  {
    __break(1u);
  }

  else
  {
    v25 = a1;
    v13 = v28;
    v14 = v12;
    v27 = v3;
    if ((v12 & 0xC000000000000001) != 0)
    {
      v15 = 0;
      do
      {
        v16 = v14;
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        EpisodeEntity.init(model:)();
        v28 = v13;
        v18 = v13[2];
        v17 = v13[3];
        if (v18 >= v17 >> 1)
        {
          sub_1001A7848(v17 > 1, v18 + 1, 1);
          v13 = v28;
        }

        ++v15;
        v13[2] = v18 + 1;
        (*(v4 + 32))(v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v18, v9, v27);
        v14 = v16;
      }

      while (v11 != v15);
    }

    else
    {
      v19 = 32;
      do
      {
        v20 = *(v12 + v19);
        EpisodeEntity.init(model:)();
        v28 = v13;
        v22 = v13[2];
        v21 = v13[3];
        if (v22 >= v21 >> 1)
        {
          sub_1001A7848(v21 > 1, v22 + 1, 1);
          v13 = v28;
        }

        v13[2] = v22 + 1;
        (*(v4 + 32))(v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v22, v6, v27);
        v19 += 8;
        --v11;
      }

      while (v11);
    }

    *v25 = v13;
  }

  return result;
}

uint64_t sub_100285F14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1001B9C88;

  return (sub_100285FCC)(a2, a3);
}

uint64_t sub_100285FCC(uint64_t a1)
{
  v1[4] = a1;
  v2 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v3 = type metadata accessor for TaskPriority();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  v4 = sub_100168088(&unk_1005738E0);
  v5 = swift_task_alloc();
  v1[11] = v5;
  *v5 = v1;
  v5[1] = sub_100286144;

  return BaseObjectGraph.inject<A>(_:)(v1 + 2, v4, v4);
}

uint64_t sub_100286144()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_10026E9D8;
  }

  else
  {
    v2 = sub_100286258;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100286258()
{
  v1 = v0[12];
  v0[13] = v0[2];
  swift_getObjectType();
  j___sScTss5NeverORszABRs_rlE15currentPriorityScPvgZ();
  v2 = NSManagedObjectContextProvider.managedObjectContext(for:)();
  v0[14] = v2;
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];
  if (v1)
  {
    swift_unknownObjectRelease();
    (*(v4 + 8))(v3, v5);

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v2;
    v9 = v0[4];
    (*(v4 + 8))(v0[10], v0[8]);
    v10 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:kMTEpisodeEntityName];
    v0[15] = v10;
    [v10 setFetchLimit:*(v9 + *(type metadata accessor for FetchShowLatestLocalEpisodesIntent() + 20))];
    isa = [objc_opt_self() sortDescriptorsForFirstAvailableAscending:0];
    if (!isa)
    {
      sub_100009F1C(0, &qword_10057B1F0);
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
      isa = Array._bridgeToObjectiveC()().super.isa;
    }

    v12 = v0[6];
    v25 = v0[7];
    v13 = v0[5];
    [v10 setSortDescriptors:isa];

    sub_100009F1C(0, &qword_100573660);
    v14 = ShowEntity.preferredIdentifier()();
    v16 = v15;
    v18 = v17;
    v19 = static MTEpisode.predicateForAllEpisodes(forPodcast:)();
    sub_1001CEA68(v14, v16, v18);
    [v10 setPredicate:v19];

    v20 = swift_allocObject();
    v0[16] = v20;
    *(v20 + 16) = v8;
    *(v20 + 24) = v10;
    (*(v12 + 104))(v25, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v13);
    v8;
    v21 = v10;
    v22 = swift_task_alloc();
    v0[17] = v22;
    v23 = sub_100168088(&unk_10057B200);
    *v22 = v0;
    v22[1] = sub_1002865B0;
    v24 = v0[7];

    return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 3, v24, sub_100286858, v20, v23);
  }
}

uint64_t sub_1002865B0()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  (*(v2[6] + 8))(v2[7], v2[5]);

  if (v0)
  {
    v3 = sub_1002867D0;
  }

  else
  {
    v3 = sub_100286734;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100286734()
{
  v1 = *(v0 + 120);

  swift_unknownObjectRelease();
  v2 = *(v0 + 24);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1002867D0()
{
  v1 = *(v0 + 120);

  swift_unknownObjectRelease();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100286960()
{
  v1 = OBJC_IVAR____TtC8Podcasts25PlatformContentController_syncabilityController;
  swift_beginAccess();
  sub_100010430(v0 + v1, v6, &qword_10057B380);
  if (!v7)
  {
    return sub_100009104(v6, &qword_10057B380);
  }

  sub_100004428(v6, v5);
  sub_100009104(v6, &qword_10057B380);
  v2 = v5[4];
  sub_1000044A0(v5, v5[3]);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v2 + 16))(v3);

  return sub_100004590(v5);
}

id sub_100286ADC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlatformContentController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100286B80()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_100286BB8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_100184658(a1, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v2;
    sub_10025ED70(v7, a2, isUniquelyReferenced_nonNull_native);
    result = sub_10028A5E4(a2, type metadata accessor for DownloadJob);
    *v2 = v6;
  }

  else
  {
    sub_100009104(a1, &unk_1005817B0);
    sub_10028A308(a2, v7);
    sub_10028A5E4(a2, type metadata accessor for DownloadJob);
    return sub_100009104(v7, &unk_1005817B0);
  }

  return result;
}

void sub_100286C9C(uint64_t a1, void *a2)
{
  v5 = sub_100168088(&qword_10057B4F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for FairPlayDownloadsObserver.DownloadState();
  v9 = __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v9) == 1)
  {
    sub_100009104(a1, &qword_10057B4F0);
    sub_10028A3E8(a2, v7);

    sub_100009104(v7, &qword_10057B4F0);
  }

  else
  {
    sub_10028A1DC(a1, v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_10025F364(v11, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v15;
  }
}

uint64_t sub_100286E40(void *a1, uint64_t a2, void *a3, void *a4)
{
  v32 = a3;
  v33 = a4;
  v31 = *v4;
  v37 = type metadata accessor for DispatchWorkItemFlags();
  v39 = *(v37 - 8);
  __chkstk_darwin(v37);
  v35 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for DispatchQoS();
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v30 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v4[5];
  v13 = swift_allocObject();
  swift_weakInit();
  (*(v10 + 16))(v12, a2, v9);
  v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v15 = (v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = v13;
  *(v17 + 24) = a1;
  (*(v10 + 32))(v17 + v14, v12, v9);
  v18 = v31;
  v19 = v32;
  *(v17 + v15) = v32;
  v20 = v33;
  *(v17 + v16) = v33;
  *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = v18;
  aBlock[4] = sub_10028A53C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004E9098;
  v21 = _Block_copy(aBlock);

  v22 = a1;
  v23 = v19;
  v24 = v20;
  v25 = v30;
  static DispatchQoS.unspecified.getter();
  v40 = _swiftEmptyArrayStorage;
  sub_10000E4F4(&qword_10057D380, &type metadata accessor for DispatchWorkItemFlags);
  sub_100168088(&unk_100575CD0);
  sub_100015E58(&qword_10057D390, &unk_100575CD0);
  v26 = v35;
  v27 = v37;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v39 + 8))(v26, v27);
  (*(v36 + 8))(v25, v38);
}

uint64_t sub_100287278(void *a1, uint64_t a2, void *a3, void *a4)
{
  v23 = a2;
  v8 = *v4;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  v12 = *(v25 - 8);
  __chkstk_darwin(v25);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v4[5];
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = a1;
  v16[4] = a3;
  v16[5] = a4;
  v16[6] = v23;
  v16[7] = v8;
  aBlock[4] = sub_10028A0E0;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004E9048;
  v17 = _Block_copy(aBlock);

  v18 = a1;
  v19 = a3;
  v20 = a4;
  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v27 = _swiftEmptyArrayStorage;
  sub_10000E4F4(&qword_10057D380, &type metadata accessor for DispatchWorkItemFlags);
  sub_100168088(&unk_100575CD0);
  sub_100015E58(&qword_10057D390, &unk_100575CD0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v26 + 8))(v11, v9);
  (*(v12 + 8))(v14, v25);
}

uint64_t sub_1002875BC(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v67 = a4;
  v68 = a5;
  v76 = a3;
  v6 = sub_100168088(&qword_10057B4F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v73 = &v58 - v10;
  __chkstk_darwin(v11);
  v72 = &v58 - v12;
  v13 = type metadata accessor for FairPlayDownloadsObserver.DownloadState();
  v71 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = (&v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Logger();
  v69 = *(v20 - 8);
  v70 = v20;
  __chkstk_darwin(v20);
  v22 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v75 = result;
  if (result)
  {
    static Logger.downloads.getter();
    v63 = *(v17 + 16);
    v64 = v17 + 16;
    v63(v19, v76, v16);
    v24 = a2;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();

    v62 = v26;
    v27 = os_log_type_enabled(v25, v26);
    v65 = v16;
    v66 = v17;
    v74 = v24;
    if (v27)
    {
      v28 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v77[0] = v60;
      *v28 = 136316163;
      *(v28 + 4) = sub_1000153E0(0xD00000000000001CLL, 0x800000010046C990, v77);
      *(v28 + 12) = 2160;
      *(v28 + 14) = 1752392040;
      *(v28 + 22) = 2081;
      v29 = [v24 description];
      v59 = v25;
      v30 = v29;
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v61 = v15;
      v32 = v13;
      v33 = v8;
      v35 = v34;

      v36 = sub_1000153E0(v31, v35, v77);
      v8 = v33;
      v13 = v32;
      v15 = v61;

      *(v28 + 24) = v36;
      *(v28 + 32) = 2160;
      *(v28 + 34) = 1752392040;
      *(v28 + 42) = 2081;
      v37 = URL.path(percentEncoded:)(1);
      (*(v17 + 8))(v19, v16);
      v38 = sub_1000153E0(v37._countAndFlagsBits, v37._object, v77);

      *(v28 + 44) = v38;
      v39 = v59;
      _os_log_impl(&_mh_execute_header, v59, v62, "%s didFinishDownloading %{private,mask.hash}s to %{private,mask.hash}s.", v28, 0x34u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v17 + 8))(v19, v16);
    }

    (*(v69 + 8))(v22, v70);
    v40 = v73;
    v41 = v75;
    swift_beginAccess();
    v42 = *(v41 + 32);
    v44 = v71;
    v43 = v72;
    if (*(v42 + 16) && (v45 = sub_1002021B8(v74), (v46 & 1) != 0))
    {
      sub_10028A178(*(v42 + 56) + *(v44 + 72) * v45, v43);
      v47 = 0;
    }

    else
    {
      v47 = 1;
    }

    v48 = *(v44 + 56);
    v48(v43, v47, 1, v13);
    sub_10028A0F0(v43, v40);
    if ((*(v44 + 48))(v40, 1, v13) == 1)
    {
      v50 = v65;
      v49 = v66;
      (*(v66 + 56))(v15 + *(v13 + 24), 1, 1, v65);
      v51 = v67;
      v52 = v68;
      *v15 = v67;
      v15[1] = v52;
      v53 = v15 + *(v13 + 28);
      *v53 = 0;
      v53[8] = -1;
      v54 = v51;
      v55 = v52;
      sub_100009104(v40, &qword_10057B4F0);
    }

    else
    {
      sub_10028A1DC(v40, v15);
      v50 = v65;
      v49 = v66;
    }

    swift_endAccess();
    v56 = *(v13 + 24);
    sub_100009104(v15 + v56, &qword_100574040);
    v63(v15 + v56, v76, v50);
    (*(v49 + 56))(v15 + v56, 0, 1, v50);
    sub_10028A178(v15, v8);
    v48(v8, 0, 1, v13);
    swift_beginAccess();
    v57 = v74;
    sub_100286C9C(v8, v57);
    swift_endAccess();
    sub_100287CAC(v57);

    return sub_10028A5E4(v15, type metadata accessor for FairPlayDownloadsObserver.DownloadState);
  }

  return result;
}

uint64_t sub_100287CAC(void *a1)
{
  v3 = sub_100168088(&qword_10057B4F0);
  __chkstk_darwin(v3 - 8);
  v5 = &v111 - v4;
  v117 = sub_100168088(&qword_100582810);
  __chkstk_darwin(v117);
  v119 = (&v111 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v118 = (&v111 - v8);
  v9 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v9 - 8);
  v127 = (&v111 - v10);
  v11 = type metadata accessor for URL();
  v124 = *(v11 - 8);
  v125 = v11;
  __chkstk_darwin(v11);
  v113 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v120 = &v111 - v14;
  v15 = type metadata accessor for FairPlayDownloadsObserver.DownloadState();
  v122 = *(v15 - 8);
  v123 = v15;
  __chkstk_darwin(v15);
  v121 = &v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v126 = &v111 - v18;
  v19 = type metadata accessor for Logger();
  v20 = *(v19 - 8);
  v129 = v19;
  v130 = v20;
  __chkstk_darwin(v19);
  v22 = &v111 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v115 = &v111 - v24;
  __chkstk_darwin(v25);
  v114 = &v111 - v26;
  __chkstk_darwin(v27);
  v29 = &v111 - v28;
  v30 = type metadata accessor for DispatchPredicate();
  v31 = *(v30 - 8);
  v32 = __chkstk_darwin(v30);
  v34 = (&v111 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = *(v1 + 40);
  *v34 = v35;
  (*(v31 + 104))(v34, enum case for DispatchPredicate.onQueue(_:), v30, v32);
  v36 = v35;
  v37 = _dispatchPreconditionTest(_:)();
  result = (*(v31 + 8))(v34, v30);
  if ((v37 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v116 = v5;
  v128 = v1;
  static Logger.downloads.getter();
  v39 = a1;
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v131[0] = swift_slowAlloc();
    *v42 = 136315651;
    *(v42 + 4) = sub_1000153E0(0xD00000000000001CLL, 0x800000010046C990, v131);
    *(v42 + 12) = 2160;
    *(v42 + 14) = 1752392040;
    *(v42 + 22) = 2081;
    v43 = [v39 description];
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v39;
    v47 = v46;

    v48 = sub_1000153E0(v44, v47, v131);
    v39 = v45;

    *(v42 + 24) = v48;
    _os_log_impl(&_mh_execute_header, v40, v41, "%s Validating download status for %{private,mask.hash}s.", v42, 0x20u);
    swift_arrayDestroy();
  }

  v49 = *(v130 + 8);
  v50 = v29;
  v51 = v129;
  v49(v50, v129);
  v52 = v127;
  v53 = v128;
  swift_beginAccess();
  v54 = *(v53 + 32);
  if (!*(v54 + 16) || (v55 = sub_1002021B8(v39), (v56 & 1) == 0))
  {
    swift_endAccess();
    goto LABEL_10;
  }

  v57 = v121;
  sub_10028A178(*(v54 + 56) + *(v122 + 72) * v55, v121);
  v58 = v126;
  sub_10028A1DC(v57, v126);
  swift_endAccess();
  v59 = v58 + *(v123 + 28);
  LODWORD(v60) = *(v59 + 8);
  if (v60 == 255)
  {
    sub_10028A5E4(v58, type metadata accessor for FairPlayDownloadsObserver.DownloadState);
    goto LABEL_10;
  }

  v61 = *v59;
  sub_100010430(v58 + *(v123 + 24), v52, &qword_100574040);
  v63 = v124;
  v62 = v125;
  if ((*(v124 + 48))(v52, 1, v125) == 1)
  {
    sub_10028A5E4(v58, type metadata accessor for FairPlayDownloadsObserver.DownloadState);
    sub_100009104(v52, &qword_100574040);
    v51 = v129;
LABEL_10:
    static Logger.downloads.getter();
    v64 = v39;
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v131[0] = swift_slowAlloc();
      *v67 = 136315651;
      *(v67 + 4) = sub_1000153E0(0xD00000000000001CLL, 0x800000010046C990, v131);
      *(v67 + 12) = 2160;
      *(v67 + 14) = 1752392040;
      *(v67 + 22) = 2081;
      v68 = [v64 description];
      v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v71 = v70;

      v72 = sub_1000153E0(v69, v71, v131);

      *(v67 + 24) = v72;
      _os_log_impl(&_mh_execute_header, v65, v66, "%s Incomplete download data for %{private,mask.hash}s.", v67, 0x20u);
      swift_arrayDestroy();
    }

    return (v49)(v22, v51);
  }

  v74 = *(v63 + 32);
  v73 = v63 + 32;
  v127 = v74;
  v74(v120, v52, v62);
  v112 = v39;
  if (v60)
  {
    sub_10028A240(v61, v60);
    sub_10028A258(v61, 1);
    v75 = v115;
    static Logger.downloads.getter();
    v76 = v39;
    sub_10028A240(v61, v60);
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.error.getter();

    sub_10028A160(v61, v60);
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      LODWORD(v123) = v60;
      v60 = v79;
      v80 = swift_slowAlloc();
      v122 = v73;
      v131[0] = v80;
      *v60 = 136316163;
      *(v60 + 4) = sub_1000153E0(0xD00000000000001CLL, 0x800000010046C990, v131);
      *(v60 + 12) = 2160;
      *(v60 + 14) = 1752392040;
      *(v60 + 22) = 2081;
      v81 = [v76 description];
      v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v84 = v83;

      v85 = sub_1000153E0(v82, v84, v131);

      *(v60 + 24) = v85;
      *(v60 + 32) = 2160;
      *(v60 + 34) = 1752392040;
      *(v60 + 42) = 2081;
      swift_getErrorValue();
      v86 = Error.localizedDescription.getter();
      v88 = sub_1000153E0(v86, v87, v131);

      *(v60 + 44) = v88;
      _os_log_impl(&_mh_execute_header, v77, v78, "%s Download for %{private,mask.hash}s failed with %{private,mask.hash}s.", v60, 0x34u);
      swift_arrayDestroy();

      LOBYTE(v60) = v123;

      v89 = v115;
    }

    else
    {

      v89 = v75;
    }

    v49(v89, v129);
    v104 = v118;
    *v118 = v61;
    swift_storeEnumTagMultiPayload();
    sub_10028A258(v61, 1);
    sub_1002892BC(v76, v120);
    sub_10028A160(v61, v60);
    v105 = v119;
  }

  else
  {
    sub_10028A258(v61, 0);
    v90 = v114;
    static Logger.downloads.getter();
    v91 = v39;
    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      LODWORD(v122) = v93;
      v95 = v94;
      v123 = swift_slowAlloc();
      v131[0] = v123;
      *v95 = 136315651;
      *(v95 + 4) = sub_1000153E0(0xD00000000000001CLL, 0x800000010046C990, v131);
      *(v95 + 12) = 2160;
      *(v95 + 14) = 1752392040;
      *(v95 + 22) = 2081;
      v96 = [v91 description];
      v97 = v60;
      v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v98 = v61;
      v100 = v99;

      v101 = v60;
      LOBYTE(v60) = v97;
      v102 = sub_1000153E0(v101, v100, v131);
      v61 = v98;

      *(v95 + 24) = v102;
      _os_log_impl(&_mh_execute_header, v92, v122, "%s Download for %{private,mask.hash}s successfully completed.", v95, 0x20u);
      swift_arrayDestroy();

      v103 = v114;
    }

    else
    {

      v103 = v90;
    }

    v49(v103, v129);
    v104 = v118;
    v105 = v119;
    (*(v124 + 16))(v118, v120, v125);
    swift_storeEnumTagMultiPayload();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v106 = *(v126 + 8);
    sub_100010430(v104, v105, &qword_100582810);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_10025AA40(v106, *v105);
      swift_unknownObjectRelease();
    }

    else
    {
      v107 = v113;
      v108 = v105;
      v109 = v125;
      v127(v113, v108, v125);
      sub_10025A574(v106, v107);
      swift_unknownObjectRelease();
      (*(v124 + 8))(v107, v109);
    }
  }

  swift_beginAccess();
  v110 = v116;
  sub_10028A3E8(v112, v116);
  swift_endAccess();
  sub_10028A160(v61, v60);
  sub_100009104(v110, &qword_10057B4F0);
  sub_100009104(v104, &qword_100582810);
  (*(v124 + 8))(v120, v125);
  return sub_10028A5E4(v126, type metadata accessor for FairPlayDownloadsObserver.DownloadState);
}

uint64_t sub_100288B2C(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v64 = a4;
  v69 = a2;
  v7 = type metadata accessor for Logger();
  v66 = *(v7 - 8);
  v67 = v7;
  __chkstk_darwin(v7);
  v65 = v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v63 - v10;
  v12 = sub_100168088(&qword_10057B4F0);
  __chkstk_darwin(v12 - 8);
  v68 = v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v63 - v15;
  __chkstk_darwin(v17);
  v19 = v63 - v18;
  v20 = type metadata accessor for FairPlayDownloadsObserver.DownloadState();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v25 = result;
    swift_beginAccess();
    v26 = *(v25 + 32);
    if (*(v26 + 16) && (v27 = sub_1002021B8(v69), (v28 & 1) != 0))
    {
      sub_10028A178(*(v26 + 56) + *(v21 + 72) * v27, v19);
      v29 = 0;
    }

    else
    {
      v29 = 1;
    }

    v63[0] = *(v21 + 56);
    v63[1] = v21 + 56;
    (v63[0])(v19, v29, 1, v20);
    sub_10028A0F0(v19, v16);
    if ((*(v21 + 48))(v16, 1, v20) == 1)
    {
      v30 = *(v20 + 24);
      v31 = type metadata accessor for URL();
      (*(*(v31 - 8) + 56))(&v23[v30], 1, 1, v31);
      v32 = v64;
      *v23 = a3;
      *(v23 + 1) = v32;
      v33 = &v23[*(v20 + 28)];
      *v33 = 0;
      v33[8] = -1;
      v34 = a3;
      v35 = v32;
      sub_100009104(v16, &qword_10057B4F0);
    }

    else
    {
      sub_10028A1DC(v16, v23);
    }

    swift_endAccess();
    if (a5)
    {
      swift_errorRetain();
      static Logger.downloads.getter();
      swift_errorRetain();
      v36 = v69;
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v70[0] = v65;
        *v39 = 136316163;
        *(v39 + 4) = sub_1000153E0(0xD00000000000001CLL, 0x800000010046C990, v70);
        *(v39 + 12) = 2160;
        *(v39 + 14) = 1752392040;
        *(v39 + 22) = 2081;
        v40 = [v36 description];
        LODWORD(v64) = v38;
        v41 = v40;
        v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v44 = v43;

        v45 = sub_1000153E0(v42, v44, v70);

        *(v39 + 24) = v45;
        *(v39 + 32) = 2160;
        *(v39 + 34) = 1752392040;
        *(v39 + 42) = 2081;
        swift_getErrorValue();
        v46 = Error.localizedDescription.getter();
        v48 = sub_1000153E0(v46, v47, v70);

        *(v39 + 44) = v48;
        _os_log_impl(&_mh_execute_header, v37, v64, "%s didCompleteDownload %{private,mask.hash}s with %{private,mask.hash}s.", v39, 0x34u);
        swift_arrayDestroy();
      }

      (*(v66 + 8))(v11, v67);
      v49 = 1;
    }

    else
    {
      v50 = v65;
      static Logger.downloads.getter();
      v51 = v69;
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v70[0] = swift_slowAlloc();
        *v54 = 136315651;
        *(v54 + 4) = sub_1000153E0(0xD00000000000001CLL, 0x800000010046C990, v70);
        *(v54 + 12) = 2160;
        *(v54 + 14) = 1752392040;
        *(v54 + 22) = 2081;
        v55 = [v51 description];
        v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v58 = v57;

        v59 = sub_1000153E0(v56, v58, v70);

        *(v54 + 24) = v59;
        _os_log_impl(&_mh_execute_header, v52, v53, "%s didCompleteDownload %{private,mask.hash}s.", v54, 0x20u);
        swift_arrayDestroy();

        (*(v66 + 8))(v65, v67);
      }

      else
      {

        (*(v66 + 8))(v50, v67);
      }

      a5 = 0;
      v49 = 0;
    }

    v60 = &v23[*(v20 + 28)];
    sub_10028A160(*v60, v60[8]);
    *v60 = a5;
    v60[8] = v49;
    v61 = v68;
    sub_10028A178(v23, v68);
    (v63[0])(v61, 0, 1, v20);
    swift_beginAccess();
    v62 = v69;
    sub_100286C9C(v61, v62);
    swift_endAccess();
    sub_100287CAC(v62);

    return sub_10028A5E4(v23, type metadata accessor for FairPlayDownloadsObserver.DownloadState);
  }

  return result;
}

uint64_t sub_1002892BC(void *a1, void *a2)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v130 = &v118[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v122 = &v118[-v9];
  __chkstk_darwin(v10);
  v129 = &v118[-v11];
  __chkstk_darwin(v12);
  v133 = &v118[-v13];
  v132 = type metadata accessor for Logger();
  v134 = *(v132 - 8);
  __chkstk_darwin(v132);
  v15 = &v118[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v123 = &v118[-v17];
  __chkstk_darwin(v18);
  v131 = &v118[-v19];
  __chkstk_darwin(v20);
  v22 = &v118[-v21];
  v23 = type metadata accessor for DispatchPredicate();
  v24 = *(v23 - 8);
  v25 = __chkstk_darwin(v23);
  v27 = &v118[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = *(v2 + 40);
  *v27 = v28;
  (*(v24 + 104))(v27, enum case for DispatchPredicate.onQueue(_:), v23, v25);
  v29 = v28;
  LOBYTE(v28) = _dispatchPreconditionTest(_:)();
  (*(v24 + 8))(v27, v23);
  if ((v28 & 1) == 0)
  {
    __break(1u);
  }

  v121 = v15;
  static Logger.downloads.getter();
  v30 = *(v6 + 16);
  v126 = (v6 + 16);
  v127 = a2;
  v124 = v30;
  v30(v133, a2, v5);
  v31 = a1;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();

  v34 = os_log_type_enabled(v32, v33);
  v35 = v5;
  v128 = v6;
  v125 = v31;
  if (v34)
  {
    v36 = swift_slowAlloc();
    v120 = swift_slowAlloc();
    v135 = v120;
    *v36 = 136316163;
    *(v36 + 4) = sub_1000153E0(0xD00000000000001CLL, 0x800000010046C990, &v135);
    *(v36 + 12) = 2160;
    *(v36 + 14) = 1752392040;
    *(v36 + 22) = 2081;
    v37 = [v31 description];
    v119 = v33;
    v38 = v37;
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    v42 = sub_1000153E0(v39, v41, &v135);
    v43 = v132;
    v44 = v134;

    *(v36 + 24) = v42;
    *(v36 + 32) = 2160;
    *(v36 + 34) = 1752392040;
    *(v36 + 42) = 2081;
    v45 = v133;
    v46 = URL.path(percentEncoded:)(1);
    v133 = *(v6 + 8);
    (v133)(v45, v35);
    v47 = sub_1000153E0(v46._countAndFlagsBits, v46._object, &v135);

    *(v36 + 44) = v47;
    _os_log_impl(&_mh_execute_header, v32, v119, "%s Removing asset %{private,mask.hash}s at %{private,mask.hash}s.", v36, 0x34u);
    swift_arrayDestroy();

    v48 = v44;
    v49 = v43;
    v50 = *(v48 + 8);
    v50(v22, v43);
  }

  else
  {

    v51 = v133;
    v133 = *(v6 + 8);
    (v133)(v51, v5);
    v50 = *(v134 + 8);
    v49 = v132;
    v50(v22, v132);
  }

  v52 = v131;
  v53 = [objc_opt_self() defaultManager];
  v54 = v127;
  URL.path(percentEncoded:)(0);
  v55 = String._bridgeToObjectiveC()();

  v56 = [v53 fileExistsAtPath:v55];

  v58 = v129;
  v59 = v130;
  if (!v56)
  {
    v79 = v123;
    static Logger.downloads.getter();
    v80 = v122;
    v124(v122, v54, v35);
    v81 = v125;
    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v127 = v53;
      v85 = v84;
      v86 = swift_slowAlloc();
      v131 = v35;
      v135 = v86;
      *v85 = 136316163;
      *(v85 + 4) = sub_1000153E0(0xD00000000000001CLL, 0x800000010046C990, &v135);
      *(v85 + 12) = 2160;
      *(v85 + 14) = 1752392040;
      *(v85 + 22) = 2081;
      v87 = [v81 description];
      v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v126 = v50;
      v89 = v88;
      v91 = v90;

      v92 = sub_1000153E0(v89, v91, &v135);

      *(v85 + 24) = v92;
      *(v85 + 32) = 2160;
      *(v85 + 34) = 1752392040;
      *(v85 + 42) = 2081;
      v93 = URL.path(percentEncoded:)(1);
      (v133)(v80, v131);
      v94 = sub_1000153E0(v93._countAndFlagsBits, v93._object, &v135);

      *(v85 + 44) = v94;
      _os_log_impl(&_mh_execute_header, v82, v83, "%s Unable to remove %{private,mask.hash}s at %{private,mask.hash}s since the file doesn't exist.", v85, 0x34u);
      swift_arrayDestroy();

      v78 = v123;
      return v126(v78, v132);
    }

    (v133)(v80, v35);
    v116 = v79;
    goto LABEL_16;
  }

  URL._bridgeToObjectiveC()(v57);
  v61 = v60;
  v135 = 0;
  v62 = [v53 removeItemAtURL:v60 error:&v135];

  if (v62)
  {
    v63 = v135;
    static Logger.downloads.getter();
    v124(v58, v54, v35);
    v64 = v125;
    v65 = Logger.logObject.getter();
    v66 = v35;
    v67 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v65, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v127 = v53;
      v135 = v69;
      *v68 = 136316163;
      *(v68 + 4) = sub_1000153E0(0xD00000000000001CLL, 0x800000010046C990, &v135);
      *(v68 + 12) = 2160;
      *(v68 + 14) = 1752392040;
      *(v68 + 22) = 2081;
      v70 = [v64 description];
      v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v126 = v50;
      v72 = v71;
      v74 = v73;

      v75 = sub_1000153E0(v72, v74, &v135);

      *(v68 + 24) = v75;
      *(v68 + 32) = 2160;
      *(v68 + 34) = 1752392040;
      *(v68 + 42) = 2081;
      v76 = URL.path(percentEncoded:)(1);
      (v133)(v58, v66);
      v77 = sub_1000153E0(v76._countAndFlagsBits, v76._object, &v135);

      *(v68 + 44) = v77;
      _os_log_impl(&_mh_execute_header, v65, v67, "%s Removed asset %{private,mask.hash}s at %{private,mask.hash}s.", v68, 0x34u);
      swift_arrayDestroy();

      v78 = v131;
      return v126(v78, v132);
    }

    (v133)(v58, v66);
    v116 = v52;
LABEL_16:
    v117 = v132;
    return (v50)(v116, v117);
  }

  v95 = v49;
  v96 = v135;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  v97 = v121;
  static Logger.downloads.getter();
  v124(v59, v54, v35);
  v98 = v125;
  swift_errorRetain();
  v99 = Logger.logObject.getter();
  v100 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v99, v100))
  {
    v101 = swift_slowAlloc();
    v127 = v53;
    v102 = v101;
    v135 = swift_slowAlloc();
    *v102 = 136316419;
    *(v102 + 4) = sub_1000153E0(0xD00000000000001CLL, 0x800000010046C990, &v135);
    *(v102 + 12) = 2160;
    *(v102 + 14) = 1752392040;
    *(v102 + 22) = 2081;
    v103 = [v98 description];
    LODWORD(v131) = v100;
    v104 = v103;
    v105 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v126 = v50;
    v106 = v105;
    v108 = v107;

    v109 = sub_1000153E0(v106, v108, &v135);

    *(v102 + 24) = v109;
    *(v102 + 32) = 2160;
    *(v102 + 34) = 1752392040;
    *(v102 + 42) = 2081;
    v110 = URL.path(percentEncoded:)(1);
    (v133)(v59, v35);
    v111 = sub_1000153E0(v110._countAndFlagsBits, v110._object, &v135);

    *(v102 + 44) = v111;
    *(v102 + 52) = 2080;
    swift_getErrorValue();
    v112 = Error.localizedDescription.getter();
    v114 = sub_1000153E0(v112, v113, &v135);

    *(v102 + 54) = v114;
    _os_log_impl(&_mh_execute_header, v99, v131, "%s Unable to remove %{private,mask.hash}s at %{private,mask.hash}s with %s.", v102, 0x3Eu);
    swift_arrayDestroy();

    v78 = v97;
    return v126(v78, v132);
  }

  (v133)(v59, v35);
  v116 = v97;
  v117 = v95;
  return (v50)(v116, v117);
}

uint64_t sub_10028A070()
{
  sub_100184228(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_10028A0F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_10057B4F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10028A160(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_100182C18(result, a2 & 1);
  }

  return result;
}

uint64_t sub_10028A178(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FairPlayDownloadsObserver.DownloadState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10028A1DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FairPlayDownloadsObserver.DownloadState();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10028A240(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_10028A258(result, a2 & 1);
  }

  return result;
}

uint64_t sub_10028A258(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  return result;
}

double sub_10028A264@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_100202028(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10025FB74();
      v9 = v11;
    }

    sub_10016BE9C(*(v9 + 48) + 40 * v7);
    sub_10016B7CC((*(v9 + 56) + 32 * v7), a2);
    sub_1002921A8(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

double sub_10028A308@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_100202104(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10025FF98();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for DownloadJob(0);
    sub_10028A5E4(v10 + *(*(v11 - 8) + 72) * v7, type metadata accessor for DownloadJob);
    sub_100184658((*(v9 + 56) + 40 * v7), a2);
    sub_10029234C(v7, v9);
    *v3 = v9;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_10028A3E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1002021B8(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v19 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1002604B8();
      v9 = v19;
    }

    v10 = *(v9 + 56);
    v11 = type metadata accessor for FairPlayDownloadsObserver.DownloadState();
    v18 = *(v11 - 8);
    sub_10028A1DC(v10 + *(v18 + 72) * v7, a2);
    sub_1002929A0(v7, v9);
    *v3 = v9;
    v12 = *(v18 + 56);
    v13 = a2;
    v14 = 0;
    v15 = v11;
  }

  else
  {
    v16 = type metadata accessor for FairPlayDownloadsObserver.DownloadState();
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a2;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

uint64_t sub_10028A53C()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + v3);
  v7 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1002875BC(v4, v5, v0 + v2, v6, v7);
}

uint64_t sub_10028A5E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10028A64C()
{
  v1 = v0;
  v2 = v0[2];
  sub_100004428((v0 + 3), v6);
  type metadata accessor for EpisodeDeletionActionProvider();
  swift_allocObject();

  v0[12] = EpisodeDeletionActionProvider.init(asPartOf:episodeDownloadStateController:libraryActionController:)();

  v4 = v0[9];
  if (v4)
  {
    type metadata accessor for EpisodeOfferStateCenter();
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = v2;
    v1[10] = v5;
  }

  return result;
}

uint64_t sub_10028A71C()
{
  v1 = sub_100168088(&unk_10057BBB0);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - v2;
  v4 = *(v0 + 72);
  if (v4)
  {
    v5 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
    swift_beginAccess();
    sub_1001EAFE4(v4 + v5, v3);
    v6 = type metadata accessor for EpisodeContextActionDataType(0);
    (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
    sub_100009104(v3, &unk_10057BBB0);
    v7 = sub_10028A888();
  }

  else
  {
    v8 = type metadata accessor for EpisodeContextActionDataType(0);
    (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
    sub_100009104(v3, &unk_10057BBB0);
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_10028A888()
{
  if (!*(v0 + 80))
  {
    return 0;
  }

  result = sub_1001EA484();
  v2 = result;
  v3 = 0;
  v4 = *(result + 16);
LABEL_3:
  v5 = 24 * v3;
  while (1)
  {
    if (v4 == v3)
    {

      v13 = _swiftEmptyArrayStorage[2];

      return v13 != 0;
    }

    if (v3 >= *(v2 + 16))
    {
      break;
    }

    ++v3;
    v6 = v5 + 24;
    v7 = *(v2 + v5 + 48);
    v5 += 24;
    if (v7 != 2)
    {
      v9 = *(v2 + v6 + 8);
      v8 = *(v2 + v6 + 16);
      if (v7)
      {
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1001A7598(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v11 = _swiftEmptyArrayStorage[2];
      v10 = _swiftEmptyArrayStorage[3];
      if (v11 >= v10 >> 1)
      {
        result = sub_1001A7598((v10 > 1), v11 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v11 + 1;
      v12 = &_swiftEmptyArrayStorage[3 * v11];
      v12[4] = v9;
      v12[5] = v8;
      *(v12 + 48) = v7;
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

void sub_10028A9F0()
{
  v1 = type metadata accessor for EpisodeDeletionActionProvider.Context();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin(v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + 72);
  if (v8)
  {
    v9 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
    swift_beginAccess();
    sub_1001EAFE4(v8 + v9, v7);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1001EDA30(v7);
      return;
    }

    if (*(v0 + 96))
    {
      (*(v2 + 104))(v4, enum case for EpisodeDeletionActionProvider.Context.action(_:), v1);

      v10 = dispatch thunk of EpisodeDeletionActionProvider.deleteEpisodesOrProvideDeleteActions(episodeUuids:stationUuids:context:noConfirmation:)();
      v12 = v11;
      v14 = v13;

      (*(v2 + 8))(v4, v1);
      if (!v12)
      {
        return;
      }

      sub_10028ADE4(v10, v12, v14);
    }
  }
}

uint64_t sub_10028AC0C()
{
  v1 = type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin(v1);
  v3 = (&v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = *(v0 + 72);
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
  swift_beginAccess();
  sub_1001EAFE4(v4 + v5, v3);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1001EDA30(v3);
LABEL_6:
    v8 = [objc_opt_self() mainBundle];
    v15 = 0x800000010046CA20;
    v11 = 0x442065766F6D6552;
    v9 = 0xEF64616F6C6E776FLL;
    v10 = 0xD00000000000003BLL;
    goto LABEL_7;
  }

  v6 = *v3;

  v7 = *(v6 + 16);

  if (v7 < 2)
  {
    goto LABEL_6;
  }

  v8 = [objc_opt_self() mainBundle];
  v15 = 0x800000010046CA80;
  v9 = 0x800000010046CA60;
  v10 = 0xD00000000000003DLL;
  v11 = 0xD000000000000010;
LABEL_7:
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v11, 0, v8, v12, *&v10)._countAndFlagsBits;

  return countAndFlagsBits;
}

void sub_10028ADE4(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v6 = sub_100168088(&unk_10057BB90);
  __chkstk_darwin(v6);
  v37 = v36 - v7;
  v8 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_opt_self() alertControllerWithTitle:v9 message:0 preferredStyle:0];

  if (a3 >> 62)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v11 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  v38 = objc_opt_self();
  if (v11 < 1)
  {
    __break(1u);
    return;
  }

  v12 = 0;
  v13 = a3;
  v14 = v10;
  do
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v19 = *(v13 + 8 * v12 + 32);
    }

    Action.presentationStyle.getter();
    v20 = static Link.Presentation.alertDestructive.getter();
    Link.Presentation.init(rawValue:)();
    v21 = Link.Presentation.init(rawValue:)() == v20;
    Action.title.getter();
    if (v22)
    {

      v15 = String._bridgeToObjectiveC()();
    }

    else
    {

      v15 = 0;
    }

    ++v12;
    v16 = 2 * v21;
    aBlock[4] = sub_10028B940;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1002E8240;
    aBlock[3] = &unk_1004E9158;
    v17 = _Block_copy(aBlock);

    v18 = [v38 actionWithTitle:v15 style:v16 handler:v17];
    _Block_release(v17);

    v10 = v14;
    [v14 addAction:v18];

    v13 = a3;
  }

  while (v11 != v12);
LABEL_18:
  v23 = [v10 actions];
  sub_10028B980();
  v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v24 >> 62)
  {
    v25 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v25)
  {

    return;
  }

  v26 = [objc_opt_self() mainBundle];
  v40._object = 0xE000000000000000;
  v27._countAndFlagsBits = 0x6C65636E6143;
  v27._object = 0xE600000000000000;
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  v40._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v27, 0, v26, v28, v40);

  v29 = String._bridgeToObjectiveC()();

  v30 = [objc_opt_self() actionWithTitle:v29 style:1 handler:0];

  [v10 addAction:v30];
  v31 = v36[1];
  swift_beginAccess();
  if (!*(v31 + 88))
  {

    v35 = type metadata accessor for PresentationSource();
    v32 = v37;
    (*(*(v35 - 8) + 56))(v37, 1, 1, v35);
    goto LABEL_26;
  }

  v32 = v37;
  dispatch thunk of ContextActionsConfiguration.presentationSource.getter();

  v33 = type metadata accessor for PresentationSource();
  v34 = *(v33 - 8);
  if ((*(v34 + 48))(v32, 1, v33) == 1)
  {

LABEL_26:
    sub_100009104(v32, &unk_10057BB90);
    return;
  }

  PresentationSource.present(_:wantsAutomaticModalPresentationStyle:permittedArrowDirections:animated:completion:)();

  (*(v34 + 8))(v32, v33);
}

uint64_t sub_10028B340()
{

  sub_100004590(v0 + 24);

  v1 = OBJC_IVAR____TtC8Podcasts27RemoveDownloadContextAction_metricsLabel;
  v2 = type metadata accessor for MetricsLabel();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_10028B3D8()
{
  sub_10028B340();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RemoveDownloadContextAction()
{
  result = qword_10057B520;
  if (!qword_10057B520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10028B484()
{
  result = type metadata accessor for MetricsLabel();
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

uint64_t sub_10028B57C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Podcasts27RemoveDownloadContextAction_metricsLabel;
  v4 = type metadata accessor for MetricsLabel();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_10028B5F4@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for ContextActionType.removeEpisode(_:);
  v3 = type metadata accessor for ContextActionType();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

double sub_10028B6D4@<D0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() systemRedColor];
  v3 = v2;
  v4 = sub_10028AC0C();
  v6 = v5;

  *a1 = v2;
  result = 4.58823646e199;
  *(a1 + 8) = xmmword_100408810;
  *(a1 + 24) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t sub_10028B754(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232E54(a1, a2, WitnessTable);
}

uint64_t sub_10028B7B4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232848(a1, a2, WitnessTable);
}

id sub_10028B814(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232ADC(a1, a2, WitnessTable);
}

uint64_t sub_10028B874(uint64_t a1)
{
  result = sub_10028B8FC(&qword_10057B6B8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10028B8B8(uint64_t a1)
{
  result = sub_10028B8FC(&qword_10057B6C0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10028B8FC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RemoveDownloadContextAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10028B940()
{
  v0 = ClosureAction.closure.getter();
  v0();
}

unint64_t sub_10028B980()
{
  result = qword_10057B6C8;
  if (!qword_10057B6C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10057B6C8);
  }

  return result;
}

uint64_t sub_10028B9D0()
{
  v1 = sub_100168088(&qword_100578FE0);
  __chkstk_darwin(v1 - 8);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v18 - v5;
  v7 = OBJC_IVAR____TtC8Podcasts24PlayEpisodeContextAction_state;
  swift_beginAccess();
  sub_10028DC00(v0 + v7, v6);
  v8 = type metadata accessor for EpisodePlayState();
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    goto LABEL_6;
  }

  sub_10028DC00(v6, v3);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_10028DC70(v3, &type metadata accessor for EpisodePlayState);
LABEL_6:
    v10 = [objc_opt_self() mainBundle];
    v17 = 0xEC00000065646F73;
    v11 = 0x6970452079616C50;
    v13 = 0x800000010046CAF0;
    v12 = 0xD000000000000013;
    goto LABEL_7;
  }

  v9 = v3[16];
  v10 = [objc_opt_self() mainBundle];
  if (v9 == 1)
  {
    v17 = 0xEE0065646F736970;
    v11 = 0x4520656D75736552;
    v12 = 0xD000000000000015;
    v13 = 0x800000010046CB30;
  }

  else
  {
    v17 = 0xED000065646F7369;
    v11 = 0x7045206573756150;
    v12 = 0xD000000000000014;
    v13 = 0x800000010046CB10;
  }

LABEL_7:
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v12, 0, v10, v14, *&v11)._countAndFlagsBits;

  sub_100009104(v6, &qword_100578FE0);
  return countAndFlagsBits;
}

uint64_t sub_10028BC74()
{
  v1 = sub_100168088(&qword_100578FE0);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v11 - v5;
  v7 = OBJC_IVAR____TtC8Podcasts24PlayEpisodeContextAction_state;
  swift_beginAccess();
  sub_10028DC00(v0 + v7, v6);
  v8 = type metadata accessor for EpisodePlayState();
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    goto LABEL_6;
  }

  sub_10028DC00(v6, v3);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_10028DC70(v3, &type metadata accessor for EpisodePlayState);
    goto LABEL_6;
  }

  if (v3[16])
  {
LABEL_6:
    v9 = 2036427888;
    goto LABEL_7;
  }

  v9 = 0x6573756170;
LABEL_7:
  sub_100009104(v6, &qword_100578FE0);
  return v9;
}

uint64_t sub_10028BE04@<X0>(uint64_t a1@<X0>, unint64_t a2@<X8>)
{
  v56 = a2;
  v3 = type metadata accessor for EpisodeContextActionDataType.Reference(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for EpisodeOffer();
  v55 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v54 - v10;
  v12 = type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin(v12);
  v14 = (&v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v17 = (&v54 - v16);
  __chkstk_darwin(v18);
  v20 = &v54 - v19;
  v21 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
  swift_beginAccess();
  sub_1001EAFE4(a1 + v21, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v28 = v55;
    if (EnumCaseMultiPayload)
    {
      sub_10028DC70(v20, type metadata accessor for EpisodeContextActionDataType);
      v34 = sub_1003982E0(1);
      v24 = v56;
      if (v34[2])
      {
        (*(v28 + 16))(v8, v34 + ((*(v28 + 80) + 32) & ~*(v28 + 80)), v6);

        (*(v28 + 32))(v11, v8, v6);
        EpisodeOffer.contentId.getter();
        EpisodeStateController.stateMachine(for:)();
        dispatch thunk of EpisodeStateMachine.currentState.getter();

        (*(v28 + 8))(v11, v6);
        goto LABEL_72;
      }
    }

    else
    {
      sub_10028DC70(v20, type metadata accessor for EpisodeContextActionDataType);
      v29 = sub_100398118(1);
      v24 = v56;
      if (v29[2])
      {

        EpisodeStateController.stateMachine(for:)();

        dispatch thunk of EpisodeStateMachine.currentState.getter();

        goto LABEL_72;
      }
    }

    goto LABEL_74;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_10028DC70(v20, type metadata accessor for EpisodeContextActionDataType);
    sub_1001EAFE4(a1 + v21, v17);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_10028DC70(v17, type metadata accessor for EpisodeContextActionDataType);
      v35 = _swiftEmptyArrayStorage;
      v24 = v56;
      goto LABEL_43;
    }

    v11 = *v17;
    v57 = _swiftEmptyArrayStorage;
    v24 = v56;
    if (!(v11 >> 62))
    {
      v30 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v30)
      {
        goto LABEL_21;
      }

      goto LABEL_41;
    }

    goto LABEL_40;
  }

  if (EnumCaseMultiPayload != 3)
  {
    sub_100200004(v20, v5);
    EpisodeStateController.stateMachine(for:)();
    v24 = v56;
    dispatch thunk of EpisodeStateMachine.currentState.getter();

    sub_10028DC70(v5, type metadata accessor for EpisodeContextActionDataType.Reference);
    goto LABEL_72;
  }

  sub_10028DC70(v20, type metadata accessor for EpisodeContextActionDataType);
  sub_1001EAFE4(a1 + v21, v14);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_10028DC70(v14, type metadata accessor for EpisodeContextActionDataType);
    v36 = _swiftEmptyArrayStorage;
    v24 = v56;
    goto LABEL_58;
  }

  v11 = *v14;
  v57 = _swiftEmptyArrayStorage;
  if (v11 >> 62)
  {
    goto LABEL_55;
  }

  v23 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v24 = v56;
  if (!v23)
  {
LABEL_56:
    v36 = _swiftEmptyArrayStorage;
LABEL_57:

LABEL_58:
    if (v36 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result)
      {
        goto LABEL_60;
      }
    }

    else
    {
      result = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_60:
        if ((v36 & 0xC000000000000001) != 0)
        {
          v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v43 = *(v36 + 32);
        }

        v39 = v43;

        v44 = MPCPlayerResponseItem.podcastEpisode.getter();
        if (v44)
        {
          v45 = v44;
          MPModelObject.uuid.getter();
          v47 = v46;

          if (v47)
          {
            EpisodeStateController.stateMachine(for:)();
LABEL_66:

            goto LABEL_71;
          }
        }

        v48 = MPCPlayerResponseItem.podcastEpisode.getter();
        if (v48)
        {
          v49 = v48;
          MPModelObject.adamID.getter();
          v51 = v50;

          if ((v51 & 1) == 0)
          {
            goto LABEL_70;
          }
        }

LABEL_75:
        v52 = 1;
        goto LABEL_76;
      }
    }

LABEL_74:

    goto LABEL_75;
  }

  while (1)
  {
    v25 = 0;
    v24 = v11 & 0xC000000000000001;
    while (1)
    {
      if (v24)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v25 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v26 = *&v11[8 * v25 + 32];
      }

      v27 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v25;
      if (v27 == v23)
      {
        v24 = v56;
        v36 = v57;
        goto LABEL_57;
      }
    }

    while (1)
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      v30 = _CocoaArrayWrapper.endIndex.getter();
      if (!v30)
      {
        break;
      }

LABEL_21:
      v31 = 0;
      v24 = v11 & 0xC000000000000001;
      while (1)
      {
        if (v24)
        {
          v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v31 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_38;
          }

          v32 = *&v11[8 * v31 + 32];
        }

        v33 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          break;
        }

        if ([v32 isExplicit])
        {
          type metadata accessor for RestrictionsController();
          static RestrictionsController.isExplicitContentAllowed.getter();
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v31;
        if (v33 == v30)
        {
          v24 = v56;
          v35 = v57;
          goto LABEL_42;
        }
      }

      __break(1u);
    }

LABEL_41:
    v35 = _swiftEmptyArrayStorage;
LABEL_42:

LABEL_43:
    if (v35 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_74;
      }
    }

    else if (!*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_74;
    }

    if ((v35 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v37 = *(v35 + 32);
      goto LABEL_48;
    }

    __break(1u);
LABEL_55:
    v23 = _CocoaArrayWrapper.endIndex.getter();
    v24 = v56;
    if (!v23)
    {
      goto LABEL_56;
    }
  }

  v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_48:
  v38 = v37;

  v39 = v38;
  v40 = [v39 episodeUuid];
  if (v40)
  {
    v41 = v40;

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    EpisodeStateController.stateMachine(for:)();
    goto LABEL_66;
  }

  [v39 episodeStoreId];

  AdamID.init(rawValue:)();
LABEL_70:
  EpisodeStateController.stateMachine(for:)();
LABEL_71:
  dispatch thunk of EpisodeStateMachine.currentState.getter();

LABEL_72:
  v52 = 0;
LABEL_76:
  v53 = type metadata accessor for EpisodePlayState();
  return (*(*(v53 - 8) + 56))(v24, v52, 1, v53);
}

uint64_t sub_10028C6A8()
{
  v1 = type metadata accessor for InteractionContext();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v0 + 16))
  {
    goto LABEL_6;
  }

  if (!sub_100397D28() || (swift_beginAccess(), !*(v0 + 24)))
  {

LABEL_6:
    v5 = 0;
    return v5 & 1;
  }

  dispatch thunk of ContextActionsConfiguration.context.getter();

  InteractionContext.view.getter();
  (*(v2 + 8))(v4, v1);
  v5 = static InteractionContext.View.== infix(_:_:)();

  return v5 & 1;
}

void sub_10028C7F8()
{
  v1 = type metadata accessor for EpisodeContextActionDataType.Reference(0);
  __chkstk_darwin(v1 - 8);
  v85 = &v78 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for EpisodeOffer();
  v82 = *(v3 - 8);
  v83 = v3;
  __chkstk_darwin(v3);
  v80 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v81 = &v78 - v6;
  v7 = sub_100168088(&unk_100573A80);
  __chkstk_darwin(v7 - 8);
  v9 = &v78 - v8;
  v10 = type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin(v10);
  v12 = (&v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v15 = &v78 - v14;
  __chkstk_darwin(v16);
  v18 = &v78 - v17;
  v19 = sub_100168088(&qword_100578FE0);
  __chkstk_darwin(v19 - 8);
  v21 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v78 - v23;
  __chkstk_darwin(v25);
  v27 = &v78 - v26;
  v28 = v0[2];
  if (!v28)
  {
    return;
  }

  v79 = v9;

  sub_10028BE04(v29, v27);
  v30 = OBJC_IVAR____TtC8Podcasts24PlayEpisodeContextAction_state;
  swift_beginAccess();
  sub_10028DB90(v27, v0 + v30);
  swift_endAccess();
  v84 = v0;
  sub_10028DC00(v0 + v30, v24);
  v31 = type metadata accessor for EpisodePlayState();
  v32 = *(*(v31 - 8) + 48);
  v86 = v24;
  if (v32(v24, 1, v31) != 1)
  {
    sub_10028DC00(v86, v21);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v33 = v21[16];
      sub_1000044A0(v84 + 4, v84[7]);
      if (v33 == 1)
      {
        dispatch thunk of EpisodeControllerProtocol.playPlayer()();
      }

      else
      {
        dispatch thunk of EpisodeControllerProtocol.pausePlayer()();
      }

      goto LABEL_81;
    }

    sub_10028DC70(v21, &type metadata accessor for EpisodePlayState);
  }

  v34 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
  swift_beginAccess();
  sub_1001EAFE4(v28 + v34, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v36 = v28;
  if (EnumCaseMultiPayload <= 1)
  {
    v41 = v79;
    if (EnumCaseMultiPayload)
    {
      sub_10028DC70(v18, type metadata accessor for EpisodeContextActionDataType);
      v50 = sub_1003982E0(1);
      if (v50[2])
      {
        v52 = v82;
        v51 = v83;
        v53 = v80;
        (*(v82 + 16))(v80, v50 + ((*(v52 + 80) + 32) & ~*(v52 + 80)), v83);

        v54 = v81;
        (*(v52 + 32))(v81, v53, v51);
        v55 = v84;
        sub_1000044A0(v84 + 4, v84[7]);
        v88 = type metadata accessor for PlayEpisodeContextAction();
        v87 = v55;

        dispatch thunk of EpisodeControllerProtocol.play(episodeOffer:sender:)();

        (*(v52 + 8))(v54, v51);
        goto LABEL_78;
      }
    }

    else
    {
      sub_10028DC70(v18, type metadata accessor for EpisodeContextActionDataType);
      if (sub_100398118(1)[2])
      {

        v42 = v84;
        sub_1000044A0(v84 + 4, v84[7]);
        v43 = type metadata accessor for EpisodeListSettings();
        (*(*(v43 - 8) + 56))(v41, 1, 1, v43);
        v88 = type metadata accessor for PlayEpisodeContextAction();
        v87 = v42;

        EpisodeControllerProtocol.play(episodeUuid:settings:sender:isSmartPlayButton:preventQueueing:adamId:timestamp:waitForEngine:)();

        sub_100009104(v41, &unk_100573A80);
        goto LABEL_78;
      }
    }

    goto LABEL_80;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_10028DC70(v18, type metadata accessor for EpisodeContextActionDataType);
    sub_1001EAFE4(v28 + v34, v15);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_10028DC70(v15, type metadata accessor for EpisodeContextActionDataType);
      v56 = _swiftEmptyArrayStorage;
      goto LABEL_50;
    }

    v15 = *v15;
    v87 = _swiftEmptyArrayStorage;
    if (!(v15 >> 62))
    {
      v44 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v44)
      {
        goto LABEL_27;
      }

      goto LABEL_48;
    }

    goto LABEL_47;
  }

  if (EnumCaseMultiPayload != 3)
  {
    v48 = v85;
    sub_100200004(v18, v85);
    v49 = v84;
    sub_1000044A0(v84 + 4, v84[7]);
    v88 = type metadata accessor for PlayEpisodeContextAction();
    v87 = v49;

    dispatch thunk of EpisodeControllerProtocol.play(storeEpisodeId:timestamp:sender:)();

    sub_10028DC70(v48, type metadata accessor for EpisodeContextActionDataType.Reference);
    goto LABEL_78;
  }

  sub_10028DC70(v18, type metadata accessor for EpisodeContextActionDataType);
  sub_1001EAFE4(v28 + v34, v12);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_10028DC70(v12, type metadata accessor for EpisodeContextActionDataType);
    v57 = _swiftEmptyArrayStorage;
    goto LABEL_65;
  }

  v15 = *v12;
  v87 = _swiftEmptyArrayStorage;
  if (v15 >> 62)
  {
    goto LABEL_62;
  }

  v37 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v37)
  {
LABEL_63:
    v57 = _swiftEmptyArrayStorage;
LABEL_64:

LABEL_65:
    if (v57 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_67;
      }
    }

    else if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_67:
      if ((v57 & 0xC000000000000001) != 0)
      {
        v66 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v66 = *(v57 + 32);
      }

      v60 = v66;

      v67 = MPCPlayerResponseItem.podcastEpisode.getter();
      if (v67)
      {
        v68 = v67;
        MPModelObject.uuid.getter();
        v70 = v69;

        if (v70)
        {
          v71 = v84;
          sub_1000044A0(v84 + 4, v84[7]);
          v72 = type metadata accessor for EpisodeListSettings();
          v65 = v79;
          (*(*(v72 - 8) + 56))(v79, 1, 1, v72);
          v88 = type metadata accessor for PlayEpisodeContextAction();
          v87 = v71;

          EpisodeControllerProtocol.play(episodeUuid:settings:sender:isSmartPlayButton:preventQueueing:adamId:timestamp:waitForEngine:)();

LABEL_73:
          sub_100009104(v65, &unk_100573A80);
          goto LABEL_78;
        }
      }

      v73 = MPCPlayerResponseItem.podcastEpisode.getter();
      if (v73)
      {
        v74 = v73;
        MPModelObject.adamID.getter();
        v76 = v75;

        if ((v76 & 1) == 0)
        {
          goto LABEL_77;
        }
      }

LABEL_81:

      goto LABEL_82;
    }

LABEL_80:

    goto LABEL_81;
  }

  while (1)
  {
    v38 = 0;
    v36 = v15 & 0xC000000000000001;
    while (1)
    {
      if (v36)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v38 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_46;
        }

        v39 = *(v15 + 8 * v38 + 32);
      }

      v40 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v38;
      if (v40 == v37)
      {
        v57 = v87;
        goto LABEL_64;
      }
    }

    while (1)
    {
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      v44 = _CocoaArrayWrapper.endIndex.getter();
      if (!v44)
      {
        break;
      }

LABEL_27:
      v85 = v36;
      v45 = 0;
      v36 = v15 & 0xC000000000000001;
      while (1)
      {
        if (v36)
        {
          v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v45 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_45;
          }

          v46 = *(v15 + 8 * v45 + 32);
        }

        v47 = v45 + 1;
        if (__OFADD__(v45, 1))
        {
          break;
        }

        if ([v46 isExplicit])
        {
          type metadata accessor for RestrictionsController();
          static RestrictionsController.isExplicitContentAllowed.getter();
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v45;
        if (v47 == v44)
        {
          v56 = v87;
          goto LABEL_49;
        }
      }

      __break(1u);
    }

LABEL_48:
    v56 = _swiftEmptyArrayStorage;
LABEL_49:

LABEL_50:
    if (v56 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_80;
      }
    }

    else if (!*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_80;
    }

    if ((v56 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v58 = *(v56 + 32);
      goto LABEL_55;
    }

    __break(1u);
LABEL_62:
    v37 = _CocoaArrayWrapper.endIndex.getter();
    if (!v37)
    {
      goto LABEL_63;
    }
  }

  v58 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_55:
  v59 = v58;

  v60 = v59;
  v61 = [v60 episodeUuid];
  if (v61)
  {
    v62 = v61;

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v63 = v84;
    sub_1000044A0(v84 + 4, v84[7]);
    v64 = type metadata accessor for EpisodeListSettings();
    v65 = v79;
    (*(*(v64 - 8) + 56))(v79, 1, 1, v64);
    v88 = type metadata accessor for PlayEpisodeContextAction();
    v87 = v63;

    EpisodeControllerProtocol.play(episodeUuid:settings:sender:isSmartPlayButton:preventQueueing:adamId:timestamp:waitForEngine:)();

    goto LABEL_73;
  }

  [v60 episodeStoreId];

  AdamID.init(rawValue:)();
LABEL_77:
  v77 = v84;
  sub_1000044A0(v84 + 4, v84[7]);
  v88 = type metadata accessor for PlayEpisodeContextAction();
  v87 = v77;

  dispatch thunk of EpisodeControllerProtocol.play(storeEpisodeId:timestamp:sender:)();

LABEL_78:
  sub_100009104(&v87, &unk_1005783D0);
LABEL_82:
  sub_100009104(v86, &qword_100578FE0);
}

uint64_t sub_10028D54C()
{

  sub_100004590(v0 + 32);

  sub_100009104(v0 + OBJC_IVAR____TtC8Podcasts24PlayEpisodeContextAction_state, &qword_100578FE0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PlayEpisodeContextAction()
{
  result = qword_10057B700;
  if (!qword_10057B700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10028D634()
{
  sub_10028D6E8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10028D6E8()
{
  if (!qword_100578F00)
  {
    type metadata accessor for EpisodePlayState();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100578F00);
    }
  }
}

uint64_t sub_10028D748@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for MetricsLabel.playEpisode(_:);
  v3 = type metadata accessor for MetricsLabel();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_10028D7BC@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for ContextActionType.playEpisode(_:);
  v3 = type metadata accessor for ContextActionType();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

void sub_10028D898()
{
  v1 = v0;
  v2 = sub_100168088(&qword_100578FE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v7 - v3;
  v5 = *(v0 + 16);
  if (v5)
  {

    if (sub_100397D28())
    {
      sub_10028BE04(v5, v4);

      v6 = OBJC_IVAR____TtC8Podcasts24PlayEpisodeContextAction_state;
      swift_beginAccess();
      sub_10028DB90(v4, v1 + v6);
      swift_endAccess();
    }

    else
    {
    }
  }
}

uint64_t sub_10028D9A0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232E54(a1, a2, WitnessTable);
}

uint64_t sub_10028DA00(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232848(a1, a2, WitnessTable);
}

id sub_10028DA60(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232ADC(a1, a2, WitnessTable);
}

uint64_t sub_10028DAC4(uint64_t a1)
{
  result = sub_10028DB4C(&qword_10057B838);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10028DB08(uint64_t a1)
{
  result = sub_10028DB4C(&qword_10057B840);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10028DB4C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PlayEpisodeContextAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10028DB90(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_100578FE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10028DC00(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_100578FE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10028DC70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL sub_10028DCD0()
{
  v1 = type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin(v1);
  v3 = &v21[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for InteractionContext.Page();
  __chkstk_darwin(v4 - 8);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for InteractionContext();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(v0 + 56);
  if (!v11)
  {
    return 0;
  }

  swift_beginAccess();
  if (*(v0 + 64))
  {

    dispatch thunk of ContextActionsConfiguration.context.getter();

    InteractionContext.page.getter();
    (*(v8 + 8))(v10, v7);
    v12 = InteractionContext.Page.isEpisodePage.getter();
    sub_10028F518(v6, &type metadata accessor for InteractionContext.Page);
    if (v12)
    {

      return 0;
    }
  }

  else
  {
  }

  v14 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
  swift_beginAccess();
  sub_1001EAFE4(v11 + v14, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {

      v20 = *(*v3 + 16);
    }

    else
    {

      v19 = *v3;

      v20 = *(v19 + 16);
    }

    return v20 == 1;
  }

  else
  {
    if (EnumCaseMultiPayload != 2 && EnumCaseMultiPayload != 3)
    {

      sub_10028F518(v3, type metadata accessor for EpisodeContextActionDataType);
      return 1;
    }

    v16 = *v3;
    if (v16 >> 62)
    {
      v17 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return v17 == 1;
  }
}

void sub_10028DFBC()
{
  v98 = type metadata accessor for EpisodeContextActionDataType.Reference(0);
  __chkstk_darwin(v98);
  v100 = &v86 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for EpisodeOffer();
  v96 = *(v2 - 8);
  v97 = v2;
  __chkstk_darwin(v2);
  v95 = &v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v4 - 8);
  v101 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v102 = &v86 - v7;
  __chkstk_darwin(v8);
  v103 = &v86 - v9;
  __chkstk_darwin(v10);
  v99 = &v86 - v11;
  v12 = type metadata accessor for URL();
  v104 = *(v12 - 8);
  v105 = v12;
  __chkstk_darwin(v12);
  v93 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v86 - v15;
  __chkstk_darwin(v17);
  v94 = &v86 - v18;
  v19 = type metadata accessor for PreviewingPresentationHint();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin(v23);
  v25 = &v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v86 - v27;
  v29 = sub_100168088(&unk_10057BB90);
  __chkstk_darwin(v29 - 8);
  v31 = &v86 - v30;
  v106 = v0[7];
  if (!v106)
  {
    return;
  }

  swift_beginAccess();
  if (!v0[8])
  {
    return;
  }

  v89 = v16;
  v91 = v22;

  v32 = ContextActionsConfiguration.objectGraph.getter();

  v90 = v0;
  if (!v0[8])
  {

    v35 = type metadata accessor for PresentationSource();
    (*(*(v35 - 8) + 56))(v31, 1, 1, v35);
    goto LABEL_7;
  }

  v92 = v32;
  v87 = v20;
  v88 = v19;

  dispatch thunk of ContextActionsConfiguration.presentationSource.getter();

  v33 = type metadata accessor for PresentationSource();
  v34 = *(v33 - 8);
  if ((*(v34 + 48))(v31, 1, v33) == 1)
  {

LABEL_7:
    v36 = &unk_10057BB90;
LABEL_8:
    v37 = v31;
LABEL_9:
    sub_100009104(v37, v36);
    return;
  }

  v38 = PresentationSource.viewController.getter();
  (*(v34 + 8))(v31, v33);
  v39 = v106;
  if (!v38)
  {

LABEL_52:

    return;
  }

  v40 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
  swift_beginAccess();
  sub_1001EAFE4(v39 + v40, v28);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v51 = v88;
    v52 = v91;
    if (EnumCaseMultiPayload)
    {
      v66 = *v28;
      v67 = v90;
      if (*(*v28 + 16))
      {
        v68 = v95;
        v69 = v96;
        v70 = v97;
        (*(v96 + 16))(v95, v66 + ((*(v69 + 80) + 32) & ~*(v69 + 80)), v97);

        v71 = v99;
        EpisodeOffer.storeUrl.getter();
        (*(v69 + 8))(v68, v70);
        v73 = v104;
        v72 = v105;
        if ((*(v104 + 48))(v71, 1, v105) != 1)
        {
          (*(v73 + 32))(v94, v71, v72);
          sub_1000044A0(v67 + 2, v67[5]);
          v74 = v87;
          (*(v87 + 16))(v52, v39 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_presentationHint, v51);
          v75 = v94;
          dispatch thunk of EpisodeControllerProtocol.presentStorePage(asPartOf:for:from:presentationHint:suppressMetrics:)();

          (*(v74 + 8))(v52, v88);
          (*(v73 + 8))(v75, v105);
          return;
        }
      }

      else
      {

        v71 = v99;
        (*(v104 + 56))(v99, 1, 1, v105);
      }

      v36 = &qword_100574040;
      v37 = v71;
      goto LABEL_9;
    }

    sub_10028F518(v28, type metadata accessor for EpisodeContextActionDataType);
    sub_1001EAFE4(v39 + v40, v25);
    v53 = sub_100398A94();
    sub_10028F518(v25, type metadata accessor for EpisodeContextActionDataType);
    if (v53)
    {
      v54 = [v53 uuid];

      if (v54)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        sub_1000044A0(v90 + 2, v90[5]);
        v55 = v87;
        (*(v87 + 16))(v52, v39 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_presentationHint, v51);
        dispatch thunk of EpisodeControllerProtocol.presentEpisodePage(asPartOf:for:from:presentationHint:suppressMetrics:)();

        (*(v55 + 8))(v52, v88);
        return;
      }
    }

    goto LABEL_51;
  }

  v42 = v88;
  v43 = v91;
  if (EnumCaseMultiPayload == 2)
  {
    v56 = *v28;
    v57 = v87;
    if (*v28 >> 62)
    {
      v85 = _CocoaArrayWrapper.endIndex.getter();
      v58 = v102;
      v59 = v103;
      if (v85)
      {
LABEL_30:
        if ((v56 & 0xC000000000000001) != 0)
        {
          v60 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_57;
          }

          v60 = *(v56 + 32);
        }

        v61 = v60;

        v62 = [objc_opt_self() episodeUrlForPodcastStoreId:objc_msgSend(v61 episodeStoreId:{"podcastStoreId"), objc_msgSend(v61, "episodeStoreId")}];
        if (v62)
        {
          v63 = v62;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v64 = 0;
        }

        else
        {
          v64 = 1;
        }

        v82 = v104;
        v81 = v105;
        (*(v104 + 56))(v58, v64, 1, v105);
        sub_1001B8A3C(v58, v59);
        if ((*(v82 + 48))(v59, 1, v81) != 1)
        {
          v83 = v89;
          (*(v82 + 32))(v89, v59, v81);
          v84 = v90[5];
          v103 = v90[6];
          sub_1000044A0(v90 + 2, v84);
          (*(v57 + 16))(v43, v106 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_presentationHint, v42);
          dispatch thunk of EpisodeControllerProtocol.presentStorePage(asPartOf:for:from:presentationHint:suppressMetrics:)();

          (*(v57 + 8))(v43, v42);
          (*(v104 + 8))(v83, v105);
          return;
        }

        v36 = &qword_100574040;
        v37 = v59;
        goto LABEL_9;
      }
    }

    else
    {
      v58 = v102;
      v59 = v103;
      if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }
    }

LABEL_50:

LABEL_51:

    goto LABEL_52;
  }

  v44 = v87;
  if (EnumCaseMultiPayload != 3)
  {
    v65 = v100;
    sub_100200004(v28, v100);
    sub_1000044A0(v90 + 2, v90[5]);
    (*(v44 + 16))(v43, v106 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_presentationHint, v42);
    dispatch thunk of EpisodeControllerProtocol.presentStorePage(asPartOf:for:from:presentationHint:suppressMetrics:)();

    (*(v44 + 8))(v43, v42);
    sub_10028F518(v65, type metadata accessor for EpisodeContextActionDataType.Reference);
    return;
  }

  v45 = *v28;
  if (*v28 >> 62)
  {
    v46 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v47 = v104;
  v31 = v101;
  if (!v46)
  {
    goto LABEL_50;
  }

  if ((v45 & 0xC000000000000001) != 0)
  {
    v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_21;
  }

  if (!*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_57:
    __break(1u);
    return;
  }

  v48 = *(v45 + 32);
LABEL_21:
  v49 = v48;

  sub_10028F4CC();
  sub_10028EDE8(v31);
  v50 = v105;
  if ((*(v47 + 48))(v31, 1, v105) == 1)
  {

    v36 = &qword_100574040;
    goto LABEL_8;
  }

  v76 = v42;
  v77 = v93;
  (*(v47 + 32))(v93, v31, v50);
  v78 = v38;
  v79 = v47;
  v80 = v90[5];
  v103 = v90[6];
  sub_1000044A0(v90 + 2, v80);
  (*(v44 + 16))(v43, v106 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_presentationHint, v76);
  dispatch thunk of EpisodeControllerProtocol.presentStorePage(asPartOf:for:from:presentationHint:suppressMetrics:)();

  (*(v44 + 8))(v43, v88);
  (*(v79 + 8))(v77, v105);
}

void sub_10028EDE8(uint64_t a1@<X8>)
{
  v2 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  v5 = MPCPlayerResponseItem.podcastEpisode.getter();
  if (!v5 || (v6 = v5, v7 = [v5 podcast], v6, !v7) || (v8 = MPModelObject.adamID.getter(), v10 = v9, v7, (v10 & 1) != 0))
  {
LABEL_7:
    v16 = type metadata accessor for URL();
    v17 = *(*(v16 - 8) + 56);

    v17(a1, 1, 1, v16);
    return;
  }

  if (v8 < 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v11 = MPCPlayerResponseItem.podcastEpisode.getter();
  if (!v11)
  {
    goto LABEL_7;
  }

  v12 = v11;
  v13 = MPModelObject.adamID.getter();
  v15 = v14;

  if (v15)
  {
    goto LABEL_7;
  }

  if (v13 < 0)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v18 = [swift_getObjCClassFromMetadata() episodeUrlForPodcastStoreId:v8 episodeStoreId:v13];
  if (v18)
  {
    v19 = v18;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v20 = type metadata accessor for URL();
    (*(*(v20 - 8) + 56))(v4, 0, 1, v20);
  }

  else
  {
    v21 = type metadata accessor for URL();
    (*(*(v21 - 8) + 56))(v4, 1, 1, v21);
  }

  sub_1001B8A3C(v4, a1);
}

uint64_t sub_10028F010()
{
  sub_100004590(v0 + 16);

  v1 = OBJC_IVAR____TtC8Podcasts24GoToEpisodeContextAction_metricsLabel;
  v2 = type metadata accessor for MetricsLabel();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100009104(v0 + OBJC_IVAR____TtC8Podcasts24GoToEpisodeContextAction_contextActionType, &qword_100575870);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GoToEpisodeContextAction()
{
  result = qword_10057B870;
  if (!qword_10057B870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10028F148()
{
  type metadata accessor for MetricsLabel();
  if (v0 <= 0x3F)
  {
    sub_1001C25E8();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_10028F260()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t sub_10028F290@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Podcasts24GoToEpisodeContextAction_metricsLabel;
  v4 = type metadata accessor for MetricsLabel();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_10028F35C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 64) = a1;
}

uint64_t sub_10028F400(uint64_t a1)
{
  result = sub_10028F488(&qword_10057B930);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10028F444(uint64_t a1)
{
  result = sub_10028F488(&qword_10057B938);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10028F488(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GoToEpisodeContextAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10028F4CC()
{
  result = qword_10057B940;
  if (!qword_10057B940)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10057B940);
  }

  return result;
}

uint64_t sub_10028F518(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t CarPlayFlowBackActionImplementation.perform(_:asPartOf:)(uint64_t a1, uint64_t a2)
{
  v2[51] = a1;
  v2[52] = a2;
  v3 = type metadata accessor for Models.FlowBackAction();
  v2[53] = v3;
  v2[54] = *(v3 - 8);
  v2[55] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[56] = v4;
  v2[57] = *(v4 - 8);
  v2[58] = swift_task_alloc();
  v2[59] = type metadata accessor for MainActor();
  v2[60] = static MainActor.shared.getter();
  v5 = sub_100009F1C(0, &qword_100575D00);
  v6 = swift_task_alloc();
  v2[61] = v6;
  *v6 = v2;
  v6[1] = sub_10028F710;

  return BaseObjectGraph.inject<A>(_:)(v2 + 50, v5, v5);
}

uint64_t sub_10028F710()
{
  v2 = *v1;
  *(*v1 + 496) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v5 = sub_100290350;
  }

  else
  {
    *(v2 + 504) = v3;
    *(v2 + 512) = v4;
    v5 = sub_10028F874;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10028F874()
{
  v46 = v0;
  v1 = v0[50];
  v0[65] = v1;
  v2 = Models.FlowBackAction.dismissal.getter();
  v4 = v3;
  if (static Models.FlowBackAction.Dismissal.sheetDismiss.getter() == v2 && v5 == v4)
  {
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v7 & 1) == 0)
    {
      if (static Models.FlowBackAction.Dismissal.stackPop.getter() == v2 && v13 == v4)
      {
      }

      else
      {
        v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v14 & 1) == 0)
        {
          if (static Models.FlowBackAction.Dismissal.stackPopToRoot.getter() == v2 && v16 == v4)
          {
          }

          else
          {
            v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v17 & 1) == 0)
            {
              v20 = v0[54];
              v19 = v0[55];
              v22 = v0[52];
              v21 = v0[53];

              sub_100009F1C(0, &qword_1005748A0);
              static OS_os_log.carPlay.getter();
              (*(v20 + 16))(v19, v22, v21);
              v23 = Logger.logObject.getter();
              v24 = static os_log_type_t.error.getter();
              v25 = os_log_type_enabled(v23, v24);
              v27 = v0[57];
              v26 = v0[58];
              v28 = v0[55];
              v29 = v0[56];
              v31 = v0[53];
              v30 = v0[54];
              if (v25)
              {
                log = v23;
                v32 = swift_slowAlloc();
                v41 = v24;
                v33 = swift_slowAlloc();
                v45 = v33;
                *v32 = 136315138;
                v43 = v29;
                v44 = v26;
                v34 = Models.FlowBackAction.dismissal.getter();
                v36 = v35;
                (*(v30 + 8))(v28, v31);
                v37 = sub_1000153E0(v34, v36, &v45);

                *(v32 + 4) = v37;
                _os_log_impl(&_mh_execute_header, log, v41, "Unsupported flow back action dismissal: %s", v32, 0xCu);
                sub_100004590(v33);

                (*(v27 + 8))(v44, v43);
              }

              else
              {

                (*(v30 + 8))(v28, v31);
                (*(v27 + 8))(v26, v29);
              }

              v38 = v0[51];
              v39 = enum case for ActionOutcome.unsupported(_:);
              v40 = type metadata accessor for ActionOutcome();
              (*(*(v40 - 8) + 104))(v38, v39, v40);

              v11 = v0[1];
              goto LABEL_11;
            }
          }

          v9 = v0 + 2;
          v0[2] = v0;
          v0[7] = v0 + 69;
          v0[3] = sub_100290220;
          v18 = swift_continuation_init();
          v0[33] = sub_100168088(&qword_100575028);
          v0[26] = _NSConcreteStackBlock;
          v0[27] = 1107296256;
          v0[28] = sub_1001BAE40;
          v0[29] = &unk_1004E92B0;
          v0[30] = v18;
          [v1 popToRootTemplateAnimated:1 completion:v0 + 26];
          goto LABEL_19;
        }
      }

      v9 = v0 + 10;
      v0[10] = v0;
      v0[15] = v0 + 553;
      v0[11] = sub_1002900F0;
      v15 = swift_continuation_init();
      v0[41] = sub_100168088(&qword_100575028);
      v0[34] = _NSConcreteStackBlock;
      v0[35] = 1107296256;
      v0[36] = sub_1001BAE40;
      v0[37] = &unk_1004E92D8;
      v0[38] = v15;
      [v1 popTemplateAnimated:1 completion:v0 + 34];
      goto LABEL_19;
    }
  }

  v8 = [v1 presentedTemplate];
  if (v8)
  {

    v9 = v0 + 18;
    v0[18] = v0;
    v0[23] = v0 + 554;
    v0[19] = sub_10028FEE4;
    v10 = swift_continuation_init();
    v0[49] = sub_100168088(&qword_100575028);
    v0[42] = _NSConcreteStackBlock;
    v0[43] = 1107296256;
    v0[44] = sub_1001BAE40;
    v0[45] = &unk_1004E9300;
    v0[46] = v10;
    [v1 dismissTemplateAnimated:1 completion:v0 + 42];
LABEL_19:

    return _swift_continuation_await(v9);
  }

  sub_10029067C();
  swift_allocError();
  swift_willThrow();

  v11 = v0[1];
LABEL_11:

  return v11();
}

uint64_t sub_10028FEE4()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  *(*v0 + 528) = v2;
  v3 = *(v1 + 512);
  v4 = *(v1 + 504);
  if (v2)
  {
    v5 = sub_1002903C8;
  }

  else
  {
    v5 = sub_100290014;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100290014()
{

  v1 = *(v0 + 408);
  v2 = enum case for ActionOutcome.performed(_:);
  v3 = type metadata accessor for ActionOutcome();
  (*(*(v3 - 8) + 104))(v1, v2, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1002900F0()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 536) = v2;
  v3 = *(v1 + 512);
  v4 = *(v1 + 504);
  if (v2)
  {
    v5 = sub_100290458;
  }

  else
  {
    v5 = sub_100290014;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100290220()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 544) = v2;
  v3 = *(v1 + 512);
  v4 = *(v1 + 504);
  if (v2)
  {
    v5 = sub_1002904E8;
  }

  else
  {
    v5 = sub_100290014;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100290350()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002903C8()
{
  v1 = *(v0 + 520);

  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100290458()
{
  v1 = *(v0 + 520);

  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1002904E8()
{
  v1 = *(v0 + 520);

  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100290578(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001C51C;

  return CarPlayFlowBackActionImplementation.perform(_:asPartOf:)(a1, a2);
}

uint64_t sub_100290628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1002907AC();

  return AsyncActionImplementation.perform(_:asPartOf:)(a1, a2, a3, v6);
}

unint64_t sub_10029067C()
{
  result = qword_10057B948;
  if (!qword_10057B948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057B948);
  }

  return result;
}

unint64_t sub_1002906D4()
{
  result = qword_10057B950;
  if (!qword_10057B950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057B950);
  }

  return result;
}

unint64_t sub_10029072C()
{
  result = qword_10057B958;
  if (!qword_10057B958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057B958);
  }

  return result;
}

unint64_t sub_1002907AC()
{
  result = qword_10057B960;
  if (!qword_10057B960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057B960);
  }

  return result;
}

uint64_t (*sub_100290810(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = OBJC_IVAR____TtC8Podcasts33DownloadingEpisodeStateDataSource_refreshControllerStates;
  a1[2] = v1;
  a1[3] = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = v4[1];
  *a1 = *v4;
  a1[1] = v6;
  sub_100013CB4(v5);
  return sub_100290868;
}

uint64_t sub_100290868(uint64_t *a1, char a2)
{
  v3 = a1[2] + a1[3];
  v4 = *a1;
  v5 = a1[1];
  v6 = *v3;
  *v3 = *a1;
  *(v3 + 8) = v5;
  sub_100013CB4(v4);
  if (a2)
  {
    sub_100013CB4(v4);
    sub_100013D44(v6);
    sub_1000112B4(v6);
    v7 = v4;
  }

  else
  {
    sub_100013D44(v6);
    v7 = v6;
  }

  sub_1000112B4(v7);

  return sub_1000112B4(v4);
}

uint64_t sub_10029091C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100168088(&qword_10057B9D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v14[-v7];
  v21 = _swiftEmptyArrayStorage;
  v9 = type metadata accessor for EpisodeDownloadState();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v20 = v3;
  v15 = a1;
  v16 = v8;
  v17 = a2;
  v18 = v3;
  v19 = &v21;
  type metadata accessor for DownloadingEpisodeStateDataSource();
  sub_1000136E4(&qword_10057B9C8, v10, type metadata accessor for DownloadingEpisodeStateDataSource);
  SynchronizedEpisodeStateDataSource.performExpectedEpisodeStateUpdates(_:)();
  v11 = v21;
  if (v21[2])
  {
    v12 = *(v3 + OBJC_IVAR____TtC8Podcasts33DownloadingEpisodeStateDataSource_refreshControllerStates);
    if (v12)
    {

      v12(v11);
      sub_1000112B4(v12);
    }
  }

  sub_100009104(v8, &qword_10057B9D0);
}

uint64_t sub_100290AC8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, char **a5)
{
  v126 = a5;
  v117 = sub_100168088(&qword_10057B9D8);
  __chkstk_darwin(v117);
  v118 = v108 - v9;
  v10 = type metadata accessor for EpisodeDownloadState();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v109 = v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v119 = v108 - v14;
  v15 = sub_100168088(&qword_10057B9D0);
  __chkstk_darwin(v15 - 8);
  v124 = v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v127 = v108 - v18;
  __chkstk_darwin(v19);
  __chkstk_darwin(v20);
  v22 = v108 - v21;
  __chkstk_darwin(v23);
  v135 = v108 - v24;
  *&v26 = __chkstk_darwin(v25).n128_u64[0];
  v28 = v108 - v27;
  v112 = v29;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        goto LABEL_8;
      case 4:
        [a3 percentComplete];
        *v28 = v30;
        v28[8] = 1;
LABEL_9:
        (*(v11 + 104))(v28, enum case for EpisodeDownloadState.downloading(_:), v10);
        v128 = *(v11 + 56);
        v129 = v11 + 56;
        v128(v28, 0, 1, v10);
        sub_100294004(v28, a2);
        goto LABEL_10;
      case 5:
LABEL_8:
        [a3 percentComplete];
        *v28 = v31;
        v28[8] = 0;
        goto LABEL_9;
    }

LABEL_62:
    type metadata accessor for LegacyDownloadPhase(0);
    v138 = a1;
    _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
    goto LABEL_63;
  }

  if ((a1 - 1) >= 2)
  {
    if (!a1)
    {
      goto LABEL_8;
    }

    goto LABEL_62;
  }

  sub_100009104(a2, &qword_10057B9D0);
  v128 = *(v11 + 56);
  v129 = v11 + 56;
  v128(a2, 1, 1, v10);
LABEL_10:
  swift_getObjectType();
  v32 = sub_100291790();
  v33 = *(v32 + 56);
  v123 = v32 + 56;
  v122 = v32;
  v34 = 1 << *(v32 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & v33;
  v133 = OBJC_IVAR____TtC8Podcasts33DownloadingEpisodeStateDataSource_expectedEpisodeStates;
  swift_beginAccess();
  v37 = 0;
  v38 = (v34 + 63) >> 6;
  v110 = v11 + 16;
  v132 = (v11 + 48);
  v125 = (v11 + 32);
  v108[1] = v11 + 40;
  v121 = v11;
  v111 = (v11 + 8);
  v39 = v10;
  v130 = v10;
  v120 = v22;
  v116 = v38;
  v114 = a2;
  v115 = a4;
  while (v36)
  {
    v41 = a4;
    v42 = a2;
    v43 = v133;
LABEL_23:
    v45 = *(v122 + 48) + 24 * (__clz(__rbit64(v36)) | (v37 << 6));
    v47 = *v45;
    v46 = *(v45 + 8);
    v48 = *(v45 + 16);
    v49 = *(v41 + v43);
    v50 = *(v49 + 16);
    v134 = v47;
    v136 = v48;
    if (v50)
    {
      sub_1001C1A3C(v47, v46, v48);

      v51 = sub_1002022A8(v47, v46, v48);
      if (v52)
      {
        v53 = v135;
        (*(v121 + 16))(v135, *(v49 + 56) + *(v121 + 72) * v51, v39);

        v54 = v53;
        v43 = v133;
        v55 = 0;
      }

      else
      {

        v54 = v135;
        v55 = 1;
      }

      v128(v54, v55, 1, v39);
      v56 = v42;
      v47 = v134;
    }

    else
    {
      v128(v135, 1, 1, v39);
      sub_1001C1A3C(v47, v46, v48);
      v56 = v42;
    }

    v57 = v120;
    sub_100293F94(v56, v120);
    swift_beginAccess();
    v131 = *v132;
    if (v131(v57, 1, v39) == 1)
    {
      sub_100009104(v57, &qword_10057B9D0);
      v58 = sub_1002022A8(v47, v46, v136);
      if (v59)
      {
        v60 = v58;
        v61 = v46;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v63 = *(v41 + v43);
        v137 = v63;
        *(v41 + v43) = 0x8000000000000000;
        v64 = v43;
        v65 = v118;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1002606F4();
          v63 = v137;
        }

        sub_1001C1A4C(*(*(v63 + 48) + 24 * v60), *(*(v63 + 48) + 24 * v60 + 8), *(*(v63 + 48) + 24 * v60 + 16));
        v66 = v112;
        v67 = v130;
        (*(v121 + 32))(v112, *(v63 + 56) + *(v121 + 72) * v60, v130);
        sub_100292B68(v60, v63);
        *(v41 + v64) = v63;

        v68 = 0;
        v46 = v61;
        v56 = v114;
      }

      else
      {
        v68 = 1;
        v67 = v130;
        v66 = v112;
        v65 = v118;
      }

      v128(v66, v68, 1, v67);
      sub_100009104(v66, &qword_10057B9D0);
      v82 = v67;
    }

    else
    {
      v113 = *v125;
      v113(v119, v57, v39);
      v69 = swift_isUniquelyReferenced_nonNull_native();
      v70 = v41;
      v71 = v69;
      v137 = *(v70 + v43);
      v72 = v137;
      v73 = v70;
      *(v70 + v43) = 0x8000000000000000;
      v75 = sub_1002022A8(v47, v46, v136);
      v76 = v72[2];
      v77 = (v74 & 1) == 0;
      v78 = v76 + v77;
      if (__OFADD__(v76, v77))
      {
        goto LABEL_64;
      }

      v79 = v74;
      if (v72[3] >= v78)
      {
        if ((v71 & 1) == 0)
        {
          sub_1002606F4();
        }
      }

      else
      {
        sub_10025D208(v78, v71);
        v80 = sub_1002022A8(v134, v46, v136);
        if ((v79 & 1) != (v81 & 1))
        {
          goto LABEL_66;
        }

        v75 = v80;
      }

      v83 = v73;
      v84 = v137;
      v56 = v114;
      if (v79)
      {
        v82 = v130;
        (*(v121 + 40))(v137[7] + *(v121 + 72) * v75, v119, v130);
      }

      else
      {
        v137[(v75 >> 6) + 8] |= 1 << v75;
        v85 = v84[6] + 24 * v75;
        v86 = v134;
        *v85 = v134;
        *(v85 + 8) = v46;
        v87 = v136;
        *(v85 + 16) = v136;
        v88 = v130;
        (v113)(v84[7] + *(v121 + 72) * v75, v119);
        v89 = v84[2];
        v90 = __OFADD__(v89, 1);
        v91 = v89 + 1;
        if (v90)
        {
          goto LABEL_65;
        }

        v84[2] = v91;
        sub_1001C1A3C(v86, v46, v87);
        v82 = v88;
      }

      *(v83 + v133) = v84;

      v65 = v118;
    }

    v36 &= v36 - 1;
    swift_endAccess();
    a2 = v56;
    v92 = v127;
    sub_100293F94(v56, v127);
    v93 = *(v117 + 48);
    sub_100293F94(v135, v65);
    sub_100293F94(v92, v65 + v93);
    v94 = v131;
    if (v131(v65, 1, v82) == 1)
    {
      sub_100009104(v92, &qword_10057B9D0);
      if (v94(v65 + v93, 1, v82) == 1)
      {
        v40 = v65;
        v39 = v82;
        sub_1001C1A4C(v134, v46, v136);
        sub_100009104(v40, &qword_10057B9D0);
        a4 = v115;
LABEL_14:
        sub_100009104(v135, &qword_10057B9D0);
        goto LABEL_15;
      }

      goto LABEL_52;
    }

    sub_100293F94(v65, v124);
    if (v94(v65 + v93, 1, v82) == 1)
    {
      sub_100009104(v127, &qword_10057B9D0);
      (*v111)(v124, v82);
LABEL_52:
      sub_100009104(v65, &qword_10057B9D8);
      goto LABEL_53;
    }

    v102 = *v125;
    v131 = v46;
    v103 = v109;
    v102(v109, v65 + v93, v82);
    sub_1000136E4(&qword_10057B9E0, 255, &type metadata accessor for EpisodeDownloadState);
    v104 = dispatch thunk of static Equatable.== infix(_:_:)();
    v105 = *v111;
    (*v111)(v103, v82);
    sub_100009104(v127, &qword_10057B9D0);
    v105(v124, v82);
    v46 = v131;
    sub_100009104(v65, &qword_10057B9D0);
    if (v104)
    {
      v39 = v82;
      sub_1001C1A4C(v134, v46, v136);
      a4 = v115;
      goto LABEL_14;
    }

LABEL_53:
    v95 = v126;
    v96 = *v126;
    v97 = swift_isUniquelyReferenced_nonNull_native();
    *v95 = v96;
    a4 = v115;
    if ((v97 & 1) == 0)
    {
      v96 = sub_100243C4C(0, *(v96 + 2) + 1, 1, v96);
      *v126 = v96;
    }

    v99 = *(v96 + 2);
    v98 = *(v96 + 3);
    if (v99 >= v98 >> 1)
    {
      v106 = sub_100243C4C((v98 > 1), v99 + 1, 1, v96);
      *v126 = v106;
    }

    sub_100009104(v135, &qword_10057B9D0);
    v100 = *v126;
    *(v100 + 2) = v99 + 1;
    v101 = &v100[24 * v99];
    *(v101 + 4) = v134;
    *(v101 + 5) = v46;
    v101[48] = v136;
    v39 = v130;
LABEL_15:
    v38 = v116;
  }

  v43 = v133;
  while (1)
  {
    v44 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v44 >= v38)
    {
    }

    v36 = *(v123 + 8 * v44);
    ++v37;
    if (v36)
    {
      v41 = a4;
      v42 = a2;
      v37 = v44;
      goto LABEL_23;
    }
  }

LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100291790()
{
  v1 = [v0 episodeUuid];
  if (v1)
  {
    v2 = v1;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v3 = [v0 storeItemId];
  if (v3)
  {
    v4 = v3;
    [v4 unsignedLongLongValue];
    AdamID.init(rawValue:)();
  }

  v5 = static EpisodeStateIdentifier.generateIdsFrom(uuid:adamID:)();

  return v5;
}

id sub_1002918A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DownloadingEpisodeStateDataSource();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1002919D8()
{
  v1 = *(*v0 + OBJC_IVAR____TtC8Podcasts33DownloadingEpisodeStateDataSource_refreshControllerStates);
  sub_100013CB4(v1);
  return v1;
}

void (*sub_100291A1C(uint64_t **a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_100290810(v2);
  return sub_1001A60EC;
}

uint64_t sub_100291A90(uint64_t a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for DownloadingEpisodeStateDataSource();
  v8 = sub_1000136E4(&qword_10057B9C8, v7, type metadata accessor for DownloadingEpisodeStateDataSource);

  return SynchronizedEpisodeStateDataSource.state(for:)(a1, a2, a3 & 1, v6, v8);
}

Swift::Int sub_100291B78(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100168088(&unk_100581840);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_100009F1C(0, &qword_1005747D0);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_10038F208(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_100291D68(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100168088(&unk_100582800);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for DownloadingEpisodeStateDataSource();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_10038F21C(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_100291F44(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100168088(&qword_10057B9E8);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for MTCategory();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_10038F230(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

unint64_t sub_100292124(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

uint64_t sub_1002921A8(uint64_t result, uint64_t a2)
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
      sub_10016BE40(*(a2 + 48) + 40 * v6, v25);
      v10 = AnyHashable._rawHashValue(seed:)(*(a2 + 40));
      result = sub_10016BE9C(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_10029234C(int64_t a1, uint64_t a2)
{
  v28 = type metadata accessor for DownloadJob(0);
  v4 = *(v28 - 8);
  result = __chkstk_darwin(v28);
  v30 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = (_HashTable.previousHole(before:)() + 1) & ~v8;
    v12 = *(v4 + 72);
    v29 = a2 + 64;
    v13 = v30;
    do
    {
      v14 = v12;
      v15 = v12 * v9;
      sub_1001BE270(*(a2 + 48) + v12 * v9, v13);
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      sub_1000136E4(&unk_100577210, 255, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      v16 = Hasher._finalize()();
      result = sub_1001BE660(v13);
      v17 = v16 & v10;
      if (a1 >= v11)
      {
        if (v17 < v11)
        {
          v7 = v29;
          v12 = v14;
          goto LABEL_4;
        }

        v12 = v14;
        if (a1 >= v17)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v12 = v14;
        if (v17 >= v11 || a1 >= v17)
        {
LABEL_11:
          v18 = *(a2 + 48);
          result = v18 + v12 * a1;
          if (v12 * a1 < v15 || result >= v18 + v15 + v12)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v29;
          }

          else
          {
            v19 = v12 * a1 == v15;
            v7 = v29;
            if (!v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
            }
          }

          v20 = *(a2 + 56);
          v21 = v20 + 40 * a1;
          v22 = (v20 + 40 * v9);
          if (a1 != v9 || v21 >= v22 + 40)
          {
            v23 = *v22;
            v24 = v22[1];
            *(v21 + 32) = *(v22 + 4);
            *v21 = v23;
            *(v21 + 16) = v24;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      v7 = v29;
LABEL_4:
      v9 = (v9 + 1) & v10;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }

  return result;
}

void sub_10029264C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = NSObject._rawHashValue(seed:)(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
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
}

void sub_1002927D8(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v6);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v11 = v10;
      String.hash(into:)();
      v12 = Hasher._finalize()();

      v13 = v12 & v7;
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
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 32 * v3);
        v19 = (v17 + 32 * v6);
        if (v3 != v6 || v18 >= v19 + 2)
        {
          v9 = v19[1];
          *v18 = *v19;
          v18[1] = v9;
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
}

void sub_1002929A0(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = NSObject._rawHashValue(seed:)(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8 || v3 < v12)
        {
          goto LABEL_5;
        }
      }

      else if (v12 < v8 && v3 < v12)
      {
        goto LABEL_5;
      }

      v15 = *(a2 + 48);
      v16 = (v15 + 8 * v3);
      v17 = (v15 + 8 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(type metadata accessor for FairPlayDownloadsObserver.DownloadState() - 8) + 72);
      v20 = v19 * v3;
      v21 = v18 + v19 * v3;
      v22 = v19 * v6;
      v23 = v18 + v19 * v6 + v19;
      if (v20 < v22 || v21 >= v23)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v22)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }
}

unint64_t sub_100292B68(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    v29 = v4;
    while (1)
    {
      v9 = 24 * v6;
      v10 = *(a2 + 48) + 24 * v6;
      v11 = *v10;
      v12 = *(v10 + 8);
      v13 = *(v10 + 16);
      Hasher.init(_seed:)();
      sub_1001C1A3C(v11, v12, v13);
      EpisodeStateIdentifier.hash(into:)();
      v14 = Hasher._finalize()();
      result = sub_1001C1A4C(v11, v12, v13);
      v15 = v14 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v15 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v16 = *(a2 + 48);
      v17 = v16 + 24 * v3;
      v18 = (v16 + v9);
      if (24 * v3 < v9 || v17 >= v18 + 24 || v3 != v6)
      {
        v19 = *v18;
        *(v17 + 16) = *(v18 + 2);
        *v17 = v19;
      }

      v20 = *(a2 + 56);
      v21 = *(*(type metadata accessor for EpisodeDownloadState() - 8) + 72);
      v22 = v21 * v3;
      result = v20 + v21 * v3;
      v23 = v21 * v6;
      v24 = v20 + v21 * v6 + v21;
      if (v22 >= v23 && result < v24)
      {
        v3 = v6;
        v4 = v29;
        if (v22 != v23)
        {
          result = swift_arrayInitWithTakeBackToFront();
          v3 = v6;
        }

        goto LABEL_5;
      }

      result = swift_arrayInitWithTakeFrontToBack();
      v3 = v6;
LABEL_4:
      v4 = v29;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    if (v15 < v8)
    {
      goto LABEL_4;
    }

LABEL_10:
    if (v3 < v15)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

LABEL_21:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_100292DA0(uint64_t result, uint64_t a2)
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
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_100292F50(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {

    v4 = a1;
    v5 = __CocoaSet.contains(_:)();

    if (v5)
    {
      v6 = sub_100293658();

      return v6;
    }

    return 0;
  }

  v8 = v1;
  sub_100009F1C(0, &qword_1005747D0);
  v9 = NSObject._rawHashValue(seed:)(*(v3 + 40));
  v10 = -1 << *(v3 + 32);
  v11 = v9 & ~v10;
  if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return 0;
  }

  v12 = ~v10;
  while (1)
  {
    v13 = *(*(v3 + 48) + 8 * v11);
    v14 = static NSObject.== infix(_:_:)();

    if (v14)
    {
      break;
    }

    v11 = (v11 + 1) & v12;
    if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v8;
  v18 = *v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1003901F4();
    v16 = v18;
  }

  v17 = *(*(v16 + 48) + 8 * v11);
  sub_100293914(v11);
  result = v17;
  *v8 = v18;
  return result;
}

uint64_t sub_1002930E8(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {

    v4 = a1;
    v5 = __CocoaSet.contains(_:)();

    if (v5)
    {
      v6 = sub_1002937C0();

      return v6;
    }

    return 0;
  }

  v8 = v1;
  type metadata accessor for DownloadingEpisodeStateDataSource();
  v9 = NSObject._rawHashValue(seed:)(*(v3 + 40));
  v10 = -1 << *(v3 + 32);
  v11 = v9 & ~v10;
  if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return 0;
  }

  v12 = ~v10;
  while (1)
  {
    v13 = *(*(v3 + 48) + 8 * v11);
    v14 = static NSObject.== infix(_:_:)();

    if (v14)
    {
      break;
    }

    v11 = (v11 + 1) & v12;
    if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v8;
  v18 = *v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100390208();
    v16 = v18;
  }

  v17 = *(*(v16 + 48) + 8 * v11);
  sub_100293914(v11);
  result = v17;
  *v8 = v18;
  return result;
}

uint64_t sub_10029326C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for ShowInfo();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1000136E4(&qword_10057E770, 255, &type metadata accessor for ShowInfo);
  v31 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_1000136E4(&unk_100581820, 255, &type metadata accessor for ShowInfo);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10039035C();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_100293AB4(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_10029351C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10038FF3C();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_100293DC0(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_100293658()
{
  v1 = v0;

  v2 = __CocoaSet.count.getter();
  v3 = swift_unknownObjectRetain();
  v4 = sub_100291B78(v3, v2);
  v14 = v4;
  v5 = *(v4 + 40);

  v6 = NSObject._rawHashValue(seed:)(v5);
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    sub_100009F1C(0, &qword_1005747D0);
    while (1)
    {
      v10 = *(*(v4 + 48) + 8 * v8);
      v11 = static NSObject.== infix(_:_:)();

      if (v11)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v12 = *(*(v4 + 48) + 8 * v8);
  sub_100293914(v8);
  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    *v1 = v14;
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002937C0()
{
  v1 = v0;

  v2 = __CocoaSet.count.getter();
  v3 = swift_unknownObjectRetain();
  v4 = sub_100291D68(v3, v2);
  v14 = v4;
  v5 = *(v4 + 40);

  v6 = NSObject._rawHashValue(seed:)(v5);
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    type metadata accessor for DownloadingEpisodeStateDataSource();
    while (1)
    {
      v10 = *(*(v4 + 48) + 8 * v8);
      v11 = static NSObject.== infix(_:_:)();

      if (v11)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v12 = *(*(v4 + 48) + 8 * v8);
  sub_100293914(v8);
  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    *v1 = v14;
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100293914(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(*(v3 + 48) + 8 * v6);
        v12 = NSObject._rawHashValue(seed:)(v10);

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 >= v9 && v2 >= v13)
          {
LABEL_16:
            v16 = *(v3 + 48);
            v17 = (v16 + 8 * v2);
            v18 = (v16 + 8 * v6);
            if (v2 != v6 || v17 >= v18 + 1)
            {
              *v17 = *v18;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v9 || v2 >= v13)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_100293AB4(int64_t a1)
{
  v3 = type metadata accessor for ShowInfo();
  v4 = *(v3 - 8);
  result = __chkstk_darwin(v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;

    v13 = _HashTable.previousHole(before:)();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v14 = v12;
      v15 = (v13 + 1) & v12;
      v35 = *(v4 + 16);
      v36 = v4 + 16;
      v16 = *(v4 + 72);
      v33 = (v4 + 8);
      v34 = v9;
      v17 = v16;
      do
      {
        v18 = v17;
        v19 = v17 * v11;
        v35(v7, *(v8 + 48) + v17 * v11, v3);
        v20 = v8;
        v21 = v15;
        v22 = v14;
        v23 = v20;
        sub_1000136E4(&qword_10057E770, 255, &type metadata accessor for ShowInfo);
        v24 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v33)(v7, v3);
        v25 = v24 & v22;
        v14 = v22;
        v15 = v21;
        if (a1 >= v21)
        {
          if (v25 >= v21 && a1 >= v25)
          {
LABEL_16:
            v8 = v23;
            v28 = *(v23 + 48);
            v17 = v18;
            v29 = v18 * a1;
            if (v18 * a1 < v19 || v28 + v18 * a1 >= (v28 + v19 + v18))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v11;
            }

            else
            {
              a1 = v11;
              if (v29 != v19)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v11;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v25 >= v21 || a1 >= v25)
        {
          goto LABEL_16;
        }

        v8 = v23;
        v17 = v18;
LABEL_5:
        v11 = (v11 + 1) & v14;
        v9 = v34;
      }

      while (((*(v34 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v30 = *(v8 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v32;
    ++*(v8 + 36);
  }

  return result;
}

unint64_t sub_100293DC0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        v10 = Hasher._finalize()();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_100293F94(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_10057B9D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100294004(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_10057B9D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_100294078()
{
  result = [objc_allocWithZone(type metadata accessor for MTNotificationSettingsPresentationController()) init];
  qword_100593468 = result;
  return result;
}

Swift::Void __swiftcall MTNotificationSettingsPresentationController.presentModal(highlightedPodcastUuid:)(Swift::String_optional highlightedPodcastUuid)
{
  object = highlightedPodcastUuid.value._object;
  countAndFlagsBits = highlightedPodcastUuid.value._countAndFlagsBits;
  v3 = type metadata accessor for FlowPresentationHints();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FlowDestination();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (object)
    {
      v16 = Strong;
      sub_1001CFF48(countAndFlagsBits, object, 1);

      Strong = v16;
    }
  }

  else
  {
    *v10 = countAndFlagsBits;
    v10[1] = object;
    (*(v8 + 104))(v10, enum case for FlowDestination.notificationSettings(_:), v7);
    v12 = UIApp;
    if (UIApp)
    {

      v13 = v12;
      v14 = UIResponder.nearestFlowController.getter();

      if (v14)
      {
        swift_getObjectType();
        static FlowPresentationHints.modalFormSheet.getter();
        dispatch thunk of FlowController.show(destination:hints:referrer:)();
        swift_unknownObjectRelease();
        (*(v4 + 8))(v6, v3);
      }

      (*(v8 + 8))(v10, v7);
    }

    else
    {
      __break(1u);
    }
  }
}

id MTNotificationSettingsPresentationController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MTNotificationSettingsPresentationController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100294534()
{
  v1 = v0;
  v2 = sub_100168088(&unk_100582DE0);
  __chkstk_darwin(v2 - 8);
  v152 = &v151 - v3;
  v4 = sub_100168088(&unk_100578C10);
  __chkstk_darwin(v4 - 8);
  v157 = &v151 - v5;
  v6 = sub_100168088(&qword_10057BB28);
  __chkstk_darwin(v6 - 8);
  v164 = &v151 - v7;
  v8 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v8 - 8);
  v156 = &v151 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v163 = &v151 - v11;
  __chkstk_darwin(v12);
  v162 = &v151 - v13;
  v14 = sub_100168088(&qword_100574760);
  __chkstk_darwin(v14 - 8);
  v159 = &v151 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v151 - v17;
  v169 = type metadata accessor for ShowOffer();
  v19 = *(v169 - 8);
  __chkstk_darwin(v169);
  v161 = &v151 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v160 = &v151 - v22;
  __chkstk_darwin(v23);
  v158 = &v151 - v24;
  __chkstk_darwin(v25);
  v167 = (&v151 - v26);
  __chkstk_darwin(v27);
  v168 = &v151 - v28;
  __chkstk_darwin(v29);
  v31 = &v151 - v30;
  v32 = type metadata accessor for URL();
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v153 = &v151 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v37 = &v151 - v36;
  v38 = EpisodeOffer.mediaType.getter();
  v166 = v33;
  if (v38 != 3)
  {
    v53 = EpisodeMediaType.rawValue.getter();
    v55 = v54;
    if (v53 == EpisodeMediaType.rawValue.getter() && v55 == v56)
    {
    }

    else
    {
      v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v33 = v166;
      if ((v57 & 1) == 0)
      {
        goto LABEL_2;
      }
    }

    return 0;
  }

LABEL_2:
  EpisodeOffer.streamUrl.getter();
  v39 = objc_allocWithZone(MTPlayerItem);
  URL._bridgeToObjectiveC()(v40);
  v42 = v41;
  v154 = *(v33 + 8);
  v155 = v33 + 8;
  v154(v37, v32);
  v43 = [v39 initWithUrl:v42];

  v44 = v43;
  EpisodeOffer.priceType.getter();
  v45 = NSPersistentStringForMTEpisodePriceType();
  if (!v45)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = String._bridgeToObjectiveC()();
  }

  [v44 setPriceType:v45];

  EpisodeOffer.showOffer.getter();
  ShowOffer.displayType.getter();
  v47 = v46;
  v48 = *(v19 + 8);
  v49 = v31;
  v50 = v19 + 8;
  v51 = v169;
  v48(v49, v169);
  if (v47)
  {
    v52 = String._bridgeToObjectiveC()();
  }

  else
  {
    v52 = 0;
  }

  [v44 setPodcastDisplayType:v52];

  result = EpisodeOffer.contentId.getter();
  if (result < 0)
  {
    __break(1u);
    goto LABEL_94;
  }

  [v44 setEpisodeStoreId:result];
  v59 = v168;
  EpisodeOffer.showOffer.getter();
  v60 = ShowOffer.adamId.getter();
  result = (v48)(v59, v51);
  if (v60 < 0)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  [v44 setPodcastStoreId:v60];
  EpisodeOffer.title.getter();
  v61 = String._bridgeToObjectiveC()();

  [v44 setTitle:v61];

  type metadata accessor for CoreDataFetcher();
  static CoreDataFetcher.episodeUuid(for:)();
  if (v62)
  {
    v63 = String._bridgeToObjectiveC()();
  }

  else
  {
    v63 = 0;
  }

  [v44 setEpisodeUuid:v63];

  EpisodeOffer.guid.getter();
  if (v64)
  {
    v65 = String._bridgeToObjectiveC()();
  }

  else
  {
    v65 = 0;
  }

  [v44 setEpisodeGuid:v65];

  EpisodeOffer.summary.getter();
  if (v66)
  {
    v67 = String._bridgeToObjectiveC()();
  }

  else
  {
    v67 = 0;
  }

  [v44 setSubtitle:v67];

  v68 = v168;
  EpisodeOffer.showOffer.getter();
  ShowOffer.title.getter();
  v165 = v50;
  v48(v68, v51);
  v69 = String._bridgeToObjectiveC()();

  [v44 setAuthor:v69];

  if (EpisodeOffer.releaseDate.getter())
  {
    LazyDate.value.getter();

    v70 = type metadata accessor for Date();
    v71 = *(v70 - 8);
    isa = 0;
    if ((*(v71 + 48))(v18, 1, v70) != 1)
    {
      isa = Date._bridgeToObjectiveC()().super.isa;
      (*(v71 + 8))(v18, v70);
    }
  }

  else
  {
    v73 = type metadata accessor for Date();
    (*(*(v73 - 8) + 56))(v18, 1, 1, v73);
    isa = 0;
  }

  [v44 setPubDate:isa];

  v74 = EpisodeOffer.contentRating.getter();
  v151 = v32;
  if (v74 == 2)
  {
    goto LABEL_28;
  }

  v76 = ContentRating.rawValue.getter();
  v78 = v77;
  if (v76 == ContentRating.rawValue.getter() && v78 == v79)
  {

LABEL_39:
    v75 = 1;
    v84 = v158;
    goto LABEL_40;
  }

  v85 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v85)
  {
    goto LABEL_39;
  }

LABEL_28:
  EpisodeOffer.showOffer.getter();
  if (ShowOffer.contentRating.getter() == 2)
  {
    v75 = 0;
  }

  else
  {
    v80 = ContentRating.rawValue.getter();
    v82 = v81;
    v75 = 1;
    if (v80 != ContentRating.rawValue.getter() || v82 != v83)
    {
      v75 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  v84 = v158;
  v48(v167, v51);
LABEL_40:
  [v44 setIsExplicit:{v75 & 1, v151}];
  [v44 setEntitled:EpisodeOffer.isEntitledOffer.getter() & 1];
  v86 = EpisodeOffer.seasonNumber.getter();
  if (v87)
  {
    v88 = 0;
  }

  else
  {
    v88 = v86;
  }

  v89 = EpisodeOffer.episodeNumber.getter();
  if (v90)
  {
    v91 = 0;
  }

  else
  {
    v91 = v89;
  }

  EpisodeOffer.showOffer.getter();
  ShowOffer.showType.getter();
  v167 = v48;
  v48(v84, v51);
  v92 = ShowType.rawValue.getter();
  v94 = v93;
  if (v92 != ShowType.rawValue.getter() || v94 != v95)
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v96 = [v44 pubDate];
  v97 = v163;
  v98 = v159;
  if (v96)
  {
    v99 = v96;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v100 = 0;
  }

  else
  {
    v100 = 1;
  }

  v101 = v151;
  v102 = type metadata accessor for Date();
  (*(*(v102 - 8) + 56))(v98, v100, 1, v102);
  type metadata accessor for AlbumStringBuilder();
  static AlbumStringBuilder.albumString(podcastTitle:episodeNumber:seasonNumber:isSerialType:pubDate:)();
  v104 = v103;
  sub_100009104(v98, &qword_100574760);
  v105 = v164;
  if (v104)
  {
    v106 = String._bridgeToObjectiveC()();
  }

  else
  {
    v106 = 0;
  }

  [v44 setAlbum:v106];

  [v44 setSeasonNumber:v88];
  [v44 setEpisodeNumber:v91];
  v107 = v160;
  EpisodeOffer.showOffer.getter();
  ShowOffer.showType.getter();
  v167(v107, v169);
  v108 = ShowType.rawValue.getter();
  v110 = v109;
  v111 = 1;
  if (v108 != ShowType.rawValue.getter() || v110 != v112)
  {
    v111 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  [v44 setPodcastIsSerial:v111 & 1];
  v113 = EpisodeOffer.episodeType.getter();
  if (v113 > 1)
  {
    if (v113 != 2)
    {
      goto LABEL_65;
    }

    v114 = 1;
  }

  else if (v113)
  {
    v114 = 0;
  }

  else
  {
    v114 = 2;
  }

  [v44 setEpisodeType:v114];
LABEL_65:
  EpisodeOffer.summary.getter();
  if (v115)
  {
    v116 = String._bridgeToObjectiveC()();
  }

  else
  {
    v116 = 0;
  }

  [v44 setItemDescription:v116];

  if (EpisodeOffer.mediaType.getter() == 3)
  {
    v117 = 0;
  }

  else
  {
    v118 = EpisodeMediaType.rawValue.getter();
    v120 = v119;
    v117 = 1;
    if (v118 != EpisodeMediaType.rawValue.getter() || v120 != v121)
    {
      v117 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  [v44 setIsVideo:v117 & 1];
  EpisodeOffer.reportingParams.getter();
  if (v122)
  {
    v123 = String._bridgeToObjectiveC()();
  }

  else
  {
    v123 = 0;
  }

  [v44 setStoreReportingParams:v123];

  v124 = v162;
  EpisodeOffer.storeUrl.getter();
  v125 = v166;
  v126 = *(v166 + 48);
  if (v126(v124, 1, v101) == 1)
  {
    sub_100009104(v124, &qword_100574040);
  }

  else
  {
    v127 = *(v125 + 32);
    v160 = v1;
    v128 = v97;
    v129 = v105;
    v130 = v101;
    v131 = v153;
    v127(v153, v124, v130);
    URL._bridgeToObjectiveC()(v132);
    v134 = v133;
    [v44 setEpisodeShareUrl:v133];

    v135 = v131;
    v101 = v130;
    v105 = v129;
    v97 = v128;
    v154(v135, v101);
  }

  v136 = v161;
  EpisodeOffer.showOffer.getter();
  ShowOffer.feedUrl.getter();
  v167(v136, v169);
  if (v126(v97, 1, v101) == 1)
  {
    sub_100009104(v97, &qword_100574040);
    v137 = 0;
  }

  else
  {
    URL.absoluteString.getter();
    v154(v97, v101);
    v137 = String._bridgeToObjectiveC()();
  }

  [v44 setPodcastFeedUrl:v137];

  v138 = v168;
  EpisodeOffer.showOffer.getter();
  v139 = ShowOffer.adamId.getter();
  result = (v167)(v138, v169);
  if ((v139 & 0x8000000000000000) == 0)
  {
    [v44 setPodcastStoreId:v139];
    EpisodeOffer.transcriptInfo.getter();
    v140 = type metadata accessor for TranscriptRequestInformation();
    v141 = *(v140 - 8);
    if ((*(v141 + 48))(v105, 1, v140) == 1)
    {
      sub_100009104(v105, &qword_10057BB28);
      v142 = 0;
    }

    else
    {
      TranscriptRequestInformation.ttmlIdentifier.getter();
      (*(v141 + 8))(v105, v140);
      v142 = String._bridgeToObjectiveC()();
    }

    v143 = v157;
    [v44 setTranscriptIdentifier:v142];

    EpisodeOffer.artwork.getter();
    v144 = type metadata accessor for ArtworkModel();
    if ((*(*(v144 - 8) + 48))(v143, 1, v144) == 1)
    {
      sub_100009104(v143, &unk_100578C10);
      (*(v166 + 56))(v156, 1, 1, v101);
      v145 = 0;
    }

    else
    {
      v146 = type metadata accessor for CropCode();
      v147 = v152;
      (*(*(v146 - 8) + 56))(v152, 1, 1, v146);
      ArtworkModel.config(_:mode:format:crop:retainAspectRatio:)();
      sub_100009104(v147, &unk_100582DE0);
      sub_1002A9028(v143, &type metadata accessor for ArtworkModel);
      v148 = v156;
      dispatch thunk of LegacyArtworkLoaderConfig.url.getter();

      v145 = 0;
      if (v126(v148, 1, v101) != 1)
      {
        URL._bridgeToObjectiveC()(v149);
        v145 = v150;
        v154(v148, v101);
      }
    }

    [v44 setArtworkUrl:v145];

    return v44;
  }

LABEL_95:
  __break(1u);
  return result;
}

uint64_t sub_1002957BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 88) = a4;
  *(v5 + 96) = a5;
  return _swift_task_switch(sub_1002957DC, 0, 0);
}

uint64_t sub_1002957DC()
{
  v1 = type metadata accessor for PlaybackController.TransportCommand();
  v0[5] = v1;
  v0[6] = &protocol witness table for PlaybackController.TransportCommand;
  v2 = sub_10000E680(v0 + 2);
  (*(*(v1 - 8) + 104))(v2, enum case for PlaybackController.TransportCommand.play(_:), v1);
  v5 = &async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:) + async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:);
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_1002958E4;

  return (v5)(v0 + 2, 0);
}

uint64_t sub_1002958E4(void *a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100295A3C, 0, 0);
  }

  else
  {

    sub_100004590(v4 + 16);
    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_100295A3C()
{
  sub_100004590(v0 + 16);
  type metadata accessor for MainActor();
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 120) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100295AE4, v2, v1);
}

uint64_t sub_100295AE4()
{
  v1 = *(v0 + 112);

  sub_100295BD4(v1);
  sub_100009104(v0 + 56, &unk_1005783D0);

  return _swift_task_switch(sub_100295B74, 0, 0);
}

uint64_t sub_100295B74()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100295BD4(uint64_t a1)
{
  v108 = *v1;
  v121 = type metadata accessor for PodcastsPlaybackError.FairPlayError();
  v118 = *(v121 - 8);
  __chkstk_darwin(v121);
  v116 = &v103 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v117 = &v103 - v5;
  __chkstk_darwin(v6);
  v8 = &v103 - v7;
  v9 = sub_100168088(&qword_10057BB30);
  __chkstk_darwin(v9 - 8);
  v104 = &v103 - v10;
  v114 = type metadata accessor for PlaybackIntent.PlayerConstraint();
  v112 = *(v114 - 8);
  __chkstk_darwin(v114);
  v105 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v103 = &v103 - v13;
  __chkstk_darwin(v14);
  v113 = &v103 - v15;
  v111 = type metadata accessor for PlaybackIntent();
  v110 = *(v111 - 8);
  __chkstk_darwin(v111);
  v107 = &v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = v16;
  __chkstk_darwin(v17);
  v109 = &v103 - v18;
  v120 = type metadata accessor for URL();
  v115 = *(v120 - 8);
  __chkstk_darwin(v120);
  v20 = &v103 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for PodcastsPlaybackError.ValidationError();
  v123 = *(v21 - 8);
  v124 = v21;
  __chkstk_darwin(v21);
  v23 = (&v103 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v24);
  v122 = &v103 - v25;
  __chkstk_darwin(v26);
  v28 = &v103 - v27;
  v29 = sub_100168088(&unk_10057BB38);
  __chkstk_darwin(v29 - 8);
  v31 = &v103 - v30;
  v32 = type metadata accessor for PlaybackController.ErrorDialog();
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v35 = &v103 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&aBlock = a1;
  swift_errorRetain();
  sub_100168088(&qword_100575C50);
  v36 = swift_dynamicCast();
  v37 = *(v33 + 56);
  if (v36)
  {
    v37(v31, 0, 1, v32);
    (*(v33 + 32))(v35, v31, v32);
    v38 = PlaybackController.ErrorDialog.error.getter();
    v39 = v32;
    v40 = v38;
    (*(v33 + 8))(v35, v39);
  }

  else
  {
    v37(v31, 1, 1, v32);
    sub_100009104(v31, &unk_10057BB38);
    swift_errorRetain();
    v40 = a1;
  }

  v130 = v40;
  swift_errorRetain();
  v41 = v124;
  if (swift_dynamicCast())
  {
    v43 = v122;
    v42 = v123;
    (*(v123 + 32))(v122, v28, v41);
    (*(v42 + 16))(v23, v43, v41);
    v44 = (*(v42 + 88))(v23, v41);
    if (v44 == enum case for PodcastsPlaybackError.ValidationError.externalMedia(_:))
    {
      (*(v42 + 96))(v23, v41);
      v45 = v115;
      (*(v115 + 32))(v20, v23, v120);
      v46 = [objc_opt_self() sharedApplication];
      URL._bridgeToObjectiveC()(v47);
      v49 = v48;
      sub_10016A31C(_swiftEmptyArrayStorage);
      type metadata accessor for OpenExternalURLOptionsKey(0);
      sub_1002A91E8(&qword_100573120, 255, type metadata accessor for OpenExternalURLOptionsKey);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v46 openURL:v49 options:isa completionHandler:0];

      (*(v45 + 8))(v20, v120);
LABEL_7:
      (*(v42 + 8))(v43, v41);
    }

    if (v44 == enum case for PodcastsPlaybackError.ValidationError.notEntitledShowUpsell(_:))
    {
      (*(v42 + 96))(v23, v41);
      v57 = *v23;
      v125[3] = v108;
      v125[0] = v119;
      sub_1000044A0((v119 + 40), *(v119 + 64));

      dispatch thunk of StoreDataProvider.fetchEpisodeUpsellAction(for:)();
      v58 = v41;
      v59 = swift_allocObject();
      swift_weakInit();
      sub_100010430(v125, &aBlock, &unk_1005783D0);
      v60 = swift_allocObject();
      *(v60 + 16) = v59;
      *(v60 + 24) = v57;
      v61 = v127;
      *(v60 + 32) = aBlock;
      *(v60 + 48) = v61;
      *(&v127 + 1) = type metadata accessor for SyncTaskScheduler();
      v128 = &protocol witness table for SyncTaskScheduler;
      sub_10000E680(&aBlock);
      SyncTaskScheduler.init()();
      sub_100168088(&unk_100578110);
      sub_100009FAC(&unk_10057DD60, &unk_100578110);
      Promise.flatMap<A>(on:_:)();

      sub_100004590(&aBlock);

      (*(v42 + 8))(v43, v58);
      sub_100009104(v125, &unk_1005783D0);
    }

    if (v44 == enum case for PodcastsPlaybackError.ValidationError.localPlaybackRequired(_:))
    {
      v121 = v40;
      (*(v42 + 96))(v23, v41);
      v67 = *(sub_100168088(&qword_10057BB58) + 48);
      v116 = *(v110 + 32);
      v117 = (v110 + 32);
      (v116)(v109, v23, v111);
      v68 = v112;
      v69 = v23 + v67;
      v70 = v113;
      v71 = v114;
      (*(v112 + 32))(v113, v69, v114);
      v118 = dispatch thunk of PlaybackController.currentRoute.getter();
      v72 = *(v68 + 16);
      v73 = v103;
      v72(v103, v70, v71);
      v74 = *(v68 + 88);
      v75 = v74(v73, v71);
      v76 = enum case for PlaybackIntent.PlayerConstraint.currentItemUntransferrable(_:);
      if (v75 == enum case for PlaybackIntent.PlayerConstraint.currentItemUntransferrable(_:))
      {
        (*(v68 + 96))(v73, v71);
        v77 = v104;
        sub_100010498(v73, v104, &qword_10057BB30);
      }

      else
      {
        v80 = type metadata accessor for PodcastsMediaLibrary.MediaItem();
        v77 = v104;
        (*(*(v80 - 8) + 56))(v104, 1, 1, v80);
        (*(v68 + 8))(v73, v71);
      }

      v81 = v105;
      v82 = type metadata accessor for PodcastsMediaLibrary.MediaItem();
      v83 = *(v82 - 8);
      if ((*(v83 + 48))(v77, 1, v82) == 1)
      {
        sub_100009104(v77, &qword_10057BB30);
        v120 = 0;
        v84 = v114;
      }

      else
      {
        v115 = v74;
        PodcastsMediaLibrary.MediaItem.author.getter();
        v87 = v86;
        (*(v83 + 8))(v77, v82);
        if (v87)
        {
          v120 = String._bridgeToObjectiveC()();
        }

        else
        {
          v120 = 0;
        }

        v84 = v114;
        v74 = v115;
      }

      v72(v81, v113, v84);
      v88 = v74(v81, v84);
      if (v88 == v76)
      {
        v115 = 1;
        v89 = v123;
        v90 = v112;
LABEL_32:
        (*(v90 + 8))(v81, v84);
LABEL_38:
        v92 = objc_opt_self();
        v93 = v110;
        v94 = v107;
        v95 = v109;
        v96 = v111;
        (*(v110 + 16))(v107, v109, v111);
        v97 = (*(v93 + 80) + 24) & ~*(v93 + 80);
        v98 = swift_allocObject();
        *(v98 + 16) = v119;
        (v116)(v98 + v97, v94, v96);
        v128 = sub_1002A5520;
        v129 = v98;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v127 = sub_1002016BC;
        *(&v127 + 1) = &unk_1004E94A8;
        v99 = _Block_copy(&aBlock);

        v100 = v92;
        v101 = v118;
        v102 = v120;
        [v100 promptBeforePerformingIntentAsBufferedAirPlayForRoute:v118 provider:v120 queueStatus:v115 completion:v99];
        _Block_release(v99);

        (*(v90 + 8))(v113, v114);
        (*(v93 + 8))(v95, v96);
        (*(v89 + 8))(v122, v124);
      }

      v89 = v123;
      if (v88 == enum case for PlaybackIntent.PlayerConstraint.singleItemUntransferrable(_:))
      {
        v91 = 2;
      }

      else
      {
        if (v88 != enum case for PlaybackIntent.PlayerConstraint.multipleItemsUntransferrable(_:))
        {
          v115 = 4;
          v90 = v112;
          if (v88 == enum case for PlaybackIntent.PlayerConstraint.unknown(_:))
          {
            goto LABEL_38;
          }

          goto LABEL_32;
        }

        v91 = 3;
      }

      v115 = v91;
      v90 = v112;
      goto LABEL_38;
    }

    if (v44 == enum case for PodcastsPlaybackError.ValidationError.authenticationRequired(_:))
    {
      sub_100009F1C(0, &qword_10057AB20);
      v78 = [swift_getObjCClassFromMetadata() sharedInstance];
      v79 = String._bridgeToObjectiveC()();
      [v78 promptAccountAuthenticationWithDebugReason:v79 forced:1];

      goto LABEL_7;
    }

    v85 = *(v42 + 8);
    v85(v43, v41);
    v85(v23, v41);
  }

  else
  {

    *&aBlock = v40;
    swift_errorRetain();
    v51 = v121;
    if (swift_dynamicCast())
    {
      v53 = v117;
      v52 = v118;
      (*(v118 + 32))(v117, v8, v51);
      v54 = v116;
      (*(v52 + 16))(v116, v53, v51);
      if ((*(v52 + 88))(v54, v51) == enum case for PodcastsPlaybackError.FairPlayError.authenticationRequired(_:))
      {
        sub_100009F1C(0, &qword_10057AB20);
        v55 = [swift_getObjCClassFromMetadata() sharedInstance];
        v56 = String._bridgeToObjectiveC()();
        [v55 promptAccountAuthenticationWithDebugReason:v56 forced:1];

        (*(v52 + 8))(v53, v51);
      }

      v62 = *(v52 + 8);
      v62(v53, v51);
      v62(v54, v51);
    }
  }

  v63 = static EpisodeUnavailableReason.Translator.episodeUnavailableReason(for:)();
  v64 = EpisodeUnavailableReason.rawValue.getter();
  if (v64 != EpisodeUnavailableReason.rawValue.getter())
  {
    sub_100009F1C(0, &unk_10057BB48);
    v65 = [swift_getObjCClassFromMetadata() sharedInstance];
    [v65 showDialogForReason:v63 podcastTitle:0 completion:0];
  }
}

uint64_t sub_100296DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100168088(&qword_100578010);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100010430(a3, v25 - v10, &qword_100578010);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100009104(v11, &qword_100578010);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100297070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 88) = a4;
  *(v5 + 96) = a5;
  return _swift_task_switch(sub_100297090, 0, 0);
}

uint64_t sub_100297090()
{
  v1 = type metadata accessor for PlaybackController.TransportCommand();
  v0[5] = v1;
  v0[6] = &protocol witness table for PlaybackController.TransportCommand;
  v2 = sub_10000E680(v0 + 2);
  (*(*(v1 - 8) + 104))(v2, enum case for PlaybackController.TransportCommand.pause(_:), v1);
  v5 = &async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:) + async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:);
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_100297198;

  return (v5)(v0 + 2, 0);
}

uint64_t sub_100297198(void *a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1002972F0, 0, 0);
  }

  else
  {

    sub_100004590(v4 + 16);
    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1002972F0()
{
  sub_100004590(v0 + 16);
  type metadata accessor for MainActor();
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 120) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100297398, v2, v1);
}

uint64_t sub_100297398()
{
  v1 = *(v0 + 112);

  sub_100295BD4(v1);
  sub_100009104(v0 + 56, &unk_1005783D0);

  return _swift_task_switch(sub_1002A979C, 0, 0);
}

uint64_t sub_100297428(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 104) = a6;
  *(v6 + 96) = a1;
  *(v6 + 88) = a5;
  return _swift_task_switch(sub_100297450, 0, 0);
}

uint64_t sub_100297450()
{
  v1 = v0[12];
  v2 = type metadata accessor for PlaybackController.TransportCommand();
  v0[5] = v2;
  v0[6] = &protocol witness table for PlaybackController.TransportCommand;
  *sub_10000E680(v0 + 2) = v1;
  (*(*(v2 - 8) + 104))();
  v5 = &async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:) + async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:);
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_100297568;

  return (v5)(v0 + 2, 0);
}

uint64_t sub_100297568(void *a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1002976C0, 0, 0);
  }

  else
  {

    sub_100004590(v4 + 16);
    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1002976C0()
{
  sub_100004590(v0 + 16);
  type metadata accessor for MainActor();
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 128) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100297768, v2, v1);
}

uint64_t sub_100297768()
{
  v1 = *(v0 + 120);

  sub_100295BD4(v1);
  sub_100009104(v0 + 56, &unk_1005783D0);

  return _swift_task_switch(sub_1002977F8, 0, 0);
}

uint64_t sub_1002977F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100297858(double a1)
{
  v3 = sub_100168088(&qword_100578010);
  __chkstk_darwin(v3 - 8);
  v30 = &v27 - v4;
  v5 = type metadata accessor for PlaybackController.TransportCommand();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v28 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v31 = (&v27 - v9);
  v11 = __chkstk_darwin(v10);
  v13 = (&v27 - v12);
  *v13 = a1;
  *(v13 + 8) = 0;
  v13[2] = a1;
  v14 = *(v6 + 104);
  (v14)(&v27 - v12, enum case for PlaybackController.TransportCommand.scoutWith(_:), v5, v11);
  v29 = v1;
  v15 = *(v1 + 120);
  v32[3] = v5;
  v32[4] = &protocol witness table for PlaybackController.TransportCommand;
  v16 = sub_10000E680(v32);
  v17 = *(v6 + 16);
  v17(v16, v13, v5);
  v27 = v15;
  v18 = dispatch thunk of PlaybackController.canPerform(_:)();
  sub_100004590(v32);
  if (v18)
  {
    v17(v31, v13, v5);
  }

  else
  {
    *v31 = a1;
    v14();
  }

  v19 = v30;
  static TaskPriority.userInitiated.getter();
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v19, 0, 1, v20);
  v21 = v28;
  v17(v28, v31, v5);
  v22 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v23 = (v7 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 2) = 0;
  *(v24 + 3) = 0;
  *(v24 + 4) = v27;
  (*(v6 + 32))(&v24[v22], v21, v5);
  *&v24[v23] = v29;

  sub_100296DB0(0, 0, v19, &unk_100409210, v24);

  sub_100009104(v19, &qword_100578010);
  v25 = *(v6 + 8);
  v25(v31, v5);
  return (v25)(v13, v5);
}

uint64_t sub_100297BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[11] = a4;
  return _swift_task_switch(sub_100297BF0, 0, 0);
}

uint64_t sub_100297BF0()
{
  v1 = v0[12];
  v2 = type metadata accessor for PlaybackController.TransportCommand();
  v0[5] = v2;
  v0[6] = &protocol witness table for PlaybackController.TransportCommand;
  v3 = sub_10000E680(v0 + 2);
  (*(*(v2 - 8) + 16))(v3, v1, v2);
  v6 = &async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:) + async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:);
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_100297CF8;

  return (v6)(v0 + 2, 0);
}

uint64_t sub_100297CF8(void *a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100297E50, 0, 0);
  }

  else
  {

    sub_100004590(v4 + 16);
    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_100297E50()
{
  sub_100004590(v0 + 16);
  type metadata accessor for MainActor();
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 128) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100297EF8, v2, v1);
}

uint64_t sub_100297EF8()
{
  v1 = *(v0 + 120);

  sub_100295BD4(v1);
  sub_100009104(v0 + 56, &unk_1005783D0);

  return _swift_task_switch(sub_1002A97A0, 0, 0);
}

uint64_t sub_100297F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 88) = a4;
  *(v5 + 96) = a5;
  return _swift_task_switch(sub_100297FA8, 0, 0);
}

uint64_t sub_100297FA8()
{
  v1 = type metadata accessor for PlaybackController.TransportCommand();
  v0[5] = v1;
  v0[6] = &protocol witness table for PlaybackController.TransportCommand;
  v2 = sub_10000E680(v0 + 2);
  (*(*(v1 - 8) + 104))(v2, enum case for PlaybackController.TransportCommand.jumpBackward(_:), v1);
  v5 = &async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:) + async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:);
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_100297198;

  return (v5)(v0 + 2, 0);
}

uint64_t sub_1002980B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 88) = a4;
  *(v5 + 96) = a5;
  return _swift_task_switch(sub_1002980D0, 0, 0);
}

uint64_t sub_1002980D0()
{
  v1 = type metadata accessor for PlaybackController.TransportCommand();
  v0[5] = v1;
  v0[6] = &protocol witness table for PlaybackController.TransportCommand;
  v2 = sub_10000E680(v0 + 2);
  (*(*(v1 - 8) + 104))(v2, enum case for PlaybackController.TransportCommand.jumpForward(_:), v1);
  v5 = &async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:) + async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:);
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_100297198;

  return (v5)(v0 + 2, 0);
}

uint64_t sub_1002981D8(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  v32 = a3;
  v33 = a4;
  v31 = a2;
  v8 = type metadata accessor for PlaybackIntent();
  v28 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100168088(&qword_100578010);
  __chkstk_darwin(v12 - 8);
  v14 = &v28 - v13;
  static TaskPriority.userInitiated.getter();
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
  v16 = *(v5 + 120);
  v29 = v5;
  v30 = v16;
  (*(v9 + 16))(v11, a1, v8);
  sub_100004428(v5 + 80, v35);
  sub_100010430(a5, v34, &unk_1005783D0);
  v17 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v18 = (v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 17) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 47) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  (*(v9 + 32))(v22 + v17, v11, v28);
  v23 = v22 + v18;
  v24 = v30;
  *v23 = v31;
  *(v23 + 8) = v32 & 1;
  *(v23 + 9) = v33;
  *(v22 + v19) = v24;
  sub_1000109E4(v35, v22 + v20);
  *(v22 + v21) = v29;
  v25 = (v22 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8));
  v26 = v34[1];
  *v25 = v34[0];
  v25[1] = v26;

  sub_100296DB0(0, 0, v14, &unk_100409120, v22);

  return sub_100009104(v14, &qword_100578010);
}

uint64_t sub_100298498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = a4;
  v46 = a1;
  v50 = a3;
  v51 = type metadata accessor for ActionOutcome();
  v4 = *(v51 - 8);
  __chkstk_darwin(v51);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for OSLogger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ActionMetricsBehavior();
  v48 = *(v12 - 8);
  v49 = v12;
  __chkstk_darwin(v12);
  v47 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100168088(&qword_10057CF40);
  __chkstk_darwin(v14 - 8);
  v16 = &v43 - v15;
  v17 = sub_100168088(&unk_10057BB60);
  __chkstk_darwin(v17 - 8);
  v19 = &v43 - v18;
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    goto LABEL_8;
  }

  v44 = v16;
  if (!swift_unknownObjectWeakLoadStrong() || (swift_getObjectType(), v20 = dispatch thunk of ActionRunnerProvider.actionRunner.getter(), v43 = v21, swift_unknownObjectRelease(), !v20))
  {

LABEL_8:
    static OSLogger.actions.getter();
    sub_100168088(&unk_10057E660);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_100400790;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v27._countAndFlagsBits = 0xD000000000000032;
    v27._object = 0x800000010046CE80;
    LogMessage.StringInterpolation.appendLiteral(_:)(v27);
    v54 = &type metadata for AdamID;
    v53[0] = v50;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_100009104(v53, &unk_1005783D0);
    v28._object = 0x800000010046CEC0;
    v28._countAndFlagsBits = 0xD00000000000001ALL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v28);
    LogMessage.init(stringInterpolation:)();
    Logger.error(_:)();

    (*(v9 + 8))(v11, v8);
    sub_100168088(&unk_100578110);
    (*(v4 + 104))(v6, enum case for ActionOutcome.unsupported(_:), v51);
    return Promise.__allocating_init(value:)();
  }

  type metadata accessor for ActionRunnerOptions();

  BaseObjectGraph.__allocating_init(_:)();
  v22 = type metadata accessor for InteractionContext();
  (*(*(v22 - 8) + 56))(v19, 1, 1, v22);
  sub_100010430(v45, v53, &unk_1005783D0);
  if (v54)
  {
    sub_100009F1C(0, &unk_10057BB80);
    v23 = swift_dynamicCast();
    v24 = v46;
    if (v23)
    {
      v25 = v52;
      v26 = UIResponder.firstViewInResponderChain.getter();

      goto LABEL_11;
    }
  }

  else
  {
    sub_100009104(v53, &unk_1005783D0);
    v24 = v46;
  }

  v26 = 0;
LABEL_11:
  ActionRunnerOptions.withActionOrigin(context:sender:view:)();

  sub_100009104(v19, &unk_10057BB60);
  sub_100004428(v24, v53);
  sub_100168088(&unk_10057BB70);
  v30 = type metadata accessor for FlowAction();
  if (swift_dynamicCast())
  {
    v31 = v52;
    v32 = v44;
    dispatch thunk of FlowAction.destination.getter();
    v33 = type metadata accessor for FlowDestination();
    v34 = *(v33 - 8);
    if ((*(v34 + 48))(v32, 1, v33) == 1)
    {

      sub_100009104(v32, &qword_10057CF40);
    }

    else
    {
      if ((*(v34 + 88))(v32, v33) == enum case for FlowDestination.upsell(_:))
      {
        (*(v34 + 8))(v32, v33);
        swift_getObjectType();
        v54 = v30;
        v55 = sub_1002A91E8(&unk_10057A0D0, 255, &type metadata accessor for FlowAction);
        v53[0] = v31;
        v36 = v47;
        v35 = v48;
        v37 = v49;
        (*(v48 + 104))(v47, enum case for ActionMetricsBehavior.notProcessed(_:), v49);

        v38 = ActionRunner.perform(_:withMetrics:asPartOf:)();

        swift_unknownObjectRelease();

        (*(v35 + 8))(v36, v37);
        sub_100004590(v53);
        return v38;
      }

      (*(v34 + 8))(v32, v33);
    }
  }

  swift_getObjectType();
  v40 = v47;
  v39 = v48;
  v41 = v49;
  (*(v48 + 104))(v47, enum case for ActionMetricsBehavior.fromAction(_:), v49);
  v42 = ActionRunner.perform(_:withMetrics:asPartOf:)();

  swift_unknownObjectRelease();

  (*(v39 + 8))(v40, v41);
  return v42;
}

uint64_t sub_100298D3C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v51 = *v3;
  v52 = a2;
  v5 = sub_100168088(&unk_100573A80);
  __chkstk_darwin(v5 - 8);
  v50 = &v36 - v6;
  v7 = sub_100168088(&qword_10057A0A0);
  __chkstk_darwin(v7 - 8);
  v49 = &v36 - v8;
  v9 = type metadata accessor for PlaybackIntent.Origin();
  v45 = *(v9 - 8);
  v46 = v9;
  __chkstk_darwin(v9);
  v48 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PlaybackIntent.Context();
  __chkstk_darwin(v11 - 8);
  v47 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for EpisodeOffer();
  v38 = *(v40 - 8);
  __chkstk_darwin(v40);
  v37 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100168088(&qword_10057BB30);
  __chkstk_darwin(v14 - 8);
  v43 = &v36 - v15;
  v39 = type metadata accessor for MediaIdentifier();
  v16 = *(v39 - 8);
  __chkstk_darwin(v39);
  v18 = (&v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = type metadata accessor for PlaybackIntent();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100168088(&qword_10057BC50);
  __chkstk_darwin(v20 - 8);
  v22 = &v36 - v21;
  v23 = type metadata accessor for PendingPlaybackMetadata();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v36 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a1;
  EpisodeOffer.contentId.getter();
  PendingPlaybackMetadata.init(adamId:uuid:)();
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    sub_100009104(v22, &qword_10057BC50);
  }

  else
  {
    (*(v24 + 32))(v26, v22, v23);
    sub_1000044A0(v3 + 10, v3[13]);
    dispatch thunk of PendingPlaybackControllerProtocol.preflight(_:)();
    (*(v24 + 8))(v26, v23);
  }

  sub_100168088(&unk_10057A0B0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_100400790;
  *(v28 + 32) = EpisodeOffer.contentId.getter();
  v53 = v28;
  sub_1001C3C74(_swiftEmptyArrayStorage);
  *v18 = v53;
  v29 = v39;
  (*(v16 + 104))(v18, enum case for MediaIdentifier.episodes(_:), v39);
  (*(v38 + 16))(v37, v27, v40);
  v30 = v43;
  PodcastsMediaLibrary.MediaItem.init(from:)();
  v31 = type metadata accessor for PodcastsMediaLibrary.MediaItem();
  (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
  (*(v45 + 104))(v48, enum case for PlaybackIntent.Origin.default(_:), v46);
  (*(v16 + 56))(v49, 1, 1, v29);
  v32 = type metadata accessor for EpisodeListSettings();
  (*(*(v32 - 8) + 56))(v50, 1, 1, v32);
  PlaybackIntent.Context.init(origin:seed:baseListSettings:)();
  static Set<>.default.getter();
  v33 = v41;
  PlaybackIntent.init(id:context:initialItem:options:)();
  v53 = v3;
  sub_1002A91E8(&qword_10057AC48, v34, type metadata accessor for EpisodeController);
  EpisodeControllerProtocol.performIntent(_:withTimestamp:sender:)();
  return (*(v42 + 8))(v33, v44);
}

uint64_t sub_10029947C(uint64_t a1, void *a2, uint64_t a3, int a4, uint64_t a5)
{
  v6 = v5;
  v45 = a3;
  v46 = a5;
  v44 = a4;
  v52 = a2;
  v59 = *v6;
  v8 = sub_100168088(&unk_100573A80);
  __chkstk_darwin(v8 - 8);
  v58 = &v40 - v9;
  v10 = sub_100168088(&qword_10057A0A0);
  __chkstk_darwin(v10 - 8);
  v57 = &v40 - v11;
  v53 = type metadata accessor for PlaybackIntent.Origin();
  v51 = *(v53 - 8);
  __chkstk_darwin(v53);
  v55 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PlaybackIntent.Context();
  __chkstk_darwin(v13 - 8);
  v54 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for EpisodeOffer();
  v42 = *(v15 - 8);
  v43 = v15;
  __chkstk_darwin(v15);
  v41 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100168088(&qword_10057BB30);
  __chkstk_darwin(v17 - 8);
  v49 = &v40 - v18;
  v19 = type metadata accessor for MediaIdentifier();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = (&v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = type metadata accessor for PlaybackIntent();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v47 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100168088(&qword_10057BC50);
  __chkstk_darwin(v24 - 8);
  v26 = &v40 - v25;
  v27 = type metadata accessor for PendingPlaybackMetadata();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v40 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a1;
  EpisodeOffer.contentId.getter();
  PendingPlaybackMetadata.init(adamId:uuid:)();
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    sub_100009104(v26, &qword_10057BC50);
  }

  else
  {
    (*(v28 + 32))(v30, v26, v27);
    sub_1000044A0(v6 + 10, v6[13]);
    dispatch thunk of PendingPlaybackControllerProtocol.preflight(_:)();
    (*(v28 + 8))(v30, v27);
  }

  sub_100168088(&unk_10057A0B0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_100400790;
  v32 = v56;
  *(v31 + 32) = EpisodeOffer.contentId.getter();
  if (v52)
  {
    v33 = v52;
  }

  else
  {
    v33 = _swiftEmptyArrayStorage;
  }

  v60 = v31;

  sub_1001C3C74(v33);
  *v22 = v60;
  (*(v20 + 104))(v22, enum case for MediaIdentifier.episodes(_:), v19);
  (*(v42 + 16))(v41, v32, v43);
  v34 = v49;
  PodcastsMediaLibrary.MediaItem.init(from:)();
  v35 = type metadata accessor for PodcastsMediaLibrary.MediaItem();
  (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
  (*(v51 + 104))(v55, enum case for PlaybackIntent.Origin.default(_:), v53);
  (*(v20 + 56))(v57, 1, 1, v19);
  v36 = type metadata accessor for EpisodeListSettings();
  (*(*(v36 - 8) + 56))(v58, 1, 1, v36);
  PlaybackIntent.Context.init(origin:seed:baseListSettings:)();
  static Set<>.default.getter();
  v37 = v47;
  PlaybackIntent.init(id:context:initialItem:options:)();
  v60 = v6;
  sub_1002A91E8(&qword_10057AC48, v38, type metadata accessor for EpisodeController);
  EpisodeControllerProtocol.performIntent(_:withTimestamp:sender:)();
  return (*(v48 + 8))(v37, v50);
}

uint64_t sub_100299BEC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = v4;
  v38 = a2;
  v39 = a4;
  v37 = a3;
  v7 = *v4;
  v8 = sub_100168088(&unk_100573A80);
  __chkstk_darwin(v8 - 8);
  v10 = &v29 - v9;
  v11 = type metadata accessor for MediaIdentifier();
  v32 = *(v11 - 8);
  v33 = v11;
  __chkstk_darwin(v11);
  v34 = (&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = type metadata accessor for PlaybackIntent();
  v13 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100168088(&qword_10057BC50);
  __chkstk_darwin(v15 - 8);
  v17 = &v29 - v16;
  v18 = type metadata accessor for PendingPlaybackMetadata();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  PendingPlaybackMetadata.init(adamId:uuid:)();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_100009104(v17, &qword_10057BC50);
  }

  else
  {
    (*(v19 + 32))(v21, v17, v18);
    v30 = v13;
    v31 = v7;
    sub_1000044A0(v5 + 10, v5[13]);
    v13 = v30;
    dispatch thunk of PendingPlaybackControllerProtocol.preflight(_:)();
    (*(v19 + 8))(v21, v18);
  }

  sub_100168088(&unk_10057A0B0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100400790;
  *(v22 + 32) = a1;
  v23 = v33;
  v24 = v34;
  *v34 = v22;
  (*(v32 + 104))(v24, enum case for MediaIdentifier.episodes(_:), v23);
  v25 = type metadata accessor for EpisodeListSettings();
  (*(*(v25 - 8) + 56))(v10, 1, 1, v25);
  static Set<>.default.getter();
  v26 = v35;
  PlaybackIntent.init(id:baseListSettings:options:)();
  v40 = v5;
  sub_1002A91E8(&qword_10057AC48, v27, type metadata accessor for EpisodeController);
  EpisodeControllerProtocol.performIntent(_:withTimestamp:sender:)();
  return (*(v13 + 8))(v26, v36);
}

uint64_t sub_10029A058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a1;
  v26 = a3;
  v27 = *v5;
  v28 = a5;
  v8 = sub_100168088(&unk_100573A80);
  __chkstk_darwin(v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for MediaIdentifier();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for PlaybackIntent();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v26;
  *v14 = v25;
  v14[1] = a2;
  v14[2] = v20;
  v14[3] = a4;
  (*(v12 + 104))(v14, enum case for MediaIdentifier.station(_:), v11, v17);
  v21 = type metadata accessor for EpisodeListSettings();
  (*(*(v21 - 8) + 56))(v10, 1, 1, v21);

  static Set<>.default.getter();
  PlaybackIntent.init(id:baseListSettings:options:)();
  v29 = v5;
  sub_1002A91E8(&qword_10057AC48, v22, type metadata accessor for EpisodeController);
  EpisodeControllerProtocol.performIntent(_:sender:)();
  return (*(v16 + 8))(v19, v15);
}

void sub_10029A308(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_100168088(&unk_1005738E0);
  BaseObjectGraph.inject<A>(_:)();
  v6 = [v11[0] mainQueueContext];
  swift_unknownObjectRelease();
  sub_100010430(a2, v12, &unk_1005783D0);
  v7 = swift_allocObject();
  v8 = v12[1];
  *(v7 + 40) = v12[0];
  *(v7 + 16) = v6;
  *(v7 + 24) = a1;
  *(v7 + 32) = v3;
  *(v7 + 56) = v8;
  v11[4] = sub_1002A9230;
  v11[5] = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10000F038;
  v11[3] = &unk_1004E96B0;
  v9 = _Block_copy(v11);
  v10 = v6;

  [v10 performBlock:v9];
  _Block_release(v9);
}

uint64_t sub_10029A478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[0] = a4;
  v5 = sub_100168088(&unk_100573A80);
  __chkstk_darwin(v5 - 8);
  v7 = v19 - v6;
  v8 = type metadata accessor for MediaIdentifier();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for PlaybackIntent();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v11 = NSManagedObjectContext.unsafeFromYourShowsEpisodeIdentifiers(forCategoryAdamID:)();
  (*(v9 + 104))(v11, enum case for MediaIdentifier.localEpisodes(_:), v8);
  v16 = type metadata accessor for EpisodeListSettings();
  (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
  static Set<>.default.getter();
  PlaybackIntent.init(id:baseListSettings:options:)();
  v19[1] = a3;
  type metadata accessor for EpisodeController();
  sub_1002A91E8(&qword_10057AC48, v17, type metadata accessor for EpisodeController);
  EpisodeControllerProtocol.performIntent(_:sender:)();
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_10029A700(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v76 = a4;
  v77 = a2;
  v5 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v5 - 8);
  v64 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for OSLogger();
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v65 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v8 - 8);
  v73 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for FlowDestinationPageHeader();
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v72 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for FlowPresentationContext();
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v75 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v63 = &v62 - v13;
  v14 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v14 - 8);
  v74 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v62 = &v62 - v17;
  v18 = type metadata accessor for PreviewingPresentationHint();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100168088(&unk_10057BB60);
  __chkstk_darwin(v22 - 8);
  v24 = &v62 - v23;
  v25 = type metadata accessor for ActionMetricsBehavior();
  v26 = __chkstk_darwin(v25);
  v80 = v28;
  v29 = *(v28 + 104);
  v79 = &v62 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = v30;
  v29(v26);
  type metadata accessor for ActionRunnerOptions();

  BaseObjectGraph.__allocating_init(_:)();
  v31 = type metadata accessor for InteractionContext();
  (*(*(v31 - 8) + 56))(v24, 1, 1, v31);
  v82 = 0u;
  v83 = 0u;
  v32 = [a3 view];
  v78 = ActionRunnerOptions.withActionOrigin(context:sender:view:)();

  sub_100009104(&v82, &unk_1005783D0);
  sub_100009104(v24, &unk_10057BB60);
  (*(v19 + 16))(v21, v76, v18);
  if ((*(v19 + 88))(v21, v18) == enum case for PreviewingPresentationHint.inferTab(_:))
  {
    if (swift_unknownObjectWeakLoadStrong() && (swift_getObjectType(), v33 = dispatch thunk of ActionRunnerProvider.actionRunner.getter(), swift_unknownObjectRelease(), v33))
    {
      sub_100168088(&unk_1005747F0);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_100400790;
      static FlowDestination.page(_:)();
      (*(v68 + 104))(v63, enum case for FlowPresentationContext.pushDetail(_:), v69);
      sub_100168088(&qword_1005742B0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1004007C0;
      v36 = static Link.Presentation.textFollowsTintColor.getter();
      *(inited + 32) = v36;
      v37 = static Link.Presentation.hasDisclosureIndicatorCompactOnly.getter();
      *(inited + 33) = v37;
      Link.Presentation.init(rawValue:)();
      Link.Presentation.init(rawValue:)();
      if (Link.Presentation.init(rawValue:)() != v36)
      {
        Link.Presentation.init(rawValue:)();
      }

      Link.Presentation.init(rawValue:)();
      if (Link.Presentation.init(rawValue:)() != v37)
      {
        Link.Presentation.init(rawValue:)();
      }

      (*(v70 + 104))(v72, enum case for FlowDestinationPageHeader.standard(_:), v71);
      static ActionMetrics.notInstrumented.getter();
      v38 = type metadata accessor for FlowAction();
      swift_allocObject();
      v39 = FlowAction.init(_:id:title:presentationContext:animationBehavior:presentationStyle:destinationPageHeader:actionMetrics:)();
      *(v34 + 56) = v38;
      *(v34 + 64) = sub_1002A91E8(&unk_10057A0D0, 255, &type metadata accessor for FlowAction);
      *(v34 + 32) = v39;
      Link.Presentation.init(rawValue:)();
      static ActionMetrics.notInstrumented.getter();
      v40 = type metadata accessor for TabChangeAction();
      swift_allocObject();
      v41 = TabChangeAction.init(title:navigationTab:actions:popToRoot:userInitiated:suppressMetrics:presentationStyle:actionMetrics:)();
      swift_getObjectType();
      *(&v83 + 1) = v40;
      v84 = sub_1002A91E8(&qword_10057ADD0, 255, &type metadata accessor for TabChangeAction);
      *&v82 = v41;

      v42 = v79;
      ActionRunner.perform(_:withMetrics:asPartOf:)();

      swift_unknownObjectRelease();

      (*(v80 + 8))(v42, v81);
      return sub_100004590(&v82);
    }

    else
    {
      v50 = v65;
      static OSLogger.actions.getter();
      sub_100168088(&unk_10057E660);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_100400790;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v51._countAndFlagsBits = 0xD00000000000001FLL;
      v51._object = 0x800000010046CF20;
      LogMessage.StringInterpolation.appendLiteral(_:)(v51);
      v52 = type metadata accessor for URL();
      *(&v83 + 1) = v52;
      v53 = sub_10000E680(&v82);
      (*(*(v52 - 8) + 16))(v53, v77, v52);
      LogMessage.StringInterpolation.appendInterpolation(sensitive:)();
      sub_100009104(&v82, &unk_1005783D0);
      v54._object = 0x800000010046CEC0;
      v54._countAndFlagsBits = 0xD00000000000001ALL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v54);
      LogMessage.init(stringInterpolation:)();
      v55 = v67;
      Logger.error(_:)();

      (*(v66 + 8))(v50, v55);
      return (*(v80 + 8))(v79, v81);
    }
  }

  else
  {
    if (UIResponder.nearestActionRunner.getter())
    {
      static FlowDestination.page(_:)();
      (*(v68 + 104))(v75, enum case for FlowPresentationContext.infer(_:), v69);
      sub_100168088(&qword_1005742B0);
      v44 = swift_initStackObject();
      *(v44 + 16) = xmmword_1004007C0;
      v45 = static Link.Presentation.textFollowsTintColor.getter();
      *(v44 + 32) = v45;
      v46 = static Link.Presentation.hasDisclosureIndicatorCompactOnly.getter();
      *(v44 + 33) = v46;
      Link.Presentation.init(rawValue:)();
      Link.Presentation.init(rawValue:)();
      if (Link.Presentation.init(rawValue:)() != v45)
      {
        Link.Presentation.init(rawValue:)();
      }

      Link.Presentation.init(rawValue:)();
      if (Link.Presentation.init(rawValue:)() != v46)
      {
        Link.Presentation.init(rawValue:)();
      }

      (*(v70 + 104))(v72, enum case for FlowDestinationPageHeader.standard(_:), v71);
      static ActionMetrics.notInstrumented.getter();
      v47 = type metadata accessor for FlowAction();
      swift_allocObject();
      v48 = FlowAction.init(_:id:title:presentationContext:animationBehavior:presentationStyle:destinationPageHeader:actionMetrics:)();
      swift_getObjectType();
      *(&v83 + 1) = v47;
      v84 = sub_1002A91E8(&unk_10057A0D0, 255, &type metadata accessor for FlowAction);
      *&v82 = v48;

      v49 = v79;
      ActionRunner.perform(_:withMetrics:asPartOf:)();

      swift_unknownObjectRelease();

      (*(v80 + 8))(v49, v81);
      sub_100004590(&v82);
    }

    else
    {
      v56 = v65;
      static OSLogger.actions.getter();
      sub_100168088(&unk_10057E660);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_100400790;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v57._countAndFlagsBits = 0xD00000000000001FLL;
      v57._object = 0x800000010046CF20;
      LogMessage.StringInterpolation.appendLiteral(_:)(v57);
      v58 = type metadata accessor for URL();
      *(&v83 + 1) = v58;
      v59 = sub_10000E680(&v82);
      (*(*(v58 - 8) + 16))(v59, v77, v58);
      LogMessage.StringInterpolation.appendInterpolation(sensitive:)();
      sub_100009104(&v82, &unk_1005783D0);
      v60._object = 0x800000010046CEC0;
      v60._countAndFlagsBits = 0xD00000000000001ALL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v60);
      LogMessage.init(stringInterpolation:)();
      v61 = v67;
      Logger.error(_:)();

      (*(v66 + 8))(v56, v61);
      (*(v80 + 8))(v79, v81);
    }

    return (*(v19 + 8))(v21, v18);
  }
}

uint64_t sub_10029B63C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5)
{
  v23 = a1;
  v8 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v22 - v12;
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100294534();
  if (!v18)
  {
    (*(v15 + 56))(v13, 1, 1, v14);
    return sub_100009104(v13, &qword_100574040);
  }

  v22[1] = a5;
  v19 = v18;
  v20 = [v18 episodeShareUrl];

  if (v20)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v15 + 56))(v10, 0, 1, v14);
  }

  else
  {
    (*(v15 + 56))(v10, 1, 1, v14);
  }

  sub_100010498(v10, v13, &qword_100574040);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return sub_100009104(v13, &qword_100574040);
  }

  (*(v15 + 32))(v17, v13, v14);
  sub_10029A700(v23, v17, a3, a4);
  return (*(v15 + 8))(v17, v14);
}

uint64_t sub_10029B8D8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v80 = a5;
  *(&v81 + 1) = a3;
  *&v81 = a2;
  v6 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v6 - 8);
  v67 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for OSLogger();
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v68 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v9 - 8);
  v79 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for FlowDestinationPageHeader();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v78 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for FlowPresentationContext();
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v66 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v65 = &v63 - v14;
  v73 = type metadata accessor for FlowDestination();
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v64 = (&v63 - v18);
  v19 = type metadata accessor for PreviewingPresentationHint();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100168088(&unk_10057BB60);
  __chkstk_darwin(v23 - 8);
  v25 = &v63 - v24;
  v26 = type metadata accessor for ActionMetricsBehavior();
  v27 = __chkstk_darwin(v26);
  v84 = v29;
  v30 = *(v29 + 104);
  v83 = &v63 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = v31;
  v30(v27);
  type metadata accessor for ActionRunnerOptions();

  BaseObjectGraph.__allocating_init(_:)();
  v32 = type metadata accessor for InteractionContext();
  (*(*(v32 - 8) + 56))(v25, 1, 1, v32);
  v86 = 0u;
  v87 = 0u;
  v33 = [a4 view];
  v82 = ActionRunnerOptions.withActionOrigin(context:sender:view:)();

  sub_100009104(&v86, &unk_1005783D0);
  sub_100009104(v25, &unk_10057BB60);
  (*(v20 + 16))(v22, v80, v19);
  v34 = *(v20 + 88);
  v71 = v22;
  v80 = v19;
  if (v34(v22, v19) == enum case for PreviewingPresentationHint.inferTab(_:))
  {
    if (swift_unknownObjectWeakLoadStrong() && (swift_getObjectType(), v35 = dispatch thunk of ActionRunnerProvider.actionRunner.getter(), swift_unknownObjectRelease(), v35))
    {
      sub_100168088(&unk_1005747F0);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_100400790;
      v90 = 1;
      v89 = 1;
      v37 = v64;
      v38 = *(&v81 + 1);
      *v64 = v81;
      v37[1] = v38;
      v37[3] = 0;
      v37[4] = 0;
      v37[2] = 0;
      *(v37 + 40) = 1;
      v37[6] = 0;
      *(v37 + 56) = 1;
      (*(v72 + 104))(v37, enum case for FlowDestination.episodeDetails(_:), v73);
      (*(v74 + 104))(v65, enum case for FlowPresentationContext.pushDetail(_:), v75);
      sub_100168088(&qword_1005742B0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1004007C0;

      v40 = static Link.Presentation.textFollowsTintColor.getter();
      *(inited + 32) = v40;
      v41 = static Link.Presentation.hasDisclosureIndicatorCompactOnly.getter();
      *(inited + 33) = v41;
      Link.Presentation.init(rawValue:)();
      Link.Presentation.init(rawValue:)();
      if (Link.Presentation.init(rawValue:)() != v40)
      {
        Link.Presentation.init(rawValue:)();
      }

      Link.Presentation.init(rawValue:)();
      if (Link.Presentation.init(rawValue:)() != v41)
      {
        Link.Presentation.init(rawValue:)();
      }

      (*(v76 + 104))(v78, enum case for FlowDestinationPageHeader.standard(_:), v77);
      static ActionMetrics.notInstrumented.getter();
      v42 = type metadata accessor for FlowAction();
      swift_allocObject();
      v43 = FlowAction.init(_:id:title:presentationContext:animationBehavior:presentationStyle:destinationPageHeader:actionMetrics:)();
      *(v36 + 56) = v42;
      *(v36 + 64) = sub_1002A91E8(&unk_10057A0D0, 255, &type metadata accessor for FlowAction);
      *(v36 + 32) = v43;
      Link.Presentation.init(rawValue:)();
      static ActionMetrics.notInstrumented.getter();
      v44 = type metadata accessor for TabChangeAction();
      swift_allocObject();
      v45 = TabChangeAction.init(title:navigationTab:actions:popToRoot:userInitiated:suppressMetrics:presentationStyle:actionMetrics:)();
      swift_getObjectType();
      *(&v87 + 1) = v44;
      v88 = sub_1002A91E8(&qword_10057ADD0, 255, &type metadata accessor for TabChangeAction);
      *&v86 = v45;

      v46 = v83;
      ActionRunner.perform(_:withMetrics:asPartOf:)();

      swift_unknownObjectRelease();

      (*(v84 + 8))(v46, v85);
      return sub_100004590(&v86);
    }

    else
    {
      v55 = v68;
      static OSLogger.actions.getter();
      sub_100168088(&unk_10057E660);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_100400790;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v56._countAndFlagsBits = 0xD00000000000002DLL;
      v56._object = 0x800000010046CF70;
      LogMessage.StringInterpolation.appendLiteral(_:)(v56);
      *(&v87 + 1) = &type metadata for String;
      v86 = v81;

      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_100009104(&v86, &unk_1005783D0);
      v57._object = 0x800000010046CEC0;
      v57._countAndFlagsBits = 0xD00000000000001ALL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v57);
      LogMessage.init(stringInterpolation:)();
      v58 = v70;
      Logger.error(_:)();

      (*(v69 + 8))(v55, v58);
      return (*(v84 + 8))(v83, v85);
    }
  }

  else
  {
    if (UIResponder.nearestActionRunner.getter())
    {
      v90 = 1;
      v89 = 1;
      v48 = *(&v81 + 1);
      *v16 = v81;
      *(v16 + 1) = v48;
      *(v16 + 3) = 0;
      *(v16 + 4) = 0;
      *(v16 + 2) = 0;
      v16[40] = 1;
      *(v16 + 6) = 0;
      v16[56] = 1;
      (*(v72 + 104))(v16, enum case for FlowDestination.episodeDetails(_:), v73);
      (*(v74 + 104))(v66, enum case for FlowPresentationContext.infer(_:), v75);
      sub_100168088(&qword_1005742B0);
      v49 = swift_initStackObject();
      *(v49 + 16) = xmmword_1004007C0;

      v50 = static Link.Presentation.textFollowsTintColor.getter();
      *(v49 + 32) = v50;
      v51 = static Link.Presentation.hasDisclosureIndicatorCompactOnly.getter();
      *(v49 + 33) = v51;
      Link.Presentation.init(rawValue:)();
      Link.Presentation.init(rawValue:)();
      if (Link.Presentation.init(rawValue:)() != v50)
      {
        Link.Presentation.init(rawValue:)();
      }

      Link.Presentation.init(rawValue:)();
      if (Link.Presentation.init(rawValue:)() != v51)
      {
        Link.Presentation.init(rawValue:)();
      }

      (*(v76 + 104))(v78, enum case for FlowDestinationPageHeader.standard(_:), v77);
      static ActionMetrics.notInstrumented.getter();
      v52 = type metadata accessor for FlowAction();
      swift_allocObject();
      v53 = FlowAction.init(_:id:title:presentationContext:animationBehavior:presentationStyle:destinationPageHeader:actionMetrics:)();
      swift_getObjectType();
      *(&v87 + 1) = v52;
      v88 = sub_1002A91E8(&unk_10057A0D0, 255, &type metadata accessor for FlowAction);
      *&v86 = v53;

      v54 = v83;
      ActionRunner.perform(_:withMetrics:asPartOf:)();

      swift_unknownObjectRelease();

      (*(v84 + 8))(v54, v85);
      sub_100004590(&v86);
    }

    else
    {
      v59 = v68;
      static OSLogger.actions.getter();
      sub_100168088(&unk_10057E660);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_100400790;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v60._countAndFlagsBits = 0xD00000000000002DLL;
      v60._object = 0x800000010046CF70;
      LogMessage.StringInterpolation.appendLiteral(_:)(v60);
      *(&v87 + 1) = &type metadata for String;
      v86 = v81;

      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_100009104(&v86, &unk_1005783D0);
      v61._object = 0x800000010046CEC0;
      v61._countAndFlagsBits = 0xD00000000000001ALL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v61);
      LogMessage.init(stringInterpolation:)();
      v62 = v70;
      Logger.error(_:)();

      (*(v69 + 8))(v59, v62);
      (*(v84 + 8))(v83, v85);
    }

    return (*(v20 + 8))(v71, v80);
  }
}

uint64_t sub_10029C8EC(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, int a6)
{
  v36 = a6;
  v35 = a5;
  v37 = a3;
  v38 = a4;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v39 = *(v11 - 8);
  v40 = v11;
  __chkstk_darwin(v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PreviewingPresentationHint();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a1)
    {
      v31 = v13;
      v18 = result;
      sub_100009F1C(0, &qword_1005729D0);
      v34 = v8;
      v19 = a1;
      v33 = static OS_dispatch_queue.main.getter();
      (*(v15 + 16))(&v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v35, v14);
      v20 = (*(v15 + 80) + 48) & ~*(v15 + 80);
      v21 = swift_allocObject();
      v32 = v10;
      v22 = v37;
      *(v21 + 2) = v18;
      *(v21 + 3) = v22;
      v35 = v7;
      v23 = v38;
      *(v21 + 4) = v19;
      *(v21 + 5) = v23;
      (*(v15 + 32))(&v21[v20], &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
      v21[v20 + v16] = v36 & 1;
      aBlock[4] = sub_1002A9160;
      aBlock[5] = v21;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10000F038;
      aBlock[3] = &unk_1004E9638;
      v24 = _Block_copy(aBlock);
      v25 = v19;

      v26 = v23;

      v27 = v31;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_1002A91E8(&qword_10057D380, 255, &type metadata accessor for DispatchWorkItemFlags);
      sub_100168088(&unk_100575CD0);
      sub_100009FAC(&qword_10057D390, &unk_100575CD0);
      v28 = v32;
      v29 = v35;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v30 = v33;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v24);

      (*(v34 + 8))(v28, v29);
      return (*(v39 + 8))(v27, v40);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_10029CD4C(uint64_t a1, void *a2, void *a3, uint64_t a4, int a5)
{
  LODWORD(v93) = a5;
  v95 = a4;
  v96 = a3;
  v97 = a2;
  v94 = a1;
  v5 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v5 - 8);
  v83[1] = v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v86 = v83 - v8;
  v9 = type metadata accessor for OSLogger();
  v91 = *(v9 - 8);
  v92 = v9;
  __chkstk_darwin(v9);
  v84 = v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v85 = v83 - v12;
  v13 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v13 - 8);
  v90 = v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FlowPresentationContext();
  v87 = *(v15 - 8);
  v88 = v15;
  __chkstk_darwin(v15);
  v89 = v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for PreviewingPresentationHint();
  v98 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100168088(&unk_10057BB60);
  __chkstk_darwin(v20 - 8);
  v22 = v83 - v21;
  v23 = type metadata accessor for ActionMetricsBehavior();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DispatchPredicate();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = (v83 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100009F1C(0, &qword_1005729D0);
  *v30 = static OS_dispatch_queue.main.getter();
  (*(v28 + 104))(v30, enum case for DispatchPredicate.onQueue(_:), v27);
  v31 = _dispatchPreconditionTest(_:)();
  result = (*(v28 + 8))(v30, v27);
  if ((v31 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v33 = v24;
  v34 = *(v24 + 104);
  v35 = &enum case for ActionMetricsBehavior.notProcessed(_:);
  if ((v93 & 1) == 0)
  {
    v35 = &enum case for ActionMetricsBehavior.fromAction(_:);
  }

  v36 = *v35;
  v93 = v26;
  v34(v26, v36, v23);
  type metadata accessor for ActionRunnerOptions();

  BaseObjectGraph.__allocating_init(_:)();
  v37 = type metadata accessor for InteractionContext();
  (*(*(v37 - 8) + 56))(v22, 1, 1, v37);
  v99 = 0u;
  v100 = 0u;
  v38 = [v96 view];
  v94 = ActionRunnerOptions.withActionOrigin(context:sender:view:)();

  sub_100009104(&v99, &unk_1005783D0);
  sub_100009104(v22, &unk_10057BB60);
  v39 = v98;
  (*(v98 + 16))(v19, v95, v17);
  v40 = v23;
  if ((*(v39 + 88))(v19, v17) != enum case for PreviewingPresentationHint.inferTab(_:))
  {
    v86 = v19;
    v95 = v17;
    v58 = UIResponder.nearestActionRunner.getter();
    v59 = v97;
    v60 = v84;
    if (v58)
    {
      v61 = v33;
      v62 = type metadata accessor for FlowAction();
      v63 = v89;
      (*(v87 + 104))(v89, enum case for FlowPresentationContext.infer(_:), v88);
      v64 = v59;
      v65 = v90;
      static ActionMetrics.notInstrumented.getter();
      v66 = FlowAction.init(podcast:presentationContext:actionMetrics:)(v64, v63, v65);
      if (v66)
      {
        v67 = v66;
        swift_getObjectType();
        *(&v100 + 1) = v62;
        v101 = sub_1002A91E8(&unk_10057A0D0, 255, &type metadata accessor for FlowAction);
        *&v99 = v67;

        v68 = v93;
        ActionRunner.perform(_:withMetrics:asPartOf:)();

        swift_unknownObjectRelease();

        (*(v61 + 8))(v68, v40);
        sub_100004590(&v99);
        return (*(v98 + 8))(v86, v95);
      }

      swift_unknownObjectRelease();
      v33 = v61;
    }

    static OSLogger.actions.getter();
    sub_100168088(&unk_10057E660);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_100400790;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v69._countAndFlagsBits = 0xD00000000000002DLL;
    v69._object = 0x800000010046CF40;
    LogMessage.StringInterpolation.appendLiteral(_:)(v69);
    v70 = MTPodcast.adamId.getter();
    if (v71)
    {
      v70 = 0;
      v72 = 0;
      *(&v99 + 1) = 0;
      *&v100 = 0;
    }

    else
    {
      v72 = &type metadata for AdamID;
    }

    v73 = v93;
    *&v99 = v70;
    *(&v100 + 1) = v72;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_100009104(&v99, &unk_1005783D0);
    v74._object = 0x800000010046CEC0;
    v74._countAndFlagsBits = 0xD00000000000001ALL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v74);
    LogMessage.init(stringInterpolation:)();
    v75 = v92;
    Logger.error(_:)();

    (*(v91 + 8))(v60, v75);
    (*(v33 + 8))(v73, v40);
    return (*(v98 + 8))(v86, v95);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v42 = v97;
  v43 = v85;
  if (Strong)
  {
    swift_getObjectType();
    v44 = dispatch thunk of ActionRunnerProvider.actionRunner.getter();
    v46 = v45;
    swift_unknownObjectRelease();
    if (v44)
    {
      v98 = v23;
      v47 = type metadata accessor for FlowAction();
      v48 = v89;
      (*(v87 + 104))(v89, enum case for FlowPresentationContext.pushDetail(_:), v88);
      v49 = v42;
      v50 = v90;
      static ActionMetrics.notInstrumented.getter();
      v51 = FlowAction.init(podcast:presentationContext:actionMetrics:)(v49, v48, v50);
      if (v51)
      {
        v52 = v51;
        sub_100009F1C(0, &qword_10057BC40);
        static UITraitCollection.interfaceMode.getter();
        sub_100168088(&unk_1005747F0);
        v53 = swift_allocObject();
        *(v53 + 16) = xmmword_100400790;
        *(v53 + 56) = v47;
        v97 = v46;
        v54 = v33;
        *(v53 + 64) = sub_1002A91E8(&unk_10057A0D0, 255, &type metadata accessor for FlowAction);
        *(v53 + 32) = v52;

        Link.Presentation.init(rawValue:)();
        static ActionMetrics.notInstrumented.getter();
        v55 = type metadata accessor for TabChangeAction();
        swift_allocObject();
        v56 = TabChangeAction.init(title:navigationTab:actions:popToRoot:userInitiated:suppressMetrics:presentationStyle:actionMetrics:)();
        swift_getObjectType();
        *(&v100 + 1) = v55;
        v101 = sub_1002A91E8(&qword_10057ADD0, 255, &type metadata accessor for TabChangeAction);
        *&v99 = v56;

        v57 = v93;
        ActionRunner.perform(_:withMetrics:asPartOf:)();

        swift_unknownObjectRelease();

        (*(v54 + 8))(v57, v98);
        return sub_100004590(&v99);
      }

      swift_unknownObjectRelease();
      v40 = v98;
    }
  }

  static OSLogger.actions.getter();
  sub_100168088(&unk_10057E660);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_100400790;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v76._countAndFlagsBits = 0xD00000000000002DLL;
  v76._object = 0x800000010046CF40;
  LogMessage.StringInterpolation.appendLiteral(_:)(v76);
  v77 = MTPodcast.adamId.getter();
  if (v78)
  {
    v77 = 0;
    v79 = 0;
    *(&v99 + 1) = 0;
    *&v100 = 0;
  }

  else
  {
    v79 = &type metadata for AdamID;
  }

  v80 = v93;
  *&v99 = v77;
  *(&v100 + 1) = v79;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_100009104(&v99, &unk_1005783D0);
  v81._object = 0x800000010046CEC0;
  v81._countAndFlagsBits = 0xD00000000000001ALL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v81);
  LogMessage.init(stringInterpolation:)();
  v82 = v92;
  Logger.error(_:)();

  (*(v91 + 8))(v43, v82);
  return (*(v33 + 8))(v80, v40);
}

uint64_t sub_10029DA58(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void, void), uint64_t a5)
{
  v259 = a4;
  v260 = a5;
  v261 = a1;
  v7 = sub_100168088(&qword_10057BBA8);
  __chkstk_darwin(v7 - 8);
  v241 = &v239 - v8;
  v242 = type metadata accessor for AnyReferenceLink();
  v240 = *(v242 - 8);
  __chkstk_darwin(v242);
  v239 = (&v239 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_100168088(&qword_100577EA0);
  __chkstk_darwin(v10 - 8);
  v244 = &v239 - v11;
  v12 = type metadata accessor for ShowOffer();
  v247 = *(v12 - 8);
  v248 = v12;
  __chkstk_darwin(v12);
  v245 = &v239 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v246 = type metadata accessor for PodcastContextActionDataType(0);
  __chkstk_darwin(v246);
  v249 = (&v239 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_100168088(&qword_100574E18);
  __chkstk_darwin(v15 - 8);
  v17 = &v239 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v239 - v19;
  v21 = type metadata accessor for EpisodeOffer();
  v272 = *(v21 - 8);
  __chkstk_darwin(v21);
  v276 = &v239 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v251 = &v239 - v24;
  v25 = sub_100168088(&unk_10057BB90);
  __chkstk_darwin(v25 - 8);
  v243 = &v239 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v250 = &v239 - v28;
  __chkstk_darwin(v29);
  v256 = &v239 - v30;
  __chkstk_darwin(v31);
  v263 = &v239 - v32;
  v33 = type metadata accessor for InteractionContext();
  v34 = *(v33 - 8);
  v257 = v33;
  v258 = v34;
  __chkstk_darwin(v33);
  v254 = &v239 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v255 = &v239 - v37;
  __chkstk_darwin(v38);
  v265 = &v239 - v39;
  v40 = type metadata accessor for PresentationSource();
  v41 = *(v40 - 8);
  v269 = v40;
  v270 = v41;
  __chkstk_darwin(v40);
  v264 = &v239 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v262 = type metadata accessor for EpisodeContextActionDataType(0);
  v273 = *(v262 - 8);
  __chkstk_darwin(v262);
  v253 = (&v239 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v44);
  v274 = (&v239 - v45);
  v46 = sub_100168088(&unk_10057BBB0);
  __chkstk_darwin(v46 - 8);
  v48 = &v239 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v275 = &v239 - v50;
  v51 = type metadata accessor for PreviewingPresentationHint();
  v52 = *(v51 - 8);
  __chkstk_darwin(v51);
  v252 = &v239 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __chkstk_darwin(v54);
  v56 = *(v52 + 104);
  v266 = &v239 - v58;
  v267 = v57;
  v56(v55);
  sub_100004428(a2, &v284);
  v59 = sub_100168088(&qword_1005748C0);
  v60 = type metadata accessor for LegacyEpisodeLockup();
  if (swift_dynamicCast())
  {
    v276 = v279;
    v61 = _swiftEmptyArrayStorage;
    v290[0] = _swiftEmptyArrayStorage;
    v62 = *(a3 + 16);
    if (v62)
    {
      v63 = a3 + 32;
      do
      {
        sub_100004428(v63, &v284);
        sub_1000109E4(&v284, &v279);
        if ((swift_dynamicCast() & 1) != 0 && v278[0])
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v290[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v290[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v61 = v290[0];
        }

        v63 += 40;
        --v62;
      }

      while (v62);
    }

    if (v61 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_24:
        v76 = sub_1002A0600(v61);
        if (v76)
        {
          v78 = v76;
          v79 = v77;

          v80 = v275;
          *v275 = v78;
          v80[1] = v79;
          v81 = v80;
        }

        else
        {
          v85 = sub_1002A096C(v61);

          if (!v85)
          {
            v87 = 1;
            v86 = v262;
            v81 = v275;
            goto LABEL_33;
          }

          v81 = v275;
          *v275 = v85;
        }

        v86 = v262;
        swift_storeEnumTagMultiPayload();
        v87 = 0;
LABEL_33:
        v88 = v273;
        (v273[7])(v81, v87, 1, v86);
        sub_100010430(v81, v48, &unk_10057BBB0);
        if (v88[6](v48, 1, v86) == 1)
        {

          sub_100009104(v81, &unk_10057BBB0);
          (*(v52 + 8))(v266, v267);
          sub_100009104(v48, &unk_10057BBB0);
          return 0;
        }

        v90 = v274;
        sub_1002A8FC0(v48, v274, type metadata accessor for EpisodeContextActionDataType);
        v91 = v253;
        sub_1002A8F58(v90, v253, type metadata accessor for EpisodeContextActionDataType);
        v268 = v52;
        v92 = *(v52 + 16);
        v93 = v252;
        v94 = v267;
        v92(v252, v266, v267);
        type metadata accessor for EpisodeContextActionData(0);
        v95 = swift_allocObject();
        v96 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_mangedContextProvider;
        *(v95 + v96) = [objc_opt_self() sharedInstance];
        sub_1002A8F58(v91, v95 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type, type metadata accessor for EpisodeContextActionDataType);
        v92((v95 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_presentationHint), v93, v94);
        *(v95 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_hasHeaderChevron) = 1;
        sub_100399908();
        v97 = *(v268 + 8);
        v268 += 8;
        v273 = v97;
        (v97)(v93, v94);
        v272 = type metadata accessor for EpisodeContextActionDataType;
        sub_1002A9028(v91, type metadata accessor for EpisodeContextActionDataType);
        v98 = *(v270 + 16);
        v99 = v264;
        v98(v264, v259, v269);
        *(&v285 + 1) = v60;
        *&v286 = sub_1002A91E8(&qword_10057BBD8, 255, &type metadata accessor for LegacyEpisodeLockup);
        *&v284 = v276;
        v100 = v257;
        v101 = v258;
        v102 = *(v258 + 16);
        v102(v265, v260, v257);
        type metadata accessor for EpisodeContextActionConfiguration(0);
        v276 = swift_allocObject();
        *&v276[qword_100576670] = v95;
        v103 = v263;
        v104 = v269;
        v98(v263, v99, v269);
        (*(v270 + 56))(v103, 0, 1, v104);
        sub_100010430(&v284, &v279, &qword_100576490);
        v105 = v255;
        v106 = v265;
        v102(v255, v265, v100);
        sub_100010430(v103, v256, &unk_10057BB90);
        sub_100010430(&v279, v290, &qword_100576490);
        v102(v254, v105, v100);

        v89 = ContextActionsConfiguration.init(asPartOf:presentationSource:previewModel:context:)();
        v107 = *(v101 + 8);
        v107(v105, v100);
        sub_100009104(&v279, &qword_100576490);
        sub_100009104(v103, &unk_10057BB90);
        v107(v106, v100);
        (*(v270 + 8))(v264, v269);
        sub_1002A9028(v274, v272);
        sub_100009104(v275, &unk_10057BBB0);
        (v273)(v266, v267);
        v108 = &v284;
LABEL_49:
        sub_100009104(v108, &qword_100576490);
        return v89;
      }
    }

    else if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_24;
    }

    sub_100168088(&unk_100574680);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_1004007B0;
    *(v61 + 32) = v276;

    goto LABEL_24;
  }

  v64 = a3;
  v268 = v52;
  sub_100004428(a2, &v284);
  v65 = swift_dynamicCast();
  v66 = v272;
  v67 = *(v272 + 7);
  v68 = a2;
  if (!v65)
  {
    (v67)(v20, 1, 1, v21);
    sub_100009104(v20, &qword_100574E18);
    sub_100004428(a2, v290);
    v82 = type metadata accessor for LibraryShowLockup();
    if (swift_dynamicCast())
    {
      v83 = v289;

      v84 = dispatch thunk of LegacyLockup.contextAction.getter();

      if (v84)
      {
        type metadata accessor for LibraryPodcastContextAction();
        if (swift_dynamicCastClass())
        {
          LibraryPodcastContextAction.groupedEpisodeListType.getter();

          v286 = v281;
          v287 = v282;
          v288 = v283;
          v284 = v279;
          v285 = v280;
LABEL_48:
          v164 = v269;
          v163 = v270;
          v165 = v263;
          (*(v270 + 16))(v263, v259, v269);
          (*(v163 + 56))(v165, 0, 1, v164);
          v166 = LibraryShowLockup.uuid.getter();
          v167 = v249;
          *v249 = v166;
          *(v167 + 8) = v168;
          type metadata accessor for PodcastContextActionDataType.Kind(0);
          swift_storeEnumTagMultiPayload();
          swift_storeEnumTagMultiPayload();
          type metadata accessor for PodcastContextActionData(0);
          v169 = swift_allocObject();
          v170 = objc_opt_self();
          sub_100010430(&v284, &v279, &qword_100575040);
          *(v169 + 16) = [v170 sharedInstance];
          sub_1002A8F58(v167, v169 + OBJC_IVAR____TtC8Podcasts24PodcastContextActionData_type, type metadata accessor for PodcastContextActionDataType);
          v171 = v169 + OBJC_IVAR____TtC8Podcasts24PodcastContextActionData_groupedEpisodeListType;
          v172 = v287;
          *(v171 + 32) = v286;
          *(v171 + 48) = v172;
          *(v171 + 64) = v288;
          v173 = v285;
          *v171 = v284;
          *(v171 + 16) = v173;
          sub_100010430(&v284, &v279, &qword_100575040);
          sub_100216334();
          sub_100009104(&v284, &qword_100575040);
          sub_1002A9028(v167, type metadata accessor for PodcastContextActionDataType);
          *(&v280 + 1) = v82;
          *&v281 = sub_1002A91E8(&qword_10057BBD0, 255, &type metadata accessor for LibraryShowLockup);
          *&v279 = v83;
          v175 = v257;
          v174 = v258;
          v276 = v83;
          v176 = *(v258 + 16);
          v177 = v265;
          v176(v265, v260, v257);
          type metadata accessor for PodcastContextActionConfiguration(0);
          v275 = swift_allocObject();
          *&v275[qword_100576738] = v169;
          v178 = v165;
          v179 = v256;
          sub_100010430(v178, v256, &unk_10057BB90);
          sub_100010430(&v279, v278, &qword_100576490);
          v180 = v255;
          v176(v255, v177, v175);
          sub_100010430(v179, v250, &unk_10057BB90);
          sub_100010430(v278, &v277, &qword_100576490);
          v176(v254, v180, v175);

          v89 = ContextActionsConfiguration.init(asPartOf:presentationSource:previewModel:context:)();
          sub_100009104(&v284, &qword_100575040);

          v181 = *(v174 + 8);
          v181(v180, v175);
          sub_100009104(v278, &qword_100576490);
          sub_100009104(v179, &unk_10057BB90);
          v181(v265, v175);
          sub_100009104(v263, &unk_10057BB90);
          (*(v268 + 8))(v266, v267);
          v108 = &v279;
          goto LABEL_49;
        }
      }

      v286 = 0u;
      v287 = 0u;
      v284 = 0u;
      v285 = 0u;
      v288 = -1;
      goto LABEL_48;
    }

    v109 = v244;
    sub_1002A016C(v68, v244);
    v111 = v247;
    v110 = v248;
    if ((*(v247 + 48))(v109, 1, v248) == 1)
    {
      sub_100009104(v109, &qword_100577EA0);
      sub_100004428(v68, &v284);
      type metadata accessor for LegacyChannelLockup();
      if (swift_dynamicCast())
      {
        v112 = v279;
        v114 = v269;
        v113 = v270;
        v115 = v263;
        (*(v270 + 16))(v263, v259, v269);
        (*(v113 + 56))(v115, 0, 1, v114);

        v116 = LegacyLockup.adamId.getter();
        v117 = LegacyLockup.title.getter();
        v119 = v118;

        v120 = v265;
        (*(v258 + 16))(v265, v260, v257);
        type metadata accessor for ChannelContextActionConfiguration(0);
        v121 = swift_allocObject();

        v123 = sub_1002A3E24(v122, v115, 0, v116, v117, v119, v112, v120, v121, &type metadata accessor for LegacyChannelLockup, &unk_10057BBE0, &type metadata accessor for LegacyChannelLockup);
LABEL_57:
        v89 = v123;
        goto LABEL_58;
      }

      sub_100004428(v68, &v284);
      type metadata accessor for ChannelPowerSwooshAction();
      if (swift_dynamicCast())
      {
        v158 = v279;
        ChannelPowerSwooshAction.channelAdamId.getter();
        if (!v159)
        {
          (*(v268 + 8))(v266, v267);

          return 0;
        }

        v161 = v269;
        v160 = v270;
        v162 = v243;
        (*(v270 + 16))(v243, v259, v269);
        (*(v160 + 56))(v162, 0, 1, v161);
        v220 = static AdamID.parse(_:)();

        v221 = ChannelPowerSwooshAction.channelName.getter();
        v223 = v222;
        v224 = v265;
        (*(v258 + 16))(v265, v260, v257);
        type metadata accessor for ChannelContextActionConfiguration(0);
        v225 = swift_allocObject();

        v123 = sub_1002A3E24(v226, v162, 0, v220, v221, v223, v158, v224, v225, &type metadata accessor for ChannelPowerSwooshAction, &qword_10057BC08, &type metadata accessor for ChannelPowerSwooshAction);
        goto LABEL_57;
      }

      sub_100004428(v68, &v284);
      if (swift_dynamicCast())
      {
        v182 = v279;
        v183 = v250;
        v185 = v269;
        v184 = v270;
        v186 = v263;
        (*(v270 + 16))(v263, v259, v269);
        (*(v184 + 56))(v186, 0, 1, v185);
        v188 = v257;
        v187 = v258;
        v189 = *(v258 + 16);
        v190 = v265;
        v189(v265, v260, v257);
        *(&v285 + 1) = &type metadata for AdamID;
        *&v286 = sub_1002A8F04();
        *&v284 = v182;
        type metadata accessor for CategoryContextActionConfiguration(0);
        *(swift_allocObject() + qword_100576858) = v182;
        v191 = v256;
        sub_100010430(v186, v256, &unk_10057BB90);
        sub_100004428(&v284, &v279);
        v192 = v255;
        v189(v255, v190, v188);
        sub_100010430(v191, v183, &unk_10057BB90);
        sub_100010430(&v279, v290, &qword_100576490);
        v189(v254, v192, v188);

        v89 = ContextActionsConfiguration.init(asPartOf:presentationSource:previewModel:context:)();
        v193 = *(v187 + 8);
        v193(v192, v188);
        sub_100009104(&v279, &qword_100576490);
        sub_100009104(v191, &unk_10057BB90);
        v193(v265, v188);
        sub_100009104(v263, &unk_10057BB90);
        (*(v268 + 8))(v266, v267);
        sub_100004590(&v284);
        return v89;
      }

      sub_100004428(v68, &v284);
      type metadata accessor for LegacyCategoryLockup();
      if (swift_dynamicCast())
      {
        v194 = type metadata accessor for CategoryContextActionConfiguration(0);
        v196 = v269;
        v195 = v270;
        v197 = v263;
        (*(v270 + 16))(v263, v259, v269);
        (*(v195 + 56))(v197, 0, 1, v196);

        v198 = LegacyLockup.adamId.getter();

        sub_100004428(v68, &v284);
        v199 = v265;
        (*(v258 + 16))(v265, v260, v257);
        v200 = *(&v285 + 1);
        v201 = v286;
        v202 = sub_100010C38(&v284, *(&v285 + 1));
        v203 = __chkstk_darwin(v202);
        v205 = &v239 - ((v204 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v206 + 16))(v205, v203);

        v89 = sub_1001EDD04(v207, v197, v198, 0, v205, v199, v194, v200, v201);

        (*(v268 + 8))(v266, v267);
        sub_100004590(&v284);
        return v89;
      }

      sub_100004428(v68, &v284);
      type metadata accessor for LegacyEditorialItemLockup();
      if (!swift_dynamicCast())
      {
        sub_100004428(v68, &v284);
        v228 = v241;
        v229 = v242;
        v230 = swift_dynamicCast();
        v231 = v240;
        v232 = *(v240 + 56);
        if (v230)
        {
          v232(v228, 0, 1, v229);
          v233 = v239;
          (*(v231 + 32))(v239, v228, v229);
          v89 = sub_1002A6790(v261, v233, v259, v260);
          (*(v231 + 8))(v233, v229);
          goto LABEL_58;
        }

        v232(v228, 1, 1, v229);
        sub_100009104(v228, &qword_10057BBA8);
        v235 = v269;
        v234 = v270;
        v236 = v263;
        (*(v270 + 16))(v263, v259, v269);
        (*(v234 + 56))(v236, 0, 1, v235);
        sub_100004428(v68, &v284);
        v237 = v265;
        (*(v258 + 16))(v265, v260, v257);
        type metadata accessor for OtherContextActionConfiguration(0);
        swift_allocObject();

        v123 = sub_1001EBDC4(v238, v236, &v284, v237);
        goto LABEL_57;
      }

      v209 = v269;
      v208 = v270;
      v210 = v250;
      v211 = v263;
      (*(v270 + 16))(v263, v259, v269);
      (*(v208 + 56))(v211, 0, 1, v209);
      sub_100004428(v68, &v284);
      v213 = v257;
      v212 = v258;
      v214 = *(v258 + 16);
      v215 = v265;
      v214(v265, v260, v257);
      type metadata accessor for EditorialItemContextActionConfiguration(0);
      v276 = swift_allocObject();
      v216 = v211;
      v217 = v256;
      sub_100010430(v216, v256, &unk_10057BB90);
      sub_100004428(&v284, &v279);
      v218 = v255;
      v214(v255, v215, v213);
      sub_100010430(v217, v210, &unk_10057BB90);
      sub_100010430(&v279, v290, &qword_100576490);
      v214(v254, v218, v213);

      v89 = ContextActionsConfiguration.init(asPartOf:presentationSource:previewModel:context:)();
      v219 = *(v212 + 8);
      v219(v218, v213);
      sub_100009104(&v279, &qword_100576490);
      sub_100009104(v217, &unk_10057BB90);
      v219(v265, v213);
      sub_100004590(&v284);
      sub_100009104(v263, &unk_10057BB90);
    }

    else
    {
      v141 = v245;
      (*(v111 + 32))(v245, v109, v110);
      v142 = v110;
      v143 = v270;
      v144 = v263;
      v145 = v111;
      v146 = v269;
      (*(v270 + 16))(v263, v259, v269);
      (*(v143 + 56))(v144, 0, 1, v146);
      v147 = v249;
      (*(v145 + 16))(v249, v141, v142);
      type metadata accessor for PodcastContextActionDataType.Kind(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      type metadata accessor for PodcastContextActionData(0);
      v148 = swift_allocObject();
      *(v148 + 16) = [objc_opt_self() sharedInstance];
      sub_1002A8F58(v147, v148 + OBJC_IVAR____TtC8Podcasts24PodcastContextActionData_type, type metadata accessor for PodcastContextActionDataType);
      v149 = v148 + OBJC_IVAR____TtC8Podcasts24PodcastContextActionData_groupedEpisodeListType;
      *v149 = 0u;
      *(v149 + 16) = 0u;
      *(v149 + 32) = 0u;
      *(v149 + 48) = 0u;
      *(v149 + 64) = -1;
      sub_100216334();
      sub_1002A9028(v147, type metadata accessor for PodcastContextActionDataType);
      sub_100004428(v68, &v284);
      v151 = v257;
      v150 = v258;
      v152 = *(v258 + 16);
      v153 = v265;
      v154 = v250;
      v152(v265, v260, v257);
      type metadata accessor for PodcastContextActionConfiguration(0);
      v276 = swift_allocObject();
      *&v276[qword_100576738] = v148;
      v155 = v256;
      sub_100010430(v263, v256, &unk_10057BB90);
      sub_100010430(&v284, &v279, &qword_100576490);
      v156 = v255;
      v152(v255, v153, v151);
      sub_100010430(v155, v154, &unk_10057BB90);
      sub_100010430(&v279, v290, &qword_100576490);
      v152(v254, v156, v151);

      v89 = ContextActionsConfiguration.init(asPartOf:presentationSource:previewModel:context:)();
      v157 = *(v150 + 8);
      v157(v156, v151);
      sub_100009104(&v279, &qword_100576490);
      sub_100009104(v155, &unk_10057BB90);
      v157(v265, v151);
      sub_100009104(&v284, &qword_100576490);
      sub_100009104(v263, &unk_10057BB90);
      (*(v247 + 8))(v245, v248);
    }

LABEL_58:
    (*(v268 + 8))(v266, v267);
    return v89;
  }

  v250 = a2;
  v274 = v67;
  v275 = v59;
  (v67)(v20, 0, 1, v21);
  v69 = v251;
  v273 = *(v66 + 4);
  (v273)(v251, v20, v21);
  v70 = *(v64 + 16);
  v271 = v21;
  if (v70)
  {
    v71 = v64 + 32;
    v72 = _swiftEmptyArrayStorage;
    do
    {
      sub_100004428(v71, &v284);
      sub_1000109E4(&v284, &v279);
      v73 = swift_dynamicCast();
      (v274)(v17, v73 ^ 1u, 1, v21);
      if ((*(v66 + 6))(v17, 1, v21) == 1)
      {
        sub_100009104(v17, &qword_100574E18);
      }

      else
      {
        (v273)(v276, v17, v21);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v72 = sub_100243D84(0, v72[2] + 1, 1, v72);
        }

        v75 = v72[2];
        v74 = v72[3];
        if (v75 >= v74 >> 1)
        {
          v72 = sub_100243D84(v74 > 1, v75 + 1, 1, v72);
        }

        v72[2] = v75 + 1;
        v21 = v271;
        (v273)(v72 + ((*(v272 + 80) + 32) & ~*(v272 + 80)) + *(v272 + 9) * v75, v276, v271);
      }

      v71 += 40;
      --v70;
    }

    while (v70);
  }

  else
  {
    sub_100168088(&qword_10057BBA0);
    v124 = (*(v66 + 80) + 32) & ~*(v66 + 80);
    v72 = swift_allocObject();
    *(v72 + 1) = xmmword_100400790;
    (*(v66 + 2))(v72 + v124, v69, v21);
  }

  v275 = *(v270 + 16);
  (v275)(v264, v259, v269);
  v125 = v253;
  *v253 = v72;
  swift_storeEnumTagMultiPayload();
  v127 = v267;
  v126 = v268;
  v128 = *(v268 + 16);
  v129 = v252;
  v128(v252, v266, v267);
  type metadata accessor for EpisodeContextActionData(0);
  v130 = swift_allocObject();
  v131 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_mangedContextProvider;
  *(v130 + v131) = [objc_opt_self() sharedInstance];
  sub_1002A8F58(v125, v130 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type, type metadata accessor for EpisodeContextActionDataType);
  v128((v130 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_presentationHint), v129, v127);
  *(v130 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_hasHeaderChevron) = 1;
  sub_100399908();
  v132 = *(v126 + 8);
  v268 = v126 + 8;
  v276 = v132;
  (v132)(v129, v127);
  sub_1002A9028(v125, type metadata accessor for EpisodeContextActionDataType);
  sub_100004428(v250, &v284);
  v133 = v257;
  v134 = v258;
  v135 = *(v258 + 16);
  v136 = v265;
  v135(v265, v260, v257);
  type metadata accessor for EpisodeContextActionConfiguration(0);
  *(swift_allocObject() + qword_100576670) = v130;
  v137 = v263;
  v138 = v269;
  (v275)(v263, v264, v269);
  (*(v270 + 56))(v137, 0, 1, v138);
  sub_100010430(&v284, &v279, &qword_100576490);
  v139 = v255;
  v135(v255, v136, v133);
  sub_100010430(v137, v256, &unk_10057BB90);
  sub_100010430(&v279, v290, &qword_100576490);
  v135(v254, v139, v133);

  v89 = ContextActionsConfiguration.init(asPartOf:presentationSource:previewModel:context:)();
  v140 = *(v134 + 8);
  v140(v139, v133);
  sub_100009104(&v279, &qword_100576490);
  sub_100009104(v137, &unk_10057BB90);
  v140(v265, v133);
  sub_100009104(&v284, &qword_100576490);
  (*(v270 + 8))(v264, v269);
  (*(v272 + 1))(v251, v271);
  (v276)(v266, v267);
  return v89;
}

id sub_1002A0084(uint64_t a1, uint64_t a2, void (*a3)(void, void, void), uint64_t a4)
{
  if (!sub_10029DA58(a1, a2, _swiftEmptyArrayStorage, a3, a4))
  {
    return 0;
  }

  ContextActionsConfiguration.swipeActions(leadingSwipe:)();
  sub_100009F1C(0, &qword_10057BC28);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = [objc_opt_self() configurationWithActions:isa];

  [v5 setPerformsFirstActionWithFullSwipe:1];
  [v5 _setSwipeActionsStyle:1];

  return v5;
}

uint64_t sub_1002A016C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_100168088(&qword_10057BC20);
  __chkstk_darwin(v4 - 8);
  v6 = &v25 - v5;
  v7 = type metadata accessor for ShowHero();
  v28 = *(v7 - 8);
  __chkstk_darwin(v7);
  v27 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100168088(&qword_100577EA0);
  __chkstk_darwin(v9 - 8);
  v11 = &v25 - v10;
  v12 = type metadata accessor for ShowOffer();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004428(a1, v29);
  sub_100168088(&qword_1005748C0);
  v16 = swift_dynamicCast();
  v17 = *(v13 + 56);
  if (v16)
  {
    v18 = *(v13 + 56);
    v17(v11, 0, 1, v12);
    v19 = *(v13 + 32);
    v19(v15, v11, v12);
    v19(a2, v15, v12);
    return v18(a2, 0, 1, v12);
  }

  v26 = *(v13 + 56);
  v17(v11, 1, 1, v12);
  sub_100009104(v11, &qword_100577EA0);
  sub_100004428(a1, v29);
  type metadata accessor for LegacyLockup();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    sub_100004428(a1, v29);
    v21 = swift_dynamicCast();
    v22 = *(v28 + 56);
    if (v21)
    {
      v22(v6, 0, 1, v7);
      v23 = v27;
      sub_1002A8FC0(v6, v27, &type metadata accessor for ShowHero);
      if (ShowHero.contextAction.getter())
      {
        type metadata accessor for PodcastContextAction();
        if (swift_dynamicCastClass())
        {
          PodcastContextAction.podcastOffer.getter();

          sub_1002A9028(v23, &type metadata accessor for ShowHero);
          goto LABEL_14;
        }
      }

      sub_1002A9028(v23, &type metadata accessor for ShowHero);
    }

    else
    {
      v22(v6, 1, 1, v7);
      sub_100009104(v6, &qword_10057BC20);
    }

    v24 = 1;
    return v26(a2, v24, 1, v12);
  }

  if (!dispatch thunk of LegacyLockup.contextAction.getter())
  {
LABEL_9:

    goto LABEL_10;
  }

  type metadata accessor for PodcastContextAction();
  if (!swift_dynamicCastClass())
  {

    goto LABEL_9;
  }

  PodcastContextAction.podcastOffer.getter();

LABEL_14:
  v24 = 0;
  return v26(a2, v24, 1, v12);
}

char *sub_1002A0600(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_38:
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_39:
    v5 = _swiftEmptyArrayStorage;
    if (_swiftEmptyArrayStorage[2])
    {
      return v5;
    }

    goto LABEL_40;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_39;
  }

LABEL_3:
  v4 = 0;
  v5 = _swiftEmptyArrayStorage;
  v6 = _swiftEmptyArrayStorage;
  while (2)
  {
    v33 = v6;
LABEL_5:
    v7 = v4;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v4 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_36;
        }
      }

      else
      {
        if (v7 >= *(v2 + 16))
        {
          goto LABEL_37;
        }

        v4 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }
      }

      v8 = dispatch thunk of LegacyLockup.buttonAction.getter();

      if (!v8)
      {

        return 0;
      }

      type metadata accessor for LibraryStationEpisodeOfferAction();
      if (swift_dynamicCastClass())
      {
        break;
      }

      type metadata accessor for LibraryEpisodeOfferAction();
      if (swift_dynamicCastClass())
      {
        v9 = LibraryEpisodeOfferAction.episodeUuid.getter();
        v28 = v10;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_100243134(0, *(v5 + 2) + 1, 1, v5);
        }

        v12 = *(v5 + 2);
        v11 = *(v5 + 3);
        if (v12 >= v11 >> 1)
        {
          v5 = sub_100243134((v11 > 1), v12 + 1, 1, v5);
        }

        *(v5 + 2) = v12 + 1;
        v13 = &v5[16 * v12];
        *(v13 + 4) = v9;
        *(v13 + 5) = v28;
        if (v4 != v3)
        {
          goto LABEL_5;
        }

        goto LABEL_34;
      }

      ++v7;
      if (v4 == v3)
      {
        goto LABEL_34;
      }
    }

    v14 = LibraryEpisodeOfferAction.episodeUuid.getter();
    v29 = v15;
    v31 = v14;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_100243134(0, *(v5 + 2) + 1, 1, v5);
    }

    v17 = *(v5 + 2);
    v16 = *(v5 + 3);
    v18 = v17 + 1;
    if (v17 >= v16 >> 1)
    {
      v26 = sub_100243134((v16 > 1), v17 + 1, 1, v5);
      v18 = v17 + 1;
      v5 = v26;
    }

    *(v5 + 2) = v18;
    v19 = &v5[16 * v17];
    *(v19 + 4) = v31;
    *(v19 + 5) = v29;
    v20 = LibraryStationEpisodeOfferAction.stationUuid.getter();
    v30 = v21;
    v22 = v33;
    v32 = v20;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_100243134(0, *(v33 + 2) + 1, 1, v33);
    }

    v24 = *(v22 + 2);
    v23 = *(v22 + 3);
    if (v24 >= v23 >> 1)
    {
      v22 = sub_100243134((v23 > 1), v24 + 1, 1, v22);
    }

    *(v22 + 2) = v24 + 1;
    v25 = &v22[16 * v24];
    v6 = v22;
    *(v25 + 4) = v32;
    *(v25 + 5) = v30;
    if (v4 != v3)
    {
      continue;
    }

    break;
  }

LABEL_34:
  if (*(v5 + 2))
  {
    return v5;
  }

LABEL_40:

  return 0;
}