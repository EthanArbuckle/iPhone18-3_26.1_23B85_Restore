uint64_t sub_1000270D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  sub_1000E9B14();
  v4[4] = sub_1000E9B04();
  v6 = sub_1000E9AF4();

  return _swift_task_switch(sub_10002716C, v6, v5);
}

uint64_t sub_10002716C()
{

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_1000262E0();
  }

  **(v0 + 16) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100027268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  sub_1000E9B14();
  v4[4] = sub_1000E9B04();
  v6 = sub_1000E9AF4();

  return _swift_task_switch(sub_100027300, v6, v5);
}

uint64_t sub_100027300()
{

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_10002681C();
  }

  **(v0 + 16) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100027404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  sub_1000E9B14();
  v5[5] = sub_1000E9B04();
  v7 = sub_1000E9AF4();

  return _swift_task_switch(sub_1000274A0, v7, v6);
}

uint64_t sub_1000274A0()
{

  Strong = swift_weakLoadStrong();
  v2 = Strong;
  if (Strong)
  {
    v3 = *(v0 + 32);
    v4 = *(Strong + 48);
    *(Strong + 48) = v3;
    v5 = v3;

    sub_10002681C();
  }

  **(v0 + 16) = v2 == 0;
  v6 = *(v0 + 8);

  return v6();
}

id sub_100027608()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocationDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1000276CC()
{
  result = qword_100130A10;
  if (!qword_100130A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130A10);
  }

  return result;
}

uint64_t sub_100027720()
{
  v175 = sub_1000E9534();
  v177 = *(v175 - 8);
  __chkstk_darwin(v175);
  v1 = &v137 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1000E9544();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v174 = &v137 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = sub_1000E9524();
  v5 = *(v178 - 8);
  __chkstk_darwin(v178);
  v172 = &v137 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = sub_1000E9574();
  v176 = *(v171 - 8);
  __chkstk_darwin(v171);
  v170 = &v137 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000125FC(&qword_100131CE0);
  __chkstk_darwin(v8 - 8);
  v144 = &v137 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v146 = &v137 - v11;
  __chkstk_darwin(v12);
  v148 = &v137 - v13;
  __chkstk_darwin(v14);
  v150 = &v137 - v15;
  __chkstk_darwin(v16);
  v152 = &v137 - v17;
  __chkstk_darwin(v18);
  v154 = &v137 - v19;
  __chkstk_darwin(v20);
  v22 = &v137 - v21;
  v173 = sub_1000E94E4();
  v169 = *(v173 - 8);
  __chkstk_darwin(v173);
  v143 = &v137 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v145 = &v137 - v25;
  __chkstk_darwin(v26);
  v147 = &v137 - v27;
  __chkstk_darwin(v28);
  v149 = &v137 - v29;
  __chkstk_darwin(v30);
  v151 = &v137 - v31;
  __chkstk_darwin(v32);
  v34 = &v137 - v33;
  __chkstk_darwin(v35);
  v168 = &v137 - v36;
  __chkstk_darwin(v37);
  v39 = &v137 - v38;
  if (qword_10012F758 != -1)
  {
    swift_once();
  }

  v153 = v34;
  v40 = sub_1000E96A4();
  sub_100007488(v40, qword_10013DDD0);
  v41 = sub_1000E9684();
  v42 = sub_1000E9BB4();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&_mh_execute_header, v41, v42, "Making a guess at solar position based on time.", v43, 2u);
  }

  sub_1000E94B4();
  v44 = v170;
  sub_1000E9564();
  v45 = *(v5 + 104);
  v46 = v172;
  v165 = enum case for Calendar.MatchingPolicy.nextTime(_:);
  v179 = v5;
  v166 = v5 + 104;
  v164 = v45;
  v45(v172);
  v47 = *(v3 + 104);
  v48 = v174;
  v162 = enum case for Calendar.RepeatedTimePolicy.first(_:);
  v163 = v3 + 104;
  v161 = v47;
  v47(v174);
  v49 = v3;
  v50 = v177;
  v51 = *(v177 + 104);
  v159 = enum case for Calendar.SearchDirection.forward(_:);
  v52 = v2;
  v53 = v175;
  v160 = v177 + 104;
  v158 = v51;
  v51(v1);
  sub_1000E9554();
  v54 = *(v50 + 8);
  v155 = v1;
  v55 = v53;
  v56 = v52;
  v157 = v54;
  v177 = v50 + 8;
  v54(v1, v55);
  v57 = *(v49 + 8);
  v167 = v49 + 8;
  v156 = v57;
  v57(v48, v52);
  v58 = *(v179 + 8);
  v179 += 8;
  v58(v46, v178);
  v59 = v176 + 8;
  v60 = *(v176 + 8);
  v60(v44, v171);
  v61 = v169;
  v62 = v39;
  v63 = *(v169 + 48);
  v64 = v173;
  if (v63(v22, 1, v173) == 1)
  {
    (*(v61 + 8))(v62, v64);
    v65 = v22;
LABEL_7:
    sub_1000047C4(v65, &qword_100131CE0);
    return 3;
  }

  v142 = v63;
  v67 = *(v61 + 32);
  v68 = v168;
  v141 = v61 + 32;
  v140 = v67;
  v67(v168, v22, v64);
  if (sub_1000E9494())
  {
    v69 = *(v61 + 8);
    v69(v68, v64);
    v69(v62, v64);
    return 0;
  }

  v70 = v170;
  sub_1000E9564();
  v138 = v58;
  v137 = v60;
  v71 = v172;
  v72 = v62;
  v73 = v178;
  v164(v172, v165, v178);
  v176 = v59;
  v74 = v174;
  v161(v174, v162, v56);
  v75 = v155;
  v76 = v175;
  v158(v155, v159, v175);
  v77 = v154;
  v139 = v72;
  sub_1000E9554();
  v157(v75, v76);
  v156(v74, v56);
  v138(v71, v73);
  v78 = v173;
  v137(v70, v171);
  if (v142(v77, 1, v78) == 1)
  {
    v79 = *(v169 + 8);
    v79(v168, v78);
    v79(v139, v78);
    v65 = v77;
    goto LABEL_7;
  }

  v80 = v153;
  v140(v153, v77, v78);
  v81 = v139;
  if (sub_1000E9494())
  {
    v82 = *(v169 + 8);
    v82(v80, v78);
    v82(v168, v78);
    v82(v81, v78);
    return 1;
  }

  v83 = v170;
  sub_1000E9564();
  v84 = v172;
  v164(v172, v165, v178);
  v85 = v174;
  v161(v174, v162, v56);
  v86 = v175;
  v158(v75, v159, v175);
  v87 = v152;
  sub_1000E9554();
  v88 = v75;
  v157(v75, v86);
  v156(v85, v56);
  v138(v84, v178);
  v89 = v173;
  v137(v83, v171);
  if (v142(v87, 1, v89) == 1)
  {
    v90 = *(v169 + 8);
    v90(v153, v89);
LABEL_27:
    v90(v168, v89);
    v90(v139, v89);
    v65 = v87;
    goto LABEL_7;
  }

  v91 = v151;
  v140(v151, v87, v89);
  v92 = v139;
  if (sub_1000E9494())
  {
    v93 = *(v169 + 8);
    v93(v91, v89);
    v93(v153, v89);
    v93(v168, v89);
    v93(v92, v89);
    return 2;
  }

  v94 = v170;
  sub_1000E9564();
  v95 = v172;
  v96 = v178;
  v164(v172, v165, v178);
  v97 = v174;
  v161(v174, v162, v56);
  v98 = v175;
  v158(v88, v159, v175);
  v87 = v150;
  v99 = v88;
  sub_1000E9554();
  v157(v88, v98);
  v156(v97, v56);
  v138(v95, v96);
  v89 = v173;
  v137(v94, v171);
  if (v142(v87, 1, v89) == 1)
  {
    v90 = *(v169 + 8);
    v90(v151, v89);
LABEL_26:
    v90(v153, v89);
    goto LABEL_27;
  }

  v100 = v149;
  v140(v149, v87, v89);
  v101 = v139;
  if (sub_1000E9494())
  {
    v102 = *(v169 + 8);
    v102(v100, v89);
    v102(v151, v89);
    v102(v153, v89);
    v102(v168, v89);
    v102(v101, v89);
    return 3;
  }

  v103 = v170;
  sub_1000E9564();
  v104 = v172;
  v105 = v178;
  v164(v172, v165, v178);
  v106 = v174;
  v161(v174, v162, v56);
  v107 = v175;
  v158(v88, v159, v175);
  v87 = v148;
  sub_1000E9554();
  v157(v88, v107);
  v156(v106, v56);
  v108 = v137;
  v138(v104, v105);
  v89 = v173;
  v108(v103, v171);
  if (v142(v87, 1, v89) == 1)
  {
    v90 = *(v169 + 8);
LABEL_25:
    v90(v149, v89);
    v90(v151, v89);
    goto LABEL_26;
  }

  v109 = v147;
  v140(v147, v87, v89);
  v110 = v139;
  if (sub_1000E9494())
  {
    v111 = *(v169 + 8);
    v111(v109, v89);
    v111(v149, v89);
    v111(v151, v89);
    v111(v153, v89);
    v111(v168, v89);
    v111(v110, v89);
    return 4;
  }

  else
  {
    v112 = v170;
    sub_1000E9564();
    v113 = v172;
    v114 = v178;
    v164(v172, v165, v178);
    v115 = v174;
    v161(v174, v162, v56);
    v116 = v175;
    v158(v99, v159, v175);
    v87 = v146;
    sub_1000E9554();
    v157(v99, v116);
    v156(v115, v56);
    v138(v113, v114);
    v117 = v112;
    v118 = v173;
    v137(v117, v171);
    if (v142(v87, 1, v118) == 1)
    {
      v89 = v118;
      v90 = *(v169 + 8);
      v90(v147, v89);
      goto LABEL_25;
    }

    v119 = v145;
    v140(v145, v87, v118);
    v120 = v139;
    if (sub_1000E9494())
    {
      v121 = v118;
      v122 = *(v169 + 8);
      v122(v119, v121);
      v122(v147, v121);
      v122(v149, v121);
      v122(v151, v121);
      v122(v153, v121);
      v122(v168, v121);
      v122(v120, v121);
      return 5;
    }

    else
    {
      v123 = v170;
      sub_1000E9564();
      v124 = v172;
      v125 = v178;
      v164(v172, v165, v178);
      v126 = v174;
      v161(v174, v162, v56);
      v127 = v175;
      v158(v99, v159, v175);
      v128 = v144;
      sub_1000E9554();
      v129 = v99;
      v130 = v128;
      v157(v129, v127);
      v156(v126, v56);
      v138(v124, v125);
      v131 = v173;
      v137(v123, v171);
      if (v142(v128, 1, v131) == 1)
      {
        v132 = *(v169 + 8);
        v132(v145, v131);
        v132(v147, v131);
        v132(v149, v131);
        v132(v151, v131);
        v132(v153, v131);
        v132(v168, v131);
        v132(v139, v131);
        v65 = v128;
        goto LABEL_7;
      }

      v133 = v143;
      v140(v143, v130, v131);
      v134 = v139;
      v135 = sub_1000E9494();
      v136 = *(v169 + 8);
      v136(v133, v131);
      v136(v145, v131);
      v136(v147, v131);
      v136(v149, v131);
      v136(v151, v131);
      v136(v153, v131);
      v136(v168, v131);
      v136(v134, v131);
      if (v135)
      {
        return 6;
      }

      else
      {
        return 7;
      }
    }
  }
}

uint64_t sub_100028E78(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100121DE8;
  v6._object = a2;
  v4 = sub_1000E9EC4(v3, v6);

  if (v4 >= 8)
  {
    return 8;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100028EC4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100028F28(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100028F40(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100019048(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100028F88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100029AC4;

  return sub_1000270D4(a1, v4, v5, v6);
}

uint64_t sub_10002903C()
{
  v1 = sub_1000125FC(&qword_100130A40);
  __chkstk_darwin(v1 - 8);
  v3 = &v17 - v2;
  if (qword_10012F758 != -1)
  {
    swift_once();
  }

  v4 = sub_1000E96A4();
  sub_100007488(v4, qword_10013DDD0);
  swift_errorRetain();
  v5 = sub_1000E9684();
  v6 = sub_1000E9BA4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = sub_1000E9FB4();
    v11 = sub_100093A3C(v9, v10, &v18);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "The location manager failed: %s", v7, 0xCu);
    sub_100012710(v8);
  }

  v12 = sub_1000E9B34();
  (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
  sub_1000E9B14();
  v13 = v0;
  v14 = sub_1000E9B04();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = &protocol witness table for MainActor;
  v15[4] = v13;
  sub_100088690(0, 0, v3, &unk_1000EEC00, v15);
}

void sub_1000292A8(unint64_t a1)
{
  v2 = sub_1000125FC(&qword_100130A40);
  __chkstk_darwin(v2 - 8);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v27 - v6;
  if (qword_10012F758 != -1)
  {
    swift_once();
  }

  v8 = sub_1000E96A4();
  sub_100007488(v8, qword_10013DDD0);
  v9 = sub_1000E9684();
  v10 = sub_1000E9BB4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "We received an updated location.", v11, 2u);
  }

  if (a1 >> 62)
  {
    v12 = sub_1000E9E64();
    if (!v12)
    {
      return;
    }
  }

  else
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
      return;
    }
  }

  v31 = sub_1000E9B14();
  if (v12 < 1)
  {
    __break(1u);
  }

  else
  {
    v13 = 0;
    v29 = a1 & 0xC000000000000001;
    v30 = a1;
    v28 = v12;
    do
    {
      if (v29)
      {
        v14 = sub_1000E9D74();
      }

      else
      {
        v14 = *(a1 + 8 * v13 + 32);
      }

      v15 = v14;
      v16 = sub_1000E9B34();
      v17 = *(v16 - 8);
      (*(v17 + 56))(v7, 1, 1, v16);
      v18 = v32;
      v19 = v15;
      v20 = sub_1000E9B04();
      v21 = swift_allocObject();
      v21[2] = v20;
      v21[3] = &protocol witness table for MainActor;
      v21[4] = v18;
      v21[5] = v19;
      sub_1000299EC(v7, v4, &qword_100130A40);
      LODWORD(v20) = (*(v17 + 48))(v4, 1, v16);

      if (v20 == 1)
      {
        sub_1000047C4(v4, &qword_100130A40);
      }

      else
      {
        sub_1000E9B24();
        (*(v17 + 8))(v4, v16);
      }

      v22 = v21[2];
      swift_unknownObjectRetain();

      if (v22)
      {
        swift_getObjectType();
        v23 = sub_1000E9AF4();
        v25 = v24;
        swift_unknownObjectRelease();
      }

      else
      {
        v23 = 0;
        v25 = 0;
      }

      sub_1000047C4(v7, &qword_100130A40);
      v26 = swift_allocObject();
      *(v26 + 16) = &unk_1000EEBE0;
      *(v26 + 24) = v21;
      sub_1000125FC(&qword_100130A50);
      if (v25 | v23)
      {
        v33 = 0;
        v34 = 0;
        v35 = v23;
        v36 = v25;
      }

      a1 = v30;
      ++v13;
      swift_task_create();
    }

    while (v28 != v13);
  }
}

uint64_t sub_1000296FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100029AC4;

  return sub_100027404(a1, v4, v5, v7, v6);
}

uint64_t sub_1000297BC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000297FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000298B0;

  return sub_100027268(a1, v4, v5, v6);
}

