uint64_t sub_100019B4C()
{
  v0 = sub_1000261F0();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_1000269E0();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1000269D0();
  sub_1000261E0();
  v26 = sub_100026A30();
  swift_beginAccess();
  sub_100026370();
  swift_endAccess();
  v4 = sub_100026A60();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {

    sub_1000269D0();
    sub_1000261E0();
    v4 = sub_100026A30();
    v6 = v8;
  }

  sub_100003598(&qword_100041F68, &qword_100029CE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100028E90;
  *(inited + 32) = NSForegroundColorAttributeName;
  v10 = objc_opt_self();
  v11 = NSForegroundColorAttributeName;
  v12 = [v10 systemBackgroundColor];
  v13 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:1];
  v14 = [v12 resolvedColorWithTraitCollection:v13];

  v15 = sub_10000B82C(0, &qword_100041F70, UIColor_ptr);
  *(inited + 40) = v14;
  *(inited + 64) = v15;
  *(inited + 72) = NSFontAttributeName;
  v16 = NSFontAttributeName;
  result = sub_100020A34();
  if (result)
  {
    v18 = [*(result + OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_monogramFont) fontWithSize:24.0];
    *(inited + 104) = sub_10000B82C(0, &qword_100041F78, UIFont_ptr);
    *(inited + 80) = v18;
    v19 = sub_100021378(inited);
    swift_setDeallocating();
    sub_100003598(&qword_100041F80, &qword_100029CE8);
    swift_arrayDestroy();
    v20 = sub_10001BC20(v19, 0, 0, 1, v4, v6);

    sub_10000B82C(0, &qword_100041F88, UIAction_ptr);
    v21 = v20;

    sub_1000269F0();
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    *(v23 + 24) = v27;

    v24 = sub_100026C20();
    v25 = sub_1000269F0();

    [v24 setAccessibilityLabel:v25];

    return v24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10001A164(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v23 = a1;
  v5 = sub_100026390();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v22 - v11;

  v13 = sub_100026680();
  v14 = sub_100026B90();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v24 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_100025380(v23, a2, &v24);
    _os_log_impl(&_mh_execute_header, v13, v14, "Did change monogram text to: %s", v15, 0xCu);
    sub_10000B7E0(v16);
  }

  v17 = OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor_configuration;
  swift_beginAccess();
  v18 = *(v6 + 16);
  v18(v12, v3 + v17, v5);

  sub_100026380();
  v18(v10, v3 + v17, v5);
  swift_beginAccess();
  (*(v6 + 24))(v3 + v17, v12, v5);
  swift_endAccess();
  sub_10001A438();
  v19 = *(v6 + 8);
  v19(v10, v5);
  v19(v12, v5);
  result = sub_100020A34();
  if (result)
  {
    v21 = result;
    sub_1000097A4();

    result = *(v3 + OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor_editor);
    if (result)
    {
      return [result updateActions];
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10001A438()
{
  v0 = sub_100003598(&unk_1000422E0, &unk_10002A0F0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v60 - v2;
  v4 = sub_100026680();
  v5 = sub_100026B90();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Configuration changed, updating views", v6, 2u);
  }

  sub_100020A90();
  if (v7)
  {
    v8 = v7;
    swift_beginAccess();
    v9 = v8;
    sub_100026300();
    swift_endAccess();
    v10 = OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_customGradientDefinition;
    swift_beginAccess();
    sub_10002167C(v3, v9 + v10);
    swift_endAccess();

    v11 = sub_100026330();
    swift_beginAccess();
    v12 = sub_100026330();
    swift_endAccess();
    LOBYTE(v9) = sub_10001FBA4(v11, v12);

    if ((v9 & 1) == 0)
    {
      v13 = sub_100026680();
      v14 = sub_100026B90();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v13, v14, "Background color changed, updating background view", v15, 2u);
      }

      sub_100020A90();
      if (!v16)
      {
        goto LABEL_26;
      }

      v17 = v16;
      sub_10000B82C(0, &qword_100041F70, UIColor_ptr);
      swift_beginAccess();
      v18 = v17;
      v19 = sub_100026330();
      swift_endAccess();
      v20._rawValue = v19;
      v21.super.isa = sub_100026BF0(v20).super.isa;
      v22 = *&v18[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_backgroundColor];
      *&v18[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_backgroundColor] = v21;
    }

    v23 = sub_100026350();
    swift_beginAccess();
    v24 = sub_100026350();
    swift_endAccess();
    v25 = sub_10001FBA4(v23, v24);

    if ((v25 & 1) == 0)
    {
      v26 = sub_100026680();
      v27 = sub_100026B90();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "Top background color changed, updating background view", v28, 2u);
      }

      sub_100020A90();
      if (!v29)
      {
        goto LABEL_27;
      }

      v30 = v29;
      sub_10000B82C(0, &qword_100041F70, UIColor_ptr);
      swift_beginAccess();
      v31 = v30;
      v32 = sub_100026350();
      swift_endAccess();
      v33._rawValue = v32;
      v34.super.isa = sub_100026BF0(v33).super.isa;
      v35 = *&v31[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_topBackgroundColor];
      *&v31[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_topBackgroundColor] = v34;
    }

    v36 = sub_100026370();
    v38 = v37;
    swift_beginAccess();
    v39 = sub_100026370();
    v41 = v40;
    swift_endAccess();
    if (v36 == v39 && v38 == v41)
    {
    }

    else
    {
      v42 = sub_100026D60();

      if ((v42 & 1) == 0)
      {
        v43 = sub_100026680();
        v44 = sub_100026B90();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          *v45 = 0;
          _os_log_impl(&_mh_execute_header, v43, v44, "Initials changed, updating monogram string", v45, 2u);
        }

        v46 = sub_100020A34();
        if (!v46)
        {
          goto LABEL_28;
        }

        v47 = v46;
        swift_beginAccess();
        v48 = v47;
        v49 = sub_100026370();
        v51 = v50;
        swift_endAccess();
        v52 = &v48[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_monogramString];
        v53 = *&v48[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_monogramString + 8];
        *v52 = v49;
        v52[1] = v51;

        v54 = *&v48[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_hiddenLabel];

        v55 = sub_1000269F0();

        [v54 setText:v55];
      }
    }

    v56 = sub_100020A34();
    if (v56)
    {
      v57 = v56;
      swift_beginAccess();
      v58 = v57;
      v59 = sub_100026320();
      swift_endAccess();
      v58[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_supportsMonogramAvatar] = v59 & 1;

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}

void sub_10001AA6C(void *a1)
{
  v2 = v1;
  v4 = sub_1000263C0();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100026390();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v115 = &v106 - v15;
  __chkstk_darwin(v14);
  v17 = &v106 - v16;
  v111 = sub_1000262C0();
  v110 = *(v111 - 1);
  v18 = *(v110 + 8);
  __chkstk_darwin(v111);
  v109 = &v106 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor_logger;
  swift_unknownObjectRetain();
  v112 = v20;
  v21 = sub_100026680();
  v22 = sub_100026B90();
  swift_unknownObjectRelease();
  v23 = os_log_type_enabled(v21, v22);
  v114 = v9;
  v113 = v2;
  v108 = v17;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    v118[0] = v107;
    *v24 = 136315138;
    v25 = v7;
    v26 = v13;
    v27 = v8;
    v28 = [a1 description];
    v29 = sub_100026A20();
    v30 = a1;
    v32 = v31;

    v8 = v27;
    v13 = v26;
    v7 = v25;
    v33 = sub_100025380(v29, v32, v118);
    a1 = v30;

    *(v24 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v21, v22, "Loading poster configuration from poster environment: %s", v24, 0xCu);
    sub_10000B7E0(v107);

    v9 = v114;
  }

  v34 = [a1 sourceContents];
  v118[0] = 0;
  v35 = [v34 loadUserInfoWithError:v118];
  swift_unknownObjectRelease();
  v36 = v118[0];
  v37 = v115;
  if (!v35)
  {
    v110 = v7;
    v111 = v13;
    v76 = v118[0];
    sub_1000261D0();

    swift_willThrow();
    swift_errorRetain();
    v77 = v113;
    v78 = sub_100026680();
    v79 = sub_100026BB0();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = v77;
      v82 = swift_slowAlloc();
      v118[0] = v82;
      *v80 = 136315138;
      swift_getErrorValue();
      v83 = sub_100026D70();
      v85 = sub_100025380(v83, v84, v118);

      *(v80 + 4) = v85;
      _os_log_impl(&_mh_execute_header, v78, v79, "Error loading user info from environment: %s", v80, 0xCu);
      sub_10000B7E0(v82);
      v77 = v81;
    }

    type metadata accessor for MonogramPosterColorGenerator();
    sub_10000F330(v110);
    sub_1000262D0();
    v86 = OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor_configuration;
    swift_beginAccess();
    v87 = v114;
    v88 = v111;
    (*(v114 + 16))(v111, &v77[v86], v8);
    swift_beginAccess();
    (*(v87 + 24))(&v77[v86], v37, v8);
    swift_endAccess();
    sub_10001A438();

    v89 = *(v87 + 8);
    v89(v88, v8);
    v89(v37, v8);
    return;
  }

  v38 = v8;
  v39 = sub_1000269A0();
  v40 = v36;

  v41 = v110;
  v42 = v109;
  v43 = v111;
  (*(v110 + 13))(v109, enum case for MonogramPosterUserInfoKey.dataRepresentation(_:), v111);
  v44 = sub_1000262B0();
  v46 = v45;
  (*(v41 + 8))(v42, v43);
  v116 = v44;
  v117 = v46;
  sub_100026C70();
  if (!*(v39 + 16) || (v47 = sub_100024EFC(v118), (v48 & 1) == 0))
  {

    sub_10002231C(v118);
    v49 = v38;
LABEL_9:
    v58 = v115;
    type metadata accessor for MonogramPosterColorGenerator();
    sub_10000F330(v7);
    sub_1000262D0();
    v59 = OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor_configuration;
    v60 = v113;
    swift_beginAccess();
    v111 = *(v9 + 16);
    (v111)(v13, &v60[v59], v49);
    swift_beginAccess();
    (*(v9 + 24))(&v60[v59], v58, v49);
    swift_endAccess();
    sub_10001A438();
    v63 = *(v9 + 8);
    v61 = v9 + 8;
    v62 = v63;
    v63(v13, v49);
    v63(v58, v49);
    v64 = v60;
    v65 = sub_100026680();
    v66 = v58;
    v67 = v49;
    v68 = sub_100026B90();

    if (os_log_type_enabled(v65, v68))
    {
      v69 = swift_slowAlloc();
      v114 = v61;
      v70 = v69;
      v71 = swift_slowAlloc();
      v119[0] = v71;
      *v70 = 136315138;
      (v111)(v66, &v60[v59], v67);
      v72 = sub_1000262E0();
      v74 = v73;
      v62(v66, v67);
      v75 = sub_100025380(v72, v74, v119);

      *(v70 + 4) = v75;
      _os_log_impl(&_mh_execute_header, v65, v68, "Creating new poster configuration: %s", v70, 0xCu);
      sub_10000B7E0(v71);
    }

    goto LABEL_11;
  }

  sub_1000223C4(*(v39 + 56) + 32 * v47, v119);
  sub_10002231C(v118);

  v49 = v38;
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  v111 = v13;
  v50 = v116;
  v51 = v117;
  v52 = sub_100026180();
  v53 = *(v52 + 48);
  v54 = *(v52 + 52);
  swift_allocObject();
  v55 = sub_100026170();
  sub_100022440(&qword_100042088, &type metadata accessor for MonogramPosterConfiguration);
  v56 = v108;
  v110 = v50;
  v109 = v55;
  sub_100026160();
  v57 = v115;
  v107 = v51;
  v90 = v113;
  v91 = OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor_configuration;
  swift_beginAccess();
  v111 = *(v9 + 16);
  (v111)(v57, &v90[v91], v49);
  swift_beginAccess();
  (*(v9 + 24))(&v90[v91], v56, v49);
  swift_endAccess();
  sub_10001A438();
  v94 = *(v9 + 8);
  v92 = v9 + 8;
  v93 = v94;
  v94(v57, v49);
  v94(v56, v49);
  v95 = v90;
  v96 = sub_100026680();
  v97 = sub_100026B90();

  if (os_log_type_enabled(v96, v97))
  {
    v99 = swift_slowAlloc();
    v114 = v92;
    v100 = v99;
    v101 = swift_slowAlloc();
    v119[0] = v101;
    *v100 = 136315138;
    (v111)(v57, &v90[v91], v49);
    v65 = v96;
    v102 = sub_1000262E0();
    v104 = v103;
    v93(v57, v49);
    v105 = sub_100025380(v102, v104, v119);

    *(v100 + 4) = v105;
    _os_log_impl(&_mh_execute_header, v65, v97, "Did load poster configuration: %s", v100, 0xCu);
    sub_10000B7E0(v101);

    sub_1000221D4(v110, v107);
LABEL_11:

    return;
  }

  sub_1000221D4(v110, v107);
}

