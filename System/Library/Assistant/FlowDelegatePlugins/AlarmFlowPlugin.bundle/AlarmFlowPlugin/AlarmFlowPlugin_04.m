uint64_t sub_769D4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v120 = a4;
  v121 = a3;
  v122 = a2;
  v133 = a5;
  v119 = sub_104700();
  v117 = *(v119 - 8);
  v7 = *(v117 + 64);
  __chkstk_darwin(v119);
  v118 = v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_106410();
  v113 = *(v9 - 8);
  v114 = v9;
  v10 = *(v113 + 64);
  __chkstk_darwin(v9);
  v112 = v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25E4(&unk_137430, &qword_107DC0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v123 = v104 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v125 = v104 - v16;
  v17 = sub_25E4(&qword_137518, &qword_107E28);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v124 = v104 - v19;
  v20 = sub_25E4(&qword_137598, &unk_107EB0);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v111 = v104 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v26 = v104 - v25;
  __chkstk_darwin(v24);
  v28 = v104 - v27;
  v29 = sub_106160();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v32 = __chkstk_darwin(v29);
  v110 = v104 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v130 = v104 - v35;
  __chkstk_darwin(v34);
  v132 = v104 - v36;
  v37 = sub_104670();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  v40 = __chkstk_darwin(v37);
  v128 = v104 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v43 = v104 - v42;
  sub_106210();
  v126 = v5;
  v44 = sub_75DD4(0, v43, 0);
  v127 = v38;
  v45 = *(v38 + 8);
  v129 = v37;
  v115 = v45;
  v116 = v38 + 8;
  v45(v43, v37);
  if (!v44)
  {
    if (qword_136D28 != -1)
    {
      swift_once();
    }

    v48 = sub_106D20();
    sub_135C4(v48, qword_138C90);
    v49 = sub_106D10();
    v50 = sub_106FB0();
    v51 = os_log_type_enabled(v49, v50);
    v52 = v133;
    if (v51)
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_0, v49, v50, "Can NOT retrieve alarm data.", v53, 2u);
    }

    goto LABEL_15;
  }

  v109 = a1;
  sub_14994(v44 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_formattedTimeString, v28, &qword_137598, &unk_107EB0);
  v46 = *(v30 + 48);
  v47 = v46(v28, 1, v29);
  v131 = v44;
  if (v47 == 1)
  {
    v26 = v28;
LABEL_10:
    v52 = v133;
    sub_16F70(v26, &qword_137598, &unk_107EB0);
    if (qword_136D28 != -1)
    {
      swift_once();
    }

    v57 = sub_106D20();
    sub_135C4(v57, qword_138C90);
    v49 = sub_106D10();
    v58 = sub_106FB0();
    if (os_log_type_enabled(v49, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_0, v49, v58, "Can NOT retrieve alarm formattedTimeString or labelForSnippetWithRecurrence.", v59, 2u);
    }

LABEL_15:

LABEL_16:
    v60 = 1;
    goto LABEL_17;
  }

  v108 = v43;
  v55 = v30 + 32;
  v54 = *(v30 + 32);
  v56 = v132;
  v54(v132, v28, v29);
  sub_14994(v44 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_labelForSnippetWithRecurrence, v26, &qword_137598, &unk_107EB0);
  v106 = v46;
  if (v46(v26, 1, v29) == 1)
  {
    (*(v30 + 8))(v56, v29);
    goto LABEL_10;
  }

  v105 = v30;
  v63 = v130;
  v54(v130, v26, v29);
  v64 = v124;
  v65 = v126;
  sub_EC644(v126, v124);
  v66 = v127;
  v67 = v129;
  v68 = (*(v127 + 48))(v64, 1, v129);
  v107 = v29;
  if (v68 == 1)
  {
    sub_16F70(v64, &qword_137518, &qword_107E28);
    if (qword_136D28 != -1)
    {
      swift_once();
    }

    v69 = sub_106D20();
    sub_135C4(v69, qword_138C90);
    v70 = sub_106D10();
    v71 = sub_106FB0();
    v72 = os_log_type_enabled(v70, v71);
    v52 = v133;
    v73 = v105;
    if (v72)
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_0, v70, v71, "Can NOT retrieve alarm Date.", v74, 2u);
    }

    v75 = *(v73 + 8);
    v76 = v107;
    v75(v63, v107);
    v75(v132, v76);
    goto LABEL_16;
  }

  v104[0] = v54;
  v104[1] = v55;
  (*(v66 + 32))(v128, v64, v67);
  v77 = v113;
  v78 = v114;
  v79 = *(v113 + 104);
  v80 = v112;
  v79(v112, enum case for PunchOutApp.alarm(_:), v114);
  v81 = v125;
  sub_106400();
  v82 = *(v77 + 8);
  v82(v80, v78);
  v83 = [v65 sleepAlarmAttribute];
  if (v83)
  {

    v79(v80, enum case for PunchOutApp.sleepAlarm(_:), v78);
    v84 = v123;
    sub_106400();
    v82(v80, v78);
    sub_16F70(v81, &unk_137430, &qword_107DC0);
    sub_7C278(v84, v81, &unk_137430, &qword_107DC0);
  }

  v85 = v108;
  if (*(v131 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_time))
  {
    v86 = *(v131 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_time);

    v87 = v111;
    sub_106050();
    v88 = v107;
    v89 = v106(v87, 1, v107);
    v90 = v128;
    if (v89 == 1)
    {

      sub_16F70(v87, &qword_137598, &unk_107EB0);
      v124 = 0;
      v114 = 0xE000000000000000;
    }

    else
    {
      v91 = v110;
      (v104[0])(v110, v87, v88);
      sub_106150();
      v124 = sub_106E60();
      v114 = v92;

      (*(v105 + 8))(v91, v107);
    }
  }

  else
  {
    v124 = 0;
    v114 = 0xE000000000000000;
    v90 = v128;
  }

  v93 = [v126 identifier];
  if (v93)
  {
    v94 = v93;
    v126 = sub_106E20();
    v122 = v95;
  }

  else
  {
    v126 = 0;
    v122 = 0xE000000000000000;
  }

  v113 = sub_106150();
  v112 = v96;
  (*(v127 + 16))(v85, v90, v129);
  LODWORD(v127) = *(v131 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_enabled);
  v111 = sub_106150();
  v110 = v97;
  v98 = qword_136ED0;

  if (v98 != -1)
  {
    swift_once();
  }

  v99 = v119;
  v100 = sub_135C4(v119, qword_13AF68);
  (*(v117 + 16))(v118, v100, v99);
  v101 = v125;
  sub_14994(v125, v123, &unk_137430, &qword_107DC0);
  v52 = v133;
  sub_106AD0();

  sub_16F70(v101, &unk_137430, &qword_107DC0);
  v115(v128, v129);
  v102 = *(v105 + 8);
  v103 = v107;
  v102(v130, v107);
  v102(v132, v103);
  v60 = 0;
LABEL_17:
  v61 = sub_106AE0();
  return (*(*(v61 - 8) + 56))(v52, v60, 1, v61);
}

void *sub_77720(uint64_t a1)
{
  v2 = v1;
  v4 = sub_104670();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25E4(&qword_137598, &unk_107EB0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v37 - v11;
  v13 = [v2 identifier];
  if (v13)
  {
    v14 = v13;
    v15 = sub_106E20();
    v17 = v16;

    sub_EB5A8(a1, v15, v17);

    swift_getObjectType();
    sub_79224(v12);
    swift_unknownObjectRelease();
    v18 = type metadata accessor for AlarmAlarm.Builder(0);
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    v21 = sub_7F454();
    v22 = OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_action;
    swift_beginAccess();
    sub_7C2E0(v12, v21 + v22);
    swift_endAccess();

    sub_106210();
    v23 = sub_75DD4(v21, v8, 0);

    (*(v5 + 8))(v8, v4);
    sub_16F70(v12, &qword_137598, &unk_107EB0);
  }

  else
  {
    if (qword_136D28 != -1)
    {
      swift_once();
    }

    v24 = sub_106D20();
    sub_135C4(v24, qword_138C90);
    v25 = v2;
    v26 = sub_106D10();
    v27 = sub_106FB0();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v38 = v29;
      *v28 = 136315138;
      v30 = v25;
      v31 = [v30 description];
      v32 = sub_106E20();
      v34 = v33;

      v35 = sub_722E8(v32, v34, &v38);

      *(v28 + 4) = v35;
      _os_log_impl(&dword_0, v26, v27, "Alarm ID was nil for alarm: %s", v28, 0xCu);
      sub_2738(v29);
    }

    return 0;
  }

  return v23;
}

uint64_t sub_77AA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a1;
  v89 = a2;
  v3 = sub_104700();
  v80 = *(v3 - 8);
  v81 = v3;
  v4 = *(v80 + 64);
  __chkstk_darwin(v3);
  v79 = v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25E4(&qword_137518, &qword_107E28);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v83 = v72 - v8;
  v9 = sub_25E4(&qword_137598, &unk_107EB0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v88 = v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v72 - v13;
  v15 = sub_106160();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = v72 - v21;
  v23 = sub_104670();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = __chkstk_darwin(v23);
  v85 = v72 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = v72 - v28;
  sub_106210();
  v84 = v2;
  v30 = sub_75DD4(0, v29, 0);
  v82 = v24;
  v32 = *(v24 + 8);
  v31 = v24 + 8;
  v86 = v23;
  v77 = v32;
  v32(v29, v23);
  if (!v30)
  {
    if (qword_136D28 != -1)
    {
      swift_once();
    }

    v36 = sub_106D20();
    sub_135C4(v36, qword_138C90);
    v37 = sub_106D10();
    v38 = sub_106FB0();
    v39 = os_log_type_enabled(v37, v38);
    v35 = v89;
    if (v39)
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_0, v37, v38, "Can NOT retrieve alarm data.", v40, 2u);
    }

    goto LABEL_15;
  }

  v76 = v20;
  v87 = v22;
  sub_14994(v30 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_formattedTimeString, v14, &qword_137598, &unk_107EB0);
  v33 = *(v16 + 48);
  if (v33(v14, 1, v15) == 1)
  {
    v34 = v14;
    v35 = v89;
LABEL_10:
    sub_16F70(v34, &qword_137598, &unk_107EB0);
    if (qword_136D28 != -1)
    {
      swift_once();
    }

    v43 = sub_106D20();
    sub_135C4(v43, qword_138C90);
    v37 = sub_106D10();
    v44 = sub_106FB0();
    if (os_log_type_enabled(v37, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_0, v37, v44, "Can NOT retrieve alarm formattedTimeString or labelForSnippetWithRecurrence.", v45, 2u);
    }

LABEL_15:

LABEL_16:
    v46 = 1;
    goto LABEL_17;
  }

  v74 = v31;
  v41 = v87;
  v42 = *(v16 + 32);
  v42();
  v75 = v30;
  v34 = v88;
  sub_14994(v30 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_labelForSnippetWithRecurrence, v88, &qword_137598, &unk_107EB0);
  if (v33(v34, 1, v15) == 1)
  {
    (*(v16 + 8))(v41, v15);
    v35 = v89;
    goto LABEL_10;
  }

  v73 = v16;
  v88 = v15;
  (v42)(v76, v34, v15);
  v50 = v83;
  v49 = v84;
  sub_EC644(v84, v83);
  v51 = v82;
  v52 = v86;
  if ((*(v82 + 48))(v50, 1, v86) == 1)
  {
    sub_16F70(v50, &qword_137518, &qword_107E28);
    v35 = v89;
    if (qword_136D28 != -1)
    {
      swift_once();
    }

    v53 = sub_106D20();
    sub_135C4(v53, qword_138C90);
    v54 = sub_106D10();
    v55 = sub_106FB0();
    v56 = os_log_type_enabled(v54, v55);
    v57 = v88;
    if (v56)
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_0, v54, v55, "Can NOT retrieve alarm Date.", v58, 2u);
    }

    v59 = *(v73 + 8);
    v59(v76, v57);
    v59(v87, v57);
    goto LABEL_16;
  }

  v60 = v85;
  (*(v51 + 32))(v85, v50, v52);
  v61 = [v49 identifier];
  if (v61)
  {
    v62 = v61;
    v63 = sub_106E20();
    v83 = v64;
    v84 = v63;
  }

  else
  {
    v83 = 0xE000000000000000;
    v84 = 0;
  }

  v65 = sub_106150();
  v72[0] = v66;
  v72[1] = v65;
  (*(v51 + 16))(v29, v60, v52);
  v67 = v76;
  sub_106150();
  sub_106950();
  if (qword_136ED0 != -1)
  {
    swift_once();
  }

  v68 = v81;
  v69 = sub_135C4(v81, qword_13AF68);
  (*(v80 + 16))(v79, v69, v68);
  v35 = v89;
  sub_106B80();

  v77(v85, v52);
  v70 = *(v73 + 8);
  v71 = v88;
  v70(v67, v88);
  v70(v87, v71);
  v46 = 0;
LABEL_17:
  v47 = sub_106B90();
  return (*(*(v47 - 8) + 56))(v35, v46, 1, v47);
}

uint64_t sub_78384()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_138C90);
  sub_135C4(v0, qword_138C90);
  return sub_106A60();
}

void sub_783D0()
{
  v0 = sub_25E4(&unk_137430, &qword_107DC0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v28 - v2;
  v4 = sub_104640();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v28 - v10;
  sub_78768(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_16F70(v3, &unk_137430, &qword_107DC0);
  }

  else
  {
    (*(v5 + 32))(v11, v3, v4);
    v12 = [objc_allocWithZone(SAAlarmObject) init];
    sub_104610(v13);
    v15 = v14;
    [v12 setIdentifier:v14];

    if (qword_136D28 != -1)
    {
      swift_once();
    }

    v16 = sub_106D20();
    sub_135C4(v16, qword_138C90);
    v17 = v12;
    v18 = sub_106D10();
    v19 = sub_106FC0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = v30;
      v29 = v20;
      *v20 = 136315138;
      v21 = [v17 identifier];

      if (v21)
      {
        sub_104620();

        v22 = sub_104600();
        v24 = v23;
        v25 = *(v5 + 8);
        v25(v9, v4);
        v26 = sub_722E8(v22, v24, &v31);

        v27 = v29;
        *(v29 + 1) = v26;
        _os_log_impl(&dword_0, v18, v19, "toSAAlarm: %s", v27, 0xCu);
        sub_2738(v30);

        v25(v11, v4);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {

      (*(v5 + 8))(v11, v4);
    }
  }
}

uint64_t sub_78768@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v2 = sub_106BB0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_104550();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [v1 identifier];
  if (v12)
  {
    v13 = v12;
    sub_106E20();
  }

  v14 = sub_106A30();
  v16 = v15;

  if (v16)
  {
    v47 = v14;
    v48 = v16;
    sub_104530();
    sub_7C40C();
    v17 = sub_107100();
    v19 = v18;
    (*(v8 + 8))(v11, v7);

    if (v19)
    {
      (*(v3 + 104))(v6, enum case for AlarmInternalIdentifierPrefix.idPrefix(_:), v2);
      v20 = sub_106BA0();
      v22 = v21;
      (*(v3 + 8))(v6, v2);
      v47 = v20;
      v48 = v22;

      v50._countAndFlagsBits = v17;
      v50._object = v19;
      sub_106E80(v50);

      sub_104630();
    }

    else
    {
      if (qword_136D28 != -1)
      {
        swift_once();
      }

      v35 = sub_106D20();
      sub_135C4(v35, qword_138C90);
      v36 = sub_106D10();
      v37 = sub_106FB0();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_0, v36, v37, "toAlarmId: Unable to add percent encoding to URL", v38, 2u);
      }

      v39 = sub_104640();
      return (*(*(v39 - 8) + 56))(v46, 1, 1, v39);
    }
  }

  else
  {
    if (qword_136D28 != -1)
    {
      swift_once();
    }

    v24 = sub_106D20();
    sub_135C4(v24, qword_138C90);
    v25 = v1;
    v26 = sub_106D10();
    v27 = sub_106FB0();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v47 = v29;
      *v28 = 136315138;
      v30 = [v25 identifier];
      if (v30)
      {
        v31 = v30;
        v32 = sub_106E20();
        v34 = v33;
      }

      else
      {
        v32 = 0;
        v34 = 0xE000000000000000;
      }

      v40 = sub_722E8(v32, v34, &v47);

      *(v28 + 4) = v40;
      _os_log_impl(&dword_0, v26, v27, "INAlarm+Additions Bad alarm identifier: %s", v28, 0xCu);
      sub_2738(v29);
    }

    v41 = sub_104640();
    v42 = *(*(v41 - 8) + 56);
    v43 = v41;
    v44 = v46;

    return v42(v44, 1, 1, v43);
  }
}

uint64_t sub_78C9C()
{
  v1 = v0;
  v2 = sub_1047D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25E4(&qword_137518, &qword_107E28);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v30 - v9;
  v11 = sub_104670();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v30 - v17;
  sub_106240();
  sub_106210();
  sub_CF984(v6, v16, v1, v10);
  v19 = *(v12 + 8);
  v19(v16, v11);
  (*(v3 + 8))(v6, v2);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_16F70(v10, &qword_137518, &qword_107E28);
    if (qword_136D28 != -1)
    {
      swift_once();
    }

    v20 = sub_106D20();
    sub_135C4(v20, qword_138C90);
    v21 = sub_106D10();
    v22 = sub_106FB0();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_0, v21, v22, "Can't get nextFiringDate.", v23, 2u);
    }

    return 0;
  }

  else
  {
    (*(v12 + 32))(v18, v10, v11);
    v25 = sub_106090();
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    sub_106080();
    v28 = v19;
    sub_104660();
    sub_106070();

    v29 = sub_106060();

    v28(v18, v11);
    return v29;
  }
}

uint64_t sub_7901C@<X0>(uint64_t a1@<X8>)
{
  sub_1070B0();
  if (v3)
  {
    sub_106E50();

    v4 = 0;
  }

  else
  {
    if (qword_136D28 != -1)
    {
      swift_once();
    }

    v5 = sub_106D20();
    sub_135C4(v5, qword_138C90);
    v6 = v1;
    v7 = sub_106D10();
    v8 = sub_106FB0();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v20 = v10;
      *v9 = 136315138;
      v11 = v6;
      v12 = [v11 description];
      v13 = sub_106E20();
      v15 = v14;

      v16 = sub_722E8(v13, v15, &v20);

      *(v9 + 4) = v16;
      _os_log_impl(&dword_0, v7, v8, "Failed to serialize disambiguation action: %s", v9, 0xCu);
      sub_2738(v10);
    }

    v4 = 1;
  }

  v17 = sub_106160();
  v18 = *(*(v17 - 8) + 56);

  return v18(a1, v4, 1, v17);
}

uint64_t sub_79224@<X0>(uint64_t a1@<X8>)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    swift_unknownObjectRetain();
    sub_1070B0();
    if (v4)
    {
      sub_106E50();
      swift_unknownObjectRelease();

      v5 = sub_106160();
      v6 = *(*(v5 - 8) + 56);
      v7 = v5;
      v8 = a1;
      v9 = 0;
    }

    else
    {
      if (qword_136D28 != -1)
      {
        swift_once();
      }

      v20 = sub_106D20();
      sub_135C4(v20, qword_138C90);
      swift_unknownObjectRetain();
      v21 = sub_106D10();
      v22 = sub_106FB0();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v31 = v24;
        *v23 = 136315138;
        swift_unknownObjectRetain();
        v25 = [v3 description];
        v26 = sub_106E20();
        v28 = v27;
        swift_unknownObjectRelease();

        v29 = sub_722E8(v26, v28, &v31);

        *(v23 + 4) = v29;
        _os_log_impl(&dword_0, v21, v22, "Failed to serialize disambiguation action: %s", v23, 0xCu);
        sub_2738(v24);
      }

      swift_unknownObjectRelease();

      v30 = sub_106160();
      v6 = *(*(v30 - 8) + 56);
      v7 = v30;
      v8 = a1;
      v9 = 1;
    }

    return v6(v8, v9, 1, v7);
  }

  else
  {
    if (qword_136D28 != -1)
    {
      swift_once();
    }

    v10 = sub_106D20();
    sub_135C4(v10, qword_138C90);
    swift_unknownObjectRetain();
    v11 = sub_106D10();
    v12 = sub_106FB0();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v31 = v14;
      *v13 = 136315138;
      swift_unknownObjectRetain();
      v15 = sub_106E30();
      v17 = sub_722E8(v15, v16, &v31);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_0, v11, v12, "Unable to cast SAClientBoundCommand to SABaseCommand: %s", v13, 0xCu);
      sub_2738(v14);
    }

    v18 = sub_106160();
    return (*(*(v18 - 8) + 56))(a1, 1, 1, v18);
  }
}

void *sub_79628()
{
  v1 = sub_25E4(&qword_137598, &unk_107EB0);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v55 = &v49 - v6;
  v54 = sub_25E4(&qword_138CB8, &qword_1097D0);
  v7 = *(*(v54 - 8) + 64);
  __chkstk_darwin(v54);
  v9 = &v49 - v8;
  v10 = sub_106160();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v53 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v49 - v15;
  v17 = sub_106200();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v20 = [v0 repeatSchedule];
  if (!v20)
  {
    return _swiftEmptyArrayStorage;
  }

  v21 = v20;
  v50 = v16;
  sub_1069A0();
  v22 = sub_106EE0();

  type metadata accessor for AlarmBaseCATs_Async();
  sub_25E4(&qword_138CC0, &qword_1097D8);
  v23 = *(v18 + 72);
  v24 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v25 = swift_allocObject();
  v49 = xmmword_107FC0;
  *(v25 + 16) = xmmword_107FC0;
  sub_1061F0();
  v56 = v25;
  sub_7C350();
  sub_25E4(&qword_138CD0, &qword_1097E0);
  sub_7C3A8();
  sub_107110();
  v26 = sub_1060D0();
  if (qword_136D28 != -1)
  {
    swift_once();
  }

  v27 = sub_106D20();
  sub_135C4(v27, qword_138C90);

  v28 = sub_106D10();
  v29 = sub_106FC0();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 67109632;
    *(v30 + 4) = Array<A>.isWeekdays.getter(v22) & 1;
    *(v30 + 8) = 1024;
    *(v30 + 10) = Array<A>.isWeekends.getter(v22) & 1;
    *(v30 + 14) = 1024;
    *(v30 + 16) = Array<A>.isEveryday.getter(v22) & 1;

    _os_log_impl(&dword_0, v28, v29, "getDayOfWeekSpeakableArray, %{BOOL}d, %{BOOL}d, %{BOOL}d ", v30, 0x14u);
  }

  else
  {
  }

  if ((Array<A>.isWeekdays.getter(v22) & 1) == 0 && (Array<A>.isWeekends.getter(v22) & 1) == 0 && (Array<A>.isEveryday.getter(v22) & 1) == 0)
  {
    goto LABEL_16;
  }

  v51 = v9;
  v52 = v26;
  v32 = Array<A>.isEveryday.getter(v22);
  v33 = Array<A>.isWeekdays.getter(v22);
  v34 = Array<A>.isWeekends.getter(v22);
  v35 = v55;
  (*(v11 + 56))(v55, 1, 1, v10);
  sub_25E4(&qword_137880, &unk_108290);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1097B0;
  *(v36 + 32) = 0xD000000000000014;
  *(v36 + 40) = 0x800000000010D420;
  *(v36 + 48) = 0;
  *(v36 + 72) = &type metadata for Bool;
  *(v36 + 80) = 0xD000000000000010;
  *(v36 + 88) = 0x800000000010D440;
  *(v36 + 96) = 0;
  *(v36 + 120) = &type metadata for Bool;
  *(v36 + 128) = 0x6479726576457369;
  *(v36 + 136) = 0xEA00000000007961;
  *(v36 + 144) = v32 & 1;
  *(v36 + 168) = &type metadata for Bool;
  *(v36 + 176) = 0x61646B6565577369;
  *(v36 + 184) = 0xEA00000000007379;
  *(v36 + 192) = v33 & 1;
  *(v36 + 216) = &type metadata for Bool;
  *(v36 + 224) = 0x6E656B6565577369;
  *(v36 + 232) = 0xEA00000000007364;
  *(v36 + 240) = v34 & 1;
  *(v36 + 264) = &type metadata for Bool;
  *(v36 + 272) = 0x656557664F796164;
  *(v36 + 280) = 0xE90000000000006BLL;
  sub_14994(v35, v5, &qword_137598, &unk_107EB0);
  if ((*(v11 + 48))(v5, 1, v10) == 1)
  {
    sub_16F70(v5, &qword_137598, &unk_107EB0);
    *(v36 + 288) = 0u;
    *(v36 + 304) = 0u;
  }

  else
  {
    *(v36 + 312) = v10;
    v37 = sub_1A924((v36 + 288));
    (*(v11 + 32))(v37, v5, v10);
  }

  v39 = v51;
  v38 = v52;
  sub_1060C0();
  v26 = v38;

  sub_16F70(v55, &qword_137598, &unk_107EB0);
  sub_107430();
  v41 = v40;
  sub_16F70(v39, &qword_138CB8, &qword_1097D0);
  if (v41)
  {

    v42 = v53;
    sub_106E50();

    v44 = *(v11 + 32);
    v43 = v11 + 32;
    v45 = v50;
    v44(v50, v42, v10);
    sub_25E4(&qword_138CE0, &qword_1097E8);
    v46 = *(v43 + 40);
    v47 = (*(v43 + 48) + 32) & ~*(v43 + 48);
    v31 = swift_allocObject();
    *(v31 + 16) = v49;
    v44((v31 + v47), v45, v10);
  }

  else
  {
LABEL_16:
    v31 = sub_7AD3C(v26, 0, 0, v22);
  }

  return v31;
}

