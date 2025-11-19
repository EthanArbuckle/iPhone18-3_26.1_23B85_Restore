uint64_t sub_1008E0890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_100008F30;

  return MusicLibrary.removeDownload<A>(_:)(a2, a3, a4);
}

uint64_t sub_1008E0948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  sub_10010FC20(&qword_1011A7F08);
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
  sub_10010FC20(&qword_1011A77F0);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  sub_10010FC20(&qword_1011A8660);
  v4[27] = swift_task_alloc();
  v5 = type metadata accessor for Actions.MetricsReportingContext();
  v4[28] = v5;
  v4[29] = *(v5 - 8);
  v4[30] = swift_task_alloc();

  return _swift_task_switch(sub_1008E0B5C, 0, 0);
}

uint64_t sub_1008E0B5C()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  sub_1000089F8(*(v0 + 72), v3, &qword_1011A8660);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000095E8(*(v0 + 216), &qword_1011A8660);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 208);
    v7 = *(v0 + 88);
    sub_1008D08BC(*(v0 + 216), *(v0 + 240), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 248) = MusicItem.metricsTargetIdentifier.getter(v7);
    *(v0 + 256) = v8;
    v9 = type metadata accessor for URL();
    *(v0 + 264) = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    *(v0 + 272) = v11;
    *(v0 + 280) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v6, 1, 1, v9);
    sub_10010FC20(&qword_1011A8868);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBC6B0;
    *(inited + 32) = MusicItem.metricsContentType.getter(v7);
    *(inited + 40) = v13;
    *(inited + 48) = 0;
    *(v0 + 288) = sub_1008AC260(inited);
    *(v0 + 296) = v14;
    *(v0 + 304) = v15;
    *(v0 + 320) = v16;
    swift_setDeallocating();
    sub_1008DB7F0(inited + 32);
    type metadata accessor for MainActor();
    *(v0 + 312) = static MainActor.shared.getter();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1008E0E4C, v18, v17);
  }
}

uint64_t sub_1008E0E4C()
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

  sub_1000089F8(v3, v4, &qword_1011A77F0);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_1000089F8(v1 + v2[5], v7, &qword_1011A7F08);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 9733;
  sub_10003D17C(v4, v6 + v5[7], &qword_1011A77F0);
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
  sub_1000089F8(v7, v72, &qword_1011A7F08);
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

    sub_100633490(v75, v77);

    sub_1005EA59C(v19, v17, v18, v16, SBYTE1(v16));
    sub_1000095E8(v20, &qword_1011A7F08);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_100633490(v75, v77);

    sub_1005EA59C(v19, v17, v18, v16, SBYTE1(v16));

    sub_1008D9B58(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 160);
  v24 = *(v0 + 144);
  v25 = (*(v0 + 176) + *(*(v0 + 168) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_1000089F8(v23, v24, &qword_1011A7F08);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 144);
  if (v26 == 1)
  {
    sub_1000095E8(*(v0 + 144), &qword_1011A7F08);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_1008D9B58(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 160);
  v31 = *(v0 + 136);
  v32 = (*(v0 + 176) + *(*(v0 + 168) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_1000089F8(v30, v31, &qword_1011A7F08);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 272);
    v34 = *(v0 + 264);
    v35 = *(v0 + 192);
    sub_1000095E8(*(v0 + 136), &qword_1011A7F08);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 136);
    sub_1000089F8(v36 + v14[6], *(v0 + 192), &qword_1011A77F0);
    sub_1008D9B58(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 160);
  v38 = *(v0 + 128);
  sub_10003D17C(*(v0 + 192), *(v0 + 176) + *(*(v0 + 168) + 56), &qword_1011A77F0);
  sub_1000089F8(v37, v38, &qword_1011A7F08);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 128);
  if (v39 == 1)
  {
    sub_1000095E8(*(v0 + 128), &qword_1011A7F08);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_1008D9B58(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 160);
  v43 = *(v0 + 120);
  *(*(v0 + 176) + *(*(v0 + 168) + 60)) = v41;
  sub_1000089F8(v42, v43, &qword_1011A7F08);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 120);
  if (v44 == 1)
  {
    sub_1000095E8(v45, &qword_1011A7F08);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_1008D9B58(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 160);
  v48 = *(v0 + 112);
  *(*(v0 + 176) + *(*(v0 + 168) + 64)) = v46;
  sub_1000089F8(v47, v48, &qword_1011A7F08);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 112);
  if (v49 == 1)
  {
    sub_1000095E8(*(v0 + 112), &qword_1011A7F08);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_1008D9B58(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 160);
  v55 = *(v0 + 104);
  v56 = (*(v0 + 176) + *(*(v0 + 168) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_10003D17C(v54, v55, &qword_1011A7F08);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 104);
  if (v57 == 1)
  {
    sub_1000095E8(v58, &qword_1011A7F08);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_1008D9B58(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 176);
  v61 = *(v0 + 184);
  v62 = *(v0 + 168);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_1008D08BC(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_1011A6810 != -1)
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
  sub_100344B1C(v65, v64, v63, v70, SBYTE1(v70));
  sub_1008D9B58(v69, type metadata accessor for MetricsEvent.Click);
  sub_1000095E8(v68, &qword_1011A77F0);

  return _swift_task_switch(sub_1008E1600, 0, 0);
}

uint64_t sub_1008E1600()
{
  sub_1008D9B58(*(v0 + 240), type metadata accessor for Actions.MetricsReportingContext);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1008E1738(uint64_t a1, uint64_t a2)
{
  v138 = a1;
  v109 = type metadata accessor for Genre();
  v107 = *(v109 - 8);
  __chkstk_darwin(v109);
  v110 = &v103 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for Composer();
  v108 = *(v113 - 8);
  __chkstk_darwin(v113);
  v112 = &v103 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for Artist();
  v111 = *(v116 - 8);
  __chkstk_darwin(v116);
  v115 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for TVEpisode();
  v114 = *(v119 - 8);
  __chkstk_darwin(v119);
  v118 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for TVSeason();
  v117 = *(v122 - 8);
  __chkstk_darwin(v122);
  v121 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for TVShow();
  v120 = *(v124 - 8);
  __chkstk_darwin(v124);
  v123 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = type metadata accessor for MusicMovie();
  v125 = *(v128 - 8);
  __chkstk_darwin(v128);
  v127 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = type metadata accessor for Song();
  v126 = *(v131 - 8);
  __chkstk_darwin(v131);
  v130 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = type metadata accessor for Playlist();
  v129 = *(v134 - 8);
  __chkstk_darwin(v134);
  v133 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = type metadata accessor for MusicVideo();
  v132 = *(v136 - 8);
  __chkstk_darwin(v136);
  v13 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Locale();
  __chkstk_darwin(v14 - 8);
  v137 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for String.LocalizationValue();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v103 - v21;
  v23 = type metadata accessor for Album();
  v135 = *(v23 - 8);
  __chkstk_darwin(v23);
  v25 = &v103 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(a2 - 8);
  __chkstk_darwin(v27);
  v104 = &v103 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v106 = &v103 - v30;
  v32 = __chkstk_darwin(v31);
  v34 = &v103 - v33;
  v139 = v26;
  v105 = *(v26 + 16);
  v105(&v103 - v33, v138, a2, v32);
  if (swift_dynamicCast())
  {
    v138 = a2;
    String.LocalizationValue.init(stringLiteral:)();
    v17[2](v19, v22, v16);
    v35 = v17;
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v36 = qword_101219808;
    static Locale.current.getter();
    v37 = String.init(localized:table:bundle:locale:comment:)();
    (v35[1])(v22, v16);
    (*(v135 + 8))(v25, v23);
    (*(v139 + 8))(v34, v138);
    return v37;
  }

  v103 = v19;
  v135 = v16;
  v38 = v17;
  v39 = v136;
  if (swift_dynamicCast())
  {
    v134 = v34;
    v40 = v13;
    String.LocalizationValue.init(stringLiteral:)();
    v41 = v38;
    v42 = v38[2];
    v43 = v135;
    (v42)(v103, v22, v135);
    v44 = v139;
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v45 = qword_101219808;
    static Locale.current.getter();
    v46 = String.init(localized:table:bundle:locale:comment:)();
    v41[1](v22, v43);
    (*(v132 + 8))(v40, v39);
    v37 = v46;
    (*(v44 + 8))(v134, a2);
    return v37;
  }

  v47 = a2;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    v48 = v38;
    v49 = v38[2];
    v50 = v135;
    (v49)(v103, v22, v135);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v51 = qword_101219808;
    static Locale.current.getter();
    v52 = String.init(localized:table:bundle:locale:comment:)();
    v48[1](v22, v50);
    (*(v129 + 8))(v133, v134);
LABEL_17:
    v57 = *(v139 + 8);
    v58 = v34;
    v59 = a2;
    v37 = v52;
LABEL_18:
    v57(v58, v59);
    return v37;
  }

  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    v53 = v38;
    v54 = v38[2];
    v55 = v135;
    (v54)(v103, v22, v135);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v56 = qword_101219808;
    static Locale.current.getter();
    v52 = String.init(localized:table:bundle:locale:comment:)();
    v53[1](v22, v55);
    (*(v126 + 8))(v130, v131);
    goto LABEL_17;
  }

  v61 = swift_dynamicCast();
  v62 = v34;
  v63 = v38;
  v64 = v135;
  if (v61)
  {
    String.LocalizationValue.init(stringLiteral:)();
    (v38[2])(v103, v22, v64);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v65 = qword_101219808;
    static Locale.current.getter();
    v66 = String.init(localized:table:bundle:locale:comment:)();
    v38[1](v22, v64);
    (*(v125 + 8))(v127, v128);
    v67 = v47;
    v37 = v66;
    (*(v139 + 8))(v34, v67);
    return v37;
  }

  v136 = v22;
  v68 = v123;
  v69 = v124;
  if (swift_dynamicCast())
  {
    (*(v120 + 8))(v68, v69);
LABEL_28:
    v72 = v136;
    (*(v139 + 8))(v62, v47);
    String.LocalizationValue.init(stringLiteral:)();
    (*(v63 + 2))(v103, v72, v64);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v73 = qword_101219808;
    static Locale.current.getter();
    v37 = String.init(localized:table:bundle:locale:comment:)();
    (*(v63 + 1))(v72, v64);
    return v37;
  }

  v133 = v38;
  v70 = v121;
  v71 = v122;
  if (swift_dynamicCast())
  {
    (*(v117 + 8))(v70, v71);
    v64 = v135;
    v63 = v133;
    goto LABEL_28;
  }

  v74 = swift_dynamicCast();
  v75 = v136;
  if (v74)
  {
    String.LocalizationValue.init(stringLiteral:)();
    v76 = v133;
    v77 = v135;
    (*(v133 + 2))(v103, v75, v135);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v78 = qword_101219808;
    static Locale.current.getter();
    v79 = String.init(localized:table:bundle:locale:comment:)();
    (*(v76 + 1))(v75, v77);
    (*(v114 + 8))(v118, v119);
LABEL_43:
    v57 = *(v139 + 8);
    v58 = v62;
LABEL_44:
    v59 = v47;
    v37 = v79;
    goto LABEL_18;
  }

  v80 = swift_dynamicCast();
  v81 = v135;
  v82 = v133;
  if (v80)
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v82 + 2))(v103, v75, v81);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v83 = qword_101219808;
    static Locale.current.getter();
    v79 = String.init(localized:table:bundle:locale:comment:)();
    (*(v82 + 1))(v75, v81);
    (*(v111 + 8))(v115, v116);
    goto LABEL_43;
  }

  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v82 + 2))(v103, v75, v81);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v84 = qword_101219808;
    static Locale.current.getter();
    v79 = String.init(localized:table:bundle:locale:comment:)();
    (*(v82 + 1))(v75, v81);
    (*(v108 + 8))(v112, v113);
    goto LABEL_43;
  }

  v134 = v62;
  v85 = v109;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v82 + 2))(v103, v75, v81);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v86 = qword_101219808;
    static Locale.current.getter();
    v79 = String.init(localized:table:bundle:locale:comment:)();
    (*(v82 + 1))(v75, v81);
    (*(v107 + 8))(v110, v85);
    v57 = *(v139 + 8);
    v58 = v134;
    goto LABEL_44;
  }

  if (qword_1011A6748 != -1)
  {
    swift_once();
  }

  v87 = type metadata accessor for Logger();
  sub_1000060E4(v87, static Logger.actions);
  v88 = v106;
  v89 = v105;
  (v105)(v106, v138, v47);
  v90 = Logger.logObject.getter();
  v91 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    v138 = swift_slowAlloc();
    v140 = v138;
    *v92 = 136315138;
    v89(v104, v88, v47);
    v93 = String.init<A>(describing:)();
    v94 = v47;
    v96 = v95;
    v97 = *(v139 + 8);
    v97(v88, v94);
    v98 = sub_100010678(v93, v96, &v140);
    v47 = v94;
    v75 = v22;

    *(v92 + 4) = v98;
    _os_log_impl(&_mh_execute_header, v90, v91, "DeleteOrRemoveDownload: unhandled item type=%s", v92, 0xCu);
    sub_10000959C(v138);

    v82 = v38;
  }

  else
  {

    v97 = *(v139 + 8);
    v97(v88, v47);
  }

  String.LocalizationValue.init(stringLiteral:)();
  v99 = v135;
  (*(v82 + 2))(v103, v75, v135);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v100 = qword_101219808;
  static Locale.current.getter();
  v101 = String.init(localized:table:bundle:locale:comment:)();
  (*(v82 + 1))(v75, v99);
  v102 = v47;
  v37 = v101;
  v97(v134, v102);
  return v37;
}

uint64_t Actions.DeleteOrRemoveDownload.Context.menuItemTitle.getter()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v8 = qword_101219808;
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
  return sub_1008D04DC;
}

uint64_t (*sub_1008E304C())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6873617274;
  *(v0 + 24) = 0xE500000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x6873617274;
  *(v1 + 24) = 0xE500000000000000;
  return sub_1008D0A40;
}

uint64_t sub_1008E30E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_1008E3108, 0, 0);
}

uint64_t sub_1008E3108()
{
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = *(v0 + 32);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_1008E3208;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 72, 0, 0, 0xD00000000000003ALL, 0x8000000100E5A8E0, sub_1008E3B2C, v2, &type metadata for Actions.DeleteOrRemoveDownload.Choice);
}

uint64_t sub_1008E3208()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1008E3354, 0, 0);
  }

  else
  {
    v3 = *(v2 + 16);

    *v3 = *(v2 + 72);
    v4 = *(v2 + 8);

    return v4();
  }
}

uint64_t sub_1008E3354()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t _s9MusicCore7ActionsO22DeleteOrRemoveDownloadO6ChoiceO8rawValueAGSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1010C63A8, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1008E343C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100008F30;

  return sub_1008E30E4(a1, a2, v7, v6);
}

uint64_t sub_1008E351C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[5];
  v5 = (*(*(v2 - 8) + 80) + 48) & ~*(*(v2 - 8) + 80);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100008F30;

  return sub_1008E045C(v4, v0 + v5, v2, v3);
}

uint64_t sub_1008E3664()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[5];
  v5 = (*(*(v2 - 8) + 80) + 48) & ~*(*(v2 - 8) + 80);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100008F30;

  return sub_1008E0890(v4, v0 + v5, v2, v3);
}

uint64_t sub_1008E374C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(sub_10010FC20(&qword_1011A8660) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100008F30;

  return sub_1008E0948(v0 + v5, v0 + v6, v2, v3);
}

unint64_t sub_1008E38A0()
{
  result = qword_1011A8A20;
  if (!qword_1011A8A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A8A20);
  }

  return result;
}

unint64_t sub_1008E38F8()
{
  result = qword_1011A8A28;
  if (!qword_1011A8A28)
  {
    sub_1001109D0(&qword_1011A8A30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A8A28);
  }

  return result;
}

uint64_t sub_1008E3978(uint64_t a1)
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

uint64_t sub_1008E398C(uint64_t *a1, int a2)
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

uint64_t sub_1008E39D4(uint64_t result, int a2, int a3)
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

uint64_t sub_1008E3A64(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10002F3F4;

  return sub_1008E30E4(a1, a2, v7, v6);
}

uint64_t sub_1008E3B38(uint64_t a1)
{
  v4 = *(sub_10010FC20(&qword_1011A8A60) - 8);
  v5 = (*(v4 + 80) + 304) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100008F30;

  return sub_1008DE440(a1, v6, v7, v8, v9, (v1 + 6), v1 + v5);
}

uint64_t sub_1008E3CD4(uint64_t a1, uint64_t a2)
{
  v6 = *(sub_10010FC20(&qword_1011A8A60) - 8);
  v7 = (*(v6 + 80) + 216) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10002F3F4;

  return sub_1008DF32C(a1, a2, v8, v2 + 24, v2 + v7);
}

