uint64_t sub_100829160()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1001AB600;

  return sub_10082B4FC();
}

uint64_t sub_10082920C()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_10119A808);
  __chkstk_darwin(v2 - 8);
  v4 = &v27[-v3];
  v5 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v27[-v6];
  v8 = type metadata accessor for MusicPropertySource();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v27[-v13];
  result = sub_10081FE6C();
  if (result)
  {
    if (qword_10117FC48 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000060E4(v16, qword_1012193F8);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Applying source override.", v19, 2u);
    }

    v20 = enum case for MusicPropertySource.library(_:);
    (*(v9 + 104))(v14, enum case for MusicPropertySource.library(_:), v8);
    v21 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_source;
    swift_beginAccess();
    (*(v9 + 40))(v1 + v21, v14, v8);
    swift_endAccess();
    *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_autoupdatingResponseSubscription) = 0;

    v22 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
    swift_beginAccess();
    sub_1000089F8(v1 + v22, v7, &unk_1011814D0);
    type metadata accessor for PlaylistSortingController();
    swift_allocObject();
    v23 = PlaylistSortingController.init(_:)(v7);
    sub_10081FD8C(v23);
    *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogEntriesAutoupdatingResponse) = 0;

    *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogEntriesAutoupdatingResponseSubscription) = 0;

    v24 = sub_10010FC20(&qword_10118C2B0);
    (*(*(v24 - 8) + 56))(v4, 1, 1, v24);
    v25 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogEntries;
    swift_beginAccess();
    sub_10006B010(v4, v1 + v25, &qword_10119A808);
    swift_endAccess();
    *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_paginationTask) = 0;

    (*(v9 + 16))(v11, v1 + v21, v8);
    v26 = (*(v9 + 88))(v11, v8);
    if (v26 == enum case for MusicPropertySource.catalog(_:))
    {
      sub_100826538();
      return sub_1008369E8();
    }

    else if (v26 == v20)
    {
      return sub_100827458();
    }

    else
    {
      return (*(v9 + 8))(v11, v8);
    }
  }

  return result;
}

uint64_t sub_100829678()
{
  v1 = v0;
  v2 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v2 - 8);
  v105 = &v100 - v3;
  v4 = sub_10010FC20(&qword_10118C2B0);
  v117 = *(v4 - 8);
  v118 = v4;
  __chkstk_darwin(v4);
  v106 = &v100 - v5;
  v119 = type metadata accessor for IndexPath();
  v116 = *(v119 - 8);
  __chkstk_darwin(v119);
  v113 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v7 - 8);
  v109 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v110 = &v100 - v10;
  v11 = type metadata accessor for Playlist();
  v12 = *(v11 - 8);
  v121 = v11;
  v122 = v12;
  __chkstk_darwin(v11);
  v107 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v115 = &v100 - v15;
  v16 = sub_10010FC20(&qword_10119A808);
  __chkstk_darwin(v16 - 8);
  v108 = &v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v120 = &v100 - v19;
  __chkstk_darwin(v20);
  v112 = &v100 - v21;
  __chkstk_darwin(v22);
  v114 = &v100 - v23;
  v24 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v24 - 8);
  v111 = &v100 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v100 - v27;
  __chkstk_darwin(v29);
  v31 = &v100 - v30;
  __chkstk_darwin(v32);
  v34 = &v100 - v33;
  v35 = type metadata accessor for MusicPropertySource();
  v36 = *(v35 - 8);
  __chkstk_darwin(v35);
  v38 = &v100 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10117FC48 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  sub_1000060E4(v39, qword_1012193F8);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&_mh_execute_header, v40, v41, "Removing source override.", v42, 2u);
  }

  (*(v36 + 104))(v38, enum case for MusicPropertySource.catalog(_:), v35);
  v43 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_source;
  swift_beginAccess();
  (*(v36 + 40))(v1 + v43, v38, v35);
  swift_endAccess();
  *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_autoupdatingResponseSubscription) = 0;

  sub_10081FD8C(0);
  v44 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogPlaylist;
  swift_beginAccess();
  sub_1000089F8(v1 + v44, v34, &unk_1011814D0);
  v45 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  sub_1000089F8(v1 + v45, v31, &unk_1011814D0);
  swift_beginAccess();
  sub_1002190E0(v34, v1 + v45, &unk_1011814D0);
  swift_endAccess();
  sub_10081EE74(v31);
  sub_1000095E8(v31, &unk_1011814D0);
  sub_1000095E8(v34, &unk_1011814D0);
  sub_100826538();
  sub_1000089F8(v1 + v44, v28, &unk_1011814D0);
  v46 = v121;
  v47 = v122;
  v48 = v122[6];
  if (v48(v28, 1, v121))
  {
    v49 = &unk_1011814D0;
    return sub_1000095E8(v28, v49);
  }

  v51 = v115;
  v104 = v47[2];
  v104(v115, v28, v46);
  sub_1000095E8(v28, &unk_1011814D0);
  v52 = v114;
  Playlist.entries.getter();
  v53 = v47[1];
  v122 = v47 + 1;
  v53(v51, v46);
  v55 = v117;
  v54 = v118;
  v56 = v117 + 48;
  v115 = *(v117 + 48);
  if ((v115)(v52, 1, v118) == 1)
  {
    return sub_1000095E8(v52, &qword_10119A808);
  }

  v103 = v56;
  v57 = MusicItemCollection.hasNextBatch.getter();
  v58 = *(v55 + 8);
  v102 = v55 + 8;
  v101 = v58;
  result = (v58)(v52, v54);
  if ((v57 & 1) == 0)
  {
    return result;
  }

  v59 = v111;
  sub_1000089F8(v1 + v44, v111, &unk_1011814D0);
  v60 = v121;
  if (v48(v59, 1, v121))
  {
    sub_1000095E8(v59, &unk_1011814D0);
    v61 = v112;
    (*(v55 + 56))(v112, 1, 1, v54);
  }

  else
  {
    v62 = v59;
    v63 = v107;
    v104(v107, v62, v60);
    sub_1000095E8(v62, &unk_1011814D0);
    v61 = v112;
    Playlist.entries.getter();
    v53(v63, v60);
  }

  v64 = v116;
  v65 = v120;
  v66 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogEntries;
  swift_beginAccess();
  v111 = v66;
  sub_10006B010(v61, v1 + v66, &qword_10119A808);
  swift_endAccess();
  v67 = *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sections);
  v68 = *(v67 + 16);
  v69 = v68 != 0;
  v70 = 0;
  if (v68)
  {
    v71 = v67 + 32;
    while (*(v71 + v70) != 2)
    {
      v69 = v68 != ++v70;
      if (v68 == v70)
      {
        v70 = 0;
        break;
      }
    }
  }

  v72 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v1 + v72, &v123, &unk_1011926C0);
  if (v124)
  {
    sub_1000095E8(&v123, &unk_1011926C0);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(&v123, &unk_1011926C0);
    if (Strong)
    {
      v74 = sub_1006A6078();

      v75 = [v74 indexPathsForVisibleItems];
      v76 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v123 = v76;

      sub_10085CCEC(&v123);

      v122 = v123;
      v77 = v123[2];
      v65 = v120;
      if (v77)
      {
        v114 = v122 + ((*(v64 + 80) + 32) & ~*(v64 + 80));
        v121 = v64 + 16;
        v112 = (v64 + 8);
        while (v77 <= v122[2])
        {
          --v77;
          v78 = &v114[*(v64 + 72) * v77];
          v79 = *(v64 + 16);
          v80 = v113;
          v81 = v119;
          v79(v113, v78, v119);
          v82 = IndexPath.section.getter();
          (*(v64 + 8))(v80, v81);
          if (v69 && v70 == v82)
          {
            v28 = v110;
            v84 = v119;
            v79(v110, v78, v119);

            v83 = 0;
            v55 = v117;
            v54 = v118;
            v64 = v116;
            v65 = v120;
            goto LABEL_30;
          }

          v64 = v116;
          v65 = v120;
          if (!v77)
          {
            goto LABEL_27;
          }
        }

        __break(1u);

        __break(1u);
        return result;
      }

LABEL_27:

      v83 = 1;
      v28 = v110;
      v55 = v117;
      v54 = v118;
      goto LABEL_29;
    }
  }

  v83 = 1;
  v28 = v110;
LABEL_29:
  v84 = v119;
LABEL_30:
  (*(v64 + 56))(v28, v83, 1, v84);
  v85 = swift_allocBox();
  v87 = v86;
  sub_1000089F8(v1 + v111, v65, &qword_10119A808);
  v88 = (v115)(v65, 1, v54);
  v89 = v109;
  if (v88 == 1)
  {
    sub_1000095E8(v65, &qword_10119A808);
    swift_deallocBox();
LABEL_38:
    v98 = v108;
    sub_1000089F8(v1 + v111, v108, &qword_10119A808);
    v99 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_staticEntries;
    swift_beginAccess();
    sub_1002190E0(v98, v1 + v99, &qword_10119A808);
    swift_endAccess();
    sub_1008422A8();
    sub_1000095E8(v98, &qword_10119A808);
    sub_1008369E8();
    v49 = &unk_10118BCE0;
    return sub_1000095E8(v28, v49);
  }

  (*(v55 + 32))(v87, v65, v54);
  sub_1000089F8(v28, v89, &unk_10118BCE0);
  if ((*(v64 + 48))(v89, 1, v84) == 1)
  {
    sub_1000095E8(v89, &unk_10118BCE0);
LABEL_37:

    goto LABEL_38;
  }

  v90 = IndexPath.item.getter();
  (*(v64 + 8))(v89, v84);
  v91 = v106;
  (*(v55 + 16))(v106, v87, v54);
  sub_100020674(&unk_101186ED0, &qword_10118C2B0);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v92 = dispatch thunk of Collection.distance(from:to:)();
  v101(v91, v54);
  if (v92 >= v90)
  {
    goto LABEL_37;
  }

  v93 = type metadata accessor for TaskPriority();
  v94 = v105;
  (*(*(v93 - 8) + 56))(v105, 1, 1, v93);
  v95 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v96 = static MainActor.shared.getter();
  v97 = swift_allocObject();
  v97[2] = v96;
  v97[3] = &protocol witness table for MainActor;
  v97[4] = v95;
  v97[5] = v85;
  v97[6] = v90;

  sub_10086E3AC(0, 0, v94, &unk_100EE4F80, v97);

  sub_1000095E8(v28, &unk_10118BCE0);
}

uint64_t sub_10082A640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[17] = a5;
  v6[18] = a6;
  v6[16] = a4;
  sub_10010FC20(&unk_101181520);
  v6[19] = swift_task_alloc();
  sub_10010FC20(&qword_10119A808);
  v6[20] = swift_task_alloc();
  v7 = sub_10010FC20(&qword_10118C2B0);
  v6[21] = v7;
  v6[22] = *(v7 - 8);
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v6[26] = swift_projectBox();
  v6[27] = type metadata accessor for MainActor();
  v6[28] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[29] = v9;
  v6[30] = v8;

  return _swift_task_switch(sub_10082A7E0, v9, v8);
}

uint64_t sub_10082A7E0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[31] = Strong;
  if (Strong)
  {
    v2 = v0[22];
    swift_beginAccess();
    swift_beginAccess();
    v3 = *(v2 + 16);
    v0[32] = v3;
    v4 = v0[25];
    v5 = v0[21];
    v6 = v0[22];
    v7 = v0[18];
    v3(v4, v0[26], v5);
    sub_100020674(&unk_101186ED0, &qword_10118C2B0);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    v8 = dispatch thunk of Collection.distance(from:to:)();
    v9 = *(v6 + 8);
    v0[33] = v9;
    v0[34] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v4, v5);
    if (v8 < v7)
    {
      (v0[32])(v0[23], v0[26], v0[21]);
      v10 = swift_task_alloc();
      v0[35] = v10;
      v11 = sub_100866F00(&qword_1011A4778, &type metadata accessor for Playlist.Entry);
      *v10 = v0;
      v10[1] = sub_10082AB70;
      v12 = v0[20];
      v13 = v0[21];

      return MusicItemCollection.nextBatch<>(limit:)(v12, 0, 1, v13, v11);
    }

    v14 = v0[31];
    v15 = v0[19];
    v16 = v0[17];

    v17 = type metadata accessor for TaskPriority();
    (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v19 = static MainActor.shared.getter();
    v20 = swift_allocObject();
    v20[2] = v19;
    v20[3] = &protocol witness table for MainActor;
    v20[4] = v18;
    v20[5] = v16;

    sub_1001F4CB8(0, 0, v15, &unk_100EE4F90, v20);
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_10082AB70()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  (*(v2 + 264))(*(v2 + 184), *(v2 + 168));
  v3 = *(v2 + 240);
  v4 = *(v2 + 232);
  if (v0)
  {
    v5 = sub_10082B134;
  }

  else
  {
    v5 = sub_10082AD00;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10082AD00()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  v3 = *(v0 + 160);
  v4 = *(v2 + 48);
  if (v4(v3, 1, v1) == 1)
  {
    type metadata accessor for Playlist.Entry();
    MusicItemCollection.init(arrayLiteral:)();
    if (v4(v3, 1, v1) != 1)
    {
      sub_1000095E8(*(v0 + 160), &qword_10119A808);
    }
  }

  else
  {
    (*(v2 + 32))(*(v0 + 192), v3, v1);
  }

  v5 = *(v0 + 264);
  v6 = *(v0 + 192);
  v7 = *(v0 + 168);
  swift_beginAccess();
  type metadata accessor for Playlist.Entry();
  static MusicItemCollection.+= infix(_:_:)();
  swift_endAccess();
  v5(v6, v7);
  v8 = *(v0 + 200);
  v9 = *(v0 + 168);
  v10 = *(v0 + 176);
  v11 = *(v0 + 144);
  (*(v0 + 256))(v8, *(v0 + 208), v9);
  sub_100020674(&unk_101186ED0, &qword_10118C2B0);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v12 = dispatch thunk of Collection.distance(from:to:)();
  v13 = *(v10 + 8);
  *(v0 + 264) = v13;
  *(v0 + 272) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v8, v9);
  if (v12 >= v11)
  {
    v18 = *(v0 + 248);
    v19 = *(v0 + 152);
    v20 = *(v0 + 136);

    v21 = type metadata accessor for TaskPriority();
    (*(*(v21 - 8) + 56))(v19, 1, 1, v21);
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v23 = static MainActor.shared.getter();
    v24 = swift_allocObject();
    v24[2] = v23;
    v24[3] = &protocol witness table for MainActor;
    v24[4] = v22;
    v24[5] = v20;

    sub_1001F4CB8(0, 0, v19, &unk_100EE4F90, v24);

    v25 = *(v0 + 8);

    return v25();
  }

  else
  {
    (*(v0 + 256))(*(v0 + 184), *(v0 + 208), *(v0 + 168));
    v14 = swift_task_alloc();
    *(v0 + 280) = v14;
    v15 = sub_100866F00(&qword_1011A4778, &type metadata accessor for Playlist.Entry);
    *v14 = v0;
    v14[1] = sub_10082AB70;
    v16 = *(v0 + 160);
    v17 = *(v0 + 168);

    return MusicItemCollection.nextBatch<>(limit:)(v16, 0, 1, v17, v15);
  }
}

uint64_t sub_10082B134()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10082B1E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a4;
  sub_10010FC20(&qword_10119A808);
  v4[18] = swift_task_alloc();
  v4[19] = sub_10010FC20(&qword_10118C2B0);
  v4[20] = swift_projectBox();
  type metadata accessor for MainActor();
  v4[21] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10082B2E0, v6, v5);
}

uint64_t sub_10082B2E0()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = v0[19];
    v4 = v0[20];
    v5 = v0[18];
    swift_beginAccess();
    v6 = *(v3 - 8);
    v7 = *(v6 + 16);
    v7(v5, v4, v3);
    v8 = *(v6 + 56);
    v8(v5, 0, 1, v3);
    v9 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogEntries;
    swift_beginAccess();
    sub_10006B010(v5, v2 + v9, &qword_10119A808);
    swift_endAccess();
    swift_beginAccess();
    v7(v5, v4, v3);
    v8(v5, 0, 1, v3);
    v10 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_staticEntries;
    swift_beginAccess();
    sub_1002190E0(v5, v2 + v10, &qword_10119A808);
    swift_endAccess();
    sub_1008422A8();
    sub_1000095E8(v5, &qword_10119A808);
    sub_1008369E8();
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_10082B4FC()
{
  v1[11] = v0;
  v2 = type metadata accessor for MusicPropertySource();
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();
  sub_10010FC20(&unk_1011814D0);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v3 = type metadata accessor for Playlist();
  v1[18] = v3;
  v1[19] = *(v3 - 8);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[22] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[23] = v5;
  v1[24] = v4;

  return _swift_task_switch(sub_10082B6A8, v5, v4);
}

uint64_t sub_10082B6A8()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  v4 = v0[11];
  v5 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  v0[25] = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  sub_1000089F8(v4 + v5, v3, &unk_1011814D0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v6 = v0[17];

    sub_1000095E8(v6, &unk_1011814D0);

    v7 = v0[1];

    return v7();
  }

  else
  {
    v10 = v0[13];
    v9 = v0[14];
    v12 = v0[11];
    v11 = v0[12];
    (*(v0[19] + 32))(v0[21], v0[17], v0[18]);
    v13 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_source;
    swift_beginAccess();
    (*(v10 + 16))(v9, v12 + v13, v11);
    v14 = swift_task_alloc();
    v0[26] = v14;
    *v14 = v0;
    v14[1] = sub_10082B8AC;
    v15 = v0[20];
    v16 = v0[21];
    v17 = v0[14];

    return sub_10082BBEC(v15, v16, v17);
  }
}

uint64_t sub_10082B8AC()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v4 = *(*v0 + 96);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 192);
  v6 = *(v1 + 184);

  return _swift_task_switch(sub_10082BA30, v6, v5);
}

uint64_t sub_10082BA30()
{
  v1 = v0[25];
  v11 = v0[21];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];
  v6 = v0[15];
  v5 = v0[16];
  v7 = v0[11];

  (*(v3 + 16))(v5, v2, v4);
  (*(v3 + 56))(v5, 0, 1, v4);
  sub_1000089F8(v7 + v1, v6, &unk_1011814D0);
  swift_beginAccess();
  sub_1002190E0(v5, v7 + v1, &unk_1011814D0);
  swift_endAccess();
  sub_10081EE74(v6);
  sub_1000095E8(v6, &unk_1011814D0);
  sub_1000095E8(v5, &unk_1011814D0);
  v8 = *(v3 + 8);
  v8(v2, v4);
  v8(v11, v4);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10082BBEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = type metadata accessor for MusicPropertySource();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[10] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[11] = v6;
  v3[12] = v5;

  return _swift_task_switch(sub_10082BCF0, v6, v5);
}

uint64_t sub_10082BCF0()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  v4 = enum case for MusicPropertySource.library(_:);
  v5 = *(v3 + 104);
  v5(v1, enum case for MusicPropertySource.library(_:), v2);
  v6 = static MusicPropertySource.== infix(_:_:)();
  v7 = *(v3 + 8);
  v0[13] = v7;
  v0[14] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v1, v2);
  if (v6)
  {
    v8 = v0[8];
    v9 = v0[6];
    sub_10010FC20(&qword_101183990);
    v10 = swift_allocObject();
    v0[15] = v10;
    *(v10 + 16) = xmmword_100EBC6D0;
    sub_10010FC20(&unk_10118C1C0);
    *(v10 + 32) = static PartialMusicProperty<A>.entries.getter();
    *(v10 + 40) = static PartialMusicProperty<A>.tracks.getter();
    v5(v8, v4, v9);
    v11 = swift_task_alloc();
    v0[16] = v11;
    v12 = type metadata accessor for Playlist();
    v0[17] = v12;
    v13 = sub_100866F00(&unk_1011A47F0, &type metadata accessor for Playlist);
    *v11 = v0;
    v11[1] = sub_10082BF84;
    v14 = v0[8];
    v15 = v0[3];

    return MusicItem<>.with(_:preferredSource:)(v15, v10, v14, v12, &protocol witness table for Playlist, &protocol witness table for Playlist, v13);
  }

  else
  {
    v16 = v0[3];
    v17 = v0[4];

    v18 = type metadata accessor for Playlist();
    (*(*(v18 - 8) + 16))(v16, v17, v18);

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_10082BF84()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 48);
  *(*v1 + 144) = v0;

  v3(v4, v5);

  v6 = *(v2 + 96);
  v7 = *(v2 + 88);
  if (v0)
  {
    v8 = sub_10082C148;
  }

  else
  {
    v8 = sub_1004C9434;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_10082C148()
{
  v14 = v0;

  if (qword_10117FC48 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_1012193F8);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[18];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    v0[2] = v5;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    v8 = String.init<A>(describing:)();
    v10 = sub_1000105AC(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to retrieve library playlist entries with error=%{public}s", v6, 0xCu);
    sub_10000959C(v7);
  }

  else
  {
  }

  (*(*(v0[17] - 8) + 16))(v0[3], v0[4]);

  v11 = v0[1];

  return v11();
}

void *sub_10082C360()
{
  v1 = sub_10010FC20(&unk_101188920);
  __chkstk_darwin(v1 - 8);
  v38 = v33 - v2;
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v33[2] = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v33[1] = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Playlist.Collaborator();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v40 = v33 - v12;
  v13 = type metadata accessor for PlaylistCurators.Curator(0);
  v37 = *(v13 - 8);
  __chkstk_darwin(v13 - 8);
  v39 = (v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v0 + *(type metadata accessor for PlaylistDetailDataSource.CollaborationDetails(0) + 20));
  v16 = *(v15 + 16);
  if (!v16)
  {
    return 0;
  }

  v41 = _swiftEmptyArrayStorage;
  sub_10066C818(0, v16, 0);
  v17 = v41;
  v19 = *(v8 + 16);
  v18 = v8 + 16;
  v20 = (v15 + ((*(v18 + 64) + 32) & ~*(v18 + 64)));
  v34 = *(v18 + 56);
  v35 = v19;
  v33[0] = "person.2.badge.fill";
  v21 = (v18 - 8);
  v36 = v18;
  do
  {
    v22 = v40;
    v23 = v35;
    v35(v40, v20, v7);
    v23(v11, v22, v7);
    v25 = Playlist.Collaborator.name.getter();
    if (!v24)
    {
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      v25 = String.init(localized:table:bundle:locale:comment:)();
    }

    v26 = v24;
    v27 = v38;
    Playlist.Collaborator.artwork.getter();
    v28 = *v21;
    (*v21)(v11, v7);
    v28(v40, v7);
    v29 = v39;
    PlaylistCurators.Curator.init(name:artwork:)(v25, v26, v27, v39);
    v41 = v17;
    v31 = v17[2];
    v30 = v17[3];
    if (v31 >= v30 >> 1)
    {
      sub_10066C818(v30 > 1, v31 + 1, 1);
      v29 = v39;
      v17 = v41;
    }

    v17[2] = v31 + 1;
    sub_100869470(v29, v17 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v31, type metadata accessor for PlaylistCurators.Curator);
    v20 += v34;
    --v16;
  }

  while (v16);
  return v17;
}

uint64_t sub_10082C784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((static Playlist.Collaboration.== infix(_:_:)() & 1) == 0 || (sub_10047C308(*(a1 + *(a3 + 20)), *(a2 + *(a3 + 20))) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_10047C308(v7, v8);
}

void *sub_10082C800()
{
  v1 = v0;
  v2 = type metadata accessor for Playlist();
  v21 = *(v2 - 8);
  __chkstk_darwin(v2);
  v20 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  v7 = type metadata accessor for PlaylistDetailDataSource.CollaborationDetails(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10010FC20(&qword_1011A4858);
  __chkstk_darwin(v11 - 8);
  v13 = &v20 - v12;
  v14 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_collaborationDetails;
  swift_beginAccess();
  sub_1000089F8(v1 + v14, v13, &qword_1011A4858);
  if ((*(v8 + 48))(v13, 1, v7))
  {
    sub_1000095E8(v13, &qword_1011A4858);
  }

  else
  {
    sub_10086772C(v13, v10, type metadata accessor for PlaylistDetailDataSource.CollaborationDetails);
    sub_1000095E8(v13, &qword_1011A4858);
    v17 = sub_10082C360();
    sub_100867794(v10, type metadata accessor for PlaylistDetailDataSource.CollaborationDetails);
    if (v17)
    {
      return v17;
    }
  }

  v15 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  sub_1000089F8(v1 + v15, v6, &unk_1011814D0);
  v16 = v21;
  if ((*(v21 + 48))(v6, 1, v2))
  {
    sub_1000095E8(v6, &unk_1011814D0);
    v17 = 0;
  }

  else
  {
    v18 = v20;
    (*(v16 + 16))(v20, v6, v2);
    sub_1000095E8(v6, &unk_1011814D0);
    v17 = sub_10082CB90();
    (*(v16 + 8))(v18, v2);
  }

  return v17;
}

void *sub_10082CB90()
{
  v0 = sub_10010FC20(&unk_101188920);
  __chkstk_darwin(v0 - 8);
  v48 = v44 - v1;
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v44[3] = v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  v44[2] = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for Playlist.Collaborator();
  v6 = *(v50 - 8);
  v7 = __chkstk_darwin(v50);
  v9 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v51 = v44 - v10;
  v11 = type metadata accessor for PlaylistCurators.Curator(0);
  v47 = *(v11 - 8);
  __chkstk_darwin(v11 - 8);
  v49 = (v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_10010FC20(&qword_1011A47E0);
  __chkstk_darwin(v13 - 8);
  v15 = v44 - v14;
  v16 = sub_10010FC20(&qword_1011A47E8);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v44 - v18;
  Playlist.collaborators.getter();
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1000095E8(v15, &qword_1011A47E0);
    return 0;
  }

  (*(v17 + 32))(v19, v15, v16);
  v20 = sub_100020674(&unk_1011A4810, &qword_1011A47E8);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v52 == v53)
  {
    (*(v17 + 8))(v19, v16);
    return 0;
  }

  v23 = dispatch thunk of Collection.count.getter();
  if (!v23)
  {
    (*(v17 + 8))(v19, v16);
    return _swiftEmptyArrayStorage;
  }

  v24 = v23;
  v44[0] = v17;
  v53 = _swiftEmptyArrayStorage;
  sub_10066C818(0, v23 & ~(v23 >> 63), 0);
  v21 = v53;
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v24 & 0x8000000000000000) == 0)
  {
    v25 = (v6 + 16);
    v44[1] = "person.2.badge.fill";
    v26 = (v6 + 8);
    v45 = v19;
    v46 = v16;
    v44[4] = v20;
    do
    {
      v27 = dispatch thunk of Collection.subscript.read();
      v28 = *v25;
      v30 = v50;
      v29 = v51;
      (*v25)(v51);
      v27(&v52, 0);
      (v28)(v9, v29, v30);
      v32 = Playlist.Collaborator.name.getter();
      if (!v31)
      {
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        v32 = String.init(localized:table:bundle:locale:comment:)();
      }

      v33 = v31;
      v34 = v48;
      Playlist.Collaborator.artwork.getter();
      v35 = *v26;
      v36 = v9;
      v37 = v9;
      v38 = v50;
      (*v26)(v37, v50);
      v35(v51, v38);
      v39 = v49;
      PlaylistCurators.Curator.init(name:artwork:)(v32, v33, v34, v49);
      v53 = v21;
      v41 = v21[2];
      v40 = v21[3];
      if (v41 >= v40 >> 1)
      {
        sub_10066C818(v40 > 1, v41 + 1, 1);
        v39 = v49;
        v21 = v53;
      }

      v21[2] = v41 + 1;
      sub_100869470(v39, v21 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v41, type metadata accessor for PlaylistCurators.Curator);
      v43 = v45;
      v42 = v46;
      dispatch thunk of Collection.formIndex(after:)();
      --v24;
      v9 = v36;
    }

    while (v24);
    (*(v44[0] + 8))(v43, v42);
    return v21;
  }

  __break(1u);
  return result;
}

uint64_t sub_10082D208(uint64_t a1)
{
  v3 = type metadata accessor for RelatedContentProvider.ShelfType();
  v83 = *(v3 - 8);
  v84 = v3;
  __chkstk_darwin(v3);
  v82 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_10010FC20(&qword_1011906A0);
  __chkstk_darwin(v88);
  v89 = &v76 - v5;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v94 = v6;
  v95 = v7;
  v8 = __chkstk_darwin(v6);
  v81 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v93 = &v76 - v10;
  v11 = type metadata accessor for PlaylistDetailDataSource.CollaborationDetails(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v90 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10010FC20(&qword_1011A4858);
  v15 = __chkstk_darwin(v14 - 8);
  v85 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v76 - v17;
  v19 = sub_10010FC20(&qword_1011A48C0);
  v20 = v19 - 8;
  __chkstk_darwin(v19);
  v22 = &v76 - v21;
  v91 = v1;
  v23 = v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_collaborationDetails;
  swift_beginAccess();
  v24 = *(v20 + 56);
  v86 = a1;
  sub_1000089F8(a1, v22, &qword_1011A4858);
  v92 = v23;
  sub_1000089F8(v23, &v22[v24], &qword_1011A4858);
  v27 = *(v12 + 48);
  v26 = v12 + 48;
  v25 = v27;
  if (v27(v22, 1, v11) == 1)
  {
    if (v25(&v22[v24], 1, v11) == 1)
    {
      v28 = v22;
      return sub_1000095E8(v28, &qword_1011A4858);
    }

    goto LABEL_6;
  }

  sub_1000089F8(v22, v18, &qword_1011A4858);
  if (v25(&v22[v24], 1, v11) == 1)
  {
    sub_100867794(v18, type metadata accessor for PlaylistDetailDataSource.CollaborationDetails);
LABEL_6:
    sub_1000095E8(v22, &qword_1011A48C0);
    v29 = v95;
    goto LABEL_12;
  }

  v30 = &v22[v24];
  v31 = v90;
  sub_100869470(v30, v90, type metadata accessor for PlaylistDetailDataSource.CollaborationDetails);
  v32 = static Playlist.Collaboration.== infix(_:_:)();
  v29 = v95;
  if (v32 & 1) != 0 && (sub_10047C308(*&v18[*(v11 + 20)], *(v31 + *(v11 + 20))))
  {
    v33 = sub_10047C308(*&v18[*(v11 + 24)], *(v31 + *(v11 + 24)));
    sub_100867794(v31, type metadata accessor for PlaylistDetailDataSource.CollaborationDetails);
    v29 = v95;
    sub_100867794(v18, type metadata accessor for PlaylistDetailDataSource.CollaborationDetails);
    result = sub_1000095E8(v22, &qword_1011A4858);
    if (v33)
    {
      return result;
    }
  }

  else
  {
    sub_100867794(v31, type metadata accessor for PlaylistDetailDataSource.CollaborationDetails);
    sub_100867794(v18, type metadata accessor for PlaylistDetailDataSource.CollaborationDetails);
    sub_1000095E8(v22, &qword_1011A4858);
  }

LABEL_12:
  v35 = v92;
  v90 = v26;
  v36 = v25(v92, 1, v11);
  v87 = v11;
  if (v36)
  {
    v37 = 0;
  }

  else
  {
    v37 = *(v35 + *(v11 + 20));
  }

  v38 = v93;
  v39 = v94;
  v40 = Logger.collaboration.unsafeMutableAddressor();
  v41 = *(v29 + 16);
  v79 = v40;
  v80 = v29 + 16;
  v78 = v41;
  (v41)(v38);

  v42 = v91;
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v43, v44))
  {
    v91 = v37;
    v77 = v44;
    v45 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v97 = v76;
    *v45 = 136315650;
    v46 = v35;
    v47 = 1;
    v48 = v87;
    v49 = v25(v46, 1, v87);
    v50 = type metadata accessor for Playlist.Collaboration();
    v51 = *(v50 - 8);
    if (!v49)
    {
      (*(*(v50 - 8) + 16))(v89, v46, v50);
      v47 = 0;
    }

    (*(v51 + 56))(v89, v47, 1, v50);
    v52 = String.init<A>(describing:)();
    v54 = sub_1000105AC(v52, v53, &v97);

    *(v45 + 4) = v54;
    *(v45 + 12) = 2080;
    v96 = v91;

    sub_10010FC20(&qword_1011A48C8);
    v55 = String.init<A>(describing:)();
    v57 = sub_1000105AC(v55, v56, &v97);

    *(v45 + 14) = v57;
    *(v45 + 22) = 2080;
    if (v25(v46, 1, v48))
    {
      v58 = v25;
      v59 = 0;
    }

    else
    {
      v58 = v25;
    }

    v39 = v94;
    v96 = v59;
    v61 = String.init<A>(describing:)();
    v63 = sub_1000105AC(v61, v62, &v97);

    *(v45 + 24) = v63;
    _os_log_impl(&_mh_execute_header, v43, v77, "    [ContainerDetail] details updated with:\n        - collaboration=%s\n        - activeCollaborators=%s\n        - pendingCollaborators=%s", v45, 0x20u);
    swift_arrayDestroy();

    v60 = *(v95 + 8);
    v60(v93, v39);
    v37 = v91;
  }

  else
  {
    v58 = v25;

    v60 = *(v29 + 8);
    v60(v38, v39);
  }

  sub_10082EBAC();
  sub_100840468();
  if (!sub_100818B00())
  {
  }

  if (!v37)
  {
  }

  v64 = v85;
  sub_1000089F8(v86, v85, &qword_1011A4858);
  v65 = v87;
  if (v58(v64, 1, v87) == 1)
  {

    v28 = v64;
    return sub_1000095E8(v28, &qword_1011A4858);
  }

  v66 = *(v64 + *(v65 + 20));

  sub_100867794(v64, type metadata accessor for PlaylistDetailDataSource.CollaborationDetails);
  if (v37[2] == *(v66 + 16))
  {
  }

  else
  {
    v67 = v81;
    v78(v81, v79, v39);

    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 134218240;
      v71 = *(v66 + 16);

      *(v70 + 4) = v71;

      *(v70 + 12) = 2048;
      v72 = v37[2];

      *(v70 + 14) = v72;

      _os_log_impl(&_mh_execute_header, v68, v69, "[ContainerDetail] activeCollaborators changed (%ld -> %ld) - Calling collaborators shelf refresh", v70, 0x16u);
    }

    else
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }

    v60(v67, v94);
    v74 = v82;
    v73 = v83;
    v75 = v84;
    (*(v83 + 104))(v82, enum case for RelatedContentProvider.ShelfType.playlistCollaborators(_:), v84);
    dispatch thunk of RelatedContentProvider.refreshShelf(type:)();

    return (*(v73 + 8))(v74, v75);
  }
}

