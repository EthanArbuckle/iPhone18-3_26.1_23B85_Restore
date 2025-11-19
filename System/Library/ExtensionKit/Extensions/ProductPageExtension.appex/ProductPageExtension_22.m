id sub_10027C960()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TodayListCardLockupContainer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10027CAC0()
{
  swift_beginAccess();
  swift_weakAssign();
}

void (*sub_10027CB20(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_impressionsCalculator;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_10010D5A4;
}

uint64_t sub_10027CBB8()
{
  v1 = (v0 + OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10001CE50(*v1);
  return v2;
}

uint64_t sub_10027CC14(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1000167E0(v6);
}

void (*sub_10027CCD4())()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = swift_allocObject();
  swift_weakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v1;
  return sub_10027CE24;
}

uint64_t sub_10027CD74()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10027CDAC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10027CDE4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10027CE2C(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_22:
    v3 = sub_10077158C();
    if (!v3)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_23;
    }
  }

  v4 = 0;
  do
  {
    v5 = v4;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        sub_10077149C();
        v4 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v5 >= *(v2 + 16))
        {
          goto LABEL_21;
        }

        v4 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }
      }

      if (sub_10076BB5C())
      {
        break;
      }

      ++v5;
      if (v4 == v3)
      {
        goto LABEL_23;
      }
    }

    if (qword_100941430 != -1)
    {
      swift_once();
    }

    sub_10076BFCC();

    sub_10077019C();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10077021C();
    }

    sub_10077025C();
  }

  while (v4 != v3);
LABEL_23:
  v6._rawValue = _swiftEmptyArrayStorage;
  sub_100760BAC(v6);
}

double sub_10027D020(void *a1)
{
  v1 = [a1 preferredContentSizeCategory];
  v2 = sub_10076FF9C();
  v4 = v3;
  if (v2 == sub_10076FF9C() && v4 == v5)
  {
    goto LABEL_15;
  }

  v7 = sub_10077167C();

  if (v7)
  {
LABEL_6:

    return 20.0;
  }

  v8 = sub_10076FF9C();
  v10 = v9;
  if (v8 == sub_10076FF9C() && v10 == v11)
  {
LABEL_15:

    return 20.0;
  }

  v13 = sub_10077167C();

  if (v13)
  {
    goto LABEL_6;
  }

  v14 = sub_10076FF9C();
  v16 = v15;
  if (v14 == sub_10076FF9C() && v16 == v17)
  {
LABEL_14:

    return 0.0;
  }

  v19 = sub_10077167C();

  if (v19)
  {
    goto LABEL_18;
  }

  v20 = sub_10076FF9C();
  v22 = v21;
  if (v20 == sub_10076FF9C() && v22 == v23)
  {
    goto LABEL_14;
  }

  v24 = sub_10077167C();

  if (v24)
  {
    goto LABEL_18;
  }

  v25 = sub_10076FF9C();
  v27 = v26;
  if (v25 == sub_10076FF9C() && v27 == v28)
  {

    return 8.0;
  }

  v29 = sub_10077167C();

  if (v29)
  {

    return 8.0;
  }

  v30 = sub_10076FF9C();
  v32 = v31;
  if (v30 == sub_10076FF9C() && v32 == v33)
  {
    goto LABEL_14;
  }

  v34 = sub_10077167C();

  if (v34)
  {
LABEL_18:

    return 0.0;
  }

  v35 = sub_10076FF9C();
  v37 = v36;
  if (v35 == sub_10076FF9C() && v37 == v38)
  {
    goto LABEL_14;
  }

  v39 = sub_10077167C();

  result = 8.0;
  if (v39)
  {
    return 0.0;
  }

  return result;
}

void sub_10027D394()
{
  swift_weakInit();
  swift_weakInit();
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_isExpanded) = 0;
  swift_weakInit();
  v1 = (v0 + OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_impressionsUpdateBlock);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_lockups) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_limit) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_isListLayoutInvalid) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_lastContentWidth) = 0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_listCells;
  *(v0 + v2) = sub_1000FE0F4(_swiftEmptyArrayStorage);
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_prefetchedLockupImages) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_currentTouch) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_isDragging) = 0;
  v3 = v0 + OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_indexForHighlightedLockup;
  *v3 = 0;
  *(v3 + 8) = 1;
  sub_10077156C();
  __break(1u);
}

char *sub_10027D4E4()
{
  v0 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v0 - 8);
  v2 = &v20 - v1;
  v3 = [objc_allocWithZone(type metadata accessor for TodayCardSmallLockupCollectionViewCell()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v7 = *&v3[OBJC_IVAR____TtC20ProductPageExtension38TodayCardSmallLockupCollectionViewCell_lockupView];
  [v7 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v8 = *&v7[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleLabel];
  v9 = qword_100940A50;
  v10 = v7;
  v11 = v8;
  if (v9 != -1)
  {
    swift_once();
  }

  v12 = sub_10076D3DC();
  v13 = sub_10000A61C(v12, qword_1009A0D00);
  v14 = *(v12 - 8);
  v15 = *(v14 + 16);
  v15(v2, v13, v12);
  v16 = *(v14 + 56);
  v16(v2, 0, 1, v12);
  sub_1007625DC();

  v17 = *&v10[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel];
  if (qword_100940A78 != -1)
  {
    swift_once();
  }

  v18 = sub_10000A61C(v12, qword_1009A0D78);
  v15(v2, v18, v12);
  v16(v2, 0, 1, v12);
  sub_1007625DC();

  return v3;
}

uint64_t sub_10027D774(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10027D7BC()
{
  result = qword_10094F750;
  if (!qword_10094F750)
  {
    sub_10000CE78(&qword_10094F748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094F750);
  }

  return result;
}

uint64_t sub_10027D878()
{
  v1 = sub_10076755C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_10027D914()
{
  v1 = *(sub_10076755C() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1002799D0(v0 + v2, v3);
}

uint64_t sub_10027D9B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10027D9C8()
{
  result = qword_10094F850;
  if (!qword_10094F850)
  {
    sub_100016F40(255, &qword_10094F760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094F850);
  }

  return result;
}

void sub_10027DA30()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_listCells;
  swift_beginAccess();
  if (*(*(v0 + v1) + 16) < *(v0 + OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_limit))
  {
    sub_10027A7A8();
    if (CGRectGetHeight(v2) > COERCE_DOUBLE(1))
    {
      sub_100279384();
    }
  }
}

id sub_10027DAA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC20ProductPageExtension39OnboardingLocationPrivacyViewController_iconView;
  *&v5[v11] = [objc_allocWithZone(UIImageView) init];
  v12 = &v5[OBJC_IVAR____TtC20ProductPageExtension39OnboardingLocationPrivacyViewController_continueCallback];
  *v12 = a1;
  *(v12 + 1) = a2;
  v13 = &v5[OBJC_IVAR____TtC20ProductPageExtension39OnboardingLocationPrivacyViewController_manageCallback];
  *v13 = a3;
  *(v13 + 1) = a4;

  v20._object = 0x80000001007DC5E0;
  v20._countAndFlagsBits = 0xD00000000000002BLL;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  sub_1007622EC(v20, v22);
  v21._countAndFlagsBits = 0xD00000000000002CLL;
  v21._object = 0x80000001007DC610;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  sub_1007622EC(v21, v23);
  v14 = sub_10076FF6C();

  v15 = sub_10076FF6C();

  v19.receiver = v5;
  v19.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v19, "initWithTitle:detailText:icon:contentLayout:", v14, v15, 0, 2);

  v17 = v16;
  [v17 setModalInPresentation:1];

  return v17;
}

void sub_10027DC44()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10076F9AC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076048C();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30.receiver = v1;
  v30.super_class = ObjectType;
  objc_msgSendSuper2(&v30, "viewDidLoad", v9);
  v12 = [objc_opt_self() configurationWithPointSize:54.0];
  v13 = *&v1[OBJC_IVAR____TtC20ProductPageExtension39OnboardingLocationPrivacyViewController_iconView];
  v25 = v12;
  [v13 setPreferredSymbolConfiguration:?];
  (*(v8 + 104))(v11, enum case for SystemImage.locationSquareFill(_:), v7);
  v14 = sub_10076046C();
  (*(v8 + 8))(v11, v7);
  [v13 setImage:v14];

  v15 = [v1 headerView];
  v16 = [v15 customIconContainerView];

  if (v16)
  {
    [v16 addSubview:v13];
  }

  v17 = [objc_opt_self() boldButton];
  v31._countAndFlagsBits = 0xD00000000000002ELL;
  v31._object = 0x80000001007DC6F0;
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  sub_1007622EC(v31, v33);
  v18 = sub_10076FF6C();

  [v17 setTitle:v18 forState:0];

  [v17 addTarget:v1 action:"didTapContinue" forControlEvents:64];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  sub_10076F8FC();
  sub_1000258C0(&v26);
  sub_1000258C0(&v28);
  sub_100770B9C();
  v19 = *(v4 + 8);
  v19(v6, v3);
  v20 = [v1 buttonTray];
  [v20 addButton:v17];

  v21 = [objc_opt_self() linkButton];
  v32._object = 0x80000001007DC720;
  v32._countAndFlagsBits = 0xD00000000000002CLL;
  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  sub_1007622EC(v32, v34);
  v22 = sub_10076FF6C();

  [v21 setTitle:v22 forState:0];

  [v21 addTarget:v1 action:"didTapManage" forControlEvents:64];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  sub_10076F8FC();
  sub_1000258C0(&v26);
  sub_1000258C0(&v28);
  sub_100770B9C();
  v19(v6, v3);
  v23 = [v1 buttonTray];
  [v23 addButton:v21];
}

uint64_t sub_10027E160()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10076F08C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076F0CC();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.receiver = v1;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, "viewDidLayoutSubviews", v9);
  sub_10027E410();
  sub_100085204();
  v12 = sub_10077068C();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_10027E9B4;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009AEDC;
  aBlock[3] = &unk_10088F358;
  v14 = _Block_copy(aBlock);

  sub_10076F0AC();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000717C8();
  sub_10000A5D4(&unk_10094E1C0);
  sub_1000852B8();
  sub_1007712CC();
  sub_10077069C();
  _Block_release(v14);

  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v11, v7);
}

void sub_10027E410()
{
  v1 = [v0 headerView];
  v8 = [v1 customIconContainerView];

  if (v8)
  {
    v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension39OnboardingLocationPrivacyViewController_iconView];
    [v2 sizeToFit];
    [v8 bounds];
    MidX = CGRectGetMidX(v10);
    [v2 frame];
    v4 = MidX - CGRectGetWidth(v11) * 0.5;
    [v8 bounds];
    MidY = CGRectGetMidY(v12);
    [v2 frame];
    v6 = MidY - CGRectGetHeight(v13) * 0.5;
    [v2 frame];
    Width = CGRectGetWidth(v14);
    [v2 frame];
    [v2 setFrame:{v4, v6, Width, CGRectGetHeight(v15)}];
  }
}

void sub_10027E580()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  MidX = 0.0;
  if (Strong && (v2 = Strong, v3 = [Strong headerView], v2, v4 = objc_msgSend(v3, "customIconContainerView"), v3, v4))
  {
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v28.origin.x = v6;
    v28.origin.y = v8;
    v28.size.width = v10;
    v28.size.height = v12;
    MidX = CGRectGetMidX(v28);
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  swift_beginAccess();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (!v14)
  {
    if (v13)
    {
      return;
    }

    goto LABEL_12;
  }

  v15 = v14;
  v16 = *(v14 + OBJC_IVAR____TtC20ProductPageExtension39OnboardingLocationPrivacyViewController_iconView);

  [v16 frame];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v29.origin.x = v18;
  v29.origin.y = v20;
  v29.size.width = v22;
  v29.size.height = v24;
  if (MidX == CGRectGetMidX(v29))
  {
    v25 = v13;
  }

  else
  {
    v25 = 1;
  }

  if (v25 == 1)
  {
LABEL_12:
    swift_beginAccess();
    v26 = swift_unknownObjectWeakLoadStrong();
    if (v26)
    {
      v27 = v26;
      sub_10027E410();
    }
  }
}

uint64_t sub_10027E97C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10027E9BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10027E9D4()
{
  v0 = sub_10076FD2C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076FD4C();
  sub_10000DB18(v4, qword_10099DF08);
  sub_10000A61C(v4, qword_10099DF08);
  if (qword_1009412D0 != -1)
  {
    swift_once();
  }

  v5 = sub_10000A61C(v0, qword_1009A25B8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_10076FD3C();
}

id sub_10027EC8C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *&v2[OBJC_IVAR____TtC20ProductPageExtension24UpsellGridViewController_gridView];
  v7 = *&v3[OBJC_IVAR____TtC20ProductPageExtension24UpsellGridViewController_artworkLoader];
  result = [v3 view];
  if (result)
  {
    v9 = result;
    [result bounds];
    v11 = v10;
    v13 = v12;

    *(v6 + OBJC_IVAR____TtC20ProductPageExtension14UpsellGridView_primaryIcon) = a1;

    v14 = OBJC_IVAR____TtC20ProductPageExtension14UpsellGridView_remainingIcons;
    swift_beginAccess();
    *(v6 + v14) = a2;

    *(v6 + OBJC_IVAR____TtC20ProductPageExtension14UpsellGridView_artworkLoader) = v7;

    return sub_100517950(v11, v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10027EE68()
{
  if (qword_10093FC20 != -1)
  {
    swift_once();
  }

  v0 = sub_10076FD4C();
  sub_10000A61C(v0, qword_10099DF08);
  sub_10000A5D4(&unk_100942A60);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100784500;
  sub_10076F27C();
  swift_getErrorValue();
  v4[3] = v3;
  v1 = sub_10000DB7C(v4);
  (*(*(v3 - 8) + 16))(v1);
  sub_10076F30C();
  sub_1000258C0(v4);
  sub_10076FBEC();
}

uint64_t sub_10027F08C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UpsellGridViewController();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10027F0CC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100761D3C();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == enum case for AdPlacementType.searchLanding(_:))
  {
    sub_10076CDFC();
LABEL_3:
    v10 = sub_10076CE0C();
    return (*(*(v10 - 8) + 56))(a1, 0, 1, v10);
  }

  if (v9 == enum case for AdPlacementType.searchResults(_:))
  {
    v12 = sub_10076CE0C();
    return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
  }

  else
  {
    if (v9 == enum case for AdPlacementType.today(_:))
    {
      sub_10076CDCC();
      goto LABEL_3;
    }

    if (v9 == enum case for AdPlacementType.productPageYMAL(_:))
    {
      sub_10076CDDC();
      goto LABEL_3;
    }

    if (v9 == enum case for AdPlacementType.productPageYMALDuringDownload(_:))
    {
      sub_10076CDEC();
      goto LABEL_3;
    }

    v13 = sub_10076CE0C();
    (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
    return (*(v5 + 8))(v8, v4);
  }
}

char *sub_10027F318(double a1, double a2, double a3, double a4)
{
  v9 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v9 - 8);
  v100 = &v93 - v10;
  v11 = sub_10076D1AC();
  v114 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100763ADC();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v98 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v93 - v18;
  v20 = OBJC_IVAR____TtC20ProductPageExtension25CarouselItemLockupOverlay_materialBackground;
  *&v4[v20] = [objc_allocWithZone(UIVisualEffectView) init];
  v21 = OBJC_IVAR____TtC20ProductPageExtension25CarouselItemLockupOverlay_smallLockupView;
  type metadata accessor for SmallLockupView();
  *&v4[v21] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v22 = OBJC_IVAR____TtC20ProductPageExtension25CarouselItemLockupOverlay_tapGestureRecognizer;
  *&v4[v22] = [objc_allocWithZone(UITapGestureRecognizer) init];
  v23 = &v4[OBJC_IVAR____TtC20ProductPageExtension25CarouselItemLockupOverlay_selectionHandler];
  v24 = type metadata accessor for CarouselItemLockupOverlay();
  *v23 = 0;
  *(v23 + 1) = 0;
  v122.receiver = v4;
  v122.super_class = v24;
  v25 = objc_msgSendSuper2(&v122, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v29 = v25;
  [v29 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v29 setOverrideUserInterfaceStyle:2];
  v99 = UIContentSizeCategoryExtraExtraExtraLarge;
  [v29 setMaximumContentSizeCategory:?];
  v94 = v29;

  if (qword_10093FBE0 != -1)
  {
    swift_once();
  }

  v30 = sub_10000A61C(v14, qword_10099DDA0);
  v108 = v15;
  v31 = *(v15 + 16);
  v105 = v14;
  v96 = v15 + 16;
  v95 = v31;
  v31(v19, v30, v14);
  sub_1007639BC();
  v115 = v19;
  if (qword_100941110 != -1)
  {
    swift_once();
  }

  v32 = sub_10076D3DC();
  v33 = sub_10000A61C(v32, qword_1009A2128);
  v97 = *(v32 - 8);
  v35 = v97 + 16;
  v34 = *(v97 + 16);
  v109 = v32;
  v113 = v34;
  v34(v13, v33, v32);
  v36 = v114;
  v37 = v114 + 104;
  v38 = enum case for FontSource.useCase(_:);
  v107 = *(v114 + 104);
  v107(v13);
  v104 = sub_10076D9AC();
  v120 = v104;
  v121 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v119);
  v117 = v11;
  v118 = &protocol witness table for FontSource;
  v39 = sub_10000DB7C(v116);
  v111 = *(v36 + 16);
  v110 = v36 + 16;
  v111(v39, v13, v11);
  sub_10076D9BC();
  v41 = *(v36 + 8);
  v40 = v36 + 8;
  v106 = v41;
  v41(v13, v11);
  sub_1007639DC();
  if (qword_100941118 != -1)
  {
    swift_once();
  }

  v42 = v109;
  v112 = sub_10000A61C(v109, qword_1009A2140);
  v113(v13, v112, v42);
  v102 = v38;
  (v107)(v13, v38, v11);
  v43 = v104;
  v120 = v104;
  v121 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v119);
  v117 = v11;
  v118 = &protocol witness table for FontSource;
  v44 = sub_10000DB7C(v116);
  v103 = v37;
  v101 = v35;
  v111(v44, v13, v11);
  sub_10076D9BC();
  v106(v13, v11);
  v114 = v40;
  sub_100763AAC();
  v45 = v113;
  v113(v13, v112, v42);
  v46 = v102;
  v47 = v107;
  (v107)(v13, v102, v11);
  v120 = v43;
  v121 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v119);
  v117 = v11;
  v118 = &protocol witness table for FontSource;
  v48 = sub_10000DB7C(v116);
  v49 = v111;
  v111(v48, v13, v11);
  sub_10076D9BC();
  v50 = v106;
  v106(v13, v11);
  sub_100763A7C();
  v45(v13, v112, v109);
  v47(v13, v46, v11);
  v51 = v104;
  v120 = v104;
  v121 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v119);
  v117 = v11;
  v118 = &protocol witness table for FontSource;
  v52 = sub_10000DB7C(v116);
  v49(v52, v13, v11);
  sub_10076D9BC();
  v50(v13, v11);
  sub_100763A6C();
  v113(v13, v112, v109);
  v53 = v102;
  v54 = v107;
  (v107)(v13, v102, v11);
  v120 = v51;
  v121 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v119);
  v117 = v11;
  v118 = &protocol witness table for FontSource;
  v55 = sub_10000DB7C(v116);
  v111(v55, v13, v11);
  sub_10076D9BC();
  v56 = v106;
  v106(v13, v11);
  sub_100763ACC();
  v57 = v53;
  v58 = v51;
  if (qword_100941128 != -1)
  {
    swift_once();
  }

  v59 = v109;
  v60 = sub_10000A61C(v109, qword_1009A2170);
  v113(v13, v60, v59);
  v54(v13, v57, v11);
  v120 = v58;
  v121 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v119);
  v117 = v11;
  v118 = &protocol witness table for FontSource;
  v61 = sub_10000DB7C(v116);
  v111(v61, v13, v11);
  sub_10076D9BC();
  v56(v13, v11);
  v62 = v115;
  sub_100763A2C();
  v114 = OBJC_IVAR____TtC20ProductPageExtension25CarouselItemLockupOverlay_smallLockupView;
  v63 = v94;
  v64 = *&v94[OBJC_IVAR____TtC20ProductPageExtension25CarouselItemLockupOverlay_smallLockupView];
  v65 = v98;
  v66 = v105;
  v95(v98, v62, v105);
  v67 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_metrics;
  swift_beginAccess();
  v68 = v108;
  v69 = *(v108 + 24);
  v70 = v64;
  v69(&v64[v67], v65, v66);
  swift_endAccess();
  [v70 setNeedsLayout];

  v71 = *(v68 + 8);
  v108 = v68 + 8;
  v71(v65, v66);
  v72 = v114;
  v73 = *(*&v63[v114] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleLabel);
  v74 = v100;
  v113(v100, v112, v59);
  (*(v97 + 56))(v74, 0, 1, v59);
  v75 = v73;
  sub_1007625DC();

  v76 = [*(*&v63[v72] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel) layer];
  v77 = kCAFilterPlusL;
  [v76 setCompositingFilter:kCAFilterPlusL];

  v78 = *(*&v63[v72] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabel);
  sub_100016F40(0, &qword_100942F10);
  v79 = v78;
  v80 = sub_100770D1C();
  [v79 setTextColor:v80];

  [*(*&v63[v72] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabel) _setTextColorFollowsTintColor:0];
  v81 = [*(*&v63[v72] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabel) layer];
  [v81 setCompositingFilter:v77];

  [*&v63[v72] setMaximumContentSizeCategory:v99];
  v82 = [*&v63[v72] layer];
  [v82 setAllowsGroupBlending:0];

  v83 = OBJC_IVAR____TtC20ProductPageExtension25CarouselItemLockupOverlay_materialBackground;
  v84 = *&v63[OBJC_IVAR____TtC20ProductPageExtension25CarouselItemLockupOverlay_materialBackground];
  sub_1003E4478(26.0);

  v85 = OBJC_IVAR____TtC20ProductPageExtension25CarouselItemLockupOverlay_tapGestureRecognizer;
  [*&v63[OBJC_IVAR____TtC20ProductPageExtension25CarouselItemLockupOverlay_tapGestureRecognizer] setEnabled:0];
  v86 = *&v63[v85];
  v87 = v63;
  [v86 addTarget:v87 action:"handleSelection:"];
  v88 = *&v63[v85];
  [v88 setDelegate:v87];

  [v87 addGestureRecognizer:*&v63[v85]];
  [v87 addSubview:*&v63[v83]];
  v89 = [*&v63[v83] contentView];
  [v89 addSubview:*&v63[v72]];

  v90 = [*&v63[v83] contentView];
  v91 = [v90 layer];

  [v91 setAllowsGroupBlending:0];
  v71(v115, v105);
  return v87;
}

uint64_t sub_1002800FC()
{
  v1 = sub_10076DFAC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v5 = type metadata accessor for CarouselItemLockupOverlay();
  v15.receiver = v0;
  v15.super_class = v5;
  objc_msgSendSuper2(&v15, "layoutSubviews");
  v6 = *&v0[OBJC_IVAR____TtC20ProductPageExtension25CarouselItemLockupOverlay_materialBackground];
  sub_10076422C();
  [v6 setFrame:?];
  v7 = *&v0[OBJC_IVAR____TtC20ProductPageExtension25CarouselItemLockupOverlay_smallLockupView];
  v14[3] = type metadata accessor for SmallLockupView();
  v14[4] = sub_10010F890(&qword_100949328, type metadata accessor for SmallLockupView);
  v14[0] = v7;
  sub_10000A570(v14, v12);
  v13[3] = sub_10076E04C();
  v13[4] = &protocol witness table for Margins;
  sub_10000DB7C(v13);
  v8 = v7;
  sub_10076E03C();
  sub_10076DF8C();
  sub_10076DFBC();
  sub_10000CD74(v14);
  sub_10076422C();
  v9 = [v0 traitCollection];
  sub_10076E0EC();

  return (*(v2 + 8))(v4, v1);
}

double sub_100280378(double a1, double a2)
{
  v5 = sub_10076DFAC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1002617F8(v14);
  sub_10000A570(v14, v12);
  v13[3] = sub_10076E04C();
  v13[4] = &protocol witness table for Margins;
  sub_10000DB7C(v13);
  sub_10076E03C();
  sub_10076DF8C();
  sub_10076DFBC();
  sub_10000CD74(v14);
  v9 = sub_100281138(v8, v2, a1, a2);
  (*(v6 + 8))(v8, v5);
  return v9;
}

uint64_t sub_100280630(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v4 - 8);
  v6 = &v43 - v5;
  v7 = sub_10000A5D4(&unk_100949290);
  __chkstk_darwin(v7 - 8);
  v9 = &v43 - v8;
  v10 = sub_10000A5D4(&qword_10094F730);
  __chkstk_darwin(v10 - 8);
  v12 = &v43 - v11;
  v13 = sub_10000A5D4(&unk_1009492A0);
  __chkstk_darwin(v13 - 8);
  v15 = &v43 - v14;
  v16 = sub_10000A5D4(&unk_10094D210);
  __chkstk_darwin(v16 - 8);
  v18 = &v43 - v17;
  v19 = sub_10000A5D4(&unk_100946760);
  __chkstk_darwin(v19 - 8);
  v21 = &v43 - v20;
  result = sub_10076709C();
  if (result)
  {
    v23 = result;
    v44 = v2;
    v24 = *&v2[OBJC_IVAR____TtC20ProductPageExtension25CarouselItemLockupOverlay_smallLockupView];
    v25 = sub_10000A5D4(&qword_100945590);
    (*(*(v25 - 8) + 56))(v21, 1, 1, v25);
    v26 = sub_10075F78C();
    (*(*(v26 - 8) + 56))(v18, 1, 1, v26);
    v27 = sub_1007628DC();
    (*(*(v27 - 8) + 56))(v15, 1, 1, v27);
    v28 = sub_10000A5D4(&unk_100946750);
    (*(*(v28 - 8) + 56))(v12, 1, 1, v28);
    v29 = sub_10076C54C();
    (*(*(v29 - 8) + 56))(v9, 1, 1, v29);
    sub_1004D0A60(v23, v24, v21, a2, 0, 0, v18, v15, v9, v12);
    sub_10000CFBC(v9, &unk_100949290);
    v24[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10026202C();
    [v24 setNeedsLayout];
    sub_10000CFBC(v12, &qword_10094F730);
    sub_10000CFBC(v15, &unk_1009492A0);
    sub_10000CFBC(v18, &unk_10094D210);
    sub_10000CFBC(v21, &unk_100946760);
    v30 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_headingLabel;
    v31 = *&v24[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_headingLabel];
    if (v31)
    {
      v32 = qword_100941110;
      v33 = v31;
      if (v32 != -1)
      {
        swift_once();
      }

      v34 = sub_10076D3DC();
      v35 = sub_10000A61C(v34, qword_1009A2128);
      v36 = *(v34 - 8);
      (*(v36 + 16))(v6, v35, v34);
      (*(v36 + 56))(v6, 0, 1, v34);
      sub_1007625DC();

      v37 = *&v24[v30];
      if (v37)
      {
        v38 = objc_opt_self();
        v39 = v37;
        v40 = [v38 secondaryLabelColor];
        [v39 setTextColor:v40];

        v41 = *&v24[v30];
        if (v41)
        {
          v42 = [v41 layer];
          [v42 setCompositingFilter:kCAFilterPlusL];
        }
      }
    }

    [v44 setNeedsLayout];
  }

  return result;
}

void sub_100280C08()
{
  v1 = sub_10076BF6C();
  __chkstk_darwin(v1 - 8);
  v2 = sub_10076BEDC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_10076709C())
  {
    v6 = sub_10076BB9C();

    if (v6)
    {
      sub_10076BEEC();
      v7 = sub_10076BE9C();
      (*(v3 + 8))(v5, v2);
      if (qword_10093FBE0 != -1)
      {
        swift_once();
      }

      v8 = sub_100763ADC();
      sub_10000A61C(v8, qword_10099DDA0);
      sub_1007639AC();
      sub_10076BFCC();
      v9 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension25CarouselItemLockupOverlay_smallLockupView);
      v10 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView;
      v11 = *(v9 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
      sub_10076BF7C();
      sub_10075FCCC();
      [v11 setContentMode:sub_10076BDBC()];
      sub_100764ADC();
      sub_10075FD0C();
      if (!sub_10076BE1C())
      {
        sub_100016F40(0, &qword_100942F10);
        sub_100770D5C();
      }

      sub_10075FB8C();

      [*(v9 + v10) setContentMode:v7];
      v12 = *(v9 + v10);
      sub_10075FD2C();
      sub_10010F890(&qword_100941820, &type metadata accessor for ArtworkView);
      v13 = v12;
      sub_100760B8C();
    }
  }
}

id sub_100280EF8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarouselItemLockupOverlay();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100280FC0(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + OBJC_IVAR____TtC20ProductPageExtension25CarouselItemLockupOverlay_selectionHandler);
  v5 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension25CarouselItemLockupOverlay_selectionHandler);
  *v4 = a1;
  v4[1] = a2;
  sub_10001CE50(a1);
  sub_10001CE50(a1);
  sub_1000167E0(v5);
  v6 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension25CarouselItemLockupOverlay_tapGestureRecognizer);
  if (a1)
  {
    sub_1000167E0(a1);
  }

  [v6 setEnabled:a1 != 0];

  return sub_1000167E0(a1);
}