uint64_t sub_1008E3DD4(uint64_t a1)
{
  v4 = *(sub_10010FC20(&qword_1011A8A60) - 8);
  v5 = (*(v4 + 80) + 232) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_1008DF5BC(a1, v6, v7, v8, v1 + 40, v1 + v5);
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
  v75 = sub_10010FC20(&qword_1011A8A78);
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
  sub_10012B828(v65, v45 + 40);
  v39(v45 + v43, v71, v75);
  v47 = v73;
  *(v45 + v44) = v74;
  v48 = v62;
  v62(v45 + ((v30 + v44 + 8) & ~v30), v47, v42);
  v49 = v64;
  v48(v64, v70, v42);
  v50 = *(sub_10010FC20(&qword_1011A8660) - 8);
  v51 = (*(v50 + 80) + 40) & ~*(v50 + 80);
  v52 = (*(v50 + 64) + v30 + v51) & ~v30;
  v53 = swift_allocObject();
  v54 = v72;
  *(v53 + 2) = v42;
  *(v53 + 3) = v54;
  *(v53 + 4) = v46;
  sub_10003D17C(v66, v53 + v51, &qword_1011A8660);
  result = (v48)(v53 + v52, v49, v42);
  v56 = v67;
  v57 = v63;
  *v67 = sub_1008E4A20;
  v56[1] = v57;
  v56[2] = &unk_100EEE6E0;
  v56[3] = v45;
  v56[4] = &unk_100EEE6F0;
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
  *(a2 + 56) = sub_1000D9088;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &unk_100EEE6F8;
  *(a2 + 88) = 0;
  *(a2 + 96) = &unk_100EEE700;
  *(a2 + 104) = 0;
}

uint64_t sub_1008E4520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 40);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = v2;
  *(a2 + 48) = 1;
  *(a2 + 56) = sub_1000D9088;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &unk_100EEE6F8;
  *(a2 + 88) = 0;
  *(a2 + 96) = &unk_100EEE700;
  *(a2 + 104) = 0;
}

unint64_t sub_1008E45DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a2;
  v30 = a1;
  v4 = sub_10010FC20(&qword_1011A8AB8);
  __chkstk_darwin(v4 - 8);
  v6 = &v27 - v5;
  v7 = sub_10010FC20(&qword_1011AA6B0);
  v28 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v27 - v8;
  v10 = sub_10010FC20(&qword_1011AA6C0);
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
    v24 = &qword_1011AA6C0;
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
    v24 = &qword_1011A8AB8;
    v25 = v6;
LABEL_5:
    sub_1000095E8(v25, v24);
    return sub_1008E4B0C();
  }

  (*(v23 + 32))(v9, v6, v7);
  sub_1008E8F54();
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
  return sub_1008E4B0C();
}

unint64_t sub_1008E4A20()
{
  v1 = *(v0 + 16);
  v2 = (*(*(v1 - 8) + 80) + 40) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = *(sub_10010FC20(&qword_1011A8A78) - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1008E45DC(v0 + v2, v5, v1);
}

uint64_t sub_1008E4B0C()
{
  v1 = type metadata accessor for MusicLibrary.DownloadAction.UnsupportedReason();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v38 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v7 = &v37 - v6;
  __chkstk_darwin(v5);
  v9 = &v37 - v8;
  v10 = sub_10010FC20(&qword_1011A8A78);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v37 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v39 = &v37 - v15;
  __chkstk_darwin(v14);
  v17 = &v37 - v16;
  v18 = *(v11 + 16);
  v40 = v0;
  v18(&v37 - v16, v0, v10);
  v19 = (*(v11 + 88))(v17, v10);
  if (v19 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    (*(v11 + 96))(v17, v10);
    (*(v2 + 32))(v9, v17, v1);
    v20 = *(v2 + 16);
    v20(v7, v9, v1);
    if ((*(v2 + 88))(v7, v1) != enum case for MusicLibrary.DownloadAction.UnsupportedReason.cellularDataDisallowed(_:))
    {
      v20(v38, v9, v1);
      v21 = String.init<A>(describing:)();
      v22 = *(v2 + 8);
      v22(v9, v1);
      v22(v7, v1);
      return v21;
    }

    (*(v2 + 8))(v9, v1);
    return 0;
  }

  if (v19 == enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    return 0;
  }

  if (qword_1011A6748 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_1000060E4(v23, static Logger.actions);
  v24 = v39;
  v18(v39, v40, v10);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v41[0] = v38;
    *v27 = 136315138;
    v18(v37, v24, v10);
    v28 = String.init<A>(describing:)();
    v29 = v24;
    v31 = v30;
    v32 = *(v11 + 8);
    v32(v29, v10);
    v33 = v32;
    v34 = sub_100010678(v28, v31, v41);

    *(v27 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v25, v26, "Unknown status=%s", v27, 0xCu);
    sub_10000959C(v38);

    v35 = v33;
  }

  else
  {

    v35 = *(v11 + 8);
    v35(v24, v10);
  }

  v41[0] = 0;
  v41[1] = 0xE000000000000000;
  _print_unlocked<A, B>(_:_:)();
  v21 = v41[0];
  v35(v17, v10);
  return v21;
}

uint64_t sub_1008E5034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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
  v12 = sub_10010FC20(&qword_1011A8A78);
  v7[61] = v12;
  v7[62] = *(v12 - 8);
  v7[63] = swift_task_alloc();
  v7[64] = swift_task_alloc();
  v7[65] = swift_task_alloc();

  return _swift_task_switch(sub_1008E52A0, 0, 0);
}

uint64_t sub_1008E52A0()
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
      v14[1] = sub_1008E5C94;

      return withCheckedContinuation<A>(isolation:function:_:)(v0 + 600, 0, 0, 0xD00000000000001DLL, 0x8000000100E5B120, sub_1008E8C70, v13, &type metadata for Bool);
    }

    if (qword_1011A6748 != -1)
    {
      swift_once();
    }

    v32 = *(v0 + 480);
    v33 = *(v0 + 464);
    v34 = *(v0 + 440);
    v35 = type metadata accessor for Logger();
    sub_1000060E4(v35, static Logger.actions);
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
      v49 = sub_100010678(v45, v47, &v89);

      *(v44 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v36, v37, "Couldn't download for reason: %s", v44, 0xCu);
      sub_10000959C(v84);

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
    if (qword_1011A6748 != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 512);
    v16 = *(v0 + 488);
    v17 = *(v0 + 320);
    v18 = type metadata accessor for Logger();
    sub_1000060E4(v18, static Logger.actions);
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
      v31 = sub_100010678(v27, v29, &v89);

      *(v26 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v19, v86, "Unknown status=%s", v26, 0xCu);
      sub_10000959C(v83);

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
  sub_10010FC20(&qword_1011A8AA0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 304) = 0;
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0u;
    sub_1000095E8(v0 + 272, &qword_1011A8AA8);
    goto LABEL_22;
  }

  sub_100059A8C((v0 + 272), v0 + 232);
  v56 = *(v0 + 256);
  v55 = *(v0 + 264);
  sub_10000954C((v0 + 232), v56);
  if (!sub_10098F64C(v56, v55) || (v57 = [objc_opt_self() standardUserDefaults], v58 = objc_msgSend(v57, "prefersSpatialDownloads"), v57, (v58 & 1) != 0) || (v59 = objc_opt_self(), *(v0 + 544) = v59, v60 = objc_msgSend(v59, "standardUserDefaults"), v61 = String._bridgeToObjectiveC()(), v62 = objc_msgSend(v60, "BOOLForKey:", v61), v61, v60, (v62 & 1) != 0))
  {
    sub_10000959C(v0 + 232);
LABEL_22:
    sub_1008E712C(*(v0 + 328), *(v0 + 336), *(v0 + 344), *(v0 + 352), *(v0 + 360));
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
  if (qword_1011A6740 != -1)
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
  v73 = qword_101219808;
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

  return _swift_task_switch(sub_1008E6300, v78, v77);
}

uint64_t sub_1008E5C94()
{

  return _swift_task_switch(sub_1008E5DAC, 0, 0);
}

uint64_t sub_1008E5DAC()
{
  v1 = *(v0 + 600);
  if (qword_1011A6748 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000060E4(v2, static Logger.actions);
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
  sub_10010FC20(&qword_1011A8AA0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 304) = 0;
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0u;
    sub_1000095E8(v0 + 272, &qword_1011A8AA8);
    goto LABEL_12;
  }

  sub_100059A8C((v0 + 272), v0 + 232);
  v11 = *(v0 + 256);
  v10 = *(v0 + 264);
  sub_10000954C((v0 + 232), v11);
  if (!sub_10098F64C(v11, v10) || (v12 = [objc_opt_self() standardUserDefaults], v13 = objc_msgSend(v12, "prefersSpatialDownloads"), v12, (v13 & 1) != 0) || (v14 = objc_opt_self(), *(v0 + 544) = v14, v15 = objc_msgSend(v14, "standardUserDefaults"), v16 = String._bridgeToObjectiveC()(), v17 = objc_msgSend(v15, "BOOLForKey:", v16), v16, v15, (v17 & 1) != 0))
  {
    sub_10000959C(v0 + 232);
LABEL_12:
    sub_1008E712C(*(v0 + 328), *(v0 + 336), *(v0 + 344), *(v0 + 352), *(v0 + 360));
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
  if (qword_1011A6740 != -1)
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
  v28 = qword_101219808;
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

  return _swift_task_switch(sub_1008E6300, v33, v32);
}

uint64_t sub_1008E6300()
{
  v1 = v0[71];
  v2 = v0[70];
  v3 = v0[69];

  sub_100980138(v3, v2, &unk_100EEE788, v1, (v0 + 14));

  return _swift_task_switch(sub_1008E63B4, 0, 0);
}

uint64_t sub_1008E63B4()
{
  *(v0 + 592) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1008E6440, v2, v1);
}

uint64_t sub_1008E6440()
{
  v1 = *(v0 + 312);

  v2 = sub_10093F41C(v0 + 112, 0, 1);
  v3 = v2;
  v4 = *(v0 + 144);
  v5 = *(v1 + 80);
  if (v5)
  {
    v6 = qword_1011A6AC8;

    if (v6 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000060E4(v7, qword_1011AE4E0);
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
    *(v0 + 216) = sub_100A8F4C0;
    *(v0 + 224) = 0;
    *(v0 + 184) = _NSConcreteStackBlock;
    *(v0 + 192) = 1107296256;
    *(v0 + 200) = sub_100A90460;
    *(v0 + 208) = &unk_1010CCF08;
    v13 = _Block_copy((v0 + 184));
    v14 = [v12 initWithTimeout:v13 interruptionHandler:10.0];
    _Block_release(v13);

    sub_10012B7A8(v11, v0 + 16);
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    sub_10012B828(v0 + 16, v15 + 24);
    *(v15 + 120) = v3;
    *(v15 + 128) = v4;
    *(v15 + 129) = 1;
    *(v15 + 136) = 0;
    *(v15 + 144) = 0;
    v16 = v14;
    v3 = v3;
    v5(v11, v3, sub_1008D9BB8, v15);
    sub_100020438(v5);
  }

  else
  {
    sub_100A8D9A0(v2, *(v0 + 144), 1, 0, 0);
  }

  return _swift_task_switch(sub_1008E6708, 0, 0);
}

uint64_t sub_1008E6708()
{
  v1 = [*(v0 + 544) standardUserDefaults];
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v3 = String._bridgeToObjectiveC()();
  [v1 setValue:isa forKey:v3];

  sub_100344A84(v0 + 112);
  sub_10000959C(v0 + 232);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1008E687C()
{
  v3 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v5 = *(sub_10010FC20(&qword_1011A8A78) - 8);
  v6 = (*(v5 + 80) + 136) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + *(*(v3 - 8) + 80) + 8) & ~*(*(v3 - 8) + 80);
  v9 = *(v0 + v7);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_10002F3F4;

  return sub_1008E5034((v0 + 5), v0 + v6, v9, v0 + v8, v3, v2, v4);
}

uint64_t sub_1008E69EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011A8AB0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18[-v7];
  v9 = sub_10010FC20(&qword_1011A7F00);
  __chkstk_darwin(v9 - 8);
  v11 = &v18[-v10];
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  (*(v5 + 16))(v8, a1, v4);
  sub_10012B7A8(a2, v18);
  type metadata accessor for MainActor();
  v13 = static MainActor.shared.getter();
  v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v15 = (v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  *(v16 + 24) = &protocol witness table for MainActor;
  (*(v5 + 32))(v16 + v14, v8, v4);
  sub_10012B828(v18, v16 + v15);
  sub_100969440(0, 0, v11, &unk_100EEE7A0, v16);
}

uint64_t sub_1008E6C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[29] = a4;
  v5[30] = a5;
  v6 = sub_10010FC20(&qword_1011A8AB0);
  v5[31] = v6;
  v7 = *(v6 - 8);
  v5[32] = v7;
  v5[33] = *(v7 + 64);
  v5[34] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[35] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1008E6D18, v9, v8);
}

uint64_t sub_1008E6D18()
{

  if (qword_1011A6748 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, static Logger.actions);
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
  sub_10098066C(sub_1008E8DA0, v11, (v0 + 112));

  v12 = sub_10093F41C(v0 + 112, 0, 1);
  v13 = v12;
  v14 = *(v0 + 144);
  v15 = *(v9 + 80);
  if (v15)
  {
    v16 = qword_1011A6AC8;

    if (v16 != -1)
    {
      swift_once();
    }

    sub_1000060E4(v1, qword_1011AE4E0);
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
    *(v0 + 216) = sub_100A8F4C0;
    *(v0 + 224) = 0;
    *(v0 + 184) = _NSConcreteStackBlock;
    *(v0 + 192) = 1107296256;
    *(v0 + 200) = sub_100A90460;
    *(v0 + 208) = &unk_1010CCFA8;
    v22 = _Block_copy((v0 + 184));
    v23 = [v21 initWithTimeout:v22 interruptionHandler:10.0];
    _Block_release(v22);

    sub_10012B7A8(v20, v0 + 16);
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    sub_10012B828(v0 + 16, v24 + 24);
    *(v24 + 120) = v13;
    *(v24 + 128) = v14;
    *(v24 + 129) = 1;
    *(v24 + 136) = 0;
    *(v24 + 144) = 0;
    v25 = v23;
    v13 = v13;
    v15(v20, v13, sub_1008D9CA4, v24);
    sub_100020438(v15);
  }

  else
  {
    sub_100A8D9A0(v12, *(v0 + 144), 1, 0, 0);
  }

  sub_100344A84(v0 + 112);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_1008E712C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(a1);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10010FC20(&qword_1011A7F00);
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

  sub_1008A3074(0, 0, v15, &unk_100EEE7B0, v18);

  return sub_1000095E8(v15, &qword_1011A7F00);
}

uint64_t sub_1008E7338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a5;
  v7[4] = a6;
  v7[5] = *(a6 - 8);
  v7[6] = swift_task_alloc();
  v7[7] = swift_task_alloc();
  v11 = swift_task_alloc();
  v7[8] = v11;
  *v11 = v7;
  v11[1] = sub_1008E745C;

  return MusicLibrary.download<A>(_:)(a5, a6, a7);
}

uint64_t sub_1008E745C()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1008E75A0, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1008E75A0()
{
  v29 = v0;
  if (qword_1011A6748 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[3];
  v5 = type metadata accessor for Logger();
  sub_1000060E4(v5, static Logger.actions);
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
    v19 = sub_100010678(v16, v18, &v28);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2082;
    v0[2] = v10;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640);
    v20 = String.init<A>(describing:)();
    v22 = sub_100010678(v20, v21, &v28);

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

uint64_t sub_1008E7864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a3;
  v6[4] = a4;
  v6[2] = a2;
  return _swift_task_switch(sub_1008E788C, 0, 0);
}

uint64_t sub_1008E788C()
{
  sub_1008E712C(v0[2], v0[3], v0[4], v0[5], v0[6]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1008E78F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  sub_10010FC20(&qword_1011A7F08);
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
  sub_10010FC20(&qword_1011A77F0);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  sub_10010FC20(&qword_1011A8660);
  v4[27] = swift_task_alloc();
  v5 = type metadata accessor for Actions.MetricsReportingContext();
  v4[28] = v5;
  v4[29] = *(v5 - 8);
  v4[30] = swift_task_alloc();

  return _swift_task_switch(sub_1008E7B08, 0, 0);
}

uint64_t sub_1008E7B08()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  sub_1000089F8(*(v0 + 72), v3, &qword_1011A8660);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000095E8(*(v0 + 216), &qword_1011A8660);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 208);
    v7 = *(v0 + 88);
    sub_1008D08BC(*(v0 + 216), *(v0 + 240), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 248) = MusicItem.metricsTargetIdentifier.getter(v7);
    *(v0 + 256) = v8;
    v9 = type metadata accessor for URL();
    *(v0 + 264) = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    *(v0 + 272) = v11;
    *(v0 + 280) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v6, 1, 1, v9);
    sub_10010FC20(&qword_1011A8868);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBC6B0;
    *(inited + 32) = MusicItem.metricsContentType.getter(v7);
    *(inited + 40) = v13;
    *(inited + 48) = 0;
    *(v0 + 288) = sub_1008AC260(inited);
    *(v0 + 296) = v14;
    *(v0 + 304) = v15;
    *(v0 + 320) = v16;
    swift_setDeallocating();
    sub_1008DB7F0(inited + 32);
    type metadata accessor for MainActor();
    *(v0 + 312) = static MainActor.shared.getter();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1008E7DF8, v18, v17);
  }
}