Class sub_10082DD10(uint64_t a1)
{
  v2 = type metadata accessor for PopoverProvider.PopoverSource();
  v33 = *(v2 - 8);
  v34 = v2;
  __chkstk_darwin(v2);
  v30 = (&v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for PlacementID();
  v31 = *(v4 - 8);
  v32 = v4;
  __chkstk_darwin(v4);
  v29 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v35 = sub_100009F78(0, &qword_101181580);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  v11 = v10;
  v12 = String._bridgeToObjectiveC()();
  v13 = [objc_opt_self() systemImageNamed:v12];

  sub_100009F78(0, &qword_1011839A0);
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = sub_10086A390;
  *(v14 + 24) = v8;

  v15 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  swift_unknownObjectWeakDestroy();
  v16 = AccessibilityIdentifier.playlistDetailCollaborationControl.unsafeMutableAddressor();
  v17 = *v16;
  v18 = v16[1];

  v19 = UIBarButtonItem.init(title:image:style:primaryAction:accessibilityIdentifier:)(v9, v11, v13, 0, v15, 0, v17, v18);
  v20 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(a1 + v20, v36, &unk_1011926C0);
  if ((v36[8] & 1) == 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v36, &unk_1011926C0);
    if (Strong)
    {
      if (sub_1006A4900())
      {
        v22 = v29;
        static PlacementID.BubbleTip.collaborateButton.getter();
        v23 = v30;
        *v30 = v19;
        v25 = v33;
        v24 = v34;
        (*(v33 + 104))(v23, enum case for PopoverProvider.PopoverSource.sourceItem(_:), v34);
        v26 = v19;
        dispatch thunk of PopoverProvider.registerPlacement(for:presentingViewController:popoverSource:)();

        (*(v25 + 8))(v23, v24);
        (*(v31 + 8))(v22, v32);
        return v19;
      }
    }

    return v19;
  }

  sub_1000095E8(v36, &unk_1011926C0);
  return v19;
}

uint64_t sub_10082E20C()
{
  v72 = type metadata accessor for Actions.MetricsReportingContext();
  __chkstk_darwin(v72);
  v1 = (&v62 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0));
  v2 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v2 - 8);
  v78 = &v62 - v3;
  v4 = sub_10010FC20(&unk_1011838F0);
  v5 = __chkstk_darwin(v4 - 8);
  v75 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v71 = &v62 - v8;
  __chkstk_darwin(v7);
  v73 = (&v62 - v9);
  v74 = type metadata accessor for MetricsEvent.Page(0);
  v76 = *(v74 - 8);
  __chkstk_darwin(v74);
  v77 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v15 - 8);
  v17 = &v62 - v16;
  v18 = type metadata accessor for Playlist();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v79 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v22 = result;
  v23 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  sub_1000089F8(v22 + v23, v17, &unk_1011814D0);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {

    return sub_1000095E8(v17, &unk_1011814D0);
  }

  v69 = v19;
  v70 = v18;
  v24 = *(v19 + 32);
  v25 = v79;
  v24(v79, v17, v18);
  v26 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v22 + v26, v80, &unk_1011926C0);
  if (v80[8] == 1)
  {
    result = sub_1000095E8(v80, &unk_1011926C0);
    goto LABEL_19;
  }

  v68 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  result = sub_1000095E8(v80, &unk_1011926C0);
  if (!Strong)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v89 = sub_10082DCF0(result);
  v90 = 0u;
  v91 = 0u;
  v92 = 1;
  PresentationSource.Position.init(source:permittedArrowDirections:)(&v89, 15, v81);
  v85[0] = v81[0];
  v85[1] = v81[1];
  v86 = v82;
  v87 = v83;
  v88 = v84;
  PresentationSource.init(viewController:position:)(Strong, v85, v80);
  v28 = Logger.collaboration.unsafeMutableAddressor();
  (*(v12 + 16))(v14, v28, v11);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "Bar button pressed", v31, 2u);
  }

  (*(v12 + 8))(v14, v11);
  if (qword_10117F610 != -1)
  {
    swift_once();
  }

  sub_100450CD8(v25, v80);
  v32 = v25;
  v33 = Playlist.catalogID.getter();
  v35 = v77;
  v36 = v78;
  v38 = v74;
  v37 = v75;
  if (v34)
  {
    v39 = v34;
    v67 = v33;
    v40 = v73;
    sub_100859CF8(v73);
    v41 = v76;
    if ((*(v76 + 48))(v40, 1, v38) == 1)
    {

      sub_10012BA6C(v80);
      (*(v69 + 8))(v79, v70);
      return sub_1000095E8(v40, &unk_1011838F0);
    }

    else
    {
      sub_100869470(v40, v35, type metadata accessor for MetricsEvent.Page);
      v42 = type metadata accessor for URL();
      (*(*(v42 - 8) + 56))(v36, 1, 1, v42);
      v43 = v71;
      sub_10086772C(v35, v71, type metadata accessor for MetricsEvent.Page);
      v44 = *(v41 + 56);
      v76 = v41 + 56;
      v66 = v44;
      v44(v43, 0, 1, v38);
      sub_10010FC20(&unk_1011927C0);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_100EBC6B0;
      v46 = sub_10085A8A8();
      v73 = v45;
      *(v45 + 32) = v46;
      sub_1000089F8(v43, v37, &unk_1011838F0);
      MetricsReportingController.shared.unsafeMutableAddressor();
      v47 = sub_10053771C();
      v64 = v48;
      v65 = v47;
      v49 = v37;
      if (qword_10117F600 != -1)
      {
        swift_once();
      }

      v50 = qword_101218AD0;
      v63 = GroupActivitiesManager.hasJoined.getter();
      v62 = GroupActivitiesManager.participantsCount.getter();
      sub_1000095E8(v43, &unk_1011838F0);
      v51 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
      swift_beginAccess();
      v71 = *(v50 + v51);
      v52 = v72;
      v53 = *(v72 + 20);
      v54 = v68;
      v66(v68 + v53, 1, 1, v38);
      v55 = v52[7];
      v56 = (v54 + v52[6]);
      v57 = v52[8];
      *v54 = xmmword_100ECF4C0;
      sub_10006B010(v49, v54 + v53, &unk_1011838F0);
      v58 = v64;
      *v56 = v65;
      v56[1] = v58;
      *(v54 + v55) = v73;
      *(v54 + v57) = 0;
      v59 = v54 + v52[9];
      *v59 = v63 & 1;
      v60 = v71;
      *(v59 + 1) = v62;
      *(v59 + 2) = v60;
      v61 = v78;
      static Actions.reportClickEvent(targetIdentifier:targetType:actionType:actionURL:actionDetails:reportingContext:)(v67, v39, 5, 10, v78, 0, 0, 0, 0xFF00u, v54);

      sub_1000095E8(v61, &qword_101183A20);
      sub_100867794(v77, type metadata accessor for MetricsEvent.Page);
      sub_10012BA6C(v80);
      (*(v69 + 8))(v79, v70);
      return sub_100867794(v54, type metadata accessor for Actions.MetricsReportingContext);
    }
  }

  else
  {

    sub_10012BA6C(v80);
    return (*(v69 + 8))(v32, v70);
  }
}

void sub_10082EBAC()
{
  v1 = sub_10010FC20(&qword_1011A4858);
  __chkstk_darwin(v1 - 8);
  v3 = &v17[-v2];
  v4 = type metadata accessor for Playlist();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v8 - 8);
  v10 = &v17[-v9];
  v11 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  sub_1000089F8(v0 + v11, v10, &unk_1011814D0);
  if ((*(v5 + 48))(v10, 1, v4))
  {
    sub_1000095E8(v10, &unk_1011814D0);
  }

  else
  {
    (*(v5 + 16))(v7, v10, v4);
    sub_1000095E8(v10, &unk_1011814D0);
    Playlist.hasActiveCollaboration.getter();
    (*(v5 + 8))(v7, v4);
  }

  v12 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_collaborationDetails;
  swift_beginAccess();
  sub_1000089F8(v0 + v12, v3, &qword_1011A4858);
  v13 = type metadata accessor for PlaylistDetailDataSource.CollaborationDetails(0);
  if ((*(*(v13 - 8) + 48))(v3, 1, v13))
  {
    sub_1000095E8(v3, &qword_1011A4858);
  }

  else
  {

    sub_1000095E8(v3, &qword_1011A4858);
  }

  v14 = sub_10082DCF0();
  v15 = String._bridgeToObjectiveC()();

  v16 = [objc_opt_self() systemImageNamed:v15];

  [v14 setImage:v16];
}

uint64_t sub_10082EF78()
{
  v1 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___reactionController;
  if (*(v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___reactionController))
  {
    v2 = *(v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___reactionController);
  }

  else
  {
    v3 = v0;
    _s10ControllerCMa(0);
    swift_allocObject();
    v2 = sub_100250490();
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_10082EFFC()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_1011A4858);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v34 - v6;
  v8 = sub_10010FC20(&qword_101182140);
  __chkstk_darwin(v8 - 8);
  v38 = &v34 - v9;
  v39 = sub_10010FC20(&qword_1011A4860);
  v37 = *(v39 - 8);
  __chkstk_darwin(v39);
  v36 = &v34 - v10;
  v11 = sub_10010FC20(&qword_1011A4868);
  v42 = *(v11 - 8);
  v43 = v11;
  __chkstk_darwin(v11);
  v41 = &v34 - v12;
  v45 = sub_10010FC20(&qword_1011A4870);
  v40 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v34 - v13;
  v14 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v14 - 8);
  v16 = &v34 - v15;
  v17 = type metadata accessor for Playlist();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  sub_1000089F8(v1 + v21, v16, &unk_1011814D0);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    return sub_1000095E8(v16, &unk_1011814D0);
  }

  (*(v18 + 32))(v20, v16, v17);
  active = Playlist.hasActiveCollaboration.getter();
  v24 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_collaborationAutoupdatingResponse;
  if (active)
  {
    if (!*(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_collaborationAutoupdatingResponse))
    {
      type metadata accessor for Playlist.Collaborator();
      sub_100866F00(&qword_1011A4878, &type metadata accessor for Playlist.Collaborator);
      MusicLibrarySectionedRequest.init()();
      MusicLibrarySectionedRequest<>.filterSections(equalTo:)();
      sub_100020674(&qword_1011A4880, &qword_1011A4870);
      *(v1 + v24) = MusicAutoupdatableRequest.autoupdatingResponse.getter();

      v25 = v36;
      dispatch thunk of MusicAutoupdatingResponse.$response.getter();

      sub_100009F78(0, &qword_101182960);
      v35 = static OS_dispatch_queue.main.getter();
      v46 = v35;
      v26 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
      v27 = v38;
      (*(*(v26 - 8) + 56))(v38, 1, 1, v26);
      sub_100020674(&qword_1011A4888, &qword_1011A4860);
      sub_1000206BC();
      v28 = v41;
      v29 = v39;
      Publisher.receive<A>(on:options:)();
      sub_1000095E8(v27, &qword_101182140);

      (*(v37 + 8))(v25, v29);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_100020674(&unk_1011A4890, &qword_1011A4868);
      v30 = v43;
      v31 = Publisher<>.sink(receiveValue:)();

      (*(v42 + 8))(v28, v30);
      (*(v40 + 8))(v44, v45);
      (*(v18 + 8))(v20, v17);
      *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_collaborationAutoupdatingResponseSubscription) = v31;
    }
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_collaborationAutoupdatingResponse) = 0;

    *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_collaborationAutoupdatingResponseSubscription) = 0;

    v32 = type metadata accessor for PlaylistDetailDataSource.CollaborationDetails(0);
    (*(*(v32 - 8) + 56))(v7, 1, 1, v32);
    v33 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_collaborationDetails;
    swift_beginAccess();
    sub_1000089F8(v1 + v33, v5, &qword_1011A4858);
    swift_beginAccess();
    sub_1002190E0(v7, v1 + v33, &qword_1011A4858);
    swift_endAccess();
    sub_10082D208(v5);
    sub_1000095E8(v5, &qword_1011A4858);
    sub_1000095E8(v7, &qword_1011A4858);
  }

  return (*(v18 + 8))(v20, v17);
}

void sub_10082F7F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011A4858);
  v5 = __chkstk_darwin(v4 - 8);
  v89 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v88 = &v82 - v7;
  v8 = type metadata accessor for Playlist.Collaborator();
  v97 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v103 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v94 = &v82 - v12;
  v13 = __chkstk_darwin(v11);
  v96 = &v82 - v14;
  __chkstk_darwin(v13);
  v95 = &v82 - v15;
  v98 = sub_10010FC20(&qword_1011A47E8);
  v90 = *(v98 - 8);
  __chkstk_darwin(v98);
  v17 = &v82 - v16;
  v18 = sub_10010FC20(&qword_1011A47D8);
  __chkstk_darwin(v18);
  v20 = &v82 - v19;
  v21 = sub_10010FC20(&qword_1011906A0);
  __chkstk_darwin(v21 - 8);
  v23 = &v82 - v22;
  v93 = type metadata accessor for Playlist.Collaboration();
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v100 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10010FC20(&qword_1011A48A0);
  __chkstk_darwin(v25 - 8);
  v27 = &v82 - v26;
  v28 = sub_10010FC20(&qword_1011A48A8);
  __chkstk_darwin(v28 - 8);
  v30 = &v82 - v29;
  v102 = sub_10010FC20(&qword_1011A48B0);
  v99 = *(v102 - 8);
  __chkstk_darwin(v102);
  v101 = &v82 - v31;
  swift_beginAccess();
  v91 = a2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v33 = Strong;
  v34 = *(Strong + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_collaborationAutoupdatingResponse);

  if (!v34)
  {
    return;
  }

  v35 = dispatch thunk of MusicAutoupdatingResponse.isLoaded.getter();

  if ((v35 & 1) == 0)
  {
    return;
  }

  sub_1000089F8(a1, v27, &qword_1011A48A0);
  v36 = sub_10010FC20(&qword_1011A48B8);
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(v27, 1, v36) == 1)
  {
    sub_1000095E8(v27, &qword_1011A48A0);
    (*(v99 + 56))(v30, 1, 1, v102);
LABEL_10:
    v42 = &qword_1011A48A8;
    v43 = v30;
LABEL_11:
    sub_1000095E8(v43, v42);
    return;
  }

  v38 = MusicLibrarySectionedResponse.sections.getter();
  (*(v37 + 8))(v27, v36);
  if (*(v38 + 16))
  {
    v39 = v99;
    v40 = v102;
    (*(v99 + 16))(v30, v38 + ((*(v99 + 80) + 32) & ~*(v99 + 80)), v102);
    v41 = 0;
  }

  else
  {
    v41 = 1;
    v40 = v102;
    v39 = v99;
  }

  (*(v39 + 56))(v30, v41, 1, v40);
  if ((*(v39 + 48))(v30, 1, v40) == 1)
  {
    goto LABEL_10;
  }

  v44 = v101;
  (*(v39 + 32))(v101, v30, v40);
  swift_getKeyPath();
  MusicLibrarySection.subscript.getter();

  v45 = v92;
  v46 = v93;
  if ((*(v92 + 48))(v23, 1, v93) == 1)
  {
    (*(v39 + 8))(v44, v102);
    v42 = &qword_1011906A0;
    v43 = v23;
    goto LABEL_11;
  }

  (*(v45 + 32))(v100, v23, v46);
  swift_getKeyPath();
  v47 = v102;
  MusicLibrarySection.subscript.getter();

  v48 = v44;
  if (LOBYTE(v104[0]) != 1)
  {
    (*(v45 + 8))(v100, v46);
    (*(v99 + 8))(v44, v47);
    return;
  }

  MusicLibrarySection.items.getter();
  v49 = v90;
  v50 = v98;
  (*(v90 + 16))(v20, v17, v98);
  v51 = *(v18 + 36);
  v52 = sub_100020674(&unk_1011A4810, &qword_1011A47E8);
  dispatch thunk of Collection.startIndex.getter();
  v53 = v17;
  v54 = v51;
  v55 = v52;
  (*(v49 + 8))(v53, v50);
  dispatch thunk of Collection.endIndex.getter();
  if (*&v20[v54] != v104[0])
  {
    v90 = v97 + 16;
    v66 = (v97 + 32);
    v84 = v97 + 8;
    v87 = _swiftEmptyArrayStorage;
    v83 = _swiftEmptyArrayStorage;
    v67 = v96;
    v86 = v54;
    v85 = v55;
    while (1)
    {
      v70 = dispatch thunk of Collection.subscript.read();
      v71 = *v90;
      v72 = v95;
      (*v90)(v95);
      v70(v104, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v73 = *v66;
      (*v66)(v67, v72, v8);
      v74 = Playlist.Collaborator.isPending.getter();
      if (v74 == 2 || (v74 & 1) == 0)
      {
        (v71)(v103, v67, v8);
        v75 = v87;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v75 = sub_10049B12C(0, v75[2] + 1, 1, v75);
        }

        v77 = v75[2];
        v79 = v75[3];
        v78 = v77 + 1;
        if (v77 >= v79 >> 1)
        {
          v80 = sub_10049B12C(v79 > 1, v77 + 1, 1, v75);
          v75 = v80;
          v68 = v103;
          v81 = &v106;
LABEL_35:
          *(v81 - 32) = v80;
          goto LABEL_23;
        }

        v87 = v75;
        v68 = v103;
      }

      else
      {
        (v71)(v94, v67, v8);
        v75 = v83;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v75 = sub_10049B12C(0, v75[2] + 1, 1, v75);
        }

        v77 = v75[2];
        v76 = v75[3];
        v78 = v77 + 1;
        if (v77 >= v76 >> 1)
        {
          v80 = sub_10049B12C(v76 > 1, v77 + 1, 1, v75);
          v75 = v80;
          v68 = v94;
          v81 = &v105;
          goto LABEL_35;
        }

        v83 = v75;
        v68 = v94;
      }

LABEL_23:
      v67 = v96;
      v69 = v97;
      (*(v97 + 8))(v96, v8);
      v75[2] = v78;
      v73(v75 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v77, v68, v8);
      dispatch thunk of Collection.endIndex.getter();
      v56 = v100;
      v48 = v101;
      if (*&v20[v86] == v104[0])
      {
        goto LABEL_18;
      }
    }
  }

  v83 = _swiftEmptyArrayStorage;
  v87 = _swiftEmptyArrayStorage;
  v56 = v100;
LABEL_18:
  sub_1000095E8(v20, &qword_1011A47D8);
  swift_beginAccess();
  v57 = swift_unknownObjectWeakLoadStrong();
  if (v57)
  {
    v58 = v57;
    v59 = v92;
    v60 = v48;
    v61 = v88;
    v62 = v93;
    (*(v92 + 16))(v88, v56, v93);
    v63 = type metadata accessor for PlaylistDetailDataSource.CollaborationDetails(0);
    *(v61 + *(v63 + 20)) = v87;
    *(v61 + *(v63 + 24)) = v83;
    (*(*(v63 - 8) + 56))(v61, 0, 1, v63);
    v64 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_collaborationDetails;
    swift_beginAccess();
    v65 = v89;
    sub_1000089F8(v58 + v64, v89, &qword_1011A4858);
    swift_beginAccess();
    sub_1002190E0(v61, v58 + v64, &qword_1011A4858);
    swift_endAccess();
    sub_10082D208(v65);

    sub_1000095E8(v65, &qword_1011A4858);
    sub_1000095E8(v61, &qword_1011A4858);
    (*(v59 + 8))(v56, v62);
    (*(v99 + 8))(v60, v102);
  }

  else
  {

    (*(v92 + 8))(v56, v93);
    (*(v99 + 8))(v48, v102);
  }
}

uint64_t sub_100830574(uint64_t a1)
{
  v3 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v3 - 8);
  v60 = &v51 - v4;
  v5 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v51 - v6;
  v8 = type metadata accessor for Playlist();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v57 = v10;
  v58 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v61 = &v51 - v12;
  v13 = sub_10010FC20(&qword_10119A808);
  __chkstk_darwin(v13 - 8);
  v15 = &v51 - v14;
  v16 = sub_10010FC20(&qword_10118C2B0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v59 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v51 - v19;
  v21 = a1;
  v23 = v22;
  v25 = v24;
  sub_1000089F8(v21, v15, &qword_10119A808);
  if ((*(v23 + 48))(v15, 1, v25) == 1)
  {
    return sub_1000095E8(v15, &qword_10119A808);
  }

  v53 = *(v23 + 32);
  v54 = v23 + 32;
  v53(v20, v15, v25);
  v27 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  sub_1000089F8(v1 + v27, v7, &unk_1011814D0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    (*(v23 + 8))(v20, v25);
    return sub_1000095E8(v7, &unk_1011814D0);
  }

  v55 = v25;
  v56 = v20;
  v28 = *(v9 + 32);
  v29 = v61;
  v28(v61, v7, v8);
  v30 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v1 + v30, v62, &unk_1011926C0);
  if (v62[8])
  {
    sub_1000095E8(v62, &unk_1011926C0);
    v31 = v56;
LABEL_10:
    (*(v9 + 8))(v29, v8);
    return (*(v23 + 8))(v31, v55);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(v62, &unk_1011926C0);
  v31 = v56;
  if (!Strong)
  {
    goto LABEL_10;
  }

  v33 = [Strong traitCollection];
  v34 = [v33 userInterfaceIdiom];

  if (v34 == 6)
  {

    (*(v9 + 8))(v61, v8);
  }

  else
  {
    v52 = v1;
    v35 = v61;
    v36 = v9;
    if (Playlist.hasJoinedCollaboration.getter())
    {
      v37 = v60;
      static TaskPriority.userInitiated.getter();
      v38 = type metadata accessor for TaskPriority();
      (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
      v39 = v8;
      v40 = v23;
      (*(v23 + 16))(v59, v56, v55);
      v41 = *(v36 + 16);
      v51 = v28;
      v42 = v58;
      v41(v58, v35, v39);
      type metadata accessor for MainActor();
      v52 = v52;
      v43 = static MainActor.shared.getter();
      v44 = (*(v23 + 80) + 40) & ~*(v23 + 80);
      v45 = (v17 + *(v36 + 80) + v44) & ~*(v36 + 80);
      v46 = v39;
      v47 = v36;
      v48 = swift_allocObject();
      *(v48 + 2) = v43;
      *(v48 + 3) = &protocol witness table for MainActor;
      v49 = v53;
      *(v48 + 4) = v52;
      v50 = v55;
      v49(&v48[v44], v59, v55);
      v51(&v48[v45], v42, v46);
      sub_1001F4CB8(0, 0, v60, &unk_100EE4EA8, v48);

      (*(v47 + 8))(v61, v46);
      return (*(v40 + 8))(v56, v50);
    }

    (*(v9 + 8))(v35, v8);
  }

  return (*(v23 + 8))(v56, v55);
}

uint64_t sub_100830C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_10010FC20(&unk_101181520);
  v6[5] = swift_task_alloc();
  v6[6] = type metadata accessor for MainActor();
  v6[7] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[8] = v8;
  v6[9] = v7;

  return _swift_task_switch(sub_100830D14, v8, v7);
}

uint64_t sub_100830D14()
{
  v0[10] = sub_10082EF78();
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_100830DB8;
  v3 = v0[3];
  v2 = v0[4];

  return sub_100253240(v3, v2);
}

uint64_t sub_100830DB8(char a1)
{
  v2 = *v1;
  *(*v1 + 96) = a1;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);

  return _swift_task_switch(sub_100830F04, v4, v3);
}

uint64_t sub_100830F04()
{
  v1 = *(v0 + 96);

  if (v1 == 1)
  {
    v2 = *(v0 + 40);
    v3 = *(v0 + 16);
    v4 = type metadata accessor for TaskPriority();
    (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
    v5 = v3;
    v6 = static MainActor.shared.getter();
    v7 = swift_allocObject();
    v7[2] = v6;
    v7[3] = &protocol witness table for MainActor;
    v7[4] = v5;
    sub_1001F4CB8(0, 0, v2, &unk_100EE4EB8, v7);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100831028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1008310C0, v6, v5);
}

uint64_t sub_1008310C0()
{

  sub_100846A54();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100831124(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v2 - 8);
  v83 = &v73 - v3;
  v4 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v4 - 8);
  v87 = &v73 - v5;
  v6 = type metadata accessor for Playlist();
  v90 = *(v6 - 8);
  v91 = v6;
  __chkstk_darwin(v6);
  v88 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v73 - v13;
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v82 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v73 - v19;
  v21 = Logger.collaboration.unsafeMutableAddressor();
  v86 = v16;
  v22 = *(v16 + 16);
  v80 = v21;
  v81 = v16 + 16;
  v79 = v22;
  (v22)(v20);
  v23 = *(v9 + 16);
  v85 = a1;
  v24 = v8;
  v77 = v9 + 16;
  v76 = v23;
  v23(v14, a1, v8);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  v27 = os_log_type_enabled(v25, v26);
  v84 = v9;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v75 = v12;
    v29 = v28;
    v74 = swift_slowAlloc();
    v93[0] = v74;
    *v29 = 136446210;
    sub_100866F00(&qword_1011A4850, &type metadata accessor for URL);
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v31;
    v78 = *(v9 + 8);
    v78(v14, v24);
    v33 = sub_1000105AC(v30, v32, v93);

    *(v29 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v25, v26, "Handling URL=%{public}s", v29, 0xCu);
    sub_10000959C(v74);

    v12 = v75;
  }

  else
  {

    v78 = *(v9 + 8);
    v78(v14, v24);
  }

  v34 = *(v86 + 8);
  v34(v20, v15);
  v35 = v15;
  v36 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  v37 = v89;
  swift_beginAccess();
  v38 = v37 + v36;
  v39 = v87;
  sub_1000089F8(v38, v87, &unk_1011814D0);
  if ((*(v90 + 48))(v39, 1, v91) == 1)
  {
    return sub_1000095E8(v39, &unk_1011814D0);
  }

  (*(v90 + 32))(v88, v39, v91);
  if (qword_10117F610 != -1)
  {
    swift_once();
  }

  v41 = Collaboration.Manager.queryItemsDictionary(for:)();
  if (v41)
  {
    v42 = v41;
    v43 = v83;
    (*(v84 + 56))(v83, 1, 1, v24);
    v44 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_collaborationURL;
    v45 = v89;
    swift_beginAccess();
    sub_10006B010(v43, v45 + v44, &qword_101183A20);
    swift_endAccess();

    v47.value = Collaboration.Manager.DeepLinkType.init(_:)(v46).value;
    if (v47.value == MusicCore_Collaboration_Manager_DeepLinkType_unknownDefault)
    {

      v48 = v82;
      v79(v82, v80, v35);
      v76(v12, v85, v24);
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = v48;
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v89 = v35;
        v54 = v53;
        v92[0] = v53;
        *v52 = 136446210;
        sub_100866F00(&qword_1011A4850, &type metadata accessor for URL);
        v55 = dispatch thunk of CustomStringConvertible.description.getter();
        v56 = v24;
        v57 = v90;
        v58 = v12;
        v60 = v59;
        v78(v58, v56);
        v61 = sub_1000105AC(v55, v60, v92);

        *(v52 + 4) = v61;
        _os_log_impl(&_mh_execute_header, v49, v50, "Unknown type in URL=%{public}s", v52, 0xCu);
        sub_10000959C(v54);

        v34(v51, v89);
        return (*(v57 + 8))(v88, v91);
      }

      v78(v12, v24);
      v34(v48, v35);
    }

    else if (v47.value)
    {
      v62 = Collaboration.Manager.DeepLinkType.profileKey.unsafeMutableAddressor();
      swift_beginAccess();
      if (*(v42 + 16) && (v65 = v62, v63 = *v62, v64 = v65[1], , v66 = sub_100019C10(v63, v64), v68 = v67, , (v68 & 1) != 0))
      {
        v69 = (*(v42 + 56) + 16 * v66);
        v71 = *v69;
        v70 = v69[1];

        v72 = v71;
      }

      else
      {

        v72 = 0;
        v70 = 0;
      }

      sub_100833398(v72, v70, v88);
    }

    else
    {

      sub_1008319D8(v88, v85);
    }
  }

  return (*(v90 + 8))(v88, v91);
}

