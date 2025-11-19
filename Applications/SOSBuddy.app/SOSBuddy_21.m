uint64_t sub_1001E0978(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    v3 = *(a1 + 48);
    v5[2] = *(a1 + 32);
    v5[3] = v3;
    v6 = *(a1 + 64);
    v4 = *(a1 + 16);
    v5[0] = *a1;
    v5[1] = v4;
    v7 = 0;
    sub_1001E0A14(v5);
  }

  return result;
}

uint64_t sub_1001E0A14(uint64_t result)
{
  v2 = result;
  v3 = *(v1 + 80);
  v24 = *(v1 + 64);
  v25 = v3;
  v26 = *(v1 + 96);
  v4 = *(v1 + 48);
  v22 = *(v1 + 32);
  v23 = v4;
  v5 = *(v1 + 104);
  if (v5)
  {
    if (*(result + 72))
    {
      goto LABEL_7;
    }

LABEL_6:
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    result = Subject<>.send()();
    goto LABEL_7;
  }

  if (*(result + 72))
  {
    goto LABEL_6;
  }

  v6 = *(v1 + 80);
  v18[2] = *(v1 + 64);
  v18[3] = v6;
  v19 = *(v1 + 96);
  v7 = *(v1 + 48);
  v18[0] = *(v1 + 32);
  v18[1] = v7;
  v8 = *(result + 48);
  v20[2] = *(result + 32);
  v20[3] = v8;
  v21 = *(result + 64);
  v9 = *(result + 16);
  v20[0] = *result;
  v20[1] = v9;
  result = sub_10019E10C(v18, v20);
  if ((result & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + 89) = *(v2 + 57);
  v10 = *(v2 + 48);
  *(v1 + 64) = *(v2 + 32);
  *(v1 + 80) = v10;
  v11 = *(v2 + 16);
  *(v1 + 32) = *v2;
  *(v1 + 48) = v11;
  if (*(v1 + 104))
  {
    if (v5)
    {
      return result;
    }

LABEL_12:
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    return Subject<>.send()();
  }

  if (v5)
  {
    goto LABEL_12;
  }

  v12 = *(v2 + 48);
  v14[2] = *(v2 + 32);
  v14[3] = v12;
  v15 = *(v2 + 64);
  v13 = *(v2 + 16);
  v14[0] = *v2;
  v14[1] = v13;
  v16[2] = v24;
  v16[3] = v25;
  v17 = v26;
  v16[0] = v22;
  v16[1] = v23;
  result = sub_10019E10C(v14, v16);
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_1001E0BE4(unsigned __int8 *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = *(result + 16);
    v5 = *(v4 + 32);
    v6 = __CFADD__(v5, 1);
    v7 = v5 + 1;
    if (v6)
    {
      __break(1u);
    }

    else
    {
      *(v4 + 32) = v7;
      v8 = *a1;

      sub_1001E7960(v8);
      sub_1001E7CC4(a1[1]);
      sub_100217874(v4);

      if (*(v3 + 184) == 1)
      {
        swift_getObjectType();
        sub_10021798C();
        swift_getObjectType();
        sub_10021798C();
        v9 = *(type metadata accessor for DeviceOrientationSource.DeviceOrientationErrorState(0) + 24);

        sub_1001E0E0C(&a1[v9]);

        v10 = *(v3 + 64);

        *(v10 + 80) = sub_100203690(&a1[v9]);

        sub_1001F5060();

        swift_getObjectType();

        sub_1002179A4();

        swift_getObjectType();

        sub_1002179A4();

        sub_1000040A8(&qword_100367CD0);
        return swift_arrayDestroy();
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_1001E0E0C(uint64_t a1)
{
  if (*(v1 + 32))
  {
    *(v1 + 40) = 1;
  }

  else
  {
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
  }

  v3 = type metadata accessor for DeviceOrientationError(0);
  v4 = (*(*(v3 - 8) + 48))(a1, 1, v3) != 1;
  sub_1001F37FC(v4);
  result = sub_1001F2224();
  if (*(v1 + 32))
  {
    *(v1 + 41) = 1;
  }

  else
  {
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    return Subject<>.send()();
  }

  return result;
}

uint64_t sub_1001E0F68(uint64_t a1)
{
  v125 = a1;
  v1 = sub_1000040A8(&qword_10035E268);
  __chkstk_darwin(v1 - 8);
  v3 = &v108 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v108 - v5;
  v7 = sub_1000040A8(&qword_100359798);
  __chkstk_darwin(v7 - 8);
  v9 = &v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v108 - v11;
  v13 = type metadata accessor for ConnectionAssistantState(0);
  __chkstk_darwin(v13);
  v126 = (&v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = result;
    v119 = v12;
    v120 = v9;
    v122 = v3;
    v123 = v13;
    v121 = v6;
    sub_1000040A8(&qword_100367CD8);
    v17 = swift_allocObject();
    v18 = 0;
    *(v17 + 16) = xmmword_10028F0C0;
    *(v17 + 32) = v16[4];
    *(v17 + 40) = &off_100338D30;
    *(v17 + 48) = v16[5];
    *(v17 + 56) = &off_100338D30;
    v124 = v16[6];
    *(v17 + 64) = v124;
    *(v17 + 72) = &off_100338D30;
    *(v17 + 80) = v16[9];
    *(v17 + 88) = &off_100338D30;
    v118 = v16[10];
    *(v17 + 96) = v118;
    *(v17 + 104) = &off_100338D30;
    v117 = v16[11];
    *(v17 + 112) = v117;
    *(v17 + 120) = &off_100338D30;
    v116 = v16[7];
    *(v17 + 128) = v116;
    *(v17 + 136) = &off_100338D30;
    v115 = v16[8];
    *(v17 + 144) = v115;
    *(v17 + 152) = &off_100338D30;
    v114 = v16[13];
    *(v17 + 160) = v114;
    *(v17 + 168) = &off_100338D30;
    v113 = v16[14];
    *(v17 + 176) = v113;
    *(v17 + 184) = &off_100338D30;
    v112 = v16[12];
    *(v17 + 192) = v112;
    *(v17 + 200) = &off_100338D30;
    v111 = v16[15];
    *(v17 + 208) = v111;
    *(v17 + 216) = &off_100338D30;
    v110 = v16[16];
    *(v17 + 224) = v110;
    *(v17 + 232) = &off_100338D30;
    v109 = v16[17];
    *(v17 + 240) = v109;
    *(v17 + 248) = &off_100338D30;
    do
    {
      v19 = *(v17 + v18 + 40);
      ObjectType = swift_getObjectType();
      (*(v19 + 8))(ObjectType, v19);
      v18 += 16;
    }

    while (v18 != 224);
    v21 = v126;
    sub_1002031B4(v125, v126, type metadata accessor for ConnectionAssistantState);
    v22 = v21[1];
    v142 = *v21;
    v143[0] = v22;
    *(v143 + 9) = *(v21 + 25);

    sub_1001E1B5C(&v142);

    v23 = v16[4];
    v24 = v123;
    v124 = v21 + *(v123 + 60);
    v151 = *(v124 + 10);
    v25 = *(v124 + 4);
    v149 = *(v124 + 3);
    v150 = v25;
    v26 = *(v124 + 2);
    v147 = *(v124 + 1);
    v148 = v26;
    v146 = *v124;
    v27 = *(v23 + 120);
    v144[3] = *(v23 + 104);
    v144[4] = v27;
    v145 = *(v23 + 136);
    v28 = *(v23 + 88);
    v29 = *(v23 + 56);
    v144[1] = *(v23 + 72);
    v144[2] = v28;
    v144[0] = v29;

    sub_100006C20(&v146, v138, &unk_10035CEF0);
    sub_100006C20(v144, v138, &unk_10035CEF0);
    sub_1001FA118(&v146);
    v128 = *(v23 + 136);
    v30 = *(v23 + 120);
    v31 = *(v23 + 88);
    v127[3] = *(v23 + 104);
    v127[4] = v30;
    v127[2] = v31;
    v32 = *(v23 + 72);
    v127[0] = *(v23 + 56);
    v127[1] = v32;
    v33 = v149;
    *(v23 + 88) = v148;
    *(v23 + 104) = v33;
    *(v23 + 120) = v150;
    v34 = v151;
    v35 = v146;
    *(v23 + 72) = v147;
    *(v23 + 136) = v34;
    *(v23 + 56) = v35;
    sub_100008FA0(v127, &unk_10035CEF0);
    sub_1001FA41C(v144);
    sub_100008FA0(v144, &unk_10035CEF0);

    v36 = v16[5];
    v37 = v36[4];
    v140 = v36[3];
    v141[0] = v37;
    *(v141 + 9) = *(v36 + 73);

    sub_1001E7E14(&v142);
    v38 = v143[0];
    v36[3] = v142;
    v36[4] = v38;
    *(v36 + 73) = *(v143 + 9);
    sub_1001E7F30(&v140);

    v39 = v16[5];
    v118 = *(v24 + 36);
    v40 = v119;
    sub_100006C20(v126 + v118, v119, &qword_100359798);
    v41 = OBJC_IVAR____TtC8SOSBuddy11TargetModel_link;
    swift_beginAccess();
    v42 = v120;
    sub_100006C20(v39 + v41, v120, &qword_100359798);
    sub_1001E8240(v40);
    swift_beginAccess();
    sub_10017E5D8(v40, v39 + v41, &qword_100359798);
    swift_endAccess();
    sub_1001E85A4(v42);
    sub_100008FA0(v42, &qword_100359798);
    sub_100008FA0(v40, &qword_100359798);
    v43 = *(v124 + 3);
    v138[2] = *(v124 + 2);
    v138[3] = v43;
    v138[4] = *(v124 + 4);
    v139 = *(v124 + 10);
    v44 = *(v124 + 1);
    v138[0] = *v124;
    v138[1] = v44;

    v45 = v126;
    sub_1001E1C30(v126 + v118, v138);

    v46 = v16[10];
    v47 = v123;
    v48 = v45 + *(v123 + 40);
    v49 = *(v48 + 1);
    v135 = *v48;
    v136 = v49;
    v137 = *(v48 + 16);
    v50 = *(v46 + 64);
    v133[0] = *(v46 + 48);
    v133[1] = v50;
    v134 = *(v46 + 80);

    sub_1001F8ED0(&v135);
    v51 = v136;
    *(v46 + 48) = v135;
    *(v46 + 64) = v51;
    *(v46 + 80) = v137;
    sub_1001F8FFC(v133);

    v52 = v16[11];
    v53 = v47;
    v54 = (v45 + v47[11]);
    v55 = v54[1];
    v131 = *v54;
    v132[0] = v55;
    *(v132 + 10) = *(v54 + 26);
    v56 = v52[4];
    v129 = v52[3];
    v130[0] = v56;
    *(v130 + 10) = *(v52 + 74);

    sub_1001F9304(&v131);
    v57 = v132[0];
    v52[3] = v131;
    v52[4] = v57;
    *(v52 + 74) = *(v132 + 10);
    sub_1001F943C(&v129);

    LOBYTE(v47) = *(v45 + 41);

    sub_1001E2114(v47);

    LODWORD(v47) = *(v45 + 42);
    LODWORD(v21) = *(v45 + 43);

    sub_1001E2230(v47 | (v21 << 8));

    v58 = v16[13];
    v59 = v53;
    v60 = (v45 + v53[12]);
    v61 = *v60;
    v62 = v60[1];
    v63 = *(v58 + 48);
    v64 = *(v58 + 56);

    sub_1001F97AC(v61, v62);
    *(v58 + 48) = v61;
    *(v58 + 56) = v62;

    sub_1001F987C(v63, v64);

    v65 = v59[14];
    v120 = type metadata accessor for TargetConnection(0);
    LODWORD(v62) = *(v125 + *(v120 + 6));

    sub_1001E232C(v45 + v65, v62);

    v66 = v59[7];
    v67 = v59[8];

    v68 = v45 + v66;
    v69 = v124;
    sub_1001E2D9C(v68, v45 + v67);

    if (*(v69 + 1))
    {
      v70 = *(*(v69 + 4) + 16) != 0;
    }

    else
    {
      v70 = 2;
    }

    sub_1001F8544(v70);
    v71 = (v126 + v59[13]);
    v72 = *v71;
    v73 = v71[1];

    sub_1001E3170(v72, v73);

    v74 = v16[7];
    v75 = *(v74 + 57);
    *(v74 + 57) = *(*(v16[9] + 56) + 136);

    sub_1001F2454(v75);

    v76 = v16[6];
    v77 = v16[7];
    v78 = (*(v76 + 43) & 1) == 0 && *(v76 + 42) != 1;
    v79 = *(v77 + 58);
    *(v77 + 58) = v78;

    sub_1001F26FC(v79);

    v80 = v16[7];
    v81 = v16[16];
    v82 = OBJC_IVAR____TtC8SOSBuddy18ServiceOutageModel__serviceOutages;
    swift_beginAccess();
    v83 = v121;
    sub_100006C20(v81 + v82, v121, &qword_10035E268);
    v84 = OBJC_IVAR____TtC8SOSBuddy13GuidanceModel___cachedServiceOutages;
    swift_beginAccess();
    v85 = v122;
    sub_100006C20(v80 + v84, v122, &qword_10035E268);
    swift_beginAccess();
    sub_10017E5D8(v83, v80 + v84, &qword_10035E268);
    swift_endAccess();
    sub_1001F29A0(v85);
    sub_100008FA0(v85, &qword_10035E268);
    sub_100008FA0(v83, &qword_10035E268);
    v86 = v16[7];
    LODWORD(v79) = *(v86 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel___cachedInServiceOutageNow);
    *(v86 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel___cachedInServiceOutageNow) = *(v16[16] + 56) != 0;

    sub_1001F3028(v79);

    v87 = v16[7];
    v88 = *(v87 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel___cachedInSilencePeriodNow);
    *(v87 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel___cachedInSilencePeriodNow) = *(v16[16] + 72) != 0;

    sub_1001F32D4(v88);

    v89 = v16[9];
    v91 = v16[6];
    v90 = v16[7];
    v92 = v16[4];
    v94 = v16[16];
    v93 = v16[17];

    sub_1001E3284(v89, v91, v90, v92, v94, v93);

    v95 = v16[9];
    v96 = v16[6];
    v97 = v16[7];
    v98 = v16[4];
    v99 = v16[16];

    sub_1001E33AC(v95, v96, v97, v98, v99);

    if (*(v124 + 1))
    {
      v101 = *v124 == 5 && v124[17] == 1;
      sub_1001E6F50(v101);
    }

    for (i = 0; i != -224; i -= 16)
    {
      v103 = *(v17 + i + 248);
      v104 = swift_getObjectType();
      v105 = *(v103 + 16);
      swift_unknownObjectRetain();
      v105(v104, v103);
      swift_unknownObjectRelease();
    }

    v106 = *(v125 + *(v120 + 7));
    if (v106)
    {

      v106(v107);
      sub_1000949F4(v106);
    }

    return sub_10020321C(v126, type metadata accessor for ConnectionAssistantState);
  }

  return result;
}

uint64_t sub_1001E1B5C(uint64_t result)
{
  v2 = *result;
  v3 = *(v1 + 56);
  v4 = *(v1 + 96);
  v5 = *(result + 16);
  *(v1 + 56) = *result;
  *(v1 + 72) = v5;
  *(v1 + 81) = *(result + 25);
  if (*(result + 40))
  {
    if (v4)
    {
      return result;
    }

    goto LABEL_12;
  }

  if (v2 == v3)
  {
    v6 = v4;
  }

  else
  {
    v6 = 1;
  }

  if ((v6 & 1) != 0 || (static Angle.== infix(_:_:)() & 1) == 0 || (static Angle.== infix(_:_:)() & 1) == 0 || (static Angle.== infix(_:_:)() & 1) == 0 || (result = static Angle.== infix(_:_:)(), (result & 1) == 0))
  {
LABEL_12:
    sub_1001FCC78();

    return sub_1001FB8F4();
  }

  return result;
}

uint64_t sub_1001E1C30(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v40 = a2;
  v5 = sub_1000040A8(&qword_100354FD8);
  __chkstk_darwin(v5 - 8);
  v7 = v33 - v6;
  v8 = sub_1000040A8(&qword_100359798);
  __chkstk_darwin(v8 - 8);
  v36 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v33 - v11;
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = sub_10001D630(0, &qword_10035BA10);
  *v16 = static OS_dispatch_queue.main.getter();
  v17 = *(v14 + 104);
  v38 = enum case for DispatchPredicate.onQueue(_:);
  v37 = v17;
  v17(v16);
  v18 = _dispatchPreconditionTest(_:)();
  v19 = *(v14 + 8);
  result = v19(v16, v13);
  if ((v18 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  v34 = a1;
  v35 = v7;
  v41 = v3;
  sub_100006C20(a1, v12, &qword_100359798);
  v21 = type metadata accessor for LinkState(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 48);
  v33[1] = v22 + 48;
  if (v23(v12, 1, v21) == 1)
  {

    sub_100008FA0(v12, &qword_100359798);
    v24 = 2;
  }

  else
  {
    v24 = *v12;

    sub_10020321C(v12, type metadata accessor for LinkState);
  }

  sub_100024CAC(v24);

  v25 = *(v41 + 56);
  if (*(v40 + 8))
  {
    v26 = *(v40 + 16) & 1;
  }

  else
  {
    v26 = 2;
  }

  *v16 = static OS_dispatch_queue.main.getter();
  v37(v16, v38, v13);
  v27 = _dispatchPreconditionTest(_:)();
  result = v19(v16, v13);
  if ((v27 & 1) == 0)
  {
    goto LABEL_20;
  }

  v28 = *(v25 + 121);
  if (v26 == 2)
  {
    v29 = v34;
    if (v28 == 2)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v29 = v34;
  if (v28 == 2 || ((v28 ^ v26) & 1) != 0)
  {
LABEL_14:
    *(v25 + 121) = v26;
    sub_100201D90(sub_1000269BC, sub_1000269B8, sub_10020068C);
    sub_100025F04();
  }

LABEL_15:

  v30 = v36;
  sub_100006C20(v29, v36, &qword_100359798);
  if (v23(v30, 1, v21) == 1)
  {
    sub_100008FA0(v30, &qword_100359798);
    v31 = type metadata accessor for TransmissionProgress(0);
    v32 = v35;
    (*(*(v31 - 8) + 56))(v35, 1, 1, v31);
  }

  else
  {
    v32 = v35;
    sub_100006C20(v30 + *(v21 + 32), v35, &qword_100354FD8);
    sub_10020321C(v30, type metadata accessor for LinkState);
  }

  sub_1001ECD80(v32);
  return sub_100008FA0(v32, &qword_100354FD8);
}

uint64_t sub_1001E2114(unsigned __int8 a1)
{
  v2 = *(v1 + 56);
  if (v2 == 4)
  {
    if (a1 == 4)
    {
      goto LABEL_12;
    }
  }

  else if (a1 != 4)
  {
    if (v2 == 3)
    {
      if (a1 == 3)
      {
        goto LABEL_12;
      }
    }

    else if (v2 == a1)
    {
      goto LABEL_12;
    }
  }

  if (*(v1 + 32))
  {
    *(v1 + 40) = 1;
  }

  else
  {
    v3 = a1;
    v4 = *(v1 + 56);
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
    v2 = v4;
    a1 = v3;
  }

LABEL_12:
  *(v1 + 56) = a1;

  return sub_1001F1FA8(v2);
}

void sub_1001E2230(int a1)
{
  v2 = *(v1 + 42);
  v3 = *(v1 + 43);
  if (v3)
  {
    if ((a1 & 0x100) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  if (a1 & 0x100) != 0 || ((a1 ^ v2))
  {
LABEL_6:
    if (*(v1 + 32))
    {
      *(v1 + 40) = 1;
    }

    else
    {
      v4 = a1;
      sub_1000040A8(&unk_100365610);
      sub_100009274(&qword_10035CF00, &unk_100365610);
      Subject<>.send()();
      LOWORD(a1) = v4;
    }
  }

LABEL_9:
  *(v1 + 42) = a1;
  *(v1 + 43) = BYTE1(a1) & 1;

  sub_1001E8D1C(v2 | (v3 << 8));
}

uint64_t sub_1001E232C(uint64_t a1, int a2)
{
  v72 = a2;
  v63 = type metadata accessor for ConnectionClosedModel.ConnectionClosedEvent(0);
  __chkstk_darwin(v63);
  v64 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ConnectionClosed(0);
  v77 = *(v5 - 8);
  __chkstk_darwin(v5);
  v74 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v65 = &v62 - v8;
  v67 = sub_1000040A8(&qword_100356510);
  __chkstk_darwin(v67);
  v73 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v69 = &v62 - v11;
  __chkstk_darwin(v12);
  v68 = &v62 - v13;
  __chkstk_darwin(v14);
  v66 = &v62 - v15;
  __chkstk_darwin(v16);
  v71 = &v62 - v17;
  __chkstk_darwin(v18);
  v20 = &v62 - v19;
  v21 = sub_1000040A8(&qword_10035E3E0);
  v22 = v21 - 8;
  __chkstk_darwin(v21);
  v24 = &v62 - v23;
  v25 = OBJC_IVAR____TtC8SOSBuddy21ConnectionClosedModel__connectionClosed;
  swift_beginAccess();
  v26 = *(v22 + 56);
  v27 = v2;
  v76 = v25;
  sub_100006C20(v2 + v25, v24, &qword_100356510);
  v78 = a1;
  v28 = v77;
  sub_100006C20(a1, &v24[v26], &qword_100356510);
  v29 = *(v28 + 6);
  v30 = v29(v24, 1, v5);
  v77 = v29;
  if (v30 == 1)
  {
    if (v29(&v24[v26], 1, v5) == 1)
    {
      return sub_100008FA0(v24, &qword_100356510);
    }

    goto LABEL_6;
  }

  sub_100006C20(v24, v20, &qword_100356510);
  if (v29(&v24[v26], 1, v5) == 1)
  {
    sub_10020321C(v20, type metadata accessor for ConnectionClosed);
LABEL_6:
    v70 = v5;
    sub_100008FA0(v24, &qword_10035E3E0);
    goto LABEL_7;
  }

  v70 = v5;
  v32 = v65;
  sub_100204258(&v24[v26], v65, type metadata accessor for ConnectionClosed);
  v33 = sub_1000F8120(v20, v32);
  sub_10020321C(v32, type metadata accessor for ConnectionClosed);
  v29 = v77;
  sub_10020321C(v20, type metadata accessor for ConnectionClosed);
  result = sub_100008FA0(v24, &qword_100356510);
  if (v33)
  {
    return result;
  }

LABEL_7:
  if (*(v2 + 32))
  {
    *(v2 + 40) = 1;
  }

  else
  {
    sub_1000040A8(&unk_100365610);
    v29 = v77;
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
  }

  v34 = v71;
  if (qword_100353A20 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  sub_10000F53C(v35, qword_100381CB0);
  sub_100006C20(v78, v34, &qword_100356510);

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();

  v38 = os_log_type_enabled(v36, v37);
  v75 = v27;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v79[0] = v71;
    *v39 = 136446466;
    v40 = v27 + v76;
    v41 = v66;
    sub_100006C20(v40, v66, &qword_100356510);
    v42 = String.init<A>(describing:)();
    v44 = sub_10017C9E8(v42, v43, v79);

    *(v39 + 4) = v44;
    *(v39 + 12) = 2082;
    sub_100006C20(v34, v41, &qword_100356510);
    v45 = String.init<A>(describing:)();
    v47 = v46;
    sub_100008FA0(v34, &qword_100356510);
    v48 = sub_10017C9E8(v45, v47, v79);
    v29 = v77;

    *(v39 + 14) = v48;
    _os_log_impl(&_mh_execute_header, v36, v37, "connectionClosed changed from: %{public}s to: %{public}s", v39, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100008FA0(v34, &qword_100356510);
  }

  v49 = v74;
  v50 = v70;
  if (v72)
  {
    v51 = 0;
    v52 = 0;
    v53 = v75;
    v54 = v76;
  }

  else
  {
    v54 = v76;
    v55 = v68;
    sub_100006C20(v75 + v76, v68, &qword_100356510);
    v56 = v29(v55, 1, v50);
    sub_100008FA0(v55, &qword_100356510);
    v52 = v56 == 1 && v29(v78, 1, v50) != 1;
    v57 = v69;
    sub_100006C20(v75 + v54, v69, &qword_100356510);
    v58 = v29(v57, 1, v50);
    sub_100008FA0(v57, &qword_100356510);
    v51 = v58 != 1 && v29(v78, 1, v50) == 1;
    v53 = v75;
  }

  swift_beginAccess();
  sub_10017E5D8(v78, v53 + v54, &qword_100356510);
  swift_endAccess();
  if (*(v53 + 32))
  {
    *(v53 + 41) = 1;
  }

  else
  {
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
  }

  v59 = v73;
  sub_100006C20(v78, v73, &qword_100356510);
  if (v77(v59, 1, v50) == 1)
  {
    result = sub_100008FA0(v59, &qword_100356510);
    if (!v51)
    {
      return result;
    }

LABEL_35:
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    return Subject<>.send()();
  }

  sub_100204258(v59, v49, type metadata accessor for ConnectionClosed);
  if (v52)
  {
    v60 = v64;
    sub_1002031B4(v49, v64, type metadata accessor for ConnectionClosed);
    v61 = *(v63 + 20);
    type metadata accessor for PreventSuspensionAssertion();
    swift_allocObject();
    *(v60 + v61) = sub_1000E13E0(0xD000000000000011, 0x8000000100294FD0, 0xD00000000000001CLL, 0x80000001002A4830);
    PassthroughSubject.send(_:)();
    sub_10020321C(v60, type metadata accessor for ConnectionClosedModel.ConnectionClosedEvent);
  }

  result = sub_10020321C(v49, type metadata accessor for ConnectionClosed);
  if (v51)
  {
    goto LABEL_35;
  }

  return result;
}

uint64_t sub_1001E2D9C(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v4 = type metadata accessor for Date();
  v37 = *(v4 - 8);
  v38 = v4;
  __chkstk_darwin(v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v37 - v8;
  v10 = sub_1000040A8(&qword_10035E270);
  __chkstk_darwin(v10 - 8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v37 - v14;
  v16 = sub_1000040A8(&qword_10035E268);
  __chkstk_darwin(v16 - 8);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v37 - v20;
  sub_100006C20(a1, &v37 - v20, &qword_10035E268);
  v22 = OBJC_IVAR____TtC8SOSBuddy18ServiceOutageModel__serviceOutages;
  swift_beginAccess();
  sub_100006C20(v2 + v22, v18, &qword_10035E268);
  sub_1001E9950(v21);
  swift_beginAccess();
  sub_10017E5D8(v21, v2 + v22, &qword_10035E268);
  swift_endAccess();
  sub_1001E9D28(v18);
  sub_100008FA0(v18, &qword_10035E268);
  sub_100008FA0(v21, &qword_10035E268);
  sub_100006C20(v39, v15, &qword_10035E270);
  v23 = OBJC_IVAR____TtC8SOSBuddy18ServiceOutageModel__silencePeriod;
  swift_beginAccess();
  sub_100006C20(v2 + v23, v12, &qword_10035E270);
  sub_1001EA7BC(v15);
  swift_beginAccess();
  sub_10017E5D8(v15, v2 + v23, &qword_10035E270);
  swift_endAccess();
  sub_1001EAB7C(v12);
  sub_100008FA0(v12, &qword_10035E270);
  result = sub_100008FA0(v15, &qword_10035E270);
  v25 = *(v2 + 32);
  v26 = __CFADD__(v25, 1);
  v27 = v25 + 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 32) = v27;
    Date.init()();
    v28 = sub_1001E8FAC();
    if (!v29)
    {
      v28 = sub_1001EB1BC(v9);
    }

    v30 = v28;
    v31 = v29;
    v32 = v38;
    v33 = *(v37 + 8);
    v33(v9, v38);
    sub_1001F7E14(v30, v31, sub_1001E93DC);
    Date.init()();
    v34 = sub_1001E8FAC();
    v36 = v35;
    v33(v6, v32);
    sub_1001E9298(v34, v36);
    return sub_100217874(v2);
  }

  return result;
}

void *sub_1001E3170(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  if (a1 == 1)
  {
    a1 = 0;
  }

  result = sub_100203C2C(a1);
  if (*(v2 + 80))
  {
    if (result)
    {
      v6 = result;

      v8 = sub_100202BDC(v7, v6);

      result = v6;
      if (v8)
      {

        goto LABEL_9;
      }
    }
  }

  else if (!result)
  {
    goto LABEL_9;
  }

  result = sub_1001F8644(result);
LABEL_9:
  v9 = *(v2 + 88);
  if (v4 == 1)
  {
    if (!v9)
    {
      return result;
    }

    a2 = 0;
  }

  else
  {

    if (v9)
    {
      if (a2)
      {
        v10 = sub_1001DDE34(v9, a2);

        if (v10)
        {
          return result;
        }
      }
    }

    else
    {
      if (!a2)
      {
        return result;
      }
    }
  }

  return sub_1001F8750(a2);
}

uint64_t sub_1001E3284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = *(a3 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel___cachedInSilencePeriodNow);
  if ((v7 == 2 || (v7 & 1) == 0) && ((v8 = *(a3 + 58), v8 == 2) || (v8 & 1) == 0))
  {
    v9 = *(a3 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__correctedTargetRelativeBearing + 24) ^ 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v6 + 112);
  *(v6 + 112) = v9 & 1;
  if (v10 == 2 || ((v9 ^ v10) & 1) != 0)
  {
    v11 = a6;
    v12 = a5;
    v13 = a4;
    v14 = a3;
    v15 = a2;
    v16 = a1;
    sub_1001F4988();
    a1 = v16;
    a2 = v15;
    a3 = v14;
    a4 = v13;
    a5 = v12;
    a6 = v11;
  }

  *(v6 + 88) = sub_1001F51B4(a1, a2, a3, a4, a5, a6);

  return sub_1001F5060();
}

uint64_t sub_1001E33AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39 = a1;
  v40 = a5;
  v42 = a2;
  v8 = sub_1000040A8(&qword_100356518);
  __chkstk_darwin(v8 - 8);
  v10 = &v36[-v9];
  v11 = type metadata accessor for DispatchTime();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v36[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v17 = &v36[-v16];
  v41 = a3;
  v38 = OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__suggestedActions;
  v18 = sub_100071A54(4, *(a3 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__suggestedActions)) & 1;
  v19 = *(v5 + 56);
  if (v18 != v19)
  {
    if (*(v5 + 32))
    {
      *(v5 + 40) = 1;
    }

    else
    {
      v37 = *(v5 + 56);
      sub_1000040A8(&unk_100365610);
      sub_100009274(&qword_10035CF00, &unk_100365610);
      Subject<>.send()();
      LOBYTE(v19) = v37;
    }
  }

  *(v5 + 56) = v18;
  sub_1001F715C(v19);
  v20 = *(v5 + 57);
  v21 = OBJC_IVAR____TtC8SOSBuddy11StewieModel__exitRequestPendingAt;
  swift_beginAccess();
  sub_100006C20(a4 + v21, v10, &qword_100356518);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {

    sub_100008FA0(v10, &qword_100356518);
LABEL_7:
    if ((*(v42 + 43) & 1) != 0 || *(v42 + 42) == 1)
    {
      if (*(a4 + 64) && *(a4 + 73) == 2)
      {
        v22 = 0;
      }

      else
      {
        v30 = v41;
        v31 = *(v41 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel___cachedInSilencePeriodNow);
        if (v31 != 2 && (v31 & 1) != 0 || (v32 = *(v41 + 58), v32 != 2) && (v32 & 1) != 0 || (*(v41 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__correctedTargetRelativeBearing + 24) & 1) != 0)
        {
          if (*(v40 + 56))
          {
            v22 = 6;
          }

          else
          {
            v22 = 7;
          }
        }

        else
        {
          v33 = *(*(v39 + 56) + 136);
          if (v33 == 2 || (v33 & 1) == 0)
          {
            v34 = v38;
            if (sub_100071A54(4, *(v41 + v38)))
            {
              v22 = 5;
            }

            else
            {
              v35 = sub_100071A54(0, *(v30 + v34));
              if ((v20 | v35))
              {
                if (*(v30 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__targetLinkSynced) & v35)
                {
                  v22 = 4;
                }

                else
                {
                  v22 = 3;
                }
              }

              else
              {
                v22 = 2;
              }
            }
          }

          else
          {
            v22 = (sub_100071A54(0, *(v41 + v38)) & 1) == 0;
          }
        }
      }
    }

    else
    {
      v22 = 8;
    }

    goto LABEL_27;
  }

  v37 = v20;
  (*(v12 + 32))(v17, v10, v11);

  static DispatchTime.now()();
  v23 = DispatchTime.uptimeNanoseconds.getter();
  if (DispatchTime.uptimeNanoseconds.getter() >= v23)
  {
    v29 = *(v12 + 8);
    v29(v14, v11);
    v29(v17, v11);
    goto LABEL_17;
  }

  v24 = DispatchTime.uptimeNanoseconds.getter();
  v25 = DispatchTime.uptimeNanoseconds.getter();
  v26 = *(v12 + 8);
  v26(v14, v11);
  result = (v26)(v17, v11);
  v28 = v24 - v25;
  if (v24 >= v25)
  {
    v20 = v37;
    if (v28 > 0xEE6B27FF)
    {
      goto LABEL_7;
    }

LABEL_17:
    v22 = 9;
LABEL_27:
    sub_100024F9C(v22);
  }

  __break(1u);
  return result;
}

uint64_t sub_1001E3838(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_1001E38B4(v1);
  }

  return result;
}

uint64_t sub_1001E38B4(uint64_t a1)
{
  v2 = v1;
  v19 = a1;
  v3 = sub_1000040A8(&qword_100355E18);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v17 - v5;
  v7 = sub_1000040A8(&qword_100355E20);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v17 - v9;
  v11 = sub_1000040A8(&qword_100355E28);
  v18 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = v17 - v12;
  v21[3] = &type metadata for UIFeatureFlags;
  v21[4] = sub_10017E6B8();
  LOBYTE(v21[0]) = 2;
  v14 = isFeatureEnabled(_:)();
  result = sub_100008964(v21);
  if (v14)
  {
    if (*(v19 + 16))
    {
      v20 = v19;
      (*(v8 + 104))(v10, enum case for ListFormatStyle.ListType.and<A, B>(_:), v7);
      (*(v4 + 104))(v6, enum case for ListFormatStyle.Width.standard<A, B>(_:), v3);
      v17[1] = v2;
      sub_1000040A8(&qword_100355E30);
      sub_100009274(&qword_100355E38, &qword_100355E30);
      static FormatStyle.list<A>(type:width:)();
      (*(v4 + 8))(v6, v3);
      (*(v8 + 8))(v10, v7);
      sub_100009274(&qword_100355E40, &qword_100355E28);
      Sequence.formatted<A>(_:)();
      (*(v18 + 8))(v13, v11);
      sub_1001F7E14(v21[0], v21[1], sub_1001F7B88);
    }

    else
    {
      sub_1001F7E14(0, 0, sub_1001F7B88);
      v16 = 0;
    }

    return sub_1001F81CC(v16);
  }

  return result;
}

uint64_t sub_1001E3C78()
{
  v0 = sub_1000040A8(&qword_10035E268);
  __chkstk_darwin(v0 - 8);
  v2 = &v71 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v71 - v4;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    if (*(result + 184) == 1)
    {
      *&v72.f64[0] = v2;
      v9 = *(result + 64);
      v75 = *(result + 56);
      v8 = v75;
      v76 = &off_100338D30;
      v77 = v9;
      v78 = &off_100338D30;
      v79 = *(result + 96);
      v80 = &off_100338D30;
      swift_getObjectType();
      sub_10021798C();
      swift_getObjectType();
      sub_10021798C();
      swift_getObjectType();
      sub_10021798C();
      v10 = v7[7];
      v11 = *(v10 + 57);
      *(v10 + 57) = *(*(v7[9] + 56) + 136);
      v74 = v8;

      v73 = v9;

      sub_1001F2454(v11);

      v12 = v7[6];
      v13 = v7[7];
      v14 = (*(v12 + 43) & 1) == 0 && (*(v12 + 42) & 1) == 0;
      v15 = *(v13 + 58);
      *(v13 + 58) = v14;

      sub_1001F26FC(v15);

      v16 = v7[7];
      v17 = v7[16];
      v18 = OBJC_IVAR____TtC8SOSBuddy18ServiceOutageModel__serviceOutages;
      swift_beginAccess();
      sub_100006C20(v17 + v18, v5, &qword_10035E268);
      v19 = OBJC_IVAR____TtC8SOSBuddy13GuidanceModel___cachedServiceOutages;
      swift_beginAccess();
      v20 = *&v72.f64[0];
      sub_100006C20(v16 + v19, *&v72.f64[0], &qword_10035E268);
      swift_beginAccess();
      sub_10017E5D8(v5, v16 + v19, &qword_10035E268);
      swift_endAccess();
      sub_1001F29A0(v20);
      sub_100008FA0(v20, &qword_10035E268);
      sub_100008FA0(v5, &qword_10035E268);
      v21 = v7[7];
      LODWORD(v15) = *(v21 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel___cachedInServiceOutageNow);
      *(v21 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel___cachedInServiceOutageNow) = *(v7[16] + 56) != 0;

      sub_1001F3028(v15);

      v22 = v7[7];
      v23 = *(v22 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel___cachedInSilencePeriodNow);
      *(v22 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel___cachedInSilencePeriodNow) = *(v7[16] + 72) != 0;

      sub_1001F32D4(v23);

      v24 = v7[3];
      if (*(v24 + 104) & 1) != 0 || ((v25 = *(v24 + 40), sub_1000040A8(&qword_100367CC8), v26 = *(v24 + 80), v71 = *(v24 + 64), v72 = v26, inited = swift_initStackObject(), v28 = vcvt_hight_f32_f64(vcvt_f32_f64(v71), v72), *(inited + 16) = xmmword_10027A620, *(inited + 32) = v28, sub_100203EC8(inited), v72 = v29, swift_setDeallocating(), v30 = v7[5], (*(v30 + 88) & 1) == 0) ? (v31 = *(v30 + 56), v32 = *(v30 + 64)) : (v31 = 0, v32 = 0), (v33 = v72, v34 = sub_1001E716C(v25, 0, *&v72.f64[0], *&v72.f64[1], 0, v31, v32, *(v30 + 88)), (v37) || ((v38 = v34, v39 = v35, v40 = v36, v41 = v7[5], (*(v41 + 88) & 1) == 0) ? (v42 = *(v41 + 72), v43 = *(v41 + 80)) : (v42 = 0, v43 = 0), v44 = sub_1001E716C(v25, 0, *&v33.f64[0], *&v33.f64[1], 0, v42, v43, *(v41 + 88)), (v47)))
      {
        memset(v81, 0, sizeof(v81));
        v82 = 1;

        sub_1001E4450(v81, 2, 0, 0, 0, 1, 0, 0, 0, 1);
      }

      else
      {
        v59 = v44;
        v60 = v46;
        v61 = v7[5];
        v62 = *(v61 + 88);
        v72.f64[0] = v45;
        if (v62)
        {
          v63 = 0;
          v64 = 0uLL;
          v65 = 0uLL;
        }

        else
        {
          v63 = *(v61 + 48);
          v66 = vdupq_n_s64(0x404CA5DC1A63C1F8uLL);
          v67 = vdupq_n_s64(0x3F91DF46A2529D39uLL);
          v64 = vmulq_f64(vrndaq_f64(vmulq_f64(*(v61 + 56), v66)), v67);
          v65 = vmulq_f64(vrndaq_f64(vmulq_f64(*(v61 + 72), v66)), v67);
        }

        *v81 = v63;
        *&v81[8] = v64;
        *&v81[24] = v65;
        v82 = v62;
        v68 = v61 + OBJC_IVAR____TtC8SOSBuddy11TargetModel_link;
        swift_beginAccess();
        v69 = type metadata accessor for LinkState(0);
        if ((*(*(v69 - 8) + 48))(v68, 1, v69))
        {
          v70 = 2;
        }

        else
        {
          v70 = *(v68 + 1);
        }

        sub_1001E4450(v81, v70, v38, v39, v40, 0, v59, *&v72.f64[0], v60, 0);
      }

      v48 = v7[9];
      v49 = v7[6];
      v50 = v7[7];
      v51 = v7[4];
      v53 = v7[16];
      v52 = v7[17];

      sub_1001E3284(v48, v49, v50, v51, v53, v52);

      v54 = v7[9];
      v55 = v7[6];
      v56 = v7[7];
      v57 = v7[4];
      v58 = v7[16];

      sub_1001E33AC(v54, v55, v56, v57, v58);

      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1002179A4();
      swift_unknownObjectRelease();
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1002179A4();
      swift_unknownObjectRelease();
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1002179A4();

      swift_unknownObjectRelease();
      sub_1000040A8(&qword_100367CD0);
      return swift_arrayDestroy();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1001E4450(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  v11 = v10;
  v14 = result;
  v15 = v11 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__target;
  v16 = &unk_100366000;
  if (*(v11 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__target + 40))
  {
    if ((*(result + 40) & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else
  {
    if (*(result + 40))
    {
      goto LABEL_29;
    }

    if (*v15 != *result)
    {
      goto LABEL_29;
    }

    v18 = a3;
    v19 = a2;
    v20 = static Angle.== infix(_:_:)();
    v16 = &unk_100366000;
    LOBYTE(a2) = v19;
    a3 = v18;
    if ((v20 & 1) == 0)
    {
      goto LABEL_29;
    }

    v21 = static Angle.== infix(_:_:)();
    v16 = &unk_100366000;
    LOBYTE(a2) = v19;
    a3 = v18;
    if ((v21 & 1) == 0)
    {
      goto LABEL_29;
    }

    v22 = static Angle.== infix(_:_:)();
    v16 = &unk_100366000;
    LOBYTE(a2) = v19;
    a3 = v18;
    if ((v22 & 1) == 0)
    {
      goto LABEL_29;
    }

    result = static Angle.== infix(_:_:)();
    v16 = &unk_100366000;
    a2 = v19;
    a3 = v18;
    if ((result & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  v17 = *(v11 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__targetLinkSynced);
  if (v17 == 2)
  {
    if (a2 != 2)
    {
      goto LABEL_29;
    }
  }

  else if (a2 == 2 || ((v17 ^ a2) & 1) != 0)
  {
    goto LABEL_29;
  }

  if (*(v11 + v16[245] + 24))
  {
    if ((a6 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else
  {
    if (a6)
    {
      goto LABEL_29;
    }

    v23 = a3;
    v24 = a2;
    v25 = static Angle.== infix(_:_:)();
    v16 = &unk_100366000;
    LOBYTE(a2) = v24;
    a3 = v23;
    if ((v25 & 1) == 0)
    {
      goto LABEL_29;
    }

    v26 = static Angle.== infix(_:_:)();
    v16 = &unk_100366000;
    LOBYTE(a2) = v24;
    a3 = v23;
    if ((v26 & 1) == 0)
    {
      goto LABEL_29;
    }

    result = static Angle.== infix(_:_:)();
    v16 = &unk_100366000;
    LOBYTE(a2) = v24;
    a3 = v23;
    if ((result & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  if (*(v11 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__correctedTargetRelativeBearing + 24))
  {
    if (a10)
    {
      return result;
    }
  }

  else if ((a10 & 1) == 0)
  {
    v27 = a3;
    v28 = a2;
    v29 = static Angle.== infix(_:_:)();
    v16 = &unk_100366000;
    LOBYTE(a2) = v28;
    a3 = v27;
    if (v29)
    {
      v30 = static Angle.== infix(_:_:)();
      v16 = &unk_100366000;
      LOBYTE(a2) = v28;
      a3 = v27;
      if (v30)
      {
        result = static Angle.== infix(_:_:)();
        v16 = &unk_100366000;
        LOBYTE(a2) = v28;
        a3 = v27;
        if (result)
        {
          return result;
        }
      }
    }
  }

LABEL_29:
  if (*(v11 + 32))
  {
    *(v11 + 40) = 1;
  }

  else
  {
    v31 = a2;
    v32 = a3;
    v33 = v16;
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
    v16 = v33;
    LOBYTE(a2) = v31;
    a3 = v32;
  }

  v34 = v14[1];
  *v15 = *v14;
  *(v15 + 16) = v34;
  *(v15 + 25) = *(v14 + 25);
  *(v11 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__targetLinkSynced) = a2;
  v35 = v11 + v16[245];
  *v35 = a3;
  *(v35 + 8) = a4;
  *(v35 + 16) = a5;
  *(v35 + 24) = a6 & 1;
  v36 = v11 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__correctedTargetRelativeBearing;
  *v36 = a7;
  *(v36 + 8) = a8;
  *(v36 + 16) = a9;
  *(v36 + 24) = a10 & 1;
  result = sub_1001F2224();
  if (*(v11 + 32))
  {
    *(v11 + 41) = 1;
  }

  else
  {
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    return Subject<>.send()();
  }

  return result;
}

uint64_t sub_1001E4824()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + 184) == 1)
    {
      v1 = *(result + 56);
      v2 = *(v1 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel___cachedInSilencePeriodNow);
      if (v2 != 2 && (v2 & 1) != 0 || (v3 = *(v1 + 58), v3 != 2) && (v3 & 1) != 0 || (v4 = (v1 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__correctedTargetRelativeBearing), (*(v1 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__correctedTargetRelativeBearing + 24) & 1) != 0) || (v5 = *(result + 24), (*(v5 + 104) & 1) != 0) || (v6 = v1 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__target, (*(v6 + 40) & 1) != 0))
      {
        String.init(format:_:)();
        PassthroughSubject.send(_:)();
LABEL_11:
      }

      v7 = round(*(v5 + 32) * 57.2957795);
      if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v7 > -9.22337204e18)
      {
        if (v7 < 9.22337204e18)
        {
          v8 = round(*(v5 + 40) * 57.2957795);
          if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v8 > -9.22337204e18)
            {
              if (v8 < 9.22337204e18)
              {
                v9 = round(*(v5 + 48) * 57.2957795);
                if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                {
                  if (v9 > -9.22337204e18)
                  {
                    if (v9 < 9.22337204e18)
                    {
                      v10 = round(*(v5 + 56) * 57.2957795);
                      if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                      {
                        if (v10 > -9.22337204e18)
                        {
                          if (v10 < 9.22337204e18)
                          {
                            v11 = round(*(v6 + 24) * 57.2957795);
                            if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                            {
                              if (v11 > -9.22337204e18)
                              {
                                if (v11 < 9.22337204e18)
                                {
                                  v12 = round(*(v6 + 32) * 57.2957795);
                                  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                                  {
                                    if (v12 > -9.22337204e18)
                                    {
                                      if (v12 < 9.22337204e18)
                                      {
                                        v13 = round(*v4 * 57.2957795);
                                        if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                                        {
                                          if (v13 > -9.22337204e18)
                                          {
                                            if (v13 < 9.22337204e18)
                                            {
                                              v14 = round(v4[1] * 57.2957795);
                                              if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                                              {
                                                if (v14 > -9.22337204e18)
                                                {
                                                  if (v14 < 9.22337204e18)
                                                  {
                                                    v15 = v7;
                                                    v16 = v8;
                                                    v17 = v9;
                                                    v18 = v10;
                                                    v19 = v11;
                                                    v20 = v12;
                                                    v21 = v13;
                                                    v22 = v14;
                                                    sub_1000040A8(&qword_100355E48);
                                                    v23 = swift_allocObject();
                                                    *(v23 + 16) = xmmword_100278420;
                                                    *(v23 + 56) = &type metadata for Int;
                                                    *(v23 + 64) = &protocol witness table for Int;
                                                    *(v23 + 32) = v15;
                                                    *(v23 + 96) = &type metadata for Int;
                                                    *(v23 + 104) = &protocol witness table for Int;
                                                    *(v23 + 72) = v16;
                                                    *(v23 + 136) = &type metadata for Int;
                                                    *(v23 + 144) = &protocol witness table for Int;
                                                    *(v23 + 112) = v17;
                                                    *(v23 + 176) = &type metadata for Int;
                                                    *(v23 + 184) = &protocol witness table for Int;
                                                    *(v23 + 152) = v18;
                                                    *(v23 + 216) = &type metadata for Int;
                                                    *(v23 + 224) = &protocol witness table for Int;
                                                    *(v23 + 192) = v19;
                                                    *(v23 + 256) = &type metadata for Int;
                                                    *(v23 + 264) = &protocol witness table for Int;
                                                    *(v23 + 232) = v20;
                                                    *(v23 + 296) = &type metadata for Int;
                                                    *(v23 + 304) = &protocol witness table for Int;
                                                    *(v23 + 272) = v21;
                                                    *(v23 + 336) = &type metadata for Int;
                                                    *(v23 + 344) = &protocol witness table for Int;
                                                    *(v23 + 312) = v22;
                                                    String.init(format:_:)();
                                                    PassthroughSubject.send(_:)();
                                                    goto LABEL_11;
                                                  }

                                                  goto LABEL_62;
                                                }

LABEL_61:
                                                __break(1u);
LABEL_62:
                                                __break(1u);
                                                return result;
                                              }

LABEL_60:
                                              __break(1u);
                                              goto LABEL_61;
                                            }

LABEL_59:
                                            __break(1u);
                                            goto LABEL_60;
                                          }

LABEL_58:
                                          __break(1u);
                                          goto LABEL_59;
                                        }

LABEL_57:
                                        __break(1u);
                                        goto LABEL_58;
                                      }

LABEL_56:
                                      __break(1u);
                                      goto LABEL_57;
                                    }

LABEL_55:
                                    __break(1u);
                                    goto LABEL_56;
                                  }

LABEL_54:
                                  __break(1u);
                                  goto LABEL_55;
                                }

LABEL_53:
                                __break(1u);
                                goto LABEL_54;
                              }

LABEL_52:
                              __break(1u);
                              goto LABEL_53;
                            }

LABEL_51:
                            __break(1u);
                            goto LABEL_52;
                          }

LABEL_50:
                          __break(1u);
                          goto LABEL_51;
                        }

LABEL_49:
                        __break(1u);
                        goto LABEL_50;
                      }

LABEL_48:
                      __break(1u);
                      goto LABEL_49;
                    }

LABEL_47:
                    __break(1u);
                    goto LABEL_48;
                  }

LABEL_46:
                  __break(1u);
                  goto LABEL_47;
                }

LABEL_45:
                __break(1u);
                goto LABEL_46;
              }

LABEL_44:
              __break(1u);
              goto LABEL_45;
            }

LABEL_43:
            __break(1u);
            goto LABEL_44;
          }

LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      __break(1u);
      goto LABEL_41;
    }
  }

  return result;
}

void sub_1001E4CAC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (qword_100353A20 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000F53C(v3, qword_100381CB0);

  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_10017C9E8(v2, v1, &v8);
    _os_log_impl(&_mh_execute_header, oslog, v4, "%{public}s", v5, 0xCu);
    sub_100008964(v6);
  }
}

uint64_t sub_1001E4E00()
{
  v1 = v0;
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F53C(v2, qword_100381C80);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;
    type metadata accessor for ConnectionAssistantModels();

    v7 = String.init<A>(describing:)();
    v9 = sub_10017C9E8(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%{public}s] deinit", v5, 0xCu);
    sub_100008964(v6);
  }

  return v1;
}

uint64_t sub_1001E502C()
{
  sub_1001E4E00();

  return swift_deallocClassInstance();
}

void sub_1001E5084()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100353A20 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000F53C(v6, qword_100381CB0);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v1;
    v16 = v10;
    *v9 = 136446210;
    type metadata accessor for ConnectionAssistantModels();

    v11 = String.init<A>(describing:)();
    v13 = sub_10017C9E8(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "start: %{public}s", v9, 0xCu);
    sub_100008964(v10);
  }

  sub_10001D630(0, &qword_10035BA10);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v14 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v14)
  {
    sub_1000EDF48();
    sub_100194C98();
  }

  else
  {
    __break(1u);
  }
}

void sub_1001E52FC(uint64_t a1, uint64_t a2)
{
  if (qword_100353A20 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000F53C(v4, qword_100381CB0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "fetchConnectionAssistantState", v7, 2u);
  }

  sub_1000EF7F0(a1, a2);
}

uint64_t sub_1001E53F8()
{
  v1 = v0;
  v2 = sub_1000040A8(&qword_100356510);
  __chkstk_darwin(v2 - 8);
  v31 = &v28 - v3;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100353A20 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000F53C(v8, qword_100381CB0);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *&v34[0] = v12;
    *v11 = 136446210;
    v32 = v1;
    type metadata accessor for ConnectionAssistantModels();

    v13 = String.init<A>(describing:)();
    v15 = v4;
    v16 = sub_10017C9E8(v13, v14, v34);

    *(v11 + 4) = v16;
    v4 = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "stop: %{public}s", v11, 0xCu);
    sub_100008964(v12);
  }

  sub_10001D630(0, &qword_10035BA10);
  *v7 = static OS_dispatch_queue.main.getter();
  v17 = enum case for DispatchPredicate.onQueue(_:);
  v18 = *(v5 + 104);
  v18(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v19 = _dispatchPreconditionTest(_:)();
  v20 = *(v5 + 8);
  result = v20(v7, v4);
  if ((v19 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v29 = v18;
  v30 = v4;
  if (*(v1 + 184))
  {
    sub_1001E5CDC();
    v22 = *(v1 + 184);
    *(v1 + 184) = 0;
    if (v22 == 1)
    {
      sub_1000040A8(&unk_100365610);
      sub_100009274(&qword_10035CF00, &unk_100365610);
      Subject<>.send()();
    }
  }

  sub_100195B98();
  v33 = 1;
  memset(v34, 0, sizeof(v34));
  v35 = 0;
  v36 = 1;
  sub_1001E0A14(v34);
  sub_1000EF984();
  sub_1001E5898();
  v23 = *(v1 + 112);
  v24 = type metadata accessor for ConnectionClosed(0);
  v25 = v31;
  (*(*(v24 - 8) + 56))(v31, 1, 1, v24);
  v26 = OBJC_IVAR____TtC8SOSBuddy21ConnectionClosedModel__connectionClosed;
  swift_beginAccess();
  sub_1000C6F74(v25, v23 + v26, &qword_100356510);
  swift_endAccess();
  sub_1001F81CC(0);
  sub_1001F8544(2);
  sub_1001F8644(0);
  sub_1001F8750(0);
  sub_1001E5990();
  sub_1001E7960(2);
  sub_1001E7CC4(2);
  *v7 = static OS_dispatch_queue.main.getter();
  v27 = v30;
  v29(v7, v17, v30);
  LOBYTE(v23) = _dispatchPreconditionTest(_:)();
  result = v20(v7, v27);
  if ((v23 & 1) == 0)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_1001E5898()
{
  v1 = *(v0 + 48);
  *(v0 + 64) = 0;
  v2 = *(v0 + 56);
  if (*(v0 + 32))
  {
    *(v0 + 40) = 1;
  }

  else
  {

    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
  }

  *(v0 + 48) = 0;
  *(v0 + 56) = 0;

  sub_1001F987C(v1, v2);
}

uint64_t sub_1001E5990()
{
  v1 = sub_1000040A8(&qword_100356518);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v2);
  v6 = &v16[-v5];
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  v7 = *(v0 + 104);
  v17[2] = *(v0 + 88);
  v17[3] = v7;
  v17[4] = *(v0 + 120);
  v18 = *(v0 + 136);
  v8 = *(v0 + 72);
  v17[0] = *(v0 + 56);
  v17[1] = v8;
  sub_100006C20(v17, v25, &unk_10035CEF0);
  sub_1001FA118(&v19);
  v9 = *(v0 + 104);
  v25[2] = *(v0 + 88);
  v25[3] = v9;
  v25[4] = *(v0 + 120);
  v10 = *(v0 + 72);
  v25[0] = *(v0 + 56);
  v25[1] = v10;
  v11 = v22;
  *(v0 + 88) = v21;
  *(v0 + 104) = v11;
  *(v0 + 120) = v23;
  v12 = v20;
  *(v0 + 56) = v19;
  v26 = *(v0 + 136);
  *(v0 + 136) = v24;
  *(v0 + 72) = v12;
  sub_100008FA0(v25, &unk_10035CEF0);
  sub_1001FA41C(v17);
  sub_100008FA0(v17, &unk_10035CEF0);
  v13 = type metadata accessor for DispatchTime();
  (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  v14 = OBJC_IVAR____TtC8SOSBuddy11StewieModel__exitRequestPendingAt;
  swift_beginAccess();
  sub_100006C20(v0 + v14, v4, &qword_100356518);
  sub_1001FAB24(v6);
  swift_beginAccess();
  sub_10017E5D8(v6, v0 + v14, &qword_100356518);
  swift_endAccess();
  sub_1001FAED8(v4);
  sub_100008FA0(v4, &qword_100356518);
  return sub_100008FA0(v6, &qword_100356518);
}

uint64_t sub_1001E5BF8()
{
  if (qword_100353A20 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000F53C(v0, qword_100381CB0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "start_connection_assistance", v3, 2u);
  }

  return sub_1001953C8();
}

uint64_t sub_1001E5CDC()
{
  v1 = v0;
  if (qword_100353A20 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F53C(v2, qword_100381CB0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "stop_connection_assistance", v5, 2u);
  }

  v6 = v1[5];
  *&v21[9] = *(v6 + 73);
  v7 = *(v6 + 64);
  v20 = *(v6 + 48);
  *v21 = v7;
  if ((v21[24] & 1) == 0)
  {
    if (*(v6 + 32))
    {
      *(v6 + 40) = 1;
    }

    else
    {
      sub_1000040A8(&unk_100365610);
      sub_100009274(&qword_10035CF00, &unk_100365610);
      Subject<>.send()();
    }
  }

  *(v6 + 80) = 0;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0u;
  *(v6 + 88) = 1;
  sub_1001E7F30(&v20);
  v8 = v1[6];
  v9 = *(v8 + 42);
  v10 = *(v8 + 43);
  if ((v10 & 1) == 0)
  {
    if (*(v8 + 32))
    {
      *(v8 + 40) = 1;
    }

    else
    {
      sub_1000040A8(&unk_100365610);
      sub_100009274(&qword_10035CF00, &unk_100365610);
      Subject<>.send()();
    }
  }

  *(v8 + 42) = 256;
  sub_1001E8D1C(v9 | (v10 << 8));
  sub_1001E60B4();
  sub_1001E639C();
  sub_1001E64FC();
  v11 = v1[10];
  v12 = *(v11 + 64);
  v18[0] = *(v11 + 48);
  v18[1] = v12;
  v19 = *(v11 + 80);
  if (v12 != 2)
  {
    if (*(v11 + 32))
    {
      *(v11 + 40) = 1;
    }

    else
    {
      sub_1000040A8(&unk_100365610);
      sub_100009274(&qword_10035CF00, &unk_100365610);
      Subject<>.send()();
    }
  }

  *(v11 + 48) = 0;
  *(v11 + 56) = 0;
  *(v11 + 64) = xmmword_10028F0B0;
  *(v11 + 80) = 0;
  sub_1001F8FFC(v18);
  v13 = v1[11];
  v14 = *(v13 + 64);
  v16 = *(v13 + 48);
  v17[0] = v14;
  *(v17 + 10) = *(v13 + 74);
  if (BYTE8(v16) != 2)
  {
    if (*(v13 + 32))
    {
      *(v13 + 40) = 1;
    }

    else
    {
      sub_1000040A8(&unk_100365610);
      sub_100009274(&qword_10035CF00, &unk_100365610);
      Subject<>.send()();
    }
  }

  *(v13 + 48) = xmmword_10027C560;
  *(v13 + 72) = 0;
  *(v13 + 80) = 0;
  *(v13 + 64) = 0;
  *(v13 + 88) = 0;
  sub_1001F943C(&v16);
  sub_1001E682C();
  sub_1001E6914();
  return sub_1001E6C3C();
}

uint64_t sub_1001E60B4()
{
  v1 = v0;
  v2 = sub_1000040A8(&qword_10035E268);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v20[-v6];
  v8 = v0 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__target;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0;
  *(v8 + 40) = 1;
  *(v0 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__targetLinkSynced) = 2;
  v9 = v0 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__actualTargetRelativeBearing;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  *v9 = 0;
  *(v9 + 24) = 1;
  v10 = v0 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__correctedTargetRelativeBearing;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  *v10 = 0;
  *(v10 + 24) = 1;
  v11 = *(v0 + 56);
  if (v11 != 4)
  {
    if (*(v0 + 32))
    {
      *(v0 + 40) = 1;
    }

    else
    {
      v12 = *(v0 + 56);
      sub_1000040A8(&unk_100365610);
      sub_100009274(&qword_10035CF00, &unk_100365610);
      Subject<>.send()();
      v11 = v12;
    }
  }

  *(v0 + 56) = 4;
  sub_1001F1FA8(v11);
  v13 = *(v0 + 57);
  *(v0 + 57) = 2;
  sub_1001F2454(v13);
  v14 = *(v0 + 58);
  *(v0 + 58) = 2;
  sub_1001F26FC(v14);
  v15 = type metadata accessor for ServiceOutages(0);
  (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  v16 = OBJC_IVAR____TtC8SOSBuddy13GuidanceModel___cachedServiceOutages;
  swift_beginAccess();
  sub_100006C20(v1 + v16, v5, &qword_10035E268);
  swift_beginAccess();
  sub_10017E5D8(v7, v1 + v16, &qword_10035E268);
  swift_endAccess();
  sub_1001F29A0(v5);
  sub_100008FA0(v5, &qword_10035E268);
  sub_100008FA0(v7, &qword_10035E268);
  v17 = *(v1 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel___cachedInServiceOutageNow);
  *(v1 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel___cachedInServiceOutageNow) = 2;
  sub_1001F3028(v17);
  v18 = *(v1 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel___cachedInSilencePeriodNow);
  *(v1 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel___cachedInSilencePeriodNow) = 2;
  sub_1001F32D4(v18);
  sub_1001F37FC(2);
  *(v1 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__suggestedActions) = &_swiftEmptySetSingleton;
}

uint64_t sub_1001E639C()
{
  sub_1001F4180(0, 1);
  v1 = *(v0 + 72);
  if (v1)
  {
    [v1 invalidate];
    v2 = *(v0 + 72);
  }

  else
  {
    v2 = 0;
  }

  *(v0 + 72) = 0;

  *(v0 + 80) = 0;

  *(v0 + 88) = 0;

  v3 = *(v0 + 48);
  if (v3)
  {
    if (*(v0 + 32))
    {
      *(v0 + 40) = 1;
    }

    else
    {

      sub_1000040A8(&unk_100365610);
      sub_100009274(&qword_10035CF00, &unk_100365610);
      Subject<>.send()();
    }
  }

  *(v0 + 48) = 0;

  sub_1001F4058(v3);

  v5 = *(v0 + 112);
  *(v0 + 112) = 2;
  if (v5 != 2)
  {

    return sub_1001F4988();
  }

  return result;
}

uint64_t sub_1001E64FC()
{
  v1 = v0;
  v2 = sub_1000040A8(&qword_100354FD8);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v22 - v6;
  v8 = sub_1000040A8(&qword_100367BB8);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v22 - v12;

  sub_100200214();

  v14 = type metadata accessor for ConnectionModel.UserTransmissionProgress(0);
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = OBJC_IVAR____TtC8SOSBuddy15ConnectionModel__transmissionProgress;
  swift_beginAccess();
  sub_100006C20(v0 + v15, v11, &qword_100367BB8);
  sub_1001EF228(v13);
  swift_beginAccess();
  sub_10017E5D8(v13, v0 + v15, &qword_100367BB8);
  swift_endAccess();
  sub_1001EF5FC(v11);
  sub_100008FA0(v11, &qword_100367BB8);
  sub_100008FA0(v13, &qword_100367BB8);
  v16 = OBJC_IVAR____TtC8SOSBuddy15ConnectionModel__userVisibleProgressTimer;
  v17 = *(v1 + OBJC_IVAR____TtC8SOSBuddy15ConnectionModel__userVisibleProgressTimer);
  if (v17)
  {
    [v17 invalidate];
    v18 = *(v1 + v16);
  }

  else
  {
    v18 = 0;
  }

  *(v1 + v16) = 0;

  v19 = type metadata accessor for TransmissionProgress(0);
  (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
  v20 = OBJC_IVAR____TtC8SOSBuddy15ConnectionModel__simulatedTransmissionProgress;
  swift_beginAccess();
  sub_100006C20(v1 + v20, v5, &qword_100354FD8);
  sub_1001F08B0(v7);
  swift_beginAccess();
  sub_10017E5D8(v7, v1 + v20, &qword_100354FD8);
  swift_endAccess();
  sub_1001F0C14(v5);
  sub_100008FA0(v5, &qword_100354FD8);
  return sub_100008FA0(v7, &qword_100354FD8);
}

uint64_t sub_1001E682C()
{
  *(v0 + 57) = 1;
  v1 = *(v0 + 56);
  if (v1 == 1)
  {
    if (*(v0 + 32))
    {
      *(v0 + 40) = 1;
    }

    else
    {
      v2 = *(v0 + 56);
      sub_1000040A8(&unk_100365610);
      sub_100009274(&qword_10035CF00, &unk_100365610);
      Subject<>.send()();
      LOBYTE(v1) = v2;
    }
  }

  *(v0 + 56) = 0;
  sub_1001F715C(v1);

  sub_100200428();
}

void sub_1001E6914()
{
  v1 = sub_1000040A8(&qword_10035E270);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v19 - v5;
  v7 = sub_1000040A8(&qword_10035E268);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v19 - v11;
  v13 = type metadata accessor for ServiceOutages(0);
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtC8SOSBuddy18ServiceOutageModel__serviceOutages;
  swift_beginAccess();
  sub_100006C20(v0 + v14, v10, &qword_10035E268);
  sub_1001E9950(v12);
  swift_beginAccess();
  sub_10017E5D8(v12, v0 + v14, &qword_10035E268);
  swift_endAccess();
  sub_1001E9D28(v10);
  sub_100008FA0(v10, &qword_10035E268);
  sub_100008FA0(v12, &qword_10035E268);
  v15 = type metadata accessor for SilencePeriod(0);
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  v16 = OBJC_IVAR____TtC8SOSBuddy18ServiceOutageModel__silencePeriod;
  swift_beginAccess();
  sub_100006C20(v0 + v16, v4, &qword_10035E270);
  sub_1001EA7BC(v6);
  swift_beginAccess();
  sub_10017E5D8(v6, v0 + v16, &qword_10035E270);
  swift_endAccess();
  sub_1001EAB7C(v4);
  sub_100008FA0(v4, &qword_10035E270);
  sub_100008FA0(v6, &qword_10035E270);
  sub_1001F7E14(0, 0, sub_1001E93DC);
  sub_1001E9298(0, 0);
  v17 = *(v0 + 80);
  if (v17)
  {
    [v17 invalidate];
    v18 = *(v0 + 80);
  }

  else
  {
    v18 = 0;
  }

  *(v0 + 80) = 0;
}

uint64_t sub_1001E6C3C()
{
  v1 = sub_1000040A8(&qword_100367BB0);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v19 - v5;
  v7 = sub_1000040A8(&qword_100361B80);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v19 - v11;
  v13 = *(v0 + 96);
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  *(v0 + 96) = 1;
  if (v13 != 1)
  {
    sub_1001FCC78();
    sub_1001FB8F4();
  }

  *(v0 + 104) = 0;

  v14 = type metadata accessor for TargetTracks(0);
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  v15 = OBJC_IVAR____TtC8SOSBuddy23ServicePredictionsModel__targetTracks;
  swift_beginAccess();
  sub_100006C20(v0 + v15, v10, &qword_100361B80);
  sub_1001FD1B0(v12);
  swift_beginAccess();
  sub_10017E5D8(v12, v0 + v15, &qword_100361B80);
  swift_endAccess();
  sub_1001FD588(v10);
  sub_100008FA0(v10, &qword_100361B80);
  sub_100008FA0(v12, &qword_100361B80);
  v16 = type metadata accessor for ServicePredictionsModel.SkimmerPrediction(0);
  (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  v17 = OBJC_IVAR____TtC8SOSBuddy23ServicePredictionsModel__skimmerPrediction;
  swift_beginAccess();
  sub_100006C20(v0 + v17, v4, &qword_100367BB0);
  sub_1001FE5B4(v6);
  swift_beginAccess();
  sub_10017E5D8(v6, v0 + v17, &qword_100367BB0);
  swift_endAccess();
  sub_1001FE9CC(v4);
  sub_100008FA0(v4, &qword_100367BB0);
  return sub_100008FA0(v6, &qword_100367BB0);
}

uint64_t sub_1001E6F50(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10001D630(0, &qword_10035BA10);
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v8 = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v10 = *(v2 + 184);
    if (v10 != (a1 & 1))
    {
      if (a1)
      {
        *(v2 + 184) = 1;
        if ((v10 & 1) == 0)
        {
          sub_1000040A8(&unk_100365610);
          sub_100009274(&qword_10035CF00, &unk_100365610);
          Subject<>.send()();
        }

        return sub_1001E5BF8();
      }

      else
      {
        result = sub_1001E5CDC();
        v11 = *(v2 + 184);
        *(v2 + 184) = 0;
        if (v11 == 1)
        {
          sub_1000040A8(&unk_100365610);
          sub_100009274(&qword_10035CF00, &unk_100365610);
          return Subject<>.send()();
        }
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001E716C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a2 & 1) != 0 || ((v13 = a8 & 1, (a8 & 1) == 0) ? (v14 = a6) : (v14 = 0), (v16 = sub_100203F70(a3, a4, a5 & 1, v14, a8 & 1), (v17) || ((v18 = *&v16, (a8 & 1) == 0) ? (v19 = a7) : (v19 = 0), sub_1001E72C4(a1, 0, a3, a4, a5 & 1, v19, v13), (v20)))
  {
    *&result = 0.0;
  }

  else
  {
    Angle.animatableData.getter();
    Angle.animatableData.getter();
    Angle.animatableData.setter();
    *&result = round(v18 * 57.2957795) * 0.0174532925;
  }

  return result;
}

uint64_t sub_1001E72C4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  if (a2 & 1) != 0 || (a5 & 1) != 0 || (a7)
  {
    return 0;
  }

  v39 = 1.57079633;
  Angle.animatableData.getter();
  Angle.animatableData.setter();
  if (*&a1 > 1.57079633 || v39 > *&a1)
  {
    if (qword_100353A90 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000F53C(v12, qword_100381E00);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v39 = *&v16;
      *v15 = 136446210;
      v17 = String.init<A>(describing:)();
      v19 = sub_10017C9E8(v17, v18, &v39);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "Unexpected device pitch value %{public}s", v15, 0xCu);
      sub_100008964(v16);
    }
  }

  v20.i64[0] = a3;
  v20.i64[1] = a4;
  v38 = v20;
  if (*&a6 < 0.0 || *&a6 > 1.57079633)
  {
    v39 = 0.0;
    v40 = 0xE000000000000000;
    _StringGuts.grow(_:)(31);
    v21._object = 0x80000001002A4190;
    v21._countAndFlagsBits = 0xD00000000000001DLL;
    String.append(_:)(v21);
    _print_unlocked<A, B>(_:_:)();
    v22 = String.init(format:_:)();
    v24 = v23;

    v39 = *&v22;
    v40 = v24;
    PassthroughSubject.send(_:)();
  }

  sub_100203F24(&off_100323B48);
  v25 = vmulq_f32(v38, xmmword_100278430);
  v26 = vnegq_f32(v25);
  v27 = vtrn2q_s32(v25, vtrn1q_s32(v25, v26));
  v29 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v25, v26, 8uLL), *v28.f32, 1), vextq_s8(v27, v27, 8uLL), v28.f32[0]);
  v30 = vrev64q_s32(v25);
  v30.i32[0] = v26.i32[1];
  v30.i32[3] = v26.i32[2];
  v31 = vmlaq_laneq_f32(v29, v30, v28, 2);
  v32 = vnegq_f32(v31);
  v33 = vtrn2q_s32(v31, vtrn1q_s32(v31, v32));
  v34 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v31, v32, 8uLL), *v38.f32, 1), vextq_s8(v33, v33, 8uLL), v38.f32[0]);
  v35 = vrev64q_s32(v31);
  v35.i32[0] = v32.i32[1];
  v35.i32[3] = v32.i32[2];
  if (COERCE_FLOAT(vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v31, v38, 3), v35, v38, 2), v34).i32[2]) < 0.0)
  {
    v39 = 3.14159265;
    Angle.animatableData.getter();
    Angle.animatableData.getter();
    Angle.animatableData.setter();
  }

  v39 = 1.57079633;
  Angle.animatableData.getter();
  Angle.animatableData.getter();
  Angle.animatableData.setter();
  Angle.animatableData.getter();
  Angle.animatableData.getter();
  Angle.animatableData.setter();
  v36 = v39;
  if (v39 < 0.0 || v39 >= 6.28318531)
  {
    v36 = v39 - floor(v39 / 6.28318531) * 6.28318531;
  }

  if (v36 > 3.14159265)
  {
    v39 = v36;
    Angle.animatableData.getter();
    Angle.animatableData.getter();
    Angle.animatableData.setter();
    v36 = v39;
  }

  return *&v36;
}

void sub_1001E76FC(int a1)
{
  v2 = v1;
  v3 = *(v1 + 42);
  if (v3 == 2)
  {
    if (a1 == 2)
    {
      return;
    }
  }

  else if (a1 != 2 && ((v3 ^ a1) & 1) == 0)
  {
    return;
  }

  if (qword_100353A20 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000F53C(v4, qword_100381CB0);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v7 = 136446466;
    sub_1000040A8(&unk_1003655D0);
    v8 = String.init<A>(describing:)();
    v10 = sub_10017C9E8(v8, v9, &v14);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2082;
    v11 = String.init<A>(describing:)();
    v13 = sub_10017C9E8(v11, v12, &v14);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "locationServicesForSatelliteAuthorized changed from: %{public}s to: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  if (*(v2 + 32))
  {
    *(v2 + 41) = 1;
  }

  else
  {
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
  }
}

void sub_1001E7960(int a1)
{
  v2 = *(v1 + 42);
  if (v2 == 2)
  {
    if (a1 == 2)
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  if (a1 == 2 || ((v2 ^ a1) & 1) != 0)
  {
LABEL_6:
    if (*(v1 + 32))
    {
      *(v1 + 40) = 1;
    }

    else
    {
      v3 = a1;
      v4 = *(v1 + 42);
      sub_1000040A8(&unk_100365610);
      sub_100009274(&qword_10035CF00, &unk_100365610);
      Subject<>.send()();
      v2 = v4;
      LOBYTE(a1) = v3;
    }
  }

LABEL_9:
  *(v1 + 42) = a1;

  sub_1001E76FC(v2);
}

void sub_1001E7A60(int a1)
{
  v2 = v1;
  v3 = *(v1 + 43);
  if (v3 == 2)
  {
    if (a1 == 2)
    {
      return;
    }
  }

  else if (a1 != 2 && ((v3 ^ a1) & 1) == 0)
  {
    return;
  }

  if (qword_100353A20 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000F53C(v4, qword_100381CB0);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v7 = 136446466;
    sub_1000040A8(&unk_1003655D0);
    v8 = String.init<A>(describing:)();
    v10 = sub_10017C9E8(v8, v9, &v14);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2082;
    v11 = String.init<A>(describing:)();
    v13 = sub_10017C9E8(v11, v12, &v14);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "locationServicesForCompassAuthorized changed from: %{public}s to: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  if (*(v2 + 32))
  {
    *(v2 + 41) = 1;
  }

  else
  {
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
  }
}

void sub_1001E7CC4(int a1)
{
  v2 = *(v1 + 43);
  if (v2 == 2)
  {
    if (a1 == 2)
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  if (a1 == 2 || ((v2 ^ a1) & 1) != 0)
  {
LABEL_6:
    if (*(v1 + 32))
    {
      *(v1 + 40) = 1;
    }

    else
    {
      v3 = a1;
      v4 = *(v1 + 43);
      sub_1000040A8(&unk_100365610);
      sub_100009274(&qword_10035CF00, &unk_100365610);
      Subject<>.send()();
      v2 = v4;
      LOBYTE(a1) = v3;
    }
  }

LABEL_9:
  *(v1 + 43) = a1;

  sub_1001E7A60(v2);
}

uint64_t sub_1001E7E14(uint64_t result)
{
  if (*(v1 + 88))
  {
    if (*(result + 40))
    {
      return result;
    }

    goto LABEL_10;
  }

  if ((*(result + 40) & 1) != 0 || *(v1 + 48) != *result || (result = static Angle.== infix(_:_:)(), (result & 1) == 0) || (result = static Angle.== infix(_:_:)(), (result & 1) == 0) || (result = static Angle.== infix(_:_:)(), (result & 1) == 0) || (result = static Angle.== infix(_:_:)(), (result & 1) == 0))
  {
LABEL_10:
    if (*(v1 + 32))
    {
      *(v1 + 40) = 1;
    }

    else
    {
      sub_1000040A8(&unk_100365610);
      sub_100009274(&qword_10035CF00, &unk_100365610);
      return Subject<>.send()();
    }
  }

  return result;
}

void sub_1001E7F30(uint64_t *a1)
{
  v2 = v1;
  if (*(v1 + 88))
  {
    if (a1[5])
    {
      return;
    }

LABEL_19:
    if (qword_100353A20 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000F53C(v6, qword_100381CB0);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v9 = 136446466;
      sub_1000040A8(&qword_100367C00);
      v10 = String.init<A>(describing:)();
      v12 = sub_10017C9E8(v10, v11, &v16);

      *(v9 + 4) = v12;
      *(v9 + 12) = 2082;
      v13 = String.init<A>(describing:)();
      v15 = sub_10017C9E8(v13, v14, &v16);

      *(v9 + 14) = v15;
      _os_log_impl(&_mh_execute_header, v7, v8, "Primary target id changed from: %{public}s to: %{public}s", v9, 0x16u);
      swift_arrayDestroy();
    }

    if (!*(v2 + 32))
    {
      goto LABEL_24;
    }

    goto LABEL_13;
  }

  v3 = *a1;
  v4 = *(a1 + 40);
  if ((v4 & 1) != 0 || *(v2 + 48) != v3 || (static Angle.== infix(_:_:)() & 1) == 0 || (static Angle.== infix(_:_:)() & 1) == 0 || (static Angle.== infix(_:_:)() & 1) == 0 || (static Angle.== infix(_:_:)() & 1) == 0)
  {
    if (*(v2 + 88))
    {
      if ((v4 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v4)
      {
        v5 = 0;
      }

      else
      {
        v5 = v3;
      }

      if ((v4 & 1) != 0 || *(v2 + 48) != v5)
      {
        goto LABEL_19;
      }
    }

    if (!*(v2 + 32))
    {
LABEL_24:
      sub_1000040A8(&unk_100365610);
      sub_100009274(&qword_10035CF00, &unk_100365610);
      Subject<>.send()();
      return;
    }

LABEL_13:
    *(v2 + 41) = 1;
  }
}

uint64_t sub_1001E8240(uint64_t a1)
{
  v18 = a1;
  v2 = type metadata accessor for LinkState(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000040A8(&qword_100359798);
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - v7;
  v9 = sub_1000040A8(&qword_10035E3E8);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v18 - v11;
  v13 = OBJC_IVAR____TtC8SOSBuddy11TargetModel_link;
  swift_beginAccess();
  v14 = *(v10 + 56);
  sub_100006C20(v1 + v13, v12, &qword_100359798);
  sub_100006C20(v18, &v12[v14], &qword_100359798);
  v15 = *(v3 + 48);
  if (v15(v12, 1, v2) == 1)
  {
    if (v15(&v12[v14], 1, v2) == 1)
    {
      return sub_100008FA0(v12, &qword_100359798);
    }
  }

  else
  {
    sub_100006C20(v12, v8, &qword_100359798);
    if (v15(&v12[v14], 1, v2) != 1)
    {
      sub_100204258(&v12[v14], v5, type metadata accessor for LinkState);
      v17 = sub_1000F6B40(v8, v5);
      sub_10020321C(v5, type metadata accessor for LinkState);
      sub_10020321C(v8, type metadata accessor for LinkState);
      result = sub_100008FA0(v12, &qword_100359798);
      if (v17)
      {
        return result;
      }

      goto LABEL_7;
    }

    sub_10020321C(v8, type metadata accessor for LinkState);
  }

  result = sub_100008FA0(v12, &qword_10035E3E8);
LABEL_7:
  if (*(v1 + 32))
  {
    *(v1 + 40) = 1;
  }

  else
  {
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    return Subject<>.send()();
  }

  return result;
}

void sub_1001E85A4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for LinkState(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v37 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1000040A8(&qword_100359798);
  __chkstk_darwin(v40);
  v39 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v43 = &v36 - v9;
  __chkstk_darwin(v10);
  v12 = &v36 - v11;
  v13 = sub_1000040A8(&qword_10035E3E8);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v36 - v15;
  v17 = OBJC_IVAR____TtC8SOSBuddy11TargetModel_link;
  swift_beginAccess();
  v18 = *(v14 + 56);
  v38 = v17;
  v42 = v2;
  sub_100006C20(v2 + v17, v16, &qword_100359798);
  v41 = a1;
  sub_100006C20(a1, &v16[v18], &qword_100359798);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_100008FA0(v16, &qword_100359798);
      return;
    }
  }

  else
  {
    sub_100006C20(v16, v12, &qword_100359798);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v34 = v37;
      sub_100204258(&v16[v18], v37, type metadata accessor for LinkState);
      v35 = sub_1000F6B40(v12, v34);
      sub_10020321C(v34, type metadata accessor for LinkState);
      sub_10020321C(v12, type metadata accessor for LinkState);
      sub_100008FA0(v16, &qword_100359798);
      v20 = v42;
      v21 = v43;
      if (v35)
      {
        return;
      }

      goto LABEL_7;
    }

    sub_10020321C(v12, type metadata accessor for LinkState);
  }

  sub_100008FA0(v16, &qword_10035E3E8);
  v20 = v42;
  v21 = v43;
LABEL_7:
  if (qword_100353A20 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_10000F53C(v22, qword_100381CB0);
  sub_100006C20(v41, v21, &qword_100359798);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v44 = v43;
    *v25 = 136446466;
    v26 = v39;
    sub_100006C20(v21, v39, &qword_100359798);
    v27 = String.init<A>(describing:)();
    LODWORD(v42) = v24;
    v29 = v28;
    sub_100008FA0(v21, &qword_100359798);
    v30 = sub_10017C9E8(v27, v29, &v44);

    *(v25 + 4) = v30;
    *(v25 + 12) = 2082;
    sub_100006C20(v20 + v38, v26, &qword_100359798);
    v31 = String.init<A>(describing:)();
    v33 = sub_10017C9E8(v31, v32, &v44);

    *(v25 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v23, v42, "Link state changed from: %{public}s to: %{public}s", v25, 0x16u);
    swift_arrayDestroy();

    if (*(v20 + 32))
    {
LABEL_11:
      *(v20 + 41) = 1;
      return;
    }
  }

  else
  {

    sub_100008FA0(v21, &qword_100359798);
    if (*(v20 + 32))
    {
      goto LABEL_11;
    }
  }

  sub_1000040A8(&unk_100365610);
  sub_100009274(&qword_10035CF00, &unk_100365610);
  Subject<>.send()();
}

uint64_t sub_1001E8BB8()
{

  sub_100008FA0(v0 + OBJC_IVAR____TtC8SOSBuddy11TargetModel_link, &qword_100359798);

  return swift_deallocClassInstance();
}

void sub_1001E8C64()
{
  sub_1001EC5E4(319, &qword_10035E300, type metadata accessor for LinkState);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1001E8D1C(int a1)
{
  v2 = v1;
  if (*(v1 + 43))
  {
    if ((a1 & 0x100) != 0)
    {
      return;
    }
  }

  else if ((a1 & 0x100) == 0 && ((a1 ^ *(v1 + 42)) & 1) == 0)
  {
    return;
  }

  if (qword_100353A20 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000F53C(v3, qword_100381CB0);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v6 = 136446466;
    sub_1000040A8(&qword_100367BF8);
    v7 = String.init<A>(describing:)();
    v9 = sub_10017C9E8(v7, v8, &v13);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2082;
    v10 = String.init<A>(describing:)();
    v12 = sub_10017C9E8(v10, v11, &v13);

    *(v6 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "Location state changed from: %{public}s to: %{public}s", v6, 0x16u);
    swift_arrayDestroy();
  }

  if (*(v2 + 32))
  {
    *(v2 + 41) = 1;
  }

  else
  {
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
  }
}

uint64_t *sub_1001E8FAC()
{
  v1 = sub_1000040A8(&qword_10035E270);
  __chkstk_darwin(v1 - 8);
  v3 = v14 - v2 + 16;
  v4 = type metadata accessor for SilencePeriod(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v8 = OBJC_IVAR____TtC8SOSBuddy18ServiceOutageModel__silencePeriod;
  swift_beginAccess();
  sub_100006C20(v0 + v8, v3, &qword_10035E270);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_100008FA0(v3, &qword_10035E270);
    return 0;
  }

  sub_100204258(v3, v7, type metadata accessor for SilencePeriod);
  type metadata accessor for Date();
  sub_1002042C0(&qword_10035E408, &type metadata accessor for Date);
  if (dispatch thunk of static Comparable.< infix(_:_:)() & 1) != 0 || (dispatch thunk of static Comparable.< infix(_:_:)())
  {
    sub_10020321C(v7, type metadata accessor for SilencePeriod);
    return 0;
  }

  Date.timeIntervalSince(_:)();
  v11 = v10;
  if (qword_100353B58 != -1)
  {
    swift_once();
  }

  sub_1000208D8(v14);
  v12 = sub_1002039DC(&v14[0]._countAndFlagsBits, v11);
  sub_1002043C0(v14);

  sub_10020321C(v7, type metadata accessor for SilencePeriod);
  return v12;
}

uint64_t sub_1001E9298(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64);
  v6 = *(v2 + 72);
  if (v6)
  {
    if (a2)
    {
      v7 = v5 == a1 && v6 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_12;
      }
    }
  }

  else if (!a2)
  {
    goto LABEL_14;
  }

  if (*(v2 + 32))
  {
    *(v2 + 40) = 1;
LABEL_12:

    goto LABEL_14;
  }

  sub_1000040A8(&unk_100365610);
  sub_100009274(&qword_10035CF00, &unk_100365610);
  Subject<>.send()();
LABEL_14:
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;

  sub_1001E9668(v5, v6);
}

void sub_1001E93DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(v2 + 56);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 48) == a1 && v5 == a2;
      if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return;
      }
    }
  }

  else if (!a2)
  {
    return;
  }

  if (qword_100353A20 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000F53C(v7, qword_100381CB0);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v10 = 136446466;

    sub_1000040A8(&qword_100367BD8);
    v11 = String.init<A>(describing:)();
    v13 = sub_10017C9E8(v11, v12, &v17);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2082;

    v14 = String.init<A>(describing:)();
    v16 = sub_10017C9E8(v14, v15, &v17);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "_cachedDescription changed from: %{public}s to: %{public}s", v10, 0x16u);
    swift_arrayDestroy();
  }

  if (*(v3 + 32))
  {
    *(v3 + 41) = 1;
  }

  else
  {
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
  }
}

void sub_1001E9668(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(v2 + 72);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 64) == a1 && v5 == a2;
      if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return;
      }
    }
  }

  else if (!a2)
  {
    return;
  }

  if (qword_100353A20 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000F53C(v7, qword_100381CB0);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v10 = 136446466;

    sub_1000040A8(&qword_100367BD8);
    v11 = String.init<A>(describing:)();
    v13 = sub_10017C9E8(v11, v12, &v17);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2082;

    v14 = String.init<A>(describing:)();
    v16 = sub_10017C9E8(v14, v15, &v17);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "_cachedSilenceDescription changed from: %{public}s to: %{public}s", v10, 0x16u);
    swift_arrayDestroy();
  }

  if (*(v3 + 32))
  {
    *(v3 + 41) = 1;
  }

  else
  {
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
  }
}

uint64_t sub_1001E98F4()
{
  String.append(_:)(*v0);
  v1._countAndFlagsBits = 34;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  return 34;
}

uint64_t sub_1001E9950(uint64_t a1)
{
  v3 = type metadata accessor for ServiceOutages(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v20 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000040A8(&qword_10035E268);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_1000040A8(&qword_10035E3F8);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  v13 = OBJC_IVAR____TtC8SOSBuddy18ServiceOutageModel__serviceOutages;
  swift_beginAccess();
  v14 = *(v10 + 56);
  sub_100006C20(v1 + v13, v12, &qword_10035E268);
  sub_100006C20(a1, &v12[v14], &qword_10035E268);
  v15 = *(v4 + 48);
  if (v15(v12, 1, v3) == 1)
  {
    if (v15(&v12[v14], 1, v3) == 1)
    {
      return sub_100008FA0(v12, &qword_10035E268);
    }

    goto LABEL_6;
  }

  sub_100006C20(v12, v8, &qword_10035E268);
  if (v15(&v12[v14], 1, v3) == 1)
  {
    sub_10020321C(v8, type metadata accessor for ServiceOutages);
LABEL_6:
    v17 = &qword_10035E3F8;
    goto LABEL_13;
  }

  v18 = v20;
  sub_100204258(&v12[v14], v20, type metadata accessor for ServiceOutages);
  if (static Date.== infix(_:_:)() & 1) != 0 && (static Date.== infix(_:_:)())
  {
    v19 = sub_100202114(*&v8[*(v3 + 24)], *(v18 + *(v3 + 24)));
    sub_10020321C(v18, type metadata accessor for ServiceOutages);
    sub_10020321C(v8, type metadata accessor for ServiceOutages);
    result = sub_100008FA0(v12, &qword_10035E268);
    if (v19)
    {
      return result;
    }

    if (!*(v1 + 32))
    {
      goto LABEL_14;
    }

LABEL_11:
    *(v1 + 40) = 1;
    return result;
  }

  sub_10020321C(v18, type metadata accessor for ServiceOutages);
  sub_10020321C(v8, type metadata accessor for ServiceOutages);
  v17 = &qword_10035E268;
LABEL_13:
  result = sub_100008FA0(v12, v17);
  if (*(v1 + 32))
  {
    goto LABEL_11;
  }

LABEL_14:
  sub_1000040A8(&unk_100365610);
  sub_100009274(&qword_10035CF00, &unk_100365610);
  return Subject<>.send()();
}

void sub_1001E9D28(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ServiceOutages(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v38 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1000040A8(&qword_10035E268);
  v7 = __chkstk_darwin(v41);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v44 = &v37 - v10;
  __chkstk_darwin(v9);
  v12 = &v37 - v11;
  v13 = sub_1000040A8(&qword_10035E3F8);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v37 - v15;
  v17 = OBJC_IVAR____TtC8SOSBuddy18ServiceOutageModel__serviceOutages;
  swift_beginAccess();
  v18 = *(v14 + 56);
  v39 = v17;
  v43 = v2;
  sub_100006C20(v2 + v17, v16, &qword_10035E268);
  v42 = a1;
  sub_100006C20(a1, &v16[v18], &qword_10035E268);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_100008FA0(v16, &qword_10035E268);
      return;
    }

    goto LABEL_6;
  }

  sub_100006C20(v16, v12, &qword_10035E268);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_10020321C(v12, type metadata accessor for ServiceOutages);
LABEL_6:
    sub_100008FA0(v16, &qword_10035E3F8);
    v20 = v43;
    v21 = v44;
    goto LABEL_12;
  }

  v22 = v38;
  sub_100204258(&v16[v18], v38, type metadata accessor for ServiceOutages);
  v23 = static Date.== infix(_:_:)();
  v20 = v43;
  v21 = v44;
  if (v23 & 1) != 0 && (static Date.== infix(_:_:)())
  {
    v24 = sub_100202114(*&v12[*(v4 + 24)], *(v22 + *(v4 + 24)));
    sub_10020321C(v22, type metadata accessor for ServiceOutages);
    sub_10020321C(v12, type metadata accessor for ServiceOutages);
    sub_100008FA0(v16, &qword_10035E268);
    if (v24)
    {
      return;
    }
  }

  else
  {
    sub_10020321C(v22, type metadata accessor for ServiceOutages);
    sub_10020321C(v12, type metadata accessor for ServiceOutages);
    sub_100008FA0(v16, &qword_10035E268);
  }

LABEL_12:
  if (qword_100353A20 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_10000F53C(v25, qword_100381CB0);
  sub_100006C20(v42, v21, &qword_10035E268);

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v45 = v44;
    *v28 = 136446466;
    v29 = v40;
    sub_100006C20(v21, v40, &qword_10035E268);
    LODWORD(v43) = v27;
    v30 = String.init<A>(describing:)();
    v32 = v31;
    sub_100008FA0(v21, &qword_10035E268);
    v33 = sub_10017C9E8(v30, v32, &v45);

    *(v28 + 4) = v33;
    *(v28 + 12) = 2082;
    sub_100006C20(v20 + v39, v29, &qword_10035E268);
    v34 = String.init<A>(describing:)();
    v36 = sub_10017C9E8(v34, v35, &v45);

    *(v28 + 14) = v36;
    _os_log_impl(&_mh_execute_header, v26, v43, "Outages changed from: %{public}s to: %{public}s", v28, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100008FA0(v21, &qword_10035E268);
  }

  sub_1001EA37C();
  if (*(v20 + 32))
  {
    *(v20 + 41) = 1;
  }

  else
  {
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
  }
}

void sub_1001EA37C()
{
  v1 = v0;
  v2 = sub_1000040A8(&qword_10035E270);
  __chkstk_darwin(v2 - 8);
  v4 = aBlock - v3;
  v5 = sub_1000040A8(&qword_10035E268);
  __chkstk_darwin(v5 - 8);
  v7 = aBlock - v6;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10001D630(0, &qword_10035BA10);
  *v11 = static OS_dispatch_queue.main.getter();
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v12 = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v13 = v1 + OBJC_IVAR____TtC8SOSBuddy18ServiceOutageModel__serviceOutages;
  swift_beginAccess();
  sub_100006C20(v13, v7, &qword_10035E268);
  v14 = type metadata accessor for ServiceOutages(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = v15(v7, 1, v14);
  sub_100008FA0(v7, &qword_10035E268);
  if (v16 != 1 && (v15(v13, 1, v14) || *(*(v13 + *(v14 + 24)) + 16)) || (v17 = OBJC_IVAR____TtC8SOSBuddy18ServiceOutageModel__silencePeriod, swift_beginAccess(), sub_100006C20(v1 + v17, v4, &qword_10035E270), v18 = type metadata accessor for SilencePeriod(0), LODWORD(v17) = (*(*(v18 - 8) + 48))(v4, 1, v18), sub_100008FA0(v4, &qword_10035E270), v17 != 1))
  {
    if (*(v1 + 80))
    {
      return;
    }

    v21 = objc_opt_self();
    v22 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1002043A0;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10008137C;
    aBlock[3] = &unk_100337C08;
    v23 = _Block_copy(aBlock);

    v24 = [v21 scheduledTimerWithTimeInterval:1 repeats:v23 block:1.0];
    _Block_release(v23);
    v20 = *(v1 + 80);
    *(v1 + 80) = v24;
  }

  else
  {
    v19 = *(v1 + 80);
    if (v19)
    {
      [v19 invalidate];
      v20 = *(v1 + 80);
    }

    else
    {
      v20 = 0;
    }

    *(v1 + 80) = 0;
  }
}

uint64_t sub_1001EA7BC(uint64_t a1)
{
  v3 = type metadata accessor for SilencePeriod(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v20 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000040A8(&qword_10035E270);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_1000040A8(&qword_10035E3F0);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  v13 = OBJC_IVAR____TtC8SOSBuddy18ServiceOutageModel__silencePeriod;
  swift_beginAccess();
  v14 = *(v10 + 56);
  sub_100006C20(v1 + v13, v12, &qword_10035E270);
  sub_100006C20(a1, &v12[v14], &qword_10035E270);
  v15 = *(v4 + 48);
  if (v15(v12, 1, v3) == 1)
  {
    if (v15(&v12[v14], 1, v3) == 1)
    {
      return sub_100008FA0(v12, &qword_10035E270);
    }

    goto LABEL_6;
  }

  sub_100006C20(v12, v8, &qword_10035E270);
  if (v15(&v12[v14], 1, v3) == 1)
  {
    sub_10020321C(v8, type metadata accessor for SilencePeriod);
LABEL_6:
    v17 = &qword_10035E3F0;
    goto LABEL_7;
  }

  v18 = v20;
  sub_100204258(&v12[v14], v20, type metadata accessor for SilencePeriod);
  if (static Date.== infix(_:_:)())
  {
    v19 = static Date.== infix(_:_:)();
    sub_10020321C(v18, type metadata accessor for SilencePeriod);
    sub_10020321C(v8, type metadata accessor for SilencePeriod);
    result = sub_100008FA0(v12, &qword_10035E270);
    if (v19)
    {
      return result;
    }

    goto LABEL_8;
  }

  sub_10020321C(v18, type metadata accessor for SilencePeriod);
  sub_10020321C(v8, type metadata accessor for SilencePeriod);
  v17 = &qword_10035E270;
LABEL_7:
  result = sub_100008FA0(v12, v17);
LABEL_8:
  if (*(v1 + 32))
  {
    *(v1 + 40) = 1;
  }

  else
  {
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    return Subject<>.send()();
  }

  return result;
}

void sub_1001EAB7C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SilencePeriod(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v38 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1000040A8(&qword_10035E270);
  v7 = __chkstk_darwin(v41);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v44 = &v37 - v10;
  __chkstk_darwin(v9);
  v12 = &v37 - v11;
  v13 = sub_1000040A8(&qword_10035E3F0);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v37 - v15;
  v17 = OBJC_IVAR____TtC8SOSBuddy18ServiceOutageModel__silencePeriod;
  swift_beginAccess();
  v18 = *(v14 + 56);
  v39 = v17;
  v43 = v2;
  sub_100006C20(v2 + v17, v16, &qword_10035E270);
  v42 = a1;
  sub_100006C20(a1, &v16[v18], &qword_10035E270);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_100008FA0(v16, &qword_10035E270);
      return;
    }

    goto LABEL_6;
  }

  sub_100006C20(v16, v12, &qword_10035E270);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_10020321C(v12, type metadata accessor for SilencePeriod);
LABEL_6:
    sub_100008FA0(v16, &qword_10035E3F0);
    v20 = v43;
    v21 = v44;
    goto LABEL_7;
  }

  v34 = v38;
  sub_100204258(&v16[v18], v38, type metadata accessor for SilencePeriod);
  v35 = static Date.== infix(_:_:)();
  v20 = v43;
  v21 = v44;
  if (v35)
  {
    v36 = static Date.== infix(_:_:)();
    sub_10020321C(v34, type metadata accessor for SilencePeriod);
    sub_10020321C(v12, type metadata accessor for SilencePeriod);
    sub_100008FA0(v16, &qword_10035E270);
    if (v36)
    {
      return;
    }
  }

  else
  {
    sub_10020321C(v34, type metadata accessor for SilencePeriod);
    sub_10020321C(v12, type metadata accessor for SilencePeriod);
    sub_100008FA0(v16, &qword_10035E270);
  }

LABEL_7:
  if (qword_100353A20 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_10000F53C(v22, qword_100381CB0);
  sub_100006C20(v42, v21, &qword_10035E270);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v45 = v44;
    *v25 = 136446466;
    v26 = v40;
    sub_100006C20(v21, v40, &qword_10035E270);
    LODWORD(v43) = v24;
    v27 = String.init<A>(describing:)();
    v29 = v28;
    sub_100008FA0(v21, &qword_10035E270);
    v30 = sub_10017C9E8(v27, v29, &v45);

    *(v25 + 4) = v30;
    *(v25 + 12) = 2082;
    sub_100006C20(v20 + v39, v26, &qword_10035E270);
    v31 = String.init<A>(describing:)();
    v33 = sub_10017C9E8(v31, v32, &v45);

    *(v25 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v23, v43, "Silence period changed from: %{public}s to: %{public}s", v25, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100008FA0(v21, &qword_10035E270);
  }

  sub_1001EA37C();
  if (*(v20 + 32))
  {
    *(v20 + 41) = 1;
  }

  else
  {
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
  }
}

uint64_t sub_1001EB1BC(uint64_t a1)
{
  v51 = a1;
  v2 = sub_1000040A8(&qword_100356188);
  v3 = __chkstk_darwin(v2 - 8);
  v48 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v49 = v38 - v5;
  v6 = type metadata accessor for Date();
  v43 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v47 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v44 = v38 - v9;
  v46 = type metadata accessor for ServiceOutages.Outage(0);
  v50 = *(v46 - 8);
  __chkstk_darwin(v46);
  v11 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000040A8(&qword_10035E268);
  __chkstk_darwin(v12 - 8);
  v14 = v38 - v13;
  v15 = type metadata accessor for ServiceOutages(0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC8SOSBuddy18ServiceOutageModel__serviceOutages;
  swift_beginAccess();
  sub_100006C20(v1 + v19, v14, &qword_10035E268);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_100008FA0(v14, &qword_10035E268);
    return 0;
  }

  v38[1] = v1;
  sub_100204258(v14, v18, type metadata accessor for ServiceOutages);
  v20 = sub_1002042C0(&qword_10035E408, &type metadata accessor for Date);
  if (dispatch thunk of static Comparable.< infix(_:_:)() & 1) != 0 || (result = dispatch thunk of static Comparable.< infix(_:_:)(), (result))
  {
    v22 = v18;
LABEL_6:
    sub_10020321C(v22, type metadata accessor for ServiceOutages);
    return 0;
  }

  v45 = v20;
  v23 = *(v15 + 24);
  v38[0] = v18;
  v42 = *&v18[v23];
  v24 = v44;
  v40 = *(v42 + 16);
  if (!v40)
  {
LABEL_23:
    v22 = v38[0];
    goto LABEL_6;
  }

  v25 = 0;
  v41 = v42 + ((*(v50 + 80) + 32) & ~*(v50 + 80));
  v26 = (v43 + 48);
  v39 = (v43 + 32);
  v27 = (v43 + 8);
  while (v25 < *(v42 + 16))
  {
    sub_1002031B4(v41 + *(v50 + 72) * v25, v11, type metadata accessor for ServiceOutages.Outage);
    v28 = v49;
    sub_100006C20(v11, v49, &qword_100356188);
    v29 = *v26;
    if ((*v26)(v28, 1, v6) == 1)
    {
      static Date.distantPast.getter();
      if (v29(v28, 1, v6) != 1)
      {
        sub_100008FA0(v28, &qword_100356188);
      }
    }

    else
    {
      (*v39)(v24, v28, v6);
    }

    v30 = dispatch thunk of static Comparable.< infix(_:_:)();
    v31 = *v27;
    (*v27)(v24, v6);
    if ((v30 & 1) == 0)
    {
      goto LABEL_24;
    }

    v32 = v48;
    sub_100006C20(&v11[*(v46 + 20)], v48, &qword_100356188);
    if (v29(v32, 1, v6) == 1)
    {
      v33 = v47;
      static Date.distantFuture.getter();
      v34 = v29(v32, 1, v6);
      v35 = v33;
      if (v34 != 1)
      {
        sub_100008FA0(v32, &qword_100356188);
      }
    }

    else
    {
      v35 = v47;
      (*v39)(v47, v32, v6);
    }

    v36 = dispatch thunk of static Comparable.< infix(_:_:)();
    v31(v35, v6);
    if ((v36 & 1) == 0)
    {
LABEL_24:
      v37 = sub_1001EB89C(v11, v51);
      sub_10020321C(v11, type metadata accessor for ServiceOutages.Outage);
      sub_10020321C(v38[0], type metadata accessor for ServiceOutages);
      return v37;
    }

    ++v25;
    result = sub_10020321C(v11, type metadata accessor for ServiceOutages.Outage);
    if (v40 == v25)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001EB89C(uint64_t a1, uint64_t a2)
{
  v61 = a2;
  v3 = sub_1000040A8(&qword_10035E268);
  __chkstk_darwin(v3 - 8);
  v55 = &v52 - v4;
  v5 = sub_1000040A8(&qword_100356188);
  v6 = __chkstk_darwin(v5 - 8);
  v56 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v58 = &v52 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v52 - v11;
  __chkstk_darwin(v10);
  v14 = &v52 - v13;
  v15 = type metadata accessor for Date();
  v16 = __chkstk_darwin(v15);
  v52 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v53 = &v52 - v19;
  v20 = __chkstk_darwin(v18);
  v57 = &v52 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v52 - v23;
  __chkstk_darwin(v22);
  v26 = &v52 - v25;
  v28 = v27;
  sub_100006C20(a1, v14, &qword_100356188);
  v29 = *(v28 + 48);
  if (v29(v14, 1, v15) == 1)
  {
    static Date.distantPast.getter();
    if (v29(v14, 1, v15) != 1)
    {
      sub_100008FA0(v14, &qword_100356188);
    }
  }

  else
  {
    (*(v28 + 32))(v26, v14, v15);
  }

  sub_1002042C0(&qword_10035E408, &type metadata accessor for Date);
  v30 = dispatch thunk of static Comparable.< infix(_:_:)();
  v59 = v28;
  v60 = *(v28 + 8);
  v60(v26, v15);
  if (v30)
  {
    v31 = type metadata accessor for ServiceOutages.Outage(0);
    sub_100006C20(a1 + *(v31 + 20), v12, &qword_100356188);
    if (v29(v12, 1, v15) == 1)
    {
      static Date.distantFuture.getter();
      if (v29(v12, 1, v15) != 1)
      {
        sub_100008FA0(v12, &qword_100356188);
      }
    }

    else
    {
      (*(v59 + 32))(v24, v12, v15);
    }

    v32 = dispatch thunk of static Comparable.< infix(_:_:)();
    v60(v24, v15);
    if (v32)
    {
      return 0;
    }
  }

  v33 = v58;
  sub_100006C20(a1, v58, &qword_100356188);
  if (v29(v33, 1, v15) == 1)
  {
    v34 = v57;
    static Date.distantPast.getter();
    if (v29(v33, 1, v15) != 1)
    {
      sub_100008FA0(v33, &qword_100356188);
    }
  }

  else
  {
    v34 = v57;
    (*(v59 + 32))(v57, v33, v15);
  }

  v35 = static Date.< infix(_:_:)();
  v60(v34, v15);
  if ((v35 & 1) == 0)
  {
    return 0;
  }

  v36 = type metadata accessor for ServiceOutages.Outage(0);
  v37 = v56;
  sub_100006C20(a1 + *(v36 + 20), v56, &qword_100356188);
  if (v29(v37, 1, v15) != 1)
  {
    v49 = v53;
    (*(v59 + 32))(v53, v37, v15);
    Date.timeIntervalSince(_:)();
    v51 = v50;
    if (qword_100353B58 != -1)
    {
      swift_once();
    }

    sub_1000208D8(v62);
    v48 = sub_1002039DC(&v62[0]._countAndFlagsBits, v51);
    sub_1002043C0(v62);

    v60(v49, v15);
    return v48;
  }

  sub_100008FA0(v37, &qword_100356188);
  v38 = OBJC_IVAR____TtC8SOSBuddy18ServiceOutageModel__serviceOutages;
  v39 = v54;
  swift_beginAccess();
  v40 = v39 + v38;
  v41 = v55;
  sub_100006C20(v40, v55, &qword_10035E268);
  v42 = type metadata accessor for ServiceOutages(0);
  result = (*(*(v42 - 8) + 48))(v41, 1, v42);
  if (result != 1)
  {
    v44 = v41 + *(v42 + 20);
    v45 = v52;
    (*(v59 + 16))(v52, v44, v15);
    sub_10020321C(v41, type metadata accessor for ServiceOutages);
    Date.timeIntervalSince(_:)();
    v47 = v46;
    v60(v45, v15);
    if (qword_100353B58 != -1)
    {
      swift_once();
    }

    sub_1000208D8(v62);
    v48 = sub_1002039DC(&v62[0]._countAndFlagsBits, v47);
    sub_1002043C0(v62);

    return v48;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001EC090()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = *(result + 32);
    v10 = __CFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      __break(1u);
    }

    else
    {
      *(result + 32) = v11;
      Date.init()();
      v12 = sub_1001E8FAC();
      if (!v13)
      {
        v12 = sub_1001EB1BC(v6);
      }

      v14 = v12;
      v15 = v13;
      v16 = *(v1 + 8);
      v16(v6, v0);
      sub_1001F7E14(v14, v15, sub_1001E93DC);
      Date.init()();
      v17 = sub_1001E8FAC();
      v19 = v18;
      v16(v4, v0);
      sub_1001E9298(v17, v19);
      sub_100217874(v8);
    }
  }

  return result;
}

uint64_t sub_1001EC244()
{
  v1 = v0;
  *(v0 + 80) = 0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  v2 = OBJC_IVAR____TtC8SOSBuddy18ServiceOutageModel__serviceOutages;
  v3 = type metadata accessor for ServiceOutages(0);
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtC8SOSBuddy18ServiceOutageModel__silencePeriod;
  v5 = type metadata accessor for SilencePeriod(0);
  (*(*(v5 - 8) + 56))(v1 + v4, 1, 1, v5);
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  sub_1000040A8(&unk_100365610);
  swift_allocObject();
  *(v1 + 16) = PassthroughSubject.init()();
  swift_allocObject();
  *(v1 + 24) = PassthroughSubject.init()();
  return v1;
}

uint64_t sub_1001EC360()
{

  sub_100008FA0(v0 + OBJC_IVAR____TtC8SOSBuddy18ServiceOutageModel__serviceOutages, &qword_10035E268);
  return sub_100008FA0(v0 + OBJC_IVAR____TtC8SOSBuddy18ServiceOutageModel__silencePeriod, &qword_10035E270);
}

uint64_t sub_1001EC3CC()
{

  sub_100008FA0(v0 + OBJC_IVAR____TtC8SOSBuddy18ServiceOutageModel__serviceOutages, &qword_10035E268);
  sub_100008FA0(v0 + OBJC_IVAR____TtC8SOSBuddy18ServiceOutageModel__silencePeriod, &qword_10035E270);

  return swift_deallocClassInstance();
}

void sub_1001EC4CC()
{
  sub_1001EC5E4(319, &qword_10035E2F0, type metadata accessor for ServiceOutages);
  if (v0 <= 0x3F)
  {
    sub_1001EC5E4(319, &qword_10035E2F8, type metadata accessor for SilencePeriod);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1001EC5E4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1001EC638()
{
  v1 = v0;
  v2 = sub_1000040A8(&unk_10035CF50);
  __chkstk_darwin(v2 - 8);
  v28 = v23 - v3;
  v27 = sub_1000040A8(&qword_1003560A0);
  v30 = *(v27 - 8);
  __chkstk_darwin(v27);
  v29 = v23 - v4;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v5 = sub_100233B1C(_swiftEmptyArrayStorage);
  }

  else
  {
    v5 = &_swiftEmptySetSingleton;
  }

  *(v0 + 48) = v5;
  v31 = v0 + 48;
  type metadata accessor for TimerBasedHysteresisScheduler();
  v6 = swift_allocObject();
  sub_1000040A8(&qword_100367CF8);
  v7 = swift_allocObject();
  *(v1 + 56) = sub_100202EC0(v6, 0xD000000000000010, 0x80000001002A4850, sub_1001ECD4C, 0, v7, &qword_10035F530, &unk_100289DE0, 2);
  v8 = OBJC_IVAR____TtC8SOSBuddy15ConnectionModel__transmissionProgress;
  v9 = type metadata accessor for ConnectionModel.UserTransmissionProgress(0);
  (*(*(v9 - 8) + 56))(v1 + v8, 1, 1, v9);
  *(v1 + OBJC_IVAR____TtC8SOSBuddy15ConnectionModel__userVisibleProgressTimer) = 0;
  v10 = OBJC_IVAR____TtC8SOSBuddy15ConnectionModel__overrideTransmissionProgress;
  v11 = type metadata accessor for ConnectionModel.OverrideTransmissionProgress(0);
  (*(*(v11 - 8) + 56))(v1 + v10, 1, 1, v11);
  v12 = OBJC_IVAR____TtC8SOSBuddy15ConnectionModel__simulatedTransmissionProgress;
  v13 = type metadata accessor for TransmissionProgress(0);
  (*(*(v13 - 8) + 56))(v1 + v12, 1, 1, v13);
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  sub_1000040A8(&unk_100365610);
  swift_allocObject();
  *(v1 + 16) = PassthroughSubject.init()();
  swift_allocObject();
  *(v1 + 24) = PassthroughSubject.init()();
  v32 = *(*(v1 + 56) + 16);
  sub_10001D630(0, &qword_10035BA10);
  swift_retain_n();

  v14 = static OS_dispatch_queue.main.getter();
  v33 = v14;
  v25 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v15 = *(v25 - 8);
  v24 = *(v15 + 56);
  v26 = v15 + 56;
  v16 = v28;
  v24(v28, 1, 1, v25);
  v23[3] = sub_100009274(&qword_10035CF60, &unk_100365610);
  v23[2] = sub_10002683C();
  v17 = v29;
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v16, &unk_10035CF50);

  v18 = swift_allocObject();
  *(v18 + 16) = sub_100204774;
  *(v18 + 24) = v1;
  v23[1] = sub_100009274(&qword_10035CF70, &qword_1003560A0);

  v19 = v27;
  Publisher<>.sink(receiveValue:)();

  v30 = *(v30 + 8);
  (v30)(v17, v19);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v32 = *(*(v1 + 56) + 24);

  v20 = static OS_dispatch_queue.main.getter();
  v33 = v20;
  v24(v16, 1, 1, v25);
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v16, &unk_10035CF50);

  v21 = swift_allocObject();
  *(v21 + 16) = sub_100204790;
  *(v21 + 24) = v1;
  Publisher<>.sink(receiveValue:)();

  (v30)(v17, v19);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v1;
}

uint64_t sub_1001ECCBC(uint64_t result)
{
  if (*(result + 32))
  {
    *(result + 41) = 1;
  }

  else
  {
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    return Subject<>.send()();
  }

  return result;
}

uint64_t sub_1001ECD4C(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x4024000000000000;
  if ((*a1 & 1) == 0)
  {
    v2 = 0;
  }

  if ((*a2 == 2) | *a2 & 1)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1001ECD80(uint64_t a1)
{
  v61 = a1;
  v2 = sub_1000040A8(&qword_100367BB8);
  __chkstk_darwin(v2 - 8);
  v4 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v54 - v6;
  __chkstk_darwin(v8);
  v60 = &v54 - v9;
  v10 = type metadata accessor for ConnectionModel.UserTransmissionProgress(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v59 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000040A8(&qword_100354FD8);
  __chkstk_darwin(v13 - 8);
  v15 = &v54 - v14;
  v16 = type metadata accessor for TransmissionProgress(0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v58 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v54 - v20;
  __chkstk_darwin(v22);
  v24 = &v54 - v23;
  sub_100006C20(v61, v15, &qword_100354FD8);
  v25 = *(v17 + 48);
  v61 = v16;
  if (v25(v15, 1, v16) == 1)
  {
    sub_100008FA0(v15, &qword_100354FD8);
    (*(v11 + 56))(v7, 1, 1, v10);
    v26 = OBJC_IVAR____TtC8SOSBuddy15ConnectionModel__transmissionProgress;
    swift_beginAccess();
    sub_100006C20(v1 + v26, v4, &qword_100367BB8);
    sub_1001EF228(v7);
    swift_beginAccess();
    sub_10017E5D8(v7, v1 + v26, &qword_100367BB8);
    swift_endAccess();
    sub_1001EF5FC(v4);
    sub_100008FA0(v4, &qword_100367BB8);
    return sub_100008FA0(v7, &qword_100367BB8);
  }

  else
  {
    v55 = v11;
    v56 = v10;
    v57 = v1;
    sub_100204258(v15, v24, type metadata accessor for TransmissionProgress);
    v28 = v24;
    if (qword_100353A20 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_10000F53C(v29, qword_100381CB0);
    sub_1002031B4(v24, v21, type metadata accessor for TransmissionProgress);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v62[0] = v33;
      *v32 = 136446210;
      sub_1002031B4(v21, v58, type metadata accessor for TransmissionProgress);
      v34 = String.init<A>(describing:)();
      v36 = v35;
      sub_10020321C(v21, type metadata accessor for TransmissionProgress);
      v37 = sub_10017C9E8(v34, v36, v62);
      v28 = v24;

      *(v32 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v30, v31, "Transmission progress received: %{public}s", v32, 0xCu);
      sub_100008964(v33);
    }

    else
    {

      sub_10020321C(v21, type metadata accessor for TransmissionProgress);
    }

    v38 = v7;
    v40 = v56;
    v39 = v57;
    v41 = v60;
    v42 = OBJC_IVAR____TtC8SOSBuddy15ConnectionModel__transmissionProgress;
    swift_beginAccess();
    sub_100006C20(v39 + v42, v41, &qword_100367BB8);
    v43 = v55;
    v44 = v4;
    if ((*(v55 + 48))(v41, 1, v40) == 1)
    {
      sub_100008FA0(v41, &qword_100367BB8);
      sub_1001ED60C(v28, v38);
      (*(v43 + 56))(v38, 0, 1, v40);
      sub_100006C20(v39 + v42, v4, &qword_100367BB8);
      sub_1001EF228(v38);
      swift_beginAccess();
      sub_10017E5D8(v38, v39 + v42, &qword_100367BB8);
      swift_endAccess();
      sub_1001EF5FC(v4);
      sub_100008FA0(v4, &qword_100367BB8);
      sub_100008FA0(v38, &qword_100367BB8);
      v45 = v28;
    }

    else
    {
      v46 = v59;
      sub_100204258(v41, v59, type metadata accessor for ConnectionModel.UserTransmissionProgress);
      v47 = *(v61 + 28);
      v48 = *(v28 + v47);
      v49 = *(v46 + v47);
      if (v48 >= v49)
      {
        if (v48 < 100 || v49 > 99)
        {
          v50 = v28;
          sub_1002031B4(v28, v38, type metadata accessor for TransmissionProgress);
          v53 = *(v40 + 20);
          v52 = v46 + v53;
          v51 = v38 + v53;
        }

        else
        {
          sub_1001ED7E8(v28);
          v50 = v28;
          sub_1002031B4(v28, v38, type metadata accessor for TransmissionProgress);
          v51 = v38 + *(v40 + 20);
          v52 = v28;
        }

        sub_1002031B4(v52, v51, type metadata accessor for TransmissionProgress);
        *(v38 + *(v40 + 24)) = *(v46 + *(v40 + 24));
        (*(v43 + 56))(v38, 0, 1, v40);
      }

      else
      {
        sub_1001ED60C(v28, v38);
        (*(v43 + 56))(v38, 0, 1, v40);
        v50 = v28;
      }

      sub_100006C20(v39 + v42, v44, &qword_100367BB8);
      sub_1001EF228(v38);
      swift_beginAccess();
      sub_10017E5D8(v38, v39 + v42, &qword_100367BB8);
      swift_endAccess();
      sub_1001EF5FC(v44);
      sub_100008FA0(v44, &qword_100367BB8);
      sub_100008FA0(v38, &qword_100367BB8);
      sub_10020321C(v46, type metadata accessor for ConnectionModel.UserTransmissionProgress);
      v45 = v50;
    }

    return sub_10020321C(v45, type metadata accessor for TransmissionProgress);
  }
}

uint64_t sub_1001ED60C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TransmissionProgress(0);
  v5 = a1 + *(v4 + 24);
  v6 = *v5;
  if (*(v5 + 8))
  {
    v6 = 0.0;
  }

  v7 = round(*(a1 + *(v4 + 28)) / 100.0 * v6);
  if (v7 < 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v7;
  }

  if (v7 >= 0.0 && (*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v8 <= -1.0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v8 < 1.84467441e19)
  {
    if (qword_100353A20 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_16:
  __break(1u);
LABEL_17:
  swift_once();
LABEL_11:
  v9 = v8;
  v10 = type metadata accessor for Logger();
  sub_10000F53C(v10, qword_100381CB0);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134349056;
    *(v13 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v11, v12, "Starting new transmission progress with %{public}llu seconds in", v13, 0xCu);
  }

  sub_1002031B4(a1, a2, type metadata accessor for TransmissionProgress);
  v14 = type metadata accessor for ConnectionModel.UserTransmissionProgress(0);
  result = sub_1002031B4(a1, a2 + *(v14 + 20), type metadata accessor for TransmissionProgress);
  *(a2 + *(v14 + 24)) = v9;
  return result;
}

uint64_t sub_1001ED7E8(uint64_t a1)
{
  v2 = v1;
  v41 = a1;
  v3 = sub_1000040A8(&qword_100367BC0);
  __chkstk_darwin(v3 - 8);
  v40 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = &v37 - v6;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v37 - v12;
  if (qword_100353A20 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000F53C(v14, qword_100381CB0);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Scheduling 100%% transmission usability timer", v17, 2u);
  }

  UUID.init()();
  if (*(v41 + *(type metadata accessor for TransmissionProgress(0) + 32)) == 3)
  {
    v18 = 4.0;
  }

  else
  {
    v18 = 2.0;
  }

  v37 = objc_opt_self();
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = v2;
  v21 = *(v8 + 16);
  v21(v10, v13, v7);
  v22 = *(v8 + 80);
  v38 = v13;
  v23 = (v22 + 24) & ~v22;
  v24 = swift_allocObject();
  *(v24 + 16) = v19;
  v25 = v24 + v23;
  v26 = v7;
  (*(v8 + 32))(v25, v10, v7);
  aBlock[4] = sub_100204600;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10008137C;
  aBlock[3] = &unk_100337DE8;
  v27 = _Block_copy(aBlock);

  v28 = [v37 scheduledTimerWithTimeInterval:0 repeats:v27 block:v18];
  _Block_release(v27);
  v29 = v39;
  v30 = v13;
  v31 = v26;
  v21(v39, v30, v26);
  v32 = type metadata accessor for ConnectionModel.OverrideTransmissionProgress(0);
  sub_1002031B4(v41, v29 + *(v32 + 20), type metadata accessor for TransmissionProgress);
  *(v29 + *(v32 + 24)) = v28;
  (*(*(v32 - 8) + 56))(v29, 0, 1, v32);
  v33 = OBJC_IVAR____TtC8SOSBuddy15ConnectionModel__overrideTransmissionProgress;
  swift_beginAccess();
  v34 = v40;
  sub_100006C20(v20 + v33, v40, &qword_100367BC0);
  v35 = v28;
  sub_1001EFF6C(v29);
  swift_beginAccess();
  sub_10017E5D8(v29, v20 + v33, &qword_100367BC0);
  swift_endAccess();
  sub_1001F02D0(v34);

  sub_100008FA0(v34, &qword_100367BC0);
  sub_100008FA0(v29, &qword_100367BC0);
  return (*(v8 + 8))(v38, v31);
}

uint64_t sub_1001EDCC8(uint64_t a1)
{
  v64 = a1;
  v2 = sub_1000040A8(&qword_100367BC0);
  __chkstk_darwin(v2 - 8);
  v60 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v61 = &v52 - v5;
  v54 = type metadata accessor for TransmissionProgress(0);
  __chkstk_darwin(v54);
  v53 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v55 = (&v52 - v8);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v56 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1000040A8(&qword_100355318);
  __chkstk_darwin(v63);
  v13 = &v52 - v12;
  v14 = sub_1000040A8(&qword_100355320);
  __chkstk_darwin(v14 - 8);
  v62 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v52 - v17;
  __chkstk_darwin(v19);
  v21 = &v52 - v20;
  v22 = OBJC_IVAR____TtC8SOSBuddy15ConnectionModel__overrideTransmissionProgress;
  swift_beginAccess();
  v23 = type metadata accessor for ConnectionModel.OverrideTransmissionProgress(0);
  v57 = *(v23 - 8);
  v58 = v23;
  v24 = *(v57 + 48);
  v65 = v1;
  v25 = v24(v1 + v22, 1);
  v59 = v22;
  if (v25)
  {
    v26 = *(v10 + 56);
    v26(v21, 1, 1, v9);
    (*(v10 + 16))(v18, v64, v9);
  }

  else
  {
    v27 = *(v10 + 16);
    v27(v21, v65 + v22, v9);
    v26 = *(v10 + 56);
    v26(v21, 0, 1, v9);
    v27(v18, v64, v9);
  }

  v26(v18, 0, 1, v9);
  v28 = *(v63 + 48);
  sub_100006C20(v21, v13, &qword_100355320);
  sub_100006C20(v18, &v13[v28], &qword_100355320);
  v29 = *(v10 + 48);
  if (v29(v13, 1, v9) == 1)
  {
    sub_100008FA0(v18, &qword_100355320);
    sub_100008FA0(v21, &qword_100355320);
    if (v29(&v13[v28], 1, v9) == 1)
    {
      sub_100008FA0(v13, &qword_100355320);
      goto LABEL_11;
    }

LABEL_9:
    v31 = &qword_100355318;
    v32 = v13;
    return sub_100008FA0(v32, v31);
  }

  v30 = v62;
  sub_100006C20(v13, v62, &qword_100355320);
  if (v29(&v13[v28], 1, v9) == 1)
  {
    sub_100008FA0(v18, &qword_100355320);
    sub_100008FA0(v21, &qword_100355320);
    (*(v10 + 8))(v30, v9);
    goto LABEL_9;
  }

  v33 = v56;
  (*(v10 + 32))(v56, &v13[v28], v9);
  sub_1002042C0(&qword_100355330, &type metadata accessor for UUID);
  v34 = v30;
  v35 = dispatch thunk of static Equatable.== infix(_:_:)();
  v36 = *(v10 + 8);
  v36(v33, v9);
  sub_100008FA0(v18, &qword_100355320);
  sub_100008FA0(v21, &qword_100355320);
  v36(v34, v9);
  result = sub_100008FA0(v13, &qword_100355320);
  if ((v35 & 1) == 0)
  {
    return result;
  }

LABEL_11:
  v38 = OBJC_IVAR____TtC8SOSBuddy15ConnectionModel__transmissionProgress;
  v39 = v65;
  swift_beginAccess();
  v40 = type metadata accessor for ConnectionModel.UserTransmissionProgress(0);
  if ((*(*(v40 - 8) + 48))(v39 + v38, 1, v40))
  {
    v41 = v61;
    (*(v57 + 56))(v61, 1, 1, v58);
    v43 = v59;
    v42 = v60;
    v44 = v65;
    sub_100006C20(v65 + v59, v60, &qword_100367BC0);
    sub_1001EFF6C(v41);
    swift_beginAccess();
    sub_10017E5D8(v41, v44 + v43, &qword_100367BC0);
    swift_endAccess();
    sub_1001F02D0(v42);
    sub_100008FA0(v42, &qword_100367BC0);
    v32 = v41;
    v31 = &qword_100367BC0;
    return sub_100008FA0(v32, v31);
  }

  v45 = v65 + v38;
  v46 = v53;
  sub_1002031B4(v45, v53, type metadata accessor for TransmissionProgress);
  v47 = v55;
  sub_100204258(v46, v55, type metadata accessor for TransmissionProgress);
  if ((*(v47 + *(v54 + 28)) - 1) > 0x62)
  {
    v48 = v61;
    (*(v57 + 56))(v61, 1, 1, v58);
    v50 = v59;
    v49 = v60;
    v51 = v65;
    sub_100006C20(v65 + v59, v60, &qword_100367BC0);
    sub_1001EFF6C(v48);
    swift_beginAccess();
    sub_10017E5D8(v48, v51 + v50, &qword_100367BC0);
    swift_endAccess();
    sub_1001F02D0(v49);
    sub_100008FA0(v49, &qword_100367BC0);
    sub_100008FA0(v48, &qword_100367BC0);
  }

  else
  {
    sub_1001EE544(v47);
  }

  return sub_10020321C(v47, type metadata accessor for TransmissionProgress);
}

uint64_t sub_1001EE544(void *a1)
{
  v2 = sub_1000040A8(&qword_100367BC0);
  __chkstk_darwin(v2 - 8);
  v51 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v50 = &v43 - v5;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v8;
  __chkstk_darwin(v10);
  v12 = &v43 - v11;
  v13 = type metadata accessor for TransmissionProgress(0);
  __chkstk_darwin(v13);
  v15 = (&v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100353A20 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_10000F53C(v16, qword_100381CB0);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Scheduling 0%% transmission usability timer", v19, 2u);
  }

  v21 = *a1;
  v20 = a1[1];
  sub_100006C20(a1 + v13[5], v15 + v13[5], &qword_100356188);
  v22 = v13[6];
  v23 = *(a1 + v22);
  v24 = *(a1 + v13[8]);
  v25 = *(a1 + v22 + 8);
  *v15 = v21;
  v15[1] = v20;
  v26 = v15 + v22;
  *v26 = v23;
  v26[8] = v25;
  *(v15 + v13[7]) = 0;
  *(v15 + v13[8]) = v24;

  UUID.init()();
  v45 = objc_opt_self();
  v27 = swift_allocObject();
  v28 = v49;
  swift_weakInit();
  v44 = *(v7 + 16);
  v47 = v12;
  v44(v9, v12, v6);
  v29 = v6;
  v30 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = v27;
  v32 = *(v7 + 32);
  v33 = v31 + v30;
  v34 = v29;
  v46 = v29;
  v32(v33, v9, v29);
  aBlock[4] = sub_1002046DC;
  aBlock[5] = v31;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10008137C;
  aBlock[3] = &unk_100337E38;
  v35 = _Block_copy(aBlock);

  v36 = [v45 scheduledTimerWithTimeInterval:0 repeats:v35 block:1.0];
  _Block_release(v35);
  v37 = v50;
  v44(v50, v12, v34);
  v38 = type metadata accessor for ConnectionModel.OverrideTransmissionProgress(0);
  sub_1002031B4(v15, v37 + *(v38 + 20), type metadata accessor for TransmissionProgress);
  *(v37 + *(v38 + 24)) = v36;
  (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
  v39 = OBJC_IVAR____TtC8SOSBuddy15ConnectionModel__overrideTransmissionProgress;
  swift_beginAccess();
  v40 = v51;
  sub_100006C20(v28 + v39, v51, &qword_100367BC0);
  v41 = v36;
  sub_1001EFF6C(v37);
  swift_beginAccess();
  sub_10017E5D8(v37, v28 + v39, &qword_100367BC0);
  swift_endAccess();
  sub_1001F02D0(v40);

  sub_100008FA0(v40, &qword_100367BC0);
  sub_100008FA0(v37, &qword_100367BC0);
  (*(v7 + 8))(v47, v46);
  return sub_10020321C(v15, type metadata accessor for TransmissionProgress);
}

uint64_t sub_1001EEAE0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a4(a3);
  }

  return result;
}

uint64_t sub_1001EEB54(uint64_t a1)
{
  v48 = a1;
  v2 = sub_1000040A8(&qword_100367BC0);
  __chkstk_darwin(v2 - 8);
  v46 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v45 = &v40 - v5;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v41 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000040A8(&qword_100355318);
  __chkstk_darwin(v9);
  v49 = &v40 - v10;
  v11 = sub_1000040A8(&qword_100355320);
  __chkstk_darwin(v11 - 8);
  v47 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v40 - v14;
  __chkstk_darwin(v16);
  v18 = &v40 - v17;
  v19 = OBJC_IVAR____TtC8SOSBuddy15ConnectionModel__overrideTransmissionProgress;
  swift_beginAccess();
  v20 = type metadata accessor for ConnectionModel.OverrideTransmissionProgress(0);
  v42 = *(v20 - 8);
  v43 = v20;
  v21 = (*(v42 + 48))(v1 + v19, 1);
  v44 = v19;
  if (v21)
  {
    v22 = *(v7 + 56);
    v22(v18, 1, 1, v6);
    (*(v7 + 16))(v15, v48, v6);
  }

  else
  {
    v23 = *(v7 + 16);
    v23(v18, v1 + v19, v6);
    v22 = *(v7 + 56);
    v22(v18, 0, 1, v6);
    v23(v15, v48, v6);
  }

  v22(v15, 0, 1, v6);
  v24 = *(v9 + 48);
  v25 = v49;
  sub_100006C20(v18, v49, &qword_100355320);
  v26 = v25;
  sub_100006C20(v15, v25 + v24, &qword_100355320);
  v27 = *(v7 + 48);
  if (v27(v26, 1, v6) == 1)
  {
    sub_100008FA0(v15, &qword_100355320);
    v28 = v49;
    sub_100008FA0(v18, &qword_100355320);
    if (v27(v28 + v24, 1, v6) == 1)
    {
      sub_100008FA0(v28, &qword_100355320);
LABEL_11:
      v37 = v45;
      (*(v42 + 56))(v45, 1, 1, v43);
      v38 = v44;
      v39 = v46;
      sub_100006C20(v1 + v44, v46, &qword_100367BC0);
      sub_1001EFF6C(v37);
      swift_beginAccess();
      sub_10017E5D8(v37, v1 + v38, &qword_100367BC0);
      swift_endAccess();
      sub_1001F02D0(v39);
      sub_100008FA0(v39, &qword_100367BC0);
      v31 = v37;
      v30 = &qword_100367BC0;
      return sub_100008FA0(v31, v30);
    }
  }

  else
  {
    v29 = v47;
    sub_100006C20(v26, v47, &qword_100355320);
    if (v27(v26 + v24, 1, v6) != 1)
    {
      v32 = v26 + v24;
      v33 = v29;
      v34 = v41;
      (*(v7 + 32))(v41, v32, v6);
      sub_1002042C0(&qword_100355330, &type metadata accessor for UUID);
      LODWORD(v48) = dispatch thunk of static Equatable.== infix(_:_:)();
      v35 = *(v7 + 8);
      v35(v34, v6);
      sub_100008FA0(v15, &qword_100355320);
      sub_100008FA0(v18, &qword_100355320);
      v35(v33, v6);
      result = sub_100008FA0(v26, &qword_100355320);
      if ((v48 & 1) == 0)
      {
        return result;
      }

      goto LABEL_11;
    }

    sub_100008FA0(v15, &qword_100355320);
    v28 = v49;
    sub_100008FA0(v18, &qword_100355320);
    (*(v7 + 8))(v29, v6);
  }

  v30 = &qword_100355318;
  v31 = v28;
  return sub_100008FA0(v31, v30);
}

uint64_t sub_1001EF228(uint64_t a1)
{
  v3 = type metadata accessor for ConnectionModel.UserTransmissionProgress(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v22 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1000040A8(&qword_100367BB8);
  __chkstk_darwin(v6 - 8);
  v8 = (&v22 - v7);
  v9 = sub_1000040A8(&qword_100367BE8);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v22 - v11;
  v13 = OBJC_IVAR____TtC8SOSBuddy15ConnectionModel__transmissionProgress;
  swift_beginAccess();
  v14 = *(v10 + 56);
  sub_100006C20(v1 + v13, v12, &qword_100367BB8);
  sub_100006C20(a1, &v12[v14], &qword_100367BB8);
  v15 = *(v4 + 48);
  if (v15(v12, 1, v3) == 1)
  {
    if (v15(&v12[v14], 1, v3) == 1)
    {
      return sub_100008FA0(v12, &qword_100367BB8);
    }

    goto LABEL_6;
  }

  sub_100006C20(v12, v8, &qword_100367BB8);
  if (v15(&v12[v14], 1, v3) == 1)
  {
    sub_10020321C(v8, type metadata accessor for ConnectionModel.UserTransmissionProgress);
LABEL_6:
    v17 = &qword_100367BE8;
    goto LABEL_13;
  }

  v18 = v22;
  sub_100204258(&v12[v14], v22, type metadata accessor for ConnectionModel.UserTransmissionProgress);
  if (sub_1000F84AC(v8, v18) && sub_1000F84AC((v8 + *(v3 + 20)), (v18 + *(v3 + 20))))
  {
    v19 = *(v3 + 24);
    v20 = *(v8 + v19);
    v21 = *(v18 + v19);
    sub_10020321C(v18, type metadata accessor for ConnectionModel.UserTransmissionProgress);
    sub_10020321C(v8, type metadata accessor for ConnectionModel.UserTransmissionProgress);
    result = sub_100008FA0(v12, &qword_100367BB8);
    if (v20 == v21)
    {
      return result;
    }

    if (!*(v1 + 32))
    {
      goto LABEL_14;
    }

LABEL_11:
    *(v1 + 40) = 1;
    return result;
  }

  sub_10020321C(v18, type metadata accessor for ConnectionModel.UserTransmissionProgress);
  sub_10020321C(v8, type metadata accessor for ConnectionModel.UserTransmissionProgress);
  v17 = &qword_100367BB8;
LABEL_13:
  result = sub_100008FA0(v12, v17);
  if (*(v1 + 32))
  {
    goto LABEL_11;
  }

LABEL_14:
  sub_1000040A8(&unk_100365610);
  sub_100009274(&qword_10035CF00, &unk_100365610);
  return Subject<>.send()();
}

void sub_1001EF5FC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ConnectionModel.UserTransmissionProgress(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v40 = (&v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = sub_1000040A8(&qword_100367BB8);
  v7 = __chkstk_darwin(v43);
  v42 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v46 = &v39 - v10;
  __chkstk_darwin(v9);
  v12 = (&v39 - v11);
  v13 = sub_1000040A8(&qword_100367BE8);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v39 - v15;
  v17 = OBJC_IVAR____TtC8SOSBuddy15ConnectionModel__transmissionProgress;
  swift_beginAccess();
  v18 = *(v14 + 56);
  v41 = v17;
  v45 = v2;
  sub_100006C20(v2 + v17, v16, &qword_100367BB8);
  v44 = a1;
  sub_100006C20(a1, &v16[v18], &qword_100367BB8);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_100008FA0(v16, &qword_100367BB8);
      return;
    }

    goto LABEL_6;
  }

  sub_100006C20(v16, v12, &qword_100367BB8);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_10020321C(v12, type metadata accessor for ConnectionModel.UserTransmissionProgress);
LABEL_6:
    sub_100008FA0(v16, &qword_100367BE8);
    v20 = v45;
    v21 = v46;
    goto LABEL_12;
  }

  v22 = v40;
  sub_100204258(&v16[v18], v40, type metadata accessor for ConnectionModel.UserTransmissionProgress);
  v23 = sub_1000F84AC(v12, v22);
  v20 = v45;
  v21 = v46;
  if (v23 && sub_1000F84AC((v12 + *(v4 + 20)), (v22 + *(v4 + 20))))
  {
    v24 = *(v4 + 24);
    v25 = *(v12 + v24);
    v26 = *(v22 + v24);
    sub_10020321C(v22, type metadata accessor for ConnectionModel.UserTransmissionProgress);
    sub_10020321C(v12, type metadata accessor for ConnectionModel.UserTransmissionProgress);
    sub_100008FA0(v16, &qword_100367BB8);
    if (v25 == v26)
    {
      return;
    }
  }

  else
  {
    sub_10020321C(v22, type metadata accessor for ConnectionModel.UserTransmissionProgress);
    sub_10020321C(v12, type metadata accessor for ConnectionModel.UserTransmissionProgress);
    sub_100008FA0(v16, &qword_100367BB8);
  }

LABEL_12:
  if (qword_100353A20 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_10000F53C(v27, qword_100381CB0);
  sub_100006C20(v44, v21, &qword_100367BB8);

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47 = v46;
    *v30 = 136446466;
    v31 = v42;
    sub_100006C20(v21, v42, &qword_100367BB8);
    LODWORD(v45) = v29;
    v32 = String.init<A>(describing:)();
    v34 = v33;
    sub_100008FA0(v21, &qword_100367BB8);
    v35 = sub_10017C9E8(v32, v34, &v47);

    *(v30 + 4) = v35;
    *(v30 + 12) = 2082;
    sub_100006C20(v20 + v41, v31, &qword_100367BB8);
    v36 = String.init<A>(describing:)();
    v38 = sub_10017C9E8(v36, v37, &v47);

    *(v30 + 14) = v38;
    _os_log_impl(&_mh_execute_header, v28, v45, "Transmission progress changed from: %{public}s to: %{public}s", v30, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100008FA0(v21, &qword_100367BB8);
  }

  sub_1001EFC4C();
  if (*(v20 + 32))
  {
    *(v20 + 41) = 1;
  }

  else
  {
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
  }
}

void sub_1001EFC4C()
{
  v1 = v0;
  v2 = sub_1000040A8(&qword_100367BB8);
  __chkstk_darwin(v2 - 8);
  v4 = &aBlock[-1] - v3;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10001D630(0, &qword_10035BA10);
  *v8 = static OS_dispatch_queue.main.getter();
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v9 = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v8, v5);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v10 = OBJC_IVAR____TtC8SOSBuddy15ConnectionModel__transmissionProgress;
  swift_beginAccess();
  sub_100006C20(v1 + v10, v4, &qword_100367BB8);
  v11 = type metadata accessor for ConnectionModel.UserTransmissionProgress(0);
  LODWORD(v10) = (*(*(v11 - 8) + 48))(v4, 1, v11);
  sub_100008FA0(v4, &qword_100367BB8);
  v12 = OBJC_IVAR____TtC8SOSBuddy15ConnectionModel__userVisibleProgressTimer;
  v13 = *(v1 + OBJC_IVAR____TtC8SOSBuddy15ConnectionModel__userVisibleProgressTimer);
  if (v10 == 1)
  {
    if (v13)
    {
      [v13 invalidate];
      v14 = *(v1 + v12);
    }

    else
    {
      v14 = 0;
    }

    *(v1 + v12) = 0;
  }

  else
  {
    if (v13)
    {
      return;
    }

    v15 = objc_opt_self();
    v16 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1002043F0;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10008137C;
    aBlock[3] = &unk_100337C58;
    v17 = _Block_copy(aBlock);

    v18 = [v15 scheduledTimerWithTimeInterval:1 repeats:v17 block:1.0];
    _Block_release(v17);
    v14 = *(v1 + v12);
    *(v1 + v12) = v18;
  }
}

uint64_t sub_1001EFF6C(uint64_t a1)
{
  v18 = a1;
  v2 = type metadata accessor for ConnectionModel.OverrideTransmissionProgress(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000040A8(&qword_100367BC0);
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - v7;
  v9 = sub_1000040A8(&qword_100367CE0);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v18 - v11;
  v13 = OBJC_IVAR____TtC8SOSBuddy15ConnectionModel__overrideTransmissionProgress;
  swift_beginAccess();
  v14 = *(v10 + 56);
  sub_100006C20(v1 + v13, v12, &qword_100367BC0);
  sub_100006C20(v18, &v12[v14], &qword_100367BC0);
  v15 = *(v3 + 48);
  if (v15(v12, 1, v2) == 1)
  {
    if (v15(&v12[v14], 1, v2) == 1)
    {
      return sub_100008FA0(v12, &qword_100367BC0);
    }
  }

  else
  {
    sub_100006C20(v12, v8, &qword_100367BC0);
    if (v15(&v12[v14], 1, v2) != 1)
    {
      sub_100204258(&v12[v14], v5, type metadata accessor for ConnectionModel.OverrideTransmissionProgress);
      v17 = static UUID.== infix(_:_:)();
      sub_10020321C(v5, type metadata accessor for ConnectionModel.OverrideTransmissionProgress);
      sub_10020321C(v8, type metadata accessor for ConnectionModel.OverrideTransmissionProgress);
      result = sub_100008FA0(v12, &qword_100367BC0);
      if (v17)
      {
        return result;
      }

      goto LABEL_7;
    }

    sub_10020321C(v8, type metadata accessor for ConnectionModel.OverrideTransmissionProgress);
  }

  result = sub_100008FA0(v12, &qword_100367CE0);
LABEL_7:
  if (*(v1 + 32))
  {
    *(v1 + 40) = 1;
  }

  else
  {
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    return Subject<>.send()();
  }

  return result;
}

void sub_1001F02D0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ConnectionModel.OverrideTransmissionProgress(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v37 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1000040A8(&qword_100367BC0);
  __chkstk_darwin(v40);
  v39 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v43 = &v36 - v9;
  __chkstk_darwin(v10);
  v12 = &v36 - v11;
  v13 = sub_1000040A8(&qword_100367CE0);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v36 - v15;
  v17 = OBJC_IVAR____TtC8SOSBuddy15ConnectionModel__overrideTransmissionProgress;
  swift_beginAccess();
  v18 = *(v14 + 56);
  v38 = v17;
  v42 = v2;
  sub_100006C20(v2 + v17, v16, &qword_100367BC0);
  v41 = a1;
  sub_100006C20(a1, &v16[v18], &qword_100367BC0);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_100008FA0(v16, &qword_100367BC0);
      return;
    }
  }

  else
  {
    sub_100006C20(v16, v12, &qword_100367BC0);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v34 = v37;
      sub_100204258(&v16[v18], v37, type metadata accessor for ConnectionModel.OverrideTransmissionProgress);
      v35 = static UUID.== infix(_:_:)();
      sub_10020321C(v34, type metadata accessor for ConnectionModel.OverrideTransmissionProgress);
      sub_10020321C(v12, type metadata accessor for ConnectionModel.OverrideTransmissionProgress);
      sub_100008FA0(v16, &qword_100367BC0);
      v20 = v42;
      v21 = v43;
      if (v35)
      {
        return;
      }

      goto LABEL_7;
    }

    sub_10020321C(v12, type metadata accessor for ConnectionModel.OverrideTransmissionProgress);
  }

  sub_100008FA0(v16, &qword_100367CE0);
  v20 = v42;
  v21 = v43;
LABEL_7:
  if (qword_100353A20 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_10000F53C(v22, qword_100381CB0);
  sub_100006C20(v41, v21, &qword_100367BC0);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v44 = v43;
    *v25 = 136446466;
    v26 = v39;
    sub_100006C20(v21, v39, &qword_100367BC0);
    v27 = String.init<A>(describing:)();
    LODWORD(v42) = v24;
    v29 = v28;
    sub_100008FA0(v21, &qword_100367BC0);
    v30 = sub_10017C9E8(v27, v29, &v44);

    *(v25 + 4) = v30;
    *(v25 + 12) = 2082;
    sub_100006C20(v20 + v38, v26, &qword_100367BC0);
    v31 = String.init<A>(describing:)();
    v33 = sub_10017C9E8(v31, v32, &v44);

    *(v25 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v23, v42, "Override transmission progress changed from: %{public}s to: %{public}s", v25, 0x16u);
    swift_arrayDestroy();

    if (*(v20 + 32))
    {
LABEL_11:
      *(v20 + 41) = 1;
      return;
    }
  }

  else
  {

    sub_100008FA0(v21, &qword_100367BC0);
    if (*(v20 + 32))
    {
      goto LABEL_11;
    }
  }

  sub_1000040A8(&unk_100365610);
  sub_100009274(&qword_10035CF00, &unk_100365610);
  Subject<>.send()();
}

uint64_t sub_1001F08B0(uint64_t a1)
{
  v18 = a1;
  v2 = type metadata accessor for TransmissionProgress(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1000040A8(&qword_100354FD8);
  __chkstk_darwin(v6 - 8);
  v8 = (&v18 - v7);
  v9 = sub_1000040A8(&qword_100359F60);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v18 - v11;
  v13 = OBJC_IVAR____TtC8SOSBuddy15ConnectionModel__simulatedTransmissionProgress;
  swift_beginAccess();
  v14 = *(v10 + 56);
  sub_100006C20(v1 + v13, v12, &qword_100354FD8);
  sub_100006C20(v18, &v12[v14], &qword_100354FD8);
  v15 = *(v3 + 48);
  if (v15(v12, 1, v2) == 1)
  {
    if (v15(&v12[v14], 1, v2) == 1)
    {
      return sub_100008FA0(v12, &qword_100354FD8);
    }
  }

  else
  {
    sub_100006C20(v12, v8, &qword_100354FD8);
    if (v15(&v12[v14], 1, v2) != 1)
    {
      sub_100204258(&v12[v14], v5, type metadata accessor for TransmissionProgress);
      v17 = sub_1000F84AC(v8, v5);
      sub_10020321C(v5, type metadata accessor for TransmissionProgress);
      sub_10020321C(v8, type metadata accessor for TransmissionProgress);
      result = sub_100008FA0(v12, &qword_100354FD8);
      if (v17)
      {
        return result;
      }

      goto LABEL_7;
    }

    sub_10020321C(v8, type metadata accessor for TransmissionProgress);
  }

  result = sub_100008FA0(v12, &qword_100359F60);
LABEL_7:
  if (*(v1 + 32))
  {
    *(v1 + 40) = 1;
  }

  else
  {
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    return Subject<>.send()();
  }

  return result;
}

void sub_1001F0C14(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TransmissionProgress(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v37 = (&v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = sub_1000040A8(&qword_100354FD8);
  v7 = __chkstk_darwin(v40);
  v39 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v43 = &v36 - v10;
  __chkstk_darwin(v9);
  v12 = (&v36 - v11);
  v13 = sub_1000040A8(&qword_100359F60);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v36 - v15;
  v17 = OBJC_IVAR____TtC8SOSBuddy15ConnectionModel__simulatedTransmissionProgress;
  swift_beginAccess();
  v18 = *(v14 + 56);
  v38 = v17;
  v42 = v2;
  sub_100006C20(v2 + v17, v16, &qword_100354FD8);
  v41 = a1;
  sub_100006C20(a1, &v16[v18], &qword_100354FD8);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_100008FA0(v16, &qword_100354FD8);
      return;
    }
  }

  else
  {
    sub_100006C20(v16, v12, &qword_100354FD8);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v34 = v37;
      sub_100204258(&v16[v18], v37, type metadata accessor for TransmissionProgress);
      v35 = sub_1000F84AC(v12, v34);
      sub_10020321C(v34, type metadata accessor for TransmissionProgress);
      sub_10020321C(v12, type metadata accessor for TransmissionProgress);
      sub_100008FA0(v16, &qword_100354FD8);
      v20 = v42;
      v21 = v43;
      if (v35)
      {
        return;
      }

      goto LABEL_7;
    }

    sub_10020321C(v12, type metadata accessor for TransmissionProgress);
  }

  sub_100008FA0(v16, &qword_100359F60);
  v20 = v42;
  v21 = v43;
LABEL_7:
  if (qword_100353A20 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_10000F53C(v22, qword_100381CB0);
  sub_100006C20(v41, v21, &qword_100354FD8);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v44 = v43;
    *v25 = 136446466;
    v26 = v39;
    sub_100006C20(v21, v39, &qword_100354FD8);
    v27 = String.init<A>(describing:)();
    LODWORD(v42) = v24;
    v29 = v28;
    sub_100008FA0(v21, &qword_100354FD8);
    v30 = sub_10017C9E8(v27, v29, &v44);

    *(v25 + 4) = v30;
    *(v25 + 12) = 2082;
    sub_100006C20(v20 + v38, v26, &qword_100354FD8);
    v31 = String.init<A>(describing:)();
    v33 = sub_10017C9E8(v31, v32, &v44);

    *(v25 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v23, v42, "Simulated transmission progress changed from: %{public}s to: %{public}s", v25, 0x16u);
    swift_arrayDestroy();

    if (*(v20 + 32))
    {
LABEL_11:
      *(v20 + 41) = 1;
      return;
    }
  }

  else
  {

    sub_100008FA0(v21, &qword_100354FD8);
    if (*(v20 + 32))
    {
      goto LABEL_11;
    }
  }

  sub_1000040A8(&unk_100365610);
  sub_100009274(&qword_10035CF00, &unk_100365610);
  Subject<>.send()();
}

uint64_t sub_1001F11F4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1001F1250(1);
  }

  return result;
}

