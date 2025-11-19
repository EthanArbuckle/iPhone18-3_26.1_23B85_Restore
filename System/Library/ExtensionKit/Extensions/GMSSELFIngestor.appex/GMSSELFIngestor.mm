uint64_t sub_1000017CC(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v3 = sub_100016924();
  v2[16] = v3;
  v4 = *(v3 - 8);
  v2[17] = v4;
  v2[18] = *(v4 + 64);
  v2[19] = swift_task_alloc();
  v5 = *(*(sub_100009F00(&qword_100020980, qword_100017570) - 8) + 64) + 15;
  v2[20] = swift_task_alloc();
  v6 = sub_1000168B4();
  v2[21] = v6;
  v7 = *(v6 - 8);
  v2[22] = v7;
  v8 = *(v7 + 64) + 15;
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();

  return _swift_task_switch(sub_100001958, 0, 0);
}

uint64_t sub_100001958()
{
  v81 = v0;
  if (qword_100020750 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = v0[27];
  v3 = sub_100016A24();
  v5 = v4;
  type metadata accessor for BiomeBookmarkProvider();
  inited = swift_initStackObject();
  v7 = objc_allocWithZone(NSUserDefaults);
  v8 = sub_100016DF4();
  v9 = [v7 initWithSuiteName:v8];

  inited[2] = v9;
  inited[3] = v3;
  inited[4] = v5;
  v80[0] = v3;
  v80[1] = v5;

  v83._object = 0x8000000100017BB0;
  v83._countAndFlagsBits = 0xD000000000000015;
  sub_100016E34(v83);
  inited[5] = v3;
  inited[6] = v5;
  sub_10000E8A8(v2);
  sub_1000168A4();
  if (qword_100020760 != -1)
  {
    swift_once();
  }

  v11 = v0[26];
  v10 = v0[27];
  v13 = v0[24];
  v12 = v0[25];
  v15 = v0[21];
  v14 = v0[22];
  v16 = sub_100016D94();
  sub_10000BD98(v16, qword_100020F88);
  v17 = *(v14 + 16);
  v17(v12, v10, v15);
  v79 = v17;
  v17(v13, v11, v15);
  v18 = sub_100016D74();
  v19 = sub_100016E64();
  v20 = os_log_type_enabled(v18, v19);
  v22 = v0[24];
  v21 = v0[25];
  v24 = v0[21];
  v23 = v0[22];
  if (v20)
  {
    v25 = swift_slowAlloc();
    v80[0] = swift_slowAlloc();
    *v25 = 136315394;
    v76 = v19;
    v26 = inited;
    v27 = sub_100016874();
    v29 = v28;
    log = v18;
    v30 = *(v23 + 8);
    v30(v21, v24);
    v31 = v27;
    inited = v26;
    v32 = sub_100015464(v31, v29, v80);

    *(v25 + 4) = v32;
    *(v25 + 12) = 2080;
    v33 = sub_100016874();
    v35 = v34;
    v36 = v24;
    v37 = v30;
    v30(v22, v36);
    v38 = sub_100015464(v33, v35, v80);

    *(v25 + 14) = v38;
    _os_log_impl(&_mh_execute_header, log, v76, "BMPublisherOptions Start date %s end date %s", v25, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v39 = *(v23 + 8);
    v39(v22, v24);
    v40 = v24;
    v37 = v39;
    v39(v21, v40);
  }

  v41 = v0[27];
  v43 = v0[21];
  v42 = v0[22];
  v44 = v0[20];
  v79(v44, v0[26], v43);
  (*(v42 + 56))(v44, 0, 1, v43);
  v45.super.isa = sub_100016884().super.isa;
  if ((*(v42 + 48))(v44, 1, v43) == 1)
  {
    isa = 0;
  }

  else
  {
    v48 = v0[21];
    v47 = v0[22];
    v49 = v0[20];
    isa = sub_100016884().super.isa;
    v37(v49, v48);
  }

  v50 = [objc_allocWithZone(BMPublisherOptions) initWithStartDate:v45.super.isa endDate:isa maxEvents:0 lastN:0 reversed:0];

  sub_100016A34();
  sub_10000C49C(&qword_100020988, 255, &type metadata accessor for Library.Streams.GenerativeModels.GenerativeFunctions.Instrumentation);
  v51 = v50;
  sub_100016A44();
  v53 = v0[26];
  v52 = v0[27];
  v73 = v52;
  loga = v0[25];
  v77 = v0[24];
  v78 = v0[23];
  v54 = v0[21];
  v55 = v0[19];
  v67 = v0[18];
  v70 = v0[22];
  v71 = v37;
  v57 = v0[16];
  v56 = v0[17];
  v72 = v0[20];
  v58 = v0[14];
  v59 = v0[15];

  v68 = v0[13];
  sub_10000C4E4(v0 + 9, v0[12]);
  (*(v56 + 16))(v55, v58, v57);
  v69 = v51;
  v60 = inited;
  v61 = (*(v56 + 80) + 24) & ~*(v56 + 80);
  v62 = swift_allocObject();
  *(v62 + 16) = v59;
  (*(v56 + 32))(v62 + v61, v55, v57);

  sub_100016DA4();

  v79(v78, v53, v54);
  sub_10000EDE4(v78);
  swift_setDeallocating();

  v63 = v60[4];

  v64 = v60[6];

  v71(v53, v54);
  v71(v73, v54);
  sub_10000C658(v0 + 9);

  v65 = v0[1];

  return v65();
}

void sub_1000020DC(void *a1)
{
  if (!*a1)
  {
    if (qword_100020760 != -1)
    {
      swift_once();
    }

    v6 = sub_100016D94();
    sub_10000BD98(v6, qword_100020F88);
    oslog = sub_100016D74();
    v7 = sub_100016E64();
    if (!os_log_type_enabled(oslog, v7))
    {
      goto LABEL_11;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v7, "Polling biome stream has finished", v8, 2u);
LABEL_10:

LABEL_11:

    return;
  }

  if (qword_100020760 != -1)
  {
    swift_once();
  }

  v1 = sub_100016D94();
  sub_10000BD98(v1, qword_100020F88);
  swift_errorRetain();
  oslog = sub_100016D74();
  v2 = sub_100016E84();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, oslog, v2, "Polling biome stream has failed: %@", v3, 0xCu);
    sub_10000C3E4(v4, &qword_100020950, &qword_100017550);

    goto LABEL_10;
  }
}

BOOL sub_100002304(uint64_t a1, void *a2)
{
  v3 = v2;
  if (qword_100020768 != -1)
  {
    swift_once();
  }

  v6 = sub_100016D94();
  sub_10000BD98(v6, qword_100020FA0);

  v7 = sub_100016D74();
  v8 = sub_100016E74();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315138;
    if (a2)
    {
      v11 = a1;
    }

    else
    {
      v11 = 0x7974706D65;
    }

    if (a2)
    {
      v12 = a2;
    }

    else
    {
      v12 = 0xE500000000000000;
    }

    v13 = sub_100015464(v11, v12, &v15);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "check  useCaseString%s", v9, 0xCu);
    sub_10000C658(v10);
  }

  result = 0;
  if (*(v3 + 16) == 1)
  {
    if (a2)
    {

      return sub_100016020(a1, a2) != 5;
    }
  }

  return result;
}

void sub_1000024C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v103 = a3;
  v117 = a1;
  v6 = sub_100009F00(&qword_100020900, &qword_100017528);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v102 = &v100 - v8;
  v9 = sub_100009F00(&qword_100020918, &qword_100017538);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v115 = (&v100 - v11);
  v12 = sub_100016954();
  v105 = *(v12 - 8);
  v106 = v12;
  v13 = *(v105 + 64);
  __chkstk_darwin(v12);
  v104 = &v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100016BD4();
  v108 = *(v15 - 8);
  v109 = v15;
  v16 = *(v108 + 64);
  __chkstk_darwin(v15);
  v107 = &v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100016904();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v110 = &v100 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v100 - v23;
  v25 = sub_100016B14();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = __chkstk_darwin(v25);
  v112 = &v100 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v31 = &v100 - v30;
  v32 = a2;
  sub_100016B24();
  v33 = sub_100016AD4();
  v35 = v34;
  v36 = *(v26 + 8);
  v113 = v26 + 8;
  v114 = v25;
  v111 = v36;
  v36(v31, v25);
  if (v35)
  {
    v37 = v33;
  }

  else
  {
    v37 = 0x7974706D65;
  }

  if (!v35)
  {
    v35 = 0xE500000000000000;
  }

  v116 = v4;
  v38 = *(v4 + 80);
  v120[0] = v37;
  v120[1] = v35;
  v119 = v120;
  if (sub_10000A138(sub_10000C6B0, v118, v38))
  {

    v39 = *(v19 + 16);
    v39(v24, v117, v18);
    v40 = v107;
    v41 = v108;
    v42 = v32;
    v43 = v109;
    (*(v108 + 16))(v107, v42, v109);
    v44 = sub_100016BB4();
    v100 = v45;
    v46 = type metadata accessor for GFILinkingEvent();
    v47 = *(v46 + 48);
    v48 = *(v46 + 52);
    v49 = swift_allocObject();
    v101 = v19;
    (*(v19 + 32))(v49 + OBJC_IVAR____TtC15GMSSELFIngestor15GFILinkingEvent_requestIdentifier, v24, v18);
    (*(v41 + 32))(v49 + OBJC_IVAR____TtC15GMSSELFIngestor15GFILinkingEvent_event, v40, v43);
    v50 = v39;
    v51 = v117;
    *(v49 + OBJC_IVAR____TtC15GMSSELFIngestor15GFILinkingEvent_ingestor) = v116;
    v52 = (v49 + OBJC_IVAR____TtC15GMSSELFIngestor15GFILinkingEvent_eventType);
    v53 = v100;
    *v52 = v44;
    v52[1] = v53;
    v39(v24, v51, v18);
    swift_beginAccess();

    v116 = v49;
    sub_1000030E4(v54, v24, sub_10000C6AC, sub_10000C6AC);
    swift_endAccess();
    v55 = v18;
    if (qword_100020768 != -1)
    {
      swift_once();
    }

    v56 = sub_100016D94();
    sub_10000BD98(v56, qword_100020FA0);
    v57 = v110;
    v50(v110, v51, v18);
    v58 = sub_100016D74();
    v59 = sub_100016E74();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v120[0] = v61;
      *v60 = 136315138;
      sub_10000C49C(&qword_100020938, 255, &type metadata accessor for UUID);
      v62 = sub_100016F84();
      v64 = v63;
      (*(v101 + 8))(v57, v55);
      v65 = sub_100015464(v62, v64, v120);

      *(v60 + 4) = v65;
      _os_log_impl(&_mh_execute_header, v58, v59, "Created a new bufferForLinkingEvents event with modelMangerID %s", v60, 0xCu);
      sub_10000C658(v61);
    }

    else
    {

      (*(v101 + 8))(v57, v18);
    }

    v72 = v115;
    v73 = v112;
    sub_100016B24();
    sub_100016AE4();
    v75 = v74;
    v111(v73, v114);
    if (v75)
    {
      sub_1000168D4();
      sub_10000C6CC(46, 0x3Eu, v76, v72);

      v77 = sub_100009F00(&qword_100020778, &unk_1000176A0);
      if ((*(*(v77 - 8) + 48))(v72, 1, v77) != 1)
      {
        v78 = *v72;
        v80 = v104;
        v79 = v105;
        v81 = v72 + *(v77 + 48);
        v82 = v106;
        (*(v105 + 32))(v104, v81, v106);
        v83 = v102;
        (*(v79 + 16))(v102, v80, v82);
        (*(v79 + 56))(v83, 0, 1, v82);
        v84 = v78;
        sub_10000BECC(v78, v103, v83, "emit SELF requestLink %s", "requestLink is nil");

        sub_10000C3E4(v83, &qword_100020900, &qword_100017528);
        v85 = v84;
        v86 = sub_100016D74();
        v87 = sub_100016E74();

        if (os_log_type_enabled(v86, v87))
        {
          v88 = swift_slowAlloc();
          v89 = swift_slowAlloc();
          v120[0] = v89;
          *v88 = 136315138;
          v90 = [v85 formattedJsonBody];
          if (v90)
          {
            v91 = v90;
            v92 = sub_100016E04();
            v94 = v93;
          }

          else
          {
            v94 = 0xE500000000000000;
            v92 = 0x7974706D65;
          }

          v99 = sub_100015464(v92, v94, v120);

          *(v88 + 4) = v99;
          _os_log_impl(&_mh_execute_header, v86, v87, "Added RequestLink for GFILinkingEvent event to the data pool :%s", v88, 0xCu);
          sub_10000C658(v89);

          (*(v105 + 8))(v104, v106);
        }

        else
        {

          (*(v79 + 8))(v80, v82);
        }

        return;
      }
    }

    else
    {
      v95 = sub_100009F00(&qword_100020778, &unk_1000176A0);
      (*(*(v95 - 8) + 56))(v72, 1, 1, v95);
    }

    sub_10000C3E4(v72, &qword_100020918, &qword_100017538);
    v96 = sub_100016D74();
    v97 = sub_100016E74();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      *v98 = 0;
      _os_log_impl(&_mh_execute_header, v96, v97, "Request Link for GFILinkingEvent event is empty due to missing critical info", v98, 2u);
    }
  }

  else
  {
    if (qword_100020768 != -1)
    {
      swift_once();
    }

    v66 = sub_100016D94();
    sub_10000BD98(v66, qword_100020FA0);

    v67 = sub_100016D74();
    v68 = sub_100016E74();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v120[0] = v70;
      *v69 = 136315138;
      v71 = sub_100015464(v37, v35, v120);

      *(v69 + 4) = v71;
      _os_log_impl(&_mh_execute_header, v67, v68, "GMS events type %s not matching usecase Filter for PCC Metrics Linking Event", v69, 0xCu);
      sub_10000C658(v70);
    }

    else
    {
    }
  }
}

uint64_t sub_1000030E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  v39 = a3;
  v40 = a1;
  v6 = v4;
  v8 = sub_100016904();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v4;
  v13 = v4[1];
  v15 = v13 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v16 = *(v13 + 16);
  if (!*v4)
  {
    if (v16)
    {
      v37 = v4;
      v38 = a4;
      v41 = a2;
      v17 = 0;
      v36 = v9;
      v31 = v9 + 16;
      v30 = *(v9 + 16);
      v32 = *(v9 + 72);
      while (1)
      {
        v30(v12, v15, v8);
        sub_10000C49C(&qword_100020958, 255, &type metadata accessor for UUID);
        v33 = sub_100016DE4();
        (*(v31 - 8))(v12, v8);
        if (v33)
        {
          break;
        }

        ++v17;
        v15 += v32;
        if (v16 == v17)
        {
          a2 = v41;
          v9 = v36;
          v6 = v37;
          goto LABEL_14;
        }
      }

      v21 = 0;
      a2 = v41;
      v9 = v36;
      v6 = v37;
      v22 = v40;
      if (v40)
      {
        goto LABEL_4;
      }

LABEL_20:
      sub_10000A42C(v17, v21, v12);
      v35 = *(v9 + 8);
      v35(v12, v8);
      sub_10000A694(v17, v38);

      return (v35)(a2, v8);
    }

    if (v40)
    {
      goto LABEL_15;
    }

    return (*(v9 + 8))(a2, v8);
  }

  v38 = a4;

  v17 = sub_10000B674(a2, v15, v16, (v14 + 16), v14 + 32);
  v19 = v18;
  v21 = v20;

  if (v19)
  {
LABEL_14:
    if (v40)
    {
LABEL_15:
      sub_10000A1E4(a2);

      sub_100016F04();
      v34 = *(v6[2] + 16);
      sub_100016F24();
      sub_100016F34();
      sub_100016F14();
    }

    return (*(v9 + 8))(a2, v8);
  }

  v22 = v40;
  if (!v40)
  {
    goto LABEL_20;
  }

LABEL_4:
  v25 = v6[2];
  v24 = v6 + 2;
  v23 = v25;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v24 = v25;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v23 = v39(v23);
    *v24 = v23;
  }

  result = (*(v9 + 8))(a2, v8);
  if ((v17 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v17 < *(v23 + 16))
  {
    v28 = v23 + 8 * v17;
    v29 = *(v28 + 32);
    *(v28 + 32) = v22;

    return sub_100016F14();
  }

  __break(1u);
  return result;
}

uint64_t sub_100003444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v108 = a3;
  v131 = a1;
  v4 = sub_100009F00(&qword_100020900, &qword_100017528);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v106 = &v103 - v6;
  v124 = sub_100016A74();
  v122 = *(v124 - 8);
  v7 = *(v122 + 64);
  v8 = __chkstk_darwin(v124);
  v118 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v119 = &v103 - v10;
  v11 = sub_100009F00(&qword_100020970, &qword_100017560);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v120 = (&v103 - v13);
  v110 = sub_100016954();
  v14 = *(v110 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v110);
  v107 = &v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_100016B14();
  v114 = *(v115 - 8);
  v17 = *(v114 + 64);
  __chkstk_darwin(v115);
  v113 = &v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_100016BD4();
  v19 = *(v112 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v112);
  v111 = &v103 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100016D54();
  v126 = *(v22 - 8);
  v127 = v22;
  v23 = *(v126 + 64);
  __chkstk_darwin(v22);
  v128 = &v103 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100009F00(&qword_100020908, &unk_100017790);
  v26 = *(*(v25 - 8) + 64);
  v27 = __chkstk_darwin(v25 - 8);
  v129 = (&v103 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v27);
  v30 = &v103 - v29;
  v31 = sub_100016904();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = __chkstk_darwin(v31);
  v123 = &v103 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v37 = &v103 - v36;
  if (qword_100020768 != -1)
  {
    swift_once();
  }

  v38 = sub_100016D94();
  v39 = sub_10000BD98(v38, qword_100020FA0);
  v40 = *(v32 + 16);
  v117 = v32 + 16;
  v116 = v40;
  v40(v37, v131, v31);
  v130 = v39;
  v41 = sub_100016D74();
  v42 = sub_100016E74();
  v43 = os_log_type_enabled(v41, v42);
  v109 = v14;
  v121 = v31;
  if (v43)
  {
    v44 = swift_slowAlloc();
    v105 = a2;
    v45 = v44;
    v104 = swift_slowAlloc();
    v133 = v104;
    *v45 = 136315138;
    sub_10000C49C(&qword_100020938, 255, &type metadata accessor for UUID);
    v46 = sub_100016F84();
    v47 = v19;
    v48 = v30;
    v50 = v49;
    (*(v32 + 8))(v37, v31);
    v51 = sub_100015464(v46, v50, &v133);
    v30 = v48;
    v19 = v47;

    *(v45 + 4) = v51;
    _os_log_impl(&_mh_execute_header, v41, v42, "Deteced com.apple.privateCloud.metrics event with modelMangerID %s", v45, 0xCu);
    sub_10000C658(v104);
  }

  else
  {

    (*(v32 + 8))(v37, v31);
  }

  sub_100016BA4();
  v52 = sub_100016D64();
  v53 = *(v52 - 8);
  v54 = (*(v53 + 48))(v30, 1, v52);
  v55 = v129;
  if (v54 != 1)
  {
    sub_10000C37C(v30, v129, &qword_100020908, &unk_100017790);
    if ((*(v53 + 88))(v55, v52) == enum case for GenerativeFunctionsInstrumentationMetadata.privateCloudMetrics(_:))
    {
      (*(v53 + 96))(v55, v52);
      v56 = *v55;
      v57 = swift_projectBox();
      (*(v126 + 16))(v128, v57, v127);
      v58 = sub_100016D74();
      v59 = sub_100016E74();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&_mh_execute_header, v58, v59, "Detected com.apple.privateCloud.metrics event contains PrivateCloudMetrics", v60, 2u);
      }

      v61 = v125;
      swift_beginAccess();
      v62 = v61[6];
      v63 = v61[7];
      v64 = v61[8];

      v65 = sub_1000042E0(v131, v62, v63, v64);

      if (v65)
      {
        v129 = v56;
        v66 = v111;
        v67 = v112;
        (*(v19 + 16))(v111, v65 + OBJC_IVAR____TtC15GMSSELFIngestor15GFILinkingEvent_event, v112);
        v68 = v113;
        sub_100016B24();
        (*(v19 + 8))(v66, v67);
        v69 = sub_100016AD4();
        v71 = v70;
        (*(v114 + 8))(v68, v115);
        if (v71)
        {
          v72 = v71;
        }

        else
        {
          v72 = 0xE000000000000000;
        }

        v73 = sub_100016D74();
        v74 = sub_100016E74();

        if (os_log_type_enabled(v73, v74))
        {
          if (!v71)
          {
            v69 = 0;
          }

          v75 = swift_slowAlloc();
          v76 = swift_slowAlloc();
          v132 = v76;
          *v75 = 136315138;
          v77 = sub_100015464(v69, v72, &v132);

          *(v75 + 4) = v77;
          _os_log_impl(&_mh_execute_header, v73, v74, "Detected the linking parent event for com.apple.privateCloud.metrics event with useCaseIdentifier %s", v75, 0xCu);
          sub_10000C658(v76);
        }

        else
        {
        }

        v82 = v119;
        sub_100016BC4();
        v83 = sub_10000D060();
        v84 = objc_allocWithZone(SISchemaUUID);
        isa = sub_1000168E4().super.isa;
        v86 = [v84 initWithNSUUID:isa];

        v87 = sub_10000BDEC(v86);
        [v87 setGmsPrivateCloudMetricsReceived:v83];
        v88 = sub_100009F00(&qword_100020978, &qword_100017568);
        v89 = *(v88 + 48);
        v90 = v120;
        *v120 = v87;
        v91 = v122;
        v92 = v124;
        (*(v122 + 16))(v118, v82, v124);
        sub_100016944();

        v93 = *(v88 - 8);
        (*(v93 + 56))(v90, 0, 1, v88);

        (*(v91 + 8))(v82, v92);
        if ((*(v93 + 48))(v90, 1, v88) == 1)
        {
          sub_10000C3E4(v90, &qword_100020970, &qword_100017560);
        }

        else
        {
          v94 = *v90;
          v95 = v109;
          v96 = v107;
          v97 = v110;
          (*(v109 + 32))(v107, v90 + *(v88 + 48), v110);
          v98 = v106;
          (*(v95 + 16))(v106, v96, v97);
          (*(v95 + 56))(v98, 0, 1, v97);
          sub_10000BECC(v94, v108, v98, "emit SELF event %s", "emit nil SELF event");
          sub_10000C3E4(v98, &qword_100020900, &qword_100017528);
          v99 = sub_100016D74();
          v100 = sub_100016E74();
          if (os_log_type_enabled(v99, v100))
          {
            v101 = swift_slowAlloc();
            *v101 = 0;
            _os_log_impl(&_mh_execute_header, v99, v100, "Emitted SELF GMSSchemaGMSPrivateCloudMetricsReceived event", v101, 2u);
          }

          (*(v95 + 8))(v96, v97);
        }

        v102 = v123;
        v116(v123, v131, v121);
        swift_beginAccess();
        sub_1000030E4(0, v102, sub_10000C6AC, sub_10000C6AC);
        swift_endAccess();

        (*(v126 + 8))(v128, v127);
      }

      else
      {
        (*(v126 + 8))(v128, v127);
      }

      return sub_10000C3E4(v30, &qword_100020908, &unk_100017790);
    }

    (*(v53 + 8))(v55, v52);
  }

  v78 = sub_100016D74();
  v79 = sub_100016E74();
  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    *v80 = 0;
    _os_log_impl(&_mh_execute_header, v78, v79, "Detected com.apple.privateCloud.metrics event does not contain PrivateCloudMetrics, skipping...", v80, 2u);
  }

  return sub_10000C3E4(v30, &qword_100020908, &unk_100017790);
}

