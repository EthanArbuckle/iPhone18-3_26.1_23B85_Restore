id sub_100001520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = objc_allocWithZone(_UIContentUnavailableView);
  result = sub_100002458();
  if (result)
  {
    *&v3[OBJC_IVAR____TtC26AMSEngagementViewExtension19ErrorViewController_contentUnavailableView] = result;
    *&v3[OBJC_IVAR____TtC26AMSEngagementViewExtension19ErrorViewController_error] = a1;
    v10 = &v3[OBJC_IVAR____TtC26AMSEngagementViewExtension19ErrorViewController_retryAction];
    *v10 = a2;
    v10[1] = a3;
    swift_errorRetain();
    sub_1000022AC(a2);
    v11 = type metadata accessor for ErrorViewController();
    v25.receiver = v4;
    v25.super_class = v11;
    v12 = objc_msgSendSuper2(&v25, "initWithNibName:bundle:", 0, 0);
    v13 = qword_1000109B0;
    v14 = v12;
    if (v13 != -1)
    {
      swift_once();
    }

    v15 = sub_100005EBC();
    sub_1000022BC(v15, qword_100010E20);
    sub_1000022F4(&qword_100010C90, &unk_100006A70);
    v16 = *(sub_100005E7C() - 8);
    v17 = *(v16 + 72);
    v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    *(swift_allocObject() + 16) = xmmword_100006820;
    v24 = v11;
    v23[0] = v14;
    v19 = AMSLogKey();
    if (v19)
    {
      v20 = v19;
      sub_100005FDC();
    }

    sub_100005E6C();

    sub_10000233C(v23);
    sub_100005E4C();
    swift_getErrorValue();
    v21 = sub_10000602C();
    v24 = &type metadata for String;
    v23[0] = v21;
    v23[1] = v22;
    sub_100005E5C();
    sub_100002388(v23);
    sub_100005E8C();

    sub_1000023F0(a2);

    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000017C4()
{
  v1 = objc_allocWithZone(_UIContentUnavailableView);
  v2 = sub_100002458();
  if (!v2)
  {
    __break(1u);
  }

  *(v0 + OBJC_IVAR____TtC26AMSEngagementViewExtension19ErrorViewController_contentUnavailableView) = v2;
  sub_10000600C();
  __break(1u);
}

id sub_1000018AC()
{
  v1 = [v0 parentViewController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 navigationItem];

    return v3;
  }

  else
  {
    v6.receiver = v0;
    v6.super_class = type metadata accessor for ErrorViewController();
    v5 = objc_msgSendSuper2(&v6, "navigationItem");

    return v5;
  }
}

void sub_10000194C()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for ErrorViewController();
  objc_msgSendSuper2(&v3, "loadView");
  v1 = [v0 view];
  v2 = [objc_opt_self() ams_defaultPlatformBackgroundColor];
  sub_100002488(v2, "setBackgroundColor:");
}

void sub_100001A24()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for ErrorViewController();
  objc_msgSendSuper2(&v1, "viewDidLoad");
  sub_100001BA0();
}

id sub_100001AA4()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for ErrorViewController();
  objc_msgSendSuper2(&v12, "viewWillLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC26AMSEngagementViewExtension19ErrorViewController_contentUnavailableView];
  v2 = [v0 view];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  return [v1 setFrame:{v4, v6, v8, v10}];
}

void sub_100001BA0()
{
  v1 = [v0 navigationItem];
  [v1 ams_configureWithTransparentBackground];

  sub_100001BF8();
}

void sub_100001BF8()
{
  type metadata accessor for Localizations();
  v1 = sub_1000024A0(0xD000000000000015, 0x8000000100006E10);
  v3 = v2;
  v4 = sub_1000024A0(0xD000000000000014, 0x8000000100006E30);
  sub_100001CFC(v1, v3, 0, 0, v4, v5);

  v6 = [v0 view];
  [v6 addSubview:*&v0[OBJC_IVAR____TtC26AMSEngagementViewExtension19ErrorViewController_contentUnavailableView]];
}

