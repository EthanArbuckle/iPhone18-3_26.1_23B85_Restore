void sub_19E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t *), uint64_t a10, uint64_t a11)
{
  v148 = a8;
  v156 = a10;
  v157 = a9;
  v11 = sub_73720();
  v12 = sub_5394(v11);
  v152 = v13;
  v15 = *(v14 + 64);
  __chkstk_darwin(v12);
  sub_198CC();
  v159 = (v16 - v17);
  v19 = __chkstk_darwin(v18);
  v150 = &v141 - v20;
  __chkstk_darwin(v19);
  v147 = &v141 - v21;
  v158 = a11;
  v22 = *(a11 + 16);
  v23 = sub_722B0();
  v24 = sub_5394(v23);
  v145 = v25;
  v27 = *(v26 + 64);
  __chkstk_darwin(v24);
  v144 = &v141 - v28;
  v146 = v29;
  sub_72360();
  sub_D850(&qword_A4828, qword_75BA0);
  v30 = sub_73E80();
  v31 = sub_5394(v30);
  v154 = v32;
  v155 = v31;
  v34 = *(v33 + 64);
  __chkstk_darwin(v31);
  v36 = sub_1B9F8(v35, v141);
  v37 = type metadata accessor for HealthNLIntent(v36);
  v38 = *(*(v37 - 8) + 64);
  __chkstk_darwin(v37 - 8);
  sub_C2A4();
  v41 = v40 - v39;
  v42 = sub_72830();
  v43 = sub_5394(v42);
  v45 = v44;
  v47 = *(v46 + 64);
  __chkstk_darwin(v43);
  sub_C2A4();
  v50 = v49 - v48;
  v51 = sub_731D0();
  v52 = sub_5394(v51);
  v54 = v53;
  v56 = *(v55 + 64);
  __chkstk_darwin(v52);
  sub_198CC();
  v149 = v57 - v58;
  __chkstk_darwin(v59);
  v61 = &v141 - v60;
  sub_727E0();
  v62 = v45[11];
  v63 = sub_1BA28();
  if (v64(v63) == enum case for Parse.NLv3IntentOnly(_:))
  {
    v151 = v11;
    v65 = v45[12];
    v66 = sub_1BA28();
    v67(v66);
    (*(v54 + 32))(v61, v50, v51);
    v142 = v54;
    (*(v54 + 16))(v41, v61, v51);
    v68 = *(v158 + 32);
    v69 = sub_33D50(v22, v22, v68);
    v143 = v61;
    v159 = v69;
    v150 = v51;
    sub_BFD8(v41);
    sub_506C(&qword_A4D00, &unk_760B0);
    v100 = sub_72440();
    v101 = sub_114FC();
    v102 = 0;
    v103 = v158;
    while (v101 != v102)
    {
      if ((v100 & 0xC000000000000001) != 0)
      {
        v104 = sub_73B70();
      }

      else
      {
        if (v102 >= *(&dword_10 + (v100 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_22;
        }

        v104 = *(v100 + 8 * v102 + 32);
      }

      v105 = v104;
      if (__OFADD__(v102, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        return;
      }

      v160 = v102;
      v161 = v104;
      if (sub_1AB44(&v160, v159, v22, *(v103 + 24), v68))
      {

        v162 = sub_506C(&qword_A4D10, qword_78610);
        v160 = v102;
        v161 = v105;
        v125 = v105;
        v126 = v159;
        v127 = v144;
        sub_722A0();
        v128 = v153;
        v129 = v146;
        sub_72350();
        (*(v145 + 8))(v127, v129);
        v130 = v155;
        swift_storeEnumTagMultiPayload();
        v157(v128);

        (*(v154 + 8))(v128, v130);
        (*(v142 + 8))(v143, v150);
        goto LABEL_20;
      }

      ++v102;
    }

    type metadata accessor for HealthFlowError();
    sub_14F70();
    v106 = sub_B5BC(5);
    v107 = sub_736E0();
    sub_7EEC();
    v108 = v151;
    v109 = v152;
    v110 = v147;
    (*(v152 + 16))(v147, v107, v151);

    v111 = sub_73710();
    v112 = sub_73980();

    if (os_log_type_enabled(v111, v112))
    {
      v113 = sub_1BA10();
      v114 = sub_14F44();
      v115 = sub_14F88();
      v163[0] = v115;
      *v113 = 136315394;
      v116 = sub_73ED0();
      v118 = sub_19144(v116, v117, v163);

      *(v113 + 4) = v118;
      *(v113 + 12) = 2112;
      sub_1B9A0();
      sub_1B78C(v119, v120);
      sub_1B9B8();
      *v121 = v106;

      v122 = _swift_stdlib_bridgeErrorToNSError();
      *(v113 + 14) = v122;
      *v114 = v122;
      sub_1BA34(&dword_0, v123, v124, "%s Error: %@");
      sub_AEF4(v114, &qword_A4060, &qword_75440);
      sub_7EBC();
      sub_AE38(v115);
      sub_7EBC();
      sub_7EBC();

      (*(v152 + 8))(v147, v108);
    }

    else
    {

      (*(v109 + 8))(v110, v108);
    }

    v131 = v157;
    v133 = v154;
    v132 = v155;
    v134 = v153;
    v135 = v143;
    v136 = v142;
    sub_1B9A0();
    sub_1B78C(v137, v138);
    v139 = swift_allocError();
    *v140 = v106;
    *v134 = v139;
    swift_storeEnumTagMultiPayload();

    v131(v134);

    (*(v133 + 8))(v134, v132);
    (*(v136 + 8))(v135, v150);
  }

  else
  {
    v70 = v45[1];
    v71 = sub_1BA28();
    v72(v71);
    type metadata accessor for HealthFlowError();
    sub_14F70();
    v73 = sub_B5BC(0);
    v74 = sub_736E0();
    sub_7EEC();
    v75 = v152;
    (*(v152 + 16))(v159, v74, v11);

    v76 = sub_73710();
    v77 = v11;
    v78 = sub_73980();

    v79 = v75;
    if (os_log_type_enabled(v76, v78))
    {
      v80 = sub_1BA10();
      v81 = sub_14F44();
      v82 = sub_14F88();
      v151 = v77;
      v83 = v82;
      v163[0] = v82;
      *v80 = 136315394;
      v84 = sub_73ED0();
      v86 = sub_19144(v84, v85, v163);

      *(v80 + 4) = v86;
      *(v80 + 12) = 2112;
      sub_1B9A0();
      sub_1B78C(v87, v88);
      sub_1B9B8();
      *v89 = v73;

      v90 = _swift_stdlib_bridgeErrorToNSError();
      *(v80 + 14) = v90;
      *v81 = v90;
      sub_1BA34(&dword_0, v91, v92, "%s Error: %@");
      sub_AEF4(v81, &qword_A4060, &qword_75440);
      sub_7EBC();
      sub_AE38(v83);
      sub_7EBC();
      sub_7EBC();

      (*(v79 + 8))(v159, v151);
    }

    else
    {

      (*(v75 + 8))(v159, v77);
    }

    v93 = v155;
    v95 = v153;
    v94 = v154;
    sub_1B9A0();
    sub_1B78C(v96, v97);
    v98 = sub_1B9B8();
    *v99 = v73;
    *v95 = v98;
    swift_storeEnumTagMultiPayload();

    v157(v95);

    (*(v94 + 8))(v95, v93);
  }

LABEL_20:
  sub_11754();
}

uint64_t sub_1AB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = [*(a1 + 8) spokenPhrase];
  v8 = sub_73790();
  v10 = v9;

  v11 = (*(a5 + 24))(a3, a5);
  if (v11)
  {
    v12 = v11;
    v13 = [v11 spokenPhrase];

    v14 = sub_73790();
    v16 = v15;

    if (v8 == v14 && v10 == v16)
    {
      v18 = 1;
    }

    else
    {
      v18 = sub_73DB0();
    }
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

void sub_1AC58(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t *a7, void (*a8)(void), uint64_t a9)
{
  v10 = v9;
  v91 = a1;
  v94 = a7;
  v95 = a9;
  v14 = sub_506C(&unk_A6CD0, &unk_75B80);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  sub_1B9F8(v16, v87);
  v17 = sub_721F0();
  v18 = sub_5394(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  __chkstk_darwin(v18);
  sub_C2A4();
  v92 = (v24 - v23);
  v96 = sub_73720();
  v25 = sub_5394(v96);
  v27 = v26;
  v29 = *(v28 + 64);
  __chkstk_darwin(v25);
  sub_198CC();
  v32 = v30 - v31;
  __chkstk_darwin(v33);
  v35 = &v87 - v34;

  v36 = sub_453DC(a3, a4);
  if (v36 == 5)
  {
    type metadata accessor for HealthFlowError();
    sub_14F70();
    v37 = sub_B5BC(2);
    v38 = sub_736E0();
    sub_7EEC();
    (*(v27 + 16))(v32, v38, v96);

    v39 = sub_73710();
    v40 = sub_73980();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = sub_1BA10();
      v90 = a8;
      v42 = v41;
      v43 = sub_14F44();
      v94 = sub_14F88();
      v97[0] = v94;
      *v42 = 136315394;
      v44 = sub_73ED0();
      v46 = sub_19144(v44, v45, v97);

      *(v42 + 4) = v46;
      *(v42 + 12) = 2112;
      sub_1B9A0();
      sub_1B78C(v47, v48);
      sub_1B9D8();
      *v49 = v37;

      v50 = _swift_stdlib_bridgeErrorToNSError();
      *(v42 + 14) = v50;
      *v43 = v50;
      _os_log_impl(&dword_0, v39, v40, "%s Error: %@", v42, 0x16u);
      sub_AEF4(v43, &qword_A4060, &qword_75440);
      sub_7EBC();
      sub_AE38(v94);
      sub_7EBC();
      a8 = v90;
      sub_7EBC();
    }

    (*(v27 + 8))(v32, v96);
    sub_1B9A0();
    sub_1B78C(v51, v52);
    v53 = sub_1B9D8();
    *v54 = v37;
    v97[0] = v53;
    v98 = 1;

    a8(v97);

    sub_AEF4(v97, &qword_A4810, &unk_760A0);
    goto LABEL_19;
  }

  v55 = v36;
  v89 = v17;
  v56 = sub_736E0();
  sub_7EEC();
  (*(v27 + 16))(v35, v56, v96);
  v57 = sub_73710();
  v58 = sub_73970();
  v59 = os_log_type_enabled(v57, v58);
  v87 = v10;
  v88 = v20;
  if (v59)
  {
    v60 = sub_1BA10();
    v97[0] = swift_slowAlloc();
    *v60 = 136315394;
    v61 = sub_73ED0();
    v63 = sub_19144(v61, v62, v97);

    *(v60 + 4) = v63;
    *(v60 + 12) = 2080;
    v64 = sub_45428(v55);
    v66 = sub_19144(v64, v65, v97);

    *(v60 + 14) = v66;
    _os_log_impl(&dword_0, v57, v58, "%s Generating prompt to disambiguate %s", v60, 0x16u);
    swift_arrayDestroy();
    sub_7EBC();
    sub_7EBC();
  }

  (*(v27 + 8))(v35, v96);
  v67 = sub_506C(&qword_A4D00, &unk_760B0);
  v68 = sub_72440();
  v69 = sub_114FC(v68);
  if (!v69)
  {

    v72 = &_swiftEmptyArrayStorage;
LABEL_18:
    v81 = v92;
    sub_3727C(v72);

    type metadata accessor for DisambiguationStrategyHelper();
    sub_72440();
    sub_72840();
    v82 = sub_31CE8();

    sub_AE38(v97);
    v83 = v87[3];
    v84 = v87[4];
    sub_7C78(v87, v83);
    v85 = v93;
    v86 = (*(v84 + 16))(v83, v84);
    __chkstk_darwin(v86);
    *(&v87 - 2) = v82;
    *(&v87 - 1) = v81;
    sub_541F4(sub_1B784, v97);
    a8(v97);

    sub_AEF4(v97, &qword_A4810, &unk_760A0);
    sub_AEF4(v85, &unk_A6CD0, &unk_75B80);
    (*(v88 + 8))(v81, v89);
LABEL_19:
    sub_11754();
    return;
  }

  v70 = v69;
  v97[0] = &_swiftEmptyArrayStorage;
  sub_401D0();
  if ((v70 & 0x8000000000000000) == 0)
  {
    v96 = v67;
    v90 = a8;
    v71 = 0;
    v72 = v97[0];
    do
    {
      if ((v68 & 0xC000000000000001) != 0)
      {
        sub_1BA28();
        v73 = sub_73B70();
      }

      else
      {
        v73 = *(v68 + 8 * v71 + 32);
      }

      v74 = v73;
      v75 = [v73 spokenPhrase];
      v76 = sub_73790();
      v78 = v77;

      v97[0] = v72;
      v79 = v72[2];
      if (v79 >= v72[3] >> 1)
      {
        sub_401D0();
        v72 = v97[0];
      }

      ++v71;
      v72[2] = v79 + 1;
      v80 = &v72[2 * v79];
      *(v80 + 4) = v76;
      *(v80 + 5) = v78;
    }

    while (v70 != v71);

    a8 = v90;
    goto LABEL_18;
  }

  __break(1u);
}

uint64_t sub_1B3CC@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = sub_506C(&qword_A4050, &unk_75290);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v15 - v8;
  sub_72840();
  sub_72840();
  sub_7C78(v17, v17[3]);
  sub_71ED0();
  sub_506C(&unk_A63F0, &unk_760C0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_752C0;
  *(v10 + 32) = a1;
  v11 = sub_721F0();
  (*(*(v11 - 8) + 16))(v9, a2, v11);
  sub_7CC4(v9, 0, 1, v11);
  v12 = sub_72890();
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  a3[3] = v12;
  a3[4] = &protocol witness table for AceOutput;
  sub_5BAC(a3);
  v13 = a1;
  sub_72100();

  sub_AEF4(v15, &unk_A6D20, &qword_76D80);
  sub_AEF4(v9, &qword_A4050, &unk_75290);
  sub_AE38(v18);
  return sub_AE38(v17);
}

uint64_t sub_1B5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a7;
  *(v11 + 24) = a8;

  sub_19ABC(v12, v13, v14, v15, v16, a6, sub_1B80C);
}

unint64_t sub_1B720()
{
  result = qword_A4CF0;
  if (!qword_A4CF0)
  {
    sub_D850(&qword_A4CF8, &qword_75FF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A4CF0);
  }

  return result;
}

uint64_t sub_1B78C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B7D4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t getEnumTagSinglePayload for WorkoutsDisambiguationError(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for WorkoutsDisambiguationError(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x1B908);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1B94C()
{
  result = qword_A4D18;
  if (!qword_A4D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A4D18);
  }

  return result;
}

uint64_t sub_1B9B8()
{

  return swift_allocError();
}

uint64_t sub_1B9D8()
{

  return swift_allocError();
}

uint64_t sub_1BA10()
{

  return swift_slowAlloc();
}

void sub_1BA34(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t getEnumTagSinglePayload for HealthReference(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xDE)
  {
    if (a2 + 34 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 34) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 35;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x23;
  v5 = v6 - 35;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for HealthReference(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 34 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 34) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xDE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDD)
  {
    v6 = ((a2 - 222) >> 8) + 1;
    *result = a2 + 34;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1BBA8);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 34;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1BBE4()
{
  result = qword_A4D20;
  if (!qword_A4D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A4D20);
  }

  return result;
}

uint64_t sub_1BC38()
{
  v0 = sub_73DC0();

  if (v0 >= 0x23)
  {
    return 35;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1BC8C(char a1)
{
  result = 0x7473726966;
  switch(a1)
  {
    case 1:
      return 0x646E6F636573;
    case 2:
      return 0x6472696874;
    case 3:
      return 0x687472756F66;
    case 4:
      v5 = 1952868710;
      return v5 & 0xFFFF0000FFFFFFFFLL | 0x6800000000;
    case 5:
      v5 = 1954048371;
      return v5 & 0xFFFF0000FFFFFFFFLL | 0x6800000000;
    case 6:
      v4 = 0x746E65766573;
      return v4 & 0xFFFFFFFFFFFFLL | 0x68000000000000;
    case 7:
      return 0x7468676965;
    case 8:
      return 0x68746E696ELL;
    case 9:
      v5 = 1953391988;
      return v5 & 0xFFFF0000FFFFFFFFLL | 0x6800000000;
    case 10:
      return 0x68746E6576656C65;
    case 11:
      v4 = 0x74666C657774;
      return v4 & 0xFFFFFFFFFFFFLL | 0x68000000000000;
    case 12:
      v6 = 1919510644;
      goto LABEL_27;
    case 13:
      v6 = 1920298854;
      goto LABEL_27;
    case 14:
      v3 = 1952868710;
      return v3 | 0x746E656500000000;
    case 15:
      v3 = 1954048371;
      return v3 | 0x746E656500000000;
    case 16:
      return 0x6565746E65766573;
    case 17:
      v6 = 1751607653;
      goto LABEL_27;
    case 18:
      v6 = 1701734766;
LABEL_27:
      result = v6 | 0x6E65657400000000;
      break;
    case 19:
      result = 0x746569746E657774;
      break;
    case 20:
    case 23:
    case 24:
      result = 0x662079746E657774;
      break;
    case 21:
      result = 0x732079746E657774;
      break;
    case 22:
      result = 0x742079746E657774;
      break;
    case 25:
      result = 1953718636;
      break;
    case 26:
      result = 0x656C6464696DLL;
      break;
    case 27:
      result = 1954047342;
      break;
    case 28:
      result = 0x73756F6976657270;
      break;
    case 29:
      result = 0x6F54646E6F636573;
      break;
    case 30:
      result = 0x4C6F546472696874;
      break;
    case 31:
      result = 6647407;
      break;
    case 32:
      result = 2037277037;
      break;
    case 33:
      result = 6645876;
      break;
    case 34:
      result = 0x6573656874;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C02C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1BC38();
  *a2 = result;
  return result;
}

uint64_t sub_1C05C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BC8C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C088(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1A0();
  v5 = sub_1C1F4();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v4, v5);
}

unint64_t sub_1C0F4()
{
  result = qword_A4D28;
  if (!qword_A4D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A4D28);
  }

  return result;
}

unint64_t sub_1C14C()
{
  result = qword_A4D30;
  if (!qword_A4D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A4D30);
  }

  return result;
}

unint64_t sub_1C1A0()
{
  result = qword_A4D38;
  if (!qword_A4D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A4D38);
  }

  return result;
}

unint64_t sub_1C1F4()
{
  result = qword_A4D40;
  if (!qword_A4D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A4D40);
  }

  return result;
}

uint64_t sub_1C248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_72270();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_506C(&unk_A6CD0, &unk_75B80);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (&v17 - v13);
  sub_14DA4(a1, &v17 - v13);
  result = swift_getEnumCaseMultiPayload();
  v16 = result;
  if (result == 1)
  {
    *a3 = *v14;
  }

  else
  {
    (*(v7 + 32))(v10, v14, v6);
    sub_1D340(a2, a3);
    result = (*(v7 + 8))(v10, v6);
  }

  *(a3 + 40) = v16 == 1;
  return result;
}

uint64_t sub_1C3DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void (*a7)(uint64_t), uint64_t a8)
{
  v120 = a8;
  v121 = a7;
  v117 = a5;
  v118 = a4;
  v119 = a3;
  v125 = sub_506C(&qword_A4E00, &qword_763C0);
  v8 = *(*(v125 - 8) + 64);
  __chkstk_darwin(v125);
  v122 = (&v110 - v9);
  v10 = type metadata accessor for HealthNLIntent(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  sub_C2A4();
  v113 = v13 - v12;
  v14 = sub_731D0();
  v15 = sub_5394(v14);
  v114 = v16;
  v115 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v15);
  sub_C2A4();
  v112 = v20 - v19;
  v21 = sub_72830();
  v22 = sub_5394(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  v27 = __chkstk_darwin(v22);
  v29 = &v110 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v31 = &v110 - v30;
  v116 = sub_73970();
  v123 = sub_734D0();
  v32 = *v123;
  v124 = sub_506C(&qword_A3BA8, &unk_76BA0);
  v33 = swift_allocObject();
  v110 = xmmword_74F60;
  *(v33 + 16) = xmmword_74F60;
  v127 = 0;
  v128 = 0xE000000000000000;
  v34 = v32;
  sub_727E0();
  sub_73C40();
  v111 = v24;
  v35 = *(v24 + 8);
  v35(v31, v21);
  v37 = v127;
  v36 = v128;
  *(v33 + 56) = &type metadata for String;
  v38 = sub_5258();
  *(v33 + 64) = v38;
  *(v33 + 32) = v37;
  *(v33 + 40) = v36;
  *(v33 + 96) = sub_ADF8(0, &qword_A4E08, INIntentResolutionResult_ptr);
  *(v33 + 104) = sub_1DA00();
  v39 = v117;
  *(v33 + 72) = v117;
  v40 = v39;
  sub_73620();

  v41 = v118;

  v42 = sub_453DC(v119, v41);
  if (v42 == 5)
  {
    type metadata accessor for HealthFlowError();
    v43 = sub_1DAA4();
    v44 = sub_B5BC(2);
    sub_73980();
    v45 = sub_1DA80();
    *(v45 + 16) = xmmword_74B40;
    v46 = v43;
    v47 = sub_B4FC();
    *(v45 + 56) = &type metadata for String;
    *(v45 + 64) = v38;
LABEL_12:
    *(v45 + 32) = v47;
    *(v45 + 40) = v48;
    sub_1DAC0();

    sub_1DA68();
    sub_1D9B8(v77, 255, v78);
    v79 = sub_1DAF8();
    *v80 = v44;
    v81 = v122;
    *v122 = v79;
    swift_storeEnumTagMultiPayload();

    v121(v81);

    return sub_AEF4(v81, &qword_A4E00, &qword_763C0);
  }

  v49 = v42;
  v119 = v38;
  sub_727E0();
  v50 = v111;
  if ((*(v111 + 88))(v29, v21) != enum case for Parse.NLv3IntentOnly(_:))
  {
    v35(v29, v21);
    type metadata accessor for HealthFlowError();
    v75 = sub_1DAA4();
    v44 = sub_B5BC(0);
    sub_73980();
    v45 = sub_1DA80();
    *(v45 + 16) = xmmword_74B40;
    v46 = v75;
    v47 = sub_B4FC();
    v76 = v119;
    *(v45 + 56) = &type metadata for String;
    *(v45 + 64) = v76;
    goto LABEL_12;
  }

  (*(v50 + 96))(v29, v21);
  v51 = v114;
  v52 = v115;
  v53 = v112;
  (*(v114 + 32))(v112, v29, v115);
  (*(v51 + 16))(v113, v53, v52);
  v118 = sub_ADF8(0, &qword_A4518, INStartWorkoutIntent_ptr);
  v54 = sub_5C4C8();
  sub_73970();
  v55 = *v123;
  v56 = swift_allocObject();
  *(v56 + 16) = v110;
  v57 = v55;
  v58 = sub_5A9F8();
  v59 = v119;
  *(v56 + 56) = &type metadata for String;
  *(v56 + 64) = v59;
  *(v56 + 32) = v58;
  *(v56 + 40) = v60;
  v61 = [v54 description];
  v62 = sub_73790();
  v64 = v63;

  *(v56 + 96) = &type metadata for String;
  *(v56 + 104) = v59;
  *(v56 + 72) = v62;
  *(v56 + 80) = v64;
  sub_73620();

  v65 = v54;

  v66 = [v54 verb];
  v67 = sub_73790();
  v69 = v68;

  if (v67 == 0x6C65636E6163 && v69 == 0xE600000000000000)
  {

    goto LABEL_15;
  }

  v71 = sub_73DB0();

  if (v71)
  {
LABEL_15:
    type metadata accessor for HealthFlowError();
    swift_allocObject();
    v83 = sub_B5BC(9);
    sub_1DA68();
    sub_1D9B8(v84, 255, v85);
    v86 = swift_allocError();
    *v87 = v83;
    v88 = v122;
    *v122 = v86;
    swift_storeEnumTagMultiPayload();

    v121(v88);

    sub_AEF4(v88, &qword_A4E00, &qword_763C0);
    sub_BFD8(v113);
    v89 = sub_1DAE4();
    return v90(v89);
  }

  v72 = v123;
  switch(v49)
  {
    case 1:
      v73 = [v54 workoutGoalUnitType];
      type metadata accessor for INWorkoutGoalUnitType(0);
      goto LABEL_20;
    case 2:
      v73 = [v54 workoutLocationType];
      type metadata accessor for INWorkoutLocationType(0);
      goto LABEL_20;
    case 3:
      v92 = sub_73A00();
      v94 = v93;
      v129 = sub_506C(&qword_A4E28, &qword_763D8);
      v127 = v92;
      LOBYTE(v128) = v94 & 1;
      goto LABEL_21;
    case 4:
      v91 = sub_739E0();
      v129 = sub_506C(&qword_A4E18, &qword_763C8);
      LOBYTE(v127) = v91;
      goto LABEL_21;
    default:
      v73 = [v54 workoutName];
      v74 = sub_506C(&qword_A4838, &qword_763E0);
LABEL_20:
      v129 = v74;
      v127 = v73;
LABEL_21:
      v96 = v121;
      v95 = v122;
      sub_73970();
      v97 = *v72;
      v98 = swift_allocObject();
      *(v98 + 16) = xmmword_74B40;
      v99 = v97;
      v100 = [v65 description];
      v101 = v65;
      v102 = sub_73790();
      v104 = v103;

      v105 = v119;
      *(v98 + 56) = &type metadata for String;
      *(v98 + 64) = v105;
      *(v98 + 32) = v102;
      *(v98 + 40) = v104;
      sub_73620();

      sub_14E68(&v127, v126);
      v106 = v101;
      sub_722A0();
      v107 = sub_506C(&qword_A4E20, &qword_763D0);
      sub_7CC4(v95, 0, 1, v107);
      swift_storeEnumTagMultiPayload();
      v96(v95);

      sub_AEF4(v95, &qword_A4E00, &qword_763C0);
      sub_BFD8(v113);
      v108 = sub_1DAE4();
      v109(v108);
      result = sub_AE38(&v127);
      break;
  }

  return result;
}

uint64_t sub_1CDDC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void (*a6)(uint64_t *), uint64_t a7)
{
  v66 = a7;
  v10 = sub_73390();
  v11 = sub_5394(v10);
  v65 = v12;
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  sub_C2A4();
  v17 = v16 - v15;
  v18 = sub_506C(&unk_A6CD0, &unk_75B80);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v60 - v20;
  v22 = sub_721F0();
  v23 = sub_5394(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  __chkstk_darwin(v23);
  sub_C2A4();
  v30 = v29 - v28;

  v31 = sub_453DC(a3, a4);
  if (v31 == 5)
  {
    type metadata accessor for HealthFlowError();
    sub_1DAA4();
    v32 = sub_B5BC(2);
    sub_73980();
    v33 = *sub_734D0();
    sub_506C(&qword_A3BA8, &unk_76BA0);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_74B40;
    v35 = v33;
    v36 = sub_B4FC();
    v38 = v37;
    *(v34 + 56) = &type metadata for String;
    *(v34 + 64) = sub_5258();
    *(v34 + 32) = v36;
    *(v34 + 40) = v38;
    sub_1DAC0();

    sub_1DA68();
    sub_1D9B8(v39, 255, v40);
    v41 = sub_1DAF8();
    *v42 = v32;
    v68 = v41;
    v70 = 1;

    a6(&v68);

    return sub_AEF4(&v68, &qword_A4810, &unk_760A0);
  }

  else
  {
    v44 = v31;
    sub_73970();
    v45 = sub_734D0();
    v63 = v22;
    v46 = *v45;
    sub_506C(&qword_A3BA8, &unk_76BA0);
    v47 = swift_allocObject();
    v64 = xmmword_74B40;
    *(v47 + 16) = xmmword_74B40;
    v68 = 0;
    v69 = 0xE000000000000000;
    v67 = v44;
    v48 = v46;
    sub_73C40();
    v61 = a6;
    v62 = v25;
    v49 = v68;
    v50 = v69;
    *(v47 + 56) = &type metadata for String;
    *(v47 + 64) = sub_5258();
    *(v47 + 32) = v49;
    *(v47 + 40) = v50;
    sub_73620();

    sub_37344();
    sub_506C(&qword_A4648, &qword_758E8);
    v51 = swift_allocObject();
    *(v51 + 16) = v64;
    v68 = 0;
    v69 = 0xE000000000000000;
    sub_32DAC(3);
    v52 = v69;
    *(v51 + 32) = v68;
    *(v51 + 40) = v52;
    sub_721C0();
    sub_73280();
    v53 = sub_73270();
    sub_506C(&qword_A4818, &unk_75B90);
    v54 = *(v65 + 72);
    v55 = (*(v65 + 80) + 32) & ~*(v65 + 80);
    v56 = swift_allocObject();
    *(v56 + 16) = v64;
    sub_73380();
    v68 = v56;
    sub_1D9B8(&unk_A6CE0, 255, &type metadata accessor for CATOption);
    sub_506C(&qword_A4820, qword_77FF0);
    sub_14D40();
    sub_73B10();
    v57 = type metadata accessor for HealthCATWrapper();
    v58 = *(v57 + 48);
    v59 = *(v57 + 52);
    swift_allocObject();
    sub_4F648(v53, v17);
    sub_4F78C(v44, 0);

    sub_1C248(v21, v30, &v68);
    v61(&v68);
    sub_AEF4(&v68, &qword_A4810, &unk_760A0);
    sub_AEF4(v21, &unk_A6CD0, &unk_75B80);
    return (*(v62 + 8))(v30, v63);
  }
}

uint64_t sub_1D340@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = sub_506C(&qword_A4050, &unk_75290);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v11 - v6;
  sub_72840();
  sub_72840();
  sub_7C78(v13, v13[3]);
  sub_71ED0();
  v8 = sub_721F0();
  (*(*(v8 - 8) + 16))(v7, a1, v8);
  sub_7CC4(v7, 0, 1, v8);
  v9 = sub_72890();
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  a2[3] = v9;
  a2[4] = &protocol witness table for AceOutput;
  sub_5BAC(a2);
  sub_720E0();
  sub_AEF4(v11, &unk_A6D20, &qword_76D80);
  sub_AEF4(v7, &qword_A4050, &unk_75290);
  sub_AE38(v14);
  return sub_AE38(v13);
}