uint64_t sub_1008319D8(void *a1, uint64_t a2)
{
  v41 = a2;
  v49 = a1;
  v2 = type metadata accessor for URL();
  v47 = *(v2 - 8);
  v48 = v2;
  __chkstk_darwin(v2);
  v43 = v3;
  v46 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Playlist();
  v44 = *(v4 - 8);
  v45 = v4;
  __chkstk_darwin(v4);
  v40 = v5;
  v51 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v6 - 8);
  v50 = &v38 - v7;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v38 - v13;
  v15 = Logger.collaboration.unsafeMutableAddressor();
  v16 = *(v9 + 16);
  v16(v14, v15, v8);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Will attempt to join collaboration.", v19, 2u);
  }

  v20 = *(v9 + 8);
  v20(v14, v8);
  v21 = v49;
  if (Playlist.hasActiveCollaboration.getter())
  {
    v16(v12, v15, v8);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Collaborator is already collaborating or pending.", v24, 2u);
    }

    return (v20)(v12, v8);
  }

  else
  {
    if (qword_10117F610 != -1)
    {
      swift_once();
    }

    v39 = qword_101218AE0;
    v26 = type metadata accessor for TaskPriority();
    (*(*(v26 - 8) + 56))(v50, 1, 1, v26);
    v27 = v44;
    v28 = v45;
    (*(v44 + 16))(v51, v21, v45);
    v30 = v46;
    v29 = v47;
    v31 = v48;
    (*(v47 + 16))(v46, v41, v48);
    type metadata accessor for MainActor();

    v49 = v42;
    v32 = static MainActor.shared.getter();
    v33 = (*(v27 + 80) + 40) & ~*(v27 + 80);
    v34 = (v40 + *(v29 + 80) + v33) & ~*(v29 + 80);
    v35 = (v43 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
    v36 = swift_allocObject();
    *(v36 + 2) = v32;
    *(v36 + 3) = &protocol witness table for MainActor;
    *(v36 + 4) = v39;
    (*(v27 + 32))(&v36[v33], v51, v28);
    (*(v29 + 32))(&v36[v34], v30, v31);
    v37 = v50;
    *&v36[v35] = v49;
    sub_1001F4CB8(0, 0, v37, &unk_100EE4E78, v36);
  }
}

uint64_t sub_100831F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v8 = type metadata accessor for Logger();
  v7[11] = v8;
  v7[12] = *(v8 - 8);
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();
  v9 = type metadata accessor for Playlist();
  v7[15] = v9;
  v7[16] = *(v9 - 8);
  v7[17] = swift_task_alloc();
  v7[18] = type metadata accessor for Collaboration.Flow(0);
  v7[19] = swift_task_alloc();
  type metadata accessor for Collaboration.Flow.View(0);
  v7[20] = swift_task_alloc();
  v7[21] = swift_task_alloc();
  v10 = type metadata accessor for Playlist.Collaborator.Status();
  v7[22] = v10;
  v7[23] = *(v10 - 8);
  v7[24] = swift_task_alloc();
  v7[25] = sub_10010FC20(&qword_1011A4828);
  v7[26] = swift_task_alloc();
  v7[27] = sub_10010FC20(&qword_1011A4830);
  v7[28] = swift_task_alloc();
  v7[29] = swift_task_alloc();
  v7[30] = swift_task_alloc();
  v7[31] = swift_task_alloc();
  v7[32] = swift_task_alloc();
  v11 = type metadata accessor for Playlist.Collaboration();
  v7[33] = v11;
  v7[34] = *(v11 - 8);
  v7[35] = swift_task_alloc();
  sub_10010FC20(&qword_1011A4838);
  v7[36] = swift_task_alloc();
  v7[37] = swift_task_alloc();
  type metadata accessor for MainActor();
  v7[38] = static MainActor.shared.getter();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[39] = v13;
  v7[40] = v12;

  return _swift_task_switch(sub_100832280, v13, v12);
}

uint64_t sub_100832280()
{
  Collaboration.Manager.canCollaborate(for:)();
  v1 = Collaboration.Manager.participantProfile.getter();
  if (v1)
  {
    v2 = v1;
    ICMusicUserProfile.collaborator.getter(*(v0 + 296));

    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(v0 + 296);
  v5 = type metadata accessor for Collaboration.Flow.Collaborator(0);
  (*(*(v5 - 8) + 56))(v4, v3, 1, v5);
  v6 = swift_task_alloc();
  *(v0 + 328) = v6;
  *v6 = v0;
  v6[1] = sub_1008325E8;
  v7 = *(v0 + 280);
  v8 = *(v0 + 64);
  v9 = *(v0 + 72);

  return Collaboration.Manager.validate(_:url:)(v7, v8, v9);
}

uint64_t sub_1008325E8()
{
  v2 = *v1;
  *(*v1 + 336) = v0;

  v3 = *(v2 + 320);
  v4 = *(v2 + 312);
  if (v0)
  {
    v5 = sub_100833118;
  }

  else
  {
    v5 = sub_100832724;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100832724()
{
  v97 = v0;
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);

  Playlist.Collaboration.collaboratorStatus.getter();
  (*(v6 + 104))(v2, enum case for Playlist.Collaborator.Status.notJoined(_:), v5);
  (*(v6 + 56))(v2, 0, 1, v5);
  v7 = *(v4 + 48);
  sub_1000089F8(v1, v3, &qword_1011A4830);
  sub_1000089F8(v2, v3 + v7, &qword_1011A4830);
  v8 = *(v6 + 48);
  if (v8(v3, 1, v5) == 1)
  {
    v9 = *(v0 + 176);
    sub_1000095E8(*(v0 + 248), &qword_1011A4830);
    if (v8(v3 + v7, 1, v9) == 1)
    {
      sub_1000095E8(*(v0 + 208), &qword_1011A4830);
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  v10 = *(v0 + 176);
  sub_1000089F8(*(v0 + 208), *(v0 + 240), &qword_1011A4830);
  v11 = v8(v3 + v7, 1, v10);
  v12 = *(v0 + 240);
  v13 = *(v0 + 248);
  if (v11 == 1)
  {
    v15 = *(v0 + 176);
    v14 = *(v0 + 184);
    sub_1000095E8(*(v0 + 248), &qword_1011A4830);
    (*(v14 + 8))(v12, v15);
LABEL_6:
    sub_1000095E8(*(v0 + 208), &qword_1011A4828);
    goto LABEL_7;
  }

  v40 = *(v0 + 208);
  v42 = *(v0 + 184);
  v41 = *(v0 + 192);
  v43 = *(v0 + 176);
  (*(v42 + 32))(v41, v3 + v7, v43);
  sub_100866F00(&qword_1011A4848, &type metadata accessor for Playlist.Collaborator.Status);
  v44 = dispatch thunk of static Equatable.== infix(_:_:)();
  v45 = *(v42 + 8);
  v45(v41, v43);
  sub_1000095E8(v13, &qword_1011A4830);
  v45(v12, v43);
  sub_1000095E8(v40, &qword_1011A4830);
  if ((v44 & 1) == 0)
  {
LABEL_7:
    v16 = *(v0 + 256);
    v17 = *(v0 + 232);
    v18 = *(v0 + 112);
    v19 = *(v0 + 88);
    v20 = *(v0 + 96);
    v21 = Logger.collaboration.unsafeMutableAddressor();
    (*(v20 + 16))(v18, v21, v19);
    sub_1000089F8(v16, v17, &qword_1011A4830);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v0 + 296);
    v26 = *(v0 + 272);
    v92 = *(v0 + 264);
    v94 = *(v0 + 280);
    v90 = *(v0 + 256);
    v27 = *(v0 + 232);
    if (v24)
    {
      v28 = *(v0 + 224);
      v86 = *(v0 + 96);
      v87 = *(v0 + 88);
      v88 = *(v0 + 112);
      v89 = *(v0 + 296);
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v96 = v30;
      *v29 = 136446210;
      sub_1000089F8(v27, v28, &qword_1011A4830);
      v31 = String.init<A>(describing:)();
      v33 = v32;
      sub_1000095E8(v27, &qword_1011A4830);
      v34 = sub_1000105AC(v31, v33, &v96);

      *(v29 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v22, v23, "Skipping with=%{public}s", v29, 0xCu);
      sub_10000959C(v30);

      (*(v86 + 8))(v88, v87);
      sub_1000095E8(v90, &qword_1011A4830);
      (*(v26 + 8))(v94, v92);
      v35 = &qword_1011A4838;
      v36 = v89;
    }

    else
    {
      v37 = *(v0 + 112);
      v38 = *(v0 + 88);
      v39 = *(v0 + 96);

      sub_1000095E8(v27, &qword_1011A4830);
      (*(v39 + 8))(v37, v38);
      sub_1000095E8(v90, &qword_1011A4830);
      (*(v26 + 8))(v94, v92);
      v35 = &qword_1011A4838;
      v36 = v25;
    }

    goto LABEL_19;
  }

LABEL_11:
  v46 = *(v0 + 288);
  v47 = *(v0 + 296);
  v48 = *(v0 + 152);
  v49 = *(v0 + 128);
  v93 = *(v0 + 120);
  v95 = *(v0 + 136);
  v50 = *(v0 + 72);
  v91 = *(v0 + 64);
  v51 = sub_10010FC20(&qword_1011A4840);
  v52 = *(v51 + 48);
  v53 = *(v51 + 64);
  sub_1000089F8(v47, v48, &qword_1011A4838);
  v54 = type metadata accessor for URL();
  (*(*(v54 - 8) + 16))(v48 + v52, v50, v54);
  *(v48 + v53) = Playlist.Collaboration.isOpenInvitation.getter() & 1;
  swift_storeEnumTagMultiPayload();
  (*(v49 + 16))(v95, v91, v93);
  sub_1000089F8(v47, v46, &qword_1011A4838);
  v55 = type metadata accessor for Collaboration.Flow.Collaborator(0);
  v56 = (*(*(v55 - 8) + 48))(v46, 1, v55);
  v57 = *(v0 + 288);
  if (v56 == 1)
  {
    sub_1000095E8(v57, &qword_1011A4838);
    v58 = 1;
  }

  else
  {
    v59 = *(v57 + *(v55 + 28));
    sub_100867794(v57, type metadata accessor for Collaboration.Flow.Collaborator);
    v58 = v59 ^ 1;
  }

  v61 = *(v0 + 160);
  v60 = *(v0 + 168);
  v62 = *(v0 + 152);
  v63 = *(v0 + 136);
  v64 = *(v0 + 80);
  v65 = *(v0 + 56);
  v66 = swift_allocObject();
  *(v66 + 16) = v64;
  *(v66 + 24) = v65;
  swift_retain_n();
  v67 = v64;
  Collaboration.Flow.View.init(_:playlist:manager:showProfileCreation:profileUpdateHandler:completion:)(v62, v63, v65, v58 & 1, &unk_100ECD320, 0, sub_10086A14C, v66, v60);
  sub_10086772C(v60, v61, type metadata accessor for Collaboration.Flow.View);
  v68 = objc_allocWithZone(sub_10010FC20(&qword_101190698));
  v69 = Card.ViewController.init(content:)(v61);
  v70 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v67 + v70, v0 + 40, &unk_1011926C0);
  if (*(v0 + 48))
  {
    v71 = *(v0 + 296);
    v73 = *(v0 + 272);
    v72 = *(v0 + 280);
    v75 = *(v0 + 256);
    v74 = *(v0 + 264);
    v76 = *(v0 + 168);

    sub_100867794(v76, type metadata accessor for Collaboration.Flow.View);
    sub_1000095E8(v75, &qword_1011A4830);
    (*(v73 + 8))(v72, v74);
    sub_1000095E8(v71, &qword_1011A4838);
    v35 = &unk_1011926C0;
    v36 = v0 + 40;
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v0 + 40, &unk_1011926C0);
    v78 = *(v0 + 296);
    v80 = *(v0 + 272);
    v79 = *(v0 + 280);
    v82 = *(v0 + 256);
    v81 = *(v0 + 264);
    v83 = *(v0 + 168);
    if (Strong)
    {
      [Strong presentViewController:v69 animated:1 completion:0];
    }

    sub_100867794(v83, type metadata accessor for Collaboration.Flow.View);
    sub_1000095E8(v82, &qword_1011A4830);
    (*(v80 + 8))(v79, v81);
    v35 = &qword_1011A4838;
    v36 = v78;
  }

LABEL_19:
  sub_1000095E8(v36, v35);

  v84 = *(v0 + 8);

  return v84();
}

uint64_t sub_100833118()
{
  v1 = v0[37];

  sub_1000095E8(v1, &qword_1011A4838);
  v2 = v0[42];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[11];
  v6 = Logger.collaboration.unsafeMutableAddressor();
  (*(v4 + 16))(v3, v6, v5);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "Can't collaborate=%{public}@", v9, 0xCu);
    sub_1000095E8(v10, &unk_101183D70);
  }

  v13 = v0[12];
  v12 = v0[13];
  v14 = v0[11];

  (*(v13 + 8))(v12, v14);
  Collaboration.Manager.handleError(_:)(v2);

  v15 = v0[1];

  return v15();
}

uint64_t sub_100833398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = a3;
  v44 = a1;
  v45 = type metadata accessor for Playlist();
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v39 = v4;
  v42 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v5 - 8);
  v41 = &v36 - v6;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v36 - v12;
  v14 = Logger.collaboration.unsafeMutableAddressor();
  v15 = *(v8 + 16);
  v15(v13, v14, v7);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v37 = v14;
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Will present moderation flow.", v18, 2u);
    v14 = v37;
  }

  v19 = *(v8 + 8);
  v19(v13, v7);
  if (a2)
  {
    v20 = qword_10117F610;

    v37 = a2;
    if (v20 != -1)
    {
      swift_once();
    }

    v36 = qword_101218AE0;
    v21 = type metadata accessor for TaskPriority();
    v22 = v41;
    (*(*(v21 - 8) + 56))(v41, 1, 1, v21);
    v23 = v42;
    v24 = v43;
    v25 = v45;
    (*(v43 + 16))(v42, v38, v45);
    type metadata accessor for MainActor();

    v26 = v40;
    v27 = static MainActor.shared.getter();
    v28 = (*(v24 + 80) + 48) & ~*(v24 + 80);
    v29 = (v39 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
    v30 = swift_allocObject();
    *(v30 + 2) = v27;
    *(v30 + 3) = &protocol witness table for MainActor;
    v31 = v37;
    *(v30 + 4) = v44;
    *(v30 + 5) = v31;
    (*(v24 + 32))(&v30[v28], v23, v25);
    *&v30[v29] = v36;
    *&v30[(v29 + 15) & 0xFFFFFFFFFFFFFFF8] = v26;
    sub_1001F4CB8(0, 0, v22, &unk_100EE4E38, v30);
  }

  else
  {
    v15(v11, v14, v7);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Missing social profile id", v35, 2u);
    }

    v19(v11, v7);
    return static Collaboration.Error.tapToRadarAlert()();
  }
}

uint64_t sub_10083384C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a7;
  v8[16] = a8;
  v8[13] = a5;
  v8[14] = a6;
  v8[12] = a4;
  v9 = type metadata accessor for Logger();
  v8[17] = v9;
  v8[18] = *(v9 - 8);
  v8[19] = swift_task_alloc();
  v8[20] = type metadata accessor for Collaboration.Flow(0);
  v8[21] = swift_task_alloc();
  type metadata accessor for Collaboration.Flow.View(0);
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();
  v8[24] = sub_10010FC20(&qword_1011A47D8);
  v8[25] = swift_task_alloc();
  v10 = type metadata accessor for Playlist.Collaborator();
  v8[26] = v10;
  v8[27] = *(v10 - 8);
  v8[28] = swift_task_alloc();
  v8[29] = swift_task_alloc();
  v8[30] = swift_task_alloc();
  sub_10010FC20(&qword_1011A47E0);
  v8[31] = swift_task_alloc();
  v11 = sub_10010FC20(&qword_1011A47E8);
  v8[32] = v11;
  v8[33] = *(v11 - 8);
  v8[34] = swift_task_alloc();
  v8[35] = swift_task_alloc();
  v12 = type metadata accessor for MusicPropertySource();
  v8[36] = v12;
  v8[37] = *(v12 - 8);
  v8[38] = swift_task_alloc();
  v13 = type metadata accessor for Playlist();
  v8[39] = v13;
  v8[40] = *(v13 - 8);
  v8[41] = swift_task_alloc();
  v8[42] = swift_task_alloc();
  type metadata accessor for MainActor();
  v8[43] = static MainActor.shared.getter();
  v15 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[44] = v15;
  v8[45] = v14;

  return _swift_task_switch(sub_100833BD0, v15, v14);
}

uint64_t sub_100833BD0()
{
  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[36];

  v0[46] = MusicItemID.init(_:)();
  v0[47] = v4;
  sub_10010FC20(&qword_101183990);
  v5 = swift_allocObject();
  v0[48] = v5;
  *(v5 + 16) = xmmword_100EBC6C0;
  sub_10010FC20(&unk_10118C1C0);
  *(v5 + 32) = static PartialMusicProperty<A>.collaborators.getter();
  (*(v2 + 104))(v1, enum case for MusicPropertySource.library(_:), v3);
  v6 = swift_task_alloc();
  v0[49] = v6;
  v7 = sub_100866F00(&unk_1011A47F0, &type metadata accessor for Playlist);
  *v6 = v0;
  v6[1] = sub_100833D68;
  v8 = v0[42];
  v9 = v0[38];
  v10 = v0[39];

  return MusicItem<>.with(_:preferredSource:)(v8, v5, v9, v10, &protocol witness table for Playlist, &protocol witness table for Playlist, v7);
}

uint64_t sub_100833D68()
{
  v2 = *v1;
  *(*v1 + 400) = v0;

  (*(v2[37] + 8))(v2[38], v2[36]);

  if (v0)
  {

    v3 = v2[44];
    v4 = v2[45];
    v5 = sub_1008347DC;
  }

  else
  {
    v3 = v2[44];
    v4 = v2[45];
    v5 = sub_100833EE4;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100833EE4()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);
  v3 = *(v0 + 248);

  Playlist.collaborators.getter();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 248);

    sub_1000095E8(v4, &qword_1011A47E0);
LABEL_12:
    v25 = *(v0 + 336);
    v26 = *(v0 + 312);
    v27 = *(v0 + 320);
    v29 = *(v0 + 96);
    v28 = *(v0 + 104);
    _StringGuts.grow(_:)(17);

    v30._countAndFlagsBits = v29;
    v30._object = v28;
    String.append(_:)(v30);
    sub_1004525B0();
    swift_allocError();
    *v31 = 0x70206C6169636F73;
    *(v31 + 8) = 0xEF3D656C69666F72;
    *(v31 + 16) = 2;
    swift_willThrow();
    (*(v27 + 8))(v25, v26);
    v33 = *(v0 + 144);
    v32 = *(v0 + 152);
    v34 = *(v0 + 136);
    v35 = Logger.collaboration.unsafeMutableAddressor();
    (*(v33 + 16))(v32, v35, v34);
    swift_errorRetain();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 138543362;
      swift_errorRetain();
      v40 = _swift_stdlib_bridgeErrorToNSError();
      *(v38 + 4) = v40;
      *v39 = v40;
      _os_log_impl(&_mh_execute_header, v36, v37, "Can't present approval flow=%{public}@", v38, 0xCu);
      sub_1000095E8(v39, &unk_101183D70);
    }

    else
    {
    }

    (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
    goto LABEL_16;
  }

  v6 = *(v0 + 272);
  v5 = *(v0 + 280);
  v8 = *(v0 + 256);
  v7 = *(v0 + 264);
  v9 = *(v0 + 192);
  v10 = *(v0 + 200);
  (*(v7 + 32))(v5, *(v0 + 248), v8);
  (*(v7 + 16))(v6, v5, v8);
  sub_100020674(&qword_1011A4808, &qword_1011A47E8);
  dispatch thunk of Sequence.makeIterator()();
  v11 = *(v9 + 36);
  sub_100020674(&unk_1011A4810, &qword_1011A47E8);
  dispatch thunk of Collection.endIndex.getter();
  if (*(v10 + v11) == *(v0 + 88))
  {
LABEL_11:
    v21 = *(v0 + 280);
    v22 = *(v0 + 256);
    v23 = *(v0 + 264);
    v24 = *(v0 + 200);

    sub_1000095E8(v24, &qword_1011A47D8);
    (*(v23 + 8))(v21, v22);
    goto LABEL_12;
  }

  v12 = *(v0 + 216);
  v75 = (v12 + 32);
  v76 = (v12 + 16);
  v74 = (v12 + 8);
  while (1)
  {
    v79 = *(v0 + 368);
    v82 = *(v0 + 376);
    v13 = *(v0 + 232);
    v77 = *(v0 + 224);
    v14 = *(v0 + 208);
    v15 = v10;
    v16 = dispatch thunk of Collection.subscript.read();
    v72 = *v76;
    (*v76)(v13);
    v16(v0 + 16, 0);
    v10 = v15;
    dispatch thunk of Collection.formIndex(after:)();
    v17 = *v75;
    (*v75)(v77, v13, v14);
    if (Playlist.Collaborator.id.getter() == v79 && v18 == v82)
    {
      break;
    }

    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v20)
    {
      goto LABEL_20;
    }

    (*v74)(*(v0 + 224), *(v0 + 208));
    dispatch thunk of Collection.endIndex.getter();
    if (*(v10 + v11) == *(v0 + 88))
    {
      goto LABEL_11;
    }
  }

LABEL_20:
  v43 = *(v0 + 328);
  v73 = *(v0 + 336);
  v44 = *(v0 + 320);
  v45 = *(v0 + 240);
  v46 = *(v0 + 224);
  v47 = *(v0 + 208);
  v80 = *(v0 + 184);
  v83 = *(v0 + 176);
  v48 = *(v0 + 168);
  v71 = *(v0 + 312);
  v49 = *(v0 + 120);
  v78 = *(v0 + 128);
  sub_1000095E8(*(v0 + 200), &qword_1011A47D8);

  v17(v45, v46, v47);
  (v72)(v48, v45, v47);
  swift_storeEnumTagMultiPayload();
  (*(v44 + 16))(v43, v73, v71);
  v50 = swift_allocObject();
  *(v50 + 16) = v78;
  *(v50 + 24) = v49;
  swift_retain_n();
  v51 = v78;
  Collaboration.Flow.View.init(_:playlist:manager:showProfileCreation:profileUpdateHandler:completion:)(v48, v43, v49, 0, 0, 0, sub_10086E3A8, v50, v80);
  sub_10086772C(v80, v83, type metadata accessor for Collaboration.Flow.View);
  v52 = objc_allocWithZone(sub_10010FC20(&qword_101190698));
  v53 = Card.ViewController.init(content:)(v83);
  v54 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v51 + v54, v0 + 72, &unk_1011926C0);
  if (*(v0 + 80))
  {
    v84 = *(v0 + 336);
    v55 = *(v0 + 312);
    v56 = *(v0 + 320);
    v57 = *(v0 + 280);
    v59 = *(v0 + 256);
    v58 = *(v0 + 264);
    v60 = *(v0 + 240);
    v61 = *(v0 + 208);
    v62 = *(v0 + 184);

    sub_100867794(v62, type metadata accessor for Collaboration.Flow.View);
    (*v74)(v60, v61);
    (*(v58 + 8))(v57, v59);
    (*(v56 + 8))(v84, v55);
    sub_1000095E8(v0 + 72, &unk_1011926C0);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v0 + 72, &unk_1011926C0);
    v64 = *(v0 + 320);
    v81 = *(v0 + 312);
    v85 = *(v0 + 336);
    v65 = *(v0 + 280);
    v67 = *(v0 + 256);
    v66 = *(v0 + 264);
    v68 = *(v0 + 240);
    v69 = *(v0 + 208);
    v70 = *(v0 + 184);
    if (Strong)
    {
      [Strong presentViewController:v53 animated:1 completion:0];
    }

    sub_100867794(v70, type metadata accessor for Collaboration.Flow.View);
    (*v74)(v68, v69);
    (*(v66 + 8))(v65, v67);
    (*(v64 + 8))(v85, v81);
  }

LABEL_16:

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_1008347DC()
{

  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v4 = Logger.collaboration.unsafeMutableAddressor();
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Can't present approval flow=%{public}@", v7, 0xCu);
    sub_1000095E8(v8, &unk_101183D70);
  }

  else
  {
  }

  (*(v0[18] + 8))(v0[19], v0[17]);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100834A24(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011A4820);
  __chkstk_darwin(v4);
  v6 = (v11 - v5 + 16);
  v7 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(a2 + v7, v11, &unk_1011926C0);
  if (v11[8])
  {
    sub_1000095E8(v11, &unk_1011926C0);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v11, &unk_1011926C0);
    if (Strong)
    {
      [Strong dismissViewControllerAnimated:1 completion:0];
    }
  }

  sub_1000089F8(a1, v6, &qword_1011A4820);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_1000095E8(v6, &qword_1011A4820);
  }

  Collaboration.Manager.handleError(_:)(*v6);
}

uint64_t sub_100834BB8(uint64_t a1)
{
  v2 = v1;
  v77 = a1;
  v68 = type metadata accessor for EditorialVideoArtworkFlavor();
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v66 = &v64[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_10010FC20(&unk_101192950);
  __chkstk_darwin(v4 - 8);
  v69 = &v64[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v74 = &v64[-v7];
  v8 = sub_10010FC20(&qword_101192860);
  __chkstk_darwin(v8 - 8);
  v72 = &v64[-v9];
  v10 = sub_10010FC20(&unk_101188920);
  __chkstk_darwin(v10 - 8);
  v71 = &v64[-v11];
  v12 = type metadata accessor for Playlist();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v73 = &v64[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v70 = &v64[-v16];
  v17 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v17 - 8);
  v75 = &v64[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v21 = &v64[-v20];
  v22 = sub_10010FC20(&unk_1011A4980);
  v23 = v22 - 8;
  __chkstk_darwin(v22);
  v25 = &v64[-v24];
  v26 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogPlaylist;
  swift_beginAccess();
  v27 = *(v23 + 56);
  v76 = v2;
  sub_1000089F8(v2 + v26, v25, &unk_1011814D0);
  sub_1000089F8(v77, &v25[v27], &unk_1011814D0);
  v77 = v13;
  v28 = *(v13 + 48);
  if (v28(v25, 1, v12) == 1)
  {
    if (v28(&v25[v27], 1, v12) == 1)
    {
      return sub_1000095E8(v25, &unk_1011814D0);
    }

    goto LABEL_6;
  }

  sub_1000089F8(v25, v21, &unk_1011814D0);
  if (v28(&v25[v27], 1, v12) == 1)
  {
    (*(v77 + 8))(v21, v12);
LABEL_6:
    sub_1000095E8(v25, &unk_1011A4980);
    goto LABEL_7;
  }

  v43 = v77;
  v44 = v70;
  (*(v77 + 32))(v70, &v25[v27], v12);
  sub_100866F00(&unk_1011A4660, &type metadata accessor for Playlist);
  v65 = dispatch thunk of static Equatable.== infix(_:_:)();
  v45 = *(v43 + 8);
  v45(v44, v12);
  v45(v21, v12);
  result = sub_1000095E8(v25, &unk_1011814D0);
  if ((v65 & 1) == 0)
  {
LABEL_7:
    v30 = v75;
    v31 = v76;
    sub_1000089F8(v76 + v26, v75, &unk_1011814D0);
    if (v28(v30, 1, v12) == 1)
    {
      return sub_1000095E8(v30, &unk_1011814D0);
    }

    v32 = v73;
    (*(v77 + 32))(v73, v30, v12);
    sub_10083D5A8();
    v33 = v12;
    v34 = EditorialVideoArtworkVending.editorialVideoArtworks.getter();
    if (!v34)
    {
      v34 = sub_10010BDB8(_swiftEmptyArrayStorage);
    }

    v35 = v74;
    sub_1005F40C8(v34);

    v36 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___headerConfiguration;

    v37 = v71;
    Playlist.staticDetailTallArtwork.getter();
    sub_1005F3EAC(v37);

    v38 = *(v31 + v36);

    v39 = v72;
    sub_10083C114(v72);
    v40 = type metadata accessor for ContainerDetail.AttributionItem(0);
    v41 = (*(*(v40 - 8) + 48))(v39, 1, v40);
    sub_1000095E8(v39, &qword_101192860);
    if (((v41 == 1) ^ *(v38 + OBJC_IVAR____TtCV5Music6Header13Configuration__disableAttribution)))
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *&v64[-16] = v38;
      v64[-8] = v41 == 1;
      v78 = v38;
      sub_100866F00(&unk_1011A4750, _s13ConfigurationCMa);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {
      *(v38 + OBJC_IVAR____TtCV5Music6Header13Configuration__disableAttribution) = v41 == 1;
    }

    v46 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v31 + v46, &v78, &unk_1011926C0);
    if (v79)
    {
      v47 = &unk_1011926C0;
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(&v78, &unk_1011926C0);
      if (!Strong)
      {
        goto LABEL_22;
      }

      v49 = sub_10069F9B8();

      if (!*(v49 + 16))
      {

LABEL_22:
        sub_1000089F8(v31 + v46, &v78, &unk_1011926C0);
        if (v79)
        {
          v51 = &unk_1011926C0;
          v52 = &v78;
LABEL_34:
          sub_1000095E8(v52, v51);
LABEL_35:
          sub_100835730(1);
          return (*(v77 + 8))(v32, v33);
        }

        v53 = swift_unknownObjectWeakLoadStrong();
        sub_1000095E8(&v78, &unk_1011926C0);
        if (!v53)
        {
          goto LABEL_35;
        }

        v54 = *&v53[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_floatingArtworkDataSource];

        if (!v54)
        {
          goto LABEL_35;
        }

        v55 = EditorialVideoArtworkVending.editorialVideoArtworks.getter();
        if (v55)
        {
          v56 = v55;
          v57 = v66;
          static EditorialVideoArtworkFlavor.motionDetailSquare.getter();
          if (*(v56 + 16))
          {
            v58 = sub_1006BE63C(v57);
            if (v59)
            {
              v60 = v58;
              v75 = *(v56 + 56);
              v61 = type metadata accessor for VideoArtwork();
              v62 = *(v61 - 8);
              (*(v62 + 16))(v35, &v75[*(v62 + 72) * v60], v61);
              (*(v67 + 8))(v57, v68);

              (*(v62 + 56))(v35, 0, 1, v61);
LABEL_33:
              swift_getKeyPath();
              swift_getKeyPath();
              sub_1000089F8(v35, v69, &unk_101192950);
              static Published.subscript.setter();
              v52 = v35;
              v51 = &unk_101192950;
              goto LABEL_34;
            }
          }

          (*(v67 + 8))(v57, v68);
        }

        v63 = type metadata accessor for VideoArtwork();
        (*(*(v63 - 8) + 56))(v35, 1, 1, v63);
        goto LABEL_33;
      }

      v80 = v33;
      v81 = &off_1010B2320;
      v50 = sub_10001C8B8(&v78);
      (*(v77 + 16))(v50, v32, v33);
      sub_10064B708(&v78);

      v47 = &unk_101192850;
    }

    sub_1000095E8(&v78, v47);
    goto LABEL_22;
  }

  return result;
}

void sub_100835730(char a1)
{
  v3 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_shouldRequestForPlaylistSubscriptionUpdate;
  *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_shouldRequestForPlaylistSubscriptionUpdate) = a1;
  if (a1)
  {
    v7 = *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_autoupdatingResponse);
    if ((v7 & 0x8000000000000000) == 0)
    {
      v8 = v1;

      if (dispatch thunk of MusicAutoupdatingResponse.isLoaded.getter())
      {
        v9 = type metadata accessor for TaskPriority();
        (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
        v10 = swift_allocObject();
        swift_unknownObjectWeakInit();
        type metadata accessor for MainActor();

        v11 = static MainActor.shared.getter();
        v12 = swift_allocObject();
        v12[2] = v11;
        v12[3] = &protocol witness table for MainActor;
        v12[4] = v10;

        sub_1001F4CB8(0, 0, v5, &unk_100EE4E28, v12);
        sub_1004E6028(v7);

        *(v8 + v6) = 0;
      }

      else
      {

        sub_1004E6028(v7);
      }
    }
  }
}

void sub_100835910()
{
  v1 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_shouldRequestForPlaylistSubscriptionUpdate;
  if (*(v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_shouldRequestForPlaylistSubscriptionUpdate) == 1)
  {
    v5 = *(v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_autoupdatingResponse);
    if ((v5 & 0x8000000000000000) == 0)
    {
      v6 = v0;

      if (dispatch thunk of MusicAutoupdatingResponse.isLoaded.getter())
      {
        v7 = type metadata accessor for TaskPriority();
        (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
        v8 = swift_allocObject();
        swift_unknownObjectWeakInit();
        type metadata accessor for MainActor();

        v9 = static MainActor.shared.getter();
        v10 = swift_allocObject();
        v10[2] = v9;
        v10[3] = &protocol witness table for MainActor;
        v10[4] = v8;

        sub_1001F4CB8(0, 0, v3, &unk_100EE4E20, v10);
        sub_1004E6028(v5);

        *(v6 + v4) = 0;
      }

      else
      {

        sub_1004E6028(v5);
      }
    }
  }
}

uint64_t sub_100835AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[23] = a4;
  sub_10010FC20(&qword_101188C20);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v4[26] = v5;
  v4[27] = *(v5 - 8);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v6 = type metadata accessor for MusicPropertySource();
  v4[30] = v6;
  v4[31] = *(v6 - 8);
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  sub_10010FC20(&unk_1011814D0);
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v7 = type metadata accessor for Playlist();
  v4[37] = v7;
  v4[38] = *(v7 - 8);
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[41] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[42] = v9;
  v4[43] = v8;

  return _swift_task_switch(sub_100835D54, v9, v8);
}

uint64_t sub_100835D54()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 352) = Strong;
  if (!Strong)
  {

    goto LABEL_9;
  }

  v2 = Strong;
  v3 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(&v2[v3], v0 + 160, &unk_1011926C0);
  if (*(v0 + 168))
  {

    sub_1000095E8(v0 + 160, &unk_1011926C0);
LABEL_9:

    v12 = *(v0 + 8);

    return v12();
  }

  v4 = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(v0 + 160, &unk_1011926C0);
  if (!v4)
  {

    goto LABEL_9;
  }

  v5 = *(v0 + 296);
  v6 = *(v0 + 304);
  v7 = *(v0 + 288);
  v8 = [v4 traitCollection];
  sub_100137E8C();
  UITraitCollection.subscript.getter();

  *(v0 + 360) = *(v0 + 176);
  v9 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  sub_1000089F8(&v2[v9], v7, &unk_1011814D0);
  v10 = *(v6 + 48);
  if (v10(v7, 1, v5) == 1)
  {
    v11 = *(v0 + 288);

    sub_1000095E8(v11, &unk_1011814D0);
    goto LABEL_9;
  }

  v58 = v9;
  v59 = v10;
  v15 = *(v0 + 256);
  v14 = *(v0 + 264);
  v16 = *(v0 + 240);
  v17 = *(v0 + 248);
  (*(*(v0 + 304) + 32))(*(v0 + 320), *(v0 + 288), *(v0 + 296));
  v18 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_source;
  swift_beginAccess();
  v19 = *(v17 + 16);
  v19(v14, &v2[v18], v16);
  v20 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_initialSource;
  swift_beginAccess();
  v19(v15, &v2[v20], v16);
  sub_100866F00(&qword_10119A868, &type metadata accessor for MusicPropertySource);
  LOBYTE(v20) = dispatch thunk of static Equatable.== infix(_:_:)();
  v21 = *(v17 + 8);
  v21(v15, v16);
  v21(v14, v16);
  if (v20)
  {
    goto LABEL_18;
  }

  v22 = *(v0 + 296);
  v23 = *(v0 + 280);
  v24 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogPlaylist;
  swift_beginAccess();
  sub_1000089F8(&v2[v24], v23, &unk_1011814D0);
  if (v59(v23, 1, v22))
  {
    v26 = *(v0 + 208);
    v25 = *(v0 + 216);
    v27 = *(v0 + 200);
    sub_1000095E8(*(v0 + 280), &unk_1011814D0);
    (*(v25 + 56))(v27, 1, 1, v26);
LABEL_16:
    v36 = *(v0 + 200);
LABEL_17:
    sub_1000095E8(v36, &qword_101188C20);
    goto LABEL_18;
  }

  v29 = *(v0 + 304);
  v28 = *(v0 + 312);
  v30 = *(v0 + 296);
  v31 = *(v0 + 280);
  v32 = *(v0 + 216);
  v33 = *(v0 + 200);
  v56 = *(v0 + 208);
  v55 = *(v29 + 16);
  v55(v28, v31, v30);
  sub_1000095E8(v31, &unk_1011814D0);
  Playlist.lastModifiedDate.getter();
  v34 = *(v29 + 8);
  *(v0 + 368) = v34;
  *(v0 + 376) = (v29 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v34(v28, v30);
  v35 = *(v32 + 48);
  if (v35(v33, 1, v56) == 1)
  {
    goto LABEL_16;
  }

  v54 = v35;
  v57 = *(v0 + 296);
  v40 = *(v0 + 272);
  v41 = *(*(v0 + 216) + 32);
  v41(*(v0 + 232), *(v0 + 200), *(v0 + 208));
  sub_1000089F8(&v2[v58], v40, &unk_1011814D0);
  v42 = v59(v40, 1, v57);
  v43 = *(v0 + 208);
  v44 = *(v0 + 192);
  if (v42)
  {
    v45 = *(v0 + 272);
    v46 = *(v0 + 216);
    (*(v46 + 8))(*(v0 + 232), *(v0 + 208));
    sub_1000095E8(v45, &unk_1011814D0);
    (*(v46 + 56))(v44, 1, 1, v43);
    v36 = *(v0 + 192);
    goto LABEL_17;
  }

  v47 = *(v0 + 312);
  v48 = *(v0 + 296);
  v49 = *(v0 + 272);
  v55(v47, v49, v48);
  sub_1000095E8(v49, &unk_1011814D0);
  Playlist.lastModifiedDate.getter();
  v34(v47, v48);
  if (v54(v44, 1, v43) == 1)
  {
    (*(*(v0 + 216) + 8))(*(v0 + 232), *(v0 + 208));
    v36 = *(v0 + 192);
    goto LABEL_17;
  }

  v41(*(v0 + 224), *(v0 + 192), *(v0 + 208));
  if (static Date.> infix(_:_:)())
  {
    v50 = swift_task_alloc();
    *(v0 + 384) = v50;
    *v50 = v0;
    v50[1] = sub_100836530;
    v38 = *(v0 + 320);
    v39 = 1;
    goto LABEL_19;
  }

  v51 = *(v0 + 232);
  v52 = *(v0 + 208);
  v53 = *(*(v0 + 216) + 8);
  v53(*(v0 + 224), v52);
  v53(v51, v52);
LABEL_18:
  v37 = swift_task_alloc();
  *(v0 + 392) = v37;
  *v37 = v0;
  v37[1] = sub_1008367A8;
  v38 = *(v0 + 320);
  v39 = 0;
LABEL_19:

  return MusicLibrary.updateSubscribedPlaylist(_:ignoreMinimumRefreshInterval:)(v38, v39);
}

