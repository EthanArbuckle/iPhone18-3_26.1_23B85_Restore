void sub_100429E44(char a1)
{
  v3 = a1 & 1;
  v4 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  LODWORD(v5) = *(v1 + 16);
  *(v1 + 16) = a1;
  if (v5 != v3)
  {
    swift_beginAccess();
    *(v1 + 32) = _swiftEmptyDictionarySingleton;

    v7 = type metadata accessor for TaskPriority();
    v8 = *(*(v7 - 8) + 56);
    v8(v6, 1, 1, v7);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v1;

    sub_1001F4CB8(0, 0, v6, &unk_100ECBC48, v9);

    v8(v6, 1, 1, v7);
    type metadata accessor for MainActor();
    v10 = static MainActor.shared.getter();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = &protocol witness table for MainActor;
    sub_1001F4CB8(0, 0, v6, &unk_100ECBC58, v11);
  }
}

uint64_t sub_10042A018()
{
  type metadata accessor for LibraryPinsController();
  v0 = swift_allocObject();
  result = sub_10042A0E8();
  qword_101218C40 = v0;
  return result;
}

uint64_t sub_10042A054()
{
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10042EB40, v2, v1);
}

uint64_t sub_10042A0E8()
{
  v1 = v0;
  v2 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v2 - 8);
  v50 = v38 - v3;
  v4 = sub_10010FC20(&unk_101182130);
  v5 = *(v4 - 8);
  v46 = v4;
  v47 = v5;
  __chkstk_darwin(v4);
  v44 = v38 - v6;
  v7 = sub_10010FC20(&unk_101183B20);
  v8 = *(v7 - 8);
  v48 = v7;
  v49 = v8;
  __chkstk_darwin(v7);
  v45 = v38 - v9;
  v10 = sub_10010FC20(&qword_101182140);
  __chkstk_darwin(v10 - 8);
  v12 = v38 - v11;
  v13 = sub_10010FC20(&unk_101197280);
  v14 = *(v13 - 8);
  v42 = v13;
  v43 = v14;
  __chkstk_darwin(v13);
  v16 = v38 - v15;
  v17 = type metadata accessor for MusicRestrictions();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 16) = 0;
  *(v1 + 24) = &_swiftEmptySetSingleton;
  v41 = v1 + 24;
  *(v1 + 32) = sub_10003C744(_swiftEmptyArrayStorage);
  *(v1 + 40) = 1;
  static MusicRestrictions.current.getter();
  v21 = MusicRestrictions.allowsExplicitContent.getter();
  v22 = *(v18 + 8);
  v22(v20, v17);
  *(v1 + 41) = v21 & 1;
  static MusicRestrictions.current.getter();
  v23 = MusicRestrictions.allowsMusicVideos.getter();
  v22(v20, v17);
  *(v1 + 42) = v23 & 1;
  type metadata accessor for MusicLibrary();
  static MusicLibrary.shared.getter();
  MusicLibrary.pinsObserver.getter();

  v24 = dispatch thunk of MusicLibraryPinsObserver.pinsPublisher.getter();

  v51 = v24;
  sub_100027010();
  v25 = static OS_dispatch_queue.main.getter();
  v52 = v25;
  v26 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v27 = *(v26 - 8);
  v39 = *(v27 + 56);
  v40 = v27 + 56;
  v39(v12, 1, 1, v26);
  sub_10010FC20(&qword_10118BFE8);
  sub_100020674(&unk_101197290, &qword_10118BFE8);
  v38[1] = sub_10001C0B4(&qword_101184920, sub_100027010);
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v12, &qword_101182140);

  swift_allocObject();
  swift_weakInit();
  v38[0] = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_100020674(&qword_10118BFF0, &unk_101197280);

  v28 = v42;
  Publisher<>.sink(receiveValue:)();

  (*(v43 + 8))(v16, v28);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  NetworkMonitor.shared.unsafeMutableAddressor();

  v29 = v44;
  NetworkMonitor.$isOnline.getter();

  v30 = static OS_dispatch_queue.main.getter();
  v51 = v30;
  v39(v12, 1, 1, v26);
  sub_100020674(&qword_101184280, &unk_101182130);
  v31 = v45;
  v32 = v46;
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v12, &qword_101182140);

  (*(v47 + 8))(v29, v32);
  swift_allocObject();
  swift_weakInit();

  sub_100020674(&unk_101182180, &unk_101183B20);
  v33 = v48;
  Publisher<>.sink(receiveValue:)();

  (*(v49 + 8))(v31, v33);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v34 = type metadata accessor for TaskPriority();
  v35 = v50;
  (*(*(v34 - 8) + 56))(v50, 1, 1, v34);
  v36 = swift_allocObject();
  v36[2] = 0;
  v36[3] = 0;
  v36[4] = v1;

  sub_1001F4CB8(0, 0, v35, &unk_100ECBCD0, v36);

  return v1;
}

uint64_t sub_10042A8EC()
{
  v0 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v0 - 8);
  v2 = &v7[-v1];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_beginAccess();
    *(v4 + 32) = _swiftEmptyDictionarySingleton;

    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = v4;
    sub_1001F4CB8(0, 0, v2, &unk_100ECBD60, v6);
  }

  return result;
}

uint64_t sub_10042AA34(unsigned __int8 *a1)
{
  v2 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v2 - 8);
  v4 = &v14[-v3];
  v5 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = *(result + 40);
    *(result + 40) = v5;
    if (v5 != v7)
    {
      v8 = result;
      swift_beginAccess();
      *(v8 + 32) = _swiftEmptyDictionarySingleton;

      v9 = type metadata accessor for TaskPriority();
      v10 = *(*(v9 - 8) + 56);
      v10(v4, 1, 1, v9);
      v11 = swift_allocObject();
      v11[2] = 0;
      v11[3] = 0;
      v11[4] = v8;

      sub_1001F4CB8(0, 0, v4, &unk_100ECBD48, v11);

      v10(v4, 1, 1, v9);
      type metadata accessor for MainActor();
      v12 = static MainActor.shared.getter();
      v13 = swift_allocObject();
      *(v13 + 16) = v12;
      *(v13 + 24) = &protocol witness table for MainActor;
      sub_1001F4CB8(0, 0, v4, &unk_100ECBD58, v13);
    }
  }

  return result;
}

uint64_t sub_10042AC40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a4;
  sub_10010FC20(&unk_101181520);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v5 = type metadata accessor for MusicRestrictions();
  v4[30] = v5;
  v4[31] = *(v5 - 8);
  v4[32] = swift_task_alloc();
  sub_10010FC20(&qword_10118F4F8);
  v4[33] = swift_task_alloc();
  v6 = sub_10010FC20(&qword_10118F500);
  v4[34] = v6;
  v4[35] = *(v6 - 8);
  v4[36] = swift_task_alloc();
  v7 = sub_10010FC20(&qword_10118F508);
  v4[37] = v7;
  v4[38] = *(v7 - 8);
  v4[39] = swift_task_alloc();

  return _swift_task_switch(sub_10042AE94, 0, 0);
}

uint64_t sub_10042AE94()
{
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[34];
  static MusicRestrictions.updates.getter();
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  v4 = swift_task_alloc();
  v0[40] = v4;
  *v4 = v0;
  v4[1] = sub_10042AFA0;
  v5 = v0[37];
  v6 = v0[33];

  return AsyncStream.Iterator.next(isolation:)(v6, 0, 0, v5);
}

uint64_t sub_10042AFA0()
{

  return _swift_task_switch(sub_10042B09C, 0, 0);
}

uint64_t sub_10042B09C()
{
  v1 = v0[33];
  v2 = v0[30];
  v3 = v0[31];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[38] + 8))(v0[39], v0[37]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[21];
    (*(v3 + 32))(v0[32], v1, v2);
    v7 = MusicRestrictions.allowsExplicitContent.getter();
    v8 = *(v6 + 41);
    *(v6 + 41) = v7 & 1;
    if ((v7 & 1) != v8)
    {
      v9 = v0[28];
      v10 = v0[29];
      v11 = v0[21];
      *(v11 + 32) = _swiftEmptyDictionarySingleton;

      v12 = type metadata accessor for TaskPriority();
      v13 = *(v12 - 8);
      v61 = *(v13 + 56);
      v61(v10, 1, 1, v12);
      v14 = swift_allocObject();
      v14[2] = 0;
      v14[3] = 0;
      v14[4] = v11;
      sub_1000089F8(v10, v9, &unk_101181520);
      v63 = *(v13 + 48);
      LODWORD(v9) = v63(v9, 1, v12);

      v15 = v0[28];
      if (v9 == 1)
      {
        sub_1000095E8(v0[28], &unk_101181520);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v13 + 8))(v15, v12);
      }

      v16 = v14[2];
      swift_unknownObjectRetain();

      if (v16)
      {
        swift_getObjectType();
        v17 = dispatch thunk of Actor.unownedExecutor.getter();
        v19 = v18;
        swift_unknownObjectRelease();
      }

      else
      {
        v17 = 0;
        v19 = 0;
      }

      sub_1000095E8(v0[29], &unk_101181520);
      v20 = swift_allocObject();
      *(v20 + 16) = &unk_100ECBCF0;
      *(v20 + 24) = v14;
      if (v19 | v17)
      {
        v0[2] = 0;
        v0[3] = 0;
        v0[4] = v17;
        v0[5] = v19;
      }

      v21 = v0[26];
      v22 = v0[27];
      swift_task_create();

      v61(v22, 1, 1, v12);
      type metadata accessor for MainActor();
      v23 = static MainActor.shared.getter();
      v24 = swift_allocObject();
      *(v24 + 16) = v23;
      *(v24 + 24) = &protocol witness table for MainActor;
      sub_1000089F8(v22, v21, &unk_101181520);
      v25 = v63(v21, 1, v12);

      v26 = v0[26];
      if (v25 == 1)
      {
        sub_1000095E8(v0[26], &unk_101181520);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v13 + 8))(v26, v12);
      }

      v27 = *(v24 + 16);
      swift_unknownObjectRetain();

      if (v27)
      {
        swift_getObjectType();
        v28 = dispatch thunk of Actor.unownedExecutor.getter();
        v30 = v29;
        swift_unknownObjectRelease();
      }

      else
      {
        v28 = 0;
        v30 = 0;
      }

      sub_1000095E8(v0[27], &unk_101181520);
      v31 = swift_allocObject();
      *(v31 + 16) = &unk_100ECBD10;
      *(v31 + 24) = v24;
      if (v30 | v28)
      {
        v0[6] = 0;
        v0[7] = 0;
        v0[8] = v28;
        v0[9] = v30;
      }

      swift_task_create();
    }

    v32 = v0[21];
    v33 = MusicRestrictions.allowsMusicVideos.getter();
    v34 = *(v32 + 42);
    *(v32 + 42) = v33 & 1;
    if ((v33 & 1) != v34)
    {
      v35 = v0[24];
      v36 = v0[25];
      v37 = v0[21];
      *(v37 + 32) = _swiftEmptyDictionarySingleton;

      v38 = type metadata accessor for TaskPriority();
      v39 = *(v38 - 8);
      v62 = *(v39 + 56);
      v62(v36, 1, 1, v38);
      v40 = swift_allocObject();
      v40[2] = 0;
      v40[3] = 0;
      v40[4] = v37;
      sub_1000089F8(v36, v35, &unk_101181520);
      v64 = *(v39 + 48);
      LODWORD(v35) = v64(v35, 1, v38);

      v41 = v0[24];
      if (v35 == 1)
      {
        sub_1000095E8(v0[24], &unk_101181520);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v39 + 8))(v41, v38);
      }

      v42 = v40[2];
      swift_unknownObjectRetain();

      if (v42)
      {
        swift_getObjectType();
        v43 = dispatch thunk of Actor.unownedExecutor.getter();
        v45 = v44;
        swift_unknownObjectRelease();
      }

      else
      {
        v43 = 0;
        v45 = 0;
      }

      sub_1000095E8(v0[25], &unk_101181520);
      v46 = swift_allocObject();
      *(v46 + 16) = &unk_100ECBD20;
      *(v46 + 24) = v40;
      if (v45 | v43)
      {
        v0[10] = 0;
        v0[11] = 0;
        v0[12] = v43;
        v0[13] = v45;
      }

      v47 = v0[22];
      v48 = v0[23];
      swift_task_create();

      v62(v48, 1, 1, v38);
      type metadata accessor for MainActor();
      v49 = static MainActor.shared.getter();
      v50 = swift_allocObject();
      *(v50 + 16) = v49;
      *(v50 + 24) = &protocol witness table for MainActor;
      sub_1000089F8(v48, v47, &unk_101181520);
      v51 = v64(v47, 1, v38);

      v52 = v0[22];
      if (v51 == 1)
      {
        sub_1000095E8(v0[22], &unk_101181520);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v39 + 8))(v52, v38);
      }

      v53 = *(v50 + 16);
      swift_unknownObjectRetain();

      if (v53)
      {
        swift_getObjectType();
        v54 = dispatch thunk of Actor.unownedExecutor.getter();
        v56 = v55;
        swift_unknownObjectRelease();
      }

      else
      {
        v54 = 0;
        v56 = 0;
      }

      sub_1000095E8(v0[23], &unk_101181520);
      v57 = swift_allocObject();
      *(v57 + 16) = &unk_100ECBD38;
      *(v57 + 24) = v50;
      if (v56 | v54)
      {
        v0[14] = 0;
        v0[15] = 0;
        v0[16] = v54;
        v0[17] = v56;
      }

      swift_task_create();
    }

    (*(v0[31] + 8))(v0[32], v0[30]);
    v58 = swift_task_alloc();
    v0[40] = v58;
    *v58 = v0;
    v58[1] = sub_10042AFA0;
    v59 = v0[37];
    v60 = v0[33];

    return AsyncStream.Iterator.next(isolation:)(v60, 0, 0, v59);
  }
}

uint64_t sub_10042BAAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v151 = a2;
  v174 = a1;
  v172 = a3;
  v170 = type metadata accessor for Logger();
  v165 = *(v170 - 8);
  __chkstk_darwin(v170);
  v169 = &v124 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v173 = *(v175 - 8);
  __chkstk_darwin(v175);
  v150 = &v124 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v149 = &v124 - v6;
  v133 = type metadata accessor for Song();
  v132 = *(v133 - 8);
  __chkstk_darwin(v133);
  v130 = &v124 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v131 = &v124 - v9;
  v137 = sub_10010FC20(&qword_10118A3B0);
  v136 = *(v137 - 8);
  __chkstk_darwin(v137);
  v135 = &v124 - v10;
  v146 = type metadata accessor for Playlist();
  v145 = *(v146 - 8);
  __chkstk_darwin(v146);
  v144 = &v124 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = type metadata accessor for MusicVideo();
  v147 = *(v148 - 8);
  __chkstk_darwin(v148);
  v142 = &v124 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v143 = &v124 - v14;
  v15 = sub_10010FC20(&unk_1011846B0);
  __chkstk_darwin(v15 - 8);
  v129 = &v124 - v16;
  v17 = _s11MusicVideosV5ScopeOMa(0);
  __chkstk_darwin(v17 - 8);
  v127 = &v124 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = _s11MusicVideosVMa(0);
  __chkstk_darwin(v19 - 8);
  v128 = &v124 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10010FC20(&unk_101184730);
  __chkstk_darwin(v21 - 8);
  v141 = &v124 - v22;
  v139 = _s6AlbumsV5ScopeOMa(0);
  __chkstk_darwin(v139);
  v152 = &v124 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = _s6AlbumsVMa(0);
  __chkstk_darwin(v24 - 8);
  v140 = &v124 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v155 = *(v156 - 8);
  __chkstk_darwin(v156);
  v154 = &v124 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v153 = &v124 - v28;
  v158 = type metadata accessor for Artist();
  v157 = *(v158 - 8);
  __chkstk_darwin(v158);
  v159 = &v124 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10010FC20(&qword_101188E88);
  v164 = *(v30 - 8);
  __chkstk_darwin(v30);
  v32 = &v124 - v31;
  v33 = type metadata accessor for Album();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v36 = &v124 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for MusicPin.Item();
  v38 = *(v37 - 8);
  __chkstk_darwin(v37);
  v168 = &v124 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v42 = &v124 - v41;
  v43 = sub_10010FC20(&unk_10118CDB0);
  __chkstk_darwin(v43 - 8);
  v45 = &v124 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v134 = &v124 - v47;
  __chkstk_darwin(v48);
  v50 = &v124 - v49;
  __chkstk_darwin(v51);
  v126 = &v124 - v52;
  __chkstk_darwin(v53);
  v138 = &v124 - v54;
  __chkstk_darwin(v55);
  v163 = &v124 - v56;
  v58 = __chkstk_darwin(v57);
  v160 = &v124 - v59;
  v60 = *(v38 + 16);
  v162 = v38 + 16;
  v161 = v60;
  v60(v42, v174, v37, v58);
  v61 = (*(v38 + 88))(v42, v37);
  v166 = v34;
  v167 = v33;
  if (v61 == enum case for MusicPin.Item.album(_:))
  {
    (*(v38 + 96))(v42, v37);
    (*(v34 + 32))(v36, v42, v33);
    type metadata accessor for Track();
    MusicLibrarySectionedRequest.init()();
    swift_getKeyPath();
    LOBYTE(v179) = 1;
    MusicLibrarySectionedRequest<>.includeSections<A>(matching:equalTo:)();

    v125 = v37;
    MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
    MusicLibrarySectionedRequest<>.filterSections(equalTo:)();
    swift_getKeyPath();
    MusicLibrarySectionedRequest.sortItems<A>(by:ascending:)();

    swift_getKeyPath();
    MusicLibrarySectionedRequest.sortItems<A>(by:ascending:)();

    swift_getKeyPath();
    MusicLibrarySectionedRequest.sortItems<A>(by:ascending:)();

    v180 = v30;
    v181 = sub_100020674(&qword_101188E90, &qword_101188E88);
    v62 = sub_10001C8B8(&v179);
    v63 = v164;
    (*(v164 + 16))(v62, v32, v30);
    v178 = 0;
    v176 = 0u;
    v177 = 0u;
    v50 = v163;
    MusicPlaybackIntentDescriptor.init(request:startingAt:)();
    v64 = v173;
    (*(v63 + 8))(v32, v30);
    (*(v166 + 8))(v36, v167);
    goto LABEL_13;
  }

  v65 = v171;
  if (v61 == enum case for MusicPin.Item.artist(_:))
  {
    (*(v38 + 96))(v42, v37);
    v66 = v157;
    v67 = v159;
    v68 = v158;
    (*(v157 + 32))(v159, v42, v158);
    v69 = v153;
    Artist.pinPlayabilityStatus(isOnline:explicitContentIsAllowed:)(*(v65 + 40), *(v65 + 41), v153);
    v70 = v155;
    v71 = v154;
    v72 = v156;
    (*(v155 + 104))(v154, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v156);
    v73 = static MusicPlayer.PlayabilityStatus.== infix(_:_:)();
    v74 = *(v70 + 8);
    v74(v71, v72);
    v74(v69, v72);
    if ((v73 & 1) == 0)
    {
      (*(v66 + 8))(v67, v68);
      return (*(v173 + 56))(v172, 1, 1, v175);
    }

    v75 = v66;
    v76 = Artist.id.getter();
    v78 = v77;
    swift_beginAccess();
    v79 = *(v65 + 32);
    v64 = v173;
    if (*(v79 + 16))
    {
      v80 = sub_100019C10(v76, v78);
      v82 = v81;

      v83 = v160;
      v84 = v75;
      if (v82)
      {
        v85 = *(*(v79 + 56) + v80);
        swift_endAccess();
        v86 = v159;
        v87 = v68;
        if ((v85 & 1) == 0)
        {
          v88 = v127;
          (*(v84 + 16))(v127, v159, v87);
          v89 = 1;
          (*(v84 + 56))(v88, 0, 1, v87);
          if ((*(v65 + 16) & 1) == 0)
          {
            v89 = *(v65 + 40) ^ 1;
          }

          v90 = v128;
          sub_1006FC4AC(v88, v89 & 1, v128);
          v91 = v129;
          (*(v147 + 56))(v129, 1, 1, v148);
          v92 = v126;
          sub_1006FD384(v91, v126);
          sub_1000095E8(v91, &unk_1011846B0);
          sub_10042EAD0(v90, _s11MusicVideosVMa);
          (*(v84 + 8))(v86, v87);
          v93 = v92;
          goto LABEL_27;
        }

        goto LABEL_23;
      }

      swift_endAccess();
      v86 = v159;
    }

    else
    {
      v86 = v67;
      swift_endAccess();

      v83 = v160;
      v84 = v75;
    }

    v87 = v68;
LABEL_23:
    (*(v84 + 16))(v152, v86, v87);
    swift_storeEnumTagMultiPayload();
    if (*(v65 + 16))
    {
      v105 = 1;
    }

    else
    {
      v105 = *(v65 + 40) ^ 1;
    }

    v107 = v166;
    v106 = v167;
    v108 = v140;
    sub_1002884E4(v152, v105 & 1, v140);
    v109 = v141;
    (*(v107 + 56))(v141, 1, 1, v106);
    v110 = v138;
    sub_100289108(v109, v138);
    sub_1000095E8(v109, &unk_101184730);
    sub_10042EAD0(v108, _s6AlbumsVMa);
    (*(v84 + 8))(v86, v87);
    v93 = v110;
    goto LABEL_27;
  }

  if (v61 != enum case for MusicPin.Item.musicVideo(_:))
  {
    if (v61 == enum case for MusicPin.Item.playlist(_:))
    {
      (*(v38 + 96))(v42, v37);
      (*(v145 + 32))(v144, v42, v146);
      type metadata accessor for Playlist.Entry();
      v99 = v135;
      MusicLibrarySectionedRequest.init()();
      v125 = v37;
      v118 = v137;
      MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
      v119 = v144;
      MusicLibrarySectionedRequest<>.filterSections(equalTo:)();
      type metadata accessor for PlaylistSortingController();
      static PlaylistSortingController.apply(for:to:)(v119);
      v180 = v118;
      v181 = sub_100020674(&qword_1011831B8, &qword_10118A3B0);
      v120 = sub_10001C8B8(&v179);
      v121 = v136;
      (*(v136 + 16))(v120, v99, v118);
      v178 = 0;
      v176 = 0u;
      v177 = 0u;
      v122 = v134;
      MusicPlaybackIntentDescriptor.init(request:startingAt:)();
      (*(v121 + 8))(v99, v118);
      (*(v145 + 8))(v119, v146);
      v64 = v173;
      (*(v173 + 56))(v122, 0, 1, v175);
      v93 = v122;
    }

    else
    {
      if (v61 != enum case for MusicPin.Item.song(_:))
      {
        (*(v173 + 56))(v172, 1, 1, v175);
        return (*(v38 + 8))(v42, v37);
      }

      v100 = *(v38 + 96);
      v125 = v37;
      v100(v42, v37);
      v101 = v132;
      v102 = v131;
      v103 = v42;
      v104 = v133;
      (*(v132 + 32))(v131, v103, v133);
      (*(v101 + 16))(v130, v102, v104);
      MusicPlaybackIntentDescriptor.init<A>(item:)();
      (*(v101 + 8))(v102, v104);
      v123 = v173;
      (*(v173 + 56))(v45, 0, 1, v175);
      v93 = v45;
      v64 = v123;
    }

    goto LABEL_14;
  }

  (*(v38 + 96))(v42, v37);
  v94 = v147;
  v95 = v143;
  v96 = v42;
  v97 = v148;
  (*(v147 + 32))(v143, v96, v148);
  (*(v94 + 16))(v142, v95, v97);
  sub_10001C0B4(&unk_101193C00, &type metadata accessor for MusicVideo);
  MusicPlaybackIntentDescriptor.init<A>(item:)();
  (*(v94 + 8))(v95, v97);
  v64 = v173;
LABEL_13:
  (*(v64 + 56))(v50, 0, 1, v175);
  v93 = v50;
LABEL_14:
  v83 = v160;
LABEL_27:
  sub_1003FAC48(v93, v83);
  v111 = *(v64 + 48);
  if (!v111(v83, 1, v175))
  {
    v112 = v149;
    v113 = v175;
    (*(v64 + 16))(v149, v83, v175);
    v114 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
    (*(v64 + 8))(v112, v113);
    [v114 setShuffleMode:v151 & 1];
  }

  if (!v111(v83, 1, v175))
  {
    v115 = v150;
    v116 = v175;
    (*(v64 + 16))(v150, v83, v175);
    v117 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
    (*(v64 + 8))(v115, v116);
    [v117 setRepeatMode:0];
  }

  return sub_1003FAC48(v83, v172);
}

uint64_t sub_10042D40C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_10010FC20(&unk_1011972A0);
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return _swift_task_switch(sub_10042D4D8, 0, 0);
}