uint64_t sub_1000298B0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000299A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000299EC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1000125FC(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100029A54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000125FC(&qword_100131CE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_100029AC8(uint64_t a1, uint64_t a2)
{
  if (sub_1000E9984() == 7 && (v17._countAndFlagsBits = 35, v17._object = 0xE100000000000000, sub_1000E99D4(v17)))
  {
    v15[0] = a1;
    v15[1] = a2;
    v4 = sub_1000E9A04();
    v15[2] = v4;
    v15[3] = v5;
    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (!v6)
    {
      __break(1u);
    }

    result = sub_100029D30(v4, v5);
    if (v8)
    {

      sub_100029D78(1);
      v9 = objc_allocWithZone(NSScanner);
      v10 = sub_1000E98E4();

      v11 = [v9 initWithString:v10];

      v15[0] = 0;
      if ([v11 scanHexLongLong:v15])
      {
        v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRed:BYTE2(v15[0]) / 255.0 green:BYTE1(v15[0]) / 255.0 blue:LOBYTE(v15[0]) / 255.0 alpha:1.0];
      }

      else
      {
        v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
      }

      v14 = v12;

      return v14;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v13 = objc_allocWithZone(swift_getObjCClassFromMetadata());

    return [v13 initWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  }

  return result;
}

uint64_t sub_100029D30(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_1000E99F4();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100029D78(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      result = sub_1000E9994();
      if ((v1 & 1) == 0)
      {
        v2 = result;
        result = 15;
        v1 = v2;

        return String.removeSubrange(_:)(result, v1);
      }
    }

    __break(1u);
    return String.removeSubrange(_:)(result, v1);
  }

  return result;
}

uint64_t sub_100029E00()
{
  v1 = sub_10002F610(0, 13);
  sub_1000125FC(&qword_100130CC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000EEC30;
  *(inited + 32) = 0;
  *(inited + 40) = swift_getKeyPath();
  *(inited + 48) = 1;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 2;
  *(inited + 72) = swift_getKeyPath();
  *(inited + 80) = 3;
  *(inited + 88) = swift_getKeyPath();
  *(inited + 96) = 4;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 5;
  *(inited + 120) = swift_getKeyPath();
  *(inited + 128) = 6;
  *(inited + 136) = swift_getKeyPath();
  *(inited + 144) = 7;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 8;
  *(inited + 168) = swift_getKeyPath();
  *(inited + 176) = 9;
  *(inited + 184) = swift_getKeyPath();
  *(inited + 192) = 10;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 11;
  *(inited + 216) = swift_getKeyPath();
  *(inited + 224) = 12;
  *(inited + 232) = swift_getKeyPath();
  v3 = sub_1000A0DD4(inited);
  swift_setDeallocating();
  sub_1000125FC(&qword_100130CC8);
  result = swift_arrayDestroy();
  v5 = 0;
  v6 = 1 << *(v3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v3[8];
  v9 = (v6 + 63) >> 6;
  if (v8)
  {
    while (1)
    {
      v10 = v5;
LABEL_8:
      v11 = *(v3[6] + ((v10 << 9) | (8 * __clz(__rbit64(v8)))));
      v17 = *(v0 + 64);
      v18 = *(v0 + 80);
      v19 = *(v0 + 96);
      v13 = *v0;
      v14 = *(v0 + 16);
      v15 = *(v0 + 32);
      v16 = *(v0 + 48);

      sub_100030378(v0, v20);
      swift_getAtKeyPath();
      v20[3] = v16;
      v20[4] = v17;
      v20[5] = v18;
      v21 = v19;
      v20[0] = v13;
      v20[1] = v14;
      v20[2] = v15;
      sub_100030318(v20);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v1 = sub_10002F5E8();
      }

      if ((v11 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v11 >= *(v1 + 16))
      {
        goto LABEL_17;
      }

      v8 &= v8 - 1;
      *(v1 + 8 * v11 + 32) = v12;
      result = swift_unknownObjectRelease();
      v5 = v10;
      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v10 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v10 >= v9)
      {

        return v1;
      }

      v8 = v3[v10 + 8];
      ++v5;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_10002A11C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000125FC(&qword_100130CB8);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC22MercuryPosterExtension22Pro24WallpaperRenderer____lazy_storage___baseURL;
  swift_beginAccess();
  sub_1000304EC(v1 + v9, v8);
  v10 = sub_1000E93B4();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1000047C4(v8, &qword_100130CB8);
  sub_10002A2FC(v1, a1);
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_10003055C(v5, v1 + v9);
  return swift_endAccess();
}

uint64_t sub_10002A2FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v27 = sub_1000E9304();
  v3 = *(v27 - 8);
  __chkstk_darwin(v27);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000125FC(&qword_100130CB8);
  __chkstk_darwin(v6 - 8);
  v8 = v23 - v7;
  v9 = sub_1000E93B4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v28 = v23 - v14;
  v15 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 2uLL, 1);
  v16 = sub_1000E9A94();

  if (*(v16 + 16))
  {
    v24 = *(v16 + 32);
    v26 = a1;

    (*(v10 + 56))(v8, 1, 1, v9);
    v17 = *(v3 + 104);
    v18 = v27;
    v17(v5, enum case for URL.DirectoryHint.inferFromPath(_:), v27);
    v25 = v17;
    sub_1000E9394();
    v30 = 0xD000000000000046;
    v31 = 0x80000001000F7520;
    LODWORD(v24) = enum case for URL.DirectoryHint.isDirectory(_:);
    (v17)(v5);
    v23[1] = sub_1000305CC();
    v19 = v28;
    sub_1000E93A4();
    v20 = *(v3 + 8);
    v20(v5, v18);
    v23[0] = *(v10 + 8);
    (v23[0])(v12, v9);
    if (*(v26 + 64))
    {
      v21 = "J717-J718-J817-J818";
    }

    else
    {
      v21 = "-J818-J820-J821.bundle";
    }

    v30 = 0xD000000000000013;
    v31 = v21 | 0x8000000000000000;
    v25(v5, v24, v18);
    sub_1000E93A4();
    v20(v5, v18);

    return (v23[0])(v19, v9);
  }

  else
  {

    return URL.init(fileURLWithPath:)(0, 0xE000000000000000);
  }
}

uint64_t sub_10002A6FC()
{
  v1 = sub_1000E9674();
  v34 = *(v1 - 1);
  v35 = v1;
  __chkstk_darwin(v1);
  v33 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1000E93B4();
  v37 = *(v42 - 8);
  __chkstk_darwin(v42);
  v32 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v36 = &v31 - v5;
  v6 = *(v0 + 328);
  sub_1000125FC(&unk_100130D10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000EEC40;
  *(inited + 32) = 0x73646E756F62;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = [objc_allocWithZone(NSNull) init];
  *(inited + 56) = 0x6E6F697469736F70;
  *(inited + 64) = 0xE800000000000000;
  *(inited + 72) = [objc_allocWithZone(NSNull) init];
  *(inited + 80) = 0x726F66736E617274;
  *(inited + 88) = 0xE90000000000006DLL;
  *(inited + 96) = [objc_allocWithZone(NSNull) init];
  *(inited + 104) = 0xD000000000000014;
  *(inited + 112) = 0x80000001000F74E0;
  *(inited + 120) = [objc_allocWithZone(NSNull) init];
  *(inited + 128) = 0x696F507472617473;
  *(inited + 136) = 0xEA0000000000746ELL;
  *(inited + 144) = [objc_allocWithZone(NSNull) init];
  *(inited + 152) = 0x746E696F50646E65;
  *(inited + 160) = 0xE800000000000000;
  *(inited + 168) = [objc_allocWithZone(NSNull) init];
  *(inited + 176) = 0x7974696361706FLL;
  *(inited + 184) = 0xE700000000000000;
  *(inited + 192) = [objc_allocWithZone(NSNull) init];
  sub_1000A043C(inited);
  swift_setDeallocating();
  sub_1000125FC(&unk_1001311F0);
  swift_arrayDestroy();
  sub_1000125FC(&unk_100130D20);
  isa = sub_1000E9894().super.isa;

  [v6 setActions:isa];

  v9 = *(v0 + 320);
  v31 = v6;
  v10 = [v6 actions];
  if (v10)
  {
    v11 = v10;
    sub_1000E98A4();

    v12.super.isa = sub_1000E9894().super.isa;
  }

  else
  {
    v12.super.isa = 0;
  }

  [v9 setActions:v12.super.isa];

  v13 = v32;
  sub_10002A11C(v32);
  v14 = v33;
  sub_1000E9654();
  v15 = v36;
  sub_1000E9354();
  (*(v34 + 8))(v14, v35);
  v16 = v42;
  v37 = *(v37 + 8);
  (v37)(v13, v42);
  sub_1000E9374(0);
  v17 = objc_allocWithZone(UIImage);
  v18 = sub_1000E98E4();

  v19 = [v17 initWithContentsOfFile:v18];

  if (v19)
  {
    v20 = [v19 CGImage];
    v35 = v9;
    v21 = v31;
    [v31 setContents:v20];

    [v21 setContentsCenter:{0.0, 1.0, 1.0, 1.0}];
    v22 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterColorMatrix];
    v23 = objc_opt_self();
    memset(v38, 0, sizeof(v38));
    v39 = -1082130432;
    v40 = 0;
    v41 = 0x3F80000000000000;
    v24 = [v23 valueWithCAColorMatrix:v38];
    v25 = sub_1000E98E4();
    [v22 setValue:v24 forKey:v25];

    sub_1000125FC(&qword_100132930);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1000EC870;
    *(v26 + 56) = sub_1000304A0();
    *(v26 + 32) = v22;
    v27 = v22;
    v28 = sub_1000E9A74().super.isa;

    [v21 setFilters:v28];

    [v21 setContentsScale:2.0];
    [v21 setContentsGravity:kCAGravityResize];
    [v35 addSublayer:v21];
  }

  else
  {
    sub_1000302C4();
    swift_allocError();
    *v30 = 0;
    swift_willThrow();
  }

  return (v37)(v15, v16);
}

void sub_10002AE24(void *a1@<X8>)
{
  v385 = a1;
  v2 = sub_1000E92C4();
  v377 = *(v2 - 8);
  v378 = v2;
  __chkstk_darwin(v2);
  v374 = &v370 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v375 = sub_1000E92A4();
  v373 = *(v375 - 8);
  __chkstk_darwin(v375);
  v372 = &v370 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000E92D4();
  v379 = *(v5 - 8);
  v380 = v5;
  __chkstk_darwin(v5);
  v376 = &v370 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000E93B4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v370 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v370 - v12;
  v402 = sub_1000E9674();
  v404 = *(v402 - 8);
  __chkstk_darwin(v402);
  v386 = &v370 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v390 = &v370 - v16;
  __chkstk_darwin(v17);
  v391 = &v370 - v18;
  __chkstk_darwin(v19);
  v392 = &v370 - v20;
  __chkstk_darwin(v21);
  v393 = &v370 - v22;
  __chkstk_darwin(v23);
  v394 = &v370 - v24;
  __chkstk_darwin(v25);
  v395 = &v370 - v26;
  __chkstk_darwin(v27);
  v396 = &v370 - v28;
  __chkstk_darwin(v29);
  v397 = &v370 - v30;
  __chkstk_darwin(v31);
  v398 = &v370 - v32;
  __chkstk_darwin(v33);
  v35 = &v370 - v34;
  v36 = [objc_allocWithZone(MTKTextureLoader) initWithDevice:v1[2]];
  v37 = "pro24MainFragment";
  sub_1000E9654();
  v413 = v1;
  sub_10002A11C(v10);
  sub_1000E9354();
  v38 = *(v8 + 8);
  v38(v10, v7);
  sub_1000E9344(v39);
  v41 = v40;
  v400 = v13;
  v411 = v8 + 8;
  v412 = v7;
  v410 = v38;
  v38(v13, v7);
  v409 = sub_1000125FC(&unk_100130390);
  inited = swift_initStackObject();
  v408 = xmmword_1000ED250;
  *(inited + 16) = xmmword_1000ED250;
  v43 = MTKTextureLoaderOptionSRGB;
  *(inited + 32) = MTKTextureLoaderOptionSRGB;
  *(inited + 40) = 1;
  v44 = MTKTextureLoaderOptionTextureStorageMode;
  *(inited + 80) = 2;
  *(inited + 64) = &type metadata for Bool;
  *(inited + 72) = v44;
  v45 = MTKTextureLoaderOptionGenerateMipmaps;
  *(inited + 104) = &type metadata for UInt;
  *(inited + 112) = v45;
  *(inited + 144) = &type metadata for Bool;
  *(inited + 120) = 0;
  v389 = v43;
  v388 = v44;
  v387 = v45;
  sub_1000A0EDC(inited);
  swift_setDeallocating();
  v406 = sub_1000125FC(&unk_100130CE0);
  swift_arrayDestroy();
  type metadata accessor for Option(0);
  v47 = v46;
  v48 = sub_100030404(&qword_10012F9E0, type metadata accessor for Option);
  v407 = v47;
  v405 = v48;
  isa = sub_1000E9894().super.isa;

  v416[0] = 0;
  v50 = [v36 newTextureWithContentsOfURL:v41 options:isa error:v416];

  v51 = v416[0];
  v401 = v36;
  if (!v50)
  {
    v52 = v51;
    sub_1000E92E4();

    swift_willThrow();
    if (qword_10012F760 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_135;
  }

  for (i = [v50 allocatedSize]; ; i = 0)
  {
    v403 = *(v404 + 8);
    v404 += 8;
    v403(v35, v402);
    sub_1000E9654();
    sub_10002A11C(v10);
    v37 = v400;
    sub_1000E9354();
    v60 = v412;
    v61 = v410;
    v410(v10, v412);
    sub_1000E9344(v62);
    v64 = v63;
    v61(v37, v60);
    v65 = swift_initStackObject();
    *(v65 + 16) = v408;
    v67 = v388;
    v66 = v389;
    *(v65 + 32) = v389;
    *(v65 + 40) = 1;
    *(v65 + 64) = &type metadata for Bool;
    *(v65 + 72) = v67;
    *(v65 + 80) = 2;
    v68 = v387;
    *(v65 + 104) = &type metadata for UInt;
    *(v65 + 112) = v68;
    *(v65 + 144) = &type metadata for Bool;
    *(v65 + 120) = 0;
    v389 = v66;
    v388 = v67;
    v387 = v68;
    v35 = sub_1000A0EDC(v65);
    swift_setDeallocating();
    swift_arrayDestroy();
    v69 = sub_1000E9894().super.isa;

    v416[0] = 0;
    v70 = v401;
    v71 = [v401 newTextureWithContentsOfURL:v64 options:v69 error:v416];

    v72 = v416[0];
    v384 = v50;
    if (v71)
    {
      v73 = [v71 allocatedSize];
      v74 = __OFADD__(i, v73);
      i = &v73[i];
      if (v74)
      {
        __break(1u);
LABEL_125:
        __break(1u);
LABEL_126:
        __break(1u);
LABEL_127:
        __break(1u);
LABEL_128:
        __break(1u);
LABEL_129:
        __break(1u);
LABEL_130:
        __break(1u);
LABEL_131:
        __break(1u);
LABEL_132:
        __break(1u);
LABEL_133:
        __break(1u);
        goto LABEL_134;
      }

      v75 = v37;
      v383 = v71;
    }

    else
    {
      v383 = "colors portrait lock";
      v76 = v72;
      sub_1000E92E4();

      swift_willThrow();
      if (qword_10012F760 != -1)
      {
        swift_once();
      }

      v77 = sub_1000E96A4();
      sub_100007488(v77, qword_10013DDE8);
      swift_errorRetain();
      v78 = sub_1000E9684();
      v79 = sub_1000E9BA4();

      v75 = v37;
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v416[0] = v82;
        *v80 = 136315394;
        *(v80 + 4) = sub_100093A3C(0xD000000000000014, v383 | 0x8000000000000000, v416);
        *(v80 + 12) = 2112;
        swift_errorRetain();
        v83 = _swift_stdlib_bridgeErrorToNSError();
        *(v80 + 14) = v83;
        *v81 = v83;
        _os_log_impl(&_mh_execute_header, v78, v79, "failed to load texture “%s”: %@", v80, 0x16u);
        sub_1000047C4(v81, &qword_10012FA60);

        sub_100012710(v82);
      }

      else
      {
      }

      v383 = 0;
      v70 = v401;
    }

    v84 = v402;
    v403(v398, v402);
    v37 = "lights portrait lock";
    sub_1000E9654();
    sub_10002A11C(v10);
    v85 = v75;
    sub_1000E9354();
    v86 = v412;
    v87 = v410;
    v410(v10, v412);
    sub_1000E9344(v88);
    v90 = v89;
    v87(v85, v86);
    v91 = swift_allocObject();
    *(v91 + 16) = v408;
    v93 = v388;
    v92 = v389;
    *(v91 + 32) = v389;
    *(v91 + 40) = 1;
    *(v91 + 64) = &type metadata for Bool;
    *(v91 + 72) = v93;
    *(v91 + 80) = 2;
    v94 = v387;
    *(v91 + 104) = &type metadata for UInt;
    *(v91 + 112) = v94;
    *(v91 + 144) = &type metadata for Bool;
    *(v91 + 120) = 0;
    v398 = v92;
    v389 = v93;
    v388 = v94;
    v35 = sub_1000A0EDC(v91);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v95 = sub_1000E9894().super.isa;

    v416[0] = 0;
    v96 = [v70 newTextureWithContentsOfURL:v90 options:v95 error:v416];

    v97 = v416[0];
    if (v96)
    {
      v98 = [v96 allocatedSize];
      if (__OFADD__(i, v98))
      {
        goto LABEL_125;
      }

      v387 = v96;
      i = &v98[i];
    }

    else
    {
      v99 = v97;
      sub_1000E92E4();

      swift_willThrow();
      if (qword_10012F760 != -1)
      {
        swift_once();
      }

      v100 = sub_1000E96A4();
      sub_100007488(v100, qword_10013DDE8);
      swift_errorRetain();
      v101 = sub_1000E9684();
      v102 = sub_1000E9BA4();

      if (os_log_type_enabled(v101, v102))
      {
        v103 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        v105 = swift_slowAlloc();
        v416[0] = v105;
        *v103 = 136315394;
        *(v103 + 4) = sub_100093A3C(0xD000000000000015, 0x80000001000F73E0, v416);
        *(v103 + 12) = 2112;
        swift_errorRetain();
        v106 = _swift_stdlib_bridgeErrorToNSError();
        *(v103 + 14) = v106;
        *v104 = v106;
        _os_log_impl(&_mh_execute_header, v101, v102, "failed to load texture “%s”: %@", v103, 0x16u);
        sub_1000047C4(v104, &qword_10012FA60);

        sub_100012710(v105);
      }

      else
      {
      }

      v387 = 0;
      v70 = v401;
      v84 = v402;
    }

    v403(v397, v84);
    v37 = "colors landscape lock";
    sub_1000E9654();
    sub_10002A11C(v10);
    v107 = v400;
    sub_1000E9354();
    v108 = v412;
    v109 = v410;
    v410(v10, v412);
    sub_1000E9344(v110);
    v112 = v111;
    v109(v107, v108);
    v113 = swift_allocObject();
    *(v113 + 16) = v408;
    v114 = v398;
    *(v113 + 32) = v398;
    *(v113 + 40) = 1;
    v116 = v388;
    v115 = v389;
    *(v113 + 64) = &type metadata for Bool;
    *(v113 + 72) = v115;
    *(v113 + 80) = 2;
    *(v113 + 104) = &type metadata for UInt;
    *(v113 + 112) = v116;
    *(v113 + 144) = &type metadata for Bool;
    *(v113 + 120) = 0;
    v398 = v114;
    v397 = v115;
    v389 = v116;
    v35 = sub_1000A0EDC(v113);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v117 = sub_1000E9894().super.isa;

    v416[0] = 0;
    v118 = [v70 newTextureWithContentsOfURL:v112 options:v117 error:v416];

    v119 = v416[0];
    v399 = v10;
    if (v118)
    {
      v120 = [v118 allocatedSize];
      v121 = &v120[i];
      if (__OFADD__(i, v120))
      {
        goto LABEL_126;
      }

      v10 = v70;
    }

    else
    {
      v122 = v119;
      sub_1000E92E4();

      swift_willThrow();
      if (qword_10012F760 != -1)
      {
        swift_once();
      }

      v123 = sub_1000E96A4();
      sub_100007488(v123, qword_10013DDE8);
      swift_errorRetain();
      v124 = sub_1000E9684();
      v125 = sub_1000E9BA4();

      if (os_log_type_enabled(v124, v125))
      {
        v126 = swift_slowAlloc();
        v127 = swift_slowAlloc();
        v128 = swift_slowAlloc();
        v416[0] = v128;
        *v126 = 136315394;
        *(v126 + 4) = sub_100093A3C(0xD000000000000015, 0x80000001000F7400, v416);
        *(v126 + 12) = 2112;
        swift_errorRetain();
        v129 = _swift_stdlib_bridgeErrorToNSError();
        *(v126 + 14) = v129;
        *v127 = v129;
        _os_log_impl(&_mh_execute_header, v124, v125, "failed to load texture “%s”: %@", v126, 0x16u);
        sub_1000047C4(v127, &qword_10012FA60);
        v84 = v402;

        sub_100012710(v128);
      }

      else
      {
      }

      v118 = 0;
      v10 = v401;
      v121 = i;
    }

    v382 = v118;
    v403(v396, v84);
    v37 = v400;
    if (qword_10012F508 != -1)
    {
      swift_once();
    }

    v130 = sub_100007488(v84, qword_10013AA10);
    v131 = v399;
    sub_10002A11C(v399);
    v388 = v130;
    sub_1000E9354();
    v132 = v412;
    v133 = v410;
    v410(v131, v412);
    sub_1000E9344(v134);
    v136 = v135;
    v133(v37, v132);
    v137 = swift_allocObject();
    *(v137 + 16) = v408;
    v139 = v397;
    v138 = v398;
    *(v137 + 32) = v398;
    *(v137 + 40) = 1;
    *(v137 + 64) = &type metadata for Bool;
    *(v137 + 72) = v139;
    *(v137 + 80) = 2;
    v140 = v389;
    *(v137 + 104) = &type metadata for UInt;
    *(v137 + 112) = v140;
    *(v137 + 144) = &type metadata for Bool;
    *(v137 + 120) = 0;
    v398 = v138;
    v397 = v139;
    v141 = v140;
    v35 = sub_1000A0EDC(v137);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v142 = sub_1000E9894().super.isa;

    v416[0] = 0;
    v143 = [v10 newTextureWithContentsOfURL:v136 options:v142 error:v416];

    v144 = v416[0];
    v396 = v141;
    if (v143)
    {
      v145 = [v143 allocatedSize];
      v74 = __OFADD__(v121, v145);
      v146 = &v145[v121];
      if (v74)
      {
        goto LABEL_127;
      }

      v389 = v143;
      i = v146;
      v147 = v10;
      v10 = v399;
    }

    else
    {
      v389 = "lights landscape lock";
      v148 = v144;
      sub_1000E92E4();

      swift_willThrow();
      if (qword_10012F760 != -1)
      {
        swift_once();
      }

      v149 = sub_1000E96A4();
      sub_100007488(v149, qword_10013DDE8);
      swift_errorRetain();
      v150 = sub_1000E9684();
      v151 = sub_1000E9BA4();

      v152 = os_log_type_enabled(v150, v151);
      v10 = v399;
      i = v121;
      if (v152)
      {
        v153 = swift_slowAlloc();
        v154 = swift_slowAlloc();
        v155 = swift_slowAlloc();
        v416[0] = v155;
        *v153 = 136315394;
        *(v153 + 4) = sub_100093A3C(0xD000000000000014, v389 | 0x8000000000000000, v416);
        *(v153 + 12) = 2112;
        swift_errorRetain();
        v156 = _swift_stdlib_bridgeErrorToNSError();
        *(v153 + 14) = v156;
        *v154 = v156;
        _os_log_impl(&_mh_execute_header, v150, v151, "failed to load texture “%s”: %@", v153, 0x16u);
        sub_1000047C4(v154, &qword_10012FA60);

        sub_100012710(v155);
      }

      else
      {
      }

      v389 = 0;
      v147 = v401;
    }

    sub_1000E9654();
    sub_10002A11C(v10);
    sub_1000E9354();
    v157 = v412;
    v158 = v410;
    v410(v10, v412);
    sub_1000E9344(v159);
    v161 = v160;
    v158(v37, v157);
    v162 = swift_allocObject();
    *(v162 + 16) = v408;
    v164 = v397;
    v163 = v398;
    *(v162 + 32) = v398;
    *(v162 + 40) = 1;
    *(v162 + 64) = &type metadata for Bool;
    *(v162 + 72) = v164;
    *(v162 + 80) = 2;
    v165 = v396;
    *(v162 + 104) = &type metadata for UInt;
    *(v162 + 112) = v165;
    *(v162 + 144) = &type metadata for Bool;
    *(v162 + 120) = 0;
    v398 = v163;
    v397 = v164;
    v166 = v165;
    v35 = sub_1000A0EDC(v162);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v167 = sub_1000E9894().super.isa;

    v416[0] = 0;
    v168 = [v147 newTextureWithContentsOfURL:v161 options:v167 error:v416];

    v169 = v416[0];
    v396 = v166;
    if (v168)
    {
      v170 = [v168 allocatedSize];
      v171 = &v170[i];
      if (__OFADD__(i, v170))
      {
        goto LABEL_128;
      }

      v172 = v10;
      v381 = v168;
    }

    else
    {
      v381 = "colors portrait home";
      v173 = v169;
      sub_1000E92E4();

      swift_willThrow();
      if (qword_10012F760 != -1)
      {
        swift_once();
      }

      v174 = sub_1000E96A4();
      sub_100007488(v174, qword_10013DDE8);
      swift_errorRetain();
      v175 = sub_1000E9684();
      v176 = sub_1000E9BA4();

      v172 = v10;
      if (os_log_type_enabled(v175, v176))
      {
        v177 = swift_slowAlloc();
        v178 = swift_slowAlloc();
        v179 = swift_slowAlloc();
        v416[0] = v179;
        *v177 = 136315394;
        *(v177 + 4) = sub_100093A3C(0xD000000000000014, v381 | 0x8000000000000000, v416);
        *(v177 + 12) = 2112;
        swift_errorRetain();
        v180 = _swift_stdlib_bridgeErrorToNSError();
        *(v177 + 14) = v180;
        *v178 = v180;
        _os_log_impl(&_mh_execute_header, v175, v176, "failed to load texture “%s”: %@", v177, 0x16u);
        sub_1000047C4(v178, &qword_10012FA60);
        v181 = v402;

        sub_100012710(v179);

        v182 = v181;
        v381 = 0;
        v147 = v401;
        v171 = i;
        goto LABEL_55;
      }

      v381 = 0;
      v147 = v401;
      v171 = i;
    }

    v182 = v402;
LABEL_55:
    v403(v395, v182);
    v10 = "lights portrait home";
    sub_10002A11C(v172);
    sub_1000E9354();
    v183 = v412;
    v184 = v410;
    v410(v172, v412);
    sub_1000E9344(v185);
    v187 = v186;
    v184(v37, v183);
    v188 = swift_allocObject();
    *(v188 + 16) = v408;
    v190 = v397;
    v189 = v398;
    *(v188 + 32) = v398;
    *(v188 + 40) = 1;
    *(v188 + 64) = &type metadata for Bool;
    *(v188 + 72) = v190;
    *(v188 + 80) = 2;
    v191 = v396;
    *(v188 + 104) = &type metadata for UInt;
    *(v188 + 112) = v191;
    *(v188 + 144) = &type metadata for Bool;
    *(v188 + 120) = 0;
    v398 = v189;
    v397 = v190;
    v192 = v191;
    v35 = sub_1000A0EDC(v188);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v193 = sub_1000E9894().super.isa;

    v416[0] = 0;
    v194 = [v147 newTextureWithContentsOfURL:v187 options:v193 error:v416];

    v195 = v416[0];
    if (v194)
    {
      v196 = [v194 allocatedSize];
      v74 = __OFADD__(v171, v196);
      v197 = &v196[v171];
      if (v74)
      {
        goto LABEL_129;
      }

      v198 = v37;
      v199 = v399;
      v395 = v194;
    }

    else
    {
      v396 = "lights portrait home";
      i = v171;
      v200 = v195;
      sub_1000E92E4();

      swift_willThrow();
      if (qword_10012F760 != -1)
      {
        swift_once();
      }

      v198 = v37;
      v201 = sub_1000E96A4();
      sub_100007488(v201, qword_10013DDE8);
      swift_errorRetain();
      v202 = sub_1000E9684();
      v203 = sub_1000E9BA4();

      v204 = os_log_type_enabled(v202, v203);
      v199 = v399;
      if (v204)
      {
        v205 = swift_slowAlloc();
        v206 = swift_slowAlloc();
        v207 = swift_slowAlloc();
        v416[0] = v207;
        *v205 = 136315394;
        *(v205 + 4) = sub_100093A3C(0xD000000000000015, v396 | 0x8000000000000000, v416);
        *(v205 + 12) = 2112;
        swift_errorRetain();
        v208 = _swift_stdlib_bridgeErrorToNSError();
        *(v205 + 14) = v208;
        *v206 = v208;
        _os_log_impl(&_mh_execute_header, v202, v203, "failed to load texture “%s”: %@", v205, 0x16u);
        sub_1000047C4(v206, &qword_10012FA60);

        sub_100012710(v207);
      }

      else
      {
      }

      v395 = 0;
      v147 = v401;
      v197 = i;
    }

    v10 = "colors landscape home";
    sub_1000E9654();
    v209 = v199;
    sub_10002A11C(v199);
    v37 = v198;
    sub_1000E9354();
    v210 = v412;
    v211 = v410;
    v410(v209, v412);
    sub_1000E9344(v212);
    v214 = v213;
    v211(v37, v210);
    v215 = swift_allocObject();
    *(v215 + 16) = v408;
    v217 = v397;
    v216 = v398;
    *(v215 + 32) = v398;
    *(v215 + 40) = 1;
    *(v215 + 64) = &type metadata for Bool;
    *(v215 + 72) = v217;
    *(v215 + 80) = 2;
    *(v215 + 104) = &type metadata for UInt;
    *(v215 + 112) = v192;
    *(v215 + 144) = &type metadata for Bool;
    *(v215 + 120) = 0;
    v398 = v216;
    v397 = v217;
    v396 = v192;
    v35 = sub_1000A0EDC(v215);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v218 = sub_1000E9894().super.isa;

    v416[0] = 0;
    v219 = [v147 newTextureWithContentsOfURL:v214 options:v218 error:v416];

    v220 = v416[0];
    if (v219)
    {
      v221 = [v219 allocatedSize];
      v74 = __OFADD__(v197, v221);
      v222 = &v221[v197];
      if (v74)
      {
        goto LABEL_130;
      }

      v223 = v399;
      v224 = v400;
      v388 = v219;
      i = v222;
    }

    else
    {
      v388 = "colors landscape home";
      i = v197;
      v225 = v220;
      sub_1000E92E4();

      swift_willThrow();
      if (qword_10012F760 != -1)
      {
        swift_once();
      }

      v223 = v399;
      v226 = sub_1000E96A4();
      sub_100007488(v226, qword_10013DDE8);
      swift_errorRetain();
      v227 = sub_1000E9684();
      v228 = sub_1000E9BA4();

      if (os_log_type_enabled(v227, v228))
      {
        v224 = v400;
        v229 = swift_slowAlloc();
        v230 = swift_slowAlloc();
        v231 = swift_slowAlloc();
        v416[0] = v231;
        *v229 = 136315394;
        *(v229 + 4) = sub_100093A3C(0xD000000000000015, v388 | 0x8000000000000000, v416);
        *(v229 + 12) = 2112;
        swift_errorRetain();
        v232 = _swift_stdlib_bridgeErrorToNSError();
        *(v229 + 14) = v232;
        *v230 = v232;
        _os_log_impl(&_mh_execute_header, v227, v228, "failed to load texture “%s”: %@", v229, 0x16u);
        sub_1000047C4(v230, &qword_10012FA60);

        sub_100012710(v231);
      }

      else
      {
        v224 = v400;
      }

      v388 = 0;
      v147 = v401;
    }

    v403(v394, v402);
    v37 = "lights landscape home";
    sub_1000E9654();
    sub_10002A11C(v223);
    v233 = v224;
    v10 = v223;
    sub_1000E9354();
    v234 = v223;
    v235 = v412;
    v236 = v410;
    v410(v234, v412);
    sub_1000E9344(v237);
    v239 = v238;
    v236(v233, v235);
    v240 = swift_allocObject();
    *(v240 + 16) = v408;
    v242 = v397;
    v241 = v398;
    *(v240 + 32) = v398;
    *(v240 + 40) = 0;
    *(v240 + 64) = &type metadata for Bool;
    *(v240 + 72) = v242;
    *(v240 + 80) = 2;
    v243 = v396;
    *(v240 + 104) = &type metadata for UInt;
    *(v240 + 112) = v243;
    *(v240 + 144) = &type metadata for Bool;
    *(v240 + 120) = 0;
    v398 = v241;
    v397 = v242;
    v244 = v243;
    sub_1000A0EDC(v240);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v245 = sub_1000E9894().super.isa;

    v416[0] = 0;
    v35 = v147;
    v246 = [v147 newTextureWithContentsOfURL:v239 options:v245 error:v416];

    v247 = v416[0];
    v396 = v244;
    if (v246)
    {
      v248 = [v246 allocatedSize];
      v249 = &v248[i];
      if (__OFADD__(i, v248))
      {
        goto LABEL_131;
      }

      v394 = v246;
      v37 = v400;
    }

    else
    {
      v371 = 0xD000000000000011;
      v394 = "lights landscape home";
      v250 = v247;
      sub_1000E92E4();

      swift_willThrow();
      if (qword_10012F760 != -1)
      {
        swift_once();
      }

      v251 = sub_1000E96A4();
      sub_100007488(v251, qword_10013DDE8);
      swift_errorRetain();
      v252 = sub_1000E9684();
      v253 = sub_1000E9BA4();

      v254 = os_log_type_enabled(v252, v253);
      v37 = v400;
      if (v254)
      {
        v255 = swift_slowAlloc();
        v256 = swift_slowAlloc();
        v257 = swift_slowAlloc();
        v416[0] = v257;
        *v255 = 136315394;
        *(v255 + 4) = sub_100093A3C(v371, v394 | 0x8000000000000000, v416);
        *(v255 + 12) = 2112;
        swift_errorRetain();
        v258 = _swift_stdlib_bridgeErrorToNSError();
        *(v255 + 14) = v258;
        *v256 = v258;
        _os_log_impl(&_mh_execute_header, v252, v253, "failed to load texture “%s”: %@", v255, 0x16u);
        sub_1000047C4(v256, &qword_10012FA60);
        v259 = v402;

        sub_100012710(v257);

        v260 = v259;
        v394 = 0;
        v147 = v401;
        v249 = i;
        goto LABEL_82;
      }

      v394 = 0;
      v147 = v401;
      v249 = i;
    }

    v260 = v402;
LABEL_82:
    v403(v393, v260);
    sub_1000E9654();
    sub_10002A11C(v10);
    sub_1000E9354();
    v261 = v412;
    v262 = v410;
    v410(v10, v412);
    sub_1000E9344(v263);
    v265 = v264;
    v262(v37, v261);
    v266 = swift_allocObject();
    *(v266 + 16) = v408;
    v268 = v397;
    v267 = v398;
    *(v266 + 32) = v398;
    *(v266 + 40) = 1;
    *(v266 + 64) = &type metadata for Bool;
    *(v266 + 72) = v268;
    *(v266 + 80) = 2;
    v269 = v396;
    *(v266 + 104) = &type metadata for UInt;
    *(v266 + 112) = v269;
    *(v266 + 144) = &type metadata for Bool;
    *(v266 + 120) = 0;
    v398 = v267;
    v397 = v268;
    v270 = v269;
    v35 = sub_1000A0EDC(v266);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v271 = sub_1000E9894().super.isa;

    v416[0] = 0;
    v272 = [v147 newTextureWithContentsOfURL:v265 options:v271 error:v416];

    v273 = v416[0];
    if (v272)
    {
      v274 = [v272 allocatedSize];
      v74 = __OFADD__(v249, v274);
      v275 = &v274[v249];
      if (v74)
      {
        goto LABEL_132;
      }

      v396 = v272;
      i = v275;
    }

    else
    {
      i = v249;
      v276 = v273;
      sub_1000E92E4();

      swift_willThrow();
      if (qword_10012F760 != -1)
      {
        swift_once();
      }

      v277 = sub_1000E96A4();
      sub_100007488(v277, qword_10013DDE8);
      swift_errorRetain();
      v278 = sub_1000E9684();
      v279 = sub_1000E9BA4();

      if (os_log_type_enabled(v278, v279))
      {
        v280 = swift_slowAlloc();
        v281 = swift_slowAlloc();
        v282 = swift_slowAlloc();
        v416[0] = v282;
        *v280 = 136315394;
        *(v280 + 4) = sub_100093A3C(0x6F69746365726964, 0xEE006B73616D206ELL, v416);
        *(v280 + 12) = 2112;
        swift_errorRetain();
        v283 = _swift_stdlib_bridgeErrorToNSError();
        *(v280 + 14) = v283;
        *v281 = v283;
        _os_log_impl(&_mh_execute_header, v278, v279, "failed to load texture “%s”: %@", v280, 0x16u);
        sub_1000047C4(v281, &qword_10012FA60);

        sub_100012710(v282);
      }

      else
      {
      }

      v396 = 0;
      v147 = v401;
    }

    v403(v392, v402);
    sub_1000E9654();
    sub_10002A11C(v10);
    sub_1000E9354();
    v284 = v412;
    v285 = v410;
    v410(v10, v412);
    sub_1000E9344(v286);
    v288 = v287;
    v285(v37, v284);
    v289 = swift_allocObject();
    *(v289 + 16) = v408;
    v291 = v397;
    v290 = v398;
    *(v289 + 32) = v398;
    *(v289 + 40) = 0;
    *(v289 + 64) = &type metadata for Bool;
    *(v289 + 72) = v291;
    *(v289 + 80) = 2;
    *(v289 + 104) = &type metadata for UInt;
    *(v289 + 112) = v270;
    *(v289 + 144) = &type metadata for Bool;
    *(v289 + 120) = 0;
    v398 = v290;
    v397 = v291;
    v292 = v270;
    v35 = sub_1000A0EDC(v289);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v293 = sub_1000E9894().super.isa;

    v416[0] = 0;
    v294 = [v147 newTextureWithContentsOfURL:v288 options:v293 error:v416];

    v295 = v416[0];
    if (v294)
    {
      v296 = [v294 allocatedSize];
      v74 = __OFADD__(i, v296);
      i = &v296[i];
      if (v74)
      {
        goto LABEL_133;
      }

      v393 = v294;
    }

    else
    {
      v297 = v295;
      sub_1000E92E4();

      swift_willThrow();
      if (qword_10012F760 != -1)
      {
        swift_once();
      }

      v298 = sub_1000E96A4();
      sub_100007488(v298, qword_10013DDE8);
      swift_errorRetain();
      v299 = sub_1000E9684();
      v300 = sub_1000E9BA4();

      if (os_log_type_enabled(v299, v300))
      {
        v301 = swift_slowAlloc();
        v302 = swift_slowAlloc();
        v303 = swift_slowAlloc();
        v416[0] = v303;
        *v301 = 136315394;
        *(v301 + 4) = sub_100093A3C(0x726964206B616570, 0xEE006E6F69746365, v416);
        *(v301 + 12) = 2112;
        swift_errorRetain();
        v304 = _swift_stdlib_bridgeErrorToNSError();
        *(v301 + 14) = v304;
        *v302 = v304;
        _os_log_impl(&_mh_execute_header, v299, v300, "failed to load texture “%s”: %@", v301, 0x16u);
        sub_1000047C4(v302, &qword_10012FA60);

        sub_100012710(v303);
      }

      else
      {
      }

      v393 = 0;
      v147 = v401;
    }

    v403(v391, v402);
    sub_1000E9654();
    sub_10002A11C(v10);
    sub_1000E9354();
    v305 = v412;
    v306 = v410;
    v410(v10, v412);
    sub_1000E9344(v307);
    v309 = v308;
    v306(v37, v305);
    v310 = swift_allocObject();
    *(v310 + 16) = v408;
    v312 = v397;
    v311 = v398;
    *(v310 + 32) = v398;
    *(v310 + 40) = 1;
    *(v310 + 64) = &type metadata for Bool;
    *(v310 + 72) = v312;
    *(v310 + 80) = 2;
    *(v310 + 104) = &type metadata for UInt;
    *(v310 + 112) = v292;
    *(v310 + 144) = &type metadata for Bool;
    *(v310 + 120) = 0;
    v398 = v311;
    v397 = v312;
    v35 = v292;
    sub_1000A0EDC(v310);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v313 = sub_1000E9894().super.isa;

    v416[0] = 0;
    v314 = [v147 newTextureWithContentsOfURL:v309 options:v313 error:v416];

    v315 = v416[0];
    if (!v314)
    {
      break;
    }

    v316 = [v314 allocatedSize];
    if (!__OFADD__(i, v316))
    {
      v392 = v314;
      i = &v316[i];
      goto LABEL_109;
    }

LABEL_134:
    __break(1u);
LABEL_135:
    swift_once();
LABEL_4:
    v53 = sub_1000E96A4();
    sub_100007488(v53, qword_10013DDE8);
    swift_errorRetain();
    v54 = sub_1000E9684();
    v55 = sub_1000E9BA4();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v416[0] = v58;
      *v56 = 136315394;
      *(v56 + 4) = sub_100093A3C(0xD000000000000014, v37 | 0x8000000000000000, v416);
      *(v56 + 12) = 2112;
      swift_errorRetain();
      v59 = _swift_stdlib_bridgeErrorToNSError();
      *(v56 + 14) = v59;
      *v57 = v59;
      _os_log_impl(&_mh_execute_header, v54, v55, "failed to load texture “%s”: %@", v56, 0x16u);
      sub_1000047C4(v57, &qword_10012FA60);

      sub_100012710(v58);
    }

    else
    {
    }

    v50 = 0;
  }

  v317 = v315;
  sub_1000E92E4();

  swift_willThrow();
  if (qword_10012F760 != -1)
  {
    swift_once();
  }

  v318 = sub_1000E96A4();
  sub_100007488(v318, qword_10013DDE8);
  swift_errorRetain();
  v319 = sub_1000E9684();
  v320 = sub_1000E9BA4();

  if (os_log_type_enabled(v319, v320))
  {
    v321 = swift_slowAlloc();
    v322 = swift_slowAlloc();
    v323 = swift_slowAlloc();
    v416[0] = v323;
    *v321 = 136315394;
    *(v321 + 4) = sub_100093A3C(0x73616D206B616570, 0xE90000000000006BLL, v416);
    *(v321 + 12) = 2112;
    swift_errorRetain();
    v324 = _swift_stdlib_bridgeErrorToNSError();
    *(v321 + 14) = v324;
    *v322 = v324;
    _os_log_impl(&_mh_execute_header, v319, v320, "failed to load texture “%s”: %@", v321, 0x16u);
    sub_1000047C4(v322, &qword_10012FA60);

    sub_100012710(v323);
  }

  else
  {
  }

  v392 = 0;
LABEL_109:
  v403(v390, v402);
  v325 = v386;
  sub_1000E9654();
  sub_10002A11C(v10);
  sub_1000E9354();
  v326 = v10;
  v327 = v412;
  v328 = v410;
  v410(v326, v412);
  sub_1000E9344(v329);
  v331 = v330;
  v328(v37, v327);
  v332 = swift_allocObject();
  *(v332 + 16) = v408;
  v334 = v397;
  v333 = v398;
  *(v332 + 32) = v398;
  *(v332 + 40) = 1;
  *(v332 + 64) = &type metadata for Bool;
  *(v332 + 72) = v334;
  *(v332 + 80) = 2;
  *(v332 + 104) = &type metadata for UInt;
  *(v332 + 112) = v35;
  *(v332 + 144) = &type metadata for Bool;
  *(v332 + 120) = 0;
  v335 = v333;
  v336 = v334;
  v337 = v35;
  sub_1000A0EDC(v332);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v338 = sub_1000E9894().super.isa;

  v416[0] = 0;
  v339 = [v401 newTextureWithContentsOfURL:v331 options:v338 error:v416];

  v340 = v416[0];
  v413 = v339;
  if (v339)
  {
    v340 = [v413 allocatedSize];
    v74 = __OFADD__(i, v340);
    i = &v340[i];
    if (!v74)
    {
      goto LABEL_119;
    }

    __break(1u);
  }

  v341 = v340;
  sub_1000E92E4();

  swift_willThrow();
  if (qword_10012F760 != -1)
  {
    swift_once();
  }

  v342 = sub_1000E96A4();
  sub_100007488(v342, qword_10013DDE8);
  swift_errorRetain();
  v343 = sub_1000E9684();
  v344 = sub_1000E9BA4();

  if (os_log_type_enabled(v343, v344))
  {
    v345 = swift_slowAlloc();
    v346 = swift_slowAlloc();
    v347 = swift_slowAlloc();
    v416[0] = v347;
    *v345 = 136315394;
    *(v345 + 4) = sub_100093A3C(0xD000000000000013, 0x80000001000F74C0, v416);
    *(v345 + 12) = 2112;
    swift_errorRetain();
    v348 = _swift_stdlib_bridgeErrorToNSError();
    *(v345 + 14) = v348;
    *v346 = v348;
    _os_log_impl(&_mh_execute_header, v343, v344, "failed to load texture “%s”: %@", v345, 0x16u);
    sub_1000047C4(v346, &qword_10012FA60);

    sub_100012710(v347);
  }

  else
  {
  }

  v413 = 0;
LABEL_119:
  v403(v325, v402);
  if (qword_10012F760 != -1)
  {
    swift_once();
  }

  v349 = sub_1000E96A4();
  sub_100007488(v349, qword_10013DDE8);
  v350 = sub_1000E9684();
  v351 = sub_1000E9B94();
  v352 = os_log_type_enabled(v350, v351);
  v353 = i;
  if (v352)
  {
    v354 = swift_slowAlloc();
    v355 = swift_slowAlloc();
    v417[0] = v355;
    *v354 = 136315138;
    v415 = v353;
    v357 = v372;
    v356 = v373;
    v358 = v375;
    (*(v373 + 104))(v372, enum case for ByteCountFormatStyle.Style.memory(_:), v375);
    v359 = v374;
    sub_1000E92B4();
    v360 = v376;
    sub_1000E9144();
    (*(v377 + 8))(v359, v378);
    (*(v356 + 8))(v357, v358);
    sub_1000303B0();
    sub_100030404(&qword_100130CF8, &type metadata accessor for ByteCountFormatStyle);
    sub_10003044C();
    v361 = v380;
    sub_1000E9CB4();
    (*(v379 + 8))(v360, v361);
    v362 = sub_100093A3C(v416[0], v416[1], v417);

    *(v354 + 4) = v362;
    _os_log_impl(&_mh_execute_header, v350, v351, "total texture memory: %s", v354, 0xCu);
    sub_100012710(v355);
  }

  v363 = v385;
  v364 = v383;
  *v385 = v384;
  v363[1] = v364;
  v365 = v382;
  v363[2] = v387;
  v363[3] = v365;
  v366 = v381;
  v363[4] = v389;
  v363[5] = v366;
  v367 = v388;
  v363[6] = v395;
  v363[7] = v367;
  v368 = v396;
  v363[8] = v394;
  v363[9] = v368;
  v369 = v392;
  v363[10] = v393;
  v363[11] = v369;
  v363[12] = v413;
}

void sub_10002E31C(uint64_t a1, void *a2, uint64_t a3, char a4, void *a5)
{
  v6 = v5;
  v10 = [objc_allocWithZone(MTLRenderPassDescriptor) init];
  v11 = [v10 colorAttachments];
  v12 = [v11 objectAtIndexedSubscript:0];

  if (!v12)
  {
    __break(1u);
  }

  v13 = v12;
  [v13 setTexture:a2];
  [v13 setLoadAction:2];
  [v13 setClearColor:{0.0, 0.0, 0.0, 1.0}];
  [v13 setStoreAction:1];

  v14 = [a5 renderCommandEncoderWithDescriptor:v10];
  if (!v14)
  {
    sub_1000302C4();
    swift_allocError();
    *v38 = 1;
    swift_willThrow();
    goto LABEL_60;
  }

  v15 = v14;
  v53 = 0;
  v54 = 0;
  v55 = 0;
  v16 = *(a1 + 72);
  v58 = *(a1 + 56);
  v59[0] = v16;
  *(v59 + 9) = *(a1 + 81);
  v17 = sub_100009DE0();
  v19 = *a1;
  v18 = *(a1 + 4);
  *v52 = v17;
  *&v52[1] = v19;
  *&v52[2] = v18;
  v20 = [a2 width];
  *&v52[3] = v20 / [a2 height];
  v21 = 1.0 - v18;
  v22 = WallpaperState.rotationLandscapeAmount.getter();
  *&v23 = fminf(v21 / 0.6, 1.0);
  if (*&v23 < 0.0)
  {
    v24 = 0.0;
  }

  else
  {
    v24 = *&v23;
  }

  *&v23 = v24;
  [*(v6 + 184) _solveForInput:{v23, a3}];
  v52[4] = LODWORD(v25);
  *&v25 = fminf(v21 / 0.9, 1.0);
  if (*&v25 < 0.0)
  {
    *&v25 = 0.0;
  }

  [*(v6 + 200) _solveForInput:v25];
  *&v52[5] = 1.0 - *&v26;
  *&v26 = fminf(v21 / 0.4, 1.0);
  if (*&v26 < 0.0)
  {
    *&v26 = 0.0;
  }

  [*(v6 + 208) _solveForInput:v26];
  *&v52[6] = 1.0 - *&v27;
  *&v27 = fminf(v21 / 0.7, 1.0);
  if (*&v27 < 0.0)
  {
    *&v27 = 0.0;
  }

  [*(v6 + 216) _solveForInput:v27];
  v52[7] = LODWORD(v28);
  *&v28 = fminf(v21 / 0.16, 1.0);
  if (*&v28 < 0.0)
  {
    *&v28 = 0.0;
  }

  [*(v6 + 224) _solveForInput:v28];
  v52[8] = v29;
  *&v30 = v24;
  [*(v6 + 232) _solveForInput:v30];
  *&v52[9] = 1.0 - *&v31;
  *&v31 = fminf((v21 + -0.2) / 0.8, 1.0);
  if (*&v31 < 0.0)
  {
    *&v31 = 0.0;
  }

  [*(v6 + 192) _solveForInput:v31];
  v52[10] = LODWORD(v32);
  *&v32 = fminf(v22 / 0.625, 1.0);
  if (*&v32 < 0.0)
  {
    *&v32 = 0.0;
  }

  [*(v6 + 240) _solveForInput:v32];
  v52[11] = LODWORD(v33);
  *&v33 = fminf((v22 + -0.275) / 0.225, 1.0);
  if (*&v33 < 0.0)
  {
    *&v33 = 0.0;
  }

  [*(v6 + 304) _solveForInput:v33];
  v56 = LODWORD(v34);
  if (v22 <= 0.001 || v22 >= 0.999)
  {
    *&v34 = fminf((v21 + -0.6) / 0.4, 1.0);
    if (*&v34 < 0.0)
    {
      *&v34 = 0.0;
    }

    [*(v6 + 272) _solveForInput:v34];
    v36 = v22 * *&v35;
    if (v22 <= 0.001 && v22 >= 0.875)
    {
      HIDWORD(v53) = 0;
      goto LABEL_39;
    }
  }

  else
  {
    *&v34 = fminf((v22 + -0.65) / 0.35, 1.0);
    if (*&v34 < 0.0)
    {
      *&v34 = 0.0;
    }

    [*(v6 + 248) _solveForInput:v34];
    v36 = *&v35;
    LODWORD(v53) = LODWORD(v35);
  }

  if (v22 >= 0.25)
  {
    *&v35 = fminf((v22 + -0.25) / 0.625, 1.0);
    if (*&v35 < 0.0)
    {
      *&v35 = 0.0;
    }

    [*(v6 + 264) _solveForInput:v35];
    *&v37 = 1.0 - *&v37;
  }

  else
  {
    *&v35 = fminf(v22 * 4.0, 1.0);
    if (*&v35 < 0.0)
    {
      *&v35 = 0.0;
    }

    [*(v6 + 256) _solveForInput:v35];
  }

  HIDWORD(v53) = LODWORD(v37);
  if (v22 > 0.001)
  {
    goto LABEL_40;
  }

LABEL_39:
  v37 = 0.0;
  if (v22 < 0.55)
  {
LABEL_40:
    if (v22 >= 0.25)
    {
      v40 = (v22 + -0.25) / 0.3;
      if (v40 < 0.0)
      {
        v41 = 0.0;
      }

      else
      {
        v41 = (v22 + -0.25) / 0.3;
      }

      v42 = 1.0 - v41;
      if (v40 >= 1.0)
      {
        *&v37 = 0.0;
      }

      else
      {
        *&v37 = v42;
      }
    }

    else
    {
      v39 = fminf(v22 * 4.0, 1.0);
      v37 = 0.0;
      if (v39 >= 0.0)
      {
        *&v37 = v39;
      }
    }

    [*(v6 + 272) _solveForInput:v37];
  }

  LODWORD(v54) = LODWORD(v37);
  *&v37 = fminf(v19 / 1.25, 1.0);
  if (*&v37 < 0.0)
  {
    *&v37 = 0.0;
  }

  [*(v6 + 280) _solveForInput:v37];
  HIDWORD(v54) = LODWORD(v43);
  *&v43 = fminf((v19 + -0.75) / 0.20833, 1.0);
  if (*&v43 < 0.0)
  {
    *&v43 = 0.0;
  }

  [*(v6 + 288) _solveForInput:v43];
  v55 = LODWORD(v44);
  *&v44 = fminf(v19 / 0.33333, 1.0);
  if (*&v44 < 0.0)
  {
    *&v44 = 0.0;
  }

  [*(v6 + 296) _solveForInput:v44];
  *&v53 = v36 * (1.0 - v45);
  swift_getObjectType();
  [v15 setRenderPipelineState:*(v6 + 72)];
  [v15 setVertexBytes:v52 length:72 atIndex:0];
  [v15 setFragmentBytes:v52 length:72 atIndex:0];
  [v15 setFragmentBuffer:*(v6 + 312) offset:0 atIndex:1];
  v46 = *(v6 + 160);
  v60[4] = *(v6 + 144);
  v60[5] = v46;
  v61 = *(v6 + 176);
  v47 = *(v6 + 96);
  v60[0] = *(v6 + 80);
  v60[1] = v47;
  v48 = *(v6 + 128);
  v60[2] = *(v6 + 112);
  v60[3] = v48;
  sub_100030378(v60, v57);
  sub_100029E00();
  sub_100030318(v60);
  sub_1000E9C64();

  [v15 drawPrimitives:3 vertexStart:0 vertexCount:3];
  [v15 endEncoding];
  if (a4 != -1 && (a4 & 1) != 0)
  {
    sub_100009D98(v50, 1);
    sub_10002EAC8(a1, v50);
    swift_unknownObjectRelease();

    sub_100009DBC(v50, a4);
    return;
  }

  swift_unknownObjectRelease();
LABEL_60:
}

id sub_10002EAC8(uint64_t a1, id a2)
{
  v3 = v2;
  if (*(v2 + 65) == 3)
  {
    if (qword_10012F760 != -1)
    {
      swift_once();
    }

    v6 = sub_1000E96A4();
    sub_100007488(v6, qword_10013DDE8);
    v7 = sub_1000E9684();
    v8 = sub_1000E9BA4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "no zoom known", v9, 2u);
    }

    v10 = [objc_opt_self() mainScreen];
    [v10 bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v48.origin.x = v12;
    v48.origin.y = v14;
    v48.size.width = v16;
    v48.size.height = v18;
    if (!CGRectIsEmpty(v48))
    {
      *(v3 + 65) = sub_100084C34(v12, v14, v16, v18);
    }
  }

  [a2 bounds];
  x = v49.origin.x;
  y = v49.origin.y;
  width = v49.size.width;
  height = v49.size.height;
  v23 = CGRectGetWidth(v49) * 0.5;
  v24 = *(v3 + 320);
  v25 = [v24 superlayer];
  if (!v25 || (v26 = v25, v25, v26 != a2))
  {
    [a2 addSublayer:v24];
    v50.origin.x = x;
    v50.origin.y = y;
    v50.size.width = width;
    v50.size.height = height;
    [v24 setPosition:{v23, CGRectGetHeight(v50) * 0.5}];
    v27 = *(v3 + 328);
    [v27 setAnchorPoint:{0.5, 0.0}];
    v51.origin.x = x;
    v51.origin.y = y;
    v51.size.width = width;
    v51.size.height = height;
    v28 = CGRectGetHeight(v51);
    CATransform3DMakeTranslation(&v45, 0.0, v28 * -0.5, 0.0);
    [v27 setTransform:&v45];
  }

  v29 = *(a1 + 72);
  v46 = *(a1 + 56);
  v47[0] = v29;
  *(v47 + 9) = *(a1 + 81);
  v30 = sub_100009DE0();
  CATransform3DMakeRotation(&v45, -v30, 0.0, 0.0, 1.0);
  [v24 setTransform:&v45];
  v31 = *(v3 + 64);
  v32 = 292.25;
  if (!*(v3 + 65))
  {
    v32 = 357.25;
  }

  v33 = 146.25;
  if (!*(v3 + 65))
  {
    v33 = 187.75;
  }

  v34 = 280.5;
  if (!*(v3 + 65))
  {
    v34 = 341.75;
  }

  v35 = 131.5;
  if (!*(v3 + 65))
  {
    v35 = 168.5;
  }

  if (*(v3 + 64))
  {
    v36 = v32;
  }

  else
  {
    v36 = v34;
  }

  if (*(v3 + 64))
  {
    v37 = v33;
  }

  else
  {
    v37 = v35;
  }

  v38 = *(v3 + 328);
  [v38 setPosition:{0.0, v37 + (v36 - v37) * WallpaperState.rotationLandscapeAmount.getter()}];
  if (*(v3 + 24) == 1)
  {
    if (v31)
    {
      [v38 setBounds:{0.0, 0.0, 424.0, 120.0}];
      goto LABEL_35;
    }

    if (*(v3 + 65))
    {
      v23 = 380.0;
      v41 = 105.0;
    }

    else
    {
      v41 = WallpaperState.rotationLandscapeAmount.getter() * 20.0 + 100.0;
      v23 = 400.0;
    }
  }

  else if (*(v3 + 25) == 1)
  {
    v52.origin.x = x;
    v52.origin.y = y;
    v52.size.width = width;
    v52.size.height = height;
    v23 = CGRectGetWidth(v52);
    v53.origin.x = x;
    v53.origin.y = y;
    v53.size.width = width;
    v53.size.height = height;
    v39 = CGRectGetHeight(v53);
    [v38 position];
    v41 = v39 - v40;
  }

  else
  {
    v41 = 400.0;
  }

  [v38 setBounds:{0.0, 0.0, v23, v41}];
  if (v31)
  {
LABEL_35:
    v42 = 0.0;
    if ((*(v3 + 65) | 2) == 2)
    {
      return [v38 setOpacity:v42];
    }

    goto LABEL_39;
  }

  if (!*(v3 + 65))
  {
LABEL_39:
    LODWORD(v42) = 1.0;
    if (*(v3 + 24) != 1)
    {
      return [v38 setOpacity:v42];
    }

    *&v42 = fabsf(WallpaperState.rotationLandscapeAmount.getter() + -0.5) * 8.0;
    v43 = -3.0;
    goto LABEL_41;
  }

  *&v42 = WallpaperState.rotationLandscapeAmount.getter() / -0.2;
  v43 = 1.0;
LABEL_41:
  *&v42 = *&v42 + v43;
  if (*&v42 < 0.0)
  {
    *&v42 = 0.0;
  }

  return [v38 setOpacity:v42];
}

uint64_t sub_10002EFF0()
{
  swift_unknownObjectRelease();
  sub_1000056DC(*(v0 + 32));
  sub_1000056DC(*(v0 + 48));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v1 = *(v0 + 264);
  v2 = *(v0 + 280);
  v7[4] = *(v0 + 248);
  v7[5] = v1;
  v3 = *(v0 + 296);
  v7[6] = v2;
  v7[7] = v3;
  v4 = *(v0 + 200);
  v7[0] = *(v0 + 184);
  v7[1] = v4;
  v5 = *(v0 + 232);
  v7[2] = *(v0 + 216);
  v7[3] = v5;
  sub_100030348(v7);
  swift_unknownObjectRelease();

  sub_1000047C4(v0 + OBJC_IVAR____TtC22MercuryPosterExtension22Pro24WallpaperRenderer____lazy_storage___baseURL, &qword_100130CB8);
  return v0;
}

uint64_t sub_10002F150()
{
  sub_10002EFF0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for Pro24WallpaperRenderer()
{
  result = qword_100130A90;
  if (!qword_100130A90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10002F1FC()
{
  sub_10002F2E4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10002F2E4()
{
  if (!qword_100130AA0)
  {
    sub_1000E93B4();
    v0 = sub_1000E9C94();
    if (!v1)
    {
      atomic_store(v0, &qword_100130AA0);
    }
  }
}

__n128 sub_10002F33C(uint64_t a1, __int128 *a2)
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
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_10002F360(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_10002F3A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10002F418(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_10002F444(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 104))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_10002F4A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_10002F534(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return sub_1000056DC(v3);
}

uint64_t sub_10002F548(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 48);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return sub_1000056DC(v3);
}

void sub_10002F55C(void *a1)
{
  type metadata accessor for Pro24WallpaperRenderer();
  swift_allocObject();
  sub_10002FB28(a1);
}

void *sub_10002F610(void *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return _swiftEmptyArrayStorage;
    }

    v3 = result;
    sub_1000125FC(&unk_100130CD0);
    v4 = sub_1000E9AC4();
    v5 = v4;
    *(v4 + 16) = a2;
    *(v4 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v4 + 40);
      do
      {
        *v7++ = v3;
        swift_unknownObjectRetain();
        --v6;
      }

      while (v6);
    }

    swift_unknownObjectRetain();
    return v5;
  }

  return result;
}

id sub_10002F6AC@<X0>(void *a1@<X8>)
{
  v2 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v3) = 0.5;
  LODWORD(v4) = 1.0;
  LODWORD(v5) = 1051372203;
  v82 = [v2 initWithControlPoints:v5 :0.0 :v3 :v4];
  v6 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v7) = 1041865114;
  LODWORD(v8) = 1058642330;
  LODWORD(v9) = 1064094925;
  LODWORD(v10) = 1.0;
  v81 = [v6 initWithControlPoints:v7 :v8 :v9 :v10];
  v11 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v12) = 1046711865;
  LODWORD(v13) = 1.0;
  LODWORD(v14) = 1051372203;
  v80 = [v11 initWithControlPoints:v12 :0.0 :v14 :v13];
  v15 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v16) = 981668463;
  LODWORD(v17) = 0.25;
  LODWORD(v18) = 1.0;
  v79 = [v15 initWithControlPoints:v17 :0.0 :v16 :v18];
  v19 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v20) = 1049774373;
  LODWORD(v21) = 1058162981;
  LODWORD(v22) = 1.0;
  v78 = [v19 initWithControlPoints:v20 :0.0 :v21 :v22];
  v23 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v24) = 0.125;
  LODWORD(v25) = 0.5;
  LODWORD(v26) = 1.0;
  v77 = [v23 initWithControlPoints:v24 :0.0 :v25 :v26];
  v27 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v28) = 0.5;
  LODWORD(v29) = 1.0;
  LODWORD(v30) = 1051372203;
  v76 = [v27 initWithControlPoints:v30 :0.0 :v28 :v29];
  v31 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v32) = 1.0;
  LODWORD(v33) = 1053609165;
  LODWORD(v34) = 1053609165;
  v75 = [v31 initWithControlPoints:v33 :0.0 :v34 :v32];
  v35 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v36) = 1.0;
  LODWORD(v37) = 1051372203;
  LODWORD(v38) = 1059760811;
  v39 = [v35 initWithControlPoints:v37 :0.0 :v38 :v36];
  v40 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v41) = 1061997773;
  LODWORD(v42) = 1.0;
  LODWORD(v43) = 1053609165;
  v44 = [v40 initWithControlPoints:v43 :0.0 :v41 :v42];
  v45 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v46) = 1045220557;
  LODWORD(v47) = 1.0;
  LODWORD(v48) = 1053609165;
  v49 = [v45 initWithControlPoints:v46 :0.0 :v48 :v47];
  v50 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v51) = 1.0;
  LODWORD(v52) = 1051372203;
  LODWORD(v53) = 1059760811;
  v54 = [v50 initWithControlPoints:v52 :0.0 :v53 :v51];
  v55 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v56) = 1.0;
  LODWORD(v57) = 1051372203;
  LODWORD(v58) = 1051372203;
  v59 = [v55 initWithControlPoints:v57 :0.0 :v58 :v56];
  v60 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v61) = 1.0;
  LODWORD(v62) = 1051372203;
  LODWORD(v63) = 1059760811;
  v64 = [v60 initWithControlPoints:v62 :0.0 :v63 :v61];
  v65 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v66) = 0.375;
  LODWORD(v67) = 0.625;
  LODWORD(v68) = 1.0;
  v69 = [v65 initWithControlPoints:v66 :0.0 :v67 :v68];
  v70 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v71) = 1.0;
  LODWORD(v72) = 1051372203;
  LODWORD(v73) = 1059760811;
  result = [v70 initWithControlPoints:v72 :0.0 :v73 :v71];
  *a1 = v82;
  a1[1] = v81;
  a1[2] = v80;
  a1[3] = v79;
  a1[4] = v78;
  a1[5] = v77;
  a1[6] = v76;
  a1[7] = v75;
  a1[8] = v39;
  a1[9] = v44;
  a1[10] = v49;
  a1[11] = v54;
  a1[12] = v59;
  a1[13] = v64;
  a1[14] = v69;
  a1[15] = result;
  return result;
}