uint64_t sub_1008E7DF8()
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

  sub_1000089F8(v3, v4, &qword_1011A77F0);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_1000089F8(v1 + v2[5], v7, &qword_1011A7F08);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 3589;
  sub_10003D17C(v4, v6 + v5[7], &qword_1011A77F0);
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
  sub_1000089F8(v7, v72, &qword_1011A7F08);
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

    sub_100633490(v75, v77);

    sub_1005EA59C(v19, v17, v18, v16, SBYTE1(v16));
    sub_1000095E8(v20, &qword_1011A7F08);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_100633490(v75, v77);

    sub_1005EA59C(v19, v17, v18, v16, SBYTE1(v16));

    sub_1008D9B58(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 160);
  v24 = *(v0 + 144);
  v25 = (*(v0 + 176) + *(*(v0 + 168) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_1000089F8(v23, v24, &qword_1011A7F08);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 144);
  if (v26 == 1)
  {
    sub_1000095E8(*(v0 + 144), &qword_1011A7F08);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_1008D9B58(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 160);
  v31 = *(v0 + 136);
  v32 = (*(v0 + 176) + *(*(v0 + 168) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_1000089F8(v30, v31, &qword_1011A7F08);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 272);
    v34 = *(v0 + 264);
    v35 = *(v0 + 192);
    sub_1000095E8(*(v0 + 136), &qword_1011A7F08);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 136);
    sub_1000089F8(v36 + v14[6], *(v0 + 192), &qword_1011A77F0);
    sub_1008D9B58(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 160);
  v38 = *(v0 + 128);
  sub_10003D17C(*(v0 + 192), *(v0 + 176) + *(*(v0 + 168) + 56), &qword_1011A77F0);
  sub_1000089F8(v37, v38, &qword_1011A7F08);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 128);
  if (v39 == 1)
  {
    sub_1000095E8(*(v0 + 128), &qword_1011A7F08);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_1008D9B58(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 160);
  v43 = *(v0 + 120);
  *(*(v0 + 176) + *(*(v0 + 168) + 60)) = v41;
  sub_1000089F8(v42, v43, &qword_1011A7F08);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 120);
  if (v44 == 1)
  {
    sub_1000095E8(v45, &qword_1011A7F08);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_1008D9B58(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 160);
  v48 = *(v0 + 112);
  *(*(v0 + 176) + *(*(v0 + 168) + 64)) = v46;
  sub_1000089F8(v47, v48, &qword_1011A7F08);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 112);
  if (v49 == 1)
  {
    sub_1000095E8(*(v0 + 112), &qword_1011A7F08);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_1008D9B58(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 160);
  v55 = *(v0 + 104);
  v56 = (*(v0 + 176) + *(*(v0 + 168) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_10003D17C(v54, v55, &qword_1011A7F08);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 104);
  if (v57 == 1)
  {
    sub_1000095E8(v58, &qword_1011A7F08);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_1008D9B58(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 176);
  v61 = *(v0 + 184);
  v62 = *(v0 + 168);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_1008D08BC(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_1011A6810 != -1)
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
  sub_100344B1C(v65, v64, v63, v70, SBYTE1(v70));
  sub_1008D9B58(v69, type metadata accessor for MetricsEvent.Click);
  sub_1000095E8(v68, &qword_1011A77F0);

  return _swift_task_switch(sub_1008E1600, 0, 0);
}

uint64_t sub_1008E85AC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(sub_10010FC20(&qword_1011A8660) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100008F30;

  return sub_1008E78F4(v0 + v5, v0 + v6, v2, v3);
}

uint64_t Actions.Download.Context.menuItemTitle.getter()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v8 = qword_101219808;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t (*Actions.Download.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000011;
  *(v0 + 24) = 0x8000000100E468B0;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000011;
  *(v1 + 24) = 0x8000000100E468B0;
  return sub_1008D04DC;
}

uint64_t (*Actions.Download.Context.menuItemCompactStyleImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000016;
  *(v0 + 24) = 0x8000000100E526C0;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000016;
  *(v1 + 24) = 0x8000000100E526C0;
  return sub_1008D0A40;
}

uint64_t (*sub_1008E8A18())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000011;
  *(v0 + 24) = 0x8000000100E468B0;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000011;
  *(v1 + 24) = 0x8000000100E468B0;
  return sub_1008D0A40;
}

uint64_t (*sub_1008E8AB8())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000016;
  *(v0 + 24) = 0x8000000100E526C0;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000016;
  *(v1 + 24) = 0x8000000100E526C0;
  return sub_1008D0A40;
}

uint64_t sub_1008E8B78(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = (*(*(v4 - 8) + 80) + 48) & ~*(*(v4 - 8) + 80);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_1008E7864(a1, v7, v1 + v8, v4, v5, v6);
}

uint64_t sub_1008E8C78(uint64_t a1)
{
  v4 = *(sub_10010FC20(&qword_1011A8AB0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_1008E6C10(a1, v7, v8, v1 + v5, v1 + v6);
}

uint64_t sub_1008E8DA0()
{
  sub_10010FC20(&qword_1011A8AB0);
  sub_10010FC20(&qword_1011A8AB0);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_1008E8E44(uint64_t a1)
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
  v10[1] = sub_10002F3F4;

  return sub_1008E7338(a1, v8, v9, v6, v1 + v7, v4, v5);
}

unint64_t sub_1008E8F54()
{
  result = qword_1011AA6E0;
  if (!qword_1011AA6E0)
  {
    sub_1001109D0(&qword_1011AA6B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AA6E0);
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
  result = qword_1011A8B40;
  if (!qword_1011A8B40)
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
  *v15 = &unk_100EEE258;
  v15[1] = v13;
  v16 = *(v10 + 32);
  v16(v12, a1, v9);
  v17 = *(sub_10010FC20(&qword_1011A8660) - 8);
  v18 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v19 = (v18 + *(v17 + 64) + *(v10 + 80)) & ~*(v10 + 80);
  v20 = swift_allocObject();
  sub_10003D17C(v24, v20 + v18, &qword_1011A8660);
  result = v16(v20 + v19, v12, v9);
  v22 = (a5 + *(v14 + 24));
  *v22 = &unk_100EEE7C8;
  v22[1] = v20;
  return result;
}

uint64_t sub_1008E94A8(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  sub_10010FC20(&qword_1011A7F08);
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
  sub_10010FC20(&qword_1011A77F0);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  sub_10010FC20(&qword_1011A8660);
  v2[30] = swift_task_alloc();
  v3 = type metadata accessor for Actions.MetricsReportingContext();
  v2[31] = v3;
  v2[32] = *(v3 - 8);
  v2[33] = swift_task_alloc();

  return _swift_task_switch(sub_1008E96B8, 0, 0);
}

uint64_t sub_1008E96B8()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);
  v3 = *(v0 + 240);
  sub_1000089F8(*(v0 + 112), v3, &qword_1011A8660);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000095E8(*(v0 + 240), &qword_1011A8660);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 232);
    sub_1008D08BC(*(v0 + 240), *(v0 + 264), type metadata accessor for Actions.MetricsReportingContext);
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
    sub_10010FC20(&qword_1011A8868);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBC6B0;
    *(v0 + 104) = type metadata accessor for Playlist();
    sub_10010FC20(&qword_1011A8028);
    v13 = String.init<A>(describing:)();
    v15 = v14;
    sub_1005442F0(1);
    v16 = Substring.lowercased()();

    v17 = sub_1008AC654(1uLL, v13, v15);
    v19 = v18;
    v21 = v20;
    v23 = v22;

    *(v0 + 72) = v17;
    *(v0 + 80) = v19;
    *(v0 + 88) = v21;
    *(v0 + 96) = v23;
    sub_1008AC704();
    String.append<A>(contentsOf:)();

    *(inited + 32) = v16;
    *(inited + 48) = 0;
    *(v0 + 312) = sub_1008AC260(inited);
    *(v0 + 320) = v24;
    *(v0 + 328) = v25;
    *(v0 + 344) = v26;
    swift_setDeallocating();
    sub_1008DB7F0(inited + 32);
    type metadata accessor for MainActor();
    *(v0 + 336) = static MainActor.shared.getter();
    v28 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1008E9A50, v28, v27);
  }
}

uint64_t sub_1008E9A50()
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

  sub_1000089F8(v6, v5, &qword_1011A77F0);
  v11 = *(v3 + v4[7]);
  v13 = *v3;
  v12 = v3[1];
  sub_1000089F8(v3 + v4[5], v9, &qword_1011A7F08);
  v82 = *(v3 + v4[8]);
  *(v8 + v7[19]) = 0;
  v14 = (v8 + v7[20]);
  *v14 = 0;
  v14[1] = 0;
  *v8 = v1;
  *(v8 + 8) = v80;
  *(v8 + 16) = 5125;
  sub_10003D17C(v79, v8 + v7[7], &qword_1011A77F0);
  v81 = v12;
  *(v8 + v7[8]) = v11;
  v15 = (v8 + v7[9]);
  *v15 = v13;
  v15[1] = v12;
  v16 = v8 + v7[10];
  *v16 = v78;
  *(v16 + 16) = v83;
  *(v16 + 24) = v85;
  sub_1000089F8(v9, v77, &qword_1011A7F08);
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

    sub_100633490(v13, v81);
    v24 = v82;

    sub_1005EA59C(v22, v20, v21, v19, SBYTE1(v19));
    sub_1000095E8(v23, &qword_1011A7F08);
    v25 = 0;
    v26 = 0;
  }

  else
  {
    v25 = *v23;
    v26 = v23[1];

    sub_100633490(v13, v81);
    v24 = v82;

    sub_1005EA59C(v22, v20, v21, v19, SBYTE1(v19));

    sub_1008D9B58(v23, type metadata accessor for MetricsEvent.Page);
  }

  v27 = *(v0 + 184);
  v28 = *(v0 + 168);
  v29 = (*(v0 + 200) + *(*(v0 + 192) + 48));
  *v29 = v25;
  v29[1] = v26;
  sub_1000089F8(v27, v28, &qword_1011A7F08);
  v30 = v84(v28, 1, v17);
  v31 = *(v0 + 168);
  if (v30 == 1)
  {
    sub_1000095E8(*(v0 + 168), &qword_1011A7F08);
    v32 = 0;
    v33 = 0;
  }

  else
  {
    v32 = *(v31 + 16);
    v33 = *(v31 + 24);

    sub_1008D9B58(v31, type metadata accessor for MetricsEvent.Page);
  }

  v34 = *(v0 + 184);
  v35 = *(v0 + 160);
  v36 = (*(v0 + 200) + *(*(v0 + 192) + 52));
  *v36 = v32;
  v36[1] = v33;
  sub_1000089F8(v34, v35, &qword_1011A7F08);
  if (v84(v35, 1, v17) == 1)
  {
    v37 = v24;
    v38 = *(v0 + 296);
    v39 = *(v0 + 288);
    v40 = *(v0 + 216);
    sub_1000095E8(*(v0 + 160), &qword_1011A7F08);
    v38(v40, 1, 1, v39);
    v24 = v37;
  }

  else
  {
    v41 = *(v0 + 160);
    sub_1000089F8(v41 + v17[6], *(v0 + 216), &qword_1011A77F0);
    sub_1008D9B58(v41, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 184);
  v43 = *(v0 + 152);
  sub_10003D17C(*(v0 + 216), *(v0 + 200) + *(*(v0 + 192) + 56), &qword_1011A77F0);
  sub_1000089F8(v42, v43, &qword_1011A7F08);
  v44 = v84(v43, 1, v17);
  v45 = *(v0 + 152);
  if (v44 == 1)
  {
    sub_1000095E8(*(v0 + 152), &qword_1011A7F08);
    v46 = 0;
  }

  else
  {
    v46 = *(v45 + v17[7]);

    sub_1008D9B58(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 184);
  v48 = *(v0 + 144);
  *(*(v0 + 200) + *(*(v0 + 192) + 60)) = v46;
  sub_1000089F8(v47, v48, &qword_1011A7F08);
  v49 = v84(v48, 1, v17);
  v50 = *(v0 + 144);
  if (v49 == 1)
  {
    sub_1000095E8(v50, &qword_1011A7F08);
    v51 = 1;
  }

  else
  {
    v51 = *(v50 + v17[9]);
    sub_1008D9B58(v50, type metadata accessor for MetricsEvent.Page);
  }

  v52 = *(v0 + 184);
  v53 = *(v0 + 136);
  *(*(v0 + 200) + *(*(v0 + 192) + 64)) = v51;
  sub_1000089F8(v52, v53, &qword_1011A7F08);
  v54 = v84(v53, 1, v17);
  v55 = *(v0 + 136);
  if (v54 == 1)
  {
    sub_1000095E8(*(v0 + 136), &qword_1011A7F08);
    v56 = 0;
    v57 = 0;
  }

  else
  {
    v58 = (v55 + v17[8]);
    v56 = *v58;
    v57 = v58[1];

    sub_1008D9B58(v55, type metadata accessor for MetricsEvent.Page);
  }

  v59 = *(v0 + 184);
  v60 = *(v0 + 128);
  v61 = (*(v0 + 200) + *(*(v0 + 192) + 72));
  *v61 = v56;
  v61[1] = v57;
  sub_10003D17C(v59, v60, &qword_1011A7F08);
  v62 = v84(v60, 1, v17);
  v63 = *(v0 + 128);
  if (v62 == 1)
  {
    sub_1000095E8(v63, &qword_1011A7F08);
    v64 = 2;
  }

  else
  {
    v64 = *(v63 + v17[11]);
    sub_1008D9B58(v63, type metadata accessor for MetricsEvent.Page);
  }

  v65 = *(v0 + 200);
  v66 = *(v0 + 208);
  v67 = *(v0 + 192);
  *(v65 + *(v67 + 68)) = v64;
  *(v65 + *(v67 + 44)) = v24;
  sub_1008D08BC(v65, v66, type metadata accessor for MetricsEvent.Click);
  if (qword_1011A6810 != -1)
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
  sub_100344B1C(v70, v69, v68, v75, SBYTE1(v75));
  sub_1008D9B58(v74, type metadata accessor for MetricsEvent.Click);
  sub_1000095E8(v73, &qword_1011A77F0);

  return _swift_task_switch(sub_1008DADE0, 0, 0);
}

uint64_t sub_1008EA240()
{
  v2 = *(sub_10010FC20(&qword_1011A8660) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for Playlist() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10002F3F4;

  return sub_1008E94A8(v0 + v3, v0 + v6);
}

int *static Actions.EditPlaylist.action(context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1008EA974(a1, a2);
  result = sub_10010FC20(&qword_1011A8AC0);
  *(a2 + result[9]) = 12;
  *(a2 + result[11]) = 0x4014000000000000;
  v4 = (a2 + result[10]);
  *v4 = sub_1008EA424;
  v4[1] = 0;
  v5 = (a2 + result[12]);
  *v5 = &unk_100EEE7D0;
  v5[1] = 0;
  v6 = (a2 + result[13]);
  *v6 = &unk_100EEE7D8;
  v6[1] = 0;
  return result;
}

unint64_t sub_1008EA424()
{
  v0 = type metadata accessor for Playlist.EditableComponents();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10010FC20(&unk_1011AA950);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  Playlist.editableComponents.getter();
  if ((*(v1 + 48))(v6, 1, v0) == 1)
  {
    sub_1000095E8(v6, &unk_1011AA950);
  }

  else
  {
    sub_1008EAD98(&qword_1011A8B80);
    dispatch thunk of SetAlgebra.init()();
    sub_1008EAD98(&qword_1011A8B88);
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

uint64_t sub_1008EA664()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.EditPlaylist.Context() + 20));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_1008EA760;

  return v5();
}

uint64_t sub_1008EA760()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1008EA878()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.EditPlaylist.Context() + 24));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_1008DB254;

  return v5();
}

uint64_t sub_1008EA974(uint64_t a1, uint64_t a2)
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
  __chkstk_darwin(v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v8 = qword_101219808;
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
  return sub_1008D04DC;
}

uint64_t (*sub_1008EAC44())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6C69636E6570;
  *(v0 + 24) = 0xE600000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x6C69636E6570;
  *(v1 + 24) = 0xE600000000000000;
  return sub_1008D0A40;
}