uint64_t sub_100836530()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 336);
    v4 = *(v2 + 344);
    v5 = sub_10086E32C;
  }

  else
  {
    v3 = *(v2 + 336);
    v4 = *(v2 + 344);
    v5 = sub_100836654;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100836654()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 320);
  v3 = *(v0 + 296);
  v5 = *(v0 + 224);
  v4 = *(v0 + 232);
  v6 = *(v0 + 208);
  v7 = *(v0 + 216);

  v8 = *(v7 + 8);
  v8(v5, v6);
  v8(v4, v6);
  v1(v2, v3);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1008367A8()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 336);
    v4 = *(v2 + 344);
    v5 = sub_10086E330;
  }

  else
  {
    v3 = *(v2 + 336);
    v4 = *(v2 + 344);
    v5 = sub_1008368CC;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1008368CC()
{
  v1 = v0[44];
  v2 = v0[40];
  v3 = v0[37];
  v4 = v0[38];

  (*(v4 + 8))(v2, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1008369E8()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_101182140);
  __chkstk_darwin(v2 - 8);
  v43 = &v39 - v3;
  v44 = sub_10010FC20(&qword_1011A4788);
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = &v39 - v4;
  v5 = sub_10010FC20(&qword_1011A4790);
  v47 = *(v5 - 8);
  v48 = v5;
  __chkstk_darwin(v5);
  v46 = &v39 - v6;
  v51 = sub_10010FC20(&qword_1011A4798);
  v45 = *(v51 - 8);
  __chkstk_darwin(v51);
  v50 = &v39 - v7;
  v8 = sub_10010FC20(&qword_10119A808);
  __chkstk_darwin(v8 - 8);
  v10 = &v39 - v9;
  v52 = sub_10010FC20(&qword_10118C2B0);
  v11 = *(v52 - 8);
  __chkstk_darwin(v52);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v49 = &v39 - v15;
  v16 = type metadata accessor for MusicPropertySource();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v39 - v21;
  v23 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_source;
  swift_beginAccess();
  (*(v17 + 16))(v22, v1 + v23, v16);
  (*(v17 + 104))(v19, enum case for MusicPropertySource.catalog(_:), v16);
  LOBYTE(v23) = static MusicPropertySource.== infix(_:_:)();
  v24 = *(v17 + 8);
  v24(v19, v16);
  result = (v24)(v22, v16);
  if (v23)
  {
    v26 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogEntries;
    swift_beginAccess();
    sub_1000089F8(v1 + v26, v10, &qword_10119A808);
    if ((*(v11 + 48))(v10, 1, v52) == 1)
    {
      return sub_1000095E8(v10, &qword_10119A808);
    }

    else
    {
      v27 = v11;
      v40 = v11;
      v28 = *(v11 + 32);
      v29 = v49;
      v30 = v52;
      v28(v49, v10, v52);
      (*(v27 + 16))(v13, v29, v30);
      sub_100020674(&unk_10119F050, &qword_10118C2B0);
      dispatch thunk of Sequence._copyToContiguousArray()();
      type metadata accessor for Playlist.Entry();
      sub_100866F00(&qword_1011A47A0, &type metadata accessor for Playlist.Entry);
      MusicLibraryMapping.Request.init(mappingItems:)();
      sub_100020674(&qword_1011A47A8, &qword_1011A4798);
      *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogEntriesAutoupdatingResponse) = MusicAutoupdatableRequest.autoupdatingResponse.getter();

      v31 = v41;
      dispatch thunk of MusicAutoupdatingResponse.$response.getter();
      sub_100009F78(0, &qword_101182960);
      v32 = static OS_dispatch_queue.main.getter();
      v53 = v32;
      v33 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
      v34 = v43;
      (*(*(v33 - 8) + 56))(v43, 1, 1, v33);
      sub_100020674(&qword_1011A47B0, &qword_1011A4788);
      sub_1000206BC();
      v35 = v46;
      v36 = v44;
      Publisher.receive<A>(on:options:)();
      sub_1000095E8(v34, &qword_101182140);

      (*(v42 + 8))(v31, v36);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_100020674(&qword_1011A47B8, &qword_1011A4790);
      v37 = v48;
      v38 = Publisher<>.sink(receiveValue:)();

      (*(v47 + 8))(v35, v37);
      (*(v45 + 8))(v50, v51);
      (*(v40 + 8))(v49, v30);
      *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogEntriesAutoupdatingResponseSubscription) = v38;
    }
  }

  return result;
}

uint64_t sub_10083720C(uint64_t a1)
{
  v40 = type metadata accessor for Playlist.Entry();
  v2 = *(v40 - 8);
  __chkstk_darwin(v40);
  v39 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10010FC20(&qword_10119A808);
  __chkstk_darwin(v4 - 8);
  v6 = v31 - v5;
  v7 = sub_10010FC20(&qword_1011A47C0);
  v41 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v31 - v8;
  v10 = sub_10010FC20(&qword_1011A47C8);
  __chkstk_darwin(v10 - 8);
  v12 = v31 - v11;
  v13 = sub_10010FC20(&qword_1011A47D0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v31 - v15;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = result;
    sub_1000089F8(a1, v12, &qword_1011A47C8);
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {

      return sub_1000095E8(v12, &qword_1011A47C8);
    }

    else
    {
      v34 = v18;
      v36 = v14;
      (*(v14 + 32))(v16, v12, v13);
      v35 = v16;
      v19 = MusicLibraryMapping.Response.mappedItems.getter();
      v20 = *(v19 + 16);
      if (v20)
      {
        v32 = v13;
        v33 = v6;
        v21 = *(v41 + 16);
        v22 = *(v41 + 80);
        v31[1] = v19;
        v23 = v19 + ((v22 + 32) & ~v22);
        v37 = *(v41 + 72);
        v38 = v21;
        v41 += 16;
        v24 = (v41 - 8);
        v25 = _swiftEmptyArrayStorage;
        do
        {
          v38(v9, v23, v7);
          MusicLibraryMapping.MappedItem.item.getter();
          (*v24)(v9, v7);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v25 = sub_10049B104(0, v25[2] + 1, 1, v25);
          }

          v27 = v25[2];
          v26 = v25[3];
          if (v27 >= v26 >> 1)
          {
            v25 = sub_10049B104(v26 > 1, v27 + 1, 1, v25);
          }

          v25[2] = v27 + 1;
          (*(v2 + 32))(v25 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v27, v39, v40);
          v23 += v37;
          --v20;
        }

        while (v20);

        v13 = v32;
        v6 = v33;
      }

      else
      {

        v25 = _swiftEmptyArrayStorage;
      }

      v42 = v25;
      sub_10010FC20(&qword_10119F090);
      sub_100020674(&qword_10119F098, &qword_10119F090);
      MusicItemCollection.init<A>(_:)();
      v28 = sub_10010FC20(&qword_10118C2B0);
      (*(*(v28 - 8) + 56))(v6, 0, 1, v28);
      v29 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_staticEntries;
      v30 = v34;
      swift_beginAccess();
      sub_1002190E0(v6, v30 + v29, &qword_10119A808);
      swift_endAccess();
      sub_1008422A8();

      sub_1000095E8(v6, &qword_10119A808);
      return (*(v36 + 8))(v35, v13);
    }
  }

  return result;
}

uint64_t sub_1008377B0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v4 - 8);
  v6 = v54 - v5;
  v7 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v7 - 8);
  v59 = v54 - v8;
  v9 = sub_10010FC20(&qword_101191570);
  __chkstk_darwin(v9 - 8);
  v62 = v54 - v10;
  v11 = type metadata accessor for Playlist.Entry();
  v63 = *(v11 - 8);
  v64 = v11;
  __chkstk_darwin(v11);
  v61 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10010FC20(&qword_10118C2B0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v60 = v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v54 - v17;
  v19 = sub_10010FC20(&qword_10119A808);
  __chkstk_darwin(v19 - 8);
  v21 = v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v54 - v23;
  if (*(v2 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_paginationTask))
  {
    goto LABEL_5;
  }

  v57 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_paginationTask;
  v58 = a1;
  v25 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogEntries;
  swift_beginAccess();
  sub_1000089F8(v2 + v25, v24, &qword_10119A808);
  v26 = v14[6];
  if (v26(v24, 1, v13))
  {
    v27 = &qword_10119A808;
    v28 = v24;
LABEL_4:
    sub_1000095E8(v28, v27);
    a1 = v58;
LABEL_5:
    v29 = type metadata accessor for IndexPath();
    v30 = *(v29 - 8);
    (*(v30 + 16))(v6, a1, v29);
    (*(v30 + 56))(v6, 0, 1, v29);
    v31 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_largestPrefetchIndexPath;
    swift_beginAccess();
    sub_10006B010(v6, v2 + v31, &unk_10118BCE0);
    return swift_endAccess();
  }

  v33 = v14[2];
  v54[1] = v14 + 2;
  v54[0] = v33;
  v33(v18, v24, v13);
  sub_1000095E8(v24, &qword_10119A808);
  v56 = v2;
  v34 = MusicItemCollection.hasNextBatch.getter();
  v2 = v56;
  v35 = v34;
  v55 = v14[1];
  v55(v18, v13);
  a1 = v58;
  if ((v35 & 1) == 0)
  {
    goto LABEL_5;
  }

  v36 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_staticEntries;
  swift_beginAccess();
  sub_1000089F8(v2 + v36, v21, &qword_10119A808);
  if (v26(v21, 1, v13))
  {
    sub_1000095E8(v21, &qword_10119A808);
    v37 = v62;
    (*(v63 + 56))(v62, 1, 1, v64);
LABEL_13:
    v27 = &qword_101191570;
    v28 = v37;
    goto LABEL_4;
  }

  v38 = v60;
  (v54[0])(v60, v21, v13);
  sub_1000095E8(v21, &qword_10119A808);
  sub_100020674(&unk_101186ED0, &qword_10118C2B0);
  v39 = dispatch thunk of Collection.isEmpty.getter();
  v41 = v63;
  v40 = v64;
  v37 = v62;
  if (v39)
  {
    v55(v38, v13);
    (*(v41 + 56))(v37, 1, 1, v40);
  }

  else
  {
    dispatch thunk of Collection.endIndex.getter();
    sub_100020674(&qword_1011A4780, &qword_10118C2B0);
    dispatch thunk of BidirectionalCollection.index(before:)();
    v42 = dispatch thunk of Collection.subscript.read();
    (*(v41 + 16))(v37);
    v42(v65, 0);
    v55(v38, v13);
    (*(v41 + 56))(v37, 0, 1, v40);
  }

  v43 = (*(v41 + 48))(v37, 1, v40);
  v2 = v56;
  v44 = v61;
  if (v43 == 1)
  {
    goto LABEL_13;
  }

  (*(v41 + 32))(v61, v37, v40);
  v45 = Playlist.Entry.position.getter();
  v46 = v58;
  if (IndexPath.item.getter() < v45)
  {
    (*(v41 + 8))(v44, v40);
    v2 = v56;
    a1 = v46;
    goto LABEL_5;
  }

  v2 = v56;
  if (*(v56 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isSearching))
  {
    (*(v41 + 8))(v44, v40);
    a1 = v46;
    goto LABEL_5;
  }

  v47 = type metadata accessor for TaskPriority();
  v48 = v59;
  (*(*(v47 - 8) + 56))(v59, 1, 1, v47);
  v49 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v50 = v2;
  v51 = static MainActor.shared.getter();
  v52 = swift_allocObject();
  v52[2] = v51;
  v52[3] = &protocol witness table for MainActor;
  v52[4] = v49;

  v53 = sub_10086E3AC(0, 0, v48, &unk_100EE4DD0, v52);
  (*(v41 + 8))(v44, v40);
  *(v50 + v57) = v53;
}

uint64_t sub_100838068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  sub_10010FC20(&unk_101181520);
  v4[9] = swift_task_alloc();
  sub_10010FC20(&qword_10119A808);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v5 = sub_10010FC20(&qword_10118C2B0);
  v4[12] = v5;
  v6 = *(v5 - 8);
  v4[13] = v6;
  v4[14] = *(v6 + 64);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = type metadata accessor for MainActor();
  v4[19] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[20] = v8;
  v4[21] = v7;

  return _swift_task_switch(sub_100838208, v8, v7);
}

uint64_t sub_100838208()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[22] = Strong;
  if (!Strong)
  {

LABEL_7:

    v27 = v0[1];

    return v27();
  }

  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[10];
  v5 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogEntries;
  v6 = Strong;
  swift_beginAccess();
  sub_1000089F8(v6 + v5, v4, &qword_10119A808);
  v7 = *(v3 + 48);
  v0[23] = v7;
  v0[24] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v8 = v7(v4, 1, v2);
  v9 = v0[12];
  v10 = v0[13];
  if (v8)
  {
    v12 = v0[10];
    v11 = v0[11];

    sub_1000095E8(v12, &qword_10119A808);
    (*(v10 + 56))(v11, 1, 1, v9);
    v13 = v0[23];
    v15 = v0[11];
    v14 = v0[12];
    type metadata accessor for Playlist.Entry();
    MusicItemCollection.init(arrayLiteral:)();
    if (v13(v15, 1, v14) != 1)
    {
      sub_1000095E8(v0[11], &qword_10119A808);
    }

    v16 = v0[22];
    v17 = v0[17];
    v34 = v17;
    v18 = v0[15];
    v19 = v0[12];
    v20 = v0[13];
    v21 = v0[9];
    v22 = type metadata accessor for TaskPriority();
    (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v20 + 16))(v18, v17, v19);

    v24 = static MainActor.shared.getter();
    v25 = (*(v20 + 80) + 40) & ~*(v20 + 80);
    v26 = swift_allocObject();
    *(v26 + 2) = v24;
    *(v26 + 3) = &protocol witness table for MainActor;
    *(v26 + 4) = v23;
    (*(v20 + 32))(&v26[v25], v18, v19);

    sub_1001F4CB8(0, 0, v21, &unk_100EE4DE0, v26);

    (*(v20 + 8))(v34, v19);
    goto LABEL_7;
  }

  v29 = v0[10];
  (*(v10 + 16))(v0[16], v29, v0[12]);
  sub_1000095E8(v29, &qword_10119A808);
  v30 = swift_task_alloc();
  v0[25] = v30;
  v31 = sub_100866F00(&qword_1011A4778, &type metadata accessor for Playlist.Entry);
  *v30 = v0;
  v30[1] = sub_100838658;
  v32 = v0[11];
  v33 = v0[12];

  return MusicItemCollection.nextBatch<>(limit:)(v32, 0, 1, v33, v31);
}

uint64_t sub_100838658()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  *(*v1 + 208) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 168);
  v7 = *(v2 + 160);
  if (v0)
  {
    v8 = sub_100838AA4;
  }

  else
  {
    v8 = sub_1008387F0;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_1008387F0()
{
  v1 = v0[23];
  v2 = v0[11];
  v3 = v0[12];

  v4 = v1(v2, 1, v3);
  v5 = v0[11];
  v6 = v0[12];
  if (v4 == 1)
  {
    v7 = v0[23];
    type metadata accessor for Playlist.Entry();
    MusicItemCollection.init(arrayLiteral:)();
    if (v7(v5, 1, v6) != 1)
    {
      sub_1000095E8(v0[11], &qword_10119A808);
    }
  }

  else
  {
    (*(v0[13] + 32))(v0[17], v0[11], v0[12]);
  }

  v8 = v0[22];
  v9 = v0[17];
  v21 = v9;
  v10 = v0[15];
  v11 = v0[12];
  v12 = v0[13];
  v13 = v0[9];
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v12 + 16))(v10, v9, v11);

  v16 = static MainActor.shared.getter();
  v17 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = v16;
  *(v18 + 3) = &protocol witness table for MainActor;
  *(v18 + 4) = v15;
  (*(v12 + 32))(&v18[v17], v10, v11);

  sub_1001F4CB8(0, 0, v13, &unk_100EE4DE0, v18);

  (*(v12 + 8))(v21, v11);

  v19 = v0[1];

  return v19();
}

uint64_t sub_100838AA4()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100838B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[23] = a4;
  v5[24] = a5;
  sub_10010FC20(&qword_101191570);
  v5[25] = swift_task_alloc();
  v6 = type metadata accessor for Playlist.Entry();
  v5[26] = v6;
  v5[27] = *(v6 - 8);
  v5[28] = swift_task_alloc();
  sub_10010FC20(&unk_10118BCE0);
  v5[29] = swift_task_alloc();
  v7 = type metadata accessor for IndexPath();
  v5[30] = v7;
  v5[31] = *(v7 - 8);
  v5[32] = swift_task_alloc();
  sub_10010FC20(&qword_10119A808);
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v8 = sub_10010FC20(&qword_10118C2B0);
  v5[36] = v8;
  v5[37] = *(v8 - 8);
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[40] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100838DEC, v10, v9);
}

uint64_t sub_100838DEC()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = v0[36];
    v4 = v0[37];
    v5 = v0[35];
    v6 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_staticEntries;
    swift_beginAccess();
    v63 = v6;
    sub_1000089F8(&v2[v6], v5, &qword_10119A808);
    v7 = *(v4 + 48);
    if (v7(v5, 1, v3) == 1)
    {
      v8 = v0[35];

      v9 = &qword_10119A808;
LABEL_6:
      v18 = v8;
LABEL_15:
      sub_1000095E8(v18, v9);
      goto LABEL_16;
    }

    v57 = v7;
    v10 = v0[39];
    v12 = v0[36];
    v11 = v0[37];
    v13 = v0[34];
    v59 = v0[31];
    v61 = v0[30];
    v58 = v0[29];
    (*(v11 + 32))(v10, v0[35], v12);
    static MusicItemCollection.+= infix(_:_:)();
    v14 = *(v11 + 16);
    v14(v13, v10, v12);
    v15 = *(v11 + 56);
    v15(v13, 0, 1, v12);
    swift_beginAccess();
    sub_1002190E0(v13, &v2[v63], &qword_10119A808);
    swift_endAccess();
    sub_1008422A8();
    sub_1000095E8(v13, &qword_10119A808);
    v14(v13, v10, v12);
    v15(v13, 0, 1, v12);
    v16 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogEntries;
    swift_beginAccess();
    sub_10006B010(v13, &v2[v16], &qword_10119A808);
    swift_endAccess();
    sub_1008369E8();
    *&v2[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_paginationTask] = 0;

    v17 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_largestPrefetchIndexPath;
    swift_beginAccess();
    sub_1000089F8(&v2[v17], v58, &unk_10118BCE0);
    if ((*(v59 + 48))(v58, 1, v61) == 1)
    {
      v8 = v0[29];
      (*(v0[37] + 8))(v0[39], v0[36]);

      v9 = &unk_10118BCE0;
      goto LABEL_6;
    }

    v19 = v0[36];
    v20 = v0[33];
    (*(v0[31] + 32))(v0[32], v0[29], v0[30]);
    sub_1000089F8(&v2[v63], v20, &qword_10119A808);
    v21 = v57(v20, 1, v19);
    v22 = v0[36];
    v23 = v0[33];
    if (v21)
    {
      v24 = v0[39];
      v25 = v0[37];
      v27 = v0[31];
      v26 = v0[32];
      v28 = v0[30];
      v29 = v0[27];
      v62 = v0[25];
      v64 = v0[26];

      (*(v27 + 8))(v26, v28);
      (*(v25 + 8))(v24, v22);
      sub_1000095E8(v23, &qword_10119A808);
      (*(v29 + 56))(v62, 1, 1, v64);
LABEL_14:
      v18 = v0[25];
      v9 = &qword_101191570;
      goto LABEL_15;
    }

    v14(v0[38], v0[33], v0[36]);
    sub_1000095E8(v23, &qword_10119A808);
    sub_100020674(&unk_101186ED0, &qword_10118C2B0);
    v30 = dispatch thunk of Collection.isEmpty.getter();
    v32 = v0[37];
    v31 = v0[38];
    v33 = v0[36];
    v34 = v0[26];
    v35 = v0[27];
    v36 = v0[25];
    if (v30)
    {
      v37 = *(v32 + 8);
      v37(v0[38], v0[36]);
      (*(v35 + 56))(v36, 1, 1, v34);
    }

    else
    {
      dispatch thunk of Collection.endIndex.getter();
      sub_100020674(&qword_1011A4780, &qword_10118C2B0);
      dispatch thunk of BidirectionalCollection.index(before:)();
      v38 = dispatch thunk of Collection.subscript.read();
      (*(v35 + 16))(v36);
      v38(v0 + 2, 0);
      v37 = *(v32 + 8);
      v37(v31, v33);
      (*(v35 + 56))(v36, 0, 1, v34);
    }

    v39 = v0[26];
    v40 = v0[27];
    v41 = v0[25];
    if ((*(v40 + 48))(v41, 1, v39) == 1)
    {
      v42 = v0[39];
      v43 = v0[36];
      v45 = v0[31];
      v44 = v0[32];
      v46 = v0[30];

      (*(v45 + 8))(v44, v46);
      v37(v42, v43);
      goto LABEL_14;
    }

    (*(v40 + 32))(v0[28], v41, v39);
    v49 = Playlist.Entry.position.getter();
    v50 = IndexPath.item.getter();
    v51 = v0[39];
    v65 = v0[36];
    v52 = v0[31];
    v53 = v0[32];
    v60 = v0[30];
    v54 = v0[27];
    v55 = v0[28];
    v56 = v0[26];
    if (v50 >= v49)
    {
      sub_1008377B0(v53);
    }

    (*(v54 + 8))(v55, v56);
    (*(v52 + 8))(v53, v60);
    v37(v51, v65);
  }

LABEL_16:

  v47 = v0[1];

  return v47();
}

uint64_t sub_1008395B0()
{
  v1 = v0;
  v2 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v2 - 8);
  v4 = &v20 - v3;
  v5 = sub_10010FC20(&qword_10118C2B0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - v7;
  v9 = sub_10010FC20(&qword_10119A808);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogEntries;
  swift_beginAccess();
  sub_1000089F8(v1 + v12, v11, &qword_10119A808);
  if ((*(v6 + 48))(v11, 1, v5))
  {
    return sub_1000095E8(v11, &qword_10119A808);
  }

  (*(v6 + 16))(v8, v11, v5);
  sub_1000095E8(v11, &qword_10119A808);
  v14 = MusicItemCollection.hasNextBatch.getter();
  result = (*(v6 + 8))(v8, v5);
  if (v14)
  {
    v15 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_paginationTask;
    if (*(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_paginationTask))
    {

      sub_10010FC20(&qword_1011824A0);
      Task.cancel()();
    }

    v16 = type metadata accessor for TaskPriority();
    (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for MainActor();

    v18 = static MainActor.shared.getter();
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = &protocol witness table for MainActor;
    v19[4] = v17;

    *(v1 + v15) = sub_10086E3AC(0, 0, v4, &unk_100EE4DB0, v19);
  }

  return result;
}

uint64_t sub_100839924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  sub_10010FC20(&unk_101181520);
  v4[9] = swift_task_alloc();
  v5 = sub_10010FC20(&qword_10118C2B0);
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  sub_10010FC20(&qword_10119A808);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  sub_10010FC20(&unk_1011814D0);
  v4[17] = swift_task_alloc();
  v6 = type metadata accessor for Playlist();
  v4[18] = v6;
  v4[19] = *(v6 - 8);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = type metadata accessor for MainActor();
  v4[23] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[24] = v8;
  v4[25] = v7;

  return _swift_task_switch(sub_100839B5C, v8, v7);
}

uint64_t sub_100839B5C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[26] = Strong;
  if (!Strong)
  {

    goto LABEL_5;
  }

  v2 = Strong;
  v3 = v0[18];
  v4 = v0[19];
  v5 = v0[17];
  v6 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogPlaylist;
  swift_beginAccess();
  sub_1000089F8(v2 + v6, v5, &unk_1011814D0);
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    v7 = v0[17];

    sub_1000095E8(v7, &unk_1011814D0);
LABEL_5:

    v8 = v0[1];

    return v8();
  }

  (*(v0[19] + 32))(v0[21], v0[17], v0[18]);
  v0[27] = swift_allocBox();
  v0[28] = v10;
  sub_10010FC20(&qword_101183990);
  v11 = swift_allocObject();
  v0[29] = v11;
  *(v11 + 16) = xmmword_100EBC6C0;
  sub_10010FC20(&unk_10118C1C0);
  static PartialMusicProperty<A>.entries.getter();
  v12 = MusicRelationshipProperty.limit(_:)();

  *(v11 + 32) = v12;
  v13 = swift_task_alloc();
  v0[30] = v13;
  *v13 = v0;
  v13[1] = sub_100839E10;
  v14 = v0[20];
  v15 = v0[18];

  return dispatch thunk of MusicPropertyContainer.with(_:)(v14, v11, v15, &protocol witness table for Playlist);
}

