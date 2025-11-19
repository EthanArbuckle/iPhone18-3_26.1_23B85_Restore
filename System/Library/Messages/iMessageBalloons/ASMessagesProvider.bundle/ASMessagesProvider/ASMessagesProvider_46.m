void sub_528BD0(uint64_t a1)
{
  v2 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = *(Strong + OBJC_IVAR____TtC18ASMessagesProvider21DynamicViewController_objectGraph);
      v7 = Strong;

      v8 = sub_BD88(&unk_93F630);
      sub_768860();
      v9 = *(v8 - 8);
      if ((*(v9 + 48))(v4, 1, v8) == 1)
      {

        sub_10A2C(v4, &unk_93F980);
      }

      else
      {
        sub_32A6C0(a1, 1, v6, v4);

        (*(v9 + 8))(v4, v8);
      }
    }
  }
}

uint64_t sub_528D88()
{
  v0 = sub_768FD0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93DEE8 != -1)
  {
    swift_once();
  }

  v4 = sub_BE38(v0, qword_9A03E8);
  (*(v1 + 16))(v3, v4, v0);
  qword_99E2B0 = sub_768FF0();
  unk_99E2B8 = &protocol witness table for OSLogger;
  sub_B1B4(qword_99E298);
  return sub_768FE0();
}

void sub_528ECC(uint64_t a1, uint64_t (*a2)(__n128))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_52864C(a2);
  }
}

void sub_528F28(uint64_t a1, uint64_t (*a2)(__n128))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_5282FC(&OBJC_IVAR____TtC18ASMessagesProvider21DynamicViewController_requestInfo, a2, &OBJC_IVAR____TtC18ASMessagesProvider21DynamicViewController_objectGraph);
  }
}

void *sub_528F94(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v9 = Strong;
  v10 = sub_49BC0(a1, a2, a3, a4);
  v11 = v10;

  return v10;
}

void sub_5291C4()
{
  v0 = sub_7570A0();
  __chkstk_darwin(v0 - 8);
  sub_757060();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_529354()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider21DynamicViewController_referrer);

  return v1;
}

id sub_52947C()
{
  v1 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider21DynamicViewController_gridView);
  swift_beginAccess();
  v2 = *v1;
  v3 = *v1;
  return v2;
}

void sub_5294D0(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC18ASMessagesProvider21DynamicViewController_gridView;
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  *(v5 + 8) = a2;
}

void (*sub_529590(uint64_t **a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_493D0(v2);
  return sub_215A4;
}

void *sub_529600(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v4 = sub_49BC0(a1, a2, a3, a4);
  v5 = v4;
  return v4;
}

uint64_t sub_52962C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_529D58(&qword_959CE8);

  return DynamicViewControllerDisplaying.loadGrid(primaryIcon:remainingIcons:)(a1, a2, ObjectType, v5);
}

uint64_t sub_5296D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v4 = sub_529D58(&qword_959CE8);

  return a3(ObjectType, v4);
}

char *sub_529800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  *&v6[OBJC_IVAR____TtC18ASMessagesProvider21DynamicViewController_dynamicDelegate] = 0;
  *&v6[OBJC_IVAR____TtC18ASMessagesProvider21DynamicViewController_gridPresenter] = 0;
  v13 = &v6[OBJC_IVAR____TtC18ASMessagesProvider21DynamicViewController_gridView];
  *v13 = 0;
  *(v13 + 1) = 0;
  *&v6[OBJC_IVAR____TtC18ASMessagesProvider21DynamicViewController_objectGraph] = a5;
  *&v6[OBJC_IVAR____TtC18ASMessagesProvider21DynamicViewController_requestInfo] = a2;
  v14 = &v6[OBJC_IVAR____TtC18ASMessagesProvider21DynamicViewController_referrer];
  *v14 = a3;
  *(v14 + 1) = a4;
  sub_75A110();

  sub_768880();
  *&v6[OBJC_IVAR____TtC18ASMessagesProvider21DynamicViewController_artworkLoader] = v38;
  sub_75A920();
  sub_768880();
  v15 = sub_75A910();

  sub_757040(v16);
  v18 = v17;
  v37.receiver = v6;
  v37.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v37, "initWithBag:URL:", v15, v17);
  swift_unknownObjectRelease();

  sub_4A17C();
  v20 = v19;
  sub_768880();
  v21 = v38;
  v22 = [v38 ams_activeiTunesAccount];

  [v20 setAccount:v22];
  if (sub_75EA20())
  {
    v23.super.isa = sub_7690E0().super.isa;
  }

  else
  {
    v23.super.isa = 0;
  }

  [v20 setMetricsOverlay:v23.super.isa];

  [v20 setAnonymousMetrics:1];
  v24 = sub_75EA10();
  if (v24)
  {
    sub_527FF0(v24);

    v25.super.isa = sub_7690E0().super.isa;
  }

  else
  {
    v25.super.isa = 0;
  }

  [v20 setClientOptions:v25.super.isa];

  v26 = v20;
  sub_75A930();
  v27 = sub_769210();

  [v26 setMediaClientIdentifier:v27];

  sub_761230();
  sub_768900();
  sub_768ED0();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v31 = objc_allocWithZone(sub_762C00());
  v32 = sub_762BF0();

  v33 = OBJC_IVAR____TtC18ASMessagesProvider21DynamicViewController_dynamicDelegate;
  *&v26[OBJC_IVAR____TtC18ASMessagesProvider21DynamicViewController_dynamicDelegate] = v32;
  swift_unknownObjectRelease();
  [v26 setDelegate:{*&v26[v33], v28, sub_52A058, v29, sub_52A088, v30}];
  sub_7625F0();
  v34 = sub_7625E0();
  [v26 setMediaContentDelegate:v34];

  v35 = sub_7570A0();
  (*(*(v35 - 8) + 8))(a1, v35);
  return v26;
}

uint64_t sub_529D58(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DynamicViewController();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_529D98()
{
  if (qword_93D380 != -1)
  {
    swift_once();
  }

  sub_B170(qword_99E298, qword_99E2B0);
  sub_BD88(&qword_93FD00);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77E280;
  sub_768540();
  swift_getErrorValue();
  v3[3] = v2;
  v0 = sub_B1B4(v3);
  (*(*(v2 - 8) + 16))(v0);
  sub_7685C0();
  sub_10A2C(v3, &unk_93FBD0);
  sub_768EA0();
}

uint64_t sub_529F60()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_52A0A8(uint64_t a1)
{
  if (a1 < 0)
  {
    return 0;
  }

  swift_beginAccess();
  v3 = *(v1 + 32);
  if (v3 >> 62)
  {
    if (sub_76A860() > a1)
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (*(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)) <= a1)
  {
    return 0;
  }

LABEL_4:
  result = swift_beginAccess();
  v5 = *(v1 + 32);
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = sub_76A770();
    goto LABEL_7;
  }

  if (*(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)) > a1)
  {
    v6 = *(v5 + 8 * a1 + 32);

LABEL_7:
    swift_endAccess();
    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_52A184(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_768C60();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v16 - v11;
  v13 = sub_7652D0();
  __chkstk_darwin(v13 - 8);
  result = sub_764EE0();
  if (result)
  {
    v17 = a2;
    swift_beginAccess();
    [a3 contentMode];
    sub_765330();
    sub_7652E0();
    sub_7591B0();
    [a3 setContentMode:sub_765140()];
    sub_75DEF0();
    sub_7591F0();
    if (!sub_7651A0())
    {
      sub_396E8();
      sub_76A030();
    }

    sub_759070();
    if (*(v3 + 16))
    {
      sub_759210();
      sub_14FA38();

      sub_75A050();
    }

    v19 = 0u;
    v20 = 0u;
    memset(v18, 0, sizeof(v18));
    sub_768C10();
    sub_BDD0(v18);
    sub_BDD0(&v19);
    *(&v20 + 1) = &type metadata for Int;
    *&v19 = v17;
    sub_768C40();
    v15 = *(v7 + 8);
    v15(v9, v6);
    sub_BDD0(&v19);
    sub_769E70();

    return (v15)(v12, v6);
  }

  return result;
}

uint64_t sub_52A478()
{

  return swift_deallocClassInstance();
}

uint64_t sub_52A4DC()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  if (v1 >> 62)
  {
    return sub_76A860();
  }

  else
  {
    return *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
  }
}

uint64_t sub_52A568(double a1, double a2)
{
  result = swift_beginAccess();
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t sub_52A5FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_52A0A8(a1);
  *a2 = result;
  return result;
}

uint64_t sub_52A624()
{
  v0 = sub_BD88(&qword_94BAC0);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  sub_759210();
  v3 = sub_759020();
  if (qword_93C598 != -1)
  {
    swift_once();
  }

  v4 = sub_765080();
  v5 = sub_BE38(v4, qword_99B628);
  v6 = *(v4 - 8);
  (*(v6 + 16))(v2, v5, v4);
  (*(v6 + 56))(v2, 0, 1, v4);
  sub_7591C0();
  return v3;
}

uint64_t sub_52A770()
{
  result = sub_759190();
  if (*(v0 + 16))
  {
    sub_759210();
    sub_14FA38();

    sub_75A0C0();
  }

  return result;
}

void sub_52A804()
{
  sub_BD88(&unk_93F5C0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_78D690;
  v1 = objc_opt_self();
  *(v0 + 32) = [v1 blackColor];
  v2 = [v1 blackColor];
  v3 = [v2 colorWithAlphaComponent:0.4];

  *(v0 + 40) = v3;
  v4 = [v1 blackColor];
  v5 = [v4 colorWithAlphaComponent:0.0];

  *(v0 + 48) = v5;
  qword_959DB0 = v0;
}

UIColor sub_52A908()
{
  sub_BD88(&unk_93F5C0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_78D690;
  sub_396E8();
  *(v0 + 32) = sub_76A120(0.43137, 0.43137, 0.43137, 0.6);
  *(v0 + 40) = sub_76A120(0.35294, 0.35294, 0.35294, 0.5);
  result.super.isa = sub_76A120(0.27146, 0.2665, 0.26659, 0.2).super.isa;
  *(v0 + 48) = result;
  qword_959DB8 = v0;
  return result;
}

char *sub_52A9F0()
{
  v2 = OBJC_IVAR____TtC18ASMessagesProvider23MultiCornerGradientView_colors;
  v3 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider23MultiCornerGradientView_colors);
  if (v3 >> 62)
  {
    v4 = sub_76A860();
  }

  else
  {
    v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
  }

  if (v4)
  {

    sub_143C5C(0, v4 & ~(v4 >> 63), 0);
    if (v4 < 0)
    {
      __break(1u);
      goto LABEL_41;
    }

    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = sub_76A770();
      }

      else
      {
        v6 = *(v3 + 8 * i + 32);
      }

      v7 = v6;
      [v6 _luminance];
      v9 = v8;

      v11 = _swiftEmptyArrayStorage[2];
      v10 = _swiftEmptyArrayStorage[3];
      if (*&v11 >= *&v10 >> 1)
      {
        sub_143C5C((*&v10 > 1uLL), *&v11 + 1, 1);
      }

      *&_swiftEmptyArrayStorage[2] = *&v11 + 1;
      _swiftEmptyArrayStorage[*&v11 + 4] = v9;
    }
  }

  v12 = _swiftEmptyArrayStorage[2];
  if (v12 == 0.0)
  {

LABEL_26:
    if (qword_93D390 != -1)
    {
      swift_once();
    }

    v22 = &qword_959DB8;
    *&v23 = 0.6;
LABEL_29:
    v24 = *&v23;
    goto LABEL_30;
  }

  if (*&v12 <= 3uLL)
  {
    v13 = 0;
    v1 = 0.0;
LABEL_20:
    v16 = *&v12 - v13;
    v17 = &_swiftEmptyArrayStorage[v13 + 4];
    do
    {
      v18 = *v17++;
      v1 = v1 + v18;
      --v16;
    }

    while (v16);
    goto LABEL_22;
  }

  v13 = *&v12 & 0x7FFFFFFFFFFFFFFCLL;
  v14 = &_swiftEmptyArrayStorage[6];
  v1 = 0.0;
  v15 = *&v12 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v1 = v1 + *(v14 - 2) + *(v14 - 1) + *v14 + v14[1];
    v14 += 4;
    v15 -= 4;
  }

  while (v15);
  if (*&v12 != v13)
  {
    goto LABEL_20;
  }

LABEL_22:

  if (v1 <= 0.0)
  {
    goto LABEL_26;
  }

  v19 = *(v0 + v2);
  if (!(v19 >> 62))
  {
    v20 = *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8));
    goto LABEL_25;
  }

LABEL_41:
  v20 = sub_76A860();
LABEL_25:
  v21 = v1 / v20;
  if (v21 == 0.0)
  {
    goto LABEL_26;
  }

  if (v21 < COERCE_DOUBLE(1) || v21 >= 0.83)
  {
    if (qword_93D388 != -1)
    {
      swift_once();
    }

    v22 = &qword_959DB0;
    *&v23 = 0.7;
    goto LABEL_29;
  }

  v24 = 0.2;
  if (qword_93D388 != -1)
  {
    swift_once();
  }

  v22 = &qword_959DB0;
LABEL_30:
  v25 = *v22;

  v26 = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  *&v26[OBJC_IVAR____TtC18ASMessagesProvider12GradientView_colors] = v25;

  sub_4AC204();
  sub_4AC060(&off_87DC20);
  v27 = v26;
  v28 = [v27 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.0, 1.0}];

  v29 = [v27 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEndPoint:{1.0, 0.0}];

  v30 = [v27 layer];
  [v30 setMask:0];

  v31 = [v27 layer];

  [v31 setCompositingFilter:kCAFilterPlusD];
  [v27 setAlpha:v24];

  return v27;
}

id sub_52AFFC()
{
  sub_55CCF8();
  v1 = OBJC_IVAR____TtC18ASMessagesProvider28MultiAppFallbackGradientView_overlayGradientView;
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider28MultiAppFallbackGradientView_overlayGradientView] removeFromSuperview];
  v2 = sub_52A9F0();
  v3 = *&v0[v1];
  *&v0[v1] = v2;
  v4 = v2;

  [v0 addSubview:v4];
  [v0 setNeedsLayout];

  return [v0 setNeedsDisplay];
}

id sub_52B0DC(uint64_t a1, NSString a2)
{
  v5 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_offerLabel];
  result = [v5 text];
  if (!result)
  {
    if (!a2)
    {
      return result;
    }

    goto LABEL_10;
  }

  v7 = result;
  v8 = sub_769240();
  v10 = v9;

  if (!a2)
  {

    goto LABEL_12;
  }

  if (v8 != a1 || v10 != a2)
  {
    v12 = sub_76A950();

    if (v12)
    {
      return result;
    }

LABEL_10:
    a2 = sub_769210();
LABEL_12:
    [v5 setText:a2];

    v13 = [v5 text];
    if (v13)
    {
      v14 = v13;
      sub_769240();
    }

    v15 = sub_7692D0();

    [v5 setHidden:v15 & 1];

    return [v2 setNeedsLayout];
  }
}

uint64_t sub_52B290()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_766CA0();
  sub_161DC(v4, qword_959DF0);
  sub_BE38(v4, qword_959DF0);
  if (qword_93DBC0 != -1)
  {
    swift_once();
  }

  v5 = sub_7666D0();
  v6 = sub_BE38(v5, qword_99FB38);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_B1B4(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_766CB0();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_52B468()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_766CA0();
  sub_161DC(v4, qword_959E08);
  sub_BE38(v4, qword_959E08);
  if (qword_93DBC8 != -1)
  {
    swift_once();
  }

  v5 = sub_7666D0();
  v6 = sub_BE38(v5, qword_99FB50);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_B1B4(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_766CB0();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_52B63C()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_766CA0();
  sub_161DC(v4, qword_959E20);
  sub_BE38(v4, qword_959E20);
  if (qword_93DBD8 != -1)
  {
    swift_once();
  }

  v5 = sub_7666D0();
  v6 = sub_BE38(v5, qword_99FB80);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_B1B4(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_766CB0();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_52B810()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_766CA0();
  sub_161DC(v4, qword_959E38);
  sub_BE38(v4, qword_959E38);
  if (qword_93DBD8 != -1)
  {
    swift_once();
  }

  v5 = sub_7666D0();
  v6 = sub_BE38(v5, qword_99FB80);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_B1B4(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_766CB0();
  return (*(v1 + 8))(v3, v0);
}

void sub_52B9E4(double a1, double a2, double a3, double a4)
{
  v9 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v9 - 8);
  v11 = &v83 - v10;
  v12 = sub_760370();
  __chkstk_darwin(v12 - 8);
  v13 = sub_7603D0();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_7602F0();
  v18 = __chkstk_darwin(v17);
  (*(v20 + 104))(&v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.leading(_:), v18);
  (*(v14 + 104))(v16, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v13);
  sub_760360();
  sub_760300();
  v21 = OBJC_IVAR____TtC18ASMessagesProvider35CarouselItemCollectionLockupOverlay_materialBackground;
  *&v4[v21] = [objc_allocWithZone(UIVisualEffectView) init];
  v22 = OBJC_IVAR____TtC18ASMessagesProvider35CarouselItemCollectionLockupOverlay_collectionArtwork;
  type metadata accessor for CollectionLockupArtwork();
  *&v4[v22] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v23 = OBJC_IVAR____TtC18ASMessagesProvider35CarouselItemCollectionLockupOverlay_badgeLabel;
  sub_75BB20();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v4[v23] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v25 = OBJC_IVAR____TtC18ASMessagesProvider35CarouselItemCollectionLockupOverlay_titleLabel;
  *&v4[v25] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v26 = OBJC_IVAR____TtC18ASMessagesProvider35CarouselItemCollectionLockupOverlay_descriptionLabel;
  *&v4[v26] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v27 = sub_769210();
  v28 = [objc_opt_self() systemImageNamed:v27];

  if (v28)
  {
    v29 = OBJC_IVAR____TtC18ASMessagesProvider35CarouselItemCollectionLockupOverlay_chevronView;
    v30 = [objc_allocWithZone(UIImageView) initWithImage:v28];

    *&v4[v29] = v30;
    v31 = OBJC_IVAR____TtC18ASMessagesProvider35CarouselItemCollectionLockupOverlay_tapGestureRecognizer;
    *&v4[v31] = [objc_allocWithZone(UITapGestureRecognizer) init];
    v32 = &v4[OBJC_IVAR____TtC18ASMessagesProvider35CarouselItemCollectionLockupOverlay_selectionHandler];
    v33 = type metadata accessor for CarouselItemCollectionLockupOverlay(0);
    *v32 = 0;
    *(v32 + 1) = 0;
    v89.receiver = v4;
    v89.super_class = v33;
    v34 = objc_msgSendSuper2(&v89, "initWithFrame:", a1, a2, a3, a4);
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    v38 = v34;
    [v38 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
    [v38 setOverrideUserInterfaceStyle:2];
    [v38 setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
    v86 = OBJC_IVAR____TtC18ASMessagesProvider35CarouselItemCollectionLockupOverlay_materialBackground;
    v39 = *&v38[OBJC_IVAR____TtC18ASMessagesProvider35CarouselItemCollectionLockupOverlay_materialBackground];
    sub_6EC1FC(26.0);

    v40 = OBJC_IVAR____TtC18ASMessagesProvider35CarouselItemCollectionLockupOverlay_badgeLabel;
    v41 = qword_93DBC0;
    v42 = *&v38[OBJC_IVAR____TtC18ASMessagesProvider35CarouselItemCollectionLockupOverlay_badgeLabel];
    if (v41 != -1)
    {
      swift_once();
    }

    v43 = sub_7666D0();
    v44 = sub_BE38(v43, qword_99FB38);
    v45 = *(v43 - 8);
    v46 = *(v45 + 16);
    v46(v11, v44, v43);
    v47 = *(v45 + 56);
    v47(v11, 0, 1, v43);
    sub_75BA40();

    [*&v38[v40] setNumberOfLines:1];
    v48 = *&v38[v40];
    v49 = objc_opt_self();
    v50 = v48;
    v88 = v49;
    v51 = [v49 secondaryLabelColor];
    v52 = v40;
    v53 = v51;
    [v50 setTextColor:v51];

    v87 = v52;
    v54 = [*&v38[v52] layer];
    v85 = kCAFilterPlusL;
    [v54 setCompositingFilter:?];

    v55 = OBJC_IVAR____TtC18ASMessagesProvider35CarouselItemCollectionLockupOverlay_titleLabel;
    v56 = qword_93DBC8;
    v57 = *&v38[OBJC_IVAR____TtC18ASMessagesProvider35CarouselItemCollectionLockupOverlay_titleLabel];
    if (v56 != -1)
    {
      swift_once();
    }

    v58 = sub_BE38(v43, qword_99FB50);
    v46(v11, v58, v43);
    v47(v11, 0, 1, v43);
    sub_75BA40();

    [*&v38[v55] setNumberOfLines:1];
    v59 = *&v38[v55];
    v60 = [v88 labelColor];
    [v59 setTextColor:v60];

    v61 = OBJC_IVAR____TtC18ASMessagesProvider35CarouselItemCollectionLockupOverlay_descriptionLabel;
    v62 = *&v38[OBJC_IVAR____TtC18ASMessagesProvider35CarouselItemCollectionLockupOverlay_descriptionLabel];
    v84 = v55;
    v63 = qword_93DBD8;
    v64 = v62;
    if (v63 != -1)
    {
      swift_once();
    }

    v65 = sub_BE38(v43, qword_99FB80);
    v46(v11, v65, v43);
    v47(v11, 0, 1, v43);
    sub_75BA40();

    [*&v38[v61] setNumberOfLines:1];
    v66 = *&v38[v61];
    v67 = v88;
    v68 = [v88 secondaryLabelColor];
    [v66 setTextColor:v68];

    v69 = [*&v38[v61] layer];
    v70 = v85;
    [v69 setCompositingFilter:v85];

    v71 = OBJC_IVAR____TtC18ASMessagesProvider35CarouselItemCollectionLockupOverlay_chevronView;
    v72 = *&v38[OBJC_IVAR____TtC18ASMessagesProvider35CarouselItemCollectionLockupOverlay_chevronView];
    v73 = objc_opt_self();
    v74 = v72;
    v75 = [v73 configurationWithTextStyle:UIFontTextStyleBody];
    [v74 setPreferredSymbolConfiguration:v75];

    v76 = *&v38[v71];
    v77 = [v67 secondaryLabelColor];
    [v76 setTintColor:v77];

    v78 = [*&v38[v71] layer];
    [v78 setCompositingFilter:v70];

    v79 = OBJC_IVAR____TtC18ASMessagesProvider35CarouselItemCollectionLockupOverlay_tapGestureRecognizer;
    [*&v38[OBJC_IVAR____TtC18ASMessagesProvider35CarouselItemCollectionLockupOverlay_tapGestureRecognizer] setEnabled:0];
    v80 = *&v38[v79];
    v81 = v38;
    [v80 addTarget:v81 action:"handleSelection:"];
    v82 = *&v38[v79];
    [v82 setDelegate:v81];

    [v81 addGestureRecognizer:*&v38[v79]];
    [v81 addSubview:*&v38[v86]];
    [v81 addSubview:*&v81[OBJC_IVAR____TtC18ASMessagesProvider35CarouselItemCollectionLockupOverlay_collectionArtwork]];
    [v81 addSubview:*&v38[v87]];
    [v81 addSubview:*&v38[v84]];
    [v81 addSubview:*&v38[v61]];
    [v81 addSubview:*&v38[v71]];
    sub_52CEAC();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_52C59C@<X0>(int a1@<W0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v75 = a1;
  v77 = a2;
  v68 = sub_7670F0();
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v71 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v69 = &v61 - v6;
  v73 = sub_767120();
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v70 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_766BD0();
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v62 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v63 = &v61 - v10;
  __chkstk_darwin(v11);
  v64 = &v61 - v12;
  v13 = sub_766950();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v61 - v18;
  __chkstk_darwin(v20);
  v22 = &v61 - v21;
  __chkstk_darwin(v23);
  v25 = &v61 - v24;
  sub_766930();
  v26 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider35CarouselItemCollectionLockupOverlay_badgeLabel);
  v27 = sub_75BB20();
  v92 = v27;
  v93 = &protocol witness table for UILabel;
  v91 = v26;
  v28 = v26;
  sub_766940();
  v74 = v14;
  v29 = *(v14 + 8);
  v29(v16, v13);
  sub_BEB8(&v91);
  v30 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider35CarouselItemCollectionLockupOverlay_titleLabel);
  v92 = v27;
  v93 = &protocol witness table for UILabel;
  v91 = v30;
  v31 = v30;
  sub_766940();
  v29(v19, v13);
  sub_BEB8(&v91);
  v32 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider35CarouselItemCollectionLockupOverlay_descriptionLabel);
  v92 = v27;
  v93 = &protocol witness table for UILabel;
  v91 = v32;
  v33 = v32;
  v78 = v25;
  sub_766940();
  v34 = v13;
  v76 = v29;
  v29(v22, v13);
  sub_BEB8(&v91);
  if (v75)
  {
    v35 = v62;
    sub_766BA0();
    v36 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider35CarouselItemCollectionLockupOverlay_collectionArtwork);
    v92 = type metadata accessor for CollectionLockupArtwork();
    v93 = sub_52EBC8(&qword_959FC0, type metadata accessor for CollectionLockupArtwork);
    v91 = v36;
    v37 = v36;
    v38 = v63;
    sub_766BB0();
    v39 = *(v65 + 8);
    v40 = v66;
    v39(v35, v66);
    sub_BEB8(&v91);
    v92 = v13;
    v93 = &protocol witness table for VerticalStack;
    v41 = sub_B1B4(&v91);
    (*(v74 + 16))(v41, v78, v13);
    v42 = v64;
    sub_766BB0();
    v39(v38, v40);
    sub_BEB8(&v91);
    v43 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider35CarouselItemCollectionLockupOverlay_chevronView);
    v89 = sub_22AFB8();
    v90 = &protocol witness table for UIImageView;
    v88 = v43;
    v92 = v40;
    v93 = &protocol witness table for HorizontalStack;
    sub_B1B4(&v91);
    v44 = v43;
    sub_766BB0();
    v39(v42, v40);
    sub_BEB8(&v88);
  }

  else
  {
    v45 = v74;
    (*(v74 + 16))(v22, v78, v13);
    v46 = type metadata accessor for TextLayout(0);
    v47 = swift_allocObject();
    (*(v45 + 32))(v47 + OBJC_IVAR____TtC18ASMessagesProviderP33_1CE6518A0B94FED95A3A3BAD52379E0210TextLayout_textStack, v22, v13);
    v92 = v46;
    v93 = sub_52EBC8(&qword_959FB8, type metadata accessor for TextLayout);
    v91 = v47;
    v48 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider35CarouselItemCollectionLockupOverlay_collectionArtwork);
    v49 = type metadata accessor for CollectionLockupArtwork();
    v90 = &protocol witness table for UIView;
    v89 = v49;
    v88 = v48;
    v86 = &type metadata for CGFloat;
    v87 = &protocol witness table for CGFloat;
    v85 = 0x4024000000000000;
    v50 = enum case for FlankedHorizontalLayout.ViewAlignment.center(_:);
    v51 = *(v67 + 104);
    v52 = v68;
    v51(v69, enum case for FlankedHorizontalLayout.ViewAlignment.center(_:), v68);
    v53 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider35CarouselItemCollectionLockupOverlay_chevronView);
    v83 = sub_22AFB8();
    v84 = &protocol witness table for UIView;
    v81 = &protocol witness table for CGFloat;
    v82 = v53;
    v80 = &type metadata for CGFloat;
    v79 = 0x4038000000000000;
    v51(v71, v50, v52);
    v54 = v48;
    v55 = v53;
    v56 = v70;
    sub_767110();
    sub_52EBC8(&qword_953E18, &type metadata accessor for FlankedHorizontalLayout);
    v57 = v73;
    sub_7665D0();
    (*(v72 + 8))(v56, v57);
  }

  sub_134D8(&v91, &v88);
  v58 = sub_767340();
  v59 = v77;
  v77[3] = v58;
  v59[4] = &protocol witness table for Margins;
  sub_B1B4(v59);
  sub_767330();
  v76(v78, v34);
  return sub_BEB8(&v91);
}