void sub_100281078()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC20ProductPageExtension25CarouselItemLockupOverlay_smallLockupView) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
  sub_10075FD2C();
  sub_10010F890(&qword_100941820, &type metadata accessor for ArtworkView);
  v2 = v1;
  sub_100760BFC();
}

double sub_100281138(uint64_t a1, void *a2, double a3, double a4)
{
  v8 = sub_10076DFEC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v41[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v41[-v13];
  __chkstk_darwin(v15);
  v17 = &v41[-v16];
  __chkstk_darwin(v18);
  v20 = &v41[-v19];
  v21 = sub_10076DFAC();
  v47[3] = v21;
  v47[4] = &protocol witness table for Center;
  v22 = sub_10000DB7C(v47);
  (*(*(v21 - 8) + 16))(v22, a1, v21);
  v23 = sub_10010F998(a3, a4);
  v24 = [a2 traitCollection];
  v25 = [v24 horizontalSizeClass];

  if (v25 == 2)
  {
    v26 = 635.0;
  }

  else
  {
    v26 = a3;
  }

  if (v26 <= v23)
  {
    sub_10000A570(v47, v43);
    *(v20 + 3) = &type metadata for CGFloat;
    *(v20 + 4) = &protocol witness table for CGFloat;
    *v20 = v26;
    v35 = *(v9 + 104);
    v35(v20, enum case for Resize.Rule.replaced(_:), v8);
    v36 = enum case for Resize.Rule.unchanged(_:);
    v35(v17, enum case for Resize.Rule.unchanged(_:), v8);
    v35(v14, v36, v8);
    v35(v11, v36, v8);
    v45 = sub_10076DFFC();
    v46 = &protocol witness table for Resize;
    sub_10000DB7C(v44);
    sub_10076E00C();
  }

  else
  {
    sub_10076DACC();
    v28 = v27;
    v30 = v29;
    sub_10000A570(v47, v43);
    sub_10076DACC();
    v32 = v31;
    v34 = v33;
    v45 = sub_10076E0CC();
    v46 = &protocol witness table for Constrain;
    sub_10000DB7C(v44);
    v42 = v32 & 1;
    v41[0] = v34 & 1;
    sub_10076E0DC();
    v43[0] = v28 & 1;
    v42 = v30 & 1;
    sub_10076DAEC();
  }

  sub_10000CF78(v44, v45);
  v37 = [a2 traitCollection];
  sub_10076E0FC();
  v39 = v38;

  sub_10000CD74(v44);
  sub_10000CD74(v47);
  return v39;
}

void sub_100281544()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension25CarouselItemLockupOverlay_materialBackground;
  *(v0 + v1) = [objc_allocWithZone(UIVisualEffectView) init];
  v2 = OBJC_IVAR____TtC20ProductPageExtension25CarouselItemLockupOverlay_smallLockupView;
  type metadata accessor for SmallLockupView();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtC20ProductPageExtension25CarouselItemLockupOverlay_tapGestureRecognizer;
  *(v0 + v3) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v4 = (v0 + OBJC_IVAR____TtC20ProductPageExtension25CarouselItemLockupOverlay_selectionHandler);
  *v4 = 0;
  v4[1] = 0;
  sub_10077156C();
  __break(1u);
}

BOOL sub_100281620(void *a1)
{
  v2 = [a1 touchesForView:*(*(v1 + OBJC_IVAR____TtC20ProductPageExtension25CarouselItemLockupOverlay_smallLockupView) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton)];
  if (!v2)
  {
    return 1;
  }

  v3 = v2;
  sub_100016F40(0, &qword_10094F760);
  sub_10027D9C8();
  v4 = sub_10077039C();

  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = sub_10077135C();
  }

  else
  {
    v5 = *(v4 + 16);
  }

  return v5 == 0;
}

uint64_t sub_100281734(uint64_t a1, void *a2, char *a3)
{
  v62 = a3;
  v69 = sub_10076620C();
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v66 = v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = v5;
  __chkstk_darwin(v6);
  v67 = v50 - v7;
  v8 = sub_10076997C();
  v60 = *(v8 - 8);
  __chkstk_darwin(v8);
  v59 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076587C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10076D3DC();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1007661EC();
  v63 = *(v71 - 8);
  __chkstk_darwin(v71);
  v56 = v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v50 - v20;
  v70 = a2;
  sub_100104588(a1, a2, v50 - v20);
  v62 = v21;
  sub_1007661CC();
  v57 = sub_10076DDDC();
  swift_allocObject();
  v58 = sub_10076DDBC();
  sub_10076215C();
  v22 = (*(v11 + 88))(v13, v10);
  v72 = v14;
  v64 = v15;
  v61 = v8;
  if (v22 == enum case for PrivacyCategoryStyle.productPage(_:))
  {
    if (qword_100940DE8 != -1)
    {
      swift_once();
    }

    v23 = qword_1009A17B0;
LABEL_9:
    v24 = sub_10000A61C(v14, v23);
    (*(v15 + 16))(v17, v24, v14);
    goto LABEL_13;
  }

  if (v22 == enum case for PrivacyCategoryStyle.detailPage(_:))
  {
    if (qword_100940DF0 != -1)
    {
      swift_once();
    }

    v23 = qword_1009A17C8;
    goto LABEL_9;
  }

  if (qword_100940DE8 != -1)
  {
    swift_once();
  }

  v25 = sub_10000A61C(v14, qword_1009A17B0);
  (*(v15 + 16))(v17, v25, v14);
  (*(v11 + 8))(v13, v10);
LABEL_13:
  v26 = v70;
  v50[1] = a1;
  sub_10005312C();
  v27 = [v26 traitCollection];
  v28 = sub_100770B3C();

  sub_10076216C();
  v29 = sub_10076C04C();
  v79[3] = v29;
  v30 = sub_1002830A0(&qword_100943230, &type metadata accessor for Feature);
  v55 = v17;
  v53 = v30;
  v79[4] = v30;
  v31 = sub_10000DB7C(v79);
  v32 = *(*(v29 - 8) + 104);
  v52 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v51 = v32;
  v32(v31);
  v33 = v28;
  sub_10076C90C();
  sub_10000CD74(v79);
  v34 = v59;
  v54 = v33;
  sub_10076996C();
  sub_10076994C();
  v35 = *(v60 + 8);
  v36 = v61;
  v35(v34, v61);
  if (qword_100940DF8 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v72, qword_1009A17E0);
  v37 = [v70 traitCollection];
  v38 = sub_100770B3C();

  v78[0] = sub_10076218C();
  sub_10000A5D4(&unk_10094BB60);
  sub_10003BCA8();
  sub_10076FEFC();

  v78[3] = v29;
  v78[4] = v53;
  v39 = sub_10000DB7C(v78);
  v51(v39, v52, v29);
  v70 = v38;
  sub_10076C90C();
  sub_10000CD74(v78);
  sub_10076996C();
  sub_10076994C();
  v35(v34, v36);
  v40 = v63;
  v41 = v62;
  (*(v63 + 16))(v56, v62, v71);
  v76 = v57;
  v77 = &protocol witness table for LayoutViewPlaceholder;
  v75 = v58;
  sub_10000A570(v79, v74);
  sub_10000A570(v78, v73);

  v42 = v67;
  sub_1007661FC();
  v43 = v68;
  v44 = v66;
  v45 = v69;
  (*(v68 + 16))(v66, v42, v69);
  v46 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v47 = swift_allocObject();
  (*(v43 + 32))(v47 + v46, v44, v45);
  swift_allocObject();
  v48 = sub_10076DD9C();

  (*(v43 + 8))(v42, v45);
  sub_10000CD74(v78);
  sub_10000CD74(v79);
  (*(v64 + 8))(v55, v72);
  (*(v40 + 8))(v41, v71);
  return v48;
}

double sub_100282160(uint64_t a1)
{
  v2 = sub_1007637CC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v100 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_10076469C();
  v98 = *(v120 - 8);
  __chkstk_darwin(v120);
  v119 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076997C();
  v112 = *(v6 - 8);
  v113 = v6;
  __chkstk_darwin(v6);
  v111 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_10076D3DC();
  v107 = *(v109 - 8);
  __chkstk_darwin(v109);
  v106 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100762A3C();
  v101 = *(v9 - 1);
  v102 = v9;
  __chkstk_darwin(v9);
  v114 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v90 - v12;
  v14 = sub_1007637AC();
  v104 = *(v14 - 8);
  v105 = v14;
  __chkstk_darwin(v14);
  v99 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v108 = (&v90 - v17);
  v18 = sub_10076C38C();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076016C();
  sub_1002830A0(&qword_10094F868, &type metadata accessor for PrivacyType);
  v22 = a1;
  sub_10076332C();
  v23 = v131[0];
  if (!v131[0])
  {
    return 0.0;
  }

  v94 = v3;
  v95 = v2;
  swift_getKeyPath();
  sub_10076338C();

  sub_10076C2FC();
  v24 = *(v19 + 8);
  v116 = v21;
  v117 = v19 + 8;
  v118 = v18;
  v115 = v24;
  v24(v21, v18);
  v25 = sub_10076015C();
  sub_10076012C();
  v123 = v22;
  v26 = sub_100630CB4();
  sub_100495254(v25, v13, v26, v108);
  swift_unknownObjectRelease();

  v27 = v101;
  v28 = v102;
  v29 = *(v101 + 8);
  v122 = v13;
  v29(v13, v102);
  v30 = sub_10076DDDC();
  swift_allocObject();
  v31 = sub_10076DDBC();
  swift_allocObject();
  v92 = sub_10076DDBC();
  swift_allocObject();
  v91 = sub_10076DDBC();
  sub_10076378C();
  v121 = v30;
  swift_allocObject();
  v103 = sub_10076DDBC();
  v32 = v114;
  v110 = v23;
  sub_10076012C();
  v33 = (*(v27 + 88))(v32, v28);
  v93 = v31;
  if (v33 != enum case for PrivacyTypeStyle.productPage(_:))
  {
    v38 = v28;
    v39 = v106;
    if (v33 == enum case for PrivacyTypeStyle.intermediateDetailPage(_:) || v33 == enum case for PrivacyTypeStyle.detailPage(_:))
    {
      if (qword_100940DD0 != -1)
      {
        swift_once();
      }

      v43 = v109;
      v44 = sub_10000A61C(v109, qword_1009A1768);
      (*(v107 + 16))(v39, v44, v43);
      v42 = 4;
    }

    else
    {
      if (qword_100940DC8 != -1)
      {
        swift_once();
      }

      v40 = v109;
      v41 = sub_10000A61C(v109, qword_1009A1750);
      (*(v107 + 16))(v39, v41, v40);
      v29(v114, v38);
      v42 = 1;
    }

    v114 = v42;
    goto LABEL_15;
  }

  v34 = v106;
  if (qword_100940DC8 != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v35 = v109;
    v36 = sub_10000A61C(v109, qword_1009A1750);
    (*(v107 + 16))(v34, v36, v35);
    v114 = 1;
LABEL_15:
    sub_10005312C();
    swift_getKeyPath();
    sub_10076338C();

    v45 = v131[0];
    v46 = sub_100770B3C();

    sub_10076013C();
    v47 = sub_10076C04C();
    v131[3] = v47;
    v102 = sub_1002830A0(&qword_100943230, &type metadata accessor for Feature);
    v131[4] = v102;
    v48 = sub_10000DB7C(v131);
    v49 = *(v47 - 8);
    v50 = *(v49 + 104);
    LODWORD(v101) = enum case for Feature.measurement_with_labelplaceholder(_:);
    v96 = v49 + 104;
    v97 = v50;
    v50(v48);
    v51 = v46;
    sub_10076C90C();
    sub_10000CD74(v131);
    v52 = v111;
    v90 = v51;
    sub_10076996C();
    sub_10076994C();
    v53 = v113;
    v112 = *(v112 + 8);
    (v112)(v52, v113);
    if (qword_100940DD8 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v109, qword_1009A1780);
    swift_getKeyPath();
    sub_10076338C();

    v54 = v130[0];
    v55 = sub_100770B3C();

    sub_10076014C();
    v130[3] = v47;
    v130[4] = v102;
    v56 = sub_10000DB7C(v130);
    v97(v56, v101, v47);
    v34 = v55;
    sub_10076C90C();
    sub_10000CD74(v130);
    sub_10076996C();
    sub_10076994C();
    (v112)(v52, v53);
    v57 = sub_10076010C();
    v58 = v57;
    if (v57 >> 62)
    {
      v88 = v57;
      v89 = sub_10077158C();
      v58 = v88;
      v59 = v89;
    }

    else
    {
      v59 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v102 = v34;
    if (!v59)
    {
      break;
    }

    v60 = v58;
    v114 = type metadata accessor for PrivacyCategoryView();
    if (v59 >= 1)
    {
      v61 = 0;
      v62 = v60;
      v111 = (v60 & 0xC000000000000001);
      v63 = _swiftEmptyArrayStorage;
      v64 = (v98 + 8);
      v112 = v59;
      v113 = v60;
      v65 = v120;
      do
      {
        if (v111)
        {
          v66 = sub_10077149C();
        }

        else
        {
          v66 = *(v62 + 8 * v61 + 32);
        }

        v67 = v116;
        v68 = v119;
        sub_1007632FC();
        sub_10076460C();
        v69 = v67;
        v70 = *v64;
        (*v64)(v68, v65);
        sub_10076C24C();
        v72 = v71;
        v115(v69, v118);
        sub_1007632FC();
        v73 = sub_10076461C();
        v70(v68, v65);
        v74 = type metadata accessor for SnapshotPageTraitEnvironment();
        v75 = objc_allocWithZone(v74);
        v76 = &v75[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
        *v76 = v72;
        *(v76 + 1) = 0x7FEFFFFFFFFFFFFFLL;
        *&v75[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_traitCollection] = v73;
        v129.receiver = v75;
        v129.super_class = v74;
        v77 = objc_msgSendSuper2(&v129, "init");
        v78 = sub_100281734(v66, v77, v114);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v63 = sub_10049D2D0(0, v63[2] + 1, 1, v63);
        }

        v80 = v63[2];
        v79 = v63[3];
        if (v80 >= v79 >> 1)
        {
          v63 = sub_10049D2D0((v79 > 1), v80 + 1, 1, v63);
        }

        ++v61;

        v127 = v121;
        v128 = &protocol witness table for LayoutViewPlaceholder;
        *&v126 = v78;
        v63[2] = v80 + 1;
        sub_100012498(&v126, &v63[5 * v80 + 4]);
        v62 = v113;
      }

      while (v112 != v61);
      break;
    }

    __break(1u);
LABEL_34:
    swift_once();
  }

  swift_getKeyPath();
  sub_10076338C();

  v81 = v126;
  sub_10076E20C();

  v82 = v121;
  swift_allocObject();
  v83 = sub_10076DDBC();
  (*(v104 + 16))(v99, v108, v105);
  v127 = v82;
  v128 = &protocol witness table for LayoutViewPlaceholder;
  *&v126 = v93;
  v125[23] = v82;
  v125[24] = &protocol witness table for LayoutViewPlaceholder;
  v125[19] = &protocol witness table for LayoutViewPlaceholder;
  v125[20] = v92;
  v125[18] = v82;
  v125[14] = &protocol witness table for LayoutViewPlaceholder;
  v125[15] = v91;
  v125[13] = v82;
  v125[9] = &protocol witness table for LayoutViewPlaceholder;
  v125[10] = v83;
  v122 = v83;
  v125[8] = v82;
  v125[5] = v103;
  sub_10000A570(v131, v125);
  sub_10000A570(v130, &v124);

  sub_10076012C();
  v84 = v100;
  sub_1007637BC();
  swift_getKeyPath();
  sub_10076338C();

  sub_1002830A0(&qword_10094F870, &type metadata accessor for PrivacyTypeLayout);
  v85 = v95;
  sub_10076D2AC();
  v37 = v86;

  swift_unknownObjectRelease();

  (*(v94 + 8))(v84, v85);
  sub_10000CD74(v130);
  sub_10000CD74(v131);
  (*(v107 + 8))(v106, v109);
  (*(v104 + 8))(v108, v105);
  return v37;
}

uint64_t sub_1002830A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002830E8()
{
  v1 = sub_10076620C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100283170()
{
  sub_10076620C();

  return sub_100104DF4();
}

char *sub_1002831F8(char *a1, __int128 *a2, double a3, double a4)
{
  v5 = v4;
  swift_getObjectType();
  v10 = a2[5];
  v63 = a2[4];
  v64 = v10;
  v11 = a2[7];
  v65 = a2[6];
  v66 = v11;
  v12 = a2[1];
  v59 = *a2;
  v60 = v12;
  v13 = a2[3];
  v61 = a2[2];
  v62 = v13;
  swift_unknownObjectWeakInit();
  v14 = OBJC_IVAR____TtC20ProductPageExtension15VideoMirrorView_videoLayer;
  *&v5[v14] = [objc_allocWithZone(AVPlayerLayer) init];
  swift_unknownObjectWeakAssign();
  v49 = a1;
  if (a1)
  {
    a1 = *&a1[qword_1009602D0];
  }

  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC20ProductPageExtension10MirrorView_artworkLayer;
  *&v5[v15] = [objc_allocWithZone(CALayer) init];
  *&v5[OBJC_IVAR____TtC20ProductPageExtension10MirrorView_imageKVOContext] = 0;
  v5[OBJC_IVAR____TtC20ProductPageExtension10MirrorView_imageObserversAdded] = 0;
  swift_unknownObjectWeakAssign();
  *&v5[OBJC_IVAR____TtC20ProductPageExtension10MirrorView_contentsScaleFactor] = a3;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension10MirrorView_contentsVerticalOffset] = a4;
  v58.receiver = v5;
  v58.super_class = type metadata accessor for MirrorView();
  v16 = objc_msgSendSuper2(&v58, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v16 setClipsToBounds:1];
  [v16 setUserInteractionEnabled:0];
  v17 = OBJC_IVAR____TtC20ProductPageExtension10MirrorView_artworkLayer;
  [*&v16[OBJC_IVAR____TtC20ProductPageExtension10MirrorView_artworkLayer] setContentsGravity:kCAGravityResizeAspectFill];
  LODWORD(v18) = 1.0;
  [*&v16[v17] setOpacity:v18];
  [*&v16[v17] setAnchorPoint:{0.5, 0.5}];
  v19 = qword_10093F780;
  v20 = *&v16[v17];
  if (v19 != -1)
  {
    swift_once();
  }

  sub_10000A5D4(&qword_100948AE0);
  isa = sub_10076FE3C().super.isa;
  [v20 setActions:isa];

  v22 = *&v16[v17];
  v23 = objc_opt_self();
  v24 = v22;
  v25 = [v23 mainScreen];
  [v25 scale];
  v27 = v26;

  [v24 setContentsScale:v27];
  [*&v16[v17] setMasksToBounds:1];
  v28 = *&v16[v17];
  v29 = a2[5];
  v54 = a2[4];
  v55 = v29;
  v30 = a2[7];
  v56 = a2[6];
  v57 = v30;
  v31 = a2[1];
  v50 = *a2;
  v51 = v31;
  v32 = a2[3];
  v52 = a2[2];
  v53 = v32;
  [v28 setTransform:&v50];
  sub_1000F8300();
  v33 = [v16 layer];

  [v33 addSublayer:*&v16[v17]];
  v34 = v16;
  [v34 setClipsToBounds:1];
  [v34 setUserInteractionEnabled:0];
  v35 = OBJC_IVAR____TtC20ProductPageExtension15VideoMirrorView_videoLayer;
  [*&v34[OBJC_IVAR____TtC20ProductPageExtension15VideoMirrorView_videoLayer] setAnchorPoint:{0.5, 0.5}];
  v36 = *&v34[v35];
  v37 = sub_10076FE3C().super.isa;
  [v36 setActions:v37];

  v38 = *&v34[v35];
  v39 = [v23 mainScreen];
  [v39 scale];
  v41 = v40;

  [v38 setContentsScale:v41];
  [*&v34[v35] setMasksToBounds:1];
  [*&v34[v35] setContentsGravity:kCAGravityResizeAspectFill];
  v42 = *&v34[v35];
  v54 = v63;
  v55 = v64;
  v56 = v65;
  v57 = v66;
  v50 = v59;
  v51 = v60;
  v52 = v61;
  v53 = v62;
  [v42 setTransform:&v50];
  sub_100283DF4();
  v43 = [v34 layer];
  v44 = *&v16[v17];
  v45 = *&v34[v35];
  v46 = v44;

  [v43 insertSublayer:v45 below:v46];
  sub_10000A5D4(&unk_100945BF0);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_100783DD0;
  *(v47 + 32) = sub_10076E41C();
  *(v47 + 40) = &protocol witness table for _UITraitHDRHeadroomUsage;
  sub_100770C6C();

  swift_unknownObjectRelease();

  return v34;
}

void sub_1002837C8(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_unknownObjectWeakLoadStrong();

    if (v5)
    {
      swift_unknownObjectRelease();
      if (v5 == v1)
      {
        v6 = swift_unknownObjectWeakLoadStrong();
        if (v6)
        {
          v7 = v6;

          if (v7 == a1)
          {
            return;
          }
        }

        else if (!a1)
        {
          return;
        }

        v8 = swift_unknownObjectWeakLoadStrong();
        if (v8)
        {
          v9 = v8;
          sub_1005EC344(0, 0);
        }
      }
    }
  }
}

double sub_100283AA0(double a1)
{
  v2 = sub_10076481C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_1009467E0);
  __chkstk_darwin(v6 - 8);
  v8 = &v24 - v7;
  v9 = sub_10076D39C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v24 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v24 - v13;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = qword_1009A2558;
    v17 = Strong;
    swift_beginAccess();
    (*(v3 + 16))(v5, &v17[v16], v2);

    sub_10076476C();
    (*(v3 + 8))(v5, v2);
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      (*(v10 + 32))(v14, v8, v9);
      sub_10076D30C();
      a1 = v18;
LABEL_8:
      (*(v10 + 8))(v14, v9);
      return a1;
    }
  }

  else
  {
    (*(v10 + 56))(v8, 1, 1, v9);
  }

  sub_10023DEE4(v8);
  v19 = swift_unknownObjectWeakLoadStrong();
  if (v19)
  {
    v20 = v19;
    v21 = [v19 image];

    if (v21)
    {
      [v21 size];
      v14 = v24;
      sub_10076D3AC();
      sub_10076D30C();
      a1 = v22;

      goto LABEL_8;
    }
  }

  return a1;
}

void sub_100283DF4()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + qword_1009602D0);
  }

  else
  {
    v4 = 0;
  }

  v5 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    if (!v5)
    {

      goto LABEL_11;
    }

    sub_10007E008();
    v8 = v5;
    v9 = sub_100770EEC();

    if (v9)
    {

      goto LABEL_12;
    }

LABEL_9:
    v10 = sub_10076FF6C();
    v11 = OBJC_IVAR____TtC20ProductPageExtension10MirrorView_imageKVOContext;
    swift_beginAccess();
    [v5 removeObserver:v1 forKeyPath:v10 context:v1 + v11];
    swift_endAccess();

LABEL_11:
    sub_1000F8300();

    goto LABEL_12;
  }

  if (v5)
  {
    goto LABEL_9;
  }

LABEL_12:
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = v12;
    v14 = swift_unknownObjectRetain();
    sub_1005EC344(v14, &off_10088F3E0);
  }

  v15 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension15VideoMirrorView_videoLayer);
  v16 = swift_unknownObjectWeakLoadStrong();
  if (v16 && (v17 = v16, v18 = [v16 backgroundColor], v17, v18))
  {
    v19 = [v18 CGColor];
  }

  else
  {
    v19 = 0;
  }

  [v15 setBackgroundColor:v19];

  v20 = swift_unknownObjectWeakLoadStrong();
  if (v20)
  {
    v21 = v20;
    v22 = *(v20 + qword_1009602F0);
  }

  else
  {
    v22 = 0;
  }

  [v15 setPlayer:v22];

  v23 = swift_unknownObjectWeakLoadStrong();
  if (v23 && (v24 = *(v23 + qword_1009602F8), v25 = v23, v26 = v24, v25, v24))
  {
    v27 = [v26 videoGravity];
  }

  else
  {
    v27 = AVLayerVideoGravityResizeAspectFill;
  }

  [v15 setVideoGravity:v27];
}

void sub_1002840D0()
{
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension15VideoMirrorView_videoLayer);
}

id sub_100284110()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VideoMirrorView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1002841B4(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC20ProductPageExtension15VideoMirrorView_videoLayer];
  v2 = [a1 traitCollection];
  v3 = [v2 _headroomUsage];

  v4 = &CADynamicRangeHigh;
  if (v3 != 1)
  {
    v4 = &CADynamicRangeConstrainedHigh;
  }

  v5 = *v4;
  [v1 setPreferredDynamicRange:v5];
}

void sub_100284264()
{
  v1 = sub_10075FAEC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A5D4(&unk_10094FA00);
  __chkstk_darwin(v5 - 8);
  v35 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = __chkstk_darwin(v7).n128_u64[0];
  v10 = &v34 - v9;
  v11 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension28InAppMessagesContextProvider_accountStore);
  v12 = [v11 ams_activeiTunesAccount];
  v13 = [v12 ams_DSID];

  v14 = objc_opt_self();
  v15 = [v14 standardUserDefaults];
  v16 = v13;
  v17 = sub_10076FF6C();
  [v15 setObject:v16 forKey:v17];

  sub_10075DD6C();
  v18 = sub_10075DD7C();
  v19 = *(v18 - 8);
  v34 = *(v19 + 56);
  v34(v10, 0, 1, v18);
  sub_100286648(v10);
  sub_100767E6C();
  v20 = sub_10075FABC();
  (*(v2 + 8))(v4, v1);
  if ((v20 & 1) == 0)
  {
    return;
  }

  v21 = [v11 ams_activeiTunesAccount];
  v22 = [v21 ams_DSID];

  v23 = [v14 standardUserDefaults];
  v24 = sub_10072F418();

  if (v22)
  {
    if (v24)
    {
      sub_100016F40(0, &qword_1009492D0);
      v25 = v22;
      v26 = sub_100770EEC();

      v27 = v26 ^ 1;
LABEL_7:

      goto LABEL_10;
    }

    v27 = 1;
  }

  else
  {
    if (v24)
    {
      v27 = 1;
      goto LABEL_7;
    }

    v27 = 0;
  }

LABEL_10:
  v28 = [v14 standardUserDefaults];
  v29 = v35;
  sub_10072F510(v35);

  LODWORD(v28) = (*(v19 + 48))(v29, 1, v18);
  sub_10000CFBC(v29, &unk_10094FA00);
  if (v28 == 1 || (v27 & 1) != 0)
  {
    v30 = v22;
    v31 = [v14 standardUserDefaults];
    v32 = v30;
    v33 = sub_10076FF6C();
    [v31 setObject:v32 forKey:v33];

    sub_10075DD6C();
    v34(v10, 0, 1, v18);
    sub_100286828(v10);
  }
}

uint64_t sub_1002846D4()
{
  v1 = sub_10000A5D4(&unk_10094FA00);
  *&v2 = __chkstk_darwin(v1 - 8).n128_u64[0];
  v4 = &v12 - v3;
  v5 = [*(v0 + OBJC_IVAR____TtC20ProductPageExtension28InAppMessagesContextProvider_accountStore) ams_activeiTunesAccount];
  v6 = [v5 ams_DSID];

  v7 = [objc_opt_self() standardUserDefaults];
  v8 = v6;
  v9 = sub_10076FF6C();
  [v7 setObject:v8 forKey:v9];

  sub_10075DD6C();
  v10 = sub_10075DD7C();
  (*(*(v10 - 8) + 56))(v4, 0, 1, v10);
  return sub_100286A08(v4);
}

uint64_t sub_10028484C()
{
  v1 = sub_10000A5D4(&unk_10094FA00);
  *&v2 = __chkstk_darwin(v1 - 8).n128_u64[0];
  v4 = &v12 - v3;
  v5 = [*(v0 + OBJC_IVAR____TtC20ProductPageExtension28InAppMessagesContextProvider_accountStore) ams_activeiTunesAccount];
  v6 = [v5 ams_DSID];

  v7 = [objc_opt_self() standardUserDefaults];
  v8 = v6;
  v9 = sub_10076FF6C();
  [v7 setObject:v8 forKey:v9];

  sub_10075DD6C();
  v10 = sub_10075DD7C();
  (*(*(v10 - 8) + 56))(v4, 0, 1, v10);
  return sub_100286398(v4);
}