uint64_t sub_10042D4D8()
{
  type metadata accessor for MusicLibrary();
  static MusicLibrary.shared.getter();
  MusicLibrary.pinsObserver.getter();

  dispatch thunk of MusicLibraryPinsObserver.pins.getter();

  v1 = swift_allocObject();
  v0[6] = v1;
  swift_weakInit();
  v2 = swift_task_alloc();
  v0[7] = v2;
  v3 = sub_100020674(&qword_1011972B0, &unk_1011972A0);
  *v2 = v0;
  v2[1] = sub_10042D63C;
  v4 = v0[3];

  return Collection.asyncForEach<A>(operation:)(&unk_100ECBC70, v1, v4, &type metadata for () + 8, v3);
}

uint64_t sub_10042D63C()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v6 = *v0;

  (*(v2 + 8))(v1, v3);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_10042D7B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v4 = sub_10010FC20(&qword_1011815C0);
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  v5 = sub_10010FC20(&unk_1011929A0);
  v3[16] = v5;
  v3[17] = *(v5 - 8);
  v3[18] = swift_task_alloc();
  v6 = sub_10010FC20(&qword_101181B20);
  v3[19] = v6;
  v3[20] = *(v6 - 8);
  v3[21] = swift_task_alloc();
  v7 = type metadata accessor for Artist();
  v3[22] = v7;
  v3[23] = *(v7 - 8);
  v3[24] = swift_task_alloc();
  v8 = type metadata accessor for MusicPin.Item();
  v3[25] = v8;
  v3[26] = *(v8 - 8);
  v3[27] = swift_task_alloc();

  return _swift_task_switch(sub_10042DA04, 0, 0);
}

uint64_t sub_10042DA04()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[28] = Strong;
  if (Strong)
  {
    v3 = v0[26];
    v2 = v0[27];
    v4 = v0[25];
    MusicPin.item.getter();
    v5 = (*(v3 + 88))(v2, v4);
    v7 = v0[26];
    v6 = v0[27];
    v8 = v0[25];
    if (v5 == enum case for MusicPin.Item.artist(_:))
    {
      v10 = v0[23];
      v9 = v0[24];
      v11 = v0[22];
      (*(v7 + 96))(v0[27], v0[25]);
      (*(v10 + 32))(v9, v6, v11);
      type metadata accessor for Album();
      MusicLibraryRequest.init()();
      swift_getKeyPath();
      MusicLibraryRequest.filter<A>(matching:contains:)();

      MusicLibraryRequest.includeOnlyDownloadedContent.setter();
      MusicLibraryRequest.limit.setter();
      v14 = swift_task_alloc();
      v0[29] = v14;
      *v14 = v0;
      v14[1] = sub_10042DC84;
      v15 = v0[18];
      v16 = v0[19];

      return MusicLibraryRequest.response()(v15, v16);
    }

    (*(v7 + 8))(v6, v8);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_10042DC84()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_10042E0BC;
  }

  else
  {
    v2 = sub_10042DD98;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10042DD98()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v5 = *(v0 + 104);
  v6 = *(v0 + 112);
  MusicLibraryResponse.items.getter();
  (*(v2 + 8))(v1, v3);
  sub_100020674(&unk_10118C140, &qword_1011815C0);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  (*(v6 + 8))(v4, v5);
  *(v0 + 248) = *(v0 + 72);
  type metadata accessor for MainActor();
  *(v0 + 264) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10042DEE4, v8, v7);
}

uint64_t sub_10042DEE4()
{
  v1 = v0[32];
  v2 = v0[31];
  v3 = v0[28];

  LOBYTE(v1) = v2 != v1;
  v4 = Artist.id.getter();
  v6 = v5;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v3 + 32);
  *(v3 + 32) = 0x8000000000000000;
  sub_1006C64D4(v1, v4, v6, isUniquelyReferenced_nonNull_native);

  *(v3 + 32) = v9;
  swift_endAccess();

  return _swift_task_switch(sub_10042DFD8, 0, 0);
}

uint64_t sub_10042DFD8()
{
  v2 = v0[23];
  v1 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[19];
  v6 = v0[20];

  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10042E0BC()
{
  v17 = v0;
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  (*(v0[20] + 8))(v0[21], v0[19]);
  (*(v2 + 8))(v1, v3);
  if (qword_10117F750 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000060E4(v4, static Logger.libraryView);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[30];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    v0[8] = v8;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    v11 = String.init<A>(describing:)();
    v13 = sub_1000105AC(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "updatePinnedArtistHasAlbumsCache error=%s", v9, 0xCu);
    sub_10000959C(v10);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_10042E314()
{
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10042E3A8, v2, v1);
}

uint64_t sub_10042E3A8()
{

  v1 = [objc_opt_self() defaultCenter];
  sub_10032E7E0();
  NSNotificationCenter.post<A>(_:)();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10042E444()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10042E4A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_10042D40C(a1, v4, v5, v6);
}

uint64_t sub_10042E55C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100008F30;

  return sub_10042A054();
}

uint64_t sub_10042E608(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100008F30;

  return sub_10042D7B0(a1, a2, v2);
}

NSString sub_10042E6B4()
{
  result = String._bridgeToObjectiveC()();
  qword_101218C48 = result;
  return result;
}

id sub_10042E6EC()
{
  if (qword_10117F6E0 != -1)
  {
    swift_once();
  }

  v1 = qword_101218C48;

  return v1;
}

uint64_t sub_10042E760(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_10042AC40(a1, v4, v5, v6);
}

uint64_t sub_10042E814()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100008F30;

  return sub_10042A054();
}

uint64_t sub_10042E8C0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002F3F4;

  return sub_100009740(a1, v4);
}

uint64_t sub_10042E978()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002F3F4;

  return sub_10042E314();
}

uint64_t sub_10042EA24()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100008F30;

  return sub_10042A054();
}

uint64_t sub_10042EAD0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10042EB44(uint64_t a1, void (*a2)(__n128), uint64_t a3, uint64_t a4)
{
  v6 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v6 - 8);
  v8 = &v40 - v7;
  v9 = sub_10010FC20(&qword_1011848A0);
  __chkstk_darwin(v9 - 8);
  v11 = &v40 - v10;
  v12 = type metadata accessor for PlaybackIntentDescriptor(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v42 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v40 - v16;
  v19 = __chkstk_darwin(v18);
  v21 = &v40 - v20;
  a2(v19);
  v43 = v13;
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_10042EF7C(v11);
  }

  v23 = 0xD000000000000015;
  sub_1001DFD58(v11, v21);
  v45 = 0x6F74747542726142;
  v46 = 0xEA00000000003A6ELL;
  v41 = v8;
  if (a4)
  {
    if (a4 == 1)
    {
      v23 = 0xD000000000000018;
      v24 = "PlayIntentButton.sing";
    }

    else
    {
      v24 = "Header.PlaybackControls: ";
    }
  }

  else
  {
    v24 = "PlayIntentButton.shuffle";
  }

  v25._object = (v24 | 0x8000000000000000);
  v25._countAndFlagsBits = v23;
  String.append(_:)(v25);

  v26 = v45;
  v27 = v46;
  PlaybackIntentDescriptor.configure(for:)(a4);
  v28 = &v21[*(v12 + 32)];
  if (*(v28 + 24))
  {
    sub_100008FE4(&v21[*(v12 + 32)], &v45);
    v29 = v47;
    v30 = v48;
    sub_10000954C(&v45, v47);
    v44[3] = &type metadata for Player.CommandIssuerIdentity;
    v44[4] = &protocol witness table for Player.CommandIssuerIdentity;
    v44[0] = v26;
    v44[1] = v27;

    v31 = Player.CommandIssuer.appending(_:)(v44, v29, v30);
    v33 = v32;
    sub_10000959C(v44);
    sub_10000959C(&v45);
    v47 = &type metadata for Player.CommandIssuerIdentity;
    v48 = &protocol witness table for Player.CommandIssuerIdentity;
    if (v33)
    {

      v26 = v31;
      v27 = v33;
    }
  }

  else
  {
    v47 = &type metadata for Player.CommandIssuerIdentity;
    v48 = &protocol witness table for Player.CommandIssuerIdentity;
  }

  v45 = v26;
  v46 = v27;
  sub_1003F8500(&v45, v28);
  sub_1001DFCE4(v21, v17);
  v34 = type metadata accessor for TaskPriority();
  v35 = v41;
  (*(*(v34 - 8) + 56))(v41, 1, 1, v34);
  v36 = v42;
  sub_1001DFCE4(v17, v42);
  type metadata accessor for MainActor();
  v37 = static MainActor.shared.getter();
  v38 = (*(v43 + 80) + 32) & ~*(v43 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = v37;
  *(v39 + 24) = &protocol witness table for MainActor;
  sub_1001DFD58(v36, v39 + v38);
  sub_1001F4F78(0, 0, v35, &unk_100ECA700, v39);

  sub_100188CDC(v17);
  return sub_100188CDC(v21);
}

uint64_t sub_10042EF7C(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011848A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10042EFE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v53 = a2;
  v7 = sub_10010FC20(&unk_10118F670);
  __chkstk_darwin(v7 - 8);
  v9 = &v50 - v8;
  v10 = sub_10010FC20(&unk_1011842D0);
  __chkstk_darwin(v10 - 8);
  v12 = &v50 - v11;
  v13 = sub_10010FC20(&unk_1011841D0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v52 = &v50 - v15;
  UUID.init()();
  v16 = (v4 + OBJC_IVAR____TtCV5Music16PlaylistCreation4Flow_playlistCreationViewController);
  *v16 = 0;
  v16[1] = 0;
  *(v4 + OBJC_IVAR____TtCV5Music16PlaylistCreation4Flow_contextCompletionHandlers) = _swiftEmptyArrayStorage;
  sub_100430324(a1, v4 + OBJC_IVAR____TtCV5Music16PlaylistCreation4Flow_initialContext);
  v17 = [objc_allocWithZone(UINavigationController) init];
  *(v4 + OBJC_IVAR____TtCV5Music16PlaylistCreation4Flow_navigationController) = v17;
  v18 = type metadata accessor for PlaylistCreation.Context(0);
  v19 = (a1 + v18[7]);
  v20 = *v19;
  if (*v19)
  {
    v51 = a3;
    v50 = v19[1];
    v21 = v50;
    sub_10010FC20(&qword_10118F810);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_100EBC6B0;
    v23 = swift_allocObject();
    *(v23 + 16) = v20;
    *(v23 + 24) = v21;
    *(v22 + 32) = sub_1004303F0;
    *(v22 + 40) = v23;
    v24 = v18;
    v25 = v12;
    v26 = v14;
    v27 = v13;
    v28 = a1;
    v29 = v9;
    v30 = OBJC_IVAR____TtCV5Music16PlaylistCreation4Flow_contextCompletionHandlers;
    swift_beginAccess();
    *(v4 + v30) = v22;
    v9 = v29;
    a1 = v28;
    v13 = v27;
    v14 = v26;
    v12 = v25;
    v18 = v24;
    a3 = v51;
  }

  sub_1000089F8(a1 + v18[6], v12, &unk_1011842D0);
  v31 = *(v14 + 48);
  if (v31(v12, 1, v13) == 1)
  {
    type metadata accessor for Track();
    v32 = v52;
    MusicItemCollection.init(arrayLiteral:)();
    if (v31(v12, 1, v13) != 1)
    {
      sub_1000095E8(v12, &unk_1011842D0);
    }
  }

  else
  {
    v33 = v52;
    (*(v14 + 32))(v52, v12, v13);
    v32 = v33;
  }

  sub_1000089F8(a1, v9, &unk_10118F670);
  v34 = (a1 + v18[5]);
  v35 = *v34;
  v36 = v34[1];
  v37 = swift_allocObject();
  swift_weakInit();
  v38 = swift_allocObject();
  v39 = v53;
  v38[2] = v37;
  v38[3] = v39;
  v38[4] = a3;
  objc_allocWithZone(_s14ViewControllerCMa());

  v40 = sub_1001EC8AC(v32, v9, v35, v36, sub_100430388, v38);
  v41 = OBJC_IVAR____TtCV5Music16PlaylistCreation4Flow_navigationController;
  v42 = *(v4 + OBJC_IVAR____TtCV5Music16PlaylistCreation4Flow_navigationController);
  v43 = v40;
  [v42 pushViewController:v43 animated:0];
  [*(v4 + v41) setModalPresentationStyle:2];
  v54 = &OBJC_PROTOCOL___UIAdaptivePresentationControllerDelegate;
  v44 = swift_dynamicCastObjCProtocolUnconditional();
  v45 = [*(v4 + v41) presentationController];
  if (v45)
  {
    v46 = v45;
    [v45 setDelegate:v44];
  }

  else
  {

    v46 = v43;
  }

  sub_100430394(a1);
  v47 = (v4 + OBJC_IVAR____TtCV5Music16PlaylistCreation4Flow_playlistCreationViewController);
  v48 = *(v4 + OBJC_IVAR____TtCV5Music16PlaylistCreation4Flow_playlistCreationViewController);
  *v47 = v43;
  v47[1] = &off_1010A0AA0;

  return v4;
}

uint64_t sub_10042F520(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = OBJC_IVAR____TtCV5Music16PlaylistCreation4Flow_contextCompletionHandlers;
    v7 = result;
    v8 = swift_beginAccess();
    v9 = *(v7 + v6);
    __chkstk_darwin(v8);
    v10[2] = a1;

    sub_1003C1864(sub_100430418, v10, v9);

    *(v7 + v6) = _swiftEmptyArrayStorage;

    a3(v7, a1);
  }

  return result;
}

uint64_t sub_10042F63C(uint64_t a1)
{
  v66 = a1;
  v2 = sub_10010FC20(&unk_1011841D0);
  v64 = *(v2 - 8);
  v65 = v2;
  v3 = __chkstk_darwin(v2);
  v58 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v57 = &v57 - v5;
  v6 = sub_10010FC20(&unk_1011842D0);
  __chkstk_darwin(v6 - 8);
  v59 = &v57 - v7;
  v61 = sub_10010FC20(&qword_10118F818);
  __chkstk_darwin(v61);
  v9 = &v57 - v8;
  v10 = sub_10010FC20(&unk_10118F670);
  __chkstk_darwin(v10 - 8);
  v12 = &v57 - v11;
  v13 = type metadata accessor for Playlist.Folder();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for PlaylistCreation.Context(0);
  __chkstk_darwin(v63);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v1;
  v19 = v1 + OBJC_IVAR____TtCV5Music16PlaylistCreation4Flow_initialContext;
  swift_beginAccess();
  v62 = v19;
  sub_100430324(v19, v18);
  v20 = *(v14 + 48);
  if (v20(v18, 1, v13))
  {
    sub_100430394(v18);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    (*(v14 + 16))(v16, v18, v13);
    sub_100430394(v18);
    v21 = Playlist.Folder.id.getter();
    v22 = v23;
    (*(v14 + 8))(v16, v13);
  }

  v24 = v66;
  sub_1000089F8(v66, v12, &unk_10118F670);
  if (v20(v12, 1, v13) == 1)
  {
    sub_1000095E8(v12, &unk_10118F670);
    if (!v22)
    {
      goto LABEL_16;
    }

LABEL_14:

    return 0;
  }

  v25 = Playlist.Folder.id.getter();
  v27 = v26;
  (*(v14 + 8))(v12, v13);
  if (v22)
  {
    if (!v27)
    {
      goto LABEL_14;
    }

    if (v21 == v25 && v22 == v27)
    {
    }

    else
    {
      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      result = 0;
      if ((v29 & 1) == 0)
      {
        return result;
      }
    }
  }

  else if (v27)
  {
    goto LABEL_14;
  }

LABEL_16:
  v31 = v62;
  v30 = v63;
  v32 = *(v63 + 24);
  v33 = *(v61 + 48);
  sub_1000089F8(v62 + v32, v9, &unk_1011842D0);
  sub_1000089F8(v24 + v32, &v9[v33], &unk_1011842D0);
  v35 = v64;
  v34 = v65;
  v36 = *(v64 + 48);
  v37 = v36(&v9[v33], 1, v65);
  v38 = v36(v9, 1, v34);
  if (v37 == 1)
  {
    if (v38 != 1)
    {
      sub_1000095E8(v9, &unk_1011842D0);
    }
  }

  else
  {
    v39 = *(v35 + 32);
    if (v38 == 1)
    {
      v40 = &v9[v33];
      v41 = v59;
      v42 = v59;
    }

    else
    {
      v43 = v57;
      v39(v57, v9, v34);
      v44 = &v9[v33];
      v45 = v58;
      v39(v58, v44, v34);
      type metadata accessor for Track();
      static MusicItemCollection.+= infix(_:_:)();
      (*(v35 + 8))(v45, v34);
      v41 = v59;
      v42 = v59;
      v40 = v43;
    }

    v39(v42, v40, v34);
    (*(v35 + 56))(v41, 0, 1, v34);
    swift_beginAccess();
    sub_1004304B4(v41, v31 + *(v30 + 24));
    swift_endAccess();
  }

  v46 = (v24 + *(v30 + 28));
  v47 = *v46;
  if (*v46)
  {
    v48 = v46[1];
    v49 = swift_allocObject();
    *(v49 + 16) = v47;
    *(v49 + 24) = v48;
    v50 = OBJC_IVAR____TtCV5Music16PlaylistCreation4Flow_contextCompletionHandlers;
    v51 = v60;
    swift_beginAccess();
    v52 = *(v51 + v50);
    sub_100030444(v47);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v51 + v50) = v52;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v52 = sub_10049A560(0, v52[2] + 1, 1, v52);
      *(v51 + v50) = v52;
    }

    v55 = v52[2];
    v54 = v52[3];
    if (v55 >= v54 >> 1)
    {
      v52 = sub_10049A560((v54 > 1), v55 + 1, 1, v52);
    }

    v52[2] = v55 + 1;
    v56 = &v52[2 * v55];
    v56[4] = sub_100430524;
    v56[5] = v49;
    *(v51 + v50) = v52;
    swift_endAccess();
    sub_100020438(v47);
  }

  return 1;
}

uint64_t sub_10042FD58()
{
  v1 = OBJC_IVAR____TtCV5Music16PlaylistCreation4Flow_uuid;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100430394(v0 + OBJC_IVAR____TtCV5Music16PlaylistCreation4Flow_initialContext);

  return swift_deallocClassInstance();
}

