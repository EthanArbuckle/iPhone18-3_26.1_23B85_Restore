uint64_t sub_38E9C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v139 = a8;
  v137 = a7;
  v138 = a6;
  v142 = a5;
  v143 = a4;
  v136 = sub_752D8();
  v135 = *(v136 - 8);
  v12 = *(v135 + 64);
  __chkstk_darwin(v136);
  v133 = v13;
  v134 = &v120 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_74968();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v123 = &v120 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v120 - v20;
  __chkstk_darwin(v19);
  v23 = &v120 - v22;
  v24 = sub_754B8();
  v141 = *(v24 - 8);
  v25 = *(v141 + 64);
  v26 = __chkstk_darwin(v24);
  v28 = &v120 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v26);
  v130 = &v120 - v30;
  __chkstk_darwin(v29);
  v32 = &v120 - v31;
  v132 = type metadata accessor for RingsPropertyRecordEntity();
  v140 = [a1 protectedDatabase];
  if (!v140)
  {
    sub_75378();
    v61 = sub_754A8();
    v62 = sub_75718();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_0, v61, v62, "Failed to insert: no protected database", v63, 2u);
    }

    (*(v141 + 8))(v32, v24);
    if (a2)
    {
      sub_19A60();
      swift_allocError();
      *v64 = 0;
      *a2 = sub_74888();
    }

    return 0;
  }

  v120 = v21;
  v121 = v28;
  v131 = v23;
  v127 = v15;
  v128 = v14;
  v122 = a2;
  v129 = v24;
  v33 = *(a3 + 16);
  v34 = _swiftEmptyArrayStorage;
  if (v33)
  {
    aBlock = _swiftEmptyArrayStorage;
    sub_67C58(0, v33, 0);
    v34 = aBlock;
    v35 = *(aBlock + 16);
    v36 = 16 * v35;
    do
    {
      aBlock = v34;
      v37 = *(v34 + 3);
      v38 = v35 + 1;
      if (v35 >= v37 >> 1)
      {
        sub_67C58((v37 > 1), v35 + 1, 1);
        v34 = aBlock;
      }

      *(v34 + 2) = v38;
      v39 = &v34[v36];
      *(v39 + 4) = 0xD00000000000002BLL;
      *(v39 + 5) = 0x8000000000078DD0;
      v36 += 16;
      v35 = v38;
      --v33;
    }

    while (v33);
  }

  v40 = sub_4DD0(v143);
  v41 = sub_39E34(6, v40, sub_11EB8);
  v43 = v42;

  v44 = sub_20148();
  sub_38F8(&qword_8F678, &qword_7A4A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_79BF0;
  *(inited + 32) = v41;
  *(inited + 40) = v43;
  aBlock = v44;
  sub_66C3C(inited);
  v46 = aBlock;
  v47 = *(aBlock + 16);
  v126 = a3;
  if (v47)
  {
    v48 = 0;
    aBlock = 541347393;
    v146 = 0xE400000000000000;
    v49 = _swiftEmptyArrayStorage;
LABEL_9:
    v50 = 16 * v48 + 40;
    while (v47 != v48)
    {
      if (v48 >= *(v46 + 16))
      {
        __break(1u);
      }

      ++v48;
      v51 = v50 + 16;
      v52 = *(v46 + v50);
      v50 += 16;
      if (v52)
      {
        v53 = *(v46 + v51 - 24);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = sub_67180(0, *(v49 + 2) + 1, 1, v49);
        }

        v55 = *(v49 + 2);
        v54 = *(v49 + 3);
        if (v55 >= v54 >> 1)
        {
          v49 = sub_67180((v54 > 1), v55 + 1, 1, v49);
        }

        *(v49 + 2) = v55 + 1;
        v56 = &v49[16 * v55];
        *(v56 + 4) = v53;
        *(v56 + 5) = v52;
        goto LABEL_9;
      }
    }

    v144 = v49;
    sub_38F8(&qword_8F280, &unk_7ABA0);
    sub_7718(&qword_8FBA0, &qword_8F280, &unk_7ABA0);
    v57 = sub_75538();
    v59 = v58;

    v151._countAndFlagsBits = v57;
    v151._object = v59;
    sub_75608(v151);

    v60 = v146;
    v124 = aBlock;
  }

  else
  {

    v124 = 0;
    v60 = 0;
  }

  v125 = a9;
  aBlock = sub_12FE0();
  sub_38F8(&qword_8F280, &unk_7ABA0);
  sub_7718(&qword_8FBA0, &qword_8F280, &unk_7ABA0);
  v65 = sub_75538();
  v67 = v66;

  aBlock = 0;
  v146 = 0xE000000000000000;
  sub_75908(88);
  v152._countAndFlagsBits = 0x205443454C4553;
  v152._object = 0xE700000000000000;
  sub_75608(v152);
  v153._countAndFlagsBits = v65;
  v153._object = v67;
  sub_75608(v153);

  v154._countAndFlagsBits = 0x204D4F524620;
  v154._object = 0xE600000000000000;
  sub_75608(v154);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v69 = [ObjCClassFromMetadata databaseTable];
  v70 = sub_755A8();
  v72 = v71;

  v155._countAndFlagsBits = v70;
  v155._object = v72;
  sub_75608(v155);

  v156._countAndFlagsBits = 0x2820455245485720;
  v156._object = 0xE800000000000000;
  sub_75608(v156);
  v144 = v34;
  v73 = sub_75538();
  v75 = v74;

  v157._countAndFlagsBits = v73;
  v157._object = v75;
  sub_75608(v157);

  v158._countAndFlagsBits = 0x20444E412029;
  v158._object = 0xE600000000000000;
  sub_75608(v158);
  v159._countAndFlagsBits = 0x6E6F6973726576;
  v159._object = 0xE700000000000000;
  sub_75608(v159);
  v160._object = 0x8000000000078E00;
  v160._countAndFlagsBits = 0xD00000000000001ELL;
  sub_75608(v160);
  v76 = [ObjCClassFromMetadata databaseTable];
  v77 = sub_755A8();
  v79 = v78;

  v161._countAndFlagsBits = v77;
  v161._object = v79;
  sub_75608(v161);

  v162._countAndFlagsBits = 8233;
  v162._object = 0xE200000000000000;
  sub_75608(v162);
  if (v60)
  {
    v80._countAndFlagsBits = v124;
  }

  else
  {
    v80._countAndFlagsBits = 0;
  }

  if (v60)
  {
    v81 = v60;
  }

  else
  {
    v81 = 0xE000000000000000;
  }

  v80._object = v81;
  sub_75608(v80);

  v163._countAndFlagsBits = 0x4220524544524F20;
  v163._object = 0xEA00000000002059;
  sub_75608(v163);
  v164._countAndFlagsBits = 0x6361437472617473;
  v164._object = 0xEF7865646E496568;
  sub_75608(v164);
  v165._countAndFlagsBits = 0x3B43534120;
  v165._object = 0xE500000000000000;
  sub_75608(v165);
  v82 = v131;
  sub_74958();
  v144 = 0;
  v83 = sub_75598();

  v84 = v135;
  v85 = v134;
  v86 = v136;
  (*(v135 + 16))(v134, v142, v136);
  v87 = (*(v84 + 80) + 24) & ~*(v84 + 80);
  v88 = (v133 + v87 + 7) & 0xFFFFFFFFFFFFFFF8;
  v89 = swift_allocObject();
  *(v89 + 16) = v126;
  (*(v84 + 32))(v89 + v87, v85, v86);
  *(v89 + v88) = v143;
  v90 = swift_allocObject();
  *(v90 + 16) = sub_432F0;
  *(v90 + 24) = v89;
  v149 = sub_2FE7C;
  v150 = v90;
  aBlock = _NSConcreteStackBlock;
  v146 = 1107296256;
  v147 = sub_644E0;
  v148 = &unk_87E90;
  v91 = _Block_copy(&aBlock);

  v92 = swift_allocObject();
  v92[2] = v138;
  v92[3] = &v144;
  v93 = v139;
  v92[4] = v137;
  v92[5] = v93;
  v92[6] = v125;
  v94 = swift_allocObject();
  *(v94 + 16) = sub_43390;
  *(v94 + 24) = v92;
  v149 = sub_1B6F8;
  v150 = v94;
  aBlock = _NSConcreteStackBlock;
  v146 = 1107296256;
  v147 = sub_4F494;
  v148 = &unk_87F08;
  v95 = _Block_copy(&aBlock);

  aBlock = 0;
  v96 = v140;
  LODWORD(v84) = [v140 executeSQL:v83 error:&aBlock bindingHandler:v91 enumerationHandler:v95];
  _Block_release(v95);
  _Block_release(v91);

  if (!v84)
  {
    v110 = aBlock;
    sub_74898();

    swift_willThrow();
    (*(v127 + 8))(v82, v128);
    v111 = v121;
    sub_75378();
    swift_errorRetain();
    v112 = sub_754A8();
    v113 = sub_75718();

    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      *v114 = 138412290;
      swift_errorRetain();
      v116 = _swift_stdlib_bridgeErrorToNSError();
      *(v114 + 4) = v116;
      *v115 = v116;
      _os_log_impl(&dword_0, v112, v113, "Failed to query: %@", v114, 0xCu);
      sub_3D48(v115, &unk_8EB30, &unk_7A270);
    }

    (*(v141 + 8))(v111, v129);
    v117 = v122;
    if (v122)
    {
      *v117 = sub_74888();
    }

    return 0;
  }

  v143 = v89;
  v97 = aBlock;
  v98 = v130;
  sub_75378();
  v99 = v82;
  v100 = v127;
  v101 = v120;
  v102 = v128;
  (*(v127 + 16))(v120, v99, v128);
  v103 = sub_754A8();
  v104 = sub_75738();
  if (os_log_type_enabled(v103, v104))
  {
    v105 = swift_slowAlloc();
    *v105 = 134218240;
    swift_beginAccess();
    *(v105 + 4) = v144;
    *(v105 + 12) = 2048;
    v106 = v123;
    sub_74958();
    sub_748F8();
    v108 = v107;
    v109 = *(v100 + 8);
    v109(v106, v102);
    v109(v101, v102);
    *(v105 + 14) = v108;
    _os_log_impl(&dword_0, v103, v104, "Queried %ld records in %fs", v105, 0x16u);

    (*(v141 + 8))(v98, v129);
    v109(v131, v102);
  }

  else
  {

    v119 = *(v100 + 8);
    v119(v101, v102);
    (*(v141 + 8))(v98, v129);
    v119(v131, v102);
  }

  return 1;
}

uint64_t sub_39E34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = *(a2 + 16);
  if (!v3)
  {
    return 0;
  }

  v13 = a3();
  v14._countAndFlagsBits = 0x28204E4920;
  v14._object = 0xE500000000000000;
  sub_75608(v14);
  sub_67C58(0, v3, 0);
  v4 = _swiftEmptyArrayStorage[2];
  v5 = 2 * v4;
  do
  {
    v6 = _swiftEmptyArrayStorage[3];
    v7 = v4 + 1;
    if (v4 >= v6 >> 1)
    {
      sub_67C58((v6 > 1), v4 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v7;
    v8 = &_swiftEmptyArrayStorage[v5];
    v8[4] = 63;
    v8[5] = 0xE100000000000000;
    v5 += 2;
    v4 = v7;
    --v3;
  }

  while (v3);
  sub_38F8(&qword_8F280, &unk_7ABA0);
  sub_7718(&qword_8FBA0, &qword_8F280, &unk_7ABA0);
  v9 = sub_75538();
  v11 = v10;

  v15._countAndFlagsBits = v9;
  v15._object = v11;
  sub_75608(v15);

  v16._countAndFlagsBits = 41;
  v16._object = 0xE100000000000000;
  sub_75608(v16);
  return v13;
}

uint64_t sub_39FE8(sqlite3_stmt *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(sqlite3_stmt *, uint64_t, uint64_t), uint64_t (*a6)(uint64_t))
{
  v43 = a3;
  v44 = a5;
  v42 = a4;
  v50 = sub_74CA8();
  v9 = *(v50 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v50);
  v12 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_754B8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_751D8();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v22 = v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a2 + 16);
  if (v23)
  {
    v24 = v22;
    v41[0] = a6;
    v41[1] = v17;
    v41[2] = v14;
    v41[3] = v13;
    v26 = *(v20 + 16);
    v25 = v20 + 16;
    v48 = v26;
    v49 = v12;
    v27 = a2 + ((*(v25 + 64) + 32) & ~*(v25 + 64));
    v45 = *(v25 + 56);
    v46 = v25;
    v28 = (v9 + 8);
    v47 = (v25 - 8);
    v52 = 1;
    v29 = 0x3FFFFFFFLL;
    while (1)
    {
      v51 = v23;
      v48(v24, v27, v18);
      sub_751B8();
      v30 = sub_74C98();
      v31 = *v28;
      v32 = v50;
      (*v28)(v12, v50);
      result = sqlite3_bind_int64(a1, v52, v30);
      if (!v29)
      {
        break;
      }

      sub_75198();
      v34 = sub_74C98();
      v35 = v32;
      v36 = v34;
      v31(v12, v35);
      v37 = v52 + 1;
      sqlite3_bind_int64(a1, v52 + 1, v36);
      result = (*v47)(v24, v18);
      v38 = (v37 + 1);
      if (__OFADD__(v37, 1))
      {
        goto LABEL_10;
      }

      --v29;
      v27 += v45;
      v52 = v37 + 1;
      v23 = v51 - 1;
      if (v51 == 1)
      {
        a6 = v41[0];
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    v38 = 1;
LABEL_8:
    v39 = v44(a1, v43, v38);
    v40 = a6(v42);
    sub_6C4F0(a1, v39, v40);
  }

  return result;
}

uint64_t sub_3A468(sqlite3_stmt *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_74CA8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v51 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_751D8();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v16 = v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a2 + 16);
  if (v17)
  {
    v44[1] = a3;
    v45 = a4;
    v52 = a1;
    v19 = *(v14 + 16);
    v18 = v14 + 16;
    v49 = v19;
    v50 = v8;
    v20 = a2 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
    v46 = *(v18 + 56);
    v47 = v18;
    v21 = (v9 + 8);
    v48 = (v18 - 8);
    v54 = 1;
    v22 = 0x3FFFFFFFLL;
    v23 = v16;
    v24 = v8;
    while (1)
    {
      v53 = v17;
      v49(v23, v20, v12);
      v25 = v51;
      sub_751B8();
      v26 = sub_74C98();
      v27 = *v21;
      (*v21)(v25, v24);
      v28 = v52;
      result = sqlite3_bind_int64(v52, v54, v26);
      if (!v22)
      {
        break;
      }

      sub_75198();
      v30 = sub_74C98();
      v31 = v25;
      v32 = v30;
      v27(v31, v24);
      v33 = v54 + 1;
      sqlite3_bind_int64(v28, v54 + 1, v32);
      result = (*v48)(v23, v12);
      v34 = (v33 + 1);
      if (__OFADD__(v33, 1))
      {
        goto LABEL_10;
      }

      --v22;
      v20 += v46;
      v54 = v33 + 1;
      v17 = v53 - 1;
      if (v53 == 1)
      {
        a1 = v52;
        a4 = v45;
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    v34 = 1;
LABEL_8:
    v35 = sub_752A8();
    v36 = sub_4ADC(v35);

    v37 = sub_6C4F0(a1, v34, v36);

    v38 = sub_752C8();
    v39 = sub_4B18(v38);

    v40 = sub_6C4F0(a1, v37, v39);

    v41 = sub_752B8();
    v42 = sub_6C668(a1, v40, v41);

    v43 = sub_4F80(a4);
    sub_6C4F0(a1, v42, v43);
  }

  return result;
}

BOOL sub_3A7C4(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v89 = a7;
  v90 = a4;
  v86 = a6;
  v96 = a5;
  v97 = a1;
  v93 = a2;
  v8 = sub_750F8();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_754B8();
  v91 = *(v12 - 8);
  v92 = v12;
  v13 = *(v91 + 8);
  __chkstk_darwin(v12);
  v15 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_751D8();
  v94 = *(v16 - 8);
  v95 = v16;
  v17 = *(v94 + 64);
  v18 = __chkstk_darwin(v16);
  v85 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v88 = &v77 - v20;
  v21 = sub_74CA8();
  v87 = *(v21 - 1);
  v22 = v87[8];
  v23 = __chkstk_darwin(v21);
  v25 = &v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &v77 - v26;
  v28 = sub_38F8(&qword_8F8F8, &qword_7A6E8);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v31 = &v77 - v30;
  v32 = sub_74AD8();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v35 = __chkstk_darwin(v32);
  v84 = &v77 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v38 = (&v77 - v37);

  sub_567C0(a3, v31);
  v39 = (*(v33 + 48))(v31, 1, v32);
  if (v39 != 1)
  {
    v97 = v33;
    v42 = *(v33 + 32);
    v41 = v33 + 32;
    v40 = v42;
    (v42)(v38, v31, v32);
    v43 = *v90 + 1;
    if (__OFADD__(*v90, 1))
    {
      __break(1u);
    }

    else
    {
      v44 = v32;
      v91 = v40;
      v92 = v41;
      v82 = v11;
      LODWORD(v93) = v39;
      *v90 = v43;
      v45 = sub_43B30(&qword_8F900, &type metadata accessor for FitnessPlusPropertyRecord);
      v90 = v38;
      v81 = v45;
      sub_750B8();
      v46 = v94;
      v47 = v95;
      v48 = v88;
      v80 = *(v94 + 16);
      v80(v88, v96, v95);
      sub_75198();
      v79 = *(v46 + 8);
      v79(v48, v47);
      sub_43B30(&qword_8F2A0, &type metadata accessor for CacheIndex);
      v49 = sub_75548();
      v83 = v44;
      v50 = v87[1];
      v50(v25, v21);
      v50(v27, v21);
      if (v49)
      {
        v51 = v95;
        v84 = v25;
        v52 = v96;
        v78 = v27;
        v53 = v80;
        (v80)(v48);
        sub_751B8();
        v87 = v21;
        v54 = v79;
        v79(v48, v51);
        v55 = v85;
        v53(v85, v52, v51);
        v56 = v84;
        sub_75198();
        v54(v55, v51);
        v57 = v89;
        v58 = *v89;

        v59 = v78;
        sub_31278(v78, v56, v58, &unk_88198, &unk_881C0, sub_438AC, &unk_881D8);

        v60 = v87;
        v50(v56, v87);
        v50(v59, v60);
        v61 = v90;
        v62 = v83;
        sub_750C8();
        sub_750B8();
        sub_74A88();
        sub_43B30(&qword_8F8E0, &type metadata accessor for FitnessPlusProperties);
        sub_74E88();
        sub_751A8();
        (*(v94 + 40))(v96, v48, v51);
        sub_38F8(&qword_8F908, &qword_7A6F0);
        v63 = *(v97 + 72);
        v64 = (*(v97 + 80) + 32) & ~*(v97 + 80);
        v65 = swift_allocObject();
        *(v65 + 16) = xmmword_79BF0;
        v91(v65 + v64, v61, v62);
        v66 = *v57;
        *v57 = v65;

        v39 = v93;
        return v39 != 1;
      }

      v41 = v97;
      v32 = v83;
      v25 = v84;
      v11 = v90;
      (*(v97 + 16))(v84, v90, v83);
      v21 = v89;
      v27 = *v89;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v21 = v27;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_10;
      }
    }

    v27 = sub_6777C(0, *(v27 + 2) + 1, 1, v27);
    *v21 = v27;
LABEL_10:
    v39 = v93;
    v74 = *(v27 + 2);
    v73 = *(v27 + 3);
    if (v74 >= v73 >> 1)
    {
      *v21 = sub_6777C(v73 > 1, v74 + 1, 1, v27);
    }

    (*(v41 + 8))(v11, v32);
    v75 = *v21;
    *(v75 + 16) = v74 + 1;
    v91(v75 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v74, v25, v32);
    return v39 != 1;
  }

  sub_3D48(v31, &qword_8F8F8, &qword_7A6E8);
  sub_75378();
  v67 = sub_754A8();
  v68 = sub_75738();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    *v69 = 0;
    _os_log_impl(&dword_0, v67, v68, "Failed to create row", v69, 2u);
  }

  (*(v91 + 1))(v15, v92);
  v70 = v93;
  if (v93)
  {
    sub_431DC();
    swift_allocError();
    *v71 = 2;
    *v70 = sub_74888();
  }

  return v39 != 1;
}

BOOL sub_3B0CC(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v89 = a7;
  v90 = a4;
  v86 = a6;
  v96 = a5;
  v97 = a1;
  v93 = a2;
  v8 = sub_750F8();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_754B8();
  v91 = *(v12 - 8);
  v92 = v12;
  v13 = *(v91 + 8);
  __chkstk_darwin(v12);
  v15 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_751D8();
  v94 = *(v16 - 8);
  v95 = v16;
  v17 = *(v94 + 64);
  v18 = __chkstk_darwin(v16);
  v85 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v88 = &v77 - v20;
  v21 = sub_74CA8();
  v87 = *(v21 - 1);
  v22 = v87[8];
  v23 = __chkstk_darwin(v21);
  v25 = &v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &v77 - v26;
  v28 = sub_38F8(&qword_8F8B8, &qword_7A6C0);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v31 = &v77 - v30;
  v32 = sub_75048();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v35 = __chkstk_darwin(v32);
  v84 = &v77 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v38 = (&v77 - v37);

  sub_6BCAC(a3, v31);
  v39 = (*(v33 + 48))(v31, 1, v32);
  if (v39 != 1)
  {
    v97 = v33;
    v42 = *(v33 + 32);
    v41 = v33 + 32;
    v40 = v42;
    (v42)(v38, v31, v32);
    v43 = *v90 + 1;
    if (__OFADD__(*v90, 1))
    {
      __break(1u);
    }

    else
    {
      v44 = v32;
      v91 = v40;
      v92 = v41;
      v82 = v11;
      LODWORD(v93) = v39;
      *v90 = v43;
      v45 = sub_43B30(&qword_8F8C0, &type metadata accessor for WorkoutPropertyRecord);
      v90 = v38;
      v81 = v45;
      sub_750B8();
      v46 = v94;
      v47 = v95;
      v48 = v88;
      v80 = *(v94 + 16);
      v80(v88, v96, v95);
      sub_75198();
      v79 = *(v46 + 8);
      v79(v48, v47);
      sub_43B30(&qword_8F2A0, &type metadata accessor for CacheIndex);
      v49 = sub_75548();
      v83 = v44;
      v50 = v87[1];
      v50(v25, v21);
      v50(v27, v21);
      if (v49)
      {
        v51 = v95;
        v84 = v25;
        v52 = v96;
        v78 = v27;
        v53 = v80;
        (v80)(v48);
        sub_751B8();
        v87 = v21;
        v54 = v79;
        v79(v48, v51);
        v55 = v85;
        v53(v85, v52, v51);
        v56 = v84;
        sub_75198();
        v54(v55, v51);
        v57 = v89;
        v58 = *v89;

        v59 = v78;
        sub_31278(v78, v56, v58, &unk_87FB8, &unk_87FE0, sub_434D0, &unk_87FF8);

        v60 = v87;
        v50(v56, v87);
        v50(v59, v60);
        v61 = v90;
        v62 = v83;
        sub_750C8();
        sub_750B8();
        sub_74E18();
        sub_43B30(&qword_8F878, &type metadata accessor for WorkoutProperties);
        sub_74E88();
        sub_751A8();
        (*(v94 + 40))(v96, v48, v51);
        sub_38F8(&qword_8F8C8, &qword_7A6C8);
        v63 = *(v97 + 72);
        v64 = (*(v97 + 80) + 32) & ~*(v97 + 80);
        v65 = swift_allocObject();
        *(v65 + 16) = xmmword_79BF0;
        v91(v65 + v64, v61, v62);
        v66 = *v57;
        *v57 = v65;

        v39 = v93;
        return v39 != 1;
      }

      v41 = v97;
      v32 = v83;
      v25 = v84;
      v11 = v90;
      (*(v97 + 16))(v84, v90, v83);
      v21 = v89;
      v27 = *v89;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v21 = v27;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_10;
      }
    }

    v27 = sub_677CC(0, *(v27 + 2) + 1, 1, v27);
    *v21 = v27;
LABEL_10:
    v39 = v93;
    v74 = *(v27 + 2);
    v73 = *(v27 + 3);
    if (v74 >= v73 >> 1)
    {
      *v21 = sub_677CC(v73 > 1, v74 + 1, 1, v27);
    }

    (*(v41 + 8))(v11, v32);
    v75 = *v21;
    *(v75 + 16) = v74 + 1;
    v91(v75 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v74, v25, v32);
    return v39 != 1;
  }

  sub_3D48(v31, &qword_8F8B8, &qword_7A6C0);
  sub_75378();
  v67 = sub_754A8();
  v68 = sub_75738();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    *v69 = 0;
    _os_log_impl(&dword_0, v67, v68, "Failed to create row", v69, 2u);
  }

  (*(v91 + 1))(v15, v92);
  v70 = v93;
  if (v93)
  {
    sub_431DC();
    swift_allocError();
    *v71 = 2;
    *v70 = sub_74888();
  }

  return v39 != 1;
}