id sub_52CEAC()
{
  v1 = v0;
  v2 = sub_760370();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v38 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v34 - v6;
  __chkstk_darwin(v8);
  v10 = &v34 - v9;
  v11 = sub_7603E0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v37 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v34 - v15;
  v18 = __chkstk_darwin(v17);
  v20 = &v34 - v19;
  v35 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider35CarouselItemCollectionLockupOverlay_badgeLabel];
  v21 = *(v12 + 16);
  v42 = OBJC_IVAR____TtC18ASMessagesProvider35CarouselItemCollectionLockupOverlay_displayOptions;
  v43 = v21;
  (v21)(&v34 - v19, &v1[OBJC_IVAR____TtC18ASMessagesProvider35CarouselItemCollectionLockupOverlay_displayOptions], v11, v18);
  sub_760380();
  v36 = *(v12 + 8);
  v36(v20, v11);
  v22 = sub_760340();
  v23 = *(v3 + 8);
  v39 = v3 + 8;
  v40 = v2;
  v41 = v23;
  v23(v10, v2);
  if (!v22)
  {
    v22 = [objc_opt_self() secondaryLabelColor];
  }

  [v35 setTextColor:v22];

  v24 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider35CarouselItemCollectionLockupOverlay_titleLabel];
  v43(v16, &v1[v42], v11);
  sub_760380();
  v25 = v16;
  v26 = v36;
  v36(v25, v11);
  v27 = sub_760350();
  v28 = v40;
  v41(v7, v40);
  if (!v27)
  {
    v27 = [objc_opt_self() labelColor];
  }

  [v24 setTextColor:v27];

  v29 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider35CarouselItemCollectionLockupOverlay_descriptionLabel];
  v30 = v37;
  v43(v37, &v1[v42], v11);
  v31 = v38;
  sub_760380();
  v26(v30, v11);
  v32 = sub_760320();
  v41(v31, v28);
  if (!v32)
  {
    v32 = [objc_opt_self() secondaryLabelColor];
  }

  [v29 setTextColor:v32];

  return [v1 setNeedsLayout];
}

id sub_52D368()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarouselItemCollectionLockupOverlay(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_52D4B8()
{
  result = sub_7603E0();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_52D56C(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + OBJC_IVAR____TtC18ASMessagesProvider35CarouselItemCollectionLockupOverlay_selectionHandler);
  v5 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider35CarouselItemCollectionLockupOverlay_selectionHandler);
  *v4 = a1;
  v4[1] = a2;
  sub_F714(a1);
  sub_F714(a1);
  sub_F704(v5);
  v6 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider35CarouselItemCollectionLockupOverlay_tapGestureRecognizer);
  if (a1)
  {
    sub_F704(a1);
  }

  [v6 setEnabled:a1 != 0];

  return sub_F704(a1);
}

uint64_t sub_52D620(uint64_t a1, char *a2)
{
  v3 = sub_760400();
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  sub_32F528(v4, a2);
}

uint64_t sub_52D690()
{
  sub_759210();
  sub_52EBC8(&qword_945810, &type metadata accessor for ArtworkView);
  sub_75A0C0();
  sub_75A0C0();
  sub_75A0C0();
  return sub_75A0C0();
}

uint64_t sub_52D788(void *a1)
{
  v2 = sub_767420();
  v31 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_BD88(&qword_959F90);
  __chkstk_darwin(v5 - 8);
  v7 = &v24 - v6;
  v8 = sub_7667E0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v24 - v13;
  __chkstk_darwin(v15);
  v17 = &v24 - v16;
  sub_766880();
  sub_52EBC8(&qword_959FC8, &type metadata accessor for DisjointStack);
  v30 = a1;
  sub_766C10();
  v24 = v17;
  v25 = v9;
  (*(v9 + 16))(v11, v17, v8);
  sub_52EBC8(&qword_959FD0, &type metadata accessor for DisjointStack.Placements);
  sub_769410();
  sub_52EBC8(&qword_959FD8, &type metadata accessor for DisjointStack.Placements);
  sub_76A4A0();
  v18 = v31;
  v19 = v31 + 48;
  v20 = *(v31 + 48);
  if (v20(v7, 1, v2) != 1)
  {
    v21 = *(v18 + 32);
    v31 = v18 + 32;
    v26 = (v18 + 8);
    v27 = v21;
    v28 = v7;
    v29 = v19;
    do
    {
      v27(v4, v7, v2);
      sub_767400();
      sub_B170(v32, v32[3]);
      sub_767410();
      [v30 layoutDirection];
      sub_769D30();
      v7 = v28;
      sub_7673E0();
      (*v26)(v4, v2);
      sub_BEB8(v32);
      sub_76A4A0();
    }

    while (v20(v7, 1, v2) != 1);
  }

  v22 = *(v25 + 8);
  v22(v14, v8);
  return (v22)(v24, v8);
}

uint64_t sub_52DC30(void *a1)
{
  v2 = sub_767420();
  v31 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_BD88(&qword_959F90);
  __chkstk_darwin(v5 - 8);
  v7 = &v24 - v6;
  v8 = sub_766890();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v24 - v13;
  __chkstk_darwin(v15);
  v17 = &v24 - v16;
  sub_766950();
  sub_52EBC8(&qword_959F98, &type metadata accessor for VerticalStack);
  v30 = a1;
  sub_766C10();
  v24 = v17;
  v25 = v9;
  (*(v9 + 16))(v11, v17, v8);
  sub_52EBC8(&qword_959FA0, &type metadata accessor for VerticalStack.Placements);
  sub_769410();
  sub_52EBC8(&qword_959FA8, &type metadata accessor for VerticalStack.Placements);
  sub_76A4A0();
  v18 = v31;
  v19 = v31 + 48;
  v20 = *(v31 + 48);
  if (v20(v7, 1, v2) != 1)
  {
    v21 = *(v18 + 32);
    v31 = v18 + 32;
    v26 = (v18 + 8);
    v27 = v21;
    v28 = v7;
    v29 = v19;
    do
    {
      v27(v4, v7, v2);
      sub_767400();
      sub_B170(v32, v32[3]);
      sub_767410();
      [v30 layoutDirection];
      sub_769D30();
      v7 = v28;
      sub_7673E0();
      (*v26)(v4, v2);
      sub_BEB8(v32);
      sub_76A4A0();
    }

    while (v20(v7, 1, v2) != 1);
  }

  v22 = *(v25 + 8);
  v22(v14, v8);
  return (v22)(v24, v8);
}

uint64_t sub_52E0D8()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProviderP33_1CE6518A0B94FED95A3A3BAD52379E0210TextLayout_textStack;
  v2 = sub_766950();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_52E19C()
{
  result = sub_766950();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_52E22C(void *a1)
{
  v1 = [a1 traitCollection];
  sub_52DC30(v1);

  return sub_7664B0();
}

double sub_52E2D8(void *a1)
{
  v2 = sub_766890();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 traitCollection];
  sub_7670E0();
  sub_766950();
  sub_52EBC8(&qword_959F98, &type metadata accessor for VerticalStack);
  sub_766C10();
  sub_52EBC8(&qword_959FB0, &type metadata accessor for VerticalStack.Placements);
  sub_766DF0();
  v9 = v8;

  (*(v3 + 8))(v6, v2);
  return v9;
}

uint64_t sub_52E518(uint64_t a1, void *a2, uint64_t a3)
{
  sub_7668E0();
  v5 = sub_766900();
  sub_766920();
  sub_766920();
  if (sub_766920() != v5)
  {
    sub_766920();
  }

  sub_7668D0();
  if (*a2 != -1)
  {
    swift_once();
  }

  v6 = sub_766CA0();
  v7 = sub_BE38(v6, a3);
  v10[3] = v6;
  v10[4] = &protocol witness table for StaticDimension;
  v8 = sub_B1B4(v10);
  (*(*(v6 - 8) + 16))(v8, v7, v6);
  return sub_7668B0();
}

uint64_t sub_52E620()
{
  sub_7668E0();
  sub_BD88(&unk_95B470);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_77E280;
  v1 = sub_766900();
  *(inited + 32) = v1;
  v2 = sub_766910();
  *(inited + 40) = v2;
  sub_766920();
  sub_766920();
  if (sub_766920() != v1)
  {
    sub_766920();
  }

  sub_766920();
  if (sub_766920() != v2)
  {
    sub_766920();
  }

  sub_7668D0();
  if (qword_93D3A8 != -1)
  {
    swift_once();
  }

  v3 = sub_766CA0();
  v4 = sub_BE38(v3, qword_959E20);
  v11 = v3;
  v12 = &protocol witness table for StaticDimension;
  v5 = sub_B1B4(v10);
  v6 = *(*(v3 - 8) + 16);
  v6(v5, v4, v3);
  sub_7668B0();
  if (qword_93D3B0 != -1)
  {
    swift_once();
  }

  v7 = sub_BE38(v3, qword_959E38);
  v11 = v3;
  v12 = &protocol witness table for StaticDimension;
  v8 = sub_B1B4(v10);
  v6(v8, v7, v3);
  return sub_7668C0();
}

id sub_52E854()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider35CarouselItemCollectionLockupOverlay_badgeLabel];
  sub_760450();
  if (v3)
  {
    v4 = sub_769210();
  }

  else
  {
    v4 = 0;
  }

  [v2 setText:v4];

  v5 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider35CarouselItemCollectionLockupOverlay_titleLabel];
  sub_760460();
  if (v6)
  {
    v7 = sub_769210();
  }

  else
  {
    v7 = 0;
  }

  [v5 setText:v7];

  v8 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider35CarouselItemCollectionLockupOverlay_descriptionLabel];
  sub_760410();
  if (v9)
  {
    v10 = sub_769210();
  }

  else
  {
    v10 = 0;
  }

  [v8 setText:v10];

  v11 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider35CarouselItemCollectionLockupOverlay_collectionArtwork];
  v12 = sub_760400();
  if (!v12)
  {
    i = 0;
    goto LABEL_15;
  }

  if (v12 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)); ; i = sub_76A860())
  {

LABEL_15:
    v14 = 4;
    if (i < 4)
    {
      v14 = i;
    }

    v15 = OBJC_IVAR____TtC18ASMessagesProvider23CollectionLockupArtwork_iconCount;
    v16 = *&v11[OBJC_IVAR____TtC18ASMessagesProvider23CollectionLockupArtwork_iconCount];
    *&v11[OBJC_IVAR____TtC18ASMessagesProvider23CollectionLockupArtwork_iconCount] = v14;
    v17 = &unk_90D000;
    if (v14 == v16)
    {
      break;
    }

    sub_BD88(&unk_93F5C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_77FA60;
    v19 = *&v11[OBJC_IVAR____TtC18ASMessagesProvider23CollectionLockupArtwork_icon1];
    *(inited + 32) = v19;
    v20 = *&v11[OBJC_IVAR____TtC18ASMessagesProvider23CollectionLockupArtwork_icon2];
    *(inited + 40) = v20;
    v21 = *&v11[OBJC_IVAR____TtC18ASMessagesProvider23CollectionLockupArtwork_icon3];
    *(inited + 48) = v21;
    v22 = *&v11[OBJC_IVAR____TtC18ASMessagesProvider23CollectionLockupArtwork_icon4];
    *(inited + 56) = v22;
    v23 = inited & 0xC000000000000001;
    v24 = v19;
    v25 = v20;
    v26 = v21;
    v27 = v22;
    if ((inited & 0xC000000000000001) != 0)
    {
      v28 = sub_76A770();
    }

    else
    {
      if (!*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_32;
      }

      v28 = v24;
    }

    v29 = v28;
    [v28 setHidden:*&v11[v15] < 1];

    if (v23)
    {
      v30 = sub_76A770();
    }

    else
    {
      if (*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)) < 2uLL)
      {
        goto LABEL_32;
      }

      v30 = *(inited + 40);
    }

    v31 = v30;
    [v30 setHidden:*&v11[v15] < 2];

    if (v23)
    {
      v32 = sub_76A770();
    }

    else
    {
      if (*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)) < 3uLL)
      {
        goto LABEL_32;
      }

      v32 = *(inited + 48);
    }

    v33 = v32;
    [v32 setHidden:*&v11[v15] < 3];

    if (v23)
    {
      v34 = sub_76A770();
      goto LABEL_30;
    }

    if (*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)) >= 4uLL)
    {
      v34 = *(inited + 56);
LABEL_30:
      v35 = v34;
      [v34 setHidden:*&v11[v15] < 4];

      swift_setDeallocating();
      swift_arrayDestroy();
      v17 = &unk_90D000;
      [v11 setNeedsLayout];
      return [v1 v17[463]];
    }

LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

  return [v1 v17[463]];
}

uint64_t sub_52EBC8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_52EC10()
{
  v1 = sub_760370();
  __chkstk_darwin(v1 - 8);
  v2 = sub_7603D0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_7602F0();
  v7 = __chkstk_darwin(v6);
  (*(v9 + 104))(&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.leading(_:), v7);
  (*(v3 + 104))(v5, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v2);
  sub_760360();
  sub_760300();
  v10 = OBJC_IVAR____TtC18ASMessagesProvider35CarouselItemCollectionLockupOverlay_materialBackground;
  *(v0 + v10) = [objc_allocWithZone(UIVisualEffectView) init];
  v11 = OBJC_IVAR____TtC18ASMessagesProvider35CarouselItemCollectionLockupOverlay_collectionArtwork;
  type metadata accessor for CollectionLockupArtwork();
  *(v0 + v11) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v12 = OBJC_IVAR____TtC18ASMessagesProvider35CarouselItemCollectionLockupOverlay_badgeLabel;
  sub_75BB20();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + v12) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v14 = OBJC_IVAR____TtC18ASMessagesProvider35CarouselItemCollectionLockupOverlay_titleLabel;
  *(v0 + v14) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v15 = OBJC_IVAR____TtC18ASMessagesProvider35CarouselItemCollectionLockupOverlay_descriptionLabel;
  *(v0 + v15) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v16 = sub_769210();
  v17 = [objc_opt_self() systemImageNamed:v16];

  if (!v17)
  {
    __break(1u);
  }

  v18 = OBJC_IVAR____TtC18ASMessagesProvider35CarouselItemCollectionLockupOverlay_chevronView;
  v19 = [objc_allocWithZone(UIImageView) initWithImage:v17];

  *(v0 + v18) = v19;
  v20 = OBJC_IVAR____TtC18ASMessagesProvider35CarouselItemCollectionLockupOverlay_tapGestureRecognizer;
  *(v0 + v20) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v21 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider35CarouselItemCollectionLockupOverlay_selectionHandler);
  *v21 = 0;
  v21[1] = 0;
  sub_76A840();
  __break(1u);
}

id sub_52EF84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_BD88(&unk_944DF0);
  __chkstk_darwin(v5 - 8);
  v97 = &v81 - v6;
  v96 = sub_7623A0();
  v93 = *(v96 - 8);
  __chkstk_darwin(v96);
  v91 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&unk_9457F0);
  v94 = *(v8 - 8);
  v95 = v8;
  __chkstk_darwin(v8);
  v92 = &v81 - v9;
  v10 = sub_BD88(&unk_948730);
  __chkstk_darwin(v10 - 8);
  v90 = &v81 - v11;
  v12 = sub_BD88(&unk_95F4E0);
  __chkstk_darwin(v12 - 8);
  v86 = &v81 - v13;
  v14 = sub_BD88(&unk_9457D0);
  __chkstk_darwin(v14 - 8);
  v85 = &v81 - v15;
  v16 = sub_BD88(&unk_9457E0);
  __chkstk_darwin(v16 - 8);
  v84 = &v81 - v17;
  v18 = sub_BD88(&unk_94A780);
  __chkstk_darwin(v18 - 8);
  v83 = &v81 - v19;
  v20 = objc_opt_self();
  v88 = [v20 areAnimationsEnabled];
  v89 = v20;
  [v20 setAnimationsEnabled:0];
  v21 = sub_757CF0();
  v22 = sub_757CE0();
  v98 = a2;
  if (v21)
  {
    v23 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallFreeOfferView_inAppPurchaseView];
    sub_75A110();
    sub_768900();

    sub_768ED0();
    sub_6A9BFC(v21, v23, *&v99[0]);

    v24 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallFreeOfferView_titleLabel];

    sub_764EF0();
    v26 = v25;

    if (v26)
    {
      v27 = sub_769210();
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v27 = 0;
    v24 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallFreeOfferView_titleLabel];
  }

  [v24 setText:v27];

  v87 = v21;
  if (v22 && (, v28 = sub_764EF0(), v30 = v29, , v30))
  {
    v31 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallFreeOfferView_parentTitleLabel];
    v100._object = 0x80000000007E6B40;
    v100._countAndFlagsBits = 0xD00000000000001FLL;
    v102._countAndFlagsBits = 0;
    v102._object = 0xE000000000000000;
    sub_75B750(v100, v102);
    sub_BD88(&unk_944E30);
    v32 = v3;
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_77B6D0;
    *(v33 + 56) = &type metadata for String;
    *(v33 + 64) = sub_FA4CC();
    *(v33 + 32) = v28;
    *(v33 + 40) = v30;
    v3 = v32;
    sub_769270();

    v34 = sub_769210();

    [v31 setText:v34];

    v35 = *&v32[OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallFreeOfferView_subtitleLabel];
  }

  else
  {
    [*&v3[OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallFreeOfferView_parentTitleLabel] setText:0];
    v35 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallFreeOfferView_subtitleLabel];
    if (!v22)
    {
      goto LABEL_12;
    }
  }

  sub_764E20();
  v37 = v36;

  if (v37)
  {
    v38 = sub_769210();

    goto LABEL_13;
  }

LABEL_12:
  v38 = 0;
LABEL_13:
  [v35 setText:v38];

  v39 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallFreeOfferView_descriptionLabel];
  sub_757CD0();
  if (v40)
  {
    v41 = sub_769210();
  }

  else
  {
    v41 = 0;
  }

  [v39 setText:v41];

  if (v22 && (, sub_764F80(), v43 = v42, , v43))
  {
    v44 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallFreeOfferView_ageRatingBadge];
    v45 = *&v44[OBJC_IVAR____TtC18ASMessagesProvider18AgeRatingBadgeView_ageLabel];
    v46 = sub_769210();
    [v45 setText:v46];

    [v44 setNeedsLayout];
    [v44 setNeedsDisplay];

    [v44 setHidden:0];
  }

  else
  {
    [*&v3[OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallFreeOfferView_ageRatingBadge] setHidden:1];
  }

  sub_BD88(&qword_959FE0);
  v47 = (sub_BD88(&qword_9453E0) - 8);
  v48 = (*(*v47 + 80) + 32) & ~*(*v47 + 80);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_77B6D0;
  v50 = v49 + v48;
  v51 = (v49 + v48 + v47[14]);
  v52 = enum case for OfferTitleType.standard(_:);
  v53 = sub_75AD00();
  (*(*(v53 - 8) + 104))(v50, v52, v53);
  v101._countAndFlagsBits = 0xD000000000000020;
  v101._object = 0x80000000007E6B10;
  v103._countAndFlagsBits = 0;
  v103._object = 0xE000000000000000;
  *v51 = sub_75B750(v101, v103);
  v51[1] = v54;
  sub_10EE30(v49);
  swift_setDeallocating();
  sub_10A2C(v50, &qword_9453E0);
  swift_deallocClassInstance();
  if (v22)
  {

    v55 = sub_764EC0();

    if (v55)
    {
      v56 = enum case for OfferStyle.colored(_:);
      v57 = sub_758C70();
      v58 = *(v57 - 8);
      v59 = *(v58 + 104);
      v82 = v3;
      v60 = v83;
      v59(v83, v56, v57);
      (*(v58 + 56))(v60, 0, 1, v57);
      v61 = sub_75BD30();
      v62 = v84;
      (*(*(v61 - 8) + 56))(v84, 1, 1, v61);
      v63 = enum case for OfferTint.blue(_:);
      v64 = sub_765870();
      v65 = *(v64 - 8);
      v66 = v85;
      (*(v65 + 104))(v85, v63, v64);
      (*(v65 + 56))(v66, 0, 1, v64);
      v67 = sub_75B490();
      v68 = v86;
      (*(*(v67 - 8) + 56))(v86, 1, 1, v67);
      memset(v99, 0, 32);
      v69 = sub_75FE10();

      sub_10A2C(v99, &unk_93FBD0);
      sub_10A2C(v68, &unk_95F4E0);
      sub_10A2C(v66, &unk_9457D0);
      sub_10A2C(v62, &unk_9457E0);
      v70 = v60;
      v3 = v82;
      sub_10A2C(v70, &unk_94A780);
    }

    else
    {

      v69 = 0;
    }

    v73 = v98;
    v86 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallFreeOfferView_offerButton];

    v71 = sub_764DB0();

    v74 = v3;
    v72 = v69;
  }

  else
  {

    v71 = 0;
    v72 = 0;
    v86 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallFreeOfferView_offerButton];
    v73 = v98;
    v74 = v3;
  }

  v75 = sub_BD88(&unk_948740);
  v76 = v90;
  (*(*(v75 - 8) + 56))(v90, 1, 1, v75);
  v77 = v93;
  v78 = v96;
  (*(v93 + 104))(v91, enum case for OfferButtonSubtitlePosition.below(_:), v96);
  (*(v77 + 56))(v97, 1, 1, v78);
  sub_BE2F8();
  v79 = v92;
  sub_760940();
  sub_1DFEBC(v72, v71, 0, v76, v79, v73, 0, 0);

  (*(v94 + 8))(v79, v95);
  sub_10A2C(v76, &unk_948730);
  [v74 setNeedsLayout];

  return [v89 setAnimationsEnabled:v88];
}

double sub_52FCC8(uint64_t *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = sub_76A920();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  type metadata accessor for InAppPurchaseShowcaseLockupView();
  sub_490F90(v14, a7);
  if (qword_93D0E0 != -1)
  {
    swift_once();
  }

  v15 = sub_766CA0();
  sub_BE38(v15, qword_954EF0);
  sub_766470();
  sub_766700();
  (*(v11 + 8))(v13, v10);
  return a2;
}

uint64_t sub_52FEFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a3;
  v4 = sub_BD88(&unk_944DF0);
  __chkstk_darwin(v4 - 8);
  v34 = &v31 - v5;
  v6 = sub_7623A0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v31 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&unk_9457F0);
  v32 = *(v9 - 8);
  v33 = v9;
  __chkstk_darwin(v9);
  v11 = &v31 - v10;
  v12 = sub_BD88(&unk_948730);
  __chkstk_darwin(v12 - 8);
  v14 = &v31 - v13;
  sub_757BC0();
  v36 = v3;
  v15 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider39InAppPurchaseShowcaseCollectionViewCell_lockupView];
  v16 = *(v15 + OBJC_IVAR____TtC18ASMessagesProvider31InAppPurchaseShowcaseLockupView_titleLabel);

  sub_764EF0();
  if (v17)
  {
    v18 = sub_769210();
  }

  else
  {
    v18 = 0;
  }

  v19 = &selRef_setSpeed_;
  [v16 setText:v18];

  v20 = *(v15 + OBJC_IVAR____TtC18ASMessagesProvider31InAppPurchaseShowcaseLockupView_subtitleLabel);
  sub_757BD0();
  if (v21)
  {
    v22 = sub_769210();
    v19 = &selRef_setSpeed_;
  }

  else
  {
    v22 = 0;
  }

  [v20 v19[511]];

  v23 = *(v15 + OBJC_IVAR____TtC18ASMessagesProvider31InAppPurchaseShowcaseLockupView_descriptionLabel);
  sub_757BB0();
  if (v24)
  {
    v25 = sub_769210();
  }

  else
  {
    v25 = 0;
  }

  [v23 v19[511]];

  v26 = *(v15 + OBJC_IVAR____TtC18ASMessagesProvider31InAppPurchaseShowcaseLockupView_offerButton);
  v27 = sub_764EC0();
  v28 = sub_764DB0();

  v29 = sub_BD88(&unk_948740);
  (*(*(v29 - 8) + 56))(v14, 1, 1, v29);
  (*(v7 + 104))(v31, enum case for OfferButtonSubtitlePosition.below(_:), v6);
  (*(v7 + 56))(v34, 1, 1, v6);
  sub_5303A8(&qword_944E20, &type metadata accessor for OfferButtonSubtitlePosition);
  sub_760940();
  sub_1DFEBC(v27, v28, 0, v14, v11, v35, 0, 0);

  (*(v32 + 8))(v11, v33);
  sub_35280C(v14);
  [v36 setNeedsLayout];
}

