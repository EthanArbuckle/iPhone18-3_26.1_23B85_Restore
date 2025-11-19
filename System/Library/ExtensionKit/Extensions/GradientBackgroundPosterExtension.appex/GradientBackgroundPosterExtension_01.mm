uint64_t sub_1000167A8()
{
  v1 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_logger;
  v2 = sub_10004166C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_tagID + 8);

  v4 = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_viewConfiguration + 8);
  v5 = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_viewConfiguration + 24);

  v6 = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration + 16);
  v7 = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration + 24);
  v8 = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration + 32);
  v9 = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration + 40);
  v10 = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration + 48);
  v11 = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration + 60);
  v12 = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration + 56);
  sub_1000086A4(*(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration), *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration + 8));
  v13 = *(*v0 + 48);
  v14 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SnapshotWriter()
{
  result = qword_10005E2E0;
  if (!qword_10005E2E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000168F8()
{
  result = sub_10004166C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000169B0()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100016A1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100016A34(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100016A44()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension26TranscriptBackgroundEffect_logger;
  v3 = sub_10004166C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TranscriptBackgroundEffect()
{
  result = qword_10005E3E8;
  if (!qword_10005E3E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100016B44()
{
  result = sub_10004166C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_100016C30()
{
  v1 = [v0 rootNode];
  v2 = sub_1000417CC();
  v3 = [v1 childNodeWithName:v2 recursively:1];

  if (!v3 || (v4 = [v3 presentationObject], v3, sub_100041C9C(), swift_unknownObjectRelease(), sub_100016E94(), (swift_dynamicCast() & 1) == 0) || (v5 = objc_msgSend(v12[0], "parameters"), v12[0], !v5))
  {
    v14 = 0u;
    v15 = 0u;
LABEL_7:
    sub_100016E2C(&v14);
    v8 = 0;
    v9 = 1;
    goto LABEL_8;
  }

  v6 = sub_1000417CC();
  v7 = [v5 objectForKeyedSubscript:v6];

  swift_unknownObjectRelease();
  if (v7)
  {
    sub_100041C9C();
    swift_unknownObjectRelease();
  }

  else
  {
    *v12 = 0u;
    v13 = 0u;
  }

  v14 = *v12;
  v15 = v13;
  if (!*(&v13 + 1))
  {
    goto LABEL_7;
  }

  v11 = swift_dynamicCast();
  v8 = LODWORD(v12[0]);
  v9 = v11 ^ 1;
  if (!v11)
  {
    v8 = 0;
  }

LABEL_8:
  LOBYTE(v14) = v9;
  return v8 | (v9 << 32);
}

uint64_t sub_100016E2C(uint64_t a1)
{
  v2 = sub_1000054B8(&qword_10005E220, &qword_100044770);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100016E94()
{
  result = qword_10005E4A8;
  if (!qword_10005E4A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10005E4A8);
  }

  return result;
}

uint64_t sub_100016EE0()
{
  v1 = [v0 assetRegistry];
  v2 = [v1 rootNode];

  v3 = sub_1000417CC();
  v4 = [v2 childNodeWithAssetName:v3];

  if (v4)
  {
    v5 = [v4 asset];

    if (v5)
    {
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (result)
      {
        return result;
      }

      swift_unknownObjectRelease();
    }
  }

  return 0;
}

void sub_100016FD4(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v145 = a4;
  v148 = sub_10004166C();
  v147 = *(v148 - 8);
  v9 = *(v147 + 64);
  v10 = __chkstk_darwin(v148);
  *&v142 = &v141 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  *&v146 = &v141 - v13;
  v14 = __chkstk_darwin(v12);
  *&v144 = &v141 - v15;
  __chkstk_darwin(v14);
  *&v143 = &v141 - v16;

  v17 = sub_10004164C();
  v18 = sub_100041ACC();

  if (!os_log_type_enabled(v17, v18))
  {
    v21 = a3;

    if (a2)
    {
      goto LABEL_3;
    }

LABEL_10:
    v36 = sub_10004164C();
    v37 = sub_100041ABC();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "synthesizeEvent: Unable to find backing view", v38, 2u);
    }

    goto LABEL_19;
  }

  v19 = swift_slowAlloc();
  *&v141 = a1;
  v20 = v19;
  v149[0] = swift_slowAlloc();
  *v20 = 136315394;
  *(v20 + 4) = sub_10000B1E4(0xD00000000000003BLL, 0x80000001000470A0, v149);
  *(v20 + 12) = 2080;
  v21 = a3;
  v22 = sub_10004179C();
  v24 = sub_10000B1E4(v22, v23, v149);

  *(v20 + 14) = v24;
  _os_log_impl(&_mh_execute_header, v17, v18, "%s %s", v20, 0x16u);
  swift_arrayDestroy();

  a1 = v141;

  if (!a2)
  {
    goto LABEL_10;
  }

LABEL_3:
  v153 = 1701869940;
  v154 = 0xE400000000000000;
  v25 = a2;
  sub_100041CFC();
  if (!*(v21 + 16) || (v26 = v21, v27 = sub_10002C594(v149), (v28 & 1) == 0))
  {
    sub_10000BAB0(v149);
LABEL_14:
    v32 = sub_10004164C();
    v33 = sub_100041ABC();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      v35 = "synthesizeEvent: No event type name received";
      goto LABEL_16;
    }

LABEL_17:

LABEL_18:
LABEL_19:
    *(a5 + 32) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    return;
  }

  sub_10000B78C(*(v21 + 56) + 32 * v27, v152);
  sub_10000BAB0(v149);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  v29 = v153;
  v30 = v154;
  v31 = sub_100024270();
  if (v31 == 7)
  {

    v32 = sub_10004164C();
    v33 = sub_100041ABC();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      v35 = "synthesizeEvent: Unable to parse event type";
LABEL_16:
      _os_log_impl(&_mh_execute_header, v32, v33, v35, v34, 2u);

      goto LABEL_17;
    }

    goto LABEL_17;
  }

  LODWORD(v39) = v31;

  v40 = sub_10004164C();
  v41 = sub_100041ACC();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    LODWORD(v141) = v39;
    v39 = a1;
    v43 = v42;
    v149[0] = swift_slowAlloc();
    *v43 = 136315394;
    v44 = sub_10000B1E4(v29, v30, v149);

    *(v43 + 4) = v44;
    *(v43 + 12) = 2080;
    v45 = sub_10004179C();
    v47 = sub_10000B1E4(v45, v46, v149);

    *(v43 + 14) = v47;
    _os_log_impl(&_mh_execute_header, v40, v41, "synthesizeEvent: Event Received: %s, %s", v43, 0x16u);
    swift_arrayDestroy();

    a1 = v39;
    LOBYTE(v39) = v141;
  }

  else
  {
  }

  if (v39 == 1)
  {

    goto LABEL_32;
  }

  v48 = sub_100041EEC();

  if (v48)
  {
LABEL_32:

    v60 = sub_10004164C();
    v61 = sub_100041AAC();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v149[0] = v63;
      *v62 = 136315138;
      v64 = sub_10004179C();
      v66 = sub_10000B1E4(v64, v65, v149);

      *(v62 + 4) = v66;
      _os_log_impl(&_mh_execute_header, v60, v61, "synthesizeEvent: Ignoring event: %s", v62, 0xCu);
      sub_100005500(v63);
    }

    goto LABEL_18;
  }

  if (v39 <= 1u)
  {
    v67 = a1;
    v68 = v26;
    if (!v39)
    {
      (*(v147 + 16))(v143, v67, v148);
      v69 = type metadata accessor for TranscriptBackgroundTapbackEventHandler(0);
      v70 = *(v69 + 48);
      v71 = *(v69 + 52);
      v72 = v25;
      v73 = swift_allocObject();
      *(v73 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_tapbackAdded) = 1;
      v150 = 0x656D617266;
      v151 = 0xE500000000000000;

      v74 = v72;
      sub_100005408(v145, v149);
      sub_100041CFC();
      if (*(v68 + 16) && (v75 = sub_10002C594(v152), (v76 & 1) != 0))
      {
        sub_10000B78C(*(v68 + 56) + 32 * v75, &v153);
        sub_10000BAB0(v152);
        sub_10000BB04(0, &qword_10005D658, NSValue_ptr);
        if (swift_dynamicCast())
        {
          v77 = v149[0];
          [v149[0] CGRectValue];
          v142 = v78;
          v144 = v79;
          v141 = v80;
          v146 = v81;

          *&v84 = v141;
          *&v83 = v142;
          v82 = 0;
          *(&v83 + 1) = v144;
          *(&v84 + 1) = v146;
LABEL_62:
          v119 = v73 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_frame;
          *v119 = v83;
          *(v119 + 16) = v84;
          *(v119 + 32) = v82;
          v153 = 0x6F6C6C6142736168;
          v154 = 0xEF65706168536E6FLL;
          sub_100041CFC();
          if (*(v68 + 16) && (v120 = sub_10002C594(v149), (v121 & 1) != 0))
          {
            sub_10000B78C(*(v68 + 56) + 32 * v120, v152);
            sub_10000BAB0(v149);
            sub_10000BB04(0, &qword_10005E9B8, NSNumber_ptr);
            if (swift_dynamicCast())
            {
              v122 = v153;
              v123 = [v153 BOOLValue];

LABEL_74:
              *(v73 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_hasBalloonShape) = v123;
              v129 = v143;
              *(v73 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_bubblePath) = sub_10001A358(v68);
              v130 = (v73 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration);
              v131 = v145;
              v132 = v145[5];
              v130[4] = v145[4];
              v130[5] = v132;
              v130[6] = v131[6];
              *(v130 + 110) = *(v131 + 110);
              v133 = v131[1];
              *v130 = *v131;
              v130[1] = v133;
              v134 = v131[3];
              v130[2] = v131[2];
              v130[3] = v134;
              (*(v147 + 32))(v73 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_logger, v129, v148);
              *(v73 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_metadata) = v68;
              *(v73 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_backingView) = v74;
              *(a5 + 24) = v69;
              *(a5 + 32) = &off_100055F80;

              *a5 = v73;
              return;
            }
          }

          else
          {
            sub_10000BAB0(v149);
          }

          v123 = 2;
          goto LABEL_74;
        }
      }

      else
      {
        sub_10000BAB0(v152);
      }

      v83 = 0uLL;
      v82 = 1;
      v84 = 0uLL;
      goto LABEL_62;
    }

    v49 = a5;
    (*(v147 + 16))(v144, v67, v148);
    v97 = type metadata accessor for TranscriptBackgroundTapbackEventHandler(0);
    v98 = *(v97 + 48);
    v99 = *(v97 + 52);
    v54 = swift_allocObject();
    *(v54 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_tapbackAdded) = 0;
    v150 = 0x656D617266;
    v151 = 0xE500000000000000;

    v55 = v25;
    sub_100005408(v145, v149);
    sub_100041CFC();
    if (*(v68 + 16) && (v100 = sub_10002C594(v152), (v101 & 1) != 0))
    {
      sub_10000B78C(*(v68 + 56) + 32 * v100, &v153);
      sub_10000BAB0(v152);
      sub_10000BB04(0, &qword_10005D658, NSValue_ptr);
      if (swift_dynamicCast())
      {
        v102 = v149[0];
        [v149[0] CGRectValue];
        v142 = v103;
        v143 = v104;
        v141 = v105;
        v146 = v106;

        *&v109 = v141;
        *&v108 = v142;
        v107 = 0;
        *(&v108 + 1) = v143;
        *(&v109 + 1) = v146;
LABEL_68:
        v124 = v54 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_frame;
        *v124 = v108;
        *(v124 + 16) = v109;
        *(v124 + 32) = v107;
        v153 = 0x6F6C6C6142736168;
        v154 = 0xEF65706168536E6FLL;
        sub_100041CFC();
        if (*(v68 + 16) && (v125 = sub_10002C594(v149), (v126 & 1) != 0))
        {
          sub_10000B78C(*(v68 + 56) + 32 * v125, v152);
          sub_10000BAB0(v149);
          sub_10000BB04(0, &qword_10005E9B8, NSNumber_ptr);
          if (swift_dynamicCast())
          {
            v127 = v153;
            v128 = [v153 BOOLValue];

LABEL_77:
            *(v54 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_hasBalloonShape) = v128;
            v135 = v144;
            *(v54 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_bubblePath) = sub_10001A358(v68);
            v136 = (v54 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration);
            v137 = v145;
            v138 = v145[5];
            v136[4] = v145[4];
            v136[5] = v138;
            v136[6] = v137[6];
            *(v136 + 110) = *(v137 + 110);
            v139 = v137[1];
            *v136 = *v137;
            v136[1] = v139;
            v140 = v137[3];
            v136[2] = v137[2];
            v136[3] = v140;
            (*(v147 + 32))(v54 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_logger, v135, v148);
            *(v54 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_metadata) = v68;
            *(v54 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_backingView) = v55;
            v49[3] = v97;
            v49[4] = &off_100055F80;
            goto LABEL_78;
          }
        }

        else
        {
          sub_10000BAB0(v149);
        }

        v128 = 2;
        goto LABEL_77;
      }
    }

    else
    {
      sub_10000BAB0(v152);
    }

    v108 = 0uLL;
    v107 = 1;
    v109 = 0uLL;
    goto LABEL_68;
  }

  if (v39 - 2 >= 3)
  {
    if (v39 == 5)
    {
      v153 = 0x657669746361;
      v154 = 0xE600000000000000;
      sub_100041CFC();
      if (*(v26 + 16))
      {
        v85 = sub_10002C594(v149);
        if (v86)
        {
          sub_10000B78C(*(v26 + 56) + 32 * v85, v152);
          sub_10000BAB0(v149);
          if (swift_dynamicCast())
          {
            v87 = v153;
            v88 = v147;
            v89 = v142;
            v90 = a1;
            v91 = v148;
            (*(v147 + 16))(v142, v90, v148);
            updated = type metadata accessor for TranscriptBackgroundUpdateActiveStateEventHandler(0);
            v93 = *(updated + 48);
            v94 = *(updated + 52);
            v95 = swift_allocObject();
            *(v95 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension49TranscriptBackgroundUpdateActiveStateEventHandler_active) = v87;
            (*(v88 + 32))(v95 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_logger, v89, v91);
            *(v95 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_metadata) = v26;
            *(v95 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_backingView) = v25;
            v96 = &off_100055F60;
LABEL_56:
            *(a5 + 24) = updated;
            *(a5 + 32) = v96;
            *a5 = v95;

            return;
          }

          goto LABEL_58;
        }
      }
    }

    else
    {
      v153 = 0x6C6C6F7263537369;
      v154 = 0xEB00000000676E69;
      sub_100041CFC();
      if (*(v26 + 16))
      {
        v110 = sub_10002C594(v149);
        if (v111)
        {
          sub_10000B78C(*(v26 + 56) + 32 * v110, v152);
          sub_10000BAB0(v149);
          if (swift_dynamicCast())
          {
            v112 = v153;
            v113 = v147;
            v114 = v142;
            v115 = a1;
            v116 = v148;
            (*(v147 + 16))(v142, v115, v148);
            updated = type metadata accessor for TranscriptBackgroundIsScrollingEventHandler(0);
            v117 = *(updated + 48);
            v118 = *(updated + 52);
            v95 = swift_allocObject();
            *(v95 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension43TranscriptBackgroundIsScrollingEventHandler_isScrolling) = v112;
            (*(v113 + 32))(v95 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_logger, v114, v116);
            *(v95 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_metadata) = v26;
            *(v95 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_backingView) = v25;
            v96 = &off_100055F50;
            goto LABEL_56;
          }

LABEL_58:
          v32 = sub_10004164C();
          v33 = sub_100041ABC();
          if (!os_log_type_enabled(v32, v33))
          {
            goto LABEL_17;
          }

          v34 = swift_slowAlloc();
          *v34 = 0;
          v35 = "Expected active state";
          goto LABEL_16;
        }
      }
    }

    sub_10000BAB0(v149);
    goto LABEL_58;
  }

  v49 = a5;
  (*(v147 + 16))(v146, a1, v148);
  v50 = v25;
  v51 = type metadata accessor for TranscriptBackgroundKeyboardEventHandler(0);
  v52 = *(v51 + 48);
  v53 = *(v51 + 52);
  v54 = swift_allocObject();
  *(v54 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension40TranscriptBackgroundKeyboardEventHandler_eventType) = v39;
  v153 = 0xD000000000000012;
  v154 = 0x8000000100046FB0;
  v55 = v50;
  sub_100041CFC();
  if (!*(v26 + 16) || (v56 = sub_10002C594(v149), (v57 & 1) == 0))
  {
    sub_10000BAB0(v149);
    goto LABEL_36;
  }

  sub_10000B78C(*(v26 + 56) + 32 * v56, v152);
  sub_10000BAB0(v149);
  sub_10000BB04(0, &qword_10005E9B8, NSNumber_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_36:
    v59 = 0;
    goto LABEL_37;
  }

  v58 = v153;
  v59 = [v153 BOOLValue];

LABEL_37:
  *(v54 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension40TranscriptBackgroundKeyboardEventHandler_fromTapbackContext) = v59;
  (*(v147 + 32))(v54 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_logger, v146, v148);
  *(v54 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_metadata) = v26;
  *(v54 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_backingView) = v55;
  v49[3] = v51;
  v49[4] = &off_100055F70;

LABEL_78:

  *v49 = v54;
}

uint64_t sub_10001835C()
{
  result = sub_10004166C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_10001842C(uint64_t a1)
{
  v2 = (v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_frame);
  if (*(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_frame + 32))
  {
    oslog = sub_10004164C();
    v3 = sub_100041ABC();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "Unable to determine frame of message bubble";
LABEL_7:
      _os_log_impl(&_mh_execute_header, oslog, v3, v5, v4, 2u);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v6 = *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_hasBalloonShape);
  if (v6 == 2)
  {
    oslog = sub_10004164C();
    v3 = sub_100041ABC();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "Unable to determine look of message";
      goto LABEL_7;
    }

LABEL_8:

    return;
  }

  v7 = *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_backingView);
  v8 = *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_tapbackAdded);
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  v11 = *v2;
  *(v10 + 40) = v2[1];
  *(v10 + 24) = v11;
  *(v10 + 56) = v6 & 1;
  *(v10 + 64) = a1;

  if (v8)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  sub_10000A758(v12, sub_10001A9C8);
}

void sub_10001862C(uint64_t a1, char a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  sub_1000188EC(a2, *(a1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_bubblePath), a4, a5, a6, a7);
  v9 = *(a3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_lock);
  os_unfair_lock_lock(v9);
  v10 = *(a3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_world);
  sub_1000186E8(v10, a1);

  os_unfair_lock_unlock(v9);
}

void sub_1000186E8(void *a1, uint64_t a2)
{
  v3 = [a1 rootNode];
  v4 = sub_1000417CC();
  v11 = [v3 childNodeWithName:v4 recursively:1];

  if (v11)
  {
    *(a2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_tapbackAdded);
    v5 = [v11 parameters];
    if (v5)
    {
      v6 = v5;
      isa = sub_100041C2C().super.isa;
      v8 = sub_1000417CC();

      [v6 setObject:isa forKeyedSubscript:v8];
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    v11 = sub_10004164C();
    v9 = sub_100041ABC();
    if (os_log_type_enabled(v11, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v11, v9, "Unable to find parameter node", v10, 2u);
    }
  }
}

void sub_1000188EC(char a1, void *a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  v8 = *(v6 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_backingView);
  v9 = *&v8[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_maskManager];
  if (v9)
  {
    v16 = *&v8[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_maskManager];

    v17 = sub_10004164C();
    v18 = sub_100041AAC();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v34 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_10000B1E4(*(v7 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration + 32), *(v7 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration + 40), &v34);
      _os_log_impl(&_mh_execute_header, v17, v18, "#%s provideMaskIfNeeded", v19, 0xCu);
      sub_100005500(v20);
    }

    [v8 bounds];
    v22 = v21;
    v24 = v23;
    sub_100010CE0();
    v25 = *(v9 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension11MaskManager_asset);
    v26 = *(v9 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension11MaskManager_provider);
    if (a1)
    {
      v27 = swift_allocObject();
      *(v27 + 16) = v22;
      *(v27 + 24) = v24;
      *(v27 + 32) = a3;
      *(v27 + 40) = a4;
      *(v27 + 48) = a5;
      *(v27 + 56) = a6;
      *(v27 + 64) = a2;
      v28 = a2;
    }

    else
    {
      v32 = swift_allocObject();
      *(v32 + 16) = v22;
      *(v32 + 24) = v24;
      *(v32 + 32) = a3;
      *(v32 + 40) = a4;
      *(v32 + 48) = a5;
      *(v32 + 56) = a6;
      *(v32 + 64) = 1;
    }

    v29 = sub_100010130(sub_10001A9F8, v22, v24);

    [v25 setTexture:v29];
    swift_unknownObjectRelease();
    sub_1000105CC(0.2, v22, v24);
  }

  else
  {
    oslog = sub_10004164C();
    v30 = sub_100041ABC();
    if (os_log_type_enabled(oslog, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v30, "Unable to find mask manager", v31, 2u);
    }
  }
}

uint64_t sub_100018C58()
{
  v1 = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration + 80);
  v5[4] = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration + 64);
  v5[5] = v1;
  v6[0] = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration + 96);
  *(v6 + 14) = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration + 110);
  v2 = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration + 16);
  v5[0] = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration);
  v5[1] = v2;
  v3 = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration + 48);
  v5[2] = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration + 32);
  v5[3] = v3;
  return sub_100005464(v5);
}

