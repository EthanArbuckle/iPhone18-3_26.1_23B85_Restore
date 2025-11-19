void sub_1270()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(*(sub_2EB8() - 8) + 64);
  __chkstk_darwin();
  v4 = *(*(sub_3018() - 8) + 64);
  __chkstk_darwin();
  v24.receiver = v1;
  v24.super_class = ObjectType;
  objc_msgSendSuper2(&v24, "viewDidLoad");
  sub_3008();
  sub_2EA8();
  sub_3048();
  v5 = sub_3028();

  [v1 setTitle:v5];

  v6 = objc_allocWithZone(NSUserDefaults);
  v7 = sub_3028();
  [v6 initWithSuiteName:v7];

  v23 = sub_2ED8();
  v8 = objc_allocWithZone(sub_18C0(&qword_8188, &unk_3560));
  v9 = sub_2F18();
  v10 = [v9 view];
  if (!v10)
  {
    __break(1u);
    goto LABEL_8;
  }

  v11 = v10;
  v12 = [v1 view];
  if (!v12)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v13 = v12;
  [v12 bounds];
  v15 = v14;
  v17 = v16;

  [v11 setFrame:{0.0, 0.0, v15, v17}];
  v18 = [v9 view];
  if (!v18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v19 = v18;
  [v18 setAutoresizingMask:18];

  v20 = [v1 view];
  if (!v20)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v21 = v20;
  v22 = [v9 view];

  if (v22)
  {
    [v21 addSubview:v22];

    [v1 addChildViewController:v9];
    [v9 didMoveToParentViewController:v1];

    return;
  }

LABEL_11:
  __break(1u);
}