uint64_t sub_10042FE5C()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PlaylistCreation.Context(319);
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_10042FFA4()
{
  sub_100430030();
  if (v0 <= 0x3F)
  {
    sub_10003920C(319, qword_10118F7C8, &qword_1011824A0);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100430030()
{
  if (!qword_10118F7B8)
  {
    type metadata accessor for Playlist();
    sub_1001109D0(&qword_10118F7C0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_10118F7B8);
    }
  }
}

Swift::Int sub_1004300B4()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1004302DC(&unk_1011838B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100430154()
{
  type metadata accessor for UUID();
  sub_1004302DC(&unk_1011838B0, &type metadata accessor for UUID);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_1004301DC()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1004302DC(&unk_1011838B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1004302DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100430324(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaylistCreation.Context(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100430394(uint64_t a1)
{
  v2 = type metadata accessor for PlaylistCreation.Context(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100430450()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_101218C50);
  sub_1000060E4(v0, qword_101218C50);
  return static Logger.music(_:)();
}

uint64_t sub_1004304B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_1011842D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100430558(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 32))();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return v2;
}

uint64_t sub_1004305E4()
{
  v1 = v0;
  v2 = type metadata accessor for Playlist.Entry();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Track();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s7ElementV4ItemOMa();
  __chkstk_darwin(v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004325C4(v1, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v12, v2);
    Playlist.Entry.catalogID.getter();
    v14 = v13;
    (*(v3 + 8))(v5, v2);
    if (v14)
    {
LABEL_3:

      return 0;
    }
  }

  else
  {
    (*(v7 + 32))(v9, v12, v6);
    Track.catalogID.getter();
    v17 = v16;
    (*(v7 + 8))(v9, v6);
    if (v17)
    {
      goto LABEL_3;
    }
  }

  return 1;
}

uint64_t sub_100430824()
{
  v1 = v0;
  v2 = type metadata accessor for Playlist.Entry();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Track();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s7ElementV4ItemOMa();
  __chkstk_darwin(v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004325C4(v1, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v12, v2);
    v13 = Playlist.Entry.catalogID.getter();
    if (v14)
    {
      v15 = v13;
    }

    else
    {
      v15 = 0x497972617262696CLL;
    }

    (*(v3 + 8))(v5, v2);
  }

  else
  {
    (*(v7 + 32))(v9, v12, v6);
    v16 = Track.catalogID.getter();
    if (v17)
    {
      v15 = v16;
    }

    else
    {
      v15 = 0x497972617262696CLL;
    }

    (*(v7 + 8))(v9, v6);
  }

  return v15;
}

uint64_t sub_100430A8C()
{
  v1 = type metadata accessor for Playlist.Entry.InternalItem();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Playlist.Entry();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s7ElementV4ItemOMa();
  __chkstk_darwin(v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1004305E4())
  {
    return 0x497972617262696CLL;
  }

  sub_1004325C4(v0, v11);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_10043251C(v11);
    return 1735290739;
  }

  (*(v6 + 32))(v8, v11, v5);
  Playlist.Entry.internalItem.getter();
  v13 = (*(v2 + 88))(v4, v1);
  if (v13 == enum case for Playlist.Entry.InternalItem.musicMovie(_:))
  {
    (*(v6 + 8))(v8, v5);
    (*(v2 + 8))(v4, v1);
    return 0x6569766F6DLL;
  }

  if (v13 == enum case for Playlist.Entry.InternalItem.musicVideo(_:) || v13 == enum case for Playlist.Entry.InternalItem.song(_:))
  {
    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v8, v5);
    return 1735290739;
  }

  if (v13 == enum case for Playlist.Entry.InternalItem.tvEpisode(_:))
  {
    (*(v6 + 8))(v8, v5);
    (*(v2 + 8))(v4, v1);
    return 0x646F736970457674;
  }

  else if (v13 == enum case for Playlist.Entry.InternalItem.uploadedAudio(_:) || v13 == enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
  {
    (*(v6 + 8))(v8, v5);
    (*(v2 + 8))(v4, v1);
    return 0xD000000000000013;
  }

  else
  {
    (*(v6 + 8))(v8, v5);
    (*(v2 + 8))(v4, v1);
    return 0;
  }
}

uint64_t sub_100430E7C()
{
  v1 = type metadata accessor for UploadedVideo();
  v43 = *(v1 - 8);
  v44 = v1;
  __chkstk_darwin(v1);
  v42 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for UploadedAudio();
  v46 = *(v3 - 8);
  v47 = v3;
  __chkstk_darwin(v3);
  v45 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TVEpisode();
  v49 = *(v5 - 8);
  v50 = v5;
  __chkstk_darwin(v5);
  v48 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Song();
  v52 = *(v7 - 8);
  v53 = v7;
  __chkstk_darwin(v7);
  v51 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MusicVideo();
  v55 = *(v9 - 8);
  v56 = v9;
  __chkstk_darwin(v9);
  v54 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MusicMovie();
  v57 = *(v11 - 8);
  v58 = v11;
  __chkstk_darwin(v11);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Playlist.Entry.InternalItem();
  v15 = *(v14 - 8);
  v59 = v14;
  v60 = v15;
  __chkstk_darwin(v14);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for Playlist.Entry();
  v18 = *(v61 - 8);
  __chkstk_darwin(v61);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Track();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = _s7ElementV4ItemOMa();
  __chkstk_darwin(v25);
  v27 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1004305E4())
  {
    return 0x497972617262696CLL;
  }

  sub_1004325C4(v0, v27);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = v18;
    v30 = v61;
    (*(v18 + 32))(v20, v27, v61);
    Playlist.Entry.internalItem.getter();
    v32 = v59;
    v31 = v60;
    v33 = (*(v60 + 88))(v17, v59);
    if (v33 == enum case for Playlist.Entry.InternalItem.musicMovie(_:))
    {
      (*(v31 + 96))(v17, v32);
      v35 = v57;
      v34 = v58;
      (*(v57 + 32))(v13, v17, v58);
      v36 = MusicMovie.title.getter();
      (*(v35 + 8))(v13, v34);
    }

    else
    {
      if (v33 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
      {
        (*(v31 + 96))(v17, v32);
        v38 = v54;
        v37 = v55;
        v39 = v56;
        (*(v55 + 32))(v54, v17, v56);
        v40 = MusicVideo.title.getter();
      }

      else if (v33 == enum case for Playlist.Entry.InternalItem.song(_:))
      {
        (*(v31 + 96))(v17, v32);
        v38 = v51;
        v37 = v52;
        v39 = v53;
        (*(v52 + 32))(v51, v17, v53);
        v40 = Song.title.getter();
      }

      else if (v33 == enum case for Playlist.Entry.InternalItem.tvEpisode(_:))
      {
        (*(v31 + 96))(v17, v32);
        v38 = v48;
        v37 = v49;
        v39 = v50;
        (*(v49 + 32))(v48, v17, v50);
        v40 = TVEpisode.title.getter();
      }

      else if (v33 == enum case for Playlist.Entry.InternalItem.uploadedAudio(_:))
      {
        (*(v31 + 96))(v17, v32);
        v38 = v45;
        v37 = v46;
        v39 = v47;
        (*(v46 + 32))(v45, v17, v47);
        v40 = UploadedAudio.title.getter();
      }

      else
      {
        if (v33 != enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
        {
          (*(v18 + 8))(v20, v30);
          (*(v31 + 8))(v17, v32);
          return 0;
        }

        (*(v31 + 96))(v17, v32);
        v38 = v42;
        v37 = v43;
        v39 = v44;
        (*(v43 + 32))(v42, v17, v44);
        v40 = UploadedVideo.title.getter();
      }

      v36 = v40;
      (*(v37 + 8))(v38, v39);
    }

    (*(v29 + 8))(v20, v30);
  }

  else
  {
    (*(v22 + 32))(v24, v27, v21);
    v36 = Track.title.getter();
    (*(v22 + 8))(v24, v21);
  }

  return v36;
}

uint64_t sub_1004316EC()
{
  v1 = type metadata accessor for UploadedVideo();
  v41 = *(v1 - 8);
  v42 = v1;
  __chkstk_darwin(v1);
  v40 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for UploadedAudio();
  v44 = *(v3 - 8);
  v45 = v3;
  __chkstk_darwin(v3);
  v43 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Song();
  v47 = *(v5 - 8);
  v48 = v5;
  __chkstk_darwin(v5);
  v46 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MusicVideo();
  v50 = *(v7 - 8);
  v51 = v7;
  __chkstk_darwin(v7);
  v49 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MusicMovie();
  v52 = *(v9 - 8);
  v53 = v9;
  __chkstk_darwin(v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Playlist.Entry.InternalItem();
  v13 = *(v12 - 8);
  v54 = v12;
  v55 = v13;
  __chkstk_darwin(v12);
  v56 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Playlist.Entry();
  v57 = *(v15 - 8);
  v58 = v15;
  __chkstk_darwin(v15);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Track();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = _s7ElementV4ItemOMa();
  __chkstk_darwin(v22);
  v24 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = 0;
  if ((sub_1004305E4() & 1) == 0)
  {
    sub_1004325C4(v0, v24);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v26 = v57;
      v27 = v58;
      v28 = v17;
      (*(v57 + 32))(v17, v24, v58);
      v29 = v56;
      Playlist.Entry.internalItem.getter();
      v31 = v54;
      v30 = v55;
      v32 = (*(v55 + 88))(v29, v54);
      if (v32 == enum case for Playlist.Entry.InternalItem.musicMovie(_:))
      {
        (*(v30 + 96))(v29, v31);
        v34 = v52;
        v33 = v53;
        (*(v52 + 32))(v11, v29, v53);
        v25 = MusicMovie.artistName.getter();
        (*(v34 + 8))(v11, v33);
LABEL_11:
        (*(v26 + 8))(v28, v27);
        return v25;
      }

      if (v32 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
      {
        (*(v30 + 96))(v29, v31);
        v35 = v49;
        v36 = v50;
        v37 = v51;
        (*(v50 + 32))(v49, v29, v51);
        v38 = MusicVideo.artistName.getter();
      }

      else
      {
        if (v32 != enum case for Playlist.Entry.InternalItem.song(_:))
        {
          if (v32 != enum case for Playlist.Entry.InternalItem.tvEpisode(_:))
          {
            if (v32 == enum case for Playlist.Entry.InternalItem.uploadedAudio(_:))
            {
              (*(v30 + 96))(v29, v31);
              v35 = v43;
              v36 = v44;
              v37 = v45;
              (*(v44 + 32))(v43, v29, v45);
              v38 = UploadedAudio.artistName.getter();
              goto LABEL_10;
            }

            if (v32 == enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
            {
              (*(v30 + 96))(v29, v31);
              v35 = v40;
              v36 = v41;
              v37 = v42;
              (*(v41 + 32))(v40, v29, v42);
              v38 = UploadedVideo.artistName.getter();
              goto LABEL_10;
            }
          }

          (*(v26 + 8))(v17, v27);
          (*(v30 + 8))(v29, v31);
          return 0;
        }

        (*(v30 + 96))(v29, v31);
        v35 = v46;
        v36 = v47;
        v37 = v48;
        (*(v47 + 32))(v46, v29, v48);
        v38 = Song.artistName.getter();
      }

LABEL_10:
      v25 = v38;
      (*(v36 + 8))(v35, v37);
      goto LABEL_11;
    }

    (*(v19 + 32))(v21, v24, v18);
    v25 = Track.artistName.getter();
    (*(v19 + 8))(v21, v18);
  }

  return v25;
}

uint64_t sub_100431E88(uint64_t a1)
{
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v2 = sub_1000160B4(v5), (v3 & 1) != 0))
  {
    sub_10000DD18(*(a1 + 56) + 32 * v2, v6);
    sub_10001621C(v5);
    if (swift_dynamicCast())
    {
      return 25705;
    }
  }

  else
  {
    sub_10001621C(v5);
  }

  return 0;
}

uint64_t sub_100431F58(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100430558(a1, WitnessTable);
}

uint64_t sub_100431FAC(uint64_t a1, uint64_t a2)
{
  v27 = a1;
  v28 = a2;
  v26 = type metadata accessor for Playlist.Entry();
  v2 = *(v26 - 8);
  __chkstk_darwin(v26);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Track();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s7ElementV4ItemOMa();
  __chkstk_darwin(v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v25 - v13;
  v15 = sub_10010FC20(&qword_10118F8C8);
  __chkstk_darwin(v15 - 8);
  v17 = &v25 - v16;
  v19 = *(v18 + 56);
  sub_1004325C4(v27, &v25 - v16);
  sub_1004325C4(v28, &v17[v19]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1004325C4(v17, v11);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v20 = v26;
      (*(v2 + 32))(v4, &v17[v19], v26);
      v21 = static Playlist.Entry.== infix(_:_:)();
      v22 = *(v2 + 8);
      v22(v4, v20);
      v22(v11, v20);
LABEL_9:
      sub_10043251C(v17);
      return v21 & 1;
    }

    (*(v2 + 8))(v11, v26);
  }

  else
  {
    sub_1004325C4(v17, v14);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v6 + 32))(v8, &v17[v19], v5);
      v21 = static Track.== infix(_:_:)();
      v23 = *(v6 + 8);
      v23(v8, v5);
      v23(v14, v5);
      goto LABEL_9;
    }

    (*(v6 + 8))(v14, v5);
  }

  sub_10043269C(v17);
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_10043231C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010BC60(_swiftEmptyArrayStorage);
  v21 = &type metadata for String;
  *&v20 = sub_100430824();
  *(&v20 + 1) = v5;
  sub_100016270(&v20, v19);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1006C5E68(v19, 25705, 0xE200000000000000, isUniquelyReferenced_nonNull_native);
  v21 = &type metadata for Int;
  *&v20 = a2;
  sub_100016270(&v20, v19);
  v7 = swift_isUniquelyReferenced_nonNull_native();
  sub_1006C5E68(v19, 0x6973736572706D69, 0xEF7865646E496E6FLL, v7);
  v8 = sub_100430A8C();
  v21 = &type metadata for String;
  *&v20 = v8;
  *(&v20 + 1) = v9;
  sub_100016270(&v20, v19);
  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_1006C5E68(v19, 1684957547, 0xE400000000000000, v10);
  v11 = sub_100430E7C();
  if (v12)
  {
    v21 = &type metadata for String;
    *&v20 = v11;
    *(&v20 + 1) = v12;
    sub_100016270(&v20, v19);
    v13 = swift_isUniquelyReferenced_nonNull_native();
    sub_1006C5E68(v19, 1701667182, 0xE400000000000000, v13);
  }

  v14 = sub_1004316EC();
  if (v15)
  {
    v21 = &type metadata for String;
    *&v20 = v14;
    *(&v20 + 1) = v15;
    sub_100016270(&v20, v19);
    v16 = swift_isUniquelyReferenced_nonNull_native();
    sub_1006C5E68(v19, 0x614E747369747261, 0xEA0000000000656DLL, v16);
  }

  v17 = sub_1003647E0(v4);

  sub_10043251C(a1);
  return v17;
}

uint64_t sub_10043251C(uint64_t a1)
{
  v2 = _s7ElementV4ItemOMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s7ElementV4ItemOMa()
{
  result = qword_10118F890;
  if (!qword_10118F890)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004325C4(uint64_t a1, uint64_t a2)
{
  v4 = _s7ElementV4ItemOMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100432628()
{
  result = type metadata accessor for Track();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Playlist.Entry();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10043269C(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_10118F8C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100432704@<X0>(uint64_t a1@<X8>)
{
  v14 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v14 - 8);
  __chkstk_darwin(v14);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  v7 = sub_100009F78(0, &qword_101182960);
  v13[0] = "Entry(identifier=";
  v13[1] = v7;
  static DispatchQoS.unspecified.getter();
  v15 = _swiftEmptyArrayStorage;
  sub_100437224(&qword_101187210, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10010FC20(&qword_101187218);
  sub_100020674(&qword_101187220, &qword_101187218);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v14);
  *a1 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(a1 + 8) = 0;
  updated = _s13UpdateContextVMa(0);
  v9 = *(updated + 24);
  v10 = sub_10010FC20(&qword_10118AB38);
  (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  v11 = *(updated + 28);
  result = sub_10010C424(_swiftEmptyArrayStorage);
  *(a1 + v11) = result;
  return result;
}

id sub_1004329EC()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v32 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10010FC20(&qword_10118AB10);
  __chkstk_darwin(v5);
  v7 = &v31 - v6;
  v8 = sub_10010FC20(&qword_10118AB00);
  __chkstk_darwin(v8);
  v10 = (&v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v13 = &v31 - v12;
  v14 = _s23QueueSnapshotIdentifierOMa(0);
  __chkstk_darwin(v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004371C0(v1, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0;
  if ((EnumCaseMultiPayload - 2) >= 3)
  {
    v19 = v32;
    if (EnumCaseMultiPayload)
    {
      v21 = *&v16[*(sub_10010FC20(&qword_10118AB08) + 48)];
      v22 = v19;
      v23 = v4;
      (*(v19 + 32))(v4, v16, v2);
      v24 = [v21 tracklist];
      v25 = [v24 displayItems];

      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v27 = [v25 itemAtIndexPath:isa];

      v28 = [v27 metadataObject];
      if (v28)
      {
        v29 = [v28 innermostModelObject];

        (*(v22 + 8))(v23, v2);
        return v29;
      }

      else
      {
        (*(v22 + 8))(v23, v2);

        return 0;
      }
    }

    else
    {
      sub_10003D17C(v16, v13, &qword_10118AB00);
      sub_100437D58(v13, v10);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v20 = *v10;
      }

      else
      {
        sub_10003D17C(v10, v7, &qword_10118AB10);
        v20 = SnapshotIdentifier.Lazy.object.getter(v5);
        sub_1000095E8(v7, &qword_10118AB10);
      }

      v30 = [v20 innermostModelObject];

      sub_1000095E8(v13, &qword_10118AB00);
      return v30;
    }
  }

  return result;
}

id sub_100432DFC()
{
  v1 = v0;
  v2 = _s23QueueSnapshotIdentifierOMa(0);
  __chkstk_darwin(v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004371C0(v1, v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *&v4[*(sub_10010FC20(&qword_10118AB08) + 48)];
    (*(v6 + 32))(v8, v4, v5);
    v10 = [v9 tracklist];
    v11 = [v10 displayItems];

    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v13 = [v11 itemAtIndexPath:isa];

    (*(v6 + 8))(v8, v5);
    return v13;
  }

  else
  {
    sub_1004378FC(v4);
    return 0;
  }
}

uint64_t sub_100432FF0()
{
  v0 = sub_10010FC20(&qword_10118AB10);
  __chkstk_darwin(v0);
  v2 = v37 - v1;
  v3 = sub_10010FC20(&qword_10118AB00);
  __chkstk_darwin(v3);
  v5 = (v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v8 = v37 - v7;
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _s23QueueSnapshotIdentifierOMa(0);
  __chkstk_darwin(v13);
  v15 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004371C0(v37[1], v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 2) < 3)
  {
    goto LABEL_2;
  }

  if (!EnumCaseMultiPayload)
  {
    v18 = v8;
    sub_10003D17C(v15, v8, &qword_10118AB00);
    static ApplicationCapabilities.shared.getter(v38);
    sub_100014984(v38);
    v19 = BYTE8(v38[0]);
    sub_100437D58(v8, v5);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v20 = *v5;
    }

    else
    {
      sub_10003D17C(v5, v2, &qword_10118AB10);
      v20 = SnapshotIdentifier.Lazy.object.getter(v0);
      sub_1000095E8(v2, &qword_10118AB10);
    }

    v31 = [v20 innermostModelObject];

    swift_getObjectType();
    v32 = swift_conformsToProtocol2();
    v17 = 0;
    if (v32 && v31)
    {
      v33 = v32;
      ObjectType = swift_getObjectType();
      v17 = (*(v33 + 8))(ObjectType, v33);
    }

    if (qword_10117F5F8 != -1)
    {
      swift_once();
    }

    v35 = (*(*qword_101218AC8 + 528))();
    sub_1000095E8(v18, &qword_10118AB00);
    if (v35)
    {
    }

    else if ((v19 & 1) == 0)
    {
      return v17 & 1;
    }

LABEL_18:
    v17 = 1;
    return v17 & 1;
  }

  v21 = v10;
  v22 = *&v15[*(sub_10010FC20(&qword_10118AB08) + 48)];
  v23 = v12;
  (*(v21 + 32))(v12, v15, v9);
  v24 = [v22 tracklist];
  v25 = [v24 changeItemCommand];

  if (v25)
  {
    v26 = [v22 tracklist];
    v27 = [v26 displayItems];

    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v29 = [v27 itemAtIndexPath:isa];

    v30 = [v25 changeToItem:v29];
    swift_unknownObjectRelease();

    (*(v21 + 8))(v23, v9);
    if (v30)
    {

      goto LABEL_18;
    }
  }

  else
  {
    (*(v21 + 8))(v23, v9);
  }

LABEL_2:
  v17 = 0;
  return v17 & 1;
}

id sub_100433508()
{
  v1 = v0;
  v2 = _s23QueueSnapshotIdentifierOMa(0);
  __chkstk_darwin(v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004371C0(v1, v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *&v4[*(sub_10010FC20(&qword_10118AB08) + 48)];
    (*(v6 + 32))(v8, v4, v5);
    v10 = [v9 tracklist];
    v11 = [v10 displayItems];

    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v13 = [v11 itemAtIndexPath:isa];

    v14 = [v9 attributionMetadataFor:v13];
    (*(v6 + 8))(v8, v5);
    return v14;
  }

  else
  {
    sub_1004378FC(v4);
    return 0;
  }
}

char *sub_1004337D0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController17PlayingHeaderView_didUpdateAttributes];
  v11 = _s25NowPlayingQueueFooterViewCMa();
  *v10 = 0;
  *(v10 + 1) = 0;
  v12 = [objc_allocWithZone(v11) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v13 = UIView.forAutolayout.getter();

  *&v5[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController17PlayingHeaderView_footer] = v13;
  [v13 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  v43.receiver = v5;
  v43.super_class = _s17PlayingHeaderViewCMa();
  v14 = objc_msgSendSuper2(&v43, "initWithFrame:", a1, a2, a3, a4);
  v15 = OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController17PlayingHeaderView_footer;
  v16 = *&v14[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController17PlayingHeaderView_footer];
  v17 = v14;
  [v17 addSubview:v16];
  v18 = objc_opt_self();
  sub_10010FC20(&qword_101183990);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100EBE270;
  v20 = [*&v14[v15] bottomAnchor];
  v21 = [v17 layoutMarginsGuide];
  v22 = [v21 bottomAnchor];

  v23 = [v20 constraintEqualToAnchor:v22];
  *(v19 + 32) = v23;
  v24 = [*&v14[v15] leadingAnchor];
  v25 = [v17 layoutMarginsGuide];

  v26 = [v25 leadingAnchor];
  v27 = [v24 constraintEqualToAnchor:v26];

  *(v19 + 40) = v27;
  v28 = [*&v14[v15] trailingAnchor];
  v29 = [v17 layoutMarginsGuide];

  v30 = [v29 trailingAnchor];
  v31 = [v28 constraintEqualToAnchor:v30];

  *(v19 + 48) = v31;
  sub_100009F78(0, &qword_1011838A0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v18 activateConstraints:isa];

  v33 = *&v14[v15];
  v34 = [v17 traitCollection];

  v35 = sub_1001D1C24();
  sub_1001D1C78();
  UITraitCollection.subscript.getter();
  if (sub_1005C3564(v42))
  {
  }

  else
  {
    v36 = [v34 accessibilityContrast];

    if (v36 != 1)
    {
      v38 = 1;
      goto LABEL_9;
    }
  }

  v37 = [v17 traitCollection];
  UITraitCollection.subscript.getter();

  if (v42)
  {
    v38 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  else
  {
    v38 = 1;
  }

LABEL_9:
  [*&v33[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController25NowPlayingQueueFooterView_separator] setHidden:{v38 & 1, ObjectType}];

  sub_10010FC20(&unk_101182D80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_100EBDC20;
  *(v39 + 32) = type metadata accessor for UITraitAccessibilityContrast();
  *(v39 + 40) = &protocol witness table for UITraitAccessibilityContrast;
  *(v39 + 48) = &type metadata for NowPlayingLayoutTypeTrait;
  *(v39 + 56) = v35;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v17;
}

id sub_100433E1C()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&v0[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_interactiveMovementDidEndBlock];
  if (v10)
  {
    v11 = *&v0[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_interactiveMovementDidEndBlock + 8];
    v20 = v7;
    v21 = v6;
    sub_100009F78(0, &qword_101182960);
    v22 = v0;

    v19 = static OS_dispatch_queue.main.getter();
    v12 = swift_allocObject();
    *(v12 + 16) = v10;
    *(v12 + 24) = v11;
    aBlock[4] = sub_100029B6C;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002BC98;
    aBlock[3] = &unk_1010ABEF0;
    v13 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100437224(&qword_101183F60, &type metadata accessor for DispatchWorkItemFlags);
    v18 = v10;
    sub_10010FC20(&qword_101182970);
    sub_100020674(&qword_101183F70, &qword_101182970);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v14 = v19;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    v0 = v22;
    _Block_release(v13);

    sub_100020438(v18);
    (*(v2 + 8))(v4, v1);
    (*(v20 + 8))(v9, v21);
  }

  v15 = _s14CollectionViewCMa();
  v24.receiver = v0;
  v24.super_class = v15;
  return objc_msgSendSuper2(&v24, "dealloc");
}

id sub_100434200(char a1)
{
  v2 = v1;
  v4 = [v1 traitCollection];
  sub_1001D1C24();
  sub_1001D1C78();
  UITraitCollection.subscript.getter();

  if (v13 && v13 != 1)
  {
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v5 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  result = [v2 setClipsToBounds:(v2[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_hasInteractiveMovement] & 1) == 0];
LABEL_7:
  if (v2[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_hasInteractiveMovement] & 1) == 0 && (a1)
  {
    v7 = OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_interactiveMovementCompletionHandlers;
    swift_beginAccess();
    v8 = *&v2[v7];
    *&v2[v7] = _swiftEmptyArrayStorage;
    v9 = *(v8 + 16);
    if (v9)
    {
      v10 = v8 + 40;
      do
      {
        v11 = *(v10 - 8);

        v11(v12);

        v10 += 16;
        --v9;
      }

      while (v9);
    }
  }

  return result;
}

id sub_1004343A8()
{
  v1 = v0;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v8.receiver = v1;
  v8.super_class = _s14CollectionViewCMa();
  v3 = objc_msgSendSuper2(&v8, "beginInteractiveMovementForItemAtIndexPath:", isa);

  v4 = v1[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_hasInteractiveMovement];
  v1[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_hasInteractiveMovement] = 1;
  sub_100434200(v4);
  v5 = *&v1[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_interactiveMovementDidBeginBlock];
  if (v5)
  {

    v5(v6);
    sub_100020438(v5);
  }

  return v3;
}

uint64_t sub_10043454C()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v4 = *(v13 - 8);
  __chkstk_darwin(v13);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s14CollectionViewCMa();
  v16.receiver = v0;
  v16.super_class = v7;
  objc_msgSendSuper2(&v16, "endInteractiveMovement");
  sub_100009F78(0, &qword_101182960);
  v8 = static OS_dispatch_queue.main.getter();
  v9 = swift_allocObject();
  *(v9 + 16) = v0;
  aBlock[4] = sub_100437D50;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002BC98;
  aBlock[3] = &unk_1010ABEA0;
  v10 = _Block_copy(aBlock);
  v11 = v0;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100437224(&qword_101183F60, &type metadata accessor for DispatchWorkItemFlags);
  sub_10010FC20(&qword_101182970);
  sub_100020674(&qword_101183F70, &qword_101182970);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);

  (*(v14 + 8))(v3, v1);
  return (*(v4 + 8))(v6, v13);
}

id sub_100434858(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_hasInteractiveMovement);
  *(a1 + OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_hasInteractiveMovement) = 0;
  result = sub_100434200(v2);
  v4 = *(a1 + OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_interactiveMovementDidEndBlock);
  if (v4)
  {

    v4(v5);

    return sub_100020438(v4);
  }

  return result;
}

id sub_100434920()
{
  v1 = v0[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_hasInteractiveMovement];
  v0[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_hasInteractiveMovement] = 0;
  sub_100434200(v1);
  v5.receiver = v0;
  v5.super_class = _s14CollectionViewCMa();
  result = objc_msgSendSuper2(&v5, "cancelInteractiveMovement");
  v3 = *&v0[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_interactiveMovementDidEndBlock];
  if (v3)
  {

    v3(v4);
    return sub_100020438(v3);
  }

  return result;
}

id sub_100434BB4(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_interactiveMovementDidBeginBlock];
  *v3 = 0;
  v3[1] = 0;
  v4 = &v1[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_interactiveMovementDidEndBlock];
  *v4 = 0;
  v4[1] = 0;
  v5 = &v1[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_shouldRecognizePanGestureBlock];
  *v5 = 0;
  v5[1] = 0;
  *&v1[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_interactiveMovementCompletionHandlers] = _swiftEmptyArrayStorage;
  v1[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_hasInteractiveMovement] = 0;
  v8.receiver = v1;
  v8.super_class = _s14CollectionViewCMa();
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);

  if (v6)
  {
  }

  return v6;
}

unint64_t sub_100434D24()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&qword_10118AB00);
  __chkstk_darwin(v6);
  v8 = &v44 - v7;
  v9 = _s23QueueSnapshotIdentifierOMa(0);
  __chkstk_darwin(v9);
  v11 = (&v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1004371C0(v1, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v13 = *v11;
      v45 = 0;
      v46 = 0xE000000000000000;
      _StringGuts.grow(_:)(52);
      v47 = v45;
      v48 = v46;
      v14 = "ntifier.remainingSongs(count=";
      v15 = 0xD000000000000028;
    }

    else
    {
      if (EnumCaseMultiPayload != 3)
      {
        v45 = 0;
        v46 = 0xE000000000000000;
        _StringGuts.grow(_:)(36);

        v47 = 0xD000000000000021;
        v48 = 0x8000000100E4A4D0;
        Hasher.init(_seed:)();
        sub_10043538C(&v45);
        v45 = Hasher._finalize()();
        goto LABEL_10;
      }

      v13 = *v11;
      v45 = 0;
      v46 = 0xE000000000000000;
      _StringGuts.grow(_:)(57);
      v47 = v45;
      v48 = v46;
      v14 = "playerResponseItem";
      v15 = 0xD00000000000002DLL;
    }

    v22 = v14 | 0x8000000000000000;
    String.append(_:)(*&v15);
    v45 = v13;
    v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v23);

    v24._countAndFlagsBits = 0x3D68736168202CLL;
    v24._object = 0xE700000000000000;
    String.append(_:)(v24);
    Hasher.init(_seed:)();
    sub_10043538C(&v45);
    v45 = Hasher._finalize()();
LABEL_10:
    v25._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v25);

    v26._countAndFlagsBits = 41;
    v26._object = 0xE100000000000000;
    String.append(_:)(v26);
    return v47;
  }

  if (EnumCaseMultiPayload)
  {
    v27 = *(v11 + *(sub_10010FC20(&qword_10118AB08) + 48));
    (*(v3 + 32))(v5, v11, v2);
    v28 = [v27 tracklist];
    v29 = [v28 displayItems];

    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v31 = [v29 itemAtIndexPath:isa];

    v45 = 0;
    v46 = 0xE000000000000000;
    _StringGuts.grow(_:)(72);
    v47 = v45;
    v48 = v46;
    v32._countAndFlagsBits = 0xD000000000000035;
    v32._object = 0x8000000100E4A500;
    String.append(_:)(v32);
    sub_100437224(&unk_101197050, &type metadata accessor for IndexPath);
    v33._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v33);

    v34._countAndFlagsBits = 0x3D6D65746920;
    v34._object = 0xE600000000000000;
    String.append(_:)(v34);
    v35 = [v31 description];
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    v39._countAndFlagsBits = v36;
    v39._object = v38;
    String.append(_:)(v39);

    v40._countAndFlagsBits = 0x3D6873616820;
    v40._object = 0xE600000000000000;
    String.append(_:)(v40);
    Hasher.init(_seed:)();
    sub_10043538C(&v45);
    v45 = Hasher._finalize()();
    v41._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v41);

    v42._countAndFlagsBits = 41;
    v42._object = 0xE100000000000000;
    String.append(_:)(v42);

    v21 = v47;
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    sub_10003D17C(v11, v8, &qword_10118AB00);
    v45 = 0;
    v46 = 0xE000000000000000;
    _StringGuts.grow(_:)(60);
    v47 = v45;
    v48 = v46;
    v16._countAndFlagsBits = 0xD000000000000031;
    v16._object = 0x8000000100E4A540;
    String.append(_:)(v16);
    v17._countAndFlagsBits = SnapshotIdentifier.description.getter(v6);
    String.append(_:)(v17);

    v18._countAndFlagsBits = 0x3D6873616820;
    v18._object = 0xE600000000000000;
    String.append(_:)(v18);
    Hasher.init(_seed:)();
    sub_10043538C(&v45);
    v45 = Hasher._finalize()();
    v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v19);

    v20._countAndFlagsBits = 41;
    v20._object = 0xE100000000000000;
    String.append(_:)(v20);
    v21 = v47;
    sub_1000095E8(v8, &qword_10118AB00);
  }

  return v21;
}

