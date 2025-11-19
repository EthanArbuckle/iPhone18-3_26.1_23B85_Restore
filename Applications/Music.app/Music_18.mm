uint64_t sub_1002227B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[5] = v6;
  v4[6] = v5;

  return _swift_task_switch(sub_100222850, v6, v5);
}

uint64_t sub_100222850()
{
  v3 = (&async function pointer to dispatch thunk of MusicSuggestedSongsViewModel.refresh() + async function pointer to dispatch thunk of MusicSuggestedSongsViewModel.refresh());
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_1002228F8;

  return v3();
}

uint64_t sub_1002228F8()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);
  if (v0)
  {
    v5 = sub_100222A94;
  }

  else
  {
    v5 = sub_100222A34;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100222A34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100222A94()
{
  v14 = v0;

  if (qword_10117FE30 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_101219770);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[8];
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to refresh suggested songs with error=%{public}s", v6, 0xCu);
    sub_10000959C(v7);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_100222C70@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v52 = a1;
  v48 = type metadata accessor for SuggestedSongsDataSource.Placement(0);
  __chkstk_darwin(v48);
  v51 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v47 = &v46 - v5;
  v6 = type metadata accessor for SuggestedSongsModule.ContentView(0);
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  v10 = sub_10010FC20(&qword_1011856B0);
  __chkstk_darwin(v10 - 8);
  v12 = &v46 - v11;
  v49 = sub_10010FC20(&qword_1011856B8);
  __chkstk_darwin(v49);
  v50 = &v46 - v13;
  *v12 = static HorizontalAlignment.leading.getter();
  *(v12 + 1) = 0;
  v12[16] = 0;
  v46 = *(sub_10010FC20(&qword_1011856C0) + 44);
  v53 = dispatch thunk of MusicSuggestedSongsViewModel.suggestedSongs.getter();
  sub_1002372D4(v1, &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SuggestedSongsModule.ContentView);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  sub_10023733C(&v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for SuggestedSongsModule.ContentView);
  sub_10010FC20(&qword_1011856C8);
  sub_10010FC20(&qword_1011856D0);
  sub_100020674(&qword_1011856D8, &qword_1011856C8);
  sub_100020674(&qword_1011856E0, &qword_1011856D0);
  sub_100236DF0(&qword_1011856E8, &type metadata accessor for Song);
  ForEach<>.init(_:content:)();
  v16 = static Edge.Set.top.getter();
  v17 = *(v7 + 36);
  v18 = v47;
  sub_1002372D4(v1 + v17, v47, type metadata accessor for SuggestedSongsDataSource.Placement);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_10023754C(v18, type metadata accessor for SuggestedSongsDataSource.Placement);
  if (EnumCaseMultiPayload != 1 && qword_10117F390 != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = v12;
  v29 = v50;
  sub_10003D17C(v28, v50, &qword_1011856B0);
  v30 = v29 + *(v49 + 36);
  *v30 = v16;
  *(v30 + 8) = v21;
  *(v30 + 16) = v23;
  *(v30 + 24) = v25;
  *(v30 + 32) = v27;
  *(v30 + 40) = 0;
  v31 = static Edge.Set.bottom.getter();
  v32 = v2 + v17;
  v33 = v51;
  sub_1002372D4(v32, v51, type metadata accessor for SuggestedSongsDataSource.Placement);
  v34 = swift_getEnumCaseMultiPayload();
  sub_10023754C(v33, type metadata accessor for SuggestedSongsDataSource.Placement);
  if (v34 == 1)
  {
    if (qword_10117F390 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  if (qword_10117F390 != -1)
  {
LABEL_9:
    swift_once();
  }

LABEL_8:
  EdgeInsets.init(_all:)();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = v52;
  sub_10003D17C(v29, v52, &qword_1011856B8);
  result = sub_10010FC20(&qword_1011856F0);
  v45 = v43 + *(result + 36);
  *v45 = v31;
  *(v45 + 8) = v36;
  *(v45 + 16) = v38;
  *(v45 + 24) = v40;
  *(v45 + 32) = v42;
  *(v45 + 40) = 0;
  return result;
}

uint64_t sub_100223244@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v165 = a3;
  v141 = type metadata accessor for DynamicTypeSize();
  v140 = *(v141 - 8);
  __chkstk_darwin(v141);
  v137 = &v134 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&qword_1011856F8);
  __chkstk_darwin(v6 - 8);
  v142 = &v134 - v7;
  v164 = sub_10010FC20(&qword_101185700);
  v163 = *(v164 - 8);
  __chkstk_darwin(v164);
  v139 = &v134 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v138 = &v134 - v10;
  v158 = sub_10010FC20(&qword_101185708);
  __chkstk_darwin(v158);
  v159 = &v134 - v11;
  v12 = sub_10010FC20(&unk_101183960);
  __chkstk_darwin(v12 - 8);
  v135 = &v134 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v168 = &v134 - v15;
  __chkstk_darwin(v16);
  v172 = &v134 - v17;
  v18 = sub_10010FC20(&qword_101185710);
  __chkstk_darwin(v18 - 8);
  v162 = &v134 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v161 = &v134 - v21;
  v22 = type metadata accessor for Song();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v157 = v24;
  v166 = &v134 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for SuggestedSongsModule.ContentView(0);
  v152 = *(v25 - 8);
  __chkstk_darwin(v25);
  v153 = v26;
  v156 = &v134 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10010FC20(&unk_1011838F0);
  __chkstk_darwin(v27 - 8);
  v169 = (&v134 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v29);
  v31 = &v134 - v30;
  v32 = type metadata accessor for SuggestedSongsModule.SongCell(0);
  __chkstk_darwin(v32);
  v34 = &v134 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_10010FC20(&qword_101185718);
  __chkstk_darwin(v145);
  v147 = &v134 - v35;
  v146 = sub_10010FC20(&qword_101185720);
  __chkstk_darwin(v146);
  v151 = &v134 - v36;
  v149 = sub_10010FC20(&qword_101185728);
  __chkstk_darwin(v149);
  v160 = &v134 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v148 = &v134 - v39;
  v41 = __chkstk_darwin(v40);
  v43 = &v134 - v42;
  v167 = v23;
  v44 = *(v23 + 16);
  v170 = a1;
  v174 = v22;
  v155 = v23 + 16;
  v154 = v44;
  (v44)(v34, a1, v22, v41);
  v45 = *(a2 + 8);
  v136 = v25;
  v46 = a2;
  sub_1002372D4(a2 + *(v25 + 28), &v34[v32[8]], type metadata accessor for SuggestedSongsModule.Specs);
  v47 = &v34[v32[5]];
  type metadata accessor for MusicSuggestedSongsViewModel();
  sub_100236DF0(&qword_1011852A0, &type metadata accessor for MusicSuggestedSongsViewModel);

  v150 = v45;
  *v47 = ObservedObject.init(wrappedValue:)();
  v47[1] = v48;
  v49 = &v34[v32[6]];
  type metadata accessor for SuggestedSongsDataSource(0);
  sub_100236DF0(&qword_1011A4A60, type metadata accessor for SuggestedSongsDataSource);
  *v49 = ObservedObject.init(wrappedValue:)();
  v49[1] = v50;
  v51 = &v34[v32[7]];
  v176 = 0;
  State.init(wrappedValue:)();
  v52 = *(&v177 + 1);
  *v51 = v177;
  *(v51 + 1) = v52;
  v53 = &v34[v32[9]];
  if (qword_10117F1F8 != -1)
  {
    swift_once();
  }

  v171 = v43;
  v173 = v46;
  type metadata accessor for PreviewPlaybackController(0);
  sub_100236DF0(&qword_101185730, type metadata accessor for PreviewPlaybackController);

  *v53 = ObservedObject.init(wrappedValue:)();
  v53[1] = v54;
  v55 = v32[10];
  *&v34[v55] = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610);
  swift_storeEnumTagMultiPayload();
  v56 = v32[11];
  *&v34[v56] = swift_getKeyPath();
  sub_10010FC20(&unk_101184840);
  swift_storeEnumTagMultiPayload();
  v57 = &v34[v32[12]];
  v58 = MetricsEvent.Page.libraryPlaylistDetail.unsafeMutableAddressor();
  sub_1002372D4(v58, v31, type metadata accessor for MetricsEvent.Page);
  v59 = type metadata accessor for MetricsEvent.Page(0);
  v60 = *(*(v59 - 8) + 56);
  v60(v31, 0, 1, v59);
  sub_1000089F8(v31, v169, &unk_1011838F0);
  MetricsReportingController.shared.unsafeMutableAddressor();
  v144 = sub_10053771C();
  v143 = v61;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v62 = qword_101218AD0;
  v63 = GroupActivitiesManager.hasJoined.getter();
  v64 = GroupActivitiesManager.participantsCount.getter();
  sub_1000095E8(v31, &unk_1011838F0);
  v65 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  v66 = *(v62 + v65);
  v67 = type metadata accessor for Actions.MetricsReportingContext();
  v68 = v67[5];
  v60(&v57[v68], 1, 1, v59);
  v69 = v67[7];
  v70 = &v57[v67[6]];
  v71 = v67[8];
  *v57 = xmmword_100EC0B20;
  sub_10006B010(v169, &v57[v68], &unk_1011838F0);
  v72 = v143;
  *v70 = v144;
  v70[1] = v72;
  *&v57[v69] = 0;
  *&v57[v71] = 0;
  v73 = &v57[v67[9]];
  *v73 = v63 & 1;
  *(v73 + 1) = v64;
  *(v73 + 2) = v66;
  v74 = *(v173 + 40);
  v75 = *(v173 + 48);
  *&v177 = *(v173 + 32);
  *(&v177 + 1) = v74;
  LOBYTE(v178) = v75;
  sub_10010FC20(&qword_101185738);
  Binding.wrappedValue.getter();
  if (v175 == 1)
  {
    v76 = v174;
    if (qword_10117F3E0 != -1)
    {
      swift_once();
    }

    v77 = &qword_101184F48;
  }

  else
  {
    v76 = v174;
    if (qword_10117F3C8 != -1)
    {
      swift_once();
    }

    v77 = &qword_101184F30;
  }

  v78 = *v77;

  v79 = v147;
  sub_1002372D4(v34, v147, type metadata accessor for SuggestedSongsModule.SongCell);
  *(v79 + *(v145 + 9)) = v78;
  sub_10023754C(v34, type metadata accessor for SuggestedSongsModule.SongCell);
  v145 = type metadata accessor for SuggestedSongsModule.ContentView;
  v80 = v173;
  v81 = v156;
  sub_1002372D4(v173, v156, type metadata accessor for SuggestedSongsModule.ContentView);
  v82 = v152[80];
  v83 = (v82 + 16) & ~v82;
  v152 = v153 + v83;
  v169 = (v82 | 7);
  v84 = swift_allocObject();
  v153 = type metadata accessor for SuggestedSongsModule.ContentView;
  sub_10023733C(v81, v84 + v83, type metadata accessor for SuggestedSongsModule.ContentView);
  v85 = v151;
  v86 = &v151[*(v146 + 36)];
  v87 = v170;
  v88 = v76;
  v89 = v154;
  v154(v86, v170, v88);
  v90 = &v86[*(type metadata accessor for HostedTaggedView(0) + 20)];
  *v90 = sub_10023800C;
  v90[1] = v84;
  sub_10003D17C(v79, v85, &qword_101185718);
  sub_1002372D4(v80, v81, v145);
  v91 = v166;
  v89(v166, v87, v174);
  v92 = v167;
  v93 = *(v167 + 80);
  v94 = &v152[v93] & ~v93;
  v95 = swift_allocObject();
  sub_10023733C(v81, v95 + v83, v153);
  v96 = v92[4];
  v97 = v174;
  v169 = v92 + 4;
  v157 = v96;
  v96((v95 + v94), v91, v174);
  v98 = v148;
  sub_10003D17C(v85, v148, &qword_101185720);
  v99 = (v98 + *(v149 + 36));
  *v99 = sub_100238058;
  v99[1] = v95;
  v99[2] = 0;
  v99[3] = 0;
  sub_10003D17C(v98, v171, &qword_101185728);
  v100 = v172;
  v89(v172, v170, v97);
  v101 = v92[7];
  v102 = 1;
  v101(v100, 0, 1, v97);
  v103 = dispatch thunk of MusicSuggestedSongsViewModel.suggestedSongs.getter();
  v104 = *(v103 + 16);
  if (v104)
  {
    v105 = v168;
    v89(v168, v103 + ((v93 + 32) & ~v93) + v92[9] * (v104 - 1), v97);
    v102 = 0;
    v106 = v159;
  }

  else
  {
    v106 = v159;
    v105 = v168;
  }

  v101(v105, v102, 1, v97);
  v107 = *(v158 + 48);
  v108 = v97;
  v109 = v172;
  sub_1000089F8(v172, v106, &unk_101183960);
  sub_1000089F8(v105, v106 + v107, &unk_101183960);
  v110 = v92[6];
  if (v110(v106, 1, v108) == 1)
  {
    sub_1000095E8(v105, &unk_101183960);
    sub_1000095E8(v109, &unk_101183960);
    v111 = v110(v106 + v107, 1, v108);
    v112 = v161;
    if (v111 == 1)
    {
      sub_1000095E8(v106, &unk_101183960);
      v113 = 1;
      v114 = v164;
      goto LABEL_26;
    }
  }

  else
  {
    v115 = v135;
    sub_1000089F8(v106, v135, &unk_101183960);
    if (v110(v106 + v107, 1, v108) != 1)
    {
      v130 = v166;
      v157(v166, v106 + v107, v108);
      sub_100236DF0(&qword_101185748, &type metadata accessor for Song);
      v131 = v115;
      v132 = dispatch thunk of static Equatable.== infix(_:_:)();
      v133 = *(v167 + 8);
      v133(v130, v108);
      sub_1000095E8(v168, &unk_101183960);
      sub_1000095E8(v172, &unk_101183960);
      v133(v131, v108);
      sub_1000095E8(v106, &unk_101183960);
      v114 = v164;
      v112 = v161;
      if (v132)
      {
        v113 = 1;
        goto LABEL_26;
      }

      goto LABEL_21;
    }

    sub_1000095E8(v168, &unk_101183960);
    sub_1000095E8(v172, &unk_101183960);
    (*(v167 + 8))(v115, v108);
    v112 = v161;
  }

  sub_1000095E8(v106, &qword_101185708);
  v114 = v164;
LABEL_21:
  v116 = v142;
  sub_100224BE4(v173, v142);
  v117 = v137;
  sub_10056CABC(v137);
  if (qword_10117F390 != -1)
  {
    swift_once();
  }

  if (byte_101184EE8 != 1)
  {
    DynamicTypeSize.isAccessibilitySize.getter();
  }

  (*(v140 + 8))(v117, v141);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v118 = v116;
  v119 = v139;
  sub_10003D17C(v118, v139, &qword_1011856F8);
  v120 = (v119 + *(v114 + 36));
  v121 = v178;
  *v120 = v177;
  v120[1] = v121;
  v120[2] = v179;
  v122 = v119;
  v123 = v138;
  sub_10003D17C(v122, v138, &qword_101185700);
  sub_10003D17C(v123, v112, &qword_101185700);
  v113 = 0;
LABEL_26:
  (*(v163 + 56))(v112, v113, 1, v114);
  v124 = v171;
  v125 = v160;
  sub_1000089F8(v171, v160, &qword_101185728);
  v126 = v162;
  sub_1000089F8(v112, v162, &qword_101185710);
  v127 = v165;
  sub_1000089F8(v125, v165, &qword_101185728);
  v128 = sub_10010FC20(&qword_101185740);
  sub_1000089F8(v126, v127 + *(v128 + 48), &qword_101185710);
  sub_1000095E8(v112, &qword_101185710);
  sub_1000095E8(v124, &qword_101185728);
  sub_1000095E8(v126, &qword_101185710);
  return sub_1000095E8(v125, &qword_101185728);
}

uint64_t sub_100224678()
{
  sub_100009F78(0, &qword_101197A30);

  v0 = static MPMediaLibraryFilteringOptions.none.getter();
  if (v0 != WeakArray.endIndex.getter())
  {
    while (1)
    {
      v3 = WeakArray.subscript.getter();
      v0 = FixedLengthCollection.index(after:)(v0);
      if (!v3)
      {
        goto LABEL_8;
      }

      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        break;
      }

      v2 = v3;
LABEL_7:

LABEL_8:
      if (v0 == WeakArray.endIndex.getter())
      {
      }
    }

    v4 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v3 + v4, v6, &unk_1011926C0);
    if (v6[8])
    {
      sub_1000095E8(v6, &unk_1011926C0);
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(v6, &unk_1011926C0);
      if (Strong)
      {
        v2 = sub_1006A6078();

LABEL_16:
        sub_10084E514(v2);

        goto LABEL_7;
      }
    }

    v2 = 0;
    goto LABEL_16;
  }
}

