uint64_t sub_100001B0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10001D6E0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_100001C34(&qword_10002C140, &unk_10001E680);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 28));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_100001C34(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100001C90(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10001D6E0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100001C34(&qword_10002C140, &unk_10001E680);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for DynamicIslandWorkoutTimeView()
{
  result = qword_10002C1A0;
  if (!qword_10002C1A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100001DF0()
{
  sub_10001D6E0();
  if (v0 <= 0x3F)
  {
    sub_100001E84();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100001E84()
{
  if (!qword_10002C1B0)
  {
    sub_10001D6E0();
    v0 = sub_10001E210();
    if (!v1)
    {
      atomic_store(v0, &qword_10002C1B0);
    }
  }
}

double sub_100001EE0()
{
  v1 = *(*(sub_100001C34(&qword_10002C140, &unk_10001E680) - 8) + 64);
  v2 = (__chkstk_darwin)();
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v17 - v5;
  v7 = sub_10001D6E0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DynamicIslandWorkoutTimeView();
  sub_100003A7C(v0 + *(v12 + 24), v6, &qword_10002C140, &unk_10001E680);
  v13 = *(v8 + 48);
  if (v13(v6, 1, v7) == 1)
  {
    sub_100003A7C(v0 + *(v12 + 20), v4, &qword_10002C140, &unk_10001E680);
    if (v13(v4, 1, v7) == 1)
    {
      sub_10001D6D0();
      if (v13(v4, 1, v7) != 1)
      {
        sub_100004088(v4, &qword_10002C140, &unk_10001E680);
      }
    }

    else
    {
      (*(v8 + 32))(v11, v4, v7);
    }

    if (v13(v6, 1, v7) != 1)
    {
      sub_100004088(v6, &qword_10002C140, &unk_10001E680);
    }
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
  }

  sub_10001D6B0();
  v15 = v14;
  (*(v8 + 8))(v11, v7);
  return v15;
}

void sub_100002190()
{
  v1 = sub_100001C34(&qword_10002C140, &unk_10001E680);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v22 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v7 = &v21 - v6;
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = type metadata accessor for DynamicIslandWorkoutTimeView();
  v11 = *(v10 + 24);
  sub_100003A7C(v0 + v11, v9, &qword_10002C140, &unk_10001E680);
  v12 = sub_10001D6E0();
  v13 = *(*(v12 - 8) + 48);
  v14 = v13(v9, 1, v12);
  sub_100004088(v9, &qword_10002C140, &unk_10001E680);
  if (v14 != 1)
  {
    sub_10001DE90();
    return;
  }

  sub_100003A7C(v0 + *(v10 + 20), v7, &qword_10002C140, &unk_10001E680);
  v15 = v13(v7, 1, v12);
  sub_100004088(v7, &qword_10002C140, &unk_10001E680);
  if (v15 != 1)
  {
    v16 = v22;
    sub_100003A7C(v0 + v11, v22, &qword_10002C140, &unk_10001E680);
    v17 = v13(v16, 1, v12);
    sub_100004088(v16, &qword_10002C140, &unk_10001E680);
    if (v17 == 1)
    {
      sub_10001DE70();
      sub_10001DEA0();

      return;
    }
  }

  v18 = [objc_opt_self() elapsedTimeColors];
  if (!v18)
  {
    __break(1u);
    goto LABEL_11;
  }

  v19 = v18;
  v20 = [v18 nonGradientTextColor];

  if (!v20)
  {
LABEL_11:
    __break(1u);
    return;
  }

  sub_10001DEE0();
}

uint64_t sub_100002434@<X0>(uint64_t a1@<X8>)
{
  v125 = a1;
  v110 = sub_100001C34(&qword_10002C1E8, &unk_10001FA70);
  v2 = *(*(v110 - 8) + 64);
  v3 = __chkstk_darwin(v110);
  v109 = &v103 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v108 = &v103 - v5;
  v6 = sub_10001D6E0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v121 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_100001C34(&qword_10002C1F0, &qword_10001E750);
  v10 = *(*(v105 - 8) + 64);
  __chkstk_darwin(v105);
  v106 = &v103 - v11;
  v123 = sub_100001C34(&qword_10002C1F8, &qword_10001E758);
  v12 = *(*(v123 - 8) + 64);
  __chkstk_darwin(v123);
  v124 = &v103 - v13;
  v129 = sub_10001DC60();
  v128 = *(v129 - 8);
  v14 = *(v128 + 64);
  __chkstk_darwin(v129);
  v127 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_10001E2B0();
  v113 = *(v114 - 8);
  v16 = *(v113 + 64);
  __chkstk_darwin(v114);
  v116 = &v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_10001E2F0();
  v117 = *(v118 - 8);
  v18 = *(v117 + 64);
  __chkstk_darwin(v118);
  v20 = &v103 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_10001E300();
  v119 = *(v120 - 8);
  v21 = *(v119 + 64);
  __chkstk_darwin(v120);
  v115 = &v103 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_100001C34(&qword_10002C200, &qword_10001E760);
  v23 = *(*(v130 - 8) + 64);
  v24 = __chkstk_darwin(v130);
  v107 = &v103 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v111 = &v103 - v27;
  __chkstk_darwin(v26);
  v29 = &v103 - v28;
  v122 = sub_100001C34(&qword_10002C208, &qword_10001E768);
  v30 = *(*(v122 - 8) + 64);
  __chkstk_darwin(v122);
  v112 = &v103 - v31;
  v32 = sub_100001C34(&qword_10002C140, &unk_10001E680);
  v33 = *(*(v32 - 8) + 64);
  v34 = __chkstk_darwin(v32 - 8);
  v104 = &v103 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v37 = &v103 - v36;
  v126 = type metadata accessor for DynamicIslandWorkoutTimeView();
  sub_100003A7C(&v1[*(v126 + 24)], v37, &qword_10002C140, &unk_10001E680);
  v38 = v7;
  v39 = v6;
  LODWORD(v7) = (*(v7 + 48))(v37, 1, v6);
  sub_100004088(v37, &qword_10002C140, &unk_10001E680);
  if (v7 == 1)
  {
    v40 = v121;
    sub_10001D6A0();
    sub_1000040E8(&qword_10002C210, &type metadata accessor for Date);
    v41 = v1;
    result = sub_10001E120();
    if (result)
    {
      v43 = v38;
      v44 = v108;
      (*(v38 + 16))(v108, v41, v39);
      v45 = v110;
      v46 = *(v38 + 32);
      v46(v44 + *(v110 + 48), v40, v39);
      v47 = v109;
      sub_100003A7C(v44, v109, &qword_10002C1E8, &unk_10001FA70);
      v48 = *(v45 + 48);
      v49 = v106;
      v46(v106, v47, v39);
      v121 = v41;
      v50 = *(v43 + 8);
      v50(v47 + v48, v39);
      sub_1000035C0(v44, v47, &qword_10002C1E8, &unk_10001FA70);
      v46(&v49[*(v105 + 36)], (v47 + *(v45 + 48)), v39);
      v50(v47, v39);
      v51 = v121;
      v52 = v126;
      sub_100003A7C(&v121[*(v126 + 20)], v104, &qword_10002C140, &unk_10001E680);
      v53 = sub_10001DCE0();
      v55 = v54;
      v57 = v56;
      if (v51[*(v52 + 28)])
      {
        sub_10001DCB0();
      }

      else
      {
        sub_100001EE0();
        sub_10001DC90();
      }

      v90 = v127;
      sub_10001DC40();
      sub_10001DCC0();
      (*(v128 + 8))(v90, v129);
      sub_10001DC70();

      v129 = sub_10001DD20();
      v128 = v91;
      v93 = v92;
      v127 = v94;

      sub_100003470(v53, v55, v57 & 1);

      KeyPath = swift_getKeyPath();
      sub_100001EE0();
      sub_10001DF80();
      sub_10001D920();
      LOBYTE(v131) = v93 & 1;
      *&v134[7] = v135;
      *&v134[23] = v136;
      *&v134[39] = v137;
      sub_100002190();
      v97 = v96;
      v98 = v107;
      v99 = &v107[*(v130 + 36)];
      v100 = v99 + *(sub_100001C34(&qword_10002C218, &qword_10001E7A0) + 28);
      sub_10001D990();
      *v99 = swift_getKeyPath();
      v101 = *&v134[16];
      *(v98 + 41) = *v134;
      v102 = v128;
      *v98 = v129;
      *(v98 + 8) = v102;
      *(v98 + 16) = v93 & 1;
      *(v98 + 24) = v127;
      *(v98 + 32) = KeyPath;
      *(v98 + 40) = 2;
      *(v98 + 57) = v101;
      *(v98 + 73) = *&v134[32];
      *(v98 + 88) = *&v134[47];
      *(v98 + 96) = v97;
      v88 = &qword_10002C200;
      v89 = &qword_10001E760;
      v87 = v111;
      sub_1000035C0(v98, v111, &qword_10002C200, &qword_10001E760);
      sub_100003A7C(v87, v124, &qword_10002C200, &qword_10001E760);
      swift_storeEnumTagMultiPayload();
      sub_100003628();
      sub_10000372C();
      goto LABEL_15;
    }

    __break(1u);
  }

  else
  {
    v58 = v1;
    sub_100001EE0();
    sub_10001E320();
    v59 = sub_100001EE0();
    v60 = v113 + 104;
    v61 = v116;
    v62 = v114;
    (*(v113 + 104))(v116, enum case for FloatingPointRoundingRule.toNearestOrEven(_:), v114);
    v63 = (v60 - 96);
    if (v59 >= 3600.0)
    {
      sub_10001E2E0();
    }

    else
    {
      sub_10001E2D0();
    }

    (*v63)(v61, v62);
    v64 = v115;
    sub_10001D650();
    (*(v117 + 8))(v20, v118);
    sub_1000040E8(&qword_10002C290, &type metadata accessor for Duration.TimeFormatStyle);
    v65 = v120;
    sub_10001E310();
    (*(v119 + 8))(v64, v65);
    v131 = v135;
    v121 = sub_100003A28();
    v66 = sub_10001DD40();
    v68 = v67;
    v70 = v69;
    if (v58[*(v126 + 28)])
    {
      sub_10001DCB0();
      v126 = 0;
    }

    else
    {
      sub_100001EE0();
      v126 = 0x4049000000000000;
      sub_10001DC90();
    }

    v71 = v127;
    sub_10001DC40();
    sub_10001DCC0();
    (*(v128 + 8))(v71, v129);
    sub_10001DC70();

    v129 = sub_10001DD20();
    v128 = v72;
    v74 = v73;
    v127 = v75;

    sub_100003470(v66, v68, v70 & 1);

    v76 = swift_getKeyPath();
    sub_100001EE0();
    sub_10001DF80();
    sub_10001D920();
    v133 = v74 & 1;
    *&v132[7] = v135;
    *&v132[23] = v136;
    *&v132[39] = v137;
    sub_100002190();
    v78 = v77;
    v79 = &v29[*(v130 + 36)];
    v80 = v79 + *(sub_100001C34(&qword_10002C218, &qword_10001E7A0) + 28);
    sub_10001D990();
    *v79 = swift_getKeyPath();
    v81 = *&v132[16];
    *(v29 + 41) = *v132;
    v82 = v128;
    *v29 = v129;
    *(v29 + 1) = v82;
    v29[16] = v74 & 1;
    *(v29 + 3) = v127;
    *(v29 + 4) = v76;
    v29[40] = 2;
    *(v29 + 57) = v81;
    *(v29 + 73) = *&v132[32];
    *(v29 + 11) = *&v132[47];
    *(v29 + 12) = v78;
    sub_100001EE0();
    result = AXDurationStringForDuration();
    if (result)
    {
      v83 = result;
      v84 = sub_10001E140();
      v86 = v85;

      *&v131 = v84;
      *(&v131 + 1) = v86;
      sub_10000372C();
      v87 = v112;
      sub_10001DE00();

      sub_100004088(v29, &qword_10002C200, &qword_10001E760);
      v88 = &qword_10002C208;
      v89 = &qword_10001E768;
      sub_100003A7C(v87, v124, &qword_10002C208, &qword_10001E768);
      swift_storeEnumTagMultiPayload();
      sub_100003628();
LABEL_15:
      sub_10001DB60();
      return sub_100004088(v87, v88, v89);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100003470(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1000034A4(uint64_t a1)
{
  v2 = sub_10001D9A0();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_10001DA00();
}

uint64_t sub_10000356C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10001DA30();
  *a1 = result;
  return result;
}

uint64_t sub_1000035C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001C34(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_100003628()
{
  result = qword_10002C220;
  if (!qword_10002C220)
  {
    sub_1000036E4(&qword_10002C208, &qword_10001E768);
    sub_10000372C();
    sub_1000040E8(&qword_10002C288, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C220);
  }

  return result;
}

uint64_t sub_1000036E4(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_10000372C()
{
  result = qword_10002C228;
  if (!qword_10002C228)
  {
    sub_1000036E4(&qword_10002C200, &qword_10001E760);
    sub_1000037E4();
    sub_1000039E0(&qword_10002C280, &qword_10002C218, &qword_10001E7A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C228);
  }

  return result;
}

unint64_t sub_1000037E4()
{
  result = qword_10002C230;
  if (!qword_10002C230)
  {
    sub_1000036E4(&qword_10002C238, &qword_10001E7D8);
    sub_10000389C();
    sub_1000039E0(&qword_10002C270, &qword_10002C278, &unk_10001F900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C230);
  }

  return result;
}

unint64_t sub_10000389C()
{
  result = qword_10002C240;
  if (!qword_10002C240)
  {
    sub_1000036E4(&qword_10002C248, &qword_10001E7E0);
    sub_100003928();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C240);
  }

  return result;
}

unint64_t sub_100003928()
{
  result = qword_10002C250;
  if (!qword_10002C250)
  {
    sub_1000036E4(&qword_10002C258, &qword_10001E7E8);
    sub_1000039E0(&qword_10002C260, &qword_10002C268, &unk_10001E7F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C250);
  }

  return result;
}

uint64_t sub_1000039E0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000036E4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100003A28()
{
  result = qword_10002C298;
  if (!qword_10002C298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C298);
  }

  return result;
}

uint64_t sub_100003A7C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001C34(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100003AE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001D6E0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v42[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_100001C34(&qword_10002C140, &unk_10001E680);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v42[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v15 = &v42[-v14];
  v16 = sub_100001C34(&qword_10002C2A0, &qword_10001E800);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16);
  v20 = &v42[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v22 = &v42[-v21];
  if ((sub_10001D6C0() & 1) == 0)
  {
    goto LABEL_16;
  }

  v44 = v13;
  v45 = v8;
  v23 = type metadata accessor for DynamicIslandWorkoutTimeView();
  v24 = *(v23 + 20);
  v25 = *(v16 + 48);
  v49 = v5;
  v46 = v23;
  v47 = a1;
  sub_100003A7C(a1 + v24, v22, &qword_10002C140, &unk_10001E680);
  v48 = a2;
  v26 = v49;
  sub_100003A7C(a2 + v24, &v22[v25], &qword_10002C140, &unk_10001E680);
  v27 = *(v26 + 48);
  if (v27(v22, 1, v4) != 1)
  {
    sub_100003A7C(v22, v15, &qword_10002C140, &unk_10001E680);
    if (v27(&v22[v25], 1, v4) != 1)
    {
      v29 = v45;
      (*(v26 + 32))(v45, &v22[v25], v4);
      sub_1000040E8(&qword_10002C2A8, &type metadata accessor for Date);
      v43 = sub_10001E130();
      v30 = *(v26 + 8);
      v30(v29, v4);
      v30(v15, v4);
      sub_100004088(v22, &qword_10002C140, &unk_10001E680);
      if ((v43 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_9;
    }

    (*(v26 + 8))(v15, v4);
LABEL_7:
    v28 = v22;
LABEL_15:
    sub_100004088(v28, &qword_10002C2A0, &qword_10001E800);
    goto LABEL_16;
  }

  if (v27(&v22[v25], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  sub_100004088(v22, &qword_10002C140, &unk_10001E680);
LABEL_9:
  v31 = v46;
  v32 = *(v46 + 24);
  v33 = *(v16 + 48);
  sub_100003A7C(v47 + v32, v20, &qword_10002C140, &unk_10001E680);
  sub_100003A7C(v48 + v32, &v20[v33], &qword_10002C140, &unk_10001E680);
  if (v27(v20, 1, v4) == 1)
  {
    if (v27(&v20[v33], 1, v4) == 1)
    {
      sub_100004088(v20, &qword_10002C140, &unk_10001E680);
LABEL_19:
      v35 = *(v47 + *(v31 + 28)) ^ *(v48 + *(v31 + 28)) ^ 1;
      return v35 & 1;
    }

    goto LABEL_14;
  }

  v34 = v44;
  sub_100003A7C(v20, v44, &qword_10002C140, &unk_10001E680);
  if (v27(&v20[v33], 1, v4) == 1)
  {
    (*(v49 + 8))(v34, v4);
LABEL_14:
    v28 = v20;
    goto LABEL_15;
  }

  v37 = v49;
  v38 = &v20[v33];
  v39 = v45;
  (*(v49 + 32))(v45, v38, v4);
  sub_1000040E8(&qword_10002C2A8, &type metadata accessor for Date);
  v40 = sub_10001E130();
  v41 = *(v37 + 8);
  v41(v39, v4);
  v41(v34, v4);
  sub_100004088(v20, &qword_10002C140, &unk_10001E680);
  if (v40)
  {
    goto LABEL_19;
  }

LABEL_16:
  v35 = 0;
  return v35 & 1;
}

uint64_t sub_100004088(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001C34(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000040E8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100004134()
{
  result = qword_10002C2B0;
  if (!qword_10002C2B0)
  {
    sub_1000036E4(&qword_10002C2B8, qword_10001E808);
    sub_100003628();
    sub_10000372C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C2B0);
  }

  return result;
}

uint64_t sub_1000041EC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_100001C34(&qword_10002C2D8, &qword_10001E8A8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = sub_10001D8B0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001C34(&qword_10002C2D0, &qword_10001E8A0);
  sub_10001DFD0();
  sub_10001D810();
  v11 = sub_10001D700();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v5, 1, v11) == 1)
  {
    sub_100004628(v5);
    v13 = 0xE600000000000000;
    v14 = 0x455649544341;
  }

  else
  {
    v14 = sub_10001D6F0();
    v13 = v15;
    (*(v12 + 8))(v5, v11);
  }

  *a1 = v14;
  a1[1] = v13;
  v16 = type metadata accessor for MirroredLockScreenView();
  return (*(v7 + 32))(a1 + *(v16 + 20), v10, v6);
}

uint64_t sub_1000043EC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10001D8B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001C34(&qword_10002C2D0, &qword_10001E8A0);
  sub_10001DFD0();
  sub_100019070(v6, a1);
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1000044E0()
{
  sub_10001D8C0();
  type metadata accessor for MirroredLockScreenView();
  sub_1000045E0(&qword_10002C2C0, &type metadata accessor for MirroredWidgetAttributes);
  sub_1000045E0(&qword_10002C2C8, type metadata accessor for MirroredLockScreenView);
  return sub_10001DFE0();
}

uint64_t sub_1000045E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100004628(uint64_t a1)
{
  v2 = sub_100001C34(&qword_10002C2D8, &qword_10001E8A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100004694()
{
  result = qword_10002C2E0;
  if (!qword_10002C2E0)
  {
    sub_1000036E4(&qword_10002C2E8, &qword_10001E8B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C2E0);
  }

  return result;
}

unint64_t sub_1000046FC()
{
  result = qword_10002C2F0;
  if (!qword_10002C2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C2F0);
  }

  return result;
}

unint64_t sub_100004754()
{
  result = qword_10002C2F8;
  if (!qword_10002C2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C2F8);
  }

  return result;
}

unint64_t sub_1000047AC()
{
  result = qword_10002C300;
  if (!qword_10002C300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C300);
  }

  return result;
}

unint64_t sub_100004804()
{
  result = qword_10002C308;
  if (!qword_10002C308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C308);
  }

  return result;
}

uint64_t sub_10000488C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10001D7F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10001D8F0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001D8D0();
  (*(v5 + 16))(v8, a1, v4);
  v14 = sub_10001D8E0();
  v15 = sub_10001E1D0();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v26 = v9;
    v17 = v16;
    v18 = swift_slowAlloc();
    v25 = v10;
    v19 = v18;
    v28 = v18;
    *v17 = 136315138;
    sub_100005E64();
    v20 = sub_10001E2A0();
    v27 = a2;
    v22 = v21;
    (*(v5 + 8))(v8, v4);
    v23 = sub_1000058BC(v20, v22, &v28);

    *(v17 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v14, v15, "We should never have been requested to run command %s, it should have routed to the app.", v17, 0xCu);
    sub_100005EBC(v19);

    (*(v25 + 8))(v13, v26);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
    (*(v10 + 8))(v13, v9);
  }

  return sub_10001D640();
}

uint64_t sub_100004B50()
{
  v0 = sub_10001D680();
  sub_100005FA0(v0, qword_10002E3C8);
  sub_100005F68(v0, qword_10002E3C8);
  return sub_10001D670();
}

uint64_t sub_100004BE0(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_10001D7F0();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_100004CA0, 0, 0);
}

uint64_t sub_100004CA0()
{
  sub_10001E1C0();
  *(v0 + 48) = sub_10001E1B0();
  v2 = sub_10001E1A0();

  return _swift_task_switch(sub_100004D34, v2, v1);
}

uint64_t sub_100004D34()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];

  (*(v4 + 104))(v2, enum case for DataLinkCommand.resume(_:), v3);
  sub_10000488C(v2, v5);
  (*(v4 + 8))(v2, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100004DFC(uint64_t a1)
{
  v2 = sub_100004754();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100004E3C()
{
  result = qword_10002C310;
  if (!qword_10002C310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C310);
  }

  return result;
}

unint64_t sub_100004E94()
{
  result = qword_10002C318;
  if (!qword_10002C318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C318);
  }

  return result;
}

unint64_t sub_100004EEC()
{
  result = qword_10002C320;
  if (!qword_10002C320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C320);
  }

  return result;
}

unint64_t sub_100004F44()
{
  result = qword_10002C328;
  if (!qword_10002C328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C328);
  }

  return result;
}

uint64_t sub_100004FCC()
{
  v0 = sub_10001D680();
  sub_100005FA0(v0, qword_10002E3E0);
  sub_100005F68(v0, qword_10002E3E0);
  return sub_10001D670();
}

uint64_t sub_100005068(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_10001D7F0();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_100005128, 0, 0);
}

uint64_t sub_100005128()
{
  sub_10001E1C0();
  *(v0 + 48) = sub_10001E1B0();
  v2 = sub_10001E1A0();

  return _swift_task_switch(sub_1000051BC, v2, v1);
}

uint64_t sub_1000051BC()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];

  (*(v4 + 104))(v2, enum case for DataLinkCommand.pause(_:), v3);
  sub_10000488C(v2, v5);
  (*(v4 + 8))(v2, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100005284(uint64_t a1)
{
  v2 = sub_100004E94();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_1000052C4()
{
  result = qword_10002C330;
  if (!qword_10002C330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C330);
  }

  return result;
}

unint64_t sub_10000531C()
{
  result = qword_10002C338;
  if (!qword_10002C338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C338);
  }

  return result;
}

unint64_t sub_100005374()
{
  result = qword_10002C340;
  if (!qword_10002C340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C340);
  }

  return result;
}

unint64_t sub_1000053CC()
{
  result = qword_10002C348;
  if (!qword_10002C348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C348);
  }

  return result;
}

uint64_t sub_1000054A8()
{
  v0 = sub_10001D680();
  sub_100005FA0(v0, qword_10002E3F8);
  sub_100005F68(v0, qword_10002E3F8);
  return sub_10001D670();
}

uint64_t sub_100005530@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_10001D680();
  v6 = sub_100005F68(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_1000055CC(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_10001D7F0();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_10000568C, 0, 0);
}

uint64_t sub_10000568C()
{
  sub_10001E1C0();
  *(v0 + 48) = sub_10001E1B0();
  v2 = sub_10001E1A0();

  return _swift_task_switch(sub_100005720, v2, v1);
}

uint64_t sub_100005720()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];

  (*(v4 + 104))(v2, enum case for DataLinkCommand.markSegment(_:), v3);
  sub_10000488C(v2, v5);
  (*(v4 + 8))(v2, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000057E8(uint64_t a1)
{
  v2 = sub_10000531C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100005858()
{
  result = qword_10002C350;
  if (!qword_10002C350)
  {
    sub_1000036E4(&qword_10002C358, &qword_10001ECE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C350);
  }

  return result;
}

uint64_t sub_1000058BC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100005988(v11, 0, 0, 1, a1, a2);
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
    sub_100005F08(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100005EBC(v11);
  return v7;
}

unint64_t sub_100005988(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100005A94(a5, a6);
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
    result = sub_10001E280();
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

char *sub_100005A94(uint64_t a1, unint64_t a2)
{
  v4 = sub_100005AE0(a1, a2);
  sub_100005C10(&off_100029240);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100005AE0(uint64_t a1, unint64_t a2)
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

  v6 = sub_100005CFC(v5, 0);
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

  result = sub_10001E280();
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
        v10 = sub_10001E180();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100005CFC(v10, 0);
        result = sub_10001E250();
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

uint64_t sub_100005C10(uint64_t result)
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

  result = sub_100005D70(result, v12, 1, v3);
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

void *sub_100005CFC(uint64_t a1, uint64_t a2)
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

  sub_100001C34(&qword_10002C368, &unk_10001ECF0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100005D70(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001C34(&qword_10002C368, &unk_10001ECF0);
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

unint64_t sub_100005E64()
{
  result = qword_10002C360;
  if (!qword_10002C360)
  {
    sub_10001D7F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C360);
  }

  return result;
}

uint64_t sub_100005EBC(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100005F08(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100005F68(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100005FA0(uint64_t a1, uint64_t *a2)
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

void sub_100006044(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10001D750();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1;
  sub_10001D760();
  v10 = (*(v5 + 88))(v8, v4);
  if (v10 == enum case for WorkoutNotification.NotificationType.interval(_:) || v10 == enum case for WorkoutNotification.NotificationType.intervalWithResult(_:))
  {

    *&v26 = sub_10001D770();
    BYTE8(v26) = 0;
LABEL_9:
    sub_1000069E8();
    sub_100006A3C();
    sub_10001DB60();
    *&v26 = v29;
    WORD4(v26) = BYTE8(v29);
LABEL_10:
    sub_100001C34(&qword_10002C3B0, &qword_10001EDD8);
    sub_100001C34(&qword_10002C3D0, &qword_10001EDE0);
    sub_10000695C();
    sub_100006A90();
    sub_10001DB60();
    v12 = 256;
    if (!BYTE9(v29))
    {
      v12 = 0;
    }

    *&v26 = v29;
    *(&v26 + 1) = v12 | BYTE8(v29);
    v27 = 0uLL;
    v28 = 0;
    goto LABEL_13;
  }

  if (v10 == enum case for WorkoutNotification.NotificationType.milestone(_:))
  {

    *&v26 = sub_10001D770();
    BYTE8(v26) = 1;
    goto LABEL_9;
  }

  if (v10 == enum case for WorkoutNotification.NotificationType.pacerComplete(_:))
  {

    *&v26 = sub_10001D770();
    BYTE8(v26) = 0;
    sub_100006B1C();
    sub_100006B70();
    sub_10001DB60();
    *&v26 = v29;
    BYTE8(v26) = BYTE8(v29);
    BYTE9(v26) = 1;
    goto LABEL_10;
  }

  if (v10 == enum case for WorkoutNotification.NotificationType.raceComplete(_:))
  {

    *&v26 = sub_10001D770();
    BYTE8(v26) = 1;
    sub_100006B1C();
    sub_100006B70();
    sub_10001DB60();
    *&v26 = v29;
    BYTE8(v26) = BYTE8(v29);
    BYTE9(v26) = 1;
    goto LABEL_10;
  }

  if (v10 == enum case for WorkoutNotification.NotificationType.standard(_:))
  {
LABEL_21:
    *&v26 = v9;
    BYTE8(v26) = 0;
    sub_100006828();
    sub_10000687C();
    v17 = v9;
    sub_10001DB60();
    *&v26 = v29;
    *(&v26 + 1) = BYTE8(v29);
    v27 = 0uLL;
    LOBYTE(v28) = 0;
    sub_100001C34(&qword_10002C370, &qword_10001EDC0);
    sub_10000679C();
    sub_10001DB60();
    v26 = v29;
    v27 = v30;
    LOBYTE(v28) = v31;
    HIBYTE(v28) = 1;
    sub_100001C34(&qword_10002C390, &qword_10001EDC8);
    sub_100001C34(&qword_10002C398, &qword_10001EDD0);
    sub_1000068D0();
    sub_100006BC4();
    sub_10001DB60();

    goto LABEL_14;
  }

  if (v10 != enum case for WorkoutNotification.NotificationType.transcript(_:))
  {
    if (v10 != enum case for WorkoutNotification.NotificationType.zone(_:))
    {

      sub_10001DAF0();
      v18 = sub_10001DD30();
      v20 = v19;
      v22 = v21 & 1;
      *&v26 = v18;
      *(&v26 + 1) = v19;
      *&v27 = v21 & 1;
      *(&v27 + 1) = v23;
      *&v25 = v23;
      LOBYTE(v28) = 1;
      sub_10000678C(v18, v19, v21 & 1);

      sub_100001C34(&qword_10002C370, &qword_10001EDC0);
      sub_10000679C();
      sub_10001DB60();
      v26 = v29;
      v27 = v30;
      LOBYTE(v28) = v31;
      HIBYTE(v28) = 1;
      sub_100001C34(&qword_10002C390, &qword_10001EDC8);
      sub_100001C34(&qword_10002C398, &qword_10001EDD0);
      sub_1000068D0();
      sub_100006BC4();
      sub_10001DB60();
      sub_100003470(v18, v20, v22);

      v24 = v30;
      v25 = v29;
      v15 = v31;
      v16 = v32;
      (*(v5 + 8))(v8, v4);
      v14 = v24;
      v13 = v25;
      goto LABEL_15;
    }

    goto LABEL_21;
  }

  *&v26 = sub_10001D770();
  BYTE8(v26) = 1;
  sub_100006828();
  sub_10000687C();
  sub_10001DB60();
  *&v26 = v29;
  *(&v26 + 1) = BYTE8(v29);
  v27 = 0uLL;
  LOBYTE(v28) = 0;
  sub_100001C34(&qword_10002C370, &qword_10001EDC0);
  sub_10000679C();
  sub_10001DB60();
  v26 = v29;
  v27 = v30;
  LOBYTE(v28) = v31;
  HIBYTE(v28) = 1;
LABEL_13:
  sub_100001C34(&qword_10002C390, &qword_10001EDC8);
  sub_100001C34(&qword_10002C398, &qword_10001EDD0);
  sub_1000068D0();
  sub_100006BC4();
  sub_10001DB60();
LABEL_14:
  v13 = v29;
  v14 = v30;
  v15 = v31;
  v16 = v32;
LABEL_15:
  *a2 = v13;
  *(a2 + 16) = v14;
  *(a2 + 32) = v15;
  *(a2 + 33) = v16;
}

__n128 sub_100006718@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_10001DB40();
  sub_100006044(v3, v9);
  v5 = v10;
  v6 = v11;
  result = v9[0];
  v8 = v9[1];
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = result;
  *(a1 + 40) = v8;
  *(a1 + 56) = v5;
  *(a1 + 57) = v6;
  return result;
}

uint64_t sub_10000678C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_10000679C()
{
  result = qword_10002C378;
  if (!qword_10002C378)
  {
    sub_1000036E4(&qword_10002C370, &qword_10001EDC0);
    sub_100006828();
    sub_10000687C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C378);
  }

  return result;
}

unint64_t sub_100006828()
{
  result = qword_10002C380;
  if (!qword_10002C380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C380);
  }

  return result;
}

unint64_t sub_10000687C()
{
  result = qword_10002C388;
  if (!qword_10002C388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C388);
  }

  return result;
}

unint64_t sub_1000068D0()
{
  result = qword_10002C3A0;
  if (!qword_10002C3A0)
  {
    sub_1000036E4(&qword_10002C390, &qword_10001EDC8);
    sub_10000695C();
    sub_100006A90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C3A0);
  }

  return result;
}

unint64_t sub_10000695C()
{
  result = qword_10002C3A8;
  if (!qword_10002C3A8)
  {
    sub_1000036E4(&qword_10002C3B0, &qword_10001EDD8);
    sub_1000069E8();
    sub_100006A3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C3A8);
  }

  return result;
}

unint64_t sub_1000069E8()
{
  result = qword_10002C3B8;
  if (!qword_10002C3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C3B8);
  }

  return result;
}

unint64_t sub_100006A3C()
{
  result = qword_10002C3C0;
  if (!qword_10002C3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C3C0);
  }

  return result;
}

unint64_t sub_100006A90()
{
  result = qword_10002C3C8;
  if (!qword_10002C3C8)
  {
    sub_1000036E4(&qword_10002C3D0, &qword_10001EDE0);
    sub_100006B1C();
    sub_100006B70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C3C8);
  }

  return result;
}