uint64_t sub_1001F1250(uint64_t a1)
{
  v4 = type metadata accessor for TransmissionProgress(0);
  __chkstk_darwin(v4);
  v65 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = &unk_10028FAA0;
  v7 = sub_1000040A8(&qword_100367BB8);
  v8 = __chkstk_darwin(v7 - 8);
  v64 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v63 = &v60 - v11;
  __chkstk_darwin(v10);
  v13 = &v60 - v12;
  v14 = type metadata accessor for ConnectionModel.UserTransmissionProgress(0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (&v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = OBJC_IVAR____TtC8SOSBuddy15ConnectionModel__transmissionProgress;
  swift_beginAccess();
  sub_100006C20(v1 + v18, v13, &qword_100367BB8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return sub_100008FA0(v13, &qword_100367BB8);
  }

  sub_100204258(v13, v17, type metadata accessor for ConnectionModel.UserTransmissionProgress);
  v20 = v17 + v4[6];
  if ((v20[8] & 1) == 0)
  {
    v21 = *v20;
    if (*v20 >= 1 && *(v17 + *(v14 + 20) + v4[7]) <= 99)
    {
      v22 = *(v1[7] + 136);
      if (v22 != 2 && (v22 & 1) != 0)
      {
        v23 = *(v17 + *(v14 + 24));
        v24 = __CFADD__(v23, a1);
        v25 = v23 + a1;
        if (v24)
        {
          __break(1u);
          goto LABEL_46;
        }

        v26 = v25;
        v27 = v21;
        v2 = v25 / v21;
        v62 = v25;
        if (v2 <= 0.5)
        {
          v6 = v1;
          if (qword_100353A20 != -1)
          {
            goto LABEL_49;
          }

          goto LABEL_20;
        }

        if (v2 <= 1.0)
        {
          v6 = v1;
          v39 = (v26 - v27 * 0.5) * 0.3 / (v27 * 0.5);
          if (qword_100353A20 != -1)
          {
            v61 = *&v39;
            swift_once();
            v39 = *&v61;
          }

          v2 = v39 + 0.5;
          v40 = type metadata accessor for Logger();
          sub_10000F53C(v40, qword_100381CB0);
          v35 = Logger.logObject.getter();
          v36 = static os_log_type_t.default.getter();
          if (!os_log_type_enabled(v35, v36))
          {
            goto LABEL_39;
          }

          v37 = swift_slowAlloc();
          *v37 = 0;
          v38 = "Slowing the progress down a bit";
          goto LABEL_38;
        }

        v28 = v26 - v27;
        if (v28 <= 30.0)
        {
          v6 = v1;
          v41 = v28 * 0.00333333333;
          v42 = 0.8;
          if (qword_100353A20 != -1)
          {
            v61 = 0x3FE999999999999ALL;
            swift_once();
            v42 = *&v61;
          }

          v2 = v41 + v42;
          v43 = type metadata accessor for Logger();
          sub_10000F53C(v43, qword_100381CB0);
          v35 = Logger.logObject.getter();
          v36 = static os_log_type_t.default.getter();
          if (!os_log_type_enabled(v35, v36))
          {
            goto LABEL_39;
          }

          v37 = swift_slowAlloc();
          *v37 = 0;
          v38 = "Less than 30 seconds over the estimation";
          goto LABEL_38;
        }

        if (v28 <= 60.0)
        {
          v6 = v1;
          v44 = (v28 + -30.0) * 0.00166666667;
          v45 = 0.9;
          if (qword_100353A20 != -1)
          {
            v61 = 0x3FECCCCCCCCCCCCDLL;
            swift_once();
            v45 = *&v61;
          }

          v2 = v44 + v45;
          v46 = type metadata accessor for Logger();
          sub_10000F53C(v46, qword_100381CB0);
          v35 = Logger.logObject.getter();
          v36 = static os_log_type_t.default.getter();
          if (!os_log_type_enabled(v35, v36))
          {
            goto LABEL_39;
          }

          v37 = swift_slowAlloc();
          *v37 = 0;
          v38 = "Less than 60 seconds over the estimation";
          goto LABEL_38;
        }

        v6 = v1;
        if (v28 <= 105.0)
        {
          v47 = (v28 + -60.0) * 0.000666666667;
          v48 = 0.95;
          if (qword_100353A20 != -1)
          {
            v61 = 0x3FEE666666666666;
            swift_once();
            v48 = *&v61;
          }

          v2 = v47 + v48;
          v49 = type metadata accessor for Logger();
          sub_10000F53C(v49, qword_100381CB0);
          v35 = Logger.logObject.getter();
          v36 = static os_log_type_t.default.getter();
          if (!os_log_type_enabled(v35, v36))
          {
            goto LABEL_39;
          }

          v37 = swift_slowAlloc();
          *v37 = 0;
          v38 = "Less than 105 seconds over the estimation";
          goto LABEL_38;
        }

        if (qword_100353A20 != -1)
        {
          swift_once();
        }

        v29 = type metadata accessor for Logger();
        sub_10000F53C(v29, qword_100381CB0);
        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          *v32 = 0;
          _os_log_impl(&_mh_execute_header, v30, v31, "Cap the progress at 98 percent", v32, 2u);
        }

        for (i = 98.0; ; i = fmin(v2, 0.98) * 100.0)
        {
          v50 = round(i);
          if ((*&v50 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            break;
          }

          if (v50 <= -9.22337204e18)
          {
            goto LABEL_47;
          }

          v61 = v6;
          if (v50 < 9.22337204e18)
          {
            v51 = v50;
            v53 = *v17;
            v52 = v17[1];
            v54 = v65;
            sub_100006C20(v17 + v4[5], &v65[v4[5]], &qword_100356188);
            v55 = *(v17 + v4[8]);
            *v54 = v53;
            v54[1] = v52;
            v56 = v54 + v4[6];
            *v56 = v21;
            v56[8] = 0;
            *(v54 + v4[7]) = v51;
            *(v54 + v4[8]) = v55;
            v57 = v63;
            sub_1002031B4(v17, v63, type metadata accessor for TransmissionProgress);
            sub_1002031B4(v54, v57 + *(v14 + 20), type metadata accessor for TransmissionProgress);
            *(v57 + *(v14 + 24)) = v62;
            (*(v15 + 56))(v57, 0, 1, v14);
            v58 = v61;
            v59 = v64;
            sub_100006C20(v61 + v18, v64, &qword_100367BB8);

            sub_1001EF228(v57);
            swift_beginAccess();
            sub_10017E5D8(v57, v58 + v18, &qword_100367BB8);
            swift_endAccess();
            sub_1001EF5FC(v59);
            sub_100008FA0(v59, &qword_100367BB8);
            sub_100008FA0(v57, &qword_100367BB8);
            sub_10020321C(v54, type metadata accessor for TransmissionProgress);
            return sub_10020321C(v17, type metadata accessor for ConnectionModel.UserTransmissionProgress);
          }

LABEL_48:
          __break(1u);
LABEL_49:
          swift_once();
LABEL_20:
          v34 = type metadata accessor for Logger();
          sub_10000F53C(v34, qword_100381CB0);
          v35 = Logger.logObject.getter();
          v36 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v35, v36))
          {
            v37 = swift_slowAlloc();
            *v37 = 0;
            v38 = "Keeping up with actual progress";
LABEL_38:
            _os_log_impl(&_mh_execute_header, v35, v36, v38, v37, 2u);
          }

LABEL_39:
        }

LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }
    }
  }

  return sub_10020321C(v17, type metadata accessor for ConnectionModel.UserTransmissionProgress);
}