BOOL sub_3B9D4(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v89 = a7;
  v90 = a4;
  v86 = a6;
  v96 = a5;
  v97 = a1;
  v93 = a2;
  v8 = sub_750F8();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_754B8();
  v91 = *(v12 - 8);
  v92 = v12;
  v13 = *(v91 + 8);
  __chkstk_darwin(v12);
  v15 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_751D8();
  v94 = *(v16 - 8);
  v95 = v16;
  v17 = *(v94 + 64);
  v18 = __chkstk_darwin(v16);
  v85 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v88 = &v77 - v20;
  v21 = sub_74CA8();
  v87 = *(v21 - 1);
  v22 = v87[8];
  v23 = __chkstk_darwin(v21);
  v25 = &v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &v77 - v26;
  v28 = sub_38F8(&qword_8F860, &qword_7A680);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v31 = &v77 - v30;
  v32 = sub_74EE8();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v35 = __chkstk_darwin(v32);
  v84 = &v77 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v38 = (&v77 - v37);

  sub_13B34(a3, v31);
  v39 = (*(v33 + 48))(v31, 1, v32);
  if (v39 != 1)
  {
    v97 = v33;
    v42 = *(v33 + 32);
    v41 = v33 + 32;
    v40 = v42;
    (v42)(v38, v31, v32);
    v43 = *v90 + 1;
    if (__OFADD__(*v90, 1))
    {
      __break(1u);
    }

    else
    {
      v44 = v32;
      v91 = v40;
      v92 = v41;
      v82 = v11;
      LODWORD(v93) = v39;
      *v90 = v43;
      v45 = sub_43B30(&qword_8F2A8, &type metadata accessor for RingsPropertyRecord);
      v90 = v38;
      v81 = v45;
      sub_750B8();
      v46 = v94;
      v47 = v95;
      v48 = v88;
      v80 = *(v94 + 16);
      v80(v88, v96, v95);
      sub_75198();
      v79 = *(v46 + 8);
      v79(v48, v47);
      sub_43B30(&qword_8F2A0, &type metadata accessor for CacheIndex);
      v49 = sub_75548();
      v83 = v44;
      v50 = v87[1];
      v50(v25, v21);
      v50(v27, v21);
      if (v49)
      {
        v51 = v95;
        v84 = v25;
        v52 = v96;
        v78 = v27;
        v53 = v80;
        (v80)(v48);
        sub_751B8();
        v87 = v21;
        v54 = v79;
        v79(v48, v51);
        v55 = v85;
        v53(v85, v52, v51);
        v56 = v84;
        sub_75198();
        v54(v55, v51);
        v57 = v89;
        v58 = *v89;

        v59 = v78;
        sub_31278(v78, v56, v58, &unk_87DD8, &unk_87E00, sub_432C0, &unk_87E18);

        v60 = v87;
        v50(v56, v87);
        v50(v59, v60);
        v61 = v90;
        v62 = v83;
        sub_750C8();
        sub_750B8();
        sub_74D98();
        sub_43B30(&qword_8F5E0, &type metadata accessor for RingsProperties);
        sub_74E88();
        sub_751A8();
        (*(v94 + 40))(v96, v48, v51);
        sub_38F8(&qword_8F868, &qword_7A688);
        v63 = *(v97 + 72);
        v64 = (*(v97 + 80) + 32) & ~*(v97 + 80);
        v65 = swift_allocObject();
        *(v65 + 16) = xmmword_79BF0;
        v91(v65 + v64, v61, v62);
        v66 = *v57;
        *v57 = v65;

        v39 = v93;
        return v39 != 1;
      }

      v41 = v97;
      v32 = v83;
      v25 = v84;
      v11 = v90;
      (*(v97 + 16))(v84, v90, v83);
      v21 = v89;
      v27 = *v89;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v21 = v27;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_10;
      }
    }

    v27 = sub_6781C(0, *(v27 + 2) + 1, 1, v27);
    *v21 = v27;
LABEL_10:
    v39 = v93;
    v74 = *(v27 + 2);
    v73 = *(v27 + 3);
    if (v74 >= v73 >> 1)
    {
      *v21 = sub_6781C(v73 > 1, v74 + 1, 1, v27);
    }

    (*(v41 + 8))(v11, v32);
    v75 = *v21;
    *(v75 + 16) = v74 + 1;
    v91(v75 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v74, v25, v32);
    return v39 != 1;
  }

  sub_3D48(v31, &qword_8F860, &qword_7A680);
  sub_75378();
  v67 = sub_754A8();
  v68 = sub_75738();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    *v69 = 0;
    _os_log_impl(&dword_0, v67, v68, "Failed to create row", v69, 2u);
  }

  (*(v91 + 1))(v15, v92);
  v70 = v93;
  if (v93)
  {
    sub_431DC();
    swift_allocError();
    *v71 = 2;
    *v70 = sub_74888();
  }

  return v39 != 1;
}

void *sub_3C2DC(void *a1, void *a2)
{
  v131 = a1;
  v132 = a2;
  v150 = type metadata accessor for DatabaseChecksum();
  v118 = *(v150 - 8);
  v2 = *(v118 + 64);
  __chkstk_darwin(v150);
  v149 = &v115 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_750F8();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v143 = &v115 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_751D8();
  v144 = *(v142 - 8);
  v7 = *(v144 + 64);
  __chkstk_darwin(v142);
  v116 = &v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_38F8(&qword_8F7C8, &qword_7A618);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v115 - v11;
  v129 = sub_74E58();
  v121 = *(v129 - 8);
  v13 = *(v121 + 64);
  v14 = __chkstk_darwin(v129);
  v125 = &v115 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v120 = &v115 - v16;
  v141 = sub_38F8(&qword_8F000, &qword_7A5D0);
  v127 = *(v141 - 8);
  v17 = *(v127 + 64);
  v18 = __chkstk_darwin(v141);
  v140 = &v115 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v128 = (&v115 - v20);
  v146 = sub_74E18();
  v124 = *(v146 - 8);
  v21 = *(v124 + 64);
  __chkstk_darwin(v146);
  v123 = &v115 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_38F8(&qword_8F7D0, &qword_7AD50);
  v151 = *(v148 - 8);
  v23 = v151[8];
  v24 = __chkstk_darwin(v148);
  v26 = &v115 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v130 = &v115 - v27;
  v119 = sub_75358();
  v117 = *(v119 - 8);
  v28 = *(v117 + 64);
  __chkstk_darwin(v119);
  v122 = (&v115 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = sub_74968();
  v134 = *(v30 - 8);
  v135 = v30;
  v31 = *(v134 + 64);
  __chkstk_darwin(v30);
  v33 = &v115 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_74CA8();
  v137 = *(v34 - 8);
  v35 = *(v137 + 64);
  v36 = __chkstk_darwin(v34);
  v139 = &v115 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v36);
  v138 = &v115 - v39;
  v40 = __chkstk_darwin(v38);
  v42 = &v115 - v41;
  __chkstk_darwin(v40);
  v145 = &v115 - v43;
  v133 = sub_754B8();
  v44 = *(v133 - 1);
  v45 = *(v44 + 64);
  __chkstk_darwin(v133);
  v47 = &v115 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75388();
  v48 = sub_754A8();
  v49 = sub_75738();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v147 = v34;
    v51 = v50;
    v52 = swift_slowAlloc();
    v126 = v12;
    v53 = v52;
    v152 = v52;
    *v51 = 136315138;
    *(v51 + 4) = sub_31B4(0xD00000000000001BLL, 0x80000000000778B0, &v152);
    _os_log_impl(&dword_0, v48, v49, "[%s] Querying checksums", v51, 0xCu);
    sub_3940(v53);
    v12 = v126;

    v34 = v147;
  }

  (*(v44 + 8))(v47, v133);
  sub_74958();
  sub_74908();
  (*(v134 + 8))(v33, v135);
  v54 = v145;
  v55 = v136;
  sub_74C68();
  v56 = v55;
  if (v55)
  {
    v57 = (v137 + 8);
    (*(v137 + 8))(v42, v34);
    return v57;
  }

  v58 = v137 + 8;
  v59 = *(v137 + 8);
  v59(v42, v34);
  v60 = sub_1AD00(v54, v131, v132);
  v133 = v59;
  v134 = v58;
  v61 = v60[2];
  v126 = v12;
  v147 = v34;
  if (v61)
  {
    v136 = 0;
    v152 = _swiftEmptyArrayStorage;
    v62 = v60;
    sub_67E84(0, v61, 0);
    v63 = v152;
    v64 = *(v118 + 80);
    v135 = v62;
    v65 = v62 + ((v64 + 32) & ~v64);
    v66 = *(v118 + 72);
    do
    {
      v67 = v149;
      sub_430D8(v65, v149);
      v68 = *(v148 + 48);
      sub_FCE0(v67, v26, &qword_8F000, &qword_7A5D0);
      v69 = *(v67 + *(v150 + 20));
      sub_4313C(v67);
      *&v26[v68] = v69;
      v152 = v63;
      v71 = v63[2];
      v70 = v63[3];
      if (v71 >= v70 >> 1)
      {
        sub_67E84(v70 > 1, v71 + 1, 1);
        v63 = v152;
      }

      v63[2] = v71 + 1;
      sub_1B748(v26, v63 + ((*(v151 + 80) + 32) & ~*(v151 + 80)) + v151[9] * v71, &qword_8F7D0, &qword_7AD50);
      v65 += v66;
      --v61;
    }

    while (v61);

    v12 = v126;
    v34 = v147;
    v56 = v136;
  }

  else
  {

    v63 = _swiftEmptyArrayStorage;
  }

  v72 = v128;
  if (v63[2])
  {
    sub_38F8(&qword_8F7D8, &qword_7A620);
    v73 = sub_75A08();
  }

  else
  {
    v73 = &_swiftEmptyDictionarySingleton;
  }

  v74 = v122;
  v152 = v73;

  sub_40C40(v75, 1, &v152);
  if (v56)
  {
    while (1)
    {
LABEL_56:
      swift_unexpectedError();
      __break(1u);
    }
  }

  v76 = v152;
  v77 = sub_74C48();
  v135 = v76;
  v136 = 0;
  v79 = *(v77 + 16);
  v80 = _swiftEmptyArrayStorage;
  v118 = v77;
  if (v79)
  {
    v152 = _swiftEmptyArrayStorage;
    v81 = v77;
    sub_67E40(0, v79, 0);
    v80 = v152;
    v82 = v81 + ((*(v127 + 80) + 32) & ~*(v127 + 80));
    v83 = *(v127 + 72);
    v148 = v137 + 16;
    v149 = v83;
    v137 = v144 + 32;
    v84 = v116;
    v85 = v148;
    do
    {
      v150 = v80;
      v86 = v140;
      sub_FCE0(v82, v140, &qword_8F000, &qword_7A5D0);
      v87 = *v85;
      v88 = v147;
      (*v85)(v138, v86, v147);
      v87(v139, v86 + *(v141 + 36), v88);
      sub_43B30(&qword_8F878, &type metadata accessor for WorkoutProperties);
      sub_74E88();
      v80 = v150;
      sub_751A8();
      sub_3D48(v86, &qword_8F000, &qword_7A5D0);
      v152 = v80;
      v90 = *(v80 + 2);
      v89 = *(v80 + 3);
      if (v90 >= v89 >> 1)
      {
        sub_67E40(v89 > 1, v90 + 1, 1);
        v84 = v116;
        v80 = v152;
      }

      *(v80 + 2) = v90 + 1;
      (*(v144 + 32))(&v80[((*(v144 + 80) + 32) & ~*(v144 + 80)) + *(v144 + 72) * v90], v84, v142);
      v82 += v149;
      --v79;
    }

    while (v79);
    v12 = v126;
    v72 = v128;
    v34 = v147;
    v74 = v122;
  }

  sub_43B30(&qword_8F880, &type metadata accessor for WorkoutPropertyDimensionsFilters);
  sub_751E8();
  sub_38F8(&qword_8F888, &qword_7A698);
  v91 = sub_74F28();
  v92 = *(v91 - 1);
  v93 = v92[9];
  v94 = (*(v92 + 80) + 32) & ~*(v92 + 80);
  v57 = swift_allocObject();
  *(v57 + 1) = xmmword_79BF0;
  if (qword_8E9F0 != -1)
  {
    goto LABEL_54;
  }

  while (1)
  {
    v95 = sub_19C20(v91, qword_90010);
    (v92[2])(v57 + v94, v95, v91);
    v96 = v136;
    v97 = sub_3444C(v80, v74, v57, _swiftEmptyArrayStorage, 0, v131, v132);
    v94 = v74;
    v92 = v96;
    if (v96)
    {

      (*(v117 + 8))(v74, v119);
      v133(v145, v34);
      return v57;
    }

    v98 = v97;
    (*(v117 + 8))(v94, v119);

    v99 = *(v98 + 2);
    if (v99)
    {
      v152 = _swiftEmptyArrayStorage;
      v149 = v99;
      sub_67E84(0, v99, 0);
      v12 = 0;
      v100 = *(v124 + 80);
      v57 = v152;
      v150 = v98;
      v80 = &v98[(v100 + 32) & ~v100];
      v74 = (v124 + 16);
      v72 = (v124 + 8);
      v91 = 0;
      while (v12 < *(v150 + 16))
      {
        v101 = v123;
        v102 = v146;
        (*(v124 + 16))(v123, &v80[*(v124 + 72) * v12], v146);
        sub_3F3B0(v101, v130);
        v103 = v101;
        v92 = v34;
        (*v72)(v103, v102);
        v152 = v57;
        v105 = v57[2];
        v104 = v57[3];
        if (v105 >= v104 >> 1)
        {
          sub_67E84(v104 > 1, v105 + 1, 1);
          v91 = 0;
          v57 = v152;
        }

        ++v12;
        v57[2] = v105 + 1;
        sub_1B748(v130, v57 + ((*(v151 + 80) + 32) & ~*(v151 + 80)) + v151[9] * v105, &qword_8F7D0, &qword_7AD50);
        v94 = v129;
        if (v149 == v12)
        {

          v12 = v126;
          v72 = v128;
          goto LABEL_35;
        }
      }

      goto LABEL_53;
    }

    v57 = _swiftEmptyArrayStorage;
    v94 = v129;
LABEL_35:
    if (v57[2])
    {
      sub_38F8(&qword_8F7D8, &qword_7A620);
      v106 = sub_75A08();
    }

    else
    {
      v106 = &_swiftEmptyDictionarySingleton;
    }

    v152 = v106;

    sub_40C40(v107, 1, &v152);

    v151 = v152;
    v152 = v118;

    sub_41184(&v152);
    v136 = 0;

    v108 = v152;
    v150 = v152[2];
    if (!v150)
    {
      break;
    }

    v34 = 0;
    v148 = v121 + 32;
    v149 = v121 + 48;
    v57 = _swiftEmptyArrayStorage;
    v92 = &qword_8F000;
    v91 = &qword_7A5D0;
    v74 = &qword_8F878;
    while (v34 < *(v108 + 2))
    {
      v80 = v108;
      sub_FCE0(&v108[((*(v127 + 80) + 32) & ~*(v127 + 80)) + *(v127 + 72) * v34], v72, &qword_8F000, &qword_7A5D0);
      v109 = v136;
      sub_3FBE4(v72, v135, v151, &type metadata accessor for WorkoutProperties, &qword_8F878, &type metadata accessor for WorkoutProperties, &protocol conformance descriptor for WorkoutProperties, v12);
      v136 = v109;
      if (v109)
      {

        sub_3D48(v72, &qword_8F000, &qword_7A5D0);

        __break(1u);
        goto LABEL_56;
      }

      sub_3D48(v72, &qword_8F000, &qword_7A5D0);
      if ((*v149)(v12, 1, v94) == 1)
      {
        sub_3D48(v12, &qword_8F7C8, &qword_7A618);
      }

      else
      {
        v110 = *v148;
        v111 = v120;
        (*v148)(v120, v12, v94);
        v110(v125, v111, v94);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v57 = sub_6761C(0, v57[2] + 1, 1, v57);
        }

        v113 = v57[2];
        v112 = v57[3];
        if (v113 >= v112 >> 1)
        {
          v57 = sub_6761C(v112 > 1, v113 + 1, 1, v57);
        }

        v57[2] = v113 + 1;
        v114 = v57 + ((*(v121 + 80) + 32) & ~*(v121 + 80)) + *(v121 + 72) * v113;
        v94 = v129;
        v110(v114, v125, v129);
        v72 = v128;
        v74 = &qword_8F878;
      }

      ++v34;
      v108 = v80;
      v92 = &qword_8F000;
      if (v150 == v34)
      {
        goto LABEL_51;
      }
    }

    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    swift_once();
  }

  v57 = _swiftEmptyArrayStorage;
LABEL_51:

  v133(v145, v147);
  return v57;
}

void *sub_3D72C(void *a1, void *a2)
{
  v131 = a1;
  v132 = a2;
  v150 = type metadata accessor for DatabaseChecksum();
  v118 = *(v150 - 8);
  v2 = *(v118 + 64);
  __chkstk_darwin(v150);
  v149 = &v115 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_750F8();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v143 = &v115 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_751D8();
  v144 = *(v142 - 8);
  v7 = *(v144 + 64);
  __chkstk_darwin(v142);
  v116 = &v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_38F8(&qword_8F7C8, &qword_7A618);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v115 - v11;
  v129 = sub_74E58();
  v121 = *(v129 - 8);
  v13 = *(v121 + 64);
  v14 = __chkstk_darwin(v129);
  v125 = &v115 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v120 = &v115 - v16;
  v141 = sub_38F8(&qword_8F000, &qword_7A5D0);
  v127 = *(v141 - 8);
  v17 = *(v127 + 64);
  v18 = __chkstk_darwin(v141);
  v140 = &v115 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v128 = (&v115 - v20);
  v146 = sub_74D98();
  v124 = *(v146 - 8);
  v21 = *(v124 + 64);
  __chkstk_darwin(v146);
  v123 = &v115 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_38F8(&qword_8F7D0, &qword_7AD50);
  v151 = *(v148 - 8);
  v23 = v151[8];
  v24 = __chkstk_darwin(v148);
  v26 = &v115 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v130 = &v115 - v27;
  v119 = sub_752D8();
  v117 = *(v119 - 8);
  v28 = *(v117 + 64);
  __chkstk_darwin(v119);
  v122 = (&v115 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = sub_74968();
  v134 = *(v30 - 8);
  v135 = v30;
  v31 = *(v134 + 64);
  __chkstk_darwin(v30);
  v33 = &v115 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_74CA8();
  v137 = *(v34 - 8);
  v35 = *(v137 + 64);
  v36 = __chkstk_darwin(v34);
  v139 = &v115 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v36);
  v138 = &v115 - v39;
  v40 = __chkstk_darwin(v38);
  v42 = &v115 - v41;
  __chkstk_darwin(v40);
  v145 = &v115 - v43;
  v133 = sub_754B8();
  v44 = *(v133 - 1);
  v45 = *(v44 + 64);
  __chkstk_darwin(v133);
  v47 = &v115 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75388();
  v48 = sub_754A8();
  v49 = sub_75738();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v147 = v34;
    v51 = v50;
    v52 = swift_slowAlloc();
    v126 = v12;
    v53 = v52;
    v152 = v52;
    *v51 = 136315138;
    *(v51 + 4) = sub_31B4(0xD000000000000019, 0x8000000000077890, &v152);
    _os_log_impl(&dword_0, v48, v49, "[%s] Querying checksums", v51, 0xCu);
    sub_3940(v53);
    v12 = v126;

    v34 = v147;
  }

  (*(v44 + 8))(v47, v133);
  sub_74958();
  sub_74908();
  (*(v134 + 8))(v33, v135);
  v54 = v145;
  v55 = v136;
  sub_74C68();
  v56 = v55;
  if (v55)
  {
    v57 = (v137 + 8);
    (*(v137 + 8))(v42, v34);
    return v57;
  }

  v58 = v137 + 8;
  v59 = *(v137 + 8);
  v59(v42, v34);
  v60 = sub_6D6E0(v54, v131, v132);
  v133 = v59;
  v134 = v58;
  v61 = v60[2];
  v126 = v12;
  v147 = v34;
  if (v61)
  {
    v136 = 0;
    v152 = _swiftEmptyArrayStorage;
    v62 = v60;
    sub_67E84(0, v61, 0);
    v63 = v152;
    v64 = *(v118 + 80);
    v135 = v62;
    v65 = v62 + ((v64 + 32) & ~v64);
    v66 = *(v118 + 72);
    do
    {
      v67 = v149;
      sub_430D8(v65, v149);
      v68 = *(v148 + 48);
      sub_FCE0(v67, v26, &qword_8F000, &qword_7A5D0);
      v69 = *(v67 + *(v150 + 20));
      sub_4313C(v67);
      *&v26[v68] = v69;
      v152 = v63;
      v71 = v63[2];
      v70 = v63[3];
      if (v71 >= v70 >> 1)
      {
        sub_67E84(v70 > 1, v71 + 1, 1);
        v63 = v152;
      }

      v63[2] = v71 + 1;
      sub_1B748(v26, v63 + ((*(v151 + 80) + 32) & ~*(v151 + 80)) + v151[9] * v71, &qword_8F7D0, &qword_7AD50);
      v65 += v66;
      --v61;
    }

    while (v61);

    v12 = v126;
    v34 = v147;
    v56 = v136;
  }

  else
  {

    v63 = _swiftEmptyArrayStorage;
  }

  v72 = v128;
  if (v63[2])
  {
    sub_38F8(&qword_8F7D8, &qword_7A620);
    v73 = sub_75A08();
  }

  else
  {
    v73 = &_swiftEmptyDictionarySingleton;
  }

  v74 = v122;
  v152 = v73;

  sub_40C40(v75, 1, &v152);
  if (v56)
  {
    while (1)
    {
LABEL_56:
      swift_unexpectedError();
      __break(1u);
    }
  }

  v76 = v152;
  v77 = sub_74C48();
  v135 = v76;
  v136 = 0;
  v79 = *(v77 + 16);
  v80 = _swiftEmptyArrayStorage;
  v118 = v77;
  if (v79)
  {
    v152 = _swiftEmptyArrayStorage;
    v81 = v77;
    sub_67E40(0, v79, 0);
    v80 = v152;
    v82 = v81 + ((*(v127 + 80) + 32) & ~*(v127 + 80));
    v83 = *(v127 + 72);
    v148 = v137 + 16;
    v149 = v83;
    v137 = v144 + 32;
    v84 = v116;
    v85 = v148;
    do
    {
      v150 = v80;
      v86 = v140;
      sub_FCE0(v82, v140, &qword_8F000, &qword_7A5D0);
      v87 = *v85;
      v88 = v147;
      (*v85)(v138, v86, v147);
      v87(v139, v86 + *(v141 + 36), v88);
      sub_43B30(&qword_8F5E0, &type metadata accessor for RingsProperties);
      sub_74E88();
      v80 = v150;
      sub_751A8();
      sub_3D48(v86, &qword_8F000, &qword_7A5D0);
      v152 = v80;
      v90 = *(v80 + 2);
      v89 = *(v80 + 3);
      if (v90 >= v89 >> 1)
      {
        sub_67E40(v89 > 1, v90 + 1, 1);
        v84 = v116;
        v80 = v152;
      }

      *(v80 + 2) = v90 + 1;
      (*(v144 + 32))(&v80[((*(v144 + 80) + 32) & ~*(v144 + 80)) + *(v144 + 72) * v90], v84, v142);
      v82 += v149;
      --v79;
    }

    while (v79);
    v12 = v126;
    v72 = v128;
    v34 = v147;
    v74 = v122;
  }

  sub_43B30(&qword_8F7E0, &type metadata accessor for RingsPropertyDimensionsFilters);
  sub_751E8();
  sub_38F8(&qword_8F7E8, &qword_7A628);
  v91 = sub_74DD8();
  v92 = *(v91 - 1);
  v93 = v92[9];
  v94 = (*(v92 + 80) + 32) & ~*(v92 + 80);
  v57 = swift_allocObject();
  *(v57 + 1) = xmmword_79BF0;
  if (qword_8EA10 != -1)
  {
    goto LABEL_54;
  }

  while (1)
  {
    v95 = sub_19C20(v91, qword_90060);
    (v92[2])(v57 + v94, v95, v91);
    v96 = v136;
    v97 = sub_32FE4(v80, v74, v57, _swiftEmptyArrayStorage, 0, v131, v132);
    v94 = v74;
    v92 = v96;
    if (v96)
    {

      (*(v117 + 8))(v74, v119);
      v133(v145, v34);
      return v57;
    }

    v98 = v97;
    (*(v117 + 8))(v94, v119);

    v99 = *(v98 + 2);
    if (v99)
    {
      v152 = _swiftEmptyArrayStorage;
      v149 = v99;
      sub_67E84(0, v99, 0);
      v12 = 0;
      v100 = *(v124 + 80);
      v57 = v152;
      v150 = v98;
      v80 = &v98[(v100 + 32) & ~v100];
      v74 = (v124 + 16);
      v72 = (v124 + 8);
      v91 = 0;
      while (v12 < *(v150 + 16))
      {
        v101 = v123;
        v102 = v146;
        (*(v124 + 16))(v123, &v80[*(v124 + 72) * v12], v146);
        sub_3EB7C(v101, v130);
        v103 = v101;
        v92 = v34;
        (*v72)(v103, v102);
        v152 = v57;
        v105 = v57[2];
        v104 = v57[3];
        if (v105 >= v104 >> 1)
        {
          sub_67E84(v104 > 1, v105 + 1, 1);
          v91 = 0;
          v57 = v152;
        }

        ++v12;
        v57[2] = v105 + 1;
        sub_1B748(v130, v57 + ((*(v151 + 80) + 32) & ~*(v151 + 80)) + v151[9] * v105, &qword_8F7D0, &qword_7AD50);
        v94 = v129;
        if (v149 == v12)
        {

          v12 = v126;
          v72 = v128;
          goto LABEL_35;
        }
      }

      goto LABEL_53;
    }

    v57 = _swiftEmptyArrayStorage;
    v94 = v129;
LABEL_35:
    if (v57[2])
    {
      sub_38F8(&qword_8F7D8, &qword_7A620);
      v106 = sub_75A08();
    }

    else
    {
      v106 = &_swiftEmptyDictionarySingleton;
    }

    v152 = v106;

    sub_40C40(v107, 1, &v152);

    v151 = v152;
    v152 = v118;

    sub_41184(&v152);
    v136 = 0;

    v108 = v152;
    v150 = v152[2];
    if (!v150)
    {
      break;
    }

    v34 = 0;
    v148 = v121 + 32;
    v149 = v121 + 48;
    v57 = _swiftEmptyArrayStorage;
    v92 = &qword_8F000;
    v91 = &qword_7A5D0;
    v74 = &qword_8F5E0;
    while (v34 < *(v108 + 2))
    {
      v80 = v108;
      sub_FCE0(&v108[((*(v127 + 80) + 32) & ~*(v127 + 80)) + *(v127 + 72) * v34], v72, &qword_8F000, &qword_7A5D0);
      v109 = v136;
      sub_3FBE4(v72, v135, v151, &type metadata accessor for RingsProperties, &qword_8F5E0, &type metadata accessor for RingsProperties, &protocol conformance descriptor for RingsProperties, v12);
      v136 = v109;
      if (v109)
      {

        sub_3D48(v72, &qword_8F000, &qword_7A5D0);

        __break(1u);
        goto LABEL_56;
      }

      sub_3D48(v72, &qword_8F000, &qword_7A5D0);
      if ((*v149)(v12, 1, v94) == 1)
      {
        sub_3D48(v12, &qword_8F7C8, &qword_7A618);
      }

      else
      {
        v110 = *v148;
        v111 = v120;
        (*v148)(v120, v12, v94);
        v110(v125, v111, v94);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v57 = sub_6761C(0, v57[2] + 1, 1, v57);
        }

        v113 = v57[2];
        v112 = v57[3];
        if (v113 >= v112 >> 1)
        {
          v57 = sub_6761C(v112 > 1, v113 + 1, 1, v57);
        }

        v57[2] = v113 + 1;
        v114 = v57 + ((*(v121 + 80) + 32) & ~*(v121 + 80)) + *(v121 + 72) * v113;
        v94 = v129;
        v110(v114, v125, v129);
        v72 = v128;
        v74 = &qword_8F5E0;
      }

      ++v34;
      v108 = v80;
      v92 = &qword_8F000;
      if (v150 == v34)
      {
        goto LABEL_51;
      }
    }

    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    swift_once();
  }

  v57 = _swiftEmptyArrayStorage;