uint64_t sub_10043538C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&qword_10118AB00);
  __chkstk_darwin(v8);
  v10 = &v22 - v9;
  v11 = _s23QueueSnapshotIdentifierOMa(0);
  __chkstk_darwin(v11);
  v13 = (&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1004371C0(v2, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v16 = *(v13 + *(sub_10010FC20(&qword_10118AB08) + 48));
      (*(v5 + 32))(v7, v13, v4);
      v17 = [v16 tracklist];
      v18 = [v17 displayItems];

      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v20 = [v18 itemAtIndexPath:isa];

      v21 = [v20 contentItemIdentifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      String.hash(into:)();

      String.hash(into:)();

      return (*(v5 + 8))(v7, v4);
    }

    else
    {
      sub_10003D17C(v13, v10, &qword_10118AB00);
      SnapshotIdentifier.hash(into:)(a1, v8);
      String.hash(into:)();
      return sub_1000095E8(v10, &qword_10118AB00);
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
    {
      Hasher._combine(_:)(*v13);
    }

    return String.hash(into:)();
  }
}

Swift::Int sub_100435730()
{
  Hasher.init(_seed:)();
  sub_10043538C(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100435774()
{
  Hasher.init(_seed:)();
  sub_10043538C(v1);
  return Hasher._finalize()();
}

uint64_t sub_1004357B8(unsigned __int8 a1)
{
  v2 = sub_10010FC20(&qword_10118AB38);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - v4;
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
  v6 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  (*(v3 + 8))(v5, v2);
  v7 = v6;
  v8 = *(v6 + 16);
  v9 = 0;
  if (v8)
  {
    while (*(v7 + 32 + v9) != a1)
    {
      if (v8 == ++v9)
      {
        v9 = 0;
        break;
      }
    }
  }

  return v9;
}

uint64_t sub_1004358E8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + qword_10118F958);
  if (!v3)
  {
    return 0;
  }

  v5 = v3(v2, a2);
  sub_100020438(v3);
  return v5 & 1;
}

uint64_t sub_100435960(char *a1)
{
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = *&a1[qword_10118F958];
  if (v6)
  {
    v7 = a1;
    sub_100030444(v6);
    v8 = v6(v7, v5);
    sub_100020438(v6);
  }

  else
  {
    v8 = 0;
  }

  (*(v3 + 8))(v5, v2);
  return v8 & 1;
}

void sub_100435A9C(void *a1, uint64_t a2, uint64_t a3)
{
  _s14CollectionViewCMa();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = *(v3 + qword_10118F960);
    if (v8)
    {
      v9 = *(v7 + OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_hasInteractiveMovement);
      v10 = a1;
      sub_100030444(v8);
      v8(v3, a2, a3, (v9 & 1) == 0);
      sub_100020438(v8);
    }
  }
}

uint64_t sub_100435B8C(char *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v19 - v10;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  _s14CollectionViewCMa();
  v12 = swift_dynamicCastClass();
  if (v12)
  {
    v13 = *&a1[qword_10118F960];
    if (v13)
    {
      v14 = *(v12 + OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_hasInteractiveMovement);
      v15 = a3;
      v16 = a1;
      sub_100030444(v13);
      v13(v16, v11, v8, (v14 & 1) == 0);
      sub_100020438(v13);
    }
  }

  v17 = *(v6 + 8);
  v17(v8, v5);
  return (v17)(v11, v5);
}

uint64_t sub_100435D40()
{
  sub_100020438(*(v0 + qword_10118F958));
  v1 = *(v0 + qword_10118F960);

  return sub_100020438(v1);
}

id sub_100435DA4(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100435DDC(uint64_t a1)
{
  sub_100020438(*(a1 + qword_10118F958));
  v2 = *(a1 + qword_10118F960);

  return sub_100020438(v2);
}

uint64_t sub_100435E30()
{
  v0 = objc_allocWithZone(_s10DataSourceCMa(0));
  v1 = &v0[qword_10118F958];
  *v1 = 0;
  *(v1 + 1) = 0;
  v2 = &v0[qword_10118F960];
  *v2 = 0;
  *(v2 + 1) = 0;
  return UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
}

char *sub_100435EAC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController22AutoPlayBackgroundView_backgroundView;
  sub_10010FC20(&qword_101183990);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100EBC6D0;
  v12 = objc_opt_self();
  v13 = [v12 blackColor];
  v14 = [v13 colorWithAlphaComponent:0.1];

  *(v11 + 32) = v14;
  v15 = [v12 blackColor];
  v16 = [v15 colorWithAlphaComponent:0.0];

  *(v11 + 40) = v16;
  static Gradient.vertical(colors:locations:interpolations:)(v11, 0, 0, v46);

  v17 = objc_allocWithZone(type metadata accessor for Gradient.View());
  *&v5[v10] = Gradient.View.init(configuration:)(v46);
  v45.receiver = v5;
  v45.super_class = _s22AutoPlayBackgroundViewCMa();
  v18 = objc_msgSendSuper2(&v45, "initWithFrame:", a1, a2, a3, a4);
  v19 = OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController22AutoPlayBackgroundView_backgroundView;
  v20 = *&v18[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController22AutoPlayBackgroundView_backgroundView];
  v21 = v18;
  v22 = v20;
  v23 = v21;
  v24 = UIView.forAutolayout.getter();

  [v23 addSubview:v24];
  v25 = objc_opt_self();
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_100EC3620;
  v27 = [*&v18[v19] leadingAnchor];
  v28 = [v23 leadingAnchor];

  v29 = [v27 constraintEqualToAnchor:v28];
  *(v26 + 32) = v29;
  v30 = [*&v18[v19] trailingAnchor];
  v31 = [v23 trailingAnchor];

  v32 = [v30 constraintEqualToAnchor:v31];
  *(v26 + 40) = v32;
  v33 = [*&v18[v19] topAnchor];
  v34 = [v23 topAnchor];

  v35 = [v33 constraintEqualToAnchor:v34];
  *(v26 + 48) = v35;
  v36 = [*&v18[v19] heightAnchor];
  v37 = [v36 constraintEqualToConstant:150.0];

  LODWORD(v38) = 1144750080;
  v39 = [v37 withPriority:v38];

  *(v26 + 56) = v39;
  v40 = [*&v18[v19] bottomAnchor];
  v41 = [v23 bottomAnchor];

  v42 = [v40 constraintLessThanOrEqualToAnchor:v41];
  *(v26 + 64) = v42;
  sub_100009F78(0, &qword_1011838A0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v25 activateConstraints:isa];

  return v23;
}

unint64_t sub_1004363A0@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100437C6C(*a1);
  *a2 = result;
  return result;
}

char *sub_1004363E8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  swift_getObjectType();
  *&v4[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController25NowPlayingQueueFooterView____lazy_storage___topPaddingConstraint] = 0;
  *&v4[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController25NowPlayingQueueFooterView____lazy_storage___bottomPaddingConstraint] = 0;
  v10 = [objc_allocWithZone(UIView) init];
  v11 = UIView.forAutolayout.getter();

  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  if (qword_10117F920 != -1)
  {
    swift_once();
  }

  [v11 setBackgroundColor:qword_1012190B8];
  *&v5[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController25NowPlayingQueueFooterView_separator] = v11;
  v39.receiver = v5;
  v39.super_class = _s25NowPlayingQueueFooterViewCMa();
  v38 = v11;
  v12 = objc_msgSendSuper2(&v39, "initWithFrame:", a1, a2, a3, a4);
  v13 = OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController25NowPlayingQueueFooterView_separator;
  v14 = *&v12[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController25NowPlayingQueueFooterView_separator];
  v15 = v12;
  [v15 addSubview:v14];
  v16 = objc_opt_self();
  sub_10010FC20(&qword_101183990);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100EC3620;
  *(v17 + 32) = sub_10043692C();
  *(v17 + 40) = sub_1004369F4();
  v18 = [*&v12[v13] leadingAnchor];
  v19 = [v15 layoutMarginsGuide];
  v20 = [v19 leadingAnchor];

  v21 = [v18 constraintEqualToAnchor:v20];
  *(v17 + 48) = v21;
  v22 = [*&v12[v13] trailingAnchor];
  v23 = [v15 layoutMarginsGuide];

  v24 = [v23 trailingAnchor];
  v25 = [v22 constraintEqualToAnchor:v24];

  *(v17 + 56) = v25;
  v26 = [*&v12[v13] heightAnchor];
  v27 = [v15 traitCollection];

  [v27 displayScale];
  v29 = v28;

  v30 = [v26 constraintEqualToConstant:1.0 / v29];
  *(v17 + 64) = v30;
  sub_100009F78(0, &qword_1011838A0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v16 activateConstraints:isa];

  v32 = [*&v12[v13] layer];
  v33 = [v15 traitCollection];
  v34 = sub_100050078();
  LOBYTE(v17) = UITraitCollection.subscript.getter();

  v35 = 0;
  if (v17)
  {
    v35 = kCAFilterPlusL;
  }

  [v32 setCompositingFilter:v35];

  swift_unknownObjectRelease();
  sub_10010FC20(&unk_101182D80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_100EBC6B0;
  *(v36 + 32) = &type metadata for HasAnimatedBackgroundTrait;
  *(v36 + 40) = v34;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v15;
}

id sub_10043692C()
{
  v1 = OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController25NowPlayingQueueFooterView____lazy_storage___topPaddingConstraint;
  v2 = *&v0[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController25NowPlayingQueueFooterView____lazy_storage___topPaddingConstraint];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController25NowPlayingQueueFooterView____lazy_storage___topPaddingConstraint];
  }

  else
  {
    v4 = [*&v0[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController25NowPlayingQueueFooterView_separator] topAnchor];
    v5 = [v0 topAnchor];
    v6 = [v4 constraintEqualToAnchor:v5];

    v7 = *&v0[v1];
    *&v0[v1] = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_1004369F4()
{
  v1 = OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController25NowPlayingQueueFooterView____lazy_storage___bottomPaddingConstraint;
  v2 = *&v0[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController25NowPlayingQueueFooterView____lazy_storage___bottomPaddingConstraint];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController25NowPlayingQueueFooterView____lazy_storage___bottomPaddingConstraint];
  }

  else
  {
    v4 = [*&v0[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController25NowPlayingQueueFooterView_separator] bottomAnchor];
    v5 = [v0 bottomAnchor];
    v6 = [v4 constraintEqualToAnchor:v5];

    LODWORD(v7) = 1144750080;
    v8 = [v6 withPriority:v7];

    v9 = *&v0[v1];
    *&v0[v1] = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

void sub_100436BA0()
{
  sub_100436C28();
  if (v0 <= 0x3F)
  {
    sub_100436CD8();
    if (v1 <= 0x3F)
    {
      sub_100436D5C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_100436C28()
{
  if (!qword_10118FAA8)
  {
    sub_100436C70();
    if (!v1)
    {
      atomic_store(v0, &qword_10118FAA8);
    }
  }
}

void sub_100436C70()
{
  if (!qword_10118FAB0)
  {
    sub_100009F78(255, qword_101186D10);
    v0 = type metadata accessor for SnapshotIdentifier();
    if (!v1)
    {
      atomic_store(v0, &qword_10118FAB0);
    }
  }
}

void sub_100436CD8()
{
  if (!qword_10118FAB8)
  {
    type metadata accessor for IndexPath();
    sub_100009F78(255, &qword_10118D500);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_10118FAB8);
    }
  }
}

void *sub_100436D5C()
{
  result = qword_10118FAC0;
  if (!qword_10118FAC0)
  {
    result = &type metadata for Int;
    atomic_store(&type metadata for Int, &qword_10118FAC0);
  }

  return result;
}

void sub_100436DE4()
{
  sub_100009F78(319, &qword_101182960);
  if (v0 <= 0x3F)
  {
    sub_100436E98();
    if (v1 <= 0x3F)
    {
      sub_100436EFC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100436E98()
{
  if (!qword_10118FB58)
  {
    sub_1001109D0(&qword_10118AB38);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10118FB58);
    }
  }
}

void sub_100436EFC()
{
  if (!qword_10118FB60)
  {
    sub_100436F60();
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_10118FB60);
    }
  }
}

unint64_t sub_100436F60()
{
  result = qword_10118FB68;
  if (!qword_10118FB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118FB68);
  }

  return result;
}

uint64_t sub_100436FB4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_100437010(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_100437088()
{
  result = qword_10118FBA0;
  if (!qword_10118FBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118FBA0);
  }

  return result;
}

unint64_t sub_100437124()
{
  result = qword_10118FBB8;
  if (!qword_10118FBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118FBB8);
  }

  return result;
}

uint64_t sub_1004371C0(uint64_t a1, uint64_t a2)
{
  v4 = _s23QueueSnapshotIdentifierOMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100437224(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100437274(uint64_t a1, uint64_t a2)
{
  v67 = a1;
  v68 = a2;
  v2 = type metadata accessor for IndexPath();
  v65 = *(v2 - 8);
  v66 = v2;
  v3 = __chkstk_darwin(v2);
  v5 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v63 - v6;
  v8 = sub_10010FC20(&qword_10118AB00);
  v9 = __chkstk_darwin(v8 - 8);
  v64 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v63 - v11;
  v13 = _s23QueueSnapshotIdentifierOMa(0);
  v14 = __chkstk_darwin(v13);
  v16 = (&v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __chkstk_darwin(v14);
  v19 = (&v63 - v18);
  v20 = __chkstk_darwin(v17);
  v22 = &v63 - v21;
  __chkstk_darwin(v20);
  v24 = &v63 - v23;
  v25 = sub_10010FC20(&qword_10118FBC8);
  v26 = __chkstk_darwin(v25 - 8);
  v28 = &v63 - v27;
  v29 = &v63 + *(v26 + 56) - v27;
  sub_1004371C0(v67, &v63 - v27);
  sub_1004371C0(v68, v29);
  v68 = v28;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v63 = v7;
    v67 = v5;
    v33 = v65;
    v34 = v66;
    if (EnumCaseMultiPayload)
    {
      v31 = v68;
      sub_1004371C0(v68, v22);
      v36 = *(sub_10010FC20(&qword_10118AB08) + 48);
      v37 = *&v22[v36];
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v38 = *&v29[v36];
        v39 = v37;
        v40 = *(v33 + 32);
        v40(v63, v22, v34);
        v40(v67, v29, v34);
        v64 = v39;
        v41 = [v39 tracklist];
        v42 = [v41 displayItems];

        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        v44 = [v42 itemAtIndexPath:isa];

        v45 = [v44 contentItemIdentifier];
        v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v48 = v47;

        v49 = v38;
        v50 = [v38 tracklist];
        v51 = [v50 displayItems];

        v52 = IndexPath._bridgeToObjectiveC()().super.isa;
        v53 = [v51 itemAtIndexPath:v52];

        v54 = [v53 contentItemIdentifier];
        v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v57 = v56;

        if (v46 == v55 && v48 == v57)
        {
          v35 = 1;
        }

        else
        {
          v35 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v60 = v68;

        v61 = *(v33 + 8);
        v61(v67, v34);
        v61(v63, v34);
        v59 = v60;
        goto LABEL_24;
      }

      (*(v33 + 8))(v22, v34);
    }

    else
    {
      v31 = v68;
      sub_1004371C0(v68, v24);
      if (!swift_getEnumCaseMultiPayload())
      {
        sub_10003D17C(v24, v12, &qword_10118AB00);
        v58 = v64;
        sub_10003D17C(v29, v64, &qword_10118AB00);
        sub_100009F78(0, qword_101186D10);
        v35 = static SnapshotIdentifier.== infix(_:_:)();
        sub_1000095E8(v58, &qword_10118AB00);
        sub_1000095E8(v12, &qword_10118AB00);
        goto LABEL_21;
      }

      sub_1000095E8(v24, &qword_10118AB00);
    }

    goto LABEL_19;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v31 = v68;
    sub_1004371C0(v68, v19);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v32 = *v19;
      goto LABEL_11;
    }

    goto LABEL_19;
  }

  v31 = v68;
  if (EnumCaseMultiPayload == 3)
  {
    sub_1004371C0(v68, v16);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v32 = *v16;
LABEL_11:
      v35 = v32 == *v29;
LABEL_21:
      v59 = v31;
LABEL_24:
      sub_1004378FC(v59);
      return v35 & 1;
    }

    goto LABEL_19;
  }

  if (swift_getEnumCaseMultiPayload() != 4)
  {
LABEL_19:
    sub_1000095E8(v31, &qword_10118FBC8);
    v35 = 0;
    return v35 & 1;
  }

  sub_1004378FC(v31);
  v35 = 1;
  return v35 & 1;
}

uint64_t sub_1004378FC(uint64_t a1)
{
  v2 = _s23QueueSnapshotIdentifierOMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100437958(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController17PlayingHeaderView_footer];
  v3 = [a1 traitCollection];
  sub_1001D1C24();
  sub_1001D1C78();
  UITraitCollection.subscript.getter();
  if (sub_1005C3564(v8))
  {
  }

  else
  {
    v4 = [v3 accessibilityContrast];

    if (v4 != 1)
    {
      v6 = 1;
      goto LABEL_9;
    }
  }

  v5 = [a1 traitCollection];
  UITraitCollection.subscript.getter();

  if (v7)
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  else
  {
    v6 = 1;
  }

LABEL_9:
  [*&v2[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController25NowPlayingQueueFooterView_separator] setHidden:v6 & 1];
}