uint64_t sub_10001B8C4(char *a1)
{
  v3 = sub_100026390();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v27 - v9;
  v11 = sub_100026180();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = sub_100026170();
  sub_100022440(&qword_100042088, &type metadata accessor for MonogramPosterConfiguration);
  sub_100026160();
  if (!v1)
  {
    v31[7] = v14;
    v15 = OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor_configuration;
    swift_beginAccess();
    v29 = *(v4 + 16);
    v30 = v4 + 16;
    v29(v8, &a1[v15], v3);
    swift_beginAccess();
    (*(v4 + 24))(&a1[v15], v10, v3);
    swift_endAccess();
    sub_10001A438();
    v16 = *(v4 + 8);
    v16(v8, v3);
    v28 = v16;
    v16(v10, v3);
    v17 = a1;
    v18 = sub_100026680();
    v19 = sub_100026BC0();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v31[0] = v27;
      *v20 = 136315138;
      v29(v8, &a1[v15], v3);
      v21 = v19;
      v22 = sub_1000262E0();
      v24 = v23;
      v28(v8, v3);
      v25 = sub_100025380(v22, v24, v31);

      *(v20 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v18, v21, "Did load poster configuration: %s", v20, 0xCu);
      sub_10000B7E0(v27);
    }
  }
}

uint64_t sub_10001BC20(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  if (a4)
  {
    v9 = sub_1000269F0();
    if (a1)
    {
      type metadata accessor for Key(0);
      sub_100022440(&qword_100041F90, type metadata accessor for Key);
      v10.super.isa = sub_100026990().super.isa;
    }

    else
    {
      v10.super.isa = 0;
    }

    [v9 sizeWithAttributes:v10.super.isa];
    a2 = v13;
    a3 = v14;
  }

  v15 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{*&a2, *&a3}];
  v16 = swift_allocObject();
  v16[2] = a5;
  v16[3] = a6;
  v16[4] = a2;
  v16[5] = a3;
  v16[6] = a1;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1000214EC;
  *(v17 + 24) = v16;
  v22[4] = sub_10002150C;
  v22[5] = v17;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 1107296256;
  v22[2] = sub_100016EDC;
  v22[3] = &unk_10003A128;
  v18 = _Block_copy(v22);

  v19 = [v15 imageWithActions:v18];

  _Block_release(v18);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    return v19;
  }

  __break(1u);
  return result;
}

void sub_10001BE88()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      swift_beginAccess();
      sub_100026370();
      swift_endAccess();
      v4 = objc_allocWithZone(type metadata accessor for MonogramInputViewController());
      v5 = sub_100011770();
      *&v5[OBJC_IVAR____TtC23MonogramPosterExtension27MonogramInputViewController_delegate + 8] = &off_10003A048;
      swift_unknownObjectWeakAssign();
      [v5 setModalPresentationStyle:5];
      [v5 setModalTransitionStyle:2];
      [v3 presentViewController:v5 animated:1 completion:0];

      v1 = v5;
    }
  }
}

uint64_t sub_10001BFD4()
{
  v1 = v0;
  sub_10000B82C(0, &qword_100041F70, UIColor_ptr);
  swift_beginAccess();
  v2 = sub_100026330();
  swift_endAccess();
  v3._rawValue = v2;
  isa = sub_100026BF0(v3).super.isa;
  v5 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{35.0, 35.0}];
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  *(v6 + 24) = xmmword_100029C00;
  *(v6 + 40) = 0x403D000000000000;
  *(v6 + 48) = isa;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1000217D8;
  *(v7 + 24) = v6;
  v13[4] = sub_100022654;
  v13[5] = v7;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100016EDC;
  v13[3] = &unk_10003A290;
  v8 = _Block_copy(v13);
  v9 = v1;
  v10 = isa;

  v11 = [v5 imageWithActions:v8];

  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if ((v5 & 1) == 0)
  {
    return v11;
  }

  __break(1u);
  return result;
}

void sub_10001C1EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1000263C0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    swift_beginAccess();
    v15 = swift_unknownObjectWeakLoadStrong();
    if (v15)
    {
      v16 = v15;
      v45 = v9;
      v42 = a4;
      v43 = a5;
      sub_10000B82C(0, &qword_100041F70, UIColor_ptr);
      swift_beginAccess();
      v17 = sub_100026330();
      swift_endAccess();
      v18._rawValue = v17;
      v19.super.isa = sub_100026BF0(v18).super.isa;
      v44 = [objc_allocWithZone(PREditorColorPickerConfiguration) init];
      v20 = sub_1000263D0();
      v21 = *(v20 + 16);
      if (v21)
      {
        isa = v19.super.isa;
        v39 = v16;
        v40 = v14;
        v41 = a3;
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_100026CE0();
        v22 = v45 + 16;
        v45 = *(v45 + 16);
        v23 = *(v22 + 64);
        v37 = v20;
        v24 = v20 + ((v23 + 32) & ~v23);
        v25 = *(v22 + 56);
        do
        {
          (v45)(v12, v24, v8);
          sub_1000263B0();
          (*(v22 - 8))(v12, v8);
          sub_100026CC0();
          v26 = *(aBlock[0] + 16);
          sub_100026CF0();
          sub_100026D00();
          sub_100026CD0();
          v24 += v25;
          --v21;
        }

        while (v21);

        v27 = aBlock[0];
        v14 = v40;
        a3 = v41;
        v19.super.isa = isa;
        v16 = v39;
      }

      else
      {

        v27 = _swiftEmptyArrayStorage;
      }

      sub_10001C63C(v27);

      v28 = objc_allocWithZone(PREditorColorPalette);
      v29 = sub_100026B00().super.isa;

      v30 = [v28 initWithColors:v29 localizedName:0 showsColorWell:0];

      v31 = v44;
      [v44 setColorPalette:v30];
      v32 = sub_1000269F0();
      [v31 setPrompt:v32];

      v33 = [objc_allocWithZone(PRPosterColor) initWithColor:v19.super.isa];
      [v31 setSelectedColor:v33];

      v34 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v35 = swift_allocObject();
      *(v35 + 16) = v34;
      *(v35 + 24) = a3;
      aBlock[4] = sub_100021790;
      aBlock[5] = v35;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100013174;
      aBlock[3] = &unk_10003A218;
      v36 = _Block_copy(aBlock);

      [v16 presentColorPickerWithConfiguration:v31 changeHandler:v36];
      _Block_release(v36);

      v14 = v30;
    }
  }
}