uint64_t sub_5303A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_5303F0()
{
  v0 = sub_764AD0();
  v1 = *(v0 + 16);

  v3 = 0;
  while (1)
  {
    if (v3 == v1)
    {
      v13 = 0;
      v3 = v1;
      v11 = 0u;
      v12 = 0u;
      goto LABEL_7;
    }

    if ((v3 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v3 >= *(v0 + 16))
    {
      goto LABEL_14;
    }

    sub_134D8(v0 + 32 + 40 * v3++, &v11);
LABEL_7:
    v9[0] = v11;
    v9[1] = v12;
    v10 = v13;
    if (!*(&v12 + 1))
    {
      return swift_bridgeObjectRelease_n();
    }

    sub_10914(v9, v8);
    sub_134D8(v8, v6);
    sub_BD88(&unk_944DA0);
    sub_757BE0();
    if ((swift_dynamicCast() & 1) == 0)
    {
      v7 = 0;
    }

    result = sub_BEB8(v8);
    if (v7)
    {
      sub_757BC0();
      v4 = sub_6AA1DC();

      v5._rawValue = v4;
      sub_75A070(v5);
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_530588@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v1 = sub_BD88(&qword_940AD0);
  __chkstk_darwin(v1 - 8);
  v47 = &v37[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v5 = &v37[-v4];
  __chkstk_darwin(v6);
  v8 = &v37[-v7];
  v9 = sub_7664A0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v37[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_75D850();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v37[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v46 = &v37[-v18];
  if (sub_769A00())
  {
    if (qword_93C440 != -1)
    {
      swift_once();
    }

    v19 = qword_946920;
  }

  else
  {
    if (qword_93C448 != -1)
    {
      swift_once();
    }

    v19 = qword_946938;
  }

  v20 = v10;
  v48 = v5;
  v21 = sub_BE38(v13, v19);
  (*(v14 + 16))(v16, v21, v13);
  v40 = v14;
  v41 = v13;
  (*(v14 + 32))(v46, v16, v13);
  v68[13] = &type metadata for Double;
  v68[14] = &protocol witness table for Double;
  v68[9] = &protocol witness table for Double;
  v68[10] = 0x4024000000000000;
  v68[8] = &type metadata for Double;
  v68[5] = 0x4000000000000000;
  if (qword_93D8D0 != -1)
  {
    swift_once();
  }

  v22 = sub_7666D0();
  v23 = sub_BE38(v22, qword_99F268);
  v39 = *(v22 - 8);
  v45 = *(v39 + 16);
  v45(v12, v23, v22);
  v24 = *(v10 + 104);
  v25 = enum case for FontSource.useCase(_:);
  v50 = v20 + 104;
  v54 = v24;
  v24(v12);
  v53 = sub_766CA0();
  v68[3] = v53;
  v68[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v68);
  v66 = v9;
  v67 = &protocol witness table for FontSource;
  v26 = sub_B1B4(v65);
  v51 = *(v20 + 16);
  v52 = v20 + 16;
  v51(v26, v12, v9);
  sub_766CB0();
  v49 = *(v20 + 8);
  v44 = v20 + 8;
  v49(v12, v9);
  v65[0] = 0x405C000000000000;
  v62[0] = 0x4044000000000000;
  sub_BD88(&qword_93FBE0);
  v42 = v8;
  sub_7592D0();
  if (qword_93D8D8 != -1)
  {
    swift_once();
  }

  v27 = sub_BE38(v22, qword_99F280);
  v45(v12, v27, v22);
  v54(v12, v25, v9);
  v66 = v53;
  v67 = &protocol witness table for StaticDimension;
  sub_B1B4(v65);
  v63 = v9;
  v64 = &protocol witness table for FontSource;
  v28 = sub_B1B4(v62);
  v51(v28, v12, v9);
  sub_766CB0();
  v49(v12, v9);
  v62[0] = 0x405C000000000000;
  v59[0] = 0x4044000000000000;
  sub_7592D0();
  if (qword_93D8C0 != -1)
  {
    swift_once();
  }

  v29 = sub_BE38(v22, qword_99F238);
  v45(v12, v29, v22);
  v54(v12, v25, v9);
  v63 = v53;
  v64 = &protocol witness table for StaticDimension;
  sub_B1B4(v62);
  v60 = v9;
  v61 = &protocol witness table for FontSource;
  v30 = sub_B1B4(v59);
  v51(v30, v12, v9);
  sub_766CB0();
  v49(v12, v9);
  v59[0] = 0x4052000000000000;
  v56[0] = 0x4034000000000000;
  v38 = v25;
  sub_7592D0();
  *v12 = UIFontTextStyleBody;
  *(v12 + 2) = 0;
  LODWORD(v45) = enum case for FontUseCase.preferredFont(_:);
  v39 = *(v39 + 104);
  (v39)(v12);
  v54(v12, v25, v9);
  v60 = v53;
  v61 = &protocol witness table for StaticDimension;
  sub_B1B4(v59);
  v57 = v9;
  v58 = &protocol witness table for FontSource;
  v31 = sub_B1B4(v56);
  v51(v31, v12, v9);
  v32 = UIFontTextStyleBody;
  sub_766CB0();
  v33 = v49;
  v49(v12, v9);
  v34 = v46;
  sub_75D800();
  sub_75D830();
  *v12 = v32;
  *(v12 + 2) = 0;
  (v39)(v12, v45, v22);
  v54(v12, v38, v9);
  v57 = v53;
  v58 = &protocol witness table for StaticDimension;
  sub_B1B4(v56);
  v55[3] = v9;
  v55[4] = &protocol witness table for FontSource;
  v35 = sub_B1B4(v55);
  v51(v35, v12, v9);
  sub_766CB0();
  v33(v12, v9);
  sub_763350();
  return (*(v40 + 8))(v34, v41);
}

void sub_530E98(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC18ASMessagesProvider30InstallPageInstallingOfferView_animationCompletionHandler);
  v4 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider30InstallPageInstallingOfferView_animationCompletionHandler);
  *v3 = a1;
  v3[1] = a2;
  sub_F704(v4);
  v5 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider30InstallPageInstallingOfferView_progressView);
  if (v5)
  {
    v6 = *v3;
    v7 = v3[1];
    v8 = &v5[OBJC_IVAR____TtC18ASMessagesProvider19InstallProgressView_completionHandler];
    v9 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider19InstallProgressView_completionHandler];
    *v8 = v6;
    v8[1] = v7;
    v10 = v5;
    sub_F714(v6);
    sub_F704(v9);
  }
}

char *sub_530F58(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_760AD0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v14 - 8);
  v16 = &v46 - v15;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider30InstallPageInstallingOfferView_progressView] = 0;
  v17 = &v4[OBJC_IVAR____TtC18ASMessagesProvider30InstallPageInstallingOfferView_animationCompletionHandler];
  sub_759210();
  *v17 = 0;
  *(v17 + 1) = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider30InstallPageInstallingOfferView_iconView] = sub_759020();
  if (qword_93D8D0 != -1)
  {
    swift_once();
  }

  v18 = sub_7666D0();
  v19 = sub_BE38(v18, qword_99F268);
  v20 = *(v18 - 8);
  v51 = *(v20 + 16);
  v51(v16, v19, v18);
  v50 = *(v20 + 56);
  v50(v16, 0, 1, v18);
  v21 = enum case for DirectionalTextAlignment.none(_:);
  v49 = *(v11 + 104);
  v49(v13, enum case for DirectionalTextAlignment.none(_:), v10);
  v22 = sub_75BB20();
  v48 = v10;
  v23 = v22;
  v24 = objc_allocWithZone(v22);
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider30InstallPageInstallingOfferView_titleLabel] = sub_75BB10();
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider30InstallPageInstallingOfferView_ageRatingView] = [objc_allocWithZone(type metadata accessor for AgeRatingBadgeView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (qword_93D8D8 != -1)
  {
    swift_once();
  }

  v25 = sub_BE38(v18, qword_99F280);
  v51(v16, v25, v18);
  v50(v16, 0, 1, v18);
  v49(v13, v21, v48);
  v26 = objc_allocWithZone(v23);
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider30InstallPageInstallingOfferView_subtitleLabel] = sub_75BB10();
  if (qword_93D8C0 != -1)
  {
    swift_once();
  }

  v27 = sub_BE38(v18, qword_99F238);
  v51(v16, v27, v18);
  v50(v16, 0, 1, v18);
  v49(v13, v21, v48);
  v28 = objc_allocWithZone(v23);
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider30InstallPageInstallingOfferView_descriptionLabel] = sub_75BB10();
  v29 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider30InstallPageInstallingOfferView_offerButton] = sub_1DD00C(0);
  v52.receiver = v5;
  v52.super_class = ObjectType;
  v30 = objc_msgSendSuper2(&v52, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v34 = v30;
  [v34 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v34 setScrollEnabled:1];
  [v34 setTranslatesAutoresizingMaskIntoConstraints:0];
  v35 = OBJC_IVAR____TtC18ASMessagesProvider30InstallPageInstallingOfferView_descriptionLabel;
  [*&v34[OBJC_IVAR____TtC18ASMessagesProvider30InstallPageInstallingOfferView_descriptionLabel] setTextAlignment:1];
  v36 = OBJC_IVAR____TtC18ASMessagesProvider30InstallPageInstallingOfferView_titleLabel;
  [*&v34[OBJC_IVAR____TtC18ASMessagesProvider30InstallPageInstallingOfferView_titleLabel] setTextAlignment:1];
  v37 = OBJC_IVAR____TtC18ASMessagesProvider30InstallPageInstallingOfferView_subtitleLabel;
  [*&v34[OBJC_IVAR____TtC18ASMessagesProvider30InstallPageInstallingOfferView_subtitleLabel] setTextAlignment:1];
  v38 = *&v34[v35];
  sub_396E8();
  v39 = v38;
  v40 = sub_769FF0();
  [v39 setTextColor:v40];

  v41 = *&v34[v36];
  v42 = sub_769FD0();
  [v41 setTextColor:v42];

  v43 = *&v34[v37];
  v44 = sub_769FE0();
  [v43 setTextColor:v44];

  [v34 addSubview:*&v34[OBJC_IVAR____TtC18ASMessagesProvider30InstallPageInstallingOfferView_iconView]];
  [v34 addSubview:*&v34[v35]];
  [v34 addSubview:*&v34[v36]];
  [v34 addSubview:*&v34[v37]];
  [v34 addSubview:*&v34[OBJC_IVAR____TtC18ASMessagesProvider30InstallPageInstallingOfferView_offerButton]];
  [v34 addSubview:*&v34[OBJC_IVAR____TtC18ASMessagesProvider30InstallPageInstallingOfferView_ageRatingView]];

  return v34;
}

id sub_53166C(double a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC18ASMessagesProvider30InstallPageInstallingOfferView_progressView;
  v5 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider30InstallPageInstallingOfferView_progressView];
  if (v5)
  {
    goto LABEL_2;
  }

  v10 = [objc_allocWithZone(type metadata accessor for InstallProgressView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v11 = *&v2[v4];
  if (v11)
  {
    [v11 removeFromSuperview];
    v12 = *&v2[v4];
  }

  else
  {
    v12 = 0;
  }

  *&v2[v4] = v10;
  v13 = v10;

  if (v13)
  {
    [v2 addSubview:v13];
  }

  [v2 setNeedsLayout];

  v14 = *&v2[v4];
  if (v14)
  {
    v15 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider30InstallPageInstallingOfferView_animationCompletionHandler];
    v16 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider30InstallPageInstallingOfferView_animationCompletionHandler + 8];
    v17 = &v14[OBJC_IVAR____TtC18ASMessagesProvider19InstallProgressView_completionHandler];
    v18 = *&v14[OBJC_IVAR____TtC18ASMessagesProvider19InstallProgressView_completionHandler];
    *v17 = v15;
    v17[1] = v16;
    v19 = v14;
    sub_F714(v15);
    sub_F704(v18);

    v20 = *&v2[v4];
    if (v20)
    {
      [v20 setClipsToBounds:1];
      v5 = *&v2[v4];
      if (v5)
      {
LABEL_2:
        v6 = v5;
        sub_75CD30();
        [v6 _setCornerRadius:?];

        v7 = *&v2[v4];
        if (v7)
        {
          v8 = *&v7[OBJC_IVAR____TtC18ASMessagesProvider19InstallProgressView_progress];
          *&v7[OBJC_IVAR____TtC18ASMessagesProvider19InstallProgressView_progress] = a1;
          v9 = v7;
          sub_5E65E8(v8);
        }
      }
    }
  }

  return [v2 setNeedsLayout];
}

uint64_t sub_531838(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider30InstallPageInstallingOfferView_offerButton);
  sub_38EE0(a1, v13);
  v5 = v14;
  if (v14)
  {
    v6 = sub_B170(v13, v14);
    v7 = *(v5 - 8);
    v8 = __chkstk_darwin(v6);
    v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_76A930();
    (*(v7 + 8))(v10, v5);
    sub_BEB8(v13);
  }

  else
  {
    v11 = 0;
  }

  [v4 addTarget:v11 action:a2 forControlEvents:64];
  return swift_unknownObjectRelease();
}

uint64_t sub_531990(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider30InstallPageInstallingOfferView_offerButton);
  sub_38EE0(a1, v11);
  v3 = v12;
  if (v12)
  {
    v4 = sub_B170(v11, v12);
    v5 = *(v3 - 8);
    v6 = __chkstk_darwin(v4);
    v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = sub_76A930();
    (*(v5 + 8))(v8, v3);
    sub_BEB8(v11);
  }

  else
  {
    v9 = 0;
  }

  [v2 removeTarget:v9 action:0 forControlEvents:64];
  return swift_unknownObjectRelease();
}

double sub_531ADC()
{
  v1 = sub_763370();
  __chkstk_darwin(v1 - 8);
  v3 = v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_763390();
  v30 = *(v4 - 8);
  v31 = v4;
  *&v5 = __chkstk_darwin(v4).n128_u64[0];
  v29[0] = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 traitCollection];
  v29[1] = v3;
  sub_530588(v3);

  v8 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider30InstallPageInstallingOfferView_iconView];
  v53 = sub_759210();
  v54 = &protocol witness table for UIView;
  v52 = v8;
  v9 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider30InstallPageInstallingOfferView_progressView];
  if (v9)
  {
    v10 = type metadata accessor for InstallProgressView();
    v11 = &protocol witness table for UIView;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v48 = 0;
    v49 = 0;
  }

  v47 = v9;
  v50 = v10;
  v51 = v11;
  v12 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider30InstallPageInstallingOfferView_titleLabel];
  v45 = sub_75BB20();
  v46 = &protocol witness table for UILabel;
  v43 = &protocol witness table for UILabel;
  v44 = v12;
  v13 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider30InstallPageInstallingOfferView_subtitleLabel];
  v42 = v45;
  v40 = &protocol witness table for UILabel;
  v41 = v13;
  v14 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider30InstallPageInstallingOfferView_descriptionLabel];
  v39 = v45;
  v38 = v14;
  v15 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider30InstallPageInstallingOfferView_ageRatingView];
  v36 = type metadata accessor for AgeRatingBadgeView();
  v37 = &protocol witness table for UIView;
  v35 = v15;
  v16 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider30InstallPageInstallingOfferView_offerButton];
  v33 = type metadata accessor for OfferButton();
  v34 = &protocol witness table for UIView;
  v32 = v16;
  v17 = v8;
  v18 = v9;
  v19 = v12;
  v20 = v13;
  v21 = v14;
  v22 = v15;
  v23 = v16;
  v24 = v29[0];
  sub_763380();
  sub_532288();
  v25 = v31;
  sub_7665A0();
  v27 = v26;
  (*(v30 + 8))(v24, v25);
  return v27;
}

uint64_t sub_531DE4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_7664F0();
  v36 = *(v3 - 8);
  v37 = v3;
  __chkstk_darwin(v3);
  v35 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_763370();
  __chkstk_darwin(v5 - 8);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_763390();
  v33 = *(v8 - 8);
  v34 = v8;
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v32[0] = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61.receiver = v1;
  v61.super_class = ObjectType;
  v32[2] = ObjectType;
  objc_msgSendSuper2(&v61, "layoutSubviews", v9);
  v11 = [v1 traitCollection];
  v32[1] = v7;
  sub_530588(v7);

  v12 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider30InstallPageInstallingOfferView_iconView];
  v59 = sub_759210();
  v60 = &protocol witness table for UIView;
  v58 = v12;
  v13 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider30InstallPageInstallingOfferView_progressView];
  if (v13)
  {
    v14 = type metadata accessor for InstallProgressView();
    v15 = &protocol witness table for UIView;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v54 = 0;
    v55 = 0;
  }

  v53 = v13;
  v56 = v14;
  v57 = v15;
  v16 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider30InstallPageInstallingOfferView_titleLabel];
  v51 = sub_75BB20();
  v52 = &protocol witness table for UILabel;
  v49 = &protocol witness table for UILabel;
  v50 = v16;
  v17 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider30InstallPageInstallingOfferView_subtitleLabel];
  v48 = v51;
  v46 = &protocol witness table for UILabel;
  v47 = v17;
  v18 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider30InstallPageInstallingOfferView_descriptionLabel];
  v45 = v51;
  v44 = v18;
  v19 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider30InstallPageInstallingOfferView_ageRatingView];
  v42 = type metadata accessor for AgeRatingBadgeView();
  v43 = &protocol witness table for UIView;
  v41 = v19;
  v20 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider30InstallPageInstallingOfferView_offerButton];
  v39 = type metadata accessor for OfferButton();
  v40 = &protocol witness table for UIView;
  v38 = v20;
  v21 = v12;
  v22 = v13;
  v23 = v16;
  v24 = v17;
  v25 = v18;
  v26 = v19;
  v27 = v20;
  v28 = v32[0];
  sub_763380();
  sub_75D650();
  v29 = v35;
  sub_763340();
  [v1 frame];
  Width = CGRectGetWidth(v62);
  sub_7664D0();
  [v1 setContentSize:Width];
  (*(v36 + 8))(v29, v37);
  return (*(v33 + 8))(v28, v34);
}

unint64_t sub_532288()
{
  result = qword_95A0A0;
  if (!qword_95A0A0)
  {
    sub_763390();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95A0A0);
  }

  return result;
}

char *sub_5322E0(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider24InfiniteScrollFooterView_activityIndicator] = v10;
  v18.receiver = v4;
  v18.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v18, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v15 = v11;
  [v15 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  sub_396E8();
  v16 = sub_76A000();
  [v15 setBackgroundColor:v16];

  [v15 addSubview:*&v15[OBJC_IVAR____TtC18ASMessagesProvider24InfiniteScrollFooterView_activityIndicator]];
  return v15;
}

void sub_53288C(void *a1, uint64_t a2, void *a3, const char **a4)
{
  v9.receiver = a1;
  v9.super_class = swift_getObjectType();
  v6 = *a4;
  v7 = v9.receiver;
  v8 = a3;
  objc_msgSendSuper2(&v9, v6, v8);
  if (v8)
  {
  }

  else
  {
    [*&v7[OBJC_IVAR____TtC18ASMessagesProvider24InfiniteScrollFooterView_activityIndicator] stopAnimating];
  }
}

uint64_t sub_53294C()
{
  v0 = sub_BD88(&qword_940A60);
  __chkstk_darwin(v0 - 8);
  v40 = &v34 - v1;
  v42 = sub_765610();
  v49 = *(v42 - 8);
  __chkstk_darwin(v42);
  v3 = (&v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_BD88(&qword_940A68);
  __chkstk_darwin(v4 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v34 - v8;
  __chkstk_darwin(v10);
  v12 = &v34 - v11;
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  sub_BD88(&qword_940A70);
  v16 = *(sub_765540() - 8);
  v48 = *(v16 + 72);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  v39 = v18;
  *(v18 + 16) = xmmword_780120;
  v46 = v18 + v17;
  v50 = 0x3FF0000000000000;
  v51 = 0x3FF8000000000000;
  sub_62634();
  sub_7655B0();
  v50 = 0x4030000000000000;
  v51 = 0x4020000000000000;
  sub_7655B0();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_7655B0();
  __asm { FMOV            V0.2D, #16.0 }

  *v3 = _Q0;
  v45 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v24 = *(v49 + 104);
  v49 += 104;
  v47 = v24;
  v25 = v42;
  v24(v3);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v51) = 0;
  sub_7655D0();
  v51 = 0;
  v44 = v6;
  sub_7655D0();
  v41 = v15;
  v43 = v12;
  sub_765500();
  v50 = 0x3FF0000000000000;
  v51 = 0x3FF8000000000000;
  sub_7655B0();
  v50 = 0x4034000000000000;
  v51 = 0x4024000000000000;
  sub_7655B0();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_7655B0();
  __asm { FMOV            V0.2D, #20.0 }

  *v3 = _Q0;
  v47(v3, v45, v25);
  LOBYTE(v51) = 0;
  sub_7655D0();
  v51 = 0;
  sub_7655D0();
  v28 = v48;
  top = UIEdgeInsetsZero.top;
  v38 = left;
  sub_765500();
  v51 = 0x4008000000000000;
  sub_7655D0();
  v51 = 0x4034000000000000;
  sub_7655D0();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_7655B0();
  v36 = vdupq_n_s64(0x4041000000000000uLL);
  *v3 = v36;
  v29 = v42;
  v30 = v47;
  v47(v3, v45, v42);
  LOBYTE(v51) = 0;
  sub_7655D0();
  v51 = 0;
  sub_7655D0();
  sub_765500();
  v35 = 2 * v28 + v48;
  v51 = 0x4010000000000000;
  sub_7655D0();
  v51 = 0x4034000000000000;
  sub_7655D0();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_7655B0();
  *v3 = v36;
  v30(v3, v45, v29);
  sub_7697A0();
  LOBYTE(v51) = 0;
  sub_7655D0();
  v51 = 0;
  sub_7655D0();
  v34 = v9;
  sub_765500();
  v35 = 4 * v48;
  v51 = 0x4014000000000000;
  sub_7655D0();
  v51 = 0x4038000000000000;
  sub_7655D0();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_7655B0();
  v36 = vdupq_n_s64(0x404A000000000000uLL);
  *v3 = v36;
  v31 = v45;
  v32 = v42;
  v47(v3, v45, v42);
  LOBYTE(v51) = 0;
  sub_7655D0();
  v51 = 0;
  sub_7655D0();
  sub_765500();
  v51 = 0x4018000000000000;
  sub_7655D0();
  v51 = 0x4038000000000000;
  sub_7655D0();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_7655B0();
  *v3 = v36;
  v47(v3, v31, v32);
  LOBYTE(v51) = 0;
  sub_7655D0();
  v51 = 0;
  sub_7655D0();
  result = sub_765500();
  qword_95A0D8 = v39;
  return result;
}

uint64_t sub_533488()
{
  v1 = sub_7664F0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_75BDF0();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for IconGridView();
  v10.receiver = v0;
  v10.super_class = v6;
  objc_msgSendSuper2(&v10, "layoutSubviews");
  sub_75D650();
  sub_5336C0();
  sub_75BDE0();
  swift_beginAccess();

  sub_140EDC(v7);

  sub_75BE10();
  swift_allocObject();
  sub_75BE00();
  sub_75D650();
  sub_75BDC0();

  return (*(v2 + 8))(v4, v1);
}

void sub_5336C0()
{
  v1 = v0;
  v2 = sub_75BDF0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75BE10();
  sub_75BDE0();
  v6 = sub_75BDD0();
  (*(v3 + 8))(v5, v2);
  v7 = OBJC_IVAR____TtC18ASMessagesProvider12IconGridView_artworkViews;
  swift_beginAccess();
  v8 = *&v0[v7];
  if (v8 >> 62)
  {
    if (sub_76A860() == v6)
    {
      return;
    }
  }

  else if (*(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)) == v6)
  {
    return;
  }

  v9 = *&v0[v7];
  if (v9 >> 62)
  {
    v10 = sub_76A860();
    if (!v10)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v10 = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8));
    if (!v10)
    {
      goto LABEL_12;
    }
  }

  if (v10 < 1)
  {
LABEL_31:
    __break(1u);
    return;
  }

  v11 = 0;
  do
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v12 = sub_76A770();
    }

    else
    {
      v12 = *(v9 + 8 * v11 + 32);
    }

    v13 = v12;
    ++v11;
    v23 = v12;
    swift_beginAccess();
    sub_BD88(&qword_94F910);
    sub_767470();
    swift_endAccess();
  }

  while (v10 != v11);

LABEL_12:
  *&v0[v7] = _swiftEmptyArrayStorage;

  if (v6 < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  for (; v6; --v6)
  {
    swift_beginAccess();
    sub_BD88(&qword_94F910);
    sub_767450();
    swift_endAccess();
    v14 = v23;
    swift_beginAccess();
    v15 = v14;
    sub_769440();
    if (*(&dword_10 + (*(v1 + v7) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v1 + v7) & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_7694C0();
    }

    sub_769500();
    swift_endAccess();
    v16 = [v15 superview];
    if (!v16 || (v17 = v16, sub_2630C(), v18 = v1, v19 = sub_76A1C0(), v17, v18, (v19 & 1) == 0))
    {
      [v1 addSubview:v15];
    }
  }

  v20 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider12IconGridView_impressionableArtworks);
  if (v20)
  {
    v21 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider12IconGridView_artworkLoader);
    if (v21)
    {

      sub_533B34(v20, v21);
    }
  }
}

uint64_t sub_533B00@<X0>(uint64_t *a1@<X8>)
{
  sub_759210();
  result = sub_759020();
  *a1 = result;
  return result;
}

uint64_t sub_533B34(unint64_t a1, uint64_t a2)
{
  v4 = sub_7652D0();
  __chkstk_darwin(v4 - 8);
  v5 = OBJC_IVAR____TtC18ASMessagesProvider12IconGridView_artworkViews;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (v6 >> 62)
  {
    goto LABEL_41;
  }

  result = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
  if (result)
  {
    while (1)
    {
      v22 = a1 >> 62;
      result = a1 >> 62 ? sub_76A860() : *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
      v5 = *(v2 + v5);
      v8 = v5 >> 62;
      if (!result)
      {
        break;
      }

      if (v8)
      {
        v9 = sub_76A860();
      }

      else
      {
        v9 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
      }

      if (!v9)
      {
      }

      v10 = 0;
      v11 = a1 & 0xFFFFFFFFFFFFFF8;
      v21 = a1 & 0xC000000000000001;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v12 = sub_76A770();
        }

        else
        {
          if (v10 >= *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_37;
          }

          v12 = *(v5 + 8 * v10 + 32);
        }

        v13 = v12;
        a1 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v22)
        {
          v14 = sub_76A860();
        }

        else
        {
          v14 = *(v11 + 16);
        }

        if (!v14)
        {
          goto LABEL_38;
        }

        v15 = v10 % v14;
        if (v21)
        {
          sub_76A770();
        }

        else
        {
          if ((v15 & 0x8000000000000000) != 0)
          {
            goto LABEL_39;
          }

          if (v15 >= *(v11 + 16))
          {
            goto LABEL_40;
          }
        }

        sub_75F470();

        sub_765320();
        sub_7652E0();
        sub_7591B0();
        sub_759210();
        sub_14FA38();
        v2 = a2;
        sub_75A050();

        ++v10;
        if (a1 == v9)
        {
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      result = sub_76A860();
      if (!result)
      {
        return result;
      }
    }

    if (v8)
    {
      result = sub_76A860();
      v16 = result;
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v16 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
      if (!v16)
      {
        return result;
      }
    }

    if (v16 >= 1)
    {

      v17 = 0;
      do
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v18 = sub_76A770();
        }

        else
        {
          v18 = *(v5 + 8 * v17 + 32);
        }

        v20 = v18;
        ++v17;
        v24.value.super.isa = 0;
        v24.is_nil = 1;
        sub_759140(v24, v19);
      }

      while (v16 != v17);
    }

    __break(1u);
  }

  return result;
}

