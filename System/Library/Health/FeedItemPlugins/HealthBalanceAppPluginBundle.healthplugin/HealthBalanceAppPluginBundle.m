id _SleepingSampleChangesAlertTileViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_4834();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id _SleepingSampleChangesAlertTileViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  if (a2)
  {
    v7 = sub_4834();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, "initWithNibName:bundle:", v7, a3);

  return v8;
}

id sub_16EC(void *a1, uint64_t a2, NSString a3, void *a4)
{
  ObjectType = swift_getObjectType();
  sub_48E4();
  sub_48D4();
  sub_48C4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a3)
  {
    sub_4864();
    v8 = a4;
    a3 = sub_4834();
  }

  else
  {
    v9 = a4;
  }

  v12.receiver = a1;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, "initWithNibName:bundle:", a3, a4);

  return v10;
}

id _SleepingSampleChangesAlertTileViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id _SleepingSampleChangesAlertTileViewController.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_18AC(void *a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  sub_48E4();
  sub_48D4();
  sub_48C4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9.receiver = a1;
  v9.super_class = ObjectType;
  v6 = a3;
  v7 = objc_msgSendSuper2(&v9, "initWithCoder:", v6);

  if (v7)
  {
  }

  return v7;
}

id _SleepingSampleChangesAlertTileViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for _SleepingSampleHelpTileViewController()
{
  result = qword_C4C0;
  if (!qword_C4C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A60(uint64_t a1, id *a2)
{
  result = sub_4844();
  *a2 = 0;
  return result;
}

uint64_t sub_1AD8(uint64_t a1, id *a2)
{
  v3 = sub_4854();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1B58@<X0>(void *a1@<X8>)
{
  sub_4864();
  v2 = sub_4834();

  *a1 = v2;
  return result;
}

uint64_t sub_1B9C()
{
  v1 = *v0;
  sub_4864();
  v2 = sub_48B4();

  return v2;
}

uint64_t sub_1BD8()
{
  v1 = *v0;
  sub_4864();
  sub_4894();
}

Swift::Int sub_1C2C()
{
  v1 = *v0;
  sub_4864();
  sub_49B4();
  sub_4894();
  v2 = sub_49C4();

  return v2;
}

uint64_t sub_1CA0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_4864();
  v6 = v5;
  if (v4 == sub_4864() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_49A4();
  }

  return v9 & 1;
}

uint64_t sub_1D28@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_4834();

  *a2 = v5;
  return result;
}

uint64_t sub_1D70@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_4864();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1D9C(uint64_t a1)
{
  v2 = sub_1F20(&qword_C530);
  v3 = sub_1F20(&qword_C538);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

void type metadata accessor for OpenURLOptionsKey()
{
  if (!qword_C510)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_C510);
    }
  }
}

uint64_t sub_1F20(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for OpenURLOptionsKey();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1F64(void *a1, uint64_t a2, NSString a3, void *a4)
{
  ObjectType = swift_getObjectType();
  sub_48E4();
  sub_48D4();
  sub_48C4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a3)
  {
    sub_4864();
    v8 = a4;
    a3 = sub_4834();
  }

  else
  {
    v9 = a4;
  }

  v12.receiver = a1;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, "initWithNibName:bundle:", a3, a4);

  return v10;
}

id sub_2078(void *a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  sub_48E4();
  sub_48D4();
  sub_48C4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9.receiver = a1;
  v9.super_class = ObjectType;
  v6 = a3;
  v7 = objc_msgSendSuper2(&v9, "initWithCoder:", v6);

  if (v7)
  {
  }

  return v7;
}

uint64_t type metadata accessor for _SleepingSampleChangesAlertTileViewController()
{
  result = qword_C540;
  if (!qword_C540)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _HealthBalancePluginDelegate.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return _s28HealthBalanceAppPluginBundle01_abD8DelegateCACycfc_0();
}

uint64_t _HealthBalancePluginDelegate.__deallocating_deinit()
{
  v0 = _s28HealthBalanceAppPluginBundle01_abD8DelegateCfd_0();

  return _swift_deallocClassInstance(v0, 16, 7);
}