uint64_t sub_79DB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v105 = a2;
  v3 = sub_25E4(&qword_137598, &unk_107EB0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v103 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v95 - v8;
  __chkstk_darwin(v7);
  v106 = (&v95 - v10);
  v108 = sub_25E4(&qword_138CB8, &qword_1097D0);
  v11 = *(*(v108 - 8) + 64);
  v12 = __chkstk_darwin(v108);
  v102 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v99 = &v95 - v14;
  v15 = sub_106160();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v97 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v104 = (&v95 - v21);
  v22 = __chkstk_darwin(v20);
  v100 = &v95 - v23;
  v24 = __chkstk_darwin(v22);
  v107 = &v95 - v25;
  v26 = __chkstk_darwin(v24);
  v98 = &v95 - v27;
  __chkstk_darwin(v26);
  v29 = &v95 - v28;
  v30 = sub_106200();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  if (a1)
  {
    v33 = a1;
  }

  else
  {
    type metadata accessor for AlarmBaseCATs_Async();
    sub_25E4(&qword_138CC0, &qword_1097D8);
    v34 = *(v31 + 72);
    v35 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_107FC0;
    sub_1061F0();
    v110 = v36;
    sub_7C350();
    sub_25E4(&qword_138CD0, &qword_1097E0);
    sub_7C3A8();
    sub_107110();
    v33 = sub_1060D0();
  }

  v37 = [v109 repeatSchedule];
  if (v37)
  {
    v38 = v37;
    v96 = v29;
    sub_1069A0();
    v39 = sub_106EE0();

    if ((Array<A>.isWeekdays.getter(v39) & 1) == 0 && (Array<A>.isWeekends.getter(v39) & 1) == 0 && (Array<A>.isEveryday.getter(v39) & 1) == 0)
    {
      goto LABEL_42;
    }

    v101 = v33;
    v40 = Array<A>.isEveryday.getter(v39);
    v41 = Array<A>.isWeekdays.getter(v39);
    v42 = Array<A>.isWeekends.getter(v39);
    v43 = v106;
    (*(v16 + 56))(v106, 1, 1, v15);
    sub_25E4(&qword_137880, &unk_108290);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1097B0;
    *(v44 + 32) = 0xD000000000000014;
    *(v44 + 40) = 0x800000000010D420;
    *(v44 + 48) = 1;
    *(v44 + 72) = &type metadata for Bool;
    *(v44 + 80) = 0xD000000000000010;
    *(v44 + 88) = 0x800000000010D440;
    *(v44 + 96) = 1;
    *(v44 + 120) = &type metadata for Bool;
    *(v44 + 128) = 0x6479726576457369;
    *(v44 + 136) = 0xEA00000000007961;
    *(v44 + 144) = v40 & 1;
    *(v44 + 168) = &type metadata for Bool;
    *(v44 + 176) = 0x61646B6565577369;
    *(v44 + 184) = 0xEA00000000007379;
    *(v44 + 192) = v41 & 1;
    *(v44 + 216) = &type metadata for Bool;
    *(v44 + 224) = 0x6E656B6565577369;
    *(v44 + 232) = 0xEA00000000007364;
    *(v44 + 240) = v42 & 1;
    *(v44 + 264) = &type metadata for Bool;
    *(v44 + 272) = 0x656557664F796164;
    *(v44 + 280) = 0xE90000000000006BLL;
    sub_14994(v43, v9, &qword_137598, &unk_107EB0);
    if ((*(v16 + 48))(v9, 1, v15) == 1)
    {
      sub_16F70(v9, &qword_137598, &unk_107EB0);
      *(v44 + 288) = 0u;
      *(v44 + 304) = 0u;
    }

    else
    {
      *(v44 + 312) = v15;
      v46 = sub_1A924((v44 + 288));
      (*(v16 + 32))(v46, v9, v15);
    }

    v33 = v101;
    v47 = v99;
    sub_1060C0();

    sub_16F70(v106, &qword_137598, &unk_107EB0);
    sub_107430();
    v49 = v48;
    sub_16F70(v47, &qword_138CB8, &qword_1097D0);
    if (v49)
    {

      v50 = v98;
      sub_106E50();

      v51 = *(v16 + 32);
      v52 = v96;
      v51(v96, v50, v15);
      sub_25E4(&qword_138CE0, &qword_1097E8);
      v53 = *(v16 + 72);
      v54 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      v45 = swift_allocObject();
      *(v45 + 1) = xmmword_107FC0;
      v51(v45 + v54, v52, v15);
    }

    else
    {
LABEL_42:
      if (v39 >> 62)
      {
        v55 = sub_107270();
      }

      else
      {
        v55 = *(&dword_10 + (v39 & 0xFFFFFFFFFFFFFF8));
      }

      v45 = sub_7AD3C(v33, v55 > 1, v55 < 2, v39);
    }

    if (qword_136D28 != -1)
    {
      swift_once();
    }

    v56 = sub_106D20();
    sub_135C4(v56, qword_138C90);

    v57 = sub_106D10();
    v58 = sub_106FC0();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = v15;
      v61 = swift_slowAlloc();
      v110 = v61;
      *v59 = 136315138;
      v62 = sub_106EF0();
      v63 = v33;
      v65 = v64;

      v66 = sub_722E8(v62, v65, &v110);
      v33 = v63;

      *(v59 + 4) = v66;
      _os_log_impl(&dword_0, v57, v58, "[SiriAlarm.buildLocalizedSnippetLabel] Repeat schedule has days: %s", v59, 0xCu);
      sub_2738(v61);
      v15 = v60;
    }

    else
    {
    }
  }

  else
  {
    v45 = _swiftEmptyArrayStorage;
  }

  v67 = v103;
  v68 = [v109 label];
  if (v68)
  {
    v69 = v68;
    sub_106E20();

    sub_106E50();

    v70 = 0;
  }

  else
  {
    v70 = 1;
  }

  v71 = v107;
  v72 = v104;
  v109 = *(v16 + 56);
  (v109)(v67, v70, 1, v15);
  v73 = v102;
  sub_57BF0(v67, v45);

  sub_16F70(v67, &qword_137598, &unk_107EB0);
  sub_107430();
  v75 = v74;
  sub_16F70(v73, &qword_138CB8, &qword_1097D0);
  if (v75)
  {
    v108 = v16 + 56;
    v76 = v100;
    sub_106E50();

    v106 = *(v16 + 32);
    (v106)(v71, v76, v15);
    v77 = v15;
    if (qword_136D28 != -1)
    {
      swift_once();
    }

    v78 = sub_106D20();
    sub_135C4(v78, qword_138C90);
    v79 = *(v16 + 16);
    v79(v72, v71, v15);
    v80 = sub_106D10();
    v81 = sub_106FC0();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v101 = v33;
      v104 = v83;
      v110 = v83;
      *v82 = 136315138;
      v79(v97, v72, v15);
      v84 = sub_106E30();
      v86 = v85;
      (*(v16 + 8))(v72, v77);
      v87 = sub_722E8(v84, v86, &v110);

      *(v82 + 4) = v87;
      _os_log_impl(&dword_0, v80, v81, "[SiriAlarm.buildLocalizedSnippetLabel] Created localized snippet label: %s", v82, 0xCu);
      sub_2738(v104);

      v71 = v107;
    }

    else
    {

      (*(v16 + 8))(v72, v15);
    }

    v15 = v77;
    v93 = v105;
    (v106)(v105, v71, v77);
    v92 = 0;
  }

  else
  {
    if (qword_136D28 != -1)
    {
      swift_once();
    }

    v88 = sub_106D20();
    sub_135C4(v88, qword_138C90);
    v89 = sub_106D10();
    v90 = sub_106FB0();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      *v91 = 0;
      _os_log_impl(&dword_0, v89, v90, "[SiriAlarm.buildLocalizedSnippetLabel] Failed to execute CAT to create localized snippet label!", v91, 2u);
    }

    v92 = 1;
    v93 = v105;
  }

  return (v109)(v93, v92, 1, v15);
}

uint64_t sub_7AA9C@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 identifier];
  if (v3)
  {
    v4 = v3;
    sub_106E20();

    sub_107190(20);

    v21[0] = 0xD000000000000012;
    v21[1] = 0x800000000010C460;
    v23._countAndFlagsBits = sub_106E60();
    sub_106E80(v23);

    sub_104E20();
    v5 = 0;
  }

  else
  {
    if (qword_136D28 != -1)
    {
      swift_once();
    }

    v6 = sub_106D20();
    sub_135C4(v6, qword_138C90);
    v7 = v1;
    v8 = sub_106D10();
    v9 = sub_106FB0();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v21[0] = v11;
      *v10 = 136315138;
      v12 = v7;
      v13 = [v12 description];
      v14 = sub_106E20();
      v16 = v15;

      v17 = sub_722E8(v14, v16, v21);

      *(v10 + 4) = v17;
      _os_log_impl(&dword_0, v8, v9, "DisplayHints failed to extract alarm ID from alarm: %s", v10, 0xCu);
      sub_2738(v11);
    }

    v5 = 1;
  }

  v18 = sub_104E30();
  v19 = *(*(v18 - 8) + 56);

  return v19(a1, v5, 1, v18);
}

void *sub_7AD3C(uint64_t a1, char a2, char a3, unint64_t a4)
{
  LOBYTE(v5) = a3;
  LOBYTE(v6) = a2;
  v54 = a1;
  v7 = sub_25E4(&qword_137598, &unk_107EB0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v53 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v57 = &v37 - v11;
  v52 = sub_25E4(&qword_138CB8, &qword_1097D0);
  v12 = *(*(v52 - 8) + 64);
  __chkstk_darwin(v52);
  v51 = &v37 - v13;
  v14 = sub_106160();
  v38 = *(v14 - 8);
  v15 = *(v38 + 64);
  v16 = __chkstk_darwin(v14);
  v37 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v55 = &v37 - v18;
  if (a4 >> 62)
  {
LABEL_32:
    v19 = sub_107270();
    if (v19)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v19 = *(&dword_10 + (a4 & 0xFFFFFFFFFFFFFF8));
    if (v19)
    {
LABEL_3:
      v20 = 0;
      v49 = a4 & 0xFFFFFFFFFFFFFF8;
      v50 = a4 & 0xC000000000000001;
      v45 = 0x800000000010D420;
      v46 = (v38 + 56);
      v44 = v6 & 1;
      v43 = 0x800000000010D440;
      v42 = v5 & 1;
      v56 = (v38 + 32);
      v40 = "forceEveryPrefix";
      v41 = (v38 + 48);
      v21 = &_swiftEmptyArrayStorage;
      v39 = xmmword_1097B0;
      v47 = v19;
      v48 = a4;
      while (1)
      {
        if (v50)
        {
          v24 = sub_1071C0();
        }

        else
        {
          if (v20 >= *(v49 + 16))
          {
            goto LABEL_31;
          }

          v24 = *(a4 + 8 * v20 + 32);
        }

        v6 = v24;
        a4 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        v25 = [v24 repeatSchedule];
        if (v25 <= 2)
        {
          if (v25 > 1 && v25 != &dword_0 + 2)
          {
LABEL_35:
            v58 = v25;
            result = sub_1073A0();
            __break(1u);
            return result;
          }
        }

        else if (v25 > 4 && v25 != &dword_4 + 1 && v25 != &dword_4 + 2)
        {
          goto LABEL_35;
        }

        v26 = v57;
        sub_106E50();

        (*v46)(v26, 0, 1, v14);
        sub_25E4(&qword_137880, &unk_108290);
        v27 = swift_allocObject();
        *(v27 + 16) = v39;
        v28 = v45;
        *(v27 + 32) = 0xD000000000000014;
        *(v27 + 40) = v28;
        *(v27 + 48) = v44;
        *(v27 + 72) = &type metadata for Bool;
        *(v27 + 80) = 0xD000000000000010;
        *(v27 + 88) = v43;
        *(v27 + 96) = v42;
        *(v27 + 120) = &type metadata for Bool;
        *(v27 + 128) = 0x6479726576457369;
        *(v27 + 136) = 0xEA00000000007961;
        *(v27 + 144) = 0;
        *(v27 + 168) = &type metadata for Bool;
        *(v27 + 176) = 0x61646B6565577369;
        *(v27 + 184) = 0xEA00000000007379;
        *(v27 + 192) = 0;
        *(v27 + 216) = &type metadata for Bool;
        *(v27 + 224) = 0x6E656B6565577369;
        *(v27 + 232) = 0xEA00000000007364;
        *(v27 + 240) = 0;
        *(v27 + 264) = &type metadata for Bool;
        *(v27 + 272) = 0x656557664F796164;
        *(v27 + 280) = 0xE90000000000006BLL;
        v29 = v53;
        sub_14994(v26, v53, &qword_137598, &unk_107EB0);
        if ((*v41)(v29, 1, v14) == 1)
        {
          sub_16F70(v29, &qword_137598, &unk_107EB0);
          *(v27 + 288) = 0u;
          *(v27 + 304) = 0u;
        }

        else
        {
          *(v27 + 312) = v14;
          v30 = sub_1A924((v27 + 288));
          (*v56)(v30, v29, v14);
        }

        v31 = v51;
        sub_1060C0();

        sub_16F70(v57, &qword_137598, &unk_107EB0);
        sub_107430();
        v5 = v32;
        sub_16F70(v31, &qword_138CB8, &qword_1097D0);
        if (v5)
        {
          v33 = v37;
          sub_106E50();

          v6 = *v56;
          (*v56)(v55, v33, v14);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v21 = sub_AD7C8(0, v21[2] + 1, 1, v21);
          }

          v35 = v21[2];
          v34 = v21[3];
          v5 = v35 + 1;
          v22 = v47;
          if (v35 >= v34 >> 1)
          {
            v21 = sub_AD7C8(v34 > 1, v35 + 1, 1, v21);
          }

          v21[2] = v5;
          (v6)(v21 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v35, v55, v14);
        }

        else
        {

          v22 = v47;
        }

        ++v20;
        v23 = a4 == v22;
        a4 = v48;
        if (v23)
        {
          return v21;
        }
      }
    }
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_7B448()
{
  v1 = v0;
  v2 = sub_25E4(&qword_137500, &qword_107E10);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v61 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v61 - v11;
  __chkstk_darwin(v10);
  v14 = &v61 - v13;
  v15 = sub_105B10();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = sub_105B00();
  v19 = [v0 label];
  if (v19)
  {
    v20 = v19;
    sub_106E20();

    sub_105AF0();
  }

  v62 = v18;
  v21 = [v1 dateTime];
  if (v21)
  {
    v22 = v21;
    sub_104570();

    v23 = sub_1045E0();
    (*(*(v23 - 8) + 56))(v12, 0, 1, v23);
  }

  else
  {
    v23 = sub_1045E0();
    (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
  }

  sub_7C278(v12, v14, &qword_137500, &qword_107E10);
  sub_1045E0();
  v24 = *(v23 - 8);
  v25 = *(v24 + 48);
  if (v25(v14, 1, v23))
  {
    goto LABEL_7;
  }

  v61 = sub_104580();
  v27 = v26;
  sub_16F70(v14, &qword_137500, &qword_107E10);
  if (v27)
  {
    goto LABEL_9;
  }

  v33 = [v1 dateTime];
  if (v33)
  {
    v34 = v33;
    sub_104570();

    v35 = 0;
  }

  else
  {
    v35 = 1;
  }

  (*(v24 + 56))(v6, v35, 1, v23);
  sub_7C278(v6, v9, &qword_137500, &qword_107E10);
  if (v25(v9, 1, v23))
  {
    v14 = v9;
LABEL_7:
    sub_16F70(v14, &qword_137500, &qword_107E10);
LABEL_9:
    if (qword_136D28 != -1)
    {
      swift_once();
    }

    v28 = sub_106D20();
    sub_135C4(v28, qword_138C90);
    v29 = sub_106D10();
    v30 = sub_106FB0();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_0, v29, v30, "alarm.dateTime is nil. Failed to build alarm Uso Entity for RRaaS/NL!", v31, 2u);
    }

    return v62;
  }

  sub_1045A0();
  v37 = v36;
  sub_16F70(v9, &qword_137500, &qword_107E10);
  if (v37)
  {
    goto LABEL_9;
  }

  v38 = sub_105BB0();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  v41 = sub_105BA0();
  sub_105B90();
  v42 = *(v38 + 48);
  v43 = *(v38 + 52);
  swift_allocObject();
  sub_105BA0();
  sub_105B90();
  v44 = sub_105DE0();
  v45 = *(v44 + 48);
  v46 = *(v44 + 52);
  swift_allocObject();
  sub_105DD0();

  sub_105DB0();

  sub_105DC0();

  v47 = sub_105C00();
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  swift_allocObject();
  sub_105BF0();

  sub_105BE0();

  v50 = v62;
  sub_105AE0();

  if (qword_136D28 != -1)
  {
    swift_once();
  }

  v51 = sub_106D20();
  sub_135C4(v51, qword_138C90);

  v52 = sub_106D10();
  v53 = sub_106FC0();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v61 = v41;
    v55 = v54;
    v56 = swift_slowAlloc();
    v63 = v50;
    v64 = v56;
    *v55 = 136315138;
    v57 = v50;

    v58 = sub_106E30();
    v60 = sub_722E8(v58, v59, &v64);

    *(v55 + 4) = v60;
    _os_log_impl(&dword_0, v52, v53, "Returning alarmBuilder: %s", v55, 0xCu);
    sub_2738(v56);

    return v57;
  }

  else
  {

    return v50;
  }
}

uint64_t sub_7BB20()
{
  sub_7B448();
  v1 = sub_105950();

  if (!v1)
  {
    if (qword_136D28 != -1)
    {
      swift_once();
    }

    v2 = sub_106D20();
    sub_135C4(v2, qword_138C90);
    v3 = v0;
    v4 = sub_106D10();
    v5 = sub_106FB0();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12 = v7;
      *v6 = 136315138;
      sub_7B448();
      sub_105B10();
      v8 = sub_106E30();
      v10 = sub_722E8(v8, v9, &v12);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_0, v4, v5, "Fail to build uso entity %s", v6, 0xCu);
      sub_2738(v7);
    }
  }

  return v1;
}

uint64_t sub_7BCB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, char *a5@<X8>)
{
  v59 = a4;
  v10 = sub_25E4(&qword_138CA8, &qword_1097C0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v58 = v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = v56 - v14;
  v16 = sub_25E4(&qword_1376F0, &unk_10A900);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = v56 - v18;
  v20 = sub_106D80();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v63 = v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = v5;
  v24 = sub_7BB20();
  v64 = v20;
  if (v24)
  {
    v56[1] = a3;
    v61 = v21;
    v62 = a5;
    v25 = [v65 identifier];
    if (v25)
    {
      v26 = v25;
      v27 = sub_106E20();
      v29 = v28;
    }

    else
    {
      v27 = 0;
      v29 = 0;
    }

    v56[0] = a1;
    v57 = a2;
    v66[0] = v27;
    v66[1] = v29;
    sub_25E4(&qword_138CB0, &qword_1097C8);
    v60 = sub_106E30();
    if (qword_136E38 != -1)
    {
      swift_once();
    }

    v30 = sub_106D40();
    v31 = *(v30 - 8);
    v32 = *(v31 + 56);
    v33 = v31 + 56;
    v32(v15, 1, 1, v30);
    sub_106AA0();

    v34 = v65;
    sub_106D60();
    v60 = v33;
    v65 = v32;
    v49 = v61;
    v50 = *(v61 + 56);
    v51 = v64;
    v50(v19, 0, 1, v64);
    v52 = *(v49 + 32);
    v53 = v63;
    v52(v63, v19, v51);
    if (v57)
    {
      if ((v59 & 1) == 0)
      {

        v54 = v58;
        sub_106D30();
        v65(v54, 0, 1, v30);
        v53 = v63;
        sub_106D70();
      }
    }

    v55 = v62;
    v52(v62, v53, v51);
    return (v50)(v55, 0, 1, v51);
  }

  else
  {
    if (qword_136D28 != -1)
    {
      swift_once();
    }

    v35 = sub_106D20();
    sub_135C4(v35, qword_138C90);
    v36 = v65;
    v37 = sub_106D10();
    v38 = sub_106FB0();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = v21;
      v41 = swift_slowAlloc();
      v66[0] = v41;
      *v39 = 136315138;
      v42 = v36;
      v43 = [v42 description];
      v44 = sub_106E20();
      v46 = v45;

      v47 = sub_722E8(v44, v46, v66);

      *(v39 + 4) = v47;
      _os_log_impl(&dword_0, v37, v38, "Fail to build rr entity from alarm %s", v39, 0xCu);
      sub_2738(v41);
      v21 = v40;

      v20 = v64;
    }

    return (*(v21 + 56))(a5, 1, 1, v20);
  }
}