unint64_t sub_100006B1C()
{
  result = qword_10002C3D8;
  if (!qword_10002C3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C3D8);
  }

  return result;
}

unint64_t sub_100006B70()
{
  result = qword_10002C3E0;
  if (!qword_10002C3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C3E0);
  }

  return result;
}

unint64_t sub_100006BC4()
{
  result = qword_10002C3E8;
  if (!qword_10002C3E8)
  {
    sub_1000036E4(&qword_10002C398, &qword_10001EDD0);
    sub_10000679C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C3E8);
  }

  return result;
}

uint64_t sub_100006D10(unint64_t a1)
{
  v2 = sub_10001D780();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v18 - v8;
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    if ((a1 & 0xC000000000000001) != 0)
    {
      sub_10001E270();
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v11 = *(a1 + 32);
    }

    sub_10001D7C0();
    (*(v3 + 104))(v7, enum case for WorkoutNotificationUnit.NotificationUnitType.heading(_:), v2);
    sub_10000A2E0(&qword_10002C480, &type metadata accessor for WorkoutNotificationUnit.NotificationUnitType);
    sub_10001E190();
    sub_10001E190();
    if (v18[2] == v18[0] && v18[3] == v18[1])
    {
      v12 = *(v3 + 8);
      v12(v7, v2);
      v12(v9, v2);
    }

    else
    {
      v13 = sub_10001E2C0();
      v14 = *(v3 + 8);
      v14(v7, v2);
      v14(v9, v2);

      if ((v13 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    v15 = sub_10001D7A0();
    if (v16)
    {
      if (v15 == 0xD000000000000017 && v16 == 0x8000000100025A60)
      {

        return 2;
      }

      v17 = sub_10001E2C0();

      if (v17)
      {
        return 2;
      }

      return 0;
    }

LABEL_14:

    return 0;
  }

  result = sub_10001E290();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_10000701C(unint64_t a1)
{
  v2 = sub_10001D780();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v20 - v8;
  v10 = sub_100006D10(a1);
  if (a1 >> 62)
  {
    result = sub_10001E290();
    if (v10 >= result)
    {
      return v10;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10 >= result)
    {
      return v10;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_10001E270();
  }

  else
  {
    if (v10 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_23;
    }

    v12 = *(a1 + 8 * v10 + 32);
  }

  sub_10001D7C0();
  (*(v3 + 104))(v7, enum case for WorkoutNotificationUnit.NotificationUnitType.heading(_:), v2);
  sub_10000A2E0(&qword_10002C480, &type metadata accessor for WorkoutNotificationUnit.NotificationUnitType);
  sub_10001E190();
  sub_10001E190();
  if (v20[2] == v20[0] && v20[3] == v20[1])
  {
    v13 = *(v3 + 8);
    v13(v7, v2);
    v13(v9, v2);
  }

  else
  {
    v14 = sub_10001E2C0();
    v15 = *(v3 + 8);
    v15(v7, v2);
    v15(v9, v2);

    if ((v14 & 1) == 0)
    {
LABEL_17:

      return v10;
    }
  }

  ++v10;
  v16 = COERCE_DOUBLE(sub_10001D7D0());
  v18 = v17;

  if (v18)
  {
    return v10;
  }

  if ((~*&v16 & 0x7FF0000000000000) == 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v16 < 9.22337204e18)
  {
    v19 = __OFADD__(v10, v16);
    v10 += v16;
    if (!v19)
    {
      return v10;
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_100007338(unint64_t a1)
{
  result = sub_10000701C(a1);
  if (a1 >> 62)
  {
    v8 = result;
    v9 = sub_10001E290();
    result = v8;
    if (v8 >= v9)
    {
      goto LABEL_14;
    }
  }

  else if (result >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_10001E270();
LABEL_7:
    v4 = sub_10001D7A0();
    v6 = v5;

    if (v6)
    {
      if (v4 == 0xD000000000000011 && v6 == 0x8000000100025A40)
      {
        v7 = 1;
      }

      else
      {
        v7 = sub_10001E2C0();
      }

      return v7 & 1;
    }

LABEL_14:
    v7 = 0;
    return v7 & 1;
  }

  if (result < 0)
  {
    __break(1u);
  }

  else if (result < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(a1 + 8 * result + 32);

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_100007464@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100001C34(&qword_10002C470, &qword_10001F180);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v21 - v9;
  sub_100007648(a1, v21 - v9);
  v11 = sub_10000701C(a1);
  if (a1 >> 62)
  {
    result = sub_10001E290();
    v13 = v11 + 1;
    if (!__OFADD__(v11, 1))
    {
      goto LABEL_3;
    }

LABEL_9:
    __break(1u);
    return result;
  }

  result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v13 = v11 + 1;
  if (__OFADD__(v11, 1))
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v13 >= result)
  {
    v14 = 0;
    v17 = 0;
    v15 = 0;
    v16 = 0;
    v18 = 0;
    v19 = 0;
  }

  else
  {
    v14 = sub_10001DAA0();
    sub_1000085DC(a1, v11, v21);
    v15 = v21[0];
    v16 = v21[1];
    v17 = 1;
    v18 = v21[2];
    v19 = v21[3];
  }

  sub_100009EE8(v10, v8);
  sub_100009EE8(v8, a2);
  v20 = (a2 + *(sub_100001C34(&qword_10002C478, &qword_10001F188) + 48));
  *v20 = v14;
  v20[1] = 0;
  v20[2] = v17;
  v20[3] = v15;
  v20[4] = v16;
  v20[5] = v18;
  v20[6] = v19;
  sub_100009F58(v14, 0, v17, v15, v16, v18);
  sub_100009FFC(v10);
  sub_10000A064(v14, 0, v17, v15, v16, v18);
  return sub_100009FFC(v8);
}

uint64_t sub_100007648@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100001C34(&qword_10002C488, &qword_10001F190);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v39 = &v33[-v7];
  v8 = sub_10001D780();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v33[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v15 = &v33[-v14];
  v16 = sub_100001C34(&qword_10002C490, &qword_10001F198);
  v41 = *(v16 - 8);
  v42 = v16;
  v17 = *(v41 + 64);
  __chkstk_darwin(v16);
  v40 = &v33[-v18];
  v19 = sub_100006D10(a1);
  if (a1 >> 62)
  {
    result = sub_10001E290();
    if (v19 < result)
    {
      goto LABEL_3;
    }

LABEL_13:
    v31 = v42;
    v32 = *(v41 + 56);

    return v32(a2, 1, 1, v31);
  }

  result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v19 >= result)
  {
    goto LABEL_13;
  }

LABEL_3:
  v37 = v4;
  v38 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v22 = sub_10001E270();
LABEL_6:
    v35 = v22;
    v36 = v5;
    sub_10001D7C0();
    (*(v9 + 104))(v13, enum case for WorkoutNotificationUnit.NotificationUnitType.heading(_:), v8);
    sub_10000A2E0(&qword_10002C480, &type metadata accessor for WorkoutNotificationUnit.NotificationUnitType);
    sub_10001E190();
    sub_10001E190();
    if (v53 == v43)
    {
      v23 = *(v9 + 8);
      v23(v13, v8);
      v23(v15, v8);
    }

    else
    {
      v34 = sub_10001E2C0();
      v24 = *(v9 + 8);
      v24(v13, v8);
      v24(v15, v8);

      if ((v34 & 1) == 0)
      {

        v28 = v40;
        (*(v36 + 56))(v40, 1, 1, v37);
        goto LABEL_11;
      }
    }

    v25 = sub_10001DAA0();
    v46 = 1;
    sub_100007C70(a1, v19, &v53);
    v49 = v55;
    v50[0] = *v56;
    *(v50 + 9) = *&v56[9];
    v47 = v53;
    v48 = v54;
    v51[2] = v55;
    v52[0] = *v56;
    *(v52 + 9) = *&v56[9];
    v51[0] = v53;
    v51[1] = v54;
    sub_100003A7C(&v47, &v43, &qword_10002C498, &qword_10001F1A0);
    sub_100004088(v51, &qword_10002C498, &qword_10001F1A0);
    *(v45 + 7) = v47;
    v45[4] = *(v50 + 9);
    *(&v45[3] + 7) = v50[0];
    *(&v45[2] + 7) = v49;
    *(&v45[1] + 7) = v48;
    *&v44[17] = v45[1];
    *&v44[33] = v45[2];
    *&v44[49] = v45[3];
    *&v44[65] = v45[4];
    v43 = v25;
    v44[0] = v46;
    *&v44[1] = v45[0];
    sub_100001C34(&qword_10002C4A0, &qword_10001F1A8);
    sub_1000039E0(&qword_10002C4A8, &qword_10002C4A0, &qword_10001F1A8);
    v26 = v39;
    sub_10001DD60();
    *&v56[16] = *&v44[48];
    v57 = *&v44[64];
    v58 = v44[80];
    v53 = v43;
    v54 = *v44;
    v55 = *&v44[16];
    *v56 = *&v44[32];
    sub_100004088(&v53, &qword_10002C4A0, &qword_10001F1A8);
    LODWORD(v25) = sub_10001DB80();

    v27 = v37;
    *(v26 + *(v37 + 36)) = v25;
    v28 = v40;
    sub_1000035C0(v26, v40, &qword_10002C488, &qword_10001F190);
    (*(v36 + 56))(v28, 0, 1, v27);
LABEL_11:
    v29 = v38;
    v30 = v42;
    sub_1000035C0(v28, v38, &qword_10002C490, &qword_10001F198);
    return (*(v41 + 56))(v29, 0, 1, v30);
  }

  if (v19 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v21 = *(a1 + 8 * v19 + 32);

    goto LABEL_6;
  }

  __break(1u);
  return result;
}

unint64_t sub_100007C70@<X0>(unint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_10001E110();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = COERCE_DOUBLE(sub_10001D7D0());
  if ((v12 & 1) != 0 || v11 != 5.0)
  {
    goto LABEL_12;
  }

  if (!(a1 >> 62))
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v14 = a2 + 5;
    if (!__OFADD__(a2, 5))
    {
      goto LABEL_5;
    }

LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v13 = sub_10001E290();
  v14 = a2 + 5;
  if (__OFADD__(a2, 5))
  {
    goto LABEL_56;
  }

LABEL_5:
  if (v14 >= v13)
  {
LABEL_12:
    result = sub_10001D7A0();
    if (v26)
    {
      (*(v7 + 104))(v10, enum case for LocalizationFeature.workout(_:), v6);
      v27 = sub_10001E0B0();
      v29 = v28;

      (*(v7 + 8))(v10, v6);
      *&v106 = v27;
      *(&v106 + 1) = v29;
      sub_100003A28();
      v30 = sub_10001DD40();
      v113 = v31 & 1;
      v112 = 1;
      *&v100 = v30;
      *(&v100 + 1) = v32;
      LOBYTE(v101) = v31 & 1;
      *(&v101 + 1) = v90;
      DWORD1(v101) = *(&v90 + 3);
      v102 = v95;
      v103 = v96;
      *(&v101 + 1) = v33;
      v104 = v97;
      v105 = 1;
      sub_100001C34(&qword_10002C4B0, &qword_10001F1B0);
      sub_1000039E0(&qword_10002C4B8, &qword_10002C4B0, &qword_10001F1B0);
      result = sub_10001DB60();
      v34 = v106;
      v35 = v107;
      v36 = v108;
      v37 = v109;
      v38 = v110;
      v39 = v111;
    }

    else
    {
      v38 = 0;
      v34 = 0uLL;
      v39 = -1;
      v35 = 0uLL;
      v36 = 0uLL;
      v37 = 0uLL;
    }

    goto LABEL_39;
  }

  result = a2 + 1;
  v87 = a1 & 0xC000000000000001;
  v84 = a3;
  v82 = v14;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (a2 < -1)
    {
      __break(1u);
    }

    else if (result < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v16 = *(a1 + 8 * result + 32);

      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_60;
  }

LABEL_57:
  sub_10001E270();
LABEL_10:
  sub_10001D7A0();
  v18 = v17;

  if (v18)
  {
    (*(v7 + 104))(v10, enum case for LocalizationFeature.workout(_:), v6);
    v19 = sub_10001E0B0();
    v21 = v20;

    (*(v7 + 8))(v10, v6);
    *&v106 = v19;
    *(&v106 + 1) = v21;
    sub_100003A28();
    v18 = sub_10001DD40();
    v23 = v22;
    v88 = v25;
    v89 = v24 & 1;
    sub_10000678C(v18, v25, v24 & 1);
    v83 = v23;
  }

  else
  {
    v88 = 0;
    v89 = 0;
    v83 = 0;
  }

  result = a2 + 2;
  v86 = v18;
  if (v87)
  {
    sub_10001E270();
    goto LABEL_21;
  }

  if (a2 < -2)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (result >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v40 = *(a1 + 8 * result + 32);

LABEL_21:
  sub_10001D7A0();
  v42 = v41;

  if (v42)
  {
    v42 = sub_10001DF00();
  }

  result = a2 + 3;
  if (v87)
  {
    sub_10001E270();
    goto LABEL_28;
  }

  if (a2 < -3)
  {
    goto LABEL_61;
  }

  if (result >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v43 = *(a1 + 8 * result + 32);

LABEL_28:
  v81 = sub_10001D7A0();
  v45 = v44;

  v85 = v42;
  if (!v45)
  {
    v46 = 0;
LABEL_37:
    v51 = 0;
    v52 = 0;
LABEL_38:
    v53 = v88;
    v54 = v89;
    *&v90 = v86;
    *(&v90 + 1) = v88;
    v55 = v83;
    *&v91 = v89;
    *(&v91 + 1) = v83;
    *&v92 = v42;
    *(&v92 + 1) = v46;
    *&v93 = v45;
    *(&v93 + 1) = v51;
    v94 = v52;
    v99 = v52;
    v97 = v92;
    v98 = v93;
    v95 = v90;
    v96 = v91;
    v56 = v86;
    sub_10000A328(v86, v88, v89, v83);

    sub_10000A328(v46, v45, v51, v52);
    sub_10000A36C(v46, v45, v51, v52);

    sub_10000A36C(v56, v53, v54, v55);
    v113 = 0;
    v102 = v97;
    v103 = v98;
    v104 = v99;
    v100 = v95;
    v101 = v96;
    v105 = 0;
    sub_100003A7C(&v90, &v106, &qword_10002C4C0, &qword_10001F1B8);
    sub_100001C34(&qword_10002C4B0, &qword_10001F1B0);
    sub_1000039E0(&qword_10002C4B8, &qword_10002C4B0, &qword_10001F1B0);
    sub_10001DB60();
    sub_10000A36C(v46, v45, v51, v52);

    sub_10000A36C(v86, v88, v89, v55);
    result = sub_100004088(&v90, &qword_10002C4C0, &qword_10001F1B8);
    v34 = v106;
    v35 = v107;
    v36 = v108;
    v37 = v109;
    v38 = v110;
    v39 = v111;
    a3 = v84;
LABEL_39:
    *a3 = v34;
    *(a3 + 16) = v35;
    *(a3 + 32) = v36;
    *(a3 + 48) = v37;
    *(a3 + 64) = v38;
    *(a3 + 72) = v39;
    return result;
  }

  result = a2 + 4;
  if (v87)
  {
    sub_10001E270();
    goto LABEL_35;
  }

  if (a2 < -4)
  {
    goto LABEL_64;
  }

  if (result >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v47 = *(a1 + 8 * result + 32);

LABEL_35:
  v48 = COERCE_DOUBLE(sub_10001D7D0());
  v50 = v49;

  if (v50)
  {

    v46 = 0;
    v45 = 0;
    goto LABEL_37;
  }

  if (v87)
  {
    sub_10001E270();
    goto LABEL_45;
  }

  if ((v82 & 0x8000000000000000) != 0)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  if (v82 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v57 = *(a1 + 8 * v82 + 32);

LABEL_45:
    v58 = COERCE_DOUBLE(sub_10001D7D0());
    v60 = v59;

    if (v60)
    {

      v46 = 0;
      v45 = 0;
      v51 = 0;
      v52 = 0;
      v42 = v85;
      goto LABEL_38;
    }

    (*(v7 + 104))(v10, enum case for LocalizationFeature.workout(_:), v6);
    sub_10001E0B0();
    v62 = v61;

    (*(v7 + 8))(v10, v6);
    sub_100001C34(&qword_10002C4C8, &qword_10001F1C0);
    result = swift_allocObject();
    *(result + 16) = xmmword_10001ED00;
    if ((~*&v48 & 0x7FF0000000000000) != 0)
    {
      if (v48 > -9.22337204e18)
      {
        v87 = v62;
        if (v48 < 9.22337204e18)
        {
          v63 = result;
          *&v106 = v48;
          sub_10000A3B0();
          v64 = sub_10001E240();
          v66 = v65;
          v63[7] = &type metadata for String;
          result = sub_10000A404();
          v63[8] = result;
          v63[4] = v64;
          v63[5] = v66;
          if ((~*&v58 & 0x7FF0000000000000) != 0)
          {
            v67 = v58;
            if (v58 > -9.22337204e18)
            {
              v42 = v85;
              if (v67 < 9.22337204e18)
              {
                v68 = result;
                *&v106 = v67;
                v69 = sub_10001E240();
                v63[12] = &type metadata for String;
                v63[13] = v68;
                v63[9] = v69;
                v63[10] = v70;
                v71 = sub_10001E150();
                v73 = v72;

                *&v106 = v71;
                *(&v106 + 1) = v73;
                sub_100003A28();
                v74 = sub_10001E220();
                v76 = v75;

                *&v100 = v74;
                *(&v100 + 1) = v76;
                v77 = sub_10001DD40();
                v45 = v78;
                v52 = v79;
                v51 = v80 & 1;
                v46 = v77;
                sub_10000678C(v77, v78, v80 & 1);

                goto LABEL_38;
              }

              goto LABEL_71;
            }

LABEL_70:
            __break(1u);
LABEL_71:
            __break(1u);
            goto LABEL_72;
          }

LABEL_69:
          __break(1u);
          goto LABEL_70;
        }

LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

LABEL_73:
  __break(1u);
  return result;
}

unint64_t sub_1000085DC@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v3 = a3;
  if ((a1 & 0xC000000000000001) != 0)
  {
LABEL_14:
    v7 = sub_10001E270();
    v8 = sub_10001E270();
    goto LABEL_7;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result >= v6)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v6 <= a2)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v7 = *(a1 + 32 + 8 * result);
  v8 = *(a1 + 32 + 8 * a2);

LABEL_7:
  sub_10000A104();
  v10 = v9;
  if (sub_100007338(a1))
  {
    v11 = 0;
  }

  else
  {
    swift_retain_n();
    v11 = v7;
  }

  swift_retain_n();
  swift_retain_n();
  sub_100009FB8(v11);
  sub_10000A0C4(v11);

  *v3 = v8;
  v3[1] = v10;
  v3[2] = v11;
  v3[3] = 0;
  sub_10000A0C4(v11);
}

uint64_t sub_10000875C@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_100001C34(&qword_10002C4E8, &qword_10001F1D0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (v26 - v7);
  v9 = sub_100001C34(&qword_10002C4F0, &qword_10001F1D8);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v26 - v14;
  if (a1 >> 62)
  {
    v16 = sub_10001E290();
  }

  else
  {
    v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v28 = v5;
  v29 = v4;
  if (v16 < 2)
  {
    v20 = 0;
    v19 = 0;
    v21 = 0;
    v18 = 0;
    goto LABEL_11;
  }

  v27 = v8;
  result = sub_10001DA90();
  v18 = result;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v19 = sub_10001E270();
    v20 = sub_10001E270();
  }

  else
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      __break(1u);
      goto LABEL_19;
    }

    v20 = *(a1 + 32);
    v19 = *(a1 + 40);
  }

  v21 = 1;
  if (v16 == 2)
  {
LABEL_11:
    (*(v28 + 56))(v15, 1, 1, v29);
LABEL_15:
    sub_100003A7C(v15, v13, &qword_10002C4F0, &qword_10001F1D8);
    *a2 = v18;
    a2[1] = 0;
    a2[2] = v21;
    a2[3] = v19;
    a2[4] = 0;
    a2[5] = v20;
    a2[6] = 0;
    v25 = sub_100001C34(&qword_10002C4F8, &qword_10001F1E0);
    sub_100003A7C(v13, a2 + *(v25 + 48), &qword_10002C4F0, &qword_10001F1D8);
    sub_10000A458(v18, 0, v21, v19);
    sub_10000A4BC(v18, 0, v21, v19);
    sub_100004088(v15, &qword_10002C4F0, &qword_10001F1D8);
    sub_100004088(v13, &qword_10002C4F0, &qword_10001F1D8);
    return sub_10000A4BC(v18, 0, v21, v19);
  }

  result = sub_10001DA90();
  v22 = v27;
  *v27 = result;
  v22[1] = 0;
  *(v22 + 16) = 1;
  if (a1 >> 62)
  {
    result = sub_10001E290();
    v23 = result;
  }

  else
  {
    v23 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v23 >= 2)
  {
    v26[1] = *(sub_100001C34(&qword_10002C500, &qword_10001F1E8) + 44);
    v30 = 2;
    v31 = v23;
    v26[4] = swift_getKeyPath();
    *(swift_allocObject() + 16) = a1;

    v26[3] = sub_100001C34(&qword_10002C508, &qword_10001F208);
    v26[2] = sub_100001C34(&qword_10002C510, &qword_10001F210);
    sub_10000A560();
    sub_1000039E0(&qword_10002C528, &qword_10002C510, &qword_10001F210);
    v24 = v27;
    sub_10001DF60();
    sub_1000035C0(v24, v15, &qword_10002C4E8, &qword_10001F1D0);
    v21 = 1;
    (*(v28 + 56))(v15, 0, 1, v29);
    goto LABEL_15;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_100008BCC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_10001D780();
  v7 = *(*(v6 - 8) + 64);
  result = __chkstk_darwin(v6);
  v11 = 0;
  v12 = *a1;
  if (v12 >= 3)
  {
    (*(v10 + 104))(&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for WorkoutNotificationUnit.NotificationUnitType.string(_:));
    v13 = sub_10001D7E0();
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v11 = sub_10001D7B0();
  }

  if ((a2 & 0xC000000000000001) != 0)
  {
    v16 = sub_10001E270();
    goto LABEL_7;
  }

  if (v12 < 0)
  {
    __break(1u);
  }

  else if (v12 < *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(a2 + 8 * v12 + 32);

LABEL_7:
    sub_100009FB8(v11);

    sub_10000A0C4(v11);
    *a3 = v11;
    a3[1] = 0;
    a3[2] = v16;
    a3[3] = 0;

    return sub_10000A0C4(v11);
  }

  __break(1u);
  return result;
}

uint64_t sub_100008DA0@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t (*a3)(uint64_t)@<X4>, uint64_t a4@<X8>)
{
  v9 = *v4;
  *a4 = sub_10001DB40();
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v10 = a4 + *(sub_100001C34(a1, a2) + 44);
  return a3(v9);
}

uint64_t sub_100008E0C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100001C34(&qword_10002C530, &qword_10001F218);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - v7;
  if (a1 >> 62)
  {
    v15 = v6;
    v12 = sub_10001E290();
    v6 = v15;
    if (v12 >= 3)
    {
      goto LABEL_3;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3)
  {
LABEL_3:
    v15 = v6;
    result = sub_10001DA90();
    *v8 = result;
    *(v8 + 1) = 0;
    v8[16] = 1;
    if (a1 >> 62)
    {
      result = sub_10001E290();
      v10 = result;
    }

    else
    {
      v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v10 < 2)
    {
      __break(1u);
    }

    else
    {
      v11 = *(sub_100001C34(&qword_10002C538, &qword_10001F220) + 44);
      v16 = 2;
      v17 = v10;
      swift_getKeyPath();
      *(swift_allocObject() + 16) = a1;

      sub_100001C34(&qword_10002C508, &qword_10001F208);
      sub_10000A560();
      sub_100009E94();
      sub_10001DF60();
      sub_1000035C0(v8, a2, &qword_10002C530, &qword_10001F218);
      return (*(v15 + 56))(a2, 0, 1, v4);
    }

    return result;
  }

  v13 = *(v6 + 56);

  return v13(a2, 1, 1, v4);
}

unint64_t sub_10000908C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = *a1;
  if ((a2 & 0xC000000000000001) != 0)
  {
    v5 = sub_10001E270();
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(a2 + 8 * result + 32);

LABEL_5:
    result = sub_10001DE90();
    *a3 = v5;
    a3[1] = result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_100009100@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100001C34(&qword_10002C530, &qword_10001F218);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - v7;
  if (a1 >> 62)
  {
    v15 = v6;
    v12 = sub_10001E290();
    v6 = v15;
    if (v12 >= 4)
    {
      goto LABEL_3;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4)
  {
LABEL_3:
    v15 = v6;
    result = sub_10001DA90();
    *v8 = result;
    *(v8 + 1) = 0;
    v8[16] = 1;
    if (a1 >> 62)
    {
      result = sub_10001E290();
      v10 = result;
    }

    else
    {
      v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v10 < 3)
    {
      __break(1u);
    }

    else
    {
      v11 = *(sub_100001C34(&qword_10002C538, &qword_10001F220) + 44);
      v16 = 3;
      v17 = v10;
      swift_getKeyPath();
      *(swift_allocObject() + 16) = a1;

      sub_100001C34(&qword_10002C508, &qword_10001F208);
      sub_10000A560();
      sub_100009E94();
      sub_10001DF60();
      sub_1000035C0(v8, a2, &qword_10002C530, &qword_10001F218);
      return (*(v15 + 56))(a2, 0, 1, v4);
    }

    return result;
  }

  v13 = *(v6 + 56);

  return v13(a2, 1, 1, v4);
}

unint64_t sub_100009380@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  result = *a1;
  if ((a2 & 0xC000000000000001) != 0)
  {
    result = sub_10001E270();
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(a2 + 8 * result + 32);

LABEL_5:
    *a3 = result;
    a3[1] = 0;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_100009458@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = *a1;
  a2[1] = 0;
}

uint64_t sub_100009464@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  *a1 = sub_10001DA90();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v4 = *(sub_100001C34(&qword_10002C400, &unk_10001F110) + 44);
  sub_10001D770();
  swift_getKeyPath();
  sub_100001C34(&qword_10002C408, &qword_10001F138);
  sub_1000039E0(&qword_10002C410, &qword_10002C408, &qword_10001F138);
  sub_10000A2E0(&qword_10002C418, &type metadata accessor for WorkoutNotificationUnit);
  sub_100009E94();
  return sub_10001DF60();
}

uint64_t sub_1000095A8@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = sub_10001D780();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10001E110();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100001C34(&qword_10002C440, &qword_10001F150);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v27 - v16;
  *v17 = sub_10001DA90();
  *(v17 + 1) = 0;
  v17[16] = 1;
  v18 = sub_100001C34(&qword_10002C448, &qword_10001F158);
  sub_1000098F4(&v17[*(v18 + 44)]);
  (*(v7 + 104))(v10, enum case for LocalizationFeature.workout(_:), v6);
  sub_10001E0B0();
  (*(v7 + 8))(v10, v6);
  (*(v2 + 104))(v5, enum case for WorkoutNotificationUnit.NotificationUnitType.string(_:), v1);
  v19 = sub_10001D7E0();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = sub_10001D7B0();
  v23 = sub_10001DEC0();
  sub_100003A7C(v17, v15, &qword_10002C440, &qword_10001F150);
  v24 = v28;
  sub_100003A7C(v15, v28, &qword_10002C440, &qword_10001F150);
  v25 = (v24 + *(sub_100001C34(&qword_10002C450, &qword_10001F160) + 48));
  *v25 = v22;
  v25[1] = v23;

  sub_100004088(v17, &qword_10002C440, &qword_10001F150);

  return sub_100004088(v15, &qword_10002C440, &qword_10001F150);
}

uint64_t sub_1000098F4@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v33 = sub_10001E110();
  v1 = *(v33 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v33);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10001D780();
  v31 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100001C34(&qword_10002C458, &qword_10001F168);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v32 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v31 - v14;
  v16 = *(v6 + 104);
  v16(v9, enum case for WorkoutNotificationUnit.NotificationUnitType.image(_:), v5);
  v17 = sub_10001D7E0();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = sub_10001D7B0();
  v21 = sub_10001DEB0();
  v35 = v20;
  v36 = v21;
  sub_100009E94();
  sub_10001DE10();

  v22 = v33;
  (*(v1 + 104))(v4, enum case for LocalizationFeature.workout(_:), v33);
  sub_10001E0B0();
  (*(v1 + 8))(v4, v22);
  v16(v9, enum case for WorkoutNotificationUnit.NotificationUnitType.string(_:), v31);
  v23 = *(v17 + 48);
  v24 = *(v17 + 52);
  swift_allocObject();
  v25 = sub_10001D7B0();
  v26 = sub_10001DEB0();
  v27 = v32;
  sub_100003A7C(v15, v32, &qword_10002C458, &qword_10001F168);
  v28 = v34;
  sub_100003A7C(v27, v34, &qword_10002C458, &qword_10001F168);
  v29 = (v28 + *(sub_100001C34(&qword_10002C460, &qword_10001F170) + 48));
  *v29 = v25;
  v29[1] = v26;

  sub_100004088(v15, &qword_10002C458, &qword_10001F168);

  return sub_100004088(v27, &qword_10002C458, &qword_10001F168);
}

uint64_t sub_100009CC8()
{
  v0 = sub_10001DBE0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100001C34(&qword_10002C428, &qword_10001F140);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  *v8 = sub_10001DB40();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v9 = sub_100001C34(&qword_10002C430, &qword_10001F148);
  sub_1000095A8(&v8[*(v9 + 44)]);
  sub_10001DBD0();
  sub_1000039E0(&qword_10002C438, &qword_10002C428, &qword_10001F140);
  sub_10001DE20();
  (*(v1 + 8))(v4, v0);
  return sub_100004088(v8, &qword_10002C428, &qword_10001F140);
}

unint64_t sub_100009E94()
{
  result = qword_10002C420;
  if (!qword_10002C420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C420);
  }

  return result;
}

uint64_t sub_100009EE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001C34(&qword_10002C470, &qword_10001F180);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100009F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4)
  {

    sub_100009FB8(a6);
  }
}

uint64_t sub_100009FB8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100009FFC(uint64_t a1)
{
  v2 = sub_100001C34(&qword_10002C470, &qword_10001F180);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10000A064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4)
  {

    sub_10000A0C4(a6);
  }
}

uint64_t sub_10000A0C4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_10000A104()
{
  v0 = sub_10001D780();
  v1 = *(v0 - 1);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001D7C0();
  v5 = (*(v1 + 88))(v4, v0);
  if (v5 == enum case for WorkoutNotificationUnit.NotificationUnitType.distance(_:))
  {
    v6 = [objc_opt_self() distanceColors];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 nonGradientTextColor];

      if (v8)
      {
LABEL_4:
        sub_10001DEE0();
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_15;
  }

  if (v5 == enum case for WorkoutNotificationUnit.NotificationUnitType.string(_:))
  {
    sub_10001E1E0();
    sub_10001DEE0();
    return;
  }

  if (v5 == enum case for WorkoutNotificationUnit.NotificationUnitType.time(_:))
  {
    v9 = [objc_opt_self() elapsedTimeColors];
    if (!v9)
    {
LABEL_15:
      __break(1u);
      return;
    }

    v0 = v9;
    v10 = [v9 nonGradientTextColor];

    if (v10)
    {
      goto LABEL_4;
    }

    __break(1u);
  }

  (*(v1 + 8))(v4, v0);
}

uint64_t sub_10000A2E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000A328(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10000678C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10000A36C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100003470(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_10000A3B0()
{
  result = qword_10002C4D0;
  if (!qword_10002C4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C4D0);
  }

  return result;
}

unint64_t sub_10000A404()
{
  result = qword_10002C4D8;
  if (!qword_10002C4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C4D8);
  }

  return result;
}

uint64_t sub_10000A458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

uint64_t sub_10000A4BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

uint64_t sub_10000A520()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_10000A560()
{
  result = qword_10002C518;
  if (!qword_10002C518)
  {
    sub_1000036E4(&qword_10002C508, &qword_10001F208);
    sub_10000A5EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C518);
  }

  return result;
}