uint64_t sub_100839E10()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  v3 = *(v2 + 200);
  v4 = *(v2 + 192);
  if (v0)
  {
    v5 = sub_10083A344;
  }

  else
  {
    v5 = sub_100839F68;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100839F68()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v4 = v0[16];
  v5 = v0[10];
  v6 = v0[11];
  Playlist.entries.getter();
  v7 = *(v2 + 8);
  v0[32] = v7;
  v0[33] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v1, v3);
  v8 = *(v6 + 48);
  v0[34] = v8;
  v0[35] = (v6 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v9 = v8(v4, 1, v5);
  v10 = v0[16];
  if (v9 == 1)
  {
    v11 = v0[10];
    type metadata accessor for Playlist.Entry();
    MusicItemCollection.init(arrayLiteral:)();
    if (v8(v10, 1, v11) != 1)
    {
      sub_1000095E8(v0[16], &qword_10119A808);
    }
  }

  else
  {
    (*(v0[11] + 32))(v0[28], v0[16], v0[10]);
  }

  v12 = v0[28];
  v13 = v0[14];
  v14 = v0[10];
  v15 = v0[11];
  v16 = *(v15 + 16);
  v0[36] = v16;
  v16(v13, v12, v14);
  v17 = MusicItemCollection.hasNextBatch.getter();
  v19 = *(v15 + 8);
  v18 = v15 + 8;
  v0[37] = v19;
  v19(v13, v14);
  if (v17)
  {
    v0[38] = v18 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    (v0[36])(v0[12], v0[28], v0[10]);
    v20 = swift_task_alloc();
    v0[39] = v20;
    v21 = sub_100866F00(&qword_1011A4778, &type metadata accessor for Playlist.Entry);
    *v20 = v0;
    v20[1] = sub_10083A450;
    v22 = v0[15];
    v23 = v0[10];

    return MusicItemCollection.nextBatch<>(limit:)(v22, 10000, 0, v23, v21);
  }

  else
  {
    v24 = v0[32];
    v26 = v0[26];
    v25 = v0[27];
    v27 = v0[21];
    v28 = v0[18];
    v29 = v0[9];

    v30 = type metadata accessor for TaskPriority();
    (*(*(v30 - 8) + 56))(v29, 1, 1, v30);
    v31 = v26;

    v32 = static MainActor.shared.getter();
    v33 = swift_allocObject();
    v33[2] = v32;
    v33[3] = &protocol witness table for MainActor;
    v33[4] = v31;
    v33[5] = v25;
    sub_1001F4CB8(0, 0, v29, &unk_100EE4DC0, v33);

    v24(v27, v28);

    v34 = v0[1];

    return v34();
  }
}

uint64_t sub_10083A344()
{
  v1 = v0[26];
  v2 = v0[21];
  v3 = v0[18];
  v4 = v0[19];

  (*(v4 + 8))(v2, v3);
  swift_deallocBox();

  v5 = v0[1];

  return v5();
}

uint64_t sub_10083A450()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  (*(v2 + 296))(*(v2 + 96), *(v2 + 80));
  v3 = *(v2 + 200);
  v4 = *(v2 + 192);
  if (v0)
  {
    v5 = sub_10083A958;
  }

  else
  {
    v5 = sub_10083A5E0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10083A5E0()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 80);
  if ((*(v0 + 272))(v1, 1, v2) == 1)
  {
    sub_1000095E8(v1, &qword_10119A808);
  }

  else
  {
    v3 = *(v0 + 296);
    v4 = *(v0 + 104);
    (*(*(v0 + 88) + 32))(v4, v1, v2);
    type metadata accessor for Playlist.Entry();
    static MusicItemCollection.+= infix(_:_:)();
    v3(v4, v2);
  }

  v5 = *(v0 + 296);
  v6 = *(v0 + 112);
  v7 = *(v0 + 80);
  v8 = *(v0 + 88) + 8;
  (*(v0 + 288))(v6, *(v0 + 224), v7);
  v9 = MusicItemCollection.hasNextBatch.getter();
  v5(v6, v7);
  if (v9)
  {
    *(v0 + 304) = v8 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    (*(v0 + 288))(*(v0 + 96), *(v0 + 224), *(v0 + 80));
    v10 = swift_task_alloc();
    *(v0 + 312) = v10;
    v11 = sub_100866F00(&qword_1011A4778, &type metadata accessor for Playlist.Entry);
    *v10 = v0;
    v10[1] = sub_10083A450;
    v12 = *(v0 + 120);
    v13 = *(v0 + 80);

    return MusicItemCollection.nextBatch<>(limit:)(v12, 10000, 0, v13, v11);
  }

  else
  {
    v14 = *(v0 + 256);
    v16 = *(v0 + 208);
    v15 = *(v0 + 216);
    v17 = *(v0 + 168);
    v18 = *(v0 + 144);
    v19 = *(v0 + 72);

    v20 = type metadata accessor for TaskPriority();
    (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
    v21 = v16;

    v22 = static MainActor.shared.getter();
    v23 = swift_allocObject();
    v23[2] = v22;
    v23[3] = &protocol witness table for MainActor;
    v23[4] = v21;
    v23[5] = v15;
    sub_1001F4CB8(0, 0, v19, &unk_100EE4DC0, v23);

    v14(v17, v18);

    v24 = *(v0 + 8);

    return v24();
  }
}

uint64_t sub_10083A958()
{
  v1 = v0[32];
  v2 = v0[26];
  v3 = v0[21];
  v4 = v0[18];

  v1(v3, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10083AA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a4;
  sub_10010FC20(&qword_10119A808);
  v4[15] = swift_task_alloc();
  v4[16] = sub_10010FC20(&qword_10118C2B0);
  v4[17] = swift_projectBox();
  type metadata accessor for MainActor();
  v4[18] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10083AB54, v6, v5);
}

uint64_t sub_10083AB54()
{
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[14];

  swift_beginAccess();
  v5 = *(v3 - 8);
  v6 = *(v5 + 16);
  v6(v2, v1, v3);
  v7 = *(v5 + 56);
  v7(v2, 0, 1, v3);
  v8 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogEntries;
  swift_beginAccess();
  sub_10006B010(v2, v4 + v8, &qword_10119A808);
  swift_endAccess();
  swift_beginAccess();
  v6(v2, v1, v3);
  v7(v2, 0, 1, v3);
  v9 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_staticEntries;
  swift_beginAccess();
  sub_1002190E0(v2, v4 + v9, &qword_10119A808);
  swift_endAccess();
  sub_1008422A8();
  sub_1000095E8(v2, &qword_10119A808);
  sub_1008369E8();
  *(v4 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_paginationTask) = 0;

  v10 = v0[1];

  return v10();
}

void sub_10083AD58()
{
  v1 = sub_10010FC20(&qword_10119A808);
  __chkstk_darwin(v1 - 8);
  v3 = v11 - v2 + 22;
  v4 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentingEntries;
  swift_beginAccess();
  sub_1000089F8(v0 + v4, v3, &qword_10119A808);
  v5 = sub_10010FC20(&qword_10118C2B0);
  LODWORD(v4) = (*(*(v5 - 8) + 48))(v3, 1, v5);
  sub_1000095E8(v3, &qword_10119A808);
  if (v4 != 1 && (*(v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isSearching) & 1) == 0)
  {
    v6 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v0 + v6, v11, &unk_1011926C0);
    if (v11[8])
    {
      sub_1000095E8(v11, &unk_1011926C0);
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(v11, &unk_1011926C0);
      if (Strong)
      {
        v8 = sub_1006A3A7C();

        if (v8)
        {
          if (v8 >> 62)
          {
            v9 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (v9)
          {
            sub_10083AF5C(1);
          }
        }
      }
    }
  }
}

uint64_t sub_10083AF5C(int a1)
{
  v2 = v1;
  v4 = sub_10010FC20(&qword_10118C2B0);
  v89 = *(v4 - 8);
  v90 = v4;
  __chkstk_darwin(v4);
  v84 = &v82 - v5;
  v6 = sub_10010FC20(&qword_10119A808);
  v7 = __chkstk_darwin(v6 - 8);
  v85 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v82 - v9;
  v11 = type metadata accessor for IndexSet();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(&v1[v15], &aBlock, &unk_1011926C0);
  if (v94)
  {
    sub_1000095E8(&aBlock, &unk_1011926C0);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(&aBlock, &unk_1011926C0);
    if (Strong)
    {
      v17 = sub_1006A6078();

      v18 = [v17 hasUncommittedUpdates];
      if (v18)
      {
        v19 = 0;
        v2[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_postponeSectionUpdate] = 1;
        return sub_100020438(v19);
      }
    }
  }

  v91 = v15;
  v2[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_postponeSectionUpdate] = 0;
  IndexSet.init()();
  v20 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_includeHeaderOnNextReload;
  v21 = v90;
  if (v2[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_includeHeaderOnNextReload] == 1)
  {
    v22 = *&v2[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sections];
    v23 = *(v22 + 16);
    if (v23)
    {
      v24 = 0;
      v25 = v22 + 32;
      while (*(v25 + v24))
      {
        if (v23 == ++v24)
        {
          goto LABEL_13;
        }
      }

      IndexSet.insert(_:)(v24);
      v2[v20] = 0;
    }
  }

LABEL_13:
  v86 = a1;
  v87 = v12;
  v88 = v14;
  v26 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentingEntries;
  swift_beginAccess();
  sub_1000089F8(&v2[v26], v10, &qword_10119A808);
  v27 = *(v89 + 48);
  v28 = v27(v10, 1, v21);
  sub_1000095E8(v10, &qword_10119A808);
  if (v28 == 1)
  {
    v29 = v11;
    v30 = objc_opt_self();
    v31 = swift_allocObject();
    v32 = v88;
    v31[2] = v2;
    v31[3] = v32;
    v33 = swift_allocObject();
    *(v33 + 16) = sub_10086E328;
    *(v33 + 24) = v31;
    v97 = sub_10018A020;
    v98 = v33;
    aBlock = _NSConcreteStackBlock;
    v94 = 1107296256;
    v95 = sub_100029B9C;
    v96 = &unk_1010C2108;
    v34 = _Block_copy(&aBlock);
    v35 = v2;

    [v30 performWithoutAnimation:v34];
    _Block_release(v34);
    LOBYTE(v30) = swift_isEscapingClosureAtFileLocation();

    if ((v30 & 1) == 0)
    {
      sub_1000089F8(&v2[v91], &aBlock, &unk_1011926C0);
      if (v94)
      {
        sub_1000095E8(&aBlock, &unk_1011926C0);
LABEL_41:
        (*(v87 + 8))(v32, v29);
LABEL_86:

        v19 = 0;
        return sub_100020438(v19);
      }

      v48 = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(&aBlock, &unk_1011926C0);
      if (!v48)
      {
        goto LABEL_41;
      }

      v49 = sub_1006A6078();

      v50 = swift_allocObject();
      *(v50 + 16) = v35;
      v51 = swift_allocObject();
      *(v51 + 16) = sub_100869A3C;
      *(v51 + 24) = v50;
      v97 = sub_10018A020;
      v98 = v51;
      aBlock = _NSConcreteStackBlock;
      v94 = 1107296256;
      v95 = sub_100029B9C;
      v96 = &unk_1010C2180;
      v52 = _Block_copy(&aBlock);
      v53 = v35;

      [v49 performBatchUpdates:v52 completion:0];
      _Block_release(v52);

      (*(v87 + 8))(v32, v29);

      v19 = sub_100869A3C;
      return sub_100020438(v19);
    }

    __break(1u);
LABEL_74:
    v68 = _CocoaArrayWrapper.endIndex.getter();

    if (!v68)
    {
      goto LABEL_75;
    }

    goto LABEL_72;
  }

  sub_1000089F8(&v2[v91], &aBlock, &unk_1011926C0);
  v83 = v11;
  if (v94)
  {
    sub_1000095E8(&aBlock, &unk_1011926C0);
  }

  else
  {
    v36 = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(&aBlock, &unk_1011926C0);
    if (v36)
    {
      v37 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_loadingTimer;
      [*&v36[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_loadingTimer] invalidate];
      v38 = *&v36[v37];
      *&v36[v37] = 0;
    }
  }

  v39 = &v2[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentedLoadingState];
  v40 = *&v2[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentedLoadingState];
  v41 = &v2[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentedLoadingState + 8];
  v42 = *v41;
  v43 = *&v2[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentedLoadingState + 16];
  if ((v40 & 0xFFFFFFFFFFFFFEFELL) != 0x3FFFFFEFELL)
  {
    if (v40 >> 62 == 3)
    {
      if (v40 != 0xC000000000000000 || (v40 = 0xC000000000000000, v43 | v42))
      {
LABEL_31:
        v40 = 0xC000000000000001;
        goto LABEL_32;
      }

LABEL_29:
      if (v40 == 0xC000000000000000)
      {
        v40 = 0xC000000000000000;
        if (!(v43 | v42))
        {
          goto LABEL_32;
        }
      }

      goto LABEL_31;
    }

    if ((v40 & 1) == 0)
    {
      v60 = v85;
      sub_1000089F8(&v2[v26], v85, &qword_10119A808);
      v61 = v90;
      if (v27(v60, 1, v90))
      {
        sub_1000095E8(v60, &qword_10119A808);
        v40 = *v39;
        v42 = v39[1];
        v43 = v39[2];
      }

      else
      {
        v62 = v89;
        v63 = v84;
        (*(v89 + 16))(v84, v60, v61);
        sub_1000095E8(v60, &qword_10119A808);
        sub_100020674(&unk_101186ED0, &qword_10118C2B0);
        dispatch thunk of Collection.startIndex.getter();
        dispatch thunk of Collection.endIndex.getter();
        (*(v62 + 8))(v63, v61);
        v40 = *v39;
        v42 = v39[1];
        v43 = v39[2];
        if (aBlock != v92)
        {
          goto LABEL_32;
        }
      }
    }
  }

  if ((v40 & 0xFFFFFFFFFFFFFEFELL) == 0x3FFFFFEFELL)
  {
    goto LABEL_33;
  }

  if (v40 >> 62 == 3)
  {
    goto LABEL_29;
  }

  if (v40)
  {
LABEL_32:
    *v39 = 0x3FFFFFEFELL;
    *v41 = 0;
    v41[1] = 0;
    sub_100817B04(v40, v42, v43);
    sub_1004E5BA4(v40);
  }

LABEL_33:
  v44 = *&v2[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sections];
  v45 = *(v44 + 16);
  v46 = v44 + 32;
  v29 = v88;
  v32 = v91;
  if (v45)
  {
    v47 = 0;
    while (*(v46 + v47) != 3)
    {
      if (v45 == ++v47)
      {
        goto LABEL_37;
      }
    }

    IndexSet.insert(_:)(v47);
    if (v86)
    {
      goto LABEL_47;
    }
  }

  else
  {
LABEL_37:
    if (v86)
    {
      goto LABEL_47;
    }
  }

  v54 = *(v44 + 16);
  if (!v54)
  {
LABEL_47:
    sub_100846A54();
    goto LABEL_48;
  }

  v55 = 0;
  while (*(v46 + v55) != 2)
  {
    if (v54 == ++v55)
    {
      goto LABEL_47;
    }
  }

  IndexSet.insert(_:)(v55);
LABEL_48:
  sub_1000089F8(&v2[v32], &aBlock, &unk_1011926C0);
  if (v94)
  {
    goto LABEL_49;
  }

  v56 = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(&aBlock, &unk_1011926C0);
  if (v56)
  {
    v35 = &OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_includeRelatedContentOnNextReload;
    v57 = v56[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_includeRelatedContentOnNextReload];

    if (v57)
    {
      v58 = *(v44 + 16);
      if (v58)
      {
        v59 = 0;
        while (*(v46 + v59) != 10)
        {
          if (v58 == ++v59)
          {
            goto LABEL_80;
          }
        }

        IndexSet.insert(_:)(v59);
        sub_1000089F8(&v2[v32], &aBlock, &unk_1011926C0);
        if (v94)
        {
          sub_1000095E8(&aBlock, &unk_1011926C0);
          goto LABEL_77;
        }

        v31 = swift_unknownObjectWeakLoadStrong();
        sub_1000095E8(&aBlock, &unk_1011926C0);
        if (!v31)
        {
LABEL_77:
          sub_1000089F8(&v2[v32], &aBlock, &unk_1011926C0);
          if ((v94 & 1) == 0)
          {
            v69 = swift_unknownObjectWeakLoadStrong();
            sub_1000095E8(&aBlock, &unk_1011926C0);
            if (v69)
            {
              v69[*v35] = 0;
            }

            goto LABEL_80;
          }

LABEL_49:
          sub_1000095E8(&aBlock, &unk_1011926C0);
          goto LABEL_80;
        }

        sub_1000089F8(&v2[v32], &aBlock, &unk_1011926C0);
        if (v94)
        {
          sub_1000095E8(&aBlock, &unk_1011926C0);
        }

        else
        {
          v64 = swift_unknownObjectWeakLoadStrong();
          sub_1000095E8(&aBlock, &unk_1011926C0);
          if (v64)
          {
            v65 = sub_1006A3A7C();

            v66 = v65;
            if (!v65)
            {
LABEL_76:
              *(v31 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_isShowingRelatedContent) = v66;

              goto LABEL_77;
            }

            if (v65 >> 62)
            {
              goto LABEL_74;
            }

            v67 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);

            if (v67)
            {
LABEL_72:
              v66 = sub_100818C54();
              goto LABEL_76;
            }
          }
        }

LABEL_75:
        v66 = 0;
        goto LABEL_76;
      }
    }
  }

LABEL_80:
  v70 = objc_opt_self();
  v71 = swift_allocObject();
  *(v71 + 16) = v2;
  *(v71 + 24) = v29;
  v72 = swift_allocObject();
  *(v72 + 16) = sub_100869A60;
  *(v72 + 24) = v71;
  v97 = sub_10018A020;
  v98 = v72;
  aBlock = _NSConcreteStackBlock;
  v94 = 1107296256;
  v95 = sub_100029B9C;
  v96 = &unk_1010C21F8;
  v73 = _Block_copy(&aBlock);
  v74 = v2;

  [v70 performWithoutAnimation:v73];
  _Block_release(v73);
  LOBYTE(v70) = swift_isEscapingClosureAtFileLocation();

  if ((v70 & 1) == 0)
  {
    sub_1000089F8(&v2[v32], &aBlock, &unk_1011926C0);
    if (v94)
    {
      sub_1000095E8(&aBlock, &unk_1011926C0);
    }

    else
    {
      v76 = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(&aBlock, &unk_1011926C0);
      if (v76)
      {
        v77 = sub_1006A6078();

        v78 = swift_allocObject();
        *(v78 + 16) = v74;
        v79 = swift_allocObject();
        *(v79 + 16) = sub_100869A7C;
        *(v79 + 24) = v78;
        v97 = sub_10018A020;
        v98 = v79;
        aBlock = _NSConcreteStackBlock;
        v94 = 1107296256;
        v95 = sub_100029B9C;
        v96 = &unk_1010C2270;
        v80 = _Block_copy(&aBlock);
        v81 = v74;

        [v77 performBatchUpdates:v80 completion:0];
        _Block_release(v80);

        (*(v87 + 8))(v29, v83);

        goto LABEL_86;
      }
    }

    (*(v87 + 8))(v29, v83);
    goto LABEL_86;
  }

  __break(1u);
  return result;
}

void sub_10083BDF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexSet();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v8 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(a1 + v8, v15, &unk_1011926C0);
  if (v15[8])
  {
    sub_1000095E8(v15, &unk_1011926C0);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v15, &unk_1011926C0);
    if (Strong)
    {
      v10 = sub_1006A6078();

      (*(v5 + 16))(v7, a2, v4);
      IndexSet._bridgeToObjectiveC()(v11);
      v13 = v12;
      (*(v5 + 8))(v7, v4);
      [v10 reloadSections:v13];
    }
  }
}

void sub_10083BF94()
{
  sub_10084BBB4();
  sub_10084C6A4();
  sub_10084A45C();
  sub_10084E17C();
}

uint64_t sub_10083BFC4(char a1)
{
  v1 = a1 & 1;
  v2 = sub_10083D5A8();
  if (*(v2 + OBJC_IVAR____TtCV5Music6Header13Configuration__shouldIncludeFloatingArtwork) == v1)
  {
    *(v2 + OBJC_IVAR____TtCV5Music6Header13Configuration__shouldIncludeFloatingArtwork) = v1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100866F00(&unk_1011A4750, _s13ConfigurationCMa);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10083C114@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v73 = a1;
  v3 = sub_10010FC20(&qword_101186E00);
  __chkstk_darwin(v3 - 8);
  v65 = &v61 - v4;
  v64 = type metadata accessor for SocialProfile();
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v62 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&qword_101183AD0);
  __chkstk_darwin(v6 - 8);
  v69 = &v61 - v7;
  v68 = type metadata accessor for UserProfile();
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v66 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10010FC20(&qword_101192860);
  __chkstk_darwin(v9 - 8);
  v11 = &v61 - v10;
  v72 = type metadata accessor for ContainerDetail.AttributionItem(0);
  v74 = *(v72 - 8);
  __chkstk_darwin(v72);
  v70 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10010FC20(&unk_1011814D0);
  v14 = __chkstk_darwin(v13 - 8);
  v71 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v61 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v61 - v20;
  __chkstk_darwin(v19);
  v23 = &v61 - v22;
  v24 = type metadata accessor for Playlist();
  v25 = *(v24 - 8);
  v26 = __chkstk_darwin(v24);
  v28 = &v61 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = &v61 - v29;
  v31 = sub_10082C800();
  if (v31)
  {
    v32 = v31[2];

    if (v32)
    {
      v33 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
      swift_beginAccess();
      sub_1000089F8(v2 + v33, v23, &unk_1011814D0);
      if ((*(v25 + 48))(v23, 1, v24) != 1)
      {
        v44 = *(v25 + 32);
        v44(v30, v23, v24);
        v45 = v73;
        v44(v73, v30, v24);
        v36 = v72;
        swift_storeEnumTagMultiPayload();
        v43 = v45;
        goto LABEL_20;
      }

      sub_1000095E8(v23, &unk_1011814D0);
    }
  }

  v34 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogPlaylist;
  swift_beginAccess();
  sub_1000089F8(v2 + v34, v21, &unk_1011814D0);
  v35 = *(v25 + 48);
  if (v35(v21, 1, v24))
  {
    sub_1000095E8(v21, &unk_1011814D0);
    v36 = v72;
    (*(v74 + 56))(v11, 1, 1, v72);
LABEL_8:
    sub_1000095E8(v11, &qword_101192860);
    goto LABEL_9;
  }

  (*(v25 + 16))(v28, v21, v24);
  sub_1000095E8(v21, &unk_1011814D0);
  sub_10083CCC4(v11);
  (*(v25 + 8))(v28, v24);
  v36 = v72;
  if ((*(v74 + 48))(v11, 1, v72) == 1)
  {
    goto LABEL_8;
  }

  v46 = v70;
  sub_100869470(v11, v70, type metadata accessor for ContainerDetail.AttributionItem);
  if (sub_10069BD04())
  {
    v47 = v73;
    sub_100869470(v46, v73, type metadata accessor for ContainerDetail.AttributionItem);
    v43 = v47;
    goto LABEL_20;
  }

  sub_100867794(v46, type metadata accessor for ContainerDetail.AttributionItem);
LABEL_9:
  v37 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  sub_1000089F8(v2 + v37, v18, &unk_1011814D0);
  if (v35(v18, 1, v24))
  {
    sub_1000095E8(v18, &unk_1011814D0);
  }

  else
  {
    (*(v25 + 16))(v28, v18, v24);
    sub_1000095E8(v18, &unk_1011814D0);
    Playlist.curatorName.getter();
    v40 = v39;
    (*(v25 + 8))(v28, v24);
    if (v40)
    {

      goto LABEL_16;
    }
  }

  v38 = v71;
  sub_1000089F8(v2 + v37, v71, &unk_1011814D0);
  if (!v35(v38, 1, v24))
  {
    (*(v25 + 16))(v28, v38, v24);
    sub_1000095E8(v38, &unk_1011814D0);
    v41 = Playlist.isOwner.getter();
    (*(v25 + 8))(v28, v24);
    if (v41 == 2)
    {
      goto LABEL_16;
    }

    v43 = v73;
    if ((v41 & 1) == 0)
    {
      v42 = 1;
      return (*(v74 + 56))(v43, v42, 1, v36);
    }

    v49 = v73;
    if (sub_10082C800())
    {

LABEL_25:
      v42 = 1;
      v43 = v49;
      return (*(v74 + 56))(v43, v42, 1, v36);
    }

    static ApplicationCapabilities.shared.getter(v75);
    sub_100014984(v75);
    if (v76 > 1u)
    {
      v50 = v69;
      if (v76 == 2)
      {

LABEL_33:
        if (qword_10117F278 != -1)
        {
          swift_once();
        }

        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v52 = v67;
        v53 = v68;
        if ((*(v67 + 48))(v50, 1, v68) == 1)
        {
          sub_1000095E8(v50, &qword_101183AD0);
          goto LABEL_25;
        }

        v54 = v66;
        (*(v52 + 32))();
        if ((UserProfile.isOnboarded.getter() & 1) == 0)
        {
          (*(v52 + 8))(v54, v53);
          goto LABEL_25;
        }

        v55 = v52;
        v56 = v65;
        UserProfile.socialProfile.getter();
        (*(v55 + 8))(v54, v53);
        v57 = v63;
        v58 = v64;
        if ((*(v63 + 48))(v56, 1, v64) == 1)
        {
          sub_1000095E8(v56, &qword_101186E00);
          goto LABEL_25;
        }

        v59 = *(v57 + 32);
        v60 = v62;
        v59(v62, v56, v58);
        v59(v49, v60, v58);
        swift_storeEnumTagMultiPayload();
        v43 = v49;
LABEL_20:
        v42 = 0;
        return (*(v74 + 56))(v43, v42, 1, v36);
      }
    }

    else
    {
      v50 = v69;
    }

    v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v51 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_33;
  }

  sub_1000095E8(v38, &unk_1011814D0);
LABEL_16:
  v42 = 1;
  v43 = v73;
  return (*(v74 + 56))(v43, v42, 1, v36);
}

uint64_t sub_10083CCC4@<X0>(char *a1@<X8>)
{
  v49 = a1;
  v1 = sub_10010FC20(&unk_10118C170);
  __chkstk_darwin(v1 - 8);
  v46 = &v42 - v2;
  v3 = type metadata accessor for Curator();
  v44 = *(v3 - 8);
  v45 = v3;
  __chkstk_darwin(v3);
  v42 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10010FC20(&qword_10118DE80);
  __chkstk_darwin(v5 - 8);
  v7 = &v42 - v6;
  v8 = type metadata accessor for Genre();
  v47 = *(v8 - 8);
  v48 = v8;
  __chkstk_darwin(v8);
  v43 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10010FC20(&qword_1011A4770);
  __chkstk_darwin(v10 - 8);
  v12 = &v42 - v11;
  v13 = type metadata accessor for RadioShow();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10010FC20(&qword_101186E00);
  __chkstk_darwin(v17 - 8);
  v19 = &v42 - v18;
  v20 = type metadata accessor for SocialProfile();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  Playlist.socialProfile.getter();
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    v24 = v49;
    sub_1000095E8(v19, &qword_101186E00);
    Playlist.radioShow.getter();
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      sub_1000095E8(v12, &qword_1011A4770);
      Playlist.genre.getter();
      v26 = v47;
      v25 = v48;
      if ((*(v47 + 48))(v7, 1, v48) == 1)
      {
        sub_1000095E8(v7, &qword_10118DE80);
        v27 = v46;
        Playlist.curator.getter();
        v29 = v44;
        v28 = v45;
        if ((*(v44 + 48))(v27, 1, v45) == 1)
        {
          sub_1000095E8(v27, &unk_10118C170);
          v30 = type metadata accessor for ContainerDetail.AttributionItem(0);
          return (*(*(v30 - 8) + 56))(v24, 1, 1, v30);
        }

        v40 = *(v29 + 32);
        v41 = v42;
        v40(v42, v27, v28);
        v40(v24, v41, v28);
        v34 = type metadata accessor for ContainerDetail.AttributionItem(0);
      }

      else
      {
        v38 = *(v26 + 32);
        v39 = v43;
        v38(v43, v7, v25);
        v38(v24, v39, v25);
        v34 = type metadata accessor for ContainerDetail.AttributionItem(0);
      }
    }

    else
    {
      v37 = *(v14 + 32);
      v37(v16, v12, v13);
      v37(v24, v16, v13);
      v34 = type metadata accessor for ContainerDetail.AttributionItem(0);
    }

    swift_storeEnumTagMultiPayload();
    v35 = *(*(v34 - 8) + 56);
    v36 = v24;
  }

  else
  {
    v32 = *(v21 + 32);
    v32(v23, v19, v20);
    v33 = v49;
    v32(v49, v23, v20);
    v34 = type metadata accessor for ContainerDetail.AttributionItem(0);
    swift_storeEnumTagMultiPayload();
    v35 = *(*(v34 - 8) + 56);
    v36 = v33;
  }

  return v35(v36, 0, 1, v34);
}

BOOL sub_10083D330()
{
  v1 = sub_10010FC20(&qword_10118C2B0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v11 - v3;
  v5 = sub_10010FC20(&qword_10119A808);
  __chkstk_darwin(v5 - 8);
  v7 = v11 - v6;
  if ((*(v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isSearching) & 1) == 0)
  {
    v8 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentingEntries;
    swift_beginAccess();
    sub_1000089F8(v0 + v8, v7, &qword_10119A808);
    if ((*(v2 + 48))(v7, 1, v1))
    {
      sub_1000095E8(v7, &qword_10119A808);
    }

    else
    {
      (*(v2 + 16))(v4, v7, v1);
      sub_1000095E8(v7, &qword_10119A808);
      sub_100020674(&unk_101186ED0, &qword_10118C2B0);
      dispatch thunk of Collection.startIndex.getter();
      dispatch thunk of Collection.endIndex.getter();
      (*(v2 + 8))(v4, v1);
      if (v11[1] == v11[4])
      {
        v9 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_temporaryTracks;
        swift_beginAccess();
        return *(*(v0 + v9) + 16) == 0;
      }
    }
  }

  return 0;
}

uint64_t sub_10083D5A8()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_101188C20);
  v3 = __chkstk_darwin(v2 - 8);
  v187 = &v160 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v186 = &v160 - v5;
  v6 = sub_10010FC20(&unk_1011A4760);
  __chkstk_darwin(v6 - 8);
  v189 = &v160 - v7;
  v8 = sub_10010FC20(&qword_1011831D0);
  __chkstk_darwin(v8 - 8);
  v10 = &v160 - v9;
  v11 = type metadata accessor for Locale();
  __chkstk_darwin(v11 - 8);
  v13 = &v160 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v14 - 8);
  v16 = &v160 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10010FC20(&unk_101188920);
  __chkstk_darwin(v17 - 8);
  v19 = &v160 - v18;
  v20 = type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin(v20 - 8);
  v22 = &v160 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10010FC20(&unk_10118A5E0);
  __chkstk_darwin(v23 - 8);
  v25 = &v160 - v24;
  v26 = sub_10010FC20(&unk_10119F000);
  __chkstk_darwin(v26 - 8);
  v28 = &v160 - v27;
  v29 = sub_10010FC20(&unk_1011814D0);
  v30 = __chkstk_darwin(v29 - 8);
  v32 = &v160 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v30);
  v34 = __chkstk_darwin(v33);
  v35 = __chkstk_darwin(v34);
  v36 = __chkstk_darwin(v35);
  v37 = __chkstk_darwin(v36);
  v38 = __chkstk_darwin(v37);
  v39 = __chkstk_darwin(v38);
  v40 = __chkstk_darwin(v39);
  v41 = __chkstk_darwin(v40);
  v42 = __chkstk_darwin(v41);
  __chkstk_darwin(v42);
  v54 = &v160 - v53;
  if (!*(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___headerConfiguration))
  {
    v164 = v49;
    v165 = v48;
    v162 = v47;
    v185 = v25;
    v166 = v46;
    v167 = v45;
    v168 = v44;
    v169 = v16;
    v180 = v43;
    v181 = v13;
    v161 = v52;
    v171 = v51;
    v173 = v50;
    v182 = v28;
    v178 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___headerConfiguration;
    v183 = v19;
    v184 = v10;
    v56 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
    swift_beginAccess();
    sub_1000089F8(v1 + v56, v54, &unk_1011814D0);
    v57 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v1 + v57, v190, &unk_1011926C0);
    v179 = v1;
    v175 = v32;
    if (v191)
    {
      sub_1000095E8(v190, &unk_1011926C0);
      v174 = 2;
      v58 = v22;
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(v190, &unk_1011926C0);
      v58 = v22;
      if (Strong)
      {
        v60 = sub_10069F9B8();

        v61 = v60[5];
        v62 = v60[6];
        v63 = v60[7];
        sub_1004E5DB4(v61, v62, v63);

        if ((v62 - 1) >= 2)
        {
          sub_1004E5DFC(v61, v62, v63);
          v64 = (v61 & 1) == 0;
        }

        else
        {
          v64 = 2;
        }

        v174 = v64;
        v1 = v179;
      }

      else
      {
        v174 = 2;
      }
    }

    v65 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v170 = *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_canPerformSing);
    v66 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v67 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1000089F8(v1 + v57, v190, &unk_1011926C0);
    v176 = v66;
    v188 = v67;
    v177 = v65;
    if (v191)
    {

      sub_1000095E8(v190, &unk_1011926C0);
    }

    else
    {
      v68 = swift_unknownObjectWeakLoadStrong();

      sub_1000095E8(v190, &unk_1011926C0);
      if (v68)
      {
        v69 = sub_1006A6078();

        v70 = *&v69[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics];
        v71 = *&v69[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 16];
        v72 = v69[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 26] << 16;

        v73 = v72 == 0x20000;
        goto LABEL_16;
      }
    }

    v73 = 1;
    v70 = 0.0;
    v71 = 0.0;