void sub_100001CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(v6 + OBJC_IVAR____TtC26AMSEngagementViewExtension19ErrorViewController_contentUnavailableView);
  v13 = [v12 buttonTitle];
  if (v13)
  {
    v14 = v13;
    v15 = sub_100005FDC();
    v17 = v16;

    if (!a6)
    {
LABEL_31:

      goto LABEL_32;
    }

    if (v15 == a5 && v17 == a6)
    {
    }

    else
    {
      v19 = sub_10000601C();

      if ((v19 & 1) == 0)
      {
        goto LABEL_32;
      }
    }
  }

  else if (a6)
  {
    goto LABEL_32;
  }

  v20 = [v12 message];
  if (!v20)
  {
    if (!a4)
    {
      goto LABEL_23;
    }

LABEL_32:
    v34 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_100002438;
    aBlock[5] = v34;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100005DB8;
    aBlock[3] = &unk_10000C588;
    v35 = _Block_copy(aBlock);

    sub_100002488(v36, "setButtonAction:");
    _Block_release(v35);
    if (a6)
    {
      v37 = sub_100005FCC();
      v38 = v37;
    }

    else
    {
      v38 = 0;
    }

    sub_100002488(v37, "setButtonTitle:");

    if (a4)
    {
      v39 = sub_100005FCC();
      v40 = v39;
    }

    else
    {
      v40 = 0;
    }

    sub_100002488(v39, "setMessage:");

    if (a2)
    {
      v41 = sub_100005FCC();
      v42 = v41;
    }

    else
    {
      v42 = 0;
    }

    sub_100002488(v41, "setTitle:");

    return;
  }

  v21 = v20;
  v22 = sub_100005FDC();
  v24 = v23;

  if (!a4)
  {
    goto LABEL_31;
  }

  if (v22 == a3 && v24 == a4)
  {
  }

  else
  {
    v26 = sub_10000601C();

    if ((v26 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

LABEL_23:
  v27 = [v12 title];
  if (!v27)
  {
    if (!a2)
    {
      return;
    }

    goto LABEL_32;
  }

  v28 = v27;
  v29 = sub_100005FDC();
  v31 = v30;

  if (!a2)
  {
    goto LABEL_31;
  }

  if (v29 != a1 || v31 != a2)
  {
    v33 = sub_10000601C();

    if (v33)
    {
      return;
    }

    goto LABEL_32;
  }
}

void sub_100002034()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC26AMSEngagementViewExtension19ErrorViewController_retryAction);
    sub_1000022AC(v2);

    if (v2)
    {
      v2();
      sub_1000023F0(v2);
    }
  }
}

id sub_100002158()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ErrorViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100002210(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a6)
  {
    v13 = sub_100005FCC();
  }

  else
  {
    v13 = 0;
  }

  v14 = [v7 initWithFrame:v13 title:a7 style:{a1, a2, a3, a4}];

  return v14;
}