id *sub_10001C63C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_100026D20();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = _swiftEmptyArrayStorage;
  result = sub_10001678C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_100026CA0();
        sub_10000B82C(0, &qword_100041F70, UIColor_ptr);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_10001678C((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = (v7 + 1);
        sub_10002154C(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_10000B82C(0, &qword_100041F70, UIColor_ptr);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_10001678C((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = (v11 + 1);
        sub_10002154C(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void sub_10001C838(char *a1)
{
  v2 = sub_100026390();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = __chkstk_darwin(v2);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v26 - v8;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    swift_beginAccess();
    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = v12;
      sub_100026C00();
      v31 = a1;
      v14 = OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor_configuration;
      swift_beginAccess();
      v15 = v3[2];
      v15(v9, &v11[v14], v2);
      sub_100026340();
      v30 = v15;
      v15(v7, &v11[v14], v2);
      swift_beginAccess();
      v27 = v3[3];
      v28 = v3 + 3;
      v27(&v11[v14], v9, v2);
      swift_endAccess();
      sub_10001A438();
      v16 = v3[1];
      v16(v7, v2);
      v29 = v16;
      v16(v9, v2);
      v17 = sub_100026BE0();
      v18 = sub_1000263E0();
      if (*(v18 + 16))
      {
        v31 = v13;
        v26 = sub_100024FD4(v17);
        v20 = v19;

        if (v20)
        {
          v21 = *(*(v18 + 56) + 8 * v26);

          sub_100026C00();
          v22 = v30;
          v30(v9, &v11[v14], v2);
          sub_100026360();
          v22(v7, &v11[v14], v2);
          swift_beginAccess();
          v27(&v11[v14], v9, v2);
          swift_endAccess();
          sub_10001A438();

          v23 = v29;
          v29(v7, v2);
          v23(v9, v2);
        }

        else
        {
        }

        v13 = v31;
      }

      else
      {
      }

      sub_100020A90();
      if (!v24)
      {
        __break(1u);
        return;
      }

      v25 = v24;
      sub_10000402C();

      [v13 updateActions];
      v11 = v13;
    }
  }
}

void sub_10001CBD0()
{
  v0 = sub_100003598(&qword_100042000, &unk_100029D00);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v81 - v2;
  v4 = sub_100003598(&unk_1000422E0, &unk_10002A0F0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v91 = &v81 - v6;
  v7 = sub_100003598(&qword_100041D80, &qword_100029D10);
  v92 = *(v7 - 8);
  v8 = *(v92 + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v81 - v13;
  v15 = __chkstk_darwin(v12);
  v90 = &v81 - v16;
  v17 = __chkstk_darwin(v15);
  v89 = &v81 - v18;
  __chkstk_darwin(v17);
  v103 = (&v81 - v19);
  v20 = sub_100026610();
  v93 = *(v20 - 8);
  v21 = *(v93 + 64);
  v22 = __chkstk_darwin(v20);
  v24 = &v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v22);
  v100 = &v81 - v26;
  __chkstk_darwin(v25);
  v28 = (&v81 - v27);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v30 = Strong;
    v88 = v14;
    swift_beginAccess();
    v31 = swift_unknownObjectWeakLoadStrong();
    if (v31)
    {
      v32 = v31;
      v94 = v11;
      v33 = [objc_allocWithZone(PREditorContentStylePickerConfiguration) init];
      v101 = sub_100026600();
      sub_100020A90();
      if (v34)
      {
        v35 = [v34 traitCollection];
        v36 = [v35 userInterfaceStyle];

        if (v36 == 2)
        {
          sub_1000264B0();
        }

        else
        {
          sub_1000264C0();
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v95 = v7;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
LABEL_37:
          v101 = sub_1000205BC(0, v101[2] + 1, 1, v101, &qword_100042028, &qword_100029D30, &type metadata accessor for GradientDefinition);
        }

        v39 = v101[2];
        v38 = v101[3];
        v99 = (v39 + 1);
        v87 = v30;
        v84 = v32;
        v83 = v3;
        v86 = v33;
        v85 = v24;
        if (v39 >= v38 >> 1)
        {
          v101 = sub_1000205BC(v38 > 1, v99, 1, v101, &qword_100042028, &qword_100029D30, &type metadata accessor for GradientDefinition);
        }

        v40 = v101;
        v41 = v99;
        v101[2] = v99;
        v32 = (v93 + 32);
        v3 = *(v93 + 32);
        v33 = v40 + ((*(v93 + 80) + 32) & ~*(v93 + 80));
        v97 = *(v93 + 72);
        v102 = v20;
        (v3)(&v33[v97 * v39], v28, v20);
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_1000167AC(0, v41, 0);
        v24 = 0;
        v28 = 0;
        v104 = aBlock[0];
        v98 = (v32 - 24);
        v42 = v92;
        do
        {
          if (v24 >= v101[2])
          {
            __break(1u);
LABEL_36:
            __break(1u);
            goto LABEL_37;
          }

          v30 = v3;
          v43 = v100;
          v44 = v102;
          (*(v32 - 2))(v100, v33, v102);
          sub_10001D714(v43, v103);
          v96 = *v98;
          v96(v43, v44);
          v45 = v104;
          aBlock[0] = v104;
          v47 = *(v104 + 16);
          v46 = *(v104 + 24);
          if (v47 >= v46 >> 1)
          {
            sub_1000167AC(v46 > 1, v47 + 1, 1);
            v42 = v92;
            v45 = aBlock[0];
          }

          ++v24;
          *(v45 + 16) = v47 + 1;
          v48 = (*(v42 + 80) + 32) & ~*(v42 + 80);
          v104 = v45;
          v20 = *(v42 + 72);
          sub_1000215B8(v103, v45 + v48 + v20 * v47);
          v33 += v97;
          v3 = v30;
        }

        while (v99 != v24);
        v49 = *(v104 + 16);
        v50 = _swiftEmptyArrayStorage;
        v82 = v48;
        if (v49)
        {
          aBlock[0] = _swiftEmptyArrayStorage;
          v51 = v104;
          sub_100026CE0();
          v52 = v51 + v48;
          v53 = v88;
          v103 = v3;
          v54 = v90;
          v55 = v89;
          v100 = v32;
          do
          {
            sub_1000161E8(v52, v55, &qword_100041D80, &qword_100029D10);
            sub_1000161E8(v55, v54, &qword_100041D80, &qword_100029D10);
            v56 = *(v95 + 48);
            v57 = *(v54 + v56);
            v103(v53, v54, v102);
            *(v53 + v56) = v57;
            swift_unknownObjectRetain();
            sub_10000C6E0(v53, &qword_100041D80, &qword_100029D10);
            sub_10000C6E0(v55, &qword_100041D80, &qword_100029D10);
            sub_100026CC0();
            v58 = *(aBlock[0] + 16);
            sub_100026CF0();
            sub_100026D00();
            sub_100026CD0();
            v52 += v20;
            --v49;
          }

          while (v49);
          v50 = aBlock[0];
          v3 = v103;
        }

        sub_10001DA0C(v50);
        v59 = objc_allocWithZone(PREditorContentStylePalette);
        sub_100003598(&qword_100042008, &qword_100029D18);
        isa = sub_100026B00().super.isa;

        v61 = [v59 initWithContentStyles:isa localizedName:0];

        v33 = v86;
        [v86 setStylePalette:v61];

        [v33 setColorWellDisplayMode:0];
        v30 = v87;
        swift_beginAccess();
        v62 = v91;
        sub_100026300();
        v63 = v102;
        v64 = (*(v93 + 48))(v62, 1, v102);
        v24 = v85;
        if (v64 == 1)
        {

          sub_10000C6E0(v62, &unk_1000422E0, &unk_10002A0F0);
          swift_endAccess();
          v65 = v84;
          goto LABEL_33;
        }

        (v3)(v85, v62, v63);
        swift_endAccess();
        v66 = v104;
        v67 = *(v104 + 16);
        if (v67)
        {
          v32 = 0;
          v68 = v104 + v82;
          v28 = &qword_100029D10;
          while (v32 < *(v66 + 16))
          {
            v3 = v94;
            sub_1000161E8(v68, v94, &qword_100041D80, &qword_100029D10);
            if (sub_100026580())
            {
              v70 = v83;
              sub_1000215B8(v3, v83);
              v69 = 0;
              goto LABEL_29;
            }

            ++v32;
            sub_10000C6E0(v3, &qword_100041D80, &qword_100029D10);
            v68 += v20;
            v66 = v104;
            if (v67 == v32)
            {
              goto LABEL_27;
            }
          }

          goto LABEL_36;
        }

LABEL_27:
        v69 = 1;
        v70 = v83;
LABEL_29:
        v71 = v92;
        v72 = v95;
        (*(v92 + 56))(v70, v69, 1, v95);

        v73 = (*(v71 + 48))(v70, 1, v72);
        v65 = v84;
        v74 = v102;
        v75 = v96;
        if (v73 == 1)
        {
          sub_10000C6E0(v70, &qword_100042000, &unk_100029D00);
          v76 = 0;
        }

        else
        {
          v76 = *(v70 + *(v72 + 48));
          v96(v70, v102);
        }

        [v33 setSelectedStyle:v76];
        swift_unknownObjectRelease();
        v75(v24, v74);
LABEL_33:
        v77 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v78 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v79 = swift_allocObject();
        v79[2] = v77;
        v79[3] = v78;
        v79[4] = v104;
        aBlock[4] = sub_100021670;
        aBlock[5] = v79;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10001E2C8;
        aBlock[3] = &unk_10003A1C8;
        v80 = _Block_copy(aBlock);

        [v65 presentContentStylePickerWithConfiguration:v33 changeHandler:v80];

        _Block_release(v80);
      }

      else
      {
        __break(1u);
        (*v98)(v3, v7);

        __break(1u);
      }
    }

    else
    {
    }
  }
}

void sub_10001D714(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000264A0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v30 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v27 - v9;
  v11 = sub_100026610();
  v12 = *(*(v11 - 8) + 16);
  v31 = a2;
  v12(a2, a1, v11);
  sub_100003598(&qword_100040F98, &qword_1000293D0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100029330;
  v32 = a1;
  v14 = sub_1000265E0();
  if (*(v14 + 16))
  {
    sub_10000B82C(0, &qword_100041F70, UIColor_ptr);
    v15 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v16 = *(v5 + 16);
    v16(v10, v14 + v15, v4);

    sub_100026430();
    v28 = v5;
    v29 = v4;
    v17 = *(v5 + 8);
    v17(v10);
    *(v13 + 32) = sub_100026C10();
    v18 = sub_1000265E0();
    v19 = *(v18 + 16);
    if (v19)
    {
      v32 = *(sub_100003598(&qword_100041D80, &qword_100029D10) + 48);
      v20 = v18 + v15;
      v21 = v29;
      v22 = v20 + *(v28 + 72) * (v19 - 1);
      v23 = v30;
      v16(v30, v22, v29);

      sub_100026430();
      (v17)(v23, v21);
      *(v13 + 40) = sub_100026C10();
      v24 = objc_allocWithZone(PRPosterContentGradientStyle);
      isa = sub_100026B00().super.isa;

      v26 = [v24 initWithColors:isa];

      *(v31 + v32) = v26;
      return;
    }
  }

  else
  {

    __break(1u);
  }

  __break(1u);
}

id *sub_10001DA0C(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_100026D20();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_100020798(v3, 0);
  sub_100020820((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

void sub_10001DAA0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v95 = a1;
  v6 = sub_100026390();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v79 - v12;
  v14 = sub_100003598(&unk_1000422E0, &unk_10002A0F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v91 = &v79 - v16;
  v94 = sub_100003598(&qword_100041D80, &qword_100029D10);
  v17 = *(v94 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v94);
  v21 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v88 = &v79 - v22;
  v23 = sub_100026610();
  v90 = *(v23 - 8);
  v24 = *(v90 + 64);
  v25 = __chkstk_darwin(v23);
  v89 = &v79 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v92 = &v79 - v27;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v29 = Strong;
    swift_beginAccess();
    v30 = swift_unknownObjectWeakLoadStrong();
    if (v30)
    {
      v84 = v23;
      v80 = v13;
      v81 = v11;
      v82 = v7;
      v83 = v6;
      v85 = v30;
      v86 = v29;
      v87 = a5;
      v31 = a5[2];
      if (v31)
      {
        v32 = v87 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
        v93 = *(v17 + 72);
        v33 = &qword_100041D80;
        v34 = &qword_100029D10;
        while (1)
        {
          v35 = v33;
          v36 = v34;
          sub_1000161E8(v32, v21, v33, v34);
          v37 = [*&v21[*(v94 + 48)] identifier];
          v38 = sub_100026A20();
          v40 = v39;

          v41 = [v95 identifier];
          v42 = sub_100026A20();
          v44 = v43;

          if (v38 == v42 && v40 == v44)
          {
            break;
          }

          v46 = sub_100026D60();

          if (v46)
          {
            goto LABEL_16;
          }

          v33 = v35;
          v34 = v36;
          sub_10000C6E0(v21, v35, v36);
          v32 += v93;
          if (!--v31)
          {
            goto LABEL_11;
          }
        }

LABEL_16:
        v59 = v88;
        sub_1000215B8(v21, v88);
        v60 = *(v59 + *(v94 + 48));
        swift_unknownObjectRelease();
        v61 = v90;
        v62 = v92;
        v63 = v84;
        (*(v90 + 32))(v92, v59, v84);
        v64 = v89;
        sub_1000264C0();
        LOBYTE(v59) = sub_100026580();
        v65 = *(v61 + 8);
        v65(v64, v63);
        if (v59 & 1) != 0 || (sub_1000264B0(), v66 = sub_100026580(), v65(v64, v63), (v66))
        {
          (*(v61 + 56))(v91, 1, 1, v63);
        }

        else
        {
          v67 = v91;
          (*(v61 + 16))(v91, v62, v63);
          (*(v61 + 56))(v67, 0, 1, v63);
        }

        v68 = OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor_configuration;
        v69 = v86;
        swift_beginAccess();
        v70 = v82;
        v71 = *(v82 + 16);
        v72 = v80;
        v73 = v83;
        v71(v80, &v69[v68], v83);
        sub_100026310();
        v74 = v81;
        v71(v81, &v69[v68], v73);
        swift_beginAccess();
        (*(v70 + 24))(&v69[v68], v72, v73);
        swift_endAccess();
        sub_10001A438();
        v75 = *(v70 + 8);
        v75(v74, v73);
        v75(v72, v73);
        sub_100020A90();
        if (v76)
        {
          v77 = v76;
          sub_10000402C();

          v78 = v85;
          [v85 updateActions];

          v65(v92, v84);
        }

        else
        {
          __break(1u);
        }
      }

      else
      {
LABEL_11:
        v47 = v95;
        swift_unknownObjectRetain();
        v48 = v87;

        v49 = v86;
        v50 = sub_100026680();
        v51 = sub_100026BB0();

        swift_unknownObjectRelease();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          v97[0] = swift_slowAlloc();
          *v52 = 136315394;
          v96 = v47;
          swift_unknownObjectRetain();
          sub_100003598(&qword_100042008, &qword_100029D18);
          v53 = sub_100026A50();
          v55 = sub_100025380(v53, v54, v97);

          *(v52 + 4) = v55;
          *(v52 + 12) = 2080;
          v96 = v48;

          sub_100003598(&qword_100042010, &qword_100029D20);
          v56 = sub_100026A50();
          v58 = sub_100025380(v56, v57, v97);

          *(v52 + 14) = v58;
          _os_log_impl(&_mh_execute_header, v50, v51, "Failed to find selectedStyle: %s in styles: %s", v52, 0x16u);
          swift_arrayDestroy();
        }
      }
    }

    else
    {
    }
  }
}

uint64_t sub_10001E2C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);

  v6 = swift_unknownObjectRetain();
  v5(v6, a3);

  return swift_unknownObjectRelease();
}

void sub_10001E330(void *a1, void *a2, void *a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v113 = a3;
  v107 = sub_100026200();
  v106 = *(v107 - 8);
  v11 = *(v106 + 64);
  __chkstk_darwin(v107);
  v13 = &v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100003598(&unk_1000422E0, &unk_10002A0F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v119 = &v105 - v16;
  v17 = sub_1000264A0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v105 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v111 = &v105 - v24;
  v25 = __chkstk_darwin(v23);
  v27 = &v105 - v26;
  __chkstk_darwin(v25);
  v29 = &v105 - v28;
  v30 = sub_100026610();
  v121 = *(v30 - 8);
  v122 = v30;
  v31 = *(v121 + 64);
  v32 = __chkstk_darwin(v30);
  v112 = &v105 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v35 = &v105 - v34;
  v120 = a2;
  sub_100020A90();
  if (!v36)
  {
    __break(1u);
LABEL_22:

    __break(1u);
    goto LABEL_23;
  }

  v37 = [v36 traitCollection];
  v38 = [v37 userInterfaceStyle];

  if (v38 == 2)
  {
    sub_1000264B0();
  }

  else
  {
    sub_1000264C0();
  }

  v118 = v27;
  v110 = v22;
  v105 = v13;
  v117 = a1;
  v39 = sub_1000265E0();
  if (!*(v39 + 16))
  {
    goto LABEL_22;
  }

  v40 = sub_10000B82C(0, &qword_100041F70, UIColor_ptr);
  v41 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v42 = *(v18 + 16);
  v42(v29, v39 + v41, v17);

  sub_100026430();
  v116 = v18;
  v43 = *(v18 + 8);
  v43(v29, v17);
  v44 = sub_100026C10();
  v115 = [v44 CGColor];

  v114 = v35;
  v45 = sub_1000265E0();
  v46 = *(v45 + 16);
  if (!v46)
  {
LABEL_23:

    __break(1u);
LABEL_24:

    __break(1u);
    goto LABEL_25;
  }

  v109 = v41;
  v108 = *(v116 + 9);
  v47 = v118;
  v116 = v42;
  v42(v118, v45 + v41 + v108 * (v46 - 1), v17);

  sub_100026430();
  v43(v47, v17);
  v118 = v40;
  v48 = sub_100026C10();
  v49 = [v48 CGColor];

  swift_beginAccess();
  v50 = v119;
  sub_100026300();
  v52 = v121;
  v51 = v122;
  if ((*(v121 + 48))(v50, 1, v122) == 1)
  {
    sub_10000C6E0(v50, &unk_1000422E0, &unk_10002A0F0);
    swift_endAccess();
    v53 = v115;
    v54 = &stru_10003E000;
    goto LABEL_12;
  }

  v120 = v49;
  v55 = v50;
  v56 = v112;
  (*(v52 + 32))(v112, v55, v51);
  swift_endAccess();
  v57 = sub_1000265E0();
  if (!*(v57 + 16))
  {
    goto LABEL_24;
  }

  v58 = v109;
  v59 = v111;
  v60 = v116;
  v116(v111, v57 + v109, v17);

  sub_100026430();
  v43(v59, v17);
  v61 = sub_100026C10();
  v62 = [v61 CGColor];

  v63 = sub_1000265E0();
  v64 = *(v63 + 16);
  if (!v64)
  {
LABEL_25:

    __break(1u);
    return;
  }

  v65 = v63 + v58 + (v64 - 1) * v108;
  v66 = v110;
  v60(v110, v65, v17);

  sub_100026430();
  v43(v66, v17);
  v67 = sub_100026C10();
  v54 = &stru_10003E000;
  v68 = [v67 CGColor];

  (*(v121 + 8))(v56, v122);
  v53 = v62;
  v49 = v68;
LABEL_12:
  v69 = objc_opt_self();
  v70 = [v69 currentEnvironment];
  v71 = [v70 featureFlags];

  LODWORD(v70) = [v71 isFeatureEnabled:6];
  swift_unknownObjectRelease();
  if (!v70 || (v72 = [v69 currentEnvironment], v73 = objc_msgSend(v72, "featureFlags"), v72, LODWORD(v72) = objc_msgSend(v73, "isFeatureEnabled:", 7), swift_unknownObjectRelease(), !v72))
  {
    v95 = v117;
    v96 = [v117 CGContext];
    v97 = [v113 v54[71].type];
    CGContextSetFillColorWithColor(v96, v97);

    v98 = [v95 CGContext];
    CGContextSetLineWidth(v98, a4);

    v99 = [v95 CGContext];
    v100 = [objc_opt_self() systemBackgroundColor];
    v101 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:1];
    v102 = [v100 resolvedColorWithTraitCollection:v101];

    v103 = [v102 v54[71].type];
    CGContextSetStrokeColorWithColor(v99, v103);

    v104 = [v95 CGContext];
    v130.origin.x = a4;
    v130.origin.y = a4;
    v130.size.width = a5;
    v130.size.height = a6;
    CGContextAddEllipseInRect(v104, v130);

    v78.super.isa = [v95 CGContext];
    CGContextDrawPath(v78.super.isa, kCGPathFillStroke);

    goto LABEL_19;
  }

  v74 = [v117 CGContext];
  sub_100003598(&qword_100040F98, &qword_1000293D0);
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_100029330;
  *(v75 + 32) = v53;
  *(v75 + 40) = v49;
  v76 = v53;
  v77 = v49;
  v78.super.isa = sub_100026B00().super.isa;

  DeviceRGB = CGColorGetColorSpace(v76);
  if (!DeviceRGB)
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
  }

  v80 = CGGradientCreateWithColors(DeviceRGB, v78.super.isa, dbl_100039930);
  if (v80)
  {
    v81 = v80;
    v125.origin.x = a4;
    v125.origin.y = a4;
    v125.size.width = a5;
    v125.size.height = a6;
    v82 = CGPathCreateWithEllipseInRect(v125, 0);
    v120 = v77;
    v83 = v82;
    CGContextAddPath(v74, v82);
    v84 = v54;
    v85 = v106;
    v86 = v105;
    v87 = v107;
    (*(v106 + 104))(v105, enum case for CGPathFillRule.winding(_:), v107);
    sub_100026B80();
    (*(v85 + 8))(v86, v87);
    v126.origin.x = a4;
    v126.origin.y = a4;
    v126.size.width = a5;
    v126.size.height = a6;
    MidX = CGRectGetMidX(v126);
    v127.origin.x = a4;
    v127.origin.y = a4;
    v127.size.width = a5;
    v127.size.height = a6;
    MinY = CGRectGetMinY(v127);
    v128.origin.x = a4;
    v128.origin.y = a4;
    v128.size.width = a5;
    v128.size.height = a6;
    v90 = CGRectGetMidX(v128);
    v129.origin.x = a4;
    v129.origin.y = a4;
    v129.size.width = a5;
    v129.size.height = a6;
    v124.y = CGRectGetMaxY(v129);
    v123.x = MidX;
    v123.y = MinY;
    v124.x = v90;
    CGContextDrawLinearGradient(v74, v81, v123, v124, 0);
    CGContextSetLineWidth(v74, a4);
    v91 = [objc_opt_self() systemBackgroundColor];
    v92 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:1];
    v93 = [v91 resolvedColorWithTraitCollection:v92];

    v94 = [v93 v84[71].type];
    CGContextSetStrokeColorWithColor(v74, v94);

    CGContextAddPath(v74, v83);
    CGContextDrawPath(v74, kCGPathStroke);

LABEL_19:
    (*(v121 + 8))(v114, v122);
    return;
  }

  (*(v121 + 8))(v114, v122);
}

void sub_10001EF34(char a1)
{
  sub_100020A90();
  if (!v2)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v3 = *(v2 + OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_simulationView);
  if (v3)
  {
    v4 = [v3 layer];
    if (v4)
    {
      v5 = v4;
      type metadata accessor for BackgroundSimulationLayer(0);
      v6 = swift_dynamicCastClass();
      if (v6)
      {
        v21 = v6;
        goto LABEL_8;
      }
    }
  }

  v21 = 0;
LABEL_8:
  v7 = sub_100020A34();
  if (v7)
  {
    v8 = *(v7 + OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_simulationView);
    if (v8)
    {
      v9 = [v8 layer];
      if (v9)
      {
        v10 = v9;
        type metadata accessor for BackgroundSimulationLayer(0);
        v11 = swift_dynamicCastClass();
        if (v11)
        {
          v22 = v11;
LABEL_15:
          for (i = 0; i != 2; ++i)
          {
            v13 = v20[i + 4];
            if (v13)
            {
              v14 = v13;
              sub_100026AF0();
              if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v15 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_100026B10();
              }

              sub_100026B30();
            }
          }

          sub_100003598(&qword_100042078, &unk_100029DB0);
          swift_arrayDestroy();
          if (_swiftEmptyArrayStorage >> 62)
          {
            v16 = sub_100026D20();
            if (v16)
            {
              goto LABEL_23;
            }
          }

          else
          {
            v16 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v16)
            {
LABEL_23:
              if (v16 >= 1)
              {
                v17 = 0;
                v18 = a1 & 1;
                do
                {
                  if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
                  {
                    v19 = sub_100026CA0();
                  }

                  else
                  {
                    v19 = _swiftEmptyArrayStorage[v17 + 4];
                  }

                  ++v17;
                  v19[OBJC_IVAR____TtC23MonogramPosterExtension25BackgroundSimulationLayer_isRenderingPaused] = v18;
                }

                while (v16 != v17);
                goto LABEL_30;
              }

              __break(1u);
              goto LABEL_32;
            }
          }

LABEL_30:

          return;
        }
      }
    }

    v22 = 0;
    goto LABEL_15;
  }

LABEL_33:
  __break(1u);
}