LABEL_16:
    v74 = v185;
    sub_1000089F8(v1 + v57, v190, &unk_1011926C0);
    if (v191)
    {
      sub_1000095E8(v190, &unk_1011926C0);
    }

    else
    {
      v75 = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(v190, &unk_1011926C0);
      if (v75)
      {
        v76 = sub_1006A6078();

        [v76 adjustedContentInset];
        v78 = v77;

        goto LABEL_21;
      }
    }

    v78 = 0;
LABEL_21:
    _s7MetricsCMa(0);
    v79 = swift_allocObject();
    ObservationRegistrar.init()();
    v80 = 0.0;
    if (v73)
    {
      v81 = 0.0;
    }

    else
    {
      v81 = v70;
    }

    if (!v73)
    {
      v80 = v71;
    }

    *(v79 + 16) = v81;
    *(v79 + 24) = v80;
    v172 = v79;
    *(v79 + 32) = v78;
    if (*(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_needsToResolveArtwork) != 1)
    {
      v82 = v164;
      sub_1000089F8(v54, v164, &unk_1011814D0);
      v83 = type metadata accessor for Playlist();
      v84 = *(v83 - 8);
      if ((*(v84 + 48))(v82, 1, v83) != 1)
      {
        Playlist.artworkViewModel.getter(v74);
        (*(v84 + 8))(v82, v83);
LABEL_31:
        v86 = v165;
        sub_1000089F8(v54, v165, &unk_1011814D0);
        v87 = type metadata accessor for Playlist();
        v88 = *(v87 - 8);
        v89 = *(v88 + 48);
        if (v89(v86, 1, v87) == 1)
        {
          sub_1000095E8(v86, &unk_1011814D0);
          v90 = type metadata accessor for Playlist.Variant();
          (*(*(v90 - 8) + 56))(v58, 1, 1, v90);
        }

        else
        {
          Playlist.variant.getter();
          (*(v88 + 8))(v86, v87);
        }

        v91 = sub_10010FC20(&unk_101182950);
        (*(*(v91 - 8) + 56))(v58, 0, 11, v91);
        v92 = Corner.large.unsafeMutableAddressor();
        v93 = *v92;
        v94 = v92[1];
        v95 = *(v92 + 16);
        ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(0, 1, 0, 1, 0, 1, 2, v190);
        v96 = v182;
        ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v185, v58, 0, 1, v190, v93, v94, v95, v182);
        v97 = type metadata accessor for ArtworkImage.Info(0);
        v98 = *(v97 - 8);
        v99 = *(v98 + 56);
        v165 = v97;
        v164 = v99;
        v163 = v98 + 56;
        v99(v96, 0, 1);
        v100 = v162;
        sub_1000089F8(v54, v162, &unk_1011814D0);
        if (v89(v100, 1, v87) == 1)
        {
          sub_1000095E8(v100, &unk_1011814D0);
          v101 = type metadata accessor for Artwork();
          (*(*(v101 - 8) + 56))(v183, 1, 1, v101);
        }

        else
        {
          Playlist.staticDetailTallArtwork.getter();
          (*(v88 + 8))(v100, v87);
        }

        v102 = v167;
        v103 = v166;
        sub_1000089F8(v54, v166, &unk_1011814D0);
        v104 = v89(v103, 1, v87);
        v105 = v187;
        if (v104 == 1)
        {
          sub_1000095E8(v103, &unk_1011814D0);
        }

        else
        {
          v106 = EditorialVideoArtworkVending.editorialVideoArtworks.getter();
          (*(v88 + 8))(v103, v87);
          if (v106)
          {
            goto LABEL_41;
          }
        }

        v106 = sub_10010BDB8(_swiftEmptyArrayStorage);

LABEL_41:
        sub_1000089F8(v54, v102, &unk_1011814D0);
        v107 = v89(v102, 1, v87);
        v169 = v106;
        if (v107 == 1)
        {
          sub_1000095E8(v102, &unk_1011814D0);
          String.LocalizationValue.init(stringLiteral:)();
          static Locale.current.getter();
          v167 = String.init(localized:table:bundle:locale:comment:)();
          v166 = v108;
        }

        else
        {
          v167 = Playlist.name.getter();
          v166 = v109;
          (*(v88 + 8))(v102, v87);
        }

        v185 = v88;
        v110 = v168;
        sub_1000089F8(v54, v168, &unk_1011814D0);
        if (v89(v110, 1, v87) == 1)
        {
          sub_1000095E8(v110, &unk_1011814D0);
          v111 = 1;
          v112 = v184;
        }

        else
        {
          v112 = v184;
          Playlist.favoriteStatus.getter();
          (*(v185 + 8))(v110, v87);
          v111 = 0;
        }

        v113 = v105;
        v114 = type metadata accessor for MusicFavoriteStatus();
        v115 = *(v114 - 8);
        v168 = *(v115 + 56);
        v162 = v115 + 56;
        v168(v112, v111, 1, v114);
        v116 = v180;
        sub_1000089F8(v54, v180, &unk_1011814D0);
        if (v89(v116, 1, v87) == 1)
        {
          sub_1000095E8(v116, &unk_1011814D0);
          v117 = v175;
          v118 = v186;
        }

        else
        {
          v181 = Playlist.curatorName.getter();
          v120 = v119;
          (*(v185 + 8))(v116, v87);
          v117 = v175;
          v118 = v186;
          v180 = v120;
          if (v120)
          {
            goto LABEL_53;
          }
        }

        v121 = v161;
        sub_1000089F8(v54, v161, &unk_1011814D0);
        if (v89(v121, 1, v87) == 1)
        {
          sub_1000095E8(v121, &unk_1011814D0);

LABEL_54:
          v181 = 0;
          v180 = 0;
          v124 = 255;
LABEL_55:
          LODWORD(v186) = v124;
          v125 = v171;
          sub_1000089F8(v54, v171, &unk_1011814D0);
          if (v89(v125, 1, v87) == 1)
          {
            sub_1000095E8(v125, &unk_1011814D0);
          }

          else
          {
            Playlist.lastModifiedDate.getter();
            (*(v185 + 8))(v125, v87);
            sub_10003D17C(v118, v113, &qword_101188C20);
            v126 = type metadata accessor for Date();
            v127 = *(v126 - 8);
            if ((*(v127 + 48))(v113, 1, v126) != 1)
            {
              v129 = v117;
              v130 = v189;
              (*(v127 + 32))(v189, v113, v126);
              v131 = _s8MetadataV13ConfigurationOMa(0);
              swift_storeEnumTagMultiPayload();
              v132 = v130;
              v117 = v129;
              (*(*(v131 - 8) + 56))(v132, 0, 1, v131);
LABEL_60:
              v133 = v173;
              sub_1000089F8(v54, v173, &unk_1011814D0);
              if (v89(v133, 1, v87) == 1)
              {
                sub_1000095E8(v133, &unk_1011814D0);
              }

              else
              {
                v134 = sub_1005F7078();
                v136 = v135;
                (*(v185 + 8))(v133, v87);
                if (v136)
                {
                  goto LABEL_64;
                }
              }

              v134 = 0;
              v136 = 0xE000000000000000;
LABEL_64:
              v187 = v134;
              v173 = v136;
              if (v170)
              {
                sub_1000089F8(v54, v117, &unk_1011814D0);
                v137 = v89(v117, 1, v87);

                if (v137 != 1)
                {
                  v159 = Playlist.supportsSing.getter();
                  (*(v185 + 8))(v117, v87);
                  v138 = &off_101099350;
                  if (v159 != 2 && (v159 & 1) != 0)
                  {
                    v138 = &off_101099328;
                  }

                  goto LABEL_69;
                }

                sub_1000095E8(v117, &unk_1011814D0);
              }

              else
              {
              }

              v138 = &off_101099350;
LABEL_69:
              v185 = sub_10010E594(v138);
              _s13ConfigurationCMa(0);
              v55 = swift_allocObject();
              v139 = OBJC_IVAR____TtCV5Music6Header13Configuration__artworkInfo;
              v164(v55 + OBJC_IVAR____TtCV5Music6Header13Configuration__artworkInfo, 1, 1, v165);
              v140 = OBJC_IVAR____TtCV5Music6Header13Configuration__tallArtwork;
              v141 = type metadata accessor for Artwork();
              (*(*(v141 - 8) + 56))(v55 + v140, 1, 1, v141);
              v142 = OBJC_IVAR____TtCV5Music6Header13Configuration__favoriteStatus;
              v168(v55 + OBJC_IVAR____TtCV5Music6Header13Configuration__favoriteStatus, 1, 1, v114);
              v143 = v55 + OBJC_IVAR____TtCV5Music6Header13Configuration__attribution;
              *v143 = 0;
              *(v143 + 8) = 0;
              *(v143 + 16) = -1;
              v144 = (v55 + OBJC_IVAR____TtCV5Music6Header13Configuration__artworkAction);
              *v144 = 0;
              v144[1] = 0;
              v145 = OBJC_IVAR____TtCV5Music6Header13Configuration__metadata;
              v175 = OBJC_IVAR____TtCV5Music6Header13Configuration__metadata;
              v146 = _s8MetadataV13ConfigurationOMa(0);
              (*(*(v146 - 8) + 56))(v55 + v145, 1, 1, v146);
              v147 = (v55 + OBJC_IVAR____TtCV5Music6Header13Configuration__description);
              *v147 = 0u;
              *(v147 + 1) = 0u;
              v148 = (v55 + OBJC_IVAR____TtCV5Music6Header13Configuration__playbackIntentProvider);
              *v148 = 0;
              v148[1] = 0;
              *(v55 + OBJC_IVAR____TtCV5Music6Header13Configuration__shouldIncludeFloatingArtwork) = 0;
              *(v55 + OBJC_IVAR____TtCV5Music6Header13Configuration__hidePlaybackControls) = 0;
              *(v55 + OBJC_IVAR____TtCV5Music6Header13Configuration__disableAttribution) = 0;
              *(v55 + OBJC_IVAR____TtCV5Music6Header13Configuration__hideTitleContainer) = 0;
              ObservationRegistrar.init()();

              sub_1000095E8(v54, &unk_1011814D0);
              *(v55 + 16) = v174;
              sub_1000095E8(v55 + v139, &unk_10119F000);
              sub_10003D17C(v182, v55 + v139, &unk_10119F000);
              sub_1000095E8(v55 + v140, &unk_101188920);
              sub_10003D17C(v183, v55 + v140, &unk_101188920);
              *(v55 + OBJC_IVAR____TtCV5Music6Header13Configuration__videoArtworks) = v169;
              v149 = (v55 + OBJC_IVAR____TtCV5Music6Header13Configuration__title);
              v150 = v166;
              *v149 = v167;
              v149[1] = v150;
              sub_1000095E8(v55 + v142, &qword_1011831D0);
              sub_10003D17C(v184, v55 + v142, &qword_1011831D0);
              sub_1005F9490(*v143, *(v143 + 8), *(v143 + 16));
              v151 = v180;
              *v143 = v181;
              *(v143 + 8) = v151;
              *(v143 + 16) = v186;
              v152 = (v55 + OBJC_IVAR____TtCV5Music6Header13Configuration__attributionAction);
              v153 = v176;
              *v152 = sub_1008698E4;
              v152[1] = v153;
              sub_100020438(*v144);
              *v144 = 0;
              v144[1] = 0;
              v154 = v175;
              sub_1000095E8(v55 + v175, &unk_1011A4760);
              sub_10003D17C(v189, v55 + v154, &unk_1011A4760);
              sub_1004E5E90(*v147, v147[1], v147[2]);
              v155 = v188;
              v156 = v173;
              *v147 = v187;
              v147[1] = v156;
              v147[2] = sub_1008698EC;
              v147[3] = v155;
              sub_100020438(*v148);
              v157 = v177;
              *v148 = &unk_100EE4D00;
              v148[1] = v157;
              *(v55 + OBJC_IVAR____TtCV5Music6Header13Configuration__playIntentButtonIntents) = v185;
              *(v55 + OBJC_IVAR____TtCV5Music6Header13Configuration__metrics) = v172;

              *(v179 + v178) = v55;

              goto LABEL_70;
            }
          }

          v128 = _s8MetadataV13ConfigurationOMa(0);
          (*(*(v128 - 8) + 56))(v189, 1, 1, v128);
          goto LABEL_60;
        }

        v181 = sub_10034E2C4();
        v123 = v122;
        (*(v185 + 8))(v121, v87);

        v180 = v123;
        if (!v123)
        {
          goto LABEL_54;
        }

LABEL_53:
        v124 = 1;
        goto LABEL_55;
      }

      sub_1000095E8(v82, &unk_1011814D0);
    }

    v85 = type metadata accessor for ArtworkImage.ViewModel(0);
    (*(*(v85 - 8) + 56))(v74, 1, 1, v85);
    goto LABEL_31;
  }

  v55 = *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___headerConfiguration);
LABEL_70:

  return v55;
}

uint64_t sub_10083EE34(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 64) = a2;
  *(v3 + 40) = a1;
  *(v3 + 48) = a3;
  type metadata accessor for MainActor();
  *(v3 + 56) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10083EED0, v5, v4);
}

uint64_t sub_10083EED0()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_10083F828(*(v0 + 64), *(v0 + 40));
  }

  else
  {
    v3 = *(v0 + 40);
    v4 = type metadata accessor for PlaybackIntentDescriptor(0);
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10083EFA8()
{
  v0 = type metadata accessor for ContainerDetail.AttributionItem(0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v3 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v3 - 8);
  v5 = v20 - v4 + 16;
  v6 = sub_10010FC20(&qword_101192860);
  __chkstk_darwin(v6 - 8);
  v8 = v20 - v7 + 16;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    sub_10083C114(v8);

    if ((*(v1 + 48))(v8, 1, v0) == 1)
    {
      return sub_1000095E8(v8, &qword_101192860);
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      v13 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
      swift_beginAccess();
      sub_1000089F8(v12 + v13, v20, &unk_1011926C0);
      if (v20[8] == 1)
      {

        sub_1000095E8(v20, &unk_1011926C0);
      }

      else
      {
        v14 = swift_unknownObjectWeakLoadStrong();

        sub_1000095E8(v20, &unk_1011926C0);
        if (v14)
        {
          v15 = sub_10003169C();

          goto LABEL_10;
        }
      }
    }

    v15 = 0;
LABEL_10:
    if (sub_10069BD04())
    {
      if (!v15)
      {
        return sub_100867794(v8, type metadata accessor for ContainerDetail.AttributionItem);
      }

      v16 = type metadata accessor for TaskPriority();
      (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
      sub_10086772C(v8, (v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0) + 16), type metadata accessor for ContainerDetail.AttributionItem);
      v17 = (*(v1 + 80) + 32) & ~*(v1 + 80);
      v18 = swift_allocObject();
      *(v18 + 16) = 0;
      *(v18 + 24) = 0;
      sub_100869470((v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0) + 16), v18 + v17, type metadata accessor for ContainerDetail.AttributionItem);
      *(v18 + ((v2 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v15;
      sub_1001F4CB8(0, 0, v5, &unk_100EE4D10, v18);
    }

    return sub_100867794(v8, type metadata accessor for ContainerDetail.AttributionItem);
  }

  return result;
}

void sub_10083F350(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    a2();
  }
}

uint64_t sub_10083F3AC()
{
  v1 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v1 - 8);
  v3 = &v17 - v2;
  v4 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___searchHeaderConfiguration;
  if (!*(v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___searchHeaderConfiguration))
  {
    v6 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
    swift_beginAccess();
    sub_1000089F8(v0 + v6, v3, &unk_1011814D0);
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v0 + v8, v20, &unk_1011926C0);
    if (BYTE8(v20[0]))
    {

      sub_1000095E8(v20, &unk_1011926C0);
      Strong = 0;
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();

      sub_1000095E8(v20, &unk_1011926C0);
      if (Strong)
      {
        v10 = sub_1006A6078();

        v11 = *&v10[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics];
        v18 = *&v10[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 16];
        v19 = v11;
        v17 = *&v10[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 32];
        Strong = *&v10[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 48];
        v12 = v10[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 56];

        v14 = v17;
        v13 = v18;
        v15 = v19;
LABEL_8:
        v20[0] = v15;
        v20[1] = v13;
        v20[2] = v14;
        v21 = Strong;
        v22 = v12;
        v5 = sub_100452D54(v3, &unk_100EE4CF0, v7, v20);

        *(v0 + v4) = v5;

        goto LABEL_9;
      }
    }

    v12 = 0;
    v13 = xmmword_100EE4610;
    v15 = 0uLL;
    v14 = 0uLL;
    goto LABEL_8;
  }

  v5 = *(v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___searchHeaderConfiguration);
LABEL_9:

  return v5;
}

uint64_t sub_10083F60C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a1;
  v3[6] = a3;
  sub_10010FC20(&unk_10118BCE0);
  v3[7] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[8] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10083F6DC, v5, v4);
}

uint64_t sub_10083F6DC()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = v0[7];
    v4 = v0[5];
    v5 = type metadata accessor for IndexPath();
    (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
    sub_100854C74(v3, v4);

    sub_1000095E8(v3, &unk_10118BCE0);
  }

  else
  {
    v6 = v0[5];
    v7 = type metadata accessor for PlaybackIntentDescriptor(0);
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_10083F828@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v101 = a2;
  v5 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v5 - 8);
  v100 = &v85 - v6;
  v7 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v7 - 8);
  v102 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v98 = &v85 - v10;
  __chkstk_darwin(v11);
  v105 = &v85 - v12;
  v13 = type metadata accessor for MetricsEvent.Click(0);
  __chkstk_darwin(v13 - 8);
  v99 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Playlist();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v87 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v85 - v19;
  v21 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v21 - 8);
  v96 = &v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v86 = &v85 - v24;
  __chkstk_darwin(v25);
  v27 = &v85 - v26;
  __chkstk_darwin(v28);
  v30 = &v85 - v29;
  v31 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  v106 = v31;
  sub_1000089F8(v3 + v31, v30, &unk_1011814D0);
  v32 = *(v16 + 48);
  v33 = v32(v30, 1, v15);
  v104 = v3;
  v97 = v16;
  v103 = v32;
  v88 = v15;
  if (v33)
  {
    sub_1000095E8(v30, &unk_1011814D0);
  }

  else
  {
    (*(v16 + 16))(v20, v30, v15);
    sub_1000095E8(v30, &unk_1011814D0);
    v34 = Playlist.catalogID.getter();
    v36 = v35;
    (*(v16 + 8))(v20, v15);
    if (v36)
    {
      v94 = v34;
      v95 = v36;
      goto LABEL_8;
    }
  }

  sub_1000089F8(v3 + v106, v27, &unk_1011814D0);
  if (v32(v27, 1, v15))
  {
    sub_1000095E8(v27, &unk_1011814D0);
    v94 = 0;
    v95 = 0xE000000000000000;
  }

  else
  {
    v37 = v87;
    (*(v16 + 16))(v87, v27, v15);
    sub_1000095E8(v27, &unk_1011814D0);
    v94 = Playlist.id.getter();
    v95 = v38;
    (*(v16 + 8))(v37, v15);
  }

LABEL_8:
  v39 = *MetricsReportingController.shared.unsafeMutableAddressor();
  v92 = SymbolButton.Intent.actionType.getter(a1);
  v40 = type metadata accessor for URL();
  v41 = *(v40 - 8);
  v42 = *(v41 + 56);
  v42(v105, 1, 1, v40);
  sub_10010FC20(&unk_1011927C0);
  v43 = swift_allocObject();
  v89 = xmmword_100EBC6B0;
  *(v43 + 16) = xmmword_100EBC6B0;
  v93 = v39;
  v44 = v104;
  v45 = sub_10085A8A8();
  v91 = v43;
  *(v43 + 32) = v45;
  v46 = sub_10010FC20(&qword_101190BE0);
  inited = swift_initStackObject();
  *(inited + 32) = 1684957547;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = 0x7473696C79616C70;
  *(inited + 56) = 0xE800000000000000;
  *(inited + 64) = 0x6570795479616C70;
  v48 = 7105633;
  if (a1 == 1)
  {
    v48 = 0x41656C6666756873;
  }

  v49 = 0xE300000000000000;
  if (a1 == 1)
  {
    v49 = 0xEA00000000006C6CLL;
  }

  *(inited + 16) = xmmword_100EBDC20;
  *(inited + 72) = 0xE800000000000000;
  *(inited + 80) = v48;
  *(inited + 88) = v49;
  v90 = sub_10010C578(inited);
  swift_setDeallocating();
  sub_10010FC20(&qword_101183AA0);
  swift_arrayDestroy();
  v50 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sourceURL;
  swift_beginAccess();
  v51 = v44 + v50;
  v52 = v102;
  sub_1000089F8(v51, v102, &qword_101183A20);
  v53 = *(v41 + 48);
  if (v53(v52, 1, v40) == 1)
  {
    v85 = v46;
    v54 = v42;
    v55 = v86;
    sub_1000089F8(v44 + v106, v86, &unk_1011814D0);
    v56 = v88;
    if (v103(v55, 1, v88))
    {
      sub_1000095E8(v55, &unk_1011814D0);
      v57 = v98;
      v54(v98, 1, 1, v40);
      v58 = v97;
    }

    else
    {
      v58 = v97;
      v62 = v87;
      (*(v97 + 16))(v87, v55, v56);
      sub_1000095E8(v55, &unk_1011814D0);
      v57 = v98;
      Playlist.url.getter();
      v63 = v62;
      v52 = v102;
      (*(v58 + 8))(v63, v56);
    }

    v64 = v53(v52, 1, v40);
    v61 = v104;
    if (v64 != 1)
    {
      sub_1000095E8(v52, &qword_101183A20);
    }
  }

  else
  {
    v59 = v52;
    v60 = v98;
    (*(v41 + 32))(v98, v59, v40);
    v57 = v60;
    v42(v60, 0, 1, v40);
    v61 = v44;
    v58 = v97;
    v56 = v88;
  }

  v65 = swift_initStackObject();
  *(v65 + 16) = v89;
  strcpy((v65 + 32), "Playlist Name");
  *(v65 + 46) = -4864;
  v66 = v96;
  sub_1000089F8(v61 + v106, v96, &unk_1011814D0);
  if (v103(v66, 1, v56))
  {
    sub_1000095E8(v66, &unk_1011814D0);
    v67 = 0;
    v68 = 0xE000000000000000;
  }

  else
  {
    v69 = v87;
    (*(v58 + 16))(v87, v66, v56);
    sub_1000095E8(v66, &unk_1011814D0);
    v67 = Playlist.name.getter();
    v68 = v70;
    (*(v58 + 8))(v69, v56);
  }

  *(v65 + 48) = v67;
  *(v65 + 56) = v68;
  v71 = sub_10010C578(v65);
  swift_setDeallocating();
  sub_1000095E8(v65 + 32, &qword_101183AA0);
  v72 = v99;
  MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:pageIdentifier:pageType:pageURL:pageDetails:pageDisplayType:attenuationAvailable:snapshotImpressions:searchTerm:)(v94, v95, 18, v92, v105, v91, 0, 0, v99, v90, 0, 768, v94, v95, 0x7473696C79616C50, 0xE800000000000000, v57, v71, 1, 2, 0, 0, 0);

  v73 = sub_10053771C();
  v75 = v74;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v76 = qword_101218AD0;
  v77 = GroupActivitiesManager.hasJoined.getter();
  v78 = GroupActivitiesManager.participantsCount.getter();
  v79 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  v80 = *(v76 + v79);
  v81 = v93;
  (*((swift_isaMask & *v93) + 0xB8))(v72, v73, v75, v77 & 1, v78, v80);

  sub_100867794(v72, type metadata accessor for MetricsEvent.Click);
  v82 = type metadata accessor for IndexPath();
  v83 = v100;
  (*(*(v82 - 8) + 56))(v100, 1, 1, v82);
  sub_100854C74(v83, v101);
  return sub_1000095E8(v83, &unk_10118BCE0);
}

uint64_t sub_100840468()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_101192860);
  __chkstk_darwin(v2 - 8);
  v65 = &v57 - v3;
  v4 = sub_10010FC20(&qword_1011831D0);
  __chkstk_darwin(v4 - 8);
  v66 = &v57 - v5;
  v61 = type metadata accessor for Playlist.EditableComponents();
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v57 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Playlist();
  v67 = *(v7 - 8);
  v68 = v7;
  v8 = __chkstk_darwin(v7);
  v62 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v58 = &v57 - v10;
  v11 = sub_10010FC20(&unk_10118D240);
  __chkstk_darwin(v11 - 8);
  v59 = &v57 - v12;
  v13 = type metadata accessor for MusicPropertySource();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v57 - v18;
  v20 = sub_10010FC20(&unk_1011814D0);
  v21 = __chkstk_darwin(v20 - 8);
  v23 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v26 = &v57 - v25;
  __chkstk_darwin(v24);
  v64 = &v57 - v27;
  v63 = sub_10083D5A8();
  v28 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_source;
  swift_beginAccess();
  v29 = *(v14 + 16);
  v29(v19, v1 + v28, v13);
  v30 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_initialSource;
  swift_beginAccess();
  v29(v17, v1 + v30, v13);
  sub_100866F00(&qword_10119A868, &type metadata accessor for MusicPropertySource);
  LOBYTE(v30) = dispatch thunk of static Equatable.== infix(_:_:)();
  v31 = *(v14 + 8);
  v31(v17, v13);
  v31(v19, v13);
  if (v30)
  {
    goto LABEL_7;
  }

  v32 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  sub_1000089F8(v1 + v32, v26, &unk_1011814D0);
  v34 = v67;
  v33 = v68;
  if ((*(v67 + 48))(v26, 1, v68))
  {
    v35 = &unk_1011814D0;
LABEL_6:
    sub_1000095E8(v26, v35);
LABEL_7:
    v39 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
    goto LABEL_8;
  }

  v36 = v58;
  (*(v34 + 16))(v58, v26, v33);
  sub_1000095E8(v26, &unk_1011814D0);
  v26 = v59;
  Playlist.editableComponents.getter();
  (*(v34 + 8))(v36, v33);
  v37 = v60;
  v38 = v61;
  if ((*(v60 + 48))(v26, 1, v61) == 1)
  {
    v35 = &unk_10118D240;
    goto LABEL_6;
  }

  v54 = v57;
  static Playlist.EditableComponents.metadata.getter();
  sub_100866F00(&qword_10119EF60, &type metadata accessor for Playlist.EditableComponents);
  v55 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v56 = *(v37 + 8);
  v56(v54, v38);
  v56(v26, v38);
  if (v55)
  {
    goto LABEL_7;
  }

  v39 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogPlaylist;
LABEL_8:
  v40 = v1 + v39;
  swift_beginAccess();
  v41 = v64;
  sub_1000089F8(v40, v64, &unk_1011814D0);
  v42 = sub_10082C800();
  v43 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  sub_1000089F8(v1 + v43, v23, &unk_1011814D0);
  v45 = v67;
  v44 = v68;
  if ((*(v67 + 48))(v23, 1, v68))
  {
    sub_1000095E8(v23, &unk_1011814D0);
    v46 = 1;
    v47 = v66;
  }

  else
  {
    v48 = v62;
    (*(v45 + 16))(v62, v23, v44);
    sub_1000095E8(v23, &unk_1011814D0);
    v47 = v66;
    Playlist.favoriteStatus.getter();
    (*(v45 + 8))(v48, v44);
    v46 = 0;
  }

  v49 = type metadata accessor for MusicFavoriteStatus();
  (*(*(v49 - 8) + 56))(v47, v46, 1, v49);
  v50 = v65;
  sub_10083C114(v65);
  v51 = type metadata accessor for ContainerDetail.AttributionItem(0);
  v52 = (*(*(v51 - 8) + 48))(v50, 1, v51) == 1;
  sub_1000095E8(v50, &qword_101192860);
  sub_1005F72A0(v41, v42, 0, 0, v47, v52, *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_canPerformSing));

  sub_1000095E8(v47, &qword_1011831D0);
  return sub_1000095E8(v41, &unk_1011814D0);
}

void sub_100840D04()
{
  v1 = v0;
  v2 = sub_10083D5A8();
  swift_getKeyPath();
  v17 = v2;
  sub_100866F00(&unk_1011A4750, _s13ConfigurationCMa);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v2 + OBJC_IVAR____TtCV5Music6Header13Configuration__description);
  v3 = *(v2 + OBJC_IVAR____TtCV5Music6Header13Configuration__description + 8);
  v5 = *(v2 + OBJC_IVAR____TtCV5Music6Header13Configuration__description + 16);
  sub_1004E5E44(v4, v3, v5);

  if (v3)
  {

    sub_1004E5E90(v4, v3, v5);
    v6 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v1 + v6, &v18, &unk_1011926C0);
    if (v19)
    {

      sub_1000095E8(&v18, &unk_1011926C0);
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(&v18, &unk_1011926C0);
      if (Strong)
      {
        v8 = *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___headerConfiguration);
        swift_getKeyPath();
        v18 = v8;

        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v9 = *(v8 + OBJC_IVAR____TtCV5Music6Header13Configuration__title);
        v10 = *(v8 + OBJC_IVAR____TtCV5Music6Header13Configuration__title + 8);

        v11 = type metadata accessor for DescriptionModal();
        v12 = objc_allocWithZone(v11);
        v13 = objc_allocWithZone(type metadata accessor for DescriptionModal.Content());
        v14 = sub_100702394(v9, v10, v4, v3);
        v16.receiver = v12;
        v16.super_class = v11;
        v15 = objc_msgSendSuper2(&v16, "initWithRootViewController:", v14);

        [Strong presentViewController:v15 animated:1 completion:0];
      }

      else
      {
      }
    }
  }
}