void sub_1002849C4(uint64_t a1)
{
  v2 = sub_10076779C();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for FamilyCircleLookupResult.notInFamily(_:))
  {
    (*(v3 + 96))(v6, v2);
    v8 = *v6;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      Strong[OBJC_IVAR____TtC20ProductPageExtension28InAppMessagesContextProvider_isInFamily] = 0;
    }

    swift_beginAccess();
    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      v10[OBJC_IVAR____TtC20ProductPageExtension28InAppMessagesContextProvider_isFamilyOrganizer] = 0;
    }

    swift_beginAccess();
    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      v11[OBJC_IVAR____TtC20ProductPageExtension28InAppMessagesContextProvider_canCreateFamily] = v8;
    }
  }

  else if (v7 == enum case for FamilyCircleLookupResult.inFamily(_:))
  {
    (*(v3 + 96))(v6, v2);
    v12 = *v6;
    swift_beginAccess();
    v13 = swift_unknownObjectWeakLoadStrong();
    if (v13)
    {
      v13[OBJC_IVAR____TtC20ProductPageExtension28InAppMessagesContextProvider_isInFamily] = 1;
    }

    swift_beginAccess();
    v14 = swift_unknownObjectWeakLoadStrong();
    if (v14)
    {
      v14[OBJC_IVAR____TtC20ProductPageExtension28InAppMessagesContextProvider_isFamilyOrganizer] = v12;
    }

    swift_beginAccess();
    v15 = swift_unknownObjectWeakLoadStrong();
    if (v15)
    {
      v15[OBJC_IVAR____TtC20ProductPageExtension28InAppMessagesContextProvider_canCreateFamily] = 0;
    }
  }

  else
  {
    (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_100284C58()
{
  if (qword_10093FF70 != -1)
  {
    swift_once();
  }

  v0 = sub_10076FD4C();
  sub_10000A61C(v0, qword_10099E8C0);
  sub_10000A5D4(&unk_100942A60);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100784500;
  sub_10076F27C();
  swift_getErrorValue();
  v4[3] = v3;
  v1 = sub_10000DB7C(v4);
  (*(*(v3 - 8) + 16))(v1);
  sub_10076F30C();
  sub_10000CFBC(v4, &unk_1009434C0);
  sub_10076FBEC();
}

uint64_t sub_100284E24(uint64_t a1, void *a2)
{
  v5 = sub_10000A5D4(&unk_10094FA00);
  __chkstk_darwin(v5 - 8);
  v7 = &v24 - v6;
  v8 = sub_10075DD7C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v24 - v13;
  sub_100286578(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10000CFBC(v7, &unk_10094FA00);
    return 0;
  }

  (*(v9 + 32))(v14, v7, v8);
  if (!a2)
  {
LABEL_9:
    (*(v9 + 8))(v14, v8);
    return 0;
  }

  v15 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension28InAppMessagesContextProvider_accountStore);
  v16 = a2;
  v17 = [v15 ams_activeiTunesAccount];
  if (!v17 || (v18 = v17, v19 = [v17 ams_DSID], v18, !v19))
  {

    goto LABEL_9;
  }

  sub_100016F40(0, &qword_10094D040);
  if (sub_100770EEC())
  {
    sub_10075DD6C();
    sub_10075DCEC();
    v21 = v20;

    v22 = *(v9 + 8);
    v22(v11, v8);
    v22(v14, v8);
    return v21;
  }

  (*(v9 + 8))(v14, v8);

  return 0;
}

double sub_1002850E4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_10000A5D4(&unk_10094FA00);
  __chkstk_darwin(v7 - 8);
  v9 = v47 - v8;
  v10 = sub_10075FAEC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 0xD000000000000012 && 0x80000001007DB6A0 == a2 || (sub_10077167C() & 1) != 0)
  {
    sub_100767E6C();
    v14 = sub_10075FABC();
LABEL_5:
    v15 = v14;
    (*(v11 + 8))(v13, v10);
    *(a3 + 24) = &type metadata for Bool;
    v17 = v15 & 1;
LABEL_6:
    *a3 = v17;
    return result;
  }

  if (a1 == 0xD000000000000016 && 0x80000001007DB680 == a2 || (sub_10077167C() & 1) != 0)
  {
    sub_100767E6C();
    v14 = sub_10075FADC();
    goto LABEL_5;
  }

  if (a1 == 0x696D61466E497369 && a2 == 0xEA0000000000796CLL || (sub_10077167C() & 1) != 0)
  {
    v18 = OBJC_IVAR____TtC20ProductPageExtension28InAppMessagesContextProvider_isInFamily;
    goto LABEL_15;
  }

  if (a1 == 0xD000000000000011 && 0x80000001007DB660 == a2 || (sub_10077167C() & 1) != 0)
  {
    v18 = OBJC_IVAR____TtC20ProductPageExtension28InAppMessagesContextProvider_isFamilyOrganizer;
    goto LABEL_15;
  }

  if (a1 == 0x74616572436E6163 && a2 == 0xEF796C696D614665 || (sub_10077167C() & 1) != 0)
  {
    v18 = OBJC_IVAR____TtC20ProductPageExtension28InAppMessagesContextProvider_canCreateFamily;
LABEL_15:
    v19 = *(v3 + v18);
    if (v19 != 2)
    {
      *(a3 + 24) = &type metadata for Bool;
      v17 = v19 & 1;
      goto LABEL_6;
    }

    goto LABEL_16;
  }

  if (a1 == 0xD000000000000011 && 0x80000001007D1D40 == a2 || (sub_10077167C() & 1) != 0 || a1 == 0xD000000000000014 && 0x80000001007DB640 == a2 || (sub_10077167C() & 1) != 0)
  {
    goto LABEL_16;
  }

  v47[1] = v3;
  if (a1 == 0xD00000000000001ELL && 0x80000001007DB620 == a2 || (sub_10077167C() & 1) != 0)
  {
    v20 = objc_opt_self();
    v21 = [v20 standardUserDefaults];
    sub_10072F068(v9);

    v22 = [v20 standardUserDefaults];
    v23 = sub_10072EF70();
    goto LABEL_36;
  }

  if (a1 == 0xD00000000000001BLL && 0x80000001007DB600 == a2 || (sub_10077167C() & 1) != 0)
  {
    v28 = objc_opt_self();
    v29 = [v28 standardUserDefaults];
    sub_10072EE14(v9);

    v22 = [v28 standardUserDefaults];
    v23 = sub_10072ED1C();
    goto LABEL_36;
  }

  if (a1 == 0xD000000000000023 && 0x80000001007DB5D0 == a2 || (sub_10077167C() & 1) != 0)
  {
    v30 = objc_opt_self();
    v31 = [v30 standardUserDefaults];
    sub_10072F2BC(v9);

    v22 = [v30 standardUserDefaults];
    v23 = sub_10072F1C4();
    goto LABEL_36;
  }

  if (a1 == 0xD00000000000002BLL && 0x80000001007DB5A0 == a2 || (sub_10077167C() & 1) != 0)
  {
    v32 = objc_opt_self();
    v33 = [v32 standardUserDefaults];
    sub_10072F510(v9);

    v22 = [v32 standardUserDefaults];
    v23 = sub_10072F418();
LABEL_36:
    v24 = v23;

    v25 = sub_100284E24(v9, v24);
    v27 = v26;

    sub_10000CFBC(v9, &unk_10094FA00);
    if ((v27 & 1) == 0)
    {
      *(a3 + 24) = &type metadata for Double;
      *a3 = v25;
      return result;
    }

    goto LABEL_16;
  }

  if ((a1 != 0xD000000000000033 || 0x80000001007DB560 != a2) && (sub_10077167C() & 1) == 0)
  {
    v46 = sub_100286BE8();
    if (v46 != 2)
    {
      *(a3 + 24) = &type metadata for Bool;
      v17 = v46 & 1;
      goto LABEL_6;
    }

    goto LABEL_16;
  }

  v34 = objc_opt_self();
  v35 = [v34 standardUserDefaults];
  sub_10072F2BC(v9);

  v36 = [v34 standardUserDefaults];
  v37 = sub_10072F1C4();

  v38 = COERCE_DOUBLE(sub_100284E24(v9, v37));
  LOBYTE(v36) = v39;

  sub_10000CFBC(v9, &unk_10094FA00);
  if (v36 & 1) != 0 || (v40 = [v34 standardUserDefaults], sub_10072F510(v9), v40, v41 = objc_msgSend(v34, "standardUserDefaults"), v42 = sub_10072F418(), v41, v43 = COERCE_DOUBLE(sub_100284E24(v9, v42)), v45 = v44, v42, sub_10000CFBC(v9, &unk_10094FA00), (v45))
  {
LABEL_16:
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  result = v38 - v43;
  *(a3 + 24) = &type metadata for Double;
  *a3 = v38 - v43;
  return result;
}

uint64_t sub_100285A24()
{
  v0 = sub_10076F08C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076F0CC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016F40(0, &qword_1009471F0);
  v8 = sub_10077068C();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_100286620;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009AEDC;
  aBlock[3] = &unk_10088F420;
  v10 = _Block_copy(aBlock);

  sub_10076F0AC();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000717C8();
  sub_10000A5D4(&unk_10094E1C0);
  sub_1000852B8();
  sub_1007712CC();
  sub_10077069C();
  _Block_release(v10);

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

void sub_100285CBC()
{
  v0 = sub_10076670C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1007666FC();
    sub_1007666EC();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = sub_100016F40(0, &qword_1009471F0);
    v7 = sub_10077068C();
    v8[3] = v6;
    v8[4] = &protocol witness table for OS_dispatch_queue;
    v8[0] = v7;
    sub_10076FC6C();

    (*(v1 + 8))(v3, v0);
    sub_10000CD74(v8);
  }
}

uint64_t type metadata accessor for InAppMessagesMetricsDelegate()
{
  result = qword_10094F9F0;
  if (!qword_10094F9F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100286308()
{
  result = sub_10076F68C();
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

uint64_t sub_100286398(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_10094FA00);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v14 - v6;
  v8 = [objc_opt_self() standardUserDefaults];
  sub_100286578(a1, v7);
  sub_100286578(v7, v4);
  v9 = sub_10075DD7C();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v4, 1, v9) != 1)
  {
    isa = sub_10075DCFC().super.isa;
    (*(v10 + 8))(v4, v9);
  }

  v12 = sub_10076FF6C();
  [v8 setObject:isa forKey:v12];

  swift_unknownObjectRelease();
  sub_10000CFBC(a1, &unk_10094FA00);
  return sub_10000CFBC(v7, &unk_10094FA00);
}

uint64_t sub_100286578(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_10094FA00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002865E8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100286628(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100286648(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_10094FA00);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v14 - v6;
  v8 = [objc_opt_self() standardUserDefaults];
  sub_100286578(a1, v7);
  sub_100286578(v7, v4);
  v9 = sub_10075DD7C();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v4, 1, v9) != 1)
  {
    isa = sub_10075DCFC().super.isa;
    (*(v10 + 8))(v4, v9);
  }

  v12 = sub_10076FF6C();
  [v8 setObject:isa forKey:v12];

  swift_unknownObjectRelease();
  sub_10000CFBC(a1, &unk_10094FA00);
  return sub_10000CFBC(v7, &unk_10094FA00);
}

uint64_t sub_100286828(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_10094FA00);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v14 - v6;
  v8 = [objc_opt_self() standardUserDefaults];
  sub_100286578(a1, v7);
  sub_100286578(v7, v4);
  v9 = sub_10075DD7C();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v4, 1, v9) != 1)
  {
    isa = sub_10075DCFC().super.isa;
    (*(v10 + 8))(v4, v9);
  }

  v12 = sub_10076FF6C();
  [v8 setObject:isa forKey:v12];

  swift_unknownObjectRelease();
  sub_10000CFBC(a1, &unk_10094FA00);
  return sub_10000CFBC(v7, &unk_10094FA00);
}

uint64_t sub_100286A08(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_10094FA00);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v14 - v6;
  v8 = [objc_opt_self() standardUserDefaults];
  sub_100286578(a1, v7);
  sub_100286578(v7, v4);
  v9 = sub_10075DD7C();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v4, 1, v9) != 1)
  {
    isa = sub_10075DCFC().super.isa;
    (*(v10 + 8))(v4, v9);
  }

  v12 = sub_10076FF6C();
  [v8 setObject:isa forKey:v12];

  swift_unknownObjectRelease();
  sub_10000CFBC(a1, &unk_10094FA00);
  return sub_10000CFBC(v7, &unk_10094FA00);
}

uint64_t sub_100286BE8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_10076FF9C();
  }

  v2 = objc_allocWithZone(FAEligiblityEvaluationRequest);
  v3 = sub_10076FF6C();
  v4 = sub_10076FF6C();

  v5 = [v2 initWithPropertyName:v3 bundleID:v4];

  v12[0] = 0;
  v6 = [v5 fetchEligibilityWithError:v12];
  if (v12[0])
  {
    v7 = qword_10093FF70;
    v8 = v12[0];
    if (v7 != -1)
    {
      swift_once();
    }

    v9 = sub_10076FD4C();
    sub_10000A61C(v9, qword_10099E8C0);
    sub_10000A5D4(&unk_100942A60);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100784500;
    sub_10076F27C();
    v12[3] = sub_100016F40(0, &unk_10094FA10);
    v12[0] = v8;
    v10 = v8;
    sub_10076F30C();
    sub_10000CFBC(v12, &unk_1009434C0);
    sub_10076FBEC();
  }

  if (v6 == 2)
  {
    return 1;
  }

  else
  {
    return 2 * (v6 != 1);
  }
}

uint64_t sub_100286EEC()
{
  v0 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_10000DB18(v0, qword_10099DF28);
  v1 = sub_10000A61C(v0, qword_10099DF28);
  return sub_100286F54(0, v1);
}

uint64_t sub_100286F54@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_10076D1AC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v29 = a1;
  }

  else
  {
    sub_1000325F0();
    v29 = sub_100770E1C();
  }

  v8 = qword_100940990;
  v9 = a1;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = sub_10076D3DC();
  v11 = sub_10000A61C(v10, qword_1009A0AC0);
  v28 = v11;
  v12 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v13 = v12[6];
  v14 = *(v10 - 8);
  v15 = *(v14 + 16);
  v27 = v15;
  v24[1] = v14 + 16;
  v15(a2 + v13, v11, v10);
  v15(v7, v11, v10);
  v26 = enum case for FontSource.useCase(_:);
  v25 = v5[13];
  v25(v7);
  v31 = v4;
  v32 = &protocol witness table for FontSource;
  v16 = sub_10000DB7C(v30);
  v17 = v5[2];
  v17(v16, v7, v4);
  sub_10076D9BC();
  v18 = v5[1];
  v18(v7, v4);
  v27(v7, v28, v10);
  (v25)(v7, v26, v4);
  v31 = v4;
  v32 = &protocol witness table for FontSource;
  v19 = sub_10000DB7C(v30);
  v17(v19, v7, v4);
  sub_10076D9BC();
  v18(v7, v4);
  v20 = (a2 + v12[12]);
  v21 = sub_10076D67C();
  v20[3] = v21;
  v20[4] = &protocol witness table for ZeroDimension;
  sub_10000DB7C(v20);
  sub_10076D66C();
  v22 = (a2 + v12[13]);
  v22[3] = v21;
  v22[4] = &protocol witness table for ZeroDimension;
  sub_10000DB7C(v22);
  result = sub_10076D66C();
  a2[1] = 0;
  a2[2] = 0;
  *a2 = v29;
  *(a2 + v12[7]) = 0;
  *(a2 + v12[8]) = 1077936128;
  *(a2 + v12[11]) = 1098907648;
  return result;
}

uint64_t sub_100287288()
{
  v0 = sub_10076D1AC();
  v37 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v29 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10076D9AC();
  v40 = *(v3 - 8);
  v41 = v3;
  __chkstk_darwin(v3);
  v39 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v42 = &v29 - v6;
  v7 = sub_10076D3DC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_10000DB18(v11, qword_10099DF40);
  v38 = v11;
  v12 = sub_10000A61C(v11, qword_10099DF40);
  sub_1000325F0();
  v36 = sub_100770CFC();
  v13 = sub_10076FF9C();
  v34 = v14;
  v35 = v13;
  if (qword_100940990 != -1)
  {
    swift_once();
  }

  v15 = sub_10000A61C(v7, qword_1009A0AC0);
  v43 = v7;
  v16 = *(v8 + 16);
  v33 = v10;
  v16(v10, v15, v7);
  v16(v2, v15, v7);
  v31 = enum case for FontSource.useCase(_:);
  v17 = v37;
  v30 = *(v37 + 104);
  v30(v2);
  v48 = v0;
  v49 = &protocol witness table for FontSource;
  v18 = sub_10000DB7C(&v47);
  v32 = v8;
  v29 = *(v17 + 16);
  v29(v18, v2, v0);
  sub_10076D9BC();
  v19 = *(v17 + 8);
  v19(v2, v0);
  v16(v2, v15, v43);
  (v30)(v2, v31, v0);
  v48 = v0;
  v49 = &protocol witness table for FontSource;
  v20 = sub_10000DB7C(&v47);
  v29(v20, v2, v0);
  v21 = v39;
  sub_10076D9BC();
  v19(v2, v0);
  v22 = sub_10076D67C();
  v48 = v22;
  v49 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v47);
  sub_10076D66C();
  v45 = v22;
  v46 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v44);
  sub_10076D66C();
  v23 = v35;
  *v12 = v36;
  *(v12 + 1) = v23;
  v24 = v33;
  *(v12 + 2) = v34;
  v25 = v38;
  (*(v32 + 32))(&v12[v38[6]], v24, v43);
  *&v12[v25[7]] = 0;
  *&v12[v25[8]] = 1077936128;
  v26 = v41;
  v27 = *(v40 + 32);
  v27(&v12[v25[9]], v42, v41);
  v27(&v12[v25[10]], v21, v26);
  *&v12[v25[11]] = 1098907648;
  sub_10003F19C(&v47, &v12[v25[12]]);
  return sub_10003F19C(&v44, &v12[v25[13]]);
}

uint64_t sub_100287770()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D9AC();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v33 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v25 - v7;
  v8 = sub_10076D3DC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_10000DB18(v12, qword_10099DF58);
  v32 = v12;
  v13 = sub_10000A61C(v12, qword_10099DF58);
  sub_1000325F0();
  v31 = sub_100770CFC();
  if (qword_100940998 != -1)
  {
    swift_once();
  }

  v14 = sub_10000A61C(v8, qword_1009A0AD8);
  v36 = v8;
  v15 = *(v9 + 16);
  v30 = v11;
  v15(v11, v14, v8);
  v15(v3, v14, v8);
  v28 = enum case for FontSource.useCase(_:);
  v29 = v9;
  v27 = v1[13];
  v27(v3);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v16 = sub_10000DB7C(&v41);
  v26 = v1[2];
  v26(v16, v3, v0);
  sub_10076D9BC();
  v17 = v1[1];
  v17(v3, v0);
  v15(v3, v14, v36);
  (v27)(v3, v28, v0);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v18 = sub_10000DB7C(&v41);
  v26(v18, v3, v0);
  v19 = v33;
  sub_10076D9BC();
  v17(v3, v0);
  v20 = sub_10076D67C();
  v42 = v20;
  v43 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v41);
  sub_10076D66C();
  v39 = v20;
  v40 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v38);
  sub_10076D66C();
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  v21 = v32;
  *v13 = v31;
  (*(v29 + 32))(&v13[v21[6]], v30, v36);
  *&v13[v21[7]] = 0;
  *&v13[v21[8]] = 1090519040;
  v22 = v35;
  v23 = *(v34 + 32);
  v23(&v13[v21[9]], v37, v35);
  v23(&v13[v21[10]], v19, v22);
  *&v13[v21[11]] = 0;
  sub_10003F19C(&v41, &v13[v21[12]]);
  return sub_10003F19C(&v38, &v13[v21[13]]);
}

uint64_t sub_100287C1C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_10076D1AC();
  v40 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  __chkstk_darwin(v7);
  v9 = (v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_10076D3DC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1009409B8 != -1)
  {
    swift_once();
  }

  v14 = sub_10000A61C(v10, qword_1009A0B38);
  v42 = v11;
  v16 = *(v11 + 16);
  v15 = v11 + 16;
  v17 = v16;
  v16(v13, v14, v10);
  v43 = v9;
  sub_100288094(v9);
  v18 = sub_1007706EC();
  sub_1000325F0();
  if (v18)
  {
    v19 = sub_100770CFC();
  }

  else
  {
    v19 = sub_100770D1C();
  }

  v41 = v19;
  v17(a2 + v7[6], v13, v10);
  v38 = v17;
  sub_10028DCE8(a1);
  v17(v6, v13, v10);
  v37 = enum case for FontSource.useCase(_:);
  v20 = v40;
  v36 = *(v40 + 104);
  v36(v6);
  v46 = v4;
  v47 = &protocol witness table for FontSource;
  v21 = sub_10000DB7C(v45);
  v44 = v10;
  v35[1] = v15;
  v22 = *(v20 + 16);
  v22(v21, v6, v4);
  sub_10076D9BC();
  v39 = v13;
  v23 = *(v20 + 8);
  v23(v6, v4);
  v38(v6, v13, v44);
  (v36)(v6, v37, v4);
  v46 = v4;
  v47 = &protocol witness table for FontSource;
  v24 = sub_10000DB7C(v45);
  v22(v24, v6, v4);
  sub_10076D9BC();
  v23(v6, v4);
  v25 = v7[9];
  v26 = (a2 + v7[12]);
  v27 = sub_10076D9AC();
  v26[3] = v27;
  v26[4] = &protocol witness table for StaticDimension;
  v28 = sub_10000DB7C(v26);
  v29 = *(*(v27 - 8) + 16);
  v30 = v43;
  v29(v28, v43 + v25, v27);
  v31 = v7[10];
  v32 = (a2 + v7[13]);
  v32[3] = v27;
  v32[4] = &protocol witness table for StaticDimension;
  v33 = sub_10000DB7C(v32);
  v29(v33, (v30 + v31), v27);
  sub_10011BAB4(v30);
  result = (*(v42 + 8))(v39, v44);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = v41;
  *(a2 + v7[7]) = 0;
  *(a2 + v7[8]) = 1098907648;
  *(a2 + v7[11]) = 0;
  return result;
}

uint64_t sub_100288094@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10076D1AC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000325F0();
  v25 = sub_100770D1C();
  if (qword_1009409B0 != -1)
  {
    swift_once();
  }

  v6 = sub_10076D3DC();
  v7 = sub_10000A61C(v6, qword_1009A0B20);
  v24 = v7;
  v8 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v9 = v8[6];
  v10 = *(v6 - 8);
  v11 = *(v10 + 16);
  v23 = v11;
  v20[1] = v10 + 16;
  v11(a1 + v9, v7, v6);
  v11(v5, v7, v6);
  v22 = enum case for FontSource.useCase(_:);
  v21 = v3[13];
  v21(v5);
  v27 = v2;
  v28 = &protocol witness table for FontSource;
  v12 = sub_10000DB7C(v26);
  v13 = v3[2];
  v13(v12, v5, v2);
  sub_10076D9BC();
  v14 = v3[1];
  v14(v5, v2);
  v23(v5, v24, v6);
  (v21)(v5, v22, v2);
  v27 = v2;
  v28 = &protocol witness table for FontSource;
  v15 = sub_10000DB7C(v26);
  v13(v15, v5, v2);
  sub_10076D9BC();
  v14(v5, v2);
  v16 = (a1 + v8[12]);
  v17 = sub_10076D67C();
  v16[3] = v17;
  v16[4] = &protocol witness table for ZeroDimension;
  sub_10000DB7C(v16);
  sub_10076D66C();
  v18 = (a1 + v8[13]);
  v18[3] = v17;
  v18[4] = &protocol witness table for ZeroDimension;
  sub_10000DB7C(v18);
  result = sub_10076D66C();
  a1[1] = 0;
  a1[2] = 0;
  *a1 = v25;
  *(a1 + v8[7]) = 0;
  *(a1 + v8[8]) = 1098907648;
  *(a1 + v8[11]) = 0;
  return result;
}

uint64_t sub_1002883A4()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D9AC();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v33 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v25 - v7;
  v8 = sub_10076D3DC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_10000DB18(v12, qword_10099DF70);
  v32 = v12;
  v13 = sub_10000A61C(v12, qword_10099DF70);
  sub_1000325F0();
  v31 = sub_100770D1C();
  if (qword_1009409A0 != -1)
  {
    swift_once();
  }

  v14 = sub_10000A61C(v8, qword_1009A0AF0);
  v36 = v8;
  v15 = *(v9 + 16);
  v30 = v11;
  v15(v11, v14, v8);
  v15(v3, v14, v8);
  v28 = enum case for FontSource.useCase(_:);
  v29 = v9;
  v27 = v1[13];
  v27(v3);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v16 = sub_10000DB7C(&v41);
  v26 = v1[2];
  v26(v16, v3, v0);
  sub_10076D9BC();
  v17 = v1[1];
  v17(v3, v0);
  v15(v3, v14, v36);
  (v27)(v3, v28, v0);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v18 = sub_10000DB7C(&v41);
  v26(v18, v3, v0);
  v19 = v33;
  sub_10076D9BC();
  v17(v3, v0);
  v20 = sub_10076D67C();
  v42 = v20;
  v43 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v41);
  sub_10076D66C();
  v39 = v20;
  v40 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v38);
  sub_10076D66C();
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  v21 = v32;
  *v13 = v31;
  (*(v29 + 32))(&v13[v21[6]], v30, v36);
  *&v13[v21[7]] = 0;
  *&v13[v21[8]] = 1090519040;
  v22 = v35;
  v23 = *(v34 + 32);
  v23(&v13[v21[9]], v37, v35);
  v23(&v13[v21[10]], v19, v22);
  *&v13[v21[11]] = 0;
  sub_10003F19C(&v41, &v13[v21[12]]);
  return sub_10003F19C(&v38, &v13[v21[13]]);
}

uint64_t sub_100288854()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D9AC();
  v25 = *(v4 - 8);
  v26 = v4;
  __chkstk_darwin(v4);
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v28 = &v23 - v7;
  v8 = sub_10076D3DC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v27 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_10000DB18(v11, qword_10099DF88);
  v12 = sub_10000A61C(v11, qword_10099DF88);
  sub_1000325F0();
  v23 = sub_100770D1C();
  if (qword_1009409A8 != -1)
  {
    swift_once();
  }

  v13 = sub_10000A61C(v8, qword_1009A0B08);
  v14 = *(v9 + 16);
  v14(v27, v13, v8);
  v14(v3, v13, v8);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v33 = v0;
  v34 = &protocol witness table for FontSource;
  v15 = sub_10000DB7C(&v32);
  (*(v1 + 16))(v15, v3, v0);
  sub_10076D9BC();
  (*(v1 + 8))(v3, v0);
  if (qword_1009411F0 != -1)
  {
    swift_once();
  }

  v16 = v26;
  v17 = sub_10000A61C(v26, qword_1009A2350);
  v19 = v24;
  v18 = v25;
  (*(v25 + 16))(v24, v17, v16);
  v20 = sub_10076D67C();
  v33 = v20;
  v34 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v32);
  sub_10076D66C();
  v30 = v20;
  v31 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v29);
  sub_10076D66C();
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  *v12 = v23;
  (*(v9 + 32))(&v12[v11[6]], v27, v8);
  *&v12[v11[7]] = 0;
  *&v12[v11[8]] = 1090519040;
  v21 = *(v18 + 32);
  v21(&v12[v11[9]], v28, v16);
  v21(&v12[v11[10]], v19, v16);
  *&v12[v11[11]] = 0;
  sub_10003F19C(&v32, &v12[v11[12]]);
  return sub_10003F19C(&v29, &v12[v11[13]]);
}

uint64_t sub_100288CAC()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D9AC();
  v25 = *(v4 - 8);
  v26 = v4;
  __chkstk_darwin(v4);
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v28 = &v23 - v7;
  v8 = sub_10076D3DC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v27 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_10000DB18(v11, qword_10099DFA0);
  v12 = sub_10000A61C(v11, qword_10099DFA0);
  sub_1000325F0();
  v23 = sub_100770CFC();
  if (qword_1009409C0 != -1)
  {
    swift_once();
  }

  v13 = sub_10000A61C(v8, qword_1009A0B50);
  v14 = *(v9 + 16);
  v14(v27, v13, v8);
  v14(v3, v13, v8);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v33 = v0;
  v34 = &protocol witness table for FontSource;
  v15 = sub_10000DB7C(&v32);
  (*(v1 + 16))(v15, v3, v0);
  sub_10076D9BC();
  (*(v1 + 8))(v3, v0);
  if (qword_100941230 != -1)
  {
    swift_once();
  }

  v16 = v26;
  v17 = sub_10000A61C(v26, qword_1009A2410);
  v19 = v24;
  v18 = v25;
  (*(v25 + 16))(v24, v17, v16);
  v20 = sub_10076D67C();
  v33 = v20;
  v34 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v32);
  sub_10076D66C();
  v30 = v20;
  v31 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v29);
  sub_10076D66C();
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  *v12 = v23;
  (*(v9 + 32))(&v12[v11[6]], v27, v8);
  *&v12[v11[7]] = 0;
  *&v12[v11[8]] = 1090519040;
  v21 = *(v18 + 32);
  v21(&v12[v11[9]], v28, v16);
  v21(&v12[v11[10]], v19, v16);
  *&v12[v11[11]] = 1102053376;
  sub_10003F19C(&v32, &v12[v11[12]]);
  return sub_10003F19C(&v29, &v12[v11[13]]);
}