uint64_t sub_1000022AC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000022BC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1000022F4(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_10000233C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100002388(uint64_t a1)
{
  v2 = sub_1000022F4(&unk_100010A00, &qword_100006880);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000023F0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100002400()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100002440(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_100002458()
{

  return sub_100002210(0.0, 0.0, 0.0, 0.0, 0, 0xE000000000000000, 0);
}

id sub_100002488(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_1000024A0(uint64_t a1, void *a2)
{
  v4 = [objc_opt_self() mainBundle];
  v8._countAndFlagsBits = 0xE000000000000000;
  v9._countAndFlagsBits = a1;
  v9._object = a2;
  v10.value._countAndFlagsBits = 0;
  v10.value._object = 0;
  v5.super.isa = v4;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v6 = sub_100005E0C(v9, v10, v5, v11, v8);

  return v6;
}

uint64_t sub_10000256C()
{
  v0 = sub_100005EBC();
  sub_1000025E4(v0, qword_100010E20);
  sub_1000022BC(v0, qword_100010E20);
  return sub_100005EAC();
}

uint64_t *sub_1000025E4(uint64_t a1, uint64_t *a2)
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

Swift::Int sub_100002678()
{
  sub_10000607C();
  sub_10000608C(0);
  return sub_10000609C();
}

Swift::Int sub_1000026DC()
{
  sub_10000607C();
  sub_10000608C(0);
  return sub_10000609C();
}

uint64_t sub_10000272C(void *a1, uint64_t a2, unint64_t a3, void *a4)
{
  v5 = v4;
  v10 = sub_100005EBC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 >> 60 == 15 || (sub_100003660(0, &qword_100010CC0, AMSSnapshotBag_ptr), sub_1000036A0(a2, a3), (v15 = sub_100002B6C(a2, a3)) == 0))
  {
    v15 = [objc_opt_self() createBagForSubProfile];
  }

  if (qword_1000109B0 != -1)
  {
    sub_100003970();
  }

  v38 = a4;
  v16 = sub_1000022BC(v10, qword_100010E20);
  v36 = v11;
  v37 = v10;
  (*(v11 + 16))(v14, v16, v10);
  sub_1000022F4(&qword_100010C90, &unk_100006A70);
  v17 = *(sub_100005E7C() - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  *(swift_allocObject() + 16) = xmmword_1000068A0;
  v42 = type metadata accessor for RemoteEngagementPresenter();
  v39 = v5;

  v20 = AMSLogKey();
  if (v20)
  {
    v21 = v20;
    sub_100005FDC();
  }

  sub_100005E6C();

  sub_10000233C(&v39);
  sub_100005E4C();
  v42 = sub_100003660(0, &qword_100010CB0, AMSEngagementRequest_ptr);
  v39 = a1;
  v22 = a1;
  sub_100005E5C();
  sub_100002388(&v39);
  sub_100005E4C();
  if (v15)
  {
    ObjectType = swift_getObjectType();
    v24 = v15;
  }

  else
  {
    v24 = 0;
    ObjectType = 0;
    v40 = 0;
    v41 = 0;
  }

  v25 = v38;
  v39 = v24;
  v42 = ObjectType;
  swift_unknownObjectRetain();
  sub_100005E5C();
  sub_100002388(&v39);
  sub_100005E4C();
  if (v25)
  {
    v26 = sub_100003660(0, &qword_100010CB8, AMSProcessInfo_ptr);
    v27 = v25;
  }

  else
  {
    v27 = 0;
    v26 = 0;
    v40 = 0;
    v41 = 0;
  }

  v39 = v27;
  v42 = v26;
  v28 = v25;
  sub_100005E5C();
  sub_100002388(&v39);
  sub_100005E9C();

  (*(v36 + 8))(v14, v37);
  v29 = v5[3];
  v5[3] = v15;
  swift_unknownObjectRelease();
  v30 = v5[4];
  v5[4] = v25;
  v31 = v28;

  v32 = v5[5];
  v5[5] = v22;
  v33 = v22;

  return 0;
}

id sub_100002B6C(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = sub_100005E2C().super.isa;
  v6 = [v4 initWithData:isa];

  sub_1000036F8(a1, a2);
  return v6;
}

void sub_100002BE4()
{
  v1 = v0;
  v2 = v0[3];
  if (v2 && (v3 = v0[5]) != 0)
  {
    v4 = v0[2];
    v5 = v1[4];
    v6 = swift_allocObject();
    swift_weakInit();
    v18 = v3;
    v19 = v2;
    v20 = v5;
    v21 = sub_1000035F8;
    v22 = v6;
    v23 = 1;
    v7 = v5;

    swift_unknownObjectRetain();
    v8 = v3;
    sub_100005FAC();

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1000109B0 != -1)
    {
      sub_100003970();
    }

    v9 = sub_100005EBC();
    sub_1000022BC(v9, qword_100010E20);
    sub_1000022F4(&qword_100010C90, &unk_100006A70);
    v10 = *(sub_100005E7C() - 8);
    v11 = *(v10 + 72);
    v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    *(swift_allocObject() + 16) = xmmword_1000068B0;
    v21 = type metadata accessor for RemoteEngagementPresenter();
    v18 = v0;

    v13 = AMSLogKey();
    if (v13)
    {
      v14 = v13;
      sub_100005FDC();
    }

    sub_100005E6C();

    sub_10000233C(&v18);
    sub_100005E4C();
    sub_100005E8C();

    v15 = v0[2];
    sub_100003564();
    v16 = swift_allocError();
    v17 = swift_allocObject();
    swift_weakInit();
    v18 = v16;
    v19 = sub_1000035F0;
    v20 = v17;
    v21 = 0;
    v22 = 0;
    v23 = 2;

    sub_100005FAC();
  }
}

uint64_t sub_100002EBC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 16);
    sub_100003564();
    swift_allocError();
    sub_100005FAC();
  }

  return result;
}