id sub_533EA8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IconGridView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for IconGridView()
{
  result = qword_95A120;
  if (!qword_95A120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_533FDC()
{
  sub_31D080();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_5340A0()
{
  sub_5AAA8(v0 + 16);
  sub_3A63C(v0 + OBJC_IVAR____TtC18ASMessagesProvider35TodayCardCollectionElementsObserver_selectedItemLayoutContext);
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TodayCardCollectionElementsObserver()
{
  result = qword_95A158;
  if (!qword_95A158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_534170()
{
  sub_1EA64();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_53422C(void *a1)
{
  swift_getObjectType();
  v2 = swift_conformsToProtocol2();
  if (v2 && a1)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 16);
    v6 = a1;
    v5(0, ObjectType, v3);
  }

  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result && a1)
  {

    return [a1 setHidden:0];
  }

  return result;
}

uint64_t sub_534318(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_BD88(&unk_93F620);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result && a1)
  {
    sub_765B70();
    sub_534CB8(&qword_94CAB0, &type metadata accessor for TodayCard);
    result = sub_75C770();
    if (result)
    {
      v10 = sub_75C840();
      v11 = *(v10 - 8);
      (*(v11 + 16))(v8, a2, v10);
      (*(v11 + 56))(v8, 0, 1, v10);
      v12 = OBJC_IVAR____TtC18ASMessagesProvider35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
      swift_beginAccess();
      sub_1792C(v8, v3 + v12);
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_534574()
{
  sub_BD88(&qword_941B08);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_77B6D0;
  v2 = sub_534CB8(&qword_95A298, type metadata accessor for TodayCardCollectionElementsObserver);
  *(v1 + 32) = v0;
  *(v1 + 40) = v2;

  return v1;
}

void sub_53464C(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = swift_conformsToProtocol2();
  if (v4 && a1)
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 16);
    v8 = a1;
    v7(1, ObjectType, v5);
  }

  swift_getObjectType();
  v9 = swift_conformsToProtocol2();
  if (v9 && a1)
  {
    v10 = v9;
    sub_765B70();
    sub_534CB8(&qword_94CAB0, &type metadata accessor for TodayCard);
    v11 = a1;
    sub_75C750();
    if (v13)
    {
      v12 = swift_getObjectType();
      (*(v10 + 192))(*(v2 + OBJC_IVAR____TtC18ASMessagesProvider35TodayCardCollectionElementsObserver_isMotionEnabled), v12, v10);
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        if (sub_765A70())
        {
          sub_75E5C0();
        }

        swift_getObjectType();
        sub_75D990();
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_534868(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_765B70();
    sub_534CB8(&qword_94CAB0, &type metadata accessor for TodayCard);
    if (sub_75C770())
    {
      v3 = objc_opt_self();
      v4 = swift_allocObject();
      *(v4 + 16) = a1;
      *(v4 + 24) = 0x3FEEB851EB851EB8;
      v13 = sub_534ADC;
      v14 = v4;
      aBlock = _NSConcreteStackBlock;
      v10 = 1107296256;
      v11 = sub_23F0CC;
      v12 = &unk_895F08;
      v5 = _Block_copy(&aBlock);
      v6 = a1;

      v13 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
      v14 = 0;
      aBlock = _NSConcreteStackBlock;
      v10 = 1107296256;
      v11 = sub_3D6D80;
      v12 = &unk_895F30;
      v7 = _Block_copy(&aBlock);
      [v3 _animateUsingDefaultDampedSpringWithDelay:135 initialSpringVelocity:v5 options:v7 animations:0.0 completion:1.0];
      _Block_release(v7);
      _Block_release(v5);

      swift_unknownObjectWeakAssign();
    }

    else
    {
    }
  }
}

uint64_t sub_534AA4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_534AE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_534B00(uint64_t a1, uint64_t (*a2)(), uint64_t a3, uint64_t a4)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        v11 = v10;
        v16 = objc_opt_self();
        v12 = swift_allocObject();
        *(v12 + 16) = v11;
        *(v12 + 24) = 0x3FF0000000000000;
        v21 = a2;
        v22 = v12;
        aBlock = _NSConcreteStackBlock;
        v18 = 1107296256;
        v19 = sub_23F0CC;
        v20 = a3;
        v13 = _Block_copy(&aBlock);
        v14 = v11;

        v21 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
        v22 = 0;
        aBlock = _NSConcreteStackBlock;
        v18 = 1107296256;
        v19 = sub_3D6D80;
        v20 = a4;
        v15 = _Block_copy(&aBlock);
        [v16 _animateUsingDefaultDampedSpringWithDelay:135 initialSpringVelocity:v13 options:v15 animations:0.0 completion:1.0];
        _Block_release(v15);
        _Block_release(v13);
      }

      else
      {
      }
    }

    return swift_unknownObjectWeakAssign();
  }

  return result;
}

uint64_t sub_534CB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_534D44@<X0>(_BYTE *a1@<X8>)
{
  result = sub_764B10();
  *a1 = result & 1;
  return result;
}

uint64_t sub_534D74@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_7664A0();
  v30 = *(v4 - 8);
  v31 = v4;
  __chkstk_darwin(v4);
  v6 = (&v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_764930();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_BD88(&unk_94F1F0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v29 - v13;
  v29 = a1;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  (*(v12 + 8))(v14, v11);
  v15 = (*(v8 + 88))(v10, v7);
  if (v15 == enum case for Shelf.ContentType.mediumAdLockupWithScreenshotsBackground(_:) || v15 == enum case for Shelf.ContentType.condensedAdLockupWithIconBackground(_:))
  {
    if (qword_93DCE0 != -1)
    {
      swift_once();
    }

    v17 = sub_766CA0();
    v18 = v17;
    v19 = qword_99FDE8;
    goto LABEL_9;
  }

  if (v15 == enum case for Shelf.ContentType.singleColumnList(_:) || v15 == enum case for Shelf.ContentType.twoColumnList(_:))
  {
    if (qword_93D1B0 == -1)
    {
      goto LABEL_19;
    }

    goto LABEL_25;
  }

  if (v15 == enum case for Shelf.ContentType.scrollablePill(_:))
  {
    if (qword_93D1B0 == -1)
    {
LABEL_19:
      v24 = qword_99DD30;
      *v6 = qword_99DD30;
      v26 = v30;
      v25 = v31;
      (*(v30 + 104))(v6, enum case for FontSource.textStyle(_:), v31);
      a2[3] = sub_766CA0();
      a2[4] = &protocol witness table for StaticDimension;
      sub_B1B4(a2);
      v32[3] = v25;
      v32[4] = &protocol witness table for FontSource;
      v27 = sub_B1B4(v32);
      (*(v26 + 16))(v27, v6, v25);
      v28 = v24;
      sub_766CB0();
      return (*(v26 + 8))(v6, v25);
    }

LABEL_25:
    swift_once();
    goto LABEL_19;
  }

  if (v15 == enum case for Shelf.ContentType.unifiedMessage(_:))
  {
    if (qword_93DD00 != -1)
    {
      swift_once();
    }

    v17 = sub_766CA0();
    v18 = v17;
    v19 = qword_99FE48;
LABEL_9:
    v20 = sub_BE38(v17, v19);
    a2[3] = v18;
    a2[4] = &protocol witness table for StaticDimension;
    v21 = sub_B1B4(a2);
    return (*(*(v18 - 8) + 16))(v21, v20, v18);
  }

  sub_9A330(v29, a2);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_5352B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v122 = a2;
  v116 = sub_7664A0();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v114 = (&v99 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_BD88(&qword_963790);
  __chkstk_darwin(v4 - 8);
  v108 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v112 = &v99 - v7;
  __chkstk_darwin(v8);
  v10 = &v99 - v9;
  __chkstk_darwin(v11);
  v109 = &v99 - v12;
  __chkstk_darwin(v13);
  v15 = &v99 - v14;
  __chkstk_darwin(v16);
  v18 = &v99 - v17;
  v117 = sub_764930();
  v119 = *(v117 - 8);
  __chkstk_darwin(v117);
  v105 = &v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v106 = &v99 - v21;
  __chkstk_darwin(v22);
  v103 = &v99 - v23;
  __chkstk_darwin(v24);
  v104 = &v99 - v25;
  __chkstk_darwin(v26);
  v110 = &v99 - v27;
  __chkstk_darwin(v28);
  v111 = &v99 - v29;
  __chkstk_darwin(v30);
  v118 = &v99 - v31;
  v32 = sub_BD88(&unk_94F1F0);
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v107 = &v99 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v37 = &v99 - v36;
  __chkstk_darwin(v38);
  v113 = &v99 - v39;
  __chkstk_darwin(v40);
  v42 = &v99 - v41;
  __chkstk_darwin(v43);
  v45 = &v99 - v44;
  v121 = a1;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v46 = *(v33 + 8);
  v120 = v32;
  v46(v45, v32);
  if (!*(v123 + 16))
  {

    v127 = 0u;
    v128 = 0u;
    v129 = 0;
    goto LABEL_10;
  }

  v102 = v46;
  sub_134D8(v123 + 32, &v124);

  sub_BD88(&unk_944DA0);
  sub_BD88(&unk_952540);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v129 = 0;
    v127 = 0u;
    v128 = 0u;
    goto LABEL_10;
  }

  if (!*(&v128 + 1))
  {
LABEL_10:
    result = sub_10A2C(&v127, &unk_9513E0);
LABEL_11:
    v55 = v122;
    v122[3] = &type metadata for Double;
    v55[4] = &protocol witness table for Double;
    *v55 = 0;
    return result;
  }

  sub_10914(&v127, v130);
  sub_B170(v130, v130[3]);
  if ((sub_762A20() & 1) == 0)
  {
    result = sub_BEB8(v130);
    goto LABEL_11;
  }

  v100 = v37;
  sub_75DAA0();
  swift_getKeyPath();
  v47 = v118;
  v48 = v120;
  sub_768750();

  v49 = v42;
  v50 = v48;
  v101 = v33 + 8;
  v102(v49, v48);
  v51 = v119;
  v52 = v117;
  v53 = (*(v119 + 88))(v47, v117);
  if (v53 != enum case for Shelf.ContentType.mediumAdLockupWithScreenshotsBackground(_:))
  {
    v56 = (v33 + 48);
    if (v53 == enum case for Shelf.ContentType.condensedAdLockupWithIconBackground(_:))
    {
      v57 = v109;
      sub_75DA50();
      sub_10A2C(v10, &qword_963790);
      if ((*v56)(v57, 1, v50) == 1)
      {
        sub_10A2C(v57, &qword_963790);
        goto LABEL_31;
      }

      v58 = v100;
      (*(v33 + 32))(v100, v57, v50);
      swift_getKeyPath();
      v67 = v104;
      sub_768750();

      v68 = v103;
      (*(v51 + 104))(v103, enum case for Shelf.ContentType.unifiedMessage(_:), v52);
      sub_15E76C();
      sub_769430();
      sub_769430();
      if (v127 == v124)
      {
        v69 = *(v51 + 8);
        v69(v68, v52);
        v69(v67, v52);
      }

      else
      {
        v74 = v51;
        v75 = sub_76A950();
        v76 = *(v74 + 8);
        v76(v68, v52);
        v76(v67, v52);
        v50 = v120;

        if ((v75 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      swift_getKeyPath();
      sub_768750();

      if ((v127 & 1) == 0)
      {
        goto LABEL_36;
      }

LABEL_30:
      v102(v58, v50);
      goto LABEL_31;
    }

    v62 = v112;
    v63 = v108;
    sub_75DA50();
    sub_10A2C(v63, &qword_963790);
    if ((*v56)(v62, 1, v50) == 1)
    {
      sub_10A2C(v62, &qword_963790);
LABEL_40:
      v94 = v114;
      *v114 = UIFontTextStyleBody;
      v95 = v115;
      v96 = v116;
      (*(v115 + 104))(v94, enum case for FontSource.textStyle(_:), v116);
      v125 = sub_766CA0();
      v126 = &protocol witness table for StaticDimension;
      sub_B1B4(&v124);
      *(&v128 + 1) = v96;
      v129 = &protocol witness table for FontSource;
      v97 = sub_B1B4(&v127);
      (*(v95 + 16))(v97, v94, v96);
      v98 = UIFontTextStyleBody;
      sub_766CB0();
      (*(v95 + 8))(v94, v96);
      goto LABEL_41;
    }

    v70 = v107;
    (*(v33 + 32))(v107, v62, v50);
    swift_getKeyPath();
    v71 = v106;
    sub_768750();

    v72 = v105;
    (*(v51 + 104))(v105, enum case for Shelf.ContentType.unifiedMessage(_:), v52);
    sub_15E76C();
    sub_769430();
    sub_769430();
    if (v127 == v124)
    {
      v73 = *(v51 + 8);
      v73(v72, v52);
      v73(v71, v52);
    }

    else
    {
      v82 = v51;
      v83 = sub_76A950();
      v84 = *(v82 + 8);
      v84(v72, v52);
      v84(v71, v52);

      if ((v83 & 1) == 0)
      {
        v86 = v70;
        v87 = v120;
LABEL_39:
        v102(v86, v87);
        goto LABEL_40;
      }
    }

    swift_getKeyPath();
    v85 = v120;
    sub_768750();

    if ((v127 & 1) == 0)
    {
      v125 = &type metadata for CGFloat;
      v126 = &protocol witness table for CGFloat;
      *&v124 = 0x4020000000000000;
      v102(v70, v85);
LABEL_41:
      sub_10914(&v124, &v127);
      (*(v119 + 8))(v118, v52);
      goto LABEL_42;
    }

    v86 = v70;
    v87 = v85;
    goto LABEL_39;
  }

  sub_75DA50();
  sub_10A2C(v15, &qword_963790);
  if ((*(v33 + 48))(v18, 1, v50) != 1)
  {
    v58 = v113;
    (*(v33 + 32))(v113, v18, v50);
    swift_getKeyPath();
    v59 = v111;
    sub_768750();

    v60 = v110;
    (*(v51 + 104))(v110, enum case for Shelf.ContentType.unifiedMessage(_:), v52);
    sub_15E76C();
    sub_769430();
    sub_769430();
    if (v127 == v124)
    {
      v61 = *(v51 + 8);
      v61(v60, v52);
      v61(v59, v52);

      goto LABEL_21;
    }

    v64 = v51;
    v65 = sub_76A950();
    v66 = *(v64 + 8);
    v66(v60, v52);
    v66(v59, v52);
    v50 = v120;

    if (v65)
    {
LABEL_21:
      swift_getKeyPath();
      sub_768750();

      if (v127)
      {
        goto LABEL_30;
      }

LABEL_36:
      v88 = v114;
      *v114 = UIFontTextStyleBody;
      v89 = v50;
      v90 = v115;
      v91 = v116;
      (*(v115 + 104))(v88, enum case for FontSource.textStyle(_:), v116);
      v125 = sub_766CA0();
      v126 = &protocol witness table for StaticDimension;
      sub_B1B4(&v124);
      *(&v128 + 1) = v91;
      v129 = &protocol witness table for FontSource;
      v92 = sub_B1B4(&v127);
      (*(v90 + 16))(v92, v88, v91);
      v93 = UIFontTextStyleBody;
      sub_766CB0();
      (*(v90 + 8))(v88, v91);
      v102(v58, v89);
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  sub_10A2C(v18, &qword_963790);
LABEL_31:
  v77 = v114;
  *v114 = UIFontTextStyleBody;
  v78 = v115;
  v79 = v116;
  (*(v115 + 104))(v77, enum case for FontSource.textStyle(_:), v116);
  v125 = sub_766CA0();
  v126 = &protocol witness table for StaticDimension;
  sub_B1B4(&v124);
  *(&v128 + 1) = v79;
  v129 = &protocol witness table for FontSource;
  v80 = sub_B1B4(&v127);
  (*(v78 + 16))(v80, v77, v79);
  v81 = UIFontTextStyleBody;
  sub_766CB0();
  (*(v78 + 8))(v77, v79);
LABEL_32:
  sub_10914(&v124, &v127);
LABEL_42:
  sub_10914(&v127, v122);
  return sub_BEB8(v130);
}

uint64_t sub_536474@<X0>(_BYTE *a1@<X8>)
{
  result = sub_764B10();
  *a1 = result & 1;
  return result;
}

void sub_5364A4()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_artworkView);
  sub_759210();
  sub_5375C8(&qword_945810, &type metadata accessor for ArtworkView);
  v2 = v1;
  sub_75A0C0();

  v3 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_epicHeaderView);
  if (v3)
  {
    v4 = v3;
    sub_75A0C0();
  }

  v5 = *(*(*(v0 + OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_mediaViewContainer) + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer) + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents);
  if (v5)
  {
    type metadata accessor for VideoView();
    if (swift_dynamicCastClass())
    {
      sub_5375C8(&unk_93F530, type metadata accessor for VideoView);
      v6 = v5;
      sub_75A0C0();
    }
  }
}

uint64_t sub_536660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_5367D4(*(a1 + 16), a5);
  v6 = [objc_opt_self() absoluteDimension:v5];
  v7 = sub_75F970();

  return v7;
}

uint64_t sub_5366EC(uint64_t a1)
{
  result = sub_5375C8(&qword_95A2A0, type metadata accessor for PosterLockupCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

void sub_5367D4(uint64_t a1, void *a2)
{
  v4 = sub_766690();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75D870();
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  sub_766660();
  (*(v5 + 8))(v7, v4);
  [a2 pageContainerSize];
  v9 = v8;
  [a2 pageMarginInsets];
  v11 = v9 - v10;
  [a2 pageMarginInsets];
  v13 = v11 - v12;
  PageTraitEnvironment.pageColumnWidth.getter();
  v15 = v14;
  PageTraitEnvironment.pageColumnMargin.getter();
  if (v13 < (v15 + v16) * a1)
  {
    PageTraitEnvironment.pageColumnWidth.getter();
  }
}

id sub_536958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v102 = a3;
  v6 = sub_BD88(&unk_944DF0);
  __chkstk_darwin(v6 - 8);
  v101 = &v83 - v7;
  v99 = sub_7623A0();
  v95 = *(v99 - 8);
  __chkstk_darwin(v99);
  v96 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_BD88(&unk_9457F0);
  v98 = *(v100 - 8);
  __chkstk_darwin(v100);
  v97 = &v83 - v9;
  v10 = sub_BD88(&unk_948730);
  __chkstk_darwin(v10 - 8);
  v94 = &v83 - v11;
  v12 = sub_BD88(&unk_948710);
  __chkstk_darwin(v12 - 8);
  v91 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v90 = &v83 - v15;
  v16 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v16 - 8);
  v89 = &v83 - v17;
  v18 = sub_75A6B0();
  __chkstk_darwin(v18 - 8);
  v88 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v21 = sub_BD88(&unk_948720);
  __chkstk_darwin(v21 - 8);
  v23 = &v83 - v22;
  v24 = sub_75A6E0();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v83 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_75DC30();
  v92 = *(v28 - 8);
  v93 = v28;
  *&v29 = __chkstk_darwin(v28).n128_u64[0];
  v31 = &v83 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = [v4 contentView];
  if (sub_759D60())
  {
    v33 = 2;
  }

  else
  {
    v33 = 1;
  }

  [v32 setOverrideUserInterfaceStyle:v33];

  v34 = sub_759D40();
  if (v34)
  {
    v35 = v34;
    v87 = a1;
    *&v4[OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_artwork] = 0;

    v36 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_mediaViewContainer];
    v86 = OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer;
    v37 = *(v36 + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer);
    v84 = v31;
    v38 = v36;
    v39 = *(v37 + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents);
    *(v37 + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents) = 0;
    sub_1F92A8(v39);

    sub_1F7F5C();
    v85 = v4;
    *&v4[OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_video] = v35;

    (*(v25 + 104))(v27, enum case for VideoFillMode.scaleAspectFill(_:), v24);
    sub_764BC0();
    sub_765260();
    sub_7666A0();

    v40 = sub_766690();
    (*(*(v40 - 8) + 56))(v23, 0, 1, v40);
    sub_764B60();
    sub_764BA0();
    sub_764B70();
    sub_764B50();
    sub_764BB0();
    v41 = v84;
    sub_75DC10();
    sub_75C360();
    sub_768880();
    v42 = v103;
    sub_764B40();
    v43 = v89;
    sub_764BD0();
    v44 = sub_7570A0();
    (*(*(v44 - 8) + 56))(v43, 0, 1, v44);
    v45 = v90;
    sub_764B90();
    v46 = v91;
    sub_764B80();
    type metadata accessor for VideoView();
    sub_5375C8(&qword_93F500, type metadata accessor for VideoView);
    v88 = v42;
    v47 = sub_75C340();
    sub_10A2C(v46, &unk_948710);
    sub_10A2C(v45, &unk_948710);
    sub_10A2C(v43, &unk_93FD30);
    sub_10A2C(&v103, &unk_9443A0);
    v48 = *(v38 + v86);
    if (v47)
    {
      v49 = v47;
      v50 = [v49 superview];
      if (v50)
      {
        v51 = v50;
        sub_BE70(0, &qword_93E550);
        v52 = v48;
        v53 = sub_76A1C0();

        if (v53)
        {
          [v49 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v59 = *&v48[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents];
    *&v48[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents] = v47;
    v60 = v47;
    sub_1F92A8(v59);

    (*(v92 + 8))(v41, v93);
    v4 = v85;
  }

  else
  {
    v54 = sub_759D50();
    if (v54)
    {
      *&v4[OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_artwork] = v54;

      *&v4[OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_video] = 0;

      v55 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_artworkView];
      v56 = *(*&v4[OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_mediaViewContainer] + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer);
      v57 = *(v56 + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents);
      *(v56 + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents) = v55;
      v58 = v55;
      sub_1F92A8(v57);

      sub_1F7F5C();
    }

    else
    {
      v69 = *(*&v4[OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_mediaViewContainer] + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer);
      v70 = *(v69 + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents);
      *(v69 + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents) = 0;
      sub_1F92A8(v70);

      sub_1F7F5C();
      *&v4[OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_artwork] = 0;

      *&v4[OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_video] = 0;
    }
  }

  v61 = sub_764EF0();
  v62 = &v4[OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_fallbackTitle];
  *v62 = v61;
  v62[1] = v63;

  sub_7436A8();
  v64 = sub_759D30();
  if (v64)
  {
    *&v4[OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_epicHeadingArtwork] = v64;

    [*&v4[OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_fallbackTitleView] setHidden:1];
  }

  else
  {
    v65 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_epicHeaderView];
    if (v65)
    {
      [v65 setHidden:1];
    }

    v66 = v62[1];
    if (v66)
    {
      if ((v66 & 0x2000000000000000) != 0)
      {
        v67 = HIBYTE(v66) & 0xF;
      }

      else
      {
        v67 = *v62 & 0xFFFFFFFFFFFFLL;
      }

      v68 = v67 == 0;
    }

    else
    {
      v68 = 1;
    }

    [*&v4[OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_fallbackTitleView] setHidden:v68];
  }

  v71 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_offerButton];
  v72 = sub_764EC0();
  v73 = sub_764DB0();
  v74 = sub_BD88(&unk_948740);
  v75 = v94;
  (*(*(v74 - 8) + 56))(v94, 1, 1, v74);
  v76 = v95;
  v77 = v99;
  (*(v95 + 104))(v96, enum case for OfferButtonSubtitlePosition.below(_:), v99);
  (*(v76 + 56))(v101, 1, 1, v77);
  sub_5375C8(&qword_944E20, &type metadata accessor for OfferButtonSubtitlePosition);
  v78 = v97;
  sub_760940();
  sub_1DFEBC(v72, v73, 0, v75, v78, v102, 0, 0);

  (*(v98 + 8))(v78, v100);
  sub_10A2C(v75, &unk_948730);
  [v71 setOverrideUserInterfaceStyle:1];
  v79 = sub_759D20();
  v80 = &v4[OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_footerText];
  *v80 = v79;
  v80[1] = v81;

  return sub_74382C();
}

uint64_t sub_5375C8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_537610(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_765240();
  v51 = *(v4 - 8);
  v52 = v4;
  __chkstk_darwin(v4);
  v50 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_75D8B0();
  v47 = *(v6 - 8);
  v48 = v6;
  __chkstk_darwin(v6);
  v46 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_7652D0();
  __chkstk_darwin(v8 - 8);
  v53 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_BD88(&unk_948720);
  __chkstk_darwin(v10 - 8);
  v12 = v44 - v11;
  v13 = sub_75DC30();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_766690();
  v45 = *(v17 - 8);
  *&v18 = __chkstk_darwin(v17).n128_u64[0];
  v20 = v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [v2 contentView];
  [v21 bounds];

  if (*&v2[OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_video])
  {
    v22 = *(*(*&v2[OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_mediaViewContainer] + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer) + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents);
    if (v22)
    {
      v44[3] = type metadata accessor for VideoView();
      v23 = swift_dynamicCastClass();
      if (v23)
      {
        v44[0] = v20;
        v44[2] = a1;
        v24 = qword_99A200;
        v25 = v17;
        v26 = v23;
        swift_beginAccess();
        v27 = *(v14 + 16);
        v44[1] = v26;
        v28 = v26 + v24;
        v29 = v25;
        v27(v16, v28, v13);

        v30 = v22;
        sub_75DB80();
        (*(v14 + 8))(v16, v13);
        v31 = v45;
        if ((*(v45 + 48))(v12, 1, v25) != 1)
        {
          v43 = v44[0];
          (*(v31 + 32))(v44[0], v12, v29);
          sub_766600();
          sub_764BC0();
          sub_765330();

          sub_5375C8(&unk_93F530, type metadata accessor for VideoView);
          sub_75A050();

          (*(v31 + 8))(v43, v29);
          v32 = &selRef_setSpeed_;
          goto LABEL_10;
        }

        sub_10A2C(v12, &unk_948720);
      }
    }
  }

  v32 = &selRef_setSpeed_;
  if (*&v2[OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_artwork])
  {

    sub_765330();
    v33 = OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_artworkView;
    v34 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_artworkView];
    sub_7652E0();
    sub_7591B0();
    [v34 setContentMode:sub_765140()];
    sub_75DEF0();
    sub_7591F0();
    if (!sub_7651A0())
    {
      sub_BE70(0, &qword_93E540);
      sub_76A030();
    }

    sub_759070();

    v35 = *&v2[v33];
    sub_759210();
    sub_5375C8(&qword_945810, &type metadata accessor for ArtworkView);
    v36 = v35;
    sub_75A050();
  }

LABEL_10:
  if (*&v2[OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_epicHeadingArtwork])
  {

    [v2 bounds];
    v37 = v46;
    sub_7434FC();
    [v2 bounds];
    sub_75D890();
    (*(v47 + 8))(v37, v48);
    v38 = sub_7435A8();
    v39 = v50;
    sub_765250();
    sub_765210();
    (*(v51 + 8))(v39, v52);
    sub_765330();
    sub_7652E0();
    sub_7591B0();
    [v38 v32[469]];
    sub_75DEF0();
    sub_7591F0();
    if (!sub_7651A0())
    {
      sub_BE70(0, &qword_93E540);
      sub_76A030();
    }

    sub_759070();
    v40 = [objc_opt_self() clearColor];
    sub_759070();
    sub_759210();
    sub_5375C8(&qword_945810, &type metadata accessor for ArtworkView);
    sub_75A050();
    v41 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider30PosterLockupCollectionViewCell_epicHeaderView];
    if (v41)
    {
      v42 = v41;
      [v42 setHidden:0];
    }
  }
}

uint64_t sub_537EA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_537EF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_537F58(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v12 = sub_76A920();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B170(v5, *(v5 + 24));
  sub_766710();
  v16 = enum case for FloatingPointRoundingRule.up(_:);
  v59 = *(v13 + 104);
  v59(v15, enum case for FloatingPointRoundingRule.up(_:), v12);
  [a1 displayScale];
  sub_765C00();
  v60 = v17;
  v18 = *(v13 + 8);
  v18(v15, v12);
  sub_B170(v6 + 5, v6[8]);
  sub_766710();
  v59(v15, v16, v12);
  [a1 displayScale];
  sub_765C00();
  v55 = v19;
  v18(v15, v12);
  sub_B170(v6 + 13, v6[16]);
  sub_7673F0();
  v58 = v20;
  v56 = v21;
  v23 = v22 + 4.0;
  sub_B170(v6 + 18, v6[21]);
  v24 = a4;
  sub_7673F0();
  v27 = v25;
  v59 = v28;
  v29 = v23;
  if (v23 <= v25)
  {
    v23 = v25;
  }

  v30 = v29;
  v52 = v29;
  v53 = v26;
  v57 = v25;
  v61.origin.x = a2;
  v61.origin.y = a3;
  v61.size.width = v24;
  v61.size.height = a5;
  v31 = CGRectGetMinX(v61) + (v23 - v30) * 0.5;
  v32 = v60;
  v50 = v60 - v56;
  v51 = v31;
  v62.origin.x = a2;
  v62.origin.y = a3;
  v62.size.width = v24;
  v62.size.height = a5;
  MinX = CGRectGetMinX(v62);
  v54 = v32 + v55;
  v55 = v32 + v55 - v53;
  v56 = MinX + (v23 - v27) * 0.5;
  v63.origin.x = a2;
  v63.origin.y = a3;
  v47 = a3;
  v63.size.width = v24;
  v63.size.height = a5;
  v34 = CGRectGetWidth(v63) - v23 - *(v5 + 88);
  sub_B170((v5 + 184), *(v5 + 208));
  sub_7673F0();
  v60 = v36;
  v38 = v37;
  if (v34 >= v35)
  {
    v39 = v35;
  }

  else
  {
    v39 = v34;
  }

  v64.origin.x = a2;
  v64.origin.y = a3;
  v64.size.width = v24;
  v64.size.height = a5;
  v40 = CGRectGetMaxX(v64) - v39;
  v41 = v54 - v38;
  v48 = v41;
  v49 = v39;
  sub_B170((v5 + 224), *(v5 + 248));
  sub_7673F0();
  v46 = v43;
  if (v34 < v42)
  {
    v42 = v34;
  }

  if (*(v5 + 96) >= v42)
  {
    v44 = v42;
  }

  else
  {
    v44 = *(v5 + 96);
  }

  v54 = v44;
  v65.origin.x = a2;
  v65.origin.y = v47;
  v65.size.width = v24;
  v65.size.height = a5;
  v53 = CGRectGetMaxX(v65) - v44;
  v66.origin.x = v40;
  v66.origin.y = v41;
  v66.size.width = v39;
  v66.size.height = v60;
  CGRectGetMinY(v66);
  sub_B170((v5 + 104), *(v5 + 128));
  sub_769CA0();
  sub_7673E0();
  sub_B170((v5 + 144), *(v5 + 168));
  sub_769CA0();
  sub_7673E0();
  sub_B170((v5 + 184), *(v5 + 208));
  sub_769CA0();
  sub_7673E0();
  sub_B170((v5 + 224), *(v5 + 248));
  sub_769CA0();
  return sub_7673E0();
}

double sub_5384B0(double a1)
{
  v2 = v1;
  sub_B170(v1, v1[3]);
  sub_766710();
  sub_B170(v2 + 5, v2[8]);
  sub_766710();
  sub_B170(v2 + 18, v2[21]);
  sub_7673F0();
  return a1;
}

uint64_t sub_538594(uint64_t a1, uint64_t a2)
{
  v4 = sub_5386EC();

  return CustomLayout._eraseToAnyForTesting(with:)(a1, a2, v4);
}

unint64_t sub_5385EC()
{
  result = qword_95A2F8;
  if (!qword_95A2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95A2F8);
  }

  return result;
}

unint64_t sub_538644()
{
  result = qword_95A300;
  if (!qword_95A300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95A300);
  }

  return result;
}