unint64_t sub_1008EAD14()
{
  result = type metadata accessor for Playlist();
  if (v1 <= 0x3F)
  {
    result = sub_10001F838();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1008EAD98(unint64_t *a1)
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
  *a6 = sub_1008EEC24;
  a6[1] = v16;
  a6[2] = &unk_100EEE830;
  a6[3] = v21;
  a6[4] = &unk_100EEE838;
  a6[5] = 0;
  return result;
}

uint64_t Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t (*a3)()@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t (**a7)()@<X8>)
{
  v12 = *(sub_10010FC20(&qword_1011A86D0) - 8);
  v13 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v14 = (*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  sub_1008EEF10(a1, v16 + v13);
  *(v16 + v14) = a2;
  v17 = (v16 + v15);
  *v17 = a5;
  v17[1] = a6;
  result = sub_10012B828(a4, v16 + ((v15 + 23) & 0xFFFFFFFFFFFFFFF8));
  *a7 = sub_1008EEEF4;
  a7[1] = a3;
  a7[2] = &unk_100EEDCA8;
  a7[3] = v16;
  a7[4] = &unk_100EEE858;
  a7[5] = 0;
  return result;
}

uint64_t Actions.RenameFolder.Context.init(folder:library:presentationSource:)@<X0>(uint64_t a1@<X0>, unint64_t (*a2)()@<X1>, uint64_t a3@<X2>, unint64_t (**a4)()@<X8>)
{
  v8 = type metadata accessor for Playlist.Folder();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  (*(v9 + 32))(v12 + v10, a1, v8);
  result = sub_10012B828(a3, v12 + v11);
  *a4 = sub_1008F1D5C;
  a4[1] = a2;
  a4[2] = &unk_100EEDCC8;
  a4[3] = v12;
  a4[4] = &unk_100EEE878;
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
  sub_10012B828(a3, v12 + v11);
  *a4 = sub_1008C8480;
  a4[1] = a2;
  a4[2] = &unk_100EEDCE8;
  a4[3] = v12;
  a4[4] = &unk_100EEE898;
  a4[5] = 0;
}

uint64_t sub_1008EB51C@<X0>(_OWORD *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
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
  *(v0 + 24) = 0x8000000100E46B20;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000011;
  *(v1 + 24) = 0x8000000100E46B20;
  return sub_1008D04DC;
}

uint64_t (*sub_1008EB678())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000011;
  *(v0 + 24) = 0x8000000100E46B20;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000011;
  *(v1 + 24) = 0x8000000100E46B20;
  return sub_1008D0A40;
}

uint64_t sub_1008EB718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[39] = a4;
  v5[40] = a5;
  v5[37] = a2;
  v5[38] = a3;
  v5[36] = a1;
  sub_10010FC20(&qword_1011A7F00);
  v5[41] = swift_task_alloc();
  v6 = *(sub_10010FC20(&qword_1011A86D0) - 8);
  v5[42] = v6;
  v5[43] = *(v6 + 64);
  v5[44] = swift_task_alloc();

  return _swift_task_switch(sub_1008EB828, 0, 0);
}

uint64_t sub_1008EB828()
{
  v2 = v0[43];
  v1 = v0[44];
  v3 = v0[42];
  v4 = v0[39];
  v5 = v0[40];
  v7 = v0[37];
  v6 = v0[38];
  v8 = v0[36];
  sub_1008F0C48((v0 + 26));
  sub_1008F15C0(v8, v1);
  sub_10012B7A8(v5, (v0 + 2));
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = (v2 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  v0[45] = v12;
  sub_1008EEF10(v1, v12 + v9);
  *(v12 + v10) = v7;
  v13 = (v12 + v11);
  *v13 = v6;
  v13[1] = v4;
  sub_10012B828((v0 + 2), v12 + ((v11 + 23) & 0xFFFFFFFFFFFFFFF8));
  v0[46] = type metadata accessor for MainActor();

  sub_100112878(v6);
  v0[47] = static MainActor.shared.getter();
  v15 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1008EB990, v15, v14);
}

uint64_t sub_1008EB990()
{
  v1 = *(v0 + 360);

  v2 = objc_allocWithZone(type metadata accessor for TextFieldAlert());
  *(v0 + 384) = sub_10093FD3C(v0 + 208, sub_1008F17D0, v1);

  return _swift_task_switch(sub_1008EBA34, 0, 0);
}

uint64_t sub_1008EBA34()
{
  v1 = v0[48];
  v3 = v0[40];
  v2 = v0[41];
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  sub_10012B7A8(v3, (v0 + 14));
  v5 = v1;
  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  sub_10012B828((v0 + 14), (v7 + 4));
  v7[16] = v5;
  sub_100969440(0, 0, v2, &unk_100EEEA10, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1008EBB88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a1;
  v29 = a6;
  v12 = sub_10010FC20(&qword_1011A86D0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v16 = &v28 - v15;
  v17 = sub_10010FC20(&qword_1011A7F00);
  __chkstk_darwin(v17 - 8);
  v19 = &v28 - v18;
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  sub_1008F15C0(a3, v16);
  sub_10012B7A8(a7, v30);
  v21 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v22 = (v14 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v28;
  v24[5] = a2;
  sub_1008EEF10(v16, v24 + v21);
  *(v24 + v22) = a4;
  v25 = (v24 + v23);
  v26 = v29;
  *v25 = a5;
  v25[1] = v26;
  sub_10012B828(v30, v24 + ((v23 + 23) & 0xFFFFFFFFFFFFFFF8));

  sub_100112878(a5);
  sub_100969440(0, 0, v19, &unk_100EEEA20, v24);
}

uint64_t sub_1008EBDC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[21] = v14;
  v8[22] = v15;
  v8[19] = a7;
  v8[20] = a8;
  v8[17] = a5;
  v8[18] = a6;
  v8[16] = a4;
  sub_10010FC20(&qword_1011A7F00);
  v8[23] = swift_task_alloc();
  type metadata accessor for Actions.CreateFolder.Context.FlowResult();
  v8[24] = swift_task_alloc();
  v9 = sub_10010FC20(&qword_1011A8CB0);
  v8[25] = v9;
  v8[26] = *(v9 - 8);
  v8[27] = swift_task_alloc();
  v10 = type metadata accessor for Playlist.Folder();
  v8[28] = v10;
  v8[29] = *(v10 - 8);
  v8[30] = swift_task_alloc();
  v11 = sub_10010FC20(&qword_1011A8CB8);
  v8[31] = v11;
  v8[32] = *(v11 - 8);
  v8[33] = swift_task_alloc();

  return _swift_task_switch(sub_1008EBFC8, 0, 0);
}

uint64_t sub_1008EBFC8()
{
  v0[14] = v0[19];
  sub_10010FC20(&qword_1011A8CC8);
  sub_1008F1B5C();
  static MusicLibraryPlaylistRequest.creatingFolder<A>(name:description:userImage:parent:children:)();
  v1 = swift_task_alloc();
  v0[34] = v1;
  *v1 = v0;
  v1[1] = sub_1008EC0D8;
  v2 = v0[27];

  return MusicLibraryPlaylistRequest.response<>()(v2);
}

uint64_t sub_1008EC0D8()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_1008EC5FC;
  }

  else
  {
    v2 = sub_1008EC1EC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1008EC1EC()
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
    v9[1] = sub_1008EC404;
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

uint64_t sub_1008EC404()
{
  v1 = *(*v0 + 192);

  sub_1008F1CEC(v1, type metadata accessor for Actions.CreateFolder.Context.FlowResult);

  return _swift_task_switch(sub_1008EC530, 0, 0);
}

uint64_t sub_1008EC530()
{
  (*(v0[29] + 8))(v0[30], v0[28]);
  (*(v0[32] + 8))(v0[33], v0[31]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1008EC5FC()
{
  v18 = v0;
  if (qword_1011A6748 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, static Logger.actions);
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
    sub_10010FC20(&qword_1011AB640);
    v7 = String.init<A>(describing:)();
    v9 = sub_100010678(v7, v8, &v17);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to create folder with error=%{public}s", v5, 0xCu);
    sub_10000959C(v6);
  }

  v10 = v0[22];
  v11 = v0[23];
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_10012B7A8(v10, (v0 + 2));
  type metadata accessor for MainActor();
  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = &protocol witness table for MainActor;
  sub_10012B828((v0 + 2), v14 + 32);
  sub_100969440(0, 0, v11, &unk_100EEEA38, v14);

  (*(v0[32] + 8))(v0[33], v0[31]);

  v15 = v0[1];

  return v15();
}

uint64_t sub_1008EC8CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v4[8] = type metadata accessor for Notice.Variant(0);
  v4[9] = swift_task_alloc();
  type metadata accessor for Notice(0);
  v4[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[11] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1008EC9C0, v6, v5);
}

uint64_t sub_1008EC9C0()
{
  v1 = v0[10];
  v2 = v0[9];

  *v2 = 0xD000000000000022;
  v2[1] = 0x8000000100E5B290;
  swift_storeEnumTagMultiPayload();
  static Notice.variant(_:)(v2, v1);
  sub_1008F1CEC(v2, type metadata accessor for Notice.Variant);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_100A918E4((v0 + 2));

    v5 = v0[5];
    v6 = v0[10];
    if (v5)
    {
      v7 = v0[6];
      sub_10000954C(v0 + 2, v0[5]);
      (*(v7 + 8))(v6, 1, v5, v7);
      sub_1008F1CEC(v6, type metadata accessor for Notice);
      sub_10000959C((v0 + 2));
    }

    else
    {
      sub_1008F1CEC(v0[10], type metadata accessor for Notice);
      sub_1008F0BE0((v0 + 2));
    }
  }

  else
  {
    sub_1008F1CEC(v0[10], type metadata accessor for Notice);
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_1008ECB60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  type metadata accessor for MainActor();
  v5[16] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1008ECBF8, v7, v6);
}

uint64_t sub_1008ECBF8()
{
  v1 = v0[14];

  v2 = *(v1 + 80);
  if (v2)
  {
    v3 = qword_1011A6AC8;

    if (v3 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000060E4(v4, qword_1011AE4E0);
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
    v0[6] = sub_100A8F4C0;
    v0[7] = 0;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_100A90460;
    v0[5] = &unk_1010CDA10;
    v11 = _Block_copy(v0 + 2);
    v12 = [v10 initWithTimeout:v11 interruptionHandler:10.0];
    _Block_release(v11);

    sub_10012B7A8(v8, (v0 + 2));
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    sub_10012B828((v0 + 2), v13 + 24);
    *(v13 + 120) = v9;
    *(v13 + 128) = 257;
    *(v13 + 136) = 0;
    *(v13 + 144) = 0;
    v14 = v12;
    v2(v8, v9, sub_1008D9CA4, v13);
    sub_100020438(v2);
  }

  else
  {
    sub_100A8D9A0(v0[15], 1, 1, 0, 0);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_1008ECE90(uint64_t a1, uint64_t a2)
{
  v5 = (*(a2 + 16) + **(a2 + 16));
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_100008F30;

  return v5();
}

uint64_t (*Actions.RenameFolder.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6C69636E6570;
  *(v0 + 24) = 0xE600000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x6C69636E6570;
  *(v1 + 24) = 0xE600000000000000;
  return sub_1008D0A40;
}

uint64_t (*sub_1008ED07C())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6C69636E6570;
  *(v0 + 24) = 0xE600000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x6C69636E6570;
  *(v1 + 24) = 0xE600000000000000;
  return sub_1008D0A40;
}

unint64_t sub_1008ED114()
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

uint64_t sub_1008ED18C(uint64_t a1, uint64_t a2)
{
  v2[24] = a1;
  v2[25] = a2;
  sub_10010FC20(&qword_1011A7F00);
  v2[26] = swift_task_alloc();
  v3 = type metadata accessor for Playlist.Folder();
  v2[27] = v3;
  v4 = *(v3 - 8);
  v2[28] = v4;
  v2[29] = *(v4 + 64);
  v2[30] = swift_task_alloc();

  return _swift_task_switch(sub_1008ED28C, 0, 0);
}

uint64_t sub_1008ED28C()
{
  v1 = v0[30];
  v2 = v0[27];
  v3 = v0[28];
  v4 = v0[24];
  v5 = Playlist.Folder.name.getter();
  sub_1008F0FDC(v5, v6, v0 + 14);

  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v0[31] = v8;
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[32] = type metadata accessor for MainActor();
  v0[33] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1008ED3B8, v10, v9);
}

uint64_t sub_1008ED3B8()
{
  v1 = *(v0 + 248);

  v2 = objc_allocWithZone(type metadata accessor for TextFieldAlert());
  *(v0 + 272) = sub_10093FD3C(v0 + 112, sub_1008F12F8, v1);

  return _swift_task_switch(sub_1008ED45C, 0, 0);
}

uint64_t sub_1008ED45C()
{
  v1 = v0[34];
  v3 = v0[25];
  v2 = v0[26];
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  sub_10012B7A8(v3, (v0 + 2));
  v5 = v1;
  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  sub_10012B828((v0 + 2), (v7 + 4));
  v7[16] = v5;
  sub_100969440(0, 0, v2, &unk_100EEE9E0, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1008ED5B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Playlist.Folder();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = sub_10010FC20(&qword_1011A7F00);
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

  sub_100969440(0, 0, v11, &unk_100EEE9F0, v14);
}

uint64_t sub_1008ED7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v7 = type metadata accessor for Playlist.Folder();
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();
  v8 = sub_10010FC20(&qword_1011A8CB0);
  v6[9] = v8;
  v6[10] = *(v8 - 8);
  v6[11] = swift_task_alloc();
  v9 = sub_10010FC20(&qword_1011A8CB8);
  v6[12] = v9;
  v6[13] = *(v9 - 8);
  v6[14] = swift_task_alloc();

  return _swift_task_switch(sub_1008ED940, 0, 0);
}

uint64_t sub_1008ED940()
{
  static MusicLibraryPlaylistRequest.editing<>(_:name:description:userImage:)();
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_1008ED9F8;
  v2 = *(v0 + 88);

  return MusicLibraryPlaylistRequest.response<>()(v2);
}

uint64_t sub_1008ED9F8()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_1008EDBB4;
  }

  else
  {
    (*(v2[10] + 8))(v2[11], v2[9]);
    v3 = sub_1008EDB24;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1008EDB24()
{
  (*(v0[13] + 8))(v0[14], v0[12]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1008EDBB4()
{
  v29 = v0;
  if (qword_1011A6748 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = v0[3];
  v5 = type metadata accessor for Logger();
  sub_1000060E4(v5, static Logger.actions);
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
    sub_1008F1568();
    v26 = v11;
    v27 = v9;
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v13 + 8))(v12, v14);
    v19 = sub_100010678(v16, v18, &v28);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2082;
    v0[2] = v25;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640);
    v20 = String.init<A>(describing:)();
    v22 = sub_100010678(v20, v21, &v28);

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

uint64_t sub_1008EDE98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  type metadata accessor for MainActor();
  v5[16] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1008EDF30, v7, v6);
}

uint64_t sub_1008EDF30()
{
  v1 = v0[14];

  v2 = *(v1 + 80);
  if (v2)
  {
    v3 = qword_1011A6AC8;

    if (v3 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000060E4(v4, qword_1011AE4E0);
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
    v0[6] = sub_100A8F4C0;
    v0[7] = 0;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_100A90460;
    v0[5] = &unk_1010CD948;
    v11 = _Block_copy(v0 + 2);
    v12 = [v10 initWithTimeout:v11 interruptionHandler:10.0];
    _Block_release(v11);

    sub_10012B7A8(v8, (v0 + 2));
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    sub_10012B828((v0 + 2), v13 + 24);
    *(v13 + 120) = v9;
    *(v13 + 128) = 257;
    *(v13 + 136) = 0;
    *(v13 + 144) = 0;
    v14 = v12;
    v2(v8, v9, sub_1008D9CA4, v13);
    sub_100020438(v2);
  }

  else
  {
    sub_100A8D9A0(v0[15], 1, 1, 0, 0);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_1008EE230()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v8 = qword_101219808;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t (*Actions.MoveToFolder.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x7265646C6F66;
  *(v0 + 24) = 0xE600000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x7265646C6F66;
  *(v1 + 24) = 0xE600000000000000;
  return sub_1008D0A40;
}

uint64_t sub_1008EE4CC()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v8 = qword_101219808;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t (*sub_1008EE6AC())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x7265646C6F66;
  *(v0 + 24) = 0xE600000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x7265646C6F66;
  *(v1 + 24) = 0xE600000000000000;
  return sub_1008D0A40;
}

unint64_t sub_1008EE744(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for MusicLibrary.AddAction();
  v23 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10010FC20(&qword_1011A87F8);
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

unint64_t sub_1008EEC24()
{
  v1 = *(type metadata accessor for Playlist.Folder.Item() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1008EE744(v2, v3);
}

uint64_t sub_1008EEC88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = (*(a4 + 16) + **(a4 + 16));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1000651A8;

  return v10(a2, a3, a4);
}

uint64_t sub_1008EEDB8()
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
  v8[1] = sub_100008F30;

  return sub_1008EEC88(v0 + v4, v0 + v7, v2, v3);
}

uint64_t sub_1008EEF10(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011A86D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1008EEFC4@<X0>(uint64_t a1@<X0>, char a2@<W3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
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
  return sub_1008D0A40;
}

uint64_t (*sub_1008EF0E8())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6873617274;
  *(v0 + 24) = 0xE500000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x6873617274;
  *(v1 + 24) = 0xE500000000000000;
  return sub_1008D0A40;
}

unint64_t sub_1008EF180()
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

uint64_t sub_1008EF21C(uint64_t a1, uint64_t a2, uint64_t a3)
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

  return _swift_task_switch(sub_1008EF404, 0, 0);
}

uint64_t sub_1008EF404()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 504);
  v3 = *(v0 + 480);
  v4 = *(v0 + 488);
  String.LocalizationValue.init(stringLiteral:)();
  v49 = *(v4 + 16);
  v49(v1, v2, v3);
  if (qword_1011A6740 != -1)
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
  v9 = qword_101219808;
  static Locale.current.getter();
  v43 = v9;
  v10 = String.init(localized:table:bundle:locale:comment:)();
  v47 = v11;
  v48 = v10;
  *(v0 + 512) = v11;
  v38 = *(v6 + 8);
  v38(v50, v5);
  (*(v7 + 16))(v33, v31, v32);
  sub_10012B7A8(v39, v0 + 16);
  v12 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v13 = (v45 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  *(v0 + 520) = v14;
  *(v14 + 16) = v41;
  v15 = v14 + v12;
  v16 = v14;
  v46 = v14;
  (*(v7 + 32))(v15, v33, v32);
  sub_10012B828(v0 + 16, v16 + v13);

  UUID.init()();
  v42 = UUID.uuidString.getter();
  v40 = v17;
  *(v0 + 528) = v17;
  (*(v35 + 8))(v8, v36);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18._object = 0x8000000100E5B1C0;
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
  sub_10010FC20(&qword_1011A7C00);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_100EBDC20;
  *(v26 + 32) = v42;
  *(v26 + 40) = v40;
  *(v26 + 48) = v48;
  *(v26 + 56) = v47;
  *(v26 + 64) = 1;
  *(v26 + 72) = &unk_100EEE9C0;
  *(v26 + 80) = v46;

  sub_10097FEA0(v0 + 280);
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

  return _swift_task_switch(sub_1008EF900, v29, v28);
}

uint64_t sub_1008EF900()
{
  v1 = *(v0 + 400);

  v2 = sub_10093F41C(v0 + 208, 0, 1);
  v3 = v2;
  v4 = *(v0 + 240);
  v5 = *(v1 + 80);
  if (v5)
  {
    v6 = qword_1011A6AC8;

    if (v6 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000060E4(v7, qword_1011AE4E0);
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
    *(v0 + 368) = sub_100A8F4C0;
    *(v0 + 376) = 0;
    *(v0 + 336) = _NSConcreteStackBlock;
    *(v0 + 344) = 1107296256;
    *(v0 + 352) = sub_100A90460;
    *(v0 + 360) = &unk_1010CD880;
    v13 = _Block_copy((v0 + 336));
    v14 = [v12 initWithTimeout:v13 interruptionHandler:10.0];
    _Block_release(v13);

    sub_10012B7A8(v11, v0 + 112);
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    sub_10012B828(v0 + 112, v15 + 24);
    *(v15 + 120) = v3;
    *(v15 + 128) = v4;
    *(v15 + 129) = 1;
    *(v15 + 136) = 0;
    *(v15 + 144) = 0;
    v16 = v14;
    v3 = v3;
    v5(v11, v3, sub_1008D9BB8, v15);
    sub_100020438(v5);
  }

  else
  {
    sub_100A8D9A0(v2, *(v0 + 240), 1, 0, 0);
  }

  return _swift_task_switch(sub_1008EFBC8, 0, 0);
}

uint64_t sub_1008EFBC8()
{
  sub_100344A84(v0 + 208);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1008EFCB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a5;
  sub_10010FC20(&qword_1011A7F00);
  v5[16] = swift_task_alloc();
  v7 = swift_task_alloc();
  v5[17] = v7;
  *v7 = v5;
  v7[1] = sub_1008EFD8C;

  return MusicLibrary.remove(_:)(a4);
}

uint64_t sub_1008EFD8C()
{
  v2 = *v1;
  *(v2 + 144) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1008EFEC8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1008EFEC8()
{
  v18 = v0;
  if (qword_1011A6748 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, static Logger.actions);
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
    sub_10010FC20(&qword_1011AB640);
    v7 = String.init<A>(describing:)();
    v9 = sub_100010678(v7, v8, &v17);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to delete folder with error=%{public}s", v5, 0xCu);
    sub_10000959C(v6);
  }

  v10 = v0[15];
  v11 = v0[16];
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_10012B7A8(v10, (v0 + 2));
  type metadata accessor for MainActor();
  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = &protocol witness table for MainActor;
  sub_10012B828((v0 + 2), v14 + 32);
  sub_100969440(0, 0, v11, &unk_100EEE9D0, v14);

  v15 = v0[1];

  return v15();
}

uint64_t sub_1008F015C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v4[8] = type metadata accessor for Notice.Variant(0);
  v4[9] = swift_task_alloc();
  type metadata accessor for Notice(0);
  v4[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[11] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1008F0250, v6, v5);
}

uint64_t sub_1008F0250()
{
  v1 = v0[10];
  v2 = v0[9];

  *v2 = 0xD000000000000022;
  v2[1] = 0x8000000100E5B240;
  swift_storeEnumTagMultiPayload();
  static Notice.variant(_:)(v2, v1);
  sub_1008F1CEC(v2, type metadata accessor for Notice.Variant);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_100A918E4((v0 + 2));

    v5 = v0[5];
    v6 = v0[10];
    if (v5)
    {
      v7 = v0[6];
      sub_10000954C(v0 + 2, v0[5]);
      (*(v7 + 8))(v6, 1, v5, v7);
      sub_1008F1CEC(v6, type metadata accessor for Notice);
      sub_10000959C((v0 + 2));
    }

    else
    {
      sub_1008F1CEC(v0[10], type metadata accessor for Notice);
      sub_1008F0BE0((v0 + 2));
    }
  }

  else
  {
    sub_1008F1CEC(v0[10], type metadata accessor for Notice);
  }

  v8 = v0[1];

  return v8();
}