uint64_t sub_100289108()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D9AC();
  v25 = *(v4 - 8);
  v26 = v4;
  __chkstk_darwin(v4);
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v28 = &v23 - v7;
  v8 = sub_10076D3DC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v27 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_10000DB18(v11, qword_10099DFB8);
  v12 = sub_10000A61C(v11, qword_10099DFB8);
  sub_1000325F0();
  v23 = sub_100770CFC();
  if (qword_1009409C0 != -1)
  {
    swift_once();
  }

  v13 = sub_10000A61C(v8, qword_1009A0B50);
  v14 = *(v9 + 16);
  v14(v27, v13, v8);
  v14(v3, v13, v8);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v33 = v0;
  v34 = &protocol witness table for FontSource;
  v15 = sub_10000DB7C(&v32);
  (*(v1 + 16))(v15, v3, v0);
  sub_10076D9BC();
  (*(v1 + 8))(v3, v0);
  if (qword_100941230 != -1)
  {
    swift_once();
  }

  v16 = v26;
  v17 = sub_10000A61C(v26, qword_1009A2410);
  v19 = v24;
  v18 = v25;
  (*(v25 + 16))(v24, v17, v16);
  v20 = sub_10076D67C();
  v33 = v20;
  v34 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v32);
  sub_10076D66C();
  v30 = v20;
  v31 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v29);
  sub_10076D66C();
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  *v12 = v23;
  (*(v9 + 32))(&v12[v11[6]], v27, v8);
  *&v12[v11[7]] = 0;
  *&v12[v11[8]] = 1090519040;
  v21 = *(v18 + 32);
  v21(&v12[v11[9]], v28, v16);
  v21(&v12[v11[10]], v19, v16);
  *&v12[v11[11]] = 1102053376;
  sub_10003F19C(&v32, &v12[v11[12]]);
  return sub_10003F19C(&v29, &v12[v11[13]]);
}

uint64_t sub_100289564()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D9AC();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v33 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v25 - v7;
  v8 = sub_10076D3DC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_10000DB18(v12, qword_10099DFD0);
  v32 = v12;
  v13 = sub_10000A61C(v12, qword_10099DFD0);
  sub_1000325F0();
  v31 = sub_100770CFC();
  if (qword_1009409C0 != -1)
  {
    swift_once();
  }

  v14 = sub_10000A61C(v8, qword_1009A0B50);
  v15 = *(v9 + 16);
  v30 = v11;
  v15(v11, v14, v8);
  v15(v3, v14, v8);
  v27 = enum case for FontSource.useCase(_:);
  v36 = v8;
  v28 = v1[13];
  v28(v3);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v16 = sub_10000DB7C(&v41);
  v29 = v9;
  v17 = v1[2];
  v17(v16, v3, v0);
  sub_10076D9BC();
  v26 = v1[1];
  v26(v3, v0);
  v15(v3, v14, v36);
  (v28)(v3, v27, v0);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v18 = sub_10000DB7C(&v41);
  v17(v18, v3, v0);
  v19 = v33;
  sub_10076D9BC();
  v26(v3, v0);
  v20 = sub_10076D67C();
  v42 = v20;
  v43 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v41);
  sub_10076D66C();
  v39 = v20;
  v40 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v38);
  sub_10076D66C();
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  v21 = v32;
  *v13 = v31;
  (*(v29 + 32))(&v13[v21[6]], v30, v36);
  *&v13[v21[7]] = 0;
  *&v13[v21[8]] = 1090519040;
  v22 = v35;
  v23 = *(v34 + 32);
  v23(&v13[v21[9]], v37, v35);
  v23(&v13[v21[10]], v19, v22);
  *&v13[v21[11]] = 1102053376;
  sub_10003F19C(&v41, &v13[v21[12]]);
  return sub_10003F19C(&v38, &v13[v21[13]]);
}

uint64_t sub_100289A34(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10076D1AC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076D9AC();
  v40 = *(v7 - 8);
  v41 = v7;
  __chkstk_darwin(v7);
  v39 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v30 - v10;
  v12 = sub_10076D3DC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v42 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_10000DB18(v15, a2);
  v16 = sub_10000A61C(v15, a2);
  sub_1000325F0();
  v38 = sub_100770CFC();
  if (qword_1009409C0 != -1)
  {
    swift_once();
  }

  v17 = sub_10000A61C(v12, qword_1009A0B50);
  v37 = v13;
  v18 = *(v13 + 16);
  v18(v42, v17, v12);
  v18(v6, v17, v12);
  v19 = v4[13];
  v34 = enum case for FontSource.useCase(_:);
  v33 = v19;
  v19(v6);
  v47 = v3;
  v48 = &protocol witness table for FontSource;
  v20 = sub_10000DB7C(&v46);
  v36 = v12;
  v32 = v4[2];
  v32(v20, v6, v3);
  v35 = v11;
  sub_10076D9BC();
  v31 = v4[1];
  v31(v6, v3);
  if (qword_1009409A0 != -1)
  {
    swift_once();
  }

  v21 = v36;
  v22 = sub_10000A61C(v36, qword_1009A0AF0);
  v18(v6, v22, v21);
  v33(v6, v34, v3);
  v47 = v3;
  v48 = &protocol witness table for FontSource;
  v23 = sub_10000DB7C(&v46);
  v32(v23, v6, v3);
  v24 = v39;
  sub_10076D9BC();
  v31(v6, v3);
  v25 = sub_10076D67C();
  v47 = v25;
  v48 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v46);
  sub_10076D66C();
  v44 = v25;
  v45 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v43);
  sub_10076D66C();
  *(v16 + 1) = 0;
  *(v16 + 2) = 0;
  v26 = v37;
  *v16 = v38;
  (*(v26 + 32))(&v16[v15[6]], v42, v21);
  *&v16[v15[7]] = 0;
  *&v16[v15[8]] = 1090519040;
  v27 = v41;
  v28 = *(v40 + 32);
  v28(&v16[v15[9]], v35, v41);
  v28(&v16[v15[10]], v24, v27);
  *&v16[v15[11]] = 1102053376;
  sub_10003F19C(&v46, &v16[v15[12]]);
  return sub_10003F19C(&v43, &v16[v15[13]]);
}

uint64_t sub_100289F38()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D9AC();
  v25 = *(v4 - 8);
  v26 = v4;
  __chkstk_darwin(v4);
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v28 = &v23 - v7;
  v8 = sub_10076D3DC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v27 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_10000DB18(v11, qword_10099E018);
  v12 = sub_10000A61C(v11, qword_10099E018);
  sub_1000325F0();
  v23 = sub_100770CFC();
  if (qword_1009409C0 != -1)
  {
    swift_once();
  }

  v13 = sub_10000A61C(v8, qword_1009A0B50);
  v14 = *(v9 + 16);
  v14(v27, v13, v8);
  v14(v3, v13, v8);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v33 = v0;
  v34 = &protocol witness table for FontSource;
  v15 = sub_10000DB7C(&v32);
  (*(v1 + 16))(v15, v3, v0);
  sub_10076D9BC();
  (*(v1 + 8))(v3, v0);
  if (qword_1009411F0 != -1)
  {
    swift_once();
  }

  v16 = v26;
  v17 = sub_10000A61C(v26, qword_1009A2350);
  v19 = v24;
  v18 = v25;
  (*(v25 + 16))(v24, v17, v16);
  v20 = sub_10076D67C();
  v33 = v20;
  v34 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v32);
  sub_10076D66C();
  v30 = v20;
  v31 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v29);
  sub_10076D66C();
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  *v12 = v23;
  (*(v9 + 32))(&v12[v11[6]], v27, v8);
  *&v12[v11[7]] = 0;
  *&v12[v11[8]] = 1090519040;
  v21 = *(v18 + 32);
  v21(&v12[v11[9]], v28, v16);
  v21(&v12[v11[10]], v19, v16);
  *&v12[v11[11]] = 1102053376;
  sub_10003F19C(&v32, &v12[v11[12]]);
  return sub_10003F19C(&v29, &v12[v11[13]]);
}

uint64_t sub_10028A398()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D9AC();
  v25 = *(v4 - 8);
  v26 = v4;
  __chkstk_darwin(v4);
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v28 = &v23 - v7;
  v8 = sub_10076D3DC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v27 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_10000DB18(v11, qword_10099E030);
  v12 = sub_10000A61C(v11, qword_10099E030);
  sub_1000325F0();
  v23 = sub_100770CFC();
  if (qword_1009409C0 != -1)
  {
    swift_once();
  }

  v13 = sub_10000A61C(v8, qword_1009A0B50);
  v14 = *(v9 + 16);
  v14(v27, v13, v8);
  v14(v3, v13, v8);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v33 = v0;
  v34 = &protocol witness table for FontSource;
  v15 = sub_10000DB7C(&v32);
  (*(v1 + 16))(v15, v3, v0);
  sub_10076D9BC();
  (*(v1 + 8))(v3, v0);
  if (qword_1009411F0 != -1)
  {
    swift_once();
  }

  v16 = v26;
  v17 = sub_10000A61C(v26, qword_1009A2350);
  v19 = v24;
  v18 = v25;
  (*(v25 + 16))(v24, v17, v16);
  v20 = sub_10076D67C();
  v33 = v20;
  v34 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v32);
  sub_10076D66C();
  v30 = v20;
  v31 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v29);
  sub_10076D66C();
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  *v12 = v23;
  (*(v9 + 32))(&v12[v11[6]], v27, v8);
  *&v12[v11[7]] = 0;
  *&v12[v11[8]] = 1090519040;
  v21 = *(v18 + 32);
  v21(&v12[v11[9]], v28, v16);
  v21(&v12[v11[10]], v19, v16);
  *&v12[v11[11]] = 1102053376;
  sub_10003F19C(&v32, &v12[v11[12]]);
  return sub_10003F19C(&v29, &v12[v11[13]]);
}

uint64_t sub_10028A7F4()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D9AC();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v33 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v25 - v7;
  v8 = sub_10076D3DC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_10000DB18(v12, qword_10099E048);
  v32 = v12;
  v13 = sub_10000A61C(v12, qword_10099E048);
  sub_1000325F0();
  v31 = sub_100770CFC();
  if (qword_1009409C0 != -1)
  {
    swift_once();
  }

  v14 = sub_10000A61C(v8, qword_1009A0B50);
  v36 = v8;
  v15 = *(v9 + 16);
  v30 = v11;
  v15(v11, v14, v8);
  v15(v3, v14, v8);
  v28 = enum case for FontSource.useCase(_:);
  v29 = v9;
  v27 = v1[13];
  v27(v3);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v16 = sub_10000DB7C(&v41);
  v26 = v1[2];
  v26(v16, v3, v0);
  sub_10076D9BC();
  v17 = v1[1];
  v17(v3, v0);
  v15(v3, v14, v36);
  (v27)(v3, v28, v0);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v18 = sub_10000DB7C(&v41);
  v26(v18, v3, v0);
  v19 = v33;
  sub_10076D9BC();
  v17(v3, v0);
  v20 = sub_10076D67C();
  v42 = v20;
  v43 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v41);
  sub_10076D66C();
  v39 = v20;
  v40 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v38);
  sub_10076D66C();
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  v21 = v32;
  *v13 = v31;
  (*(v29 + 32))(&v13[v21[6]], v30, v36);
  *&v13[v21[7]] = 0;
  *&v13[v21[8]] = 1090519040;
  v22 = v35;
  v23 = *(v34 + 32);
  v23(&v13[v21[9]], v37, v35);
  v23(&v13[v21[10]], v19, v22);
  *&v13[v21[11]] = 1102053376;
  sub_10003F19C(&v41, &v13[v21[12]]);
  return sub_10003F19C(&v38, &v13[v21[13]]);
}

uint64_t sub_10028ACA4()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D9AC();
  v25 = *(v4 - 8);
  v26 = v4;
  __chkstk_darwin(v4);
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v28 = &v23 - v7;
  v8 = sub_10076D3DC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v27 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_10000DB18(v11, qword_10099E060);
  v12 = sub_10000A61C(v11, qword_10099E060);
  sub_1000325F0();
  v23 = sub_100770CFC();
  if (qword_1009409C0 != -1)
  {
    swift_once();
  }

  v13 = sub_10000A61C(v8, qword_1009A0B50);
  v14 = *(v9 + 16);
  v14(v27, v13, v8);
  v14(v3, v13, v8);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v33 = v0;
  v34 = &protocol witness table for FontSource;
  v15 = sub_10000DB7C(&v32);
  (*(v1 + 16))(v15, v3, v0);
  sub_10076D9BC();
  (*(v1 + 8))(v3, v0);
  if (qword_1009411F0 != -1)
  {
    swift_once();
  }

  v16 = v26;
  v17 = sub_10000A61C(v26, qword_1009A2350);
  v19 = v24;
  v18 = v25;
  (*(v25 + 16))(v24, v17, v16);
  v20 = sub_10076D67C();
  v33 = v20;
  v34 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v32);
  sub_10076D66C();
  v30 = v20;
  v31 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v29);
  sub_10076D66C();
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  *v12 = v23;
  (*(v9 + 32))(&v12[v11[6]], v27, v8);
  *&v12[v11[7]] = 0;
  *&v12[v11[8]] = 1090519040;
  v21 = *(v18 + 32);
  v21(&v12[v11[9]], v28, v16);
  v21(&v12[v11[10]], v19, v16);
  *&v12[v11[11]] = 1102053376;
  sub_10003F19C(&v32, &v12[v11[12]]);
  return sub_10003F19C(&v29, &v12[v11[13]]);
}

uint64_t sub_10028B100()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D9AC();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v33 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v25 - v7;
  v8 = sub_10076D3DC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_10000DB18(v12, qword_10099E078);
  v32 = v12;
  v13 = sub_10000A61C(v12, qword_10099E078);
  sub_1000325F0();
  v31 = sub_100770CFC();
  if (qword_1009409C0 != -1)
  {
    swift_once();
  }

  v14 = sub_10000A61C(v8, qword_1009A0B50);
  v36 = v8;
  v15 = *(v9 + 16);
  v30 = v11;
  v15(v11, v14, v8);
  v15(v3, v14, v8);
  v28 = enum case for FontSource.useCase(_:);
  v29 = v9;
  v27 = v1[13];
  v27(v3);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v16 = sub_10000DB7C(&v41);
  v26 = v1[2];
  v26(v16, v3, v0);
  sub_10076D9BC();
  v17 = v1[1];
  v17(v3, v0);
  v15(v3, v14, v36);
  (v27)(v3, v28, v0);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v18 = sub_10000DB7C(&v41);
  v26(v18, v3, v0);
  v19 = v33;
  sub_10076D9BC();
  v17(v3, v0);
  v20 = sub_10076D67C();
  v42 = v20;
  v43 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v41);
  sub_10076D66C();
  v39 = v20;
  v40 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v38);
  sub_10076D66C();
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  v21 = v32;
  *v13 = v31;
  (*(v29 + 32))(&v13[v21[6]], v30, v36);
  *&v13[v21[7]] = 0;
  *&v13[v21[8]] = 1090519040;
  v22 = v35;
  v23 = *(v34 + 32);
  v23(&v13[v21[9]], v37, v35);
  v23(&v13[v21[10]], v19, v22);
  *&v13[v21[11]] = 1102053376;
  sub_10003F19C(&v41, &v13[v21[12]]);
  return sub_10003F19C(&v38, &v13[v21[13]]);
}

uint64_t sub_10028B5AC()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D9AC();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v33 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v25 - v7;
  v8 = sub_10076D3DC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_10000DB18(v12, qword_10099E090);
  v32 = v12;
  v13 = sub_10000A61C(v12, qword_10099E090);
  sub_1000325F0();
  v31 = sub_100770CFC();
  if (qword_1009409C8 != -1)
  {
    swift_once();
  }

  v14 = sub_10000A61C(v8, qword_1009A0B68);
  v36 = v8;
  v15 = *(v9 + 16);
  v30 = v11;
  v15(v11, v14, v8);
  v15(v3, v14, v8);
  v28 = enum case for FontSource.useCase(_:);
  v29 = v9;
  v27 = v1[13];
  v27(v3);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v16 = sub_10000DB7C(&v41);
  v26 = v1[2];
  v26(v16, v3, v0);
  sub_10076D9BC();
  v17 = v1[1];
  v17(v3, v0);
  v15(v3, v14, v36);
  (v27)(v3, v28, v0);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v18 = sub_10000DB7C(&v41);
  v26(v18, v3, v0);
  v19 = v33;
  sub_10076D9BC();
  v17(v3, v0);
  v20 = sub_10076D67C();
  v42 = v20;
  v43 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v41);
  sub_10076D66C();
  v39 = v20;
  v40 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v38);
  sub_10076D66C();
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  v21 = v32;
  *v13 = v31;
  (*(v29 + 32))(&v13[v21[6]], v30, v36);
  *&v13[v21[7]] = 0;
  *&v13[v21[8]] = 1090519040;
  v22 = v35;
  v23 = *(v34 + 32);
  v23(&v13[v21[9]], v37, v35);
  v23(&v13[v21[10]], v19, v22);
  *&v13[v21[11]] = 0;
  sub_10003F19C(&v41, &v13[v21[12]]);
  return sub_10003F19C(&v38, &v13[v21[13]]);
}

uint64_t sub_10028BA68()
{
  v0 = sub_10076D1AC();
  v42 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10076D9AC();
  v45 = *(v3 - 8);
  v46 = v3;
  __chkstk_darwin(v3);
  v44 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v47 = &v33 - v6;
  v7 = sub_10076D3DC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_10000DB18(v11, qword_10099E0C0);
  v43 = v11;
  v37 = sub_10000A61C(v11, qword_10099E0C0);
  if (qword_1009415C8 != -1)
  {
    swift_once();
  }

  v12 = qword_1009A3448;
  v13 = sub_10076FF9C();
  v40 = v14;
  v41 = v13;
  v15 = qword_1009409D8;
  v39 = v12;
  if (v15 != -1)
  {
    swift_once();
  }

  v16 = sub_10000A61C(v7, qword_1009A0B98);
  v36 = v8;
  v17 = *(v8 + 16);
  v38 = v10;
  v17(v10, v16, v7);
  v18 = v2;
  v17(v2, v16, v7);
  v35 = enum case for FontSource.useCase(_:);
  v19 = v42;
  v34 = *(v42 + 104);
  v34(v18);
  v52 = v0;
  v53 = &protocol witness table for FontSource;
  v20 = sub_10000DB7C(&v51);
  v33 = *(v19 + 16);
  v33(v20, v18, v0);
  sub_10076D9BC();
  v21 = *(v19 + 8);
  v21(v18, v0);
  v17(v18, v16, v7);
  (v34)(v18, v35, v0);
  v52 = v0;
  v53 = &protocol witness table for FontSource;
  v22 = sub_10000DB7C(&v51);
  v33(v22, v18, v0);
  v23 = v44;
  sub_10076D9BC();
  v21(v18, v0);
  v24 = sub_10076D67C();
  v52 = v24;
  v53 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v51);
  sub_10076D66C();
  v49 = v24;
  v50 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v48);
  sub_10076D66C();
  v25 = v38;
  v26 = v37;
  v27 = v40;
  v28 = v41;
  *v37 = v39;
  *(v26 + 1) = v28;
  *(v26 + 2) = v27;
  v29 = v43;
  (*(v36 + 32))(&v26[v43[6]], v25, v7);
  *&v26[v29[7]] = 0;
  *&v26[v29[8]] = 1090519040;
  v30 = v46;
  v31 = *(v45 + 32);
  v31(&v26[v29[9]], v47, v46);
  v31(&v26[v29[10]], v23, v30);
  *&v26[v29[11]] = 0;
  sub_10003F19C(&v51, &v26[v29[12]]);
  return sub_10003F19C(&v48, &v26[v29[13]]);
}

uint64_t sub_10028BF90(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10076D1AC();
  v46 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076D9AC();
  v49 = *(v6 - 8);
  v50 = v6;
  __chkstk_darwin(v6);
  v48 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v51 = &v37 - v9;
  v10 = sub_10076D3DC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_10000DB18(v14, a2);
  v47 = v14;
  v15 = sub_10000A61C(v14, a2);
  if (qword_1009415C8 != -1)
  {
    swift_once();
  }

  v16 = qword_1009A3448;
  v17 = sub_10076FF9C();
  v44 = v18;
  v45 = v17;
  v19 = qword_1009409D0;
  v43 = v16;
  if (v19 != -1)
  {
    swift_once();
  }

  v20 = sub_10000A61C(v10, qword_1009A0B80);
  v41 = v11;
  v21 = *(v11 + 16);
  v42 = v13;
  v21(v13, v20, v10);
  v22 = v5;
  v21(v5, v20, v10);
  v40 = enum case for FontSource.useCase(_:);
  v23 = v46;
  v38 = v10;
  v39 = *(v46 + 104);
  v39(v22);
  v56 = v3;
  v57 = &protocol witness table for FontSource;
  v24 = sub_10000DB7C(&v55);
  v37 = *(v23 + 16);
  v37(v24, v22, v3);
  sub_10076D9BC();
  v25 = *(v23 + 8);
  v25(v22, v3);
  v26 = v20;
  v27 = v38;
  v21(v22, v26, v38);
  (v39)(v22, v40, v3);
  v56 = v3;
  v57 = &protocol witness table for FontSource;
  v28 = sub_10000DB7C(&v55);
  v37(v28, v22, v3);
  v29 = v48;
  sub_10076D9BC();
  v25(v22, v3);
  v30 = sub_10076D67C();
  v56 = v30;
  v57 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v55);
  sub_10076D66C();
  v53 = v30;
  v54 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v52);
  sub_10076D66C();
  v31 = v44;
  v32 = v45;
  *v15 = v43;
  *(v15 + 1) = v32;
  *(v15 + 2) = v31;
  v33 = v47;
  (*(v41 + 32))(&v15[v47[6]], v42, v27);
  *&v15[v33[7]] = 0;
  *&v15[v33[8]] = 1090519040;
  v34 = v50;
  v35 = *(v49 + 32);
  v35(&v15[v33[9]], v51, v50);
  v35(&v15[v33[10]], v29, v34);
  *&v15[v33[11]] = 0;
  sub_10003F19C(&v55, &v15[v33[12]]);
  return sub_10003F19C(&v52, &v15[v33[13]]);
}

uint64_t sub_10028C4C4()
{
  v0 = sub_10076D1AC();
  v44 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v35 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10076D9AC();
  v47 = *(v3 - 8);
  v48 = v3;
  __chkstk_darwin(v3);
  v46 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v49 = &v35 - v6;
  v7 = sub_10076D3DC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_10000DB18(v11, qword_10099E0F0);
  v45 = v11;
  v12 = sub_10000A61C(v11, qword_10099E0F0);
  if (qword_1009415C8 != -1)
  {
    swift_once();
  }

  v13 = qword_1009A3448;
  v14 = sub_10076FF9C();
  v42 = v15;
  v43 = v14;
  v16 = qword_1009409D8;
  v41 = v13;
  if (v16 != -1)
  {
    swift_once();
  }

  v17 = sub_10000A61C(v7, qword_1009A0B98);
  v39 = v8;
  v40 = v10;
  v18 = *(v8 + 16);
  v18(v10, v17, v7);
  v19 = v2;
  v18(v2, v17, v7);
  v38 = enum case for FontSource.useCase(_:);
  v20 = v44;
  v36 = v7;
  v37 = *(v44 + 104);
  v37(v19);
  v54 = v0;
  v55 = &protocol witness table for FontSource;
  v21 = sub_10000DB7C(&v53);
  v35 = *(v20 + 16);
  v35(v21, v19, v0);
  sub_10076D9BC();
  v22 = *(v20 + 8);
  v22(v19, v0);
  v23 = v17;
  v24 = v36;
  v18(v19, v23, v36);
  (v37)(v19, v38, v0);
  v54 = v0;
  v55 = &protocol witness table for FontSource;
  v25 = sub_10000DB7C(&v53);
  v35(v25, v19, v0);
  v26 = v46;
  sub_10076D9BC();
  v22(v19, v0);
  v27 = sub_10076D67C();
  v54 = v27;
  v55 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v53);
  sub_10076D66C();
  v51 = v27;
  v52 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v50);
  sub_10076D66C();
  v28 = v40;
  v29 = v42;
  v30 = v43;
  *v12 = v41;
  *(v12 + 1) = v30;
  *(v12 + 2) = v29;
  v31 = v45;
  (*(v39 + 32))(&v12[v45[6]], v28, v24);
  *&v12[v31[7]] = 0;
  *&v12[v31[8]] = 1090519040;
  v32 = v48;
  v33 = *(v47 + 32);
  v33(&v12[v31[9]], v49, v48);
  v33(&v12[v31[10]], v26, v32);
  *&v12[v31[11]] = 0;
  sub_10003F19C(&v53, &v12[v31[12]]);
  return sub_10003F19C(&v50, &v12[v31[13]]);
}

uint64_t sub_10028C9D8()
{
  v0 = sub_10076D1AC();
  v42 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10076D9AC();
  v45 = *(v3 - 8);
  v46 = v3;
  __chkstk_darwin(v3);
  v44 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v47 = &v33 - v6;
  v7 = sub_10076D3DC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_10000DB18(v11, qword_10099E108);
  v43 = v11;
  v37 = sub_10000A61C(v11, qword_10099E108);
  if (qword_1009415D0 != -1)
  {
    swift_once();
  }

  v12 = qword_1009A3450;
  v13 = sub_10076FF9C();
  v40 = v14;
  v41 = v13;
  v15 = qword_1009409E0;
  v39 = v12;
  if (v15 != -1)
  {
    swift_once();
  }

  v16 = sub_10000A61C(v7, qword_1009A0BB0);
  v17 = *(v8 + 16);
  v38 = v10;
  v17(v10, v16, v7);
  v18 = v2;
  v17(v2, v16, v7);
  v35 = enum case for FontSource.useCase(_:);
  v19 = v42;
  v34 = *(v42 + 104);
  v34(v18);
  v52 = v0;
  v53 = &protocol witness table for FontSource;
  v20 = sub_10000DB7C(&v51);
  v36 = v8;
  v33 = *(v19 + 16);
  v33(v20, v18, v0);
  sub_10076D9BC();
  v21 = *(v19 + 8);
  v21(v18, v0);
  v17(v18, v16, v7);
  (v34)(v18, v35, v0);
  v52 = v0;
  v53 = &protocol witness table for FontSource;
  v22 = sub_10000DB7C(&v51);
  v33(v22, v18, v0);
  v23 = v44;
  sub_10076D9BC();
  v21(v18, v0);
  v24 = sub_10076D67C();
  v52 = v24;
  v53 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v51);
  sub_10076D66C();
  v49 = v24;
  v50 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v48);
  sub_10076D66C();
  v25 = v38;
  v26 = v37;
  v27 = v40;
  v28 = v41;
  *v37 = v39;
  *(v26 + 1) = v28;
  *(v26 + 2) = v27;
  v29 = v43;
  (*(v36 + 32))(&v26[v43[6]], v25, v7);
  *&v26[v29[7]] = 0;
  *&v26[v29[8]] = 1090519040;
  v30 = v46;
  v31 = *(v45 + 32);
  v31(&v26[v29[9]], v47, v46);
  v31(&v26[v29[10]], v23, v30);
  *&v26[v29[11]] = 0;
  sub_10003F19C(&v51, &v26[v29[12]]);
  return sub_10003F19C(&v48, &v26[v29[13]]);
}

uint64_t sub_10028CEEC()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D9AC();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v33 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v25 - v7;
  v8 = sub_10076D3DC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_10000DB18(v12, qword_10099E120);
  v32 = v12;
  v13 = sub_10000A61C(v12, qword_10099E120);
  sub_1000325F0();
  v31 = sub_100770CFC();
  if (qword_1009409E8 != -1)
  {
    swift_once();
  }

  v14 = sub_10000A61C(v8, qword_1009A0BC8);
  v36 = v8;
  v15 = *(v9 + 16);
  v30 = v11;
  v15(v11, v14, v8);
  v15(v3, v14, v8);
  v28 = enum case for FontSource.useCase(_:);
  v29 = v9;
  v27 = v1[13];
  v27(v3);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v16 = sub_10000DB7C(&v41);
  v26 = v1[2];
  v26(v16, v3, v0);
  sub_10076D9BC();
  v17 = v1[1];
  v17(v3, v0);
  v15(v3, v14, v36);
  (v27)(v3, v28, v0);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v18 = sub_10000DB7C(&v41);
  v26(v18, v3, v0);
  v19 = v33;
  sub_10076D9BC();
  v17(v3, v0);
  v20 = sub_10076D67C();
  v42 = v20;
  v43 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v41);
  sub_10076D66C();
  v39 = v20;
  v40 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v38);
  sub_10076D66C();
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  v21 = v32;
  *v13 = v31;
  (*(v29 + 32))(&v13[v21[6]], v30, v36);
  *&v13[v21[7]] = 0;
  *&v13[v21[8]] = 1090519040;
  v22 = v35;
  v23 = *(v34 + 32);
  v23(&v13[v21[9]], v37, v35);
  v23(&v13[v21[10]], v19, v22);
  *&v13[v21[11]] = 0;
  sub_10003F19C(&v41, &v13[v21[12]]);
  return sub_10003F19C(&v38, &v13[v21[13]]);
}