uint64_t type metadata accessor for _HealthBalancePluginDelegate()
{
  result = qword_C590;
  if (!qword_C590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for _SleepingSampleAnalysisHealthChecklistActionHandler()
{
  result = qword_C5E0;
  if (!qword_C5E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2378(uint64_t a1)
{
  v3 = sub_47A4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(v1);
  (*(v4 + 16))(v7, a1, v3);
  v9 = sub_47B4();
  (*(v4 + 8))(a1, v3);
  return v9;
}

id sub_2478()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _SleepingSampleAnalysisHealthChecklistActionHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t _HealthBalanceAppDelegate.open(_:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_4794();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C4();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin();
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_4904();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v4 + 16))(v6, a1, v3);
  sub_48E4();
  v12 = sub_48D4();
  v13 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v14 = (v5 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  *(v15 + 24) = &protocol witness table for MainActor;
  (*(v4 + 32))(v15 + v13, v6, v3);
  *(v15 + v14) = ObjectType;
  sub_2D6C(0, 0, v10, &unk_4F98, v15);
}

void sub_26C4()
{
  if (!qword_C630)
  {
    sub_4904();
    v0 = sub_4924();
    if (!v1)
    {
      atomic_store(v0, &qword_C630);
    }
  }
}

uint64_t sub_271C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = sub_4794();
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();
  v9 = sub_4814();
  v5[8] = v9;
  v10 = *(v9 - 8);
  v5[9] = v10;
  v11 = *(v10 + 64) + 15;
  v5[10] = swift_task_alloc();
  sub_48E4();
  v5[11] = sub_48D4();
  v13 = sub_48C4();

  return _swift_task_switch(sub_286C, v13, v12);
}

uint64_t sub_286C()
{
  v46 = v0;
  v1 = v0;
  v3 = v0[10];
  v2 = v0[11];
  v6 = v0 + 6;
  v5 = v0[6];
  v4 = v6[1];
  v7 = v1[5];
  v8 = v1[3];

  sub_47F4();
  (*(v5 + 16))(v4, v8, v7);
  v9 = sub_4804();
  v10 = sub_4914();
  if (os_log_type_enabled(v9, v10))
  {
    v42 = v1[9];
    v11 = v1[7];
    v43 = v1[8];
    v44 = v1[10];
    v12 = v1[5];
    v13 = v1[6];
    v14 = v1[4];
    v15 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v15 = 136446466;
    v1[2] = v14;
    swift_getMetatypeMetadata();
    v16 = sub_4874();
    v18 = sub_3A9C(v16, v17, &v45);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2082;
    sub_42D4(&qword_C688, &type metadata accessor for URL);
    v19 = sub_4984();
    v21 = v20;
    (*(v13 + 8))(v11, v12);
    v22 = sub_3A9C(v19, v21, &v45);

    *(v15 + 14) = v22;
    _os_log_impl(&dword_0, v9, v10, "[%{public}s]: opening url %{public}s", v15, 0x16u);
    swift_arrayDestroy();

    (*(v42 + 8))(v44, v43);
  }

  else
  {
    v24 = v1[9];
    v23 = v1[10];
    v25 = v1[7];
    v26 = v1[8];
    v27 = v1[5];
    v28 = v1[6];

    (*(v28 + 8))(v25, v27);
    (*(v24 + 8))(v23, v26);
  }

  v29 = objc_opt_self();
  v30 = [v29 sharedApplication];
  v31 = [v30 delegate];

  if (v31)
  {
    if ([v31 respondsToSelector:"application:openURL:options:"])
    {
      v32 = v1[3];
      v33 = [v29 sharedApplication];
      sub_41C4(&_swiftEmptyArrayStorage);
      sub_4774(v34);
      v36 = v35;
      type metadata accessor for OpenURLOptionsKey();
      sub_42D4(&qword_C530, type metadata accessor for OpenURLOptionsKey);
      isa = sub_4824().super.isa;
      [v31 application:v33 openURL:v36 options:isa];
    }

    swift_unknownObjectRelease();
  }

  v38 = v1[10];
  v39 = v1[7];

  v40 = v1[1];

  return v40();
}

uint64_t sub_2C4C(uint64_t a1)
{
  v4 = *(sub_4794() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_45A4;

  return sub_271C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_2D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_26C4();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin();
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_44B8(a3, v12, sub_26C4);
  v13 = sub_4904();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_36A8(v12);
  }

  else
  {
    sub_48F4();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_48C4();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_4884() + 32;
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

      sub_36A8(a3);

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

  sub_36A8(a3);
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

uint64_t sub_3038()
{
  ObjectType = swift_getObjectType();
  sub_26C4();
  v2 = *(*(v1 - 8) + 64);
  (__chkstk_darwin)();
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_4794();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = (__chkstk_darwin)();
  v9 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v18 - v10;
  sub_4784();
  v12 = sub_4904();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  (*(v6 + 16))(v9, v11, v5);
  sub_48E4();
  v13 = sub_48D4();
  v14 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v15 = (v7 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  *(v16 + 24) = &protocol witness table for MainActor;
  (*(v6 + 32))(v16 + v14, v9, v5);
  *(v16 + v15) = ObjectType;
  sub_2D6C(0, 0, v4, &unk_4FC0, v16);

  return (*(v6 + 8))(v11, v5);
}

id _HealthBalanceAppDelegate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id _HealthBalanceAppDelegate.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_32F0(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

uint64_t type metadata accessor for _HealthBalanceAppDelegate()
{
  result = qword_C638;
  if (!qword_C638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_33C4()
{
  v1 = sub_4794();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_3494(uint64_t a1)
{
  v4 = *(sub_4794() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_35B4;

  return sub_271C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_35B4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_36A8(uint64_t a1)
{
  sub_26C4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_3704(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_37FC;

  return v7(a1);
}

uint64_t sub_37FC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_38F4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_45A4;

  return sub_3704(a1, v5);
}

uint64_t sub_39AC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_39E4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_35B4;

  return sub_3704(a1, v5);
}

uint64_t sub_3A9C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_3B68(v11, 0, 0, 1, a1, a2);
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
    sub_4368(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_431C(v11);
  return v7;
}

unint64_t sub_3B68(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_3C74(a5, a6);
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
    result = sub_4944();
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

char *sub_3C74(uint64_t a1, unint64_t a2)
{
  v4 = sub_3CC0(a1, a2);
  sub_3DF0(&off_84E0);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_3CC0(uint64_t a1, unint64_t a2)
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

  v6 = sub_3EDC(v5, 0);
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

  result = sub_4944();
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
        v10 = sub_48A4();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_3EDC(v10, 0);
        result = sub_4934();
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

uint64_t sub_3DF0(uint64_t result)
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

  result = sub_3F44(result, v12, 1, v3);
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

void *sub_3EDC(uint64_t a1, uint64_t a2)
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

  sub_43C4();
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_3F44(char *result, int64_t a2, char a3, char *a4)
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
    sub_43C4();
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

unint64_t sub_402C(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_4864();
  sub_49B4();
  sub_4894();
  v4 = sub_49C4();

  return sub_40C0(a1, v4);
}

unint64_t sub_40C0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_4864();
      v9 = v8;
      if (v7 == sub_4864() && v9 == v10)
      {
        break;
      }

      v12 = sub_49A4();

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

unint64_t sub_41C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_4418();
    v3 = sub_4954();
    v4 = a1 + 32;

    while (1)
    {
      sub_44B8(v4, &v11, sub_4520);
      v5 = v11;
      result = sub_402C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_458C(&v12, (v3[7] + 32 * result));
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

uint64_t sub_42D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_431C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_4368(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_43C4()
{
  if (!qword_C690)
  {
    v0 = sub_4994();
    if (!v1)
    {
      atomic_store(v0, &qword_C690);
    }
  }
}

void sub_4418()
{
  if (!qword_C698)
  {
    type metadata accessor for OpenURLOptionsKey();
    sub_42D4(&qword_C530, type metadata accessor for OpenURLOptionsKey);
    v0 = sub_4964();
    if (!v1)
    {
      atomic_store(v0, &qword_C698);
    }
  }
}

uint64_t sub_44B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_4520()
{
  if (!qword_C6A0)
  {
    type metadata accessor for OpenURLOptionsKey();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_C6A0);
    }
  }
}

_OWORD *sub_458C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t type metadata accessor for _BalancePromotionFeedItemViewActionHandler()
{
  result = qword_C6A8;
  if (!qword_C6A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_4634(uint64_t a1)
{
  v3 = sub_47A4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(v1);
  (*(v4 + 16))(v7, a1, v3);
  v9 = sub_47C4();
  (*(v4 + 8))(a1, v3);
  return v9;
}

id sub_4734()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _BalancePromotionFeedItemViewActionHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}