uint64_t sub_7C278(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_25E4(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_7C2E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25E4(&qword_137598, &unk_107EB0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_7C350()
{
  result = qword_138CC8;
  if (!qword_138CC8)
  {
    sub_106200();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_138CC8);
  }

  return result;
}

unint64_t sub_7C3A8()
{
  result = qword_138CD8;
  if (!qword_138CD8)
  {
    sub_14EB0(&qword_138CD0, &qword_1097E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_138CD8);
  }

  return result;
}

unint64_t sub_7C40C()
{
  result = qword_138CE8;
  if (!qword_138CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_138CE8);
  }

  return result;
}

uint64_t type metadata accessor for AlarmBaseCATs_Sync()
{
  result = qword_138CF0;
  if (!qword_138CF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_7C4EC(uint64_t a1, uint64_t a2)
{
  v5 = sub_106200();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25E4(&unk_137430, &qword_107DC0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v18 - v12;
  v14 = *(v2 + 48);
  v15 = *(v2 + 52);
  swift_allocObject();
  sub_2A84(a1, v13);
  (*(v6 + 16))(v9, a2, v5);
  v16 = sub_1060B0();
  (*(v6 + 8))(a2, v5);
  sub_2AF4(a1);
  return v16;
}

uint64_t sub_7C6DC()
{
  v1 = sub_25E4(&qword_137598, &unk_107EB0);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v26 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = &v26 - v10;
  __chkstk_darwin(v9);
  v13 = &v26 - v12;
  sub_25E4(&qword_137880, &unk_108290);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1097B0;
  strcpy((v14 + 32), "cancelAction");
  *(v14 + 45) = 0;
  *(v14 + 46) = -5120;
  sub_14994(v0, v13, &qword_137598, &unk_107EB0);
  v15 = sub_106160();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  v18 = v17(v13, 1, v15);
  v27 = v5;
  if (v18 == 1)
  {
    sub_16F70(v13, &qword_137598, &unk_107EB0);
    *(v14 + 48) = 0u;
    *(v14 + 64) = 0u;
  }

  else
  {
    *(v14 + 72) = v15;
    v19 = sub_1A924((v14 + 48));
    (*(v16 + 32))(v19, v13, v15);
  }

  *(v14 + 80) = 0x614E656369766564;
  *(v14 + 88) = 0xEA0000000000656DLL;
  v20 = type metadata accessor for SnoozeConfirmOtherRoomParameters(0);
  sub_14994(v0 + v20[5], v11, &qword_137598, &unk_107EB0);
  if (v17(v11, 1, v15) == 1)
  {
    sub_16F70(v11, &qword_137598, &unk_107EB0);
    *(v14 + 96) = 0u;
    *(v14 + 112) = 0u;
  }

  else
  {
    *(v14 + 120) = v15;
    v21 = sub_1A924((v14 + 96));
    (*(v16 + 32))(v21, v11, v15);
  }

  *(v14 + 128) = 0x6E756D6D6F437369;
  *(v14 + 136) = 0xEA00000000006C61;
  *(v14 + 144) = *(v0 + v20[6]);
  *(v14 + 168) = &type metadata for Bool;
  *(v14 + 176) = 0x6E6F737265507369;
  *(v14 + 184) = 0xEA00000000006C61;
  *(v14 + 192) = *(v0 + v20[7]);
  *(v14 + 216) = &type metadata for Bool;
  *(v14 + 224) = 0x656D614E6D6F6F72;
  *(v14 + 232) = 0xE800000000000000;
  sub_14994(v0 + v20[8], v8, &qword_137598, &unk_107EB0);
  if (v17(v8, 1, v15) == 1)
  {
    sub_16F70(v8, &qword_137598, &unk_107EB0);
    *(v14 + 240) = 0u;
    *(v14 + 256) = 0u;
  }

  else
  {
    *(v14 + 264) = v15;
    v22 = sub_1A924((v14 + 240));
    (*(v16 + 32))(v22, v8, v15);
  }

  v23 = v27;
  *(v14 + 272) = 0x6F69746341736579;
  *(v14 + 280) = 0xE90000000000006ELL;
  sub_14994(v0 + v20[9], v23, &qword_137598, &unk_107EB0);
  if (v17(v23, 1, v15) == 1)
  {
    sub_16F70(v23, &qword_137598, &unk_107EB0);
    *(v14 + 288) = 0u;
    *(v14 + 304) = 0u;
  }

  else
  {
    *(v14 + 312) = v15;
    v24 = sub_1A924((v14 + 288));
    (*(v16 + 32))(v24, v23, v15);
  }

  return v14;
}

uint64_t sub_7CB40()
{
  v1 = sub_25E4(&qword_137598, &unk_107EB0);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v26 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = &v26 - v10;
  __chkstk_darwin(v9);
  v13 = &v26 - v12;
  sub_25E4(&qword_137880, &unk_108290);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_108210;
  *(v14 + 32) = 0x6D614E6D72616C61;
  *(v14 + 40) = 0xE900000000000065;
  sub_14994(v0, v13, &qword_137598, &unk_107EB0);
  v15 = sub_106160();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  v18 = v17(v13, 1, v15);
  v27 = v5;
  if (v18 == 1)
  {
    sub_16F70(v13, &qword_137598, &unk_107EB0);
    *(v14 + 48) = 0u;
    *(v14 + 64) = 0u;
  }

  else
  {
    *(v14 + 72) = v15;
    v19 = sub_1A924((v14 + 48));
    (*(v16 + 32))(v19, v13, v15);
  }

  *(v14 + 80) = 0x614E656369766564;
  *(v14 + 88) = 0xEA0000000000656DLL;
  v20 = type metadata accessor for SnoozeIntentHandledParameters(0);
  sub_14994(v0 + v20[5], v11, &qword_137598, &unk_107EB0);
  if (v17(v11, 1, v15) == 1)
  {
    sub_16F70(v11, &qword_137598, &unk_107EB0);
    *(v14 + 96) = 0u;
    *(v14 + 112) = 0u;
  }

  else
  {
    *(v14 + 120) = v15;
    v21 = sub_1A924((v14 + 96));
    (*(v16 + 32))(v21, v11, v15);
  }

  *(v14 + 128) = 0x7954676F6C616964;
  *(v14 + 136) = 0xEA00000000006570;
  sub_14994(v0 + v20[6], v8, &qword_137598, &unk_107EB0);
  if (v17(v8, 1, v15) == 1)
  {
    sub_16F70(v8, &qword_137598, &unk_107EB0);
    *(v14 + 144) = 0u;
    *(v14 + 160) = 0u;
  }

  else
  {
    *(v14 + 168) = v15;
    v22 = sub_1A924((v14 + 144));
    (*(v16 + 32))(v22, v8, v15);
  }

  v23 = v27;
  *(v14 + 176) = 0x656D614E6D6F6F72;
  *(v14 + 184) = 0xE800000000000000;
  sub_14994(v0 + v20[7], v23, &qword_137598, &unk_107EB0);
  if (v17(v23, 1, v15) == 1)
  {
    sub_16F70(v23, &qword_137598, &unk_107EB0);
    *(v14 + 192) = 0u;
    *(v14 + 208) = 0u;
  }

  else
  {
    *(v14 + 216) = v15;
    v24 = sub_1A924((v14 + 192));
    (*(v16 + 32))(v24, v23, v15);
  }

  return v14;
}

uint64_t sub_7CF48(char a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = v4;
  *(v5 + 16) = a3;
  *(v5 + 89) = a2;
  *(v5 + 88) = a1;
  v6 = type metadata accessor for SnoozeConfirmOtherRoomParameters(0);
  *(v5 + 40) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v5 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_7CFE8, 0, 0);
}

uint64_t sub_7CFE8()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 89);
  v6 = *(v0 + 88);
  v7 = sub_106160();
  v8 = *(*(v7 - 8) + 56);
  v8(v1, 1, 1, v7);
  v8(v1 + v2[5], 1, 1, v7);
  v8(v1 + v2[8], 1, 1, v7);
  v8(v1 + v2[9], 1, 1, v7);
  *(v1 + v2[6]) = v6;
  *(v1 + v2[7]) = v5;
  v4(v1);
  v9 = sub_7C6DC();
  *(v0 + 56) = v9;
  v10 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
  v14 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v11 = swift_task_alloc();
  *(v0 + 64) = v11;
  *v11 = v0;
  v11[1] = sub_7D1A8;
  v12 = *(v0 + 32);

  return v14(0xD000000000000017, 0x800000000010D510, v9);
}

uint64_t sub_7D1A8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *(*v2 + 56);
  v7 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v8 = sub_7D37C;
  }

  else
  {
    *(v4 + 80) = a1;
    v8 = sub_7D2F4;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_7D2F4()
{
  sub_7DA80(v0[6], type metadata accessor for SnoozeConfirmOtherRoomParameters);

  v1 = v0[1];
  v2 = v0[10];

  return v1(v2);
}

uint64_t sub_7D37C()
{
  sub_7DA80(v0[6], type metadata accessor for SnoozeConfirmOtherRoomParameters);

  v1 = v0[1];
  v2 = v0[9];

  return v1();
}

uint64_t sub_7D400(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for SnoozeIntentHandledParameters(0);
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();

  return _swift_task_switch(sub_7D498, 0, 0);
}

uint64_t sub_7D498()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[2];
  v3 = v0[3];
  v5 = sub_106160();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v6(v1 + v2[5], 1, 1, v5);
  v6(v1 + v2[6], 1, 1, v5);
  v6(v1 + v2[7], 1, 1, v5);
  v4(v1);
  v7 = sub_7CB40();
  v0[7] = v7;
  v8 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
  v12 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v9 = swift_task_alloc();
  v0[8] = v9;
  *v9 = v0;
  v9[1] = sub_7D638;
  v10 = v0[4];

  return v12(0xD000000000000014, 0x800000000010D4F0, v7);
}

uint64_t sub_7D638(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *(*v2 + 56);
  v7 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v8 = sub_7D80C;
  }

  else
  {
    *(v4 + 80) = a1;
    v8 = sub_7D784;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_7D784()
{
  sub_7DA80(v0[6], type metadata accessor for SnoozeIntentHandledParameters);

  v1 = v0[1];
  v2 = v0[10];

  return v1(v2);
}

uint64_t sub_7D80C()
{
  sub_7DA80(v0[6], type metadata accessor for SnoozeIntentHandledParameters);

  v1 = v0[1];
  v2 = v0[9];

  return v1();
}

uint64_t sub_7D890(uint64_t a1, uint64_t a2)
{
  v5 = sub_106200();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25E4(&unk_137430, &qword_107DC0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v18 - v12;
  v14 = *(v2 + 48);
  v15 = *(v2 + 52);
  swift_allocObject();
  sub_14994(a1, v13, &unk_137430, &qword_107DC0);
  (*(v6 + 16))(v9, a2, v5);
  v16 = sub_1060B0();
  (*(v6 + 8))(a2, v5);
  sub_16F70(a1, &unk_137430, &qword_107DC0);
  return v16;
}

uint64_t sub_7DA80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_7DAF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25E4(&qword_137598, &unk_107EB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_7DBE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25E4(&qword_137598, &unk_107EB0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

void sub_7DCA4()
{
  sub_7DD24();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_7DD24()
{
  if (!qword_1378F8)
  {
    sub_106160();
    v0 = sub_1070E0();
    if (!v1)
    {
      atomic_store(v0, &qword_1378F8);
    }
  }
}

uint64_t sub_7DD90(uint64_t a1, uint64_t a2)
{
  v4 = sub_25E4(&qword_137598, &unk_107EB0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_7DE1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25E4(&qword_137598, &unk_107EB0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_7DE98()
{
  sub_7DD24();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_7DF18()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_138EC8);
  sub_135C4(v0, qword_138EC8);
  return sub_106A80();
}

uint64_t sub_7DF64(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_7DF84, 0, 0);
}

uint64_t sub_7DF84()
{
  v1 = v0[3];
  sub_25E4(&qword_138EE0, &qword_109990);
  v2 = sub_1051F0();
  v0[4] = v2;
  v3 = sub_105200();
  v0[5] = v3;
  if (qword_136D30 != -1)
  {
    swift_once();
  }

  v4 = sub_106D20();
  sub_135C4(v4, qword_138EC8);
  v5 = v3;
  v6 = sub_106D10();
  v7 = sub_106FC0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = [v5 unsupportedReason];

    _os_log_impl(&dword_0, v6, v7, "SearchAlarm.UnsupportedValueStrategy.makeUnsupportedValueOutput() called with unsupportedReason: %ld", v8, 0xCu);
  }

  else
  {

    v6 = v5;
  }

  v9 = [v2 alarmSearch];
  v0[6] = v9;
  v10 = swift_task_alloc();
  v0[7] = v10;
  *v10 = v0;
  v10[1] = sub_7E174;
  v11 = v0[2];

  return sub_17218(v11, v9, v5);
}

uint64_t sub_7E174()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v6 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_7E2F8;
  }

  else
  {

    v4 = sub_7E290;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_7E290()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_7E2F8()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 32);

  v3 = *(v0 + 8);
  v4 = *(v0 + 64);

  return v3();
}

uint64_t sub_7E368(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1CA94;

  return sub_7DF64(a1, a2);
}

uint64_t sub_7E428()
{
  v1 = *(v0 + 16);
  sub_25E4(&qword_138EE0, &qword_109990);
  v2 = sub_1051F0();
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_7E500()
{
  v1 = sub_25E4(&qword_137598, &unk_107EB0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v13 - v3;
  sub_25E4(&qword_137880, &unk_108290);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_109670;
  strcpy((v5 + 32), "isMixedAlarms");
  *(v5 + 46) = -4864;
  *(v5 + 48) = *v0;
  *(v5 + 72) = &type metadata for Bool;
  *(v5 + 80) = 0xD000000000000010;
  *(v5 + 88) = 0x800000000010C5B0;
  *(v5 + 96) = v0[1];
  *(v5 + 120) = &type metadata for Bool;
  *(v5 + 128) = 0xD000000000000018;
  *(v5 + 136) = 0x800000000010C5D0;
  *(v5 + 144) = v0[2];
  *(v5 + 168) = &type metadata for Bool;
  *(v5 + 176) = 0xD000000000000012;
  *(v5 + 184) = 0x800000000010C5F0;
  *(v5 + 192) = v0[3];
  *(v5 + 216) = &type metadata for Bool;
  *(v5 + 224) = 0xD000000000000016;
  *(v5 + 232) = 0x800000000010C610;
  *(v5 + 240) = v0[4];
  *(v5 + 264) = &type metadata for Bool;
  *(v5 + 272) = 0xD000000000000016;
  *(v5 + 280) = 0x800000000010C630;
  *(v5 + 288) = v0[5];
  *(v5 + 312) = &type metadata for Bool;
  *(v5 + 320) = 0xD000000000000017;
  *(v5 + 328) = 0x800000000010C650;
  *(v5 + 336) = v0[6];
  *(v5 + 360) = &type metadata for Bool;
  *(v5 + 368) = 0x68637461577369;
  *(v5 + 376) = 0xE700000000000000;
  *(v5 + 384) = v0[7];
  *(v5 + 408) = &type metadata for Bool;
  *(v5 + 416) = 0xD000000000000012;
  *(v5 + 424) = 0x800000000010C670;
  v6 = type metadata accessor for DeleteAllIntentHandledParameters(0);
  sub_14994(&v0[*(v6 + 48)], v4, &qword_137598, &unk_107EB0);
  v7 = sub_106160();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v4, 1, v7) == 1)
  {
    sub_16F70(v4, &qword_137598, &unk_107EB0);
    *(v5 + 432) = 0u;
    *(v5 + 448) = 0u;
  }

  else
  {
    *(v5 + 456) = v7;
    v9 = sub_1A924((v5 + 432));
    (*(v8 + 32))(v9, v4, v7);
  }

  *(v5 + 464) = 0xD000000000000011;
  *(v5 + 472) = 0x800000000010C690;
  v10 = *&v0[*(v6 + 52)];
  if (v10)
  {
    v11 = sub_1060A0();
  }

  else
  {
    v11 = 0;
    *(v5 + 488) = 0;
    *(v5 + 496) = 0;
  }

  *(v5 + 480) = v10;
  *(v5 + 504) = v11;

  return v5;
}

uint64_t sub_7E81C(uint64_t a1, uint64_t a2)
{
  v5 = sub_106200();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25E4(&unk_137430, &qword_107DC0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v18 - v12;
  v14 = *(v2 + 48);
  v15 = *(v2 + 52);
  swift_allocObject();
  sub_14994(a1, v13, &unk_137430, &qword_107DC0);
  (*(v6 + 16))(v9, a2, v5);
  v16 = sub_1060B0();
  (*(v6 + 8))(a2, v5);
  sub_16F70(a1, &unk_137430, &qword_107DC0);
  return v16;
}

uint64_t sub_7EA00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25E4(&qword_137598, &unk_107EB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 52));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_7EAEC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25E4(&qword_137598, &unk_107EB0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 48);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 52)) = a2;
  }

  return result;
}