uint64_t sub_1001F1BB8()
{

  sub_100008FA0(v0 + OBJC_IVAR____TtC8SOSBuddy15ConnectionModel__transmissionProgress, &qword_100367BB8);

  sub_100008FA0(v0 + OBJC_IVAR____TtC8SOSBuddy15ConnectionModel__overrideTransmissionProgress, &qword_100367BC0);
  return sub_100008FA0(v0 + OBJC_IVAR____TtC8SOSBuddy15ConnectionModel__simulatedTransmissionProgress, &qword_100354FD8);
}

uint64_t sub_1001F1C4C()
{

  sub_100008FA0(v0 + OBJC_IVAR____TtC8SOSBuddy15ConnectionModel__transmissionProgress, &qword_100367BB8);

  sub_100008FA0(v0 + OBJC_IVAR____TtC8SOSBuddy15ConnectionModel__overrideTransmissionProgress, &qword_100367BC0);
  sub_100008FA0(v0 + OBJC_IVAR____TtC8SOSBuddy15ConnectionModel__simulatedTransmissionProgress, &qword_100354FD8);
  return v0;
}

uint64_t sub_1001F1CF4()
{
  sub_1001F1C4C();

  return swift_deallocClassInstance();
}

void sub_1001F1D74()
{
  sub_1001EC5E4(319, &qword_100366620, type metadata accessor for ConnectionModel.UserTransmissionProgress);
  if (v0 <= 0x3F)
  {
    sub_1001EC5E4(319, &unk_100366628, type metadata accessor for ConnectionModel.OverrideTransmissionProgress);
    if (v1 <= 0x3F)
    {
      sub_1001EC5E4(319, &qword_100359EF8, type metadata accessor for TransmissionProgress);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_1001F1F30()
{
  if ((static Angle.== infix(_:_:)() & 1) == 0 || (static Angle.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  return static Angle.== infix(_:_:)();
}

uint64_t sub_1001F1FA8(uint64_t result)
{
  v2 = v1;
  v3 = *(v1 + 56);
  if (v3 == 4)
  {
    if (result == 4)
    {
      return result;
    }
  }

  else if (result != 4)
  {
    if (v3 == 3)
    {
      if (result == 3)
      {
        return result;
      }
    }

    else if (v3 == result)
    {
      return result;
    }
  }

  if (qword_100353A20 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000F53C(v4, qword_100381CB0);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v7 = 136446466;
    sub_1000040A8(&qword_100367BF0);
    v8 = String.init<A>(describing:)();
    v10 = sub_10017C9E8(v8, v9, &v14);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2082;
    v11 = String.init<A>(describing:)();
    v13 = sub_10017C9E8(v11, v12, &v14);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "Target visibility changed from: %{public}s to: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  result = sub_1001F2224();
  if (*(v2 + 32))
  {
    *(v2 + 41) = 1;
  }

  else
  {
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    return Subject<>.send()();
  }

  return result;
}

BOOL sub_1001F2224()
{
  v1 = v0;
  v2 = sub_1001F3A84();
  v3 = OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__suggestedActions;
  v4 = sub_1001DDE34(v2, *(v0 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__suggestedActions));
  if ((v4 & 1) == 0)
  {
    if (qword_100353A20 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000F53C(v5, qword_100381CB0);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v17 = v7;
      v8 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v8 = 136446466;
      sub_100087EE8();

      v9 = Set.description.getter();
      v11 = v10;

      v12 = sub_10017C9E8(v9, v11, &v18);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2082;
      v13 = Set.description.getter();
      v15 = sub_10017C9E8(v13, v14, &v18);

      *(v8 + 14) = v15;
      _os_log_impl(&_mh_execute_header, v6, v17, "Suggested actions changed from: %{public}s to: %{public}s", v8, 0x16u);
      swift_arrayDestroy();
    }

    *(v1 + v3) = v2;
  }

  return (v4 & 1) == 0;
}

uint64_t sub_1001F2454(uint64_t result)
{
  v2 = v1;
  v3 = *(v1 + 57);
  if (v3 == 2)
  {
    if (result == 2)
    {
      return result;
    }
  }

  else if (result != 2 && ((v3 ^ result) & 1) == 0)
  {
    return result;
  }

  if (qword_100353A20 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000F53C(v4, qword_100381CB0);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v7 = 136446466;
    sub_1000040A8(&unk_1003655D0);
    v8 = String.init<A>(describing:)();
    v10 = sub_10017C9E8(v8, v9, &v14);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2082;
    v11 = String.init<A>(describing:)();
    v13 = sub_10017C9E8(v11, v12, &v14);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "__cachedConnectedWithHysteresisApplied changed from: %{public}s to: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  result = sub_1001F2224();
  if (result)
  {
    if (*(v2 + 32))
    {
      *(v2 + 40) = 1;
    }

    else
    {
      sub_1000040A8(&unk_100365610);
      sub_100009274(&qword_10035CF00, &unk_100365610);
      result = Subject<>.send()();
      if (!*(v2 + 32))
      {
        sub_1000040A8(&unk_100365610);
        return Subject<>.send()();
      }
    }

    *(v2 + 41) = 1;
  }

  return result;
}

uint64_t sub_1001F26FC(uint64_t result)
{
  v2 = v1;
  v3 = *(v1 + 58);
  if (v3 == 2)
  {
    if (result == 2)
    {
      return result;
    }
  }

  else if (result != 2 && ((v3 ^ result) & 1) == 0)
  {
    return result;
  }

  if (qword_100353A20 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000F53C(v4, qword_100381CB0);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v7 = 136446466;
    sub_1000040A8(&unk_1003655D0);
    v8 = String.init<A>(describing:)();
    v10 = sub_10017C9E8(v8, v9, &v14);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2082;
    v11 = String.init<A>(describing:)();
    v13 = sub_10017C9E8(v11, v12, &v14);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "__cachedLocationAcquisitionInProgress changed from: %{public}s to: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  result = sub_1001F2224();
  if (*(v2 + 32))
  {
    *(v2 + 40) = 1;
  }

  else
  {
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    result = Subject<>.send()();
    if (!*(v2 + 32))
    {
      sub_1000040A8(&unk_100365610);
      return Subject<>.send()();
    }
  }

  *(v2 + 41) = 1;
  return result;
}

void sub_1001F29A0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ServiceOutages(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v38 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1000040A8(&qword_10035E268);
  v7 = __chkstk_darwin(v41);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v44 = &v37 - v10;
  __chkstk_darwin(v9);
  v12 = &v37 - v11;
  v13 = sub_1000040A8(&qword_10035E3F8);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v37 - v15;
  v17 = OBJC_IVAR____TtC8SOSBuddy13GuidanceModel___cachedServiceOutages;
  swift_beginAccess();
  v18 = *(v14 + 56);
  v39 = v17;
  v43 = v2;
  sub_100006C20(v2 + v17, v16, &qword_10035E268);
  v42 = a1;
  sub_100006C20(a1, &v16[v18], &qword_10035E268);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_100008FA0(v16, &qword_10035E268);
      return;
    }

    goto LABEL_6;
  }

  sub_100006C20(v16, v12, &qword_10035E268);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_10020321C(v12, type metadata accessor for ServiceOutages);
LABEL_6:
    sub_100008FA0(v16, &qword_10035E3F8);
    v20 = v43;
    v21 = v44;
    goto LABEL_12;
  }

  v22 = v38;
  sub_100204258(&v16[v18], v38, type metadata accessor for ServiceOutages);
  v23 = static Date.== infix(_:_:)();
  v20 = v43;
  v21 = v44;
  if (v23 & 1) != 0 && (static Date.== infix(_:_:)())
  {
    v24 = sub_100202114(*&v12[*(v4 + 24)], *(v22 + *(v4 + 24)));
    sub_10020321C(v22, type metadata accessor for ServiceOutages);
    sub_10020321C(v12, type metadata accessor for ServiceOutages);
    sub_100008FA0(v16, &qword_10035E268);
    if (v24)
    {
      return;
    }
  }

  else
  {
    sub_10020321C(v22, type metadata accessor for ServiceOutages);
    sub_10020321C(v12, type metadata accessor for ServiceOutages);
    sub_100008FA0(v16, &qword_10035E268);
  }

LABEL_12:
  if (qword_100353A20 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_10000F53C(v25, qword_100381CB0);
  sub_100006C20(v42, v21, &qword_10035E268);

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v45 = v44;
    *v28 = 136446466;
    v29 = v40;
    sub_100006C20(v21, v40, &qword_10035E268);
    LODWORD(v43) = v27;
    v30 = String.init<A>(describing:)();
    v32 = v31;
    sub_100008FA0(v21, &qword_10035E268);
    v33 = sub_10017C9E8(v30, v32, &v45);

    *(v28 + 4) = v33;
    *(v28 + 12) = 2082;
    sub_100006C20(v20 + v39, v29, &qword_10035E268);
    v34 = String.init<A>(describing:)();
    v36 = sub_10017C9E8(v34, v35, &v45);

    *(v28 + 14) = v36;
    _os_log_impl(&_mh_execute_header, v26, v43, "__cachedServiceOutages changed from: %{public}s to: %{public}s", v28, 0x16u);
    swift_arrayDestroy();

    if (*(v20 + 32))
    {
LABEL_16:
      *(v20 + 40) = 1;
LABEL_19:
      *(v20 + 41) = 1;
      return;
    }
  }

  else
  {

    sub_100008FA0(v21, &qword_10035E268);
    if (*(v20 + 32))
    {
      goto LABEL_16;
    }
  }

  sub_1000040A8(&unk_100365610);
  sub_100009274(&qword_10035CF00, &unk_100365610);
  Subject<>.send()();
  if (*(v20 + 32))
  {
    goto LABEL_19;
  }

  sub_1000040A8(&unk_100365610);
  Subject<>.send()();
}

void sub_1001F3028(int a1)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel___cachedInServiceOutageNow);
  if (v3 == 2)
  {
    if (a1 == 2)
    {
      return;
    }
  }

  else if (a1 != 2 && ((v3 ^ a1) & 1) == 0)
  {
    return;
  }

  if (qword_100353A20 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000F53C(v4, qword_100381CB0);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v7 = 136446466;
    sub_1000040A8(&unk_1003655D0);
    v8 = String.init<A>(describing:)();
    v10 = sub_10017C9E8(v8, v9, &v14);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2082;
    v11 = String.init<A>(describing:)();
    v13 = sub_10017C9E8(v11, v12, &v14);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "__cachedInServiceOutageNow changed from: %{public}s to: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  if (*(v2 + 32))
  {
    *(v2 + 40) = 1;
  }

  else
  {
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
    if (!*(v2 + 32))
    {
      sub_1000040A8(&unk_100365610);
      Subject<>.send()();
      return;
    }
  }

  *(v2 + 41) = 1;
}

uint64_t sub_1001F32D4(uint64_t result)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel___cachedInSilencePeriodNow);
  if (v3 == 2)
  {
    if (result == 2)
    {
      return result;
    }
  }

  else if (result != 2 && ((v3 ^ result) & 1) == 0)
  {
    return result;
  }

  if (qword_100353A20 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000F53C(v4, qword_100381CB0);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v7 = 136446466;
    sub_1000040A8(&unk_1003655D0);
    v8 = String.init<A>(describing:)();
    v10 = sub_10017C9E8(v8, v9, &v14);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2082;
    v11 = String.init<A>(describing:)();
    v13 = sub_10017C9E8(v11, v12, &v14);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "__cachedInSilencePeriodNow changed from: %{public}s to: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  result = sub_1001F2224();
  if (*(v2 + 32))
  {
    *(v2 + 40) = 1;
  }

  else
  {
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    result = Subject<>.send()();
    if (!*(v2 + 32))
    {
      sub_1000040A8(&unk_100365610);
      return Subject<>.send()();
    }
  }

  *(v2 + 41) = 1;
  return result;
}

void sub_1001F3588(int a1)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__coreMotionErrorPresent);
  if (v3 == 2)
  {
    if (a1 == 2)
    {
      return;
    }
  }

  else if (a1 != 2 && ((v3 ^ a1) & 1) == 0)
  {
    return;
  }

  if (qword_100353A20 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000F53C(v4, qword_100381CB0);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v7 = 136446466;
    sub_1000040A8(&unk_1003655D0);
    v8 = String.init<A>(describing:)();
    v10 = sub_10017C9E8(v8, v9, &v14);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2082;
    v11 = String.init<A>(describing:)();
    v13 = sub_10017C9E8(v11, v12, &v14);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "Cached _coreMotionErrorPresent changed from: %{public}s to: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  if (*(v2 + 32))
  {
    *(v2 + 41) = 1;
  }

  else
  {
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
  }
}

void sub_1001F37FC(int a1)
{
  v2 = OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__coreMotionErrorPresent;
  v3 = *(v1 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__coreMotionErrorPresent);
  if (v3 == 2)
  {
    if (a1 == 2)
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  if (a1 == 2 || ((v3 ^ a1) & 1) != 0)
  {
LABEL_6:
    if (*(v1 + 32))
    {
      *(v1 + 40) = 1;
    }

    else
    {
      v4 = a1;
      v5 = *(v1 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__coreMotionErrorPresent);
      sub_1000040A8(&unk_100365610);
      sub_100009274(&qword_10035CF00, &unk_100365610);
      Subject<>.send()();
      v3 = v5;
      LOBYTE(a1) = v4;
    }
  }

LABEL_9:
  *(v1 + v2) = a1;

  sub_1001F3588(v3);
}

uint64_t sub_1001F3904()
{
  *(v0 + 48) = 0x40060F9B305DFA12;
  *(v0 + 56) = 516;
  *(v0 + 58) = 2;
  v1 = OBJC_IVAR____TtC8SOSBuddy13GuidanceModel___cachedServiceOutages;
  v2 = type metadata accessor for ServiceOutages(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel___cachedInServiceOutageNow) = 2;
  *(v0 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel___cachedInSilencePeriodNow) = 2;
  *(v0 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__coreMotionErrorPresent) = 2;
  v3 = v0 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__target;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0;
  *(v3 + 40) = 1;
  *(v0 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__targetLinkSynced) = 2;
  v4 = v0 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__actualTargetRelativeBearing;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *v4 = 0;
  *(v4 + 24) = 1;
  v5 = v0 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__correctedTargetRelativeBearing;
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  *(v5 + 24) = 1;
  *(v0 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__suggestedActions) = &_swiftEmptySetSingleton;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  sub_1000040A8(&unk_100365610);
  swift_allocObject();
  *(v0 + 16) = PassthroughSubject.init()();
  swift_allocObject();
  *(v0 + 24) = PassthroughSubject.init()();
  return v0;
}

void *sub_1001F3A84()
{
  v18 = &_swiftEmptySetSingleton;
  v1 = v0[58];
  if (v1 != 2 && (v1 & 1) != 0 && v0[56] - 2 >= 3)
  {
    sub_1000FC7A8(&v13, 4);
  }

  v2 = OBJC_IVAR____TtC8SOSBuddy13GuidanceModel___cachedInSilencePeriodNow;
  v3 = v0[OBJC_IVAR____TtC8SOSBuddy13GuidanceModel___cachedInSilencePeriodNow];
  if (v3 == 2 || (v3 & 1) == 0)
  {
    v4 = v0[58];
    if (v4 == 2 || (v4 & 1) == 0)
    {
      v5 = v0[57];
      if ((v5 == 2 || (v5 & 1) == 0) && v0[56] - 2 >= 3)
      {
        sub_1000FC7A8(&v14, 4);
        v3 = v0[v2];
      }

      if (v3 == 2 || (v3 & 1) == 0)
      {
        v6 = v0[58];
        if (v6 == 2 || (v6 & 1) == 0)
        {
          v7 = &v0[OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__correctedTargetRelativeBearing];
          if ((v0[OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__correctedTargetRelativeBearing + 24] & 1) == 0)
          {
            if (*v7 < 0.0)
            {
              v8 = -*v7;
            }

            else
            {
              v8 = *v7;
            }

            if (v8 <= 0.785398163)
            {
              v10 = &v17;
              v11 = 0;
              goto LABEL_28;
            }

            if (*v7 <= 0.0)
            {
              v9 = 1;
            }

            else
            {
              v9 = 2;
            }

            sub_1000FC7A8(&v16, v9);
            if (v8 > 2.75762022)
            {
              v10 = &v15;
              v11 = 3;
LABEL_28:
              sub_1000FC7A8(v10, v11);
            }
          }
        }
      }
    }
  }

  return v18;
}

uint64_t sub_1001F3BFC()
{
  sub_100008FA0(v0 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel___cachedServiceOutages, &qword_10035E268);
}

uint64_t sub_1001F3C4C()
{

  v1 = OBJC_IVAR____TtC8SOSBuddy13GuidanceModel___cachedServiceOutages;

  sub_100008FA0(v0 + v1, &qword_10035E268);

  return swift_deallocClassInstance();
}

void sub_1001F3D24()
{
  sub_1001EC5E4(319, &qword_10035E2F0, type metadata accessor for ServiceOutages);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1001F3E1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (sub_1001DDE34(*a1, *a2))
  {
    if (v3)
    {
      if (v5)
      {
        return 1;
      }
    }

    else
    {
      if (v2 == v4)
      {
        v7 = v5;
      }

      else
      {
        v7 = 1;
      }

      if ((v7 & 1) == 0)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1001F3E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  *(v9 + 112) = 0;
  v17 = OBJC_IVAR____TtCC8SOSBuddy21GuidanceMessagesModel13NudgeMessages__lastProducedExtraDetailsAt;
  v18 = type metadata accessor for DispatchTime();
  (*(*(v18 - 8) + 56))(v9 + v17, 1, 1, v18);
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  sub_1000040A8(&qword_100359B28);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100279160;
  *(v19 + 32) = a5;
  *(v19 + 40) = a6;
  *(v9 + 72) = v19;
  *(v9 + 80) = 0u;
  *(v9 + 96) = 0u;
  *(v9 + 48) = a7;
  *(v9 + 56) = a8;
  *(v9 + 64) = a9 & 1;
  return v9;
}

uint64_t sub_1001F3F94()
{

  sub_1000949F4(*(v0 + 80));

  sub_100008FA0(v0 + OBJC_IVAR____TtCC8SOSBuddy21GuidanceMessagesModel13NudgeMessages__lastProducedExtraDetailsAt, &qword_100356518);

  return swift_deallocClassInstance();
}

void sub_1001F4058(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + 48);
  if (!v3)
  {
    if (!a1)
    {
      return;
    }

    goto LABEL_12;
  }

  if (!a1)
  {
    goto LABEL_18;
  }

  if (sub_100202FFC(v3, a1))
  {
    return;
  }

  v3 = *(v2 + 48);
  if (v3)
  {
LABEL_18:
    if (*(v3 + 72))
    {
      v4 = *(v3 + 72);
    }

    else
    {

      v4 = sub_10020327C();

      if (!v4)
      {
        goto LABEL_12;
      }
    }

    v5 = *(v4 + 16);

    if (v5 > 1)
    {
      v6 = 0;
      goto LABEL_13;
    }
  }

LABEL_12:
  v6 = 1;
LABEL_13:
  sub_1001F4180(0, v6);
  sub_1001F4298();
  if (*(v2 + 32))
  {
    *(v2 + 41) = 1;
  }

  else
  {
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
  }
}

void sub_1001F4180(uint64_t a1, char a2)
{
  v3 = *(v2 + 56);
  v4 = *(v2 + 64);
  if (v4)
  {
    if (a2)
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  if ((a2 & 1) != 0 || v3 != a1)
  {
LABEL_6:
    if (*(v2 + 32))
    {
      *(v2 + 40) = 1;
    }

    else
    {
      v5 = *(v2 + 56);
      v6 = a1;
      v7 = a2;
      v8 = *(v2 + 64);
      sub_1000040A8(&unk_100365610);
      sub_100009274(&qword_10035CF00, &unk_100365610);
      Subject<>.send()();
      a1 = v6;
      v4 = v8;
      v3 = v5;
      a2 = v7;
    }
  }

LABEL_9:
  *(v2 + 56) = a1;
  *(v2 + 64) = a2 & 1;

  sub_1001F44F0(v3, v4);
}

void sub_1001F4298()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10001D630(0, &qword_10035BA10);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v7 = *(v1 + 48);
  if (v7 && ((v8 = *(v7 + 72)) != 0 && *(v8 + 16) > 1uLL || *(v7 + 80)))
  {
    if (*(v1 + 72))
    {
      return;
    }

    v9 = objc_opt_self();
    v10 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_100204400;
    aBlock[5] = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10008137C;
    aBlock[3] = &unk_100337CD0;
    v11 = _Block_copy(aBlock);

    v12 = [v9 scheduledTimerWithTimeInterval:1 repeats:v11 block:5.0];
    _Block_release(v11);
    v13 = *(v1 + 72);
    *(v1 + 72) = v12;
  }

  else
  {
    v14 = *(v1 + 72);
    if (v14)
    {
      [v14 invalidate];
      v13 = *(v1 + 72);
    }

    else
    {
      v13 = 0;
    }

    *(v1 + 72) = 0;
  }
}

void sub_1001F44F0(uint64_t a1, char a2)
{
  v3 = v2;
  if (*(v2 + 64))
  {
    if (a2)
    {
      return;
    }
  }

  else if ((a2 & 1) == 0 && *(v2 + 56) == a1)
  {
    return;
  }

  if (qword_100353A20 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000F53C(v4, qword_100381CB0);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v7 = 136446466;
    sub_1000040A8(&qword_100356CC0);
    v8 = String.init<A>(describing:)();
    v10 = sub_10017C9E8(v8, v9, &v14);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2082;
    v11 = String.init<A>(describing:)();
    v13 = sub_10017C9E8(v11, v12, &v14);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "Extra detail index changed from: %{public}s to: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  if (*(v3 + 32))
  {
    *(v3 + 41) = 1;
  }

  else
  {
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
  }
}

void sub_1001F4758(unsigned __int8 a1)
{
  if (*(v1 + 96) != a1)
  {
    v2 = v1;
    if (qword_100353A20 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000F53C(v3, qword_100381CB0);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v6 = 136446466;
      v7 = String.init<A>(describing:)();
      v9 = sub_10017C9E8(v7, v8, &v13);

      *(v6 + 4) = v9;
      *(v6 + 12) = 2082;
      v10 = String.init<A>(describing:)();
      v12 = sub_10017C9E8(v10, v11, &v13);

      *(v6 + 14) = v12;
      _os_log_impl(&_mh_execute_header, v4, v5, "_howToConnectGuidance changed from: %{public}s to: %{public}s", v6, 0x16u);
      swift_arrayDestroy();
    }

    if (*(v2 + 32))
    {
      *(v2 + 41) = 1;
    }

    else
    {
      sub_1000040A8(&unk_100365610);
      sub_100009274(&qword_10035CF00, &unk_100365610);
      Subject<>.send()();
    }
  }
}

uint64_t sub_1001F4988()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v2 - 8);
  v31 = v2;
  __chkstk_darwin(v2);
  v28 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for DispatchQoS();
  v27 = *(v29 - 8);
  __chkstk_darwin(v29);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchTime();
  v26 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v24 - v10;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10001D630(0, &qword_10035BA10);
  *v15 = static OS_dispatch_queue.main.getter();
  (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
  v16 = _dispatchPreconditionTest(_:)();
  result = (*(v13 + 8))(v15, v12);
  if (v16)
  {
    v18 = *(v1 + 112);
    if (v18 != 2 && (v18 & 1) != 0 && *(v1 + 104) && !*(v1 + 96))
    {
      if (*(v1 + 32))
      {
        *(v1 + 40) = 1;
      }

      else
      {
        sub_1000040A8(&unk_100365610);
        sub_100009274(&qword_10035CF00, &unk_100365610);
        Subject<>.send()();
      }

      *(v1 + 96) = 1;
      sub_1001F4758(0);
      v25 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      + infix(_:_:)();
      v26 = *(v26 + 8);
      (v26)(v9, v6);
      v19 = swift_allocObject();
      swift_weakInit();
      aBlock[4] = sub_1002043F8;
      aBlock[5] = v19;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1001D2438;
      aBlock[3] = &unk_100337CA8;
      v20 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_1002042C0(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000040A8(&unk_100355D70);
      sub_100009274(&qword_10035BB50, &unk_100355D70);
      v21 = v28;
      v22 = v31;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v23 = v25;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v20);

      (*(v30 + 8))(v21, v22);
      (*(v27 + 8))(v5, v29);
      return (v26)(v11, v6);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001F4EF0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 96);

    if (v1 == 1)
    {
      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (result)
      {
        v2 = *(result + 96);
        if (v2 != 2)
        {
          if (*(result + 32))
          {
            *(result + 40) = 1;
          }

          else
          {
            v3 = result;
            v4 = *(result + 96);
            sub_1000040A8(&unk_100365610);
            sub_100009274(&qword_10035CF00, &unk_100365610);
            Subject<>.send()();
            LOBYTE(v2) = v4;
            result = v3;
          }
        }

        *(result + 96) = 2;
        sub_1001F4758(v2);
      }
    }
  }

  return result;
}

uint64_t sub_1001F5028(uint64_t a1, uint64_t *a2)
{
  type metadata accessor for ApproximateTimeIntervalFormatter();
  result = swift_allocObject();
  *(result + 16) = 0;
  *a2 = result;
  return result;
}

uint64_t sub_1001F5060()
{
  v1 = *(v0 + 80);
  if (v1)
  {
    v2 = *(v0 + 48);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_8:
    if (!v1)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v1 = *(v0 + 88);

  v2 = *(v0 + 48);
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v1 && (sub_100202FFC(v2, v1) & 1) != 0)
  {

LABEL_11:

    goto LABEL_13;
  }

LABEL_9:
  if (*(v0 + 32))
  {
    *(v0 + 40) = 1;
    goto LABEL_11;
  }

  sub_1000040A8(&unk_100365610);
  sub_100009274(&qword_10035CF00, &unk_100365610);
  Subject<>.send()();
LABEL_13:
  *(v0 + 48) = v1;

  sub_1001F4058(v2);
}

uint64_t sub_1001F51B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v185 = a6;
  v190 = a3;
  v191 = a5;
  v192 = a2;
  v189 = a1;
  v180 = type metadata accessor for Date();
  v179 = *(v180 - 8);
  __chkstk_darwin(v180);
  v178 = &v176 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = type metadata accessor for ServicePredictionsModel.SkimmerPrediction(0);
  v186 = *(v188 - 8);
  __chkstk_darwin(v188);
  v177 = &v176 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = v9;
  __chkstk_darwin(v10);
  v181 = &v176 - v11;
  v12 = sub_1000040A8(&qword_100367BB0);
  __chkstk_darwin(v12 - 8);
  v182 = &v176 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v184 = &v176 - v15;
  __chkstk_darwin(v16);
  v187 = &v176 - v17;
  v18 = sub_1000040A8(&qword_100356518);
  __chkstk_darwin(v18 - 8);
  v20 = &v176 - v19;
  v21 = type metadata accessor for DispatchTime();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v176 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v176 - v26;
  v28 = OBJC_IVAR____TtC8SOSBuddy11StewieModel__exitRequestPendingAt;
  swift_beginAccess();
  v183 = a4;
  sub_100006C20(a4 + v28, v20, &qword_100356518);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_100008FA0(v20, &qword_100356518);
  }

  else
  {
    v32 = v6;
    (*(v22 + 32))(v27, v20, v21);
    static DispatchTime.now()();
    v33 = DispatchTime.uptimeNanoseconds.getter();
    if (DispatchTime.uptimeNanoseconds.getter() >= v33)
    {
      v39 = *(v22 + 8);
      v39(v24, v21);
      v39(v27, v21);
      return 0;
    }

    v34 = DispatchTime.uptimeNanoseconds.getter();
    v35 = DispatchTime.uptimeNanoseconds.getter();
    v36 = *(v22 + 8);
    v36(v24, v21);
    result = (v36)(v27, v21);
    v38 = v34 - v35;
    if (v34 < v35)
    {
      __break(1u);
      return result;
    }

    v6 = v32;
    if (v38 < 0xEE6B2800)
    {
      return 0;
    }
  }

  if ((*(v192 + 43) & 1) == 0 && *(v192 + 42) != 1)
  {
    v45 = objc_opt_self();
    v46 = [v45 mainBundle];
    v47._countAndFlagsBits = 0xD000000000000022;
    v193._object = 0x80000001002A4760;
    v47._object = 0x80000001002A44B0;
    v193._countAndFlagsBits = 0xD000000000000053;
    v48._countAndFlagsBits = 0;
    v48._object = 0xE000000000000000;
    v49 = NSLocalizedString(_:tableName:bundle:value:comment:)(v47, 0, v46, v48, v193);

    v50 = [v45 mainBundle];
    v194._object = 0x80000001002A47C0;
    v51._object = 0x80000001002A4540;
    v194._countAndFlagsBits = 0xD000000000000064;
    v51._countAndFlagsBits = 0xD000000000000032;
    v52._countAndFlagsBits = 0;
    v52._object = 0xE000000000000000;
    v53 = NSLocalizedString(_:tableName:bundle:value:comment:)(v51, 0, v50, v52, v194);

    v54 = sub_100234028(&off_100323AF0);
    type metadata accessor for GuidanceMessagesModel.NudgeMessages(0);
    swift_allocObject();
    return sub_1001F3E88(v49._countAndFlagsBits, v49._object, v49._countAndFlagsBits, v49._object, v53._countAndFlagsBits, v53._object, v54, 0, 1);
  }

  v29 = v191[9];
  if (v29)
  {
    v30 = v191[8];
    v31 = &off_1003239B0;
LABEL_19:
    v43 = sub_100234028(v31);
    type metadata accessor for GuidanceMessagesModel.NudgeMessages(0);
    v44 = swift_allocObject();
    *(v44 + 112) = 0;
    (*(v22 + 56))(v44 + OBJC_IVAR____TtCC8SOSBuddy21GuidanceMessagesModel13NudgeMessages__lastProducedExtraDetailsAt, 1, 1, v21);
    *(v44 + 16) = v30;
    *(v44 + 24) = v29;
    *(v44 + 32) = v30;
    *(v44 + 40) = v29;
    *(v44 + 72) = 0u;
    *(v44 + 88) = 0u;
    *(v44 + 104) = 0;
    *(v44 + 48) = v43;
    *(v44 + 56) = 0;
    *(v44 + 64) = 1;
    swift_bridgeObjectRetain_n();
    return v44;
  }

  v40 = v190;
  v41 = *(v190 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel___cachedInSilencePeriodNow);
  if (v41 == 2 || (v41 & 1) == 0)
  {
    v42 = *(v190 + 58);
    if ((v42 == 2 || (v42 & 1) == 0) && (*(v190 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__correctedTargetRelativeBearing + 24) & 1) == 0)
    {
      v55 = OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__suggestedActions;
      v56 = sub_10017D0A8(&off_1003239D8, *(v190 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__suggestedActions));
      v57 = *(*(v189 + 56) + 136);
      if ((v56 & 1) == 0)
      {
        if (v57 == 2 || (v57 & 1) == 0)
        {
          v102 = sub_100071A54(3, *(v40 + v55));
          v103 = sub_100071A54(1, *(v40 + v55));
          v104 = v103;
          v80 = v21;
          v81 = v22;
          if (v102)
          {
            if (v103)
            {
              v105 = sub_10002009C();
            }

            else
            {
              v105 = sub_1000201D4();
            }

            countAndFlagsBits = v105;
            object = v106;
            v124 = v107;
            v125 = v108;
          }

          else
          {
            v118 = [objc_opt_self() mainBundle];
            if (v104)
            {
              v119 = 0xD00000000000001BLL;
              v175 = 0x8000000100295A20;
              v120 = 0x8000000100295A00;
              v121 = 0xD00000000000008ELL;
            }

            else
            {
              v119 = 0xD00000000000001CLL;
              v175 = 0x8000000100295B80;
              v120 = 0x8000000100295B60;
              v121 = 0xD00000000000008FLL;
            }

            v126._countAndFlagsBits = 0;
            v126._object = 0xE000000000000000;
            v127 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v119, 0, v118, v126, *&v121);
            countAndFlagsBits = v127._countAndFlagsBits;
            object = v127._object;

            v124 = v127._countAndFlagsBits;
            v125 = v127._object;
          }

          v128 = &off_100323AA0;
        }

        else
        {
          v78 = sub_100071A54(3, *(v40 + v55));
          v79 = sub_100071A54(1, *(v40 + v55));
          v80 = v21;
          v81 = v22;
          if (v78)
          {
            if (v79)
            {
              countAndFlagsBits = sub_10002030C();
            }

            else
            {
              countAndFlagsBits = sub_100020438();
            }

            object = v82;

            v155 = [objc_opt_self() mainBundle];
            v156._countAndFlagsBits = 0xD00000000000001DLL;
            v204._object = 0x80000001002A4360;
            v156._object = 0x80000001002A4340;
            v204._countAndFlagsBits = 0xD000000000000081;
            v157._countAndFlagsBits = 0;
            v157._object = 0xE000000000000000;
            v158 = NSLocalizedString(_:tableName:bundle:value:comment:)(v156, 0, v155, v157, v204);
            v124 = v158._countAndFlagsBits;
            v125 = v158._object;
          }

          else
          {
            if (v79)
            {
              v129 = sub_10002030C();
            }

            else
            {
              v129 = sub_100020438();
            }

            countAndFlagsBits = v129;
            object = v130;
            v124 = v131;
            v125 = v132;
          }

          v128 = &off_100323A78;
        }

        v159 = sub_100234028(v128);
        type metadata accessor for GuidanceMessagesModel.NudgeMessages(0);
        v160 = swift_allocObject();
        *(v160 + 112) = 0;
        (*(v81 + 56))(v160 + OBJC_IVAR____TtCC8SOSBuddy21GuidanceMessagesModel13NudgeMessages__lastProducedExtraDetailsAt, 1, 1, v80);
        result = v160;
        *(v160 + 16) = countAndFlagsBits;
        *(v160 + 24) = object;
        *(v160 + 32) = v124;
        *(v160 + 40) = v125;
        *(v160 + 72) = 0u;
        *(v160 + 88) = 0u;
        *(v160 + 104) = 0;
        *(v160 + 48) = v159;
        *(v160 + 56) = 0;
        *(v160 + 64) = 1;
        return result;
      }

      if (v57 != 2 && (v57 & 1) != 0)
      {
        v58 = [objc_opt_self() mainBundle];
        v59._countAndFlagsBits = 0xD00000000000001ALL;
        v195._object = 0x8000000100295480;
        v59._object = 0x8000000100295460;
        v195._countAndFlagsBits = 0xD000000000000089;
        v60._countAndFlagsBits = 0;
        v60._object = 0xE000000000000000;
        v61 = NSLocalizedString(_:tableName:bundle:value:comment:)(v59, 0, v58, v60, v195);
        v62 = v61._countAndFlagsBits;
        v63 = v61._object;

        v64 = v183;
        if (!*(v183 + 64))
        {
          goto LABEL_71;
        }

        if (sub_100071A54(0, *(v183 + 88)))
        {
LABEL_28:
          v65 = v21;
          v66 = v22;

          v67 = sub_10001FE2C();
LABEL_29:
          v62 = v67;
          v63 = v68;
          v71 = v69;
          v72 = v70;
LABEL_73:
          type metadata accessor for GuidanceMessagesModel.NudgeMessages(0);
          v154 = swift_allocObject();
          *(v154 + 112) = 0;
          (*(v66 + 56))(v154 + OBJC_IVAR____TtCC8SOSBuddy21GuidanceMessagesModel13NudgeMessages__lastProducedExtraDetailsAt, 1, 1, v65);
          result = v154;
          *(v154 + 16) = v62;
          *(v154 + 24) = v63;
          *(v154 + 32) = v71;
          *(v154 + 40) = v72;
          *(v154 + 72) = 0u;
          *(v154 + 88) = 0u;
          *(v154 + 104) = 0;
          *(v154 + 48) = &_swiftEmptySetSingleton;
          goto LABEL_74;
        }

        if (!*(v64 + 64))
        {
          goto LABEL_71;
        }

        if (sub_100071A54(3, *(v64 + 88)))
        {
          goto LABEL_28;
        }

        if (*(v64 + 64))
        {
          v65 = v21;
          if (sub_100071A54(4, *(v64 + 88)))
          {
            v66 = v22;

            v67 = sub_10001FF64();
            goto LABEL_29;
          }
        }

        else
        {
LABEL_71:
          v65 = v21;
        }

        v66 = v22;

        v71 = v61._countAndFlagsBits;
        v72 = v61._object;
        goto LABEL_73;
      }

      if ((sub_100071A54(4, *(v40 + v55)) & 1) == 0)
      {
        v109 = objc_opt_self();
        v110 = [v109 mainBundle];
        v111._countAndFlagsBits = 0xD00000000000001ALL;
        v199._object = 0x8000000100295480;
        v111._object = 0x8000000100295460;
        v199._countAndFlagsBits = 0xD000000000000089;
        v112._countAndFlagsBits = 0;
        v112._object = 0xE000000000000000;
        v113 = NSLocalizedString(_:tableName:bundle:value:comment:)(v111, 0, v110, v112, v199);

        v114 = [v109 mainBundle];
        v115._countAndFlagsBits = 0xD00000000000001CLL;
        v200._object = 0x80000001002A4410;
        v115._object = 0x80000001002A43F0;
        v200._countAndFlagsBits = 0xD00000000000009ALL;
        v116._countAndFlagsBits = 0;
        v116._object = 0xE000000000000000;
        v117 = NSLocalizedString(_:tableName:bundle:value:comment:)(v115, 0, v114, v116, v200);

        type metadata accessor for GuidanceMessagesModel.NudgeMessages(0);
        swift_allocObject();
        return sub_1001F3E88(v113._countAndFlagsBits, v113._object, v113._countAndFlagsBits, v113._object, v117._countAndFlagsBits, v117._object, &_swiftEmptySetSingleton, 0, 1);
      }

      v84 = OBJC_IVAR____TtC8SOSBuddy23ServicePredictionsModel__skimmerPrediction;
      v85 = v185;
      swift_beginAccess();
      v86 = v85 + v84;
      v87 = v187;
      sub_100006C20(v86, v187, &qword_100367BB0);
      v88 = v184;
      sub_100006C20(v87, v184, &qword_100367BB0);
      v89 = *(v186 + 48);
      v90 = v188;
      if (v89(v88, 1, v188) == 1)
      {
        sub_100008FA0(v88, &qword_100367BB0);
LABEL_39:
        v91 = objc_opt_self();
        v92 = [v91 mainBundle];
        v93._countAndFlagsBits = 0xD000000000000022;
        v197._object = 0x80000001002A44E0;
        v93._object = 0x80000001002A44B0;
        v197._countAndFlagsBits = 0xD000000000000053;
        v94._countAndFlagsBits = 0;
        v94._object = 0xE000000000000000;
        v95 = NSLocalizedString(_:tableName:bundle:value:comment:)(v93, 0, v92, v94, v197);

        v96 = [v91 mainBundle];
        v198._object = 0x80000001002A4580;
        v97._object = 0x80000001002A4540;
        v198._countAndFlagsBits = 0xD000000000000064;
        v97._countAndFlagsBits = 0xD000000000000032;
        v98._countAndFlagsBits = 0;
        v98._object = 0xE000000000000000;
        v99 = NSLocalizedString(_:tableName:bundle:value:comment:)(v97, 0, v96, v98, v198);

        v100 = sub_100234028(&off_100323A00);
        type metadata accessor for GuidanceMessagesModel.NudgeMessages(0);
        swift_allocObject();
        v101 = sub_1001F3E88(v95._countAndFlagsBits, v95._object, v95._countAndFlagsBits, v95._object, v99._countAndFlagsBits, v99._object, v100, 0, 1);
        sub_100008FA0(v87, &qword_100367BB0);
        return v101;
      }

      v122 = v88 + *(v90 + 24);
      if (*(v122 + 24) == 1)
      {
        sub_10020321C(v88, type metadata accessor for ServicePredictionsModel.SkimmerPrediction);
      }

      else
      {
        v133 = *v122;
        v134 = *(v88 + *(v188 + 20));
        sub_10020321C(v88, type metadata accessor for ServicePredictionsModel.SkimmerPrediction);
        v135 = v133 == v134;
        v90 = v188;
        if (v135)
        {
          goto LABEL_39;
        }
      }

      v136 = v182;
      sub_100006C20(v87, v182, &qword_100367BB0);
      if (v89(v136, 1, v90) == 1)
      {
        v192 = v21;
        sub_100008FA0(v136, &qword_100367BB0);
      }

      else
      {
        v137 = v181;
        sub_100204258(v136, v181, type metadata accessor for ServicePredictionsModel.SkimmerPrediction);
        v138 = v137 + *(v90 + 24);
        if ((*(v138 + 24) & 1) == 0 && *v138 != *(v137 + *(v90 + 20)))
        {
          v161 = v177;
          sub_1002031B4(v137, v177, type metadata accessor for ServicePredictionsModel.SkimmerPrediction);
          v162 = (*(v186 + 80) + 16) & ~*(v186 + 80);
          v163 = (v176 + v162 + 7) & 0xFFFFFFFFFFFFFFF8;
          v164 = swift_allocObject();
          sub_100204258(v161, v164 + v162, type metadata accessor for ServicePredictionsModel.SkimmerPrediction);
          *(v164 + v163) = v6;
          v165 = sub_100234028(&off_100323A28);
          v166 = v178;
          static Date.now.getter();
          Date.timeIntervalSince(_:)();
          v168 = v167;
          (*(v179 + 8))(v166, v180);
          v169 = [objc_opt_self() mainBundle];
          v170._countAndFlagsBits = 0xD000000000000026;
          v205._object = 0x80000001002A4620;
          v170._object = 0x80000001002A45F0;
          v205._countAndFlagsBits = 0xD0000000000000E6;
          v171._countAndFlagsBits = 0;
          v171._object = 0xE000000000000000;
          v172 = NSLocalizedString(_:tableName:bundle:value:comment:)(v170, 0, v169, v171, v205);

          sub_10020321C(v137, type metadata accessor for ServicePredictionsModel.SkimmerPrediction);
          sub_100008FA0(v87, &qword_100367BB0);
          v173 = swift_allocObject();
          *(v173 + 16) = sub_100204548;
          *(v173 + 24) = v164;
          type metadata accessor for GuidanceMessagesModel.NudgeMessages(0);
          v174 = swift_allocObject();
          *(v174 + 112) = 0;
          (*(v22 + 56))(v174 + OBJC_IVAR____TtCC8SOSBuddy21GuidanceMessagesModel13NudgeMessages__lastProducedExtraDetailsAt, 1, 1, v21);
          result = v174;
          *(v174 + 16) = v172;
          *(v174 + 32) = v172;
          *(v174 + 72) = 0;
          *(v174 + 80) = sub_1002045D4;
          *(v174 + 88) = v173;
          *(v174 + 96) = 0xD000000000000017;
          *(v174 + 104) = 0x80000001002A4740;
          *(v174 + 48) = v165;
          *(v174 + 56) = v168;
          *(v174 + 64) = 0;
          return result;
        }

        v192 = v21;
        sub_10020321C(v137, type metadata accessor for ServicePredictionsModel.SkimmerPrediction);
      }

      v139 = objc_opt_self();
      v140 = [v139 mainBundle];
      v141._countAndFlagsBits = 0xD000000000000026;
      v201._object = 0x80000001002A4620;
      v141._object = 0x80000001002A45F0;
      v201._countAndFlagsBits = 0xD0000000000000E6;
      v142._countAndFlagsBits = 0;
      v142._object = 0xE000000000000000;
      v143 = NSLocalizedString(_:tableName:bundle:value:comment:)(v141, 0, v140, v142, v201);

      sub_1000040A8(&qword_100359B28);
      v144 = swift_allocObject();
      *(v144 + 16) = xmmword_100279170;

      v145 = [v139 mainBundle];
      v202._object = 0x80000001002A4580;
      v146._object = 0x80000001002A4540;
      v202._countAndFlagsBits = 0xD000000000000064;
      v146._countAndFlagsBits = 0xD000000000000032;
      v147._countAndFlagsBits = 0;
      v147._object = 0xE000000000000000;
      v148 = NSLocalizedString(_:tableName:bundle:value:comment:)(v146, 0, v145, v147, v202);

      *(v144 + 32) = v148;
      v149 = [v139 mainBundle];
      v150._countAndFlagsBits = 0xD000000000000020;
      v203._object = 0x8000000100295670;
      v150._object = 0x80000001002A4710;
      v203._countAndFlagsBits = 0xD00000000000009ELL;
      v151._countAndFlagsBits = 0;
      v151._object = 0xE000000000000000;
      v152 = NSLocalizedString(_:tableName:bundle:value:comment:)(v150, 0, v149, v151, v203);

      *(v144 + 48) = v152;
      v153 = sub_100234028(&off_100323A50);
      sub_100008FA0(v187, &qword_100367BB0);
      type metadata accessor for GuidanceMessagesModel.NudgeMessages(0);
      v154 = swift_allocObject();
      *(v154 + 112) = 0;
      (*(v22 + 56))(v154 + OBJC_IVAR____TtCC8SOSBuddy21GuidanceMessagesModel13NudgeMessages__lastProducedExtraDetailsAt, 1, 1, v192);
      result = v154;
      *(v154 + 16) = v143;
      *(v154 + 32) = v143;
      *(v154 + 72) = v144;
      *(v154 + 80) = 0u;
      *(v154 + 96) = 0u;
      *(v154 + 48) = v153;
LABEL_74:
      *(v154 + 56) = 0;
      *(v154 + 64) = 1;
      return result;
    }
  }

  v29 = v191[7];
  if (v29)
  {
    v30 = v191[6];
    v31 = &off_100323AC8;
    goto LABEL_19;
  }

  v73 = [objc_opt_self() mainBundle];
  v74._countAndFlagsBits = 0xD000000000000018;
  v196._object = 0x80000001002A42B0;
  v74._object = 0x80000001002A4290;
  v196._countAndFlagsBits = 0xD000000000000089;
  v75._countAndFlagsBits = 0;
  v75._object = 0xE000000000000000;
  v76 = NSLocalizedString(_:tableName:bundle:value:comment:)(v74, 0, v73, v75, v196);

  type metadata accessor for GuidanceMessagesModel.NudgeMessages(0);
  v77 = swift_allocObject();
  *(v77 + 112) = 0;
  (*(v22 + 56))(v77 + OBJC_IVAR____TtCC8SOSBuddy21GuidanceMessagesModel13NudgeMessages__lastProducedExtraDetailsAt, 1, 1, v21);
  *(v77 + 16) = v76;
  *(v77 + 32) = v76;
  *(v77 + 72) = 0u;
  *(v77 + 88) = 0u;
  *(v77 + 104) = 0;
  *(v77 + 48) = &_swiftEmptySetSingleton;
  *(v77 + 56) = 0;
  *(v77 + 64) = 1;

  return v77;
}

uint64_t sub_1001F6754()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100353A20 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000F53C(v4, qword_100381CB0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Regenerating skimmer prediction nudge extra details", v7, 2u);
  }

  static Date.now.getter();
  Date.timeIntervalSince(_:)();
  v9 = v8;
  (*(v1 + 8))(v3, v0);
  if (qword_100353B60 != -1)
  {
    swift_once();
  }

  sub_10001FC3C(v19);
  v10 = sub_1002039DC(&v19[0]._countAndFlagsBits, v9);
  v12 = v11;
  sub_1002043C0(v19);

  sub_1000040A8(&qword_100359B28);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100279170;
  v14 = [objc_opt_self() mainBundle];
  v20._object = 0x80000001002A4580;
  v15._object = 0x80000001002A4540;
  v20._countAndFlagsBits = 0xD000000000000064;
  v15._countAndFlagsBits = 0xD000000000000032;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v17 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v14, v16, v20);

  *(v13 + 32) = v17;
  *(v13 + 48) = v10;
  *(v13 + 56) = v12;
  return v13;
}