uint64_t sub_10001F17C(uint64_t a1)
{
  v2 = sub_100026150();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_100026140();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

void sub_10001F270(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_10001EF34(a3 & 1);
  }
}

id sub_10001F2CC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1000263C0();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor_isIPad;
  v8 = [objc_opt_self() currentDevice];
  v9 = [v8 userInterfaceIdiom];

  v1[v7] = v9 == 1;
  *&v1[OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor_backgroundOrientationAdjustingView] = 0;
  *&v1[OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor_monogramOrientationAdjustingView] = 0;
  *&v1[OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor__backgroundViewController] = 0;
  *&v1[OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor__monogramViewController] = 0;
  *&v1[OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor_editor] = 0;
  sub_100026690();
  *&v1[OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor_extensionLifecycleObservers] = _swiftEmptyArrayStorage;
  type metadata accessor for MonogramPosterColorGenerator();
  sub_10000F330(v6);
  sub_1000262D0();
  v10 = &v1[OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor_constants];
  *v10 = xmmword_100029C00;
  *(v10 + 2) = 0x4038000000000000;
  v12.receiver = v1;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, "init");
}

uint64_t type metadata accessor for MonogramPosterEditor()
{
  result = qword_100041F08;
  if (!qword_100041F08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001F618()
{
  result = sub_1000266A0();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_100026390();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_10001F710(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_1000269F0();
  if (a6)
  {
    type metadata accessor for Key(0);
    sub_100022440(&qword_100041F90, type metadata accessor for Key);
    v10.super.isa = sub_100026990().super.isa;
  }

  else
  {
    v10.super.isa = 0;
  }

  isa = v10.super.isa;
  [v9 drawInRect:0.0 withAttributes:{0.0, a1, a2}];
}

uint64_t sub_10001F874(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_10001F91C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC23MonogramPosterExtension30DeviceOrientationAdjustingView_contentView;
  v4 = *&v1[OBJC_IVAR____TtC23MonogramPosterExtension30DeviceOrientationAdjustingView_contentView];
  v5 = 0.0;
  if ((a1 - 2) <= 2)
  {
    v5 = dbl_100029E80[a1 - 2];
  }

  CGAffineTransformMakeRotation(&v18, v5);
  [v4 setTransform:&v18];
  v6 = *&v1[v3];
  v7 = sub_10000B874(a1);
  v8 = v6;
  [v1 bounds];
  v10 = v9;
  v12 = v11;
  [v1 bounds];
  if (v7)
  {
    v15 = v12;
  }

  else
  {
    v15 = v10;
  }

  if (v7)
  {
    v14 = v13;
  }

  [v8 setBounds:{0.0, 0.0, v15, v14}];

  v16 = *&v1[v3];
  [v1 bounds];
  MidX = CGRectGetMidX(v19);
  [v1 bounds];
  [v16 setCenter:{MidX, CGRectGetMidY(v20)}];
}

id sub_10001FA94()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceOrientationAdjustingView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 initializeBufferWithCopyOfBuffer for MonogramPosterEditor.Constants(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MonogramPosterEditor.Constants(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MonogramPosterEditor.Constants(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

uint64_t sub_10001FB6C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001FBA4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = sub_100024E84(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 8 * v17) != v16)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10001FCE0(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_100022614;

  return v7();
}

uint64_t sub_10001FDC8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_10001FEB0;

  return v8();
}

uint64_t sub_10001FEB0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10001FFA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003598(&qword_100042038, &qword_100029D38);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_1000161E8(a3, v25 - v11, &qword_100042038, &qword_100029D38);
  v13 = sub_100026B60();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_10000C6E0(v12, &qword_100042038, &qword_100029D38);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_100026B50();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_100026B40();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_100026A70() + 32;
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

    sub_10000C6E0(a3, &qword_100042038, &qword_100029D38);

    return v23;
  }

LABEL_8:
  sub_10000C6E0(a3, &qword_100042038, &qword_100029D38);
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

uint64_t sub_1000202A0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100020398;

  return v7(a1);
}

uint64_t sub_100020398()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

char *sub_1000204B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003598(&qword_100041608, &qword_100029DC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

size_t sub_1000205BC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_100003598(a5, a6);
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

id *sub_100020798(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100003598(&qword_100040F98, &qword_1000293D0);
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

uint64_t sub_100020820(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_100026D20();
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
      result = sub_100026D20();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1000216EC();
          for (i = 0; i != v6; ++i)
          {
            sub_100003598(&qword_100042018, &qword_100029D28);
            v9 = sub_1000209AC(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
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
        sub_100003598(&qword_100042008, &qword_100029D18);
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

uint64_t (*sub_1000209AC(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = sub_100026CA0();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
    v5 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v5;
    return sub_100020A2C;
  }

  __break(1u);
  return result;
}

uint64_t sub_100020A34()
{
  v1 = OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor__monogramViewController;
  result = *(v0 + OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor__monogramViewController);
  if (!result)
  {
    type metadata accessor for MonogramPosterViewController();
    v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;

    result = *(v0 + v1);
    if (!result)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_100020A90()
{
  v1 = OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor__backgroundViewController;
  if (!*(v0 + OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor__backgroundViewController))
  {
    v2 = v0;
    type metadata accessor for MonogramPosterBackgroundViewController();
    v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;

    v5 = *(v0 + v1);
    if (!v5)
    {
      goto LABEL_6;
    }

    sub_10000B82C(0, &qword_100041F70, UIColor_ptr);
    swift_beginAccess();
    v6 = v5;
    v7 = sub_100026330();
    swift_endAccess();
    v8._rawValue = v7;
    v9.super.isa = sub_100026BF0(v8).super.isa;
    v10 = *&v6[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_backgroundColor];
    *&v6[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_backgroundColor] = v9;

    v11 = *(v2 + v1);
    if (!v11)
    {
      goto LABEL_6;
    }

    swift_beginAccess();
    v12 = v11;
    v13 = sub_100026350();
    swift_endAccess();
    v14._rawValue = v13;
    v15.super.isa = sub_100026BF0(v14).super.isa;
    v16 = *&v12[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_topBackgroundColor];
    *&v12[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_topBackgroundColor] = v15;

    if (!*(v2 + v1))
    {
LABEL_6:
      __break(1u);
    }
  }
}

void sub_100020BF8(void *a1, void *a2)
{
  if (*(v2 + OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor_isIPad) == 1)
  {
    v5 = *(v2 + OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor_backgroundOrientationAdjustingView);
    if (v5)
    {
      v6 = v5;
      v7 = [a1 deviceOrientation];
      *&v6[OBJC_IVAR____TtC23MonogramPosterExtension30DeviceOrientationAdjustingView_deviceOrientation] = v7;
      v8 = 0.2;
      if (a2)
      {
        v9 = [a2 animationSettings];
        if (v9)
        {
          v10 = v9;
          [v9 duration];
          v8 = v11;
        }
      }

      v12 = objc_opt_self();
      v13 = swift_allocObject();
      *(v13 + 16) = v6;
      *(v13 + 24) = v7;
      v31 = sub_10002227C;
      v32 = v13;
      v27 = _NSConcreteStackBlock;
      v28 = 1107296256;
      v29 = sub_10001F874;
      v30 = &unk_10003A3A8;
      v14 = _Block_copy(&v27);
      v15 = v6;

      [v12 animateWithDuration:v14 animations:v8];
      _Block_release(v14);
    }

    v16 = *(v2 + OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor_monogramOrientationAdjustingView);
    if (v16)
    {
      v17 = v16;
      v18 = [a1 deviceOrientation];
      *&v17[OBJC_IVAR____TtC23MonogramPosterExtension30DeviceOrientationAdjustingView_deviceOrientation] = v18;
      v19 = 0.2;
      if (a2)
      {
        v20 = [a2 animationSettings];
        if (v20)
        {
          v21 = v20;
          [v20 duration];
          v19 = v22;
        }
      }

      v23 = objc_opt_self();
      v24 = swift_allocObject();
      *(v24 + 16) = v17;
      *(v24 + 24) = v18;
      v31 = sub_10002261C;
      v32 = v24;
      v27 = _NSConcreteStackBlock;
      v28 = 1107296256;
      v29 = sub_10001F874;
      v30 = &unk_10003A3F8;
      v25 = _Block_copy(&v27);
      v26 = v17;

      [v23 animateWithDuration:v25 animations:v19];
      _Block_release(v25);
    }
  }
}

void sub_100020ED4(void *a1, void *a2)
{
  v3 = v2;
  v5 = sub_100026680();
  v6 = sub_100026B90();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Populating views", v7, 2u);
  }

  sub_100020A90();
  if (!v8)
  {
    __break(1u);
    goto LABEL_14;
  }

  v9 = [v8 view];
  if (!v9)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = v9;
  v11 = type metadata accessor for DeviceOrientationAdjustingView();
  v12 = objc_allocWithZone(v11);
  *&v12[OBJC_IVAR____TtC23MonogramPosterExtension30DeviceOrientationAdjustingView_deviceOrientation] = 1;
  *&v12[OBJC_IVAR____TtC23MonogramPosterExtension30DeviceOrientationAdjustingView_contentView] = v10;
  v39.receiver = v12;
  v39.super_class = v11;
  v13 = v10;
  v14 = objc_msgSendSuper2(&v39, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v14 addSubview:v13];

  v15 = [a2 backgroundView];
  [v15 addSubview:v14];

  v16 = [a2 backgroundView];
  sub_100007F74(v16);

  v17 = *(v3 + OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor_backgroundOrientationAdjustingView);
  *(v3 + OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor_backgroundOrientationAdjustingView) = v14;
  v18 = v14;

  v19 = sub_100020A34();
  if (!v19)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v20 = [v19 view];
  if (!v20)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v21 = v20;
  v22 = objc_allocWithZone(v11);
  *&v22[OBJC_IVAR____TtC23MonogramPosterExtension30DeviceOrientationAdjustingView_deviceOrientation] = 1;
  *&v22[OBJC_IVAR____TtC23MonogramPosterExtension30DeviceOrientationAdjustingView_contentView] = v21;
  v38.receiver = v22;
  v38.super_class = v11;
  v23 = v21;
  v24 = objc_msgSendSuper2(&v38, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v24 addSubview:v23];

  v25 = [a2 floatingView];
  [v25 addSubview:v24];

  v26 = [a2 floatingView];
  sub_100007F74(v26);

  v27 = *(v3 + OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor_monogramOrientationAdjustingView);
  *(v3 + OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor_monogramOrientationAdjustingView) = v24;
  v28 = v24;

  sub_100020A90();
  if (!v29)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v30 = v29;
  v31 = sub_100020A34();
  v32 = &off_100039C98;
  if (!v31)
  {
    v32 = 0;
  }

  *&v30[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_delegate + 8] = v32;
  swift_unknownObjectWeakAssign();

  sub_100020A90();
  if (!v33)
  {
    goto LABEL_18;
  }

  v34 = v33;
  sub_10000402C();

  v35 = sub_100020A34();
  if (v35)
  {
    v36 = v35;
    sub_1000097A4();

    [a1 updateActions];
    return;
  }

LABEL_19:
  __break(1u);
}

unint64_t sub_10002123C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003598(&qword_100042070, &qword_100029DA8);
    v3 = sub_100026D30();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000161E8(v4, v13, &qword_100042068, &qword_100029DA0);
      result = sub_100024EFC(v13);
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
      result = sub_10002154C(&v15, (v3[7] + 32 * result));
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

unint64_t sub_100021378(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003598(&qword_100041F98, &unk_100029CF0);
    v3 = sub_100026D30();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000161E8(v4, &v11, &qword_100041F80, &qword_100029CE8);
      v5 = v11;
      result = sub_100024F40(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10002154C(&v12, (v3[7] + 32 * result));
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

void sub_1000214A4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_10001BE88();
}

uint64_t sub_1000214AC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10002150C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100021534(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

_OWORD *sub_10002154C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10002155C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

void sub_1000215B0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_10001CBD0();
}

uint64_t sub_1000215B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003598(&qword_100041D80, &qword_100029D10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100021628()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002167C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003598(&unk_1000422E0, &unk_10002A0F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000216EC()
{
  result = qword_100042020;
  if (!qword_100042020)
  {
    sub_100003508(&qword_100042018, &qword_100029D28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042020);
  }

  return result;
}

uint64_t sub_100021750()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100021790(char *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_10001C838(a1);
}

uint64_t sub_100021798()
{

  return _swift_deallocObject(v0, 56, 7);
}

void sub_1000217EC()
{
  v1 = v0;
  v2 = sub_100026680();
  v3 = sub_100026B90();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Invalidating editor", v4, 2u);
  }

  sub_1000193C0();
  v5 = *(v1 + OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor_editor);
  *(v1 + OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor_editor) = 0;

  v6 = sub_100020A34();
  if (!v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = [v6 view];
  if (!v7)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = v7;
  [v7 removeFromSuperview];

  v9 = *(v1 + OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor__monogramViewController);
  *(v1 + OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor__monogramViewController) = 0;

  sub_100020A90();
  if (!v10)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v11 = [v10 view];
  if (!v11)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v12 = v11;
  [v11 removeFromSuperview];

  v13 = *(v1 + OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor__backgroundViewController);
  *(v1 + OBJC_IVAR____TtC23MonogramPosterExtension20MonogramPosterEditor__backgroundViewController) = 0;

  oslog = sub_100026680();
  v14 = sub_100026B90();
  if (os_log_type_enabled(oslog, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v14, "Invalidated editor", v15, 2u);
  }
}

uint64_t sub_1000219D4()
{
  v0 = sub_1000261F0();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_1000269E0();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_100003598(&qword_100040F98, &qword_1000293D0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100029900;
  sub_1000269D0();
  sub_1000261E0();
  sub_100026A30();
  v10 = 0u;
  v11 = 0u;
  v5 = sub_1000269F0();
  v6 = sub_1000269F0();

  v7 = objc_allocWithZone(PREditingLook);
  v8 = [v7 initWithIdentifier:v5 displayName:v6 initialTimeFontConfiguration:0 initialTitleColor:{0, v10, v11}];

  swift_unknownObjectRelease();
  *(v4 + 32) = v8;
  return v4;
}

uint64_t sub_100021C80()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100021CC8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10001FEB0;

  return sub_1000191A4(v2, v3, v4);
}

uint64_t sub_100021D80()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100022614;

  return sub_10001FCE0(v2, v3, v5);
}

uint64_t sub_100021E40()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100021E80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100022614;

  return sub_10001FDC8(a1, v4, v5, v7);
}

uint64_t sub_100021F4C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100021F84(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100022614;

  return sub_1000202A0(a1, v5);
}

uint64_t sub_10002203C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001FEB0;

  return sub_1000202A0(a1, v5);
}

unint64_t sub_1000220F4()
{
  result = qword_100042048;
  if (!qword_100042048)
  {
    sub_100003508(&qword_100042040, &qword_100029D90);
    sub_100022180();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042048);
  }

  return result;
}

unint64_t sub_100022180()
{
  result = qword_100042050;
  if (!qword_100042050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042050);
  }

  return result;
}

uint64_t sub_1000221D4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100022228(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_10002227C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  sub_10001F91C(v1);
}

uint64_t sub_1000222A4()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100022370()
{
  result = qword_100042080;
  if (!qword_100042080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042080);
  }

  return result;
}

uint64_t sub_1000223C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100022420()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return sub_10001B8C4(*(v0 + 16));
}

uint64_t sub_100022440(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for MonogramPosterEditor.Errors(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for MonogramPosterEditor.Errors(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_100022574()
{
  result = qword_100042090;
  if (!qword_100042090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042090);
  }

  return result;
}

Swift::Int sub_100022658(char a1, double a2, float a3)
{
  sub_100026DC0();
  sub_100026890();
  sub_100026DE0(a1 & 1);
  v5 = 0.0;
  if (a3 != 0.0)
  {
    v5 = a3;
  }

  sub_100026DF0(LODWORD(v5));
  return sub_100026E10();
}

BOOL sub_1000226D4(float *a1, float *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a1[3];
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = a2[3];
  v8 = sub_100026880();
  result = 0;
  if ((v8 & 1) != 0 && ((v3 ^ v6) & 1) == 0)
  {
    return v4 == v7;
  }

  return result;
}

void sub_100022740()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 3);
  sub_100026890();
  sub_100026DE0(v2);
  v4 = 0.0;
  if (v3 != 0.0)
  {
    v4 = v3;
  }

  sub_100026DF0(LODWORD(v4));
}

Swift::Int sub_1000227A0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 3);
  sub_100026DC0();
  sub_100026890();
  sub_100026DE0(v2);
  v4 = 0.0;
  if (v3 != 0.0)
  {
    v4 = v3;
  }

  sub_100026DF0(LODWORD(v4));
  return sub_100026E10();
}

uint64_t sub_100022818()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100026710();

  return v1;
}

uint64_t sub_100022894()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);
  swift_unknownObjectRelease();
  v3 = OBJC_IVAR____TtC23MonogramPosterExtension18LightAngleObserver__parameters;
  v4 = sub_100003598(&qword_1000421E8, &qword_10002A008);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LightAngleObserver()
{
  result = qword_1000420D0;
  if (!qword_1000420D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000229A8()
{
  sub_100022A60();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100022A60()
{
  if (!qword_1000420E0)
  {
    v0 = sub_100026730();
    if (!v1)
    {
      atomic_store(v0, &qword_1000420E0);
    }
  }
}

uint64_t getEnumTagSinglePayload for GlassParameters(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 16))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for GlassParameters(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_100022B58()
{
  result = qword_1000421E0;
  if (!qword_1000421E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000421E0);
  }

  return result;
}

uint64_t sub_100022BAC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LightAngleObserver();
  result = sub_1000266D0();
  *a1 = result;
  return result;
}

double sub_100022BEC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100026710();

  result = v5;
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 12) = v7;
  return result;
}