unint64_t sub_10000A5EC()
{
  result = qword_10002C520;
  if (!qword_10002C520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C520);
  }

  return result;
}

uint64_t sub_10000A694()
{
  sub_1000036E4(&qword_10002C428, &qword_10001F140);
  sub_1000039E0(&qword_10002C438, &qword_10002C428, &qword_10001F140);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_10000A7B8()
{
  result = qword_10002C570;
  if (!qword_10002C570)
  {
    sub_1000036E4(&qword_10002C578, &unk_10001F240);
    sub_1000039E0(&qword_10002C580, &qword_10002C530, &qword_10001F218);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C570);
  }

  return result;
}

__n128 sub_10000A87C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10000A888(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_10000A8D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10000A938(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v634 = a1;
  v643 = a2;
  v2 = sub_10001DAE0();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v488 = &v479 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v503 = sub_100001C34(&qword_10002C588, &qword_10001F310);
  v5 = *(*(v503 - 8) + 64);
  __chkstk_darwin(v503);
  v504 = &v479 - v6;
  v542 = sub_100001C34(&qword_10002C590, &qword_10001F318);
  v7 = *(*(v542 - 8) + 64);
  __chkstk_darwin(v542);
  v505 = &v479 - v8;
  v492 = sub_100001C34(&qword_10002C598, &qword_10001F320);
  v9 = *(*(v492 - 8) + 64);
  __chkstk_darwin(v492);
  v493 = &v479 - v10;
  v11 = sub_100001C34(&qword_10002C5A0, &qword_10001F328);
  v490 = *(v11 - 8);
  v491 = v11;
  v12 = *(v490 + 64);
  v13 = __chkstk_darwin(v11);
  v484 = &v479 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v499 = &v479 - v15;
  v507 = sub_100001C34(&qword_10002C5A8, &qword_10001F330);
  v16 = *(*(v507 - 8) + 64);
  v17 = __chkstk_darwin(v507);
  v480 = &v479 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v481 = &v479 - v20;
  v21 = __chkstk_darwin(v19);
  v489 = &v479 - v22;
  __chkstk_darwin(v21);
  v506 = &v479 - v23;
  v502 = sub_100001C34(&qword_10002C5B0, &qword_10001F338);
  v24 = *(*(v502 - 8) + 64);
  __chkstk_darwin(v502);
  v508 = &v479 - v25;
  v26 = sub_10001E0D0();
  v497 = *(v26 - 8);
  v498 = v26;
  v27 = *(v497 + 64);
  v28 = __chkstk_darwin(v26);
  v487 = &v479 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v509 = &v479 - v30;
  v31 = sub_100001C34(&qword_10002C5B8, &qword_10001F340);
  v512 = *(v31 - 8);
  v513 = v31;
  v32 = *(v512 + 64);
  v33 = __chkstk_darwin(v31);
  v483 = &v479 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v482 = &v479 - v36;
  v37 = __chkstk_darwin(v35);
  v495 = &v479 - v38;
  __chkstk_darwin(v37);
  v494 = &v479 - v39;
  v537 = sub_100001C34(&qword_10002C5C0, &qword_10001F348);
  v40 = *(*(v537 - 8) + 64);
  v41 = __chkstk_darwin(v537);
  v496 = &v479 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v532 = &v479 - v43;
  v538 = sub_100001C34(&qword_10002C5C8, &qword_10001F350);
  v44 = *(*(v538 - 8) + 64);
  __chkstk_darwin(v538);
  v540 = &v479 - v45;
  v534 = sub_100001C34(&qword_10002C5D0, &qword_10001F358);
  v46 = *(*(v534 - 8) + 64);
  __chkstk_darwin(v534);
  v535 = &v479 - v47;
  v539 = sub_100001C34(&qword_10002C5D8, &qword_10001F360);
  v48 = *(*(v539 - 8) + 64);
  __chkstk_darwin(v539);
  v536 = &v479 - v49;
  v574 = sub_100001C34(&qword_10002C5E0, &qword_10001F368);
  v50 = *(*(v574 - 8) + 64);
  __chkstk_darwin(v574);
  v541 = &v479 - v51;
  v530 = sub_100001C34(&qword_10002C5E8, &qword_10001F370);
  v52 = *(*(v530 - 8) + 64);
  __chkstk_darwin(v530);
  v531 = &v479 - v53;
  v54 = sub_10001E0A0();
  v526 = *(v54 - 8);
  v527 = v54;
  v55 = *(v526 + 64);
  v56 = __chkstk_darwin(v54);
  v514 = &v479 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v533 = &v479 - v58;
  v529 = sub_100001C34(&qword_10002C5F0, &qword_10001F378);
  v59 = *(*(v529 - 8) + 64);
  v60 = __chkstk_darwin(v529);
  v500 = &v479 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __chkstk_darwin(v60);
  v501 = &v479 - v63;
  v64 = __chkstk_darwin(v62);
  v510 = &v479 - v65;
  __chkstk_darwin(v64);
  v511 = &v479 - v66;
  v545 = sub_100001C34(&qword_10002C5F8, &qword_10001F380);
  v544 = *(v545 - 8);
  v67 = *(v544 + 64);
  __chkstk_darwin(v545);
  v528 = &v479 - v68;
  v69 = sub_10001E2B0();
  v524 = *(v69 - 8);
  v525 = v69;
  v70 = *(v524 + 64);
  __chkstk_darwin(v69);
  v519 = &v479 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_10001E2F0();
  v520 = *(v72 - 8);
  v521 = v72;
  v73 = *(v520 + 64);
  __chkstk_darwin(v72);
  v517 = &v479 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_10001E300();
  v522 = *(v75 - 8);
  v523 = v75;
  v76 = *(v522 + 64);
  __chkstk_darwin(v75);
  v518 = &v479 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v552 = sub_100001C34(&qword_10002C600, &qword_10001F388);
  v78 = *(*(v552 - 8) + 64);
  __chkstk_darwin(v552);
  v546 = &v479 - v79;
  v550 = sub_100001C34(&qword_10002C608, &qword_10001F390);
  v80 = *(*(v550 - 8) + 64);
  __chkstk_darwin(v550);
  v551 = &v479 - v81;
  v568 = sub_100001C34(&qword_10002C610, &qword_10001F398);
  v82 = *(*(v568 - 8) + 64);
  __chkstk_darwin(v568);
  v553 = &v479 - v83;
  v570 = sub_100001C34(&qword_10002C618, &qword_10001F3A0);
  v84 = *(*(v570 - 8) + 64);
  __chkstk_darwin(v570);
  v572 = &v479 - v85;
  v565 = sub_100001C34(&qword_10002C620, &qword_10001F3A8);
  v86 = *(*(v565 - 8) + 64);
  __chkstk_darwin(v565);
  v567 = &v479 - v87;
  v562 = sub_100001C34(&qword_10002C628, &qword_10001F3B0);
  v88 = *(*(v562 - 8) + 64);
  __chkstk_darwin(v562);
  v563 = &v479 - v89;
  v566 = sub_100001C34(&qword_10002C630, &qword_10001F3B8);
  v90 = *(*(v566 - 8) + 64);
  __chkstk_darwin(v566);
  v564 = &v479 - v91;
  v571 = sub_100001C34(&qword_10002C638, &qword_10001F3C0);
  v92 = *(*(v571 - 8) + 64);
  __chkstk_darwin(v571);
  v569 = &v479 - v93;
  v638 = sub_100001C34(&qword_10002C640, &qword_10001F3C8);
  v94 = *(*(v638 - 8) + 64);
  __chkstk_darwin(v638);
  v573 = &v479 - v95;
  v559 = sub_100001C34(&qword_10002C648, &qword_10001F3D0);
  v558 = *(v559 - 8);
  v96 = *(v558 + 64);
  __chkstk_darwin(v559);
  v557 = &v479 - v97;
  v561 = sub_100001C34(&qword_10002C650, &qword_10001F3D8);
  v98 = *(*(v561 - 8) + 64);
  __chkstk_darwin(v561);
  v560 = &v479 - v99;
  v100 = sub_100001C34(&qword_10002C658, &qword_10001F3E0);
  v101 = *(*(v100 - 8) + 64);
  __chkstk_darwin(v100 - 8);
  v575 = (&v479 - v102);
  v595 = sub_100001C34(&qword_10002C660, &qword_10001F3E8);
  v103 = *(*(v595 - 8) + 64);
  __chkstk_darwin(v595);
  v576 = &v479 - v104;
  v597 = sub_100001C34(&qword_10002C668, &qword_10001F3F0);
  v578 = *(v597 - 8);
  v105 = *(v578 + 64);
  __chkstk_darwin(v597);
  v577 = &v479 - v106;
  v593 = sub_100001C34(&qword_10002C670, &qword_10001F3F8);
  v107 = *(*(v593 - 8) + 64);
  __chkstk_darwin(v593);
  v594 = &v479 - v108;
  v606 = sub_100001C34(&qword_10002C678, &qword_10001F400);
  v109 = *(*(v606 - 8) + 64);
  __chkstk_darwin(v606);
  v596 = &v479 - v110;
  v585 = sub_10001DB30();
  v584 = *(v585 - 8);
  v111 = *(v584 + 64);
  __chkstk_darwin(v585);
  v583 = &v479 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
  v581 = sub_10001DC60();
  v580 = *(v581 - 8);
  v113 = *(v580 + 64);
  __chkstk_darwin(v581);
  v579 = &v479 - ((v114 + 15) & 0xFFFFFFFFFFFFFFF0);
  v590 = sub_100001C34(&qword_10002C680, &qword_10001F408);
  v589 = *(v590 - 8);
  v115 = *(v589 + 64);
  __chkstk_darwin(v590);
  v582 = &v479 - v116;
  v588 = sub_10001E110();
  v587 = *(v588 - 8);
  v117 = *(v587 + 64);
  __chkstk_darwin(v588);
  v586 = &v479 - ((v118 + 15) & 0xFFFFFFFFFFFFFFF0);
  v592 = sub_100001C34(&qword_10002C688, &qword_10001F410);
  v119 = *(*(v592 - 8) + 64);
  __chkstk_darwin(v592);
  v591 = &v479 - v120;
  v604 = sub_100001C34(&qword_10002C690, &qword_10001F418);
  v121 = *(*(v604 - 8) + 64);
  __chkstk_darwin(v604);
  v605 = &v479 - v122;
  v632 = sub_100001C34(&qword_10002C698, &qword_10001F420);
  v123 = *(*(v632 - 8) + 64);
  __chkstk_darwin(v632);
  v607 = &v479 - v124;
  v640 = sub_100001C34(&qword_10002C6A0, &qword_10001F428);
  v125 = *(*(v640 - 8) + 64);
  __chkstk_darwin(v640);
  v642 = (&v479 - v126);
  v635 = sub_100001C34(&qword_10002C6A8, &qword_10001F430);
  v127 = *(*(v635 - 8) + 64);
  __chkstk_darwin(v635);
  v637 = &v479 - v128;
  v629 = sub_100001C34(&qword_10002C6B0, &qword_10001F438);
  v129 = *(*(v629 - 8) + 64);
  __chkstk_darwin(v629);
  v631 = &v479 - v130;
  v617 = sub_100001C34(&qword_10002C6B8, &qword_10001F440);
  v131 = *(*(v617 - 8) + 64);
  __chkstk_darwin(v617);
  v618 = &v479 - v132;
  v620 = sub_100001C34(&qword_10002C6C0, &qword_10001F448);
  v133 = *(*(v620 - 8) + 64);
  __chkstk_darwin(v620);
  v621 = &v479 - v134;
  v628 = sub_100001C34(&qword_10002C6C8, &qword_10001F450);
  v135 = *(*(v628 - 8) + 64);
  __chkstk_darwin(v628);
  v622 = &v479 - v136;
  v630 = sub_100001C34(&qword_10002C6D0, &qword_10001F458);
  v137 = *(*(v630 - 8) + 64);
  __chkstk_darwin(v630);
  v619 = &v479 - v138;
  v636 = sub_100001C34(&qword_10002C6D8, &qword_10001F460);
  v139 = *(*(v636 - 8) + 64);
  __chkstk_darwin(v636);
  v633 = &v479 - v140;
  v641 = sub_100001C34(&qword_10002C6E0, &qword_10001F468);
  v141 = *(*(v641 - 8) + 64);
  __chkstk_darwin(v641);
  v639 = &v479 - v142;
  v626 = sub_10001DBE0();
  v627 = *(v626 - 8);
  v143 = *(v627 + 64);
  __chkstk_darwin(v626);
  v145 = &v479 - ((v144 + 15) & 0xFFFFFFFFFFFFFFF0);
  v644 = sub_100001C34(&qword_10002C6E8, &qword_10001F470);
  v146 = *(*(v644 - 8) + 64);
  __chkstk_darwin(v644);
  v148 = &v479 - v147;
  v623 = sub_100001C34(&qword_10002C6F0, &qword_10001F478);
  v624 = *(v623 - 8);
  v149 = *(v624 + 64);
  v150 = __chkstk_darwin(v623);
  v543 = &v479 - ((v151 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = __chkstk_darwin(v150);
  v548 = &v479 - v153;
  v154 = __chkstk_darwin(v152);
  v555 = &v479 - v155;
  v156 = __chkstk_darwin(v154);
  v599 = &v479 - v157;
  v158 = __chkstk_darwin(v156);
  v602 = &v479 - v159;
  v160 = __chkstk_darwin(v158);
  v609 = &v479 - v161;
  v162 = __chkstk_darwin(v160);
  v612 = &v479 - v163;
  v164 = __chkstk_darwin(v162);
  v615 = &v479 - v165;
  __chkstk_darwin(v164);
  v167 = &v479 - v166;
  v625 = sub_100001C34(&qword_10002C6F8, &unk_10001F480);
  v168 = *(*(v625 - 8) + 64);
  v169 = __chkstk_darwin(v625);
  v515 = &v479 - ((v170 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = __chkstk_darwin(v169);
  v516 = &v479 - v172;
  v173 = __chkstk_darwin(v171);
  v547 = &v479 - v174;
  v175 = __chkstk_darwin(v173);
  v549 = &v479 - v176;
  v177 = __chkstk_darwin(v175);
  v554 = &v479 - v178;
  v179 = __chkstk_darwin(v177);
  v556 = &v479 - v180;
  v181 = __chkstk_darwin(v179);
  v598 = &v479 - v182;
  v183 = __chkstk_darwin(v181);
  v600 = &v479 - v184;
  v185 = __chkstk_darwin(v183);
  v601 = &v479 - v186;
  v187 = __chkstk_darwin(v185);
  v603 = &v479 - v188;
  v189 = __chkstk_darwin(v187);
  v608 = &v479 - v190;
  v191 = __chkstk_darwin(v189);
  v610 = &v479 - v192;
  v193 = __chkstk_darwin(v191);
  v611 = &v479 - v194;
  v195 = __chkstk_darwin(v193);
  v613 = &v479 - v196;
  v197 = __chkstk_darwin(v195);
  v199 = &v479 - v198;
  v200 = __chkstk_darwin(v197);
  v614 = &v479 - v201;
  v202 = __chkstk_darwin(v200);
  v204 = &v479 - v203;
  __chkstk_darwin(v202);
  v616 = &v479 - v205;
  v206 = sub_10001D780();
  v207 = *(v206 - 8);
  v208 = *(v207 + 64);
  v209 = __chkstk_darwin(v206);
  v485 = &v479 - ((v210 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v209);
  v212 = &v479 - v211;
  sub_10001D7C0();
  v486 = v207;
  v213 = (*(v207 + 88))(v212, v206);
  if (v213 == enum case for WorkoutNotificationUnit.NotificationUnitType.averageCadence(_:))
  {
    *v148 = sub_10001DA90();
    *(v148 + 1) = 0;
    v148[16] = 0;
    v214 = sub_100001C34(&qword_10002C848, &qword_10001F4C0);
    v215 = v634;
    sub_10001015C(&v148[*(v214 + 44)]);
    sub_10001DBC0();
    sub_1000039E0(&qword_10002C728, &qword_10002C6E8, &qword_10001F470);
    sub_10001DE20();
    (*(v627 + 8))(v145, v626);
    sub_100004088(v148, &qword_10002C6E8, &qword_10001F470);
    if (v215)
    {
      v216 = v215;
    }

    else
    {
      v216 = sub_10001DE50();
    }

    (*(v624 + 32))(v204, v167, v623);
    *&v204[*(v625 + 36)] = v216;
    v226 = &qword_10002C6F8;
    v227 = &unk_10001F480;
    v228 = v616;
    sub_1000035C0(v204, v616, &qword_10002C6F8, &unk_10001F480);
    sub_100003A7C(v228, v621, &qword_10002C6F8, &unk_10001F480);
    swift_storeEnumTagMultiPayload();
    sub_100010688();

    v229 = v622;
    sub_10001DB60();
    sub_100003A7C(v229, v618, &qword_10002C6C8, &qword_10001F450);
    swift_storeEnumTagMultiPayload();
    sub_100010658();
    v230 = v619;
    sub_10001DB60();
    sub_100004088(v229, &qword_10002C6C8, &qword_10001F450);
    sub_100003A7C(v230, v631, &qword_10002C6D0, &qword_10001F458);
    swift_storeEnumTagMultiPayload();
    sub_10001158C(&qword_10002C710, &qword_10002C6D0, &qword_10001F458, sub_100010658);
    sub_1000107B0();
    v231 = v633;
    sub_10001DB60();
    sub_100004088(v230, &qword_10002C6D0, &qword_10001F458);
    sub_100003A7C(v231, v637, &qword_10002C6D8, &qword_10001F460);
    swift_storeEnumTagMultiPayload();
    sub_1000105A0();
    sub_100010C3C();
    v232 = v639;
    sub_10001DB60();
    sub_100004088(v231, &qword_10002C6D8, &qword_10001F460);
    sub_100003A7C(v232, v642, &qword_10002C6E0, &qword_10001F468);
    swift_storeEnumTagMultiPayload();
    sub_100010514();
    sub_10001DB60();
    sub_100004088(v232, &qword_10002C6E0, &qword_10001F468);
    v233 = v228;
    goto LABEL_28;
  }

  if (v213 == enum case for WorkoutNotificationUnit.NotificationUnitType.averagePace(_:))
  {
    *v148 = sub_10001DA90();
    *(v148 + 1) = 0;
    v148[16] = 0;
    v217 = sub_100001C34(&qword_10002C848, &qword_10001F4C0);
    v218 = v634;
    sub_10001015C(&v148[*(v217 + 44)]);
    v219 = v145;
    sub_10001DBC0();
    sub_1000039E0(&qword_10002C728, &qword_10002C6E8, &qword_10001F470);
    v220 = v615;
    sub_10001DE20();
    (*(v627 + 8))(v219, v626);
    sub_100004088(v148, &qword_10002C6E8, &qword_10001F470);
    if (v218)
    {
      v221 = v218;
LABEL_18:
      (*(v624 + 32))(v199, v220, v623);
      *&v199[*(v625 + 36)] = v221;
      v226 = &qword_10002C6F8;
      v227 = &unk_10001F480;
      v242 = v614;
      sub_1000035C0(v199, v614, &qword_10002C6F8, &unk_10001F480);
      sub_100003A7C(v242, v621, &qword_10002C6F8, &unk_10001F480);
      swift_storeEnumTagMultiPayload();
      sub_100010688();

      v243 = v622;
      sub_10001DB60();
      sub_100003A7C(v243, v618, &qword_10002C6C8, &qword_10001F450);
LABEL_25:
      swift_storeEnumTagMultiPayload();
      sub_100010658();
      v251 = v619;
      sub_10001DB60();
      sub_100004088(v243, &qword_10002C6C8, &qword_10001F450);
      v252 = &qword_10002C6D0;
      v253 = &qword_10001F458;
      sub_100003A7C(v251, v631, &qword_10002C6D0, &qword_10001F458);
      swift_storeEnumTagMultiPayload();
LABEL_26:
      sub_10001158C(&qword_10002C710, &qword_10002C6D0, &qword_10001F458, sub_100010658);
      sub_1000107B0();
      v254 = v633;
      sub_10001DB60();
      sub_100004088(v251, v252, v253);
      v255 = &qword_10002C6D8;
      v256 = &qword_10001F460;
      sub_100003A7C(v254, v637, &qword_10002C6D8, &qword_10001F460);
LABEL_27:
      swift_storeEnumTagMultiPayload();
      sub_1000105A0();
      sub_100010C3C();
      v257 = v639;
      sub_10001DB60();
      sub_100004088(v254, v255, v256);
      sub_100003A7C(v257, v642, &qword_10002C6E0, &qword_10001F468);
      swift_storeEnumTagMultiPayload();
      sub_100010514();
      sub_10001DB60();
      sub_100004088(v257, &qword_10002C6E0, &qword_10001F468);
      v233 = v242;
LABEL_28:
      v258 = v226;
      v259 = v227;
LABEL_29:
      sub_100004088(v233, v258, v259);
      return;
    }

    v239 = [objc_opt_self() paceColors];
    if (v239)
    {
      v240 = v239;
      v241 = [v239 nonGradientTextColor];

      if (v241)
      {
        v221 = sub_10001DEE0();
        goto LABEL_18;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_154;
  }

  if (v213 == enum case for WorkoutNotificationUnit.NotificationUnitType.averagePower(_:))
  {
    *v148 = sub_10001DA90();
    *(v148 + 1) = 0;
    v148[16] = 0;
    v222 = sub_100001C34(&qword_10002C848, &qword_10001F4C0);
    v223 = v634;
    sub_10001015C(&v148[*(v222 + 44)]);
    sub_10001DBC0();
    sub_1000039E0(&qword_10002C728, &qword_10002C6E8, &qword_10001F470);
    v224 = v612;
    sub_10001DE20();
    (*(v627 + 8))(v145, v626);
    sub_100004088(v148, &qword_10002C6E8, &qword_10001F470);
    if (v223)
    {
      v225 = v223;
    }

    else
    {
      v248 = [objc_opt_self() powerColors];
      v249 = [v248 nonGradientTextColor];

      if (!v249)
      {
LABEL_154:
        __break(1u);
        goto LABEL_155;
      }

      v225 = sub_10001DEE0();
    }

    v250 = v611;
    (*(v624 + 32))(v611, v224, v623);
    *(v250 + *(v625 + 36)) = v225;
    v226 = &qword_10002C6F8;
    v227 = &unk_10001F480;
    v242 = v613;
    sub_1000035C0(v250, v613, &qword_10002C6F8, &unk_10001F480);
    sub_100003A7C(v242, v621, &qword_10002C6F8, &unk_10001F480);
    swift_storeEnumTagMultiPayload();
    sub_100010688();

    v243 = v622;
    sub_10001DB60();
    sub_100003A7C(v243, v618, &qword_10002C6C8, &qword_10001F450);
    goto LABEL_25;
  }

  if (v213 == enum case for WorkoutNotificationUnit.NotificationUnitType.cadence(_:))
  {
    *v148 = sub_10001DA90();
    *(v148 + 1) = 0;
    v148[16] = 0;
    v234 = sub_100001C34(&qword_10002C848, &qword_10001F4C0);
    v235 = v634;
    sub_10001015C(&v148[*(v234 + 44)]);
    v236 = v145;
    sub_10001DBC0();
    sub_1000039E0(&qword_10002C728, &qword_10002C6E8, &qword_10001F470);
    v237 = v609;
    sub_10001DE20();
    (*(v627 + 8))(v236, v626);
    sub_100004088(v148, &qword_10002C6E8, &qword_10001F470);
    if (v235)
    {
      v238 = v235;
    }

    else
    {
      v238 = sub_10001DE50();
    }

    v264 = v608;
    (*(v624 + 32))(v608, v237, v623);
    *(v264 + *(v625 + 36)) = v238;
    v265 = v610;
    sub_1000035C0(v264, v610, &qword_10002C6F8, &unk_10001F480);
    sub_100003A7C(v265, v621, &qword_10002C6F8, &unk_10001F480);
    swift_storeEnumTagMultiPayload();
    sub_100010688();

    v266 = v622;
    sub_10001DB60();
    sub_100003A7C(v266, v618, &qword_10002C6C8, &qword_10001F450);
    swift_storeEnumTagMultiPayload();
    sub_100010658();
    v267 = v619;
    sub_10001DB60();
    sub_100004088(v266, &qword_10002C6C8, &qword_10001F450);
    sub_100003A7C(v267, v631, &qword_10002C6D0, &qword_10001F458);
    swift_storeEnumTagMultiPayload();
    sub_10001158C(&qword_10002C710, &qword_10002C6D0, &qword_10001F458, sub_100010658);
    sub_1000107B0();
    v268 = v633;
    sub_10001DB60();
    sub_100004088(v267, &qword_10002C6D0, &qword_10001F458);
    sub_100003A7C(v268, v637, &qword_10002C6D8, &qword_10001F460);
    swift_storeEnumTagMultiPayload();
    sub_1000105A0();
    sub_100010C3C();
    v269 = v639;
    sub_10001DB60();
    sub_100004088(v268, &qword_10002C6D8, &qword_10001F460);
    sub_100003A7C(v269, v642, &qword_10002C6E0, &qword_10001F468);
    swift_storeEnumTagMultiPayload();
    sub_100010514();
    sub_10001DB60();
    sub_100004088(v269, &qword_10002C6E0, &qword_10001F468);
    v233 = v265;
    v258 = &qword_10002C6F8;
    v259 = &unk_10001F480;
    goto LABEL_29;
  }

  if (v213 == enum case for WorkoutNotificationUnit.NotificationUnitType.distance(_:))
  {
    *v148 = sub_10001DA90();
    *(v148 + 1) = 0;
    v148[16] = 0;
    v244 = sub_100001C34(&qword_10002C848, &qword_10001F4C0);
    v245 = v634;
    sub_10001015C(&v148[*(v244 + 44)]);
    sub_10001DBC0();
    sub_1000039E0(&qword_10002C728, &qword_10002C6E8, &qword_10001F470);
    v246 = v602;
    sub_10001DE20();
    (*(v627 + 8))(v145, v626);
    sub_100004088(v148, &qword_10002C6E8, &qword_10001F470);
    if (v245)
    {
      v247 = v245;
    }

    else
    {
      v286 = [objc_opt_self() distanceColors];
      if (!v286)
      {
LABEL_155:
        __break(1u);
        goto LABEL_156;
      }

      v287 = v286;
      v288 = [v286 nonGradientTextColor];

      if (!v288)
      {
LABEL_156:
        __break(1u);
        goto LABEL_157;
      }

      v247 = sub_10001DEE0();
    }

    v289 = v601;
    (*(v624 + 32))(v601, v246, v623);
    *(v289 + *(v625 + 36)) = v247;
    v226 = &qword_10002C6F8;
    v227 = &unk_10001F480;
    v242 = v603;
    sub_1000035C0(v289, v603, &qword_10002C6F8, &unk_10001F480);
    sub_100003A7C(v242, v621, &qword_10002C6F8, &unk_10001F480);
LABEL_53:
    swift_storeEnumTagMultiPayload();
    sub_100010688();

    v317 = v622;
    sub_10001DB60();
    sub_100003A7C(v317, v605, &qword_10002C6C8, &qword_10001F450);
    swift_storeEnumTagMultiPayload();
    sub_100010658();
    sub_10001083C();
    v251 = v607;
    sub_10001DB60();
    sub_100004088(v317, &qword_10002C6C8, &qword_10001F450);
    v252 = &qword_10002C698;
    v253 = &qword_10001F420;
    sub_100003A7C(v251, v631, &qword_10002C698, &qword_10001F420);
    swift_storeEnumTagMultiPayload();
    goto LABEL_26;
  }

  if (v213 == enum case for WorkoutNotificationUnit.NotificationUnitType.energy(_:))
  {
    *v148 = sub_10001DA90();
    *(v148 + 1) = 0;
    v148[16] = 0;
    v260 = sub_100001C34(&qword_10002C848, &qword_10001F4C0);
    v261 = v634;
    sub_10001015C(&v148[*(v260 + 44)]);
    sub_10001DBC0();
    sub_1000039E0(&qword_10002C728, &qword_10002C6E8, &qword_10001F470);
    v262 = v599;
    sub_10001DE20();
    (*(v627 + 8))(v145, v626);
    sub_100004088(v148, &qword_10002C6E8, &qword_10001F470);
    if (v261)
    {
      v263 = v261;
    }

    else
    {
      v313 = [objc_opt_self() energyColors];
      if (!v313)
      {
LABEL_157:
        __break(1u);
        goto LABEL_158;
      }

      v314 = v313;
      v315 = [v313 nonGradientTextColor];

      if (!v315)
      {
LABEL_158:
        __break(1u);
        goto LABEL_159;
      }

      v263 = sub_10001DEE0();
    }

    v316 = v598;
    (*(v624 + 32))(v598, v262, v623);
    *(v316 + *(v625 + 36)) = v263;
    v226 = &qword_10002C6F8;
    v227 = &unk_10001F480;
    v242 = v600;
    sub_1000035C0(v316, v600, &qword_10002C6F8, &unk_10001F480);
    sub_100003A7C(v242, v621, &qword_10002C6F8, &unk_10001F480);
    goto LABEL_53;
  }

  if (v213 == enum case for WorkoutNotificationUnit.NotificationUnitType.heading(_:))
  {
    sub_10001D7A0();
    if (v270)
    {
      v271 = v587;
      v272 = v586;
      v273 = v588;
      (*(v587 + 104))(v586, enum case for LocalizationFeature.workout(_:), v588);
      v274 = sub_10001E0B0();
      v276 = v275;

      (*(v271 + 8))(v272, v273);
      *&v655[0] = v274;
      *(&v655[0] + 1) = v276;
      sub_100003A28();
      v277 = sub_10001E220();
      v279 = v278;

      *&v655[0] = v277;
      *(&v655[0] + 1) = v279;
      v280 = sub_10001DD40();
      v282 = v281;
      v284 = v283;
      if (v634)
      {
        v285 = v634;
      }

      else
      {
        v285 = sub_10001DE90();
      }

      *&v655[0] = v285;

      v326 = sub_10001DD00();
      v328 = v327;
      v330 = v329;
      sub_100003470(v280, v282, v284 & 1);

      sub_10001DC90();
      v331 = v579;
      sub_10001DC50();
      sub_10001DCC0();
      (*(v580 + 8))(v331, v581);
      v332 = sub_10001DD20();
      v334 = v333;
      v336 = v335;
      v338 = v337;

      sub_100003470(v326, v328, v330 & 1);

      v339 = sub_10001DC00();
      FIUICurrentLanguageRequiresTallScript();
      sub_10001D900();
      v341 = v340;
      v343 = v342;
      v345 = v344;
      v347 = v346;
      v658 = v336 & 1;
      v657 = 0;
      LOBYTE(v326) = sub_10001DC10();
      sub_10001D900();
      v349 = v348;
      v351 = v350;
      v353 = v352;
      v355 = v354;
      v659 = 0;
      LOBYTE(v328) = sub_10001DC20();
      sub_10001D900();
      LOBYTE(v660) = 0;
      *&v645 = v332;
      *(&v645 + 1) = v334;
      LOBYTE(v646) = v336 & 1;
      *(&v646 + 1) = v338;
      LOBYTE(v647) = v339;
      *(&v647 + 1) = v341;
      *&v648 = v343;
      *(&v648 + 1) = v345;
      *&v649 = v347;
      BYTE8(v649) = 0;
      LOBYTE(v650) = v326;
      *(&v650 + 1) = v349;
      *&v651 = v351;
      *(&v651 + 1) = v353;
      *&v652 = v355;
      BYTE8(v652) = 0;
      LOBYTE(v653) = v328;
      *(&v653 + 1) = v356;
      *&v654[0] = v357;
      *(&v654[0] + 1) = v358;
      *&v654[1] = v359;
      BYTE8(v654[1]) = 0;
      v360 = v583;
      sub_10001DB20();
      sub_100001C34(&qword_10002C758, &qword_10001F490);
      sub_100010A50(&qword_10002C750, &qword_10002C758, &qword_10001F490, sub_100010A20);
      v361 = v582;
      sub_10001DE30();
      (*(v584 + 8))(v360, v585);
      v655[8] = v653;
      v656[0] = v654[0];
      *(v656 + 9) = *(v654 + 9);
      v655[4] = v649;
      v655[5] = v650;
      v655[7] = v652;
      v655[6] = v651;
      v655[0] = v645;
      v655[1] = v646;
      v655[3] = v648;
      v655[2] = v647;
      sub_100004088(v655, &qword_10002C758, &qword_10001F490);
      v321 = v591;
      sub_1000035C0(v361, v591, &qword_10002C680, &qword_10001F408);
      (*(v589 + 56))(v321, 0, 1, v590);
    }

    else
    {
      v321 = v591;
      (*(v589 + 56))(v591, 1, 1, v590);
    }

    v362 = &qword_10002C688;
    v363 = &qword_10001F410;
    sub_100003A7C(v321, v594, &qword_10002C688, &qword_10001F410);
    swift_storeEnumTagMultiPayload();
    sub_1000112C0(&qword_10002C740, &qword_10002C688, &qword_10001F410, sub_100010938);
    v364 = sub_100010B58();
    *&v655[0] = v595;
    *(&v655[0] + 1) = v364;
    swift_getOpaqueTypeConformance2();
    v365 = v596;
    sub_10001DB60();
    sub_100003A7C(v365, v605, &qword_10002C678, &qword_10001F400);
    swift_storeEnumTagMultiPayload();
    sub_100010658();
    sub_10001083C();
    v366 = v607;
    sub_10001DB60();
    sub_100004088(v365, &qword_10002C678, &qword_10001F400);
    sub_100003A7C(v366, v631, &qword_10002C698, &qword_10001F420);
    swift_storeEnumTagMultiPayload();
    sub_10001158C(&qword_10002C710, &qword_10002C6D0, &qword_10001F458, sub_100010658);
    sub_1000107B0();
    v367 = v633;
    sub_10001DB60();
    sub_100004088(v366, &qword_10002C698, &qword_10001F420);
    v368 = &qword_10002C6D8;
    v369 = &qword_10001F460;
    sub_100003A7C(v367, v637, &qword_10002C6D8, &qword_10001F460);
    goto LABEL_67;
  }

  if (v213 == enum case for WorkoutNotificationUnit.NotificationUnitType.heartRate(_:))
  {
    v290 = sub_10001DA90();
    v291 = v575;
    *v575 = v290;
    *(v291 + 8) = 0;
    *(v291 + 16) = 0;
    v292 = sub_100001C34(&qword_10002C850, &qword_10001F4C8);
    v293 = v634;
    sub_10000FB74(v634, (v291 + *(v292 + 44)));
    v294 = v293;
    v295 = v627;
    v296 = v626;
    v297 = v145;
    if (!v293)
    {
      v298 = [objc_opt_self() heartRateColors];
      if (!v298)
      {
LABEL_162:
        __break(1u);
        goto LABEL_163;
      }

      v299 = v298;
      v300 = [v298 nonGradientTextColor];

      if (!v300)
      {
LABEL_163:
        __break(1u);
        goto LABEL_164;
      }

      v294 = sub_10001DEE0();
    }

    KeyPath = swift_getKeyPath();
    v302 = v576;
    sub_1000035C0(v291, v576, &qword_10002C658, &qword_10001F3E0);
    v303 = v595;
    v304 = (v302 + *(v595 + 36));
    *v304 = KeyPath;
    v304[1] = v294;

    sub_10001DBC0();
    v305 = sub_100010B58();
    v306 = v577;
    sub_10001DE20();
    (*(v295 + 8))(v297, v296);
    sub_100004088(v302, &qword_10002C660, &qword_10001F3E8);
    v307 = v578;
    v308 = v597;
    (*(v578 + 16))(v594, v306, v597);
    swift_storeEnumTagMultiPayload();
    sub_1000112C0(&qword_10002C740, &qword_10002C688, &qword_10001F410, sub_100010938);
    *&v655[0] = v303;
    *(&v655[0] + 1) = v305;
    swift_getOpaqueTypeConformance2();
    v309 = v596;
    sub_10001DB60();
    sub_100003A7C(v309, v605, &qword_10002C678, &qword_10001F400);
    swift_storeEnumTagMultiPayload();
    sub_100010658();
    sub_10001083C();
    v310 = v607;
    sub_10001DB60();
    sub_100004088(v309, &qword_10002C678, &qword_10001F400);
    sub_100003A7C(v310, v631, &qword_10002C698, &qword_10001F420);
    swift_storeEnumTagMultiPayload();
    sub_10001158C(&qword_10002C710, &qword_10002C6D0, &qword_10001F458, sub_100010658);
    sub_1000107B0();
    v311 = v633;
    sub_10001DB60();
    sub_100004088(v310, &qword_10002C698, &qword_10001F420);
    sub_100003A7C(v311, v637, &qword_10002C6D8, &qword_10001F460);
    swift_storeEnumTagMultiPayload();
    sub_1000105A0();
    sub_100010C3C();
    v312 = v639;
    sub_10001DB60();
    sub_100004088(v311, &qword_10002C6D8, &qword_10001F460);
    sub_100003A7C(v312, v642, &qword_10002C6E0, &qword_10001F468);
    swift_storeEnumTagMultiPayload();
    sub_100010514();
    sub_10001DB60();
    sub_100004088(v312, &qword_10002C6E0, &qword_10001F468);
    (*(v307 + 8))(v306, v308);
    return;
  }

  if (v213 == enum case for WorkoutNotificationUnit.NotificationUnitType.image(_:))
  {
    sub_10001D7A0();
    if (v318)
    {
      v319 = sub_10001DF00();
      v242 = v560;
      if (v634)
      {
        v320 = v634;
      }

      else
      {
        v320 = sub_10001DE90();
      }

      *&v655[0] = v319;
      *(&v655[0] + 1) = v320;

      sub_100001C34(&qword_10002C7C0, &qword_10001F4B0);
      sub_100010EA0();
      v381 = v557;
      sub_10001DD70();

      v377 = v558;
      v376 = v559;
      (*(v558 + 32))(v242, v381, v559);
      v375 = 0;
    }

    else
    {
      v375 = 1;
      v242 = v560;
      v376 = v559;
      v377 = v558;
    }

    (*(v377 + 56))(v242, v375, 1, v376);
    v226 = &qword_10002C650;
    v227 = &qword_10001F3D8;
    sub_100003A7C(v242, v563, &qword_10002C650, &qword_10001F3D8);
    swift_storeEnumTagMultiPayload();
    sub_100010DE0();
    sub_100010688();
    v382 = v564;
LABEL_81:
    sub_10001DB60();
    v387 = &qword_10002C630;
    v388 = &qword_10001F3B8;
    sub_100003A7C(v382, v567, &qword_10002C630, &qword_10001F3B8);
LABEL_82:
    swift_storeEnumTagMultiPayload();
    sub_100010D54();
    sub_100010F58();
    v389 = v569;
    sub_10001DB60();
    sub_100004088(v382, v387, v388);
    v390 = &qword_10002C638;
    v391 = &qword_10001F3C0;
    sub_100003A7C(v389, v572, &qword_10002C638, &qword_10001F3C0);
LABEL_83:
    swift_storeEnumTagMultiPayload();
    sub_100010CC8();
    sub_10001117C();
    v254 = v573;
    sub_10001DB60();
    sub_100004088(v389, v390, v391);
    v255 = &qword_10002C640;
    v256 = &qword_10001F3C8;
    sub_100003A7C(v254, v637, &qword_10002C640, &qword_10001F3C8);
    goto LABEL_27;
  }

  if (v213 == enum case for WorkoutNotificationUnit.NotificationUnitType.pace(_:) || v213 == enum case for WorkoutNotificationUnit.NotificationUnitType.paceWithoutGPS(_:))
  {
    *v148 = sub_10001DA90();
    *(v148 + 1) = 0;
    v148[16] = 0;
    v371 = sub_100001C34(&qword_10002C848, &qword_10001F4C0);
    v372 = v634;
    sub_10001015C(&v148[*(v371 + 44)]);
    sub_10001DBC0();
    sub_1000039E0(&qword_10002C728, &qword_10002C6E8, &qword_10001F470);
    v373 = v555;
    sub_10001DE20();
    (*(v627 + 8))(v145, v626);
    sub_100004088(v148, &qword_10002C6E8, &qword_10001F470);
    if (v372)
    {
      v374 = v372;
    }

    else
    {
      v383 = [objc_opt_self() paceColors];
      if (!v383)
      {
LABEL_167:
        __break(1u);
        goto LABEL_168;
      }

      v384 = v383;
      v385 = [v383 nonGradientTextColor];

      if (!v385)
      {
LABEL_168:
        __break(1u);
        goto LABEL_169;
      }

      v374 = sub_10001DEE0();
    }

    v386 = v554;
    (*(v624 + 32))(v554, v373, v623);
    *(v386 + *(v625 + 36)) = v374;
    v226 = &qword_10002C6F8;
    v227 = &unk_10001F480;
    v242 = v556;
    sub_1000035C0(v386, v556, &qword_10002C6F8, &unk_10001F480);
    sub_100003A7C(v242, v563, &qword_10002C6F8, &unk_10001F480);
    swift_storeEnumTagMultiPayload();
    sub_100010DE0();
    sub_100010688();

    v382 = v564;
    goto LABEL_81;
  }

  if (v213 == enum case for WorkoutNotificationUnit.NotificationUnitType.power(_:))
  {
    *v148 = sub_10001DA90();
    *(v148 + 1) = 0;
    v148[16] = 0;
    v322 = sub_100001C34(&qword_10002C848, &qword_10001F4C0);
    v323 = v634;
    sub_10001015C(&v148[*(v322 + 44)]);
    sub_10001DBC0();
    sub_1000039E0(&qword_10002C728, &qword_10002C6E8, &qword_10001F470);
    v324 = v548;
    sub_10001DE20();
    (*(v627 + 8))(v145, v626);
    sub_100004088(v148, &qword_10002C6E8, &qword_10001F470);
    if (v323)
    {
      v325 = v323;
    }

    else
    {
      v395 = [objc_opt_self() powerColors];
      v396 = [v395 nonGradientTextColor];

      if (!v396)
      {
LABEL_169:
        __break(1u);
        goto LABEL_170;
      }

      v325 = sub_10001DEE0();
    }

    v397 = v547;
    (*(v624 + 32))(v547, v324, v623);
    *(v397 + *(v625 + 36)) = v325;
    v226 = &qword_10002C6F8;
    v227 = &unk_10001F480;
    v242 = v549;
    sub_1000035C0(v397, v549, &qword_10002C6F8, &unk_10001F480);
    sub_100003A7C(v242, v551, &qword_10002C6F8, &unk_10001F480);
    swift_storeEnumTagMultiPayload();
    sub_100010688();
    sub_100010FE4();

    v382 = v553;
    sub_10001DB60();
    v387 = &qword_10002C610;
    v388 = &qword_10001F398;
    sub_100003A7C(v382, v567, &qword_10002C610, &qword_10001F398);
    goto LABEL_82;
  }

  if (v213 == enum case for WorkoutNotificationUnit.NotificationUnitType.raceTime(_:))
  {
    v378 = sub_10001D7D0();
    if (v379)
    {
      v380 = 1;
      v321 = v546;
    }

    else
    {
      v398 = *&v378;
      sub_10001E320();
      v400 = v524;
      v399 = v525;
      v401 = v519;
      (*(v524 + 104))(v519, enum case for FloatingPointRoundingRule.toNearestOrEven(_:), v525);
      v402 = v517;
      sub_10001E2E0();
      (*(v400 + 8))(v401, v399);
      v403 = v518;
      sub_10001D650();
      (*(v520 + 8))(v402, v521);
      sub_1000116D8(&qword_10002C290, &type metadata accessor for Duration.TimeFormatStyle);
      v404 = v523;
      sub_10001E310();
      (*(v522 + 8))(v403, v404);
      sub_10001D7A0();
      if (v405)
      {
        v406 = v587;
        v407 = v586;
        v408 = v588;
        (*(v587 + 104))(v586, enum case for LocalizationFeature.workout(_:), v588);
        sub_10001E0B0();

        (*(v406 + 8))(v407, v408);
        sub_10001E090();
        if (v634)
        {
          v409 = v634;
        }

        else
        {
          sub_10001D740();
          sub_10001D730();
          v409 = sub_10001DEE0();
        }

        v428 = v510;
        (*(v526 + 32))(v510, v533, v527);
        *(v428 + *(v529 + 36)) = v409;
        v429 = v511;
        sub_1000035C0(v428, v511, &qword_10002C5F0, &qword_10001F378);
        sub_100003A7C(v429, v531, &qword_10002C5F0, &qword_10001F378);
        swift_storeEnumTagMultiPayload();
        sub_100011094();

        v430 = v528;
      }

      else
      {
        sub_10001E090();
        sub_10001D740();
        if (v398 >= 0.0)
        {
          sub_10001D720();
        }

        else
        {
          sub_10001D710();
        }

        v431 = sub_10001DEE0();
        v432 = v500;
        (*(v526 + 32))(v500, v514, v527);
        *(v432 + *(v529 + 36)) = v431;
        v429 = v501;
        sub_1000035C0(v432, v501, &qword_10002C5F0, &qword_10001F378);
        sub_100003A7C(v429, v531, &qword_10002C5F0, &qword_10001F378);
        swift_storeEnumTagMultiPayload();
        sub_100011094();
        v430 = v528;
      }

      sub_10001DB60();
      sub_100004088(v429, &qword_10002C5F0, &qword_10001F378);
      v321 = v546;
      sub_1000035C0(v430, v546, &qword_10002C5F8, &qword_10001F380);
      v380 = 0;
    }

    (*(v544 + 56))(v321, v380, 1, v545);
    v362 = &qword_10002C600;
    v363 = &qword_10001F388;
    sub_100003A7C(v321, v551, &qword_10002C600, &qword_10001F388);
    swift_storeEnumTagMultiPayload();
    sub_100010688();
    sub_100010FE4();
    v433 = v553;
    sub_10001DB60();
    sub_100003A7C(v433, v567, &qword_10002C610, &qword_10001F398);
    swift_storeEnumTagMultiPayload();
    sub_100010D54();
    sub_100010F58();
    v434 = v569;
    sub_10001DB60();
    sub_100004088(v433, &qword_10002C610, &qword_10001F398);
    v435 = &qword_10002C638;
    v436 = &qword_10001F3C0;
    sub_100003A7C(v434, v572, &qword_10002C638, &qword_10001F3C0);
    goto LABEL_127;
  }

  if (v213 == enum case for WorkoutNotificationUnit.NotificationUnitType.rollingPace(_:))
  {
    *v148 = sub_10001DA90();
    *(v148 + 1) = 0;
    v148[16] = 0;
    v392 = sub_100001C34(&qword_10002C848, &qword_10001F4C0);
    v393 = v634;
    sub_10001015C(&v148[*(v392 + 44)]);
    sub_10001DBC0();
    sub_1000039E0(&qword_10002C728, &qword_10002C6E8, &qword_10001F470);
    sub_10001DE20();
    (*(v627 + 8))(v145, v626);
    sub_100004088(v148, &qword_10002C6E8, &qword_10001F470);
    if (v393)
    {
      v394 = v393;
    }

    else
    {
      v419 = [objc_opt_self() paceColors];
      if (!v419)
      {
LABEL_170:
        __break(1u);
        goto LABEL_171;
      }

      v420 = v419;
      v421 = [v419 nonGradientTextColor];

      if (!v421)
      {
LABEL_171:
        __break(1u);
        goto LABEL_172;
      }

      v394 = sub_10001DEE0();
    }

    v422 = v515;
    (*(v624 + 32))(v515, v543, v623);
    *(v422 + *(v625 + 36)) = v394;
    v226 = &qword_10002C6F8;
    v227 = &unk_10001F480;
    v242 = v516;
    sub_1000035C0(v422, v516, &qword_10002C6F8, &unk_10001F480);
    sub_100003A7C(v242, v535, &qword_10002C6F8, &unk_10001F480);
    swift_storeEnumTagMultiPayload();
    sub_100010688();
    sub_1000112C0(&qword_10002C808, &qword_10002C5C0, &qword_10001F348, sub_10001133C);

    v423 = v536;
    sub_10001DB60();
    v424 = &qword_10002C5D8;
    v425 = &qword_10001F360;
    sub_100003A7C(v423, v540, &qword_10002C5D8, &qword_10001F360);
    goto LABEL_104;
  }

  if (v213 == enum case for WorkoutNotificationUnit.NotificationUnitType.split(_:))
  {
    sub_10001D7D0();
    if (v410)
    {
      (*(v512 + 56))(v532, 1, 1, v513);
    }

    else
    {
      sub_10001E0C0();
      if (v634)
      {
        v426 = v634;
      }

      else
      {
        v444 = [objc_opt_self() splitsColors];
        v445 = [v444 nonGradientTextColor];

        if (!v445)
        {
LABEL_172:
          __break(1u);
          goto LABEL_173;
        }

        v426 = sub_10001DEE0();
      }

      v446 = v495;
      (*(v497 + 32))(v495, v509, v498);
      v447 = v513;
      *&v446[*(v513 + 36)] = v426;
      v448 = v446;
      v449 = v494;
      sub_1000035C0(v448, v494, &qword_10002C5B8, &qword_10001F340);
      v450 = v449;
      v451 = v532;
      sub_1000035C0(v450, v532, &qword_10002C5B8, &qword_10001F340);
      (*(v512 + 56))(v451, 0, 1, v447);
    }

    v362 = &qword_10002C5C0;
    v363 = &qword_10001F348;
    v321 = v532;
    sub_100003A7C(v532, v535, &qword_10002C5C0, &qword_10001F348);
    swift_storeEnumTagMultiPayload();
    sub_100010688();
    sub_1000112C0(&qword_10002C808, &qword_10002C5C0, &qword_10001F348, sub_10001133C);
    v452 = v536;
    sub_10001DB60();
    v453 = &qword_10002C5D8;
    v454 = &qword_10001F360;
    sub_100003A7C(v452, v540, &qword_10002C5D8, &qword_10001F360);
    goto LABEL_126;
  }

  if (v213 == enum case for WorkoutNotificationUnit.NotificationUnitType.string(_:))
  {
    sub_10001D7A0();
    if (v411)
    {
      v412 = v587;
      v413 = v586;
      v414 = v588;
      (*(v587 + 104))(v586, enum case for LocalizationFeature.workout(_:), v588);
      v415 = sub_10001E0B0();
      v417 = v416;

      (*(v412 + 8))(v413, v414);
      *&v655[0] = v415;
      *(&v655[0] + 1) = v417;
      *&v645 = 10;
      *(&v645 + 1) = 0xE100000000000000;
      v660 = 32;
      v661 = 0xE100000000000000;
      sub_100003A28();
      sub_10001E230();

      sub_10001E070();

      if (v634)
      {
        v418 = v634;
      }

      else
      {
        v456 = sub_10001D7D0();
        v457 = *&v456;
        if (v458)
        {
          v457 = 16777215.0;
        }

        else if ((v456 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
LABEL_159:
          __break(1u);
          goto LABEL_160;
        }

        if (v457 <= -1.0)
        {
LABEL_160:
          __break(1u);
          goto LABEL_161;
        }

        if (v457 >= 4294967300.0)
        {
LABEL_161:
          __break(1u);
          goto LABEL_162;
        }

        v418 = sub_10001DE50();
      }

      v459 = v489;
      (*(v490 + 32))(v489, v499, v491);
      v460 = v506;
      *(v459 + *(v507 + 36)) = v418;
      sub_1000035C0(v459, v460, &qword_10002C5A8, &qword_10001F330);
    }

    else
    {
      sub_10001D790();
      if (!v442)
      {
        v461 = 1;
LABEL_151:
        v478 = sub_100001C34(&qword_10002C838, &qword_10001F4B8);
        v242 = v508;
        (*(*(v478 - 8) + 56))(v508, v461, 1, v478);
        v226 = &qword_10002C5B0;
        v227 = &qword_10001F338;
        sub_100003A7C(v242, v504, &qword_10002C5B0, &qword_10001F338);
        swift_storeEnumTagMultiPayload();
        sub_1000114DC();
        sub_1000112C0(&qword_10002C808, &qword_10002C5C0, &qword_10001F348, sub_10001133C);
        v423 = v505;
        sub_10001DB60();
        v424 = &qword_10002C590;
        v425 = &qword_10001F318;
        sub_100003A7C(v423, v540, &qword_10002C590, &qword_10001F318);
LABEL_104:
        swift_storeEnumTagMultiPayload();
        sub_100011208();
        sub_100011424();
        v389 = v541;
        sub_10001DB60();
        sub_100004088(v423, v424, v425);
        v390 = &qword_10002C5E0;
        v391 = &qword_10001F368;
        sub_100003A7C(v389, v572, &qword_10002C5E0, &qword_10001F368);
        goto LABEL_83;
      }

      sub_10001E070();

      if (v634)
      {
        v443 = v634;
      }

      else
      {
        v471 = sub_10001D7D0();
        v472 = *&v471;
        if (v473)
        {
          v472 = 16777215.0;
        }

        else if ((v471 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
LABEL_164:
          __break(1u);
          goto LABEL_165;
        }

        if (v472 <= -1.0)
        {
LABEL_165:
          __break(1u);
          goto LABEL_166;
        }

        if (v472 >= 4294967300.0)
        {
LABEL_166:
          __break(1u);
          goto LABEL_167;
        }

        v443 = sub_10001DE50();
      }

      v474 = v480;
      (*(v490 + 32))(v480, v484, v491);
      *&v474[*(v507 + 36)] = v443;
      v475 = v474;
      v476 = v481;
      sub_1000035C0(v475, v481, &qword_10002C5A8, &qword_10001F330);
      v506 = v476;
    }

    v477 = v506;
    sub_100003A7C(v506, v493, &qword_10002C5A8, &qword_10001F330);
    swift_storeEnumTagMultiPayload();
    sub_100011608();

    sub_10001DB60();
    sub_100004088(v477, &qword_10002C5A8, &qword_10001F330);
    v461 = 0;
    goto LABEL_151;
  }

  if (v213 != enum case for WorkoutNotificationUnit.NotificationUnitType.time(_:))
  {
    sub_10001DAD0();
    v662._object = 0x8000000100025A80;
    v662._countAndFlagsBits = 0xD000000000000021;
    sub_10001DAC0(v662);
    sub_10001D7C0();
    v663._countAndFlagsBits = sub_10001E160();
    sub_10001DAB0(v663);

    v664._countAndFlagsBits = 0;
    v664._object = 0xE000000000000000;
    sub_10001DAC0(v664);
    sub_10001DB00();
    v437 = sub_10001DD30();
    v438 = v642;
    *v642 = v437;
    v438[1] = v439;
    *(v438 + 16) = v440 & 1;
    v438[3] = v441;
    swift_storeEnumTagMultiPayload();
    sub_100010514();
    sub_10001DB60();
    (*(v486 + 8))(v212, v206);
    return;
  }

  sub_10001D7D0();
  if (v427)
  {
    (*(v512 + 56))(v496, 1, 1, v513);
LABEL_142:
    v362 = &qword_10002C5C0;
    v363 = &qword_10001F348;
    v321 = v496;
    sub_100003A7C(v496, v504, &qword_10002C5C0, &qword_10001F348);
    swift_storeEnumTagMultiPayload();
    sub_1000114DC();
    sub_1000112C0(&qword_10002C808, &qword_10002C5C0, &qword_10001F348, sub_10001133C);
    v452 = v505;
    sub_10001DB60();
    v453 = &qword_10002C590;
    v454 = &qword_10001F318;
    sub_100003A7C(v452, v540, &qword_10002C590, &qword_10001F318);
LABEL_126:
    swift_storeEnumTagMultiPayload();
    sub_100011208();
    sub_100011424();
    v434 = v541;
    sub_10001DB60();
    sub_100004088(v452, v453, v454);
    v435 = &qword_10002C5E0;
    v436 = &qword_10001F368;
    sub_100003A7C(v434, v572, &qword_10002C5E0, &qword_10001F368);
LABEL_127:
    swift_storeEnumTagMultiPayload();
    sub_100010CC8();
    sub_10001117C();
    v367 = v573;
    sub_10001DB60();
    sub_100004088(v434, v435, v436);
    v368 = &qword_10002C640;
    v369 = &qword_10001F3C8;
    sub_100003A7C(v367, v637, &qword_10002C640, &qword_10001F3C8);
LABEL_67:
    swift_storeEnumTagMultiPayload();
    sub_1000105A0();
    sub_100010C3C();
    v370 = v639;
    sub_10001DB60();
    sub_100004088(v367, v368, v369);
    sub_100003A7C(v370, v642, &qword_10002C6E0, &qword_10001F468);
    swift_storeEnumTagMultiPayload();
    sub_100010514();
    sub_10001DB60();
    sub_100004088(v370, &qword_10002C6E0, &qword_10001F468);
    sub_100004088(v321, v362, v363);
    return;
  }

  sub_10001E0C0();
  if (v634)
  {
    v455 = v634;
LABEL_141:
    v465 = v483;
    (*(v497 + 32))(v483, v487, v498);
    v466 = v513;
    *&v465[*(v513 + 36)] = v455;
    v467 = v465;
    v468 = v482;
    sub_1000035C0(v467, v482, &qword_10002C5B8, &qword_10001F340);
    v469 = v468;
    v470 = v496;
    sub_1000035C0(v469, v496, &qword_10002C5B8, &qword_10001F340);
    (*(v512 + 56))(v470, 0, 1, v466);

    goto LABEL_142;
  }

  v462 = [objc_opt_self() elapsedTimeColors];
  if (!v462)
  {
LABEL_173:
    __break(1u);
    goto LABEL_174;
  }

  v463 = v462;
  v464 = [v462 nonGradientTextColor];

  if (v464)
  {
    v455 = sub_10001DEE0();
    goto LABEL_141;
  }

LABEL_174:
  __break(1u);
}

void sub_10000FB74(uint64_t a1@<X1>, char *a2@<X8>)
{
  v66 = a2;
  v61 = sub_10001E110();
  v59 = *(v61 - 8);
  v3 = *(v59 + 64);
  __chkstk_darwin(v61);
  v56 = v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10001DC60();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100001C34(&qword_10002C858, &qword_10001F500);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v65 = v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v64 = v55 - v14;
  v62 = sub_100001C34(&qword_10002C860, &qword_10001F508);
  v60 = *(v62 - 8);
  v15 = *(v60 + 64);
  v16 = __chkstk_darwin(v62);
  v63 = v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = v55 - v18;
  v20 = sub_10001D7A0();
  if (v21)
  {
    v22 = v20;
  }

  else
  {
    v22 = 0;
  }

  v23 = 0xE000000000000000;
  if (v21)
  {
    v23 = v21;
  }

  v69 = v22;
  v70 = v23;
  v57 = sub_100003A28();
  v24 = sub_10001DD40();
  v26 = v25;
  v69 = v24;
  v70 = v25;
  v28 = v27 & 1;
  LOBYTE(v71) = v27 & 1;
  v72 = v29;
  v58 = v19;
  sub_10001DD70();
  sub_100003470(v24, v26, v28);

  v30 = sub_10001DF00();
  sub_10001E0E0();
  sub_10001DCB0();
  sub_10001DC40();
  v31 = sub_10001DCC0();
  (*(v6 + 8))(v9, v5);
  KeyPath = swift_getKeyPath();
  v33 = swift_getKeyPath();
  if (a1)
  {
    v34 = a1;
LABEL_11:
    v69 = v30;
    v70 = KeyPath;
    v71 = v31;
    v72 = v33;
    v73 = 0x3FE0000000000000;
    v74 = v34;
    v38 = v59;
    v39 = *(v59 + 104);
    v40 = v56;
    v55[1] = v30;
    v41 = v61;
    v39(v56, enum case for LocalizationFeature.workout(_:), v61);

    v42 = sub_10001E0B0();
    v44 = v43;
    (*(v38 + 8))(v40, v41);
    v67 = v42;
    v68 = v44;
    sub_100001C34(&qword_10002C868, &qword_10001F570);
    sub_100011784();
    v45 = v64;
    sub_10001DE00();

    v46 = v60;
    v47 = *(v60 + 16);
    v48 = v62;
    v49 = v63;
    v50 = v58;
    v47(v63, v58, v62);
    v51 = v65;
    sub_100003A7C(v45, v65, &qword_10002C858, &qword_10001F500);
    v52 = v66;
    v47(v66, v49, v48);
    v53 = sub_100001C34(&qword_10002C8B8, &qword_10001F598);
    sub_100003A7C(v51, &v52[*(v53 + 48)], &qword_10002C858, &qword_10001F500);
    sub_100004088(v45, &qword_10002C858, &qword_10001F500);
    v54 = *(v46 + 8);
    v54(v50, v48);
    sub_100004088(v51, &qword_10002C858, &qword_10001F500);
    v54(v49, v48);
    return;
  }

  v35 = [objc_opt_self() heartRateColors];
  if (v35)
  {
    v36 = v35;
    v37 = [v35 nonGradientTextColor];

    if (v37)
    {
      v34 = sub_10001DEE0();
      goto LABEL_11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_10001015C@<X0>(char *a1@<X8>)
{
  v53 = a1;
  v52 = sub_100001C34(&qword_10002C8C0, &qword_10001F5A0);
  v50 = *(v52 - 8);
  v1 = *(v50 + 64);
  v2 = __chkstk_darwin(v52);
  v51 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v54 = &v45 - v4;
  v49 = sub_100001C34(&qword_10002C860, &qword_10001F508);
  v5 = *(v49 - 8);
  v47 = v5;
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v49);
  v48 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v45 - v9;
  v11 = sub_10001D7A0();
  if (v12)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  v14 = 0xE000000000000000;
  if (v12)
  {
    v14 = v12;
  }

  v55 = v13;
  v56 = v14;
  sub_100003A28();
  v15 = sub_10001DD40();
  v17 = v16;
  v55 = v15;
  v56 = v16;
  v19 = v18 & 1;
  v57 = v18 & 1;
  v58 = v20;
  v46 = v10;
  sub_10001DD70();
  sub_100003470(v15, v17, v19);

  v21 = sub_10001D790();
  if (v22)
  {
    v23 = v21;
  }

  else
  {
    v23 = 0;
  }

  v24 = 0xE000000000000000;
  if (v22)
  {
    v24 = v22;
  }

  v55 = v23;
  v56 = v24;
  v25 = sub_10001DD40();
  v27 = v26;
  v55 = v25;
  v56 = v26;
  v29 = v28 & 1;
  v57 = v28 & 1;
  v58 = v30;
  v31 = v54;
  sub_10001DD60();
  sub_100003470(v25, v27, v29);

  v32 = *(v5 + 16);
  v33 = v48;
  v34 = v10;
  v35 = v49;
  v32(v48, v34, v49);
  v37 = v50;
  v36 = v51;
  v38 = *(v50 + 16);
  v39 = v52;
  v38(v51, v31, v52);
  v40 = v53;
  v32(v53, v33, v35);
  v41 = sub_100001C34(&qword_10002C8C8, &qword_10001F5A8);
  v38(&v40[*(v41 + 48)], v36, v39);
  v42 = *(v37 + 8);
  v42(v54, v39);
  v43 = *(v47 + 8);
  v43(v46, v35);
  v42(v36, v39);
  return (v43)(v33, v35);
}

unint64_t sub_100010514()
{
  result = qword_10002C700;
  if (!qword_10002C700)
  {
    sub_1000036E4(&qword_10002C6E0, &qword_10001F468);
    sub_1000105A0();
    sub_100010C3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C700);
  }

  return result;
}

unint64_t sub_1000105A0()
{
  result = qword_10002C708;
  if (!qword_10002C708)
  {
    sub_1000036E4(&qword_10002C6D8, &qword_10001F460);
    sub_10001158C(&qword_10002C710, &qword_10002C6D0, &qword_10001F458, sub_100010658);
    sub_1000107B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C708);
  }

  return result;
}

unint64_t sub_100010688()
{
  result = qword_10002C720;
  if (!qword_10002C720)
  {
    sub_1000036E4(&qword_10002C6F8, &unk_10001F480);
    sub_1000036E4(&qword_10002C6E8, &qword_10001F470);
    sub_1000039E0(&qword_10002C728, &qword_10002C6E8, &qword_10001F470);
    swift_getOpaqueTypeConformance2();
    sub_1000039E0(&qword_10002C270, &qword_10002C278, &unk_10001F900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C720);
  }

  return result;
}

unint64_t sub_1000107B0()
{
  result = qword_10002C730;
  if (!qword_10002C730)
  {
    sub_1000036E4(&qword_10002C698, &qword_10001F420);
    sub_100010658();
    sub_10001083C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C730);
  }

  return result;
}

unint64_t sub_10001083C()
{
  result = qword_10002C738;
  if (!qword_10002C738)
  {
    sub_1000036E4(&qword_10002C678, &qword_10001F400);
    sub_1000112C0(&qword_10002C740, &qword_10002C688, &qword_10001F410, sub_100010938);
    sub_1000036E4(&qword_10002C660, &qword_10001F3E8);
    sub_100010B58();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C738);
  }

  return result;
}

unint64_t sub_100010938()
{
  result = qword_10002C748;
  if (!qword_10002C748)
  {
    sub_1000036E4(&qword_10002C680, &qword_10001F408);
    sub_100010A50(&qword_10002C750, &qword_10002C758, &qword_10001F490, sub_100010A20);
    sub_1000116D8(&qword_10002C288, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C748);
  }

  return result;
}

uint64_t sub_100010A50(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000036E4(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100010AD4()
{
  result = qword_10002C770;
  if (!qword_10002C770)
  {
    sub_1000036E4(&qword_10002C778, &qword_10001F4A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C770);
  }

  return result;
}

unint64_t sub_100010B58()
{
  result = qword_10002C780;
  if (!qword_10002C780)
  {
    sub_1000036E4(&qword_10002C660, &qword_10001F3E8);
    sub_1000039E0(&qword_10002C788, &qword_10002C658, &qword_10001F3E0);
    sub_1000039E0(&qword_10002C790, &qword_10002C798, &qword_10001F4A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C780);
  }

  return result;
}

unint64_t sub_100010C3C()
{
  result = qword_10002C7A0;
  if (!qword_10002C7A0)
  {
    sub_1000036E4(&qword_10002C640, &qword_10001F3C8);
    sub_100010CC8();
    sub_10001117C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C7A0);
  }

  return result;
}

unint64_t sub_100010CC8()
{
  result = qword_10002C7A8;
  if (!qword_10002C7A8)
  {
    sub_1000036E4(&qword_10002C638, &qword_10001F3C0);
    sub_100010D54();
    sub_100010F58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C7A8);
  }

  return result;
}

unint64_t sub_100010D54()
{
  result = qword_10002C7B0;
  if (!qword_10002C7B0)
  {
    sub_1000036E4(&qword_10002C630, &qword_10001F3B8);
    sub_100010DE0();
    sub_100010688();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C7B0);
  }

  return result;
}

unint64_t sub_100010DE0()
{
  result = qword_10002C7B8;
  if (!qword_10002C7B8)
  {
    sub_1000036E4(&qword_10002C650, &qword_10001F3D8);
    sub_1000036E4(&qword_10002C7C0, &qword_10001F4B0);
    sub_100010EA0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C7B8);
  }

  return result;
}

unint64_t sub_100010EA0()
{
  result = qword_10002C7C8;
  if (!qword_10002C7C8)
  {
    sub_1000036E4(&qword_10002C7C0, &qword_10001F4B0);
    sub_1000039E0(&qword_10002C270, &qword_10002C278, &unk_10001F900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C7C8);
  }

  return result;
}

unint64_t sub_100010F58()
{
  result = qword_10002C7D0;
  if (!qword_10002C7D0)
  {
    sub_1000036E4(&qword_10002C610, &qword_10001F398);
    sub_100010688();
    sub_100010FE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C7D0);
  }

  return result;
}

unint64_t sub_100010FE4()
{
  result = qword_10002C7D8;
  if (!qword_10002C7D8)
  {
    sub_1000036E4(&qword_10002C600, &qword_10001F388);
    sub_10001158C(&qword_10002C7E0, &qword_10002C5F8, &qword_10001F380, sub_100011094);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C7D8);
  }

  return result;
}

unint64_t sub_100011094()
{
  result = qword_10002C7E8;
  if (!qword_10002C7E8)
  {
    sub_1000036E4(&qword_10002C5F0, &qword_10001F378);
    sub_1000116D8(&qword_10002C7F0, &type metadata accessor for MetricText);
    sub_1000039E0(&qword_10002C270, &qword_10002C278, &unk_10001F900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C7E8);
  }

  return result;
}

unint64_t sub_10001117C()
{
  result = qword_10002C7F8;
  if (!qword_10002C7F8)
  {
    sub_1000036E4(&qword_10002C5E0, &qword_10001F368);
    sub_100011208();
    sub_100011424();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C7F8);
  }

  return result;
}

unint64_t sub_100011208()
{
  result = qword_10002C800;
  if (!qword_10002C800)
  {
    sub_1000036E4(&qword_10002C5D8, &qword_10001F360);
    sub_100010688();
    sub_1000112C0(&qword_10002C808, &qword_10002C5C0, &qword_10001F348, sub_10001133C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C800);
  }

  return result;
}

uint64_t sub_1000112C0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000036E4(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10001133C()
{
  result = qword_10002C810;
  if (!qword_10002C810)
  {
    sub_1000036E4(&qword_10002C5B8, &qword_10001F340);
    sub_1000116D8(&qword_10002C818, &type metadata accessor for ElapsedTimeView);
    sub_1000039E0(&qword_10002C270, &qword_10002C278, &unk_10001F900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C810);
  }

  return result;
}

unint64_t sub_100011424()
{
  result = qword_10002C820;
  if (!qword_10002C820)
  {
    sub_1000036E4(&qword_10002C590, &qword_10001F318);
    sub_1000114DC();
    sub_1000112C0(&qword_10002C808, &qword_10002C5C0, &qword_10001F348, sub_10001133C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C820);
  }

  return result;
}

unint64_t sub_1000114DC()
{
  result = qword_10002C828;
  if (!qword_10002C828)
  {
    sub_1000036E4(&qword_10002C5B0, &qword_10001F338);
    sub_10001158C(&qword_10002C830, &qword_10002C838, &qword_10001F4B8, sub_100011608);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C828);
  }

  return result;
}

uint64_t sub_10001158C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000036E4(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100011608()
{
  result = qword_10002C840;
  if (!qword_10002C840)
  {
    sub_1000036E4(&qword_10002C5A8, &qword_10001F330);
    swift_getOpaqueTypeConformance2();
    sub_1000039E0(&qword_10002C270, &qword_10002C278, &unk_10001F900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C840);
  }

  return result;
}

uint64_t sub_1000116D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100011730@<X0>(void *a1@<X8>)
{
  result = sub_10001DA10();
  *a1 = v3;
  return result;
}

unint64_t sub_100011784()
{
  result = qword_10002C870;
  if (!qword_10002C870)
  {
    sub_1000036E4(&qword_10002C868, &qword_10001F570);
    sub_10001183C();
    sub_1000039E0(&qword_10002C270, &qword_10002C278, &unk_10001F900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C870);
  }

  return result;
}

unint64_t sub_10001183C()
{
  result = qword_10002C878;
  if (!qword_10002C878)
  {
    sub_1000036E4(&qword_10002C880, &qword_10001F578);
    sub_1000118F4();
    sub_1000039E0(&qword_10002C8A8, &qword_10002C8B0, &qword_10001F590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C878);
  }

  return result;
}

unint64_t sub_1000118F4()
{
  result = qword_10002C888;
  if (!qword_10002C888)
  {
    sub_1000036E4(&qword_10002C890, &unk_10001F580);
    sub_1000039E0(&qword_10002C898, &qword_10002C8A0, &qword_10001F6D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C888);
  }

  return result;
}

unint64_t sub_1000119B0()
{
  result = qword_10002C8D0;
  if (!qword_10002C8D0)
  {
    sub_1000036E4(&qword_10002C8D8, &qword_10001F5B0);
    sub_100010514();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C8D0);
  }

  return result;
}

__n128 sub_100011A3C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100011A58(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100011AA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100011B1C@<X0>(uint64_t a1@<X8>)
{
  v87 = a1;
  v78 = sub_100001C34(&qword_10002C8E0, &qword_10001F680);
  v76 = *(v78 - 8);
  v2 = *(v76 + 64);
  __chkstk_darwin(v78);
  v74 = &v72 - v3;
  v79 = sub_100001C34(&qword_10002C8E8, &qword_10001F688);
  v77 = *(v79 - 8);
  v4 = *(v77 + 64);
  __chkstk_darwin(v79);
  v75 = &v72 - v5;
  v82 = sub_100001C34(&qword_10002C8F0, &qword_10001F690);
  v6 = *(*(v82 - 8) + 64);
  __chkstk_darwin(v82);
  v83 = &v72 - v7;
  v8 = sub_100001C34(&qword_10002C8F8, &qword_10001F698);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v86 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v85 = &v72 - v12;
  v13 = sub_100001C34(&qword_10002C900, &qword_10001F6A0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v72 - v16;
  v73 = sub_100001C34(&qword_10002C908, &qword_10001F6A8);
  v72 = *(v73 - 8);
  v18 = *(v72 + 64);
  __chkstk_darwin(v73);
  v88 = &v72 - v19;
  v20 = sub_100001C34(&qword_10002C910, &qword_10001F6B0);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v81 = &v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v80 = &v72 - v24;
  v25 = *(v1 + 40);
  v26 = sub_100012AC0((v1 + 16), v25);
  v27 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v26);
  (*(v29 + 16))(&v72 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v90 = v1;
  sub_100001C34(&qword_10002C918, &qword_10001F6B8);
  sub_100012C5C(&qword_10002C920, &qword_10002C918, &qword_10001F6B8, sub_100012B0C);
  sub_10001DF50();
  v84 = v1;
  v89 = *(v1 + 56);
  if (v89 == 1)
  {
    v30 = sub_10001DE50();
  }

  else
  {
    v30 = sub_10001DE90();
  }

  v31 = sub_10001DE50();
  v91 = v30;
  v92 = v31;
  v32 = sub_1000039E0(&qword_10002C948, &qword_10002C900, &qword_10001F6A0);
  v33 = sub_100012C00();
  sub_10001DDD0();

  (*(v14 + 8))(v17, v13);
  sub_10001DAF0();
  LOWORD(v71._object) = 256;
  v34 = sub_10001DD30();
  v36 = v35;
  v38 = v37;
  v91 = v13;
  v92 = &type metadata for WidgetButtonStyle;
  v93 = v32;
  v94 = v33;
  swift_getOpaqueTypeConformance2();
  v39 = v80;
  v40 = v73;
  v41 = v88;
  sub_10001DDF0();
  sub_100003470(v34, v36, v38 & 1);

  v42 = (*(v72 + 8))(v41, v40);
  __chkstk_darwin(v42);
  v43 = v84;
  sub_100001C34(&qword_10002C958, &qword_10001F6E0);
  sub_100012C5C(&qword_10002C960, &qword_10002C958, &qword_10001F6E0, sub_1000118F4);
  sub_10000531C();
  v44 = v74;
  sub_10001DF50();
  if (v89)
  {
    sub_10001DE70();
    v45 = sub_10001DEA0();

    sub_10001DE70();
    v46 = sub_10001DEA0();
  }

  else
  {
    v45 = sub_10001DE90();
    v46 = sub_10001DE50();
  }

  v91 = v45;
  v92 = v46;
  sub_1000039E0(&qword_10002C968, &qword_10002C8E0, &qword_10001F680);
  v47 = v75;
  v48 = v78;
  sub_10001DDD0();

  (*(v76 + 8))(v44, v48);
  KeyPath = swift_getKeyPath();
  v50 = swift_allocObject();
  *(v50 + 16) = v89;
  v51 = v83;
  (*(v77 + 32))(v83, v47, v79);
  v52 = (v51 + *(v82 + 36));
  *v52 = KeyPath;
  v52[1] = sub_100012D48;
  v52[2] = v50;
  v53 = [objc_opt_self() mainBundle];
  v71._countAndFlagsBits = 0xE000000000000000;
  v95._countAndFlagsBits = 0xD00000000000001BLL;
  v95._object = 0x8000000100025AF0;
  v96.value._countAndFlagsBits = 0;
  v96.value._object = 0;
  v54.super.isa = v53;
  v97._countAndFlagsBits = 0;
  v97._object = 0xE000000000000000;
  sub_10001D660(v95, v96, v54, v97, v71);

  sub_100001C34(&qword_10002C4C8, &qword_10001F1C0);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_10001F5C0;
  v56 = *(v43 + 8);
  *(v55 + 56) = &type metadata for Int;
  *(v55 + 64) = &protocol witness table for Int;
  *(v55 + 32) = v56;
  v57 = sub_10001E150();
  v59 = v58;

  v91 = v57;
  v92 = v59;
  sub_100003A28();
  v60 = sub_10001DD40();
  v62 = v61;
  v64 = v63;
  sub_100012D60();
  v65 = v85;
  sub_10001DDF0();
  sub_100003470(v60, v62, v64 & 1);

  sub_100004088(v51, &qword_10002C8F0, &qword_10001F690);
  v66 = v81;
  sub_100003A7C(v39, v81, &qword_10002C910, &qword_10001F6B0);
  v67 = v86;
  sub_100003A7C(v65, v86, &qword_10002C8F8, &qword_10001F698);
  v68 = v87;
  sub_100003A7C(v66, v87, &qword_10002C910, &qword_10001F6B0);
  v69 = sub_100001C34(&qword_10002C988, &qword_10001F728);
  sub_100003A7C(v67, v68 + *(v69 + 48), &qword_10002C8F8, &qword_10001F698);
  sub_100004088(v65, &qword_10002C8F8, &qword_10001F698);
  sub_100004088(v39, &qword_10002C910, &qword_10001F6B0);
  sub_100004088(v67, &qword_10002C8F8, &qword_10001F698);
  return sub_100004088(v66, &qword_10002C910, &qword_10001F6B0);
}

double sub_100012650@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a1;
  v27 = a2;
  v26 = sub_100001C34(&qword_10002C998, &qword_10001F768);
  v3 = *(v26 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v26);
  v6 = &v24 - v5;
  v7 = sub_100001C34(&qword_10002C930, &unk_10001F6C0);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v11 = &v24 - v10;
  *(a1 + 56);
  *(a1 + 56);
  v12 = sub_10001DF00();
  v13 = sub_10001DC30();
  KeyPath = swift_getKeyPath();
  *&v28 = v12;
  *(&v28 + 1) = KeyPath;
  *&v29 = v13;
  sub_10001DCB0();
  sub_100001C34(&qword_10002C890, &unk_10001F580);
  sub_1000118F4();
  sub_10001DDC0();

  v15 = &v11[*(v8 + 44)];
  v16 = *(sub_100001C34(&qword_10002C940, &qword_10001F6D8) + 28);
  v17 = enum case for Image.Scale.small(_:);
  v18 = sub_10001DF30();
  (*(*(v18 - 8) + 104))(v15 + v16, v17, v18);
  *v15 = swift_getKeyPath();
  (*(v3 + 32))(v11, v6, v26);
  v19 = *v25;
  sub_10001DF80();
  sub_10001D920();
  v20 = v27;
  sub_100012F14(v11, v27);
  v21 = (v20 + *(sub_100001C34(&qword_10002C918, &qword_10001F6B8) + 36));
  v22 = v29;
  *v21 = v28;
  v21[1] = v22;
  result = *&v30;
  v21[2] = v30;
  return result;
}

double sub_10001292C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100001C34(&qword_10002C990, &qword_10001F730);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v16 - v6;
  v16[1] = a1[1];
  *&v17 = sub_10001E2A0();
  *(&v17 + 1) = v8;
  v20._countAndFlagsBits = 0x656C637269632ELL;
  v20._object = 0xE700000000000000;
  sub_10001E170(v20);
  v9 = sub_10001DF00();
  sub_10001DCA0();
  v10 = sub_10001DC80();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = sub_10001DCD0();
  sub_100012E9C(v7);
  KeyPath = swift_getKeyPath();
  v13 = *a1;
  sub_10001DF80();
  sub_10001D920();
  *a2 = v9;
  *(a2 + 8) = KeyPath;
  *(a2 + 16) = v11;
  v14 = v18;
  *(a2 + 24) = v17;
  *(a2 + 40) = v14;
  result = *&v19;
  *(a2 + 56) = v19;
  return result;
}

void *sub_100012AC0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100012B0C()
{
  result = qword_10002C928;
  if (!qword_10002C928)
  {
    sub_1000036E4(&qword_10002C930, &unk_10001F6C0);
    sub_1000036E4(&qword_10002C890, &unk_10001F580);
    sub_1000118F4();
    swift_getOpaqueTypeConformance2();
    sub_1000039E0(&qword_10002C938, &qword_10002C940, &qword_10001F6D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C928);
  }

  return result;
}

unint64_t sub_100012C00()
{
  result = qword_10002C950;
  if (!qword_10002C950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C950);
  }

  return result;
}

uint64_t sub_100012C5C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000036E4(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100012CE0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10001DA70();
  *a1 = result & 1;
  return result;
}

unint64_t sub_100012D60()
{
  result = qword_10002C970;
  if (!qword_10002C970)
  {
    sub_1000036E4(&qword_10002C8F0, &qword_10001F690);
    sub_1000036E4(&qword_10002C8E0, &qword_10001F680);
    sub_1000039E0(&qword_10002C968, &qword_10002C8E0, &qword_10001F680);
    sub_100012C00();
    swift_getOpaqueTypeConformance2();
    sub_1000039E0(&qword_10002C978, &qword_10002C980, &qword_10001F720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C970);
  }

  return result;
}

uint64_t sub_100012E9C(uint64_t a1)
{
  v2 = sub_100001C34(&qword_10002C990, &qword_10001F730);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100012F14(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001C34(&qword_10002C930, &unk_10001F6C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100012FC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10001E2B0();
  v41 = *(v4 - 8);
  v42 = v4;
  v5 = *(v41 + 64);
  __chkstk_darwin(v4);
  v39 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_10001E2F0();
  v38 = *(v40 - 8);
  v7 = *(v38 + 64);
  __chkstk_darwin(v40);
  v37 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100001C34(&qword_10002C140, &unk_10001E680);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v36 - v11;
  v13 = sub_10001D6E0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v36 - v19;
  v21 = sub_10001D8B0();
  v22 = *(v21 - 8);
  v23 = *(v22 + 16);
  v43 = a2;
  v23(a2, a1, v21);
  v24 = a1;
  sub_10001D870();
  v25 = *(v14 + 48);
  if (v25(v12, 1, v13) == 1)
  {
    sub_10001D6D0();
    if (v25(v12, 1, v13) != 1)
    {
      sub_100004088(v12, &qword_10002C140, &unk_10001E680);
    }
  }

  else
  {
    (*(v14 + 32))(v20, v12, v13);
  }

  sub_10001D8A0();
  sub_10001D6B0();
  v27 = v26;
  v28 = *(v14 + 8);
  v28(v18, v13);
  v28(v20, v13);
  v29 = type metadata accessor for LockScreenSummaryView();
  v31 = v42;
  v30 = v43;
  *(v43 + *(v29 + 20)) = v27;
  v32 = v41;
  v33 = v39;
  (*(v41 + 104))(v39, enum case for FloatingPointRoundingRule.toNearestOrEven(_:), v31);
  v34 = v37;
  if (v27 >= 3600.0)
  {
    sub_10001E2E0();
  }

  else
  {
    sub_10001E2D0();
  }

  (*(v22 + 8))(v24, v21);
  (*(v32 + 8))(v33, v31);
  return (*(v38 + 32))(v30 + *(v29 + 24), v34, v40);
}

uint64_t type metadata accessor for LockScreenSummaryView()
{
  result = qword_10002CA08;
  if (!qword_10002CA08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100013474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10001D8B0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_10001E2F0();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100013578(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10001D8B0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_10001E2F0();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_100013674()
{
  result = sub_10001D8B0();
  if (v1 <= 0x3F)
  {
    result = sub_10001E2F0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10001371C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v3 = sub_10001D960();
  v54 = *(v3 - 8);
  v55 = v3;
  v4 = *(v54 + 64);
  v5 = __chkstk_darwin(v3);
  v52 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v53 = &v49 - v7;
  v51 = sub_10001E080();
  v8 = *(v51 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v51);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10001E100();
  v13 = *(v12 - 8);
  v49 = v12;
  v50 = v13;
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100001C34(&qword_10002CA70, &qword_10001F860);
  v56 = *(v17 - 8);
  v57 = v17;
  v18 = *(v56 + 64);
  __chkstk_darwin(v17);
  v20 = &v49 - v19;
  v21 = sub_100001C34(&qword_10002CA78, &qword_10001F868);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v25 = &v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &v49 - v26;
  v28 = sub_100001C34(&qword_10002CA80, &qword_10001F870);
  v29 = *(*(v28 - 8) + 64);
  v30 = __chkstk_darwin(v28 - 8);
  v32 = &v49 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v34 = &v49 - v33;
  *v34 = sub_10001DAA0();
  *(v34 + 1) = 0;
  v35 = 1;
  v34[16] = 1;
  v36 = sub_100001C34(&qword_10002CA88, &qword_10001F878);
  sub_100013CF4(a1, &v34[*(v36 + 44)]);
  v37 = sub_10001D880();
  if (!v37)
  {
    goto LABEL_5;
  }

  if (!*(v37 + 16))
  {

LABEL_5:
    v45 = v57;
    goto LABEL_6;
  }

  v38 = v16;
  sub_10001E0F0();
  v39 = v51;
  (*(v8 + 104))(v11, enum case for WorkoutViewStyle.iOSLiveActivityMetric(_:), v51);
  sub_100014C18(&qword_10002CA98, &type metadata accessor for HorizontalMetricRow);
  v40 = v49;
  sub_10001DD50();
  (*(v8 + 8))(v11, v39);
  (*(v50 + 8))(v38, v40);
  v41 = v53;
  sub_10001D950();
  v43 = v54;
  v42 = v55;
  (*(v54 + 16))(v52, v41, v55);
  sub_100014C18(&qword_10002CAA0, &type metadata accessor for MoveTransition);
  v44 = sub_10001D930();
  (*(v43 + 8))(v41, v42);
  v45 = v57;
  *&v20[*(v57 + 36)] = v44;
  sub_100014BA8(v20, v27);
  v35 = 0;
LABEL_6:
  (*(v56 + 56))(v27, v35, 1, v45);
  sub_100003A7C(v34, v32, &qword_10002CA80, &qword_10001F870);
  sub_100014B38(v27, v25);
  v46 = v58;
  sub_100003A7C(v32, v58, &qword_10002CA80, &qword_10001F870);
  v47 = sub_100001C34(&qword_10002CA90, &qword_10001F880);
  sub_100014B38(v25, v46 + *(v47 + 48));
  sub_100004088(v27, &qword_10002CA78, &qword_10001F868);
  sub_100004088(v34, &qword_10002CA80, &qword_10001F870);
  sub_100004088(v25, &qword_10002CA78, &qword_10001F868);
  return sub_100004088(v32, &qword_10002CA80, &qword_10001F870);
}

id sub_100013CF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100001C34(&qword_10002CAA8, &qword_10001F888);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v59 = v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v58 = (v54 - v8);
  v60 = sub_10001DC60();
  v9 = *(v60 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v60);
  v12 = v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10001E300();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_10001D820();
  v56 = sub_10001D890();
  v55 = sub_10001D800();
  v18 = type metadata accessor for LockScreenSummaryView();
  v19 = *(a1 + *(v18 + 20));
  sub_10001E320();
  v20 = a1 + *(v18 + 24);
  sub_10001D650();
  sub_100014C18(&qword_10002C290, &type metadata accessor for Duration.TimeFormatStyle);
  sub_10001E310();
  (*(v14 + 8))(v17, v13);
  v61 = v63;
  v62 = v64;
  v54[1] = sub_100003A28();
  v21 = sub_10001DD40();
  v23 = v22;
  v25 = v24;
  sub_10001DC90();
  sub_10001DC40();
  sub_10001DCC0();
  (*(v9 + 8))(v12, v60);
  sub_10001DC70();

  v26 = sub_10001DD20();
  v28 = v27;
  LOBYTE(v9) = v29;

  sub_100003470(v21, v23, v25 & 1);

  v63 = sub_10001DE90();
  v30 = sub_10001DD00();
  v32 = v31;
  v34 = v33;
  sub_100003470(v26, v28, v9 & 1);

  result = AXDurationStringForDuration();
  if (result)
  {
    v36 = result;
    v37 = sub_10001E140();
    v39 = v38;

    v63 = v37;
    v64 = v39;
    v40 = sub_10001DD10();
    v42 = v41;
    LOBYTE(v36) = v43;
    v60 = v44;
    sub_100003470(v30, v32, v34 & 1);

    v45 = sub_10001DF80();
    v46 = v58;
    *v58 = v45;
    *(v46 + 8) = v47;
    v48 = sub_100001C34(&qword_10002CAB0, &qword_10001F890);
    sub_10001424C(v46 + *(v48 + 44));
    LOBYTE(v37) = v56 & 1;
    v49 = v55 & 1;
    v50 = v59;
    sub_100003A7C(v46, v59, &qword_10002CAA8, &qword_10001F888);
    v51 = v57;
    *a2 = v57;
    *(a2 + 8) = v37;
    *(a2 + 9) = v49;
    *(a2 + 16) = xmmword_10001F7B0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 1;
    *(a2 + 48) = v40;
    *(a2 + 56) = v42;
    LOBYTE(v36) = v36 & 1;
    *(a2 + 64) = v36;
    *(a2 + 72) = v60;
    *(a2 + 80) = 0;
    *(a2 + 88) = 1;
    v52 = sub_100001C34(&qword_10002CAB8, &unk_10001F898);
    sub_100003A7C(v50, a2 + *(v52 + 96), &qword_10002CAA8, &qword_10001F888);
    v53 = v51;
    sub_10000678C(v40, v42, v36);

    sub_100004088(v46, &qword_10002CAA8, &qword_10001F888);
    sub_100004088(v50, &qword_10002CAA8, &qword_10001F888);
    sub_100003470(v40, v42, v36);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10001424C(uint64_t a1@<X8>)
{
  v55 = sub_10001DB30();
  v54 = *(v55 - 8);
  v2 = *(v54 + 64);
  __chkstk_darwin(v55);
  v4 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100001C34(&qword_10002C990, &qword_10001F730);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v50 - v7;
  v57 = sub_100001C34(&qword_10002CAC0, &qword_10001F8A8);
  v9 = *(*(v57 - 8) + 64);
  v10 = __chkstk_darwin(v57);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v58 = &v50 - v13;
  v56 = sub_100001C34(&qword_10002CAC8, &qword_10001F8B0);
  v14 = *(*(v56 - 8) + 64);
  v15 = __chkstk_darwin(v56);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v50 - v19;
  __chkstk_darwin(v18);
  v22 = &v50 - v21;
  v23 = sub_100001C34(&qword_10002CAD0, &qword_10001F8B8);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v27 = &v50 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v50 - v28;
  if (FIUICircularWorkoutGradientImageWithGoal())
  {
    v50 = v27;
    v51 = v22;
    v52 = v17;
    v53 = a1;
    *&v61[0] = sub_10001DEF0();
    sub_10001DE10();

    v30 = sub_10001DF00();
    sub_10001DC90();
    v31 = sub_10001DC80();
    (*(*(v31 - 8) + 56))(v8, 1, 1, v31);
    v32 = sub_10001DCD0();
    sub_100004088(v8, &qword_10002C990, &qword_10001F730);
    KeyPath = swift_getKeyPath();
    sub_10001DF80();
    sub_10001D920();
    v34 = [objc_opt_self() metricColorsForGoalTypeIdentifier:0];
    v35 = [v34 nonGradientTextColor];

    if (v35)
    {
      v36 = sub_10001DEE0();
      *&v60[8] = v61[5];
      *&v60[24] = v61[6];
      *&v60[40] = v61[7];
      *&v59 = v30;
      *(&v59 + 1) = KeyPath;
      *v60 = v32;
      *&v60[56] = v36;
      sub_10001DB10();
      sub_100001C34(&qword_10002CAD8, &unk_10001F8F0);
      sub_100014C68();
      sub_10001DE40();
      (*(v54 + 8))(v4, v55);
      v61[3] = *&v60[32];
      v61[4] = *&v60[48];
      v61[1] = *v60;
      v61[2] = *&v60[16];
      v61[0] = v59;
      sub_100004088(v61, &qword_10002CAD8, &unk_10001F8F0);
      sub_10001DAF0();
      v37 = sub_10001DD30();
      v39 = v38;
      v41 = v40;
      v42 = v58;
      sub_10001D970();
      sub_100003470(v37, v39, v41 & 1);

      sub_100004088(v12, &qword_10002CAC0, &qword_10001F8A8);
      v43 = &v20[*(v56 + 36)];
      v44 = &v43[*(sub_100001C34(&qword_10002CAE8, &unk_10001FED0) + 40)];
      sub_10001D980();
      *v43 = 0;
      sub_1000035C0(v42, v20, &qword_10002CAC0, &qword_10001F8A8);
      v45 = v51;
      sub_1000035C0(v20, v51, &qword_10002CAC8, &qword_10001F8B0);
      v46 = v50;
      sub_100003A7C(v29, v50, &qword_10002CAD0, &qword_10001F8B8);
      v47 = v52;
      sub_100003A7C(v45, v52, &qword_10002CAC8, &qword_10001F8B0);
      v48 = v53;
      sub_100003A7C(v46, v53, &qword_10002CAD0, &qword_10001F8B8);
      v49 = sub_100001C34(&qword_10002CAF0, qword_10001F910);
      sub_100003A7C(v47, v48 + *(v49 + 48), &qword_10002CAC8, &qword_10001F8B0);
      sub_100004088(v45, &qword_10002CAC8, &qword_10001F8B0);
      sub_100004088(v29, &qword_10002CAD0, &qword_10001F8B8);
      sub_100004088(v47, &qword_10002CAC8, &qword_10001F8B0);
      sub_100004088(v46, &qword_10002CAD0, &qword_10001F8B8);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100014954()
{
  v1 = sub_100001C34(&qword_10002CA48, &qword_10001F848);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v9 - v3;
  *v4 = sub_10001DB40();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v5 = sub_100001C34(&qword_10002CA50, &qword_10001F850);
  sub_10001371C(v0, &v4[*(v5 + 44)]);
  v6 = sub_10001DBF0();
  v7 = &v4[*(v1 + 36)];
  *v7 = v6;
  *(v7 + 8) = 0u;
  *(v7 + 24) = 0u;
  v7[40] = 1;
  sub_10001DE80();
  sub_100014A80();
  sub_10001DD80();

  return sub_100004088(v4, &qword_10002CA48, &qword_10001F848);
}

unint64_t sub_100014A80()
{
  result = qword_10002CA58;
  if (!qword_10002CA58)
  {
    sub_1000036E4(&qword_10002CA48, &qword_10001F848);
    sub_1000039E0(&qword_10002CA60, &qword_10002CA68, &qword_10001F858);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CA58);
  }

  return result;
}

uint64_t sub_100014B38(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001C34(&qword_10002CA78, &qword_10001F868);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100014BA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001C34(&qword_10002CA70, &qword_10001F860);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100014C18(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100014C68()
{
  result = qword_10002CAE0;
  if (!qword_10002CAE0)
  {
    sub_1000036E4(&qword_10002CAD8, &unk_10001F8F0);
    sub_100014D20();
    sub_1000039E0(&qword_10002C270, &qword_10002C278, &unk_10001F900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CAE0);
  }

  return result;
}

unint64_t sub_100014D20()
{
  result = qword_10002C960;
  if (!qword_10002C960)
  {
    sub_1000036E4(&qword_10002C958, &qword_10001F6E0);
    sub_1000118F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C960);
  }

  return result;
}

uint64_t sub_100014DAC()
{
  sub_1000036E4(&qword_10002CA48, &qword_10001F848);
  sub_100014A80();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100014E24(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001D8B0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100014EA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001D8B0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for LockScreenInSessionView()
{
  result = qword_10002CB50;
  if (!qword_10002CB50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100014F60()
{
  result = sub_10001D8B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100014FE8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v103 = a2;
  v3 = sub_10001E100();
  v84 = *(v3 - 8);
  v85 = v3;
  v4 = *(v84 + 64);
  __chkstk_darwin(v3);
  v83 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_100001C34(&qword_10002CA70, &qword_10001F860);
  v6 = *(*(v94 - 8) + 64);
  __chkstk_darwin(v94);
  v86 = &v82 - v7;
  v98 = sub_100001C34(&qword_10002CBB0, &qword_10001F9C8);
  v8 = *(*(v98 - 8) + 64);
  __chkstk_darwin(v98);
  v87 = &v82 - v9;
  v93 = sub_100001C34(&qword_10002CBB8, &qword_10001F9D0);
  v10 = *(*(v93 - 8) + 64);
  __chkstk_darwin(v93);
  v97 = &v82 - v11;
  v88 = sub_100001C34(&qword_10002CBC0, &qword_10001F9D8);
  v12 = *(*(v88 - 8) + 64);
  __chkstk_darwin(v88);
  v96 = &v82 - v13;
  v92 = sub_100001C34(&qword_10002CBC8, &qword_10001F9E0);
  v14 = *(*(v92 - 8) + 64);
  __chkstk_darwin(v92);
  v89 = &v82 - v15;
  v95 = sub_10001D960();
  v91 = *(v95 - 8);
  v16 = *(v91 + 64);
  v17 = __chkstk_darwin(v95);
  v90 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v82 - v19;
  v21 = sub_10001E080();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100001C34(&qword_10002CBD0, &qword_10001F9E8);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26);
  v29 = &v82 - v28;
  v30 = sub_100001C34(&qword_10002CBD8, &qword_10001F9F0);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30);
  v33 = &v82 - v32;
  v34 = sub_100001C34(&qword_10002CBE0, &qword_10001F9F8);
  v35 = *(*(v34 - 8) + 64);
  v36 = __chkstk_darwin(v34 - 8);
  v102 = &v82 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v100 = &v82 - v38;
  v39 = sub_100001C34(&qword_10002CBE8, &qword_10001FA00);
  v40 = *(*(v39 - 8) + 64);
  v41 = __chkstk_darwin(v39 - 8);
  v101 = &v82 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v44 = &v82 - v43;
  *v44 = sub_10001DAA0();
  *(v44 + 1) = 0;
  v44[16] = 1;
  v45 = *(sub_100001C34(&qword_10002CBF0, &qword_10001FA08) + 44);
  v99 = v44;
  sub_100015C64(a1, &v44[v45]);
  if (sub_10001D860())
  {
    sub_100016CA8(v29);
    (*(v22 + 104))(v25, enum case for WorkoutViewStyle.iOSLiveActivityNotificationMetric(_:), v21);
    sub_10001749C();
    sub_10001DD50();
    (*(v22 + 8))(v25, v21);
    sub_100004088(v29, &qword_10002CBD0, &qword_10001F9E8);
    sub_10001D950();
    v46 = v91;
    v47 = v95;
    (*(v91 + 16))(v90, v20, v95);
    sub_100017938(&qword_10002CAA0, &type metadata accessor for MoveTransition);
    v48 = sub_10001D930();
    (*(v46 + 8))(v20, v47);
    *&v33[*(v30 + 36)] = v48;
    v49 = &qword_10002CBD8;
    v50 = &qword_10001F9F0;
    sub_100003A7C(v33, v96, &qword_10002CBD8, &qword_10001F9F0);
    swift_storeEnumTagMultiPayload();
    sub_1000173A8();
    sub_10001754C();
    v51 = v89;
    sub_10001DB60();
    sub_100003A7C(v51, v97, &qword_10002CBC8, &qword_10001F9E0);
    swift_storeEnumTagMultiPayload();
    sub_10001731C();
    sub_100017684();
    v52 = v100;
    sub_10001DB60();
    v53 = v51;
  }

  else
  {
    v54 = v21;
    v82 = v30;
    v55 = v95;
    v56 = v96;
    v58 = v97;
    v57 = v98;
    v59 = sub_10001D830();
    if (!v59)
    {
      v75 = sub_10001D880();
      if (v75)
      {
        if (*(v75 + 16))
        {
          v76 = v54;
          v77 = v83;
          sub_10001E0F0();
          (*(v22 + 104))(v25, enum case for WorkoutViewStyle.iOSLiveActivityMetric(_:), v54);
          sub_100017938(&qword_10002CA98, &type metadata accessor for HorizontalMetricRow);
          v78 = v85;
          v79 = v86;
          sub_10001DD50();
          (*(v22 + 8))(v25, v76);
          (*(v84 + 8))(v77, v78);
          sub_10001D950();
          v80 = v91;
          (*(v91 + 16))(v90, v20, v55);
          sub_100017938(&qword_10002CAA0, &type metadata accessor for MoveTransition);
          v81 = sub_10001D930();
          (*(v80 + 8))(v20, v55);
          *&v79[*(v94 + 36)] = v81;
          v49 = &qword_10002CA70;
          v50 = &qword_10001F860;
          sub_100003A7C(v79, v58, &qword_10002CA70, &qword_10001F860);
          swift_storeEnumTagMultiPayload();
          sub_10001731C();
          sub_100017684();
          v52 = v100;
          sub_10001DB60();
          v66 = v79;
          goto LABEL_6;
        }
      }

      v67 = 1;
      v52 = v100;
      goto LABEL_7;
    }

    v104 = v59;
    v60 = *(v22 + 104);
    v86 = v59;
    v61 = v54;
    v60(v25, enum case for WorkoutViewStyle.iOSLiveActivityNotificationMetric(_:), v54);
    sub_100017630();
    v33 = v87;
    sub_10001DD50();
    (*(v22 + 8))(v25, v61);
    v62 = v20;
    sub_10001D950();
    v63 = v91;
    (*(v91 + 16))(v90, v62, v55);
    sub_100017938(&qword_10002CAA0, &type metadata accessor for MoveTransition);
    v64 = sub_10001D930();
    (*(v63 + 8))(v62, v55);
    *&v33[*(v57 + 36)] = v64;
    v49 = &qword_10002CBB0;
    v50 = &qword_10001F9C8;
    sub_100003A7C(v33, v56, &qword_10002CBB0, &qword_10001F9C8);
    swift_storeEnumTagMultiPayload();
    sub_1000173A8();
    sub_10001754C();
    v65 = v89;
    sub_10001DB60();
    sub_100003A7C(v65, v58, &qword_10002CBC8, &qword_10001F9E0);
    swift_storeEnumTagMultiPayload();
    sub_10001731C();
    sub_100017684();
    v52 = v100;
    sub_10001DB60();

    v53 = v65;
  }

  sub_100004088(v53, &qword_10002CBC8, &qword_10001F9E0);
  v66 = v33;
LABEL_6:
  sub_100004088(v66, v49, v50);
  v67 = 0;
LABEL_7:
  v68 = sub_100001C34(&qword_10002CBF8, &qword_10001FA10);
  (*(*(v68 - 8) + 56))(v52, v67, 1, v68);
  v69 = v99;
  v70 = v101;
  sub_100003A7C(v99, v101, &qword_10002CBE8, &qword_10001FA00);
  v71 = v102;
  sub_100003A7C(v52, v102, &qword_10002CBE0, &qword_10001F9F8);
  v72 = v103;
  sub_100003A7C(v70, v103, &qword_10002CBE8, &qword_10001FA00);
  v73 = sub_100001C34(&qword_10002CC00, &qword_10001FA18);
  sub_100003A7C(v71, v72 + *(v73 + 48), &qword_10002CBE0, &qword_10001F9F8);
  sub_100004088(v52, &qword_10002CBE0, &qword_10001F9F8);
  sub_100004088(v69, &qword_10002CBE8, &qword_10001FA00);
  sub_100004088(v71, &qword_10002CBE0, &qword_10001F9F8);
  return sub_100004088(v70, &qword_10002CBE8, &qword_10001FA00);
}

void sub_100015C64(void *a1@<X0>, uint64_t a2@<X8>)
{
  v122 = a2;
  v119 = sub_100001C34(&qword_10002CC88, &qword_10001FA50);
  v118 = *(v119 - 8);
  v3 = *(v118 + 64);
  __chkstk_darwin(v119);
  v129 = &v105 - v4;
  v5 = sub_100001C34(&qword_10002CC90, &qword_10001FA58);
  v121 = *(v5 - 8);
  v6 = *(v121 + 64);
  v7 = __chkstk_darwin(v5);
  v120 = &v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v130 = &v105 - v9;
  v112 = sub_100001C34(&qword_10002CC98, &unk_10001FA60);
  v10 = *(*(v112 - 8) + 64);
  __chkstk_darwin(v112);
  v113 = &v105 - v11;
  v12 = sub_10001DC60();
  v126 = *(v12 - 8);
  v127 = v12;
  v13 = *(v126 + 64);
  __chkstk_darwin(v12);
  v125 = &v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100001C34(&qword_10002C140, &unk_10001E680);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v105 - v17;
  v19 = sub_100001C34(&qword_10002C1E8, &unk_10001FA70);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19);
  v23 = &v105 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v105 - v24;
  v26 = sub_10001D6E0();
  v27 = *(v26 - 8);
  v28 = v27[8];
  v29 = __chkstk_darwin(v26);
  v31 = &v105 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v33 = &v105 - v32;
  v123 = sub_100001C34(&qword_10002C1F0, &qword_10001E750);
  v34 = *(*(v123 - 8) + 64);
  __chkstk_darwin(v123);
  v124 = &v105 - v35;
  v110 = sub_100001C34(&qword_10002CCA0, &qword_10001FA80);
  v36 = *(*(v110 - 8) + 64);
  v37 = __chkstk_darwin(v110);
  v117 = &v105 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v111 = &v105 - v40;
  __chkstk_darwin(v39);
  v131 = &v105 - v41;
  v116 = sub_10001D820();
  v115 = sub_10001D890();
  v114 = sub_10001D800();
  v128 = a1;
  sub_10001D8A0();
  sub_10001D6A0();
  sub_100017938(&qword_10002C210, &type metadata accessor for Date);
  if ((sub_10001E120() & 1) == 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  v108 = v5;
  v109 = v18;
  v42 = v27[4];
  v105 = v27 + 4;
  v107 = v33;
  v42(v25, v33, v26);
  v42(&v25[*(v19 + 48)], v31, v26);
  sub_100003A7C(v25, v23, &qword_10002C1E8, &unk_10001FA70);
  v43 = *(v19 + 48);
  v44 = v124;
  v42(v124, v23, v26);
  v45 = v27[1];
  v45(&v23[v43], v26);
  sub_1000035C0(v25, v23, &qword_10002C1E8, &unk_10001FA70);
  v46 = &v44[*(v123 + 36)];
  v47 = &v23[*(v19 + 48)];
  v106 = v42;
  v42(v46, v47, v26);
  v123 = v26;
  v45(v23, v26);
  v48 = v128;
  sub_10001D850();
  v49 = sub_10001DCE0();
  v51 = v50;
  LOBYTE(v43) = v52;
  sub_10001DC90();
  v53 = v125;
  sub_10001DC40();
  sub_10001DCC0();
  (*(v126 + 8))(v53, v127);
  sub_10001DC70();

  v54 = sub_10001DD20();
  v56 = v55;
  v58 = v57;

  sub_100003470(v49, v51, v43 & 1);

  if ((sub_10001D890() & 1) == 0)
  {
    v59 = [objc_opt_self() elapsedTimeColors];
    if (v59)
    {
      v60 = v59;
      v61 = [v59 nonGradientTextColor];

      if (v61)
      {
        sub_10001DEE0();
        goto LABEL_7;
      }

LABEL_25:
      __break(1u);
      return;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  sub_10001DE70();
  sub_10001DEA0();

LABEL_7:
  v62 = sub_10001DCF0();
  v64 = v63;
  v66 = v65;
  v68 = v67;

  sub_100003470(v54, v56, v58 & 1);

  KeyPath = swift_getKeyPath();
  v70 = v107;
  v71 = v48;
  sub_10001D8A0();
  v72 = v113;
  v106(&v113[*(v112 + 36)], v70, v123);
  *v72 = 0;
  v73 = v111;
  sub_100003A7C(v72, &v111[*(v110 + 36)], &qword_10002CC98, &unk_10001FA60);
  *v73 = v62;
  *(v73 + 8) = v64;
  *(v73 + 16) = v66 & 1;
  *(v73 + 24) = v68;
  *(v73 + 32) = KeyPath;
  *(v73 + 40) = 1;
  sub_100004088(v72, &qword_10002CC98, &unk_10001FA60);
  sub_1000035C0(v73, v131, &qword_10002CCA0, &qword_10001FA80);
  if (sub_10001D890())
  {
    v74 = &type metadata for ResumeMirroredWorkout;
    v75 = sub_100004754();
  }

  else
  {
    v74 = &type metadata for PauseMirroredWorkout;
    v75 = sub_100004E94();
  }

  v76 = v114;
  v134[3] = v74;
  v134[4] = v75;
  v77 = sub_100012AC0(v134, v74);
  v78 = *(v74[-1].Description + 8);
  __chkstk_darwin(v77);
  v81 = (*(v80 + 16))(&v105 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v81);
  *(&v105 - 2) = v71;
  sub_100001C34(&qword_10002CCA8, &unk_10001FAB8);
  sub_10001787C();
  sub_10001DF50();
  if (sub_10001D860())
  {
    sub_10001DE70();
    v82 = sub_10001DEA0();

    sub_10001DE70();
    sub_10001DEA0();

    v83 = v122;
    v84 = v118;
    v85 = v115;
    v86 = v76;
  }

  else
  {
    v87 = sub_10001D890();
    v83 = v122;
    v84 = v118;
    v85 = v115;
    v86 = v76;
    if (v87)
    {
      v82 = sub_10001DE50();
    }

    else
    {
      v82 = sub_10001DE90();
    }

    sub_10001DE50();
  }

  if (sub_10001D860())
  {
    v88 = v121;
    sub_10001DE70();
    sub_10001DEA0();

    sub_10001DE70();
    v89 = sub_10001DEA0();
  }

  else
  {
    if (sub_10001D890())
    {
      v88 = v121;
      sub_10001DE50();
    }

    else
    {
      v88 = v121;
      sub_10001DE90();
    }

    v89 = sub_10001DE50();
  }

  v90 = v119;

  v132 = v82;
  v133 = v89;
  sub_1000039E0(&qword_10002CCB8, &qword_10002CC88, &qword_10001FA50);
  sub_100012C00();
  v91 = v130;
  v92 = v129;
  sub_10001DDD0();

  (*(v84 + 8))(v92, v90);
  sub_100005EBC(v134);
  v93 = v85 & 1;
  LOBYTE(v90) = v86 & 1;
  v94 = v117;
  sub_100003A7C(v131, v117, &qword_10002CCA0, &qword_10001FA80);
  v95 = v88;
  v96 = *(v88 + 16);
  v97 = v120;
  v98 = v91;
  v99 = v108;
  v96(v120, v98, v108);
  v100 = v116;
  *v83 = v116;
  *(v83 + 8) = v93;
  *(v83 + 9) = v90;
  *(v83 + 16) = xmmword_10001F7B0;
  *(v83 + 32) = 0;
  *(v83 + 40) = 1;
  v101 = sub_100001C34(&qword_10002CCC0, &unk_10001FAC8);
  sub_100003A7C(v94, v83 + v101[16], &qword_10002CCA0, &qword_10001FA80);
  v102 = v83 + v101[20];
  *v102 = 0;
  *(v102 + 8) = 1;
  v96((v83 + v101[24]), v97, v99);
  v103 = *(v95 + 8);
  v104 = v100;
  v103(v130, v99);
  sub_100004088(v131, &qword_10002CCA0, &qword_10001FA80);
  v103(v97, v99);
  sub_100004088(v94, &qword_10002CCA0, &qword_10001FA80);
}

uint64_t sub_100016A04()
{
  v0 = sub_100001C34(&qword_10002C990, &qword_10001F730);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v14 - v2;
  sub_10001D890();
  v4 = sub_10001DF00();
  sub_10001DCB0();
  v5 = sub_10001DC80();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = sub_10001DCD0();
  sub_100004088(v3, &qword_10002C990, &qword_10001F730);
  KeyPath = swift_getKeyPath();
  sub_10001DF80();
  sub_10001D920();
  *&v16 = v4;
  *(&v16 + 1) = KeyPath;
  *&v17 = v6;
  sub_10001D890();
  sub_10001DAF0();
  v8 = sub_10001DD30();
  v10 = v9;
  LOBYTE(v3) = v11;
  sub_100001C34(&qword_10002C958, &qword_10001F6E0);
  sub_100014D20();
  sub_10001DDF0();
  sub_100003470(v8, v10, v3 & 1);

  v14[2] = v18;
  v14[3] = v19;
  v15 = v20;
  v14[0] = v16;
  v14[1] = v17;
  return sub_100004088(v14, &qword_10002C958, &qword_10001F6E0);
}

uint64_t sub_100016CA8@<X0>(char *a1@<X8>)
{
  v39 = a1;
  v1 = sub_100001C34(&qword_10002CC58, &qword_10001FA30);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v31 - v3;
  v5 = sub_100001C34(&qword_10002CC60, &qword_10001FA38);
  v38 = *(v5 - 8);
  v6 = *(v38 + 64);
  v7 = __chkstk_darwin(v5);
  v37 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v36 = &v31 - v10;
  v11 = __chkstk_darwin(v9);
  v35 = &v31 - v12;
  __chkstk_darwin(v11);
  v40 = &v31 - v13;
  v14 = sub_10001E110();
  v15 = *(v14 - 8);
  v16 = v15[8];
  __chkstk_darwin(v14);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = enum case for LocalizationFeature.workout(_:);
  v33 = v15[13];
  v33(v18);
  sub_10001E0B0();
  v19 = v15[1];
  v19(v18, v14);
  sub_10001E070();

  v20 = sub_10001DB70();
  v32 = v1;
  *&v4[*(v1 + 36)] = v20;
  sub_10001DCB0();
  sub_10001779C();
  sub_10001DDC0();
  sub_100004088(v4, &qword_10002CC58, &qword_10001FA30);
  (v33)(v18, v34, v14);
  sub_10001E0B0();
  v19(v18, v14);
  sub_10001E070();

  *&v4[*(v32 + 36)] = sub_10001DB80();
  sub_10001DCB0();
  v21 = v35;
  sub_10001DDC0();
  sub_100004088(v4, &qword_10002CC58, &qword_10001FA30);
  v22 = v38;
  v23 = *(v38 + 16);
  v24 = v36;
  v25 = v40;
  v23(v36, v40, v5);
  v26 = v37;
  v23(v37, v21, v5);
  v27 = v39;
  v23(v39, v24, v5);
  v28 = sub_100001C34(&qword_10002CC80, &qword_10001FA48);
  v23(&v27[*(v28 + 48)], v26, v5);
  v29 = *(v22 + 8);
  v29(v21, v5);
  v29(v25, v5);
  v29(v26, v5);
  return (v29)(v24, v5);
}

uint64_t sub_100017138()
{
  v1 = sub_100001C34(&qword_10002CB88, &qword_10001F9A8);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v9 - v3;
  *v4 = sub_10001DB40();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v5 = sub_100001C34(&qword_10002CB90, &qword_10001F9B0);
  sub_100014FE8(v0, &v4[*(v5 + 44)]);
  v6 = sub_10001DBF0();
  v7 = &v4[*(v1 + 36)];
  *v7 = v6;
  *(v7 + 8) = 0u;
  *(v7 + 24) = 0u;
  v7[40] = 1;
  sub_10001DE80();
  sub_100017264();
  sub_10001DD80();

  return sub_100004088(v4, &qword_10002CB88, &qword_10001F9A8);
}

unint64_t sub_100017264()
{
  result = qword_10002CB98;
  if (!qword_10002CB98)
  {
    sub_1000036E4(&qword_10002CB88, &qword_10001F9A8);
    sub_1000039E0(&qword_10002CBA0, &qword_10002CBA8, &unk_10001F9B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CB98);
  }

  return result;
}

unint64_t sub_10001731C()
{
  result = qword_10002CC08;
  if (!qword_10002CC08)
  {
    sub_1000036E4(&qword_10002CBC8, &qword_10001F9E0);
    sub_1000173A8();
    sub_10001754C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CC08);
  }

  return result;
}

unint64_t sub_1000173A8()
{
  result = qword_10002CC10;
  if (!qword_10002CC10)
  {
    sub_1000036E4(&qword_10002CBD8, &qword_10001F9F0);
    sub_1000036E4(&qword_10002CBD0, &qword_10001F9E8);
    sub_10001749C();
    swift_getOpaqueTypeConformance2();
    sub_1000039E0(&qword_10002CC30, &qword_10002CC38, &qword_10001FA28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CC10);
  }

  return result;
}

unint64_t sub_10001749C()
{
  result = qword_10002CC18;
  if (!qword_10002CC18)
  {
    sub_1000036E4(&qword_10002CBD0, &qword_10001F9E8);
    sub_1000039E0(&qword_10002CC20, &qword_10002CC28, &qword_10001FA20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CC18);
  }

  return result;
}

unint64_t sub_10001754C()
{
  result = qword_10002CC40;
  if (!qword_10002CC40)
  {
    sub_1000036E4(&qword_10002CBB0, &qword_10001F9C8);
    sub_100017630();
    swift_getOpaqueTypeConformance2();
    sub_1000039E0(&qword_10002CC30, &qword_10002CC38, &qword_10001FA28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CC40);
  }

  return result;
}

unint64_t sub_100017630()
{
  result = qword_10002CC48;
  if (!qword_10002CC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CC48);
  }

  return result;
}

unint64_t sub_100017684()
{
  result = qword_10002CC50;
  if (!qword_10002CC50)
  {
    sub_1000036E4(&qword_10002CA70, &qword_10001F860);
    sub_10001E100();
    sub_100017938(&qword_10002CA98, &type metadata accessor for HorizontalMetricRow);
    swift_getOpaqueTypeConformance2();
    sub_1000039E0(&qword_10002CC30, &qword_10002CC38, &qword_10001FA28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CC50);
  }

  return result;
}

unint64_t sub_10001779C()
{
  result = qword_10002CC68;
  if (!qword_10002CC68)
  {
    sub_1000036E4(&qword_10002CC58, &qword_10001FA30);
    swift_getOpaqueTypeConformance2();
    sub_1000039E0(&qword_10002CC70, &qword_10002CC78, &qword_10001FA40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CC68);
  }

  return result;
}

unint64_t sub_10001787C()
{
  result = qword_10002CCB0;
  if (!qword_10002CCB0)
  {
    sub_1000036E4(&qword_10002CCA8, &unk_10001FAB8);
    sub_100014D20();
    sub_100017938(&qword_10002C288, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CCB0);
  }

  return result;
}

uint64_t sub_100017938(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100017988()
{
  sub_1000036E4(&qword_10002CB88, &qword_10001F9A8);
  sub_100017264();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100017A18@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100001C34(&qword_10002CCC8, &qword_10001FBC0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = (&v25 - v9);
  v11 = sub_100001C34(&qword_10002CCD0, &qword_10001FBC8);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = (&v25 - v16);
  FIUIIconSize();
  *v17 = sub_10001DF80();
  v17[1] = v18;
  v19 = sub_100001C34(&qword_10002CCD8, &qword_10001FBD0);
  sub_100017C9C(a1, v17 + *(v19 + 44));
  *v10 = sub_10001DF80();
  v10[1] = v20;
  v21 = sub_100001C34(&qword_10002CCE0, &qword_10001FBD8);
  sub_1000182C4(v10 + *(v21 + 44));
  sub_100003A7C(v17, v15, &qword_10002CCD0, &qword_10001FBC8);
  sub_100003A7C(v10, v8, &qword_10002CCC8, &qword_10001FBC0);
  sub_100003A7C(v15, a2, &qword_10002CCD0, &qword_10001FBC8);
  v22 = sub_100001C34(&qword_10002CCE8, &qword_10001FBE0);
  v23 = a2 + *(v22 + 48);
  *v23 = 0;
  *(v23 + 8) = 1;
  sub_100003A7C(v8, a2 + *(v22 + 64), &qword_10002CCC8, &qword_10001FBC0);
  sub_100004088(v10, &qword_10002CCC8, &qword_10001FBC0);
  sub_100004088(v17, &qword_10002CCD0, &qword_10001FBC8);
  sub_100004088(v8, &qword_10002CCC8, &qword_10001FBC0);
  return sub_100004088(v15, &qword_10002CCD0, &qword_10001FBC8);
}

void sub_100017C9C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a1;
  v3 = sub_10001DF10();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_100001C34(&qword_10002CD38, &qword_10001FC88);
  v44 = *(v45 - 8);
  v8 = *(v44 + 64);
  __chkstk_darwin(v45);
  v42 = &v41 - v9;
  v10 = sub_100001C34(&qword_10002CD40, &qword_10001FC90);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v41 - v15;
  v17 = sub_100001C34(&qword_10002CAD0, &qword_10001F8B8);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v41 - v22;
  sub_100018B78();
  isa = sub_10001E1F0(0x393937u).super.isa;
  v25 = FIUICircularImage();

  if (v25)
  {
    v43 = a2;
    *&v55[0] = sub_10001DEF0();
    sub_10001DE10();

    v26 = FIUIStaticScalableWorkoutIconImage();
    if (v26)
    {
      v27 = v26;
      v28 = [v26 imageWithRenderingMode:2];
      sub_10001DEF0();
      (*(v4 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v3);
      v29 = sub_10001DF40();

      (*(v4 + 8))(v7, v3);
      v30 = sub_10001DE90();
      sub_10001DF80();
      sub_10001D920();
      v49 = v29;
      LOWORD(v50) = 1;
      *(&v50 + 1) = v30;
      v54 = 1;
      v31 = [v46 localizedName];
      v32 = sub_10001E140();
      v34 = v33;

      v47 = v32;
      v48 = v34;
      sub_100001C34(&qword_10002CD58, &qword_10001FCA0);
      sub_100018BC4();
      sub_100003A28();
      v35 = v42;
      sub_10001DE00();

      v55[2] = v51;
      v55[3] = v52;
      v55[4] = v53;
      v56 = v54;
      v55[0] = v49;
      v55[1] = v50;
      sub_100004088(v55, &qword_10002CD58, &qword_10001FCA0);
      v36 = v45;
      v37 = (v35 + *(v45 + 36));
      v38 = &v37[*(sub_100001C34(&qword_10002CAE8, &unk_10001FED0) + 40)];
      sub_10001D980();

      *v37 = 0;
      sub_1000035C0(v35, v16, &qword_10002CD38, &qword_10001FC88);
      (*(v44 + 56))(v16, 0, 1, v36);
    }

    else
    {
      (*(v44 + 56))(v16, 1, 1, v45);
    }

    sub_100003A7C(v23, v21, &qword_10002CAD0, &qword_10001F8B8);
    sub_100003A7C(v16, v14, &qword_10002CD40, &qword_10001FC90);
    v39 = v43;
    sub_100003A7C(v21, v43, &qword_10002CAD0, &qword_10001F8B8);
    v40 = sub_100001C34(&qword_10002CD50, &qword_10001FC98);
    sub_100003A7C(v14, v39 + *(v40 + 48), &qword_10002CD40, &qword_10001FC90);
    sub_100004088(v16, &qword_10002CD40, &qword_10001FC90);
    sub_100004088(v23, &qword_10002CAD0, &qword_10001F8B8);
    sub_100004088(v14, &qword_10002CD40, &qword_10001FC90);
    sub_100004088(v21, &qword_10002CAD0, &qword_10001F8B8);
  }

  else
  {
    __break(1u);
  }
}

void sub_1000182C4(uint64_t a1@<X8>)
{
  v67 = a1;
  v1 = sub_10001DB30();
  v61 = *(v1 - 8);
  v62 = v1;
  v2 = *(v61 + 64);
  __chkstk_darwin(v1);
  v4 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_100001C34(&qword_10002CCF0, &qword_10001FBE8);
  v5 = *(*(v68 - 8) + 64);
  __chkstk_darwin(v68);
  v7 = (&v55 - v6);
  v57 = sub_100001C34(&qword_10002CCF8, &qword_10001FBF0);
  v8 = *(*(v57 - 8) + 64);
  __chkstk_darwin(v57);
  v10 = &v55 - v9;
  v59 = sub_100001C34(&qword_10002CD00, &qword_10001FBF8);
  v11 = *(*(v59 - 8) + 64);
  v12 = __chkstk_darwin(v59);
  v60 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v63 = &v55 - v14;
  v58 = sub_100001C34(&qword_10002CD08, &unk_10001FC00);
  v15 = *(*(v58 - 8) + 64);
  v16 = __chkstk_darwin(v58);
  v66 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v55 - v19;
  __chkstk_darwin(v18);
  v65 = &v55 - v21;
  v22 = sub_100001C34(&qword_10002CAD0, &qword_10001F8B8);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v64 = &v55 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = &v55 - v26;
  if (FIUICircularWorkoutGradientImageWithGoal())
  {
    *&v69 = sub_10001DEF0();
    v56 = v27;
    sub_10001DE10();

    v28 = sub_10001DF00();
    v29 = sub_10001DC30();
    KeyPath = swift_getKeyPath();
    v31 = (v7 + *(sub_100001C34(&qword_10002CD10, &unk_10001FC40) + 36));
    v32 = *(sub_100001C34(&qword_10002C940, &qword_10001F6D8) + 28);
    v33 = enum case for Image.Scale.small(_:);
    v34 = sub_10001DF30();
    (*(*(v34 - 8) + 104))(v31 + v32, v33, v34);
    *v31 = swift_getKeyPath();
    *v7 = v28;
    v7[1] = KeyPath;
    v7[2] = v29;
    sub_10001DF80();
    sub_10001D920();
    v35 = (v7 + *(v68 + 36));
    v36 = v70;
    *v35 = v69;
    v35[1] = v36;
    v35[2] = v71;
    v37 = [objc_opt_self() metricColorsForGoalTypeIdentifier:0];
    v38 = [v37 nonGradientTextColor];

    if (v38)
    {
      v39 = sub_10001DEE0();
      sub_1000035C0(v7, v10, &qword_10002CCF0, &qword_10001FBE8);
      *&v10[*(v57 + 36)] = v39;
      sub_10001DB10();
      sub_100018D08(&qword_10002CD18, &qword_10002CCF8, &qword_10001FBF0, sub_100018A34);
      v40 = v60;
      sub_10001DE40();
      (*(v61 + 8))(v4, v62);
      sub_100004088(v10, &qword_10002CCF8, &qword_10001FBF0);
      sub_10001DAF0();
      v41 = sub_10001DD30();
      v43 = v42;
      v45 = v44;
      v46 = v63;
      sub_10001D970();
      sub_100003470(v41, v43, v45 & 1);

      sub_100004088(v40, &qword_10002CD00, &qword_10001FBF8);
      v47 = &v20[*(v58 + 36)];
      v48 = &v47[*(sub_100001C34(&qword_10002CAE8, &unk_10001FED0) + 40)];
      sub_10001D980();
      *v47 = 0;
      sub_1000035C0(v46, v20, &qword_10002CD00, &qword_10001FBF8);
      v49 = v65;
      sub_1000035C0(v20, v65, &qword_10002CD08, &unk_10001FC00);
      v50 = v56;
      v51 = v64;
      sub_100003A7C(v56, v64, &qword_10002CAD0, &qword_10001F8B8);
      v52 = v66;
      sub_100003A7C(v49, v66, &qword_10002CD08, &unk_10001FC00);
      v53 = v67;
      sub_100003A7C(v51, v67, &qword_10002CAD0, &qword_10001F8B8);
      v54 = sub_100001C34(&qword_10002CD30, &qword_10001FC80);
      sub_100003A7C(v52, v53 + *(v54 + 48), &qword_10002CD08, &unk_10001FC00);
      sub_100004088(v49, &qword_10002CD08, &unk_10001FC00);
      sub_100004088(v50, &qword_10002CAD0, &qword_10001F8B8);
      sub_100004088(v52, &qword_10002CD08, &unk_10001FC00);
      sub_100004088(v51, &qword_10002CAD0, &qword_10001F8B8);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

unint64_t sub_100018A34()
{
  result = qword_10002CD20;
  if (!qword_10002CD20)
  {
    sub_1000036E4(&qword_10002CCF0, &qword_10001FBE8);
    sub_100018AC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CD20);
  }

  return result;
}

unint64_t sub_100018AC0()
{
  result = qword_10002CD28;
  if (!qword_10002CD28)
  {
    sub_1000036E4(&qword_10002CD10, &unk_10001FC40);
    sub_1000118F4();
    sub_1000039E0(&qword_10002C938, &qword_10002C940, &qword_10001F6D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CD28);
  }

  return result;
}

unint64_t sub_100018B78()
{
  result = qword_10002CD48;
  if (!qword_10002CD48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10002CD48);
  }

  return result;
}

unint64_t sub_100018BC4()
{
  result = qword_10002CD60;
  if (!qword_10002CD60)
  {
    sub_1000036E4(&qword_10002CD58, &qword_10001FCA0);
    sub_100018C50();
    sub_100018E3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CD60);
  }

  return result;
}

unint64_t sub_100018C50()
{
  result = qword_10002CD68;
  if (!qword_10002CD68)
  {
    sub_1000036E4(&qword_10002CD70, &qword_10001FCA8);
    sub_100018D08(&qword_10002CD78, &qword_10002CD80, &qword_10001FCB0, sub_100018DB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CD68);
  }

  return result;
}

uint64_t sub_100018D08(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000036E4(a2, a3);
    a4();
    sub_1000039E0(&qword_10002C270, &qword_10002C278, &unk_10001F900);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100018DB8()
{
  result = qword_10002CD88;
  if (!qword_10002CD88)
  {
    sub_1000036E4(&qword_10002CD90, &qword_10001FCB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CD88);
  }

  return result;
}

unint64_t sub_100018E3C()
{
  result = qword_10002CD98;
  if (!qword_10002CD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CD98);
  }

  return result;
}

uint64_t sub_100018ED4()
{
  v0 = sub_100018FD0();

  return static WidgetBundleBuilder.buildBlock<A>(_:)(v0, &type metadata for MirroredWidgetLiveActivity, v0);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100018F50();
  sub_10001D910();
  return 0;
}

unint64_t sub_100018F50()
{
  result = qword_10002CDB0;
  if (!qword_10002CDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CDB0);
  }

  return result;
}

unint64_t sub_100018FD0()
{
  result = qword_10002CDB8;
  if (!qword_10002CDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CDB8);
  }

  return result;
}

uint64_t sub_100019070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = sub_10001D8B0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v24 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v20 - v7;
  if (sub_10001D890())
  {
    v9 = &type metadata for ResumeMirroredWorkout;
    v10 = sub_100004754();
  }

  else
  {
    v9 = &type metadata for PauseMirroredWorkout;
    v10 = sub_100004E94();
  }

  v29[3] = v9;
  v29[4] = v10;
  v22 = *(v4 + 16);
  v22(v8, a1, v3);
  sub_100019ABC(v29, v28);
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v21 = a1;
  v12 = (v11 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  v14 = *(v4 + 32);
  v26 = v13;
  v14(v13 + v11, v8, v3);
  sub_100019BBC(v28, v13 + v12);
  v15 = v24;
  v16 = v21;
  v17 = v22;
  v22(v24, v21, v3);
  v25 = swift_allocObject();
  v14(v25 + v11, v15, v3);
  v17(v15, v16, v3);
  v23 = swift_allocObject();
  v14(v23 + v11, v15, v3);
  v17(v15, v16, v3);
  v18 = swift_allocObject();
  v14(v18 + v11, v15, v3);
  sub_100001C34(&qword_10002CDC0, &qword_10001FD60);
  type metadata accessor for DynamicIslandWorkoutTimeView();
  sub_1000039E0(&qword_10002CDC8, &qword_10002CDC0, &qword_10001FD60);
  sub_10001A6D4();
  sub_10001AE54(&qword_10002CDD8, type metadata accessor for DynamicIslandWorkoutTimeView);
  sub_10001DFC0();
  return sub_100005EBC(v29);
}

uint64_t sub_100019414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a3;
  v37 = sub_100001C34(&qword_10002CDE0, &qword_10001FD68);
  v35 = *(v37 - 8);
  v5 = *(v35 + 64);
  __chkstk_darwin(v37);
  v29 = &v26 - v6;
  v34 = sub_100001C34(&qword_10002CDE8, &qword_10001FD70);
  v33 = *(v34 - 8);
  v7 = *(v33 + 64);
  __chkstk_darwin(v34);
  v9 = &v26 - v8;
  v32 = sub_100001C34(&qword_10002CDF0, &qword_10001FD78);
  v31 = *(v32 - 8);
  v10 = *(v31 + 64);
  __chkstk_darwin(v32);
  v12 = &v26 - v11;
  v30 = sub_100001C34(&qword_10002CDF8, &qword_10001FD80);
  v28 = *(v30 - 8);
  v13 = *(v28 + 64);
  __chkstk_darwin(v30);
  v15 = &v26 - v14;
  v16 = sub_10001E060();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v27 = sub_100001C34(&qword_10002CE00, &qword_10001FD88);
  v18 = *(v27 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v27);
  v21 = &v26 - v20;
  sub_10001E040();
  v45 = a1;
  v46 = a2;
  v22 = sub_100001C34(&qword_10002CE08, &qword_10001FD90);
  v23 = sub_1000039E0(&qword_10002CE10, &qword_10002CE08, &qword_10001FD90);
  sub_10001E000();
  sub_10001E050();
  v44 = a1;
  type metadata accessor for DynamicIslandWorkoutTimeView();
  sub_10001AE54(&qword_10002CDD8, type metadata accessor for DynamicIslandWorkoutTimeView);
  sub_10001E000();
  sub_10001E030();
  v43 = a1;
  sub_100001C34(&qword_10002CE18, &qword_10001FD98);
  sub_10001A7A4();
  sub_10001E000();
  v42 = v21;
  sub_100001C34(&qword_10002CE38, &qword_10001FDA8);
  v47 = v22;
  v48 = v23;
  swift_getOpaqueTypeConformance2();
  sub_10001E010();
  v40 = v9;
  v41 = v15;
  sub_100001C34(&qword_10002CE40, &qword_10001FDB0);
  sub_1000039E0(&qword_10002CE48, &qword_10002CE40, &qword_10001FDB0);
  v24 = v29;
  sub_10001E010();
  v38 = v24;
  v39 = v12;
  sub_100001C34(&qword_10002CDC0, &qword_10001FD60);
  sub_1000039E0(&qword_10002CDC8, &qword_10002CDC0, &qword_10001FD60);
  sub_10001E010();
  (*(v35 + 8))(v24, v37);
  (*(v33 + 8))(v9, v34);
  (*(v31 + 8))(v12, v32);
  (*(v28 + 8))(v15, v30);
  return (*(v18 + 8))(v21, v27);
}

uint64_t sub_100019ABC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100019B20()
{
  v1 = sub_10001D8B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  sub_100005EBC((v0 + v5));

  return _swift_deallocObject(v0, v5 + 40, v3 | 7);
}

uint64_t sub_100019BBC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100019BD4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_10001D8B0() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_100019414(v1 + v4, v5, a1);
}

uint64_t sub_100019C70(double a1, uint64_t a2, uint64_t a3)
{
  if (sub_10001D800())
  {
    v7[0] = sub_10001D820();
    *&v7[1] = a1;
    v8 = 0;
    sub_10001AEF8();
    sub_10001AF4C();
    return sub_10001DB60();
  }

  else
  {
    v6 = sub_10001D840();
    sub_100019ABC(a3, v10);
    *v9 = a1;
    v9[1] = v6;
    v10[40] = sub_10001D890() & 1;
    sub_10001AE9C(v9, v7);
    v8 = 1;
    sub_10001AEF8();
    sub_10001AF4C();
    sub_10001DB60();
    return sub_10001AFA0(v9);
  }
}

uint64_t sub_100019D78@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v1 = sub_10001E100();
  v2 = *(v1 - 8);
  v47 = v1;
  v48 = v2;
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v50 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_100001C34(&qword_10002CA70, &qword_10001F860);
  v5 = *(*(v51 - 8) + 64);
  __chkstk_darwin(v51);
  v49 = v46 - v6;
  v53 = sub_100001C34(&qword_10002CE70, &qword_10001FDD8);
  v7 = *(*(v53 - 8) + 64);
  __chkstk_darwin(v53);
  v52 = v46 - v8;
  v9 = sub_10001D960();
  v54 = *(v9 - 8);
  v10 = *(v54 + 64);
  v11 = __chkstk_darwin(v9);
  v13 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v46 - v14;
  v16 = sub_10001E080();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100001C34(&qword_10002CBB0, &qword_10001F9C8);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v24 = v46 - v23;
  v25 = sub_10001D830();
  if (v25)
  {
    v26 = v25;
    v56 = v25;
    (*(v17 + 104))(v20, enum case for WorkoutViewStyle.iOSLiveActivityNotificationMetric(_:), v16);
    sub_100017630();
    sub_10001DD50();
    (*(v17 + 8))(v20, v16);
    sub_10001D950();
    v27 = v54;
    (*(v54 + 16))(v13, v15, v9);
    sub_10001AE54(&qword_10002CAA0, &type metadata accessor for MoveTransition);
    v28 = sub_10001D930();
    (*(v27 + 8))(v15, v9);
    *&v24[*(v21 + 36)] = v28;
    sub_100003A7C(v24, v52, &qword_10002CBB0, &qword_10001F9C8);
    swift_storeEnumTagMultiPayload();
    sub_10001754C();
    sub_100017684();
    v29 = v55;
    sub_10001DB60();

    sub_100004088(v24, &qword_10002CBB0, &qword_10001F9C8);
    v30 = sub_100001C34(&qword_10002CE30, &qword_10001FDA0);
    return (*(*(v30 - 8) + 56))(v29, 0, 1, v30);
  }

  else
  {
    v32 = v49;
    v33 = v50;
    v46[0] = v9;
    v46[1] = v21;
    v34 = v54;
    v35 = sub_10001D880();
    v36 = v55;
    if (v35)
    {
      if (*(v35 + 16))
      {
        sub_10001E0F0();
        (*(v17 + 104))(v20, enum case for WorkoutViewStyle.iOSLiveActivityMetric(_:), v16);
        sub_10001AE54(&qword_10002CA98, &type metadata accessor for HorizontalMetricRow);
        v37 = v32;
        v38 = v47;
        sub_10001DD50();
        (*(v17 + 8))(v20, v16);
        (*(v48 + 8))(v33, v38);
        sub_10001D950();
        v39 = v46[0];
        (*(v34 + 16))(v13, v15, v46[0]);
        sub_10001AE54(&qword_10002CAA0, &type metadata accessor for MoveTransition);
        v40 = sub_10001D930();
        (*(v34 + 8))(v15, v39);
        v41 = v52;
        *(v37 + *(v51 + 36)) = v40;
        sub_100003A7C(v37, v41, &qword_10002CA70, &qword_10001F860);
        swift_storeEnumTagMultiPayload();
        sub_10001754C();
        sub_100017684();
        v42 = v55;
        sub_10001DB60();
        sub_100004088(v37, &qword_10002CA70, &qword_10001F860);
        v43 = sub_100001C34(&qword_10002CE30, &qword_10001FDA0);
        return (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
      }
    }

    v44 = sub_100001C34(&qword_10002CE30, &qword_10001FDA0);
    v45 = *(*(v44 - 8) + 56);

    return v45(v36, 1, 1, v44);
  }
}

uint64_t sub_10001A4C0@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  sub_10001D8A0();
  v4 = type metadata accessor for DynamicIslandWorkoutTimeView();
  v5 = a2 + v4[5];
  sub_10001D850();
  v6 = a2 + v4[6];
  result = sub_10001D870();
  *(a2 + v4[7]) = a1;
  return result;
}

double sub_10001A588@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_10001D820();
  v3 = sub_10001D890();
  v4 = sub_10001D800();
  *a1 = v2;
  *(a1 + 8) = v3 & 1;
  *(a1 + 9) = v4 & 1;
  result = 21.0;
  *(a1 + 16) = xmmword_10001FD50;
  return result;
}

uint64_t sub_10001A5E8()
{
  v1 = sub_10001D8B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

unint64_t sub_10001A6D4()
{
  result = qword_10002CDD0;
  if (!qword_10002CDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CDD0);
  }

  return result;
}

uint64_t sub_10001A728@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = sub_10001DAA0();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  return sub_100019C70(50.0, v4, v3);
}

unint64_t sub_10001A7A4()
{
  result = qword_10002CE20;
  if (!qword_10002CE20)
  {
    sub_1000036E4(&qword_10002CE18, &qword_10001FD98);
    sub_10001A828();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CE20);
  }

  return result;
}

unint64_t sub_10001A828()
{
  result = qword_10002CE28;
  if (!qword_10002CE28)
  {
    sub_1000036E4(&qword_10002CE30, &qword_10001FDA0);
    sub_10001754C();
    sub_100017684();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CE28);
  }

  return result;
}

uint64_t sub_10001A8B4()
{
  v1 = *(v0 + 16);
  sub_100001C34(&qword_10002CE00, &qword_10001FD88);
  return sub_10001DFF0();
}

uint64_t sub_10001A8F4@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v1 = sub_100001C34(&qword_10002CE50, &qword_10001FDB8);
  v22 = *(v1 - 8);
  v2 = v22;
  v3 = *(v22 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v22 - v7;
  v9 = sub_100001C34(&qword_10002CE40, &qword_10001FDB0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v22 - v14;
  sub_100001C34(&qword_10002CDE0, &qword_10001FD68);
  sub_10001E020();
  sub_100001C34(&qword_10002CDF0, &qword_10001FD78);
  sub_10001DFF0();
  sub_100003A7C(v15, v13, &qword_10002CE40, &qword_10001FDB0);
  v16 = *(v2 + 16);
  v17 = v1;
  v16(v6, v8, v1);
  v18 = v23;
  sub_100003A7C(v13, v23, &qword_10002CE40, &qword_10001FDB0);
  v19 = sub_100001C34(&qword_10002CE58, &qword_10001FDC0);
  v16((v18 + *(v19 + 48)), v6, v17);
  v20 = *(v22 + 8);
  v20(v8, v17);
  sub_100004088(v15, &qword_10002CE40, &qword_10001FDB0);
  v20(v6, v17);
  return sub_100004088(v13, &qword_10002CE40, &qword_10001FDB0);
}

uint64_t sub_10001AB74@<X0>(char *a1@<X8>)
{
  v29 = a1;
  v1 = sub_100001C34(&qword_10002CE60, &qword_10001FDC8);
  v27 = *(v1 - 8);
  v2 = v27;
  v3 = *(v27 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v26 - v7;
  v9 = sub_100001C34(&qword_10002CE38, &qword_10001FDA8);
  v28 = *(v9 - 8);
  v10 = v28;
  v11 = *(v28 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v26 - v15;
  sub_100001C34(&qword_10002CDE8, &qword_10001FD70);
  sub_10001E020();
  sub_100001C34(&qword_10002CDF8, &qword_10001FD80);
  v26 = v8;
  sub_10001DFF0();
  v17 = *(v10 + 16);
  v17(v14, v16, v9);
  v18 = *(v2 + 16);
  v19 = v8;
  v20 = v1;
  v18(v6, v19, v1);
  v21 = v29;
  v17(v29, v14, v9);
  v22 = &v21[*(sub_100001C34(&qword_10002CE68, &qword_10001FDD0) + 48)];
  v18(v22, v6, v20);
  v23 = *(v27 + 8);
  v23(v26, v20);
  v24 = *(v28 + 8);
  v24(v16, v9);
  v23(v6, v20);
  return (v24)(v14, v9);
}

uint64_t sub_10001AE44@<X0>(char *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_10001AB74(a1);
}

uint64_t sub_10001AE4C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_10001A8F4(a1);
}

uint64_t sub_10001AE54(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10001AEF8()
{
  result = qword_10002CE78;
  if (!qword_10002CE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CE78);
  }

  return result;
}

unint64_t sub_10001AF4C()
{
  result = qword_10002CE80;
  if (!qword_10002CE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CE80);
  }

  return result;
}

uint64_t sub_10001B02C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v33 = a1;
  v34 = a2;
  v2 = sub_10001DB90();
  v31 = *(v2 - 8);
  v32 = v2;
  v3 = *(v31 + 64);
  __chkstk_darwin(v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100001C34(&qword_10002CE88, &qword_10001FE80);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v10 = &v31 - v9;
  v11 = sub_100001C34(&qword_10002CE90, &qword_10001FE88);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v15 = &v31 - v14;
  v16 = sub_100001C34(&qword_10002CE98, &qword_10001FE90);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v20 = &v31 - v19;
  sub_10001DBA0();
  sub_10001DBB0();
  v21 = sub_10001DEA0();
  KeyPath = swift_getKeyPath();
  (*(v31 + 32))(v10, v5, v32);
  v23 = &v10[*(v7 + 44)];
  *v23 = KeyPath;
  v23[1] = v21;
  sub_10001DBB0();
  v24 = sub_10001DEA0();
  LOBYTE(v7) = sub_10001DBF0();
  sub_1000035C0(v10, v15, &qword_10002CE88, &qword_10001FE80);
  v25 = &v15[*(v12 + 44)];
  *v25 = v24;
  v25[8] = v7;
  sub_1000035C0(v15, v20, &qword_10002CE90, &qword_10001FE88);
  *&v20[*(v17 + 44)] = 256;
  v26 = sub_100001C34(&qword_10002CEA0, &qword_10001FEC8);
  v27 = v34;
  v28 = (v34 + *(v26 + 36));
  v29 = &v28[*(sub_100001C34(&qword_10002CAE8, &unk_10001FED0) + 40)];
  sub_10001D980();
  *v28 = 0;
  return sub_1000035C0(v20, v27, &qword_10002CE98, &qword_10001FE90);
}

uint64_t sub_10001B338@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001D9D0();
  *a1 = result;
  return result;
}

uint64_t sub_10001B364@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001D9D0();
  *a1 = result;
  return result;
}

uint64_t sub_10001B390(uint64_t *a1)
{
  v1 = *a1;

  return sub_10001D9E0();
}

uint64_t sub_10001B3BC(uint64_t *a1)
{
  v1 = *a1;

  return sub_10001D9E0();
}

unint64_t sub_10001B3EC()
{
  result = qword_10002CEA8;
  if (!qword_10002CEA8)
  {
    sub_1000036E4(&qword_10002CEA0, &qword_10001FEC8);
    sub_10001B4A4();
    sub_1000039E0(&qword_10002CEF0, &qword_10002CAE8, &unk_10001FED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CEA8);
  }

  return result;
}

unint64_t sub_10001B4A4()
{
  result = qword_10002CEB0;
  if (!qword_10002CEB0)
  {
    sub_1000036E4(&qword_10002CE98, &qword_10001FE90);
    sub_10001B55C();
    sub_1000039E0(&qword_10002CEE0, &qword_10002CEE8, qword_10001FEE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CEB0);
  }

  return result;
}

unint64_t sub_10001B55C()
{
  result = qword_10002CEB8;
  if (!qword_10002CEB8)
  {
    sub_1000036E4(&qword_10002CE90, &qword_10001FE88);
    sub_10001B614();
    sub_1000039E0(&qword_10002CED0, &qword_10002CED8, &qword_10001FEE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CEB8);
  }

  return result;
}

unint64_t sub_10001B614()
{
  result = qword_10002CEC0;
  if (!qword_10002CEC0)
  {
    sub_1000036E4(&qword_10002CE88, &qword_10001FE80);
    sub_10001B6CC();
    sub_1000039E0(&qword_10002C790, &qword_10002C798, &qword_10001F4A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CEC0);
  }

  return result;
}

unint64_t sub_10001B6CC()
{
  result = qword_10002CEC8;
  if (!qword_10002CEC8)
  {
    sub_10001DB90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CEC8);
  }

  return result;
}

uint64_t sub_10001B738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10001D8B0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10001B7F8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_10001D8B0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for MirroredLockScreenView()
{
  result = qword_10002CF50;
  if (!qword_10002CF50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001B8E8()
{
  result = sub_10001D8B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10001B980@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v38 = type metadata accessor for LockScreenInSessionView();
  v2 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38);
  v33 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_100001C34(&qword_10002CF88, &qword_10001FF78);
  v4 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34);
  v36 = &v31 - v5;
  v6 = sub_100001C34(&qword_10002CF90, &qword_10001FF80);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v31 - v8;
  v10 = sub_10001D8B0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for LockScreenSummaryView();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_100001C34(&qword_10002CF98, &qword_10001FF88);
  v32 = *(v35 - 8);
  v19 = *(v32 + 64);
  __chkstk_darwin(v35);
  v21 = &v31 - v20;
  v22 = *(type metadata accessor for MirroredLockScreenView() + 20);
  v23 = sub_10001D800();
  v24 = *(v11 + 16);
  if (v23)
  {
    v24(v14, v1 + v22, v10);
    sub_100012FC8(v14, v18);
    v39 = 0;
    v40 = 0xE000000000000000;
    sub_10001E260(32);

    v39 = 0xD00000000000001ELL;
    v40 = 0x8000000100025BB0;
    sub_10001E170(*v1);
    sub_10001D690();

    v25 = sub_10001BF40(&qword_10002CFA0, type metadata accessor for LockScreenSummaryView);
    sub_10001DD90();
    sub_10001BF88(v9);
    sub_10001BFF0(v18, type metadata accessor for LockScreenSummaryView);
    v26 = v32;
    v27 = v35;
    (*(v32 + 16))(v36, v21, v35);
    swift_storeEnumTagMultiPayload();
    v39 = v15;
    v40 = v25;
    swift_getOpaqueTypeConformance2();
    sub_10001BF40(&qword_10002CFA8, type metadata accessor for LockScreenInSessionView);
    sub_10001DB60();
    return (*(v26 + 8))(v21, v27);
  }

  else
  {
    v29 = v33;
    v24(v33, v1 + v22, v10);
    sub_10001BEDC(v29, v36);
    swift_storeEnumTagMultiPayload();
    v30 = sub_10001BF40(&qword_10002CFA0, type metadata accessor for LockScreenSummaryView);
    v39 = v15;
    v40 = v30;
    swift_getOpaqueTypeConformance2();
    sub_10001BF40(&qword_10002CFA8, type metadata accessor for LockScreenInSessionView);
    sub_10001DB60();
    return sub_10001BFF0(v29, type metadata accessor for LockScreenInSessionView);
  }
}

uint64_t sub_10001BEDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LockScreenInSessionView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001BF40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001BF88(uint64_t a1)
{
  v2 = sub_100001C34(&qword_10002CF90, &qword_10001FF80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001BFF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10001C054()
{
  result = qword_10002CFB0;
  if (!qword_10002CFB0)
  {
    sub_1000036E4(&qword_10002CFB8, &qword_10001FF90);
    type metadata accessor for LockScreenSummaryView();
    sub_10001BF40(&qword_10002CFA0, type metadata accessor for LockScreenSummaryView);
    swift_getOpaqueTypeConformance2();
    sub_10001BF40(&qword_10002CFA8, type metadata accessor for LockScreenInSessionView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CFB0);
  }

  return result;
}

__n128 sub_10001C170(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10001C17C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_10001C1C4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_10001C214()
{
  v0 = sub_10001DE60();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001C34(&qword_10002D068, qword_100020138);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10001ED00;
  v6 = enum case for Color.RGBColorSpace.sRGB(_:);
  v7 = *(v1 + 104);
  v7(v4, enum case for Color.RGBColorSpace.sRGB(_:), v0);
  *(v5 + 32) = sub_10001DED0();
  v7(v4, v6, v0);
  result = sub_10001DED0();
  *(v5 + 40) = result;
  qword_10002CFC0 = v5;
  return result;
}

void sub_10001C390()
{
  v0 = [objc_opt_self() metricColorsForGoalTypeIdentifier:0];
  v1 = [v0 nonGradientTextColor];

  if (v1)
  {
    qword_10002CFC8 = sub_10001DEE0();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10001C408()
{
  v0 = sub_10001DE60();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Color.RGBColorSpace.sRGB(_:));
  result = sub_10001DED0();
  qword_10002CFD0 = result;
  return result;
}

uint64_t sub_10001C4E8()
{
  result = sub_10001DE90();
  qword_10002CFD8 = result;
  return result;
}

uint64_t sub_10001C530(uint64_t a1, uint64_t *a2)
{
  sub_10001DE70();
  v3 = sub_10001DEA0();

  *a2 = v3;
  return result;
}

uint64_t sub_10001C584@<X0>(void *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v6 = (a2 >> 8) & 1;
  v7 = sub_10001DBE0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v31[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_100001C34(&qword_10002CFF0, &qword_100020080);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v31[-v14];
  sub_10001CEEC(v3 & 1, v6);
  sub_10001DFA0();
  sub_10001DFB0();
  sub_10001DF70();
  sub_10001D940();
  v16 = v33;
  sub_10001DF80();
  sub_10001D920();
  *&v32[6] = v36;
  *&v32[22] = v37;
  *&v32[38] = v38;
  sub_10001DF90();
  v18 = v17;
  v20 = v19;
  v21 = &v15[*(sub_100001C34(&qword_10002CFF8, &qword_100020088) + 36)];
  sub_10001C8B4(a1, v3 & 0x101, v21);
  v22 = sub_10001DF80();
  v24 = v23;
  v25 = &v21[*(sub_100001C34(&qword_10002D000, &qword_100020090) + 36)];
  *v25 = v22;
  v25[1] = v24;
  *v15 = v16;
  v26 = v34;
  *(v15 + 24) = v35;
  *(v15 + 8) = v26;
  *(v15 + 20) = 256;
  *(v15 + 11) = *&v32[46];
  *(v15 + 12) = 0xBFD657184AE74487;
  *(v15 + 74) = *&v32[32];
  v27 = *v32;
  *(v15 + 58) = *&v32[16];
  *(v15 + 42) = v27;
  *(v15 + 13) = v18;
  *(v15 + 14) = v20;
  v15[*(v12 + 36)] = 1;
  sub_10001DBC0();
  sub_10001D038();
  sub_10001DE20();
  (*(v8 + 8))(v11, v7);
  sub_100004088(v15, &qword_10002CFF0, &qword_100020080);
  v28 = (a3 + *(sub_100001C34(&qword_10002D050, &unk_1000200B0) + 36));
  v29 = &v28[*(sub_100001C34(&qword_10002CAE8, &unk_10001FED0) + 40)];
  result = sub_10001D980();
  *v28 = 0;
  return result;
}

uint64_t sub_10001C8B4@<X0>(void *a1@<X0>, __int16 a2@<W1>, void *a3@<X8>)
{
  v34[1] = a3;
  v5 = sub_100001C34(&qword_10002C990, &qword_10001F730);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v34 - v7;
  v9 = sub_100001C34(&qword_10002CD10, &unk_10001FC40);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (v34 - v11);
  v13 = sub_100001C34(&qword_10002D058, &qword_1000200C0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = v34 - v15;
  v34[0] = a1;
  v17 = [a1 symbolName];
  if (v17)
  {
    v18 = v17;
    sub_10001E140();
  }

  v19 = sub_10001DF20();
  sub_10001DCA0();
  v20 = sub_10001DC80();
  (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
  v21 = sub_10001DCD0();
  sub_100004088(v8, &qword_10002C990, &qword_10001F730);
  KeyPath = swift_getKeyPath();
  v23 = (v12 + *(v9 + 36));
  v24 = *(sub_100001C34(&qword_10002C940, &qword_10001F6D8) + 28);
  v25 = enum case for Image.Scale.medium(_:);
  v26 = sub_10001DF30();
  (*(*(v26 - 8) + 104))(v23 + v24, v25, v26);
  *v23 = swift_getKeyPath();
  *v12 = v19;
  v12[1] = KeyPath;
  v12[2] = v21;
  if ((a2 & 0x100) != 0)
  {
    if (qword_10002C128 != -1)
    {
      swift_once();
    }

    v27 = &qword_10002CFD8;
  }

  else if (a2)
  {
    if (qword_10002C138 != -1)
    {
      swift_once();
    }

    v27 = &qword_10002CFE8;
  }

  else
  {
    if (qword_10002C118 != -1)
    {
      swift_once();
    }

    v27 = &qword_10002CFC8;
  }

  v28 = *v27;

  sub_10001D340(v12, v16);
  *&v16[*(v13 + 36)] = v28;
  v29 = [v34[0] localizedName];
  v30 = sub_10001E140();
  v32 = v31;

  v34[2] = v30;
  v34[3] = v32;
  sub_10001D3B0();
  sub_100003A28();
  sub_10001DE00();

  return sub_100004088(v16, &qword_10002D058, &qword_1000200C0);
}

uint64_t sub_10001CCC4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  if (*(v1 + 9))
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  return sub_10001C584(*v1, v4 | *(v1 + 8), a1);
}

BOOL sub_10001CCE8(double *a1, double *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  v6 = a1[2];
  v5 = a1[3];
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 9);
  v11 = a2[2];
  v10 = a2[3];
  sub_10001D468();
  v12 = sub_10001E200();
  result = 0;
  if ((v12 & 1) != 0 && ((v3 ^ v8) & 1) == 0 && ((v4 ^ v9) & 1) == 0 && v6 == v11)
  {
    return v5 == v10;
  }

  return result;
}

uint64_t sub_10001CDA8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001DA50();
  *a1 = result;
  return result;
}

uint64_t sub_10001CDD4(uint64_t *a1)
{
  v1 = *a1;

  return sub_10001DA60();
}

uint64_t sub_10001CE24(uint64_t a1)
{
  v2 = sub_10001DF30();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_10001D9C0();
}

uint64_t sub_10001CEEC(char a1, char a2)
{
  if (a2)
  {
    sub_100001C34(&qword_10002D068, qword_100020138);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_10001ED00;
    if (qword_10002C120 != -1)
    {
      swift_once();
    }

    v3 = qword_10002CFD0;
LABEL_9:
    *(v2 + 32) = v3;
    *(v2 + 40) = v3;
    swift_retain_n();
    return v2;
  }

  if (a1)
  {
    sub_100001C34(&qword_10002D068, qword_100020138);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_10001ED00;
    if (qword_10002C130 != -1)
    {
      swift_once();
    }

    v3 = qword_10002CFE0;
    goto LABEL_9;
  }

  if (qword_10002C110 != -1)
  {
    swift_once();
  }

  v2 = qword_10002CFC0;

  return v2;
}

unint64_t sub_10001D038()
{
  result = qword_10002D008;
  if (!qword_10002D008)
  {
    sub_1000036E4(&qword_10002CFF0, &qword_100020080);
    sub_10001D0C4();
    sub_100018E3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002D008);
  }

  return result;
}

unint64_t sub_10001D0C4()
{
  result = qword_10002D010;
  if (!qword_10002D010)
  {
    sub_1000036E4(&qword_10002CFF8, &qword_100020088);
    sub_10001D17C();
    sub_1000039E0(&qword_10002D048, &qword_10002D000, &qword_100020090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002D010);
  }

  return result;
}

unint64_t sub_10001D17C()
{
  result = qword_10002D018;
  if (!qword_10002D018)
  {
    sub_1000036E4(&qword_10002D020, &qword_100020098);
    sub_10001D208();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002D018);
  }

  return result;
}

unint64_t sub_10001D208()
{
  result = qword_10002D028;
  if (!qword_10002D028)
  {
    sub_1000036E4(&qword_10002D030, &qword_1000200A0);
    sub_1000039E0(&qword_10002D038, &qword_10002D040, &qword_1000200A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002D028);
  }

  return result;
}

uint64_t sub_10001D2C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001DA50();
  *a1 = result;
  return result;
}

uint64_t sub_10001D2EC(uint64_t *a1)
{
  v1 = *a1;

  return sub_10001DA60();
}

uint64_t sub_10001D340(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001C34(&qword_10002CD10, &unk_10001FC40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10001D3B0()
{
  result = qword_10002D060;
  if (!qword_10002D060)
  {
    sub_1000036E4(&qword_10002D058, &qword_1000200C0);
    sub_100018AC0();
    sub_1000039E0(&qword_10002C270, &qword_10002C278, &unk_10001F900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002D060);
  }

  return result;
}

unint64_t sub_10001D468()
{
  result = qword_10002D070;
  if (!qword_10002D070)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10002D070);
  }

  return result;
}

unint64_t sub_10001D4B8()
{
  result = qword_10002D078;
  if (!qword_10002D078)
  {
    sub_1000036E4(&qword_10002D050, &unk_1000200B0);
    sub_1000036E4(&qword_10002CFF0, &qword_100020080);
    sub_10001D038();
    swift_getOpaqueTypeConformance2();
    sub_1000039E0(&qword_10002CEF0, &qword_10002CAE8, &unk_10001FED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002D078);
  }

  return result;
}