uint64_t sub_100018CC0()
{
  v1 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_logger;
  v2 = sub_10004166C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_metadata);

  v4 = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_bubblePath);

  v5 = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration + 80);
  v11[4] = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration + 64);
  v11[5] = v5;
  v12[0] = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration + 96);
  *(v12 + 14) = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration + 110);
  v6 = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration + 16);
  v11[0] = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration);
  v11[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration + 48);
  v11[2] = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration + 32);
  v11[3] = v7;
  sub_100005464(v11);

  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);
  return swift_deallocClassInstance();
}

void sub_100018E8C(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension40TranscriptBackgroundKeyboardEventHandler_eventType);
  switch(v5)
  {
    case 4:
      v14 = "keyboardWillShow";
      break;
    case 3:
      v14 = "keyboardFrameDidChange";
      break;
    case 2:
      v6 = *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_metadata);
      type metadata accessor for KeyboardFrameDidChangeDataUpdate();
      swift_allocObject();

      v8 = sub_100009BF0(v7);
      if (v8)
      {
        v9 = v8;
        v10 = *(v2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_backingView);
        v11 = swift_allocObject();
        v11[2] = v2;
        v11[3] = v9;
        v11[4] = a1;
        v11[5] = v4;

        v12 = sub_10001A87C;
        v13 = 3;
LABEL_29:
        sub_10000A758(v13, v12);

        return;
      }

      goto LABEL_33;
    default:
      return;
  }

  v15 = 0x8000000100045FD0;
  if ((v14 | 0x8000000000000000) == 0x8000000100045FD0)
  {
  }

  else
  {
    v16 = sub_100041EEC();

    if ((v16 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  *(*(v2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_backingView) + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_keyboardIsUp) = 1;
LABEL_12:
  if (v5 == 4)
  {
    v15 = 0x8000000100045FF0;
  }

  if (0x8000000100045FF0 == v15)
  {
  }

  else
  {
    v17 = sub_100041EEC();

    if ((v17 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  *(*(v2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_backingView) + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_keyboardIsUp) = 0;
LABEL_18:

  v18 = sub_10004164C();
  v19 = sub_100041ACC();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 67109120;
    *(v20 + 4) = *(v2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension40TranscriptBackgroundKeyboardEventHandler_fromTapbackContext);

    _os_log_impl(&_mh_execute_header, v18, v19, "from tapback? %{BOOL}d", v20, 8u);
  }

  else
  {
  }

  if (*(v2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension40TranscriptBackgroundKeyboardEventHandler_fromTapbackContext) != 1)
  {
    v24 = *(v2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_metadata);
    type metadata accessor for KeyboardVisibilityDataUpdate();
    swift_allocObject();

    v26 = sub_100009D80(v25);
    if (v26)
    {
      v27 = v26;
      v28 = *(v2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_backingView);
      v29 = swift_allocObject();
      v29[2] = v2;
      v29[3] = a1;
      v29[4] = v27;
      v29[5] = v4;

      if (v5 == 4)
      {
        v13 = 5;
      }

      else
      {
        v13 = 4;
      }

      v12 = sub_10001A828;
      goto LABEL_29;
    }

LABEL_33:
    oslog = sub_10004164C();
    v21 = sub_100041ABC();
    if (os_log_type_enabled(oslog, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      v23 = "Missing data for keyboard update";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  oslog = sub_10004164C();
  v21 = sub_100041ACC();
  if (os_log_type_enabled(oslog, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = "Ignoring keyboard will show since it was from a tapback context menu";
LABEL_35:
    _os_log_impl(&_mh_execute_header, oslog, v21, v23, v22, 2u);
  }

LABEL_36:
}

void sub_100019358(uint64_t a1, double *a2, uint64_t a3)
{
  sub_100019EF8(a2[4], a2[5], a2[6], a2[7]);
  v4 = *(a3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_lock);
  os_unfair_lock_lock(v4);
  v5 = *(a3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_world);
  v6 = [v5 rootNode];
  v7 = sub_1000417CC();
  v8 = [v6 childNodeWithName:v7 recursively:1];

  if (v8)
  {
    sub_1000099FC(v8);
    v9 = [v8 parameters];
    if (v9)
    {
      v10 = v9;
      isa = sub_100041C2C().super.isa;
      v12 = sub_1000417CC();
      [v10 setObject:isa forKeyedSubscript:v12];
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v8 = v5;
  }

  os_unfair_lock_unlock(v4);
}

void sub_100019504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a4;
  v7 = sub_10004168C();
  v59 = *(v7 - 8);
  v60 = v7;
  v8 = *(v59 + 64);
  __chkstk_darwin(v7);
  v57 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1000416DC();
  v56 = *(v58 - 8);
  v10 = *(v56 + 64);
  __chkstk_darwin(v58);
  v55 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10004167C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = (&v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_1000416FC();
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v24 = &v49 - v23;
  v25 = *(a1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension40TranscriptBackgroundKeyboardEventHandler_eventType);
  v61 = v22;
  v54 = v26;
  if (v25 <= 2 || v25 > 4)
  {
    goto LABEL_7;
  }

  v27 = "keyboardFrameDidChange";
  if (v25 != 3)
  {
    v27 = "keyboardWillShow";
  }

  if (0x8000000100045FD0 == (v27 | 0x8000000000000000))
  {
  }

  else
  {
LABEL_7:
    v28 = sub_100041EEC();

    if ((v28 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v29 = *(a1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_metadata);
  type metadata accessor for KeyboardVisibilityDataUpdate();
  swift_allocObject();

  v31 = sub_100009D80(v30);
  if (v31)
  {
    v32 = v31;
    if (*(v31 + 104))
    {

      goto LABEL_15;
    }

    v33 = *(v31 + 20) * 1000.0;
    if (COERCE_INT(fabs(v33)) > 2139095039)
    {
      __break(1u);
    }

    else if (v33 > -9.2234e18)
    {
      v52 = a3;
      if (v33 < 9.2234e18)
      {
        v34 = *(v31 + 72);
        v49 = *(v31 + 88);
        v50 = v34;
        v35 = v33;
        sub_10000BB04(0, &unk_10005D630, OS_dispatch_queue_ptr);
        v51 = sub_100041B0C();
        sub_1000416EC();
        *v16 = v35;
        (*(v13 + 104))(v16, enum case for DispatchTimeInterval.milliseconds(_:), v12);
        sub_10004170C();
        (*(v13 + 8))(v16, v12);
        v54 = *(v54 + 8);
        (v54)(v21, v61);
        v36 = swift_allocObject();
        swift_weakInit();
        v37 = swift_allocObject();
        *(v37 + 16) = v36;
        v38 = v50;
        *(v37 + 40) = v49;
        *(v37 + 24) = v38;
        *(v37 + 56) = v32;
        *(v37 + 64) = a2;
        *(v37 + 72) = v53;
        aBlock[4] = sub_10001A8C4;
        aBlock[5] = v37;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100028728;
        aBlock[3] = &unk_100056058;
        v39 = _Block_copy(aBlock);

        v40 = v55;
        sub_1000416AC();
        aBlock[0] = &_swiftEmptyArrayStorage;
        sub_10000B884();
        sub_1000054B8(&unk_10005D640, "B|");
        sub_10000B8DC();
        v41 = v57;
        v42 = v60;
        sub_100041CAC();
        v43 = v51;
        sub_100041AEC();
        _Block_release(v39);

        (*(v59 + 8))(v41, v42);
        (*(v56 + 8))(v40, v58);
        (v54)(v24, v61);
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  v44 = *(a2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_lock);
  os_unfair_lock_lock(v44);
  v45 = *(a2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_world);
  v46 = [v45 rootNode];
  v47 = sub_1000417CC();
  v48 = [v46 childNodeWithName:v47 recursively:1];

  if (v48)
  {
    sub_100009FA8(v48);
  }

  os_unfair_lock_unlock(v44);
}

uint64_t sub_100019C50(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = *(result + OBJC_IVAR____TtC33GradientBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_backingView);

    v17 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    *(v18 + 24) = a1;
    *(v18 + 32) = a2;
    *(v18 + 40) = a3;
    *(v18 + 48) = a4;
    *(v18 + 56) = a6;
    *(v18 + 64) = a7;
    *(v18 + 72) = a8;

    sub_10000A758(3u, sub_10001A93C);
  }

  return result;
}

void sub_100019DAC(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100019EF8(a1, a2, a3, a4);
  }

  v12 = *(a7 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_lock);
  os_unfair_lock_lock(v12);
  v13 = *(a7 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_world);
  v14 = [v13 rootNode];
  v15 = sub_1000417CC();
  v16 = [v14 childNodeWithName:v15 recursively:1];

  if (v16)
  {
    sub_100009FA8(v16);
  }

  os_unfair_lock_unlock(v12);
}

void sub_100019EF8(double a1, double a2, double a3, double a4)
{
  v5 = *(v4 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_backingView);
  v6 = *&v5[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_maskManager];
  if (v6)
  {
    v11 = *&v5[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_maskManager];

    [v5 frame];
    v13 = v12;
    v15 = v14;
    sub_100010CE0();
    v16 = *(v6 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension11MaskManager_asset);
    v17 = *(v6 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension11MaskManager_provider);
    v18 = swift_allocObject();
    *(v18 + 16) = v13;
    *(v18 + 24) = v15;
    *(v18 + 32) = a1;
    *(v18 + 40) = a2;
    *(v18 + 48) = a3;
    *(v18 + 56) = a4;
    *(v18 + 64) = 2;
    v19 = sub_100010130(sub_10001A820, v13, v15);

    [v16 setTexture:v19];
    swift_unknownObjectRelease();
    sub_1000105CC(0.2, v13, v15);
  }

  else
  {
    oslog = sub_10004164C();
    v20 = sub_100041ABC();
    if (os_log_type_enabled(oslog, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v20, "Unable to retrieve mask manager", v21, 2u);
    }
  }
}

uint64_t sub_10001A1E0()
{
  v1 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_logger;
  v2 = sub_10004166C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_metadata);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

id sub_10001A358(uint64_t a1)
{
  sub_100041CFC();
  if (!*(a1 + 16) || (v2 = sub_10002C594(v17), (v3 & 1) == 0))
  {
    sub_10000BAB0(v17);
LABEL_6:
    v4 = sub_10004164C();
    v9 = sub_100041ABC();
    if (os_log_type_enabled(v4, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v4, v9, "Unable to find bubble path from metadata, returning default path", v10, 2u);
    }

    goto LABEL_8;
  }

  sub_10000B78C(*(a1 + 56) + 32 * v2, v18);
  sub_10000BAB0(v17);
  sub_10000BB04(0, &qword_10005E9C0, NSData_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  v4 = 0x6150656C62627562;
  sub_10000BB04(0, &qword_10005E9C8, NSKeyedUnarchiver_ptr);
  sub_10000BB04(0, &qword_10005E9D0, UIBezierPath_ptr);
  v5 = sub_1000414DC();
  v7 = v6;
  v8 = sub_100041ADC();
  sub_100014E84(v5, v7);
  v12 = sub_10004164C();
  v13 = sub_100041ACC();
  if (os_log_type_enabled(v12, v13))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Found bubble path, returning corresponding cgPath", v15, 2u);
  }

  if (v8)
  {
    v16 = [v8 CGPath];

    return v16;
  }

LABEL_8:

  return 0;
}

void sub_10001A6BC()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_backingView) + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_lifecycleManager);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension49TranscriptBackgroundUpdateActiveStateEventHandler_active);
    *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension16LifecycleManager_hostAllowsRunning) = v2;
    if (v2)
    {
      v3 = 0x657669746361;
    }

    else
    {
      v3 = 0x6576697463616E69;
    }

    if (v2)
    {
      v4 = 0xE600000000000000;
    }

    else
    {
      v4 = 0xE800000000000000;
    }

    v5._countAndFlagsBits = v3;
    v5._object = v4;
    sub_1000418CC(v5);

    sub_100027780(0x2074736F48, 0xE500000000000000);
  }

  if (*(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension49TranscriptBackgroundUpdateActiveStateEventHandler_active) == 1)
  {
    sub_10000A758(0, 0);
  }
}

uint64_t sub_10001A7DC()
{
  v1 = *(v0 + 64);
  if ((v1 - 1) >= 2)
  {
  }

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10001A834()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001A888()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001A8DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001A8F4()
{
  v1 = v0[2];

  v2 = v0[7];

  v3 = v0[8];

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10001A988()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

void sub_10001A9FC(uint64_t a1@<X8>)
{
  v3 = *(v1 + 104);
  if (v3 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4 = *(v1 + 112);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*(v1 + 112) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_10;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v4 < 9.22337204e18)
  {
    v5 = *(v1 + 16);
    v6 = *(v1 + 24);
    v7 = *(v1 + 100);
    v8 = v3;
    v9 = v4;
    v10 = *(v1 + 120);

    *a1 = sub_100021E98();
    *(a1 + 8) = v11;
    *(a1 + 16) = v5;
    *(a1 + 24) = v6;
    *(a1 + 32) = v7;
    *(a1 + 40) = v8;
    *(a1 + 48) = v9;
    *(a1 + 56) = v10;
    *(a1 + 60) = 0;
    return;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_10001AB00()
{
  sub_1000418CC(*v0);
  v6._countAndFlagsBits = 45;
  v6._object = 0xE100000000000000;
  sub_1000418CC(v6);
  v4 = *(v0 + 40);
  v7._countAndFlagsBits = sub_100041EDC();
  sub_1000418CC(v7);

  v8._countAndFlagsBits = 45;
  v8._object = 0xE100000000000000;
  sub_1000418CC(v8);
  v5 = *(v0 + 48);
  v9._countAndFlagsBits = sub_100041EDC();
  sub_1000418CC(v9);

  v10._countAndFlagsBits = 45;
  v10._object = 0xE100000000000000;
  sub_1000418CC(v10);
  v1 = *(v0 + 32);
  sub_100041A3C();
  v11._countAndFlagsBits = 45;
  v11._object = 0xE100000000000000;
  sub_1000418CC(v11);
  v2 = *(v0 + 56);
  sub_100041A3C();
  return 0;
}

uint64_t sub_10001AC30()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);
    v2 = *(v0 + 24);
  }

  else
  {
    v1 = *v0;
    v2 = *(v0 + 8);
  }

  v8._countAndFlagsBits = v1;
  v8._object = v2;
  sub_1000418CC(v8);

  v9._countAndFlagsBits = 45;
  v9._object = 0xE100000000000000;
  sub_1000418CC(v9);
  v6 = *(v0 + 40);
  v10._countAndFlagsBits = sub_100041EDC();
  sub_1000418CC(v10);

  v11._countAndFlagsBits = 45;
  v11._object = 0xE100000000000000;
  sub_1000418CC(v11);
  v7 = *(v0 + 48);
  v12._countAndFlagsBits = sub_100041EDC();
  sub_1000418CC(v12);

  v13._countAndFlagsBits = 45;
  v13._object = 0xE100000000000000;
  sub_1000418CC(v13);
  v3 = *(v0 + 32);
  sub_100041A3C();
  v14._countAndFlagsBits = 45;
  v14._object = 0xE100000000000000;
  sub_1000418CC(v14);
  v4 = *(v0 + 56);
  sub_100041A3C();
  return 0;
}

Swift::Int sub_10001AF94()
{
  sub_100041F1C();
  sub_10001AB00();
  sub_1000418BC();

  return sub_100041F3C();
}

uint64_t sub_10001AFF0()
{
  sub_10001AB00();
  sub_1000418BC();
}

Swift::Int sub_10001B040()
{
  sub_100041F1C();
  sub_10001AB00();
  sub_1000418BC();

  return sub_100041F3C();
}

uint64_t sub_10001B098(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 13) = *(a1 + 45);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 13) = *(a2 + 45);
  return sub_100020E18(v5, v7) & 1;
}

uint64_t sub_10001B0F4()
{
  sub_1000097B0(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_10001B12C()
{
  v0 = type metadata accessor for SnapshotManager();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  result = sub_10001B3F8();
  qword_100061130 = v3;
  return result;
}

uint64_t sub_10001B16C()
{
  v0 = sub_1000414BC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin();
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100020EF4(v3, qword_100061138);
  sub_100007D34(v0, qword_100061138);
  v6 = NSTemporaryDirectory();
  sub_1000417FC();

  sub_10004142C();

  sub_10004146C();
  return (*(v1 + 8))(v5, v0);
}

uint64_t sub_10001B2AC()
{
  v0 = sub_1000414BC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin();
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100020EF4(v3, qword_100061150);
  sub_100007D34(v0, qword_100061150);
  if (qword_10005CD40 != -1)
  {
    swift_once();
  }

  v6 = sub_100007D34(v0, qword_100061138);
  (*(v1 + 16))(v5, v6, v0);
  sub_10004146C();
  return (*(v1 + 8))(v5, v0);
}

uint64_t sub_10001B3F8()
{
  v1 = v0;
  v2 = sub_10004166C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 16) = 0;
  *(v1 + 24) = &_swiftEmptyDictionarySingleton;
  *(v1 + 32) = swift_slowAlloc();
  sub_10004165C();
  (*(v3 + 32))(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension15SnapshotManager_logger, v6, v2);
  sub_10001B71C();
  v7 = sub_10004164C();
  v8 = sub_100041AAC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315138;
    if (qword_10005CD40 != -1)
    {
      swift_once();
    }

    v11 = sub_1000414BC();
    sub_100007D34(v11, qword_100061138);
    sub_100021A04(&qword_10005DAE0, &type metadata accessor for URL);
    v12 = sub_100041EDC();
    v14 = sub_10000B1E4(v12, v13, &v17);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "SnapshotManager initialized. folderURL: %s.", v9, 0xCu);
    sub_100005500(v10);
  }

  **(v1 + 32) = 0;
  return v1;
}

uint64_t sub_10001B698(uint64_t *a1)
{
  v1 = *a1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    sub_10000BB04(0, &qword_10005EBF0, NSObject_ptr);
    v4 = v3;
    v5 = sub_100041C3C();

    return v5 & 1;
  }

  return result;
}

void sub_10001B71C()
{
  v1 = v0;
  if (qword_10005CD70 != -1)
  {
    swift_once();
  }

  if ([qword_1000611A0 deleteSnaphotsAtLaunch])
  {
    v2 = objc_opt_self();
    v3 = [v2 defaultManager];
    if (qword_10005CD40 != -1)
    {
      swift_once();
    }

    v4 = sub_1000414BC();
    sub_100007D34(v4, qword_100061138);
    sub_10004140C();
    v5 = sub_1000417CC();

    v6 = [v3 fileExistsAtPath:v5];

    if (v6)
    {
      v7 = [v2 defaultManager];
      sub_10004144C(v8);
      v10 = v9;
      v35 = 0;
      v11 = [v7 removeItemAtURL:v9 error:&v35];

      if (v11)
      {
        v12 = v35;
      }

      else
      {
        v13 = v35;
        sub_1000413EC();

        swift_willThrow();
        v14 = sub_10004164C();
        v15 = sub_100041ABC();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          *v16 = 0;
          _os_log_impl(&_mh_execute_header, v14, v15, "SnapshotManager: Could not remove snapshot folder", v16, 2u);
        }
      }
    }
  }

  v17 = objc_opt_self();
  v18 = [v17 defaultManager];
  if (qword_10005CD48 != -1)
  {
    swift_once();
  }

  v19 = sub_1000414BC();
  sub_100007D34(v19, qword_100061150);
  sub_10004140C();
  v20 = sub_1000417CC();

  v21 = [v18 fileExistsAtPath:v20];

  if (v21)
  {
    *(v1 + 16) = 1;
  }

  else
  {
    v22 = [v17 defaultManager];
    sub_10004144C(v23);
    v25 = v24;
    v35 = 0;
    v26 = [v22 createDirectoryAtURL:v24 withIntermediateDirectories:1 attributes:0 error:&v35];

    v27 = v35;
    if (v26)
    {
      *(v1 + 16) = 1;
      v28 = v27;
      v29 = sub_10004164C();
      v30 = sub_100041A9C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&_mh_execute_header, v29, v30, "SnapshotManager: Did create snapshot folder", v31, 2u);
      }
    }

    else
    {
      v32 = v35;
      sub_1000413EC();

      swift_willThrow();
      v29 = sub_10004164C();
      v33 = sub_100041ABC();
      if (os_log_type_enabled(v29, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v29, v33, "SnapshotManager: Could not create snapshot folder", v34, 2u);
      }
    }
  }
}

char *sub_10001BBA4(uint64_t a1)
{
  v2 = sub_1000414BC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() defaultManager];
  if (qword_10005CD40 != -1)
  {
    swift_once();
  }

  sub_100007D34(v2, qword_100061138);
  sub_10004144C(v8);
  v10 = v9;
  v40 = 0;
  v11 = [v7 contentsOfDirectoryAtURL:v9 includingPropertiesForKeys:0 options:0 error:&v40];

  v12 = v40;
  if (!v11)
  {
    v29 = v40;
    sub_1000413EC();

    swift_willThrow();
    swift_errorRetain();
    v30 = sub_10004164C();
    v31 = sub_100041ABC();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      swift_errorRetain();
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 4) = v34;
      *v33 = v34;
      _os_log_impl(&_mh_execute_header, v30, v31, "SnapshotManager: Could not obtain contents of snapshots folder: %@.", v32, 0xCu);
      sub_100015014(v33, &qword_10005E240, &qword_100043C90);
    }

    else
    {
    }

    return &_swiftEmptyArrayStorage;
  }

  v13 = sub_10004198C();
  v14 = v12;

  v15 = v13;
  v16 = *(v13 + 16);
  if (!v16)
  {

    return &_swiftEmptyArrayStorage;
  }

  v17 = v3 + 16;
  v38 = *(v3 + 16);
  v18 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v36[1] = v15;
  v19 = v15 + v18;
  v20 = *(v3 + 72);
  v21 = &_swiftEmptyArrayStorage;
  v36[2] = v17;
  v37 = v2;
  v38(v6, v15 + v18, v2);
  while (1)
  {
    sub_100021600(v6, &v40);
    v22 = v41;
    if (v41)
    {
      v23 = v40;
      v24 = v43;
      v45 = v42;
      v39[0] = *v44;
      *(v39 + 9) = *&v44[9];
      if (v40 == *a1 && v41 == *(a1 + 8) || (sub_100041EEC()) && v24 == *(a1 + 32))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_100038F24(0, *(v21 + 2) + 1, 1, v21);
        }

        v26 = *(v21 + 2);
        v25 = *(v21 + 3);
        if (v26 >= v25 >> 1)
        {
          v21 = sub_100038F24((v25 > 1), v26 + 1, 1, v21);
        }

        *(v21 + 2) = v26 + 1;
        v27 = &v21[64 * v26];
        *(v27 + 4) = v23;
        *(v27 + 5) = v22;
        *(v27 + 3) = v45;
        *(v27 + 16) = v24;
        v28 = v39[0];
        *(v27 + 77) = *(v39 + 9);
        *(v27 + 68) = v28;
        v2 = v37;
      }

      else
      {
        sub_100015014(&v40, &qword_10005D280, &unk_100044DB0);
      }
    }

    v19 += v20;
    if (!--v16)
    {
      break;
    }

    v38(v6, v19, v2);
  }

  return v21;
}