void sub_100437B04()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController22AutoPlayBackgroundView_backgroundView;
  sub_10010FC20(&qword_101183990);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100EBC6D0;
  v4 = objc_opt_self();
  v5 = [v4 blackColor];
  v6 = [v5 colorWithAlphaComponent:0.1];

  *(v3 + 32) = v6;
  v7 = [v4 blackColor];
  v8 = [v7 colorWithAlphaComponent:0.0];

  *(v3 + 40) = v8;
  static Gradient.vertical(colors:locations:interpolations:)(v3, 0, 0, v10);

  v9 = objc_allocWithZone(type metadata accessor for Gradient.View());
  *(v1 + v2) = Gradient.View.init(configuration:)(v10);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_100437C6C(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

uint64_t sub_100437C7C(char *a1)
{
  v2 = [*&a1[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController25NowPlayingQueueFooterView_separator] layer];
  v3 = [a1 traitCollection];
  sub_100050078();
  v4 = UITraitCollection.subscript.getter();

  if (v4)
  {
    v5 = kCAFilterPlusL;
  }

  else
  {
    v5 = 0;
  }

  [v2 setCompositingFilter:v5];

  return swift_unknownObjectRelease();
}

uint64_t sub_100437D58(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_10118AB00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for WidgetMusicItem()
{
  result = qword_10118FC28;
  if (!qword_10118FC28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100437E44()
{
  sub_100030850(319, &qword_10118F6F0, &type metadata for String, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    type metadata accessor for URL();
    if (v1 <= 0x3F)
    {
      sub_100030850(319, &qword_10118FC38, &type metadata for WidgetMusicItem.Kind, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_100030850(319, &qword_10118FC40, &type metadata for MusicItemID, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_100030850(319, &qword_10118FC48, &type metadata for TextBadge, &type metadata accessor for Array);
          if (v4 <= 0x3F)
          {
            sub_1001E8510();
            if (v5 <= 0x3F)
            {
              sub_100030850(319, &qword_10118FC50, &type metadata for WidgetMusicItem.ContainerTrack, &type metadata accessor for Array);
              if (v6 <= 0x3F)
              {
                sub_100030850(319, &qword_10118FC58, &type metadata for WidgetMusicItem.ArtworkColor, &type metadata accessor for Optional);
                if (v7 <= 0x3F)
                {
                  type metadata accessor for ArtworkImage.Placeholder(319);
                  if (v8 <= 0x3F)
                  {
                    sub_1004380B0();
                    if (v9 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
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

void sub_1004380B0()
{
  if (!qword_10118FC60)
  {
    sub_1001109D0(&unk_10118FC68);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_10118FC60);
    }
  }
}

uint64_t sub_100438124(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_10043816C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s11ContentSortV6OptionOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s11ContentSortV6OptionOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100438318(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = sub_10010FC20(&qword_10118FE28);
  v3[9] = swift_task_alloc();
  sub_10010FC20(&qword_10118FE30);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[13] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[14] = v6;
  v3[15] = v5;

  return _swift_task_switch(sub_10043849C, v6, v5);
}

uint64_t sub_10043849C()
{
  type metadata accessor for InternalMusicPlayer();
  v0[16] = static InternalMusicPlayer.localDevice.getter();
  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_100438554;
  v2 = v0[12];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];

  return InternalMusicPlayer.playabilityStatus<A>(for:)(v2, v3, v5, v4);
}

uint64_t sub_100438554()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = sub_100438A30;
  }

  else
  {

    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = sub_100438698;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100438698()
{
  v1 = v0[12];
  v2 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[5];
  v6 = v0[6];

  v7 = *(v6 + 56);
  v7(v1, 0, 1, v5);
  (*(v6 + 104))(v2, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v5);
  v7(v2, 0, 1, v5);
  v8 = *(v4 + 48);
  sub_1000089F8(v1, v3, &qword_10118FE30);
  sub_1000089F8(v2, v3 + v8, &qword_10118FE30);
  v9 = *(v6 + 48);
  if (v9(v3, 1, v5) == 1)
  {
    v10 = v0[12];
    v11 = v0[5];
    sub_1000095E8(v0[11], &qword_10118FE30);
    sub_1000095E8(v10, &qword_10118FE30);
    if (v9(v3 + v8, 1, v11) == 1)
    {
      sub_1000095E8(v0[9], &qword_10118FE30);
      v12 = 1;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v13 = v0[5];
  sub_1000089F8(v0[9], v0[10], &qword_10118FE30);
  v14 = v9(v3 + v8, 1, v13);
  v16 = v0[11];
  v15 = v0[12];
  v17 = v0[10];
  if (v14 == 1)
  {
    v18 = v0[5];
    v19 = v0[6];
    sub_1000095E8(v0[11], &qword_10118FE30);
    sub_1000095E8(v15, &qword_10118FE30);
    (*(v19 + 8))(v17, v18);
LABEL_6:
    sub_1000095E8(v0[9], &qword_10118FE28);
    v12 = 0;
    goto LABEL_8;
  }

  v26 = v0[9];
  v21 = v0[6];
  v20 = v0[7];
  v22 = v0[5];
  (*(v21 + 32))(v20, v3 + v8, v22);
  sub_10043D844(&qword_10118BFC0, &type metadata accessor for MusicPlayer.PlayabilityStatus);
  v12 = dispatch thunk of static Equatable.== infix(_:_:)();
  v23 = *(v21 + 8);
  v23(v20, v22);
  sub_1000095E8(v16, &qword_10118FE30);
  sub_1000095E8(v15, &qword_10118FE30);
  v23(v17, v22);
  sub_1000095E8(v26, &qword_10118FE30);
LABEL_8:

  v24 = v0[1];

  return v24(v12 & 1);
}

uint64_t sub_100438A30()
{
  v1 = v0[12];
  v2 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[5];
  v6 = v0[6];

  v7 = *(v6 + 56);
  v7(v1, 1, 1, v5);
  (*(v6 + 104))(v2, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v5);
  v7(v2, 0, 1, v5);
  v8 = *(v4 + 48);
  sub_1000089F8(v1, v3, &qword_10118FE30);
  sub_1000089F8(v2, v3 + v8, &qword_10118FE30);
  v9 = *(v6 + 48);
  if (v9(v3, 1, v5) == 1)
  {
    v10 = v0[12];
    v11 = v0[5];
    sub_1000095E8(v0[11], &qword_10118FE30);
    sub_1000095E8(v10, &qword_10118FE30);
    if (v9(v3 + v8, 1, v11) == 1)
    {
      sub_1000095E8(v0[9], &qword_10118FE30);
      v12 = 1;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v13 = v0[5];
  sub_1000089F8(v0[9], v0[10], &qword_10118FE30);
  v14 = v9(v3 + v8, 1, v13);
  v16 = v0[11];
  v15 = v0[12];
  v17 = v0[10];
  if (v14 == 1)
  {
    v18 = v0[5];
    v19 = v0[6];
    sub_1000095E8(v0[11], &qword_10118FE30);
    sub_1000095E8(v15, &qword_10118FE30);
    (*(v19 + 8))(v17, v18);
LABEL_6:
    sub_1000095E8(v0[9], &qword_10118FE28);
    v12 = 0;
    goto LABEL_8;
  }

  v26 = v0[9];
  v21 = v0[6];
  v20 = v0[7];
  v22 = v0[5];
  (*(v21 + 32))(v20, v3 + v8, v22);
  sub_10043D844(&qword_10118BFC0, &type metadata accessor for MusicPlayer.PlayabilityStatus);
  v12 = dispatch thunk of static Equatable.== infix(_:_:)();
  v23 = *(v21 + 8);
  v23(v20, v22);
  sub_1000095E8(v16, &qword_10118FE30);
  sub_1000095E8(v15, &qword_10118FE30);
  v23(v17, v22);
  sub_1000095E8(v26, &qword_10118FE30);
LABEL_8:

  v24 = v0[1];

  return v24(v12 & 1);
}

unint64_t sub_100438DF0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10043CF60(*a1);
  *a2 = result;
  return result;
}

void sub_100438E20(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1735290739;
  v5 = 0xE900000000000065;
  v6 = 0x646F736970457674;
  if (v2 != 6)
  {
    v6 = 0x766F4D636973756DLL;
    v5 = 0xEA00000000006569;
  }

  v7 = 0xE700000000000000;
  v8 = 0x6E6F6974617473;
  if (v2 != 4)
  {
    v8 = 0x646956636973756DLL;
    v7 = 0xEA00000000006F65;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x747369747261;
  if (v2 != 2)
  {
    v10 = 0x7473696C79616C70;
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = 0x6D75626C61;
    v3 = 0xE500000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 3u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_100438FCC()
{
  result = qword_10118FCF0;
  if (!qword_10118FCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118FCF0);
  }

  return result;
}

uint64_t sub_100439020(void *a1)
{
  v3 = v1;
  v5 = sub_10010FC20(&qword_10118FE18);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_10000954C(a1, a1[3]);
  sub_10043D79C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v10[15] = 0;
  sub_10043CA78();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  LOBYTE(v11) = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v11) = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v11) = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1004391F8()
{
  v1 = 25705;
  v2 = 0x614E747369747261;
  if (*v0 != 2)
  {
    v2 = 0x6E6F697461727564;
  }

  if (*v0)
  {
    v1 = 0x656C746974;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100439268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10043CFAC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100439290(uint64_t a1)
{
  v2 = sub_10043D79C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004392CC(uint64_t a1)
{
  v2 = sub_10043D79C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100439308@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10043D10C(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_100439370(void *a1, double a2, double a3, double a4)
{
  v9 = sub_10010FC20(&qword_10118FE00);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v14 - v11;
  sub_10000954C(a1, a1[3]);
  sub_10043D748();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = a2;
  HIBYTE(v14) = 0;
  sub_100282B9C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    v15 = a3;
    HIBYTE(v14) = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = a4;
    HIBYTE(v14) = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_100439560()
{
  v1 = 0x6E65657267;
  if (*v0 != 1)
  {
    v1 = 1702194274;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 6579570;
  }
}

uint64_t sub_1004395A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10043D410(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1004395D0(uint64_t a1)
{
  v2 = sub_10043D748();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10043960C(uint64_t a1)
{
  v2 = sub_10043D748();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100439648(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10043D524(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }
}

uint64_t sub_100439698()
{
  v0._countAndFlagsBits = Double.description.getter();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 8236;
  v1._object = 0xE200000000000000;
  String.append(_:)(v1);
  v2._countAndFlagsBits = Double.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 8236;
  v3._object = 0xE200000000000000;
  String.append(_:)(v3);
  v4._countAndFlagsBits = Double.description.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 93;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  return 91;
}

uint64_t sub_10043975C(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_10066C750(0, v3, 0);
    v4 = 32;
    do
    {
      v5 = *(a1 + v4);
      v6 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];
      v8 = v5;
      if (v6 >= v7 >> 1)
      {
        sub_10066C750((v7 > 1), v6 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v6 + 1;
      _swiftEmptyArrayStorage[v6 + 4] = v5;
      v4 += 8;
      --v3;
    }

    while (v3);
  }

  v9 = *(type metadata accessor for WidgetMusicItem() + 104);

  *(v1 + v9) = _swiftEmptyArrayStorage;
  return result;
}

unint64_t sub_100439864()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_101188C20);
  __chkstk_darwin(v2);
  v4 = &v68 - v3;
  v72 = 0xD000000000000010;
  v73 = 0x8000000100E4A5F0;
  v68._countAndFlagsBits = 0;
  v68._object = 0xE000000000000000;
  _StringGuts.grow(_:)(18);

  strcpy(&v68, "supertitle: ");
  HIWORD(v68._object) = -4864;
  object = v0->_object;
  v71._countAndFlagsBits = v0->_countAndFlagsBits;
  v71._object = object;

  sub_10010FC20(&qword_1011815E0);
  v6._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 2108450;
  v7._object = 0xE300000000000000;
  String.append(_:)(v7);
  String.append(_:)(v68);

  v68._countAndFlagsBits = 0x22203A656C746974;
  v68._object = 0xE800000000000000;
  String.append(_:)(v0[1]);
  v8._countAndFlagsBits = 2108450;
  v8._object = 0xE300000000000000;
  String.append(_:)(v8);
  String.append(_:)(v68);

  v68._countAndFlagsBits = 0;
  v68._object = 0xE000000000000000;
  _StringGuts.grow(_:)(16);

  v68._countAndFlagsBits = 0x656C746974627573;
  v68._object = 0xEB0000000022203ALL;
  v9 = v0[2]._object;
  v71._countAndFlagsBits = v0[2]._countAndFlagsBits;
  v71._object = v9;

  v10._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v10);

  v11._countAndFlagsBits = 2108450;
  v11._object = 0xE300000000000000;
  String.append(_:)(v11);
  String.append(_:)(v68);

  v68._countAndFlagsBits = 0x22203A6C7275;
  v68._object = 0xE600000000000000;
  v12 = type metadata accessor for WidgetMusicItem();
  type metadata accessor for URL();
  sub_10043D844(&qword_1011A4850, &type metadata accessor for URL);
  v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v13);

  v14._countAndFlagsBits = 2108450;
  v14._object = 0xE300000000000000;
  String.append(_:)(v14);
  String.append(_:)(v68);

  v68._countAndFlagsBits = 0;
  v68._object = 0xE000000000000000;
  _StringGuts.grow(_:)(18);

  strcpy(&v71, "artworkImage: ");
  HIBYTE(v71._object) = -18;
  v15 = *(&v0->_countAndFlagsBits + v12[25]);
  if (v15)
  {
    [v15 size];
    v17._object = v16;
  }

  else
  {
    v17 = 0;
  }

  v68 = v17;
  LOBYTE(v69) = v15 == 0;
  sub_10010FC20(&qword_10118FDD8);
  v18._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v18);

  v19._countAndFlagsBits = 8236;
  v19._object = 0xE200000000000000;
  String.append(_:)(v19);
  String.append(_:)(v71);

  v68._countAndFlagsBits = 0x22203A646E696BLL;
  v68._object = 0xE700000000000000;
  LOBYTE(v71._countAndFlagsBits) = *(&v1->_countAndFlagsBits + v12[8]);
  sub_10010FC20(&qword_10118FDE0);
  v20._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v20);

  v21._countAndFlagsBits = 2108450;
  v21._object = 0xE300000000000000;
  String.append(_:)(v21);
  String.append(_:)(v68);

  v68._countAndFlagsBits = 0x203A44496D657469;
  v68._object = 0xE900000000000022;
  v22._countAndFlagsBits = MusicItemID.description.getter();
  String.append(_:)(v22);

  v23._countAndFlagsBits = 2108450;
  v23._object = 0xE300000000000000;
  String.append(_:)(v23);
  String.append(_:)(v68);

  v68._countAndFlagsBits = 0;
  v68._object = 0xE000000000000000;
  _StringGuts.grow(_:)(17);

  strcpy(&v68, "catalogID: ");
  BYTE5(v68._object) = 0;
  HIWORD(v68._object) = -5120;
  v24 = (&v1->_countAndFlagsBits + v12[10]);
  v25 = v24[1];
  v71._countAndFlagsBits = *v24;
  v71._object = v25;

  sub_10010FC20(&unk_1011A49A0);
  v26._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v26);

  v27._countAndFlagsBits = 2108450;
  v27._object = 0xE300000000000000;
  String.append(_:)(v27);
  String.append(_:)(v68);

  v68._countAndFlagsBits = 0;
  v68._object = 0xE000000000000000;
  _StringGuts.grow(_:)(17);

  strcpy(&v68, "siriRepID: ");
  BYTE5(v68._object) = 0;
  HIWORD(v68._object) = -5120;
  String.append(_:)(*(v1 + v12[11]));
  v28._countAndFlagsBits = 2108450;
  v28._object = 0xE300000000000000;
  String.append(_:)(v28);
  String.append(_:)(v68);

  v68._countAndFlagsBits = 0;
  v68._object = 0xE000000000000000;
  _StringGuts.grow(_:)(23);

  v68._countAndFlagsBits = 0xD000000000000012;
  v68._object = 0x8000000100E4A610;
  v29 = (&v1->_countAndFlagsBits + v12[12]);
  v30 = v29[1];
  v71._countAndFlagsBits = *v29;
  v71._object = v30;

  v31._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v31);

  v32._countAndFlagsBits = 2108450;
  v32._object = 0xE300000000000000;
  String.append(_:)(v32);
  String.append(_:)(v68);

  v68._countAndFlagsBits = 0;
  v68._object = 0xE000000000000000;
  _StringGuts.grow(_:)(26);

  v68._countAndFlagsBits = 0xD000000000000015;
  v68._object = 0x8000000100E4A630;
  v33 = (&v1->_countAndFlagsBits + v12[13]);
  v34 = v33[1];
  v71._countAndFlagsBits = *v33;
  v71._object = v34;

  v35._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v35);

  v36._countAndFlagsBits = 2108450;
  v36._object = 0xE300000000000000;
  String.append(_:)(v36);
  String.append(_:)(v68);

  v68._countAndFlagsBits = 0;
  v68._object = 0xE000000000000000;
  _StringGuts.grow(_:)(26);

  v68._countAndFlagsBits = 0xD000000000000015;
  v68._object = 0x8000000100E4A650;
  v37 = (&v1->_countAndFlagsBits + v12[14]);
  v38 = v37[1];
  v71._countAndFlagsBits = *v37;
  v71._object = v38;

  v39._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v39);

  v40._countAndFlagsBits = 2108450;
  v40._object = 0xE300000000000000;
  String.append(_:)(v40);
  String.append(_:)(v68);

  v68._countAndFlagsBits = 0x203A736567646162;
  v68._object = 0xE900000000000022;
  v41._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v41);

  v42._countAndFlagsBits = 2108450;
  v42._object = 0xE300000000000000;
  String.append(_:)(v42);
  String.append(_:)(v68);

  v68._countAndFlagsBits = 0;
  v68._object = 0xE000000000000000;
  _StringGuts.grow(_:)(16);

  strcpy(&v68, "isPlayable: ");
  BYTE5(v68._object) = 0;
  HIWORD(v68._object) = -5120;
  if (*(&v1->_countAndFlagsBits + v12[16]))
  {
    v43 = 1702195828;
  }

  else
  {
    v43 = 0x65736C6166;
  }

  if (*(&v1->_countAndFlagsBits + v12[16]))
  {
    v44 = 0xE400000000000000;
  }

  else
  {
    v44 = 0xE500000000000000;
  }

  v45 = v44;
  String.append(_:)(*&v43);

  v46._countAndFlagsBits = 8236;
  v46._object = 0xE200000000000000;
  String.append(_:)(v46);
  String.append(_:)(v68);

  v68._countAndFlagsBits = 0;
  v68._object = 0xE000000000000000;
  _StringGuts.grow(_:)(19);

  strcpy(&v68, "releaseDate: ");
  HIBYTE(v68._object) = -18;
  sub_1000089F8(v1 + v12[17], v4, &qword_101188C20);
  v47._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v47);

  v48._countAndFlagsBits = 2108450;
  v48._object = 0xE300000000000000;
  String.append(_:)(v48);
  String.append(_:)(v68);

  v68._countAndFlagsBits = 0;
  v68._object = 0xE000000000000000;
  _StringGuts.grow(_:)(24);

  v68._countAndFlagsBits = 0xD000000000000013;
  v68._object = 0x8000000100E4A670;
  sub_1000089F8(v1 + v12[18], v4, &qword_101188C20);
  v49._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v49);

  v50._countAndFlagsBits = 2108450;
  v50._object = 0xE300000000000000;
  String.append(_:)(v50);
  String.append(_:)(v68);

  v68._countAndFlagsBits = 0x22203A65726E6567;
  v68._object = 0xE800000000000000;
  v51 = (&v1->_countAndFlagsBits + v12[19]);
  v52 = v51[1];
  v71._countAndFlagsBits = *v51;
  v71._object = v52;

  v53._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v53);

  v54._countAndFlagsBits = 2108450;
  v54._object = 0xE300000000000000;
  String.append(_:)(v54);
  String.append(_:)(v68);

  v68._countAndFlagsBits = 0;
  v68._object = 0xE000000000000000;
  _StringGuts.grow(_:)(27);

  v68._countAndFlagsBits = 0xD000000000000017;
  v68._object = 0x8000000100E4A690;
  v71._countAndFlagsBits = *(*(&v1->_countAndFlagsBits + v12[20]) + 16);
  v55._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v55);

  v56._countAndFlagsBits = 8236;
  v56._object = 0xE200000000000000;
  String.append(_:)(v56);
  String.append(_:)(v68);

  v68._countAndFlagsBits = 0;
  v68._object = 0xE000000000000000;
  _StringGuts.grow(_:)(22);

  v71._countAndFlagsBits = 0xD000000000000012;
  v71._object = 0x8000000100E4A6B0;
  v57 = v1 + v12[21];
  v58 = *(v57 + 2);
  v59 = v57[24];
  v68 = *v57;
  v69 = v58;
  v70 = v59;
  sub_10010FC20(&qword_10118FDE8);
  v60._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v60);

  v61._countAndFlagsBits = 8236;
  v61._object = 0xE200000000000000;
  String.append(_:)(v61);
  String.append(_:)(v71);

  v68._countAndFlagsBits = 0;
  v68._object = 0xE000000000000000;
  _StringGuts.grow(_:)(19);

  v71._countAndFlagsBits = 0xD000000000000011;
  v71._object = 0x8000000100E4A6D0;
  v62 = v1 + v12[22];
  v63 = *(v62 + 2);
  v64 = v62[24];
  v68 = *v62;
  v69 = v63;
  v70 = v64;
  v65._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v65);

  String.append(_:)(v71);

  v66._countAndFlagsBits = 41;
  v66._object = 0xE100000000000000;
  String.append(_:)(v66);
  return v72;
}

void sub_10043A444()
{
  v0 = sub_10010FC20(&qword_101188C20);
  __chkstk_darwin(v0 - 8);
  v49 = &v40 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v4 = &v40 - v3;
  v5 = type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v8 - 8);
  v10 = &v40 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for WidgetMusicItem();
  sub_100006080(v15, qword_101218C90);
  v16 = sub_1000060E4(v15, qword_101218C90);
  URL.init(string:)();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    __break(1u);
  }

  else
  {
    v44 = 0x8000000100E4A7D0;
    v45 = 0x8000000100E4A7B0;
    (*(v12 + 32))(v14, v10, v11);
    v48 = [objc_allocWithZone(UIImage) init];
    v17 = sub_10010FC20(&unk_101182950);
    (*(*(v17 - 8) + 56))(v7, 1, 11, v17);
    v18 = MusicItemID.init(stringLiteral:)();
    v41 = v19;
    v42 = v18;
    v20 = type metadata accessor for Date();
    v21 = v14;
    v47 = v14;
    v22 = v20;
    v23 = *(*(v20 - 8) + 56);
    v46 = v11;
    v43 = v4;
    v23(v4, 1, 1, v20);
    v24 = v49;
    v23(v49, 1, 1, v22);
    v25 = v15[25];
    *(v16 + v25) = 0;
    *(v16 + v15[26]) = _swiftEmptyArrayStorage;
    *v16 = xmmword_100ECC440;
    v26 = v45;
    *(v16 + 16) = 0xD000000000000018;
    *(v16 + 24) = v26;
    *(v16 + 32) = 0xD000000000000010;
    *(v16 + 40) = v44;
    (*(v12 + 16))(v16 + v15[7], v21, v11);
    v27 = v7;
    sub_10043E440(v7, v16 + v15[23], type metadata accessor for ArtworkImage.Placeholder);
    *(v16 + v15[24]) = 0x3FF0000000000000;
    *(v16 + v15[8]) = 8;
    v28 = (v16 + v15[9]);
    v29 = v41;
    *v28 = v42;
    v28[1] = v29;
    v30 = (v16 + v15[10]);
    *v30 = 0;
    v30[1] = 0;
    v31 = (v16 + v15[11]);
    *v31 = 0;
    v31[1] = 0xE000000000000000;
    v32 = (v16 + v15[12]);
    *v32 = 0;
    v32[1] = 0;
    v33 = (v16 + v15[13]);
    *v33 = 0;
    v33[1] = 0;
    v34 = (v16 + v15[14]);
    *v34 = 0;
    v34[1] = 0;
    *(v16 + v15[15]) = _swiftEmptyArrayStorage;
    *(v16 + v15[16]) = 0;
    v35 = v43;
    sub_1000089F8(v43, v16 + v15[17], &qword_101188C20);
    sub_1000089F8(v24, v16 + v15[18], &qword_101188C20);
    v36 = (v16 + v15[19]);
    *v36 = 0;
    v36[1] = 0;
    *(v16 + v15[20]) = _swiftEmptyArrayStorage;
    v37 = v16 + v15[21];
    *v37 = 0;
    *(v37 + 8) = 0;
    *(v37 + 16) = 0;
    *(v37 + 24) = 1;
    v38 = v16 + v15[22];
    *v38 = 0;
    *(v38 + 8) = 0;
    *(v38 + 16) = 0;
    *(v38 + 24) = 1;
    sub_10043975C(_swiftEmptyArrayStorage);
    sub_1000095E8(v24, &qword_101188C20);
    sub_1000095E8(v35, &qword_101188C20);
    sub_10043C9C4(v27, type metadata accessor for ArtworkImage.Placeholder);
    (*(v12 + 8))(v47, v46);
    v39 = *(v16 + v25);
    *(v16 + v25) = v48;
  }
}

unint64_t sub_10043A9A0(char a1)
{
  result = 0x7469747265707573;
  switch(a1)
  {
    case 1:
      result = 0x656C746974;
      break;
    case 2:
      result = 0x656C746974627573;
      break;
    case 3:
      result = 7107189;
      break;
    case 4:
      result = 1684957547;
      break;
    case 5:
      result = 0x44496D657469;
      break;
    case 6:
      result = 0x49676F6C61746163;
      break;
    case 7:
      result = 0x4970655269726973;
      break;
    case 8:
    case 16:
      result = 0x656E6961746E6F63;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0xD000000000000012;
      break;
    case 11:
      result = 0x736567646162;
      break;
    case 12:
      result = 0x626179616C507369;
      break;
    case 13:
      result = 0x44657361656C6572;
      break;
    case 14:
    case 17:
      result = 0xD000000000000010;
      break;
    case 15:
      result = 0x65726E6567;
      break;
    case 18:
      result = 0x756F72676B636162;
      break;
    case 19:
      result = 0xD000000000000012;
      break;
    case 20:
      result = 0xD00000000000001BLL;
      break;
    case 21:
      result = 0x49656C6261646F63;
      break;
    case 22:
      result = 0xD000000000000019;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10043ABFC(void *a1)
{
  v3 = v1;
  v5 = sub_10010FC20(&qword_10118FD78);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - v7;
  sub_10000954C(a1, a1[3]);
  sub_10043C558();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v20) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v20) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v20) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = type metadata accessor for WidgetMusicItem();
    LOBYTE(v20) = 3;
    type metadata accessor for URL();
    sub_10043D844(&qword_10118FD80, &type metadata accessor for URL);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v20) = *(v3 + v9[8]);
    v23 = 4;
    sub_10043CA24();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v10 = (v3 + v9[9]);
    v12 = *v10;
    v11 = v10[1];
    *&v20 = v12;
    *(&v20 + 1) = v11;
    v23 = 5;
    sub_10043CA78();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v20 = *(v3 + v9[10]);
    v23 = 6;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v20) = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    v20 = *(v3 + v9[12]);
    v23 = 8;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v20 = *(v3 + v9[13]);
    v23 = 9;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v20) = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    *&v20 = *(v3 + v9[15]);
    v23 = 11;
    sub_10010FC20(&qword_10118FD20);
    sub_10043CACC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v20) = 12;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v20) = 13;
    type metadata accessor for Date();
    sub_10043D844(&qword_10118F0E8, &type metadata accessor for Date);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v20) = 14;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v20) = 15;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    *&v20 = *(v3 + v9[20]);
    v23 = 16;
    sub_10010FC20(&qword_10118FD38);
    sub_10043CBA4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = (v3 + v9[21]);
    v14 = *(v13 + 2);
    v15 = *(v13 + 24);
    v20 = *v13;
    v21 = v14;
    v22 = v15;
    v23 = 17;
    sub_10043CC7C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v16 = (v3 + v9[22]);
    v17 = *(v16 + 2);
    v18 = *(v16 + 24);
    v20 = *v16;
    v21 = v17;
    v22 = v18;
    v23 = 18;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v20) = 19;
    type metadata accessor for ArtworkImage.Placeholder(0);
    sub_10043D844(&qword_10118FDC0, type metadata accessor for ArtworkImage.Placeholder);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v20 = *(v3 + v9[24]);
    v23 = 20;
    sub_100282B9C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v20 = *(v3 + v9[25]);
    v23 = 21;
    sub_10041E680();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v20 = *(v3 + v9[26]);
    v23 = 22;
    sub_10010FC20(&qword_10118FD60);
    sub_10043CCD0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_10043B390(void *a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v82 = type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin(v82);
  v83 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10010FC20(&qword_101188C20);
  __chkstk_darwin(v4 - 8);
  v85 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v78 - v7;
  v9 = type metadata accessor for URL();
  v86 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10010FC20(&qword_10118FCF8);
  v87 = *(v12 - 8);
  v88 = v12;
  __chkstk_darwin(v12);
  v14 = &v78 - v13;
  v15 = type metadata accessor for WidgetMusicItem();
  __chkstk_darwin(v15);
  v17 = (&v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = a1[3];
  v90 = a1;
  sub_10000954C(a1, v18);
  sub_10043C558();
  v89 = v14;
  v19 = v91;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v19)
  {
    v91 = v19;
    sub_10000959C(v90);
    v24 = 0;
LABEL_4:

    return;
  }

  v78 = v8;
  v79 = v9;
  v21 = v87;
  v20 = v88;
  v80 = v15;
  v81 = v17;
  LOBYTE(v92) = 0;
  v22 = v89;
  v23 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v25 = v81;
  *v81 = v23;
  *(v25 + 1) = v26;
  LOBYTE(v92) = 1;
  *(v25 + 2) = KeyedDecodingContainer.decode(_:forKey:)();
  *(v25 + 3) = v27;
  LOBYTE(v92) = 2;
  v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v91 = 0;
  *(v25 + 4) = v28;
  *(v25 + 5) = v29;
  LOBYTE(v92) = 3;
  sub_10043D844(&qword_10118FD08, &type metadata accessor for URL);
  v30 = v79;
  v31 = v91;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v91 = v31;
  if (v31)
  {
    (*(v21 + 8))(v22, v20);
    v32 = 0;
    v33 = 0;
    v34 = 0;
    LODWORD(v83) = 0;
    LODWORD(v84) = 0;
    LODWORD(v85) = 0;
    LODWORD(v87) = 0;
    LODWORD(v88) = 0;
    LODWORD(v89) = 0;
    v35 = 0;
    v36 = 0;
LABEL_12:
    sub_10000959C(v90);

    v40 = v36;
    if ((v32 & 1) == 0)
    {
      v41 = 0;
      v42 = 0;
      v24 = 0;
      if (!v33)
      {
        goto LABEL_14;
      }

      goto LABEL_28;
    }

    v24 = 0;
    v42 = 0;
    v41 = 0;
LABEL_27:
    (*(v86 + 8))(v81 + v80[7], v79);
    if ((v33 & 1) == 0)
    {
LABEL_14:
      v43 = v80;
      v44 = v81;
      if (v34)
      {
        goto LABEL_15;
      }

      goto LABEL_29;
    }

LABEL_28:
    v43 = v80;
    v44 = v81;

    if (v34)
    {
LABEL_15:

      if ((v83 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_30;
    }

LABEL_29:
    if (!v83)
    {
LABEL_16:
      if (v84)
      {
        goto LABEL_17;
      }

      goto LABEL_31;
    }

LABEL_30:

    if (v84)
    {
LABEL_17:

      if ((v85 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_32;
    }

LABEL_31:
    if (!v85)
    {
LABEL_18:
      if (v87)
      {
        goto LABEL_19;
      }

      goto LABEL_33;
    }

LABEL_32:

    if (v87)
    {
LABEL_19:

      if ((v88 & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_34;
    }

LABEL_33:
    if (!v88)
    {
LABEL_20:
      if (v89)
      {
        goto LABEL_21;
      }

      goto LABEL_35;
    }

LABEL_34:

    if (v89)
    {
LABEL_21:
      sub_1000095E8(v44 + v43[17], &qword_101188C20);
      if ((v35 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_36;
    }

LABEL_35:
    if (!v35)
    {
LABEL_22:
      if (v40)
      {
        goto LABEL_23;
      }

      goto LABEL_37;
    }

LABEL_36:
    sub_1000095E8(v44 + v43[18], &qword_101188C20);
    if (v40)
    {
LABEL_23:

      if ((v41 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_38;
    }

LABEL_37:
    if (!v41)
    {
LABEL_24:
      if (!v42)
      {
        goto LABEL_4;
      }

LABEL_39:
      sub_10043C9C4(v44 + v43[23], type metadata accessor for ArtworkImage.Placeholder);
      goto LABEL_4;
    }

LABEL_38:

    if ((v42 & 1) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_39;
  }

  v37 = v80;
  (*(v86 + 32))(&v25[v80[7]], v11, v30);
  v95 = 4;
  sub_10043C5AC();
  v38 = v91;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v91 = v38;
  if (v38)
  {
    (*(v21 + 8))(v89, v20);
LABEL_11:
    v33 = 0;
    v34 = 0;
    LODWORD(v83) = 0;
    LODWORD(v84) = 0;
    LODWORD(v85) = 0;
    LODWORD(v87) = 0;
    LODWORD(v88) = 0;
    LODWORD(v89) = 0;
    v35 = 0;
    v36 = 0;
    v32 = 1;
    goto LABEL_12;
  }

  v25[v37[8]] = v92;
  v95 = 5;
  sub_10043C600();
  v39 = v91;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  if (v39)
  {
    v91 = v39;
    (*(v21 + 8))(v89, v88);
    goto LABEL_11;
  }

  v45 = *(&v92 + 1);
  v46 = &v25[v37[9]];
  *v46 = v92;
  *(v46 + 1) = v45;
  v95 = 6;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *&v25[v37[10]] = v92;
  LOBYTE(v92) = 7;
  v47 = KeyedDecodingContainer.decode(_:forKey:)();
  v48 = &v25[v80[11]];
  *v48 = v47;
  v48[1] = v49;
  v95 = 8;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v91 = 0;
  *(v81 + v80[12]) = v92;
  v95 = 9;
  v50 = v91;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v91 = v50;
  if (v50)
  {
    (*(v21 + 8))(v89, v88);
    LODWORD(v85) = 0;
    LODWORD(v87) = 0;
    LODWORD(v88) = 0;
    LODWORD(v89) = 0;
    v35 = 0;
    v36 = 0;
    v32 = 1;
    v33 = 1;
    v34 = 1;
    LODWORD(v83) = 1;
    LODWORD(v84) = 1;
    goto LABEL_12;
  }

  *(v81 + v80[13]) = v92;
  LOBYTE(v92) = 10;
  v51 = v91;
  v52 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v91 = v51;
  if (v51)
  {
    (*(v21 + 8))(v89, v88);
    LODWORD(v87) = 0;
    LODWORD(v88) = 0;
    LODWORD(v89) = 0;
    v35 = 0;
    v36 = 0;
    v32 = 1;
    v33 = 1;
    v34 = 1;
    LODWORD(v83) = 1;
    LODWORD(v84) = 1;
    LODWORD(v85) = 1;
    goto LABEL_12;
  }

  v54 = (v81 + v80[14]);
  *v54 = v52;
  v54[1] = v53;
  sub_10010FC20(&qword_10118FD20);
  v95 = 11;
  sub_10043C654();
  v55 = v91;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v91 = v55;
  if (v55)
  {
    (*(v21 + 8))(v89, v88);
    LODWORD(v88) = 0;
    LODWORD(v89) = 0;
    v35 = 0;
    v36 = 0;
    v32 = 1;
    v33 = 1;
    v34 = 1;
    LODWORD(v83) = 1;
    LODWORD(v84) = 1;
    LODWORD(v85) = 1;
    LODWORD(v87) = 1;
    goto LABEL_12;
  }

  *(v81 + v80[15]) = v92;
  LOBYTE(v92) = 12;
  v56 = KeyedDecodingContainer.decode(_:forKey:)();
  v91 = 0;
  *(v81 + v80[16]) = v56 & 1;
  type metadata accessor for Date();
  LOBYTE(v92) = 13;
  sub_10043D844(&qword_10118F0D8, &type metadata accessor for Date);
  v57 = v91;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v91 = v57;
  if (v57)
  {
    (*(v21 + 8))(v89, v88);
    LODWORD(v89) = 0;
    v35 = 0;
    v36 = 0;
    v32 = 1;
    v33 = 1;
    v34 = 1;
    LODWORD(v83) = 1;
    LODWORD(v84) = 1;
    LODWORD(v85) = 1;
    LODWORD(v87) = 1;
    LODWORD(v88) = 1;
    goto LABEL_12;
  }

  sub_10041E7D4(v78, v81 + v80[17]);
  LOBYTE(v92) = 14;
  v58 = v91;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v91 = v58;
  if (v58)
  {
    (*(v21 + 8))(v89, v88);
    v35 = 0;
    v36 = 0;
    v32 = 1;
    v33 = 1;
    v34 = 1;
    LODWORD(v83) = 1;
    LODWORD(v84) = 1;
    LODWORD(v85) = 1;
    LODWORD(v87) = 1;
    LODWORD(v88) = 1;
    LODWORD(v89) = 1;
    goto LABEL_12;
  }

  sub_10041E7D4(v85, v81 + v80[18]);
  LOBYTE(v92) = 15;
  v59 = v91;
  v60 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v91 = v59;
  if (v59)
  {
    (*(v21 + 8))(v89, v88);
    v36 = 0;
    v32 = 1;
    v33 = 1;
    v34 = 1;
    LODWORD(v83) = 1;
    LODWORD(v84) = 1;
    LODWORD(v85) = 1;
    LODWORD(v87) = 1;
    LODWORD(v88) = 1;
    LODWORD(v89) = 1;
    v35 = 1;
    goto LABEL_12;
  }

  v62 = (v81 + v80[19]);
  *v62 = v60;
  v62[1] = v61;
  sub_10010FC20(&qword_10118FD38);
  v95 = 16;
  sub_10043C72C();
  v63 = v91;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v91 = v63;
  if (v63)
  {
    (*(v21 + 8))(v89, v88);
    v32 = 1;
    v33 = 1;
    v34 = 1;
    LODWORD(v83) = 1;
    LODWORD(v84) = 1;
    LODWORD(v85) = 1;
    LODWORD(v87) = 1;
    LODWORD(v88) = 1;
    LODWORD(v89) = 1;
    v35 = 1;
    v36 = 1;
    goto LABEL_12;
  }

  *(v81 + v80[20]) = v92;
  v95 = 17;
  sub_10043C804();
  v64 = v91;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v91 = v64;
  if (v64 || (v65 = v93, v66 = v94, v67 = v81 + v80[21], *v67 = v92, *(v67 + 2) = v65, v67[24] = v66, v95 = 18, v68 = v91, KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(), (v91 = v68) != 0) || (v69 = v93, v70 = v94, v71 = v81 + v80[22], *v71 = v92, *(v71 + 2) = v69, v71[24] = v70, LOBYTE(v92) = 19, sub_10043D844(&qword_10118FD58, type metadata accessor for ArtworkImage.Placeholder), v72 = v91, KeyedDecodingContainer.decode<A>(_:forKey:)(), (v91 = v72) != 0))
  {
    (*(v21 + 8))(v89, v88);
    sub_10000959C(v90);
    v42 = 0;
    v24 = 0;
LABEL_58:

    v41 = 1;
    v40 = 1;
    v35 = 1;
    LODWORD(v89) = 1;
    LODWORD(v88) = 1;
    LODWORD(v87) = 1;
    LODWORD(v85) = 1;
    LODWORD(v84) = 1;
    LODWORD(v83) = 1;
    v34 = 1;
    LOBYTE(v33) = 1;
    goto LABEL_27;
  }

  sub_10043C858(v83, v81 + v80[23]);
  v95 = 20;
  sub_100282AE0();
  v73 = v91;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v91 = v73;
  if (v73 || (*(v81 + v80[24]) = v92, v95 = 21, sub_10041E62C(), v74 = v91, KeyedDecodingContainer.decode<A>(_:forKey:)(), (v91 = v74) != 0))
  {
    (*(v21 + 8))(v89, v88);
    sub_10000959C(v90);
    v24 = 0;
    v42 = 1;
    goto LABEL_58;
  }

  v24 = v92;
  *(v81 + v80[25]) = v92;
  sub_10010FC20(&qword_10118FD60);
  v95 = 22;
  sub_10043C8BC();
  v75 = v91;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v91 = v75;
  if (v75)
  {
    (*(v21 + 8))(v89, v88);
    sub_10000959C(v90);
    v42 = 1;
    goto LABEL_58;
  }

  v76 = v80[26];
  (*(v21 + 8))(v89, v88);
  v77 = v81;
  *(v81 + v76) = v92;
  sub_10043E440(v77, v84, type metadata accessor for WidgetMusicItem);
  sub_10000959C(v90);
  sub_10043C9C4(v77, type metadata accessor for WidgetMusicItem);
}

uint64_t sub_10043C474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10043DD14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10043C4A8(uint64_t a1)
{
  v2 = sub_10043C558();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10043C4E4(uint64_t a1)
{
  v2 = sub_10043C558();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10043C558()
{
  result = qword_10118FD00;
  if (!qword_10118FD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118FD00);
  }

  return result;
}

unint64_t sub_10043C5AC()
{
  result = qword_10118FD10;
  if (!qword_10118FD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118FD10);
  }

  return result;
}

unint64_t sub_10043C600()
{
  result = qword_10118FD18;
  if (!qword_10118FD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118FD18);
  }

  return result;
}

unint64_t sub_10043C654()
{
  result = qword_10118FD28;
  if (!qword_10118FD28)
  {
    sub_1001109D0(&qword_10118FD20);
    sub_10043C6D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118FD28);
  }

  return result;
}

unint64_t sub_10043C6D8()
{
  result = qword_10118FD30;
  if (!qword_10118FD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118FD30);
  }

  return result;
}

unint64_t sub_10043C72C()
{
  result = qword_10118FD40;
  if (!qword_10118FD40)
  {
    sub_1001109D0(&qword_10118FD38);
    sub_10043C7B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118FD40);
  }

  return result;
}

unint64_t sub_10043C7B0()
{
  result = qword_10118FD48;
  if (!qword_10118FD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118FD48);
  }

  return result;
}

unint64_t sub_10043C804()
{
  result = qword_10118FD50;
  if (!qword_10118FD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118FD50);
  }

  return result;
}

uint64_t sub_10043C858(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtworkImage.Placeholder(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10043C8BC()
{
  result = qword_10118FD68;
  if (!qword_10118FD68)
  {
    sub_1001109D0(&qword_10118FD60);
    sub_10043C940();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118FD68);
  }

  return result;
}

unint64_t sub_10043C940()
{
  result = qword_10118FD70;
  if (!qword_10118FD70)
  {
    sub_1001109D0(&unk_10118FC68);
    sub_10041E62C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118FD70);
  }

  return result;
}

uint64_t sub_10043C9C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10043CA24()
{
  result = qword_10118FD88;
  if (!qword_10118FD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118FD88);
  }

  return result;
}

unint64_t sub_10043CA78()
{
  result = qword_10118FD90;
  if (!qword_10118FD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118FD90);
  }

  return result;
}

unint64_t sub_10043CACC()
{
  result = qword_10118FD98;
  if (!qword_10118FD98)
  {
    sub_1001109D0(&qword_10118FD20);
    sub_10043CB50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118FD98);
  }

  return result;
}

unint64_t sub_10043CB50()
{
  result = qword_10118FDA0;
  if (!qword_10118FDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118FDA0);
  }

  return result;
}

unint64_t sub_10043CBA4()
{
  result = qword_10118FDA8;
  if (!qword_10118FDA8)
  {
    sub_1001109D0(&qword_10118FD38);
    sub_10043CC28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118FDA8);
  }

  return result;
}