uint64_t sub_10002F9E4(char a1)
{
  if (a1)
  {
    v1 = &off_100121A20;
  }

  else
  {
    v1 = &off_100121B18;
  }

  v2 = sub_1000A1420(v1);
  type metadata accessor for Pro24CropRectangle(0);
  result = sub_1000E9AC4();
  v4 = result;
  v5 = 0;
  *(result + 16) = 13;
  *(result + 32) = xmmword_1000EEC50;
  *(result + 48) = xmmword_1000EEC50;
  *(result + 64) = xmmword_1000EEC50;
  *(result + 80) = xmmword_1000EEC50;
  *(result + 96) = xmmword_1000EEC50;
  *(result + 112) = xmmword_1000EEC50;
  *(result + 128) = xmmword_1000EEC50;
  *(result + 144) = xmmword_1000EEC50;
  *(result + 160) = xmmword_1000EEC50;
  *(result + 176) = xmmword_1000EEC50;
  *(result + 192) = xmmword_1000EEC50;
  *(result + 208) = xmmword_1000EEC50;
  *(result + 224) = xmmword_1000EEC50;
  v6 = 1 << *(v2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v2 + 64);
  v9 = (v6 + 63) >> 6;
  if (v8)
  {
    while (1)
    {
      v10 = v5;
LABEL_11:
      v11 = __clz(__rbit64(v8)) | (v10 << 6);
      v12 = *(*(v2 + 48) + 8 * v11);
      if ((v12 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v12 >= *(result + 16))
      {
        goto LABEL_18;
      }

      v8 &= v8 - 1;
      *(result + 32 + 16 * v12) = *(*(v2 + 56) + 16 * v11);
      v5 = v10;
      if (!v8)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    while (1)
    {
      v10 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v10 >= v9)
      {

        return v4;
      }

      v8 = *(v2 + 64 + 8 * v10);
      ++v5;
      if (v8)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

void sub_10002FB28(void *a1)
{
  *(v1 + 24) = 0;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 65) = 3;
  *(v1 + 80) = 0u;
  v3 = (v1 + 80);
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0u;
  *(v1 + 160) = 0u;
  *(v1 + 176) = 0;
  sub_10002F6AC(v64);
  v4 = v64[5];
  *(v1 + 248) = v64[4];
  v5 = v64[6];
  v6 = v64[7];
  *(v1 + 264) = v4;
  *(v1 + 280) = v5;
  *(v1 + 296) = v6;
  v7 = v64[1];
  *(v1 + 184) = v64[0];
  *(v1 + 200) = v7;
  v8 = v64[3];
  *(v1 + 216) = v64[2];
  *(v1 + 232) = v8;
  *(v1 + 320) = [objc_allocWithZone(CATransformLayer) init];
  *(v1 + 328) = [objc_allocWithZone(CALayer) init];
  v9 = OBJC_IVAR____TtC22MercuryPosterExtension22Pro24WallpaperRenderer____lazy_storage___baseURL;
  v10 = sub_1000E93B4();
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  *(v1 + 16) = a1;
  swift_unknownObjectRetain();
  v11 = sub_100084BA8();
  v13 = (v11 & 1) == 0 && v11 != 2;
  *(v1 + 64) = v13;
  v14 = [objc_opt_self() mainScreen];
  [v14 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v77.origin.x = v16;
  v77.origin.y = v18;
  v77.size.width = v20;
  v77.size.height = v22;
  if (!CGRectIsEmpty(v77))
  {
    *(v1 + 65) = sub_100084C34(v16, v18, v20, v22);
  }

  v23 = [a1 newDefaultLibrary];
  if (!v23)
  {

    sub_1000302C4();
    swift_allocError();
    *v49 = 0;
    swift_willThrow();
    swift_unknownObjectRelease();
LABEL_18:
    swift_unknownObjectRelease();
LABEL_20:
    v52 = 0;
    goto LABEL_21;
  }

  v24 = v23;
  v25 = [objc_allocWithZone(MTLFunctionConstantValues) init];
  LOBYTE(v65[0]) = *(v1 + 64);
  [v25 setConstantValue:v65 type:53 atIndex:0];
  v63 = [objc_allocWithZone(MTLRenderPipelineDescriptor) init];
  v26 = [v63 colorAttachments];
  v27 = [v26 objectAtIndexedSubscript:0];

  if (!v27)
  {
    __break(1u);
    return;
  }

  [v27 setPixelFormat:81];
  [v27 setBlendingEnabled:0];
  v28 = sub_1000E98E4();
  *&v67 = 0;
  v29 = [v24 newFunctionWithName:v28 constantValues:v25 error:&v67];

  v30 = v67;
  if (!v29 || (v31 = v67, [v63 setVertexFunction:v29], swift_unknownObjectRelease(), v32 = sub_1000E98E4(), *&v67 = 0, v33 = objc_msgSend(v24, "newFunctionWithName:constantValues:error:", v32, v25, &v67), v32, v30 = v67, !v33))
  {
    v50 = v30;
    sub_1000E92E4();

    swift_willThrow();
    sub_1000302C4();
    swift_allocError();
    *v51 = 0;
    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    goto LABEL_20;
  }

  v34 = v67;
  [v63 setFragmentFunction:v33];
  swift_unknownObjectRelease();
  *&v67 = 0;
  v35 = [a1 newRenderPipelineStateWithDescriptor:v63 error:&v67];
  v36 = v67;
  if (!v35)
  {
    v60 = v67;
    sub_1000E92E4();

    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    goto LABEL_18;
  }

  *(v1 + 72) = v35;
  v37 = v36;
  v38 = [a1 newBufferWithLength:208 options:0];
  if (v38)
  {
    v39 = v38;
    *(v1 + 312) = v38;
    swift_unknownObjectRetain();
    sub_10002AE24(v75);
    v40 = *(v1 + 160);
    v71 = *(v1 + 144);
    v72 = v40;
    *&v73 = *(v1 + 176);
    v41 = *(v1 + 96);
    v67 = *v3;
    v68 = v41;
    v42 = *(v1 + 128);
    v69 = *(v1 + 112);
    v70 = v42;
    v43 = v75[1];
    *v3 = v75[0];
    *(v1 + 96) = v43;
    *(v1 + 176) = v76;
    v44 = v75[5];
    *(v1 + 144) = v75[4];
    *(v1 + 160) = v44;
    v45 = v75[3];
    *(v1 + 112) = v75[2];
    *(v1 + 128) = v45;
    sub_100030318(&v67);
    v46 = sub_10002F9E4(*(v1 + 64));
    v47 = [swift_unknownObjectRetain() contents];
    v48 = v39;
    memmove(v47, (v46 + 32), 0xD0uLL);

    sub_10002A6FC();
    if (v62)
    {

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    return;
  }

  sub_1000302C4();
  swift_allocError();
  *v61 = 0;
  swift_willThrow();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v52 = 1;
LABEL_21:
  swift_unknownObjectRelease();
  sub_1000056DC(*(v1 + 32));
  sub_1000056DC(*(v1 + 48));
  if (v52)
  {
    swift_unknownObjectRelease();
  }

  v53 = *(v1 + 160);
  v65[4] = *(v1 + 144);
  v65[5] = v53;
  v66 = *(v1 + 176);
  v54 = *(v1 + 96);
  v65[0] = *v3;
  v65[1] = v54;
  v55 = *(v1 + 128);
  v65[2] = *(v1 + 112);
  v65[3] = v55;
  sub_100030318(v65);
  v56 = *(v1 + 264);
  v71 = *(v1 + 248);
  v72 = v56;
  v57 = *(v1 + 296);
  v73 = *(v1 + 280);
  v74 = v57;
  v58 = *(v1 + 200);
  v67 = *(v1 + 184);
  v68 = v58;
  v59 = *(v1 + 232);
  v69 = *(v1 + 216);
  v70 = v59;
  sub_100030348(&v67);

  sub_1000047C4(v1 + OBJC_IVAR____TtC22MercuryPosterExtension22Pro24WallpaperRenderer____lazy_storage___baseURL, &qword_100130CB8);
  type metadata accessor for Pro24WallpaperRenderer();
  swift_deallocPartialClassInstance();
}

unint64_t sub_1000302C4()
{
  result = qword_100130CB0;
  if (!qword_100130CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130CB0);
  }

  return result;
}

unint64_t sub_1000303B0()
{
  result = qword_100130CF0;
  if (!qword_100130CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130CF0);
  }

  return result;
}

uint64_t sub_100030404(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10003044C()
{
  result = qword_100130D00;
  if (!qword_100130D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130D00);
  }

  return result;
}

unint64_t sub_1000304A0()
{
  result = qword_100130D30;
  if (!qword_100130D30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100130D30);
  }

  return result;
}

uint64_t sub_1000304EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000125FC(&qword_100130CB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003055C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000125FC(&qword_100130CB8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000305CC()
{
  result = qword_100130D38;
  if (!qword_100130D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130D38);
  }

  return result;
}

unint64_t sub_100030634()
{
  result = qword_100130D40;
  if (!qword_100130D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130D40);
  }

  return result;
}

uint64_t sub_100030688(void *a1)
{
  v3 = v1;
  v5 = sub_1000125FC(&qword_100130D80);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_100012800(a1, a1[3]);
  sub_100031AC0();
  sub_1000EA084();
  v10[4] = 0;
  sub_1000E9F14();
  if (!v2)
  {
    memcpy(&v10[4], (v3 + 16), 0x1D4uLL);
    v10[495] = 1;
    sub_100031BA0();
    sub_1000E9F44();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100030818()
{
  if (*v0)
  {
    return 0x6574656D61726170;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_100030858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v6 || (sub_1000E9F74() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1000E9F74();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10003093C(uint64_t a1)
{
  v2 = sub_100031AC0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100030978(uint64_t a1)
{
  v2 = sub_100031AC0();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1000309B4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_100031868(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x1E4uLL);
  }

  return result;
}

uint64_t sub_100030A28()
{
  sub_1000125FC(&unk_100130DD0);
  sub_1000E9674();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1000EC870;
  result = sub_1000E9664();
  qword_10013AA40 = v0;
  return result;
}

id sub_100030AE0()
{
  v1 = v0;
  v2 = sub_1000E91A4();
  __chkstk_darwin(v2);
  sub_1000E91E4();
  swift_allocObject();
  v3 = sub_1000E91D4();
  sub_1000125FC(&qword_100130DA8);
  *(swift_allocObject() + 16) = xmmword_1000EC880;
  sub_1000E9194();
  sub_1000E9184();
  sub_100031D1C();
  sub_1000125FC(&qword_100130DB8);
  sub_100031D74();
  sub_1000E9CD4();
  v4 = v3;
  sub_1000E91B4();
  memcpy(v39, v1, 0x1D4uLL);
  v37 = 0x2D36302D34323032;
  v38 = 0xEA00000000003830;
  sub_100031DD8();
  v5 = sub_1000E91C4();
  if (!v32)
  {
    v7 = v5;
    v8 = v6;
    v39[1] = &type metadata for Data;
    v39[2] = &protocol witness table for Data;
    v37 = v5;
    v38 = v6;
    v9 = sub_100012800(&v37, &type metadata for Data);
    v10 = *v9;
    v11 = v9[1];
    v12 = v11 >> 62;
    if ((v11 >> 62) > 1)
    {
      if (v12 != 2)
      {
        memset(v35, 0, 14);
        sub_100031E2C(v7, v8);
        v13 = v35;
        v14 = v35;
        goto LABEL_25;
      }

      v15 = *(v10 + 16);
      v33 = *(v10 + 24);
      sub_100031E2C(v7, v8);
      v16 = sub_1000E9214();
      if (v16)
      {
        v17 = sub_1000E9244();
        if (__OFSUB__(v15, v17))
        {
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        v16 += v15 - v17;
      }

      v18 = __OFSUB__(v33, v15);
      v19 = v33 - v15;
      if (!v18)
      {
        v20 = sub_1000E9234();
        if (v20 >= v19)
        {
          v21 = v19;
        }

        else
        {
          v21 = v20;
        }

LABEL_20:
        v26 = (v21 + v16);
        if (v16)
        {
          v14 = v26;
        }

        else
        {
          v14 = 0;
        }

        v13 = v16;
        goto LABEL_25;
      }
    }

    else
    {
      if (!v12)
      {
        v35[0] = *v9;
        LOWORD(v35[1]) = v11;
        BYTE2(v35[1]) = BYTE2(v11);
        BYTE3(v35[1]) = BYTE3(v11);
        BYTE4(v35[1]) = BYTE4(v11);
        BYTE5(v35[1]) = BYTE5(v11);
        sub_100031E2C(v7, v8);
        v13 = v35;
        v14 = v35 + BYTE6(v11);
LABEL_25:
        sub_1000310C8(v13, v14, v36);
        v27 = v36[0];
        v28 = v36[1];
        sub_100012710(&v37);
        v29 = objc_allocWithZone(NSFileWrapper);
        isa = sub_1000E93F4().super.isa;
        v4 = [v29 initRegularFileWithContents:isa];

        sub_1000190E4(v27, v28);
        sub_1000190E4(v7, v8);

        return v4;
      }

      v22 = v10;
      v23 = v10 >> 32;
      v34 = v23 - v22;
      if (v23 >= v22)
      {
        sub_100031E2C(v7, v8);
        v16 = sub_1000E9214();
        if (!v16)
        {
          goto LABEL_18;
        }

        v24 = sub_1000E9244();
        if (!__OFSUB__(v22, v24))
        {
          v16 += v22 - v24;
LABEL_18:
          v25 = sub_1000E9234();
          v21 = v34;
          if (v25 < v34)
          {
            v21 = v25;
          }

          goto LABEL_20;
        }

LABEL_30:
        __break(1u);
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_29;
  }

  return v4;
}

uint64_t sub_100030F58()
{
  if (qword_10012F540 != -1)
  {
    swift_once();
  }
}

void sub_100030FB8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1000E9714();
  sub_10003115C(v5, v7);
  v6 = sub_1000E9724();
  (*(*(v6 - 8) + 8))(a1, v6);

  if (!v2)
  {
    sub_1000315FC(v7);
    memcpy(a2, v8, 0x1D4uLL);
  }
}

_BYTE *sub_1000310C8@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1000988C4(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_100031E80(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_100031EFC(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_10003115C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [a1 regularFileContents];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1000E9404();
    v8 = v7;

    sub_1000E9174();
    swift_allocObject();
    sub_1000E9164();
    sub_100031688();
    sub_1000E9154();
    if (v2)
    {
LABEL_3:

      return sub_1000190E4(v6, v8);
    }

    memcpy(__dst, __src, 0x1E4uLL);
    v11 = __dst[0];
    v12 = __dst[1];
    if ((__dst[0] != 0x2D36302D34323032 || __dst[1] != 0xEA00000000003830) && (sub_1000E9F74() & 1) == 0)
    {
      sub_1000125FC(&qword_100132930);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1000EC870;
      sub_1000E9D64(42);

      v17._countAndFlagsBits = v11;
      v17._object = v12;
      sub_1000E99A4(v17);
      sub_1000315FC(__dst);
      v18._countAndFlagsBits = 0x7078652074756220;
      v18._object = 0xEE00206465746365;
      sub_1000E99A4(v18);
      v19._countAndFlagsBits = 0x2D36302D34323032;
      v19._object = 0xEA00000000003830;
      sub_1000E99A4(v19);
      *(v13 + 56) = &type metadata for String;
      *(v13 + 32) = 0xD000000000000018;
      *(v13 + 40) = 0x80000001000F75E0;
      sub_1000EA014();

      sub_100031634();
      swift_allocError();
      *v14 = 0;
      swift_willThrow();
      goto LABEL_3;
    }

    sub_1000190E4(v6, v8);
    return memcpy(a2, __dst, 0x1E4uLL);
  }

  else
  {
    sub_100031634();
    swift_allocError();
    *v10 = 1;
    return swift_willThrow();
  }
}

void *sub_100031418@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_10003115C(a1, v6);

  sub_1000315FC(v6);
  memcpy(v5, v7, 0x1D4uLL);
  sub_10003162C(v5);
  memcpy(__dst, v5, 0x1D5uLL);
  return memcpy(a2, __dst, 0x1D5uLL);
}

double sub_1000315AC(uint64_t a1)
{
  *(a1 + 464) = 0;
  result = 0.0;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 468) = 1;
  return result;
}

unint64_t sub_100031634()
{
  result = qword_100130D50;
  if (!qword_100130D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130D50);
  }

  return result;
}

unint64_t sub_100031688()
{
  result = qword_100130D58;
  if (!qword_100130D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130D58);
  }

  return result;
}

uint64_t sub_1000316F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 484))
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

uint64_t sub_10003173C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 472) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
    *(result + 456) = 0u;
    *(result + 480) = 0;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 484) = 1;
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

    *(result + 484) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100031814()
{
  result = qword_100130D60;
  if (!qword_100130D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130D60);
  }

  return result;
}

void *sub_100031868@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v15 = a2;
  v4 = sub_1000125FC(&qword_100130D68);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - v6;
  sub_100012800(a1, a1[3]);
  sub_100031AC0();
  sub_1000EA074();
  if (v2)
  {
    sub_100012710(a1);
  }

  else
  {
    v8 = v5;
    LOBYTE(v17[0]) = 0;
    v9 = sub_1000E9ED4();
    v11 = v10;
    v12 = v9;
    v20[495] = 1;
    sub_100031B14();
    sub_1000E9F04();
    (*(v8 + 8))(v7, v4);
    memcpy(v20, v19, 0x1D4uLL);
    v16[0] = v12;
    v16[1] = v11;
    memcpy(&v16[2], v19, 0x1D4uLL);
    sub_100031B68(v16, v17);
    sub_100012710(a1);
    v17[0] = v12;
    v17[1] = v11;
    memcpy(v18, v20, sizeof(v18));
    sub_1000315FC(v17);
    return memcpy(v15, v16, 0x1E4uLL);
  }
}