uint64_t sub_10028D394()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D9AC();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v33 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v25 - v7;
  v8 = sub_10076D3DC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_10000DB18(v12, qword_10099E138);
  v32 = v12;
  v13 = sub_10000A61C(v12, qword_10099E138);
  sub_1000325F0();
  v31 = sub_100770CFC();
  if (qword_1009409F0 != -1)
  {
    swift_once();
  }

  v14 = sub_10000A61C(v8, qword_1009A0BE0);
  v36 = v8;
  v15 = *(v9 + 16);
  v30 = v11;
  v15(v11, v14, v8);
  v15(v3, v14, v8);
  v28 = enum case for FontSource.useCase(_:);
  v29 = v9;
  v27 = v1[13];
  v27(v3);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v16 = sub_10000DB7C(&v41);
  v26 = v1[2];
  v26(v16, v3, v0);
  sub_10076D9BC();
  v17 = v1[1];
  v17(v3, v0);
  v15(v3, v14, v36);
  (v27)(v3, v28, v0);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v18 = sub_10000DB7C(&v41);
  v26(v18, v3, v0);
  v19 = v33;
  sub_10076D9BC();
  v17(v3, v0);
  v20 = sub_10076D67C();
  v42 = v20;
  v43 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v41);
  sub_10076D66C();
  v39 = v20;
  v40 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v38);
  sub_10076D66C();
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  v21 = v32;
  *v13 = v31;
  (*(v29 + 32))(&v13[v21[6]], v30, v36);
  *&v13[v21[7]] = 0;
  *&v13[v21[8]] = 1090519040;
  v22 = v35;
  v23 = *(v34 + 32);
  v23(&v13[v21[9]], v37, v35);
  v23(&v13[v21[10]], v19, v22);
  *&v13[v21[11]] = 0;
  sub_10003F19C(&v41, &v13[v21[12]]);
  return sub_10003F19C(&v38, &v13[v21[13]]);
}

uint64_t sub_10028D840()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D9AC();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v33 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v25 - v7;
  v8 = sub_10076D3DC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  sub_10000DB18(v12, qword_10099E150);
  v32 = v12;
  v13 = sub_10000A61C(v12, qword_10099E150);
  sub_1000325F0();
  v31 = sub_100770CFC();
  if (qword_1009409F8 != -1)
  {
    swift_once();
  }

  v14 = sub_10000A61C(v8, qword_1009A0BF8);
  v36 = v8;
  v15 = *(v9 + 16);
  v30 = v11;
  v15(v11, v14, v8);
  v15(v3, v14, v8);
  v28 = enum case for FontSource.useCase(_:);
  v29 = v9;
  v27 = v1[13];
  v27(v3);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v16 = sub_10000DB7C(&v41);
  v26 = v1[2];
  v26(v16, v3, v0);
  sub_10076D9BC();
  v17 = v1[1];
  v17(v3, v0);
  v15(v3, v14, v36);
  (v27)(v3, v28, v0);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v18 = sub_10000DB7C(&v41);
  v26(v18, v3, v0);
  v19 = v33;
  sub_10076D9BC();
  v17(v3, v0);
  v20 = sub_10076D67C();
  v42 = v20;
  v43 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v41);
  sub_10076D66C();
  v39 = v20;
  v40 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v38);
  sub_10076D66C();
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  v21 = v32;
  *v13 = v31;
  (*(v29 + 32))(&v13[v21[6]], v30, v36);
  *&v13[v21[7]] = 0;
  *&v13[v21[8]] = 1090519040;
  v22 = v35;
  v23 = *(v34 + 32);
  v23(&v13[v21[9]], v37, v35);
  v23(&v13[v21[10]], v19, v22);
  *&v13[v21[11]] = 0;
  sub_10003F19C(&v41, &v13[v21[12]]);
  return sub_10003F19C(&v38, &v13[v21[13]]);
}

double sub_10028DCE8(void *a1)
{
  [a1 displayScale];
  v3 = v2;
  v4 = 1.0 / v2;
  if (v2 < 3.0)
  {
    v5 = 46.0;
  }

  else
  {
    v5 = 46.0 - v4;
  }

  v6 = [a1 preferredContentSizeCategory];
  v7 = sub_10076FF9C();
  v9 = v8;
  if (v7 == sub_10076FF9C() && v9 == v10)
  {

LABEL_11:
    v13 = 4.0;
    if (v3 > 2.0)
    {
      v13 = 5.0;
    }

    return v13 + v5;
  }

  v12 = sub_10077167C();

  if (v12)
  {

    goto LABEL_11;
  }

  v15 = sub_10076FF9C();
  v17 = v16;
  if (v15 == sub_10076FF9C() && v17 == v18)
  {

    return v5 + 3.0;
  }

  v20 = sub_10077167C();

  if (v20)
  {

    return v5 + 3.0;
  }

  v21 = sub_10076FF9C();
  v23 = v22;
  if (v21 == sub_10076FF9C() && v23 == v24)
  {

    goto LABEL_28;
  }

  v25 = sub_10077167C();

  if (v25)
  {

LABEL_28:
    v13 = 2.0;
    if (v3 <= 2.0)
    {
      v13 = 1.0;
    }

    return v13 + v5;
  }

  v26 = sub_10076FF9C();
  v28 = v27;
  if (v26 == sub_10076FF9C() && v28 == v29)
  {
    goto LABEL_33;
  }

  v30 = sub_10077167C();

  if (v30)
  {
    goto LABEL_36;
  }

  v31 = sub_10076FF9C();
  v33 = v32;
  if (v31 == sub_10076FF9C() && v33 == v34)
  {
  }

  else
  {
    v35 = sub_10077167C();

    if ((v35 & 1) == 0)
    {
      v37 = sub_10076FF9C();
      v39 = v38;
      if (v37 == sub_10076FF9C() && v39 == v40)
      {
      }

      else
      {
        v41 = sub_10077167C();

        if ((v41 & 1) == 0)
        {
          v42 = sub_10076FF9C();
          v44 = v43;
          if (v42 == sub_10076FF9C() && v44 == v45)
          {
          }

          else
          {
            v46 = sub_10077167C();

            if ((v46 & 1) == 0)
            {
              v47 = sub_10076FF9C();
              v49 = v48;
              if (v47 == sub_10076FF9C() && v49 == v50)
              {
                goto LABEL_33;
              }

              v51 = sub_10077167C();

              if (v51)
              {
                goto LABEL_36;
              }

              v52 = sub_10076FF9C();
              v54 = v53;
              if (v52 == sub_10076FF9C() && v54 == v55)
              {
                goto LABEL_33;
              }

              v56 = sub_10077167C();

              if (v56)
              {
                goto LABEL_36;
              }

              v57 = sub_10076FF9C();
              v59 = v58;
              if (v57 == sub_10076FF9C() && v59 == v60)
              {
LABEL_33:

LABEL_34:

                return v5;
              }

              v61 = sub_10077167C();

              if ((v61 & 1) == 0)
              {
                sub_10076FF9C();
                sub_10076FF9C();

                goto LABEL_34;
              }

LABEL_36:

              return v5;
            }
          }

          return v5 + -5.0;
        }
      }

      v13 = v4 + -5.0;
      return v13 + v5;
    }
  }

  v36 = 2.0;
  if (v3 <= 2.0)
  {
    v36 = 3.0;
  }

  return v5 - v36;
}

uint64_t sub_10028E2B4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100763F9C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10076338C();

  v6 = v11[1];
  v7 = sub_1007706FC();

  if (v7)
  {
    v8 = 1;
  }

  else
  {
    (*(v3 + 104))(v5, enum case for ComponentSeparator.Position.bottom(_:), v2);
    sub_100763FAC();
    v8 = 0;
  }

  v9 = sub_100763FDC();
  return (*(*(v9 - 8) + 56))(a1, v8, 1, v9);
}

uint64_t sub_10028E440()
{
  v0 = sub_10000A5D4(&qword_100942900);
  __chkstk_darwin(v0 - 8);
  v2 = &v41 - v1;
  v55 = sub_10076C2DC();
  v58 = *(v55 - 8);
  __chkstk_darwin(v55);
  v4 = (&v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10000A5D4(&qword_100942908);
  __chkstk_darwin(v5 - 8);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v41 - v9;
  __chkstk_darwin(v11);
  v54 = &v41 - v12;
  __chkstk_darwin(v13);
  v15 = &v41 - v14;
  sub_10000A5D4(&qword_100942910);
  v16 = *(sub_10076C20C() - 8);
  v57 = *(v16 + 72);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  v48 = v18;
  *(v18 + 16) = xmmword_1007844F0;
  v56 = v18 + v17;
  v60 = 0x3FF0000000000000;
  sub_10001E290();
  v19 = v15;
  sub_10076C29C();
  v59 = 0x4030000000000000;
  v60 = 0x4020000000000000;
  sub_10076C27C();
  v59 = 0x4034000000000000;
  v60 = 0x4030000000000000;
  sub_10076C27C();
  __asm { FMOV            V0.2D, #16.0 }

  *v4 = _Q0;
  v25 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v26 = *(v58 + 104);
  v58 += 104;
  v52 = v26;
  v51 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v27 = v55;
  v26(v4, enum case for PageGrid.HorizontalMargins.absolute(_:), v55);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v60) = 0;
  v29 = v2;
  sub_10076C29C();
  v60 = 0;
  v50 = v7;
  sub_10076C29C();
  v53 = v19;
  sub_10076C1CC();
  v60 = 0x3FF0000000000000;
  sub_10076C29C();
  v59 = 0x4034000000000000;
  v60 = 0x4024000000000000;
  sub_10076C27C();
  v59 = 0x4034000000000000;
  v60 = 0x4030000000000000;
  v30 = v10;
  sub_10076C27C();
  __asm { FMOV            V0.2D, #20.0 }

  *v4 = _Q0;
  v32 = v52;
  v52(v4, v25, v27);
  LOBYTE(v60) = 0;
  sub_10076C29C();
  v60 = 0;
  sub_10076C29C();
  v33 = v57;
  top = UIEdgeInsetsZero.top;
  v47 = left;
  v49 = v30;
  sub_10076C1CC();
  v34 = 2 * v33;
  v59 = 0x4000000000000000;
  v60 = 0x3FF8000000000000;
  sub_10076C27C();
  v60 = 0x4034000000000000;
  sub_10076C29C();
  v59 = 0x4034000000000000;
  v60 = 0x4030000000000000;
  sub_10076C27C();
  v45 = vdupq_n_s64(0x4041000000000000uLL);
  v42 = v4;
  *v4 = v45;
  v35 = v51;
  v36 = v55;
  v37 = v32;
  v32(v4, v51, v55);
  LOBYTE(v60) = 0;
  sub_10076C29C();
  v60 = 0;
  sub_10076C29C();
  v38 = v29;
  v39 = v42;
  sub_10076C1CC();
  v44 = v34 + v57;
  v60 = 0x4000000000000000;
  sub_10076C29C();
  v60 = 0x4034000000000000;
  sub_10076C29C();
  v59 = 0x4034000000000000;
  v60 = 0x4030000000000000;
  sub_10076C27C();
  *v39 = v45;
  v37(v39, v35, v36);
  sub_1007704BC();
  LOBYTE(v60) = 0;
  v43 = v38;
  sub_10076C29C();
  v60 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v59 = 0x4000000000000000;
  v60 = 0x4004000000000000;
  sub_10076C27C();
  v60 = 0x4038000000000000;
  sub_10076C29C();
  v59 = 0x4034000000000000;
  v60 = 0x4030000000000000;
  sub_10076C27C();
  v45 = vdupq_n_s64(0x404A000000000000uLL);
  *v39 = v45;
  v52(v39, v51, v55);
  LOBYTE(v60) = 0;
  sub_10076C29C();
  v60 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v60 = 0x4008000000000000;
  sub_10076C29C();
  v60 = 0x4038000000000000;
  sub_10076C29C();
  v59 = 0x4034000000000000;
  v60 = 0x4030000000000000;
  sub_10076C27C();
  *v39 = v45;
  v52(v39, v51, v55);
  LOBYTE(v60) = 0;
  sub_10076C29C();
  v60 = 0;
  sub_10076C29C();
  result = sub_10076C1CC();
  qword_10099E168 = v48;
  return result;
}

uint64_t type metadata accessor for ProductReviewSelectionHandlerCollectionElementsObserver()
{
  result = qword_10094FA98;
  if (!qword_10094FA98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10028EF08()
{
  v1 = qword_10094FA90;
  v2 = *(v0 + qword_10094FA90);
  if (v2)
  {
    v3 = *(v0 + qword_10094FA90);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for ComponentViewOverflowTransitioning()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_10028EF7C(uint64_t a1, objc_class *a2, uint64_t a3, uint64_t a4)
{
  v117 = a4;
  v114 = a3;
  v115 = a2;
  v113 = a1;
  v98 = sub_10075F65C();
  v96 = *(v98 - 8);
  __chkstk_darwin(v98);
  v99 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_100765F6C();
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v97 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_100766EDC();
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v95 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076F4FC();
  __chkstk_darwin(v8 - 8);
  v92 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000A5D4(&unk_100958150);
  __chkstk_darwin(v10 - 8);
  v105 = &v82 - v11;
  v12 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v12 - 8);
  v104 = &v82 - v13;
  v89 = sub_10076C15C();
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v103 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v15 - 8);
  v108 = &v82 - v16;
  v17 = sub_10000A5D4(&unk_10094DE60);
  __chkstk_darwin(v17 - 8);
  v102 = &v82 - v18;
  v19 = sub_10076341C();
  v111 = *(v19 - 8);
  v112 = v19;
  __chkstk_darwin(v19);
  v101 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v107 = &v82 - v22;
  v23 = sub_100760F8C();
  v109 = *(v23 - 8);
  v110 = v23;
  __chkstk_darwin(v23);
  v100 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v82 - v26;
  v28 = sub_10076C38C();
  v106 = *(v28 - 8);
  __chkstk_darwin(v28);
  v30 = &v82 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_10076B6EC();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = &v82 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v37 = &v82 - v36;
  v116 = v4;
  sub_10000CF78(&v4[qword_10094FA88], *&v4[qword_10094FA88 + 24]);
  v38 = v115;
  v39 = sub_10076A3CC();
  if (!v39 || (v43 = v39, v84 = v42, v85 = v41, v86 = v40, sub_100760FAC(), sub_100290088(&qword_10094FAE8, &type metadata accessor for ProductReview), sub_10076332C(), !v120))
  {
    sub_10076AEFC();
    v52 = sub_10076AF0C();
    return v52(v113, v38, v114, v117);
  }

  v83 = v43;
  v87 = v120;
  swift_getKeyPath();
  sub_10076338C();

  sub_10076B68C();
  sub_100290088(&unk_100946780, &type metadata accessor for Shelf.PresentationHints);
  v44 = sub_10077124C();
  v45 = *(v32 + 8);
  v45(v34, v31);
  v45(v37, v31);
  if (v44)
  {
    swift_getKeyPath();
    sub_10076338C();

    sub_10076C21C();
    v47 = v46;
    (*(v106 + 8))(v30, v28);
    v48 = v117;
    v50 = v111;
    v49 = v112;
    v51 = v38;
    if (v47 <= 1.0)
    {
LABEL_11:
      sub_10076AEFC();
      v77 = sub_10076AF0C();
      v77(v113, v51, v114, v48);
    }
  }

  else
  {
    sub_100760F9C();
    v55 = v109;
    v54 = v110;
    v56 = (*(v109 + 88))(v27, v110);
    v57 = enum case for ProductReview.ReviewSource.editorsChoice(_:);
    (*(v55 + 8))(v27, v54);
    v48 = v117;
    v50 = v111;
    v49 = v112;
    v51 = v38;
    if (v56 == v57)
    {
      goto LABEL_11;
    }

    swift_getKeyPath();
    sub_10076338C();

    v58 = v120;
    v59 = sub_1007706FC();

    if ((v59 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v60 = v100;
  sub_100760F9C();
  v62 = v109;
  v61 = v110;
  v63 = (*(v109 + 88))(v60, v110) == enum case for ProductReview.ReviewSource.reviewSummary(_:);
  (*(v62 + 8))(v60, v61);
  v64 = v107;
  sub_10076330C();
  v65 = v101;
  (*(v50 + 16))(v101, v64, v49);
  v66 = sub_1006C7080(v48, 0, 0, _swiftEmptyArrayStorage, 0xD000000000000011, 0x80000001007D5040);
  v115 = type metadata accessor for ProductPageReviewsOverflowViewController();
  v67 = objc_allocWithZone(v115);
  v68 = sub_10066600C(v65, v83, v86, v85, v84, v66, v63);

  v69 = sub_10028EF08();
  v70 = v102;
  sub_10076340C();
  v71 = sub_10075E11C();
  (*(*(v71 - 8) + 56))(v70, 0, 1, v71);
  v72 = OBJC_IVAR____TtC20ProductPageExtension34ComponentViewOverflowTransitioning_selectedIndexPath;
  swift_beginAccess();
  sub_10021560C(v70, &v69[v72]);
  swift_endAccess();
  v69[OBJC_IVAR____TtC20ProductPageExtension34ComponentViewOverflowTransitioning_isTransitioningFromContainer] = 1;
  v73 = v68;
  [v73 setTransitioningDelegate:v69];
  [v73 setModalPresentationStyle:4];

  v74 = sub_10000A5D4(&unk_1009428E0);
  v75 = v108;
  sub_10076F5AC();
  v76 = *(v74 - 8);
  if ((*(v76 + 48))(v75, 1, v74) == 1)
  {
    (*(v50 + 8))(v64, v49);

    return sub_1000527AC(v75);
  }

  else
  {
    v122 = 0;
    v120 = 0u;
    v121 = 0u;
    (*(v88 + 104))(v103, enum case for FlowPage.viewController(_:), v89);
    v78 = sub_10075DB7C();
    (*(*(v78 - 8) + 56))(v104, 1, 1, v78);
    v79 = sub_10076096C();
    (*(*(v79 - 8) + 56))(v105, 1, 1, v79);
    v119 = v115;
    v118 = v73;
    v116 = v73;
    sub_10076F4DC();
    (*(v90 + 104))(v95, enum case for FlowPresentationContext.infer(_:), v91);
    (*(v93 + 104))(v97, enum case for FlowAnimationBehavior.infer(_:), v94);
    (*(v96 + 104))(v99, enum case for FlowOrigin.inapp(_:), v98);
    sub_10076FA2C();
    sub_10075F63C();
    swift_allocObject();
    v80 = sub_10075F5EC();
    v81 = v108;
    sub_100263C24(v80, 1, v117, v108);

    (*(v50 + 8))(v107, v112);
    return (*(v76 + 8))(v81, v74);
  }
}

uint64_t sub_10028FE48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10076664C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  sub_1007665CC();
  sub_10038C52C(v10, v7);
  v11 = *(v5 + 8);
  v11(v7, v4);
  v11(v10, v4);
  return (*(v5 + 16))(a2, a1, v4);
}

void sub_10028FFB0()
{
  swift_unknownObjectWeakDestroy();
  sub_10000CD74(v0 + qword_10094FA88);
  v1 = *(v0 + qword_10094FA90);
}

uint64_t sub_100290000()
{
  v0 = sub_10076AF1C();

  swift_unknownObjectWeakDestroy();
  sub_10000CD74(v0 + qword_10094FA88);
  v1 = *(v0 + qword_10094FA90);

  return swift_deallocClassInstance();
}

uint64_t sub_100290088(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002900D8()
{
  v0 = sub_10076063C();
  sub_10000DB18(v0, qword_10099E180);
  v1 = sub_10000A61C(v0, qword_10099E180);
  return sub_100290124(v1);
}

uint64_t sub_100290124@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v42 = sub_10076D1AC();
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v44 = &v37 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v49 = &v37 - v3;
  v4 = sub_10000A5D4(&unk_100957B30);
  __chkstk_darwin(v4 - 8);
  v6 = &v37 - v5;
  v7 = sub_10000A5D4(&unk_10094CD50);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v37 - v12;
  __chkstk_darwin(v14);
  v16 = &v37 - v15;
  v58 = vdupq_n_s64(0x4040000000000000uLL);
  __asm { FMOV            V0.2D, #28.0 }

  v55 = _Q0;
  sub_10000A5D4(&unk_100943120);
  type metadata accessor for CGSize(0);
  sub_10075FDFC();
  v58 = xmmword_100798B00;
  v55 = xmmword_100798B10;
  sub_10075FDFC();
  v22 = *(v8 + 16);
  v43 = v10;
  v39 = v16;
  v22(v10, v16, v7);
  v41 = v13;
  v22(v6, v13, v7);
  v45 = v8;
  v46 = v6;
  v23 = *(v8 + 56);
  v47 = v7;
  v23(v6, 0, 1, v7);
  v59 = &type metadata for Double;
  v60 = &protocol witness table for Double;
  v58.i64[0] = 0x4034000000000000;
  v56 = &type metadata for Double;
  v57 = &protocol witness table for Double;
  v54[14] = &protocol witness table for Double;
  *&v55 = 0x4048000000000000;
  v54[13] = &type metadata for Double;
  v54[10] = 0x4028000000000000;
  if (qword_100940A08 != -1)
  {
    swift_once();
  }

  v24 = sub_10076D3DC();
  v38 = sub_10000A61C(v24, qword_1009A0C28);
  v25 = *(*(v24 - 8) + 16);
  v26 = v49;
  v25(v49, v38, v24);
  v27 = enum case for FontSource.useCase(_:);
  v28 = v40;
  v29 = v26;
  v30 = *(v40 + 104);
  v31 = v42;
  v30(v29, enum case for FontSource.useCase(_:), v42);
  v54[8] = &type metadata for Double;
  v54[9] = &protocol witness table for Double;
  v54[5] = 0x4022000000000000;
  v32 = v44;
  v25(v44, v38, v24);
  v30(v32, v27, v31);
  v54[3] = sub_10076D9AC();
  v54[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v54);
  v52 = v31;
  v53 = &protocol witness table for FontSource;
  v33 = sub_10000DB7C(v51);
  (*(v28 + 16))(v33, v32, v31);
  sub_10076D9BC();
  (*(v28 + 8))(v32, v31);
  v53 = &protocol witness table for Double;
  v52 = &type metadata for Double;
  v51[0] = 0x4020000000000000;
  v50[3] = sub_10076D67C();
  v50[4] = &protocol witness table for ZeroDimension;
  sub_10000DB7C(v50);
  sub_10076D66C();
  sub_1007605EC();
  v34 = *(v45 + 8);
  v35 = v47;
  v34(v41, v47);
  return (v34)(v39, v35);
}

uint64_t sub_100290674()
{
  v0 = sub_10000A5D4(&unk_100942EF0);
  sub_10000DB18(v0, qword_10094FAF0);
  sub_10000A61C(v0, qword_10094FAF0);
  sub_10000A5D4(&unk_100943120);
  type metadata accessor for NSTextAlignment(0);
  return sub_10075FDDC();
}

void sub_100290710(void *a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_accessoryView;
  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_accessoryView];
  if (v4)
  {
    [v4 removeFromSuperview];
    v5 = *&v1[v3];
  }

  else
  {
    v5 = 0;
  }

  *&v1[v3] = a1;
  v6 = a1;

  if (a1)
  {
    v7 = [v1 contentView];
    [v7 addSubview:v6];
  }
}

id sub_1002907D4()
{
  v1 = v0;
  v2 = sub_10000A5D4(&unk_10094CD50);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - v4;
  v6 = OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_lazilyCreatedArtworkView;
  v7 = *&v0[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_lazilyCreatedArtworkView];
  if (v7)
  {
    v8 = *&v0[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_lazilyCreatedArtworkView];
  }

  else
  {
    swift_beginAccess();
    sub_1007605FC();
    swift_endAccess();
    v9 = [v0 traitCollection];
    sub_10075FDBC();

    (*(v3 + 8))(v5, v2);
    v10 = [objc_allocWithZone(sub_10075FD2C()) initWithFrame:{0.0, 0.0, v17[1], v17[2]}];
    v11 = [objc_opt_self() clearColor];
    sub_10075FB8C();
    [v10 setHidden:1];
    v12 = *&v1[v6];
    v13 = v10;
    if (v12)
    {
      [v12 removeFromSuperview];
      v12 = *&v1[v6];
    }

    *&v1[v6] = v10;
    v8 = v10;

    v14 = [v1 contentView];
    [v14 addSubview:v8];

    v7 = 0;
  }

  v15 = v7;
  return v8;
}

void sub_100290A0C(void *a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_searchAdTransparencyButton;
  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_searchAdTransparencyButton];
  if (v4)
  {
    [v4 removeFromSuperview];
    v5 = *&v1[v3];
  }

  else
  {
    v5 = 0;
  }

  *&v1[v3] = a1;
  v6 = a1;

  if (a1)
  {
    [v1 addSubview:v6];
  }
}

char *sub_100290AB4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_10076771C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v15 - 8);
  v17 = &v49 - v16;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_accessoryView] = 0;
  v18 = OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_accessory;
  v19 = type metadata accessor for Accessory();
  (*(*(v19 - 8) + 56))(&v5[v18], 1, 1, v19);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_searchAdTransparencyButton] = 0;
  v5[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_isDisplayingSearchAd] = 0;
  v5[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_hasArtworkToDisplay] = 0;
  v5[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_isDisplayingSearchTrendingAction] = 0;
  v20 = OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_layoutMetrics;
  if (qword_10093FCF0 != -1)
  {
    swift_once();
  }

  v21 = sub_10076063C();
  v22 = sub_10000A61C(v21, qword_10099E180);
  (*(*(v21 - 8) + 16))(&v5[v20], v22, v21);
  v23 = &v5[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_artworkSize];
  *v23 = 0;
  *(v23 + 1) = 0;
  v23[16] = 1;
  v24 = OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_itemLayoutContext;
  v25 = sub_10076341C();
  (*(*(v25 - 8) + 56))(&v5[v24], 1, 1, v25);
  v5[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_isVertical] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_lazilyCreatedArtworkView] = 0;
  v26 = &v5[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_accessoryAction];
  *v26 = 0;
  v26[1] = 0;
  if (qword_100940A08 != -1)
  {
    swift_once();
  }

  v27 = sub_10076D3DC();
  v28 = sub_10000A61C(v27, qword_1009A0C28);
  v29 = *(v27 - 8);
  (*(v29 + 16))(v17, v28, v27);
  (*(v29 + 56))(v17, 0, 1, v27);
  (*(v12 + 104))(v14, enum case for DirectionalTextAlignment.none(_:), v11);
  v30 = objc_allocWithZone(sub_1007626BC());
  *&v5[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_textLabel] = sub_1007626AC();
  v31 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_separatorView] = v31;
  v49.receiver = v5;
  v49.super_class = ObjectType;
  v32 = objc_msgSendSuper2(&v49, "initWithFrame:", a1, a2, a3, a4);
  v33 = [v32 layer];
  [v33 setAllowsGroupOpacity:0];

  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [v32 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v37 = [v32 contentView];
  [v37 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v38 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_100016F40(0, &qword_100942F10);
  v39 = sub_100770DCC();
  [v38 setBackgroundColor:v39];

  [v38 setOpaque:0];
  [v38 setUserInteractionEnabled:0];
  [v32 setSelectedBackgroundView:v38];
  v40 = OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_separatorView;
  v41 = *&v32[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_separatorView];
  v42 = sub_100770CDC();
  [v41 setBackgroundColor:v42];

  [*&v32[v40] setHidden:0];
  v43 = [v32 contentView];
  [v43 addSubview:*&v32[v40]];

  v44 = OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_textLabel;
  [*&v32[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_textLabel] setLineBreakMode:0];
  v45 = *&v32[v44];
  sub_10076266C();

  v46 = [v32 contentView];
  [v46 addSubview:*&v32[v44]];

  sub_100291188();
  sub_10000A5D4(&unk_100945BF0);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_100783DD0;
  *(v47 + 32) = sub_10076E3FC();
  *(v47 + 40) = &protocol witness table for UITraitLegibilityWeight;
  sub_100770C6C();

  swift_unknownObjectRelease();

  return v32;
}

void sub_100291188()
{
  v1 = v0;
  v2 = sub_10076D1AC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1002907D4();
  swift_beginAccess();
  sub_10076062C();
  swift_endAccess();
  v7.super.isa = [v0 traitCollection];
  isa = v7.super.isa;
  v9 = sub_10076D19C(v7).super.isa;

  (*(v3 + 8))(v5, v2);
  v10 = [objc_opt_self() configurationWithFont:v9 scale:1];

  sub_10075FC3C();
  v11 = sub_1002907D4();
  LOBYTE(v6) = sub_10075FBFC();

  if (v6)
  {
    v12 = sub_1002907D4();
    v13 = sub_10075FC2C();

    if (v13)
    {
      v14 = sub_1002907D4();
      v15 = sub_10075FC9C();

      if (v15)
      {
        v16 = [v15 imageWithConfiguration:v13];

        [v16 size];
        v18 = v17;
        v20 = v19;

        v21 = &v1[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_artworkSize];
        *v21 = v18;
        *(v21 + 1) = v20;
        v21[16] = 0;
        [v1 setNeedsLayout];
      }
    }
  }
}

uint64_t sub_100291410()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v73 = sub_10076D1FC();
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v71 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_10076065C();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v75 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A5D4(&unk_10094CD50);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v70 - v7;
  v9 = sub_10076063C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v79 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = __chkstk_darwin(v12).n128_u64[0];
  v15 = &v70 - v14;
  v100.receiver = v1;
  v100.super_class = ObjectType;
  objc_msgSendSuper2(&v100, "layoutSubviews", v13);
  v16 = [v1 contentView];
  v17 = sub_100016F40(0, &qword_1009441F0);
  sub_10076422C();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v26 = [v1 traitCollection];
  sub_10076E20C();
  v28 = v27;

  v29 = OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_layoutMetrics;
  swift_beginAccess();
  v74 = v10;
  v30 = *(v10 + 16);
  v80 = v15;
  v30(v15, &v1[v29], v9);
  v31 = OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_lazilyCreatedArtworkView;
  v32 = *&v1[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_lazilyCreatedArtworkView];
  v78 = v9;
  if (v32)
  {
    v33 = &v1[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_artworkSize];
    if ((v1[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_artworkSize + 16] & 1) != 0 || (v35 = *v33, v34 = v33[1], *v33 == 0.0) && v34 == 0.0)
    {
      v70 = v6;
      v36 = qword_10093FCF0;
      v37 = v32;
      if (v36 != -1)
      {
        swift_once();
      }

      sub_10000A61C(v9, qword_10099E180);
      sub_1007605FC();
      v38 = [v1 traitCollection];
      sub_10075FDBC();

      v9 = v78;
      (*(v70 + 8))(v8, v5);
      v35 = v95;
      v34 = v96;
    }

    else
    {
      v37 = v32;
    }

    v39 = sub_10075FC6C();
    *(v40 + 16) = v35;
    *(v40 + 24) = v34;
    v39(&v95, 0);
  }

  if (v1[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_hasArtworkToDisplay] == 1)
  {
    v41 = *&v1[v31];
    if (v41)
    {
      v42 = sub_10075FD2C();
      v43 = v41;
      v44 = &protocol witness table for UIView;
      goto LABEL_15;
    }
  }

  else
  {
    v41 = 0;
  }

  v42 = 0;
  v44 = 0;
LABEL_15:
  v95 = *&v41;
  v96 = 0.0;
  v97 = 0;
  v98 = v42;
  v99 = v44;
  v30(v79, v80, v9);
  sub_100016E2C(&v95, v94, &unk_10094DA00);
  v45 = *&v1[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_textLabel];
  v46 = sub_1007626BC();
  v93 = &protocol witness table for UILabel;
  v92 = v46;
  v91 = v45;
  v47 = *&v1[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_accessoryView];
  if (v47)
  {
    v48 = &protocol witness table for UIView;
    v49 = *&v1[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_accessoryView];
  }

  else
  {
    v49 = 0;
    v17 = 0;
    v48 = 0;
    v88 = 0;
    v87 = 0;
  }

  v86 = v49;
  v89 = v17;
  v90 = v48;
  v50 = *&v1[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_searchAdTransparencyButton];
  if (v50)
  {
    v51 = type metadata accessor for SearchAdTransparencyButton();
    v52 = &protocol witness table for UIView;
  }

  else
  {
    v51 = 0;
    v52 = 0;
    v83 = 0;
    v82 = 0;
  }

  v53 = v21 + v28;
  v54 = v25 - v28;
  v81 = v50;
  v84 = v51;
  v85 = v52;
  v55 = *&v1[v31];
  v56 = v55;
  v57 = v50;
  v58 = v45;
  v59 = v47;

  if (v55)
  {
    sub_10075FC4C();
  }

  swift_unknownObjectRetain();
  v60 = v75;
  sub_10076064C();
  v61 = v71;
  sub_1007605CC();
  (*(v72 + 8))(v61, v73);
  v62 = [v1 traitCollection];
  LOBYTE(v61) = sub_10077070C();

  if (v61)
  {
    v63 = v19;
    v64 = v53;
    v65 = v23;
    v66 = v25 - v28;
  }

  else
  {
    [v58 frame];
  }

  MinX = CGRectGetMinX(*&v63);
  [v1 bounds];
  MaxY = CGRectGetMaxY(v101);
  v102.origin.x = v19;
  v102.origin.y = v53;
  v102.size.width = v23;
  v102.size.height = v54;
  [*&v1[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_separatorView] setFrame:{MinX, MaxY - v28, CGRectGetWidth(v102), v28}];
  (*(v76 + 8))(v60, v77);
  sub_10000CFBC(&v95, &unk_10094DA00);
  return (*(v74 + 8))(v80, v78);
}