uint64_t sub_1D558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  started = type metadata accessor for StartWorkoutsNeedsValueStrategy();

  return NeedsValueFlowStrategy.makeRepromptOnEmptyParse(app:intent:parameterName:intentResolutionResult:_:)(a1, a2, a3, a4, a5, a6, a7, started, a9);
}

uint64_t sub_1D5EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  started = type metadata accessor for StartWorkoutsNeedsValueStrategy();

  return NeedsValueFlowStrategy.makeRepromptOnLowConfidence(app:intent:parameterName:intentResolutionResult:_:)(a1, a2, a3, a4, a5, a6, a7, started, a9);
}

uint64_t sub_1D680()
{
  type metadata accessor for StartWorkoutsNeedsValueStrategy();

  return sub_72690();
}

uint64_t sub_1D704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  started = type metadata accessor for StartWorkoutsNeedsValueStrategy();

  return ParameterResolutionHandling.makeErrorResponse(app:intent:parameterName:error:_:)(a1, a2, a3, a4, a5, a6, a7, started, a9);
}

uint64_t sub_1D798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = async function pointer to ParameterResolutionHandling.makeFlowCancelledResponse(app:intent:parameterName:)[1];
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  started = type metadata accessor for StartWorkoutsNeedsValueStrategy();
  *v15 = v7;
  v15[1] = sub_14A58;

  return ParameterResolutionHandling.makeFlowCancelledResponse(app:intent:parameterName:)(a1, a2, a3, a4, a5, started, a7);
}

uint64_t sub_1D87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = async function pointer to ParameterResolutionHandling.makeErrorResponse(app:intent:parameterName:error:)[1];
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  started = type metadata accessor for StartWorkoutsNeedsValueStrategy();
  *v17 = v8;
  v17[1] = sub_14EC4;

  return ParameterResolutionHandling.makeErrorResponse(app:intent:parameterName:error:)(a1, a2, a3, a4, a5, a6, started, a8);
}

uint64_t sub_1D9B8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_1DA00()
{
  result = qword_A4E10;
  if (!qword_A4E10)
  {
    sub_ADF8(255, &qword_A4E08, INIntentResolutionResult_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A4E10);
  }

  return result;
}

uint64_t sub_1DA80()
{
  v2 = *(v0 - 168);
  v3 = **(v0 - 176);

  return swift_allocObject();
}

uint64_t sub_1DAA4()
{

  return swift_allocObject();
}

uint64_t sub_1DAC0()
{

  return sub_73620();
}

uint64_t sub_1DAE4()
{
  v1 = *(v0 - 240);
  v2 = *(*(v0 - 248) + 8);
  return *(v0 - 264);
}

uint64_t sub_1DAF8()
{

  return swift_allocError();
}

void sub_1DB18()
{
  sub_11784();
  v1 = v0;
  v2 = sub_73720();
  v3 = sub_5394(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v3);
  v9 = __chkstk_darwin(v8);
  __chkstk_darwin(v9);
  v11 = v43 - v10;
  if (sub_114FC(v1))
  {
    if (sub_114FC(v1) == 1)
    {
      sub_11500(0, (v1 & 0xC000000000000001) == 0, v1);
      if ((v1 & 0xC000000000000001) != 0)
      {
        v12 = sub_73B70();
      }

      else
      {
        v12 = *(v1 + 32);
      }

      sub_736E0();
      sub_7EEC();
      v13 = *(v5 + 16);
      sub_2222C();
      v14();

      v15 = sub_73710();
      v16 = sub_73970();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = sub_221D8();
        v18 = sub_14F88();
        v43[1] = v12;
        v44 = v18;
        *v17 = 136315138;
        sub_733D0();
        sub_22104();
        sub_22068(v19, 255, v20);
        v21 = sub_73DA0();
        v23 = sub_19144(v21, v22, &v44);

        *(v17 + 4) = v23;
        sub_222C4(&dword_0, v24, v25, "Only found 1 app, %s so we're using that");
        sub_AE38(v18);
        sub_22180();
        sub_7EBC();
      }

      v26 = *(v5 + 8);
      v27 = sub_5388();
      v28(v27);
      sub_72300();
      sub_722F0();
    }

    else
    {
      sub_736E0();
      sub_7EEC();
      v34 = *(v5 + 16);
      v35 = sub_221F0();
      v36(v35);
      v37 = sub_73710();
      v38 = sub_73970();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = sub_22324();
        *v39 = 0;
        _os_log_impl(&dword_0, v37, v38, "Disambiguating apps", v39, 2u);
        sub_7EBC();
      }

      v40 = *(v5 + 8);
      v41 = sub_7F34();
      v42(v41);
      sub_72300();
      sub_722E0();
    }
  }

  else
  {
    sub_736E0();
    sub_7EEC();
    v29 = *(v5 + 16);
    sub_2222C();
    v30();
    v31 = sub_73710();
    v32 = sub_73970();
    if (sub_22238(v32))
    {
      v33 = sub_22324();
      *v33 = 0;
      _os_log_impl(&dword_0, v31, v32, "No apps found using AppFinder", v33, 2u);
      sub_7EBC();
    }

    (*(v5 + 8))(v11, v2);
    sub_72300();
    sub_722D0();
  }

  sub_11754();
}

void sub_1DEF8()
{
  v0._countAndFlagsBits = sub_733B0();
  if (v0._object && (v1 = sub_734B0(v0), , v1))
  {
    sub_72300();
    sub_722F0();
  }

  else
  {

    sub_1DB18();
  }
}

uint64_t sub_1DFB4()
{
  sub_7F1C();
  v1[34] = v2;
  v1[35] = v0;
  v3 = sub_731F0();
  v1[36] = v3;
  sub_7E94(v3);
  v1[37] = v4;
  v6 = *(v5 + 64);
  v1[38] = sub_7ED4();
  v7 = sub_72830();
  v1[39] = v7;
  sub_7E94(v7);
  v1[40] = v8;
  v10 = *(v9 + 64);
  v1[41] = sub_7ED4();
  v11 = sub_73720();
  v1[42] = v11;
  sub_7E94(v11);
  v1[43] = v12;
  v14 = *(v13 + 64);
  v1[44] = sub_2228C();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v15 = sub_221BC();

  return _swift_task_switch(v15, v16, v17);
}

uint64_t sub_1E12C()
{
  v83 = v0;
  v1 = v0[49];
  v2 = v0[42];
  v3 = v0[43];
  v4 = v0[35];
  v0[50] = sub_736E0();
  sub_7EEC();
  v0[51] = *(v3 + 16);
  v0[52] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5 = sub_7F34();
  v81 = v6;
  v6(v5);

  v7 = sub_73710();
  v8 = sub_73970();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[49];
  v12 = v0[42];
  v11 = v0[43];
  if (v9)
  {
    v13 = v0[35];
    v78 = v0[49];
    v14 = sub_221D8();
    v15 = sub_14F88();
    v82 = v15;
    *v14 = 136315138;
    v16 = *(v13 + 16);
    v17 = *(v13 + 24);

    v18 = sub_19144(v16, v17, &v82);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_0, v7, v8, "Starting to resolve apps for %s", v14, 0xCu);
    sub_AE38(v15);
    sub_22180();
    sub_7EBC();

    v19 = *(v11 + 8);
    v19(v78, v12);
  }

  else
  {

    v19 = *(v11 + 8);
    v19(v10, v12);
  }

  v0[53] = v19;
  v21 = v0[40];
  v20 = v0[41];
  v22 = v0[39];
  v23 = v0[34];
  sub_727E0();
  sub_DDA8();
  v25 = v24;
  v26 = *(v21 + 8);
  v26(v20, v22);
  v27 = v0[42];
  if (v25)
  {
    v28 = v0[48];
    sub_7EEC();
    v29 = sub_7F34();
    v81(v29);

    v30 = sub_73710();
    v31 = sub_73970();

    v32 = os_log_type_enabled(v30, v31);
    v33 = v0[48];
    v35 = v0[42];
    v34 = v0[43];
    if (v32)
    {
      v79 = v19;
      v36 = sub_221D8();
      v37 = sub_14F88();
      v82 = v37;
      *v36 = 136315138;
      v0[33] = v25;
      sub_733D0();
      sub_22104();
      sub_22068(v38, 255, v39);
      v40 = sub_73DA0();
      v42 = sub_19144(v40, v41, &v82);

      *(v36 + 4) = v42;
      _os_log_impl(&dword_0, v30, v31, "Found app in intent, using that (%s)", v36, 0xCu);
      sub_AE38(v37);
      sub_7EBC();
      sub_22180();

      v79(v33, v35);
    }

    else
    {

      v19(v33, v35);
    }

    if (qword_A38C8 != -1)
    {
      sub_2219C();
    }

    v62 = v0[35];
    v64 = *(v62 + 16);
    v63 = *(v62 + 24);

    sub_5263C(v64, v63, v25, 9);

    sub_72300();
    sub_722F0();

    sub_22250();

    sub_22200();
    sub_22210();

    __asm { BRAA            X2, X16 }
  }

  v80 = v19;
  v43 = v0[47];
  v44 = v0[41];
  v45 = v0[39];
  v46 = v0[34];
  sub_727E0();
  sub_ED34();
  v48 = v47;
  v77 = v49;
  v0[54] = v49;
  v0[55] = v47;
  v26(v44, v45);
  sub_7EEC();
  v50 = sub_5388();
  v81(v50);

  v51 = sub_73710();
  v52 = sub_73970();

  v53 = os_log_type_enabled(v51, v52);
  v54 = v0[47];
  v56 = v0[42];
  v55 = v0[43];
  if (v53)
  {
    v57 = sub_221D8();
    v58 = sub_14F88();
    v82 = v58;
    *v57 = 136315138;
    v0[30] = v77;
    v0[31] = v48;
    sub_506C(&qword_A6D00, &unk_75D30);
    v59 = sub_73A80();
    v61 = sub_19144(v59, v60, &v82);

    *(v57 + 4) = v61;
    _os_log_impl(&dword_0, v51, v52, "Got a modality: %s", v57, 0xCu);
    sub_AE38(v58);
    sub_7EBC();
    sub_7EBC();
  }

  v80(v54, v56);
  v67 = v0[35];
  sub_21FC0(v67 + 32, (v0 + 7));
  v68 = v0[11];
  sub_7C78(v0 + 7, v0[10]);
  v69 = *(v68 + 8);
  v70 = sub_221CC();
  v71(v70);
  sub_AE38(v0 + 7);
  v72 = *(v67 + 16);
  v0[56] = *(v67 + 24);

  v0[57] = sub_4C4BC(&off_97DB8);
  v73 = async function pointer to static AppFinder.listApps(intentID:siriAuthorizationRestriction:)[1];
  v74 = swift_task_alloc();
  v0[58] = v74;
  *v74 = v0;
  v74[1] = sub_1E778;
  sub_7F34();
  sub_22210();

  return static AppFinder.listApps(intentID:siriAuthorizationRestriction:)();
}