uint64_t sub_100224864(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  v4 = OBJC_IVAR____TtC5Music24SuggestedSongsDataSource_impressedSongs;
  swift_beginAccess();
  v5 = *(v3 + v4);

  v6 = sub_10048C2CC(a2, v5);

  if ((v6 & 1) == 0)
  {
    result = Song.catalogID.getter();
    if (v8)
    {
      v9 = HIBYTE(v8) & 0xF;
      v10 = result & 0xFFFFFFFFFFFFLL;
      if ((v8 & 0x2000000000000000) != 0)
      {
        v11 = HIBYTE(v8) & 0xF;
      }

      else
      {
        v11 = result & 0xFFFFFFFFFFFFLL;
      }

      if (!v11)
      {
      }

      if ((v8 & 0x1000000000000000) == 0)
      {
        if ((v8 & 0x2000000000000000) != 0)
        {
          v35[0] = result;
          v35[1] = v8 & 0xFFFFFFFFFFFFFFLL;
          if (result == 43)
          {
            if (v9)
            {
              v10 = v9 - 1;
              if (v9 != 1)
              {
                v13 = 0;
                v23 = v35 + 1;
                while (1)
                {
                  v24 = *v23 - 48;
                  if (v24 > 9)
                  {
                    break;
                  }

                  v25 = 10 * v13;
                  if ((v13 * 10) >> 64 != (10 * v13) >> 63)
                  {
                    break;
                  }

                  v13 = v25 + v24;
                  if (__OFADD__(v25, v24))
                  {
                    break;
                  }

                  ++v23;
                  if (!--v10)
                  {
                    goto LABEL_64;
                  }
                }
              }

              goto LABEL_63;
            }

LABEL_74:
            __break(1u);
            return result;
          }

          if (result != 45)
          {
            if (v9)
            {
              v13 = 0;
              v28 = v35;
              while (1)
              {
                v29 = *v28 - 48;
                if (v29 > 9)
                {
                  break;
                }

                v30 = 10 * v13;
                if ((v13 * 10) >> 64 != (10 * v13) >> 63)
                {
                  break;
                }

                v13 = v30 + v29;
                if (__OFADD__(v30, v29))
                {
                  break;
                }

                ++v28;
                if (!--v9)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_63;
          }

          if (v9)
          {
            v10 = v9 - 1;
            if (v9 != 1)
            {
              v13 = 0;
              v17 = v35 + 1;
              while (1)
              {
                v18 = *v17 - 48;
                if (v18 > 9)
                {
                  break;
                }

                v19 = 10 * v13;
                if ((v13 * 10) >> 64 != (10 * v13) >> 63)
                {
                  break;
                }

                v13 = v19 - v18;
                if (__OFSUB__(v19, v18))
                {
                  break;
                }

                ++v17;
                if (!--v10)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_63;
          }
        }

        else
        {
          if ((result & 0x1000000000000000) != 0)
          {
            result = (v8 & 0xFFFFFFFFFFFFFFFLL) + 32;
          }

          else
          {
            result = _StringObject.sharedUTF8.getter();
            v10 = v34;
          }

          v12 = *result;
          if (v12 == 43)
          {
            if (v10 >= 1)
            {
              if (--v10)
              {
                v13 = 0;
                if (result)
                {
                  v20 = (result + 1);
                  while (1)
                  {
                    v21 = *v20 - 48;
                    if (v21 > 9)
                    {
                      goto LABEL_63;
                    }

                    v22 = 10 * v13;
                    if ((v13 * 10) >> 64 != (10 * v13) >> 63)
                    {
                      goto LABEL_63;
                    }

                    v13 = v22 + v21;
                    if (__OFADD__(v22, v21))
                    {
                      goto LABEL_63;
                    }

                    ++v20;
                    if (!--v10)
                    {
                      goto LABEL_64;
                    }
                  }
                }

                goto LABEL_62;
              }

              goto LABEL_63;
            }

            goto LABEL_73;
          }

          if (v12 != 45)
          {
            if (v10)
            {
              v13 = 0;
              if (result)
              {
                while (1)
                {
                  v26 = *result - 48;
                  if (v26 > 9)
                  {
                    goto LABEL_63;
                  }

                  v27 = 10 * v13;
                  if ((v13 * 10) >> 64 != (10 * v13) >> 63)
                  {
                    goto LABEL_63;
                  }

                  v13 = v27 + v26;
                  if (__OFADD__(v27, v26))
                  {
                    goto LABEL_63;
                  }

                  ++result;
                  if (!--v10)
                  {
                    goto LABEL_64;
                  }
                }
              }

              goto LABEL_62;
            }

LABEL_63:
            v13 = 0;
            LOBYTE(v10) = 1;
LABEL_64:
            LOBYTE(v36) = v10;
            v31 = v10;

            if (v31)
            {
              return result;
            }

            goto LABEL_65;
          }

          if (v10 >= 1)
          {
            if (--v10)
            {
              v13 = 0;
              if (result)
              {
                v14 = (result + 1);
                while (1)
                {
                  v15 = *v14 - 48;
                  if (v15 > 9)
                  {
                    goto LABEL_63;
                  }

                  v16 = 10 * v13;
                  if ((v13 * 10) >> 64 != (10 * v13) >> 63)
                  {
                    goto LABEL_63;
                  }

                  v13 = v16 - v15;
                  if (__OFSUB__(v16, v15))
                  {
                    goto LABEL_63;
                  }

                  ++v14;
                  if (!--v10)
                  {
                    goto LABEL_64;
                  }
                }
              }

LABEL_62:
              LOBYTE(v10) = 0;
              goto LABEL_64;
            }

            goto LABEL_63;
          }

          __break(1u);
        }

        __break(1u);
LABEL_73:
        __break(1u);
        goto LABEL_74;
      }

      v13 = sub_1002D0E10(result, v8, 10);
      v33 = v32;

      if ((v33 & 1) == 0)
      {
LABEL_65:
        swift_beginAccess();
        sub_1003B3AB0(&v36, v13);
        return swift_endAccess();
      }
    }
  }

  return result;
}

uint64_t sub_100224BE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v3 = sub_10010FC20(&unk_101184290);
  __chkstk_darwin(v3 - 8);
  v5 = v54 - v4;
  v6 = type metadata accessor for DynamicTypeSize();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v54 - v11;
  v13 = type metadata accessor for SuggestedSongsDataSource.Placement(0);
  __chkstk_darwin(v13);
  v15 = v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Divider();
  v61 = *(v16 - 8);
  v62 = v16;
  __chkstk_darwin(v16);
  v18 = v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_10010FC20(&qword_101185750);
  __chkstk_darwin(v59);
  v20 = v54 - v19;
  v63 = sub_10010FC20(&qword_101185758);
  __chkstk_darwin(v63);
  v64 = v54 - v21;
  v60 = v18;
  Divider.init()();
  v56 = static Edge.Set.leading.getter();
  v22 = type metadata accessor for SuggestedSongsModule.ContentView(0);
  v57 = *(v22 + 28);
  sub_1002372D4(a1 + v57, v15, type metadata accessor for SuggestedSongsDataSource.Placement);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_10023754C(v15, type metadata accessor for SuggestedSongsDataSource.Placement);
  if (EnumCaseMultiPayload == 1 && qword_10117F390 != -1)
  {
    swift_once();
  }

  v58 = *(v22 + 32);
  sub_10056CABC(v12);
  if (qword_10117FB28 != -1)
  {
    swift_once();
  }

  if (byte_10119CDC0)
  {
    v24 = v6;
    v55 = *(v7 + 8);
    v55(v12, v6);
  }

  else
  {
    (*(v7 + 104))(v9, enum case for DynamicTypeSize.accessibility3(_:), v6);
    v54[3] = static DynamicTypeSize.< infix(_:_:)();
    v25 = v20;
    v26 = v12;
    v27 = *(v7 + 8);
    v27(v9, v6);
    v28 = v26;
    v20 = v25;
    v24 = v6;
    v55 = v27;
    v27(v28, v6);
  }

  EdgeInsets.init(_all:)();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  (*(v61 + 32))(v20, v60, v62);
  v37 = &v20[*(v59 + 36)];
  *v37 = v56;
  *(v37 + 1) = v30;
  *(v37 + 2) = v32;
  *(v37 + 3) = v34;
  *(v37 + 4) = v36;
  v37[40] = 0;
  v38 = static Edge.Set.trailing.getter();
  sub_10056CAE4(v5);
  sub_10022205C(v5);
  sub_1000095E8(v5, &unk_101184290);
  EdgeInsets.init(_all:)();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = v64;
  sub_10003D17C(v20, v64, &qword_101185750);
  v48 = v47 + *(v63 + 36);
  *v48 = v38;
  *(v48 + 8) = v40;
  *(v48 + 16) = v42;
  *(v48 + 24) = v44;
  *(v48 + 32) = v46;
  *(v48 + 40) = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v49 = v66;
  sub_10056CAE4(v5);
  sub_10056CABC(v9);
  v50 = sub_10068D124(v5, v9, v49);
  v55(v9, v24);
  sub_1000095E8(v5, &unk_101184290);
  if (v50)
  {
    v51 = 0.0;
  }

  else
  {
    v51 = 1.0;
  }

  v52 = v65;
  sub_10003D17C(v47, v65, &qword_101185758);
  result = sub_10010FC20(&qword_101185760);
  *(v52 + *(result + 36)) = v51;
  return result;
}

uint64_t sub_10022527C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v270 = a1;
  v263 = type metadata accessor for AccessibilityActionKind();
  v262 = *(v263 - 8);
  __chkstk_darwin(v263);
  v261 = &v214 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v259 = type metadata accessor for AccessibilityTraits();
  v258 = *(v259 - 8);
  __chkstk_darwin(v259);
  v256 = &v214 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v253 = type metadata accessor for AccessibilityChildBehavior();
  v251 = *(v253 - 8);
  __chkstk_darwin(v253);
  v250 = &v214 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v235 = type metadata accessor for DynamicTypeSize();
  v234 = *(v235 - 8);
  __chkstk_darwin(v235);
  v231 = &v214 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v230 = sub_10010FC20(&qword_101185AF8);
  __chkstk_darwin(v230);
  v233 = (&v214 - v7);
  v232 = sub_10010FC20(&qword_101185B00);
  __chkstk_darwin(v232);
  v237 = &v214 - v8;
  v236 = sub_10010FC20(&qword_101185B08);
  __chkstk_darwin(v236);
  v239 = &v214 - v9;
  v242 = sub_10010FC20(&qword_101185B10);
  __chkstk_darwin(v242);
  v240 = &v214 - v10;
  v245 = sub_10010FC20(&qword_101185B18);
  v243 = *(v245 - 8);
  __chkstk_darwin(v245);
  v241 = &v214 - v11;
  v247 = sub_10010FC20(&qword_101185B20);
  v246 = *(v247 - 8);
  __chkstk_darwin(v247);
  v244 = &v214 - v12;
  v248 = sub_10010FC20(&qword_101185B28);
  __chkstk_darwin(v248);
  v249 = &v214 - v13;
  v252 = sub_10010FC20(&qword_101185B30);
  __chkstk_darwin(v252);
  v276 = (&v214 - v14);
  v282 = sub_10010FC20(&qword_101185B38);
  __chkstk_darwin(v282);
  v255 = &v214 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v260 = &v214 - v17;
  __chkstk_darwin(v18);
  v279 = &v214 - v19;
  v268 = sub_10010FC20(&qword_101185B40);
  v266 = *(v268 - 8);
  __chkstk_darwin(v268);
  v264 = &v214 - v20;
  v269 = sub_10010FC20(&qword_101185B48);
  v267 = *(v269 - 8);
  __chkstk_darwin(v269);
  v265 = &v214 - v21;
  v22 = type metadata accessor for Locale();
  __chkstk_darwin(v22 - 8);
  v280 = &v214 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v24 - 8);
  v274 = (&v214 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = sub_10010FC20(&unk_101184290);
  __chkstk_darwin(v26 - 8);
  v271 = &v214 - v27;
  v281 = type metadata accessor for SuggestedSongsDataSource.Placement(0);
  __chkstk_darwin(v281);
  v257 = &v214 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v254 = &v214 - v30;
  __chkstk_darwin(v31);
  v229 = &v214 - v32;
  __chkstk_darwin(v33);
  v222 = &v214 - v34;
  v35 = type metadata accessor for PlainButtonStyle();
  v225 = *(v35 - 8);
  __chkstk_darwin(v35);
  v37 = &v214 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for SuggestedSongsModule.SongCell(0);
  v39 = *(v38 - 8);
  __chkstk_darwin(v38);
  v285 = v40;
  v41 = &v214 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_10010FC20(&qword_101185B50);
  v43 = *(v42 - 8);
  __chkstk_darwin(v42);
  v45 = &v214 - v44;
  v215 = sub_10010FC20(&qword_101185B58);
  v214 = *(v215 - 8);
  __chkstk_darwin(v215);
  v47 = &v214 - v46;
  v220 = sub_10010FC20(&qword_101185B60);
  v218 = *(v220 - 8);
  __chkstk_darwin(v220);
  v217 = &v214 - v48;
  v216 = sub_10010FC20(&qword_101185B68);
  __chkstk_darwin(v216);
  v221 = &v214 - v49;
  v219 = sub_10010FC20(&qword_101185B70);
  __chkstk_darwin(v219);
  v228 = &v214 - v50;
  v227 = sub_10010FC20(&qword_101185B78);
  __chkstk_darwin(v227);
  v223 = &v214 - v51;
  v224 = sub_10010FC20(&qword_101185B80);
  __chkstk_darwin(v224);
  v226 = &v214 - v52;
  v53 = sub_10010FC20(&qword_101185B88);
  __chkstk_darwin(v53 - 8);
  v277 = &v214 - v54;
  v272 = v38;
  v238 = *(v2 + *(v38 + 24) + 8);
  sub_10012B7A8(v238 + OBJC_IVAR____TtC5Music24SuggestedSongsDataSource_presentationSource, &v287);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_10012BA6C(&v287);
  if (Strong)
  {
    v275 = sub_10003169C();
  }

  else
  {
    v275 = 0;
  }

  sub_1002372D4(v2, v41, type metadata accessor for SuggestedSongsModule.SongCell);
  v56 = *(v39 + 80);
  v57 = (v56 + 16) & ~v56;
  v284 = v56;
  v58 = swift_allocObject();
  v273 = v57;
  v278 = v41;
  v59 = sub_10023733C(v41, v58 + v57, type metadata accessor for SuggestedSongsModule.SongCell);
  __chkstk_darwin(v59);
  v283 = v2;
  sub_10010FC20(&qword_101185B90);
  sub_1002392E4();
  Button.init(action:label:)();
  PlainButtonStyle.init()();
  v60 = sub_100020674(&qword_101185BC0, &qword_101185B50);
  v61 = sub_100236DF0(&qword_10119A260, &type metadata accessor for PlainButtonStyle);
  View.buttonStyle<A>(_:)();
  (*(v225 + 8))(v37, v35);
  (*(v43 + 8))(v45, v42);
  v287 = v42;
  v288 = v35;
  v289 = v60;
  v290 = v61;
  v62 = v283;
  swift_getOpaqueTypeConformance2();
  v63 = v217;
  v64 = v215;
  View.hover(corner:outset:isRelative:namespace:isEnabled:)();
  (*(v214 + 8))(v47, v64);
  v65 = v272;
  v66 = *(v272 + 32);
  v67 = v222;
  sub_1002372D4(v62 + v66, v222, type metadata accessor for SuggestedSongsDataSource.Placement);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_10023754C(v67, type metadata accessor for SuggestedSongsDataSource.Placement);
  v225 = v66;
  if (EnumCaseMultiPayload != 1)
  {
    goto LABEL_8;
  }

  if (qword_10117F390 != -1)
  {
    swift_once();
  }

  if (byte_101184EE8 != 1)
  {
    v71 = static Color.accentColor.getter();
    v70 = &type metadata for Color;
    v290 = &type metadata for Color;
    v291 = &protocol witness table for Color;
    v287 = v71;
  }

  else
  {
LABEL_8:
    v69 = static HierarchicalShapeStyle.secondary.getter();
    v70 = &type metadata for HierarchicalShapeStyle;
    v290 = &type metadata for HierarchicalShapeStyle;
    v291 = &protocol witness table for HierarchicalShapeStyle;
    LODWORD(v287) = v69;
  }

  v72 = sub_10000954C(&v287, v70);
  v73 = __chkstk_darwin(v72);
  (*(v75 + 16))(&v214 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0), v73);
  v76 = AnyShapeStyle.init<A>(_:)();
  sub_10000959C(&v287);
  v77 = v221;
  (*(v218 + 32))(v221, v63, v220);
  *&v77[*(v216 + 36)] = v76;
  v78 = static Edge.Set.leading.getter();
  v222 = *(v65 + 44);
  v79 = v271;
  sub_10056CAE4(v271);
  sub_10023951C(v79);
  sub_1000095E8(v79, &unk_101184290);
  EdgeInsets.init(_all:)();
  v81 = v80;
  v83 = v82;
  v85 = v84;
  v87 = v86;
  v88 = v77;
  v89 = v228;
  sub_10003D17C(v88, v228, &qword_101185B68);
  v90 = &v89[*(v219 + 36)];
  *v90 = v78;
  *(v90 + 1) = v81;
  *(v90 + 2) = v83;
  *(v90 + 3) = v85;
  *(v90 + 4) = v87;
  v90[40] = 0;
  v91 = (v62 + *(v65 + 28));
  v92 = *v91;
  v93 = *(v91 + 1);
  LOBYTE(v287) = v92;
  v288 = v93;
  sub_10010FC20(&unk_101197960);
  State.wrappedValue.getter();
  LOBYTE(v79) = v286;
  KeyPath = swift_getKeyPath();
  v95 = swift_allocObject();
  *(v95 + 16) = v79;
  v96 = v223;
  sub_10003D17C(v89, v223, &qword_101185B70);
  v97 = (v96 + *(v227 + 36));
  *v97 = KeyPath;
  v97[1] = sub_100239940;
  v97[2] = v95;
  v228 = "Preview and add to playlist";
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v287 = String.init(localized:table:bundle:locale:comment:)();
  v288 = v98;
  sub_100239948();
  v99 = sub_100009838();
  v100 = v226;
  v227 = v99;
  View.accessibilityLabel<A>(_:)();

  sub_1000095E8(v96, &qword_101185B78);
  v101 = AccessibilityIdentifier.playlistSuggestedSongsCellAddButton.unsafeMutableAddressor();
  v102 = *v101;
  v103 = v101[1];
  v104 = v101[2];
  v105 = v101[3];
  v106 = sub_100238500(&qword_101185C00, &qword_101185B80, &unk_100EC1478, sub_100239948);

  v107 = v277;
  v108 = v106;
  v109 = v283;
  View.accessibilityIdentifier(_:)(v102, v103, v104, v105, v224, v108);

  sub_1000095E8(v100, &qword_101185B80);
  v110 = static VerticalAlignment.center.getter();
  v111 = v233;
  *v233 = v110;
  *(v111 + 8) = 0;
  *(v111 + 16) = 0;
  v112 = sub_10010FC20(&qword_101185C08);
  sub_100228E4C(v109, v107, v275, (v111 + *(v112 + 44)));
  if (qword_10117FBD0 != -1)
  {
    swift_once();
  }

  v113 = qword_101219378;
  v114 = swift_getKeyPath();
  v115 = (v111 + *(v230 + 36));
  *v115 = v114;
  v115[1] = v113;

  v116 = static Edge.Set.vertical.getter();
  v117 = v231;
  sub_10056CABC(v231);
  v118 = v239;
  v119 = v237;
  if (qword_10117FB28 != -1)
  {
    swift_once();
  }

  if (byte_10119CDC0 != 1)
  {
    DynamicTypeSize.isAccessibilitySize.getter();
  }

  (*(v234 + 8))(v117, v235);
  EdgeInsets.init(_all:)();
  v121 = v120;
  v123 = v122;
  v125 = v124;
  v127 = v126;
  sub_10003D17C(v111, v119, &qword_101185AF8);
  v128 = v119 + *(v232 + 36);
  *v128 = v116;
  *(v128 + 8) = v121;
  *(v128 + 16) = v123;
  *(v128 + 24) = v125;
  *(v128 + 32) = v127;
  *(v128 + 40) = 0;
  v129 = static Edge.Set.leading.getter();
  v130 = v229;
  sub_1002372D4(v109 + v225, v229, type metadata accessor for SuggestedSongsDataSource.Placement);
  v131 = swift_getEnumCaseMultiPayload();
  sub_10023754C(v130, type metadata accessor for SuggestedSongsDataSource.Placement);
  if (v131 == 1 && qword_10117F390 != -1)
  {
    swift_once();
  }

  if (qword_10117F3A0 != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v133 = v132;
  v135 = v134;
  v137 = v136;
  v139 = v138;
  sub_10003D17C(v119, v118, &qword_101185B00);
  v140 = v118 + *(v236 + 36);
  *v140 = v129;
  *(v140 + 8) = v133;
  *(v140 + 16) = v135;
  *(v140 + 24) = v137;
  *(v140 + 32) = v139;
  *(v140 + 40) = 0;
  v141 = static Edge.Set.trailing.getter();
  v142 = v271;
  sub_10056CAE4(v271);
  sub_10022205C(v142);
  sub_1000095E8(v142, &unk_101184290);
  if (qword_10117F3A8 != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v144 = v143;
  v146 = v145;
  v148 = v147;
  v150 = v149;
  v151 = v240;
  sub_10003D17C(v118, v240, &qword_101185B08);
  v152 = v242;
  v153 = v151 + *(v242 + 36);
  *v153 = v141;
  *(v153 + 8) = v144;
  *(v153 + 16) = v146;
  *(v153 + 24) = v148;
  *(v153 + 32) = v150;
  *(v153 + 40) = 0;
  v154 = v278;
  sub_1002372D4(v109, v278, type metadata accessor for SuggestedSongsModule.SongCell);
  v155 = v273;
  v156 = swift_allocObject();
  sub_10023733C(v154, v156 + v155, type metadata accessor for SuggestedSongsModule.SongCell);
  v157 = sub_10023A090();
  v158 = v241;
  View.onTapGesture(count:perform:)();

  sub_1000095E8(v151, &qword_101185B10);
  v159 = v250;
  static AccessibilityChildBehavior.combine.getter();
  v287 = v152;
  v288 = v157;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v161 = v244;
  v162 = v245;
  View.accessibilityElement(children:)();
  (*(v251 + 8))(v159, v253);
  (*(v243 + 8))(v158, v162);
  v163 = v256;
  static AccessibilityTraits.isButton.getter();
  v287 = v162;
  v288 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v164 = v249;
  v165 = v247;
  View.accessibility(addTraits:)();
  (*(v258 + 8))(v163, v259);
  (*(v246 + 8))(v161, v165);
  v166 = AccessibilityIdentifier.playlistSuggestedSongsCell.unsafeMutableAddressor();
  v167 = *v166;
  v168 = v166[1];
  v169 = v166[2];
  v170 = v166[3];
  v171 = sub_10023A318();

  View.accessibilityIdentifier(_:)(v167, v168, v169, v170, v248, v171);

  sub_1000095E8(v164, &qword_101185B28);
  v172 = Song.id.getter();
  sub_10012BF2C(v172, v173);

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v287 = String.init(localized:table:bundle:locale:comment:)();
  v288 = v174;
  sub_10023A454();
  v175 = v255;
  v176 = v276;
  View.accessibilityHint<A>(_:)();

  sub_1000095E8(v176, &qword_101185B30);
  v276 = type metadata accessor for SuggestedSongsModule.SongCell;
  v177 = v278;
  sub_1002372D4(v109, v278, type metadata accessor for SuggestedSongsModule.SongCell);
  v178 = v273;
  v179 = swift_allocObject();
  v274 = type metadata accessor for SuggestedSongsModule.SongCell;
  sub_10023733C(v177, v179 + v178, type metadata accessor for SuggestedSongsModule.SongCell);
  v180 = v261;
  static AccessibilityActionKind.default.getter();
  v181 = v260;
  ModifiedContent<>.accessibilityAction(_:_:)();

  (*(v262 + 8))(v180, v263);
  sub_1000095E8(v175, &qword_101185B38);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v287 = String.init(localized:table:bundle:locale:comment:)();
  v288 = v182;
  v183 = Text.init<A>(_:)();
  v184 = v109;
  v186 = v185;
  LOBYTE(v175) = v187;
  sub_1002372D4(v184, v177, v276);
  v188 = swift_allocObject();
  sub_10023733C(v177, v188 + v178, v274);
  ModifiedContent<>.accessibilityAction(named:_:)();

  sub_10011895C(v183, v186, v175 & 1);

  sub_1000095E8(v181, &qword_101185B38);
  v189 = OBJC_IVAR____TtC5Music24SuggestedSongsDataSource_placement;
  v190 = v238;
  swift_beginAccess();
  v191 = v190 + v189;
  v192 = v254;
  sub_1002372D4(v191, v254, type metadata accessor for SuggestedSongsDataSource.Placement);
  v193 = v257;
  sub_10023733C(v192, v257, type metadata accessor for SuggestedSongsDataSource.Placement);
  LODWORD(v281) = swift_getEnumCaseMultiPayload() == 1;
  sub_10023754C(v193, type metadata accessor for SuggestedSongsDataSource.Placement);
  v194 = type metadata accessor for SuggestedSong(0);
  v290 = v194;
  v195 = sub_10001C8B8(&v287);
  v196 = type metadata accessor for Song();
  (*(*(v196 - 8) + 16))(v195, v184, v196);
  v197 = v276;
  sub_1002372D4(v184, v177, v276);
  v198 = swift_allocObject();
  v199 = v274;
  sub_10023733C(v177, v198 + v178, v274);
  v200 = (v195 + *(v194 + 20));
  *v200 = sub_10023A484;
  v200[1] = v198;
  sub_1002372D4(v184, v177, v197);
  v201 = swift_allocObject();
  v202 = sub_10023733C(v177, v201 + v178, v199);
  __chkstk_darwin(v202);
  v203 = sub_10010FC20(&qword_101185C50);
  v212 = sub_100238500(&qword_101185C58, &qword_101185B38, &unk_100EC1430, sub_10023A454);
  v213 = sub_10023A55C();
  v204 = v282;
  v205 = v264;
  v206 = v279;
  View.onDrag<A>(isEnabled:localContext:_:onSessionBegan:onSessionEnded:preview:)();

  sub_1000095E8(v206, &qword_101185B38);
  sub_1000095E8(&v287, &unk_101183F30);
  v287 = v204;
  v288 = v203;
  v289 = v212;
  v290 = v213;
  v207 = swift_getOpaqueTypeConformance2();
  v208 = v265;
  v209 = v268;
  View.supportsSystemDrag(_:)();
  (*(v266 + 8))(v205, v209);
  v287 = v209;
  v288 = v207;
  swift_getOpaqueTypeConformance2();
  v210 = v269;
  View.prefersFullSizeDragPreviews(_:)();

  (*(v267 + 8))(v208, v210);
  return sub_1000095E8(v277, &qword_101185B88);
}

uint64_t sub_100227634()
{
  v1 = v0;
  v2 = type metadata accessor for SuggestedSongsModule.SongCell(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = type metadata accessor for MusicLibrary.AddStatus();
  v103 = *(v5 - 8);
  v104 = v5;
  __chkstk_darwin(v5);
  v102 = v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v101 = v83 - v8;
  v9 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v9 - 8);
  v100 = v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v107 = v83 - v12;
  v13 = type metadata accessor for MetricsEvent.Click(0);
  __chkstk_darwin(v13 - 8);
  v105 = v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for SuggestedSongsDataSource.Placement(0);
  __chkstk_darwin(v99);
  v98 = v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v97 = v83 - v17;
  __chkstk_darwin(v18);
  v20 = v83 - v19;
  __chkstk_darwin(v21);
  v23 = v83 - v22;
  __chkstk_darwin(v24);
  v26 = v83 - v25;
  result = dispatch thunk of MusicSuggestedSongsViewModel.isPerformingUserInitiatedRefresh.getter();
  if ((result & 1) == 0)
  {
    v83[1] = v4;
    v84 = v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    v28 = (v0 + *(v2 + 28));
    v29 = *v28;
    v30 = *(v28 + 1);
    v108[0] = v29;
    v109 = v30;
    v110 = 1;
    sub_10010FC20(&unk_101197960);
    State.wrappedValue.setter();
    if (qword_10117F1F8 != -1)
    {
      swift_once();
    }

    v31 = Song.id.getter();
    sub_10012BF2C(v31, v32);
    v34 = ~v33;

    if (v34)
    {
      sub_10012F360();
    }

    v35 = Song.catalogID.getter();
    v93 = v3;
    v90 = v23;
    v91 = v20;
    if (!v36)
    {
      v35 = Song.id.getter();
    }

    v37 = v35;
    v106 = v36;
    v38 = OBJC_IVAR____TtC5Music24SuggestedSongsDataSource_placement;
    v94 = *(v1 + *(v2 + 24) + 8);
    v39 = v94;
    swift_beginAccess();
    sub_1002372D4(v39 + v38, v26, type metadata accessor for SuggestedSongsDataSource.Placement);
    v40 = sub_100222540();
    v95 = v41;
    v96 = v40;
    v89 = type metadata accessor for SuggestedSongsDataSource.Placement;
    sub_10023754C(v26, type metadata accessor for SuggestedSongsDataSource.Placement);
    sub_10010FC20(&qword_1011858B0);
    inited = swift_initStackObject();
    v92 = xmmword_100EBDC20;
    *(inited + 16) = xmmword_100EBDC20;
    sub_10010FC20(&qword_101190BE0);
    v43 = swift_initStackObject();
    *(v43 + 16) = v92;
    *(v43 + 32) = 25705;
    *(v43 + 40) = 0xE200000000000000;
    *(v43 + 48) = v37;
    v86 = v37;
    v44 = v106;
    *(v43 + 56) = v106;
    v106 = v44;
    strcpy((v43 + 64), "locationType");
    *(v43 + 77) = 0;
    *(v43 + 78) = -5120;
    *(v43 + 80) = 0x657449666C656853;
    *(v43 + 88) = 0xE90000000000006DLL;

    v45 = sub_10010C578(v43);
    *&v92 = v1;
    v46 = v45;
    swift_setDeallocating();
    sub_10010FC20(&qword_101183AA0);
    swift_arrayDestroy();
    *(inited + 32) = v46;
    v47 = sub_10010C578(&off_101099AE8);
    swift_arrayDestroy();
    *(inited + 40) = v47;
    v48 = swift_initStackObject();
    *(v48 + 16) = xmmword_100EBEF50;
    *(v48 + 32) = 1684957547;
    *(v48 + 40) = 0xE400000000000000;
    *(v48 + 48) = 1735290739;
    *(v48 + 56) = 0xE400000000000000;
    *(v48 + 64) = 0x6F54646461;
    *(v48 + 72) = 0xE500000000000000;
    *(v48 + 80) = 0x7473696C79616C70;
    *(v48 + 88) = 0xE800000000000000;
    *(v48 + 96) = 0x4E6E6F6974636573;
    *(v48 + 104) = 0xEB00000000656D61;
    *(v48 + 112) = 0x6574736567677553;
    *(v48 + 120) = 0xEF73676E6F532064;
    *(v48 + 128) = 0x49746E65746E6F63;
    v49 = v96;
    *(v48 + 136) = 0xE900000000000064;
    *(v48 + 144) = v49;
    *(v48 + 152) = v95;

    v88 = sub_10010C578(v48);
    swift_setDeallocating();
    swift_arrayDestroy();
    v50 = type metadata accessor for URL();
    v51 = *(*(v50 - 8) + 56);
    v51(v107, 1, 1, v50);
    v87 = sub_10018DA2C(inited);

    v52 = v94;
    v53 = v90;
    v85 = type metadata accessor for SuggestedSongsDataSource.Placement;
    sub_1002372D4(v94 + v38, v90, type metadata accessor for SuggestedSongsDataSource.Placement);
    v54 = v91;
    sub_1002372D4(v53, v91, type metadata accessor for SuggestedSongsDataSource.Placement);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v56 = EnumCaseMultiPayload == 1;
    if (EnumCaseMultiPayload == 1)
    {
      v57 = v53;
    }

    else
    {
      v57 = v54;
    }

    if (v56)
    {
      v58 = 0x7473696C79616C50;
    }

    else
    {
      v54 = v53;
      v58 = 0x72656B636950;
    }

    v59 = 0xE600000000000000;
    if (v56)
    {
      v59 = 0xE800000000000000;
    }

    v91 = v59;
    v60 = v89;
    sub_10023754C(v57, v89);
    sub_10023754C(v54, v60);
    v61 = v100;
    v51(v100, 1, 1, v50);
    v62 = v97;
    sub_1002372D4(v52 + v38, v97, v85);
    v63 = v98;
    sub_10023733C(v62, v98, type metadata accessor for SuggestedSongsDataSource.Placement);
    LOBYTE(v62) = swift_getEnumCaseMultiPayload() == 1;
    sub_10023754C(v63, v60);
    v64 = v105;
    MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:pageIdentifier:pageType:pageURL:pageDetails:pageDisplayType:attenuationAvailable:snapshotImpressions:searchTerm:)(v86, v106, 25, 3, v107, v87, 0, 12, v105, v88, 0, 768, v96, v95, v58, v91, v61, 0, v62, 2, 0, 0, 0);
    v65 = *MetricsReportingController.shared.unsafeMutableAddressor();
    v66 = sub_10053771C();
    v68 = v67;
    if (qword_10117F600 != -1)
    {
      swift_once();
    }

    v69 = qword_101218AD0;
    v70 = GroupActivitiesManager.hasJoined.getter();
    v71 = GroupActivitiesManager.participantsCount.getter();
    v72 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
    swift_beginAccess();
    (*((swift_isaMask & *v65) + 0xB8))(v64, v66, v68, v70 & 1, v71, *(v69 + v72));

    type metadata accessor for MusicLibrary();
    static MusicLibrary.shared.getter();
    type metadata accessor for Song();
    v73 = v92;
    MusicLibrary.state<A>(for:)();

    v74 = v101;
    dispatch thunk of MusicLibrary.ItemState.addStatus.getter();

    v76 = v102;
    v75 = v103;
    v77 = v104;
    (*(v103 + 104))(v102, enum case for MusicLibrary.AddStatus.added(_:), v104);
    sub_100236DF0(&qword_101185CC8, &type metadata accessor for MusicLibrary.AddStatus);
    LOBYTE(v69) = dispatch thunk of static Equatable.== infix(_:_:)();
    v78 = *(v75 + 8);
    v78(v76, v77);
    v78(v74, v77);
    v79 = v93;
    if (v69)
    {
      sub_10022EDD4();
    }

    else
    {
      sub_10012B7A8(v94 + OBJC_IVAR____TtC5Music24SuggestedSongsDataSource_presentationSource, v108);
      v80 = v84;
      sub_1002372D4(v73, v84, type metadata accessor for SuggestedSongsModule.SongCell);
      v81 = (*(v79 + 80) + 16) & ~*(v79 + 80);
      v82 = swift_allocObject();
      sub_10023733C(v80, v82 + v81, type metadata accessor for SuggestedSongsModule.SongCell);
      static CloudLibrary.presentCloudLibraryEnablerIfNeeded(context:presentationSource:style:cloudLibraryEnabledCompletion:)(2u, v108, 0, sub_10023A8A8, v82);

      sub_10012BA6C(v108);
    }

    return sub_10023754C(v64, type metadata accessor for MetricsEvent.Click);
  }

  return result;
}

uint64_t sub_100228178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v75 = type metadata accessor for Image.Scale();
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v73 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SuggestedSongsDataSource.Placement(0);
  __chkstk_darwin(v4);
  v76 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v72 = &v67 - v7;
  __chkstk_darwin(v8);
  v69 = &v67 - v9;
  __chkstk_darwin(v10);
  v12 = &v67 - v11;
  __chkstk_darwin(v13);
  v15 = &v67 - v14;
  __chkstk_darwin(v16);
  v18 = &v67 - v17;
  __chkstk_darwin(v19);
  v21 = &v67 - v20;
  v71 = sub_10010FC20(&qword_10119A280);
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v80 = &v67 - v22;
  v68 = sub_10010FC20(&qword_101185BB8);
  __chkstk_darwin(v68);
  v81 = &v67 - v23;
  v77 = sub_10010FC20(&qword_101185BA8);
  __chkstk_darwin(v77);
  v78 = &v67 - v24;
  v25 = type metadata accessor for SuggestedSongsModule.SongCell(0);
  v26 = *(a1 + *(v25 + 24) + 8);
  v27 = OBJC_IVAR____TtC5Music24SuggestedSongsDataSource_placement;
  swift_beginAccess();
  sub_1002372D4(v26 + v27, v21, type metadata accessor for SuggestedSongsDataSource.Placement);
  sub_10023733C(v21, v18, type metadata accessor for SuggestedSongsDataSource.Placement);
  swift_getEnumCaseMultiPayload();
  sub_10023754C(v18, type metadata accessor for SuggestedSongsDataSource.Placement);
  v28 = Image.init(systemName:)();
  v29 = *(v25 + 32);
  v30 = a1;
  sub_1002372D4(a1 + v29, v15, type metadata accessor for SuggestedSongsDataSource.Placement);
  v82 = v4;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_10023754C(v15, type metadata accessor for SuggestedSongsDataSource.Placement);
  if (EnumCaseMultiPayload != 1)
  {
    goto LABEL_4;
  }

  if (qword_10117F390 == -1)
  {
    if (byte_101184EE8)
    {
LABEL_4:
      v32 = static Font.title3.getter();
      goto LABEL_7;
    }
  }

  else
  {
    swift_once();
    if (byte_101184EE8)
    {
      goto LABEL_4;
    }
  }

  v32 = static Font.body.getter();
LABEL_7:
  v33 = v32;
  KeyPath = swift_getKeyPath();
  *&v83 = v28;
  *(&v83 + 1) = KeyPath;
  *&v84 = v33;
  sub_1002372D4(a1 + v29, v12, type metadata accessor for SuggestedSongsDataSource.Placement);
  v35 = swift_getEnumCaseMultiPayload();
  sub_10023754C(v12, type metadata accessor for SuggestedSongsDataSource.Placement);
  if (v35 != 1)
  {
LABEL_10:
    static Font.Weight.medium.getter();
    goto LABEL_13;
  }

  if (qword_10117F390 == -1)
  {
    if (byte_101184EE8)
    {
      goto LABEL_10;
    }
  }

  else
  {
    swift_once();
    if (byte_101184EE8)
    {
      goto LABEL_10;
    }
  }

  static Font.Weight.semibold.getter();
LABEL_13:
  sub_10010FC20(&unk_1011A1100);
  sub_100238768();
  View.fontWeight(_:)();

  v67 = type metadata accessor for SuggestedSongsDataSource.Placement;
  v36 = v69;
  sub_1002372D4(a1 + v29, v69, type metadata accessor for SuggestedSongsDataSource.Placement);
  v37 = v29;
  v38 = swift_getEnumCaseMultiPayload();
  sub_10023754C(v36, type metadata accessor for SuggestedSongsDataSource.Placement);
  v39 = v74;
  v40 = &enum case for Image.Scale.medium(_:);
  if (v38 != 1)
  {
    v40 = &enum case for Image.Scale.small(_:);
  }

  v41 = v73;
  v42 = v75;
  (*(v74 + 104))(v73, *v40, v75);
  v43 = swift_getKeyPath();
  v44 = v81;
  v45 = (v81 + *(v68 + 36));
  v46 = sub_10010FC20(&qword_1011A13C0);
  (*(v39 + 32))(v45 + *(v46 + 28), v41, v42);
  *v45 = v43;
  (*(v70 + 32))(v44, v80, v71);
  v47 = v37;
  v48 = v72;
  sub_1002372D4(v30 + v37, v72, v67);
  v49 = swift_getEnumCaseMultiPayload();
  sub_10023754C(v48, type metadata accessor for SuggestedSongsDataSource.Placement);
  if (v49 == 1)
  {
    if (qword_10117F390 != -1)
    {
      swift_once();
    }
  }

  else
  {
    v50 = [objc_opt_self() defaultMetrics];
    [v50 scaledValueForValue:24.0];
  }

  v51 = v76;
  sub_1002372D4(v30 + v47, v76, type metadata accessor for SuggestedSongsDataSource.Placement);
  v52 = swift_getEnumCaseMultiPayload();
  sub_10023754C(v51, type metadata accessor for SuggestedSongsDataSource.Placement);
  if (v52 == 1)
  {
    if (qword_10117F390 != -1)
    {
      swift_once();
    }
  }

  else
  {
    v53 = [objc_opt_self() defaultMetrics];
    [v53 scaledValueForValue:24.0];
  }

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v54 = v78;
  sub_10003D17C(v81, v78, &qword_101185BB8);
  v55 = (v54 + *(v77 + 36));
  v56 = v88;
  v55[4] = v87;
  v55[5] = v56;
  v55[6] = v89;
  v57 = v84;
  *v55 = v83;
  v55[1] = v57;
  v58 = v86;
  v55[2] = v85;
  v55[3] = v58;
  v59 = static Alignment.center.getter();
  v61 = v60;
  v62 = sub_10010FC20(&qword_101185B90);
  v63 = v79;
  v64 = v79 + *(v62 + 36);
  sub_100228BAC(v30, v64);
  v65 = (v64 + *(sub_10010FC20(&qword_1011858A0) + 36));
  *v65 = v59;
  v65[1] = v61;
  return sub_10003D17C(v54, v63, &qword_101185BA8);
}

uint64_t sub_100228BAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10010FC20(&qword_1011858A8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v23 - v6);
  v8 = type metadata accessor for SuggestedSongsDataSource.Placement(0);
  __chkstk_darwin(v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v23 - v12;
  v14 = *(a1 + *(type metadata accessor for SuggestedSongsModule.SongCell(0) + 24) + 8);
  v15 = OBJC_IVAR____TtC5Music24SuggestedSongsDataSource_placement;
  swift_beginAccess();
  sub_1002372D4(v14 + v15, v13, type metadata accessor for SuggestedSongsDataSource.Placement);
  sub_10023733C(v13, v10, type metadata accessor for SuggestedSongsDataSource.Placement);
  LODWORD(v14) = swift_getEnumCaseMultiPayload();
  sub_10023754C(v10, type metadata accessor for SuggestedSongsDataSource.Placement);
  if (v14 == 1)
  {
    v16 = 1;
  }

  else
  {
    static Color.white.getter();
    v17 = Color.opacity(_:)();

    KeyPath = swift_getKeyPath();
    v19 = *(v4 + 36);
    v20 = enum case for BlendMode.plusLighter(_:);
    v21 = type metadata accessor for BlendMode();
    (*(*(v21 - 8) + 104))(v7 + v19, v20, v21);
    *v7 = KeyPath;
    v7[1] = v17;
    sub_10003D17C(v7, a2, &qword_1011858A8);
    v16 = 0;
  }

  return (*(v5 + 56))(a2, v16, 1, v4);
}

uint64_t sub_100228E4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v107 = a3;
  v109 = a4;
  v6 = sub_10010FC20(&qword_101185CD0);
  __chkstk_darwin(v6 - 8);
  v110 = v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v87 - v9;
  v11 = type metadata accessor for SuggestedSongsModule.SongCell(0);
  v104 = *(v11 - 8);
  __chkstk_darwin(v11);
  v105 = v12;
  v106 = v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DynamicTypeSize();
  v116 = *(v13 - 8);
  v117 = v13;
  __chkstk_darwin(v13);
  v99 = v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v87 - v16;
  v18 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v18);
  v115 = (v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v20);
  v22 = (v87 - v21);
  v114 = type metadata accessor for RoundedRectangle._Inset();
  __chkstk_darwin(v114);
  v98 = v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = v87 - v25;
  v113 = type metadata accessor for ContentShapeKinds();
  v96 = *(v113 - 8);
  __chkstk_darwin(v113);
  v112 = v87 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = v87 - v29;
  v31 = sub_10010FC20(&qword_101185CD8);
  __chkstk_darwin(v31 - 8);
  v33 = v87 - v32;
  v93 = sub_10010FC20(&qword_101185CE0);
  __chkstk_darwin(v93);
  v111 = v87 - v34;
  v97 = sub_10010FC20(&qword_101185CE8);
  __chkstk_darwin(v97);
  v100 = v87 - v35;
  v36 = sub_10010FC20(&qword_101185CF0);
  v102 = *(v36 - 8);
  v103 = v36;
  __chkstk_darwin(v36);
  v101 = v87 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v118 = v87 - v39;
  v94 = v33;
  v87[0] = a2;
  sub_100229A40(a1, a2, v33);
  v95 = v30;
  static ContentShapeKinds.contextMenuPreview.getter();
  if (qword_10117F398 != -1)
  {
    swift_once();
  }

  v108 = v10;
  v91 = *(&xmmword_101184EF0 + 1);
  v92 = xmmword_101184EF0;
  v90 = byte_101184F00;
  v40 = Corner.radius(in:)(xmmword_101184EF0, 0.0, 0.0, 0.0, 0.0, *(&xmmword_101184EF0 + 1), byte_101184F00);
  v41 = *(v18 + 20);
  v42 = enum case for RoundedCornerStyle.continuous(_:);
  v43 = type metadata accessor for RoundedCornerStyle();
  v44 = *(v43 - 8);
  v45 = *(v44 + 104);
  v89 = v42;
  v88 = v45;
  v87[1] = v44 + 104;
  v45(v22 + v41, v42, v43);
  *v22 = v40;
  v22[1] = v40;
  sub_10056CABC(v17);
  if (qword_10117FB28 != -1)
  {
    swift_once();
  }

  v119 = a1;
  v46 = byte_10119CDC0;
  if (byte_10119CDC0 == 1)
  {
    v47 = *(v116 + 8);
    v47(v17, v117);
    v48 = 10.0;
  }

  else
  {
    v49 = DynamicTypeSize.isAccessibilitySize.getter();
    v47 = *(v116 + 8);
    v47(v17, v117);
    v48 = 4.0;
    if (v49)
    {
      v48 = 14.0;
    }
  }

  v50 = -v48;
  sub_10023733C(v22, v26, &type metadata accessor for RoundedRectangle);
  *&v26[*(v114 + 20)] = v50;
  v51 = v111;
  v52 = v111 + *(v93 + 36);
  sub_10023733C(v26, v52, &type metadata accessor for RoundedRectangle._Inset);
  v53 = sub_10010FC20(&qword_101185CF8);
  v54 = *(v96 + 32);
  v54(v52 + *(v53 + 40), v95, v113);
  *(v52 + *(v53 + 36)) = 0;
  sub_10003D17C(v94, v51, &qword_101185CD8);
  static ContentShapeKinds.interaction.getter();
  v55 = Corner.radius(in:)(v92, 0.0, 0.0, 0.0, 0.0, v91, v90);
  v56 = v115;
  v88(v115 + *(v18 + 20), v89, v43);
  *v56 = v55;
  v56[1] = v55;
  v57 = v99;
  sub_10056CABC(v99);
  if (v46)
  {
    v47(v57, v117);
    v58 = 10.0;
  }

  else
  {
    v59 = DynamicTypeSize.isAccessibilitySize.getter();
    v47(v57, v117);
    v58 = 4.0;
    if (v59)
    {
      v58 = 14.0;
    }
  }

  v60 = -v58;
  v61 = v98;
  sub_10023733C(v115, v98, &type metadata accessor for RoundedRectangle);
  *(v61 + *(v114 + 20)) = v60;
  v62 = v97;
  v63 = v100;
  v64 = &v100[*(v97 + 36)];
  sub_10023733C(v61, v64, &type metadata accessor for RoundedRectangle._Inset);
  v54(v64 + *(v53 + 40), v112, v113);
  *(v64 + *(v53 + 36)) = 0;
  sub_10003D17C(v111, v63, &qword_101185CE0);
  v65 = v119;
  v66 = sub_10022B56C();
  __chkstk_darwin(v66);
  v67 = v106;
  v86[2] = v65;
  v86[3] = v107;
  sub_1002372D4(v65, v106, type metadata accessor for SuggestedSongsModule.SongCell);
  v68 = (*(v104 + 80) + 16) & ~*(v104 + 80);
  v69 = swift_allocObject();
  sub_10023733C(v67, v69 + v68, type metadata accessor for SuggestedSongsModule.SongCell);
  v70 = sub_10023AAC8();
  v71 = sub_10023AE50();
  View.actionContextMenu<A>(title:menu:excluding:preview:previewAction:)(0, 0, v66, &off_101099AC0, sub_10023AA18, v86, sub_10023AA20, v69, v118, v62, &type metadata for ContextualPreview, v70, v71);

  sub_1000095E8(v63, &qword_101185CE8);
  v72 = sub_100229E38();
  v73 = v108;
  if (v72)
  {
    v74 = 1;
  }

  else
  {
    sub_1000089F8(v87[0], v108, &qword_101185B88);
    v74 = 0;
  }

  v75 = sub_10010FC20(&qword_101185B88);
  (*(*(v75 - 8) + 56))(v73, v74, 1, v75);
  v77 = v101;
  v76 = v102;
  v78 = *(v102 + 16);
  v79 = v118;
  v80 = v103;
  v78(v101, v118, v103);
  v81 = v110;
  sub_1000089F8(v73, v110, &qword_101185CD0);
  v82 = v109;
  v78(v109, v77, v80);
  v83 = sub_10010FC20(&qword_101185D68);
  sub_1000089F8(v81, &v82[*(v83 + 48)], &qword_101185CD0);
  sub_1000095E8(v73, &qword_101185CD0);
  v84 = *(v76 + 8);
  v84(v79, v80);
  sub_1000095E8(v81, &qword_101185CD0);
  return (v84)(v77, v80);
}