uint64_t sub_100002F5C(void *a1, uint64_t a2)
{
  v4 = sub_100005EBC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v30 = a1;
    if (qword_1000109B0 != -1)
    {
      swift_once();
    }

    v31 = a2;
    v11 = sub_1000022BC(v4, qword_100010E20);
    (*(v5 + 16))(v8, v11, v4);
    sub_1000022F4(&qword_100010C90, &unk_100006A70);
    v12 = *(sub_100005E7C() - 8);
    v13 = *(v12 + 72);
    v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    *(swift_allocObject() + 16) = xmmword_1000068C0;
    *(&v35 + 1) = type metadata accessor for RemoteEngagementPresenter();
    *&v34 = v10;

    v15 = AMSLogKey();
    if (v15)
    {
      v16 = v15;
      sub_100005FDC();
    }

    sub_100005E6C();

    sub_10000233C(&v34);
    sub_100005E4C();
    v17 = v30;
    if (v30)
    {
      v18 = sub_100003660(0, &qword_100010CA8, AMSEngagementResult_ptr);
      v19 = v17;
    }

    else
    {
      v19 = 0;
      v18 = 0;
      *(&v34 + 1) = 0;
      *&v35 = 0;
    }

    *&v34 = v19;
    *(&v35 + 1) = v18;
    v20 = v17;
    sub_100005E5C();
    sub_100002388(&v34);
    sub_100005E4C();
    v21 = v31;
    if (v31)
    {
      swift_getErrorValue();
      v22 = v32;
      v23 = v33;
      *(&v35 + 1) = v33;
      v24 = sub_100003600(&v34);
      v25 = *(*(v23 - 8) + 16);
      v26 = v22;
      v27 = v23;
      v17 = v30;
      v21 = v31;
      v25(v24, v26, v27);
    }

    else
    {
      v34 = 0u;
      v35 = 0u;
    }

    sub_100005E5C();
    sub_100002388(&v34);
    sub_100005E9C();

    (*(v5 + 8))(v8, v4);
    v28 = *(v10 + 16);
    *&v34 = v17;
    *(&v34 + 1) = v21;
    v36 = 0;
    v35 = 0uLL;
    v37 = 0;
    v29 = v20;
    swift_errorRetain();
    sub_100005FAC();
  }

  return result;
}

uint64_t sub_10000332C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_100003364()
{
  sub_10000332C();

  return _swift_deallocClassInstance(v0, 48, 7);
}

uint64_t sub_1000033BC(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1000033E0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000033F4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 41))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 40);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100003434(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

unint64_t sub_1000034A4()
{
  result = qword_100010C80;
  if (!qword_100010C80)
  {
    type metadata accessor for RemoteEngagementPresenter();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010C80);
  }

  return result;
}

void *sub_1000034F8()
{
  v1 = sub_1000022F4(&qword_100010E00, &qword_100006A68);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v0[2] = sub_100005FBC();
  v0[3] = 0;
  v0[4] = 0;
  v0[5] = 0;
  return v0;
}

unint64_t sub_100003564()
{
  result = qword_100010C98;
  if (!qword_100010C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010C98);
  }

  return result;
}

uint64_t sub_1000035B8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t *sub_100003600(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_100003660(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1000036A0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1000036F8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t getEnumTagSinglePayload for RemoteEngagementViewController.RemoteViewControllerProxyError(unsigned int *a1, int a2)
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

_BYTE *sub_1000037C8(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x100003864);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1000038A0()
{
  result = qword_100010CC8;
  if (!qword_100010CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010CC8);
  }

  return result;
}

unint64_t sub_1000038F8()
{
  result = qword_100010CD0;
  if (!qword_100010CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010CD0);
  }

  return result;
}