char *sub_10001C01C(uint64_t a1)
{
  v39 = a1;
  v1 = sub_1000414BC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() defaultManager];
  if (qword_10005CD40 != -1)
  {
    swift_once();
  }

  sub_100007D34(v1, qword_100061138);
  sub_10004144C(v7);
  v9 = v8;
  v40 = 0;
  v10 = [v6 contentsOfDirectoryAtURL:v8 includingPropertiesForKeys:0 options:0 error:&v40];

  v11 = v40;
  if (!v10)
  {
    v30 = v40;
    sub_1000413EC();

    swift_willThrow();
    swift_errorRetain();
    v31 = sub_10004164C();
    v32 = sub_100041ABC();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      swift_errorRetain();
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 4) = v35;
      *v34 = v35;
      _os_log_impl(&_mh_execute_header, v31, v32, "SnapshotManager: Could not obtain contents of snapshots folder: %@.", v33, 0xCu);
      sub_100015014(v34, &qword_10005E240, &qword_100043C90);
    }

    else
    {
    }

    return &_swiftEmptyArrayStorage;
  }

  v12 = sub_10004198C();
  v13 = v11;

  v14 = v12;
  v15 = *(v12 + 16);
  if (!v15)
  {

    return &_swiftEmptyArrayStorage;
  }

  v16 = v2 + 16;
  v17 = *(v2 + 16);
  v18 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v37[1] = v14;
  v19 = v14 + v18;
  v20 = *(v2 + 72);
  v21 = &_swiftEmptyArrayStorage;
  v37[2] = v16;
  v38 = v1;
  v17(v5, v14 + v18, v1);
  while (1)
  {
    sub_100021600(v5, &v40);
    v22 = v41;
    if (v41)
    {
      v23 = v40;
      v44 = v42;
      v45[0] = v43[0];
      *(v45 + 13) = *(v43 + 13);
      v24 = v40 == *v39 && v41 == *(v39 + 8);
      if (v24 || (sub_100041EEC() & 1) != 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_100038F24(0, *(v21 + 2) + 1, 1, v21);
        }

        v26 = *(v21 + 2);
        v25 = *(v21 + 3);
        if (v26 >= v25 >> 1)
        {
          v21 = sub_100038F24((v25 > 1), v26 + 1, 1, v21);
        }

        *(v21 + 2) = v26 + 1;
        v27 = &v21[64 * v26];
        *(v27 + 4) = v23;
        *(v27 + 5) = v22;
        v28 = v44;
        v29 = v45[0];
        *(v27 + 77) = *(v45 + 13);
        *(v27 + 3) = v28;
        *(v27 + 4) = v29;
        v1 = v38;
      }

      else
      {
        sub_100015014(&v40, &qword_10005D280, &unk_100044DB0);
      }
    }

    v19 += v20;
    if (!--v15)
    {
      break;
    }

    v17(v5, v19, v1);
  }

  return v21;
}

void sub_10001C458(uint64_t a1, uint64_t *a2)
{
  v56 = a2;
  v3 = sub_1000414BC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v55 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v54 - v9;
  __chkstk_darwin(v8);
  v12 = &v54 - v11;
  v13 = objc_opt_self();
  v14 = [v13 defaultManager];
  sub_10004148C(1);
  v15 = sub_1000417CC();

  v16 = [v14 fileExistsAtPath:v15];

  if (v16)
  {
    v17 = v3;
    v18 = [v13 defaultManager];
    sub_10004144C(v19);
    v21 = v20;
    v57 = 0;
    v22 = [v18 removeItemAtURL:v20 error:&v57];

    v23 = v57;
    if (v22)
    {
      (*(v4 + 16))(v12, a1, v3);
      v24 = v23;
      v25 = sub_10004164C();
      v26 = sub_100041A9C();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v57 = v28;
        *v27 = 136315138;
        sub_100021A04(&qword_10005DAE0, &type metadata accessor for URL);
        v29 = sub_100041EDC();
        v31 = v30;
        (*(v4 + 8))(v12, v17);
        v32 = sub_10000B1E4(v29, v31, &v57);

        *(v27 + 4) = v32;
        _os_log_impl(&_mh_execute_header, v25, v26, "Removed snapshot at URL: %s", v27, 0xCu);
        sub_100005500(v28);
      }

      else
      {

        (*(v4 + 8))(v12, v17);
      }
    }

    else
    {
      v42 = v57;
      sub_1000413EC();

      swift_willThrow();
      v43 = v55;
      (*(v4 + 16))(v55, a1, v3);
      swift_errorRetain();
      v44 = sub_10004164C();
      v45 = sub_100041ABC();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v57 = v56;
        *v46 = 136315394;
        sub_100021A04(&qword_10005DAE0, &type metadata accessor for URL);
        v48 = sub_100041EDC();
        v49 = v43;
        v51 = v50;
        (*(v4 + 8))(v49, v3);
        v52 = sub_10000B1E4(v48, v51, &v57);

        *(v46 + 4) = v52;
        *(v46 + 12) = 2112;
        swift_errorRetain();
        v53 = _swift_stdlib_bridgeErrorToNSError();
        *(v46 + 14) = v53;
        *v47 = v53;
        _os_log_impl(&_mh_execute_header, v44, v45, "Could not remove snapshot at URL: %s. Error: %@.", v46, 0x16u);
        sub_100015014(v47, &qword_10005E240, &qword_100043C90);

        sub_100005500(v56);
      }

      else
      {

        (*(v4 + 8))(v43, v3);
      }
    }
  }

  else
  {
    (*(v4 + 16))(v10, a1, v3);
    v33 = sub_10004164C();
    v34 = sub_100041ABC();
    v35 = v3;
    if (os_log_type_enabled(v33, v34))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v57 = v37;
      *v36 = 136315138;
      sub_100021A04(&qword_10005DAE0, &type metadata accessor for URL);
      v38 = sub_100041EDC();
      v40 = v39;
      (*(v4 + 8))(v10, v35);
      v41 = sub_10000B1E4(v38, v40, &v57);

      *(v36 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v33, v34, "File doesn't exist. %s", v36, 0xCu);
      sub_100005500(v37);
    }

    else
    {

      (*(v4 + 8))(v10, v3);
    }
  }
}

uint64_t sub_10001CB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[46] = a5;
  v6[47] = a6;
  v6[45] = a4;
  v7 = sub_1000414BC();
  v6[48] = v7;
  v8 = *(v7 - 8);
  v6[49] = v8;
  v9 = *(v8 + 64) + 15;
  v6[50] = swift_task_alloc();

  return _swift_task_switch(sub_10001CC20, 0, 0);
}

uint64_t sub_10001CC20()
{
  v1 = *(v0 + 360);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v32 = sub_10001C01C(*(v0 + 368));
    v2 = *(v32 + 2);
    if (v2)
    {
      v3 = *(v0 + 368);
      v4 = *v3;
      v5 = *(v3 + 1);
      v35 = v3;
      v6 = (v32 + 32);
      v37 = (*(v0 + 392) + 8);
      v33 = v5;
      v34 = *v3;
      while (1)
      {
        v11 = *v6;
        v12 = v6[1];
        v13 = v6[2];
        *(v0 + 61) = *(v6 + 45);
        *(v0 + 32) = v12;
        *(v0 + 48) = v13;
        *(v0 + 16) = v11;
        v14 = *(v0 + 16) == v4 && *(v0 + 24) == v5;
        if (!v14 && (sub_100041EEC() & 1) == 0)
        {
          break;
        }

        if (*(v0 + 48) != v35[8])
        {
          v21 = v0 + 16;
          v22 = v0 + 144;
LABEL_19:
          sub_1000072B8(v21, v22);
LABEL_20:
          v36 = v2;
          if (qword_10005CD40 != -1)
          {
            swift_once();
          }

          v23 = *(v0 + 400);
          v24 = *(v0 + 376);
          v25 = *(v0 + 384);
          v26 = sub_100007D34(v25, qword_100061138);
          sub_10001AD94(v26);
          v40._countAndFlagsBits = 0x636965682ELL;
          v40._object = 0xE500000000000000;
          sub_1000418CC(v40);
          sub_10004146C();

          sub_10001C458(v23, v24);
          v27 = *v37;
          v28 = (*v37)(v23, v25);
          sub_10001AD94(v28);
          v41._countAndFlagsBits = 0x2E78616D6E696D2DLL;
          v41._object = 0xEB0000000067706ALL;
          sub_1000418CC(v41);
          sub_10004146C();

          sub_10001C458(v23, v24);
          v27(v23, v25);
          if (qword_10005CD48 != -1)
          {
            swift_once();
          }

          v7 = *(v0 + 400);
          v9 = *(v0 + 376);
          v8 = *(v0 + 384);
          v10 = sub_100007D34(v8, qword_100061150);
          sub_10001AD94(v10);
          sub_100007314(v0 + 16);
          v39._countAndFlagsBits = 0x2E78616D6E696D2DLL;
          v39._object = 0xEB0000000067706ALL;
          sub_1000418CC(v39);
          sub_10004146C();

          sub_10001C458(v7, v9);
          v27(v7, v8);
          v2 = v36;
          v5 = v33;
          v4 = v34;
          goto LABEL_5;
        }

        v15 = *(v0 + 72);
        if (v15 != 0.0)
        {
          v16 = v35[14];
          if (v15 != v16)
          {
            v17 = *(v0 + 368);
            sub_1000072B8(v0 + 16, v0 + 208);
            sub_1000072B8(v17, v0 + 272);
            v18 = sub_10004164C();
            v19 = sub_100041AAC();
            sub_100007314(v17);
            if (os_log_type_enabled(v18, v19))
            {
              v20 = swift_slowAlloc();
              *v20 = 134218240;
              *(v20 + 4) = v15;
              *(v20 + 12) = 2048;
              *(v20 + 14) = v16;
              _os_log_impl(&_mh_execute_header, v18, v19, "Removing snapshot because time does not match - snapshot.effectTime: %f. viewConfiguration.effectTime: %f", v20, 0x16u);
            }

            goto LABEL_20;
          }
        }

LABEL_5:
        v6 += 4;
        if (!--v2)
        {
          goto LABEL_24;
        }
      }

      v21 = v0 + 16;
      v22 = v0 + 80;
      goto LABEL_19;
    }

LABEL_24:
  }

  v29 = *(v0 + 400);

  v30 = *(v0 + 8);

  return v30();
}

void sub_10001D094(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10001BBA4(a1);
  v115 = v5;
  v116 = *(v5 + 2);
  if (v116)
  {
    v6 = 0;
    v7 = 32;
    v2 = &type metadata for DefaultStringInterpolation;
    while (1)
    {
      if (v6 >= *(v5 + 2))
      {
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
        return;
      }

      v8 = *&v5[v7 + 45];
      v10 = *&v5[v7 + 16];
      v9 = *&v5[v7 + 32];
      v131 = *&v5[v7];
      v132 = v10;
      v133[0] = v9;
      *(v133 + 13) = v8;
      v11 = v131;
      v118 = *(&v10 + 1);
      *&v113 = v10;
      v111 = DWORD1(v9);
      v3 = v9;
      v104 = *(&v133[0] + 1);
      v107 = v8 >> 24;
      v4 = *(&v8 + 1) >> 24;
      v109 = HIBYTE(v8);
      v126 = 0;
      v127 = 0xE000000000000000;
      sub_1000072B8(&v131, &v128);
      sub_1000418CC(v11);
      v134._countAndFlagsBits = 45;
      v134._object = 0xE100000000000000;
      sub_1000418CC(v134);
      v101 = *(&v133[0] + 1);
      v128._countAndFlagsBits = *(&v133[0] + 1);
      v135._countAndFlagsBits = sub_100041EDC();
      sub_1000418CC(v135);

      v136._countAndFlagsBits = 45;
      v136._object = 0xE100000000000000;
      sub_1000418CC(v136);
      v100 = *&v133[1];
      v128._countAndFlagsBits = *&v133[1];
      v137._countAndFlagsBits = sub_100041EDC();
      sub_1000418CC(v137);

      v138._countAndFlagsBits = 45;
      v138._object = 0xE100000000000000;
      sub_1000418CC(v138);
      v12 = v133[0];
      sub_100041A3C();
      v139._countAndFlagsBits = 45;
      v139._object = 0xE100000000000000;
      sub_1000418CC(v139);
      v13 = DWORD2(v133[1]);
      sub_100041A3C();
      v128._countAndFlagsBits = 0;
      v128._object = 0xE000000000000000;
      sub_1000418CC(*a1);
      v140._countAndFlagsBits = 45;
      v140._object = 0xE100000000000000;
      sub_1000418CC(v140);
      v126 = *(a1 + 40);
      v141._countAndFlagsBits = sub_100041EDC();
      sub_1000418CC(v141);

      v142._countAndFlagsBits = 45;
      v142._object = 0xE100000000000000;
      sub_1000418CC(v142);
      v126 = *(a1 + 48);
      v143._countAndFlagsBits = sub_100041EDC();
      sub_1000418CC(v143);

      v144._countAndFlagsBits = 45;
      v144._object = 0xE100000000000000;
      sub_1000418CC(v144);
      v14 = *(a1 + 32);
      sub_100041A3C();
      v145._countAndFlagsBits = 45;
      v145._object = 0xE100000000000000;
      sub_1000418CC(v145);
      v15 = *(a1 + 56);
      sub_100041A3C();
      if (v128 == __PAIR128__(0xE000000000000000, 0))
      {
        break;
      }

      v16 = sub_100041EEC();

      if (v16)
      {
        goto LABEL_51;
      }

      ++v6;
      sub_100007314(&v131);
      v7 += 64;
      v5 = v115;
      if (v116 == v6)
      {
        goto LABEL_7;
      }
    }

LABEL_51:

    v71 = a1;
    sub_1000072B8(a1, &v128);
    v74 = sub_10004164C();
    v75 = sub_100041AAC();
    sub_100007314(a1);
    LODWORD(v20) = v111;
    LOBYTE(v2) = v109;
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v128._countAndFlagsBits = swift_slowAlloc();
      *v76 = 136315394;
      v77 = sub_10001AC30();
      v79 = sub_10000B1E4(v77, v78, &v128._countAndFlagsBits);

      *(v76 + 4) = v79;
      *(v76 + 12) = 2080;
      v80 = sub_10001AB00();
      v82 = sub_10000B1E4(v80, v81, &v128._countAndFlagsBits);

      *(v76 + 14) = v82;
      _os_log_impl(&_mh_execute_header, v74, v75, "SnapshotManager: perfect match  %s - snapshotID: %s", v76, 0x16u);
      swift_arrayDestroy();
    }

    v69 = BYTE12(v133[1]);
    v68 = *(&v132 + 1);
    v67 = v132;
    *&v70 = v101;
    *(&v70 + 1) = v100;
    *&v83 = v104;
    *(&v83 + 1) = v107;
    v103 = v83;
    countAndFlagsBits = v11._countAndFlagsBits;
    v65 = v118;
    object = v11._object;
    goto LABEL_54;
  }