uint64_t sub_100229A40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27[1] = a3;
  v5 = sub_10010FC20(&qword_101185D50);
  __chkstk_darwin(v5);
  v7 = v27 - v6;
  v8 = sub_10010FC20(&qword_101185D78);
  __chkstk_darwin(v8);
  v10 = v27 - v9;
  v11 = sub_10010FC20(&qword_101185D40);
  __chkstk_darwin(v11 - 8);
  v13 = v27 - v12;
  v14 = sub_10010FC20(&qword_101185D30);
  __chkstk_darwin(v14);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = v27 - v18;
  if (sub_100229E38())
  {
    *v13 = static HorizontalAlignment.leading.getter();
    *(v13 + 1) = 0;
    v13[16] = 0;
    v20 = sub_10010FC20(&qword_101185D88);
    sub_10022A4B8(a1, a2, &v13[*(v20 + 44)]);
    static Alignment.leading.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    sub_10003D17C(v13, v16, &qword_101185D40);
    v21 = &v16[*(v14 + 36)];
    v22 = v33;
    *(v21 + 4) = v32;
    *(v21 + 5) = v22;
    *(v21 + 6) = v34;
    v23 = v29;
    *v21 = v28;
    *(v21 + 1) = v23;
    v24 = v31;
    *(v21 + 2) = v30;
    *(v21 + 3) = v24;
    sub_10003D17C(v16, v19, &qword_101185D30);
    sub_1000089F8(v19, v10, &qword_101185D30);
    swift_storeEnumTagMultiPayload();
    sub_10023AD98();
    sub_100020674(&qword_101185D48, &qword_101185D50);
    _ConditionalContent<>.init(storage:)();
    return sub_1000095E8(v19, &qword_101185D30);
  }

  else
  {
    *v7 = static VerticalAlignment.center.getter();
    *(v7 + 1) = 0;
    v7[16] = 0;
    v26 = sub_10010FC20(&qword_101185D80);
    sub_10022AD1C(a1, &v7[*(v26 + 44)]);
    sub_1000089F8(v7, v10, &qword_101185D50);
    swift_storeEnumTagMultiPayload();
    sub_10023AD98();
    sub_100020674(&qword_101185D48, &qword_101185D50);
    _ConditionalContent<>.init(storage:)();
    return sub_1000095E8(v7, &qword_101185D50);
  }
}

BOOL sub_100229E38()
{
  v39 = type metadata accessor for UserInterfaceSizeClass();
  v37 = *(v39 - 8);
  __chkstk_darwin(v39);
  v34 = &v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_10010FC20(&qword_101185768);
  __chkstk_darwin(v36);
  v3 = &v33 - v2;
  v4 = sub_10010FC20(&unk_101184290);
  __chkstk_darwin(v4 - 8);
  v35 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v33 - v7;
  __chkstk_darwin(v9);
  v11 = &v33 - v10;
  v12 = type metadata accessor for DynamicTypeSize();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v33 - v17;
  v19 = type metadata accessor for SuggestedSongsModule.SongCell(0);
  v38 = v0;
  sub_10056CABC(v18);
  (*(v13 + 104))(v15, enum case for DynamicTypeSize.accessibility3(_:), v12);
  sub_100236DF0(&qword_1011810B0, &type metadata accessor for DynamicTypeSize);
  v20 = dispatch thunk of static Comparable.< infix(_:_:)();
  v21 = *(v13 + 8);
  v21(v15, v12);
  v21(v18, v12);
  if (v20)
  {
    return 0;
  }

  v33 = v19;
  sub_10056CAE4(v11);
  v23 = v37;
  v24 = v39;
  (*(v37 + 104))(v8, enum case for UserInterfaceSizeClass.compact(_:), v39);
  (*(v23 + 56))(v8, 0, 1, v24);
  v25 = *(v36 + 48);
  sub_1000089F8(v11, v3, &unk_101184290);
  sub_1000089F8(v8, &v3[v25], &unk_101184290);
  v26 = *(v23 + 48);
  if (v26(v3, 1, v24) == 1)
  {
    sub_1000095E8(v8, &unk_101184290);
    sub_1000095E8(v11, &unk_101184290);
    if (v26(&v3[v25], 1, v39) == 1)
    {
      sub_1000095E8(v3, &unk_101184290);
      return 1;
    }

    goto LABEL_8;
  }

  v27 = v35;
  sub_1000089F8(v3, v35, &unk_101184290);
  if (v26(&v3[v25], 1, v39) == 1)
  {
    sub_1000095E8(v8, &unk_101184290);
    sub_1000095E8(v11, &unk_101184290);
    (*(v23 + 8))(v27, v39);
LABEL_8:
    sub_1000095E8(v3, &qword_101185768);
    goto LABEL_9;
  }

  v29 = &v3[v25];
  v30 = v34;
  v31 = v39;
  (*(v23 + 32))(v34, v29, v39);
  sub_100236DF0(&qword_101185778, &type metadata accessor for UserInterfaceSizeClass);
  LODWORD(v36) = dispatch thunk of static Equatable.== infix(_:_:)();
  v32 = *(v23 + 8);
  v32(v30, v31);
  sub_1000095E8(v8, &unk_101184290);
  sub_1000095E8(v11, &unk_101184290);
  v32(v27, v31);
  sub_1000095E8(v3, &unk_101184290);
  if (v36)
  {
    return 1;
  }

LABEL_9:
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v28 = v40;
  if (qword_10117FB30 != -1)
  {
    swift_once();
  }

  return v28 < *&qword_1012192C8;
}

uint64_t sub_10022A4B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a3;
  v54 = type metadata accessor for SuggestedSongsModule.VerticalText(0);
  __chkstk_darwin(v54);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v56 = &v49 - v8;
  v9 = type metadata accessor for DynamicTypeSize();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v49 - v14;
  v16 = sub_10010FC20(&qword_101185D90);
  __chkstk_darwin(v16 - 8);
  v18 = &v49 - v17;
  v50 = sub_10010FC20(&qword_101185D98);
  __chkstk_darwin(v50);
  v20 = &v49 - v19;
  v51 = sub_10010FC20(&qword_101185DA0);
  __chkstk_darwin(v51);
  v53 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v49 - v23;
  __chkstk_darwin(v25);
  v52 = &v49 - v26;
  *v18 = static VerticalAlignment.center.getter();
  *(v18 + 1) = 0;
  v18[16] = 0;
  v27 = sub_10010FC20(&qword_101185DA8);
  sub_10022AADC(a1, a2, &v18[*(v27 + 44)]);
  type metadata accessor for SuggestedSongsModule.SongCell(0);
  v55 = a1;
  sub_10056CABC(v15);
  if (qword_10117FB28 != -1)
  {
    swift_once();
  }

  if (byte_10119CDC0)
  {
    (*(v10 + 8))(v15, v9);
  }

  else
  {
    (*(v10 + 104))(v12, enum case for DynamicTypeSize.accessibility3(_:), v9);
    static DynamicTypeSize.< infix(_:_:)();
    v28 = *(v10 + 8);
    v28(v12, v9);
    v28(v15, v9);
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  sub_10003D17C(v18, v20, &qword_101185D90);
  v29 = &v20[*(v50 + 36)];
  v30 = v58;
  *v29 = v57;
  *(v29 + 1) = v30;
  *(v29 + 2) = v59;
  v31 = static Edge.Set.bottom.getter();
  if (qword_10117FBA0 != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  sub_10003D17C(v20, v24, &qword_101185D98);
  v40 = v52;
  v41 = &v24[*(v51 + 36)];
  *v41 = v31;
  *(v41 + 1) = v33;
  *(v41 + 2) = v35;
  *(v41 + 3) = v37;
  *(v41 + 4) = v39;
  v41[40] = 0;
  sub_10003D17C(v24, v40, &qword_101185DA0);
  v42 = type metadata accessor for Song();
  v43 = v56;
  (*(*(v42 - 8) + 16))(v56, v55, v42);
  v44 = *(v54 + 20);
  *(v43 + v44) = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610);
  swift_storeEnumTagMultiPayload();
  v45 = v53;
  sub_1000089F8(v40, v53, &qword_101185DA0);
  sub_1002372D4(v43, v6, type metadata accessor for SuggestedSongsModule.VerticalText);
  v46 = v49;
  sub_1000089F8(v45, v49, &qword_101185DA0);
  v47 = sub_10010FC20(&qword_101185DB0);
  sub_1002372D4(v6, v46 + *(v47 + 48), type metadata accessor for SuggestedSongsModule.VerticalText);
  sub_10023754C(v43, type metadata accessor for SuggestedSongsModule.VerticalText);
  sub_1000095E8(v40, &qword_101185DA0);
  sub_10023754C(v6, type metadata accessor for SuggestedSongsModule.VerticalText);
  return sub_1000095E8(v45, &qword_101185DA0);
}

uint64_t sub_10022AADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10010FC20(&qword_101185B88);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = type metadata accessor for SuggestedSongsModule.Artwork(0);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v21 - v14;
  v16 = type metadata accessor for Song();
  (*(*(v16 - 8) + 16))(v15, a1, v16);
  v17 = *(v10 + 28);
  *&v15[v17] = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610);
  swift_storeEnumTagMultiPayload();
  sub_1002372D4(v15, v12, type metadata accessor for SuggestedSongsModule.Artwork);
  sub_1000089F8(a2, v8, &qword_101185B88);
  sub_1002372D4(v12, a3, type metadata accessor for SuggestedSongsModule.Artwork);
  v18 = sub_10010FC20(&qword_101185DB8);
  v19 = a3 + *(v18 + 48);
  *v19 = 0;
  *(v19 + 8) = 1;
  sub_1000089F8(v8, a3 + *(v18 + 64), &qword_101185B88);
  sub_10023754C(v15, type metadata accessor for SuggestedSongsModule.Artwork);
  sub_1000095E8(v8, &qword_101185B88);
  return sub_10023754C(v12, type metadata accessor for SuggestedSongsModule.Artwork);
}

uint64_t sub_10022AD1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v60 = type metadata accessor for SuggestedSongsModule.HorizontalText(0);
  __chkstk_darwin(v60);
  v49 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_10010FC20(&qword_101185DC0);
  __chkstk_darwin(v53);
  v58 = &v48 - v4;
  v57 = type metadata accessor for SuggestedSongsModule.VerticalText(0);
  __chkstk_darwin(v57);
  v48 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DynamicTypeSize();
  v51 = *(v6 - 8);
  v52 = v6;
  __chkstk_darwin(v6);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10010FC20(&unk_101184290);
  __chkstk_darwin(v9 - 8);
  v11 = &v48 - v10;
  v12 = sub_10010FC20(&qword_101185DC8);
  __chkstk_darwin(v12 - 8);
  v59 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v55 = &v48 - v15;
  v16 = type metadata accessor for SuggestedSongsModule.Artwork(0);
  v17 = v16 - 8;
  __chkstk_darwin(v16);
  v56 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v48 - v20;
  v22 = type metadata accessor for Song();
  v23 = *(*(v22 - 8) + 16);
  v23(v21, a1, v22);
  v24 = *(v17 + 28);
  *&v21[v24] = swift_getKeyPath();
  v25 = sub_10010FC20(&qword_10118A610);
  v54 = v21;
  v50 = v25;
  swift_storeEnumTagMultiPayload();
  v26 = type metadata accessor for SuggestedSongsModule.SongCell(0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v27 = *&v64;
  sub_10056CAE4(v11);
  sub_10056CABC(v8);
  LOBYTE(v24) = sub_10068D124(v11, v8, v27);
  (*(v51 + 8))(v8, v52);
  sub_1000095E8(v11, &unk_101184290);
  if (v24)
  {
    v28 = v48;
    v23(v48, a1, v22);
    v29 = *(v57 + 20);
    *(v28 + v29) = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    sub_1002372D4(v28, v58, type metadata accessor for SuggestedSongsModule.VerticalText);
    swift_storeEnumTagMultiPayload();
    sub_100236DF0(&qword_101185DD0, type metadata accessor for SuggestedSongsModule.VerticalText);
    sub_100236DF0(&qword_101185DD8, type metadata accessor for SuggestedSongsModule.HorizontalText);
    v30 = v55;
    _ConditionalContent<>.init(storage:)();
    v31 = type metadata accessor for SuggestedSongsModule.VerticalText;
    v32 = v28;
  }

  else
  {
    v33 = v49;
    v23(v49, a1, v22);
    v34 = *(v26 + 32);
    v35 = v60;
    sub_1002372D4(a1 + v34, v33 + *(v60 + 24), type metadata accessor for SuggestedSongsModule.Specs);
    v36 = (v33 + v35[5]);
    type metadata accessor for SuggestedSongsDataSource(0);
    sub_100236DF0(&qword_1011A4A60, type metadata accessor for SuggestedSongsDataSource);

    *v36 = ObservedObject.init(wrappedValue:)();
    v36[1] = v37;
    v38 = v33 + v35[7];
    type metadata accessor for CGSize(0);
    v62 = 0;
    v63 = 0;
    State.init(wrappedValue:)();
    v39 = v65;
    *v38 = v64;
    *(v38 + 16) = v39;
    v40 = v35[8];
    *(v33 + v40) = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v41 = v35[9];
    *(v33 + v41) = swift_getKeyPath();
    sub_10010FC20(&unk_101184840);
    swift_storeEnumTagMultiPayload();
    sub_1002372D4(v33, v58, type metadata accessor for SuggestedSongsModule.HorizontalText);
    swift_storeEnumTagMultiPayload();
    sub_100236DF0(&qword_101185DD0, type metadata accessor for SuggestedSongsModule.VerticalText);
    sub_100236DF0(&qword_101185DD8, type metadata accessor for SuggestedSongsModule.HorizontalText);
    v30 = v55;
    _ConditionalContent<>.init(storage:)();
    v31 = type metadata accessor for SuggestedSongsModule.HorizontalText;
    v32 = v33;
  }

  sub_10023754C(v32, v31);
  v42 = v54;
  v43 = v56;
  sub_1002372D4(v54, v56, type metadata accessor for SuggestedSongsModule.Artwork);
  v44 = v59;
  sub_1000089F8(v30, v59, &qword_101185DC8);
  v45 = v61;
  sub_1002372D4(v43, v61, type metadata accessor for SuggestedSongsModule.Artwork);
  v46 = sub_10010FC20(&qword_101185DE0);
  sub_1000089F8(v44, v45 + *(v46 + 48), &qword_101185DC8);
  sub_1000095E8(v30, &qword_101185DC8);
  sub_10023754C(v42, type metadata accessor for SuggestedSongsModule.Artwork);
  sub_1000095E8(v44, &qword_101185DC8);
  return sub_10023754C(v43, type metadata accessor for SuggestedSongsModule.Artwork);
}

uint64_t sub_10022B56C()
{
  v1 = type metadata accessor for UUID();
  v125 = *(v1 - 8);
  v126 = v1;
  __chkstk_darwin(v1);
  v124 = &v109 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10010FC20(&unk_1011838D0);
  v120 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v123 = &v109 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = v4;
  __chkstk_darwin(v5);
  v132 = &v109 - v6;
  v7 = sub_10010FC20(&unk_1011845D0);
  v118 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v122 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = v8;
  __chkstk_darwin(v9);
  v131 = &v109 - v10;
  v11 = type metadata accessor for Song();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v109 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10010FC20(&unk_1011838E0);
  __chkstk_darwin(v15 - 8);
  v116 = &v109 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v117 = &v109 - v18;
  __chkstk_darwin(v19);
  v128 = &v109 - v20;
  __chkstk_darwin(v21);
  v115 = &v109 - v22;
  v23 = sub_10010FC20(&unk_10118AB20);
  __chkstk_darwin(v23 - 8);
  v127 = &v109 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v130 = &v109 - v26;
  v27 = type metadata accessor for SuggestedSongsDataSource.Placement(0);
  __chkstk_darwin(v27);
  v29 = &v109 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v109 - v31;
  v114 = type metadata accessor for SuggestedSongsModule.SongCell(0);
  v33 = v114[6];
  v129 = v0;
  v34 = *(v0 + v33 + 8);
  v35 = OBJC_IVAR____TtC5Music24SuggestedSongsDataSource_placement;
  swift_beginAccess();
  sub_1002372D4(v34 + v35, v32, type metadata accessor for SuggestedSongsDataSource.Placement);
  sub_10023733C(v32, v29, type metadata accessor for SuggestedSongsDataSource.Placement);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_10023754C(v29, type metadata accessor for SuggestedSongsDataSource.Placement);
  if (EnumCaseMultiPayload != 1)
  {
    return 0;
  }

  sub_10012B7A8(v34 + OBJC_IVAR____TtC5Music24SuggestedSongsDataSource_presentationSource, &v147);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_10012BA6C(&v147);
  if (!Strong)
  {
    return 0;
  }

  sub_10010FC20(&unk_101183900);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_100EBC6B0;
  *(v38 + 56) = v11;
  *(v38 + 64) = &protocol witness table for Song;
  v39 = sub_10001C8B8((v38 + 32));
  v40 = *(v12 + 16);
  v41 = v129;
  v40(v39, v129, v11);
  type metadata accessor for MusicLibrary();
  v110 = static MusicLibrary.shared.getter();
  sub_100009F78(0, &qword_10118AB70);
  v40(v14, v41, v11);
  v42 = Strong;
  v43 = MPCPlaybackIntent.init<A>(_:)();
  v44 = v115;
  PlaybackIntentDescriptor.IntentType.init(_:)(v43, v115);
  *&v149 = 0;
  v147 = 0u;
  v148 = 0u;
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  v45 = qword_101218AD8;
  v46 = v128;
  sub_1000089F8(v44, v128, &unk_1011838E0);
  v47 = v45;
  v48 = UIViewController.playActivityInformation.getter();
  v111 = v49;
  v112 = v48;
  v51 = v50;
  v53 = v52;
  sub_1000089F8(&v147, &v139, &unk_101183910);
  if (*(&v140 + 1))
  {
    sub_100059A8C(&v139, &v143);
  }

  else
  {
    *&v155 = v42;
    sub_100009F78(0, &qword_101183D40);
    v55 = v42;
    sub_10010FC20(&unk_101183920);
    if (swift_dynamicCast())
    {
      sub_100059A8C(&v158, &v143);
    }

    else
    {
      v160 = 0;
      v158 = 0u;
      v159 = 0u;
      *&v143 = v55;
      v56 = v55;
      v57 = String.init<A>(reflecting:)();
      v144 = &type metadata for Player.CommandIssuerIdentity;
      v145 = &protocol witness table for Player.CommandIssuerIdentity;
      *&v143 = v57;
      *(&v143 + 1) = v58;
      if (*(&v159 + 1))
      {
        sub_1000095E8(&v158, &unk_101183910);
      }
    }

    v46 = v128;
    if (*(&v140 + 1))
    {
      sub_1000095E8(&v139, &unk_101183910);
    }
  }

  v59 = v130;
  v109 = v47;
  Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v47, v46, v112, v51, v53, v111, &v143, v130);

  sub_1000095E8(&v147, &unk_101183910);
  sub_1000095E8(v44, &unk_1011838E0);
  v60 = type metadata accessor for Actions.PlaybackContext();
  v61 = *(v60 - 8);
  (*(v61 + 56))(v59, 0, 1, v60);
  v62 = type metadata accessor for PlaylistContext();
  (*(*(v62 - 8) + 56))(v131, 1, 1, v62);
  v149 = 0u;
  v150 = 0u;
  v147 = 0u;
  v148 = 0u;
  v151 = 1;
  v152 = 0;
  v154 = 0;
  v153 = 0;
  v63 = v132;
  sub_1002372D4(v129 + v114[12], v132, type metadata accessor for Actions.MetricsReportingContext);
  v64 = type metadata accessor for Actions.MetricsReportingContext();
  (*(*(v64 - 8) + 56))(v63, 0, 1, v64);
  sub_100008FE4(v38 + 32, v146);

  sub_1000089F8(&v147, &v139, &unk_1011845E0);
  if (v142 == 1)
  {
    v160 = 0;
    v158 = 0u;
    v159 = 0u;
    v161 = xmmword_100EBCEF0;
    PresentationSource.init(viewController:position:)(v42, &v158, &v143);
    v65 = v127;
    if (v142 != 1)
    {
      sub_1000095E8(&v139, &unk_1011845E0);
    }
  }

  else
  {
    sub_10012B828(&v139, &v143);
    v65 = v127;
  }

  swift_getObjectType();
  v66 = swift_conformsToProtocol2();
  if (v66)
  {
    v115 = v66;
    v67 = v42;
    v128 = v42;
  }

  else
  {
    v128 = 0;
    v115 = 0;
  }

  v129 = swift_allocBox();
  v69 = v68;
  sub_1000089F8(v130, v65, &unk_10118AB20);
  v70 = *(v61 + 48);
  v71 = v70(v65, 1, v60);
  v113 = v42;
  if (v71 == 1)
  {
    v72 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
    v73 = v117;
    (*(*(v72 - 8) + 56))(v117, 1, 1, v72);
    v141 = 0;
    v139 = 0u;
    v140 = 0u;
    sub_1000089F8(v73, v116, &unk_1011838E0);
    v114 = v109;
    v74 = UIViewController.playActivityInformation.getter();
    v112 = v75;
    v77 = v76;
    v79 = v78;
    sub_1000089F8(&v139, &v137, &unk_101183910);
    if (v138)
    {
      sub_100059A8C(&v137, &v155);
    }

    else
    {
      v136 = v42;
      sub_100009F78(0, &qword_101183D40);
      v80 = v42;
      sub_10010FC20(&unk_101183920);
      if (swift_dynamicCast())
      {
        sub_100059A8C(&v133, &v155);
        v65 = v127;
      }

      else
      {
        v135 = 0;
        v133 = 0u;
        v134 = 0u;
        *&v155 = v80;
        v81 = v80;
        v82 = String.init<A>(reflecting:)();
        *(&v156 + 1) = &type metadata for Player.CommandIssuerIdentity;
        v157 = &protocol witness table for Player.CommandIssuerIdentity;
        *&v155 = v82;
        *(&v155 + 1) = v83;
        v65 = v127;
        if (*(&v134 + 1))
        {
          sub_1000095E8(&v133, &unk_101183910);
        }
      }

      v42 = v113;
      if (v138)
      {
        sub_1000095E8(&v137, &unk_101183910);
      }
    }

    Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v114, v116, v74, v112, v77, v79, &v155, v69);
    sub_1000095E8(&v139, &unk_101183910);
    sub_1000095E8(v117, &unk_1011838E0);
    if (v70(v65, 1, v60) != 1)
    {
      sub_1000095E8(v65, &unk_10118AB20);
    }
  }

  else
  {
    sub_10023733C(v65, v69, type metadata accessor for Actions.PlaybackContext);
  }

  v84 = *(v60 + 28);
  sub_1000089F8(&v69[v84], &v155, &unk_101183910);
  if (*(&v156 + 1))
  {
    sub_100059A8C(&v155, &v139);
  }

  else
  {
    *&v139 = v42;
    v85 = v42;
    v86 = String.init<A>(reflecting:)();
    *(&v140 + 1) = &type metadata for Player.CommandIssuerIdentity;
    v141 = &protocol witness table for Player.CommandIssuerIdentity;
    *&v139 = v86;
    *(&v139 + 1) = v87;
    if (*(&v156 + 1))
    {
      sub_1000095E8(&v155, &unk_101183910);
    }
  }

  sub_10010FC20(&unk_101183930);
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_100EBDC20;
  *(v88 + 56) = &type metadata for Player.CommandIssuerIdentity;
  *(v88 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v88 + 32) = 0x4D747865746E6F43;
  *(v88 + 40) = 0xEB00000000756E65;
  sub_100008FE4(&v139, v88 + 72);
  v89 = static Player.CommandIssuer<>.combining(_:)();
  v91 = v90;

  sub_10000959C(&v139);
  *(&v140 + 1) = &type metadata for Player.CommandIssuerIdentity;
  v141 = &protocol witness table for Player.CommandIssuerIdentity;
  *&v139 = v89;
  *(&v139 + 1) = v91;
  sub_10006B010(&v139, &v69[v84], &unk_101183910);
  sub_100008FE4(v146, &v139);
  sub_10010FC20(&unk_10118AB50);
  v127 = String.init<A>(describing:)();
  v117 = v92;
  v116 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100008FE4(v146, &v137);
  sub_10012B7A8(&v143, &v139);
  v93 = v123;
  sub_1000089F8(v132, v123, &unk_1011838D0);
  v94 = v122;
  sub_1000089F8(v131, v122, &unk_1011845D0);
  v95 = (*(v120 + 80) + 160) & ~*(v120 + 80);
  v96 = (v121 + v95 + 7) & 0xFFFFFFFFFFFFFFF8;
  v97 = (v96 + 15) & 0xFFFFFFFFFFFFFFF8;
  v98 = (*(v118 + 80) + v97 + 8) & ~*(v118 + 80);
  v121 = (v98 + v119 + 7) & 0xFFFFFFFFFFFFFFF8;
  v99 = (v98 + v119 + 31) & 0xFFFFFFFFFFFFFFF8;
  v100 = swift_allocObject();
  sub_100059A8C(&v137, v100 + 16);
  *(v100 + 56) = v110;
  sub_10012B828(&v139, v100 + 64);
  sub_10003D17C(v93, v100 + v95, &unk_1011838D0);
  *(v100 + v96) = v116;
  *(v100 + v97) = v129;
  sub_10003D17C(v94, v100 + v98, &unk_1011845D0);
  v101 = v100 + v121;
  v102 = v115;
  *v101 = v128;
  *(v101 + 8) = v102;
  *(v101 + 16) = 2;
  v103 = (v100 + v99);
  *v103 = variable initialization expression of Library.Context.playlistVariants;
  v103[1] = 0;
  swift_unknownObjectRetain();

  v104 = v124;
  UUID.init()();
  v105 = UUID.uuidString.getter();
  v107 = v106;
  (*(v125 + 8))(v104, v126);
  v162._countAndFlagsBits = v127;
  v162._object = v117;
  ActionMenuBuilder.init(id:debugDescription:actionBuilder:)(v162, v105, v107, sub_1001CFB84, v100, &v155);
  swift_unknownObjectRelease();

  sub_10012BA6C(&v143);
  sub_10000959C(v146);
  sub_1000095E8(v132, &unk_1011838D0);
  sub_1000095E8(&v147, &unk_1011845E0);
  sub_1000095E8(v131, &unk_1011845D0);
  sub_1000095E8(v130, &unk_10118AB20);

  v108 = ActionMenuBuilder.menu(excluding:includeUnsupported:)(_swiftEmptyArrayStorage, 0);

  v147 = v155;
  sub_100015BB0(&v147);
  v143 = v156;
  sub_100015BB0(&v143);

  return v108;
}

uint64_t sub_10022C684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for Song();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6, v8);
  v11 = sub_100248BF8();
  v12 = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__showChevron;
  if (((a2 != 0) ^ *(v11 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__showChevron)))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v15[-2] = v11;
    LOBYTE(v15[-1]) = a2 != 0;
    v15[1] = v11;
    sub_100236DF0(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    result = (*(v7 + 8))(v10, v6);
  }

  else
  {
    result = (*(v7 + 8))(v10, v6);
    *(v11 + v12) = a2 != 0;
  }

  *a3 = v11;
  return result;
}