unint64_t sub_10043CC28()
{
  result = qword_10118FDB0;
  if (!qword_10118FDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118FDB0);
  }

  return result;
}

unint64_t sub_10043CC7C()
{
  result = qword_10118FDB8;
  if (!qword_10118FDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118FDB8);
  }

  return result;
}

unint64_t sub_10043CCD0()
{
  result = qword_10118FDC8;
  if (!qword_10118FDC8)
  {
    sub_1001109D0(&qword_10118FD60);
    sub_10043CD54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118FDC8);
  }

  return result;
}

unint64_t sub_10043CD54()
{
  result = qword_10118FDD0;
  if (!qword_10118FDD0)
  {
    sub_1001109D0(&unk_10118FC68);
    sub_10041E680();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118FDD0);
  }

  return result;
}

uint64_t sub_10043CDD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetMusicItem();
  v5 = v4[9];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || ((v10 = v4[10], v11 = (a1 + v10), v12 = *(a1 + v10 + 8), v13 = (a2 + v10), v14 = v13[1], v12) ? (v15 = v14 == 0) : (v15 = 1), !v15 && (*v11 == *v13 ? (v23 = v12 == v14) : (v23 = 0), v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)) || ((v16 = v4[11], v17 = *(a1 + v16), v18 = *(a1 + v16 + 8), v19 = (a2 + v16), v17 == *v19) ? (v20 = v18 == v19[1]) : (v20 = 0), v20 || (v21 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v21 & 1) != 0)))
  {
    v24 = v4[12];
    v25 = (a1 + v24);
    v26 = *(a1 + v24 + 8);
    v27 = (a2 + v24);
    v28 = v27[1];
    if (v26)
    {
      if (v28)
      {
        v29 = *v25 == *v27 && v26 == v28;
        if (v29 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v28)
    {
      return 1;
    }

    v30 = v4[13];
    v31 = (a1 + v30);
    v32 = *(a1 + v30 + 8);
    v33 = (a2 + v30);
    v34 = v33[1];
    result = (v32 | v34) == 0;
    if (v32)
    {
      v35 = v34 == 0;
    }

    else
    {
      v35 = 1;
    }

    if (v35)
    {
      return result;
    }

    if (*v31 != *v33 || v32 != v34)
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    return 1;
  }

  return result;
}

unint64_t sub_10043CF60(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10109AD60, v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10043CFAC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x614E747369747261 && a2 == 0xEA0000000000656DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000)
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

uint64_t sub_10043D10C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_10010FC20(&qword_10118FE08);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - v7;
  sub_10000954C(a1, a1[3]);
  sub_10043D79C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000959C(a1);
  }

  v27 = 0;
  sub_10043C600();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v28;
  v26 = v29;
  LOBYTE(v28) = 1;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v25 = v11;
  v22 = v10;
  v23 = v9;
  LOBYTE(v28) = 2;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v24 = v13;
  LOBYTE(v28) = 3;
  KeyedDecodingContainer.decode(_:forKey:)();
  v15 = v14;
  (*(v6 + 8))(v8, v5);
  v16 = v12;
  v17 = v26;

  v18 = v25;

  v19 = v24;

  sub_10000959C(a1);

  v21 = v22;
  *a2 = v23;
  a2[1] = v17;
  a2[2] = v21;
  a2[3] = v18;
  a2[4] = v16;
  a2[5] = v19;
  a2[6] = v15;
  return result;
}

uint64_t sub_10043D410(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6579570 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65657267 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702194274 && a2 == 0xE400000000000000)
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

double sub_10043D524(void *a1)
{
  v2 = sub_10010FC20(&qword_10118FDF0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - v4;
  sub_10000954C(a1, a1[3]);
  sub_10043D748();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v9 = 0;
  sub_100282AE0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v6 = v10;
  v9 = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = 2;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  sub_10000959C(a1);
  return v6;
}

unint64_t sub_10043D748()
{
  result = qword_10118FDF8;
  if (!qword_10118FDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118FDF8);
  }

  return result;
}

unint64_t sub_10043D79C()
{
  result = qword_10118FE10;
  if (!qword_10118FE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118FE10);
  }

  return result;
}

unint64_t sub_10043D7F0()
{
  result = qword_10118FE20;
  if (!qword_10118FE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118FE20);
  }

  return result;
}

uint64_t sub_10043D844(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for WidgetMusicItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEA)
  {
    goto LABEL_17;
  }

  if (a2 + 22 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 22) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 22;
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

      return (*a1 | (v4 << 8)) - 22;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 22;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v8 = v6 - 23;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WidgetMusicItem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEA)
  {
    v4 = 0;
  }

  if (a2 > 0xE9)
  {
    v5 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
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
    *result = a2 + 22;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10043DA00()
{
  result = qword_10118FE38;
  if (!qword_10118FE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118FE38);
  }

  return result;
}

unint64_t sub_10043DA58()
{
  result = qword_10118FE40;
  if (!qword_10118FE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118FE40);
  }

  return result;
}

unint64_t sub_10043DAB0()
{
  result = qword_10118FE48;
  if (!qword_10118FE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118FE48);
  }

  return result;
}

unint64_t sub_10043DB08()
{
  result = qword_10118FE50;
  if (!qword_10118FE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118FE50);
  }

  return result;
}

unint64_t sub_10043DB60()
{
  result = qword_10118FE58;
  if (!qword_10118FE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118FE58);
  }

  return result;
}

unint64_t sub_10043DBB8()
{
  result = qword_10118FE60;
  if (!qword_10118FE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118FE60);
  }

  return result;
}

unint64_t sub_10043DC10()
{
  result = qword_10118FE68;
  if (!qword_10118FE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118FE68);
  }

  return result;
}

unint64_t sub_10043DC68()
{
  result = qword_10118FE70;
  if (!qword_10118FE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118FE70);
  }

  return result;
}

unint64_t sub_10043DCC0()
{
  result = qword_10118FE78;
  if (!qword_10118FE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118FE78);
  }

  return result;
}

uint64_t sub_10043DD14(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7469747265707573 && a2 == 0xEA0000000000656CLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x44496D657469 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x49676F6C61746163 && a2 == 0xE900000000000044 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4970655269726973 && a2 == 0xE900000000000044 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x656E6961746E6F63 && a2 == 0xEF44496D65744972 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000100E4A6F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000100E4A710 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x736567646162 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x626179616C507369 && a2 == 0xEA0000000000656CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x44657361656C6572 && a2 == 0xEB00000000657461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100E3C6C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x65726E6567 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x656E6961746E6F63 && a2 == 0xEF736B6361725472 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100E4A730 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEF726F6C6F43646ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000100E4A750 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000100E4A770 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x49656C6261646F63 && a2 == 0xEC0000006567616DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000100E4A790 == a2)
  {

    return 22;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 22;
    }

    else
    {
      return 23;
    }
  }
}

uint64_t sub_10043E440(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10043E4A8()
{
  v0 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v0 - 8);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  String.LocalizationValue.init(stringLiteral:)();
  result = AccessibilityString.init(_:tableName:bundle:comment:)(v2);
  qword_101218CA8 = result;
  unk_101218CB0 = v4;
  return result;
}

uint64_t sub_10043E568()
{
  v0 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v0 - 8);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  String.LocalizationValue.init(stringLiteral:)();
  result = AccessibilityString.init(_:tableName:bundle:comment:)(v2);
  qword_101218CB8 = result;
  unk_101218CC0 = v4;
  return result;
}

uint64_t sub_10043E630()
{
  v0 = qword_10118FE80;

  return v0;
}

uint64_t sub_10043E674()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = [Strong contentScrollViewForEdge:1];

      if (v4)
      {
        [v4 setKeyboardDismissMode:1];
      }
    }

    if (([*(v1 + 32) hidesNavigationBarDuringPresentation] & 1) == 0)
    {
      v5 = [objc_opt_self() currentDevice];
      v6 = [v5 userInterfaceIdiom];

      if (v6 != 6)
      {
        v7 = swift_unknownObjectWeakLoadStrong();
        v8 = v7;
        if (v7)
        {
          v9 = [v7 navigationItem];

          v10 = [v9 largeTitleDisplayMode];
        }

        else
        {
          v10 = 0;
        }

        *(v1 + 16) = v10;
        *(v1 + 24) = v8 == 0;
        v11 = swift_unknownObjectWeakLoadStrong();
        if (v11)
        {
          v12 = v11;
          v13 = [v11 navigationItem];

          [v13 setLargeTitleDisplayMode:2];
        }
      }
    }

    v14 = *(v1 + 72);
    if (v14)
    {

      v14(v1);
      sub_100020438(v14);
    }
  }

  return result;
}

uint64_t sub_10043E844(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 88);
    sub_100030444(v3);

    if (v3)
    {
      v4 = a1 + OBJC_IVAR____TtCC5Music23LibrarySearchControllerP33_D5FA0BEF708D1E9261BCB607AD690C3E11BarDelegate_text;
      v5 = *(a1 + OBJC_IVAR____TtCC5Music23LibrarySearchControllerP33_D5FA0BEF708D1E9261BCB607AD690C3E11BarDelegate_text);
      v6 = *(v4 + 8);

      v3(v5, v6);
      sub_100020438(v3);
    }
  }

  return result;
}

uint64_t sub_10043E8F4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if (([*(result + 32) hidesNavigationBarDuringPresentation] & 1) == 0)
    {
      v2 = [objc_opt_self() currentDevice];
      v3 = [v2 userInterfaceIdiom];

      if (v3 != 6 && (*(v1 + 24) & 1) == 0)
      {
        v4 = *(v1 + 16);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v6 = Strong;
          v7 = [Strong navigationItem];

          [v7 setLargeTitleDisplayMode:v4];
        }
      }
    }

    v8 = *(v1 + 88);
    if (v8)
    {

      v8(0, 0);
      sub_100020438(v8);
    }

    v9 = *(v1 + 104);
    if (v9)
    {

      v9(v1);
      sub_100020438(v9);
    }
  }

  return result;
}

id sub_10043EA50()
{
  v1 = *(v0 + 128);
  if (v1)
  {
    v2 = *(v0 + 128);
  }

  else
  {
    sub_10043F470();
    v3 = v0;
    v4 = static UIKeyCommand.findKeyCommand(affecting:)();
    v5 = *(v0 + 128);
    *(v3 + 128) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

void sub_10043EAB8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v4 = (v0 + 64);
    if (*(v0 + 64))
    {
      goto LABEL_11;
    }

    v3 = 0;
    goto LABEL_7;
  }

  v2 = Strong;
  v3 = [Strong navigationItem];

  v4 = (v0 + 64);
  if ((*(v0 + 64) & 1) == 0)
  {
LABEL_7:
    [*(v0 + 32) setActive:0];
    if (v3)
    {
      [v3 setSearchController:0];
      goto LABEL_9;
    }

LABEL_11:
    v15 = 0;
    goto LABEL_14;
  }

  if (!v3)
  {
    goto LABEL_11;
  }

  [v3 setSearchController:*(v0 + 32)];
LABEL_9:
  [v3 setPreferredSearchBarPlacement:2];
  v5 = swift_unknownObjectWeakLoadStrong();
  v15 = v3;
  if (v5)
  {
    v6 = [v5 traitCollection];

    v7 = [v6 userInterfaceIdiom];
    v8 = v7 == 0;
  }

  else
  {
    v8 = 0;
  }

  [v15 setHidesSearchBarWhenScrolling:v8];

LABEL_14:
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    v11 = sub_10043EA50();
    [v10 removeKeyCommand:v11];
  }

  if (*v4 == 1)
  {
    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = v12;
      v14 = sub_10043EA50();
      [v13 addKeyCommand:v14];
    }
  }
}

char *sub_10043ECA4(char *result, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *&result[*a4];
  if (v4)
  {
    v5 = result;
    sub_100030444(v4);
    v4(v5);

    return sub_100020438(v4);
  }

  return result;
}