id sub_1864()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_18C0(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1934()
{
  sub_3088();
  sub_3078();
  sub_3068();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_3078();
  sub_3068();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2F08();
  sub_2F58();

  sub_3078();
  sub_3068();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2F08();
  sub_2F58();

  sub_18C0(&qword_81D8, &qword_3630);
  sub_2A6C(&qword_81A8, &qword_3610);
  sub_2A6C(&qword_81B0, &qword_3618);
  sub_2A6C(&qword_81B8, &qword_3620);
  sub_2A6C(&qword_81C0, &qword_3628);
  sub_2AB4(&qword_81C8, &qword_81C0, &qword_3628);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_2FE8();
}

uint64_t sub_1CC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a1;
  v80 = a2;
  v81 = sub_2EF8();
  v79 = *(v81 - 8);
  v2 = *(v79 + 64);
  (__chkstk_darwin)();
  v78 = v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = (*(*(sub_18C0(&qword_81E0, &qword_3638) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v77 = v53 - v5;
  v6 = *(*(sub_2E28() - 8) + 64);
  (__chkstk_darwin)();
  v76 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2E88();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  (__chkstk_darwin)();
  v12 = v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*(sub_2E68() - 8) + 64);
  v14 = (__chkstk_darwin)();
  v68 = v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v66 = v53 - v17;
  v18 = __chkstk_darwin(v16);
  v62 = v53 - v19;
  v20 = __chkstk_darwin(v18);
  v21 = __chkstk_darwin(v20);
  v22 = __chkstk_darwin(v21);
  __chkstk_darwin(v22);
  v64 = sub_2E98();
  v23 = *(*(v64 - 8) + 64);
  __chkstk_darwin(v64);
  v65 = v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_18C0(&qword_81E8, &qword_3640);
  v26 = (*(*(v25 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v25 - 8);
  v61 = sub_18C0(&qword_81C0, &qword_3628);
  v63 = *(v61 - 8);
  v27 = (*(v63 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v61);
  v57 = v53 - v28;
  v67 = sub_18C0(&qword_81B8, &qword_3620);
  v70 = *(v67 - 8);
  v29 = (*(v70 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v67);
  v58 = v53 - v30;
  v73 = sub_18C0(&qword_81B0, &qword_3618);
  v71 = *(v73 - 8);
  v31 = (*(v71 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v73);
  v59 = v53 - v32;
  v74 = sub_18C0(&qword_81A8, &qword_3610);
  v72 = *(v74 - 8);
  v33 = (*(v72 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v74);
  v60 = v53 - v34;
  sub_3088();
  v69 = sub_3078();
  sub_3068();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v56 = sub_2F08();
  v55 = v35;
  v53[3] = v36;
  v54 = v37;
  sub_18C0(&qword_81F0, &qword_3648);
  sub_2EC8();
  (*(v9 + 104))(v12, enum case for URL.FormatStyle.Component.port(_:), v8);
  sub_2B04(&off_4410);
  sub_2C6C(&unk_4430);
  sub_2E58();

  (*(v9 + 8))(v12, v8);
  sub_2E38();
  sub_2E48();
  sub_2E38();
  sub_2E38();
  sub_2E18();
  sub_2E38();
  sub_2E38();
  sub_2E78();
  sub_2F08();
  sub_2F58();
  sub_2CC0();
  v38 = v57;
  sub_2FF8();
  v39 = sub_2AB4(&qword_81C8, &qword_81C0, &qword_3628);
  v40 = v58;
  v41 = v61;
  sub_2FC8();
  (*(v63 + 8))(v38, v41);
  v42 = v77;
  sub_2F28();
  v43 = sub_2F38();
  (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
  v82 = v41;
  v83 = v39;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v45 = v59;
  v46 = v67;
  sub_2FD8();
  sub_2D18(v42);
  (*(v70 + 8))(v40, v46);
  v82 = v46;
  v83 = OpaqueTypeConformance2;
  v47 = swift_getOpaqueTypeConformance2();
  v48 = v60;
  v49 = v73;
  sub_2FA8();
  (*(v71 + 8))(v45, v49);
  v50 = v78;
  sub_2EE8();
  v82 = v49;
  v83 = v47;
  swift_getOpaqueTypeConformance2();
  v51 = v74;
  sub_2F98();
  (*(v79 + 8))(v50, v81);
  (*(v72 + 8))(v48, v51);
}

uint64_t sub_2740()
{
  v1 = sub_18C0(&qword_8190, &qword_3600);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v8 - v4;
  v6 = *v0;
  sub_18C0(&qword_8198, &qword_3608);
  sub_28A8();
  sub_2F48();
  sub_2AB4(&qword_81D0, &qword_8190, &qword_3600);
  sub_2F68();
  return (*(v2 + 8))(v5, v1);
}

unint64_t sub_28A8()
{
  result = qword_81A0;
  if (!qword_81A0)
  {
    sub_2A6C(&qword_8198, &qword_3608);
    sub_2A6C(&qword_81A8, &qword_3610);
    sub_2A6C(&qword_81B0, &qword_3618);
    sub_2A6C(&qword_81B8, &qword_3620);
    sub_2A6C(&qword_81C0, &qword_3628);
    sub_2AB4(&qword_81C8, &qword_81C0, &qword_3628);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_81A0);
  }

  return result;
}

uint64_t sub_2A6C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_2AB4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2A6C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

Swift::Int sub_2B04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_18C0(&unk_8200, &qword_3650);
    v3 = sub_3098();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_30B8();

      sub_3058();
      result = sub_30C8();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_30A8();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
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

unint64_t sub_2CC0()
{
  result = qword_81F8;
  if (!qword_81F8)
  {
    sub_2E98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_81F8);
  }

  return result;
}

uint64_t sub_2D18(uint64_t a1)
{
  v2 = sub_18C0(&qword_81E0, &qword_3638);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2D80()
{
  sub_2A6C(&qword_8190, &qword_3600);
  sub_2AB4(&qword_81D0, &qword_8190, &qword_3600);
  return swift_getOpaqueTypeConformance2();
}