uint64_t sub_100840F90()
{
  v1 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v1 - 8);
  v3 = v17 - v2;
  v4 = sub_10010FC20(&qword_10118C2B0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v17 - v6;
  v8 = sub_10010FC20(&qword_10119A808);
  __chkstk_darwin(v8 - 8);
  v10 = v17 - v9;
  v11 = *(v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentedLoadingState);
  if (v11 & 0xFFFFFFFFFFFFFEFELL) != 0x3FFFFFEFELL && (v11 >> 62 == 3 || (v11))
  {
    return 2;
  }

  if (*(v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isSearching) != 1)
  {
    v13 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
    swift_beginAccess();
    sub_1000089F8(v0 + v13, v3, &unk_1011814D0);
    v14 = type metadata accessor for Playlist();
    v15 = (*(*(v14 - 8) + 48))(v3, 1, v14) == 1;
    sub_1000095E8(v3, &unk_1011814D0);
    return (2 * v15);
  }

  v12 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentingEntries;
  swift_beginAccess();
  sub_1000089F8(v0 + v12, v10, &qword_10119A808);
  if ((*(v5 + 48))(v10, 1, v4))
  {
    sub_1000095E8(v10, &qword_10119A808);
  }

  else
  {
    (*(v5 + 16))(v7, v10, v4);
    sub_1000095E8(v10, &qword_10119A808);
    sub_100020674(&unk_101186ED0, &qword_10118C2B0);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    (*(v5 + 8))(v7, v4);
    if (v17[2] == v17[1])
    {
      return 2;
    }
  }

  return 1;
}

void sub_1008412FC()
{
  v1 = v0;
  v2 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v24[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v24[-v6];
  v8 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v0 + v8, &v28, &unk_1011926C0);
  if (BYTE8(v28))
  {
    goto LABEL_2;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(&v28, &unk_1011926C0);
  if (Strong)
  {
    v11 = sub_10069F9B8();

    v13 = v11[5];
    v12 = v11[6];
    v14 = v11[7];
    sub_1004E5DB4(v13, v12, v14);

    if ((v12 - 1) >= 2)
    {

      v15 = sub_100840F90();
      if (v15 != 2 && (v15 & 1) == 0)
      {
        sub_1000089F8(v1 + v8, &v28, &unk_1011926C0);
        if (BYTE8(v28))
        {
LABEL_2:
          v9 = &unk_1011926C0;
LABEL_3:
          sub_1000095E8(&v28, v9);
          return;
        }

        v16 = swift_unknownObjectWeakLoadStrong();
        sub_1000095E8(&v28, &unk_1011926C0);
        if (v16)
        {
          sub_10069F9B8();

          v17 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogPlaylist;
          swift_beginAccess();
          sub_1000089F8(v1 + v17, v7, &unk_1011814D0);
          v18 = type metadata accessor for Playlist();
          v19 = *(v18 - 8);
          v20 = *(v19 + 48);
          if (v20(v7, 1, v18) == 1)
          {
            sub_1000095E8(v7, &unk_1011814D0);
            v25 = 0u;
            v26 = 0u;
            v27 = 0;
            v21 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
            swift_beginAccess();
            sub_1000089F8(v1 + v21, v4, &unk_1011814D0);
            if (v20(v4, 1, v18) == 1)
            {
              sub_1000095E8(v4, &unk_1011814D0);
              v28 = 0u;
              v29 = 0u;
              v30 = 0;
            }

            else
            {
              *(&v29 + 1) = v18;
              v30 = &off_1010B2320;
              v23 = sub_10001C8B8(&v28);
              (*(v19 + 32))(v23, v4, v18);
            }

            if (*(&v26 + 1))
            {
              sub_1000095E8(&v25, &unk_101192850);
            }
          }

          else
          {
            *(&v26 + 1) = v18;
            v27 = &off_1010B2320;
            v22 = sub_10001C8B8(&v25);
            (*(v19 + 32))(v22, v7, v18);
            sub_100059A8C(&v25, &v28);
          }

          if (qword_10117F700 != -1)
          {
            swift_once();
          }

          sub_1005588C8(&v28, qword_101218CB8, unk_101218CC0);

          v9 = &unk_101192850;
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_1004E5DFC(v13, v12, v14);
    }
  }
}

void sub_100841720()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sections);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    while (*v3++)
    {
      if (!--v2)
      {
        return;
      }
    }

    v5 = sub_100840F90();
    if (v5 != 2 && (v5 & 1) != 0)
    {
      v6 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
      swift_beginAccess();
      sub_1000089F8(v0 + v6, v8, &unk_1011926C0);
      if (v8[8])
      {
        sub_1000095E8(v8, &unk_1011926C0);
      }

      else
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        sub_1000095E8(v8, &unk_1011926C0);
        if (Strong)
        {
          sub_10069F9B8();

          sub_1005587C8();
        }
      }
    }
  }
}

void *sub_100841824()
{
  v1 = v0;
  v2 = type metadata accessor for Playlist.Entry.InternalItem();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v25 - v7;
  Playlist.Entry.internalItem.getter();
  v9 = Playlist.Entry.InternalItem.id.getter();
  v11 = v10;
  v25 = *(v3 + 8);
  v25(v8, v2);
  v12 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_libraryStateCache;
  swift_beginAccess();
  v13 = *(v0 + v12);
  if (*(v13 + 16) && (, v14 = sub_100019C10(v9, v11), v16 = v15, , (v16 & 1) != 0))
  {
    Strong = *(*(v13 + 56) + 8 * v14);
  }

  else
  {

    v18 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v1 + v18, &v26, &unk_1011926C0);
    if (v27)
    {
      sub_1000095E8(&v26, &unk_1011926C0);
      Strong = 0;
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(&v26, &unk_1011926C0);
      if (Strong)
      {
        v19 = [Strong traitCollection];
        sub_100137E8C();
        UITraitCollection.subscript.getter();

        type metadata accessor for Playlist.Entry();
        Strong = MusicLibrary.state<A>(for:)();
      }
    }

    Playlist.Entry.internalItem.getter();
    v20 = Playlist.Entry.InternalItem.id.getter();
    v22 = v21;
    v25(v5, v2);
    swift_beginAccess();

    sub_100407E78(v23, v20, v22);
    swift_endAccess();
  }

  return Strong;
}

void sub_100841B1C(char *a1)
{
  v2 = v1;
  v4 = sub_10010FC20(&qword_10118C2B0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v41 = v38 - v6;
  v7 = sub_10010FC20(&qword_10119A808);
  __chkstk_darwin(v7 - 8);
  v9 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v38 - v11;
  sub_1000089F8(a1, v38 - v11, &qword_10119A808);
  v13 = *(v5 + 48);
  v14 = v13(v12, 1, v4);
  v42 = v5;
  if (v14 == 1)
  {
    sub_1000095E8(v12, &qword_10119A808);
    v15 = 2;
  }

  else
  {
    sub_100020674(&unk_101186ED0, &qword_10118C2B0);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    v15 = v48 == v47;
    (*(v5 + 8))(v12, v4);
  }

  v16 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentingEntries;
  swift_beginAccess();
  v40 = v13;
  v17 = v13((v2 + v16), 1, v4);
  v18 = &OBJC_IVAR____TtC5Music9TrackData_artworkInfo;
  if (v17)
  {
    if (v15 == 2)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v19 = v41;
    v20 = v42;
    (*(v42 + 16))(v41, v2 + v16, v4);
    sub_100020674(&unk_101186ED0, &qword_10118C2B0);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    v21 = v20;
    v18 = &OBJC_IVAR____TtC5Music9TrackData_artworkInfo;
    (*(v21 + 8))(v19, v4);
    if (v15 != 2 && (((v47 == v43) ^ v15) & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  v22 = v18[242];
  swift_beginAccess();
  sub_1000089F8(v2 + v22, &v43, &unk_1011926C0);
  if (v44)
  {
    sub_1000095E8(&v43, &unk_1011926C0);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(&v43, &unk_1011926C0);
    if (Strong)
    {
      Strong[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_includeRelatedContentOnNextReload] = 1;
    }
  }

  v24 = sub_10083D5A8();
  v25 = sub_10083D330();
  if (v25 == *(v24 + OBJC_IVAR____TtCV5Music6Header13Configuration__hidePlaybackControls))
  {
    *(v24 + OBJC_IVAR____TtCV5Music6Header13Configuration__hidePlaybackControls) = v25;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v39 = a1;
    v38[1] = v38;
    __chkstk_darwin(KeyPath);
    v38[-2] = v24;
    LOBYTE(v38[-1]) = v25;
    v43 = v24;
    sub_100866F00(&unk_1011A4750, _s13ConfigurationCMa);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    a1 = v39;
  }

  v18 = &OBJC_IVAR____TtC5Music9TrackData_artworkInfo;
  if (*(v2 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isSearching) == 1)
  {
    *(v2 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_includeHeaderOnNextReload) = 1;
    sub_1000089F8(v2 + v22, &v43, &unk_1011926C0);
    if (v44)
    {
      sub_1000095E8(&v43, &unk_1011926C0);
      goto LABEL_28;
    }

    v27 = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(&v43, &unk_1011926C0);
    if (v27)
    {
      if (v40(v2 + v16, 1, v4))
      {
        v28 = v27[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_hideFloatingArtwork];
        v27[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_hideFloatingArtwork] = 0;
        v29 = 1.0;
        if ((v28 & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v30 = v41;
        v31 = v42;
        (*(v42 + 16))(v41, v2 + v16, v4);
        sub_100020674(&unk_101186ED0, &qword_10118C2B0);
        dispatch thunk of Collection.startIndex.getter();
        v18 = &OBJC_IVAR____TtC5Music9TrackData_artworkInfo;
        dispatch thunk of Collection.endIndex.getter();
        (*(v31 + 8))(v30, v4);
        v32 = v43 == v45;
        v33 = v27[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_hideFloatingArtwork];
        v27[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_hideFloatingArtwork] = v32;
        if (v32 == v33)
        {
LABEL_27:

          goto LABEL_28;
        }

        v29 = 1.0;
        if (v32)
        {
          v29 = 0.0;
        }
      }

      [*&v27[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_floatingArtworkContainer] setAlpha:v29];
      goto LABEL_27;
    }
  }

LABEL_28:
  sub_10084931C(a1);
  sub_1000089F8(v2 + v16, v9, &qword_10119A808);
  sub_100848148(a1, v9);
  v35 = v34;
  sub_1000095E8(v9, &qword_10119A808);
  sub_10083AF5C(v35 & 1);
  sub_100842788();
  v36 = v18[242];
  swift_beginAccess();
  sub_1000089F8(v2 + v36, &v45, &unk_1011926C0);
  if (v46)
  {
    sub_1000095E8(&v45, &unk_1011926C0);
  }

  else
  {
    v37 = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(&v45, &unk_1011926C0);
    if (v37)
    {
      [v37 setNeedsUpdateContentUnavailableConfiguration];
    }
  }
}

void sub_1008422A8()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_10119A808);
  __chkstk_darwin(v2 - 8);
  v4 = &v12[-v3];
  v5 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v1 + v5, v12, &unk_1011926C0);
  if (v12[8])
  {
    sub_1000095E8(v12, &unk_1011926C0);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v12, &unk_1011926C0);
    if (Strong)
    {
      v7 = sub_1006A6078();

      v8 = [v7 hasUncommittedUpdates];
      if (v8)
      {
        *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_postponeStaticEntriesUpdates) = 1;
        return;
      }
    }
  }

  *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_postponeStaticEntriesUpdates) = 0;
  sub_100844A18();
  sub_10084A954();
  v9 = sub_10085411C();
  v10 = *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isSearchEnabled);
  *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isSearchEnabled) = v9 & 1;
  sub_1008549A8(v10);
  v11 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_staticEntries;
  swift_beginAccess();
  sub_1000089F8(v1 + v11, v4, &qword_10119A808);
  sub_100830574(v4);
  sub_1000095E8(v4, &qword_10119A808);
}

uint64_t sub_100842480(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prominentEntryID);
  result = *(v2 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prominentEntryID);
  v6 = *(v2 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prominentEntryID + 8);
  *v4 = a1;
  v4[1] = a2;
  if (v6)
  {
    if (a2)
    {
      v7 = result == a1 && v6 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_11;
      }
    }
  }

  else if (!a2)
  {
    return result;
  }

  sub_100842788();
LABEL_11:
}

void sub_100842508()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prominentEntryID);
  if (*(v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prominentEntryID + 8))
  {
    type metadata accessor for Track();

    v3 = MusicItem.contains(_:)();

    if (v3)
    {
      v4 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
      swift_beginAccess();
      sub_1000089F8(v0 + v4, v14, &unk_1011926C0);
      if (v15)
      {
        sub_1000095E8(v14, &unk_1011926C0);
      }

      else
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        sub_1000095E8(v14, &unk_1011926C0);
        if (Strong)
        {
          Strong[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_hasScrolledToProminentItem] = 0;
        }
      }

      sub_1000089F8(v1 + v4, v14, &unk_1011926C0);
      if (v15)
      {
        sub_1000095E8(v14, &unk_1011926C0);
      }

      else
      {
        v13 = swift_unknownObjectWeakLoadStrong();
        sub_1000095E8(v14, &unk_1011926C0);
        if (v13)
        {
          sub_100503D5C();
        }
      }

      return;
    }

    if (v2[1])
    {
      return;
    }
  }

  v5 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v0 + v5, v14, &unk_1011926C0);
  if (v15)
  {
    sub_1000095E8(v14, &unk_1011926C0);
  }

  else
  {
    v6 = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v14, &unk_1011926C0);
    if (v6)
    {
      v6[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_hasScrolledToProminentItem] = 0;
    }
  }

  v8 = Track.id.getter();
  v9 = *v2;
  v10 = v2[1];
  *v2 = v8;
  v2[1] = v7;
  if (!v10 || (v9 == v8 ? (v11 = v10 == v7) : (v11 = 0), !v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
  {
    sub_100842788();
  }
}

void sub_100842788()
{
  v1 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v1 - 8);
  v110 = &v94 - v2;
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v114 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for Playlist.Entry.InternalItem();
  v108 = *(v109 - 8);
  __chkstk_darwin(v109);
  v115 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Playlist.Entry();
  v118 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v106 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v112 = &v94 - v10;
  v11 = sub_10010FC20(&unk_10118BCE0);
  v12 = __chkstk_darwin(v11 - 8);
  v113 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v94 - v15;
  __chkstk_darwin(v14);
  v18 = &v94 - v17;
  v19 = sub_10010FC20(&qword_101191570);
  v20 = __chkstk_darwin(v19 - 8);
  v111 = &v94 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v94 - v22;
  v24 = sub_10010FC20(&qword_10119A808);
  v104 = *(v24 - 8);
  v25 = *(v104 + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v105 = &v94 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v26);
  v103 = &v94 - v28;
  __chkstk_darwin(v27);
  v30 = &v94 - v29;
  if ((*(v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_postponeHighlightLeavingSearch) & 1) != 0 || (v31 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentingEntries, swift_beginAccess(), v117 = v3, v107 = v7, v101 = v31, sub_1000089F8(v0 + v31, v30, &qword_10119A808), v32 = sub_10010FC20(&qword_10118C2B0), v33 = (*(*(v32 - 8) + 48))(v30, 1, v32), v116 = v4, v34 = v33, v3 = v117, v35 = v107, sub_1000095E8(v30, &qword_10119A808), v36 = v34 == 1, v4 = v116, v36) || (v37 = *(v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prominentEntryID + 8)) == 0)
  {
    (*(v4 + 56))(v18, 1, 1, v3);
    v50 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prominentItemIndexPath;
    swift_beginAccess();
    sub_1000089F8(v0 + v50, v16, &unk_10118BCE0);
    swift_beginAccess();
    sub_1002190E0(v18, v0 + v50, &unk_10118BCE0);
    swift_endAccess();
    sub_1008174CC(v16);
    sub_1000095E8(v16, &unk_10118BCE0);
    v51 = v18;
    v52 = &unk_10118BCE0;
LABEL_9:
    sub_1000095E8(v51, v52);
    return;
  }

  v99 = *(v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prominentEntryID);
  v38 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prominentItemIndexPath;
  swift_beginAccess();
  v98 = v38;
  sub_1000089F8(v0 + v38, v18, &unk_10118BCE0);

  v102 = v0;
  sub_1008596BC(v18, v23);
  sub_1000095E8(v18, &unk_10118BCE0);
  v39 = v118;
  v40 = *(v118 + 48);
  v97 = (v118 + 48);
  v96 = v40;
  v41 = v40(v23, 1, v35);
  v100 = v37;
  if (v41 == 1)
  {
    sub_1000095E8(v23, &qword_101191570);
    v42 = v102;
    goto LABEL_6;
  }

  v53 = v112;
  (*(v39 + 16))(v112, v23, v35);

  if (MusicItem.contains(_:)())
  {

    v54 = *(v39 + 8);
    v54(v53, v35);
    v54(v23, v35);
    v42 = v102;
  }

  else
  {
    Playlist.Entry.internalItem.getter();
    sub_100866F00(&qword_1011A4748, &type metadata accessor for Playlist.Entry.InternalItem);
    v62 = v109;
    v63 = v115;
    LODWORD(v95) = MusicItem.contains(_:)();

    (*(v108 + 8))(v63, v62);
    v64 = *(v39 + 8);
    v64(v53, v35);
    v64(v23, v35);
    v42 = v102;
    if ((v95 & 1) == 0)
    {
LABEL_6:
      v44 = v116;
      v43 = v117;
      v45 = *(v116 + 56);
      v112 = (v116 + 56);
      v95 = v45;
      v45(v18, 1, 1, v117);
      v46 = v98;
      sub_1000089F8(v42 + v98, v16, &unk_10118BCE0);
      swift_beginAccess();
      sub_1002190E0(v18, v42 + v46, &unk_10118BCE0);
      swift_endAccess();
      sub_1008174CC(v16);
      v47 = v102;
      sub_1000095E8(v16, &unk_10118BCE0);
      sub_1000095E8(v18, &unk_10118BCE0);
      v48 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_opportunisticProminentItemIndexPath;
      swift_beginAccess();
      v49 = v113;
      sub_1000089F8(v47 + v48, v113, &unk_10118BCE0);
      if ((*(v44 + 48))(v49, 1, v43) == 1)
      {
        sub_1000095E8(v49, &unk_10118BCE0);
        goto LABEL_16;
      }

      v55 = v114;
      (*(v44 + 32))(v114, v49, v43);
      v58 = *(v44 + 16);
      v57 = v44 + 16;
      v56 = v58;
      v58(v18, v55, v43);
      v95(v18, 0, 1, v43);
      v59 = v111;
      sub_1008596BC(v18, v111);
      sub_1000095E8(v18, &unk_10118BCE0);
      v60 = v107;
      if (v96(v59, 1, v107) == 1)
      {
        sub_1000095E8(v59, &qword_101191570);
        v47 = v102;
LABEL_15:
        (*(v116 + 8))(v114, v117);
LABEL_16:
        v61 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prominentItemTask;
        if (*(v47 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prominentItemTask))
        {
        }

        else
        {
          v66 = v110;
          static TaskPriority.userInitiated.getter();
          v67 = type metadata accessor for TaskPriority();
          (*(*(v67 - 8) + 56))(v66, 0, 1, v67);
          v68 = v103;
          sub_1000089F8(v47 + v101, v103, &qword_10119A808);
          v69 = *(v47 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sections);
          v118 = *(v47 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_autoupdatingResponse);
          v70 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v71 = v68;
          v72 = v105;
          sub_10003D17C(v71, v105, &qword_10119A808);
          v73 = (*(v104 + 80) + 40) & ~*(v104 + 80);
          v74 = (v25 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
          v75 = (v74 + 23) & 0xFFFFFFFFFFFFFFF8;
          v76 = swift_allocObject();
          v76[2] = 0;
          v76[3] = 0;
          v76[4] = v69;
          sub_10003D17C(v72, v76 + v73, &qword_10119A808);
          v77 = (v76 + v74);
          v78 = v100;
          *v77 = v99;
          v77[1] = v78;
          v79 = v118;
          *(v76 + v75) = v118;
          *(v76 + ((v75 + 15) & 0xFFFFFFFFFFFFFFF8)) = v70;

          sub_100869670(v79);
          v80 = v110;
          v81 = sub_100805804(0, 0, v110, &unk_100EE4C78, v76);
          sub_1000095E8(v80, &unk_101181520);
          *(v47 + v61) = v81;
        }

        return;
      }

      v97 = v56;
      v113 = v57;
      v83 = v118;
      v84 = v106;
      (*(v118 + 16))(v106, v59, v60);

      if (MusicItem.contains(_:)())
      {

        v85 = *(v83 + 8);
        v85(v84, v60);
        v85(v111, v60);
        v47 = v102;
      }

      else
      {
        Playlist.Entry.internalItem.getter();
        sub_100866F00(&qword_1011A4748, &type metadata accessor for Playlist.Entry.InternalItem);
        v86 = v109;
        v87 = v115;
        v88 = MusicItem.contains(_:)();

        (*(v108 + 8))(v87, v86);
        v89 = *(v83 + 8);
        v89(v106, v60);
        v89(v111, v60);
        v47 = v102;
        if ((v88 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      v90 = v117;
      v91 = v95;
      v95(v18, 1, 1, v117);
      swift_beginAccess();
      sub_10006B010(v18, v47 + v48, &unk_10118BCE0);
      swift_endAccess();
      v92 = v114;
      v97(v18, v114, v90);
      v91(v18, 0, 1, v90);
      v93 = v98;
      sub_1000089F8(v47 + v98, v16, &unk_10118BCE0);
      swift_beginAccess();
      sub_1002190E0(v18, v47 + v93, &unk_10118BCE0);
      swift_endAccess();
      sub_1008174CC(v16);
      sub_1000095E8(v16, &unk_10118BCE0);
      sub_1000095E8(v18, &unk_10118BCE0);
      (*(v116 + 8))(v92, v90);
      return;
    }
  }

  v65 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v42 + v65, v119, &unk_1011926C0);
  if (v119[8])
  {
    v52 = &unk_1011926C0;
    v51 = v119;
    goto LABEL_9;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(v119, &unk_1011926C0);
  if (Strong)
  {
    sub_100503D5C();
  }
}

uint64_t sub_10084371C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[18] = a8;
  v8[19] = v14;
  v8[16] = a6;
  v8[17] = a7;
  v8[14] = a4;
  v8[15] = a5;
  sub_10010FC20(&unk_101181520);
  v8[20] = swift_task_alloc();
  v9 = type metadata accessor for Playlist.Entry.InternalItem();
  v8[21] = v9;
  v8[22] = *(v9 - 8);
  v8[23] = swift_task_alloc();
  v10 = type metadata accessor for Playlist.Entry();
  v8[24] = v10;
  v8[25] = *(v10 - 8);
  v8[26] = swift_task_alloc();
  v8[27] = swift_task_alloc();
  sub_10010FC20(&qword_10119A808);
  v8[28] = swift_task_alloc();
  v11 = *(sub_10010FC20(&unk_10118BCE0) - 8);
  v8[29] = v11;
  v8[30] = *(v11 + 64);
  v8[31] = swift_task_alloc();
  v8[32] = swift_task_alloc();

  return _swift_task_switch(sub_10084393C, 0, 0);
}

uint64_t sub_10084393C()
{
  v1 = v0[14];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v1 + 32;
    while (*(v4 + v3) != 2)
    {
      if (v2 == ++v3)
      {
        goto LABEL_14;
      }
    }

    v5 = v0[28];
    sub_1000089F8(v0[15], v5, &qword_10119A808);
    v6 = sub_10010FC20(&qword_10118C2B0);
    v7 = *(v6 - 8);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_1000095E8(v0[28], &qword_10119A808);
    }

    else
    {
      v41 = v7;
      sub_100020674(&unk_101186ED0, &qword_10118C2B0);
      dispatch thunk of Collection.startIndex.getter();
      dispatch thunk of Collection.endIndex.getter();
      if (v0[12] != v0[13])
      {
        v8 = v0[25];
        v42 = (v0[22] + 8);
        v43 = (v8 + 8);
        v44 = (v8 + 16);
        v45 = v6;
        while (1)
        {
          v9 = v0[27];
          v10 = v0[26];
          v11 = v0[24];
          v12 = dispatch thunk of Collection.subscript.read();
          v13 = *v44;
          (*v44)(v9);
          v12(v0 + 2, 0);
          (v13)(v10, v9, v11);
          v14 = MusicItem.contains(_:)();
          v15 = v0[26];
          v16 = v0[27];
          v17 = v0[24];
          if (v14)
          {
            break;
          }

          v18 = v0[23];
          v19 = v0[21];
          Playlist.Entry.internalItem.getter();
          sub_100866F00(&qword_1011A4748, &type metadata accessor for Playlist.Entry.InternalItem);
          v20 = MusicItem.contains(_:)();
          (*v42)(v18, v19);
          v21 = *v43;
          (*v43)(v15, v17);
          v21(v16, v17);
          if (v20)
          {
            goto LABEL_26;
          }

          v6 = v45;
          dispatch thunk of Collection.formIndex(after:)();
          dispatch thunk of Collection.endIndex.getter();
          if (v0[12] == v0[13])
          {
            goto LABEL_13;
          }
        }

        v39 = *v43;
        (*v43)(v0[26], v0[24]);
        v39(v16, v17);
LABEL_26:
        (*(v41 + 8))(v0[28], v45);
        IndexPath.init(item:section:)();
        v23 = 0;
        goto LABEL_22;
      }

LABEL_13:
      (*(v41 + 8))(v0[28], v6);
    }
  }

LABEL_14:
  v22 = v0[18];
  v23 = 1;
  if (v22 < 0 && (v22 & 0xF000000000000007) != 0xF000000000000007)
  {

    if (dispatch thunk of MusicAutoupdatingResponse.isLoaded.getter())
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      v0[33] = Strong;
      if (Strong)
      {
        type metadata accessor for MainActor();
        v0[34] = static MainActor.shared.getter();
        v26 = dispatch thunk of Actor.unownedExecutor.getter();

        return _swift_task_switch(sub_100844000, v26, v25);
      }
    }

    sub_1004E6028(v0[18]);
    v23 = 1;
  }

LABEL_22:
  v27 = v0[31];
  v28 = v0[32];
  v29 = v0[29];
  v30 = v0[20];
  v31 = type metadata accessor for IndexPath();
  (*(*(v31 - 8) + 56))(v28, v23, 1, v31);
  v32 = type metadata accessor for TaskPriority();
  (*(*(v32 - 8) + 56))(v30, 1, 1, v32);
  v33 = swift_allocObject();
  swift_beginAccess();
  v34 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  sub_1000089F8(v28, v27, &unk_10118BCE0);
  type metadata accessor for MainActor();

  v35 = static MainActor.shared.getter();
  v36 = (*(v29 + 80) + 40) & ~*(v29 + 80);
  v37 = swift_allocObject();
  v37[2] = v35;
  v37[3] = &protocol witness table for MainActor;
  v37[4] = v33;
  sub_10003D17C(v27, v37 + v36, &unk_10118BCE0);

  sub_1001F4CB8(0, 0, v30, &unk_100EE4C88, v37);

  sub_1000095E8(v28, &unk_10118BCE0);

  v38 = v0[1];

  return v38();
}

uint64_t sub_100844000()
{
  v1 = *(v0 + 264);

  sub_1008395B0();

  return _swift_task_switch(sub_100844070, 0, 0);
}

uint64_t sub_100844070()
{
  sub_1004E6028(v0[18]);
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[29];
  v4 = v0[20];
  v5 = type metadata accessor for IndexPath();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  sub_1000089F8(v2, v1, &unk_10118BCE0);
  type metadata accessor for MainActor();

  v9 = static MainActor.shared.getter();
  v10 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v11 = swift_allocObject();
  v11[2] = v9;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = v7;
  sub_10003D17C(v1, v11 + v10, &unk_10118BCE0);

  sub_1001F4CB8(0, 0, v4, &unk_100EE4C88, v11);

  sub_1000095E8(v2, &unk_10118BCE0);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1008442E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v6 = type metadata accessor for Playlist.Entry.InternalItem();
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();
  v7 = type metadata accessor for Playlist.Entry();
  v5[16] = v7;
  v5[17] = *(v7 - 8);
  v5[18] = swift_task_alloc();
  sub_10010FC20(&qword_101191570);
  v5[19] = swift_task_alloc();
  sub_10010FC20(&unk_10118BCE0);
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v8 = type metadata accessor for IndexPath();
  v5[23] = v8;
  v5[24] = *(v8 - 8);
  v5[25] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[26] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100844514, v10, v9);
}