unint64_t sub_100031AC0()
{
  result = qword_100130D70;
  if (!qword_100130D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130D70);
  }

  return result;
}

unint64_t sub_100031B14()
{
  result = qword_100130D78;
  if (!qword_100130D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130D78);
  }

  return result;
}

unint64_t sub_100031BA0()
{
  result = qword_100130D88;
  if (!qword_100130D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130D88);
  }

  return result;
}

unint64_t sub_100031C18()
{
  result = qword_100130D90;
  if (!qword_100130D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130D90);
  }

  return result;
}

unint64_t sub_100031C70()
{
  result = qword_100130D98;
  if (!qword_100130D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130D98);
  }

  return result;
}

unint64_t sub_100031CC8()
{
  result = qword_100130DA0;
  if (!qword_100130DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130DA0);
  }

  return result;
}

unint64_t sub_100031D1C()
{
  result = qword_100130DB0;
  if (!qword_100130DB0)
  {
    sub_1000E91A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130DB0);
  }

  return result;
}

unint64_t sub_100031D74()
{
  result = qword_100130DC0;
  if (!qword_100130DC0)
  {
    sub_100019048(&qword_100130DB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130DC0);
  }

  return result;
}

unint64_t sub_100031DD8()
{
  result = qword_100130DC8;
  if (!qword_100130DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130DC8);
  }

  return result;
}

uint64_t sub_100031E2C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100031E80(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1000E9254();
  swift_allocObject();
  result = sub_1000E9204();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1000E93E4();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_100031EFC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1000E9254();
  swift_allocObject();
  result = sub_1000E9204();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

void sub_100031F80(uint64_t a1)
{
  *&v57 = 0;
  v3 = [v1 loadUserInfoWithError:&v57];
  v4 = v57;
  if (v3)
  {
    v5 = v3;
    v6 = sub_1000E98A4();
    v7 = v4;
  }

  else
  {
    v8 = v57;
    sub_1000E92E4();

    swift_willThrow();

    v6 = sub_1000A15FC(_swiftEmptyArrayStorage);
  }

  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 64);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  if (!v11)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v15 = v13;
LABEL_17:
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = v18 | (v15 << 6);
    sub_100032808(*(a1 + 48) + 40 * v19, v50);
    sub_100012898(*(a1 + 56) + 32 * v19, v49);
    v52 = v50[0];
    v53 = v50[1];
    *&v54 = v51;
    sub_100032864(v49, (&v54 + 8));
    v17 = v15;
LABEL_18:
    v59[0] = v54;
    v59[1] = v55;
    v60 = v56;
    v57 = v52;
    v58 = v53;
    if (!*(&v53 + 1))
    {
      break;
    }

    v52 = v57;
    v53 = v58;
    *&v54 = *&v59[0];
    sub_100032864((v59 + 8), v50);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v49[0] = v6;
    v21 = sub_10009F174(&v52);
    v23 = v6[2];
    v24 = (v22 & 1) == 0;
    v25 = __OFADD__(v23, v24);
    v26 = v23 + v24;
    if (v25)
    {
      goto LABEL_40;
    }

    v27 = v22;
    if (v6[3] >= v26)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_24;
      }

      v32 = v21;
      sub_1000B6558();
      v21 = v32;
      v6 = *&v49[0];
      if ((v27 & 1) == 0)
      {
        goto LABEL_25;
      }

LABEL_8:
      v14 = (v6[7] + 32 * v21);
      sub_100012710(v14);
      sub_100032864(v50, v14);
      sub_100012844(&v52);
      v13 = v17;
      if (!v11)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_1000B3770(v26, isUniquelyReferenced_nonNull_native);
      v21 = sub_10009F174(&v52);
      if ((v27 & 1) != (v28 & 1))
      {
        sub_1000E9FA4();
        __break(1u);
        return;
      }

LABEL_24:
      v6 = *&v49[0];
      if (v27)
      {
        goto LABEL_8;
      }

LABEL_25:
      v6[(v21 >> 6) + 8] |= 1 << v21;
      v29 = v21;
      sub_100032808(&v52, v6[6] + 40 * v21);
      sub_100032864(v50, (v6[7] + 32 * v29));
      sub_100012844(&v52);
      v30 = v6[2];
      v25 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (v25)
      {
        goto LABEL_41;
      }

      v6[2] = v31;
      v13 = v17;
      if (!v11)
      {
LABEL_10:
        if (v12 <= v13 + 1)
        {
          v16 = v13 + 1;
        }

        else
        {
          v16 = v12;
        }

        v17 = v16 - 1;
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= v12)
          {
            v11 = 0;
            v56 = 0;
            v54 = 0u;
            v55 = 0u;
            v52 = 0u;
            v53 = 0u;
            goto LABEL_18;
          }

          v11 = *(a1 + 64 + 8 * v15);
          ++v13;
          if (v11)
          {
            goto LABEL_17;
          }
        }

        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        swift_once();
LABEL_36:
        v38 = sub_1000E96A4();
        sub_100007488(v38, qword_10013DD28);

        swift_errorRetain();
        v39 = sub_1000E9684();
        v40 = sub_1000E9BA4();

        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          *&v57 = swift_slowAlloc();
          *v41 = 136315394;
          v42 = sub_1000E98B4();
          v44 = sub_100093A3C(v42, v43, &v57);

          *(v41 + 4) = v44;
          *(v41 + 12) = 2080;
          swift_getErrorValue();
          v45 = sub_1000E9FB4();
          v47 = sub_100093A3C(v45, v46, &v57);

          *(v41 + 14) = v47;
          _os_log_impl(&_mh_execute_header, v39, v40, "Error updating descriptor user info with %s. %s", v41, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        return;
      }
    }
  }

  isa = sub_1000E9894().super.isa;

  *&v57 = 0;
  v34 = [v48 storeUserInfo:isa error:{&v57, 0}];

  v35 = v57;
  if (!v34)
  {
    v37 = v57;
    sub_1000E92E4();

    swift_willThrow();
    if (qword_10012F720 != -1)
    {
      goto LABEL_42;
    }

    goto LABEL_36;
  }

  v36 = v35;
}

void sub_100032570(uint64_t a1)
{
  v17 = 0;
  v3 = [v1 loadGalleryOptionsWithError:&v17];
  if (v3)
  {
    v4 = v3;
    v5 = v17;
  }

  else
  {
    v6 = v17;
    sub_1000E92E4();

    swift_willThrow();

    v4 = [objc_allocWithZone(ATXPosterDescriptorGalleryOptions) init];
  }

  [v4 setFeaturedConfidenceLevel:a1];
  v17 = 0;
  if ([v1 storeGalleryOptions:v4 error:&v17])
  {
    v7 = v17;
  }

  else
  {
    v8 = v17;
    sub_1000E92E4();

    swift_willThrow();
    if (qword_10012F720 != -1)
    {
      swift_once();
    }

    v9 = sub_1000E96A4();
    sub_100007488(v9, qword_10013DD28);
    swift_errorRetain();
    v10 = sub_1000E9684();
    v11 = sub_1000E9BA4();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v17 = v13;
      *v12 = 136315138;
      swift_getErrorValue();
      v14 = sub_1000E9FB4();
      v16 = sub_100093A3C(v14, v15, &v17);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "Error setting descriptor as hero. %s", v12, 0xCu);
      sub_100012710(v13);
    }

    else
    {
    }
  }
}