uint64_t sub_1E778()
{
  sub_7F1C();
  sub_B0BC();
  v2 = v1[58];
  v3 = v1[57];
  v4 = v1[56];
  v5 = *v0;
  sub_B044();
  *v6 = v5;
  *(v8 + 472) = v7;

  v9 = sub_221BC();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1E89C()
{
  v62 = v0;
  v1 = *(v0 + 472);
  v3 = *(v0 + 408);
  v2 = *(v0 + 416);
  v4 = *(v0 + 400);
  v5 = *(v0 + 368);
  v6 = *(v0 + 336);
  sub_7EEC();
  v7 = sub_5388();
  v3(v7);

  v8 = sub_73710();
  v9 = sub_73970();
  v10 = sub_22238(v9);
  v11 = *(v0 + 472);
  if (v10)
  {
    v12 = sub_221D8();
    *v12 = 134217984;
    *(v12 + 4) = sub_114FC(v11);

    _os_log_impl(&dword_0, v8, v9, "Found %ld apps", v12, 0xCu);
    sub_7EBC();
  }

  else
  {
    v13 = *(v0 + 472);
  }

  v14 = *(v0 + 344) + 8;
  (*(v0 + 424))(*(v0 + 368), *(v0 + 336));
  v15 = *(v0 + 48);
  sub_7C78((v0 + 16), *(v0 + 40));
  sub_221CC();
  v16 = sub_71EF0();
  v17 = *(v0 + 440);
  if (v16)
  {
    v18 = *(v0 + 432);
    v19 = *(v0 + 408);
    v60 = *(v0 + 416);
    v20 = *(v0 + 400);
    v21 = *(v0 + 360);
    v22 = *(v0 + 336);
    v24 = *(v0 + 296);
    v23 = *(v0 + 304);
    v25 = *(v0 + 288);
    sub_73460();
    v26 = sub_73430();
    v27 = defaultWorkoutApp(for:workoutName:)(v23, v26);
    (*(v24 + 8))(v23, v25);
    sub_7EEC();
    v19(v21, v20, v22);

    v28 = sub_73710();
    v29 = sub_73970();

    v30 = os_log_type_enabled(v28, v29);
    v31 = *(v0 + 424);
    v32 = *(v0 + 360);
    v33 = *(v0 + 336);
    if (v30)
    {
      v34 = sub_221D8();
      v35 = sub_14F88();
      v61 = v35;
      *v34 = 136315138;
      *(v0 + 256) = v27;
      sub_733D0();
      sub_22104();
      sub_22068(v36, 255, v37);
      v38 = sub_73DA0();
      v40 = sub_19144(v38, v39, &v61);

      *(v34 + 4) = v40;
      _os_log_impl(&dword_0, v28, v29, "Picked the default app for this:  %s", v34, 0xCu);
      sub_AE38(v35);
      sub_7EBC();
      sub_22180();

      v31(v32, v33);
    }

    else
    {

      v31(v32, v33);
    }

    v56 = *(v0 + 472);
    sub_221CC();
    sub_1DEF8();
  }

  else
  {
    v42 = *(v0 + 408);
    v41 = *(v0 + 416);
    v43 = *(v0 + 400);
    v44 = *(v0 + 352);
    v45 = *(v0 + 336);
    v46 = *(v0 + 440);

    sub_7EEC();
    v47 = sub_5388();
    v42(v47);
    v48 = sub_73710();
    v49 = sub_73970();
    if (sub_22238(v49))
    {
      *sub_22324() = 0;
      sub_222A4(&dword_0, v50, v51, "Going to full disambiguation");
      sub_7EBC();
    }

    v52 = *(v0 + 472);
    v53 = *(v0 + 424);
    v54 = *(v0 + 352);
    v55 = *(v0 + 336);

    v53(v54, v55);
    sub_1DB18();
  }

  sub_AE38((v0 + 16));
  sub_22250();

  v57 = sub_22200();

  return v58(v57);
}

uint64_t sub_1ED08()
{
  sub_7F1C();
  v1 = sub_73720();
  v0[5] = v1;
  sub_7E94(v1);
  v0[6] = v2;
  v4 = *(v3 + 64);
  v0[7] = sub_7ED4();
  v5 = sub_221BC();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1EDA8()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  sub_736E0();
  sub_7EEC();
  v4 = *(v2 + 16);
  v5 = sub_221F0();
  v6(v5);
  v7 = sub_73710();
  v8 = sub_73980();
  if (sub_22238(v8))
  {
    *sub_22324() = 0;
    sub_222A4(&dword_0, v9, v10, "We are trying to confirm, but we don't support that.");
    sub_7EBC();
  }

  v12 = v0[6];
  v11 = v0[7];
  v13 = v0[5];

  v14 = *(v12 + 8);
  v15 = sub_221CC();
  v16(v15);
  v17 = sub_72090();
  sub_22274(v17);
  v18 = sub_72080();
  sub_22068(&qword_A4FD0, 255, &type metadata accessor for CommandFailure);
  swift_allocError();
  *v19 = v18;
  swift_willThrow();

  sub_7EA4();

  return v20();
}

void sub_1EF40()
{
  sub_11784();
  v62 = v0;
  v2 = v1;
  v3 = sub_73720();
  v4 = sub_5394(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v4);
  v60 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v56 - v11;
  v13 = sub_72830();
  v14 = sub_5394(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14);
  sub_C2A4();
  v21 = v20 - v19;
  v64 = v2;
  sub_727E0();
  v63 = v13;
  v61 = sub_737A0();
  v23 = v22;
  v24 = sub_736E0();
  sub_7EEC();
  v58 = *(v6 + 16);
  v59 = v24;
  sub_2222C();
  v25();

  v26 = sub_73710();
  LOBYTE(v13) = sub_73970();

  if (os_log_type_enabled(v26, v13))
  {
    v27 = sub_221D8();
    v57 = v3;
    v28 = v27;
    v29 = sub_14F88();
    v56 = v6;
    v30 = v29;
    v66 = v29;
    *v28 = 136315138;
    v31 = sub_19144(v61, v23, &v66);

    *(v28 + 4) = v31;
    sub_22304(&dword_0, v32, v33, "Got disambiguation parse %s");
    sub_AE38(v30);
    v6 = v56;
    sub_7EBC();
    v3 = v57;
    sub_7EBC();
  }

  else
  {
  }

  v34 = *(v6 + 8);
  v34(v12, v3);
  sub_727E0();
  sub_DDA8();
  v36 = v35;
  (*(v16 + 8))(v21, v63);
  if (v36)
  {
    if (qword_A38C8 != -1)
    {
      sub_2219C();
    }

    v37 = *(v62 + 16);
    v38 = *(v62 + 24);

    v39 = sub_221CC();
    sub_5263C(v39, v40, v36, 3);

    sub_725B0();
    sub_725A0();
  }

  else
  {
    v41 = v34;
    sub_727E0();
    v42 = sub_737A0();
    v44 = v43;
    sub_7EEC();
    v45 = v60;
    sub_2222C();
    v58();
    v46 = sub_73710();
    v47 = sub_73980();
    if (sub_22238(v47))
    {
      v48 = v3;
      v49 = sub_221D8();
      v50 = sub_14F88();
      v65 = v50;
      *v49 = 136315138;
      v51 = sub_19144(v42, v44, &v65);

      *(v49 + 4) = v51;
      sub_22304(&dword_0, v52, v53, "Failed to find app after successful disambiguation from %s");
      sub_AE38(v50);
      sub_7EBC();
      sub_7EBC();

      v54 = v45;
      v55 = v48;
    }

    else
    {

      v54 = v45;
      v55 = v3;
    }

    v41(v54, v55);
    sub_725B0();
    sub_72590();
  }

  sub_11754();
}

uint64_t sub_1F37C()
{
  sub_7F1C();
  v1[34] = v2;
  v1[35] = v0;
  v1[33] = v3;
  v4 = sub_506C(&qword_A4050, &unk_75290);
  sub_B1C0(v4);
  v6 = *(v5 + 64);
  v1[36] = sub_7ED4();
  v7 = sub_72B80();
  v1[37] = v7;
  sub_7E94(v7);
  v1[38] = v8;
  v10 = *(v9 + 64);
  v1[39] = sub_2228C();
  v1[40] = swift_task_alloc();
  v11 = sub_72BB0();
  v1[41] = v11;
  sub_7E94(v11);
  v1[42] = v12;
  v14 = *(v13 + 64);
  v1[43] = sub_2228C();
  v1[44] = swift_task_alloc();
  v15 = sub_729C0();
  sub_B1C0(v15);
  v17 = *(v16 + 64);
  v1[45] = sub_7ED4();
  v18 = sub_72B20();
  v1[46] = v18;
  sub_7E94(v18);
  v1[47] = v19;
  v21 = *(v20 + 64);
  v1[48] = sub_2228C();
  v1[49] = swift_task_alloc();
  v22 = sub_72AB0();
  v1[50] = v22;
  sub_7E94(v22);
  v1[51] = v23;
  v25 = *(v24 + 64);
  v1[52] = sub_7ED4();
  v26 = sub_506C(&qword_A4FB8, &qword_765F8);
  sub_B1C0(v26);
  v28 = *(v27 + 64);
  v1[53] = sub_7ED4();
  v29 = sub_72040();
  v1[54] = v29;
  sub_7E94(v29);
  v1[55] = v30;
  v32 = *(v31 + 64);
  v1[56] = sub_7ED4();
  v33 = sub_71FA0();
  v1[57] = v33;
  sub_7E94(v33);
  v1[58] = v34;
  v36 = *(v35 + 64);
  v1[59] = sub_7ED4();
  v37 = sub_72670();
  v1[60] = v37;
  sub_7E94(v37);
  v1[61] = v38;
  v40 = *(v39 + 64);
  v1[62] = sub_7ED4();
  v41 = sub_71560();
  v1[63] = v41;
  sub_7E94(v41);
  v1[64] = v42;
  v44 = *(v43 + 64);
  v1[65] = sub_7ED4();
  v45 = sub_721F0();
  v1[66] = v45;
  sub_7E94(v45);
  v1[67] = v46;
  v48 = *(v47 + 64);
  v1[68] = sub_7ED4();
  v49 = sub_71F70();
  sub_B1C0(v49);
  v51 = *(v50 + 64);
  v1[69] = sub_7ED4();
  v52 = sub_72580();
  v1[70] = v52;
  sub_7E94(v52);
  v1[71] = v53;
  v55 = *(v54 + 64);
  v1[72] = sub_7ED4();
  v56 = sub_73720();
  v1[73] = v56;
  sub_7E94(v56);
  v1[74] = v57;
  v59 = *(v58 + 64);
  v1[75] = sub_2228C();
  v1[76] = swift_task_alloc();
  v60 = sub_221BC();

  return _swift_task_switch(v60, v61, v62);
}

uint64_t sub_1F7E4()
{
  v42 = v0;
  v1 = *(v0 + 608);
  v2 = *(v0 + 592);
  v3 = *(v0 + 584);
  v4 = *(v0 + 272);
  v5 = sub_736E0();
  *(v0 + 616) = v5;
  sub_7EEC();
  v6 = *(v2 + 16);
  *(v0 + 624) = v6;
  *(v0 + 632) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v3);

  v7 = sub_73710();
  LOBYTE(v5) = sub_73970();

  v8 = os_log_type_enabled(v7, v5);
  v9 = *(v0 + 608);
  v10 = *(v0 + 592);
  v11 = *(v0 + 584);
  if (v8)
  {
    v12 = *(v0 + 272);
    v13 = sub_221D8();
    v14 = sub_14F88();
    v41[0] = v14;
    *v13 = 136315138;
    sub_733D0();
    v15 = sub_73880();
    v17 = sub_19144(v15, v16, v41);

    *(v13 + 4) = v17;
    sub_222E4(&dword_0, v18, v19, "Making disambiguation prompt for apps: %s");
    sub_AE38(v14);
    sub_22180();
    sub_7EBC();
  }

  v20 = *(v10 + 8);
  v21 = sub_221CC();
  v20(v21);
  *(v0 + 640) = v20;
  v22 = sub_114FC(*(v0 + 272));
  *(v0 + 648) = v22;
  if (!v22)
  {
LABEL_12:
    *(v0 + 656) = _swiftEmptyArrayStorage;
    v35 = *sub_7C78((*(v0 + 280) + 272), *(*(v0 + 280) + 296));
    *(v0 + 712) = 1;
    *(v0 + 720) = 1;
    *(v0 + 728) = 1;
    *(v0 + 736) = 1;
    *(v0 + 16) = 0;
    *(v0 + 24) = 1;
    *(v0 + 25) = 65792;
    *(v0 + 32) = _swiftEmptyArrayStorage;
    *(v0 + 40) = 0;
    *(v0 + 48) = *(v0 + 720);
    *(v0 + 56) = 0;
    *(v0 + 64) = *(v0 + 728);
    *(v0 + 72) = 0;
    *(v0 + 80) = *(v0 + 736);
    *(v0 + 664) = sub_45B44();
    v36 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
    v37 = swift_task_alloc();
    *(v0 + 672) = v37;
    *v37 = v0;
    v37[1] = sub_1FB6C;
    sub_22210();

    __asm { BR              X3 }
  }

  v23 = v22;
  result = sub_73BE0();
  if ((v23 & 0x8000000000000000) == 0)
  {
    v25 = 0;
    v26 = *(v0 + 272);
    v27 = v26 & 0xC000000000000001;
    v28 = v26 & 0xFFFFFFFFFFFFFF8;
    v29 = v26 + 32;
    while (1)
    {
      v30 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v27)
      {
        v31 = *(v0 + 272);
        v32 = sub_73B70();
      }

      else
      {
        if (v25 >= *(v28 + 16))
        {
          goto LABEL_16;
        }

        v32 = *(v29 + 8 * v25);
      }

      v33 = *(v0 + 280);
      v41[0] = v32;
      sub_20A04(v41, v33, &v40);

      sub_73BB0();
      v34 = _swiftEmptyArrayStorage[2];
      sub_73BF0();
      sub_73C00();
      result = sub_73BC0();
      ++v25;
      if (v30 == v23)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1FB6C()
{
  sub_7F1C();
  sub_B0BC();
  v3 = v2;
  v4 = v2[84];
  v9 = *v1;
  v3[85] = v5;
  v3[86] = v0;

  if (v0)
  {
    v6 = sub_2043C;
  }

  else
  {
    v7 = v3[83];

    v6 = sub_1FC84;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1FC84()
{
  v127 = v0;
  v1 = v0[82];
  v2 = v0[72];
  v3 = v0[69];
  v4 = v0[68];
  v5 = v0[65];
  v6 = v0[63];
  v7 = v0[64];
  v8 = v0[62];
  v9 = v0[34];

  sub_71F50();
  sub_72530();
  sub_721E0();
  sub_72840();
  v10 = v0[15];
  sub_7C78(v0 + 11, v0[14]);
  sub_71E90();
  sub_37490(v9, v5);
  v12 = v11;
  v13 = *(v7 + 8);
  v14 = sub_DD2C();
  v15(v14);
  sub_AE38(v0 + 11);
  sub_72650();
  v16 = *(v12 + 16);
  v109 = v12;
  if (v16)
  {
    v17 = v0[58];
    v117 = *(v17 + 16);
    v18 = v12 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v111 = v0[55];
    v113 = *(v17 + 72);
    v19 = (v17 + 8);
    v20 = (v111 + 32);
    v21 = &_swiftEmptyArrayStorage;
    do
    {
      v22 = v0[59];
      v23 = v0[57];
      v25 = v0[53];
      v24 = v0[54];
      v26 = sub_221F0();
      v117(v26);
      sub_71F90();
      v27 = *v19;
      v28 = sub_7F34();
      v29(v28);
      if (sub_5124(v25, 1, v24) == 1)
      {
        sub_AEF4(v0[53], &qword_A4FB8, &qword_765F8);
      }

      else
      {
        v30 = *v20;
        (*v20)(v0[56], v0[53], v0[54]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = *(v21 + 2);
          sub_FED0();
          v21 = v35;
        }

        v31 = *(v21 + 2);
        if (v31 >= *(v21 + 3) >> 1)
        {
          sub_FED0();
          v21 = v36;
        }

        v32 = v0[56];
        v33 = v0[54];
        *(v21 + 2) = v31 + 1;
        v30(&v21[((*(v111 + 80) + 32) & ~*(v111 + 80)) + *(v111 + 72) * v31], v32, v33);
      }

      v18 += v113;
      --v16;
    }

    while (v16);
  }

  v37 = v0[81];
  v39 = v0[61];
  v38 = v0[62];
  v40 = v0[60];
  v41 = sub_72660();

  v42 = *(v39 + 8);
  v43 = sub_7F34();
  v44(v43);
  v108 = v41;
  if (v37)
  {
    v45 = v0[81];
    v126[0] = &_swiftEmptyArrayStorage;
    sub_40260();
    if (v45 < 0)
    {
      __break(1u);
      return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v46, v47, v48, v49, v50);
    }

    v51 = 0;
    v52 = v0[51];
    v53 = v0[47];
    v54 = v0[34];
    v55 = v126[0];
    v118 = (v53 + 16);
    v122 = v54 & 0xC000000000000001;
    v114 = (v53 + 8);
    v110 = v54 + 32;
    do
    {
      if (v122)
      {
        v56 = v0[34];
        sub_73B70();
      }

      else
      {
        v57 = *(v110 + 8 * v51);
      }

      v58 = v0[52];
      v60 = v0[48];
      v59 = v0[49];
      v61 = v0[45];
      v62 = v0[46];
      sub_72B10();
      sub_20C70();
      sub_72B00();
      sub_72AA0();
      (*v118)(v60, v59, v62);
      sub_72A80();

      (*v114)(v59, v62);
      v126[0] = v55;
      v63 = *(v55 + 16);
      if (v63 >= *(v55 + 24) >> 1)
      {
        sub_40260();
        v55 = v126[0];
      }

      v64 = v0[81];
      v65 = v0[52];
      v66 = v0[50];
      ++v51;
      *(v55 + 16) = v63 + 1;
      (*(v52 + 32))(v55 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v63, v65, v66);
    }

    while (v51 != v64);
  }

  v119 = v0[78];
  v123 = v0[79];
  v67 = v0[77];
  v68 = v0[75];
  v69 = v0[68];
  v71 = v0[43];
  v70 = v0[44];
  v72 = v0[42];
  v112 = v0[41];
  v115 = v0[73];
  v73 = v0[40];
  v126[1] = 0xE000000000000000;
  sub_32DAC(0);
  sub_72190();
  v126[0] = v109;
  sub_3844C(v108);
  sub_72150();
  sub_721C0();
  sub_72BA0();
  sub_72B90();
  sub_72B70();
  (*(v72 + 16))(v71, v70, v112);
  sub_72B30();
  sub_7EEC();
  v74 = sub_DD2C();
  v119(v74);
  v75 = sub_73710();
  v76 = sub_73970();
  v77 = sub_22238(v76);
  v78 = v0[80];
  v79 = v0[74];
  v80 = v0[73];
  if (v77)
  {
    v82 = v0[39];
    v81 = v0[40];
    v124 = v0[80];
    v84 = v0[37];
    v83 = v0[38];
    v120 = v0[75];
    v85 = sub_221D8();
    v116 = v80;
    v86 = sub_14F88();
    v126[0] = v86;
    *v85 = 136315138;
    sub_7EEC();
    (*(v83 + 16))(v82, v81, v84);
    v87 = sub_737A0();
    v89 = sub_19144(v87, v88, v126);

    *(v85 + 4) = v89;
    sub_222E4(&dword_0, v90, v91, "#WorkoutAppResolutionStrategyAsync sending disambiguation system dialog acts: %s");
    sub_AE38(v86);
    sub_7EBC();
    sub_7EBC();

    v124(v120, v116);
  }

  else
  {

    v92 = sub_DD2C();
    v78(v92);
  }

  v93 = v0[68];
  v94 = v0[67];
  v95 = v0[66];
  v96 = v0[40];
  v97 = v0[37];
  v98 = v0[38];
  v99 = v0[36];
  v121 = v0[72];
  v125 = v0[35];
  sub_506C(&qword_A4FC0, &qword_76600);
  v100 = *(v98 + 72);
  v101 = (*(v98 + 80) + 32) & ~*(v98 + 80);
  v102 = swift_allocObject();
  *(v102 + 16) = xmmword_74B40;
  sub_7EEC();
  (*(v98 + 16))(v102 + v101, v96, v97);
  sub_72160();
  (*(v94 + 16))(v99, v93, v95);
  sub_7CC4(v99, 0, 1, v95);
  sub_72550();
  sub_72570();
  sub_21FC0(v125 + 312, (v0 + 16));
  v103 = v0[19];
  v104 = v0[20];
  sub_7C78(v0 + 16, v103);
  v105 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)[1];
  v106 = swift_task_alloc();
  v0[87] = v106;
  *v106 = v0;
  v106[1] = sub_20560;
  v47 = v0[85];
  v48 = v0[72];
  v46 = v0[33];
  v49 = v103;
  v50 = v104;

  return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v46, v47, v48, v49, v50);
}

uint64_t sub_2043C()
{
  v1 = v0[83];
  v2 = v0[82];

  v3 = v0[86];
  sub_2211C();

  sub_7EA4();

  return v4();
}

uint64_t sub_20560()
{
  sub_7F1C();
  sub_B0BC();
  v3 = *(v2 + 696);
  v4 = *v1;
  sub_B044();
  *v5 = v4;
  *(v6 + 704) = v0;

  if (v0)
  {
    v7 = sub_2085C;
  }

  else
  {
    v7 = sub_20664;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_20664()
{
  v18 = *(v0 + 608);
  v19 = *(v0 + 600);
  v1 = *(v0 + 568);
  v16 = *(v0 + 560);
  v17 = *(v0 + 576);
  v2 = *(v0 + 544);
  v3 = *(v0 + 536);
  v4 = *(v0 + 528);
  v20 = *(v0 + 552);
  v21 = *(v0 + 520);
  v22 = *(v0 + 496);
  v23 = *(v0 + 472);
  v24 = *(v0 + 448);
  v25 = *(v0 + 424);
  v26 = *(v0 + 416);
  v27 = *(v0 + 392);
  v28 = *(v0 + 384);
  v5 = *(v0 + 352);
  v6 = *(v0 + 336);
  v29 = *(v0 + 360);
  v30 = *(v0 + 344);
  v7 = *(v0 + 328);
  v15 = *(v0 + 320);
  v8 = *(v0 + 304);
  v9 = *(v0 + 296);
  v31 = *(v0 + 312);
  v32 = *(v0 + 288);

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  (*(v1 + 8))(v17, v16);
  sub_AE38((v0 + 128));
  v10 = *(v8 + 8);
  v11 = sub_5388();
  v12(v11);

  sub_7EA4();

  return v13();
}

uint64_t sub_2085C()
{
  v1 = *(v0 + 568);
  v2 = *(v0 + 560);
  v3 = *(v0 + 544);
  v4 = *(v0 + 536);
  v5 = *(v0 + 528);
  v6 = *(v0 + 352);
  v7 = *(v0 + 328);
  v8 = *(v0 + 336);
  v18 = *(v0 + 320);
  v9 = *(v0 + 304);
  v16 = *(v0 + 576);
  v17 = *(v0 + 296);

  v10 = *(v8 + 8);
  v11 = sub_DD2C();
  v12(v11);
  (*(v4 + 8))(v3, v5);
  (*(v1 + 8))(v16, v2);
  sub_AE38((v0 + 128));
  (*(v9 + 8))(v18, v17);
  v13 = *(v0 + 704);
  sub_2211C();

  sub_7EA4();

  return v14();
}

uint64_t sub_20A04@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_506C(&qword_A3F98, qword_75450);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v32 - v8;
  v10 = *a1;
  v11 = sub_733B0();
  v13 = v12;
  sub_21FC0(a2 + 32, v33);
  v14 = v34;
  v15 = v35;
  sub_7C78(v33, v34);
  (*(v15 + 8))(v32, v14, v15);
  sub_319FC(v32, v11, v13);
  v17 = v16;

  sub_AE38(v32);
  sub_AE38(v33);
  if (v17)
  {
    sub_737F0();

    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  v19 = sub_73350();
  sub_7CC4(v9, v18, 1, v19);
  sub_733B0();
  sub_732E0();
  v20 = sub_732D0();
  v21 = type metadata accessor for WorkoutApp.Builder(0);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  sub_7CC4(v24 + OBJC_IVAR____TtCC24HealthFlowDelegatePlugin10WorkoutApp7Builder_aceCommand, 1, 1, v19);
  v25 = sub_347BC(v20);

  v26 = OBJC_IVAR____TtCC24HealthFlowDelegatePlugin10WorkoutApp7Builder_aceCommand;
  swift_beginAccess();
  sub_AFA4(v9, v25 + v26);
  swift_endAccess();
  v27 = type metadata accessor for WorkoutApp(0);
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  v30 = sub_3488C(v25);

  result = sub_AEF4(v9, &qword_A3F98, qword_75450);
  *a3 = v30;
  return result;
}

void sub_20C70()
{
  sub_11784();
  v0 = sub_71560();
  v1 = sub_5394(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_C2A4();
  v8 = v7 - v6;
  v9 = sub_73070();
  sub_22274(v9);
  sub_73060();
  sub_72840();
  sub_7C78(v11, v11[3]);
  sub_71E90();
  sub_20DD8();
  (*(v3 + 8))(v8, v0);
  sub_AE38(v11);
  sub_72F00();

  v10 = sub_73100();
  sub_22274(v10);
  sub_730F0();
  sub_73050();
  sub_20F84();

  sub_11754();
}

uint64_t sub_20DD8()
{
  v0 = sub_72CD0();
  v1 = sub_5394(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_C2A4();
  v6 = sub_72F50();
  sub_22274(v6);
  v7 = sub_72F40();
  v8 = sub_723E0();
  sub_22274(v8);

  sub_723D0();
  sub_723C0();
  v10 = v9;

  if (v10)
  {
    sub_72F30();
  }

  sub_733B0();
  if (v11)
  {
    if (sub_72F20())
    {
      sub_72CC0();
      sub_72CA0();

      v12 = *(v3 + 8);
      v13 = sub_5388();
      v14(v13);
    }

    else
    {
    }
  }

  return v7;
}

void sub_20F84()
{
  sub_11784();
  v1 = sub_73720();
  v2 = sub_5394(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  sub_C2A4();
  v5 = sub_506C(&qword_A4FB0, &qword_765F0);
  v6 = sub_B1C0(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - v9;
  sub_506C(&unk_A63F0, &unk_760C0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_752C0;
  *(v11 + 32) = v0;

  sub_72DD0();
  v12 = sub_72DE0();
  sub_7CC4(v10, 0, 1, v12);
  sub_72DA0();

  sub_AEF4(v10, &qword_A4FB0, &qword_765F0);
  sub_72C10();

  sub_11754();
}

void *sub_21270()
{
  v1 = v0[3];

  sub_AE38(v0 + 4);
  sub_220B0((v0 + 9));
  sub_AE38(v0 + 39);
  return v0;
}

uint64_t sub_212A8()
{
  sub_21270();

  return _swift_deallocClassInstance(v0, 352, 7);
}

uint64_t sub_21300()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21398;

  return sub_1DFB4();
}

uint64_t sub_21398()
{
  sub_7F1C();
  sub_B0BC();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_B044();
  *v4 = v3;

  v5 = sub_22200();

  return v6(v5);
}

uint64_t sub_2147C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to AppResolutionOnDeviceFlowStrategyAsync.makeAppResolutionSuccessfulResponse(app:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_B014;

  return AppResolutionOnDeviceFlowStrategyAsync.makeAppResolutionSuccessfulResponse(app:)(a1, a2, a3, a4);
}

uint64_t sub_21540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to AppResolutionOnDeviceFlowStrategyAsync.makeAppResolutionUnsuccessfulResponse(reason:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_B014;

  return AppResolutionOnDeviceFlowStrategyAsync.makeAppResolutionUnsuccessfulResponse(reason:)(a1, a2, a3, a4);
}

uint64_t sub_21604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to AppResolutionOnDeviceFlowStrategyAsync.makeErrorResponse(error:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_B014;

  return AppResolutionOnDeviceFlowStrategyAsync.makeErrorResponse(error:)(a1, a2, a3, a4);
}

uint64_t sub_216E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_B014;

  return sub_1ED08();
}

uint64_t sub_2176C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to AppConfirmationStrategyAsync.makeRepromptOnEmptyParse(app:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_B014;

  return AppConfirmationStrategyAsync.makeRepromptOnEmptyParse(app:)(a1, a2, a3, a4);
}

uint64_t sub_21830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to AppConfirmationStrategyAsync.makeRepromptOnLowConfidence(app:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_B014;

  return AppConfirmationStrategyAsync.makeRepromptOnLowConfidence(app:)(a1, a2, a3, a4);
}

uint64_t sub_218F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to AppConfirmationStrategyAsync.makeConfirmationRejectedResponse(app:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_B014;

  return AppConfirmationStrategyAsync.makeConfirmationRejectedResponse(app:)(a1, a2, a3, a4);
}

uint64_t sub_219B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to AppConfirmationStrategyAsync.makeConfirmationCancelledResponse(app:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_B014;

  return AppConfirmationStrategyAsync.makeConfirmationCancelledResponse(app:)(a1, a2, a3, a4);
}

uint64_t sub_21A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = async function pointer to AppConfirmationStrategyAsync.makeConfirmationErrorResponse(error:app:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_ACC4;

  return AppConfirmationStrategyAsync.makeConfirmationErrorResponse(error:app:)(a1, a2, a3, a4, a5);
}

uint64_t sub_21B6C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_B014;

  return sub_1F37C();
}

uint64_t sub_21C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to AppDisambiguationStrategyAsync.makeRepromptOnEmptyParse(apps:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_B014;

  return AppDisambiguationStrategyAsync.makeRepromptOnEmptyParse(apps:)(a1, a2, a3, a4);
}

uint64_t sub_21CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to AppDisambiguationStrategyAsync.makeRepromptOnLowConfidence(apps:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_B014;

  return AppDisambiguationStrategyAsync.makeRepromptOnLowConfidence(apps:)(a1, a2, a3, a4);
}

uint64_t sub_21DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to AppDisambiguationStrategyAsync.makeDisambiguationCancelResponse(apps:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_B014;

  return AppDisambiguationStrategyAsync.makeDisambiguationCancelResponse(apps:)(a1, a2, a3, a4);
}

uint64_t sub_21E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = async function pointer to AppDisambiguationStrategyAsync.makeDisambiguationErrorResponse(error:apps:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_B014;

  return AppDisambiguationStrategyAsync.makeDisambiguationErrorResponse(error:apps:)(a1, a2, a3, a4, a5);
}

uint64_t sub_21FC0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_22024()
{
  result = qword_A4FC8;
  if (!qword_A4FC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_A4FC8);
  }

  return result;
}

uint64_t sub_22068(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_2211C()
{
  v2 = v0[76];
  v3 = v0[75];
  v4 = v0[72];
  v5 = v0[69];
  v6 = v0[68];
  v7 = v0[65];
  v8 = v0[62];
  v9 = v0[59];
  v10 = v0[56];
  v11 = v0[53];
  v13 = v0[52];
  v14 = v0[49];
  v15 = v0[48];
  v16 = v0[45];
  v17 = v0[44];
  v18 = v0[43];
  v19 = v0[40];
  v20 = v0[39];
  v21 = v0[36];
}

uint64_t sub_22180()
{
}

uint64_t sub_2219C()
{

  return swift_once();
}

uint64_t sub_221D8()
{

  return swift_slowAlloc();
}

BOOL sub_22238(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_22250()
{
  v3 = v0[48];
  v2 = v0[49];
  v5 = v0[46];
  v4 = v0[47];
  v7 = v0[44];
  v6 = v0[45];
  v8 = v0[41];
  v9 = v0[38];
}

uint64_t sub_22274(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t sub_2228C()
{

  return swift_task_alloc();
}

void sub_222A4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

void sub_222C4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void sub_222E4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void sub_22304(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0xCu);
}

uint64_t sub_22324()
{

  return swift_slowAlloc();
}

uint64_t sub_2233C(uint64_t a1)
{
  v2 = sub_73720();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v40 - v8;
  v10 = sub_B960(a1);
  v11 = v10;
  v12 = sub_736F0();
  v13 = (v3 + 16);
  if (v10 == 5)
  {
    swift_beginAccess();
    (*v13)(v7, v12, v2);
    v14 = sub_73710();
    v15 = sub_73980();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_0, v14, v15, "Couldn't find a verb for the workout request", v16, 2u);
    }

    (*(v3 + 8))(v7, v2);
    sub_367A4(v43);
    v17 = sub_72240();
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v20 = sub_72230();
    v43[33] = v17;
    v43[34] = &protocol witness table for ResponseFactory;
    v43[30] = v20;
    sub_23964();
    v21 = sub_71CF0();
    sub_239B8(v43);
  }

  else
  {
    swift_beginAccess();
    (*v13)(v9, v12, v2);
    v22 = sub_73710();
    v23 = sub_73970();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v43[0] = v41;
      *v24 = 136315138;
      v25 = sub_6C698(v10);
      v11 = v26;
      v27 = sub_19144(v25, v26, v43);

      *(v24 + 4) = v27;
      _os_log_impl(&dword_0, v22, v23, "Workout request type: %s", v24, 0xCu);
      sub_AE38(v41);
    }

    (*(v3 + 8))(v9, v2);
    switch(v11)
    {
      case 1:
        sub_22744(v42);
        sub_367A4(v43);
        v37 = sub_25CA8();
        v30 = sub_22B74(v37, v38);
        break;
      case 2:
        sub_22744(v42);
        sub_367A4(v43);
        v33 = sub_25CA8();
        v30 = sub_22EF0(v33, v34);
        break;
      case 3:
        sub_22744(v42);
        sub_367A4(v43);
        v35 = sub_25CA8();
        v30 = sub_2326C(v35, v36);
        break;
      case 4:
        sub_22744(v42);
        sub_367A4(v43);
        v31 = sub_25CA8();
        v30 = sub_235E8(v31, v32);
        break;
      default:
        sub_22744(v42);
        sub_367A4(v43);
        v28 = sub_25CA8();
        v30 = sub_227F8(v28, v29);
        break;
    }

    v21 = v30;
    sub_220B0(v43);
    sub_AE38(v42);
  }

  return v21;
}

uint64_t sub_22744@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = &type metadata for FlowConfigModel;
  a1[4] = &protocol witness table for FlowConfigModel;
  *a1 = swift_allocObject();
  return sub_73490();
}

uint64_t sub_227F8(uint64_t a1, uint64_t a2)
{
  v29 = sub_506C(&qword_A4FE0, &qword_76608);
  v4 = *(v29 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v29);
  v7 = &v29 - v6;
  v8 = sub_506C(qword_A4068, qword_752D0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v29 - v10;
  v12 = sub_506C(&qword_A4FE8, &qword_76610);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v29 - v18;
  v20 = sub_731F0();
  sub_7CC4(v11, 1, 1, v20);
  sub_254AC(a1, a2, 0, v11, v19);
  sub_AEF4(v11, qword_A4068, qword_752D0);
  v21 = v12;
  (*(v13 + 16))(v17, v19, v12);
  v22 = sub_506C(&qword_A4FF0, &qword_76618);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  sub_71C40();
  v30 = 0;

  sub_506C(&qword_A4FF8, &qword_76620);
  sub_D9A8(&qword_A5000, &qword_A4FF8, &qword_76620);
  sub_720D0();
  v25 = v29;
  v26 = sub_720C0();
  (*(v4 + 8))(v7, v25);
  v30 = v26;
  sub_506C(&qword_A5008, &qword_76628);
  sub_D9A8(&qword_A5010, &qword_A5008, &qword_76628);
  v27 = sub_71CF0();

  (*(v13 + 8))(v19, v21);
  return v27;
}

uint64_t sub_22B74(uint64_t a1, uint64_t a2)
{
  v29 = sub_506C(&qword_A5080, &qword_76660);
  v4 = *(v29 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v29);
  v7 = &v29 - v6;
  v8 = sub_506C(qword_A4068, qword_752D0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v29 - v10;
  v12 = sub_506C(&qword_A5088, &qword_76668);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v29 - v18;
  v20 = sub_731F0();
  sub_7CC4(v11, 1, 1, v20);
  sub_24E04(a1, a2, 0, v11, v19);
  sub_AEF4(v11, qword_A4068, qword_752D0);
  v21 = v12;
  (*(v13 + 16))(v17, v19, v12);
  v22 = sub_506C(&qword_A5090, &unk_76E40);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  sub_71C40();
  v30 = 0;

  sub_506C(&qword_A5098, &qword_76670);
  sub_D9A8(&qword_A50A0, &qword_A5098, &qword_76670);
  sub_720D0();
  v25 = v29;
  v26 = sub_720C0();
  (*(v4 + 8))(v7, v25);
  v30 = v26;
  sub_506C(&qword_A50A8, &qword_76678);
  sub_D9A8(&qword_A50B0, &qword_A50A8, &qword_76678);
  v27 = sub_71CF0();

  (*(v13 + 8))(v19, v21);
  return v27;
}

uint64_t sub_22EF0(uint64_t a1, uint64_t a2)
{
  v29 = sub_506C(&qword_A5118, &qword_766B0);
  v4 = *(v29 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v29);
  v7 = &v29 - v6;
  v8 = sub_506C(qword_A4068, qword_752D0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v29 - v10;
  v12 = sub_506C(&qword_A5120, &qword_766B8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v29 - v18;
  v20 = sub_731F0();
  sub_7CC4(v11, 1, 1, v20);
  sub_2475C(a1, a2, 0, v11, v19);
  sub_AEF4(v11, qword_A4068, qword_752D0);
  v21 = v12;
  (*(v13 + 16))(v17, v19, v12);
  v22 = sub_506C(&qword_A5128, &qword_766C0);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  sub_71C40();
  v30 = 0;

  sub_506C(&qword_A5130, &qword_766C8);
  sub_D9A8(&qword_A5138, &qword_A5130, &qword_766C8);
  sub_720D0();
  v25 = v29;
  v26 = sub_720C0();
  (*(v4 + 8))(v7, v25);
  v30 = v26;
  sub_506C(&qword_A5140, &qword_766D0);
  sub_D9A8(&qword_A5148, &qword_A5140, &qword_766D0);
  v27 = sub_71CF0();

  (*(v13 + 8))(v19, v21);
  return v27;
}

uint64_t sub_2326C(uint64_t a1, uint64_t a2)
{
  v29 = sub_506C(&qword_A51B0, &qword_76708);
  v4 = *(v29 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v29);
  v7 = &v29 - v6;
  v8 = sub_506C(qword_A4068, qword_752D0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v29 - v10;
  v12 = sub_506C(&qword_A51B8, &qword_76710);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v29 - v18;
  v20 = sub_731F0();
  sub_7CC4(v11, 1, 1, v20);
  sub_240B4(a1, a2, 0, v11, v19);
  sub_AEF4(v11, qword_A4068, qword_752D0);
  v21 = v12;
  (*(v13 + 16))(v17, v19, v12);
  v22 = sub_506C(&qword_A51C0, &qword_76718);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  sub_71C40();
  v30 = 0;

  sub_506C(&qword_A51C8, &qword_76720);
  sub_D9A8(&qword_A51D0, &qword_A51C8, &qword_76720);
  sub_720D0();
  v25 = v29;
  v26 = sub_720C0();
  (*(v4 + 8))(v7, v25);
  v30 = v26;
  sub_506C(&qword_A51D8, &qword_76728);
  sub_D9A8(&qword_A51E0, &qword_A51D8, &qword_76728);
  v27 = sub_71CF0();

  (*(v13 + 8))(v19, v21);
  return v27;
}

uint64_t sub_235E8(uint64_t a1, uint64_t a2)
{
  v29 = sub_506C(&qword_A5248, &qword_76760);
  v4 = *(v29 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v29);
  v7 = &v29 - v6;
  v8 = sub_506C(qword_A4068, qword_752D0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v29 - v10;
  v12 = sub_506C(&qword_A5250, &qword_76768);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v29 - v18;
  v20 = sub_731F0();
  sub_7CC4(v11, 1, 1, v20);
  sub_23A0C(a1, a2, 0, v11, v19);
  sub_AEF4(v11, qword_A4068, qword_752D0);
  v21 = v12;
  (*(v13 + 16))(v17, v19, v12);
  v22 = sub_506C(&qword_A5258, &unk_76E70);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  sub_71C40();
  v30 = 0;

  sub_506C(&qword_A5260, &qword_76770);
  sub_D9A8(&qword_A5268, &qword_A5260, &qword_76770);
  sub_720D0();
  v25 = v29;
  v26 = sub_720C0();
  (*(v4 + 8))(v7, v25);
  v30 = v26;
  sub_506C(&qword_A5270, &qword_76778);
  sub_D9A8(&qword_A5278, &qword_A5270, &qword_76778);
  v27 = sub_71CF0();

  (*(v13 + 8))(v19, v21);
  return v27;
}

unint64_t sub_23964()
{
  result = qword_A4FD8;
  if (!qword_A4FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A4FD8);
  }

  return result;
}

uint64_t sub_23A0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v49 = a4;
  v50 = a3;
  v42[1] = a5;
  v43 = a1;
  v47 = sub_506C(&qword_A5280, &qword_76780);
  v7 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47);
  v45 = v42 - v8;
  sub_ADF8(0, &qword_A3BA0, INResumeWorkoutIntent_ptr);
  v46 = sub_ADF8(0, &qword_A4390, INResumeWorkoutIntentResponse_ptr);
  sub_71C30();
  v9 = sub_73ED0();
  v11 = v10;
  sub_21FC0(a1, v62);
  sub_25B54(a2, v54);
  v12 = sub_72240();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = sub_72230();
  type metadata accessor for WorkoutAppResolutionStrategyAsync();
  v16 = swift_allocObject();
  v48 = v16;
  v58 = &protocol witness table for ResponseFactory;
  v57 = v12;
  *&v56 = v15;
  v16[2] = v9;
  v16[3] = v11;
  sub_D8D8(v62, (v16 + 4));
  memcpy(v16 + 9, v54, 0xF0uLL);
  sub_D8D8(&v56, (v16 + 39));
  v54[0] = v16;
  sub_25BB0();
  sub_71B10();
  sub_506C(&qword_A5250, &qword_76768);
  sub_71BE0();
  sub_25B54(a2, v62);
  v17 = *(v12 + 48);
  v18 = *(v12 + 52);
  swift_allocObject();
  v19 = sub_72230();
  v65 = v12;
  v66 = &protocol witness table for ResponseFactory;
  v64 = v19;
  v63 = v50;
  v44 = v50;
  sub_506C(&qword_A5288, &qword_76788);
  sub_D9A8(&qword_A5290, &qword_A5288, &qword_76788);
  sub_71AF0();
  sub_71BD0();
  v20 = a2;
  sub_25B54(a2, &v56);
  v21 = *(v12 + 48);
  v22 = *(v12 + 52);
  swift_allocObject();
  v23 = sub_72230();
  v61 = &protocol witness table for ResponseFactory;
  v60 = v12;
  v59 = v23;
  sub_506C(&qword_A5298, &qword_76790);
  sub_D9A8(&qword_A52A0, &qword_A5298, &qword_76790);
  sub_71AD0();
  sub_71BC0();
  sub_25B54(a2, v54);
  v24 = v43;
  sub_21FC0(v43, v55);
  v25 = *(v12 + 48);
  v26 = *(v12 + 52);
  swift_allocObject();
  v27 = sub_72230();
  v55[9] = &protocol witness table for ResponseFactory;
  v55[8] = v12;
  v55[5] = v27;
  sub_506C(&qword_A52A8, &qword_76798);
  sub_D9A8(&qword_A52B0, &qword_A52A8, &qword_76798);
  sub_71B60();
  sub_71C10();
  sub_25B54(a2, v53);
  v28 = *(v12 + 48);
  v29 = *(v12 + 52);
  swift_allocObject();
  v30 = sub_72230();
  v53[33] = v12;
  v53[34] = &protocol witness table for ResponseFactory;
  v53[30] = v30;
  sub_506C(&qword_A52B8, &qword_767A0);
  sub_D9A8(&qword_A52C0, &qword_A52B8, &qword_767A0);
  sub_71BA0();
  sub_71C00();
  v31 = v24;
  v32 = v45;
  sub_21FC0(v24, v45);
  sub_25B54(v20, v32 + 40);
  v33 = v47;
  sub_AE84(v49, v32 + *(v47 + 52));
  v34 = *(v12 + 48);
  v35 = *(v12 + 52);
  swift_allocObject();
  v36 = sub_72230();
  v37 = (v32 + *(v33 + 56));
  v37[3] = v12;
  v37[4] = &protocol witness table for ResponseFactory;
  *v37 = v36;
  *(v32 + 280) = v50;
  sub_D9A8(&qword_A52C8, &qword_A5280, &qword_76780);
  v38 = v44;
  sub_71B30();
  sub_71BF0();
  v39 = v31[3];
  v40 = v31[4];
  sub_7C78(v31, v39);
  (*(v40 + 8))(v51, v39, v40);
  v51[8] = &type metadata for LabelTemplatesProvider;
  v51[9] = &off_98C30;
  v52[3] = sub_71FF0();
  v52[4] = &off_9A408;
  sub_5BAC(v52);
  sub_71FE0();
  sub_506C(&qword_A52D0, &qword_767A8);
  sub_D9A8(qword_A52D8, &qword_A52D0, &qword_767A8);
  sub_71B80();
  sub_71C20();

  sub_AEF4(v51, &qword_A52D0, &qword_767A8);
  sub_AEF4(v32, &qword_A5280, &qword_76780);
  sub_AEF4(v53, &qword_A52B8, &qword_767A0);
  sub_AEF4(v54, &qword_A52A8, &qword_76798);
  sub_AEF4(&v56, &qword_A5298, &qword_76790);
  return sub_AEF4(v62, &qword_A5288, &qword_76788);
}

uint64_t sub_240B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v49 = a4;
  v50 = a3;
  v42[1] = a5;
  v43 = a1;
  v47 = sub_506C(&qword_A51E8, &qword_76730);
  v7 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47);
  v45 = v42 - v8;
  sub_ADF8(0, &qword_A4578, INCancelWorkoutIntent_ptr);
  v46 = sub_ADF8(0, &qword_A4580, INCancelWorkoutIntentResponse_ptr);
  sub_71C30();
  v9 = sub_73ED0();
  v11 = v10;
  sub_21FC0(a1, v62);
  sub_25B54(a2, v54);
  v12 = sub_72240();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = sub_72230();
  type metadata accessor for WorkoutAppResolutionStrategyAsync();
  v16 = swift_allocObject();
  v48 = v16;
  v58 = &protocol witness table for ResponseFactory;
  v57 = v12;
  *&v56 = v15;
  v16[2] = v9;
  v16[3] = v11;
  sub_D8D8(v62, (v16 + 4));
  memcpy(v16 + 9, v54, 0xF0uLL);
  sub_D8D8(&v56, (v16 + 39));
  v54[0] = v16;
  sub_25BB0();
  sub_71B10();
  sub_506C(&qword_A51B8, &qword_76710);
  sub_71BE0();
  sub_25B54(a2, v62);
  v17 = *(v12 + 48);
  v18 = *(v12 + 52);
  swift_allocObject();
  v19 = sub_72230();
  v65 = v12;
  v66 = &protocol witness table for ResponseFactory;
  v64 = v19;
  v63 = v50;
  v44 = v50;
  sub_506C(&qword_A51F0, &qword_76738);
  sub_D9A8(&qword_A51F8, &qword_A51F0, &qword_76738);
  sub_71AF0();
  sub_71BD0();
  v20 = a2;
  sub_25B54(a2, &v56);
  v21 = *(v12 + 48);
  v22 = *(v12 + 52);
  swift_allocObject();
  v23 = sub_72230();
  v61 = &protocol witness table for ResponseFactory;
  v60 = v12;
  v59 = v23;
  sub_506C(&qword_A5200, &qword_76740);
  sub_D9A8(&qword_A5208, &qword_A5200, &qword_76740);
  sub_71AD0();
  sub_71BC0();
  sub_25B54(a2, v54);
  v24 = v43;
  sub_21FC0(v43, v55);
  v25 = *(v12 + 48);
  v26 = *(v12 + 52);
  swift_allocObject();
  v27 = sub_72230();
  v55[9] = &protocol witness table for ResponseFactory;
  v55[8] = v12;
  v55[5] = v27;
  sub_506C(&qword_A5210, &qword_76748);
  sub_D9A8(&qword_A5218, &qword_A5210, &qword_76748);
  sub_71B60();
  sub_71C10();
  sub_25B54(a2, v53);
  v28 = *(v12 + 48);
  v29 = *(v12 + 52);
  swift_allocObject();
  v30 = sub_72230();
  v53[33] = v12;
  v53[34] = &protocol witness table for ResponseFactory;
  v53[30] = v30;
  sub_506C(&qword_A5220, &qword_76750);
  sub_D9A8(&qword_A5228, &qword_A5220, &qword_76750);
  sub_71BA0();
  sub_71C00();
  v31 = v24;
  v32 = v45;
  sub_21FC0(v24, v45);
  sub_25B54(v20, v32 + 40);
  v33 = v47;
  sub_AE84(v49, v32 + *(v47 + 52));
  v34 = *(v12 + 48);
  v35 = *(v12 + 52);
  swift_allocObject();
  v36 = sub_72230();
  v37 = (v32 + *(v33 + 56));
  v37[3] = v12;
  v37[4] = &protocol witness table for ResponseFactory;
  *v37 = v36;
  *(v32 + 280) = v50;
  sub_D9A8(&qword_A5230, &qword_A51E8, &qword_76730);
  v38 = v44;
  sub_71B30();
  sub_71BF0();
  v39 = v31[3];
  v40 = v31[4];
  sub_7C78(v31, v39);
  (*(v40 + 8))(v51, v39, v40);
  v51[8] = &type metadata for LabelTemplatesProvider;
  v51[9] = &off_98C30;
  v52[3] = sub_71FF0();
  v52[4] = &off_9A408;
  sub_5BAC(v52);
  sub_71FE0();
  sub_506C(&qword_A5238, &qword_76758);
  sub_D9A8(&qword_A5240, &qword_A5238, &qword_76758);
  sub_71B80();
  sub_71C20();

  sub_AEF4(v51, &qword_A5238, &qword_76758);
  sub_AEF4(v32, &qword_A51E8, &qword_76730);
  sub_AEF4(v53, &qword_A5220, &qword_76750);
  sub_AEF4(v54, &qword_A5210, &qword_76748);
  sub_AEF4(&v56, &qword_A5200, &qword_76740);
  return sub_AEF4(v62, &qword_A51F0, &qword_76738);
}

uint64_t sub_2475C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v49 = a4;
  v50 = a3;
  v42[1] = a5;
  v43 = a1;
  v47 = sub_506C(&qword_A5150, &qword_766D8);
  v7 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47);
  v45 = v42 - v8;
  sub_ADF8(0, &qword_A4498, INPauseWorkoutIntent_ptr);
  v46 = sub_ADF8(0, &qword_A44A0, INPauseWorkoutIntentResponse_ptr);
  sub_71C30();
  v9 = sub_73ED0();
  v11 = v10;
  sub_21FC0(a1, v62);
  sub_25B54(a2, v54);
  v12 = sub_72240();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = sub_72230();
  type metadata accessor for WorkoutAppResolutionStrategyAsync();
  v16 = swift_allocObject();
  v48 = v16;
  v58 = &protocol witness table for ResponseFactory;
  v57 = v12;
  *&v56 = v15;
  v16[2] = v9;
  v16[3] = v11;
  sub_D8D8(v62, (v16 + 4));
  memcpy(v16 + 9, v54, 0xF0uLL);
  sub_D8D8(&v56, (v16 + 39));
  v54[0] = v16;
  sub_25BB0();
  sub_71B10();
  sub_506C(&qword_A5120, &qword_766B8);
  sub_71BE0();
  sub_25B54(a2, v62);
  v17 = *(v12 + 48);
  v18 = *(v12 + 52);
  swift_allocObject();
  v19 = sub_72230();
  v65 = v12;
  v66 = &protocol witness table for ResponseFactory;
  v64 = v19;
  v63 = v50;
  v44 = v50;
  sub_506C(&qword_A5158, &qword_766E0);
  sub_D9A8(&qword_A5160, &qword_A5158, &qword_766E0);
  sub_71AF0();
  sub_71BD0();
  v20 = a2;
  sub_25B54(a2, &v56);
  v21 = *(v12 + 48);
  v22 = *(v12 + 52);
  swift_allocObject();
  v23 = sub_72230();
  v61 = &protocol witness table for ResponseFactory;
  v60 = v12;
  v59 = v23;
  sub_506C(&qword_A5168, &qword_766E8);
  sub_D9A8(&qword_A5170, &qword_A5168, &qword_766E8);
  sub_71AD0();
  sub_71BC0();
  sub_25B54(a2, v54);
  v24 = v43;
  sub_21FC0(v43, v55);
  v25 = *(v12 + 48);
  v26 = *(v12 + 52);
  swift_allocObject();
  v27 = sub_72230();
  v55[9] = &protocol witness table for ResponseFactory;
  v55[8] = v12;
  v55[5] = v27;
  sub_506C(&qword_A5178, &qword_766F0);
  sub_D9A8(&qword_A5180, &qword_A5178, &qword_766F0);
  sub_71B60();
  sub_71C10();
  sub_25B54(a2, v53);
  v28 = *(v12 + 48);
  v29 = *(v12 + 52);
  swift_allocObject();
  v30 = sub_72230();
  v53[33] = v12;
  v53[34] = &protocol witness table for ResponseFactory;
  v53[30] = v30;
  sub_506C(&qword_A5188, &qword_766F8);
  sub_D9A8(&qword_A5190, &qword_A5188, &qword_766F8);
  sub_71BA0();
  sub_71C00();
  v31 = v24;
  v32 = v45;
  sub_21FC0(v24, v45);
  sub_25B54(v20, v32 + 40);
  v33 = v47;
  sub_AE84(v49, v32 + *(v47 + 52));
  v34 = *(v12 + 48);
  v35 = *(v12 + 52);
  swift_allocObject();
  v36 = sub_72230();
  v37 = (v32 + *(v33 + 56));
  v37[3] = v12;
  v37[4] = &protocol witness table for ResponseFactory;
  *v37 = v36;
  *(v32 + 280) = v50;
  sub_D9A8(&qword_A5198, &qword_A5150, &qword_766D8);
  v38 = v44;
  sub_71B30();
  sub_71BF0();
  v39 = v31[3];
  v40 = v31[4];
  sub_7C78(v31, v39);
  (*(v40 + 8))(v51, v39, v40);
  v51[8] = &type metadata for LabelTemplatesProvider;
  v51[9] = &off_98C30;
  v52[3] = sub_71FF0();
  v52[4] = &off_9A408;
  sub_5BAC(v52);
  sub_71FE0();
  sub_506C(&qword_A51A0, &qword_76700);
  sub_D9A8(&qword_A51A8, &qword_A51A0, &qword_76700);
  sub_71B80();
  sub_71C20();

  sub_AEF4(v51, &qword_A51A0, &qword_76700);
  sub_AEF4(v32, &qword_A5150, &qword_766D8);
  sub_AEF4(v53, &qword_A5188, &qword_766F8);
  sub_AEF4(v54, &qword_A5178, &qword_766F0);
  sub_AEF4(&v56, &qword_A5168, &qword_766E8);
  return sub_AEF4(v62, &qword_A5158, &qword_766E0);
}

uint64_t sub_24E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v49 = a4;
  v50 = a3;
  v42[1] = a5;
  v43 = a1;
  v47 = sub_506C(&qword_A50B8, &qword_76680);
  v7 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47);
  v45 = v42 - v8;
  sub_ADF8(0, &qword_A4418, INEndWorkoutIntent_ptr);
  v46 = sub_ADF8(0, &qword_A4420, INEndWorkoutIntentResponse_ptr);
  sub_71C30();
  v9 = sub_73ED0();
  v11 = v10;
  sub_21FC0(a1, v62);
  sub_25B54(a2, v54);
  v12 = sub_72240();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = sub_72230();
  type metadata accessor for WorkoutAppResolutionStrategyAsync();
  v16 = swift_allocObject();
  v48 = v16;
  v58 = &protocol witness table for ResponseFactory;
  v57 = v12;
  *&v56 = v15;
  v16[2] = v9;
  v16[3] = v11;
  sub_D8D8(v62, (v16 + 4));
  memcpy(v16 + 9, v54, 0xF0uLL);
  sub_D8D8(&v56, (v16 + 39));
  v54[0] = v16;
  sub_25BB0();
  sub_71B10();
  sub_506C(&qword_A5088, &qword_76668);
  sub_71BE0();
  sub_25B54(a2, v62);
  v17 = *(v12 + 48);
  v18 = *(v12 + 52);
  swift_allocObject();
  v19 = sub_72230();
  v65 = v12;
  v66 = &protocol witness table for ResponseFactory;
  v64 = v19;
  v63 = v50;
  v44 = v50;
  sub_506C(&qword_A50C0, &qword_76688);
  sub_D9A8(&qword_A50C8, &qword_A50C0, &qword_76688);
  sub_71AF0();
  sub_71BD0();
  v20 = a2;
  sub_25B54(a2, &v56);
  v21 = *(v12 + 48);
  v22 = *(v12 + 52);
  swift_allocObject();
  v23 = sub_72230();
  v61 = &protocol witness table for ResponseFactory;
  v60 = v12;
  v59 = v23;
  sub_506C(&qword_A50D0, &qword_76690);
  sub_D9A8(&qword_A50D8, &qword_A50D0, &qword_76690);
  sub_71AD0();
  sub_71BC0();
  sub_25B54(a2, v54);
  v24 = v43;
  sub_21FC0(v43, v55);
  v25 = *(v12 + 48);
  v26 = *(v12 + 52);
  swift_allocObject();
  v27 = sub_72230();
  v55[9] = &protocol witness table for ResponseFactory;
  v55[8] = v12;
  v55[5] = v27;
  sub_506C(&qword_A50E0, &qword_76698);
  sub_D9A8(&qword_A50E8, &qword_A50E0, &qword_76698);
  sub_71B60();
  sub_71C10();
  sub_25B54(a2, v53);
  v28 = *(v12 + 48);
  v29 = *(v12 + 52);
  swift_allocObject();
  v30 = sub_72230();
  v53[33] = v12;
  v53[34] = &protocol witness table for ResponseFactory;
  v53[30] = v30;
  sub_506C(&qword_A50F0, &qword_766A0);
  sub_D9A8(&qword_A50F8, &qword_A50F0, &qword_766A0);
  sub_71BA0();
  sub_71C00();
  v31 = v24;
  v32 = v45;
  sub_21FC0(v24, v45);
  sub_25B54(v20, v32 + 40);
  v33 = v47;
  sub_AE84(v49, v32 + *(v47 + 52));
  v34 = *(v12 + 48);
  v35 = *(v12 + 52);
  swift_allocObject();
  v36 = sub_72230();
  v37 = (v32 + *(v33 + 56));
  v37[3] = v12;
  v37[4] = &protocol witness table for ResponseFactory;
  *v37 = v36;
  *(v32 + 280) = v50;
  sub_D9A8(&qword_A5100, &qword_A50B8, &qword_76680);
  v38 = v44;
  sub_71B30();
  sub_71BF0();
  v39 = v31[3];
  v40 = v31[4];
  sub_7C78(v31, v39);
  (*(v40 + 8))(v51, v39, v40);
  v51[8] = &type metadata for LabelTemplatesProvider;
  v51[9] = &off_98C30;
  v52[3] = sub_71FF0();
  v52[4] = &off_9A408;
  sub_5BAC(v52);
  sub_71FE0();
  sub_506C(&qword_A5108, &qword_766A8);
  sub_D9A8(&qword_A5110, &qword_A5108, &qword_766A8);
  sub_71B80();
  sub_71C20();

  sub_AEF4(v51, &qword_A5108, &qword_766A8);
  sub_AEF4(v32, &qword_A50B8, &qword_76680);
  sub_AEF4(v53, &qword_A50F0, &qword_766A0);
  sub_AEF4(v54, &qword_A50E0, &qword_76698);
  sub_AEF4(&v56, &qword_A50D0, &qword_76690);
  return sub_AEF4(v62, &qword_A50C0, &qword_76688);
}