double sub_100291C3C()
{
  v1 = sub_10000A5D4(&unk_10094CD50);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - v3;
  v5 = &v0[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_artworkSize];
  if ((v0[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_artworkSize + 16] & 1) != 0 || (result = *v5, *v5 == 0.0) && v5[1] == 0.0)
  {
    if (qword_10093FCF0 != -1)
    {
      swift_once();
    }

    v7 = sub_10076063C();
    sub_10000A61C(v7, qword_10099E180);
    sub_1007605FC();
    v8 = [v0 traitCollection];
    sub_10075FDBC();

    (*(v2 + 8))(v4, v1);
    return v9;
  }

  return result;
}

id sub_100291E00(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10076D1AC();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28.receiver = v2;
  v28.super_class = ObjectType;
  objc_msgSendSuper2(&v28, "traitCollectionDidChange:", a1, v7);
  v10 = [v2 traitCollection];
  v11 = [v10 layoutDirection];

  if (!a1 || v11 != [a1 layoutDirection])
  {
    if (qword_10093FCF8 != -1)
    {
      swift_once();
    }

    v12 = sub_10000A5D4(&unk_100942EF0);
    sub_10000A61C(v12, qword_10094FAF0);
    v13 = [v2 traitCollection];
    sub_10075FDBC();

    sub_100770E7C();
  }

  v14 = [v2 traitCollection];
  v15 = [v14 preferredContentSizeCategory];

  if (!a1)
  {

LABEL_12:
    sub_100291188();
    v23 = *&v2[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_textLabel];
    swift_beginAccess();
    sub_10076062C();
    swift_endAccess();
    v24.super.isa = [v2 traitCollection];
    isa = v24.super.isa;
    v26 = sub_10076D19C(v24).super.isa;

    (*(v6 + 8))(v9, v5);
    [v23 setFont:v26];

    return [v2 setNeedsLayout];
  }

  v16 = [a1 preferredContentSizeCategory];
  v17 = sub_10076FF9C();
  v19 = v18;
  if (v17 == sub_10076FF9C() && v19 == v20)
  {
  }

  v22 = sub_10077167C();

  if ((v22 & 1) == 0)
  {
    goto LABEL_12;
  }

  return result;
}

void sub_1002921BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = sub_10076BF6C();
  __chkstk_darwin(v6 - 8);
  v36 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_10094CD50);
  v34 = *(v8 - 8);
  v35 = v8;
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  v11 = sub_10076063C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10076BEDC();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v33 = a2;
    v3[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_hasArtworkToDisplay] = 1;

    sub_10076BEEC();
    v32 = sub_10076BE9C();
    (*(v16 + 8))(v18, v15);
    v19 = OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_layoutMetrics;
    swift_beginAccess();
    (*(v12 + 16))(v14, &v3[v19], v11);
    v20 = sub_100293C74(a1, v14, v3);
    v22 = v21;
    (*(v12 + 8))(v14, v11);
    v23 = &v3[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_artworkSize];
    *v23 = v20;
    v23[1] = v22;
    *(v23 + 16) = 0;
    if (v20 == 0.0 && v22 == 0.0)
    {
      if (qword_10093FCF0 != -1)
      {
        swift_once();
      }

      sub_10000A61C(v11, qword_10099E180);
      sub_1007605FC();
      v24 = [v3 traitCollection];
      v25 = v35;
      sub_10075FDBC();

      (*(v34 + 8))(v10, v25);
    }

    sub_10076BFBC();
    v26 = sub_1002907D4();
    sub_10076BF7C();
    sub_10075FCCC();
    [v26 setContentMode:sub_10076BDBC()];
    sub_100764ADC();
    sub_10075FD0C();
    if (!sub_10076BE1C())
    {
      sub_100016F40(0, &qword_100942F10);
      sub_100770D5C();
    }

    sub_10075FB8C();

    v27 = sub_1002907D4();
    [v27 setContentMode:v32];

    v38 = v3;
    sub_100293F54(&qword_10094FB80, type metadata accessor for ActionCollectionViewCell);
    v28 = v3;
    sub_10077140C();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_100760B7C();

    sub_10000CFBC(&v39, &qword_100943310);
  }

  else
  {
    v29 = sub_1002907D4();
    v40.value.super.isa = 0;
    v40.is_nil = 0;
    sub_10075FCEC(v40, v30);

    v3[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_hasArtworkToDisplay] = 0;
  }
}

void sub_100292720(objc_class *a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = sub_1002907D4();

    v12.is_nil = (a2 & 1) == 0;
    v12.value.super.isa = a1;
    sub_10075FC5C(v12, v7);
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    sub_100291188();
  }

  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    [v10 setNeedsLayout];
  }
}