_OWORD *sub_100032864(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_100032874(uint64_t a1, unint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    v3 = a2;
    goto LABEL_5;
  }

  if ((a1 & 0x100000000) == 0)
  {
    v4 = __sincosf_stret(*&a1);
    v3 = __PAIR64__(LODWORD(v4.__sinval), LODWORD(v4.__cosval));
LABEL_5:
    v10 = *&v3;
    powf(*(&v3 + 1), 0.66667);
    powf(v10, 0.66667);
    __asm { FMOV            V1.2S, #-1.0 }

    return;
  }

  sub_1000E9E44();
  __break(1u);
}

void sub_1000329DC(float a1)
{
  v2 = (a1 * 3.1416) * 0.5;
  v3 = __sincosf_stret(v2);
  powf(v3.__sinval, 0.66667);
  powf(v3.__cosval, 0.66667);
  __asm { FMOV            V13.2S, #-1.0 }

  if (a1 > 0.0 && a1 < 1.0)
  {
    if (v2 >= 0.001)
    {
      sub_100032874(COERCE_UNSIGNED_INT(v2 + -0.001), 0, 1);
    }

    if (v2 <= 1.5698)
    {
      sub_100032874(COERCE_UNSIGNED_INT(v2 + 0.001), 0, 1);
    }
  }
}

uint64_t sub_100032D44(int a1, int64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, float a8, float a9)
{
  if (a5 < 1)
  {
    goto LABEL_572;
  }

  v246 = a6 - 1;
  if (a6 < 1 || a4 < 3)
  {
    goto LABEL_572;
  }

  if (a3)
  {
    v13 = 0;
  }

  else
  {
    v13 = a2;
  }

  if (a3)
  {
    *&a1 = 0.0;
  }

  v253 = *&a1;
  if (v13 < 0)
  {
    goto LABEL_406;
  }

  v14 = v13 + 1;
  if (__OFADD__(v13, 1))
  {
LABEL_407:
    __break(1u);
LABEL_408:
    __break(1u);
LABEL_409:
    __break(1u);
LABEL_410:
    __break(1u);
LABEL_411:
    __break(1u);
LABEL_412:
    __break(1u);
    goto LABEL_413;
  }

  v16 = a5;
  sub_1000AA488(0, v14 & ~(v14 >> 63), 0);
  if (v14 < 0)
  {
    goto LABEL_408;
  }

  v249 = a7;
  v252 = v16;
  v251 = a6;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = a9 * 0.5;
  do
  {
    v21 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_326:
      __break(1u);
LABEL_327:
      __break(1u);
LABEL_328:
      __break(1u);
LABEL_329:
      __break(1u);
LABEL_330:
      __break(1u);
LABEL_331:
      __break(1u);
LABEL_332:
      __break(1u);
LABEL_333:
      __break(1u);
LABEL_334:
      __break(1u);
LABEL_335:
      __break(1u);
LABEL_336:
      __break(1u);
LABEL_337:
      __break(1u);
LABEL_338:
      __break(1u);
LABEL_339:
      __break(1u);
LABEL_340:
      __break(1u);
LABEL_341:
      __break(1u);
LABEL_342:
      __break(1u);
LABEL_343:
      __break(1u);
LABEL_344:
      __break(1u);
LABEL_345:
      __break(1u);
LABEL_346:
      __break(1u);
LABEL_347:
      __break(1u);
LABEL_348:
      __break(1u);
LABEL_349:
      __break(1u);
LABEL_350:
      __break(1u);
LABEL_351:
      __break(1u);
LABEL_352:
      __break(1u);
LABEL_353:
      __break(1u);
LABEL_354:
      __break(1u);
LABEL_355:
      __break(1u);
LABEL_356:
      __break(1u);
LABEL_357:
      __break(1u);
LABEL_358:
      __break(1u);
LABEL_359:
      __break(1u);
LABEL_360:
      __break(1u);
LABEL_361:
      __break(1u);
LABEL_362:
      __break(1u);
LABEL_363:
      __break(1u);
LABEL_364:
      __break(1u);
LABEL_365:
      __break(1u);
LABEL_366:
      __break(1u);
LABEL_367:
      __break(1u);
LABEL_368:
      __break(1u);
LABEL_369:
      __break(1u);
LABEL_370:
      __break(1u);
LABEL_371:
      __break(1u);
LABEL_372:
      __break(1u);
LABEL_373:
      __break(1u);
LABEL_374:
      __break(1u);
LABEL_375:
      __break(1u);
LABEL_376:
      __break(1u);
LABEL_377:
      __break(1u);
LABEL_378:
      __break(1u);
LABEL_379:
      __break(1u);
LABEL_380:
      __break(1u);
LABEL_381:
      __break(1u);
LABEL_382:
      __break(1u);
LABEL_383:
      __break(1u);
LABEL_384:
      __break(1u);
LABEL_385:
      __break(1u);
LABEL_386:
      __break(1u);
LABEL_387:
      __break(1u);
LABEL_388:
      __break(1u);
LABEL_389:
      __break(1u);
LABEL_390:
      __break(1u);
LABEL_391:
      __break(1u);
LABEL_392:
      __break(1u);
LABEL_393:
      __break(1u);
LABEL_394:
      __break(1u);
LABEL_395:
      __break(1u);
LABEL_396:
      __break(1u);
LABEL_397:
      __break(1u);
LABEL_398:
      __break(1u);
LABEL_399:
      __break(1u);
LABEL_400:
      __break(1u);
LABEL_401:
      __break(1u);
LABEL_402:
      __break(1u);
LABEL_403:
      __break(1u);
LABEL_404:
      __break(1u);
LABEL_405:
      __break(1u);
LABEL_406:
      __break(1u);
      goto LABEL_407;
    }

    if (v19)
    {
      goto LABEL_571;
    }

    sub_1000329DC(v18 / v13);
    v25 = _swiftEmptyArrayStorage[2];
    v24 = _swiftEmptyArrayStorage[3];
    if (v25 >= v24 >> 1)
    {
      v28 = v23;
      v29 = v22;
      sub_1000AA488((v24 > 1), v25 + 1, 1);
      v22 = v29;
      v23 = v28;
    }

    _swiftEmptyArrayStorage[2] = v25 + 1;
    v26 = &_swiftEmptyArrayStorage[2 * v25 + 4];
    *v26 = vmul_n_f32(v22, v253);
    v26[1] = v23;
    v19 = v18 == v13;
    if (v18 == v13)
    {
      v18 = 0;
    }

    else
    {
      v27 = __OFADD__(v18++, 1);
      if (v27)
      {
        goto LABEL_326;
      }
    }

    ++v17;
  }

  while (v21 != v14);
  v30 = v16 + 1;
  if (__OFADD__(v16, 1))
  {
    goto LABEL_409;
  }

  v31 = a4 * v30;
  if ((a4 * v30) >> 64 != (a4 * v30) >> 63)
  {
    goto LABEL_410;
  }

  if (a3)
  {
    v32 = 0;
    v33 = v251;
    goto LABEL_29;
  }

  v32 = a4 * a2;
  v33 = v251;
  if ((a4 * a2) >> 64 != (a4 * a2) >> 63)
  {
    goto LABEL_526;
  }

  if (v32 + 0x4000000000000000 < 0)
  {
    goto LABEL_411;
  }

LABEL_29:
  v34 = v31 + 2 * v32;
  if (__OFADD__(v31, 2 * v32))
  {
    goto LABEL_412;
  }

  v248 = v34 + 2;
  if (__OFADD__(v34, 2))
  {
LABEL_413:
    __break(1u);
LABEL_414:
    __break(1u);
    goto LABEL_415;
  }

  v35 = a4 * v246;
  if ((a4 * v246) >> 64 != (a4 * v246) >> 63)
  {
    goto LABEL_414;
  }

  if (v35 + 0x4000000000000000 < 0)
  {
LABEL_415:
    __break(1u);
LABEL_416:
    __break(1u);
    goto LABEL_417;
  }

  v254 = a4 * v30;
  v36 = v248 + 2 * v35;
  if (__OFADD__(v248, 2 * v35))
  {
    goto LABEL_416;
  }

  if (v33 == 1)
  {
    v37 = 1;
  }

  else
  {
    if ((v33 + 0x4000000000000000) < 0)
    {
      goto LABEL_527;
    }

    v37 = (2 * v33) | 1;
  }

  v38 = a4 * v37;
  if ((a4 * v37) >> 64 != (a4 * v37) >> 63)
  {
LABEL_417:
    __break(1u);
LABEL_418:
    __break(1u);
    goto LABEL_419;
  }

  if (v38 + 0x4000000000000000 < 0)
  {
    goto LABEL_418;
  }

  v39 = a4 * v16;
  if ((a4 * v16) >> 64 != (a4 * v16) >> 63)
  {
LABEL_419:
    __break(1u);
LABEL_420:
    __break(1u);
    goto LABEL_421;
  }

  if (v39 + 0x4000000000000000 < 0)
  {
    goto LABEL_420;
  }

  v40 = 2 * v38;
  v27 = __OFADD__(v40, 2 * v39);
  v41 = v40 + 2 * v39;
  if (v27)
  {
LABEL_421:
    __break(1u);
LABEL_422:
    __break(1u);
    goto LABEL_423;
  }

  v42 = v13 - (v33 != 1);
  v43 = a4 * v42;
  if ((a4 * v42) >> 64 != (a4 * v42) >> 63)
  {
    goto LABEL_422;
  }

  if (v43 + 0x4000000000000000 < 0)
  {
LABEL_423:
    __break(1u);
LABEL_424:
    __break(1u);
    goto LABEL_425;
  }

  if (2 * v43 + 0x4000000000000000 < 0)
  {
    goto LABEL_424;
  }

  v27 = __OFADD__(v41, 4 * v43);
  v44 = v41 + 4 * v43;
  if (v27)
  {
LABEL_425:
    __break(1u);
LABEL_426:
    __break(1u);
    goto LABEL_427;
  }

  v45 = (v44 * 3) >> 64;
  v46 = 3 * v44;
  if (v45 != v46 >> 63)
  {
    goto LABEL_426;
  }

  if (v46 + 0x4000000000000000 < 0)
  {
LABEL_427:
    __break(1u);
LABEL_428:
    __break(1u);
LABEL_429:
    __break(1u);
LABEL_430:
    __break(1u);
LABEL_431:
    __break(1u);
LABEL_432:
    __break(1u);
LABEL_433:
    __break(1u);
LABEL_434:
    __break(1u);
LABEL_435:
    __break(1u);
LABEL_436:
    __break(1u);
LABEL_437:
    __break(1u);
LABEL_438:
    __break(1u);
LABEL_439:
    __break(1u);
LABEL_440:
    __break(1u);
LABEL_441:
    __break(1u);
LABEL_442:
    __break(1u);
LABEL_443:
    __break(1u);
LABEL_444:
    __break(1u);
LABEL_445:
    __break(1u);
LABEL_446:
    __break(1u);
LABEL_447:
    __break(1u);
LABEL_448:
    __break(1u);
LABEL_449:
    __break(1u);
LABEL_450:
    __break(1u);
LABEL_451:
    __break(1u);
LABEL_452:
    __break(1u);
LABEL_453:
    __break(1u);
LABEL_454:
    __break(1u);
LABEL_455:
    __break(1u);
LABEL_456:
    __break(1u);
LABEL_457:
    __break(1u);
LABEL_458:
    __break(1u);
LABEL_459:
    __break(1u);
LABEL_460:
    __break(1u);
LABEL_461:
    __break(1u);
LABEL_462:
    __break(1u);
LABEL_463:
    __break(1u);
LABEL_464:
    __break(1u);
LABEL_465:
    __break(1u);
LABEL_466:
    __break(1u);
LABEL_467:
    __break(1u);
LABEL_468:
    __break(1u);
LABEL_469:
    __break(1u);
LABEL_470:
    __break(1u);
LABEL_471:
    __break(1u);
LABEL_472:
    __break(1u);
LABEL_473:
    __break(1u);
LABEL_474:
    __break(1u);
LABEL_475:
    __break(1u);
LABEL_476:
    __break(1u);
LABEL_477:
    __break(1u);
LABEL_478:
    __break(1u);
LABEL_479:
    __break(1u);
LABEL_480:
    __break(1u);
LABEL_481:
    __break(1u);
LABEL_482:
    __break(1u);
LABEL_483:
    __break(1u);
LABEL_484:
    __break(1u);
LABEL_485:
    __break(1u);
LABEL_486:
    __break(1u);
LABEL_487:
    __break(1u);
LABEL_488:
    __break(1u);
LABEL_489:
    __break(1u);
LABEL_490:
    __break(1u);
LABEL_491:
    __break(1u);
LABEL_492:
    __break(1u);
LABEL_493:
    __break(1u);
LABEL_494:
    __break(1u);
LABEL_495:
    __break(1u);
LABEL_496:
    __break(1u);
LABEL_497:
    __break(1u);
LABEL_498:
    __break(1u);
LABEL_499:
    __break(1u);
LABEL_500:
    __break(1u);
LABEL_501:
    __break(1u);
LABEL_502:
    __break(1u);
LABEL_503:
    __break(1u);
LABEL_504:
    __break(1u);
LABEL_505:
    __break(1u);
LABEL_506:
    __break(1u);
LABEL_507:
    __break(1u);
LABEL_508:
    __break(1u);
LABEL_509:
    __break(1u);
LABEL_510:
    __break(1u);
LABEL_511:
    __break(1u);
LABEL_512:
    __break(1u);
LABEL_513:
    __break(1u);
LABEL_514:
    __break(1u);
LABEL_515:
    __break(1u);
LABEL_516:
    __break(1u);
LABEL_517:
    __break(1u);
LABEL_518:
    __break(1u);
LABEL_519:
    __break(1u);
LABEL_520:
    __break(1u);
LABEL_521:
    __break(1u);
LABEL_522:
    __break(1u);
LABEL_523:
    __break(1u);
LABEL_524:
    __break(1u);
LABEL_525:
    __break(1u);
LABEL_526:
    __break(1u);
LABEL_527:
    __break(1u);
LABEL_528:
    __break(1u);
    goto LABEL_529;
  }

  v241 = v16 + 1;
  v47 = [v249 newBufferWithLength:2 * v46 options:0];
  if (!v47)
  {
LABEL_64:

    sub_10001B6F8();
    swift_allocError();
    *v72 = 3;
    return swift_willThrow();
  }

  if ((v36 * 3) >> 64 != (3 * v36) >> 63)
  {
    goto LABEL_524;
  }

  if ((3 * v36 - 0x2000000000000000) >> 62 != 3)
  {
    goto LABEL_525;
  }

  v48 = v47;
  v49 = 12 * v36;
  v50 = [v249 newBufferWithLength:12 * v36 options:0];
  if (!v50)
  {
LABEL_63:
    swift_unknownObjectRelease();
    goto LABEL_64;
  }

  v51 = v50;
  v52 = [v249 newBufferWithLength:v49 options:0];
  if (!v52)
  {
    swift_unknownObjectRelease();
    goto LABEL_63;
  }

  v53 = v52;
  v245 = v34;
  v54 = sub_1000E98E4();
  v234 = v51;
  [v48 setLabel:v54];

  v55 = sub_1000E98E4();
  [v51 setLabel:v55];

  v56 = sub_1000E98E4();
  [v53 setLabel:v56];

  v57 = v48;
  v58 = [swift_unknownObjectRetain() contents];
  v59 = v51;
  v60 = [swift_unknownObjectRetain() contents];
  v61 = v53;
  v62 = v60;
  v63 = v61;
  v64 = [swift_unknownObjectRetain() contents];
  v65 = v57;
  v66 = v254 + v32;
  if (__OFADD__(v254, v32))
  {
    goto LABEL_533;
  }

  v67 = v251;
  if (!v32)
  {
    v232 = 0;
    v231 = v16;
    v71 = v16 + 1;
LABEL_66:
    v74 = 3 * v245;
    if ((v245 * 3) >> 64 != (3 * v245) >> 63)
    {
      goto LABEL_534;
    }

    v58[3 * v245] = 0;
    v75 = v74 + 1;
    if (__OFADD__(v74, 1))
    {
LABEL_535:
      __break(1u);
      goto LABEL_536;
    }

    v233 = v71;
    v58[v75] = 0;
    v76 = v74 + 2;
    if (__OFADD__(v74, 2))
    {
LABEL_536:
      __break(1u);
      goto LABEL_537;
    }

    v77 = -v20;
    *&v58[v76] = -v20;
    v78 = v245 + 1;
    v62[3 * v245] = 0;
    v62[v75] = 0;
    v62[v76] = -1082130432;
    v240 = v245 + 1;
    v79 = 3 * (v245 + 1);
    if (((v245 + 1) * 3) >> 64 != v79 >> 63)
    {
LABEL_537:
      __break(1u);
      goto LABEL_538;
    }

    v58[3 * v78] = 0;
    v80 = v79 + 1;
    if (__OFADD__(v79, 1))
    {
LABEL_538:
      __break(1u);
      goto LABEL_539;
    }

    v58[v80] = 0;
    v81 = v79 + 2;
    if (__OFADD__(v79, 2))
    {
LABEL_539:
      __break(1u);
LABEL_540:
      __break(1u);
LABEL_541:
      __break(1u);
LABEL_542:
      __break(1u);
LABEL_543:
      __break(1u);
      goto LABEL_544;
    }

    v250 = (v254 + v32);
    *&v58[v81] = v20;
    v62[3 * v78] = 0;
    v62[v80] = 0;
    v62[v81] = 1065353216;
    if (v13 >= _swiftEmptyArrayStorage[2])
    {
      goto LABEL_540;
    }

    v239 = 0;
    v82 = 0;
    v83 = 0;
    v242 = v248 + a4 * v246;
    v84 = a4;
    v85 = COERCE_FLOAT(_swiftEmptyArrayStorage[2 * v13 + 4]) + a8;
    v86 = v16;
    v87 = 0.0 / v16;
LABEL_74:
    if (v82 >= v84)
    {
      goto LABEL_528;
    }

    v238 = v82 + 1;
    if (__OFADD__(v82, 1))
    {
LABEL_529:
      __break(1u);
LABEL_530:
      __break(1u);
LABEL_531:
      __break(1u);
LABEL_532:
      __break(1u);
LABEL_533:
      __break(1u);
LABEL_534:
      __break(1u);
      goto LABEL_535;
    }

    v88 = v13;
    v89 = v67;
    v90 = v82;
    v91 = __sincosf_stret(((v82 / a4) * 3.1416) + ((v82 / a4) * 3.1416));
    v92 = v90 * v241;
    v237 = v90;
    v93 = (v90 * v241) >> 64;
    v94 = v93 != (v90 * v241) >> 63;
    if (v93 != (v90 * v241) >> 63)
    {
      goto LABEL_530;
    }

    v95 = 0;
    v96 = v239;
    v97 = v238 % a4;
    v98 = v238 % a4 * v241;
    v99 = (v87 * ((*(&_swiftEmptyArrayStorage[4] + 1) + *(&_swiftEmptyArrayStorage[4] + 1)) + a9)) - (v20 + *(&_swiftEmptyArrayStorage[4] + 1));
    v67 = v89;
    v13 = v88;
    while (1)
    {
      v100 = 3 * v96;
      if ((v96 * 3) >> 64 != (3 * v96) >> 63)
      {
        goto LABEL_327;
      }

      *&v58[3 * v96] = v91.__cosval * a8;
      v101 = v100 + 1;
      if (__OFADD__(v100, 1))
      {
        goto LABEL_328;
      }

      *&v58[v101] = v91.__sinval * a8;
      v102 = v100 + 2;
      if (__OFADD__(v100, 2))
      {
        goto LABEL_329;
      }

      *&v58[v102] = v99;
      v62[3 * v96] = LODWORD(v91.__cosval);
      v62[v101] = LODWORD(v91.__sinval);
      v62[v102] = 0;
      if (v95 < v16)
      {
        if ((v238 % a4 * v241) >> 64 != v98 >> 63)
        {
          goto LABEL_331;
        }

        v103 = v98 + v95;
        if (__OFADD__(v98, v95))
        {
          goto LABEL_332;
        }

        v104 = v103 + 1;
        if (__OFADD__(v103, 1))
        {
          goto LABEL_333;
        }

        v105 = 3 * v83;
        if ((v83 * 3) >> 64 != (3 * v83) >> 63)
        {
          goto LABEL_334;
        }

        if ((v103 & 0x8000000000000000) != 0)
        {
          goto LABEL_335;
        }

        if (v103 >> 16)
        {
          goto LABEL_336;
        }

        v64[3 * v83] = v103;
        if (__OFADD__(v105, 1))
        {
          goto LABEL_337;
        }

        if (v96 < -1)
        {
          goto LABEL_338;
        }

        v106 = v96 + 1;
        if ((v96 + 1) >> 16)
        {
          goto LABEL_339;
        }

        v64[v105 + 1] = v106;
        v27 = __OFADD__(v105, 2);
        v107 = v105 + 2;
        if (v27)
        {
          goto LABEL_340;
        }

        if (v96 < 0)
        {
          goto LABEL_341;
        }

        v64[v107] = v96;
        v108 = 3 * (v83 + 1);
        if (((v83 + 1) * 3) >> 64 != v108 >> 63)
        {
          goto LABEL_342;
        }

        v64[3 * v83 + 3] = v103;
        if (__OFADD__(v108, 1))
        {
          goto LABEL_343;
        }

        if (v104 >> 16)
        {
          goto LABEL_344;
        }

        v64[v108 + 1] = v104;
        if (__OFADD__(v108, 2))
        {
          goto LABEL_345;
        }

        v64[v108 + 2] = v106;
        v83 += 2;
      }

      if (v16 == v95)
      {
        if (v88)
        {
          v109 = v237 * v88;
          v110 = (v237 * v88) >> 64;
          v111 = v110 == (v237 * v88) >> 63;
          v112 = v110 != (v237 * v88) >> 63;
          if (!v111)
          {
            goto LABEL_541;
          }

          v113 = v97 * v88;
          if ((v97 * v88) >> 64 == (v97 * v88) >> 63)
          {
            v114 = 0;
            v115 = &_swiftEmptyArrayStorage[7];
            while (1)
            {
              v116 = v109 + v114;
              if (__OFADD__(v109, v114))
              {
                goto LABEL_346;
              }

              v117 = v254;
              v118 = v254 + v116;
              if (__OFADD__(v254, v116))
              {
                goto LABEL_347;
              }

              v119 = (v118 * 3) >> 64;
              v120 = 3 * v118;
              if (v119 != v120 >> 63)
              {
                goto LABEL_348;
              }

              v121 = *(v115 - 1);
              v122 = *v115;
              v123 = v91.__cosval * (*&v121 + a8);
              *&v58[v120] = v123;
              v124 = v120 + 1;
              if (__OFADD__(v120, 1))
              {
                goto LABEL_349;
              }

              v125 = v91.__sinval * (*&v121 + a8);
              *&v58[v124] = v125;
              v126 = v120 + 2;
              if (__OFADD__(v120, 2))
              {
                goto LABEL_350;
              }

              *&v58[v126] = v77 - *(&v121 + 1);
              *&v62[v120] = v91.__cosval * *&v122;
              *&v62[v124] = v91.__sinval * *&v122;
              *&v62[v126] = -*(&v122 + 1);
              v27 = __OFADD__(v250, v116);
              v127 = &v250[v116];
              if (v27)
              {
                goto LABEL_351;
              }

              v128 = (v127 * 3) >> 64;
              v129 = 3 * v127;
              if (v128 != v129 >> 63)
              {
                goto LABEL_352;
              }

              *&v58[v129] = v123;
              v130 = v129 + 1;
              if (__OFADD__(v129, 1))
              {
                goto LABEL_353;
              }

              *&v58[v130] = v125;
              v131 = v129 + 2;
              if (__OFADD__(v129, 2))
              {
                goto LABEL_354;
              }

              v132 = v83;
              *&v58[v131] = v20 + *(&v121 + 1);
              *&v62[v129] = v91.__cosval * *&v122;
              *&v62[v130] = v91.__sinval * *&v122;
              v62[v131] = HIDWORD(v122);
              if (v114)
              {
                v133 = v254 + v114;
                if (__OFADD__(v254, v114))
                {
                  goto LABEL_401;
                }

                v134 = v133 - 1;
                if (__OFSUB__(v133, 1))
                {
                  goto LABEL_402;
                }

                v117 = v254 + v114;
                if (__OFADD__(v134, 1))
                {
                  goto LABEL_403;
                }

                v135 = &v250[v114];
                if (__OFADD__(v250, v114))
                {
                  goto LABEL_404;
                }

                v136 = (v135 - 1);
                if (__OFSUB__(v135, 1))
                {
                  goto LABEL_405;
                }

                v137 = v237 * v88;
                v138 = v88;
                if (v112)
                {
                  goto LABEL_355;
                }
              }

              else
              {
                v134 = 0;
                v137 = v92;
                v135 = v250;
                v136 = v16;
                v138 = v241;
                if (v94)
                {
                  goto LABEL_355;
                }
              }

              v139 = v134 + v137;
              if (__OFADD__(v134, v137))
              {
                goto LABEL_356;
              }

              v140 = v97 * v138;
              if ((v97 * v138) >> 64 != (v97 * v138) >> 63)
              {
                goto LABEL_357;
              }

              v27 = __OFADD__(v134, v140);
              v141 = v134 + v140;
              if (v27)
              {
                goto LABEL_358;
              }

              v142 = v117 + v109;
              if (__OFADD__(v117, v109))
              {
                goto LABEL_359;
              }

              v27 = __OFADD__(v117, v113);
              v143 = v117 + v113;
              if (v27)
              {
                goto LABEL_360;
              }

              v144 = 3 * v83;
              if ((v83 * 3) >> 64 != (3 * v83) >> 63)
              {
                goto LABEL_361;
              }

              if ((v139 & 0x8000000000000000) != 0)
              {
                goto LABEL_362;
              }

              if (v139 >> 16)
              {
                goto LABEL_363;
              }

              v64[3 * v83] = v139;
              if (__OFADD__(v144, 1))
              {
                goto LABEL_364;
              }

              if ((v142 & 0x8000000000000000) != 0)
              {
                goto LABEL_365;
              }

              if (v142 >> 16)
              {
                goto LABEL_366;
              }

              v64[v144 + 1] = v142;
              if (__OFADD__(v144, 2))
              {
                goto LABEL_367;
              }

              if ((v141 & 0x8000000000000000) != 0)
              {
                goto LABEL_368;
              }

              if (v141 >> 16)
              {
                goto LABEL_369;
              }

              v64[v144 + 2] = v141;
              v145 = 3 * (v83 + 1);
              if (((v83 + 1) * 3) >> 64 != v145 >> 63)
              {
                goto LABEL_370;
              }

              v64[3 * v83 + 3] = v142;
              if (__OFADD__(v145, 1))
              {
                goto LABEL_371;
              }

              if ((v143 & 0x8000000000000000) != 0)
              {
                goto LABEL_372;
              }

              if (v143 >> 16)
              {
                goto LABEL_373;
              }

              v64[v145 + 1] = v143;
              if (__OFADD__(v145, 2))
              {
                goto LABEL_374;
              }

              v64[v145 + 2] = v141;
              v146 = v136 + v137;
              if (__OFADD__(v136, v137))
              {
                goto LABEL_375;
              }

              v27 = __OFADD__(v136, v140);
              v147 = v136 + v140;
              if (v27)
              {
                goto LABEL_376;
              }

              v148 = &v135[v109];
              if (__OFADD__(v135, v109))
              {
                goto LABEL_377;
              }

              v27 = __OFADD__(v135, v113);
              v149 = &v135[v113];
              if (v27)
              {
                goto LABEL_378;
              }

              v150 = 3 * (v83 + 2);
              if (((v83 + 2) * 3) >> 64 != v150 >> 63)
              {
                goto LABEL_379;
              }

              if ((v146 & 0x8000000000000000) != 0)
              {
                goto LABEL_380;
              }

              if (v146 >> 16)
              {
                goto LABEL_381;
              }

              v64[3 * v83 + 6] = v146;
              if (__OFADD__(v150, 1))
              {
                goto LABEL_382;
              }

              if ((v147 & 0x8000000000000000) != 0)
              {
                goto LABEL_383;
              }

              if (v147 >> 16)
              {
                goto LABEL_384;
              }

              v64[v150 + 1] = v147;
              if (__OFADD__(v150, 2))
              {
                goto LABEL_385;
              }

              if ((v148 & 0x8000000000000000) != 0)
              {
                goto LABEL_386;
              }

              if (v148 >> 16)
              {
                goto LABEL_387;
              }

              v64[v150 + 2] = v148;
              v151 = 3 * (v83 + 3);
              if (((v83 + 3) * 3) >> 64 != v151 >> 63)
              {
                goto LABEL_388;
              }

              v64[3 * v83 + 9] = v148;
              if (__OFADD__(v151, 1))
              {
                goto LABEL_389;
              }

              v64[v151 + 1] = v147;
              if (__OFADD__(v151, 2))
              {
                goto LABEL_390;
              }

              if ((v149 & 0x8000000000000000) != 0)
              {
                goto LABEL_391;
              }

              if (v149 >> 16)
              {
                goto LABEL_392;
              }

              ++v114;
              v64[v151 + 2] = v149;
              v115 += 2;
              v83 += 4;
              if (v88 == v114)
              {
                v83 = v132 + 4;
                goto LABEL_164;
              }
            }
          }

          goto LABEL_542;
        }

LABEL_164:
        v152 = v237 * v233;
        if ((v237 * v233) >> 64 != (v237 * v233) >> 63)
        {
          goto LABEL_531;
        }

        v153 = v97 * v233;
        if ((v97 * v233) >> 64 != (v97 * v233) >> 63)
        {
          goto LABEL_532;
        }

        v154 = v245 >> 16;
        v155 = v240 >> 16;
        if (v67 != 1)
        {
          v156 = v237 * v246;
          if ((v237 * v246) >> 64 != (v237 * v246) >> 63)
          {
            goto LABEL_547;
          }

          v157 = v248 + v156;
          if (__OFADD__(v248, v156))
          {
            goto LABEL_550;
          }

          v158 = v242 + v156;
          if (__OFADD__(v242, v156))
          {
            goto LABEL_551;
          }

          v159 = 1;
          while (1)
          {
            v160 = v159 - 1;
            v161 = v157 + v159 - 1;
            if (__OFADD__(v157, v159 - 1))
            {
              goto LABEL_393;
            }

            v27 = __OFADD__(v158, v160);
            v162 = v158 + v160;
            if (v27)
            {
              goto LABEL_394;
            }

            v163 = (v161 * 3) >> 64;
            v164 = 3 * v161;
            if (v163 != v164 >> 63)
            {
              goto LABEL_395;
            }

            v165 = v85 * (v159 / v251);
            v166 = v91.__cosval * v165;
            *&v58[v164] = v91.__cosval * v165;
            v167 = v164 + 1;
            if (__OFADD__(v164, 1))
            {
              goto LABEL_396;
            }

            v168 = v91.__sinval * v165;
            *&v58[v167] = v168;
            v169 = v164 + 2;
            if (__OFADD__(v164, 2))
            {
              goto LABEL_397;
            }

            *&v58[v169] = v77;
            v62[v164] = 0;
            v62[v167] = 0;
            v62[v169] = -1082130432;
            v170 = (v162 * 3) >> 64;
            v171 = 3 * v162;
            if (v170 != v171 >> 63)
            {
              goto LABEL_398;
            }

            *&v58[v171] = v166;
            v172 = v171 + 1;
            if (__OFADD__(v171, 1))
            {
              goto LABEL_399;
            }

            *&v58[v172] = v168;
            v173 = v171 + 2;
            if (__OFADD__(v171, 2))
            {
              goto LABEL_400;
            }

            *&v58[v173] = v20;
            v62[v171] = 0;
            v62[v172] = 0;
            v62[v173] = 1065353216;
            if (v67 == ++v159)
            {
              v174 = 0;
              v175 = v232 + v152;
              v176 = __OFADD__(v232, v152);
              v177 = v232 + v153;
              v178 = __OFADD__(v232, v153);
              v236 = v178;
              v27 = __OFADD__(v231, v152);
              v179 = v231 + v152;
              v180 = v27;
              v235 = v180;
              v27 = __OFADD__(v231, v153);
              v181 = v231 + v153;
              v182 = v27;
              v183 = v246 * v97;
              v184 = (v246 * v97) >> 64 != (v246 * v97) >> 63;
              v185 = v248 + v183;
              v186 = __OFADD__(v248, v183);
              v187 = v242 + v183;
              v188 = __OFADD__(v242, v183);
              while (1)
              {
                if (v174)
                {
                  if (v174 >= v246)
                  {
                    if (v176)
                    {
                      goto LABEL_449;
                    }

                    if (v236)
                    {
                      goto LABEL_450;
                    }

                    if (v235)
                    {
                      goto LABEL_452;
                    }

                    if (v182)
                    {
                      goto LABEL_454;
                    }

                    v210 = v248 + v174;
                    if (__OFADD__(v248, v174))
                    {
                      goto LABEL_457;
                    }

                    v27 = __OFSUB__(v210, 1);
                    v211 = v210 - 1;
                    if (v27)
                    {
                      goto LABEL_458;
                    }

                    v212 = v211 + v156;
                    if (__OFADD__(v211, v156))
                    {
                      goto LABEL_461;
                    }

                    if (v184)
                    {
                      goto LABEL_462;
                    }

                    v213 = v211 + v183;
                    if (__OFADD__(v211, v183))
                    {
                      goto LABEL_465;
                    }

                    v214 = 3 * v83;
                    if ((v83 * 3) >> 64 != (3 * v83) >> 63)
                    {
                      goto LABEL_467;
                    }

                    if ((v212 & 0x8000000000000000) != 0)
                    {
                      goto LABEL_469;
                    }

                    if (v212 >> 16)
                    {
                      goto LABEL_471;
                    }

                    v64[3 * v83] = v212;
                    if (__OFADD__(v214, 1))
                    {
                      goto LABEL_472;
                    }

                    if ((v213 & 0x8000000000000000) != 0)
                    {
                      goto LABEL_475;
                    }

                    if (v213 >> 16)
                    {
                      goto LABEL_477;
                    }

                    v64[v214 + 1] = v213;
                    v27 = __OFADD__(v214, 2);
                    v215 = v214 + 2;
                    if (v27)
                    {
                      goto LABEL_479;
                    }

                    if ((v175 & 0x8000000000000000) != 0)
                    {
                      goto LABEL_480;
                    }

                    if (v175 >> 16)
                    {
                      goto LABEL_482;
                    }

                    v64[v215] = v175;
                    v216 = 3 * (v83 + 1);
                    if (((v83 + 1) * 3) >> 64 != v216 >> 63)
                    {
                      goto LABEL_485;
                    }

                    v64[3 * v83 + 3] = v213;
                    if (__OFADD__(v216, 1))
                    {
                      goto LABEL_486;
                    }

                    if ((v177 & 0x8000000000000000) != 0)
                    {
                      goto LABEL_489;
                    }

                    if (v177 >> 16)
                    {
                      goto LABEL_490;
                    }

                    v64[v216 + 1] = v177;
                    v27 = __OFADD__(v216, 2);
                    v217 = v216 + 2;
                    if (v27)
                    {
                      goto LABEL_492;
                    }

                    v64[v217] = v175;
                    v218 = v242 + v174;
                    if (__OFADD__(v242, v174))
                    {
                      goto LABEL_494;
                    }

                    v27 = __OFSUB__(v218, 1);
                    v219 = v218 - 1;
                    if (v27)
                    {
                      goto LABEL_497;
                    }

                    v220 = v219 + v156;
                    if (__OFADD__(v219, v156))
                    {
                      goto LABEL_499;
                    }

                    v221 = v219 + v183;
                    if (__OFADD__(v219, v183))
                    {
                      goto LABEL_501;
                    }

                    v222 = 3 * (v83 + 2);
                    if (((v83 + 2) * 3) >> 64 != v222 >> 63)
                    {
                      goto LABEL_503;
                    }

                    if ((v220 & 0x8000000000000000) != 0)
                    {
                      goto LABEL_504;
                    }

                    if (v220 >> 16)
                    {
                      goto LABEL_506;
                    }

                    v64[3 * v83 + 6] = v220;
                    if (__OFADD__(v222, 1))
                    {
                      goto LABEL_509;
                    }

                    if ((v179 & 0x8000000000000000) != 0)
                    {
                      goto LABEL_510;
                    }

                    if (v179 >> 16)
                    {
                      goto LABEL_512;
                    }

                    v64[v222 + 1] = v179;
                    v27 = __OFADD__(v222, 2);
                    v223 = v222 + 2;
                    if (v27)
                    {
                      goto LABEL_515;
                    }

                    if ((v221 & 0x8000000000000000) != 0)
                    {
                      goto LABEL_517;
                    }

                    if (v221 >> 16)
                    {
                      goto LABEL_518;
                    }

                    v64[v223] = v221;
                    v224 = 3 * (v83 + 3);
                    if (((v83 + 3) * 3) >> 64 != v224 >> 63)
                    {
                      goto LABEL_519;
                    }

                    v64[3 * v83 + 9] = v221;
                    if (__OFADD__(v224, 1))
                    {
                      goto LABEL_520;
                    }

                    v64[v224 + 1] = v179;
                    v206 = v224 + 2;
                    if (__OFADD__(v224, 2))
                    {
                      goto LABEL_521;
                    }

                    if ((v181 & 0x8000000000000000) != 0)
                    {
                      goto LABEL_522;
                    }

                    if (v181 >> 16)
                    {
                      goto LABEL_523;
                    }

                    v189 = v181;
                    v190 = 4;
                  }

                  else
                  {
                    v191 = v248 + v174;
                    if (__OFADD__(v248, v174))
                    {
                      goto LABEL_448;
                    }

                    v192 = v191 - 1;
                    if (__OFSUB__(v191, 1))
                    {
                      goto LABEL_451;
                    }

                    v193 = v192 + v156;
                    if (__OFADD__(v192, v156))
                    {
                      goto LABEL_453;
                    }

                    if (v184)
                    {
                      goto LABEL_455;
                    }

                    v194 = v192 + v183;
                    if (__OFADD__(v192, v183))
                    {
                      goto LABEL_456;
                    }

                    v195 = v193 + 1;
                    if (__OFADD__(v193, 1))
                    {
                      goto LABEL_459;
                    }

                    v196 = 3 * v83;
                    if ((v83 * 3) >> 64 != (3 * v83) >> 63)
                    {
                      goto LABEL_460;
                    }

                    if ((v193 & 0x8000000000000000) != 0)
                    {
                      goto LABEL_463;
                    }

                    if (v193 >> 16)
                    {
                      goto LABEL_464;
                    }

                    v64[3 * v83] = v193;
                    if (__OFADD__(v196, 1))
                    {
                      goto LABEL_466;
                    }

                    if ((v194 & 0x8000000000000000) != 0)
                    {
                      goto LABEL_468;
                    }

                    if (v194 >> 16)
                    {
                      goto LABEL_470;
                    }

                    v64[v196 + 1] = v194;
                    if (__OFADD__(v196, 2))
                    {
                      goto LABEL_473;
                    }

                    if (v195 >> 16)
                    {
                      goto LABEL_474;
                    }

                    v64[v196 + 2] = v195;
                    v197 = 3 * (v83 + 1);
                    if (((v83 + 1) * 3) >> 64 != v197 >> 63)
                    {
                      goto LABEL_476;
                    }

                    v64[3 * v83 + 3] = v194;
                    if (__OFADD__(v197, 1))
                    {
                      goto LABEL_478;
                    }

                    if (v194 == 0xFFFF)
                    {
                      goto LABEL_481;
                    }

                    v64[v197 + 1] = v194 + 1;
                    v27 = __OFADD__(v197, 2);
                    v198 = v197 + 2;
                    if (v27)
                    {
                      goto LABEL_483;
                    }

                    v64[v198] = v195;
                    v199 = v242 + v174;
                    if (__OFADD__(v242, v174))
                    {
                      goto LABEL_484;
                    }

                    v200 = v199 - 1;
                    if (__OFSUB__(v199, 1))
                    {
                      goto LABEL_487;
                    }

                    v201 = v200 + v156;
                    if (__OFADD__(v200, v156))
                    {
                      goto LABEL_488;
                    }

                    v202 = v201 + 1;
                    if (__OFADD__(v201, 1))
                    {
                      goto LABEL_491;
                    }

                    v203 = v200 + v183;
                    if (__OFADD__(v200, v183))
                    {
                      goto LABEL_493;
                    }

                    v204 = 3 * (v83 + 2);
                    if (((v83 + 2) * 3) >> 64 != v204 >> 63)
                    {
                      goto LABEL_495;
                    }

                    if ((v201 & 0x8000000000000000) != 0)
                    {
                      goto LABEL_496;
                    }

                    if (v201 >> 16)
                    {
                      goto LABEL_498;
                    }

                    v64[3 * v83 + 6] = v201;
                    if (__OFADD__(v204, 1))
                    {
                      goto LABEL_500;
                    }

                    if (v202 >> 16)
                    {
                      goto LABEL_502;
                    }

                    v64[v204 + 1] = v202;
                    if (__OFADD__(v204, 2))
                    {
                      goto LABEL_505;
                    }

                    if ((v203 & 0x8000000000000000) != 0)
                    {
                      goto LABEL_507;
                    }

                    if (v203 >> 16)
                    {
                      goto LABEL_508;
                    }

                    v64[v204 + 2] = v203;
                    v205 = 3 * (v83 + 3);
                    if (((v83 + 3) * 3) >> 64 != v205 >> 63)
                    {
                      goto LABEL_511;
                    }

                    v64[3 * v83 + 9] = v203;
                    if (__OFADD__(v205, 1))
                    {
                      goto LABEL_513;
                    }

                    v64[v205 + 1] = v202;
                    v206 = v205 + 2;
                    if (__OFADD__(v205, 2))
                    {
                      goto LABEL_514;
                    }

                    if (v203 == 0xFFFF)
                    {
                      goto LABEL_516;
                    }

                    v189 = v203 + 1;
                    v190 = 4;
                  }
                }

                else
                {
                  if (v184)
                  {
                    goto LABEL_428;
                  }

                  if (v186)
                  {
                    goto LABEL_429;
                  }

                  v207 = 3 * v83;
                  if ((v83 * 3) >> 64 != (3 * v83) >> 63)
                  {
                    goto LABEL_430;
                  }

                  if ((v245 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_431;
                  }

                  if (v154)
                  {
                    goto LABEL_432;
                  }

                  v64[3 * v83] = v245;
                  if (__OFADD__(v207, 1))
                  {
                    goto LABEL_433;
                  }

                  if ((v185 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_434;
                  }

                  if (v185 >> 16)
                  {
                    goto LABEL_435;
                  }

                  v64[v207 + 1] = v185;
                  v27 = __OFADD__(v207, 2);
                  v208 = v207 + 2;
                  if (v27)
                  {
                    goto LABEL_436;
                  }

                  if ((v157 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_437;
                  }

                  if (v157 >> 16)
                  {
                    goto LABEL_438;
                  }

                  v64[v208] = v157;
                  if (v188)
                  {
                    goto LABEL_439;
                  }

                  v209 = 3 * (v83 + 1);
                  if (((v83 + 1) * 3) >> 64 != v209 >> 63)
                  {
                    goto LABEL_440;
                  }

                  if (v155)
                  {
                    goto LABEL_441;
                  }

                  v64[3 * v83 + 3] = v240;
                  if (__OFADD__(v209, 1))
                  {
                    goto LABEL_442;
                  }

                  if ((v158 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_443;
                  }

                  if (v158 >> 16)
                  {
                    goto LABEL_444;
                  }

                  v64[v209 + 1] = v158;
                  v206 = v209 + 2;
                  if (__OFADD__(v209, 2))
                  {
                    goto LABEL_445;
                  }

                  if ((v187 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_446;
                  }

                  if (v187 >> 16)
                  {
                    goto LABEL_447;
                  }

                  v189 = v242 + v183;
                  v190 = 2;
                }

                ++v174;
                v64[v206] = v189;
                v83 += v190;
                v67 = v251;
                v16 = v252;
                if (v251 == v174)
                {
                  goto LABEL_323;
                }
              }
            }
          }
        }

        v225 = v232 + v152;
        if (__OFADD__(v232, v152))
        {
          goto LABEL_548;
        }

        v226 = v232 + v153;
        if (__OFADD__(v232, v153))
        {
          goto LABEL_549;
        }

        v227 = v231 + v152;
        if (__OFADD__(v231, v152))
        {
          goto LABEL_552;
        }

        v228 = v231 + v153;
        if (__OFADD__(v231, v153))
        {
          goto LABEL_553;
        }

        v229 = 3 * v83;
        if ((v83 * 3) >> 64 != (3 * v83) >> 63)
        {
          goto LABEL_554;
        }

        if ((v245 & 0x8000000000000000) != 0)
        {
          goto LABEL_555;
        }

        if (v154)
        {
          goto LABEL_556;
        }

        v64[3 * v83] = v245;
        if (__OFADD__(v229, 1))
        {
          goto LABEL_557;
        }

        if ((v226 & 0x8000000000000000) != 0)
        {
          goto LABEL_558;
        }

        if (v226 >> 16)
        {
          goto LABEL_559;
        }

        v64[v229 + 1] = v226;
        if (__OFADD__(v229, 2))
        {
          goto LABEL_560;
        }

        if ((v225 & 0x8000000000000000) == 0)
        {
          if (v225 >> 16)
          {
            goto LABEL_562;
          }

          v64[v229 + 2] = v225;
          v230 = 3 * (v83 + 1);
          if (((v83 + 1) * 3) >> 64 != v230 >> 63)
          {
            goto LABEL_563;
          }

          if (v155)
          {
            goto LABEL_564;
          }

          v64[3 * v83 + 3] = v240;
          if (__OFADD__(v230, 1))
          {
            goto LABEL_565;
          }

          if ((v227 & 0x8000000000000000) != 0)
          {
            goto LABEL_566;
          }

          if (v227 >> 16)
          {
            goto LABEL_567;
          }

          v64[v230 + 1] = v227;
          if (__OFADD__(v230, 2))
          {
            goto LABEL_568;
          }

          if ((v228 & 0x8000000000000000) == 0)
          {
            if (v228 >> 16)
            {
              goto LABEL_570;
            }

            v64[v230 + 2] = v228;
            v83 += 2;
LABEL_323:
            v239 += v241;
            v82 = v238;
            v84 = a4;
            if (v238 == a4)
            {

              return v234;
            }

            goto LABEL_74;
          }

          goto LABEL_569;
        }

        goto LABEL_561;
      }

      v99 = ((++v95 / v86) * ((*(&_swiftEmptyArrayStorage[4] + 1) + *(&_swiftEmptyArrayStorage[4] + 1)) + a9)) - (v20 + *(&_swiftEmptyArrayStorage[4] + 1));
      ++v96;
      if (__OFADD__(v92, v95))
      {
        goto LABEL_330;
      }
    }
  }

  v68 = v254 + v13;
  if (__OFADD__(v254, v13))
  {
    goto LABEL_543;
  }

  v69 = v68 - 1;
  if (__OFSUB__(v68, 1))
  {
LABEL_544:
    __break(1u);
LABEL_545:
    __break(1u);
    goto LABEL_546;
  }

  v70 = v66 + v13;
  if (__OFADD__(v66, v13))
  {
    goto LABEL_545;
  }

  v231 = v70 - 1;
  if (!__OFSUB__(v70, 1))
  {
    v232 = v69;
    v71 = v13;
    goto LABEL_66;
  }

LABEL_546:
  __break(1u);
LABEL_547:
  __break(1u);
LABEL_548:
  __break(1u);
LABEL_549:
  __break(1u);
LABEL_550:
  __break(1u);
LABEL_551:
  __break(1u);
LABEL_552:
  __break(1u);
LABEL_553:
  __break(1u);
LABEL_554:
  __break(1u);
LABEL_555:
  __break(1u);
LABEL_556:
  __break(1u);
LABEL_557:
  __break(1u);
LABEL_558:
  __break(1u);
LABEL_559:
  __break(1u);
LABEL_560:
  __break(1u);
LABEL_561:
  __break(1u);
LABEL_562:
  __break(1u);
LABEL_563:
  __break(1u);
LABEL_564:
  __break(1u);
LABEL_565:
  __break(1u);
LABEL_566:
  __break(1u);
LABEL_567:
  __break(1u);
LABEL_568:
  __break(1u);
LABEL_569:
  __break(1u);
LABEL_570:
  __break(1u);
LABEL_571:
  __break(1u);
LABEL_572:
  result = sub_1000E9E44();
  __break(1u);
  return result;
}

void sub_100034308(int64_t a1, unint64_t a2, id a3, float a4, float a5, float a6, float a7, float a8, float a9)
{
  v9 = a2 + 1;
  if (__OFADD__(a2 + 1, 4))
  {
LABEL_167:
    __break(1u);
    goto LABEL_168;
  }

  v140 = a2 + 8;
  if (__OFADD__(a2 + 5, 3))
  {
LABEL_168:
    __break(1u);
    goto LABEL_169;
  }

  v10 = a2 + 2;
  if (__OFADD__(a2, 2))
  {
LABEL_169:
    __break(1u);
    goto LABEL_170;
  }

  v11 = a2 + 4;
  if (__OFADD__(v10, 2))
  {
LABEL_170:
    __break(1u);
    goto LABEL_171;
  }

  if ((a2 + 0x4000000000000004) < 0)
  {
LABEL_171:
    __break(1u);
    goto LABEL_172;
  }

  v12 = a1 + 1;
  if (__OFADD__(a1, 1))
  {
LABEL_172:
    __break(1u);
    goto LABEL_173;
  }

  v13 = v12 * v140;
  if ((v12 * v140) >> 64 != (v12 * v140) >> 63)
  {
LABEL_173:
    __break(1u);
    goto LABEL_174;
  }

  v14 = 2 * v11;
  v15 = a1 * 2 * v11;
  v138 = v14;
  if ((a1 * v14) >> 64 != v15 >> 63)
  {
LABEL_174:
    __break(1u);
    goto LABEL_175;
  }

  v16 = (v15 * 3) >> 64;
  v17 = 3 * v15;
  if (v16 != v17 >> 63)
  {
LABEL_175:
    __break(1u);
    goto LABEL_176;
  }

  if (v17 + 0x4000000000000000 < 0)
  {
LABEL_176:
    __break(1u);
LABEL_177:
    __break(1u);
LABEL_178:
    __break(1u);
LABEL_179:
    __break(1u);
    goto LABEL_180;
  }

  v24 = [a3 newBufferWithLength:2 * v17 options:0];
  if (!v24)
  {
LABEL_139:
    sub_10001B6F8();
    swift_allocError();
    *v132 = 3;
    swift_willThrow();
    return;
  }

  if ((v13 * 3) >> 64 != (3 * v13) >> 63)
  {
LABEL_229:
    __break(1u);
    goto LABEL_230;
  }

  if ((3 * v13 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_230:
    __break(1u);
    goto LABEL_231;
  }

  v25 = v24;
  v26 = 12 * v13;
  v27 = [a3 newBufferWithLength:12 * v13 options:0];
  if (!v27)
  {
LABEL_138:
    swift_unknownObjectRelease();
    goto LABEL_139;
  }

  v28 = v27;
  v29 = [a3 newBufferWithLength:v26 options:0];
  if (!v29)
  {
LABEL_137:
    swift_unknownObjectRelease();
    goto LABEL_138;
  }

  if (a1 < 0)
  {
LABEL_231:
    __break(1u);
    goto LABEL_232;
  }

  v135 = v25;
  v133 = v29;
  v134 = v28;
  sub_1000AA4A8(0, v12 & ~(v12 >> 63), 0);
  if ((v12 & 0x8000000000000000) == 0)
  {
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = a1;
    v34 = a9 - a8;
    do
    {
      v35 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        goto LABEL_154;
      }

      if (v32)
      {
        goto LABEL_235;
      }

      v38 = __sincosf_stret((v34 * (v31 / a1)) + a8);
      *&v37 = v38.__cosval;
      sinval = v38.__sinval;
      v40 = _swiftEmptyArrayStorage[2];
      v39 = _swiftEmptyArrayStorage[3];
      if (v40 >= v39 >> 1)
      {
        sub_1000AA4A8((v39 > 1), v40 + 1, 1);
        sinval = v38.__sinval;
        *&v37 = v38.__cosval;
        v33 = a1;
      }

      *(&v37 + 1) = sinval;
      _swiftEmptyArrayStorage[2] = v40 + 1;
      _swiftEmptyArrayStorage[v40 + 4] = v37;
      v32 = v31 == v33;
      if (v31 == v33)
      {
        v31 = 0;
      }

      else
      {
        v41 = __OFADD__(v31++, 1);
        if (v41)
        {
          goto LABEL_156;
        }
      }

      ++v30;
    }

    while (v35 != v12);
    if ((a2 & 0x8000000000000000) != 0)
    {
      goto LABEL_233;
    }

    sub_1000AA488(0, v9 & ~(v9 >> 63), 0);
    if (v9 < 0)
    {
      goto LABEL_234;
    }

    v42 = 0;
    v43 = 0;
    v44 = 0;
    do
    {
      v45 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        goto LABEL_155;
      }

      if (v44)
      {
        goto LABEL_236;
      }

      sub_1000329DC(v43 / a2);
      v49 = _swiftEmptyArrayStorage[2];
      v48 = _swiftEmptyArrayStorage[3];
      if (v49 >= v48 >> 1)
      {
        v51 = v46;
        v52 = v47;
        sub_1000AA488((v48 > 1), v49 + 1, 1);
        v47 = v52;
        v46 = v51;
      }

      _swiftEmptyArrayStorage[2] = v49 + 1;
      v50 = &_swiftEmptyArrayStorage[2 * v49];
      v50[4] = v46;
      v50[5] = v47;
      v44 = v43 == a2;
      if (v43 == a2)
      {
        v43 = 0;
      }

      else
      {
        v41 = __OFADD__(v43++, 1);
        if (v41)
        {
          goto LABEL_157;
        }
      }

      ++v42;
    }

    while (v45 != v9);
    v53 = [swift_unknownObjectRetain() contents];
    v54 = v134;
    v55 = [swift_unknownObjectRetain() contents];
    v56 = v133;
    v57 = [swift_unknownObjectRetain() contents];
    v58 = v135;
    v59 = 6 * v10;
    v60 = a2 + 3;
    v61 = __OFADD__(a2, 3);
    v136 = v61;
    v62 = 6 * (v10 + 1);
    v63 = a2 + 5;
    v64 = __OFADD__(v60, 2);
    if (_swiftEmptyArrayStorage[2])
    {
      v65 = 0;
      v66 = a7 * 0.4;
      v67 = vdup_n_s32(0x3EC3EF15u);
      while (2)
      {
        v68 = v65 * v140;
        if ((v65 * v140) >> 64 == (v65 * v140) >> 63)
        {
          v69 = _swiftEmptyArrayStorage[v65 + 4];
          v70 = &v53[12 * v68];
          *v70 = vmul_n_f32(v69, a5);
          v70[1].i32[0] = 0;
          v71 = &v55[12 * v68];
          *v71 = 0;
          *(v71 + 2) = 1065353216;
          v72 = v68 + 1;
          if (__OFADD__(v68, 1))
          {
LABEL_159:
            __break(1u);
            goto LABEL_160;
          }

          v73 = &v53[12 * v72];
          *v73 = vmul_n_f32(v69, a4 + a7);
          v73[1].i32[0] = 0;
          v74 = *(v71 + 2);
          v75 = &v55[12 * v72];
          *v75 = *v71;
          *(v75 + 2) = v74;
          v76 = v68 + 2;
          if (__OFADD__(v68, 2))
          {
LABEL_160:
            __break(1u);
            goto LABEL_161;
          }

          v77 = vsub_f32(0, v69);
          v78 = *v73;
          v79 = &v53[12 * v76];
          v79[1].i32[0] = v73[1].i32[0];
          *v79 = v78;
          v80 = &v55[12 * v76];
          *v80 = vmul_f32(v77, v67);
          v80[1].i32[0] = 1064076127;
          v81 = v68 + 3;
          if (__OFADD__(v68, 3))
          {
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
            goto LABEL_167;
          }

          if (_swiftEmptyArrayStorage[2])
          {
            v82 = 0;
            v83 = vmul_f32(v77, 0x3EC3EF153F6C835FLL);
            v84 = vmul_f32(v77, 0x3F6C835F3EC3EF15);
            v85 = vmul_n_f32(v69, (a7 * 0.29289) + a4);
            v86 = __PAIR64__(COERCE_UNSIGNED_INT(vmuls_lane_f32(0.92388, v69, 1)), v84.u32[0]);
            v87.i32[0] = vdup_lane_s32(v83, 1).u32[0];
            v88 = &_swiftEmptyArrayStorage[5];
            v89 = a2 == 0;
            while (1)
            {
              if (__OFADD__(v81, v82))
              {
                goto LABEL_142;
              }

              v91 = v88[-1];
              v90 = *v88;
              v92 = 12 * (v81 + v82);
              v93 = &v53[v92];
              v87.f32[1] = 0.92388 * v69.f32[0];
              *v93 = vsub_f32(v85, vmul_n_f32(vadd_f32(vmul_f32(v86, v91), vrev64_s32(vmul_f32(v87, v91))), v66));
              v93[1].f32[0] = -(a7 * 0.29289) - (v66 * (vmuls_lane_f32(0.38268, v91, 1) - (0.92388 * v91.f32[0])));
              v94 = &v55[v92];
              *v94 = vadd_f32(vmul_f32(v83, vrev64_s32(v90)), vmul_f32(v84, v90));
              v94[1].f32[0] = (0.92388 * v90.f32[0]) + vmuls_lane_f32(0.38268, v90, 1);
              if (v89)
              {
                break;
              }

              v89 = a2 - 1 == v82;
              v88 += 2;
              if (++v82 >= _swiftEmptyArrayStorage[2])
              {
                goto LABEL_141;
              }
            }

            v95 = v76 + a2;
            if (__OFADD__(v76, a2))
            {
              goto LABEL_162;
            }

            v41 = __OFADD__(v95, 1);
            v96 = v95 + 1;
            if (v41)
            {
              goto LABEL_163;
            }

            v97 = v96 + 1;
            if (__OFADD__(v96, 1))
            {
              goto LABEL_164;
            }

            v69.f32[0] = v69.f32[0] * a4;
            v98 = 12 * v97;
            v99 = &v53[12 * v97];
            *v99 = v69.f32[0];
            v99[1] = v69.f32[1] * a4;
            v99[2] = -a7;
            v100 = &v55[v98];
            v83.i32[1] = v84.i32[1];
            *v100 = v83;
            v100[1].i32[0] = 1053028117;
            if (!__OFADD__(v96, 2))
            {
              v101 = *v99;
              v102 = 12 * (v96 + 2);
              v103 = &v53[v102];
              *(v103 + 2) = v99[2];
              *v103 = v101;
              v104 = &v55[v102];
              *v104 = v77;
              v104[1].i32[0] = 0;
              v41 = __OFADD__(v96, 3);
              v105 = v96 + 3;
              if (v41)
              {
                goto LABEL_166;
              }

              v106 = 12 * v105;
              v107 = &v53[v106];
              *v107 = v69.f32[0];
              v107[1] = v69.f32[1] * a4;
              v107[2] = -a6;
              LODWORD(v107) = v104[1].i32[0];
              v108 = &v55[v106];
              *v108 = *v104;
              *(v108 + 2) = v107;
              v109 = a1;
              if (v65 >= a1)
              {
                goto LABEL_134;
              }

              v110 = v65 * v138;
              if ((v65 * v138) >> 64 != (v65 * v138) >> 63)
              {
                goto LABEL_177;
              }

              v111 = (v110 * 3) >> 64;
              v112 = 3 * v110;
              if (v111 != v112 >> 63)
              {
                goto LABEL_178;
              }

              v113 = (v65 + 1) * v140;
              if (((v65 + 1) * v140) >> 64 != v113 >> 63)
              {
                goto LABEL_179;
              }

              if ((v68 & 0x8000000000000000) == 0)
              {
                if (v68 >> 16)
                {
                  goto LABEL_181;
                }

                v57[v112] = v68;
                if (v113 < 0)
                {
                  goto LABEL_182;
                }

                if (v113 >> 16)
                {
                  goto LABEL_183;
                }

                v57[v112 | 1] = v113;
                if (!__OFADD__(v112, 2))
                {
                  if (v72 >> 16)
                  {
                    goto LABEL_185;
                  }

                  v57[v112 + 2] = v72;
                  if (__OFADD__(v112, 3))
                  {
                    goto LABEL_186;
                  }

                  v57[v112 + 3] = v113;
                  if (__OFADD__(v112, 4))
                  {
                    goto LABEL_187;
                  }

                  if (v113 != 0xFFFF)
                  {
                    v57[v112 + 4] = v113 + 1;
                    if (__OFADD__(v112, 5))
                    {
                      goto LABEL_189;
                    }

                    v57[v112 + 5] = v72;
                    v114 = v112 + 6;
                    if (__OFADD__(v112, 6))
                    {
                      goto LABEL_190;
                    }

                    if (v76 >> 16)
                    {
                      goto LABEL_191;
                    }

                    v57[v114] = v76;
                    if (v113 <= 0xFFFD)
                    {
                      v57[v114 + 1] = v113 + 2;
                      if (__OFADD__(v114, 2))
                      {
                        goto LABEL_193;
                      }

                      if (v68 == 65533)
                      {
                        goto LABEL_194;
                      }

                      v57[v112 + 8] = v68 + 3;
                      if (__OFADD__(v114, 3))
                      {
                        goto LABEL_195;
                      }

                      v57[v112 + 9] = v113 + 2;
                      if (!__OFADD__(v114, 4))
                      {
                        if (v113 == 65533)
                        {
                          goto LABEL_197;
                        }

                        v57[v112 + 10] = v113 + 3;
                        if (__OFADD__(v114, 5))
                        {
                          goto LABEL_198;
                        }

                        v57[v112 + 11] = v68 + 3;
                        if (a2)
                        {
                          v115 = 3;
                          v116 = 12;
                          do
                          {
                            v117 = v112 + v116;
                            if (__OFADD__(v112, v116))
                            {
                              goto LABEL_143;
                            }

                            v118 = v68 + v115;
                            if (__OFADD__(v68, v115))
                            {
                              goto LABEL_144;
                            }

                            if (v118 >> 16)
                            {
                              goto LABEL_145;
                            }

                            v57[v117] = v118;
                            v119 = v113 + v115;
                            if (__OFADD__(v113, v115))
                            {
                              goto LABEL_146;
                            }

                            if (v119 >> 16)
                            {
                              goto LABEL_147;
                            }

                            v57[v117 | 1] = v119;
                            if (__OFADD__(v117, 2))
                            {
                              goto LABEL_148;
                            }

                            if (v118 == 0xFFFF)
                            {
                              goto LABEL_149;
                            }

                            v120 = v118 + 1;
                            v57[v117 + 2] = v120;
                            if (__OFADD__(v117, 3))
                            {
                              goto LABEL_150;
                            }

                            v57[v117 + 3] = v119;
                            if (__OFADD__(v117, 4))
                            {
                              goto LABEL_151;
                            }

                            if (v119 == 0xFFFF)
                            {
                              goto LABEL_152;
                            }

                            v57[v117 + 4] = v119 + 1;
                            v41 = __OFADD__(v117, 5);
                            v121 = v117 + 5;
                            if (v41)
                            {
                              goto LABEL_153;
                            }

                            v57[v121] = v120;
                            v116 += 6;
                          }

                          while (++v115 - a2 != 3);
                        }

                        if ((v10 * 6) >> 64 != (6 * v10) >> 63)
                        {
                          goto LABEL_199;
                        }

                        if (!v136)
                        {
                          v122 = v112 + v59;
                          if (__OFADD__(v112, v59))
                          {
                            goto LABEL_201;
                          }

                          v123 = v68 + v60;
                          if (__OFADD__(v68, v60))
                          {
                            goto LABEL_202;
                          }

                          if ((v123 & 0x8000000000000000) != 0)
                          {
                            goto LABEL_203;
                          }

                          if (!(v123 >> 16))
                          {
                            v57[v122] = v123;
                            v124 = v113 + v60;
                            if (__OFADD__(v113, v60))
                            {
                              goto LABEL_205;
                            }

                            if ((v124 & 0x8000000000000000) != 0)
                            {
                              goto LABEL_206;
                            }

                            if (v124 >> 16)
                            {
                              goto LABEL_207;
                            }

                            v57[v122 | 1] = v124;
                            if (!__OFADD__(v122, 2))
                            {
                              if (v123 == 0xFFFF)
                              {
                                goto LABEL_209;
                              }

                              v125 = v123 + 1;
                              v57[v122 + 2] = v125;
                              if (__OFADD__(v122, 3))
                              {
                                goto LABEL_210;
                              }

                              v57[v122 + 3] = v124;
                              if (__OFADD__(v122, 4))
                              {
                                goto LABEL_211;
                              }

                              if (v124 != 0xFFFF)
                              {
                                v57[v122 + 4] = v124 + 1;
                                v41 = __OFADD__(v122, 5);
                                v126 = v122 + 5;
                                if (v41)
                                {
                                  goto LABEL_213;
                                }

                                v57[v126] = v125;
                                if (((v10 + 1) * 6) >> 64 != v62 >> 63)
                                {
                                  goto LABEL_214;
                                }

                                if (v64)
                                {
                                  goto LABEL_215;
                                }

                                v127 = v112 + v62;
                                if (!__OFADD__(v112, v62))
                                {
                                  v128 = v68 + v63;
                                  if (__OFADD__(v68, v63))
                                  {
                                    goto LABEL_217;
                                  }

                                  if ((v128 & 0x8000000000000000) != 0)
                                  {
                                    goto LABEL_218;
                                  }

                                  if (v128 >> 16)
                                  {
                                    goto LABEL_219;
                                  }

                                  v57[v127] = v128;
                                  v129 = v113 + v63;
                                  if (!__OFADD__(v113, v63))
                                  {
                                    if ((v129 & 0x8000000000000000) != 0)
                                    {
                                      goto LABEL_221;
                                    }

                                    if (v129 >> 16)
                                    {
                                      goto LABEL_222;
                                    }

                                    v57[v127 | 1] = v129;
                                    if (__OFADD__(v127, 2))
                                    {
                                      goto LABEL_223;
                                    }

                                    if (v128 != 0xFFFF)
                                    {
                                      v130 = v128 + 1;
                                      v57[v127 + 2] = v130;
                                      if (__OFADD__(v127, 3))
                                      {
                                        goto LABEL_225;
                                      }

                                      v57[v127 + 3] = v129;
                                      if (__OFADD__(v127, 4))
                                      {
                                        goto LABEL_226;
                                      }

                                      if (v129 == 0xFFFF)
                                      {
                                        goto LABEL_227;
                                      }

                                      v57[v127 + 4] = v129 + 1;
                                      v41 = __OFADD__(v127, 5);
                                      v131 = v127 + 5;
                                      if (!v41)
                                      {
                                        v57[v131] = v130;
                                        v109 = a1;
LABEL_134:
                                        if (v65 == v109)
                                        {

                                          return;
                                        }

                                        if (++v65 < _swiftEmptyArrayStorage[2])
                                        {
                                          continue;
                                        }

                                        goto LABEL_136;
                                      }

                                      goto LABEL_228;
                                    }

LABEL_224:
                                    __break(1u);
LABEL_225:
                                    __break(1u);
LABEL_226:
                                    __break(1u);
LABEL_227:
                                    __break(1u);
LABEL_228:
                                    __break(1u);
                                    goto LABEL_229;
                                  }

LABEL_220:
                                  __break(1u);
LABEL_221:
                                  __break(1u);
LABEL_222:
                                  __break(1u);
LABEL_223:
                                  __break(1u);
                                  goto LABEL_224;
                                }

LABEL_216:
                                __break(1u);
LABEL_217:
                                __break(1u);
LABEL_218:
                                __break(1u);
LABEL_219:
                                __break(1u);
                                goto LABEL_220;
                              }

LABEL_212:
                              __break(1u);
LABEL_213:
                              __break(1u);
LABEL_214:
                              __break(1u);
LABEL_215:
                              __break(1u);
                              goto LABEL_216;
                            }

LABEL_208:
                            __break(1u);
LABEL_209:
                            __break(1u);
LABEL_210:
                            __break(1u);
LABEL_211:
                            __break(1u);
                            goto LABEL_212;
                          }

LABEL_204:
                          __break(1u);
LABEL_205:
                          __break(1u);
LABEL_206:
                          __break(1u);
LABEL_207:
                          __break(1u);
                          goto LABEL_208;
                        }

LABEL_200:
                        __break(1u);
LABEL_201:
                        __break(1u);
LABEL_202:
                        __break(1u);
LABEL_203:
                        __break(1u);
                        goto LABEL_204;
                      }

LABEL_196:
                      __break(1u);
LABEL_197:
                      __break(1u);
LABEL_198:
                      __break(1u);
LABEL_199:
                      __break(1u);
                      goto LABEL_200;
                    }

LABEL_192:
                    __break(1u);
LABEL_193:
                    __break(1u);
LABEL_194:
                    __break(1u);
LABEL_195:
                    __break(1u);
                    goto LABEL_196;
                  }

LABEL_188:
                  __break(1u);
LABEL_189:
                  __break(1u);
LABEL_190:
                  __break(1u);
LABEL_191:
                  __break(1u);
                  goto LABEL_192;
                }

LABEL_184:
                __break(1u);
LABEL_185:
                __break(1u);
LABEL_186:
                __break(1u);
LABEL_187:
                __break(1u);
                goto LABEL_188;
              }

LABEL_180:
              __break(1u);
LABEL_181:
              __break(1u);
LABEL_182:
              __break(1u);
LABEL_183:
              __break(1u);
              goto LABEL_184;
            }

            goto LABEL_165;
          }

LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
        }

        break;
      }

      __break(1u);
      goto LABEL_159;
    }

LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

LABEL_232:
  __break(1u);
LABEL_233:
  __break(1u);
LABEL_234:
  __break(1u);
LABEL_235:
  __break(1u);
LABEL_236:
  __break(1u);
}

void sub_100034EE4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v4;
    sub_1000B5190(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v18;
  }

  else
  {
    v10 = sub_100002324(a4);
    if (v11)
    {
      v12 = v10;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v19 = *v5;
      if (!v13)
      {
        sub_1000B6B48();
        v14 = v19;
      }

      v15 = *(v14 + 56) + 24 * v12;
      v16 = *v15;

      sub_100094998(v12, v14);

      *v5 = v14;
    }

    else
    {
    }
  }
}

uint64_t sub_10003501C()
{
  v0 = sub_1000E96A4();
  sub_100011C54(v0, qword_100130DE0);
  v1 = sub_100007488(v0, qword_100130DE0);
  if (qword_10012F728 != -1)
  {
    swift_once();
  }

  v2 = sub_100007488(v0, qword_10013DD40);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1000350E4(void *a1, void *a2)
{
  v3 = v2;
  v5 = a1;
  v6 = [a1 backgroundView];
  v7 = [objc_opt_self() blackColor];
  [v6 setBackgroundColor:v7];

  v8 = [objc_msgSend(a2 "contents")];
  swift_unknownObjectRelease();
  if (!v8)
  {
    goto LABEL_4;
  }

  v9 = sub_1000E9914();
  v11 = v10;

  v12 = sub_100083980(v9, v11);
  if (v12 >= 0xF8u)
  {

LABEL_4:
    if (qword_10012F548 != -1)
    {
      swift_once();
    }

    v13 = sub_1000E96A4();
    sub_100007488(v13, qword_100130DE0);
    oslog = sub_1000E9684();
    v14 = sub_1000E9BA4();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v14, "couldn’t set up rendering, no descriptor identifier!", v15, 2u);
    }

    return;
  }

  v16 = v12;
  v81 = v9;
  aBlock[0] = 0;
  v17 = [objc_msgSend(a2 "contents")];
  swift_unknownObjectRelease();
  v18 = aBlock[0];
  if (v17)
  {
    v19 = sub_1000E98A4();
    v20 = v18;

    strcpy(v85, "lookIdentifier");
    v85[15] = -18;
    sub_1000E9D14();
    if (*(v19 + 16) && (v21 = sub_10009F174(aBlock), (v22 & 1) != 0))
    {
      sub_100012898(*(v19 + 56) + 32 * v21, v85);
      sub_100012844(aBlock);
      v23 = swift_dynamicCast();
      countAndFlagsBits = v84._countAndFlagsBits;
      if (!v23)
      {
        countAndFlagsBits = 0;
      }

      osloga = countAndFlagsBits;
      if (v23)
      {
        object = v84._object;
      }

      else
      {
        object = 0;
      }
    }

    else
    {
      sub_100012844(aBlock);
      osloga = 0;
      object = 0;
    }

    strcpy(&v84, "appearanceMode");
    HIBYTE(v84._object) = -18;
    sub_1000E9D14();
    if (*(v19 + 16) && (v26 = sub_10009F174(aBlock), (v27 & 1) != 0))
    {
      sub_100012898(*(v19 + 56) + 32 * v26, v85);
      sub_100012844(aBlock);

      if (swift_dynamicCast())
      {
        v28._rawValue = &off_100119E80;
        v29 = sub_1000E9EC4(v28, v84);

        if (v29 >= 3)
        {
          v30 = 3;
        }

        else
        {
          v30 = v29;
        }

        goto LABEL_28;
      }
    }

    else
    {

      sub_100012844(aBlock);
    }

    v30 = 3;
LABEL_28:

    goto LABEL_34;
  }

  v31 = aBlock[0];
  sub_1000E92E4();

  swift_willThrow();
  if (qword_10012F548 != -1)
  {
    swift_once();
  }

  v32 = sub_1000E96A4();
  sub_100007488(v32, qword_100130DE0);
  v33 = sub_1000E9684();
  v34 = sub_1000E9BA4();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&_mh_execute_header, v33, v34, "No user info. This is expected if we've never created a wallpaper (such as for the initial gallery snapshot), but otherwise unexpected.", v35, 2u);
  }

  osloga = 0;
  object = 0;
  v30 = 3;
LABEL_34:
  v36 = sub_100083E4C(v16);
  v79 = v37;
  v80 = v36;
  v73 = v16 == 64;
  v38 = sub_100083F34(v16);
  v40 = v39;
  if (object)
  {

    v76 = osloga;
    v40 = object;
  }

  else
  {
    v76 = v38;
  }

  v75 = v3;
  if (v30 == 3)
  {
    v41 = 2;
  }

  else
  {
    v41 = v30;
  }

  v78 = v41;
  if (qword_10012F548 != -1)
  {
    swift_once();
  }

  v74 = v16;
  v42 = sub_1000E96A4();
  sub_100007488(v42, qword_100130DE0);

  v43 = sub_1000E9684();
  v44 = sub_1000E9B94();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v45 = 136446466;
    v46 = v81;
    *(v45 + 4) = sub_100093A3C(v81, v11, aBlock);
    *(v45 + 12) = 2082;
    *(v45 + 14) = sub_100093A3C(v76, v40, aBlock);
    _os_log_impl(&_mh_execute_header, v43, v44, "creating render coordinator for descriptor “%{public}s” look “%{public}s”", v45, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v46 = v81;
  }

  type metadata accessor for WallpaperRenderingCoordinator(0);
  swift_allocObject();

  swift_unknownObjectRetain();
  v47 = sub_1000891CC(v46, v11, v80, v79, a2, osloga, object, v78);
  v48 = [v5 backgroundView];
  v49 = [v5 floatingView];
  sub_10008A5F0(v48, v49);

  v50 = OBJC_IVAR____TtC22MercuryPosterExtension17DrawingController_rendererCoordinators;
  swift_beginAccess();
  v51 = *(v75 + v50);
  if ((v51 & 0xC000000000000001) != 0)
  {
    if (v51 < 0)
    {
      v52 = *(v75 + v50);
    }

    else
    {
      v52 = v51 & 0xFFFFFFFFFFFFFF8;
    }

    v53 = sub_1000E9E14();
    if (__OFADD__(v53, 1))
    {
LABEL_60:
      __break(1u);
    }

    *(v75 + v50) = sub_100036F94(v52, v53 + 1);
  }

  else
  {
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v85 = *(v75 + v50);
  sub_1000B4ED4(v47, v5, isUniquelyReferenced_nonNull_native);
  *(v75 + v50) = *v85;
  swift_endAccess();
  if (*(v47 + 104))
  {
    v77 = a2;
    v55 = v5;
    v56 = *(v47 + 112);
    ObjectType = swift_getObjectType();
    v58 = *(v56 + 176);
    swift_unknownObjectRetain();
    v59 = v56;
    v5 = v55;
    a2 = v77;
    v60 = v58(ObjectType, v59);
    v62 = v61;
    swift_unknownObjectRelease();
  }

  else
  {
    v60 = 0;
    v62 = 1;
  }

  v63 = swift_allocObject();
  *(v63 + 16) = 4 * v73;
  *(v63 + 24) = v74 != 64;
  *(v63 + 32) = v80;
  *(v63 + 40) = v79;
  *(v63 + 48) = v81;
  *(v63 + 56) = v11;
  *(v63 + 64) = v76;
  *(v63 + 72) = v40;
  *(v63 + 80) = v78;
  *(v63 + 88) = a2;
  *(v63 + 96) = v60;
  *(v63 + 104) = v62 & 1;
  v64 = swift_allocObject();
  v64[2] = sub_100037224;
  v64[3] = v63;
  aBlock[4] = sub_1000126C8;
  aBlock[5] = v64;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000FE00;
  aBlock[3] = &unk_100124798;
  v65 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  [v5 updatePreferences:v65];
  _Block_release(v65);
  LOBYTE(v65) = swift_isEscapingClosureAtFileLocation();

  if (v65)
  {
    __break(1u);
    goto LABEL_60;
  }

  v66 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1000890B8(sub_100037274, v66);

  if (*(v47 + 104))
  {
    v67 = *(v47 + 112);
    v68 = swift_getObjectType();
    v69 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v70 = swift_allocObject();
    *(v70 + 24) = v67;
    swift_unknownObjectWeakInit();
    v71 = swift_allocObject();
    *(v71 + 16) = v70;
    *(v71 + 24) = v69;
    v72 = *(v67 + 192);
    swift_unknownObjectRetain();

    v72(sub_1000372BC, v71, v68, v67);

    swift_unknownObjectRelease();
  }
}

id sub_100035D88(id a1, int a2, int a3, char a4, uint64_t a5, uint64_t (**a6)(void, void), uint64_t a7, unint64_t a8, uint64_t a9, void *a10, char a11, void *a12, uint64_t a13, char a14)
{
  if ((a4 & 1) == 0)
  {
    [a1 setAdaptiveTimeMode:?];
  }

  [a1 setHandlesWakeAnimation:{a6[5](a5, a6) & 1}];
  [a1 setHideDimmingLayer:{a6[6](a5, a6) & 1}];
  if (a6[7](a5, a6))
  {
    [a1 setUserTapEventsRequested:1];
  }

  v18 = [a12 traitCollection];
  v19 = v18;
  if (v18)
  {
    v20 = [v18 userInterfaceStyle];
  }

  else
  {
    v20 = 0;
  }

  v21 = sub_100084D8C(a7, a8, a9, a10, a11, v20, v19 == 0);
  [a1 setPreferredProminentColor:v21];

  if (a6[9](a5, a6))
  {
    [a1 setDeviceMotionEventsRequested:1];
    [a1 setSupportedMotionEffectsMode:2];
  }

  if (a14)
  {
    x = CGRectNull.origin.x;
    y = CGRectNull.origin.y;
    width = CGRectNull.size.width;
    height = CGRectNull.size.height;
  }

  else
  {
    [a12 canvasSize];
    y = v26 * *&a13;
    x = 0.0;
    width = 0.0;
    height = 0.0;
  }

  [a1 setPreferredSalientContentRectangle:{x, y, width, height}];

  return [a1 setSalientContentRectangleUpdatesRequested:1];
}

void sub_100035FE8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong noteContentSignificantlyChanged];
  }
}

