uint64_t sub_18A8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_18E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_7270();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_19A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_7270();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1A5C()
{
  sub_3E7C(&qword_10268, &qword_7A00);
  sub_6F9C(&qword_10290, &qword_10268, &qword_7A00);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1AF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_3D30(&qword_103A0, &qword_7B20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B68()
{
  v1 = (type metadata accessor for DMCNavigationView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = sub_7270();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = v0 + v3 + v1[7];
  v8 = *(v7 + 8);

  v9 = *(v7 + 16);

  v10 = *(v0 + v3 + v1[8] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C7C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1CFC()
{
  result = qword_10260;
  if (!qword_10260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10260);
  }

  return result;
}

uint64_t sub_1D6C(uint64_t a1)
{
  v2 = *(*(sub_7230() - 8) + 64);
  __chkstk_darwin();
  v3 = sub_71E0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7500();
  sub_74F0();
  sub_74E0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_640C();
  v8 = [objc_allocWithZone(PSSpecifier) init];
  [v8 setProperty:a1 forKey:PSListControllerCellHighlightingSelectionInvocationRelayKey];
  sub_7210();
  sub_71D0();
  sub_7270();
  type metadata accessor for DMCNavigationView();
  sub_65B4(&qword_10278, &type metadata accessor for PreferencesControllerView);
  sub_65B4(&qword_10280, &type metadata accessor for DMCGenericViewControllerRecipe);
  sub_65B4(&qword_10288, type metadata accessor for DMCNavigationView);
  sub_7390();
  (*(v4 + 8))(v7, v3);
}

uint64_t sub_204C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_7270();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7500();
  sub_74F0();
  sub_74E0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = *(v5 + 16);
  v9(v8, a1, v4);
  v9(a2, v8, v4);
  v18 = sub_7260();
  v19 = v10;
  sub_73D0();
  v17 = v20;
  v11 = v21;
  v12 = type metadata accessor for DMCNavigationView();
  v13 = &a2[*(v12 + 20)];
  *v13 = v17;
  *(v13 + 2) = v11;
  LOBYTE(v18) = sub_7250();
  sub_73D0();
  (*(v5 + 8))(v8, v4);

  v15 = *(&v20 + 1);
  v16 = &a2[*(v12 + 24)];
  *v16 = v20;
  *(v16 + 1) = v15;
  return result;
}

uint64_t sub_2244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[31] = a2;
  v3[32] = a3;
  v3[30] = a1;
  v4 = *(*(sub_3D30(&qword_10298, &qword_7A20) - 8) + 64) + 15;
  v3[33] = swift_task_alloc();
  v5 = sub_7410();
  v3[34] = v5;
  v6 = *(v5 - 8);
  v3[35] = v6;
  v7 = *(v6 + 64) + 15;
  v3[36] = swift_task_alloc();
  v8 = *(*(sub_7540() - 8) + 64) + 15;
  v3[37] = swift_task_alloc();
  v9 = sub_7230();
  v3[38] = v9;
  v10 = *(v9 - 8);
  v3[39] = v10;
  v11 = *(v10 + 64) + 15;
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v12 = sub_7160();
  v3[42] = v12;
  v13 = *(v12 - 8);
  v3[43] = v13;
  v14 = *(v13 + 64) + 15;
  v3[44] = swift_task_alloc();
  v15 = sub_72D0();
  v3[45] = v15;
  v16 = *(v15 - 8);
  v3[46] = v16;
  v17 = *(v16 + 64) + 15;
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  v18 = sub_71C0();
  v3[49] = v18;
  v19 = *(v18 - 8);
  v3[50] = v19;
  v20 = *(v19 + 64) + 15;
  v3[51] = swift_task_alloc();
  v21 = *(*(sub_3D30(&qword_102A0, &qword_7A28) - 8) + 64) + 15;
  v3[52] = swift_task_alloc();
  v22 = sub_71B0();
  v3[53] = v22;
  v23 = *(v22 - 8);
  v3[54] = v23;
  v24 = *(v23 + 64) + 15;
  v3[55] = swift_task_alloc();
  v3[56] = sub_7500();
  v3[57] = sub_74F0();
  v26 = sub_74E0();

  return _swift_task_switch(sub_25C0, v26, v25);
}

uint64_t sub_25C0()
{
  v180 = v0;
  v2 = *(v0 + 456);
  v3 = *(v0 + 424);
  v4 = *(v0 + 432);
  v6 = *(v0 + 408);
  v5 = *(v0 + 416);
  v7 = *(v0 + 392);
  v8 = *(v0 + 400);
  v9 = *(v0 + 248);

  sub_7440();
  sub_7180();
  v11 = *(v8 + 8);
  v10 = v8 + 8;
  v11(v6, v7);
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    v12 = *(v0 + 384);
    v13 = *(v0 + 360);
    v14 = *(v0 + 368);
    v16 = *(v0 + 240);
    v15 = *(v0 + 248);
    sub_6DCC(*(v0 + 416), &qword_102A0, &qword_7A28);
    sub_7430();
    sub_7460();
    (*(v14 + 8))(v12, v13);
LABEL_101:
    v142 = *(v0 + 440);
    v143 = *(v0 + 408);
    v144 = *(v0 + 416);
    v146 = *(v0 + 376);
    v145 = *(v0 + 384);
    v147 = *(v0 + 352);
    v149 = *(v0 + 320);
    v148 = *(v0 + 328);
    v151 = *(v0 + 288);
    v150 = *(v0 + 296);
    v175 = *(v0 + 264);

    v152 = *(v0 + 8);

    return v152();
  }

  v17 = *(v0 + 376);
  v18 = *(v0 + 248);
  (*(*(v0 + 432) + 32))(*(v0 + 440), *(v0 + 416), *(v0 + 424));
  sub_7430();
  *(v0 + 136) = sub_7190();
  *(v0 + 144) = v19;
  countAndFlagsBits = v0 + 136;
  *(v0 + 152) = 47;
  *(v0 + 160) = 0xE100000000000000;
  sub_600C();
  v21 = sub_7550();

  v22 = *(v21 + 16);
  v23 = &_swiftEmptyArrayStorage;
  if (!v22)
  {
    v164 = &_swiftEmptyArrayStorage;
    goto LABEL_26;
  }

  v24 = 0;
  v25 = -v22;
  v26 = v21 + 40;
  v164 = &_swiftEmptyArrayStorage;
  do
  {
    v23 = (v26 + 16 * v24++);
    while (1)
    {
      if ((v24 - 1) >= *(v21 + 16))
      {
        __break(1u);
        goto LABEL_105;
      }

      v27 = *(v0 + 448);
      v1 = *(v23 - 1);
      v10 = *v23;

      countAndFlagsBits = sub_74F0();
      sub_74E0();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v28 = HIBYTE(v10) & 0xF;
      if ((v10 & 0x2000000000000000) == 0)
      {
        v28 = v1 & 0xFFFFFFFFFFFFLL;
      }

      if (!v28)
      {
        goto LABEL_7;
      }

      v29 = sub_74A0();
      v31 = v30;
      if (v1 != v29 || v10 != v30)
      {
        break;
      }

      v10 = v31;
LABEL_7:

LABEL_8:

      ++v24;
      v23 += 2;
      if (v25 + v24 == 1)
      {
        v23 = &_swiftEmptyArrayStorage;
        goto LABEL_26;
      }
    }

    v32 = sub_75E0();

    if (v32)
    {
      goto LABEL_8;
    }

    countAndFlagsBits = v164;
    v177[0]._countAndFlagsBits = v164;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_6214(0, v164[2] + 1, 1);
      countAndFlagsBits = v177[0]._countAndFlagsBits;
    }

    v26 = v21 + 40;
    v34 = *(countAndFlagsBits + 16);
    v33 = *(countAndFlagsBits + 24);
    if (v34 >= v33 >> 1)
    {
      sub_6214((v33 > 1), v34 + 1, 1);
      v26 = v21 + 40;
      countAndFlagsBits = v177[0]._countAndFlagsBits;
    }

    *(countAndFlagsBits + 16) = v34 + 1;
    v164 = countAndFlagsBits;
    v35 = countAndFlagsBits + 16 * v34;
    *(v35 + 32) = v1;
    *(v35 + 40) = v10;
    v23 = &_swiftEmptyArrayStorage;
  }

  while (v25 + v24);
LABEL_26:

  countAndFlagsBits = *(v0 + 440);
  if (!v164[2])
  {

    sub_71A0();
    if (v77)
    {
      v78 = *(v0 + 256);
      v79 = sub_7490();

      [v78 setSpecifierIdentifierToScrollAndHighlight:v79];
    }

    v81 = *(v0 + 432);
    v80 = *(v0 + 440);
    v82 = *(v0 + 424);
    v84 = *(v0 + 368);
    v83 = *(v0 + 376);
    v85 = *(v0 + 360);
    v86 = *(v0 + 240);
    sub_7460();
    (*(v84 + 8))(v83, v85);
    (*(v81 + 8))(v80, v82);
    goto LABEL_101;
  }

  v162 = v164[5];
  v163 = v164[4];

  v36 = sub_7170();
  if (v36)
  {
    v37 = v36;
  }

  else
  {
    v37 = &_swiftEmptyArrayStorage;
  }

  v173 = v37[2];
  if (!v173)
  {
    v39 = &_swiftEmptyDictionarySingleton;
LABEL_59:

    v87 = sub_74A0();
    v174 = v39;
    if (v39[2])
    {
      v89 = sub_58C0(v87, v88);
      v91 = v90;

      v10 = v162;
      if (v91)
      {
        sub_6234(v39[7] + 40 * v89, v0 + 56);
        v92 = swift_dynamicCast();
        if (v92)
        {
          v23 = *(v0 + 184);
        }

        else
        {
          v23 = 0;
        }

        if (v92)
        {
          countAndFlagsBits = *(v0 + 192);
        }

        else
        {
          countAndFlagsBits = 0;
        }
      }

      else
      {
        v23 = 0;
        countAndFlagsBits = 0;
      }
    }

    else
    {

      v23 = 0;
      countAndFlagsBits = 0;
      v10 = v162;
    }

    if (sub_74A0() == v163 && v93 == v10)
    {

LABEL_73:
      v95 = *(v0 + 328);
      v96 = *(v0 + 296);
      v97 = *(v0 + 272);
      v98 = *(v0 + 280);
      v99 = *(v0 + 264);

      sub_7530();
      sub_7220();
      sub_7200();
      v100 = (*(v98 + 48))(v99, 1, v97);
      v101 = *(v0 + 440);
      if (v100 != 1)
      {
        v110 = *(v0 + 432);
        v170 = *(v0 + 440);
        v172 = *(v0 + 424);
        v112 = *(v0 + 368);
        v111 = *(v0 + 376);
        v167 = *(v0 + 328);
        v168 = *(v0 + 360);
        v113 = *(v0 + 312);
        v165 = *(v0 + 304);
        v114 = *(v0 + 280);
        v115 = *(v0 + 288);
        v116 = *(v0 + 264);
        v117 = *(v0 + 272);
        v118 = *(v0 + 240);

        (*(v114 + 32))(v115, v116, v117);
        sub_7450();
        (*(v114 + 8))(v115, v117);
        (*(v113 + 8))(v167, v165);
        (*(v112 + 8))(v111, v168);
        (*(v110 + 8))(v170, v172);
LABEL_100:

        goto LABEL_101;
      }

      sub_6DCC(*(v0 + 264), &qword_10298, &qword_7A20);
      *(v0 + 464) = 1;
      sub_7590();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_5E7C(v177, 0x6574616D696E61, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
      v103 = v174;
      *(v0 + 232) = v164;
      sub_3D30(&qword_102B8, &qword_7A38);
      sub_6F9C(&qword_102C0, &qword_102B8, &qword_7A38);
      v104 = sub_7480();
      v106 = v105;

      v107._countAndFlagsBits = sub_71A0();
      if (v107._object)
      {
        v177[0]._countAndFlagsBits = 35;
        v177[0]._object = 0xE100000000000000;
        sub_74D0(v107);

        sub_74D0(v177[0]);
      }

      v108 = HIBYTE(v106) & 0xF;
      if ((v106 & 0x2000000000000000) == 0)
      {
        v108 = v104 & 0xFFFFFFFFFFFFLL;
      }

      if (v108)
      {
        *(v0 + 168) = v104;
        *(v0 + 176) = v106;
        sub_7590();
        v109 = swift_isUniquelyReferenced_nonNull_native();
        v179 = v174;
        sub_5E7C(v177, 1752457584, 0xE400000000000000, v109);
        v103 = v179;
      }

      else
      {
      }

      v120 = *(v0 + 376);
      v122 = *(v0 + 320);
      v121 = *(v0 + 328);
      v123 = *(v0 + 304);
      v124 = *(v0 + 312);
      sub_35B8(v103);
      sub_71F0();

      sub_65B4(&qword_102C8, &type metadata accessor for PreferencesControllerRecipe);
      sub_72C0();
      v125 = *(v124 + 8);
      v125(v122, v123);
      v125(v121, v123);
LABEL_99:
      v136 = *(v0 + 432);
      v135 = *(v0 + 440);
      v137 = *(v0 + 424);
      v139 = *(v0 + 368);
      v138 = *(v0 + 376);
      v140 = *(v0 + 360);
      v141 = *(v0 + 240);
      sub_7460();
      (*(v139 + 8))(v138, v140);
      (*(v136 + 8))(v135, v137);
      goto LABEL_100;
    }

    v94 = sub_75E0();

    if (v94)
    {
      goto LABEL_73;
    }

    if (sub_74A0() == v163 && v119 == v10)
    {
      v1 = v163;

LABEL_87:
      v127 = *(v0 + 256);

      v128 = sub_74A0();
      v130 = v1;
      v131 = v10;
      v132 = v127;
LABEL_97:
      sub_38A4(v128, v129, v130, v131, v132);

LABEL_98:

      goto LABEL_99;
    }

    v1 = v163;
    v126 = sub_75E0();

    if (v126)
    {
      goto LABEL_87;
    }

    if (sub_74A0() == v163 && v133 == v10)
    {

LABEL_95:
      v132 = *(v0 + 256);
      v128 = v23;
      v129 = countAndFlagsBits;
      v130 = v163;
LABEL_96:
      v131 = v10;
      goto LABEL_97;
    }

    v134 = sub_75E0();

    if (v134)
    {
      goto LABEL_95;
    }

LABEL_105:
    if (sub_74A0() == v1 && v153 == v10)
    {
    }

    else
    {
LABEL_109:
      v154 = sub_75E0();

      if ((v154 & 1) == 0)
      {
        v132 = *(v0 + 256);
        v128 = v23;
        v129 = countAndFlagsBits;
        v130 = v163;
        goto LABEL_96;
      }
    }

    v155 = *(v0 + 256);
    if (countAndFlagsBits)
    {
      v156 = objc_opt_self();
      v157 = sub_7490();

      v158 = [v156 itemSpecifierIDForAccountUsername:v157];

      v159 = sub_74A0();
      v161 = v160;

      sub_38A4(v159, v161, v163, v10, v155);
    }

    else
    {
      sub_38A4(v23, 0, v163, v10, *(v0 + 256));
    }

    goto LABEL_98;
  }

  v10 = 0;
  v38 = *(v0 + 344);
  v169 = v37 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
  v171 = v38;
  v166 = (v38 + 8);
  v39 = &_swiftEmptyDictionarySingleton;
  while (1)
  {
    if (v10 >= v37[2])
    {
      __break(1u);
      goto LABEL_109;
    }

    v40 = *(v0 + 448);
    (*(v171 + 16))(*(v0 + 352), &v169[*(v171 + 72) * v10], *(v0 + 336));
    v23 = sub_74F0();
    sub_74E0();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v41 = *(v0 + 352);
    v42 = sub_7140();
    v44 = v43;
    v45 = sub_7150();
    if (!v46 || (*(v0 + 200) = v45, *(v0 + 208) = v46, v47 = sub_7560(), v49 = v48, , !v49))
    {
      v62 = sub_58C0(v42, v44);
      countAndFlagsBits = v63;

      if (countAndFlagsBits)
      {
        v177[0]._countAndFlagsBits = v39;
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          sub_6060();
          v39 = v177[0]._countAndFlagsBits;
        }

        countAndFlagsBits = *(v0 + 352);
        v64 = *(v0 + 336);
        v65 = *(v39[6] + 16 * v62 + 8);

        v66 = v39[7] + 40 * v62;
        v67 = *v66;
        v68 = *(v66 + 16);
        *(v0 + 48) = *(v66 + 32);
        *(v0 + 16) = v67;
        *(v0 + 32) = v68;
        sub_5CC0(v62, v39);
        (*v166)(countAndFlagsBits, v64);
      }

      else
      {
        (*v166)(*(v0 + 352), *(v0 + 336));
        *(v0 + 48) = 0;
        *(v0 + 16) = 0u;
        *(v0 + 32) = 0u;
      }

      sub_6DCC(v0 + 16, &qword_102B0, &qword_7A30);

      goto LABEL_34;
    }

    v50 = v37;
    *(v0 + 216) = v47;
    *(v0 + 224) = v49;
    sub_7590();
    v51 = v177[1];
    *(v0 + 96) = v177[0];
    *(v0 + 112) = v51;
    *(v0 + 128) = v178;
    v52 = swift_isUniquelyReferenced_nonNull_native();
    v176 = v39;
    v54 = sub_58C0(v42, v44);
    v55 = v39;
    v56 = v39[2];
    v57 = (v53 & 1) == 0;
    result = v56 + v57;
    if (__OFADD__(v56, v57))
    {
      __break(1u);
LABEL_115:
      __break(1u);
      return result;
    }

    v59 = v53;
    if (v55[3] >= result)
    {
      if ((v52 & 1) == 0)
      {
        sub_6060();
      }

      goto LABEL_50;
    }

    sub_59F0(result, v52);
    v60 = sub_58C0(v42, v44);
    if ((v59 & 1) != (v61 & 1))
    {
      break;
    }

    v54 = v60;
LABEL_50:
    countAndFlagsBits = *(v0 + 352);
    v69 = *(v0 + 336);
    if (v59)
    {

      v39 = v176;
      sub_6290(v0 + 96, v176[7] + 40 * v54);
      (*v166)(countAndFlagsBits, v69);
    }

    else
    {
      v39 = v176;
      v176[(v54 >> 6) + 8] |= 1 << v54;
      v70 = (v176[6] + 16 * v54);
      *v70 = v42;
      v70[1] = v44;
      v71 = v176[7] + 40 * v54;
      v72 = *(v0 + 128);
      v73 = *(v0 + 112);
      *v71 = *(v0 + 96);
      *(v71 + 16) = v73;
      *(v71 + 32) = v72;
      result = (*v166)(countAndFlagsBits, v69);
      v74 = v176[2];
      v75 = __OFADD__(v74, 1);
      v76 = v74 + 1;
      if (v75)
      {
        goto LABEL_115;
      }

      v176[2] = v76;
    }

    v37 = v50;
LABEL_34:
    if (v173 == ++v10)
    {
      goto LABEL_59;
    }
  }

  return sub_75F0();
}