void sub_100292808(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v4 = type metadata accessor for Accessory();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v25 = (&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10000A5D4(&qword_10094BB50);
  __chkstk_darwin(v7 - 8);
  v27 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v25 - v10;
  v12 = sub_10000A5D4(&qword_10094BB58);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v25 - v14;
  v16 = OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_accessory;
  swift_beginAccess();
  v17 = *(v13 + 56);
  v28 = a1;
  sub_100016E2C(a1, v15, &qword_10094BB50);
  sub_100016E2C(v2 + v16, &v15[v17], &qword_10094BB50);
  v18 = *(v5 + 48);
  if (v18(v15, 1, v4) == 1)
  {
    if (v18(&v15[v17], 1, v4) == 1)
    {
      sub_10000CFBC(v15, &qword_10094BB50);
      return;
    }
  }

  else
  {
    sub_100016E2C(v15, v11, &qword_10094BB50);
    if (v18(&v15[v17], 1, v4) != 1)
    {
      v23 = v25;
      sub_1000366F4(&v15[v17], v25);
      v24 = sub_10052A9D0(v11, v23);
      sub_100036758(v23);
      sub_100036758(v11);
      sub_10000CFBC(v15, &qword_10094BB50);
      if (v24)
      {
        return;
      }

      goto LABEL_7;
    }

    sub_100036758(v11);
  }

  sub_10000CFBC(v15, &qword_10094BB58);
LABEL_7:
  swift_beginAccess();
  v19 = v28;
  sub_100293F9C(v28, v2 + v16);
  swift_endAccess();
  v20 = v27;
  sub_100016E2C(v19, v27, &qword_10094BB50);
  if (v18(v20, 1, v4) == 1)
  {
    sub_10000CFBC(v20, &qword_10094BB50);
    sub_100290710(0);
  }

  else
  {
    sub_100527CDC(v26);
    v22 = v21;
    sub_100036758(v20);
    sub_100290710(v22);
  }
}

uint64_t type metadata accessor for ActionCollectionViewCell()
{
  result = qword_10094FB60;
  if (!qword_10094FB60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100292E24()
{
  sub_100292FA8(319, &qword_10094B950, type metadata accessor for Accessory);
  if (v0 <= 0x3F)
  {
    sub_10076063C();
    if (v1 <= 0x3F)
    {
      sub_100292FA8(319, &qword_100944F90, &type metadata accessor for ItemLayoutContext);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_100292FA8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1007711AC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100293008()
{
  v0 = sub_1002907D4();
  sub_10075FB6C();

  v1 = sub_1002907D4();
  sub_10075FD2C();
  sub_100293F54(&qword_100941820, &type metadata accessor for ArtworkView);
  sub_100760BFC();
}

uint64_t sub_1002930CC(uint64_t a1)
{
  result = sub_100293F54(&unk_10094FB70, type metadata accessor for ActionCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

double sub_100293124(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5, int a6, int a7)
{
  v56 = a7;
  v51 = a6;
  v55 = a4;
  v54 = a3;
  v65 = a2;
  v63 = a1;
  v58 = sub_10076063C();
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v59 = &v50[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v62 = sub_10076065C();
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v60 = &v50[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v53 = sub_10076997C();
  v52 = *(v53 - 8);
  __chkstk_darwin(v53);
  v11 = &v50[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_10076D1AC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v50[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = type metadata accessor for Accessory();
  __chkstk_darwin(v16);
  v18 = &v50[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = sub_10000A5D4(&unk_10094CD50);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v50[-v21];
  v64 = 0;
  if (a5)
  {
    sub_1007605FC();
    v77 = *&v65;
    sub_10075FDCC();
    (*(v20 + 8))(v22, v19);
    sub_10076DDDC();
    swift_allocObject();
    v64 = sub_10076DDBC();
  }

  if (v51)
  {
    swift_storeEnumTagMultiPayload();
    v23 = v65;
    v24 = [v65 traitCollection];
    sub_100528FA8(v24);

    sub_10076DDDC();
    swift_allocObject();
    v25 = sub_10076DDBC();
    sub_100036758(v18);
  }

  else
  {
    v25 = 0;
    v23 = v65;
  }

  v26 = v63;
  sub_10076062C();
  v27.super.isa = [v23 traitCollection];
  isa = v27.super.isa;
  v29 = sub_10076D19C(v27).super.isa;

  (*(v13 + 8))(v15, v12);
  v30 = sub_10076C04C();
  v82[3] = v30;
  v82[4] = sub_100293F54(&qword_100943230, &type metadata accessor for Feature);
  v31 = sub_10000DB7C(v82);
  (*(*(v30 - 8) + 104))(v31, enum case for Feature.measurement_with_labelplaceholder(_:), v30);

  v32 = v29;
  sub_10076C90C();
  sub_10000CD74(v82);
  sub_10076996C();
  sub_10076994C();
  (*(v52 + 8))(v11, v53);
  v33 = 0;
  if (v56)
  {
    v34 = [v23 traitCollection];
    sub_1001CDAF4(v34, 0, 0);

    sub_10076DDDC();
    swift_allocObject();
    v33 = sub_10076DDBC();
  }

  (*(v57 + 16))(v59, v26, v58);
  v35 = v64;
  if (v64)
  {
    v36 = sub_10076DDDC();
    v37 = &protocol witness table for LayoutViewPlaceholder;
    v38 = *&v35;
  }

  else
  {
    v38 = 0.0;
    v36 = 0;
    v37 = 0;
    v78 = 0;
    v79 = 0;
  }

  v77 = v38;
  v80 = v36;
  v81 = v37;
  sub_10000A570(v82, v76);
  if (v25)
  {
    v39 = sub_10076DDDC();
    v40 = &protocol witness table for LayoutViewPlaceholder;
    v41 = v25;
  }

  else
  {
    v41 = 0;
    v39 = 0;
    v40 = 0;
    v73 = 0;
    v72 = 0;
  }

  v71 = v41;
  v74 = v39;
  v75 = v40;
  v42 = 0;
  if (v33)
  {
    v42 = sub_10076DDDC();
    v43 = &protocol witness table for LayoutViewPlaceholder;
  }

  else
  {
    v43 = 0;
    v68 = 0;
    v67 = 0;
  }

  v66 = v33;
  v69 = v42;
  v70 = v43;
  swift_unknownObjectRetain();
  v44 = v60;
  sub_10076064C();
  sub_100770ACC();
  sub_100293F54(&qword_10094FB88, &type metadata accessor for ActionLayout);
  v45 = v62;
  sub_10076D2AC();
  v77 = v46;
  v78 = v47;
  sub_100770ADC();
  v48 = [v23 traitCollection];
  sub_10076E20C();

  (*(v61 + 8))(v44, v45);
  sub_10000CD74(v82);
  return v77;
}

double sub_100293A18(uint64_t a1, void *a2)
{
  sub_1007605DC();
  v4 = v3;
  v5 = [a2 traitCollection];
  sub_10076E20C();

  return v4;
}

void sub_100293A84()
{
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_accessoryView) = 0;
  v1 = OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_accessory;
  v2 = type metadata accessor for Accessory();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_searchAdTransparencyButton) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_isDisplayingSearchAd) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_hasArtworkToDisplay) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_isDisplayingSearchTrendingAction) = 0;
  v3 = OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_layoutMetrics;
  if (qword_10093FCF0 != -1)
  {
    swift_once();
  }

  v4 = sub_10076063C();
  v5 = sub_10000A61C(v4, qword_10099E180);
  (*(*(v4 - 8) + 16))(v0 + v3, v5, v4);
  v6 = v0 + OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_artworkSize;
  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 16) = 1;
  v7 = OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_itemLayoutContext;
  v8 = sub_10076341C();
  (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_isVertical) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_lazilyCreatedArtworkView) = 0;
  v9 = (v0 + OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_accessoryAction);
  *v9 = 0;
  v9[1] = 0;
  sub_10077156C();
  __break(1u);
}

double sub_100293C74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000A5D4(&unk_10094CD50);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - v6;
  v8 = sub_10000A5D4(&unk_100957B30);
  __chkstk_darwin(v8 - 8);
  v10 = &v18 - v9;
  v11 = sub_10076D39C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076BEFC();
  sub_10076D3AC();
  sub_10076061C();
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_10000CFBC(v10, &unk_100957B30);
    sub_1007605FC();
    v19 = a3;
    sub_10075FDCC();
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    v19 = a3;
    sub_10075FDCC();
    (*(v5 + 8))(v10, v4);
  }

  sub_10076D31C();
  v16 = v15;
  (*(v12 + 8))(v14, v11);
  return v16;
}

uint64_t sub_100293F14()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100293F54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100293F9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_10094BB50);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_10029412C(void *a1)
{
  v2 = v1;
  sub_1000730D8(0);
  v4 = [a1 viewForKey:UITransitionContextFromViewKey];
  v5 = v4;
  if (v4)
  {
    [v4 frame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v131 = v12;
  }

  else
  {
    v13 = [a1 containerView];
    [v13 bounds];
    v7 = v14;
    v9 = v15;
    v11 = v16;
    v131 = v17;
  }

  v18 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 traitCollection];

    v21 = [v20 horizontalSizeClass];
    if (v21 == 1)
    {
      v22 = 0.0;
    }

    else
    {
      v22 = 0.25;
    }
  }

  else
  {
    v22 = 0.25;
  }

  v23 = *&v2[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageCloseAnimation_toCardView];
  v129 = v9;
  if (!v23 || (v24 = &v2[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageCloseAnimation_toBounds], (v2[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageCloseAnimation_toBounds + 32] & 1) != 0) || (v25 = &v2[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageCloseAnimation_toCenter], (v2[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageCloseAnimation_toCenter + 16] & 1) != 0))
  {
    v137.origin.x = v7;
    v137.origin.y = v9;
    v137.size.width = v11;
    v137.size.height = v131;
    v27 = v22 * CGRectGetWidth(v137);
    v138.origin.x = v7;
    v138.origin.y = v9;
    v138.size.width = v11;
    v138.size.height = v131;
    v28 = CGRectGetHeight(v138) * 0.25;
    v139.origin.x = v7;
    v139.origin.y = v9;
    v139.size.width = v11;
    v139.size.height = v131;
    v140 = CGRectInset(v139, v27, v28);
    width = v140.size.width;
    height = v140.size.height;
    v140.origin.x = v7;
    v140.origin.y = v9;
    v140.size.width = v11;
    v140.size.height = v131;
    MidX = CGRectGetMidX(v140);
    v141.origin.x = v7;
    v141.origin.y = v9;
    v141.size.width = v11;
    v141.size.height = v131;
    MidY = CGRectGetMidY(v141);
    v125 = 0.0;
    v126 = 0.0;
  }

  else
  {
    MidX = *v25;
    MidY = v25[1];
    width = v24[2];
    height = v24[3];
    v125 = *v24;
    v126 = v24[1];
  }

  v29 = *&v2[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageCloseAnimation_toCollectionViewController];
  v30 = 0.0;
  if (v29)
  {
    v31 = [*&v2[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageCloseAnimation_toCollectionViewController] view];
    v32 = MidX;
    v33 = MidY;
    v34 = 0.0;
    if (v31)
    {
      v35 = v31;
      [v31 bounds];
      v37 = v36;
      v39 = v38;
      v41 = v40;
      v42 = MidX;
      v44 = v43;
      v45 = [a1 containerView];
      v46 = v44;
      MidX = v42;
      [v35 convertRect:v45 toCoordinateSpace:{v37, v39, v41, v46}];
      v30 = v47;
      v34 = v48;

      v32 = v42 + v30;
      v33 = MidY + v34;
    }
  }

  else
  {
    v32 = MidX;
    v33 = MidY;
    v34 = 0.0;
  }

  v123 = v33;
  v124 = v32;
  v49 = *&v2[OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageCloseAnimation_detailPageViewController];
  if (v49)
  {
    v50 = [v49 view];
    if (!v50)
    {
      __break(1u);
      goto LABEL_71;
    }

    v51 = v50;
    [v50 transform];
    v121 = v134;
    v122 = aBlock;
    v120 = v135;

    aBlock = v122;
    v134 = v121;
    v135 = v120;
    [v23 setTransform:&aBlock];
  }

  v142.origin.x = v7;
  v142.origin.y = v129;
  v142.size.width = v11;
  v142.size.height = v131;
  v52 = CGRectGetMidX(v142);
  v143.origin.x = v7;
  v143.origin.y = v129;
  v53 = v11;
  v143.size.width = v11;
  v143.size.height = v131;
  v54 = CGRectGetMidY(v143);
  if (!v23)
  {
    goto LABEL_27;
  }

  v55 = v54;
  if (!v29)
  {
    v60 = v23;
    v59 = [a1 containerView];
    [v59 insertSubview:v60 below:v5];
    goto LABEL_26;
  }

  v56 = v29;
  v57 = v23;
  v58 = [v56 view];
  if (!v58)
  {
LABEL_71:
    __break(1u);
    return;
  }

  v59 = v58;
  [v58 addSubview:v57];

LABEL_26:
  [v23 setHidden:0];
  [v23 setBounds:{0.0, 0.0, v53, v131}];
  [v23 setCenter:{v52 - v30, v55 - v34}];
  [v23 setNeedsLayout];
  [v23 layoutIfNeeded];
  [v23 setAlpha:0.0];

LABEL_27:
  v130 = [a1 viewForKey:{UITransitionContextToViewKey, v54, v120, v121, v122}];
  if (v130)
  {
    v61 = MidX;
    v62 = v130;
    v63 = [a1 containerView];
    [v63 bounds];
    v65 = v64;
    v67 = v66;
    v69 = v68;
    v71 = v70;

    [v62 setFrame:{v65, v67, v69, v71}];
    if (v23)
    {
      v72 = v23;
      v73 = [a1 containerView];
      [v73 insertSubview:v62 below:v72];
    }

    else
    {
      v73 = [a1 containerView];
      [v73 insertSubview:v62 below:v5];
    }

    MidX = v61;
  }

  v74 = _swiftEmptyArrayStorage;
  v136 = _swiftEmptyArrayStorage;
  if (!UIAccessibilityIsReduceMotionEnabled())
  {
    v75 = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:180.0 damping:22.0 initialVelocity:{0.0, 0.0}];
    v76 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v75 timingParameters:0.0];

    v77 = swift_allocObject();
    *(v77 + 16) = v2;
    *(v77 + 24) = v23;
    *(v77 + 32) = v125;
    *(v77 + 40) = v126;
    *(v77 + 48) = width;
    *(v77 + 56) = height;
    *(v77 + 64) = MidX;
    *(v77 + 72) = MidY;
    *(v77 + 80) = v5;
    *(v77 + 88) = v124;
    *(v77 + 96) = v123;
    *&v135 = sub_100295440;
    *(&v135 + 1) = v77;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v134 = sub_10009AEDC;
    *(&v134 + 1) = &unk_10088F4C0;
    v78 = _Block_copy(&aBlock);
    v79 = v23;
    v80 = v2;
    v81 = v5;

    [v76 addAnimations:v78];
    _Block_release(v78);
    v82 = swift_allocObject();
    *(v82 + 16) = a1;
    *(v82 + 24) = v80;
    *&v135 = sub_1002954B4;
    *(&v135 + 1) = v82;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v134 = sub_10017722C;
    *(&v134 + 1) = &unk_10088F510;
    v83 = _Block_copy(&aBlock);
    v84 = v80;
    swift_unknownObjectRetain();

    [v76 addCompletion:v83];
    _Block_release(v83);
    v85 = v76;
    sub_10077019C();
    if (*((v136 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v136 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10077021C();
    }

    sub_10077025C();

    v74 = v136;
  }

  if (!v5)
  {
LABEL_39:
    if (!UIAccessibilityIsReduceMotionEnabled())
    {
      goto LABEL_47;
    }

    goto LABEL_44;
  }

  v86 = v5;
  if (UIAccessibilityIsReduceMotionEnabled())
  {

    goto LABEL_39;
  }

  v87 = swift_allocObject();
  *(v87 + 16) = v86;
  v88 = objc_allocWithZone(UIViewPropertyAnimator);
  *&v135 = sub_1002955D8;
  *(&v135 + 1) = v87;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v134 = sub_10009AEDC;
  *(&v134 + 1) = &unk_10088F650;
  v89 = _Block_copy(&aBlock);
  v90 = v86;

  v91 = [v88 initWithDuration:v89 controlPoint1:0.216 controlPoint2:0.33 animations:{0.0, 0.83, 0.83}];
  _Block_release(v89);
  v92 = swift_allocObject();
  *(v92 + 16) = v90;
  *&v135 = sub_1002955EC;
  *(&v135 + 1) = v92;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v134 = sub_10017722C;
  *(&v134 + 1) = &unk_10088F6A0;
  v93 = _Block_copy(&aBlock);
  v94 = v90;

  [v91 addCompletion:v93];
  _Block_release(v93);

  v95 = v91;
  sub_10077019C();
  if (*((v136 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v136 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10077021C();
  }

  sub_10077025C();

  v74 = v136;
  if (UIAccessibilityIsReduceMotionEnabled())
  {
LABEL_44:
    [v23 setBounds:{v125, v126, width, height}];
    [v23 setCenter:{MidX, MidY}];
    v96 = swift_allocObject();
    v96[2] = v2;
    v96[3] = v23;
    v96[4] = v5;
    v97 = objc_allocWithZone(UIViewPropertyAnimator);
    *&v135 = sub_100295578;
    *(&v135 + 1) = v96;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v134 = sub_10009AEDC;
    *(&v134 + 1) = &unk_10088F5B0;
    v98 = _Block_copy(&aBlock);
    v99 = v23;
    v100 = v2;
    v101 = v5;

    v102 = [v97 initWithDuration:0 curve:v98 animations:0.3];
    _Block_release(v98);
    v103 = swift_allocObject();
    v103[2] = v5;
    v103[3] = a1;
    v103[4] = v100;
    *&v135 = sub_1002955CC;
    *(&v135 + 1) = v103;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v134 = sub_10017722C;
    *(&v134 + 1) = &unk_10088F600;
    v104 = _Block_copy(&aBlock);
    v105 = v100;
    v106 = v101;
    swift_unknownObjectRetain();

    [v102 addCompletion:v104];
    _Block_release(v104);
    v107 = v102;
    sub_10077019C();
    if (*((v136 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v136 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10077021C();
    }

    sub_10077025C();

    v74 = v136;
  }

LABEL_47:
  if (v74 >> 62)
  {
    goto LABEL_59;
  }

  for (i = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10077158C())
  {
    v109 = 0;
    while (1)
    {
      if ((v74 & 0xC000000000000001) != 0)
      {
        v110 = sub_10077149C();
      }

      else
      {
        if (v109 >= *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_58;
        }

        v110 = *(v74 + 8 * v109 + 32);
      }

      v111 = v110;
      v112 = v109 + 1;
      if (__OFADD__(v109, 1))
      {
        break;
      }

      [v110 startAnimation];

      ++v109;
      if (v112 == i)
      {
        goto LABEL_60;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    ;
  }

LABEL_60:
  if (!v23)
  {
    goto LABEL_68;
  }

  v113 = v23;
  if (UIAccessibilityIsReduceMotionEnabled())
  {

LABEL_69:

    return;
  }

  v114 = swift_allocObject();
  *(v114 + 16) = v113;
  v115 = objc_allocWithZone(UIViewPropertyAnimator);
  *&v135 = sub_1000718A0;
  *(&v135 + 1) = v114;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v134 = sub_10009AEDC;
  *(&v134 + 1) = &unk_10088F560;
  v116 = _Block_copy(&aBlock);
  v117 = v113;

  v118 = [v115 initWithDuration:v116 controlPoint1:0.13 controlPoint2:0.17 animations:{0.0, 0.67, 1.0}];
  _Block_release(v116);

  if (!v118)
  {
LABEL_68:

    goto LABEL_69;
  }

  [v118 startAnimationAfterDelay:0.083];
  v119 = v118;
  sub_10077019C();
  if (*((v136 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v136 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10077021C();
  }

  sub_10077025C();
}

id sub_100295030(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, uint64_t a9, void *a10, void *a11)
{
  sub_1000730D8(1);
  [a10 setBounds:{a1, a2, a3, a4}];
  [a10 setCenter:{a5, a6}];
  if (a10)
  {
    v22[0] = 0x3FF0000000000000;
    v22[1] = 0;
    v22[2] = 0;
    v22[3] = 0x3FF0000000000000;
    v22[4] = 0;
    v22[5] = 0;
    [a10 setTransform:v22];
  }

  [a11 setBounds:{a1, a2, a3, a4}];
  return [a11 setCenter:{a7, a8}];
}

id sub_100295140(uint64_t a1, void *a2, void *a3)
{
  v6 = OBJC_IVAR____TtC20ProductPageExtension27AnimatedTransitionWithTasks_tasks;
  result = swift_beginAccess();
  v8 = *(a1 + v6);
  v9 = *(v8 + 16);
  if (v9)
  {

    v10 = (v8 + 48);
    v11 = (v8 + 48);
    do
    {
      v12 = *v11;
      v11 += 24;
      if (v12 == 1)
      {
        v13 = *(v10 - 2);

        v13(1, 1);
      }

      v10 = v11;
      --v9;
    }

    while (v9);
  }

  if (a2)
  {
    [a2 setAlpha:1.0];
    v14[0] = 0x3FF0000000000000;
    v14[1] = 0;
    v14[2] = 0;
    v14[3] = 0x3FF0000000000000;
    v14[4] = 0;
    v14[5] = 0;
    result = [a2 setTransform:v14];
  }

  if (a3)
  {
    return [a3 setAlpha:0.0];
  }

  return result;
}

uint64_t sub_10029525C(uint64_t result, id a2, id a3)
{
  if (!result)
  {
    v8 = v3;
    if (a2)
    {
      v7 = a3;
      [a2 setHidden:1];
      a3 = v7;
    }

    [a3 completeTransition:{1, v4, v8, v5, v6}];
    return sub_1000730D8(2);
  }

  return result;
}

void sub_1002952F4()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageCloseAnimation_detailPageViewController);
}

id sub_100295344()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppPromotionDetailPageCloseAnimation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1002953F8()
{

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_10029545C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100295474()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1002954B4(uint64_t result)
{
  if (!result)
  {
    [*(v1 + 16) completeTransition:1];
    return sub_1000730D8(2);
  }

  return result;
}

uint64_t sub_1002954F8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100295530()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100295584()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

id sub_1002955EC(id result)
{
  if (!result)
  {
    return [*(v1 + 16) setHidden:1];
  }

  return result;
}

void (*sub_100295640(uint64_t *a1))(id *a1, char a2)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_videoView;
  a1[1] = *(v1 + OBJC_IVAR____TtC20ProductPageExtension37ContentSearchResultCollectionViewCell_screenshots);
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_1002956A4;
}

void sub_1002956A4(id *a1, char a2)
{
  v4 = a1[1];
  v26 = *a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = Strong;
  if (a2)
  {
    if (Strong)
    {
      sub_1002970D4(&qword_100942810, 255, type metadata accessor for VideoView);
      v7 = v26;
      v8 = [v6 superview];
      if (v8)
      {
        v9 = v8;
        sub_1000ACA5C();
        v10 = v4;
        v11 = sub_100770EEC();

        if (v11)
        {
          v12 = swift_unknownObjectWeakLoadStrong();
          if (v12)
          {
            v13 = v12;
            [v12 removeFromSuperview];
          }
        }
      }

      else
      {
      }
    }

    else
    {
      v7 = v26;
    }

    swift_unknownObjectWeakAssign();
    v23 = swift_unknownObjectWeakLoadStrong();
    v24 = a1[1];
    if (v23)
    {
      v25 = v23;
      [a1[1] addSubview:v23];
    }

    sub_10057E5D8();
    [v24 setNeedsLayout];

    v22 = *a1;
    goto LABEL_21;
  }

  if (Strong)
  {
    sub_1002970D4(&qword_100942810, 255, type metadata accessor for VideoView);
    v14 = [v6 superview];
    if (v14)
    {
      v15 = v14;
      sub_1000ACA5C();
      v16 = v4;
      v17 = sub_100770EEC();

      if ((v17 & 1) == 0)
      {
        goto LABEL_13;
      }

      v18 = swift_unknownObjectWeakLoadStrong();
      if (!v18)
      {
        goto LABEL_13;
      }

      v6 = v18;
      [v18 removeFromSuperview];
    }
  }

LABEL_13:
  swift_unknownObjectWeakAssign();
  v19 = swift_unknownObjectWeakLoadStrong();
  v20 = a1[1];
  if (v19)
  {
    v21 = v19;
    [a1[1] addSubview:v19];
  }

  sub_10057E5D8();
  [v20 setNeedsLayout];
  v22 = v26;
LABEL_21:
}

char *sub_100295948(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC20ProductPageExtension37ContentSearchResultCollectionViewCell_lockupView;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC20ProductPageExtension37ContentSearchResultCollectionViewCell_screenshots;
  *&v4[v10] = [objc_allocWithZone(type metadata accessor for LockupMediaView()) init];
  *&v4[OBJC_IVAR____TtC20ProductPageExtension37ContentSearchResultCollectionViewCell_preferredImageSizes] = &_swiftEmptyDictionarySingleton;
  v20.receiver = v4;
  v20.super_class = type metadata accessor for ContentSearchResultCollectionViewCell();
  v11 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v15 = v11;
  [v15 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v16 = [v15 contentView];
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v17 = [v15 contentView];
  [v17 addSubview:*&v15[OBJC_IVAR____TtC20ProductPageExtension37ContentSearchResultCollectionViewCell_lockupView]];

  v18 = [v15 contentView];
  [v18 addSubview:*&v15[OBJC_IVAR____TtC20ProductPageExtension37ContentSearchResultCollectionViewCell_screenshots]];

  return v15;
}

id sub_100295C00()
{
  v1 = v0;
  v33.receiver = v0;
  v33.super_class = type metadata accessor for ContentSearchResultCollectionViewCell();
  objc_msgSendSuper2(&v33, "layoutSubviews");
  v2 = [v0 contentView];
  sub_1000ACA5C();
  sub_10076422C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = *&v1[OBJC_IVAR____TtC20ProductPageExtension37ContentSearchResultCollectionViewCell_lockupView];
  sub_10052225C();
  sub_100770A4C();
  [v11 setFrame:?];
  v34.origin.x = v4;
  v34.origin.y = v6;
  v34.size.width = v8;
  v34.size.height = v10;
  CGRectGetMinX(v34);
  [v11 frame];
  CGRectGetMaxY(v35);
  if (qword_1009411F0 != -1)
  {
    swift_once();
  }

  v12 = sub_10076D9AC();
  sub_10000A61C(v12, qword_1009A2350);
  v13 = [v1 traitCollection];
  sub_10076DEDC();
  sub_10000A5D4(&unk_100942870);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1007841E0;
  *(v14 + 32) = v13;
  v15 = v13;
  v16 = sub_10076DEEC();
  sub_10076D3EC();

  v18 = *&v11[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_title];
  v17 = *&v11[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_title + 8];
  v19 = *&v11[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel];

  v20 = [v19 text];
  if (v20)
  {
    v21 = v20;
    v22 = sub_10076FF9C();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0;
  }

  v25 = [*&v11[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_descriptionLabel] text];
  if (v25)
  {
    v26 = v25;
    v27 = sub_10076FF9C();
    v29 = v28;
  }

  else
  {
    v27 = 0;
    v29 = 0;
  }

  v30 = [v1 traitCollection];
  sub_1002965F0(v18, v8, v17, v22, v24, v27, v29, v30);

  v31 = *&v1[OBJC_IVAR____TtC20ProductPageExtension37ContentSearchResultCollectionViewCell_screenshots];
  [v1 bounds];
  sub_100770A4C();
  return [v31 setFrame:?];
}

id sub_100296050()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContentSearchResultCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100296124(void *a1)
{
  sub_10029648C();
}

uint64_t (*sub_10029615C(uint64_t **a1))()
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
  v2[4] = sub_100295640(v2);
  return sub_100019A4C;
}

uint64_t sub_1002961CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_100296220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_10029628C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_getWitnessTable();
  *(v3 + 32) = sub_10076483C();
  return sub_10001D41C;
}

uint64_t sub_100296328(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension37ContentSearchResultCollectionViewCell_screenshots);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  sub_1000ACA5C();
  v5 = v2;
  v6 = sub_100770EEC();

  return v6 & 1;
}

id sub_10029648C()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension37ContentSearchResultCollectionViewCell_screenshots);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1002970D4(&qword_100942810, 255, type metadata accessor for VideoView);
    v4 = [v3 superview];
    if (!v4)
    {
LABEL_6:

      goto LABEL_7;
    }

    v5 = v4;
    sub_1000ACA5C();
    v6 = v1;
    v7 = sub_100770EEC();

    if (v7)
    {
      v8 = swift_unknownObjectWeakLoadStrong();
      if (v8)
      {
        v3 = v8;
        [v8 removeFromSuperview];
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  swift_unknownObjectWeakAssign();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    [v1 addSubview:v9];
  }

  sub_10057E5D8();

  return [v1 setNeedsLayout];
}

double sub_1002965F0(NSString *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v80 = a6;
  v81 = a7;
  v75 = a4;
  v76 = a5;
  v69 = a1;
  v10 = sub_10076749C();
  v86 = *(v10 - 8);
  v87 = v10;
  __chkstk_darwin(v10);
  v85 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10076997C();
  v78 = *(v12 - 8);
  v79 = v12;
  __chkstk_darwin(v12);
  v70 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10076443C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v65 - v19;
  v21 = sub_10076747C();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v83 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v65 - v25;
  if (qword_1009407E8 != -1)
  {
    swift_once();
  }

  v27 = sub_10000A61C(v21, qword_1009A0690);
  v28 = *(v22 + 16);
  v92 = v21;
  v72 = v28;
  v73 = v22 + 16;
  v28(v26, v27, v21);
  v29 = sub_10077071C();
  v84 = v22;
  if (v29)
  {
    if (qword_10093F520 != -1)
    {
      swift_once();
    }

    v30 = qword_100944C88;
  }

  else
  {
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v30 = qword_100944CA0;
  }

  v31 = sub_10000A61C(v14, v30);
  v32 = v15;
  (*(v15 + 16))(v17, v31, v14);
  (*(v15 + 32))(v20, v17, v14);
  v33 = [a8 preferredContentSizeCategory];
  sub_10077084C();
  v82 = v14;

  sub_1007643EC();
  sub_10076441C();
  v91 = v26;
  sub_10076746C();
  sub_10076745C();
  v34 = sub_10076DDDC();
  v74 = a8;
  v35 = v34;
  swift_allocObject();
  v90 = sub_10076DDBC();
  v36 = objc_opt_self();

  v66 = v36;
  v37 = [v36 preferredFontForTextStyle:UIFontTextStyleBody];
  v38 = sub_10076C04C();
  v77 = v20;
  v39 = v38;
  v129[3] = v38;
  *&v89 = sub_1002970D4(&qword_100943230, 255, &type metadata accessor for Feature);
  v129[4] = v89;
  v40 = sub_10000DB7C(v129);
  v68 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v41 = *(v39 - 8);
  v42 = *(v41 + 104);
  v71 = v32;
  v88 = v41 + 104;
  v42(v40);
  v67 = v42;
  sub_10076C90C();
  sub_10000CD74(v129);
  v43 = v70;
  sub_10076996C();
  sub_10076994C();
  v44 = v79;
  v78 = *(v78 + 8);
  (v78)(v43, v79);
  v69 = UIFontTextStyleFootnote;

  v45 = [v36 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v128[3] = v39;
  v128[4] = v89;
  v46 = sub_10000DB7C(v128);
  v47 = v68;
  (v42)(v46, v68, v39);
  sub_10076C90C();
  sub_10000CD74(v128);
  sub_10076996C();
  sub_10076994C();
  v48 = v78;
  (v78)(v43, v44);

  v49 = [v66 preferredFontForTextStyle:v69];
  v127[3] = v39;
  v127[4] = v89;
  v50 = sub_10000DB7C(v127);
  v67(v50, v47, v39);
  sub_10076C90C();
  sub_10000CD74(v127);
  sub_10076996C();
  sub_10076994C();
  v48(v43, v44);
  sub_10001D420(0, 0);
  swift_allocObject();
  v51 = sub_10076DDBC();

  sub_10001D420(0, 0);
  swift_allocObject();
  v52 = sub_10076DDBC();
  v72(v83, v91, v92);
  v126 = &protocol witness table for LayoutViewPlaceholder;
  v125 = v35;
  v124 = v90;
  v123 = 0;
  *&v121[40] = 0u;
  v122 = 0u;
  sub_10000A570(v129, v121);
  sub_10000A570(v128, &v120);
  v119 = 0;
  v117 = 0u;
  v118 = 0u;
  v116 = 0;
  v114 = 0u;
  v115 = 0u;

  v53 = sub_10076DDCC();
  v113 = &protocol witness table for LayoutViewPlaceholder;
  v112 = v35;
  v111 = v53;
  v110 = 0;
  v108 = 0u;
  v109 = 0u;
  v107 = 0;
  v105 = 0u;
  v106 = 0u;
  v104 = 0;
  v102 = 0u;
  v103 = 0u;
  v101 = 0;
  v100 = 0u;
  *&v99[40] = 0u;
  sub_10000A570(v127, v99);
  v97 = v35;
  v98 = &protocol witness table for LayoutViewPlaceholder;
  v95 = &protocol witness table for LayoutViewPlaceholder;
  v96 = v51;
  v94 = v35;
  v93 = v52;
  v54 = v85;
  sub_10076748C();
  sub_10076DEDC();
  sub_10000A5D4(&unk_100942870);
  v55 = swift_allocObject();
  v89 = xmmword_1007841E0;
  *(v55 + 16) = xmmword_1007841E0;
  v56 = v74;
  *(v55 + 32) = v74;
  v57 = v56;
  v58 = sub_10076DEEC();
  sub_1002970D4(&unk_100958A50, 255, &type metadata accessor for SmallSearchLockupLayout);
  v59 = v87;
  sub_10076D2AC();

  (*(v86 + 8))(v54, v59);
  sub_10000CD74(v127);
  sub_10000CD74(v128);
  sub_10000CD74(v129);
  (*(v71 + 8))(v77, v82);
  (*(v84 + 8))(v91, v92);
  if (qword_1009411F0 != -1)
  {
    swift_once();
  }

  v60 = sub_10076D9AC();
  sub_10000A61C(v60, qword_1009A2350);
  v61 = swift_allocObject();
  *(v61 + 16) = v89;
  *(v61 + 32) = v57;
  v62 = v57;
  v63 = sub_10076DEEC();
  sub_10076D3EC();

  return a2;
}

uint64_t sub_1002970D4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_100297130()
{
  result = qword_10094FC88;
  if (!qword_10094FC88)
  {
    sub_10076550C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094FC88);
  }

  return result;
}

uint64_t sub_100297190(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v2 = sub_10075F65C();
  v44 = *(v2 - 1);
  v45 = v2;
  __chkstk_darwin(v2);
  v43 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100765F6C();
  v41 = *(v4 - 8);
  v42 = v4;
  __chkstk_darwin(v4);
  v40 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100766EDC();
  v38 = *(v6 - 8);
  v39 = v6;
  __chkstk_darwin(v6);
  v37 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_100958150);
  __chkstk_darwin(v8 - 8);
  v36 = &v31 - v9;
  v10 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v10 - 8);
  v12 = &v31 - v11;
  v33 = &v31 - v11;
  v13 = sub_10076C15C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v16;
  v34 = sub_10076F4FC();
  v17 = *(v34 - 8);
  __chkstk_darwin(v34);
  v32 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v31 - v20;
  sub_1007654FC();
  v22 = objc_allocWithZone(ADTransparencyViewController);
  v23 = sub_10076FF6C();

  v24 = [v22 initWithTransparencyDetails:v23];

  sub_10076F4DC();
  v51 = 0;
  v49 = 0u;
  v50 = 0u;
  (*(v14 + 104))(v16, enum case for FlowPage.viewController(_:), v13);
  v25 = sub_10075DB7C();
  (*(*(v25 - 8) + 56))(v12, 1, 1, v25);
  v26 = sub_10076096C();
  (*(*(v26 - 8) + 56))(v36, 1, 1, v26);
  v48 = sub_10003F040();
  v47 = v24;
  v27 = v34;
  (*(v17 + 16))(v32, v21, v34);
  (*(v38 + 104))(v37, enum case for FlowPresentationContext.infer(_:), v39);
  (*(v41 + 104))(v40, enum case for FlowAnimationBehavior.infer(_:), v42);
  (*(v44 + 104))(v43, enum case for FlowOrigin.inapp(_:), v45);
  v45 = v24;
  sub_10076FA2C();
  sub_10075F63C();
  swift_allocObject();
  v28 = sub_10075F5EC();
  (*(v17 + 8))(v21, v27);
  v29 = sub_100563FF8(v28, 1, v46);

  return v29;
}

uint64_t sub_1002977A8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10076D39C();
  sub_10000DB18(v3, a2);
  sub_10000A61C(v3, a2);
  return sub_10076D3AC();
}

unint64_t sub_100297804(uint64_t a1, void *a2, void (*a3)(char *, char *, uint64_t), char *a4, double a5, double a6, double a7, double a8, double a9)
{
  v10 = v9;
  v246 = a4;
  v235 = a3;
  v234 = a2;
  v17 = sub_10000A5D4(&qword_10094A428);
  __chkstk_darwin(v17 - 8);
  v205 = &v198 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v213 = &v198 - v20;
  v21 = sub_10000A5D4(&unk_10094C030);
  __chkstk_darwin(v21 - 8);
  v223 = &v198 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v224 = &v198 - v24;
  v25 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v25 - 8);
  v222 = &v198 - v26;
  v27 = sub_1007611EC();
  __chkstk_darwin(v27 - 8);
  v211 = &v198 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v210 = &v198 - v30;
  __chkstk_darwin(v31);
  v217 = &v198 - v32;
  __chkstk_darwin(v33);
  v216 = &v198 - v34;
  v221 = sub_10076121C();
  v220 = *(v221 - 8);
  __chkstk_darwin(v221);
  v209 = &v198 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v215 = &v198 - v37;
  v226 = sub_10076481C();
  v225 = *(v226 - 8);
  __chkstk_darwin(v226);
  v212 = &v198 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v238 = &v198 - v40;
  v204 = type metadata accessor for ScreenshotDisplayConfiguration();
  v203 = *(v204 - 8);
  __chkstk_darwin(v204);
  v233 = &v198 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_10000A5D4(&qword_10094E260);
  __chkstk_darwin(v42 - 8);
  v206 = &v198 - v43;
  v219 = sub_10076D39C();
  v218 = *(v219 - 8);
  __chkstk_darwin(v219);
  v239 = &v198 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = sub_10076357C();
  v231 = *(v232 - 8);
  __chkstk_darwin(v232);
  v230 = &v198 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v245 = sub_10076350C();
  v243 = *(v245 - 8);
  __chkstk_darwin(v245);
  v202 = &v198 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v207 = (&v198 - v48);
  __chkstk_darwin(v49);
  v242 = &v198 - v50;
  __chkstk_darwin(v51);
  v214 = &v198 - v52;
  __chkstk_darwin(v53);
  v244 = &v198 - v54;
  v55 = sub_10000A5D4(&unk_1009467E0);
  __chkstk_darwin(v55 - 8);
  v208 = &v198 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v240 = &v198 - v58;
  __chkstk_darwin(v59);
  v247 = &v198 - v60;
  v61 = sub_1007673CC();
  v62 = *(v61 - 8);
  __chkstk_darwin(v61);
  v64 = &v198 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v65);
  v67 = &v198 - v66;
  v68 = sub_10000A5D4(&unk_1009428D0);
  *&v69 = __chkstk_darwin(v68 - 8).n128_u64[0];
  v71 = &v198 - v70;
  v72 = [v9 contentView];
  [v72 setLayoutMargins:{a6, a7, a8, a9}];

  v73 = *&v10[OBJC_IVAR____TtC20ProductPageExtension37ContentSearchResultCollectionViewCell_lockupView];
  *&v73[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_regularWidthColumnSpacing] = a5;
  [v73 setNeedsLayout];
  v74 = sub_10076341C();
  (*(*(v74 - 8) + 56))(v71, 1, 1, v74);
  sub_100386168(a1, v71, v246);
  sub_10000CFBC(v71, &unk_1009428D0);
  sub_100016F40(0, &qword_100942F10);
  v75 = sub_100770D2C();
  [v10 setBackgroundColor:v75];

  sub_10076285C();
  (v62[13])(v64, enum case for ScreenshotsDisplayStyle.noScreenshots(_:), v61);
  sub_10029BCF8(&qword_10094FC90, &type metadata accessor for ScreenshotsDisplayStyle);
  v249 = v67;
  v76 = sub_10076FF1C();
  v78 = (v62 + 1);
  v77 = v62[1];
  v248 = v61;
  (v77)(v64, v61);
  if (v76)
  {
    [*&v10[OBJC_IVAR____TtC20ProductPageExtension37ContentSearchResultCollectionViewCell_screenshots] setHidden:1];
    v62 = &off_100911000;
LABEL_148:
    [v10 v62[194]];
    return (v77)(v249, v248);
  }

  v79 = sub_10076280C();
  if (v79 >> 62)
  {
    v76 = v79;
    v80 = sub_10077158C();
    v79 = v76;
  }

  else
  {
    v80 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v229 = v77;
  if (v80)
  {
    if ((v79 & 0xC000000000000001) != 0)
    {
      v76 = v79;
      v237 = sub_10077149C();
    }

    else
    {
      if (!*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_48;
      }

      v76 = v79;
      v237 = *(v79 + 32);
    }
  }

  else
  {

    v237 = 0;
  }

  v201 = v10;
  v67 = *&v10[OBJC_IVAR____TtC20ProductPageExtension37ContentSearchResultCollectionViewCell_screenshots];
  v228 = sub_10076283C();
  v241 = sub_10076281C();
  v81 = sub_10076288C();
  if (v81 >> 62)
  {
    v76 = v81;
    v82 = sub_10077158C();
    v81 = v76;
  }

  else
  {
    v82 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = v237;
  if (v82)
  {
    if ((v81 & 0xC000000000000001) != 0)
    {
      v236 = sub_10077149C();
    }

    else
    {
      if (!*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_50;
      }

      v236 = *(v81 + 32);
    }
  }

  else
  {

    v236 = 0;
  }

  v83 = [v234 traitCollection];
  sub_100299B1C(v247);

  v77 = sub_10076283C();
  v76 = sub_10076281C();
  v84 = sub_10076280C();
  if (v84 >> 62)
  {
    v88 = v84;
    v85 = sub_10077158C();
    v84 = v88;
  }

  else
  {
    v85 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v227 = v62 + 1;
  if (v85)
  {
    if ((v84 & 0xC000000000000001) == 0)
    {
      if (!*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_52;
      }

      v78 = *(v84 + 32);

      goto LABEL_25;
    }

LABEL_48:
    v78 = sub_10077149C();
LABEL_25:

    goto LABEL_27;
  }

  v78 = 0;
LABEL_27:
  v86 = sub_10076288C();
  if (v86 >> 62)
  {
    v89 = v86;
    v90 = sub_10077158C();
    v86 = v89;
    if (v90)
    {
LABEL_29:
      if ((v86 & 0xC000000000000001) == 0)
      {
        if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v87 = *(v86 + 32);

LABEL_32:

          goto LABEL_38;
        }

LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

LABEL_50:
      v87 = sub_10077149C();
      goto LABEL_32;
    }
  }

  else if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_29;
  }

  v87 = 0;
LABEL_38:
  if ((sub_1007673BC() & 1) == 0)
  {

    v93 = v243;
    v94 = v244;
    v95 = v245;
    (*(v243 + 104))(v244, enum case for LockupMediaLayout.DisplayType.none(_:), v245);
    goto LABEL_76;
  }

  if (v76 | v77)
  {
    v96 = v214;
    sub_10076D3AC();

    v93 = v243;
    v95 = v245;
    (*(v243 + 104))(v96, enum case for LockupMediaLayout.DisplayType.singleItemFill(_:), v245);
    v94 = v244;
    (*(v93 + 32))(v244, v96, v95);
    goto LABEL_76;
  }

  v91 = sub_10057F8EC(v78, v87, 0, 1);
  v77 = v91;
  v10 = (v91 >> 62);
  if (v91 >> 62)
  {
LABEL_53:
    v200 = sub_10077158C();
    if (v78)
    {
      goto LABEL_42;
    }

    goto LABEL_54;
  }

  v200 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v78)
  {
LABEL_42:
    v92 = sub_1007601CC();
    goto LABEL_55;
  }

LABEL_54:
  v92 = 0;
LABEL_55:
  v198 = sub_10057FC34(v92);

  v235 = v78;
  if (v78)
  {
    v97 = sub_1007601CC();
  }

  else
  {
    v97 = 0;
  }

  v95 = v245;
  v98 = v206;
  v99 = v248;
  (v62[2])(v206, v249, v248);
  (v62[7])(v98, 0, 1, v99);
  v199 = sub_10058015C(v97, v98);

  sub_10000CFBC(v98, &qword_10094E260);
  if (v10)
  {
    v100 = sub_10077158C();
  }

  else
  {
    v100 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v101 = v207;
  v102 = v235;
  if (!v100)
  {

LABEL_68:
    v105 = enum case for LockupMediaLayout.DisplayType.fourUp(_:);
    v106 = v243;
    v107 = *(v243 + 104);
    v234 = (v243 + 104);
    v207 = v107;
    (v107)(v101, enum case for LockupMediaLayout.DisplayType.fourUp(_:), v95);
    v108 = sub_1007634FC();
    v109 = *(v106 + 8);
    (v109)(v101, v95);
    v110 = v200;
    if (((v200 >= v108) & v199) != 0 || (v105 = enum case for LockupMediaLayout.DisplayType.threeUp(_:), v206 = v109, v111 = v245, (v207)(v101, enum case for LockupMediaLayout.DisplayType.threeUp(_:), v245), v112 = sub_1007634FC(), (v206)(v101, v111), ((v110 >= v112) & v198) != 0) || (v105 = enum case for LockupMediaLayout.DisplayType.twoUp(_:), v113 = v245, (v207)(v101, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v245), v114 = sub_1007634FC(), v115 = v113, v116 = v206, (v206)(v101, v115), v110 >= v114))
    {

      v104 = v214;
      v120 = v214;
      v121 = v105;
    }

    else
    {
      v199 = enum case for LockupMediaLayout.DisplayType.oneUp(_:);
      v117 = v116;
      v118 = v245;
      v207(v101);
      v119 = sub_1007634FC();

      (v117)(v101, v118);
      if (v110 == v119)
      {
        v104 = v214;
        v120 = v214;
        v121 = v199;
      }

      else
      {
        v121 = enum case for LockupMediaLayout.DisplayType.none(_:);
        v104 = v214;
        v120 = v214;
      }
    }

    v95 = v245;
    (v207)(v120, v121, v245);
    v93 = v243;
    goto LABEL_75;
  }

  if ((v77 & 0xC000000000000001) != 0)
  {
    sub_10077149C();
  }

  else
  {
    if (!*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_151;
    }
  }

  v103 = sub_10076BDCC();

  if ((v103 & 1) == 0)
  {
    goto LABEL_68;
  }

  v93 = v243;
  v104 = v214;
  (*(v243 + 104))(v214, enum case for LockupMediaLayout.DisplayType.landscape(_:), v95);
LABEL_75:
  v94 = v244;
  (*(v93 + 32))(v244, v104, v95);
  v10 = v237;
LABEL_76:
  v251[3] = &type metadata for CGFloat;
  v251[4] = &protocol witness table for CGFloat;
  v251[0] = 0x4021000000000000;
  sub_10000A570(v251, v250);
  v102 = *(v93 + 16);
  v102(v242, v94, v95);
  if (v241 | v228)
  {
    goto LABEL_87;
  }

  result = sub_10057F8EC(v10, v236, 0, 1);
  if (result >> 62)
  {
    v123 = result;
    v124 = sub_10077158C();
    result = v123;
    if (v124)
    {
      goto LABEL_79;
    }

    goto LABEL_86;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_86:

LABEL_87:
    sub_10076D3AC();
    goto LABEL_88;
  }

LABEL_79:
  if ((result & 0xC000000000000001) != 0)
  {
    sub_10077149C();
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_132;
    }
  }

  sub_10076BEFC();
  sub_10076D3AC();

LABEL_88:
  sub_100016E2C(v247, v240, &unk_1009467E0);
  v125 = v230;
  sub_10076354C();
  sub_10000CD74(v251);
  v126 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_metrics;
  swift_beginAccess();
  v127 = v231;
  v128 = &v67[v126];
  v129 = v232;
  (*(v231 + 24))(v128, v125, v232);
  swift_endAccess();
  [v67 setNeedsLayout];
  (*(v127 + 8))(v125, v129);
  if (v10)
  {
    v130 = sub_1007601CC();
  }

  else
  {
    v130 = 0;
  }

  sub_1007601EC();
  v131 = v233;
  sub_10007AFB4(v130, v233);

  v132 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_screenshotsDisplayConfiguration;
  swift_beginAccess();
  sub_100125E2C(v131, &v67[v132]);
  swift_endAccess();
  sub_10057D9D0();
  sub_100125E90(v131);
  if (v10)
  {
    v10 = sub_1007601CC();
  }

  *&v67[OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_platform] = v10;

  sub_10057DBD4();

  v133 = v248;
  (v62[2])(v64, v249, v248);
  v134 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_screenshotsDisplayStyle;
  swift_beginAccess();
  (v62[3])(&v67[v134], v64, v133);
  swift_endAccess();
  v62 = &off_100911000;
  [v67 setNeedsLayout];
  v229(v64, v133);
  if (v241)
  {
    (*(v220 + 104))(v215, enum case for VideoFillMode.scaleAspectFill(_:), v221);

    sub_10076B84C();
    sub_10076BEFC();
    v135 = v240;
    sub_10076D3AC();

    (*(v218 + 56))(v135, 0, 1, v219);
    sub_10076B7EC();
    sub_10076B82C();
    sub_10076B7FC();
    sub_10076B7DC();
    sub_10076B83C();
    sub_1007647FC();
    sub_100762F0C();
    sub_10076F5CC();
    sub_10076B7CC();
    v136 = v222;
    sub_10076B85C();
    v137 = sub_10075DB7C();
    (*(*(v137 - 8) + 56))(v136, 0, 1, v137);
    v138 = v224;
    sub_10076B81C();
    v139 = v223;
    sub_10076B80C();
    type metadata accessor for VideoView();
    sub_10029BCF8(&qword_100942810, type metadata accessor for VideoView);
    v140 = sub_100762EEC();
    sub_10000CFBC(v139, &unk_10094C030);
    sub_10000CFBC(v138, &unk_10094C030);
    sub_10000CFBC(v136, &unk_1009435D0);
    sub_10000CFBC(v251, &qword_100943310);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v142 = Strong;
      v143 = [Strong superview];
      if (v143)
      {
        v144 = v143;
        sub_100016F40(0, &qword_1009441F0);
        v145 = v67;
        v146 = sub_100770EEC();

        if ((v146 & 1) == 0)
        {
          goto LABEL_108;
        }

        v147 = swift_unknownObjectWeakLoadStrong();
        if (!v147)
        {
          goto LABEL_108;
        }

        v142 = v147;
        [v147 removeFromSuperview];
      }
    }

LABEL_108:
    swift_unknownObjectWeakAssign();
    v156 = swift_unknownObjectWeakLoadStrong();
    v62 = &off_100911000;
    if (v156)
    {
      v157 = v156;
      [v67 addSubview:v156];
    }

    sub_10057E5D8();
    [v67 setNeedsLayout];

    v158 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_creativeArtworkView;
    v159 = *&v67[OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_creativeArtworkView];
    v151 = v243;
    if (v159)
    {
      [v159 removeFromSuperview];
      v160 = *&v67[v158];
    }

    else
    {
      v160 = 0;
    }

    v161 = v244;
    *&v67[v158] = 0;

    [v67 setNeedsLayout];

    (*(v225 + 8))(v238, v226);
LABEL_147:
    [v67 v62[194]];

    (*(v151 + 8))(v161, v245);
    sub_10000CFBC(v247, &unk_1009467E0);
    [v67 setHidden:0];

    v10 = v201;
    v77 = v229;
    goto LABEL_148;
  }

  if (!v236)
  {
LABEL_134:
    v186 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_creativeArtworkView;
    v187 = *&v67[OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_creativeArtworkView];
    if (v187)
    {
      [v187 removeFromSuperview];
      v188 = *&v67[v186];
    }

    else
    {
      v188 = 0;
    }

    v151 = v243;
    v161 = v244;
    *&v67[v186] = 0;

    [v67 v62[194]];
    v189 = swift_unknownObjectWeakLoadStrong();
    if (!v189)
    {
      goto LABEL_144;
    }

    v190 = v189;
    sub_10029BCF8(&qword_100942810, type metadata accessor for VideoView);
    v191 = [v190 superview];
    if (v191)
    {
      v192 = v191;
      sub_100016F40(0, &qword_1009441F0);
      v193 = v67;
      v194 = sub_100770EEC();

      v161 = v244;
      if ((v194 & 1) == 0)
      {
        goto LABEL_144;
      }

      v195 = swift_unknownObjectWeakLoadStrong();
      if (!v195)
      {
        goto LABEL_144;
      }

      v190 = v195;
      [v195 removeFromSuperview];
    }

    else
    {
      v161 = v244;
    }

LABEL_144:
    swift_unknownObjectWeakAssign();
    v196 = swift_unknownObjectWeakLoadStrong();
    if (v196)
    {
      v197 = v196;
      [v67 addSubview:v196];
    }

    sub_10057E5D8();
    [v67 v62[194]];
    goto LABEL_147;
  }

  result = sub_10076C41C();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_102;
    }

    goto LABEL_133;
  }