uint64_t sub_100036044(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(a1 + 24);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return swift_unknownObjectRelease();
    }

    v5 = Strong;
    ObjectType = swift_getObjectType();
    v7 = COERCE_DOUBLE((*(v3 + 176))(ObjectType, v3));
    v9 = v8;
    if ((v8 & 1) == 0)
    {
      [objc_msgSend(v5 "environment")];
      v11 = v10;
      swift_unknownObjectRelease();
      v7 = v11 * v7;
    }

    v12 = swift_allocObject();
    *(v12 + 16) = v7;
    *(v12 + 24) = v9 & 1;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_1000372C4;
    *(v13 + 24) = v12;
    v16[4] = sub_100012D44;
    v16[5] = v13;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 1107296256;
    v16[2] = sub_10000FE00;
    v16[3] = &unk_100124860;
    v14 = _Block_copy(v16);

    [v5 updatePreferences:v14];
    swift_unknownObjectRelease();

    _Block_release(v14);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_1000362F4(uint64_t a1, unint64_t a2, void *a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC22MercuryPosterExtension17DrawingController_rendererCoordinators;
  swift_beginAccess();
  v11 = *(v5 + v10);

  v12 = sub_100002274(a3, v11);

  if (v12)
  {
    v13 = sub_1000E98E4();
    v37 = [a3 extendRenderingSessionForReason:v13];

    v14 = objc_opt_self();
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    *(v17 + 24) = v16;
    aBlock[4] = sub_100037204;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000889A4;
    aBlock[3] = &unk_100124720;
    v18 = _Block_copy(aBlock);

    v19 = [v14 scheduledTimerWithTimeInterval:0 repeats:v18 block:a4];
    _Block_release(v18);
    v20 = OBJC_IVAR____TtC22MercuryPosterExtension17DrawingController_transitionSessions;
    swift_beginAccess();
    v21 = *(v5 + v20);
    if (*(v21 + 16))
    {

      v22 = sub_100002324(a3);
      if (v23)
      {
        v35 = a1;
        v36 = a2;
        v24 = *(v21 + 56) + 24 * v22;
        v26 = *v24;
        v25 = *(v24 + 8);
        v27 = *(v24 + 16);

        v28 = v26;
        v29 = v25;

        [v28 invalidate];
        [v29 invalidate];
        if (v27)
        {
          ContinuousRenderingToken.invalidate()();
        }

        a1 = v35;
        a2 = v36;
      }

      else
      {
      }
    }

    v30 = a3;
    v31 = v37;
    v32 = v19;
    v33 = sub_10008BFA8(a1, a2);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = *(v5 + v20);
    *(v5 + v20) = 0x8000000000000000;
    sub_1000B5190(v31, v32, v33, v30, isUniquelyReferenced_nonNull_native);

    *(v5 + v20) = v38;
    swift_endAccess();
  }
}

void sub_100036630()
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
      v4 = OBJC_IVAR____TtC22MercuryPosterExtension17DrawingController_transitionSessions;
      swift_beginAccess();
      v5 = *&v1[v4];
      if (*(v5 + 16))
      {

        v6 = sub_100002324(v3);
        if (v7)
        {
          v8 = *(v5 + 56) + 24 * v6;
          v9 = *v8;
          v10 = *(v8 + 8);
          v11 = *(v8 + 16);

          v12 = v9;
          v13 = v10;

          [v12 invalidate];
          [v13 invalidate];
          if (v11)
          {
            ContinuousRenderingToken.invalidate()();
          }
        }

        else
        {
        }
      }

      swift_beginAccess();
      sub_100034EE4(0, 0, 0, v3);
      swift_endAccess();
    }
  }
}

void sub_1000367A8(void *a1)
{
  v2 = v1;
  if (qword_10012F548 != -1)
  {
    swift_once();
  }

  v4 = sub_1000E96A4();
  sub_100007488(v4, qword_100130DE0);
  v5 = sub_1000E9684();
  v6 = sub_1000E9B94();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "renderer invalidated, cleaning up coordinator", v7, 2u);
  }

  swift_beginAccess();
  sub_100036E48(a1);
  swift_endAccess();

  v8 = OBJC_IVAR____TtC22MercuryPosterExtension17DrawingController_transitionSessions;
  swift_beginAccess();
  v9 = *(v2 + v8);
  if (*(v9 + 16))
  {

    v10 = sub_100002324(a1);
    if (v11)
    {
      v12 = *(v9 + 56) + 24 * v10;
      v13 = *v12;
      v14 = *(v12 + 8);
      v15 = *(v12 + 16);

      v16 = v13;
      v17 = v14;

      [v16 invalidate];
      [v17 invalidate];
      if (v15)
      {
        ContinuousRenderingToken.invalidate()();
      }

      swift_beginAccess();
      sub_100034EE4(0, 0, 0, a1);
      swift_endAccess();
    }

    else
    {
    }
  }
}

uint64_t sub_100036A30(void *a1, double a2, double a3)
{
  v7 = OBJC_IVAR____TtC22MercuryPosterExtension17DrawingController_rendererCoordinators;
  swift_beginAccess();
  v8 = *(v3 + v7);

  v9 = sub_100002274(a1, v8);

  if (v9)
  {
    if (*(v9 + 104))
    {
      v11 = *(v9 + 112);
      ObjectType = swift_getObjectType();
      v13 = *(v11 + 64);
      swift_unknownObjectRetain();
      v13(ObjectType, v11, a2, a3);
      swift_unknownObjectRelease();
    }

    sub_1000362F4(0x70615472657355, 0xE700000000000000, a1, 3.0);
  }

  return result;
}

id sub_100036C44()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DrawingController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100036CE8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100036D30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100036D80(uint64_t a1)
{
  v2 = v1;
  v3 = sub_10009F1B8(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v10 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1000B5A90();
    v7 = v10;
  }

  v8 = *(*(v7 + 56) + 32 * v5);
  sub_100094680(v5, v7);
  *v2 = v7;
  return v8;
}