id sub_10043EE14(void *a1)
{
  v3 = (v1 + OBJC_IVAR____TtCC5Music23LibrarySearchControllerP33_D5FA0BEF708D1E9261BCB607AD690C3E11BarDelegate_text);
  *v3 = 0;
  v3[1] = 0;

  result = [a1 setText:0];
  v5 = *(v1 + OBJC_IVAR____TtCC5Music23LibrarySearchControllerP33_D5FA0BEF708D1E9261BCB607AD690C3E11BarDelegate_didCancel);
  if (v5)
  {

    v5(v1);

    return sub_100020438(v5);
  }

  return result;
}

id sub_10043EFBC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LibrarySearchController.BarDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10043F084()
{
  swift_unknownObjectWeakDestroy();

  sub_100020438(*(v0 + 72));
  sub_100020438(*(v0 + 88));
  sub_100020438(*(v0 + 104));

  return v0;
}

uint64_t sub_10043F0DC()
{
  sub_10043F084();

  return swift_deallocClassInstance();
}

uint64_t sub_10043F158(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = 0;
  *(v2 + 24) = 1;
  *(v2 + 32) = [objc_allocWithZone(UISearchController) initWithSearchResultsController:0];
  swift_unknownObjectWeakInit();
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 64) = 1;
  v5 = type metadata accessor for LibrarySearchController.BarDelegate();
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 104) = 0u;
  *(v2 + 120) = [objc_allocWithZone(v5) init];
  *(v2 + 128) = 0;
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;

  swift_unknownObjectWeakAssign();
  v6 = *(v2 + 120);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = &v6[OBJC_IVAR____TtCC5Music23LibrarySearchControllerP33_D5FA0BEF708D1E9261BCB607AD690C3E11BarDelegate_didBeginEditing];
  v9 = *&v6[OBJC_IVAR____TtCC5Music23LibrarySearchControllerP33_D5FA0BEF708D1E9261BCB607AD690C3E11BarDelegate_didBeginEditing];
  *v8 = sub_10043F458;
  v8[1] = v7;
  v10 = v6;

  sub_100020438(v9);

  v11 = *(v2 + 120);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = &v11[OBJC_IVAR____TtCC5Music23LibrarySearchControllerP33_D5FA0BEF708D1E9261BCB607AD690C3E11BarDelegate_textDidChange];
  v14 = *&v11[OBJC_IVAR____TtCC5Music23LibrarySearchControllerP33_D5FA0BEF708D1E9261BCB607AD690C3E11BarDelegate_textDidChange];
  *v13 = sub_10043F460;
  v13[1] = v12;
  v15 = v11;

  sub_100020438(v14);

  v16 = *(v2 + 120);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = v16;

  v19 = &v18[OBJC_IVAR____TtCC5Music23LibrarySearchControllerP33_D5FA0BEF708D1E9261BCB607AD690C3E11BarDelegate_didCancel];
  v20 = *&v18[OBJC_IVAR____TtCC5Music23LibrarySearchControllerP33_D5FA0BEF708D1E9261BCB607AD690C3E11BarDelegate_didCancel];
  *v19 = sub_10043F468;
  v19[1] = v17;

  sub_100020438(v20);

  [*(v2 + 32) setObscuresBackgroundDuringPresentation:0];
  v21 = [*(v2 + 32) searchBar];
  [v21 setDelegate:*(v2 + 120)];

  v22 = [*(v2 + 32) searchBar];
  [v22 setReturnKeyType:9];

  if (a2)
  {
    v23 = [*(v2 + 32) searchBar];
    v24 = String._bridgeToObjectiveC()();

    [v23 setPlaceholder:v24];
  }

  sub_10043EAB8();
  return v2;
}

unint64_t sub_10043F470()
{
  result = qword_1011A46F0;
  if (!qword_1011A46F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1011A46F0);
  }

  return result;
}

void sub_10043F4BC(void *a1)
{
  sub_10010FC20(&qword_1011901E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBC6B0;
  v4 = *&v1[OBJC_IVAR____TtC5Music32LyricsSharingAnimationController_sourceViewController];
  *(inited + 32) = v4;
  v5 = v4;
  v6 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
  if (v6)
  {
    v7 = v6;
    swift_getObjectType();
    v8 = swift_conformsToProtocol2();
    if (v8)
    {
      v9 = v8;
      inited = sub_10049A584(1, 2, 1, inited);
      *(inited + 16) = 2;
      *(inited + 48) = v7;
      *(inited + 56) = v9;
    }

    else
    {
    }
  }

  v10 = sub_10028D0DC(inited, 0);

  v39.receiver = v1;
  v39.super_class = type metadata accessor for LyricsSharingAnimationController();
  v11 = objc_msgSendSuper2(&v39, "interruptibleAnimatorForTransition:", a1);
  swift_unknownObjectRelease();
  if (v10 >> 62)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
    if (!v12)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
      goto LABEL_14;
    }
  }

  if (v12 < 1)
  {
    __break(1u);
  }

  v13 = 0;
  do
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v14 = sub_1007E9A10(v13, v10);
    }

    else
    {
      v14 = *(v10 + 8 * v13 + 32);
    }

    ++v13;
    v15 = [a1 containerView];
    [*(v14 + 32) bounds];
    [v15 convertRect:*(v14 + 32) fromCoordinateSpace:?];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    [*(v14 + 32) setTranslatesAutoresizingMaskIntoConstraints:1];
    [*(v14 + 32) setFrame:{v17, v19, v21, v23}];
    v24 = [a1 containerView];
    [v24 addSubview:*(v14 + 32)];
  }

  while (v12 != v13);
LABEL_14:
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v37 = sub_10043FF44;
  v38 = v25;
  aBlock = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = sub_10002BC98;
  v36 = &unk_1010AC368;
  v26 = _Block_copy(&aBlock);

  [v1 setNoninteractiveAnimations:v26];
  _Block_release(v26);
  v27 = swift_allocObject();
  *(v27 + 16) = v10;
  v37 = sub_10043FF4C;
  v38 = v27;
  aBlock = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = sub_1005C3688;
  v36 = &unk_1010AC3B8;
  v28 = _Block_copy(&aBlock);

  [v1 setNoninteractiveCompletion:v28];
  _Block_release(v28);
  v29 = *&v1[OBJC_IVAR____TtC5Music32LyricsSharingAnimationController_stampAnimator];
  v30 = swift_allocObject();
  *(v30 + 16) = v10;
  *(v30 + 24) = a1;
  v37 = sub_10043FF54;
  v38 = v30;
  aBlock = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = sub_10002BC98;
  v36 = &unk_1010AC408;
  v31 = _Block_copy(&aBlock);
  v32 = v29;
  swift_unknownObjectRetain();

  [v32 addAnimations:v31];
  _Block_release(v31);

  v1[OBJC_IVAR____TtC5Music32LyricsSharingAnimationController_didPrepareAnimations] = 1;
}

void sub_10043F98C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC5Music32LyricsSharingAnimationController_stampAnimator);

    [v2 startAnimationAfterDelay:0.1];
  }
}

void sub_10043FA0C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 >= 1)
  {
    v4 = 0;
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v5 = sub_1007E9A10(v4, a2);
        v6 = v5[5];
        if (!v6)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v5 = *(a2 + 8 * v4 + 32);

        v6 = v5[5];
        if (!v6)
        {
          goto LABEL_5;
        }
      }

      v7 = *(v6 + 56);

      if (v7)
      {
        sub_100030444(v7);
        v7(v5);
        sub_100020438(v7);
      }

      (*(*v5 + 264))(v6, 1);
      v8 = *(v6 + 104);
      if (v8)
      {

        v8(1, v5);

        sub_100020438(v8);
        goto LABEL_6;
      }

LABEL_5:

LABEL_6:
      if (v3 == ++v4)
      {
        return;
      }
    }
  }

  __break(1u);
}

void sub_10043FBA4(unint64_t a1, void *a2)
{
  if (a1 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return;
    }
  }

  if (v4 >= 1)
  {
    v5 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = sub_1007E9A10(v5, a1);
        v7 = *(v6 + 40);
        if (!v7)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);

        v7 = *(v6 + 40);
        if (!v7)
        {
          goto LABEL_5;
        }
      }

      v8 = v7[5];
      if (v8)
      {
        sub_100030444(v7[5]);

        v9 = v8(v6);
        v11 = v10;
        v13 = v12;
        v15 = v14;
        sub_100020438(v8);
        v16 = v7[11];
        if (v16)
        {

          v16(v6);
          sub_100020438(v16);
        }

        (*(*v6 + 256))(v7);
        v17 = v7[4];
        v18 = *(v6 + 32);
        v19 = v17;
        v20 = [a2 containerView];
        [v19 convertRect:v20 toCoordinateSpace:{v9, v11, v13, v15}];
        v22 = v21;
        v24 = v23;
        v26 = v25;
        v28 = v27;

        UIView.untransformedFrame.setter(v22, v24, v26, v28);

        goto LABEL_6;
      }

LABEL_5:

LABEL_6:
      if (v4 == ++v5)
      {
        return;
      }
    }
  }

  __break(1u);
}

id sub_10043FEA0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LyricsSharingAnimationController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10043FF64()
{
  result = qword_101190200;
  if (!qword_101190200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101190200);
  }

  return result;
}

unint64_t sub_10043FFBC()
{
  result = qword_101190208;
  if (!qword_101190208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101190208);
  }

  return result;
}

unint64_t sub_100440014()
{
  result = qword_101190210;
  if (!qword_101190210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101190210);
  }

  return result;
}

unint64_t sub_10044006C()
{
  result = qword_101190218;
  if (!qword_101190218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101190218);
  }

  return result;
}

uint64_t sub_10044012C()
{
  v0 = type metadata accessor for LocalizedStringResource();
  sub_100006080(v0, qword_101218CC8);
  sub_1000060E4(v0, qword_101218CC8);
  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t sub_1004401B0()
{
  *(v0 + 112) = type metadata accessor for MainActor();
  *(v0 + 120) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100440248, v2, v1);
}

uint64_t sub_100440248()
{

  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  return _swift_task_switch(sub_1004402E0, 0, 0);
}

uint64_t sub_1004402E0()
{
  *(v0 + 128) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10044036C, v2, v1);
}

uint64_t sub_10044036C()
{

  *(v0 + 136) = qword_101218AD8;

  return _swift_task_switch(sub_1004403E0, 0, 0);
}

uint64_t sub_1004403E0()
{
  *(v0 + 40) = &type metadata for Player.PlaybackCommand;
  *(v0 + 48) = &protocol witness table for Player.PlaybackCommand;
  *(v0 + 16) = 3;
  *(v0 + 80) = &type metadata for Player.CommandIssuerIdentity;
  *(v0 + 88) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v0 + 56) = 0xD000000000000017;
  *(v0 + 64) = 0x8000000100E4AB50;
  v1 = swift_task_alloc();
  *(v0 + 144) = v1;
  *v1 = v0;
  v1[1] = sub_1004404E4;

  return PlaybackController.perform(_:route:intent:issuer:)(v0 + 16, 0, 0, v0 + 56);
}

uint64_t sub_1004404E4(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_1004407DC;
  }

  else
  {
    *(v4 + 152) = a1;
    sub_100440B1C(v4 + 56);
    sub_10000959C(v4 + 16);
    v5 = sub_100440620;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100440620()
{
  v15 = v0;
  v1 = v0[19];
  if (qword_10117F710 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000060E4(v2, qword_1011901E8);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    v0[12] = v1;
    v8 = v3;
    sub_10010FC20(&qword_101184438);
    v9 = String.init<A>(describing:)();
    v11 = sub_1000105AC(v9, v10, &v14);

    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "Toggled playback with status: %{public}s", v6, 0xCu);
    sub_10000959C(v7);
  }

  static IntentResult.result<>()();
  v12 = v0[1];

  return v12();
}

uint64_t sub_1004407DC()
{
  v12 = v0;
  sub_100440B1C(v0 + 56);
  sub_10000959C(v0 + 16);
  if (qword_10117F710 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_1011901E8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    *(v0 + 96) = 0;
    sub_10010FC20(&qword_101184438);
    v6 = String.init<A>(describing:)();
    v8 = sub_1000105AC(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Toggled playback with status: %{public}s", v4, 0xCu);
    sub_10000959C(v5);
  }

  static IntentResult.result<>()();
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100440990@<X0>(uint64_t a1@<X8>)
{
  if (qword_10117F708 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_1000060E4(v2, qword_101218CC8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100440A38(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002F3F4;

  return sub_100440190(a1);
}

uint64_t sub_100440AD0(uint64_t a1)
{
  v2 = sub_10043FFBC();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100440B1C(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_101183910);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100440B84()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_1011901E8);
  sub_1000060E4(v0, qword_1011901E8);
  return static Logger.music(_:)();
}

id sub_100440BE8(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v5 = v2(sub_100446558, v4);

  return v5;
}

void sub_100440C88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t *GroupActivitiesManager.suggestionProvider.unsafeMutableAddressor()
{
  if (qword_10117F718 != -1)
  {
    swift_once();
  }

  return &static GroupActivitiesManager.suggestionProvider;
}

id static GroupActivitiesManager.suggestionProvider.getter()
{
  if (qword_10117F718 != -1)
  {
    swift_once();
  }

  v1 = static GroupActivitiesManager.suggestionProvider;

  return v1;
}

uint64_t sub_100440DA4()
{
  v1[54] = v0;
  v2 = type metadata accessor for Logger();
  v1[55] = v2;
  v1[56] = *(v2 - 8);
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  sub_10010FC20(&unk_101189DA0);
  v1[59] = swift_task_alloc();
  v3 = type metadata accessor for Playlist();
  v1[60] = v3;
  v1[61] = *(v3 - 8);
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v4 = type metadata accessor for Album();
  v1[64] = v4;
  v1[65] = *(v4 - 8);
  v1[66] = swift_task_alloc();
  v1[67] = swift_task_alloc();

  return _swift_task_switch(sub_100440F78, 0, 0);
}

uint64_t sub_100440F78()
{
  v55 = v0;
  sub_100442468(*(v0 + 432), v0 + 16);
  if (*(v0 + 64) != 1)
  {
    v5 = *(v0 + 472);
    v6 = *(v0 + 16);
    GenericMusicItem.init(_:)();
    v7 = type metadata accessor for GenericMusicItem();
    v8 = *(v7 - 8);
    v9 = (*(v8 + 48))(v5, 1, v7);
    v10 = *(v0 + 472);
    if (v9 == 1)
    {
      sub_1000095E8(*(v0 + 472), &unk_101189DA0);
      *(v0 + 112) = 0u;
      *(v0 + 128) = 0u;
      *(v0 + 144) = 0;
    }

    else
    {
      GenericMusicItem.innerMusicItem.getter((v0 + 112));
      (*(v8 + 8))(v10, v7);
      if (*(v0 + 136))
      {
        sub_100059A8C((v0 + 112), v0 + 72);
        sub_100008FE4(v0 + 72, v0 + 192);
        sub_10010FC20(&unk_10118AB50);
        sub_10010FC20(&unk_101184000);
        if (swift_dynamicCast())
        {
          sub_100059A8C((v0 + 232), v0 + 152);
          v12 = *(v0 + 176);
          v13 = *(v0 + 184);
          sub_10000954C((v0 + 152), v12);
          v11 = (*(v13 + 8))(v12, v13);

          sub_10000959C(v0 + 72);
          sub_10000959C(v0 + 152);
          goto LABEL_23;
        }

        v33 = *(v0 + 464);
        v34 = *(v0 + 440);
        v35 = *(v0 + 448);
        *(v0 + 232) = 0u;
        *(v0 + 248) = 0u;
        *(v0 + 264) = 0;
        sub_1000095E8(v0 + 232, &unk_101181500);
        v36 = Logger.groupActivities.unsafeMutableAddressor();
        (*(v35 + 16))(v33, v36, v34);
        sub_100008FE4(v0 + 72, v0 + 272);
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.error.getter();
        v39 = os_log_type_enabled(v37, v38);
        v40 = *(v0 + 464);
        v42 = *(v0 + 440);
        v41 = *(v0 + 448);
        if (v39)
        {
          v53 = *(v0 + 464);
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v54 = v44;
          *v43 = 136446210;
          sub_100008FE4(v0 + 272, v0 + 312);
          v45 = String.init<A>(describing:)();
          v47 = v46;
          sub_10000959C(v0 + 272);
          v48 = sub_1000105AC(v45, v47, &v54);

          *(v43 + 4) = v48;
          _os_log_impl(&_mh_execute_header, v37, v38, "MusicKit item=%{public}s does not conform to LinkPresentationMetadataProviding", v43, 0xCu);
          sub_10000959C(v44);

          (*(v41 + 8))(v53, v42);
        }

        else
        {

          sub_10000959C(v0 + 272);
          (*(v41 + 8))(v40, v42);
        }

        v32 = v0 + 72;
        goto LABEL_21;
      }
    }

    v15 = *(v0 + 448);
    v14 = *(v0 + 456);
    v16 = *(v0 + 440);
    sub_1000095E8(v0 + 112, &qword_10118B990);
    v17 = Logger.groupActivities.unsafeMutableAddressor();
    (*(v15 + 16))(v14, v17, v16);
    v18 = v6;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    v21 = os_log_type_enabled(v19, v20);
    v23 = *(v0 + 448);
    v22 = *(v0 + 456);
    v24 = *(v0 + 440);
    if (v21)
    {
      v52 = *(v0 + 440);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v54 = v26;
      *v25 = 136446210;
      v27 = [v18 humanDescription];
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v22;
      v30 = v29;

      v31 = sub_1000105AC(v28, v30, &v54);

      *(v25 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v19, v20, "Could not convert MPModelObject=%{public}s to MusicKit item", v25, 0xCu);
      sub_10000959C(v26);

      (*(v23 + 8))(v51, v52);
    }

    else
    {

      (*(v23 + 8))(v22, v24);
    }

    goto LABEL_22;
  }

  sub_100059A8C((v0 + 16), v0 + 352);
  sub_100008FE4(v0 + 352, v0 + 392);
  sub_10010FC20(&unk_10118AB50);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 528);
    v2 = *(v0 + 520);
    v3 = *(v0 + 512);
    (*(v2 + 32))(v1, *(v0 + 536), v3);
    v4 = sub_1005645CC();
LABEL_8:
    v11 = v4;
    (*(v2 + 8))(v1, v3);
    sub_10000959C(v0 + 352);
    sub_10000959C(v0 + 392);
    goto LABEL_23;
  }

  if (swift_dynamicCast())
  {
    v1 = *(v0 + 496);
    v3 = *(v0 + 480);
    v2 = *(v0 + 488);
    (*(v2 + 32))(v1, *(v0 + 504), v3);
    v4 = sub_100562380();
    goto LABEL_8;
  }

  sub_10000959C(v0 + 352);
  v32 = v0 + 392;
LABEL_21:
  sub_10000959C(v32);
LABEL_22:
  v11 = 0;
LABEL_23:

  v49 = *(v0 + 8);

  return v49(v11);
}

uint64_t sub_100441600(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  sub_10010FC20(&unk_101189DA0);
  v2[21] = swift_task_alloc();
  v3 = type metadata accessor for Playlist();
  v2[22] = v3;
  v2[23] = *(v3 - 8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v4 = type metadata accessor for Album();
  v2[26] = v4;
  v2[27] = *(v4 - 8);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();

  return _swift_task_switch(sub_10044176C, 0, 0);
}

uint64_t sub_10044176C()
{
  sub_100442468(*(v0 + 160), v0 + 16);
  if (*(v0 + 64) == 1)
  {

    sub_100059A8C((v0 + 16), v0 + 72);
    sub_100008FE4(v0 + 72, v0 + 112);
    sub_10010FC20(&unk_10118AB50);
    if (swift_dynamicCast())
    {
      (*(*(v0 + 216) + 32))(*(v0 + 224), *(v0 + 232), *(v0 + 208));
      v1 = swift_task_alloc();
      *(v0 + 240) = v1;
      *v1 = v0;
      v1[1] = sub_100441B58;
      v2 = *(v0 + 152);

      return Album.shareURL.getter(v2);
    }

    if (swift_dynamicCast())
    {
      (*(*(v0 + 184) + 32))(*(v0 + 192), *(v0 + 200), *(v0 + 176));
      v12 = swift_task_alloc();
      *(v0 + 248) = v12;
      *v12 = v0;
      v12[1] = sub_100441D0C;
      v13 = *(v0 + 152);

      return Playlist.shareURL.getter(v13);
    }

    v16 = *(v0 + 152);
    sub_10000959C(v0 + 72);
    v17 = type metadata accessor for URL();
    (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
    sub_10000959C(v0 + 112);
    goto LABEL_16;
  }

  v4 = *(v0 + 168);
  v5 = *(v0 + 16);
  *(v0 + 256) = v5;
  v6 = v5;
  GenericMusicItem.init(_:)();
  v7 = type metadata accessor for GenericMusicItem();
  *(v0 + 264) = v7;
  v8 = *(v7 - 8);
  *(v0 + 272) = v8;
  if ((*(v8 + 48))(v4, 1, v7) == 1)
  {
    v9 = *(v0 + 168);
    v10 = *(v0 + 152);

    sub_1000095E8(v9, &unk_101189DA0);
    v11 = type metadata accessor for URL();
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
LABEL_16:

    v18 = *(v0 + 8);

    return v18();
  }

  v14 = swift_task_alloc();
  *(v0 + 280) = v14;
  *v14 = v0;
  v14[1] = sub_100441EC0;
  v15 = *(v0 + 152);

  return GenericMusicItem.shareURL.getter(v15);
}

uint64_t sub_100441B58()
{

  return _swift_task_switch(sub_100441C54, 0, 0);
}

uint64_t sub_100441C54()
{
  (*(v0[27] + 8))(v0[28], v0[26]);
  sub_10000959C((v0 + 9));
  sub_10000959C((v0 + 14));

  v1 = v0[1];

  return v1();
}

uint64_t sub_100441D0C()
{

  return _swift_task_switch(sub_100441E08, 0, 0);
}

uint64_t sub_100441E08()
{
  (*(v0[23] + 8))(v0[24], v0[22]);
  sub_10000959C((v0 + 9));
  sub_10000959C((v0 + 14));

  v1 = v0[1];

  return v1();
}

uint64_t sub_100441EC0()
{

  return _swift_task_switch(sub_100441FBC, 0, 0);
}

uint64_t sub_100441FBC()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 272);
  v3 = *(v0 + 168);

  (*(v2 + 8))(v3, v1);

  v4 = *(v0 + 8);

  return v4();
}

unint64_t GroupActivitiesManager.SuggestionProvider.Item.debugDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Playlist();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v27 - v7;
  v9 = type metadata accessor for Album();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v27 - v14;
  sub_100442468(v1, v33);
  if (v35 == 1)
  {

    sub_100059A8C(v33, &v31);
    sub_100008FE4(&v31, v30);
    sub_10010FC20(&unk_10118AB50);
    if (swift_dynamicCast())
    {
      (*(v10 + 32))(v13, v15, v9);
      v28 = 0x202D206D75626C41;
      v29 = 0xE800000000000000;
      v16._countAndFlagsBits = Album.title.getter();
      String.append(_:)(v16);

      v17 = v28;
      (*(v10 + 8))(v13, v9);
    }

    else if (swift_dynamicCast())
    {
      (*(v3 + 32))(v6, v8, v2);
      v28 = 0x7473696C79616C50;
      v29 = 0xEB00000000202D20;
      v24._countAndFlagsBits = Playlist.name.getter();
      String.append(_:)(v24);

      v17 = v28;
      (*(v3 + 8))(v6, v2);
    }

    else
    {
      v28 = 0;
      v29 = 0xE000000000000000;
      _StringGuts.grow(_:)(19);
      v25._object = 0x8000000100E4ABD0;
      v25._countAndFlagsBits = 0xD000000000000011;
      String.append(_:)(v25);
      _print_unlocked<A, B>(_:_:)();
      v17 = v28;
    }

    sub_10000959C(&v31);
    sub_10000959C(v30);
  }

  else
  {
    v18 = *&v33[0];
    v31 = 0;
    v32 = 0xE000000000000000;
    _StringGuts.grow(_:)(21);

    v31 = 0xD000000000000013;
    v32 = 0x8000000100E4ABB0;
    v19 = [v18 humanDescription];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23._countAndFlagsBits = v20;
    v23._object = v22;
    String.append(_:)(v23);

    return v31;
  }

  return v17;
}

uint64_t GroupActivitiesManager.SuggestionProvider.registerItem(_:intent:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v6 - 8);
  v8 = &v33 - v7;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = Logger.groupActivities.unsafeMutableAddressor();
  (*(v10 + 16))(v12, v13, v9);
  sub_100442468(a1, v38);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v33 = v9;
    v17 = v16;
    v18 = swift_slowAlloc();
    v34 = a1;
    v19 = v18;
    *&v36[0] = v18;
    *v17 = 136446210;
    v20 = GroupActivitiesManager.SuggestionProvider.Item.debugDescription.getter();
    v35 = v8;
    v21 = a2;
    v22 = v3;
    v24 = v23;
    sub_100442874(v38);
    v25 = sub_1000105AC(v20, v24, v36);
    v3 = v22;
    a2 = v21;
    v8 = v35;

    *(v17 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v14, v15, "[Suggestion] will suggest item=%{public}s", v17, 0xCu);
    sub_10000959C(v19);
    a1 = v34;

    (*(v10 + 8))(v12, v33);
  }

  else
  {

    sub_100442874(v38);
    (*(v10 + 8))(v12, v9);
  }

  sub_100442468(a1, v38);
  v26 = type metadata accessor for TaskPriority();
  (*(*(v26 - 8) + 56))(v8, 1, 1, v26);
  sub_100442468(a1, v36);
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  v28 = v36[1];
  *(v27 + 32) = v36[0];
  *(v27 + 48) = v28;
  *(v27 + 64) = v36[2];
  *(v27 + 80) = v37;
  *(v27 + 88) = a2;
  *(v27 + 96) = v3;
  v29 = a2;
  v30 = v3;
  v39 = sub_1001F4CB8(0, 0, v8, &unk_100ECCD48, v27);
  v31 = v30 + OBJC_IVAR____TtCE5MusicC9MusicCore22GroupActivitiesManager18SuggestionProvider_pendingRegistration;
  swift_beginAccess();
  if (*(v31 + 56))
  {

    Task.cancel()();
  }

  swift_beginAccess();
  sub_10006B010(v38, v31, &qword_101190228);
  return swift_endAccess();
}