uint64_t sub_100003970()
{

  return swift_once();
}

void sub_10000399C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoteEngagementViewController();
  objc_msgSendSuper2(&v2, "viewDidLoad");
  sub_100003E80();
  v1 = *&v0[OBJC_IVAR____TtC26AMSEngagementViewExtension30RemoteEngagementViewController_presenter];
  type metadata accessor for RemoteEngagementPresenter();
  sub_100005C2C();
  sub_100005EEC();
}

void sub_100003ABC(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for RemoteEngagementViewController();
  objc_msgSendSuper2(&v4, "viewDidAppear:", a1 & 1);
  sub_100004058();
  v3 = *&v1[OBJC_IVAR____TtC26AMSEngagementViewExtension30RemoteEngagementViewController_presenter];
  type metadata accessor for RemoteEngagementPresenter();
  sub_100005C2C();
  sub_100005EFC();
}

uint64_t sub_100003B80(char a1)
{
  v4 = sub_100005F5C();
  v5 = sub_100005DD0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for RemoteEngagementViewController();
  v15.receiver = v2;
  v15.super_class = v12;
  objc_msgSendSuper2(&v15, "viewWillDisappear:", a1 & 1);
  v13 = *&v2[OBJC_IVAR____TtC26AMSEngagementViewExtension30RemoteEngagementViewController_presenter];
  sub_100005F4C();
  type metadata accessor for RemoteEngagementPresenter();
  sub_100005C2C();
  sub_100005F2C();
  return (*(v7 + 8))(v11, v1);
}

uint64_t sub_100003CE4(char a1, SEL *a2, uint64_t (*a3)(uint64_t, unint64_t))
{
  v11.receiver = v3;
  v11.super_class = type metadata accessor for RemoteEngagementViewController();
  objc_msgSendSuper2(&v11, *a2, a1 & 1);
  v7 = *&v3[OBJC_IVAR____TtC26AMSEngagementViewExtension30RemoteEngagementViewController_presenter];
  v8 = type metadata accessor for RemoteEngagementPresenter();
  v9 = sub_100005C2C();
  return a3(v8, v9);
}

id sub_100003E00(void *a1)
{
  v1 = [objc_opt_self() interfaceWithProtocol:*a1];

  return v1;
}

uint64_t sub_100003E80()
{
  v2 = sub_1000022F4(&qword_100010DF8, &unk_100006C60);
  v3 = sub_100005DD0(v2);
  v5 = v4;
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v9 = &v13[-1] - v8;
  v10 = *(*(v1 + OBJC_IVAR____TtC26AMSEngagementViewExtension30RemoteEngagementViewController_presenter) + 16);
  sub_100005DC4();
  swift_allocObject();
  sub_100005DF4();
  sub_1000022F4(&qword_100010E00, &qword_100006A68);
  sub_100005B80();

  sub_100005ECC();
  sub_100005EDC();

  sub_10000233C(v13);
  return (*(v5 + 8))(v9, v0);
}

void sub_100003FF0(__int128 *a1)
{
  v1 = a1[1];
  v4 = *a1;
  v5[0] = v1;
  *(v5 + 9) = *(a1 + 25);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_100004EB8(&v4);
  }
}

void sub_100004058()
{
  v1 = v0;
  v2 = [v0 view];
  v3 = [v2 window];

  if (v3)
  {
    v4 = objc_opt_self();
    v5 = v3;
    v6 = [v4 systemBlueColor];
    [v5 setTintColor:v6];

    v7 = [v5 _rootSheetPresentationController];
    if (v7)
    {
      v15 = v7;
      [v7 _setShouldScaleDownBehindDescendantSheets:0];
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_1000109B0 != -1)
    {
      sub_100003970();
    }

    v8 = sub_100005EBC();
    sub_1000022BC(v8, qword_100010E20);
    sub_1000022F4(&qword_100010C90, &unk_100006A70);
    v9 = *(sub_100005E7C() - 8);
    v10 = *(v9 + 72);
    v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    *(swift_allocObject() + 16) = xmmword_1000068B0;
    v16[3] = type metadata accessor for RemoteEngagementViewController();
    v16[0] = v1;
    v12 = v1;
    v13 = AMSLogKey();
    if (v13)
    {
      v14 = v13;
      sub_100005FDC();
    }

    sub_100005E6C();

    sub_10000233C(v16);
    sub_100005E4C();
    sub_100005E8C();
  }
}