LABEL_7:
  v17 = a1;
  sub_1000072B8(a1, &v131);
  v18 = sub_10004164C();
  v19 = sub_100041AAC();
  sub_100007314(a1);
  v20 = &off_100043000;
  if (os_log_type_enabled(v18, v19))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v131._countAndFlagsBits = v22;
    *v21 = 136315138;
    v23 = sub_10001AC30();
    v25 = sub_10000B1E4(v23, v24, &v131._countAndFlagsBits);

    *(v21 + 4) = v25;
    v17 = a1;
    _os_log_impl(&_mh_execute_header, v18, v19, "#SnapshotManager: try to match  %s", v21, 0xCu);
    sub_100005500(v22);
  }

  if (!v116)
  {

    countAndFlagsBits = 0;
    v66 = 0;
    v65 = 0;
    LODWORD(v20) = 0;
    v72 = 0;
    v73 = 0;
    LOBYTE(v2) = 0;
    v3 = 0;
    v4 = 0;
LABEL_59:
    v96 = sub_10004164C();
    v97 = sub_100041AAC();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      *v98 = 0;
      _os_log_impl(&_mh_execute_header, v96, v97, "SnapshotManager: no snapshot found on disk", v98, 2u);
    }

    v95 = 0;
    v94 = a2;
    goto LABEL_62;
  }

  v28 = *(v17 + 40);
  v29 = *(v17 + 48);
  v30 = 0uLL;
  v131 = 0;
  v132 = 0u;
  memset(v133, 0, 29);
  v31 = v115;
  if (*(v115 + 2))
  {
    v32 = 0;
    v33 = v28 / v29;
    v105 = (v28 * v29) >> 64 != (v28 * v29) >> 63;
    v108 = v116 - 1;
    v34 = 32;
    v35 = (v28 * v29);
    do
    {
      v36 = *&v31[v34];
      v37 = *&v31[v34 + 16];
      v38 = *&v31[v34 + 32];
      *&v130[13] = *&v31[v34 + 45];
      v129 = v37;
      *v130 = v38;
      v128 = v36;
      v4 = *&v130[24];
      v120 = *&v130[8];
      v3 = v38;
      v39 = *(&v37 + 1);
      v40 = v37;
      v112 = v36;
      sub_1000072B8(&v128, &v126);
      sub_1000072B8(&v128, &v126);
      v20 = sub_10004164C();
      v41 = sub_100041AAC();
      sub_100007314(&v128);
      v110 = v40;
      if (os_log_type_enabled(v20, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v125 = v43;
        v126 = 0;
        *v42 = 136315138;
        v127 = 0xE000000000000000;
        if (v39)
        {
          v44 = v39;
        }

        else
        {
          v44 = v112._object;

          v40 = v112._countAndFlagsBits;
        }

        v146._countAndFlagsBits = v40;
        v146._object = v44;
        sub_1000418CC(v146);

        v147._countAndFlagsBits = 45;
        v147._object = 0xE100000000000000;
        sub_1000418CC(v147);
        v148._countAndFlagsBits = sub_100041EDC();
        sub_1000418CC(v148);

        v149._countAndFlagsBits = 45;
        v149._object = 0xE100000000000000;
        sub_1000418CC(v149);
        v150._countAndFlagsBits = sub_100041EDC();
        sub_1000418CC(v150);

        v151._countAndFlagsBits = 45;
        v151._object = 0xE100000000000000;
        sub_1000418CC(v151);
        sub_100041A3C();
        v152._countAndFlagsBits = 45;
        v152._object = 0xE100000000000000;
        sub_1000418CC(v152);
        sub_100041A3C();
        v46 = sub_10000B1E4(v126, v127, &v125);

        *(v42 + 4) = v46;
        _os_log_impl(&_mh_execute_header, v20, v41, "SnapshotManager: with  %s", v42, 0xCu);
        sub_100005500(v43);

        v45 = v120;
        v31 = v115;
      }

      else
      {

        v45 = v120;
      }

      v47 = (v45 / *(&v45 + 1)) / v33;
      if (v47 > 1.0)
      {
        v47 = 1.0 / v47;
      }

      if (v47 >= 0.7)
      {
        if ((v45 * *(&v45 + 1)) >> 64 != (v45 * *(&v45 + 1)) >> 63)
        {
          goto LABEL_64;
        }

        if (v105)
        {
          goto LABEL_65;
        }

        if (((v45 * *(&v45 + 1)) / v35) >= 0.8)
        {
          if (v131._object)
          {
            v56 = (*(&v133[0] + 1) / *&v133[1]) / v33;
            if (v56 > 1.0)
            {
              v56 = 1.0 / v56;
            }

            if (v47 >= v56)
            {
              sub_100015014(&v131, &qword_10005D280, &unk_100044DB0);
              v57 = v130[28];
              *&v27 = v110;
              v26 = v112;
              *(&v27 + 1) = v39;
              v30 = v120;
            }

            else
            {
              v114 = v132;
              v3 = v133[0];
              v4 = DWORD2(v133[1]);
              v57 = BYTE12(v133[1]);
              v102 = *(v133 + 8);
              v122 = v131;
              sub_100007314(&v128);
              v27 = v114;
              v26 = v122;
              v30 = v102;
            }

            LOBYTE(v2) = v57 & 1;
          }

          else
          {
            v26 = v128;
            v27 = v129;
            v3 = *v130;
            LODWORD(v20) = *&v130[4];
            v30 = *&v130[8];
            v4 = *&v130[24];
            LOBYTE(v2) = v130[28];
          }

          goto LABEL_44;
        }

        sub_1000072B8(&v128, &v126);
        v20 = sub_10004164C();
        v52 = sub_100041AAC();
        sub_100007314(&v128);
        if (os_log_type_enabled(v20, v52))
        {
          v49 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          v125 = v53;
          v126 = 0;
          *v49 = 136315138;
          v127 = 0xE000000000000000;
          v117 = v34;
          v121 = v53;
          if (v39)
          {
            v54 = v39;
            v55 = v110;
          }

          else
          {
            v54 = v112._object;

            v55 = v112._countAndFlagsBits;
          }

          v160._countAndFlagsBits = v55;
          v160._object = v54;
          sub_1000418CC(v160);

          v161._countAndFlagsBits = 45;
          v161._object = 0xE100000000000000;
          sub_1000418CC(v161);
          v162._countAndFlagsBits = sub_100041EDC();
          sub_1000418CC(v162);

          v163._countAndFlagsBits = 45;
          v163._object = 0xE100000000000000;
          sub_1000418CC(v163);
          v164._countAndFlagsBits = sub_100041EDC();
          sub_1000418CC(v164);

          v165._countAndFlagsBits = 45;
          v165._object = 0xE100000000000000;
          sub_1000418CC(v165);
          sub_100041A3C();
          v166._countAndFlagsBits = 45;
          v166._object = 0xE100000000000000;
          sub_1000418CC(v166);
          sub_100041A3C();
          sub_100007314(&v128);
          v62 = sub_10000B1E4(v126, v127, &v125);

          *(v49 + 4) = v62;
          v59 = v52;
          v60 = v20;
          v61 = "SnapshotManager: size reject %s";
          goto LABEL_43;
        }
      }

      else
      {
        sub_1000072B8(&v128, &v126);
        v20 = sub_10004164C();
        v48 = sub_100041AAC();
        sub_100007314(&v128);
        if (os_log_type_enabled(v20, v48))
        {
          v49 = swift_slowAlloc();
          v121 = swift_slowAlloc();
          v125 = v121;
          v126 = 0;
          *v49 = 136315138;
          v127 = 0xE000000000000000;
          v117 = v34;
          if (v39)
          {
            v50 = v39;
            v51 = v110;
          }

          else
          {
            v50 = v112._object;

            v51 = v112._countAndFlagsBits;
          }

          v153._countAndFlagsBits = v51;
          v153._object = v50;
          sub_1000418CC(v153);

          v154._countAndFlagsBits = 45;
          v154._object = 0xE100000000000000;
          sub_1000418CC(v154);
          v155._countAndFlagsBits = sub_100041EDC();
          sub_1000418CC(v155);

          v156._countAndFlagsBits = 45;
          v156._object = 0xE100000000000000;
          sub_1000418CC(v156);
          v157._countAndFlagsBits = sub_100041EDC();
          sub_1000418CC(v157);

          v158._countAndFlagsBits = 45;
          v158._object = 0xE100000000000000;
          sub_1000418CC(v158);
          sub_100041A3C();
          v159._countAndFlagsBits = 45;
          v159._object = 0xE100000000000000;
          sub_1000418CC(v159);
          sub_100041A3C();
          sub_100007314(&v128);
          v58 = sub_10000B1E4(v126, v127, &v125);

          *(v49 + 4) = v58;
          v59 = v48;
          v60 = v20;
          v61 = "SnapshotManager: ratio reject %s";
LABEL_43:
          _os_log_impl(&_mh_execute_header, v60, v59, v61, v49, 0xCu);
          sub_100005500(v121);

          v26 = v131;
          v27 = v132;
          v3 = v133[0];
          LODWORD(v20) = DWORD1(v133[0]);
          v30 = *(v133 + 8);
          v4 = DWORD2(v133[1]);
          LOBYTE(v2) = BYTE12(v133[1]);
          v31 = v115;
          v34 = v117;
          goto LABEL_44;
        }
      }

      sub_100007314(&v128);
      v26 = v131;
      v27 = v132;
      v3 = v133[0];
      LODWORD(v20) = DWORD1(v133[0]);
      v30 = *(v133 + 8);
      v4 = DWORD2(v133[1]);
      LOBYTE(v2) = BYTE12(v133[1]);
LABEL_44:
      if (v108 == v32)
      {
        goto LABEL_47;
      }

      ++v32;
      v131 = v26;
      v132 = v27;
      *&v133[0] = __PAIR64__(v20, v3);
      *(v133 + 8) = v30;
      DWORD2(v133[1]) = v4;
      BYTE12(v133[1]) = v2;
      v34 += 64;
    }

    while (v32 < *(v31 + 2));
  }

  __break(1u);
LABEL_47:
  v103 = v30;
  v123 = v26;
  v113 = v27;

  object = v123._object;
  countAndFlagsBits = v123._countAndFlagsBits;
  v65 = *(&v113 + 1);
  v66 = v113;
  if (!v123._object)
  {
    v73 = *(&v103 + 1);
    v72 = v103;
    goto LABEL_59;
  }

  v68 = *(&v113 + 1);
  v67 = v113;
  v12 = v3;
  v13 = v4;
  v69 = v2;
  v70 = v103;
  v71 = a1;
LABEL_54:
  v128._countAndFlagsBits = countAndFlagsBits;
  v128._object = object;
  v124 = object;
  *&v129 = v67;
  *(&v129 + 1) = v68;
  *v130 = v12;
  *&v130[8] = v70;
  *&v130[24] = v13;
  v130[28] = v69 & 1;
  v131 = v128;
  v132 = v129;
  v133[0] = *v130;
  *(v133 + 13) = *&v130[13];
  sub_1000072B8(v71, &v126);
  sub_1000072B8(&v128, &v126);
  v84 = sub_10004164C();
  v85 = sub_100041AAC();
  sub_100007314(v71);
  if (os_log_type_enabled(v84, v85))
  {
    v119 = v65;
    v86 = swift_slowAlloc();
    v126 = swift_slowAlloc();
    *v86 = 136315394;
    v87 = sub_10001AC30();
    v89 = v88;
    sub_100007314(&v128);
    v90 = sub_10000B1E4(v87, v89, &v126);

    *(v86 + 4) = v90;
    *(v86 + 12) = 2080;
    v91 = sub_10001AC30();
    v93 = sub_10000B1E4(v91, v92, &v126);

    *(v86 + 14) = v93;
    _os_log_impl(&_mh_execute_header, v84, v85, "SnapshotManager: found usable snapshot on disk: %s. viewConfig: %s", v86, 0x16u);
    swift_arrayDestroy();

    v65 = v119;
  }

  else
  {

    sub_100007314(&v128);
  }

  v73 = *(&v103 + 1);
  v72 = v103;
  v94 = a2;
  v66 = v113;
  v95 = v124;
LABEL_62:
  *v94 = countAndFlagsBits;
  *(v94 + 8) = v95;
  *(v94 + 16) = v66;
  *(v94 + 24) = v65;
  *(v94 + 32) = v3;
  *(v94 + 36) = v20;
  *(v94 + 40) = v72;
  *(v94 + 48) = v73;
  *(v94 + 56) = v4;
  *(v94 + 60) = v2;
}

void sub_10001E1C4(UIImage *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void (*a6)(uint64_t), uint64_t a7)
{
  v62 = a7;
  v11 = sub_1000414BC();
  v65 = *(v11 - 8);
  v66 = v11;
  v12 = v65[8];
  __chkstk_darwin(v11);
  v64 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10004166C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v67 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v58 - v19;
  v21 = [objc_allocWithZone(CIContext) init];
  v22 = UIImageHEICRepresentation(a1);
  if (v22)
  {
    v63 = a6;
    v60 = v15;
    v61 = v14;
    v23 = v22;
    v24 = sub_1000414FC();
    v26 = v25;

    sub_10004150C();
    if (!a4)
    {
LABEL_15:
      if (v63)
      {
        v63(1);
      }

      sub_100014E84(v24, v26);
      goto LABEL_18;
    }

    v59 = a3;
    v48 = a4;
    sub_10004144C(v49);
    v51 = v50;
    DeviceRGB = [v48 colorSpace];
    if (!DeviceRGB)
    {
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
    }

    sub_10003331C(&_swiftEmptyArrayStorage);
    type metadata accessor for CIImageRepresentationOption(0);
    sub_100021A04(&qword_10005CFA8, type metadata accessor for CIImageRepresentationOption);
    isa = sub_10004177C().super.isa;

    v69[0] = 0;
    v58 = v21;
    v54 = [v21 writeJPEGRepresentationOfImage:v48 toURL:v51 colorSpace:DeviceRGB options:isa error:v69];

    v55 = v67;
    if (v54)
    {
      v56 = v69[0];

      goto LABEL_15;
    }

    v57 = v69[0];
    sub_1000413EC();

    swift_willThrow();
    sub_100014E84(v24, v26);

    v27 = v65;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v29 = v61;
    v30 = v63;
    v31 = v64;
    v32 = v66;
    if (Strong)
    {
      v33 = v60;
      (*(v60 + 16))(v55, Strong + OBJC_IVAR____TtC33GradientBackgroundPosterExtension15SnapshotManager_logger, v61);

      (v27[2])(v31, v59, v32);
      swift_errorRetain();
      v34 = v27;
      v35 = sub_10004164C();
      v36 = sub_100041AAC();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v68 = v65;
        *v37 = 136315394;
        sub_100021A04(&qword_10005DAE0, &type metadata accessor for URL);
        LODWORD(v59) = v36;
        v39 = sub_100041EDC();
        v41 = v40;
        (v34[1])(v31, v32);
        v42 = sub_10000B1E4(v39, v41, &v68);

        *(v37 + 4) = v42;
        *(v37 + 12) = 2112;
        swift_errorRetain();
        v43 = _swift_stdlib_bridgeErrorToNSError();
        *(v37 + 14) = v43;
        *v38 = v43;
        _os_log_impl(&_mh_execute_header, v35, v59, "#SnapshotManager: error saving to path %s: %@", v37, 0x16u);
        sub_100015014(v38, &qword_10005E240, &qword_100043C90);

        sub_100005500(v65);

        v30 = v63;

        (*(v33 + 8))(v67, v61);
      }

      else
      {

        (v34[1])(v31, v32);
        (*(v33 + 8))(v55, v29);
      }
    }

    if (v30)
    {
      v30(0);
    }
  }

  else
  {
    swift_beginAccess();
    v44 = swift_weakLoadStrong();
    if (!v44)
    {
LABEL_18:

      return;
    }

    (*(v15 + 16))(v20, v44 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension15SnapshotManager_logger, v14);

    v45 = sub_10004164C();
    v46 = sub_100041AAC();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "#SnapshotManager: snapshot heicData failed", v47, 2u);
    }

    (*(v15 + 8))(v20, v14);
  }
}

uint64_t sub_10001E8F0(char *a1, unint64_t a2, void (*a3)(void), void *a4)
{
  v162 = a1;
  v160 = sub_10004168C();
  v158 = *(v160 - 8);
  v8 = v158[8];
  __chkstk_darwin(v160);
  v156 = &v142 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = sub_1000416DC();
  v155 = *(v157 - 8);
  v10 = *(v155 + 64);
  __chkstk_darwin(v157);
  v154 = &v142 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10004169C();
  v153 = *(v12 - 8);
  v13 = *(v153 + 8);
  __chkstk_darwin(v12);
  Strong = &v142 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000414BC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v20 = (&v142 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = __chkstk_darwin(v19);
  v23 = &v142 - v22;
  v24 = __chkstk_darwin(v21);
  v25 = __chkstk_darwin(v24);
  v165 = &v142 - v26;
  isUniquelyReferenced_nonNull_native = __chkstk_darwin(v25);
  if (*(v4 + 16) != 1)
  {
    if (a3)
    {
      a3(0);
    }

    return 0;
  }

  v149 = v12;
  *&v152 = v29;
  v150 = a4;
  v151 = a3;
  v159 = v4;
  v161 = v17;
  v163 = &v142 - v28;
  if (qword_10005CD40 != -1)
  {
    goto LABEL_57;
  }

LABEL_3:
  v164 = isUniquelyReferenced_nonNull_native;
  sub_100007D34(isUniquelyReferenced_nonNull_native, qword_100061138);
  aBlock = (sub_10001AD94)();
  v167 = v30;
  v174._countAndFlagsBits = 0x636965682ELL;
  v174._object = 0xE500000000000000;
  sub_1000418CC(v174);
  sub_10004146C();

  v146 = a2;
  aBlock = sub_10001AD94(v31);
  v167 = v32;
  v175._countAndFlagsBits = 0x2E78616D6E696D2DLL;
  v175._object = 0xEB0000000067706ALL;
  sub_1000418CC(v175);
  sub_10004146C();

  v33 = objc_allocWithZone(CIImage);
  result = [v33 initWithImage:v162];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v147 = result;
  v35 = sub_10001FD08(result);
  v36 = v149;
  v148 = v37;
  if ((v35 & 1) == 0)
  {
    v75 = v163;
    v74 = v164;
    if (qword_10005CD48 != -1)
    {
      v141 = v164;
      swift_once();
      v74 = v141;
    }

    v76 = sub_100007D34(v74, qword_100061150);
    aBlock = sub_10001AD94(v76);
    v167 = v77;
    v176._countAndFlagsBits = 0x636965682ELL;
    v176._object = 0xE500000000000000;
    sub_1000418CC(v176);
    v78 = v152;
    sub_10004146C();

    v79 = v161;
    v80 = (*(v161 + 40))(v75, v78, v164);
    aBlock = sub_10001AD94(v80);
    v167 = v81;
    v177._countAndFlagsBits = 0x2E78616D6E696D2DLL;
    v177._object = 0xEB0000000067706ALL;
    sub_1000418CC(v177);
    sub_10004146C();
    v82 = v164;

    v83 = *(v79 + 8);
    v84 = v165;
    v83(v165, v82);
    (*(v79 + 32))(v84, v78, v82);
    v85 = sub_10004164C();
    v86 = sub_100041AAC();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v173 = v88;
      *v87 = 136315138;
      swift_beginAccess();
      sub_100021A04(&qword_10005DAE0, &type metadata accessor for URL);
      v89 = sub_100041EDC();
      v91 = sub_10000B1E4(v89, v90, &v173);

      *(v87 + 4) = v91;
      _os_log_impl(&_mh_execute_header, v85, v86, "#SnapshotManager: snapshot didn't pass validation %s", v87, 0xCu);
      sub_100005500(v88);
      v75 = v163;
    }

    if (v151)
    {
      v151(0);

      v92 = v164;
      v83(v165, v164);
    }

    else
    {
      v92 = v164;
      v83(v165, v164);
    }

    v83(v75, v92);
    return 0;
  }

  v38 = *(v161 + 16);
  v143 = v23;
  v39 = v152;
  v145 = v20;
  v40 = v164;
  v38();
  sub_10000BB04(0, &unk_10005D630, OS_dispatch_queue_ptr);
  v41 = v153;
  (*(v153 + 13))(Strong, enum case for DispatchQoS.QoSClass.default(_:), v36);
  v144 = sub_100041B2C();
  (*(v41 + 1))(Strong, v36);
  v149 = swift_allocObject();
  swift_weakInit();
  v42 = v143;
  v43 = v39;
  v44 = v40;
  (v38)(v143, v43, v40);
  (v38)(v145, v165, v40);
  v45 = v161;
  v46 = *(v161 + 80);
  v47 = (v46 + 32) & ~v46;
  v48 = (v18 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = (v46 + v48 + 8) & ~v46;
  v50 = swift_allocObject();
  v20 = v149;
  *(v50 + 16) = v162;
  *(v50 + 24) = v20;
  v51 = *(v45 + 32);
  v51(v50 + v47, v42, v44);
  v52 = v148;
  *(v50 + v48) = v148;
  v51(v50 + v49, v145, v44);
  v53 = (v50 + ((v18 + v49 + 7) & 0xFFFFFFFFFFFFFFF8));
  v54 = v151;
  v55 = v150;
  *v53 = v151;
  v53[1] = v55;
  v170 = sub_1000210BC;
  v171 = v50;
  aBlock = _NSConcreteStackBlock;
  v167 = 1107296256;
  v168 = sub_100028728;
  v169 = &unk_100056208;
  v56 = _Block_copy(&aBlock);
  v18 = v52;
  v153 = v162;

  sub_100021184(v54);
  v57 = v154;
  sub_1000416AC();
  v173 = &_swiftEmptyArrayStorage;
  sub_100021A04(&qword_10005F830, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000054B8(&unk_10005D640, "B|");
  sub_10000B8DC();
  v58 = v156;
  Strong = v160;
  sub_100041CAC();
  v59 = v144;
  sub_100041B1C();
  _Block_release(v56);

  (v158[1])(v58, Strong);
  (*(v155 + 8))(v57, v157);
  v60 = *(v161 + 8);
  v161 += 8;
  (v60)(v152, v164);

  v61 = v159;
  v62 = *(v159 + 32);
  os_unfair_lock_lock(v62);
  swift_beginAccess();
  v63 = *(v61 + 24);
  if (!*(v63 + 16))
  {
    goto LABEL_36;
  }

  v64 = *(v61 + 24);

  v65 = sub_10002C50C(v146);
  if ((v66 & 1) == 0)
  {

LABEL_36:
    os_unfair_lock_unlock(v62);
    goto LABEL_37;
  }

  v23 = *(*(v63 + 56) + 8 * v65);

  os_unfair_lock_unlock(v62);
  if (!v23)
  {
    goto LABEL_37;
  }

  v151 = v60;
  if (v23 >> 62)
  {
    isUniquelyReferenced_nonNull_native = sub_100041DDC();
    v67 = isUniquelyReferenced_nonNull_native;
  }

  else
  {
    v67 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  a2 = 0;
  v158 = &_swiftEmptyArrayStorage;
  while (v67 != a2)
  {
    if ((v23 & 0xC000000000000001) == 0)
    {
      if (a2 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_56;
      }

      v68 = *(v23 + 8 * a2 + 32);

      v20 = (a2 + 1);
      if (!__OFADD__(a2, 1))
      {
        goto LABEL_15;
      }

LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      v140 = isUniquelyReferenced_nonNull_native;
      swift_once();
      isUniquelyReferenced_nonNull_native = v140;
      goto LABEL_3;
    }

    isUniquelyReferenced_nonNull_native = sub_100041D3C();
    v68 = isUniquelyReferenced_nonNull_native;
    v20 = (a2 + 1);
    if (__OFADD__(a2, 1))
    {
      goto LABEL_55;
    }

LABEL_15:
    Strong = swift_unknownObjectWeakLoadStrong();
    v69 = *(v68 + 24);

    ++a2;
    if (Strong)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_100039398(0, v158[2] + 1, 1, v158);
        v158 = isUniquelyReferenced_nonNull_native;
      }

      v71 = v158[2];
      v70 = v158[3];
      if (v71 >= v70 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_100039398((v70 > 1), v71 + 1, 1, v158);
        v158 = isUniquelyReferenced_nonNull_native;
      }

      v72 = v158;
      v158[2] = v71 + 1;
      v73 = &v72[2 * v71];
      v73[4] = Strong;
      v73[5] = v69;
      a2 = v20;
    }
  }

  v104 = v158;

  v105 = v146;
  sub_1000072B8(v146, &aBlock);
  v106 = sub_10004164C();
  v107 = sub_100041AAC();

  sub_100007314(v105);
  if (os_log_type_enabled(v106, v107))
  {
    v108 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v108 = 136315394;
    sub_1000054B8(&qword_10005EBE0, &qword_100045560);
    v109 = sub_10004199C();
    v111 = sub_10000B1E4(v109, v110, &aBlock);

    *(v108 + 4) = v111;
    *(v108 + 12) = 2080;
    v112 = sub_10001AB00();
    v114 = sub_10000B1E4(v112, v113, &aBlock);

    *(v108 + 14) = v114;
    _os_log_impl(&_mh_execute_header, v106, v107, "SnapshotManager: observers for %s %s", v108, 0x16u);
    swift_arrayDestroy();
  }

  v60 = v151;
  v116 = v104[2];
  if (v116)
  {
    v150 = v18;
    v117 = *(v146 + 1);
    v157 = *v146;
    v156 = v117;
    v118 = *(v146 + 6);
    v155 = *(v146 + 5);
    v154 = v118;
    v119 = *(v146 + 8);
    v120 = *(v146 + 14);
    v121 = 4;
    *&v115 = 136315138;
    v152 = v115;
    while (1)
    {
      v162 = v116;
      v123 = v104[v121];
      aBlock = 0;
      v167 = 0xE000000000000000;
      v124 = v123;
      v178._countAndFlagsBits = v157;
      v178._object = v156;
      sub_1000418CC(v178);
      v179._countAndFlagsBits = 45;
      v179._object = 0xE100000000000000;
      sub_1000418CC(v179);
      v172 = v155;
      v180._countAndFlagsBits = sub_100041EDC();
      sub_1000418CC(v180);

      v181._countAndFlagsBits = 45;
      v181._object = 0xE100000000000000;
      sub_1000418CC(v181);
      v172 = v154;
      v182._countAndFlagsBits = sub_100041EDC();
      sub_1000418CC(v182);

      v183._countAndFlagsBits = 45;
      v183._object = 0xE100000000000000;
      sub_1000418CC(v183);
      sub_100041A3C();
      v184._countAndFlagsBits = 45;
      v184._object = 0xE100000000000000;
      sub_1000418CC(v184);
      sub_100041A3C();
      v126 = aBlock;
      v125 = v167;
      v160 = v124;
      v127 = &v124[OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotReader_viewConfiguration];
      v185 = *&v124[OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotReader_viewConfiguration];
      v128 = *&v124[OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotReader_viewConfiguration + 32];
      v129 = *&v124[OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotReader_viewConfiguration + 40];
      v130 = *(v127 + 6);
      v131 = *(v127 + 14);
      aBlock = 0;
      v167 = 0xE000000000000000;
      sub_1000418CC(v185);
      v186._countAndFlagsBits = 45;
      v186._object = 0xE100000000000000;
      sub_1000418CC(v186);
      v172 = v129;
      v187._countAndFlagsBits = sub_100041EDC();
      sub_1000418CC(v187);

      v188._countAndFlagsBits = 45;
      v188._object = 0xE100000000000000;
      sub_1000418CC(v188);
      v172 = v130;
      v189._countAndFlagsBits = sub_100041EDC();
      sub_1000418CC(v189);

      v190._countAndFlagsBits = 45;
      v190._object = 0xE100000000000000;
      sub_1000418CC(v190);
      sub_100041A3C();
      v191._countAndFlagsBits = 45;
      v191._object = 0xE100000000000000;
      sub_1000418CC(v191);
      sub_100041A3C();
      if (v126 == aBlock && v125 == v167)
      {
        break;
      }

      v134 = sub_100041EEC();

      v132 = v162;
      v133 = v160;
      if (v134)
      {
        goto LABEL_51;
      }

LABEL_46:

      v121 += 2;
      v116 = v132 - 1;
      v104 = v158;
      if (!v116)
      {

        v18 = v150;
        v60 = v151;
        goto LABEL_37;
      }
    }

    v132 = v162;
    v133 = v160;
LABEL_51:
    v135 = v133;
    v136 = sub_10004164C();
    v137 = sub_100041AAC();

    if (os_log_type_enabled(v136, v137))
    {
      v138 = swift_slowAlloc();
      v139 = swift_slowAlloc();
      aBlock = v139;
      *v138 = v152;
      *(v138 + 4) = sub_10000B1E4(*&v135[OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotReader_tagID], *&v135[OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotReader_tagID + 8], &aBlock);
      _os_log_impl(&_mh_execute_header, v136, v137, "#%s snapshotReader: update image from observer ", v138, 0xCu);
      sub_100005500(v139);
    }

    v122 = *&v135[OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotReader_updateBlock + 8];
    (*&v135[OBJC_IVAR____TtC33GradientBackgroundPosterExtension14SnapshotReader_updateBlock])(v153, 0);
    goto LABEL_46;
  }

LABEL_37:
  v93 = sub_10004164C();
  v94 = sub_100041AAC();
  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v172 = v96;
    *v95 = 136315138;
    v97 = v163;
    swift_beginAccess();
    sub_100021A04(&qword_10005DAE0, &type metadata accessor for URL);
    v98 = v164;
    v99 = sub_100041EDC();
    v101 = v60;
    v102 = sub_10000B1E4(v99, v100, &v172);

    *(v95 + 4) = v102;
    _os_log_impl(&_mh_execute_header, v93, v94, "#SnapshotManager: saved to path %s", v95, 0xCu);
    sub_100005500(v96);

    v101(v165, v98);
    v101(v97, v98);
  }

  else
  {

    v103 = v164;
    (v60)(v165, v164);
    (v60)(v163, v103);
  }

  return 1;
}