uint64_t sub_100036E48(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = sub_100002324(a1);
    if (v14)
    {
      v3 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v1;
      v17 = *v1;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_10009480C(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_1000B6864();
      v8 = v17;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = sub_1000E9E24();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_1000E9E14();
  v8 = sub_100036F94(v4, v7);

  v9 = sub_100002324(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_10009480C(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

Swift::Int sub_100036F94(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000125FC(&qword_100130E90);
    v2 = sub_1000E9E94();
    v19 = v2;
    sub_1000E9E04();
    v3 = sub_1000E9E34();
    if (v3)
    {
      v4 = v3;
      sub_1000371B8();
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        type metadata accessor for WallpaperRenderingCoordinator(0);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1000B3DCC(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_1000E9C74(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_1000E9E34();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

unint64_t sub_1000371B8()
{
  result = qword_100130E98;
  if (!qword_100130E98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100130E98);
  }

  return result;
}

uint64_t sub_10003720C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10003727C()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_1000372C4(void *a1)
{
  if (*(v1 + 24))
  {
    x = CGRectNull.origin.x;
    p_y = &CGRectNull.origin.y;
    width = CGRectNull.size.width;
    height = CGRectNull.size.height;
  }

  else
  {
    p_y = (v1 + 16);
    x = 0.0;
    width = 0.0;
    height = 0.0;
  }

  return [a1 setPreferredSalientContentRectangle:{x, *p_y, width, height}];
}

uint64_t sub_100037314()
{
  v14 = _swiftEmptyArrayStorage;
  v0 = 14;
  sub_1000AA328(0, 14, 0);
  v1 = _swiftEmptyArrayStorage;
  v2 = &unk_100119F10;
  do
  {
    v4 = *(v2 - 1);
    v3 = *v2;
    v5 = objc_allocWithZone(NSNull);

    v6 = [v5 init];
    v14 = v1;
    v8 = v1[2];
    v7 = v1[3];
    if (v8 >= v7 >> 1)
    {
      v10 = v6;
      sub_1000AA328((v7 > 1), v8 + 1, 1);
      v6 = v10;
      v1 = v14;
    }

    v1[2] = v8 + 1;
    v9 = &v1[3 * v8];
    v9[4] = v4;
    v9[5] = v3;
    v9[6] = v6;
    v2 += 2;
    --v0;
  }

  while (v0);
  swift_arrayDestroy();
  if (v1[2])
  {
    sub_1000125FC(&qword_1001320F0);
    v11 = sub_1000E9EA4();
  }

  else
  {
    v11 = &_swiftEmptyDictionarySingleton;
  }

  v14 = v11;

  sub_1000374BC(v12, 1, &v14);

  qword_10013AA48 = v14;
  return result;
}

uint64_t sub_1000374BC(void *a1, char a2, void *a3)
{
  v36 = a1[2];
  if (!v36)
  {
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  swift_unknownObjectRetain();
  v10 = sub_10009F208(v7, v6);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1000B1348(v15, v5 & 1);
    v10 = sub_10009F208(v7, v6);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_1000E9FA4();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v19 = v10;
  sub_1000B55C4();
  v10 = v19;
  if (v16)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_1000125FC(&unk_100131DD0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      swift_unknownObjectRelease();
    }

    goto LABEL_26;
  }

LABEL_11:
  v20 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v21 = (v20[6] + 16 * v10);
  *v21 = v7;
  v21[1] = v6;
  *(v20[7] + 8 * v10) = v8;
  v22 = v20[2];
  v14 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1000E9D64(30);
    v37._object = 0x80000001000F7820;
    v37._countAndFlagsBits = 0xD00000000000001BLL;
    sub_1000E99A4(v37);
    sub_1000E9DF4();
    v38._countAndFlagsBits = 39;
    v38._object = 0xE100000000000000;
    sub_1000E99A4(v38);
    result = sub_1000E9E44();
    __break(1u);
    return result;
  }

  v20[2] = v23;
  if (v36 != 1)
  {
    v5 = a1 + 9;
    v24 = 1;
    while (v24 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v25 = *a3;

      swift_unknownObjectRetain();
      v26 = sub_10009F208(v7, v6);
      v28 = v25[2];
      v29 = (v27 & 1) == 0;
      v14 = __OFADD__(v28, v29);
      v30 = v28 + v29;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v27;
      if (v25[3] < v30)
      {
        sub_1000B1348(v30, 1);
        v26 = sub_10009F208(v7, v6);
        if ((v16 & 1) != (v31 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v32 = *a3;
      *(*a3 + 8 * (v26 >> 6) + 64) |= 1 << v26;
      v33 = (v32[6] + 16 * v26);
      *v33 = v7;
      v33[1] = v6;
      *(v32[7] + 8 * v26) = v8;
      v34 = v32[2];
      v14 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v24;
      v32[2] = v35;
      v5 += 3;
      if (v36 == v24)
      {
      }
    }

    goto LABEL_25;
  }
}

double sub_100037850()
{
  if (qword_10012F4F8 != -1)
  {
    swift_once();
  }

  result = *&xmmword_10013A9F0;
  xmmword_100130FD0 = xmmword_10013A9F0;
  return result;
}

double sub_1000378A8()
{
  result = 0.0;
  xmmword_100130FE0 = xmmword_1000EF560;
  return result;
}

double sub_1000378BC()
{
  result = 0.0;
  xmmword_100130FF0 = xmmword_1000EF570;
  return result;
}

double sub_1000378D0()
{
  result = 0.000292968761;
  xmmword_100131000 = xmmword_1000EF580;
  return result;
}

double sub_1000378E4()
{
  if (qword_10012F558 != -1)
  {
    swift_once();
  }

  v401 = xmmword_100130FD0;
  if (qword_10012F568 != -1)
  {
    swift_once();
  }

  v400 = xmmword_100130FF0;
  sub_1000125FC(&qword_100131010);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1000EF590;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 9;
  if (qword_10012F6E8 != -1)
  {
    swift_once();
  }

  v1 = vmulq_f32(xmmword_10013DCA0, 0);
  v419 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, unk_10013DCD0);
  v414 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v1), 0, xmmword_10013DCC0), 0, unk_10013DCD0);
  v408 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v1, 0, *algn_10013DCB0)), 0, unk_10013DCD0);
  v383 = vaddq_f32(unk_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBFB33333)), vdupq_n_s32(0x3FDC28F5u), *algn_10013DCB0), 0, xmmword_10013DCC0));
  sub_10001358C(v424, 1.9373, xmmword_1000EC910);
  v2 = sub_100013568(v424);
  v417 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v419, v2.n128_f32[0]), v414, v2.n128_u64[0], 1), v408, v2, 2), v383, v2, 3);
  v412 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v419, v3.f32[0]), v414, *v3.f32, 1), v408, v3, 2), v383, v3, 3);
  v402 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v419, v4.f32[0]), v414, *v4.f32, 1), v408, v4, 2), v383, v4, 3);
  v358 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v419, v5.f32[0]), v414, *v5.f32, 1), v408, v5, 2), v383, v5, 3);
  sub_10001358C(v425, -2.3911, xmmword_1000EC8E0);
  v6 = sub_100013568(v425);
  v7 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v417, v6.n128_f32[0]), v412, v6.n128_u64[0], 1), v402, v6, 2), v358, v6, 3);
  v409 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v417, v8.f32[0]), v412, *v8.f32, 1), v402, v8, 2), v358, v8, 3);
  v384 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v417, v9.f32[0]), v412, *v9.f32, 1), v402, v9, 2), v358, v9, 3);
  v413 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v417, v10.f32[0]), v412, *v10.f32, 1), v402, v10, 2), v358, v10, 3);
  v415 = v7;
  sub_10001358C(v426, 0.032114, xmmword_1000EC920);
  v11 = sub_100013568(v426);
  v469 = 1;
  *(v0 + 64) = 0x408666663F70A3D7;
  *(v0 + 72) = 1045220557;
  *(v0 + 76) = 1;
  *(v0 + 77) = v474;
  *(v0 + 79) = v475;
  *(v0 + 80) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v415, v11.n128_f32[0]), v409, v11.n128_u64[0], 1), v384, v11, 2), v413, v11, 3);
  *(v0 + 96) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v415, v12.f32[0]), v409, *v12.f32, 1), v384, v12, 2), v413, v12, 3);
  *(v0 + 112) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v415, v13.f32[0]), v409, *v13.f32, 1), v384, v13, 2), v413, v13, 3);
  *(v0 + 128) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v415, v14.f32[0]), v409, *v14.f32, 1), v384, v14, 2), v413, v14, 3);
  *(v0 + 144) = xmmword_1000EC900;
  *(v0 + 160) = 0;
  v15 = v472;
  *(v0 + 163) = v473;
  *(v0 + 161) = v15;
  *(v0 + 164) = 1112539136;
  *(v0 + 168) = 0;
  *(v0 + 169) = v470;
  *(v0 + 171) = v471;
  *(v0 + 172) = 1066192077;
  *(v0 + 192) = 0;
  *(v0 + 176) = 0u;
  *(v0 + 200) = v469;
  *(v0 + 201) = 0;
  *(v0 + 203) = 1;
  *(v0 + 208) = 0u;
  *(v0 + 224) = sub_10003A960;
  *(v0 + 232) = 0;
  *(v0 + 240) = 0x3F80000000000000;
  *(v0 + 256) = xmmword_1000EF5A0;
  *(v0 + 272) = 2;
  v16 = vmulq_f32(xmmword_10013DCA0, 0);
  v385 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, unk_10013DCD0);
  v335 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v16), 0, xmmword_10013DCC0), 0, unk_10013DCD0);
  v313 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v16, 0, *algn_10013DCB0)), 0, unk_10013DCD0);
  v403 = vdupq_n_s32(0x3E999999u);
  v269 = vaddq_f32(unk_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBDF5C28F)), v403, *algn_10013DCB0), vdupq_n_s32(0x3EF5C28Fu), xmmword_10013DCC0));
  sub_10001358C(v427, 5.2883, xmmword_1000EC910);
  v17 = sub_100013568(v427);
  v410 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v385, v17.n128_f32[0]), v335, v17.n128_u64[0], 1), v313, v17, 2), v269, v17, 3);
  v359 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v385, v18.f32[0]), v335, *v18.f32, 1), v313, v18, 2), v269, v18, 3);
  v290 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v385, v19.f32[0]), v335, *v19.f32, 1), v313, v19, 2), v269, v19, 3);
  v270 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v385, v20.f32[0]), v335, *v20.f32, 1), v313, v20, 2), v269, v20, 3);
  sub_10001358C(v428, 0.7854, xmmword_1000EC8E0);
  v21 = sub_100013568(v428);
  v386 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v410, v21.n128_f32[0]), v359, v21.n128_u64[0], 1), v290, v21, 2), v270, v21, 3);
  v336 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v410, v22.f32[0]), v359, *v22.f32, 1), v290, v22, 2), v270, v22, 3);
  v314 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v410, v23.f32[0]), v359, *v23.f32, 1), v290, v23, 2), v270, v23, 3);
  v411 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v410, v24.f32[0]), v359, *v24.f32, 1), v290, v24, 2), v270, v24, 3);
  sub_10001358C(v429, -2.0071, xmmword_1000EC920);
  v25 = sub_100013568(v429);
  v476 = 1;
  *(v0 + 288) = 0x3F99999A4039999ALL;
  *(v0 + 296) = 1050253722;
  *(v0 + 300) = 1;
  *(v0 + 301) = v481;
  *(v0 + 303) = v482;
  *(v0 + 304) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v386, v25.n128_f32[0]), v336, v25.n128_u64[0], 1), v314, v25, 2), v411, v25, 3);
  *(v0 + 320) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v386, v26.f32[0]), v336, *v26.f32, 1), v314, v26, 2), v411, v26, 3);
  *(v0 + 336) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v386, v27.f32[0]), v336, *v27.f32, 1), v314, v27, 2), v411, v27, 3);
  *(v0 + 352) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v386, v28.f32[0]), v336, *v28.f32, 1), v314, v28, 2), v411, v28, 3);
  *(v0 + 368) = xmmword_1000EF5B0;
  *(v0 + 384) = 0;
  v29 = v479;
  *(v0 + 387) = v480;
  *(v0 + 385) = v29;
  *(v0 + 388) = 1088631603;
  *(v0 + 392) = 10;
  *(v0 + 393) = v477;
  *(v0 + 395) = v478;
  *(v0 + 396) = 1065353216;
  *(v0 + 416) = 0;
  *(v0 + 400) = 0u;
  *(v0 + 424) = v476;
  *(v0 + 425) = 0;
  *(v0 + 427) = 0;
  *(v0 + 432) = 0u;
  *(v0 + 448) = sub_10003A980;
  *(v0 + 456) = 0;
  *(v0 + 464) = 0x3F80000000000000;
  *(v0 + 480) = xmmword_1000EF5C0;
  *(v0 + 496) = 2;
  v30 = vmulq_f32(xmmword_10013DCA0, 0);
  v360 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, unk_10013DCD0);
  v315 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v30), 0, xmmword_10013DCC0), 0, unk_10013DCD0);
  v291 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v30, 0, *algn_10013DCB0)), 0, unk_10013DCD0);
  v248 = vaddq_f32(unk_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBF547AE1)), vdupq_n_s32(0x3FE7AE14u), *algn_10013DCB0), vdupq_n_s32(0x3F147AE1u), xmmword_10013DCC0));
  sub_10001358C(v430, 4.7124, xmmword_1000EC910);
  v31 = sub_100013568(v430);
  v387 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v360, v31.n128_f32[0]), v315, v31.n128_u64[0], 1), v291, v31, 2), v248, v31, 3);
  v337 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v360, v32.f32[0]), v315, *v32.f32, 1), v291, v32, 2), v248, v32, 3);
  v271 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v360, v33.f32[0]), v315, *v33.f32, 1), v291, v33, 2), v248, v33, 3);
  v249 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v360, v34.f32[0]), v315, *v34.f32, 1), v291, v34, 2), v248, v34, 3);
  sub_10001358C(v431, 0.24435, xmmword_1000EC8E0);
  v35 = sub_100013568(v431);
  v316 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v387, v36.f32[0]), v337, *v36.f32, 1), v271, v36, 2), v249, v36, 3);
  v292 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v387, v37.f32[0]), v337, *v37.f32, 1), v271, v37, 2), v249, v37, 3);
  v361 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v387, v35.n128_f32[0]), v337, v35.n128_u64[0], 1), v271, v35, 2), v249, v35, 3);
  v388 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v387, v38.f32[0]), v337, *v38.f32, 1), v271, v38, 2), v249, v38, 3);
  sub_10001358C(v432, -1.5708, xmmword_1000EC920);
  v39 = sub_100013568(v432);
  v483 = 1;
  *(v0 + 512) = 0x3FA666663FD9999ALL;
  *(v0 + 520) = 1050253722;
  *(v0 + 524) = 1;
  *(v0 + 525) = v488;
  *(v0 + 527) = v489;
  *(v0 + 528) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v361, v39.n128_f32[0]), v316, v39.n128_u64[0], 1), v292, v39, 2), v388, v39, 3);
  *(v0 + 544) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v361, v40.f32[0]), v316, *v40.f32, 1), v292, v40, 2), v388, v40, 3);
  *(v0 + 560) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v361, v41.f32[0]), v316, *v41.f32, 1), v292, v41, 2), v388, v41, 3);
  *(v0 + 576) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v361, v42.f32[0]), v316, *v42.f32, 1), v292, v42, 2), v388, v42, 3);
  *(v0 + 592) = xmmword_1000EC900;
  *(v0 + 608) = 0;
  v43 = v486;
  *(v0 + 611) = v487;
  *(v0 + 609) = v43;
  *(v0 + 612) = 1087792742;
  *(v0 + 616) = 13;
  *(v0 + 617) = v484;
  *(v0 + 619) = v485;
  *(v0 + 620) = 1065353216;
  *(v0 + 640) = 0;
  *(v0 + 624) = 0u;
  *(v0 + 648) = v483;
  *(v0 + 649) = 0;
  *(v0 + 651) = 0;
  *(v0 + 656) = 0u;
  *(v0 + 672) = sub_10003AA28;
  *(v0 + 680) = 0;
  *(v0 + 688) = 0x3F80000000000000;
  *(v0 + 704) = xmmword_1000EF5A0;
  *(v0 + 720) = 1;
  v44 = vmulq_f32(xmmword_10013DCA0, 0);
  v362 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, unk_10013DCD0);
  v317 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v44), 0, xmmword_10013DCC0), 0, unk_10013DCD0);
  v293 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v44, 0, *algn_10013DCB0)), 0, unk_10013DCD0);
  v250 = vaddq_f32(unk_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBF428F5C)), vdupq_n_s32(0x3F9851EBu), *algn_10013DCB0), vdupq_n_s32(0xBE947AE1), xmmword_10013DCC0));
  sub_10001358C(v433, 2.0944, xmmword_1000EC910);
  v45 = sub_100013568(v433);
  v389 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v362, v45.n128_f32[0]), v317, v45.n128_u64[0], 1), v293, v45, 2), v250, v45, 3);
  v338 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v362, v46.f32[0]), v317, *v46.f32, 1), v293, v46, 2), v250, v46, 3);
  v272 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v362, v47.f32[0]), v317, *v47.f32, 1), v293, v47, 2), v250, v47, 3);
  v251 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v362, v48.f32[0]), v317, *v48.f32, 1), v293, v48, 2), v250, v48, 3);
  sub_10001358C(v434, -2.618, xmmword_1000EC8E0);
  v49 = sub_100013568(v434);
  v318 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v389, v50.f32[0]), v338, *v50.f32, 1), v272, v50, 2), v251, v50, 3);
  v294 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v389, v51.f32[0]), v338, *v51.f32, 1), v272, v51, 2), v251, v51, 3);
  v363 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v389, v49.n128_f32[0]), v338, v49.n128_u64[0], 1), v272, v49, 2), v251, v49, 3);
  v390 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v389, v52.f32[0]), v338, *v52.f32, 1), v272, v52, 2), v251, v52, 3);
  sub_10001358C(v435, 0.087266, xmmword_1000EC920);
  v53 = sub_100013568(v435);
  v490 = 1;
  *(v0 + 736) = 0x4016B8523FDE353FLL;
  *(v0 + 744) = 1036831949;
  *(v0 + 748) = 1;
  *(v0 + 749) = v495;
  *(v0 + 751) = v496;
  *(v0 + 752) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v363, v53.n128_f32[0]), v318, v53.n128_u64[0], 1), v294, v53, 2), v390, v53, 3);
  *(v0 + 768) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v363, v54.f32[0]), v318, *v54.f32, 1), v294, v54, 2), v390, v54, 3);
  *(v0 + 784) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v363, v55.f32[0]), v318, *v55.f32, 1), v294, v55, 2), v390, v55, 3);
  *(v0 + 800) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v363, v56.f32[0]), v318, *v56.f32, 1), v294, v56, 2), v390, v56, 3);
  *(v0 + 816) = xmmword_1000EC900;
  *(v0 + 832) = 0;
  v57 = v493;
  *(v0 + 835) = v494;
  *(v0 + 833) = v57;
  *(v0 + 836) = 0x40000000;
  *(v0 + 840) = 13;
  *(v0 + 841) = v491;
  *(v0 + 843) = v492;
  *(v0 + 844) = 1065353216;
  *(v0 + 848) = 0;
  *(v0 + 856) = 0u;
  *(v0 + 872) = v490;
  *(v0 + 873) = 0;
  *(v0 + 875) = 0;
  *(v0 + 880) = 0u;
  *(v0 + 896) = sub_10003AA58;
  *(v0 + 904) = 0;
  *(v0 + 912) = 0x3F80000000000000;
  *(v0 + 928) = xmmword_1000EF5C0;
  *(v0 + 944) = 9;
  v58 = vmulq_f32(xmmword_10013DCA0, 0);
  v391 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, unk_10013DCD0);
  v339 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v58), 0, xmmword_10013DCC0), 0, unk_10013DCD0);
  v295 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v58, 0, *algn_10013DCB0)), 0, unk_10013DCD0);
  v252 = vaddq_f32(unk_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBFECCCCC)), vdupq_n_s32(0x3FC7AE14u), *algn_10013DCB0), vdupq_n_s32(0xBFE51EB8), xmmword_10013DCC0));
  sub_10001358C(v436, 2.0071, xmmword_1000EC910);
  v59 = sub_100013568(v436);
  v364 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v391, v59.n128_f32[0]), v339, v59.n128_u64[0], 1), v295, v59, 2), v252, v59, 3);
  v319 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v391, v60.f32[0]), v339, *v60.f32, 1), v295, v60, 2), v252, v60, 3);
  v273 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v391, v61.f32[0]), v339, *v61.f32, 1), v295, v61, 2), v252, v61, 3);
  v253 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v391, v62.f32[0]), v339, *v62.f32, 1), v295, v62, 2), v252, v62, 3);
  sub_10001358C(v437, -2.3911, xmmword_1000EC8E0);
  v63 = sub_100013568(v437);
  v64 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v364, v63.n128_f32[0]), v319, v63.n128_u64[0], 1), v273, v63, 2), v253, v63, 3);
  v340 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v364, v65.f32[0]), v319, *v65.f32, 1), v273, v65, 2), v253, v65, 3);
  v296 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v364, v66.f32[0]), v319, *v66.f32, 1), v273, v66, 2), v253, v66, 3);
  v365 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v364, v67.f32[0]), v319, *v67.f32, 1), v273, v67, 2), v253, v67, 3);
  v392 = v64;
  sub_10001358C(v438, -3.1765, xmmword_1000EC920);
  v68 = sub_100013568(v438);
  v497 = 1;
  *(v0 + 960) = 0x4000000040800000;
  *(v0 + 968) = 1020054733;
  *(v0 + 972) = 1;
  *(v0 + 973) = v502;
  *(v0 + 975) = v503;
  *(v0 + 976) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v392, v68.n128_f32[0]), v340, v68.n128_u64[0], 1), v296, v68, 2), v365, v68, 3);
  *(v0 + 992) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v392, v69.f32[0]), v340, *v69.f32, 1), v296, v69, 2), v365, v69, 3);
  *(v0 + 1008) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v392, v70.f32[0]), v340, *v70.f32, 1), v296, v70, 2), v365, v70, 3);
  *(v0 + 1024) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v392, v71.f32[0]), v340, *v71.f32, 1), v296, v71, 2), v365, v71, 3);
  *(v0 + 1040) = xmmword_1000EC900;
  *(v0 + 1056) = 0;
  v72 = v500;
  *(v0 + 1059) = v501;
  *(v0 + 1057) = v72;
  *(v0 + 1060) = 1082130432;
  *(v0 + 1064) = 4;
  *(v0 + 1065) = v498;
  *(v0 + 1067) = v499;
  *(v0 + 1068) = 1065353216;
  *(v0 + 1072) = 0;
  *(v0 + 1080) = 0u;
  *(v0 + 1096) = v497;
  *(v0 + 1097) = 1;
  *(v0 + 1099) = 1;
  *(v0 + 1104) = 0u;
  *(v0 + 1120) = sub_10003AB10;
  *(v0 + 1128) = 0;
  *(v0 + 1136) = 0x3F80000000000000;
  *(v0 + 1152) = xmmword_1000EF5D0;
  *(v0 + 1168) = 9;
  v73 = vmulq_f32(xmmword_10013DCA0, 0);
  v366 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, unk_10013DCD0);
  v320 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v73), 0, xmmword_10013DCC0), 0, unk_10013DCD0);
  v297 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v73, 0, *algn_10013DCB0)), 0, unk_10013DCD0);
  v254 = vaddq_f32(unk_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC050A3D7)), vdupq_n_s32(0x4038F5C2u), *algn_10013DCB0), vdupq_n_s32(0xC041EB85), xmmword_10013DCC0));
  sub_10001358C(v439, -0.62832, xmmword_1000EC910);
  v74 = sub_100013568(v439);
  v393 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v366, v74.n128_f32[0]), v320, v74.n128_u64[0], 1), v297, v74, 2), v254, v74, 3);
  v341 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v366, v75.f32[0]), v320, *v75.f32, 1), v297, v75, 2), v254, v75, 3);
  v274 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v366, v76.f32[0]), v320, *v76.f32, 1), v297, v76, 2), v254, v76, 3);
  v255 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v366, v77.f32[0]), v320, *v77.f32, 1), v297, v77, 2), v254, v77, 3);
  sub_10001358C(v440, -0.8203, xmmword_1000EC8E0);
  v78 = sub_100013568(v440);
  v321 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v393, v79.f32[0]), v341, *v79.f32, 1), v274, v79, 2), v255, v79, 3);
  v298 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v393, v80.f32[0]), v341, *v80.f32, 1), v274, v80, 2), v255, v80, 3);
  v367 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v393, v78.n128_f32[0]), v341, v78.n128_u64[0], 1), v274, v78, 2), v255, v78, 3);
  v394 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v393, v81.f32[0]), v341, *v81.f32, 1), v274, v81, 2), v255, v81, 3);
  sub_10001358C(v441, 1.6755, xmmword_1000EC920);
  v82 = sub_100013568(v441);
  v504 = 1;
  *(v0 + 1184) = 0x40A000004140CCCDLL;
  *(v0 + 1192) = 0;
  *(v0 + 1196) = 2;
  *(v0 + 1197) = v509;
  *(v0 + 1199) = v510;
  *(v0 + 1200) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v367, v82.n128_f32[0]), v321, v82.n128_u64[0], 1), v298, v82, 2), v394, v82, 3);
  *(v0 + 1216) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v367, v83.f32[0]), v321, *v83.f32, 1), v298, v83, 2), v394, v83, 3);
  *(v0 + 1232) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v367, v84.f32[0]), v321, *v84.f32, 1), v298, v84, 2), v394, v84, 3);
  *(v0 + 1248) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v367, v85.f32[0]), v321, *v85.f32, 1), v298, v85, 2), v394, v85, 3);
  *(v0 + 1264) = xmmword_1000EC900;
  *(v0 + 1280) = 0;
  v86 = v507;
  *(v0 + 1283) = v508;
  *(v0 + 1281) = v86;
  *(v0 + 1284) = 1112014848;
  *(v0 + 1288) = 7;
  *(v0 + 1289) = v505;
  *(v0 + 1291) = v506;
  *(v0 + 1292) = 1065353216;
  *(v0 + 1296) = 0;
  *(v0 + 1304) = 0u;
  *(v0 + 1320) = v504;
  *(v0 + 1321) = 1;
  *(v0 + 1323) = 1;
  *(v0 + 1328) = 0u;
  *(v0 + 1344) = sub_100081614;
  *(v0 + 1352) = 0;
  *(v0 + 1360) = 0x3F80000000000000;
  *(v0 + 1376) = xmmword_1000EF5A0;
  *(v0 + 1392) = 3;
  v87 = vmulq_f32(xmmword_10013DCA0, 0);
  v342 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, unk_10013DCD0);
  v299 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v87), 0, xmmword_10013DCC0), 0, unk_10013DCD0);
  v275 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v87, 0, *algn_10013DCB0)), 0, unk_10013DCD0);
  v395 = vdupq_n_s32(0xC011EB85);
  v238 = vaddq_f32(unk_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC04F5C29)), vdupq_n_s32(0x40770A3Du), *algn_10013DCB0), v395, xmmword_10013DCC0));
  sub_10001358C(v442, -0.87266, xmmword_1000EC910);
  v88 = sub_100013568(v442);
  v368 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v342, v88.n128_f32[0]), v299, v88.n128_u64[0], 1), v275, v88, 2), v238, v88, 3);
  v322 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v342, v89.f32[0]), v299, *v89.f32, 1), v275, v89, 2), v238, v89, 3);
  v256 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v342, v90.f32[0]), v299, *v90.f32, 1), v275, v90, 2), v238, v90, 3);
  v239 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v342, v91.f32[0]), v299, *v91.f32, 1), v275, v91, 2), v238, v91, 3);
  sub_10001358C(v443, -0.76794, xmmword_1000EC8E0);
  v92 = sub_100013568(v443);
  v300 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v368, v93.f32[0]), v322, *v93.f32, 1), v256, v93, 2), v239, v93, 3);
  v276 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v368, v94.f32[0]), v322, *v94.f32, 1), v256, v94, 2), v239, v94, 3);
  v343 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v368, v92.n128_f32[0]), v322, v92.n128_u64[0], 1), v256, v92, 2), v239, v92, 3);
  v369 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v368, v95.f32[0]), v322, *v95.f32, 1), v256, v95, 2), v239, v95, 3);
  sub_10001358C(v444, 0.0, xmmword_1000EC920);
  v96 = sub_100013568(v444);
  v511 = 1;
  *(v0 + 1408) = 0x3FB0A3D73FAE147BLL;
  *(v0 + 1416) = 1036831949;
  *(v0 + 1420) = 1;
  *(v0 + 1421) = v516;
  *(v0 + 1423) = v517;
  *(v0 + 1424) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v343, v96.n128_f32[0]), v300, v96.n128_u64[0], 1), v276, v96, 2), v369, v96, 3);
  *(v0 + 1440) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v343, v97.f32[0]), v300, *v97.f32, 1), v276, v97, 2), v369, v97, 3);
  *(v0 + 1456) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v343, v98.f32[0]), v300, *v98.f32, 1), v276, v98, 2), v369, v98, 3);
  *(v0 + 1472) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v343, v99.f32[0]), v300, *v99.f32, 1), v276, v99, 2), v369, v99, 3);
  *(v0 + 1488) = xmmword_1000EC900;
  *(v0 + 1504) = 0;
  v100 = v514;
  *(v0 + 1507) = v515;
  *(v0 + 1505) = v100;
  *(v0 + 1508) = 1080033280;
  *(v0 + 1512) = 12;
  *(v0 + 1513) = v512;
  *(v0 + 1515) = v513;
  *(v0 + 1516) = 1065353216;
  *(v0 + 1520) = 0;
  *(v0 + 1528) = 0u;
  *(v0 + 1544) = v511;
  *(v0 + 1545) = 1;
  *(v0 + 1547) = 0;
  *(v0 + 1552) = 0u;
  *(v0 + 1568) = sub_10003ABBC;
  *(v0 + 1576) = 0;
  *(v0 + 1584) = 0x3F80000000000000;
  *(v0 + 1600) = xmmword_1000EF5C0;
  *(v0 + 1616) = 3;
  v101 = vmulq_f32(xmmword_10013DCA0, 0);
  v323 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, unk_10013DCD0);
  v277 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v101), 0, xmmword_10013DCC0), 0, unk_10013DCD0);
  v257 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v101, 0, *algn_10013DCB0)), 0, unk_10013DCD0);
  v370 = vdupq_n_s32(0x3F199999u);
  v234 = vaddq_f32(unk_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC0819999)), v370, *algn_10013DCB0), vdupq_n_s32(0xC038F5C2), xmmword_10013DCC0));
  sub_10001358C(v445, -0.95993, xmmword_1000EC910);
  v102 = sub_100013568(v445);
  v344 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v323, v102.n128_f32[0]), v277, v102.n128_u64[0], 1), v257, v102, 2), v234, v102, 3);
  v301 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v323, v103.f32[0]), v277, *v103.f32, 1), v257, v103, 2), v234, v103, 3);
  v240 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v323, v104.f32[0]), v277, *v104.f32, 1), v257, v104, 2), v234, v104, 3);
  v235 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v323, v105.f32[0]), v277, *v105.f32, 1), v257, v105, 2), v234, v105, 3);
  sub_10001358C(v446, -0.2618, xmmword_1000EC8E0);
  v106 = sub_100013568(v446);
  v278 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v344, v107.f32[0]), v301, *v107.f32, 1), v240, v107, 2), v235, v107, 3);
  v258 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v344, v108.f32[0]), v301, *v108.f32, 1), v240, v108, 2), v235, v108, 3);
  v324 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v344, v106.n128_f32[0]), v301, v106.n128_u64[0], 1), v240, v106, 2), v235, v106, 3);
  v345 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v344, v109.f32[0]), v301, *v109.f32, 1), v240, v109, 2), v235, v109, 3);
  sub_10001358C(v447, 0.85521, xmmword_1000EC920);
  v110 = sub_100013568(v447);
  v518 = 1;
  *(v0 + 1632) = 0x3FB0A3D73FC66666;
  *(v0 + 1640) = 1025758986;
  *(v0 + 1644) = 1;
  *(v0 + 1645) = v523;
  *(v0 + 1647) = v524;
  *(v0 + 1648) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v324, v110.n128_f32[0]), v278, v110.n128_u64[0], 1), v258, v110, 2), v345, v110, 3);
  *(v0 + 1664) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v324, v111.f32[0]), v278, *v111.f32, 1), v258, v111, 2), v345, v111, 3);
  *(v0 + 1680) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v324, v112.f32[0]), v278, *v112.f32, 1), v258, v112, 2), v345, v112, 3);
  *(v0 + 1696) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v324, v113.f32[0]), v278, *v113.f32, 1), v258, v113, 2), v345, v113, 3);
  *(v0 + 1712) = xmmword_1000EF5E0;
  *(v0 + 1728) = 0;
  v114 = v521;
  *(v0 + 1731) = v522;
  *(v0 + 1729) = v114;
  *(v0 + 1732) = 1056964608;
  *(v0 + 1736) = 13;
  *(v0 + 1737) = v519;
  *(v0 + 1739) = v520;
  *(v0 + 1740) = 1065353216;
  *(v0 + 1744) = 0;
  *(v0 + 1752) = 0u;
  *(v0 + 1768) = v518;
  *(v0 + 1769) = 1;
  *(v0 + 1771) = 0;
  *(v0 + 1776) = 0u;
  *(v0 + 1792) = sub_100081614;
  *(v0 + 1800) = 0;
  *(v0 + 1808) = 0x3F80000000000000;
  *(v0 + 1824) = xmmword_1000EF5A0;
  *(v0 + 1840) = 4;
  v115 = vmulq_f32(xmmword_10013DCA0, 0);
  v325 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, unk_10013DCD0);
  v302 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v115), 0, xmmword_10013DCC0), 0, unk_10013DCD0);
  v259 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v115, 0, *algn_10013DCB0)), 0, unk_10013DCD0);
  v371 = vaddq_f32(unk_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, v403), v370, *algn_10013DCB0), vdupq_n_s32(0xBE999999), xmmword_10013DCC0));
  sub_10001358C(v448, 1.5708, xmmword_1000EC910);
  v116 = sub_100013568(v448);
  v404 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v325, v116.n128_f32[0]), v302, v116.n128_u64[0], 1), v259, v116, 2), v371, v116, 3);
  v346 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v325, v117.f32[0]), v302, *v117.f32, 1), v259, v117, 2), v371, v117, 3);
  v279 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v325, v118.f32[0]), v302, *v118.f32, 1), v259, v118, 2), v371, v118, 3);
  v260 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v325, v119.f32[0]), v302, *v119.f32, 1), v259, v119, 2), v371, v119, 3);
  sub_10001358C(v449, -0.82903, xmmword_1000EC8E0);
  v120 = sub_100013568(v449);
  v372 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v404, v120.n128_f32[0]), v346, v120.n128_u64[0], 1), v279, v120, 2), v260, v120, 3);
  v326 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v404, v121.f32[0]), v346, *v121.f32, 1), v279, v121, 2), v260, v121, 3);
  v303 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v404, v122.f32[0]), v346, *v122.f32, 1), v279, v122, 2), v260, v122, 3);
  v405 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v404, v123.f32[0]), v346, *v123.f32, 1), v279, v123, 2), v260, v123, 3);
  sub_10001358C(v450, 1.5708, xmmword_1000EC920);
  v124 = sub_100013568(v450);
  v525 = 1;
  *(v0 + 1856) = 0x3FC000003FE66666;
  *(v0 + 1864) = 1056964608;
  *(v0 + 1868) = 1;
  *(v0 + 1869) = v530;
  *(v0 + 1871) = v531;
  *(v0 + 1872) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v372, v124.n128_f32[0]), v326, v124.n128_u64[0], 1), v303, v124, 2), v405, v124, 3);
  *(v0 + 1888) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v372, v125.f32[0]), v326, *v125.f32, 1), v303, v125, 2), v405, v125, 3);
  *(v0 + 1904) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v372, v126.f32[0]), v326, *v126.f32, 1), v303, v126, 2), v405, v126, 3);
  *(v0 + 1920) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v372, v127.f32[0]), v326, *v127.f32, 1), v303, v127, 2), v405, v127, 3);
  *(v0 + 1936) = xmmword_1000EF5F0;
  *(v0 + 1952) = 1;
  v128 = v528;
  *(v0 + 1955) = v529;
  *(v0 + 1953) = v128;
  *(v0 + 1956) = 1076258406;
  *(v0 + 1960) = 9;
  *(v0 + 1961) = v526;
  *(v0 + 1963) = v527;
  *(v0 + 1964) = 1065353216;
  *(v0 + 1968) = 0;
  *(v0 + 1976) = 0u;
  *(v0 + 1992) = v525;
  *(v0 + 1993) = 1;
  *(v0 + 1995) = 0;
  *(v0 + 2000) = 0u;
  *(v0 + 2016) = sub_10003ABEC;
  *(v0 + 2024) = 0;
  *(v0 + 2032) = 0x3F44EC4F00000000;
  *(v0 + 2048) = xmmword_1000EF600;
  *(v0 + 2064) = 9;
  v129 = vmulq_f32(xmmword_10013DCA0, 0);
  v347 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, unk_10013DCD0);
  v304 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v129), 0, xmmword_10013DCC0), 0, unk_10013DCD0);
  v280 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v129, 0, *algn_10013DCB0)), 0, unk_10013DCD0);
  v241 = vaddq_f32(unk_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3CA3D70Au)), vdupq_n_s32(0x4041EB85u), *algn_10013DCB0), vdupq_n_s32(0xBFCA3D70), xmmword_10013DCC0));
  sub_10001358C(v451, -1.0472, xmmword_1000EC910);
  v130 = sub_100013568(v451);
  v373 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v347, v130.n128_f32[0]), v304, v130.n128_u64[0], 1), v280, v130, 2), v241, v130, 3);
  v327 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v347, v131.f32[0]), v304, *v131.f32, 1), v280, v131, 2), v241, v131, 3);
  v261 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v347, v132.f32[0]), v304, *v132.f32, 1), v280, v132, 2), v241, v132, 3);
  v242 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v347, v133.f32[0]), v304, *v133.f32, 1), v280, v133, 2), v241, v133, 3);
  sub_10001358C(v452, -0.83776, xmmword_1000EC8E0);
  v134 = sub_100013568(v452);
  v305 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v373, v135.f32[0]), v327, *v135.f32, 1), v261, v135, 2), v242, v135, 3);
  v281 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v373, v136.f32[0]), v327, *v136.f32, 1), v261, v136, 2), v242, v136, 3);
  v348 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v373, v134.n128_f32[0]), v327, v134.n128_u64[0], 1), v261, v134, 2), v242, v134, 3);
  v374 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v373, v137.f32[0]), v327, *v137.f32, 1), v261, v137, 2), v242, v137, 3);
  sub_10001358C(v453, -1.0647, xmmword_1000EC920);
  v138 = sub_100013568(v453);
  v532 = 1;
  *(v0 + 2080) = 0x3F0000003F239581;
  *(v0 + 2088) = 1045220557;
  *(v0 + 2092) = 0;
  *(v0 + 2093) = v537;
  *(v0 + 2095) = v538;
  *(v0 + 2096) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v348, v138.n128_f32[0]), v305, v138.n128_u64[0], 1), v281, v138, 2), v374, v138, 3);
  *(v0 + 2112) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v348, v139.f32[0]), v305, *v139.f32, 1), v281, v139, 2), v374, v139, 3);
  *(v0 + 2128) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v348, v140.f32[0]), v305, *v140.f32, 1), v281, v140, 2), v374, v140, 3);
  *(v0 + 2144) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v348, v141.f32[0]), v305, *v141.f32, 1), v281, v141, 2), v374, v141, 3);
  *(v0 + 2160) = xmmword_1000EC900;
  *(v0 + 2176) = 0;
  v142 = v535;
  *(v0 + 2179) = v536;
  *(v0 + 2177) = v142;
  *(v0 + 2180) = 1065353216;
  *(v0 + 2184) = 13;
  *(v0 + 2185) = v533;
  *(v0 + 2187) = v534;
  *(v0 + 2188) = 1065353216;
  *(v0 + 2192) = 0;
  *(v0 + 2200) = 0u;
  *(v0 + 2216) = v532;
  *(v0 + 2217) = 0;
  *(v0 + 2219) = 1;
  *(v0 + 2224) = 0u;
  *(v0 + 2240) = sub_100081614;
  *(v0 + 2248) = 0;
  *(v0 + 2256) = 0x3F80000000000000;
  *(v0 + 2272) = xmmword_1000EF5A0;
  *(v0 + 2288) = 6;
  v143 = vmulq_f32(xmmword_10013DCA0, 0);
  v328 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, unk_10013DCD0);
  v282 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v143), 0, xmmword_10013DCC0), 0, unk_10013DCD0);
  v262 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v143, 0, *algn_10013DCB0)), 0, unk_10013DCD0);
  v375 = vdupq_n_s32(0xBF8E147B);
  v236 = vaddq_f32(unk_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3DA3D70Au)), vdupq_n_s32(0x3F547AE1u), *algn_10013DCB0), v375, xmmword_10013DCC0));
  sub_10001358C(v454, 1.5708, xmmword_1000EC910);
  v144 = sub_100013568(v454);
  v349 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v328, v144.n128_f32[0]), v282, v144.n128_u64[0], 1), v262, v144, 2), v236, v144, 3);
  v306 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v328, v145.f32[0]), v282, *v145.f32, 1), v262, v145, 2), v236, v145, 3);
  v243 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v328, v146.f32[0]), v282, *v146.f32, 1), v262, v146, 2), v236, v146, 3);
  v237 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v328, v147.f32[0]), v282, *v147.f32, 1), v262, v147, 2), v236, v147, 3);
  sub_10001358C(v455, -3.4034, xmmword_1000EC8E0);
  v148 = sub_100013568(v455);
  v283 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v349, v149.f32[0]), v306, *v149.f32, 1), v243, v149, 2), v237, v149, 3);
  v263 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v349, v150.f32[0]), v306, *v150.f32, 1), v243, v150, 2), v237, v150, 3);
  v329 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v349, v148.n128_f32[0]), v306, v148.n128_u64[0], 1), v243, v148, 2), v237, v148, 3);
  v350 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v349, v151.f32[0]), v306, *v151.f32, 1), v243, v151, 2), v237, v151, 3);
  sub_10001358C(v456, 1.5708, xmmword_1000EC920);
  v152 = sub_100013568(v456);
  v539 = 1;
  *(v0 + 2304) = 0x3F63D70A3F451EB8;
  *(v0 + 2312) = 1056964608;
  *(v0 + 2316) = 1;
  *(v0 + 2317) = v544;
  *(v0 + 2319) = v545;
  *(v0 + 2320) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v329, v152.n128_f32[0]), v283, v152.n128_u64[0], 1), v263, v152, 2), v350, v152, 3);
  *(v0 + 2336) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v329, v153.f32[0]), v283, *v153.f32, 1), v263, v153, 2), v350, v153, 3);
  *(v0 + 2352) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v329, v154.f32[0]), v283, *v154.f32, 1), v263, v154, 2), v350, v154, 3);
  *(v0 + 2368) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v329, v155.f32[0]), v283, *v155.f32, 1), v263, v155, 2), v350, v155, 3);
  *(v0 + 2384) = xmmword_1000EF610;
  *(v0 + 2400) = 0;
  v156 = v542;
  *(v0 + 2403) = v543;
  *(v0 + 2401) = v156;
  *(v0 + 2404) = 1056964608;
  *(v0 + 2408) = 9;
  *(v0 + 2409) = v540;
  *(v0 + 2411) = v541;
  *(v0 + 2412) = 1065353216;
  *(v0 + 2416) = 0;
  *(v0 + 2424) = 0u;
  *(v0 + 2440) = v539;
  *(v0 + 2441) = 2;
  *(v0 + 2443) = 1;
  *(v0 + 2448) = 0u;
  *(v0 + 2464) = sub_10003AC1C;
  *(v0 + 2472) = 0;
  *(v0 + 2480) = 0x3F80000000000000;
  *(v0 + 2496) = xmmword_1000EF5C0;
  *(v0 + 2512) = 6;
  v157 = vmulq_f32(xmmword_10013DCA0, 0);
  v351 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, unk_10013DCD0);
  v307 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v157), 0, xmmword_10013DCC0), 0, unk_10013DCD0);
  v264 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v157, 0, *algn_10013DCB0)), 0, unk_10013DCD0);
  v244 = vaddq_f32(unk_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBEC28F5C)), vdupq_n_s32(0xBF2B851E), *algn_10013DCB0), v375, xmmword_10013DCC0));
  sub_10001358C(v457, 1.5708, xmmword_1000EC910);
  v158 = sub_100013568(v457);
  v376 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v351, v158.n128_f32[0]), v307, v158.n128_u64[0], 1), v264, v158, 2), v244, v158, 3);
  v330 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v351, v159.f32[0]), v307, *v159.f32, 1), v264, v159, 2), v244, v159, 3);
  v284 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v351, v160.f32[0]), v307, *v160.f32, 1), v264, v160, 2), v244, v160, 3);
  v245 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v351, v161.f32[0]), v307, *v161.f32, 1), v264, v161, 2), v244, v161, 3);
  sub_10001358C(v458, -2.2864, xmmword_1000EC8E0);
  v162 = sub_100013568(v458);
  v308 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v376, v163.f32[0]), v330, *v163.f32, 1), v284, v163, 2), v245, v163, 3);
  v265 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v376, v164.f32[0]), v330, *v164.f32, 1), v284, v164, 2), v245, v164, 3);
  v352 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v376, v162.n128_f32[0]), v330, v162.n128_u64[0], 1), v284, v162, 2), v245, v162, 3);
  v377 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v376, v165.f32[0]), v330, *v165.f32, 1), v284, v165, 2), v245, v165, 3);
  sub_10001358C(v459, 1.5708, xmmword_1000EC920);
  v166 = sub_100013568(v459);
  v546 = 1;
  *(v0 + 2528) = 0x3F8CCCCD3F570A3DLL;
  *(v0 + 2536) = 1065353216;
  *(v0 + 2540) = 1;
  *(v0 + 2541) = v551;
  *(v0 + 2543) = v552;
  *(v0 + 2544) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v352, v166.n128_f32[0]), v308, v166.n128_u64[0], 1), v265, v166, 2), v377, v166, 3);
  *(v0 + 2560) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v352, v167.f32[0]), v308, *v167.f32, 1), v265, v167, 2), v377, v167, 3);
  *(v0 + 2576) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v352, v168.f32[0]), v308, *v168.f32, 1), v265, v168, 2), v377, v168, 3);
  *(v0 + 2592) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v352, v169.f32[0]), v308, *v169.f32, 1), v265, v169, 2), v377, v169, 3);
  *(v0 + 2608) = xmmword_1000EF620;
  *(v0 + 2624) = 0;
  v170 = v549;
  *(v0 + 2627) = v550;
  *(v0 + 2625) = v170;
  *(v0 + 2628) = 1058977874;
  *(v0 + 2632) = 9;
  *(v0 + 2633) = v547;
  *(v0 + 2635) = v548;
  *(v0 + 2636) = 1065353216;
  *(v0 + 2640) = 0;
  *(v0 + 2648) = 0u;
  *(v0 + 2664) = v546;
  *(v0 + 2665) = 2;
  *(v0 + 2667) = 1;
  *(v0 + 2672) = 0u;
  *(v0 + 2688) = sub_10003AC4C;
  *(v0 + 2696) = 0;
  *(v0 + 2704) = 0x3F80000000000000;
  *(v0 + 2720) = xmmword_1000EF630;
  *(v0 + 2736) = 9;
  v171 = vmulq_f32(xmmword_10013DCA0, 0);
  v353 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, unk_10013DCD0);
  v309 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v171), 0, xmmword_10013DCC0), 0, unk_10013DCD0);
  v285 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v171, 0, *algn_10013DCB0)), 0, unk_10013DCD0);
  v246 = vaddq_f32(unk_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xC03C28F5)), vdupq_n_s32(0x4071EB85u), *algn_10013DCB0), vdupq_n_s32(0x405E147Bu), xmmword_10013DCC0));
  sub_10001358C(v460, -1.2217, xmmword_1000EC910);
  v172 = sub_100013568(v460);
  v378 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v353, v172.n128_f32[0]), v309, v172.n128_u64[0], 1), v285, v172, 2), v246, v172, 3);
  v331 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v353, v173.f32[0]), v309, *v173.f32, 1), v285, v173, 2), v246, v173, 3);
  v266 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v353, v174.f32[0]), v309, *v174.f32, 1), v285, v174, 2), v246, v174, 3);
  v247 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v353, v175.f32[0]), v309, *v175.f32, 1), v285, v175, 2), v246, v175, 3);
  sub_10001358C(v461, -0.68068, xmmword_1000EC8E0);
  v176 = sub_100013568(v461);
  v310 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v378, v177.f32[0]), v331, *v177.f32, 1), v266, v177, 2), v247, v177, 3);
  v286 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v378, v178.f32[0]), v331, *v178.f32, 1), v266, v178, 2), v247, v178, 3);
  v354 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v378, v176.n128_f32[0]), v331, v176.n128_u64[0], 1), v266, v176, 2), v247, v176, 3);
  v379 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v378, v179.f32[0]), v331, *v179.f32, 1), v266, v179, 2), v247, v179, 3);
  sub_10001358C(v462, -0.27925, xmmword_1000EC920);
  v180 = sub_100013568(v462);
  v553 = 1;
  *(v0 + 2752) = 0x404CCCCD3F28F5C3;
  *(v0 + 2760) = 1035758207;
  *(v0 + 2764) = 1;
  *(v0 + 2765) = v558;
  *(v0 + 2767) = v559;
  *(v0 + 2768) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v354, v180.n128_f32[0]), v310, v180.n128_u64[0], 1), v286, v180, 2), v379, v180, 3);
  *(v0 + 2784) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v354, v181.f32[0]), v310, *v181.f32, 1), v286, v181, 2), v379, v181, 3);
  *(v0 + 2800) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v354, v182.f32[0]), v310, *v182.f32, 1), v286, v182, 2), v379, v182, 3);
  *(v0 + 2816) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v354, v183.f32[0]), v310, *v183.f32, 1), v286, v183, 2), v379, v183, 3);
  *(v0 + 2832) = xmmword_1000EF5F0;
  *(v0 + 2848) = 1;
  v184 = v556;
  *(v0 + 2851) = v557;
  *(v0 + 2849) = v184;
  *(v0 + 2852) = 1088631603;
  *(v0 + 2856) = 8;
  *(v0 + 2857) = v554;
  *(v0 + 2859) = v555;
  *(v0 + 2860) = 1055622431;
  *(v0 + 2864) = 0;
  *(v0 + 2872) = 0u;
  *(v0 + 2888) = v553;
  *(v0 + 2889) = 3;
  *(v0 + 2891) = 1;
  *(v0 + 2896) = 0u;
  *(v0 + 2912) = sub_10003AD48;
  *(v0 + 2920) = 0;
  *(v0 + 2928) = 0x3F80000000000000;
  *(v0 + 2944) = xmmword_1000EF5A0;
  *(v0 + 2960) = 5;
  v185 = vmulq_f32(xmmword_10013DCA0, 0);
  v380 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, unk_10013DCD0);
  v332 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v185), 0, xmmword_10013DCC0), 0, unk_10013DCD0);
  v287 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v185, 0, *algn_10013DCB0)), 0, unk_10013DCD0);
  v180.n128_u64[0] = 0x4000000040000000;
  v180.n128_u64[1] = 0x4000000040000000;
  v267 = vaddq_f32(unk_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0x3FD1EB85u)), v395, *algn_10013DCB0), v180, xmmword_10013DCC0));
  sub_10001358C(v463, 0.0, xmmword_1000EC910);
  v186 = sub_100013568(v463);
  v396 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v380, v186.n128_f32[0]), v332, v186.n128_u64[0], 1), v287, v186, 2), v267, v186, 3);
  v355 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v380, v187.f32[0]), v332, *v187.f32, 1), v287, v187, 2), v267, v187, 3);
  v311 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v380, v188.f32[0]), v332, *v188.f32, 1), v287, v188, 2), v267, v188, 3);
  v268 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v380, v189.f32[0]), v332, *v189.f32, 1), v287, v189, 2), v267, v189, 3);
  sub_10001358C(v464, 0.54105, xmmword_1000EC8E0);
  v190 = sub_100013568(v464);
  v333 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v396, v191.f32[0]), v355, *v191.f32, 1), v311, v191, 2), v268, v191, 3);
  v288 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v396, v192.f32[0]), v355, *v192.f32, 1), v311, v192, 2), v268, v192, 3);
  v381 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v396, v190.n128_f32[0]), v355, v190.n128_u64[0], 1), v311, v190, 2), v268, v190, 3);
  v397 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v396, v193.f32[0]), v355, *v193.f32, 1), v311, v193, 2), v268, v193, 3);
  sub_10001358C(v465, 0.0, xmmword_1000EC920);
  v194 = sub_100013568(v465);
  v560 = 1;
  *(v0 + 2976) = 0x4053851F3FF0A3D7;
  *(v0 + 2984) = 1053609165;
  *(v0 + 2988) = 1;
  *(v0 + 2989) = v565;
  *(v0 + 2991) = v566;
  *(v0 + 2992) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v381, v194.n128_f32[0]), v333, v194.n128_u64[0], 1), v288, v194, 2), v397, v194, 3);
  *(v0 + 3008) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v381, v195.f32[0]), v333, *v195.f32, 1), v288, v195, 2), v397, v195, 3);
  *(v0 + 3024) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v381, v196.f32[0]), v333, *v196.f32, 1), v288, v196, 2), v397, v196, 3);
  *(v0 + 3040) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v381, v197.f32[0]), v333, *v197.f32, 1), v288, v197, 2), v397, v197, 3);
  *(v0 + 3056) = xmmword_1000EF5F0;
  *(v0 + 3072) = 1;
  v198 = v563;
  *(v0 + 3075) = v564;
  *(v0 + 3073) = v198;
  *(v0 + 3076) = 1089260749;
  *(v0 + 3080) = 13;
  *(v0 + 3081) = v561;
  *(v0 + 3083) = v562;
  *(v0 + 3084) = 1065353216;
  *(v0 + 3088) = 0;
  *(v0 + 3096) = 0u;
  *(v0 + 3112) = v560;
  *(v0 + 3113) = 3;
  *(v0 + 3115) = 1;
  *(v0 + 3120) = 0u;
  *(v0 + 3136) = sub_10008160C;
  *(v0 + 3144) = 0;
  *(v0 + 3152) = 0x3F80000000000000;
  *(v0 + 3168) = xmmword_1000EF5C0;
  *(v0 + 3184) = 5;
  v199 = vmulq_f32(xmmword_10013DCA0, 0);
  v406 = vmlaq_f32(vmlaq_f32(vmlaq_f32(xmmword_10013DCA0, 0, *algn_10013DCB0), 0, xmmword_10013DCC0), 0, unk_10013DCD0);
  v356 = vmlaq_f32(vmlaq_f32(vaddq_f32(*algn_10013DCB0, v199), 0, xmmword_10013DCC0), 0, unk_10013DCD0);
  v334 = vmlaq_f32(vaddq_f32(xmmword_10013DCC0, vmlaq_f32(v199, 0, *algn_10013DCB0)), 0, unk_10013DCD0);
  v289 = vaddq_f32(unk_10013DCD0, vmlaq_f32(vmlaq_f32(vmulq_f32(xmmword_10013DCA0, vdupq_n_s32(0xBFC7AE14)), vdupq_n_s32(0x40233333u), *algn_10013DCB0), vdupq_n_s32(0x405D70A4u), xmmword_10013DCC0));
  sub_10001358C(v466, -0.69813, xmmword_1000EC910);
  v200 = sub_100013568(v466);
  v382 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v406, v201.f32[0]), v356, *v201.f32, 1), v334, v201, 2), v289, v201, 3);
  v398 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v406, v200.n128_f32[0]), v356, v200.n128_u64[0], 1), v334, v200, 2), v289, v200, 3);
  v312 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v406, v202.f32[0]), v356, *v202.f32, 1), v334, v202, 2), v289, v202, 3);
  v357 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v406, v203.f32[0]), v356, *v203.f32, 1), v334, v203, 2), v289, v203, 3);
  sub_10001358C(v467, 0.0, xmmword_1000EC8E0);
  v204 = sub_100013568(v467);
  v420 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v398, v205.f32[0]), v382, *v205.f32, 1), v312, v205, 2), v357, v205, 3);
  v422 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v398, v204.n128_f32[0]), v382, v204.n128_u64[0], 1), v312, v204, 2), v357, v204, 3);
  v407 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v398, v206.f32[0]), v382, *v206.f32, 1), v312, v206, 2), v357, v206, 3);
  v399 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v398, v207.f32[0]), v382, *v207.f32, 1), v312, v207, 2), v357, v207, 3);
  sub_10001358C(v468, 0.0, xmmword_1000EC920);
  v208 = sub_100013568(v468);
  v567 = 1;
  *(v0 + 3200) = 0x408CCCCD3FB33333;
  *(v0 + 3208) = 1056964608;
  *(v0 + 3212) = 1;
  *(v0 + 3213) = v572;
  *(v0 + 3215) = v573;
  *(v0 + 3216) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v422, v208.n128_f32[0]), v420, v208.n128_u64[0], 1), v407, v208, 2), v399, v208, 3);
  *(v0 + 3232) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v422, v209.f32[0]), v420, *v209.f32, 1), v407, v209, 2), v399, v209, 3);
  *(v0 + 3248) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v422, v210.f32[0]), v420, *v210.f32, 1), v407, v210, 2), v399, v210, 3);
  *(v0 + 3264) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v422, v211.f32[0]), v420, *v211.f32, 1), v407, v211, 2), v399, v211, 3);
  *(v0 + 3280) = xmmword_1000EC900;
  *(v0 + 3296) = 0;
  v212 = v570;
  *(v0 + 3299) = v571;
  *(v0 + 3297) = v212;
  *(v0 + 3300) = 1069547520;
  *(v0 + 3304) = 13;
  *(v0 + 3305) = v568;
  *(v0 + 3307) = v569;
  *(v0 + 3308) = 1065353216;
  *(v0 + 3312) = 0;
  *(v0 + 3320) = 0u;
  *(v0 + 3336) = v567;
  *(v0 + 3337) = 3;
  *(v0 + 3339) = 1;
  *(v0 + 3344) = 0u;
  *(v0 + 3360) = sub_10003AE2C;
  *(v0 + 3368) = 0;
  *(v0 + 3376) = 0x3F80000000000000;
  v213 = sub_1000A0774(v0);
  swift_setDeallocating();
  sub_1000125FC(&qword_100131018);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1000125FC(&qword_100131020);
  v214 = swift_allocObject();
  v214[1] = xmmword_1000ED250;
  v214[2] = xmmword_1000EF640;
  v214[3] = xmmword_1000EF650;
  v214[4] = xmmword_1000EF660;
  v215 = swift_allocObject();
  v215[1] = xmmword_1000EC880;
  v215[2] = xmmword_1000EF670;
  v215[3] = xmmword_1000EF680;
  v216 = swift_allocObject();
  v216[1] = xmmword_1000EC880;
  v216[2] = xmmword_1000EF690;
  v216[3] = xmmword_1000EF6A0;
  sub_1000125FC(&qword_100131028);
  v217 = swift_allocObject();
  *(v217 + 16) = xmmword_1000EC880;
  *(v217 + 32) = swift_getKeyPath();
  *(v217 + 40) = 1066611507;
  *(v217 + 44) = 0;
  *(v217 + 48) = 1068960317;
  *(v217 + 52) = 0;
  *(v217 + 56) = 0;
  *(v217 + 60) = 1;
  *(v217 + 64) = swift_getKeyPath();
  *(v217 + 72) = -1077348925;
  *(v217 + 76) = 0;
  *(v217 + 80) = -1078020014;
  *(v217 + 84) = 0;
  *(v217 + 88) = 1049918177;
  *(v217 + 92) = 1;
  sub_1000125FC(&qword_100131030);
  v218 = swift_allocObject();
  *(v218 + 16) = xmmword_1000EC880;
  *(v218 + 32) = swift_getKeyPath();
  v219 = vnegq_f32(xmmword_100130FD0);
  v220 = vtrn2q_s32(xmmword_100130FD0, vtrn1q_s32(xmmword_100130FD0, v219));
  v423 = vdupq_n_s32(0x3D381240u);
  v221 = vdupq_n_s32(0xBD381240);
  v222 = vmlaq_f32(vmulq_f32(vextq_s8(xmmword_100130FD0, v219, 8uLL), v423), v221, vextq_s8(v220, v220, 8uLL));
  v223 = vrev64q_s32(xmmword_100130FD0);
  v223.i32[0] = v219.i32[1];
  v223.i32[3] = v219.i32[2];
  v418 = vdupq_n_s32(0x3F7F7B61u);
  v421 = v221;
  v416 = vdupq_n_s32(0xBB049EF1);
  *(v218 + 48) = vaddq_f32(vmlaq_f32(vmulq_f32(xmmword_100130FD0, v418), v416, v223), v222);
  *(v218 + 64) = swift_getKeyPath();
  v224 = vnegq_f32(xmmword_100130FF0);
  v225 = vtrn2q_s32(xmmword_100130FF0, vtrn1q_s32(xmmword_100130FF0, v224));
  v226 = vmlaq_f32(vmulq_f32(vextq_s8(xmmword_100130FF0, v224, 8uLL), v421), v423, vextq_s8(v225, v225, 8uLL));
  v227 = vrev64q_s32(xmmword_100130FF0);
  v227.i32[0] = v224.i32[1];
  v227.i32[3] = v224.i32[2];
  *(v218 + 80) = vaddq_f32(vmlaq_f32(vmulq_f32(xmmword_100130FF0, v418), v416, v227), v226);
  sub_1000125FC(&qword_100131038);
  v228 = swift_allocObject();
  *(v228 + 16) = xmmword_1000EDAB0;
  *(v228 + 32) = 0;
  *(v228 + 40) = 0;
  *(v228 + 48) = 9;
  *(v228 + 52) = 0;
  *(v228 + 56) = 1;
  *(v228 + 60) = 0;
  *(v228 + 64) = 1;
  *(v228 + 68) = 1017370378;
  *(v228 + 72) = 1;
  *(v228 + 80) = xmmword_1000EF5C0;
  *(v228 + 96) = 9;
  *(v228 + 100) = 0;
  *(v228 + 104) = 1;
  *(v228 + 108) = 0;
  *(v228 + 112) = 1;
  *(v228 + 116) = 1058642330;
  *(v228 + 120) = 1;
  *(v228 + 128) = xmmword_1000EF5A0;
  *(v228 + 144) = 3;
  *(v228 + 148) = 0;
  *(v228 + 152) = 1;
  *(v228 + 156) = 0;
  *(v228 + 160) = 1;
  *(v228 + 164) = 1067198710;
  *(v228 + 168) = 1;
  *(v228 + 176) = xmmword_1000EF5A0;
  *(v228 + 192) = 4;
  *(v228 + 196) = 0;
  *(v228 + 200) = 1;
  *(v228 + 204) = 0;
  *(v228 + 208) = 1;
  *(v228 + 212) = 1056964608;
  *(v228 + 216) = 1;
  *(v228 + 224) = xmmword_1000EF5A0;
  *(v228 + 240) = 2;
  *(v228 + 244) = 0;
  *(v228 + 248) = 1;
  *(v228 + 252) = 0;
  *(v228 + 256) = 1;
  *(v228 + 260) = 1045220557;
  *(v228 + 264) = 1;
  v229 = sub_1000A092C(v228);
  swift_setDeallocating();
  sub_1000125FC(&qword_100131040);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v230 = sub_1000A0A98(&off_10011EF90);
  sub_1000125FC(&qword_100131048);
  swift_arrayDestroy();
  swift_bridgeObjectRetain_n();
  v231 = sub_1000C1928(v213);

  sub_1000C53DC(v231, v576);
  v232 = sub_1000C199C(v213);

  sub_1000C53DC(v232, v574);
  xmmword_10013AA50 = xmmword_1000EF6B0;
  unk_10013AA60 = v401;
  qword_10013AA70 = 0x3E8000003FC00000;
  dword_10013AA78 = 1008981770;
  xmmword_10013AA80 = xmmword_1000EF6C0;
  unk_10013AA90 = v400;
  qword_10013AAA0 = 0x3E99999A400CBC6ALL;
  dword_10013AAA8 = 1014350479;
  xmmword_10013AAB0 = xmmword_1000EF6D0;
  qword_10013AAC0 = 0x410A49BA40800000;
  xmmword_10013AAD0 = xmmword_1000EF6E0;
  *&qword_10013AAE0 = xmmword_1000EF6F0;
  dword_10013AAF0 = 1097712271;
  qword_10013AAF8 = 0;
  unk_10013AB00 = v213;
  unk_10013AB08 = v576[0];
  unk_10013AB18 = v576[1];
  qword_10013AB28 = v577;
  xmmword_10013AB30 = v574[0];
  unk_10013AB40 = v574[1];
  qword_10013AB50 = v575;
  qword_10013AB58 = sub_10003AED4;
  qword_10013AB60 = 0;
  xmmword_10013AB70 = xmmword_1000EF700;
  unk_10013AB80 = xmmword_1000EF710;
  qword_10013AB90 = v214;
  word_10013AB9C = 3;
  dword_10013AB98 = 0;
  xmmword_10013ABA0 = xmmword_1000EF720;
  qword_10013ABB0 = v215;
  xmmword_10013ABB8 = xmmword_1000EF730;
  xmmword_10013ABC8 = xmmword_1000EF740;
  qword_10013ABD8 = 1059366053;
  unk_10013ABE0 = v216;
  xmmword_10013ABE8 = xmmword_1000EF750;
  xmmword_10013ABF8 = xmmword_1000EF760;
  qword_10013AC08 = 1063774184;
  xmmword_10013AC10 = xmmword_1000EF770;
  qword_10013AC20 = v217;
  unk_10013AC28 = v218;
  qword_10013AC30 = v229;
  unk_10013AC38 = v230;
  qword_10013AC40 = _swiftEmptyArrayStorage;
  unk_10013AC48 = _swiftEmptyArrayStorage;
  result = 46976199.9;
  qword_10013AC50 = 4721573848678400000;
  return result;
}