uint64_t sub_100022C80(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 3);
  v5 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_100026720();
}

void sub_100022D10()
{
  v1 = v0;
  v2 = sub_100026680();
  v3 = sub_100026B90();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v42 = v5;
    *v4 = 136315138;
    v39 = *&v1[OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer_currentSalientRect];
    v40 = *&v1[OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer_currentSalientRect + 16];
    v41 = v1[OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer_currentSalientRect + 32];
    sub_100003598(&unk_1000422D0, &qword_10002A0E8);
    v6 = sub_100026A40();
    v8 = sub_100025380(v6, v7, &v42);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Salient Rects found. Setting it to render view: %s", v4, 0xCu);
    sub_10000B7E0(v5);
  }

  v9 = &v1[OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer_currentSalientRect];
  if ((v1[OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer_currentSalientRect + 32] & 1) == 0)
  {
    v10 = *v9;
    v11 = v9[1];
    v12 = v9[2];
    v13 = v9[3];
    v14 = *v9;
    v43.origin.x = *v9;
    v43.origin.y = v11;
    v43.size.width = v12;
    v43.size.height = v13;
    if (!CGRectIsEmpty(v43))
    {
      v22 = sub_100025990(&OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer__monogramViewController, type metadata accessor for MonogramPosterViewController);
      if (!v22)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v23 = v22;
      v24 = &v22[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_salientRect];
      v25 = *&v22[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_salientRect];
      v26 = *&v22[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_salientRect + 8];
      v27 = *&v22[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_salientRect + 16];
      v28 = *&v22[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_salientRect + 24];
      v29 = v22[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_salientRect + 32];
      *v24 = v10;
      v24[1] = v11;
      v24[2] = v12;
      v24[3] = v13;
      *(v24 + 32) = 0;
      if (v29)
      {
        v30 = v22;
      }

      else
      {
        v31 = v22;
        v44.origin.x = v25;
        v44.origin.y = v26;
        v44.size.width = v27;
        v44.size.height = v28;
        v46.origin.x = v14;
        v46.origin.y = v11;
        v46.size.width = v12;
        v46.size.height = v13;
        if (CGRectEqualToRect(v44, v46))
        {
          goto LABEL_16;
        }
      }

      sub_100008F28();
LABEL_16:

      v19 = sub_100025990(&OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer__backgroundViewController, type metadata accessor for MonogramPosterBackgroundViewController);
      if (v19)
      {
        v32 = &v19[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_salientRect];
        v33 = *&v19[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_salientRect];
        v34 = *&v19[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_salientRect + 8];
        v35 = *&v19[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_salientRect + 16];
        v36 = *&v19[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_salientRect + 24];
        v37 = v19[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_salientRect + 32];
        *v32 = v10;
        v32[1] = v11;
        v32[2] = v12;
        v32[3] = v13;
        *(v32 + 32) = 0;
        if ((v37 & 1) == 0)
        {
          v38 = v19;
          v45.origin.x = v33;
          v45.origin.y = v34;
          v45.size.width = v35;
          v45.size.height = v36;
          v47.origin.x = v14;
          v47.origin.y = v11;
          v47.size.width = v12;
          v47.size.height = v13;
          if (CGRectEqualToRect(v45, v47))
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }

LABEL_18:
        v38 = v19;
LABEL_19:
        sub_10000402C();
LABEL_20:

        return;
      }

LABEL_26:
      __break(1u);
      return;
    }
  }

  v15 = sub_100025990(&OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer__monogramViewController, type metadata accessor for MonogramPosterViewController);
  if (!v15)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v16 = &v15[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_salientRect];
  v17 = v15[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_salientRect + 32];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v16[32] = 1;
  if (v17 != 1)
  {
    v18 = v15;
    sub_100008F28();
  }

  v19 = sub_100025990(&OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer__backgroundViewController, type metadata accessor for MonogramPosterBackgroundViewController);
  if (!v19)
  {
    goto LABEL_24;
  }

  v20 = &v19[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_salientRect];
  v21 = v19[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_salientRect + 32];
  *v20 = 0u;
  *(v20 + 1) = 0u;
  v20[32] = 1;
  if ((v21 & 1) == 0)
  {
    goto LABEL_18;
  }
}