void sub_7EBB4()
{
  sub_7EC90(319, &qword_1378F8, &type metadata accessor for SpeakableString);
  if (v0 <= 0x3F)
  {
    sub_7EC90(319, &unk_137908, &type metadata accessor for DialogCalendar);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_7EC90(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1070E0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for UpdateAlarmCATsSimple()
{
  result = qword_138FE8;
  if (!qword_138FE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_7ED70(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(sub_25E4(&qword_137598, &unk_107EB0) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();

  return _swift_task_switch(sub_7EE10, 0, 0);
}

uint64_t sub_7EE10()
{
  v1 = v0[5];
  v2 = v0[2];
  sub_25E4(&qword_137880, &unk_108290);
  v3 = swift_allocObject();
  v0[6] = v3;
  *(v3 + 16) = xmmword_1094F0;
  *(v3 + 32) = 0x6C6562614C77656ELL;
  *(v3 + 40) = 0xE800000000000000;
  sub_14994(v2, v1, &qword_137598, &unk_107EB0);
  v4 = sub_106160();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(v1, 1, v4);
  v7 = v0[5];
  if (v6 == 1)
  {
    sub_16F70(v0[5], &qword_137598, &unk_107EB0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v4;
    v8 = sub_1A924((v3 + 48));
    (*(v5 + 32))(v8, v7, v4);
  }

  v9 = v0[3];
  *(v3 + 80) = 0x6D72616C61;
  *(v3 + 88) = 0xE500000000000000;
  v10 = 0;
  if (v9)
  {
    v10 = type metadata accessor for AlarmAlarm(0);
  }

  else
  {
    *(v3 + 104) = 0;
    *(v3 + 112) = 0;
  }

  *(v3 + 96) = v9;
  *(v3 + 120) = v10;
  v11 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
  v15 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v12 = swift_task_alloc();
  v0[7] = v12;
  *v12 = v0;
  v12[1] = sub_7F038;
  v13 = v0[4];

  return v15(0xD000000000000028, 0x800000000010D5A0, v3);
}

uint64_t sub_7F038(uint64_t a1)
{
  v4 = *(*v2 + 56);
  v5 = *v2;
  v5[8] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_58208, 0, 0);
  }

  else
  {
    v7 = v5[5];
    v6 = v5[6];

    v8 = v5[1];

    return v8(a1);
  }
}

uint64_t sub_7F194(uint64_t a1, uint64_t a2)
{
  v5 = sub_106200();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25E4(&unk_137430, &qword_107DC0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v18 - v12;
  v14 = *(v2 + 48);
  v15 = *(v2 + 52);
  swift_allocObject();
  sub_14994(a1, v13, &unk_137430, &qword_107DC0);
  (*(v6 + 16))(v9, a2, v5);
  v16 = sub_106170();
  (*(v6 + 8))(a2, v5);
  sub_16F70(a1, &unk_137430, &qword_107DC0);
  return v16;
}

uint64_t sub_7F33C(uint64_t a1, uint64_t a2)
{
  v4 = sub_106200();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + 48);
  v10 = *(v2 + 52);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v4);
  v11 = sub_106180();
  (*(v5 + 8))(a2, v4);
  return v11;
}

uint64_t sub_7F454()
{
  v1 = OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_label;
  v2 = sub_106160();
  v3 = *(*(v2 - 8) + 56);
  v3(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_time) = 0;
  v3(v0 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_formattedTimeString, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_timeOnlyString, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_meridian, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_enabled) = 0;
  *(v0 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_isRecurrent) = 0;
  *(v0 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_isSleepAlarm) = 0;
  *(v0 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_days) = _swiftEmptyArrayStorage;
  v3(v0 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_labelForSnippetWithRecurrence, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_isSetWitchingHoursForToday) = 0;
  *(v0 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_isTomorrow) = 0;
  *(v0 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_overrideTomorrowCalendarLogic) = 0;
  v3(v0 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_action, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_enableAction, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_disableAction, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_alarmIDString, 1, 1, v2);
  return v0;
}

uint64_t sub_7F658()
{
  sub_82544(v0 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_label);
  v1 = *(v0 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_time);

  sub_82544(v0 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_formattedTimeString);
  sub_82544(v0 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_timeOnlyString);
  sub_82544(v0 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_meridian);
  v2 = *(v0 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_days);

  sub_82544(v0 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_labelForSnippetWithRecurrence);
  sub_82544(v0 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_action);
  sub_82544(v0 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_enableAction);
  sub_82544(v0 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_disableAction);
  sub_82544(v0 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_alarmIDString);
  return v0;
}

void *sub_7F738(uint64_t a1)
{
  v1[2] = 0;
  v3 = OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_label;
  swift_beginAccess();
  sub_826B8(a1 + v3, v1 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_label);
  *(v1 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_time) = *(a1 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_time);
  v4 = OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_formattedTimeString;
  swift_beginAccess();
  sub_826B8(a1 + v4, v1 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_formattedTimeString);
  v5 = OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_timeOnlyString;
  swift_beginAccess();
  sub_826B8(a1 + v5, v1 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_timeOnlyString);
  v6 = OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_meridian;
  swift_beginAccess();
  sub_826B8(a1 + v6, v1 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_meridian);
  *(v1 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_enabled) = *(a1 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_enabled);
  *(v1 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_isRecurrent) = *(a1 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_isRecurrent);
  *(v1 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_isSleepAlarm) = *(a1 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_isSleepAlarm);
  *(v1 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_days) = *(a1 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_days);
  v7 = OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_labelForSnippetWithRecurrence;
  swift_beginAccess();
  sub_826B8(a1 + v7, v1 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_labelForSnippetWithRecurrence);
  *(v1 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_isSetWitchingHoursForToday) = *(a1 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_isSetWitchingHoursForToday);
  *(v1 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_isTomorrow) = *(a1 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_isTomorrow);
  *(v1 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_overrideTomorrowCalendarLogic) = *(a1 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_overrideTomorrowCalendarLogic);
  v8 = OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_action;
  swift_beginAccess();
  sub_826B8(a1 + v8, v1 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_action);
  v9 = OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_enableAction;
  swift_beginAccess();
  sub_826B8(a1 + v9, v1 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_enableAction);
  v10 = OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_disableAction;
  swift_beginAccess();
  sub_826B8(a1 + v10, v1 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_disableAction);
  v11 = OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_alarmIDString;
  swift_beginAccess();
  sub_826B8(a1 + v11, v1 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_alarmIDString);

  if (!sub_7FAEC())
  {
    v12 = sub_1061C0();
    sub_106FB0();
    sub_25E4(&qword_1395C0, &qword_109B90);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_107FC0;
    v18 = *v1;
    sub_25E4(&qword_1395C8, &qword_109B98);
    v14 = sub_106E30();
    v16 = v15;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_82728();
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    sub_106CD0();
  }

  return v1;
}

BOOL sub_7FAEC()
{
  v1 = sub_25E4(&qword_137598, &unk_107EB0);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v17 - v7;
  __chkstk_darwin(v6);
  v10 = &v17 - v9;
  sub_826B8(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_formattedTimeString, &v17 - v9);
  v11 = sub_106160();
  v12 = *(*(v11 - 8) + 48);
  v13 = v12(v10, 1, v11);
  sub_82544(v10);
  if (v13 == 1)
  {
    return 0;
  }

  sub_826B8(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_timeOnlyString, v8);
  v14 = v12(v8, 1, v11);
  sub_82544(v8);
  if (v14 == 1)
  {
    return 0;
  }

  sub_826B8(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_meridian, v5);
  v16 = v12(v5, 1, v11) != 1;
  sub_82544(v5);
  return v16;
}

uint64_t sub_7FCA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v84 = a3;
  v5 = sub_25E4(&qword_137598, &unk_107EB0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v82 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v81 = &v81 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = &v81 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v81 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v81 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v81 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v81 - v24;
  v26 = __chkstk_darwin(v23);
  v28 = &v81 - v27;
  __chkstk_darwin(v26);
  v30 = &v81 - v29;
  if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000 || (result = sub_107370(), (result & 1) != 0))
  {
    sub_826B8(v83 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_label, v30);
    v32 = sub_106160();
    v33 = *(v32 - 8);
    if ((*(v33 + 48))(v30, 1, v32) == 1)
    {
      v34 = v30;
LABEL_6:
      result = sub_82544(v34);
LABEL_7:
      v35 = v84;
      *v84 = 0u;
      *(v35 + 1) = 0u;
      return result;
    }

    v36 = v84;
    v84[3] = v32;
    v37 = sub_1A924(v36);
    return (*(v33 + 32))(v37, v30, v32);
  }

  else
  {
    if (a1 == 1701669236 && a2 == 0xE400000000000000 || (result = sub_107370(), (result & 1) != 0))
    {
      v38 = *(v83 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_time);
      if (!v38)
      {
        goto LABEL_7;
      }

      v39 = sub_1060A0();
      v40 = v84;
      v84[3] = v39;
      *v40 = v38;
    }

    if (a1 == 0xD000000000000013 && 0x800000000010C1E0 == a2 || (sub_107370() & 1) != 0)
    {
      sub_826B8(v83 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_formattedTimeString, v28);
      v41 = sub_106160();
      v42 = *(v41 - 8);
      if ((*(v42 + 48))(v28, 1, v41) == 1)
      {
        v34 = v28;
        goto LABEL_6;
      }

      v43 = v84;
      v84[3] = v41;
      v44 = sub_1A924(v43);
      return (*(v42 + 32))(v44, v28, v41);
    }

    else if (a1 == 0x796C6E4F656D6974 && a2 == 0xEE00676E69727453 || (sub_107370() & 1) != 0)
    {
      sub_826B8(v83 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_timeOnlyString, v25);
      v45 = sub_106160();
      v46 = *(v45 - 8);
      if ((*(v46 + 48))(v25, 1, v45) == 1)
      {
        v34 = v25;
        goto LABEL_6;
      }

      v47 = v84;
      v84[3] = v45;
      v48 = sub_1A924(v47);
      return (*(v46 + 32))(v48, v25, v45);
    }

    else
    {
      if ((a1 != 0x6E6169646972656DLL || a2 != 0xE800000000000000) && (sub_107370() & 1) == 0)
      {
        result = 0x64656C62616E65;
        if (a1 == 0x64656C62616E65 && a2 == 0xE700000000000000 || (result = sub_107370(), (result & 1) != 0))
        {
          v53 = OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_enabled;
        }

        else
        {
          result = 0x7272756365527369;
          if (a1 == 0x7272756365527369 && a2 == 0xEB00000000746E65 || (result = sub_107370(), (result & 1) != 0))
          {
            v53 = OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_isRecurrent;
          }

          else
          {
            result = 0x417065656C537369;
            if (a1 == 0x417065656C537369 && a2 == 0xEC0000006D72616CLL || (result = sub_107370(), (result & 1) != 0))
            {
              v53 = OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_isSleepAlarm;
            }

            else
            {
              if (a1 == 1937334628 && a2 == 0xE400000000000000 || (sub_107370() & 1) != 0)
              {
                v56 = *(v83 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_days);
                v57 = sub_25E4(&qword_137888, &unk_10A130);
                v58 = v84;
                v84[3] = v57;
                *v58 = v56;
              }

              if (a1 == 0xD00000000000001DLL && 0x800000000010C240 == a2 || (sub_107370() & 1) != 0)
              {
                sub_826B8(v83 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_labelForSnippetWithRecurrence, v19);
                v59 = sub_106160();
                v60 = *(v59 - 8);
                if ((*(v60 + 48))(v19, 1, v59) == 1)
                {
                  v34 = v19;
                  goto LABEL_6;
                }

                v61 = v84;
                v84[3] = v59;
                v62 = sub_1A924(v61);
                return (*(v60 + 32))(v62, v19, v59);
              }

              result = 0xD00000000000001ALL;
              if (a1 == 0xD00000000000001ALL && 0x800000000010C260 == a2 || (result = sub_107370(), (result & 1) != 0))
              {
                v53 = OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_isSetWitchingHoursForToday;
              }

              else
              {
                result = 0x72726F6D6F547369;
                if (a1 == 0x72726F6D6F547369 && a2 == 0xEA0000000000776FLL || (result = sub_107370(), (result & 1) != 0))
                {
                  v53 = OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_isTomorrow;
                }

                else
                {
                  if (a1 != 0xD00000000000001DLL || 0x800000000010C290 != a2)
                  {
                    result = sub_107370();
                    if ((result & 1) == 0)
                    {
                      if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000 || (sub_107370() & 1) != 0)
                      {
                        sub_826B8(v83 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_action, v16);
                        v63 = sub_106160();
                        v64 = *(v63 - 8);
                        if ((*(v64 + 48))(v16, 1, v63) == 1)
                        {
                          v34 = v16;
                          goto LABEL_6;
                        }

                        v65 = v84;
                        v84[3] = v63;
                        v66 = sub_1A924(v65);
                        return (*(v64 + 32))(v66, v16, v63);
                      }

                      else if (a1 == 0x6341656C62616E65 && a2 == 0xEC0000006E6F6974 || (sub_107370() & 1) != 0)
                      {
                        sub_826B8(v83 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_enableAction, v13);
                        v67 = sub_106160();
                        v68 = *(v67 - 8);
                        if ((*(v68 + 48))(v13, 1, v67) == 1)
                        {
                          v34 = v13;
                          goto LABEL_6;
                        }

                        v69 = v84;
                        v84[3] = v67;
                        v70 = sub_1A924(v69);
                        return (*(v68 + 32))(v70, v13, v67);
                      }

                      else if (a1 == 0x41656C6261736964 && a2 == 0xED00006E6F697463 || (sub_107370() & 1) != 0)
                      {
                        v71 = v81;
                        sub_826B8(v83 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_disableAction, v81);
                        v72 = sub_106160();
                        v73 = *(v72 - 8);
                        if ((*(v73 + 48))(v71, 1, v72) == 1)
                        {
                          v34 = v81;
                          goto LABEL_6;
                        }

                        v74 = v84;
                        v84[3] = v72;
                        v75 = sub_1A924(v74);
                        return (*(v73 + 32))(v75, v81, v72);
                      }

                      else
                      {
                        if (a1 != 0x5344496D72616C61 || a2 != 0xED0000676E697274)
                        {
                          result = sub_107370();
                          if ((result & 1) == 0)
                          {
                            goto LABEL_7;
                          }
                        }

                        v76 = v82;
                        sub_826B8(v83 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_alarmIDString, v82);
                        v77 = sub_106160();
                        v78 = *(v77 - 8);
                        if ((*(v78 + 48))(v76, 1, v77) == 1)
                        {
                          v34 = v82;
                          goto LABEL_6;
                        }

                        v79 = v84;
                        v84[3] = v77;
                        v80 = sub_1A924(v79);
                        return (*(v78 + 32))(v80, v82, v77);
                      }
                    }
                  }

                  v53 = OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_overrideTomorrowCalendarLogic;
                }
              }
            }
          }
        }

        v54 = v84;
        v55 = *(v83 + v53);
        v84[3] = &type metadata for Bool;
        *v54 = v55;
        return result;
      }

      sub_826B8(v83 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_meridian, v22);
      v49 = sub_106160();
      v50 = *(v49 - 8);
      if ((*(v50 + 48))(v22, 1, v49) == 1)
      {
        v34 = v22;
        goto LABEL_6;
      }

      v51 = v84;
      v84[3] = v49;
      v52 = sub_1A924(v51);
      return (*(v50 + 32))(v52, v22, v49);
    }
  }
}

unint64_t sub_808F4(char a1)
{
  result = 0x6C6562616CLL;
  switch(a1)
  {
    case 1:
      result = 1701669236;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x796C6E4F656D6974;
      break;
    case 4:
      result = 0x6E6169646972656DLL;
      break;
    case 5:
      result = 0x64656C62616E65;
      break;
    case 6:
      result = 0x7272756365527369;
      break;
    case 7:
      result = 0x417065656C537369;
      break;
    case 8:
      result = 1937334628;
      break;
    case 9:
      result = 0xD00000000000001DLL;
      break;
    case 10:
      result = 0xD00000000000001ALL;
      break;
    case 11:
      result = 0x72726F6D6F547369;
      break;
    case 12:
      result = 0xD00000000000001DLL;
      break;
    case 13:
      result = 0x6E6F69746361;
      break;
    case 14:
      result = 0x6341656C62616E65;
      break;
    case 15:
      result = 0x41656C6261736964;
      break;
    case 16:
      result = 0x5344496D72616C61;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_80B2C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_808F4(*a1);
  v5 = v4;
  if (v3 == sub_808F4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_107370();
  }

  return v8 & 1;
}

Swift::Int sub_80BB4()
{
  v1 = *v0;
  sub_107400();
  sub_808F4(v1);
  sub_106E70();

  return sub_107420();
}

uint64_t sub_80C18()
{
  sub_808F4(*v0);
  sub_106E70();
}

Swift::Int sub_80C6C()
{
  v1 = *v0;
  sub_107400();
  sub_808F4(v1);
  sub_106E70();

  return sub_107420();
}

uint64_t sub_80CCC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_829D4();
  *a2 = result;
  return result;
}

unint64_t sub_80CFC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_808F4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_80D44@<X0>(_BYTE *a1@<X8>)
{
  result = sub_829D4();
  *a1 = result;
  return result;
}

uint64_t sub_80D84(uint64_t a1)
{
  v2 = sub_824F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_80DC0(uint64_t a1)
{
  v2 = sub_824F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_80DFC()
{
  sub_82544(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_label);
  v1 = *(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_time);

  sub_82544(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_formattedTimeString);
  sub_82544(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_timeOnlyString);
  sub_82544(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_meridian);
  v2 = *(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_days);

  sub_82544(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_labelForSnippetWithRecurrence);
  sub_82544(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_action);
  sub_82544(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_enableAction);
  sub_82544(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_disableAction);
  sub_82544(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_alarmIDString);
  return v0;
}

uint64_t sub_80EE4(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return swift_deallocClassInstance();
}

void sub_80F68()
{
  sub_7DD24();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_81034(void *a1)
{
  v3 = v1;
  v5 = sub_25E4(&qword_1395A0, &qword_109B88);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  sub_1A8E0(a1, a1[3]);
  sub_824F0();
  sub_107450();
  LOBYTE(v19) = 0;
  sub_106160();
  sub_824A8(&qword_1395A8, &type metadata accessor for SpeakableString);
  sub_1072F0();
  if (!v2)
  {
    v19 = *(v3 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_time);
    HIBYTE(v18) = 1;
    sub_1060A0();
    sub_824A8(&qword_1395B0, &type metadata accessor for DialogCalendar);
    sub_1072F0();
    LOBYTE(v19) = 2;
    sub_1072F0();
    LOBYTE(v19) = 3;
    sub_1072F0();
    LOBYTE(v19) = 4;
    sub_1072F0();
    v11 = *(v3 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_enabled);
    LOBYTE(v19) = 5;
    sub_107310();
    v12 = *(v3 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_isRecurrent);
    LOBYTE(v19) = 6;
    sub_107310();
    v13 = *(v3 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_isSleepAlarm);
    LOBYTE(v19) = 7;
    sub_107310();
    v19 = *(v3 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_days);
    HIBYTE(v18) = 8;
    sub_25E4(&qword_137888, &unk_10A130);
    sub_8261C(&qword_1395B8, &qword_1395A8);
    sub_107330();
    LOBYTE(v19) = 9;
    sub_1072F0();
    v14 = *(v3 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_isSetWitchingHoursForToday);
    LOBYTE(v19) = 10;
    sub_107310();
    v15 = *(v3 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_isTomorrow);
    LOBYTE(v19) = 11;
    sub_107310();
    v16 = *(v3 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_overrideTomorrowCalendarLogic);
    LOBYTE(v19) = 12;
    sub_107310();
    LOBYTE(v19) = 13;
    sub_1072F0();
    LOBYTE(v19) = 14;
    sub_1072F0();
    LOBYTE(v19) = 15;
    sub_1072F0();
    LOBYTE(v19) = 16;
    sub_1072F0();
  }

  return (*(v6 + 8))(v9, v5);
}

void sub_815E0()
{
  sub_7DD24();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_816A8(uint64_t *a1)
{
  v3 = sub_25E4(&qword_137598, &unk_107EB0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v46 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v47 = v43 - v8;
  v9 = __chkstk_darwin(v7);
  v48 = v43 - v10;
  v11 = __chkstk_darwin(v9);
  v49 = v43 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = v43 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = v43 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = v43 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = v43 - v23;
  __chkstk_darwin(v22);
  v50 = v43 - v25;
  v53 = sub_25E4(&qword_139578, &qword_109B80);
  v51 = *(v53 - 8);
  v26 = *(v51 + 64);
  __chkstk_darwin(v53);
  v28 = v43 - v27;
  v55 = a1;
  v56 = v1;
  *(v1 + 16) = 0;
  v29 = a1[4];
  sub_1A8E0(a1, a1[3]);
  sub_824F0();
  v52 = v28;
  v30 = v54;
  sub_107440();
  if (v30)
  {
    v41 = v56;

    v34 = v55;
    type metadata accessor for AlarmAlarm(0);
    v35 = *(*v41 + 48);
    v36 = *(*v41 + 52);
    swift_deallocPartialClassInstance();
    v42 = v34;
  }

  else
  {
    v31 = v24;
    v54 = v21;
    v44 = v15;
    v45 = v18;
    sub_106160();
    LOBYTE(v58) = 0;
    v32 = sub_824A8(&qword_139588, &type metadata accessor for SpeakableString);
    v33 = v50;
    sub_1072A0();
    v43[1] = v32;
    v38 = v56;
    sub_825AC(v33, v56 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_label);
    sub_1060A0();
    v57 = 1;
    sub_824A8(&qword_139590, &type metadata accessor for DialogCalendar);
    sub_1072A0();
    *(v38 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_time) = v58;
    LOBYTE(v58) = 2;
    v50 = 0;
    sub_1072A0();
    sub_825AC(v31, v38 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_formattedTimeString);
    LOBYTE(v58) = 3;
    v39 = v54;
    sub_1072A0();
    sub_825AC(v39, v38 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_timeOnlyString);
    LOBYTE(v58) = 4;
    v40 = v45;
    sub_1072A0();
    sub_825AC(v40, v38 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_meridian);
    LOBYTE(v58) = 5;
    *(v38 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_enabled) = sub_1072C0() & 1;
    LOBYTE(v58) = 6;
    *(v38 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_isRecurrent) = sub_1072C0() & 1;
    LOBYTE(v58) = 7;
    *(v38 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_isSleepAlarm) = sub_1072C0() & 1;
    sub_25E4(&qword_137888, &unk_10A130);
    v57 = 8;
    sub_8261C(&qword_139598, &qword_139588);
    sub_1072E0();
    *(v38 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_days) = v58;
    LOBYTE(v58) = 9;
    sub_1072A0();
    sub_825AC(v44, v56 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_labelForSnippetWithRecurrence);
    LOBYTE(v58) = 10;
    *(v56 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_isSetWitchingHoursForToday) = sub_1072C0() & 1;
    LOBYTE(v58) = 11;
    *(v56 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_isTomorrow) = sub_1072C0() & 1;
    LOBYTE(v58) = 12;
    *(v56 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_overrideTomorrowCalendarLogic) = sub_1072C0() & 1;
    LOBYTE(v58) = 13;
    sub_1072A0();
    sub_825AC(v49, v56 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_action);
    LOBYTE(v58) = 14;
    sub_1072A0();
    sub_825AC(v48, v56 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_enableAction);
    LOBYTE(v58) = 15;
    sub_1072A0();
    sub_825AC(v47, v56 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_disableAction);
    LOBYTE(v58) = 16;
    sub_1072A0();
    (*(v51 + 8))(v52, v53);
    v41 = v56;
    sub_825AC(v46, v56 + OBJC_IVAR____TtC15AlarmFlowPlugin10AlarmAlarm_alarmIDString);
    v42 = v55;
  }

  sub_2738(v42);
  return v41;
}

void *sub_82288()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = v2;
  return v2;
}

void sub_822D0(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = a1;
}

uint64_t (*sub_8231C())()
{
  v1 = *v0;
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_82398@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for AlarmAlarm(0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  result = sub_816A8(a1);
  if (!v2)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t sub_824A8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_824F0()
{
  result = qword_139580;
  if (!qword_139580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_139580);
  }

  return result;
}

uint64_t sub_82544(uint64_t a1)
{
  v2 = sub_25E4(&qword_137598, &unk_107EB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_825AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_25E4(&qword_137598, &unk_107EB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_8261C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_14EB0(&qword_137888, &unk_10A130);
    sub_824A8(a2, &type metadata accessor for SpeakableString);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_826B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_25E4(&qword_137598, &unk_107EB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_82728()
{
  result = qword_1395D0;
  if (!qword_1395D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1395D0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AlarmAlarm.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AlarmAlarm.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_828D0()
{
  result = qword_1395D8;
  if (!qword_1395D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1395D8);
  }

  return result;
}

unint64_t sub_82928()
{
  result = qword_1395E0;
  if (!qword_1395E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1395E0);
  }

  return result;
}

unint64_t sub_82980()
{
  result = qword_1395E8;
  if (!qword_1395E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1395E8);
  }

  return result;
}

uint64_t sub_829D4()
{
  v0 = sub_107390();

  if (v0 >= 0x11)
  {
    return 17;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_82A88(uint64_t a1, void (*a2)(void), uint64_t *a3)
{
  v5 = sub_106200();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  a2(0);
  sub_1061E0();
  result = sub_1060D0();
  *a3 = result;
  return result;
}

char *sub_82B90(unint64_t a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v20 = a4;
  if (a1 >> 62)
  {
    v7 = sub_107270();
  }

  else
  {
    v7 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  if (v7)
  {
    result = sub_83404(0, v7 & ~(v7 >> 63), 0);
    if (v7 < 0)
    {
      __break(1u);
      return result;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v7; ++i)
      {
        v10 = [sub_1071C0() repeatSchedule];
        swift_unknownObjectRelease();
        v12 = _swiftEmptyArrayStorage[2];
        v11 = _swiftEmptyArrayStorage[3];
        if (v12 >= v11 >> 1)
        {
          sub_83404((v11 > 1), v12 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v12 + 1;
        _swiftEmptyArrayStorage[v12 + 4] = v10;
      }
    }

    else
    {
      v13 = (a1 + 32);
      do
      {
        v14 = [*v13 repeatSchedule];
        v16 = _swiftEmptyArrayStorage[2];
        v15 = _swiftEmptyArrayStorage[3];
        if (v16 >= v15 >> 1)
        {
          v17 = v14;
          sub_83404((v15 > 1), v16 + 1, 1);
          v14 = v17;
        }

        _swiftEmptyArrayStorage[2] = v16 + 1;
        _swiftEmptyArrayStorage[v16 + 4] = v14;
        ++v13;
        --v7;
      }

      while (v7);
    }
  }

  v18 = sub_84850(_swiftEmptyArrayStorage);

  if (*a2 != -1)
  {
    swift_once();
  }

  v19 = sub_8324C(v18, *a3);

  return (v19 & 1);
}

void *sub_82D7C(char a1)
{
  result = _swiftEmptyArrayStorage;
  if (a1)
  {
    sub_1069D0();
    sub_106EC0();
    if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      v4 = *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
      sub_106F10();
    }

    sub_106F20();
    result = _swiftEmptyArrayStorage;
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  sub_1069F0();
  sub_106EC0();
  if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    v5 = *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
    sub_106F10();
  }

  sub_106F20();
  result = _swiftEmptyArrayStorage;
  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_15:
  sub_106A20();
  sub_106EC0();
  if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    v6 = *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
    sub_106F10();
  }

  sub_106F20();
  result = _swiftEmptyArrayStorage;
  if ((a1 & 8) == 0)
  {
LABEL_5:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_18:
  sub_106A10();
  sub_106EC0();
  if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    v7 = *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
    sub_106F10();
  }

  sub_106F20();
  result = _swiftEmptyArrayStorage;
  if ((a1 & 0x10) == 0)
  {
LABEL_6:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_21:
  sub_1069C0();
  sub_106EC0();
  if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    v8 = *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
    sub_106F10();
  }

  sub_106F20();
  result = _swiftEmptyArrayStorage;
  if ((a1 & 0x20) == 0)
  {
LABEL_7:
    if ((a1 & 0x40) == 0)
    {
      return result;
    }

    goto LABEL_27;
  }

LABEL_24:
  sub_106A00();
  sub_106EC0();
  if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    v9 = *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
    sub_106F10();
  }

  sub_106F20();
  result = _swiftEmptyArrayStorage;
  if ((a1 & 0x40) != 0)
  {
LABEL_27:
    sub_1069E0();
    sub_106EC0();
    if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      v3 = *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
      sub_106F10();
    }

    sub_106F20();
    return _swiftEmptyArrayStorage;
  }

  return result;
}

Swift::Int sub_83074()
{
  result = sub_848C4(&off_12F4E0);
  qword_13B898 = result;
  return result;
}

Swift::Int sub_8309C()
{
  result = sub_848C4(&off_12F528);
  qword_13B8A0 = result;
  return result;
}

uint64_t sub_830C4()
{
  if (qword_136D50 != -1)
  {
    swift_once();
  }

  v0 = qword_13B898;
  v1 = qword_136D58;

  if (v1 != -1)
  {
    swift_once();
  }

  result = sub_8316C(v2, v0);
  qword_13B8A8 = result;
  return result;
}

uint64_t sub_8316C(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_83950(&v11, *(*(v2 + 48) + ((v9 << 9) | (8 * v10)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_8324C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  for (i = result; v7; result = i)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v13 = *(*(result + 48) + 8 * (v10 | (v3 << 6)));
    v14 = *(a2 + 40);
    sub_107400();
    v15 = sub_106BD0();
    sub_107410(v15);
    v16 = sub_107420();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = *(*(a2 + 48) + 8 * v18);
      v21 = sub_106BD0();
      if (v21 == sub_106BD0())
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

size_t sub_833E4(size_t a1, int64_t a2, char a3)
{
  result = sub_83464(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_83404(char *a1, int64_t a2, char a3)
{
  result = sub_8363C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_83424(char *a1, int64_t a2, char a3)
{
  result = sub_83740(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_83444(char *a1, int64_t a2, char a3)
{
  result = sub_8384C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_83464(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_25E4(&qword_138CE0, &qword_1097E8);
  v10 = *(sub_106160() - 8);
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
  v15 = *(sub_106160() - 8);
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

char *sub_8363C(char *result, int64_t a2, char a3, char *a4)
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
    sub_25E4(&qword_139600, &qword_109D08);
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

char *sub_83740(char *result, int64_t a2, char a3, char *a4)
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
    sub_25E4(&qword_1376D0, &unk_1080E0);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_8384C(char *result, int64_t a2, char a3, char *a4)
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
    sub_25E4(&qword_139620, &qword_109D18);
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
    v10 = _swiftEmptyArrayStorage;
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

uint64_t sub_83950(Swift::Int *a1, Swift::Int a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 40);
  sub_107400();
  v8 = sub_106BD0();
  sub_107410(v8);
  v9 = sub_107420();
  v10 = -1 << *(v6 + 32);
  v11 = v9 & ~v10;
  if ((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = *(*(v6 + 48) + 8 * v11);
      v14 = sub_106BD0();
      if (v14 == sub_106BD0())
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(*(v6 + 48) + 8 * v11);
  }

  else
  {
LABEL_5:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_83CC0(a2, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_83A6C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_25E4(&qword_1395F0, &qword_109D00);
  result = sub_107160();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_107400();
      v20 = sub_106BD0();
      sub_107410(v20);
      result = sub_107420();
      v21 = -1 << *(v6 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v28;
    }

    v2 = v29;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

Swift::Int sub_83CC0(Swift::Int result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_83A6C(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_83E2C();
      goto LABEL_12;
    }

    sub_83F6C(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  sub_107400();
  v11 = sub_106BD0();
  sub_107410(v11);
  result = sub_107420();
  v12 = -1 << *(v9 + 32);
  a2 = result & ~v12;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    do
    {
      v14 = *(*(v9 + 48) + 8 * a2);
      v15 = sub_106BD0();
      result = sub_106BD0();
      if (v15 == result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v16 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v16 + 48) + 8 * a2) = v6;
  v17 = *(v16 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v16 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1073B0();
  __break(1u);
  return result;
}

void *sub_83E2C()
{
  v1 = v0;
  sub_25E4(&qword_1395F0, &qword_109D00);
  v2 = *v0;
  v3 = sub_107150();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_83F6C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_25E4(&qword_1395F0, &qword_109D00);
  result = sub_107160();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_107400();
      v19 = sub_106BD0();
      sub_107410(v19);
      result = sub_107420();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v27;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

void *sub_84190()
{
  sub_107220();
  sub_1069A0();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = objc_allocWithZone(ObjCClassFromMetadata);
  v2 = sub_106E10();
  v3 = [v1 initWithIdentifier:0 displayString:v2];

  [v3 setRepeatSchedule:6];
  sub_107200();
  v4 = _swiftEmptyArrayStorage[2];
  sub_107230();
  sub_107240();
  sub_107210();
  v5 = objc_allocWithZone(ObjCClassFromMetadata);
  v6 = sub_106E10();
  v7 = [v5 initWithIdentifier:0 displayString:v6];

  [v7 setRepeatSchedule:0];
  sub_107200();
  v8 = _swiftEmptyArrayStorage[2];
  sub_107230();
  sub_107240();
  sub_107210();
  v9 = objc_allocWithZone(ObjCClassFromMetadata);
  v10 = sub_106E10();
  v11 = [v9 initWithIdentifier:0 displayString:v10];

  [v11 setRepeatSchedule:1];
  sub_107200();
  v12 = _swiftEmptyArrayStorage[2];
  sub_107230();
  sub_107240();
  sub_107210();
  v13 = objc_allocWithZone(ObjCClassFromMetadata);
  v14 = sub_106E10();
  v15 = [v13 initWithIdentifier:0 displayString:v14];

  [v15 setRepeatSchedule:2];
  sub_107200();
  v16 = _swiftEmptyArrayStorage[2];
  sub_107230();
  sub_107240();
  sub_107210();
  v17 = objc_allocWithZone(ObjCClassFromMetadata);
  v18 = sub_106E10();
  v19 = [v17 initWithIdentifier:0 displayString:v18];

  [v19 setRepeatSchedule:3];
  sub_107200();
  v20 = _swiftEmptyArrayStorage[2];
  sub_107230();
  sub_107240();
  sub_107210();
  v21 = objc_allocWithZone(ObjCClassFromMetadata);
  v22 = sub_106E10();
  v23 = [v21 initWithIdentifier:0 displayString:v22];

  [v23 setRepeatSchedule:4];
  sub_107200();
  v24 = _swiftEmptyArrayStorage[2];
  sub_107230();
  sub_107240();
  sub_107210();
  v25 = objc_allocWithZone(ObjCClassFromMetadata);
  v26 = sub_106E10();
  v27 = [v25 initWithIdentifier:0 displayString:v26];

  [v27 setRepeatSchedule:5];
  sub_107200();
  v28 = _swiftEmptyArrayStorage[2];
  sub_107230();
  sub_107240();
  sub_107210();
  return _swiftEmptyArrayStorage;
}

void *sub_84558(uint64_t a1)
{
  v2 = sub_1047B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_25E4(&qword_139608, &qword_109D10);
    v10 = sub_107170();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_84A58(&qword_139610);
      v18 = sub_106DE0();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_84A58(&qword_139618);
          v25 = sub_106E00();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_84850(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_84A04();
  result = sub_106F80();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_83950(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

Swift::Int sub_848C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_25E4(&qword_1395F0, &qword_109D00);
    v3 = sub_107170();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v10 = *(v6 + 8 * v4);
      v11 = *(v3 + 40);
      sub_107400();
      v12 = sub_106BD0();
      sub_107410(v12);
      result = sub_107420();
      v14 = ~(-1 << *(v3 + 32));
      for (i = result & v14; ; i = (i + 1) & v14)
      {
        v16 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v16) == 0)
        {
          break;
        }

        v17 = *(*(v3 + 48) + 8 * i);
        v18 = sub_106BD0();
        result = sub_106BD0();
        if (v18 == result)
        {
          goto LABEL_5;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v16;
      *(*(v3 + 48) + 8 * i) = v10;
      v7 = *(v3 + 16);
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (!v8)
      {
        *(v3 + 16) = v9;
LABEL_5:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

unint64_t sub_84A04()
{
  result = qword_1395F8;
  if (!qword_1395F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1395F8);
  }

  return result;
}

uint64_t sub_84A58(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1047B0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_84A9C(uint64_t *a1, uint64_t a2)
{
  v4 = _s20HandleIntentStrategyVMa_5();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s21ConfirmIntentStrategyVMa();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1068B0();
  sub_106890();
  sub_104B00();
  if (qword_136E48 != -1)
  {
    swift_once();
  }

  sub_104A60();
  sub_25E4(&qword_13B0E0, &qword_10BC10);
  sub_104AC0();
  sub_262C(a1, v11);
  sub_517C8(a2, &v11[*(v8 + 20)]);
  sub_84DB0(&qword_139628, _s21ConfirmIntentStrategyVMa);
  sub_104A80();
  sub_104AD0();
  sub_262C(a1, v7);
  sub_517C8(a2, &v7[*(v4 + 20)]);
  sub_84DB0(&qword_139630, _s20HandleIntentStrategyVMa_5);
  sub_104A50();
  sub_104AB0();
  sub_1CDFC(a2);
  sub_2738(a1);
  sub_84DF8(v7, _s20HandleIntentStrategyVMa_5);
  return sub_84DF8(v11, _s21ConfirmIntentStrategyVMa);
}

BOOL sub_84D4C()
{
  sub_25E4(&qword_139638, &unk_109D20);
  v0 = sub_105150();
  sub_106880();

  v1 = sub_1068A0();
  return v1 == sub_1068A0();
}

uint64_t sub_84DB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_84DF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_84E68()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_139640);
  sub_135C4(v0, qword_139640);
  return sub_106A80();
}

uint64_t sub_84EB4(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = sub_104D60();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v6 = sub_106D20();
  v2[13] = v6;
  v7 = *(v6 - 8);
  v2[14] = v7;
  v8 = *(v7 + 64) + 15;
  v2[15] = swift_task_alloc();
  v9 = sub_106300();
  v2[16] = v9;
  v10 = *(v9 - 8);
  v2[17] = v10;
  v11 = *(v10 + 64) + 15;
  v2[18] = swift_task_alloc();
  v12 = sub_106320();
  v2[19] = v12;
  v13 = *(v12 - 8);
  v2[20] = v13;
  v14 = *(v13 + 64) + 15;
  v2[21] = swift_task_alloc();
  v15 = sub_25E4(&qword_137FA8, &qword_109DD0);
  v2[22] = v15;
  v16 = *(v15 - 8);
  v2[23] = v16;
  v17 = *(v16 + 64) + 15;
  v2[24] = swift_task_alloc();
  v18 = sub_104FF0();
  v2[25] = v18;
  v19 = *(v18 - 8);
  v2[26] = v19;
  v20 = *(v19 + 64) + 15;
  v2[27] = swift_task_alloc();

  return _swift_task_switch(sub_8514C, 0, 0);
}

uint64_t sub_8514C()
{
  v1 = v0[27];
  sub_104FE0();
  if (qword_136D68 != -1)
  {
    swift_once();
  }

  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[22];
  v5 = v0[9];
  v6 = sub_135C4(v0[13], qword_139640);
  v0[28] = v6;
  (*(v3 + 16))(v2, v5, v4);
  v7 = sub_106D10();
  v8 = sub_106FC0();
  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[23];
  v10 = v0[24];
  v12 = v0[22];
  if (v9)
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    v14 = sub_105200();
    v15 = [v14 unsupportedReason];

    (*(v11 + 8))(v10, v12);
    *(v13 + 4) = v15;
    _os_log_impl(&dword_0, v7, v8, "CreateAlarm.UnsupportedValueStrategy.makeUnsupportedValueOutput() called with unsupportedReason: %ld", v13, 0xCu);
  }

  else
  {
    (*(v11 + 8))(v0[24], v0[22]);
  }

  v16 = sub_106D10();
  v17 = sub_106FC0();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v17, "Hitting alarm RF codepath.", v18, 2u);
  }

  v19 = v0[21];
  v21 = v0[17];
  v20 = v0[18];
  v23 = v0[15];
  v22 = v0[16];
  v24 = v0[13];
  v25 = v0[14];

  (*(v21 + 104))(v20, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v22);
  (*(v25 + 16))(v23, v6, v24);
  mach_absolute_time();
  sub_106330();
  if (qword_136E78 != -1)
  {
    swift_once();
  }

  v26 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
  v29 = &async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
  v27 = swift_task_alloc();
  v0[29] = v27;
  *v27 = v0;
  v27[1] = sub_8548C;

  return (v29)(0xD00000000000002FLL, 0x800000000010D670, _swiftEmptyArrayStorage);
}

uint64_t sub_8548C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 232);
  v7 = *v2;
  *(v3 + 240) = a1;
  *(v3 + 248) = v1;

  if (v1)
  {
    v5 = sub_857D4;
  }

  else
  {
    v5 = sub_855A0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_855A0()
{
  v1 = v0[12];
  sub_104CF0();
  v2 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v3 = swift_task_alloc();
  v0[32] = v3;
  *v3 = v0;
  v3[1] = sub_85654;
  v4 = v0[30];
  v5 = v0[27];
  v6 = v0[21];
  v7 = v0[12];
  v8 = v0[8];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v8, v7, v5, v6, 0);
}

uint64_t sub_85654()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v4 = *v1;
  *(*v1 + 264) = v0;

  v5 = v2[30];
  (*(v2[11] + 8))(v2[12], v2[10]);

  if (v0)
  {
    v6 = sub_85B88;
  }

  else
  {
    v6 = sub_85AA0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_857D4()
{
  v25 = v0;
  v1 = v0[31];
  v2 = v0[28];
  (*(v0[20] + 8))(v0[21], v0[19]);
  swift_errorRetain();
  v3 = sub_106D10();
  v4 = sub_106FB0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v24 = v6;
    *v5 = 136315138;
    v0[7] = v1;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v7 = sub_106E30();
    v9 = sub_722E8(v7, v8, &v24);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v3, v4, "Error in RF path: %s", v5, 0xCu);
    sub_2738(v6);
  }

  v10 = v0[26];
  v11 = v0[27];
  v12 = v0[24];
  v13 = v0[25];
  v14 = v0[21];
  v21 = v0[18];
  v22 = v0[15];
  v23 = v0[12];
  v15 = sub_106750();
  v0[5] = v15;
  v0[6] = &protocol witness table for ABCReport;
  v16 = sub_1A924(v0 + 2);
  *v16 = sub_1045F0();
  v17 = enum case for DialogLayerErrorSubType.dialogError(_:);
  v18 = sub_106690();
  (*(*(v18 - 8) + 104))(v16, v17, v18);
  (*(*(v15 - 8) + 104))(v16, enum case for ABCReport.dialog(_:), v15);
  sub_1064D0();
  sub_2738(v0 + 2);
  swift_willThrow();
  (*(v10 + 8))(v11, v13);

  v19 = v0[1];

  return v19();
}

uint64_t sub_85AA0()
{
  v2 = v0[26];
  v1 = v0[27];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[18];
  v6 = v0[15];
  v7 = v0[12];
  (*(v0[20] + 8))(v0[21], v0[19]);
  (*(v2 + 8))(v1, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_85B88()
{
  v25 = v0;
  v1 = v0[33];
  v2 = v0[28];
  (*(v0[20] + 8))(v0[21], v0[19]);
  swift_errorRetain();
  v3 = sub_106D10();
  v4 = sub_106FB0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v24 = v6;
    *v5 = 136315138;
    v0[7] = v1;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v7 = sub_106E30();
    v9 = sub_722E8(v7, v8, &v24);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v3, v4, "Error in RF path: %s", v5, 0xCu);
    sub_2738(v6);
  }

  v10 = v0[26];
  v11 = v0[27];
  v12 = v0[24];
  v13 = v0[25];
  v14 = v0[21];
  v21 = v0[18];
  v22 = v0[15];
  v23 = v0[12];
  v15 = sub_106750();
  v0[5] = v15;
  v0[6] = &protocol witness table for ABCReport;
  v16 = sub_1A924(v0 + 2);
  *v16 = sub_1045F0();
  v17 = enum case for DialogLayerErrorSubType.dialogError(_:);
  v18 = sub_106690();
  (*(*(v18 - 8) + 104))(v16, v17, v18);
  (*(*(v15 - 8) + 104))(v16, enum case for ABCReport.dialog(_:), v15);
  sub_1064D0();
  sub_2738(v0 + 2);
  swift_willThrow();
  (*(v10 + 8))(v11, v13);

  v19 = v0[1];

  return v19();
}

uint64_t sub_85E54(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1CA94;

  return sub_84EB4(a1, a2);
}

uint64_t sub_85F14()
{
  v1 = *(v0 + 16);
  sub_25E4(&qword_137FA8, &qword_109DD0);
  v2 = sub_1051F0();
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_85F8C()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_139660);
  sub_135C4(v0, qword_139660);
  return sub_106A60();
}

uint64_t sub_85FD8()
{
  v0 = sub_106200();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  type metadata accessor for AlarmBaseCATs_Async();
  sub_1061E0();
  result = sub_1060D0();
  qword_139678 = result;
  return result;
}

uint64_t sub_86064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v8 = [objc_allocWithZone(SAUIConfirmationView) init];
  v9 = sub_106E10();
  [v8 setConfirmText:v9];

  v10 = sub_106E10();
  [v8 setDenyText:v10];

  sub_25E4(&qword_137DD0, &unk_108920);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_108470;
  *(v11 + 32) = a5;
  v12 = a5;
  sub_25E4(&qword_139698, qword_109E10);
  isa = sub_106ED0().super.isa;

  [v8 setConfirmCommands:isa];

  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_108470;
  *(v14 + 32) = a6;
  v15 = a6;
  v16 = sub_106ED0().super.isa;

  [v8 setDenyCommands:v16];

  v17 = [objc_allocWithZone(SAUIConfirmationOption) init];
  v18 = [v8 confirmText];
  [v17 setLabel:v18];

  [v17 setType:SAUIConfirmationOptionConfirmationOptionTypeCONFIRMValue];
  v19 = [v8 confirmCommands];
  [v17 setCommands:v19];

  v20 = [objc_allocWithZone(SAUIConfirmationOption) init];
  v21 = [v8 denyText];
  [v20 setLabel:v21];

  [v20 setType:SAUIConfirmationOptionConfirmationOptionTypeDENYValue];
  v22 = [v8 denyCommands];
  [v20 setCommands:v22];

  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_109DE0;
  *(v23 + 32) = v17;
  *(v23 + 40) = v20;
  sub_16F28(0, &unk_1396A0, SAUIConfirmationOption_ptr);
  v24 = v17;
  v25 = v20;
  v26 = sub_106ED0().super.isa;

  [v8 setAllConfirmationOptions:v26];

  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_108470;
  *(v27 + 32) = v8;

  return v27;
}

uint64_t sub_863DC(uint64_t a1)
{
  v1[7] = a1;
  v2 = sub_106440();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();
  v5 = sub_104EC0();
  v1[11] = v5;
  v6 = *(v5 - 8);
  v1[12] = v6;
  v7 = *(v6 + 64) + 15;
  v1[13] = swift_task_alloc();
  v8 = sub_105030();
  v1[14] = v8;
  v9 = *(v8 - 8);
  v1[15] = v9;
  v10 = *(v9 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v11 = sub_105060();
  v1[18] = v11;
  v12 = *(v11 - 8);
  v1[19] = v12;
  v13 = *(v12 + 64) + 15;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();

  return _swift_task_switch(sub_865C8, 0, 0);
}

uint64_t sub_865C8()
{
  if (qword_136D78 != -1)
  {
    swift_once();
  }

  v0[22] = qword_139678;
  v1 = *(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + 1);
  v5 = &async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:);
  v2 = swift_task_alloc();
  v0[23] = v2;
  *v2 = v0;
  v2[1] = sub_866D0;
  v3 = v0[17];

  return (v5)(v3, 0xD000000000000017, 0x800000000010D6A0, _swiftEmptyArrayStorage);
}

uint64_t sub_866D0()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_869B0;
  }

  else
  {
    v3 = sub_867E4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_867E4()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  v4 = sub_105020();
  v5 = *(v3 + 8);
  v0[25] = v5;
  v0[26] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v2);
  if (*(v4 + 16))
  {
    v6 = v0[21];
    v7 = v0[18];
    v8 = v0[19];
    v10 = v0[12];
    v9 = v0[13];
    v11 = v0[11];
    (*(v8 + 16))(v6, v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v7);

    sub_105050();
    (*(v8 + 8))(v6, v7);
    v12 = sub_104EB0();
    v14 = v13;
    (*(v10 + 8))(v9, v11);
  }

  else
  {

    v12 = 0;
    v14 = 0;
  }

  v0[27] = v12;
  v0[28] = v14;
  v15 = *(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + 1);
  v20 = &async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:);
  v16 = swift_task_alloc();
  v0[29] = v16;
  *v16 = v0;
  v16[1] = sub_86A58;
  v17 = v0[22];
  v18 = v0[16];

  return (v20)(v18, 0xD000000000000018, 0x800000000010D6C0, _swiftEmptyArrayStorage);
}

uint64_t sub_869B0()
{
  v1 = v0[24];
  v3 = v0[20];
  v2 = v0[21];
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[13];
  v7 = v0[10];

  v8 = v0[1];

  return v8();
}

uint64_t sub_86A58()
{
  v2 = *(*v1 + 232);
  v5 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = sub_87218;
  }

  else
  {
    v3 = sub_86B6C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_86B6C()
{
  v63 = v0;
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[16];
  v4 = v0[14];
  v5 = sub_105020();
  v2(v3, v4);
  v6 = v0[28];
  if (*(v5 + 16))
  {
    v8 = v0[19];
    v7 = v0[20];
    v9 = v0[18];
    v11 = v0[12];
    v10 = v0[13];
    v12 = v0[11];
    (*(v8 + 16))(v7, v5 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v9);

    sub_105050();
    (*(v8 + 8))(v7, v9);
    v13 = sub_104EB0();
    v15 = v14;
    (*(v11 + 8))(v10, v12);
    if (v6)
    {
      v16 = v0[28];
      if (v15)
      {
        if (qword_136D70 != -1)
        {
          swift_once();
        }

        v17 = sub_106D20();
        sub_135C4(v17, qword_139660);

        v18 = sub_106D10();
        v19 = sub_106FC0();

        v61 = v16;
        v60 = v13;
        if (os_log_type_enabled(v18, v19))
        {
          v20 = v0[27];
          v21 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          *v21 = 136315394;

          v22 = sub_722E8(v20, v16, &v62);

          *(v21 + 4) = v22;
          *(v21 + 12) = 2080;

          v23 = sub_722E8(v13, v15, &v62);

          *(v21 + 14) = v23;
          _os_log_impl(&dword_0, v18, v19, "Building confirmation button view with text: %s, %s", v21, 0x16u);
          swift_arrayDestroy();
        }

        v24 = v0[9];
        v25 = v0[10];
        v26 = v0[7];
        v27 = v0[8];
        sub_106560();
        sub_106550();
        sub_106540();

        v28 = v0[6];
        sub_1A8E0(v0 + 2, v0[5]);
        v29 = sub_104CD0();
        sub_2738(v0 + 2);
        v30 = *(v24 + 104);
        v30(v25, enum case for ButtonOption.yes(_:), v27);
        v31 = sub_EAD50(v26, v25);
        v32 = *(v24 + 8);
        v32(v25, v27);
        v30(v25, enum case for ButtonOption.cancel(_:), v27);
        v33 = sub_EAD50(v26, v25);
        v32(v25, v27);
        v34 = v0[27];
        if (v29)
        {
          sub_16F28(0, &unk_139680, SASTButtonItem_ptr);
          sub_25E4(&qword_137DD0, &unk_108920);
          v35 = swift_allocObject();
          *(v35 + 16) = xmmword_108470;
          *(v35 + 32) = v31;

          v59 = v31;
          v36 = sub_106FD0();
          v37 = swift_allocObject();
          *(v37 + 16) = xmmword_108470;
          *(v37 + 32) = v33;

          v38 = v33;
          v39 = sub_106FD0();
          v40 = [objc_allocWithZone(SASTItemGroup) init];
          v41 = swift_allocObject();
          *(v41 + 16) = xmmword_109DE0;
          *(v41 + 32) = v36;
          *(v41 + 40) = v39;
          v42 = v36;
          v43 = v39;
          sub_25E4(&qword_139690, &unk_109E00);
          isa = sub_106ED0().super.isa;

          [v40 setTemplateItems:isa];

          v45 = swift_allocObject();
          *(v45 + 1) = xmmword_108470;
          v45[4] = v40;
        }

        else
        {
          v45 = sub_86064(v60, v15, v0[27], v61, v31, v33);
        }

        goto LABEL_19;
      }
    }
  }

  else
  {

    if (v6)
    {
      v46 = v0[28];
    }
  }

  if (qword_136D70 != -1)
  {
    swift_once();
  }

  v47 = sub_106D20();
  sub_135C4(v47, qword_139660);
  v48 = sub_106D10();
  v49 = sub_106FB0();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&dword_0, v48, v49, "Error generating yes/not button titles for confirmation. We didn't throw, but returned nil for the text. This is an unhandled error.", v50, 2u);
  }

  v45 = _swiftEmptyArrayStorage;
LABEL_19:
  v52 = v0[20];
  v51 = v0[21];
  v54 = v0[16];
  v53 = v0[17];
  v55 = v0[13];
  v56 = v0[10];

  v57 = v0[1];

  return v57(v45);
}

uint64_t sub_87218()
{
  v1 = v0[28];

  v2 = v0[30];
  v4 = v0[20];
  v3 = v0[21];
  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[13];
  v8 = v0[10];

  v9 = v0[1];

  return v9();
}

uint64_t sub_87330(uint64_t a1, void (*a2)(void), uint64_t (*a3)(char *, void), uint64_t *a4)
{
  v7 = sub_106200();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(0);
  sub_1061E0();
  result = a3(v10, 0);
  *a4 = result;
  return result;
}

id sub_873D4(uint64_t a1, uint64_t a2)
{
  v52 = a2;
  v4 = sub_25E4(&qword_137500, &qword_107E10);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v51 - v9;
  v11 = [objc_allocWithZone(v2) init];
  if (qword_136D90 != -1)
  {
    swift_once();
  }

  v12 = sub_106D20();
  sub_135C4(v12, qword_1396B0);
  v13 = sub_106D10();
  v14 = sub_106FC0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_0, v13, v14, "Making CreateAlarmIntent...", v15, 2u);
  }

  sub_105940();

  sub_14994(v56, v54, &qword_137490, qword_108C80);
  if (v55)
  {
    sub_105A20();
    if (swift_dynamicCast())
    {

      sub_105930();

      v16 = v54[0];
      if (v54[0])
      {
        sub_105600();
      }

      v23 = sub_106260();

      if (v23)
      {
        v24 = sub_106250();

        if (v24)
        {

LABEL_30:
          swift_retain_n();
          v25 = sub_106D10();
          v26 = sub_106FC0();

          if (os_log_type_enabled(v25, v26))
          {
            v27 = swift_slowAlloc();
            v51[0] = v10;
            v28 = v27;
            v29 = swift_slowAlloc();
            v54[0] = v29;
            *v28 = 136315138;
            v30 = sub_1058F0();
            v51[1] = a1;
            v53 = v30;
            sub_25E4(&qword_1396D0, &qword_109E30);
            v31 = sub_1070C0();
            v33 = v32;

            v34 = sub_722E8(v31, v33, v54);

            *(v28 + 4) = v34;
            _os_log_impl(&dword_0, v25, v26, "TARGET=> %s", v28, 0xCu);
            sub_2738(v29);

            v10 = v51[0];
          }

          sub_AB868();
          if (v35)
          {
            v36 = sub_106E10();
          }

          else
          {
            v36 = 0;
          }

          [v11 setLabel:v36];

          if (sub_AB3EC() && (v37 = sub_105F30(1, 0), , v37))
          {
            v38 = [v37 startDateComponents];

            if (v38)
            {
              sub_104570();

              v39 = 0;
            }

            else
            {
              v39 = 1;
            }

            v45 = sub_1045E0();
            v46 = *(v45 - 8);
            (*(v46 + 56))(v8, v39, 1, v45);
            sub_1D68C(v8, v10);
            isa = 0;
            if ((*(v46 + 48))(v10, 1, v45) != 1)
            {
              isa = sub_104560().super.isa;
              (*(v46 + 8))(v10, v45);
            }
          }

          else
          {
            v40 = sub_1045E0();
            (*(*(v40 - 8) + 56))(v10, 1, 1, v40);
            isa = 0;
          }

          [v11 setTime:isa];

          v47 = sub_1058D0();
          [v11 setRelativeOffsetInMinutes:v47];

          sub_ABEB8();
          sub_1069A0();
          v48 = sub_106ED0().super.isa;

          [v11 setRepeatSchedule:v48];

LABEL_48:
          v49 = sub_106290();
          (*(*(v49 - 8) + 8))(v52, v49);
          sub_16F70(v56, &qword_137490, qword_108C80);
          return v11;
        }
      }

      else
      {
      }

LABEL_29:
      if (v16)
      {
        goto LABEL_30;
      }

LABEL_41:
      v42 = sub_106D10();
      v43 = sub_106FC0();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_0, v42, v43, "createAlarmTask has no target, should prompt for time.", v44, 2u);
      }

      goto LABEL_48;
    }
  }

  else
  {
    sub_16F70(v54, &qword_137490, qword_108C80);
  }

  sub_14994(v56, v54, &qword_137490, qword_108C80);
  if (v55)
  {
    sub_105A60();
    if (swift_dynamicCast())
    {

      sub_105570();
      if (!v54[0] || (v17 = sub_1058F0(), , !v17))
      {
        sub_105570();
        if (!v54[0] || (v18 = sub_105910(), , !v18))
        {

          goto LABEL_41;
        }
      }

      sub_105570();

      v16 = v54[0];
      goto LABEL_29;
    }
  }

  else
  {
    sub_16F70(v54, &qword_137490, qword_108C80);
  }

  sub_14994(v56, v54, &qword_137490, qword_108C80);
  if (v55)
  {
    sub_105A70();
    if (swift_dynamicCast())
    {

      goto LABEL_41;
    }
  }

  else
  {
    sub_16F70(v54, &qword_137490, qword_108C80);
  }

  v19 = sub_106D10();
  v20 = sub_106FB0();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_0, v19, v20, "NLv4TranslationParse: Dialog act is not an UsoTask_create_common_Alarm", v21, 2u);
  }

  v22 = sub_106290();
  (*(*(v22 - 8) + 8))(v52, v22);
  sub_16F70(v56, &qword_137490, qword_108C80);
  return 0;
}

uint64_t sub_87CE4()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_1396B0);
  sub_135C4(v0, qword_1396B0);
  return sub_106A80();
}

id sub_87D30()
{
  v1 = [objc_allocWithZone(v0) init];
  v2 = qword_136D90;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = sub_106D20();
  sub_135C4(v4, qword_1396B0);
  v5 = sub_106D10();
  v6 = sub_106FC0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "Making DeleteAlarmIntent...", v7, 2u);
  }

  v8 = sub_1EED0();
  [v3 setAlarmSearch:v8];

  v9 = v3;
  v10 = sub_106D10();
  v11 = sub_106FC0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    _os_log_impl(&dword_0, v10, v11, "Inited DeleteAlarmIntent: %@", v12, 0xCu);
    sub_16F70(v13, &qword_137578, &unk_10B4E0);
  }

  else
  {
  }

  return v9;
}

id sub_87F34()
{
  v1 = sub_25E4(&qword_137500, &qword_107E10);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = v82 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = v82 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = v82 - v13;
  __chkstk_darwin(v12);
  v16 = v82 - v15;
  v17 = [objc_allocWithZone(v0) init];
  if (qword_136D90 != -1)
  {
    swift_once();
  }

  v18 = sub_106D20();
  v82[2] = sub_135C4(v18, qword_1396B0);
  v19 = sub_106D10();
  v20 = sub_106FC0();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_0, v19, v20, "Making UpdateAlarmIntent...", v21, 2u);
  }

  sub_105940();

  sub_14994(v86, v84, &qword_137490, qword_108C80);
  if (v85)
  {
    sub_105AA0();
    if (swift_dynamicCast())
    {
      v22 = v83;

      sub_105C50();
      v82[1] = v22;

      v23 = v84[0];
      [v17 setOperation:1];
      if (v23)
      {

        sub_105600();

        v24 = sub_105E90();

        if (*(v24 + 16))
        {
          sub_32658(1701667182, 0xE400000000000000);
          v26 = v25;

          if (v26)
          {
            v27 = sub_106D10();
            v28 = sub_106FC0();
            if (os_log_type_enabled(v27, v28))
            {
              v29 = swift_slowAlloc();
              *v29 = 0;
              _os_log_impl(&dword_0, v27, v28, "alarmTask contains name node; changing INUpdateAlarmOperation to .updateLabel.", v29, 2u);
            }

            [v17 setOperation:2];
          }
        }

        else
        {
        }

        v39 = sub_1EED0();
        [v17 setAlarmSearch:v39];

        v40 = sub_AB3EC();

        if (v40)
        {

          v41 = sub_105F30(1, 1);

          if (v41)
          {
            v42 = [v41 endDateComponents];

            if (v42)
            {
              sub_104570();

              v43 = 0;
            }

            else
            {
              v43 = 1;
            }

            v52 = sub_1045E0();
            (*(*(v52 - 8) + 56))(v14, v43, 1, v52);
            sub_1D68C(v14, v16);
            v44 = 0;
LABEL_42:
            sub_14994(v16, v11, &qword_137500, &qword_107E10);
            v53 = sub_1045E0();
            v54 = *(v53 - 8);
            isa = 0;
            if ((*(v54 + 48))(v11, 1, v53) != 1)
            {
              isa = sub_104560().super.isa;
              (*(v54 + 8))(v11, v53);
            }

            [v17 setProposedTime:isa];

            if ((v44 & 1) != 0 || (, v56 = sub_105F80(), , !v56))
            {
              [v17 setProposedMeridiemSetByUser:0];
              if (!v23)
              {
                goto LABEL_47;
              }
            }

            else
            {
              v57 = sub_105F00();

              sub_1F7B8();
              v58 = v17;
              v59 = sub_107080(v57 & 1).super.super.isa;
              [v58 setProposedMeridiemSetByUser:v59];

              if (!v23)
              {
LABEL_47:
                [v17 setProposedLabel:0];

LABEL_68:
                v75 = v17;
                v76 = sub_106D10();
                v77 = sub_106FC0();

                if (os_log_type_enabled(v76, v77))
                {
                  v78 = swift_slowAlloc();
                  v79 = swift_slowAlloc();
                  *v78 = 138412290;
                  *(v78 + 4) = v75;
                  *v79 = v75;
                  v80 = v75;
                  _os_log_impl(&dword_0, v76, v77, "Inited UpdateAlarmIntent: %@", v78, 0xCu);
                  sub_16F70(v79, &qword_137578, &unk_10B4E0);
                }

                sub_16F70(v16, &qword_137500, &qword_107E10);
                goto LABEL_71;
              }
            }

            sub_AB868();
            v61 = v60;

            if (v61)
            {
              v62 = sub_106E10();
            }

            else
            {
              v62 = 0;
            }

            [v17 setProposedLabel:v62];

            v63 = sub_ABEB8();

            if (v63 >> 62)
            {
              if (sub_107270())
              {
                goto LABEL_54;
              }
            }

            else if (*(&dword_10 + (v63 & 0xFFFFFFFFFFFFFF8)))
            {
LABEL_54:
              sub_1069A0();
              v64 = sub_106ED0().super.isa;

              [v17 setProposedRecurrence:v64];

              goto LABEL_68;
            }

            goto LABEL_68;
          }

          v44 = 0;
LABEL_31:
          v45 = sub_1045E0();
          (*(*(v45 - 8) + 56))(v16, 1, 1, v45);
          goto LABEL_42;
        }
      }

      else
      {
        v30 = sub_1EED0();
        [v17 setAlarmSearch:v30];
      }

      v44 = 1;
      goto LABEL_31;
    }
  }

  else
  {
    sub_16F70(v84, &qword_137490, qword_108C80);
  }

  sub_14994(v86, v84, &qword_137490, qword_108C80);
  if (!v85)
  {
    sub_16F70(v84, &qword_137490, qword_108C80);
    goto LABEL_22;
  }

  sub_105A60();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  sub_105570();

  if (!v84[0])
  {
LABEL_21:

LABEL_22:
    sub_14994(v86, v84, &qword_137490, qword_108C80);
    v31 = sub_106D10();
    v32 = sub_106FB0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v83 = v34;
      *v33 = 136315138;
      sub_25E4(&qword_137490, qword_108C80);
      v35 = sub_1070C0();
      v37 = v36;
      sub_16F70(v84, &qword_137490, qword_108C80);
      v38 = sub_722E8(v35, v37, &v83);

      *(v33 + 4) = v38;
      _os_log_impl(&dword_0, v31, v32, "No update task found in task: %s", v33, 0xCu);
      sub_2738(v34);
    }

    else
    {

      sub_16F70(v84, &qword_137490, qword_108C80);
    }

    goto LABEL_71;
  }

  if (sub_1058F0())
  {

    goto LABEL_34;
  }

  sub_105920();
  if (!v46)
  {

    goto LABEL_21;
  }

LABEL_34:
  if (sub_AB3EC() && (v47 = sub_105F30(1, 1), , v47))
  {
    v48 = [v47 endDateComponents];

    if (v48)
    {
      sub_104570();

      v49 = 0;
    }

    else
    {
      v49 = 1;
    }

    v65 = sub_1045E0();
    v66 = *(v65 - 8);
    (*(v66 + 56))(v5, v49, 1, v65);
    sub_1D68C(v5, v8);
    v51 = 0;
    if ((*(v66 + 48))(v8, 1, v65) != 1)
    {
      v51 = sub_104560().super.isa;
      (*(v66 + 8))(v8, v65);
    }
  }

  else
  {
    v50 = sub_1045E0();
    (*(*(v50 - 8) + 56))(v8, 1, 1, v50);
    v51 = 0;
  }

  [v17 setProposedTime:v51];

  sub_AB868();
  if (v67)
  {
    v68 = sub_106E10();
  }

  else
  {
    v68 = 0;
  }

  [v17 setProposedLabel:v68];

  v69 = v17;
  v70 = sub_106D10();
  v71 = sub_106FC0();

  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    *v72 = 138412290;
    *(v72 + 4) = v69;
    *v73 = v69;
    v74 = v69;
    _os_log_impl(&dword_0, v70, v71, "Got alarm proposed time/label, UpdateAlarmIntent: %@", v72, 0xCu);
    sub_16F70(v73, &qword_137578, &unk_10B4E0);
  }

  else
  {
  }

LABEL_71:
  sub_16F70(v86, &qword_137490, qword_108C80);
  return v17;
}

id sub_88CB4()
{
  v1 = [objc_allocWithZone(v0) init];
  v2 = qword_136D90;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = sub_106D20();
  sub_135C4(v4, qword_1396B0);
  v5 = sub_106D10();
  v6 = sub_106FC0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "Making SearchAlarmIntent...", v7, 2u);
  }

  v8 = sub_1EED0();
  [v3 setAlarmSearch:v8];

  sub_105940();

  sub_14994(v38, v36, &qword_137490, qword_108C80);
  if (v37)
  {
    sub_14994(v36, v35, &qword_137490, qword_108C80);
    sub_105B80();
    if (swift_dynamicCast())
    {

      v9 = sub_106D10();
      v10 = sub_106FC0();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        v12 = "Task is UsoTask_summarise_common_Alarm.";
LABEL_12:
        _os_log_impl(&dword_0, v9, v10, v12, v11, 2u);

        goto LABEL_13;
      }

      goto LABEL_13;
    }

    sub_105D80();
    if (swift_dynamicCast())
    {

      v9 = sub_106D10();
      v10 = sub_106FC0();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        v12 = "Task is UsoTask_checkExistence_common_Alarm.";
        goto LABEL_12;
      }

LABEL_13:

      [v3 setAlarmSearchType:1];
LABEL_14:
      sub_2738(v35);
      goto LABEL_44;
    }

    sub_105AD0();
    if (swift_dynamicCast())
    {
      v13 = sub_106D10();
      v14 = sub_106FC0();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_0, v13, v14, "Task is UsoTask_request_common_Alarm.", v15, 2u);
      }

      [v3 setAlarmSearchType:1];

      sub_105C40();
      if (v33)
      {
      }

      else
      {
        sub_105C30();

        if (!v34)
        {
LABEL_35:

          goto LABEL_14;
        }
      }

      v20 = sub_1058F0();

      if (v20)
      {
        v21 = 2;
      }

      else
      {

        v22 = sub_105900();

        if (!v22)
        {
LABEL_34:

          goto LABEL_35;
        }

        v21 = 3;
      }

      [v3 setAlarmSearchType:v21];
      goto LABEL_34;
    }

    sub_105990();
    if (swift_dynamicCast())
    {

      v16 = sub_106D10();
      v17 = sub_106FC0();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        v19 = "Task is UsoTask_read_common_Alarm.";
LABEL_26:
        _os_log_impl(&dword_0, v16, v17, v19, v18, 2u);

        goto LABEL_27;
      }

      goto LABEL_27;
    }

    sub_1059A0();
    if (swift_dynamicCast())
    {
      goto LABEL_24;
    }

    sub_105A60();
    if (swift_dynamicCast())
    {

      v9 = sub_106D10();
      v10 = sub_106FC0();
      if (!os_log_type_enabled(v9, v10))
      {
        goto LABEL_13;
      }

      v11 = swift_slowAlloc();
      *v11 = 0;
      v12 = "Task is UsoTask_noVerb_common_Alarm.";
      goto LABEL_12;
    }

    if (swift_dynamicCast())
    {
LABEL_24:

      v16 = sub_106D10();
      v17 = sub_106FC0();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        v19 = "Task is UsoTask_read_uso_NoEntity.";
        goto LABEL_26;
      }