uint64_t sub_254AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v49 = a4;
  v50 = a3;
  v42[1] = a5;
  v43 = a1;
  v47 = sub_506C(&qword_A5018, &qword_76630);
  v7 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47);
  v45 = v42 - v8;
  sub_ADF8(0, &qword_A4518, INStartWorkoutIntent_ptr);
  v46 = sub_ADF8(0, &qword_A4520, INStartWorkoutIntentResponse_ptr);
  sub_71C30();
  v9 = sub_73ED0();
  v11 = v10;
  sub_21FC0(a1, v62);
  sub_25B54(a2, v54);
  v12 = sub_72240();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = sub_72230();
  type metadata accessor for WorkoutAppResolutionStrategyAsync();
  v16 = swift_allocObject();
  v48 = v16;
  v58 = &protocol witness table for ResponseFactory;
  v57 = v12;
  *&v56 = v15;
  v16[2] = v9;
  v16[3] = v11;
  sub_D8D8(v62, (v16 + 4));
  memcpy(v16 + 9, v54, 0xF0uLL);
  sub_D8D8(&v56, (v16 + 39));
  v54[0] = v16;
  sub_25BB0();
  sub_71B10();
  sub_506C(&qword_A4FE8, &qword_76610);
  sub_71BE0();
  sub_25B54(a2, v62);
  v17 = *(v12 + 48);
  v18 = *(v12 + 52);
  swift_allocObject();
  v19 = sub_72230();
  v65 = v12;
  v66 = &protocol witness table for ResponseFactory;
  v64 = v19;
  v63 = v50;
  v44 = v50;
  sub_506C(&qword_A5028, &qword_76638);
  sub_D9A8(&qword_A5030, &qword_A5028, &qword_76638);
  sub_71AF0();
  sub_71BD0();
  v20 = a2;
  sub_25B54(a2, &v56);
  v21 = *(v12 + 48);
  v22 = *(v12 + 52);
  swift_allocObject();
  v23 = sub_72230();
  v61 = &protocol witness table for ResponseFactory;
  v60 = v12;
  v59 = v23;
  sub_506C(&qword_A5038, &qword_76640);
  sub_D9A8(&qword_A5040, &qword_A5038, &qword_76640);
  sub_71AD0();
  sub_71BC0();
  sub_25B54(a2, v54);
  v24 = v43;
  sub_21FC0(v43, v55);
  v25 = *(v12 + 48);
  v26 = *(v12 + 52);
  swift_allocObject();
  v27 = sub_72230();
  v55[9] = &protocol witness table for ResponseFactory;
  v55[8] = v12;
  v55[5] = v27;
  sub_506C(&qword_A5048, &qword_76648);
  sub_D9A8(&qword_A5050, &qword_A5048, &qword_76648);
  sub_71B60();
  sub_71C10();
  sub_25B54(a2, v53);
  v28 = *(v12 + 48);
  v29 = *(v12 + 52);
  swift_allocObject();
  v30 = sub_72230();
  v53[33] = v12;
  v53[34] = &protocol witness table for ResponseFactory;
  v53[30] = v30;
  sub_506C(&qword_A5058, &qword_76650);
  sub_D9A8(&qword_A5060, &qword_A5058, &qword_76650);
  sub_71BA0();
  sub_71C00();
  v31 = v24;
  v32 = v45;
  sub_21FC0(v24, v45);
  sub_25B54(v20, v32 + 40);
  v33 = v47;
  sub_AE84(v49, v32 + *(v47 + 52));
  v34 = *(v12 + 48);
  v35 = *(v12 + 52);
  swift_allocObject();
  v36 = sub_72230();
  v37 = (v32 + *(v33 + 56));
  v37[3] = v12;
  v37[4] = &protocol witness table for ResponseFactory;
  *v37 = v36;
  *(v32 + 280) = v50;
  sub_D9A8(&qword_A5068, &qword_A5018, &qword_76630);
  v38 = v44;
  sub_71B30();
  sub_71BF0();
  v39 = v31[3];
  v40 = v31[4];
  sub_7C78(v31, v39);
  (*(v40 + 8))(v51, v39, v40);
  v51[8] = &type metadata for LabelTemplatesProvider;
  v51[9] = &off_98C30;
  v52[3] = sub_71FF0();
  v52[4] = &off_9A408;
  sub_5BAC(v52);
  sub_71FE0();
  sub_506C(&qword_A5070, &qword_76658);
  sub_D9A8(&qword_A5078, &qword_A5070, &qword_76658);
  sub_71B80();
  sub_71C20();

  sub_AEF4(v51, &qword_A5070, &qword_76658);
  sub_AEF4(v32, &qword_A5018, &qword_76630);
  sub_AEF4(v53, &qword_A5058, &qword_76650);
  sub_AEF4(v54, &qword_A5048, &qword_76648);
  sub_AEF4(&v56, &qword_A5038, &qword_76640);
  return sub_AEF4(v62, &qword_A5028, &qword_76638);
}