unint64_t sub_5386EC()
{
  result = qword_95A308;
  if (!qword_95A308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95A308);
  }

  return result;
}

uint64_t sub_538744@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_7580D0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_758220();
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 != enum case for LegacyAppState.waiting(_:))
  {
    if (v6 == enum case for LegacyAppState.purchased(_:))
    {
      (*(v3 + 96))(v5, v2);
      v9 = sub_759E00();
    }

    else
    {
      if (v6 == enum case for LegacyAppState.updatable(_:))
      {
        (*(v3 + 8))(v5, v2);
        v8 = &enum case for AdInteractionType.update(_:);
        goto LABEL_12;
      }

      if (v6 == enum case for LegacyAppState.downloadable(_:))
      {
        (*(v3 + 8))(v5, v2);
        v8 = &enum case for AdInteractionType.download(_:);
        goto LABEL_12;
      }

      if (v6 == enum case for LegacyAppState.paused(_:) || v6 == enum case for LegacyAppState.downloading(_:) || v6 == enum case for LegacyAppState.installing(_:))
      {
        (*(v3 + 96))(v5, v2);
        v7 = sub_758040();
        goto LABEL_3;
      }

      if (v6 != enum case for LegacyAppState.openable(_:))
      {
        if (v6 != enum case for LegacyAppState.buyable(_:))
        {
          if (v6 == enum case for LegacyAppState.installed(_:))
          {
            goto LABEL_7;
          }

          if (v6 != enum case for LegacyAppState.unknown(_:))
          {
            v13 = enum case for AdInteractionType.open(_:);
            v14 = sub_766240();
            (*(*(v14 - 8) + 104))(a1, v13, v14);
            return (*(v3 + 8))(v5, v2);
          }
        }

        v8 = &enum case for AdInteractionType.getArcade(_:);
        goto LABEL_12;
      }

      (*(v3 + 96))(v5, v2);

      v9 = sub_75E270();
    }

    (*(*(v9 - 8) + 8))(v5, v9);
LABEL_7:
    v8 = &enum case for AdInteractionType.open(_:);
    goto LABEL_12;
  }

  (*(v3 + 96))(v5, v2);
  v7 = sub_75BC10();
LABEL_3:
  (*(*(v7 - 8) + 8))(v5, v7);
  v8 = &enum case for AdInteractionType.cancel(_:);
LABEL_12:
  v10 = *v8;
  v11 = sub_766240();
  return (*(*(v11 - 8) + 104))(a1, v10, v11);
}

uint64_t sub_538B18@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_75DD30();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_7580D0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_758220();
  v10 = (*(v7 + 88))(v9, v6);
  if (v10 == enum case for LegacyAppState.waiting(_:))
  {
    (*(v7 + 96))(v9, v6);
    v11 = sub_75BC10();
LABEL_3:
    (*(*(v11 - 8) + 8))(v9, v11);
    v12 = &enum case for AdInteractionType.cancel(_:);
    goto LABEL_12;
  }

  if (v10 == enum case for LegacyAppState.purchased(_:))
  {
    (*(v7 + 96))(v9, v6);
    v13 = sub_759E00();
LABEL_6:
    (*(*(v13 - 8) + 8))(v9, v13);
LABEL_7:
    v12 = &enum case for AdInteractionType.open(_:);
    goto LABEL_12;
  }

  if (v10 == enum case for LegacyAppState.updatable(_:))
  {
    (*(v7 + 8))(v9, v6);
    v12 = &enum case for AdInteractionType.update(_:);
    goto LABEL_12;
  }

  if (v10 == enum case for LegacyAppState.downloadable(_:))
  {
    (*(v7 + 8))(v9, v6);
    v12 = &enum case for AdInteractionType.download(_:);
    goto LABEL_12;
  }

  if (v10 == enum case for LegacyAppState.paused(_:) || v10 == enum case for LegacyAppState.downloading(_:) || v10 == enum case for LegacyAppState.installing(_:))
  {
    (*(v7 + 96))(v9, v6);
    v11 = sub_758040();
    goto LABEL_3;
  }

  if (v10 == enum case for LegacyAppState.openable(_:))
  {
    (*(v7 + 96))(v9, v6);

    v13 = sub_75E270();
    goto LABEL_6;
  }

  if (v10 != enum case for LegacyAppState.buyable(_:))
  {
    if (v10 == enum case for LegacyAppState.installed(_:))
    {
      goto LABEL_7;
    }

    if (v10 != enum case for LegacyAppState.unknown(_:))
    {
      v17 = enum case for AdInteractionType.open(_:);
      v18 = sub_766240();
      (*(*(v18 - 8) + 104))(a1, v17, v18);
      return (*(v7 + 8))(v9, v6);
    }
  }

  (*(v3 + 104))(v5, enum case for AdvertActionMetrics.PurchaseType.standard(_:), v2);
  sub_5390C0();
  sub_769430();
  sub_769430();
  if (v20[2] == v20[0] && v20[3] == v20[1])
  {
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v19 = sub_76A950();
    (*(v3 + 8))(v5, v2);

    if ((v19 & 1) == 0)
    {
      v12 = &enum case for AdInteractionType.getPreorder(_:);
      goto LABEL_12;
    }
  }

  v12 = &enum case for AdInteractionType.get(_:);
LABEL_12:
  v14 = *v12;
  v15 = sub_766240();
  return (*(*(v15 - 8) + 104))(a1, v14, v15);
}

uint64_t sub_539064()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_5390C0()
{
  result = qword_95A3B0;
  if (!qword_95A3B0)
  {
    sub_75DD30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95A3B0);
  }

  return result;
}

char *sub_539118(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for SearchResultsContextCardView.Style(0);
  __chkstk_darwin(v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC18ASMessagesProvider42SearchResultsContextCardCollectionViewCell_itemLayoutContext;
  v15 = sub_75C840();
  (*(*(v15 - 8) + 56))(&v5[v14], 1, 1, v15);
  if (qword_93DED0 != -1)
  {
    swift_once();
  }

  v16 = sub_BE38(v11, qword_9A0388);
  sub_34FBC4(v16, v13);
  v17 = objc_allocWithZone(type metadata accessor for SearchResultsContextCardView(0));
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider42SearchResultsContextCardCollectionViewCell_content] = sub_5EFC8C(v13);
  v26.receiver = v5;
  v26.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v26, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v22 = v18;
  [v22 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v23 = [v22 contentView];
  [v23 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v24 = [v22 contentView];
  [v24 addSubview:*&v22[OBJC_IVAR____TtC18ASMessagesProvider42SearchResultsContextCardCollectionViewCell_content]];

  return v22;
}

uint64_t type metadata accessor for SearchResultsContextCardCollectionViewCell()
{
  result = qword_95A3E8;
  if (!qword_95A3E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_539620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_539A4C(&qword_941240, type metadata accessor for SearchResultsContextCardCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

void sub_5396B8(uint64_t a1, uint64_t a2)
{
  sub_760F90();
  sub_539A4C(&qword_95A3F8, &type metadata accessor for SearchResultsContextCard);
  sub_75C750();
  if (v10)
  {
    v3 = sub_760F80();
    v4 = sub_760F70();
    if (v4)
    {
      v5 = v4;
      sub_764C60();
      v6 = sub_764C70();
      if (v6)
      {
        v7 = v6;
        if (sub_765190())
        {
          sub_759910();
        }

        else if (sub_765180())
        {
          sub_56EBA8(v7, 0);
        }
      }

      sub_2A5C88();
      v9 = swift_allocObject();
      *(v9 + 16) = a2;
      *(v9 + 24) = v5;

      v8 = sub_76A1F0();
    }

    else
    {
      v8 = 0;
    }

    sub_5EED50(v3, v8);
  }
}

uint64_t sub_5398A8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider42SearchResultsContextCardCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_1799C(v1 + v3, a1);
}

uint64_t sub_539900(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider42SearchResultsContextCardCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1792C(a1, v1 + v3);
  return swift_endAccess();
}

void sub_5399C0()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "prepareForReuse");
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider42SearchResultsContextCardCollectionViewCell_content];
  sub_4EAB5C();
  v2 = *(v1 + qword_95D988);
  *(v1 + qword_95D988) = 0;
  sub_5F01B8(v2);
}

uint64_t sub_539A4C(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_539A98(uint64_t a1, uint64_t a2)
{
  v3 = sub_7656C0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_760F90();
  sub_539A4C(&qword_95A3F8, &type metadata accessor for SearchResultsContextCard);
  sub_75C750();
  if (!v21)
  {
    return 0.0;
  }

  swift_getKeyPath();
  sub_75C7B0();

  v7 = v21;
  swift_getKeyPath();
  sub_75C7B0();

  sub_765630();
  (*(v4 + 8))(v6, v3);
  v8 = sub_760F80();
  v9 = sub_760F70();
  if (v9)
  {
    v10 = v9;
    sub_764C60();
    v11 = sub_764C70();
    if (v11)
    {
      v12 = v11;
      if (sub_765190())
      {
        sub_759910();
      }

      else if (sub_765180())
      {
        sub_56EBA8(v12, 0);
      }
    }

    sub_2A5C88();
    v15 = swift_allocObject();
    *(v15 + 16) = a2;
    *(v15 + 24) = v10;

    v14 = sub_76A1F0();
  }

  else
  {
    v14 = 0;
  }

  if (qword_93DED0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for SearchResultsContextCardView.Style(0);
  v17 = sub_BE38(v16, qword_9A0388);
  sub_5F1290(v7, v8, v14, v17);
  v13 = v18;

  return v13;
}

uint64_t sub_539DE4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_764AE0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_539E10()
{
  qword_95A418 = sub_75B680();
  qword_95A420 = sub_53BEE4(&qword_94DA48, &type metadata accessor for SpacerDimension);
  sub_B1B4(qword_95A400);
  return sub_75B670();
}

uint64_t sub_539E8C()
{
  v0 = sub_759950();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for SystemImage.chevronDown(_:), v0, v2);
  v5 = sub_759930();
  result = (*(v1 + 8))(v4, v0);
  qword_95A428 = v5;
  return result;
}

char *sub_539F84(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_760AD0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v15 - 8);
  v17 = &v31 - v16;
  if (qword_93D718 != -1)
  {
    swift_once();
  }

  v18 = sub_7666D0();
  v19 = sub_BE38(v18, qword_99ED40);
  v20 = *(v18 - 8);
  (*(v20 + 16))(v17, v19, v18);
  (*(v20 + 56))(v17, 0, 1, v18);
  (*(v12 + 104))(v14, enum case for DirectionalTextAlignment.none(_:), v11);
  v21 = objc_allocWithZone(sub_75BB20());
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider29ProductReviewsShelfHeaderView_titleLabel] = sub_75BB10();
  v22 = [objc_allocWithZone(UIButton) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider29ProductReviewsShelfHeaderView_sortButton] = v22;
  v31.receiver = v5;
  v31.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v31, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v27 = v23;
  [v27 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v28 = OBJC_IVAR____TtC18ASMessagesProvider29ProductReviewsShelfHeaderView_titleLabel;
  [*&v27[OBJC_IVAR____TtC18ASMessagesProvider29ProductReviewsShelfHeaderView_titleLabel] setHidden:1];
  [v27 addSubview:*&v27[v28]];
  v29 = OBJC_IVAR____TtC18ASMessagesProvider29ProductReviewsShelfHeaderView_sortButton;
  [*&v27[OBJC_IVAR____TtC18ASMessagesProvider29ProductReviewsShelfHeaderView_sortButton] setHidden:1];
  [v27 addSubview:*&v27[v29]];

  return v27;
}

id sub_53A32C()
{
  ObjectType = swift_getObjectType();
  v2 = sub_BD88(&unk_954ED0);
  *&v3 = __chkstk_darwin(v2 - 8).n128_u64[0];
  v5 = &v10 - v4;
  v10.receiver = v0;
  v10.super_class = ObjectType;
  objc_msgSendSuper2(&v10, "prepareForReuse", v3);
  v6 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider29ProductReviewsShelfHeaderView_titleLabel];
  [v6 setText:0];
  [v6 setHidden:1];
  v7 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider29ProductReviewsShelfHeaderView_sortButton];
  v8 = sub_76A3F0();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  sub_76A420();
  [v7 setMenu:0];
  [v7 setShowsMenuAsPrimaryAction:0];
  return [v7 setHidden:1];
}

id sub_53A4CC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v38 = a4;
  v39 = a2;
  v42 = a3;
  ObjectType = swift_getObjectType();
  v5 = sub_BD88(&unk_954ED0);
  __chkstk_darwin(v5 - 8);
  v37 = &ObjectType - v6;
  v41 = sub_764A60();
  v7 = *(v41 - 8);
  __chkstk_darwin(v41);
  v9 = &ObjectType - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &ObjectType - v11;
  v13 = sub_BD88(&unk_94F1F0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &ObjectType - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &ObjectType - v18;
  v40 = a1;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v20 = *(v14 + 8);
  v20(v19, v13);
  if (v44 && (sub_7692B0(), v22 = v21, , v22))
  {
    v23 = *&v43[OBJC_IVAR____TtC18ASMessagesProvider29ProductReviewsShelfHeaderView_titleLabel];
    v24 = sub_769210();

    [v23 setText:{v24, ObjectType}];

    [v23 setHidden:{0, ObjectType}];
  }

  else
  {
    [*&v43[OBJC_IVAR____TtC18ASMessagesProvider29ProductReviewsShelfHeaderView_titleLabel] setHidden:{1, ObjectType}];
  }

  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v20(v16, v13);
  sub_764A50();
  sub_53BEE4(&qword_9467F0, &type metadata accessor for Shelf.PresentationHints);
  v25 = v41;
  v26 = sub_76A520();
  v27 = *(v7 + 8);
  v27(v9, v25);
  v27(v12, v25);
  v28 = v43;
  if ((v26 & 1) == 0)
  {
    goto LABEL_11;
  }

  if (!v42)
  {
    goto LABEL_11;
  }

  sub_7692B0();
  if (!v29)
  {
    goto LABEL_11;
  }

  if (!v38)
  {

LABEL_11:
    v34 = *&v28[OBJC_IVAR____TtC18ASMessagesProvider29ProductReviewsShelfHeaderView_sortButton];
    [v34 setMenu:0];
    [v34 setShowsMenuAsPrimaryAction:0];
    [v34 setHidden:1];
    return [v28 setNeedsLayout];
  }

  v30 = *&v28[OBJC_IVAR____TtC18ASMessagesProvider29ProductReviewsShelfHeaderView_sortButton];
  v31 = v38;
  v32 = v37;
  sub_53A9E0();

  v33 = sub_76A3F0();
  (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
  sub_76A420();
  [v30 setMenu:v31];
  [v30 setShowsMenuAsPrimaryAction:1];
  [v30 setHidden:0];

  return [v28 setNeedsLayout];
}

void sub_53A9E0()
{
  v0 = sub_756F10();
  __chkstk_darwin(v0 - 8);
  v1 = sub_BD88(&qword_93F428);
  __chkstk_darwin(v1 - 8);
  v3 = &v13 - v2;
  v4 = sub_26F08();
  if (qword_93D720 != -1)
  {
    swift_once();
  }

  v5 = sub_7666D0();
  sub_BE38(v5, qword_99ED58);
  v6 = sub_769E00();
  sub_76A3A0();
  sub_BD88(&qword_940F40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_77B6D0;
  *(inited + 32) = NSFontAttributeName;
  *(inited + 64) = v4;
  *(inited + 40) = v6;

  v8 = NSFontAttributeName;
  v9 = v6;
  sub_10D028(inited);
  swift_setDeallocating();
  sub_10A2C(inited + 32, qword_940F50);
  sub_756F30();
  sub_756EC0();
  v10 = sub_756EB0();
  (*(*(v10 - 8) + 56))(v3, 0, 1, v10);
  sub_76A2F0();
  v11 = [objc_opt_self() configurationWithFont:v9 scale:1];
  sub_76A220();
  if (qword_93D3C8 != -1)
  {
    swift_once();
  }

  v12 = qword_95A428;
  sub_76A390();
  sub_76A290();
  sub_76A2D0();
  sub_76A2C0();
}

void sub_53ACBC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_BD88(&unk_954ED0);
  __chkstk_darwin(v4 - 8);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v27 - v8;
  v10 = sub_760AD0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  (*(v11 + 16))(v13, a1, v10);
  v15 = (*(v11 + 88))(v13, v10);
  if (v15 == enum case for DirectionalTextAlignment.leading(_:))
  {
    v16 = [v2 traitCollection];
    v17 = sub_7699F0();

    if (v17)
    {
      v18 = 2;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    if (v15 != enum case for DirectionalTextAlignment.trailing(_:))
    {

      (*(v11 + 8))(v13, v10);
      return;
    }

    v19 = [v2 traitCollection];
    v20 = sub_7699F0();

    if (v20)
    {
      v18 = 0;
    }

    else
    {
      v18 = 2;
    }
  }

  [v14 setAlignment:v18];
  sub_76A410();
  v21 = sub_76A3F0();
  if ((*(*(v21 - 8) + 48))(v9, 1, v21))
  {
LABEL_12:
    sub_362208(v9, v6);
    sub_76A420();

    sub_10A2C(v9, &unk_954ED0);
    return;
  }

  v22 = sub_76A2E0();
  v24 = v23;
  v25 = sub_756EB0();
  if ((*(*(v25 - 8) + 48))(v24, 1, v25))
  {
    v22(v28, 0);
    goto LABEL_12;
  }

  v27[1] = v14;
  sub_53BF2C();
  v26 = v14;
  sub_756ED0();
  v22(v28, 0);
  sub_76A420();
}

id sub_53B050()
{
  ObjectType = swift_getObjectType();
  v2 = sub_760AD0();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27.receiver = v0;
  v27.super_class = ObjectType;
  objc_msgSendSuper2(&v27, "layoutSubviews", v4);
  v7 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider29ProductReviewsShelfHeaderView_titleLabel];
  sub_75D650();
  v8 = [v0 traitCollection];
  sub_76A170();
  v10 = v9;
  v12 = v11;

  sub_75D650();
  v14 = v13;
  v16 = v15;
  v17 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider29ProductReviewsShelfHeaderView_sortButton];
  sub_75D650();
  v18 = [v0 traitCollection];
  sub_76A200();
  v20 = v19;

  sub_75D650();
  CGRectGetMaxX(v28);
  sub_75D650();
  CGRectGetMinY(v29);
  if (([v7 isHidden] & 1) != 0 || (objc_msgSend(v17, "isHidden") & 1) != 0 || (v26 = v10, v21 = v10 + 16.0 + v20, sub_75D650(), Width = CGRectGetWidth(v30), v23 = v26, Width >= v21))
  {
    (*(v3 + 104))(v6, enum case for DirectionalTextAlignment.trailing(_:), v2);
    sub_53ACBC(v6);
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    (*(v3 + 104))(v6, enum case for DirectionalTextAlignment.leading(_:), v2);
    sub_53ACBC(v6);
    (*(v3 + 8))(v6, v2);
    sub_75D650();
    v31.origin.x = v14;
    v31.origin.y = v16;
    v31.size.width = v23;
    v31.size.height = v12;
    CGRectGetMaxY(v31);
  }

  sub_75D650();
  sub_769D20();
  [v7 setFrame:?];
  sub_75D650();
  sub_769D20();
  return [v17 setFrame:?];
}

uint64_t sub_53B47C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_764AE0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

id sub_53B4CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v83 = a3;
  v69 = a2;
  v4 = sub_76A920();
  v85 = *(v4 - 8);
  v86 = v4;
  __chkstk_darwin(v4);
  v84 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_764A60();
  v81 = *(v6 - 8);
  v82 = v6;
  __chkstk_darwin(v6);
  v80 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v67 - v9;
  v73 = sub_767030();
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v70 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v71 = &v67 - v13;
  v76 = sub_766D70();
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v74 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_BD88(&unk_94F1F0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v67 - v20;
  v22 = sub_7656C0();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75DA60();
  sub_765BE0();
  sub_765630();
  v27 = v26;
  (*(v23 + 8))(v25, v22);
  v88 = sub_75DA30();
  v79 = a1;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v28 = *(v16 + 8);
  v28(v21, v15);
  if (v90 && (sub_7692B0(), v30 = v29, , v30))
  {
    v31 = v70;
    sub_767020();
    v32 = v74;
    if (qword_93D718 != -1)
    {
      swift_once();
    }

    v33 = sub_7666D0();
    sub_BE38(v33, qword_99ED40);
    sub_766FF0();
    (*(v72 + 8))(v31, v73);
    sub_766D50();
    sub_766D90();
    sub_766D60();
    v87 = v34;
    v89 = v35;
    v78 = v36;
    v77 = v37;
    (*(v75 + 8))(v32, v76);
  }

  else
  {
    v38 = JUMeasurementsZero[1];
    v87 = JUMeasurementsZero[0];
    v89 = v38;
    v39 = JUMeasurementsZero[3];
    v78 = JUMeasurementsZero[2];
    v77 = v39;
  }

  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v28(v18, v15);
  v40 = v80;
  sub_764A50();
  sub_53BEE4(&qword_9467F0, &type metadata accessor for Shelf.PresentationHints);
  v41 = v82;
  v42 = sub_76A520();
  v43 = *(v81 + 8);
  v43(v40, v41);
  v43(v10, v41);
  v68 = v27;
  if ((v42 & 1) != 0 && v83 && (sub_7692B0(), v44))
  {
    v45 = v70;
    sub_767020();
    v46 = v88;
    if (qword_93D720 != -1)
    {
      swift_once();
    }

    v47 = sub_7666D0();
    sub_BE38(v47, qword_99ED58);
    sub_766FF0();
    (*(v72 + 8))(v45, v73);
    sub_766D50();
    v48 = v74;
    sub_766D90();
    _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection();
    v50 = v49;
    if (qword_93D3C8 != -1)
    {
      swift_once();
    }

    [qword_95A428 size];
    v52 = v50 * v51 + 4.0;
    sub_766D60();
    v54 = v53;
    v56 = v55;
    (*(v75 + 8))(v48, v76);
    v57 = v54 + v52;
  }

  else
  {
    v56 = JUMeasurementsZero[1];
    v57 = JUMeasurementsZero[0];
    v46 = v88;
  }

  if ((JUMeasurementsEqual() & 1) != 0 || (JUMeasurementsEqual() & 1) != 0 || v68 >= v87 + 16.0 + v57)
  {
    if (v89 > v56)
    {
      v58 = v89;
    }

    else
    {
      v58 = v56;
    }
  }

  else
  {
    v58 = v89 + v56 + 8.0;
  }

  v59 = objc_opt_self();
  v60 = [v59 fractionalWidthDimension:1.0];
  if (qword_93D3C0 != -1)
  {
    swift_once();
  }

  sub_B170(qword_95A400, qword_95A418);
  sub_75DA40();
  v61 = v84;
  sub_33964();
  sub_766700();
  v63 = v62;
  swift_unknownObjectRelease();
  (*(v85 + 8))(v61, v86);
  v64 = [v59 absoluteDimension:v58 + v63];
  v65 = [objc_opt_self() sizeWithWidthDimension:v60 heightDimension:v64];

  return v65;
}