id sub_10001FD08(void *a1)
{
  v1 = sub_100021A4C(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = sub_1000419BC();
  *(v2 + 16) = 8;
  *(v2 + 48) = 0u;
  *(v2 + 32) = 0u;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v4 = [objc_allocWithZone(CIContext) init];
  [v1 extent];
  result = [v4 render:v1 toBitmap:v2 + 32 rowBytes:32 bounds:kCIFormatRGBAf format:DeviceRGB colorSpace:?];
  v6 = *(v2 + 16);
  if (!v6)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v6 == 1)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v6 < 3)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v6 == 3)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v6 < 5)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v6 == 5)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v6 < 7)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v6 != 7)
  {
    v7 = ((*(v2 + 32) + *(v2 + 36)) + *(v2 + 40)) + *(v2 + 44);
    v8 = ((*(v2 + 48) + *(v2 + 52)) + *(v2 + 56)) + *(v2 + 60);
    v9 = vabds_f32(v7, v8);
    v10 = v9 > 0.01;
    v11 = sub_10004164C();
    v12 = sub_100041AAC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 67109632;
      *(v13 + 4) = v9 > 0.01;
      *(v13 + 8) = 2048;
      *(v13 + 10) = v7;
      *(v13 + 18) = 2048;
      *(v13 + 20) = v8;
      _os_log_impl(&_mh_execute_header, v11, v12, "#SnapshotManager: checkIfValidSnapshot %{BOOL}d v0: %f v1: %f", v13, 0x1Cu);
    }

    return v10;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_10001FF54()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension15SnapshotManager_logger;
  v3 = sub_10004166C();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SnapshotManager()
{
  result = qword_10005EA08;
  if (!qword_10005EA08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002004C()
{
  result = sub_10004166C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 sub_100020128(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 45) = *(a2 + 45);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100020144(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 61))
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

uint64_t sub_10002018C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 60) = 0;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 61) = 1;
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

    *(result + 61) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000201F4()
{
  result = qword_10005EBD8;
  if (!qword_10005EBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005EBD8);
  }

  return result;
}