LABEL_132:
  v184 = result;
  v185 = sub_10077158C();
  result = v184;
  if (!v185)
  {
LABEL_133:

    goto LABEL_134;
  }

LABEL_102:
  if ((result & 0xC000000000000001) != 0)
  {
LABEL_151:
    sub_10077149C();
    v148 = v205;
LABEL_105:

    v149 = v202;
    v150 = v245;
    v102(v202, v244, v245);
    v151 = v243;
    v152 = (*(v243 + 88))(v149, v150);
    v153 = enum case for LockupMediaLayout.DisplayType.singleItemFill(_:);
    (*(v151 + 8))(v149, v150);
    if (v152 == v153)
    {
      v154 = 1;
      v155 = v213;
    }

    else
    {
      v162 = sub_10076C40C();
      v155 = v213;
      sub_10007AFB4(v162, v213);

      v154 = 0;
    }

    v163 = v203;
    v164 = v204;
    (*(v203 + 56))(v155, v154, 1, v204);
    (*(v220 + 104))(v209, enum case for VideoFillMode.scaleAspectFill(_:), v221);
    sub_10076B84C();
    sub_10076BEFC();
    v165 = v208;
    sub_10076D3AC();

    (*(v218 + 56))(v165, 0, 1, v219);
    sub_10076B7EC();
    sub_10076B82C();
    sub_10076B7FC();
    sub_10076B7DC();
    sub_10076B83C();
    sub_100016E2C(v155, v148, &qword_10094A428);
    if ((*(v163 + 48))(v148, 1, v164) == 1)
    {
      sub_10000CFBC(v148, &qword_10094A428);
    }

    else
    {
      sub_100125E90(v148);
    }

    sub_1007647FC();
    sub_100762F0C();
    sub_10076F5CC();
    sub_10076B7CC();
    v166 = v222;
    sub_10076B85C();
    v167 = sub_10075DB7C();
    (*(*(v167 - 8) + 56))(v166, 0, 1, v167);
    v168 = v224;
    sub_10076B81C();
    v169 = v223;
    sub_10076B80C();
    type metadata accessor for VideoView();
    sub_10029BCF8(&qword_100942810, type metadata accessor for VideoView);
    v170 = sub_100762EEC();
    sub_10000CFBC(v169, &unk_10094C030);
    sub_10000CFBC(v168, &unk_10094C030);
    sub_10000CFBC(v166, &unk_1009435D0);
    sub_10000CFBC(v251, &qword_100943310);
    v171 = swift_unknownObjectWeakLoadStrong();
    if (!v171)
    {
      goto LABEL_124;
    }

    v172 = v171;
    v173 = [v171 superview];
    if (v173)
    {
      v174 = v173;
      sub_100016F40(0, &qword_1009441F0);
      v175 = v67;
      v176 = sub_100770EEC();

      v151 = v243;
      if ((v176 & 1) == 0)
      {
        goto LABEL_124;
      }

      v177 = swift_unknownObjectWeakLoadStrong();
      if (!v177)
      {
        goto LABEL_124;
      }

      v172 = v177;
      [v177 removeFromSuperview];
    }

LABEL_124:
    swift_unknownObjectWeakAssign();
    v178 = swift_unknownObjectWeakLoadStrong();
    if (v178)
    {
      v179 = v178;
      [v67 addSubview:v178];
    }

    sub_10057E5D8();
    v62 = &off_100911000;
    [v67 setNeedsLayout];

    v180 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_creativeArtworkView;
    v181 = *&v67[OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_creativeArtworkView];
    v182 = v213;
    if (v181)
    {
      [v181 removeFromSuperview];
      v183 = *&v67[v180];
    }

    else
    {
      v183 = 0;
    }

    *&v67[v180] = 0;

    [v67 setNeedsLayout];

    (*(v225 + 8))(v212, v226);
    sub_10000CFBC(v182, &qword_10094A428);
    v161 = v244;
    goto LABEL_147;
  }

  v148 = v205;
  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_105;
  }

  __break(1u);
  return result;
}

uint64_t sub_100299B1C@<X0>(uint64_t a1@<X8>)
{
  if (sub_1007706EC())
  {
    v2 = sub_10076D39C();
    v3 = *(*(v2 - 8) + 56);
    v4 = v2;
    v5 = a1;
    v6 = 1;
    goto LABEL_19;
  }

  v7 = sub_10076FF9C();
  v9 = v8;
  if (v7 == sub_10076FF9C() && v9 == v10)
  {

    goto LABEL_15;
  }

  v12 = sub_10077167C();

  if (v12)
  {
LABEL_15:
    if (qword_10093FD00 != -1)
    {
      swift_once();
    }

    v20 = sub_10076D39C();
    v21 = v20;
    v22 = qword_10099E1D8;
    goto LABEL_18;
  }

  v13 = sub_10076FF9C();
  v15 = v14;
  if (v13 == sub_10076FF9C() && v15 == v16)
  {
  }

  else
  {
    v18 = sub_10077167C();

    if ((v18 & 1) == 0)
    {
      sub_10076D37C();
      v19 = sub_10076D39C();
      v3 = *(*(v19 - 8) + 56);
      v4 = v19;
      v5 = a1;
      v6 = 0;
      goto LABEL_19;
    }
  }

  if (qword_10093FD08 != -1)
  {
    swift_once();
  }

  v20 = sub_10076D39C();
  v21 = v20;
  v22 = qword_10099E1F0;
LABEL_18:
  v23 = sub_10000A61C(v20, v22);
  v25 = *(v21 - 8);
  (*(v25 + 16))(a1, v23, v21);
  v3 = *(v25 + 56);
  v5 = a1;
  v6 = 0;
  v4 = v21;
LABEL_19:

  return v3(v5, v6, 1, v4);
}

void sub_100299DC0(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v9 = sub_1007673CC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = (&v70 - v14);
  v16 = sub_10076BF6C();
  __chkstk_darwin(v16 - 8);
  if ((*(a2 + 32) & 1) == 0)
  {
    v72 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    v73 = a4;
    v74 = v12;
    v78 = a1;
    v18 = *(a2 + 16);
    v79 = v4;
    v19 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension37ContentSearchResultCollectionViewCell_screenshots);
    v20 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_imageViews;
    swift_beginAccess();
    v76 = v19;
    v21 = *(v19 + v20);
    if (v21 >> 62)
    {
      v22 = sub_10077158C();
    }

    else
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v77 = v15;
    v23 = v79;
    if (v22)
    {
      if (v22 < 1)
      {
        __break(1u);
        goto LABEL_41;
      }

      v24 = a3;
      v75 = v10;
      v71 = v9;

      v25 = 0;
      do
      {
        if ((v21 & 0xC000000000000001) != 0)
        {
          v26 = sub_10077149C();
        }

        else
        {
          v26 = *(v21 + v25 + 4);
        }

        v27 = v26;
        ++v25;
        v80 = v26;
        type metadata accessor for BorderedScreenshotView();
        sub_10029BCF8(&qword_10094A410, type metadata accessor for BorderedScreenshotView);
        v28 = v27;
        sub_10077140C();
        sub_100760BEC();
        sub_100016C74(v81);
        v29 = *&v28[OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView];
        v82.value.super.isa = 0;
        v82.is_nil = 0;
        sub_10075FCEC(v82, v30);
      }

      while (v22 != v25);

      v9 = v71;
      v10 = v75;
      a3 = v24;
      v15 = v77;
      v23 = v79;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v32 = Strong;
      [*(Strong + qword_1009602D0) setImage:0];
      v80 = v32;
      type metadata accessor for VideoView();
      sub_10029BCF8(&qword_100957FA0, type metadata accessor for VideoView);
      v33 = v32;
      sub_10077140C();
      sub_100760BEC();
      v23 = v79;

      sub_100016C74(v81);
    }

    v23 = *(v23 + OBJC_IVAR____TtC20ProductPageExtension37ContentSearchResultCollectionViewCell_lockupView);
    a2 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView;
    v34 = *(v23 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
    v83.value.super.isa = 0;
    v83.is_nil = 0;
    sub_10075FCEC(v83, v35);

    v36 = *(v23 + a2);
    v37 = sub_10075FD2C();
    sub_10029BCF8(&qword_100941820, &type metadata accessor for ArtworkView);
    v38 = v36;
    v79 = a3;
    sub_100760BFC();

    if (!sub_10076BB5C())
    {
LABEL_19:
      sub_10076285C();
      v42 = v74;
      (*(v10 + 104))(v74, enum case for ScreenshotsDisplayStyle.noScreenshots(_:), v9);
      sub_10029BCF8(&qword_10094FC90, &type metadata accessor for ScreenshotsDisplayStyle);
      v43 = sub_10076FF1C();
      v46 = *(v10 + 8);
      v44 = v10 + 8;
      v45 = v46;
      v46(v42, v9);
      if (v43)
      {
LABEL_46:
        v45(v15, v9);
        return;
      }

      v75 = v44;
      v47 = sub_10076BB6C();
      v49 = v48;
      v50 = sub_10076BBEC();
      v52 = v51;
      v53 = sub_10076BB0C();
      if (v53)
      {
        v54 = sub_10076518C();

        if (v54)
        {
          v55 = sub_10076C3EC();
          v53 = v56;
        }

        else
        {
          v55 = 0;
          v53 = 0;
        }
      }

      else
      {
        v55 = 0;
      }

      v57 = [v73 traitCollection];
      sub_1002965F0(v47, v18, v49, v50, v52, v55, v53, v57);

      v58 = sub_10076283C();
      v59 = sub_10076281C();
      v60 = sub_10076280C();
      if (v60 >> 62)
      {
        v66 = v60;
        v61 = sub_10077158C();
        v60 = v66;
      }

      else
      {
        v61 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v62 = v79;
      v15 = v77;
      if (v61)
      {
        if ((v60 & 0xC000000000000001) != 0)
        {
          v63 = sub_10077149C();
        }

        else
        {
          if (!*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_51;
          }

          v63 = *(v60 + 32);
        }
      }

      else
      {

        v63 = 0;
      }

      v64 = sub_10076288C();
      if (v64 >> 62)
      {
        v67 = v64;
        v68 = sub_10077158C();
        v64 = v67;
        if (v68)
        {
          goto LABEL_35;
        }
      }

      else if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_35:
        if ((v64 & 0xC000000000000001) != 0)
        {
          v65 = sub_10077149C();
          goto LABEL_38;
        }

        if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v65 = *(v64 + 32);

LABEL_38:

LABEL_45:
          v69 = [v73 traitCollection];
          sub_100140784(v58, v59, v63, v65, v69, v62, v15);

          goto LABEL_46;
        }

LABEL_51:
        __break(1u);
        return;
      }

      v65 = 0;
      goto LABEL_45;
    }

    v75 = v37;
    v39 = qword_10093FBE0;
    v21 = *(v23 + a2);
    if (v39 == -1)
    {
LABEL_16:
      v40 = sub_100763ADC();
      sub_10000A61C(v40, qword_10099DDA0);
      sub_1007639AC();
      [v21 contentMode];
      sub_10076BFCC();
      sub_10076BF7C();
      sub_10075FCCC();
      [v21 setContentMode:sub_10076BDBC()];
      sub_100764ADC();
      sub_10075FD0C();
      if (!sub_10076BE1C())
      {
        sub_100016F40(0, &qword_100942F10);
        sub_100770D5C();
      }

      sub_10075FB8C();
      v41 = *(v23 + a2);
      sub_100760B8C();

      v15 = v77;
      goto LABEL_19;
    }

LABEL_41:
    swift_once();
    goto LABEL_16;
  }
}

uint64_t sub_10029A6AC(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v137 = a5;
  v138 = a3;
  v170 = a2;
  v6 = sub_10000A5D4(&qword_10094E260);
  __chkstk_darwin(v6 - 8);
  v133 = &v132 - v7;
  v135 = sub_10076350C();
  v142 = *(v135 - 8);
  __chkstk_darwin(v135);
  v9 = &v132 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v132 - v11;
  __chkstk_darwin(v13);
  v136 = &v132 - v14;
  v15 = sub_10000A5D4(&unk_1009467E0);
  __chkstk_darwin(v15 - 8);
  v143 = &v132 - v16;
  v17 = sub_10077164C();
  v140 = *(v17 - 8);
  v141 = v17;
  __chkstk_darwin(v17);
  v139 = &v132 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1007673CC();
  v166 = *(v19 - 8);
  v167 = v19;
  __chkstk_darwin(v19);
  v21 = &v132 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10076749C();
  v164 = *(v22 - 8);
  v165 = v22;
  __chkstk_darwin(v22);
  v163 = &v132 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10076997C();
  v160 = *(v24 - 8);
  v161 = v24;
  __chkstk_darwin(v24);
  v159 = &v132 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_10076443C();
  v175 = *(v26 - 8);
  __chkstk_darwin(v26);
  v28 = &v132 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v173 = &v132 - v30;
  v176 = sub_10076747C();
  v174 = *(v176 - 8);
  __chkstk_darwin(v176);
  v162 = &v132 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v34 = &v132 - v33;
  sub_100770ACC();
  v35 = sub_10076BB6C();
  v149 = v36;
  v150 = v35;
  v37 = sub_10076BBEC();
  v151 = v38;
  v152 = v37;
  if (sub_10076BB0C() && (v39 = sub_10076518C(), , v39))
  {
    v40 = sub_10076C3EC();
    v156 = v41;
    v157 = v40;
  }

  else
  {
    v156 = 0;
    v157 = 0;
  }

  sub_10076286C();
  v42 = [v170 traitCollection];
  if (qword_1009407E8 != -1)
  {
    swift_once();
  }

  v43 = v176;
  v44 = sub_10000A61C(v176, qword_1009A0690);
  v153 = *(v174 + 16);
  v154 = v174 + 16;
  v153(v34, v44, v43);
  v45 = sub_10077071C();
  v168 = v21;
  v169 = a1;
  v134 = v12;
  v132 = v9;
  if (v45)
  {
    if (qword_10093F520 != -1)
    {
      swift_once();
    }

    v46 = qword_100944C88;
  }

  else
  {
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v46 = qword_100944CA0;
  }

  v47 = sub_10000A61C(v26, v46);
  v48 = v175;
  (*(v175 + 16))(v28, v47, v26);
  (*(v48 + 32))();
  v49 = [v42 preferredContentSizeCategory];
  sub_10077084C();
  v158 = v42;

  sub_1007643EC();
  sub_10076441C();
  v172 = v34;
  sub_10076746C();
  sub_10076745C();
  v50 = sub_10076DDDC();
  swift_allocObject();
  v148 = sub_10076DDBC();
  v51 = objc_opt_self();
  v146 = v51;
  v52 = [v51 preferredFontForTextStyle:UIFontTextStyleBody];
  v53 = sub_10076C04C();
  v213[3] = v53;
  v171 = sub_10029BCF8(&qword_100943230, &type metadata accessor for Feature);
  v213[4] = v171;
  v54 = sub_10000DB7C(v213);
  v55 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v56 = *(v53 - 8);
  v155 = v26;
  v147 = *(v56 + 104);
  v57 = v56 + 104;
  v144 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v147(v54, enum case for Feature.measurement_with_labelplaceholder(_:), v53);
  v145 = v57;
  sub_10076C90C();
  sub_10000CD74(v213);
  v58 = v159;
  sub_10076996C();
  sub_10076994C();
  v59 = v161;
  v160 = *(v160 + 8);
  (v160)(v58, v161);
  v60 = [v51 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v212[3] = v53;
  v212[4] = v171;
  v61 = sub_10000DB7C(v212);
  v62 = v55;
  v63 = v147;
  v147(v61, v62, v53);
  sub_10076C90C();
  sub_10000CD74(v212);
  sub_10076996C();
  sub_10076994C();
  v64 = v160;
  (v160)(v58, v59);
  v65 = [v146 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v211[3] = v53;
  v211[4] = v171;
  v66 = sub_10000DB7C(v211);
  v63(v66, v144, v53);
  sub_10076C90C();
  sub_10000CD74(v211);
  sub_10076996C();
  sub_10076994C();
  v64(v58, v59);
  sub_10001D420(0, 0);
  swift_allocObject();
  v67 = sub_10076DDBC();

  sub_10001D420(0, 0);
  swift_allocObject();
  v68 = sub_10076DDBC();
  v153(v162, v172, v176);
  v210 = &protocol witness table for LayoutViewPlaceholder;
  v209 = v50;
  v69 = v148;
  v208 = v148;
  v207 = 0;
  *&v205[40] = 0u;
  v206 = 0u;
  sub_10000A570(v213, v205);
  sub_10000A570(v212, &v204);
  v203 = 0;
  v201 = 0u;
  v202 = 0u;
  v200 = 0;
  v198 = 0u;
  v199 = 0u;

  v70 = sub_10076DDCC();
  v197 = &protocol witness table for LayoutViewPlaceholder;
  v196 = v50;
  v195 = v70;
  v194 = 0;
  v192 = 0u;
  v193 = 0u;
  v191 = 0;
  v189 = 0u;
  v190 = 0u;
  v188 = 0;
  v186 = 0u;
  v187 = 0u;
  v185 = 0;
  v184 = 0u;
  *&v183[40] = 0u;
  sub_10000A570(v211, v183);
  v181 = v50;
  v182 = &protocol witness table for LayoutViewPlaceholder;
  v179 = &protocol witness table for LayoutViewPlaceholder;
  v180 = v67;
  v178 = v50;
  v177 = v68;
  v71 = v163;
  sub_10076748C();
  sub_10076DEDC();
  sub_10000A5D4(&unk_100942870);
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_1007841E0;
  v73 = v158;
  *(v72 + 32) = v158;
  v74 = v73;
  v75 = sub_10076DEEC();
  sub_10029BCF8(&unk_100958A50, &type metadata accessor for SmallSearchLockupLayout);
  v76 = v165;
  sub_10076D2AC();

  (*(v164 + 8))(v71, v76);
  sub_10000CD74(v211);
  sub_10000CD74(v212);
  sub_10000CD74(v213);
  (*(v175 + 8))(v173, v155);
  (*(v174 + 8))(v172, v176);
  v78 = v168;
  v77 = v169;
  sub_10076285C();
  if ((sub_1007673BC() & 1) == 0 || (sub_10067B804() & 1) == 0)
  {
    return (*(v166 + 8))(v78, v167);
  }

  if (qword_1009411F0 != -1)
  {
    swift_once();
  }

  v79 = sub_10076D9AC();
  sub_10000A61C(v79, qword_1009A2350);
  v80 = v139;
  sub_10076D17C();
  v81 = v170;
  sub_10076D40C();
  (*(v140 + 8))(v80, v141);
  v82 = sub_10076283C();
  v83 = sub_10076281C();
  v84 = sub_10076280C();
  if (v84 >> 62)
  {
    v86 = v84;
    v87 = sub_10077158C();
    v84 = v86;
    if (v87)
    {
      goto LABEL_20;
    }

LABEL_26:

    v69 = 0;
    goto LABEL_27;
  }

  if (!*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_26;
  }

LABEL_20:
  if ((v84 & 0xC000000000000001) != 0)
  {
    v69 = sub_10077149C();
  }

  else
  {
    if (!*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_61;
    }

    v69 = *(v84 + 32);
  }

LABEL_27:
  v88 = sub_10076288C();
  if (v88 >> 62)
  {
    v90 = v88;
    v91 = sub_10077158C();
    v88 = v90;
    if (v91)
    {
      goto LABEL_29;
    }

LABEL_34:

    v176 = 0;
    goto LABEL_35;
  }

  if (!*((v88 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_34;
  }

LABEL_29:
  if ((v88 & 0xC000000000000001) != 0)
  {
    v89 = sub_10077149C();
  }

  else
  {
    if (!*((v88 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_63;
    }
  }

  v176 = v89;

LABEL_35:
  v92 = [v81 traitCollection];
  sub_100299B1C(v143);

  v67 = sub_10076283C();
  v68 = sub_10076281C();
  v93 = sub_10076280C();
  if (v93 >> 62)
  {
    v94 = v93;
    v95 = sub_10077158C();
    v93 = v94;
    if (v95)
    {
LABEL_37:
      if ((v93 & 0xC000000000000001) == 0)
      {
        if (!*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_65;
        }

        v77 = *(v93 + 32);

        goto LABEL_40;
      }

LABEL_61:
      v77 = sub_10077149C();
LABEL_40:

      goto LABEL_43;
    }
  }

  else if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_37;
  }

  v77 = 0;
LABEL_43:
  v96 = sub_10076288C();
  if (v96 >> 62)
  {
    v99 = v96;
    v100 = sub_10077158C();
    v96 = v99;
    v175 = v69;
    if (v100)
    {
LABEL_45:
      if ((v96 & 0xC000000000000001) == 0)
      {
        if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v98 = *(v96 + 32);

LABEL_48:

          goto LABEL_51;
        }

LABEL_65:
        __break(1u);
LABEL_66:
        v172 = sub_10077158C();
        if (v77)
        {
          goto LABEL_55;
        }

        goto LABEL_67;
      }

LABEL_63:
      v98 = sub_10077149C();
      goto LABEL_48;
    }
  }

  else
  {
    v97 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v175 = v69;
    if (v97)
    {
      goto LABEL_45;
    }
  }

  v98 = 0;
LABEL_51:
  v101 = sub_1007673BC();
  v174 = v83;
  if ((v101 & 1) == 0)
  {

    v104 = v142;
    v106 = v135;
    v105 = v136;
    (*(v142 + 104))(v136, enum case for LockupMediaLayout.DisplayType.none(_:), v135);
LABEL_88:
    v128 = v176;
    type metadata accessor for LockupMediaView();
    v129 = v143;
    v130 = v81;
    v131 = v168;
    sub_100141F14(v82, v174, v175, v128, v143, v105, v130, v168);

    (*(v104 + 8))(v105, v106);
    sub_10000CFBC(v129, &unk_1009467E0);
    return (*(v166 + 8))(v131, v167);
  }

  if (v68 | v67)
  {
    v107 = v134;
    sub_10076D3AC();

    v104 = v142;
    v106 = v135;
    (*(v142 + 104))(v107, enum case for LockupMediaLayout.DisplayType.singleItemFill(_:), v135);
    v105 = v136;
    (*(v104 + 32))(v136, v107, v106);
    goto LABEL_88;
  }

  v102 = sub_10057F8EC(v77, v98, 0, 1);
  v68 = v102;
  v83 = v102 >> 62;
  if (v102 >> 62)
  {
    goto LABEL_66;
  }

  v172 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v77)
  {
LABEL_55:
    v103 = sub_1007601CC();
    goto LABEL_68;
  }

LABEL_67:
  v103 = 0;
LABEL_68:
  LODWORD(v169) = sub_10057FC34(v103);

  v173 = v82;
  if (v77)
  {
    v108 = sub_1007601CC();
  }

  else
  {
    v108 = 0;
  }

  v109 = v166;
  v110 = v133;
  v111 = v78;
  v112 = v167;
  (*(v166 + 16))(v133, v111, v167);
  (*(v109 + 56))(v110, 0, 1, v112);
  v113 = sub_10058015C(v108, v110);

  sub_10000CFBC(v110, &qword_10094E260);
  if (!v83)
  {
    result = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v82 = v173;
    if (result)
    {
      goto LABEL_73;
    }

LABEL_79:

    goto LABEL_80;
  }

  result = sub_10077158C();
  v82 = v173;
  if (!result)
  {
    goto LABEL_79;
  }

LABEL_73:
  if ((v68 & 0xC000000000000001) != 0)
  {
    sub_10077149C();
LABEL_76:

    v114 = sub_10076BDCC();

    if (v114)
    {

      v104 = v142;
      v115 = v134;
      v106 = v135;
      (*(v142 + 104))(v134, enum case for LockupMediaLayout.DisplayType.landscape(_:), v135);
      v105 = v136;
LABEL_87:
      (*(v104 + 32))(v105, v115, v106);
      goto LABEL_88;
    }

LABEL_80:
    v116 = enum case for LockupMediaLayout.DisplayType.fourUp(_:);
    v117 = v142;
    v118 = v132;
    v119 = v135;
    v171 = *(v142 + 104);
    v171(v132, enum case for LockupMediaLayout.DisplayType.fourUp(_:), v135);
    v120 = sub_1007634FC();
    v165 = *(v117 + 8);
    v165(v118, v119);
    if (((v172 >= v120) & v113) != 0 || (v116 = enum case for LockupMediaLayout.DisplayType.threeUp(_:), v171(v118, enum case for LockupMediaLayout.DisplayType.threeUp(_:), v119), v121 = sub_1007634FC(), v122 = v165, v165(v118, v119), ((v172 >= v121) & v169) != 0) || (v116 = enum case for LockupMediaLayout.DisplayType.twoUp(_:), v171(v118, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v119), v123 = sub_1007634FC(), v122(v118, v119), v172 >= v123))
    {

      v115 = v134;
      v171(v134, v116, v119);
      v81 = v170;
      v106 = v119;
    }

    else
    {
      v124 = enum case for LockupMediaLayout.DisplayType.oneUp(_:);
      v171(v118, enum case for LockupMediaLayout.DisplayType.oneUp(_:), v119);
      v125 = sub_1007634FC();

      v122(v118, v119);
      v106 = v119;
      if (v172 == v125)
      {
        v115 = v134;
        v126 = v134;
        v127 = v124;
      }

      else
      {
        v127 = enum case for LockupMediaLayout.DisplayType.none(_:);
        v115 = v134;
        v126 = v134;
      }

      v171(v126, v127, v119);
      v81 = v170;
    }

    v104 = v142;
    v105 = v136;
    v82 = v173;
    goto LABEL_87;
  }

  if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_76;
  }

  __break(1u);
  return result;
}