uint64_t sub_1001F6A24()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1001F6A7C();
  }

  return result;
}

uint64_t sub_1001F6A7C()
{
  v1 = v0;
  v2 = sub_1000040A8(&qword_100356518);
  __chkstk_darwin(v2 - 8);
  v4 = &v25 - v3;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100353A20 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000F53C(v9, qword_100381CB0);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Extra details update timer fired", v12, 2u);
  }

  sub_10001D630(0, &qword_10035BA10);
  *v8 = static OS_dispatch_queue.main.getter();
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v13 = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v8, v5);
  if (v13)
  {
    v15 = *(v1 + 48);
    if (!v15)
    {
      return sub_1001F4298(result);
    }

    v16 = type metadata accessor for DispatchTime();
    (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
    v17 = OBJC_IVAR____TtCC8SOSBuddy21GuidanceMessagesModel13NudgeMessages__lastProducedExtraDetailsAt;
    swift_beginAccess();

    sub_1000C6F74(v4, v15 + v17, &qword_100356518);
    swift_endAccess();

    v18 = *(v1 + 48);
    if (!v18)
    {
      return sub_1001F4298(result);
    }

    if (*(v18 + 72))
    {
      v19 = *(v18 + 72);
    }

    else
    {

      v19 = sub_10020327C();

      if (!v19)
      {
        return sub_1001F4298(result);
      }
    }

    v20 = *(v19 + 16);

    if (v20 >= 2)
    {
      if (*(v1 + 64))
      {
        v21 = -1;
      }

      else
      {
        v21 = *(v1 + 56);
        if (v21 >= (v20 - 1))
        {
          v24 = 0;
          goto LABEL_24;
        }
      }

      v24 = v21 + 1;
LABEL_24:
      sub_1001F4180(v24, 0);
      return sub_1001F4298(result);
    }

    v22 = *(v1 + 48);
    if (!v22)
    {
      return sub_1001F4298(result);
    }

    v23 = *(v22 + 72);
    if ((!v23 || *(v23 + 16) <= 1uLL) && !*(v22 + 80))
    {
      return sub_1001F4298(result);
    }

    if (v20 != 1)
    {
      return sub_1001F4298(result);
    }

    if (*(v1 + 32))
    {
      *(v1 + 40) = 1;
    }

    else
    {
      sub_1000040A8(&unk_100365610);
      sub_100009274(&qword_10035CF00, &unk_100365610);
      result = Subject<>.send()();
      if (!*(v1 + 32))
      {
        sub_1000040A8(&unk_100365610);
        result = Subject<>.send()();
        return sub_1001F4298(result);
      }
    }

    *(v1 + 41) = 1;
    return sub_1001F4298(result);
  }

  __break(1u);
  return result;
}