LABEL_27:

      [v3 setAlarmSearchType:4];
      goto LABEL_14;
    }

    sub_2738(v35);
  }

  v23 = sub_106D10();
  v24 = sub_106FB0();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_0, v23, v24, "NLv4TranslationParse: Dialog act is not a find alarm task, cannot support input", v25, 2u);
  }

  [v3 setAlarmSearchType:1];
LABEL_44:
  sub_16F70(v36, &qword_137490, qword_108C80);
  v26 = v3;
  v27 = sub_106D10();
  v28 = sub_106FC0();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 138412290;
    *(v29 + 4) = v26;
    *v30 = v26;
    v31 = v26;
    _os_log_impl(&dword_0, v27, v28, "Inited SearchAlarmIntent: %@", v29, 0xCu);
    sub_16F70(v30, &qword_137578, &unk_10B4E0);
  }

  else
  {
  }

  sub_16F70(v38, &qword_137490, qword_108C80);
  return v26;
}

id sub_89448()
{
  v1 = sub_106960();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v36 - v7;
  v9 = [objc_allocWithZone(v0) init];
  v10 = qword_136D90;
  v11 = v9;
  if (v10 != -1)
  {
    swift_once();
  }

  v12 = sub_106D20();
  sub_135C4(v12, qword_1396B0);
  v13 = sub_106D10();
  v14 = sub_106FC0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_0, v13, v14, "Making ChangeAlarmStatusIntent...", v15, 2u);
  }

  v16 = sub_1EED0();
  if (!v16)
  {
    if (qword_136D98 != -1)
    {
      swift_once();
    }

    v16 = qword_1396C8;
  }

  v17 = v16;
  [v11 setAlarmSearch:v16];

  sub_274CC(v8);
  v18 = (*(v2 + 88))(v8, v1);
  if (v18 != enum case for AlarmNLv4Constants.AlarmVerb.unknown(_:) && v18 != enum case for AlarmNLv4Constants.AlarmVerb.checkExistence(_:) && v18 != enum case for AlarmNLv4Constants.AlarmVerb.create(_:) && v18 != enum case for AlarmNLv4Constants.AlarmVerb.delete(_:))
  {
    if (v18 == enum case for AlarmNLv4Constants.AlarmVerb.disable(_:))
    {
LABEL_14:
      v19 = 2;
LABEL_17:
      v20 = v11;
      [v20 setOperation:v19];
      v21 = v20;
      v22 = sub_106D10();
      v23 = sub_106FC0();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *v24 = 138412290;
        *(v24 + 4) = v21;
        *v25 = v21;
        _os_log_impl(&dword_0, v22, v23, "Inited ChangeAlarmStatusIntent: %@", v24, 0xCu);
        sub_16F70(v25, &qword_137578, &unk_10B4E0);
      }

      else
      {
      }

      return v21;
    }

    if (v18 == enum case for AlarmNLv4Constants.AlarmVerb.enable(_:))
    {
LABEL_16:
      v19 = 1;
      goto LABEL_17;
    }

    if (v18 != enum case for AlarmNLv4Constants.AlarmVerb.read(_:) && v18 != enum case for AlarmNLv4Constants.AlarmVerb.request(_:) && v18 != enum case for AlarmNLv4Constants.AlarmVerb.snooze(_:) && v18 != enum case for AlarmNLv4Constants.AlarmVerb.summarise(_:) && v18 != enum case for AlarmNLv4Constants.AlarmVerb.update(_:) && v18 != enum case for AlarmNLv4Constants.AlarmVerb.noVerb(_:))
    {
      if (v18 == enum case for AlarmNLv4Constants.AlarmVerb.close(_:))
      {
        goto LABEL_14;
      }

      if (v18 == enum case for AlarmNLv4Constants.AlarmVerb.resume(_:))
      {
        goto LABEL_16;
      }

      if (v18 == enum case for AlarmNLv4Constants.AlarmVerb.stop(_:))
      {
        goto LABEL_14;
      }

      sub_107360();
      __break(1u);
    }
  }

  v26 = sub_106D10();
  v27 = sub_106FB0();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v37 = v29;
    *v28 = 136315138;
    sub_274CC(v6);
    v30 = sub_106950();
    v31 = v2;
    v33 = v32;
    (*(v31 + 8))(v6, v1);
    v34 = sub_722E8(v30, v33, &v37);

    *(v28 + 4) = v34;
    _os_log_impl(&dword_0, v26, v27, "Can NOT handle request, verb = %s", v28, 0xCu);
    sub_2738(v29);
  }

  else
  {
  }

  return 0;
}