uint64_t _s9MusicCore7ActionsO12CreateFolderO7ContextV13menuItemTitleSSvg_0()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v8 = qword_101219808;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t _s9MusicCore7ActionsO12DeleteFolderO7ContextV13menuItemTitleSSvg_0()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v8 = qword_101219808;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t type metadata accessor for Actions.CreateFolder.Context.FlowResult()
{
  result = qword_1011A8C80;
  if (!qword_1011A8C80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1008F0844()
{
  v0 = type metadata accessor for Playlist.Folder();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_1008F08FC()
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
    sub_10012B804(*(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), v6);
  }

  if (*(v5 + 64))
  {
  }

  if (*(v5 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1008F0A14(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for Playlist.Folder() - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + 16);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_100008F30;

  return sub_1008EFCB0(a1, a2, v9, v2 + v7, v2 + v8);
}

uint64_t sub_1008F0B30(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100008F30;

  return sub_1008F015C(a1, v4, v5, v1 + 32);
}

uint64_t sub_1008F0BE0(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011A86F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1008F0C48@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v27 - v8;
  String.LocalizationValue.init(stringLiteral:)();
  v10 = *(v4 + 16);
  v10(v6, v9, v3);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v11 = qword_101219808;
  static Locale.current.getter();
  v12 = v11;
  v13 = String.init(localized:table:bundle:locale:comment:)();
  v32 = v14;
  v33 = v13;
  v15 = *(v4 + 8);
  v15(v9, v3);
  String.LocalizationValue.init(stringLiteral:)();
  v10(v6, v9, v3);
  static Locale.current.getter();
  v16 = String.init(localized:table:bundle:locale:comment:)();
  v30 = v17;
  v31 = v16;
  v15(v9, v3);
  String.LocalizationValue.init(stringLiteral:)();
  v10(v6, v9, v3);
  static Locale.current.getter();
  v18 = String.init(localized:table:bundle:locale:comment:)();
  v28 = v19;
  v29 = v18;
  v15(v9, v3);
  String.LocalizationValue.init(stringLiteral:)();
  v10(v6, v9, v3);
  static Locale.current.getter();
  v20 = String.init(localized:table:bundle:locale:comment:)();
  v22 = v21;
  v15(v9, v3);
  result = 0.0;
  *a1 = xmmword_100EBCEE0;
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

uint64_t sub_1008F0FDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v33 = a1;
  v34 = a2;
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v28 - v10;
  String.LocalizationValue.init(stringLiteral:)();
  v12 = *(v6 + 16);
  v12(v8, v11, v5);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v13 = qword_101219808;
  static Locale.current.getter();
  v14 = v13;
  v15 = String.init(localized:table:bundle:locale:comment:)();
  v31 = v16;
  v32 = v15;
  v17 = *(v6 + 8);
  v17(v11, v5);
  String.LocalizationValue.init(stringLiteral:)();
  v12(v8, v11, v5);
  static Locale.current.getter();
  v18 = String.init(localized:table:bundle:locale:comment:)();
  v29 = v19;
  v30 = v18;
  v17(v11, v5);
  String.LocalizationValue.init(stringLiteral:)();
  v12(v8, v11, v5);
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

uint64_t sub_1008F12F8(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for Playlist.Folder() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1008ED5B0(a1, a2, v6);
}

uint64_t sub_1008F1378(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[16];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_1008EDE98(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_1008F1438(uint64_t a1)
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
  v11[1] = sub_100008F30;

  return sub_1008ED7AC(a1, v6, v7, v1 + v5, v9, v10);
}

unint64_t sub_1008F1568()
{
  result = qword_1011A8CC0;
  if (!qword_1011A8CC0)
  {
    type metadata accessor for Playlist.Folder();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A8CC0);
  }

  return result;
}

uint64_t sub_1008F15C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011A86D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1008F1630()
{
  v1 = *(sub_10010FC20(&qword_1011A86D0) - 8);
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
    sub_10012B804(*(v7 + 8), *(v7 + 16), *(v7 + 24), *(v7 + 32), *(v7 + 40), v8);
  }

  if (*(v7 + 64))
  {
  }

  if (*(v7 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1008F17D0(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_10010FC20(&qword_1011A86D0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + v7);
  v10 = *(v2 + v8);
  v11 = *(v2 + v8 + 8);

  return sub_1008EBB88(a1, a2, v2 + v6, v9, v10, v11, v2 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t sub_1008F18A4()
{
  swift_unknownObjectRelease();
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 80);
  if (v1 != 255)
  {
    sub_10012B804(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), v1);
  }

  if (*(v0 + 96))
  {
  }

  if (*(v0 + 112))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1008F1928(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[16];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_1008ECB60(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_1008F19E8(uint64_t a1)
{
  v3 = *(sub_10010FC20(&qword_1011A86D0) - 8);
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
  v11[1] = sub_10002F3F4;

  return sub_1008EBDC0(a1, v13, v6, v7, v8, v1 + v4, v9, v10);
}

unint64_t sub_1008F1B5C()
{
  result = qword_1011A8CD0;
  if (!qword_1011A8CD0)
  {
    sub_1001109D0(&qword_1011A8CC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A8CD0);
  }

  return result;
}

uint64_t sub_1008F1BC0()
{
  swift_unknownObjectRelease();
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 80);
  if (v1 != 255)
  {
    sub_10012B804(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), v1);
  }

  if (*(v0 + 96))
  {
  }

  if (*(v0 + 112))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1008F1C3C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100008F30;

  return sub_1008EC8CC(a1, v4, v5, v1 + 32);
}

uint64_t sub_1008F1CEC(uint64_t a1, uint64_t (*a2)(void))
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
  sub_10012B828(v53, v32 + ((v31 + 15) & 0xFFFFFFFFFFFFFFF8));
  v35 = v49;
  v34(v49, v57, a6);
  v36 = v34;
  v37 = *(sub_10010FC20(&qword_1011A8660) - 8);
  v38 = (*(v37 + 80) + 40) & ~*(v37 + 80);
  v39 = (*(v37 + 64) + v21 + v38) & ~v21;
  v40 = swift_allocObject();
  *(v40 + 2) = a6;
  *(v40 + 3) = a7;
  *(v40 + 4) = v48;
  sub_10003D17C(v54, v40 + v38, &qword_1011A8660);
  v36(v40 + v39, v35, a6);

  v42 = v55;
  v43 = v52;
  *v55 = sub_1008F29C4;
  v42[1] = v43;
  v42[2] = &unk_100EEEA48;
  v42[3] = v32;
  v42[4] = &unk_100EEEA58;
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
  *(a2 + 56) = sub_1000D9088;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &unk_100EEEA60;
  *(a2 + 88) = 0;
  *(a2 + 96) = &unk_100EEEA68;
  *(a2 + 104) = 0;
}

uint64_t sub_1008F21A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  v12 = sub_10010FC20(&qword_1011A8A58);
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
    v21 = sub_1008F5BB4(v7);
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

uint64_t sub_1008F2520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_10002F3F4;

  return MusicLibrary.removeDownload<A>(_:)(a1, a3, a4);
}

uint64_t sub_1008F25D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 40);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = v2;
  *(a2 + 48) = 48;
  *(a2 + 56) = sub_1000D9088;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &unk_100EEEA60;
  *(a2 + 88) = 0;
  *(a2 + 96) = &unk_100EEEA68;
  *(a2 + 104) = 0;
}

uint64_t Actions.RemoveDownload.Context.menuItemTitle.getter()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v8 = qword_101219808;
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
  return sub_1008D04DC;
}

uint64_t (*sub_1008F2920())()
{
  v0 = swift_allocObject();
  strcpy((v0 + 16), "xmark.circle");
  *(v0 + 29) = 0;
  *(v0 + 30) = -5120;
  v1 = swift_allocObject();
  strcpy((v1 + 16), "xmark.circle");
  *(v1 + 29) = 0;
  *(v1 + 30) = -5120;
  return sub_1008D0A40;
}

uint64_t sub_1008F2A30(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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

  return _swift_task_switch(sub_1008F2FF8, 0, 0);
}

uint64_t sub_1008F2FF8()
{
  v145 = v0;
  if (*(v0 + 744) == 1)
  {
    v1 = *(*(v0 + 664) + 16);
    v1(*(v0 + 696), *(v0 + 288), *(v0 + 312));
    v2 = &off_1011A6000;
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
      if (qword_1011A6740 != -1)
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
      qword_101219808;
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
      if (qword_1011A6740 != -1)
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
      if (qword_1011A6740 != -1)
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
      if (qword_1011A6740 != -1)
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
              if (qword_1011A6740 != -1)
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
              if (qword_1011A6740 != -1)
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
              if (qword_1011A6740 != -1)
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
                if (qword_1011A6748 != -1)
                {
                  swift_once();
                }

                v93 = *(v0 + 688);
                v94 = *(v0 + 312);
                v95 = *(v0 + 288);
                v96 = type metadata accessor for Logger();
                sub_1000060E4(v96, static Logger.actions);
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
                  v2 = &off_1011A6000;
                  v133 = *(v102 + 8);
                  v133(v100, v108);
                  v109 = sub_100010678(v105, v107, v144);

                  *(v104 + 4) = v109;
                  _os_log_impl(&_mh_execute_header, logb, v98, "RemoveDownload: unhandled item type=%s", v104, 0xCu);
                  sub_10000959C(v139);
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
                if (v2[232] != -1)
                {
                  swift_once();
                }

                v116 = *(v0 + 696);
                v117 = *(v0 + 632);
                v118 = *(v0 + 616);
                v119 = *(v0 + 608);
                v120 = *(v0 + 312);
                qword_101219808;
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
              if (qword_1011A6740 != -1)
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
        if (qword_1011A6740 != -1)
        {
          swift_once();
        }

        v72 = *(v0 + 632);
        v73 = *(v0 + 616);
        v74 = *(v0 + 608);
        qword_101219808;
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
      if (qword_1011A6740 != -1)
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
    qword_101219808;
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
    if (qword_1011A6740 != -1)
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
    sub_10010FC20(&qword_1011A7C00);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_100EBDC20;
    *(v62 + 32) = v59;
    *(v62 + 40) = v61;
    *(v62 + 48) = v138;
    *(v62 + 56) = v56;
    *(v62 + 64) = 2;
    *(v62 + 72) = &unk_100EEEAF0;
    *(v62 + 80) = v58;

    sub_10097FEA0(v0 + 184);
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

    return _swift_task_switch(sub_1008F410C, v64, v63);
  }

  v15 = swift_task_alloc();
  *(v0 + 736) = v15;
  *v15 = v0;
  v15[1] = sub_1008F4570;
  v16 = *(v0 + 312);
  v17 = *(v0 + 320);
  v19 = *(v0 + 288);
  v18 = *(v0 + 296);

  return sub_1008F2520(v19, v18, v16, v17);
}

uint64_t sub_1008F410C()
{
  v1 = *(v0 + 304);

  v2 = sub_10093F41C(v0 + 112, 0, 1);
  v3 = v2;
  v4 = *(v0 + 144);
  v5 = *(v1 + 80);
  if (v5)
  {
    v6 = qword_1011A6AC8;

    if (v6 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000060E4(v7, qword_1011AE4E0);
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
    *(v0 + 272) = sub_100A8F4C0;
    *(v0 + 280) = 0;
    *(v0 + 240) = _NSConcreteStackBlock;
    *(v0 + 248) = 1107296256;
    *(v0 + 256) = sub_100A90460;
    *(v0 + 264) = &unk_1010CDCD8;
    v13 = _Block_copy((v0 + 240));
    v14 = [v12 initWithTimeout:v13 interruptionHandler:10.0];
    _Block_release(v13);

    sub_10012B7A8(v11, v0 + 16);
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    sub_10012B828(v0 + 16, v15 + 24);
    *(v15 + 120) = v3;
    *(v15 + 128) = v4;
    *(v15 + 129) = 1;
    *(v15 + 136) = 0;
    *(v15 + 144) = 0;
    v16 = v14;
    v17 = v3;
    v5(v11, v17, sub_1008D0984, v15);
    sub_100020438(v5);

    v18 = sub_1008F43E4;
  }

  else
  {
    sub_100A8D9A0(v2, *(v0 + 144), 1, 0, 0);

    v18 = sub_1008F5F94;
  }

  return _swift_task_switch(v18, 0, 0);
}

uint64_t sub_1008F43E4()
{
  sub_100344A84(v0 + 112);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1008F4570()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1008F48A4()
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
  v10[1] = sub_10002F3F4;

  return sub_1008F2A30(v8, v0 + v5, v9, v0 + v7, v2, v3, v4);
}

uint64_t sub_1008F49D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_task_alloc();
  *(v6 + 24) = v11;
  *v11 = v6;
  v11[1] = sub_1008F4A88;

  return sub_1008F2520(a3, a4, a5, a6);
}

uint64_t sub_1008F4A88()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1008F4BBC, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1008F4BBC()
{
  v14 = v0;
  if (qword_1011A6748 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, static Logger.actions);
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
    sub_10010FC20(&qword_1011AB640);
    v8 = String.init<A>(describing:)();
    v10 = sub_100010678(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to remove Download with error=%{public}s", v6, 0xCu);
    sub_10000959C(v7);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1008F4D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  sub_10010FC20(&qword_1011A7F08);
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
  sub_10010FC20(&qword_1011A77F0);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  sub_10010FC20(&qword_1011A8660);
  v4[27] = swift_task_alloc();
  v5 = type metadata accessor for Actions.MetricsReportingContext();
  v4[28] = v5;
  v4[29] = *(v5 - 8);
  v4[30] = swift_task_alloc();

  return _swift_task_switch(sub_1008F4FA0, 0, 0);
}

uint64_t sub_1008F4FA0()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  sub_1000089F8(*(v0 + 72), v3, &qword_1011A8660);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000095E8(*(v0 + 216), &qword_1011A8660);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 208);
    v7 = *(v0 + 88);
    sub_1008D08BC(*(v0 + 216), *(v0 + 240), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 248) = MusicItem.metricsTargetIdentifier.getter(v7);
    *(v0 + 256) = v8;
    v9 = type metadata accessor for URL();
    *(v0 + 264) = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    *(v0 + 272) = v11;
    *(v0 + 280) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v6, 1, 1, v9);
    sub_10010FC20(&qword_1011A8868);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBC6B0;
    *(inited + 32) = MusicItem.metricsContentType.getter(v7);
    *(inited + 40) = v13;
    *(inited + 48) = 0;
    *(v0 + 288) = sub_1008AC260(inited);
    *(v0 + 296) = v14;
    *(v0 + 304) = v15;
    *(v0 + 320) = v16;
    swift_setDeallocating();
    sub_1008DB7F0(inited + 32);
    type metadata accessor for MainActor();
    *(v0 + 312) = static MainActor.shared.getter();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1008F5290, v18, v17);
  }
}