void sub_10022C8A0(uint64_t a1)
{
  v2 = type metadata accessor for SuggestedSongsModule.SongCell(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v7 - 8);
  v9 = &v17[-v8];
  sub_10012B7A8(*(a1 + *(v3 + 32) + 8) + OBJC_IVAR____TtC5Music24SuggestedSongsDataSource_presentationSource, v17);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_10012BA6C(v17);
  if (Strong)
  {
    v11 = sub_10003169C();

    if (v11)
    {
      v12 = type metadata accessor for TaskPriority();
      (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
      sub_1002372D4(a1, &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for SuggestedSongsModule.SongCell);
      type metadata accessor for MainActor();

      v13 = static MainActor.shared.getter();
      v14 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v15 = (v5 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
      v16 = swift_allocObject();
      *(v16 + 16) = v13;
      *(v16 + 24) = &protocol witness table for MainActor;
      sub_10023733C(v6, v16 + v14, type metadata accessor for SuggestedSongsModule.SongCell);
      *(v16 + v15) = v11;
      sub_10086E3AC(0, 0, v9, &unk_100EC1608, v16);
    }
  }
}

uint64_t sub_10022CAF8()
{
  v1 = v0;
  v2 = type metadata accessor for SuggestedSongsDataSource.Placement(0);
  __chkstk_darwin(v2);
  v4 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v75 = &v63 - v6;
  __chkstk_darwin(v7);
  v9 = &v63 - v8;
  __chkstk_darwin(v10);
  v12 = &v63 - v11;
  __chkstk_darwin(v13);
  v15 = &v63 - v14;
  v16 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v16 - 8);
  v74 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v76 = &v63 - v19;
  v20 = type metadata accessor for MetricsEvent.Click(0);
  __chkstk_darwin(v20 - 8);
  v22 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for SuggestedSongsModule.SongCell(0);
  v24 = v0 + *(v23 + 28);
  v25 = *v24;
  v26 = *(v24 + 8);
  v78 = v25;
  v79 = v26;
  sub_10010FC20(&unk_101197960);
  result = State.wrappedValue.getter();
  if (v77)
  {
    return result;
  }

  result = dispatch thunk of MusicSuggestedSongsViewModel.isPerformingUserInitiatedRefresh.getter();
  if (result)
  {
    return result;
  }

  v71 = v4;
  v73 = v22;
  if (qword_10117F1F8 != -1)
  {
    swift_once();
  }

  v28 = Song.id.getter();
  sub_10012BF2C(v28, v29);
  v31 = v30;

  if (v31 > 1u)
  {
    if (v31 == 2)
    {
      sub_10012F360();
      v32 = 62;
      goto LABEL_13;
    }

    sub_10012C194(v1, 0);
LABEL_12:
    dispatch thunk of MusicSuggestedSongsViewModel.didPreview(_:)();
    v32 = 61;
    goto LABEL_13;
  }

  if (v31)
  {
    sub_10012E578();
    goto LABEL_12;
  }

  sub_10012F0E8();
  v32 = 62;
LABEL_13:
  v70 = v32;
  v33 = Song.catalogID.getter();
  v72 = v2;
  if (!v34)
  {
    v33 = Song.id.getter();
  }

  v35 = v33;
  v36 = v34;
  v68 = v34;
  v69 = v33;
  sub_10010FC20(&qword_1011858B0);
  inited = swift_initStackObject();
  v67 = xmmword_100EBDC20;
  *(inited + 16) = xmmword_100EBDC20;
  sub_10010FC20(&qword_101190BE0);
  v38 = swift_initStackObject();
  *(v38 + 16) = v67;
  *(v38 + 32) = 25705;
  *(v38 + 40) = 0xE200000000000000;
  *(v38 + 48) = v35;
  *(v38 + 56) = v36;
  strcpy((v38 + 64), "locationType");
  *(v38 + 77) = 0;
  *(v38 + 78) = -5120;
  *(v38 + 80) = 0x657449666C656853;
  *(v38 + 88) = 0xE90000000000006DLL;

  v39 = sub_10010C578(v38);
  swift_setDeallocating();
  sub_10010FC20(&qword_101183AA0);
  swift_arrayDestroy();
  *(inited + 32) = v39;
  v40 = sub_10010C578(&off_101099B48);
  swift_arrayDestroy();
  *(inited + 40) = v40;
  v41 = type metadata accessor for URL();
  v64 = *(*(v41 - 8) + 56);
  v64(v76, 1, 1, v41);
  *&v67 = sub_10018DA2C(inited);

  v42 = *(v1 + *(v23 + 24) + 8);
  v43 = OBJC_IVAR____TtC5Music24SuggestedSongsDataSource_placement;
  swift_beginAccess();
  sub_1002372D4(v42 + v43, v15, type metadata accessor for SuggestedSongsDataSource.Placement);
  v66 = sub_100222540();
  v65 = v44;
  sub_10023754C(v15, type metadata accessor for SuggestedSongsDataSource.Placement);
  sub_1002372D4(v42 + v43, v12, type metadata accessor for SuggestedSongsDataSource.Placement);
  sub_1002372D4(v12, v9, type metadata accessor for SuggestedSongsDataSource.Placement);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v46 = EnumCaseMultiPayload == 1;
  if (EnumCaseMultiPayload == 1)
  {
    v47 = v12;
  }

  else
  {
    v47 = v9;
  }

  if (v46)
  {
    v48 = v9;
  }

  else
  {
    v48 = v12;
  }

  v49 = 0x72656B636950;
  if (v46)
  {
    v49 = 0x7473696C79616C50;
  }

  v63 = v49;
  if (v46)
  {
    v50 = 0xE800000000000000;
  }

  else
  {
    v50 = 0xE600000000000000;
  }

  sub_10023754C(v47, type metadata accessor for SuggestedSongsDataSource.Placement);
  sub_10023754C(v48, type metadata accessor for SuggestedSongsDataSource.Placement);
  v51 = v74;
  v64(v74, 1, 1, v41);
  v52 = v75;
  sub_1002372D4(v42 + v43, v75, type metadata accessor for SuggestedSongsDataSource.Placement);
  v53 = v71;
  sub_10023733C(v52, v71, type metadata accessor for SuggestedSongsDataSource.Placement);
  LOBYTE(v52) = swift_getEnumCaseMultiPayload() == 1;
  sub_10023754C(v53, type metadata accessor for SuggestedSongsDataSource.Placement);
  v54 = v73;
  MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:pageIdentifier:pageType:pageURL:pageDetails:pageDisplayType:attenuationAvailable:snapshotImpressions:searchTerm:)(v69, v68, 25, v70, v76, v67, 0, 12, v73, 0, 0, 65280, v66, v65, v63, v50, v51, 0, v52, 2, 0, 0, 0);
  v55 = *MetricsReportingController.shared.unsafeMutableAddressor();
  v56 = sub_10053771C();
  v58 = v57;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v59 = qword_101218AD0;
  v60 = GroupActivitiesManager.hasJoined.getter();
  v61 = GroupActivitiesManager.participantsCount.getter();
  v62 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  (*((swift_isaMask & *v55) + 0xB8))(v54, v56, v58, v60 & 1, v61, *(v59 + v62));

  return sub_10023754C(v54, type metadata accessor for MetricsEvent.Click);
}

uint64_t sub_10022D318(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Playlist();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SuggestedSongsModule.SongCell(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v12 - 8);
  v14 = &v21 - v13;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  sub_1002372D4(a2, v11, type metadata accessor for SuggestedSongsModule.SongCell);
  (*(v5 + 16))(v7, a1, v4);
  type metadata accessor for MainActor();
  v16 = static MainActor.shared.getter();
  v17 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v18 = (v10 + *(v5 + 80) + v17) & ~*(v5 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  *(v19 + 24) = &protocol witness table for MainActor;
  sub_10023733C(v11, v19 + v17, type metadata accessor for SuggestedSongsModule.SongCell);
  (*(v5 + 32))(v19 + v18, v7, v4);
  sub_1001F4CB8(0, 0, v14, &unk_100EC1578, v19);
}

uint64_t sub_10022D5D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10022D66C, v7, v6);
}

uint64_t sub_10022D66C()
{
  v1 = *(v0 + 24);

  sub_10022D6D8(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10022D6D8(uint64_t a1)
{
  v31 = type metadata accessor for SuggestedSongsDataSource.Placement(0);
  __chkstk_darwin(v31);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v27 - v6;
  v8 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v8 - 8);
  v32 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v33 = &v27 - v11;
  __chkstk_darwin(v12);
  v14 = &v27 - v13;
  v15 = type metadata accessor for Playlist();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v14, a1, v15);
  v28 = *(v16 + 56);
  v28(v14, 0, 1, v15);
  v29 = type metadata accessor for SuggestedSongsModule.SongCell(0);
  v30 = v1;
  v17 = *(v1 + *(v29 + 24) + 8);
  v18 = OBJC_IVAR____TtC5Music24SuggestedSongsDataSource_placement;
  swift_beginAccess();
  sub_1002372D4(v17 + v18, v7, type metadata accessor for SuggestedSongsDataSource.Placement);
  sub_1002372D4(v7, v4, type metadata accessor for SuggestedSongsDataSource.Placement);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10023754C(v7, type metadata accessor for SuggestedSongsDataSource.Placement);
    v19 = v32;
    (*(v16 + 32))(v32, v4, v15);
    v28(v19, 0, 1, v15);
  }

  else
  {
    v19 = v32;
    dispatch thunk of MusicLibraryPlaylistViewModel.playlist.getter();

    sub_10023754C(v7, type metadata accessor for SuggestedSongsDataSource.Placement);
  }

  v20 = v33;
  sub_10003D17C(v19, v33, &unk_1011814D0);
  sub_100236DF0(&qword_101185CC0, &type metadata accessor for Playlist);
  v21 = static Optional<A>.==~ infix(_:_:)();
  sub_1000095E8(v20, &unk_1011814D0);
  result = sub_1000095E8(v14, &unk_1011814D0);
  if (v21)
  {
    if (qword_10117F1F8 != -1)
    {
      swift_once();
    }

    v23 = Song.id.getter();
    sub_10012BF2C(v23, v24);
    v26 = ~v25;

    if (v26)
    {
      sub_10012F360();
    }

    return dispatch thunk of MusicSuggestedSongsViewModel.didSelect(_:)();
  }

  return result;
}

id sub_10022DACC()
{
  v0 = type metadata accessor for UTType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  Song.url.getter();
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1000095E8(v6, &qword_101183A20);
    return [objc_allocWithZone(NSItemProvider) init];
  }

  else
  {
    URL._bridgeToObjectiveC()(v9);
    v12 = v11;
    (*(v8 + 8))(v6, v7);
    v13 = v12;
    static UTType.url.getter();
    UTType.identifier.getter();
    (*(v1 + 8))(v3, v0);
    v14 = objc_allocWithZone(NSItemProvider);
    v15 = String._bridgeToObjectiveC()();

    v16 = [v14 initWithItem:v13 typeIdentifier:v15];

    return v16;
  }
}

uint64_t sub_10022DD14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = sub_10010FC20(&qword_101185CA8);
  sub_10022DF0C(a1, a2 + *(v4 + 44));
  v5 = UIScreen.Dimensions.size.getter(6.0);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  LOBYTE(a1) = static Edge.Set.all.getter();
  v12 = a2 + *(sub_10010FC20(&qword_101185C80) + 36);
  *v12 = a1;
  *(v12 + 8) = v5;
  *(v12 + 16) = v7;
  *(v12 + 24) = v9;
  *(v12 + 32) = v11;
  *(v12 + 40) = 0;
  static Alignment.leading.getter();
  _FrameLayout.init(width:height:alignment:)();
  v13 = (a2 + *(sub_10010FC20(&qword_101185C70) + 36));
  *v13 = v21;
  v13[1] = v22;
  v13[2] = v23;
  v14 = (a2 + *(sub_10010FC20(&qword_101185C50) + 36));
  v15 = sub_10010FC20(&qword_101185CA0);
  static ContentShapeKinds.dragPreview.getter();
  if (qword_10117F248 != -1)
  {
    swift_once();
  }

  v16 = qword_1012186A8;
  v17 = *(type metadata accessor for RoundedRectangle() + 20);
  v18 = enum case for RoundedCornerStyle.continuous(_:);
  v19 = type metadata accessor for RoundedCornerStyle();
  result = (*(*(v19 - 8) + 104))(v14 + v17, v18, v19);
  *v14 = v16;
  v14[1] = v16;
  *(v14 + *(v15 + 36)) = 0;
  return result;
}

uint64_t sub_10022DF0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v48 = type metadata accessor for ArtworkImage.ReusePolicy();
  v3 = *(v48 - 8);
  __chkstk_darwin(v48);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10010FC20(&unk_10118A5E0);
  __chkstk_darwin(v9 - 8);
  v11 = &v47 - v10;
  v12 = sub_10010FC20(&unk_1011A1400);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v47 - v14;
  v16 = sub_10010FC20(&unk_10119F190);
  v49 = *(v16 - 8);
  v50 = v16;
  __chkstk_darwin(v16);
  v18 = &v47 - v17;
  v51 = sub_10010FC20(&qword_101185CB0);
  __chkstk_darwin(v51);
  v52 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v47 - v21;
  v23 = type metadata accessor for Song();
  v53 = a1;
  ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v23, &protocol witness table for Song, v11);
  if (qword_10117F250 != -1)
  {
    swift_once();
  }

  ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(qword_1012186B0, 0, qword_1012186B0, 0, 0, 1, 2, v57);
  v24 = sub_10010FC20(&unk_101182950);
  (*(*(v24 - 8) + 56))(v8, 1, 11, v24);
  v25 = v48;
  (*(v3 + 104))(v5, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v48);
  static ArtworkImage.with(_:placeholder:size:reusePolicy:)(v11, v8, v57, v5, v15);
  (*(v3 + 8))(v5, v25);
  sub_10023754C(v8, type metadata accessor for ArtworkImage.Placeholder);
  sub_1000095E8(v11, &unk_10118A5E0);
  if (qword_10117F258 != -1)
  {
    swift_once();
  }

  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.corner(_:)();
  (*(v13 + 8))(v15, v12);
  Border.artwork.unsafeMutableAddressor();

  v55 = v12;
  v56 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v27 = v50;
  View.border(_:corner:)();

  (*(v49 + 8))(v18, v27);
  v28 = static Edge.Set.trailing.getter();
  if (qword_10117F260 != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v29 = &v22[*(v51 + 36)];
  *v29 = v28;
  *(v29 + 1) = v30;
  *(v29 + 2) = v31;
  *(v29 + 3) = v32;
  *(v29 + 4) = v33;
  v29[40] = 0;
  v55 = Song.title.getter();
  v56 = v34;
  sub_100009838();
  v35 = Text.init<A>(_:)();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  KeyPath = swift_getKeyPath();
  v43 = v52;
  sub_1000089F8(v22, v52, &qword_101185CB0);
  v44 = v54;
  sub_1000089F8(v43, v54, &qword_101185CB0);
  v45 = v44 + *(sub_10010FC20(&qword_101185CB8) + 48);
  *v45 = v35;
  *(v45 + 8) = v37;
  v39 &= 1u;
  *(v45 + 16) = v39;
  *(v45 + 24) = v41;
  *(v45 + 32) = KeyPath;
  *(v45 + 40) = 1;
  *(v45 + 48) = 0;
  sub_10021D0C0(v35, v37, v39);

  sub_1000095E8(v22, &qword_101185CB0);
  sub_10011895C(v35, v37, v39);

  return sub_1000095E8(v43, &qword_101185CB0);
}

uint64_t sub_10022E5CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[44] = a4;
  v5[45] = a5;
  sub_10010FC20(&unk_1011838D0);
  v5[46] = swift_task_alloc();
  v6 = type metadata accessor for Song();
  v5[47] = v6;
  v7 = *(v6 - 8);
  v5[48] = v7;
  v5[49] = *(v7 + 64);
  v5[50] = swift_task_alloc();
  v5[51] = swift_task_alloc();
  v5[52] = swift_task_alloc();
  v5[53] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[54] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[55] = v9;
  v5[56] = v8;

  return _swift_task_switch(sub_10022E724, v9, v8);
}