uint64_t sub_1004428A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[17] = a5;
  v6[18] = a6;
  v6[16] = a4;
  v7 = type metadata accessor for Logger();
  v6[19] = v7;
  v6[20] = *(v7 - 8);
  v6[21] = swift_task_alloc();
  sub_10010FC20(&unk_101181520);
  v6[22] = swift_task_alloc();
  v8 = swift_task_alloc();
  v6[23] = v8;
  *v8 = v6;
  v8[1] = sub_1004429D0;

  return sub_100440DA4();
}

uint64_t sub_1004429D0(uint64_t a1)
{
  *(*v1 + 192) = a1;

  return _swift_task_switch(sub_100442AD0, 0, 0);
}

uint64_t sub_100442AD0()
{
  v33 = v0;
  v1 = *(v0 + 192);
  if (v1)
  {
    if (static Task<>.isCancelled.getter())
    {
    }

    else
    {
      v19 = *(v0 + 176);
      v21 = *(v0 + 136);
      v20 = *(v0 + 144);
      v22 = *(v0 + 128);
      v23 = type metadata accessor for TaskPriority();
      (*(*(v23 - 8) + 56))(v19, 1, 1, v23);
      sub_100442468(v22, v0 + 72);
      type metadata accessor for MainActor();
      v24 = v21;
      v25 = v20;
      v26 = v1;
      v27 = static MainActor.shared.getter();
      v28 = swift_allocObject();
      *(v28 + 16) = v27;
      *(v28 + 24) = &protocol witness table for MainActor;
      *(v28 + 32) = v21;
      *(v28 + 40) = v25;
      v29 = *(v0 + 88);
      *(v28 + 48) = *(v0 + 72);
      *(v28 + 64) = v29;
      *(v28 + 80) = *(v0 + 104);
      *(v28 + 96) = *(v0 + 120);
      *(v28 + 104) = v26;
      sub_1001F4CB8(0, 0, v19, &unk_100ECCF30, v28);
    }
  }

  else
  {
    v3 = *(v0 + 160);
    v2 = *(v0 + 168);
    v4 = *(v0 + 152);
    v5 = *(v0 + 128);
    v6 = Logger.groupActivities.unsafeMutableAddressor();
    (*(v3 + 16))(v2, v6, v4);
    sub_100442468(v5, v0 + 16);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    v9 = os_log_type_enabled(v7, v8);
    v11 = *(v0 + 160);
    v10 = *(v0 + 168);
    v12 = *(v0 + 152);
    if (v9)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v32 = v14;
      *v13 = 136446210;
      v15 = GroupActivitiesManager.SuggestionProvider.Item.debugDescription.getter();
      v17 = v16;
      sub_100442874(v0 + 16);
      v18 = sub_1000105AC(v15, v17, &v32);

      *(v13 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v7, v8, "[Suggestion] Couldn't build metadata for item=%{public}s", v13, 0xCu);
      sub_10000959C(v14);
    }

    else
    {

      sub_100442874(v0 + 16);
    }

    (*(v11 + 8))(v10, v12);
  }

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_100442DB0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[11];
  v7 = v1[12];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_1004428A4(a1, v4, v5, (v1 + 4), v6, v7);
}

uint64_t sub_100442E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[41] = a6;
  v7[42] = a7;
  v7[39] = a4;
  v7[40] = a5;
  v8 = type metadata accessor for Logger();
  v7[43] = v8;
  v7[44] = *(v8 - 8);
  v7[45] = swift_task_alloc();
  sub_10010FC20(&qword_1011902F0);
  v7[46] = swift_task_alloc();
  type metadata accessor for MainActor();
  v7[47] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100442FA4, v10, v9);
}

uint64_t sub_100442FA4()
{

  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 368);
  v2 = *(v0 + 312);
  v3 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = GroupActivitiesManager.itemProvider(with:metadata:)(v2, v1);
  sub_1000095E8(*(v0 + 368), &qword_1011902F0);
  if ((static Task<>.isCancelled.getter() & 1) == 0)
  {
    v5 = *(v0 + 320) + OBJC_IVAR____TtCE5MusicC9MusicCore22GroupActivitiesManager18SuggestionProvider_pendingRegistration;
    swift_beginAccess();
    if (*(v5 + 56))
    {
      v6 = *(v0 + 328);
      sub_100442468(v5, v0 + 152);
      if (sub_100445FD4(v0 + 152, v6))
      {
        v7 = *(v0 + 336);
        sub_100442468(*(v0 + 328), v0 + 16);
        *(v0 + 72) = v4;
        *(v0 + 80) = v7;
        v8 = v4;
        v9 = v7;
        sub_10044339C(v0 + 16);

        sub_100446300(v0 + 16);
        sub_100442874(v0 + 152);
        goto LABEL_9;
      }

      sub_100442874(v0 + 152);
    }
  }

LABEL_9:
  v10 = *(v0 + 320);
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  v11 = v10 + OBJC_IVAR____TtCE5MusicC9MusicCore22GroupActivitiesManager18SuggestionProvider_pendingRegistration;
  swift_beginAccess();
  if (*(v11 + 56))
  {

    Task.cancel()();
  }

  swift_beginAccess();
  sub_10006B010(v0 + 88, v11, &qword_101190228);
  swift_endAccess();

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_10044339C(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  sub_100442468(a1, v21);
  if (v22 == 1)
  {

    sub_1004462C8(a1, v20);
    v7 = OBJC_IVAR____TtCE5MusicC9MusicCore22GroupActivitiesManager18SuggestionProvider_containerItemSuggestion;
    swift_beginAccess();
    sub_10006B010(v20, v1 + v7, &qword_101190238);
    swift_endAccess();
    sub_10000959C(v21);
  }

  else
  {
    sub_100442874(v21);
    sub_1004462C8(a1, v20);
    v8 = OBJC_IVAR____TtCE5MusicC9MusicCore22GroupActivitiesManager18SuggestionProvider_playingItemSuggestion;
    swift_beginAccess();
    sub_10006B010(v20, v1 + v8, &qword_101190238);
    swift_endAccess();
  }

  v9 = Logger.groupActivities.unsafeMutableAddressor();
  (*(v4 + 16))(v6, v9, v3);
  sub_1004462C8(a1, v20);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21[0] = v13;
    *v12 = 136446210;
    v14 = GroupActivitiesManager.SuggestionProvider.Item.debugDescription.getter();
    v16 = v15;
    sub_100446300(v20);
    v17 = sub_1000105AC(v14, v16, v21);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v10, v11, "[Suggestion] Storing suggestion item=%{public}s", v12, 0xCu);
    sub_10000959C(v13);
  }

  else
  {

    sub_100446300(v20);
  }

  return (*(v4 + 8))(v6, v3);
}

Swift::Void __swiftcall GroupActivitiesManager.SuggestionProvider.removePlayingItemSuggestion()()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v6 = Logger.groupActivities.unsafeMutableAddressor();
  (*(v3 + 16))(v5, v6, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "[Suggestion] Removing playing item suggestion", v9, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  v10 = OBJC_IVAR____TtCE5MusicC9MusicCore22GroupActivitiesManager18SuggestionProvider_playingItemSuggestion;
  swift_beginAccess();
  sub_10006B010(v12, v1 + v10, &qword_101190238);
  swift_endAccess();
}

Swift::Void __swiftcall GroupActivitiesManager.SuggestionProvider.removeSuggestedItem(from:)(UIViewController from)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v60[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v60[-v8];
  __chkstk_darwin(v10);
  v12 = &v60[-v11];
  v13 = v1 + OBJC_IVAR____TtCE5MusicC9MusicCore22GroupActivitiesManager18SuggestionProvider_pendingRegistration;
  swift_beginAccess();
  if (*(v13 + 56))
  {
    sub_100442468(v13, &v64);
    if (v67)
    {
      v14 = *(&v66 + 1);
      sub_10000959C(&v64);
      sub_100009F78(0, &qword_101197A30);
      if (static NSObject.== infix(_:_:)())
      {
        v15 = Logger.groupActivities.unsafeMutableAddressor();
        (*(v4 + 16))(v12, v15, v3);
        v16 = v4;
        v17 = from.super.super.isa;
        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          *&v64 = v62;
          *v20 = 136446210;
          v21 = v17;
          v22 = [(objc_class *)v21 description];
          v63 = v3;
          v23 = v22;
          v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v61 = v19;
          v26 = v25;

          v27 = sub_1000105AC(v24, v26, &v64);

          *(v20 + 4) = v27;
          _os_log_impl(&_mh_execute_header, v18, v61, "[Suggestion] Removing pending suggestion for containerVC=%{public}s", v20, 0xCu);
          sub_10000959C(v62);

          (*(v16 + 8))(v12, v63);
        }

        else
        {

          (*(v16 + 8))(v12, v3);
        }

        v66 = 0u;
        v67 = 0u;
        v65 = 0u;
        v64 = 0u;
        if (*(v13 + 56))
        {

          Task.cancel()();
        }

        swift_beginAccess();
        v50 = &qword_101190228;
LABEL_32:
        sub_10006B010(&v64, v13, v50);
        swift_endAccess();
        return;
      }
    }

    else
    {
      sub_100442874(&v64);
    }
  }

  v13 = v1 + OBJC_IVAR____TtCE5MusicC9MusicCore22GroupActivitiesManager18SuggestionProvider_containerItemSuggestion;
  swift_beginAccess();
  if (*(v13 + 56))
  {
    sub_100442468(v13, &v64);
    v72 = v67;
    v69 = v64;
    v70 = v65;
    v71 = v66;
    if (v67 == 1)
    {
      v28 = *(&v71 + 1);
      sub_10000959C(&v69);

      if (v28 == from.super.super.isa)
      {
        if (*(v13 + 56))
        {
          sub_100442468(v13, &v64);
          v29 = GroupActivitiesManager.SuggestionProvider.Item.debugDescription.getter();
          v31 = v30;
          sub_100442874(&v64);
        }

        else
        {
          v29 = 0;
          v31 = 0;
        }

        v51 = Logger.groupActivities.unsafeMutableAddressor();
        (*(v4 + 16))(v9, v51, v3);

        v52 = Logger.logObject.getter();
        v53 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          v55 = v4;
          v56 = swift_slowAlloc();
          *&v69 = v56;
          *v54 = 136446210;
          *&v64 = v29;
          *(&v64 + 1) = v31;
          sub_10010FC20(&qword_1011815E0);
          v57 = String.init<A>(describing:)();
          v59 = sub_1000105AC(v57, v58, &v69);

          *(v54 + 4) = v59;
          _os_log_impl(&_mh_execute_header, v52, v53, "[Suggestion] Removing music suggested item=%{public}s)", v54, 0xCu);
          sub_10000959C(v56);

          (*(v55 + 8))(v9, v3);
        }

        else
        {

          (*(v4 + 8))(v9, v3);
        }

        v68 = 0;
        v66 = 0u;
        v67 = 0u;
        v65 = 0u;
        v64 = 0u;
        swift_beginAccess();
        v50 = &qword_101190238;
        goto LABEL_32;
      }
    }

    else
    {
      sub_100442874(&v69);
    }
  }

  v32 = Logger.groupActivities.unsafeMutableAddressor();
  (*(v4 + 16))(v6, v32, v3);
  v33 = from.super.super.isa;
  v34 = v1;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v35, v36))
  {

    (*(v4 + 8))(v6, v3);
    return;
  }

  v62 = v4;
  v63 = v3;
  v37 = swift_slowAlloc();
  v73 = swift_slowAlloc();
  *v37 = 136446466;
  v38 = v33;
  v39 = [(objc_class *)v38 description];
  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v41;

  v43 = sub_1000105AC(v40, v42, &v73);

  *(v37 + 4) = v43;
  *(v37 + 12) = 2082;
  if (!*(v13 + 56))
  {
    goto LABEL_20;
  }

  sub_100442468(v13, &v64);
  v72 = v67;
  v69 = v64;
  v70 = v65;
  v71 = v66;
  if (v67 != 1)
  {
    sub_100442874(&v69);
LABEL_20:
    v44 = 0;
    goto LABEL_21;
  }

  v44 = *(&v71 + 1);
  sub_10000959C(&v69);
LABEL_21:
  v45 = v63;
  v46 = v62;
  *&v64 = v44;
  sub_10010FC20(&qword_101190248);
  v47 = String.init<A>(describing:)();
  v49 = sub_1000105AC(v47, v48, &v73);

  *(v37 + 14) = v49;
  _os_log_impl(&_mh_execute_header, v35, v36, "[Suggestion] Failed to remove containerVC=%{public}s; active container=%{public}s", v37, 0x16u);
  swift_arrayDestroy();

  (*(v46 + 8))(v6, v45);
}

id GroupActivitiesManager.SuggestionProvider.activityItemsConfiguration.getter()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtCE5MusicC9MusicCore22GroupActivitiesManager18SuggestionProvider_playingItemSuggestion;
  swift_beginAccess();
  sub_100445F64(v0 + v5, &v42);
  if (*(&v45 + 1))
  {
    v49 = v44;
    v50 = v45;
    v51 = v46;
    v47 = v42;
    v48 = v43;
  }

  else
  {
    v6 = OBJC_IVAR____TtCE5MusicC9MusicCore22GroupActivitiesManager18SuggestionProvider_containerItemSuggestion;
    swift_beginAccess();
    sub_100445F64(v0 + v6, &v47);
    if (*(&v45 + 1))
    {
      sub_1000095E8(&v42, &qword_101190238);
    }
  }

  if (*(&v50 + 1))
  {
    v52[2] = v49;
    v53 = v50;
    v54 = v51;
    v52[0] = v47;
    v52[1] = v48;
    v7 = Logger.groupActivities.unsafeMutableAddressor();
    (*(v2 + 16))(v4, v7, v1);
    sub_1004462C8(v52, &v47);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v41[0] = v11;
      *v10 = 136315138;
      sub_1004462C8(&v47, &v42);
      v12 = String.init<A>(describing:)();
      v14 = v13;
      sub_100446300(&v47);
      v15 = sub_1000105AC(v12, v14, v41);

      *(v10 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v8, v9, "[Suggestion] System is picking up suggestion=%s", v10, 0xCu);
      sub_10000959C(v11);
    }

    else
    {

      sub_100446300(&v47);
    }

    (*(v2 + 8))(v4, v1);
    v23 = sub_100446128();
    if (v23)
    {
      v24 = v23;
      v25 = v23;
    }

    else
    {
      v26 = *(&v53 + 1);
      sub_100009F78(0, &qword_101190250);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      sub_1004462C8(v52, &v47);
      v28 = swift_allocObject();
      v29 = v50;
      *(v28 + 48) = v49;
      *(v28 + 64) = v29;
      *(v28 + 80) = v51;
      v30 = v48;
      *(v28 + 16) = v47;
      *(v28 + 32) = v30;
      *&v44 = sub_100446330;
      *(&v44 + 1) = v28;
      *&v42 = _NSConcreteStackBlock;
      *(&v42 + 1) = 1107296256;
      *&v43 = sub_100440BE8;
      *(&v43 + 1) = &unk_1010AC4A0;
      v31 = _Block_copy(&v42);
      v25 = v26;

      [v25 registerObjectOfClass:ObjCClassFromMetadata visibility:0 loadHandler:v31];
      _Block_release(v31);
      v24 = 0;
    }

    sub_10010FC20(&qword_101183990);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_100EBC6C0;
    *(v32 + 32) = v25;
    v33 = objc_allocWithZone(UIActivityItemsConfiguration);
    sub_100009F78(0, &unk_101181540);
    v34 = v24;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v22 = [v33 initWithItemProviders:isa];

    sub_1004462C8(v52, &v47);
    v36 = swift_allocObject();
    v37 = v50;
    *(v36 + 48) = v49;
    *(v36 + 64) = v37;
    *(v36 + 80) = v51;
    v38 = v48;
    *(v36 + 16) = v47;
    *(v36 + 32) = v38;
    *&v44 = sub_100446398;
    *(&v44 + 1) = v36;
    *&v42 = _NSConcreteStackBlock;
    *(&v42 + 1) = 1107296256;
    *&v43 = sub_100444C08;
    *(&v43 + 1) = &unk_1010AC4F0;
    v39 = _Block_copy(&v42);

    [v22 setMetadataProvider:v39];
    _Block_release(v39);

    sub_100446300(v52);
  }

  else
  {
    sub_1000095E8(&v47, &qword_101190238);
    v16 = sub_100446128();
    if (v16)
    {
      v17 = v16;
      sub_10010FC20(&qword_101183990);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_100EBC6C0;
      *(v18 + 32) = v17;
      v19 = objc_allocWithZone(UIActivityItemsConfiguration);
      sub_100009F78(0, &unk_101181540);
      v20 = v17;
      v21 = Array._bridgeToObjectiveC()().super.isa;

      v22 = [v19 initWithItemProviders:v21];
    }

    else
    {
      return 0;
    }
  }

  return v22;
}

uint64_t sub_100444694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_1004462C8(a3, v15);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;
  v11 = v15[3];
  *(v10 + 80) = v15[2];
  *(v10 + 96) = v11;
  *(v10 + 112) = v16;
  v12 = v15[1];
  *(v10 + 48) = v15[0];
  *(v10 + 64) = v12;

  sub_1001F4CB8(0, 0, v8, &unk_100ECCEE0, v10);

  return 0;
}

uint64_t sub_1004447DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_10010FC20(&qword_101183A20);
  v6 = swift_task_alloc();
  v5[4] = v6;
  v7 = swift_task_alloc();
  v5[5] = v7;
  *v7 = v5;
  v7[1] = sub_1004448B4;

  return sub_100441600(v6);
}

uint64_t sub_1004448B4()
{

  return _swift_task_switch(sub_1004449B0, 0, 0);
}

uint64_t sub_1004449B0()
{
  v1 = *(v0 + 32);
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_1000095E8(v1, &qword_101183A20);
    v5 = 0;
  }

  else
  {
    URL._bridgeToObjectiveC()(v4);
    v5 = v6;
    (*(v3 + 8))(v1, v2);
  }

  (*(v0 + 16))(v5, 0);
  swift_unknownObjectRelease();

  v7 = *(v0 + 8);

  return v7();
}

double sub_100444AF0@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {

    v10 = *(a1 + 64);
    if (v10)
    {
      goto LABEL_7;
    }

LABEL_11:
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v9 & 1) == 0)
  {
    goto LABEL_11;
  }

  v10 = *(a1 + 64);
  if (!v10)
  {
    goto LABEL_11;
  }

LABEL_7:
  v13 = v10;
  *(a2 + 24) = sub_100009F78(0, &unk_1011902E0);
  *a2 = v13;

  v11 = v13;
  return result;
}

id sub_100444C08(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(v13);

  v5 = v14;
  if (v14)
  {
    v6 = sub_10000954C(v13, v14);
    v7 = *(v5 - 8);
    v8 = __chkstk_darwin(v6);
    v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v7 + 8))(v10, v5);
    sub_10000959C(v13);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t sub_100444D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  type metadata accessor for MainActor();
  v12 = a5;
  sub_100030444(a1);
  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = &protocol witness table for MainActor;
  v14[4] = v12;
  v14[5] = a1;
  v14[6] = a2;
  sub_1001F4CB8(0, 0, v10, &unk_100ECCF10, v14);
}

uint64_t sub_100444EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_10010FC20(&qword_101183A20);
  v6[5] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v6[9] = v8;
  v6[10] = *(v8 - 8);
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[14] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10044504C, v10, v9);
}

uint64_t sub_10044504C()
{
  v1 = v0[2];

  if ((*((swift_isaMask & *v1) + 0x110))(v2))
  {
    v3 = v0[13];
    v4 = v0[9];
    v5 = v0[10];
    v6 = Logger.groupActivities.unsafeMutableAddressor();
    (*(v5 + 16))(v3, v6, v4);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "[Suggestion] Session is placeholder, requesting real session", v9, 2u);
    }

    v10 = v0[13];
    v11 = v0[9];
    v12 = v0[10];

    (*(v12 + 8))(v10, v11);
    if (qword_10117F5F8 != -1)
    {
      swift_once();
    }

    v13 = v0[3];
    v14 = v0[4];
    v15 = qword_101218AC8;
    v16 = swift_allocObject();
    *(v16 + 16) = v13;
    *(v16 + 24) = v14;
    v17 = *(*v15 + 720);
    sub_100030444(v13);
    v17(sub_1004466F4, v16);
  }

  else
  {
    v18 = v0[6];
    v19 = v0[7];
    v20 = v0[5];
    (*((swift_isaMask & *v0[2]) + 0x260))();
    v21 = (*(v19 + 48))(v20, 1, v18);
    v22 = v0[9];
    v23 = v0[10];
    if (v21 == 1)
    {
      v24 = v0[12];
      sub_1000095E8(v0[5], &qword_101183A20);
      v25 = Logger.groupActivities.unsafeMutableAddressor();
      (*(v23 + 16))(v24, v25, v22);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "[Suggestion] Session had no joinURL", v28, 2u);
      }

      v29 = v0[12];
      v30 = v0[9];
      v31 = v0[10];
      v32 = v0[3];

      (*(v31 + 8))(v29, v30);
      if (v32)
      {
        (v0[3])(0, 0);
      }
    }

    else
    {
      v33 = v0[11];
      (*(v0[7] + 32))(v0[8], v0[5], v0[6]);
      v34 = Logger.groupActivities.unsafeMutableAddressor();
      (*(v23 + 16))(v33, v34, v22);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&_mh_execute_header, v35, v36, "[Suggestion] Returning joinURL for session", v37, 2u);
      }

      v39 = v0[10];
      v38 = v0[11];
      v40 = v0[9];
      v41 = v0[3];

      (*(v39 + 8))(v38, v40);
      if (v41)
      {
        v43 = v0[3];
        URL._bridgeToObjectiveC()(v42);
        v45 = v44;
        v43();
      }

      (*(v0[7] + 8))(v0[8], v0[6]);
    }
  }

  v46 = v0[1];

  return v46();
}

uint64_t sub_100445524(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void), uint64_t a5)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v38 - v13;
  __chkstk_darwin(v15);
  v17 = &v38 - v16;
  if (a3)
  {
    swift_errorRetain();
    v18 = Logger.groupActivities.unsafeMutableAddressor();
    (*(v9 + 16))(v17, v18, v8);
    swift_errorRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138543362;
      swift_errorRetain();
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v23;
      *v22 = v23;
      _os_log_impl(&_mh_execute_header, v19, v20, "[Suggestion] There was an error requesting the session %{public}@", v21, 0xCu);
      sub_1000095E8(v22, &unk_101183D70);
    }

    (*(v9 + 8))(v17, v8);
    if (a4)
    {
      a4(0, 0);
    }
  }

  else
  {
    if (qword_10117F5F8 != -1)
    {
      swift_once();
    }

    v25 = (*(*qword_101218AC8 + 528))();
    if (v25)
    {
      v26 = v25;
      v27 = Logger.groupActivities.unsafeMutableAddressor();
      (*(v9 + 16))(v11, v27, v8);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&_mh_execute_header, v28, v29, "[Suggestion] Got new session, waiting for connection.", v30, 2u);
      }

      (*(v9 + 8))(v11, v8);
      v31 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v32 = swift_allocObject();
      v32[2] = v31;
      v32[3] = a4;
      v32[4] = a5;
      v33 = *((swift_isaMask & *v26) + 0x358);

      sub_100030444(a4);
      v33(sub_1004466FC, v32);
    }

    else
    {
      v34 = Logger.groupActivities.unsafeMutableAddressor();
      (*(v9 + 16))(v14, v34, v8);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&_mh_execute_header, v35, v36, "[Suggestion] There was no session after requesting it", v37, 2u);
      }

      result = (*(v9 + 8))(v14, v8);
      if (a4)
      {
        return (a4)(0, 0);
      }
    }
  }

  return result;
}