void sub_1000230B8(void *a1, void *a2)
{
  v3 = v2;
  swift_unknownObjectRetain();
  v6 = sub_100026680();
  v7 = sub_100026B90();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v62[0] = v9;
    *v8 = 136315138;
    v10 = [a2 description];
    v11 = sub_100026A20();
    v13 = v12;

    v14 = sub_100025380(v11, v13, v62);

    *(v8 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "Initializing renderer with poster environment: %s", v8, 0xCu);
    sub_10000B7E0(v9);
  }

  v62[4] = sub_1000237AC;
  v62[5] = 0;
  v62[0] = _NSConcreteStackBlock;
  v62[1] = 1107296256;
  v62[2] = sub_1000237FC;
  v62[3] = &unk_10003A678;
  v15 = _Block_copy(v62);

  [a1 updatePreferences:v15];
  _Block_release(v15);
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
    goto LABEL_31;
  }

  v16 = [a2 deviceOrientation];
  v17 = v3 + OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer_currentOrientation;
  *v17 = v16;
  *(v17 + 8) = 0;
  v18 = sub_100025990(&OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer__backgroundViewController, type metadata accessor for MonogramPosterBackgroundViewController);
  if (!v18)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v19 = v18;
  v20 = sub_100025990(&OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer__monogramViewController, type metadata accessor for MonogramPosterViewController);
  v21 = &off_100039C98;
  if (!v20)
  {
    v21 = 0;
  }

  *&v19[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_delegate + 8] = v21;
  swift_unknownObjectWeakAssign();

  v22 = sub_100025990(&OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer__backgroundViewController, type metadata accessor for MonogramPosterBackgroundViewController);
  if (!v22)
  {
    goto LABEL_32;
  }

  v23 = v22;
  v24 = [a2 isSnapshot];
  v23[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_isSnapshot] = v24;
  v25 = *&v23[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_simulationView];
  if (v25)
  {
    v25[OBJC_IVAR____TtC23MonogramPosterExtension24BackgroundSimulationView_isSnapshot] = v24;
    v26 = *&v25[OBJC_IVAR____TtC23MonogramPosterExtension24BackgroundSimulationView_motion];
    if (v26)
    {
      v27 = *(v26 + OBJC_IVAR____TtC23MonogramPosterExtension6Motion_isSnapshot);
      *(v26 + OBJC_IVAR____TtC23MonogramPosterExtension6Motion_isSnapshot) = v24;
      if (v24 != v27)
      {
        v28 = *(v26 + OBJC_IVAR____TtC23MonogramPosterExtension6Motion_motion);
        v29 = v24;
        v30 = v25;

        v31 = &selRef_stopDeviceMotionUpdates;
        if (!v29)
        {
          v31 = &selRef_startDeviceMotionUpdates;
        }

        [v28 *v31];
      }
    }
  }

  v32 = sub_100025990(&OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer__monogramViewController, type metadata accessor for MonogramPosterViewController);
  if (!v32)
  {
    goto LABEL_33;
  }

  v33 = v32;
  v34 = [a2 isSnapshot];
  v33[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_isSnapshot] = v34;
  sub_1000082D0();

  v35 = [a2 sourceTimeFontConfiguration];
  if (v35)
  {
    v36 = v35;
    v37 = sub_100025990(&OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer__monogramViewController, type metadata accessor for MonogramPosterViewController);
    if (!v37)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v38 = PRPosterRoleIncomingCall;
    v39 = v37;
    v40 = [v36 effectiveFontForRole:v38];
    sub_10000B57C(v40);
  }

  sub_100023864(a2);
  v41 = [a1 backgroundView];
  v42 = sub_100025990(&OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer__backgroundViewController, type metadata accessor for MonogramPosterBackgroundViewController);
  if (!v42)
  {
    goto LABEL_34;
  }

  v43 = [v42 view];
  if (!v43)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v44 = v43;
  [v41 addSubview:v43];

  v45 = sub_100025990(&OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer__backgroundViewController, type metadata accessor for MonogramPosterBackgroundViewController);
  if (!v45)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v46 = [v45 view];
  if (!v46)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v47 = v46;
  v48 = [a1 backgroundView];
  sub_100007F74(v48);

  v49 = [a1 floatingView];
  v50 = sub_100025990(&OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer__monogramViewController, type metadata accessor for MonogramPosterViewController);
  if (!v50)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v51 = [v50 view];
  if (!v51)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v52 = v51;
  [v49 addSubview:v51];

  v53 = sub_100025990(&OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer__backgroundViewController, type metadata accessor for MonogramPosterBackgroundViewController);
  if (!v53)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v54 = v53;
  sub_10000402C();

  if (*(v3 + OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer_isIPad) == 1)
  {
    sub_10002427C([a2 deviceOrientation], a1);
LABEL_29:
    [a2 salientContentRectangle];
    v57 = v3 + OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer_currentSalientRect;
    *v57 = v58;
    *(v57 + 8) = v59;
    *(v57 + 16) = v60;
    *(v57 + 24) = v61;
    *(v57 + 32) = 0;
    sub_100022D10();
    return;
  }

  v55 = sub_100025990(&OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer__monogramViewController, type metadata accessor for MonogramPosterViewController);
  if (v55)
  {
    v56 = v55;
    sub_100009B64([a2 deviceOrientation]);

    goto LABEL_29;
  }