uint64_t sub_53BEE4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_53BF2C()
{
  result = qword_95A468;
  if (!qword_95A468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95A468);
  }

  return result;
}

uint64_t sub_53BF80@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v20 = a1;
  v21 = &type metadata for EmptyView;
  v22 = a2;
  v23 = &protocol witness table for EmptyView;
  v7 = sub_767FA0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v18[-v12];
  sub_767F90();
  sub_767FF0();
  sub_767F80();
  v14 = *(v8 + 8);
  v14(v10, v7);
  v19 = v3;
  v15 = sub_133D8(&qword_95A4A8);
  v16 = sub_53C4A8();
  v20 = a1;
  v21 = v15;
  v22 = a2;
  v23 = v16;
  a3[3] = sub_767FA0();
  a3[4] = swift_getWitnessTable();
  sub_B1B4(a3);
  sub_767F70();
  return (v14)(v13, v7);
}

uint64_t sub_53C180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_762DF0();
  KeyPath = swift_getKeyPath();
  v5 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider22SwiftUIViewHostingCell_flowPreview);
  v6 = (a2 + *(sub_BD88(&qword_95A4A8) + 36));
  *v6 = KeyPath;
  v6[1] = v5;
}

void sub_53C204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_3CD288(a1, a2, a3, a4, a5);
  v6 = [v5 contentView];
  v7 = [v6 layer];

  sub_765090();
  [v7 setCornerRadius:?];

  v8 = [v5 contentView];
  sub_396E8();
  v9 = objc_opt_self();
  v10 = [v9 systemBackgroundColor];
  v11.super.isa = [v9 secondarySystemBackgroundColor];
  v12.super.isa = v10;
  isa = sub_76A0C0(v12, v11).super.isa;
  [v8 setBackgroundColor:isa];
}

id sub_53C414()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SwiftUIProductPageCardViewHostingCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SwiftUIProductPageCardViewHostingCell()
{
  result = qword_95A498;
  if (!qword_95A498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_53C4A8()
{
  result = qword_95A4B0;
  if (!qword_95A4B0)
  {
    sub_133D8(&qword_95A4A8);
    sub_53C534();
    sub_53C58C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95A4B0);
  }

  return result;
}

unint64_t sub_53C534()
{
  result = qword_95A4B8;
  if (!qword_95A4B8)
  {
    sub_762E00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95A4B8);
  }

  return result;
}

unint64_t sub_53C58C()
{
  result = qword_951360;
  if (!qword_951360)
  {
    sub_133D8(&qword_943AD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_951360);
  }

  return result;
}

void sub_53C73C(void *a1)
{
  v3 = [a1 viewControllerForKey:UITransitionContextFromViewControllerKey];
  if (!v3)
  {
    return;
  }

  v40 = v3;
  v4 = [v3 presentingViewController];
  if (v4)
  {
    v39 = v4;
    v5 = [a1 viewForKey:UITransitionContextFromViewKey];
    if (v5)
    {
      v6 = v5;
      v7 = [a1 containerView];
      v8 = [a1 viewForKey:UITransitionContextToViewKey];
      if (v8)
      {
        [v7 insertSubview:v8 belowSubview:v6];
      }

      [a1 initialFrameForViewController:v40];
      x = v48.origin.x;
      y = v48.origin.y;
      width = v48.size.width;
      height = v48.size.height;
      v13 = CGRectGetWidth(v48) * 0.2;
      v49.origin.x = x;
      v49.origin.y = y;
      v49.size.width = width;
      v49.size.height = height;
      v14 = CGRectGetHeight(v49) * 0.2;
      v50.origin.x = x;
      v50.origin.y = y;
      v50.size.width = width;
      v50.size.height = height;
      v51 = CGRectInset(v50, v13, v14);
      if (v1[OBJC_IVAR____TtC18ASMessagesProvider31TodayTransitionDismissAnimation_destinationRect + 32])
      {
        v15 = v51.origin.x;
        v16 = v51.origin.y;
        v17 = v51.size.width;
        v18 = v51.size.height;
        v19 = v1;
      }

      else
      {
        v19 = v1;
        [v7 convertRect:0 fromView:{*&v1[OBJC_IVAR____TtC18ASMessagesProvider31TodayTransitionDismissAnimation_destinationRect], *&v1[OBJC_IVAR____TtC18ASMessagesProvider31TodayTransitionDismissAnimation_destinationRect + 8], *&v1[OBJC_IVAR____TtC18ASMessagesProvider31TodayTransitionDismissAnimation_destinationRect + 16], *&v1[OBJC_IVAR____TtC18ASMessagesProvider31TodayTransitionDismissAnimation_destinationRect + 24]}];
        v15 = v21;
        v16 = v22;
        v17 = v23;
        v18 = v24;
      }

      v25 = [swift_unknownObjectRetain() containerView];
      v26 = [v25 traitCollection];

      LOBYTE(v25) = sub_7699D0();
      swift_unknownObjectRelease();
      if (v25)
      {
        v27 = 0.62;
      }

      else
      {
        v27 = 0.61;
      }

      v28 = [a1 containerView];
      v29 = [v28 traitCollection];

      LOBYTE(v28) = sub_7699D0();
      if (v28)
      {
        v30 = 0.8;
      }

      else
      {
        v30 = 0.84;
      }

      v31 = objc_opt_self();
      v32 = swift_allocObject();
      *(v32 + 2) = v19;
      *(v32 + 3) = v6;
      v32[4] = v15;
      v32[5] = v16;
      v32[6] = v17;
      v32[7] = v18;
      v45 = sub_53D0AC;
      v46 = v32;
      aBlock = _NSConcreteStackBlock;
      v42 = 1107296256;
      v43 = sub_23F0CC;
      v44 = &unk_896338;
      v33 = _Block_copy(&aBlock);
      v34 = v19;
      v35 = v6;

      v36 = swift_allocObject();
      *(v36 + 16) = a1;
      *(v36 + 24) = v34;
      v45 = sub_4D6848;
      v46 = v36;
      aBlock = _NSConcreteStackBlock;
      v42 = 1107296256;
      v43 = sub_3D6D80;
      v44 = &unk_896388;
      v37 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();
      v38 = v34;

      [v31 animateWithDuration:129 delay:v33 usingSpringWithDamping:v37 initialSpringVelocity:v27 options:0.0 animations:v30 completion:1.0];

      _Block_release(v37);
      _Block_release(v33);
      return;
    }

    v20 = v39;
  }

  else
  {
    v20 = v40;
  }
}

id sub_53CBC4(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  sub_B584C(1);
  result = [a2 setFrame:{a3, a4, a5, a6}];
  if (*(a1 + OBJC_IVAR____TtC18ASMessagesProvider31TodayTransitionDismissAnimation_destinationRect + 32) == 1)
  {

    return [a2 setAlpha:0.0];
  }

  return result;
}

void sub_53CC7C(void *a1)
{
  v2 = v1;
  v4 = [a1 viewForKey:UITransitionContextFromViewKey];
  if (v4)
  {
    v5 = v4;
    [v4 setAlpha:1.0];
    v6 = [swift_unknownObjectRetain() containerView];
    v7 = [v6 traitCollection];

    LOBYTE(v6) = sub_7699D0();
    swift_unknownObjectRelease();
    if (v6)
    {
      v8 = 0.62;
    }

    else
    {
      v8 = 0.61;
    }

    v9 = [a1 containerView];
    v10 = [v9 traitCollection];

    LOBYTE(v9) = sub_7699D0();
    if (v9)
    {
      v11 = 0.8;
    }

    else
    {
      v11 = 0.84;
    }

    v12 = objc_opt_self();
    v13 = swift_allocObject();
    *(v13 + 16) = v2;
    *(v13 + 24) = v5;
    v24 = sub_53D008;
    v25 = v13;
    v20 = _NSConcreteStackBlock;
    v21 = 1107296256;
    v22 = sub_23F0CC;
    v23 = &unk_896298;
    v14 = _Block_copy(&v20);
    v15 = v2;
    v16 = v5;

    v17 = swift_allocObject();
    *(v17 + 16) = a1;
    *(v17 + 24) = v15;
    v24 = sub_4D66E4;
    v25 = v17;
    v20 = _NSConcreteStackBlock;
    v21 = 1107296256;
    v22 = sub_3D6D80;
    v23 = &unk_8962E8;
    v18 = _Block_copy(&v20);
    swift_unknownObjectRetain();
    v19 = v15;

    [v12 animateWithDuration:129 delay:v14 usingSpringWithDamping:v18 initialSpringVelocity:v8 options:0.0 animations:v11 completion:1.0];

    _Block_release(v18);
    _Block_release(v14);
  }
}

id sub_53CF70()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TodayTransitionDismissAnimation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_53CFC8()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_53D008()
{
  v1 = *(v0 + 24);
  sub_B584C(1);

  return [v1 setAlpha:0.0];
}

uint64_t sub_53D054(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_53D06C()
{

  return _swift_deallocObject(v0, 64, 7);
}

double static AppPromotionFormattedDateLayout.estimatedMeasurements(fitting:using:in:)(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();

  return sub_53DA04(a1, a2);
}

uint64_t AppPromotionFormattedDateLayout.init(metrics:textLabel:liveIndicatorView:backgroundView:vibrancyView:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v21 = a6;
  v11 = sub_7573C0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1261A0(a1, v22);
  sub_757390();
  v15 = sub_7573A0();
  (*(v12 + 8))(v14, v11);
  if (v15)
  {
    sub_B170(a2, a2[3]);
    sub_766A20();
    sub_1261FC(a1);
  }

  else
  {
    sub_1261FC(a1);
    sub_134D8(a2, &v22[10] + 8);
  }

  v16 = *(a3 + 16);
  v22[13] = *a3;
  v22[14] = v16;
  *&v22[15] = *(a3 + 32);
  v17 = *a4;
  *(&v22[16] + 8) = a4[1];
  *(&v22[15] + 8) = v17;
  *(&v22[17] + 1) = *(a4 + 4);
  *&v22[20] = *(a5 + 32);
  v18 = *(a5 + 16);
  v22[18] = *a5;
  v22[19] = v18;
  memcpy(v21, v22, 0x148uLL);
  return sub_BEB8(a2);
}

uint64_t AppPromotionFormattedDateLayout.placeChildren(relativeTo:in:)(double a1, double a2, double a3, double a4)
{
  v9 = sub_76A920();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6D310(v4 + 248, v54);
  if (v55)
  {
    sub_B170(v54, v55);
    sub_766530();
    sub_BEB8(v54);
  }

  else
  {
    sub_70550(v54);
  }

  sub_6D310(v4 + 288, v54);
  if (v55)
  {
    sub_B170(v54, v55);
    sub_766530();
    sub_BEB8(v54);
  }

  else
  {
    sub_70550(v54);
  }

  sub_769D10();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_6D310(v4 + 208, &v52);
  v50 = a1;
  v51 = a3;
  v48 = a2;
  v49 = a4;
  v45 = v14;
  v44 = v16;
  v43 = v18;
  v42 = v20;
  if (!v53)
  {
    sub_70550(&v52);
    goto LABEL_11;
  }

  sub_10914(&v52, v54);
  sub_B170(v54, v55);
  if (sub_766540())
  {
    sub_BEB8(v54);
LABEL_11:
    v47 = v14;
    v21 = v16;
    Height = v20;
    goto LABEL_13;
  }

  v23 = *(v4 + 120);
  sub_B170((v4 + 80), *(v4 + 104));
  sub_33964();
  sub_766700();
  v25 = v24;
  (*(v10 + 8))(v12, v9);
  v26 = v23 + v25;
  v56.origin.x = v14;
  v56.origin.y = v16;
  v56.size.width = v18;
  v56.size.height = v20;
  v47 = v26 + CGRectGetMinX(v56);
  v57.origin.x = v14;
  v57.origin.y = v16;
  v57.size.width = v18;
  v57.size.height = v20;
  MinY = CGRectGetMinY(v57);
  v58.origin.x = v14;
  v58.origin.y = v16;
  v58.size.width = v18;
  v58.size.height = v20;
  Width = CGRectGetWidth(v58);
  v59.size.width = v18;
  v18 = Width - v26;
  v59.origin.x = v14;
  v21 = MinY;
  v59.origin.y = v16;
  v59.size.height = v20;
  Height = CGRectGetHeight(v59);
  sub_BEB8(v54);
LABEL_13:
  sub_B170((v4 + 168), *(v4 + 192));
  sub_7665A0();
  v30 = v29;
  v32 = v31;
  sub_B170(v4, *(v4 + 24));
  sub_766720();
  v46 = v33;
  v34 = v47;
  v60.origin.x = v47;
  v60.origin.y = v21;
  v60.size.width = v18;
  v60.size.height = Height;
  MinX = CGRectGetMinX(v60);
  v61.origin.x = v34;
  v61.origin.y = v21;
  v61.size.width = v18;
  v61.size.height = Height;
  v36 = CGRectGetMinY(v61);
  v62.origin.x = v34;
  v62.origin.y = v21;
  v62.size.width = v18;
  v62.size.height = Height;
  v37 = CGRectGetWidth(v62);
  if (v37 >= v30)
  {
    v38 = v30;
  }

  else
  {
    v38 = v37;
  }

  v39 = v46 + v36;
  sub_B170((v4 + 168), *(v4 + 192));
  v47 = v32;
  sub_769D20();
  sub_766530();
  sub_6D310(v4 + 208, &v52);
  if (v53)
  {
    sub_10914(&v52, v54);
    v46 = *(v4 + 120);
    v63.origin.x = MinX;
    v63.origin.y = v39;
    v63.size.width = v38;
    v40 = v47;
    v63.size.height = v47;
    CGRectGetMinY(v63);
    v64.origin.x = MinX;
    v64.origin.y = v39;
    v64.size.width = v38;
    v64.size.height = v40;
    CGRectGetHeight(v64);
    v65.origin.x = v45;
    v65.origin.y = v44;
    v65.size.width = v43;
    v65.size.height = v42;
    CGRectGetMinX(v65);
    sub_B170(v54, v55);
    sub_769D20();
    sub_766530();
    sub_BEB8(v54);
  }

  else
  {
    sub_70550(&v52);
  }

  return sub_7664B0();
}

uint64_t AppPromotionFormattedDateLayout.measurements(fitting:in:)(uint64_t a1)
{
  swift_getObjectType();

  return sub_53DD74(a1, v1);
}

uint64_t AppPromotionFormattedDateLayout.Metrics.init(textTopSpace:textBottomSpace:liveIndicatorTrailingMargin:liveIndicatorSize:layoutMargins:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, double *a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>, double a9@<D4>, double a10@<D5>)
{
  sub_10914(a1, a4);
  sub_10914(a2, (a4 + 5));
  result = sub_10914(a3, (a4 + 10));
  a4[15] = a5;
  a4[16] = a6;
  a4[17] = a7;
  a4[18] = a8;
  a4[19] = a9;
  a4[20] = a10;
  return result;
}

void AppPromotionFormattedDateLayout.Metrics.layoutMargins.setter(double a1, double a2, double a3, double a4)
{
  v4[17] = a1;
  v4[18] = a2;
  v4[19] = a3;
  v4[20] = a4;
}

double sub_53DA04(uint64_t a1, uint64_t a2)
{
  v23 = a2;
  v24 = sub_7671B0();
  v3 = *(v24 - 8);
  __chkstk_darwin(v24);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_766C30();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_766C50();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v9, enum case for StackMeasurable.Axis.vertical(_:), v6, v12);
  sub_BD88(&qword_941B30);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_77E280;
  sub_134D8(a1, v31);
  v16 = sub_767170();
  *(v15 + 56) = v16;
  *(v15 + 64) = &protocol witness table for VerticalSpaceMeasurable;
  sub_B1B4((v15 + 32));
  sub_767180();
  sub_134D8(a1 + 40, v31);
  *(v15 + 96) = v16;
  *(v15 + 104) = &protocol witness table for VerticalSpaceMeasurable;
  sub_B1B4((v15 + 72));
  sub_767180();
  sub_766C40();
  v31[3] = v10;
  v31[4] = &protocol witness table for StackMeasurable;
  v17 = sub_B1B4(v31);
  (*(v11 + 16))(v17, v14, v10);
  v18 = *(a1 + 136);
  v29 = &type metadata for CGFloat;
  v30 = &protocol witness table for CGFloat;
  v28 = v18;
  v19 = *(a1 + 152);
  v26 = &type metadata for CGFloat;
  v27 = &protocol witness table for CGFloat;
  v25 = v19;
  sub_7671A0();
  sub_767190();
  v21 = v20;
  (*(v3 + 8))(v5, v24);
  (*(v11 + 8))(v14, v10);
  return v21;
}

uint64_t sub_53DD74(uint64_t a1, void *a2)
{
  v3 = sub_76A920();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2[17];
  v9[0] = a2[18];
  v9[1] = v7;
  sub_769DA0();
  sub_6D310((a2 + 26), &v10);
  if (v11)
  {
    sub_10914(&v10, v12);
    sub_B170(v12, v12[3]);
    if ((sub_766540() & 1) == 0)
    {
      sub_B170(a2 + 10, a2[13]);
      sub_33964();
      sub_766700();
      (*(v4 + 8))(v6, v3);
    }

    sub_BEB8(v12);
  }

  else
  {
    sub_70550(&v10);
  }

  sub_B170(a2 + 21, a2[24]);
  sub_7665A0();
  sub_B170(a2, a2[3]);
  sub_766720();
  sub_B170(a2 + 5, a2[8]);
  sub_33964();
  sub_766700();
  (*(v4 + 8))(v6, v3);
  return sub_769DC0();
}