uint64_t sub_1001F6EB0()
{
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 1;
  *(v0 + 104) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  *(v0 + 72) = 0;
  *(v0 + 96) = 0;
  *(v0 + 112) = 2;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  sub_1000040A8(&unk_100365610);
  swift_allocObject();
  *(v0 + 16) = PassthroughSubject.init()();
  swift_allocObject();
  *(v0 + 24) = PassthroughSubject.init()();
  return v0;
}

uint64_t sub_1001F6F54()
{
}

uint64_t sub_1001F6F94()
{

  return swift_deallocClassInstance();
}

void sub_1001F7060()
{
  sub_1001EC5E4(319, &qword_100362DE0, &type metadata accessor for DispatchTime);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1001F7138(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0;
  }

  else
  {
    v2 = *a2 == 1;
  }

  if (v2)
  {
    return 0x4024000000000000;
  }

  else
  {
    return 0;
  }
}

void sub_1001F715C(char a1)
{
  if (*(v1 + 56) != (a1 & 1))
  {
    v2 = v1;
    if (qword_100353A20 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000F53C(v4, qword_100381CB0);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v7 = 136446466;
      if (a1)
      {
        v8 = 1702195828;
      }

      else
      {
        v8 = 0x65736C6166;
      }

      if (a1)
      {
        v9 = 0xE400000000000000;
      }

      else
      {
        v9 = 0xE500000000000000;
      }

      v10 = sub_10017C9E8(v8, v9, &v14);

      *(v7 + 4) = v10;
      *(v7 + 12) = 2082;
      if (*(v2 + 56))
      {
        v11 = 1702195828;
      }

      else
      {
        v11 = 0x65736C6166;
      }

      if (*(v2 + 56))
      {
        v12 = 0xE400000000000000;
      }

      else
      {
        v12 = 0xE500000000000000;
      }

      v13 = sub_10017C9E8(v11, v12, &v14);

      *(v7 + 14) = v13;
      _os_log_impl(&_mh_execute_header, v5, v6, "potentialObstructionDetected changed from: %{public}s to: %{public}s", v7, 0x16u);
      swift_arrayDestroy();
    }

    if (*(v2 + 32))
    {
      *(v2 + 41) = 1;
    }

    else
    {
      sub_1000040A8(&unk_100365610);
      sub_100009274(&qword_10035CF00, &unk_100365610);
      Subject<>.send()();
    }
  }
}