uint64_t sub_1008F5290()
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

  sub_1000089F8(v3, v4, &qword_1011A77F0);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_1000089F8(v1 + v2[5], v7, &qword_1011A7F08);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 9477;
  sub_10003D17C(v4, v6 + v5[7], &qword_1011A77F0);
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
  sub_1000089F8(v7, v72, &qword_1011A7F08);
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

    sub_100633490(v75, v77);

    sub_1005EA59C(v19, v17, v18, v16, SBYTE1(v16));
    sub_1000095E8(v20, &qword_1011A7F08);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_100633490(v75, v77);

    sub_1005EA59C(v19, v17, v18, v16, SBYTE1(v16));

    sub_1008D9B58(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 160);
  v24 = *(v0 + 144);
  v25 = (*(v0 + 176) + *(*(v0 + 168) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_1000089F8(v23, v24, &qword_1011A7F08);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 144);
  if (v26 == 1)
  {
    sub_1000095E8(*(v0 + 144), &qword_1011A7F08);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_1008D9B58(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 160);
  v31 = *(v0 + 136);
  v32 = (*(v0 + 176) + *(*(v0 + 168) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_1000089F8(v30, v31, &qword_1011A7F08);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 272);
    v34 = *(v0 + 264);
    v35 = *(v0 + 192);
    sub_1000095E8(*(v0 + 136), &qword_1011A7F08);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 136);
    sub_1000089F8(v36 + v14[6], *(v0 + 192), &qword_1011A77F0);
    sub_1008D9B58(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 160);
  v38 = *(v0 + 128);
  sub_10003D17C(*(v0 + 192), *(v0 + 176) + *(*(v0 + 168) + 56), &qword_1011A77F0);
  sub_1000089F8(v37, v38, &qword_1011A7F08);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 128);
  if (v39 == 1)
  {
    sub_1000095E8(*(v0 + 128), &qword_1011A7F08);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_1008D9B58(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 160);
  v43 = *(v0 + 120);
  *(*(v0 + 176) + *(*(v0 + 168) + 60)) = v41;
  sub_1000089F8(v42, v43, &qword_1011A7F08);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 120);
  if (v44 == 1)
  {
    sub_1000095E8(v45, &qword_1011A7F08);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_1008D9B58(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 160);
  v48 = *(v0 + 112);
  *(*(v0 + 176) + *(*(v0 + 168) + 64)) = v46;
  sub_1000089F8(v47, v48, &qword_1011A7F08);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 112);
  if (v49 == 1)
  {
    sub_1000095E8(*(v0 + 112), &qword_1011A7F08);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_1008D9B58(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 160);
  v55 = *(v0 + 104);
  v56 = (*(v0 + 176) + *(*(v0 + 168) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_10003D17C(v54, v55, &qword_1011A7F08);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 104);
  if (v57 == 1)
  {
    sub_1000095E8(v58, &qword_1011A7F08);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_1008D9B58(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 176);
  v61 = *(v0 + 184);
  v62 = *(v0 + 168);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_1008D08BC(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_1011A6810 != -1)
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
  sub_100344B1C(v65, v64, v63, v70, SBYTE1(v70));
  sub_1008D9B58(v69, type metadata accessor for MetricsEvent.Click);
  sub_1000095E8(v68, &qword_1011A77F0);

  return _swift_task_switch(sub_1008E1600, 0, 0);
}

uint64_t sub_1008F5A44()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(sub_10010FC20(&qword_1011A8660) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100008F30;

  return sub_1008F4D8C(v0 + v5, v0 + v6, v2, v3);
}

uint64_t sub_1008F5BB4(uint64_t a1)
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

uint64_t sub_1008F5DD4()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 40) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1008F5E68(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = (*(*(v6 - 8) + 80) + 40) & ~*(*(v6 - 8) + 80);
  v9 = *(v2 + ((*(*(v6 - 8) + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_10002F3F4;

  return sub_1008F49D4(a1, a2, v2 + v8, v9, v6, v7);
}

uint64_t static Actions.RemoveFromPlaylist.action(context:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = a1[2];
  *(a2 + 48) = 47;
  *(a2 + 56) = sub_1000D9088;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &unk_100EEEB00;
  *(a2 + 88) = 0;
  *(a2 + 96) = &unk_100EEEB08;
  *(a2 + 104) = 0;
}

uint64_t sub_1008F6040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 40);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = v2;
  *(a2 + 48) = 47;
  *(a2 + 56) = sub_1000D9088;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &unk_100EEEB00;
  *(a2 + 88) = 0;
  *(a2 + 96) = &unk_100EEEB08;
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
  return sub_1008D04DC;
}

uint64_t (*sub_1008F61A4())()
{
  v0 = swift_allocObject();
  strcpy((v0 + 16), "minus.circle");
  *(v0 + 29) = 0;
  *(v0 + 30) = -5120;
  v1 = swift_allocObject();
  strcpy((v1 + 16), "minus.circle");
  *(v1 + 29) = 0;
  *(v1 + 30) = -5120;
  return sub_1008D0A40;
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
  v30 = *(sub_10010FC20(&qword_1011A8660) - 8);
  v31 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v32 = (*(v30 + 64) + v22 + v31) & ~v22;
  v33 = swift_allocObject();
  sub_10003D17C(v45, v33 + v31, &qword_1011A8660);
  result = (v27)(v33 + v32, v28, v29);
  v35 = v46;
  v36 = v42;
  *v46 = sub_1008F7C84;
  v35[1] = v36;
  v35[2] = &unk_100EEEB18;
  v35[3] = v26;
  v35[4] = &unk_100EEEB30;
  v35[5] = v33;
  return result;
}

unint64_t sub_1008F6618()
{
  v0 = type metadata accessor for Playlist.EditableComponents();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10010FC20(&unk_1011AA950);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  Playlist.editableComponents.getter();
  if ((*(v1 + 48))(v6, 1, v0) == 1)
  {
    sub_1000095E8(v6, &unk_1011AA950);
  }

  else
  {
    static Playlist.EditableComponents.tracklist.getter();
    sub_1008F7F74();
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

uint64_t sub_1008F67F0(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v8[1] = sub_1008F695C;

  return MusicLibrary.remove(_:from:)(a2, a3);
}

uint64_t sub_1008F695C()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1008F6AA8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1008F6AA8()
{
  v37 = v0;
  if (qword_1011A6748 != -1)
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
  sub_1000060E4(v8, static Logger.actions);
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
    v22 = sub_100010678(v19, v21, &v36);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2082;
    v23 = Playlist.description.getter();
    v25 = v24;
    (*(v16 + 8))(v14, v17);
    v26 = sub_100010678(v23, v25, &v36);

    *(v18 + 14) = v26;
    *(v18 + 22) = 2082;
    v0[2] = v32;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640);
    v27 = String.init<A>(describing:)();
    v29 = sub_100010678(v27, v28, &v36);

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

uint64_t sub_1008F6DE4(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  sub_10010FC20(&qword_1011A7F08);
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
  sub_10010FC20(&qword_1011A77F0);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  sub_10010FC20(&qword_1011A8660);
  v2[28] = swift_task_alloc();
  v3 = type metadata accessor for Actions.MetricsReportingContext();
  v2[29] = v3;
  v2[30] = *(v3 - 8);
  v2[31] = swift_task_alloc();

  return _swift_task_switch(sub_1008F6FF4, 0, 0);
}

uint64_t sub_1008F6FF4()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 224);
  sub_1000089F8(*(v0 + 96), v3, &qword_1011A8660);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000095E8(*(v0 + 224), &qword_1011A8660);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 216);
    sub_1008D08BC(*(v0 + 224), *(v0 + 248), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 256) = sub_1008AA55C();
    *(v0 + 264) = v7;
    v8 = type metadata accessor for URL();
    *(v0 + 272) = v8;
    v9 = *(v8 - 8);
    v10 = *(v9 + 56);
    *(v0 + 280) = v10;
    *(v0 + 288) = (v9 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v10(v6, 1, 1, v8);
    sub_10010FC20(&qword_1011A8868);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBDC20;
    *(inited + 32) = sub_1008A9B80();
    *(inited + 40) = v12;
    *(inited + 48) = 0;
    *(inited + 56) = xmmword_100EC78D0;
    *(inited + 72) = 2;
    *(v0 + 296) = sub_1008AC260(inited);
    *(v0 + 304) = v13;
    *(v0 + 312) = v14;
    *(v0 + 328) = v15;
    swift_setDeallocating();
    swift_arrayDestroy();
    type metadata accessor for MainActor();
    *(v0 + 320) = static MainActor.shared.getter();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1008F72EC, v17, v16);
  }
}

uint64_t sub_1008F72EC()
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

  sub_1000089F8(v3, v4, &qword_1011A77F0);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_1000089F8(v1 + v2[5], v7, &qword_1011A7F08);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 9989;
  sub_10003D17C(v4, v6 + v5[7], &qword_1011A77F0);
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
  sub_1000089F8(v7, v72, &qword_1011A7F08);
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

    sub_100633490(v75, v77);

    sub_1005EA59C(v19, v17, v18, v16, SBYTE1(v16));
    sub_1000095E8(v20, &qword_1011A7F08);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_100633490(v75, v77);

    sub_1005EA59C(v19, v17, v18, v16, SBYTE1(v16));

    sub_1008D9B58(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 168);
  v24 = *(v0 + 152);
  v25 = (*(v0 + 184) + *(*(v0 + 176) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_1000089F8(v23, v24, &qword_1011A7F08);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 152);
  if (v26 == 1)
  {
    sub_1000095E8(*(v0 + 152), &qword_1011A7F08);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_1008D9B58(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 168);
  v31 = *(v0 + 144);
  v32 = (*(v0 + 184) + *(*(v0 + 176) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_1000089F8(v30, v31, &qword_1011A7F08);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 280);
    v34 = *(v0 + 272);
    v35 = *(v0 + 200);
    sub_1000095E8(*(v0 + 144), &qword_1011A7F08);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 144);
    sub_1000089F8(v36 + v14[6], *(v0 + 200), &qword_1011A77F0);
    sub_1008D9B58(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 168);
  v38 = *(v0 + 136);
  sub_10003D17C(*(v0 + 200), *(v0 + 184) + *(*(v0 + 176) + 56), &qword_1011A77F0);
  sub_1000089F8(v37, v38, &qword_1011A7F08);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 136);
  if (v39 == 1)
  {
    sub_1000095E8(*(v0 + 136), &qword_1011A7F08);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_1008D9B58(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 168);
  v43 = *(v0 + 128);
  *(*(v0 + 184) + *(*(v0 + 176) + 60)) = v41;
  sub_1000089F8(v42, v43, &qword_1011A7F08);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 128);
  if (v44 == 1)
  {
    sub_1000095E8(v45, &qword_1011A7F08);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_1008D9B58(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 168);
  v48 = *(v0 + 120);
  *(*(v0 + 184) + *(*(v0 + 176) + 64)) = v46;
  sub_1000089F8(v47, v48, &qword_1011A7F08);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 120);
  if (v49 == 1)
  {
    sub_1000095E8(*(v0 + 120), &qword_1011A7F08);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_1008D9B58(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 168);
  v55 = *(v0 + 112);
  v56 = (*(v0 + 184) + *(*(v0 + 176) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_10003D17C(v54, v55, &qword_1011A7F08);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 112);
  if (v57 == 1)
  {
    sub_1000095E8(v58, &qword_1011A7F08);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_1008D9B58(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 184);
  v61 = *(v0 + 192);
  v62 = *(v0 + 176);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_1008D08BC(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_1011A6810 != -1)
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
  sub_100344B1C(v65, v64, v63, v70, SBYTE1(v70));
  sub_1008D9B58(v69, type metadata accessor for MetricsEvent.Click);
  sub_1000095E8(v68, &qword_1011A77F0);

  return _swift_task_switch(sub_1008D92E4, 0, 0);
}

uint64_t _s9MusicCore7ActionsO18RemoveFromPlaylistO7ContextV13menuItemTitleSSvg_0()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v8 = qword_101219808;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

unint64_t sub_1008F7C84()
{
  type metadata accessor for Playlist();

  return sub_1008F6618();
}

uint64_t sub_1008F7CE4()
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
  v8[1] = sub_10002F3F4;

  return sub_1008F67F0(v7, v0 + v3, v0 + v6);
}

uint64_t sub_1008F7E18()
{
  v2 = *(sub_10010FC20(&qword_1011A8660) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for Playlist.Entry() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100008F30;

  return sub_1008F6DE4(v0 + v3, v0 + v6);
}

unint64_t sub_1008F7F74()
{
  result = qword_1011A8B80;
  if (!qword_1011A8B80)
  {
    type metadata accessor for Playlist.EditableComponents();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A8B80);
  }

  return result;
}

uint64_t sub_1008F7FD0(unsigned __int8 a1, unsigned __int8 a2)
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
      v4 = "explicitContent";
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
      v6 = "explicitContent";
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

uint64_t sub_1008F8104(unsigned __int8 a1, unsigned __int8 a2)
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

uint64_t sub_1008F8258(unsigned __int8 a1, unsigned __int8 a2)
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

uint64_t sub_1008F84AC(unsigned __int8 a1, unsigned __int8 a2)
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

uint64_t sub_1008F8630(unsigned __int8 a1, unsigned __int8 a2)
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

uint64_t sub_1008F8758(unsigned __int8 a1, unsigned __int8 a2)
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

uint64_t sub_1008F8964(unsigned __int8 a1, unsigned __int8 a2)
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
    v3 = 0x8000000100E3BEB0;
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
    v10 = 0x8000000100E3BEB0;
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

uint64_t sub_1008F8AB0(unsigned __int8 a1, unsigned __int8 a2)
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

uint64_t sub_1008F8C00(unsigned __int8 a1, unsigned __int8 a2)
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

  return sub_1008F8E48(v3, a1);
}

uint64_t type metadata accessor for Actions.SortPlaylist.Context()
{
  result = qword_1011A8DD0;
  if (!qword_1011A8DD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1008F8E48(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011A8D18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Actions.SortPlaylist.Context.playlistVariant.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Actions.SortPlaylist.Context() + 24);

  return sub_1008F8EFC(a1, v3);
}

uint64_t sub_1008F8EFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011A8D18);
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
  result = sub_1008F8EFC(a3, &a6[v13]);
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
  __chkstk_darwin(v4 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v18 - v9;
  sub_1008F92F0(a1, &v18 - v9);
  v11 = *a1 + 14;
  sub_1008F92F0(a1, v7);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  sub_1008F9510(v7, v13 + v12);
  sub_1008F9510(v10, a2);
  result = sub_10010FC20(&qword_1011A87F0);
  *(a2 + result[9]) = v11;
  *(a2 + result[11]) = 0x4014000000000000;
  v15 = (a2 + result[10]);
  *v15 = variable initialization expression of _NSRange.NSRangeIterator.current;
  v15[1] = 0;
  v16 = (a2 + result[12]);
  *v16 = &unk_100EEEBC0;
  v16[1] = v13;
  v17 = (a2 + result[13]);
  *v17 = &unk_100EEEBC8;
  v17[1] = 0;
  return result;
}

uint64_t sub_1008F92F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Actions.SortPlaylist.Context();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1008F9374()
{
  v1 = *(v0 + 16);
  v2 = *v1;
  *(v0 + 52) = v2;
  if (sub_1008F84AC(v2, v1[1]))
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

  return _swift_task_switch(sub_1008F9478, v9, v8);
}

uint64_t sub_1008F9478()
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

uint64_t sub_1008F9510(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Actions.SortPlaylist.Context();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1008F9574(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for Actions.SortPlaylist.Context() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10002F3F4;

  return sub_1008F9354(a1, a2, v2 + v7);
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

uint64_t Actions.SortPlaylist.Context.menuItemTitle.getter()
{
  v1 = *v0;
  v2 = &v0[*(type metadata accessor for Actions.SortPlaylist.Context() + 24)];

  return sub_1008F96B8(v2, v1);
}

uint64_t sub_1008F96B8(uint64_t a1, unsigned __int8 a2)
{
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v38 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for String.LocalizationValue();
  v37 = *(v6 - 8);
  __chkstk_darwin(v6);
  v36 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v35 = &v34 - v9;
  v10 = type metadata accessor for Playlist.Variant();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10010FC20(&qword_1011A8E48);
  __chkstk_darwin(v14);
  v16 = &v34 - v15;
  v17 = sub_10010FC20(&qword_1011A8D18);
  __chkstk_darwin(v17 - 8);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v23 = &v34 - v21;
  if (a2 > 1u)
  {
    if (a2 != 2)
    {
      v25 = v36;
      v24 = v37;
      v26 = v35;
      String.LocalizationValue.init(stringLiteral:)();
      (*(v24 + 16))(v25, v26, v6);
      goto LABEL_17;
    }

    v26 = v35;
    goto LABEL_10;
  }

  if (!a2)
  {
    v34 = v6;
    (*(v11 + 104))(&v34 - v21, enum case for Playlist.Variant.favoriteSongs(_:), v10, v22);
    (*(v11 + 56))(v23, 0, 1, v10);
    v27 = *(v14 + 48);
    sub_1008F8E48(a1, v16);
    sub_1008F8E48(v23, &v16[v27]);
    v28 = *(v11 + 48);
    if (v28(v16, 1, v10) == 1)
    {
      sub_1000095E8(v23, &qword_1011A8D18);
      v29 = v28(&v16[v27], 1, v10);
      v6 = v34;
      v26 = v35;
      if (v29 == 1)
      {
        sub_1000095E8(v16, &qword_1011A8D18);
        v24 = v37;
LABEL_15:
        String.LocalizationValue.init(stringLiteral:)();
        goto LABEL_16;
      }
    }

    else
    {
      sub_1008F8E48(v16, v19);
      if (v28(&v16[v27], 1, v10) != 1)
      {
        (*(v11 + 32))(v13, &v16[v27], v10);
        sub_1008FBBB8();
        dispatch thunk of static Equatable.== infix(_:_:)();
        v30 = *(v11 + 8);
        v30(v13, v10);
        sub_1000095E8(v23, &qword_1011A8D18);
        v30(v19, v10);
        sub_1000095E8(v16, &qword_1011A8D18);
        v6 = v34;
        v26 = v35;
        v24 = v37;
        goto LABEL_15;
      }

      sub_1000095E8(v23, &qword_1011A8D18);
      (*(v11 + 8))(v19, v10);
      v6 = v34;
      v26 = v35;
    }

    sub_1000095E8(v16, &qword_1011A8E48);
    v24 = v37;
    goto LABEL_15;
  }

  v26 = v35;
LABEL_10:
  String.LocalizationValue.init(stringLiteral:)();
  v24 = v37;
LABEL_16:
  (*(v24 + 16))(v36, v26, v6);
LABEL_17:
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v31 = qword_101219808;
  static Locale.current.getter();
  v32 = String.init(localized:table:bundle:locale:comment:)();
  (*(v24 + 8))(v26, v6);
  return v32;
}

uint64_t Actions.SortPlaylist.Context.menuItemSubtitle.getter()
{
  v1 = 0xED0000726564724FLL;
  v2 = 0x7473696C79616C70;
  v3 = v0[1];
  v4 = *v0;
  v5 = 0xE600000000000000;
  v6 = 0x747369747261;
  v7 = 0xE500000000000000;
  v8 = 0x6D75626C61;
  if (v3 != 3)
  {
    v8 = 0x44657361656C6572;
    v7 = 0xEB00000000657461;
  }

  if (v3 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x656C746974;
  if (!v0[1])
  {
    v10 = 0x7473696C79616C70;
    v9 = 0xED0000726564724FLL;
  }

  if (v0[1] <= 1u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  if (v0[1] <= 1u)
  {
    v12 = v9;
  }

  else
  {
    v12 = v5;
  }

  v13 = 0xE600000000000000;
  v14 = 0x747369747261;
  v15 = 0xE500000000000000;
  v16 = 0x6D75626C61;
  if (v4 != 3)
  {
    v16 = 0x44657361656C6572;
    v15 = 0xEB00000000657461;
  }

  if (v4 != 2)
  {
    v14 = v16;
    v13 = v15;
  }

  if (*v0)
  {
    v2 = 0x656C746974;
    v1 = 0xE500000000000000;
  }

  if (*v0 <= 1u)
  {
    v17 = v2;
  }

  else
  {
    v17 = v14;
  }

  if (*v0 <= 1u)
  {
    v18 = v1;
  }

  else
  {
    v18 = v13;
  }

  if (v11 == v17 && v12 == v18)
  {

LABEL_29:
    v20 = type metadata accessor for Actions.SortPlaylist.Context();
    return sub_1008F9EA8(&v0[*(v20 + 24)], v0[2], v4);
  }

  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v19)
  {
    goto LABEL_29;
  }

  return 0;
}

uint64_t sub_1008F9EA8(uint64_t a1, int a2, unsigned __int8 a3)
{
  v42 = a1;
  v5 = type metadata accessor for Locale();
  __chkstk_darwin(v5 - 8);
  v44 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for String.LocalizationValue();
  v7 = *(v46 - 8);
  __chkstk_darwin(v46);
  v43 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v45 = v40 - v10;
  v11 = type metadata accessor for Playlist.Variant();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10010FC20(&qword_1011A8E48);
  __chkstk_darwin(v15);
  v17 = v40 - v16;
  v18 = sub_10010FC20(&qword_1011A8D18);
  __chkstk_darwin(v18 - 8);
  v20 = v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v24 = v40 - v22;
  v25 = a3;
  if (a3 - 1 < 3)
  {
    v26 = (v7 + 16);
    v27 = v45;
LABEL_12:
    String.LocalizationValue.init(stringLiteral:)();
    v33 = v46;
    (*v26)(v43, v27, v46);
    goto LABEL_16;
  }

  v28 = v42;
  v40[1] = a2;
  v41 = v7;
  if (v25)
  {
    v7 = v41;
    v26 = (v41 + 16);
    v27 = v45;
    goto LABEL_12;
  }

  (*(v12 + 104))(v40 - v22, enum case for Playlist.Variant.favoriteSongs(_:), v11, v23);
  (*(v12 + 56))(v24, 0, 1, v11);
  v29 = *(v15 + 48);
  sub_1008F8E48(v28, v17);
  sub_1008F8E48(v24, &v17[v29]);
  v30 = *(v12 + 48);
  if (v30(v17, 1, v11) == 1)
  {
    sub_1000095E8(v24, &qword_1011A8D18);
    v31 = v30(&v17[v29], 1, v11);
    v32 = v43;
    if (v31 == 1)
    {
      sub_1000095E8(v17, &qword_1011A8D18);
      v27 = v45;
      v33 = v46;
      v7 = v41;
LABEL_14:
      v34 = (v7 + 16);
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  sub_1008F8E48(v17, v20);
  if (v30(&v17[v29], 1, v11) == 1)
  {
    sub_1000095E8(v24, &qword_1011A8D18);
    (*(v12 + 8))(v20, v11);
    v32 = v43;
LABEL_10:
    sub_1000095E8(v17, &qword_1011A8E48);
    v27 = v45;
    v33 = v46;
    v7 = v41;
    goto LABEL_11;
  }

  (*(v12 + 32))(v14, &v17[v29], v11);
  sub_1008FBBB8();
  v35 = dispatch thunk of static Equatable.== infix(_:_:)();
  v36 = *(v12 + 8);
  v36(v14, v11);
  sub_1000095E8(v24, &qword_1011A8D18);
  v36(v20, v11);
  sub_1000095E8(v17, &qword_1011A8D18);
  v27 = v45;
  v33 = v46;
  v7 = v41;
  v32 = v43;
  if (v35)
  {
    goto LABEL_14;
  }

LABEL_11:
  v34 = (v7 + 16);
LABEL_15:
  String.LocalizationValue.init(stringLiteral:)();
  (*v34)(v32, v27, v33);
LABEL_16:
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v37 = qword_101219808;
  static Locale.current.getter();
  v38 = String.init(localized:table:bundle:locale:comment:)();
  (*(v7 + 8))(v27, v33);
  return v38;
}

uint64_t Actions.SortPlaylist.Context.menuItemState.getter()
{
  v1 = 0xED0000726564724FLL;
  v2 = 0x7473696C79616C70;
  v3 = v0[1];
  v4 = *v0;
  v5 = 0xE600000000000000;
  v6 = 0x747369747261;
  v7 = 0xE500000000000000;
  v8 = 0x6D75626C61;
  if (v3 != 3)
  {
    v8 = 0x44657361656C6572;
    v7 = 0xEB00000000657461;
  }

  if (v3 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x656C746974;
  if (!v0[1])
  {
    v10 = 0x7473696C79616C70;
    v9 = 0xED0000726564724FLL;
  }

  if (v0[1] <= 1u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  if (v0[1] <= 1u)
  {
    v12 = v9;
  }

  else
  {
    v12 = v5;
  }

  v13 = 0xE600000000000000;
  v14 = 0x747369747261;
  v15 = 0xE500000000000000;
  v16 = 0x6D75626C61;
  if (v4 != 3)
  {
    v16 = 0x44657361656C6572;
    v15 = 0xEB00000000657461;
  }

  if (v4 != 2)
  {
    v14 = v16;
    v13 = v15;
  }

  if (*v0)
  {
    v2 = 0x656C746974;
    v1 = 0xE500000000000000;
  }

  if (*v0 <= 1u)
  {
    v17 = v2;
  }

  else
  {
    v17 = v14;
  }

  if (*v0 <= 1u)
  {
    v18 = v1;
  }

  else
  {
    v18 = v13;
  }

  if (v11 == v17 && v12 == v18)
  {

    return 1;
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return v20 & 1;
  }
}

uint64_t sub_1008FA6C8(uint64_t a1)
{
  v3 = *v1;
  if (sub_1008F84AC(v1[1], *v1))
  {
    return sub_1008F9EA8(&v1[*(a1 + 24)], v1[2], v3);
  }

  else
  {
    return 0;
  }
}

uint64_t Actions.SortPlaylist.TrackListSort.Option.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x7473696C79616C70;
  v2 = 0x747369747261;
  v3 = 0x6D75626C61;
  if (a1 != 3)
  {
    v3 = 0x44657361656C6572;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x656C746974;
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

Swift::Int sub_1008FA830()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1008FA91C()
{
  String.hash(into:)();
}

Swift::Int sub_1008FA9F4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1008FAADC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9MusicCore7ActionsO12SortPlaylistO09TrackListD0V6OptionO8rawValueAISgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_1008FAB0C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED0000726564724FLL;
  v4 = 0x7473696C79616C70;
  v5 = 0xE600000000000000;
  v6 = 0x747369747261;
  v7 = 0xE500000000000000;
  v8 = 0x6D75626C61;
  if (v2 != 3)
  {
    v8 = 0x44657361656C6572;
    v7 = 0xEB00000000657461;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x656C746974;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1008FAC74(uint64_t a1)
{
  v2 = sub_1008FB524();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1008FACB0(uint64_t a1)
{
  v2 = sub_1008FB524();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t static Actions.SortPlaylist.TrackListSort.__derived_struct_equals(_:_:)(__int16 a1, __int16 a2)
{
  v3 = 0xED0000726564724FLL;
  v4 = 0x7473696C79616C70;
  v5 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v6 = 0x656C746974;
    }

    else
    {
      v6 = 0x7473696C79616C70;
    }

    if (v5)
    {
      v7 = 0xE500000000000000;
    }

    else
    {
      v7 = 0xED0000726564724FLL;
    }
  }

  else if (a1 == 2)
  {
    v7 = 0xE600000000000000;
    v6 = 0x747369747261;
  }

  else
  {
    if (a1 == 3)
    {
      v6 = 0x6D75626C61;
    }

    else
    {
      v6 = 0x44657361656C6572;
    }

    if (v5 == 3)
    {
      v7 = 0xE500000000000000;
    }

    else
    {
      v7 = 0xEB00000000657461;
    }
  }

  v9 = 0xE600000000000000;
  v10 = 0x747369747261;
  v11 = 0xE500000000000000;
  v12 = 0x6D75626C61;
  if (a2 != 3)
  {
    v12 = 0x44657361656C6572;
    v11 = 0xEB00000000657461;
  }

  if (a2 != 2)
  {
    v10 = v12;
    v9 = v11;
  }

  if (a2)
  {
    v4 = 0x656C746974;
    v3 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v13 = v4;
  }

  else
  {
    v13 = v10;
  }

  if (a2 <= 1u)
  {
    v14 = v3;
  }

  else
  {
    v14 = v9;
  }

  if (v6 == v13 && v7 == v14)
  {
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = 0;
    if ((v15 & 1) == 0)
    {
      return result;
    }
  }

  return ((a2 & 0x100) == 0) ^ ((a1 & 0x100) >> 8);
}

uint64_t Actions.SortPlaylist.TrackListSort.encode(to:)(void *a1, char a2)
{
  v5 = sub_10010FC20(&qword_1011A8D20);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_10000954C(a1, a1[3]);
  sub_1008FB524();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = a2;
  v10[14] = 0;
  sub_1008FB578();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v10[13] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void Actions.SortPlaylist.TrackListSort.hash(into:)(uint64_t a1, __int16 a2)
{
  v2 = HIBYTE(a2);
  String.hash(into:)();

  Hasher._combine(_:)(v2 & 1);
}

Swift::Int Actions.SortPlaylist.TrackListSort.hashValue.getter(__int16 a1)
{
  v1 = HIBYTE(a1);
  Hasher.init(_seed:)();
  String.hash(into:)();

  Hasher._combine(_:)(v1 & 1);
  return Hasher._finalize()();
}

Swift::Int sub_1008FB234()
{
  if (v0[1])
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return Actions.SortPlaylist.TrackListSort.hashValue.getter(v1 | *v0);
}

void sub_1008FB250()
{
  v1 = *(v0 + 1);
  String.hash(into:)();

  Hasher._combine(_:)(v1);
}

Swift::Int sub_1008FB338()
{
  v1 = *(v0 + 1);
  Hasher.init(_seed:)();
  String.hash(into:)();

  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_1008FB438@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1008FB5CC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = BYTE1(result) & 1;
  }

  return result;
}

uint64_t sub_1008FB49C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  return sub_1008F84AC(*a1, *a2) & ~(v2 ^ v3) & 1;
}

unint64_t _s9MusicCore7ActionsO12SortPlaylistO09TrackListD0V6OptionO8rawValueAISgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1010C6488, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1008FB524()
{
  result = qword_1011A8D28;
  if (!qword_1011A8D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A8D28);
  }

  return result;
}

unint64_t sub_1008FB578()
{
  result = qword_1011A8D30;
  if (!qword_1011A8D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A8D30);
  }

  return result;
}

uint64_t sub_1008FB5CC(void *a1)
{
  v3 = sub_10010FC20(&qword_1011A8E38);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11[-v5];
  sub_10000954C(a1, a1[3]);
  sub_1008FB524();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_10000959C(a1);
  }

  v11[14] = 0;
  sub_1008FBB64();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v7 = v11[15];
  v11[13] = 1;
  v8 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v4 + 8))(v6, v3);
  sub_10000959C(a1);
  if (v8)
  {
    v10 = 256;
  }

  else
  {
    v10 = 0;
  }

  return v10 | v7;
}

unint64_t sub_1008FB798()
{
  result = qword_1011A8D58;
  if (!qword_1011A8D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A8D58);
  }

  return result;
}

unint64_t sub_1008FB7F0()
{
  result = qword_1011A8D60;
  if (!qword_1011A8D60)
  {
    sub_1001109D0(&qword_1011A8D68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A8D60);
  }

  return result;
}

unint64_t sub_1008FB858()
{
  result = qword_1011A8D70;
  if (!qword_1011A8D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A8D70);
  }

  return result;
}

void sub_1008FB8E4()
{
  sub_1008FB980();
  if (v0 <= 0x3F)
  {
    sub_10001F838();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1008FB980()
{
  if (!qword_1011A8DE0)
  {
    type metadata accessor for Playlist.Variant();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1011A8DE0);
    }
  }
}

unint64_t sub_1008FBA0C()
{
  result = qword_1011A8E18;
  if (!qword_1011A8E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A8E18);
  }

  return result;
}

unint64_t sub_1008FBA64()
{
  result = qword_1011A8E20;
  if (!qword_1011A8E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A8E20);
  }

  return result;
}

unint64_t sub_1008FBABC()
{
  result = qword_1011A8E28;
  if (!qword_1011A8E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A8E28);
  }

  return result;
}

unint64_t sub_1008FBB10()
{
  result = qword_1011A8E30;
  if (!qword_1011A8E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A8E30);
  }

  return result;
}