uint64_t sub_53E068(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 328))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_53E0B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 312) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 328) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 328) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_53E154(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_53E190(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_53E1D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
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
      *(result + 168) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_53E250(void *a1)
{
  v2 = [objc_allocWithZone(CAGradientLayer) init];
  sub_BD88(&qword_941C10);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_77E280;
  v4 = [a1 colorWithAlphaComponent:0.0];
  v5 = [v4 CGColor];

  type metadata accessor for CGColor(0);
  v7 = v6;
  *(v3 + 56) = v6;
  *(v3 + 32) = v5;
  v8 = [a1 CGColor];
  *(v3 + 88) = v7;
  *(v3 + 64) = v8;
  isa = sub_769450().super.isa;

  [v2 setColors:isa];

  sub_BD88(&unk_93F5C0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_77B6C0;
  sub_206378();
  *(v10 + 32) = sub_76A1A0(0);
  *(v10 + 40) = sub_76A190(0.8);
  v11 = sub_769450().super.isa;

  [v2 setLocations:v11];

  [v2 setStartPoint:{0.0, 0.5}];
  [v2 setEndPoint:{1.0, 0.5}];
  return v2;
}

id sub_53E42C(void *a1, char a2)
{
  v4 = [objc_allocWithZone(CAGradientLayer) init];
  sub_BD88(&qword_941C10);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_77E280;
  v6 = 0.0;
  v7 = [a1 colorWithAlphaComponent:0.0];
  v8 = [v7 CGColor];

  type metadata accessor for CGColor(0);
  v10 = v9;
  *(v5 + 56) = v9;
  *(v5 + 32) = v8;
  v11 = [a1 CGColor];
  *(v5 + 88) = v10;
  *(v5 + 64) = v11;
  isa = sub_769450().super.isa;

  [v4 setColors:isa];

  sub_BD88(&unk_93F5C0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_77B6C0;
  sub_206378();
  *(v13 + 32) = sub_76A1A0(0);
  *(v13 + 40) = sub_76A190(0.8);
  v14 = sub_769450().super.isa;

  [v4 setLocations:v14];

  if (a2)
  {
    v15 = 1.0;
  }

  else
  {
    v15 = 0.0;
  }

  if ((a2 & 1) == 0)
  {
    v6 = 1.0;
  }

  [v4 setStartPoint:{v15, 0.5}];
  [v4 setEndPoint:{v6, 0.5}];
  return v4;
}

double sub_53E678(uint64_t a1)
{
  v191 = sub_761CE0();
  v171 = *(v191 - 8);
  __chkstk_darwin(v191);
  v172 = &v152 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_761D00();
  v176 = *(v4 - 8);
  __chkstk_darwin(v4);
  v175 = &v152 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = sub_760AD0();
  v167 = *(v168 - 8);
  __chkstk_darwin(v168);
  v169 = &v152 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v7 - 8);
  v166 = &v152 - v8;
  v174 = sub_75C420();
  v173 = *(v174 - 8);
  __chkstk_darwin(v174);
  v182 = &v152 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v170 = &v152 - v11;
  __chkstk_darwin(v12);
  v161 = &v152 - v13;
  v165 = sub_76A920();
  v164 = *(v165 - 8);
  __chkstk_darwin(v165);
  v163 = &v152 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = sub_7656C0();
  v189 = *(v190 - 8);
  __chkstk_darwin(v190);
  v162 = &v152 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v188 = &v152 - v17;
  v196 = sub_759DA0();
  v198 = *(v196 - 8);
  __chkstk_darwin(v196);
  v185 = &v152 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v177 = (&v152 - v20);
  __chkstk_darwin(v21);
  v194 = &v152 - v22;
  v181 = sub_764930();
  v180 = *(v181 - 1);
  __chkstk_darwin(v181);
  v155 = &v152 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_BD88(&qword_945828);
  __chkstk_darwin(v24);
  v192 = &v152 - v25;
  v26 = sub_BD88(&unk_94F1F0);
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v178 = &v152 - v28;
  v29 = sub_BD88(&qword_9438F8);
  __chkstk_darwin(v29);
  v31 = &v152 - v30;
  v32 = sub_BD88(&qword_963790);
  __chkstk_darwin(v32 - 8);
  v34 = &v152 - v33;
  v35 = sub_BD88(&qword_951BE0);
  __chkstk_darwin(v35 - 8);
  v159 = &v152 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v179 = &v152 - v38;
  __chkstk_darwin(v39);
  v187 = &v152 - v40;
  sub_759DF0();
  sub_5408B8(&qword_945830, &type metadata accessor for ProductMedia);
  v41 = a1;
  sub_75C750();
  v42 = v203;
  if (!v203)
  {
    return 0.0;
  }

  v158 = v24;
  v154 = v4;
  v184 = sub_759DE0();
  v195 = sub_759D80();
  v153 = sub_759D90();
  v160 = v43;
  v183 = v42;
  v156 = sub_759DC0();
  v186 = v44;
  v197 = sub_527DE4();
  swift_getKeyPath();
  v193 = v41;
  sub_75C7B0();

  sub_2C88C(&v31[*(v29 + 48)], v34);
  v45 = v27;
  v46 = v26;
  if ((*(v27 + 48))(v34, 1, v26) == 1)
  {
    sub_10A2C(v31, &qword_963790);
    sub_10A2C(v34, &qword_963790);
    v47 = v180;
    v48 = v187;
    v49 = v181;
    v157 = *(v180 + 56);
    v157(v187, 1, 1, v181);
  }

  else
  {
    swift_getKeyPath();
    v48 = v187;
    sub_768750();

    (*(v27 + 8))(v34, v26);
    v47 = v180;
    v49 = v181;
    v157 = *(v180 + 56);
    v157(v48, 0, 1, v181);
    sub_10A2C(v31, &qword_963790);
  }

  swift_getKeyPath();
  v50 = v178;
  sub_75C7B0();

  swift_getKeyPath();
  v51 = v179;
  sub_768750();

  (*(v45 + 8))(v50, v46);
  v52 = v51;
  v157(v51, 0, 1, v49);
  v53 = *(v158 + 48);
  v54 = v192;
  sub_2C8FC(v48, v192);
  sub_2C8FC(v52, &v54[v53]);
  v55 = *(v47 + 48);
  v56 = v55(v54, 1, v49);
  v181 = (v195 >> 62);
  v57 = v48;
  v58 = v197;
  if (v56 != 1)
  {
    v64 = v159;
    sub_2C8FC(v54, v159);
    v65 = v55(&v54[v53], 1, v49);
    v61 = v196;
    if (v65 != 1)
    {
      v74 = v155;
      (*(v47 + 32))(v155, &v54[v53], v49);
      sub_5408B8(&qword_944DC0, &type metadata accessor for Shelf.ContentType);
      LODWORD(v180) = sub_7691C0();
      v75 = *(v47 + 8);
      v75(v74, v49);
      sub_10A2C(v52, &qword_951BE0);
      sub_10A2C(v187, &qword_951BE0);
      v61 = v196;
      v75(v64, v49);
      sub_10A2C(v54, &qword_951BE0);
      v62 = v195;
      v63 = v181;
      if (v180)
      {
        goto LABEL_22;
      }

LABEL_11:
      v66 = v184;
      if (v63)
      {
        v67 = sub_76A860();
        if (v67)
        {
LABEL_13:
          v68 = v67 - 1;
          if (__OFSUB__(v67, 1))
          {
            __break(1u);
          }

          else if ((v62 & 0xC000000000000001) == 0)
          {
            if ((v68 & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else if (v68 < *(&dword_10 + (v62 & 0xFFFFFFFFFFFFFF8)))
            {
              v69 = *(v62 + 8 * v68 + 32);

              v203 = v66;
              if (v69)
              {
                goto LABEL_18;
              }

              goto LABEL_27;
            }

            __break(1u);
            goto LABEL_94;
          }

          v69 = sub_76A770();
          v203 = v66;
          if (v69)
          {
LABEL_18:
            v199 = v69;
            sub_75A360();
            sub_5408B8(&qword_945840, &type metadata accessor for MediaPlatform);
            v70 = sub_7691C0();

            if (!v63)
            {
              v71 = *(&dword_10 + (v62 & 0xFFFFFFFFFFFFFF8));
              v72 = v71 != 1;
              if (v70)
              {
LABEL_39:
                v76 = 0;
                goto LABEL_40;
              }

              goto LABEL_20;
            }

LABEL_38:
            v71 = sub_76A860();
            v72 = v71 != 1;
            if (v70)
            {
              goto LABEL_39;
            }

LABEL_20:
            v73 = v72;
            v66 = v184;
            goto LABEL_29;
          }

LABEL_27:

          if (!v63)
          {
            v71 = *(&dword_10 + (v62 & 0xFFFFFFFFFFFFFF8));
            v73 = v71 != 1;
LABEL_29:
            if (v63)
            {
              v77 = sub_76A860();
            }

            else
            {
              v77 = *(&dword_10 + (v62 & 0xFFFFFFFFFFFFFF8));
            }

            v78 = v198;
            v79 = v177;
            if (v77)
            {
              v76 = v73;
              if ((v62 & 0xC000000000000001) != 0)
              {

                v80 = sub_76A770();
                v203 = v66;
                if (v80)
                {
LABEL_35:
                  v199 = v80;
                  sub_75A360();
                  sub_5408B8(&qword_945840, &type metadata accessor for MediaPlatform);
                  v81 = sub_7691C0();

                  if (v81)
                  {
                    goto LABEL_41;
                  }

                  swift_unknownObjectRelease();

                  goto LABEL_85;
                }
              }

              else
              {
                if (!*(&dword_10 + (v62 & 0xFFFFFFFFFFFFFF8)))
                {
                  __break(1u);
                  goto LABEL_98;
                }

                v80 = *(v62 + 32);

                v203 = v66;
                if (v80)
                {
                  goto LABEL_35;
                }
              }
            }

            else
            {

              v203 = v66;
            }

            swift_unknownObjectRelease();

LABEL_85:

            return 0.0;
          }

          v70 = 0;
          goto LABEL_38;
        }
      }

      else
      {
        v67 = *(&dword_10 + (v62 & 0xFFFFFFFFFFFFFF8));
        if (v67)
        {
          goto LABEL_13;
        }
      }

      v203 = v66;
      goto LABEL_27;
    }

    sub_10A2C(v52, &qword_951BE0);
    v59 = v192;
    sub_10A2C(v187, &qword_951BE0);
    (*(v47 + 8))(v64, v49);
    v62 = v195;
LABEL_10:
    sub_10A2C(v59, &qword_945828);
    v63 = v181;
    goto LABEL_11;
  }

  sub_10A2C(v52, &qword_951BE0);
  v59 = v192;
  sub_10A2C(v57, &qword_951BE0);
  v60 = v55(&v59[v53], 1, v49);
  v61 = v196;
  v62 = v195;
  if (v60 != 1)
  {
    goto LABEL_10;
  }

  sub_10A2C(v59, &qword_951BE0);
  v63 = v181;
LABEL_22:
  v70 = 1;
  if ((v62 & 0x8000000000000000) != 0 || (v62 & 0x4000000000000000) != 0)
  {
    goto LABEL_38;
  }

  v76 = 0;
  v71 = *(&dword_10 + (v62 & 0xFFFFFFFFFFFFFF8));
LABEL_40:
  v78 = v198;
  v79 = v177;
LABEL_41:
  sub_759DB0();
  v82 = *(v78 + 104);
  v187 = (v78 + 104);
  v181 = v82;
  (v82)(v79, enum case for ProductMedia.DescriptionPlacement.top(_:), v61);
  v83 = sub_5408B8(&qword_95A4F8, &type metadata accessor for ProductMedia.DescriptionPlacement);
  sub_769430();
  v180 = v83;
  sub_769430();
  v179 = v71;
  if (v203 == v199 && v204 == v200)
  {
    v84 = 1;
  }

  else
  {
    v84 = sub_76A950();
  }

  v85 = *(v78 + 8);
  (v85)(v79, v61);

  v1 = 0.0;
  v79 = &qword_93D000;
  v198 = v78 + 8;
  v192 = v85;
  if ((v84 & 1) == 0)
  {
    goto LABEL_61;
  }

  v177 = type metadata accessor for PlatformSelectorView();
  swift_getKeyPath();
  v86 = v188;
  sub_75C7B0();

  sub_765630();
  (*(v189 + 8))(v86, v190);
  LODWORD(v178) = v76;
  if (v76)
  {
    if (qword_93D220 != -1)
    {
      swift_once();
    }

    [qword_956E70 size];
  }

  else if (v179 > 1)
  {
    sub_75A360();
    sub_BD88(&unk_93F5C0);
    v87 = swift_allocObject();
    *(v87 + 16) = xmmword_77D9F0;
    *(v87 + 32) = v184;

    v63 = sub_75A320();

    v159 = v153;
    goto LABEL_53;
  }

  sub_75A360();
  v63 = sub_75A320();
  v159 = v156;
LABEL_53:
  v195 = v62;

  if (qword_93D228 != -1)
  {
LABEL_94:
    swift_once();
  }

  v88 = sub_BE38(v191, qword_956E78);
  sub_761CD0();
  sub_B170(&v203, v205);
  swift_getObjectType();
  v89 = v163;
  sub_33964();
  sub_766700();
  v91 = v90;
  (*(v164 + 8))(v89, v165);
  sub_4C4E08(v63, v91);
  sub_BEB8(&v203);
  if (v63 >> 62)
  {
    sub_76A860();
  }

  v92 = v197;
  sub_75C410();
  v93 = sub_4C4AF8(v63, v92);

  v177 = v93;
  v94 = sub_761C90();
  if (qword_93D638 != -1)
  {
    swift_once();
  }

  v95 = sub_7666D0();
  v96 = sub_BE38(v95, qword_99EAA0);
  v97 = *(v95 - 8);
  v98 = v166;
  (*(v97 + 16))(v166, v96, v95);
  (*(v97 + 56))(v98, 0, 1, v95);
  (*(v167 + 104))(v169, enum case for DirectionalTextAlignment.none(_:), v168);
  v99 = sub_75BB20();
  v100 = objc_allocWithZone(v99);
  v101 = sub_75BB10();
  [v101 setAttributedText:v94];
  v159 = v94;
  if (qword_93D220 != -1)
  {
    swift_once();
  }

  [qword_956E70 size];
  v102 = sub_7670D0();
  swift_allocObject();
  v103 = sub_7670B0();
  (*(v171 + 16))(v172, v88, v191);
  v104 = v173;
  v105 = v161;
  v106 = v174;
  (*(v173 + 16))(v170, v161, v174);
  v205 = v99;
  v206 = &protocol witness table for UILabel;
  v203 = v101;
  v201 = v102;
  v202 = &protocol witness table for LayoutViewPlaceholder;
  v199 = v103;
  v107 = v101;

  v108 = v175;
  sub_761CF0();
  v58 = v197;
  [v197 pageMarginInsets];
  sub_769DA0();
  sub_5408B8(&qword_945838, &type metadata accessor for PlatformSelectorViewLayout);
  v109 = v154;
  sub_7665A0();
  sub_769DC0();
  v1 = v110;

  (*(v176 + 8))(v108, v109);
  (*(v104 + 8))(v105, v106);
  v61 = v196;
  v85 = v192;
  v76 = v178;
  v79 = &qword_93D000;
LABEL_61:
  (v181)(v185, enum case for ProductMedia.DescriptionPlacement.bottom(_:), v61);
  sub_769430();
  sub_769430();
  if (v203 == v199 && v204 == v200)
  {
    (v85)(v185, v61);

    goto LABEL_65;
  }

  v111 = sub_76A950();
  (v85)(v185, v61);

  if (v111)
  {
LABEL_65:
    type metadata accessor for PlatformSelectorView();
    swift_getKeyPath();
    v112 = v188;
    sub_75C7B0();

    sub_765630();
    (*(v189 + 8))(v112, v190);
    if (!v76)
    {
      if (v179 > 1)
      {

        sub_75A360();
        sub_BD88(&unk_93F5C0);
        v113 = swift_allocObject();
        *(v113 + 16) = xmmword_77D9F0;
        *(v113 + 32) = v184;

        v114 = sub_75A320();
        v156 = v153;
LABEL_71:

        if (v79[69] != -1)
        {
          swift_once();
        }

        v115 = sub_BE38(v191, qword_956E78);
        sub_761CD0();
        sub_B170(&v203, v205);
        swift_getObjectType();
        v116 = v163;
        sub_33964();
        sub_766700();
        v118 = v117;
        (*(v164 + 8))(v116, v165);
        sub_4C4E08(v114, v118);
        sub_BEB8(&v203);
        if (v114 >> 62)
        {
          sub_76A860();
        }

        sub_75C410();
        v119 = sub_4C4AF8(v114, v58);

        v195 = v119;
        v120 = sub_761C90();
        if (qword_93D638 != -1)
        {
          swift_once();
        }

        v121 = sub_7666D0();
        v122 = sub_BE38(v121, qword_99EAA0);
        v123 = *(v121 - 8);
        v124 = v166;
        (*(v123 + 16))(v166, v122, v121);
        (*(v123 + 56))(v124, 0, 1, v121);
        (*(v167 + 104))(v169, enum case for DirectionalTextAlignment.none(_:), v168);
        v125 = sub_75BB20();
        v126 = objc_allocWithZone(v125);
        v127 = sub_75BB10();
        [v127 setAttributedText:v120];
        v187 = v120;
        if (qword_93D220 != -1)
        {
          swift_once();
        }

        [qword_956E70 size];
        v128 = sub_7670D0();
        swift_allocObject();
        v129 = sub_7670B0();
        (*(v171 + 16))(v172, v115, v191);
        v130 = v173;
        v131 = v182;
        v132 = v174;
        (*(v173 + 16))(v170, v182, v174);
        v205 = v125;
        v206 = &protocol witness table for UILabel;
        v203 = v127;
        v201 = v128;
        v202 = &protocol witness table for LayoutViewPlaceholder;
        v199 = v129;
        v133 = v127;

        v134 = v175;
        sub_761CF0();
        [v197 pageMarginInsets];
        sub_769DA0();
        sub_5408B8(&qword_945838, &type metadata accessor for PlatformSelectorViewLayout);
        v135 = v154;
        sub_7665A0();
        sub_769DC0();
        v137 = v136;

        (*(v176 + 8))(v134, v135);
        (*(v130 + 8))(v131, v132);
        goto LABEL_81;
      }

LABEL_70:
      sub_75A360();
      v114 = sub_75A320();
      goto LABEL_71;
    }

    if (qword_93D220 == -1)
    {
LABEL_67:
      [qword_956E70 size];
      goto LABEL_70;
    }

LABEL_98:
    swift_once();
    goto LABEL_67;
  }

  v137 = 0.0;
  v186 = v160;
LABEL_81:

  LODWORD(v195) = v1 > 0.0;
  LODWORD(v191) = v137 > 0.0;
  v138 = sub_527DE4();
  swift_getKeyPath();
  v139 = v188;
  sub_75C7B0();

  sub_765580();
  v141 = v140;
  v142 = *(v189 + 8);
  v143 = v190;
  v142(v139, v190);
  swift_getKeyPath();
  v144 = v162;
  sub_75C7B0();

  sub_7655A0();
  v146 = v145;
  v142(v144, v143);
  swift_getKeyPath();
  sub_75C7B0();

  sub_765630();
  v148 = v147;
  v142(v139, v143);
  sub_571A34(v183, v195, v191, v138, v1, v137, v141, v146, v148);
  v150 = v149;

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  (v192)(v194, v196);
  return v150;
}

uint64_t sub_5408B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_5409D0(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_540A18()
{
  v1 = v0;
  sub_75B630();
  sub_75BA70();

  sub_75B620();
  if (v2)
  {
    v3 = sub_759920();
  }

  else
  {
    v3 = 0;
  }

  v4 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider33ProductPageLinkCollectionViewCell_iconImage];
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider33ProductPageLinkCollectionViewCell_iconImage] = v3;
  v5 = v3;

  sub_5A7B54();

  return [v1 setNeedsLayout];
}

uint64_t type metadata accessor for ProductRatingsView()
{
  result = qword_95A580;
  if (!qword_95A580)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_540B9C()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93D700 != -1)
  {
    swift_once();
  }

  v4 = sub_7666D0();
  v30 = sub_BE38(v4, qword_99ECF8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 16);
  v31 = v5 + 16;
  v6(v3, v30, v4);
  v23 = enum case for FontSource.useCase(_:);
  v28 = v1[13];
  v28(v3);
  v29 = sub_766CA0();
  *(&v43 + 1) = v29;
  *v44 = &protocol witness table for StaticDimension;
  sub_B1B4(&v42);
  *(&v37 + 1) = v0;
  *&v38[0] = &protocol witness table for FontSource;
  v7 = sub_B1B4(&v36);
  v8 = v1[2];
  v8(v7, v3, v0);
  sub_766CB0();
  v22 = v1[1];
  v22(v3, v0);
  *&v44[8] = xmmword_7A4150;
  v9 = v30;
  v24 = v4;
  v30 = v6;
  v6(v3, v9, v4);
  v10 = v23;
  (v28)(v3, v23, v0);
  *(&v37 + 1) = v29;
  *&v38[0] = &protocol witness table for StaticDimension;
  sub_B1B4(&v36);
  *(&v34 + 1) = v0;
  *&v35[0] = &protocol witness table for FontSource;
  v11 = sub_B1B4(&v33);
  v25 = v8;
  v26 = v1 + 2;
  v8(v11, v3, v0);
  v12 = v22;
  sub_766CB0();
  v27 = v1 + 1;
  v12(v3, v0);
  if (qword_93D710 != -1)
  {
    swift_once();
  }

  v13 = v24;
  v14 = sub_BE38(v24, qword_99ED28);
  v30(v3, v14, v13);
  v15 = v28;
  (v28)(v3, v10, v0);
  v16 = v10;
  if (qword_93D3E0 != -1)
  {
    swift_once();
  }

  v17 = qword_99E3F0;
  *&v39 = sub_761250();
  *(&v39 + 1) = sub_542494(&qword_95F820, &type metadata accessor for CappedSizeStaticDimension);
  sub_B1B4(v38 + 1);
  v18 = v17;
  sub_761240();
  v40 = xmmword_7A4160;
  v41 = 0x4069C00000000000;
  if (qword_93D708 != -1)
  {
    swift_once();
  }

  v19 = sub_BE38(v13, qword_99ED10);
  v30(v3, v19, v13);
  (v15)(v3, v16, v0);
  *(&v34 + 1) = v29;
  *&v35[0] = &protocol witness table for StaticDimension;
  sub_B1B4(&v33);
  v32[3] = v0;
  v32[4] = &protocol witness table for FontSource;
  v20 = sub_B1B4(v32);
  v25(v20, v3, v0);
  sub_766CB0();
  v12(v3, v0);
  *(v35 + 8) = xmmword_7A4170;
  xmmword_99E2F8 = v42;
  unk_99E308 = v43;
  xmmword_99E318 = *v44;
  unk_99E360 = v38[1];
  unk_99E370 = v39;
  unk_99E380 = v40;
  unk_99E330 = v36;
  *(&v35[1] + 1) = 0x4077000000000000;
  qword_99E328 = *&v44[16];
  qword_99E390 = v41;
  unk_99E340 = v37;
  unk_99E350 = v38[0];
  xmmword_99E3B8 = v35[0];
  unk_99E3C8 = v35[1];
  result = *&v34;
  xmmword_99E398 = v33;
  unk_99E3A8 = v34;
  return result;
}

uint64_t sub_541114()
{
  v0 = sub_7666D0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = sub_BD88(&qword_94E610);
  sub_161DC(v7, qword_99E3D8);
  sub_BE38(v7, qword_99E3D8);
  if (qword_93D708 != -1)
  {
    swift_once();
  }

  v8 = sub_BE38(v0, qword_99ED10);
  v9 = *(v1 + 16);
  v9(v6, v8, v0);
  if (qword_93D700 != -1)
  {
    swift_once();
  }

  v10 = sub_BE38(v0, qword_99ECF8);
  v9(v3, v10, v0);
  sub_BD88(&qword_93FBE0);
  return sub_7592D0();
}

char *sub_541324(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v80 = sub_767030();
  v10 = *(v80 - 8);
  __chkstk_darwin(v80);
  v12 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v4[qword_95A578] = 0;
  sub_7667B0();
  *&v4[qword_95A550] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v14 = type metadata accessor for RatingView();
  v15 = objc_allocWithZone(v14);
  *&v15[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_rating] = 0;
  *&v15[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_emptyStarColor] = 0;
  v16 = &v15[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_starPadding];
  *v16 = 0;
  v16[8] = 1;
  *&v15[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_maxNumberOfStars] = 5;
  if (qword_93D100 != -1)
  {
    swift_once();
  }

  v17 = qword_9552A8;
  *&v15[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_starColor] = qword_9552A8;
  v15[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_starSize] = 0;
  *v16 = 0;
  v16[8] = 1;
  v15[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_useCase] = 1;
  v18 = type metadata accessor for StarRow();
  v19 = objc_allocWithZone(v18);
  v20 = v17;
  *&v15[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_filledStarRowView] = sub_43DC44(5, 1, 0, 0, 1, 0, 1);
  v15[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_fillEmptyStars] = 0;
  v21 = objc_allocWithZone(v18);
  *&v15[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_emptyStarRowView] = sub_43DC44(5, 0, 0, 0, 1, 0, 1);
  v83.receiver = v15;
  v83.super_class = v14;
  v22 = objc_msgSendSuper2(&v83, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_43B880();
  v23 = OBJC_IVAR____TtC18ASMessagesProvider10RatingView_filledStarRowView;
  v24 = *&v22[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_filledStarRowView];
  v25 = *&v24[OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_currentRating];
  *&v24[OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_currentRating] = *&v22[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_rating];
  v26 = v24;
  sub_43C36C(v25);

  if (*&v22[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_emptyStarRowView])
  {
    [v22 addSubview:?];
  }

  [v22 addSubview:{*&v22[v23], v80}];

  *&v5[qword_95A558] = v22;
  sub_767020();
  if (qword_93D710 != -1)
  {
    swift_once();
  }

  v27 = sub_7666D0();
  sub_BE38(v27, qword_99ED28);
  sub_766FF0();
  v28 = *(v10 + 8);
  v29 = v80;
  v28(v12, v80);
  *&v5[qword_95A560] = sub_7667A0();
  sub_767020();
  sub_766FF0();
  v28(v12, v29);
  *&v5[qword_95A568] = sub_7667A0();
  *&v5[qword_95A570] = [objc_allocWithZone(type metadata accessor for ProductRatingsHistogramView()) init];
  v82.receiver = v5;
  v82.super_class = ObjectType;
  v30 = objc_msgSendSuper2(&v82, "initWithFrame:", a1, a2, a3, a4);
  v31 = qword_95A550;
  v32 = *&v30[qword_95A550];
  sub_396E8();
  v33 = v30;
  v34 = v32;
  v35 = sub_769FD0();
  [v34 setTextColor:v35];

  v36 = *&v30[v31];
  v37 = v33;
  [v37 addSubview:v36];
  v38 = qword_95A558;
  v39 = *&v37[qword_95A558];
  v40 = sub_769FD0();
  v41 = *&v39[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_starColor];
  *&v39[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_starColor] = v40;
  v42 = v40;
  if ((sub_76A1C0() & 1) == 0)
  {
    sub_43B880();
  }

  v43 = *&v37[v38];
  v44 = sub_769FE0();
  v45 = sub_769FD0();
  v46 = sub_769FE0();
  v47.super.isa = sub_769FD0();
  v48.super.isa = v44;
  v49.super.isa = v45;
  v50.super.isa = v46;
  v51.super.isa = sub_76A110(v48, v49, v50, v47).super.isa;
  isa = v51.super.isa;
  v53 = *&v43[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_emptyStarColor];
  *&v43[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_emptyStarColor] = v51;
  if (v53)
  {
    v54 = v51.super.isa;
    v55 = v53;
    v56 = sub_76A1C0();

    if (v56)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v57 = v51.super.isa;
    v55 = 0;
  }

  sub_43B880();
  v54 = isa;
LABEL_14:

  v58 = *&v37[v38];
  v59 = [v37 traitCollection];

  v60 = [v59 accessibilityContrast];
  v61 = v60 == 0;
  v62 = v58[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_fillEmptyStars];
  v58[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_fillEmptyStars] = v61;
  if ((v61 ^ v62))
  {
    v63 = *&v58[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_emptyStarRowView];
    if (v63)
    {
      v64 = *(v63 + OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_filled);
      *(v63 + OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_filled) = v61;
      if (((v60 == 0) ^ v64))
      {
        sub_43CE14();
      }
    }
  }

  v65 = qword_93D3E8;
  v66 = *&v37[v38];
  if (v65 != -1)
  {
    swift_once();
  }

  [v66 setMaximumContentSizeCategory:qword_99E3F8];

  [v37 addSubview:*&v37[v38]];
  v67 = qword_95A560;
  v68 = qword_93D3E0;
  v69 = *&v37[qword_95A560];
  if (v68 != -1)
  {
    swift_once();
  }

  v70 = qword_99E3F0;
  [v69 setMaximumContentSizeCategory:qword_99E3F0];

  v71 = *&v37[v67];
  v84._object = 0x80000000007E5EE0;
  v84._countAndFlagsBits = 0xD000000000000012;
  v85._countAndFlagsBits = 0;
  v85._object = 0xE000000000000000;
  sub_761130(v84, 5, v85);
  v72 = sub_769210();

  [v71 setText:v72];

  v73 = *&v37[v67];
  v74 = sub_769FF0();
  [v73 setTextColor:v74];

  [v37 addSubview:*&v37[v67]];
  v75 = qword_95A568;
  [*&v37[qword_95A568] setMaximumContentSizeCategory:v70];
  v76 = *&v37[v75];
  v77 = sub_769FF0();
  [v76 setTextColor:v77];

  [v37 addSubview:*&v37[v75]];
  [v37 addSubview:*&v37[qword_95A570]];
  sub_541C24();
  sub_BD88(&qword_9477F0);
  v78 = swift_allocObject();
  *(v78 + 16) = xmmword_77E280;
  *(v78 + 32) = sub_767890();
  *(v78 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  *(v78 + 48) = sub_767950();
  *(v78 + 56) = &protocol witness table for UITraitAccessibilityContrast;
  sub_769F40();

  swift_unknownObjectRelease();

  return v37;
}

void sub_541C24()
{
  v19 = sub_7666D0();
  v1 = *(v19 - 8);
  __chkstk_darwin(v19);
  v3 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_767030();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  sub_541F7C();
  v18[1] = *&v0[qword_95A550];
  sub_767020();
  if (qword_93D3D8 != -1)
  {
    swift_once();
  }

  v9 = sub_BD88(&qword_94E610);
  sub_BE38(v9, qword_99E3D8);
  v20 = v0;
  v10 = v0;
  sub_7592B0();

  sub_766FF0();
  (*(v1 + 8))(v3, v19);
  (*(v5 + 8))(v7, v4);
  sub_766790();
  v11 = *&v10[qword_95A558];
  v12 = [v10 traitCollection];
  v13 = [v12 accessibilityContrast];

  v14 = v13 == 0;
  v15 = *(v11 + OBJC_IVAR____TtC18ASMessagesProvider10RatingView_fillEmptyStars);
  *(v11 + OBJC_IVAR____TtC18ASMessagesProvider10RatingView_fillEmptyStars) = v14;
  if (v14 != v15)
  {
    v16 = *(v11 + OBJC_IVAR____TtC18ASMessagesProvider10RatingView_emptyStarRowView);
    if (v16)
    {
      v17 = *(v16 + OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_filled);
      *(v16 + OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_filled) = v14;
      if (((v13 == 0) ^ v17))
      {
        sub_43CE14();
      }
    }
  }
}

void sub_541F14(uint64_t a1)
{
  *(a1 + qword_95A578) = 0;
  sub_76A840();
  __break(1u);
}

id sub_541F7C()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = sub_7699D0();

  v4 = qword_95A578;
  v5 = v1[qword_95A578] | v3 ^ 1;
  [*&v1[qword_95A558] setHidden:v5 & 1];
  [*&v1[qword_95A570] setHidden:(v5 & 1) == 0];
  v6 = *&v1[qword_95A560];
  v7 = (v1[v4] & v3 & 1) == 0;

  return [v6 setHidden:v7];
}

id sub_54204C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  if (qword_93D3D0 != -1)
  {
    swift_once();
  }

  a1[3] = &type metadata for ProductRatingsLayout;
  a1[4] = sub_5423C8();
  v4 = swift_allocObject();
  *a1 = v4;
  sub_500D7C(&xmmword_99E2F8, v4 + 16);
  v5 = *(v2 + qword_95A550);
  v6 = sub_7667B0();
  *(v4 + 264) = v6;
  *(v4 + 272) = &protocol witness table for UILabel;
  *(v4 + 240) = v5;
  type metadata accessor for RatingView();
  v7 = v5;
  sub_7665D0();
  v8 = *(v2 + qword_95A560);
  *(v4 + 344) = v6;
  *(v4 + 352) = &protocol witness table for UILabel;
  *(v4 + 320) = v8;
  v9 = *(v2 + qword_95A568);
  *(v4 + 384) = v6;
  *(v4 + 392) = &protocol witness table for UILabel;
  *(v4 + 360) = v9;
  v13 = *(v2 + qword_95A570);
  *(v4 + 424) = type metadata accessor for ProductRatingsHistogramView();
  *(v4 + 432) = sub_542494(&qword_95A5E8, type metadata accessor for ProductRatingsHistogramView);
  *(v4 + 400) = v13;
  *(v4 + 440) = *(v2 + qword_95A578);
  v10 = v8;
  v11 = v9;

  return v13;
}

void sub_542248()
{
  v1 = *(v0 + qword_95A570);
}

void sub_5422B8(uint64_t a1)
{
  v2 = *(a1 + qword_95A570);
}

unint64_t sub_542350()
{
  result = qword_95A5D0;
  if (!qword_95A5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95A5D0);
  }

  return result;
}

unint64_t sub_5423C8()
{
  result = qword_95A5E0;
  if (!qword_95A5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95A5E0);
  }

  return result;
}

uint64_t sub_54241C()
{
  sub_BEB8(v0 + 16);
  sub_BEB8(v0 + 72);
  sub_BEB8(v0 + 112);
  sub_BEB8(v0 + 176);
  sub_BEB8(v0 + 240);
  sub_BEB8(v0 + 280);
  sub_BEB8(v0 + 320);
  sub_BEB8(v0 + 360);
  sub_BEB8(v0 + 400);

  return _swift_deallocObject(v0, 441, 7);
}

uint64_t sub_542494(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_5424DC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_542530(int a1)
{
  sub_76A730(29);
  if (a1)
  {
    if (a1 == 1)
    {
      v2._countAndFlagsBits = 0x64726177726F66;
    }

    else
    {
      v2._countAndFlagsBits = 1701736302;
    }

    if (a1 == 1)
    {
      v3 = 0xE700000000000000;
    }

    else
    {
      v3 = 0xE400000000000000;
    }
  }

  else
  {
    v3 = 0xE800000000000000;
    v2._countAndFlagsBits = 0x647261776B636162;
  }

  v2._object = v3;
  sub_769370(v2);

  v11._countAndFlagsBits = 8250;
  v11._object = 0xE200000000000000;
  sub_769370(v11);
  v4 = 0xEC000000676E6972;
  v5 = 0x6165707061736964;
  if (BYTE1(a1) != 1)
  {
    v5 = 1701736302;
    v4 = 0xE400000000000000;
  }

  if (BYTE1(a1))
  {
    v6._countAndFlagsBits = v5;
  }

  else
  {
    v6._countAndFlagsBits = 0x6E69726165707061;
  }

  if (BYTE1(a1))
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE900000000000067;
  }

  v6._object = v7;
  sub_769370(v6);

  v12._countAndFlagsBits = 8250;
  v12._object = 0xE200000000000000;
  sub_769370(v12);
  v13._countAndFlagsBits = sub_7695F0();
  sub_769370(v13);

  v14._object = 0x80000000007E7380;
  v14._countAndFlagsBits = 0xD000000000000011;
  sub_769370(v14);
  if ((a1 & 0x10000) != 0)
  {
    v8._countAndFlagsBits = 1702195828;
  }

  else
  {
    v8._countAndFlagsBits = 0x65736C6166;
  }

  if ((a1 & 0x10000) != 0)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  v8._object = v9;
  sub_769370(v8);

  return 0;
}

uint64_t sub_5426F0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 10))
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = 0;
  }

  if (*(a2 + 10))
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  return sub_546120(*(a1 + 8) | v2, *(a2 + 8) | v3, *a1, *a2);
}