unint64_t sub_25BB0()
{
  result = qword_A5020;
  if (!qword_A5020)
  {
    type metadata accessor for WorkoutAppResolutionStrategyAsync();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A5020);
  }

  return result;
}

uint64_t sub_25C08()
{
  if (v0[5])
  {
    sub_AE38(v0 + 2);
  }

  if (v0[10])
  {
    sub_AE38(v0 + 7);
  }

  if (v0[15])
  {
    sub_AE38(v0 + 12);
  }

  if (v0[20])
  {
    sub_AE38(v0 + 17);
  }

  if (v0[25])
  {
    sub_AE38(v0 + 22);
  }

  if (v0[30])
  {
    sub_AE38(v0 + 27);
  }

  if (v0[35])
  {
    sub_AE38(v0 + 32);
  }

  return _swift_deallocObject(v0, 296, 7);
}

uint64_t sub_25CB4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25D08()
{
  sub_7F1C();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = *(*(sub_71F70() - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v6 = sub_72580();
  v1[7] = v6;
  v7 = *(v6 - 8);
  v1[8] = v7;
  v8 = *(v7 + 64) + 15;
  v1[9] = swift_task_alloc();
  v9 = *(*(sub_506C(&qword_A3F98, qword_75450) - 8) + 64) + 15;
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_25E2C, 0, 0);
}

uint64_t sub_25E2C()
{
  v1 = v0[3];
  v2 = *(v0[4] + 16);
  sub_72640();
  sub_72600();

  v3 = sub_72250();
  if (v3 && (v4 = v3, v5 = [v3 displayAppName], v4, v5))
  {
    v6 = v0[10];
    sub_73790();

    sub_737F0();

    v7 = 0;
  }

  else
  {

    v7 = 1;
  }

  v8 = v0[10];
  v9 = sub_73350();
  sub_7CC4(v8, v7, 1, v9);
  v10 = swift_task_alloc();
  v0[11] = v10;
  *v10 = v0;
  v10[1] = sub_25F90;
  v11 = v0[10];
  v12 = v0[4];
  v13 = v0[5];

  return sub_26480(v11, v12);
}

uint64_t sub_25F90()
{
  sub_7F1C();
  v2 = *v1;
  v3 = *(*v1 + 88);
  v7 = *v1;
  *(v2 + 96) = v4;
  *(v2 + 104) = v0;

  if (v0)
  {
    v5 = sub_26350;
  }

  else
  {
    v5 = sub_260A0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_260A0()
{
  sub_273D0();
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  sub_71F60();
  sub_72530();
  v4 = v3[33];
  v5 = v3[34];
  sub_7C78(v3 + 30, v4);
  v6 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)[1];
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_26194;
  v8 = v0[12];
  v9 = v0[9];
  v10 = v0[2];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v10, v8, v9, v4, v5);
}

uint64_t sub_26194()
{
  sub_7F1C();
  v2 = *(*v1 + 112);
  v3 = *v1;
  sub_B044();
  *v4 = v3;
  *(v5 + 120) = v0;

  if (v0)
  {
    v6 = sub_263D4;
  }

  else
  {
    v6 = sub_2629C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_2629C()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 48);

  (*(v4 + 8))(v1, v3);
  sub_2733C(v2);

  sub_7EA4();

  return v6();
}

uint64_t sub_26350()
{
  sub_273D0();
  v1 = v0[13];
  v2 = v0[9];
  v3 = v0[6];
  sub_2733C(v0[10]);

  sub_7EA4();

  return v4();
}

uint64_t sub_263D4()
{
  sub_273D0();
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 120);
  v5 = *(v0 + 72);
  v6 = *(v0 + 48);
  sub_2733C(*(v0 + 80));

  sub_7EA4();

  return v7();
}

uint64_t sub_26480(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_273C0();
}

uint64_t sub_26498()
{
  v1 = *(*(v0 + 24) + 16);
  v2 = sub_ADF8(0, &qword_A4578, INCancelWorkoutIntent_ptr);
  if (sub_27420(v2))
  {
    v3 = *(v0 + 16);
    v4 = sub_273E8(*(v0 + 32), *(*(v0 + 32) + 24));
    *(v0 + 40) = v4;
    sub_27414(v4);
    v5 = swift_task_alloc();
    *(v0 + 48) = v5;
    *v5 = v0;
    v5[1] = sub_268C8;

    return sub_2F18C();
  }

  else
  {
    v7 = sub_ADF8(0, &qword_A4418, INEndWorkoutIntent_ptr);
    if (sub_27420(v7))
    {
      sub_27438();
      v9 = sub_273E8((v8 + 40), *(v8 + 64));
      *(v0 + 56) = v9;
      sub_27414(v9);
      v10 = swift_task_alloc();
      *(v0 + 64) = v10;
      *v10 = v0;
      v10[1] = sub_269D4;

      return sub_62154();
    }

    else
    {
      v11 = sub_ADF8(0, &qword_A4498, INPauseWorkoutIntent_ptr);
      if (sub_27420(v11))
      {
        sub_27438();
        v13 = sub_273E8((v12 + 80), *(v12 + 104));
        *(v0 + 72) = v13;
        sub_27414(v13);
        v14 = swift_task_alloc();
        *(v0 + 80) = v14;
        *v14 = v0;
        v14[1] = sub_26AE0;

        return sub_69A9C();
      }

      else
      {
        v15 = sub_ADF8(0, &qword_A3BA0, INResumeWorkoutIntent_ptr);
        if (sub_27420(v15))
        {
          sub_27438();
          v17 = sub_273E8((v16 + 120), *(v16 + 144));
          *(v0 + 88) = v17;
          sub_27414(v17);
          v18 = swift_task_alloc();
          *(v0 + 96) = v18;
          *v18 = v0;
          v18[1] = sub_26BEC;

          return sub_666D4();
        }

        else
        {
          v19 = sub_ADF8(0, &qword_A4518, INStartWorkoutIntent_ptr);
          if (sub_27420(v19))
          {
            sub_27438();
            v21 = sub_273E8((v20 + 160), *(v20 + 184));
            *(v0 + 104) = v21;
            sub_27414(v21);
            v22 = swift_task_alloc();
            *(v0 + 112) = v22;
            *v22 = v0;
            v22[1] = sub_26CF8;

            return sub_6485C();
          }

          else
          {
            return sub_73CC0();
          }
        }
      }
    }
  }
}

uint64_t sub_268C8()
{
  sub_273D0();
  sub_273B0();
  v4 = *(v3 + 48);
  v5 = *(v3 + 40);
  v6 = *v2;
  sub_B044();
  *v7 = v6;

  sub_273DC();
  if (!v1)
  {
    v8 = v0;
  }

  return v9(v8);
}

uint64_t sub_269D4()
{
  sub_273D0();
  sub_273B0();
  v4 = *(v3 + 64);
  v5 = *(v3 + 56);
  v6 = *v2;
  sub_B044();
  *v7 = v6;

  sub_273DC();
  if (!v1)
  {
    v8 = v0;
  }

  return v9(v8);
}

uint64_t sub_26AE0()
{
  sub_273D0();
  sub_273B0();
  v4 = *(v3 + 80);
  v5 = *(v3 + 72);
  v6 = *v2;
  sub_B044();
  *v7 = v6;

  sub_273DC();
  if (!v1)
  {
    v8 = v0;
  }

  return v9(v8);
}

uint64_t sub_26BEC()
{
  sub_273D0();
  sub_273B0();
  v4 = *(v3 + 96);
  v5 = *(v3 + 88);
  v6 = *v2;
  sub_B044();
  *v7 = v6;

  sub_273DC();
  if (!v1)
  {
    v8 = v0;
  }

  return v9(v8);
}

uint64_t sub_26CF8()
{
  sub_273D0();
  sub_273B0();
  v4 = *(v3 + 112);
  v5 = *(v3 + 104);
  v6 = *v2;
  sub_B044();
  *v7 = v6;

  sub_273DC();
  if (!v1)
  {
    v8 = v0;
  }

  return v9(v8);
}

uint64_t sub_26E04(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_273C0();
}

uint64_t sub_26E18()
{
  sub_7F1C();
  v1 = *(v0 + 16);
  v2 = *(*(v0 + 24) + 16);
  sub_72640();
  sub_72610();
  sub_273DC();

  return v3();
}

uint64_t sub_26E80(uint64_t a1, uint64_t a2)
{
  v4 = sub_506C(&qword_A3F98, qword_75450);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v11 - v6;
  sub_AFA4(a2, a1);
  sub_737F0();
  v8 = sub_73350();
  sub_7CC4(v7, 0, 1, v8);
  started = type metadata accessor for WorkoutStartUnsupportedSlotValueParameters(0);
  return sub_7CEC(v7, a1 + *(started + 24));
}

uint64_t sub_26F60()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_27010;

  return sub_25D08();
}

uint64_t sub_27010()
{
  sub_7F1C();
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_B044();
  *v3 = v2;

  sub_7EA4();

  return v4();
}

uint64_t sub_270F4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_27190;

  return sub_26E04(a1, a2);
}

uint64_t sub_27190()
{
  sub_7F1C();
  sub_273B0();
  v4 = *(v3 + 16);
  v5 = *v2;
  sub_B044();
  *v6 = v5;

  sub_273DC();
  if (!v1)
  {
    v7 = v0;
  }

  return v8(v7);
}

uint64_t sub_27278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to UnsupportedValueFlowStrategyAsync.makeLaunchAppWithIntentOutput(resolveRecord:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_273AC;

  return UnsupportedValueFlowStrategyAsync.makeLaunchAppWithIntentOutput(resolveRecord:)(a1, a2, a3, a4);
}

uint64_t sub_2733C(uint64_t a1)
{
  v2 = sub_506C(&qword_A3F98, qword_75450);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_273E8(void *a1, uint64_t a2)
{
  sub_7C78(a1, a2);

  return swift_task_alloc();
}

uint64_t sub_27414(uint64_t result)
{
  *(result + 16) = v2;
  v3 = *v1;
  return result;
}

uint64_t sub_27420(uint64_t a1)
{

  return _swift_dynamicCastMetatype(v1, a1);
}

void sub_27444(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = sub_2770C(a1);
  if (v4)
  {
    v5 = v4;
    sub_73970();
    v6 = *sub_734D0();
    sub_506C(&qword_A3BA8, &unk_76BA0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_74B40;
    v8 = v6;
    v9 = [v5 description];
    v10 = sub_73790();
    v12 = v11;

    *(v7 + 56) = &type metadata for String;
    *(v7 + 64) = sub_5258();
    *(v7 + 32) = v10;
    *(v7 + 40) = v12;
    sub_73620();

    v21 = v5;
    (a3)(v5, 0);
  }

  else
  {
    type metadata accessor for HealthFlowError();
    swift_initStackObject();
    sub_B5BC(0);
    sub_73980();
    v13 = *sub_734D0();
    sub_506C(&qword_A3BA8, &unk_76BA0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_74B40;
    v15 = v13;
    v16 = sub_B4FC();
    v18 = v17;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = sub_5258();
    *(v14 + 32) = v16;
    *(v14 + 40) = v18;
    sub_73620();

    swift_allocObject();
    v19 = sub_B5BC(1);
    sub_28130(&qword_A3BB8, 255, type metadata accessor for HealthFlowError);
    swift_allocError();
    *v20 = v19;
    a3();
  }
}

id sub_2770C(uint64_t a1)
{
  v51 = a1;
  v1 = sub_506C(&qword_A3B90, &qword_76E00);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v50 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v49 = &v48 - v5;
  v6 = type metadata accessor for HealthNLIntent(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_731D0();
  v11 = sub_5394(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_72830();
  v19 = sub_5394(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v19);
  v26 = &v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v48 - v27;
  v29 = v21[2];
  v29(&v48 - v27, v51, v18);
  v30 = v21[11];
  v31 = sub_5388();
  v33 = v32(v31);
  if (v33 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v34 = v21[12];
    v35 = sub_5388();
    v36(v35);
    (*(v13 + 32))(v17, v28, v10);
    (*(v13 + 16))(v9, v17, v10);
    sub_280EC();
    v37 = sub_5CD8C(v9);
    sub_51F8(v9, type metadata accessor for HealthNLIntent);
    (*(v13 + 8))(v17, v10);
  }

  else if (v33 == enum case for Parse.directInvocation(_:))
  {
    v29(v26, v51, v18);
    v38 = v49;
    sub_6AFB0(v26, v49);
    v39 = v50;
    sub_50B4(v38, v50);
    v40 = type metadata accessor for DirectInvocationData();
    if (sub_5124(v39, 1, v40) == 1)
    {
      sub_514C(v38);
      sub_514C(v39);
      v37 = 0;
    }

    else
    {
      sub_6B824(v53);
      sub_514C(v38);
      sub_51F8(v39, type metadata accessor for DirectInvocationData);
      sub_506C(&qword_A3B98, &unk_74E00);
      sub_280EC();
      if (swift_dynamicCast())
      {
        v37 = v52;
      }

      else
      {
        v37 = 0;
      }
    }

    v44 = v21[1];
    v45 = sub_5388();
    v46(v45);
  }

  else
  {
    v41 = v21[1];
    v42 = sub_5388();
    v43(v42);
    return 0;
  }

  return v37;
}

uint64_t sub_27B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for CancelWorkoutStrategy();

  return RCHFlowStrategy.makeAnnotatedIntentFromParse(parse:currentIntent:completion:)(a1, a2, a3, a4, v11, a6);
}

uint64_t sub_27BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for CancelWorkoutStrategy();

  return RCHFlowStrategy.makeParameterMetadata(intent:)(a1, v5, a3);
}

uint64_t sub_27C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for CancelWorkoutStrategy();

  return ResolveConfirmFlowStrategy.makeAppDoesNotSupportIntentResponse(app:intent:_:)(a1, a2, a3, a4, v11, a6);
}

uint64_t sub_27C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for CancelWorkoutStrategy();

  return ResolveConfirmFlowStrategy.makeAppNotFoundOnDeviceResponse(app:intent:_:)(a1, a2, a3, a4, v11, a6);
}

uint64_t sub_27CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for CancelWorkoutStrategy();

  return ResolveConfirmFlowStrategy.makeDeviceIncompatibleResponse(app:intent:_:)(a1, a2, a3, a4, v11, a6);
}

uint64_t sub_27D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for CancelWorkoutStrategy();

  return RouteConfirmIntentResponseFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_27DE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for CancelWorkoutStrategy();

  return IntentExtensionCommunicating.shouldIntentBeExecutedOnRemoteCompanion(intent:)(a1, v5, a3);
}

uint64_t sub_27E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for CancelWorkoutStrategy();

  return IntentExtensionCommunicating.makeSiriKitIntentHandler(app:intent:)(a1, a2, v7, a4);
}

uint64_t sub_27E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for CancelWorkoutStrategy();

  return IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:)(a1, a2, v7, a4);
}

uint64_t sub_27EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for CancelWorkoutStrategy();

  return IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:completion:)(a1, a2, a3, a4, v11, a6);
}

uint64_t sub_27F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for CancelWorkoutStrategy();

  return IntentErrorHandling.makeErrorResponse(app:intent:error:_:)(a1, a2, a3, a4, a5, v13, a7);
}

unint64_t sub_280EC()
{
  result = qword_A4578;
  if (!qword_A4578)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_A4578);
  }

  return result;
}

uint64_t sub_28130(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_28178()
{
  v0 = sub_72830();
  v1 = sub_5394(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_C2A4();
  v8 = v7 - v6;
  sub_73970();
  v9 = *sub_734D0();
  sub_506C(&qword_A3BA8, &unk_76BA0);
  v10 = sub_29ACC();
  *(v10 + 16) = xmmword_74B40;
  v11 = v9;
  sub_727E0();
  sub_73C40();
  (*(v3 + 8))(v8, v0);
  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = sub_5258();
  *(v10 + 32) = 0;
  *(v10 + 40) = 0xE000000000000000;
  sub_73620();

  return sub_72060();
}

uint64_t sub_28300(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t), uint64_t a9)
{
  v87 = a2;
  v90 = a9;
  v91 = a8;
  v9 = sub_506C(&qword_A54E8, &qword_76BB0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v88 = &v85 - v11;
  v89 = sub_506C(qword_A54F0, &qword_76BB8);
  v12 = sub_1168C(v89);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = (&v85 - v15);
  v17 = type metadata accessor for HealthNLIntent(0);
  v18 = sub_1168C(v17);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  sub_C2A4();
  v23 = v22 - v21;
  v24 = sub_72830();
  v25 = sub_5394(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  __chkstk_darwin(v25);
  sub_C2A4();
  v32 = v31 - v30;
  v33 = sub_731D0();
  v34 = sub_5394(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  __chkstk_darwin(v34);
  sub_C2A4();
  v41 = v40 - v39;
  sub_727E0();
  if ((*(v27 + 88))(v32, v24) == enum case for Parse.NLv3IntentOnly(_:))
  {
    v86 = v16;
    (*(v27 + 96))(v32, v24);
    (*(v36 + 32))(v41, v32, v33);
    (*(v36 + 16))(v23, v41, v33);
    if (qword_A3930 != -1)
    {
      swift_once();
    }

    sub_29A0C(&qword_A42E8, 255, type metadata accessor for HealthNLIntent);
    sub_72E30();
    v42 = v92;
    if (v92 == 3)
    {
      type metadata accessor for HealthFlowError();
      v88 = v33;
      swift_allocObject();
      v43 = sub_B5BC(3);
      sub_73980();
      v44 = *sub_734D0();
      sub_506C(&qword_A3BA8, &unk_76BA0);
      v45 = sub_29ACC();
      *(v45 + 16) = xmmword_74B40;
      v46 = v44;
      v47 = sub_B4FC();
      v48 = v23;
      v50 = v49;
      *(v45 + 56) = &type metadata for String;
      *(v45 + 64) = sub_5258();
      *(v45 + 32) = v47;
      *(v45 + 40) = v50;
      sub_29AB0();

      sub_29A98();
      sub_29A0C(v51, 255, v52);
      v53 = swift_allocError();
      *v54 = v43;
      v55 = v86;
      *v86 = v53;
      swift_storeEnumTagMultiPayload();

      v91(v55);

      sub_10364(v55, qword_A54F0, &qword_76BB8);
      sub_BFD8(v48);
      return (*(v36 + 8))(v41, v88);
    }

    else
    {
      sub_73970();
      v68 = *sub_734D0();
      sub_506C(&qword_A3BA8, &unk_76BA0);
      v69 = sub_29ACC();
      *(v69 + 16) = xmmword_74B40;
      sub_29A0C(&qword_A4D08, 255, &type metadata accessor for NLIntent);
      v70 = v68;
      v71 = sub_73DA0();
      v73 = v72;
      *(v69 + 56) = &type metadata for String;
      *(v69 + 64) = sub_5258();
      *(v69 + 32) = v71;
      *(v69 + 40) = v73;
      sub_73620();

      sub_29A54();
      v74 = sub_5C4C8();
      v75 = sub_72340();
      sub_1168C(v75);
      v77 = *(v76 + 104);
      v78 = v33;
      v79 = (v36 + 8);
      v80 = v86;
      if (v42)
      {
        v81 = v88;
        v77(v88, enum case for ConfirmationResponse.rejected(_:), v75);
        sub_7CC4(v81, 0, 1, v75);
        v82 = v87;
        sub_72510();
        swift_storeEnumTagMultiPayload();
        v91(v80);
      }

      else
      {
        v83 = v88;
        v77(v88, enum case for ConfirmationResponse.confirmed(_:), v75);
        sub_7CC4(v83, 0, 1, v75);
        v84 = v74;
        sub_72510();
        swift_storeEnumTagMultiPayload();
        v91(v80);
      }

      sub_10364(v80, qword_A54F0, &qword_76BB8);
      sub_BFD8(v23);
      return (*v79)(v41, v78);
    }
  }

  else
  {
    (*(v27 + 8))(v32, v24);
    type metadata accessor for HealthFlowError();
    swift_allocObject();
    v57 = sub_B5BC(0);
    sub_73980();
    v58 = *sub_734D0();
    sub_506C(&qword_A3BA8, &unk_76BA0);
    v59 = sub_29ACC();
    *(v59 + 16) = xmmword_74B40;
    v60 = v58;
    v61 = sub_B4FC();
    v63 = v62;
    *(v59 + 56) = &type metadata for String;
    *(v59 + 64) = sub_5258();
    *(v59 + 32) = v61;
    *(v59 + 40) = v63;
    sub_29AB0();

    sub_29A98();
    sub_29A0C(v64, 255, v65);
    v66 = swift_allocError();
    *v67 = v57;
    *v16 = v66;
    swift_storeEnumTagMultiPayload();

    v91(v16);

    return sub_10364(v16, qword_A54F0, &qword_76BB8);
  }
}

uint64_t sub_28B44(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t *), uint64_t a9)
{
  v66 = a9;
  v67 = a8;
  v12 = sub_73390();
  v13 = sub_5394(v12);
  v65 = v14;
  v16 = *(v15 + 64);
  __chkstk_darwin(v13);
  sub_C2A4();
  v19 = v18 - v17;
  v20 = sub_506C(&unk_A6CD0, &unk_75B80);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v61 - v22;
  v24 = sub_721F0();
  v25 = sub_5394(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  __chkstk_darwin(v25);
  sub_C2A4();
  v32 = v31 - v30;

  v33 = sub_453DC(a3, a4);
  if (v33 == 5)
  {
    type metadata accessor for HealthFlowError();
    swift_allocObject();
    v34 = sub_B5BC(2);
    sub_73980();
    v35 = *sub_734D0();
    sub_506C(&qword_A3BA8, &unk_76BA0);
    v36 = sub_29ACC();
    *(v36 + 16) = xmmword_74B40;
    v37 = v35;
    v38 = sub_B4FC();
    v40 = v39;
    *(v36 + 56) = &type metadata for String;
    *(v36 + 64) = sub_5258();
    *(v36 + 32) = v38;
    *(v36 + 40) = v40;
    sub_29AB0();

    sub_29A98();
    sub_29A0C(v41, 255, v42);
    v43 = swift_allocError();
    *v44 = v34;
    v69 = v43;
    v71 = 1;

    v67(&v69);

    return sub_10364(&v69, &qword_A4810, &unk_760A0);
  }

  else
  {
    v46 = v33;
    sub_73970();
    v47 = sub_734D0();
    v64 = v27;
    v48 = *v47;
    sub_506C(&qword_A3BA8, &unk_76BA0);
    v49 = sub_29ACC();
    v61 = xmmword_74B40;
    *(v49 + 16) = xmmword_74B40;
    v69 = 0;
    v70 = 0xE000000000000000;
    v68 = v46;
    v50 = v48;
    sub_73C40();
    v62 = a2;
    v63 = v24;
    v52 = v69;
    v51 = v70;
    *(v49 + 56) = &type metadata for String;
    *(v49 + 64) = sub_5258();
    *(v49 + 32) = v52;
    *(v49 + 40) = v51;
    sub_73620();

    sub_37918();
    sub_73280();
    v53 = sub_73270();
    sub_506C(&qword_A4818, &unk_75B90);
    v54 = *(v65 + 72);
    v55 = (*(v65 + 80) + 32) & ~*(v65 + 80);
    v56 = swift_allocObject();
    *(v56 + 16) = v61;
    sub_73380();
    v69 = v56;
    sub_29A0C(&unk_A6CE0, 255, &type metadata accessor for CATOption);
    sub_506C(&qword_A4820, qword_77FF0);
    sub_14D40();
    sub_73B10();
    v57 = type metadata accessor for HealthCATWrapper();
    v58 = *(v57 + 48);
    v59 = *(v57 + 52);
    swift_allocObject();
    sub_4F648(v53, v19);
    sub_4FC14(v46, v62);

    __chkstk_darwin(v60);
    *(&v61 - 2) = v32;
    sub_541F4(sub_29A04, &v69);
    v67(&v69);
    sub_10364(&v69, &qword_A4810, &unk_760A0);
    sub_10364(v23, &unk_A6CD0, &unk_75B80);
    return (*(v64 + 8))(v32, v63);
  }
}

uint64_t sub_290A4@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = sub_506C(&qword_A4050, &unk_75290);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v11 - v6;
  sub_72840();
  sub_72840();
  sub_7C78(v13, v13[3]);
  sub_71ED0();
  v8 = sub_721F0();
  (*(*(v8 - 8) + 16))(v7, a1, v8);
  sub_7CC4(v7, 0, 1, v8);
  v9 = sub_72890();
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  a2[3] = v9;
  a2[4] = &protocol witness table for AceOutput;
  sub_5BAC(a2);
  sub_720E0();
  sub_10364(v11, &unk_A6D20, &qword_76D80);
  sub_10364(v7, &qword_A4050, &unk_75290);
  sub_AE38(v14);
  return sub_AE38(v13);
}

uint64_t sub_292D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  started = type metadata accessor for StartWorkoutConfirmSlotStrategy();

  return NeedsConfirmationFlowStrategy.shouldRequestUnlockForConfirmation(app:intent:parameterName:multicardinalIndex:intentResolutionResult:itemToConfirm:_:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, started, a11);
}

uint64_t sub_293A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  started = type metadata accessor for StartWorkoutConfirmSlotStrategy();

  return NeedsConfirmationFlowStrategy.makeRepromptOnEmptyParse(app:intent:parameterName:multicardinalIndex:intentResolutionResult:itemToConfirm:_:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, started, a11);
}

uint64_t sub_29458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  started = type metadata accessor for StartWorkoutConfirmSlotStrategy();

  return NeedsConfirmationFlowStrategy.makeRepromptOnLowConfidence(app:intent:parameterName:multicardinalIndex:intentResolutionResult:itemToConfirm:_:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, started, a11);
}