void sub_899F4()
{
  sub_106A50();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_106E10();
  v2 = [v0 initWithIdentifier:0 displayString:v1];

  qword_1396C8 = v2;
}

id sub_89A5C(uint64_t a1, uint64_t a2)
{
  v61 = a2;
  v3 = sub_25E4(&qword_1374F0, &qword_1080F0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v62 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v56 - v8;
  __chkstk_darwin(v7);
  v60 = &v56 - v10;
  v11 = sub_106630();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v59 = &v56 - v17;
  v18 = sub_106290();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v63 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_106960();
  v21 = *(v65 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v65);
  v24 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_136D90 != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v25 = sub_106D20();
    v26 = sub_135C4(v25, qword_1396B0);

    v64 = v26;
    v27 = sub_106D10();
    v28 = sub_106FC0();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v58 = v11;
      v30 = v29;
      v31 = swift_slowAlloc();
      v57 = v9;
      v67 = v31;
      *v30 = 136315394;
      v32 = sub_105E50();
      v34 = sub_722E8(v32, v33, &v67);
      v56 = v16;
      v35 = v12;
      v36 = v34;

      *(v30 + 4) = v36;
      *(v30 + 12) = 2080;
      v66 = a1;
      sub_105E60();

      v37 = sub_106E30();
      v39 = sub_722E8(v37, v38, &v67);

      *(v30 + 14) = v39;
      v12 = v35;
      v16 = v56;
      _os_log_impl(&dword_0, v27, v28, "Building SK intent with verb %s from alarmTask: %s", v30, 0x16u);
      swift_arrayDestroy();
      v9 = v57;

      v11 = v58;
    }

    sub_274CC(v24);
    v40 = *(v21 + 88);
    v21 += 88;
    v41 = v24;
    v24 = v65;
    v42 = v40(v41, v65);
    if (v42 == enum case for AlarmNLv4Constants.AlarmVerb.unknown(_:))
    {

      v43 = sub_106D10();
      v44 = sub_106FB0();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v67 = v46;
        *v45 = 136315138;
        v47 = sub_105E50();
        v49 = sub_722E8(v47, v48, &v67);

        *(v45 + 4) = v49;
        _os_log_impl(&dword_0, v43, v44, "Unexpected AlarmVerb: %s", v45, 0xCu);
        sub_2738(v46);
      }

LABEL_9:
      sub_106870();

      return sub_88CB4();
    }

    if (v42 == enum case for AlarmNLv4Constants.AlarmVerb.checkExistence(_:))
    {
      goto LABEL_9;
    }

    if (v42 == enum case for AlarmNLv4Constants.AlarmVerb.create(_:))
    {
LABEL_11:
      sub_106800();

      v51 = v63;
      sub_106280();
      return sub_873D4(a1, v51);
    }

    if (v42 == enum case for AlarmNLv4Constants.AlarmVerb.delete(_:))
    {
      sub_106840();

      return sub_87D30();
    }

    v52 = v62;
    if (v42 == enum case for AlarmNLv4Constants.AlarmVerb.disable(_:))
    {
      goto LABEL_15;
    }

    if (v42 == enum case for AlarmNLv4Constants.AlarmVerb.enable(_:))
    {
      goto LABEL_18;
    }

    if (v42 == enum case for AlarmNLv4Constants.AlarmVerb.read(_:) || v42 == enum case for AlarmNLv4Constants.AlarmVerb.request(_:))
    {
      goto LABEL_9;
    }

    if (v42 == enum case for AlarmNLv4Constants.AlarmVerb.snooze(_:))
    {
      break;
    }

    if (v42 == enum case for AlarmNLv4Constants.AlarmVerb.summarise(_:))
    {
      goto LABEL_9;
    }

    if (v42 == enum case for AlarmNLv4Constants.AlarmVerb.update(_:))
    {
      sub_1068D0();

      return sub_87F34();
    }

    if (v42 == enum case for AlarmNLv4Constants.AlarmVerb.noVerb(_:))
    {
      goto LABEL_11;
    }

    v52 = v62;
    if (v42 == enum case for AlarmNLv4Constants.AlarmVerb.close(_:))
    {
      goto LABEL_15;
    }

    if (v42 == enum case for AlarmNLv4Constants.AlarmVerb.resume(_:))
    {
      goto LABEL_18;
    }

    if (v42 == enum case for AlarmNLv4Constants.AlarmVerb.stop(_:))
    {
LABEL_15:
      sub_14994(v61, v52, &qword_1374F0, &qword_1080F0);
      if ((*(v12 + 48))(v52, 1, v11) == 1)
      {
        sub_16F70(v52, &qword_1374F0, &qword_1080F0);
LABEL_18:
        sub_1067A0();

        return sub_89448();
      }

      (*(v12 + 32))(v16, v52, v11);
      v53 = [objc_allocWithZone(sub_1067A0()) init];
      [v53 setOperation:2];
      goto LABEL_20;
    }

    sub_107360();
    __break(1u);