LABEL_51:

  v133(v145, v147);
  return v57;
}

uint64_t sub_3EB7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = sub_38F8(&qword_8F808, &qword_7A638);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v61 = &v50 - v5;
  v6 = sub_38F8(&qword_8F810, &qword_7A640);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v51 = &v50 - v8;
  v9 = sub_74E38();
  v52 = *(v9 - 8);
  v53 = v9;
  v10 = *(v52 + 64);
  __chkstk_darwin(v9);
  v50 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_38F8(&qword_8F288, &qword_7A128);
  v12 = *(*(v60 - 8) + 64);
  v13 = __chkstk_darwin(v60);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v50 - v16;
  v18 = sub_74CA8();
  v19 = *(v18 - 8);
  v20 = v19[8];
  v21 = __chkstk_darwin(v18);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v50 - v24;
  v55 = sub_38F8(&qword_8F000, &qword_7A5D0);
  v26 = *(*(v55 - 8) + 64);
  __chkstk_darwin(v55);
  v57 = &v50 - v27;
  v28 = sub_74D98();
  v29 = sub_43B30(&qword_8F5E0, &type metadata accessor for RingsProperties);
  sub_74E78();
  v62 = a1;
  v58 = v29;
  v59 = v28;
  sub_74E68();
  sub_43B30(&qword_8F2A0, &type metadata accessor for CacheIndex);
  v56 = v23;
  if (sub_75568())
  {
    v30 = v19[4];
    v30(v17, v25, v18);
    v31 = v60;
    v30(&v17[*(v60 + 48)], v56, v18);
    sub_FCE0(v17, v15, &qword_8F288, &qword_7A128);
    v56 = *(v31 + 48);
    v25 = v57;
    v30(v57, v15, v18);
    v32 = v19[1];
    v32(&v56[v15], v18);
    sub_1B748(v17, v15, &qword_8F288, &qword_7A128);
    v30(&v25[*(v55 + 36)], (v15 + *(v31 + 48)), v18);
    v32(v15, v18);
    if (qword_8EA10 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v33 = sub_74DD8();
  sub_19C20(v33, qword_90060);
  v34 = sub_752D8();
  v35 = v61;
  (*(*(v34 - 8) + 56))(v61, 1, 1, v34);
  v36 = v68;
  sub_74EA8();
  sub_3D48(v35, &qword_8F808, &qword_7A638);
  if (v36)
  {
    return sub_3D48(v25, &qword_8F000, &qword_7A5D0);
  }

  if (!v64)
  {
    sub_3D48(v63, &qword_8F818, &qword_7A648);
    v65 = 0u;
    v66 = 0u;
    AssociatedConformanceWitness = 0;
    goto LABEL_10;
  }

  sub_43198(v63, v64);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  *(&v66 + 1) = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_5914(&v65);
  sub_74DC8();
  sub_3940(v63);
  if (!*(&v66 + 1))
  {
LABEL_10:
    sub_3D48(&v65, &qword_8F820, &qword_7A650);
    v38 = v51;
    (*(v52 + 56))(v51, 1, 1, v53);
    goto LABEL_11;
  }

  sub_38F8(&qword_8F828, &qword_7A658);
  v38 = v51;
  v39 = v53;
  v40 = swift_dynamicCast();
  v41 = v52;
  (*(v52 + 56))(v38, v40 ^ 1u, 1, v39);
  if ((*(v41 + 48))(v38, 1, v39) != 1)
  {
    v42 = v50;
    (*(v41 + 32))(v50, v38, v39);
    v43 = *(sub_38F8(&qword_8F7D0, &qword_7AD50) + 48);
    v44 = v25;
    v45 = v41;
    v46 = v54;
    sub_FCE0(v44, v54, &qword_8F000, &qword_7A5D0);
    v47 = sub_74E28();
    (*(v45 + 8))(v42, v39);
    result = sub_3D48(v44, &qword_8F000, &qword_7A5D0);
    *(v46 + v43) = v47;
    return result;
  }

LABEL_11:
  sub_3D48(v38, &qword_8F810, &qword_7A640);
  v48 = *(sub_38F8(&qword_8F7D0, &qword_7AD50) + 48);
  v49 = v54;
  result = sub_1B748(v25, v54, &qword_8F000, &qword_7A5D0);
  *(v49 + v48) = 0;
  return result;
}

uint64_t sub_3F3B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = sub_38F8(&qword_8F890, &qword_7A6A0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v61 = &v50 - v5;
  v6 = sub_38F8(&qword_8F810, &qword_7A640);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v51 = &v50 - v8;
  v9 = sub_74E38();
  v52 = *(v9 - 8);
  v53 = v9;
  v10 = *(v52 + 64);
  __chkstk_darwin(v9);
  v50 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_38F8(&qword_8F288, &qword_7A128);
  v12 = *(*(v60 - 8) + 64);
  v13 = __chkstk_darwin(v60);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v50 - v16;
  v18 = sub_74CA8();
  v19 = *(v18 - 8);
  v20 = v19[8];
  v21 = __chkstk_darwin(v18);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v50 - v24;
  v55 = sub_38F8(&qword_8F000, &qword_7A5D0);
  v26 = *(*(v55 - 8) + 64);
  __chkstk_darwin(v55);
  v57 = &v50 - v27;
  v28 = sub_74E18();
  v29 = sub_43B30(&qword_8F878, &type metadata accessor for WorkoutProperties);
  sub_74E78();
  v62 = a1;
  v58 = v29;
  v59 = v28;
  sub_74E68();
  sub_43B30(&qword_8F2A0, &type metadata accessor for CacheIndex);
  v56 = v23;
  if (sub_75568())
  {
    v30 = v19[4];
    v30(v17, v25, v18);
    v31 = v60;
    v30(&v17[*(v60 + 48)], v56, v18);
    sub_FCE0(v17, v15, &qword_8F288, &qword_7A128);
    v56 = *(v31 + 48);
    v25 = v57;
    v30(v57, v15, v18);
    v32 = v19[1];
    v32(&v56[v15], v18);
    sub_1B748(v17, v15, &qword_8F288, &qword_7A128);
    v30(&v25[*(v55 + 36)], (v15 + *(v31 + 48)), v18);
    v32(v15, v18);
    if (qword_8E9F0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v33 = sub_74F28();
  sub_19C20(v33, qword_90010);
  v34 = sub_75358();
  v35 = v61;
  (*(*(v34 - 8) + 56))(v61, 1, 1, v34);
  v36 = v68;
  sub_74EA8();
  sub_3D48(v35, &qword_8F890, &qword_7A6A0);
  if (v36)
  {
    return sub_3D48(v25, &qword_8F000, &qword_7A5D0);
  }

  if (!v64)
  {
    sub_3D48(v63, &qword_8F818, &qword_7A648);
    v65 = 0u;
    v66 = 0u;
    AssociatedConformanceWitness = 0;
    goto LABEL_10;
  }

  sub_43198(v63, v64);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  *(&v66 + 1) = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_5914(&v65);
  sub_74DC8();
  sub_3940(v63);
  if (!*(&v66 + 1))
  {
LABEL_10:
    sub_3D48(&v65, &qword_8F820, &qword_7A650);
    v38 = v51;
    (*(v52 + 56))(v51, 1, 1, v53);
    goto LABEL_11;
  }

  sub_38F8(&qword_8F828, &qword_7A658);
  v38 = v51;
  v39 = v53;
  v40 = swift_dynamicCast();
  v41 = v52;
  (*(v52 + 56))(v38, v40 ^ 1u, 1, v39);
  if ((*(v41 + 48))(v38, 1, v39) != 1)
  {
    v42 = v50;
    (*(v41 + 32))(v50, v38, v39);
    v43 = *(sub_38F8(&qword_8F7D0, &qword_7AD50) + 48);
    v44 = v25;
    v45 = v41;
    v46 = v54;
    sub_FCE0(v44, v54, &qword_8F000, &qword_7A5D0);
    v47 = sub_74E28();
    (*(v45 + 8))(v42, v39);
    result = sub_3D48(v44, &qword_8F000, &qword_7A5D0);
    *(v46 + v43) = v47;
    return result;
  }

LABEL_11:
  sub_3D48(v38, &qword_8F810, &qword_7A640);
  v48 = *(sub_38F8(&qword_8F7D0, &qword_7AD50) + 48);
  v49 = v54;
  result = sub_1B748(v25, v54, &qword_8F000, &qword_7A5D0);
  *(v49 + v48) = 0;
  return result;
}

uint64_t sub_3FBE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(void)@<X3>, unint64_t *a5@<X4>, void (*a6)(uint64_t)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v62 = a6;
  v63 = a4;
  v65 = a5;
  v66 = a8;
  v12 = sub_750F8();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v64 = &v53[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_38F8(&qword_8F000, &qword_7A5D0);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15);
  v61 = &v53[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v20 = &v53[-v19];
  v21 = sub_754B8();
  v59 = *(v21 - 8);
  v60 = v21;
  v22 = *(v59 + 64);
  __chkstk_darwin(v21);
  v24 = &v53[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = *(a2 + 16);
  v67 = a1;
  if (v25 && (v26 = sub_42788(a1), (v27 & 1) != 0))
  {
    v28 = 0;
    v29 = *(*(a2 + 56) + 8 * v26);
  }

  else
  {
    v29 = 0;
    v28 = 1;
  }

  v30 = v67;
  if (!*(a3 + 16) || (v31 = v28, v32 = sub_42788(v67), v28 = v31, v30 = v67, (v33 & 1) == 0))
  {
    if (!v28)
    {
      LOBYTE(v31) = 0;
      v58 = 0;
      v57 = 1;
      goto LABEL_15;
    }

LABEL_13:
    v35 = sub_74E58();
    return (*(*(v35 - 8) + 56))(v66, 1, 1, v35);
  }

  v58 = *(*(a3 + 56) + 8 * v32);
  if (v58 == v29)
  {
    v34 = v31;
  }

  else
  {
    v34 = 1;
  }

  if ((v34 & 1) == 0)
  {
    goto LABEL_13;
  }

  v57 = 0;
LABEL_15:
  sub_75378();
  sub_FCE0(v30, v20, &qword_8F000, &qword_7A5D0);
  v37 = sub_754A8();
  v38 = sub_75738();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v56 = a7;
    v40 = v39;
    v55 = swift_slowAlloc();
    v70 = v55;
    *v40 = 136315650;
    v68 = 0;
    v69 = 0xE000000000000000;
    sub_74CA8();
    sub_759A8();
    v54 = v38;
    v71._countAndFlagsBits = 3026478;
    v71._object = 0xE300000000000000;
    sub_75608(v71);
    v41 = *(v15 + 36);
    sub_759A8();
    v42 = v68;
    v43 = v69;
    sub_3D48(v20, &qword_8F000, &qword_7A5D0);
    v44 = sub_31B4(v42, v43, &v70);

    *(v40 + 4) = v44;
    *(v40 + 12) = 2080;
    v68 = v29;
    LOBYTE(v69) = v31;
    sub_38F8(&qword_8F7F0, &qword_7A630);
    v45 = sub_75838();
    v47 = sub_31B4(v45, v46, &v70);

    *(v40 + 14) = v47;
    *(v40 + 22) = 2080;
    v68 = v58;
    LOBYTE(v69) = v57;
    v48 = sub_75838();
    v50 = sub_31B4(v48, v49, &v70);

    *(v40 + 24) = v50;
    _os_log_impl(&dword_0, v37, v54, "Checksum mismatch: %s db = %s ; snapshot = %s", v40, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_3D48(v20, &qword_8F000, &qword_7A5D0);
  }

  (*(v59 + 8))(v24, v60);
  sub_FCE0(v67, v61, &qword_8F000, &qword_7A5D0);
  v63(0);
  sub_43B30(v65, v62);
  sub_74E88();
  v51 = v66;
  sub_74E48();
  v52 = sub_74E58();
  return (*(*(v52 - 8) + 56))(v51, 0, 1, v52);
}

uint64_t SanityTaskServer.queryMismatchingCheckpoints(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_754C8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_754F8();
  v10 = *(v19 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v19);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *&v2[OBJC_IVAR____TtC25FitnessIntelligencePlugin16SanityTaskServer_queue];
  v14 = swift_allocObject();
  v14[2] = v2;
  v14[3] = a1;
  v14[4] = a2;
  aBlock[4] = sub_407D8;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_17314;
  aBlock[3] = &unk_87D00;
  v15 = _Block_copy(aBlock);
  v16 = v2;

  sub_754D8();
  v20 = _swiftEmptyArrayStorage;
  sub_43B30(&qword_8F3A8, &type metadata accessor for DispatchWorkItemFlags);
  sub_38F8(&qword_8F3B0, &qword_7A1D8);
  sub_7718(&qword_8F3B8, &qword_8F3B0, &qword_7A1D8);
  sub_75858();
  sub_75788();
  _Block_release(v15);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v19);
}

void sub_40460(char *a1, void (*a2)(void, void), uint64_t a3)
{
  v6 = sub_754B8();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v8 = sub_75508();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = (&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *&a1[OBJC_IVAR____TtC25FitnessIntelligencePlugin16SanityTaskServer_queue];
  *v12 = v13;
  (*(v9 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v8);
  v14 = v13;
  LOBYTE(v13) = sub_75518();
  (*(v9 + 8))(v12, v8);
  if (v13)
  {
    v15 = [objc_allocWithZone(HDMutableDatabaseTransactionContext) init];
    [v15 setRequiresWrite:0];
    [v15 setRequiresProtectedData:1];
    sub_407FC(v15, a1, a2, a3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_40798()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_407E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_407FC(void *a1, void *a2, void (*a3)(void, void), uint64_t a4)
{
  v9 = sub_74E58();
  v43 = *(v9 - 8);
  v10 = *(v43 + 64);
  __chkstk_darwin(v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a2 client];
  v14 = [v13 profile];

  v15 = sub_3C2DC(v14, a1);
  if (!v4)
  {
    v35 = v12;
    v42 = v9;
    v16 = [a2 client];
    v17 = [v16 profile];

    v18 = sub_3D72C(v17, a1);
    v44 = 0;
    v19 = v18;

    v45 = v15;
    sub_67054(v19);
    v20 = v45;
    v21 = v45[2];
    if (v21)
    {
      v45 = _swiftEmptyArrayStorage;
      sub_67DDC(0, v21, 0);
      v22 = 0;
      v23 = v45;
      v24 = v43;
      v40 = v20 + ((*(v43 + 80) + 32) & ~*(v43 + 80));
      v38 = a4;
      v39 = v43 + 16;
      v41 = (v43 + 8);
      v25 = v35;
      v36 = v21;
      v37 = a3;
      while (v22 < v20[2])
      {
        v26 = v42;
        (*(v24 + 16))(v25, &v40[*(v24 + 72) * v22], v42);
        sub_43B30(&qword_8F7C0, &type metadata accessor for SanityTaskMismatch);
        v27 = v44;
        v28 = sub_74F78();
        v44 = v27;
        if (v27)
        {
          (*v41)(v25, v26);

          goto LABEL_13;
        }

        v30 = v28;
        v31 = v29;
        (*v41)(v25, v26);
        v45 = v23;
        v33 = v23[2];
        v32 = v23[3];
        if (v33 >= v32 >> 1)
        {
          sub_67DDC((v32 > 1), v33 + 1, 1);
          v25 = v35;
          v23 = v45;
        }

        ++v22;
        v23[2] = v33 + 1;
        v34 = &v23[2 * v33];
        v34[4] = v30;
        v34[5] = v31;
        a3 = v37;
        v24 = v43;
        if (v36 == v22)
        {

          goto LABEL_12;
        }
      }

      __break(1u);
    }

    else
    {

      v23 = _swiftEmptyArrayStorage;
LABEL_12:
      a3(v23, 0);
LABEL_13:
    }
  }
}

uint64_t sub_40C08()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_40C40(uint64_t a1, char a2, void *a3)
{
  v7 = sub_38F8(&qword_8F000, &qword_7A5D0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v55 - v10;
  v12 = sub_38F8(&qword_8F7D0, &qword_7AD50);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  v17 = v55 - v16;
  v59 = *(a1 + 16);
  if (!v59)
  {
  }

  v55[1] = v7;
  v55[2] = v3;
  v18 = *(v14 + 48);
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v58 = *(v15 + 72);
  v60 = a1;
  sub_FCE0(a1 + v19, v55 - v16, &qword_8F7D0, &qword_7AD50);
  sub_1B748(v17, v11, &qword_8F000, &qword_7A5D0);
  v57 = v18;
  v20 = *&v17[v18];
  v21 = *a3;
  v22 = sub_42788(v11);
  v24 = v21[2];
  v25 = (v23 & 1) == 0;
  v26 = __OFADD__(v24, v25);
  v27 = v24 + v25;
  if (v26)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v28 = v23;
  if (v21[3] < v27)
  {
    sub_42AC4(v27, a2 & 1);
    v29 = *a3;
    v22 = sub_42788(v11);
    if ((v28 & 1) != (v30 & 1))
    {
LABEL_5:
      sub_75A98();
      __break(1u);
    }

LABEL_8:
    if (v28)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v33 = v22;
  sub_42874();
  v22 = v33;
  if (v28)
  {
LABEL_9:
    v31 = swift_allocError();
    swift_willThrow();
    v63 = v31;
    swift_errorRetain();
    sub_38F8(&qword_8F870, &qword_7A690);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_3D48(v11, &qword_8F000, &qword_7A5D0);
    }

    goto LABEL_26;
  }

LABEL_12:
  v34 = *a3;
  *(*a3 + 8 * (v22 >> 6) + 64) |= 1 << v22;
  v35 = v34[6];
  v56 = *(v8 + 72);
  v36 = v22;
  sub_1B748(v11, v35 + v56 * v22, &qword_8F000, &qword_7A5D0);
  *(v34[7] + 8 * v36) = v20;
  v37 = v34[2];
  v26 = __OFADD__(v37, 1);
  v38 = v37 + 1;
  if (!v26)
  {
    v34[2] = v38;
    if (v59 == 1)
    {
    }

    v39 = v60 + v58 + v19;
    v40 = 1;
    while (v40 < *(v60 + 16))
    {
      sub_FCE0(v39, v17, &qword_8F7D0, &qword_7AD50);
      sub_1B748(v17, v11, &qword_8F000, &qword_7A5D0);
      v41 = *&v17[v57];
      v42 = *a3;
      v43 = sub_42788(v11);
      v45 = v42[2];
      v46 = (v44 & 1) == 0;
      v26 = __OFADD__(v45, v46);
      v47 = v45 + v46;
      if (v26)
      {
        goto LABEL_23;
      }

      v48 = v44;
      if (v42[3] < v47)
      {
        sub_42AC4(v47, 1);
        v49 = *a3;
        v43 = sub_42788(v11);
        if ((v48 & 1) != (v50 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v48)
      {
        goto LABEL_9;
      }

      v51 = *a3;
      *(*a3 + 8 * (v43 >> 6) + 64) |= 1 << v43;
      v52 = v43;
      sub_1B748(v11, v51[6] + v56 * v43, &qword_8F000, &qword_7A5D0);
      *(v51[7] + 8 * v52) = v41;
      v53 = v51[2];
      v26 = __OFADD__(v53, 1);
      v54 = v53 + 1;
      if (v26)
      {
        goto LABEL_24;
      }

      ++v40;
      v51[2] = v54;
      v39 += v58;
      if (v59 == v40)
      {
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v61 = 0;
  v62 = 0xE000000000000000;
  sub_75908(30);
  v64._object = 0x8000000000078E80;
  v64._countAndFlagsBits = 0xD00000000000001BLL;
  sub_75608(v64);
  sub_759A8();
  v65._countAndFlagsBits = 39;
  v65._object = 0xE100000000000000;
  sub_75608(v65);
  result = sub_759B8();
  __break(1u);
  return result;
}

Swift::Int sub_41184(void **a1)
{
  v2 = *(sub_38F8(&qword_8F000, &qword_7A5D0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_4309C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_41238(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_41238(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_75A28(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_38F8(&qword_8F000, &qword_7A5D0);
        v6 = sub_756C8();
        v6[2] = v5;
      }

      v7 = *(sub_38F8(&qword_8F000, &qword_7A5D0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_415CC(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_4137C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_4137C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v36 = sub_38F8(&qword_8F000, &qword_7A5D0);
  v8 = *(*(v36 - 8) + 64);
  v9 = __chkstk_darwin(v36);
  v35 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v27 - v12;
  result = __chkstk_darwin(v11);
  v17 = &v27 - v16;
  v29 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v34 = v18;
    v28 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v32 = v20;
    v33 = a3;
    v30 = v23;
    v31 = v22;
    while (1)
    {
      sub_FCE0(v23, v17, &qword_8F000, &qword_7A5D0);
      sub_FCE0(v20, v13, &qword_8F000, &qword_7A5D0);
      v24 = sub_74C78();
      sub_3D48(v13, &qword_8F000, &qword_7A5D0);
      result = sub_3D48(v17, &qword_8F000, &qword_7A5D0);
      if ((v24 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v20 = v32 + v28;
        v22 = v31 - 1;
        v23 = v30 + v28;
        if (v33 + 1 == v29)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      v25 = v35;
      sub_1B748(v23, v35, &qword_8F000, &qword_7A5D0);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1B748(v25, v20, &qword_8F000, &qword_7A5D0);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_415CC(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = v5;
  v104 = a1;
  v117 = sub_38F8(&qword_8F000, &qword_7A5D0);
  v114 = *(v117 - 8);
  v9 = *(v114 + 64);
  v10 = __chkstk_darwin(v117);
  v108 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v116 = &v100 - v13;
  v14 = __chkstk_darwin(v12);
  v119 = &v100 - v15;
  result = __chkstk_darwin(v14);
  v118 = &v100 - v17;
  v18 = *(a3 + 8);
  if (v18 < 1)
  {
    v20 = _swiftEmptyArrayStorage;
LABEL_96:
    a4 = *v104;
    if (!*v104)
    {
      goto LABEL_136;
    }

    v4 = v20;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v4;
    }

    else
    {
LABEL_130:
      result = sub_4249C(v4);
    }

    v95 = v6;
    v120 = result;
    v4 = *(result + 16);
    if (v4 >= 2)
    {
      while (1)
      {
        v96 = *a3;
        if (!*a3)
        {
          goto LABEL_134;
        }

        v6 = a3;
        a3 = *(result + 16 * v4);
        v97 = result;
        v98 = *(result + 16 * (v4 - 1) + 40);
        sub_41F0C(v96 + *(v114 + 72) * a3, v96 + *(v114 + 72) * *(result + 16 * (v4 - 1) + 32), v96 + *(v114 + 72) * v98, a4);
        if (v95)
        {
        }

        if (v98 < a3)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_4249C(v97);
        }

        if (v4 - 2 >= *(v97 + 2))
        {
          goto LABEL_124;
        }

        v99 = &v97[16 * v4];
        *v99 = a3;
        *(v99 + 1) = v98;
        v120 = v97;
        sub_42410(v4 - 1);
        result = v120;
        v4 = *(v120 + 16);
        a3 = v6;
        if (v4 <= 1)
        {
        }
      }
    }
  }

  v101 = a4;
  v19 = 0;
  v20 = _swiftEmptyArrayStorage;
  v105 = a3;
  while (1)
  {
    v21 = v19;
    v109 = v20;
    if (v19 + 1 >= v18)
    {
      v18 = v19 + 1;
    }

    else
    {
      v103 = v6;
      v22 = v19;
      v23 = *a3;
      v24 = *(v114 + 72);
      a4 = *a3 + v24 * (v19 + 1);
      v25 = v118;
      sub_FCE0(a4, v118, &qword_8F000, &qword_7A5D0);
      v26 = v119;
      sub_FCE0(v23 + v24 * v22, v119, &qword_8F000, &qword_7A5D0);
      LODWORD(v113) = sub_74C78();
      sub_3D48(v26, &qword_8F000, &qword_7A5D0);
      result = sub_3D48(v25, &qword_8F000, &qword_7A5D0);
      v102 = v22;
      v4 = v22 + 2;
      v115 = v24;
      v27 = v23 + v24 * (v22 + 2);
      while (v18 != v4)
      {
        v28 = v118;
        sub_FCE0(v27, v118, &qword_8F000, &qword_7A5D0);
        v29 = v119;
        sub_FCE0(a4, v119, &qword_8F000, &qword_7A5D0);
        v30 = v18;
        v31 = sub_74C78() & 1;
        sub_3D48(v29, &qword_8F000, &qword_7A5D0);
        result = sub_3D48(v28, &qword_8F000, &qword_7A5D0);
        ++v4;
        v27 += v115;
        a4 += v115;
        v32 = (v113 & 1) == v31;
        v18 = v30;
        if (!v32)
        {
          v18 = v4 - 1;
          break;
        }
      }

      a3 = v105;
      v21 = v102;
      v6 = v103;
      if (v113)
      {
        if (v18 < v102)
        {
          goto LABEL_127;
        }

        if (v102 < v18)
        {
          v4 = v115 * (v18 - 1);
          v33 = v18 * v115;
          v34 = v18;
          v35 = v18;
          v36 = v102;
          a4 = v102 * v115;
          do
          {
            if (v36 != --v35)
            {
              v37 = *v105;
              if (!*v105)
              {
                goto LABEL_133;
              }

              sub_1B748(v37 + a4, v108, &qword_8F000, &qword_7A5D0);
              if (a4 < v4 || v37 + a4 >= v37 + v33)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (a4 != v4)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_1B748(v108, v37 + v4, &qword_8F000, &qword_7A5D0);
            }

            ++v36;
            v4 -= v115;
            v33 -= v115;
            a4 += v115;
          }

          while (v36 < v35);
          v21 = v102;
          v6 = v103;
          a3 = v105;
          v18 = v34;
        }
      }
    }

    v38 = *(a3 + 8);
    if (v18 < v38)
    {
      if (__OFSUB__(v18, v21))
      {
        goto LABEL_126;
      }

      if (v18 - v21 < v101)
      {
        if (__OFADD__(v21, v101))
        {
          goto LABEL_128;
        }

        if (v21 + v101 >= v38)
        {
          v39 = *(a3 + 8);
        }

        else
        {
          v39 = v21 + v101;
        }

        if (v39 < v21)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v18 != v39)
        {
          break;
        }
      }
    }

    v19 = v18;
    if (v18 < v21)
    {
      goto LABEL_125;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v20 = v109;
    }

    else
    {
      result = sub_42684(0, *(v109 + 2) + 1, 1, v109);
      v20 = result;
    }

    v4 = *(v20 + 2);
    v40 = *(v20 + 3);
    a4 = v4 + 1;
    if (v4 >= v40 >> 1)
    {
      result = sub_42684((v40 > 1), v4 + 1, 1, v20);
      v20 = result;
    }

    *(v20 + 2) = a4;
    v41 = &v20[16 * v4];
    *(v41 + 4) = v21;
    *(v41 + 5) = v19;
    v42 = *v104;
    if (!*v104)
    {
      goto LABEL_135;
    }

    if (v4)
    {
      while (1)
      {
        v43 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v44 = *(v20 + 4);
          v45 = *(v20 + 5);
          v54 = __OFSUB__(v45, v44);
          v46 = v45 - v44;
          v47 = v54;
LABEL_52:
          if (v47)
          {
            goto LABEL_114;
          }

          v60 = &v20[16 * a4];
          v62 = *v60;
          v61 = *(v60 + 1);
          v63 = __OFSUB__(v61, v62);
          v64 = v61 - v62;
          v65 = v63;
          if (v63)
          {
            goto LABEL_117;
          }

          v66 = &v20[16 * v43 + 32];
          v68 = *v66;
          v67 = *(v66 + 1);
          v54 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v54)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v64, v69))
          {
            goto LABEL_121;
          }

          if (v64 + v69 >= v46)
          {
            if (v46 < v69)
            {
              v43 = a4 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v70 = &v20[16 * a4];
        v72 = *v70;
        v71 = *(v70 + 1);
        v54 = __OFSUB__(v71, v72);
        v64 = v71 - v72;
        v65 = v54;
LABEL_66:
        if (v65)
        {
          goto LABEL_116;
        }

        v73 = &v20[16 * v43];
        v75 = *(v73 + 4);
        v74 = *(v73 + 5);
        v54 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v54)
        {
          goto LABEL_119;
        }

        if (v76 < v64)
        {
          goto LABEL_3;
        }

LABEL_73:
        v4 = v43 - 1;
        if (v43 - 1 >= a4)
        {
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v81 = v20;
        a4 = *&v20[16 * v4 + 32];
        v82 = *&v20[16 * v43 + 40];
        sub_41F0C(*a3 + *(v114 + 72) * a4, *a3 + *(v114 + 72) * *&v20[16 * v43 + 32], *a3 + *(v114 + 72) * v82, v42);
        if (v6)
        {
        }

        if (v82 < a4)
        {
          goto LABEL_110;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v83 = v81;
        }

        else
        {
          v83 = sub_4249C(v81);
        }

        if (v4 >= *(v83 + 2))
        {
          goto LABEL_111;
        }

        v84 = &v83[16 * v4];
        *(v84 + 4) = a4;
        *(v84 + 5) = v82;
        v120 = v83;
        v4 = &v120;
        result = sub_42410(v43);
        v20 = v120;
        a4 = *(v120 + 16);
        if (a4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v48 = &v20[16 * a4 + 32];
      v49 = *(v48 - 64);
      v50 = *(v48 - 56);
      v54 = __OFSUB__(v50, v49);
      v51 = v50 - v49;
      if (v54)
      {
        goto LABEL_112;
      }

      v53 = *(v48 - 48);
      v52 = *(v48 - 40);
      v54 = __OFSUB__(v52, v53);
      v46 = v52 - v53;
      v47 = v54;
      if (v54)
      {
        goto LABEL_113;
      }

      v55 = &v20[16 * a4];
      v57 = *v55;
      v56 = *(v55 + 1);
      v54 = __OFSUB__(v56, v57);
      v58 = v56 - v57;
      if (v54)
      {
        goto LABEL_115;
      }

      v54 = __OFADD__(v46, v58);
      v59 = v46 + v58;
      if (v54)
      {
        goto LABEL_118;
      }

      if (v59 >= v51)
      {
        v77 = &v20[16 * v43 + 32];
        v79 = *v77;
        v78 = *(v77 + 1);
        v54 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v54)
        {
          goto LABEL_122;
        }

        if (v46 < v80)
        {
          v43 = a4 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = *(a3 + 8);
    if (v19 >= v18)
    {
      goto LABEL_96;
    }
  }

  v102 = v21;
  v103 = v6;
  v85 = *a3;
  v86 = *(v114 + 72);
  v87 = *a3 + v86 * (v18 - 1);
  v88 = -v86;
  v89 = v21 - v18;
  v106 = v86;
  v107 = v39;
  v115 = v85;
  a4 = v85 + v18 * v86;
LABEL_86:
  v112 = v87;
  v113 = v18;
  v110 = a4;
  v111 = v89;
  v90 = v87;
  while (1)
  {
    v4 = v118;
    sub_FCE0(a4, v118, &qword_8F000, &qword_7A5D0);
    v91 = v119;
    sub_FCE0(v90, v119, &qword_8F000, &qword_7A5D0);
    v92 = sub_74C78();
    sub_3D48(v91, &qword_8F000, &qword_7A5D0);
    result = sub_3D48(v4, &qword_8F000, &qword_7A5D0);
    if ((v92 & 1) == 0)
    {
LABEL_85:
      v18 = v113 + 1;
      v19 = v107;
      v87 = v112 + v106;
      v89 = v111 - 1;
      a4 = v110 + v106;
      if (v113 + 1 != v107)
      {
        goto LABEL_86;
      }

      v21 = v102;
      v6 = v103;
      a3 = v105;
      if (v107 < v102)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (!v115)
    {
      break;
    }

    v93 = v116;
    sub_1B748(a4, v116, &qword_8F000, &qword_7A5D0);
    swift_arrayInitWithTakeFrontToBack();
    sub_1B748(v93, v90, &qword_8F000, &qword_7A5D0);
    v90 += v88;
    a4 += v88;
    if (__CFADD__(v89++, 1))
    {
      goto LABEL_85;
    }
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
  return result;
}

uint64_t sub_41F0C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v44 = sub_38F8(&qword_8F000, &qword_7A5D0);
  v8 = *(*(v44 - 8) + 64);
  v9 = __chkstk_darwin(v44);
  v46 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v45 = &v36 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_60;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v16 = (a2 - a1) / v14;
  v49 = a1;
  v48 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v24 = a4 + v18;
    if (v18 >= 1)
    {
      v25 = -v14;
      v26 = a4 + v18;
      v40 = a1;
      v41 = a4;
      v39 = -v14;
      do
      {
        v37 = v24;
        v27 = a2;
        v28 = a2 + v25;
        v42 = v27;
        v43 = v28;
        while (1)
        {
          if (v27 <= a1)
          {
            v49 = v27;
            v47 = v37;
            goto LABEL_58;
          }

          v30 = a3;
          v38 = v24;
          a3 += v25;
          v31 = v26 + v25;
          v32 = v45;
          sub_FCE0(v31, v45, &qword_8F000, &qword_7A5D0);
          v33 = v28;
          v34 = v46;
          sub_FCE0(v33, v46, &qword_8F000, &qword_7A5D0);
          v35 = sub_74C78();
          sub_3D48(v34, &qword_8F000, &qword_7A5D0);
          sub_3D48(v32, &qword_8F000, &qword_7A5D0);
          if (v35)
          {
            break;
          }

          v24 = v31;
          if (v30 < v26 || a3 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
            v28 = v43;
            a1 = v40;
          }

          else
          {
            v28 = v43;
            a1 = v40;
            if (v30 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v26 = v31;
          v27 = v42;
          v29 = v31 > v41;
          v25 = v39;
          if (!v29)
          {
            a2 = v42;
            goto LABEL_57;
          }
        }

        if (v30 < v42 || a3 >= v42)
        {
          a2 = v43;
          swift_arrayInitWithTakeFrontToBack();
          v25 = v39;
          a1 = v40;
          v24 = v38;
        }

        else
        {
          a2 = v43;
          v25 = v39;
          a1 = v40;
          v24 = v38;
          if (v30 != v42)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v26 > v41);
    }

LABEL_57:
    v49 = a2;
    v47 = v24;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v42 = a3;
    v43 = a4 + v17;
    v47 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      do
      {
        v20 = v14;
        v21 = v45;
        sub_FCE0(a2, v45, &qword_8F000, &qword_7A5D0);
        v22 = v46;
        sub_FCE0(a4, v46, &qword_8F000, &qword_7A5D0);
        v23 = sub_74C78();
        sub_3D48(v22, &qword_8F000, &qword_7A5D0);
        sub_3D48(v21, &qword_8F000, &qword_7A5D0);
        v14 = v20;
        if (v23)
        {
          if (a1 < a2 || a1 >= a2 + v20)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v20;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v20)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v48 = a4 + v20;
          a4 += v20;
        }

        a1 += v20;
        v49 = a1;
      }

      while (a4 < v43 && a2 < v42);
    }
  }

LABEL_58:
  sub_424B0(&v49, &v48, &v47);
  return 1;
}

uint64_t sub_42410(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_4249C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_424B0(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_38F8(&qword_8F000, &qword_7A5D0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_425A0(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_751D8();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_42684(char *result, int64_t a2, char a3, char *a4)
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
    sub_38F8(&qword_8F800, &qword_7AD10);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

unint64_t sub_42788(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_75AE8();
  sub_74CA8();
  sub_43B30(&qword_8F7F8, &type metadata accessor for CacheIndex);
  sub_75528();
  v4 = a1 + *(sub_38F8(&qword_8F000, &qword_7A5D0) + 36);
  sub_75528();
  v5 = sub_75B08();

  return sub_42EA0(a1, v5);
}

void *sub_42874()
{
  v1 = v0;
  v2 = sub_38F8(&qword_8F000, &qword_7A5D0);
  v30 = *(v2 - 8);
  v3 = *(v30 + 64);
  __chkstk_darwin(v2 - 8);
  v29 = &v28 - v4;
  sub_38F8(&qword_8F7D8, &qword_7A620);
  v5 = *v0;
  v6 = sub_759E8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v28 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v31 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    v15 = *(v5 + 64);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v16 = v14 & v15;
    v17 = (v13 + 63) >> 6;
    if ((v14 & v15) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v29;
        v23 = *(v30 + 72) * v21;
        sub_FCE0(*(v5 + 48) + v23, v29, &qword_8F000, &qword_7A5D0);
        v24 = *(*(v5 + 56) + 8 * v21);
        v25 = v5;
        v26 = v31;
        result = sub_1B748(v22, *(v31 + 48) + v23, &qword_8F000, &qword_7A5D0);
        v27 = *(v26 + 56);
        v5 = v25;
        *(v27 + 8 * v21) = v24;
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v28;
        v7 = v31;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_42AC4(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_38F8(&qword_8F000, &qword_7A5D0);
  v40 = *(v6 - 8);
  v41 = v6;
  v7 = *(v40 + 64);
  __chkstk_darwin(v6);
  v9 = &v38 - v8;
  v10 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v11 = *(*v2 + 24);
  }

  sub_38F8(&qword_8F7D8, &qword_7A620);
  v42 = a2;
  result = sub_759F8();
  v13 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v39 = v10;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v20 = result + 64;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v25 = v22 | (v14 << 6);
      v26 = *(v10 + 48);
      v44 = *(v40 + 72);
      v27 = v26 + v44 * v25;
      if (v42)
      {
        sub_1B748(v27, v9, &qword_8F000, &qword_7A5D0);
      }

      else
      {
        sub_FCE0(v27, v9, &qword_8F000, &qword_7A5D0);
      }

      v43 = *(*(v10 + 56) + 8 * v25);
      v28 = *(v13 + 40);
      sub_75AE8();
      sub_74CA8();
      sub_43B30(&qword_8F7F8, &type metadata accessor for CacheIndex);
      sub_75528();
      v29 = &v9[*(v41 + 36)];
      sub_75528();
      result = sub_75B08();
      v30 = -1 << *(v13 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v20 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v10 = v39;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v20 + 8 * v32);
          if (v36 != -1)
          {
            v21 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v31) & ~*(v20 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v10 = v39;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      result = sub_1B748(v9, *(v13 + 48) + v44 * v21, &qword_8F000, &qword_7A5D0);
      *(*(v13 + 56) + 8 * v21) = v43;
      ++*(v13 + 16);
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v15, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

unint64_t sub_42EA0(uint64_t a1, uint64_t a2)
{
  v15 = sub_38F8(&qword_8F000, &qword_7A5D0);
  v4 = *(v15 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v15);
  v7 = &v15 - v6;
  v16 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_74CA8();
    v11 = *(v4 + 72);
    do
    {
      sub_FCE0(*(v16 + 48) + v11 * v9, v7, &qword_8F000, &qword_7A5D0);
      sub_43B30(&qword_8F088, &type metadata accessor for CacheIndex);
      if (sub_75588())
      {
        v12 = *(v15 + 36);
        v13 = sub_75588();
        sub_3D48(v7, &qword_8F000, &qword_7A5D0);
        if (v13)
        {
          return v9;
        }
      }

      else
      {
        sub_3D48(v7, &qword_8F000, &qword_7A5D0);
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

uint64_t sub_430D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DatabaseChecksum();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_4313C(uint64_t a1)
{
  v2 = type metadata accessor for DatabaseChecksum();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_43198(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_431DC()
{
  result = qword_8F840;
  if (!qword_8F840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8F840);
  }

  return result;
}

uint64_t sub_43230(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_43284()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_432F0(sqlite3_stmt *a1)
{
  v3 = *(sub_752D8() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_3A468(a1, v5, v1 + v4, v6);
}

uint64_t sub_433EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void, void, unint64_t, void, void, void, void))
{
  v8 = *(a3(0) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  return a4(a1, a2, *(v4 + 16), *(v4 + 24), v4 + v9, *(v4 + v10), *(v4 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((((((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8))) & 1;
}

uint64_t sub_434E8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(sub_74CA8() - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v2 + 64) + v3 + v4) & ~v3);

  return a1(v5, v6, v1 + v4, v7);
}

uint64_t sub_43614(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);

  v9 = *(v1 + 24);

  (*(v3 + 8))(v1 + v5, v2);
  v10 = *(v1 + v6);

  v11 = *(v1 + v7);

  return _swift_deallocObject(v1, ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v4 | 7);
}

uint64_t sub_43768@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = *(v1 + 32);
}

uint64_t sub_437B8()
{
  v1 = sub_74CA8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = *(v0 + 16);

  v8 = *(v0 + 24);

  v9 = *(v2 + 8);
  v9(v0 + v4, v1);
  v9(v0 + v6, v1);

  return _swift_deallocObject(v0, v6 + v5, v3 | 7);
}

uint64_t sub_438DC(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);

  (*(v3 + 8))(v1 + v5, v2);
  v8 = *(v1 + v6);

  return _swift_deallocObject(v1, v6 + 8, v4 | 7);
}

uint64_t sub_439FC(sqlite3_stmt *a1, uint64_t (*a2)(void), uint64_t (*a3)(sqlite3_stmt *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t))
{
  v8 = *(a2(0) - 8);
  v9 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  return sub_39FE8(a1, *(v4 + 16), v4 + v9, *(v4 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8)), a3, a4);
}

uint64_t sub_43AC0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_43B30(unint64_t *a1, void (*a2)(uint64_t))
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

id SnapshotContainerTaskServer.init(uuid:configuration:client:delegate:)(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v53 = a4;
  v54 = a2;
  v51 = a3;
  v52 = a1;
  v5 = sub_754B8();
  v55 = *(v5 - 8);
  v56 = v5;
  v6 = *(v55 + 64);
  __chkstk_darwin(v5);
  v50 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_75768();
  v8 = *(v48 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v48);
  v11 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_75758();
  v12 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49);
  v13 = sub_754F8();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v4[OBJC_IVAR____TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer_workoutActive] = 0;
  v15 = sub_74CE8();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  *&v4[OBJC_IVAR____TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer_lock] = sub_74CD8();
  type metadata accessor for CountedAssertion();
  v18 = swift_allocObject();
  v18[2] = 0xD000000000000042;
  v18[3] = 0x8000000000078EA0;
  v18[4] = 1;
  v19 = *(v15 + 48);
  v20 = *(v15 + 52);
  swift_allocObject();
  v21 = sub_74CD8();
  v18[6] = 0;
  v18[7] = 0;
  v18[5] = v21;
  *&v4[OBJC_IVAR____TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer_snapshotProcessingAssertion] = v18;
  v22 = swift_allocObject();
  v22[2] = 0xD000000000000039;
  v22[3] = 0x8000000000078EF0;
  v22[4] = 3;
  v23 = *(v15 + 48);
  v24 = *(v15 + 52);
  swift_allocObject();
  v25 = sub_74CD8();
  v22[6] = 0;
  v22[7] = 0;
  v22[5] = v25;
  *&v4[OBJC_IVAR____TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer_workoutAssertion] = v22;
  v47[0] = sub_1720C();
  sub_754E8();
  sub_75748();
  v26 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v27 = v8 + 104;
  v28 = *(v8 + 104);
  v47[1] = v27;
  v29 = v48;
  v28(v11, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v48);
  *&v4[OBJC_IVAR____TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer_queue] = sub_75798();
  v30 = v4;
  sub_754E8();
  v58 = _swiftEmptyArrayStorage;
  sub_17258();
  sub_38F8(&qword_8F3A0, &unk_7A440);
  sub_172B0();
  v31 = v51;
  sub_75858();
  v28(v11, v26, v29);
  v32 = v50;
  v33 = v52;
  v34 = v53;
  *&v4[OBJC_IVAR____TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer_threadLimitQueue] = sub_75798();
  *&v4[OBJC_IVAR____TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer_threadLimitSemaphore] = dispatch_semaphore_create(6);
  isa = sub_74988().super.isa;
  v36 = type metadata accessor for SnapshotContainerTaskServer();
  v57.receiver = v30;
  v57.super_class = v36;
  v37 = v54;
  v38 = objc_msgSendSuper2(&v57, "initWithUUID:configuration:client:delegate:", isa, v54, v31, v34);

  sub_75378();
  v39 = sub_754A8();
  v40 = sub_75738();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_0, v39, v40, "Registering workout observer", v41, 2u);
  }

  (*(v55 + 8))(v32, v56);
  v42 = [v31 profile];
  v43 = [v42 workoutManager];

  if (v43)
  {
    [v43 registerCurrentWorkoutObserver:v38];

    swift_unknownObjectRelease();
    v44 = sub_749B8();
    (*(*(v44 - 8) + 8))(v33, v44);
  }

  else
  {
    v45 = sub_749B8();
    (*(*(v45 - 8) + 8))(v33, v45);

    swift_unknownObjectRelease();
  }

  return v38;
}

id SnapshotContainerTaskServer.__deallocating_deinit()
{
  v1 = v0;
  v2 = [v1 client];
  v3 = [v2 profile];

  v4 = [v3 workoutManager];
  if (v4)
  {
    [v4 unregisterCurrentWorkoutObserver:v1];
  }

  v6.receiver = v1;
  v6.super_class = type metadata accessor for SnapshotContainerTaskServer();
  return objc_msgSendSuper2(&v6, "dealloc");
}

NSXPCInterface __swiftcall SnapshotContainerTaskServer.exportedInterface()()
{
  v0 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP19FitnessIntelligence36SnapshotContainerTaskServerInterface_];

  return v0;
}

uint64_t sub_446DC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_754B8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_75378();
  v9 = sub_754A8();
  v10 = sub_75738();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = a1 != 0;
    _os_log_impl(&dword_0, v9, v10, "Workout active: %{BOOL}d", v11, 8u);
  }

  v12 = (*(v5 + 8))(v8, v4);
  v13 = *(v2 + OBJC_IVAR____TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer_lock);
  __chkstk_darwin(v12);
  *&v15[-16] = v2;
  v15[-8] = a1 != 0;

  sub_74CC8();
}

uint64_t sub_44AEC()
{
  result = *(v0 + OBJC_IVAR____TtCC25FitnessIntelligencePlugin30InferenceRecordContainerEntityP33_B585107B97BC3D4BB109E3030F1DB06531InferenceRecordContainerWrapper_inferenceRecordData);
  v2 = *(v0 + OBJC_IVAR____TtCC25FitnessIntelligencePlugin30InferenceRecordContainerEntityP33_B585107B97BC3D4BB109E3030F1DB06531InferenceRecordContainerWrapper_inferenceRecordData + 8);
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtCC25FitnessIntelligencePlugin30InferenceRecordContainerEntityP33_B585107B97BC3D4BB109E3030F1DB06531InferenceRecordContainerWrapper_inferenceRecordData);
  }

  if (v2 >> 60 == 15)
  {
    v4 = 0xC000000000000000;
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtCC25FitnessIntelligencePlugin30InferenceRecordContainerEntityP33_B585107B97BC3D4BB109E3030F1DB06531InferenceRecordContainerWrapper_inferenceRecordData + 8);
  }

  v5 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (!v5)
    {
      sub_11760(result, v2);
      sub_FB28(v3, v4);
      return BYTE6(v4);
    }

    goto LABEL_14;
  }

  if (v5 != 2)
  {
    sub_11760(result, v2);
    sub_FB28(v3, v4);
    return 0;
  }

  v7 = *(v3 + 16);
  v6 = *(v3 + 24);
  sub_11760(result, v2);
  sub_FB28(v3, v4);
  result = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_14:
    sub_11760(result, v2);
    result = sub_FB28(v3, v4);
    if (__OFSUB__(HIDWORD(v3), v3))
    {
      __break(1u);
    }

    else
    {
      return HIDWORD(v3) - v3;
    }
  }

  return result;
}

id sub_44C24()
{
  v2.receiver = v0;
  v2.super_class = _s31InferenceRecordContainerWrapperCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id static InferenceRecordContainerEntity.syncEntityIdentifier.getter()
{
  v0 = objc_allocWithZone(HDSyncEntityIdentifier);
  v1 = sub_75598();
  v2 = [v0 initWithEntityIdentifier:2 schemaIdentifier:v1];

  return v2;
}

uint64_t sub_44DAC@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v25 = sub_74968();
  v1 = *(v25 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v25);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_74A28();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_74A38();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_38F8(&qword_8FA68, &qword_7A790);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v24 - v17;
  sub_749E8();
  (*(v6 + 104))(v9, enum case for Calendar.Component.year(_:), v5);
  sub_74948();
  sub_74A08();
  v19 = v4;
  v20 = v25;
  (*(v1 + 8))(v19, v25);
  (*(v6 + 8))(v9, v5);
  (*(v11 + 8))(v14, v10);
  if ((*(v1 + 48))(v18, 1, v20) != 1)
  {
    return (*(v1 + 32))(v24, v18, v20);
  }

  sub_3D48(v18, &qword_8FA68, &qword_7A790);
  v21 = sub_753B8();
  sub_479D0(&unk_8FA70, &type metadata accessor for DateError);
  swift_allocError();
  (*(*(v21 - 8) + 104))(v22, enum case for DateError.invalidDate(_:), v21);
  return swift_willThrow();
}

uint64_t static InferenceRecordContainerEntity.generateSyncObjects(for:syncAnchorRange:profile:messageHandler:)(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v107 = a5;
  v111 = a3;
  v112 = a4;
  v110 = a2;
  v114 = a1;
  v6 = sub_754B8();
  v113 = *(v6 - 8);
  v7 = *(v113 + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v96 - v12;
  __chkstk_darwin(v11);
  v109 = &v96 - v14;
  v15 = sub_74968();
  v116 = *(v15 - 8);
  v16 = *(v116 + 64);
  v17 = __chkstk_darwin(v15);
  v18 = __chkstk_darwin(v17);
  v20 = &v96 - v19;
  __chkstk_darwin(v18);
  v22 = &v96 - v21;
  result = sub_44DAC(&v96 - v21);
  if (!v5)
  {
    v105 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    v99 = v13;
    v97 = v10;
    v106 = v6;
    v98 = 0;
    v24 = v109;
    sub_75378();
    v25 = *(v116 + 16);
    v108 = v22;
    v104 = v25;
    v25(v20, v22, v15);
    v26 = sub_754A8();
    v27 = v15;
    v28 = sub_75738();
    if (os_log_type_enabled(v26, v28))
    {
      v29 = swift_slowAlloc();
      ObjCClassFromMetadata = swift_slowAlloc();
      aBlock[0] = ObjCClassFromMetadata;
      *v29 = 136315138;
      sub_479D0(&qword_8F9F8, &type metadata accessor for Date);
      v30 = sub_75A38();
      v31 = v27;
      v33 = v32;
      v34 = v20;
      v35 = v31;
      (*(v116 + 8))(v34, v31);
      v36 = sub_31B4(v30, v33, aBlock);

      *(v29 + 4) = v36;
      _os_log_impl(&dword_0, v26, v28, "Generate sync objects from %s", v29, 0xCu);
      sub_3940(ObjCClassFromMetadata);

      (*(v113 + 8))(v24, v106);
      v37 = v35;
    }

    else
    {

      (*(v116 + 8))(v20, v15);
      (*(v113 + 8))(v24, v106);
      v37 = v15;
    }

    v38 = v114;
    v39 = v105;
    v40 = swift_allocObject();
    v109 = v40;
    *(v40 + 16) = -1;
    v101 = (v40 + 16);
    v105 = swift_allocObject();
    *(v105 + 2) = 0;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v102 = [v38 maxEncodedBytesPerCodableChangeForSyncEntityClass:ObjCClassFromMetadata];
    v41 = swift_allocObject();
    *(v41 + 16) = &_swiftEmptySetSingleton;
    v100 = (v41 + 16);
    v104(v39, v108, v37);
    v42 = v116;
    v43 = (*(v116 + 80) + 16) & ~*(v116 + 80);
    v44 = (v16 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
    v45 = (v44 + 15) & 0xFFFFFFFFFFFFFFF8;
    v46 = v39;
    v47 = (v45 + 15) & 0xFFFFFFFFFFFFFFF8;
    v48 = swift_allocObject();
    v49 = v42;
    v50 = v105;
    v51 = *(v49 + 32);
    v104 = v37;
    v51(v48 + v43, v46, v37);
    *(v48 + v44) = v50;
    *(v48 + v45) = v102;
    *(v48 + v47) = v41;
    v52 = swift_allocObject();
    v53 = v114;
    v52[2] = v115;
    v52[3] = v53;
    v54 = v111;
    v52[4] = v110;
    v52[5] = v54;
    v55 = v112;
    v52[6] = v109;
    v52[7] = v55;
    v52[8] = sub_46E9C;
    v52[9] = v48;

    v111 = v41;

    v56 = v53;

    v57 = v55;

    v58 = [v57 database];
    v59 = swift_allocObject();
    v59[2] = sub_46FF0;
    v59[3] = v52;
    aBlock[4] = sub_FC94;
    aBlock[5] = v59;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2BB8;
    aBlock[3] = &unk_883B8;
    v60 = _Block_copy(aBlock);

    aBlock[0] = 0;
    v61 = [ObjCClassFromMetadata performReadTransactionWithHealthDatabase:v58 error:aBlock block:v60];
    _Block_release(v60);

    v62 = aBlock[0];
    LOBYTE(v60) = swift_isEscapingClosureAtFileLocation();

    if (v60)
    {
      __break(1u);
      goto LABEL_31;
    }

    if (!v61)
    {
      v47 = v116;
      v61 = v104;
LABEL_25:
      sub_74898();

      swift_willThrow();

      (*(v47 + 8))(v108, v61);
    }

    v63 = v101;
    swift_beginAccess();
    v47 = v116;
    if (*v63 != -1)
    {
      v64 = v99;
      sub_75378();

      v65 = sub_754A8();
      v66 = sub_75738();
      v67 = os_log_type_enabled(v65, v66);
      v68 = v106;
      if (v67)
      {
        v69 = swift_slowAlloc();
        *v69 = 134217984;
        v70 = v100;
        swift_beginAccess();
        v71 = *v70;
        if ((v71 & 0xC000000000000001) != 0)
        {

          v72 = sub_75898();
        }

        else
        {
          v72 = *(v71 + 16);
        }

        *(v69 + 4) = v72;

        _os_log_impl(&dword_0, v65, v66, "Syncing over %ld inference records", v69, 0xCu);

        v83 = v113;
        v61 = v104;
        v64 = v99;
      }

      else
      {

        v83 = v113;
        v61 = v104;
      }

      (*(v83 + 8))(v64, v68);
      v84 = v100;
      swift_beginAccess();
      v85 = *v84;

      v87 = sub_3B9C(v86);

      v62 = v107;
      if ((v87 & 0x8000000000000000) == 0 && (v87 & 0x4000000000000000) == 0)
      {
        sub_75A78();
LABEL_22:

        sub_38F8(&qword_8EB00, &qword_79B18);
        isa = sub_75678().super.isa;

        v89 = *v101;
        v117 = 0;
        v90 = [v62 sendCodableChange:isa version:0 resultAnchor:v89 sequence:0 done:1 error:&v117];

        if (v90)
        {
          v91 = *(v47 + 8);
          v92 = v117;
          v91(v108, v61);
        }

        v62 = v117;
        goto LABEL_25;
      }

LABEL_31:
      sub_38F8(&qword_8EB00, &qword_79B18);
      sub_759C8();

      goto LABEL_22;
    }

    v114 = v48;
    v73 = v97;
    sub_75378();

    v74 = sub_754A8();
    v75 = sub_75738();
    v76 = os_log_type_enabled(v74, v75);
    v77 = v106;
    if (v76)
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v118 = v79;
      *v78 = 134218242;
      v80 = v100;
      swift_beginAccess();
      v81 = *v80;
      if ((v81 & 0xC000000000000001) != 0)
      {

        v82 = sub_75898();
      }

      else
      {
        v82 = *(v81 + 16);
      }

      *(v78 + 4) = v82;

      *(v78 + 12) = 2080;
      v93 = sub_75B18();
      v95 = sub_31B4(v93, v94, &v118);

      *(v78 + 14) = v95;
      _os_log_impl(&dword_0, v74, v75, "Last anchor is invalid, not syncing %ld %s", v78, 0x16u);
      sub_3940(v79);

      (*(v113 + 8))(v73, v106);
      (*(v116 + 8))(v108, v104);
    }

    else
    {

      (*(v113 + 8))(v73, v77);
      (*(v47 + 8))(v108, v104);
    }
  }

  return result;
}

uint64_t sub_45E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v56 = a5;
  v57 = a8;
  v55 = a6;
  v10 = sub_754B8();
  v58 = *(v10 - 8);
  v59 = v10;
  v11 = *(v58 + 64);
  __chkstk_darwin(v10);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_74968();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_38F8(&unk_8FA00, &qword_7A740);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v54 - v21;
  v23 = sub_74D78();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = __chkstk_darwin(v23);
  v28 = &v54 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = &v54 - v29;
  sub_11AD8(v22);
  v31 = (*(v24 + 48))(v22, 1, v23);
  if (v31 == 1)
  {
    sub_3D48(v22, &unk_8FA00, &qword_7A740);
    sub_75378();
    v48 = sub_754A8();
    v49 = sub_75718();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 134217984;
      *(v50 + 4) = v56;
      _os_log_impl(&dword_0, v48, v49, "Failed to decode InferenceRecord from row: %ld", v50, 0xCu);
    }

    (*(v58 + 8))(v13, v59);
    return v31 != 1;
  }

  (*(v24 + 32))(v30, v22, v23);
  sub_74D68();
  v32 = sub_74928();
  (*(v15 + 8))(v18, v14);
  if ((v32 & 1) == 0)
  {
    (*(v24 + 8))(v30, v23);
    return v31 != 1;
  }

  v33 = *(v24 + 16);
  v33(v28, v30, v23);
  v34 = _s31InferenceRecordContainerWrapperCMa();
  v35 = objc_allocWithZone(v34);
  v36 = OBJC_IVAR____TtCC25FitnessIntelligencePlugin30InferenceRecordContainerEntityP33_B585107B97BC3D4BB109E3030F1DB06531InferenceRecordContainerWrapper_inferenceRecord;
  v33(&v35[OBJC_IVAR____TtCC25FitnessIntelligencePlugin30InferenceRecordContainerEntityP33_B585107B97BC3D4BB109E3030F1DB06531InferenceRecordContainerWrapper_inferenceRecord], v28, v23);
  (*(v24 + 56))(&v35[v36], 0, 1, v23);
  sub_479D0(&qword_8F178, &type metadata accessor for InferenceRecord);
  v37 = sub_74F78();
  v38 = &v35[OBJC_IVAR____TtCC25FitnessIntelligencePlugin30InferenceRecordContainerEntityP33_B585107B97BC3D4BB109E3030F1DB06531InferenceRecordContainerWrapper_inferenceRecordData];
  *v38 = v37;
  v38[1] = v39;
  v61.receiver = v35;
  v61.super_class = v34;
  v40 = objc_msgSendSuper2(&v61, "init");
  v41 = *(v24 + 8);
  v41(v28, v23);
  v42 = sub_44AEC();
  if (v42 < 1)
  {
LABEL_6:
    *v55 = 1;

    v41(v30, v23);
    return v31 != 1;
  }

  v43 = v42;
  result = swift_beginAccess();
  v45 = *(a9 + 16);
  v46 = __OFADD__(v45, v43);
  v47 = v45 + v43;
  if (v46)
  {
    __break(1u);
  }

  else
  {
    if (v47 > a10)
    {
      goto LABEL_6;
    }

    swift_beginAccess();
    v51 = v40;
    sub_68D40(&v60, v51);
    swift_endAccess();

    v41(v30, v23);
    result = swift_beginAccess();
    v52 = *(a9 + 16);
    v46 = __OFADD__(v52, v43);
    v53 = v52 + v43;
    if (!v46)
    {
      *(a9 + 16) = v53;
      return v31 != 1;
    }
  }

  __break(1u);
  return result;
}

id sub_463E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10)
{
  v15 = sub_754B8();
  v36 = *(v15 - 8);
  v37 = v15;
  v16 = *(v36 + 64);
  __chkstk_darwin(v15);
  v35 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a7 + 16;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = sub_1D420();
  sub_462C(v20);

  isa = sub_75678().super.isa;

  v22 = [a8 database];
  v23 = swift_allocObject();
  *(v23 + 16) = a9;
  *(v23 + 24) = a10;
  aBlock[4] = sub_3D1C;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_778C;
  aBlock[3] = &unk_88408;
  v24 = _Block_copy(aBlock);

  swift_beginAccess();
  v38 = 0;
  v25 = [ObjCClassFromMetadata enumerateEntitiesForSyncWithProperties:isa predicate:0 session:a4 syncAnchorRange:a5 limit:a6 lastSyncAnchor:0 healthDatabase:v18 error:v22 block:{&v38, v24}];
  v26 = v38;
  swift_endAccess();
  v27 = v26;
  _Block_release(v24);

  LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();

  if (v24)
  {
    __break(1u);
  }

  if (!v25)
  {
    sub_74898();

    swift_willThrow();
    v28 = v35;
    sub_75378();
    swift_errorRetain();
    v29 = sub_754A8();
    v30 = sub_75718();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412290;
      swift_errorRetain();
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 4) = v33;
      *v32 = v33;
      _os_log_impl(&dword_0, v29, v30, "Error while enumerating entities for sync: %@", v31, 0xCu);
      sub_3D48(v32, &unk_8EB30, &unk_7A270);
    }

    else
    {
    }

    (*(v36 + 8))(v28, v37);
  }

  return v25;
}

id static InferenceRecordContainerEntity.decodeSyncObject(with:)(uint64_t a1, unint64_t a2)
{
  v4 = sub_38F8(&unk_8FA00, &qword_7A740);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v13 - v6;
  v8 = _s31InferenceRecordContainerWrapperCMa();
  v9 = objc_allocWithZone(v8);
  v10 = sub_74D78();
  sub_398C(a1, a2);
  sub_398C(a1, a2);
  sub_479D0(&qword_8F178, &type metadata accessor for InferenceRecord);
  sub_74F88();
  (*(*(v10 - 8) + 56))(v7, 0, 1, v10);
  sub_477F8(v7, &v9[OBJC_IVAR____TtCC25FitnessIntelligencePlugin30InferenceRecordContainerEntityP33_B585107B97BC3D4BB109E3030F1DB06531InferenceRecordContainerWrapper_inferenceRecord]);
  v11 = &v9[OBJC_IVAR____TtCC25FitnessIntelligencePlugin30InferenceRecordContainerEntityP33_B585107B97BC3D4BB109E3030F1DB06531InferenceRecordContainerWrapper_inferenceRecordData];
  *v11 = a1;
  v11[1] = a2;
  v14.receiver = v9;
  v14.super_class = v8;
  return objc_msgSendSuper2(&v14, "init");
}

uint64_t sub_46DB0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_46DE8()
{
  v1 = sub_74968();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  v8 = *(v0 + v6);

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

uint64_t sub_46E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, uint64_t a7)
{
  v15 = *(sub_74968() - 8);
  v16 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v17 = (*(v15 + 64) + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = *(v7 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8));
  return sub_45E58(a1, a2, a3, a4, a5, a6, a7, v7 + v16, *(v7 + v17), *(v7 + v18)) & 1;
}

uint64_t sub_46FA0()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 72);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_47038(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_47050(size_t a1, uint64_t a2, void *a3)
{
  v48 = a3;
  v5 = sub_38F8(&unk_8FA00, &qword_7A740);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v47 - v7;
  v9 = sub_74D78();
  v51 = *(v9 - 8);
  v52 = v9;
  v10 = *(v51 + 64);
  __chkstk_darwin(v9);
  v54 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_754B8();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = __chkstk_darwin(v12);
  v17 = v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = v47 - v19;
  v21 = __chkstk_darwin(v18);
  v53 = v47 - v22;
  __chkstk_darwin(v21);
  v24 = v47 - v23;
  sub_75378();

  v25 = sub_754A8();
  LOBYTE(v26) = sub_75738();
  v27 = os_log_type_enabled(v25, v26);
  v47[3] = v17;
  if (!v27)
  {

    goto LABEL_6;
  }

  v49 = v12;
  v28 = a2;
  a2 = swift_slowAlloc();
  *a2 = 134217984;
  if (a1 >> 62)
  {
    goto LABEL_31;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); ; i = sub_759D8())
  {
    *(a2 + 4) = i;

    _os_log_impl(&dword_0, v25, v26, "Received synced inference records count: %ld", a2, 0xCu);

    a2 = v28;
    v12 = v49;
LABEL_6:
    v32 = v13[1];
    v30 = v13 + 1;
    v31 = v32;
    v32(v24, v12);
    if (a2 < 0 || a2 > 0)
    {
      sub_75378();
      v39 = sub_754A8();
      v40 = sub_75738();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 67109376;
        *(v41 + 4) = a2;
        *(v41 + 8) = 1024;
        *(v41 + 10) = HIDWORD(a2);
        _os_log_impl(&dword_0, v39, v40, "Sync version [%d, %d] not supported, dropping.", v41, 0xEu);
      }

      v31(v20, v12);
      return 1;
    }

    v55 = sub_65550(a1);
    if (!v55)
    {
      break;
    }

    v50 = v55 & 0xFFFFFFFFFFFFFF8;
    if (v55 >> 62)
    {
      v24 = sub_759D8();
      if (!v24)
      {
LABEL_33:

        break;
      }
    }

    else
    {
      v24 = *(&dword_10 + (v55 & 0xFFFFFFFFFFFFFF8));
      if (!v24)
      {
        goto LABEL_33;
      }
    }

    v47[1] = v31;
    v47[2] = v30;
    v49 = v12;
    v26 = 0;
    v53 = (v55 & 0xC000000000000001);
    v28 = v52;
    v33 = (v51 + 48);
    a1 = _swiftEmptyArrayStorage;
    v25 = (v51 + 32);
    v13 = v50;
    while (1)
    {
      if (v53)
      {
        v34 = sub_75928();
      }

      else
      {
        if (v26 >= v13[2])
        {
          goto LABEL_30;
        }

        v34 = *(v55 + 8 * v26 + 32);
      }

      a2 = v34;
      v20 = (v26 + 1);
      if (__OFADD__(v26, 1))
      {
        break;
      }

      sub_47960(v34 + OBJC_IVAR____TtCC25FitnessIntelligencePlugin30InferenceRecordContainerEntityP33_B585107B97BC3D4BB109E3030F1DB06531InferenceRecordContainerWrapper_inferenceRecord, v8);

      if ((*v33)(v8, 1, v28) == 1)
      {
        sub_3D48(v8, &unk_8FA00, &qword_7A740);
      }

      else
      {
        isa = v25->isa;
        (v25->isa)(v54, v8, v28);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a1 = sub_67844(0, *(a1 + 16) + 1, 1, a1);
        }

        v37 = *(a1 + 16);
        v36 = *(a1 + 24);
        a2 = v37 + 1;
        if (v37 >= v36 >> 1)
        {
          a1 = sub_67844(v36 > 1, v37 + 1, 1, a1);
        }

        *(a1 + 16) = a2;
        v38 = a1 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v37;
        v28 = v52;
        isa(v38, v54, v52);
        v13 = v50;
      }

      ++v26;
      if (v20 == v24)
      {

        sub_705B8(a1, 0, v48);

        return 0;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    ;
  }

  v43 = v53;
  sub_75378();
  v44 = sub_754A8();
  v45 = sub_75738();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_0, v44, v45, "No sync object received, skipping.", v46, 2u);
  }

  v31(v43, v12);
  return 0;
}

uint64_t _s31InferenceRecordContainerWrapperCMa()
{
  result = qword_8FA48;
  if (!qword_8FA48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_477F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_38F8(&unk_8FA00, &qword_7A740);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_47870()
{
  sub_47908();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_47908()
{
  if (!qword_8FA58)
  {
    sub_74D78();
    v0 = sub_75848();
    if (!v1)
    {
      atomic_store(v0, &qword_8FA58);
    }
  }
}

uint64_t sub_47960(uint64_t a1, uint64_t a2)
{
  v4 = sub_38F8(&unk_8FA00, &qword_7A740);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_479D0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_47A28()
{
  result = qword_8FA80;
  if (!qword_8FA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8FA80);
  }

  return result;
}

void *sub_47A7C(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_750F8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = _swiftEmptyArrayStorage;
  if (a3)
  {
    v25 = a3;
  }

  else
  {
    v25 = [objc_opt_self() contextForReadingProtectedData];
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = a3;
  v13 = [a2 database];
  (*(v9 + 16))(&v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = (v10 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  (*(v9 + 32))(v16 + v14, v11, v8);
  *(v16 + v15) = &v28;
  *(v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)) = v4;
  v17 = swift_allocObject();
  v17[2] = sub_4E6CC;
  v17[3] = v16;
  aBlock[4] = sub_1008C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2BB8;
  aBlock[3] = &unk_88958;
  v18 = _Block_copy(aBlock);
  v19 = v25;

  aBlock[0] = 0;
  v20 = [ObjCClassFromMetadata performReadTransactionWithHealthDatabase:v13 context:v19 error:aBlock block:v18];
  _Block_release(v18);

  v21 = aBlock[0];
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if (v18)
  {
    __break(1u);
  }

  if (v20)
  {

    v22 = v28;
  }

  else
  {
    sub_74898();

    swift_willThrow();
    v22 = v28;
  }

  return v22;
}

uint64_t sub_47DDC(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_751D8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = _swiftEmptyArrayStorage;
  if (a3)
  {
    v26 = a3;
  }

  else
  {
    v26 = [objc_opt_self() contextForReadingProtectedData];
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = a3;
  v13 = [a2 database];
  (*(v9 + 16))(v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = (v10 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  (*(v9 + 32))(v16 + v14, v11, v8);
  *(v16 + v15) = &v29;
  *(v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)) = v4;
  v17 = swift_allocObject();
  v17[2] = sub_4E580;
  v17[3] = v16;
  aBlock[4] = sub_1008C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2BB8;
  aBlock[3] = &unk_887F0;
  v18 = _Block_copy(aBlock);
  v19 = v26;

  aBlock[0] = 0;
  v20 = [ObjCClassFromMetadata performReadTransactionWithHealthDatabase:v13 context:v19 error:aBlock block:v18];
  _Block_release(v18);

  v21 = aBlock[0];
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if (v18)
  {
    __break(1u);
  }

  if (!v20)
  {
    sub_74898();

    swift_willThrow();
    v23 = v29;

    return v23;
  }

  aBlock[0] = v29;
  swift_bridgeObjectRetain_n();
  v22 = v25[1];
  sub_4BC50(aBlock);
  if (!v22)
  {

    v23 = aBlock[0];

    return v23;
  }

  __break(1u);
  return result;
}

uint64_t sub_48188(void *a1, void *a2)
{
  v4 = v2;
  v21 = _swiftEmptyArrayStorage;
  if (a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = [objc_opt_self() contextForReadingProtectedData];
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = a2;
  v10 = [a1 database];
  v11 = swift_allocObject();
  *(v11 + 16) = &v21;
  *(v11 + 24) = v4;
  v12 = swift_allocObject();
  v12[2] = sub_4E570;
  v12[3] = v11;
  v20[4] = sub_1008C;
  v20[5] = v12;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 1107296256;
  v20[2] = sub_2BB8;
  v20[3] = &unk_88700;
  v13 = _Block_copy(v20);
  v14 = v7;

  v20[0] = 0;
  v15 = [ObjCClassFromMetadata performReadTransactionWithHealthDatabase:v10 context:v14 error:v20 block:v13];
  _Block_release(v13);

  v16 = v20[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (!v15)
  {
    sub_74898();

    swift_willThrow();
    v18 = v21;

    return v18;
  }

  v20[0] = v21;
  swift_bridgeObjectRetain_n();
  sub_4BCF8(sub_4A61C, 0);
  if (!v3)
  {

    v18 = v20[0];

    return v18;
  }

  __break(1u);
  return result;
}

void sub_48464(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v50 = a2;
  v43 = a1;
  v6 = sub_751D8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v49 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a3 syncIdentityManager];
  v10 = [v9 currentSyncIdentity];

  v11 = [v10 entity];
  v45 = [v11 persistentID];

  if (a4)
  {
    v46 = a4;
  }

  else
  {
    v46 = [objc_opt_self() contextForWritingProtectedData];
  }

  v12 = a4;
  v13 = [a3 database];
  v47 = a3;
  v48 = v13;
  v14 = *(v7 + 16);
  v42 = v7 + 16;
  v44 = v14;
  v15 = v49;
  v16 = v43;
  v17 = v6;
  v14(v49, v43, v6);
  v18 = *(v7 + 80);
  v19 = (v18 + 24) & ~v18;
  v39 = v19;
  v20 = (v8 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = v20;
  v41 = v18;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = v51;
  v38 = *(v7 + 32);
  v23 = v17;
  v38(v22 + v19, v15, v17);
  *(v22 + v20) = v50;
  *(v22 + v21) = v45;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_118F8;
  *(v24 + 24) = v22;
  v37[2] = v22;
  v56 = sub_FC94;
  v57 = v24;
  aBlock = _NSConcreteStackBlock;
  v53 = 1107296256;
  v37[3] = &v54;
  v54 = sub_2BB8;
  v55 = &unk_884F8;
  v45 = _Block_copy(&aBlock);
  v25 = v46;

  v26 = v15;
  v44(v15, v16, v23);
  v27 = swift_allocObject();
  *(v27 + 16) = v51;
  v28 = v25;
  v38(v27 + v39, v26, v23);
  *(v27 + v40) = v50;
  v29 = v47;
  *(v27 + v21) = v47;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_119DC;
  *(v30 + 24) = v27;
  v56 = sub_11AC4;
  v57 = v30;
  aBlock = _NSConcreteStackBlock;
  v53 = 1107296256;
  v54 = sub_65494;
  v55 = &unk_88570;
  v31 = _Block_copy(&aBlock);
  v32 = v29;

  aBlock = 0;
  v33 = v48;
  v34 = v45;
  v35 = [v48 performTransactionWithContext:v28 error:&aBlock block:v45 inaccessibilityHandler:v31];
  _Block_release(v31);
  _Block_release(v34);

  v36 = aBlock;
  LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

  if (v23)
  {
    __break(1u);
  }

  if ((v35 & 1) == 0)
  {
    sub_74898();

    swift_willThrow();
  }
}

void sub_489A0(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  if (a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = [objc_opt_self() contextForWritingProtectedData];
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = a3;
  v11 = [a2 database];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v4;
  v13 = swift_allocObject();
  v13[2] = sub_4E55C;
  v13[3] = v12;
  aBlock[4] = sub_1008C;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2BB8;
  aBlock[3] = &unk_885E8;
  v14 = _Block_copy(aBlock);
  v15 = v8;

  aBlock[0] = 0;
  v16 = [ObjCClassFromMetadata performReadTransactionWithHealthDatabase:v11 context:v15 error:aBlock block:v14];
  _Block_release(v14);

  v17 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if ((v16 & 1) == 0)
  {
    sub_74898();

    swift_willThrow();
  }
}

uint64_t sub_48BE4(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_754B8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v35 - v12;
  v14 = [a1 protectedDatabase];
  if (v14)
  {
    v15 = v14;
    v36 = a2;
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    sub_75908(28);

    strcpy(&aBlock, "DELETE FROM ");
    BYTE13(aBlock) = 0;
    HIWORD(aBlock) = -5120;
    v42._object = 0x80000000000791C0;
    v42._countAndFlagsBits = 0xD000000000000033;
    sub_75608(v42);
    v43._countAndFlagsBits = 0x20455245485720;
    v43._object = 0xE700000000000000;
    sub_75608(v43);
    v44._countAndFlagsBits = 0x6568636143646E65;
    v44._object = 0xED00007865646E49;
    sub_75608(v44);
    v45._countAndFlagsBits = 0x3F203D3E20;
    v45._object = 0xE500000000000000;
    sub_75608(v45);
    v16 = sub_75598();

    v17 = swift_allocObject();
    v35 = a3;
    *(v17 + 16) = a3;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_4E564;
    *(v18 + 24) = v17;
    v40 = sub_303D0;
    v41 = v18;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v38 = sub_644E0;
    v39 = &unk_88660;
    v19 = _Block_copy(&aBlock);

    v40 = static PropertyRecordCheckpointEntity.supportedNanoSyncDirections(for:);
    v41 = 0;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v38 = sub_4F494;
    v39 = &unk_88688;
    v20 = _Block_copy(&aBlock);

    *&aBlock = 0;
    v21 = [v15 executeSQL:v16 error:&aBlock bindingHandler:v19 enumerationHandler:v20];
    _Block_release(v20);
    _Block_release(v19);

    if (v21)
    {
      v22 = aBlock;

      return 1;
    }

    v28 = aBlock;
    sub_74898();

    swift_willThrow();
    sub_75378();
    swift_errorRetain();
    v29 = sub_754A8();
    v30 = sub_75718();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 134218242;
      *(v31 + 4) = v35;
      *(v31 + 12) = 2112;
      swift_errorRetain();
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 14) = v33;
      *v32 = v33;
      _os_log_impl(&dword_0, v29, v30, "Failed to invalidate snapshots after %lld: %@", v31, 0x16u);
      sub_3D48(v32, &unk_8EB30, &unk_7A270);
    }

    (*(v7 + 8))(v11, v6);
    v34 = v36;
    if (v36)
    {
      *v34 = sub_74888();
    }
  }

  else
  {
    sub_75378();
    v24 = sub_754A8();
    v25 = sub_75718();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 134217984;
      *(v26 + 4) = a3;
      _os_log_impl(&dword_0, v24, v25, "Failed to invalidate snapshots after cacheIndex: %lld: no protected database", v26, 0xCu);
    }

    (*(v7 + 8))(v13, v6);
    if (a2)
    {
      sub_19A60();
      swift_allocError();
      *v27 = 0;
      *a2 = sub_74888();
    }
  }

  return 0;
}

uint64_t sub_49180(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_754B8();
  v42 = *(v11 - 8);
  v43 = v11;
  v12 = *(v42 + 64);
  __chkstk_darwin(v11);
  v41 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_751D8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [a1 protectedDatabase];
  if (v18)
  {
    v19 = v18;
    v38 = a2;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_55A6C();
    isa = sub_75678().super.isa;

    (*(v15 + 16))(&v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v14);
    v20 = (*(v15 + 80) + 16) & ~*(v15 + 80);
    v21 = (v16 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    (*(v15 + 32))(v22 + v20, v17, v14);
    *(v22 + v21) = a5;
    *(v22 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8)) = a6;
    v23 = swift_allocObject();
    v23[2] = sub_4E35C;
    v23[3] = v22;
    aBlock[4] = sub_2FE7C;
    aBlock[5] = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_644E0;
    aBlock[3] = &unk_88480;
    v24 = _Block_copy(aBlock);

    aBlock[0] = 0;
    v25 = isa;
    v26 = [ObjCClassFromMetadata insertOrReplaceEntity:1 database:v19 properties:isa error:aBlock bindingHandler:v24];
    _Block_release(v24);

    v27 = aBlock[0];
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    if (v26)
    {

      return 1;
    }

    sub_74898();

    swift_willThrow();
    v31 = sub_4E35C;
    a2 = v38;
  }

  else
  {
    sub_19A60();
    swift_allocError();
    *v30 = 0;
    swift_willThrow();
    v31 = 0;
  }

  v32 = v41;
  sub_75378();
  swift_errorRetain();
  v33 = sub_754A8();
  v34 = sub_75718();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v35 = 138412290;
    swift_errorRetain();
    v37 = _swift_stdlib_bridgeErrorToNSError();
    *(v35 + 4) = v37;
    *v36 = v37;
    _os_log_impl(&dword_0, v33, v34, "Failed to insert cache registry entry: %@", v35, 0xCu);
    sub_3D48(v36, &unk_8EB30, &unk_7A270);
  }

  (*(v42 + 8))(v32, v43);
  if (a2)
  {
    *a2 = sub_74888();
  }

  sub_43230(v31);
  return 0;
}

void sub_49698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a3;
  v40 = a4;
  v4 = sub_74968();
  v37 = *(v4 - 8);
  v38 = v4;
  v5 = *(v37 + 64);
  __chkstk_darwin(v4);
  v36 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_75028();
  v34 = *(v7 - 8);
  v35 = v7;
  v8 = *(v34 + 64);
  __chkstk_darwin(v7);
  v33 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_750F8();
  v10 = *(v32 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v32);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_74CA8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_75598();
  sub_751B8();
  sub_74C98();
  v20 = *(v15 + 8);
  v20(v18, v14);
  HDSQLiteBindInt64ToProperty();

  v21 = sub_75598();
  sub_75198();
  sub_74C98();
  v20(v18, v14);
  HDSQLiteBindInt64ToProperty();

  v22 = sub_75598();
  sub_751C8();
  sub_750E8();
  (*(v10 + 8))(v13, v32);
  v23 = sub_75598();

  HDSQLiteBindStringToProperty();

  v24 = sub_75598();
  v25 = v33;
  sub_75008();
  sub_75018();
  (*(v34 + 8))(v25, v35);
  HDSQLiteBindInt64ToProperty();

  v26 = sub_75598();
  v27 = v36;
  sub_74958();
  isa = sub_74918().super.isa;
  (*(v37 + 8))(v27, v38);
  HDSQLiteBindDateToProperty();

  v29 = sub_75598();
  HDSQLiteBindInt64ToProperty();

  v30 = sub_75598();
  HDSQLiteBindInt64ToProperty();
}

id sub_49B5C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v38 = a2;
  v39 = a6;
  v40 = sub_754B8();
  v8 = *(v40 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v40);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v38 - v13;
  sub_75378();
  swift_errorRetain();
  v15 = sub_754A8();
  v16 = sub_75718();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 4) = v19;
    *v18 = v19;
    _os_log_impl(&dword_0, v15, v16, "Failed to insert an PropertyRecordCheckpoint entry: %@. Journaling entries", v17, 0xCu);
    sub_3D48(v18, &unk_8EB30, &unk_7A270);
  }

  v20 = *(v8 + 8);
  v20(v14, v40);
  sub_38F8(&qword_8FAA0, &unk_7ACA0);
  v21 = sub_751D8();
  v22 = *(v21 - 8);
  v23 = *(v22 + 72);
  v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_79BF0;
  (*(v22 + 16))(v25 + v24, a4, v21);
  sub_4E014(v25, a5);
  swift_setDeallocating();
  (*(v22 + 8))(v25 + v24, v21);
  swift_deallocClassInstance();
  v26 = [v39 database];
  sub_4E2F8();
  isa = sub_75678().super.isa;

  v41 = 0;
  v28 = [v26 addJournalEntries:isa error:&v41];

  if (v28)
  {
    v29 = v41;
  }

  else
  {
    v30 = v41;
    sub_74898();

    swift_willThrow();
    sub_75378();
    swift_errorRetain();
    v31 = sub_754A8();
    v32 = sub_75718();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      swift_errorRetain();
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 4) = v35;
      *v34 = v35;
      _os_log_impl(&dword_0, v31, v32, "Failed to add journal entries: %@", v33, 0xCu);
      sub_3D48(v34, &unk_8EB30, &unk_7A270);
    }

    v20(v12, v40);
    v36 = v38;
    if (v38)
    {
      *v36 = sub_74888();
    }
  }

  return v28;
}

uint64_t sub_4A008(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_754B8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v34 - v12;
  v14 = [a1 protectedDatabase];
  if (v14)
  {
    v15 = v14;
    aBlock = 0;
    v37 = 0xE000000000000000;
    sub_75908(68);
    v42._countAndFlagsBits = 0xD000000000000010;
    v42._object = 0x8000000000079200;
    sub_75608(v42);
    v43._countAndFlagsBits = 0x6361437472617473;
    v43._object = 0xEF7865646E496568;
    sub_75608(v43);
    v44._countAndFlagsBits = 0x204D4F524620;
    v44._object = 0xE600000000000000;
    sub_75608(v44);
    v45._object = 0x80000000000791C0;
    v45._countAndFlagsBits = 0xD000000000000033;
    sub_75608(v45);
    v46._countAndFlagsBits = 0x20455245485720;
    v46._object = 0xE700000000000000;
    sub_75608(v46);
    v47._countAndFlagsBits = 0x6E6F6973726576;
    v47._object = 0xE700000000000000;
    sub_75608(v47);
    v48._countAndFlagsBits = 0xD00000000000001ELL;
    v48._object = 0x8000000000078E00;
    sub_75608(v48);
    v49._object = 0x80000000000791C0;
    v49._countAndFlagsBits = 0xD000000000000033;
    sub_75608(v49);
    v50._countAndFlagsBits = 41;
    v50._object = 0xE100000000000000;
    sub_75608(v50);
    v16 = sub_75598();

    v17 = swift_allocObject();
    *(v17 + 16) = a3;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_4E578;
    *(v18 + 24) = v17;
    v40 = sub_1B6F8;
    v41 = v18;
    aBlock = _NSConcreteStackBlock;
    v37 = 1107296256;
    v38 = sub_4F494;
    v39 = &unk_88778;
    v19 = _Block_copy(&aBlock);

    aBlock = 0;
    v20 = [v15 executeSQL:v16 error:&aBlock bindingHandler:0 enumerationHandler:v19];
    _Block_release(v19);

    if (v20)
    {
      v21 = aBlock;

      return 1;
    }

    v27 = aBlock;
    sub_74898();

    swift_willThrow();
    sub_75378();
    swift_errorRetain();
    v28 = sub_754A8();
    v29 = sub_75718();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v35 = a2;
      v32 = v31;
      *v30 = 138412290;
      swift_errorRetain();
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 4) = v33;
      *v32 = v33;
      _os_log_impl(&dword_0, v28, v29, "Failed to list all cache indexes %@", v30, 0xCu);
      sub_3D48(v32, &unk_8EB30, &unk_7A270);
      a2 = v35;
    }

    (*(v7 + 8))(v11, v6);
    if (a2)
    {
      *a2 = sub_74888();
    }
  }

  else
  {
    sub_75378();
    v23 = sub_754A8();
    v24 = sub_75718();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_0, v23, v24, "Failed to list cache indexes: no protected database", v25, 2u);
    }

    (*(v7 + 8))(v13, v6);
    if (a2)
    {
      sub_19A60();
      swift_allocError();
      *v26 = 0;
      *a2 = sub_74888();
    }
  }

  return 0;
}

uint64_t sub_4A564(uint64_t a1, uint64_t a2, char **a3)
{
  v4 = HDSQLiteColumnAsInt64();
  v5 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_674CC(0, *(v5 + 2) + 1, 1, v5);
    *a3 = v5;
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    v5 = sub_674CC((v7 > 1), v8 + 1, 1, v5);
    *a3 = v5;
  }

  *(v5 + 2) = v8 + 1;
  *&v5[8 * v8 + 32] = v4;
  return 1;
}

uint64_t sub_4A630(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v48 = a3;
  v49 = a4;
  v6 = sub_751D8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = sub_754B8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v42 - v15;
  v17 = [a1 protectedDatabase];
  if (v17)
  {
    v45 = a2;
    v46 = v14;
    v43 = v10;
    v44 = v9;
    aBlock = 0;
    v51 = 0xE000000000000000;
    v47 = v17;
    sub_75908(113);
    v56._countAndFlagsBits = 0xD000000000000010;
    v56._object = 0x8000000000079200;
    sub_75608(v56);
    v57._countAndFlagsBits = 0x6361437472617473;
    v57._object = 0xEF7865646E496568;
    sub_75608(v57);
    v58._countAndFlagsBits = 8236;
    v58._object = 0xE200000000000000;
    sub_75608(v58);
    v59._countAndFlagsBits = 0x6568636143646E65;
    v59._object = 0xED00007865646E49;
    sub_75608(v59);
    v60._countAndFlagsBits = 8236;
    v60._object = 0xE200000000000000;
    sub_75608(v60);
    v61._object = 0x80000000000773B0;
    v61._countAndFlagsBits = 0xD000000000000016;
    sub_75608(v61);
    v62._countAndFlagsBits = 0x204D4F524620;
    v62._object = 0xE600000000000000;
    sub_75608(v62);
    v63._countAndFlagsBits = 0xD000000000000033;
    v63._object = 0x80000000000791C0;
    sub_75608(v63);
    v64._countAndFlagsBits = 0x20455245485720;
    v64._object = 0xE700000000000000;
    sub_75608(v64);
    v65._countAndFlagsBits = 0x6E6F6973726576;
    v65._object = 0xE700000000000000;
    sub_75608(v65);
    v66._countAndFlagsBits = 0xD00000000000001ELL;
    v66._object = 0x8000000000078E00;
    sub_75608(v66);
    v67._countAndFlagsBits = 0xD000000000000033;
    v67._object = 0x80000000000791C0;
    sub_75608(v67);
    v68._countAndFlagsBits = 0x20444E412029;
    v68._object = 0xE600000000000000;
    sub_75608(v68);
    v69._object = 0x80000000000773B0;
    v69._countAndFlagsBits = 0xD000000000000016;
    sub_75608(v69);
    v70._countAndFlagsBits = 0x4E41203F203D3D20;
    v70._object = 0xEA00000000002044;
    sub_75608(v70);
    v71._countAndFlagsBits = 0x6361437472617473;
    v71._object = 0xEF7865646E496568;
    sub_75608(v71);
    v72._countAndFlagsBits = 0x4E41203F203D3E20;
    v72._object = 0xEA00000000002044;
    sub_75608(v72);
    v73._countAndFlagsBits = 0x6568636143646E65;
    v73._object = 0xED00007865646E49;
    sub_75608(v73);
    v74._countAndFlagsBits = 0x3B3F203D3C20;
    v74._object = 0xE600000000000000;
    sub_75608(v74);
    v18 = sub_75598();

    (*(v7 + 16))(&v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v48, v6);
    v19 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v20 = swift_allocObject();
    (*(v7 + 32))(v20 + v19, &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    v21 = swift_allocObject();
    *(v21 + 16) = sub_4E5C4;
    *(v21 + 24) = v20;
    v54 = sub_303D0;
    v55 = v21;
    aBlock = _NSConcreteStackBlock;
    v51 = 1107296256;
    v52 = sub_644E0;
    v53 = &unk_88868;
    v22 = _Block_copy(&aBlock);

    v23 = swift_allocObject();
    *(v23 + 16) = v49;
    v24 = swift_allocObject();
    *(v24 + 16) = sub_4E5F0;
    *(v24 + 24) = v23;
    v54 = sub_43BA8;
    v55 = v24;
    aBlock = _NSConcreteStackBlock;
    v51 = 1107296256;
    v52 = sub_4F494;
    v53 = &unk_888E0;
    v25 = _Block_copy(&aBlock);

    aBlock = 0;
    v26 = v47;
    v27 = [v47 executeSQL:v18 error:&aBlock bindingHandler:v22 enumerationHandler:v25];
    _Block_release(v25);
    _Block_release(v22);

    if (v27)
    {
      v28 = aBlock;

      return 1;
    }

    v34 = aBlock;
    sub_74898();

    swift_willThrow();
    v35 = v46;
    sub_75378();
    swift_errorRetain();
    v36 = sub_754A8();
    v37 = sub_75718();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 138412290;
      swift_errorRetain();
      v40 = _swift_stdlib_bridgeErrorToNSError();
      *(v38 + 4) = v40;
      *v39 = v40;
      _os_log_impl(&dword_0, v36, v37, "Failed to list all cache indexes %@", v38, 0xCu);
      sub_3D48(v39, &unk_8EB30, &unk_7A270);

      v35 = v46;
    }

    (*(v43 + 8))(v35, v44);
    v41 = v45;
    if (v45)
    {
      *v41 = sub_74888();
    }
  }

  else
  {
    sub_75378();
    v30 = sub_754A8();
    v31 = sub_75718();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_0, v30, v31, "Failed to list cache indexes: no protected database", v32, 2u);
    }

    (*(v10 + 8))(v16, v9);
    if (a2)
    {
      sub_19A60();
      swift_allocError();
      *v33 = 0;
      *a2 = sub_74888();
    }
  }

  return 0;
}

uint64_t sub_4AE0C(sqlite3_stmt *a1)
{
  v2 = sub_74CA8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_750F8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_751C8();
  sub_750E8();
  (*(v8 + 8))(v11, v7);
  if (qword_8E9E0 != -1)
  {
    swift_once();
  }

  v12 = qword_90000;
  v13 = sub_755C8();

  sqlite3_bind_text(a1, 1, (v13 + 32), -1, v12);

  sub_751B8();
  v14 = sub_74C98();
  v15 = *(v3 + 8);
  v15(v6, v2);
  sqlite3_bind_int64(a1, 2, v14);
  sub_75198();
  v16 = sub_74C98();
  v15(v6, v2);
  return sqlite3_bind_int64(a1, 3, v16);
}

uint64_t sub_4B064(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v51 = a3;
  v52 = sub_750F8();
  v7 = *(v52 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v52);
  v50 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_754B8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v44 - v15;
  v17 = [a1 protectedDatabase];
  if (v17)
  {
    v18 = v17;
    v46 = a2;
    v47 = v14;
    v44 = v10;
    v45 = v9;
    aBlock = 0;
    v54 = 0xE000000000000000;
    sub_75908(177);
    v59._countAndFlagsBits = 0xD000000000000010;
    v59._object = 0x8000000000079200;
    sub_75608(v59);
    v60._countAndFlagsBits = 0x6361437472617473;
    v60._object = 0xEF7865646E496568;
    sub_75608(v60);
    v61._countAndFlagsBits = 8236;
    v61._object = 0xE200000000000000;
    sub_75608(v61);
    v48 = a4;
    v62._countAndFlagsBits = 0x6568636143646E65;
    v62._object = 0xED00007865646E49;
    sub_75608(v62);
    v63._countAndFlagsBits = 8236;
    v63._object = 0xE200000000000000;
    sub_75608(v63);
    v64._object = 0x80000000000773B0;
    v64._countAndFlagsBits = 0xD000000000000016;
    sub_75608(v64);
    v65._countAndFlagsBits = 0x204D4F524620;
    v65._object = 0xE600000000000000;
    sub_75608(v65);
    v66._object = 0x80000000000791C0;
    v66._countAndFlagsBits = 0xD000000000000033;
    sub_75608(v66);
    v67._countAndFlagsBits = 0x20455245485720;
    v67._object = 0xE700000000000000;
    sub_75608(v67);
    v68._countAndFlagsBits = 0x6568636143646E65;
    v68._object = 0xED00007865646E49;
    sub_75608(v68);
    v69._countAndFlagsBits = 0x454C455328203D20;
    v69._object = 0xEF2858414D205443;
    sub_75608(v69);
    v70._countAndFlagsBits = 0x6568636143646E65;
    v70._object = 0xED00007865646E49;
    sub_75608(v70);
    v71._countAndFlagsBits = 0x204D4F52462029;
    v71._object = 0xE700000000000000;
    sub_75608(v71);
    v72._object = 0x80000000000791C0;
    v72._countAndFlagsBits = 0xD000000000000033;
    sub_75608(v72);
    v73._countAndFlagsBits = 0x20455245485720;
    v73._object = 0xE700000000000000;
    sub_75608(v73);
    v74._countAndFlagsBits = 0x6E6F6973726576;
    v74._object = 0xE700000000000000;
    sub_75608(v74);
    v49 = v18;
    v75._object = 0x8000000000078E00;
    v75._countAndFlagsBits = 0xD00000000000001ELL;
    sub_75608(v75);
    v76._object = 0x80000000000791C0;
    v76._countAndFlagsBits = 0xD000000000000033;
    sub_75608(v76);
    v77._countAndFlagsBits = 0x20444E412029;
    v77._object = 0xE600000000000000;
    sub_75608(v77);
    v78._object = 0x80000000000773B0;
    v78._countAndFlagsBits = 0xD000000000000016;
    sub_75608(v78);
    v79._countAndFlagsBits = 0x4120293F203D3D20;
    v79._object = 0xEB0000000020444ELL;
    sub_75608(v79);
    v80._countAndFlagsBits = 0x6E6F6973726576;
    v80._object = 0xE700000000000000;
    sub_75608(v80);
    v81._object = 0x8000000000078E00;
    v19 = v49;
    v81._countAndFlagsBits = 0xD00000000000001ELL;
    sub_75608(v81);
    v82._object = 0x80000000000791C0;
    v82._countAndFlagsBits = 0xD000000000000033;
    sub_75608(v82);
    v83._countAndFlagsBits = 0x20444E412029;
    v83._object = 0xE600000000000000;
    sub_75608(v83);
    v84._object = 0x80000000000773B0;
    v84._countAndFlagsBits = 0xD000000000000016;
    sub_75608(v84);
    v85._countAndFlagsBits = 0x3B3F203D3D20;
    v85._object = 0xE600000000000000;
    sub_75608(v85);
    v20 = sub_75598();

    v21 = v50;
    v22 = v52;
    (*(v7 + 16))(v50, v51, v52);
    v23 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v24 = swift_allocObject();
    (*(v7 + 32))(v24 + v23, v21, v22);
    v25 = swift_allocObject();
    *(v25 + 16) = sub_4E870;
    *(v25 + 24) = v24;
    v57 = sub_303D0;
    v58 = v25;
    aBlock = _NSConcreteStackBlock;
    v54 = 1107296256;
    v55 = sub_644E0;
    v56 = &unk_889D0;
    v26 = _Block_copy(&aBlock);

    v27 = swift_allocObject();
    *(v27 + 16) = v48;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_4E9C0;
    *(v28 + 24) = v27;
    v57 = sub_43BA8;
    v58 = v28;
    aBlock = _NSConcreteStackBlock;
    v54 = 1107296256;
    v55 = sub_4F494;
    v56 = &unk_88A48;
    v29 = _Block_copy(&aBlock);

    aBlock = 0;
    LOBYTE(v21) = [v19 executeSQL:v20 error:&aBlock bindingHandler:v26 enumerationHandler:v29];
    _Block_release(v29);
    _Block_release(v26);

    if (v21)
    {
      v30 = aBlock;

      return 1;
    }

    v36 = aBlock;
    sub_74898();

    swift_willThrow();
    v37 = v47;
    sub_75378();
    swift_errorRetain();
    v38 = sub_754A8();
    v39 = sub_75718();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138412290;
      swift_errorRetain();
      v42 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 4) = v42;
      *v41 = v42;
      _os_log_impl(&dword_0, v38, v39, "Failed to list all cache indexes %@", v40, 0xCu);
      sub_3D48(v41, &unk_8EB30, &unk_7A270);
      v19 = v49;

      v37 = v47;
    }

    (*(v44 + 8))(v37, v45);
    v43 = v46;
    if (v46)
    {
      *v43 = sub_74888();
    }
  }

  else
  {
    sub_75378();
    v32 = sub_754A8();
    v33 = sub_75718();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_0, v32, v33, "Failed to list cache indexes: no protected database", v34, 2u);
    }

    (*(v10 + 8))(v16, v9);
    if (a2)
    {
      sub_19A60();
      swift_allocError();
      *v35 = 0;
      *a2 = sub_74888();
    }
  }

  return 0;
}

uint64_t sub_4B8E4(sqlite3_stmt *a1)
{
  sub_750E8();
  if (qword_8E9E0 != -1)
  {
    swift_once();
  }

  v2 = qword_90000;
  v3 = sub_755C8();

  sqlite3_bind_text(a1, 1, (v3 + 32), -1, v2);

  sub_750E8();
  v4 = sub_755C8();

  sqlite3_bind_text(a1, 2, (v4 + 32), -1, v2);
}

uint64_t sub_4B9DC(uint64_t a1, uint64_t a2, size_t *a3)
{
  v5 = sub_38F8(&qword_8EB18, &qword_7A950);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v24 - v7;
  v9 = sub_751D8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v24 - v15;
  sub_4E9F8(a1, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_3D48(v8, &qword_8EB18, &qword_7A950);
  }

  else
  {
    v17 = *(v10 + 32);
    v17(v16, v8, v9);
    (*(v10 + 16))(v14, v16, v9);
    v18 = *a3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v18 = sub_675F4(0, v18[2] + 1, 1, v18);
      *a3 = v18;
    }

    v21 = v18[2];
    v20 = v18[3];
    if (v21 >= v20 >> 1)
    {
      *a3 = sub_675F4(v20 > 1, v21 + 1, 1, v18);
    }

    (*(v10 + 8))(v16, v9);
    v22 = *a3;
    *(v22 + 2) = v21 + 1;
    v17(&v22[((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v21], v14, v9);
  }

  return 1;
}

Swift::Int sub_4BC50(void **a1)
{
  v2 = *(sub_751D8() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_430B0(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_4BD7C(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_4BCF8(uint64_t (*a1)(uint64_t *, uint64_t *), uint64_t a2)
{
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_430C4(v5);
  }

  v7 = *(v5 + 2);
  result = sub_4BEA8(a1, a2);
  *v2 = v5;
  return result;
}

Swift::Int sub_4BD7C(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_75A28(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_751D8();
        v6 = sub_756C8();
        v6[2] = v5;
      }

      v7 = *(sub_751D8() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_4C420(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_4BFB0(0, v2, 1, a1);
  }

  return result;
}

Swift::Int sub_4BEA8(uint64_t (*a1)(uint64_t *, uint64_t *), uint64_t a2)
{
  v5 = v2[1];
  result = sub_75A28(v5);
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      if (v5 < 2)
      {
        v8 = _swiftEmptyArrayStorage;
      }

      else
      {
        v8 = sub_756C8();
        v8[2] = v5 / 2;
      }

      v10[0] = v8 + 4;
      v10[1] = v5 / 2;
      v9 = v8;
      sub_4D020(v10, v11, v2, a1, a2, v7);
      v9[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return sub_4C350(0, v5, 1, a1);
  }

  return result;
}

uint64_t sub_4BFB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v62 = sub_74CA8();
  v8 = *(v62 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v62);
  v61 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v60 = &v43 - v12;
  v13 = sub_751D8();
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v53 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v59 = &v43 - v18;
  result = __chkstk_darwin(v17);
  v58 = &v43 - v21;
  v45 = a2;
  if (a3 != a2)
  {
    v22 = *a4;
    v24 = *(v20 + 16);
    v23 = v20 + 16;
    v25 = *(v23 + 56);
    v55 = (v8 + 8);
    v56 = v24;
    v54 = (v23 - 8);
    v57 = v23;
    v26 = (v22 + v25 * (a3 - 1));
    v50 = -v25;
    v51 = (v23 + 16);
    v27 = a1 - a3;
    v52 = v22;
    v44 = v25;
    v28 = v22 + v25 * a3;
    v29 = v60;
LABEL_5:
    v48 = v26;
    v49 = a3;
    v46 = v28;
    v47 = v27;
    v63 = v27;
    while (1)
    {
      v30 = v58;
      v31 = v56;
      v56(v58, v28, v13);
      v32 = v13;
      v33 = v59;
      v31(v59, v26, v32);
      sub_75198();
      v34 = v61;
      sub_75198();
      v64 = sub_74C78();
      v35 = *v55;
      v36 = v34;
      v37 = v62;
      (*v55)(v36, v62);
      v35(v29, v37);
      v38 = *v54;
      v39 = v33;
      v13 = v32;
      (*v54)(v39, v32);
      result = v38(v30, v32);
      if ((v64 & 1) == 0)
      {
LABEL_4:
        a3 = v49 + 1;
        v26 = &v48[v44];
        v27 = v47 - 1;
        v28 = v46 + v44;
        if (v49 + 1 == v45)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v52)
      {
        break;
      }

      v40 = *v51;
      v41 = v53;
      (*v51)(v53, v28, v32);
      swift_arrayInitWithTakeFrontToBack();
      result = v40(v26, v41, v32);
      v26 += v50;
      v28 += v50;
      if (__CFADD__(v63++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_4C350(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t *))
{
  if (a3 != a2)
  {
    v7 = a3;
    v9 = *v4;
    v10 = *v4 + 8 * a3 - 8;
    v11 = result - a3;
LABEL_4:
    v12 = *(v9 + 8 * v7);
    v13 = v11;
    v14 = v10;
    while (1)
    {
      v18 = v12;
      v17 = *v14;
      result = a4(&v18, &v17);
      if (v5)
      {
        break;
      }

      if (result)
      {
        if (!v9)
        {
          __break(1u);
          return result;
        }

        v15 = *v14;
        v12 = v14[1];
        *v14 = v12;
        v14[1] = v15;
        --v14;
        if (!__CFADD__(v13++, 1))
        {
          continue;
        }
      }

      ++v7;
      v10 += 8;
      --v11;
      if (v7 != a2)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_4C420(char **a1, uint64_t a2, char *a3, uint64_t a4)
{
  v5 = v4;
  v139 = a1;
  v161 = sub_74CA8();
  v8 = *(v161 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v161);
  v160 = &v135 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v159 = &v135 - v12;
  v13 = sub_751D8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 8);
  v16 = __chkstk_darwin(v13);
  v142 = &v135 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v151 = &v135 - v19;
  v20 = __chkstk_darwin(v18);
  v158 = &v135 - v21;
  result = __chkstk_darwin(v20);
  v162 = &v135 - v23;
  v24 = *(a3 + 1);
  v147 = a3;
  if (v24 < 1)
  {
    v26 = _swiftEmptyArrayStorage;
LABEL_96:
    v13 = v26;
    v26 = *v139;
    if (!*v139)
    {
      goto LABEL_134;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v54 = v147;
    if ((result & 1) == 0)
    {
LABEL_128:
      result = sub_4249C(v13);
      v13 = result;
    }

    v164 = v13;
    v131 = *(v13 + 16);
    if (v131 >= 2)
    {
      while (*v54)
      {
        v132 = *(v13 + 16 * v131);
        v133 = *(v13 + 16 * (v131 - 1) + 40);
        sub_4D638(*v54 + *(v14 + 9) * v132, *v54 + *(v14 + 9) * *(v13 + 16 * (v131 - 1) + 32), *v54 + *(v14 + 9) * v133, v26);
        if (v5)
        {
        }

        if (v133 < v132)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_4249C(v13);
        }

        if (v131 - 2 >= *(v13 + 16))
        {
          goto LABEL_122;
        }

        v134 = (v13 + 16 * v131);
        *v134 = v132;
        v134[1] = v133;
        v164 = v13;
        result = sub_42410(v131 - 1);
        v13 = v164;
        v131 = *(v164 + 16);
        if (v131 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v135 = a4;
  v25 = 0;
  v155 = (v8 + 8);
  v156 = v14 + 16;
  v153 = (v14 + 32);
  v154 = v14 + 8;
  v26 = _swiftEmptyArrayStorage;
  v157 = v13;
  v138 = v14;
  while (1)
  {
    v27 = v25 + 1;
    if (v25 + 1 >= v24)
    {
      v43 = v25 + 1;
      v54 = v147;
    }

    else
    {
      v148 = v24;
      v136 = v26;
      v137 = v5;
      v28 = v25;
      v140 = v25;
      v29 = *v147;
      v163 = v29;
      v30 = *(v14 + 9);
      v31 = (v29 + v30 * v27);
      v32 = v13;
      v33 = *(v14 + 2);
      (v33)(v162, v31, v13);
      v34 = v158;
      v149 = v33;
      (v33)(v158, v29 + v30 * v28, v32);
      v35 = v159;
      sub_75198();
      v36 = v160;
      sub_75198();
      LODWORD(v150) = sub_74C78();
      v37 = *v155;
      v38 = v36;
      v39 = v161;
      (*v155)(v38, v161);
      v146 = v37;
      (v37)(v35, v39);
      v40 = *(v138 + 1);
      v26 = v154;
      v40(v34, v32);
      v145 = v40;
      result = (v40)(v162, v32);
      v41 = v140 + 2;
      v152 = v30;
      v42 = v163 + v30 * (v140 + 2);
      while (1)
      {
        v43 = v148;
        if (v148 == v41)
        {
          break;
        }

        v44 = v157;
        v45 = v149;
        v149();
        v46 = v158;
        v45(v158, v31, v44);
        v47 = v159;
        sub_75198();
        v48 = v160;
        sub_75198();
        LOBYTE(v163) = sub_74C78() & 1;
        LODWORD(v163) = v163;
        v49 = v48;
        v50 = v161;
        v51 = v31;
        v52 = v146;
        (v146)(v49, v161);
        v52(v47, v50);
        v26 = v154;
        v53 = v145;
        (v145)(v46, v44);
        result = v53(v162, v44);
        ++v41;
        v42 += v152;
        v31 = &v152[v51];
        if ((v150 & 1) != v163)
        {
          v43 = v41 - 1;
          goto LABEL_9;
        }
      }

      v5 = v137;
      v54 = v147;
      v14 = v138;
      v13 = v157;
      v25 = v140;
      if ((v150 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_9:
      if (v43 < v140)
      {
        goto LABEL_125;
      }

      if (v140 < v43)
      {
        v55 = v43;
        v56 = v152 * (v43 - 1);
        v57 = v43 * v152;
        v148 = v43;
        v58 = v140;
        v59 = v140 * v152;
        do
        {
          if (v58 != --v55)
          {
            v60 = *v54;
            if (!v60)
            {
              goto LABEL_131;
            }

            v61 = *v153;
            (*v153)(v142, v60 + v59, v13);
            if (v59 < v56 || v60 + v59 >= (v60 + v57))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v59 != v56)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = (v61)(v60 + v56, v142, v13);
            v54 = v147;
          }

          ++v58;
          v56 -= v152;
          v57 -= v152;
          v59 += v152;
        }

        while (v58 < v55);
        v5 = v137;
        v14 = v138;
        v26 = v136;
        v25 = v140;
        v43 = v148;
      }

      else
      {
LABEL_23:
        v26 = v136;
      }
    }

    v62 = *(v54 + 1);
    if (v43 < v62)
    {
      if (__OFSUB__(v43, v25))
      {
        goto LABEL_124;
      }

      if (v43 - v25 < v135)
      {
        if (__OFADD__(v25, v135))
        {
          goto LABEL_126;
        }

        if (v25 + v135 >= v62)
        {
          v63 = *(v54 + 1);
        }

        else
        {
          v63 = v25 + v135;
        }

        if (v63 < v25)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v43 != v63)
        {
          break;
        }
      }
    }

    v64 = v43;
    if (v43 < v25)
    {
      goto LABEL_123;
    }

LABEL_35:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_42684(0, *(v26 + 2) + 1, 1, v26);
      v26 = result;
    }

    v66 = *(v26 + 2);
    v65 = *(v26 + 3);
    v67 = v66 + 1;
    v54 = v14;
    if (v66 >= v65 >> 1)
    {
      result = sub_42684((v65 > 1), v66 + 1, 1, v26);
      v26 = result;
    }

    *(v26 + 2) = v67;
    v68 = &v26[16 * v66];
    *(v68 + 4) = v25;
    *(v68 + 5) = v64;
    v69 = *v139;
    if (!*v139)
    {
      goto LABEL_133;
    }

    v143 = v64;
    if (v66)
    {
      v14 = v69;
      while (1)
      {
        v70 = v67 - 1;
        if (v67 >= 4)
        {
          break;
        }

        if (v67 == 3)
        {
          v71 = *(v26 + 4);
          v72 = *(v26 + 5);
          v81 = __OFSUB__(v72, v71);
          v73 = v72 - v71;
          v74 = v81;
LABEL_55:
          if (v74)
          {
            goto LABEL_112;
          }

          v87 = &v26[16 * v67];
          v89 = *v87;
          v88 = *(v87 + 1);
          v90 = __OFSUB__(v88, v89);
          v91 = v88 - v89;
          v92 = v90;
          if (v90)
          {
            goto LABEL_115;
          }

          v93 = &v26[16 * v70 + 32];
          v95 = *v93;
          v94 = *(v93 + 1);
          v81 = __OFSUB__(v94, v95);
          v96 = v94 - v95;
          if (v81)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v91, v96))
          {
            goto LABEL_119;
          }

          if (v91 + v96 >= v73)
          {
            if (v73 < v96)
            {
              v70 = v67 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v97 = &v26[16 * v67];
        v99 = *v97;
        v98 = *(v97 + 1);
        v81 = __OFSUB__(v98, v99);
        v91 = v98 - v99;
        v92 = v81;
LABEL_69:
        if (v92)
        {
          goto LABEL_114;
        }

        v100 = &v26[16 * v70];
        v102 = *(v100 + 4);
        v101 = *(v100 + 5);
        v81 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v81)
        {
          goto LABEL_117;
        }

        if (v103 < v91)
        {
          goto LABEL_3;
        }

LABEL_76:
        v108 = v70 - 1;
        if (v70 - 1 >= v67)
        {
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*v147)
        {
          goto LABEL_130;
        }

        v109 = *&v26[16 * v108 + 32];
        v110 = *&v26[16 * v70 + 40];
        sub_4D638(*v147 + *(v54 + 9) * v109, *v147 + *(v54 + 9) * *&v26[16 * v70 + 32], *v147 + *(v54 + 9) * v110, v14);
        if (v5)
        {
        }

        if (v110 < v109)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_4249C(v26);
        }

        if (v108 >= *(v26 + 2))
        {
          goto LABEL_109;
        }

        v111 = &v26[16 * v108];
        *(v111 + 4) = v109;
        *(v111 + 5) = v110;
        v164 = v26;
        result = sub_42410(v70);
        v26 = v164;
        v67 = *(v164 + 16);
        if (v67 <= 1)
        {
          goto LABEL_3;
        }
      }

      v75 = &v26[16 * v67 + 32];
      v76 = *(v75 - 64);
      v77 = *(v75 - 56);
      v81 = __OFSUB__(v77, v76);
      v78 = v77 - v76;
      if (v81)
      {
        goto LABEL_110;
      }

      v80 = *(v75 - 48);
      v79 = *(v75 - 40);
      v81 = __OFSUB__(v79, v80);
      v73 = v79 - v80;
      v74 = v81;
      if (v81)
      {
        goto LABEL_111;
      }

      v82 = &v26[16 * v67];
      v84 = *v82;
      v83 = *(v82 + 1);
      v81 = __OFSUB__(v83, v84);
      v85 = v83 - v84;
      if (v81)
      {
        goto LABEL_113;
      }

      v81 = __OFADD__(v73, v85);
      v86 = v73 + v85;
      if (v81)
      {
        goto LABEL_116;
      }

      if (v86 >= v78)
      {
        v104 = &v26[16 * v70 + 32];
        v106 = *v104;
        v105 = *(v104 + 1);
        v81 = __OFSUB__(v105, v106);
        v107 = v105 - v106;
        if (v81)
        {
          goto LABEL_120;
        }

        if (v73 < v107)
        {
          v70 = v67 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v24 = *(v147 + 1);
    v25 = v143;
    v14 = v54;
    if (v143 >= v24)
    {
      goto LABEL_96;
    }
  }

  v136 = v26;
  v137 = v5;
  v112 = *v54;
  v113 = *(v14 + 9);
  v152 = *(v14 + 2);
  v114 = (v112 + v113 * (v43 - 1));
  v149 = -v113;
  v140 = v25;
  v115 = (v25 - v43);
  v150 = v112;
  v141 = v113;
  v116 = v112 + v43 * v113;
  v143 = v63;
LABEL_87:
  v148 = v43;
  v144 = v116;
  v145 = v115;
  v117 = v116;
  v146 = v114;
  v118 = v114;
  while (1)
  {
    v54 = v162;
    v119 = v152;
    (v152)(v162, v117, v13);
    v120 = v158;
    v119(v158, v118, v13);
    v121 = v159;
    sub_75198();
    v122 = v160;
    sub_75198();
    LODWORD(v163) = sub_74C78();
    v123 = *v155;
    v124 = v122;
    v125 = v161;
    (*v155)(v124, v161);
    v126 = v121;
    v13 = v157;
    v123(v126, v125);
    v127 = *v154;
    (*v154)(v120, v13);
    result = v127(v54, v13);
    if ((v163 & 1) == 0)
    {
LABEL_86:
      v43 = v148 + 1;
      v114 = &v146[v141];
      v115 = v145 - 1;
      v64 = v143;
      v116 = v144 + v141;
      if (v148 + 1 != v143)
      {
        goto LABEL_87;
      }

      v5 = v137;
      v14 = v138;
      v26 = v136;
      v25 = v140;
      if (v143 < v140)
      {
        goto LABEL_123;
      }

      goto LABEL_35;
    }

    if (!v150)
    {
      break;
    }

    v128 = *v153;
    v129 = v151;
    (*v153)(v151, v117, v13);
    swift_arrayInitWithTakeFrontToBack();
    v128(v118, v129, v13);
    v118 = v149 + v118;
    v117 += v149;
    if (__CFADD__(v115++, 1))
    {
      goto LABEL_86;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_4D020(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t (*a4)(uint64_t *, uint64_t *), uint64_t a5, uint64_t a6)
{
  v89 = result;
  v9 = a3[1];
  if (v9 < 1)
  {
    v11 = _swiftEmptyArrayStorage;
LABEL_91:
    v7 = *v89;
    if (*v89)
    {
      v9 = v6;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_120;
      }

      goto LABEL_93;
    }

    goto LABEL_129;
  }

  v10 = 0;
  v11 = _swiftEmptyArrayStorage;
  while (1)
  {
    v12 = v10;
    v13 = v10 + 1;
    if (v10 + 1 >= v9)
    {
      goto LABEL_15;
    }

    v14 = *a3;
    v15 = *(*a3 + 8 * v13);
    v16 = *(*a3 + 8 * v10);
    v91 = *(*a3 + 8 * v12);
    v92 = v15;
    result = a4(&v92, &v91);
    if (v6)
    {
    }

    v17 = v12;
    v18 = result;
    v19 = (v14 + 8 * v17 + 16);
    v86 = v17;
    v7 = v17;
    while (v9 - 2 != v7)
    {
      v20 = *v19;
      v91 = *(v19 - 1);
      v92 = v20;
      result = a4(&v92, &v91);
      ++v7;
      ++v19;
      if ((v18 ^ result))
      {
        v9 = v7 + 1;
        if ((v18 & 1) == 0)
        {
          goto LABEL_10;
        }

LABEL_12:
        v12 = v86;
        if (v9 >= v86)
        {
          if (v86 <= v7)
          {
            v74 = v9 - 1;
            v75 = v86;
            do
            {
              if (v75 != v74)
              {
                v77 = *a3;
                if (!*a3)
                {
                  goto LABEL_127;
                }

                v78 = *(v77 + 8 * v75);
                *(v77 + 8 * v75) = *(v77 + 8 * v74);
                *(v77 + 8 * v74) = v78;
              }
            }

            while (++v75 < v74--);
          }

          v13 = v9;
          goto LABEL_15;
        }

LABEL_123:
        __break(1u);
LABEL_124:
        __break(1u);
LABEL_125:
        __break(1u);
        goto LABEL_126;
      }
    }

    v7 = v9 - 1;
    if (v18)
    {
      goto LABEL_12;
    }

LABEL_10:
    v13 = v9;
    v12 = v86;
LABEL_15:
    v21 = a3[1];
    if (v13 >= v21)
    {
      goto LABEL_132;
    }

    if (__OFSUB__(v13, v12))
    {
      goto LABEL_119;
    }

    if (v13 - v12 >= a6)
    {
      goto LABEL_132;
    }

    if (__OFADD__(v12, a6))
    {
      __break(1u);
LABEL_122:
      __break(1u);
      goto LABEL_123;
    }

    if (v12 + a6 >= v21)
    {
      v22 = a3[1];
    }

    else
    {
      v22 = v12 + a6;
    }

    if (v22 < v12)
    {
      goto LABEL_122;
    }

    if (v13 == v22)
    {
LABEL_132:
      if (v13 < v12)
      {
        goto LABEL_118;
      }
    }

    else
    {
      v68 = v12;
      v69 = *a3;
      v7 = *a3 + 8 * v13 - 8;
      v88 = v68;
      v9 = v68 - v13;
      v83 = v22;
      do
      {
        v70 = *(v69 + 8 * v13);
        v71 = v9;
        v84 = v7;
        do
        {
          v92 = v70;
          v91 = *v7;
          result = a4(&v92, &v91);
          if (v6)
          {
          }

          if ((result & 1) == 0)
          {
            break;
          }

          if (!v69)
          {
            goto LABEL_125;
          }

          v72 = *v7;
          v70 = *(v7 + 8);
          *v7 = v70;
          *(v7 + 8) = v72;
          v7 -= 8;
        }

        while (!__CFADD__(v71++, 1));
        ++v13;
        v7 = v84 + 8;
        --v9;
      }

      while (v13 != v83);
      v13 = v83;
      v12 = v88;
      if (v83 < v88)
      {
        goto LABEL_118;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_42684(0, *(v11 + 2) + 1, 1, v11);
      v11 = result;
    }

    v7 = *(v11 + 2);
    v23 = *(v11 + 3);
    v24 = v7 + 1;
    if (v7 >= v23 >> 1)
    {
      result = sub_42684((v23 > 1), v7 + 1, 1, v11);
      v11 = result;
    }

    *(v11 + 2) = v24;
    v25 = &v11[16 * v7];
    *(v25 + 4) = v12;
    *(v25 + 5) = v13;
    v26 = *v89;
    if (!*v89)
    {
      goto LABEL_128;
    }

    v87 = v13;
    if (v7)
    {
      break;
    }

LABEL_3:
    v9 = a3[1];
    v10 = v87;
    if (v87 >= v9)
    {
      goto LABEL_91;
    }
  }

  while (1)
  {
    v27 = v24 - 1;
    if (v24 >= 4)
    {
      v32 = &v11[16 * v24 + 32];
      v33 = *(v32 - 64);
      v34 = *(v32 - 56);
      v38 = __OFSUB__(v34, v33);
      v35 = v34 - v33;
      if (v38)
      {
        goto LABEL_105;
      }

      v37 = *(v32 - 48);
      v36 = *(v32 - 40);
      v38 = __OFSUB__(v36, v37);
      v30 = v36 - v37;
      v31 = v38;
      if (v38)
      {
        goto LABEL_106;
      }

      v39 = &v11[16 * v24];
      v41 = *v39;
      v40 = *(v39 + 1);
      v38 = __OFSUB__(v40, v41);
      v42 = v40 - v41;
      if (v38)
      {
        goto LABEL_108;
      }

      v38 = __OFADD__(v30, v42);
      v43 = v30 + v42;
      if (v38)
      {
        goto LABEL_111;
      }

      if (v43 >= v35)
      {
        v61 = &v11[16 * v27 + 32];
        v63 = *v61;
        v62 = *(v61 + 1);
        v38 = __OFSUB__(v62, v63);
        v64 = v62 - v63;
        if (v38)
        {
          goto LABEL_117;
        }

        if (v30 < v64)
        {
          v27 = v24 - 2;
        }

        goto LABEL_65;
      }

      goto LABEL_44;
    }

    if (v24 == 3)
    {
      v28 = *(v11 + 4);
      v29 = *(v11 + 5);
      v38 = __OFSUB__(v29, v28);
      v30 = v29 - v28;
      v31 = v38;
LABEL_44:
      if (v31)
      {
        goto LABEL_107;
      }

      v44 = &v11[16 * v24];
      v46 = *v44;
      v45 = *(v44 + 1);
      v47 = __OFSUB__(v45, v46);
      v48 = v45 - v46;
      v49 = v47;
      if (v47)
      {
        goto LABEL_110;
      }

      v50 = &v11[16 * v27 + 32];
      v52 = *v50;
      v51 = *(v50 + 1);
      v38 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v38)
      {
        goto LABEL_113;
      }

      if (__OFADD__(v48, v53))
      {
        goto LABEL_114;
      }

      if (v48 + v53 >= v30)
      {
        if (v30 < v53)
        {
          v27 = v24 - 2;
        }

        goto LABEL_65;
      }

      goto LABEL_58;
    }

    v54 = &v11[16 * v24];
    v56 = *v54;
    v55 = *(v54 + 1);
    v38 = __OFSUB__(v55, v56);
    v48 = v55 - v56;
    v49 = v38;
LABEL_58:
    if (v49)
    {
      goto LABEL_109;
    }

    v57 = &v11[16 * v27];
    v59 = *(v57 + 4);
    v58 = *(v57 + 5);
    v38 = __OFSUB__(v58, v59);
    v60 = v58 - v59;
    if (v38)
    {
      goto LABEL_112;
    }

    if (v60 < v48)
    {
      goto LABEL_3;
    }

LABEL_65:
    v9 = v27 - 1;
    if (v27 - 1 >= v24)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_124;
    }

    v65 = *&v11[16 * v9 + 32];
    v66 = *&v11[16 * v27 + 40];
    sub_4DD14((*a3 + 8 * v65), (*a3 + 8 * *&v11[16 * v27 + 32]), (*a3 + 8 * v66), v26, a4);
    if (v6)
    {
    }

    if (v66 < v65)
    {
      goto LABEL_103;
    }

    v7 = 0;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_4249C(v11);
    }

    if (v9 >= *(v11 + 2))
    {
      goto LABEL_104;
    }

    v67 = &v11[16 * v9];
    *(v67 + 4) = v65;
    *(v67 + 5) = v66;
    v93 = v11;
    result = sub_42410(v27);
    v11 = v93;
    v24 = *(v93 + 2);
    if (v24 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  result = sub_4249C(v11);
  v11 = result;
LABEL_93:
  v93 = v11;
  v79 = *(v11 + 2);
  if (v79 < 2)
  {
  }

  while (*a3)
  {
    v80 = *&v11[16 * v79];
    v81 = *&v11[16 * v79 + 24];
    sub_4DD14((*a3 + 8 * v80), (*a3 + 8 * *&v11[16 * v79 + 16]), (*a3 + 8 * v81), v7, a4);
    if (v9)
    {
    }

    if (v81 < v80)
    {
      goto LABEL_115;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_4249C(v11);
    }

    if (v79 - 2 >= *(v11 + 2))
    {
      goto LABEL_116;
    }

    v82 = &v11[16 * v79];
    *v82 = v80;
    *(v82 + 1) = v81;
    v93 = v11;
    result = sub_42410(v79 - 1);
    v11 = v93;
    v79 = *(v93 + 2);
    if (v79 <= 1)
    {
    }
  }

LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
  return result;
}

uint64_t sub_4D638(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v75 = a3;
  v70 = sub_74CA8();
  v7 = *(v70 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v70);
  v69 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v68 = &v58 - v11;
  v74 = sub_751D8();
  v12 = *(v74 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v74);
  v67 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v14);
  v72 = &v58 - v17;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_61;
  }

  v20 = v75 - a2;
  if (v75 - a2 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_62;
  }

  v21 = (a2 - a1) / v19;
  v78 = a1;
  v77 = a4;
  if (v21 >= v20 / v19)
  {
    v23 = v20 / v19 * v19;
    if (a4 < a2 || a2 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v40 = a4 + v23;
    if (v23 >= 1)
    {
      v41 = -v19;
      v62 = (v7 + 8);
      v63 = (v12 + 16);
      v60 = a4;
      v61 = (v12 + 8);
      v42 = v40;
      v73 = a1;
      v64 = -v19;
      v43 = v74;
      while (2)
      {
        while (1)
        {
          v58 = v40;
          v44 = a2;
          v45 = a2 + v41;
          v65 = v44;
          v66 = v45;
          while (1)
          {
            v46 = v75;
            if (v44 <= a1)
            {
              v78 = v44;
              v76 = v58;
              goto LABEL_59;
            }

            v59 = v40;
            v75 += v41;
            v47 = v42 + v41;
            v48 = *v63;
            (*v63)();
            v49 = v67;
            (v48)(v67, v45, v43);
            v50 = v68;
            sub_75198();
            v51 = v69;
            sub_75198();
            v71 = sub_74C78();
            v52 = *v62;
            v53 = v51;
            v54 = v70;
            (*v62)(v53, v70);
            v52(v50, v54);
            v55 = *v61;
            (*v61)(v49, v43);
            v55(v72, v43);
            if (v71)
            {
              break;
            }

            v40 = v47;
            v56 = v60;
            if (v46 < v42 || v75 >= v42)
            {
              swift_arrayInitWithTakeFrontToBack();
              v45 = v66;
              v41 = v64;
            }

            else
            {
              v45 = v66;
              v41 = v64;
              if (v46 != v42)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v42 = v47;
            a1 = v73;
            v44 = v65;
            if (v47 <= v56)
            {
              a2 = v65;
              goto LABEL_58;
            }
          }

          v57 = v60;
          if (v46 < v65 || v75 >= v65)
          {
            break;
          }

          a2 = v66;
          a1 = v73;
          v40 = v59;
          v41 = v64;
          if (v46 != v65)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v42 <= v57)
          {
            goto LABEL_58;
          }
        }

        a2 = v66;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v73;
        v40 = v59;
        v41 = v64;
        if (v42 > v57)
        {
          continue;
        }

        break;
      }
    }

LABEL_58:
    v78 = a2;
    v76 = v40;
  }

  else
  {
    v22 = v21 * v19;
    if (a4 < a1 || a1 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v66 = a4 + v22;
    v76 = a4 + v22;
    if (v22 >= 1 && a2 < v75)
    {
      v25 = *(v12 + 16);
      v62 = (v7 + 8);
      v63 = v25;
      v64 = v19;
      v65 = v12 + 16;
      v61 = (v12 + 8);
      v26 = v74;
      do
      {
        v73 = a1;
        v27 = v72;
        v28 = v63;
        (v63)(v72, a2, v26);
        v29 = v67;
        (v28)(v67, a4, v26);
        v30 = v68;
        sub_75198();
        v31 = v69;
        sub_75198();
        v71 = sub_74C78();
        v32 = a2;
        v33 = *v62;
        v34 = v31;
        v35 = a4;
        v36 = v70;
        (*v62)(v34, v70);
        v33(v30, v36);
        v37 = *v61;
        (*v61)(v29, v26);
        v37(v27, v26);
        if (v71)
        {
          v38 = v64;
          a2 = v32 + v64;
          v39 = v73;
          a4 = v35;
          if (v73 < v32 || v73 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v73 != v32)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          a2 = v32;
          v38 = v64;
          a4 = v35 + v64;
          v39 = v73;
          if (v73 < v35 || v73 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v73 != v35)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v77 = a4;
        }

        a1 = v39 + v38;
        v78 = a1;
      }

      while (a4 < v66 && a2 < v75);
    }
  }

LABEL_59:
  sub_425A0(&v78, &v77, &v76);
  return 1;
}

uint64_t sub_4DD14(char *__dst, char *__src, char *a3, char *a4, uint64_t (*a5)(uint64_t *, uint64_t *))
{
  v6 = a4;
  v7 = a3;
  v8 = __src;
  v9 = __dst;
  v10 = __src - __dst;
  v11 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v11 = __src - __dst;
  }

  v12 = v11 >> 3;
  v13 = a3 - __src;
  v14 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v14 = a3 - __src;
  }

  v15 = v14 >> 3;
  if (v12 >= v14 >> 3)
  {
    if (a4 != __src || &__src[8 * v15] <= a4)
    {
      memmove(a4, __src, 8 * v15);
    }

    v16 = (v6 + 8 * v15);
    if (v13 >= 8 && v8 > v9)
    {
      v20 = -v6;
      while (1)
      {
        v32 = v8;
        v8 -= 8;
        v21 = &v16[v20];
        v7 -= 8;
        v22 = v16;
        while (1)
        {
          v23 = *(v22 - 1);
          v22 -= 8;
          v35 = v23;
          v34 = *v8;
          v24 = a5(&v35, &v34);
          if (v5)
          {
            if (v21 >= 0)
            {
              v29 = v21;
            }

            else
            {
              v29 = v21 + 7;
            }

            v28 = v32;
            if (v32 >= v6 && v32 < v6 + (v29 & 0xFFFFFFFFFFFFFFF8) && v32 == v6)
            {
              return 1;
            }

            v27 = 8 * (v29 >> 3);
            goto LABEL_58;
          }

          v25 = v7 + 8;
          if (v24)
          {
            break;
          }

          if (v25 != v16)
          {
            *v7 = *v22;
          }

          v21 -= 8;
          v7 -= 8;
          v16 = v22;
          if (v22 <= v6)
          {
            v16 = v22;
            v8 = v32;
            goto LABEL_52;
          }
        }

        if (v25 != v32)
        {
          *v7 = *v8;
        }

        if (v16 > v6)
        {
          v20 = -v6;
          if (v8 > v9)
          {
            continue;
          }
        }

        break;
      }
    }

LABEL_52:
    v30 = &v16[-v6 + 7];
    if (&v16[-v6] >= 0)
    {
      v30 = &v16[-v6];
    }

    if (v8 >= v6 && v8 < v6 + (v30 & 0xFFFFFFFFFFFFFFF8) && v8 == v6)
    {
      return 1;
    }

    v27 = 8 * (v30 >> 3);
    v28 = v8;
LABEL_58:
    memmove(v28, v6, v27);
    return 1;
  }

  if (a4 != __dst || &__dst[8 * v12] <= a4)
  {
    memmove(a4, __dst, 8 * v12);
  }

  v16 = (v6 + 8 * v12);
  if (v10 < 8 || v8 >= v7)
  {
LABEL_20:
    v8 = v9;
    goto LABEL_52;
  }

  while (1)
  {
    v35 = *v8;
    v34 = *v6;
    v17 = a5(&v35, &v34);
    if (v5)
    {
      break;
    }

    if ((v17 & 1) == 0)
    {
      v18 = v6;
      v19 = v9 == v6;
      v6 += 8;
      if (v19)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v9 = *v18;
      goto LABEL_18;
    }

    v18 = v8;
    v19 = v9 == v8;
    v8 += 8;
    if (!v19)
    {
      goto LABEL_17;
    }

LABEL_18:
    v9 += 8;
    if (v6 >= v16 || v8 >= v7)
    {
      goto LABEL_20;
    }
  }

  v26 = &v16[-v6 + 7];
  if (&v16[-v6] >= 0)
  {
    v26 = &v16[-v6];
  }

  if (v9 < v6 || v9 >= v6 + (v26 & 0xFFFFFFFFFFFFFFF8) || v9 != v6)
  {
    v27 = 8 * (v26 >> 3);
    v28 = v9;
    goto LABEL_58;
  }

  return 1;
}

void *sub_4E014(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v3 = sub_751D8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v28 - v9;
  v11 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v11)
  {
    v38 = _swiftEmptyArrayStorage;
    sub_75978();
    v14 = *(v4 + 16);
    v13 = v4 + 16;
    v15 = (a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64)));
    v31 = *(v13 + 56);
    v32 = v14;
    v33 = v10;
    v34 = v13;
    v29 = (v13 - 8);
    v30 = (v13 + 40);
    do
    {
      v22 = v32;
      v32(v10, v15, v3);
      v22(v8, v10, v3);
      v23 = type metadata accessor for PropertyRecordCheckpointEntity.EntityWrapper();
      v24 = objc_allocWithZone(v23);
      v25 = OBJC_IVAR____TtCC25FitnessIntelligencePlugin30PropertyRecordCheckpointEntity13EntityWrapper_entry;
      v22(&v24[OBJC_IVAR____TtCC25FitnessIntelligencePlugin30PropertyRecordCheckpointEntity13EntityWrapper_entry], v8, v3);
      (*v30)(&v24[v25], 0, 1, v3);
      sub_39E0();
      v26 = sub_74F78();
      v16 = &v24[OBJC_IVAR____TtCC25FitnessIntelligencePlugin30PropertyRecordCheckpointEntity13EntityWrapper_serializedEntity];
      *v16 = v26;
      v16[1] = v27;
      v37.receiver = v24;
      v37.super_class = v23;
      v17 = objc_msgSendSuper2(&v37, "init");
      v18 = *v29;
      (*v29)(v8, v3);
      v19 = type metadata accessor for PropertyRecordCheckpointJournalEntry();
      v20 = objc_allocWithZone(v19);
      *&v20[OBJC_IVAR____TtC25FitnessIntelligencePlugin36PropertyRecordCheckpointJournalEntry_entity] = v17;
      *&v20[OBJC_IVAR____TtC25FitnessIntelligencePlugin36PropertyRecordCheckpointJournalEntry_provenance] = v35;
      v36.receiver = v20;
      v36.super_class = v19;
      objc_msgSendSuper2(&v36, "init");
      v10 = v33;
      v18(v33, v3);
      sub_75958();
      v21 = v38[2];
      sub_75988();
      sub_75998();
      sub_75968();
      v15 += v31;
      --v11;
    }

    while (v11);
    return v38;
  }

  return result;
}

unint64_t sub_4E2F8()
{
  result = qword_8EF18;
  if (!qword_8EF18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_8EF18);
  }

  return result;
}

void sub_4E35C(uint64_t a1)
{
  v3 = *(sub_751D8() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_49698(a1, v1 + v4, v6, v7);
}

uint64_t sub_4E404(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_4E41C()
{
  v1 = sub_751D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_4E4B8()
{
  v1 = sub_751D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_4E628(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = (((*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v6 + 8, v4 | 7);
}

uint64_t sub_4E6F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v7 = *(a3(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v4 + v9);
  v11 = *(v4 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));

  return a4(a1, a2, v4 + v8, v10, v11);
}

uint64_t sub_4E7E0(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_4E89C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

uint64_t sub_4E9F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = *(*(sub_74CA8() - 8) + 64);
  v4 = (__chkstk_darwin)();
  v43 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v42 = v39 - v6;
  v7 = sub_38F8(&qword_8F680, &unk_7A4B0);
  v8 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7 - 8);
  v10 = v39 - v9;
  v11 = sub_750F8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v41 = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v40 = v39 - v16;
  v17 = sub_55A6C();
  v18 = v17[2];
  if (v18)
  {
    v19 = 0;
    v20 = v17 + 5;
    do
    {
      if (*(v20 - 1) == 0x6361437472617473 && *v20 == 0xEF7865646E496568)
      {
        break;
      }

      if (sub_75A68())
      {
        break;
      }

      ++v19;
      v20 += 2;
    }

    while (v18 != v19);
  }

  v39[2] = HDSQLiteColumnAsInt64();
  v22 = sub_55A6C();
  v23 = v22[2];
  if (v23)
  {
    v24 = 0;
    v25 = v22 + 5;
    do
    {
      if (*(v25 - 1) == 0x6568636143646E65 && *v25 == 0xED00007865646E49)
      {
        break;
      }

      if (sub_75A68())
      {
        break;
      }

      ++v24;
      v25 += 2;
    }

    while (v23 != v24);
  }

  HDSQLiteColumnAsInt64();
  v27 = sub_55A6C();
  v28 = v27[2];
  if (v28)
  {
    v39[1] = a1;
    v29 = 0;
    v30 = v27 + 5;
    do
    {
      if (*(v30 - 1) == 0xD000000000000016 && 0x80000000000773B0 == *v30)
      {
        break;
      }

      if (sub_75A68())
      {
        break;
      }

      ++v29;
      v30 += 2;
    }

    while (v28 != v29);
  }

  v32 = HDSQLiteColumnAsString();
  if (v32)
  {
    v33 = v32;
    sub_755A8();

    sub_750D8();
    if ((*(v12 + 48))(v10, 1, v11) != 1)
    {
      v36 = v40;
      (*(v12 + 32))(v40, v10, v11);
      sub_74CB8();
      sub_74CB8();
      (*(v12 + 16))(v41, v36, v11);
      v35 = v44;
      sub_751A8();
      (*(v12 + 8))(v36, v11);
      v34 = 0;
      goto LABEL_30;
    }

    sub_4EEA4(v10);
  }

  v34 = 1;
  v35 = v44;
LABEL_30:
  v37 = sub_751D8();
  return (*(*(v37 - 8) + 56))(v35, v34, 1, v37);
}

uint64_t sub_4EEA4(uint64_t a1)
{
  v2 = sub_38F8(&qword_8F680, &unk_7A4B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id WorkoutTaskServer.init(uuid:configuration:client:delegate:)(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = sub_4F1B4(a1, a2, a3, a4);

  swift_unknownObjectRelease();
  return v6;
}

NSXPCInterface __swiftcall WorkoutTaskServer.exportedInterface()()
{
  v0 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP19FitnessIntelligence26WorkoutTaskServerInterface_];

  return v0;
}

id WorkoutTaskServer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutTaskServer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_4F1B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a2;
  v24 = a3;
  v25 = a4;
  v21 = a1;
  v4 = sub_75768();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_75758();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v11 = sub_754F8();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  sub_1720C();
  sub_754E8();
  v27 = _swiftEmptyArrayStorage;
  sub_17258();
  sub_38F8(&qword_8F3A0, &unk_7A440);
  sub_172B0();
  sub_75858();
  (*(v5 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v4);
  v13 = sub_75798();
  v14 = v21;
  v15 = v22;
  *&v22[OBJC_IVAR____TtC25FitnessIntelligencePlugin17WorkoutTaskServer_queue] = v13;
  isa = sub_74988().super.isa;
  v17 = type metadata accessor for WorkoutTaskServer();
  v26.receiver = v15;
  v26.super_class = v17;
  v18 = objc_msgSendSuper2(&v26, "initWithUUID:configuration:client:delegate:", isa, v23, v24, v25);

  v19 = sub_749B8();
  (*(*(v19 - 8) + 8))(v14, v19);
  return v18;
}

void sub_4F4C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5.super.isa = sub_75678().super.isa;
  if (a2)
  {
    v6 = sub_74888();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5.super.isa);
}

uint64_t WorkoutTaskServer.query(startDate:endDate:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v39 = sub_754C8();
  v41 = *(v39 - 8);
  v7 = *(v41 + 64);
  __chkstk_darwin(v39);
  v37 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_754F8();
  v38 = *(v40 - 8);
  v9 = *(v38 + 64);
  __chkstk_darwin(v40);
  v33 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_74968();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v33 - v16;
  v36 = *&v4[OBJC_IVAR____TtC25FitnessIntelligencePlugin17WorkoutTaskServer_queue];
  v18 = *(v12 + 16);
  v18(&v33 - v16, a1, v11);
  v18(v15, a2, v11);
  v19 = *(v12 + 80);
  v20 = (v19 + 24) & ~v19;
  v21 = (v13 + v19 + v20) & ~v19;
  v22 = (v13 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = v4;
  v24 = *(v12 + 32);
  v24(v23 + v20, v17, v11);
  v24(v23 + v21, v15, v11);
  v25 = (v23 + v22);
  v26 = v35;
  *v25 = v34;
  v25[1] = v26;
  aBlock[4] = sub_4FC94;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_17314;
  aBlock[3] = &unk_88A98;
  v27 = _Block_copy(aBlock);
  v28 = v4;

  v29 = v33;
  sub_754D8();
  v42 = _swiftEmptyArrayStorage;
  sub_5457C(&qword_8F3A8, &type metadata accessor for DispatchWorkItemFlags);
  sub_38F8(&qword_8F3B0, &qword_7A1D8);
  sub_17B0C();
  v30 = v37;
  v31 = v39;
  sub_75858();
  sub_75788();
  _Block_release(v27);
  (*(v41 + 8))(v30, v31);
  (*(v38 + 8))(v29, v40);
}

void sub_4F964()
{
  v0 = sub_754B8();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  sub_50074(sub_503B8);
}

uint64_t sub_4FB90()
{
  v1 = sub_74968();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;

  v8 = *(v2 + 8);
  v8(v0 + v4, v1);
  v8(v0 + v6, v1);
  v9 = *(v0 + v7 + 8);

  return _swift_deallocObject(v0, v7 + 16, v3 | 7);
}

void sub_4FC94()
{
  v1 = *(sub_74968() - 8);
  v2 = *(v0 + 16);
  v3 = (v0 + ((*(v1 + 64) + ((*(v1 + 64) + *(v1 + 80) + ((*(v1 + 80) + 24) & ~*(v1 + 80))) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];

  sub_4F964();
}

uint64_t sub_4FD38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_4FD50(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(void *, void), uint64_t a6)
{
  v37 = a6;
  v38 = a5;
  v11 = sub_74D28();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a4 client];
  v17 = [v16 profile];

  v18 = sub_53D08(a2, a3, v17, a1);
  if (!v6)
  {
    v19 = v38;
    v43 = v12;
    v44 = 0;
    v36 = v15;
    v42 = v11;
    v20 = v18[2];
    if (v20)
    {
      v45 = _swiftEmptyArrayStorage;
      sub_67DDC(0, v20, 0);
      v21 = 0;
      v22 = v45;
      v23 = v43;
      v40 = v18 + ((*(v43 + 80) + 32) & ~*(v43 + 80));
      v39 = v43 + 16;
      v41 = (v43 + 8);
      v24 = v36;
      while (v21 < v18[2])
      {
        v25 = v20;
        v26 = v42;
        (*(v23 + 16))(v24, &v40[*(v23 + 72) * v21], v42);
        sub_5457C(&qword_8FAD8, &type metadata accessor for WorkoutRecord);
        v27 = v44;
        v28 = sub_74F78();
        v44 = v27;
        if (v27)
        {
          (*v41)(v24, v26);

          goto LABEL_12;
        }

        v30 = v28;
        v31 = v29;
        (*v41)(v24, v26);
        v45 = v22;
        v33 = v22[2];
        v32 = v22[3];
        if (v33 >= v32 >> 1)
        {
          sub_67DDC((v32 > 1), v33 + 1, 1);
          v24 = v36;
          v22 = v45;
        }

        ++v21;
        v22[2] = v33 + 1;
        v34 = &v22[2 * v33];
        v34[4] = v30;
        v34[5] = v31;
        v20 = v25;
        v23 = v43;
        if (v25 == v21)
        {

          v38(v22, 0);
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    else
    {

      v19(_swiftEmptyArrayStorage, 0);
LABEL_12:
    }
  }
}

void sub_50074(void (*a1)(id))
{
  v3 = sub_75508();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR____TtC25FitnessIntelligencePlugin17WorkoutTaskServer_queue);
  *v7 = v8;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v9 = v8;
  LOBYTE(v8) = sub_75518();
  (*(v4 + 8))(v7, v3);
  if (v8)
  {
    v10 = [objc_allocWithZone(HDMutableDatabaseTransactionContext) init];
    [v10 setRequiresWrite:0];
    [v10 setRequiresProtectedData:1];
    a1(v10);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_50380()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_503DC(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a5;
  v9 = sub_74968();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v51 - v14;
  v16 = sub_754B8();
  v56 = *(v16 - 8);
  v57 = v16;
  v17 = *(v56 + 64);
  v18 = __chkstk_darwin(v16);
  v54 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v51 - v20;
  v22 = [a1 protectedDatabase];
  if (v22)
  {
    v23 = v22;
    v52 = a2;
    v64 = 1;
    v53 = sub_75598();
    v24 = v23;
    v25 = *(v10 + 16);
    v25(v15, a3, v9);
    v25(v13, a4, v9);
    v26 = *(v10 + 80);
    v27 = (v26 + 24) & ~v26;
    v28 = (v11 + v26 + v27) & ~v26;
    v29 = swift_allocObject();
    *(v29 + 16) = &v64;
    v30 = *(v10 + 32);
    v30(v29 + v27, v15, v9);
    v30(v29 + v28, v13, v9);
    v31 = swift_allocObject();
    *(v31 + 16) = sub_54680;
    *(v31 + 24) = v29;
    v62 = sub_2FE7C;
    v63 = v31;
    aBlock = _NSConcreteStackBlock;
    v59 = 1107296256;
    v60 = sub_644E0;
    v61 = &unk_88BB0;
    v32 = _Block_copy(&aBlock);

    v33 = swift_allocObject();
    *(v33 + 16) = v55;
    v34 = swift_allocObject();
    *(v34 + 16) = sub_54740;
    *(v34 + 24) = v33;
    v62 = sub_54748;
    v63 = v34;
    aBlock = _NSConcreteStackBlock;
    v59 = 1107296256;
    v60 = sub_4F494;
    v61 = &unk_88C28;
    v35 = _Block_copy(&aBlock);

    aBlock = 0;
    v36 = v53;
    LOBYTE(v28) = [v24 executeSQL:v53 error:&aBlock bindingHandler:v32 enumerationHandler:v35];
    _Block_release(v35);
    _Block_release(v32);

    if (v28)
    {
      v37 = aBlock;

      return 1;
    }

    v43 = aBlock;
    sub_74898();

    swift_willThrow();
    v44 = v54;
    sub_75378();
    swift_errorRetain();
    v45 = sub_754A8();
    v46 = sub_75718();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v47 = 138412290;
      swift_errorRetain();
      v49 = _swift_stdlib_bridgeErrorToNSError();
      *(v47 + 4) = v49;
      *v48 = v49;
      _os_log_impl(&dword_0, v45, v46, "Failed to list all cache indexes %@", v47, 0xCu);
      sub_3D48(v48, &unk_8EB30, &unk_7A270);
    }

    (*(v56 + 8))(v44, v57);
    v50 = v52;
    if (v52)
    {
      *v50 = sub_74888();
    }
  }

  else
  {
    sub_75378();
    v39 = sub_754A8();
    v40 = sub_75718();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_0, v39, v40, "Failed to list cache indexes: no protected database", v41, 2u);
    }

    (*(v56 + 8))(v21, v57);
    if (a2)
    {
      sub_19A60();
      swift_allocError();
      *v42 = 0;
      *a2 = sub_74888();
    }
  }

  return 0;
}

uint64_t sub_50A58(sqlite3_stmt *a1, int *a2)
{
  v4 = *a2;
  sub_748E8();
  result = sqlite3_bind_double(a1, v4, v5);
  v7 = __OFADD__(v4, 1);
  v8 = v4 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    *a2 = v8;
    sub_748E8();
    result = sqlite3_bind_double(a1, v8, v9);
    if (!__OFADD__(v8, 1))
    {
      *a2 = v8 + 1;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_50ADC(uint64_t a1, uint64_t a2, size_t *a3)
{
  v4 = sub_38F8(&qword_8FAE0, &qword_7A7D8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v23 - v6;
  v8 = sub_74D28();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v23 - v14;
  sub_50D50(v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_3D48(v7, &qword_8FAE0, &qword_7A7D8);
  }

  else
  {
    v16 = *(v9 + 32);
    v16(v15, v7, v8);
    (*(v9 + 16))(v13, v15, v8);
    v17 = *a3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = sub_6786C(0, v17[2] + 1, 1, v17);
      *a3 = v17;
    }

    v20 = v17[2];
    v19 = v17[3];
    if (v20 >= v19 >> 1)
    {
      *a3 = sub_6786C(v19 > 1, v20 + 1, 1, v17);
    }

    (*(v9 + 8))(v15, v8);
    v21 = *a3;
    *(v21 + 2) = v20 + 1;
    v16(&v21[((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v20], v13, v8);
  }

  return 1;
}