uint64_t sub_29508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  started = type metadata accessor for StartWorkoutConfirmSlotStrategy();

  return NeedsConfirmationFlowStrategy.makePromptForDeviceUnlock(app:intent:parameterName:multicardinalValueIndex:intentResolutionResult:_:)(a1, a2, a3, a4, a5, a6, a7, a8, started, a10);
}

uint64_t sub_295A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  started = type metadata accessor for StartWorkoutConfirmSlotStrategy();

  return NeedsConfirmationFlowStrategy.makeHandoffForAuthenticationResponse(app:intent:parameterName:multicardinalValueIndex:intentResolutionResult:_:)(a1, a2, a3, a4, a5, a6, a7, a8, started, a10);
}

uint64_t sub_29638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  started = type metadata accessor for StartWorkoutConfirmSlotStrategy();

  return NeedsConfirmationFlowStrategy.makeConfirmationRejectedResponse(app:intent:parameterName:multicardinalIndex:_:)(a1, a2, a3, a4, a5, a6, a7, started, a9);
}

uint64_t sub_296CC()
{
  type metadata accessor for StartWorkoutConfirmSlotStrategy();

  return sub_72690();
}

uint64_t sub_29750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  started = type metadata accessor for StartWorkoutConfirmSlotStrategy();

  return ParameterResolutionHandling.makeErrorResponse(app:intent:parameterName:error:_:)(a1, a2, a3, a4, a5, a6, a7, started, a9);
}

uint64_t sub_297E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = async function pointer to ParameterResolutionHandling.makeFlowCancelledResponse(app:intent:parameterName:)[1];
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  started = type metadata accessor for StartWorkoutConfirmSlotStrategy();
  *v15 = v7;
  v15[1] = sub_14A58;

  return ParameterResolutionHandling.makeFlowCancelledResponse(app:intent:parameterName:)(a1, a2, a3, a4, a5, started, a7);
}

uint64_t sub_298C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = async function pointer to ParameterResolutionHandling.makeErrorResponse(app:intent:parameterName:error:)[1];
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  started = type metadata accessor for StartWorkoutConfirmSlotStrategy();
  *v17 = v8;
  v17[1] = sub_14EC4;

  return ParameterResolutionHandling.makeErrorResponse(app:intent:parameterName:error:)(a1, a2, a3, a4, a5, a6, started, a8);
}

uint64_t sub_29A0C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_29A54()
{
  result = qword_A4518;
  if (!qword_A4518)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_A4518);
  }

  return result;
}

uint64_t sub_29AB0()
{

  return sub_73620();
}

uint64_t sub_29ACC()
{

  return swift_allocObject();
}

uint64_t sub_29B4C(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  sub_ADF8(0, &qword_A4110, SAIntentGroupLaunchAppWithIntent_ptr);
  v11 = sub_73A10();
  v12 = *(v5 + 16);
  if (v12)
  {
    v19 = v12;
    sub_71E80();
    sub_7C78(v20, v20[3]);
    sub_73590();
    v13 = swift_allocObject();
    v13[2] = v5;
    v13[3] = a1;
    v13[4] = a2;
    v13[5] = a3;
    v13[6] = a4;
    v13[7] = a5;
    sub_ADF8(0, &qword_A4118, SABaseCommand_ptr);

    v14 = a2;
    v15 = a3;

    sub_72280();

    return sub_AE38(v20);
  }

  else
  {
    sub_506C(&unk_A63F0, &unk_760C0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_752C0;
    *(v17 + 32) = v11;
    v18 = v11;
    sub_29D68(a1, a2, a3, v17, a4, a5);
  }
}

uint64_t sub_29D68(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v6;
  v15 = sub_506C(&qword_A4A08, &qword_75D10);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  sub_2A950();
  v17 = sub_73910();
  sub_2A964(v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v8;
  v18[5] = a1;
  v18[6] = a2;
  v18[7] = a3;
  v18[8] = a4;
  v18[9] = a5;
  v18[10] = a6;

  v19 = a2;
  v20 = a3;

  sub_54390(0, 0, v7, &unk_76D90, v18);
}

uint64_t sub_29E90(void (*a1)(uint64_t *))
{
  v3 = sub_506C(&qword_A4050, &unk_75290);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  sub_2A950();
  v5 = sub_721F0();
  sub_2A964(v5);
  memset(v7, 0, sizeof(v7));
  v8 = 0;
  v9[3] = sub_72890();
  v9[4] = &protocol witness table for AceOutput;
  sub_5BAC(v9);
  sub_72110();
  sub_AEF4(v7, &unk_A6D20, &qword_76D80);
  sub_AEF4(v1, &qword_A4050, &unk_75290);
  v10 = 0;
  a1(v9);
  return sub_AEF4(v9, &qword_A4810, &unk_760A0);
}

void sub_2A010(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v18 = a7;
  v12 = sub_506C(&qword_A5578, &unk_76DA0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v17 - v14;
  sub_2A8DC(a1, &v17 - v14);
  LODWORD(a1) = swift_getEnumCaseMultiPayload();
  sub_AEF4(v15, &qword_A5578, &unk_76DA0);
  if (a1 == 1)
  {
    sub_73980();
    v16 = *sub_734D0();
    sub_73620();
  }

  else
  {
    sub_29D68(a3, a4, a5, _swiftEmptyArrayStorage, a6, v18);
  }
}

uint64_t sub_2A188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[22] = v10;
  v8[23] = v11;
  v8[20] = a7;
  v8[21] = a8;
  v8[18] = a5;
  v8[19] = a6;
  v8[17] = a4;
  return _swift_task_switch(sub_2A1BC, 0, 0);
}

uint64_t sub_2A1BC()
{
  sub_7F1C();
  (*(**(v0 + 136) + 120))(*(v0 + 144), *(v0 + 152), *(v0 + 160));
  v1 = swift_task_alloc();
  *(v0 + 192) = v1;
  *v1 = v0;
  v1[1] = sub_2A284;
  v2 = *(v0 + 168);

  return sub_2CCDC(v0 + 88, v0 + 16, v2);
}

uint64_t sub_2A284()
{
  sub_7F1C();
  v1 = *(*v0 + 192);
  v2 = *v0;
  sub_B044();
  *v3 = v2;

  return _swift_task_switch(sub_2A374, 0, 0);
}

uint64_t sub_2A374()
{
  sub_7F1C();
  v1 = *(v0 + 184);
  (*(v0 + 176))(v0 + 88);
  sub_AEF4(v0 + 88, &qword_A4810, &unk_760A0);
  sub_160DC(v0 + 16);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2A3F8()
{
  sub_29B2C();

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_2A468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a6 + 80);
  v14 = *(a6 + 88);
  v15 = type metadata accessor for HealthContinueInAppStrategy();

  return ContinueInAppDialogFlowStrategy.makeContinueInAppResponse(app:intent:intentResponse:completion:)(a1, a2, a3, a4, a5, v15, a7);
}

uint64_t sub_2A4EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = async function pointer to ContinueInAppDialogFlowStrategy.makeContinueInAppResponse(app:intent:intentResponse:)[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  v15 = *(a5 + 80);
  v16 = *(a5 + 88);
  v17 = type metadata accessor for HealthContinueInAppStrategy();
  *v14 = v6;
  v14[1] = sub_16228;

  return ContinueInAppDialogFlowStrategy.makeContinueInAppResponse(app:intent:intentResponse:)(a1, a2, a3, a4, v17, a6);
}

uint64_t sub_2A5F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to UnlockDeviceFlowStrategy.makePromptForDeviceUnlock()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_15F8C;

  return UnlockDeviceFlowStrategy.makePromptForDeviceUnlock()(a1, a2, a3);
}

uint64_t sub_2A718()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 64);

  v5 = *(v0 + 80);

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_2A780(uint64_t a1)
{
  v4 = v1[3];
  v14 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v10 = v1[8];
  v9 = v1[9];
  v11 = v1[10];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_15F8C;

  return sub_2A188(a1, v14, v4, v5, v6, v7, v8, v10);
}