uint64_t sub_1000042E8()
{
  v1 = v0;
  sub_1000022F4(&qword_100010DE0, &qword_100006C50);
  v2 = sub_100005F9C();
  if ([v1 _remoteViewControllerProxy])
  {
    sub_100005FFC();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (!*(&v6 + 1))
  {
    sub_100002388(v7);
    goto LABEL_8;
  }

  sub_1000022F4(&qword_100010DF0, &qword_100006C58);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    sub_100005B24();
    swift_allocError();
    sub_100005F7C();

    return v2;
  }

  *&v7[0] = v4;
  sub_100005F8C();
  swift_unknownObjectRelease();
  return v2;
}

void sub_100004408(char a1, void *a2, uint64_t a3)
{
  v7 = [v3 presentedViewController];
  if (v7)
  {
    v8 = v7;
    if (a2)
    {
      v9[4] = a2;
      v9[5] = a3;
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 1107296256;
      v9[2] = sub_100005DB8;
      v9[3] = &unk_10000C8A0;
      a2 = _Block_copy(v9);
    }

    [v8 dismissViewControllerAnimated:a1 & 1 completion:a2];
    _Block_release(a2);
  }

  else if (a2)
  {
    (a2)();
  }
}

uint64_t sub_10000450C(void *a1, uint64_t a2)
{
  sub_1000042E8();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_100005DC4();
  swift_allocObject();
  sub_100005DF4();
  v5 = sub_100003660(0, &qword_100010D78, OS_dispatch_queue_ptr);
  v6 = a1;
  swift_errorRetain();

  v8[3] = v5;
  v8[4] = &protocol witness table for OS_dispatch_queue;
  v8[0] = sub_100005FEC();
  sub_100005F6C();

  sub_10000233C(v8);
}

void sub_10000462C(void **a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  if (a3)
  {
    v5 = sub_100005E1C();
  }

  else
  {
    v5 = 0;
  }

  v7[4] = nullsub_1;
  v7[5] = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_100005DB8;
  v7[3] = &unk_10000C878;
  v6 = _Block_copy(v7);
  [v4 engagementTaskDidFinishWithResult:a2 error:v5 completion:v6];
  _Block_release(v6);
}

uint64_t sub_100004704(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_100004748()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    if (qword_1000109B0 != -1)
    {
      swift_once();
    }

    v2 = sub_100005EBC();
    sub_1000022BC(v2, qword_100010E20);
    sub_1000022F4(&qword_100010C90, &unk_100006A70);
    v3 = *(sub_100005E7C() - 8);
    v4 = *(v3 + 72);
    v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    *(swift_allocObject() + 16) = xmmword_100006820;
    v14 = type metadata accessor for RemoteEngagementViewController();
    v13[0] = v1;
    v6 = v1;
    v7 = AMSLogKey();
    if (v7)
    {
      v8 = v7;
      sub_100005FDC();
    }

    sub_100005E6C();

    sub_10000233C(v13);
    sub_100005E4C();
    swift_getErrorValue();
    v14 = v12;
    v9 = sub_100003600(v13);
    (*(*(v12 - 8) + 16))(v9);
    v10 = AMSLogKey();
    if (v10)
    {
      v11 = v10;
      sub_100005FDC();
    }

    sub_100005E6C();

    sub_10000233C(v13);
    sub_100005E8C();
  }

  return result;
}

uint64_t sub_1000049D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100005DC4();
  v6 = swift_allocObject();
  sub_100005DF4();
  sub_100005DE8();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = a3;

  swift_errorRetain();
  sub_1000022AC(a2);
  sub_100004408(1, sub_100005AC8, v7);
}