uint64_t sub_1001F73AC()
{
  v1 = v0;
  v2 = sub_1000040A8(&unk_10035CF50);
  __chkstk_darwin(v2 - 8);
  v4 = v19 - v3;
  v5 = sub_1000040A8(&qword_1003560A0);
  v6 = *(v5 - 8);
  v23 = v5;
  v24 = v6;
  __chkstk_darwin(v5);
  v8 = v19 - v7;
  type metadata accessor for TimerBasedHysteresisScheduler();
  v9 = swift_allocObject();
  sub_1000040A8(&qword_100367CE8);
  v10 = swift_allocObject();
  *(v1 + 48) = sub_100202EC0(v9, 0x7463656E6E6F4327, 0xEE00277974697669, sub_1001F7138, 0, v10, &qword_100367CF0, &unk_10028FBF0, 9);
  *(v1 + 56) = 256;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v11 = sub_100233B1C(_swiftEmptyArrayStorage);
  }

  else
  {
    v11 = &_swiftEmptySetSingleton;
  }

  *(v1 + 64) = v11;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  sub_1000040A8(&unk_100365610);
  swift_allocObject();
  *(v1 + 16) = PassthroughSubject.init()();
  swift_allocObject();
  *(v1 + 24) = PassthroughSubject.init()();
  v25 = *(*(v1 + 48) + 16);
  sub_10001D630(0, &qword_10035BA10);
  swift_retain_n();

  v12 = static OS_dispatch_queue.main.getter();
  v26 = v12;
  v21 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v13 = *(v21 - 8);
  v20 = *(v13 + 56);
  v22 = v13 + 56;
  v20(v4, 1, 1, v21);
  v19[4] = sub_100009274(&qword_10035CF60, &unk_100365610);
  v19[3] = sub_10002683C();
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v4, &unk_10035CF50);

  v14 = swift_allocObject();
  *(v14 + 16) = sub_100204848;
  *(v14 + 24) = v1;
  v19[2] = sub_100009274(&qword_10035CF70, &qword_1003560A0);

  v15 = v23;
  Publisher<>.sink(receiveValue:)();

  v24 = *(v24 + 8);
  (v24)(v8, v15);
  v19[1] = v1 + 64;
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v25 = *(*(v1 + 48) + 24);

  v16 = static OS_dispatch_queue.main.getter();
  v26 = v16;
  v20(v4, 1, 1, v21);
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v4, &unk_10035CF50);

  v17 = swift_allocObject();
  *(v17 + 16) = sub_10020476C;
  *(v17 + 24) = v1;
  Publisher<>.sink(receiveValue:)();

  (v24)(v8, v15);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v1;
}