uint64_t sub_2A874()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_2A8DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_506C(&qword_A5578, &unk_76DA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2A964(uint64_t a1)
{

  return sub_7CC4(v1, 1, 1, a1);
}

uint64_t sub_2A984(uint64_t a1, uint64_t a2, __int128 *a3)
{
  sub_D9F4(a3, v3 + 16);
  sub_2BB8C(a1, v3 + OBJC_IVAR____TtC24HealthFlowDelegatePlugin10FlowRouter_healthIntent);
  sub_2BBF0(a2, v3 + OBJC_IVAR____TtC24HealthFlowDelegatePlugin10FlowRouter_directInvocationData);
  return v3;
}

uint64_t sub_2A9E8(uint64_t a1)
{
  v3 = sub_506C(&qword_A3B90, &qword_76E00);
  v4 = sub_B1C0(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_2BF28();
  v8 = sub_B1C0(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_C2A4();
  sub_2BD08(a1, v12 - v11, type metadata accessor for HealthNLIntent);
  v13 = type metadata accessor for DirectInvocationData();
  sub_7CC4(v1, 1, 1, v13);
  sub_72840();
  sub_2BD68(a1, type metadata accessor for HealthNLIntent);
  v14 = type metadata accessor for FlowRouter();
  sub_22274(v14);
  sub_2BF08();
  return a1;
}

uint64_t sub_2AAF0(uint64_t a1)
{
  v3 = sub_506C(&qword_A3B90, &qword_76E00);
  v4 = sub_B1C0(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_2BF28();
  v8 = sub_B1C0(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_C2A4();
  sub_6C72C(v12 - v11);
  sub_2BD08(a1, v1, type metadata accessor for DirectInvocationData);
  v13 = type metadata accessor for DirectInvocationData();
  sub_7CC4(v1, 0, 1, v13);
  sub_72840();
  sub_2BD68(a1, type metadata accessor for DirectInvocationData);
  v14 = type metadata accessor for FlowRouter();
  sub_22274(v14);
  sub_2BF08();
  return a1;
}

void sub_2AC00()
{
  v1 = sub_73390();
  v2 = sub_B1C0(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  sub_C2A4();
  v5 = type metadata accessor for HealthNLIntent(0);
  v6 = sub_1168C(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_C2A4();
  v11 = v10 - v9;
  v12 = v0[6];
  sub_7C78(v0 + 2, v0[5]);
  sub_DD2C();
  if (sub_71F10())
  {
    sub_2BD08(v0 + OBJC_IVAR____TtC24HealthFlowDelegatePlugin10FlowRouter_healthIntent, v11, type metadata accessor for HealthNLIntent);
    v13 = type metadata accessor for SearchForRemoteDevicesFlow();
    sub_22274(v13);
    v14 = sub_2BE90();
    v18[0] = sub_5F32C(v14);
    sub_2BDC0(&qword_A5698, type metadata accessor for SearchForRemoteDevicesFlow);
    sub_71CF0();

LABEL_3:
    sub_2BF48();
    return;
  }

  v15 = v0[6];
  sub_7C78(v0 + 2, v0[5]);
  sub_2BE90();
  if ((sub_71F00() & 1) == 0)
  {
    v16 = v0[6];
    sub_7C78(v0 + 2, v0[5]);
    sub_2BE90();
    if ((sub_71EB0() & 1) == 0)
    {
      if (qword_A38F8 != -1)
      {
        swift_once();
      }

      sub_2BDC0(&qword_A42E8, type metadata accessor for HealthNLIntent);
      sub_72E30();
      switch(LOBYTE(v18[0]))
      {
        case 0:
          sub_2B6D0();
          break;
        case 1:
          sub_2B2EC();
          break;
        case 2:
          sub_2B1A0();
          break;
        case 3:
          sub_2B438();
          break;
        case 4:
          sub_2B584();
          break;
        default:
          type metadata accessor for DialogCATWrapper();
          sub_73380();
          sub_732B0();
          sub_72840();
          sub_71E80();
          sub_73440();
          sub_2BC60();
          sub_71CF0();
          sub_2BCB4(v18);
          break;
      }

      goto LABEL_3;
    }
  }

  sub_2BF48();

  sub_2AF64();
}

uint64_t sub_2AF64()
{
  v0 = sub_73390();
  v1 = sub_B1C0(v0);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  sub_C2A4();
  sub_506C(&qword_A5668, &qword_76E08);
  v4 = *(sub_71AC0() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_74B40;
  sub_71AB0();
  sub_715C0();

  type metadata accessor for DialogCATWrapper();
  sub_73380();
  sub_732B0();
  sub_72840();
  sub_71E80();
  sub_73440();
  sub_71AA0();
  sub_2BC60();
  sub_71D30();
  sub_506C(&qword_A5678, &unk_76E10);
  sub_D9A8(&qword_A5680, &qword_A5678, &unk_76E10);
  v7 = sub_71CF0();

  sub_2BCB4(v9);
  return v7;
}

void sub_2B1A0()
{
  v0 = sub_506C(&qword_A4430, &qword_76E30);
  v1 = sub_19894(v0);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  sub_2BE50();
  __chkstk_darwin(v4);
  sub_2BE6C();
  type metadata accessor for HealthProducers();
  v5 = sub_2BED4();
  sub_C680(v5);
  v6 = sub_DD2C();
  sub_506C(v6, v7);
  sub_2BEF0();
  type metadata accessor for EndWorkoutStrategy();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = sub_2BE34(v8);
  v10(v9);
  v11 = sub_506C(&qword_A5090, &unk_76E40);
  sub_22274(v11);
  sub_2BE90();
  sub_71C50();
  v12 = sub_2BE9C();
  sub_2BEFC(v12);
  sub_2BE08(&qword_A56A8);
  sub_2BEB8();
  sub_2BE90();

  v13 = sub_2BE80();
  v14(v13);
  sub_2BEE4();
  sub_2BF48();
}

void sub_2B2EC()
{
  v0 = sub_506C(&qword_A44B0, &qword_75830);
  v1 = sub_19894(v0);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  sub_2BE50();
  __chkstk_darwin(v4);
  sub_2BE6C();
  type metadata accessor for HealthProducers();
  v5 = sub_2BED4();
  sub_CBE0(v5);
  v6 = sub_DD2C();
  sub_506C(v6, v7);
  sub_2BEF0();
  type metadata accessor for PauseWorkoutStrategy();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = sub_2BE34(v8);
  v10(v9);
  v11 = sub_506C(&qword_A5128, &qword_766C0);
  sub_22274(v11);
  sub_2BE90();
  sub_71C50();
  v12 = sub_2BE9C();
  sub_2BEFC(v12);
  sub_2BE08(&qword_A56B8);
  sub_2BEB8();
  sub_2BE90();

  v13 = sub_2BE80();
  v14(v13);
  sub_2BEE4();
  sub_2BF48();
}

void sub_2B438()
{
  v0 = sub_506C(&qword_A43A8, &unk_76E60);
  v1 = sub_19894(v0);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  sub_2BE50();
  __chkstk_darwin(v4);
  sub_2BE6C();
  type metadata accessor for HealthProducers();
  v5 = sub_2BED4();
  sub_CFD4(v5);
  v6 = sub_DD2C();
  sub_506C(v6, v7);
  sub_2BEF0();
  type metadata accessor for ResumeWorkoutStrategy();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = sub_2BE34(v8);
  v10(v9);
  v11 = sub_506C(&qword_A5258, &unk_76E70);
  sub_22274(v11);
  sub_2BE90();
  sub_71C50();
  v12 = sub_2BE9C();
  sub_2BEFC(v12);
  sub_2BE08(&qword_A56C8);
  sub_2BEB8();
  sub_2BE90();

  v13 = sub_2BE80();
  v14(v13);
  sub_2BEE4();
  sub_2BF48();
}

void sub_2B584()
{
  v0 = sub_506C(&qword_A4590, &qword_75880);
  v1 = sub_19894(v0);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  sub_2BE50();
  __chkstk_darwin(v4);
  sub_2BE6C();
  type metadata accessor for HealthProducers();
  sub_D3C8();
  v5 = sub_DD2C();
  sub_506C(v5, v6);
  sub_2BEF0();
  type metadata accessor for CancelWorkoutStrategy();
  v7 = swift_allocObject();
  v8 = sub_2BE34(v7);
  v9(v8);
  v10 = sub_506C(&qword_A51C0, &qword_76718);
  sub_22274(v10);
  sub_2BE90();
  sub_71C50();
  v11 = sub_2BE9C();
  sub_2BEFC(v11);
  sub_2BE08(&qword_A56D8);
  sub_2BEB8();
  sub_2BE90();

  v12 = sub_2BE80();
  v13(v12);
  sub_2BEE4();
  sub_2BF48();
}

uint64_t sub_2B6D0()
{
  v2 = sub_506C(&qword_A4530, &qword_75868);
  v3 = sub_19894(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v3);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0) + 72;
  __chkstk_darwin(v8);
  sub_2BE6C();
  v11 = sub_73390();
  v12 = sub_B1C0(v11);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  sub_C2A4();
  if (sub_593C4())
  {
    type metadata accessor for DialogCATWrapper();
    sub_73380();
    sub_732B0();
    sub_72840();
    sub_71E80();
    sub_73440();
    sub_2BC60();
    v15 = sub_71CF0();
    sub_2BCB4(v23);
  }

  else
  {
    type metadata accessor for HealthProducers();
    sub_C2B4();
    v16 = sub_DD2C();
    sub_506C(v16, v17);
    type metadata accessor for StartWorkoutStrategy();
    v23[0] = swift_allocObject();
    (*(v5 + 16))(v10, v1, v0);
    v18 = sub_506C(&qword_A4FF0, &qword_76618);
    sub_22274(v18);
    sub_71C50();
    v23[0] = sub_72860();
    sub_2BE08(&qword_A5690);
    v15 = sub_71CF0();

    v19 = sub_2BE80();
    v20(v19);
  }

  return v15;
}

uint64_t sub_2B95C()
{
  sub_AE38((v0 + 16));
  sub_2BD68(v0 + OBJC_IVAR____TtC24HealthFlowDelegatePlugin10FlowRouter_healthIntent, type metadata accessor for HealthNLIntent);
  sub_514C(v0 + OBJC_IVAR____TtC24HealthFlowDelegatePlugin10FlowRouter_directInvocationData);
  return v0;
}

uint64_t sub_2B9B0()
{
  sub_2B95C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for FlowRouter()
{
  result = qword_A55B8;
  if (!qword_A55B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2BA5C()
{
  v0 = sub_731D0();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_2BB34();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_2BB34()
{
  if (!qword_A55C8)
  {
    type metadata accessor for DirectInvocationData();
    v0 = sub_73A90();
    if (!v1)
    {
      atomic_store(v0, &qword_A55C8);
    }
  }
}

uint64_t sub_2BB8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HealthNLIntent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2BBF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_506C(&qword_A3B90, &qword_76E00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2BC60()
{
  result = qword_A5670;
  if (!qword_A5670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A5670);
  }

  return result;
}

uint64_t sub_2BD08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1168C(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2BD68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1168C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2BDC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2BE08(unint64_t *a1)
{

  return sub_D9A8(a1, v1, v2);
}

uint64_t sub_2BE34(uint64_t a1)
{
  *(v3 - 72) = a1;
  v4 = *(v2 + 16);
  return v1;
}

uint64_t sub_2BE9C()
{

  return sub_72860();
}

uint64_t sub_2BEB8()
{

  return sub_71CF0();
}

uint64_t sub_2BF08()
{

  return sub_2A984(v1, v0, (v2 - 72));
}

uint64_t sub_2BF28()
{

  return type metadata accessor for HealthNLIntent(0);
}

uint64_t sub_2BF5C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = a1 == 0x726F6F646E69 && a2 == 0xE600000000000000;
  if (v4 || (sub_73DB0() & 1) != 0)
  {

    return 2;
  }

  if (a1 == 0x726F6F6474756FLL && a2 == 0xE700000000000000)
  {
  }

  else
  {
    v7 = sub_73DB0();

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_2C034(uint64_t a1, uint64_t a2)
{
  v4 = sub_23964();

  return Flow.deferToExecuteAsync(_:)(a1, a2, &type metadata for GenericErrorFlow, v4);
}

uint64_t sub_2C088()
{
  sub_7F1C();
  v1[41] = v2;
  v1[42] = v0;
  v3 = sub_73720();
  v1[43] = v3;
  v4 = *(v3 - 8);
  v1[44] = v4;
  v5 = *(v4 + 64) + 15;
  v1[45] = swift_task_alloc();

  return _swift_task_switch(sub_2C144, 0, 0);
}

uint64_t sub_2C144()
{
  v2 = v0[44];
  v1 = v0[45];
  v3 = v0[43];
  v4 = sub_736F0();
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_73710();
  v6 = sub_73980();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "Executing a generic error response", v7, 2u);
  }

  v9 = v0[44];
  v8 = v0[45];
  v11 = v0[42];
  v10 = v0[43];
  v12 = v0[41];

  (*(v9 + 8))(v8, v10);
  sub_2CB90(v11, (v0 + 2));
  v13 = swift_allocObject();
  memcpy((v13 + 16), v0 + 2, 0x118uLL);
  sub_72430();
  v14 = sub_71690();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v0[40] = sub_71680();
  sub_72120();

  sub_7EA4();

  return v17();
}

uint64_t sub_2C328(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(sub_71F70() - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = sub_72580();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_2C414, 0, 0);
}

uint64_t sub_2C414()
{
  sub_273D0();
  v1 = v0[7];
  v3 = v0[3];
  v2 = v0[4];
  sub_71F60();
  sub_72530();
  v4 = *sub_7C78((v3 + 200), *(v3 + 224));
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_2C4E8;

  return sub_4618C();
}

uint64_t sub_2C4E8()
{
  sub_7F1C();
  sub_B0BC();
  v3 = v2;
  v4 = *(v2 + 64);
  v8 = *v1;
  *(v3 + 72) = v5;
  *(v3 + 80) = v0;

  if (v0)
  {
    v6 = sub_2C7BC;
  }

  else
  {
    v6 = sub_2C5F4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_2C5F4()
{
  sub_273D0();
  v1 = v0[3];
  v2 = v1[33];
  v3 = v1[34];
  sub_7C78(v1 + 30, v2);
  v4 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)[1];
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_2C6B8;
  v6 = v0[9];
  v7 = v0[7];
  v8 = v0[2];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v8, v6, v7, v2, v3);
}

uint64_t sub_2C6B8()
{
  sub_7F1C();
  sub_B0BC();
  v3 = *(v2 + 88);
  v4 = *v1;
  sub_B044();
  *v5 = v4;
  *(v6 + 96) = v0;

  if (v0)
  {
    v7 = sub_2C8CC;
  }

  else
  {
    v7 = sub_2C838;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_2C7BC()
{
  sub_273D0();
  v1 = *(v0 + 80);
  v2 = sub_2CCC8();
  v3(v2);

  sub_7EA4();

  return v4();
}

uint64_t sub_2C838()
{
  sub_273D0();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);

  (*(v2 + 8))(v1, v3);

  sub_7EA4();

  return v5();
}

uint64_t sub_2C8CC()
{
  sub_273D0();

  v1 = *(v0 + 96);
  v2 = sub_2CCC8();
  v3(v2);

  sub_7EA4();

  return v4();
}

uint64_t sub_2C950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to Flow.onAsync(input:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2CA00;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t sub_2CA00()
{
  sub_7F1C();
  v2 = v1;
  sub_B0BC();
  v4 = *(v3 + 16);
  v5 = *v0;
  sub_B044();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t sub_2CAF0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_ACC4;

  return sub_2C088();
}

uint64_t sub_2CBC8()
{
  sub_AE38(v0 + 2);
  sub_AE38(v0 + 7);
  sub_AE38(v0 + 12);
  sub_AE38(v0 + 17);
  sub_AE38(v0 + 22);
  sub_AE38(v0 + 27);
  sub_AE38(v0 + 32);

  return _swift_deallocObject(v0, 296, 7);
}

uint64_t sub_2CC30()
{
  sub_7F1C();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_ACC4;

  return sub_2C328(v3, v0 + 16);
}

uint64_t sub_2CCC8()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = *(v0[6] + 8);
  return v0[7];
}

uint64_t sub_2CCDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[17] = a2;
  v3[18] = a3;
  v3[16] = a1;
  v4 = *(*(sub_71F70() - 8) + 64) + 15;
  v3[19] = swift_task_alloc();
  v5 = sub_72580();
  v3[20] = v5;
  v6 = *(v5 - 8);
  v3[21] = v6;
  v7 = *(v6 + 64) + 15;
  v3[22] = swift_task_alloc();
  v8 = sub_73390();
  v3[23] = v8;
  v9 = *(v8 - 8);
  v3[24] = v9;
  v10 = *(v9 + 64) + 15;
  v3[25] = swift_task_alloc();

  return _swift_task_switch(sub_2CE28, 0, 0);
}

uint64_t sub_2CE28()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 136);
  sub_73320();
  v4 = v2[1];
  v3 = v2[2];
  v5 = *v2;
  v6 = v2[8];
  sub_73280();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v7 = sub_73270();
  *(v0 + 208) = v7;
  sub_73380();
  v8 = async function pointer to static CATResponse.executePattern(bundle:patternId:parameters:globals:callback:options:)[1];
  v9 = swift_task_alloc();
  *(v0 + 216) = v9;
  *v9 = v0;
  v9[1] = sub_2CF44;
  v10 = *(v0 + 200);

  return static CATResponse.executePattern(bundle:patternId:parameters:globals:callback:options:)(v3, v5, v4, v6, v7, v0 + 16, v10);
}

uint64_t sub_2CF44()
{
  v2 = *v1;
  sub_7F04();
  *v3 = v2;
  v5 = v4[27];
  v6 = v4[26];
  v7 = v4[25];
  v8 = v4[24];
  v9 = v4[23];
  v10 = *v1;
  sub_7F04();
  *v11 = v10;
  *(v2 + 224) = v12;
  *(v2 + 232) = v0;

  (*(v8 + 8))(v7, v9);
  sub_2D610(v2 + 16);
  if (v0)
  {
    v13 = sub_2D3A8;
  }

  else
  {
    v13 = sub_2D0D8;
  }

  return _swift_task_switch(v13, 0, 0);
}

uint64_t sub_2D0D8()
{
  v1 = v0[22];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[17];
  sub_71F30();
  sub_72530();

  sub_72560();
  v5 = v4[6];
  v6 = v4[7];
  sub_7C78(v4 + 3, v5);
  v7 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)[1];
  v8 = swift_task_alloc();
  v0[30] = v8;
  *v8 = v0;
  v8[1] = sub_2D1E0;
  v9 = v0[28];
  v10 = v0[22];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v0 + 7, v9, v10, v5, v6);
}

uint64_t sub_2D1E0()
{
  v2 = *v1;
  sub_7F04();
  *v4 = v3;
  v6 = *(v5 + 240);
  v7 = *v1;
  sub_7F04();
  *v8 = v7;
  *(v9 + 248) = v0;

  if (v0)
  {
    v10 = sub_2D4C8;
  }

  else
  {
    v10 = sub_2D2EC;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_2D2EC()
{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 160);
  v4 = *(v0 + 128);

  (*(v2 + 8))(v1, v3);
  sub_D8D8((v0 + 56), v4);
  *(v4 + 40) = 0;
  v5 = *(v0 + 200);
  v6 = *(v0 + 176);
  v7 = *(v0 + 152);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_2D3A8()
{
  v1 = v0[29];
  v2 = v0[16];
  v3 = *sub_734D0();
  sub_73970();
  sub_506C(&qword_A3BA8, &unk_76BA0);
  v4 = swift_allocObject();
  sub_2D76C(v4, xmmword_74B40);
  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[14];
  v8 = sub_73DF0();
  v10 = v9;
  v4[3].n128_u64[1] = &type metadata for String;
  v4[4].n128_u64[0] = sub_5258();
  v4[2].n128_u64[0] = v8;
  v4[2].n128_u64[1] = v10;
  sub_2D748();

  sub_2D720();

  v11 = v0[1];

  return v11();
}

uint64_t sub_2D4C8()
{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 160);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 248);
  v5 = *(v0 + 128);
  v6 = *sub_734D0();
  sub_73970();
  sub_506C(&qword_A3BA8, &unk_76BA0);
  v7 = swift_allocObject();
  sub_2D76C(v7, xmmword_74B40);
  v9 = *(v0 + 96);
  v8 = *(v0 + 104);
  v10 = *(v0 + 112);
  v11 = sub_73DF0();
  v13 = v12;
  v7[3].n128_u64[1] = &type metadata for String;
  v7[4].n128_u64[0] = sub_5258();
  v7[2].n128_u64[0] = v11;
  v7[2].n128_u64[1] = v13;
  sub_2D748();

  sub_2D720();

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_2D610(uint64_t a1)
{
  v2 = sub_506C(&qword_A56E0, qword_79400);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2D680(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2D6C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2D720()
{
  *v2 = v0;
  *(v2 + 40) = 1;
  v4 = v1[25];
  v5 = v1[22];
  v6 = v1[19];
}

uint64_t sub_2D748()
{

  return sub_73610();
}

uint64_t sub_2D76C(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return swift_getErrorValue();
}

uint64_t type metadata accessor for DialogCATWrapper()
{
  result = qword_A56E8;
  if (!qword_A56E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2D818(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_2D86C(a1, a2);
}

uint64_t sub_2D86C(uint64_t a1, uint64_t a2)
{
  v4 = sub_73390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_506C(&qword_A3F90, &unk_74FC0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  sub_1828C(a1, &v14 - v11);
  (*(v5 + 16))(v8, a2, v4);
  v12 = sub_73290();
  (*(v5 + 8))(a2, v4);
  sub_2D9E0(a1);
  return v12;
}

uint64_t sub_2D9E0(uint64_t a1)
{
  v2 = sub_506C(&qword_A3F90, &unk_74FC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2DA48()
{
  v0 = sub_73DC0();

  if (v0 >= 0x14)
  {
    return 20;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2DA9C(char a1)
{
  result = 0x736569726F6C6163;
  switch(a1)
  {
    case 1:
      result = 0x74616679646F62;
      break;
    case 2:
      result = 0x7461727472616568;
      break;
    case 3:
      result = 0x65636E6174736964;
      break;
    case 4:
      result = 1701669236;
      break;
    case 5:
    case 9:
    case 15:
      result = 0x7974697669746361;
      break;
    case 6:
      result = 0x746E6F6973736573;
      break;
    case 7:
      result = 0x6573696372657865;
      break;
    case 8:
      result = 0x677373656E746966;
      break;
    case 10:
      result = 0x6965772079646F62;
      break;
    case 11:
      result = 0x2074756F6B726F77;
      break;
    case 12:
      result = 1701011824;
      break;
    case 13:
      result = 0x616F67206E65706FLL;
      break;
    case 16:
      result = 6645601;
      break;
    case 17:
      result = 7890291;
      break;
    case 18:
      result = 0x746867696568;
      break;
    case 19:
      result = 0x746867696577;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2DD1C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2DA48();
  *a2 = result;
  return result;
}

uint64_t sub_2DD4C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2DA9C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for HealthNoun(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xED)
  {
    if (a2 + 19 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 19) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 20;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v5 = v6 - 20;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for HealthNoun(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xED)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEC)
  {
    v6 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x2DECCLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 19;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2DF08()
{
  result = qword_A5738;
  if (!qword_A5738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A5738);
  }

  return result;
}

uint64_t sub_2DF5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2E074();
  v5 = sub_2E0C8();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v4, v5);
}

unint64_t sub_2DFC8()
{
  result = qword_A5740;
  if (!qword_A5740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A5740);
  }

  return result;
}

unint64_t sub_2E020()
{
  result = qword_A5748;
  if (!qword_A5748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A5748);
  }

  return result;
}

unint64_t sub_2E074()
{
  result = qword_A5750;
  if (!qword_A5750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A5750);
  }

  return result;
}

unint64_t sub_2E0C8()
{
  result = qword_A5758;
  if (!qword_A5758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A5758);
  }

  return result;
}

uint64_t sub_2E11C(char a1)
{
  if (a1)
  {
    return 0x4E74756F6B726F77;
  }

  else
  {
    return 0xD00000000000003DLL;
  }
}

uint64_t sub_2E160(uint64_t a1)
{
  if (sub_72800() == 0xD00000000000003DLL && 0x800000000007DCA0 == v2)
  {
  }

  else
  {
    v4 = sub_73DB0();

    if ((v4 & 1) == 0)
    {
      v5 = sub_72820();
      sub_2E638(v5);
      (*(v6 + 8))(a1);
      return 0;
    }
  }

  v8 = sub_72810();
  if (!v8)
  {
    v11 = sub_72820();
    sub_2E638(v11);
    (*(v12 + 8))(a1);
    v14 = 0u;
    v15 = 0u;
    goto LABEL_15;
  }

  sub_6CDBC(0x4E74756F6B726F77, 0xEB00000000656D61, v8, &v14);

  v9 = sub_72820();
  sub_2E638(v9);
  (*(v10 + 8))(a1);
  if (!*(&v15 + 1))
  {
LABEL_15:
    sub_2E308(&v14);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v13;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2E308(uint64_t a1)
{
  v2 = sub_506C(&qword_A42F0, &qword_77260);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2E370(void *a1, uint64_t a2, uint64_t a3)
{
  sub_2E534();
  v6 = sub_31BB8();
  sub_506C(&qword_A5768, &unk_77268);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_74B40;
  sub_73B30();
  *(inited + 96) = sub_506C(&qword_A6D00, &unk_75D30);
  *(inited + 72) = a2;
  *(inited + 80) = a3;

  v8 = sub_73750();
  sub_31C68(v8, v6);
  v9 = objc_opt_self();
  v10 = a1[4];
  sub_7C78(a1, a1[3]);
  v11 = sub_71F20();
  v12 = [v9 runSiriKitExecutorCommandWithContext:v11 payload:v6];

  v13 = [v9 wrapCommandInStartLocalRequest:v12];
  v14 = sub_73A50();

  return v14;
}

unint64_t sub_2E534()
{
  result = qword_A5760;
  if (!qword_A5760)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_A5760);
  }

  return result;
}

__n128 sub_2E578(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2E584(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2E5D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void *sub_2E6AC()
{
  sub_506C(&qword_A3FA0, qword_74FD0);
  v1 = swift_allocObject();
  v2 = v1;
  *(v1 + 16) = xmmword_772F0;
  *(v1 + 32) = 0x6E69577473726966;
  *(v1 + 40) = 0xEF657A6953776F64;
  if (*(v0 + 8))
  {
    v3 = 0;
    v4 = 0;
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  else
  {
    v3 = *v0;
    v4 = &type metadata for Double;
  }

  *(v1 + 48) = v3;
  *(v1 + 72) = v4;
  strcpy((v1 + 80), "isConclusion");
  *(v1 + 93) = 0;
  *(v1 + 94) = -5120;
  *(v1 + 96) = *(v0 + 9);
  *(v1 + 120) = &type metadata for Bool;
  strcpy((v1 + 128), "isFirstWindow");
  *(v1 + 142) = -4864;
  *(v1 + 144) = *(v0 + 10);
  *(v1 + 168) = &type metadata for Bool;
  strcpy((v1 + 176), "isLastWindow");
  *(v1 + 189) = 0;
  *(v1 + 190) = -5120;
  *(v1 + 192) = *(v0 + 11);
  *(v1 + 216) = &type metadata for Bool;
  *(v1 + 224) = 0xD000000000000016;
  *(v1 + 232) = 0x800000000007DDB0;
  *(v1 + 240) = *(v0 + 12);
  *(v1 + 264) = &type metadata for Bool;
  *(v1 + 272) = 0x736D657469;
  *(v1 + 280) = 0xE500000000000000;
  v5 = *(v0 + 16);
  v6 = sub_506C(&qword_A5998, &qword_77460);
  v2[36] = v5;
  v2[39] = v6;
  v2[40] = 0xD000000000000013;
  v2[41] = 0x800000000007DDD0;
  if (*(v0 + 32))
  {
    v7 = 0;
    v8 = 0;
    v2[43] = 0;
    v2[44] = 0;
  }

  else
  {
    v7 = *(v0 + 24);
    v8 = &type metadata for Double;
  }

  v2[42] = v7;
  v2[45] = v8;
  v2[46] = 0x6574496C61746F74;
  v2[47] = 0xEA0000000000736DLL;
  if (*(v0 + 48))
  {
    v9 = 0;
    v10 = 0;
    v2[49] = 0;
    v2[50] = 0;
  }

  else
  {
    v9 = *(v0 + 40);
    v10 = &type metadata for Double;
  }

  v2[48] = v9;
  v2[51] = v10;
  v2[52] = 0x6953776F646E6977;
  v2[53] = 0xEA0000000000657ALL;
  if (*(v0 + 64))
  {
    v11 = 0;
    v12 = 0;
    v2[55] = 0;
    v2[56] = 0;
  }

  else
  {
    v11 = *(v0 + 56);
    v12 = &type metadata for Double;
  }

  v2[54] = v11;
  v2[57] = v12;
  sub_301CC(v0, v14);
  return v2;
}

uint64_t sub_2E924()
{
  v1 = sub_506C(&qword_A3F98, qword_75450);
  sub_B1C0(v1);
  v3 = *(v2 + 64);
  sub_303DC();
  __chkstk_darwin(v4);
  v6 = &v23 - v5;
  sub_506C(&qword_A3FA0, qword_74FD0);
  v7 = swift_allocObject();
  sub_302B0(v7, xmmword_77300);
  sub_3039C();
  sub_5AEC(v8, v9, v10, qword_75450);
  v11 = sub_73350();
  if (sub_5124(v6, 1, v11) == 1)
  {
    sub_5B50(v6, &qword_A3F98, qword_75450);
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
  }

  else
  {
    *(v7 + 72) = v11;
    sub_5BAC((v7 + 48));
    sub_5C0C(v11);
    v13 = *(v12 + 32);
    sub_3039C();
    v14();
  }

  *(v7 + 80) = 0x656369766564;
  *(v7 + 88) = 0xE600000000000000;
  v15 = type metadata accessor for WorkoutCancelErrorWithCodeParameters(0);
  v16 = *(v0 + *(v15 + 20));
  if (v16)
  {
    v17 = sub_73360();
    v18 = v16;
  }

  else
  {
    v18 = 0;
    v17 = 0;
    *(v7 + 104) = 0;
    *(v7 + 112) = 0;
  }

  *(v7 + 96) = v18;
  *(v7 + 120) = v17;
  *(v7 + 128) = 0x646F43726F727265;
  *(v7 + 136) = 0xE900000000000065;
  v19 = (v0 + *(v15 + 24));
  if (v19[1])
  {
    v20 = 0;
    *(v7 + 152) = 0;
    *(v7 + 160) = 0;
    v21 = 0;
  }

  else
  {
    v21 = *v19;
    v20 = &type metadata for Double;
  }

  *(v7 + 144) = v21;
  *(v7 + 168) = v20;

  return v7;
}

uint64_t sub_2EB08()
{
  v1 = v0;
  v2 = sub_506C(&qword_A3F98, qword_75450);
  sub_B1C0(v2);
  v4 = *(v3 + 64);
  sub_303DC();
  __chkstk_darwin(v5);
  v7 = &v12 - v6;
  sub_506C(&qword_A3FA0, qword_74FD0);
  v8 = swift_allocObject();
  sub_302B0(v8, xmmword_74B40);
  sub_5AEC(v1, v7, &qword_A3F98, qword_75450);
  v9 = sub_73350();
  if (sub_5124(v7, 1, v9) == 1)
  {
    sub_5B50(v7, &qword_A3F98, qword_75450);
    *(v8 + 48) = 0u;
    *(v8 + 64) = 0u;
  }

  else
  {
    *(v8 + 72) = v9;
    sub_5BAC((v8 + 48));
    sub_5C0C(v9);
    (*(v10 + 32))();
  }

  return v8;
}

uint64_t sub_2EC50()
{
  v1 = sub_506C(&qword_A3F98, qword_75450);
  sub_B1C0(v1);
  v3 = *(v2 + 64);
  sub_303DC();
  __chkstk_darwin(v4);
  v6 = &v18 - v5;
  sub_506C(&qword_A3FA0, qword_74FD0);
  v7 = swift_allocObject();
  sub_302B0(v7, xmmword_77300);
  sub_3039C();
  sub_5AEC(v8, v9, v10, qword_75450);
  v11 = sub_73350();
  if (sub_5124(v6, 1, v11) == 1)
  {
    sub_5B50(v6, &qword_A3F98, qword_75450);
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
  }

  else
  {
    *(v7 + 72) = v11;
    sub_5BAC((v7 + 48));
    sub_5C0C(v11);
    v13 = *(v12 + 32);
    sub_3039C();
    v14();
  }

  *(v7 + 80) = 0x5074737269467369;
  *(v7 + 88) = 0xEF70704179747261;
  v15 = type metadata accessor for WorkoutCancelIntentHandledResponseParameters(0);
  *(v7 + 96) = *(v0 + *(v15 + 20));
  *(v7 + 120) = &type metadata for Bool;
  strcpy((v7 + 128), "isPunchingOut");
  *(v7 + 142) = -4864;
  v16 = *(v0 + *(v15 + 24));
  *(v7 + 168) = &type metadata for Bool;
  *(v7 + 144) = v16;
  return v7;
}

uint64_t sub_2EE04()
{
  sub_7F1C();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = type metadata accessor for WorkoutCancelErrorWithCodeParameters(0);
  v1[5] = v4;
  sub_B1C0(v4);
  v6 = *(v5 + 64) + 15;
  v1[6] = swift_task_alloc();
  sub_7F10();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_2EE90()
{
  sub_303D0();
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[2];
  v3 = v0[3];
  v5 = sub_73350();
  sub_303A8(v5, v6, v7, v5);
  *(v1 + *(v2 + 20)) = 0;
  v8 = v1 + *(v2 + 24);
  *v8 = 0;
  *(v8 + 8) = 1;
  v4(v1);
  v0[7] = sub_2E924();
  sub_3037C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v12 = v9;
  v10 = swift_task_alloc();
  v0[8] = v10;
  *v10 = v0;
  sub_30354(v10);

  return v12(0xD00000000000001BLL);
}

uint64_t sub_2EF98()
{
  sub_303D0();
  sub_3038C();
  v4 = v3;
  sub_7F04();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  sub_7F04();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_7F10();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_2F0CC()
{
  sub_7F1C();
  sub_302FC();

  v0 = sub_303E8();

  return v1(v0);
}

uint64_t sub_2F128()
{
  sub_7F1C();
  sub_302FC();

  v1 = *(v0 + 8);
  v2 = *(v0 + 72);

  return v1();
}

uint64_t sub_2F18C()
{
  sub_7F1C();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = type metadata accessor for WorkoutCancelUnsupportedSlotValueParameters(0);
  sub_B1C0(v4);
  v6 = *(v5 + 64) + 15;
  v1[5] = swift_task_alloc();
  sub_7F10();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_2F214()
{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  v4 = sub_73350();
  sub_303A8(v4, v5, v6, v4);
  v3(v1);
  v0[6] = sub_2EB08();
  sub_3037C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v10 = v7;
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  sub_30354(v8);

  return v10(0xD000000000000022);
}

uint64_t sub_2F2FC()
{
  sub_303D0();
  sub_3038C();
  v4 = v3;
  sub_7F04();
  *v5 = v4;
  v7 = *(v6 + 56);
  v8 = *(v6 + 48);
  v9 = *v2;
  sub_7F04();
  *v10 = v9;
  *(v4 + 64) = v0;

  if (!v0)
  {
    *(v4 + 72) = v1;
  }

  sub_7F10();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_2F430()
{
  sub_7F1C();
  sub_302D0();

  v1 = *(v0 + 8);
  v2 = *(v0 + 72);

  return v1(v2);
}

uint64_t sub_2F498()
{
  sub_7F1C();
  sub_302D0();

  v1 = *(v0 + 8);
  v2 = *(v0 + 64);

  return v1();
}

uint64_t sub_2F4FC()
{
  sub_7F1C();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 16) = v3;
  *(v1 + 89) = v4;
  *(v1 + 88) = v5;
  v6 = type metadata accessor for WorkoutCancelIntentHandledResponseParameters(0);
  *(v1 + 40) = v6;
  sub_B1C0(v6);
  v8 = *(v7 + 64) + 15;
  *(v1 + 48) = swift_task_alloc();
  sub_7F10();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_2F590()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 89);
  v6 = *(v0 + 88);
  v7 = sub_73350();
  sub_303A8(v7, v8, v9, v7);
  *(v1 + *(v2 + 20)) = v6;
  *(v1 + *(v2 + 24)) = v5;
  v4(v1);
  *(v0 + 56) = sub_2EC50();
  sub_3037C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v13 = v10;
  v11 = swift_task_alloc();
  *(v0 + 64) = v11;
  *v11 = v0;
  sub_30354(v11);

  return v13(0xD000000000000023);
}

uint64_t sub_2F69C()
{
  sub_303D0();
  sub_3038C();
  v4 = v3;
  sub_7F04();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  sub_7F04();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_7F10();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_2F7D0()
{
  sub_7F1C();
  sub_30328();

  v0 = sub_303E8();

  return v1(v0);
}

uint64_t sub_2F82C()
{
  sub_7F1C();
  sub_30328();

  v1 = *(v0 + 8);
  v2 = *(v0 + 72);

  return v1();
}

uint64_t sub_2F890(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_2F8E4(a1, a2);
}

uint64_t sub_2F8E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_73390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_506C(&qword_A3F90, &unk_74FC0);
  sub_B1C0(v7);
  v9 = *(v8 + 64);
  sub_303DC();
  __chkstk_darwin(v10);
  sub_5AEC(a1, &v16 - v11, &qword_A3F90, &unk_74FC0);
  v12 = *(v5 + 16);
  sub_3039C();
  v13();
  v14 = sub_73290();
  (*(v5 + 8))(a2, v4);
  sub_5B50(a1, &qword_A3F90, &unk_74FC0);
  return v14;
}

uint64_t sub_2FAAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_5C0C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2FB28(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2FB74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_506C(&qword_A3F98, qword_75450);
  v7 = sub_117C4(v6);
  if (*(v8 + 84) == a2)
  {

    return sub_5124(a1, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_2FC48(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_303C4();
  v8 = sub_506C(&qword_A3F98, qword_75450);
  result = sub_117C4(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = sub_30368();

    return sub_7CC4(v11, v12, v13, v14);
  }

  else
  {
    *(v5 + *(a4 + 20)) = v4;
  }

  return result;
}

void sub_2FCE8()
{
  sub_2FDBC(319, &qword_A5828, &type metadata accessor for SpeakableString);
  if (v0 <= 0x3F)
  {
    sub_2FDBC(319, &qword_A5830, &type metadata accessor for SirikitDeviceState);
    if (v1 <= 0x3F)
    {
      sub_2FE10();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2FDBC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_73A90();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2FE10()
{
  if (!qword_A5838)
  {
    v0 = sub_73A90();
    if (!v1)
    {
      atomic_store(v0, &qword_A5838);
    }
  }
}

uint64_t sub_2FE74()
{
  sub_303C4();
  v2 = sub_506C(&qword_A3F98, qword_75450);

  return sub_5124(v1, v0, v2);
}

uint64_t sub_2FED8()
{
  sub_303C4();
  sub_506C(&qword_A3F98, qword_75450);
  v0 = sub_30368();

  return sub_7CC4(v0, v1, v2, v3);
}

void sub_2FF20()
{
  sub_2FDBC(319, &qword_A5828, &type metadata accessor for SpeakableString);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_2FFBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_506C(&qword_A3F98, qword_75450);
  v7 = sub_117C4(v6);
  if (*(v8 + 84) == a2)
  {

    return sub_5124(a1, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
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

uint64_t sub_30094(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_303C4();
  v8 = sub_506C(&qword_A3F98, qword_75450);
  result = sub_117C4(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = sub_30368();

    return sub_7CC4(v11, v12, v13, v14);
  }

  else
  {
    *(v5 + *(a4 + 20)) = v4 + 1;
  }

  return result;
}

void sub_30134()
{
  sub_2FDBC(319, &qword_A5828, &type metadata accessor for SpeakableString);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_3020C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 65))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_3024C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 *sub_302B0(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x656D614E707061;
  result[2].n128_u64[1] = 0xE700000000000000;
  return result;
}

uint64_t sub_302D0()
{
  v2 = *(v0 + 40);

  return sub_2FAAC(v2, type metadata accessor for WorkoutCancelUnsupportedSlotValueParameters);
}

uint64_t sub_302FC()
{
  v2 = *(v0 + 48);

  return sub_2FAAC(v2, type metadata accessor for WorkoutCancelErrorWithCodeParameters);
}

uint64_t sub_30328()
{
  v2 = *(v0 + 48);

  return sub_2FAAC(v2, type metadata accessor for WorkoutCancelIntentHandledResponseParameters);
}

uint64_t sub_30354(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 32);
  return result;
}

uint64_t sub_3037C@<X0>(int *a1@<X8>)
{
  result = a1[1];
  v2 = a1 + *a1;
  return result;
}

uint64_t sub_303A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_7CC4(v4, 1, 1, a4);
}

uint64_t sub_303FC@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v6 = sub_72240();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = sub_72230();
  a1[6] = v6;
  a1[7] = &protocol witness table for ResponseFactory;
  a1[3] = v9;
  result = sub_73750();
  *a1 = 0xD000000000000012;
  a1[1] = 0x800000000007D620;
  a1[2] = v5;
  a1[8] = result;
  return result;
}

uint64_t type metadata accessor for EndWorkoutContinueInAppStrategy()
{
  result = qword_A59C8;
  if (!qword_A59C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_3054C()
{
  v1 = v0;
  v2 = sub_506C(&qword_A5B40, qword_77590);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v35 - v4;
  v6 = sub_73720();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v35 - v12;
  v35[0] = [objc_allocWithZone(INFERENCESchemaINFERENCEWorkoutsAppSelectionGroundTruthGenerated) init];
  if (v35[0])
  {
    v14 = [objc_allocWithZone(INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingIndependentSignals) init];
    if (v14)
    {
      v15 = v14;
      [v35[0] setInferenceWorkoutsAppSelectionTrainingIndependentSignals:v14];
      v39 = v1;
      type metadata accessor for WorkoutsSignalValuesProcessor();
      sub_30DCC();
      v16 = sub_72920();
      [v15 setCommonIndependent:v16];

      v17 = [v15 commonIndependent];
      if (v17)
      {
        v18 = v17;
        [v17 setAppResolutionType:*(v1 + 16)];
      }
    }

    else
    {
      v23 = sub_736E0();
      swift_beginAccess();
      (*(v7 + 16))(v13, v23, v6);
      v24 = sub_73710();
      v25 = sub_73980();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_0, v24, v25, "WorkoutMessageBuilder: No independent values", v26, 2u);
      }

      (*(v7 + 8))(v13, v6);
    }

    v38 = v1;
    v27 = enum case for DomainUseCase.startWorkout(_:);
    v28 = sub_728B0();
    (*(*(v28 - 8) + 104))(v5, v27, v28);
    sub_7CC4(v5, 0, 1, v28);
    type metadata accessor for WorkoutsSignalValuesProcessor();
    sub_30DCC();
    v29 = sub_72910();
    sub_30E20(v5);
    v30 = _swiftEmptyArrayStorage;
    v38 = _swiftEmptyArrayStorage;
    v31 = sub_114FC(v29);
    for (i = 0; ; ++i)
    {
      if (v31 == i)
      {

        sub_30E88(v30, v35[0]);
        return;
      }

      if ((v29 & 0xC000000000000001) != 0)
      {
        v33 = sub_73B70();
      }

      else
      {
        if (i >= *(&dword_10 + (v29 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_26;
        }

        v33 = *(v29 + 8 * i + 32);
      }

      v34 = v33;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v37 = v33;
      sub_30A58(&v37, v1, &v36);

      if (v36)
      {
        sub_73850();
        if (*(&dword_10 + (v38 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v38 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_73890();
        }

        sub_738C0();
        v30 = v38;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
    v19 = sub_736E0();
    swift_beginAccess();
    (*(v7 + 16))(v11, v19, v6);
    v20 = sub_73710();
    v21 = sub_73980();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_0, v20, v21, "WorkoutMessageBuilder: Could not create Message class.", v22, 2u);
    }

    (*(v7 + 8))(v11, v6);
  }
}

id sub_30A58@<X0>(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_73720();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = [objc_allocWithZone(INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingDependentSignals) init];
  if (v12)
  {
    v13 = v12;
    v14 = sub_30F40(v11);
    v16 = v15;
    v17 = *(a2 + 24);
    v18 = sub_733B0();
    if (v16)
    {
      if (v19)
      {
        if (v14 == v18 && v16 == v19)
        {

          v21 = 1;
        }

        else
        {
          v21 = sub_73DB0();
        }
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      if (!v19)
      {
        v21 = 1;
        goto LABEL_17;
      }

      v21 = 0;
    }

LABEL_17:
    [v11 setIsResolvedApp:v21 & 1];
    v27 = sub_30F40(v11);
    if (v28)
    {
      v30[3] = v27;
      v30[4] = v28;
      v30[1] = 0x6C7070612E6D6F63;
      v30[2] = 0xE900000000000065;
      sub_30FA4();
      sub_30FF8();
      v29 = sub_73760();
    }

    else
    {
      v29 = 0;
    }

    [v11 setIsFirstPartyBundle:v29 & 1];
    result = [v13 setCommonDependent:v11];
    goto LABEL_21;
  }

  v22 = sub_736E0();
  swift_beginAccess();
  (*(v7 + 16))(v10, v22, v6);
  v23 = sub_73710();
  v24 = sub_73980();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_0, v23, v24, "WorkoutMessageBuilder: Could not create DependentSignals Message.", v25, 2u);
  }

  result = (*(v7 + 8))(v10, v6);
  v13 = 0;
LABEL_21:
  *a3 = v13;
  return result;
}

uint64_t sub_30D44()
{
  v1 = *(v0 + 24);

  return _swift_deallocClassInstance(v0, 32, 7);
}

void sub_30DA0(void *a1@<X8>)
{
  v3 = *v1;
  sub_3054C();
  *a1 = v4;
}

unint64_t sub_30DCC()
{
  result = qword_A5B48;
  if (!qword_A5B48)
  {
    type metadata accessor for WorkoutsSignalValuesProcessor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A5B48);
  }

  return result;
}

uint64_t sub_30E20(uint64_t a1)
{
  v2 = sub_506C(&qword_A5B40, qword_77590);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_30E88(uint64_t a1, void *a2)
{
  sub_30EFC();
  isa = sub_73860().super.isa;

  [a2 setInferenceWorkoutsAppSelectionTrainingDependentSignals:isa];
}

unint64_t sub_30EFC()
{
  result = qword_A5B50;
  if (!qword_A5B50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_A5B50);
  }

  return result;
}

uint64_t sub_30F40(void *a1)
{
  v1 = [a1 appBundleId];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_73790();

  return v3;
}

unint64_t sub_30FA4()
{
  result = qword_A5B58;
  if (!qword_A5B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A5B58);
  }

  return result;
}

unint64_t sub_30FF8()
{
  result = qword_A5B60;
  if (!qword_A5B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A5B60);
  }

  return result;
}

uint64_t type metadata accessor for HealthLabelsCATs()
{
  result = qword_A5B68;
  if (!qword_A5B68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_310D8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_3112C(a1, a2);
}

uint64_t sub_3112C(uint64_t a1, uint64_t a2)
{
  v4 = sub_73390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_506C(&qword_A3F90, &unk_74FC0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  sub_1828C(a1, &v14 - v11);
  (*(v5 + 16))(v8, a2, v4);
  v12 = sub_73290();
  (*(v5 + 8))(a2, v4);
  sub_2D9E0(a1);
  return v12;
}

uint64_t sub_312A0()
{
  if (qword_A38E0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_312FC()
{
  v0 = sub_72C60();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_72C50();
  qword_AE6F0 = result;
  return result;
}

uint64_t sub_31360(uint64_t a1, uint64_t a2)
{
  v4 = sub_731D0();

  return sub_5124(a1, a2, v4);
}

uint64_t sub_313BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_731D0();

  return sub_7CC4(a1, a2, a2, v4);
}

uint64_t type metadata accessor for DisambiguateAppNLIntent()
{
  result = qword_A5C20;
  if (!qword_A5C20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_31454()
{
  result = sub_731D0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_314C0()
{
  sub_506C(&qword_A5C68, qword_776C0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_74B40;
  if (qword_A38D0 != -1)
  {
    swift_once();
  }

  v1 = qword_AE6F0;
  *(v0 + 56) = sub_72C60();
  *(v0 + 64) = &protocol witness table for NonTerminalOntologyNode;
  *(v0 + 32) = v1;
  qword_A5BB8 = v0;
}

uint64_t sub_31578()
{
  if (qword_A38D8 != -1)
  {
    swift_once();
  }

  v0 = sub_72C80();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();

  result = sub_72C70();
  qword_A5BC0 = result;
  return result;
}

uint64_t sub_31618@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_731D0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_31698(uint64_t a1)
{
  v2 = sub_31818(&qword_A5C60);

  return NLIntentWrapper.traversableIntentNode.getter(a1, v2);
}

uint64_t sub_31700(uint64_t a1)
{
  v2 = sub_31818(&qword_A5C60);

  return NLIntentWrapper.traversableOntologyNode.getter(a1, v2);
}

uint64_t sub_31758(uint64_t a1)
{
  v2 = sub_31818(&qword_A5C60);

  return NLIntentWrapper.description.getter(a1, v2);
}

uint64_t sub_31818(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DisambiguateAppNLIntent();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_3185C(uint64_t a1)
{
  if (sub_72800() == 0xD000000000000039 && 0x800000000007DED0 == v2)
  {
  }

  else
  {
    v4 = sub_73DB0();

    if ((v4 & 1) == 0)
    {
      v5 = sub_72820();
      sub_2E638(v5);
      (*(v6 + 8))(a1);
      return 0;
    }
  }

  v8 = sub_72810();
  if (!v8)
  {
    v11 = sub_72820();
    sub_2E638(v11);
    (*(v12 + 8))(a1);
    v14 = 0u;
    v15 = 0u;
    goto LABEL_15;
  }

  sub_6CDBC(0x6449656C646E7562, 0xE800000000000000, v8, &v14);

  v9 = sub_72820();
  sub_2E638(v9);
  (*(v10 + 8))(a1);
  if (!*(&v15 + 1))
  {
LABEL_15:
    sub_2E308(&v14);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v13;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_319FC(void *a1, uint64_t a2, uint64_t a3)
{
  sub_2E534();
  v6 = sub_31BB8();
  sub_506C(&qword_A5768, &unk_77268);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_74B40;
  sub_73B30();
  *(inited + 96) = sub_506C(&qword_A6D00, &unk_75D30);
  *(inited + 72) = a2;
  *(inited + 80) = a3;

  v8 = sub_73750();
  sub_31C68(v8, v6);
  v9 = objc_opt_self();
  v10 = a1[4];
  sub_7C78(a1, a1[3]);
  v11 = sub_71F20();
  v12 = [v9 runSiriKitExecutorCommandWithContext:v11 payload:v6];

  v13 = [v9 wrapCommandInStartLocalRequest:v12];
  v14 = sub_73A50();

  return v14;
}

id sub_31BB8()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_73780();

  v2 = [v0 initWithIdentifier:v1];

  return v2;
}

uint64_t sub_31C2C(char a1)
{
  if (a1)
  {
    return 0x6449656C646E7562;
  }

  else
  {
    return 0xD000000000000039;
  }
}

void sub_31C68(uint64_t a1, void *a2)
{
  isa = sub_73740().super.isa;

  [a2 setUserData:isa];
}

uint64_t sub_31CE8()
{
  sub_3241C();
  v4 = v3[4];
  sub_7C78(v3, v3[3]);
  if (sub_71EF0())
  {

    return sub_31D94();
  }

  else
  {

    return sub_31ED8(v2, v1, v0);
  }
}

uint64_t sub_31D94()
{
  sub_3241C();
  v3 = sub_114FC();
  if (!v3)
  {
LABEL_8:
    sub_72840();
    sub_7C78(v11, v11[3]);
    sub_71ED0();
    v10 = sub_71E50();

    sub_AE38(v11);
    return v10;
  }

  v4 = v3;
  v11[0] = &_swiftEmptyArrayStorage;
  result = sub_73BE0();
  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = sub_73B70();
      }

      else
      {
        v7 = *(v2 + 8 * v6 + 32);
      }

      v8 = v7;
      ++v6;
      sub_320EC(v7, v1, v0);

      sub_73BB0();
      v9 = *(v11[0] + 16);
      sub_73BF0();
      sub_73C00();
      sub_73BC0();
    }

    while (v4 != v6);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_31ED8(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_728A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_114FC(a1);
  if (!v11)
  {
LABEL_9:
    sub_72840();
    sub_7C78(v22, v22[3]);
    sub_71EC0();
    (*(v7 + 104))(v10, enum case for ImageSize.default(_:), v6);
    v18 = sub_71E40();

    (*(v7 + 8))(v10, v6);
    sub_AE38(v22);
    return v18;
  }

  v12 = v11;
  v22[0] = &_swiftEmptyArrayStorage;
  result = sub_73BE0();
  if ((v12 & 0x8000000000000000) == 0)
  {
    v19 = v10;
    v20 = v7;
    v21 = v6;
    v14 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v15 = sub_73B70();
      }

      else
      {
        v15 = *(a1 + 8 * v14 + 32);
      }

      v16 = v15;
      ++v14;
      sub_320EC(v15, a2, a3);

      sub_73BB0();
      v17 = *(v22[0] + 16);
      sub_73BF0();
      sub_73C00();
      sub_73BC0();
    }

    while (v12 != v14);
    v6 = v21;
    v10 = v19;
    v7 = v20;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_320EC(void *a1, uint64_t a2, char a3)
{
  sub_73970();
  v5 = *sub_734D0();
  sub_506C(&qword_A3BA8, &unk_76BA0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_74B40;
  v7 = v5;
  v8 = [a1 description];
  v9 = sub_73790();
  v11 = v10;

  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_5258();
  *(v6 + 32) = v9;
  *(v6 + 40) = v11;
  sub_73620();

  sub_71E30();
  v12 = [a1 spokenPhrase];
  sub_73790();

  sub_71E00();

  sub_71E10();

  v13 = sub_71E20();

  v14 = sub_72500();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  sub_724F0();
  sub_5C64(a3);
  sub_724C0();

  v17 = [a1 spokenPhrase];
  sub_73790();

  sub_724C0();

  sub_733B0();
  sub_724D0();

  sub_724E0();

  sub_506C(&unk_A63F0, &unk_760C0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_752C0;
  *(v18 + 32) = v13;
  v19 = sub_71DC0();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  return sub_71DB0();
}

uint64_t type metadata accessor for HealthWorkoutEndCATs()
{
  result = qword_A5D08;
  if (!qword_A5D08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_32528(uint64_t a1, uint64_t a2)
{
  v4 = sub_506C(&qword_A3F98, qword_75450);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v16 - v9;
  sub_506C(&qword_A3FA0, qword_74FD0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_74F60;
  *(v11 + 32) = 1953459315;
  *(v11 + 40) = 0xE400000000000000;
  sub_5AEC(a1, v10, &qword_A3F98, qword_75450);
  v12 = sub_73350();
  if (sub_5124(v10, 1, v12) == 1)
  {
    sub_5B50(v10, &qword_A3F98, qword_75450);
    *(v11 + 48) = 0u;
    *(v11 + 64) = 0u;
  }

  else
  {
    *(v11 + 72) = v12;
    sub_5BAC((v11 + 48));
    sub_5C0C(v12);
    (*(v13 + 32))();
  }

  *(v11 + 80) = 0x4E74756F6B726F77;
  *(v11 + 88) = 0xEB00000000656D61;
  sub_5AEC(a2, v8, &qword_A3F98, qword_75450);
  if (sub_5124(v8, 1, v12) == 1)
  {
    sub_5B50(v8, &qword_A3F98, qword_75450);
    *(v11 + 96) = 0u;
    *(v11 + 112) = 0u;
  }

  else
  {
    *(v11 + 120) = v12;
    sub_5BAC((v11 + 96));
    sub_5C0C(v12);
    (*(v14 + 32))();
  }

  sub_732A0();
}

uint64_t sub_327C0(uint64_t a1)
{
  v2 = sub_506C(&qword_A3F98, qword_75450);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v10 - v4;
  sub_506C(&qword_A3FA0, qword_74FD0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_74B40;
  *(v6 + 32) = 0x656D614E707061;
  *(v6 + 40) = 0xE700000000000000;
  sub_5AEC(a1, v5, &qword_A3F98, qword_75450);
  v7 = sub_73350();
  if (sub_5124(v5, 1, v7) == 1)
  {
    sub_5B50(v5, &qword_A3F98, qword_75450);
    *(v6 + 48) = 0u;
    *(v6 + 64) = 0u;
  }

  else
  {
    *(v6 + 72) = v7;
    sub_5BAC((v6 + 48));
    sub_5C0C(v7);
    (*(v8 + 32))();
  }

  sub_732A0();
}

uint64_t sub_3295C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_329B0(a1, a2);
}

uint64_t sub_329B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_73390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_506C(&qword_A3F90, &unk_74FC0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  sub_5AEC(a1, &v14 - v11, &qword_A3F90, &unk_74FC0);
  (*(v5 + 16))(v8, a2, v4);
  v12 = sub_73290();
  (*(v5 + 8))(a2, v4);
  sub_5B50(a1, &qword_A3F90, &unk_74FC0);
  return v12;
}

unint64_t sub_32B44(char a1)
{
  result = 0x68746C616568;
  switch(a1)
  {
    case 1:
      result = 0x655668746C616568;
      break;
    case 2:
      result = 0x6F4E68746C616568;
      break;
    case 3:
      result = 0x634168746C616568;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0x614D68746C616568;
      break;
    case 7:
      result = 0xD000000000000016;
      break;
    case 8:
    case 17:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 7368801;
      break;
    case 10:
      result = 0x655268746C616568;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0xD000000000000016;
      break;
    case 13:
      result = 0x656D614E707061;
      break;
    case 14:
      result = 0x6972747441707061;
      break;
    case 15:
      result = 0x746163696C707061;
      break;
    case 16:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_32DAC(char a1)
{
  sub_73B60(20);

  sub_32B44(a1);
  v2 = sub_73800();
  v4 = v3;

  v7._countAndFlagsBits = v2;
  v7._object = v4;
  sub_73820(v7);

  v8._countAndFlagsBits = 0xD000000000000012;
  v8._object = 0x800000000007E150;
  sub_73820(v8);
}

uint64_t getEnumTagSinglePayload for IntentConversionError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for IntentConversionError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x32FC8);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_33004()
{
  result = qword_A5D58;
  if (!qword_A5D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A5D58);
  }

  return result;
}

id sub_33058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v163 = a3;
  v160 = a2;
  v161 = a4;
  v162 = a1;
  v157 = sub_72820();
  v4 = sub_5394(v157);
  v155 = v5;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  sub_11544();
  v148 = v8;
  sub_11658();
  __chkstk_darwin(v9);
  v154 = &v141 - v10;
  sub_11658();
  __chkstk_darwin(v11);
  v156 = &v141 - v12;
  v13 = sub_506C(&qword_A42E0, &unk_77840);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v147 = &v141 - v15;
  v146 = sub_729E0();
  v16 = sub_5394(v146);
  v145 = v17;
  v19 = *(v18 + 64);
  __chkstk_darwin(v16);
  sub_C2A4();
  v22 = (v21 - v20);
  v150 = sub_72AB0();
  v23 = sub_5394(v150);
  v143 = v24;
  v26 = *(v25 + 64);
  __chkstk_darwin(v23);
  sub_C2A4();
  v144 = v28 - v27;
  v153 = sub_72880();
  v29 = sub_5394(v153);
  v149 = v30;
  v32 = *(v31 + 64);
  __chkstk_darwin(v29);
  sub_C2A4();
  v151 = v34 - v33;
  v35 = sub_73720();
  v158 = sub_5394(v35);
  v159 = v36;
  v38 = *(v37 + 64);
  __chkstk_darwin(v158);
  sub_11544();
  v152 = v39;
  sub_11658();
  __chkstk_darwin(v40);
  v142 = &v141 - v41;
  sub_11658();
  __chkstk_darwin(v42);
  v44 = &v141 - v43;
  v45 = type metadata accessor for HealthNLIntent(0);
  v46 = *(*(v45 - 8) + 64);
  __chkstk_darwin(v45 - 8);
  sub_C2A4();
  v49 = v48 - v47;
  v50 = sub_731D0();
  v51 = sub_5394(v50);
  v53 = v52;
  v55 = *(v54 + 64);
  __chkstk_darwin(v51);
  sub_C2A4();
  v58 = v57 - v56;
  v59 = sub_72830();
  v60 = sub_5394(v59);
  v62 = v61;
  v64 = *(v63 + 64);
  __chkstk_darwin(v60);
  sub_C2A4();
  v67 = v66 - v65;
  (*(v62 + 16))(v66 - v65, v162, v59);
  v68 = (*(v62 + 88))(v67, v59);
  if (v68 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v69 = sub_34794();
    v70(v69);
    (*(v53 + 32))(v58, v67, v50);
    (*(v53 + 16))(v49, v58, v50);
    v71 = v164;
    v72 = sub_33D50(v160, v163, v161);
    if (v71)
    {
      sub_BFD8(v49);
      (*(v53 + 8))(v58, v50);
    }

    else
    {
      v110 = v72;
      sub_BFD8(v49);
      v111 = sub_736E0();
      sub_34788();
      swift_beginAccess();
      v112 = v158;
      (*(v159 + 16))(v44, v111, v158);
      v22 = v110;
      v113 = sub_73710();
      v114 = sub_73970();

      if (os_log_type_enabled(v113, v114))
      {
        v115 = sub_221D8();
        v164 = 0;
        v116 = v115;
        v117 = swift_slowAlloc();
        *v116 = 138412290;
        *(v116 + 4) = v22;
        *v117 = v22;
        v118 = v22;
        _os_log_impl(&dword_0, v113, v114, "Converted intent to: %@", v116, 0xCu);
        sub_AEF4(v117, &qword_A4060, &qword_75440);
        v112 = v158;
        sub_34770();

        sub_34770();
      }

      (*(v159 + 8))(v44, v112);
      (*(v53 + 8))(v58, v50);
    }

    return v22;
  }

  v74 = v163;
  v73 = v164;
  if (v68 == enum case for Parse.directInvocation(_:))
  {
    v75 = sub_34794();
    v76(v75);
    v77 = v156;
    v78 = v67;
    v79 = v155;
    v80 = v157;
    (*(v155 + 32))(v156, v78, v157);
    v81 = *(v79 + 16);
    v82 = v154;
    v81(v154, v77, v80);
    v83 = sub_2E160(v82);
    if (v84 == 1)
    {
      v85 = sub_736F0();
      sub_34788();
      swift_beginAccess();
      v86 = v159;
      v87 = v152;
      v88 = v85;
      v89 = v77;
      v90 = v158;
      (*(v159 + 16))(v152, v88, v158);
      v91 = v148;
      v81(v148, v89, v80);
      v92 = sub_73710();
      v22 = sub_73980();
      if (os_log_type_enabled(v92, v22))
      {
        v93 = sub_221D8();
        v94 = v86;
        v95 = swift_slowAlloc();
        v165 = v95;
        *v93 = 136315138;
        v96 = sub_72800();
        v98 = v97;
        v99 = sub_347A4();
        v91(v99, v157);
        v100 = sub_19144(v96, v98, &v165);

        *(v93 + 4) = v100;
        _os_log_impl(&dword_0, v92, v22, "Unknow DirectInvocation with identifier: %s", v93, 0xCu);
        sub_AE38(v95);
        sub_34770();

        sub_34770();

        (*(v94 + 8))(v152, v158);
        v80 = v157;
      }

      else
      {

        v122 = sub_347A4();
        v91(v122, v80);
        (*(v86 + 8))(v87, v90);
      }

      sub_345F0();
      sub_3477C();
      swift_allocError();
      *v123 = 2;
      swift_willThrow();
      v91(v156, v80);
    }

    else
    {
      v119 = v83;
      v120 = v84;
      v22 = sub_342F8(v83, v84, v160, v74, v161);
      sub_10328(v119, v120);
      (*(v79 + 8))(v77, v80);
    }

    return v22;
  }

  if (v68 != enum case for Parse.uso(_:))
  {
    sub_345F0();
    sub_3477C();
    swift_allocError();
    *v121 = 3;
    swift_willThrow();
    (*(v62 + 8))(v67, v59);
    return v22;
  }

  v101 = sub_34794();
  v102(v101);
  v103 = v149;
  v104 = v151;
  v105 = v153;
  (*(v149 + 32))(v151, v67, v153);
  sub_72870();
  v106 = sub_729D0();
  (*(v145 + 8))(v22, v146);
  v107 = v147;
  sub_5F1B0(v106, v147);
  v108 = v107;

  v109 = v107;
  v22 = v150;
  if (sub_5124(v109, 1, v150) == 1)
  {
    sub_AEF4(v108, &qword_A42E0, &unk_77840);
LABEL_21:
    sub_345F0();
    sub_3477C();
    swift_allocError();
    *v127 = 0;
    swift_willThrow();
    (*(v103 + 8))(v104, v105);
    return v22;
  }

  v124 = v143;
  v125 = v144;
  (*(v143 + 32))(v144, v108, v22);
  v126 = sub_72C00();
  if (v73)
  {

    (*(v124 + 8))(v125, v22);
LABEL_20:
    v105 = v153;
    goto LABEL_21;
  }

  v129 = v126;
  if (!sub_114FC())
  {
    (*(v124 + 8))(v144, v22);

    goto LABEL_20;
  }

  sub_11500(0, (v129 & 0xC000000000000001) == 0, v129);
  if ((v129 & 0xC000000000000001) != 0)
  {
    v130 = sub_73B70();
  }

  else
  {
    v130 = *(v129 + 32);
  }

  v131 = v158;
  v132 = v161;

  v133 = sub_72A60();
  v134 = sub_340B0(v130, v160, v133 & 1, v74, v132);
  v135 = sub_736E0();
  sub_34788();
  swift_beginAccess();
  (*(v159 + 16))(v142, v135, v131);
  v22 = v134;
  v136 = sub_73710();
  v137 = sub_73970();

  if (os_log_type_enabled(v136, v137))
  {
    v138 = sub_221D8();
    v139 = swift_slowAlloc();
    *v138 = 138412290;
    *(v138 + 4) = v22;
    *v139 = v22;
    v140 = v22;
    _os_log_impl(&dword_0, v136, v137, "Converted intent to: %@", v138, 0xCu);
    sub_AEF4(v139, &qword_A4060, &qword_75440);
    v131 = v158;
    sub_34770();

    sub_34770();
  }

  (*(v159 + 8))(v142, v131);
  (*(v143 + 8))(v144, v150);
  (*(v103 + 8))(v151, v153);
  return v22;
}