unint64_t sub_1008FBB64()
{
  result = qword_1011A8E40;
  if (!qword_1011A8E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A8E40);
  }

  return result;
}

unint64_t sub_1008FBBB8()
{
  result = qword_1011A9F60;
  if (!qword_1011A9F60)
  {
    type metadata accessor for Playlist.Variant();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A9F60);
  }

  return result;
}

uint64_t sub_1008FBC54(uint64_t a1, uint64_t a2)
{
  v5 = (*(a2 + 32) + **(a2 + 32));
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_100008F30;

  return v5();
}

uint64_t sub_1008FBD3C(uint64_t a1)
{
  v4 = (*(a1 + 48) + **(a1 + 48));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100008F30;

  return v4();
}

uint64_t sub_1008FBEAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[12] = a1;
  v4[13] = a2;
  sub_10010FC20(&qword_1011A7F08);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = type metadata accessor for MetricsEvent.Click(0);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  sub_10010FC20(&qword_1011A77F0);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  sub_10010FC20(&qword_1011A8660);
  v4[30] = swift_task_alloc();
  v5 = type metadata accessor for Actions.MetricsReportingContext();
  v4[31] = v5;
  v4[32] = *(v5 - 8);
  v4[33] = swift_task_alloc();

  return _swift_task_switch(sub_1008FC0C0, 0, 0);
}