void sub_100004A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    objc_allocWithZone(type metadata accessor for ErrorViewController());
    swift_errorRetain();
    sub_1000022AC(a3);
    v9 = sub_100001520(a2, a3, a4);
    [v8 presentViewController:v9 animated:1 completion:0];
  }
}

uint64_t sub_100004B60(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  sub_100005DC4();
  v10 = swift_allocObject();
  sub_100005DF4();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a1;
  v11[4] = a2;
  v11[5] = a3;
  v11[6] = a4;
  v11[7] = a5;
  v12 = a3;

  v13 = a1;
  swift_unknownObjectRetain();
  sub_100004408(1, sub_100005A54, v11);
}

void sub_100004C40(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    sub_100003660(0, &qword_100010D70, AMSUIEngagementTask_ptr);
    v13 = a2;
    swift_unknownObjectRetain();
    v14 = v12;
    v15 = sub_100004DC0(v13, a3, v14);
    [v15 setClientInfo:a4];
    v16 = [v15 presentEngagement];
    aBlock[4] = a5;
    aBlock[5] = a6;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004E2C;
    aBlock[3] = &unk_10000C800;
    v17 = _Block_copy(aBlock);

    [v16 addFinishBlock:v17];
    _Block_release(v17);
  }
}

id sub_100004DC0(void *a1, uint64_t a2, void *a3)
{
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRequest:a1 bag:a2 presentingViewController:a3];

  swift_unknownObjectRelease();
  return v5;
}