uint64_t sub_35B8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_3D30(&qword_102D8, &qword_7A48);
    v2 = sub_75D0();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_6234(*(a1 + 56) + 40 * v13, v41);
    v39 = v16;
    v40 = v15;
    v36 = v41[0];
    v37 = v41[1];
    v38 = v42;
    v26 = v16;
    v27 = v15;

    swift_dynamicCast();
    v24[0] = v36;
    v24[1] = v37;
    v25 = v38;
    swift_dynamicCast();
    v32 = v28;
    v33 = v29;
    v34 = v30;
    sub_62EC(&v31, v35);
    v28 = v32;
    v29 = v33;
    v30 = v34;
    sub_62EC(v35, v24);
    result = sub_7580(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v28;
    *(v11 + 16) = v29;
    *(v11 + 32) = v30;
    result = sub_62EC(v24, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_38A4(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  sub_3D30(&qword_102E0, &qword_7A50);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_7930;
  sub_75A0(82);
  v15._object = 0x8000000000007C30;
  v15._countAndFlagsBits = 0xD000000000000050;
  sub_74D0(v15);
  v11 = a1;
  v12 = a2;
  if (!a2)
  {

    v11 = a3;
    v12 = a4;
  }

  v16._countAndFlagsBits = v11;
  v16._object = v12;
  sub_74D0(v16);

  *(v10 + 56) = &type metadata for String;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0xE000000000000000;
  sub_7600();

  if (!a2)
  {
  }

  v13 = sub_7490();

  [a5 setSpecifierIdentifierToScrollAndSelect:v13];
}

uint64_t sub_3A38@<X0>(uint64_t a1@<X8>)
{
  v17[1] = a1;
  v2 = sub_3D30(&qword_10268, &qword_7A00);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = v17 - v5;
  v7 = *v1;
  *(swift_allocObject() + 16) = v7;
  v8 = v7;
  v17[0] = sub_3D30(&qword_10270, &qword_7A08);
  v9 = sub_71E0();
  v10 = sub_7270();
  v11 = type metadata accessor for DMCNavigationView();
  v12 = sub_65B4(&qword_10278, &type metadata accessor for PreferencesControllerView);
  v13 = sub_65B4(&qword_10280, &type metadata accessor for DMCGenericViewControllerRecipe);
  v14 = sub_65B4(&qword_10288, type metadata accessor for DMCNavigationView);
  v17[2] = v9;
  v17[3] = v10;
  v17[4] = v11;
  v17[5] = v12;
  v17[6] = v13;
  v17[7] = v14;
  swift_getOpaqueTypeConformance2();
  sub_7470();
  *(swift_allocObject() + 16) = v8;
  sub_6F9C(&qword_10290, &qword_10268, &qword_7A00);
  v15 = v8;
  sub_7420();
  return (*(v3 + 8))(v6, v2);
}

id sub_3CF4@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
  *a1 = result;
  return result;
}

uint64_t sub_3D30(uint64_t *a1, uint64_t *a2)
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

uint64_t type metadata accessor for DMCNavigationView()
{
  result = qword_10550;
  if (!qword_10550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_3DCC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_711C;

  return sub_2244(a1, a2, v6);
}

uint64_t sub_3E7C(uint64_t *a1, uint64_t *a2)
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

void sub_3EC4(uint64_t a1@<X8>)
{
  v79 = a1;
  v2 = type metadata accessor for DMCNavigationView();
  v3 = v2 - 8;
  v76 = *(v2 - 8);
  v4 = *(v76 + 64);
  __chkstk_darwin(v2);
  v77 = v5;
  v78 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_72F0();
  v84 = *(v6 - 8);
  v85 = v6;
  v7 = *(v84 + 64);
  __chkstk_darwin(v6);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_7270();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_7290();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_3D30(&qword_10390, &qword_7B10);
  v21 = *(v20 - 8);
  v82 = v20;
  v83 = v21;
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v67 - v23;
  v70 = sub_3D30(&qword_10398, &qword_7B18);
  v69 = *(v70 - 8);
  v25 = *(v69 + 64);
  __chkstk_darwin(v70);
  v81 = &v67 - v26;
  v67 = sub_3D30(&qword_103A0, &qword_7B20);
  v27 = *(*(v67 - 8) + 64);
  __chkstk_darwin(v67);
  v68 = &v67 - v28;
  v72 = sub_3D30(&qword_103A8, &qword_7B28);
  v29 = *(*(v72 - 8) + 64);
  __chkstk_darwin(v72);
  v71 = &v67 - v30;
  v31 = sub_3D30(&qword_103B0, &qword_7B30);
  v74 = *(v31 - 8);
  v75 = v31;
  v32 = *(v74 + 64);
  __chkstk_darwin(v31);
  v73 = &v67 - v33;
  v34 = *(v11 + 16);
  v80 = v1;
  v34(v14, v1, v10);
  sub_7280();
  v35 = (v1 + *(v3 + 28));
  v36 = *v35;
  v37 = *(v35 + 2);
  v86 = v36;
  v87 = v37;
  sub_3D30(&qword_103B8, &qword_7B38);
  sub_73E0();
  v86 = v89;
  v38 = sub_65B4(&qword_103C0, &type metadata accessor for DMCGenericViewControllerRepresentable);
  v39 = sub_600C();
  sub_7380();

  (*(v16 + 8))(v19, v15);
  v41 = v84;
  v40 = v85;
  (*(v84 + 104))(v9, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v85);
  *&v86 = v15;
  *(&v86 + 1) = &type metadata for String;
  v87 = v38;
  v88 = v39;
  v42 = v81;
  swift_getOpaqueTypeConformance2();
  v43 = v82;
  sub_73A0();
  v44 = v9;
  v45 = v80;
  (*(v41 + 8))(v44, v40);
  (*(v83 + 8))(v24, v43);
  v46 = sub_7240();
  v47 = [v46 view];

  if (v47)
  {
    v48 = [v47 backgroundColor];

    if (!v48)
    {
      v49 = [objc_opt_self() clearColor];
    }

    v50 = sub_73C0();
    v51 = sub_7340();
    v52 = v68;
    (*(v69 + 32))(v68, v42, v70);
    v53 = v52 + *(v67 + 36);
    *v53 = v50;
    *(v53 + 8) = v51;
    v54 = sub_72E0();
    v55 = sub_7340();
    v56 = v71;
    v57 = sub_1AF4(v52, v71);
    v58 = v56 + *(v72 + 36);
    *v58 = v54;
    *(v58 + 8) = v55;
    __chkstk_darwin(v57);
    *(&v67 - 2) = v45;
    sub_3D30(&qword_103C8, &qword_7B40);
    sub_6604();
    v59 = sub_3E7C(&qword_103F0, &qword_7B50);
    v60 = sub_6800();
    *&v86 = v59;
    *(&v86 + 1) = v60;
    swift_getOpaqueTypeConformance2();
    v61 = v73;
    sub_73B0();
    sub_6DCC(v56, &qword_103A8, &qword_7B28);
    v62 = v78;
    sub_68F4(v45, v78);
    v63 = (*(v76 + 80) + 16) & ~*(v76 + 80);
    v64 = swift_allocObject();
    sub_6958(v62, v64 + v63);
    v65 = v79;
    (*(v74 + 32))(v79, v61, v75);
    v66 = (v65 + *(sub_3D30(&qword_10410, &qword_7B60) + 36));
    *v66 = sub_69BC;
    v66[1] = v64;
    v66[2] = 0;
    v66[3] = 0;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_4748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = sub_3D30(&qword_10428, &qword_7BA0);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v26 = &v25 - v6;
  v7 = *(*(sub_7310() - 8) + 64);
  (__chkstk_darwin)();
  v8 = sub_3D30(&qword_10400, &qword_7B58);
  v25 = *(v8 - 8);
  v9 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v11 = &v25 - v10;
  v28 = sub_3D30(&qword_103F0, &qword_7B50);
  v12 = *(*(v28 - 8) + 64);
  v13 = (__chkstk_darwin)();
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v25 - v16;
  sub_7500();
  v27 = sub_74F0();
  sub_74E0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v18 = (a1 + *(type metadata accessor for DMCNavigationView() + 24));
  v19 = *v18;
  v20 = *(v18 + 1);
  LOBYTE(v31) = v19;
  v32 = v20;
  sub_3D30(&qword_10420, &qword_7B98);
  sub_73E0();
  if (v30 == 1)
  {
    sub_7300();
    sub_3D30(&qword_10430, qword_7BA8);
    sub_6F9C(&qword_10438, &qword_10430, qword_7BA8);
    sub_72A0();
    v21 = sub_6F9C(&qword_10408, &qword_10400, &qword_7B58);
    v22 = v26;
    sub_7320();
    (*(v4 + 16))(v15, v22, v3);
    (*(v4 + 56))(v15, 0, 1, v3);
    v31 = v8;
    v32 = v21;
    swift_getOpaqueTypeConformance2();
    sub_7330();
    sub_6DCC(v15, &qword_103F0, &qword_7B50);
    (*(v4 + 8))(v22, v3);
    (*(v25 + 8))(v11, v8);
  }

  else
  {
    (*(v4 + 56))(v15, 1, 1, v3);
    v23 = sub_6F9C(&qword_10408, &qword_10400, &qword_7B58);
    v31 = v8;
    v32 = v23;
    swift_getOpaqueTypeConformance2();
    sub_7330();
    sub_6DCC(v15, &qword_103F0, &qword_7B50);
  }

  sub_6800();
  sub_7320();
  sub_6DCC(v17, &qword_103F0, &qword_7B50);
}

uint64_t sub_4C64()
{
  sub_7500();
  sub_74F0();
  sub_74E0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_72B0();
}

void sub_4D00(uint64_t a1)
{
  v2 = type metadata accessor for DMCNavigationView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  sub_7500();
  sub_74F0();
  sub_74E0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = [objc_opt_self() defaultCenter];
  v6 = kDMCNavUIUpdatedNotification;
  v7 = [objc_opt_self() mainQueue];
  sub_68F4(a1, aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_6958(aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  aBlock[4] = sub_6B28;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_55B4;
  aBlock[3] = &unk_C878;
  v10 = _Block_copy(aBlock);

  v11 = [v5 addObserverForName:v6 object:0 queue:v7 usingBlock:v10];
  _Block_release(v10);

  swift_unknownObjectRelease();
}

uint64_t sub_4F50(uint64_t a1)
{
  v2 = type metadata accessor for DMCNavigationView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3D30(&qword_10418, &qword_7B68);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v15 - v8;
  v10 = sub_7520();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_68F4(a1, v5);
  sub_7500();
  v11 = sub_74F0();
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = &protocol witness table for MainActor;
  sub_6958(v5, v13 + v12);
  sub_52C4(0, 0, v9, &unk_7B78, v13);
}

uint64_t sub_5108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 56) = a4;
  sub_7500();
  *(v4 + 64) = sub_74F0();
  v6 = sub_74E0();

  return _swift_task_switch(sub_51A0, v6, v5);
}

uint64_t sub_51A0()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);

  v3 = sub_7260();
  v5 = v4;
  v6 = type metadata accessor for DMCNavigationView();
  v7 = (v2 + *(v6 + 20));
  v8 = *v7;
  v9 = *(v7 + 2);
  *(v0 + 16) = v8;
  *(v0 + 32) = v9;
  *(v0 + 40) = v3;
  *(v0 + 48) = v5;
  sub_3D30(&qword_103B8, &qword_7B38);
  sub_73F0();
  v10 = sub_7250();
  v11 = (v2 + *(v6 + 24));
  v12 = *v11;
  v13 = *(v11 + 1);
  *(v0 + 16) = v12;
  *(v0 + 24) = v13;
  *(v0 + 40) = v10;
  sub_3D30(&qword_10420, &qword_7B98);
  sub_73F0();
  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_52C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_3D30(&qword_10418, &qword_7B68);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_6D5C(a3, v27 - v11);
  v13 = sub_7520();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_6DCC(v12, &qword_10418, &qword_7B68);
  }

  else
  {
    sub_7510();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_74E0();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_74B0() + 32;
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

      sub_6DCC(a3, &qword_10418, &qword_7B68);

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

  sub_6DCC(a3, &qword_10418, &qword_7B68);
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

uint64_t sub_55B4(uint64_t a1)
{
  v2 = sub_7130();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_7120();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_56D0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_57C8;

  return v7(a1);
}

uint64_t sub_57C8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_58C0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_7610();
  sub_74C0();
  v6 = sub_7620();

  return sub_5938(a1, a2, v6);
}

unint64_t sub_5938(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_75E0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_59F0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_3D30(&qword_102D0, &qword_7A40);
  v41 = a2;
  result = sub_75C0();
  v8 = result;
  if (*(v5 + 16))
  {
    v40 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v21 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v24 = v21 | (v9 << 6);
      v25 = (*(v5 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v5 + 56) + 40 * v24;
      if (v41)
      {
        v29 = *v28;
        v30 = *(v28 + 16);
        v44 = *(v28 + 32);
        v42 = v29;
        v43 = v30;
      }

      else
      {
        sub_6234(v28, &v42);
      }

      v31 = *(v8 + 40);
      sub_7610();
      sub_74C0();
      result = sub_7620();
      v32 = -1 << *(v8 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v15 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v15 + 8 * v34);
          if (v38 != -1)
          {
            v16 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v33) & ~*(v15 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v26;
      v17[1] = v27;
      v18 = *(v8 + 56) + 40 * v16;
      v19 = v42;
      v20 = v43;
      *(v18 + 32) = v44;
      *v18 = v19;
      *(v18 + 16) = v20;
      ++*(v8 + 16);
    }

    v22 = v9;
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v23 = v10[v9];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v13 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero((v5 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_5CC0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_7570() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      sub_7610();

      sub_74C0();
      v15 = sub_7620();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = v20 + 40 * v3;
        v22 = (v20 + 40 * v6);
        if (v3 != v6 || v21 >= v22 + 40)
        {
          v9 = *v22;
          v10 = v22[1];
          *(v21 + 32) = *(v22 + 4);
          *v21 = v9;
          *(v21 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_5E7C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_58C0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_59F0(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_58C0(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_75F0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_6060();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 40 * v11;

    return sub_6290(a1, v23);
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  v26 = v22[7] + 40 * v11;
  v27 = *a1;
  v28 = *(a1 + 16);
  *(v26 + 32) = *(a1 + 32);
  *v26 = v27;
  *(v26 + 16) = v28;
  v29 = v22[2];
  v15 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v30;
}

unint64_t sub_600C()
{
  result = qword_102A8;
  if (!qword_102A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_102A8);
  }

  return result;
}

void *sub_6060()
{
  v1 = v0;
  sub_3D30(&qword_102D0, &qword_7A40);
  v2 = *v0;
  v3 = sub_75B0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_6234(*(v2 + 56) + 40 * v17, v28);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = *(v4 + 56) + v22;
        v25 = v29;
        v26 = v28[1];
        *v24 = v28[0];
        *(v24 + 16) = v26;
        *(v24 + 32) = v25;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

char *sub_6214(char *a1, int64_t a2, char a3)
{
  result = sub_62FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

_OWORD *sub_62EC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

char *sub_62FC(char *result, int64_t a2, char a3, char *a4)
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
    sub_3D30(&qword_102E8, &qword_7A58);
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

unint64_t sub_640C()
{
  result = qword_102F0;
  if (!qword_102F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_102F0);
  }

  return result;
}

void sub_6480()
{
  sub_7270();
  if (v0 <= 0x3F)
  {
    sub_653C(319, &qword_10350);
    if (v1 <= 0x3F)
    {
      sub_653C(319, &unk_10358);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_653C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_7400();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_65B4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_6604()
{
  result = qword_103D0;
  if (!qword_103D0)
  {
    sub_3E7C(&qword_103A8, &qword_7B28);
    sub_6690();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_103D0);
  }

  return result;
}

unint64_t sub_6690()
{
  result = qword_103D8;
  if (!qword_103D8)
  {
    sub_3E7C(&qword_103A0, &qword_7B20);
    sub_3E7C(&qword_10390, &qword_7B10);
    sub_7290();
    sub_65B4(&qword_103C0, &type metadata accessor for DMCGenericViewControllerRepresentable);
    sub_600C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_6F9C(&qword_103E0, &qword_103E8, &qword_7B48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_103D8);
  }

  return result;
}

unint64_t sub_6800()
{
  result = qword_103F8;
  if (!qword_103F8)
  {
    sub_3E7C(&qword_103F0, &qword_7B50);
    sub_3E7C(&qword_10400, &qword_7B58);
    sub_6F9C(&qword_10408, &qword_10400, &qword_7B58);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_103F8);
  }

  return result;
}

uint64_t sub_68F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DMCNavigationView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_6958(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DMCNavigationView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_69BC()
{
  v1 = *(type metadata accessor for DMCNavigationView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_4D00(v2);
}

uint64_t sub_6A1C()
{
  v1 = (type metadata accessor for DMCNavigationView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_7270();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v0 + v3 + v1[7];
  v7 = *(v6 + 8);

  v8 = *(v6 + 16);

  v9 = *(v0 + v3 + v1[8] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_6B28()
{
  v1 = *(type metadata accessor for DMCNavigationView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_4F50(v2);
}

uint64_t sub_6B88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_6BA0()
{
  v2 = *(type metadata accessor for DMCNavigationView() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_6C68;

  return sub_5108(v4, v5, v6, v0 + v3);
}

uint64_t sub_6C68()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_6D5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_3D30(&qword_10418, &qword_7B68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_6DCC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_3D30(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_6E2C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_711C;

  return sub_56D0(a1, v5);
}

uint64_t sub_6EE4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_6C68;

  return sub_56D0(a1, v5);
}

uint64_t sub_6F9C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_3E7C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_6FE4()
{
  result = qword_10440;
  if (!qword_10440)
  {
    sub_3E7C(&qword_10410, &qword_7B60);
    sub_3E7C(&qword_103A8, &qword_7B28);
    sub_3E7C(&qword_103C8, &qword_7B40);
    sub_6604();
    sub_3E7C(&qword_103F0, &qword_7B50);
    sub_6800();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10440);
  }

  return result;
}