unsigned __int8 *sub_100020248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_100021B84();

  result = sub_10004194C();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1000207E0();
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_100041D5C();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1000207E0()
{
  v0 = sub_10004195C();
  v4 = sub_100020860(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_100020860(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1000418AC();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_100041C7C();
  if (!v9)
  {
    v11 = &_swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_10000B624(v9, 0);
  v12 = sub_1000209B8(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_1000418AC();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_100041D5C();
LABEL_4:

  return sub_1000418AC();
}

unint64_t sub_1000209B8(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_100020BD8(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_10004191C();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_100041D5C();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_100020BD8(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1000418EC();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_100020BD8(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_10004192C();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_1000418FC();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

BOOL sub_100020C54(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtof_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_100041D1C();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

uint64_t sub_100020D4C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_100041D5C();
  }

  result = sub_100021194(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t sub_100020E18(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_100041EEC() & 1) == 0)
  {
    goto LABEL_20;
  }

  v5 = *(a1 + 24);
  v6 = *(a2 + 24);
  if (v5)
  {
    if (!v6)
    {
      goto LABEL_20;
    }

    v7 = *(a1 + 16) == *(a2 + 16) && v5 == v6;
    if (!v7 && (sub_100041EEC() & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if (v6)
  {
LABEL_20:
    v8 = 0;
    return v8 & 1;
  }

  if (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56))
  {
    goto LABEL_20;
  }

  v8 = *(a1 + 60) ^ *(a2 + 60) ^ 1;
  return v8 & 1;
}

uint64_t *sub_100020EF4(uint64_t a1, uint64_t *a2)
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

uint64_t sub_100020F58()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100020F90()
{
  v1 = sub_1000414BC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64) + 7;
  v6 = (v5 + v4) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v3 + v6 + 8) & ~v3;
  v8 = (v5 + v7) & 0xFFFFFFFFFFFFFFF8;

  v9 = *(v0 + 24);

  v10 = *(v2 + 8);
  v10(v0 + v4, v1);

  v10(v0 + v7, v1);
  if (*(v0 + v8))
  {
    v11 = *(v0 + v8 + 8);
  }

  return _swift_deallocObject(v0, v8 + 16, v3 | 7);
}

void sub_1000210BC()
{
  v1 = *(sub_1000414BC() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64) + 7;
  v5 = (v4 + v3) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v2 + v5 + 8) & ~v2;
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v9 = *(v0 + v5);
  v10 = v0 + ((v4 + v6) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 8);

  sub_10001E1C4(v7, v8, v0 + v3, v9, v0 + v6, v11, v12);
}

uint64_t sub_10002116C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100021184(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100021194(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_100020BD8(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_10004190C();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_100020BD8(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_100020BD8(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = sub_10004190C();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

uint64_t sub_100021600@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000414BC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004145C();
  v9 = sub_10004143C();
  v11 = v10;
  v12 = *(v5 + 8);
  v12(v8, v4);
  v58 = v9;
  v59 = v11;
  sub_10000EF68();
  v13 = sub_100041C8C();

  v14 = v13[2];
  if (v14 < 4 || v14 > 5)
  {
    v12(a1, v4);

LABEL_18:
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v27 = 0;
    v35 = 0;
    v41 = 0;
    v42 = 0;
LABEL_19:
    *a2 = v38;
    *(a2 + 8) = v39;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = v40;
    *(a2 + 36) = 0;
    *(a2 + 40) = v27;
    *(a2 + 48) = v35;
    *(a2 + 56) = v41;
    *(a2 + 60) = v42;
    return result;
  }

  v57 = a1;
  v16 = v13[16];
  v17 = v13[17];
  v18 = v13[18];
  v19 = v13[19];

  v20 = sub_10004189C();
  v22 = v21;

  LODWORD(v58) = 0;
  LOBYTE(v18) = sub_100020C54(v20, v22);

  if ((v18 & 1) == 0)
  {
    goto LABEL_17;
  }

  if (v13[2] < 2uLL)
  {
    __break(1u);
    goto LABEL_28;
  }

  v23 = v13[8];
  v24 = v13[9];
  if ((v24 ^ v23) < 0x4000)
  {
    goto LABEL_17;
  }

  v54 = v58;
  v25 = v13[11];
  v55 = v13[10];
  v56 = v23;
  result = sub_100020D4C(v23, v24, v55, v25, 10);
  if ((v26 & 0x100) != 0)
  {

    v27 = sub_100020248(v56, v24, v55, v25, 10);
    v29 = v28;

    if (v29)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (v26)
    {
      goto LABEL_17;
    }

    v27 = result;
  }

  if (v13[2] < 3uLL)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v30 = v13[12];
  v31 = v13[13];
  if ((v31 ^ v30) < 0x4000)
  {
    goto LABEL_17;
  }

  v32 = v13[14];
  v33 = v13[15];
  v55 = v13[13];
  v56 = v30;
  v53 = v32;
  result = sub_100020D4C(v30, v31, v32, v33, 10);
  v52 = 0;
  if ((v34 & 0x100) == 0)
  {
    if ((v34 & 1) == 0)
    {
      v35 = result;
      goto LABEL_20;
    }

LABEL_17:

    result = (v12)(v57, v4);
    goto LABEL_18;
  }

  v35 = sub_100020248(v56, v55, v53, v33, 10);
  v37 = v36;

  if (v37)
  {
    goto LABEL_17;
  }

LABEL_20:
  if (v14 != 5)
  {
    goto LABEL_24;
  }

  if (v13[2] >= 5uLL)
  {
    v44 = v13[20];
    v43 = v13[21];
    v45 = v13[23];
    v55 = v13[22];
    v56 = v43;

    v56 = sub_10004189C();
    v47 = v46;

    LODWORD(v58) = 0;
    LOBYTE(v47) = sub_100020C54(v56, v47);

    if (v47)
    {
      v41 = v58;
      goto LABEL_25;
    }

LABEL_24:
    v41 = 0;
LABEL_25:
    if (v13[2])
    {
      v42 = v14 != 5;
      v48 = v13[4];
      v55 = v13[5];
      v56 = v48;
      v49 = v13[6];
      v52 = v13[7];
      v53 = v49;

      v38 = sub_10004189C();
      v39 = v50;

      result = (v12)(v57, v4);
      v40 = v54;
      goto LABEL_19;
    }

    goto LABEL_29;
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_100021A04(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_100021A4C(void *a1)
{
  v2 = [objc_opt_self() areaMinMaxFilter];
  [v2 setInputImage:a1];
  [a1 extent];
  v3 = CGRectGetWidth(v10) * 0.5;
  [a1 extent];
  v4 = v3 - CGRectGetWidth(v11) * 0.25;
  [a1 extent];
  v5 = CGRectGetHeight(v12) * 0.5;
  [a1 extent];
  v6 = v5 - CGRectGetHeight(v13) * 0.25;
  [a1 extent];
  v7 = CGRectGetWidth(v14) * 0.5;
  [a1 extent];
  [v2 setExtent:{v4, v6, v7, CGRectGetHeight(v15) * 0.5}];
  v8 = [v2 outputImage];

  return v8;
}

unint64_t sub_100021B84()
{
  result = qword_10005EBE8;
  if (!qword_10005EBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005EBE8);
  }

  return result;
}

_BYTE *sub_100021BD8@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtof_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void sub_100021C58(void *a1)
{
  v2 = v1;
  v4 = objc_opt_self();
  sub_1000054B8(&qword_10005F300, &qword_100043C98);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100044DC0;
  v6 = [v2 leadingAnchor];
  v7 = [a1 leadingAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];

  *(v5 + 32) = v8;
  v9 = [v2 trailingAnchor];
  v10 = [a1 trailingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];

  *(v5 + 40) = v11;
  v12 = [v2 topAnchor];
  v13 = [a1 topAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];

  *(v5 + 48) = v14;
  v15 = [v2 bottomAnchor];
  v16 = [a1 bottomAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];

  *(v5 + 56) = v17;
  sub_100023860();
  isa = sub_10004197C().super.isa;

  [v4 activateConstraints:isa];
}

uint64_t sub_100021E98()
{
  v0 = sub_10004185C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004183C();
  v5 = sub_10004180C();
  v7 = v6;
  result = (*(v1 + 8))(v4, v0);
  if (v7 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v9 = sub_1000413BC();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v12 = sub_10004138C();
    v17 = 0x1000000000;
    v18 = v12 | 0x4000000000000000;
    sub_100023548(v5, v7);
    sub_1000230A8(&v17, v5, v7);
    sub_1000235B0(v5, v7);
    v13 = v17;
    v14 = v18;
    v16 = sub_100022348(v17, v18);
    sub_1000054B8(&qword_10005EC10, &qword_100044DE0);
    sub_1000235C4();
    v15 = sub_1000417AC();
    sub_1000235B0(v5, v7);

    sub_100014E84(v13, v14);
    return v15;
  }

  return result;
}

unsigned __int8 *sub_100022074@<X0>(unsigned __int8 *md@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  v7 = md;
  v9 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v9)
    {
      data[0] = a2;
      LOWORD(data[1]) = a3;
      BYTE2(data[1]) = BYTE2(a3);
      BYTE3(data[1]) = BYTE3(a3);
      BYTE4(data[1]) = BYTE4(a3);
      BYTE5(data[1]) = BYTE5(a3);
      if (md)
      {
        md = CC_MD5(data, BYTE6(a3), md);
      }

      v10 = 0;
      goto LABEL_20;
    }

    if (a2 >> 32 >= a2)
    {
      v16 = v4;
      v13 = sub_10004137C();
      if (!v13)
      {
        goto LABEL_16;
      }

      v15 = sub_1000413AC();
      if (!__OFSUB__(a2, v15))
      {
        v13 += a2 - v15;
        goto LABEL_16;
      }

LABEL_24:
      __break(1u);
    }

    __break(1u);
    goto LABEL_22;
  }

  if (v9 == 2)
  {
    v16 = v4;
    v12 = *(a2 + 16);
    v11 = *(a2 + 24);
    v13 = sub_10004137C();
    if (v13)
    {
      v14 = sub_1000413AC();
      if (__OFSUB__(v12, v14))
      {
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v13 += v12 - v14;
    }

    if (!__OFSUB__(v11, v12))
    {
LABEL_16:
      sub_10004139C();
      md = sub_1000222B4(v13, v7, a2, a3, data);
      if (!v16)
      {
        v10 = data[0];
LABEL_20:
        *a4 = v10;
        return md;
      }

      goto LABEL_25;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  memset(data, 0, 14);
  md = sub_1000222B4(data, md, a2, a3, &v17);
  if (!v4)
  {
    v10 = v17;
    goto LABEL_20;
  }

LABEL_25:

  __break(1u);
  return md;
}

unsigned __int8 *sub_1000222B4@<X0>(unsigned __int8 *result@<X0>, unsigned __int8 *a2@<X2>, uint64_t a3@<X4>, unint64_t a4@<X5>, _BYTE *a5@<X8>)
{
  if (!result || !a2)
  {
    goto LABEL_17;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 != 2)
    {
      goto LABEL_15;
    }

    v9 = *(a3 + 16);
    v8 = *(a3 + 24);
    v7 = v8 - v9;
    if (!__OFSUB__(v8, v9))
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  else if (!v6)
  {
    LODWORD(v7) = BYTE6(a4);
LABEL_16:
    result = CC_MD5(result, v7, a2);
LABEL_17:
    *a5 = 0;
    return result;
  }

  if (__OFSUB__(HIDWORD(a3), a3))
  {
    goto LABEL_19;
  }

  v7 = HIDWORD(a3) - a3;
LABEL_12:
  if ((v7 & 0x8000000000000000) == 0)
  {
    if (!HIDWORD(v7))
    {
      goto LABEL_16;
    }

    __break(1u);
LABEL_15:
    LODWORD(v7) = 0;
    goto LABEL_16;
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

unint64_t *sub_100022348(uint64_t a1, unint64_t a2)
{
  v4 = a2 >> 62;
  v31 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    return &_swiftEmptyArrayStorage;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = &_swiftEmptyArrayStorage;
  if (v5)
  {
    v46 = &_swiftEmptyArrayStorage;
    v32 = a2 >> 62;
    sub_100022D8C(0, v5 & ~(v5 >> 63), 0);
    v9 = v32;
    if (v32)
    {
      if (v32 == 2)
      {
        v10 = *(a1 + 16);
      }

      else
      {
        v10 = a1;
      }
    }

    else
    {
      v10 = 0;
    }

    v33 = v10;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v11 = 0;
    v8 = v46;
    v30 = &v34 + v10;
    do
    {
      if (v11 >= v5)
      {
        __break(1u);
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
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_41;
      }

      v13 = v33 + v11;
      if (v9 == 2)
      {
        if (v13 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v13 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v18 = sub_10004137C();
        if (!v18)
        {
          goto LABEL_51;
        }

        v15 = v18;
        v19 = sub_1000413AC();
        v17 = v13 - v19;
        if (__OFSUB__(v13, v19))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v9 != 1)
        {
          if (v13 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v34 = a1;
          v35 = BYTE2(a1);
          v36 = BYTE3(a1);
          v37 = v31;
          v38 = BYTE5(a1);
          v39 = BYTE6(a1);
          v40 = HIBYTE(a1);
          v41 = a2;
          v42 = BYTE2(a2);
          v43 = BYTE3(a2);
          v44 = BYTE4(a2);
          v45 = BYTE5(a2);
          v20 = v30[v11];
          goto LABEL_36;
        }

        if (v13 < a1 || v13 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v14 = sub_10004137C();
        if (!v14)
        {
          goto LABEL_50;
        }

        v15 = v14;
        v16 = sub_1000413AC();
        v17 = v13 - v16;
        if (__OFSUB__(v13, v16))
        {
          goto LABEL_46;
        }
      }

      v20 = *(v15 + v17);
      v9 = v32;
LABEL_36:
      sub_1000054B8(&unk_10005D9B0, &unk_100044760);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1000445B0;
      *(v21 + 56) = &type metadata for UInt8;
      *(v21 + 64) = &protocol witness table for UInt8;
      *(v21 + 32) = v20;
      v22 = sub_10004181C();
      v46 = v8;
      v25 = v8[2];
      v24 = v8[3];
      if (v25 >= v24 >> 1)
      {
        v29 = v22;
        v27 = v23;
        sub_100022D8C((v24 > 1), v25 + 1, 1);
        v9 = v32;
        v23 = v27;
        v22 = v29;
        v8 = v46;
      }

      v8[2] = v25 + 1;
      v26 = &v8[2 * v25];
      v26[4] = v22;
      v26[5] = v23;
      ++v11;
    }

    while (v12 != v5);
  }

  return v8;
}

id sub_1000226C4(double a1)
{
  *v2.i64 = sub_100022754();
  v3 = a1;
  v9 = v3;
  v10 = v2;
  v8 = 1.0 - v3;
  *v4.i64 = sub_100022754();
  v11 = vaddq_f32(vmulq_n_f32(v10, v8), vmulq_n_f32(v4, v9));
  v5 = sub_1000417CC();
  v6 = sub_100022854(v5, v11);

  return v6;
}

double sub_100022754()
{
  v1 = v0;
  v2 = [v0 CGColor];
  v3 = sub_100041A6C();

  if (!v3)
  {
    goto LABEL_5;
  }

  if (*(v3 + 16) != 4)
  {

LABEL_5:
    v12 = 0.0;
    v10 = 0.0;
    v11 = 0.0;
    v9 = 0.0;
    [v1 getRed:&v12 green:&v11 blue:&v10 alpha:&v9];
    v4.f64[0] = v12;
    v5.f64[0] = v10;
    v4.f64[1] = v11;
    v5.f64[1] = v9;
    goto LABEL_6;
  }

  v7 = *(v3 + 32);
  v8 = *(v3 + 48);

  v4 = v7;
  v5 = v8;
LABEL_6:
  *&result = vcvt_hight_f32_f64(vcvt_f32_f64(v4), v5).u64[0];
  return result;
}

id sub_100022854(const __CFString *a1, float32x4_t a2)
{
  v2 = CGColorSpaceCreateWithName(a1);
  if (v2)
  {
    v3 = v2;
    v13[0] = vcvtq_f64_f32(*a2.f32);
    v13[1] = vcvt_hight_f64_f32(a2);
    v4 = CGColorCreate(v2, v13);
    if (v4)
    {
      v5 = v4;
      v6 = [objc_allocWithZone(UIColor) initWithCGColor:v4];

      return v6;
    }
  }

  if (qword_10005CD50 != -1)
  {
    swift_once();
  }

  v8 = sub_10004166C();
  sub_100007D34(v8, qword_10005EBF8);
  v9 = sub_10004164C();
  v10 = sub_100041ABC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "unable to create cgColor in extended linear SRGB", v11, 2u);
  }

  return [objc_allocWithZone(UIColor) initWithRed:a2.f32[0] green:a2.f32[1] blue:a2.f32[2] alpha:a2.f32[3]];
}

uint64_t sub_1000229F4(__n128 a1)
{
  sub_1000054B8(&unk_10005D9B0, &unk_100044760);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100044400;
  *(v1 + 56) = &type metadata for Float;
  *(v1 + 64) = &protocol witness table for Float;
  *(v1 + 32) = a1.n128_u32[0];
  *(v1 + 96) = &type metadata for Float;
  *(v1 + 104) = &protocol witness table for Float;
  *(v1 + 72) = a1.n128_u32[1];
  *(v1 + 136) = &type metadata for Float;
  *(v1 + 144) = &protocol witness table for Float;
  *(v1 + 112) = a1.n128_u32[2];
  *(v1 + 176) = &type metadata for Float;
  *(v1 + 184) = &protocol witness table for Float;
  *(v1 + 152) = a1.n128_u32[3];

  return sub_10004181C();
}

id sub_100022AB4()
{
  v1 = [v0 CGColor];
  v2 = CGColorGetColorSpace(v1);

  if (v2)
  {
    ExtendedLinearized = CGColorSpaceCreateExtendedLinearized(v2);
    if (ExtendedLinearized)
    {
      v4 = ExtendedLinearized;
      v5 = [v13 CGColor];
      CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v4, kCGRenderingIntentDefault, v5, 0);

      if (CopyByMatchingToColorSpace)
      {
        v7 = [objc_allocWithZone(UIColor) initWithCGColor:CopyByMatchingToColorSpace];

        return v7;
      }
    }

    else
    {
      v4 = v2;
    }
  }

  if (qword_10005CD50 != -1)
  {
    swift_once();
  }

  v9 = sub_10004166C();
  sub_100007D34(v9, qword_10005EBF8);
  v10 = sub_10004164C();
  v11 = sub_100041ABC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "cannot convert to extended linear space", v12, 2u);
  }

  return v13;
}

uint64_t sub_100022C7C()
{
  v0 = sub_10004166C();
  sub_100020EF4(v0, qword_10005EBF8);
  sub_100007D34(v0, qword_10005EBF8);
  return sub_10004165C();
}

unint64_t sub_100022D00(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_100022D8C(char *a1, int64_t a2, char a3)
{
  result = sub_100022DCC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100022DAC(char *a1, int64_t a2, char a3)
{
  result = sub_100022ED8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100022DCC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000054B8(&qword_10005EC20, &qword_100044DE8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100022ED8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000054B8(&qword_10005EC30, &qword_100045570);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

uint64_t sub_100022FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_10004137C();
  if (!result)
  {
    goto LABEL_9;
  }

  v11 = result;
  result = sub_1000413AC();
  v12 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (__OFSUB__(a2, a1))
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  sub_10004139C();
  result = sub_100022074((v11 + v12), a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return result;
}

unint64_t sub_1000230A8(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = v7 >> 62;
  if ((v7 >> 62) <= 1)
  {
    if (!v9)
    {
      sub_10002355C(a2, a3);
      sub_10002355C(a2, a3);
      sub_100014E84(v8, v7);
      *&md = v8;
      WORD4(md) = v7;
      BYTE10(md) = BYTE2(v7);
      BYTE11(md) = BYTE3(v7);
      BYTE12(md) = BYTE4(v7);
      BYTE13(md) = BYTE5(v7);
      BYTE14(md) = BYTE6(v7);
      sub_100022074(&md, a2, a3, &v23);
      if (v3)
      {
        v7 = md;
        v10 = DWORD2(md) | ((WORD6(md) | (BYTE14(md) << 16)) << 32);
        sub_100014E84(a2, a3);
        sub_100014E84(a2, a3);
        *a1 = v7;
        a1[1] = v10;
      }

      else
      {
        v7 = v23;
        v16 = md;
        v17 = DWORD2(md) | ((WORD6(md) | (BYTE14(md) << 16)) << 32);
        sub_100014E84(a2, a3);
        sub_100014E84(a2, a3);
        *a1 = v16;
        a1[1] = v17;
      }

      return v7;
    }

    v14 = v7 & 0x3FFFFFFFFFFFFFFFLL;
    sub_10002355C(a2, a3);
    sub_10002355C(a2, a3);
    sub_10002355C(v8, v7);
    sub_100014E84(v8, v7);
    *a1 = xmmword_100044DD0;
    sub_100014E84(0, 0xC000000000000000);
    v15 = v8 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v15 < v8)
      {
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      if (sub_10004137C() && __OFSUB__(v8, sub_1000413AC()))
      {
LABEL_23:
        __break(1u);
      }

      v18 = sub_1000413BC();
      v19 = *(v18 + 48);
      v20 = *(v18 + 52);
      swift_allocObject();
      v21 = sub_10004136C();

      v14 = v21;
    }

    if (v15 >= v8)
    {
      sub_10002355C(a2, a3);

      v7 = sub_100022FF4(v8, v8 >> 32, v14, a2, a3);
      sub_100014E84(a2, a3);

      sub_100014E84(a2, a3);
      sub_100014E84(a2, a3);
      *a1 = v8;
      a1[1] = v14 | 0x4000000000000000;
      return v7;
    }

    __break(1u);
    goto LABEL_22;
  }

  if (v9 == 2)
  {
    sub_10002355C(a2, a3);
    sub_10002355C(a2, a3);
    sub_10002355C(v8, v7);
    sub_100014E84(v8, v7);
    *&md = v8;
    *(&md + 1) = v7 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_100044DD0;
    sub_100014E84(0, 0xC000000000000000);
    sub_1000414CC();
    v11 = *(&md + 1);
    v7 = *(md + 16);
    v12 = *(md + 24);
    sub_10002355C(a2, a3);
    v13 = sub_100022FF4(v7, v12, *(&md + 1), a2, a3);
    if (!v3)
    {
      v7 = v13;
    }

    sub_100014E84(a2, a3);
    sub_100014E84(a2, a3);
    sub_100014E84(a2, a3);
    *a1 = md;
    a1[1] = v11 | 0x8000000000000000;
  }

  else
  {
    *(&md + 7) = 0;
    *&md = 0;
    sub_100022074(&md, a2, a3, &v23);
    if (!v3)
    {
      return v23;
    }
  }

  return v7;
}

uint64_t sub_100023548(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10002355C(a1, a2);
  }

  return a1;
}

uint64_t sub_10002355C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1000235B0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100014E84(a1, a2);
  }

  return a1;
}

unint64_t sub_1000235C4()
{
  result = qword_10005EC18;
  if (!qword_10005EC18)
  {
    sub_10000B940(&qword_10005EC10, &qword_100044DE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005EC18);
  }

  return result;
}

id sub_100023628()
{
  v0 = vcvtd_n_f64_u64(sub_100022D00(0x20000000000001uLL), 0x35uLL) + 0.0;
  v1 = vcvtd_n_f64_u64(sub_100022D00(0x20000000000001uLL), 0x35uLL) + 0.0;
  v2 = vcvtd_n_f64_u64(sub_100022D00(0x20000000000001uLL), 0x35uLL) + 0.0;
  v3 = objc_allocWithZone(UIColor);

  return [v3 initWithRed:v0 green:v1 blue:v2 alpha:1.0];
}

uint64_t sub_1000236C0()
{
  sub_10000EF68();
  v0 = sub_100041C8C();
  v1 = v0;
  if (v0[2] != 4)
  {
  }

  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];

  result = sub_100041A4C();
  if (v1[2] < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v7 = v1[8];
    v8 = v1[9];
    v9 = v1[10];
    v10 = v1[11];

    result = sub_100041A4C();
    if (v1[2] >= 3uLL)
    {
      v11 = v1[12];
      v12 = v1[13];
      v13 = v1[14];
      v14 = v1[15];

      result = sub_100041A4C();
      if (v1[2] >= 4uLL)
      {
        v15 = v1[16];
        v16 = v1[17];
        v17 = v1[18];
        v18 = v1[19];

        return sub_100041A4C();
      }

      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

unint64_t sub_100023860()
{
  result = qword_10005EC28;
  if (!qword_10005EC28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10005EC28);
  }

  return result;
}

char *sub_1000238AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return &_swiftEmptyArrayStorage;
  }

  v5 = a2 - a1;
  v6 = a2 - a1 + 1;
  v7 = ~(a2 - a1);
  v8 = &_swiftEmptyArrayStorage;
  do
  {
    if (v5 == -1)
    {
      swift_stdlib_random();
      v10 = 0;
    }

    else
    {
      swift_stdlib_random();
      v9 = (0 * v6) >> 64;
      if (v7 % v6)
      {
        do
        {
          swift_stdlib_random();
        }

        while (v7 % v6);
        v9 = (0 * v6) >> 64;
      }

      v10 = v9 + a1;
    }

    v11 = 0;
    v12 = *(v8 + 2);
    while (v12 != v11)
    {
      v13 = &v8[8 * v11++];
      if (*(v13 + 4) == v10)
      {
        goto LABEL_4;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_100039294(0, v12 + 1, 1, v8);
    }

    v15 = *(v8 + 2);
    v14 = *(v8 + 3);
    v12 = v15 + 1;
    if (v15 >= v14 >> 1)
    {
      v8 = sub_100039294((v14 > 1), v15 + 1, 1, v8);
    }

    *(v8 + 2) = v12;
    *&v8[8 * v15 + 32] = v10;
LABEL_4:
    ;
  }

  while (v12 != a3);
  return v8;
}

uint64_t getEnumTagSinglePayload for BackgroundEventType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BackgroundEventType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100023B84()
{
  result = qword_10005EC38;
  if (!qword_10005EC38)
  {
    sub_10000B940(&qword_10005EC40, qword_100044E08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005EC38);
  }

  return result;
}

uint64_t sub_100023BE8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000064656464;
  v3 = 0x416B636162706174;
  v4 = a1;
  v5 = 0xEB00000000676E69;
  if (a1 == 5)
  {
    v6 = 0xD000000000000011;
  }

  else
  {
    v6 = 0x6C6C6F7263537369;
  }

  if (a1 == 5)
  {
    v5 = 0x8000000100046010;
  }

  v7 = 0x8000000100045FD0;
  if (a1 != 3)
  {
    v7 = 0x8000000100045FF0;
  }

  if (a1 > 4u)
  {
    v7 = v5;
  }

  else
  {
    v6 = 0xD000000000000010;
  }

  v8 = 0x526B636162706174;
  v9 = 0xEE006465766F6D65;
  if (a1 != 1)
  {
    v8 = 0xD000000000000016;
    v9 = 0x8000000100045FB0;
  }

  if (!a1)
  {
    v8 = 0x416B636162706174;
    v9 = 0xEC00000064656464;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  if (v4 <= 2)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEE006465766F6D65;
        if (v10 != 0x526B636162706174)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v2 = 0x8000000100045FB0;
        if (v10 != 0xD000000000000016)
        {
          goto LABEL_40;
        }
      }

      goto LABEL_37;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0x8000000100046010;
        if (v10 != 0xD000000000000011)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v2 = 0xEB00000000676E69;
        if (v10 != 0x6C6C6F7263537369)
        {
          goto LABEL_40;
        }
      }

      goto LABEL_37;
    }

    if (a2 == 3)
    {
      v2 = 0x8000000100045FD0;
      if (v10 != 0xD000000000000010)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    }

    v2 = 0x8000000100045FF0;
    v3 = 0xD000000000000010;
  }

  if (v10 != v3)
  {
LABEL_40:
    v12 = sub_100041EEC();
    goto LABEL_41;
  }

LABEL_37:
  if (v11 != v2)
  {
    goto LABEL_40;
  }

  v12 = 1;
LABEL_41:

  return v12 & 1;
}

Swift::Int sub_100023E04()
{
  sub_100041F1C();
  sub_1000418BC();

  return sub_100041F3C();
}

uint64_t sub_100023F74()
{
  *v0;
  sub_1000418BC();
}

uint64_t sub_1000240C0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100024460(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_1000240F0(void *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v7 = 0xEC00000064656464;
    v8 = 0xEE006465766F6D65;
    v9 = 0x526B636162706174;
    if (v2 != 1)
    {
      v9 = 0xD000000000000016;
      v8 = 0x8000000100045FB0;
    }

    v10 = v2 == 0;
    if (*v1)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0x416B636162706174;
    }

    if (!v10)
    {
      v7 = v8;
    }

    *a1 = v11;
    a1[1] = v7;
  }

  else
  {
    v3 = 0x8000000100046010;
    v4 = 0xD000000000000011;
    if (v2 != 5)
    {
      v4 = 0x6C6C6F7263537369;
      v3 = 0xEB00000000676E69;
    }

    v5 = 0x8000000100045FD0;
    if (v2 != 3)
    {
      v5 = 0x8000000100045FF0;
    }

    if (*v1 <= 4u)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = v4;
    }

    if (*v1 <= 4u)
    {
      v3 = v5;
    }

    *a1 = v6;
    a1[1] = v3;
  }
}

unint64_t sub_10002421C()
{
  result = qword_10005EC48;
  if (!qword_10005EC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005EC48);
  }

  return result;
}

uint64_t sub_100024270()
{
  v0 = 0;
  while (1)
  {
    v1 = *(&off_1000554D0 + v0 + 32);
    v2 = sub_10004187C();
    v4 = v3;

    if (v2 == sub_10004187C() && v4 == v5)
    {
      break;
    }

    v6 = sub_100041EEC();

    if (v6)
    {
      return v1;
    }

    if (++v0 == 7)
    {
      return 7;
    }
  }

  return v1;
}

uint64_t sub_100024460(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100055548;
  v6._object = a2;
  v4 = sub_100041E2C(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

__n128 sub_1000244AC(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 110) = *(a2 + 110);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1000244D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 126))
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

uint64_t sub_100024520(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 124) = 0;
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 126) = 1;
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

    *(result + 126) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100024594(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1000245A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_100024604(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_100024674(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

__n128 sub_100024720()
{
  sub_1000054B8(&qword_10005ECF0, &unk_100045100);
  v0 = swift_allocObject();
  v0[1] = xmmword_100044F80;
  v1 = [objc_allocWithZone(UIColor) initWithRed:0.788235294 green:0.631372549 blue:0.984313725 alpha:1.0];
  v2 = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.466666667 blue:0.0196078431 alpha:1.0];
  *&v3 = sub_100022754();
  v67 = v3;
  *&v4 = sub_100022754();
  v54 = v4;

  v0[2] = v67;
  v0[3] = v54;
  v5 = [objc_allocWithZone(UIColor) initWithRed:0.862745098 green:0.823529412 blue:0.949019608 alpha:1.0];
  v6 = [objc_allocWithZone(UIColor) initWithRed:0.22745098 green:0.694117647 blue:0.925490196 alpha:1.0];
  *&v7 = sub_100022754();
  v68 = v7;
  *&v8 = sub_100022754();
  v55 = v8;

  v0[4] = v68;
  v0[5] = v55;
  v9 = [objc_allocWithZone(UIColor) initWithRed:0.270588235 green:0.0274509804 blue:0.705882353 alpha:1.0];
  v10 = [objc_allocWithZone(UIColor) initWithRed:0.803921569 green:0.0196078431 blue:0.274509804 alpha:1.0];
  *&v11 = sub_100022754();
  v69 = v11;
  *&v12 = sub_100022754();
  v56 = v12;

  v0[6] = v69;
  v0[7] = v56;
  v13 = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.11372549 blue:0.0745098039 alpha:1.0];
  v14 = [objc_allocWithZone(UIColor) initWithRed:0.807843137 green:0.239215686 blue:0.882352941 alpha:1.0];
  *&v15 = sub_100022754();
  v70 = v15;
  *&v16 = sub_100022754();
  v57 = v16;

  v0[8] = v70;
  v0[9] = v57;
  v17 = [objc_allocWithZone(UIColor) initWithRed:0.454901961 green:0.6 blue:0.576470588 alpha:1.0];
  v18 = [objc_allocWithZone(UIColor) initWithRed:0.843137255 green:0.941176471 blue:0.031372549 alpha:1.0];
  *&v19 = sub_100022754();
  v71 = v19;
  *&v20 = sub_100022754();
  v58 = v20;

  v0[10] = v71;
  v0[11] = v58;
  v21 = [objc_allocWithZone(UIColor) initWithRed:0.674509804 green:0.807843137 blue:0.882352941 alpha:1.0];
  v22 = [objc_allocWithZone(UIColor) initWithRed:0.949019608 green:0.0588235294 blue:0.0745098039 alpha:1.0];
  *&v23 = sub_100022754();
  v72 = v23;
  *&v24 = sub_100022754();
  v59 = v24;

  v0[12] = v72;
  v0[13] = v59;
  v25 = [objc_allocWithZone(UIColor) initWithRed:0.0352941176 green:0.470588235 blue:1.0 alpha:1.0];
  v26 = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.149019608 blue:0.733333333 alpha:1.0];
  *&v27 = sub_100022754();
  v73 = v27;
  *&v28 = sub_100022754();
  v60 = v28;

  v0[14] = v73;
  v0[15] = v60;
  v29 = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.152941176 blue:0.0235294118 alpha:1.0];
  v30 = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.364705882 blue:0.0352941176 alpha:1.0];
  *&v31 = sub_100022754();
  v74 = v31;
  *&v32 = sub_100022754();
  v61 = v32;

  v0[16] = v74;
  v0[17] = v61;
  v33 = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.0392156863 blue:0.694117647 alpha:1.0];
  v34 = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.0588235294 blue:0.996078431 alpha:1.0];
  *&v35 = sub_100022754();
  v75 = v35;
  *&v36 = sub_100022754();
  v62 = v36;

  v0[18] = v75;
  v0[19] = v62;
  v37 = [objc_allocWithZone(UIColor) initWithRed:0.0274509804 green:0.498039216 blue:0.117647059 alpha:1.0];
  v38 = [objc_allocWithZone(UIColor) initWithRed:0.325490196 green:0.878431373 blue:0.0352941176 alpha:1.0];
  *&v39 = sub_100022754();
  v76 = v39;
  *&v40 = sub_100022754();
  v63 = v40;

  v0[20] = v76;
  v0[21] = v63;
  v41 = [objc_allocWithZone(UIColor) initWithRed:0.258823529 green:0.317647059 blue:0.376470588 alpha:1.0];
  v42 = [objc_allocWithZone(UIColor) initWithRed:0.549019608 green:0.658823529 blue:0.71372549 alpha:1.0];
  *&v43 = sub_100022754();
  v77 = v43;
  *&v44 = sub_100022754();
  v64 = v44;

  v0[22] = v77;
  v0[23] = v64;
  v45 = [objc_allocWithZone(UIColor) initWithRed:0.0235294118 green:0.031372549 blue:0.0431372549 alpha:1.0];
  v46 = [objc_allocWithZone(UIColor) initWithRed:0.0745098039 green:0.0862745098 blue:0.109803922 alpha:1.0];
  *&v47 = sub_100022754();
  v78 = v47;
  *&v48 = sub_100022754();
  v65 = v48;

  v0[24] = v78;
  v0[25] = v65;
  v49 = [objc_allocWithZone(UIColor) initWithRed:0.0666666667 green:0.0470588235 blue:0.0274509804 alpha:1.0];
  v50 = [objc_allocWithZone(UIColor) initWithRed:0.117647059 green:0.0705882353 blue:0.0549019608 alpha:1.0];
  *&v51 = sub_100022754();
  v79 = v51;
  v52.n128_f64[0] = sub_100022754();
  v66 = v52;

  result = v66;
  v0[26] = v79;
  v0[27] = v66;
  qword_100061170 = v0;
  return result;
}