void sub_100004E2C(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_100004EB8(uint64_t a1)
{
  if (qword_1000109B0 != -1)
  {
    sub_100003970();
  }

  v3 = sub_100005EBC();
  sub_1000022BC(v3, qword_100010E20);
  sub_1000022F4(&qword_100010C90, &unk_100006A70);
  v4 = *(sub_100005E7C() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_100006820;
  v15[3] = type metadata accessor for RemoteEngagementViewController();
  v15[0] = v1;
  v1;
  v7 = AMSLogKey();
  if (v7)
  {
    v8 = v7;
    sub_100005FDC();
  }

  sub_100005E6C();

  sub_10000233C(v15);
  sub_100005E4C();
  v16[3] = &type metadata for RemoteEngagementPresenter.State;
  v9 = swift_allocObject();
  v16[0] = v9;
  v10 = *(a1 + 16);
  v9[1] = *a1;
  v9[2] = v10;
  *(v9 + 41) = *(a1 + 25);
  sub_10000596C(a1, v15);
  sub_100005E5C();
  sub_100002388(v16);
  sub_100005E9C();

  v11 = *a1;
  v12 = *(a1 + 8);
  if (!*(a1 + 40))
  {
    return sub_10000450C(v11, v12);
  }

  v13 = *(a1 + 16);
  if (*(a1 + 40) == 1)
  {
    return sub_100004B60(v11, v12, v13, *(a1 + 24), *(a1 + 32));
  }

  else
  {
    return sub_1000049D4(v11, v12, v13);
  }
}

id sub_100005104()
{
  v1 = OBJC_IVAR____TtC26AMSEngagementViewExtension30RemoteEngagementViewController_presenter;
  type metadata accessor for RemoteEngagementPresenter();
  sub_100005DE8();
  swift_allocObject();
  *&v0[v1] = sub_1000034F8();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for RemoteEngagementViewController();
  return objc_msgSendSuper2(&v3, "init");
}

id sub_100005194(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = OBJC_IVAR____TtC26AMSEngagementViewExtension30RemoteEngagementViewController_presenter;
  type metadata accessor for RemoteEngagementPresenter();
  sub_100005DE8();
  swift_allocObject();
  *&v3[v7] = sub_1000034F8();
  if (a2)
  {
    v8 = sub_100005FCC();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v4;
  v11.super_class = type metadata accessor for RemoteEngagementViewController();
  v9 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", v8, a3);

  return v9;
}

id sub_1000052B0(void *a1)
{
  v3 = OBJC_IVAR____TtC26AMSEngagementViewExtension30RemoteEngagementViewController_presenter;
  type metadata accessor for RemoteEngagementPresenter();
  sub_100005DE8();
  swift_allocObject();
  *&v1[v3] = sub_1000034F8();
  v6.receiver = v1;
  v6.super_class = type metadata accessor for RemoteEngagementViewController();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

id sub_100005368()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoteEngagementViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000053D0(void *a1, uint64_t a2, unint64_t a3, void *a4, char *a5, void (**a6)(void, void))
{
  v8 = *&a5[OBJC_IVAR____TtC26AMSEngagementViewExtension30RemoteEngagementViewController_presenter];
  if (sub_10000272C(a1, a2, a3, a4))
  {
    if (qword_1000109B0 != -1)
    {
      swift_once();
    }

    v9 = sub_100005EBC();
    sub_1000022BC(v9, qword_100010E20);
    sub_1000022F4(&qword_100010C90, &unk_100006A70);
    v10 = *(sub_100005E7C() - 8);
    v11 = *(v10 + 72);
    v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    *(swift_allocObject() + 16) = xmmword_100006820;
    v24 = type metadata accessor for RemoteEngagementViewController();
    v23[0] = a5;
    v13 = a5;
    v14 = AMSLogKey();
    if (v14)
    {
      v15 = v14;
      sub_100005FDC();
    }

    sub_100005E6C();

    sub_10000233C(v23);
    sub_100005E4C();
    v24 = &type metadata for RemoteEngagementPresenter.ConfigurationError;
    sub_100005E5C();
    sub_100002388(v23);
    sub_100005E8C();
  }

  else
  {
    if (qword_1000109B0 != -1)
    {
      swift_once();
    }

    v16 = sub_100005EBC();
    sub_1000022BC(v16, qword_100010E20);
    sub_1000022F4(&qword_100010C90, &unk_100006A70);
    v17 = *(sub_100005E7C() - 8);
    v18 = *(v17 + 72);
    v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    *(swift_allocObject() + 16) = xmmword_1000068B0;
    v24 = type metadata accessor for RemoteEngagementViewController();
    v23[0] = a5;
    v20 = a5;
    v21 = AMSLogKey();
    if (v21)
    {
      v22 = v21;
      sub_100005FDC();
    }

    sub_100005E6C();

    sub_10000233C(v23);
    sub_100005E4C();
    sub_100005E9C();

    sub_100002BE4();
  }

  a6[2](a6, 0);
  _Block_release(a6);
}

uint64_t sub_10000583C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000036F8(a1, a2);
  }

  return a1;
}

uint64_t sub_100005850()
{
  sub_100005894(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return _swift_deallocObject(v0, 57, 7);
}

void sub_100005894(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{
  switch(a6)
  {
    case 2:

      sub_1000023F0(a2);
      break;
    case 1:

      swift_unknownObjectRelease();

      break;
    case 0:

      break;
  }
}

uint64_t sub_1000059C8()
{
  swift_unknownObjectWeakDestroy();
  sub_100005DC4();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1000059FC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  v3 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100005A64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005A7C()
{
  v1 = v0[2];

  v2 = v0[3];

  if (v0[4])
  {
    v3 = v0[5];
  }

  sub_100005DE8();

  return _swift_deallocObject(v4, v5, v6);
}

uint64_t sub_100005AD4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100005B24()
{
  result = qword_100010DE8;
  if (!qword_100010DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010DE8);
  }

  return result;
}

unint64_t sub_100005B80()
{
  result = qword_100010E08;
  if (!qword_100010E08)
  {
    sub_100005BE4(&qword_100010E00, &qword_100006A68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010E08);
  }

  return result;
}

uint64_t sub_100005BE4(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100005C2C()
{
  result = qword_100010E10;
  if (!qword_100010E10)
  {
    type metadata accessor for RemoteEngagementPresenter();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010E10);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RemoteEngagementViewController.RemoteViewControllerProxyError(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x100005D20);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_100005D5C()
{
  result = qword_100010E18;
  if (!qword_100010E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010E18);
  }

  return result;
}

uint64_t sub_100005DF4()
{

  return swift_unknownObjectWeakInit();
}