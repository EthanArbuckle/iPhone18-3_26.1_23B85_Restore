uint64_t sub_8F88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *(*v4 + 128);
  v7 = *(*v4 + 88);
  v8 = *(*v4 + 80);
  v9 = *(*v4 + 72);
  v5[19] = a1;
  v5[20] = a2;
  v5[21] = a3;
  v5[22] = a4;

  (*(v8 + 8))(v7, v9);

  return _swift_task_switch(sub_8FA08, 0, 0);
}

uint64_t sub_8FA08()
{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 48);
  *v3 = *(v0 + 152);
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  v4 = *(v0 + 8);

  return v4();
}

id sub_8FA80()
{
  v1 = [*(v0 + 16) newBackgroundContext];
  v2 = sub_C5444();
  [v1 setName:v2];

  v3 = [objc_opt_self() mergeByPropertyStoreTrumpMergePolicy];
  [v1 setMergePolicy:v3];

  [v1 setAutomaticallyMergesChangesFromParent:1];
  sub_C5C34();
  return v1;
}

uint64_t sub_8FB40(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_8FB60, 0, 0);
}

uint64_t sub_8FB60()
{
  *(v0 + 32) = sub_C5774();
  *(v0 + 40) = sub_C5764();
  v2 = sub_C5724();

  return _swift_task_switch(sub_8FBF8, v2, v1);
}

uint64_t sub_8FBF8()
{
  v1 = *(v0 + 24);

  *(v0 + 48) = *(v1 + OBJC_IVAR____TtC20JournalNotifications19InsightsDataManager_options);

  return _swift_task_switch(sub_8FC80, 0, 0);
}

uint64_t sub_8FC80()
{
  v1 = sub_87DF4(4u, *(v0 + 48));

  if (v1)
  {
    *(v0 + 56) = sub_C5764();
    v3 = sub_C5724();

    return _swift_task_switch(sub_8FD70, v3, v2);
  }

  else
  {
    **(v0 + 16) = _swiftEmptyArrayStorage;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_8FD70()
{

  v1 = sub_B30B8();
  *(v0 + 64) = v1;
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_8FE2C;

  return sub_A438C(v1);
}

uint64_t sub_8FE2C(uint64_t a1)
{
  v2 = *(*v1 + 64);
  *(*v1 + 80) = a1;

  return _swift_task_switch(sub_8FF48, 0, 0);
}

uint64_t sub_8FF6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[6] = a1;
  v4[7] = a2;
  v5 = sub_C3EA4();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_90030, 0, 0);
}

uint64_t sub_90030()
{
  *(v0 + 104) = sub_C5774();
  *(v0 + 112) = sub_C5764();
  v2 = sub_C5724();

  return _swift_task_switch(sub_900C8, v2, v1);
}

uint64_t sub_900C8()
{
  v1 = *(v0 + 56);

  *(v0 + 120) = *(v1 + OBJC_IVAR____TtC20JournalNotifications19InsightsDataManager_options);

  return _swift_task_switch(sub_90150, 0, 0);
}

uint64_t sub_90150()
{
  v1 = sub_87DF4(1u, v0[15]);

  if (v1)
  {
    v0[16] = sub_C5764();
    v3 = sub_C5724();

    return _swift_task_switch(sub_9024C, v3, v2);
  }

  else
  {
    v4 = v0[6];
    *v4 = _swiftEmptyArrayStorage;
    v4[1] = _swiftEmptyArrayStorage;
    v4[2] = 0;
    v4[3] = _swiftEmptyArrayStorage;

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_9024C()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[7];

  swift_getKeyPath();
  v0[5] = v4;
  sub_9A060(&qword_108F28, type metadata accessor for InsightsDataManager);
  sub_C3F44();

  v5 = OBJC_IVAR____TtC20JournalNotifications19InsightsDataManager__calendar;
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v5, v3);
  v6 = swift_task_alloc();
  v0[17] = v6;
  *v6 = v0;
  v6[1] = sub_903CC;
  v7 = v0[8];

  return sub_A50F4(v7);
}

uint64_t sub_903CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *(*v4 + 96);
  v7 = *(*v4 + 88);
  v8 = *(*v4 + 80);
  v5[18] = a1;
  v5[19] = a2;
  v5[20] = a3;
  v5[21] = a4;

  (*(v7 + 8))(v6, v8);

  return _swift_task_switch(sub_90530, 0, 0);
}

uint64_t sub_90530()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 48);
  *v3 = *(v0 + 144);
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  v4 = *(v0 + 8);

  return v4();
}