uint64_t sub_100844514()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = v0[23];
    v4 = v0[24];
    v5 = v0[22];
    v6 = v0[12];
    *(Strong + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prominentItemTask) = 0;

    sub_1000089F8(v6, v5, &unk_10118BCE0);
    if ((*(v4 + 48))(v5, 1, v3) == 1)
    {
      v7 = v0[22];

      sub_1000095E8(v7, &unk_10118BCE0);
      goto LABEL_13;
    }

    v9 = v0[24];
    v8 = v0[25];
    v10 = v0[23];
    v11 = v0[21];
    v12 = v0[19];
    v13 = v0[16];
    v14 = v0[17];
    (*(v9 + 32))(v8, v0[22], v10);
    v40 = *(v9 + 16);
    v40(v11, v8, v10);
    v39 = *(v9 + 56);
    v39(v11, 0, 1, v10);
    sub_1008596BC(v11, v12);
    sub_1000095E8(v11, &unk_10118BCE0);
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      sub_1000095E8(v0[19], &qword_101191570);
    }

    else
    {
      if (*&v2[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prominentEntryID + 8])
      {
        (*(v0[17] + 16))(v0[18], v0[19], v0[16]);

        v15 = MusicItem.contains(_:)();
        v17 = v0[18];
        v16 = v0[19];
        v18 = v0[16];
        v19 = v0[17];
        if (v15)
        {

          v20 = *(v19 + 8);
          v20(v17, v18);
          v20(v16, v18);
        }

        else
        {
          v36 = v0[18];
          v37 = v0[19];
          v21 = v0[15];
          v35 = v0[14];
          v22 = v0[13];
          Playlist.Entry.internalItem.getter();
          sub_100866F00(&qword_1011A4748, &type metadata accessor for Playlist.Entry.InternalItem);
          v23 = MusicItem.contains(_:)();

          (*(v35 + 8))(v21, v22);
          v24 = *(v19 + 8);
          v24(v36, v18);
          v24(v37, v18);
          if ((v23 & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        v25 = v0[24];
        v38 = v0[25];
        v26 = v0[23];
        v28 = v0[20];
        v27 = v0[21];
        (v40)(v27);
        v39(v27, 0, 1, v26);
        v29 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prominentItemIndexPath;
        swift_beginAccess();
        sub_1000089F8(&v2[v29], v28, &unk_10118BCE0);
        swift_beginAccess();
        sub_1002190E0(v27, &v2[v29], &unk_10118BCE0);
        swift_endAccess();
        sub_1008174CC(v28);

        sub_1000095E8(v28, &unk_10118BCE0);
        sub_1000095E8(v27, &unk_10118BCE0);
        (*(v25 + 8))(v38, v26);
        goto LABEL_13;
      }

      (*(v0[17] + 8))(v0[19], v0[16]);
    }

LABEL_12:
    v31 = v0[24];
    v30 = v0[25];
    v32 = v0[23];
    sub_100842788();

    (*(v31 + 8))(v30, v32);
  }

LABEL_13:

  v33 = v0[1];

  return v33();
}

uint64_t sub_100844A18()
{
  v85 = type metadata accessor for Playlist.Entry();
  v79 = *(v85 - 8);
  __chkstk_darwin(v85);
  v83 = &v71 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v86 = &v71 - v3;
  __chkstk_darwin(v4);
  v82 = &v71 - v5;
  v76 = sub_10010FC20(&unk_1011A4720);
  __chkstk_darwin(v76);
  v84 = &v71 - v6;
  v7 = type metadata accessor for MusicPropertySource();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v81 = (&v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v80 = &v71 - v11;
  v12 = sub_10010FC20(&qword_10119A808);
  __chkstk_darwin(v12 - 8);
  v14 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v71 - v16;
  __chkstk_darwin(v18);
  v20 = &v71 - v19;
  v21 = sub_10010FC20(&qword_10118C2B0);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v71 - v23;
  v25 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_staticEntries;
  swift_beginAccess();
  sub_1000089F8(v0 + v25, v20, &qword_10119A808);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_1000095E8(v20, &qword_10119A808);
    (*(v22 + 56))(v17, 1, 1, v21);
    v26 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentingEntries;
    swift_beginAccess();
    sub_1000089F8(v0 + v26, v14, &qword_10119A808);
    swift_beginAccess();
    sub_1002190E0(v17, v0 + v26, &qword_10119A808);
    swift_endAccess();
    sub_100841B1C(v14);
    sub_1000095E8(v14, &qword_10119A808);
    return sub_1000095E8(v17, &qword_10119A808);
  }

  v78 = v22;
  v28 = *(v22 + 32);
  v77 = v24;
  v28(v24, v20, v21);
  v29 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_source;
  swift_beginAccess();
  v30 = v80;
  (*(v8 + 16))(v80, v0 + v29, v7);
  v31 = v81;
  (*(v8 + 104))(v81, enum case for MusicPropertySource.catalog(_:), v7);
  LOBYTE(v29) = static MusicPropertySource.== infix(_:_:)();
  v32 = *(v8 + 8);
  v32(v31, v7);
  v32(v30, v7);
  v33 = v21;
  if ((v29 & 1) == 0)
  {
    goto LABEL_13;
  }

  if (*(v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isSearching) != 1)
  {
    goto LABEL_13;
  }

  v34 = *(v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_searchText + 8);
  if (!v34)
  {
    goto LABEL_13;
  }

  v35 = HIBYTE(v34) & 0xF;
  v75 = *(v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_searchText);
  if ((v34 & 0x2000000000000000) == 0)
  {
    v35 = v75 & 0xFFFFFFFFFFFFLL;
  }

  if (v35)
  {
    v73 = v0;
    v36 = v84;
    (*(v78 + 16))(v84, v77, v21);
    v37 = *(v76 + 36);
    sub_100020674(&unk_101186ED0, &qword_10118C2B0);
    v76 = v34;

    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    v38 = *(v36 + v37) == v87._countAndFlagsBits;
    v71 = v17;
    v72 = v14;
    if (!v38)
    {
      v80 = (v79 + 32);
      v81 = (v79 + 16);
      v74 = (v79 + 8);
      v49 = _swiftEmptyArrayStorage;
      v50 = v85;
      while (1)
      {
        v51 = dispatch thunk of Collection.subscript.read();
        v52 = v82;
        v53 = *v81;
        (*v81)(v82);
        v51(&v87, 0);
        v54 = v33;
        dispatch thunk of Collection.formIndex(after:)();
        v55 = *v80;
        (*v80)(v86, v52, v50);
        v56 = Playlist.Entry.title.getter();
        v58 = HIBYTE(v57) & 0xF;
        if ((v57 & 0x2000000000000000) == 0)
        {
          v58 = v56 & 0xFFFFFFFFFFFFLL;
        }

        if (v58)
        {
          v59 = String.insensitiveCompareString()();
          v60 = String.insensitiveCompareString()();
          v87 = v59;
          v88 = v60;
          sub_100009838();
          v61 = StringProtocol.contains<A>(_:)();

          v50 = v85;

          if (v61)
          {
            goto LABEL_27;
          }
        }

        else
        {
        }

        v62 = Playlist.Entry.artistName.getter();
        v64 = HIBYTE(v63) & 0xF;
        if ((v63 & 0x2000000000000000) == 0)
        {
          v64 = v62 & 0xFFFFFFFFFFFFLL;
        }

        if (v64)
        {
          v65 = String.insensitiveCompareString()();
          v66 = String.insensitiveCompareString()();
          v87 = v65;
          v88 = v66;
          sub_100009838();
          v67 = StringProtocol.contains<A>(_:)();

          v50 = v85;

          if (v67)
          {
LABEL_27:
            (v53)(v83, v86, v50);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v49 = sub_10049B104(0, *(v49 + 2) + 1, 1, v49);
            }

            v69 = *(v49 + 2);
            v68 = *(v49 + 3);
            v36 = v84;
            if (v69 >= v68 >> 1)
            {
              v49 = sub_10049B104(v68 > 1, v69 + 1, 1, v49);
            }

            v70 = v79;
            (*(v79 + 8))(v86, v50);
            *(v49 + 2) = v69 + 1;
            v55(&v49[((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v69], v83, v50);
            goto LABEL_16;
          }
        }

        else
        {
        }

        (*v74)(v86, v50);
        v36 = v84;
LABEL_16:
        v33 = v54;
        dispatch thunk of Collection.endIndex.getter();
        if (*(v36 + v37) == v87._countAndFlagsBits)
        {
          goto LABEL_12;
        }
      }
    }

    v49 = _swiftEmptyArrayStorage;
LABEL_12:

    sub_1000095E8(v36, &unk_1011A4720);
    v87._countAndFlagsBits = v49;
    sub_10010FC20(&qword_10119F090);
    sub_100020674(&qword_10119F098, &qword_10119F090);
    v39 = v71;
    MusicItemCollection.init<A>(_:)();
    v40 = v78;
    (*(v78 + 56))(v39, 0, 1, v33);
    v41 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentingEntries;
    v42 = v73;
    swift_beginAccess();
    v43 = v72;
    sub_1000089F8(v42 + v41, v72, &qword_10119A808);
    swift_beginAccess();
    sub_1002190E0(v39, v42 + v41, &qword_10119A808);
    swift_endAccess();
    sub_100841B1C(v43);
    sub_1000095E8(v43, &qword_10119A808);
    sub_1000095E8(v39, &qword_10119A808);
    return (*(v40 + 8))(v77, v33);
  }

  else
  {
LABEL_13:
    v44 = v78;
    v45 = v17;
    v46 = v17;
    v47 = v77;
    (*(v78 + 16))(v46, v77, v21);
    (*(v44 + 56))(v45, 0, 1, v21);
    v48 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentingEntries;
    swift_beginAccess();
    sub_1000089F8(v0 + v48, v14, &qword_10119A808);
    swift_beginAccess();
    sub_1002190E0(v45, v0 + v48, &qword_10119A808);
    swift_endAccess();
    sub_100841B1C(v14);
    sub_1000095E8(v14, &qword_10119A808);
    sub_1000095E8(v45, &qword_10119A808);
    return (*(v44 + 8))(v47, v21);
  }
}

unint64_t sub_10084560C(void (*a1)(char *, uint64_t, uint64_t), uint64_t a2)
{
  v134 = a2;
  v132 = a1;
  v3 = type metadata accessor for UUID();
  v143 = *(v3 - 8);
  __chkstk_darwin(v3);
  v142 = v124 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10010FC20(&unk_1011838D0);
  v139 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v140 = v6;
  v141 = v124 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v150 = (v124 - v8);
  v9 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v9 - 8);
  v133 = v124 - v10;
  v11 = sub_10010FC20(&qword_1011848A0);
  __chkstk_darwin(v11 - 8);
  v131 = (v124 - v12);
  v13 = sub_10010FC20(&unk_1011838E0);
  __chkstk_darwin(v13 - 8);
  v135 = v124 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v136 = v124 - v16;
  __chkstk_darwin(v17);
  v145 = v124 - v18;
  __chkstk_darwin(v19);
  v146 = v124 - v20;
  v21 = sub_10010FC20(&unk_10118AB20);
  __chkstk_darwin(v21 - 8);
  v144 = v124 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v149 = v124 - v24;
  v25 = type metadata accessor for Playlist.Entry.InternalItem();
  v129 = *(v25 - 8);
  v130 = v25;
  __chkstk_darwin(v25);
  v27 = v124 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v28 - 8);
  v30 = v124 - v29;
  v31 = type metadata accessor for Playlist();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = v124 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10010FC20(&unk_1011845D0);
  v137 = *(v35 - 8);
  __chkstk_darwin(v35 - 8);
  v37 = v124 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = v36;
  __chkstk_darwin(v38);
  v148 = v124 - v39;
  v40 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  v147 = v2;
  sub_1000089F8(v2 + v40, &v165, &unk_1011926C0);
  if (v166)
  {
    sub_1000095E8(&v165, &unk_1011926C0);
    return 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(&v165, &unk_1011926C0);
  v128 = Strong;
  if (!Strong)
  {
    return 0;
  }

  v126 = v37;
  v127 = v3;
  v42 = type metadata accessor for PlaylistContext();
  v43 = *(v42 - 8);
  v44 = *(v43 + 56);
  v45 = v148;
  v124[1] = v43 + 56;
  v125 = v44;
  v44(v148, 1, 1, v42);
  v46 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  v47 = v147;
  swift_beginAccess();
  sub_1000089F8(v47 + v46, v30, &unk_1011814D0);
  if ((*(v32 + 48))(v30, 1, v31) == 1)
  {
    sub_1000095E8(v30, &unk_1011814D0);
    v48 = v132;
  }

  else
  {
    sub_1000095E8(v45, &unk_1011845D0);
    v50 = *(v32 + 32);
    v50(v34, v30, v31);
    v51 = type metadata accessor for Playlist.Entry();
    v48 = v132;
    (*(*(v51 - 8) + 16))(v45, v132, v51);
    v50((v45 + *(v42 + 20)), v34, v31);
    v125(v45, 0, 1, v42);
  }

  sub_10010FC20(&unk_101183900);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_100EBC6B0;
  Playlist.Entry.internalItem.getter();
  v125 = v52;
  Playlist.Entry.InternalItem.musicItem.getter((v52 + 32));
  (*(v129 + 8))(v27, v130);
  v53 = v128;
  v54 = [v128 traitCollection];
  sub_100137E8C();
  UITraitCollection.subscript.getter();

  v132 = v165;
  v55 = v131;
  sub_100858450(v48, v131);
  v56 = v146;
  v57 = type metadata accessor for PlaybackIntentDescriptor(0);
  (*(*(v57 - 8) + 56))(v55, 0, 1, v57);
  sub_10086772C(v55, v56, type metadata accessor for PlaybackIntentDescriptor.IntentType);
  sub_100867794(v55, type metadata accessor for PlaybackIntentDescriptor);
  v58 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v59 = *(v58 - 8);
  v60 = *(v59 + 56);
  v130 = v59 + 56;
  v131 = v60;
  (v60)(v56, 0, 1, v58);
  v61 = type metadata accessor for PlaylistDetailDataSource(0);
  v168 = &off_1010C1940;
  v167 = v61;
  v165 = v147;
  v62 = qword_10117F608;
  v147;
  if (v62 != -1)
  {
    swift_once();
  }

  v63 = qword_101218AD8;
  sub_1000089F8(v56, v145, &unk_1011838E0);
  v147 = v63;
  v64 = UIViewController.playActivityInformation.getter();
  v66 = v65;
  v68 = v67;
  v70 = v69;
  sub_1000089F8(&v165, &v157, &unk_101183910);
  if (*(&v158 + 1))
  {
    sub_100059A8C(&v157, &v161);
  }

  else
  {
    *&v169 = v53;
    sub_100009F78(0, &qword_101183D40);
    v71 = v53;
    sub_10010FC20(&unk_101183920);
    if (swift_dynamicCast())
    {
      sub_100059A8C(&v172, &v161);
    }

    else
    {
      v174 = 0;
      v172 = 0u;
      v173 = 0u;
      *&v161 = v71;
      v72 = v71;
      v73 = String.init<A>(reflecting:)();
      v162 = &type metadata for Player.CommandIssuerIdentity;
      v163 = &protocol witness table for Player.CommandIssuerIdentity;
      *&v161 = v73;
      *(&v161 + 1) = v74;
      if (*(&v173 + 1))
      {
        sub_1000095E8(&v172, &unk_101183910);
      }
    }

    v53 = v128;
    if (*(&v158 + 1))
    {
      sub_1000095E8(&v157, &unk_101183910);
    }
  }

  v75 = v149;
  Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v147, v145, v64, v66, v68, v70, &v161, v149);
  sub_1000095E8(v146, &unk_1011838E0);
  sub_1000095E8(&v165, &unk_101183910);
  v76 = type metadata accessor for Actions.PlaybackContext();
  v77 = *(v76 - 8);
  (*(v77 + 56))(v75, 0, 1, v76);
  v78 = type metadata accessor for IndexPath();
  v79 = *(v78 - 8);
  v80 = v133;
  (*(v79 + 16))(v133, v134, v78);
  (*(v79 + 56))(v80, 0, 1, v78);
  sub_1006A6A74(v80, &v165);
  sub_1000095E8(v80, &unk_10118BCE0);
  sub_10085ABE4(v150);
  sub_100008FE4(v125 + 32, v164);

  sub_1000089F8(&v165, &v157, &unk_1011845E0);
  if (v160 == 1)
  {
    v174 = 0;
    v172 = 0u;
    v173 = 0u;
    v175 = xmmword_100EBCEF0;
    PresentationSource.init(viewController:position:)(v53, &v172, &v161);
    v81 = v144;
    if (v160 != 1)
    {
      sub_1000095E8(&v157, &unk_1011845E0);
    }
  }

  else
  {
    sub_10012B828(&v157, &v161);
    v81 = v144;
  }

  swift_getObjectType();
  v82 = swift_conformsToProtocol2();
  if (v82)
  {
    v134 = v82;
    v83 = v53;
    v145 = v53;
  }

  else
  {
    v145 = 0;
    v134 = 0;
  }

  v146 = swift_allocBox();
  v85 = v84;
  sub_1000089F8(v149, v81, &unk_10118AB20);
  v86 = *(v77 + 48);
  if (v86(v81, 1, v76) == 1)
  {
    v87 = v136;
    (v131)(v136, 1, 1, v58);
    v159 = 0;
    v157 = 0u;
    v158 = 0u;
    sub_1000089F8(v87, v135, &unk_1011838E0);
    v147 = v147;
    v88 = UIViewController.playActivityInformation.getter();
    v133 = v89;
    v91 = v90;
    v93 = v92;
    sub_1000089F8(&v157, &v155, &unk_101183910);
    if (v156)
    {
      sub_100059A8C(&v155, &v169);
    }

    else
    {
      v154 = v53;
      sub_100009F78(0, &qword_101183D40);
      v94 = v53;
      sub_10010FC20(&unk_101183920);
      if (swift_dynamicCast())
      {
        sub_100059A8C(&v151, &v169);
        v81 = v144;
      }

      else
      {
        v153 = 0;
        v151 = 0u;
        v152 = 0u;
        *&v169 = v94;
        v95 = v94;
        v96 = String.init<A>(reflecting:)();
        *(&v170 + 1) = &type metadata for Player.CommandIssuerIdentity;
        v171 = &protocol witness table for Player.CommandIssuerIdentity;
        *&v169 = v96;
        *(&v169 + 1) = v97;
        v81 = v144;
        if (*(&v152 + 1))
        {
          sub_1000095E8(&v151, &unk_101183910);
        }
      }

      v53 = v128;
      if (v156)
      {
        sub_1000095E8(&v155, &unk_101183910);
      }
    }

    Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v147, v135, v88, v133, v91, v93, &v169, v85);
    sub_1000095E8(&v157, &unk_101183910);
    sub_1000095E8(v136, &unk_1011838E0);
    if (v86(v81, 1, v76) != 1)
    {
      sub_1000095E8(v81, &unk_10118AB20);
    }
  }

  else
  {
    sub_100869470(v81, v85, type metadata accessor for Actions.PlaybackContext);
  }

  v98 = *(v76 + 28);
  sub_1000089F8(&v85[v98], &v169, &unk_101183910);
  if (*(&v170 + 1))
  {
    sub_100059A8C(&v169, &v157);
    v99 = v148;
  }

  else
  {
    *&v157 = v53;
    v100 = v53;
    v101 = String.init<A>(reflecting:)();
    *(&v158 + 1) = &type metadata for Player.CommandIssuerIdentity;
    v159 = &protocol witness table for Player.CommandIssuerIdentity;
    *&v157 = v101;
    *(&v157 + 1) = v102;
    v99 = v148;
    if (*(&v170 + 1))
    {
      sub_1000095E8(&v169, &unk_101183910);
    }
  }

  sub_10010FC20(&unk_101183930);
  v103 = swift_allocObject();
  *(v103 + 16) = xmmword_100EBDC20;
  *(v103 + 56) = &type metadata for Player.CommandIssuerIdentity;
  *(v103 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v103 + 32) = 0x4D747865746E6F43;
  *(v103 + 40) = 0xEB00000000756E65;
  sub_100008FE4(&v157, v103 + 72);
  v104 = static Player.CommandIssuer<>.combining(_:)();
  v106 = v105;

  sub_10000959C(&v157);
  *(&v158 + 1) = &type metadata for Player.CommandIssuerIdentity;
  v159 = &protocol witness table for Player.CommandIssuerIdentity;
  *&v157 = v104;
  *(&v157 + 1) = v106;
  sub_10006B010(&v157, &v85[v98], &unk_101183910);
  sub_100008FE4(v164, &v157);
  sub_10010FC20(&unk_10118AB50);
  v147 = String.init<A>(describing:)();
  v144 = v107;
  v136 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100008FE4(v164, &v155);
  sub_10012B7A8(&v161, &v157);
  v108 = v141;
  sub_1000089F8(v150, v141, &unk_1011838D0);
  v109 = v126;
  sub_1000089F8(v99, v126, &unk_1011845D0);
  v110 = (*(v139 + 80) + 160) & ~*(v139 + 80);
  v111 = (v140 + v110 + 7) & 0xFFFFFFFFFFFFFFF8;
  v112 = (v111 + 15) & 0xFFFFFFFFFFFFFFF8;
  v113 = (*(v137 + 80) + v112 + 8) & ~*(v137 + 80);
  v140 = (v113 + v138 + 7) & 0xFFFFFFFFFFFFFFF8;
  v114 = (v113 + v138 + 31) & 0xFFFFFFFFFFFFFFF8;
  v115 = swift_allocObject();
  sub_100059A8C(&v155, v115 + 16);
  *(v115 + 56) = v132;
  sub_10012B828(&v157, v115 + 64);
  sub_10003D17C(v108, v115 + v110, &unk_1011838D0);
  *(v115 + v111) = v136;
  *(v115 + v112) = v146;
  sub_10003D17C(v109, v115 + v113, &unk_1011845D0);
  v116 = v115 + v140;
  v117 = v134;
  *v116 = v145;
  *(v116 + 8) = v117;
  *(v116 + 16) = 2;
  v118 = (v115 + v114);
  *v118 = variable initialization expression of Library.Context.playlistVariants;
  v118[1] = 0;
  swift_unknownObjectRetain();

  v119 = v142;
  UUID.init()();
  v120 = UUID.uuidString.getter();
  v122 = v121;
  (*(v143 + 8))(v119, v127);
  v176._countAndFlagsBits = v147;
  v176._object = v144;
  ActionMenuBuilder.init(id:debugDescription:actionBuilder:)(v176, v120, v122, sub_100217D28, v115, &v169);
  swift_unknownObjectRelease();
  sub_10012BA6C(&v161);
  sub_10000959C(v164);

  v123 = ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(_swiftEmptyArrayStorage, 0);
  v161 = v169;
  sub_100015BB0(&v161);
  v157 = v170;
  sub_100015BB0(&v157);

  sub_1000095E8(v150, &unk_1011838D0);
  sub_1000095E8(&v165, &unk_1011845E0);
  sub_1000095E8(v149, &unk_10118AB20);
  sub_1000095E8(v148, &unk_1011845D0);
  return v123;
}

uint64_t sub_100846A54()
{
  v1 = type metadata accessor for Playlist.Entry.InternalItem();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v106 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v106 - v6;
  v141 = sub_10010FC20(&unk_10118B970);
  __chkstk_darwin(v141);
  v149 = &v106 - v8;
  v9 = sub_10010FC20(&unk_10118BCE0);
  v10 = __chkstk_darwin(v9 - 8);
  v142 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v143 = &v106 - v12;
  v13 = sub_10010FC20(&qword_1011A4740);
  __chkstk_darwin(v13 - 8);
  v146 = (&v106 - v14);
  v15 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v15 - 8);
  v145 = &v106 - v16;
  v151 = type metadata accessor for Playlist();
  v157 = *(v151 - 8);
  __chkstk_darwin(v151);
  v150 = &v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = sub_10010FC20(&qword_10118C2B0);
  v156 = *(v159 - 8);
  __chkstk_darwin(v159);
  v153 = &v106 - v18;
  v19 = sub_10010FC20(&qword_10119A808);
  __chkstk_darwin(v19 - 8);
  v154 = &v106 - v20;
  v152 = type metadata accessor for Playlist.Entry();
  v158 = *(v152 - 8);
  v21 = *(v158 + 64);
  v22 = __chkstk_darwin(v152);
  v139 = &v106 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v22);
  v148 = &v106 - v24;
  v25 = __chkstk_darwin(v23);
  v144 = &v106 - v26;
  __chkstk_darwin(v25);
  v155 = &v106 - v27;
  v28 = type metadata accessor for IndexPath();
  v29 = *(v28 - 8);
  v30 = __chkstk_darwin(v28);
  v147 = &v106 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = v31;
  __chkstk_darwin(v30);
  v33 = &v106 - v32;
  v34 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  v161 = v0;
  sub_1000089F8(v0 + v34, v165, &unk_1011926C0);
  if (v165[8])
  {
    return sub_1000095E8(v165, &unk_1011926C0);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  result = sub_1000095E8(v165, &unk_1011926C0);
  if (Strong)
  {
    v133 = v7;
    v134 = v5;
    v37 = sub_1006A6078();

    v38 = [v37 _indexPathsForPreparedItems];
    v39 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v40 = v39;
    v41 = *(v39 + 16);
    if (v41)
    {
      v123 = v1;
      v42 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
      v43 = v161;
      v135 = v2;
      v44 = v161 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prominentItemIndexPath;
      v112 = v161 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prominentEntryID;
      v136 = v34;
      v138 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playerStateCache;
      v45 = *(v29 + 80);
      v119 = ~v45;
      v137 = v40;
      v46 = v40 + ((v45 + 32) & ~v45);
      v132 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentingEntries;
      swift_beginAccess();
      v129 = v42;
      swift_beginAccess();
      v121 = v44;
      swift_beginAccess();
      swift_beginAccess();
      v48 = *(v29 + 16);
      v47 = v29 + 16;
      v163 = v48;
      v49 = (v47 - 8);
      v131 = (v156 + 48);
      v128 = (v156 + 16);
      v162 = *(v47 + 56);
      v127 = (v156 + 8);
      v50 = v43;
      v130 = (v158 + 32);
      v126 = (v157 + 48);
      v118 = (v157 + 32);
      v125 = v158 + 16;
      v120 = v45;
      v117 = v21 + v45;
      v51 = v136;
      v124 = (v47 + 16);
      v116 = (v47 + 40);
      v115 = (v47 + 32);
      v122 = v135 + 1;
      v135 = (v158 + 8);
      v114 = (v157 + 8);
      v160 = v47;
      v48(v33, v46, v28);
      while (1)
      {
        sub_1000089F8(v50 + v51, v164, &unk_1011926C0);
        if (v164[8])
        {
          sub_1000095E8(v164, &unk_1011926C0);
LABEL_7:
          (*v49)(v33, v28);
          goto LABEL_8;
        }

        v52 = swift_unknownObjectWeakLoadStrong();
        sub_1000095E8(v164, &unk_1011926C0);
        if (!v52)
        {
          goto LABEL_7;
        }

        v53 = sub_1006A6078();

        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        v55 = [v53 cellForItemAtIndexPath:isa];

        if (!v55)
        {
          goto LABEL_21;
        }

        _s13TracklistCellCMa();
        v56 = swift_dynamicCastClass();
        v57 = v159;
        if (!v56)
        {
          break;
        }

        v58 = *(v56 + OBJC_IVAR____TtCV5Music15ContainerDetail13TracklistCell_data + 8);
        if ((~v58 & 0xF000000000000007) == 0)
        {
          (*v49)(v33, v28);

          v50 = v161;
          goto LABEL_8;
        }

        if (v58 >> 62)
        {
          break;
        }

        v113 = v56;
        v156 = v58;
        v59 = *(v56 + OBJC_IVAR____TtCV5Music15ContainerDetail13TracklistCell_data);
        type metadata accessor for PlaylistEntryData();
        v157 = v59;
        v60 = swift_dynamicCastClass();
        if (v60)
        {
          v111 = v60;
          v61 = v154;
          sub_1000089F8(v161 + v132, v154, &qword_10119A808);
          if ((*v131)(v61, 1, v57))
          {
            v62 = v157;
            v63 = v156;
            sub_1004E5BF8(v157, v156);
            (*v49)(v33, v28);

            sub_1004E5C14(v62, v63);
            v64 = v61;
            v65 = &qword_10119A808;
          }

          else
          {
            (*v128)(v153, v61, v57);
            sub_1004E5BF8(v157, v156);
            sub_1000095E8(v61, &qword_10119A808);
            v66 = v57;
            IndexPath.item.getter();
            v67 = v144;
            v68 = v153;
            MusicItemCollection.subscript.getter();
            (*v127)(v68, v66);
            v69 = v152;
            KeyPath = *v130;
            (KeyPath)(v155, v67, v152);
            v70 = v145;
            sub_1000089F8(v161 + v129, v145, &unk_1011814D0);
            v71 = v70;
            v72 = v70;
            v73 = v151;
            if ((*v126)(v72, 1, v151) != 1)
            {
              (*v118)(v150, v71, v73);
              v74 = v155;
              sub_100848DE0(v155, v146);
              v109 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v75 = v158;
              v107 = *(v158 + 16);
              v107(v148, v74, v69);
              v163(v147, v33, v28);
              v76 = (*(v75 + 80) + 24) & ~*(v75 + 80);
              v108 = ((v117 + v76) & v119);
              v77 = swift_allocObject();
              *(v77 + 16) = v109;
              v78 = v77 + v76;
              v79 = v77;
              (KeyPath)(v78, v148, v69);
              v80 = v108 + v79;
              v108 = *v124;
              v108(v80, v147, v28);

              v81 = v146;
              sub_10026CCAC(v155, v150, v146, sub_1008694D8, v79);

              sub_1000095E8(v81, &qword_1011A4740);

              v82 = v143;
              v163(v143, v33, v28);
              (*v116)(v82, 0, 1, v28);
              v83 = *(v141 + 48);
              v84 = v149;
              sub_1000089F8(v121, v149, &unk_10118BCE0);
              KeyPath = v83;
              sub_1000089F8(v82, v84 + v83, &unk_10118BCE0);
              v109 = *v115;
              if (v109(v84, 1, v28) == 1)
              {
                sub_1000095E8(v82, &unk_10118BCE0);
                v85 = v149;
                v86 = v109(v149 + KeyPath, 1, v28) == 1;
                v87 = v157;
                v88 = v85;
                if (!v86)
                {
LABEL_32:
                  sub_1000095E8(v88, &unk_10118B970);
                  v91 = 0;
                  goto LABEL_40;
                }

                sub_1000095E8(v85, &unk_10118BCE0);
                v89 = v139;
LABEL_34:
                KeyPath = *(v112 + 8);
                if (KeyPath)
                {
                  v109 = *v112;
                  v107(v89, v155, v152);

                  v94 = v139;
                  if (MusicItem.contains(_:)())
                  {

                    (*v135)(v94, v152);
                    v91 = 1;
                  }

                  else
                  {
                    Playlist.Entry.internalItem.getter();
                    sub_100866F00(&qword_1011A4748, &type metadata accessor for Playlist.Entry.InternalItem);
                    v91 = MusicItem.contains(_:)();

                    (*v122)(v133, v123);
                    (*v135)(v139, v152);
                  }

                  v87 = v157;
LABEL_40:
                  KeyPath = swift_getKeyPath();
                  v109 = swift_getKeyPath();
                  v95 = v91 & 1;
                  v164[0] = v95;
                  sub_1004E5BF8(v87, v156);
                  static Published.subscript.setter();
                  v96 = v113;
                  v97 = v113[OBJC_IVAR____TtCV5Music15ContainerDetail13TracklistCell_isProminent];
                  v113[OBJC_IVAR____TtCV5Music15ContainerDetail13TracklistCell_isProminent] = v95;
                  if (v95 != v97)
                  {
                    [v96 setNeedsUpdateConfiguration];
                  }

                  v98 = v134;
                  Playlist.Entry.internalItem.getter();
                  v111 = Playlist.Entry.InternalItem.id.getter();
                  v113 = v99;
                  (*v122)(v98, v123);
                  v100 = *(v161 + v138);
                  if (*(v100 + 16) && (, KeyPath = sub_100019C10(v111, v113), LODWORD(v111) = v101, , (v111 & 1) != 0))
                  {
                    v102 = *(*(v100 + 56) + 8 * KeyPath);

                    v103 = v148;
                    v107(v148, v155, v152);
                    (*(*v102 + 224))(v103);

                    sub_1004E5C14(v157, v156);
                    (*v114)(v150, v151);
                    (*v135)(v155, v152);
                  }

                  else
                  {

                    v104 = v151;
                    v105 = v152;
                    sub_1004E5C14(v157, v156);
                    (*v114)(v150, v104);
                    (*v135)(v155, v105);
                  }

LABEL_21:
                  (*v49)(v33, v28);
                  v50 = v161;
                  goto LABEL_8;
                }
              }

              else
              {
                v90 = v149;
                sub_1000089F8(v149, v142, &unk_10118BCE0);
                if (v109(v90 + KeyPath, 1, v28) == 1)
                {
                  sub_1000095E8(v143, &unk_10118BCE0);
                  (*v49)(v142, v28);
                  v87 = v157;
                  v88 = v149;
                  goto LABEL_32;
                }

                v92 = v147;
                v108(v147, (v149 + KeyPath), v28);
                sub_100866F00(&qword_101192840, &type metadata accessor for IndexPath);
                LODWORD(KeyPath) = dispatch thunk of static Equatable.== infix(_:_:)();
                v93 = *v49;
                (*v49)(v92, v28);
                sub_1000095E8(v143, &unk_10118BCE0);
                v93(v142, v28);
                sub_1000095E8(v149, &unk_10118BCE0);
                v89 = v139;
                v87 = v157;
                if (KeyPath)
                {
                  goto LABEL_34;
                }
              }

              v91 = 0;
              goto LABEL_40;
            }

            sub_1004E5C14(v157, v156);
            (*v135)(v155, v69);
            (*v49)(v33, v28);
            v64 = v71;
            v65 = &unk_1011814D0;
          }

          sub_1000095E8(v64, v65);
          v50 = v161;
        }

        else
        {

          (*v49)(v33, v28);
          v50 = v161;
        }

LABEL_8:
        v46 += v162;
        if (!--v41)
        {
        }

        v163(v33, v46, v28);
      }

      goto LABEL_21;
    }
  }

  return result;
}

unint64_t sub_1008480C8(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t, uint64_t), uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v7 = Strong;
  v8 = sub_10084560C(a3, a4);

  return v8;
}