LABEL_42:
  __break(1u);
}

id sub_1000237AC(void *a1)
{
  [a1 setContentOcclusionRectangleUpdatesRequested:1];

  return [a1 setSalientContentRectangleUpdatesRequested:1];
}

uint64_t sub_1000237FC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  swift_unknownObjectRetain();
  v7 = a3;
  v6(a2, v7);

  return swift_unknownObjectRelease();
}

uint64_t sub_100023864(void *a1)
{
  v2 = v1;
  v4 = sub_1000263C0();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v92 = &v88[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_100026390();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v88[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v14 = &v88[-v13];
  v15 = sub_1000262C0();
  v94 = *(v15 - 8);
  v95 = v15;
  v16 = *(v94 + 64);
  __chkstk_darwin(v15);
  v93 = &v88[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_unknownObjectRetain();
  v18 = sub_100026680();
  v19 = sub_100026B90();
  swift_unknownObjectRelease();
  v20 = os_log_type_enabled(v18, v19);
  v96 = v8;
  v91 = v14;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v99[0] = v90;
    *v21 = 136315138;
    v22 = [a1 description];
    v89 = v19;
    v23 = v22;
    v24 = v2;
    v25 = v7;
    v26 = sub_100026A20();
    v27 = v12;
    v29 = v28;

    v30 = v26;
    v7 = v25;
    v2 = v24;
    v31 = sub_100025380(v30, v29, v99);
    v12 = v27;

    *(v21 + 4) = v31;
    v8 = v96;
    _os_log_impl(&_mh_execute_header, v18, v89, "Loading poster configuration from poster environment: %s", v21, 0xCu);
    sub_10000B7E0(v90);
  }

  swift_unknownObjectWeakInit();
  v32 = [a1 contents];
  v99[0] = 0;
  v33 = [v32 loadUserInfoWithError:v99];
  swift_unknownObjectRelease();
  v34 = v99[0];
  if (v33)
  {
    v35 = v7;
    v36 = sub_1000269A0();
    v37 = v34;

    v38 = v94;
    v39 = v95;
    v40 = v93;
    (*(v94 + 104))(v93, enum case for MonogramPosterUserInfoKey.dataRepresentation(_:), v95);
    v41 = sub_1000262B0();
    v43 = v42;
    (*(v38 + 8))(v40, v39);
    v97 = v41;
    v98 = v43;
    sub_100026C70();
    if (*(v36 + 16) && (v44 = sub_100024EFC(v99), (v45 & 1) != 0))
    {
      sub_1000223C4(*(v36 + 56) + 32 * v44, v100);
      sub_10002231C(v99);

      v46 = v35;
      if (swift_dynamicCast())
      {
        v48 = v97;
        v47 = v98;
        v49 = sub_100026180();
        v50 = *(v49 + 48);
        v51 = *(v49 + 52);
        swift_allocObject();
        v52 = sub_100026170();
        sub_100026028();
        v53 = v91;
        sub_100026160();
        v93 = v52;
        v94 = v48;
        v95 = v47;
        v92 = v12;
        v75 = OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer_configuration;
        swift_beginAccess();
        v76 = v96;
        (*(v96 + 24))(&v2[v75], v53, v35);
        swift_endAccess();
        sub_100024620();
        v77 = *(v76 + 8);
        v77(v53, v35);
        v78 = v2;
        v79 = sub_100026680();
        v80 = sub_100026B90();

        if (os_log_type_enabled(v79, v80))
        {
          v82 = swift_slowAlloc();
          v91 = swift_slowAlloc();
          v99[0] = v91;
          *v82 = 136315138;
          v83 = v92;
          (*(v76 + 16))(v92, &v2[v75], v35);
          v84 = sub_1000262E0();
          v86 = v85;
          v77(v83, v35);
          v87 = sub_100025380(v84, v86, v99);

          *(v82 + 4) = v87;
          _os_log_impl(&_mh_execute_header, v79, v80, "Did load poster configuration: %s", v82, 0xCu);
          sub_10000B7E0(v91);
        }

        sub_1000221D4(v94, v95);

        return swift_unknownObjectWeakDestroy();
      }
    }

    else
    {

      sub_10002231C(v99);
      v46 = v35;
    }

    v54 = sub_100026680();
    v55 = sub_100026BB0();
    v56 = os_log_type_enabled(v54, v55);
    v57 = v96;
    if (v56)
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&_mh_execute_header, v54, v55, "Error fetching poster data representation from user info", v58, 2u);
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v60 = Strong;
      type metadata accessor for MonogramPosterColorGenerator();
      sub_10000F330(v92);
      sub_1000262D0();
      v61 = OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer_configuration;
      swift_beginAccess();
      (*(v57 + 24))(&v60[v61], v12, v46);
      swift_endAccess();
      sub_100024620();

      (*(v57 + 8))(v12, v46);
    }

    return swift_unknownObjectWeakDestroy();
  }

  v62 = v99[0];
  sub_1000261D0();

  swift_willThrow();
  swift_errorRetain();
  v63 = sub_100026680();
  v64 = sub_100026BB0();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = v12;
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v99[0] = v67;
    *v66 = 136315138;
    swift_getErrorValue();
    v68 = sub_100026D70();
    v70 = sub_100025380(v68, v69, v99);

    *(v66 + 4) = v70;
    _os_log_impl(&_mh_execute_header, v63, v64, "Error decoding poster configuration: %s", v66, 0xCu);
    sub_10000B7E0(v67);

    v12 = v65;
  }

  swift_beginAccess();
  v71 = swift_unknownObjectWeakLoadStrong();
  if (!v71)
  {
    swift_unknownObjectWeakDestroy();
  }

  v72 = v71;
  type metadata accessor for MonogramPosterColorGenerator();
  sub_10000F330(v92);
  sub_1000262D0();
  v73 = OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer_configuration;
  swift_beginAccess();
  (*(v8 + 24))(&v72[v73], v12, v7);
  swift_endAccess();
  sub_100024620();

  (*(v8 + 8))(v12, v7);
  return swift_unknownObjectWeakDestroy();
}