uint64_t sub_1001F7944(uint64_t result)
{
  if (*(result + 32))
  {
    *(result + 40) = 1;
  }

  else
  {
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    return Subject<>.send()();
  }

  return result;
}

uint64_t sub_1001F79D4(uint64_t result)
{
  if (*(*(result + 48) + 122) <= 1u)
  {
    *(result + 57) = 0;
  }

  if (*(result + 32))
  {
    *(result + 41) = 1;
  }

  else
  {
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    return Subject<>.send()();
  }

  return result;
}

uint64_t sub_1001F7A78()
{
}

uint64_t sub_1001F7AA8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1001F7B3C(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (sub_100202084(*a1, *a2))
  {
    v4 = sub_1001DDE34(v2, v3);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void sub_1001F7B88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(v2 + 56);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 48) == a1 && v5 == a2;
      if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return;
      }
    }
  }

  else if (!a2)
  {
    return;
  }

  if (qword_100353A20 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000F53C(v7, qword_100381CB0);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v10 = 136446466;

    sub_1000040A8(&qword_1003566A0);
    v11 = String.init<A>(describing:)();
    v13 = sub_10017C9E8(v11, v12, &v17);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2082;

    v14 = String.init<A>(describing:)();
    v16 = sub_10017C9E8(v14, v15, &v17);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "carrierName changed from: %{public}s to: %{public}s", v10, 0x16u);
    swift_arrayDestroy();
  }

  if (*(v3 + 32))
  {
    *(v3 + 41) = 1;
  }

  else
  {
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
  }
}