LABEL_35:
    swift_once();
  }

  v55 = v60;
  sub_14994(v61, v60, &qword_1374F0, &qword_1080F0);
  if ((*(v12 + 48))(v55, 1, v11) != 1)
  {
    v16 = v59;
    (*(v12 + 32))(v59, v55, v11);
    v53 = [objc_allocWithZone(sub_1068B0()) init];
LABEL_20:
    (*(v12 + 16))(v9, v16, v11);
    (*(v12 + 56))(v9, 0, 1, v11);
    v54 = sub_51180(v53, v9, 0);

    sub_16F70(v9, &qword_1374F0, &qword_1080F0);
    (*(v12 + 8))(v16, v11);
    return v54;
  }

  sub_16F70(v55, &qword_1374F0, &qword_1080F0);
  return [objc_allocWithZone(sub_1068B0()) init];
}

id sub_8A314(uint64_t a1, uint64_t a2)
{
  if (qword_136D90 != -1)
  {
    swift_once();
  }

  v3 = sub_106D20();
  sub_135C4(v3, qword_1396B0);
  v4 = sub_106D10();
  v5 = sub_106FC0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_0, v4, v5, "In getSKIntentFromNLv4Intent.", v6, 2u);
  }

  swift_getObjectType();
  v7 = sub_107000();
  if (v7)
  {
    v8 = sub_89A5C(v7, a2);

    return v8;
  }

  else
  {
    v10 = sub_106D10();
    v11 = sub_106FB0();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_0, v10, v11, "getSKIntentFromNLv4Intent(): There's no firstUsoTask. Returning nil intent", v12, 2u);
    }

    return 0;
  }
}

id sub_8A4A8(uint64_t a1, uint64_t a2)
{
  if (qword_136D90 != -1)
  {
    swift_once();
  }

  v3 = sub_106D20();
  sub_135C4(v3, qword_1396B0);
  v4 = sub_106D10();
  v5 = sub_106FC0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_0, v4, v5, "Getting SK intent from uso parse", v6, 2u);
  }

  v7 = sub_105440();
  if (v7)
  {
    v8 = sub_89A5C(v7, a2);

    return v8;
  }

  else
  {
    v10 = sub_106D10();
    v11 = sub_106FB0();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_0, v10, v11, "getSKIntentFromNLv4Intent(): There's no firstUsoTask. Returning nil intent", v12, 2u);
    }

    return 0;
  }
}

uint64_t sub_8A634(uint64_t a1, uint64_t a2)
{
  v4 = sub_106960();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == enum case for AlarmNLv4Constants.AlarmVerb.unknown(_:) || v9 == enum case for AlarmNLv4Constants.AlarmVerb.checkExistence(_:))
  {
    return sub_106870();
  }

  if (v9 == enum case for AlarmNLv4Constants.AlarmVerb.create(_:))
  {
    return sub_106800();
  }

  if (v9 == enum case for AlarmNLv4Constants.AlarmVerb.delete(_:))
  {
    return sub_106840();
  }

  if (v9 == enum case for AlarmNLv4Constants.AlarmVerb.disable(_:))
  {
LABEL_12:
    v12 = sub_106630();
    if ((*(*(v12 - 8) + 48))(a2, 1, v12) != 1)
    {
      return sub_106910();
    }

    return sub_1067A0();
  }

  if (v9 != enum case for AlarmNLv4Constants.AlarmVerb.enable(_:))
  {
    if (v9 != enum case for AlarmNLv4Constants.AlarmVerb.read(_:) && v9 != enum case for AlarmNLv4Constants.AlarmVerb.request(_:))
    {
      if (v9 == enum case for AlarmNLv4Constants.AlarmVerb.snooze(_:))
      {
        return sub_1068B0();
      }

      if (v9 != enum case for AlarmNLv4Constants.AlarmVerb.summarise(_:))
      {
        if (v9 == enum case for AlarmNLv4Constants.AlarmVerb.update(_:))
        {
          return sub_1068D0();
        }

        if (v9 == enum case for AlarmNLv4Constants.AlarmVerb.noVerb(_:))
        {
          return sub_106800();
        }

        if (v9 == enum case for AlarmNLv4Constants.AlarmVerb.close(_:))
        {
          goto LABEL_12;
        }

        if (v9 != enum case for AlarmNLv4Constants.AlarmVerb.resume(_:))
        {
          if (v9 != enum case for AlarmNLv4Constants.AlarmVerb.stop(_:))
          {
            result = sub_107360();
            __break(1u);
            return result;
          }

          goto LABEL_12;
        }

        return sub_1067A0();
      }
    }

    return sub_106870();
  }

  return sub_1067A0();
}

uint64_t sub_8A8E4(uint64_t *a1)
{
  sub_1067A0();
  sub_1067C0();
  sub_104B00();
  if (qword_136E48 != -1)
  {
    swift_once();
  }

  sub_104A60();
  sub_25E4(&qword_13B070, &qword_10BBC0);
  sub_104AC0();
  sub_25E4(&qword_1396D8, &unk_109E40);
  sub_8AB10();
  sub_104A70();
  sub_104AF0();
  sub_262C(a1, v5);
  sub_8AB74();
  sub_104A90();
  sub_104AE0();
  sub_262C(a1, &v4);
  v3 = 10;
  sub_8ABC8();
  sub_104A50();
  sub_104AB0();
  sub_2738(a1);
  sub_8AC1C(&v3);
  return sub_8AC70(v5);
}

uint64_t sub_8AA84(void *a1)
{
  *a1 = sub_C07CC();
  v2 = *(v1 + 8);

  return v2();
}

unint64_t sub_8AB10()
{
  result = qword_1396E0;
  if (!qword_1396E0)
  {
    sub_14EB0(&qword_1396D8, &unk_109E40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1396E0);
  }

  return result;
}

unint64_t sub_8AB74()
{
  result = qword_1396E8;
  if (!qword_1396E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1396E8);
  }

  return result;
}

unint64_t sub_8ABC8()
{
  result = qword_1396F0;
  if (!qword_1396F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1396F0);
  }

  return result;
}

__n128 sub_8ACC4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_8ACD8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_8AD20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_8AD7C()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_1396F8);
  sub_135C4(v0, qword_1396F8);
  return sub_106A80();
}

uint64_t sub_8ADC8(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  v4 = sub_106D20();
  v3[25] = v4;
  v5 = *(v4 - 8);
  v3[26] = v5;
  v6 = *(v5 + 64) + 15;
  v3[27] = swift_task_alloc();
  v7 = sub_106300();
  v3[28] = v7;
  v8 = *(v7 - 8);
  v3[29] = v8;
  v9 = *(v8 + 64) + 15;
  v3[30] = swift_task_alloc();
  v10 = sub_106320();
  v3[31] = v10;
  v11 = *(v10 - 8);
  v3[32] = v11;
  v12 = *(v11 + 64) + 15;
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v13 = *(*(sub_25E4(&qword_137DC0, &unk_10A0A0) - 8) + 64) + 15;
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v14 = sub_106AE0();
  v3[40] = v14;
  v15 = *(v14 - 8);
  v3[41] = v15;
  v16 = *(v15 + 64) + 15;
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v17 = sub_106370();
  v3[45] = v17;
  v18 = *(v17 - 8);
  v3[46] = v18;
  v19 = *(v18 + 64) + 15;
  v3[47] = swift_task_alloc();
  v20 = sub_104670();
  v3[48] = v20;
  v21 = *(v20 - 8);
  v3[49] = v21;
  v22 = *(v21 + 64) + 15;
  v3[50] = swift_task_alloc();
  v23 = sub_104D60();
  v3[51] = v23;
  v24 = *(v23 - 8);
  v3[52] = v24;
  v25 = *(v24 + 64) + 15;
  v3[53] = swift_task_alloc();
  v26 = sub_1053C0();
  v3[54] = v26;
  v27 = *(v26 - 8);
  v3[55] = v27;
  v28 = *(v27 + 64) + 15;
  v3[56] = swift_task_alloc();
  v29 = sub_104FF0();
  v3[57] = v29;
  v30 = *(v29 - 8);
  v3[58] = v30;
  v31 = *(v30 + 64) + 15;
  v3[59] = swift_task_alloc();

  return _swift_task_switch(sub_8B1F8, 0, 0);
}

uint64_t sub_8B1F8()
{
  v1 = *(v0 + 184);
  sub_25E4(&qword_139718, &unk_109F70);
  v2 = sub_105150();
  sub_1067D0();

  v3 = sub_1067F0();
  if (v3 == sub_1067F0())
  {
    if (qword_136DA0 != -1)
    {
      swift_once();
    }

    sub_135C4(*(v0 + 200), qword_1396F8);
    v4 = sub_106D10();
    v5 = sub_106FC0();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_0, v4, v5, "CreateAlarm.HandleIntentStrategy.makeIntentHandledResponse() returning empty output for timer reformation", v6, 2u);
    }

    v7 = *(v0 + 176);

    sub_104DA0();
    sub_104D90();
    v8 = *(v0 + 472);
    v9 = *(v0 + 448);
    v10 = *(v0 + 424);
    v11 = *(v0 + 400);
    v12 = *(v0 + 376);
    v14 = *(v0 + 344);
    v13 = *(v0 + 352);
    v15 = *(v0 + 336);
    v17 = *(v0 + 304);
    v16 = *(v0 + 312);
    v118 = *(v0 + 296);
    v120 = *(v0 + 288);
    v122 = *(v0 + 280);
    v124 = *(v0 + 272);
    v126 = *(v0 + 264);
    v129 = *(v0 + 240);
    v132 = *(v0 + 216);

    v18 = *(v0 + 8);
    goto LABEL_38;
  }

  if (qword_136DA0 != -1)
  {
    swift_once();
  }

  *(v0 + 480) = sub_135C4(*(v0 + 200), qword_1396F8);
  v19 = sub_106D10();
  v20 = sub_106FC0();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_0, v19, v20, "CreateAlarm.HandleIntentStrategy.makeIntentHandledResponse() called.", v21, 2u);
  }

  v22 = *(v0 + 184);

  v23 = sub_105150();
  v24 = [v23 createdAlarm];
  *(v0 + 488) = v24;

  if (!v24)
  {
    v28 = sub_106D10();
    v29 = sub_106FB0();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_0, v28, v29, "Can NOT retrieve intentResponse.createdAlarm.", v30, 2u);
    }

    sub_25E4(&qword_137DD8, &unk_1085D0);
    sub_26E48();
    swift_allocError();
    *v31 = 3;
    swift_willThrow();
    goto LABEL_37;
  }

  v25 = *(v0 + 184);
  v26 = sub_105150();
  v27 = [v26 successCode];

  if (v27 == &dword_0 + 3)
  {
    v130 = 0;
    v133 = 1;
  }

  else
  {
    v133 = 0;
    v130 = v27 == &dword_0 + 2;
  }

  v32 = *(v0 + 472);
  sub_25E4(&qword_137DD0, &unk_108920);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_108470;
  *(inited + 32) = v24;
  v34 = v24;
  sub_BD4A4(inited, v32);
  swift_setDeallocating();
  v35 = *(inited + 16);
  swift_arrayDestroy();
  v36 = [v34 identifier];
  if (v36)
  {
    v37 = v36;
    v38 = sub_106E20();
    v40 = v39;

    if (v130)
    {
      v41 = *(v0 + 472);
      v43 = *(v0 + 440);
      v42 = *(v0 + 448);
      v127 = *(v0 + 432);
      sub_25E4(&qword_1376D0, &unk_1080E0);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_107FC0;
      *(v44 + 32) = v38;
      *(v44 + 40) = v40;
      sub_E92B8(v44, v42);

      sub_104F30();
      (*(v43 + 8))(v42, v127);
    }

    else if (v133)
    {
    }

    else
    {
      v45 = *(v0 + 472);
      v47 = *(v0 + 440);
      v46 = *(v0 + 448);
      v48 = *(v0 + 432);
      sub_E92C4(v38, v40, v46);

      sub_104F30();
      (*(v47 + 8))(v46, v48);
    }
  }

  v49 = *(v0 + 184);
  v50 = sub_105170();
  v51 = [v50 label];

  if (v51)
  {
  }

  v52 = *(v0 + 424);
  v54 = *(v0 + 392);
  v53 = *(v0 + 400);
  v55 = *(v0 + 384);
  v56 = *(v0 + 184);
  sub_104CF0();
  sub_106100();
  sub_105160();
  v57 = sub_1060F0();
  *(v0 + 496) = v57;
  sub_106210();
  v58 = sub_75DD4(0, v53, 0);
  *(v0 + 504) = v58;
  (*(v54 + 8))(v53, v55);
  if (!v58)
  {
    v73 = sub_106D10();
    v74 = sub_106FB0();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&dword_0, v73, v74, "Can NOT retrieve alarm data.", v75, 2u);
    }

    v77 = *(v0 + 464);
    v76 = *(v0 + 472);
    v78 = *(v0 + 456);
    v79 = *(v0 + 416);
    v80 = *(v0 + 424);
    v81 = *(v0 + 408);

    sub_25E4(&qword_137DD8, &unk_1085D0);
    sub_26E48();
    swift_allocError();
    *v82 = 3;
    swift_willThrow();

    (*(v79 + 8))(v80, v81);
    (*(v77 + 8))(v76, v78);
LABEL_37:
    v83 = *(v0 + 472);
    v84 = *(v0 + 448);
    v85 = *(v0 + 424);
    v86 = *(v0 + 400);
    v87 = *(v0 + 376);
    v88 = *(v0 + 344);
    v89 = *(v0 + 352);
    v90 = *(v0 + 336);
    v92 = *(v0 + 304);
    v91 = *(v0 + 312);
    v117 = *(v0 + 296);
    v119 = *(v0 + 288);
    v121 = *(v0 + 280);
    v123 = *(v0 + 272);
    v125 = *(v0 + 264);
    v128 = *(v0 + 240);
    v131 = *(v0 + 216);

    v18 = *(v0 + 8);
LABEL_38:

    return v18();
  }

  v60 = *(v0 + 368);
  v59 = *(v0 + 376);
  v61 = *(v0 + 360);
  if (v133)
  {
    v62 = *(v0 + 376);
    sub_106360();
    v63 = sub_106340();
    (*(v60 + 8))(v59, v61);
    v64 = sub_106D10();
    v65 = sub_106FC0();
    v66 = os_log_type_enabled(v64, v65);
    if (v63)
    {
      if (v66)
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        _os_log_impl(&dword_0, v64, v65, "CreateAlarm flow SMART, existsAlreadyEnabled_Dialog.", v67, 2u);
      }

      if (qword_136E70 != -1)
      {
        swift_once();
      }

      v68 = "tsAlreadyEnabled";

      sub_25E4(&qword_137880, &unk_108290);
      v69 = swift_allocObject();
      *(v0 + 512) = v69;
      *(v69 + 16) = xmmword_107FC0;
      *(v69 + 32) = 0x6D72616C61;
      *(v69 + 40) = 0xE500000000000000;
      *(v69 + 72) = type metadata accessor for AlarmAlarm(0);
      *(v69 + 48) = v58;
      v70 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
      v134 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

      v71 = swift_task_alloc();
      *(v0 + 520) = v71;
      *v71 = v0;
      v71[1] = sub_8C310;
      v72 = 0xD000000000000027;
LABEL_61:
      v109 = v68 | 0x8000000000000000;
LABEL_73:

      return v134(v72, v109, v69);
    }

    if (v66)
    {
      v101 = swift_slowAlloc();
      *v101 = 0;
      _os_log_impl(&dword_0, v64, v65, "CreateAlarm flow RF1, existsAlreadyEnabled_Dialog.", v101, 2u);
    }

    if (qword_136E78 != -1)
    {
      swift_once();
    }

    v102 = "eReformedFromTimer";
    v69 = sub_74800(v58, v57, 0);
    *(v0 + 552) = v69;
    v103 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
    v134 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));

    v104 = swift_task_alloc();
    *(v0 + 560) = v104;
    *v104 = v0;
    v104[1] = sub_8CDFC;
    v72 = 0xD000000000000020;
    goto LABEL_72;
  }

  v94 = **(v0 + 192);
  sub_106360();
  v95 = sub_106340();
  (*(v60 + 8))(v59, v61);
  v96 = sub_106D10();
  v97 = sub_106FC0();
  v98 = os_log_type_enabled(v96, v97);
  if (v94 != 1)
  {
    if (v95)
    {
      if (v98)
      {
        v105 = swift_slowAlloc();
        *v105 = 0;
        _os_log_impl(&dword_0, v96, v97, "CreateAlarm flow SMART, intentHandledResponse", v105, 2u);
      }

      if (qword_136E70 != -1)
      {
        swift_once();
      }

      v68 = "followupPluginAction";

      sub_25E4(&qword_137880, &unk_108290);
      v69 = swift_allocObject();
      *(v0 + 680) = v69;
      *(v69 + 16) = xmmword_107DE0;
      *(v69 + 32) = 0x6D72616C61;
      *(v69 + 40) = 0xE500000000000000;
      v106 = type metadata accessor for AlarmAlarm(0);
      *(v69 + 48) = v58;
      *(v69 + 72) = v106;
      *(v69 + 80) = 0xD000000000000014;
      *(v69 + 88) = 0x800000000010D3A0;
      *(v69 + 96) = 0;
      *(v69 + 120) = &type metadata for Bool;
      *(v69 + 128) = 0xD000000000000015;
      *(v69 + 136) = 0x800000000010D380;
      *(v69 + 144) = v130;
      *(v69 + 168) = &type metadata for Bool;
      *(v69 + 176) = 0xD000000000000014;
      *(v69 + 184) = 0x800000000010CA10;
      *(v69 + 192) = v51 != 0;
      *(v69 + 216) = &type metadata for Bool;
      *(v69 + 224) = 0xD000000000000017;
      *(v69 + 232) = 0x800000000010D3C0;
      *(v69 + 264) = &type metadata for Bool;
      v107 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
      v134 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
      *(v69 + 240) = 0;

      v108 = swift_task_alloc();
      *(v0 + 688) = v108;
      *v108 = v0;
      v108[1] = sub_8E460;
      v72 = 0xD000000000000021;
      goto LABEL_61;
    }

    if (v98)
    {
      v113 = swift_slowAlloc();
      *v113 = 0;
      _os_log_impl(&dword_0, v96, v97, "CreateAlarm flow RF1, intentHandledResponse", v113, 2u);
    }

    if (qword_136E78 != -1)
    {
      swift_once();
    }

    v114 = v51 != 0;
    v102 = "followupPluginAction";
    v69 = sub_74804(v58, v57, v130 | (v114 << 16), 0);
    *(v0 + 720) = v69;
    v115 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
    v134 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));

    v116 = swift_task_alloc();
    *(v0 + 728) = v116;
    *v116 = v0;
    v116[1] = sub_8EF50;
    v72 = 0xD000000000000021;
LABEL_72:
    v109 = v102 | 0x8000000000000000;
    goto LABEL_73;
  }

  if (!v95)
  {
    if (v98)
    {
      v110 = swift_slowAlloc();
      *v110 = 0;
      _os_log_impl(&dword_0, v96, v97, "CreateAlarm flow RF1, intentHandledResponseReformedFromTimer.", v110, 2u);
    }

    if (qword_136E78 != -1)
    {
      swift_once();
    }

    v102 = "ntHandledResponse(rchRecord:)";
    v69 = sub_75DC8(v58, v57, 0);
    *(v0 + 632) = v69;
    v111 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
    v134 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));

    v112 = swift_task_alloc();
    *(v0 + 640) = v112;
    *v112 = v0;
    v112[1] = sub_8DEA8;
    v72 = 0xD000000000000032;
    goto LABEL_72;
  }

  if (v98)
  {
    v99 = swift_slowAlloc();
    *v99 = 0;
    _os_log_impl(&dword_0, v96, v97, "CreateAlarm flow SMART, intentHandledResponseReformedFromTimer.", v99, 2u);
  }

  if (qword_136E70 != -1)
  {
    swift_once();
  }

  v100 = swift_task_alloc();
  *(v0 + 600) = v100;
  *v100 = v0;
  v100[1] = sub_8D554;

  return sub_DDA7C(v58, v57);
}

uint64_t sub_8C310(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 520);
  v9 = *v2;
  v3[66] = a1;
  v3[67] = v1;

  if (v1)
  {
    v5 = sub_8C910;
  }

  else
  {
    v7 = v3[63];
    v6 = v3[64];

    v5 = sub_8C438;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_8C438()
{
  v1 = v0[61];
  v2 = v0[40];
  v3 = v0[41];
  v4 = v0[39];
  sub_769D4(0, 0xE000000000000000, 0, 0xE000000000000000, v4);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v5 = v0[60];
    sub_16F70(v0[39], &qword_137DC0, &unk_10A0A0);
    v6 = sub_106D10();
    v7 = sub_106FB0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_0, v6, v7, "Can NOT retrieve alarm snippet model.", v8, 2u);
    }

    v9 = v0[66];
    v11 = v0[62];
    v10 = v0[63];
    v12 = v0[61];
    v13 = v0[58];
    v55 = v0[57];
    v58 = v0[59];
    v14 = v0[52];
    v52 = v0[53];
    v15 = v0[51];

    sub_25E4(&qword_137DD8, &unk_1085D0);
    sub_26E48();
    swift_allocError();
    *v16 = 3;
    swift_willThrow();

    (*(v14 + 8))(v52, v15);
    (*(v13 + 8))(v58, v55);
    v17 = v0[59];
    v18 = v0[56];
    v19 = v0[53];
    v20 = v0[50];
    v21 = v0[47];
    v22 = v0[43];
    v23 = v0[44];
    v24 = v0[42];
    v26 = v0[38];
    v25 = v0[39];
    v46 = v0[37];
    v47 = v0[36];
    v48 = v0[35];
    v50 = v0[34];
    v53 = v0[33];
    v56 = v0[30];
    v59 = v0[27];

    v27 = v0[1];

    return v27();
  }

  else
  {
    v29 = v0[44];
    v31 = v0[40];
    v30 = v0[41];
    v60 = v0[60];
    v61 = v0[36];
    v32 = v0[29];
    v49 = v0[30];
    v51 = v0[28];
    v33 = v0[26];
    v54 = v0[27];
    v57 = v0[25];
    (*(v30 + 32))(v29, v0[39], v31);
    v34 = sub_106AF0();
    v0[20] = v34;
    v0[21] = sub_26EAC();
    v35 = sub_1A924(v0 + 17);
    sub_25E4(&qword_137DF0, qword_1085E0);
    v36 = *(v30 + 72);
    v37 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_107FC0;
    (*(v30 + 16))(v38 + v37, v29, v31);
    sub_106930();
    (*(*(v34 - 8) + 104))(v35, enum case for SiriAlarmSnippetModels.alarmMulti(_:), v34);
    (*(v32 + 104))(v49, enum case for SiriTimeMeasurement.LogDescription.dialogResponseTime(_:), v51);
    (*(v33 + 16))(v54, v60, v57);
    mach_absolute_time();
    sub_106330();
    v39 = async function pointer to DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)[1];
    v40 = swift_task_alloc();
    v0[68] = v40;
    *v40 = v0;
    v40[1] = sub_8CAC0;
    v41 = v0[66];
    v42 = v0[59];
    v43 = v0[53];
    v44 = v0[36];
    v45 = v0[22];

    return DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)(v45, v43, v42, v0 + 17, v44, 0, 0, 0);
  }
}

uint64_t sub_8C910()
{
  v2 = v0[63];
  v1 = v0[64];
  v4 = v0[61];
  v3 = v0[62];
  v6 = v0[58];
  v5 = v0[59];
  v7 = v0[57];
  v9 = v0[52];
  v8 = v0[53];
  v10 = v0[51];

  (*(v9 + 8))(v8, v10);
  (*(v6 + 8))(v5, v7);
  v30 = v0[67];
  v11 = v0[59];
  v12 = v0[56];
  v13 = v0[53];
  v14 = v0[50];
  v15 = v0[47];
  v16 = v0[43];
  v17 = v0[44];
  v18 = v0[42];
  v20 = v0[38];
  v19 = v0[39];
  v23 = v0[37];
  v24 = v0[36];
  v25 = v0[35];
  v26 = v0[34];
  v27 = v0[33];
  v28 = v0[30];
  v29 = v0[27];

  v21 = v0[1];

  return v21();
}