unint64_t sub_905A8(unint64_t result, Swift::Int a2, uint64_t a3)
{
  if (__OFADD__(*v4, 1))
  {
    __break(1u);
    goto LABEL_13;
  }

  v3 = v4;
  v7 = a3;
  v8 = a2;
  v5 = result;
  ++*v4;
  v6 = _s4YearVMa(0);
  sub_C3EC4(v8);
  v9 = *(v6 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v4 + v9);
  v27 = v11;
  result = sub_24224(v7);
  v13 = v11[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  LOBYTE(v8) = v12;
  if (v11[3] < v16)
  {
    sub_9BEAC(v16, isUniquelyReferenced_nonNull_native);
    v11 = v27;
    result = sub_24224(v7);
    if ((v8 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

    result = sub_C6294();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_7:
  *(v3 + v9) = v11;
  if (v8)
  {
    goto LABEL_10;
  }

LABEL_8:
  v11[(result >> 6) + 8] |= 1 << result;
  *(v11[6] + 8 * result) = v7;
  *(v11[7] + 8 * result) = 0;
  v18 = v11[2];
  v15 = __OFADD__(v18, 1);
  v19 = v18 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v11[2] = v19;
LABEL_10:
    while (1)
    {
      v20 = v11[7];
      v21 = *(v20 + 8 * result);
      v15 = __OFADD__(v21, 1);
      v22 = v21 + 1;
      if (!v15)
      {
        break;
      }

LABEL_14:
      __break(1u);
LABEL_15:
      v26 = result;
      sub_9D5CC();
      result = v26;
      v11 = v27;
      *(v3 + v9) = v27;
      if ((v8 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    *(v20 + 8 * result) = v22;
    v23 = *(v5 + *(type metadata accessor for InsightsDataManager.EntrySummary(0) + 24));
    v24 = *(v6 + 28);

    v25 = swift_isUniquelyReferenced_nonNull_native();
    v27 = *(v3 + v24);
    result = sub_A1EF0(v23, sub_A3C98, 0, v25, &v27);
    *(v3 + v24) = v27;
  }

  return result;
}

void sub_9078C(uint64_t a1@<X0>, void (*a2)(uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v125 = a3;
  v111 = a2;
  v97 = a4;
  v5 = sub_3CB0(&qword_109140);
  __chkstk_darwin(v5 - 8);
  v107 = v94 - v6;
  v7 = sub_3CB0(&qword_109148);
  __chkstk_darwin(v7 - 8);
  v98 = v94 - v8;
  v120 = sub_C3EA4();
  v106 = *(v120 - 8);
  __chkstk_darwin(v120);
  v105 = v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_C3E84();
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v104 = v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_3CB0(&qword_109150);
  __chkstk_darwin(v11 - 8);
  v113 = v94 - v12;
  v110 = sub_3CB0(&qword_109080);
  v13 = __chkstk_darwin(v110);
  v100 = v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v115 = v94 - v15;
  v99 = sub_3CB0(&qword_108F48);
  v16 = __chkstk_darwin(v99);
  v101 = v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v112 = v94 - v18;
  v19 = sub_3CB0(&qword_104800);
  __chkstk_darwin(v19 - 8);
  v108 = v94 - v20;
  v21 = sub_C3CB4();
  v22 = *(v21 - 8);
  v116 = v21;
  v117 = v22;
  v23 = __chkstk_darwin(v21);
  v109 = v94 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v114 = v94 - v25;
  v26 = [objc_allocWithZone(NSExpressionDescription) init];
  v27 = sub_C5444();
  [v26 setName:v27];

  sub_BE28(0, &qword_109160);
  sub_3CB0(&qword_106600);
  v28 = swift_allocObject();
  v118 = xmmword_CE5B0;
  *(v28 + 16) = xmmword_CE5B0;
  *(v28 + 56) = &type metadata for String;
  *(v28 + 64) = sub_3C4B4();
  *(v28 + 32) = 0x7461447972746E65;
  *(v28 + 40) = 0xE900000000000065;
  v29 = sub_C59B4();
  [v26 setExpression:v29];

  [v26 setExpressionResultType:900];
  v30 = [objc_allocWithZone(NSFetchRequest) init];
  v31 = sub_C4094();
  v32 = [swift_getObjCClassFromMetadata() entity];
  [v30 setEntity:v32];

  v33 = sub_BE28(0, &qword_1090E8);
  v34 = sub_C5974();
  [v30 setPredicate:v34];

  [v30 setResultType:2];
  sub_3CB0(&qword_106650);
  v35 = swift_allocObject();
  *(v35 + 16) = v118;
  *(v35 + 56) = sub_BE28(0, &qword_109168);
  *(v35 + 32) = v26;
  v36 = v26;
  isa = sub_C5664().super.isa;

  [v30 setPropertiesToFetch:isa];

  sub_BE28(0, &qword_109170);
  v38 = v119;
  v39 = sub_C5C74();
  if (v38)
  {

    return;
  }

  v40 = 0x80000000000CB6C0;
  v41 = v116;
  v94[1] = v33;
  *&v118 = v36;
  v42 = v110;
  v94[2] = v31;
  v119 = v30;
  v43 = v111;
  v96 = a1;
  v95 = 0;
  if (v39 >> 62)
  {
    v93 = v39;
    v44 = sub_C60E4();
    v39 = v93;
  }

  else
  {
    v44 = *(&dword_10 + (v39 & 0xFFFFFFFFFFFFFF8));
  }

  v45 = v43;
  v46 = v42;
  v47 = v41;
  v48 = 0xD000000000000011;
  if (!v44)
  {

    v123 = 0u;
    v124 = 0u;
    v52 = v117;
    v42 = v115;
    v53 = v108;
    goto LABEL_16;
  }

  if ((v39 & 0xC000000000000001) != 0)
  {
    goto LABEL_29;
  }

  if (!*(&dword_10 + (v39 & 0xFFFFFFFFFFFFFF8)))
  {
    __break(1u);
    return;
  }

  for (i = *(v39 + 32); ; i = sub_C5FE4())
  {
    v50 = i;

    *&v121 = v48;
    *(&v121 + 1) = v40;
    v51 = [v50 __swift_objectForKeyedSubscript:sub_C6274()];
    swift_unknownObjectRelease();

    if (v51)
    {
      sub_C5E44();
      swift_unknownObjectRelease();
    }

    else
    {
      v121 = 0u;
      v122 = 0u;
    }

    v52 = v117;
    v46 = v42;
    v53 = v108;
    v123 = v121;
    v124 = v122;
    v42 = v115;
    if (*(&v122 + 1))
    {
      v54 = swift_dynamicCast();
      (*(v52 + 56))(v53, v54 ^ 1u, 1, v47);
      if ((*(v52 + 48))(v53, 1, v47) != 1)
      {
        v40 = v109;
        (*(v52 + 32))(v109, v53, v47);
        v55 = v114;
        goto LABEL_19;
      }
    }

    else
    {
LABEL_16:
      sub_C060(&v123, &qword_104818);
      (*(v52 + 56))(v53, 1, 1, v47);
    }

    v40 = v109;
    sub_C3B54();
    v56 = (*(v52 + 48))(v53, 1, v47);
    v55 = v114;
    if (v56 != 1)
    {
      sub_C060(v53, &qword_104800);
    }

LABEL_19:
    v48 = sub_9A060(&qword_108F40, &type metadata accessor for Date);
    if (sub_C5334())
    {
      (*(v52 + 8))(v40, v47);
      (*(v52 + 16))(v55, v45, v47);
    }

    else
    {
      (*(v52 + 32))(v55, v40, v47);
    }

    if (sub_C5354())
    {
      break;
    }

    __break(1u);
LABEL_29:
    ;
  }

  v57 = *(v52 + 16);
  v57(v42, v55, v47);
  v57(&v42[*(v46 + 12)], v45, v47);
  v58 = v42;
  v59 = v100;
  sub_B954(v58, v100, &qword_109080);
  v60 = v46;
  v61 = *(v46 + 12);
  v62 = *(v52 + 32);
  v63 = v112;
  v62(v112, v59, v47);
  v64 = v63;
  v65 = *(v52 + 8);
  v65(v59 + v61, v47);
  sub_E9D4(v115, v59, &qword_109080);
  v66 = v63 + *(v99 + 36);
  v67 = v59 + *(v60 + 12);
  v110 = v52 + 32;
  v109 = v62;
  v62(v66, v67, v47);
  v117 = v52 + 8;
  v111 = v65;
  v65(v59, v47);
  v115 = *(v102 + 104);
  v68 = v104;
  v69 = v103;
  (v115)(v104, enum case for Calendar.Component.day(_:), v103);
  v70 = v63;
  v71 = v101;
  sub_B954(v64, v101, &qword_108F48);
  v72 = *(v106 + 16);
  v73 = v105;
  v72(v105, v125, v120);
  sub_917FC(v68, v71, v73, &qword_109150, &unk_D2C18, v113);
  v74 = v115;
  (v115)(v68, enum case for Calendar.Component.month(_:), v69);
  sub_B954(v70, v71, &qword_108F48);
  v72(v73, v125, v120);
  v75 = v98;
  sub_917FC(v68, v71, v73, &qword_109148, &unk_D2C10, v98);
  (v74)(v68, enum case for Calendar.Component.year(_:), v69);
  v76 = v112;
  sub_B954(v112, v71, &qword_108F48);
  v72(v73, v125, v120);
  v77 = v107;
  v78 = v73;
  v79 = v113;
  sub_917FC(v68, v71, v78, &qword_109140, &unk_D2C08, v107);
  v80 = sub_C4044();
  v81 = sub_C5974();
  [v80 setPredicate:v81];

  sub_3CB0(&qword_106E78);
  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_CFAF0;
  sub_BE28(0, &qword_109128);
  swift_getKeyPath();
  *(v82 + 32) = sub_C5AC4();
  v83 = sub_C5664().super.isa;

  [v80 setSortDescriptors:v83];

  v84 = sub_C5664().super.isa;
  [v80 setRelationshipKeyPathsForPrefetching:v84];

  __chkstk_darwin(v85);
  v94[-4] = v79;
  v94[-3] = v75;
  v94[-2] = v77;
  v86 = v95;
  sub_C5C44();
  if (v86)
  {

    sub_C060(v76, &qword_108F48);
    v111(v114, v116);
    sub_C060(v77, &qword_109140);
  }

  else
  {
    sub_C060(v76, &qword_108F48);

    v87 = sub_3CB0(&qword_109138);
    v88 = v77;
    v89 = v87[12];
    v90 = v87[16];
    v91 = v87[20];
    v92 = v97;
    sub_B954(v79, v97, &qword_109150);
    sub_B954(v75, v92 + v89, &qword_109148);
    sub_B954(v88, v92 + v90, &qword_109140);
    (v109)(v92 + v91, v114, v116);
    sub_C060(v88, &qword_109140);
  }

  sub_C060(v75, &qword_109148);
  sub_C060(v79, &qword_109150);
}

uint64_t sub_917FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v68 = a4;
  v69 = a5;
  v81 = a3;
  v82 = a2;
  v83 = a1;
  v67 = a6;
  v6 = sub_C36C4();
  v76 = *(v6 - 8);
  v77 = v6;
  __chkstk_darwin(v6);
  v75 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CalendarBinningUnit(0);
  v87 = *(v8 - 8);
  v88 = v8;
  __chkstk_darwin(v8);
  v73 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_3CB0(&qword_109198);
  __chkstk_darwin(v10 - 8);
  v12 = &v62 - v11;
  v13 = sub_C3CB4();
  v85 = *(v13 - 8);
  v86 = v13;
  v14 = __chkstk_darwin(v13);
  v62 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v84 = &v62 - v16;
  v17 = sub_C3EA4();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_3CB0(&qword_108F48);
  __chkstk_darwin(v21 - 8);
  v23 = &v62 - v22;
  v24 = sub_C3E84();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for UniformDateBins(0);
  v28 = __chkstk_darwin(v63);
  v30 = &v62 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v65 = &v62 - v31;
  v32 = *(v25 + 16);
  v74 = v24;
  v33 = v24;
  v34 = v20;
  v72 = v32;
  v32(v27, v83, v33);
  sub_B954(v82, v23, &qword_108F48);
  v66 = v18;
  v35 = *(v18 + 16);
  v80 = v17;
  v70 = v35;
  v35(v20, v81, v17);
  v36 = *(v87 + 56);
  v87 += 56;
  v64 = v36;
  v36(v30, 1, 1, v88);
  v78 = v23;
  v79 = v27;
  sub_C3D84();
  v37 = v12;
  v38 = sub_C3564();
  v39 = *(v38 - 8);
  v40 = (*(v39 + 48))(v12, 1, v38);
  v71 = v25;
  v41 = v34;
  if (v40 == 1)
  {
    sub_C060(v37, &qword_109198);
    (*(v85 + 16))(v84, v78, v86);
  }

  else
  {
    v42 = v62;
    sub_C3554();
    (*(v39 + 8))(v37, v38);
    (*(v85 + 32))(v84, v42, v86);
  }

  v43 = v73;
  v44 = v74;
  v45 = v72;
  v72(v73, v79, v74);
  v46 = v88;
  (*(v85 + 16))(v43 + *(v88 + 20), v84, v86);
  v47 = v43 + *(v46 + 24);
  v62 = v41;
  v70(v47, v41, v80);
  sub_3CB0(&qword_107708);
  v48 = v71;
  v49 = (*(v71 + 80) + 32) & ~*(v71 + 80);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_CE5B0;
  v45(v50 + v49, v43, v44);
  sub_5A02C(v50);
  swift_setDeallocating();
  v72 = *(v48 + 8);
  (v72)(v50 + v49, v44);
  swift_deallocClassInstance();
  v51 = v75;
  v52 = v78;
  sub_C3DA4();

  v71 = sub_C3684();
  LOBYTE(v50) = v53;
  result = (*(v76 + 8))(v51, v77);
  if (v50)
  {
    __break(1u);
  }

  else
  {
    v55 = *(v63 + 20);
    v76 = *(v63 + 24);
    v77 = v55;
    v56 = v52;
    v57 = sub_AB5EC(v52);
    (*(v85 + 8))(v84, v86);
    v58 = *(v66 + 8);
    v59 = v80;
    v58(v62, v80);
    sub_C060(v56, &qword_108F48);
    v60 = v72;
    (v72)(v79, v44);
    sub_C060(v30, &qword_109088);
    sub_A65E4(v43, v30, type metadata accessor for CalendarBinningUnit);
    v64(v30, 0, 1, v88);
    *&v30[v77] = v71;
    *&v30[v76] = v57;
    v61 = v65;
    sub_A65E4(v30, v65, type metadata accessor for UniformDateBins);
    sub_996CC(v61, v68, v67);
    v58(v81, v59);
    sub_C060(v82, &qword_108F48);
    return v60(v83, v44);
  }

  return result;
}

uint64_t sub_92064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v67 = _s4YearVMa(0);
  v7 = *(v67 - 8);
  __chkstk_darwin(v67);
  v66 = (&v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = _s5MonthVMa(0);
  v70 = *(v9 - 8);
  v71 = v9;
  __chkstk_darwin(v9);
  v68 = (&v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for UniformDateBins(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_3CB0(&qword_109178);
  __chkstk_darwin(v14 - 8);
  v16 = &v64 - v15;
  v17 = type metadata accessor for InsightsDataManager.EntrySummary(0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_927E8(v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_C060(v16, &qword_109178);
    return 1;
  }

  v64 = v7;
  sub_A65E4(v16, v20, type metadata accessor for InsightsDataManager.EntrySummary);
  sub_9A3FC(a2, v13, type metadata accessor for UniformDateBins);
  v69 = *(v17 + 20);
  v21 = sub_AAD28(&v20[v69]);
  sub_A19B0(v13, type metadata accessor for UniformDateBins);
  v22 = *(sub_3CB0(&qword_109150) + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *(a2 + v22);
  v72 = v21;
  v73 = v24;
  *(a2 + v22) = 0x8000000000000000;
  v26 = sub_24224(v21);
  v27 = *(v24 + 16);
  v28 = (v25 & 1) == 0;
  v29 = v27 + v28;
  if (__OFADD__(v27, v28))
  {
    __break(1u);
    goto LABEL_31;
  }

  LOBYTE(v21) = v25;
  if (*(v24 + 24) < v29)
  {
    sub_9BEAC(v29, isUniquelyReferenced_nonNull_native);
    v24 = v73;
    v30 = sub_24224(v72);
    if ((v21 & 1) == (v31 & 1))
    {
      v26 = v30;
      goto LABEL_8;
    }

    goto LABEL_38;
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_35;
  }

  while (1)
  {
LABEL_8:
    *(a2 + v22) = v24;

    v32 = *(a2 + v22);
    if ((v21 & 1) == 0)
    {
      v32[(v26 >> 6) + 8] |= 1 << v26;
      *(v32[6] + 8 * v26) = v72;
      *(v32[7] + 8 * v26) = 0;
      v33 = v32[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        __break(1u);
LABEL_37:
        sub_9D94C();
        v40 = v73;
        goto LABEL_17;
      }

      v32[2] = v35;
    }

    v36 = v32[7];
    v37 = *(v36 + 8 * v26);
    v34 = __OFADD__(v37, 1);
    v38 = v37 + 1;
    if (v34)
    {
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    *(v36 + 8 * v26) = v38;
    sub_9A3FC(a3, v13, type metadata accessor for UniformDateBins);
    v22 = sub_AAD28(&v20[v69]);
    sub_A19B0(v13, type metadata accessor for UniformDateBins);
    a2 = *(sub_3CB0(&qword_109148) + 32);
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v73 = *(a3 + a2);
    v40 = v73;
    *(a3 + a2) = 0x8000000000000000;
    v26 = sub_24224(v22);
    v42 = *(v40 + 16);
    v43 = (v41 & 1) == 0;
    v44 = v42 + v43;
    if (__OFADD__(v42, v43))
    {
      goto LABEL_32;
    }

    LOBYTE(v21) = v41;
    v45 = *(v40 + 24);
    v65 = v22;
    if (v45 >= v44)
    {
      if (v39)
      {
        goto LABEL_17;
      }

      goto LABEL_37;
    }

    sub_9C458(v44, v39);
    v40 = v73;
    v46 = sub_24224(v22);
    if ((v21 & 1) != (v47 & 1))
    {
      goto LABEL_38;
    }

    v26 = v46;
LABEL_17:
    v48 = v70;
    v22 = v71;
    *(a3 + a2) = v40;

    v49 = *(a3 + a2);
    if ((v21 & 1) == 0)
    {
      a2 = v68;
      *v68 = 0;
      sub_C3ED4();
      sub_9CC70(v26, v65, a2, v49, _s5MonthVMa, _s5MonthVMa);
    }

    v50 = (v49[7] + *(v48 + 72) * v26);
    if (__OFADD__(*v50, 1))
    {
      goto LABEL_33;
    }

    ++*v50;
    sub_C3EC4(v72);
    sub_9A3FC(a4, v13, type metadata accessor for UniformDateBins);
    v22 = sub_AAD28(&v20[v69]);
    sub_A19B0(v13, type metadata accessor for UniformDateBins);
    a2 = *(sub_3CB0(&qword_109140) + 32);
    v26 = swift_isUniquelyReferenced_nonNull_native();
    v73 = *(a4 + a2);
    v51 = v73;
    *(a4 + a2) = 0x8000000000000000;
    v53 = sub_24224(v22);
    v54 = *(v51 + 16);
    v55 = (v52 & 1) == 0;
    v56 = v54 + v55;
    if (!__OFADD__(v54, v55))
    {
      break;
    }

LABEL_34:
    __break(1u);
LABEL_35:
    sub_9D5CC();
    v24 = v73;
  }

  v57 = v52;
  if (*(v51 + 24) >= v56)
  {
    if ((v26 & 1) == 0)
    {
      sub_9D718();
      v51 = v73;
    }

LABEL_26:
    *(a4 + a2) = v51;

    v60 = *(a4 + a2);
    if ((v57 & 1) == 0)
    {
      v62 = v66;
      v61 = v67;
      *v66 = 0;
      sub_C3ED4();
      *(v62 + *(v61 + 24)) = &_swiftEmptyDictionarySingleton;
      *(v62 + *(v61 + 28)) = &_swiftEmptyDictionarySingleton;
      sub_9CC70(v53, v22, v62, v60, _s4YearVMa, _s4YearVMa);
    }

    sub_905A8(v20, v72, v65);
    sub_A19B0(v20, type metadata accessor for InsightsDataManager.EntrySummary);
    return 1;
  }

  sub_9C110(v56, v26);
  v51 = v73;
  v58 = sub_24224(v22);
  if ((v57 & 1) == (v59 & 1))
  {
    v53 = v58;
    goto LABEL_26;
  }

LABEL_38:
  result = sub_C6294();
  __break(1u);
  return result;
}

uint64_t sub_927E8@<X0>(uint64_t a1@<X8>)
{
  v75 = a1;
  v2 = sub_3CB0(&qword_108DE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v49[-v3];
  v5 = sub_C49F4();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v86 = &v49[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v90 = &v49[-v9];
  v10 = sub_C3CB4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v49[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_C3D14();
  v15 = *(v14 - 1);
  __chkstk_darwin(v14);
  v17 = &v49[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = [v1 id];
  if (!v18)
  {
    goto LABEL_66;
  }

  v74 = v15;
  v19 = v18;
  sub_C3CF4();

  v20 = [v1 entryDate];
  if (!v20)
  {
    (*(v74 + 8))(v17, v14);
LABEL_66:
    v45 = type metadata accessor for InsightsDataManager.EntrySummary(0);
    return (*(*(v45 - 8) + 56))(v75, 1, 1, v45);
  }

  v85 = v17;
  v21 = v20;
  sub_C3C64();

  v22 = sub_C4054();
  v84 = v22;
  if (v22 >> 62)
  {
LABEL_75:
    v23 = sub_C60E4();
  }

  else
  {
    v23 = *(&dword_10 + (v22 & 0xFFFFFFFFFFFFFF8));
  }

  v67 = v14;
  v68 = v13;
  v69 = v11;
  v70 = v10;
  if (!v23)
  {
    v10 = 0;
    v14 = &_swiftEmptyDictionarySingleton;
    v25 = v85;
LABEL_68:

    v47 = v75;
    (*(v74 + 32))(v75, v25, v67);
    v48 = type metadata accessor for InsightsDataManager.EntrySummary(0);
    (*(v69 + 32))(v47 + *(v48 + 20), v68, v70);
    *(v47 + *(v48 + 24)) = v14;
    (*(*(v48 - 8) + 56))(v47, 0, 1, v48);
    return sub_2881C(v10);
  }

  v24 = 0;
  v10 = 0;
  v13 = v84;
  v83 = enum case for AssetType.photo(_:);
  v88 = (v6 + 48);
  v89 = v84 & 0xC000000000000001;
  v81 = (v6 + 16);
  v82 = (v6 + 32);
  v80 = enum case for AssetType.livePhoto(_:);
  v79 = (v6 + 88);
  v76 = enum case for AssetType.video(_:);
  v73 = enum case for AssetType.music(_:);
  v72 = enum case for AssetType.podcast(_:);
  v71 = enum case for AssetType.book(_:);
  v66 = enum case for AssetType.audio(_:);
  v65 = enum case for AssetType.visit(_:);
  v64 = enum case for AssetType.multiPinMap(_:);
  v63 = enum case for AssetType.genericMap(_:);
  v62 = enum case for AssetType.link(_:);
  v61 = enum case for AssetType.contact(_:);
  v60 = enum case for AssetType.workoutIcon(_:);
  v59 = enum case for AssetType.workoutRoute(_:);
  v58 = enum case for AssetType.reflection(_:);
  v57 = enum case for AssetType.stateOfMind(_:);
  v56 = enum case for AssetType.motionActivity(_:);
  v55 = enum case for AssetType.thirdPartyMedia(_:);
  v54 = enum case for AssetType.placeholder(_:);
  v53 = enum case for AssetType.streakEvent(_:);
  v52 = enum case for AssetType.drawing(_:);
  v78 = (v6 + 8);
  v51 = enum case for AssetType.confetti(_:);
  v50 = enum case for AssetType.unknown(_:);
  v77 = v84 & 0xFFFFFFFFFFFFFF8;
  v14 = &_swiftEmptyDictionarySingleton;
  v25 = v85;
  v87 = v23;
  while (1)
  {
    if (v89)
    {
      v26 = sub_C5FE4();
    }

    else
    {
      if (v24 >= *(v77 + 16))
      {
        goto LABEL_73;
      }

      v26 = *&v13[8 * v24 + 32];
    }

    v6 = v26;
    v11 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    sub_C3FD4();
    if ((*v88)(v4, 1, v5) != 1)
    {
      break;
    }

    sub_C060(v4, &qword_108DE0);
LABEL_8:
    ++v24;
    if (v11 == v87)
    {
      goto LABEL_68;
    }
  }

  v27 = v90;
  (*v82)(v90, v4, v5);
  v28 = v86;
  (*v81)(v86, v27, v5);
  v29 = (*v79)(v28, v5);
  if (v29 == v83 || v29 == v80)
  {
    v13 = 0;
  }

  else if (v29 == v76)
  {
    v13 = (&dword_0 + 1);
  }

  else
  {
    v13 = (&dword_0 + 3);
    if (v29 != v73 && v29 != v72 && v29 != v71)
    {
      if (v29 == v66)
      {
        v13 = (&dword_0 + 2);
      }

      else
      {
        v13 = &dword_4;
        if (v29 != v65 && v29 != v64 && v29 != v63)
        {
          if (v29 == v62)
          {

            (*v78)(v90, v5);
LABEL_33:
            v13 = v84;
            v25 = v85;
            goto LABEL_8;
          }

          if (v29 == v61)
          {
            v13 = (&dword_4 + 1);
          }

          else
          {
            v13 = (&dword_4 + 2);
            if (v29 != v60 && v29 != v59)
            {
              if (v29 == v58)
              {
                v13 = (&dword_4 + 3);
              }

              else if (v29 == v57)
              {
                v13 = &dword_8;
              }

              else if (v29 != v56)
              {
                if (v29 == v55)
                {
                  v13 = (&dword_0 + 3);
                }

                else
                {
                  v13 = v84;
                  v25 = v85;
                  if (v29 == v54 || v29 == v53)
                  {
                    goto LABEL_64;
                  }

                  if (v29 == v52)
                  {
                    v13 = (&dword_8 + 1);
                  }

                  else
                  {
                    if (v29 != v51)
                    {
                      if (v29 != v50)
                      {
                        goto LABEL_76;
                      }

LABEL_64:
                      (*v78)(v90, v5);

                      goto LABEL_8;
                    }

                    v13 = (&dword_8 + 2);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  sub_2881C(v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v91 = v14;
  v32 = sub_24268(v13);
  v34 = v14[2];
  v35 = (v33 & 1) == 0;
  v36 = __OFADD__(v34, v35);
  v37 = v34 + v35;
  if (v36)
  {
    goto LABEL_71;
  }

  v10 = v33;
  if (v14[3] >= v37)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v44 = v32;
      sub_9D480();
      v32 = v44;
      v14 = v91;
      if ((v10 & 1) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_31;
    }

LABEL_28:
    v14 = v91;
    if ((v10 & 1) == 0)
    {
LABEL_29:
      v14[(v32 >> 6) + 8] |= 1 << v32;
      *(v14[6] + v32) = v13;
      *(v14[7] + 8 * v32) = 0;
      v39 = v14[2];
      v36 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v36)
      {
        goto LABEL_74;
      }

      v14[2] = v40;
    }

LABEL_31:
    v41 = v14[7];
    v42 = *(v41 + 8 * v32);
    v36 = __OFADD__(v42, 1);
    v43 = v42 + 1;
    if (v36)
    {
      goto LABEL_72;
    }

    *(v41 + 8 * v32) = v43;

    (*v78)(v90, v5);
    v10 = sub_2898;
    goto LABEL_33;
  }

  sub_9BAF0(v37, isUniquelyReferenced_nonNull_native);
  v32 = sub_24268(v13);
  if ((v10 & 1) == (v38 & 1))
  {
    goto LABEL_28;
  }

  sub_C6294();
  __break(1u);
LABEL_76:
  result = sub_C6234();
  __break(1u);
  return result;
}

uint64_t sub_93234@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = _s4YearVMa(0);
  v7 = sub_C3EB4();
  v8 = *a1;
  v9 = *(a1 + *(v6 + 24));
  v13[2] = a2;
  v10 = sub_8B184(sub_A656C, v13, v9);
  v14 = sub_8A9D0(*(a1 + *(v6 + 28)));

  sub_9DDD8(&v14);

  v12 = v14;
  *a3 = v7;
  a3[1] = v8;
  a3[2] = v10;
  a3[3] = v12;
  return result;
}

uint64_t sub_93318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_3CB0(&qword_108F48);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v8 = *a1;
  v7 = *(a1 + 8);
  v9 = *(sub_3CB0(&qword_106638) + 48);
  sub_AB0C0(v8, v6);
  sub_C3B64();
  sub_C3C34();
  result = sub_C060(v6, &qword_108F48);
  if (v7 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = (a2 + v9);
    *v11 = 0;
    v11[1] = v7;
  }

  return result;
}

void sub_93430()
{
  sub_C4094();
  v0 = sub_C4044();
  sub_BE28(0, &qword_1090E8);
  v1 = sub_C5974();
  [v0 setPredicate:v1];

  sub_C5C44();
  if (v8)
  {
    if (qword_1042C0 != -1)
    {
      swift_once();
    }

    v2 = sub_C4CD4();
    sub_B680(v2, qword_109040);
    swift_errorRetain();
    v3 = sub_C4CB4();
    v4 = sub_C5A44();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      swift_errorRetain();
      v7 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v7;
      *v6 = v7;
      _os_log_impl(&dword_0, v3, v4, "Failed to fetch entries for word counts: %@", v5, 0xCu);
      sub_C060(v6, &qword_1050F0);
    }

    else
    {
    }
  }

  else
  {
  }
}

uint64_t sub_93670(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v85 = a6;
  v11 = sub_C3E84();
  v83 = *(v11 - 8);
  v84 = v11;
  __chkstk_darwin(v11);
  v13 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_C3CB4();
  v82 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v78 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v79 = &v77 - v18;
  v19 = __chkstk_darwin(v17);
  v80 = &v77 - v20;
  __chkstk_darwin(v19);
  v22 = &v77 - v21;
  v23 = sub_C4084();
  v81 = a5;
  if (v24)
  {
    v25 = v24;
  }

  else
  {
    v23 = [a1 title];
    if (v23)
    {
      v26 = a2;
      v27 = v23;
      v28 = sub_C3984();
      v30 = v29;

      v31 = sub_C3954();
      sub_BF1C(v28, v30);
      if (v31)
      {
        v32 = [v31 string];

        v33 = sub_C5484();
        v25 = v34;

        v23 = v33;
      }

      else
      {
        v23 = 0;
        v25 = 0xE000000000000000;
      }

      a2 = v26;
    }

    else
    {
      v25 = 0xE000000000000000;
    }
  }

  v35 = a2;
  v36 = sub_678F8(v23, v25, a2, a3);

  v37 = sub_C4074();
  if (v38)
  {
    v39 = v37;
    v40 = v38;
  }

  else
  {
    v41 = [a1 text];
    if (v41)
    {
      v77 = a3;
      v42 = v41;
      v43 = sub_C3984();
      v45 = v44;

      v46 = sub_C3954();
      sub_BF1C(v43, v45);
      if (v46)
      {
        v47 = [v46 string];

        v39 = sub_C5484();
        v40 = v48;
      }

      else
      {
        v39 = 0;
        v40 = 0xE000000000000000;
      }

      a3 = v77;
    }

    else
    {
      v39 = 0;
      v40 = 0xE000000000000000;
    }
  }

  v49 = sub_678F8(v39, v40, v35, a3);

  v51 = v36 + v49;
  if (__OFADD__(v36, v49))
  {
    __break(1u);
    goto LABEL_29;
  }

  result = swift_beginAccess();
  if (__OFADD__(*a4, v51))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  *a4 += v51;
  v52 = [a1 entryDate];
  if (!v52)
  {
    goto LABEL_23;
  }

  v53 = v80;
  v77 = (v36 + v49);
  v54 = v52;
  sub_C3C64();

  v55 = a4;
  v56 = v82;
  (*(v82 + 32))(v22, v53, v14);
  v57 = v14;
  v58 = v83;
  v59 = v84;
  (*(v83 + 104))(v13, enum case for Calendar.Component.month(_:), v84);
  LOBYTE(v53) = sub_C3E54();
  v60 = v58;
  v14 = v57;
  v61 = v59;
  v51 = v77;
  (*(v60 + 8))(v13, v61);
  v62 = v56;
  a4 = v55;
  (*(v62 + 8))(v22, v57);
  if ((v53 & 1) == 0)
  {
    goto LABEL_23;
  }

  result = swift_beginAccess();
  v63 = v55[1];
  v64 = __OFADD__(v63, v51);
  v65 = v63 + v51;
  if (v64)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v55[1] = v65;
LABEL_23:
  v66 = [a1 entryDate];
  if (!v66)
  {
    return 1;
  }

  v67 = v78;
  v68 = v66;
  sub_C3C64();

  v69 = a4;
  v70 = v82;
  v71 = v79;
  (*(v82 + 32))(v79, v67, v14);
  v73 = v83;
  v72 = v84;
  (*(v83 + 104))(v13, enum case for Calendar.Component.year(_:), v84);
  v74 = sub_C3E54();
  (*(v73 + 8))(v13, v72);
  (*(v70 + 8))(v71, v14);
  if ((v74 & 1) == 0)
  {
    return 1;
  }

  result = swift_beginAccess();
  v75 = v69[2];
  v64 = __OFADD__(v75, v51);
  v76 = v75 + v51;
  if (!v64)
  {
    v69[2] = v76;
    return 1;
  }

LABEL_31:
  __break(1u);
  return result;
}

void sub_93C24(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v257 = a6;
  v256 = a5;
  v267 = a3;
  v263 = a2;
  v268 = type metadata accessor for StreakSummary();
  __chkstk_darwin(v268);
  v234 = &v227 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v241 = sub_3CB0(&qword_106D90);
  __chkstk_darwin(v241);
  v240 = (&v227 - v9);
  v239 = sub_3CB0(&qword_106DA0);
  v235 = *(v239 - 8);
  __chkstk_darwin(v239);
  v242 = &v227 - v10;
  v273 = sub_C49F4();
  v238 = *(v273 - 1);
  __chkstk_darwin(v273);
  v237 = &v227 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_3CB0(&qword_104800);
  v13 = __chkstk_darwin(v12 - 8);
  v255 = &v227 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v259 = &v227 - v16;
  v17 = __chkstk_darwin(v15);
  v265 = &v227 - v18;
  v19 = __chkstk_darwin(v17);
  v254 = &v227 - v20;
  v21 = __chkstk_darwin(v19);
  v258 = &v227 - v22;
  v23 = __chkstk_darwin(v21);
  v272 = (&v227 - v24);
  v25 = __chkstk_darwin(v23);
  v270 = &v227 - v26;
  v27 = __chkstk_darwin(v25);
  v269 = &v227 - v28;
  v29 = __chkstk_darwin(v27);
  v284 = &v227 - v30;
  v31 = __chkstk_darwin(v29);
  v283 = (&v227 - v32);
  __chkstk_darwin(v31);
  v282 = (&v227 - v33);
  v286 = sub_C3CB4();
  v274 = *(v286 - 1);
  v34 = __chkstk_darwin(v286);
  v236 = &v227 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v266 = &v227 - v37;
  v38 = __chkstk_darwin(v36);
  v247 = &v227 - v39;
  v40 = __chkstk_darwin(v38);
  v253 = &v227 - v41;
  v42 = __chkstk_darwin(v40);
  v271 = &v227 - v43;
  __chkstk_darwin(v42);
  v285 = &v227 - v44;
  v233 = type metadata accessor for InsightsDataManager.Streaks(0);
  v260 = a4;
  v232 = swift_projectBox();
  v264 = sub_C4094();
  v261 = sub_C4044();
  v288 = sub_3CB0(&qword_106E78);
  v45 = swift_allocObject();
  v245 = xmmword_D2300;
  *(v45 + 16) = xmmword_D2300;
  v46 = sub_BE28(0, &qword_1090E8);
  *(v45 + 32) = sub_C5994();
  *(v45 + 40) = sub_C5984();
  v251 = sub_3CB0(&qword_106600);
  v47 = swift_allocObject();
  v250 = xmmword_CF5C0;
  *(v47 + 16) = xmmword_CF5C0;
  *(v47 + 56) = &type metadata for String;
  v48 = sub_3C4B4();
  *(v47 + 64) = v48;
  *(v47 + 32) = 0x4464657461657263;
  *(v47 + 40) = 0xEB00000000657461;
  v248 = a1;
  isa = sub_C3C04().super.isa;
  v244 = sub_BE28(0, &qword_109118);
  *(v47 + 96) = v244;
  v50 = sub_A5A84(&qword_109120, &qword_109118);
  *(v47 + 72) = isa;
  *(v47 + 136) = &type metadata for String;
  *(v47 + 144) = v48;
  v252 = v48;
  v51 = v50;
  *(v47 + 104) = v50;
  *(v47 + 112) = 0x4464657461657263;
  *(v47 + 120) = 0xEB00000000657461;
  v246 = "InsightsDataManager";
  *(v45 + 48) = sub_C5964();
  v52 = sub_C5664().super.isa;

  v53 = objc_opt_self();
  v54 = [v53 andPredicateWithSubpredicates:v52];

  v55 = v261;
  [v261 setPredicate:v54];

  v56 = swift_allocObject();
  v243 = xmmword_CFAF0;
  *(v56 + 16) = xmmword_CFAF0;
  v57 = sub_BE28(0, &qword_109128);
  swift_getKeyPath();
  *(v56 + 32) = sub_C5AC4();
  v58 = sub_C5664().super.isa;

  [v55 setSortDescriptors:v58];

  v59 = sub_3CB0(&qword_106650);
  v60 = swift_allocObject();
  v249 = xmmword_CE5B0;
  *(v60 + 16) = xmmword_CE5B0;
  *(v60 + 56) = &type metadata for String;
  *(v60 + 32) = 0x4464657461657263;
  *(v60 + 40) = 0xEB00000000657461;
  v61 = sub_C5664().super.isa;

  [v55 setPropertiesToFetch:v61];

  v62 = v287;
  v63 = sub_C5C74();
  v262 = v62;
  if (v62)
  {

    return;
  }

  v227 = v53;
  v228 = v57;
  v229 = v51;
  v230 = v59;
  v231 = v46;
  v281 = v63;
  if (v63 >> 62)
  {
    goto LABEL_107;
  }

  v64 = *(&dword_10 + (v63 & 0xFFFFFFFFFFFFFF8));
LABEL_5:
  v65 = v286;
  if (v64)
  {
    v66 = 0;
    v280 = v63 & 0xC000000000000001;
    v279 = v63 & 0xFFFFFFFFFFFFFF8;
    v276 = (v274 + 56);
    v275 = (v274 + 48);
    v287 = _swiftEmptyArrayStorage;
    *&v278 = v274 + 32;
    v277 = v64;
    while (1)
    {
      if (v280)
      {
        v67 = sub_C5FE4();
        v68 = v66 + 1;
        if (__OFADD__(v66, 1))
        {
          goto LABEL_101;
        }
      }

      else
      {
        if (v66 >= *(v279 + 16))
        {
          goto LABEL_102;
        }

        v67 = *(v63 + 8 * v66 + 32);
        v68 = v66 + 1;
        if (__OFADD__(v66, 1))
        {
LABEL_101:
          __break(1u);
LABEL_102:
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
          v64 = sub_C60E4();
          v63 = v281;
          goto LABEL_5;
        }
      }

      v69 = v67;
      v70 = [v69 createdDate];
      if (v70)
      {
        v71 = v70;
        v72 = v284;
        sub_C3C64();

        v73 = 0;
      }

      else
      {
        v73 = 1;
        v72 = v284;
      }

      (*v276)(v72, v73, 1, v65);
      v74 = v72;
      v75 = v283;
      sub_E9D4(v74, v283, &qword_104800);
      v76 = v75;
      v77 = v282;
      sub_E9D4(v76, v282, &qword_104800);

      if ((*v275)(v77, 1, v65) == 1)
      {
        sub_C060(v77, &qword_104800);
      }

      else
      {
        v78 = *v278;
        (*v278)(v285, v77, v65);
        v79 = v287;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v79 = sub_488A0(0, *(v79 + 2) + 1, 1, v79);
        }

        v287 = v79;
        v81 = *(v79 + 2);
        v80 = *(v79 + 3);
        if (v81 >= v80 >> 1)
        {
          v287 = sub_488A0(v80 > 1, v81 + 1, 1, v287);
        }

        v82 = v287;
        *(v287 + 2) = v81 + 1;
        v83 = v82 + ((*(v274 + 80) + 32) & ~*(v274 + 80)) + *(v274 + 72) * v81;
        v65 = v286;
        v78(v83);
      }

      ++v66;
      v63 = v281;
      if (v68 == v277)
      {
        goto LABEL_25;
      }
    }
  }

  v287 = _swiftEmptyArrayStorage;
LABEL_25:

  v84 = sub_C4044();
  v85 = swift_allocObject();
  *(v85 + 16) = v245;
  *(v85 + 32) = sub_C5994();
  *(v85 + 40) = sub_C5984();
  v86 = swift_allocObject();
  *(v86 + 16) = v250;
  v87 = v252;
  *(v86 + 56) = &type metadata for String;
  *(v86 + 64) = v87;
  *(v86 + 32) = 0x4464657461647075;
  *(v86 + 40) = 0xEB00000000657461;
  v88.super.isa = sub_C3C04().super.isa;
  v89 = v229;
  *(v86 + 96) = v244;
  *(v86 + 104) = v89;
  *(v86 + 72) = v88;
  *(v86 + 136) = &type metadata for String;
  *(v86 + 144) = v87;
  *(v86 + 112) = 0x4464657461647075;
  *(v86 + 120) = 0xEB00000000657461;
  *(v85 + 48) = sub_C5964();
  v90 = sub_C5664().super.isa;

  v91 = [v227 andPredicateWithSubpredicates:v90];

  [v84 setPredicate:v91];
  v92 = swift_allocObject();
  *(v92 + 16) = v243;
  swift_getKeyPath();
  *(v92 + 32) = sub_C5AC4();
  v93 = sub_C5664().super.isa;

  [v84 setSortDescriptors:v93];

  v94 = swift_allocObject();
  *(v94 + 16) = v249;
  *(v94 + 56) = &type metadata for String;
  *(v94 + 32) = 0x4464657461647075;
  *(v94 + 40) = 0xEB00000000657461;
  v95 = sub_C5664().super.isa;

  [v84 setPropertiesToFetch:v95];

  v96 = v262;
  v97 = sub_C5C74();
  if (v96)
  {

    return;
  }

  v98 = v97;
  if (v97 >> 62)
  {
    v99 = sub_C60E4();
  }

  else
  {
    v99 = *(&dword_10 + (v97 & 0xFFFFFFFFFFFFFF8));
  }

  v100 = v273;
  v264 = v84;
  v262 = 0;
  if (v99)
  {
    v101 = 0;
    v288 = (v98 & 0xC000000000000001);
    v285 = (v98 & 0xFFFFFFFFFFFFFF8);
    v284 = (v274 + 56);
    v283 = (v274 + 48);
    v102 = _swiftEmptyArrayStorage;
    v282 = (v274 + 32);
    v281 = v99;
    v280 = v98;
    while (1)
    {
      if (v288)
      {
        v105 = sub_C5FE4();
        v104 = v272;
        v106 = (v101 + 1);
        if (__OFADD__(v101, 1))
        {
          goto LABEL_103;
        }
      }

      else
      {
        v104 = v272;
        if (v101 >= *(v285 + 2))
        {
          goto LABEL_104;
        }

        v105 = *(v98 + 8 * v101 + 32);
        v106 = (v101 + 1);
        if (__OFADD__(v101, 1))
        {
          goto LABEL_103;
        }
      }

      v107 = v105;
      v108 = [v107 updatedDate];
      v109 = v102;
      if (v108)
      {
        v110 = v108;
        sub_C3C64();

        v111 = 0;
      }

      else
      {
        v111 = 1;
      }

      v112 = v286;
      (*v284)(v104, v111, 1, v286);
      v113 = v104;
      v114 = v270;
      sub_E9D4(v113, v270, &qword_104800);
      v115 = v114;
      v116 = v269;
      sub_E9D4(v115, v269, &qword_104800);

      if ((*v283)(v116, 1, v112) == 1)
      {
        sub_C060(v116, &qword_104800);
        v102 = v109;
        v98 = v280;
        v103 = v281;
      }

      else
      {
        v117 = *v282;
        (*v282)(v271, v116, v112);
        v102 = v109;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v102 = sub_488A0(0, *(v109 + 2) + 1, 1, v109);
        }

        v98 = v280;
        v119 = *(v102 + 2);
        v118 = *(v102 + 3);
        v103 = v281;
        if (v119 >= v118 >> 1)
        {
          v102 = sub_488A0(v118 > 1, v119 + 1, 1, v102);
        }

        *(v102 + 2) = v119 + 1;
        v117(v102 + ((*(v274 + 80) + 32) & ~*(v274 + 80)) + *(v274 + 72) * v119);
      }

      ++v101;
      v100 = v273;
      if (v106 == v103)
      {
        goto LABEL_49;
      }
    }
  }

  v102 = _swiftEmptyArrayStorage;
LABEL_49:
  v279 = v102;

  v288 = sub_C3FE4();
  v120 = sub_C3FC4();
  v121 = swift_allocObject();
  *(v121 + 16) = v250;
  v122 = v252;
  *(v121 + 56) = &type metadata for String;
  *(v121 + 64) = v122;
  *(v121 + 32) = 0x7079547465737361;
  *(v121 + 40) = 0xE900000000000065;
  v123 = v238;
  v124 = v237;
  (*(v238 + 104))(v237, enum case for AssetType.streakEvent(_:), v100);
  v125 = sub_C49E4();
  v126 = v100;
  v128 = v127;
  (*(v123 + 8))(v124, v126);
  *(v121 + 96) = &type metadata for String;
  *(v121 + 104) = v122;
  *(v121 + 72) = v125;
  *(v121 + 80) = v128;
  *(v121 + 136) = &type metadata for String;
  *(v121 + 144) = v122;
  strcpy((v121 + 112), "assetMetaData");
  *(v121 + 126) = -4864;
  v129 = sub_C5964();
  [v120 setPredicate:v129];

  v130 = swift_allocObject();
  *(v130 + 16) = v249;
  *(v130 + 56) = &type metadata for String;
  strcpy((v130 + 32), "assetMetaData");
  *(v130 + 46) = -4864;
  v131 = sub_C5664().super.isa;

  [v120 setPropertiesToFetch:v131];

  v132 = v262;
  v133 = sub_C5C74();
  if (v132)
  {

    return;
  }

  v134 = v133;
  v271 = v120;
  v135 = v287;
  if (v133 >> 62)
  {
    v136 = sub_C60E4();
  }

  else
  {
    v136 = *(&dword_10 + (v133 & 0xFFFFFFFFFFFFFF8));
  }

  v137 = v242;
  v262 = 0;
  if (v136)
  {
    v138 = 0;
    v285 = (v134 & 0xC000000000000001);
    v284 = (v134 & 0xFFFFFFFFFFFFFF8);
    v280 = v235 + 56;
    v288 = _swiftEmptyArrayStorage;
    v281 = (v274 + 32);
    v278 = xmmword_CF6E0;
    v283 = v134;
    v282 = v136;
    while (1)
    {
      if (v285)
      {
        v139 = sub_C5FE4();
      }

      else
      {
        if (v138 >= *(v284 + 2))
        {
          goto LABEL_106;
        }

        v139 = *(v134 + 8 * v138 + 32);
      }

      v140 = v139;
      v141 = (v138 + 1);
      if (__OFADD__(v138, 1))
      {
        goto LABEL_105;
      }

      *(objc_allocWithZone(type metadata accessor for StreakEventAsset()) + OBJC_IVAR____TtC20JournalNotifications16StreakEventAsset_metadata) = 0;
      v142 = v140;
      v143 = sub_83920(v142);
      v144 = v143;
      v145 = OBJC_IVAR____TtC20JournalNotifications16StreakEventAsset_metadata;
      if (*&v143[OBJC_IVAR____TtC20JournalNotifications16StreakEventAsset_metadata])
      {
        goto LABEL_67;
      }

      v146 = *&v143[OBJC_IVAR____TtC20JournalNotifications5Asset_assetMO];
      if (v146)
      {
        v147 = [v146 assetMetaData];
        if (v147)
        {
          v148 = v147;
          v149 = sub_C3984();
          v151 = v150;

          v152 = v240;
          *v240 = v149;
          v152[1] = v151;
          swift_storeEnumTagMultiPayload();
          sub_3CB0(&qword_109130);
          v153 = swift_allocObject();
          (*v280)(v153 + *(*v153 + 104), 1, 1, v239);
          *(v153 + *(*v153 + 112)) = v278;
          v154 = v152;
          v137 = v242;
          sub_E9D4(v154, v153 + *(*v153 + 120), &qword_106D90);
          *&v144[v145] = v153;
        }
      }

      if (*&v144[v145])
      {
LABEL_67:

        sub_44860(v137);

        v155 = sub_C40D4();
        v156 = *(v155 - 8);
        if ((*(v156 + 48))(v137, 1, v155) != 1)
        {
          v157 = v247;
          sub_C40C4();

          (*(v156 + 8))(v137, v155);
          v158 = *v281;
          (*v281)(v253, v157, v286);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v134 = v283;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v288 = sub_488A0(0, *(v288 + 2) + 1, 1, v288);
          }

          v135 = v287;
          v161 = *(v288 + 2);
          v160 = *(v288 + 3);
          if (v161 >= v160 >> 1)
          {
            v288 = sub_488A0(v160 > 1, v161 + 1, 1, v288);
          }

          v162 = v288;
          *(v288 + 2) = v161 + 1;
          v158(v162 + ((*(v274 + 80) + 32) & ~*(v274 + 80)) + *(v274 + 72) * v161);
          goto LABEL_57;
        }
      }

      else
      {

        v163 = sub_C40D4();
        (*(*(v163 - 8) + 56))(v137, 1, 1, v163);
      }

      v134 = v283;
      sub_C060(v137, &qword_106DA0);
      v135 = v287;
LABEL_57:
      ++v138;
      if (v141 == v282)
      {
        goto LABEL_76;
      }
    }
  }

  v288 = _swiftEmptyArrayStorage;
LABEL_76:

  __chkstk_darwin(v164);
  *(&v227 - 2) = v248;
  v165 = v262;
  v166 = sub_8A700(sub_A62D0, (&v227 - 4), v288);
  v167 = v268;
  *&v278 = swift_allocBox();
  v169 = v168;
  v170 = (v274 + 56);
  v171 = *(v274 + 56);
  v172 = v286;
  (v171)(v168, 1, 1, v286);
  (v171)(&v169[v167[5]], 1, 1, v172);
  (v171)(&v169[v167[6]], 1, 1, v172);
  v173 = v167[7];
  v283 = v169;
  *&v169[v173] = 0;
  v277 = swift_allocBox();
  v175 = v174;
  (v171)(v174, 1, 1, v172);
  (v171)(v175 + v167[5], 1, 1, v172);
  v176 = v175 + v167[6];
  v285 = v170;
  v284 = v171;
  (v171)(v176, 1, 1, v172);
  v177 = v167[7];
  v282 = v175;
  *(v175 + v177) = 0;
  v290 = v135;

  sub_3C330(v178);

  sub_3C330(v179);
  v289 = v290;

  sub_9DD04(&v289, sub_9F1A4, sub_9E290);
  v262 = v165;
  if (v165)
  {

    __break(1u);
  }

  else
  {

    v272 = v289;
    v180 = v267;
    if (qword_1042C0 != -1)
    {
      swift_once();
    }

    v181 = sub_C4CD4();
    sub_B680(v181, qword_109040);
    v182 = v287;

    v183 = v279;

    v184 = sub_C4CB4();
    v185 = sub_C5A24();
    if (os_log_type_enabled(v184, v185))
    {
      v186 = swift_slowAlloc();
      *v186 = 134218496;
      v187 = *(v182 + 2);

      *(v186 + 4) = v187;

      *(v186 + 12) = 2048;
      v188 = *(v183 + 16);

      *(v186 + 14) = v188;

      *(v186 + 22) = 2048;
      v189 = *(v166 + 16);

      *(v186 + 24) = v189;

      _os_log_impl(&dword_0, v184, v185, "Creating streaks from %ld created, %ld updated, %ld event dates", v186, 0x20u);
    }

    else
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }

    v190 = v286;
    v191 = v236;
    [v263 reset];
    v192 = *(v272 + 2);
    v193 = v260;
    if (v192)
    {
      v194 = v274;
      v195 = v272 + ((*(v274 + 80) + 32) & ~*(v274 + 80));
      swift_beginAccess();
      swift_beginAccess();
      v196 = v194[2];
      v194 += 2;
      v276 = v194[7];
      v286 = (v194 + 4);
      v275 = (v194 + 2);
      v273 = v194 - 1;
      v197 = v266;
      v287 = v194;
      v288 = v196;
      (v196)(v266, v195, v190);
      while (1)
      {
        sub_9640C(v197, v278, v180, v193);
        sub_972D8(v197, v277, v180, v193);
        v204 = v254;
        sub_B954(v283, v254, &qword_104800);
        v205 = *v286;
        v206 = (*v286)(v204, 1, v190);
        v281 = v192;
        v280 = v195;
        v279 = v205;
        if (v206 == 1)
        {
          v207 = v258;
          (v288)(v258, v197, v190);
          if (v205(v204, 1, v190) != 1)
          {
            sub_C060(v204, &qword_104800);
          }
        }

        else
        {
          v207 = v258;
          (*v275)(v258, v204, v190);
        }

        v208 = v284;
        (v284)(v207, 0, 1, v190);
        v209 = v283;
        sub_2CCC4(v207, v283);
        v210 = v268;
        v211 = *(v268 + 20);
        sub_C060(&v209[v211], &qword_104800);
        v212 = v266;
        (v288)(&v209[v211], v266, v190);
        v208(&v209[v211], 0, 1, v190);
        v213 = v265;
        sub_C3E24();
        sub_2CCC4(v213, &v209[*(v210 + 24)]);
        v214 = v255;
        sub_B954(v282, v255, &qword_104800);
        v215 = v279;
        if ((v279)(v214, 1, v190) == 1)
        {
          v198 = v259;
          (v288)(v259, v212, v190);
          if (v215(v214, 1, v190) != 1)
          {
            sub_C060(v214, &qword_104800);
          }
        }

        else
        {
          v198 = v259;
          (*v275)(v259, v214, v190);
        }

        v199 = v284;
        (v284)(v198, 0, 1, v190);
        v200 = v282;
        sub_2CCC4(v198, v282);
        v201 = v268;
        v202 = *(v268 + 20);
        sub_C060(&v200[v202], &qword_104800);
        v197 = v266;
        (v288)(&v200[v202], v266, v190);
        v199(&v200[v202], 0, 1, v190);
        v203 = v265;
        v180 = v267;
        sub_C3E24();
        (*v273)(v197, v190);
        sub_2CCC4(v203, &v200[*(v201 + 24)]);
        v195 = &v276[v280];
        v192 = (v281 - 1);
        v193 = v260;
        if (v281 == (&dword_0 + 1))
        {
          break;
        }

        (v288)(v197, v195, v190);
      }

      v191 = v236;
    }

    else
    {
    }

    sub_C3B54();
    sub_9640C(v191, v278, v180, v193);
    v216 = *(v274 + 8);
    v216(v191, v190);
    sub_C3B54();
    sub_972D8(v191, v277, v180, v193);
    v216(v191, v190);
    v217 = v232;
    swift_beginAccess();
    v218 = v234;
    sub_9A3FC(v217, v234, type metadata accessor for StreakSummary);
    v219 = v248;
    v220 = sub_B0FE0(v248);
    sub_A19B0(v218, type metadata accessor for StreakSummary);
    v221 = v268;
    v222 = v233;
    if ((v220 & 1) == 0)
    {
      swift_beginAccess();
      sub_9A3FC(v217, v218, type metadata accessor for StreakSummary);
      swift_beginAccess();
      sub_8A20C(v218, v217 + v222[6]);
      sub_A19B0(v217, type metadata accessor for StreakSummary);
      v223 = v284;
      (v284)(v217, 1, 1, v190);
      v223(v217 + v221[5], 1, 1, v190);
      v223(v217 + v221[6], 1, 1, v190);
      *(v217 + v221[7]) = 0;
    }

    swift_beginAccess();
    sub_9A3FC(v217 + v222[5], v218, type metadata accessor for StreakSummary);
    v224 = sub_B0FE0(v219);

    sub_A19B0(v218, type metadata accessor for StreakSummary);
    if ((v224 & 1) == 0)
    {
      swift_beginAccess();
      sub_9A3FC(v217 + v222[5], v218, type metadata accessor for StreakSummary);
      swift_beginAccess();
      sub_8A20C(v218, v217 + v222[7]);
      v225 = v217 + v222[5];
      sub_A19B0(v225, type metadata accessor for StreakSummary);
      v226 = v284;
      (v284)(v225, 1, 1, v190);
      v226(v225 + v221[5], 1, 1, v190);
      v226(v225 + v221[6], 1, 1, v190);
      *(v225 + v221[7]) = 0;
    }
  }
}

void sub_96224(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = sub_3CB0(&qword_104800);
  __chkstk_darwin(v8 - 8);
  v10 = &v15 - v9;
  sub_B954(a1, &v15 - v9, &qword_104800);
  v11 = *a2;
  v12 = sub_C3CB4();
  v13 = *(v12 - 8);
  isa = 0;
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    isa = sub_C3C04().super.isa;
    (*(v13 + 8))(v10, v12);
  }

  [v11 *a5];
}

uint64_t sub_9636C@<X0>(id *a1@<X0>, SEL *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    sub_C3C64();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_C3CB4();
  v8 = *(*(v7 - 8) + 56);

  return v8(a3, v6, 1, v7);
}

uint64_t sub_9640C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v117 = a1;
  v118 = a4;
  v110 = a3;
  v4 = type metadata accessor for StreakSummary();
  __chkstk_darwin(v4);
  v114 = &v94[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_C3BF4();
  v101 = *(v6 - 8);
  v102 = v6;
  __chkstk_darwin(v6);
  v100 = &v94[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_C36C4();
  v108 = *(v8 - 8);
  v109 = v8;
  __chkstk_darwin(v8);
  v111 = &v94[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_3CB0(&qword_104800);
  v11 = __chkstk_darwin(v10 - 8);
  v112 = &v94[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __chkstk_darwin(v11);
  v15 = &v94[-v14];
  __chkstk_darwin(v13);
  v17 = &v94[-v16];
  v18 = sub_C3CB4();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v105 = &v94[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = __chkstk_darwin(v20);
  v106 = &v94[-v23];
  v24 = __chkstk_darwin(v22);
  v107 = &v94[-v25];
  v26 = __chkstk_darwin(v24);
  v113 = &v94[-v27];
  v28 = __chkstk_darwin(v26);
  v116 = &v94[-v29];
  __chkstk_darwin(v28);
  v31 = &v94[-v30];
  v32 = swift_projectBox();
  v103 = type metadata accessor for InsightsDataManager.Streaks(0);
  v104 = swift_projectBox();
  swift_beginAccess();
  v115 = v4;
  v33 = *(v4 + 24);
  v118 = v32;
  sub_B954(v32 + v33, v17, &qword_104800);
  v34 = *(v19 + 48);
  if (v34(v17, 1, v18) == 1)
  {
    return sub_C060(v17, &qword_104800);
  }

  v36 = *(v19 + 32);
  v36(v31, v17, v18);
  v37 = v18;
  if ((sub_C3C24() & 1) == 0)
  {
    return (*(v19 + 8))(v31, v18);
  }

  v38 = v118;
  swift_beginAccess();
  sub_B954(v38, v15, &qword_104800);
  if (v34(v15, 1, v37) != 1)
  {
    v117 = v19;
    v36(v116, v15, v37);
    swift_beginAccess();
    v40 = v115;
    v41 = v112;
    sub_B954(v38 + v115[5], v112, &qword_104800);
    if (v34(v41, 1, v37) == 1)
    {
      v39 = v117;
      v42 = v41;
      v43 = v117[1];
      v43(v116, v37);
      v43(v31, v37);
      sub_C060(v42, &qword_104800);
      goto LABEL_15;
    }

    v99 = v31;
    v36(v113, v41, v37);
    sub_3CB0(&qword_107708);
    v44 = sub_C3E84();
    v45 = *(v44 - 8);
    v46 = *(v45 + 72);
    v47 = (*(v45 + 80) + 32) & ~*(v45 + 80);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_CE0A0;
    v49 = v48 + v47;
    v50 = *(v45 + 104);
    v39 = (v45 + 104);
    v50(v49, enum case for Calendar.Component.day(_:), v44);
    v50(v49 + v46, enum case for Calendar.Component.second(_:), v44);
    v38 = v113;
    v51 = sub_5A02C(v48);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v52 = v111;
    v53 = v116;
    sub_C3DA4();

    v54 = sub_C3664();
    if (v55)
    {
      (*(v108 + 8))(v52, v109);
      v39 = v117;
      v56 = v117[1];
      v56(v38, v37);
LABEL_14:
      v56(v53, v37);
      v56(v99, v37);
      v38 = v118;
      goto LABEL_15;
    }

    v57 = v54;
    v58 = sub_C36A4();
    if (v59)
    {
      (*(v108 + 8))(v52, v109);
      v39 = v117;
      v56 = v117[1];
      v56(v113, v37);
      goto LABEL_14;
    }

    v112 = v37;
    v62 = v58 != 0;
    v63 = __OFADD__(v57, v62);
    v64 = v57 + v62;
    if (v63)
    {
      __break(1u);
    }

    else
    {
      v39 = v117;
      v38 = v118;
      v65 = v113;
      v37 = v106;
      v51 = v107;
      if (v64 < 2)
      {
        (*(v108 + 8))(v52, v109);
        v87 = v39[1];
        v37 = v112;
        v87(v65, v112);
        v87(v53, v37);
        v87(v99, v37);
        goto LABEL_6;
      }

      v110 = v64;
      if (qword_1042C0 == -1)
      {
LABEL_20:
        v66 = sub_C4CD4();
        sub_B680(v66, qword_109040);
        v67 = v39[2];
        v68 = v51;
        v69 = v39;
        v70 = v112;
        v67(v68, v116, v112);
        v67(v37, v113, v70);
        v71 = v105;
        v67(v105, v99, v70);
        v72 = sub_C4CB4();
        v73 = sub_C5A64();
        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          v97 = swift_slowAlloc();
          v119[0] = v97;
          *v74 = 134218754;
          *(v74 + 4) = v110;
          *(v74 + 12) = 2080;
          v75 = v100;
          sub_C34C4();
          sub_9A060(&qword_108CB8, &type metadata accessor for Date.ISO8601FormatStyle);
          v76 = v102;
          v96 = v72;
          v77 = v107;
          sub_C3C94();
          v95 = v73;
          v101 = *(v101 + 8);
          (v101)(v75, v76);
          v98 = v69[1];
          v98(v77, v70);
          v78 = sub_BA920(v120, v121, v119);

          *(v74 + 14) = v78;
          *(v74 + 22) = 2080;
          sub_C34C4();
          v79 = v106;
          sub_C3C94();
          (v101)(v75, v76);
          v98(v79, v70);
          v80 = sub_BA920(v120, v121, v119);

          *(v74 + 24) = v80;
          *(v74 + 32) = 2080;
          sub_C34C4();
          v81 = v105;
          sub_C3C94();
          (v101)(v75, v76);
          v82 = v98;
          v98(v81, v70);
          v83 = sub_BA920(v120, v121, v119);
          v84 = v110;

          *(v74 + 34) = v83;
          v85 = v96;
          _os_log_impl(&dword_0, v96, v95, "Ending %ld day streak from %s to %s after %s", v74, 0x2Au);
          swift_arrayDestroy();

          (*(v108 + 8))(v111, v109);
          v82(v113, v70);
          v82(v116, v70);
          v82(v99, v70);
          v38 = v118;
          v86 = v104;
        }

        else
        {

          v88 = v69[1];
          v88(v71, v70);
          v88(v37, v70);
          v88(v107, v70);
          (*(v108 + 8))(v52, v109);
          v88(v113, v70);
          v88(v116, v70);
          v88(v99, v70);
          v86 = v104;
          v84 = v110;
        }

        swift_beginAccess();
        v89 = v115;
        *(v38 + v115[7]) = v84;
        swift_beginAccess();
        v61 = v114;
        sub_9A3FC(v86, v114, type metadata accessor for StreakSummary);
        swift_beginAccess();
        v90 = v103;
        sub_8A20C(v61, v86 + *(v103 + 24));
        swift_beginAccess();
        sub_9A3FC(v38, v61, type metadata accessor for StreakSummary);
        swift_beginAccess();
        sub_8A20C(v61, v86);
        swift_beginAccess();
        v91 = *(v38 + v89[7]);
        swift_beginAccess();
        if (v91 >= *(v86 + *(v90 + 32) + v89[7]))
        {
          swift_beginAccess();
          sub_9A3FC(v38, v61, type metadata accessor for StreakSummary);
          swift_beginAccess();
          sub_8A20C(v61, v86 + *(v90 + 32));
        }

        v92 = v117[7];
        v93 = v112;
        v92(v61, 1, 1, v112);
        v92(&v61[v89[5]], 1, 1, v93);
        v92(&v61[v89[6]], 1, 1, v93);
        *&v61[v89[7]] = 0;
        goto LABEL_16;
      }
    }

    swift_once();
    goto LABEL_20;
  }

  (*(v19 + 8))(v31, v37);
  sub_C060(v15, &qword_104800);
  v39 = v19;
LABEL_6:
  v40 = v115;
LABEL_15:
  v60 = v39[7];
  v61 = v114;
  v60(v114, 1, 1, v37);
  v60(&v61[v40[5]], 1, 1, v37);
  v60(&v61[v40[6]], 1, 1, v37);
  *&v61[v40[7]] = 0;
LABEL_16:
  swift_beginAccess();
  return sub_8A20C(v61, v38);
}

uint64_t sub_972D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v117 = a1;
  v118 = a4;
  v110 = a3;
  v4 = type metadata accessor for StreakSummary();
  __chkstk_darwin(v4);
  v114 = &v94[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_C3BF4();
  v101 = *(v6 - 8);
  v102 = v6;
  __chkstk_darwin(v6);
  v100 = &v94[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_C36C4();
  v108 = *(v8 - 8);
  v109 = v8;
  __chkstk_darwin(v8);
  v111 = &v94[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_3CB0(&qword_104800);
  v11 = __chkstk_darwin(v10 - 8);
  v112 = &v94[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __chkstk_darwin(v11);
  v15 = &v94[-v14];
  __chkstk_darwin(v13);
  v17 = &v94[-v16];
  v18 = sub_C3CB4();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v105 = &v94[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = __chkstk_darwin(v20);
  v106 = &v94[-v23];
  v24 = __chkstk_darwin(v22);
  v107 = &v94[-v25];
  v26 = __chkstk_darwin(v24);
  v113 = &v94[-v27];
  v28 = __chkstk_darwin(v26);
  v116 = &v94[-v29];
  __chkstk_darwin(v28);
  v31 = &v94[-v30];
  v32 = swift_projectBox();
  v103 = type metadata accessor for InsightsDataManager.Streaks(0);
  v104 = swift_projectBox();
  swift_beginAccess();
  v115 = v4;
  v33 = *(v4 + 24);
  v118 = v32;
  sub_B954(v32 + v33, v17, &qword_104800);
  v34 = *(v19 + 48);
  if (v34(v17, 1, v18) == 1)
  {
    return sub_C060(v17, &qword_104800);
  }

  v36 = *(v19 + 32);
  v36(v31, v17, v18);
  v37 = v18;
  if ((sub_C3C24() & 1) == 0)
  {
    return (*(v19 + 8))(v31, v18);
  }

  v38 = v118;
  swift_beginAccess();
  sub_B954(v38, v15, &qword_104800);
  if (v34(v15, 1, v37) != 1)
  {
    v117 = v19;
    v36(v116, v15, v37);
    swift_beginAccess();
    v40 = v115;
    v41 = v112;
    sub_B954(v38 + v115[5], v112, &qword_104800);
    if (v34(v41, 1, v37) == 1)
    {
      v39 = v117;
      v42 = v41;
      v43 = v117[1];
      v43(v116, v37);
      v43(v31, v37);
      sub_C060(v42, &qword_104800);
      goto LABEL_15;
    }

    v99 = v31;
    v36(v113, v41, v37);
    sub_3CB0(&qword_107708);
    v44 = sub_C3E84();
    v45 = *(v44 - 8);
    v46 = *(v45 + 72);
    v47 = (*(v45 + 80) + 32) & ~*(v45 + 80);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_CE0A0;
    v49 = v48 + v47;
    v50 = *(v45 + 104);
    v39 = (v45 + 104);
    v50(v49, enum case for Calendar.Component.weekOfYear(_:), v44);
    v50(v49 + v46, enum case for Calendar.Component.second(_:), v44);
    v38 = v113;
    v51 = sub_5A02C(v48);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v52 = v111;
    v53 = v116;
    sub_C3DA4();

    v54 = sub_C3644();
    if (v55)
    {
      (*(v108 + 8))(v52, v109);
      v39 = v117;
      v56 = v117[1];
      v56(v38, v37);
LABEL_14:
      v56(v53, v37);
      v56(v99, v37);
      v38 = v118;
      goto LABEL_15;
    }

    v57 = v54;
    v58 = sub_C36A4();
    if (v59)
    {
      (*(v108 + 8))(v52, v109);
      v39 = v117;
      v56 = v117[1];
      v56(v113, v37);
      goto LABEL_14;
    }

    v112 = v37;
    v62 = v58 != 0;
    v63 = __OFADD__(v57, v62);
    v64 = v57 + v62;
    if (v63)
    {
      __break(1u);
    }

    else
    {
      v39 = v117;
      v38 = v118;
      v65 = v113;
      v37 = v106;
      v51 = v107;
      if (v64 < 2)
      {
        (*(v108 + 8))(v52, v109);
        v87 = v39[1];
        v37 = v112;
        v87(v65, v112);
        v87(v53, v37);
        v87(v99, v37);
        goto LABEL_6;
      }

      v110 = v64;
      if (qword_1042C0 == -1)
      {
LABEL_20:
        v66 = sub_C4CD4();
        sub_B680(v66, qword_109040);
        v67 = v39[2];
        v68 = v51;
        v69 = v39;
        v70 = v112;
        v67(v68, v116, v112);
        v67(v37, v113, v70);
        v71 = v105;
        v67(v105, v99, v70);
        v72 = sub_C4CB4();
        v73 = sub_C5A64();
        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          v97 = swift_slowAlloc();
          v119[0] = v97;
          *v74 = 134218754;
          *(v74 + 4) = v110;
          *(v74 + 12) = 2080;
          v75 = v100;
          sub_C34C4();
          sub_9A060(&qword_108CB8, &type metadata accessor for Date.ISO8601FormatStyle);
          v76 = v102;
          v96 = v72;
          v77 = v107;
          sub_C3C94();
          v95 = v73;
          v101 = *(v101 + 8);
          (v101)(v75, v76);
          v98 = v69[1];
          v98(v77, v70);
          v78 = sub_BA920(v120, v121, v119);

          *(v74 + 14) = v78;
          *(v74 + 22) = 2080;
          sub_C34C4();
          v79 = v106;
          sub_C3C94();
          (v101)(v75, v76);
          v98(v79, v70);
          v80 = sub_BA920(v120, v121, v119);

          *(v74 + 24) = v80;
          *(v74 + 32) = 2080;
          sub_C34C4();
          v81 = v105;
          sub_C3C94();
          (v101)(v75, v76);
          v82 = v98;
          v98(v81, v70);
          v83 = sub_BA920(v120, v121, v119);
          v84 = v110;

          *(v74 + 34) = v83;
          v85 = v96;
          _os_log_impl(&dword_0, v96, v95, "Ending %ld week streak from %s to %s after %s", v74, 0x2Au);
          swift_arrayDestroy();

          (*(v108 + 8))(v111, v109);
          v82(v113, v70);
          v82(v116, v70);
          v82(v99, v70);
          v38 = v118;
          v86 = v104;
        }

        else
        {

          v88 = v69[1];
          v88(v71, v70);
          v88(v37, v70);
          v88(v107, v70);
          (*(v108 + 8))(v52, v109);
          v88(v113, v70);
          v88(v116, v70);
          v88(v99, v70);
          v86 = v104;
          v84 = v110;
        }

        swift_beginAccess();
        v89 = v115;
        *(v38 + v115[7]) = v84;
        swift_beginAccess();
        v90 = v103;
        v61 = v114;
        sub_9A3FC(v86 + *(v103 + 20), v114, type metadata accessor for StreakSummary);
        swift_beginAccess();
        sub_8A20C(v61, v86 + v90[7]);
        swift_beginAccess();
        sub_9A3FC(v38, v61, type metadata accessor for StreakSummary);
        swift_beginAccess();
        sub_8A20C(v61, v86 + v90[5]);
        swift_beginAccess();
        v91 = *(v38 + v89[7]);
        swift_beginAccess();
        if (v91 >= *(v86 + v90[9] + v89[7]))
        {
          swift_beginAccess();
          sub_9A3FC(v38, v61, type metadata accessor for StreakSummary);
          swift_beginAccess();
          sub_8A20C(v61, v86 + v90[9]);
        }

        v92 = v117[7];
        v93 = v112;
        v92(v61, 1, 1, v112);
        v92(&v61[v89[5]], 1, 1, v93);
        v92(&v61[v89[6]], 1, 1, v93);
        *&v61[v89[7]] = 0;
        goto LABEL_16;
      }
    }

    swift_once();
    goto LABEL_20;
  }

  (*(v19 + 8))(v31, v37);
  sub_C060(v15, &qword_104800);
  v39 = v19;
LABEL_6:
  v40 = v115;
LABEL_15:
  v60 = v39[7];
  v61 = v114;
  v60(v114, 1, 1, v37);
  v60(&v61[v40[5]], 1, 1, v37);
  v60(&v61[v40[6]], 1, 1, v37);
  *&v61[v40[7]] = 0;
LABEL_16:
  swift_beginAccess();
  return sub_8A20C(v61, v38);
}

uint64_t sub_981AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_3CB0(&qword_109070);
  v5 = v4 - 8;
  v6 = __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v17 - v9;
  sub_B954(a1, &v17 - v9, &qword_109070);
  v11 = *(v5 + 56);
  v12 = *&v10[v11];
  v13 = *&v10[v11 + 8];
  v14 = &v8[v11];
  v17 = *&v10[v11 + 16];
  sub_E9D4(v10, v8, &qword_108F48);
  *v14 = v12;
  *(v14 + 1) = v13;
  *(v14 + 1) = v17;
  v15 = sub_C3CB4();
  (*(*(v15 - 8) + 16))(a2, v8, v15);
  return sub_C060(v8, &qword_109070);
}

void sub_9830C(uint64_t a1, uint64_t a2)
{
  v32 = a1;
  v3 = sub_C49F4();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v28 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = v26 - v7;
  v30 = a2 + 16;
  v31 = sub_C3FE4();
  v29 = sub_C3FC4();
  sub_3CB0(&qword_106E78);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_D2890;
  v10 = v9;
  v27 = v9;
  v26[1] = sub_BE28(0, &qword_1090E8);
  *(v10 + 32) = sub_C59A4();
  sub_3CB0(&qword_106600);
  v11 = swift_allocObject();
  v33 = xmmword_CE0A0;
  *(v11 + 16) = xmmword_CE0A0;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = sub_3C4B4();
  *(v11 + 32) = 0x7079547465737361;
  *(v11 + 40) = 0xE900000000000065;
  sub_3CB0(&qword_106628);
  v12 = swift_allocObject();
  *(v12 + 16) = v33;
  v26[0] = *(v4 + 104);
  (v26[0])(v8, enum case for AssetType.visit(_:), v3);
  v13 = sub_C49E4();
  v15 = v14;
  v16 = *(v4 + 8);
  v16(v8, v3);
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  v17 = v28;
  (v26[0])(v28, enum case for AssetType.multiPinMap(_:), v3);
  v18 = sub_C49E4();
  v20 = v19;
  v16(v17, v3);
  *(v12 + 48) = v18;
  *(v12 + 56) = v20;
  *(v11 + 96) = sub_3CB0(&qword_1063B0);
  *(v11 + 104) = sub_517B0(&qword_1090F0, &qword_1063B0);
  *(v11 + 72) = v12;
  *(v27 + 40) = sub_C5964();
  isa = sub_C5664().super.isa;

  v22 = [objc_opt_self() andPredicateWithSubpredicates:isa];

  v23 = v29;
  [v29 setPredicate:v22];

  sub_3CB0(&qword_106650);
  v24 = swift_allocObject();
  *(v24 + 16) = v33;
  *(v24 + 32) = 0x7079547465737361;
  *(v24 + 40) = 0xE900000000000065;
  *(v24 + 88) = &type metadata for String;
  *(v24 + 56) = &type metadata for String;
  strcpy((v24 + 64), "assetMetaData");
  *(v24 + 78) = -4864;
  v25 = sub_C5664().super.isa;

  [v23 setPropertiesToFetch:v25];

  v34 = v30;
  sub_C5C44();
}

uint64_t sub_9877C(void *a1, id *a2)
{
  v98 = a2;
  v3 = sub_3CB0(&qword_105EA8);
  __chkstk_darwin(v3 - 8);
  v90 = &v84 - v4;
  v5 = sub_C4614();
  v91 = *(v5 - 8);
  v92 = v5;
  __chkstk_darwin(v5);
  v88 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3CB0(&qword_106068);
  __chkstk_darwin(v7 - 8);
  v93 = &v84 - v8;
  v95 = sub_C43A4();
  v97 = *(v95 - 8);
  v9 = __chkstk_darwin(v95);
  v94 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v89 = &v84 - v11;
  v12 = sub_3CB0(&qword_108DE0);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v84 - v16;
  v96 = a1;
  sub_C3FD4();
  v18 = sub_C49F4();
  v19 = *(v18 - 8);
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    goto LABEL_43;
  }

  sub_B954(v17, v15, &qword_108DE0);
  v24 = (*(v19 + 88))(v15, v18);
  if (v24 != enum case for AssetType.visit(_:))
  {
    v21 = v97;
    if (v24 == enum case for AssetType.multiPinMap(_:))
    {
      v84 = v17;
      v50 = [v96 assetMetaData];
      if (v50)
      {
        v51 = v50;
        v52 = sub_C3984();
        v54 = v53;

        sub_9A060(&qword_106C68, &type metadata accessor for MultiPinMapAssetMetadata);
        v55 = v90;
        v56 = v92;
        sub_C3964();
        sub_BF1C(v52, v54);
        v57 = v91;
        if ((*(v91 + 48))(v55, 1, v56) != 1)
        {
          (*(v57 + 32))(v88, v55, v56);
          v58 = sub_C45D4();
          if (!v58)
          {
            v58 = _swiftEmptyArrayStorage;
          }

          v90 = *(v58 + 2);
          v22 = 0;
          v37 = 0;
          v23 = 0;
          v39 = 0;
          if (v90)
          {
            v33 = 0;
            v89 = v58 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
            v86 = v21 + 8;
            v87 = v21 + 16;
            v59 = v95;
            v85 = v58;
            while (v33 < *(v58 + 2))
            {
              v19 = v94;
              (*(v21 + 16))(v94, &v89[*(v21 + 72) * v33], v59);
              v20 = sub_AFA4C();
              v61 = v60;
              (*(v21 + 8))(v19, v59);
              if (v61)
              {
                v19 = swift_allocObject();
                *(v19 + 16) = v61;
                v93 = v61;
                sub_2881C(v22);
                v37 = [v96 objectID];
                v62 = v98;
                swift_beginAccess();
                v63 = swift_allocObject();
                *(v63 + 16) = sub_A5BD4;
                *(v63 + 24) = v19;
                sub_2881C(v23);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v99[0] = *v62;
                v39 = v99[0];
                *v62 = 0x8000000000000000;
                v22 = sub_242F0(v20);
                v66 = v39[2];
                v67 = (v65 & 1) == 0;
                v68 = v66 + v67;
                if (__OFADD__(v66, v67))
                {
                  goto LABEL_45;
                }

                LOBYTE(v21) = v65;
                if (v39[3] >= v68)
                {
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    sub_9DB80();
                    v39 = v99[0];
                  }
                }

                else
                {
                  sub_9C7A0(v68, isUniquelyReferenced_nonNull_native);
                  v39 = v99[0];
                  v69 = sub_242F0(v20);
                  if ((v21 & 1) != (v70 & 1))
                  {
                    goto LABEL_50;
                  }

                  v22 = v69;
                }

                v59 = v95;
                *v98 = v39;
                if ((v21 & 1) == 0)
                {
                  v71 = (*(v63 + 16))();
                  v39[(v22 >> 6) + 8] |= 1 << v22;
                  *(v39[6] + 8 * v22) = v20;
                  v72 = (v39[7] + 16 * v22);
                  *v72 = v71;
                  v72[1] = v73;
                  v74 = v39[2];
                  v75 = __OFADD__(v74, 1);
                  v76 = v74 + 1;
                  if (v75)
                  {
                    goto LABEL_46;
                  }

                  v39[2] = v76;
                  sub_A5B84(v20);
                }

                sub_61C64(v99, v37);
                swift_endAccess();
                sub_A5C04(v20);

                v23 = sub_A5C00;
                v22 = sub_A5BD4;
                v37 = v19;
                v39 = v63;
                v21 = v97;
              }

              ++v33;
              v58 = v85;
              if (v90 == v33)
              {
                goto LABEL_36;
              }
            }

            __break(1u);
LABEL_45:
            __break(1u);
LABEL_46:
            __break(1u);
            goto LABEL_47;
          }

LABEL_36:

          (*(v91 + 8))(v88, v92);
          v20 = 0;
          v21 = 0;
          v17 = v84;
LABEL_43:
          sub_C060(v17, &qword_108DE0);
          sub_2881C(v20);
          sub_2881C(v21);
          sub_2881C(v22);
          sub_2881C(v23);
          return 1;
        }
      }

      else
      {
        v55 = v90;
        (*(v91 + 56))(v90, 1, 1, v92);
      }

      sub_C060(v55, &qword_105EA8);
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v17 = v84;
      goto LABEL_43;
    }

    (*(v19 + 8))(v15, v18);
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    goto LABEL_43;
  }

  v19 = v17;
  v25 = [v96 assetMetaData];
  v26 = v97;
  if (!v25)
  {
    v31 = v93;
    (*(v97 + 56))(v93, 1, 1, v95);
    goto LABEL_33;
  }

  v27 = v25;
  v28 = sub_C3984();
  v30 = v29;

  sub_9A060(&qword_108ED8, &type metadata accessor for VisitAssetMetadata);
  v31 = v93;
  v32 = v95;
  sub_C3964();
  sub_BF1C(v28, v30);
  if ((*(v26 + 48))(v31, 1, v32) == 1)
  {
LABEL_33:
    sub_C060(v31, &qword_106068);
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    goto LABEL_43;
  }

  v33 = v89;
  (*(v26 + 32))(v89, v31, v32);
  v34 = sub_AFA4C();
  v36 = v35;
  if (!v35)
  {
    (*(v26 + 8))(v33, v32);
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    goto LABEL_43;
  }

  v37 = v34;
  v38 = swift_allocObject();
  v38[2] = v36;
  v22 = v36;
  v39 = [v96 objectID];
  v40 = v98;
  swift_beginAccess();
  v41 = swift_allocObject();
  *(v41 + 16) = sub_A6B9C;
  *(v41 + 24) = v38;
  v96 = v38;
  v94 = v41;
  v42 = swift_isUniquelyReferenced_nonNull_native();
  v99[0] = *v40;
  v43 = v99[0];
  *v40 = 0x8000000000000000;
  v20 = sub_242F0(v37);
  v45 = v43[2];
  v46 = (v44 & 1) == 0;
  v47 = v45 + v46;
  if (__OFADD__(v45, v46))
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  LOBYTE(v21) = v44;
  if (v43[3] >= v47)
  {
    if (v42)
    {
      goto LABEL_39;
    }

LABEL_48:
    sub_9DB80();
    v43 = v99[0];
    goto LABEL_39;
  }

  sub_9C7A0(v47, v42);
  v43 = v99[0];
  v48 = sub_242F0(v37);
  if ((v21 & 1) != (v49 & 1))
  {
    goto LABEL_50;
  }

  v20 = v48;
LABEL_39:
  v77 = v95;
  *v98 = v43;
  if (v21)
  {
LABEL_42:
    sub_61C64(v99, v39);
    swift_endAccess();
    sub_A5C04(v37);

    (*(v97 + 8))(v33, v77);
    v22 = 0;
    v23 = 0;
    v21 = sub_A6BA0;
    v20 = sub_A6B9C;
    v17 = v19;
    goto LABEL_43;
  }

  v78 = sub_A5BD4();
  v43[(v20 >> 6) + 8] |= 1 << v20;
  *(v43[6] + 8 * v20) = v37;
  v79 = (v43[7] + 16 * v20);
  *v79 = v78;
  v79[1] = v80;
  v81 = v43[2];
  v75 = __OFADD__(v81, 1);
  v82 = v81 + 1;
  if (!v75)
  {
    v43[2] = v82;
    sub_A5B84(v37);
    goto LABEL_42;
  }

  __break(1u);
LABEL_50:
  result = sub_C6294();
  __break(1u);
  return result;
}

void *sub_993A4(void *a1)
{
  if (_swiftEmptyArrayStorage >> 62 && sub_C60E4())
  {
    sub_5A4FC(_swiftEmptyArrayStorage);
  }

  v2 = a1;
  return a1;
}

uint64_t sub_99410()
{
  v1 = v0;
  v2 = sub_3CB0(&qword_104800);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = sub_C3CB4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0x203A6874676E654CLL;
  v14 = 0xE800000000000000;
  v9 = type metadata accessor for StreakSummary();
  v12._countAndFlagsBits = *(v0 + *(v9 + 28));
  v15._countAndFlagsBits = sub_C6214();
  sub_C5524(v15);

  v10 = v13;
  sub_B954(v1 + *(v9 + 24), v4, &qword_104800);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_C060(v4, &qword_104800);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v12._countAndFlagsBits = 0x3A676E69646E450ALL;
    v12._object = 0xE900000000000020;
    sub_9A060(&qword_10A0F0, &type metadata accessor for Date);
    v16._countAndFlagsBits = sub_C6214();
    sub_C5524(v16);

    sub_C5524(v12);

    (*(v6 + 8))(v8, v5);
    return v13;
  }

  return v10;
}

char *sub_996CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v35 = sub_3CB0(&qword_109080);
  v6 = __chkstk_darwin(v35);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v33 = &v32 - v9;
  v10 = sub_C3CB4();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v36 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v32 - v14;
  v37 = sub_3CB0(&qword_108F48);
  v16 = __chkstk_darwin(v37);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v32 - v19;
  v32 = sub_3CB0(a2);
  *(a3 + *(v32 + 32)) = &_swiftEmptyDictionarySingleton;
  v34 = a3;
  sub_9A3FC(a1, a3, type metadata accessor for UniformDateBins);
  sub_AB0C0(0, v20);
  v21 = *(v11 + 16);
  v21(v15, v20, v10);
  sub_C060(v20, &qword_108F48);
  v22 = *(a1 + *(type metadata accessor for UniformDateBins(0) + 24));
  result = (v22 - 1);
  if (__OFSUB__(v22, 1))
  {
    __break(1u);
  }

  else
  {
    sub_AB0C0(result, v18);
    v21(v36, &v18[*(v37 + 36)], v10);
    sub_C060(v18, &qword_108F48);
    sub_9A060(&qword_108F40, &type metadata accessor for Date);
    v24 = sub_C5354();
    result = sub_A19B0(a1, type metadata accessor for UniformDateBins);
    if (v24)
    {
      v25 = v11;
      v26 = *(v11 + 32);
      v27 = v33;
      v26(v33, v15, v10);
      v28 = v35;
      v26((v27 + *(v35 + 48)), v36, v10);
      sub_B954(v27, v8, &qword_109080);
      v29 = *(v28 + 48);
      v30 = v34 + *(v32 + 28);
      v26(v30, v8, v10);
      v31 = *(v25 + 8);
      v31(&v8[v29], v10);
      sub_E9D4(v27, v8, &qword_109080);
      v26((v30 + *(v37 + 36)), &v8[*(v28 + 48)], v10);
      return (v31)(v8, v10);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_99B08(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 8 * a2);
    v6 = *(a5 + 56) + 32 * a2;
    v7 = *(v6 + 16);
    v8 = *(v6 + 24);
    *result = *v6;
    *(result + 16) = v7;
    *(result + 24) = v8;

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_99BC0(uint64_t a1, uint64_t *a2)
{
  Update = type metadata accessor for InsightsDataManager.LastUpdate(0);
  __chkstk_darwin(Update - 8);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_9A3FC(a1, v6, type metadata accessor for InsightsDataManager.LastUpdate);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_9A060(&qword_108F28, type metadata accessor for InsightsDataManager);
  sub_C3F34();

  return sub_A19B0(v6, type metadata accessor for InsightsDataManager.LastUpdate);
}

uint64_t sub_99D10@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_9A060(&qword_108F28, type metadata accessor for InsightsDataManager);
  sub_C3F44();

  v4 = OBJC_IVAR____TtC20JournalNotifications19InsightsDataManager__calendar;
  swift_beginAccess();
  v5 = sub_C3EA4();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_99E08(uint64_t a1)
{
  v2 = sub_C3EA4();
  __chkstk_darwin(v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return sub_B2B04(v4);
}

uint64_t sub_99ED4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_9A060(&qword_108F28, type metadata accessor for InsightsDataManager);
  sub_C3F44();

  v4 = OBJC_IVAR____TtC20JournalNotifications19InsightsDataManager__referenceDate;
  swift_beginAccess();
  return sub_B954(v3 + v4, a2, &qword_104800);
}

uint64_t sub_99FB0(uint64_t a1)
{
  v2 = sub_3CB0(&qword_104800);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  sub_B954(a1, &v6 - v3, &qword_104800);
  return sub_B3374(v4);
}

uint64_t sub_9A060(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_9A0A8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D138;

  return sub_8C600(a1, v5, v4);
}

uint64_t sub_9A154(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D138;

  return sub_8DF5C(a1, v5, v4);
}

uint64_t sub_9A200(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D138;

  return sub_8F328(a1, v5, v4);
}

uint64_t sub_9A2AC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1CE7C;

  return sub_8FB40(a1, v1);
}

uint64_t sub_9A348(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D138;

  return sub_8FF6C(a1, v4, v5, v6);
}

uint64_t sub_9A3FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_9A464@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_9A060(&qword_108F28, type metadata accessor for InsightsDataManager);
  sub_C3F44();

  v5 = *(v3 + OBJC_IVAR____TtC20JournalNotifications19InsightsDataManager__wordCount + 16);
  v4 = *(v3 + OBJC_IVAR____TtC20JournalNotifications19InsightsDataManager__wordCount + 24);
  *a2 = *(v3 + OBJC_IVAR____TtC20JournalNotifications19InsightsDataManager__wordCount);
  *(a2 + 16) = v5;
  *(a2 + 24) = v4;
}

uint64_t sub_9A528()
{
  swift_getKeyPath();
  sub_9A060(&qword_108F28, type metadata accessor for InsightsDataManager);
  sub_C3F34();
}

uint64_t sub_9A660@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t (*a3)(void)@<X5>, uint64_t a4@<X8>)
{
  v7 = *a1;
  swift_getKeyPath();
  sub_9A060(&qword_108F28, type metadata accessor for InsightsDataManager);
  sub_C3F44();

  v8 = *a2;
  swift_beginAccess();
  return sub_9A3FC(v7 + v8, a4, a3);
}

uint64_t sub_9A770(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for InsightsDataManager.EntrySummaryGroup(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_9A3FC(a1, v6, type metadata accessor for InsightsDataManager.EntrySummaryGroup);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_9A060(&qword_108F28, type metadata accessor for InsightsDataManager);
  sub_C3F34();

  return sub_A19B0(v6, type metadata accessor for InsightsDataManager.EntrySummaryGroup);
}

uint64_t sub_9A8E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_9A060(&qword_108F28, type metadata accessor for InsightsDataManager);
  sub_C3F44();

  v4 = *(v3 + OBJC_IVAR____TtC20JournalNotifications19InsightsDataManager__allTime + 8);
  v5 = *(v3 + OBJC_IVAR____TtC20JournalNotifications19InsightsDataManager__allTime + 16);
  v6 = *(v3 + OBJC_IVAR____TtC20JournalNotifications19InsightsDataManager__allTime + 24);
  *a2 = *(v3 + OBJC_IVAR____TtC20JournalNotifications19InsightsDataManager__allTime);
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
}

uint64_t sub_9A9B4()
{
  swift_getKeyPath();
  sub_9A060(&qword_108F28, type metadata accessor for InsightsDataManager);
  sub_C3F34();
}

uint64_t sub_9AAC8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_9A060(&qword_108F28, type metadata accessor for InsightsDataManager);
  sub_C3F44();

  *a2 = *(v3 + OBJC_IVAR____TtC20JournalNotifications19InsightsDataManager__places);
}

uint64_t sub_9AB80()
{
  swift_getKeyPath();
  sub_9A060(&qword_108F28, type metadata accessor for InsightsDataManager);
  sub_C3F34();
}

uint64_t sub_9AC80(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_3CB0(&qword_1091B0);
  result = sub_C6104();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v32 = *(*(v5 + 48) + 16 * v19);
      v20 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v21 = v20;
      }

      sub_C62F4();
      v22 = *&v32;
      if (*&v32 == 0.0)
      {
        v22 = 0.0;
      }

      sub_C6324(*&v22);
      v23 = *(&v32 + 1);
      if (*(&v32 + 1) == 0.0)
      {
        v23 = 0.0;
      }

      sub_C6324(*&v23);
      result = sub_C6344();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v32;
      *(*(v7 + 56) + 8 * v15) = v20;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_9AF38(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_3CB0(&qword_1091A8);
  v30 = a2;
  result = sub_C6104();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_16:
      v22 = v19 | (v8 << 6);
      v23 = *(*(v5 + 48) + v22);
      v24 = *(*(v5 + 56) + 8 * v22);
      if ((v30 & 1) == 0)
      {
      }

      sub_C62F4();
      sub_C5514();

      result = sub_C6344();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v15) >> 6;
        while (++v17 != v26 || (v25 & 1) == 0)
        {
          v27 = v17 == v26;
          if (v17 == v26)
          {
            v17 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v17);
          if (v28 != -1)
          {
            v18 = __clz(__rbit64(~v28)) + (v17 << 6);
            goto LABEL_8;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v23;
      *(*(v7 + 56) + 8 * v18) = v24;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_16;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_9B2BC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_3CB0(&qword_105468);
  v31 = a2;
  result = sub_C6104();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
        v22 = v21;
      }

      sub_C62F4();
      sub_C6304(v20);
      result = sub_C6344();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_9B570(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  sub_3CB0(a3);
  v36 = a2;
  result = sub_C6104();
  v8 = result;
  if (*(v6 + 16))
  {
    v34 = v3;
    v35 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(v6 + 56);
      v22 = *(*(v6 + 48) + 8 * v20);
      v23 = (v21 + 32 * v20);
      if (v36)
      {
        sub_D564(v23, v37);
      }

      else
      {
        sub_B760(v23, v37);
        v24 = v22;
      }

      sub_C5484();
      sub_C62F4();
      sub_C5514();
      v25 = sub_C6344();

      v26 = -1 << *(v8 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      result = sub_D564(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
      v6 = v35;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v4 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v6 + 32);
    v4 = v34;
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v6 + 16) = 0;
  }

LABEL_34:
  *v4 = v8;
  return result;
}

uint64_t sub_9B838(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_3CB0(&qword_1091A0);
  v33 = a2;
  result = sub_C6104();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_D564(v24, v34);
      }

      else
      {
        sub_B760(v24, v34);
      }

      sub_C62F4();
      sub_C5514();
      result = sub_C6344();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_D564(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_9BAF0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_3CB0(&qword_1090A8);
  result = sub_C6104();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      sub_C62F4();
      sub_C5514();

      result = sub_C6344();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_9BEAC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_3CB0(&qword_109180);
  result = sub_C6104();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      result = sub_C62E4();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_9C110(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = _s4YearVMa(0);
  v36 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_3CB0(&qword_109190);
  v37 = a2;
  result = sub_C6104();
  v10 = result;
  if (*(v8 + 16))
  {
    v35 = v3;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v8 + 48) + 8 * v22);
      v24 = *(v36 + 72);
      v25 = *(v8 + 56) + v24 * v22;
      if (v37)
      {
        sub_A65E4(v25, v7, _s4YearVMa);
      }

      else
      {
        sub_9A3FC(v25, v7, _s4YearVMa);
      }

      result = sub_C62E4();
      v26 = -1 << *(v10 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      result = sub_A65E4(v7, *(v10 + 56) + v24 * v18, _s4YearVMa);
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v8 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero((v8 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_9C458(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = _s5MonthVMa(0);
  v36 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_3CB0(&qword_109188);
  v37 = a2;
  result = sub_C6104();
  v10 = result;
  if (*(v8 + 16))
  {
    v35 = v3;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v8 + 48) + 8 * v22);
      v24 = *(v36 + 72);
      v25 = *(v8 + 56) + v24 * v22;
      if (v37)
      {
        sub_A65E4(v25, v7, _s5MonthVMa);
      }

      else
      {
        sub_9A3FC(v25, v7, _s5MonthVMa);
      }

      result = sub_C62E4();
      v26 = -1 << *(v10 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      result = sub_A65E4(v7, *(v10 + 56) + v24 * v18, _s5MonthVMa);
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v8 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero((v8 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_9C7A0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_3CB0(&qword_1090F8);
  result = sub_C6104();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (1)
    {
      if (!v12)
      {
        v17 = v8;
        while (1)
        {
          v8 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            __break(1u);
            goto LABEL_46;
          }

          if (v8 >= v13)
          {
            break;
          }

          v18 = v9[v8];
          ++v17;
          if (v18)
          {
            v16 = __clz(__rbit64(v18));
            v12 = (v18 - 1) & v18;
            goto LABEL_15;
          }
        }

        if ((a2 & 1) == 0)
        {

          v3 = v2;
          goto LABEL_44;
        }

        v30 = 1 << *(v5 + 32);
        v3 = v2;
        if (v30 >= 64)
        {
          bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v9 = -1 << v30;
        }

        *(v5 + 16) = 0;
        break;
      }

      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v31 = *(*(v5 + 56) + 16 * v19);
      if ((a2 & 1) == 0)
      {
        sub_A5B84(v20);
        v21 = v31;
      }

      sub_C62F4();
      if (v20 > 1)
      {
        if (v20 == &dword_0 + 2)
        {
          v22 = 2;
        }

        else
        {
          if (v20 != &dword_0 + 3)
          {
LABEL_24:
            sub_C6304(4uLL);
            sub_C5484();
            sub_C5514();

            goto LABEL_28;
          }

          v22 = 3;
        }
      }

      else if (v20)
      {
        if (v20 != &dword_0 + 1)
        {
          goto LABEL_24;
        }

        v22 = 1;
      }

      else
      {
        v22 = 0;
      }

      sub_C6304(v22);
LABEL_28:
      result = sub_C6344();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_46:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v31;
      ++*(v7 + 16);
    }
  }

LABEL_44:
  *v3 = v7;
  return result;
}

unint64_t sub_9CAC8(unint64_t result, uint64_t a2, void *a3, double a4, double a5)
{
  a3[(result >> 6) + 8] |= 1 << result;
  v5 = (a3[6] + 16 * result);
  *v5 = a4;
  v5[1] = a5;
  *(a3[7] + 8 * result) = a2;
  v6 = a3[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v8;
  }

  return result;
}

unint64_t sub_9CB10(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_9CB54(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2 & 1;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

_OWORD *sub_9CB9C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_D564(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

_OWORD *sub_9CC04(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_D564(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_9CC70(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v10 = a4[7];
  v11 = a5(0);
  result = sub_A65E4(a3, v10 + *(*(v11 - 8) + 72) * a1, a6);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

id sub_9CD2C()
{
  v1 = v0;
  sub_3CB0(&qword_1091B0);
  v2 = *v0;
  v3 = sub_C60F4();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 16 * v17) = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = v18;
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
        goto LABEL_19;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_9CE8C()
{
  v1 = v0;
  sub_3CB0(&qword_1091A8);
  v2 = *v0;
  v3 = sub_C60F4();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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
        goto LABEL_19;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_9CFE8()
{
  v1 = v0;
  sub_3CB0(&qword_105468);
  v2 = *v0;
  v3 = sub_C60F4();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = v18;
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
        goto LABEL_19;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_9D16C(uint64_t *a1)
{
  v2 = v1;
  sub_3CB0(a1);
  v3 = *v1;
  v4 = sub_C60F4();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 48) + 8 * v18);
        sub_B760(*(v3 + 56) + 32 * v18, v20);
        *(*(v5 + 48) + 8 * v18) = v19;
        sub_D564(v20, (*(v5 + 56) + 32 * v18));
        result = v19;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_9D2DC()
{
  v1 = v0;
  sub_3CB0(&qword_1091A0);
  v2 = *v0;
  v3 = sub_C60F4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v22 = 32 * v17;
        sub_B760(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_D564(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
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

void *sub_9D480()
{
  v1 = v0;
  sub_3CB0(&qword_1090A8);
  v2 = *v0;
  v3 = sub_C60F4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_9D5CC()
{
  v1 = v0;
  sub_3CB0(&qword_109180);
  v2 = *v0;
  v3 = sub_C60F4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_9D718()
{
  v1 = v0;
  v2 = _s4YearVMa(0);
  v24 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3CB0(&qword_109190);
  v5 = *v0;
  v6 = sub_C60F4();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(*(v5 + 48) + 8 * v20);
        v22 = *(v24 + 72) * v20;
        sub_9A3FC(*(v5 + 56) + v22, v4, _s4YearVMa);
        *(*(v7 + 48) + 8 * v20) = v21;
        result = sub_A65E4(v4, *(v7 + 56) + v22, _s4YearVMa);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
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

void *sub_9D94C()
{
  v1 = v0;
  v2 = _s5MonthVMa(0);
  v24 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3CB0(&qword_109188);
  v5 = *v0;
  v6 = sub_C60F4();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(*(v5 + 48) + 8 * v20);
        v22 = *(v24 + 72) * v20;
        sub_9A3FC(*(v5 + 56) + v22, v4, _s5MonthVMa);
        *(*(v7 + 48) + 8 * v20) = v21;
        result = sub_A65E4(v4, *(v7 + 56) + v22, _s5MonthVMa);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
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

void *sub_9DB80()
{
  v1 = v0;
  sub_3CB0(&qword_1090F8);
  v2 = *v0;
  v3 = sub_C60F4();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v20 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 16 * v17) = v20;
        sub_A5B84(v18);
        v19 = v20;
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
        goto LABEL_19;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

Swift::Int sub_9DD04(void **a1, void (*a2)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a3)(void, Swift::Int, uint64_t, uint64_t))
{
  v6 = *(sub_C3CB4() - 8);
  v7 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_3C8EC(v7);
  }

  v8 = v7[2];
  v10[0] = v7 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v10[1] = v8;
  result = sub_9DEBC(v10, &type metadata accessor for Date, a2, a3);
  *a1 = v7;
  return result;
}

Swift::Int sub_9DDD8(void **a1)
{
  v2 = *(type metadata accessor for InsightsDataManager.TopAssetCategory(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_3C93C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_9DEBC(v6, type metadata accessor for InsightsDataManager.TopAssetCategory, sub_9FBCC, sub_9E554);
  *a1 = v3;
  return result;
}

Swift::Int sub_9DEBC(uint64_t a1, void (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a4)(void, Swift::Int, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  result = sub_C6204(v8);
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = _swiftEmptyArrayStorage;
      }

      else
      {
        a2(0);
        v12 = sub_C56B4();
        *(v12 + 2) = v11;
      }

      v13 = *((a2)(0) - 8);
      v14[0] = v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v14[1] = v11;
      a3(v14, v15, a1, v10);
      v12[2] = 0.0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return a4(0, v8, 1, a1);
  }

  return result;
}

uint64_t sub_9E00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_C3CB4();
  v9 = __chkstk_darwin(v8);
  v40 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v44 = &v30 - v12;
  result = __chkstk_darwin(v11);
  v43 = &v30 - v15;
  v32 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v41 = *(v14 + 16);
    v42 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v19 = v16 + v17 * (a3 - 1);
    v37 = -v17;
    v38 = (v14 + 32);
    v20 = a1 - a3;
    v39 = v16;
    v31 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v35 = v19;
    v36 = a3;
    v33 = v21;
    v34 = v20;
    while (1)
    {
      v22 = v43;
      v23 = v41;
      v41(v43, v21, v8);
      v24 = v44;
      v23(v44, v19, v8);
      v25 = sub_C3C14();
      v26 = *v18;
      (*v18)(v24, v8);
      result = v26(v22, v8);
      if ((v25 & 1) == 0)
      {
LABEL_4:
        a3 = v36 + 1;
        v19 = v35 + v31;
        v20 = v34 - 1;
        v21 = v33 + v31;
        if (v36 + 1 == v32)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v39)
      {
        break;
      }

      v27 = *v38;
      v28 = v40;
      (*v38)(v40, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v27)(v19, v28, v8);
      v19 += v37;
      v21 += v37;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_9E290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_C3CB4();
  v9 = __chkstk_darwin(v8);
  v41 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v45 = &v31 - v12;
  result = __chkstk_darwin(v11);
  v44 = &v31 - v15;
  v33 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v42 = *(v14 + 16);
    v43 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v39 = (v14 + 32);
    v40 = v16;
    v19 = v16 + v17 * (a3 - 1);
    v38 = -v17;
    v20 = a1 - a3;
    v32 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v36 = v19;
    v37 = a3;
    v34 = v21;
    v35 = v20;
    v22 = v19;
    while (1)
    {
      v23 = v44;
      v24 = v42;
      v42(v44, v21, v8);
      v25 = v45;
      v24(v45, v22, v8);
      sub_9A060(&qword_108F40, &type metadata accessor for Date);
      v26 = sub_C5334();
      v27 = *v18;
      (*v18)(v25, v8);
      result = v27(v23, v8);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v19 = v36 + v32;
        v20 = v35 - 1;
        v21 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v28 = *v39;
      v29 = v41;
      (*v39)(v41, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v28)(v22, v29, v8);
      v22 += v38;
      v21 += v38;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_9E554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for InsightsDataManager.TopAssetCategory(0);
  v9 = __chkstk_darwin(v8);
  v39 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v30 - v12;
  result = __chkstk_darwin(v11);
  v17 = &v30 - v16;
  v32 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v37 = -v19;
    v38 = v18;
    v21 = a1 - a3;
    v31 = v19;
    v22 = v18 + v19 * a3;
LABEL_5:
    v35 = v20;
    v36 = a3;
    v33 = v22;
    v34 = v21;
    while (1)
    {
      sub_9A3FC(v22, v17, type metadata accessor for InsightsDataManager.TopAssetCategory);
      sub_9A3FC(v20, v13, type metadata accessor for InsightsDataManager.TopAssetCategory);
      v23 = *(v8 + 24);
      v24 = v8;
      v25 = *&v17[v23];
      v26 = *&v13[v23];
      sub_A19B0(v13, type metadata accessor for InsightsDataManager.TopAssetCategory);
      result = sub_A19B0(v17, type metadata accessor for InsightsDataManager.TopAssetCategory);
      v27 = v26 < v25;
      v8 = v24;
      if (!v27)
      {
LABEL_4:
        a3 = v36 + 1;
        v20 = v35 + v31;
        v21 = v34 - 1;
        v22 = v33 + v31;
        if (v36 + 1 == v32)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v38)
      {
        break;
      }

      v28 = v39;
      sub_A65E4(v22, v39, type metadata accessor for InsightsDataManager.TopAssetCategory);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_A65E4(v28, v20, type metadata accessor for InsightsDataManager.TopAssetCategory);
      v20 += v37;
      v22 += v37;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_9E7B8(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v121 = a1;
  v9 = sub_C3CB4();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v124 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v132 = &v117 - v14;
  v15 = __chkstk_darwin(v13);
  v138 = &v117 - v16;
  result = __chkstk_darwin(v15);
  v137 = &v117 - v18;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = _swiftEmptyArrayStorage;
LABEL_95:
    v5 = *v121;
    if (!*v121)
    {
      goto LABEL_136;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_130:
      result = sub_3C0E8(a4);
    }

    v112 = v6;
    v140 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      v113 = v10;
      v10 = a3;
      a3 = v113;
      while (*v10)
      {
        v114 = *(result + 16 * a4);
        v115 = result;
        v6 = *(result + 16 * (a4 - 1) + 40);
        sub_A052C(*v10 + a3[9] * v114, *v10 + a3[9] * *(result + 16 * (a4 - 1) + 32), *v10 + a3[9] * v6, v5);
        if (v112)
        {
        }

        if (v6 < v114)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v115 = sub_3C0E8(v115);
        }

        if (a4 - 2 >= *(v115 + 2))
        {
          goto LABEL_124;
        }

        v116 = &v115[2 * a4];
        *v116 = v114;
        *(v116 + 1) = v6;
        v140 = v115;
        sub_3C05C(a4 - 1);
        result = v140;
        a4 = *(v140 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_134;
    }
  }

  v20 = 0;
  v135 = (v10 + 1);
  v136 = v10 + 2;
  v134 = (v10 + 4);
  v21 = _swiftEmptyArrayStorage;
  v122 = a3;
  v120 = a4;
  v139 = v9;
  while (1)
  {
    v22 = v20;
    v125 = v21;
    if (v20 + 1 >= v19)
    {
      v33 = v20 + 1;
    }

    else
    {
      v130 = v19;
      v119 = v6;
      v127 = *a3;
      v23 = v127;
      v24 = v10[9];
      v5 = v127 + v24 * (v20 + 1);
      v25 = v10[2];
      v26 = v137;
      v25(v137, v5, v9);
      v27 = v23 + v24 * v22;
      v28 = v138;
      v129 = v25;
      v25(v138, v27, v9);
      LODWORD(v131) = sub_C3C14();
      v29 = v9;
      v30 = v10[1];
      v30(v28, v29);
      v128 = v30;
      result = (v30)(v26, v29);
      v118 = v22;
      v31 = v22 + 2;
      v133 = v24;
      v32 = v127 + v24 * (v22 + 2);
      while (1)
      {
        v33 = v130;
        if (v130 == v31)
        {
          break;
        }

        v34 = v10;
        v35 = v137;
        v36 = v139;
        v37 = v129;
        (v129)(v137, v32, v139);
        v38 = v138;
        v37(v138, v5, v36);
        v39 = sub_C3C14() & 1;
        v40 = v128;
        (v128)(v38, v36);
        v41 = v35;
        v10 = v34;
        result = v40(v41, v36);
        ++v31;
        v32 += v133;
        v5 += v133;
        if ((v131 & 1) != v39)
        {
          v33 = v31 - 1;
          break;
        }
      }

      a3 = v122;
      v21 = v125;
      v6 = v119;
      a4 = v120;
      v9 = v139;
      v22 = v118;
      if (v131)
      {
        if (v33 < v118)
        {
          goto LABEL_127;
        }

        if (v118 < v33)
        {
          v117 = v10;
          v42 = v133 * (v33 - 1);
          v43 = v33 * v133;
          v44 = v33;
          v45 = v118;
          v46 = v118 * v133;
          do
          {
            if (v45 != --v44)
            {
              v48 = *a3;
              if (!*a3)
              {
                goto LABEL_133;
              }

              v49 = v33;
              v5 = v48 + v46;
              v131 = *v134;
              (v131)(v124, v48 + v46, v139, v21);
              if (v46 < v42 || v5 >= v48 + v43)
              {
                v47 = v139;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v47 = v139;
                if (v46 != v42)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v131)(v48 + v42, v124, v47);
              a3 = v122;
              v21 = v125;
              v33 = v49;
            }

            ++v45;
            v42 -= v133;
            v43 -= v133;
            v46 += v133;
          }

          while (v45 < v44);
          v6 = v119;
          a4 = v120;
          v10 = v117;
          v9 = v139;
          v22 = v118;
        }
      }
    }

    v50 = a3[1];
    if (v33 < v50)
    {
      if (__OFSUB__(v33, v22))
      {
        goto LABEL_126;
      }

      if (v33 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_128;
        }

        if ((v22 + a4) >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = v22 + a4;
        }

        if (v51 < v22)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v33 != v51)
        {
          break;
        }
      }
    }

    v52 = v33;
    if (v33 < v22)
    {
      goto LABEL_125;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v21 = v125;
    }

    else
    {
      result = sub_3C22C(0, *(v125 + 2) + 1, 1, v125);
      v21 = result;
    }

    a4 = *(v21 + 2);
    v53 = *(v21 + 3);
    v5 = a4 + 1;
    if (a4 >= v53 >> 1)
    {
      result = sub_3C22C((v53 > 1), a4 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v5;
    v54 = &v21[2 * a4];
    *(v54 + 4) = v22;
    *(v54 + 5) = v52;
    v55 = *v121;
    if (!*v121)
    {
      goto LABEL_135;
    }

    v126 = v52;
    if (a4)
    {
      while (1)
      {
        v56 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v57 = *(v21 + 4);
          v58 = *(v21 + 5);
          v67 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          v60 = v67;
LABEL_52:
          if (v60)
          {
            goto LABEL_114;
          }

          v73 = &v21[2 * v5];
          v75 = *v73;
          v74 = *(v73 + 1);
          v76 = __OFSUB__(v74, v75);
          v77 = v74 - v75;
          v78 = v76;
          if (v76)
          {
            goto LABEL_117;
          }

          v79 = &v21[2 * v56 + 4];
          v81 = *v79;
          v80 = *(v79 + 1);
          v67 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v67)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v77, v82))
          {
            goto LABEL_121;
          }

          if (v77 + v82 >= v59)
          {
            if (v59 < v82)
            {
              v56 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v83 = &v21[2 * v5];
        v85 = *v83;
        v84 = *(v83 + 1);
        v67 = __OFSUB__(v84, v85);
        v77 = v84 - v85;
        v78 = v67;
LABEL_66:
        if (v78)
        {
          goto LABEL_116;
        }

        v86 = &v21[2 * v56];
        v88 = *(v86 + 4);
        v87 = *(v86 + 5);
        v67 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v67)
        {
          goto LABEL_119;
        }

        if (v89 < v77)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v56 - 1;
        if (v56 - 1 >= v5)
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

        v94 = v21;
        v95 = *&v21[2 * a4 + 4];
        v5 = *&v21[2 * v56 + 5];
        sub_A052C(*a3 + v10[9] * v95, *a3 + v10[9] * *&v21[2 * v56 + 4], *a3 + v10[9] * v5, v55);
        if (v6)
        {
        }

        if (v5 < v95)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = sub_3C0E8(v94);
        }

        if (a4 >= *(v94 + 2))
        {
          goto LABEL_111;
        }

        v96 = &v94[2 * a4];
        *(v96 + 4) = v95;
        *(v96 + 5) = v5;
        v140 = v94;
        result = sub_3C05C(v56);
        v21 = v140;
        v5 = *(v140 + 16);
        v9 = v139;
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v61 = &v21[2 * v5 + 4];
      v62 = *(v61 - 64);
      v63 = *(v61 - 56);
      v67 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      if (v67)
      {
        goto LABEL_112;
      }

      v66 = *(v61 - 48);
      v65 = *(v61 - 40);
      v67 = __OFSUB__(v65, v66);
      v59 = v65 - v66;
      v60 = v67;
      if (v67)
      {
        goto LABEL_113;
      }

      v68 = &v21[2 * v5];
      v70 = *v68;
      v69 = *(v68 + 1);
      v67 = __OFSUB__(v69, v70);
      v71 = v69 - v70;
      if (v67)
      {
        goto LABEL_115;
      }

      v67 = __OFADD__(v59, v71);
      v72 = v59 + v71;
      if (v67)
      {
        goto LABEL_118;
      }

      if (v72 >= v64)
      {
        v90 = &v21[2 * v56 + 4];
        v92 = *v90;
        v91 = *(v90 + 1);
        v67 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v67)
        {
          goto LABEL_122;
        }

        if (v59 < v93)
        {
          v56 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = a3[1];
    v20 = v126;
    a4 = v120;
    if (v126 >= v19)
    {
      goto LABEL_95;
    }
  }

  v119 = v6;
  v97 = *a3;
  v98 = v10[9];
  v117 = v10;
  v133 = v10[2];
  v99 = v97 + v98 * (v33 - 1);
  v100 = -v98;
  v118 = v22;
  v101 = (v22 - v33);
  v131 = v97;
  v123 = v98;
  v5 = v97 + v33 * v98;
  v126 = v51;
LABEL_85:
  v129 = v99;
  v130 = v33;
  v127 = v5;
  v128 = v101;
  v102 = v99;
  while (1)
  {
    v103 = v137;
    v104 = v133;
    (v133)(v137, v5, v9, v21);
    v105 = v138;
    v104(v138, v102, v139);
    v106 = sub_C3C14();
    a4 = v135;
    v107 = *v135;
    v108 = v105;
    v9 = v139;
    (*v135)(v108, v139);
    result = v107(v103, v9);
    if ((v106 & 1) == 0)
    {
LABEL_84:
      v33 = v130 + 1;
      v99 = &v129[v123];
      v101 = v128 - 1;
      v5 = v127 + v123;
      v52 = v126;
      if (v130 + 1 != v126)
      {
        goto LABEL_85;
      }

      v6 = v119;
      a3 = v122;
      v10 = v117;
      v22 = v118;
      if (v126 < v118)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (!v131)
    {
      break;
    }

    a4 = v134;
    v109 = *v134;
    v110 = v132;
    (*v134)(v132, v5, v9);
    swift_arrayInitWithTakeFrontToBack();
    v109(v102, v110, v9);
    v102 += v100;
    v5 += v100;
    if (__CFADD__(v101++, 1))
    {
      goto LABEL_84;
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

uint64_t sub_9F1A4(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v122 = a1;
  v8 = sub_C3CB4();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v127 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v134 = &v119 - v13;
  v14 = __chkstk_darwin(v12);
  v140 = &v119 - v15;
  result = __chkstk_darwin(v14);
  v139 = &v119 - v17;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = _swiftEmptyArrayStorage;
LABEL_94:
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_126:
      result = sub_3C0E8(v20);
      v20 = result;
    }

    v142 = v20;
    v115 = *(v20 + 2);
    if (v115 >= 2)
    {
      while (*a3)
      {
        v116 = v20[2 * v115];
        v117 = v20[2 * v115 + 3];
        sub_A0ABC(*a3 + v9[9] * *&v116, *a3 + v9[9] * *&v20[2 * v115 + 2], *a3 + v9[9] * *&v117, v21);
        if (v5)
        {
        }

        if (*&v117 < *&v116)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_3C0E8(v20);
        }

        if (v115 - 2 >= *(v20 + 2))
        {
          goto LABEL_120;
        }

        v118 = &v20[2 * v115];
        *v118 = v116;
        v118[1] = v117;
        v142 = v20;
        result = sub_3C05C(v115 - 1);
        v20 = v142;
        v115 = *(v142 + 2);
        if (v115 <= 1)
        {
        }
      }

      goto LABEL_130;
    }
  }

  v119 = a4;
  v19 = 0;
  v137 = (v9 + 1);
  v138 = v9 + 2;
  v136 = (v9 + 4);
  v20 = _swiftEmptyArrayStorage;
  v124 = v9;
  v141 = v8;
  v120 = a3;
  while (1)
  {
    v21 = v19;
    v125 = v20;
    if (v19 + 1 >= v18)
    {
      v34 = v19 + 1;
    }

    else
    {
      v132 = v18;
      v121 = v5;
      v22 = *a3;
      v23 = v9[9];
      v24 = v19;
      v123 = v19;
      v25 = &v22[v23 * (v19 + 1)];
      v26 = v8;
      v27 = v9[2];
      v28 = v139;
      v27(v139, v25, v26);
      v29 = &v22[v23 * v24];
      v30 = v140;
      v131 = v27;
      v27(v140, v29, v26);
      v130 = sub_9A060(&qword_108F40, &type metadata accessor for Date);
      LODWORD(v133) = sub_C5334();
      v31 = v9[1];
      v31(v30, v26);
      v129 = v31;
      result = (v31)(v28, v26);
      v32 = v123 + 2;
      v135 = v23;
      v33 = &v22[v23 * (v123 + 2)];
      while (1)
      {
        v34 = v132;
        if (v132 == v32)
        {
          break;
        }

        v35 = v139;
        v36 = v9;
        v37 = v141;
        v38 = v131;
        (v131)(v139, v33, v141);
        v39 = v140;
        v38(v140, v25, v37);
        v40 = sub_C5334() & 1;
        v41 = v129;
        (v129)(v39, v37);
        v42 = v37;
        v9 = v36;
        result = v41(v35, v42);
        ++v32;
        v33 += v135;
        v25 += v135;
        if ((v133 & 1) != v40)
        {
          v34 = v32 - 1;
          break;
        }
      }

      v5 = v121;
      v20 = v125;
      v8 = v141;
      a3 = v120;
      v21 = v123;
      if (v133)
      {
        if (v34 < v123)
        {
          goto LABEL_123;
        }

        if (v123 < v34)
        {
          v43 = v34;
          v44 = v135 * (v34 - 1);
          v45 = v34 * v135;
          v132 = v34;
          v46 = v123;
          v47 = v123 * v135;
          do
          {
            if (v46 != --v43)
            {
              v49 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v133 = *v136;
              v133(v127, &v49[v47], v141);
              if (v47 < v44 || &v49[v47] >= &v49[v45])
              {
                v48 = v141;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v48 = v141;
                if (v47 != v44)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v133)(&v49[v44], v127, v48);
              v9 = v124;
              v20 = v125;
            }

            ++v46;
            v44 -= v135;
            v45 -= v135;
            v47 += v135;
          }

          while (v46 < v43);
          v5 = v121;
          v8 = v141;
          v21 = v123;
          v34 = v132;
        }
      }
    }

    v50 = a3[1];
    if (v34 < v50)
    {
      if (__OFSUB__(v34, v21))
      {
        goto LABEL_122;
      }

      if (v34 - v21 < v119)
      {
        if (__OFADD__(v21, v119))
        {
          goto LABEL_124;
        }

        if (v21 + v119 >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = v21 + v119;
        }

        if (v51 < v21)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v34 != v51)
        {
          break;
        }
      }
    }

    v52 = v34;
    if (v34 < v21)
    {
      goto LABEL_121;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_3C22C(0, *(v20 + 2) + 1, 1, v20);
      v20 = result;
    }

    v54 = *(v20 + 2);
    v53 = *(v20 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      result = sub_3C22C((v53 > 1), v54 + 1, 1, v20);
      v20 = result;
    }

    *(v20 + 2) = v55;
    v56 = &v20[2 * v54];
    *(v56 + 4) = v21;
    *(v56 + 5) = v52;
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_131;
    }

    v128 = v52;
    if (v54)
    {
      while (1)
      {
        v57 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v58 = *(v20 + 4);
          v59 = *(v20 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_52:
          if (v61)
          {
            goto LABEL_110;
          }

          v74 = &v20[2 * v55];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_113;
          }

          v80 = &v20[2 * v57 + 4];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_117;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v55 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v84 = &v20[2 * v55];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_66:
        if (v79)
        {
          goto LABEL_112;
        }

        v87 = &v20[2 * v57];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_115;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_73:
        v95 = v57 - 1;
        if (v57 - 1 >= v55)
        {
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
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v96 = v20[2 * v95 + 4];
        v97 = v20[2 * v57 + 5];
        sub_A0ABC(*a3 + v9[9] * *&v96, *a3 + v9[9] * *&v20[2 * v57 + 4], *a3 + v9[9] * *&v97, v21);
        if (v5)
        {
        }

        if (*&v97 < *&v96)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_3C0E8(v20);
        }

        if (v95 >= *(v20 + 2))
        {
          goto LABEL_107;
        }

        v98 = &v20[2 * v95];
        v98[4] = v96;
        v98[5] = v97;
        v142 = v20;
        result = sub_3C05C(v57);
        v20 = v142;
        v55 = *(v142 + 2);
        v8 = v141;
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v20[2 * v55 + 4];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_108;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_109;
      }

      v69 = &v20[2 * v55];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_111;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_114;
      }

      if (v73 >= v65)
      {
        v91 = &v20[2 * v57 + 4];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_118;
        }

        if (v60 < v94)
        {
          v57 = v55 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = a3[1];
    v19 = v128;
    if (v128 >= v18)
    {
      goto LABEL_94;
    }
  }

  v121 = v5;
  v99 = *a3;
  v100 = v9[9];
  v135 = v9[2];
  v101 = v99 + v100 * (v34 - 1);
  v102 = -v100;
  v123 = v21;
  v103 = v21 - v34;
  v133 = v99;
  v126 = v100;
  v104 = v99 + v34 * v100;
  v128 = v51;
LABEL_85:
  v131 = v101;
  v132 = v34;
  v129 = v104;
  v130 = v103;
  v105 = v101;
  while (1)
  {
    v106 = v139;
    v107 = v135;
    (v135)(v139, v104, v8);
    v108 = v140;
    v107(v140, v105, v141);
    sub_9A060(&qword_108F40, &type metadata accessor for Date);
    v109 = sub_C5334();
    v110 = *v137;
    v111 = v108;
    v8 = v141;
    (*v137)(v111, v141);
    result = v110(v106, v8);
    if ((v109 & 1) == 0)
    {
LABEL_84:
      v34 = v132 + 1;
      v101 = &v131[v126];
      v103 = v130 - 1;
      v104 = &v129[v126];
      v52 = v128;
      if (v132 + 1 != v128)
      {
        goto LABEL_85;
      }

      v5 = v121;
      a3 = v120;
      v9 = v124;
      v20 = v125;
      v21 = v123;
      if (v128 < v123)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v133)
    {
      break;
    }

    v112 = *v136;
    v113 = v134;
    (*v136)(v134, v104, v8);
    swift_arrayInitWithTakeFrontToBack();
    v112(v105, v113, v8);
    v105 += v102;
    v104 += v102;
    if (__CFADD__(v103++, 1))
    {
      goto LABEL_84;
    }
  }

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
  return result;
}

uint64_t sub_9FBCC(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v112 = a1;
  v126 = type metadata accessor for InsightsDataManager.TopAssetCategory(0);
  v9 = *(v126 - 8);
  v10 = __chkstk_darwin(v126);
  v115 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v123 = &v107 - v13;
  v14 = __chkstk_darwin(v12);
  v125 = &v107 - v15;
  result = __chkstk_darwin(v14);
  v124 = &v107 - v17;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = _swiftEmptyArrayStorage;
LABEL_96:
    v5 = *v112;
    if (!*v112)
    {
      goto LABEL_136;
    }

    a4 = v20;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
LABEL_99:
      v127 = result;
      a4 = *(result + 16);
      if (a4 >= 2)
      {
        v103 = v9;
        while (*a3)
        {
          v104 = *(result + 16 * a4);
          v105 = result;
          v9 = *(result + 16 * (a4 - 1) + 40);
          sub_A10B0(*a3 + *(v103 + 72) * v104, *a3 + *(v103 + 72) * *(result + 16 * (a4 - 1) + 32), *a3 + *(v103 + 72) * v9, v5);
          if (v6)
          {
          }

          if (v9 < v104)
          {
            goto LABEL_123;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v105 = sub_3C0E8(v105);
          }

          if (a4 - 2 >= *(v105 + 2))
          {
            goto LABEL_124;
          }

          v106 = &v105[2 * a4];
          *v106 = v104;
          *(v106 + 1) = v9;
          v127 = v105;
          sub_3C05C(a4 - 1);
          result = v127;
          a4 = *(v127 + 16);
          if (a4 <= 1)
          {
          }
        }

        goto LABEL_134;
      }
    }

LABEL_130:
    result = sub_3C0E8(a4);
    goto LABEL_99;
  }

  v19 = 0;
  v20 = _swiftEmptyArrayStorage;
  v111 = a4;
  v113 = a3;
  v108 = v9;
  while (1)
  {
    v21 = v19;
    v22 = v19 + 1;
    v116 = v20;
    if (v22 >= v18)
    {
      v18 = v22;
    }

    else
    {
      v109 = v6;
      v23 = *a3;
      v24 = *(v9 + 72);
      v5 = *a3 + v24 * v22;
      v25 = v124;
      sub_9A3FC(v5, v124, type metadata accessor for InsightsDataManager.TopAssetCategory);
      v26 = v125;
      sub_9A3FC(v23 + v24 * v21, v125, type metadata accessor for InsightsDataManager.TopAssetCategory);
      v27 = *(v126 + 24);
      v28 = *(v25 + v27);
      v119 = *(v26 + v27);
      v120 = v28;
      sub_A19B0(v26, type metadata accessor for InsightsDataManager.TopAssetCategory);
      result = sub_A19B0(v25, type metadata accessor for InsightsDataManager.TopAssetCategory);
      v110 = v21;
      v29 = v21 + 2;
      v121 = v24;
      v30 = v23 + v24 * v29;
      while (v18 != v29)
      {
        LODWORD(v122) = v119 < v120;
        v31 = v124;
        sub_9A3FC(v30, v124, type metadata accessor for InsightsDataManager.TopAssetCategory);
        v32 = v125;
        sub_9A3FC(v5, v125, type metadata accessor for InsightsDataManager.TopAssetCategory);
        v33 = *(v126 + 24);
        v34 = *(v31 + v33);
        v35 = *(v32 + v33);
        sub_A19B0(v32, type metadata accessor for InsightsDataManager.TopAssetCategory);
        result = sub_A19B0(v31, type metadata accessor for InsightsDataManager.TopAssetCategory);
        ++v29;
        v30 += v121;
        v5 += v121;
        if (((v122 ^ (v35 >= v34)) & 1) == 0)
        {
          v18 = v29 - 1;
          break;
        }
      }

      a3 = v113;
      v9 = v108;
      v6 = v109;
      v21 = v110;
      a4 = v111;
      if (v119 < v120)
      {
        if (v18 < v110)
        {
          goto LABEL_127;
        }

        if (v110 < v18)
        {
          v36 = v121 * (v18 - 1);
          v37 = v18 * v121;
          v120 = v18;
          v38 = v18;
          v39 = v110;
          v40 = v110 * v121;
          do
          {
            if (v39 != --v38)
            {
              v41 = *v113;
              if (!*v113)
              {
                goto LABEL_133;
              }

              v5 = v41 + v40;
              sub_A65E4(v41 + v40, v115, type metadata accessor for InsightsDataManager.TopAssetCategory);
              if (v40 < v36 || v5 >= v41 + v37)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v40 != v36)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_A65E4(v115, v41 + v36, type metadata accessor for InsightsDataManager.TopAssetCategory);
            }

            ++v39;
            v36 -= v121;
            v37 -= v121;
            v40 += v121;
          }

          while (v39 < v38);
          a3 = v113;
          v9 = v108;
          v21 = v110;
          a4 = v111;
          v18 = v120;
        }
      }
    }

    v42 = a3[1];
    if (v18 >= v42)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v18, v21))
    {
      goto LABEL_126;
    }

    if (v18 - v21 >= a4)
    {
LABEL_32:
      v44 = v18;
      if (v18 < v21)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (__OFADD__(v21, a4))
    {
      goto LABEL_128;
    }

    if ((v21 + a4) >= v42)
    {
      v43 = a3[1];
    }

    else
    {
      v43 = v21 + a4;
    }

    if (v43 < v21)
    {
LABEL_129:
      __break(1u);
      goto LABEL_130;
    }

    if (v18 == v43)
    {
      goto LABEL_32;
    }

    v89 = *a3;
    v90 = *(v9 + 72);
    v91 = *a3 + v90 * (v18 - 1);
    v92 = v21;
    v93 = -v90;
    v109 = v6;
    v110 = v92;
    v94 = v92 - v18;
    v122 = v89;
    v114 = v90;
    v5 = v89 + v18 * v90;
    v95 = v126;
    v117 = v43;
LABEL_86:
    v119 = v94;
    v120 = v18;
    v118 = v5;
    v121 = v91;
    v96 = v91;
LABEL_87:
    a4 = v124;
    sub_9A3FC(v5, v124, type metadata accessor for InsightsDataManager.TopAssetCategory);
    v97 = v125;
    sub_9A3FC(v96, v125, type metadata accessor for InsightsDataManager.TopAssetCategory);
    v98 = *(v95 + 24);
    v99 = *(a4 + v98);
    v100 = *(v97 + v98);
    sub_A19B0(v97, type metadata accessor for InsightsDataManager.TopAssetCategory);
    result = sub_A19B0(a4, type metadata accessor for InsightsDataManager.TopAssetCategory);
    if (v100 < v99)
    {
      break;
    }

    v95 = v126;
LABEL_85:
    v18 = v120 + 1;
    v91 = v121 + v114;
    v94 = v119 - 1;
    v5 = v118 + v114;
    v44 = v117;
    if (v120 + 1 != v117)
    {
      goto LABEL_86;
    }

    v9 = v108;
    v6 = v109;
    a3 = v113;
    v21 = v110;
    if (v117 < v110)
    {
      goto LABEL_125;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v20 = v116;
    }

    else
    {
      result = sub_3C22C(0, *(v116 + 2) + 1, 1, v116);
      v20 = result;
    }

    a4 = *(v20 + 2);
    v45 = *(v20 + 3);
    v5 = a4 + 1;
    if (a4 >= v45 >> 1)
    {
      result = sub_3C22C((v45 > 1), a4 + 1, 1, v20);
      v20 = result;
    }

    *(v20 + 2) = v5;
    v46 = &v20[2 * a4];
    *(v46 + 4) = v21;
    *(v46 + 5) = v44;
    v47 = *v112;
    if (!*v112)
    {
      goto LABEL_135;
    }

    v117 = v44;
    if (a4)
    {
      while (2)
      {
        v48 = v5 - 1;
        if (v5 >= 4)
        {
          v53 = &v20[2 * v5 + 4];
          v54 = *(v53 - 64);
          v55 = *(v53 - 56);
          v59 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          if (v59)
          {
            goto LABEL_112;
          }

          v58 = *(v53 - 48);
          v57 = *(v53 - 40);
          v59 = __OFSUB__(v57, v58);
          v51 = v57 - v58;
          v52 = v59;
          if (v59)
          {
            goto LABEL_113;
          }

          v60 = &v20[2 * v5];
          v62 = *v60;
          v61 = *(v60 + 1);
          v59 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v59)
          {
            goto LABEL_115;
          }

          v59 = __OFADD__(v51, v63);
          v64 = v51 + v63;
          if (v59)
          {
            goto LABEL_118;
          }

          if (v64 >= v56)
          {
            v82 = &v20[2 * v48 + 4];
            v84 = *v82;
            v83 = *(v82 + 1);
            v59 = __OFSUB__(v83, v84);
            v85 = v83 - v84;
            if (v59)
            {
              goto LABEL_122;
            }

            if (v51 < v85)
            {
              v48 = v5 - 2;
            }
          }

          else
          {
LABEL_52:
            if (v52)
            {
              goto LABEL_114;
            }

            v65 = &v20[2 * v5];
            v67 = *v65;
            v66 = *(v65 + 1);
            v68 = __OFSUB__(v66, v67);
            v69 = v66 - v67;
            v70 = v68;
            if (v68)
            {
              goto LABEL_117;
            }

            v71 = &v20[2 * v48 + 4];
            v73 = *v71;
            v72 = *(v71 + 1);
            v59 = __OFSUB__(v72, v73);
            v74 = v72 - v73;
            if (v59)
            {
              goto LABEL_120;
            }

            if (__OFADD__(v69, v74))
            {
              goto LABEL_121;
            }

            if (v69 + v74 < v51)
            {
              goto LABEL_66;
            }

            if (v51 < v74)
            {
              v48 = v5 - 2;
            }
          }
        }

        else
        {
          if (v5 == 3)
          {
            v49 = *(v20 + 4);
            v50 = *(v20 + 5);
            v59 = __OFSUB__(v50, v49);
            v51 = v50 - v49;
            v52 = v59;
            goto LABEL_52;
          }

          v75 = &v20[2 * v5];
          v77 = *v75;
          v76 = *(v75 + 1);
          v59 = __OFSUB__(v76, v77);
          v69 = v76 - v77;
          v70 = v59;
LABEL_66:
          if (v70)
          {
            goto LABEL_116;
          }

          v78 = &v20[2 * v48];
          v80 = *(v78 + 4);
          v79 = *(v78 + 5);
          v59 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v59)
          {
            goto LABEL_119;
          }

          if (v81 < v69)
          {
            break;
          }
        }

        a4 = v48 - 1;
        if (v48 - 1 >= v5)
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

        v86 = v20;
        v87 = *&v20[2 * a4 + 4];
        v5 = *&v20[2 * v48 + 5];
        sub_A10B0(*a3 + *(v9 + 72) * v87, *a3 + *(v9 + 72) * *&v20[2 * v48 + 4], *a3 + *(v9 + 72) * v5, v47);
        if (v6)
        {
        }

        if (v5 < v87)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v86 = sub_3C0E8(v86);
        }

        if (a4 >= *(v86 + 2))
        {
          goto LABEL_111;
        }

        v88 = &v86[2 * a4];
        *(v88 + 4) = v87;
        *(v88 + 5) = v5;
        v127 = v86;
        result = sub_3C05C(v48);
        v20 = v127;
        v5 = *(v127 + 16);
        if (v5 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v18 = a3[1];
    v19 = v117;
    a4 = v111;
    if (v117 >= v18)
    {
      goto LABEL_96;
    }
  }

  if (v122)
  {
    v101 = v123;
    sub_A65E4(v5, v123, type metadata accessor for InsightsDataManager.TopAssetCategory);
    v95 = v126;
    swift_arrayInitWithTakeFrontToBack();
    sub_A65E4(v101, v96, type metadata accessor for InsightsDataManager.TopAssetCategory);
    v96 += v93;
    v5 += v93;
    if (__CFADD__(v94++, 1))
    {
      goto LABEL_85;
    }

    goto LABEL_87;
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

uint64_t sub_A052C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v57 = sub_C3CB4();
  v8 = *(v57 - 8);
  v9 = __chkstk_darwin(v57);
  v55 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v54 = &v45 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v56 = a3;
  v16 = (a2 - a1) / v14;
  v60 = a1;
  v59 = a4;
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

    v29 = a4 + v18;
    if (v18 < 1)
    {
      v33 = a4 + v18;
    }

    else
    {
      v30 = -v14;
      v49 = (v8 + 8);
      v50 = (v8 + 16);
      v31 = a4 + v18;
      v32 = v56;
      v33 = v29;
      v47 = a1;
      v48 = a4;
      v51 = -v14;
      do
      {
        v45 = v33;
        v34 = a2;
        v35 = a2 + v30;
        v52 = v34;
        v53 = v35;
        while (1)
        {
          if (v34 <= a1)
          {
            v60 = v34;
            v58 = v45;
            goto LABEL_59;
          }

          v37 = v32;
          v46 = v33;
          v56 = v32 + v30;
          v38 = v31 + v30;
          v39 = *v50;
          v40 = v54;
          v41 = v57;
          v42 = v31;
          (*v50)(v54, v38, v57);
          v43 = v55;
          (v39)(v55, v35, v41);
          LOBYTE(v39) = sub_C3C14();
          v44 = *v49;
          (*v49)(v43, v41);
          v44(v40, v41);
          if (v39)
          {
            break;
          }

          v33 = v38;
          v32 = v56;
          if (v37 < v42 || v56 >= v42)
          {
            swift_arrayInitWithTakeFrontToBack();
            v35 = v53;
            a1 = v47;
          }

          else
          {
            v35 = v53;
            a1 = v47;
            if (v37 != v42)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v31 = v38;
          v36 = v38 > v48;
          v30 = v51;
          v34 = v52;
          if (!v36)
          {
            a2 = v52;
            goto LABEL_58;
          }
        }

        v45 = v42;
        v32 = v56;
        if (v37 < v52 || v56 >= v52)
        {
          a2 = v53;
          swift_arrayInitWithTakeFrontToBack();
          v33 = v46;
          a1 = v47;
          v30 = v51;
        }

        else
        {
          a2 = v53;
          v33 = v46;
          a1 = v47;
          v30 = v51;
          if (v37 != v52)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v31 = v45;
      }

      while (v45 > v48);
    }

LABEL_58:
    v60 = a2;
    v58 = v33;
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

    v53 = a4 + v17;
    v58 = a4 + v17;
    if (v17 >= 1 && a2 < v56)
    {
      v51 = *(v8 + 16);
      v52 = v8 + 16;
      v49 = v14;
      v50 = (v8 + 8);
      do
      {
        v20 = v54;
        v21 = v57;
        v22 = v51;
        (v51)(v54, a2, v57);
        v23 = a2;
        v24 = v55;
        v22(v55, a4, v21);
        v25 = sub_C3C14();
        v26 = *v50;
        (*v50)(v24, v21);
        v26(v20, v21);
        if (v25)
        {
          v27 = v49;
          a2 = v49 + v23;
          if (a1 < v23 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v23)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          v27 = v49;
          v28 = v49 + a4;
          if (a1 < a4 || a1 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v23;
          }

          else
          {
            a2 = v23;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v59 = v28;
          a4 += v27;
        }

        a1 += v27;
        v60 = a1;
      }

      while (a4 < v53 && a2 < v56);
    }
  }

LABEL_59:
  sub_3C114(&v60, &v59, &v58);
  return 1;
}

uint64_t sub_A0ABC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v52 = sub_C3CB4();
  v8 = *(v52 - 8);
  v9 = __chkstk_darwin(v52);
  v50 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v49 = &v40 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_63;
  }

  v51 = a3;
  v16 = (a2 - a1) / v14;
  v55 = a1;
  v54 = a4;
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

    v27 = a4 + v18;
    if (v18 >= 1)
    {
      v28 = -v14;
      v43 = a4;
      v44 = (v8 + 16);
      v41 = (v8 + 8);
      v42 = a1;
      v29 = a4 + v18;
      v30 = v51;
      v45 = v28;
      do
      {
        v40 = v27;
        v31 = a2 + v28;
        v47 = a2 + v28;
        v48 = v27;
        v46 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v55 = a2;
            v27 = v40;
            goto LABEL_59;
          }

          v33 = v30;
          v51 = v30 + v28;
          v34 = v29 + v28;
          v35 = *v44;
          v36 = v49;
          v37 = v52;
          (*v44)(v49, v29 + v28, v52);
          v38 = v50;
          v35(v50, v31, v37);
          sub_9A060(&qword_108F40, &type metadata accessor for Date);
          LOBYTE(v35) = sub_C5334();
          v39 = *v41;
          (*v41)(v38, v37);
          v39(v36, v37);
          if (v35)
          {
            break;
          }

          v30 = v51;
          if (v33 < v29 || v51 >= v29)
          {
            swift_arrayInitWithTakeFrontToBack();
            v31 = v47;
            a1 = v42;
          }

          else
          {
            v31 = v47;
            a1 = v42;
            if (v33 != v29)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v48 = v34;
          v29 = v34;
          v32 = v34 > v43;
          v28 = v45;
          a2 = v46;
          if (!v32)
          {
            v27 = v48;
            goto LABEL_58;
          }
        }

        v30 = v51;
        if (v33 < v46 || v51 >= v46)
        {
          a2 = v47;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v42;
        }

        else
        {
          a2 = v47;
          a1 = v42;
          if (v33 != v46)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v27 = v48;
        v28 = v45;
      }

      while (v29 > v43);
    }

LABEL_58:
    v55 = a2;
LABEL_59:
    v53 = v27;
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

    v48 = a4 + v17;
    v53 = a4 + v17;
    if (v17 >= 1 && a2 < v51)
    {
      v46 = *(v8 + 16);
      v47 = v8 + 16;
      v44 = v14;
      v45 = (v8 + 8);
      do
      {
        v20 = v49;
        v21 = v52;
        v22 = v46;
        v46(v49, a2, v52);
        v23 = v50;
        v22(v50, a4, v21);
        sub_9A060(&qword_108F40, &type metadata accessor for Date);
        LOBYTE(v22) = sub_C5334();
        v24 = *v45;
        (*v45)(v23, v21);
        v24(v20, v21);
        if (v22)
        {
          v25 = v44;
          if (a1 < a2 || a1 >= v44 + a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v25;
        }

        else
        {
          v25 = v44;
          v26 = v44 + a4;
          if (a1 < a4 || a1 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v54 = v26;
          a4 += v25;
        }

        a1 += v25;
        v55 = a1;
      }

      while (a4 < v48 && a2 < v51);
    }
  }

  sub_3C114(&v55, &v54, &v53);
  return 1;
}

uint64_t sub_A10B0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for InsightsDataManager.TopAssetCategory(0);
  v9 = __chkstk_darwin(v8);
  v51 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v50 = &v41 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_63;
  }

  v16 = (a2 - a1) / v14;
  v54 = a1;
  v53 = a4;
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

    v26 = a4 + v18;
    if (v18 >= 1)
    {
      v27 = -v14;
      v28 = v26;
      v45 = a4;
      v46 = a1;
      v49 = v8;
      v44 = -v14;
      do
      {
        v42 = v26;
        v29 = a2;
        v30 = a2 + v27;
        v47 = a2;
        v48 = a2 + v27;
        while (1)
        {
          if (v29 <= a1)
          {
            v54 = v29;
            v52 = v42;
            goto LABEL_60;
          }

          v32 = a3;
          v43 = v26;
          a3 += v27;
          v33 = v28 + v27;
          v34 = v50;
          sub_9A3FC(v28 + v27, v50, type metadata accessor for InsightsDataManager.TopAssetCategory);
          v35 = v51;
          sub_9A3FC(v30, v51, type metadata accessor for InsightsDataManager.TopAssetCategory);
          v36 = *(v8 + 24);
          v37 = *(v34 + v36);
          v38 = *(v35 + v36);
          sub_A19B0(v35, type metadata accessor for InsightsDataManager.TopAssetCategory);
          sub_A19B0(v34, type metadata accessor for InsightsDataManager.TopAssetCategory);
          if (v38 < v37)
          {
            break;
          }

          v26 = v33;
          if (v32 < v28 || a3 >= v28)
          {
            v31 = v49;
            swift_arrayInitWithTakeFrontToBack();
            v30 = v48;
            v8 = v31;
            v27 = v44;
          }

          else
          {
            v30 = v48;
            v8 = v49;
            v27 = v44;
            if (v32 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v28 = v33;
          a1 = v46;
          v29 = v47;
          if (v33 <= v45)
          {
            a2 = v47;
            goto LABEL_59;
          }
        }

        v39 = v45;
        if (v32 < v47 || a3 >= v47)
        {
          a2 = v48;
          v8 = v49;
          swift_arrayInitWithTakeFrontToBack();
          v26 = v43;
          v27 = v44;
        }

        else
        {
          v40 = v32 == v47;
          a2 = v48;
          v8 = v49;
          v26 = v43;
          v27 = v44;
          if (!v40)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v46;
      }

      while (v28 > v39);
    }

LABEL_59:
    v54 = a2;
    v52 = v26;
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

    v48 = a4 + v17;
    v52 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      v47 = a3;
      v49 = v8;
      do
      {
        v20 = v50;
        sub_9A3FC(a2, v50, type metadata accessor for InsightsDataManager.TopAssetCategory);
        v21 = v51;
        sub_9A3FC(a4, v51, type metadata accessor for InsightsDataManager.TopAssetCategory);
        v22 = *(v8 + 24);
        v23 = *(v20 + v22);
        v24 = *(v21 + v22);
        sub_A19B0(v21, type metadata accessor for InsightsDataManager.TopAssetCategory);
        sub_A19B0(v20, type metadata accessor for InsightsDataManager.TopAssetCategory);
        if (v24 >= v23)
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            v8 = v49;
            swift_arrayInitWithTakeFrontToBack();
            v25 = v47;
          }

          else
          {
            v25 = v47;
            v8 = v49;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v53 = a4 + v14;
          a4 += v14;
        }

        else if (a1 < a2 || a1 >= a2 + v14)
        {
          v8 = v49;
          swift_arrayInitWithTakeFrontToBack();
          a2 += v14;
          v25 = v47;
        }

        else
        {
          v25 = v47;
          v8 = v49;
          if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v14;
        }

        a1 += v14;
        v54 = a1;
      }

      while (a4 < v48 && a2 < v25);
    }
  }

LABEL_60:
  sub_3C12C(&v54, &v53, &v52);
  return 1;
}

char *sub_A15DC(uint64_t a1, void *a2)
{
  v2 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v37[0] = a1;
  v35 = *(a1 + 16);
  if (v35)
  {
    v4 = 0;
    v5 = a2 + 7;
    v6 = a1 + 32;
    do
    {
      v7 = *(v4 + v6);
      v4 = (v4 + 1);
      sub_C62F4();
      sub_C6304(v7);
      v8 = sub_C6344();
      v9 = -1 << v2[32];
      v10 = v8 & ~v9;
      v11 = v10 >> 6;
      v12 = 1 << v10;
      if (((1 << v10) & v5[v10 >> 6]) != 0)
      {
        v13 = *(v2 + 6);
        if (*(v13 + v10) == v7)
        {
LABEL_9:
          v37[1] = v4;
          v14 = (63 - v9) >> 6;
          v15 = 8 * v14;
          v34 = v14;
          if (v14 > 0x80)
          {
            goto LABEL_30;
          }

          {
            v35 = &v33;
            __chkstk_darwin(i);
            v18 = (&v33 - v17);
            memcpy(&v33 - v17, v2 + 56, v15);
            v19 = *(v2 + 2);
            v18[v11] &= ~v12;
            v12 = v19 - 1;
            v20 = *(a1 + 16);
            if (v4 == v20)
            {
              break;
            }

            v15 = 1;
            while (v4 < v20)
            {
              v11 = *(v4 + v6);
              sub_C62F4();
              v10 = &v36;
              sub_C6304(v11);
              v22 = sub_C6344();
              v23 = -1 << v2[32];
              v24 = v22 & ~v23;
              v25 = v24 >> 6;
              v26 = 1 << v24;
              if (((1 << v24) & v5[v24 >> 6]) != 0)
              {
                v27 = *(v2 + 6);
                if (*(v27 + v24) == v11)
                {
LABEL_24:
                  v29 = v18[v25];
                  v18[v25] = v29 & ~v26;
                  if ((v29 & v26) != 0)
                  {
                    if (__OFSUB__(v12--, 1))
                    {
                      goto LABEL_29;
                    }

                    if (!v12)
                    {

                      v2 = &_swiftEmptySetSingleton;
                      goto LABEL_13;
                    }
                  }
                }

                else
                {
                  v28 = ~v23;
                  while (1)
                  {
                    v24 = (v24 + 1) & v28;
                    v25 = v24 >> 6;
                    v26 = 1 << v24;
                    if (((1 << v24) & v5[v24 >> 6]) == 0)
                    {
                      break;
                    }

                    if (*(v27 + v24) == v11)
                    {
                      goto LABEL_24;
                    }
                  }
                }
              }

              v4 = (v4 + 1);
              v20 = *(a1 + 16);
              if (v4 == v20)
              {
                goto LABEL_12;
              }
            }

            __break(1u);
LABEL_29:
            __break(1u);
LABEL_30:

            if (!swift_stdlib_isStackAllocationSafe())
            {
              v31 = swift_slowAlloc();
              memcpy(v31, v2 + 56, v15);
              v32 = sub_A1A10(v31, v34, v2, v10, v37);

              return v32;
            }
          }

LABEL_12:
          v2 = sub_A1BAC(v18, v34, v12, v2);
LABEL_13:

          return v2;
        }

        while (1)
        {
          v10 = (v10 + 1) & ~v9;
          v11 = v10 >> 6;
          v12 = 1 << v10;
          if (((1 << v10) & v5[v10 >> 6]) == 0)
          {
            break;
          }

          if (*(v13 + v10) == v7)
          {
            goto LABEL_9;
          }
        }
      }
    }

    while (v4 != v35);
  }

  return v2;
}

uint64_t sub_A19B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

Swift::Int sub_A1A10(Swift::Int result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v6 = result;
  v7 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = *a5;
  v10 = a5[1];
  v11 = *(*a5 + 16);
  if (v10 == v11)
  {
LABEL_2:

    return sub_A1BAC(v6, a2, v8, a3);
  }

  else
  {
    v13 = a3 + 56;
    while ((v10 & 0x8000000000000000) == 0)
    {
      if (v10 >= v11)
      {
        goto LABEL_18;
      }

      v14 = *(v9 + v10 + 32);
      a5[1] = v10 + 1;
      sub_C62F4();
      sub_C6304(v14);
      result = sub_C6344();
      v15 = -1 << *(a3 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      v18 = 1 << v16;
      if (((1 << v16) & *(v13 + 8 * (v16 >> 6))) != 0)
      {
        v19 = *(a3 + 48);
        if (*(v19 + v16) == v14)
        {
LABEL_13:
          v21 = v6[v17];
          v6[v17] = v21 & ~v18;
          if ((v21 & v18) != 0)
          {
            if (__OFSUB__(v8--, 1))
            {
              goto LABEL_19;
            }

            if (!v8)
            {
              return &_swiftEmptySetSingleton;
            }
          }
        }

        else
        {
          v20 = ~v15;
          while (1)
          {
            v16 = (v16 + 1) & v20;
            v17 = v16 >> 6;
            v18 = 1 << v16;
            if (((1 << v16) & *(v13 + 8 * (v16 >> 6))) == 0)
            {
              break;
            }

            if (*(v19 + v16) == v14)
            {
              goto LABEL_13;
            }
          }
        }
      }

      v9 = *a5;
      v10 = a5[1];
      v11 = *(*a5 + 16);
      if (v10 == v11)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_A1BAC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_3CB0(&qword_107730);
  result = sub_C5FA4();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    sub_C62F4();
    sub_C6304(v16);
    result = sub_C6344();
    v17 = -1 << v9[32];
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 6) + v20) = v16;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_A1DE8(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a1 + 32;
  v6 = a2 + 56;
  while (1)
  {
    if (*(a2 + 16))
    {
      v7 = *(v5 + v4);
      sub_C62F4();
      sub_C6304(v7);
      v8 = sub_C6344();
      v9 = -1 << *(a2 + 32);
      v10 = v8 & ~v9;
      if ((*(v6 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
      {
        break;
      }
    }

LABEL_4:
    if (++v4 == v2)
    {
      return 1;
    }
  }

  v11 = ~v9;
  while (*(*(a2 + 48) + v10) != v7)
  {
    v10 = (v10 + 1) & v11;
    if (((*(v6 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  return 0;
}

uint64_t sub_A1EF0(uint64_t a1, void (*a2)(void *__return_ptr, char *), uint64_t a3, char a4, void *a5)
{
  v38 = a5;
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  while (v9)
  {
LABEL_11:
    v16 = __clz(__rbit64(v9)) | (v11 << 6);
    v17 = *(*(a1 + 48) + v16);
    v18 = *(*(a1 + 56) + 8 * v16);
    v36[0] = v17;
    v37 = v18;
    a2(v35, v36);
    v19 = v35[0];
    v20 = v35[1];
    v21 = *v38;
    v22 = sub_24268(v35[0]);
    v24 = v21[2];
    v25 = (v23 & 1) == 0;
    v26 = __OFADD__(v24, v25);
    v27 = v24 + v25;
    if (v26)
    {
      goto LABEL_23;
    }

    v28 = v23;
    if (v21[3] >= v27)
    {
      if ((a4 & 1) == 0)
      {
        v31 = v22;
        sub_9D480();
        v22 = v31;
      }
    }

    else
    {
      sub_9BAF0(v27, a4 & 1);
      v22 = sub_24268(v19);
      if ((v28 & 1) != (v29 & 1))
      {
        goto LABEL_26;
      }
    }

    v30 = *v38;
    if (v28)
    {
      v12 = (v30[7] + 8 * v22);
      v14 = *v12 + v20;
      if (__OFADD__(*v12, v20))
      {
        goto LABEL_24;
      }
    }

    else
    {
      v30[(v22 >> 6) + 8] |= 1 << v22;
      *(v30[6] + v22) = v19;
      *(v30[7] + 8 * v22) = v20;
      v13 = v30[2];
      v12 = v30 + 2;
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_25;
      }
    }

    v9 &= v9 - 1;
    *v12 = v14;
    a4 = 1;
  }

  while (1)
  {
    v15 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v15 >= v10)
    {
    }

    v9 = *(v6 + 8 * v15);
    ++v11;
    if (v9)
    {
      v11 = v15;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_C6294();
  __break(1u);
  return result;
}