uint64_t sub_1001F7E14(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 56);
  if (v8)
  {
    if (a2)
    {
      v9 = v7 == a1 && v8 == a2;
      if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_12;
      }
    }
  }

  else if (!a2)
  {
    goto LABEL_14;
  }

  if (*(v3 + 32))
  {
    *(v3 + 40) = 1;
LABEL_12:

    goto LABEL_14;
  }

  sub_1000040A8(&unk_100365610);
  sub_100009274(&qword_10035CF00, &unk_100365610);
  Subject<>.send()();
LABEL_14:
  *(v3 + 48) = a1;
  *(v3 + 56) = a2;

  a3(v7, v8);
}

void sub_1001F7F60(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 64);
  if (v4)
  {
    if (a1 && (sub_100202084(v4, a1) & 1) != 0)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  if (qword_100353A20 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000F53C(v5, qword_100381CB0);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v8 = 136446466;

    sub_1000040A8(&qword_1003580C8);
    v9 = String.init<A>(describing:)();
    v11 = sub_10017C9E8(v9, v10, &v15);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2082;

    v12 = String.init<A>(describing:)();
    v14 = sub_10017C9E8(v12, v13, &v15);

    *(v8 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "carrierNames changed from: %{public}s to: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
  }

  if (*(v2 + 32))
  {
    *(v2 + 41) = 1;
  }

  else
  {
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
  }
}

uint64_t sub_1001F81CC(uint64_t a1)
{
  v3 = *(v1 + 64);
  if (v3)
  {
    if (!a1)
    {

      if (*(v1 + 32))
      {
        goto LABEL_5;
      }

LABEL_9:
      sub_1000040A8(&unk_100365610);
      sub_100009274(&qword_10035CF00, &unk_100365610);
      Subject<>.send()();
      goto LABEL_10;
    }

    v4 = sub_100202084(*(v1 + 64), a1);

    if (v4)
    {
      goto LABEL_10;
    }

LABEL_4:
    if (*(v1 + 32))
    {
LABEL_5:
      *(v1 + 40) = 1;
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (a1)
  {
    goto LABEL_4;
  }

LABEL_10:
  *(v1 + 64) = a1;

  sub_1001F7F60(v3);
}

void sub_1001F82E0(int a1)
{
  v2 = v1;
  v3 = *(v1 + 72);
  if (v3 == 2)
  {
    if (a1 == 2)
    {
      return;
    }
  }

  else if (a1 != 2 && ((v3 ^ a1) & 1) == 0)
  {
    return;
  }

  if (qword_100353A20 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000F53C(v4, qword_100381CB0);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v7 = 136446466;
    sub_1000040A8(&unk_1003655D0);
    v8 = String.init<A>(describing:)();
    v10 = sub_10017C9E8(v8, v9, &v14);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2082;
    v11 = String.init<A>(describing:)();
    v13 = sub_10017C9E8(v11, v12, &v14);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "isAnyStewieServiceActive changed from: %{public}s to: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  if (*(v2 + 32))
  {
    *(v2 + 41) = 1;
  }

  else
  {
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
  }
}

void sub_1001F8544(int a1)
{
  v2 = *(v1 + 72);
  if (v2 == 2)
  {
    if (a1 == 2)
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  if (a1 == 2 || ((v2 ^ a1) & 1) != 0)
  {
LABEL_6:
    if (*(v1 + 32))
    {
      *(v1 + 40) = 1;
    }

    else
    {
      v3 = a1;
      v4 = *(v1 + 72);
      sub_1000040A8(&unk_100365610);
      sub_100009274(&qword_10035CF00, &unk_100365610);
      Subject<>.send()();
      v2 = v4;
      LOBYTE(a1) = v3;
    }
  }

LABEL_9:
  *(v1 + 72) = a1;

  sub_1001F82E0(v2);
}

uint64_t sub_1001F8644(void *a1)
{
  v3 = *(v1 + 80);
  if (v3)
  {
    if (!a1)
    {

      if (*(v1 + 32))
      {
        goto LABEL_5;
      }

LABEL_9:
      sub_1000040A8(&unk_100365610);
      sub_100009274(&qword_10035CF00, &unk_100365610);
      Subject<>.send()();
      goto LABEL_10;
    }

    if (sub_100202BDC(v4, a1))
    {
      goto LABEL_10;
    }

LABEL_4:
    if (*(v1 + 32))
    {
LABEL_5:
      *(v1 + 40) = 1;
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (a1)
  {
    goto LABEL_4;
  }

LABEL_10:
  *(v1 + 80) = a1;

  sub_1001F886C(v3);
}

uint64_t sub_1001F8750(uint64_t a1)
{
  v3 = *(v1 + 88);
  if (v3)
  {
    if (a1 && (sub_1001DDE34(*(v1 + 88), a1) & 1) != 0)
    {
      goto LABEL_8;
    }
  }

  else if (!a1)
  {
    goto LABEL_10;
  }

  if (*(v1 + 32))
  {
    *(v1 + 40) = 1;
LABEL_8:

    goto LABEL_10;
  }

  sub_1000040A8(&unk_100365610);
  sub_100009274(&qword_10035CF00, &unk_100365610);
  Subject<>.send()();
LABEL_10:
  *(v1 + 88) = a1;

  sub_1001F8AEC(v3);
}

void sub_1001F886C(void *a1)
{
  v2 = v1;
  if (*(v1 + 80))
  {
    if (a1)
    {

      v5 = sub_100202BDC(v4, a1);

      if (v5)
      {
        return;
      }
    }
  }

  else if (!a1)
  {
    return;
  }

  if (qword_100353A20 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000F53C(v6, qword_100381CB0);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v9 = 136446466;

    sub_1000040A8(&qword_100367C20);
    v10 = String.init<A>(describing:)();
    v12 = sub_10017C9E8(v10, v11, &v16);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2082;

    v13 = String.init<A>(describing:)();
    v15 = sub_10017C9E8(v13, v14, &v16);

    *(v9 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "partners changed from: %{public}s to: %{public}s", v9, 0x16u);
    swift_arrayDestroy();
  }

  if (*(v2 + 32))
  {
    *(v2 + 41) = 1;
  }

  else
  {
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
  }
}

void sub_1001F8AEC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 88);
  if (v4)
  {
    if (a1 && (sub_1001DDE34(v4, a1) & 1) != 0)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  if (qword_100353A20 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000F53C(v5, qword_100381CB0);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v8 = 136446466;

    sub_1000040A8(&qword_100367C18);
    v9 = String.init<A>(describing:)();
    v11 = sub_10017C9E8(v9, v10, &v15);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2082;

    v12 = String.init<A>(describing:)();
    v14 = sub_10017C9E8(v12, v13, &v15);

    *(v8 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "footnotes changed from: %{public}s to: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
  }

  if (*(v2 + 32))
  {
    *(v2 + 41) = 1;
  }

  else
  {
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
  }
}

uint64_t sub_1001F8D58()
{
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 2;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  sub_1000040A8(&unk_100365610);
  swift_allocObject();
  *(v0 + 16) = PassthroughSubject.init()();
  swift_allocObject();
  *(v0 + 24) = PassthroughSubject.init()();
  return v0;
}

uint64_t sub_1001F8DEC()
{
}

uint64_t sub_1001F8E2C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1001F8ED0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *(v1 + 64);
  if (v3 == 2)
  {
    if (v2 == 2)
    {
      return result;
    }

    goto LABEL_6;
  }

  if (v2 == 2 || (v4 = *(result + 8), v5 = *(result + 24), v6 = *(result + 32), v7 = *(v1 + 48), v8 = *(v1 + 56), v9 = *(v1 + 72), v10 = *(v1 + 80), v16[0] = *result, v17 = v4, v18 = v2 & 1, v19 = v5, v20 = v6 & 0x101, v11[0] = v7, v12 = v8, v13 = v3 & 1, v14 = v9, v15 = v10 & 0x101, result = sub_100086A90(v11, v16), (result & 1) == 0))
  {
LABEL_6:
    if (*(v1 + 32))
    {
      *(v1 + 40) = 1;
    }

    else
    {
      sub_1000040A8(&unk_100365610);
      sub_100009274(&qword_10035CF00, &unk_100365610);
      return Subject<>.send()();
    }
  }

  return result;
}

void sub_1001F8FFC(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = *(v1 + 64);
  if (v4 == 2)
  {
    if (v3 == 2)
    {
      return;
    }
  }

  else if (v3 != 2)
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(v1 + 48);
    v9 = *(v1 + 56);
    v10 = *(v1 + 72);
    v11 = *(v1 + 80);
    v28[0] = *a1;
    v29 = v5;
    v30 = v3 & 1;
    v31 = v6;
    v32 = v7 & 0x101;
    v23[0] = v8;
    v24 = v9;
    v25 = v4 & 1;
    v26 = v10;
    v27 = v11 & 0x101;
    if (sub_100086A90(v23, v28))
    {
      return;
    }
  }

  if (qword_100353A20 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000F53C(v12, qword_100381CB0);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v15 = 136446466;
    sub_1000040A8(&qword_100367BE0);
    v16 = String.init<A>(describing:)();
    v18 = sub_10017C9E8(v16, v17, &v22);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2082;
    v19 = String.init<A>(describing:)();
    v21 = sub_10017C9E8(v19, v20, &v22);

    *(v15 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v13, v14, "Emergency conversation changed from: %{public}s to: %{public}s", v15, 0x16u);
    swift_arrayDestroy();
  }

  if (*(v2 + 32))
  {
    *(v2 + 41) = 1;
  }

  else
  {
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
  }
}

uint64_t sub_1001F9304(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(v1 + 56);
  if (v3 == 2)
  {
    if (v2 == 2)
    {
      return result;
    }

    goto LABEL_8;
  }

  v4 = v2 != 2 && *(v1 + 48) == *result;
  if (!v4 || ((v3 ^ v2) & 1) != 0)
  {
    goto LABEL_8;
  }

  v5 = *(result + 24);
  v6 = *(result + 40);
  v7 = *(v1 + 88);
  if ((*(v1 + 72) & 1) == 0)
  {
    if (!(v5 & 1 | (*(v1 + 64) != *(result + 16))))
    {
      goto LABEL_17;
    }

LABEL_8:
    if (*(v1 + 32))
    {
      *(v1 + 40) = 1;
    }

    else
    {
      sub_1000040A8(&unk_100365610);
      sub_100009274(&qword_10035CF00, &unk_100365610);
      return Subject<>.send()();
    }

    return result;
  }

  if ((v5 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_17:
  if (v7)
  {
    if (v6 & 1) == 0 || (((v6 ^ v7) >> 8))
    {
      goto LABEL_8;
    }
  }

  else if (v6 & 1) != 0 || *(v1 + 80) != *(result + 32) || (((v6 ^ v7) >> 8))
  {
    goto LABEL_8;
  }

  return result;
}

void sub_1001F943C(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 8);
  v4 = *(v1 + 56);
  if (v4 == 2)
  {
    if (v3 == 2)
    {
      return;
    }

    goto LABEL_8;
  }

  v5 = v3 != 2 && *(v1 + 48) == *a1;
  if (v5 && ((v4 ^ v3) & 1) == 0)
  {
    v16 = *(a1 + 24);
    v17 = *(a1 + 40);
    v18 = *(v1 + 88);
    if (*(v1 + 72))
    {
      if ((v16 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else if (v16 & 1 | (*(v1 + 64) != *(a1 + 16)))
    {
      goto LABEL_8;
    }

    if (v18)
    {
      if ((v17 & 1) != 0 && (((v17 ^ v18) >> 8) & 1) == 0)
      {
        return;
      }
    }

    else if ((v17 & 1) == 0 && *(v1 + 80) == *(a1 + 32) && (((v17 ^ v18) >> 8) & 1) == 0)
    {
      return;
    }
  }

LABEL_8:
  if (qword_100353A20 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000F53C(v6, qword_100381CB0);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v9 = 136446466;
    sub_1000040A8(&qword_1003580D0);
    v10 = String.init<A>(describing:)();
    v12 = sub_10017C9E8(v10, v11, &v19);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2082;
    v13 = String.init<A>(describing:)();
    v15 = sub_10017C9E8(v13, v14, &v19);

    *(v9 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "Roadside Assistance conversation changed from: %{public}s to: %{public}s", v9, 0x16u);
    swift_arrayDestroy();
  }

  if (*(v2 + 32))
  {
    *(v2 + 41) = 1;
  }

  else
  {
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
  }
}