uint64_t sub_100024EB8()
{
  if (qword_10005CD58 != -1)
  {
    result = swift_once();
  }

  if (*(qword_100061170 + 16))
  {
    v0 = *(qword_100061170 + 48);
    xmmword_100061180 = *(qword_100061170 + 32);
    *algn_100061190 = v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_100024F20(__n128 a1, __n128 a2)
{
  v36 = a1;
  v37 = a2;
  if (qword_10005CD58 != -1)
  {
    swift_once();
  }

  v2 = qword_100061170;
  v3 = *(qword_100061170 + 16);
  v4 = &_swiftEmptyArrayStorage;
  if (v3)
  {
    v44[0] = &_swiftEmptyArrayStorage;
    sub_100022D8C(0, v3, 0);
    v4 = &_swiftEmptyArrayStorage;
    v39 = "riptBackgroundPosterDelegate";
    v5 = (v2 + 48);
    v38 = xmmword_100044360;
    v43 = xmmword_100044400;
    do
    {
      v42 = v3;
      v6 = *v5;
      v40 = *(v5 - 1);
      v41 = v6;
      sub_1000054B8(&unk_10005D9B0, &unk_100044760);
      v7 = swift_allocObject();
      *(v7 + 16) = v38;
      v8 = swift_allocObject();
      *(v8 + 16) = v43;
      *(v8 + 56) = &type metadata for Float;
      *(v8 + 64) = &protocol witness table for Float;
      v9 = v40;
      *(v8 + 32) = v40;
      *(v8 + 96) = &type metadata for Float;
      *(v8 + 104) = &protocol witness table for Float;
      *(v8 + 72) = DWORD1(v9);
      *(v8 + 112) = DWORD2(v9);
      *(v8 + 136) = &type metadata for Float;
      *(v8 + 144) = &protocol witness table for Float;
      *(v8 + 176) = &type metadata for Float;
      *(v8 + 184) = &protocol witness table for Float;
      *(v8 + 152) = HIDWORD(v9);
      v10 = sub_10004181C();
      v12 = v11;
      *(v7 + 56) = &type metadata for String;
      v13 = sub_10000CBA4();
      *(v7 + 64) = v13;
      *(v7 + 32) = v10;
      *(v7 + 40) = v12;
      v14 = swift_allocObject();
      *(v14 + 16) = v43;
      *(v14 + 56) = &type metadata for Float;
      *(v14 + 64) = &protocol witness table for Float;
      v15 = v41;
      *(v14 + 32) = v41;
      *(v14 + 96) = &type metadata for Float;
      *(v14 + 104) = &protocol witness table for Float;
      *(v14 + 72) = DWORD1(v15);
      *(v14 + 112) = DWORD2(v15);
      *(v14 + 136) = &type metadata for Float;
      *(v14 + 144) = &protocol witness table for Float;
      *(v14 + 176) = &type metadata for Float;
      *(v14 + 184) = &protocol witness table for Float;
      *(v14 + 152) = HIDWORD(v15);
      v16 = sub_10004181C();
      *(v7 + 96) = &type metadata for String;
      *(v7 + 104) = v13;
      *(v7 + 72) = v16;
      *(v7 + 80) = v17;
      v18 = sub_10004181C();
      v44[0] = v4;
      v21 = v4[2];
      v20 = v4[3];
      if (v21 >= v20 >> 1)
      {
        v23 = v18;
        v24 = v19;
        sub_100022D8C((v20 > 1), v21 + 1, 1);
        v19 = v24;
        v18 = v23;
        v4 = v44[0];
      }

      v4[2] = v21 + 1;
      v22 = &v4[2 * v21];
      *(v22 + 4) = v18;
      *(v22 + 5) = v19;
      v5 += 2;
      v3 = v42 - 1;
    }

    while (v42 != 1);
  }

  sub_1000054B8(&unk_10005D9B0, &unk_100044760);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_100044360;
  v26 = sub_1000229F4(v36);
  v28 = v27;
  *(v25 + 56) = &type metadata for String;
  v29 = sub_10000CBA4();
  *(v25 + 64) = v29;
  *(v25 + 32) = v26;
  *(v25 + 40) = v28;
  v30 = sub_1000229F4(v37);
  *(v25 + 96) = &type metadata for String;
  *(v25 + 104) = v29;
  *(v25 + 72) = v30;
  *(v25 + 80) = v31;
  v44[0] = sub_10004181C();
  v44[1] = v32;
  __chkstk_darwin(v44[0]);
  v35[2] = v44;
  v33 = sub_100024674(sub_1000257E4, v35, v4);

  return (v33 & 1) == 0;
}

Swift::Int sub_1000252B0(__n128 a1, __n128 a2)
{
  sub_100041F1C();
  sub_1000054B8(&unk_10005D9B0, &unk_100044760);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100044360;
  v3 = sub_1000229F4(a1);
  v5 = v4;
  *(v2 + 56) = &type metadata for String;
  v6 = sub_10000CBA4();
  *(v2 + 64) = v6;
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  v7 = sub_1000229F4(a2);
  *(v2 + 96) = &type metadata for String;
  *(v2 + 104) = v6;
  *(v2 + 72) = v7;
  *(v2 + 80) = v8;
  sub_10004181C();
  sub_1000418BC();

  return sub_100041F3C();
}

uint64_t sub_1000253A8()
{
  v9 = *v0;
  v10 = v0[1];
  sub_1000054B8(&unk_10005D9B0, &unk_100044760);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100044360;
  v2 = sub_1000229F4(v9);
  v4 = v3;
  *(v1 + 56) = &type metadata for String;
  v5 = sub_10000CBA4();
  *(v1 + 64) = v5;
  *(v1 + 32) = v2;
  *(v1 + 40) = v4;
  v6 = sub_1000229F4(v10);
  *(v1 + 96) = &type metadata for String;
  *(v1 + 104) = v5;
  *(v1 + 72) = v6;
  *(v1 + 80) = v7;
  sub_10004181C();
  sub_1000418BC();
}

Swift::Int sub_100025498()
{
  v9 = *v0;
  v10 = v0[1];
  sub_100041F1C();
  sub_1000054B8(&unk_10005D9B0, &unk_100044760);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100044360;
  v2 = sub_1000229F4(v9);
  v4 = v3;
  *(v1 + 56) = &type metadata for String;
  v5 = sub_10000CBA4();
  *(v1 + 64) = v5;
  *(v1 + 32) = v2;
  *(v1 + 40) = v4;
  v6 = sub_1000229F4(v10);
  *(v1 + 96) = &type metadata for String;
  *(v1 + 104) = v5;
  *(v1 + 72) = v6;
  *(v1 + 80) = v7;
  sub_10004181C();
  sub_1000418BC();

  return sub_100041F3C();
}

uint64_t sub_1000255B8(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_100041EEC() & 1;
  }
}

uint64_t sub_100025610(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4)
{
  v4 = vmovn_s32(vceqq_f32(a1, a3)).u32[0];
  if ((v4 & HIWORD(v4) & 1) == 0)
  {
    return 0;
  }

  v5 = 0;
  if (vminv_u16(vmovn_s32(vceqq_f32(vextq_s8(a1, a2, 8uLL), vextq_s8(a3, a4, 8uLL)))))
  {
    v6 = vmovn_s32(vceqq_f32(a2, a4));
    if (v6.i8[4])
    {
      v5 = v6.i8[6];
    }
  }

  return v5 & 1;
}

double sub_10002566C()
{
  sub_10000EF68();
  v0 = sub_100041C8C();

  if (v0[2] == 2)
  {
    v1 = v0[4];
    v2 = v0[5];
    v3 = v0[6];
    v4 = v0[7];

    sub_10004189C();

    sub_1000236C0();
    v11 = v5;

    if (v0[2] >= 2uLL)
    {
      v6 = v0[8];
      v7 = v0[9];
      v8 = v0[10];
      v9 = v0[11];

      sub_10004189C();

      sub_1000236C0();

      return v11;
    }

    __break(1u);
    goto LABEL_7;
  }

  if (qword_10005CD60 != -1)
  {
LABEL_7:
    swift_once();
  }

  return *&xmmword_100061180;
}

uint64_t sub_1000257E4(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_100041EEC() & 1;
  }
}

void sub_10002583C()
{
  if (qword_10005CD58 != -1)
  {
    swift_once();
  }

  v0 = qword_100061170;
  v1 = *(qword_100061170 + 16);
  if (!v1)
  {
    __break(1u);
    goto LABEL_12;
  }

  v2 = sub_1000238AC(0, v1 - 1, 2);
  sub_1000054B8(&qword_10005ECF0, &unk_100045100);
  v3 = swift_allocObject();
  v3[1] = xmmword_100044360;
  v4 = *(v2 + 2);
  if (!v4)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = *(v2 + 4);
  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v5 >= *(v0 + 16))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = (v0 + 32 + 32 * v5);
  v7 = v6[1];
  v3[2] = *v6;
  v3[3] = v7;
  if (v4 == 1)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = *(v2 + 5);

  if ((v8 & 0x8000000000000000) != 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v8 < *(v0 + 16))
  {
    v9 = (v0 + 32 + 32 * v8);
    v10 = v9[1];
    v3[4] = *v9;
    v3[5] = v10;
    return;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_100025960(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004166C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10004164C();
  v10 = sub_100041ACC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Instantiating gradient effect", v11, 2u);
  }

  (*(v5 + 16))(v8, a2, v4);
  v12 = type metadata accessor for GradientEffect(0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = 0;
  (*(v5 + 32))(v15 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension26TranscriptBackgroundEffect_logger, v8, v4);

  return v15;
}

__n128 sub_100025AF4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

unint64_t sub_100025B14()
{
  result = qword_10005ECF8;
  if (!qword_10005ECF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005ECF8);
  }

  return result;
}

uint64_t sub_100025B68@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10004175C();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_10004176C();
  v5 = sub_10004172C();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();

  sub_10004173C();
  sub_1000054B8(&qword_10005ED38, &qword_100045258);
  v8 = *(sub_1000415AC() - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100044360;
  sub_100026260(&qword_10005ED40, &type metadata accessor for PRRenderingConfiguration);

  sub_10004159C();
  sub_100026260(&qword_10005ED48, &type metadata accessor for PREditingConfiguration);

  sub_10004159C();

  *a1 = v11;
  return result;
}

char *sub_100025D98()
{
  v0 = sub_10004166C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10005CD68 != -1)
  {
    swift_once();
  }

  v5 = sub_100007D34(v0, qword_10005ED00);
  (*(v1 + 16))(v4, v5, v0);
  v6 = objc_allocWithZone(type metadata accessor for GradientTranscriptBackgroundPosterController(0));
  return sub_10002B578(v4);
}

uint64_t sub_100025EB4()
{
  v0 = sub_10004166C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10005CD68 != -1)
  {
    swift_once();
  }

  v5 = sub_100007D34(v0, qword_10005ED00);
  v6 = *(v1 + 16);
  v6(v4, v5, v0);
  v7 = type metadata accessor for GradientTranscriptBackgroundPosterDelegate();
  v8 = objc_allocWithZone(v7);
  v6(&v8[OBJC_IVAR____TtC33GradientBackgroundPosterExtension42GradientTranscriptBackgroundPosterDelegate_logger], v4, v0);
  v14.receiver = v8;
  v14.super_class = v7;
  objc_msgSendSuper2(&v14, "init");
  (*(v1 + 8))(v4, v0);
  v9 = sub_1000054B8(&qword_10005ED28, &unk_1000451D0);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v13[1] = sub_10004174C();
  sub_100026618(&qword_10005ED30);
  sub_10004160C();
}

uint64_t sub_1000260C0()
{
  v0 = sub_10004166C();
  sub_100020EF4(v0, qword_10005ED00);
  sub_100007D34(v0, qword_10005ED00);
  return sub_10004165C();
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000261C4();
  sub_100026618(&qword_10005ED20);
  sub_1000415EC();
  return 0;
}

unint64_t sub_1000261C4()
{
  result = qword_10005ED18;
  if (!qword_10005ED18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005ED18);
  }

  return result;
}