uint64_t sub_10022E724()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 424);
  v32 = *(v0 + 400);
  v3 = *(v0 + 384);
  v29 = *(v0 + 408);
  v30 = *(v0 + 392);
  v4 = *(v0 + 368);
  v5 = *(v0 + 376);
  v6 = *(v0 + 352);
  v33 = *(v0 + 360);
  v7 = *(v3 + 16);
  v7(v2, v6, v5);
  type metadata accessor for MusicLibrary();
  v25 = static MusicLibrary.shared.getter();
  v8 = type metadata accessor for SuggestedSongsModule.SongCell(0);
  v31 = v4;
  sub_1002372D4(v6 + *(v8 + 48), v4, type metadata accessor for Actions.MetricsReportingContext);
  v9 = type metadata accessor for Actions.MetricsReportingContext();
  (*(*(v9 - 8) + 56))(v4, 0, 1, v9);
  v26 = MusicLibrary.state<A>(for:)();
  v10 = Song.albumTitle.getter();
  v27 = v11;
  v28 = v10;
  v7(v1, v2, v5);
  v7(v29, v2, v5);
  v12 = *(v3 + 80);
  v13 = (v12 + 24) & ~v12;
  v14 = swift_allocObject();
  *(v14 + 16) = v25;
  v15 = *(v3 + 32);
  v15(v14 + v13, v29, v5);
  *(v14 + ((v13 + v30 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26;
  v15(v32, v2, v5);
  v16 = (v12 + 25) & ~v12;
  v17 = swift_allocObject();
  *(v17 + 16) = v26;
  *(v17 + 24) = 2;
  v15(v17 + v16, v32, v5);
  *(v17 + ((v16 + v30 + 7) & 0xFFFFFFFFFFFFFFF8)) = v33;
  Actions.GoToAlbum.Context.init<A>(item:subtitle:canGoToAlbum:goToAlbum:metricsReportingContext:)(v1, v28, v27, sub_10023AFC4, v14, &unk_100EC1620, v17, v31, (v0 + 272), v5, &protocol witness table for Song);
  static Actions.GoToAlbum.action(context:)((v0 + 272), v0 + 16);
  *(v0 + 336) = *(v0 + 272);

  sub_1000095E8(v0 + 336, &qword_1011815E0);

  v18 = *(v0 + 96);
  *(v0 + 208) = *(v0 + 80);
  *(v0 + 224) = v18;
  v19 = *(v0 + 128);
  *(v0 + 240) = *(v0 + 112);
  *(v0 + 256) = v19;
  v20 = *(v0 + 32);
  *(v0 + 144) = *(v0 + 16);
  *(v0 + 160) = v20;
  v21 = *(v0 + 64);
  *(v0 + 176) = *(v0 + 48);
  *(v0 + 192) = v21;
  v22 = swift_task_alloc();
  *(v0 + 456) = v22;
  v23 = sub_10010FC20(&qword_101185D70);
  *v22 = v0;
  v22[1] = sub_10022EAC0;

  return Action.execute(checkSupportedStatus:)(v23, 1, v23);
}

uint64_t sub_10022EAC0()
{
  v2 = *v1;
  *(*v1 + 464) = v0;

  v3 = *(v2 + 440);
  v4 = *(v2 + 448);
  if (v0)
  {
    v5 = sub_10022EC98;
  }

  else
  {
    v5 = sub_10022EBD4;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10022EBD4()
{
  sub_1000095E8(v0 + 16, &qword_101185D70);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10022EC98()
{

  sub_1000095E8(v0 + 16, &qword_101185D70);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10022ED58(char a1)
{
  if (a1)
  {
    return sub_10022EDD4();
  }

  type metadata accessor for SuggestedSongsModule.SongCell(0);
  sub_10010FC20(&unk_101197960);
  return State.wrappedValue.setter();
}

uint64_t sub_10022EDD4()
{
  v1 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v1 - 8);
  v58 = &v54 - v2;
  v3 = type metadata accessor for SuggestedSongsDataSource.Placement(0);
  __chkstk_darwin(v3);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for SuggestedSongsModule.SongCell(0);
  v55 = *(v60 - 8);
  __chkstk_darwin(v60);
  v57 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v54 - v8;
  v56 = v10;
  __chkstk_darwin(v11);
  v13 = &v54 - v12;
  if (qword_10117FE30 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000060E4(v14, qword_101219770);
  sub_1002372D4(v0, v13, type metadata accessor for SuggestedSongsModule.SongCell);
  sub_1002372D4(v0, v9, type metadata accessor for SuggestedSongsModule.SongCell);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = os_log_type_enabled(v15, v16);
  v64 = v0;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    aBlock = v63;
    *v18 = 136446466;
    type metadata accessor for Song();
    sub_100236DF0(&unk_101183F40, &type metadata accessor for Song);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    sub_10023754C(v13, type metadata accessor for SuggestedSongsModule.SongCell);
    v22 = sub_1000105AC(v19, v21, &aBlock);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2082;
    v23 = *&v9[*(v60 + 24) + 8];
    v24 = OBJC_IVAR____TtC5Music24SuggestedSongsDataSource_placement;
    swift_beginAccess();
    sub_1002372D4(v23 + v24, v5, type metadata accessor for SuggestedSongsDataSource.Placement);
    v25 = String.init<A>(describing:)();
    v27 = v26;
    sub_10023754C(v9, type metadata accessor for SuggestedSongsModule.SongCell);
    v28 = sub_1000105AC(v25, v27, &aBlock);

    *(v18 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v15, v16, "Preparing to add song=%{public}s from the suggested songs module to placement=%{public}s", v18, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10023754C(v9, type metadata accessor for SuggestedSongsModule.SongCell);
    sub_10023754C(v13, type metadata accessor for SuggestedSongsModule.SongCell);
  }

  sub_100009F78(0, &qword_101197A30);

  v29 = static MPMediaLibraryFilteringOptions.none.getter();
  if (v29 != WeakArray.endIndex.getter())
  {
    LODWORD(v63) = enum case for Track.song(_:);
    v59 = &v67;
    v62 = xmmword_100EBC6B0;
    do
    {
      v38 = WeakArray.subscript.getter();
      v29 = FixedLengthCollection.index(after:)(v29);
      if (v38)
      {
        swift_getObjectType();
        if (swift_conformsToProtocol2())
        {
          sub_10010FC20(&qword_101193E80);
          v39 = type metadata accessor for Track();
          v40 = *(v39 - 8);
          v41 = (*(v40 + 80) + 32) & ~*(v40 + 80);
          v42 = swift_allocObject();
          *(v42 + 16) = v62;
          v43 = type metadata accessor for Song();
          (*(*(v43 - 8) + 16))(v42 + v41, v64, v43);
          (*(v40 + 104))(v42 + v41, v63, v39);
          v44 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
          swift_beginAccess();
          sub_1000089F8(v38 + v44, &aBlock, &unk_1011926C0);
          if (v66)
          {

            sub_1000095E8(&aBlock, &unk_1011926C0);
            continue;
          }

          Strong = swift_unknownObjectWeakLoadStrong();
          sub_1000095E8(&aBlock, &unk_1011926C0);
          if (Strong)
          {
            v61 = sub_1006A6078();

            v46 = swift_allocObject();
            *(v46 + 16) = v38;
            *(v46 + 24) = v42;
            v47 = swift_allocObject();
            *(v47 + 16) = sub_10023AA08;
            *(v47 + 24) = v46;
            v69 = sub_100029B94;
            v70 = v47;
            aBlock = _NSConcreteStackBlock;
            v66 = 1107296256;
            v67 = sub_100029B9C;
            v68 = &unk_1010A1BC0;
            v48 = _Block_copy(&aBlock);
            v49 = v38;

            v50 = swift_allocObject();
            *(v50 + 16) = v49;
            v69 = sub_10023AA10;
            v70 = v50;
            aBlock = _NSConcreteStackBlock;
            v66 = 1107296256;
            v67 = sub_1005C3688;
            v68 = &unk_1010A1C10;
            v51 = _Block_copy(&aBlock);
            v52 = v49;

            v53 = v61;
            [v61 performBatchUpdates:v48 completion:v51];

            _Block_release(v51);
            _Block_release(v48);

            continue;
          }
        }
      }
    }

    while (v29 != WeakArray.endIndex.getter());
  }

  v30 = v64;
  dispatch thunk of MusicSuggestedSongsViewModel.didSelect(_:)();
  v31 = type metadata accessor for TaskPriority();
  v32 = v58;
  (*(*(v31 - 8) + 56))(v58, 1, 1, v31);
  v33 = v57;
  sub_1002372D4(v30, v57, type metadata accessor for SuggestedSongsModule.SongCell);
  type metadata accessor for MainActor();
  v34 = static MainActor.shared.getter();
  v35 = (*(v55 + 80) + 32) & ~*(v55 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  *(v36 + 24) = &protocol witness table for MainActor;
  sub_10023733C(v33, v36 + v35, type metadata accessor for SuggestedSongsModule.SongCell);
  sub_1001F4CB8(0, 0, v32, &unk_100EC1590, v36);
}

uint64_t sub_10022F770(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SuggestedSongsModule.SongCell(0);
  sub_100009F78(0, &qword_101197A30);

  v3 = static MPMediaLibraryFilteringOptions.none.getter();
  if (v3 != WeakArray.endIndex.getter())
  {
    v5 = enum case for Track.song(_:);
    do
    {
      v11 = WeakArray.subscript.getter();
      v3 = FixedLengthCollection.index(after:)(v3);
      if (v11)
      {
        swift_getObjectType();
        if (swift_conformsToProtocol2())
        {
          sub_10010FC20(&qword_101193E80);
          v6 = type metadata accessor for Track();
          v7 = *(v6 - 8);
          v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
          v9 = swift_allocObject();
          *(v9 + 16) = xmmword_100EBC6B0;
          v10 = type metadata accessor for Song();
          (*(*(v10 - 8) + 16))(v9 + v8, a2, v10);
          (*(v7 + 104))(v9 + v8, v5, v6);
          sub_10081E1F4(v9, a1);
        }

        else
        {
        }
      }
    }

    while (v3 != WeakArray.endIndex.getter());
  }
}

uint64_t sub_10022F9BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v4[7] = type metadata accessor for SuggestedSongsModule.SongCell(0);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  type metadata accessor for SuggestedSongsDataSource.Placement(0);
  v4[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[11] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[12] = v6;
  v4[13] = v5;

  return _swift_task_switch(sub_10022FABC, v6, v5);
}

uint64_t sub_10022FABC()
{
  v1 = v0[10];
  v2 = *(v0[6] + *(v0[7] + 24) + 8);
  v3 = OBJC_IVAR____TtC5Music24SuggestedSongsDataSource_placement;
  swift_beginAccess();
  sub_1002372D4(v2 + v3, v1, type metadata accessor for SuggestedSongsDataSource.Placement);
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_10022FBAC;
  v5 = v0[6];

  return sub_100230294(v5);
}

uint64_t sub_10022FBAC()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  *(*v1 + 120) = v0;

  sub_10023754C(v3, type metadata accessor for SuggestedSongsDataSource.Placement);
  v4 = *(v2 + 104);
  v5 = *(v2 + 96);
  if (v0)
  {
    v6 = sub_10022FF84;
  }

  else
  {
    v6 = sub_10022FD18;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_10022FD18()
{
  v17 = v0;

  if (qword_10117FE30 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = v0[6];
  v3 = type metadata accessor for Logger();
  sub_1000060E4(v3, qword_101219770);
  sub_1002372D4(v2, v1, type metadata accessor for SuggestedSongsModule.SongCell);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136446210;
    type metadata accessor for Song();
    sub_100236DF0(&unk_101183F40, &type metadata accessor for Song);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    sub_10023754C(v7, type metadata accessor for SuggestedSongsModule.SongCell);
    v13 = sub_1000105AC(v10, v12, &v16);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Successfully added song=%{public}s from the suggested songs module", v8, 0xCu);
    sub_10000959C(v9);
  }

  else
  {

    sub_10023754C(v7, type metadata accessor for SuggestedSongsModule.SongCell);
  }

  sub_10022F770(0, v0[6]);

  v14 = v0[1];

  return v14();
}

uint64_t sub_10022FF84()
{
  v22 = v0;

  if (qword_10117FE30 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = v0[6];
  v3 = type metadata accessor for Logger();
  sub_1000060E4(v3, qword_101219770);
  sub_1002372D4(v2, v1, type metadata accessor for SuggestedSongsModule.SongCell);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[15];
    v7 = v0[8];
    v8 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v8 = 136446466;
    type metadata accessor for Song();
    sub_100236DF0(&unk_101183F40, &type metadata accessor for Song);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    sub_10023754C(v7, type metadata accessor for SuggestedSongsModule.SongCell);
    v12 = sub_1000105AC(v9, v11, &v21);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2082;
    v0[5] = v6;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    v13 = String.init<A>(describing:)();
    v15 = sub_1000105AC(v13, v14, &v21);

    *(v8 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to add song=%{public}s from the suggested songs with error=%{public}s", v8, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v16 = v0[8];

    sub_10023754C(v16, type metadata accessor for SuggestedSongsModule.SongCell);
  }

  v17 = v0[15];
  v18 = v0[6];
  swift_errorRetain();
  sub_10022F770(v17, v18);

  v19 = v0[1];

  return v19();
}

uint64_t sub_100230294(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for MusicLibrary.AddToPlaylistDuplicatePolicy();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for Playlist();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v5 = type metadata accessor for Track();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = type metadata accessor for SuggestedSongsDataSource.Placement(0);
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_100230448, 0, 0);
}

uint64_t sub_100230448()
{
  sub_1002372D4(v0[3], v0[15], type metadata accessor for SuggestedSongsDataSource.Placement);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[15];
  if (EnumCaseMultiPayload == 1)
  {
    v4 = v0[5];
    v3 = v0[6];
    v5 = v0[4];
    (*(v0[8] + 32))(v0[10], v2, v0[7]);
    type metadata accessor for MusicLibrary();
    v0[19] = static MusicLibrary.shared.getter();
    (*(v4 + 104))(v3, enum case for MusicLibrary.AddToPlaylistDuplicatePolicy.includeDuplicates(_:), v5);
    v6 = swift_task_alloc();
    v0[20] = v6;
    v7 = type metadata accessor for Song();
    *v6 = v0;
    v6[1] = sub_1002308C4;
    v8 = v0[9];
    v9 = v0[10];
    v10 = v0[6];
    v11 = v0[2];

    return MusicLibrary.add<A>(_:to:duplicatePolicy:importAllowedHandler:)(v8, v11, v9, v10, 0, 0, v7, &protocol witness table for Song);
  }

  else
  {
    v13 = v0[12];
    v12 = v0[13];
    v14 = v0[11];
    v15 = v0[2];
    v0[16] = *v2;
    v16 = type metadata accessor for Song();
    (*(*(v16 - 8) + 16))(v12, v15, v16);
    (*(v13 + 104))(v12, enum case for Track.song(_:), v14);
    v21 = (&async function pointer to dispatch thunk of MusicLibraryPlaylistViewModel.append<A>(_:) + async function pointer to dispatch thunk of MusicLibraryPlaylistViewModel.append<A>(_:));
    v17 = swift_task_alloc();
    v0[17] = v17;
    *v17 = v0;
    v17[1] = sub_1002306B4;
    v18 = v0[13];
    v19 = v0[11];

    return v21(v18, v19, &protocol witness table for Track);
  }
}

uint64_t sub_1002306B4()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  *(*v1 + 144) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_100230B1C;
  }

  else
  {
    v5 = sub_100230824;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100230824()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002308C4()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    (*(v2[5] + 8))(v2[6], v2[4]);

    v3 = sub_100230BC4;
  }

  else
  {
    v5 = v2[8];
    v4 = v2[9];
    v7 = v2[6];
    v6 = v2[7];
    v8 = v2[4];
    v9 = v2[5];

    (*(v9 + 8))(v7, v8);
    v10 = *(v5 + 8);
    v2[22] = v10;
    v2[23] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v4, v6);
    v3 = sub_100230A74;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100230A74()
{
  (*(v0 + 176))(*(v0 + 80), *(v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100230B1C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100230BC4()
{
  (*(v0[8] + 8))(v0[10], v0[7]);

  v1 = v0[1];

  return v1();
}

__n128 sub_100230C80@<Q0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DynamicTypeSize();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v26[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v26[-v8];
  v10 = sub_10010FC20(&qword_101186060);
  __chkstk_darwin(v10 - 8);
  v12 = &v26[-v11];
  v13 = sub_10010FC20(&qword_101186068);
  __chkstk_darwin(v13);
  v15 = &v26[-v14];
  *v12 = static HorizontalAlignment.leading.getter();
  *(v12 + 1) = 0;
  v12[16] = 0;
  v16 = sub_10010FC20(&qword_101186070);
  sub_100231070(v1, &v12[*(v16 + 44)]);
  type metadata accessor for SuggestedSongsModule.VerticalText(0);
  sub_10056CABC(v9);
  if (qword_10117FB28 != -1)
  {
    swift_once();
  }

  if (byte_10119CDC0)
  {
    (*(v4 + 8))(v9, v3);
  }

  else
  {
    (*(v4 + 104))(v6, enum case for DynamicTypeSize.accessibility3(_:), v3);
    static DynamicTypeSize.< infix(_:_:)();
    v17 = *(v4 + 8);
    v17(v6, v3);
    v17(v9, v3);
  }

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10003D17C(v12, v15, &qword_101186060);
  v18 = &v15[*(v13 + 36)];
  v19 = v30;
  v18[4] = v29;
  v18[5] = v19;
  v18[6] = v31;
  v20 = *&v26[24];
  *v18 = *&v26[8];
  v18[1] = v20;
  v21 = v28;
  v18[2] = v27;
  v18[3] = v21;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10003D17C(v15, a1, &qword_101186068);
  v22 = a1 + *(sub_10010FC20(&qword_101186078) + 36);
  v23 = v37;
  *(v22 + 64) = v36;
  *(v22 + 80) = v23;
  *(v22 + 96) = v38;
  v24 = v33;
  *v22 = v32;
  *(v22 + 16) = v24;
  result = v35;
  *(v22 + 32) = v34;
  *(v22 + 48) = result;
  return result;
}

uint64_t sub_100231070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v138 = a2;
  v3 = sub_10010FC20(&qword_101186080);
  v134 = *(v3 - 8);
  v135 = v3;
  __chkstk_darwin(v3);
  v133 = &v111 - v4;
  v5 = sub_10010FC20(&qword_101186088);
  __chkstk_darwin(v5 - 8);
  v137 = &v111 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v136 = &v111 - v8;
  v114 = type metadata accessor for Text.Suffix();
  v113 = *(v114 - 8);
  __chkstk_darwin(v114);
  v111 = &v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_10010FC20(&qword_101186090);
  __chkstk_darwin(v115);
  v116 = &v111 - v10;
  v123 = sub_10010FC20(&qword_101186098);
  __chkstk_darwin(v123);
  v117 = &v111 - v11;
  v118 = sub_10010FC20(&qword_1011860A0);
  __chkstk_darwin(v118);
  v120 = &v111 - v12;
  v119 = sub_10010FC20(&qword_101184C80);
  __chkstk_darwin(v119);
  v112 = &v111 - v13;
  v14 = type metadata accessor for DynamicTypeSize();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10010FC20(&qword_1011860A8);
  __chkstk_darwin(v18 - 8);
  v132 = &v111 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v139 = &v111 - v21;
  v22 = sub_10010FC20(&unk_10118D2F0);
  __chkstk_darwin(v22 - 8);
  v24 = &v111 - v23;
  Song.contentRating.getter();
  v25 = TextBadge.init(for:isPlayable:)(v24, 1);
  v26 = TextBadge.view.getter(v25);
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v122 = *(type metadata accessor for SuggestedSongsModule.VerticalText(0) + 20);
  sub_10056CABC(v17);
  LOBYTE(v24) = DynamicTypeSize.isAccessibilitySize.getter();
  v33 = *(v15 + 8);
  v124 = v17;
  v126 = v14;
  v125 = v15 + 8;
  v121 = v33;
  v33(v17, v14);
  v131 = a1;
  v34 = Song.title.getter();
  v130 = v32;
  v129 = v26;
  v128 = v28;
  v127 = v30;
  v140 = v34;
  v141 = v35;
  sub_100009838();
  if (v24)
  {
    v36 = Text.init<A>(_:)();
    v38 = v37;
    v40 = v39;
    v41 = static Text.+ infix(_:_:)();
    v43 = v42;
    v45 = v44;
    v47 = v46;
    sub_10011895C(v36, v38, v40 & 1);

    v140 = v41;
    v141 = v43;
    v45 &= 1u;
    v142 = v45;
    v143 = v47;
    v48 = AccessibilityIdentifier.playlistSuggestedSongsCellTitle.unsafeMutableAddressor();
    v49 = *v48;
    v50 = v48[1];
    v52 = v48[2];
    v51 = v48[3];

    v53 = v112;
    View.accessibilityIdentifier(_:)(v49, v50, v52, v51, &type metadata for Text, &protocol witness table for Text);

    sub_10011895C(v41, v43, v45);

    sub_1000089F8(v53, v120, &qword_101184C80);
    swift_storeEnumTagMultiPayload();
    sub_10023BAD4();
    sub_100238500(&qword_1011860C8, &qword_101186098, &unk_100EC1960, sub_10023B9EC);
    _ConditionalContent<>.init(storage:)();
    sub_1000095E8(v53, &qword_101184C80);
  }

  else
  {
    v54 = Text.init<A>(_:)();
    v56 = v55;
    v140 = v54;
    v141 = v55;
    v58 = v57 & 1;
    v142 = v57 & 1;
    v143 = v59;
    v60 = v111;
    static Text.Suffix.alwaysVisible(_:)();
    v61 = v116;
    View.textSuffix(_:)();
    (*(v113 + 8))(v60, v114);
    sub_10011895C(v54, v56, v58);

    KeyPath = swift_getKeyPath();
    v63 = v115;
    v64 = v61 + *(v115 + 36);
    *v64 = KeyPath;
    *(v64 + 8) = 1;
    *(v64 + 16) = 0;
    v65 = AccessibilityIdentifier.playlistSuggestedSongsCellTitle.unsafeMutableAddressor();
    v66 = *v65;
    v67 = v65[1];
    v68 = v65[2];
    v69 = v65[3];
    v70 = sub_10023B9EC();

    v71 = v117;
    View.accessibilityIdentifier(_:)(v66, v67, v68, v69, v63, v70);

    sub_1000095E8(v61, &qword_101186090);
    sub_1000089F8(v71, v120, &qword_101186098);
    swift_storeEnumTagMultiPayload();
    sub_10023BAD4();
    sub_100238500(&qword_1011860C8, &qword_101186098, &unk_100EC1960, sub_10023B9EC);
    _ConditionalContent<>.init(storage:)();
    sub_1000095E8(v71, &qword_101186098);
  }

  v140 = Song.artistName.getter();
  v141 = v72;
  sub_100009838();
  v73 = Text.init<A>(_:)();
  v75 = v74;
  v77 = v76;
  if (qword_10117FBD8 != -1)
  {
    swift_once();
  }

  v78 = Text.font(_:)();
  v80 = v79;
  v82 = v81;
  sub_10011895C(v73, v75, v77 & 1);

  LODWORD(v140) = static HierarchicalShapeStyle.secondary.getter();
  v83 = Text.foregroundStyle<A>(_:)();
  v85 = v84;
  v87 = v86;
  v89 = v88;
  sub_10011895C(v78, v80, v82 & 1);

  v90 = v124;
  sub_10056CABC(v124);
  v91 = DynamicTypeSize.isAccessibilitySize.getter();
  v121(v90, v126);
  v92 = swift_getKeyPath();
  v140 = v83;
  v141 = v85;
  v142 = v87 & 1;
  v143 = v89;
  v144 = v92;
  v145 = (v91 & 1) == 0;
  v146 = v91 & 1;
  if (qword_10117FBC8 != -1)
  {
    swift_once();
  }

  v93 = sub_10010FC20(&qword_1011860D0);
  v94 = sub_10023BB90();
  v95 = v133;
  View.minimumLineHeight(_:)();
  sub_10011895C(v83, v85, v87 & 1);

  v96 = AccessibilityIdentifier.playlistSuggestedSongsCellArtistName.unsafeMutableAddressor();
  v97 = *v96;
  v98 = v96[1];
  v99 = v96[2];
  v100 = v96[3];

  v140 = v93;
  v141 = v94;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v102 = v136;
  v103 = v97;
  v104 = v135;
  View.accessibilityIdentifier(_:)(v103, v98, v99, v100, v135, OpaqueTypeConformance2);

  (*(v134 + 8))(v95, v104);
  v105 = v139;
  v106 = v132;
  sub_1000089F8(v139, v132, &qword_1011860A8);
  v107 = v137;
  sub_1000089F8(v102, v137, &qword_101186088);
  v108 = v138;
  sub_1000089F8(v106, v138, &qword_1011860A8);
  v109 = sub_10010FC20(&qword_1011860E0);
  sub_1000089F8(v107, v108 + *(v109 + 48), &qword_101186088);
  sub_10011895C(v129, v128, v127 & 1);

  sub_1000095E8(v102, &qword_101186088);
  sub_1000095E8(v105, &qword_1011860A8);
  sub_1000095E8(v107, &qword_101186088);
  return sub_1000095E8(v106, &qword_1011860A8);
}

__n128 sub_100231D34@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&qword_1011860E8);
  __chkstk_darwin(v3 - 8);
  v5 = v11 - v4;
  *v5 = static VerticalAlignment.center.getter();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v6 = sub_10010FC20(&qword_1011860F0);
  sub_100231E90(v1, &v5[*(v6 + 44)]);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10003D17C(v5, a1, &qword_1011860E8);
  v7 = a1 + *(sub_10010FC20(&qword_1011860F8) + 36);
  v8 = v11[5];
  *(v7 + 64) = v11[4];
  *(v7 + 80) = v8;
  *(v7 + 96) = v11[6];
  v9 = v11[1];
  *v7 = v11[0];
  *(v7 + 16) = v9;
  result = v11[3];
  *(v7 + 32) = v11[2];
  *(v7 + 48) = result;
  return result;
}

uint64_t sub_100231E90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v143 = a1;
  v141 = a2;
  v139 = sub_10010FC20(&qword_101186100);
  v137 = *(v139 - 8);
  __chkstk_darwin(v139);
  v119[0] = v119 - v2;
  v135 = type metadata accessor for SuggestedSongsDataSource.Placement(0);
  __chkstk_darwin(v135);
  v134 = v119 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v133 = v119 - v5;
  v6 = sub_10010FC20(&qword_101186108);
  __chkstk_darwin(v6 - 8);
  v140 = v119 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v142 = v119 - v9;
  v10 = sub_10010FC20(&qword_101186110);
  __chkstk_darwin(v10 - 8);
  v138 = v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v144 = v119 - v13;
  v14 = type metadata accessor for DynamicTypeSize();
  v128 = *(v14 - 8);
  v129 = v14;
  __chkstk_darwin(v14);
  v126 = v119 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v125 = v119 - v17;
  v18 = sub_10010FC20(&unk_10118D2F0);
  __chkstk_darwin(v18 - 8);
  v120 = v119 - v19;
  v132 = type metadata accessor for Text.Suffix();
  v124 = *(v132 - 8);
  __chkstk_darwin(v132);
  v121 = v119 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_10010FC20(&qword_101186090) - 8;
  __chkstk_darwin(v123);
  v122 = v119 - v21;
  v130 = sub_10010FC20(&qword_101186118);
  __chkstk_darwin(v130);
  v131 = v119 - v22;
  v23 = sub_10010FC20(&qword_101186120);
  __chkstk_darwin(v23 - 8);
  v136 = v119 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v145 = v119 - v26;
  *&v158 = Song.title.getter();
  *(&v158 + 1) = v27;
  v127 = sub_100009838();
  v28 = Text.init<A>(_:)();
  v30 = v29;
  v32 = v31;
  static Font.callout.getter();
  v33 = Text.font(_:)();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v119[1] = v38;

  sub_10011895C(v28, v30, v32 & 1);

  *&v158 = v33;
  *(&v158 + 1) = v35;
  LOBYTE(v30) = v37 & 1;
  LOBYTE(v159) = v37 & 1;
  *(&v159 + 1) = v39;
  v40 = v120;
  Song.contentRating.getter();
  v41 = TextBadge.init(for:isPlayable:)(v40, 1);
  v42 = TextBadge.view.getter(v41);
  v44 = v43;
  v46 = v45;
  v47 = v121;
  static Text.Suffix.alwaysVisible(_:)();
  sub_10011895C(v42, v44, v46 & 1);

  v48 = v122;
  View.textSuffix(_:)();
  (*(v124 + 8))(v47, v132);
  v49 = v33;
  v50 = v48;
  sub_10011895C(v49, v35, v30);

  KeyPath = swift_getKeyPath();
  v52 = &v48[*(v123 + 44)];
  *v52 = KeyPath;
  *(v52 + 1) = 1;
  v52[16] = 0;
  v132 = type metadata accessor for SuggestedSongsModule.HorizontalText(0);
  v53 = v125;
  sub_10056CABC(v125);
  v55 = v128;
  v54 = v129;
  v56 = v126;
  (*(v128 + 104))(v126, enum case for DynamicTypeSize.accessibility1(_:), v129);
  LOBYTE(v35) = static DynamicTypeSize.< infix(_:_:)();
  v57 = *(v55 + 8);
  v57(v56, v54);
  v57(v53, v54);
  if (v35)
  {
    sub_100232B94();
  }

  static Alignment.leading.getter();
  _FrameLayout.init(width:height:alignment:)();
  v58 = v131;
  sub_10003D17C(v50, v131, &qword_101186090);
  v59 = v130;
  v60 = (v58 + *(v130 + 36));
  v61 = v171;
  *v60 = v170;
  v60[1] = v61;
  v60[2] = v172;
  v62 = AccessibilityIdentifier.playlistSuggestedSongsCellTitle.unsafeMutableAddressor();
  v63 = *v62;
  v64 = v62[1];
  v65 = v62[2];
  v66 = v62[3];
  v67 = sub_10023BC48();

  View.accessibilityIdentifier(_:)(v63, v64, v65, v66, v59, v67);

  sub_1000095E8(v58, &qword_101186118);
  *&v158 = Song.artistName.getter();
  *(&v158 + 1) = v68;
  v69 = Text.init<A>(_:)();
  v71 = v70;
  v73 = v72;
  static Font.callout.getter();
  v74 = Text.font(_:)();
  v76 = v75;
  v78 = v77;
  v80 = v79;

  sub_10011895C(v69, v71, v73 & 1);

  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v168 = v78 & 1;
  LODWORD(v69) = static HierarchicalShapeStyle.secondary.getter();
  v81 = swift_getKeyPath();
  v169 = 0;
  *&v148 = v74;
  *(&v148 + 1) = v76;
  LOBYTE(v149) = v78 & 1;
  *(&v149 + 1) = v80;
  v154 = v157[6];
  v155 = v157[7];
  v156 = v157[8];
  v150 = v157[2];
  v151 = v157[3];
  v152 = v157[4];
  v153 = v157[5];
  LODWORD(v157[0]) = v69;
  *(&v157[0] + 1) = v81;
  *&v157[1] = 1;
  BYTE8(v157[1]) = 0;
  v82 = AccessibilityIdentifier.playlistSuggestedSongsCellArtistName.unsafeMutableAddressor();
  v83 = *v82;
  v84 = v82[1];
  v85 = v82[2];
  v86 = v82[3];

  v87 = sub_10010FC20(&qword_101186130);
  v88 = sub_10023BCD4();
  v89 = v85;
  v90 = v143;
  View.accessibilityIdentifier(_:)(v83, v84, v89, v86, v87, v88);
  v91 = 1;

  v166 = v156;
  v167[0] = v157[0];
  *(v167 + 9) = *(v157 + 9);
  v162 = v152;
  v163 = v153;
  v164 = v154;
  v165 = v155;
  v158 = v148;
  v159 = v149;
  v160 = v150;
  v161 = v151;
  sub_1000095E8(&v158, &qword_101186130);
  v92 = v132;
  v93 = *(v90 + *(v132 + 20) + 8);
  v94 = OBJC_IVAR____TtC5Music24SuggestedSongsDataSource_placement;
  swift_beginAccess();
  v95 = v93 + v94;
  v96 = v133;
  sub_1002372D4(v95, v133, type metadata accessor for SuggestedSongsDataSource.Placement);
  v97 = v134;
  sub_10023733C(v96, v134, type metadata accessor for SuggestedSongsDataSource.Placement);
  LODWORD(v96) = swift_getEnumCaseMultiPayload();
  sub_10023754C(v97, type metadata accessor for SuggestedSongsDataSource.Placement);
  v98 = v139;
  if (v96 == 1)
  {
    v99 = Song.duration.getter();
    if (v100)
    {
      v91 = 1;
    }

    else
    {
      v101 = v119[0];
      *v119[0] = v99;
      v102 = type metadata accessor for SuggestedSongsModule.DurationView(0);
      v103 = *(v102 + 20);
      *(v101 + v103) = swift_getKeyPath();
      sub_10010FC20(&qword_10118A610);
      swift_storeEnumTagMultiPayload();
      v104 = *(v102 + 24);
      *(v101 + v104) = swift_getKeyPath();
      sub_10010FC20(&unk_101184840);
      swift_storeEnumTagMultiPayload();
      v105 = (v90 + *(v92 + 28));
      v106 = *(v105 + 2);
      v146 = *v105;
      v147 = v106;
      sub_10010FC20(&qword_101186158);
      State.projectedValue.getter();
      v107 = *(&v148 + 1);
      v108 = v149;
      v109 = v101 + *(v98 + 36);
      *v109 = v148;
      *(v109 + 8) = v107;
      *(v109 + 16) = v108;
      sub_10003D17C(v101, v142, &qword_101186100);
      v91 = 0;
    }
  }

  v110 = v142;
  (*(v137 + 56))(v142, v91, 1, v98);
  v111 = v136;
  sub_1000089F8(v145, v136, &qword_101186120);
  v112 = v144;
  v113 = v138;
  sub_1000089F8(v144, v138, &qword_101186110);
  v114 = v140;
  sub_1000089F8(v110, v140, &qword_101186108);
  v115 = v141;
  sub_1000089F8(v111, v141, &qword_101186120);
  v116 = sub_10010FC20(&qword_101186150);
  v117 = v115 + v116[12];
  *v117 = 0x4030000000000000;
  *(v117 + 8) = 0;
  sub_1000089F8(v113, v115 + v116[16], &qword_101186110);
  sub_1000089F8(v114, v115 + v116[20], &qword_101186108);
  sub_1000095E8(v110, &qword_101186108);
  sub_1000095E8(v112, &qword_101186110);
  sub_1000095E8(v145, &qword_101186120);
  sub_1000095E8(v114, &qword_101186108);
  sub_1000095E8(v113, &qword_101186110);
  return sub_1000095E8(v111, &qword_101186120);
}

double sub_100232B94()
{
  v1 = v0;
  v2 = sub_10010FC20(&unk_101184290);
  __chkstk_darwin(v2 - 8);
  v4 = v37 - v3;
  v38 = type metadata accessor for DynamicTypeSize();
  v5 = *(v38 - 8);
  __chkstk_darwin(v38);
  v37[0] = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v37 - v8;
  v10 = type metadata accessor for SuggestedSongsDataSource.Placement(0);
  __chkstk_darwin(v10);
  v39 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v37 - v13;
  v15 = type metadata accessor for SuggestedSongsModule.HorizontalText(0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v16 = *&v41;
  v17 = *(v15 + 24);
  sub_1002372D4(v1 + v17, v14, type metadata accessor for SuggestedSongsDataSource.Placement);
  v37[1] = v10;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_10023754C(v14, type metadata accessor for SuggestedSongsDataSource.Placement);
  v19 = 16.0;
  if (EnumCaseMultiPayload == 1)
  {
    if (qword_10117F390 != -1)
    {
      swift_once();
    }

    if (byte_101184EE8)
    {
      v19 = 24.0;
    }

    else
    {
      v19 = 20.0;
    }
  }

  sub_10056CABC(v9);
  if (qword_10117FB28 != -1)
  {
    swift_once();
  }

  if (byte_10119CDC0)
  {
    (*(v5 + 8))(v9, v38);
    v20 = 48.0;
  }

  else
  {
    v21 = v37[0];
    v22 = v38;
    (*(v5 + 104))(v37[0], enum case for DynamicTypeSize.accessibility3(_:), v38);
    v23 = static DynamicTypeSize.< infix(_:_:)();
    v24 = *(v5 + 8);
    v24(v21, v22);
    v24(v9, v22);
    if (v23)
    {
      v20 = 48.0;
    }

    else
    {
      v20 = 72.0;
    }
  }

  sub_10056CAE4(v4);
  v25 = sub_10023951C(v4);
  sub_1000095E8(v4, &unk_101184290);
  v26 = (v1 + *(v15 + 28));
  v27 = *(v26 + 2);
  v41 = *v26;
  v42 = v27;
  sub_10010FC20(&qword_101186158);
  State.wrappedValue.getter();
  v28 = v40;
  v29 = v39;
  sub_1002372D4(v1 + v17, v39, type metadata accessor for SuggestedSongsDataSource.Placement);
  v30 = swift_getEnumCaseMultiPayload();
  sub_10023754C(v29, type metadata accessor for SuggestedSongsDataSource.Placement);
  if (v30 == 1)
  {
    if (qword_10117F390 != -1)
    {
      swift_once();
    }

    if (byte_101184EE8)
    {
      v31 = 44.0;
    }

    else
    {
      v31 = 28.0;
    }
  }

  else
  {
    v32 = [objc_opt_self() defaultMetrics];
    [v32 scaledValueForValue:24.0];
    v31 = v33;
  }

  v34 = v16 - v19 - v20 + -12.0 - (v25 + v25) - v28 - v31;
  sub_10056CAE4(v4);
  v35 = sub_10022205C(v4);
  sub_1000095E8(v4, &unk_101184290);
  return v34 - v35;
}

__n128 sub_1002330F8@<Q0>(uint64_t a1@<X8>)
{
  v64 = a1;
  v63 = type metadata accessor for DynamicTypeSize();
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v57 = &v57 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v61 = &v57 - v3;
  v4 = sub_10010FC20(&unk_101184290);
  __chkstk_darwin(v4 - 8);
  v60 = &v57 - v5;
  v6 = type metadata accessor for Duration.TimeFormatStyle.Pattern();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Duration.TimeFormatStyle();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_10010FC20(&qword_101186288);
  __chkstk_darwin(v59);
  v58 = &v57 - v14;
  v15 = sub_10010FC20(&qword_101186290);
  __chkstk_darwin(v15 - 8);
  v17 = &v57 - v16;
  static Duration.seconds(_:)();
  static Duration.TimeFormatStyle.Pattern.minuteSecond.getter();
  static FormatStyle<>.time(pattern:)();
  (*(v7 + 8))(v9, v6);
  sub_100236DF0(&qword_101186298, &type metadata accessor for Duration.TimeFormatStyle);
  Duration.formatted<A>(_:)();
  (*(v11 + 8))(v13, v10);
  v65 = v66;
  sub_100009838();
  v18 = Text.init<A>(_:)();
  v20 = v19;
  v22 = v21;
  static Font.callout.getter();
  v23 = Text.font(_:)();
  v25 = v24;
  LOBYTE(v7) = v26;
  v28 = v27;

  sub_10011895C(v18, v20, v22 & 1);

  KeyPath = swift_getKeyPath();
  v30 = static HierarchicalShapeStyle.secondary.getter();
  v31 = v7 & 1;
  v32 = v17;
  v76 = v31;
  v75 = 0;
  *&v66 = v23;
  *(&v66 + 1) = v25;
  LOBYTE(v67) = v31;
  *(&v67 + 1) = v65;
  DWORD1(v67) = *(&v65 + 3);
  *(&v67 + 1) = v28;
  *&v68 = KeyPath;
  *(&v68 + 1) = 1;
  v69.n128_u8[0] = 0;
  *(v69.n128_u16 + 1) = v73;
  v69.n128_u8[3] = v74;
  v69.n128_u32[1] = v30;
  sub_10010FC20(&qword_1011862A0);
  sub_10023C8E4();
  v33 = v58;
  View.monospacedDigit()();
  sub_10011895C(v23, v25, v31);

  LOBYTE(v23) = static Edge.Set.leading.getter();
  type metadata accessor for SuggestedSongsModule.DurationView(0);
  v34 = v60;
  sub_10056CAE4(v60);
  sub_10023951C(v34);
  sub_1000095E8(v34, &unk_101184290);
  EdgeInsets.init(_all:)();
  v35 = v59;
  v36 = v33 + *(v59 + 36);
  *v36 = v23;
  *(v36 + 8) = v37;
  *(v36 + 16) = v38;
  *(v36 + 24) = v39;
  *(v36 + 32) = v40;
  *(v36 + 40) = 0;
  v41 = AccessibilityIdentifier.playlistSuggestedSongsCellDuration.unsafeMutableAddressor();
  v42 = *v41;
  v43 = v41[1];
  v44 = v41[2];
  v45 = v41[3];
  v46 = sub_10023C99C();

  View.accessibilityIdentifier(_:)(v42, v43, v44, v45, v35, v46);
  v47 = v61;

  sub_1000095E8(v33, &qword_101186288);
  sub_10056CABC(v47);
  if (qword_10117FB28 != -1)
  {
    swift_once();
  }

  if (byte_10119CDC0)
  {
    (*(v62 + 8))(v47, v63);
  }

  else
  {
    v48 = v62;
    v49 = v57;
    v50 = v63;
    (*(v62 + 104))(v57, enum case for DynamicTypeSize.accessibility3(_:), v63);
    static DynamicTypeSize.< infix(_:_:)();
    v51 = *(v48 + 8);
    v51(v49, v50);
    v51(v47, v50);
  }

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v52 = v64;
  sub_10003D17C(v32, v64, &qword_101186290);
  v53 = v52 + *(sub_10010FC20(&qword_1011862B8) + 36);
  v54 = v71;
  *(v53 + 64) = v70;
  *(v53 + 80) = v54;
  *(v53 + 96) = v72;
  v55 = v67;
  *v53 = v66;
  *(v53 + 16) = v55;
  result = v69;
  *(v53 + 32) = v68;
  *(v53 + 48) = result;
  return result;
}

uint64_t sub_100233878@<X0>(uint64_t a1@<X8>)
{
  v91 = a1;
  v79 = type metadata accessor for ArtworkImage.ReusePolicy();
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v77 = &v72 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin(v2 - 8);
  v76 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DynamicTypeSize();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v72 - v9;
  __chkstk_darwin(v11);
  v13 = &v72 - v12;
  v14 = sub_10010FC20(&unk_10118A5E0);
  __chkstk_darwin(v14 - 8);
  v16 = &v72 - v15;
  v17 = sub_10010FC20(&unk_1011A1400);
  v81 = *(v17 - 8);
  __chkstk_darwin(v17);
  v80 = &v72 - v18;
  v92 = sub_10010FC20(&qword_101186168);
  __chkstk_darwin(v92);
  v82 = &v72 - v19;
  v20 = sub_10010FC20(&qword_101186170);
  v87 = *(v20 - 8);
  v88 = v20;
  __chkstk_darwin(v20);
  v84 = &v72 - v21;
  v22 = sub_10010FC20(&qword_101186178);
  v85 = *(v22 - 8);
  v86 = v22;
  __chkstk_darwin(v22);
  v83 = &v72 - v23;
  v89 = sub_10010FC20(&qword_101186180);
  __chkstk_darwin(v89);
  v90 = &v72 - v24;
  v25 = type metadata accessor for Song();
  v75 = v16;
  ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v25, &protocol witness table for Song, v16);
  type metadata accessor for SuggestedSongsModule.Artwork(0);
  sub_10056CABC(v13);
  if (qword_10117FB28 != -1)
  {
    swift_once();
  }

  if (byte_10119CDC0)
  {
    v26 = *(v5 + 8);
    v26(v13, v4);
    sub_10056CABC(v7);
    v26(v7, v4);
    v27 = 0x4048000000000000;
    v28 = 0x4048000000000000;
  }

  else
  {
    v73 = enum case for DynamicTypeSize.accessibility3(_:);
    v74 = v17;
    v72 = *(v5 + 104);
    v72(v10);
    v29 = static DynamicTypeSize.< infix(_:_:)();
    v30 = v7;
    v31 = *(v5 + 8);
    v31(v10, v4);
    v31(v13, v4);
    if (v29)
    {
      v27 = 0x4048000000000000;
    }

    else
    {
      v27 = 0x4052000000000000;
    }

    sub_10056CABC(v30);
    (v72)(v10, v73, v4);
    v17 = v74;
    v32 = static DynamicTypeSize.< infix(_:_:)();
    v31(v10, v4);
    v31(v30, v4);
    if (v32)
    {
      v28 = 0x4048000000000000;
    }

    else
    {
      v28 = 0x4052000000000000;
    }
  }

  v33 = v82;
  ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(v27, 0, v28, 0, 0, 1, 2, v95);
  v34 = sub_10010FC20(&unk_101182950);
  v35 = v76;
  (*(*(v34 - 8) + 56))(v76, 1, 11, v34);
  v36 = v78;
  v37 = v77;
  v38 = v79;
  (*(v78 + 104))(v77, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v79);
  v39 = v80;
  v40 = v75;
  static ArtworkImage.with(_:placeholder:size:reusePolicy:)(v75, v35, v95, v37, v80);
  (*(v36 + 8))(v37, v38);
  sub_10023754C(v35, type metadata accessor for ArtworkImage.Placeholder);
  sub_1000095E8(v40, &unk_10118A5E0);
  v41 = Song.id.getter();
  if (qword_10117F1F8 != -1)
  {
    v70 = v41;
    v71 = v42;
    swift_once();
    v42 = v71;
    v41 = v70;
  }

  v43 = v33 + *(v92 + 36);
  *v43 = v41;
  *(v43 + 8) = v42;
  *(v43 + 16) = 256;
  v44 = qword_10117F5F8;

  if (v44 != -1)
  {
    swift_once();
  }

  *(v43 + 24) = (*(*qword_101218AC8 + 408))();
  type metadata accessor for PreviewPlaybackController(0);
  sub_100236DF0(&qword_101185730, type metadata accessor for PreviewPlaybackController);
  *(v43 + 32) = ObservedObject.init(wrappedValue:)();
  *(v43 + 40) = v45;
  v46 = *(type metadata accessor for PreviewOverlay.ArtworkVariant(0) + 36);
  *(v43 + v46) = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610);
  swift_storeEnumTagMultiPayload();
  (*(v81 + 32))(v33, v39, v17);
  if (qword_10117FBA8 != -1)
  {
    swift_once();
  }

  v47 = sub_10023C2D8();
  v48 = v84;
  v49 = v92;
  View.corner(_:)();
  sub_1000095E8(v33, &qword_101186168);
  Border.artwork.unsafeMutableAddressor();

  v93 = v49;
  v94 = v47;
  swift_getOpaqueTypeConformance2();
  v50 = v83;
  v51 = v88;
  View.border(_:corner:)();

  (*(v87 + 8))(v48, v51);
  LOBYTE(v51) = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v60 = v90;
  (*(v85 + 32))(v90, v50, v86);
  v61 = v89;
  v62 = v60 + *(v89 + 36);
  *v62 = v51;
  *(v62 + 8) = v53;
  *(v62 + 16) = v55;
  *(v62 + 24) = v57;
  *(v62 + 32) = v59;
  *(v62 + 40) = 0;
  v63 = AccessibilityIdentifier.playlistSuggestedSongsCellArtwork.unsafeMutableAddressor();
  v64 = *v63;
  v65 = v63[1];
  v66 = v63[2];
  v67 = v63[3];
  v68 = sub_10023C3AC();

  View.accessibilityIdentifier(_:)(v64, v65, v66, v67, v61, v68);

  return sub_1000095E8(v60, &qword_101186180);
}

void sub_100234378()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  byte_101184EE8 = v1 == 6;
}

uint64_t sub_1002343DC()
{
  v1 = sub_10010FC20(&qword_101185770);
  __chkstk_darwin(v1 - 8);
  v3 = &aBlock[-1] - v2;
  if (qword_10117F390 != -1)
  {
    swift_once();
  }

  v4 = byte_101184EE8;
  sub_1002372D4(v0, v3, type metadata accessor for SuggestedSongsDataSource.Placement);
  type metadata accessor for SuggestedSongsDataSource.Placement(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (v4)
    {
      v23 = type metadata accessor for Material();
      v24 = &protocol witness table for Material;
      sub_10001C8B8(&v22);
      static Material.ultraThin.getter();
    }

    else
    {
      v8 = objc_allocWithZone(UIColor);
      v20 = sub_100234720;
      v21 = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10003640C;
      v19 = &unk_1010A19B8;
      v9 = _Block_copy(aBlock);
      [v8 initWithDynamicProvider:v9];
      _Block_release(v9);

      v10 = Color.init(_:)();
      v23 = &type metadata for Color;
      v24 = &protocol witness table for Color;
      *&v22 = v10;
    }

    sub_10023754C(v3, type metadata accessor for SuggestedSongsDataSource.Placement);
  }

  else
  {
    sub_10023754C(v3, type metadata accessor for SuggestedSongsDataSource.Placement);
    v5 = [objc_opt_self() whiteColor];
    v6 = [v5 colorWithAlphaComponent:0.05];

    v7 = Color.init(_:)();
    v23 = &type metadata for Color;
    v24 = &protocol witness table for Color;
    *&v22 = v7;
  }

  sub_100059A8C(&v22, aBlock);
  v11 = sub_10000954C(aBlock, v19);
  v12 = __chkstk_darwin(v11);
  (*(v14 + 16))(&aBlock[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  v15 = AnyShapeStyle.init<A>(_:)();
  sub_10000959C(aBlock);
  return v15;
}

id sub_100234720(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  sub_100009F78(0, &qword_101180C98);
  if (v1 == 2)
  {
    v2 = 21;
    v3 = 21;
    v4 = 23;
  }

  else
  {
    v2 = 244;
    v3 = 244;
    v4 = 245;
  }

  return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v2, v3, v4, 1.0);
}

uint64_t sub_1002347B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002343DC();
  *a1 = result;
  return result;
}

__n128 sub_1002347DC()
{
  if (qword_10117F390 != -1)
  {
    swift_once();
  }

  if (byte_101184EE8 == 1)
  {
    v0 = Corner.large.unsafeMutableAddressor();
  }

  else
  {
    v0 = Corner.small.unsafeMutableAddressor();
  }

  v1 = v0[1].n128_i8[0];
  result = *v0;
  xmmword_101184EF0 = *v0;
  byte_101184F00 = v1;
  return result;
}

uint64_t sub_100234854()
{
  if (qword_10117F390 != -1)
  {
    result = swift_once();
  }

  v0 = 0.0;
  if (byte_101184EE8)
  {
    v0 = 10.0;
  }

  qword_101184F08 = *&v0;
  return result;
}

uint64_t sub_1002348BC()
{
  if (qword_10117F390 != -1)
  {
    result = swift_once();
  }

  v0 = 0.0;
  if (byte_101184EE8)
  {
    v0 = 8.0;
  }

  qword_101184F10 = *&v0;
  return result;
}

uint64_t sub_100234938()
{
  static AnyTransition.opacity.getter();
  static Animation.easeIn(duration:)();
  Animation.delay(_:)();

  AnyTransition.animation(_:)();

  static UnitPoint.center.getter();
  static AnyTransition.scale(scale:anchor:)();
  static Animation.easeIn(duration:)();
  Animation.delay(_:)();

  AnyTransition.animation(_:)();

  v0 = AnyTransition.combined(with:)();

  qword_101184F20 = v0;
  return result;
}

uint64_t sub_100234A5C()
{
  if (qword_10117F3B8 != -1)
  {
    swift_once();
  }

  v0 = qword_10117F3C0;

  if (v0 != -1)
  {
    swift_once();
  }

  v1 = static AnyTransition.asymmetric(insertion:removal:)();

  qword_101184F30 = v1;
  return result;
}

uint64_t sub_100234B28()
{
  static AnyTransition.opacity.getter();
  static Animation.easeIn(duration:)();
  Animation.delay(_:)();

  v0 = AnyTransition.animation(_:)();

  qword_101184F38 = v0;
  return result;
}

uint64_t sub_100234BC0(uint64_t a1, uint64_t *a2)
{
  static AnyTransition.opacity.getter();
  static Animation.easeIn(duration:)();
  v3 = AnyTransition.animation(_:)();

  *a2 = v3;
  return result;
}

uint64_t sub_100234C28()
{
  if (qword_10117F3D0 != -1)
  {
    swift_once();
  }

  v0 = qword_10117F3D8;

  if (v0 != -1)
  {
    swift_once();
  }

  v1 = static AnyTransition.asymmetric(insertion:removal:)();

  qword_101184F48 = v1;
  return result;
}

uint64_t sub_100234CF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v57 = a1;
  v58 = a2;
  v4 = type metadata accessor for SuggestedSongsDataSource.Placement(0);
  __chkstk_darwin(v4);
  v53 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_10010FC20(&qword_101185648);
  __chkstk_darwin(v52);
  v7 = &v50 - v6;
  v51 = sub_10010FC20(&qword_101185650);
  __chkstk_darwin(v51);
  v9 = &v50 - v8;
  v10 = sub_10010FC20(&qword_101185658);
  __chkstk_darwin(v10);
  v55 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v56 = &v50 - v13;
  v14 = sub_10010FC20(&qword_101185660);
  __chkstk_darwin(v14);
  v16 = &v50 - v15;
  v17 = sub_10010FC20(&qword_101185668);
  __chkstk_darwin(v17 - 8);
  v19 = &v50 - v18;
  v20 = type metadata accessor for SuggestedSongsModule.Background(0);
  v21 = *(v3 + *(v20 + 20));
  sub_1002372D4(v3, v19, type metadata accessor for SuggestedSongsDataSource.Placement);
  v54 = v4;
  LODWORD(v4) = swift_getEnumCaseMultiPayload() == 1;
  sub_10023754C(v19, type metadata accessor for SuggestedSongsDataSource.Placement);
  if ((v4 ^ v21))
  {
    v50 = v14;
    v22 = v10;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v23 = sub_10010FC20(&qword_101185670);
    v24 = *(*(v23 - 8) + 16);
    v25 = v57;
    v57 = v23;
    v24(v7, v25);
    v26 = &v7[*(v52 + 36)];
    v27 = v64;
    *(v26 + 4) = v63;
    *(v26 + 5) = v27;
    *(v26 + 6) = v65;
    v28 = v60;
    *v26 = v59;
    *(v26 + 1) = v28;
    v29 = v62;
    *(v26 + 2) = v61;
    *(v26 + 3) = v29;
    v30 = &v9[*(v51 + 36)];
    sub_1002372D4(v3, v30, type metadata accessor for SuggestedSongsDataSource.Placement);
    v31 = static Edge.Set.all.getter();
    *(v30 + *(sub_10010FC20(&qword_101185678) + 36)) = v31;
    sub_10003D17C(v7, v9, &qword_101185648);
    v32 = v53;
    sub_1002372D4(v3 + *(v20 + 24), v53, type metadata accessor for SuggestedSongsDataSource.Placement);
    LODWORD(v30) = swift_getEnumCaseMultiPayload();
    sub_10023754C(v32, type metadata accessor for SuggestedSongsDataSource.Placement);
    if (v30 == 1)
    {
      v33 = v10;
      if (qword_10117F390 != -1)
      {
        swift_once();
      }

      if (byte_101184EE8)
      {
        v34 = 20.0;
      }

      else
      {
        v34 = 10.0;
      }
    }

    else
    {
      v37 = [objc_opt_self() currentTraitCollection];
      static Corner.collectionViewBackgroundCornerRadius(traitCollection:)();
      v39 = v38;
      v41 = v40;
      v43 = v42;

      v34 = Corner.radius(in:)(v39, 0.0, 0.0, 0.0, 0.0, v41, v43);
      v33 = v22;
    }

    v44 = v55;
    v45 = &v55[*(v33 + 36)];
    v46 = *(type metadata accessor for RoundedRectangle() + 20);
    v47 = enum case for RoundedCornerStyle.continuous(_:);
    v48 = type metadata accessor for RoundedCornerStyle();
    (*(*(v48 - 8) + 104))(v45 + v46, v47, v48);
    *v45 = v34;
    v45[1] = v34;
    *(v45 + *(sub_10010FC20(&qword_101185680) + 36)) = 256;
    sub_10003D17C(v9, v44, &qword_101185650);
    v49 = v56;
    sub_10003D17C(v44, v56, &qword_101185658);
    sub_1000089F8(v49, v16, &qword_101185658);
    swift_storeEnumTagMultiPayload();
    sub_100020674(&qword_101185688, &qword_101185670);
    sub_100237AE0();
    _ConditionalContent<>.init(storage:)();
    return sub_1000095E8(v49, &qword_101185658);
  }

  else
  {
    v35 = sub_10010FC20(&qword_101185670);
    (*(*(v35 - 8) + 16))(v16, v57, v35);
    swift_storeEnumTagMultiPayload();
    sub_100020674(&qword_101185688, &qword_101185670);
    sub_100237AE0();
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_100235458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v12 = type metadata accessor for GeometryProxy();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = static Color.clear.getter();
  (*(v13 + 16))(&v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v12);
  v16 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  *(v17 + 32) = a5;
  *(v17 + 40) = a6;
  (*(v13 + 32))(v17 + v16, &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  *a4 = v15;
  a4[1] = sub_10023C87C;
  a4[2] = v17;
  a4[3] = 0;
  a4[4] = 0;
}

uint64_t sub_1002355CC()
{
  GeometryProxy.size.getter();
  sub_10010FC20(&qword_101186280);
  return Binding.wrappedValue.setter();
}

uint64_t sub_100235648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  v8 = v2[3];
  v9 = swift_allocObject();
  *(v9 + 2) = v5;
  *(v9 + 3) = v6;
  *(v9 + 4) = v7;
  *(v9 + 5) = v8;

  v10 = static Alignment.center.getter();
  v12 = v11;
  v13 = sub_10010FC20(&qword_101186270);
  (*(*(v13 - 8) + 16))(a2, a1, v13);
  result = sub_10010FC20(&qword_101186278);
  v15 = (a2 + *(result + 36));
  *v15 = sub_10023C870;
  v15[1] = v9;
  v15[2] = v10;
  v15[3] = v12;
  return result;
}

double sub_100235744()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1002357B8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10023582C()
{
  v0 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v0 - 8);
  v2 = v10 - v1 + 16;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    static ApplicationCapabilities.shared.getter(v10);
    sub_100014984(v10);
    v5 = BYTE1(v10[0]);
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v11[0]) = v5;

    static Published.subscript.setter();
    static ApplicationCapabilities.shared.getter(v11);
    sub_100014984(v11);
    if (BYTE1(v11[0]))
    {
      v6 = *(dispatch thunk of MusicSuggestedSongsViewModel.suggestedSongs.getter() + 16);

      if (!v6)
      {
        v7 = type metadata accessor for TaskPriority();
        (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
        v8 = swift_allocObject();
        v8[2] = 0;
        v8[3] = 0;
        v8[4] = v4;

        sub_1001F4CB8(0, 0, v2, &unk_100EC0C90, v8);
      }
    }
  }

  return result;
}

uint64_t sub_100235A2C()
{
  v3 = (&async function pointer to dispatch thunk of MusicSuggestedSongsViewModel.refresh() + async function pointer to dispatch thunk of MusicSuggestedSongsViewModel.refresh());
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_100235AD4;

  return v3();
}

uint64_t sub_100235AD4()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100235C08, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100235C08()
{
  v14 = v0;
  if (qword_10117FE30 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_101219770);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[5];
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to refresh suggested songs after regaining network connectivity with error=%{public}s", v6, 0xCu);
    sub_10000959C(v7);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_100235DD8()
{

  sub_10023754C(v0 + OBJC_IVAR____TtC5Music24SuggestedSongsDataSource_placement, type metadata accessor for SuggestedSongsDataSource.Placement);
  sub_10012BA6C(v0 + OBJC_IVAR____TtC5Music24SuggestedSongsDataSource_presentationSource);

  v1 = OBJC_IVAR____TtC5Music24SuggestedSongsDataSource__availableWidth;
  v2 = sub_10010FC20(&qword_101180F88);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC5Music24SuggestedSongsDataSource__hasNetworkConnectivity;
  v4 = sub_10010FC20(&unk_101189E60);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t sub_100235F0C()
{
  sub_100235DD8();

  return swift_deallocClassInstance();
}

void sub_100235F8C()
{
  type metadata accessor for SuggestedSongsDataSource.Placement(319);
  if (v0 <= 0x3F)
  {
    sub_1002377D0(319, &qword_101180DB0, &type metadata for CGFloat, &type metadata accessor for Published);
    if (v1 <= 0x3F)
    {
      sub_1002377D0(319, &qword_10119ED80, &type metadata for Bool, &type metadata accessor for Published);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_100236130@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SuggestedSongsDataSource(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100236170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v8 = static Alignment.center.getter();
  v10 = v9;
  v11 = a3 + *(sub_10010FC20(&qword_101185AE0) + 36);
  v12 = type metadata accessor for Song();
  (*(*(v12 - 8) + 16))(v11, v5, v12);
  v13 = (v5 + *(a2 + 20));
  v15 = *v13;
  v14 = v13[1];
  v16 = (v11 + *(type metadata accessor for TaggedViewResolver(0) + 20));
  *v16 = v15;
  v16[1] = v14;
  v17 = (v11 + *(sub_10010FC20(&qword_101185AE8) + 36));
  *v17 = v8;
  v17[1] = v10;
  v18 = sub_10010FC20(&qword_101185AF0);
  (*(*(v18 - 8) + 16))(a3, a1, v18);
}

uint64_t sub_100236398()
{
  v1 = OBJC_IVAR____TtCV5Music18TaggedViewResolver4View_song;
  v2 = type metadata accessor for Song();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
}

id sub_100236414()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TaggedViewResolver.View(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1002364F4()
{
  result = type metadata accessor for Song();
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

uint64_t sub_1002365E0()
{
  result = type metadata accessor for MusicLibraryPlaylistViewModel();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Playlist();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100236654(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Song();
  v5 = __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v2, v5);
  v9 = (v2 + *(a2 + 20));
  v10 = *v9;
  v11 = v9[1];
  v12 = objc_allocWithZone(type metadata accessor for TaggedViewResolver.View(0));

  v13 = sub_10023BE64(v7, v10, v11);

  return v13;
}

uint64_t sub_1002367A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100236DF0(&qword_101186160, type metadata accessor for TaggedViewResolver);

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10023683C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100236DF0(&qword_101186160, type metadata accessor for TaggedViewResolver);

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1002368D0()
{
  sub_100236DF0(&qword_101186160, type metadata accessor for TaggedViewResolver);
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_100236928(void *a1)
{
  v2 = v1;
  v33 = a1;
  v3 = type metadata accessor for Song();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v32 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for GenericMusicItem();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v38 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for DragDropToQueue.Origin(0);
  __chkstk_darwin(v34);
  v36 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101185210);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100EBE260;
  v11 = type metadata accessor for DragDropToLibrary(0);
  *(v10 + 56) = v11;
  *(v10 + 64) = sub_100236DF0(&qword_101185218, type metadata accessor for DragDropToLibrary);
  v12 = sub_10001C8B8((v10 + 32));
  v13 = *(v4 + 16);
  v13(v12, v2, v3);
  v14 = enum case for GenericMusicItem.song(_:);
  v35 = v7;
  v15 = *(v7 + 104);
  v15(v12, enum case for GenericMusicItem.song(_:), v6);
  *(v12 + *(v11 + 20)) = 1;
  *(v10 + 96) = &type metadata for DragDropToPlaylist;
  *(v10 + 104) = sub_100236D7C();
  v16 = swift_allocObject();
  *(v10 + 72) = v16;
  *(v16 + 40) = v3;
  *(v16 + 48) = &protocol witness table for Song;
  *(v16 + 56) = &protocol witness table for Song;
  v17 = sub_10001C8B8((v16 + 16));
  v18 = v37;
  v13(v17, v37, v3);
  v19 = type metadata accessor for SuggestedSong(0);
  v20 = v18;
  v21 = (v18 + *(v19 + 20));
  v22 = v21[1];
  *(v16 + 64) = *v21;
  *(v16 + 72) = v22;
  *(v16 + 80) = 2;
  v23 = v38;
  v13(v38, v20, v3);
  v15(v23, v14, v6);
  v24 = v33;
  if (v33)
  {

    v25 = v24;
  }

  else
  {
    sub_100009F78(0, &qword_10118AB70);
    v13(v32, v37, v3);

    v23 = v38;
    v25 = MPCPlaybackIntent.init<A>(_:)();
  }

  v26 = v36;
  (*(v35 + 32))(v36, v23, v6);
  *(v26 + *(v34 + 20)) = v25;
  v27 = type metadata accessor for DragDropToQueue(0);
  *(v10 + 136) = v27;
  *(v10 + 144) = sub_100236DF0(&qword_101185228, type metadata accessor for DragDropToQueue);
  v28 = sub_10001C8B8((v10 + 112));
  sub_10023733C(v26, v28, type metadata accessor for DragDropToQueue.Origin);
  *(v28 + *(v27 + 20)) = 3;
  v29 = v24;
  return v10;
}

unint64_t sub_100236D7C()
{
  result = qword_101185220;
  if (!qword_101185220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101185220);
  }

  return result;
}

uint64_t sub_100236DF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100236E38@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_100236EB8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100236F2C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_100235A0C(a1, v4, v5, v6);
}

void sub_100237048()
{
  sub_100237120();
  if (v0 <= 0x3F)
  {
    sub_1002371B4();
    if (v1 <= 0x3F)
    {
      type metadata accessor for SuggestedSongsModule.Specs(319);
      if (v2 <= 0x3F)
      {
        sub_1002377D0(319, &qword_101197850, &type metadata for Bool, &type metadata accessor for State);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100237120()
{
  if (!qword_101185298)
  {
    type metadata accessor for MusicSuggestedSongsViewModel();
    sub_100236DF0(&qword_1011852A0, &type metadata accessor for MusicSuggestedSongsViewModel);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &qword_101185298);
    }
  }
}

void sub_1002371B4()
{
  if (!qword_1011852A8)
  {
    type metadata accessor for SuggestedSongsDataSource(255);
    sub_100236DF0(&qword_1011A4A60, type metadata accessor for SuggestedSongsDataSource);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &qword_1011852A8);
    }
  }
}

uint64_t sub_1002372D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10023733C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002373A4()
{
  type metadata accessor for SuggestedSongsModule(0);

  return sub_10021E7BC();
}

unint64_t sub_100237424()
{
  result = qword_101185418;
  if (!qword_101185418)
  {
    sub_1001109D0(&qword_101185400);
    sub_100020674(&qword_101185420, &qword_101185428);
    sub_100236DF0(&qword_101185430, type metadata accessor for SuggestedSongsModule.Background);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101185418);
  }

  return result;
}

uint64_t sub_10023754C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002375D4()
{
  result = type metadata accessor for SuggestedSongsDataSource.Placement(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SuggestedSongsModule.Specs(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_100237698()
{
  sub_100237120();
  if (v0 <= 0x3F)
  {
    sub_1002371B4();
    if (v1 <= 0x3F)
    {
      sub_1002377D0(319, &qword_101185550, &type metadata for Bool, &type metadata accessor for Binding);
      if (v2 <= 0x3F)
      {
        type metadata accessor for SuggestedSongsModule.Specs(319);
        if (v3 <= 0x3F)
        {
          sub_10023B4F4(319, &qword_10119F120, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
          if (v4 <= 0x3F)
          {
            sub_100237820();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1002377D0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_100237820()
{
  if (!qword_101185558)
  {
    sub_1001109D0(&unk_101184290);
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_101185558);
    }
  }
}

void sub_1002378AC()
{
  sub_100237120();
  if (v0 <= 0x3F)
  {
    sub_1002371B4();
    if (v1 <= 0x3F)
    {
      type metadata accessor for SuggestedSongsModule.Specs(319);
      if (v2 <= 0x3F)
      {
        sub_100237820();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_100237960()
{
  result = qword_101185630;
  if (!qword_101185630)
  {
    sub_1001109D0(&qword_101185638);
    sub_1001109D0(&qword_101185400);
    sub_100237424();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101185630);
  }

  return result;
}

unint64_t sub_100237A70()
{
  result = qword_101185640;
  if (!qword_101185640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101185640);
  }

  return result;
}

unint64_t sub_100237AE0()
{
  result = qword_101185690;
  if (!qword_101185690)
  {
    sub_1001109D0(&qword_101185658);
    sub_100237B98();
    sub_100020674(&qword_1011A16F0, &qword_101185680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101185690);
  }

  return result;
}

unint64_t sub_100237B98()
{
  result = qword_101185698;
  if (!qword_101185698)
  {
    sub_1001109D0(&qword_101185650);
    sub_100237C50();
    sub_100020674(&qword_1011856A8, &qword_101185678);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101185698);
  }

  return result;
}

unint64_t sub_100237C50()
{
  result = qword_1011856A0;
  if (!qword_1011856A0)
  {
    sub_1001109D0(&qword_101185648);
    sub_100020674(&qword_101185688, &qword_101185670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011856A0);
  }

  return result;
}

uint64_t sub_100237D08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SuggestedSongsModule.ContentView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100223244(a1, v6, a2);
}

uint64_t sub_100237DA8()
{
  v1 = type metadata accessor for SuggestedSongsModule.ContentView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[7];
  type metadata accessor for SuggestedSongsDataSource.Placement(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for Playlist();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v1[8];
  sub_10010FC20(&qword_10118A610);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for DynamicTypeSize();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  v7 = v1[9];
  sub_10010FC20(&unk_101184840);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for UserInterfaceSizeClass();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v2 + v7, 1, v8))
    {
      (*(v9 + 8))(v2 + v7, v8);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100238058()
{
  v1 = *(type metadata accessor for SuggestedSongsModule.ContentView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for Song() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_100224864(v0 + v2, v5);
}

unint64_t sub_100238124()
{
  result = qword_101185808;
  if (!qword_101185808)
  {
    sub_1001109D0(&qword_1011857C0);
    sub_1002381DC();
    sub_100020674(&qword_101185858, &qword_10119A1A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101185808);
  }

  return result;
}

unint64_t sub_1002381DC()
{
  result = qword_101185810;
  if (!qword_101185810)
  {
    sub_1001109D0(&qword_1011857B8);
    sub_10023AC64(&qword_101185818, &qword_1011857B0, &unk_100EC1100, sub_100238294);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101185810);
  }

  return result;
}

unint64_t sub_100238294()
{
  result = qword_101185820;
  if (!qword_101185820)
  {
    sub_1001109D0(&qword_101185828);
    sub_100020674(&qword_101180F58, &qword_101199ED0);
    sub_1001109D0(&qword_101185830);
    sub_1001109D0(&qword_101185838);
    type metadata accessor for PlainButtonStyle();
    sub_10023841C();
    sub_100236DF0(&qword_10119A260, &type metadata accessor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101185820);
  }

  return result;
}

unint64_t sub_10023841C()
{
  result = qword_101185840;
  if (!qword_101185840)
  {
    sub_1001109D0(&qword_101185838);
    sub_100020674(&qword_101185848, &qword_101185850);
    sub_100020674(&unk_101184E40, &qword_10119A240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101185840);
  }

  return result;
}

uint64_t sub_100238500(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(a2);
    a4();
    sub_100236DF0(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1002385E8()
{
  result = qword_101185880;
  if (!qword_101185880)
  {
    sub_1001109D0(&qword_101185878);
    sub_1002386A0();
    sub_100020674(&qword_101185898, &qword_1011858A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101185880);
  }

  return result;
}

unint64_t sub_1002386A0()
{
  result = qword_101185888;
  if (!qword_101185888)
  {
    sub_1001109D0(&qword_101185890);
    sub_1001109D0(&unk_1011A1100);
    sub_100238768();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101185888);
  }

  return result;
}

unint64_t sub_100238768()
{
  result = qword_10119A230;
  if (!qword_10119A230)
  {
    sub_1001109D0(&unk_1011A1100);
    sub_100020674(&unk_1011914B0, &qword_101184D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A230);
  }

  return result;
}

uint64_t sub_100238820(uint64_t a1)
{
  v4 = *(type metadata accessor for SuggestedSongsModule.HeaderView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002F3F4;

  return sub_1002227B8(a1, v6, v7, v1 + v5);
}

uint64_t sub_100238924(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SuggestedSongsDataSource.Placement(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1002389A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SuggestedSongsDataSource.Placement(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100238A34()
{
  result = type metadata accessor for SuggestedSongsDataSource.Placement(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_100238AC8()
{
  result = type metadata accessor for Song();
  if (v1 <= 0x3F)
  {
    result = sub_10001F7E8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_100238B74()
{
  type metadata accessor for Song();
  if (v0 <= 0x3F)
  {
    sub_100237120();
    if (v1 <= 0x3F)
    {
      sub_1002371B4();
      if (v2 <= 0x3F)
      {
        sub_1002377D0(319, &qword_101197850, &type metadata for Bool, &type metadata accessor for State);
        if (v3 <= 0x3F)
        {
          type metadata accessor for SuggestedSongsModule.Specs(319);
          if (v4 <= 0x3F)
          {
            sub_100238CF4();
            if (v5 <= 0x3F)
            {
              sub_10023B4F4(319, &qword_10119F120, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
              if (v6 <= 0x3F)
              {
                sub_100237820();
                if (v7 <= 0x3F)
                {
                  type metadata accessor for Actions.MetricsReportingContext();
                  if (v8 <= 0x3F)
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

void sub_100238CF4()
{
  if (!qword_101185A40)
  {
    type metadata accessor for PreviewPlaybackController(255);
    sub_100236DF0(&qword_101185730, type metadata accessor for PreviewPlaybackController);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &qword_101185A40);
    }
  }
}

unint64_t sub_100238D88()
{
  result = qword_101185A90;
  if (!qword_101185A90)
  {
    sub_1001109D0(&qword_101185A98);
    sub_100020674(&qword_101185688, &qword_101185670);
    sub_100237AE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101185A90);
  }

  return result;
}

unint64_t sub_100238E40()
{
  result = qword_101185AA0;
  if (!qword_101185AA0)
  {
    sub_1001109D0(&qword_1011856F0);
    sub_100238ECC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101185AA0);
  }

  return result;
}

unint64_t sub_100238ECC()
{
  result = qword_101185AA8;
  if (!qword_101185AA8)
  {
    sub_1001109D0(&qword_1011856B8);
    sub_100020674(&qword_101185AB0, &qword_1011856B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101185AA8);
  }

  return result;
}

unint64_t sub_100238F84()
{
  result = qword_101185AB8;
  if (!qword_101185AB8)
  {
    sub_1001109D0(&qword_1011857A8);
    sub_100239010();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101185AB8);
  }

  return result;
}

unint64_t sub_100239010()
{
  result = qword_101185AC0;
  if (!qword_101185AC0)
  {
    sub_1001109D0(&qword_101185798);
    sub_10023909C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101185AC0);
  }

  return result;
}

unint64_t sub_10023909C()
{
  result = qword_101185AC8;
  if (!qword_101185AC8)
  {
    sub_1001109D0(&qword_101185790);
    sub_100239128();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101185AC8);
  }

  return result;
}

unint64_t sub_100239128()
{
  result = qword_101185AD0;
  if (!qword_101185AD0)
  {
    sub_1001109D0(&qword_101185788);
    sub_100020674(&qword_101185AD8, &qword_101185780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101185AD0);
  }

  return result;
}

unint64_t sub_1002392E4()
{
  result = qword_101185B98;
  if (!qword_101185B98)
  {
    sub_1001109D0(&qword_101185B90);
    sub_10023939C();
    sub_100020674(&qword_101185898, &qword_1011858A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101185B98);
  }

  return result;
}

unint64_t sub_10023939C()
{
  result = qword_101185BA0;
  if (!qword_101185BA0)
  {
    sub_1001109D0(&qword_101185BA8);
    sub_100239428();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101185BA0);
  }

  return result;
}

unint64_t sub_100239428()
{
  result = qword_101185BB0;
  if (!qword_101185BB0)
  {
    sub_1001109D0(&qword_101185BB8);
    sub_1001109D0(&unk_1011A1100);
    sub_100238768();
    swift_getOpaqueTypeConformance2();
    sub_100020674(&qword_1011A1670, &qword_1011A13C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101185BB0);
  }

  return result;
}

double sub_10023951C(uint64_t a1)
{
  v2 = type metadata accessor for UserInterfaceSizeClass();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&qword_101185768);
  __chkstk_darwin(v6);
  v8 = &v20 - v7;
  v9 = sub_10010FC20(&unk_101184290);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v20 - v13;
  if (qword_10117F390 != -1)
  {
    swift_once();
  }

  result = 9.0;
  if ((byte_101184EE8 & 1) == 0)
  {
    (*(v3 + 104))(v14, enum case for UserInterfaceSizeClass.compact(_:), v2, 9.0);
    (*(v3 + 56))(v14, 0, 1, v2);
    v16 = *(v6 + 48);
    sub_1000089F8(a1, v8, &unk_101184290);
    sub_1000089F8(v14, &v8[v16], &unk_101184290);
    v17 = *(v3 + 48);
    if (v17(v8, 1, v2) == 1)
    {
      sub_1000095E8(v14, &unk_101184290);
      if (v17(&v8[v16], 1, v2) == 1)
      {
        sub_1000095E8(v8, &unk_101184290);
        return 10.0;
      }
    }

    else
    {
      sub_1000089F8(v8, v11, &unk_101184290);
      if (v17(&v8[v16], 1, v2) != 1)
      {
        (*(v3 + 32))(v5, &v8[v16], v2);
        sub_100236DF0(&qword_101185778, &type metadata accessor for UserInterfaceSizeClass);
        v18 = dispatch thunk of static Equatable.== infix(_:_:)();
        v19 = *(v3 + 8);
        v19(v5, v2);
        sub_1000095E8(v14, &unk_101184290);
        v19(v11, v2);
        sub_1000095E8(v8, &unk_101184290);
        result = 10.0;
        if (v18)
        {
          return result;
        }

        return 16.0;
      }

      sub_1000095E8(v14, &unk_101184290);
      (*(v3 + 8))(v11, v2);
    }

    sub_1000095E8(v8, &qword_101185768);
    return 16.0;
  }

  return result;
}

unint64_t sub_100239948()
{
  result = qword_101185BC8;
  if (!qword_101185BC8)
  {
    sub_1001109D0(&qword_101185B78);
    sub_100239A00();
    sub_100020674(&qword_101185BF0, &qword_101185BF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101185BC8);
  }

  return result;
}

unint64_t sub_100239A00()
{
  result = qword_101185BD0;
  if (!qword_101185BD0)
  {
    sub_1001109D0(&qword_101185B70);
    sub_100239A8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101185BD0);
  }

  return result;
}

unint64_t sub_100239A8C()
{
  result = qword_101185BD8;
  if (!qword_101185BD8)
  {
    sub_1001109D0(&qword_101185B68);
    sub_1001109D0(&qword_101185B58);
    sub_1001109D0(&qword_101185B50);
    type metadata accessor for PlainButtonStyle();
    sub_100020674(&qword_101185BC0, &qword_101185B50);
    sub_100236DF0(&qword_10119A260, &type metadata accessor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100020674(&qword_101185BE0, &qword_101185BE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101185BD8);
  }

  return result;
}

uint64_t sub_100239C40()
{
  v1 = type metadata accessor for SuggestedSongsModule.SongCell(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v3 = type metadata accessor for Song();
  (*(*(v3 - 8) + 8))(v2, v3);

  v4 = v1[8];
  type metadata accessor for SuggestedSongsDataSource.Placement(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for Playlist();
    (*(*(v5 - 8) + 8))(v2 + v4, v5);
  }

  else
  {
  }

  v6 = v1[10];
  sub_10010FC20(&qword_10118A610);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for DynamicTypeSize();
    (*(*(v7 - 8) + 8))(v2 + v6, v7);
  }

  else
  {
  }

  v8 = v1[11];
  sub_10010FC20(&unk_101184840);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for UserInterfaceSizeClass();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v2 + v8, 1, v9))
    {
      (*(v10 + 8))(v2 + v8, v9);
    }
  }

  else
  {
  }

  v11 = v2 + v1[12];
  if (*(v11 + 8) >= 0xDuLL)
  {
  }

  v12 = v11 + *(type metadata accessor for Actions.MetricsReportingContext() + 20);
  v13 = type metadata accessor for MetricsEvent.Page(0);
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {

    v14 = *(v13 + 24);
    v15 = type metadata accessor for URL();
    v16 = *(v15 - 8);
    if (!(*(v16 + 48))(v12 + v14, 1, v15))
    {
      (*(v16 + 8))(v12 + v14, v15);
    }
  }

  return swift_deallocObject();
}

unint64_t sub_10023A090()
{
  result = qword_101185C10;
  if (!qword_101185C10)
  {
    sub_1001109D0(&qword_101185B10);
    sub_10023A11C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101185C10);
  }

  return result;
}

unint64_t sub_10023A11C()
{
  result = qword_101185C18;
  if (!qword_101185C18)
  {
    sub_1001109D0(&qword_101185B08);
    sub_10023A1A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101185C18);
  }

  return result;
}

unint64_t sub_10023A1A8()
{
  result = qword_101185C20;
  if (!qword_101185C20)
  {
    sub_1001109D0(&qword_101185B00);
    sub_10023A234();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101185C20);
  }

  return result;
}

unint64_t sub_10023A234()
{
  result = qword_101185C28;
  if (!qword_101185C28)
  {
    sub_1001109D0(&qword_101185AF8);
    sub_100020674(&qword_101185C30, &qword_101185C38);
    sub_100020674(&unk_1011914B0, &qword_101184D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101185C28);
  }

  return result;
}

unint64_t sub_10023A318()
{
  result = qword_101185C40;
  if (!qword_101185C40)
  {
    sub_1001109D0(&qword_101185B28);
    sub_1001109D0(&qword_101185B18);
    sub_1001109D0(&qword_101185B10);
    sub_10023A090();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100236DF0(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101185C40);
  }

  return result;
}

uint64_t sub_10023A484(uint64_t a1)
{
  v3 = *(type metadata accessor for SuggestedSongsModule.SongCell(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10022D318(a1, v4);
}

id sub_10023A4F4()
{
  type metadata accessor for SuggestedSongsModule.SongCell(0);

  return sub_10022DACC();
}

unint64_t sub_10023A55C()
{
  result = qword_101185C60;
  if (!qword_101185C60)
  {
    sub_1001109D0(&qword_101185C50);
    sub_10023A614();
    sub_100020674(&qword_101185C98, &qword_101185CA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101185C60);
  }

  return result;
}

unint64_t sub_10023A614()
{
  result = qword_101185C68;
  if (!qword_101185C68)
  {
    sub_1001109D0(&qword_101185C70);
    sub_10023A6A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101185C68);
  }

  return result;
}

unint64_t sub_10023A6A0()
{
  result = qword_101185C78;
  if (!qword_101185C78)
  {
    sub_1001109D0(&qword_101185C80);
    sub_100020674(&qword_101185C88, &qword_101185C90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101185C78);
  }

  return result;
}

uint64_t sub_10023A758(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for SuggestedSongsModule.SongCell(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for Playlist() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100008F30;

  return sub_10022D5D4(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_10023A8A8(char a1)
{
  type metadata accessor for SuggestedSongsModule.SongCell(0);

  return sub_10022ED58(a1);
}

uint64_t sub_10023A918(uint64_t a1)
{
  v4 = *(type metadata accessor for SuggestedSongsModule.SongCell(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_10022F9BC(a1, v6, v7, v1 + v5);
}

uint64_t sub_10023AA4C(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

unint64_t sub_10023AAC8()
{
  result = qword_101185D00;
  if (!qword_101185D00)
  {
    sub_1001109D0(&qword_101185CE8);
    sub_10023AB80();
    sub_100020674(&qword_101185D58, &qword_101185CF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101185D00);
  }

  return result;
}

unint64_t sub_10023AB80()
{
  result = qword_101185D08;
  if (!qword_101185D08)
  {
    sub_1001109D0(&qword_101185CE0);
    sub_10023AC64(&qword_101185D10, &qword_101185CD8, &unk_100EC15B0, sub_10023ACE0);
    sub_100020674(&qword_101185D58, &qword_101185CF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101185D08);
  }

  return result;
}

uint64_t sub_10023AC64(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10023ACE0()
{
  result = qword_101185D18;
  if (!qword_101185D18)
  {
    sub_1001109D0(&qword_101185D20);
    sub_10023AD98();
    sub_100020674(&qword_101185D48, &qword_101185D50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101185D18);
  }

  return result;
}

unint64_t sub_10023AD98()
{
  result = qword_101185D28;
  if (!qword_101185D28)
  {
    sub_1001109D0(&qword_101185D30);
    sub_100020674(&qword_101185D38, &qword_101185D40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101185D28);
  }

  return result;
}

unint64_t sub_10023AE50()
{
  result = qword_101185D60;
  if (!qword_101185D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101185D60);
  }

  return result;
}

uint64_t sub_10023AEA4(uint64_t a1)
{
  v4 = *(type metadata accessor for SuggestedSongsModule.SongCell(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002F3F4;

  return sub_10022E5CC(a1, v6, v7, v1 + v5, v8);
}

unint64_t sub_10023AFC4()
{
  v1 = *(type metadata accessor for Song() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10021D920(v3, v0 + v2, v4);
}

uint64_t sub_10023B054()
{
  v2 = *(type metadata accessor for Song() - 8);
  v3 = (*(v2 + 80) + 25) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v0 + 24);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100008F30;

  return sub_10021D9D0(v4, v6, v0 + v3, v5);
}

uint64_t sub_10023B200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Song();
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

uint64_t sub_10023B2D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Song();
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

void sub_10023B3B0()
{
  type metadata accessor for Song();
  if (v0 <= 0x3F)
  {
    sub_1002371B4();
    if (v1 <= 0x3F)
    {
      type metadata accessor for SuggestedSongsModule.Specs(319);
      if (v2 <= 0x3F)
      {
        sub_10023B4F4(319, &unk_101185EE0, type metadata accessor for CGSize, &type metadata accessor for State);
        if (v3 <= 0x3F)
        {
          sub_10023B4F4(319, &qword_10119F120, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
          if (v4 <= 0x3F)
          {
            sub_100237820();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_10023B4F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_10023B580()
{
  type metadata accessor for Song();
  if (v0 <= 0x3F)
  {
    sub_10023B4F4(319, &qword_10119F120, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10023B648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Song();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_10010FC20(&qword_10119F0B0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10023B758(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Song();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_10010FC20(&qword_10119F0B0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

unint64_t sub_10023B860()
{
  result = qword_101186040;
  if (!qword_101186040)
  {
    sub_1001109D0(&qword_101185AE0);
    sub_100020674(&qword_101186048, &qword_101185AF0);
    sub_100020674(&qword_101186050, &qword_101185AE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101186040);
  }

  return result;
}

unint64_t sub_10023B9EC()
{
  result = qword_1011860B0;
  if (!qword_1011860B0)
  {
    sub_1001109D0(&qword_101186090);
    swift_getOpaqueTypeConformance2();
    sub_100020674(&qword_1011860B8, &unk_10119A2E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011860B0);
  }

  return result;
}

unint64_t sub_10023BAD4()
{
  result = qword_1011860C0;
  if (!qword_1011860C0)
  {
    sub_1001109D0(&qword_101184C80);
    sub_100236DF0(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011860C0);
  }

  return result;
}

unint64_t sub_10023BB90()
{
  result = qword_1011860D8;
  if (!qword_1011860D8)
  {
    sub_1001109D0(&qword_1011860D0);
    sub_100020674(&qword_1011860B8, &unk_10119A2E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011860D8);
  }

  return result;
}

unint64_t sub_10023BC48()
{
  result = qword_101186128;
  if (!qword_101186128)
  {
    sub_1001109D0(&qword_101186118);
    sub_10023B9EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101186128);
  }

  return result;
}

unint64_t sub_10023BCD4()
{
  result = qword_101186138;
  if (!qword_101186138)
  {
    sub_1001109D0(&qword_101186130);
    sub_10023BD8C();
    sub_100020674(&qword_1011860B8, &unk_10119A2E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101186138);
  }

  return result;
}

unint64_t sub_10023BD8C()
{
  result = qword_101186140;
  if (!qword_101186140)
  {
    sub_1001109D0(&qword_101186148);
    sub_1001195A4();
    sub_100020674(&unk_101184E40, &qword_10119A240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101186140);
  }

  return result;
}

uint64_t sub_10023BE64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtCV5Music18TaggedViewResolver4View_song;
  v8 = type metadata accessor for Song();
  v9 = *(v8 - 8);
  (*(v9 + 16))(&v3[v7], a1, v8);
  v10 = &v3[OBJC_IVAR____TtCV5Music18TaggedViewResolver4View_windowObserver];
  *v10 = a2;
  *(v10 + 1) = a3;
  v45.receiver = v3;
  v45.super_class = type metadata accessor for TaggedViewResolver.View(0);

  v11 = objc_msgSendSuper2(&v45, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  result = Song.catalogID.getter();
  if (!v13)
  {
    goto LABEL_65;
  }

  v14 = HIBYTE(v13) & 0xF;
  v15 = result & 0xFFFFFFFFFFFFLL;
  if ((v13 & 0x2000000000000000) != 0)
  {
    v16 = HIBYTE(v13) & 0xF;
  }

  else
  {
    v16 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {

    goto LABEL_65;
  }

  if ((v13 & 0x1000000000000000) != 0)
  {
    v18 = sub_1002D0E10(result, v13, 10);
    v41 = v40;

    if (v41)
    {
      goto LABEL_65;
    }

    goto LABEL_64;
  }

  if ((v13 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v13 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v15 = v42;
    }

    v17 = *result;
    if (v17 == 43)
    {
      if (v15 >= 1)
      {
        if (--v15)
        {
          v18 = 0;
          if (result)
          {
            v25 = (result + 1);
            while (1)
            {
              v26 = *v25 - 48;
              if (v26 > 9)
              {
                goto LABEL_62;
              }

              v27 = 10 * v18;
              if ((v18 * 10) >> 64 != (10 * v18) >> 63)
              {
                goto LABEL_62;
              }

              v18 = v27 + v26;
              if (__OFADD__(v27, v26))
              {
                goto LABEL_62;
              }

              ++v25;
              if (!--v15)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_61;
        }

        goto LABEL_62;
      }

      goto LABEL_72;
    }

    if (v17 != 45)
    {
      if (v15)
      {
        v18 = 0;
        if (result)
        {
          while (1)
          {
            v31 = *result - 48;
            if (v31 > 9)
            {
              goto LABEL_62;
            }

            v32 = 10 * v18;
            if ((v18 * 10) >> 64 != (10 * v18) >> 63)
            {
              goto LABEL_62;
            }

            v18 = v32 + v31;
            if (__OFADD__(v32, v31))
            {
              goto LABEL_62;
            }

            ++result;
            if (!--v15)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_61;
      }

LABEL_62:
      v18 = 0;
      LOBYTE(v15) = 1;
LABEL_63:
      v44 = v15;
      v36 = v15;

      if (v36)
      {
LABEL_65:
        v37 = objc_opt_self();
        v38 = v11;
        v39 = [v37 clearColor];
        [v38 setBackgroundColor:v39];

        [v38 setUserInteractionEnabled:0];
        (*(v9 + 8))(a1, v8);
        return v38;
      }

LABEL_64:
      [v11 setTag:v18];
      goto LABEL_65;
    }

    if (v15 >= 1)
    {
      if (--v15)
      {
        v18 = 0;
        if (result)
        {
          v19 = (result + 1);
          while (1)
          {
            v20 = *v19 - 48;
            if (v20 > 9)
            {
              goto LABEL_62;
            }

            v21 = 10 * v18;
            if ((v18 * 10) >> 64 != (10 * v18) >> 63)
            {
              goto LABEL_62;
            }

            v18 = v21 - v20;
            if (__OFSUB__(v21, v20))
            {
              goto LABEL_62;
            }

            ++v19;
            if (!--v15)
            {
              goto LABEL_63;
            }
          }
        }

LABEL_61:
        LOBYTE(v15) = 0;
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v43[0] = result;
  v43[1] = v13 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v14)
      {
        v18 = 0;
        v33 = v43;
        while (1)
        {
          v34 = *v33 - 48;
          if (v34 > 9)
          {
            break;
          }

          v35 = 10 * v18;
          if ((v18 * 10) >> 64 != (10 * v18) >> 63)
          {
            break;
          }

          v18 = v35 + v34;
          if (__OFADD__(v35, v34))
          {
            break;
          }

          ++v33;
          if (!--v14)
          {
            goto LABEL_61;
          }
        }
      }

      goto LABEL_62;
    }

    if (v14)
    {
      v15 = v14 - 1;
      if (v14 != 1)
      {
        v18 = 0;
        v22 = v43 + 1;
        while (1)
        {
          v23 = *v22 - 48;
          if (v23 > 9)
          {
            break;
          }

          v24 = 10 * v18;
          if ((v18 * 10) >> 64 != (10 * v18) >> 63)
          {
            break;
          }

          v18 = v24 - v23;
          if (__OFSUB__(v24, v23))
          {
            break;
          }

          ++v22;
          if (!--v15)
          {
            goto LABEL_63;
          }
        }
      }

      goto LABEL_62;
    }

    goto LABEL_71;
  }

  if (v14)
  {
    v15 = v14 - 1;
    if (v14 != 1)
    {
      v18 = 0;
      v28 = v43 + 1;
      while (1)
      {
        v29 = *v28 - 48;
        if (v29 > 9)
        {
          break;
        }

        v30 = 10 * v18;
        if ((v18 * 10) >> 64 != (10 * v18) >> 63)
        {
          break;
        }

        v18 = v30 + v29;
        if (__OFADD__(v30, v29))
        {
          break;
        }

        ++v28;
        if (!--v15)
        {
          goto LABEL_63;
        }
      }
    }

    goto LABEL_62;
  }

LABEL_73:
  __break(1u);
  return result;
}

unint64_t sub_10023C2D8()
{
  result = qword_101186188;
  if (!qword_101186188)
  {
    sub_1001109D0(&qword_101186168);
    swift_getOpaqueTypeConformance2();
    sub_100236DF0(&qword_101186190, type metadata accessor for PreviewOverlay.ArtworkVariant);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101186188);
  }

  return result;
}

unint64_t sub_10023C3AC()
{
  result = qword_101186198;
  if (!qword_101186198)
  {
    sub_1001109D0(&qword_101186180);
    sub_1001109D0(&qword_101186170);
    sub_1001109D0(&qword_101186168);
    sub_10023C2D8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101186198);
  }

  return result;
}

uint64_t sub_10023C4B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_10023C500(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_10023C578()
{
  sub_10023B4F4(319, &qword_10119F120, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_100237820();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_10023C63C()
{
  result = qword_101186238;
  if (!qword_101186238)
  {
    sub_1001109D0(&qword_101186078);
    sub_10023C6C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101186238);
  }

  return result;
}

unint64_t sub_10023C6C8()
{
  result = qword_101186240;
  if (!qword_101186240)
  {
    sub_1001109D0(&qword_101186068);
    sub_100020674(&qword_101186248, &qword_101186060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101186240);
  }

  return result;
}

unint64_t sub_10023C780()
{
  result = qword_101186250;
  if (!qword_101186250)
  {
    sub_1001109D0(&qword_1011860F8);
    sub_100020674(&qword_101186258, &qword_1011860E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101186250);
  }

  return result;
}

uint64_t sub_10023C87C()
{
  type metadata accessor for GeometryProxy();

  return sub_1002355CC();
}

unint64_t sub_10023C8E4()
{
  result = qword_1011862A8;
  if (!qword_1011862A8)
  {
    sub_1001109D0(&qword_1011862A0);
    sub_10023BB90();
    sub_100020674(&unk_101184E40, &qword_10119A240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011862A8);
  }

  return result;
}

unint64_t sub_10023C99C()
{
  result = qword_1011862B0;
  if (!qword_1011862B0)
  {
    sub_1001109D0(&qword_101186288);
    sub_1001109D0(&qword_1011862A0);
    sub_10023C8E4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011862B0);
  }

  return result;
}

unint64_t sub_10023CA64()
{
  result = qword_1011862C0;
  if (!qword_1011862C0)
  {
    sub_1001109D0(&qword_101186278);
    sub_100020674(&qword_1011862C8, &qword_101186270);
    sub_100020674(&qword_1011862D0, &qword_1011862D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011862C0);
  }

  return result;
}

unint64_t sub_10023CB48()
{
  result = qword_1011862E0;
  if (!qword_1011862E0)
  {
    sub_1001109D0(&qword_1011862B8);
    sub_100238500(&qword_1011862E8, &qword_101186290, &unk_100EC1B20, sub_10023C99C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011862E0);
  }

  return result;
}

uint64_t sub_10023CC30()
{
  v25[1] = 0;
  v0 = type metadata accessor for ContextualPreview.Artwork(0);
  v1 = (v0 - 8);
  __chkstk_darwin(v0);
  v3 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Album();
  ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v4, &protocol witness table for Album, v3);
  v5 = v1[8];
  v6 = sub_10010FC20(&unk_101182950);
  (*(*(v6 - 8) + 56))(&v3[v5], 1, 11, v6);
  v7 = &v3[v1[7]];
  *v7 = 0;
  *(v7 + 1) = 0;
  *(v7 + 2) = 0;
  v3[v1[9]] = 0;
  *&v3[v1[10]] = 0x3FF0000000000000;
  v8 = &v3[v1[11]];
  *v8 = xmmword_100EC1B40;
  v8[16] = 1;
  v9 = sub_10034DFAC();
  v11 = v10;
  v12 = sub_10034E12C();
  v14 = v13;
  type metadata accessor for ContextualPreview.Data(0);
  v15 = swift_allocObject();
  v16 = (v15 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__title);
  *v16 = 0;
  v16[1] = 0;
  v17 = (v15 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__subtitle);
  *v17 = 0;
  v17[1] = 0;
  v18 = (v15 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__detailText);
  *v18 = 0;
  v18[1] = 0;
  v19 = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__layoutStyle;
  *(v15 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__layoutStyle) = 1;
  v25[0] = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__showChevron;
  *(v15 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__showChevron) = 0;
  ObservationRegistrar.init()();
  sub_10024DF48(v3, v15 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__artwork, type metadata accessor for ContextualPreview.Artwork);
  sub_100242A80(v9, v11);
  sub_100242ABC(v12, v14);
  if (v18[1])
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v25[-3] = 0;
    v25[-2] = 0;
    v25[-4] = v15;
    v26 = v15;
    sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    if (*(v15 + v19))
    {
LABEL_3:
      *(v15 + v19) = 1;
      goto LABEL_6;
    }
  }

  else
  {
    *v18 = 0;
    v18[1] = 0;
    if (*(v15 + v19))
    {
      goto LABEL_3;
    }
  }

  v21 = swift_getKeyPath();
  __chkstk_darwin(v21);
  v25[-2] = v15;
  LOBYTE(v25[-1]) = 1;
  v26 = v15;
  sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

LABEL_6:
  v22 = v25[0];
  if (*(v15 + v25[0]))
  {
    v23 = swift_getKeyPath();
    __chkstk_darwin(v23);
    v25[-2] = v15;
    LOBYTE(v25[-1]) = 0;
    v26 = v15;
    sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    sub_10024DE78(v3, type metadata accessor for ContextualPreview.Artwork);
  }

  else
  {
    sub_10024DE78(v3, type metadata accessor for ContextualPreview.Artwork);
    *(v15 + v22) = 0;
  }

  return v15;
}

uint64_t sub_10023D0E4()
{
  v28 = 0;
  v0 = type metadata accessor for ContextualPreview.Artwork(0);
  v1 = (v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MusicVideo();
  ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v4, &protocol witness table for MusicVideo, v3);
  v5 = v1[8];
  v6 = sub_10010FC20(&unk_101182950);
  (*(*(v6 - 8) + 56))(&v3[v5], 5, 11, v6);
  v7 = &v3[v1[7]];
  *v7 = 0;
  *(v7 + 1) = 0;
  *(v7 + 2) = 0;
  v3[v1[9]] = 0;
  *&v3[v1[10]] = 0x3FFC71C71C71C71CLL;
  v8 = &v3[v1[11]];
  *v8 = xmmword_100EC1B40;
  v8[16] = 1;
  v27 = MusicVideo.title.getter();
  v10 = v9;
  v26 = MusicVideo.artistName.getter();
  v12 = v11;
  v13 = MusicVideo.albumTitle.getter();
  v15 = v14;
  type metadata accessor for ContextualPreview.Data(0);
  v16 = swift_allocObject();
  v17 = (v16 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__title);
  *v17 = 0;
  v17[1] = 0;
  v18 = (v16 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__subtitle);
  *v18 = 0;
  v18[1] = 0;
  v19 = (v16 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__detailText);
  *v19 = 0;
  v19[1] = 0;
  v20 = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__layoutStyle;
  *(v16 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__layoutStyle) = 1;
  v21 = OBJC_IVAR____TtCV5Music17ContextualPreview4Data__showChevron;
  *(v16 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__showChevron) = 0;
  ObservationRegistrar.init()();
  sub_10024DF48(v3, v16 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__artwork, type metadata accessor for ContextualPreview.Artwork);
  sub_100242A80(v27, v10);
  sub_100242ABC(v26, v12);
  sub_100242C68(v13, v15);
  if (*(v16 + v20) == 1)
  {
    *(v16 + v20) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v25 - 2) = v16;
    *(&v25 - 8) = 1;
    v29 = v16;
    sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (*(v16 + v21))
  {
    v23 = swift_getKeyPath();
    __chkstk_darwin(v23);
    *(&v25 - 2) = v16;
    *(&v25 - 8) = 0;
    v29 = v16;
    sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    sub_10024DE78(v3, type metadata accessor for ContextualPreview.Artwork);
  }

  else
  {
    sub_10024DE78(v3, type metadata accessor for ContextualPreview.Artwork);
    *(v16 + v21) = 0;
  }

  return v16;
}

id sub_10023D4E4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v8 = [v4 cellForItemAtIndexPath:isa];

  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = [v9 window];
  if (v10)
  {

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v11 = 0.0;
      v12 = Corner.extraSmall.unsafeMutableAddressor();
    }

    else
    {
      v11 = 8.0;
      v12 = Corner.large.unsafeMutableAddressor();
    }

    v14 = *v12;
    v15 = v12[1];
    v16 = *(v12 + 16);
    NSDirectionalEdgeInsets.Edge.all.unsafeMutableAddressor();

    NSDirectionalEdgeInsets.init(edge:length:)(v17, v11);
    [v9 bounds];
    [v9 effectiveUserInterfaceLayoutDirection];
    if ((a3 & 1) == 0)
    {
      NSDirectionalEdgeInsets.Edge.all.unsafeMutableAddressor();

      NSDirectionalEdgeInsets.init(edge:length:)(v18, *&a2);
    }

    v19 = [objc_allocWithZone(UIPreviewParameters) init];
    CGRect.outset(by:for:)();
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v28 = Corner.radius(in:)(v14, v20, v22, v24, v26, v15, v16);
    v29 = [objc_opt_self() bezierPathWithRoundedRect:v21 cornerRadius:{v23, v25, v27, v28}];
    [v19 setVisiblePath:v29];

    [v9 setHighlighted:0];
    [v9 setSelected:0];
    [v9 setBackgroundColor:0];
    v30 = [objc_allocWithZone(UITargetedPreview) initWithView:v9 parameters:v19];

    return v30;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_10023D798(uint64_t a1)
{
  v2 = type metadata accessor for ContextualPreview.InlinePreview(0);
  __chkstk_darwin(v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10010FC20(&qword_101186668);
  __chkstk_darwin(v5);
  v7 = v11 - v6;
  swift_getKeyPath();
  v11[1] = a1;
  sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
  swift_retain_n();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = *(a1 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__layoutStyle);

  if (v8 == 1)
  {
    *v7 = a1;
    v7[8] = 1;
    swift_storeEnumTagMultiPayload();
    sub_10024DFB0();
    sub_10024E004(&qword_101186678, type metadata accessor for ContextualPreview.InlinePreview);
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    *v4 = a1;
    v4[8] = 0;
    v10 = *(v2 + 24);
    *&v4[v10] = swift_getKeyPath();
    sub_10010FC20(&qword_10118A610);
    swift_storeEnumTagMultiPayload();
    sub_10024DF48(v4, v7, type metadata accessor for ContextualPreview.InlinePreview);
    swift_storeEnumTagMultiPayload();
    sub_10024DFB0();
    sub_10024E004(&qword_101186678, type metadata accessor for ContextualPreview.InlinePreview);
    _ConditionalContent<>.init(storage:)();
    return sub_10024DE78(v4, type metadata accessor for ContextualPreview.InlinePreview);
  }
}

uint64_t sub_10023DA80@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v70 = a3;
  v71 = type metadata accessor for AccessibilityChildBehavior();
  v69 = *(v71 - 8);
  __chkstk_darwin(v71);
  v68 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_10010FC20(&qword_1011A1440);
  __chkstk_darwin(v67);
  v74 = &v64 - v6;
  v7 = sub_10010FC20(&qword_101186750);
  __chkstk_darwin(v7 - 8);
  v9 = &v64 - v8;
  v10 = sub_10010FC20(&qword_101186758);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v64 - v12;
  v14 = sub_10010FC20(&qword_101186760);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v17 = &v64 - v16;
  v18 = sub_10010FC20(&qword_101186768);
  v19 = v18 - 8;
  __chkstk_darwin(v18);
  v21 = &v64 - v20;
  v73 = sub_10010FC20(&qword_101186770);
  __chkstk_darwin(v73);
  v72 = &v64 - v22;
  v66 = sub_10010FC20(&qword_101186778);
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v64 = &v64 - v23;
  *v9 = static HorizontalAlignment.leading.getter();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v24 = sub_10010FC20(&qword_101186780);
  sub_10023E230(a1, a2 & 1, &v9[*(v24 + 44)]);
  sub_10023F29C(a2 & 1);
  if (v25 < 200.0)
  {
    v26 = 1;
  }

  else
  {
    v26 = 2;
  }

  KeyPath = swift_getKeyPath();
  sub_10003D17C(v9, v13, &qword_101186750);
  v28 = &v13[*(v11 + 44)];
  *v28 = KeyPath;
  *(v28 + 1) = v26;
  v28[16] = 0;
  sub_10003D17C(v13, v17, &qword_101186758);
  *&v17[*(v15 + 44)] = 256;
  v29 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  sub_10003D17C(v17, v21, &qword_101186760);
  v38 = &v21[*(v19 + 44)];
  *v38 = v29;
  *(v38 + 1) = v31;
  *(v38 + 2) = v33;
  *(v38 + 3) = v35;
  *(v38 + 4) = v37;
  v38[40] = 0;
  sub_10023F29C(a2 & 1);
  v40 = v39;
  sub_10023F29C(a2 & 1);
  v42 = v41 + 32.0;
  *&v43 = COERCE_DOUBLE(sub_10023F518(a2 & 1));
  v45 = v44;
  static Alignment.center.getter();
  v46 = *&v43;
  if (v45)
  {
    v46 = v42;
  }

  if (v40 + 32.0 > v42 || v42 > v46)
  {
    static os_log_type_t.fault.getter();
    v47 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();
  }

  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v48 = v72;
  sub_10003D17C(v21, v72, &qword_101186768);
  v49 = v73;
  v50 = (v48 + *(v73 + 36));
  v51 = v84;
  v50[4] = v83;
  v50[5] = v51;
  v50[6] = v85;
  v52 = v80;
  *v50 = v79;
  v50[1] = v52;
  v53 = v82;
  v50[2] = v81;
  v50[3] = v53;
  v54 = enum case for DynamicTypeSize.accessibility2(_:);
  v55 = type metadata accessor for DynamicTypeSize();
  v56 = v74;
  (*(*(v55 - 8) + 104))(v74, v54, v55);
  sub_10024E004(&qword_1011A1490, &type metadata accessor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    v58 = sub_10024E50C();
    v59 = sub_100020674(&qword_1011A14A0, &qword_1011A1440);
    v60 = v64;
    v61 = v67;
    View.dynamicTypeSize<A>(_:)();
    sub_1000095E8(v56, &qword_1011A1440);
    sub_1000095E8(v48, &qword_101186770);
    v62 = v68;
    static AccessibilityChildBehavior.combine.getter();
    v75 = v49;
    v76 = v61;
    v77 = v58;
    v78 = v59;
    swift_getOpaqueTypeConformance2();
    v63 = v66;
    View.accessibilityElement(children:)();
    (*(v69 + 8))(v62, v71);
    return (*(v65 + 8))(v60, v63);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10023E230@<X0>(uint64_t a1@<X0>, int a2@<W1>, _BYTE *a3@<X8>)
{
  LODWORD(v99) = a2;
  v98 = a3;
  v103 = sub_10010FC20(&qword_1011867B0);
  __chkstk_darwin(v103);
  v107 = &v90[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v110 = &v90[-v6];
  v7 = sub_10010FC20(&qword_1011867B8);
  __chkstk_darwin(v7);
  v9 = &v90[-v8];
  v10 = sub_10010FC20(&qword_1011867C0);
  v101 = *(v10 - 8);
  v102 = v10;
  __chkstk_darwin(v10);
  v100 = &v90[-v11];
  v97 = sub_10010FC20(&qword_1011867C8);
  v96 = *(v97 - 8);
  __chkstk_darwin(v97);
  v106 = &v90[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v109 = &v90[-v14];
  swift_getKeyPath();
  v15 = OBJC_IVAR____TtCV5Music17ContextualPreview4Data___observationRegistrar;
  v111 = a1;
  v16 = sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v17 = a1 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__artwork;
  swift_beginAccess();
  v18 = type metadata accessor for ContextualPreview.Artwork(0);
  v19 = *(v17 + *(v18 + 32));
  v20 = objc_opt_self();
  v21 = &selRef_systemFillColor;
  if (v19 >= 1.0)
  {
    v21 = &selRef_clearColor;
  }

  v22 = [v20 *v21];
  v93 = Color.init(_:)();
  swift_getKeyPath();
  v111 = a1;
  v23 = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v24 = *(v17 + *(v18 + 32));
  v108 = v16;
  v95 = v18;
  v94 = v17;
  if (v24 >= 1.0)
  {
    swift_getKeyPath();
    v111 = a1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v25 = *(v17 + *(v18 + 32));
  }

  else
  {
    v25 = 0x3FF0000000000000;
  }

  v26 = v15;
  v27 = static Alignment.center.getter();
  v29 = v28;
  v104 = v7;
  v30 = &v9[*(v7 + 36)];
  v31 = v23;
  sub_10023ECB8(v23, v99 & 1, v30);
  v32 = (v30 + *(sub_10010FC20(&qword_1011867D0) + 36));
  *v32 = v27;
  v32[1] = v29;
  *v9 = v93;
  *(v9 + 1) = v25;
  *(v9 + 8) = 0;
  swift_getKeyPath();
  v111 = v23;
  v105 = v26;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v33 = sub_10024E794();
  v34 = v100;
  View.corner(_:)();
  sub_1000095E8(v9, &qword_1011867B8);
  LODWORD(v99) = *(Border.artwork.unsafeMutableAddressor() + 16);
  swift_getKeyPath();
  v111 = v31;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v111 = v104;
  v112 = v33;
  swift_getOpaqueTypeConformance2();
  v35 = v102;
  View.border(_:corner:)();

  (*(v101 + 8))(v34, v35);
  swift_getKeyPath();
  v111 = v31;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v36 = *(v31 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__title);
  v37 = *(v31 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__title + 8);
  v38 = sub_100479D70(&off_101099BA8);

  v39 = Text.init(optional:options:)(v36, v37, v38);
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v46 = static Font.body.getter();
  KeyPath = swift_getKeyPath();
  v111 = v39;
  v112 = v41;
  v113 = v43;
  v114 = v45;
  v115 = KeyPath;
  v116 = v46;
  static Font.Weight.semibold.getter();
  sub_10010FC20(&qword_1011867F8);
  sub_10024E8D0();
  View.fontWeight(_:)();
  sub_10024EA04(v39, v41, v43, v45);

  LODWORD(v39) = static HierarchicalShapeStyle.primary.getter();
  v48 = sub_10010FC20(&qword_101186808);
  v49 = v110;
  *&v110[*(v48 + 36)] = v39;
  LOBYTE(v39) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v50 = &v49[*(v103 + 36)];
  *v50 = v39;
  *(v50 + 1) = v51;
  *(v50 + 2) = v52;
  *(v50 + 3) = v53;
  *(v50 + 4) = v54;
  v50[40] = 0;
  swift_getKeyPath();
  v111 = v31;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v55 = *(v31 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__subtitle);
  v56 = *(v31 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__subtitle + 8);
  v57 = sub_100479D70(&off_101099BD0);

  v58 = Text.init(optional:options:)(v55, v56, v57);
  v103 = v59;
  v104 = v58;
  v101 = v61;
  v102 = v60;
  v100 = static Font.body.getter();
  v99 = swift_getKeyPath();
  LODWORD(v95) = static HierarchicalShapeStyle.secondary.getter();
  swift_getKeyPath();
  v111 = v31;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v62 = *(v31 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__detailText);
  v63 = *(v31 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__detailText + 8);
  v64 = sub_100479D70(&off_101099BF8);

  v93 = Text.init(optional:options:)(v62, v63, v64);
  v108 = v65;
  v105 = v66;
  v94 = v67;
  v92 = static Font.footnote.getter();
  v68 = swift_getKeyPath();
  v91 = static HierarchicalShapeStyle.secondary.getter();
  v69 = v96;
  v70 = *(v96 + 16);
  v71 = v106;
  v72 = v97;
  v70(v106, v109, v97);
  v73 = v49;
  v74 = v107;
  sub_1000089F8(v73, v107, &qword_1011867B0);
  v75 = v98;
  v70(v98, v71, v72);
  v76 = sub_10010FC20(&qword_101186810);
  sub_1000089F8(v74, &v75[v76[12]], &qword_1011867B0);
  v77 = &v75[v76[16]];
  v79 = v103;
  v78 = v104;
  *v77 = v104;
  *(v77 + 1) = v79;
  v81 = v101;
  v80 = v102;
  *(v77 + 2) = v102;
  *(v77 + 3) = v81;
  v82 = v100;
  *(v77 + 4) = v99;
  *(v77 + 5) = v82;
  *(v77 + 12) = v95;
  v83 = &v75[v76[20]];
  v84 = v93;
  v85 = v108;
  *v83 = v93;
  *(v83 + 1) = v85;
  LOBYTE(v75) = v105;
  v86 = v94;
  *(v83 + 2) = v105;
  *(v83 + 3) = v86;
  v87 = v92;
  *(v83 + 4) = v68;
  *(v83 + 5) = v87;
  *(v83 + 12) = v91;
  sub_10024EA48(v78, v79, v80, v81);

  sub_10024EA48(v84, v85, v75, v86);

  sub_1000095E8(v110, &qword_1011867B0);
  v88 = *(v69 + 8);
  v88(v109, v72);
  sub_10024EA04(v84, v85, v75, v86);

  sub_10024EA04(v104, v103, v102, v101);

  sub_1000095E8(v107, &qword_1011867B0);
  return (v88)(v106, v72);
}

uint64_t sub_10023ECB8@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v31 = a2;
  v37 = a3;
  v4 = type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&unk_10118A5E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v28 - v8;
  v10 = sub_10010FC20(&qword_101186818);
  v35 = *(v10 - 8);
  v36 = v10;
  __chkstk_darwin(v10);
  v33 = &v28 - v11;
  swift_getKeyPath();
  v38[0] = a1;
  sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = a1 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__artwork;
  swift_beginAccess();
  v32 = v9;
  sub_1000089F8(v12, v9, &unk_10118A5E0);
  swift_getKeyPath();
  v38[0] = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = type metadata accessor for ContextualPreview.Artwork(0);
  v14 = (v12 + v13[5]);
  v16 = *v14;
  v15 = v14[1];
  v29 = v14[2];
  v30 = v15;
  swift_getKeyPath();
  v38[0] = a1;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v17 = v12 + v13[6];
  v34 = v6;
  sub_10024DF48(v17, v6, type metadata accessor for ArtworkImage.Placeholder);
  swift_getKeyPath();
  v38[0] = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v18 = *(v12 + v13[8]);
  v19 = v31 & 1;
  sub_10023F29C(v31 & 1);
  v21 = v20;
  if (v18 < 1.0)
  {
    swift_getKeyPath();
    v38[0] = a1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v21 = v21 * *(v12 + v13[8]);
  }

  swift_getKeyPath();
  v38[0] = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  ArtworkImage.Size.init(width:aspectRatio:fittingAspectRatio:)(*&v21, 0, 0.0, 1, v38, *(v12 + v13[8]));
  v22 = v32;
  v23 = v33;
  v24 = v34;
  static ArtworkImage.with(_:gridPreviewViewModel:gridPreviewVariant:placeholder:size:)(v32, v16, v30, v29, 1, v34, v38, v33);

  sub_10024DE78(v24, type metadata accessor for ArtworkImage.Placeholder);
  v25 = sub_1000095E8(v22, &unk_10118A5E0);
  __chkstk_darwin(v25);
  *(&v28 - 2) = a1;
  *(&v28 - 8) = v19;
  swift_getOpaqueTypeConformance2();
  v26 = v36;
  View.placeholderStyle(_:)(sub_10024EA8C);
  return (*(v35 + 8))(v23, v26);
}

uint64_t sub_10023F158@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = a1 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__artwork;
  swift_beginAccess();
  if (*(v4 + *(type metadata accessor for ContextualPreview.Artwork(0) + 28)) == 1)
  {
    v5 = ArtworkImage.Placeholder.View.Style.accentuated.unsafeMutableAddressor();
    sub_10024DF48(v5, a2, type metadata accessor for ArtworkImage.Placeholder.View.Style);
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  return (*(*(v7 - 8) + 56))(a2, v6, 1, v7);
}

void sub_10023F29C(char a1)
{
  v2 = objc_opt_self();
  v3 = [v2 currentTraitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (!v4)
  {
    v13 = [v2 currentTraitCollection];
    UITraitCollection.isAccessibilitySizeCategory.getter();

    v14 = [objc_opt_self() mainScreen];
    [v14 bounds];

    return;
  }

  if ((a1 & 1) == 0)
  {
    return;
  }

  v5 = [objc_opt_self() sharedApplication];
  v6 = [v5 connectedScenes];
  sub_100062364();
  sub_10024E004(&qword_101183DE0, sub_100062364);
  v7 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100061FC4(v7);
  v9 = v8;

  if (v9 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_5;
    }

LABEL_13:

    return;
  }

  if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_13;
  }

LABEL_5:
  if ((v9 & 0xC000000000000001) != 0)
  {
    v10 = sub_1007E90D4(0, v9);
  }

  else
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v10 = *(v9 + 32);
  }

  v11 = v10;

  v12 = UIWindowScene.mainWindow.getter();

  if (v12)
  {
    [v12 bounds];
  }
}

uint64_t sub_10023F518(char a1)
{
  v2 = objc_opt_self();
  v3 = [v2 currentTraitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 6)
  {
    if (a1)
    {
      *&result = 0.0;
    }

    else
    {
      *&result = 600.0;
    }
  }

  else
  {
    v6 = [v2 currentTraitCollection];
    v7 = [v6 userInterfaceIdiom];

    if (v7)
    {
      *&result = 343.0;
    }

    else
    {
      v8 = [objc_opt_self() mainScreen];
      [v8 bounds];
      v10 = v9;

      *&result = v10 + -48.0;
    }
  }

  return result;
}

uint64_t sub_10023F640@<X0>(uint64_t a1@<X8>)
{
  v214 = a1;
  v2 = sub_10010FC20(&qword_101186820);
  __chkstk_darwin(v2 - 8);
  v196 = (&v181 - v3);
  v194 = sub_10010FC20(&qword_101186828);
  __chkstk_darwin(v194);
  v193 = &v181 - v4;
  v191 = sub_10010FC20(&qword_101186830);
  __chkstk_darwin(v191);
  v195 = &v181 - v5;
  v192 = sub_10010FC20(&qword_101186838);
  __chkstk_darwin(v192);
  v197 = &v181 - v6;
  v212 = sub_10010FC20(&qword_101186840);
  __chkstk_darwin(v212);
  v199 = &v181 - v7;
  v213 = sub_10010FC20(&qword_101186848);
  v202 = *(v213 - 8);
  __chkstk_darwin(v213);
  v200 = &v181 - v8;
  v210 = sub_10010FC20(&qword_101186850);
  __chkstk_darwin(v210);
  v211 = &v181 - v9;
  v10 = type metadata accessor for AccessibilityChildBehavior();
  v208 = *(v10 - 8);
  v209 = v10;
  __chkstk_darwin(v10);
  v205 = &v181 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = sub_10010FC20(&qword_1011A1440);
  __chkstk_darwin(v207);
  v201 = &v181 - v12;
  v185 = sub_10010FC20(&qword_101186858);
  __chkstk_darwin(v185);
  v218 = &v181 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v217 = (&v181 - v15);
  v16 = sub_10010FC20(&qword_101186860);
  __chkstk_darwin(v16 - 8);
  v219 = (&v181 - v17);
  v189 = sub_10010FC20(&qword_101186868);
  __chkstk_darwin(v189);
  v188 = &v181 - v18;
  v186 = sub_10010FC20(&qword_101186870);
  __chkstk_darwin(v186);
  v190 = &v181 - v19;
  v187 = sub_10010FC20(&qword_101186878);
  __chkstk_darwin(v187);
  v203 = &v181 - v20;
  v220 = sub_10010FC20(&qword_101186880);
  __chkstk_darwin(v220);
  v198 = &v181 - v21;
  v204 = sub_10010FC20(&qword_101186888);
  v182 = *(v204 - 8);
  __chkstk_darwin(v204);
  v181 = &v181 - v22;
  v206 = sub_10010FC20(&qword_101186890);
  v184 = *(v206 - 8);
  __chkstk_darwin(v206);
  v183 = &v181 - v23;
  v24 = type metadata accessor for DynamicTypeSize();
  v221 = *(v24 - 8);
  v222 = v24;
  __chkstk_darwin(v24);
  v26 = &v181 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *v1;
  swift_getKeyPath();
  *&v262 = v27;
  sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v28 = *(v27 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__title);
  v29 = *(v27 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__title + 8);
  v30 = sub_100479D70(&off_101099C20);

  v239 = Text.init(optional:options:)(v28, v29, v30);
  v223 = v31;
  v226 = v33;
  v227 = v32;
  static Font.body.getter();
  static Font.Weight.semibold.getter();
  v235 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  v34 = static HierarchicalShapeStyle.primary.getter();
  swift_getKeyPath();
  *&v262 = v27;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v35 = *(v27 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__subtitle);
  v36 = *(v27 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__subtitle + 8);
  v37 = sub_100479D70(&off_101099C48);

  v231 = Text.init(optional:options:)(v35, v36, v37);
  v232 = v38;
  v233 = v39;
  v238 = v40;
  v240 = static Font.footnote.getter();
  v241 = swift_getKeyPath();
  v216 = static HierarchicalShapeStyle.secondary.getter();
  swift_getKeyPath();
  *&v262 = v27;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v41 = *(v27 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__detailText);
  v42 = *(v27 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__detailText + 8);
  v43 = sub_100479D70(&off_101099C70);

  v236 = Text.init(optional:options:)(v41, v42, v43);
  v237 = v44;
  v228 = v45;
  v224 = v46;
  v47 = static Font.footnote.getter();
  v230 = swift_getKeyPath();
  v215 = static HierarchicalShapeStyle.secondary.getter();
  type metadata accessor for ContextualPreview.InlinePreview(0);
  sub_10056CABC(v26);
  LOBYTE(v41) = DynamicTypeSize.isAccessibilitySize.getter();
  (*(v221 + 8))(v26, v222);
  v229 = v47;
  if (v41)
  {
    v48 = static HorizontalAlignment.leading.getter();
    v49 = v239;
    v255 = v239;
    v50 = v223;
    v256 = v223;
    v51 = v227;
    v257 = v227;
    v258 = v226;
    v52 = v34;
    v53 = v226;
    v259 = KeyPath;
    v260 = v235;
    v261 = v52;
    v54 = v219;
    *v219 = v48;
    v54[1] = 0;
    *(v54 + 16) = 0;
    v202 = v54 + *(sub_10010FC20(&qword_1011868F0) + 44);

    sub_10024EA48(v49, v50, v51, v53);
    v55 = v231;
    v56 = v232;
    v57 = v238;
    sub_10024EA48(v231, v232, v233, v238);
    v58 = v228;
    sub_10024EA48(v236, v228, v224, v237);
    v59 = static VerticalAlignment.center.getter();
    v60 = v217;
    *v217 = v59;
    v60[1] = 0x4030000000000000;
    *(v60 + 16) = 0;
    v61 = v60;
    v62 = sub_10010FC20(&qword_1011868F8);
    sub_100240DF0(v225, &v255, v61 + *(v62 + 44));
    LOBYTE(v49) = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v63 = v61 + *(v185 + 36);
    *v63 = v49;
    *(v63 + 8) = v64;
    *(v63 + 16) = v65;
    *(v63 + 24) = v66;
    *(v63 + 32) = v67;
    *(v63 + 40) = 0;
    v68 = v218;
    sub_1000089F8(v61, v218, &qword_101186858);
    v69 = v68;
    v70 = v202;
    sub_1000089F8(v69, v202, &qword_101186858);
    v71 = sub_10010FC20(&qword_101186900);
    v72 = v70 + *(v71 + 48);
    *v72 = v55;
    *(v72 + 8) = v56;
    v73 = v233;
    *(v72 + 16) = v233;
    *(v72 + 24) = v57;
    v74 = v240;
    *(v72 + 32) = v241;
    *(v72 + 40) = v74;
    *(v72 + 48) = v216;
    v75 = v70 + *(v71 + 64);
    *v75 = v236;
    *(v75 + 8) = v58;
    v76 = v58;
    LOBYTE(v70) = v224;
    v77 = v237;
    *(v75 + 16) = v224;
    *(v75 + 24) = v77;
    v78 = v229;
    *(v75 + 32) = v230;
    *(v75 + 40) = v78;
    *(v75 + 48) = v215;

    v79 = v238;
    sub_10024EA48(v55, v56, v73, v238);
    v80 = v236;
    sub_10024EA48(v236, v76, v70, v77);

    sub_10024EA48(v55, v56, v73, v79);

    sub_10024EA48(v80, v76, v70, v77);

    sub_1000095E8(v217, &qword_101186858);
    sub_10024EA04(v80, v76, v70, v77);

    v81 = v238;
    sub_10024EA04(v55, v56, v73, v238);

    sub_1000095E8(v218, &qword_101186858);
    sub_10024EA04(v239, v223, v227, v226);

    sub_10024EA04(v55, v56, v73, v81);

    sub_10024EA04(v80, v228, v70, v237);

    v82 = swift_getKeyPath();
    v83 = v188;
    sub_10003D17C(v219, v188, &qword_101186860);
    v84 = v83 + *(v189 + 36);
    *v84 = v82;
    *(v84 + 8) = 2;
    *(v84 + 16) = 0;
    v85 = v83;
    v86 = v190;
    sub_10003D17C(v85, v190, &qword_101186868);
    *(v86 + *(v186 + 36)) = 256;
    LOBYTE(v82) = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    v88 = v87;
    v90 = v89;
    v92 = v91;
    v94 = v93;
    v95 = v203;
    sub_10003D17C(v86, v203, &qword_101186870);
    v96 = v95 + *(v187 + 36);
    *v96 = v82;
    *(v96 + 8) = v88;
    *(v96 + 16) = v90;
    *(v96 + 24) = v92;
    *(v96 + 32) = v94;
    *(v96 + 40) = 0;
    LOBYTE(v82) = *(v225 + 8);
    sub_10023F29C(v82);
    v98 = v97;
    sub_10023F29C(v82);
    v100 = v99;
    *&v101 = COERCE_DOUBLE(sub_10023F518(v82));
    LOBYTE(v86) = v102;
    static Alignment.center.getter();
    v103 = *&v101;
    if (v86)
    {
      v103 = v100;
    }

    if (v98 > v100 || v100 > v103)
    {
      static os_log_type_t.fault.getter();
      v104 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v95 = v203;
    }

    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v105 = v198;
    sub_10003D17C(v95, v198, &qword_101186878);
    v106 = v220;
    v107 = (v105 + *(v220 + 36));
    v108 = v267;
    v107[4] = v266;
    v107[5] = v108;
    v107[6] = v268;
    v109 = v263;
    *v107 = v262;
    v107[1] = v109;
    v110 = v265;
    v107[2] = v264;
    v107[3] = v110;
    v111 = v201;
    (*(v221 + 104))(v201, enum case for DynamicTypeSize.accessibility2(_:), v222);
    sub_10024E004(&qword_1011A1490, &type metadata accessor for DynamicTypeSize);
    result = dispatch thunk of static Equatable.== infix(_:_:)();
    if (result)
    {
      v113 = sub_10024ED20();
      v114 = v105;
      v115 = sub_100020674(&qword_1011A14A0, &qword_1011A1440);
      v116 = v181;
      v117 = v224;
      v118 = v106;
      v119 = v207;
      View.dynamicTypeSize<A>(_:)();
      sub_1000095E8(v111, &qword_1011A1440);
      sub_1000095E8(v114, &qword_101186880);
      v120 = v205;
      static AccessibilityChildBehavior.combine.getter();
      v248 = v118;
      v249 = v119;
      v250 = v113;
      v251 = v115;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v122 = v183;
      v123 = v204;
      View.accessibilityElement(children:)();
      (*(v208 + 8))(v120, v209);
      (*(v182 + 8))(v116, v123);
      v124 = v184;
      v125 = v206;
      (*(v184 + 16))(v211, v122, v206);
      swift_storeEnumTagMultiPayload();
      v248 = v123;
      v249 = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      v126 = sub_10024EA98();
      v248 = v212;
      v249 = v126;
      swift_getOpaqueTypeConformance2();
      _ConditionalContent<>.init(storage:)();
      sub_10024EA04(v236, v228, v117, v237);

      sub_10024EA04(v231, v232, v233, v238);

      sub_10024EA04(v239, v223, v227, v226);

      return (*(v124 + 8))(v122, v125);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v255 = v239;
    v127 = v224;
    v256 = v223;
    v257 = v227;
    v258 = v226;
    v259 = KeyPath;
    v260 = v235;
    v261 = v34;
    v248 = v231;
    v249 = v232;
    v128 = v233;
    v250 = v233;
    v129 = v238;
    v251 = v238;
    v252 = v241;
    v253 = v240;
    v254 = v216;
    v130 = v236;
    v246[0] = v236;
    v131 = v228;
    v246[1] = v228;
    v246[2] = v224;
    v246[3] = v237;
    v246[4] = v230;
    v246[5] = v47;
    v247 = v215;

    v132 = v223;
    v134 = v226;
    v133 = v227;
    sub_10024EA48(v239, v223, v227, v226);
    sub_10024EA48(v231, v232, v128, v129);
    v135 = v130;
    v136 = v127;
    v137 = v237;
    sub_10024EA48(v135, v131, v127, v237);
    v138 = static VerticalAlignment.center.getter();
    v139 = v196;
    *v196 = v138;
    v139[1] = 0;
    *(v139 + 16) = 0;
    v140 = sub_10010FC20(&qword_101186898);
    v141 = v225;
    sub_1002415AC(v225, &v255, &v248, v246, v139 + *(v140 + 44));
    sub_10024EA04(v239, v132, v133, v134);

    sub_10024EA04(v231, v232, v233, v238);

    sub_10024EA04(v236, v228, v136, v137);

    v142 = swift_getKeyPath();
    v143 = v139;
    v144 = v193;
    sub_10003D17C(v143, v193, &qword_101186820);
    v145 = v144 + *(v194 + 36);
    *v145 = v142;
    *(v145 + 8) = 2;
    *(v145 + 16) = 0;
    v146 = v144;
    v147 = v195;
    sub_10003D17C(v146, v195, &qword_101186828);
    *(v147 + *(v191 + 36)) = 256;
    LOBYTE(v142) = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    v149 = v148;
    v151 = v150;
    v153 = v152;
    v155 = v154;
    v156 = v197;
    sub_10003D17C(v147, v197, &qword_101186830);
    v157 = v156 + *(v192 + 36);
    *v157 = v142;
    *(v157 + 8) = v149;
    *(v157 + 16) = v151;
    *(v157 + 24) = v153;
    *(v157 + 32) = v155;
    *(v157 + 40) = 0;
    LOBYTE(v142) = *(v141 + 8);
    sub_10023F29C(v142);
    v159 = v158;
    sub_10023F29C(v142);
    v161 = v160;
    *&v162 = COERCE_DOUBLE(sub_10023F518(v142));
    LOBYTE(v129) = v163;
    static Alignment.center.getter();
    v164 = *&v162;
    if (v129)
    {
      v164 = v161;
    }

    v165 = v132;
    if (v159 > v161 || v161 > v164)
    {
      static os_log_type_t.fault.getter();
      v166 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();
    }

    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v167 = v199;
    sub_10003D17C(v156, v199, &qword_101186838);
    v168 = v212;
    v169 = (v167 + *(v212 + 36));
    v170 = v267;
    v169[4] = v266;
    v169[5] = v170;
    v169[6] = v268;
    v171 = v263;
    *v169 = v262;
    v169[1] = v171;
    v172 = v265;
    v169[2] = v264;
    v169[3] = v172;
    v173 = v205;
    static AccessibilityChildBehavior.combine.getter();
    v174 = sub_10024EA98();
    v175 = v200;
    View.accessibilityElement(children:)();
    (*(v208 + 8))(v173, v209);
    sub_1000095E8(v167, &qword_101186840);
    v176 = v202;
    v177 = v213;
    (*(v202 + 16))(v211, v175, v213);
    swift_storeEnumTagMultiPayload();
    v178 = sub_10024ED20();
    v179 = sub_100020674(&qword_1011A14A0, &qword_1011A1440);
    v242 = v220;
    v243 = v207;
    v244 = v178;
    v245 = v179;
    v180 = swift_getOpaqueTypeConformance2();
    v242 = v204;
    v243 = v180;
    swift_getOpaqueTypeConformance2();
    v242 = v168;
    v243 = v174;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    sub_10024EA04(v236, v228, v224, v237);

    sub_10024EA04(v231, v232, v233, v238);

    sub_10024EA04(v239, v165, v227, v226);

    return (*(v176 + 8))(v175, v177);
  }

  return result;
}

uint64_t sub_100240DF0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v60 = a2;
  v61 = a3;
  v54 = sub_10010FC20(&qword_101186818);
  v55 = *(v54 - 8);
  __chkstk_darwin(v54);
  v52 = &v50 - v4;
  v56 = sub_10010FC20(&qword_101186908);
  v57 = *(v56 - 8);
  __chkstk_darwin(v56);
  v51 = &v50 - v5;
  v58 = sub_10010FC20(&qword_101186910);
  v59 = *(v58 - 8);
  __chkstk_darwin(v58);
  v53 = &v50 - v6;
  v50 = type metadata accessor for DynamicTypeSize();
  v7 = *(v50 - 8);
  __chkstk_darwin(v50);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ContextualPreview.Artwork(0);
  v11 = (v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10010FC20(&qword_101186918);
  __chkstk_darwin(v14 - 8);
  v63 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v62 = &v50 - v17;
  v18 = *a1;
  swift_getKeyPath();
  v67[0] = v18;
  sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v19 = v18 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__artwork;
  swift_beginAccess();
  sub_10024DF48(v19, v13, type metadata accessor for ContextualPreview.Artwork);
  type metadata accessor for ContextualPreview.InlinePreview(0);
  sub_10056CABC(v9);
  v20 = DynamicTypeSize.isAccessibilitySize.getter();
  (*(v7 + 8))(v9, v50);
  if (v20)
  {
    v21 = 78.0;
  }

  else
  {
    v21 = 92.0;
  }

  swift_getKeyPath();
  v67[0] = v18;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v22 = v11[10];
  *&v23 = v21 * *(v19 + v22);
  v24 = v11[8];
  v25 = &v13[v11[7]];
  v26 = *v25;
  v27 = v25[1];
  v28 = v25[2];
  ArtworkImage.Size.init(width:aspectRatio:fittingAspectRatio:)(v23, 0, 0.0, 1, v67, *&v13[v22]);
  v29 = v52;
  static ArtworkImage.with(_:gridPreviewViewModel:gridPreviewVariant:placeholder:size:)(v13, v26, v27, v28, 1, &v13[v24], v67, v52);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = v51;
  v32 = v54;
  View.corner(_:)();
  (*(v55 + 8))(v29, v32);
  Border.artwork.unsafeMutableAddressor();

  v65 = v32;
  v66 = OpaqueTypeConformance2;
  v33 = swift_getOpaqueTypeConformance2();
  v34 = v53;
  v35 = v56;
  View.border(_:corner:)();

  (*(v57 + 8))(v31, v35);
  v64 = v13;
  v65 = v35;
  v66 = v33;
  swift_getOpaqueTypeConformance2();
  v36 = v62;
  v37 = v58;
  View.placeholderStyle(_:)(sub_10024EFA8);
  (*(v59 + 8))(v34, v37);
  sub_10024DE78(v13, type metadata accessor for ContextualPreview.Artwork);
  v38 = *v60;
  v39 = *(v60 + 8);
  v40 = *(v60 + 16);
  v41 = *(v60 + 24);
  v42 = *(v60 + 32);
  v43 = *(v60 + 40);
  LODWORD(v37) = *(v60 + 48);
  v44 = v36;
  v45 = v63;
  sub_1000089F8(v44, v63, &qword_101186918);
  v46 = v45;
  v47 = v61;
  sub_1000089F8(v46, v61, &qword_101186918);
  v48 = v47 + *(sub_10010FC20(&qword_101186920) + 48);
  *v48 = v38;
  *(v48 + 8) = v39;
  *(v48 + 16) = v40;
  *(v48 + 24) = v41;
  *(v48 + 32) = v42;
  *(v48 + 40) = v43;
  *(v48 + 48) = v37;
  sub_10024EA48(v38, v39, v40, v41);

  sub_10024EA48(v38, v39, v40, v41);

  sub_1000095E8(v62, &qword_101186918);
  sub_10024EA04(v38, v39, v40, v41);

  return sub_1000095E8(v63, &qword_101186918);
}

uint64_t sub_1002415AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v125 = a3;
  v126 = a4;
  v124 = a2;
  v131 = a5;
  v6 = sub_10010FC20(&qword_101186928);
  v7 = *(v6 - 8);
  v127 = v6;
  v128 = v7;
  __chkstk_darwin(v6);
  v106 = &v106 - v8;
  v9 = sub_10010FC20(&qword_101186930);
  __chkstk_darwin(v9 - 8);
  v130 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v132 = &v106 - v12;
  v13 = sub_10010FC20(&qword_101186818);
  v14 = *(v13 - 8);
  v116 = v13;
  v117 = v14;
  __chkstk_darwin(v13);
  v111 = &v106 - v15;
  v118 = sub_10010FC20(&qword_101186908);
  v120 = *(v118 - 8);
  __chkstk_darwin(v118);
  v110 = &v106 - v16;
  v121 = sub_10010FC20(&qword_101186910);
  v123 = *(v121 - 8);
  __chkstk_darwin(v121);
  v113 = &v106 - v17;
  v18 = type metadata accessor for DynamicTypeSize();
  v107 = *(v18 - 8);
  v108 = v18;
  __chkstk_darwin(v18);
  v20 = &v106 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ContextualPreview.Artwork(0);
  v22 = (v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v106 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10010FC20(&qword_101186918);
  __chkstk_darwin(v25 - 8);
  v109 = &v106 - v26;
  v114 = sub_10010FC20(&qword_101186938) - 8;
  __chkstk_darwin(v114);
  v129 = &v106 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v112 = &v106 - v29;
  __chkstk_darwin(v30);
  v133 = &v106 - v31;
  v32 = *a1;
  swift_getKeyPath();
  v33 = OBJC_IVAR____TtCV5Music17ContextualPreview4Data___observationRegistrar;
  *&v139 = v32;
  v34 = sub_10024E004(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
  v115 = v33;
  v119 = v34;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v35 = v32 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__artwork;
  swift_beginAccess();
  sub_10024DF48(v35, v24, type metadata accessor for ContextualPreview.Artwork);
  type metadata accessor for ContextualPreview.InlinePreview(0);
  sub_10056CABC(v20);
  v36 = DynamicTypeSize.isAccessibilitySize.getter();
  (*(v107 + 8))(v20, v108);
  if (v36)
  {
    v37 = 78.0;
  }

  else
  {
    v37 = 92.0;
  }

  swift_getKeyPath();
  v122 = v32;
  *&v139 = v32;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v38 = v22[10];
  *&v39 = v37 * *(v35 + v38);
  v40 = v22[8];
  v41 = &v24[v22[7]];
  v42 = *v41;
  v43 = v41[1];
  v44 = v41[2];
  ArtworkImage.Size.init(width:aspectRatio:fittingAspectRatio:)(v39, 0, 0.0, 1, v164, *&v24[v38]);
  v45 = v24;
  v46 = v111;
  static ArtworkImage.with(_:gridPreviewViewModel:gridPreviewVariant:placeholder:size:)(v24, v42, v43, v44, 1, &v24[v40], v164, v111);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v48 = v110;
  v49 = v116;
  View.corner(_:)();
  (*(v117 + 8))(v46, v49);
  Border.artwork.unsafeMutableAddressor();

  *&v139 = v49;
  *(&v139 + 1) = OpaqueTypeConformance2;
  v50 = swift_getOpaqueTypeConformance2();
  v51 = v113;
  v52 = v118;
  View.border(_:corner:)();

  (*(v120 + 8))(v48, v52);
  v134 = v45;
  *&v139 = v52;
  *(&v139 + 1) = v50;
  swift_getOpaqueTypeConformance2();
  v53 = v109;
  v54 = v121;
  View.placeholderStyle(_:)(sub_10024F1AC);
  (*(v123 + 8))(v51, v54);
  sub_10024DE78(v45, type metadata accessor for ContextualPreview.Artwork);
  LOBYTE(v42) = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v63 = v112;
  sub_10003D17C(v53, v112, &qword_101186918);
  v64 = v63 + *(v114 + 44);
  *v64 = v42;
  *(v64 + 8) = v56;
  *(v64 + 16) = v58;
  *(v64 + 24) = v60;
  *(v64 + 32) = v62;
  *(v64 + 40) = 0;
  sub_10003D17C(v63, v133, &qword_101186938);
  v123 = static HorizontalAlignment.leading.getter();
  v149 = 0;
  sub_10024235C(v124, v125, v126, &v139);
  v158 = v140[7];
  v159 = v140[8];
  v154 = v140[3];
  v155 = v140[4];
  v157 = v140[6];
  v156 = v140[5];
  v150 = v139;
  v151 = v140[0];
  v152 = v140[1];
  v153 = v140[2];
  v161[8] = v140[7];
  v161[9] = v140[8];
  v161[4] = v140[3];
  v161[5] = v140[4];
  v161[7] = v140[6];
  v161[6] = v140[5];
  v161[0] = v139;
  v161[1] = v140[0];
  v160 = v140[9];
  v162 = v140[9];
  v161[3] = v140[2];
  v161[2] = v140[1];
  sub_1000089F8(&v150, &v135, &qword_101186940);
  v65 = v127;
  sub_1000095E8(v161, &qword_101186940);
  *(&v148[7] + 7) = v157;
  *(&v148[8] + 7) = v158;
  *(&v148[9] + 7) = v159;
  *(&v148[3] + 7) = v153;
  *(&v148[4] + 7) = v154;
  *(&v148[5] + 7) = v155;
  *(&v148[6] + 7) = v156;
  *(v148 + 7) = v150;
  *(&v148[1] + 7) = v151;
  *(&v148[10] + 7) = v160;
  *(&v148[2] + 7) = v152;
  LODWORD(v126) = v149;
  LODWORD(v125) = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v73 = v72;
  swift_getKeyPath();
  *&v139 = v122;
  v74 = v122;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v75 = 1;
  if (*(v74 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__showChevron) == 1)
  {
    v76 = Image.init(systemName:)();
    v77 = static Font.body.getter();
    KeyPath = swift_getKeyPath();
    v79 = static HierarchicalShapeStyle.secondary.getter();
    v80 = v106;
    v81 = &v106[*(v65 + 36)];
    v82 = *(sub_10010FC20(&qword_1011A13C0) + 28);
    v83 = enum case for Image.Scale.medium(_:);
    v84 = type metadata accessor for Image.Scale();
    (*(*(v84 - 8) + 104))(v81 + v82, v83, v84);
    *v81 = swift_getKeyPath();
    *v80 = v76;
    *(v80 + 8) = KeyPath;
    *(v80 + 16) = v77;
    *(v80 + 24) = v79;
    sub_10003D17C(v80, v132, &qword_101186928);
    v75 = 0;
  }

  v85 = v132;
  (*(v128 + 56))(v132, v75, 1, v65);
  v86 = v133;
  v87 = v129;
  sub_1000089F8(v133, v129, &qword_101186938);
  v88 = v130;
  sub_1000089F8(v85, v130, &qword_101186930);
  v89 = v131;
  sub_1000089F8(v87, v131, &qword_101186938);
  v90 = sub_10010FC20(&qword_101186948);
  v91 = v90[12];
  *(&v136[7] + 1) = v148[7];
  *(&v136[8] + 1) = v148[8];
  *(&v136[9] + 1) = v148[9];
  *(&v136[9] + 12) = *(&v148[9] + 11);
  *(&v136[3] + 1) = v148[3];
  *(&v136[4] + 1) = v148[4];
  v92 = (v89 + v91);
  v93 = v123;
  v135 = v123;
  v94 = v126;
  LOBYTE(v136[0]) = v126;
  *(&v136[5] + 1) = v148[5];
  *(&v136[6] + 1) = v148[6];
  *(&v136[1] + 1) = v148[1];
  *(&v136[2] + 1) = v148[2];
  *(v136 + 1) = v148[0];
  v95 = v125;
  LOBYTE(v137) = v125;
  *(&v137 + 1) = *v163;
  DWORD1(v137) = *&v163[3];
  *(&v137 + 1) = v67;
  *&v138[0] = v69;
  *(&v138[0] + 1) = v71;
  *&v138[1] = v73;
  BYTE8(v138[1]) = 0;
  v96 = v136[8];
  v92[8] = v136[7];
  v92[9] = v96;
  v97 = v136[10];
  v92[10] = v136[9];
  v92[11] = v97;
  v98 = v136[4];
  v92[4] = v136[3];
  v92[5] = v98;
  v99 = v136[6];
  v92[6] = v136[5];
  v92[7] = v99;
  v100 = v136[0];
  *v92 = v135;
  v92[1] = v100;
  v101 = v136[2];
  v92[2] = v136[1];
  v92[3] = v101;
  v102 = *(v138 + 9);
  v103 = v138[0];
  v92[12] = v137;
  v92[13] = v103;
  *(v92 + 217) = v102;
  v104 = v89 + v90[16];
  *v104 = 0;
  *(v104 + 8) = 1;
  sub_1000089F8(v88, v89 + v90[20], &qword_101186930);
  sub_1000089F8(&v135, &v139, &qword_101186950);
  sub_1000095E8(v85, &qword_101186930);
  sub_1000095E8(v86, &qword_101186938);
  sub_1000095E8(v88, &qword_101186930);
  *(&v140[7] + 1) = v148[7];
  *(&v140[8] + 1) = v148[8];
  *(&v140[9] + 1) = v148[9];
  *(&v140[9] + 12) = *(&v148[9] + 11);
  *(&v140[3] + 1) = v148[3];
  *(&v140[4] + 1) = v148[4];
  *(&v140[5] + 1) = v148[5];
  *(&v140[6] + 1) = v148[6];
  *(v140 + 1) = v148[0];
  *(&v140[1] + 1) = v148[1];
  v139 = v93;
  LOBYTE(v140[0]) = v94;
  *(&v140[2] + 1) = v148[2];
  v141 = v95;
  *v142 = *v163;
  *&v142[3] = *&v163[3];
  v143 = v67;
  v144 = v69;
  v145 = v71;
  v146 = v73;
  v147 = 0;
  sub_1000095E8(&v139, &qword_101186950);
  return sub_1000095E8(v87, &qword_101186938);
}