uint64_t sub_8CAC0()
{
  v1 = *v0;
  v2 = *(*v0 + 544);
  v3 = *(*v0 + 288);
  v4 = *(*v0 + 256);
  v5 = *(*v0 + 248);
  v7 = *v0;

  (*(v4 + 8))(v3, v5);
  sub_16F70(v1 + 136, &qword_137DF8, &unk_1094E0);

  return _swift_task_switch(sub_8CC30, 0, 0);
}

uint64_t sub_8CC30()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 504);
  v3 = *(v0 + 488);
  v4 = *(v0 + 464);
  v28 = *(v0 + 456);
  v30 = *(v0 + 472);
  v5 = *(v0 + 416);
  v26 = *(v0 + 424);
  v6 = *(v0 + 408);
  v7 = *(v0 + 352);
  v9 = *(v0 + 320);
  v8 = *(v0 + 328);

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v26, v6);
  (*(v4 + 8))(v30, v28);
  v10 = *(v0 + 472);
  v11 = *(v0 + 448);
  v12 = *(v0 + 424);
  v13 = *(v0 + 400);
  v14 = *(v0 + 376);
  v16 = *(v0 + 344);
  v15 = *(v0 + 352);
  v17 = *(v0 + 336);
  v19 = *(v0 + 304);
  v18 = *(v0 + 312);
  v22 = *(v0 + 296);
  v23 = *(v0 + 288);
  v24 = *(v0 + 280);
  v25 = *(v0 + 272);
  v27 = *(v0 + 264);
  v29 = *(v0 + 240);
  v31 = *(v0 + 216);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_8CDFC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 560);
  v6 = *v2;
  *(v4 + 568) = a1;
  *(v4 + 576) = v1;

  v7 = *(v3 + 552);

  if (v1)
  {
    v8 = sub_8D204;
  }

  else
  {
    v8 = sub_8CF3C;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_8CF3C()
{
  v1 = v0[62];
  v2 = v0[63];
  v3 = v0[60];
  v4 = v0[35];
  v6 = v0[29];
  v5 = v0[30];
  v8 = v0[27];
  v7 = v0[28];
  v9 = v0[25];
  v10 = v0[26];

  (*(v6 + 104))(v5, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v7);
  (*(v10 + 16))(v8, v3, v9);
  mach_absolute_time();
  sub_106330();
  v11 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v12 = swift_task_alloc();
  v0[73] = v12;
  *v12 = v0;
  v12[1] = sub_8D084;
  v13 = v0[71];
  v14 = v0[59];
  v15 = v0[53];
  v16 = v0[35];
  v17 = v0[22];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v17, v15, v14, v16, 0);
}

uint64_t sub_8D084()
{
  v2 = *v1;
  v3 = *(*v1 + 584);
  v4 = *v1;
  *(*v1 + 592) = v0;

  v5 = v2[71];
  (*(v2[32] + 8))(v2[35], v2[31]);

  if (v0)
  {
    v6 = sub_8F508;
  }

  else
  {
    v6 = sub_8D3B4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_8D204()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 504);
  v4 = *(v0 + 464);
  v3 = *(v0 + 472);
  v5 = *(v0 + 456);
  v7 = *(v0 + 416);
  v6 = *(v0 + 424);
  v8 = *(v0 + 408);

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  v28 = *(v0 + 576);
  v9 = *(v0 + 472);
  v10 = *(v0 + 448);
  v11 = *(v0 + 424);
  v12 = *(v0 + 400);
  v13 = *(v0 + 376);
  v14 = *(v0 + 344);
  v15 = *(v0 + 352);
  v16 = *(v0 + 336);
  v18 = *(v0 + 304);
  v17 = *(v0 + 312);
  v21 = *(v0 + 296);
  v22 = *(v0 + 288);
  v23 = *(v0 + 280);
  v24 = *(v0 + 272);
  v25 = *(v0 + 264);
  v26 = *(v0 + 240);
  v27 = *(v0 + 216);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_8D3B4()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 504);
  v4 = *(v0 + 464);
  v3 = *(v0 + 472);
  v5 = *(v0 + 456);
  v7 = *(v0 + 416);
  v6 = *(v0 + 424);
  v8 = *(v0 + 408);

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  v9 = *(v0 + 472);
  v10 = *(v0 + 448);
  v11 = *(v0 + 424);
  v12 = *(v0 + 400);
  v13 = *(v0 + 376);
  v15 = *(v0 + 344);
  v14 = *(v0 + 352);
  v16 = *(v0 + 336);
  v18 = *(v0 + 304);
  v17 = *(v0 + 312);
  v21 = *(v0 + 296);
  v22 = *(v0 + 288);
  v23 = *(v0 + 280);
  v24 = *(v0 + 272);
  v25 = *(v0 + 264);
  v26 = *(v0 + 240);
  v27 = *(v0 + 216);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_8D554(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 600);
  v6 = *v2;
  *(v4 + 608) = a1;
  *(v4 + 616) = v1;

  v7 = *(v3 + 504);

  if (v1)
  {
    v8 = sub_8F6B0;
  }

  else
  {
    v8 = sub_8D694;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_8D694()
{
  v1 = v0[61];
  v2 = v0[40];
  v3 = v0[41];
  v4 = v0[38];
  sub_769D4(0, 0xE000000000000000, 0, 0xE000000000000000, v4);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v5 = v0[60];
    sub_16F70(v0[38], &qword_137DC0, &unk_10A0A0);
    v6 = sub_106D10();
    v7 = sub_106FB0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_0, v6, v7, "Can NOT retrieve alarm snippet model.", v8, 2u);
    }

    v9 = v0[76];
    v11 = v0[62];
    v10 = v0[63];
    v12 = v0[61];
    v13 = v0[58];
    v55 = v0[57];
    v58 = v0[59];
    v14 = v0[52];
    v52 = v0[53];
    v15 = v0[51];

    sub_25E4(&qword_137DD8, &unk_1085D0);
    sub_26E48();
    swift_allocError();
    *v16 = 3;
    swift_willThrow();

    (*(v14 + 8))(v52, v15);
    (*(v13 + 8))(v58, v55);
    v17 = v0[59];
    v18 = v0[56];
    v19 = v0[53];
    v20 = v0[50];
    v21 = v0[47];
    v22 = v0[43];
    v23 = v0[44];
    v24 = v0[42];
    v26 = v0[38];
    v25 = v0[39];
    v46 = v0[37];
    v47 = v0[36];
    v48 = v0[35];
    v50 = v0[34];
    v53 = v0[33];
    v56 = v0[30];
    v59 = v0[27];

    v27 = v0[1];

    return v27();
  }

  else
  {
    v29 = v0[43];
    v31 = v0[40];
    v30 = v0[41];
    v60 = v0[60];
    v61 = v0[36];
    v32 = v0[29];
    v49 = v0[30];
    v51 = v0[28];
    v33 = v0[26];
    v54 = v0[27];
    v57 = v0[25];
    (*(v30 + 32))(v29, v0[38], v31);
    v34 = sub_106AF0();
    v0[15] = v34;
    v0[16] = sub_26EAC();
    v35 = sub_1A924(v0 + 12);
    sub_25E4(&qword_137DF0, qword_1085E0);
    v36 = *(v30 + 72);
    v37 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_107FC0;
    (*(v30 + 16))(v38 + v37, v29, v31);
    sub_106930();
    (*(*(v34 - 8) + 104))(v35, enum case for SiriAlarmSnippetModels.alarmMulti(_:), v34);
    (*(v32 + 104))(v49, enum case for SiriTimeMeasurement.LogDescription.dialogResponseTime(_:), v51);
    (*(v33 + 16))(v54, v60, v57);
    mach_absolute_time();
    sub_106330();
    v39 = async function pointer to DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)[1];
    v40 = swift_task_alloc();
    v0[78] = v40;
    *v40 = v0;
    v40[1] = sub_8DB6C;
    v41 = v0[76];
    v42 = v0[59];
    v43 = v0[53];
    v44 = v0[36];
    v45 = v0[22];

    return DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)(v45, v43, v42, v0 + 12, v44, 0, 0, 0);
  }
}

uint64_t sub_8DB6C()
{
  v1 = *v0;
  v2 = *(*v0 + 624);
  v3 = *(*v0 + 288);
  v4 = *(*v0 + 256);
  v5 = *(*v0 + 248);
  v7 = *v0;

  (*(v4 + 8))(v3, v5);
  sub_16F70(v1 + 96, &qword_137DF8, &unk_1094E0);

  return _swift_task_switch(sub_8DCDC, 0, 0);
}

uint64_t sub_8DCDC()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 504);
  v3 = *(v0 + 488);
  v4 = *(v0 + 464);
  v28 = *(v0 + 456);
  v30 = *(v0 + 472);
  v5 = *(v0 + 416);
  v26 = *(v0 + 424);
  v6 = *(v0 + 408);
  v7 = *(v0 + 344);
  v9 = *(v0 + 320);
  v8 = *(v0 + 328);

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v26, v6);
  (*(v4 + 8))(v30, v28);
  v10 = *(v0 + 472);
  v11 = *(v0 + 448);
  v12 = *(v0 + 424);
  v13 = *(v0 + 400);
  v14 = *(v0 + 376);
  v16 = *(v0 + 344);
  v15 = *(v0 + 352);
  v17 = *(v0 + 336);
  v19 = *(v0 + 304);
  v18 = *(v0 + 312);
  v22 = *(v0 + 296);
  v23 = *(v0 + 288);
  v24 = *(v0 + 280);
  v25 = *(v0 + 272);
  v27 = *(v0 + 264);
  v29 = *(v0 + 240);
  v31 = *(v0 + 216);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_8DEA8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 640);
  v6 = *v2;
  *(v4 + 648) = a1;
  *(v4 + 656) = v1;

  v7 = *(v3 + 632);

  if (v1)
  {
    v8 = sub_8E2B0;
  }

  else
  {
    v8 = sub_8DFE8;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_8DFE8()
{
  v1 = v0[62];
  v2 = v0[63];
  v3 = v0[60];
  v4 = v0[34];
  v6 = v0[29];
  v5 = v0[30];
  v8 = v0[27];
  v7 = v0[28];
  v9 = v0[25];
  v10 = v0[26];

  (*(v6 + 104))(v5, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v7);
  (*(v10 + 16))(v8, v3, v9);
  mach_absolute_time();
  sub_106330();
  v11 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v12 = swift_task_alloc();
  v0[83] = v12;
  *v12 = v0;
  v12[1] = sub_8E130;
  v13 = v0[81];
  v14 = v0[59];
  v15 = v0[53];
  v16 = v0[34];
  v17 = v0[22];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v17, v15, v14, v16, 0);
}

uint64_t sub_8E130()
{
  v2 = *v1;
  v3 = *(*v1 + 664);
  v4 = *v1;
  *(*v1 + 672) = v0;

  v5 = v2[81];
  (*(v2[32] + 8))(v2[34], v2[31]);

  if (v0)
  {
    v6 = sub_8F858;
  }

  else
  {
    v6 = sub_8FF64;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_8E2B0()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 504);
  v4 = *(v0 + 464);
  v3 = *(v0 + 472);
  v5 = *(v0 + 456);
  v7 = *(v0 + 416);
  v6 = *(v0 + 424);
  v8 = *(v0 + 408);

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  v28 = *(v0 + 656);
  v9 = *(v0 + 472);
  v10 = *(v0 + 448);
  v11 = *(v0 + 424);
  v12 = *(v0 + 400);
  v13 = *(v0 + 376);
  v14 = *(v0 + 344);
  v15 = *(v0 + 352);
  v16 = *(v0 + 336);
  v18 = *(v0 + 304);
  v17 = *(v0 + 312);
  v21 = *(v0 + 296);
  v22 = *(v0 + 288);
  v23 = *(v0 + 280);
  v24 = *(v0 + 272);
  v25 = *(v0 + 264);
  v26 = *(v0 + 240);
  v27 = *(v0 + 216);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_8E460(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 688);
  v9 = *v2;
  v3[87] = a1;
  v3[88] = v1;

  if (v1)
  {
    v5 = sub_8EA60;
  }

  else
  {
    v6 = v3[85];
    v7 = v3[63];

    v5 = sub_8E58C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_8E58C()
{
  v1 = v0[61];
  v2 = v0[40];
  v3 = v0[41];
  v4 = v0[37];
  sub_769D4(0, 0xE000000000000000, 0, 0xE000000000000000, v4);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v5 = v0[60];
    sub_16F70(v0[37], &qword_137DC0, &unk_10A0A0);
    v6 = sub_106D10();
    v7 = sub_106FB0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_0, v6, v7, "Can NOT retrieve alarm snippet model.", v8, 2u);
    }

    v9 = v0[87];
    v11 = v0[62];
    v10 = v0[63];
    v12 = v0[61];
    v13 = v0[58];
    v55 = v0[57];
    v58 = v0[59];
    v14 = v0[52];
    v52 = v0[53];
    v15 = v0[51];

    sub_25E4(&qword_137DD8, &unk_1085D0);
    sub_26E48();
    swift_allocError();
    *v16 = 3;
    swift_willThrow();

    (*(v14 + 8))(v52, v15);
    (*(v13 + 8))(v58, v55);
    v17 = v0[59];
    v18 = v0[56];
    v19 = v0[53];
    v20 = v0[50];
    v21 = v0[47];
    v22 = v0[43];
    v23 = v0[44];
    v24 = v0[42];
    v26 = v0[38];
    v25 = v0[39];
    v46 = v0[37];
    v47 = v0[36];
    v48 = v0[35];
    v50 = v0[34];
    v53 = v0[33];
    v56 = v0[30];
    v59 = v0[27];

    v27 = v0[1];

    return v27();
  }

  else
  {
    v29 = v0[41];
    v30 = v0[42];
    v31 = v0[40];
    v60 = v0[60];
    v61 = v0[36];
    v32 = v0[29];
    v49 = v0[30];
    v51 = v0[28];
    v33 = v0[26];
    v54 = v0[27];
    v57 = v0[25];
    (*(v29 + 32))(v30, v0[37], v31);
    v34 = sub_106AF0();
    v0[10] = v34;
    v0[11] = sub_26EAC();
    v35 = sub_1A924(v0 + 7);
    sub_25E4(&qword_137DF0, qword_1085E0);
    v36 = *(v29 + 72);
    v37 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_107FC0;
    (*(v29 + 16))(v38 + v37, v30, v31);
    sub_106930();
    (*(*(v34 - 8) + 104))(v35, enum case for SiriAlarmSnippetModels.alarmMulti(_:), v34);
    (*(v32 + 104))(v49, enum case for SiriTimeMeasurement.LogDescription.dialogResponseTime(_:), v51);
    (*(v33 + 16))(v54, v60, v57);
    mach_absolute_time();
    sub_106330();
    v39 = async function pointer to DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)[1];
    v40 = swift_task_alloc();
    v0[89] = v40;
    *v40 = v0;
    v40[1] = sub_8EC14;
    v41 = v0[87];
    v42 = v0[59];
    v43 = v0[53];
    v44 = v0[36];
    v45 = v0[22];

    return DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)(v45, v43, v42, v0 + 7, v44, 0, 0, 0);
  }
}

uint64_t sub_8EA60()
{
  v1 = v0[85];
  v2 = v0[62];
  v3 = v0[63];
  v4 = v0[61];
  v6 = v0[58];
  v5 = v0[59];
  v7 = v0[57];
  v9 = v0[52];
  v8 = v0[53];
  v10 = v0[51];

  (*(v9 + 8))(v8, v10);
  (*(v6 + 8))(v5, v7);
  v30 = v0[88];
  v11 = v0[59];
  v12 = v0[56];
  v13 = v0[53];
  v14 = v0[50];
  v15 = v0[47];
  v16 = v0[43];
  v17 = v0[44];
  v18 = v0[42];
  v20 = v0[38];
  v19 = v0[39];
  v23 = v0[37];
  v24 = v0[36];
  v25 = v0[35];
  v26 = v0[34];
  v27 = v0[33];
  v28 = v0[30];
  v29 = v0[27];

  v21 = v0[1];

  return v21();
}

uint64_t sub_8EC14()
{
  v1 = *v0;
  v2 = *(*v0 + 712);
  v3 = *(*v0 + 288);
  v4 = *(*v0 + 256);
  v5 = *(*v0 + 248);
  v7 = *v0;

  (*(v4 + 8))(v3, v5);
  sub_16F70(v1 + 56, &qword_137DF8, &unk_1094E0);

  return _swift_task_switch(sub_8ED84, 0, 0);
}

uint64_t sub_8ED84()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 504);
  v3 = *(v0 + 488);
  v4 = *(v0 + 464);
  v28 = *(v0 + 456);
  v30 = *(v0 + 472);
  v5 = *(v0 + 416);
  v26 = *(v0 + 424);
  v6 = *(v0 + 408);
  v7 = *(v0 + 328);
  v8 = *(v0 + 336);
  v9 = *(v0 + 320);

  (*(v7 + 8))(v8, v9);
  (*(v5 + 8))(v26, v6);
  (*(v4 + 8))(v30, v28);
  v10 = *(v0 + 472);
  v11 = *(v0 + 448);
  v12 = *(v0 + 424);
  v13 = *(v0 + 400);
  v14 = *(v0 + 376);
  v16 = *(v0 + 344);
  v15 = *(v0 + 352);
  v17 = *(v0 + 336);
  v19 = *(v0 + 304);
  v18 = *(v0 + 312);
  v22 = *(v0 + 296);
  v23 = *(v0 + 288);
  v24 = *(v0 + 280);
  v25 = *(v0 + 272);
  v27 = *(v0 + 264);
  v29 = *(v0 + 240);
  v31 = *(v0 + 216);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_8EF50(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 728);
  v6 = *v2;
  *(v4 + 736) = a1;
  *(v4 + 744) = v1;

  v7 = *(v3 + 720);

  if (v1)
  {
    v8 = sub_8F358;
  }

  else
  {
    v8 = sub_8F090;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_8F090()
{
  v1 = v0[62];
  v2 = v0[63];
  v3 = v0[60];
  v4 = v0[33];
  v6 = v0[29];
  v5 = v0[30];
  v8 = v0[27];
  v7 = v0[28];
  v9 = v0[25];
  v10 = v0[26];

  (*(v6 + 104))(v5, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v7);
  (*(v10 + 16))(v8, v3, v9);
  mach_absolute_time();
  sub_106330();
  v11 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v12 = swift_task_alloc();
  v0[94] = v12;
  *v12 = v0;
  v12[1] = sub_8F1D8;
  v13 = v0[92];
  v14 = v0[59];
  v15 = v0[53];
  v16 = v0[33];
  v17 = v0[22];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v17, v15, v14, v16, 0);
}

uint64_t sub_8F1D8()
{
  v2 = *v1;
  v3 = *(*v1 + 752);
  v4 = *v1;
  *(*v1 + 760) = v0;

  v5 = v2[92];
  (*(v2[32] + 8))(v2[33], v2[31]);

  if (v0)
  {
    v6 = sub_8FA00;
  }

  else
  {
    v6 = sub_8FF64;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_8F358()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 504);
  v4 = *(v0 + 464);
  v3 = *(v0 + 472);
  v5 = *(v0 + 456);
  v7 = *(v0 + 416);
  v6 = *(v0 + 424);
  v8 = *(v0 + 408);

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  v28 = *(v0 + 744);
  v9 = *(v0 + 472);
  v10 = *(v0 + 448);
  v11 = *(v0 + 424);
  v12 = *(v0 + 400);
  v13 = *(v0 + 376);
  v14 = *(v0 + 344);
  v15 = *(v0 + 352);
  v16 = *(v0 + 336);
  v18 = *(v0 + 304);
  v17 = *(v0 + 312);
  v21 = *(v0 + 296);
  v22 = *(v0 + 288);
  v23 = *(v0 + 280);
  v24 = *(v0 + 272);
  v25 = *(v0 + 264);
  v26 = *(v0 + 240);
  v27 = *(v0 + 216);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_8F508()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 504);
  v4 = *(v0 + 464);
  v3 = *(v0 + 472);
  v5 = *(v0 + 456);
  v7 = *(v0 + 416);
  v6 = *(v0 + 424);
  v8 = *(v0 + 408);

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  v28 = *(v0 + 592);
  v9 = *(v0 + 472);
  v10 = *(v0 + 448);
  v11 = *(v0 + 424);
  v12 = *(v0 + 400);
  v13 = *(v0 + 376);
  v14 = *(v0 + 344);
  v15 = *(v0 + 352);
  v16 = *(v0 + 336);
  v18 = *(v0 + 304);
  v17 = *(v0 + 312);
  v21 = *(v0 + 296);
  v22 = *(v0 + 288);
  v23 = *(v0 + 280);
  v24 = *(v0 + 272);
  v25 = *(v0 + 264);
  v26 = *(v0 + 240);
  v27 = *(v0 + 216);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_8F6B0()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 504);
  v4 = *(v0 + 464);
  v3 = *(v0 + 472);
  v5 = *(v0 + 456);
  v7 = *(v0 + 416);
  v6 = *(v0 + 424);
  v8 = *(v0 + 408);

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  v28 = *(v0 + 616);
  v9 = *(v0 + 472);
  v10 = *(v0 + 448);
  v11 = *(v0 + 424);
  v12 = *(v0 + 400);
  v13 = *(v0 + 376);
  v14 = *(v0 + 344);
  v15 = *(v0 + 352);
  v16 = *(v0 + 336);
  v18 = *(v0 + 304);
  v17 = *(v0 + 312);
  v21 = *(v0 + 296);
  v22 = *(v0 + 288);
  v23 = *(v0 + 280);
  v24 = *(v0 + 272);
  v25 = *(v0 + 264);
  v26 = *(v0 + 240);
  v27 = *(v0 + 216);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_8F858()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 504);
  v4 = *(v0 + 464);
  v3 = *(v0 + 472);
  v5 = *(v0 + 456);
  v7 = *(v0 + 416);
  v6 = *(v0 + 424);
  v8 = *(v0 + 408);

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  v28 = *(v0 + 672);
  v9 = *(v0 + 472);
  v10 = *(v0 + 448);
  v11 = *(v0 + 424);
  v12 = *(v0 + 400);
  v13 = *(v0 + 376);
  v14 = *(v0 + 344);
  v15 = *(v0 + 352);
  v16 = *(v0 + 336);
  v18 = *(v0 + 304);
  v17 = *(v0 + 312);
  v21 = *(v0 + 296);
  v22 = *(v0 + 288);
  v23 = *(v0 + 280);
  v24 = *(v0 + 272);
  v25 = *(v0 + 264);
  v26 = *(v0 + 240);
  v27 = *(v0 + 216);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_8FA00()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 504);
  v4 = *(v0 + 464);
  v3 = *(v0 + 472);
  v5 = *(v0 + 456);
  v7 = *(v0 + 416);
  v6 = *(v0 + 424);
  v8 = *(v0 + 408);

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  v28 = *(v0 + 760);
  v9 = *(v0 + 472);
  v10 = *(v0 + 448);
  v11 = *(v0 + 424);
  v12 = *(v0 + 400);
  v13 = *(v0 + 376);
  v14 = *(v0 + 344);
  v15 = *(v0 + 352);
  v16 = *(v0 + 336);
  v18 = *(v0 + 304);
  v17 = *(v0 + 312);
  v21 = *(v0 + 296);
  v22 = *(v0 + 288);
  v23 = *(v0 + 280);
  v24 = *(v0 + 272);
  v25 = *(v0 + 264);
  v26 = *(v0 + 240);
  v27 = *(v0 + 216);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_8FBA8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 32) = v5;
  *v5 = v2;
  v5[1] = sub_8FC50;

  return sub_8ADC8(a1, a2);
}

uint64_t sub_8FC50()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_8FD84, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_8FD84()
{
  v0[3] = v0[5];
  sub_25E4(&qword_1376C0, &unk_1080D0);
  sub_1064E0();
  v1 = v0[2];
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

uint64_t sub_8FE50(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1CA94;

  return sub_D55A0(a1);
}