uint64_t sub_100026260(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000262A8()
{
  v0 = sub_1000054B8(&qword_10005E218, &qword_100045260);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v19[-v2];
  v4 = sub_10004163C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_10000F51C(1);
  sub_100041BEC();
  v10 = *(v9 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension8Signpost_signpostLog);
  v11 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension8Signpost_signpostID;
  swift_beginAccess();
  (*(v5 + 16))(v8, v9 + v11, v4);
  v12 = v10;
  sub_10004161C();

  (*(v5 + 8))(v8, v4);
  if (qword_10005CD30 != -1)
  {
    swift_once();
  }

  if (qword_10005CD68 != -1)
  {
    swift_once();
  }

  v13 = sub_10004166C();
  v14 = sub_100007D34(v13, qword_10005ED00);
  sub_100011A9C(v14, 0xD000000000000011, 0x8000000100047240);
  if (qword_10005CD78 != -1)
  {
    swift_once();
  }

  v15 = qword_1000611B0;
  v16 = *(v13 - 8);
  (*(v16 + 16))(v3, v14, v13);
  (*(v16 + 56))(v3, 0, 1, v13);
  v17 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension17EffectDataManager_logger;
  swift_beginAccess();
  sub_100014FA4(v3, v15 + v17);
  swift_endAccess();
  return sub_100038BA4();
}

uint64_t sub_100026618(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10000B940(&qword_10005ED28, &unk_1000451D0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_10002666C()
{
  result = sub_10002668C();
  qword_1000611A0 = result;
  return result;
}

id sub_10002668C()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_1000417CC();
  v2 = [v0 initWithSuiteName:v1];

  if (v2)
  {
    sub_1000054B8(&qword_10005ED58, &qword_100045268);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100044400;
    *(inited + 32) = 0x694B726574736F70;
    *(inited + 40) = 0xEF726F7469644574;
    *(inited + 48) = 1;
    *(inited + 72) = &type metadata for Bool;
    *(inited + 80) = 0xD000000000000013;
    *(inited + 88) = 0x8000000100047310;
    *(inited + 96) = 1;
    *(inited + 120) = &type metadata for Bool;
    strcpy((inited + 128), "useVFXSnapshot");
    *(inited + 143) = -18;
    *(inited + 144) = 1;
    *(inited + 168) = &type metadata for Bool;
    *(inited + 176) = 0xD000000000000016;
    *(inited + 184) = 0x80000001000473F0;
    *(inited + 216) = &type metadata for Bool;
    *(inited + 192) = 1;
    sub_100032E74(inited);
    swift_setDeallocating();
    sub_1000054B8(&qword_10005ED60, &unk_100045270);
    swift_arrayDestroy();
    isa = sub_10004177C().super.isa;

    [v2 registerDefaults:isa];

    return v2;
  }

  else
  {
    v6 = [objc_opt_self() standardUserDefaults];

    return v6;
  }
}

id sub_1000270BC(void *a1)
{
  v1 = a1;
  v2 = sub_1000417CC();
  v3 = [v1 BOOLForKey:v2];

  return v3;
}

void sub_100027148(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v4 = sub_1000417CC();
  [v5 setBool:a3 forKey:v4];
}

id sub_100027308(void *a1)
{
  v1 = a1;
  v2 = sub_1000417CC();
  v3 = [v1 integerForKey:v2];

  return v3;
}

void sub_100027390(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v4 = sub_1000417CC();
  [v5 setInteger:a3 forKey:v4];
}

void sub_100027410()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension16LifecycleManager_simulationSpeedManager;
  if (*(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension16LifecycleManager_simulationSpeedManager))
  {

    sub_100009678();

    v3 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension16LifecycleManager_performanceMonitor;
    if (*(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension16LifecycleManager_performanceMonitor))
    {
      v4 = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension16LifecycleManager_performanceMonitor);

      sub_100014310();

      v5 = *(v0 + v2);
      *(v0 + v2) = 0;

      v6 = *(v0 + v3);
      *(v0 + v3) = 0;

      v7 = *(v0 + 24);

      sub_1000097B0(v0 + 32);
      v8 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension16LifecycleManager_logger;
      v9 = sub_10004166C();
      (*(*(v9 - 8) + 8))(v1 + v8, v9);
      v10 = *(v1 + v2);

      v11 = *(v1 + v3);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100027504()
{
  sub_100027410();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LifecycleManager()
{
  result = qword_10005EDB8;
  if (!qword_10005EDB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000275B0()
{
  result = sub_10004166C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_100027674()
{
  if ((*(v0 + 16) & 1) == 0 && (*(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension16LifecycleManager_forceAlwaysRunning) & 1) == 0)
  {
    v1 = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension16LifecycleManager_performanceMonitor);
    if (v1)
    {
      if ((*(v1 + 16) & 1) != 0 || *(v1 + 24) == 3)
      {
        v2 = sub_10004164C();
        v3 = sub_100041A9C();
        if (os_log_type_enabled(v2, v3))
        {
          v4 = swift_slowAlloc();
          *v4 = 0;
          _os_log_impl(&_mh_execute_header, v2, v3, "cannot Resume Running: shouldReduceResourcesUsage", v4, 2u);
        }
      }

      else if (*(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension16LifecycleManager_hostAllowsRunning) == 1)
      {
        v5 = *(v0 + 17) ^ 1;
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100027780(uint64_t a1, unint64_t a2)
{
  sub_100027674();
  if ((v5 & 1) == 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v9 = Strong;
    v17 = *(Strong + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor);
    if (v17)
    {
      v11 = *(v17 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_lock);
      v18 = *(Strong + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor);

      os_unfair_lock_lock(v11);
      v13 = *(v17 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_world);
      v14 = v13;
      v15 = 0;
      goto LABEL_11;
    }

    goto LABEL_16;
  }

  v6 = *(v2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension16LifecycleManager_simulationSpeedManager);
  if (!v6)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = v6 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension22SimulationSpeedManager_lastSimulationSpeed;
  if (*(v7 + 4))
  {
    return;
  }

  if (*v7 <= 0.0)
  {
    return;
  }

  v8 = swift_unknownObjectWeakLoadStrong();
  if (!v8)
  {
    return;
  }

  v9 = v8;
  v10 = *(v8 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor);
  if (!v10)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v11 = *(v10 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_lock);
  v12 = *(v8 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor);

  os_unfair_lock_lock(v11);
  v13 = *(v10 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_world);
  v14 = v13;
  v15 = 1;
LABEL_11:
  sub_10003FC50(v13, v15, v9, a1, a2);

  os_unfair_lock_unlock(v11);
  swift_unknownObjectRelease();
}

uint64_t sub_1000278F8()
{
  if ((*(v0 + 16) & 1) == 0 && (*(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension16LifecycleManager_forceAlwaysRunning) & 1) == 0)
  {
    v1 = sub_10004164C();
    v2 = sub_100041A9C();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v1, v2, "Set State to idle", v3, 2u);
    }

    sub_100027B3C();
  }

  sub_100027674();
  v5 = v4;
  result = swift_unknownObjectWeakLoadStrong();
  v7 = result;
  if (v5)
  {
    if (!result)
    {
      return result;
    }

    v8 = *(result + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor);
    if (v8)
    {
      v9 = *(v8 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_lock);
      v10 = *(result + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor);

      os_unfair_lock_lock(v9);
      v11 = *(v8 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_world);
      sub_10003FC50(v11, 1, v7, 0x6C616974696E69, 0xE700000000000000);

      os_unfair_lock_unlock(v9);
      swift_unknownObjectRelease();
    }

    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (result)
  {
    v12 = *(result + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor);
    if (!v12)
    {
      goto LABEL_20;
    }

    v13 = *(v12 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_lock);
    v14 = *(result + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor);

    os_unfair_lock_lock(v13);
    v15 = *(v12 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_world);
    sub_10003FC50(v15, 0, v7, 0x206C616974696E69, 0xEE00636974617473);

    os_unfair_lock_unlock(v13);
    swift_unknownObjectRelease();
  }

  return sub_100027CD8();
}

uint64_t sub_100027B3C()
{
  v1 = v0;
  v2 = sub_10004164C();
  v3 = sub_100041A9C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Set Idle State", v4, 2u);
  }

  v5 = *(v1 + 24);
  v6 = *(v5 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_lock);

  os_unfair_lock_lock(v6);
  v7 = *(v5 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_world);
  v8 = [v7 rootNode];
  v9 = sub_1000417CC();
  v10 = [v8 childNodeWithName:v9 recursively:1];

  if (v10)
  {
    v11 = sub_1000417CC();
    [v10 setStateNamed:v11];
  }

  os_unfair_lock_unlock(v6);
}

uint64_t sub_100027CD8()
{
  v1 = v0;
  v2 = sub_10004164C();
  v3 = sub_100041A9C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Set Render Static", v4, 2u);
  }

  v5 = *(v1 + 24);
  v6 = *(v5 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_lock);

  os_unfair_lock_lock(v6);
  v7 = *(v5 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_world);
  sub_100027DD0(v7);

  os_unfair_lock_unlock(v6);
}

void sub_100027DD0(void *a1)
{
  v1 = [a1 rootNode];
  v2 = sub_1000417CC();
  v3 = [v1 childNodeWithName:v2 recursively:1];

  if (v3)
  {
    v4 = [v3 parameters];

    if (v4)
    {
      isa = sub_1000419DC().super.super.isa;
      v6 = sub_1000417CC();
      [v4 setObject:isa forKeyedSubscript:v6];
      swift_unknownObjectRelease();
    }
  }
}

void *sub_100027F04(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_100041CBC();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v5 = sub_1000335B8(v3, *(a1 + 36), 0, a1);
  v6 = v5;
  return v5;
}

uint64_t sub_100027F74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_10002DE5C(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    v12 = sub_10002C494(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_10002E678();
        v16 = v19;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      result = sub_10002DB30(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_10002806C(float32x4_t a1, float32x4_t a2)
{
  if (qword_10005CD20 != -1)
  {
    swift_once();
  }

  v2 = qword_100061088;
  v11._countAndFlagsBits = 0xE000000000000000;
  v15._countAndFlagsBits = 0x4D4F54535543;
  v15._object = 0xE600000000000000;
  v16.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v16.value._object = 0xEB00000000656C62;
  v3.super.isa = qword_100061088;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v4 = sub_1000413CC(v15, v16, v3, v18, v11);
  if (qword_10005CD58 != -1)
  {
    swift_once();
  }

  v5 = sub_10002C2B8(qword_100061170, a1, a2);
  if (v6)
  {
    return v4;
  }

  v8 = v5;

  if (__OFADD__(v8, 1))
  {
    __break(1u);
    JUMPOUT(0x100028380);
  }

  switch(v8)
  {
    case 0:
      v12._countAndFlagsBits = 0xE000000000000000;
      v9._countAndFlagsBits = 0x4F474E414DLL;
      v9._object = 0xE500000000000000;
      goto LABEL_23;
    case 1:
      v12._countAndFlagsBits = 0xE000000000000000;
      v9._countAndFlagsBits = 4539209;
      v9._object = 0xE300000000000000;
      goto LABEL_23;
    case 2:
      v12._countAndFlagsBits = 0xE000000000000000;
      v9._countAndFlagsBits = 1297435728;
      v9._object = 0xE400000000000000;
      goto LABEL_23;
    case 3:
      v12._countAndFlagsBits = 0xE000000000000000;
      v9._countAndFlagsBits = 0x4145535F50454544;
      v9._object = 0xE800000000000000;
      goto LABEL_23;
    case 4:
      v12._countAndFlagsBits = 0xE000000000000000;
      v9._countAndFlagsBits = 0x50415F4E45455247;
      v9._object = 0xEB00000000454C50;
      goto LABEL_23;
    case 5:
      v12._countAndFlagsBits = 0xE000000000000000;
      v9._countAndFlagsBits = 0x595252454843;
      goto LABEL_22;
    case 6:
      v12._countAndFlagsBits = 0xE000000000000000;
      v9._countAndFlagsBits = 0x5547454C42425542;
      v9._object = 0xE90000000000004DLL;
      goto LABEL_23;
    case 7:
      v12._countAndFlagsBits = 0xE000000000000000;
      v9._countAndFlagsBits = 0x4E495245474E4154;
      v9._object = 0xE900000000000045;
      goto LABEL_23;
    case 8:
      v12._countAndFlagsBits = 0xE000000000000000;
      v9._countAndFlagsBits = 0x41544E4547414DLL;
      v9._object = 0xE700000000000000;
      goto LABEL_23;
    case 9:
      v12._countAndFlagsBits = 0xE000000000000000;
      v9._countAndFlagsBits = 1162692940;
      v9._object = 0xE400000000000000;
      goto LABEL_23;
    case 10:
      v12._countAndFlagsBits = 0xE000000000000000;
      v9._countAndFlagsBits = 0x5245564C4953;
      goto LABEL_22;
    case 11:
      v12._countAndFlagsBits = 0xE000000000000000;
      v9._countAndFlagsBits = 0x4E4F42524143;
      goto LABEL_22;
    case 12:
      v12._countAndFlagsBits = 0xE000000000000000;
      v9._countAndFlagsBits = 0x454E4F5453;
      v9._object = 0xE500000000000000;
      goto LABEL_23;
    default:
      v12._countAndFlagsBits = 0xE000000000000000;
      v9._countAndFlagsBits = 0x4D4F54535543;
LABEL_22:
      v9._object = 0xE600000000000000;
LABEL_23:
      v17.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v17.value._object = 0xEB00000000656C62;
      v10.super.isa = v2;
      v19._countAndFlagsBits = 0;
      v19._object = 0xE000000000000000;
      result = sub_1000413CC(v9, v17, v10, v19, v12);
      break;
  }

  return result;
}

void sub_1000283DC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v2();
}

uint64_t sub_100028428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000054B8(&qword_10005D9A0, &qword_100044440);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100037A80(a3, v27 - v11, &qword_10005D9A0, &qword_100044440);
  v13 = sub_100041A0C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100015014(v12, &qword_10005D9A0, &qword_100044440);
  }

  else
  {
    sub_1000419FC();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1000419EC();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_10004188C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_100015014(a3, &qword_10005D9A0, &qword_100044440);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100015014(a3, &qword_10005D9A0, &qword_100044440);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_100028728(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_100028B18(void *a1)
{
  v2 = v1;
  v3 = [objc_msgSend(a1 "environment")];
  swift_unknownObjectRelease();
  v31[0] = 0;
  v4 = [v3 loadUserInfoWithError:v31];
  swift_unknownObjectRelease();
  v5 = v31[0];
  if (v4)
  {
    v6 = sub_10004178C();
    v7 = v5;

    sub_100041CFC();
    if (*(v6 + 16) && (v8 = sub_10002C594(v31), (v9 & 1) != 0))
    {
      sub_10000B78C(*(v6 + 56) + 32 * v8, v32);
      sub_10000BAB0(v31);

      if (swift_dynamicCast())
      {
        v10 = 0x6D6F74737563;

        v11 = sub_10004164C();
        v12 = sub_100041ACC();

        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          v31[0] = v14;
          *v13 = 136315138;
          *(v13 + 4) = sub_10000B1E4(0x6D6F74737563, 0xE600000000000000, v31);
          v15 = "initialLookIdentifier custom variant: %s";
LABEL_11:
          _os_log_impl(&_mh_execute_header, v11, v12, v15, v13, 0xCu);
          sub_100005500(v14);

          goto LABEL_12;
        }

        goto LABEL_12;
      }
    }

    else
    {

      sub_10000BAB0(v31);
    }
  }

  else
  {
    v16 = v31[0];
    sub_1000413EC();

    swift_willThrow();
  }

  v17 = (*(v2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_viewsManager) + OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_currentEffect);
  swift_beginAccess();
  v18 = sub_10000BA6C(v17, v17[3]);
  v29 = *v18;
  v30 = v18[1];
  sub_1000054B8(&unk_10005D9B0, &unk_100044760);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100044360;
  v20 = sub_1000229F4(v29);
  v22 = v21;
  *(v19 + 56) = &type metadata for String;
  v23 = sub_10000CBA4();
  *(v19 + 64) = v23;
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  v24 = sub_1000229F4(v30);
  *(v19 + 96) = &type metadata for String;
  *(v19 + 104) = v23;
  *(v19 + 72) = v24;
  *(v19 + 80) = v25;
  v10 = sub_10004181C();
  v27 = v26;

  v11 = sub_10004164C();
  v12 = sub_100041ACC();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v32[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_10000B1E4(v10, v27, v32);
    v15 = "initialLookIdentifier currentEffect: %s";
    goto LABEL_11;
  }

LABEL_12:

  return v10;
}

void sub_1000290E8(void *a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = [a1 CGContext];
  v11 = [a2 CGColor];
  CGContextSetFillColorWithColor(v10, v11);

  v12 = [a1 CGContext];
  CGContextSetLineWidth(v12, a3);

  v13 = [a1 CGContext];
  v14 = [objc_opt_self() systemBackgroundColor];
  v15 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:1];
  v16 = [v14 resolvedColorWithTraitCollection:v15];

  v17 = [v16 CGColor];
  CGContextSetStrokeColorWithColor(v13, v17);

  v18 = [a1 CGContext];
  v21.origin.x = a3;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  CGContextAddEllipseInRect(v18, v21);

  v19 = [a1 CGContext];
  CGContextDrawPath(v19, kCGPathFillStroke);
}

void sub_1000292D4(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_viewsManager);
  if (a1)
  {
    v4 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_currentEffect;
    swift_beginAccess();
    sub_10000BA08(v3 + v4, v21);
    sub_1000054B8(&qword_10005F2C8, &qword_100045468);
    if (swift_dynamicCast())
    {
      v5 = v22;
LABEL_6:
      v7 = sub_100022854(kCGColorSpaceExtendedLinearSRGB, v5);
      goto LABEL_8;
    }
  }

  else
  {
    v6 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_currentEffect;
    swift_beginAccess();
    sub_10000BA08(v3 + v6, v21);
    sub_1000054B8(&qword_10005F2C8, &qword_100045468);
    if (swift_dynamicCast())
    {
      v5 = v23;
      goto LABEL_6;
    }
  }

  v7 = [objc_opt_self() clearColor];
LABEL_8:
  v8 = v7;
  v9 = [objc_allocWithZone(PREditorColorPickerConfiguration) init];
  v10 = [objc_allocWithZone(PRPosterColor) initWithColor:v8];
  [v9 setSelectedColor:v10];

  v11 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_editor;
  v12 = *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_editor);
  if (v12)
  {
    v13 = v12;
    v14 = sub_1000417CC();

    v15 = [v13 viewForMenuElementIdentifier:v14];
  }

  else
  {
    v15 = 0;
  }

  [v9 setColorPickerSourceItem:v15];
  swift_unknownObjectRelease();
  v16 = *(v1 + v11);
  if (v16)
  {
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    *(v18 + 24) = a1 & 1;
    v21[4] = sub_1000379B4;
    v21[5] = v18;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 1107296256;
    v21[2] = sub_10000F91C;
    v21[3] = &unk_100056870;
    v19 = _Block_copy(v21);
    v20 = v16;

    [v20 presentColorPickerWithConfiguration:v9 changeHandler:v19];

    _Block_release(v19);
    v8 = v20;
  }

  else
  {
  }
}

void sub_100029658(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1000292D4(a3 & 1);
  }
}

Class sub_1000296CC(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v6 = a3;
  v7 = a1;
  v8 = a4();

  if (v8)
  {
    sub_10000BB04(0, &qword_10005F308, UIMenuElement_ptr);
    v9.super.isa = sub_10004197C().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  return v9.super.isa;
}

void sub_10002976C(void *a1, uint64_t a2, char a3)
{
  v4 = convert(a1);
  v5 = sub_100022AB4();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_100029800(v5, a3 & 1);

    v5 = v7;
  }
}

void sub_100029800(void *a1, char a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_viewsManager);
  v7 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_currentEffect;
  swift_beginAccess();
  sub_10000BA08(v6 + v7, &v59);
  sub_1000054B8(&qword_10005F2C8, &qword_100045468);
  if (swift_dynamicCast())
  {
    v8 = sub_100022854(kCGColorSpaceExtendedLinearSRGB, v57);
  }

  else
  {
    v8 = [objc_opt_self() clearColor];
  }

  v9 = v8;
  sub_10000BA08(v6 + v7, &v59);
  if (swift_dynamicCast())
  {
    v10 = sub_100022854(kCGColorSpaceExtendedLinearSRGB, v58);
  }

  else
  {
    v10 = [objc_opt_self() clearColor];
  }

  v11 = v10;
  v12 = [a1 colorWithAlphaComponent:1.0];
  if (a2)
  {
    v13.n128_f64[0] = sub_100022754();
    v14 = sub_1000229F4(v13);
    v16 = v15;
    v17.n128_f64[0] = sub_100022754();
    if (v14 == sub_1000229F4(v17) && v16 == v18)
    {

LABEL_14:

      return;
    }

    v25 = sub_100041EEC();

    if (v25)
    {

      return;
    }

    v9 = v12;
  }

  else
  {
    v19.n128_f64[0] = sub_100022754();
    v20 = sub_1000229F4(v19);
    v22 = v21;
    v23.n128_f64[0] = sub_100022754();
    if (v20 == sub_1000229F4(v23) && v22 == v24)
    {

      goto LABEL_14;
    }

    v26 = sub_100041EEC();

    if (v26)
    {

      return;
    }

    v11 = v12;
  }

  sub_10000BA08(v6 + v7, &v59);
  v54 = v12;
  if (swift_dynamicCast())
  {
    v27 = sub_100024F20(v57, v58);
    v28 = v9;
    v29 = v11;
    v30.n128_f64[0] = sub_100022754();
    v56 = v30;
    v31.n128_f64[0] = sub_100022754();
    v55 = v31;

    v53 = v29;
    sub_1000054B8(&unk_10005D9B0, &unk_100044760);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_100044360;
    v33 = sub_1000229F4(v56);
    v35 = v34;
    *(v32 + 56) = &type metadata for String;
    v36 = sub_10000CBA4();
    *(v32 + 64) = v36;
    *(v32 + 32) = v33;
    *(v32 + 40) = v35;
    v37 = sub_1000229F4(v55);
    *(v32 + 96) = &type metadata for String;
    *(v32 + 104) = v36;
    *(v32 + 72) = v37;
    *(v32 + 80) = v38;
    v39 = sub_10004181C();
    v41 = v39;
    v42 = v40;
    if (v27)
    {
      sub_10000BED0(v39, v40);
    }

    v60 = &type metadata for GradientTranscriptBackground;
    v61 = &off_100056488;
    v43 = swift_allocObject();
    *&v59 = v43;
    *(v43 + 16) = v56;
    *(v43 + 32) = v55;
    swift_beginAccess();
    sub_100005500((v6 + v7));
    sub_10000B9F0(&v59, v6 + v7);
    swift_endAccess();
    if (qword_10005CD70 != -1)
    {
      swift_once();
    }

    v44 = qword_1000611A0;
    v45 = sub_1000417CC();
    [v44 setCustomVariant:v45];

    v46 = sub_10004164C();
    v47 = sub_100041ACC();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *&v59 = v49;
      *v48 = 136315138;
      v50 = sub_10000B1E4(v41, v42, &v59);

      *(v48 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v46, v47, "looks saving customVariant: %s", v48, 0xCu);
      sub_100005500(v49);
    }

    else
    {
    }

    v51 = *(v3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_editor);
    if (v27)
    {
      [v51 updateActions];
      sub_100031820(v6, v56, v55, 1.0);
    }

    else
    {
      v52 = v51;
      [v52 updateLooksWithoutBuilding];
    }
  }

  else
  {
    sub_100041DCC();
    __break(1u);
  }
}

Class sub_100029ED8(void *a1, uint64_t a2, void *a3, void (*a4)(void), unint64_t *a5, uint64_t *a6)
{
  v10 = a3;
  v11 = a1;
  a4();

  sub_10000BB04(0, a5, a6);
  v12.super.isa = sub_10004197C().super.isa;

  return v12.super.isa;
}

uint64_t sub_100029F74(void *a1, void *a2)
{
  swift_unknownObjectRetain_n();
  v5 = v2;
  v6 = sub_10004164C();
  v7 = sub_100041ACC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *&aBlock = v9;
    *v8 = 134218754;
    v10 = *&v5[OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_tagID];

    *(v8 + 4) = v10;
    *(v8 + 12) = 2080;
    v66[0] = a2;
    swift_unknownObjectRetain();
    sub_1000054B8(&qword_10005F250, &qword_100045450);
    v11 = sub_10004186C();
    v13 = sub_10000B1E4(v11, v12, &aBlock);

    *(v8 + 14) = v13;
    *(v8 + 22) = 1024;
    LODWORD(v10) = [a2 isPreview];
    swift_unknownObjectRelease();
    *(v8 + 24) = v10;
    swift_unknownObjectRelease();
    *(v8 + 28) = 1024;
    LODWORD(v10) = [a2 isSnapshot];
    swift_unknownObjectRelease();
    *(v8 + 30) = v10;
    swift_unknownObjectRelease();
    _os_log_impl(&_mh_execute_header, v6, v7, "#%ld didInitialize env:%s isPreview: %{BOOL}d isSnapshot: %{BOOL}d", v8, 0x22u);
    sub_100005500(v9);
  }

  else
  {

    swift_unknownObjectRelease_n();
  }

  v14 = *&v5[OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_renderer];
  *&v5[OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_renderer] = a1;
  v15 = a1;

  v16 = [a2 isPreview];
  v5[OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_isPreview] = v16;
  v17 = [a2 isSnapshot];
  v5[OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_isSnapshotMode] = v17;
  v18 = [v15 backgroundView];
  v19 = *&v5[OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_viewsManager];
  sub_10000BB8C([a2 deviceOrientation], 0.0);
  v20 = [a2 contents];
  *&aBlock = 0;
  v21 = [v20 loadUserInfoWithError:&aBlock];
  swift_unknownObjectRelease();
  v22 = aBlock;
  if (v21)
  {
    v58 = v18;
    v23 = sub_10004178C();
    v24 = v22;

    v25 = v5;

    v26 = sub_10004164C();
    v27 = sub_100041ACC();

    if (os_log_type_enabled(v26, v27))
    {
      v56 = v15;
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *&aBlock = v29;
      *v28 = 134218242;
      *(v28 + 4) = *&v25[OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_tagID];

      *(v28 + 12) = 2080;
      v30 = sub_10004179C();
      v32 = sub_10000B1E4(v30, v31, &aBlock);

      *(v28 + 14) = v32;
      _os_log_impl(&_mh_execute_header, v26, v27, "#%ld didInitialize userInfo: %s", v28, 0x16u);
      sub_100005500(v29);

      v15 = v56;
    }

    else
    {
    }

    v59[0] = 0x6D6F74737563;
    v59[1] = 0xE600000000000000;
    sub_100041CFC();
    v18 = v58;
    if (*(v23 + 16) && (v34 = sub_10002C594(&aBlock), (v35 & 1) != 0))
    {
      sub_10000B78C(*(v23 + 56) + 32 * v34, v66);
      sub_10000BAB0(&aBlock);

      if (swift_dynamicCast())
      {
        *&v36 = sub_10002566C();
        v55 = v37;
        v57 = v36;
        v63 = &type metadata for GradientTranscriptBackground;
        v64 = &off_100056488;
        v38 = swift_allocObject();
        *&aBlock = v38;
        *(v38 + 16) = v57;
        *(v38 + 32) = v55;
        v39 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_currentEffect;
        swift_beginAccess();
        sub_100005500((v19 + v39));
        sub_10000B9F0(&aBlock, v19 + v39);
        swift_endAccess();
      }
    }

    else
    {

      sub_10000BAB0(&aBlock);
    }
  }

  else
  {
    v33 = aBlock;
    sub_1000413EC();

    swift_willThrow();
  }

  v40 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_currentEffect;
  swift_beginAccess();
  sub_10000BA08(v19 + v40, v66);
  sub_10000BA08(v66, &aBlock);
  v41 = v5;
  v42 = sub_10004164C();
  v43 = sub_100041ACC();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v60 = v45;
    *v44 = 134218242;
    *(v44 + 4) = *&v41[OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_tagID];

    *(v44 + 12) = 2080;
    sub_10000BA08(&aBlock, v59);
    sub_1000054B8(&qword_10005F2C8, &qword_100045468);
    v46 = sub_10004186C();
    v48 = v47;
    sub_100005500(&aBlock);
    v49 = sub_10000B1E4(v46, v48, &v60);

    *(v44 + 14) = v49;
    _os_log_impl(&_mh_execute_header, v42, v43, "#%ld didInitialize currentEffect: %s", v44, 0x16u);
    sub_100005500(v45);
  }

  else
  {

    sub_100005500(&aBlock);
  }

  v50 = sub_10000BA6C(v66, v66[3]);
  sub_100032448(v18, v19, *v50, v50[1]);
  v51 = swift_allocObject();
  *(v51 + 16) = 1;
  v52 = swift_allocObject();
  *(v52 + 16) = sub_1000371D4;
  *(v52 + 24) = v51;
  v64 = sub_1000371DC;
  v65 = v52;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v62 = sub_10002C42C;
  v63 = &unk_1000566B8;
  v53 = _Block_copy(&aBlock);

  [v15 updatePreferences:v53];

  _Block_release(v53);
  LOBYTE(v53) = swift_isEscapingClosureAtFileLocation();

  if (v53)
  {
    __break(1u);
  }

  return sub_100005500(v66);
}

void sub_10002AB6C(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = *&v3[OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_viewsManager];
  swift_getObjectType();
  v9 = [a2 deviceOrientation];
  v10 = 0.0;
  if (a3)
  {
    v11 = [a3 animationSettings];
    if (v11)
    {
      v12 = v11;
      [v11 duration];
      v10 = v13;
    }
  }

  sub_10000BB8C(v9, v10);
  if ([a2 isSnapshot])
  {
    v14 = sub_10002BA08();
    if (v14)
    {
      v15 = v14;
      if (*(v14 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_isSnapshotting))
      {
      }

      else
      {
        v56 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_isSnapshotting;
        v16 = a3;
        swift_unknownObjectRetain_n();
        v57 = v4;
        v17 = a1;
        v18 = sub_10004164C();
        v19 = sub_100041ACC();
        v54 = v16;

        v55 = v19;
        if (os_log_type_enabled(v18, v19))
        {
          v59 = v17;
          v20 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          *&v61[0] = swift_slowAlloc();
          *v20 = 134219266;
          v21 = *&v57[OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_tagID];

          *(v20 + 4) = v21;
          *(v20 + 12) = 2112;
          *(v20 + 14) = v59;
          *v53 = v59;
          *(v20 + 22) = 2080;
          swift_unknownObjectRetain();
          v22 = v59;
          sub_1000054B8(&qword_10005F250, &qword_100045450);
          v23 = sub_10004186C();
          v25 = sub_10000B1E4(v23, v24, v61);

          *(v20 + 24) = v25;
          *(v20 + 32) = 2080;
          v26 = v54;
          sub_1000054B8(&qword_10005F258, &unk_100045458);
          v27 = sub_10004186C();
          v29 = sub_10000B1E4(v27, v28, v61);

          *(v20 + 34) = v29;
          *(v20 + 42) = 1024;
          v30 = [a2 isPreview];
          swift_unknownObjectRelease();
          *(v20 + 44) = v30;
          swift_unknownObjectRelease();
          *(v20 + 48) = 1024;
          v31 = [a2 isSnapshot];
          swift_unknownObjectRelease();
          *(v20 + 50) = v31;
          swift_unknownObjectRelease();
          _os_log_impl(&_mh_execute_header, v18, v55, "#%ld %@ didUpdate env:%s transition: %s isPreview: %{BOOL}d isSnapshot: %{BOOL}d", v20, 0x36u);
          sub_100015014(v53, &qword_10005E240, &qword_100043C90);

          swift_arrayDestroy();

          v17 = v59;

          v32 = v57;
        }

        else
        {

          v32 = v57;
          swift_unknownObjectRelease_n();
        }

        v33 = swift_allocObject();
        v33[2].isa = v15;
        v34 = v15;
        sub_10003C054(sub_100037128, v33);

        v35 = *(v34 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_snapshotWriter);

        LOBYTE(v33) = sub_100015870();

        if ((v33 & 1) != 0 && (*(v15 + v56) & 1) == 0)
        {
          *(v15 + v56) = 1;
          sub_10003EAB0();
        }

        v36 = v32;
        v37 = sub_10004164C();
        v38 = sub_100041ACC();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          *v39 = 134217984;
          *(v39 + 4) = *(v36 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_tagID);

          _os_log_impl(&_mh_execute_header, v37, v38, "#%ld taking assertion snapshot", v39, 0xCu);
        }

        else
        {

          v37 = v36;
        }

        v40 = sub_1000417CC();
        v41 = [v17 extendRenderingSessionForReason:v40];

        v42 = *(v34 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_snapshotPerformed);
        if (v42)
        {
          v43 = *(v34 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_snapshotPerformed + 8);

          v42(v44);
          sub_100016A34(v42);
        }

        v45 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v46 = swift_allocObject();
        *(v46 + 16) = v41;
        *(v46 + 24) = v45;
        v47 = v41;

        sub_10003EC98(sub_1000371BC, v46);
      }
    }
  }

  type metadata accessor for TranscriptBackgroundView(0);
  sub_100008D48(a2, v61);
  if ((v62 & 1) == 0)
  {
    v58 = v61[1];
    v60 = v61[0];
    v48 = sub_10002BA08();
    if (v48)
    {
      v49 = v48;
      if ([*&v48[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_vfxView] rendersContinuously] && (v50 = *&v49[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor]) != 0)
      {
        swift_unknownObjectWeakInit();
        v51 = *(v50 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_lock);

        os_unfair_lock_lock(v51);
        v52 = *(v50 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_world);
        sub_100008954(v52, v60, v58);

        os_unfair_lock_unlock(v51);

        swift_unknownObjectWeakDestroy();
      }

      else
      {
      }
    }
  }
}