uint64_t sub_1008FC0C0()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);
  v3 = *(v0 + 240);
  sub_1000089F8(*(v0 + 96), v3, &qword_1011A8660);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000095E8(*(v0 + 240), &qword_1011A8660);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 232);
    v7 = *(v0 + 112);
    sub_100903880(*(v0 + 240), *(v0 + 264), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 272) = MusicItem.metricsTargetIdentifier.getter(v7);
    *(v0 + 280) = v8;
    v9 = type metadata accessor for URL();
    *(v0 + 288) = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    *(v0 + 296) = v11;
    *(v0 + 304) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v6, 1, 1, v9);
    sub_10010FC20(&qword_1011A8868);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBDC20;
    *(inited + 32) = MusicItem.metricsContentType.getter(v7);
    *(inited + 40) = v13;
    *(inited + 48) = 0;
    *(inited + 56) = 0;
    *(inited + 64) = 0;
    *(inited + 72) = 3;
    *(v0 + 312) = sub_1008AC260(inited);
    *(v0 + 320) = v14;
    *(v0 + 328) = v15;
    *(v0 + 344) = v16;
    swift_setDeallocating();
    swift_arrayDestroy();
    type metadata accessor for MainActor();
    *(v0 + 336) = static MainActor.shared.getter();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1008FC3C4, v18, v17);
  }
}

uint64_t sub_1008FC3C4()
{
  v80 = *(v0 + 344);
  v73 = *(v0 + 312);
  v76 = *(v0 + 280);
  v78 = *(v0 + 328);
  v74 = *(v0 + 272);
  v1 = *(v0 + 264);
  v2 = *(v0 + 248);
  v4 = *(v0 + 224);
  v3 = *(v0 + 232);
  v5 = *(v0 + 192);
  v6 = *(v0 + 200);
  v7 = *(v0 + 184);
  v72 = *(v0 + 176);

  sub_1000089F8(v3, v4, &qword_1011A77F0);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_1000089F8(v1 + v2[5], v7, &qword_1011A7F08);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 14597;
  sub_10003D17C(v4, v6 + v5[7], &qword_1011A77F0);
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
  sub_1000089F8(v7, v72, &qword_1011A7F08);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 344);
  v17 = *(v0 + 320);
  v18 = *(v0 + 328);
  v19 = *(v0 + 312);
  v20 = *(v0 + 176);
  if (v15 == 1)
  {

    sub_100633490(v75, v77);

    sub_1005EA59C(v19, v17, v18, v16, SBYTE1(v16));
    sub_1000095E8(v20, &qword_1011A7F08);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_100633490(v75, v77);

    sub_1005EA59C(v19, v17, v18, v16, SBYTE1(v16));

    sub_1008D9B58(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 184);
  v24 = *(v0 + 168);
  v25 = (*(v0 + 200) + *(*(v0 + 192) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_1000089F8(v23, v24, &qword_1011A7F08);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 168);
  if (v26 == 1)
  {
    sub_1000095E8(*(v0 + 168), &qword_1011A7F08);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_1008D9B58(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 184);
  v31 = *(v0 + 160);
  v32 = (*(v0 + 200) + *(*(v0 + 192) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_1000089F8(v30, v31, &qword_1011A7F08);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 296);
    v34 = *(v0 + 288);
    v35 = *(v0 + 216);
    sub_1000095E8(*(v0 + 160), &qword_1011A7F08);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 160);
    sub_1000089F8(v36 + v14[6], *(v0 + 216), &qword_1011A77F0);
    sub_1008D9B58(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 184);
  v38 = *(v0 + 152);
  sub_10003D17C(*(v0 + 216), *(v0 + 200) + *(*(v0 + 192) + 56), &qword_1011A77F0);
  sub_1000089F8(v37, v38, &qword_1011A7F08);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 152);
  if (v39 == 1)
  {
    sub_1000095E8(*(v0 + 152), &qword_1011A7F08);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_1008D9B58(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 184);
  v43 = *(v0 + 144);
  *(*(v0 + 200) + *(*(v0 + 192) + 60)) = v41;
  sub_1000089F8(v42, v43, &qword_1011A7F08);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 144);
  if (v44 == 1)
  {
    sub_1000095E8(v45, &qword_1011A7F08);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_1008D9B58(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 184);
  v48 = *(v0 + 136);
  *(*(v0 + 200) + *(*(v0 + 192) + 64)) = v46;
  sub_1000089F8(v47, v48, &qword_1011A7F08);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 136);
  if (v49 == 1)
  {
    sub_1000095E8(*(v0 + 136), &qword_1011A7F08);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_1008D9B58(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 184);
  v55 = *(v0 + 128);
  v56 = (*(v0 + 200) + *(*(v0 + 192) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_10003D17C(v54, v55, &qword_1011A7F08);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 128);
  if (v57 == 1)
  {
    sub_1000095E8(v58, &qword_1011A7F08);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_1008D9B58(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 200);
  v61 = *(v0 + 208);
  v62 = *(v0 + 192);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_100903880(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_1011A6810 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 320);
  v63 = *(v0 + 328);
  v65 = *(v0 + 312);
  v66 = *(v0 + 264);
  v67 = *(v0 + 248);
  v68 = *(v0 + 232);
  v69 = *(v0 + 208);
  v70 = *(v0 + 344);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  sub_100344B1C(v65, v64, v63, v70, SBYTE1(v70));
  sub_1008D9B58(v69, type metadata accessor for MetricsEvent.Click);
  sub_1000095E8(v68, &qword_1011A77F0);

  return _swift_task_switch(sub_1009038E8, 0, 0);
}

uint64_t sub_1008FCB7C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(sub_10010FC20(&qword_1011A8660) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100008F30;

  return sub_1008FBEAC(v0 + v5, v0 + v6, v2, v3);
}

uint64_t sub_1008FCD8C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  if (dispatch thunk of MusicLibrary.ItemState.isAdded.getter())
  {
    v8 = enum case for MusicPropertySource.library(_:);
    v9 = type metadata accessor for MusicPropertySource();
    v17 = *(v9 - 8);
    (*(v17 + 104))(a4, v8, v9);
    v10 = *(v17 + 56);

    return v10(a4, 0, 1, v9);
  }

  else
  {
    v28 = a1(0);
    v29 = a2;
    sub_10001C8B8(v27);
    dispatch thunk of MusicLibrary.ItemState.item.getter();
    sub_10000954C(v27, v28);
    a3();
    if (!v12)
    {
      goto LABEL_10;
    }

    if (qword_1011A6820 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v26[4] = v22;
    v26[5] = v23;
    v26[6] = v24;
    v26[7] = v25;
    v26[0] = v18;
    v26[1] = v19;
    v26[2] = v20;
    v26[3] = v21;
    sub_100014984(v26);
    if (BYTE1(v26[0]) == 1)
    {
      v13 = enum case for MusicPropertySource.catalog(_:);
      v14 = type metadata accessor for MusicPropertySource();
      v15 = *(v14 - 8);
      (*(v15 + 104))(a4, v13, v14);
      (*(v15 + 56))(a4, 0, 1, v14);
      return sub_10000959C(v27);
    }

    else
    {
LABEL_10:
      sub_10000959C(v27);
      v16 = type metadata accessor for MusicPropertySource();
      return (*(*(v16 - 8) + 56))(a4, 1, 1, v16);
    }
  }
}

uint64_t MusicLibrary.ItemState.containerLoadingSource.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __chkstk_darwin(a1);
  if (dispatch thunk of MusicLibrary.ItemState.isAdded.getter())
  {
    v3 = enum case for MusicPropertySource.library(_:);
    v4 = type metadata accessor for MusicPropertySource();
    v14 = *(v4 - 8);
    (*(v14 + 104))(a2, v3, v4);
    v5 = *(v14 + 56);

    return v5(a2, 0, 1, v4);
  }

  else
  {
    dispatch thunk of MusicLibrary.ItemState.item.getter();
    sub_10010FC20(&qword_1011A7F28);
    if (swift_dynamicCast())
    {
      sub_100059A8C(&v23, v31);
      v7 = v32;
      v8 = v33;
      sub_10000954C(v31, v32);
      (*(v8 + 8))(v7, v8);
      if (v9)
      {

        if (qword_1011A6820 != -1)
        {
          swift_once();
        }

        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v27 = v19;
        v28 = v20;
        v29 = v21;
        v30 = v22;
        v23 = v15;
        v24 = v16;
        v25 = v17;
        v26 = v18;
        sub_100014984(&v23);
        if (BYTE1(v23) == 1)
        {
          v10 = enum case for MusicPropertySource.catalog(_:);
          v11 = type metadata accessor for MusicPropertySource();
          v12 = *(v11 - 8);
          (*(v12 + 104))(a2, v10, v11);
          (*(v12 + 56))(a2, 0, 1, v11);
          return sub_10000959C(v31);
        }
      }

      sub_10000959C(v31);
    }

    else
    {
      *&v25 = 0;
      v23 = 0u;
      v24 = 0u;
      sub_1000095E8(&v23, &unk_1011AD930);
    }

    v13 = type metadata accessor for MusicPropertySource();
    return (*(*(v13 - 8) + 56))(a2, 1, 1, v13);
  }
}

uint64_t MusicVideo.supportsContainerNavigation(itemState:)()
{
  v0 = sub_10010FC20(&qword_1011A8E50);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  sub_1008FCD8C(&type metadata accessor for MusicVideo, &protocol witness table for MusicVideo, &MusicVideo.catalogID.getter, &v7 - v1);
  v3 = type metadata accessor for MusicPropertySource();
  v4 = (*(*(v3 - 8) + 48))(v2, 1, v3);
  sub_1000095E8(v2, &qword_1011A8E50);
  if (v4 == 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_1008FD568();
  }

  return v5 & 1;
}

uint64_t sub_1008FD568()
{
  v0 = sub_10010FC20(&qword_1011A8FA0);
  __chkstk_darwin(v0 - 8);
  v2 = &v15 - v1;
  v3 = sub_10010FC20(&qword_1011A8858);
  __chkstk_darwin(v3 - 8);
  v5 = &v15 - v4;
  v6 = type metadata accessor for Album();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MusicVideo.albums.getter();
  v10 = sub_10010FC20(&qword_1011A8FA8);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v2, 1, v10) == 1)
  {
    sub_1000095E8(v2, &qword_1011A8FA0);
    (*(v7 + 56))(v5, 1, 1, v6);
LABEL_4:
    sub_1000095E8(v5, &qword_1011A8858);
    goto LABEL_5;
  }

  sub_100916DA4(v5);
  (*(v11 + 8))(v2, v10);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    goto LABEL_4;
  }

  (*(v7 + 32))(v9, v5, v6);
  v14 = Album.isSingleMusicVideo.getter();
  (*(v7 + 8))(v9, v6);
  if (v14 != 2)
  {
    v12 = v14 ^ 1;
    return v12 & 1;
  }

LABEL_5:
  v12 = 0;
  return v12 & 1;
}

uint64_t Track.supportsContainerNavigation(itemState:)()
{
  v0 = type metadata accessor for Track();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MusicVideo();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&qword_1011A8E50);
  __chkstk_darwin(v8 - 8);
  v10 = v15 - v9;
  sub_1008FCD8C(&type metadata accessor for Track, &protocol witness table for Track, &Track.catalogID.getter, v15 - v9);
  v11 = type metadata accessor for MusicPropertySource();
  v12 = (*(*(v11 - 8) + 48))(v10, 1, v11);
  sub_1000095E8(v10, &qword_1011A8E50);
  if (v12 == 1)
  {
    v13 = 0;
  }

  else
  {
    (*(v1 + 16))(v3, v15[1], v0);
    if ((*(v1 + 88))(v3, v0) == enum case for Track.musicVideo(_:))
    {
      (*(v1 + 96))(v3, v0);
      (*(v5 + 32))(v7, v3, v4);
      v13 = sub_1008FD568();
      (*(v5 + 8))(v7, v4);
    }

    else
    {
      (*(v1 + 8))(v3, v0);
      v13 = 1;
    }
  }

  return v13 & 1;
}

BOOL sub_1008FDB4C(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(void))
{
  v7 = sub_10010FC20(&qword_1011A8E50);
  __chkstk_darwin(v7 - 8);
  v9 = &v13 - v8;
  sub_1008FCD8C(a2, a3, a4, &v13 - v8);
  v10 = type metadata accessor for MusicPropertySource();
  v11 = (*(*(v10 - 8) + 48))(v9, 1, v10) != 1;
  sub_1000095E8(v9, &qword_1011A8E50);
  return v11;
}