uint64_t sub_542728()
{
  if (*(v0 + 10))
  {
    v1 = 0x10000;
  }

  else
  {
    v1 = 0;
  }

  return sub_542530(*(v0 + 8) | v1);
}

Swift::Int sub_542748()
{
  sub_76AA30();
  sub_769330();

  return sub_76AA80();
}

uint64_t sub_5427E4()
{
  sub_769330();
}

Swift::Int sub_54286C()
{
  sub_76AA30();
  sub_769330();

  return sub_76AA80();
}

uint64_t sub_542904@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_546340(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_542934(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x64726177726F66;
  if (v2 != 1)
  {
    v5 = 1701736302;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x647261776B636162;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_54298C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x64726177726F66;
  if (v2 != 1)
  {
    v4 = 1701736302;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x647261776B636162;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x64726177726F66;
  if (*a2 != 1)
  {
    v8 = 1701736302;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x647261776B636162;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_76A950();
  }

  return v11 & 1;
}

Swift::Int sub_542A80()
{
  sub_76AA30();
  sub_769330();

  return sub_76AA80();
}

uint64_t sub_542B28()
{
  sub_769330();
}

Swift::Int sub_542BBC()
{
  sub_76AA30();
  sub_769330();

  return sub_76AA80();
}

uint64_t sub_542C60@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_5463F4(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_542C90(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000067;
  v4 = 0xEC000000676E6972;
  v5 = 0x6165707061736964;
  if (v2 != 1)
  {
    v5 = 1701736302;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E69726165707061;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_542CF4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6165707061736964;
  v4 = 0xEC000000676E6972;
  if (v2 != 1)
  {
    v3 = 1701736302;
    v4 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6E69726165707061;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE900000000000067;
  }

  v7 = 0x6165707061736964;
  v8 = 0xEC000000676E6972;
  if (*a2 != 1)
  {
    v7 = 1701736302;
    v8 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6E69726165707061;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE900000000000067;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_76A950();
  }

  return v11 & 1;
}

id sub_542DF8(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_pagingDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_pageTrackerLookup;
  *&v4[v9] = sub_10F400(_swiftEmptyArrayStorage);
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_pageTrackers] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_pageCount] = 0;
  v4[OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_isAnimating] = 0;
  v4[OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_isFixingContentOffset] = 0;
  v4[OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_meetsMinimumPageRequirement] = 0;
  v4[OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_needsPageViewLayout] = 1;
  v4[OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_currentPagingDirection] = 2;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_currentPageIndex] = -1;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_focusedPageTracker] = 0;
  v4[OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_isSettingPagingOffset] = 0;
  v12.receiver = v4;
  v12.super_class = type metadata accessor for HeroCarouselScrollView();
  v10 = objc_msgSendSuper2(&v12, "initWithFrame:", a1, a2, a3, a4);
  [v10 setPagingEnabled:1];
  [v10 setShowsHorizontalScrollIndicator:0];
  [v10 setShowsVerticalScrollIndicator:0];
  [v10 setDelegate:v10];

  return v10;
}

void sub_543110(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_pageTrackers;

  LOBYTE(a1) = sub_116FE8(v4, a1);

  if ((a1 & 1) == 0)
  {
    v1[OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_needsPageViewLayout] = 1;
    sub_54453C();
    v5 = OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_focusedPageTracker;
    if (!*&v1[OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_focusedPageTracker])
    {
      v6 = *&v1[v3];
      if (v6 >> 62)
      {
        if (!sub_76A860())
        {
          return;
        }
      }

      else if (!*(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
      {
        return;
      }

      if ((v6 & 0xC000000000000001) != 0)
      {

        v7 = sub_76A770();
      }

      else
      {
        if (!*(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          return;
        }

        v7 = *(v6 + 32);
      }

      v8 = *&v1[v5];
      *&v1[v5] = v7;
      swift_retain_n();
      sub_5436B8(v8);

      [*(v7 + 32) frame];
      v10 = v9;
      v11 = OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_isSettingPagingOffset;
      v1[OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_isSettingPagingOffset] = 1;
      [v1 contentOffset];
      [v1 setContentOffset:v10];

      v1[v11] = 0;
    }
  }
}

uint64_t sub_543294(uint64_t result)
{
  v2 = OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_isAnimating;
  v3 = v1[OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_isAnimating];
  v1[OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_isAnimating] = result;
  if (v3 != (result & 1))
  {
    v4 = [v1 panGestureRecognizer];
    [v4 setEnabled:(v1[v2] & 1) == 0];

    v5 = v1[v2];
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      [*(result + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_pageControl) setUserInteractionEnabled:v5 ^ 1u];

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_54336C()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_focusedPageTracker);
  if (!v1)
  {
    return;
  }

  v2 = OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_currentPagingDirection;
  if (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_currentPagingDirection))
  {
    v3 = sub_76A950();

    if ((v3 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  v4 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_pageTrackers);
  if (v4 >> 62)
  {
    if (!sub_76A860())
    {
      goto LABEL_19;
    }
  }

  else if (!*(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_19;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {

    v5 = sub_76A770();
  }

  else
  {
    if (!*(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v5 = *(v4 + 32);
  }

  v6 = *(v1 + 16);

  v7 = *(v5 + 16);

  if (v6 == v7)
  {
    v8 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_pageCount);
    v9 = __OFSUB__(v8, 1);
    v10 = v8 - 1;
    if (!v9)
    {
      v11 = *(v1 + 16);
      if (v11 == v10)
      {
        sub_544AB0(0);
        goto LABEL_37;
      }

      if (!__OFADD__(v11, 1))
      {
        sub_544AB0(v11 + 1);
        goto LABEL_37;
      }

LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

LABEL_19:
  if (*(v0 + v2) && *(v0 + v2) == 1)
  {
  }

  else
  {
    v12 = sub_76A950();

    if ((v12 & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  v13 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_pageTrackers);
  if (v13 >> 62)
  {
    v14 = sub_76A860();
    if (!v14)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v14 = *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8));
    if (!v14)
    {
      goto LABEL_37;
    }
  }

  v15 = v14 - 1;
  if (__OFSUB__(v14, 1))
  {
    goto LABEL_44;
  }

  if ((v13 & 0xC000000000000001) == 0)
  {
    if ((v15 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v15 < *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8)))
    {
      v16 = *(v13 + 8 * v15 + 32);

      goto LABEL_30;
    }

    __break(1u);
    goto LABEL_48;
  }

LABEL_45:

  v16 = sub_76A770();

LABEL_30:
  v17 = *(v1 + 16);

  v18 = *(v16 + 16);

  if (v17 == v18)
  {
    v19 = *(v1 + 16);
    if (v19)
    {
      v20 = (v19 - 1);
      if (!__OFSUB__(v19, 1))
      {
        goto LABEL_36;
      }

      __break(1u);
    }

    v21 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_pageCount);
    v20 = (v21 - 1);
    if (!__OFSUB__(v21, 1))
    {
LABEL_36:
      sub_544880(v20);
      goto LABEL_37;
    }

LABEL_50:
    __break(1u);
    return;
  }

LABEL_37:
}

void *sub_5436B8(void *result)
{
  v2 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_focusedPageTracker];
  if (!v2 || result && v2[2] == result[2])
  {
    return result;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = v2[3];
    v4 = v2[4];

    v5 = v4;
    sub_1907E8(v5, v3);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  if ([v1 _isAnimatingScroll])
  {
    goto LABEL_45;
  }

  v6 = OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_pageTrackers;
  v7 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_pageTrackers];
  if (!(v7 >> 62))
  {
    v8 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
    if (v8)
    {
      goto LABEL_11;
    }

LABEL_27:

    goto LABEL_28;
  }

  v8 = sub_76A860();
  if (!v8)
  {
    goto LABEL_27;
  }

LABEL_11:
  v9 = v8 - 1;
  if (__OFSUB__(v8, 1))
  {
    __break(1u);
LABEL_49:

    v25 = sub_76A770();

    v26 = v2[2];
    v27 = *(v25 + 16);
    swift_unknownObjectRelease();
    if (v26 != v27)
    {
      goto LABEL_28;
    }

    goto LABEL_16;
  }

  if ((v7 & 0xC000000000000001) != 0)
  {
    goto LABEL_49;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_52;
  }

  if (v9 >= *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v10 = *(v7 + 8 * v9 + 32);
  v11 = v2[2];
  v12 = *(v10 + 16);

  if (v11 != v12)
  {
    goto LABEL_28;
  }

LABEL_16:
  if (v1[OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_currentPagingDirection] && v1[OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_currentPagingDirection] == 1)
  {

LABEL_20:

    v14 = v2[2];
    if (v14)
    {
      result = (v14 - 1);
      if (!__OFSUB__(v14, 1))
      {
        goto LABEL_25;
      }

      __break(1u);
    }

    v15 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_pageCount];
    result = (v15 - 1);
    if (!__OFSUB__(v15, 1))
    {
LABEL_25:
      sub_544880(result);
      goto LABEL_45;
    }

LABEL_57:
    __break(1u);
    return result;
  }

  v13 = sub_76A950();

  if (v13)
  {
    goto LABEL_20;
  }

LABEL_28:
  v16 = *&v1[v6];
  if (!(v16 >> 62))
  {
    result = *(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8));
    if (result)
    {
      goto LABEL_30;
    }

LABEL_44:

    goto LABEL_45;
  }

  result = sub_76A860();
  if (!result)
  {
    goto LABEL_44;
  }

LABEL_30:
  if ((v16 & 0xC000000000000001) == 0)
  {
    if (!*(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_55;
    }

    v17 = *(v16 + 32);

    goto LABEL_33;
  }

LABEL_53:

  v17 = sub_76A770();

LABEL_33:
  v18 = v2[2];

  v19 = *(v17 + 16);

  if (v18 != v19)
  {
    goto LABEL_45;
  }

  if (!v1[OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_currentPagingDirection])
  {

    goto LABEL_38;
  }

  v20 = sub_76A950();

  if (v20)
  {
LABEL_38:
    v21 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_pageCount];
    v22 = __OFSUB__(v21, 1);
    v23 = v21 - 1;
    if (!v22)
    {
      v24 = v2[2];
      if (v24 == v23)
      {
        result = 0;
LABEL_42:
        sub_544AB0(result);
        goto LABEL_45;
      }

      result = (v24 + 1);
      if (!__OFADD__(v24, 1))
      {
        goto LABEL_42;
      }

LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

LABEL_45:
}

id sub_543AD0(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v32 = OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_pageTrackers;
  v5 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_pageTrackers];
  if (v5 >> 62)
  {
    goto LABEL_57;
  }

  v6 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
LABEL_3:

  if (v6)
  {
    v7 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = sub_76A770();
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_12:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v7 >= *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          v6 = sub_76A860();
          goto LABEL_3;
        }

        v8 = *(v5 + 8 * v7 + 32);

        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_12;
        }
      }

      [*(v8 + 32) removeFromSuperview];

      ++v7;
    }

    while (v9 != v6);
  }

  v5 = a1;
  if (a1 >> 62)
  {
    v10 = sub_76A860();
  }

  else
  {
    v10 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v11 = OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_pageCount;
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_pageCount] = v10;
  v3[OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_meetsMinimumPageRequirement] = v10 > 1;
  result = [v3 setScrollEnabled:?];
  v40 = _swiftEmptyArrayStorage;
  v35 = v11;
  v13 = *&v3[v11];
  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (v13)
    {
      v14 = 0;
      v15 = OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_pageTrackerLookup;
      v33 = OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_currentPageIndex;
      v36 = enum case for Feature.iOS.arcade_hero_video_page_timer(_:);
      while (1)
      {
        v17 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_49;
        }

        if ((a1 & 0xC000000000000001) != 0)
        {
          v18 = sub_76A770();
        }

        else
        {
          if ((a2 & 0x8000000000000000) != 0)
          {
            goto LABEL_52;
          }

          if (a2 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_53;
          }

          v18 = *(a1 + 32 + 8 * a2);
        }

        v19 = v18;
        type metadata accessor for HeroCarouselScrollView.PageViewTracker();
        v20 = swift_allocObject();
        *(v20 + 16) = v14;
        *(v20 + 24) = a2;
        *(v20 + 32) = v19;

        sub_769440();
        if (*(&dword_10 + (v40 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v40 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_7694C0();
        }

        sub_769500();
        v37 = v40;
        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v39 = *&v3[v15];
        *&v3[v15] = 0x8000000000000000;
        sub_459428(v20, v14, isUniquelyReferenced_nonNull_native);
        *&v3[v15] = v39;
        swift_endAccess();
        [v3 addSubview:*(v20 + 32)];
        v22 = *(v20 + 32);
        [v3 bounds];
        MinY = CGRectGetMinY(v41);
        [v3 bounds];
        Width = CGRectGetWidth(v42);
        [v3 bounds];
        [v22 setFrame:{0.0, MinY, Width, CGRectGetHeight(v43)}];

        [*(v20 + 32) layoutIfNeeded];
        v25 = sub_7653A0();
        v38[3] = v25;
        v38[4] = sub_21E944();
        v26 = sub_B1B4(v38);
        (*(*(v25 - 8) + 104))(v26, v36, v25);
        LOBYTE(v25) = sub_765C30();
        sub_BEB8(v38);
        if ((v25 & 1) != 0 && *&v3[v33] == -1)
        {
          *&v3[v33] = a2;
          if (a2 != -1)
          {
            if (swift_unknownObjectWeakLoadStrong())
            {
              sub_190A64(v3, -1, a2);
              swift_unknownObjectRelease();
            }
          }
        }

        v5 = [v3 traitCollection];
        v27 = [v5 layoutDirection];

        if (v27 == &dword_0 + 1)
        {
          break;
        }

        v28 = *&v3[v35];
        v16 = __OFSUB__(v28, 1);
        v29 = (v28 - 1);
        if (v16)
        {
          goto LABEL_51;
        }

        if (a2 != v29)
        {
          v16 = __OFADD__(a2++, 1);
          if (v16)
          {
            goto LABEL_55;
          }

LABEL_19:
          if (v17 == v13)
          {
            goto LABEL_47;
          }

          goto LABEL_20;
        }

        if (v17 == v13)
        {
          goto LABEL_47;
        }

        a2 = 0;
LABEL_20:
        ++v14;
        if (v17 >= v13)
        {
          goto LABEL_50;
        }
      }

      if (a2)
      {
        v16 = __OFSUB__(a2--, 1);
        if (v16)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v30 = *&v3[v35];
        a2 = v30 - 1;
        if (__OFSUB__(v30, 1))
        {
          goto LABEL_56;
        }
      }

      goto LABEL_19;
    }

    v37 = _swiftEmptyArrayStorage;
LABEL_47:
    v31 = *&v3[v32];
    *&v3[v32] = v37;
    sub_543110(v31);
  }

  return result;
}

void sub_543FF8(unsigned __int8 a1)
{
  v2 = v1;
  v4 = [v1 traitCollection];
  v5 = [v4 layoutDirection];

  if (v5 == &dword_0 + 1)
  {
    if (a1 == 1)
    {

LABEL_5:
      v7 = 0;
      v8 = 1;
      goto LABEL_11;
    }

    v6 = sub_76A950();

    if (v6)
    {
      goto LABEL_5;
    }
  }

  if (a1)
  {
    if (a1 != 1)
    {
      goto LABEL_20;
    }

    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v7 = a1;
LABEL_11:
  v9 = sub_76A950();

  if (v9)
  {
    return;
  }

  if (v2[OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_meetsMinimumPageRequirement] != 1)
  {
    return;
  }

  v10 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_focusedPageTracker];
  if (!v10)
  {
    return;
  }

  if ((v8 & 1) == 0)
  {

    goto LABEL_24;
  }

  v11 = sub_76A950();

  if (v11)
  {
LABEL_24:
    v14 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_pageCount];
    v15 = __OFSUB__(v14, 1);
    v16 = v14 - 1;
    if (v15)
    {
      __break(1u);
      goto LABEL_37;
    }

    v17 = *(v10 + 16);
    if (v17 == v16)
    {
      v13 = 0;
LABEL_31:
      v19 = OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_pageTrackerLookup;
      swift_beginAccess();
      v20 = *&v2[v19];
      if (*(v20 + 16) && (v21 = sub_663D5C(v13), (v22 & 1) != 0))
      {
        v23 = *(*(v20 + 56) + 8 * v21);
        v2[OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_currentPagingDirection] = v7;

        sub_54336C();
        [*(v23 + 32) frame];
        v25 = v24;
        v26 = [objc_allocWithZone(CASpringAnimation) init];
        [v26 setMass:1.0];
        [v26 setStiffness:80.0];
        [v26 setDamping:35.0];
        v27 = v26;
        [v27 durationForEpsilon:COERCE_DOUBLE(1)];
        [v27 setDuration:?];

        v28 = *(v10 + 32);
        sub_5DAC88(a1 | 0x100, 1.0);

        sub_543294(1);
        [v2 _setContentOffset:1 animated:3 animationCurve:0 animationAdjustsForContentOffsetDelta:v27 animation:{v25, 0.0}];
        v29 = *(v23 + 32);
        sub_5DAC88(a1, 1.0);
      }

      else
      {
      }

      return;
    }

    v13 = v17 + 1;
    if (!__OFADD__(v17, 1))
    {
      goto LABEL_31;
    }

    __break(1u);
LABEL_30:
    v18 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_pageCount];
    v13 = v18 - 1;
    if (!__OFSUB__(v18, 1))
    {
      goto LABEL_31;
    }

LABEL_37:
    __break(1u);
    return;
  }

  v12 = *(v10 + 16);
  if (!v12)
  {
    goto LABEL_30;
  }

  v13 = v12 - 1;
  if (!__OFSUB__(v12, 1))
  {
    goto LABEL_31;
  }

  __break(1u);
LABEL_20:
}

id sub_544408(uint64_t a1, char a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_pageTrackers);
  if (v5 >> 62)
  {
LABEL_17:
    v6 = sub_76A860();
  }

  else
  {
    v6 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
  }

  if (v6)
  {
    v7 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = sub_76A770();
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_14:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v7 >= *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          goto LABEL_17;
        }

        v8 = *(v5 + 8 * v7 + 32);

        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_14;
        }
      }

      if ((a2 & 1) == 0 && *(v8 + 24) == a1)
      {

        v10 = *(v8 + 32);

        return v10;
      }

      ++v7;
    }

    while (v9 != v6);
  }

  return 0;
}

void sub_54453C()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_needsPageViewLayout;
  if (*(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_needsPageViewLayout) == 1 && *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_pageCount) >= 1)
  {
    *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_needsPageViewLayout) = 0;
    v2 = objc_opt_self();
    v3 = swift_allocObject();
    *(v3 + 16) = isEscapingClosureAtFileLocation;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_5463C4;
    *(v4 + 24) = v3;
    v7[4] = sub_2EC28;
    v7[5] = v4;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_1EB578;
    v7[3] = &unk_896758;
    v5 = _Block_copy(v7);
    v6 = isEscapingClosureAtFileLocation;

    [v2 performWithoutAnimation:v5];
    _Block_release(v5);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  *(isEscapingClosureAtFileLocation + v1) = 0;
}

uint64_t sub_5446CC(char *a1)
{
  [a1 bounds];
  v2 = CGRectGetWidth(v13) * *&a1[OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_pageCount];
  [a1 bounds];
  [a1 setContentSize:{v2, CGRectGetHeight(v14)}];
  v3 = *&a1[OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_pageTrackers];
  if (v3 >> 62)
  {
LABEL_17:
    v4 = sub_76A860();
  }

  else
  {
    v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
  }

  if (v4)
  {
    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = sub_76A770();
        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_12:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v5 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          goto LABEL_17;
        }

        v6 = *(v3 + 8 * v5 + 32);

        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_12;
        }
      }

      v8 = *(v6 + 32);
      [a1 bounds];
      v9 = CGRectGetWidth(v15) * v5;
      [a1 bounds];
      Width = CGRectGetWidth(v16);
      [a1 bounds];
      [v8 setFrame:{v9, 0.0, Width, CGRectGetHeight(v17)}];

      ++v5;
    }

    while (v7 != v4);
  }
}

id sub_544880(id result)
{
  v2 = OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_pageCount;
  v3 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_pageCount];
  if (v3 < 0)
  {
    goto LABEL_23;
  }

  if (!v3)
  {
LABEL_15:
    v10 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_pageTrackers];
    *&v1[OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_pageTrackers] = _swiftEmptyArrayStorage;
    sub_543110(v10);

    [v1 contentOffset];
    if (v11 < 0.0)
    {
      v12 = 0.0;
    }

    else
    {
      v12 = v11;
    }

    [v1 contentSize];
    if (v13 < v12)
    {
      v12 = v13;
    }

    [v1 bounds];
    *v14.i64 = v12 / CGRectGetWidth(v20);
    *v15.i64 = *v14.i64 - trunc(*v14.i64);
    v16.f64[0] = NAN;
    v16.f64[1] = NAN;
    v19 = *vbslq_s8(vnegq_f64(v16), v15, v14).i64;
    [v1 bounds];
    v17 = v19 * CGRectGetWidth(v21);
    v18 = OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_isSettingPagingOffset;
    v1[OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_isSettingPagingOffset] = 1;
    [v1 contentOffset];
    result = [v1 setContentOffset:v17];
    v1[v18] = 0;
    return result;
  }

  v4 = result;
  v5 = OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_pageTrackerLookup;
  swift_beginAccess();
  while (1)
  {
    if (!*(*&v1[v5] + 16))
    {
      goto LABEL_5;
    }

    sub_663D5C(v4);
    if ((v6 & 1) == 0)
    {
      goto LABEL_5;
    }

    swift_retain_n();
    sub_769440();
    if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_7694C0();
    }

    sub_769500();

    v7 = *&v1[v2];
    v8 = __OFSUB__(v7, 1);
    v9 = v7 - 1;
    if (v8)
    {
      break;
    }

    if (v4 == v9)
    {
      v4 = 0;
    }

    else
    {
      v8 = __OFADD__(v4++, 1);
      if (v8)
      {
        goto LABEL_22;
      }
    }

LABEL_5:
    if (!--v3)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

id sub_544AB0(uint64_t a1)
{
  result = sub_76A950();
  v4 = OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_pageCount;
  v5 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_pageCount];
  if (v5 < 0)
  {
    goto LABEL_37;
  }

  v6 = result;
  if (!v5)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_24:
    if ((v6 & 1) == 0)
    {
      v8 = sub_5B4D00(_swiftEmptyArrayStorage);
    }

    v14 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_pageTrackers];
    *&v1[OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_pageTrackers] = v8;
    sub_543110(v14);

    [v1 contentOffset];
    if (v15 < 0.0)
    {
      v16 = 0.0;
    }

    else
    {
      v16 = v15;
    }

    [v1 contentSize];
    v18 = v17;
    [v1 bounds];
    v19 = v18 - CGRectGetWidth(v31);
    if (v19 >= v16)
    {
      v20 = v16;
    }

    else
    {
      v20 = v19;
    }

    [v1 bounds];
    *v21.i64 = v20 / CGRectGetWidth(v32);
    v30 = v21;
    [v1 contentSize];
    v23 = v22;
    [v1 bounds];
    v24 = v23 - CGRectGetWidth(v33);
    *v25.i64 = *v30.i64 - trunc(*v30.i64);
    v26.f64[0] = NAN;
    v26.f64[1] = NAN;
    v27 = 1.0 - *vbslq_s8(vnegq_f64(v26), v25, v30).i64;
    [v1 bounds];
    v28 = v24 - v27 * CGRectGetWidth(v34);
    v29 = OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_isSettingPagingOffset;
    v1[OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_isSettingPagingOffset] = 1;
    [v1 contentOffset];
    result = [v1 setContentOffset:v28];
    v1[v29] = 0;
    return result;
  }

  v7 = OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_pageTrackerLookup;
  swift_beginAccess();
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (!*(*&v1[v7] + 16))
    {
      goto LABEL_5;
    }

    sub_663D5C(a1);
    if ((v9 & 1) == 0)
    {
      goto LABEL_5;
    }

    swift_retain_n();
    sub_769440();
    if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_7694C0();
    }

    sub_769500();

    v8 = _swiftEmptyArrayStorage;
    if (v6)
    {
      break;
    }

    if (a1)
    {
      v11 = __OFSUB__(a1--, 1);
      if (v11)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v13 = *&v1[v4];
      a1 = v13 - 1;
      if (__OFSUB__(v13, 1))
      {
        goto LABEL_36;
      }
    }

LABEL_5:
    if (!--v5)
    {
      goto LABEL_24;
    }
  }

  v10 = *&v1[v4];
  v11 = __OFSUB__(v10, 1);
  v12 = v10 - 1;
  if (!v11)
  {
    if (a1 == v12)
    {
      a1 = 0;
    }

    else
    {
      v11 = __OFADD__(a1++, 1);
      if (v11)
      {
        goto LABEL_35;
      }
    }

    goto LABEL_5;
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}