void sub_10002427C(uint64_t a1, void *a2)
{
  v4 = sub_100025990(&OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer__monogramViewController, type metadata accessor for MonogramPosterViewController);
  if (v4)
  {
    v5 = [v4 view];
    if (v5)
    {
      v6 = v5;
      v7 = [a2 floatingView];
      *&v21.a = 0x3FF0000000000000uLL;
      v21.c = 0.0;
      v21.d = 1.0;
      *&v21.tx = 0uLL;
      [v6 setTransform:&v21];
      [v7 bounds];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v16 = 0.0;
      if ((a1 - 2) <= 2)
      {
        v16 = dbl_10002A100[a1 - 2];
      }

      CGAffineTransformMakeRotation(&v21, v16);
      [v6 setTransform:&v21];
      [v6 setFrame:{v9, v11, v13, v15}];
      [v7 bounds];
      MidX = CGRectGetMidX(v22);
      [v7 bounds];
      [v6 setCenter:{MidX, CGRectGetMidY(v23)}];
      v18 = sub_100026680();
      v19 = sub_100026B90();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 134218240;
        *(v20 + 4) = a1;
        *(v20 + 12) = 2048;
        *(v20 + 14) = v16;
        _os_log_impl(&_mh_execute_header, v18, v19, "Applied transform for orientation: %ld, angle: %f", v20, 0x16u);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100024620()
{
  v0 = sub_100003598(&unk_1000422E0, &unk_10002A0F0);
  v1 = *(*(v0 - 8) + 64);
  v2 = __chkstk_darwin(v0 - 8);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v42 - v5;
  v7 = sub_100026680();
  v8 = sub_100026B90();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Configuration changed, updating views", v9, 2u);
  }

  v10 = sub_100025990(&OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer__backgroundViewController, type metadata accessor for MonogramPosterBackgroundViewController);
  if (!v10)
  {
    __break(1u);
    goto LABEL_10;
  }

  v11 = v10;
  sub_1000260DC();
  swift_beginAccess();
  v12 = v11;
  v13 = sub_100026330();
  swift_endAccess();
  v14._rawValue = v13;
  v15.super.isa = sub_100026BF0(v14).super.isa;
  v16 = *&v12[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_backgroundColor];
  *&v12[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_backgroundColor] = v15;

  v17 = sub_100025990(&OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer__backgroundViewController, type metadata accessor for MonogramPosterBackgroundViewController);
  if (!v17)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v18 = v17;
  swift_beginAccess();
  v19 = v18;
  v20 = sub_100026350();
  swift_endAccess();
  v21._rawValue = v20;
  v22.super.isa = sub_100026BF0(v21).super.isa;
  v23 = *&v19[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_topBackgroundColor];
  *&v19[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_topBackgroundColor] = v22;

  v24 = sub_100025990(&OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer__monogramViewController, type metadata accessor for MonogramPosterViewController);
  if (!v24)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v25 = v24;
  swift_beginAccess();
  v26 = v25;
  v27 = sub_100026370();
  v29 = v28;
  swift_endAccess();
  v30 = &v26[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_monogramString];
  v31 = *&v26[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_monogramString + 8];
  *v30 = v27;
  v30[1] = v29;

  v32 = *&v26[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_hiddenLabel];

  v33 = sub_1000269F0();

  [v32 setText:v33];

  v34 = sub_100025990(&OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer__backgroundViewController, type metadata accessor for MonogramPosterBackgroundViewController);
  if (!v34)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v35 = v34;
  swift_beginAccess();
  v36 = v35;
  sub_100026300();
  swift_endAccess();
  v37 = OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_customGradientDefinition;
  swift_beginAccess();
  sub_10002167C(v6, v36 + v37);
  swift_endAccess();

  v38 = sub_100025990(&OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer__monogramViewController, type metadata accessor for MonogramPosterViewController);
  if (v38)
  {
    v39 = v38;
    swift_beginAccess();
    v40 = v39;
    sub_100026300();
    swift_endAccess();
    v41 = sub_100026610();
    LOBYTE(v39) = (*(*(v41 - 8) + 48))(v4, 1, v41) == 1;
    sub_100004FE0(v4);
    v40[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_supportsSilhouette] = v39;

    return;
  }

LABEL_13:
  __break(1u);
}

id sub_100024A8C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1000263C0();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v0[OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer__backgroundViewController] = 0;
  *&v0[OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer__monogramViewController] = 0;
  *&v0[OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer_currentOcclusionRects] = 0;
  v7 = &v0[OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer_currentSalientRect];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  v7[32] = 1;
  v8 = &v0[OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer_currentOrientation];
  *v8 = 0;
  v8[8] = 1;
  v9 = OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer_isIPad;
  v10 = [objc_opt_self() currentDevice];
  v11 = [v10 userInterfaceIdiom];

  v1[v9] = v11 == 1;
  sub_100026690();
  type metadata accessor for MonogramPosterColorGenerator();
  sub_10000F330(v6);
  sub_1000262D0();
  v13.receiver = v1;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, "init");
}

uint64_t type metadata accessor for MonogramPosterRenderer()
{
  result = qword_1000422B8;
  if (!qword_1000422B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100024D90()
{
  result = sub_1000266A0();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_100026390();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

unint64_t sub_100024E84(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_100026DC0();
  sub_100026A90();
  v6 = sub_100026E10();

  return sub_100025040(a1, a2, v6);
}

unint64_t sub_100024EFC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100026C50(*(v2 + 40));

  return sub_1000250F8(a1, v4);
}

unint64_t sub_100024F40(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_100026A20();
  sub_100026DC0();
  sub_100026A90();
  v4 = sub_100026E10();

  return sub_1000251C0(a1, v4);
}

unint64_t sub_100024FD4(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_100026DC0();
  sub_100025928(v6, a1);
  v4 = sub_100026E10();

  return sub_1000252C4(a1, v4);
}

unint64_t sub_100025040(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100026D60())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1000250F8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100026080(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_100026C60();
      sub_10002231C(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1000251C0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_100026A20();
      v9 = v8;
      if (v7 == sub_100026A20() && v9 == v10)
      {
        break;
      }

      v12 = sub_100026D60();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1000252C4(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    v7 = *(a1 + 16);
    while (1)
    {
      v8 = *(*(v2 + 48) + 8 * result);
      if (*(v8 + 16) == v7)
      {
        break;
      }

LABEL_3:
      result = (result + 1) & v6;
      if (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
      {
        return result;
      }
    }

    if (v7 && v8 != a1)
    {
      v9 = (v8 + 32);
      v10 = (a1 + 32);
      v11 = *(a1 + 16);
      while (v11)
      {
        if (*v9 != *v10)
        {
          goto LABEL_3;
        }

        ++v9;
        ++v10;
        if (!--v11)
        {
          return result;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100025380(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10002544C(v11, 0, 0, 1, a1, a2);
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
    sub_1000223C4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000B7E0(v11);
  return v7;
}

unint64_t sub_10002544C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100025558(a5, a6);
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
    result = sub_100026CB0();
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

char *sub_100025558(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000255A4(a1, a2);
  sub_1000256D4(&off_100039680);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_1000255A4(uint64_t a1, unint64_t a2)
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

  v6 = sub_1000257C0(v5, 0);
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

  result = sub_100026CB0();
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
        v10 = sub_100026AC0();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000257C0(v10, 0);
        result = sub_100026C90();
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

uint64_t sub_1000256D4(uint64_t result)
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

  result = sub_100025834(result, v12, 1, v3);
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

void *sub_1000257C0(uint64_t a1, uint64_t a2)
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

  sub_100003598(&qword_1000422C8, &qword_10002A0E0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100025834(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003598(&qword_1000422C8, &qword_10002A0E0);
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

void sub_100025928(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  sub_100026DD0(v3);
  if (v3)
  {
    v4 = (a2 + 32);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v5 == 0.0)
      {
        v6 = 0.0;
      }

      sub_100026E00(*&v6);
      --v3;
    }

    while (v3);
  }
}

uint64_t sub_100025990(uint64_t *a1, void (*a2)(void))
{
  v3 = *a1;
  result = *(v2 + *a1);
  if (!result)
  {
    a2();
    v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v6 = *(v2 + v3);
    *(v2 + v3) = v5;

    result = *(v2 + v3);
    if (!result)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1000259EC(void *a1, void *a2)
{
  v3 = v2;
  swift_unknownObjectRetain();
  v6 = sub_100026680();
  v7 = sub_100026B90();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v40 = v9;
    *v8 = 136315138;
    v10 = [a2 description];
    v11 = sub_100026A20();
    v13 = v12;

    v14 = sub_100025380(v11, v13, &v40);

    *(v8 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "Updating renderer with poster environment: %s", v8, 0xCu);
    sub_10000B7E0(v9);
  }

  v15 = sub_100025990(&OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer__backgroundViewController, type metadata accessor for MonogramPosterBackgroundViewController);
  if (!v15)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v16 = v15;
  v17 = [a2 isSnapshot];
  v16[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_isSnapshot] = v17;
  v18 = *&v16[OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_simulationView];
  if (v18)
  {
    v18[OBJC_IVAR____TtC23MonogramPosterExtension24BackgroundSimulationView_isSnapshot] = v17;
    v19 = *&v18[OBJC_IVAR____TtC23MonogramPosterExtension24BackgroundSimulationView_motion];
    if (v19)
    {
      v20 = *(v19 + OBJC_IVAR____TtC23MonogramPosterExtension6Motion_isSnapshot);
      *(v19 + OBJC_IVAR____TtC23MonogramPosterExtension6Motion_isSnapshot) = v17;
      if (v17 != v20)
      {
        v21 = *(v19 + OBJC_IVAR____TtC23MonogramPosterExtension6Motion_motion);
        v22 = v17;
        v23 = v18;

        v24 = &selRef_stopDeviceMotionUpdates;
        if (!v22)
        {
          v24 = &selRef_startDeviceMotionUpdates;
        }

        [v21 *v24];
      }
    }
  }

  v25 = sub_100025990(&OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer__monogramViewController, type metadata accessor for MonogramPosterViewController);
  if (!v25)
  {
    goto LABEL_20;
  }

  v26 = v25;
  v27 = [a2 isSnapshot];
  v26[OBJC_IVAR____TtC23MonogramPosterExtension28MonogramPosterViewController_isSnapshot] = v27;
  sub_1000082D0();

  sub_100023864(a2);
  v28 = sub_100025990(&OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer__backgroundViewController, type metadata accessor for MonogramPosterBackgroundViewController);
  if (!v28)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v29 = v28;
  sub_10000402C();

  if (*(v3 + OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer_isIPad) == 1)
  {
    sub_10002427C([a2 deviceOrientation], a1);
    v30 = sub_100025990(&OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer__backgroundViewController, type metadata accessor for MonogramPosterBackgroundViewController);
    if (v30)
    {
      if (*(v30 + OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_meshGradientModel))
      {
        v31 = *(v30 + OBJC_IVAR____TtC23MonogramPosterExtension38MonogramPosterBackgroundViewController_meshGradientModel);

        v32 = [a2 deviceOrientation];
        swift_getKeyPath();
        swift_getKeyPath();
        v40 = v32;
        sub_100026720();
      }

      goto LABEL_18;
    }

    goto LABEL_22;
  }

  v33 = sub_100025990(&OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer__monogramViewController, type metadata accessor for MonogramPosterViewController);
  if (v33)
  {
    v34 = v33;
    sub_100009B64([a2 deviceOrientation]);

LABEL_18:
    [a2 salientContentRectangle];
    v35 = v3 + OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer_currentSalientRect;
    *v35 = v36;
    *(v35 + 8) = v37;
    *(v35 + 16) = v38;
    *(v35 + 24) = v39;
    *(v35 + 32) = 0;
    sub_100022D10();
    return;
  }

LABEL_23:
  __break(1u);
}

void sub_100025E18()
{
  v1 = v0;
  v2 = sub_100026680();
  v3 = sub_100026B90();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Invalidating renderer", v4, 2u);
  }

  v5 = sub_100025990(&OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer__monogramViewController, type metadata accessor for MonogramPosterViewController);
  if (!v5)
  {
    __break(1u);
    goto LABEL_13;
  }

  v6 = [v5 view];
  if (!v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = v6;
  [v6 removeFromSuperview];

  v8 = *(v1 + OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer__monogramViewController);
  *(v1 + OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer__monogramViewController) = 0;

  v9 = sub_100025990(&OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer__backgroundViewController, type metadata accessor for MonogramPosterBackgroundViewController);
  if (!v9)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = [v9 view];
  if (!v10)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v11 = v10;
  [v10 removeFromSuperview];

  v12 = *(v1 + OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer__backgroundViewController);
  *(v1 + OBJC_IVAR____TtC23MonogramPosterExtension22MonogramPosterRenderer__backgroundViewController) = 0;

  oslog = sub_100026680();
  v13 = sub_100026B90();
  if (os_log_type_enabled(oslog, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v13, "Invalidated renderer", v14, 2u);
  }
}

unint64_t sub_100026028()
{
  result = qword_100042088;
  if (!qword_100042088)
  {
    sub_100026390();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042088);
  }

  return result;
}

unint64_t sub_1000260DC()
{
  result = qword_100041F70;
  if (!qword_100041F70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100041F70);
  }

  return result;
}

uint64_t sub_100026128(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__double2 __sincos_stret(double a1)
{
  v3 = ___sincos_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}