uint64_t sub_1000042E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100016904();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v14 = *(a3 + 16);
  if (!a2)
  {
LABEL_5:
    if (v14)
    {
      v15 = 0;
      v20 = *(v9 + 16);
      v19 = v9 + 16;
      v18 = v20;
      v21 = *(v19 + 56);
      v25 = a4;
      v26 = v21;
      while (1)
      {
        v18(v12, v13, v8);
        sub_10000C49C(&qword_100020958, 255, &type metadata accessor for UUID);
        v22 = a1;
        v23 = sub_100016DE4();
        result = (*(v19 - 8))(v12, v8);
        if (v23)
        {
          break;
        }

        ++v15;
        v13 += v26;
        a1 = v22;
        if (v14 == v15)
        {
          return 0;
        }
      }

      a4 = v25;
      goto LABEL_11;
    }

    return 0;
  }

  v15 = sub_10000B674(a1, v13, v14, (a2 + 16), a2 + 32);
  v8 = v16;

  if (v8)
  {
    return 0;
  }

  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

LABEL_11:
  if (v15 >= *(a4 + 16))
  {
    __break(1u);
  }

  else
  {
    v24 = *(a4 + 8 * v15 + 32);
  }

  return result;
}

uint64_t sub_1000044E0(uint64_t a1, uint64_t a2)
{
  v676 = a2;
  v3 = sub_100009F00(&qword_1000208F8, &qword_100017520);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v617 = &v601[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __chkstk_darwin(v5);
  v616 = &v601[-v8];
  __chkstk_darwin(v7);
  v622 = &v601[-v9];
  v10 = sub_100009F00(&qword_100020900, &qword_100017528);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v627 = &v601[-v12];
  v629 = sub_100016954();
  v628 = *(v629 - 8);
  v13 = *(v628 + 64);
  v14 = __chkstk_darwin(v629);
  v610 = &v601[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __chkstk_darwin(v14);
  v609 = &v601[-v17];
  v18 = __chkstk_darwin(v16);
  v612 = &v601[-v19];
  __chkstk_darwin(v18);
  v621 = &v601[-v20];
  v645 = sub_100009F00(&qword_100020908, &unk_100017790);
  v21 = *(*(v645 - 8) + 64);
  __chkstk_darwin(v645);
  v646 = &v601[-v22];
  v667 = sub_100016B84();
  v663 = *(v667 - 8);
  v23 = *(v663 + 64);
  __chkstk_darwin(v667);
  v649 = &v601[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v660 = sub_100009F00(&qword_100020910, &qword_100017530);
  v25 = *(*(v660 - 8) + 64);
  v26 = __chkstk_darwin(v660);
  v625 = &v601[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = __chkstk_darwin(v26);
  v623 = &v601[-v29];
  v30 = __chkstk_darwin(v28);
  v626 = &v601[-v31];
  v32 = __chkstk_darwin(v30);
  v635 = &v601[-v33];
  __chkstk_darwin(v32);
  v666 = &v601[-v34];
  v35 = sub_100009F00(&qword_100020918, &qword_100017538);
  v36 = *(*(v35 - 8) + 64);
  v37 = __chkstk_darwin(v35 - 8);
  v620 = &v601[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v37);
  v653 = &v601[-v39];
  v40 = sub_100009F00(&qword_100020920, &unk_1000175F0);
  v41 = *(*(v40 - 8) + 64);
  v42 = __chkstk_darwin(v40 - 8);
  v662 = &v601[-((v43 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v42);
  v672 = &v601[-v44];
  v45 = sub_100009F00(&qword_100020928, &qword_100017540);
  v46 = *(*(v45 - 8) + 64);
  v47 = __chkstk_darwin(v45 - 8);
  v613 = &v601[-((v48 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v49 = __chkstk_darwin(v47);
  v632 = &v601[-v50];
  v51 = __chkstk_darwin(v49);
  v624 = &v601[-v52];
  v53 = __chkstk_darwin(v51);
  v611 = &v601[-v54];
  v55 = __chkstk_darwin(v53);
  v630 = &v601[-v56];
  v57 = __chkstk_darwin(v55);
  v631 = &v601[-v58];
  v59 = __chkstk_darwin(v57);
  v614 = &v601[-v60];
  v61 = __chkstk_darwin(v59);
  v633 = &v601[-v62];
  v63 = __chkstk_darwin(v61);
  v634 = &v601[-v64];
  v65 = __chkstk_darwin(v63);
  v619 = &v601[-v66];
  v67 = __chkstk_darwin(v65);
  v636 = &v601[-v68];
  v69 = __chkstk_darwin(v67);
  v637 = &v601[-v70];
  v71 = __chkstk_darwin(v69);
  v654 = &v601[-v72];
  v73 = __chkstk_darwin(v71);
  v668 = &v601[-v74];
  v75 = __chkstk_darwin(v73);
  v669 = &v601[-v76];
  __chkstk_darwin(v75);
  v671 = &v601[-v77];
  v690 = sub_100016BD4();
  v692 = *(v690 - 1);
  v78 = *(v692 + 64);
  v79 = __chkstk_darwin(v690);
  v670 = &v601[-((v80 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v81 = __chkstk_darwin(v79);
  v640 = &v601[-v82];
  v83 = __chkstk_darwin(v81);
  v639 = &v601[-v84];
  v85 = __chkstk_darwin(v83);
  v643 = &v601[-v86];
  v87 = __chkstk_darwin(v85);
  v642 = &v601[-v88];
  v89 = __chkstk_darwin(v87);
  v650 = &v601[-v90];
  v91 = __chkstk_darwin(v89);
  v648 = &v601[-v92];
  v93 = __chkstk_darwin(v91);
  v664 = &v601[-v94];
  v95 = __chkstk_darwin(v93);
  v682 = &v601[-v96];
  v97 = __chkstk_darwin(v95);
  v681 = &v601[-v98];
  __chkstk_darwin(v97);
  v680 = &v601[-v99];
  v100 = sub_100009F00(&qword_100020930, &qword_100017770);
  v101 = *(*(v100 - 8) + 64);
  v102 = __chkstk_darwin(v100 - 8);
  v657 = &v601[-((v103 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v102);
  v105 = &v601[-v104];
  v106 = sub_100016B14();
  v107 = *(v106 - 8);
  v108 = *(v107 + 64);
  v109 = __chkstk_darwin(v106);
  v644 = &v601[-((v110 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v111 = __chkstk_darwin(v109);
  v661 = &v601[-v112];
  v113 = __chkstk_darwin(v111);
  v677 = &v601[-v114];
  v115 = __chkstk_darwin(v113);
  v674 = &v601[-v116];
  v117 = __chkstk_darwin(v115);
  v673 = &v601[-v118];
  __chkstk_darwin(v117);
  v120 = &v601[-v119];
  v121 = sub_100016904();
  v122 = *(v121 - 8);
  v123 = *(v122 + 64);
  v124 = __chkstk_darwin(v121);
  v656 = &v601[-((v125 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v126 = __chkstk_darwin(v124);
  v128 = &v601[-v127];
  v129 = __chkstk_darwin(v126);
  v615 = &v601[-v130];
  v131 = __chkstk_darwin(v129);
  v638 = &v601[-v132];
  v133 = __chkstk_darwin(v131);
  v641 = &v601[-v134];
  v135 = __chkstk_darwin(v133);
  v647 = &v601[-v136];
  v137 = __chkstk_darwin(v135);
  v655 = &v601[-v138];
  v139 = __chkstk_darwin(v137);
  v651 = &v601[-v140];
  v141 = __chkstk_darwin(v139);
  v143 = &v601[-v142];
  v144 = __chkstk_darwin(v141);
  v652 = &v601[-v145];
  v146 = __chkstk_darwin(v144);
  v688 = &v601[-v147];
  v148 = __chkstk_darwin(v146);
  v679 = &v601[-v149];
  __chkstk_darwin(v148);
  v151 = &v601[-v150];
  v691 = a1;
  sub_100016B24();
  sub_100016B04();
  v152 = *(v107 + 8);
  v689 = v106;
  v686 = v152;
  v687 = v107 + 8;
  v152(v120, v106);
  v153 = *(v122 + 48);
  if (v153(v105, 1, v121) == 1)
  {
    return sub_10000C3E4(v105, &qword_100020930, &qword_100017770);
  }

  v606 = v153;
  v605 = v128;
  v608 = v143;
  (*(v122 + 32))(v151, v105, v121);
  if (qword_100020768 != -1)
  {
    swift_once();
  }

  v155 = sub_100016D94();
  v156 = sub_10000BD98(v155, qword_100020FA0);
  v157 = v692;
  v158 = *(v692 + 16);
  v159 = v680;
  v160 = v690;
  v684 = v692 + 16;
  v678 = v158;
  (v158)(v680, v691, v690);
  v161 = *(v122 + 16);
  v162 = v679;
  v675 = v151;
  v659 = v122 + 16;
  v658 = v161;
  v161(v679, v151, v121);
  v683 = v156;
  v163 = sub_100016D74();
  v164 = sub_100016E74();
  v165 = os_log_type_enabled(v163, v164);
  v665 = v121;
  v618 = v122;
  v607 = v122 + 48;
  if (v165)
  {
    v166 = v159;
    v167 = swift_slowAlloc();
    v604 = swift_slowAlloc();
    v695[0] = v604;
    *v167 = 136315394;
    LODWORD(v603) = v164;
    v168 = sub_100016BB4();
    v169 = v121;
    v171 = v170;
    v680 = *(v157 + 8);
    (v680)(v166, v160);
    v172 = sub_100015464(v168, v171, v695);

    *(v167 + 4) = v172;
    *(v167 + 12) = 2080;
    sub_10000C49C(&qword_100020938, 255, &type metadata accessor for UUID);
    v173 = sub_100016F84();
    v175 = v174;
    v679 = *(v122 + 8);
    (v679)(v162, v169);
    v176 = sub_100015464(v173, v175, v695);

    *(v167 + 14) = v176;
    _os_log_impl(&_mh_execute_header, v163, v603, "GMSSELFIngestor.processEvent() event type: %s modelManagerID %s", v167, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v679 = *(v122 + 8);
    (v679)(v162, v121);
    v680 = *(v157 + 8);
    (v680)(v159, v160);
  }

  v177 = v681;
  v178 = v691;
  v179 = v678;
  (v678)(v681, v691, v160);
  v180 = v682;
  v179(v682, v178, v160);
  v181 = sub_100016D74();
  v182 = sub_100016E74();
  if (os_log_type_enabled(v181, v182))
  {
    v183 = swift_slowAlloc();
    v604 = swift_slowAlloc();
    v695[0] = v604;
    *v183 = 136315394;
    v603 = v181;
    v184 = v673;
    v602 = v182;
    sub_100016B24();
    v185 = sub_100016AD4();
    v187 = v186;
    v188 = v689;
    v189 = v686;
    v686(v184, v689);
    if (!v187)
    {
      v185 = 0x7974706D65;
      v187 = 0xE500000000000000;
    }

    v673 = (v692 + 8);
    v190 = v177;
    v191 = v680;
    (v680)(v190, v160);
    v192 = sub_100015464(v185, v187, v695);

    *(v183 + 4) = v192;
    *(v183 + 12) = 2080;
    v193 = v674;
    sub_100016B24();
    v194 = sub_100016AE4();
    v196 = v195;
    v189(v193, v188);
    if (!v196)
    {
      v194 = 0x7974706D65;
      v196 = 0xE500000000000000;
    }

    v178 = v691;
    v197 = v160;
    v191(v180, v160);
    v198 = sub_100015464(v194, v196, v695);

    *(v183 + 14) = v198;
    v199 = v603;
    _os_log_impl(&_mh_execute_header, v603, v602, "GMSSELFIngestor.processEvent() useCaseIdentifier: %s clientRequestIdentifier: %s", v183, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v200 = v680;
    (v680)(v180, v160);
    v197 = v160;
    v200(v177, v160);
  }

  v201 = v675;
  v202 = v685;
  v203 = v688;
  if (sub_100016BB4() == 0xD000000000000021 && 0x80000001000177C0 == v204)
  {
  }

  else
  {
    v205 = sub_100016F94();

    if ((v205 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  v206 = v677;
  sub_100016B24();
  v207 = sub_100016AD4();
  v209 = v208;
  v686(v206, v689);
  if (!v209 || sub_100016020(v207, v209) == 5)
  {
LABEL_21:
    if (sub_100016BB4() == 0xD000000000000021 && 0x80000001000177C0 == v210)
    {

LABEL_25:
      sub_1000024C4(v201, v178, v676);
      goto LABEL_26;
    }

    v211 = sub_100016F94();

    if (v211)
    {
      goto LABEL_25;
    }

    if (sub_100016BB4() == 0xD00000000000001ELL && 0x8000000100017AE0 == v261)
    {
    }

    else
    {
      v284 = sub_100016F94();

      if ((v284 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    sub_100003444(v201, v178, v676);
LABEL_26:
    v212 = v202[9];
    v695[0] = sub_100016BB4();
    v695[1] = v213;
    __chkstk_darwin(v695[0]);
    *&v601[-16] = v695;
    LOBYTE(v212) = sub_10000A138(sub_10000BDD0, &v601[-32], v212);

    if ((v212 & 1) == 0)
    {
      v222 = v670;
      v223 = v690;
      (v678)(v670, v178, v690);
      v224 = sub_100016D74();
      v225 = sub_100016E74();
      if (os_log_type_enabled(v224, v225))
      {
        v226 = swift_slowAlloc();
        v227 = swift_slowAlloc();
        v695[0] = v227;
        *v226 = 136315138;
        v228 = sub_100016BB4();
        v229 = v201;
        v231 = v230;
        (v680)(v222, v223);
        v232 = sub_100015464(v228, v231, v695);

        *(v226 + 4) = v232;
        _os_log_impl(&_mh_execute_header, v224, v225, "GMS events type %s not matching event Filter", v226, 0xCu);
        sub_10000C658(v227);

        v233 = v229;
      }

      else
      {

        (v680)(v222, v223);
        v233 = v201;
      }

      v262 = v665;
      return (v679)(v233, v262);
    }

    swift_beginAccess();
    v214 = v202[3];
    v215 = v202[4];
    v216 = v202[5];

    v217 = sub_1000042E0(v201, v214, v215, v216);

    v688 = v217;
    if (!v217)
    {
      v263 = v656;
      v264 = v665;
      v658(v656, v201, v665);
      v265 = sub_100016D74();
      v266 = sub_100016E74();
      if (os_log_type_enabled(v265, v266))
      {
        v267 = swift_slowAlloc();
        v268 = swift_slowAlloc();
        v694 = v268;
        *v267 = 136315138;
        sub_10000C49C(&qword_100020938, 255, &type metadata accessor for UUID);
        v269 = sub_100016F84();
        v270 = v201;
        v272 = v271;
        v273 = v263;
        v274 = v679;
        (v679)(v273, v264);
        v275 = sub_100015464(v269, v272, &v694);

        *(v267 + 4) = v275;
        _os_log_impl(&_mh_execute_header, v265, v266, "GMS events with modelManagerID %s not found in buffer", v267, 0xCu);
        sub_10000C658(v268);

        return v274(v270, v264);
      }

      else
      {

        v321 = v679;
        (v679)(v263, v264);
        return v321(v201, v264);
      }
    }

    v218 = sub_100016BB4();
    v687 = 0x80000001000177F0;
    if (v218 == 0xD000000000000031 && 0x80000001000177F0 == v219)
    {

      v220 = v669;
      v221 = v668;
    }

    else
    {
      v276 = sub_100016F94();

      v220 = v669;
      v221 = v668;
      if ((v276 & 1) == 0)
      {
        goto LABEL_55;
      }
    }

    sub_100016B94();
    v277 = v663;
    v278 = v667;
    (*(v663 + 104))(v221, enum case for GenerativeFunctionsInstrumentationEvent.Subtype.start(_:), v667);
    (*(v277 + 56))(v221, 0, 1, v278);
    v279 = *(v660 + 48);
    v280 = v666;
    sub_10000C37C(v220, v666, &qword_100020928, &qword_100017540);
    v281 = v278;
    sub_10000C37C(v221, &v280[v279], &qword_100020928, &qword_100017540);
    v282 = *(v277 + 48);
    if (v282(v280, 1, v278) == 1)
    {
      sub_10000C3E4(v221, &qword_100020928, &qword_100017540);
      v283 = v666;
      sub_10000C3E4(v220, &qword_100020928, &qword_100017540);
      if (v282(&v283[v279], 1, v667) == 1)
      {
        sub_10000C3E4(v283, &qword_100020928, &qword_100017540);
        v201 = v675;
LABEL_67:
        v329 = v651;
        v330 = v665;
        v658(v651, v201, v665);
        v331 = sub_100016D74();
        v332 = sub_100016E74();
        if (os_log_type_enabled(v331, v332))
        {
          v333 = swift_slowAlloc();
          v334 = swift_slowAlloc();
          v694 = v334;
          *v333 = 136315138;
          sub_10000C49C(&qword_100020938, 255, &type metadata accessor for UUID);
          v335 = sub_100016F84();
          v337 = v336;
          v338 = v329;
          v339 = v679;
          (v679)(v338, v330);
          v340 = sub_100015464(v335, v337, &v694);
          v341 = v675;

          *(v333 + 4) = v340;
          _os_log_impl(&_mh_execute_header, v331, v332, "com.apple.inferenceRequest.completePromptTemplate.start event modelManagerID %s", v333, 0xCu);
          sub_10000C658(v334);
          v342 = v339;
        }

        else
        {

          v341 = v201;
          v342 = v679;
          (v679)(v329, v330);
        }

        v348 = v690;
        v349 = v672;
        (v678)(v672, v691, v690);
        (*(v692 + 56))(v349, 0, 1, v348);
        v350 = OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_promptRequestStartEvent;
        v351 = v688;
        swift_beginAccess();
        sub_10000C29C(v349, &v351[v350]);
        swift_endAccess();
        v352 = &v351[v350];
        v353 = v662;
        sub_10000C37C(v352, v662, &qword_100020920, &unk_1000175F0);
        sub_10001619C(0xD000000000000011, 0x8000000100017B40, v353);

        sub_10000C3E4(v353, &qword_100020920, &unk_1000175F0);
        sub_10000C3E4(v349, &qword_100020920, &unk_1000175F0);
        return v342(v341, v330);
      }

      goto LABEL_54;
    }

    v285 = v654;
    sub_10000C37C(v280, v654, &qword_100020928, &qword_100017540);
    if (v282(&v280[v279], 1, v278) == 1)
    {
      sub_10000C3E4(v668, &qword_100020928, &qword_100017540);
      v283 = v666;
      sub_10000C3E4(v669, &qword_100020928, &qword_100017540);
      (*(v663 + 8))(v285, v667);
LABEL_54:
      sub_10000C3E4(v283, &qword_100020910, &qword_100017530);
      v201 = v675;
      goto LABEL_55;
    }

    v323 = v663;
    v324 = v280;
    v325 = v649;
    (*(v663 + 32))(v649, &v280[v279], v281);
    sub_10000C49C(&qword_100020948, 255, &type metadata accessor for GenerativeFunctionsInstrumentationEvent.Subtype);
    v326 = v281;
    v327 = sub_100016DE4();
    v328 = *(v323 + 8);
    v328(v325, v326);
    sub_10000C3E4(v668, &qword_100020928, &qword_100017540);
    sub_10000C3E4(v669, &qword_100020928, &qword_100017540);
    v328(v285, v326);
    sub_10000C3E4(v324, &qword_100020928, &qword_100017540);
    v201 = v675;
    if (v327)
    {
      goto LABEL_67;
    }

LABEL_55:
    if (sub_100016BB4() == 0xD000000000000028 && 0x8000000100017830 == v286)
    {

      v287 = v692;
      goto LABEL_60;
    }

    v288 = sub_100016F94();

    v287 = v692;
    if (v288)
    {
LABEL_60:
      v289 = v672;
      v290 = v690;
      (v678)(v672, v178, v690);
      (*(v287 + 56))(v289, 0, 1, v290);
      v291 = OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_firstTokenEvent;
      v292 = v688;
      swift_beginAccess();
      sub_10000C29C(v289, &v292[v291]);
      swift_endAccess();
      v293 = &v292[v291];
      v294 = v662;
      sub_10000C37C(v293, v662, &qword_100020920, &unk_1000175F0);
      sub_10001619C(0x6B6F547473726966, 0xEF746E6576456E65, v294);
      sub_10000C3E4(v294, &qword_100020920, &unk_1000175F0);
      sub_10000C3E4(v289, &qword_100020920, &unk_1000175F0);
      v295 = v655;
      v296 = v665;
      v658(v655, v201, v665);
      v297 = sub_100016D74();
      v298 = sub_100016E74();
      if (os_log_type_enabled(v297, v298))
      {
        v299 = swift_slowAlloc();
        v300 = swift_slowAlloc();
        v694 = v300;
        *v299 = 136315138;
        sub_10000C49C(&qword_100020938, 255, &type metadata accessor for UUID);
        v301 = sub_100016F84();
        v303 = v302;
        v304 = v679;
        (v679)(v295, v296);
        v305 = sub_100015464(v301, v303, &v694);

        *(v299 + 4) = v305;
        _os_log_impl(&_mh_execute_header, v297, v298, "modelManagerID %s saved firstTokenEvent", v299, 0xCu);
        sub_10000C658(v300);

        return v304(v675, v296);
      }

      else
      {

        v322 = v679;
        (v679)(v295, v296);
        return v322(v201, v296);
      }
    }

    if (sub_100016BB4() == 0xD00000000000003BLL && 0x8000000100017860 == v343)
    {

LABEL_77:
      v355 = v201;
      v356 = v672;
      v357 = v690;
      v358 = v678;
      (v678)(v672, v178, v690);
      (*(v692 + 56))(v356, 0, 1, v357);
      v359 = OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_modelInfoEvent;
      v360 = v688;
      swift_beginAccess();
      sub_10000C29C(v356, &v360[v359]);
      swift_endAccess();
      v361 = &v360[v359];
      v362 = v357;
      v363 = v662;
      sub_10000C37C(v361, v662, &qword_100020920, &unk_1000175F0);
      sub_10001619C(0x666E496C65646F6DLL, 0xEE00746E6576456FLL, v363);
      sub_10000C3E4(v363, &qword_100020920, &unk_1000175F0);
      sub_10000C3E4(v356, &qword_100020920, &unk_1000175F0);
      v364 = v647;
      v365 = v665;
      v658(v647, v355, v665);
      v366 = v648;
      v358(v648, v178, v362);
      v358(v650, v178, v362);
      v367 = sub_100016D74();
      v368 = sub_100016E74();
      if (os_log_type_enabled(v367, v368))
      {
        v369 = swift_slowAlloc();
        v691 = swift_slowAlloc();
        v694 = v691;
        *v369 = 136315650;
        sub_10000C49C(&qword_100020938, 255, &type metadata accessor for UUID);
        v370 = sub_100016F84();
        v372 = v371;
        v687 = v618 + 8;
        (v679)(v364, v365);
        v373 = sub_100015464(v370, v372, &v694);

        *(v369 + 4) = v373;
        *(v369 + 12) = 2080;
        v374 = v646;
        sub_100016BA4();
        v375 = sub_100016EA4();
        v377 = v376;
        sub_10000C3E4(v374, &qword_100020908, &unk_100017790);
        v378 = v366;
        v379 = v690;
        v380 = v680;
        (v680)(v378, v690);
        v381 = sub_100015464(v375, v377, &v694);

        *(v369 + 14) = v381;
        *(v369 + 22) = 2080;
        v382 = v650;
        sub_100016B24();
        v383 = sub_100016E14();
        v385 = v384;
        v380(v382, v379);
        v386 = sub_100015464(v383, v385, &v694);

        *(v369 + 24) = v386;
        _os_log_impl(&_mh_execute_header, v367, v368, "modelManagerID %s saved modelInfoEvent %s %s", v369, 0x20u);
        swift_arrayDestroy();

        return (v679)(v675, v365);
      }

      v387 = v680;
      (v680)(v650, v362);
      v387(v366, v362);
      v388 = v679;
      (v679)(v364, v365);
      v389 = v355;
      return v388(v389, v365);
    }

    v354 = sub_100016F94();

    if (v354)
    {
      goto LABEL_77;
    }

    if (sub_100016BB4() == 0xD000000000000024 && 0x80000001000178A0 == v390)
    {

      v391 = v692;
LABEL_85:
      v393 = v672;
      v394 = v690;
      v395 = v678;
      (v678)(v672, v178, v690);
      (*(v391 + 56))(v393, 0, 1, v394);
      v396 = OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_signedInStatusEvent;
      v397 = v688;
      swift_beginAccess();
      sub_10000C29C(v393, &v397[v396]);
      swift_endAccess();
      v398 = &v397[v396];
      v399 = v394;
      v400 = v662;
      sub_10000C37C(v398, v662, &qword_100020920, &unk_1000175F0);
      sub_10001619C(0xD000000000000013, 0x8000000100017B20, v400);
      sub_10000C3E4(v400, &qword_100020920, &unk_1000175F0);
      sub_10000C3E4(v393, &qword_100020920, &unk_1000175F0);
      v401 = v641;
      v365 = v665;
      v658(v641, v675, v665);
      v402 = v642;
      v395(v642, v178, v399);
      v403 = v643;
      v395(v643, v178, v399);
      v404 = sub_100016D74();
      v405 = sub_100016E74();
      if (os_log_type_enabled(v404, v405))
      {
        v406 = swift_slowAlloc();
        v694 = swift_slowAlloc();
        *v406 = 136315650;
        sub_10000C49C(&qword_100020938, 255, &type metadata accessor for UUID);
        LODWORD(v687) = v405;
        v407 = sub_100016F84();
        v409 = v408;
        v691 = v618 + 8;
        (v679)(v401, v365);
        v410 = sub_100015464(v407, v409, &v694);

        *(v406 + 4) = v410;
        *(v406 + 12) = 2080;
        v411 = v646;
        sub_100016BA4();
        v412 = sub_100016EA4();
        v414 = v413;
        sub_10000C3E4(v411, &qword_100020908, &unk_100017790);
        v415 = v402;
        v416 = v690;
        v417 = v680;
        (v680)(v415, v690);
        v418 = sub_100015464(v412, v414, &v694);

        *(v406 + 14) = v418;
        *(v406 + 22) = 2080;
        v419 = v643;
        sub_100016B24();
        v420 = sub_100016E14();
        v422 = v421;
        v417(v419, v416);
        v423 = sub_100015464(v420, v422, &v694);

        *(v406 + 24) = v423;
        _os_log_impl(&_mh_execute_header, v404, v687, "modelManagerID %s saved blackpowder.SignedInStatusEvent  %s %s", v406, 0x20u);
        swift_arrayDestroy();

        return (v679)(v675, v365);
      }

      v424 = v680;
      (v680)(v403, v399);
      v424(v402, v399);
      v388 = v679;
      (v679)(v401, v365);
      v389 = v675;
      return v388(v389, v365);
    }

    v392 = sub_100016F94();

    v391 = v692;
    if (v392)
    {
      goto LABEL_85;
    }

    if (sub_100016BB4() == 0xD000000000000025 && 0x80000001000178D0 == v425)
    {

      v426 = v640;
      v427 = v639;
      v428 = v638;
LABEL_92:
      v430 = v665;
      v658(v428, v201, v665);
      v431 = v690;
      v432 = v678;
      (v678)(v427, v178, v690);
      v432(v426, v178, v431);
      v433 = sub_100016D74();
      v434 = sub_100016E74();
      if (os_log_type_enabled(v433, v434))
      {
        v435 = swift_slowAlloc();
        v687 = swift_slowAlloc();
        v694 = v687;
        *v435 = 136315650;
        sub_10000C49C(&qword_100020938, 255, &type metadata accessor for UUID);
        LODWORD(v686) = v434;
        v436 = sub_100016F84();
        v438 = v437;
        v439 = v679;
        (v679)(v428, v665);
        v440 = sub_100015464(v436, v438, &v694);

        *(v435 + 4) = v440;
        *(v435 + 12) = 2080;
        v441 = v646;
        sub_100016BA4();
        v442 = sub_100016EA4();
        v444 = v443;
        sub_10000C3E4(v441, &qword_100020908, &unk_100017790);
        v445 = v692;
        v446 = v680;
        (v680)(v427, v690);
        v447 = sub_100015464(v442, v444, &v694);

        *(v435 + 14) = v447;
        *(v435 + 22) = 2080;
        sub_100016B24();
        v448 = sub_100016E14();
        v450 = v449;
        v451 = v426;
        v452 = v439;
        v446(v451, v690);
        v453 = sub_100015464(v448, v450, &v694);
        v430 = v665;
        v454 = v675;

        *(v435 + 24) = v453;
        v455 = v445;
        _os_log_impl(&_mh_execute_header, v433, v686, "modelManagerID %s saved webSearchStatusEvent  %s %s", v435, 0x20u);
        swift_arrayDestroy();

        v431 = v690;
      }

      else
      {

        v455 = v692;
        v456 = v201;
        v457 = v427;
        v458 = v680;
        (v680)(v426, v431);
        v459 = v457;
        v454 = v456;
        v458(v459, v431);
        v452 = v679;
        (v679)(v428, v430);
      }

      v460 = v672;
      (v678)(v672, v691, v431);
      (*(v455 + 56))(v460, 0, 1, v431);
      v461 = OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_webSearchStatusEvent;
      v462 = v688;
      swift_beginAccess();
      sub_10000C29C(v460, &v462[v461]);
      swift_endAccess();
      v463 = &v462[v461];
      v464 = v662;
      sub_10000C37C(v463, v662, &qword_100020920, &unk_1000175F0);
      sub_10001619C(0xD000000000000014, 0x8000000100017B00, v464);

      sub_10000C3E4(v464, &qword_100020920, &unk_1000175F0);
      sub_10000C3E4(v460, &qword_100020920, &unk_1000175F0);
      return v452(v454, v430);
    }

    v429 = sub_100016F94();

    v426 = v640;
    v427 = v639;
    v428 = v638;
    if (v429)
    {
      goto LABEL_92;
    }

    if (sub_100016BB4() == 0xD000000000000031 && v687 == v465)
    {

      v466 = v635;
      v467 = v637;
      v468 = v636;
    }

    else
    {
      v469 = v201;
      v470 = sub_100016F94();

      v466 = v635;
      v467 = v637;
      v468 = v636;
      if ((v470 & 1) == 0)
      {
        v486 = v469;
LABEL_115:
        (v679)(v486, v665);
      }
    }

    sub_100016B94();
    v471 = v663;
    v472 = *(v663 + 104);
    LODWORD(v682) = enum case for GenerativeFunctionsInstrumentationEvent.Subtype.end(_:);
    v473 = v667;
    v692 = v663 + 104;
    v690 = v472;
    v472(v468);
    v686 = *(v471 + 56);
    v687 = v471 + 56;
    (v686)(v468, 0, 1, v473);
    v474 = *(v660 + 48);
    sub_10000C37C(v467, v466, &qword_100020928, &qword_100017540);
    v475 = v473;
    sub_10000C37C(v468, v466 + v474, &qword_100020928, &qword_100017540);
    v476 = v471 + 48;
    v477 = *(v471 + 48);
    v478 = v477(v466, 1, v473);
    v684 = v476;
    v689 = v477;
    if (v478 == 1)
    {
      sub_10000C3E4(v468, &qword_100020928, &qword_100017540);
      sub_10000C3E4(v467, &qword_100020928, &qword_100017540);
      if (v477(v466 + v474, 1, v473) == 1)
      {
        goto LABEL_109;
      }
    }

    else
    {
      v479 = v619;
      sub_10000C37C(v466, v619, &qword_100020928, &qword_100017540);
      if (v477(v466 + v474, 1, v475) != 1)
      {
        v488 = v479;
        v489 = v663;
        v490 = v649;
        (*(v663 + 32))(v649, v466 + v474, v475);
        sub_10000C49C(&qword_100020948, 255, &type metadata accessor for GenerativeFunctionsInstrumentationEvent.Subtype);
        v491 = v475;
        v492 = sub_100016DE4();
        v493 = *(v489 + 8);
        v493(v490, v491);
        sub_10000C3E4(v636, &qword_100020928, &qword_100017540);
        sub_10000C3E4(v637, &qword_100020928, &qword_100017540);
        v493(v488, v491);
        sub_10000C3E4(v466, &qword_100020928, &qword_100017540);
        if (v492)
        {
          goto LABEL_119;
        }

        goto LABEL_106;
      }

      sub_10000C3E4(v636, &qword_100020928, &qword_100017540);
      sub_10000C3E4(v637, &qword_100020928, &qword_100017540);
      (*(v663 + 8))(v479, v475);
    }

    sub_10000C3E4(v466, &qword_100020910, &qword_100017530);
LABEL_106:
    v480 = v634;
    sub_100016B94();
    v481 = v633;
    v482 = v667;
    (v690)(v633, enum case for GenerativeFunctionsInstrumentationEvent.Subtype.fail(_:), v667);
    (v686)(v481, 0, 1, v482);
    v483 = *(v660 + 48);
    v484 = v626;
    sub_10000C37C(v480, v626, &qword_100020928, &qword_100017540);
    sub_10000C37C(v481, &v484[v483], &qword_100020928, &qword_100017540);
    v485 = v689;
    if (v689(v484, 1, v482) == 1)
    {
      sub_10000C3E4(v633, &qword_100020928, &qword_100017540);
      sub_10000C3E4(v634, &qword_100020928, &qword_100017540);
      if (v485(&v484[v483], 1, v482) == 1)
      {
        v466 = v484;
LABEL_109:
        sub_10000C3E4(v466, &qword_100020928, &qword_100017540);
        goto LABEL_119;
      }

      goto LABEL_113;
    }

    v487 = v614;
    sub_10000C37C(v484, v614, &qword_100020928, &qword_100017540);
    if (v485(&v484[v483], 1, v482) == 1)
    {
      sub_10000C3E4(v633, &qword_100020928, &qword_100017540);
      sub_10000C3E4(v634, &qword_100020928, &qword_100017540);
      (*(v663 + 8))(v487, v482);
LABEL_113:
      sub_10000C3E4(v484, &qword_100020910, &qword_100017530);
LABEL_114:
      v486 = v675;
      goto LABEL_115;
    }

    v494 = v663;
    v495 = v649;
    (*(v663 + 32))(v649, &v484[v483], v482);
    sub_10000C49C(&qword_100020948, 255, &type metadata accessor for GenerativeFunctionsInstrumentationEvent.Subtype);
    v496 = sub_100016DE4();
    v497 = *(v494 + 8);
    v497(v495, v482);
    sub_10000C3E4(v633, &qword_100020928, &qword_100017540);
    sub_10000C3E4(v634, &qword_100020928, &qword_100017540);
    v497(v487, v482);
    sub_10000C3E4(v484, &qword_100020928, &qword_100017540);
    if ((v496 & 1) == 0)
    {
      goto LABEL_114;
    }

LABEL_119:
    v498 = OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_requestLinkAndMonoTimeStamp;
    v499 = v688;
    swift_beginAccess();
    v500 = &v499[v498];
    v501 = v620;
    sub_10000C37C(v500, v620, &qword_100020918, &qword_100017538);
    v502 = sub_100009F00(&qword_100020778, &unk_1000176A0);
    if ((*(*(v502 - 8) + 48))(v501, 1, v502) == 1)
    {
      sub_10000C3E4(v501, &qword_100020918, &qword_100017538);
      v503 = sub_100016D74();
      v504 = sub_100016E74();
      if (os_log_type_enabled(v503, v504))
      {
        v505 = swift_slowAlloc();
        *v505 = 0;
        _os_log_impl(&_mh_execute_header, v503, v504, "Request Link is empty due to missing critical info", v505, 2u);
      }

      v506 = v623;
      v507 = v622;
    }

    else
    {
      v508 = *v501;
      v509 = *(v502 + 48);
      v510 = v628;
      v511 = v501 + v509;
      v512 = v621;
      v513 = v629;
      (*(v628 + 32))(v621, v511, v629);
      v514 = v627;
      (*(v510 + 16))(v627, v512, v513);
      (*(v510 + 56))(v514, 0, 1, v513);
      v515 = v508;
      sub_10000BECC(v508, v676, v514, "emit SELF requestLink %s", "requestLink is nil");

      sub_10000C3E4(v514, &qword_100020900, &qword_100017528);
      v516 = v515;
      v517 = sub_100016D74();
      v518 = sub_100016E74();

      if (os_log_type_enabled(v517, v518))
      {
        v519 = swift_slowAlloc();
        v520 = swift_slowAlloc();
        v693 = v520;
        *v519 = 136315138;
        v521 = [v516 formattedJsonBody];
        if (v521)
        {
          v522 = v521;
          v523 = sub_100016E04();
          v525 = v524;
        }

        else
        {
          v523 = 0x7974706D65;
          v525 = 0xE500000000000000;
        }

        v526 = sub_100015464(v523, v525, &v693);

        *(v519 + 4) = v526;
        _os_log_impl(&_mh_execute_header, v517, v518, "Add RequestLink to the data pool :%s", v519, 0xCu);
        sub_10000C658(v520);
      }

      else
      {
      }

      (*(v628 + 8))(v621, v629);
      v506 = v623;
      v507 = v622;
    }

    v527 = v649;
    v528 = v667;
    (v690)(v649, enum case for GenerativeFunctionsInstrumentationEvent.Subtype.start(_:), v667);
    sub_10000E018(v691, v527, v507);
    v681 = *(v663 + 8);
    v680 = (v663 + 8);
    (v681)(v527, v528);
    v529 = sub_100009F00(&qword_100020940, &qword_100017548);
    v530 = *(v529 - 8);
    v531 = *(v530 + 48);
    v678 = v529;
    v677 = v531;
    v674 = (v530 + 48);
    if ((v531)(v507, 1) == 1)
    {
      sub_10000C3E4(v507, &qword_1000208F8, &qword_100017520);
    }

    else
    {
      v532 = *v507;
      v533 = v628;
      v534 = v612;
      v535 = v629;
      (*(v628 + 32))(v612, v507 + v678[12], v629);
      v536 = v627;
      (*(v533 + 16))(v627, v534, v535);
      (*(v533 + 56))(v536, 0, 1, v535);
      v537 = v532;
      sub_10000BECC(v532, v676, v536, "emit SELF event %s", "emit nil SELF event");

      sub_10000C3E4(v536, &qword_100020900, &qword_100017528);
      (*(v533 + 8))(v534, v535);
    }

    v538 = v631;
    sub_100016B94();
    v539 = v630;
    v540 = v667;
    (v690)(v630, v682, v667);
    (v686)(v539, 0, 1, v540);
    v541 = *(v660 + 48);
    sub_10000C37C(v538, v506, &qword_100020928, &qword_100017540);
    sub_10000C37C(v539, v506 + v541, &qword_100020928, &qword_100017540);
    v542 = v689;
    if (v689(v506, 1, v540) == 1)
    {
      sub_10000C3E4(v630, &qword_100020928, &qword_100017540);
      sub_10000C3E4(v631, &qword_100020928, &qword_100017540);
      if (v542(v506 + v541, 1, v540) == 1)
      {
        sub_10000C3E4(v506, &qword_100020928, &qword_100017540);
LABEL_140:
        v658(v615, v675, v665);
        v549 = sub_100016D74();
        v550 = sub_100016E74();
        if (os_log_type_enabled(v549, v550))
        {
          v551 = swift_slowAlloc();
          v552 = swift_slowAlloc();
          v693 = v552;
          *v551 = 136315138;
          sub_10000C49C(&qword_100020938, 255, &type metadata accessor for UUID);
          v553 = v615;
          v554 = v665;
          v555 = sub_100016F84();
          v557 = v556;
          (v679)(v553, v554);
          v558 = sub_100015464(v555, v557, &v693);

          *(v551 + 4) = v558;
          _os_log_impl(&_mh_execute_header, v549, v550, "End event modelManagerID %s", v551, 0xCu);
          sub_10000C658(v552);
        }

        else
        {

          (v679)(v615, v665);
        }

        v559 = v649;
        v560 = v667;
        (v690)(v649, v682, v667);
        v561 = v616;
        sub_10000E018(v691, v559, v616);
        (v681)(v559, v560);
        if ((v677)(v561, 1, v678) == 1)
        {
          sub_10000C3E4(v616, &qword_1000208F8, &qword_100017520);
        }

        else
        {
          v562 = *v616;
          v563 = v628;
          v564 = v609;
          v565 = v629;
          (*(v628 + 32))(v609, v616 + v678[12], v629);
          v566 = v627;
          (*(v563 + 16))(v627, v564, v565);
          (*(v563 + 56))(v566, 0, 1, v565);
          v567 = v562;
          sub_10000BECC(v562, v676, v566, "emit SELF event %s", "emit nil SELF event");

          sub_10000C3E4(v566, &qword_100020900, &qword_100017528);
          (*(v563 + 8))(v564, v565);
        }

LABEL_146:
        v568 = v624;
        sub_100016B94();
        v569 = enum case for GenerativeFunctionsInstrumentationEvent.Subtype.fail(_:);
        v570 = v632;
        v571 = v667;
        (v690)(v632, enum case for GenerativeFunctionsInstrumentationEvent.Subtype.fail(_:), v667);
        (v686)(v570, 0, 1, v571);
        v572 = *(v660 + 48);
        v573 = v625;
        sub_10000C37C(v568, v625, &qword_100020928, &qword_100017540);
        sub_10000C37C(v570, &v573[v572], &qword_100020928, &qword_100017540);
        v574 = v689;
        if (v689(v573, 1, v571) == 1)
        {
          sub_10000C3E4(v632, &qword_100020928, &qword_100017540);
          sub_10000C3E4(v568, &qword_100020928, &qword_100017540);
          if (v574(&v573[v572], 1, v571) == 1)
          {
            sub_10000C3E4(v573, &qword_100020928, &qword_100017540);
            v575 = v675;
LABEL_153:
            v658(v605, v575, v665);
            v580 = sub_100016D74();
            v581 = sub_100016E74();
            if (os_log_type_enabled(v580, v581))
            {
              v582 = swift_slowAlloc();
              v583 = swift_slowAlloc();
              v693 = v583;
              *v582 = 136315138;
              sub_10000C49C(&qword_100020938, 255, &type metadata accessor for UUID);
              v584 = v605;
              v585 = v665;
              v586 = sub_100016F84();
              v588 = v587;
              (v679)(v584, v585);
              v589 = sub_100015464(v586, v588, &v693);

              *(v582 + 4) = v589;
              _os_log_impl(&_mh_execute_header, v580, v581, "Failed event modelManagerID %s", v582, 0xCu);
              sub_10000C658(v583);
            }

            else
            {

              (v679)(v605, v665);
            }

            v590 = v649;
            v591 = v667;
            (v690)(v649, v569, v667);
            v592 = v617;
            sub_10000E018(v691, v590, v617);
            (v681)(v590, v591);
            if ((v677)(v592, 1, v678) == 1)
            {
              sub_10000C3E4(v617, &qword_1000208F8, &qword_100017520);
            }

            else
            {
              v593 = *v617;
              v594 = v628;
              v595 = v610;
              v596 = v629;
              (*(v628 + 32))(v610, v617 + v678[12], v629);
              v597 = v627;
              (*(v594 + 16))(v627, v595, v596);
              (*(v594 + 56))(v597, 0, 1, v596);
              v598 = v593;
              sub_10000BECC(v593, v676, v597, "emit SELF event %s", "emit nil SELF event");

              sub_10000C3E4(v597, &qword_100020900, &qword_100017528);
              (*(v594 + 8))(v595, v596);
            }

            goto LABEL_159;
          }
        }

        else
        {
          v576 = v613;
          sub_10000C37C(v573, v613, &qword_100020928, &qword_100017540);
          if (v574(&v573[v572], 1, v571) != 1)
          {
            v577 = v649;
            (*(v663 + 32))(v649, &v573[v572], v571);
            sub_10000C49C(&qword_100020948, 255, &type metadata accessor for GenerativeFunctionsInstrumentationEvent.Subtype);
            v578 = sub_100016DE4();
            v579 = v681;
            (v681)(v577, v571);
            sub_10000C3E4(v632, &qword_100020928, &qword_100017540);
            sub_10000C3E4(v568, &qword_100020928, &qword_100017540);
            v579(v576, v571);
            sub_10000C3E4(v573, &qword_100020928, &qword_100017540);
            v575 = v675;
            if ((v578 & 1) == 0)
            {
LABEL_160:
              v599 = v608;
              v600 = v665;
              v658(v608, v575, v665);
              swift_beginAccess();
              sub_1000030E4(0, v599, sub_10000C6AC, sub_10000C6AC);
              swift_endAccess();

              v233 = v575;
              v262 = v600;
              return (v679)(v233, v262);
            }

            goto LABEL_153;
          }

          sub_10000C3E4(v632, &qword_100020928, &qword_100017540);
          sub_10000C3E4(v568, &qword_100020928, &qword_100017540);
          (v681)(v576, v571);
        }

        sub_10000C3E4(v573, &qword_100020910, &qword_100017530);
LABEL_159:
        v575 = v675;
        goto LABEL_160;
      }
    }

    else
    {
      v543 = v611;
      sub_10000C37C(v506, v611, &qword_100020928, &qword_100017540);
      if (v542(v506 + v541, 1, v540) != 1)
      {
        v544 = v506 + v541;
        v545 = v649;
        (*(v663 + 32))(v649, v544, v540);
        sub_10000C49C(&qword_100020948, 255, &type metadata accessor for GenerativeFunctionsInstrumentationEvent.Subtype);
        v546 = sub_100016DE4();
        v547 = v545;
        v548 = v681;
        (v681)(v547, v540);
        sub_10000C3E4(v630, &qword_100020928, &qword_100017540);
        sub_10000C3E4(v631, &qword_100020928, &qword_100017540);
        v548(v543, v540);
        sub_10000C3E4(v506, &qword_100020928, &qword_100017540);
        if ((v546 & 1) == 0)
        {
          goto LABEL_146;
        }

        goto LABEL_140;
      }

      sub_10000C3E4(v630, &qword_100020928, &qword_100017540);
      sub_10000C3E4(v631, &qword_100020928, &qword_100017540);
      (v681)(v543, v540);
    }

    sub_10000C3E4(v506, &qword_100020910, &qword_100017530);
    goto LABEL_146;
  }

  v234 = sub_100016D74();
  v235 = sub_100016E74();
  if (os_log_type_enabled(v234, v235))
  {
    v236 = swift_slowAlloc();
    *v236 = 0;
    _os_log_impl(&_mh_execute_header, v234, v235, "GMSSELFIngestor.processEvent() event type: com.apple.mm.executeRequest.begin", v236, 2u);
  }

  v237 = v665;
  v658(v203, v201, v665);
  v238 = v664;
  v239 = v678;
  (v678)(v664, v178, v197);
  v691 = sub_100016BB4();
  v240 = v197;
  v682 = v241;
  v242 = v671;
  sub_100016B94();
  v243 = type metadata accessor for PartnerCloudRequestEvents();
  v244 = *(v243 + 48);
  v245 = *(v243 + 52);
  v246 = swift_allocObject();
  v247 = *(v692 + 56);
  v247(v246 + OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_promptRequestStartEvent, 1, 1, v197);
  v247(v246 + OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_firstTokenEvent, 1, 1, v197);
  v247(v246 + OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_modelInfoEvent, 1, 1, v197);
  v247(v246 + OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_signedInStatusEvent, 1, 1, v197);
  v247(v246 + OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_webSearchStatusEvent, 1, 1, v197);
  v248 = OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_requestLinkAndMonoTimeStamp;
  v249 = sub_100009F00(&qword_100020778, &unk_1000176A0);
  (*(*(v249 - 8) + 56))(v246 + v248, 1, 1, v249);
  v658((v246 + OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_requestIdentifier), v688, v237);
  *(v246 + OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_inferenceRequestType) = 5;
  v239(v246 + OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_clientRequestStartEvent, v238, v240);
  *(v246 + OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_ingestor) = v685;
  v250 = (v246 + OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_eventType);
  v251 = v682;
  *v250 = v691;
  v250[1] = v251;
  sub_10000C37C(v242, v246 + OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_eventSubType, &qword_100020928, &qword_100017540);
  v252 = v672;
  v239(v672, v238, v240);
  v247(v252, 0, 1, v240);

  sub_10001619C(0xD000000000000017, 0x8000000100017B60, v252);
  sub_10000C3E4(v252, &qword_100020920, &unk_1000175F0);
  v253 = v661;
  sub_100016B24();
  v254 = sub_100016AE4();
  v256 = v255;
  v686(v253, v689);
  if (v256)
  {
    v257 = v657;
    sub_1000168C4();
    v258 = v665;
    if (v606(v257, 1, v665) == 1)
    {

      sub_10000C3E4(v671, &qword_100020928, &qword_100017540);
      (v680)(v238, v690);
      v259 = v679;
      (v679)(v688, v258);
      sub_10000C3E4(v257, &qword_100020930, &qword_100017770);
      v260 = v258;
    }

    else
    {
      sub_10000C3E4(v257, &qword_100020930, &qword_100017770);
      v306 = v688;
      sub_1000168D4();
      v307 = v653;
      sub_10000F204(46, 0x3Eu, v308, v653);

      v309 = OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_requestLinkAndMonoTimeStamp;
      swift_beginAccess();
      sub_10000C30C(v307, v246 + v309);
      swift_endAccess();
      v310 = v652;
      v658(v652, v306, v258);

      v311 = sub_100016D74();
      v312 = sub_100016E74();

      if (os_log_type_enabled(v311, v312))
      {
        v313 = swift_slowAlloc();
        v691 = swift_slowAlloc();
        v695[0] = v691;
        *v313 = 136315394;
        v314 = sub_100015464(v254, v256, v695);

        *(v313 + 4) = v314;
        *(v313 + 12) = 2080;
        v315 = sub_1000168D4();
        v317 = v316;
        v318 = v310;
        v260 = v665;
        v319 = v679;
        (v679)(v318, v665);
        v320 = sub_100015464(v315, v317, v695);

        *(v313 + 14) = v320;
        _os_log_impl(&_mh_execute_header, v311, v312, "RequestLink sourceID:%s sourceComponent: COMPONENTNAME_TRACE, targetID %s targetComponent: COMPONENTNAME_GMS", v313, 0x16u);
        swift_arrayDestroy();

        v259 = v319;

        sub_10000C3E4(v671, &qword_100020928, &qword_100017540);
        (v680)(v664, v690);
        v319(v688, v260);
      }

      else
      {

        v344 = v310;
        v260 = v665;
        v259 = v679;
        (v679)(v344, v665);
        sub_10000C3E4(v671, &qword_100020928, &qword_100017540);
        (v680)(v664, v690);
        v259(v306, v260);
      }
    }
  }

  else
  {
    sub_10000C3E4(v671, &qword_100020928, &qword_100017540);
    (v680)(v238, v240);
    v260 = v665;
    v259 = v679;
    (v679)(v688, v665);
  }

  v345 = v608;
  v346 = v675;
  v658(v608, v675, v260);
  swift_beginAccess();

  sub_1000030E4(v347, v345, sub_10000C6AC, sub_10000C6AC);
  swift_endAccess();

  return (v259)(v346, v260);
}

uint64_t sub_100009A28()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];

  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];

  v7 = v0[9];

  v8 = v0[10];

  return _swift_deallocClassInstance(v0, 88, 7);
}

uint64_t sub_100009AB0(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100009B48;

  return sub_1000017CC(a1);
}

uint64_t sub_100009B48()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100009C3C()
{
  v0 = type metadata accessor for GMSSELFIngestor();
  v2 = sub_10000C49C(&qword_1000208C8, v1, type metadata accessor for GMSSELFIngestor);

  return IngestionExtension.configuration.getter(v0, v2);
}

void *sub_100009CBC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for GMSSELFIngestor();
  v2 = swift_allocObject();
  *(v2 + 16) = 1;
  v3 = sub_10000A09C(&_swiftEmptyArrayStorage, sub_10000BBB4);
  *(v2 + 24) = 0;
  *(v2 + 32) = &_swiftEmptyArrayStorage;
  *(v2 + 40) = v3;
  result = sub_10000A09C(&_swiftEmptyArrayStorage, sub_10000B9D8);
  *(v2 + 48) = 0;
  *(v2 + 56) = &_swiftEmptyArrayStorage;
  *(v2 + 64) = result;
  *(v2 + 72) = &off_10001C970;
  *(v2 + 80) = &off_10001C9F0;
  *a1 = v2;
  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for GMSSELFIngestor();
  sub_10000C49C(&qword_100020770, v3, type metadata accessor for GMSSELFIngestor);
  sub_100016A14();
  return 0;
}

uint64_t sub_100009E1C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100016BD4();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t variable initialization expression of PartnerCloudRequestEvents.requestLinkAndMonoTimeStamp@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100009F00(&qword_100020778, &unk_1000176A0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_100009F00(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *sub_10000A014(uint64_t a1, uint64_t a2)
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

  sub_100009F00(&qword_1000208E0, &qword_100017510);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_10000A09C(unint64_t a1, void (*a2)(char *, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v5 = sub_100016F44();
  if (!v5)
  {
LABEL_7:

    return &_swiftEmptyArrayStorage;
  }

  v6 = v5;
  v7 = sub_10000A014(v5, 0);
  a2(v7 + 32, v6, a1);
  v9 = v8;

  result = v7;
  if (v9 != v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_10000A138(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_10000A1E4(uint64_t a1)
{
  v3 = sub_100016904();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, v3);
  v8 = v1 + 1;
  v9 = v1[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v1[1] = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10000B654(0, *(v9 + 16) + 1, 1);
    v9 = *v8;
  }

  v12 = *(v9 + 16);
  v11 = *(v9 + 24);
  if (v12 >= v11 >> 1)
  {
    sub_10000B654(v11 > 1, v12 + 1, 1);
    v9 = *v8;
  }

  *(v9 + 16) = v12 + 1;
  result = (*(v4 + 32))(v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v12, v7, v3);
  v1[1] = v9;
  v14 = *v1;
  if (*v1)
  {
    swift_beginAccess();
    v15 = *(v14 + 16);
    if (sub_1000169C4() > v12)
    {
      v16 = *v1;
      result = swift_isUniquelyReferenced_native();
      v17 = *v1;
      if ((result & 1) == 0)
      {
        if (!v17)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v18 = *v1;
        v19 = sub_1000169E4();

        *v1 = v19;
        v17 = v19;
      }

      if (v17)
      {
        v20 = *(v17 + 16);
        v21 = *(*v8 + 16) + ~(*(v17 + 24) >> 6);
        return sub_100016984();
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v12 < 0xF)
  {
    return result;
  }

  return sub_10000A728();
}

unint64_t sub_10000A42C@<X0>(int64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = v3[1];
  v7 = *(v6 + 16);
  v8 = *v3;
  if (!*v3)
  {
    if (!v7)
    {
      goto LABEL_16;
    }

    return sub_10000A590(a1, a3);
  }

  swift_beginAccess();
  if ((*(v8 + 16) & 0x3FLL) == (*(v8 + 24) & 0x3FLL))
  {
    if (!v7)
    {
      goto LABEL_16;
    }
  }

  else if (v7 <= sub_1000169D4())
  {
LABEL_16:
    sub_10000A590(a1, a3);
    return sub_10000A728();
  }

  v10 = *v3;
  result = swift_isUniquelyReferenced_native();
  v12 = *v3;
  if ((result & 1) == 0)
  {
    if (!v12)
    {
      goto LABEL_20;
    }

    v13 = *v3;
    v14 = sub_1000169E4();

    *v3 = v14;
    v12 = v14;
  }

  if (v12)
  {

    result = sub_10000A9C8(a2, (v12 + 16), v12 + 32, v3);
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (a1 + 1 >= a1)
    {

      sub_10000AD20(a1, a1 + 1, v6, (v12 + 16), v12 + 32);

      return sub_10000A590(a1, a3);
    }

    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10000A590@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10000A7C8(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = sub_100016904();
    v10 = *(v9 - 8);
    v11 = *(v10 + 72);
    v12 = v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + v11 * a1;
    result = (*(v10 + 32))(a2, v12, v9);
    if (v11 > 0 || v12 >= v12 + v11 + v11 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v11)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_10000A694(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if ((result & 1) == 0)
  {
    result = a2(v5);
    v5 = result;
    *v2 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 8 * a1;
    v10 = *(v9 + 32);
    memmove((v9 + 32), (v9 + 40), 8 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    sub_100016F14();
    return v10;
  }

  return result;
}

uint64_t sub_10000A728()
{
  v1 = *v0;
  if (*v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 24) & 0x3FLL;
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[1];
  if (v2 || *(v3 + 16) >= 0x10uLL)
  {
    v5 = sub_1000169F4();
    if (v2 <= v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = v2;
    }

    v4 = sub_10000B31C(v3, v6, 0, v2);
  }

  else
  {
    v4 = 0;
  }

  *v0 = v4;
  return result;
}

size_t sub_10000A7F0(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100009F00(&qword_100020968, &qword_100017558);
  v10 = *(sub_100016904() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100016904() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_10000A9C8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v28 = a4;
  v7 = sub_100016904();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100016964();
  *&v29 = a2;
  *(&v29 + 1) = a3;
  *&v30 = a1;
  *(&v30 + 1) = v12;
  *&v31 = v13;
  *(&v31 + 1) = v14;
  v32 = 0;
  sub_1000169B4();
  if (*(&v30 + 1))
  {
    v27[0] = a3;
    v15 = sub_100016974();
    v27[1] = v8 + 16;
    while (1)
    {
      v37 = v29;
      v38 = v30;
      v39 = v31;
      v40 = v32;
      result = sub_100016994();
      if (v18)
      {
LABEL_24:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v19 = *(v28 + 8);
      if (result >= *(v19 + 16))
      {
        goto LABEL_22;
      }

      v20 = *a2;
      (*(v8 + 16))(v11, v19 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * result, v7);
      sub_10000C49C(&qword_100020960, 255, &type metadata accessor for UUID);
      v21 = sub_100016DC4();
      result = (*(v8 + 8))(v11, v7);
      v22 = 1 << *a2;
      v23 = v22 - 1;
      if (__OFSUB__(v22, 1))
      {
        goto LABEL_23;
      }

      v24 = v23 & v21;
      if (a1 >= v15)
      {
        if (v24 < v15)
        {
          goto LABEL_5;
        }
      }

      else if (v24 >= v15)
      {
        goto LABEL_15;
      }

      if (a1 >= v24)
      {
LABEL_15:
        v33 = v29;
        v34 = v30;
        v35 = v31;
        v36 = v32;
        v25 = sub_100016994();
        if ((v26 & 1) == 0)
        {
          v16 = ((v23 & ((v25 - (a2[1] >> 6)) >> 63)) + v25 - (a2[1] >> 6)) ^ v23;
        }

        a1 = v34;
        sub_100016984();
      }

LABEL_5:
      sub_1000169B4();
      if (!*(&v30 + 1))
      {
        return sub_100016984();
      }
    }
  }

  return sub_100016984();
}

void sub_10000AD20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v10 = sub_100016904();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = (__chkstk_darwin)();
  v15 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v64 - v16;
  v18 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v18 >= 1)
  {
    v19 = *(a3 + 16);
    if (a1 >= (v19 - v18) / 2)
    {
      v65 = a3;
      if (__OFSUB__(v19, a2))
      {
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v70 = v19;
      v38 = *a4;
      if (v19 - a2 >= sub_1000169C4() / 3)
      {
LABEL_51:
        v59 = sub_100016964();
        *&v71 = a4;
        *(&v71 + 1) = a5;
        *&v72 = 0;
        *(&v72 + 1) = v59;
        *&v73 = v60;
        *(&v73 + 1) = v61;
        v74 = 0;
        while (1)
        {
          v75 = v71;
          v76 = v72;
          v77 = v73;
          v78 = v74;
          v62 = sub_100016994();
          if ((v63 & 1) == 0 && v62 >= a2)
          {
            if (__OFSUB__(v62, v18))
            {
              goto LABEL_59;
            }

            sub_1000169A4();
          }

          sub_1000169B4();
          if (!v72)
          {
            return;
          }
        }
      }

      if (v70 < a2)
      {
        goto LABEL_69;
      }

      if (a2 < 0)
      {
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      if (v70 != a2)
      {
        if (v70 <= a2)
        {
LABEL_71:
          __break(1u);
          return;
        }

        v68 = v65 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
        v40 = *(v11 + 16);
        v39 = v11 + 16;
        v66 = *(v39 + 56);
        v67 = v40;
        v69 = v39;
        v41 = (v39 - 8);

        while (1)
        {
          v67(v15, v68 + v66 * a2, v10);
          v42 = *a4;
          sub_10000C49C(&qword_100020960, 255, &type metadata accessor for UUID);
          v43 = sub_100016DC4();
          (*v41)(v15, v10);
          v44 = 1 << *a4;
          v26 = __OFSUB__(v44, 1);
          v45 = v44 - 1;
          if (v26)
          {
            goto LABEL_60;
          }

          v46 = v45 & v43;
          v47 = sub_100016964();
          *&v71 = a4;
          *(&v71 + 1) = a5;
          *&v72 = v46;
          *(&v72 + 1) = v47;
          *&v73 = v48;
          *(&v73 + 1) = v49;
          v74 = 0;
          while (*(&v72 + 1))
          {
            v75 = v71;
            v76 = v72;
            v77 = v73;
            v78 = v74;
            v50 = sub_100016994();
            if ((v51 & 1) == 0 && v50 == a2)
            {
              break;
            }

            sub_1000169B4();
          }

          v52 = (a2 + 1);
          v53 = __OFADD__(a2, 1);
          if (__OFSUB__(a2, v18))
          {
            goto LABEL_61;
          }

          sub_1000169A4();
          if (v53)
          {
            goto LABEL_62;
          }

          ++a2;
          if (v52 == v70)
          {

            return;
          }
        }
      }
    }

    else
    {
      a2 = *(a3 + 16);
      v20 = *a4;
      if (sub_1000169C4() / 3 <= a1)
      {
        v54 = sub_100016964();
        *&v71 = a4;
        *(&v71 + 1) = a5;
        *&v72 = 0;
        *(&v72 + 1) = v54;
        *&v73 = v55;
        *(&v73 + 1) = v56;
        v74 = 0;
        while (1)
        {
          v75 = v71;
          v76 = v72;
          v77 = v73;
          v78 = v74;
          v57 = sub_100016994();
          if ((v58 & 1) == 0 && v57 < a1)
          {
            if (__OFADD__(v57, v18))
            {
              __break(1u);
              goto LABEL_51;
            }

            sub_1000169A4();
          }

          sub_1000169B4();
          if (!v72)
          {
            goto LABEL_18;
          }
        }
      }

      if (a1 < 0)
      {
        goto LABEL_67;
      }

      if (a2 < a1)
      {
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
        goto LABEL_70;
      }

      if (a1)
      {
        v21 = *(v11 + 16);
        v69 = a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
        v70 = v21;
        v68 = *(v11 + 72);
        v65 = a3;

        v22 = 0;
        while (1)
        {
          v70(v17, v69 + v68 * v22, v10);
          v23 = *a4;
          sub_10000C49C(&qword_100020960, 255, &type metadata accessor for UUID);
          v24 = sub_100016DC4();
          (*(v11 + 8))(v17, v10);
          v25 = 1 << *a4;
          v26 = __OFSUB__(v25, 1);
          v27 = v25 - 1;
          if (v26)
          {
            break;
          }

          v28 = v27 & v24;
          v29 = sub_100016964();
          *&v71 = a4;
          *(&v71 + 1) = a5;
          *&v72 = v28;
          *(&v72 + 1) = v29;
          *&v73 = v30;
          *(&v73 + 1) = v31;
          v74 = 0;
          while (*(&v72 + 1))
          {
            v75 = v71;
            v76 = v72;
            v77 = v73;
            v78 = v74;
            v32 = sub_100016994();
            if ((v33 & 1) == 0 && v32 == v22)
            {
              break;
            }

            sub_1000169B4();
          }

          if (__OFADD__(v22, v18))
          {
            goto LABEL_58;
          }

          ++v22;
          sub_1000169A4();
          if (v22 == a1)
          {

            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

LABEL_18:
      v34 = a4[1];
      if (__OFSUB__(v34 >> 6, v18))
      {
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      v35 = 1 << *a4;
      v26 = __OFSUB__(v35, 1);
      v36 = v35 - 1;
      if (v26)
      {
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      v37 = (v36 & (((v34 >> 6) - v18) >> 63)) + (v34 >> 6) - v18;
      if (v37 < v36)
      {
        v36 = 0;
      }

      a4[1] = a4[1] & 0x3F | ((v37 - v36) << 6);
    }
  }
}

uint64_t sub_10000B31C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v8 = sub_1000169F4();
  result = 0;
  if (v8 <= v7)
  {
    v8 = v7;
  }

  if (v8 <= a4)
  {
    v8 = a4;
  }

  if (v8 >= 5)
  {
    v10 = sub_100016A04();
    sub_10000B39C(a1, (v10 + 16), v10 + 32);
    return v10;
  }

  return result;
}

uint64_t sub_10000B438(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v31 = a4;
  v32 = a1;
  v6 = sub_100016904();
  v7 = *(*(v6 - 8) + 64);
  result = __chkstk_darwin();
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a2;
  if (a2)
  {
    if ((v40 & 0x8000000000000000) == 0)
    {
      v12 = 0;
      v14 = *(v9 + 16);
      v13 = v9 + 16;
      v28 = *(v13 + 56);
      v29 = v14;
      v30 = v13;
      v27 = (v13 - 8);
      v14(v11, v32, v6);
      while (1)
      {
        v15 = *a3;
        sub_10000C49C(&qword_100020960, 255, &type metadata accessor for UUID);
        result = sub_100016DC4();
        v16 = 1 << *a3;
        v17 = __OFSUB__(v16, 1);
        v18 = v16 - 1;
        if (v17)
        {
          break;
        }

        v19 = v18 & result;
        v20 = v31;
        v21 = sub_100016964();
        v23 = v22;
        v25 = v24;
        (*v27)(v11, v6);
        v33 = a3;
        v34 = v20;
        v35 = v19;
        v36 = v21;
        v37 = v23;
        v38 = v25;
        v39 = 0;
        while (v36)
        {
          sub_1000169B4();
        }

        result = sub_1000169A4();
        if (++v12 == v40)
        {
          return result;
        }

        v29(v11, v32 + v28 * v12, v6);
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

size_t sub_10000B654(size_t a1, int64_t a2, char a3)
{
  result = sub_10000A7F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_10000B674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v32 = a2;
  v8 = sub_100016904();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a4;
  sub_10000C49C(&qword_100020960, 255, &type metadata accessor for UUID);
  v31[1] = a1;
  result = sub_100016DC4();
  v15 = 1 << *a4;
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    v18 = v17 & result;
    v19 = sub_100016964();
    *&v37 = a4;
    *(&v37 + 1) = a5;
    *&v38 = v18;
    *(&v38 + 1) = v19;
    *&v39 = v20;
    *(&v39 + 1) = v21;
    v40 = 0;
    v22 = sub_100016994();
    if ((v23 & 1) == 0)
    {
      v26 = *(v9 + 16);
      v24 = v9 + 16;
      v25 = v26;
      v27 = *(v24 + 56);
      v28 = (v24 - 8);
      do
      {
        v25(v12, v32 + v27 * v22, v8);
        sub_10000C49C(&qword_100020958, 255, &type metadata accessor for UUID);
        v29 = sub_100016DE4();
        (*v28)(v12, v8);
        if (v29)
        {
          break;
        }

        sub_1000169B4();
        v33 = v37;
        v34 = v38;
        v35 = v39;
        v36 = v40;
        v22 = sub_100016994();
      }

      while ((v30 & 1) == 0);
    }

    return v22;
  }

  return result;
}

uint64_t (*sub_10000B8D0(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = sub_100016EE4();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return sub_10000B950;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_10000B958(uint64_t (*result)(uint64_t *), unint64_t a2, uint64_t a3))(uint64_t *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = sub_100016EE4();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return sub_10000C6A8;
  }

  __break(1u);
  return result;
}

uint64_t sub_10000B9D8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_100016F44();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_100016F44();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10000BD44(&qword_1000208D8, &qword_1000208D0, &qword_100017508);
          for (i = 0; i != v6; ++i)
          {
            sub_100009F00(&qword_1000208D0, &qword_100017508);
            v9 = sub_10000B8D0(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for GFILinkingEvent();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10000BB68(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000BBB4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_100016F44();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_100016F44();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10000BD44(&qword_1000208F0, &qword_1000208E8, &qword_100017518);
          for (i = 0; i != v6; ++i)
          {
            sub_100009F00(&qword_1000208E8, &qword_100017518);
            v9 = sub_10000B958(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for PartnerCloudRequestEvents();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10000BD44(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000BB68(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000BD98(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void *sub_10000BDEC(uint64_t a1)
{
  v2 = [objc_allocWithZone(GMSSchemaGMSClientEvent) init];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [objc_allocWithZone(GMSSchemaGMSClientEventMetadata) init];
  if (v4)
  {
    v5 = v3;
    v6 = v4;
    [v4 setGmsId:a1];
    [v3 setEventMetadata:v6];
    v7 = [objc_allocWithZone(GMSSchemaGMSModelRequestContext) init];
    [v3 setGmsModelRequestContext:v7];

    v3 = v7;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_10000BECC(void *a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  if (a1)
  {
    v6 = a1;
    sub_100016914();
    if (qword_100020768 != -1)
    {
      swift_once();
    }

    v11 = sub_100016D94();
    sub_10000BD98(v11, qword_100020FA0);
    v12 = v6;
    oslog = sub_100016D74();
    v13 = sub_100016E74();

    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v23 = v15;
      *v14 = 136315138;
      v16 = [v12 formattedJsonBody];
      if (v16)
      {
        v17 = v16;
        v18 = sub_100016E04();
        v20 = v19;
      }

      else
      {
        v18 = 0;
        v20 = 0xE000000000000000;
      }

      v21 = sub_100015464(v18, v20, &v23);

      *(v14 + 4) = v21;
      _os_log_impl(&_mh_execute_header, oslog, v13, a4, v14, 0xCu);
      sub_10000C658(v15);
    }
  }

  else
  {
    if (qword_100020768 != -1)
    {
      swift_once();
    }

    v8 = sub_100016D94();
    sub_10000BD98(v8, qword_100020FA0);
    oslog = sub_100016D74();
    v9 = sub_100016E74();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v9, a5, v10, 2u);
    }
  }
}

uint64_t sub_10000C29C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F00(&qword_100020920, &unk_1000175F0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000C30C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F00(&qword_100020918, &qword_100017538);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000C37C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100009F00(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000C3E4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100009F00(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000C444(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_100016F94() & 1;
  }
}

uint64_t sub_10000C49C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void *sub_10000C4E4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000C528()
{
  v1 = sub_100016924();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000C5EC(uint64_t a1)
{
  v3 = *(sub_100016924() - 8);
  v4 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));
  v5 = *(v1 + 16);
  return sub_1000044E0(a1, v4);
}

uint64_t sub_10000C658(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_10000C6CC@<X0>(int a1@<W2>, unsigned int a2@<W3>, void *a3@<X5>, void *a4@<X8>)
{
  v93 = a3;
  LODWORD(v90) = a1;
  v7 = sub_100016A74();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v91 = &v85[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_100009F00(&qword_100020930, &qword_100017770);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v85[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v16 = &v85[-v15];
  v17 = sub_100016904();
  v96 = *(v17 - 8);
  v97 = v17;
  v18 = v96[8];
  v19 = __chkstk_darwin(v17);
  v92 = &v85[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v94 = &v85[-v21];
  v22 = [objc_allocWithZone(SISchemaRequestLink) init];
  if (!v22)
  {
    goto LABEL_13;
  }

  v23 = v22;
  v95 = a4;
  v24 = [objc_allocWithZone(SISchemaRequestLinkInfo) init];
  if (!v24)
  {
    a4 = v95;
LABEL_12:

LABEL_13:
    if (qword_100020768 != -1)
    {
      swift_once();
    }

    v36 = sub_100016D94();
    sub_10000BD98(v36, qword_100020FA0);
    v37 = sub_100016D74();
    v38 = sub_100016E84();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "Failed to emit RequestLink, either RequestLink or RequestLinkInfo is nil", v39, 2u);
    }

    v40 = sub_100009F00(&qword_100020778, &unk_1000176A0);
    v41 = *(*(v40 - 8) + 56);

    return v41(a4, 1, 1, v40);
  }

  v89 = v24;
  v25 = [objc_allocWithZone(SISchemaRequestLinkInfo) init];
  if (!v25)
  {

    a4 = v95;
    v23 = v89;
    goto LABEL_12;
  }

  v88 = v25;
  sub_1000168C4();
  v27 = v96;
  v26 = v97;
  v28 = v96[6];
  if (v28(v16, 1, v97) == 1)
  {
    sub_10000C3E4(v16, &qword_100020930, &qword_100017770);
    v29 = v95;
    if (qword_100020768 != -1)
    {
      swift_once();
    }

    v30 = sub_100016D94();
    sub_10000BD98(v30, qword_100020FA0);
    v31 = sub_100016D74();
    v32 = sub_100016E84();
    v33 = os_log_type_enabled(v31, v32);
    v34 = v88;
    if (v33)
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Failed to emit RequestLink, source ID is nil", v35, 2u);
    }

LABEL_32:
    v78 = sub_100009F00(&qword_100020778, &unk_1000176A0);
    return (*(*(v78 - 8) + 56))(v29, 1, 1, v78);
  }

  v86 = a2;
  v87 = v4;
  v43 = v16;
  v44 = v27[4];
  v44(v94, v43, v26);
  v45 = objc_allocWithZone(SISchemaUUID);
  isa = sub_1000168E4().super.isa;
  v47 = v97;
  v48 = [v45 initWithNSUUID:isa];

  sub_1000168C4();
  if (v28(v14, 1, v47) == 1)
  {
    sub_10000C3E4(v14, &qword_100020930, &qword_100017770);
    v29 = v95;
    if (qword_100020768 != -1)
    {
      swift_once();
    }

    v49 = sub_100016D94();
    sub_10000BD98(v49, qword_100020FA0);
    v50 = sub_100016D74();
    v51 = sub_100016E84();
    v52 = os_log_type_enabled(v50, v51);
    v53 = v96;
    v54 = v88;
    if (v52)
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&_mh_execute_header, v50, v51, "Failed to emit RequestLink, target ID is nil", v55, 2u);

      v56 = v48;
      v57 = v89;
    }

    else
    {
      v56 = v50;
      v57 = v88;
      v54 = v48;
      v50 = v23;
      v23 = v89;
    }

    (v53[1])(v94, v47);
    goto LABEL_32;
  }

  v58 = v92;
  v59 = v47;
  v44(v92, v14, v47);
  v60 = objc_allocWithZone(SISchemaUUID);
  v61 = sub_1000168E4().super.isa;
  v62 = [v60 initWithNSUUID:v61];

  v63 = v89;
  [v89 setComponent:v90];
  [v63 setUuid:v48];
  [v23 setSource:v63];
  v64 = v88;
  [v88 setComponent:v86];
  v93 = v62;
  [v64 setUuid:v62];
  [v23 setTarget:v64];
  if (qword_100020768 != -1)
  {
    swift_once();
  }

  v65 = sub_100016D94();
  sub_10000BD98(v65, qword_100020FA0);
  v66 = v23;
  v67 = sub_100016D74();
  v68 = sub_100016E74();

  v69 = os_log_type_enabled(v67, v68);
  v70 = v95;
  if (v69)
  {
    v90 = v48;
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v98 = v72;
    *v71 = 136315138;
    v73 = [v66 formattedJsonBody];
    if (v73)
    {
      v74 = v73;
      v75 = sub_100016E04();
      v77 = v76;

      v58 = v92;
    }

    else
    {
      v75 = 0;
      v77 = 0xE000000000000000;
    }

    v80 = sub_100015464(v75, v77, &v98);

    *(v71 + 4) = v80;
    _os_log_impl(&_mh_execute_header, v67, v68, "Return Request Link %s", v71, 0xCu);
    sub_10000C658(v72);

    v79 = v97;
    v48 = v90;
  }

  else
  {

    v79 = v59;
  }

  v81 = sub_100009F00(&qword_100020778, &unk_1000176A0);
  v82 = *(v81 + 48);
  *v70 = v66;
  v83 = v66;
  sub_100016BC4();
  sub_100016944();

  v84 = v96[1];
  v84(v58, v79);
  v84(v94, v79);
  return (*(*(v81 - 8) + 56))(v70, 0, 1, v81);
}

id sub_10000D060()
{
  v0 = sub_100009F00(&qword_100020930, &qword_100017770);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v102 = &v100 - v2;
  v3 = sub_100016904();
  v103 = *(v3 - 8);
  v4 = *(v103 + 64);
  __chkstk_darwin(v3);
  v101 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_100016B14();
  v6 = *(v111 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v111);
  v109 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v108 = &v100 - v10;
  v11 = sub_100009F00(&qword_100020A58, &qword_1000175B8);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v107 = &v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v106 = &v100 - v16;
  v17 = __chkstk_darwin(v15);
  v105 = &v100 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = &v100 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = &v100 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = &v100 - v26;
  v28 = __chkstk_darwin(v25);
  v30 = &v100 - v29;
  v31 = __chkstk_darwin(v28);
  v33 = &v100 - v32;
  __chkstk_darwin(v31);
  v114 = &v100 - v34;
  v35 = [objc_allocWithZone(GMSSchemaGMSPrivateCloudMetrics) init];
  v36 = sub_100016D44();
  if (v37)
  {
    v38 = sub_100016D34();
    if (v39)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [v35 setTokenRate:*&v36];
    v38 = sub_100016D34();
    if (v50)
    {
LABEL_3:
      v40 = sub_100016D24();
      if (v41)
      {
        goto LABEL_4;
      }

LABEL_12:
      [v35 setExtendLatencyMillis:*&v40];
      v42 = sub_100016D14();
      if (v52)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  [v35 setTimeToFirstTokenMillis:*&v38];
  v40 = sub_100016D24();
  if ((v51 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_4:
  v42 = sub_100016D14();
  if ((v43 & 1) == 0)
  {
LABEL_5:
    [v35 setOutputTokensCount:v42];
  }

LABEL_6:
  v110 = v6;
  v104 = v3;
  v44 = sub_100016D04();
  if ((v45 & 1) == 0)
  {
    [v35 setInputTokensCount:v44];
  }

  v112 = v35;
  v113 = [objc_allocWithZone(GMSSchemaGMSPrivateCloudSpeculativeDecodingMetrics) init];
  v46 = v114;
  sub_100016C64();
  sub_10000DFA8(v46, v33);
  v47 = sub_100016CF4();
  v48 = *(v47 - 8);
  v49 = *(v48 + 48);
  if (v49(v33, 1, v47) == 1)
  {
    sub_10000C3E4(v33, &qword_100020A58, &qword_1000175B8);
  }

  else
  {
    v53 = sub_100016C74();
    (*(v48 + 8))(v33, v47);
    if ((v53 & 0x100000000) == 0)
    {
      LODWORD(v54) = v53;
      [v113 setSpeculativeDecodingAcceptanceRate:v54];
    }
  }

  sub_10000DFA8(v114, v30);
  if (v49(v30, 1, v47) == 1)
  {
    sub_10000C3E4(v30, &qword_100020A58, &qword_1000175B8);
  }

  else
  {
    v55 = sub_100016CB4();
    (*(v48 + 8))(v30, v47);
    if ((v55 & 0x100000000) == 0)
    {
      [v113 setDraftModelInferenceCallCount:v55];
    }
  }

  v56 = v114;
  sub_10000DFA8(v114, v27);
  if (v49(v27, 1, v47) == 1)
  {
    sub_10000C3E4(v27, &qword_100020A58, &qword_1000175B8);
  }

  else
  {
    v57 = sub_100016CC4();
    (*(v48 + 8))(v27, v47);
    if ((v57 & 0x100000000) == 0)
    {
      [v113 setTargetModelInferenceCallCount:v57];
    }
  }

  sub_10000DFA8(v56, v24);
  if (v49(v24, 1, v47) == 1)
  {
    sub_10000C3E4(v24, &qword_100020A58, &qword_1000175B8);
  }

  else
  {
    v58 = sub_100016C94();
    (*(v48 + 8))(v24, v47);
    if ((v58 & 0x100000000) == 0)
    {
      [v113 setDraftOutputTokenCount:v58];
    }
  }

  sub_10000DFA8(v56, v21);
  v59 = v49(v21, 1, v47);
  v60 = v105;
  if (v59 == 1)
  {
    sub_10000C3E4(v21, &qword_100020A58, &qword_1000175B8);
  }

  else
  {
    v61 = sub_100016CA4();
    (*(v48 + 8))(v21, v47);
    if ((v61 & 0x100000000) == 0)
    {
      [v113 setTargetOutputTokenCount:v61];
    }
  }

  sub_10000DFA8(v56, v60);
  if (v49(v60, 1, v47) == 1)
  {
    sub_10000C3E4(v60, &qword_100020A58, &qword_1000175B8);
  }

  else
  {
    v62 = sub_100016CD4();
    v64 = v63;
    (*(v48 + 8))(v60, v47);
    if ((v64 & 1) == 0)
    {
      [v113 setDraftModelTotalInferenceLatencyMillis:v62];
    }
  }

  v65 = v106;
  sub_10000DFA8(v56, v106);
  if (v49(v65, 1, v47) == 1)
  {
    sub_10000C3E4(v65, &qword_100020A58, &qword_1000175B8);
  }

  else
  {
    v66 = sub_100016CE4();
    v68 = v67;
    (*(v48 + 8))(v65, v47);
    if ((v68 & 1) == 0)
    {
      [v113 setTargetModelTotalInferenceLatencyMillis:v66];
    }
  }

  v69 = v56;
  v70 = v107;
  sub_10000DFA8(v69, v107);
  if (v49(v70, 1, v47) == 1)
  {
    sub_10000C3E4(v70, &qword_100020A58, &qword_1000175B8);
    v71 = v110;
    v72 = v111;
  }

  else
  {
    v73 = sub_100016C84();
    v75 = v74;
    (*(v48 + 8))(v70, v47);
    v71 = v110;
    v72 = v111;
    if ((v75 & 1) == 0)
    {
      [v113 setDraftSteps:v73];
    }
  }

  v76 = v112;
  [v112 setGmsPrivateCloudSpeculativeDecodingMetrics:v113];
  v77 = [objc_allocWithZone(GMSSchemaGMSPrivateCloudMetricsReceived) init];
  [v77 setGmsPrivateCloudMetrics:v76];
  v78 = v108;
  sub_100016B24();
  v79 = sub_100016AD4();
  v81 = v80;
  v82 = *(v71 + 8);
  v82(v78, v72);
  if (!v81)
  {
    goto LABEL_62;
  }

  if (v79 == 0xD000000000000021 && 0x8000000100017C50 == v81 || (sub_100016F94() & 1) != 0)
  {

    v83 = 1;
    goto LABEL_63;
  }

  if (v79 == 0xD000000000000022 && 0x8000000100017900 == v81 || (sub_100016F94() & 1) != 0)
  {

    v83 = 2;
    goto LABEL_63;
  }

  if (v79 == 0xD000000000000022 && 0x8000000100017930 == v81 || (sub_100016F94() & 1) != 0)
  {

    v83 = 4;
    goto LABEL_63;
  }

  if (v79 == 0xD00000000000001ALL && 0x8000000100017960 == v81)
  {

    v83 = 5;
    goto LABEL_63;
  }

  v84 = sub_100016F94();

  if (v84)
  {
    v83 = 5;
  }

  else
  {
LABEL_62:
    v83 = 0;
  }

LABEL_63:
  [v77 setGmsCaller:v83];

  v85 = v109;
  sub_100016B24();
  sub_100016AE4();
  v87 = v86;
  v82(v85, v72);
  if (v87)
  {
    v88 = v102;
    sub_1000168C4();

    v90 = v103;
    v89 = v104;
    if ((*(v103 + 48))(v88, 1, v104) == 1)
    {
      sub_10000C3E4(v114, &qword_100020A58, &qword_1000175B8);

      v91 = &qword_100020930;
      v92 = &qword_100017770;
      v93 = v88;
    }

    else
    {
      v94 = v101;
      (*(v90 + 32))(v101, v88, v89);
      if (v77)
      {
        v95 = objc_allocWithZone(SISchemaUUID);
        v96 = v77;
        isa = sub_1000168E4().super.isa;
        v98 = [v95 initWithNSUUID:isa];

        [v96 setClientTraceId:v98];
      }

      else
      {
      }

      (*(v90 + 8))(v94, v89);
      v91 = &qword_100020A58;
      v92 = &qword_1000175B8;
      v93 = v114;
    }

    sub_10000C3E4(v93, v91, v92);
  }

  else
  {
    sub_10000C3E4(v114, &qword_100020A58, &qword_1000175B8);
  }

  return v77;
}

uint64_t GFILinkingEvent.deinit()
{
  v1 = OBJC_IVAR____TtC15GMSSELFIngestor15GFILinkingEvent_requestIdentifier;
  v2 = sub_100016904();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15GMSSELFIngestor15GFILinkingEvent_event;
  v4 = sub_100016BD4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC15GMSSELFIngestor15GFILinkingEvent_ingestor);

  v6 = *(v0 + OBJC_IVAR____TtC15GMSSELFIngestor15GFILinkingEvent_eventType + 8);

  return v0;
}

uint64_t GFILinkingEvent.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15GMSSELFIngestor15GFILinkingEvent_requestIdentifier;
  v2 = sub_100016904();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15GMSSELFIngestor15GFILinkingEvent_event;
  v4 = sub_100016BD4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC15GMSSELFIngestor15GFILinkingEvent_ingestor);

  v6 = *(v0 + OBJC_IVAR____TtC15GMSSELFIngestor15GFILinkingEvent_eventType + 8);

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v7, v8);
}

uint64_t type metadata accessor for GFILinkingEvent()
{
  result = qword_1000209B8;
  if (!qword_1000209B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000DEC4()
{
  result = sub_100016904();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_100016BD4();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10000DFA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F00(&qword_100020A58, &qword_1000175B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000E018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v59 = a1;
  v61 = a3;
  v56 = sub_100009F00(&qword_100020908, &unk_100017790);
  v4 = *(*(v56 - 8) + 64);
  __chkstk_darwin(v56);
  v5 = sub_100016BD4();
  v57 = *(v5 - 8);
  v58 = v5;
  v6 = *(v57 + 64);
  __chkstk_darwin(v5);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100016B84();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v55 - v16;
  __chkstk_darwin(v15);
  v19 = &v55 - v18;
  v20 = *(v10 + 16);
  v20(&v55 - v18, a2, v9);
  v21 = (*(v10 + 88))(v19, v9);
  if (v21 == enum case for GenerativeFunctionsInstrumentationEvent.Subtype.unknown(_:))
  {
    if (qword_100020768 != -1)
    {
      swift_once();
    }

    v22 = sub_100016D94();
    sub_10000BD98(v22, qword_100020FA0);
    v20(v17, a2, v9);
    v23 = sub_100016D74();
    v24 = sub_100016E84();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v62 = v26;
      *v25 = 136315138;
      v27 = sub_100016B74();
      v29 = v28;
      (*(v10 + 8))(v17, v9);
      v30 = sub_100015464(v27, v29, &v62);

      *(v25 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v23, v24, "GenerativeFunctionsInstrumentationEvent.subtype not supported %s", v25, 0xCu);
      sub_10000C658(v26);
    }

    else
    {

      (*(v10 + 8))(v17, v9);
    }

LABEL_9:
    v32 = sub_100009F00(&qword_100020940, &qword_100017548);
    return (*(*(v32 - 8) + 56))(v61, 1, 1, v32);
  }

  if (v21 == enum case for GenerativeFunctionsInstrumentationEvent.Subtype.start(_:))
  {
    return sub_100011D60(v61);
  }

  if (v21 == enum case for GenerativeFunctionsInstrumentationEvent.Subtype.end(_:))
  {
    return sub_10000FB98(v59, v61);
  }

  if (v21 == enum case for GenerativeFunctionsInstrumentationEvent.Subtype.fail(_:))
  {
    return sub_100010B20(v59, v61);
  }

  if (v21 == enum case for GenerativeFunctionsInstrumentationEvent.Subtype.info(_:))
  {
    if (qword_100020768 != -1)
    {
      swift_once();
    }

    v33 = sub_100016D94();
    sub_10000BD98(v33, qword_100020FA0);
    v35 = v57;
    v34 = v58;
    (*(v57 + 16))(v8, v59, v58);
    v36 = sub_100016D74();
    v37 = sub_100016E84();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v62 = v39;
      *v38 = 136315138;
      sub_100016BA4();
      v40 = sub_100016E14();
      v42 = v41;
      (*(v35 + 8))(v8, v34);
      v43 = sub_100015464(v40, v42, &v62);

      *(v38 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v36, v37, "GenerativeFunctionsInstrumentationEvent.subtype.info not supported %s", v38, 0xCu);
      sub_10000C658(v39);
    }

    else
    {

      (*(v35 + 8))(v8, v34);
    }

    goto LABEL_9;
  }

  if (qword_100020768 != -1)
  {
    swift_once();
  }

  v44 = sub_100016D94();
  sub_10000BD98(v44, qword_100020FA0);
  v20(v14, a2, v9);
  v45 = sub_100016D74();
  v46 = sub_100016E84();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v62 = v60;
    *v47 = 136315138;
    v59 = sub_100016B74();
    v49 = v48;
    v50 = *(v10 + 8);
    v50(v14, v9);
    v51 = v50;
    v52 = sub_100015464(v59, v49, &v62);

    *(v47 + 4) = v52;
    _os_log_impl(&_mh_execute_header, v45, v46, "GenerativeFunctionsInstrumentationEvent.subtype not supported %s", v47, 0xCu);
    sub_10000C658(v60);

    v53 = v51;
  }

  else
  {

    v53 = *(v10 + 8);
    v53(v14, v9);
  }

  v54 = sub_100009F00(&qword_100020940, &qword_100017548);
  (*(*(v54 - 8) + 56))(v61, 1, 1, v54);
  return (v53)(v19, v9);
}

uint64_t sub_10000E830(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100016D94();
  sub_1000166D8(v3, a2);
  sub_10000BD98(v3, a2);
  return sub_100016D84();
}

uint64_t sub_10000E8A8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000168B4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v43 - v10;
  sub_100016894();
  v12 = *(v1 + 16);
  if (v12)
  {
    v13 = *(v2 + 40);
    v14 = *(v2 + 48);

    v15 = sub_100016DF4();

    v16 = [v12 valueForKey:v15];

    if (v16)
    {
      sub_100016EC4();
      swift_unknownObjectRelease();
    }

    else
    {
      v45 = 0u;
      v46 = 0u;
    }

    v47 = v45;
    v48 = v46;
    if (*(&v46 + 1))
    {
      sub_10000C3E4(&v47, &qword_100020C70, &qword_100017768);
      v17 = *(v2 + 40);
      v18 = *(v2 + 48);

      v19 = sub_100016DF4();

      [v12 doubleForKey:v19];
      v21 = v20;

      if (qword_100020760 != -1)
      {
        swift_once();
      }

      v22 = sub_100016D94();
      sub_10000BD98(v22, qword_100020F88);

      v23 = sub_100016D74();
      v24 = sub_100016E74();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *&v47 = v26;
        *v25 = 136315394;
        v44 = v4;
        v27 = a1;
        v29 = *(v2 + 40);
        v28 = *(v2 + 48);

        v30 = sub_100015464(v29, v28, &v47);

        *(v25 + 4) = v30;
        a1 = v27;
        v4 = v44;
        *(v25 + 12) = 2048;
        *(v25 + 14) = v21;
        _os_log_impl(&_mh_execute_header, v23, v24, "The userdefault has key %s with the value %f", v25, 0x16u);
        sub_10000C658(v26);
      }

      sub_100016854();
      sub_1000167B0(&qword_100020C78, &type metadata accessor for Date);
      v31 = sub_100016DD4();
      v32 = *(v5 + 8);
      v33 = (v5 + 32);
      if (v31)
      {
        v32(v11, v4);
        return (*v33)(a1, v9, v4);
      }

      else
      {
        v32(v9, v4);
        return (*v33)(a1, v11, v4);
      }
    }
  }

  else
  {
    v47 = 0u;
    v48 = 0u;
  }

  sub_10000C3E4(&v47, &qword_100020C70, &qword_100017768);
  if (qword_100020760 != -1)
  {
    swift_once();
  }

  v35 = sub_100016D94();
  sub_10000BD98(v35, qword_100020F88);

  v36 = sub_100016D74();
  v37 = sub_100016E74();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *&v47 = v39;
    *v38 = 136315138;
    v41 = *(v2 + 40);
    v40 = *(v2 + 48);

    v42 = sub_100015464(v41, v40, &v47);

    *(v38 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v36, v37, "The userdefault contained no value for %s", v38, 0xCu);
    sub_10000C658(v39);
  }

  return (*(v5 + 32))(a1, v11, v4);
}

uint64_t sub_10000EDE4(uint64_t a1)
{
  v3 = v1[4];
  v4 = v1[3] & 0xFFFFFFFFFFFFLL;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(v3) & 0xF;
  }

  if (!v4)
  {
    if (qword_100020760 != -1)
    {
      swift_once();
    }

    v22 = sub_100016D94();
    sub_10000BD98(v22, qword_100020F88);
    v23 = sub_100016D74();
    v24 = sub_100016E74();
    if (!os_log_type_enabled(v23, v24))
    {
      goto LABEL_17;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "Skip userDefault set due to empty identifier", v25, 2u);
    goto LABEL_16;
  }

  v5 = v1;
  sub_100016864();
  v7 = v6;
  if (qword_100020760 != -1)
  {
    swift_once();
  }

  v8 = sub_100016D94();
  sub_10000BD98(v8, qword_100020F88);

  v9 = sub_100016D74();
  v10 = sub_100016E74();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v35 = v12;
    *v11 = 136315394;
    v13 = v1[5];
    v14 = v1[6];

    v15 = sub_100015464(v13, v14, &v35);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2048;
    *(v11 + 14) = v7;
    _os_log_impl(&_mh_execute_header, v9, v10, "Set key %s to %f", v11, 0x16u);
    sub_10000C658(v12);
  }

  v16 = v1[2];
  if (v16)
  {
    v17 = v16;
    isa = sub_100016E54().super.super.isa;
    v20 = v5[5];
    v19 = v5[6];

    v21 = sub_100016DF4();

    [v17 setValue:isa forKey:v21];

    goto LABEL_18;
  }

  v23 = sub_100016D74();
  v26 = sub_100016E74();

  if (os_log_type_enabled(v23, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v35 = v28;
    *v27 = 136315138;
    v30 = v5[5];
    v29 = v5[6];

    v31 = sub_100015464(v30, v29, &v35);

    *(v27 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v23, v26, "Fail to set key %s due to empty userdefaults", v27, 0xCu);
    sub_10000C658(v28);

LABEL_16:
  }

LABEL_17:

LABEL_18:
  v32 = sub_1000168B4();
  v33 = *(*(v32 - 8) + 8);

  return v33(a1, v32);
}

uint64_t sub_10000F1BC()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t sub_10000F204@<X0>(int a1@<W2>, unsigned int a2@<W3>, void *a3@<X5>, void *a4@<X8>)
{
  v93 = a3;
  LODWORD(v90) = a1;
  v7 = sub_100016A74();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v91 = &v85[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_100009F00(&qword_100020930, &qword_100017770);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v85[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v16 = &v85[-v15];
  v17 = sub_100016904();
  v96 = *(v17 - 8);
  v97 = v17;
  v18 = v96[8];
  v19 = __chkstk_darwin(v17);
  v92 = &v85[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v94 = &v85[-v21];
  v22 = [objc_allocWithZone(SISchemaRequestLink) init];
  if (!v22)
  {
    goto LABEL_13;
  }

  v23 = v22;
  v95 = a4;
  v24 = [objc_allocWithZone(SISchemaRequestLinkInfo) init];
  if (!v24)
  {
    a4 = v95;
LABEL_12:

LABEL_13:
    if (qword_100020768 != -1)
    {
      swift_once();
    }

    v36 = sub_100016D94();
    sub_10000BD98(v36, qword_100020FA0);
    v37 = sub_100016D74();
    v38 = sub_100016E84();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "Failed to emit RequestLink, either RequestLink or RequestLinkInfo is nil", v39, 2u);
    }

    v40 = sub_100009F00(&qword_100020778, &unk_1000176A0);
    v41 = *(*(v40 - 8) + 56);

    return v41(a4, 1, 1, v40);
  }

  v89 = v24;
  v25 = [objc_allocWithZone(SISchemaRequestLinkInfo) init];
  if (!v25)
  {

    a4 = v95;
    v23 = v89;
    goto LABEL_12;
  }

  v88 = v25;
  sub_1000168C4();
  v27 = v96;
  v26 = v97;
  v28 = v96[6];
  if (v28(v16, 1, v97) == 1)
  {
    sub_10000C3E4(v16, &qword_100020930, &qword_100017770);
    v29 = v95;
    if (qword_100020768 != -1)
    {
      swift_once();
    }

    v30 = sub_100016D94();
    sub_10000BD98(v30, qword_100020FA0);
    v31 = sub_100016D74();
    v32 = sub_100016E84();
    v33 = os_log_type_enabled(v31, v32);
    v34 = v88;
    if (v33)
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Failed to emit RequestLink, source ID is nil", v35, 2u);
    }

LABEL_32:
    v78 = sub_100009F00(&qword_100020778, &unk_1000176A0);
    return (*(*(v78 - 8) + 56))(v29, 1, 1, v78);
  }

  v86 = a2;
  v87 = v4;
  v43 = v16;
  v44 = v27[4];
  v44(v94, v43, v26);
  v45 = objc_allocWithZone(SISchemaUUID);
  isa = sub_1000168E4().super.isa;
  v47 = v97;
  v48 = [v45 initWithNSUUID:isa];

  sub_1000168C4();
  if (v28(v14, 1, v47) == 1)
  {
    sub_10000C3E4(v14, &qword_100020930, &qword_100017770);
    v29 = v95;
    if (qword_100020768 != -1)
    {
      swift_once();
    }

    v49 = sub_100016D94();
    sub_10000BD98(v49, qword_100020FA0);
    v50 = sub_100016D74();
    v51 = sub_100016E84();
    v52 = os_log_type_enabled(v50, v51);
    v53 = v96;
    v54 = v88;
    if (v52)
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&_mh_execute_header, v50, v51, "Failed to emit RequestLink, target ID is nil", v55, 2u);

      v56 = v48;
      v57 = v89;
    }

    else
    {
      v56 = v50;
      v57 = v88;
      v54 = v48;
      v50 = v23;
      v23 = v89;
    }

    (v53[1])(v94, v47);
    goto LABEL_32;
  }

  v58 = v92;
  v59 = v47;
  v44(v92, v14, v47);
  v60 = objc_allocWithZone(SISchemaUUID);
  v61 = sub_1000168E4().super.isa;
  v62 = [v60 initWithNSUUID:v61];

  v63 = v89;
  [v89 setComponent:v90];
  [v63 setUuid:v48];
  [v23 setSource:v63];
  v64 = v88;
  [v88 setComponent:v86];
  v93 = v62;
  [v64 setUuid:v62];
  [v23 setTarget:v64];
  if (qword_100020768 != -1)
  {
    swift_once();
  }

  v65 = sub_100016D94();
  sub_10000BD98(v65, qword_100020FA0);
  v66 = v23;
  v67 = sub_100016D74();
  v68 = sub_100016E74();

  v69 = os_log_type_enabled(v67, v68);
  v70 = v95;
  if (v69)
  {
    v90 = v48;
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v98 = v72;
    *v71 = 136315138;
    v73 = [v66 formattedJsonBody];
    if (v73)
    {
      v74 = v73;
      v75 = sub_100016E04();
      v77 = v76;

      v58 = v92;
    }

    else
    {
      v75 = 0;
      v77 = 0xE000000000000000;
    }

    v80 = sub_100015464(v75, v77, &v98);

    *(v71 + 4) = v80;
    _os_log_impl(&_mh_execute_header, v67, v68, "Return Request Link %s", v71, 0xCu);
    sub_10000C658(v72);

    v79 = v97;
    v48 = v90;
  }

  else
  {

    v79 = v59;
  }

  v81 = sub_100009F00(&qword_100020778, &unk_1000176A0);
  v82 = *(v81 + 48);
  *v70 = v66;
  v83 = v66;
  sub_100016BC4();
  sub_100016944();

  v84 = v96[1];
  v84(v58, v79);
  v84(v94, v79);
  return (*(*(v81 - 8) + 56))(v70, 0, 1, v81);
}

uint64_t sub_10000FB98@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v127 = a1;
  v130 = a2;
  v4 = sub_100016A74();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v124 = &v115 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100009F00(&qword_100020908, &unk_100017790);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v125 = &v115 - v9;
  v121 = sub_100016C04();
  v123 = *(v121 - 8);
  v10 = *(v123 + 64);
  __chkstk_darwin(v121);
  v122 = &v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100016B14();
  v126 = *(v12 - 8);
  v13 = *(v126 + 64);
  __chkstk_darwin(v12);
  v15 = &v115 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100009F00(&qword_100020920, &unk_1000175F0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v115 - v18;
  v20 = sub_100016BD4();
  v128 = *(v20 - 8);
  v129 = v20;
  v21 = *(v128 + 64);
  v22 = __chkstk_darwin(v20);
  v120 = &v115 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v115 - v24;
  v26 = *(v2 + OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_ingestor);
  v27 = objc_allocWithZone(SISchemaUUID);
  isa = sub_1000168E4().super.isa;
  v29 = [v27 initWithNSUUID:isa];

  v30 = sub_10000BDEC(v29);
  if (!v30)
  {
    goto LABEL_8;
  }

  v31 = [objc_allocWithZone(GMSSchemaGMSModelRequestEnded) init];
  if (!v31)
  {

    goto LABEL_8;
  }

  v119 = v31;
  v118 = v25;
  v32 = OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_promptRequestStartEvent;
  swift_beginAccess();
  sub_10000C37C(v3 + v32, v19, &qword_100020920, &unk_1000175F0);
  v34 = v128;
  v33 = v129;
  v116 = *(v128 + 48);
  if (v116(v19, 1, v129) == 1)
  {

    sub_10000C3E4(v19, &qword_100020920, &unk_1000175F0);
LABEL_8:
    if (qword_100020768 != -1)
    {
      swift_once();
    }

    v38 = sub_100016D94();
    sub_10000BD98(v38, qword_100020FA0);

    v39 = sub_100016D74();
    v40 = sub_100016E84();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v131[0] = v42;
      *v41 = 136315138;
      sub_100016904();
      sub_1000167B0(&qword_100020938, &type metadata accessor for UUID);
      v43 = sub_100016F84();
      v45 = sub_100015464(v43, v44, v131);

      *(v41 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v39, v40, "Failed to compute latency for request due to critical event missing %s", v41, 0xCu);
      sub_10000C658(v42);
    }

    goto LABEL_13;
  }

  v117 = v30;
  v35 = v118;
  (*(v34 + 32))(v118, v19, v33);
  v36 = GenerativeFunctionsInstrumentationEvent.latency(since:)(v35);
  if (v37)
  {
    (*(v34 + 8))(v35, v33);

    goto LABEL_8;
  }

  v115 = *&v36;
  sub_100016B24();
  v48 = sub_100016AD4();
  v50 = v49;
  (*(v126 + 8))(v15, v12);
  if (!v50)
  {
    if (qword_100020768 != -1)
    {
      swift_once();
    }

    v64 = sub_100016D94();
    sub_10000BD98(v64, qword_100020FA0);

    v53 = sub_100016D74();
    v65 = sub_100016E84();

    v66 = os_log_type_enabled(v53, v65);
    v56 = v128;
    if (v66)
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v131[0] = v68;
      *v67 = 136315138;
      sub_100016904();
      sub_1000167B0(&qword_100020938, &type metadata accessor for UUID);
      v69 = sub_100016F84();
      v71 = sub_100015464(v69, v70, v131);

      *(v67 + 4) = v71;
      _os_log_impl(&_mh_execute_header, v53, v65, "Usecase Identifier missing for request %s", v67, 0xCu);
      sub_10000C658(v68);

      goto LABEL_28;
    }

LABEL_39:
    goto LABEL_40;
  }

  if (*(v26 + 16) == 1)
  {

    v51 = sub_100002304(v48, v50);

    if (!v51 && (*(v26 + 16) & 1) != 0)
    {
      if (qword_100020768 != -1)
      {
        swift_once();
      }

      v52 = sub_100016D94();
      sub_10000BD98(v52, qword_100020FA0);

      v53 = sub_100016D74();
      v54 = sub_100016E84();

      v55 = os_log_type_enabled(v53, v54);
      v56 = v128;
      if (v55)
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v131[0] = v58;
        *v57 = 136315138;
        v59 = sub_100015464(v48, v50, v131);

        *(v57 + 4) = v59;
        _os_log_impl(&_mh_execute_header, v53, v54, "Should not log for this useCaseString: %s", v57, 0xCu);
        sub_10000C658(v58);

LABEL_28:

LABEL_40:
        (*(v56 + 8))(v118, v129);
LABEL_13:
        v46 = sub_100009F00(&qword_100020940, &qword_100017548);
        return (*(*(v46 - 8) + 56))(v130, 1, 1, v46);
      }

      goto LABEL_39;
    }
  }

  v60 = v125;
  sub_100016BA4();
  v61 = sub_100016D64();
  v62 = *(v61 - 8);
  if ((*(v62 + 48))(v60, 1, v61) != 1)
  {
    if ((*(v62 + 88))(v60, v61) != enum case for GenerativeFunctionsInstrumentationMetadata.tgiExecuteRequest(_:))
    {
      (*(v62 + 8))(v60, v61);
      v63 = v128;
      goto LABEL_50;
    }

    (*(v62 + 96))(v60, v61);
    v72 = *v60;
    v73 = swift_projectBox();
    v74 = v121;
    (*(v123 + 16))(v122, v73, v121);

    v75 = sub_100016BF4();
    if (v76)
    {
      v77 = 0;
    }

    else
    {
      v77 = v75 & ~(v75 >> 63);
    }

    v78 = sub_100016BE4();
    if (v79)
    {
      v80 = 0;
    }

    else
    {
      v80 = v78 & ~(v78 >> 63);
    }

    v81 = OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_firstTokenEvent;
    swift_beginAccess();
    v82 = v129;
    v83 = 0.0;
    if (v116((v3 + v81), 1, v129))
    {
      v63 = v128;
    }

    else
    {
      v63 = v128;
      v84 = v120;
      (*(v128 + 16))(v120, v3 + v81, v82);
      *&v85 = COERCE_DOUBLE(GenerativeFunctionsInstrumentationEvent.latency(since:)(v118));
      v87 = v86;
      (*(v63 + 8))(v84, v82);
      if ((v87 & 1) == 0)
      {
        v83 = *&v85;
      }
    }

    if (HIDWORD(v77))
    {
      __break(1u);
    }

    else
    {
      v88 = v119;
      [v119 setResponseTokensCount:v77];
      if (!HIDWORD(v80))
      {
        v89 = v115;
        [v88 setImageCount:v80];
        v90 = v89;
        *&v91 = (v80 * 1000.0) / v90;
        [v88 setImagePerSecond:v91];
        [v88 setTimeToFirstTokenInSeconds:v83 / 1000.0];
        [v88 setTimeToLastTokenInSeconds:v89 / 1000.0];
        [v88 setTokensPerSecond:v77 * 1000.0 / v89];
        if (qword_100020768 == -1)
        {
LABEL_47:
          v92 = sub_100016D94();
          sub_10000BD98(v92, qword_100020FA0);
          v93 = sub_100016D74();
          v94 = sub_100016E74();
          if (os_log_type_enabled(v93, v94))
          {
            v95 = swift_slowAlloc();
            *v95 = 134218752;
            *(v95 + 4) = v77;
            *(v95 + 12) = 2048;
            *(v95 + 14) = v80;
            *(v95 + 22) = 2048;
            *(v95 + 24) = v83;
            *(v95 + 32) = 2048;
            *(v95 + 34) = v115;
            _os_log_impl(&_mh_execute_header, v93, v94, "outputTokens: %lld, outputImages: %lld, timeToFirstToken: %f, timeToLastToken: %f", v95, 0x2Au);
          }

          (*(v123 + 8))(v122, v74);
          goto LABEL_50;
        }

LABEL_60:
        swift_once();
        goto LABEL_47;
      }
    }

    __break(1u);
    goto LABEL_60;
  }

  sub_10000C3E4(v60, &qword_100020908, &unk_100017790);
  v63 = v128;
LABEL_50:
  v96 = [v117 gmsModelRequestContext];
  if (v96)
  {
    v97 = v96;
    [v96 setEnded:v119];
  }

  if (qword_100020768 != -1)
  {
    swift_once();
  }

  v98 = sub_100016D94();
  sub_10000BD98(v98, qword_100020FA0);
  v99 = v119;
  v100 = sub_100016D74();
  v101 = sub_100016E74();

  if (os_log_type_enabled(v100, v101))
  {
    v102 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    v132 = v103;
    *v102 = 136315138;
    v104 = v99;
    v105 = [v104 description];
    v106 = sub_100016E04();
    v108 = v107;

    v109 = sub_100015464(v106, v108, &v132);

    *(v102 + 4) = v109;
    _os_log_impl(&_mh_execute_header, v100, v101, "SELF EndEvent: %s", v102, 0xCu);
    sub_10000C658(v103);
  }

  v110 = sub_100009F00(&qword_100020940, &qword_100017548);
  v111 = *(v110 + 48);
  v112 = v130;
  v113 = v117;
  *v130 = v117;
  v114 = v113;
  sub_100016BC4();
  sub_100016944();

  (*(v63 + 8))(v118, v129);
  return (*(*(v110 - 8) + 56))(v112, 0, 1, v110);
}

uint64_t sub_100010B20@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v151 = a1;
  v4 = sub_100016A74();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v138 = &v132 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100016AB4();
  v134 = *(v7 - 8);
  v135 = v7;
  v8 = *(v134 + 64);
  __chkstk_darwin(v7);
  v133 = &v132 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100009F00(&qword_100020C98, &unk_1000177A0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v139 = &v132 - v12;
  v13 = sub_100016AC4();
  v141 = *(v13 - 8);
  v142 = v13;
  v14 = *(v141 + 64);
  v15 = __chkstk_darwin(v13);
  v136 = &v132 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v137 = &v132 - v17;
  v18 = sub_100016B14();
  v144 = *(v18 - 8);
  v145 = v18;
  v19 = *(v144 + 64);
  __chkstk_darwin(v18);
  v143 = &v132 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100016B84();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v146 = &v132 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100009F00(&qword_100020910, &qword_100017530);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25);
  v28 = &v132 - v27;
  v29 = sub_100009F00(&qword_100020928, &qword_100017540);
  v30 = *(*(v29 - 8) + 64);
  v31 = __chkstk_darwin(v29 - 8);
  v148 = &v132 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v35 = &v132 - v34;
  __chkstk_darwin(v33);
  v37 = &v132 - v36;
  v140 = *(v2 + OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_ingestor);
  v38 = OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_requestIdentifier;
  v39 = objc_allocWithZone(SISchemaUUID);
  v152 = v2;
  v150 = v38;
  v40 = a2;
  isa = sub_1000168E4().super.isa;
  v42 = [v39 initWithNSUUID:isa];

  v43 = sub_10000BDEC(v42);
  if (!v43)
  {
    goto LABEL_20;
  }

  v149 = v43;
  v147 = a2;
  sub_100016B94();
  (*(v22 + 104))(v35, enum case for GenerativeFunctionsInstrumentationEvent.Subtype.fail(_:), v21);
  (*(v22 + 56))(v35, 0, 1, v21);
  v44 = *(v25 + 48);
  sub_10000C37C(v37, v28, &qword_100020928, &qword_100017540);
  sub_10000C37C(v35, &v28[v44], &qword_100020928, &qword_100017540);
  v45 = *(v22 + 48);
  if (v45(v28, 1, v21) == 1)
  {
    sub_10000C3E4(v35, &qword_100020928, &qword_100017540);
    sub_10000C3E4(v37, &qword_100020928, &qword_100017540);
    v46 = v45(&v28[v44], 1, v21);
    v40 = v147;
    if (v46 == 1)
    {
      sub_10000C3E4(v28, &qword_100020928, &qword_100017540);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v47 = v148;
  sub_10000C37C(v28, v148, &qword_100020928, &qword_100017540);
  if (v45(&v28[v44], 1, v21) == 1)
  {
    sub_10000C3E4(v35, &qword_100020928, &qword_100017540);
    sub_10000C3E4(v37, &qword_100020928, &qword_100017540);
    (*(v22 + 8))(v47, v21);
    v40 = v147;
LABEL_7:
    sub_10000C3E4(v28, &qword_100020910, &qword_100017530);
LABEL_19:

LABEL_20:
    if (qword_100020768 != -1)
    {
      swift_once();
    }

    v66 = sub_100016D94();
    sub_10000BD98(v66, qword_100020FA0);

    v67 = sub_100016D74();
    v68 = sub_100016E84();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v154[0] = v70;
      *v69 = 136315138;
      sub_100016904();
      sub_1000167B0(&qword_100020938, &type metadata accessor for UUID);
      v71 = sub_100016F84();
      v73 = sub_100015464(v71, v72, v154);

      *(v69 + 4) = v73;
      _os_log_impl(&_mh_execute_header, v67, v68, "Failed to create event for request %s", v69, 0xCu);
      sub_10000C658(v70);
    }

    goto LABEL_25;
  }

  v48 = v146;
  (*(v22 + 32))(v146, &v28[v44], v21);
  sub_1000167B0(&qword_100020948, &type metadata accessor for GenerativeFunctionsInstrumentationEvent.Subtype);
  v49 = v47;
  v50 = sub_100016DE4();
  v51 = *(v22 + 8);
  v51(v48, v21);
  sub_10000C3E4(v35, &qword_100020928, &qword_100017540);
  sub_10000C3E4(v37, &qword_100020928, &qword_100017540);
  v51(v49, v21);
  sub_10000C3E4(v28, &qword_100020928, &qword_100017540);
  v40 = v147;
  if ((v50 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_9:
  v52 = [objc_allocWithZone(GMSSchemaGMSModelRequestFailed) init];
  if (!v52)
  {
    goto LABEL_19;
  }

  v53 = v52;
  v54 = v143;
  sub_100016B24();
  v55 = sub_100016AD4();
  v57 = v56;
  (*(v144 + 8))(v54, v145);
  if (!v57)
  {
    if (qword_100020768 != -1)
    {
      swift_once();
    }

    v79 = sub_100016D94();
    sub_10000BD98(v79, qword_100020FA0);

    v80 = sub_100016D74();
    v81 = sub_100016E84();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v154[0] = v83;
      *v82 = 136315138;
      sub_100016904();
      sub_1000167B0(&qword_100020938, &type metadata accessor for UUID);
      v84 = sub_100016F84();
      v86 = sub_100015464(v84, v85, v154);

      *(v82 + 4) = v86;
      _os_log_impl(&_mh_execute_header, v80, v81, "UseCaseIdentifier missing for request %s", v82, 0xCu);
      sub_10000C658(v83);
    }

    goto LABEL_33;
  }

  v58 = v140;
  if (*(v140 + 16) == 1)
  {

    v59 = sub_100002304(v55, v57);

    if (!v59 && (*(v58 + 16) & 1) != 0)
    {
      if (qword_100020768 != -1)
      {
        swift_once();
      }

      v60 = sub_100016D94();
      sub_10000BD98(v60, qword_100020FA0);

      v61 = sub_100016D74();
      v62 = sub_100016E84();

      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v154[0] = v64;
        *v63 = 136315138;
        v65 = sub_100015464(v55, v57, v154);

        *(v63 + 4) = v65;
        _os_log_impl(&_mh_execute_header, v61, v62, "Should not log for this useCaseString: %s", v63, 0xCu);
        sub_10000C658(v64);
      }

      else
      {
      }

LABEL_33:
LABEL_25:
      v74 = sub_100009F00(&qword_100020940, &qword_100017548);
      return (*(*(v74 - 8) + 56))(v40, 1, 1, v74);
    }
  }

  v76 = v139;
  sub_100016B64();
  v78 = v141;
  v77 = v142;
  if ((*(v141 + 48))(v76, 1, v142) != 1)
  {
    v87 = v137;
    (*(v78 + 32))(v137, v76, v77);
    v88 = v136;
    (*(v78 + 16))(v136, v87, v77);
    if ((*(v78 + 88))(v88, v77) == enum case for GenerativeFunctionsInstrumentationError.genericError(_:))
    {
      (*(v78 + 96))(v88, v77);
      v89 = *v88;
      v90 = swift_projectBox();
      v92 = v134;
      v91 = v135;
      v93 = v133;
      (*(v134 + 16))(v133, v90, v135);

      sub_100016AA4();
      if (v94)
      {
        v95 = sub_100016DF4();

        [v53 setErrorDomainString:v95];

        result = sub_100016A94();
        if (v96)
        {
          v97 = 0;
LABEL_43:
          [v53 setErrorCode:v97];
          (*(v92 + 8))(v93, v91);
          goto LABEL_44;
        }

        v97 = result;
        if (result < 0xFFFFFFFF80000000)
        {
          __break(1u);
        }

        else if (result <= 0x7FFFFFFF)
        {
          goto LABEL_43;
        }

        __break(1u);
        return result;
      }

      (*(v92 + 8))(v93, v91);
    }

    else
    {
      (*(v78 + 8))(v88, v77);
    }

    v98 = sub_100016DF4();
    [v53 setErrorDomainString:v98];

    [v53 setErrorCode:0];
LABEL_44:
    if (qword_100020768 != -1)
    {
      swift_once();
    }

    v99 = sub_100016D94();
    sub_10000BD98(v99, qword_100020FA0);
    v100 = v53;
    v101 = sub_100016D74();
    v102 = sub_100016E84();

    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      v154[0] = swift_slowAlloc();
      *v103 = 136315394;
      v104 = [v100 errorDomainString];
      if (v104)
      {
        v105 = v104;
        v106 = sub_100016E04();
        v108 = v107;

        v40 = v147;
      }

      else
      {
        v106 = 0;
        v108 = 0xE000000000000000;
      }

      v109 = sub_100015464(v106, v108, v154);

      *(v103 + 4) = v109;
      *(v103 + 12) = 2080;
      v153 = [v100 errorCode];
      v110 = sub_100016F84();
      v112 = sub_100015464(v110, v111, v154);

      *(v103 + 14) = v112;
      _os_log_impl(&_mh_execute_header, v101, v102, "GMS Error emitted, domain: %s,code: %s", v103, 0x16u);
      swift_arrayDestroy();

      (*(v141 + 8))(v137, v142);
    }

    else
    {

      (*(v78 + 8))(v137, v77);
    }

    goto LABEL_52;
  }

  sub_10000C3E4(v76, &qword_100020C98, &unk_1000177A0);
LABEL_52:
  v113 = [v149 gmsModelRequestContext];
  if (v113)
  {
    v114 = v113;
    [v113 setFailed:v53];
  }

  if (qword_100020768 != -1)
  {
    swift_once();
  }

  v115 = sub_100016D94();
  sub_10000BD98(v115, qword_100020FA0);
  v116 = v53;
  v117 = sub_100016D74();
  v118 = sub_100016E74();

  if (os_log_type_enabled(v117, v118))
  {
    v119 = swift_slowAlloc();
    v120 = swift_slowAlloc();
    v154[0] = v120;
    *v119 = 136315138;
    v121 = v116;
    v122 = [v121 description];
    v123 = sub_100016E04();
    v125 = v124;

    v126 = v123;
    v40 = v147;
    v127 = sub_100015464(v126, v125, v154);

    *(v119 + 4) = v127;
    _os_log_impl(&_mh_execute_header, v117, v118, "SELF FailEvent: %s", v119, 0xCu);
    sub_10000C658(v120);
  }

  v128 = sub_100009F00(&qword_100020940, &qword_100017548);
  v129 = *(v128 + 48);
  v130 = v149;
  *v40 = v149;
  v131 = v130;
  sub_100016BC4();
  sub_100016944();

  return (*(*(v128 - 8) + 56))(v40, 0, 1, v128);
}

uint64_t sub_100011D60@<X0>(void *a1@<X8>)
{
  v3 = sub_100016A74();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v300 = v270 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100009F00(&qword_100020930, &qword_100017770);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v304 = v270 - v8;
  v305 = sub_100016904();
  v296 = *(v305 - 8);
  v9 = *(v296 + 64);
  __chkstk_darwin(v305);
  v295 = v270 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100009F00(&qword_100020CA0, &qword_1000177B0);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v291 = v270 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v283 = v270 - v16;
  v17 = __chkstk_darwin(v15);
  v298 = v270 - v18;
  __chkstk_darwin(v17);
  v281 = v270 - v19;
  v20 = sub_100009F00(&qword_100020CA8, &qword_1000177B8);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v277 = v270 - v22;
  v274 = sub_100016C14();
  v275 = *(v274 - 8);
  v23 = *(v275 + 64);
  v24 = __chkstk_darwin(v274);
  v271 = v270 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v272 = v270 - v26;
  v287 = sub_100016C54();
  v288 = *(v287 - 8);
  v27 = v288[8];
  v28 = __chkstk_darwin(v287);
  v302 = v270 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v279 = v270 - v31;
  v32 = __chkstk_darwin(v30);
  v273 = v270 - v33;
  __chkstk_darwin(v32);
  v284 = (v270 - v34);
  v35 = sub_100009F00(&qword_100020908, &unk_100017790);
  v36 = *(*(v35 - 8) + 64);
  v37 = __chkstk_darwin(v35 - 8);
  v278 = (v270 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = __chkstk_darwin(v37);
  v301 = v270 - v40;
  v41 = __chkstk_darwin(v39);
  v297 = v270 - v42;
  __chkstk_darwin(v41);
  v44 = v270 - v43;
  v45 = sub_100016B14();
  v46 = *(v45 - 8);
  v47 = *(v46 + 64);
  v48 = __chkstk_darwin(v45);
  v299 = v270 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __chkstk_darwin(v48);
  v290 = v270 - v51;
  v52 = __chkstk_darwin(v50);
  v282 = v270 - v53;
  v54 = __chkstk_darwin(v52);
  v289 = v270 - v55;
  v56 = __chkstk_darwin(v54);
  v280 = v270 - v57;
  __chkstk_darwin(v56);
  v59 = v270 - v58;
  v60 = *&v1[OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_ingestor];
  v61 = objc_allocWithZone(SISchemaUUID);
  v62 = v1;
  isa = sub_1000168E4().super.isa;
  v64 = [v61 initWithNSUUID:isa];

  v65 = sub_10000BDEC(v64);
  v66 = &GMSSELFIngestor;
  v307 = v65;
  if (!v65)
  {
    goto LABEL_16;
  }

  v292 = a1;
  v306 = OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_clientRequestStartEvent;
  sub_100016B24();
  v67 = sub_100016AD4();
  v69 = v68;
  v71 = *(v46 + 8);
  v70 = v46 + 8;
  v303 = v71;
  v71(v59, v45);
  if (!v69)
  {

    a1 = v292;
    v66 = &GMSSELFIngestor;
LABEL_16:
    if (v66[26].name != -1)
    {
      swift_once();
    }

    v86 = sub_100016D94();
    sub_10000BD98(v86, qword_100020FA0);

    v87 = sub_100016D74();
    v88 = sub_100016E84();

    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v309 = v90;
      *v89 = 136315138;
      sub_1000167B0(&qword_100020938, &type metadata accessor for UUID);
      v91 = sub_100016F84();
      v93 = sub_100015464(v91, v92, &v309);

      *(v89 + 4) = v93;
      _os_log_impl(&_mh_execute_header, v87, v88, "useCaseIdentifier missing for request %s", v89, 0xCu);
      sub_10000C658(v90);
    }

    v94 = sub_100009F00(&qword_100020940, &qword_100017548);
    v95 = *(*(v94 - 8) + 56);
    v96 = a1;
    goto LABEL_21;
  }

  v293 = v70;
  v294 = v45;
  if (*(v60 + 16))
  {

    v72 = sub_100002304(v67, v69);

    if (!v72 && (*(v60 + 16) & 1) != 0)
    {
      if (qword_100020768 != -1)
      {
        swift_once();
      }

      v73 = sub_100016D94();
      sub_10000BD98(v73, qword_100020FA0);

      v74 = sub_100016D74();
      v75 = sub_100016E84();

      v76 = os_log_type_enabled(v74, v75);
      v77 = v307;
      if (v76)
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v309 = v79;
        *v78 = 136315138;
        v80 = sub_100015464(v67, v69, &v309);

        *(v78 + 4) = v80;
        _os_log_impl(&_mh_execute_header, v74, v75, "Should not log for this useCaseString: %s", v78, 0xCu);
        sub_10000C658(v79);
      }

      else
      {
      }

      v94 = sub_100009F00(&qword_100020940, &qword_100017548);
      v95 = *(*(v94 - 8) + 56);
      v96 = v292;
LABEL_21:
      v97 = 1;
      return v95(v96, v97, 1, v94);
    }
  }

  v81 = [objc_allocWithZone(GMSSchemaGMSModelRequestStarted) init];
  v82 = sub_100016020(v67, v69);
  v276 = v81;
  if (v82 <= 2)
  {
    v83 = v304;
    v84 = v44;
    if (v82)
    {
      if (v82 == 1)
      {
        if (v81)
        {
          v85 = 2;
LABEL_32:
          [v81 setUseCase:v85];
          goto LABEL_33;
        }
      }

      else if (v81)
      {
        v85 = 3;
        goto LABEL_32;
      }
    }

    else if (v81)
    {
      v85 = 1;
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  v83 = v304;
  if (v82 == 3)
  {
    v84 = v44;
    if (v81)
    {
      v85 = 4;
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if (v82 == 4)
  {
    v84 = v44;
    if (v81)
    {
      v85 = 0;
      goto LABEL_32;
    }

LABEL_33:
    if (qword_100020768 != -1)
    {
      swift_once();
    }

    v98 = sub_100016D94();
    sub_10000BD98(v98, qword_100020FA0);
    v99 = v81;
    v100 = sub_100016D74();
    v101 = sub_100016E74();
    v102 = os_log_type_enabled(v100, v101);
    v103 = v297;
    if (v102)
    {
      v104 = swift_slowAlloc();
      *v104 = 67109120;
      if (v99)
      {
        v105 = [v99 useCase];
      }

      else
      {
        v105 = 0;
      }

      *(v104 + 4) = v105;

      _os_log_impl(&_mh_execute_header, v100, v101, "Usecase set to: %d", v104, 8u);

      v81 = v276;
    }

    else
    {
    }

    goto LABEL_46;
  }

  if (qword_100020768 != -1)
  {
    swift_once();
  }

  v106 = sub_100016D94();
  sub_10000BD98(v106, qword_100020FA0);
  v107 = v62;

  v108 = sub_100016D74();
  v109 = sub_100016E84();

  if (os_log_type_enabled(v108, v109))
  {
    v110 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    v309 = v111;
    *v110 = 136315138;
    sub_1000167B0(&qword_100020938, &type metadata accessor for UUID);
    v112 = sub_100016F84();
    v114 = sub_100015464(v112, v113, &v309);

    *(v110 + 4) = v114;
    _os_log_impl(&_mh_execute_header, v108, v109, "Unknown or missing useCase for request %s", v110, 0xCu);
    sub_10000C658(v111);

    v83 = v304;
  }

  v81 = v276;
  v84 = v44;
  v62 = v107;
  v103 = v297;
LABEL_46:
  v115 = OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_signedInStatusEvent;
  swift_beginAccess();
  v116 = sub_100016BD4();
  v117 = *(v116 - 8);
  v118 = *(v117 + 48);
  v297 = v116;
  v286 = v118;
  v285 = v117 + 48;
  v119 = &GMSSELFIngestor;
  if (!(v118)(&v62[v115], 1))
  {
    sub_100016BA4();
    swift_endAccess();
    v121 = sub_100016D64();
    v122 = *(v121 - 8);
    if ((*(v122 + 48))(v84, 1, v121) == 1)
    {
      goto LABEL_57;
    }

    sub_10000C37C(v84, v103, &qword_100020908, &unk_100017790);
    if ((*(v122 + 88))(v103, v121) != enum case for GenerativeFunctionsInstrumentationMetadata.partnerCloudRequest(_:))
    {
      (*(v122 + 8))(v103, v121);
      goto LABEL_57;
    }

    (*(v122 + 96))(v103, v121);
    v270[0] = *v103;
    v123 = swift_projectBox();
    v124 = v288[2];
    v125 = v284;
    v126 = v287;
    v124(v284, v123, v287);
    if (v81)
    {
      v127 = v81;
      [v127 setIsUserSignedIn:sub_100016C24() & 1];
    }

    if (qword_100020768 != -1)
    {
      swift_once();
    }

    v128 = sub_100016D94();
    v129 = sub_10000BD98(v128, qword_100020FA0);
    v130 = v273;
    v124(v273, v125, v126);
    v131 = sub_100016D74();
    v132 = sub_100016E74();
    if (os_log_type_enabled(v131, v132))
    {
      v133 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      v309 = v134;
      *v133 = 136315138;
      LOBYTE(v308) = sub_100016C24();
      sub_100009F00(&qword_100020CB8, &qword_1000177C8);
      v135 = sub_100016EA4();
      v136 = v130;
      v138 = v137;
      v273 = v288[1];
      (v273)(v136, v126);
      v139 = sub_100015464(v135, v138, &v309);

      *(v133 + 4) = v139;
      _os_log_impl(&_mh_execute_header, v131, v132, "isUserSignedIn set to: %s", v133, 0xCu);
      sub_10000C658(v134);

      v81 = v276;
    }

    else
    {

      v273 = v288[1];
      (v273)(v130, v126);
    }

    v83 = v304;
    v147 = v302;
    v245 = v274;
    sub_100016C34();
    v246 = v277;
    v247 = v275;
    v248 = (*(v275 + 48))(v277, 1, v245);
    v119 = &GMSSELFIngestor;
    v270[1] = v129;
    if (v248 == 1)
    {
      sub_10000C3E4(v246, &qword_100020CA8, &qword_1000177B8);
      v249 = sub_100016D74();
      v250 = sub_100016E74();
      if (os_log_type_enabled(v249, v250))
      {
        v251 = swift_slowAlloc();
        *v251 = 0;
        _os_log_impl(&_mh_execute_header, v249, v250, "accountType field is missing", v251, 2u);
        v147 = v302;
      }

      v144 = v307;
      if (v81)
      {
        [v81 setAccountType:3];
      }
    }

    else
    {
      v253 = v246;
      v254 = v272;
      (*(v247 + 32))(v272, v253, v245);
      v255 = v271;
      (*(v247 + 16))(v271, v254, v245);
      v256 = (*(v247 + 88))(v255, v245);
      if (v256 == enum case for GenerativeFunctionsInstrumentationMetadata.PartnerCloudRequest.PartnerCloudAccountType.free(_:))
      {
        v144 = v307;
        if (v81)
        {
          [v81 setAccountType:1];
        }
      }

      else
      {
        v144 = v307;
        if (v256 != enum case for GenerativeFunctionsInstrumentationMetadata.PartnerCloudRequest.PartnerCloudAccountType.premium(_:))
        {
          v257 = sub_100016D74();
          v258 = sub_100016E74();
          if (os_log_type_enabled(v257, v258))
          {
            v259 = swift_slowAlloc();
            *v259 = 0;
            _os_log_impl(&_mh_execute_header, v257, v258, "account type absent or not applicable)", v259, 2u);
            v147 = v302;
          }

          if (v81)
          {
            [v81 setAccountType:0];
          }

          v260 = *(v275 + 8);
          v260(v272, v245);
          v260(v271, v245);
          goto LABEL_147;
        }

        if (v81)
        {
          [v81 setAccountType:2];
        }
      }

      (*(v247 + 8))(v254, v245);
    }

LABEL_147:
    v261 = v81;
    v262 = sub_100016D74();
    v263 = sub_100016E74();

    if (os_log_type_enabled(v262, v263))
    {
      v264 = swift_slowAlloc();
      v265 = swift_slowAlloc();
      v309 = v265;
      *v264 = 136315138;
      if (v81)
      {
        [v261 accountType];
        v266 = sub_100016E94();
        v268 = v267;
      }

      else
      {
        v268 = 0xE700000000000000;
        v266 = 0x6E776F6E6B6E75;
      }

      v269 = sub_100015464(v266, v268, &v309);

      *(v264 + 4) = v269;
      _os_log_impl(&_mh_execute_header, v262, v263, "isUserSignedIn.accountType set to: %s", v264, 0xCu);
      sub_10000C658(v265);

      (v273)(v284, v287);

      v81 = v276;
      v119 = &GMSSELFIngestor;
      v145 = v301;
      v147 = v302;
    }

    else
    {

      (v273)(v284, v287);

      v145 = v301;
    }

    goto LABEL_62;
  }

  swift_endAccess();
  v120 = sub_100016D64();
  (*(*(v120 - 8) + 56))(v84, 1, 1, v120);
LABEL_57:
  if (qword_100020768 != -1)
  {
    swift_once();
  }

  v140 = sub_100016D94();
  sub_10000BD98(v140, qword_100020FA0);
  v141 = sub_100016D74();
  v142 = sub_100016E74();
  v143 = os_log_type_enabled(v141, v142);
  v144 = v307;
  v145 = v301;
  if (v143)
  {
    v146 = swift_slowAlloc();
    *v146 = 0;
    _os_log_impl(&_mh_execute_header, v141, v142, "signedInStatusEvent.metadata: no match", v146, 2u);
  }

  v147 = v302;
LABEL_62:
  sub_10000C3E4(v84, &qword_100020908, &unk_100017790);
  v148 = OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_webSearchStatusEvent;
  swift_beginAccess();
  if (v286(&v62[v148], 1, v297))
  {
    swift_endAccess();
    v149 = sub_100016D64();
    (*(*(v149 - 8) + 56))(v145, 1, 1, v149);
LABEL_73:
    if (v119[26].name != -1)
    {
      swift_once();
    }

    v172 = sub_100016D94();
    sub_10000BD98(v172, qword_100020FA0);
    v173 = sub_100016D74();
    v174 = sub_100016E74();
    if (os_log_type_enabled(v173, v174))
    {
      v175 = swift_slowAlloc();
      *v175 = 0;
      _os_log_impl(&_mh_execute_header, v173, v174, "webSearchStatusEvent.metadata: not match", v175, 2u);
    }

    v176 = v298;
    goto LABEL_78;
  }

  sub_100016BA4();
  swift_endAccess();
  v150 = sub_100016D64();
  v151 = *(v150 - 8);
  if ((*(v151 + 48))(v145, 1, v150) == 1)
  {
    goto LABEL_73;
  }

  v152 = v278;
  sub_10000C37C(v145, v278, &qword_100020908, &unk_100017790);
  if ((*(v151 + 88))(v152, v150) != enum case for GenerativeFunctionsInstrumentationMetadata.partnerCloudRequest(_:))
  {
    (*(v151 + 8))(v152, v150);
    goto LABEL_73;
  }

  (*(v151 + 96))(v152, v150);
  v153 = *v152;
  v154 = swift_projectBox();
  v155 = v288[2];
  v156 = v279;
  v155(v279, v154, v287);
  if (v81)
  {
    v157 = v81;
    [v157 setIsWebSearchUsed:sub_100016C44() & 1];

    v147 = v302;
  }

  if (qword_100020768 != -1)
  {
    swift_once();
  }

  v158 = sub_100016D94();
  sub_10000BD98(v158, qword_100020FA0);
  v159 = v156;
  v160 = v287;
  v155(v147, v159, v287);
  v161 = v147;
  v162 = sub_100016D74();
  v163 = sub_100016E74();
  if (os_log_type_enabled(v162, v163))
  {
    v164 = swift_slowAlloc();
    v278 = v164;
    v284 = swift_slowAlloc();
    v309 = v284;
    *v164 = 136315138;
    LOBYTE(v308) = sub_100016C44();
    sub_100009F00(&qword_100020CB8, &qword_1000177C8);
    v165 = sub_100016EA4();
    v167 = v166;
    v302 = v153;
    v168 = v288[1];
    v168(v161, v160);
    v169 = v168;
    v170 = sub_100015464(v165, v167, &v309);
    v83 = v304;

    v171 = v278;
    *(v278 + 4) = v170;
    _os_log_impl(&_mh_execute_header, v162, v163, "isUserSignedIn set to: %s", v171, 0xCu);
    sub_10000C658(v284);
    v81 = v276;

    v169(v279, v160);
  }

  else
  {

    v252 = v288[1];
    v252(v161, v160);
    v252(v279, v160);
  }

  v119 = &GMSSELFIngestor;
  v176 = v298;
  v145 = v301;
LABEL_78:
  sub_10000C3E4(v145, &qword_100020908, &unk_100017790);
  if (!v81)
  {
    goto LABEL_96;
  }

  v177 = OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_modelInfoEvent;
  swift_beginAccess();
  v178 = v286(&v62[v177], 1, v297);
  v179 = v81;
  if (!v178)
  {
    v180 = v280;
    sub_100016B24();
    v181 = v281;
    sub_100016AF4();
    v303(v180, v294);
    v182 = sub_100016B54();
    if (!(*(*(v182 - 8) + 48))(v181, 1, v182))
    {
      sub_100016B34();
      sub_10000C3E4(v181, &qword_100020CA0, &qword_1000177B0);
      swift_endAccess();
      v144 = v307;
      goto LABEL_86;
    }

    sub_10000C3E4(v181, &qword_100020CA0, &qword_1000177B0);
    v144 = v307;
  }

  swift_endAccess();
  v183 = v289;
  sub_100016B24();
  sub_100016AF4();
  v303(v183, v294);
  v184 = sub_100016B54();
  v185 = *(v184 - 8);
  if ((*(v185 + 48))(v176, 1, v184) == 1)
  {
    sub_10000C3E4(v176, &qword_100020CA0, &qword_1000177B0);
    v186 = 0;
    v81 = v276;
    goto LABEL_87;
  }

  sub_100016B34();
  (*(v185 + 8))(v176, v184);
  v81 = v276;
LABEL_86:
  v186 = sub_100016DF4();

LABEL_87:
  [v179 setModelName:v186];

  swift_beginAccess();
  v187 = v286(&v62[v177], 1, v297);
  v188 = v179;
  v189 = v291;
  if (!v187)
  {
    v190 = v282;
    sub_100016B24();
    v191 = v283;
    sub_100016AF4();
    v303(v190, v294);
    v192 = sub_100016B54();
    if (!(*(*(v192 - 8) + 48))(v191, 1, v192))
    {
      sub_100016B44();
      sub_10000C3E4(v191, &qword_100020CA0, &qword_1000177B0);
      swift_endAccess();
      goto LABEL_94;
    }

    sub_10000C3E4(v191, &qword_100020CA0, &qword_1000177B0);
  }

  swift_endAccess();
  v193 = v290;
  sub_100016B24();
  sub_100016AF4();
  v303(v193, v294);
  v194 = sub_100016B54();
  v195 = *(v194 - 8);
  if ((*(v195 + 48))(v189, 1, v194) != 1)
  {
    sub_100016B44();
    (*(v195 + 8))(v189, v194);
LABEL_94:
    v196 = sub_100016DF4();

    goto LABEL_95;
  }

  sub_10000C3E4(v189, &qword_100020CA0, &qword_1000177B0);
  v196 = 0;
LABEL_95:
  v119 = &GMSSELFIngestor;
  [v188 setModelVersion:v196];

LABEL_96:
  if (v119[26].name != -1)
  {
    swift_once();
  }

  v197 = sub_100016D94();
  sub_10000BD98(v197, qword_100020FA0);
  v198 = v81;
  v199 = sub_100016D74();
  v200 = sub_100016E74();

  if (os_log_type_enabled(v199, v200))
  {
    v302 = v62;
    v201 = 0x7974706D65;
    v202 = swift_slowAlloc();
    v309 = swift_slowAlloc();
    *v202 = 136315394;
    if (v81)
    {
      v203 = [v198 modelName];
      if (v203)
      {
        v204 = v203;
        v205 = sub_100016E04();
        v207 = v206;
      }

      else
      {
        v207 = 0xE500000000000000;
        v205 = 0x7974706D65;
      }

      v210 = sub_100015464(v205, v207, &v309);

      *(v202 + 4) = v210;
      *(v202 + 12) = 2080;
      v211 = [v198 modelVersion];
      if (v211)
      {
        v212 = v211;
        v201 = sub_100016E04();
        v208 = v213;
      }

      else
      {
        v208 = 0xE500000000000000;
      }

      v144 = v307;
    }

    else
    {
      v208 = 0xE500000000000000;
      v209 = sub_100015464(0x7974706D65, 0xE500000000000000, &v309);

      *(v202 + 4) = v209;
      *(v202 + 12) = 2080;
    }

    v214 = sub_100015464(v201, v208, &v309);

    *(v202 + 14) = v214;
    _os_log_impl(&_mh_execute_header, v199, v200, "ModelName: %s, modelVersion: %s", v202, 0x16u);
    swift_arrayDestroy();

    v83 = v304;
    v81 = v276;
    if (!v276)
    {
      goto LABEL_112;
    }
  }

  else
  {

    if (!v81)
    {
      goto LABEL_112;
    }
  }

  [v198 setGenAIAgentUsed:2];
LABEL_112:
  v215 = v299;
  sub_100016B24();
  v216 = sub_100016AE4();
  v218 = v217;
  v303(v215, v294);
  if (v218)
  {
    sub_1000168C4();
    v219 = v296;
    v220 = v305;
    if ((*(v296 + 48))(v83, 1, v305) == 1)
    {

      sub_10000C3E4(v83, &qword_100020930, &qword_100017770);
    }

    else
    {
      (*(v219 + 32))(v295, v83, v220);
      if (v81)
      {
        v221 = objc_allocWithZone(SISchemaUUID);
        v222 = v198;
        v223 = sub_1000168E4().super.isa;
        v224 = [v221 initWithNSUUID:v223];

        [v222 setGmsClientRequestIdentifier:v224];
      }

      v225 = sub_100016D74();
      v226 = sub_100016E74();

      if (os_log_type_enabled(v225, v226))
      {
        v227 = swift_slowAlloc();
        v228 = swift_slowAlloc();
        v309 = v228;
        *v227 = 136315138;
        v229 = sub_100015464(v216, v218, &v309);

        *(v227 + 4) = v229;
        _os_log_impl(&_mh_execute_header, v225, v226, "GMSClientRequestIdentifier set to: %s", v227, 0xCu);
        sub_10000C658(v228);
      }

      else
      {
      }

      (*(v296 + 8))(v295, v305);
      v81 = v276;
    }
  }

  v230 = [v144 gmsModelRequestContext];
  [v230 setStarted:v198];

  v231 = v198;
  v232 = sub_100016D74();
  v233 = sub_100016E74();

  if (os_log_type_enabled(v232, v233))
  {
    v234 = swift_slowAlloc();
    v235 = swift_slowAlloc();
    v308 = v81;
    v309 = v235;
    *v234 = 136315138;
    v236 = v231;
    sub_100009F00(&qword_100020CB0, &qword_1000177C0);
    v237 = sub_100016E14();
    v239 = sub_100015464(v237, v238, &v309);

    *(v234 + 4) = v239;
    _os_log_impl(&_mh_execute_header, v232, v233, "StartEvent: %s", v234, 0xCu);
    sub_10000C658(v235);
  }

  v240 = v292;
  v241 = sub_100009F00(&qword_100020940, &qword_100017548);
  v242 = *(v241 + 48);
  *v240 = v144;
  v243 = v144;
  sub_100016BC4();
  sub_100016944();

  v95 = *(*(v241 - 8) + 56);
  v96 = v240;
  v97 = 0;
  v94 = v241;
  return v95(v96, v97, 1, v94);
}

uint64_t GenerativeFunctionsInstrumentationEvent.latency(since:)(uint64_t a1)
{
  v132 = a1;
  v2 = sub_100016BD4();
  v128 = *(v2 - 8);
  v129 = v2;
  v3 = *(v128 + 64);
  v4 = __chkstk_darwin(v2);
  v123 = &v116 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v122 = &v116 - v7;
  v8 = __chkstk_darwin(v6);
  v120 = &v116 - v9;
  __chkstk_darwin(v8);
  v119 = &v116 - v10;
  v121 = sub_100009F00(&qword_100020A60, &unk_1000175E0);
  v11 = *(*(v121 - 8) + 64);
  __chkstk_darwin(v121);
  v124 = &v116 - v12;
  v125 = sub_100016A84();
  v130 = *(v125 - 8);
  v13 = v130[8];
  v14 = __chkstk_darwin(v125);
  v117 = &v116 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v118 = (&v116 - v17);
  v18 = __chkstk_darwin(v16);
  v126 = &v116 - v19;
  __chkstk_darwin(v18);
  v127 = &v116 - v20;
  v21 = sub_100016904();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v26 = &v116 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v116 - v27;
  v29 = sub_100016A74();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v32 = __chkstk_darwin(v29);
  v34 = &v116 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v36 = &v116 - v35;
  v131 = v1;
  sub_100016BC4();
  sub_100016A54();
  v37 = *(v30 + 8);
  v37(v36, v29);
  sub_100016BC4();
  sub_100016A54();
  v37(v34, v29);
  v38 = sub_1000168F4();
  v39 = *(v22 + 8);
  v39(v26, v21);
  v39(v28, v21);
  if ((v38 & 1) == 0)
  {
    v64 = v131;
    v63 = v132;
    if (qword_100020758 != -1)
    {
      swift_once();
    }

    v65 = sub_100016D94();
    sub_10000BD98(v65, qword_100020F70);
    v67 = v128;
    v66 = v129;
    v68 = *(v128 + 16);
    v69 = v122;
    v68(v122, v64, v129);
    v70 = v123;
    v68(v123, v63, v66);
    v71 = sub_100016D74();
    v72 = sub_100016E84();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      *v73 = 136315394;
      v74 = sub_100016BB4();
      v75 = v69;
      v77 = v76;
      v78 = *(v67 + 8);
      v78(v75, v66);
      v79 = sub_100015464(v74, v77, &v133);

      *(v73 + 4) = v79;
      *(v73 + 12) = 2080;
      v80 = sub_100016BB4();
      v82 = v81;
      v78(v70, v66);
      v83 = sub_100015464(v80, v82, &v133);

      *(v73 + 14) = v83;
      _os_log_impl(&_mh_execute_header, v71, v72, "DataProcessors: mismatched boot sessions, ignoring events of type %s and %s", v73, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v93 = *(v67 + 8);
      v93(v70, v66);
      v93(v69, v66);
    }

    return 0;
  }

  sub_100016BC4();
  v40 = v127;
  sub_100016A64();
  v37(v36, v29);
  sub_100016BC4();
  v41 = v126;
  sub_100016A64();
  v37(v36, v29);
  v42 = *(v121 + 48);
  v43 = v130;
  v44 = v130[2];
  v46 = v124;
  v45 = v125;
  v44(v124, v40, v125);
  v44(v46 + v42, v41, v45);
  v47 = v43[11];
  v48 = v47(v46, v45);
  v49 = v48;
  if (v48 == enum case for MonotonicTimestampValue.suspendingNanosecondsSinceBoot(_:))
  {
    v50 = v118;
    v44(v118, v46, v45);
    v51 = v130;
    v52 = v46;
    v53 = v130[12];
    v53(v50, v45);
    v123 = *v50;
    v122 = *(v123 + 2);
    v54 = v47(v52 + v42, v45);
    v55 = v45;
    v56 = v128;
    v57 = v129;
    if (v54 == v49)
    {
      v53((v52 + v42), v55);
      v58 = sub_1000151F4(v122, *(*(v52 + v42) + 16));
      v60 = v59;
      v61 = v51[1];
      v61(v126, v55, v58);
      (v61)(v127, v55);

      (v61)(v52, v55);
      return v60;
    }

LABEL_15:

    v40 = v127;
    goto LABEL_16;
  }

  v56 = v128;
  v57 = v129;
  if (v48 == enum case for MonotonicTimestampValue.continuousNanosecondsSinceBoot(_:))
  {
    v84 = v117;
    v86 = v124;
    v85 = v125;
    v44(v117, v124, v125);
    v87 = v130[12];
    v87(v84, v85);
    v88 = *(*v84 + 16);
    if (v47(v86 + v42, v85) == v49)
    {
      v87((v86 + v42), v85);
      v89 = sub_1000151F4(v88, *(*(v86 + v42) + 16));
      v91 = v90;
      v92 = v130[1];
      v92(v126, v85, v89);
      (v92)(v127, v85);

      (v92)(v86, v85);
      return v91;
    }

    v56 = v128;
    v57 = v129;
    goto LABEL_15;
  }

LABEL_16:
  if (qword_100020758 != -1)
  {
    swift_once();
  }

  v94 = sub_100016D94();
  sub_10000BD98(v94, qword_100020F70);
  v95 = *(v56 + 16);
  v96 = v119;
  v95(v119, v131, v57);
  v97 = v120;
  v95(v120, v132, v57);
  v98 = sub_100016D74();
  v99 = sub_100016E84();
  if (os_log_type_enabled(v98, v99))
  {
    v100 = swift_slowAlloc();
    LODWORD(v132) = v99;
    v101 = v100;
    v133 = swift_slowAlloc();
    *v101 = 136315394;
    v102 = sub_100016BB4();
    v103 = v97;
    v105 = v104;
    v106 = *(v56 + 8);
    v106(v96, v57);
    v107 = sub_100015464(v102, v105, &v133);

    *(v101 + 4) = v107;
    *(v101 + 12) = 2080;
    v108 = sub_100016BB4();
    v110 = v109;
    v106(v103, v57);
    v111 = sub_100015464(v108, v110, &v133);

    *(v101 + 14) = v111;
    _os_log_impl(&_mh_execute_header, v98, v132, "DataProcessors: mismatched timestamp clock, ignoring events of type %s and %s", v101, 0x16u);
    swift_arrayDestroy();

    v112 = v130[1];
    v113 = v125;
    v112(v126, v125);
    v114 = v127;
  }

  else
  {

    v115 = *(v56 + 8);
    v115(v97, v57);
    v115(v96, v57);
    v112 = v130[1];
    v113 = v125;
    v112(v126, v125);
    v114 = v40;
  }

  v112(v114, v113);
  sub_10000C3E4(v124, &qword_100020A60, &unk_1000175E0);
  return 0;
}

uint64_t PartnerCloudRequestEvents.deinit()
{
  v1 = OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_requestIdentifier;
  v2 = sub_100016904();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_ingestor);

  v4 = *(v0 + OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_eventType + 8);

  sub_10000C3E4(v0 + OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_eventSubType, &qword_100020928, &qword_100017540);
  v5 = OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_clientRequestStartEvent;
  v6 = sub_100016BD4();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  sub_10000C3E4(v0 + OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_promptRequestStartEvent, &qword_100020920, &unk_1000175F0);
  sub_10000C3E4(v0 + OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_firstTokenEvent, &qword_100020920, &unk_1000175F0);
  sub_10000C3E4(v0 + OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_modelInfoEvent, &qword_100020920, &unk_1000175F0);
  sub_10000C3E4(v0 + OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_signedInStatusEvent, &qword_100020920, &unk_1000175F0);
  sub_10000C3E4(v0 + OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_webSearchStatusEvent, &qword_100020920, &unk_1000175F0);
  sub_10000C3E4(v0 + OBJC_IVAR____TtC15GMSSELFIngestor25PartnerCloudRequestEvents_requestLinkAndMonoTimeStamp, &qword_100020918, &qword_100017538);
  return v0;
}

uint64_t PartnerCloudRequestEvents.__deallocating_deinit()
{
  PartnerCloudRequestEvents.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

Swift::Int sub_100015104()
{
  v1 = *v0;
  sub_100016FA4();
  sub_100016FB4(v1);
  return sub_100016FC4();
}

Swift::Int sub_100015178()
{
  v1 = *v0;
  sub_100016FA4();
  sub_100016FB4(v1);
  return sub_100016FC4();
}

unint64_t sub_1000151BC@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000166C8(*a1);
  *a2 = result;
  return result;
}

double sub_1000151F4(unint64_t a1, unint64_t a2)
{
  if (!a1 || !a2)
  {
    if (qword_100020758 != -1)
    {
      swift_once();
    }

    v7 = sub_100016D94();
    sub_10000BD98(v7, qword_100020F70);
    v3 = sub_100016D74();
    v4 = sub_100016E84();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_13;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "DataProcessors: start or end timestamp value is 0";
    goto LABEL_12;
  }

  if (a2 < a1)
  {
    if (qword_100020758 != -1)
    {
      swift_once();
    }

    v2 = sub_100016D94();
    sub_10000BD98(v2, qword_100020F70);
    v3 = sub_100016D74();
    v4 = sub_100016E84();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_13;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "DataProcessors: start timestamp value is greater than end timestamp value";
LABEL_12:
    _os_log_impl(&_mh_execute_header, v3, v4, v6, v5, 2u);

LABEL_13:

    return result;
  }

  return (a2 - a1) / 1000000.0;
}

uint64_t sub_100015394(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_100015408(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_100015464(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_100015464(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100015530(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1000167F8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000C658(v11);
  return v7;
}

unint64_t sub_100015530(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10001563C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_100016EF4();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_10001563C(uint64_t a1, unint64_t a2)
{
  v4 = sub_100015688(a1, a2);
  sub_1000157B8(&off_10001CA40);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100015688(uint64_t a1, unint64_t a2)
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

  v6 = sub_1000158A4(v5, 0);
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

  result = sub_100016EF4();
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
        v10 = sub_100016E44();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000158A4(v10, 0);
        result = sub_100016ED4();
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

uint64_t sub_1000157B8(uint64_t result)
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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_100015918(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1000158A4(uint64_t a1, uint64_t a2)
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

  sub_100009F00(&unk_100020CC0, &unk_1000177D0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100015918(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009F00(&unk_100020CC0, &unk_1000177D0);
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

_BYTE **sub_100015A0C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t type metadata accessor for PartnerCloudRequestEvents()
{
  result = qword_100020B70;
  if (!qword_100020B70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100015A94()
{
  v0 = sub_100016904();
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    sub_100015C70(319, &qword_100020B80, &type metadata accessor for GenerativeFunctionsInstrumentationEvent.Subtype);
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      v4 = sub_100016BD4();
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        sub_100015C70(319, &qword_100020B88, &type metadata accessor for GenerativeFunctionsInstrumentationEvent);
        if (v7 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          sub_100015CC4();
          if (v9 <= 0x3F)
          {
            v14 = *(v8 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_100015C70(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_100016EB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100015CC4()
{
  if (!qword_100020B90)
  {
    sub_10000BB68(&qword_100020778, &unk_1000176A0);
    v0 = sub_100016EB4();
    if (!v1)
    {
      atomic_store(v0, &qword_100020B90);
    }
  }
}

uint64_t getEnumTagSinglePayload for InferenceRequestType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for InferenceRequestType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100015E9C()
{
  result = qword_100020C68;
  if (!qword_100020C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020C68);
  }

  return result;
}

unint64_t sub_100015EF0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_100016FA4();
  sub_100016E24();
  v6 = sub_100016FC4();

  return sub_100015F68(a1, a2, v6);
}

unint64_t sub_100015F68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_100016F94())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_100016020(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10001CA68;
  v6._object = a2;
  v4 = sub_100016F64(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10001606C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100009F00(&qword_100020C90, &qword_100017788);
    v3 = sub_100016F54();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000C37C(v4, &v13, &qword_100020C88, &qword_100017780);
      v5 = v13;
      v6 = v14;
      result = sub_100015EF0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1000167A0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

void sub_10001619C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_100009F00(&qword_100020920, &unk_1000175F0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v31 - v8;
  v10 = sub_100016BD4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C37C(a3, v9, &qword_100020920, &unk_1000175F0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_10000C3E4(v9, &qword_100020920, &unk_1000175F0);
    if (qword_100020768 != -1)
    {
      swift_once();
    }

    v15 = sub_100016D94();
    sub_10000BD98(v15, qword_100020FA0);

    v16 = sub_100016D74();
    v17 = sub_100016E74();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v32 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_100015464(a1, a2, &v32);
      _os_log_impl(&_mh_execute_header, v16, v17, "PartnerCloudRequestEvents%s was set to nil.", v18, 0xCu);
      sub_10000C658(v19);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    sub_100009F00(&qword_100020C80, &qword_100017778);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000175D0;
    *(inited + 32) = 0x696669746E656469;
    *(inited + 40) = 0xEB00000000737265;
    *(inited + 72) = sub_100016B14();
    sub_10001673C((inited + 48));
    sub_100016B24();
    *(inited + 80) = 0x707954746E657665;
    *(inited + 88) = 0xE900000000000065;
    v21 = sub_100016BB4();
    *(inited + 120) = &type metadata for String;
    *(inited + 96) = v21;
    *(inited + 104) = v22;
    sub_10001606C(inited);
    swift_setDeallocating();
    sub_100009F00(&qword_100020C88, &qword_100017780);
    swift_arrayDestroy();
    if (qword_100020768 != -1)
    {
      swift_once();
    }

    v23 = sub_100016D94();
    sub_10000BD98(v23, qword_100020FA0);

    v24 = sub_100016D74();
    v25 = sub_100016E74();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v26 = 136315394;
      *(v26 + 4) = sub_100015464(a1, a2, &v32);
      *(v26 + 12) = 2080;
      v27 = sub_100016DB4();
      v29 = v28;

      v30 = sub_100015464(v27, v29, &v32);

      *(v26 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v24, v25, "PartnerCloudRequestEvents %s: %s", v26, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    (*(v11 + 8))(v14, v10);
  }
}

unint64_t sub_1000166C8(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

uint64_t *sub_1000166D8(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t *sub_10001673C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

_OWORD *sub_1000167A0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1000167B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000167F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}