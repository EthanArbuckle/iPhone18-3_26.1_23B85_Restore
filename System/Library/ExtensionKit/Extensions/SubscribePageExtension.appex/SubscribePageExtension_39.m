BOOL sub_10046E0E8(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v8 = 0;
  v9 = *(a2 + 16);
  do
  {
    v10 = v8;
    if (v9 == v8)
    {
      break;
    }

    a3(0);
    ++v8;
    sub_1004783D0(a4, a5);
  }

  while ((sub_100753014() & 1) == 0);
  return v9 != v10;
}

uint64_t sub_10046E1F0@<X0>(uint64_t a1@<X1>, char *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = sub_1007417F4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v37 - v13;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_10;
  }

  v16 = Strong;
  v17 = [Strong collectionView];

  if (!v17)
  {
    goto LABEL_10;
  }

  v18 = [v17 indexPathForItemAtPoint:{a3, a4}];
  if (!v18)
  {

    goto LABEL_10;
  }

  v19 = v18;
  sub_100741744();

  isa = sub_100741704().super.isa;
  v21 = [v17 cellForItemAtIndexPath:isa];

  v22 = sub_10046E608(v14, a1);
  if (!v21 || (swift_getObjectType(), !swift_conformsToProtocol2()))
  {

    v27 = *(v9 + 32);
    v27(v11, v14, v8);
    v27(a2, v11, v8);
    v28 = type metadata accessor for PreviewItem();
    v29 = v28;
    *&a2[*(v28 + 20)] = v21;
LABEL_20:
    *&a2[*(v28 + 24)] = v22;
    return (*(*(v28 - 8) + 56))(a2, 0, 1, v29);
  }

  v23 = v17;
  v24 = sub_10046FCB4(v23, v21, a3, a4);
  v26 = v25;

  if (v26)
  {
    (*(v9 + 8))(v14, v8);

LABEL_10:
    v30 = type metadata accessor for PreviewItem();
    return (*(*(v30 - 8) + 56))(a2, 1, 1, v30);
  }

  sub_10000C518(&qword_1009253E0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1007A6580;
  *(v32 + 32) = sub_100741784();
  *(v32 + 40) = v24;
  sub_1007416F4();
  v33 = OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_feedbackButtons;
  v34 = *&v21[OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_feedbackButtons];
  if (!(v34 >> 62))
  {
    result = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v24 < result)
    {
      goto LABEL_13;
    }

LABEL_18:

    v36 = 0;
    goto LABEL_19;
  }

  result = sub_100754664();
  if (v24 >= result)
  {
    goto LABEL_18;
  }

LABEL_13:
  v35 = *&v21[v33];
  if ((v35 & 0xC000000000000001) != 0)
  {

    v36 = sub_100754574();

    goto LABEL_19;
  }

  if (v24 < 0)
  {
    __break(1u);
  }

  else if (v24 < *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v36 = *(v35 + 8 * v24 + 32);

LABEL_19:
    (*(v9 + 8))(v14, v8);
    v28 = type metadata accessor for PreviewItem();
    v29 = v28;
    *&a2[*(v28 + 20)] = v36;
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

id sub_10046E608(uint64_t a1, uint64_t a2)
{
  v3 = sub_1007457B4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v31 - v8;
  v10 = sub_10000C518(&unk_100925330);
  __chkstk_darwin(v10 - 8);
  v12 = &v31 - v11;
  swift_getObjectType();
  v13 = swift_conformsToProtocol2();
  result = 0;
  if (!v13 || !a2)
  {
    return result;
  }

  v34 = v6;
  v15 = v3;
  v36 = v4;
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  v35 = ObjectType;
  sub_100745114();
  v17 = sub_100744E64();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v12, 1, v17) == 1)
  {
    sub_10000C8CC(v12, &unk_100925330);
  }

  else
  {
    v19 = sub_100744E44();
    (*(v18 + 8))(v12, v17);
    if (v19)
    {
      if (qword_100920358 != -1)
      {
        swift_once();
      }

      v20 = qword_10097DD28;
      swift_unknownObjectRelease();
      return v20;
    }
  }

  sub_100745034();
  v21 = v36;
  v22 = *(v36 + 88);
  v23 = v22(v9, v15);
  v24 = enum case for ShelfBackground.color(_:);
  if (v23 == enum case for ShelfBackground.color(_:))
  {
    swift_unknownObjectRelease();
    (*(v21 + 96))(v9, v15);
    v25 = *v9;
    v26 = *(sub_10000C518(&unk_100930940) + 48);
    v27 = sub_100748E34();
    (*(*(v27 - 8) + 8))(&v9[v26], v27);
    return v25;
  }

  v32 = *(v21 + 8);
  v33 = v21 + 8;
  v32(v9, v15);
  sub_100741784();
  v28 = v34;
  sub_100745074();
  swift_unknownObjectRelease();
  if (v22(v28, v15) == v24)
  {
    (*(v21 + 96))(v28, v15);
    v25 = *v28;
    v29 = *(sub_10000C518(&unk_100930940) + 48);
    v30 = sub_100748E34();
    (*(*(v30 - 8) + 8))(&v28[v29], v30);
    return v25;
  }

  v32(v28, v15);
  return 0;
}

char *sub_10046EA4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + qword_100930130) = 0x409F400000000000;
  v7 = qword_100930148;
  v8 = objc_allocWithZone(sub_100749AF4());
  *(v3 + v7) = sub_100749AE4();
  *(v3 + qword_100930158) = 1;
  *(v3 + qword_100930168) = 0;
  *(v3 + qword_100930170) = 0;
  *(v3 + qword_100930138) = a1;
  *(v3 + qword_100930140) = a2;
  sub_10000C518(&unk_100939070);
  swift_allocObject();
  swift_retain_n();

  *(v3 + qword_100930150) = sub_100749CC4();
  sub_1007495B4();
  sub_100752754();
  if (v26[0])
  {

    sub_1007495A4();
  }

  *(a2 + 112) = v26[0];

  sub_10074B544();
  swift_allocObject();

  *(v3 + qword_100930160) = sub_10074B554();
  v9 = [objc_allocWithZone(UICollectionViewLayout) init];

  v10 = sub_100598460(v9, a3);
  swift_unknownObjectWeakAssign();
  v26[3] = sub_100748BA4();
  v26[4] = &protocol witness table for BasePresenter;
  v26[0] = a1;
  v11 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  v12 = v10;

  v13 = v12;
  sub_1004778CC(v26, v10 + v11);
  swift_endAccess();
  sub_1004783D0(&qword_10092ABA8, &type metadata accessor for GenericPagePresenter);

  sub_100748C54();

  v14 = sub_10000C518(&qword_100939080);

  v15 = sub_1004701C4(v13, a1, a3, v14);
  v16 = *&v13[qword_100930168];
  *&v13[qword_100930168] = v15;

  v17 = qword_100930148;
  v18 = *&v13[qword_100930148];
  sub_10074B184();
  sub_100752764();
  v19 = v18;

  sub_100752D34();

  sub_10074C4B4();
  swift_allocObject();
  sub_10074C4C4();
  sub_100749AD4();

  v20 = *&v13[v17];
  sub_100748464();
  v21 = v20;

  sub_100752D34();

  sub_100749F64();
  swift_allocObject();
  sub_100749F74();
  sub_100749AD4();

  v22 = *&v13[v17];
  sub_1004779DC(&qword_100939088, &unk_100939070);
  v23 = v22;

  sub_100749AD4();

  v24 = *&v13[v17];

  sub_100749AD4();

  return v13;
}

uint64_t sub_10046EF90(uint64_t a1)
{
  v2 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_objectGraph;
    v8 = sub_10000C518(&unk_100923210);
    v9 = v6;

    sub_1007526C4();

    v10 = *(v8 - 8);
    if ((*(v10 + 48))(v4, 1, v8) == 1)
    {

      return sub_10000C8CC(v4, &unk_100923960);
    }

    else
    {
      v11 = *&v6[v7];

      sub_1003C0E00(a1, 1, v11, v4);

      return (*(v10 + 8))(v4, v8);
    }
  }

  return result;
}

void sub_10046F170()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong presentingViewController];

    if (v2)
    {
      [v2 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

void sub_10046F430(void *a1, char a2)
{
  if (a1)
  {
    v3 = [a1 presentingViewController];
    if (v3)
    {
      v4 = v3;
      v5 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v6 = swift_allocObject();
      *(v6 + 16) = a2 & 1;
      *(v6 + 24) = v5;
      v8[4] = sub_100477A68;
      v8[5] = v6;
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 1107296256;
      v8[2] = sub_1000CF7B0;
      v8[3] = &unk_100876B60;
      v7 = _Block_copy(v8);

      [v4 dismissViewControllerAnimated:1 completion:v7];
      _Block_release(v7);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10046F558(char a1)
{
  v2 = sub_10000C518(&qword_100939100);
  v28 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = v25 - v3;
  v5 = sub_10000C518(&unk_100923210);
  v27 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v25 - v6;
  v8 = sub_100752614();
  __chkstk_darwin(v8 - 8);
  v9 = sub_100745B04();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v14 = Strong;
      sub_10074F3D4();
      v15 = sub_100612704(0x6E65537473616F54, 0xE900000000000074);
      v26 = v2;
      v16 = v15;
      v30._object = 0x800000010077E120;
      v30._countAndFlagsBits = 0xD000000000000012;
      v32._countAndFlagsBits = 0;
      v32._object = 0xE000000000000000;
      v17 = sub_1007458B4(v30, v32);
      v25[2] = v18;
      v25[3] = v17;
      v31._countAndFlagsBits = 0xD000000000000018;
      v31._object = 0x800000010077E140;
      v33._countAndFlagsBits = 0;
      v33._object = 0xE000000000000000;
      sub_1007458B4(v31, v33);
      v25[1] = v19;
      (*(v10 + 104))(v12, enum case for AlertActionStyle.toast(_:), v9);
      v25[4] = v16;

      sub_1007525F4();
      v20 = sub_100743144();
      swift_allocObject();
      v21 = sub_100743114();
      sub_100752764();

      sub_100752D34();

      v29[3] = v20;
      v29[4] = sub_1004783D0(&qword_100935448, &type metadata accessor for AlertAction);
      v29[0] = v21;
      v22 = v28;
      v23 = v26;
      (*(v28 + 104))(v4, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v26);

      sub_1007527E4();

      (*(v22 + 8))(v4, v23);
      (*(v27 + 8))(v7, v5);
      sub_10000C620(v29);
      v24 = *&v14[OBJC_IVAR____TtC22SubscribePageExtensionP33_17E5165BDAD277E02C837297BEA7454621ComposeReviewDelegate_selfReference];
      *&v14[OBJC_IVAR____TtC22SubscribePageExtensionP33_17E5165BDAD277E02C837297BEA7454621ComposeReviewDelegate_selfReference] = 0;
    }
  }
}

id sub_10046FACC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10046FBDC(uint64_t a1)
{
  v3 = objc_allocWithZone(sub_100749AF4());
  *(v1 + 32) = sub_100749AE4();
  *(v1 + 40) = &protocol witness table for CompoundScrollObserver;
  swift_unknownObjectWeakInit();
  *(v1 + 56) = sub_100413E5C(_swiftEmptyArrayStorage);
  *(v1 + 64) = sub_100414038(_swiftEmptyArrayStorage);
  *(v1 + 72) = sub_10041404C(_swiftEmptyArrayStorage);
  *(v1 + 80) = 0;
  *(v1 + 88) = xmmword_1007C2650;
  *(v1 + 104) = 0xC020000000000000;
  *(v1 + 112) = 0;
  *(v1 + 16) = a1;
  sub_10000C518(&qword_100925350);
  swift_allocObject();
  *(v1 + 24) = sub_100752AF4();
  return v1;
}

unint64_t sub_10046FCB4(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v7 = *(a2 + OBJC_IVAR____TtC22SubscribePageExtension41PersonalizationFeedbackCollectionViewCell_feedbackButtons);
  if (v7 >> 62)
  {
LABEL_16:
    v8 = sub_100754664();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = 0;
  while (1)
  {
    v10 = v9;
    if (v8 == v9)
    {
      break;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v11 = sub_100754574();
    }

    else
    {
      if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v11 = *(v7 + 8 * v9 + 32);
    }

    v12 = v11;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    [v11 convertPoint:a1 fromCoordinateSpace:{a3, a4}];
    v13 = [v12 pointInside:0 withEvent:?];

    v9 = v10 + 1;
    if (v13)
    {
      v14 = v10;
      goto LABEL_13;
    }
  }

  v14 = 0;
LABEL_13:

  return v14;
}

char *sub_10046FDF8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1007527A4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v16 - v8;
  sub_1007483E4();
  swift_allocObject();
  v10 = sub_1007483D4();
  sub_10074AEB4();
  sub_10000C518(&qword_100938E30);
  sub_100752314();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1007A6580;
  (*(v4 + 16))(v6, v9, v3);
  sub_1007522F4();
  sub_100749444();
  swift_allocObject();
  v16[1] = sub_100749434();
  sub_1007522F4();
  v12 = sub_1006B94B0(a2, 0, 0, v11, 0x686372616573, 0xE600000000000000);

  v13 = objc_allocWithZone(type metadata accessor for SearchViewController());
  v14 = sub_10057772C(v10, v12);

  (*(v4 + 8))(v9, v3);
  return v14;
}

id sub_100470088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1004783D0(&unk_100939090, &type metadata accessor for GenericPagePresenter);
  v9 = sub_10000C518(&qword_100939080);
  v10 = objc_allocWithZone(v9);
  v11 = &v10[qword_100925588];
  *&v10[qword_100925588 + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v12 = &v10[qword_100925580];
  *v12 = a3;
  *(v12 + 1) = a4;
  *(v11 + 1) = v8;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectWeakAssign();
  *&v10[qword_100925598] = a5;
  v14.receiver = v10;
  v14.super_class = v9;
  return objc_msgSendSuper2(&v14, "init");
}

id sub_1004701C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1004783D0(&unk_100939090, &type metadata accessor for GenericPagePresenter);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = a2;
  v10[4] = v8;
  v10[5] = a4;

  v12 = sub_100470088(v11, a1, sub_1004779D0, v10, a3);

  return v12;
}

uint64_t sub_1004702C0(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t (*a5)(void), unint64_t *a6, void (*a7)(uint64_t))
{
  ObjectType = swift_getObjectType();
  v25[3] = a5(0);
  v25[4] = sub_1004783D0(a6, a7);
  v25[0] = a1;
  *&a4[OBJC_IVAR____TtC22SubscribePageExtension35ComponentViewOverflowViewController_overflowTransitioning] = 0;
  if (sub_10034E47C())
  {
    v16 = v15;
    *&a4[OBJC_IVAR____TtC22SubscribePageExtension35ComponentViewOverflowViewController_objectGraph] = a3;
    sub_10000C518(&qword_100925350);
    swift_allocObject();

    *&a4[OBJC_IVAR____TtC22SubscribePageExtension35ComponentViewOverflowViewController_stateStore] = sub_100752AF4();
    sub_10000C824(v25, &a4[OBJC_IVAR____TtC22SubscribePageExtension35ComponentViewOverflowViewController_model]);
    v17 = [objc_allocWithZone(UIScrollView) init];
    *&a4[OBJC_IVAR____TtC22SubscribePageExtension35ComponentViewOverflowViewController_scrollView] = v17;
    v18 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v19 = &a4[OBJC_IVAR____TtC22SubscribePageExtension35ComponentViewOverflowViewController_componentView];
    *v19 = v18;
    *(v19 + 1) = v16;
    sub_1007442C4();
    sub_100752764();
    sub_100752D34();
    *&a4[OBJC_IVAR____TtC22SubscribePageExtension35ComponentViewOverflowViewController_artworkLoader] = v24;
    v23.receiver = a4;
    v23.super_class = ObjectType;
    v20 = objc_msgSendSuper2(&v23, "initWithNibName:bundle:", 0, 0);
    v21 = sub_10074E984();
    (*(*(v21 - 8) + 8))(a2, v21);
    sub_10000C620(v25);
    return v20;
  }

  else
  {
    result = sub_100754644();
    __break(1u);
  }

  return result;
}

char *sub_100470520(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v609 = a8;
  v636 = a6;
  v637 = a5;
  v651 = a4;
  v650 = a3;
  v610 = a2;
  v655 = a1;
  v9 = sub_10000C518(&qword_10092FAB8);
  __chkstk_darwin(v9 - 8);
  v608 = &v560 - v10;
  v11 = sub_10000C518(&unk_100938D70);
  __chkstk_darwin(v11 - 8);
  v606 = &v560 - v12;
  v601 = sub_10074FEC4();
  v600 = *(v601 - 8);
  __chkstk_darwin(v601);
  v602 = &v560 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v605 = sub_1007417F4();
  v604 = *(v605 - 8);
  __chkstk_darwin(v605);
  v603 = &v560 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v633 = sub_10074E984();
  v632 = *(v633 - 8);
  __chkstk_darwin(v633);
  v635 = &v560 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000C518(&qword_100929628);
  __chkstk_darwin(v16 - 8);
  v599 = &v560 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v607 = &v560 - v19;
  v639 = sub_1007462F4();
  v638 = *(v639 - 8);
  __chkstk_darwin(v639);
  v613 = &v560 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v634 = &v560 - v22;
  v572 = sub_100740F54();
  v571 = *(v572 - 8);
  __chkstk_darwin(v572);
  v563 = &v560 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v569 = sub_100742FD4();
  v568 = *(v569 - 8);
  __chkstk_darwin(v569);
  v567 = &v560 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v570 = sub_100740EC4();
  v573 = *(v570 - 8);
  __chkstk_darwin(v570);
  v564 = &v560 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v611 = &v560 - v27;
  v28 = sub_10000C518(&qword_100938D80);
  __chkstk_darwin(v28 - 8);
  v612 = &v560 - v29;
  v595 = sub_100742284();
  v594 = *(v595 - 8);
  __chkstk_darwin(v595);
  v597 = &v560 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v624 = sub_10074ED34();
  v623 = *(v624 - 8);
  __chkstk_darwin(v624);
  v622 = &v560 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v620 = sub_100748DA4();
  v619 = *(v620 - 8);
  __chkstk_darwin(v620);
  v596 = &v560 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v561 = sub_100752CD4();
  __chkstk_darwin(v561);
  v562 = &v560 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v618 = sub_100752314();
  v643 = *(v618 - 8);
  __chkstk_darwin(v618);
  v617 = &v560 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v593 = sub_100746554();
  v592 = *(v593 - 8);
  __chkstk_darwin(v593);
  v582 = &v560 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v630 = &v560 - v37;
  v590 = sub_100744BE4();
  v589 = *(v590 - 8);
  __chkstk_darwin(v590);
  v580 = &v560 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v588 = &v560 - v40;
  v41 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v41 - 8);
  v579 = &v560 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v629 = &v560 - v44;
  __chkstk_darwin(v45);
  v566 = &v560 - v46;
  __chkstk_darwin(v47);
  v578 = &v560 - v48;
  __chkstk_darwin(v49);
  v598 = &v560 - v50;
  __chkstk_darwin(v51);
  v646 = &v560 - v52;
  __chkstk_darwin(v53);
  v647 = &v560 - v54;
  v584 = sub_100742CF4();
  v583 = *(v584 - 8);
  __chkstk_darwin(v584);
  v577 = &v560 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v581 = &v560 - v57;
  v58 = sub_10000C518(&qword_10092C1F0);
  __chkstk_darwin(v58 - 8);
  v631 = &v560 - v59;
  v587 = sub_10074C8A4();
  v586 = *(v587 - 8);
  __chkstk_darwin(v587);
  v591 = &v560 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v628 = sub_1007448F4();
  v627 = *(v628 - 8);
  __chkstk_darwin(v628);
  v626 = &v560 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v652 = sub_100741264();
  v649 = *(v652 - 8);
  __chkstk_darwin(v652);
  v614 = &v560 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v63);
  v621 = &v560 - v64;
  __chkstk_darwin(v65);
  v565 = &v560 - v66;
  __chkstk_darwin(v67);
  v645 = &v560 - v68;
  __chkstk_darwin(v69);
  v648 = &v560 - v70;
  __chkstk_darwin(v71);
  v585 = &v560 - v72;
  __chkstk_darwin(v73);
  v641 = &v560 - v74;
  v654 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v654);
  v76 = (&v560 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0));
  v77 = sub_100752404();
  __chkstk_darwin(v77 - 8);
  v78 = sub_1007527A4();
  v662 = *(v78 - 8);
  __chkstk_darwin(v78);
  v574 = &v560 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v80);
  v576 = &v560 - v81;
  __chkstk_darwin(v82);
  v84 = &v560 - v83;
  v85 = sub_100016C60(0, &qword_100939F50);
  sub_100752764();
  v616 = v85;
  sub_100752D34();
  v656 = v675[0];
  v642 = sub_10000C518(&unk_100925780);
  sub_100752D34();
  v657 = v675[0];
  v640 = v675[1];
  sub_10074B294();
  sub_100752D34();
  v658 = v675[0];
  v625 = sub_100744AC4();
  sub_100752D34();
  v663 = v675[0];
  sub_10074D7F4();
  sub_100752D34();
  v659 = v675[0];
  v665 = v84;
  v661 = v78;
  sub_100752D34();
  sub_10074C404();
  sub_100752754();
  v660 = v675[0];
  v615 = sub_10000C518(&qword_100938D88);
  sub_100752D34();
  v86 = sub_100743FF4();
  v653 = a7;
  v575 = v86;
  sub_100752D34();
  v664 = v672;
  if (qword_100921EE0 != -1)
  {
    swift_once();
  }

  v87 = sub_100752E44();
  sub_10000D0FC(v87, qword_100983318);
  sub_10000C518(&qword_100923930);
  sub_100752454();
  v88 = swift_allocObject();
  v644 = xmmword_1007A5A00;
  *(v88 + 16) = xmmword_1007A5A00;
  sub_1007523F4();
  v676._countAndFlagsBits = 0xD000000000000049;
  v676._object = 0x800000010077DD80;
  sub_1007523E4(v676);
  v89 = v655;
  v90 = sub_1006174EC();
  *(&v673 + 1) = &type metadata for String;
  *&v672 = v90;
  *(&v672 + 1) = v91;
  sub_1007523C4();
  sub_10000C8CC(&v672, &unk_100923520);
  v677._countAndFlagsBits = 0;
  v677._object = 0xE000000000000000;
  sub_1007523E4(v677);
  sub_100752414();
  sub_100752CE4();

  sub_100068C18(v89, v76);
  v92 = v76;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v289 = *(sub_10000C518(&qword_100938EF0) + 48);
      v290 = v649;
      v291 = v648;
      v292 = v652;
      (*(v649 + 32))(v648, v76, v652);
      v293 = v583;
      v294 = v581;
      v295 = v584;
      (*(v583 + 32))(v581, v76 + v289, v584);
      (*(v290 + 16))(v645, v291, v292);
      v296 = v577;
      (*(v293 + 104))(v577, enum case for FlowOrigin.external(_:), v295);
      sub_100742CE4();
      v655 = *(v293 + 8);
      v655(v296, v295);
      sub_100016B4C(v637, v631, &qword_10092C1F0);
      sub_100748BE4();
      swift_allocObject();
      v297 = v653;

      v298 = sub_100748BC4();

      sub_100744334();
      v299 = sub_1004783D0(&qword_100938EF8, &type metadata accessor for LoadingPagePresenter);

      v300 = sub_1006B94B0(v297, v298, v299, _swiftEmptyArrayStorage, 0x50676E6964616F6CLL, 0xEB00000000656761);

      v301 = objc_allocWithZone(type metadata accessor for LoadingPageViewController());
      v103 = sub_1005D3AF0(v298, v300);

      swift_unknownObjectRelease();

      v655(v294, v295);
      (*(v290 + 8))(v648, v292);
      goto LABEL_87;
    case 2u:
      v267 = v76;
      v268 = v649;
      v269 = v648;
      v270 = v652;
      (*(v649 + 32))(v648, v267, v652);
      v271 = v645;
      (*(v268 + 16))(v645, v269, v270);
      sub_1006B94B0(v653, 0, 0, _swiftEmptyArrayStorage, 0x77656956626577, 0xE700000000000000);
      v272 = objc_allocWithZone(type metadata accessor for WebViewController());
      v103 = sub_1004AFC64(v271);

      swift_unknownObjectRelease();

      (*(v268 + 8))(v269, v270);
      goto LABEL_87;
    case 3u:
      v277 = *(v76 + *(sub_10000C518(&qword_100929640) + 48));
      v278 = v649;
      v279 = v648;
      v280 = v652;
      (*(v649 + 32))(v648, v92, v652);
      v281 = v645;
      (*(v278 + 16))(v645, v279, v280);
      v282 = v651;

      v283 = sub_1006B94B0(v653, 0, 0, _swiftEmptyArrayStorage, 0x5063696D616E7964, 0xEB00000000656761);
      v284 = objc_allocWithZone(type metadata accessor for DynamicViewController());
      v103 = sub_1001FDC78(v281, v277, v650, v282, v283);

      swift_unknownObjectRelease();

      (*(v278 + 8))(v279, v280);
      goto LABEL_87;
    case 4u:
      sub_1000AC948(v76);
      v207 = v665;
      v103 = sub_10046FDF8(v665, v653);

      swift_unknownObjectRelease();

      sub_10000C620(v675);
      (*(v662 + 8))(v207, v661);
      return v103;
    case 5u:

      v338 = sub_10000C518(&qword_100929650);
      v339 = v647;
      sub_100066578(v76 + *(v338 + 48), v647, &unk_100923970);
      sub_100016B4C(v339, v646, &unk_100923970);
      sub_10074E4D4();
      swift_allocObject();
      v340 = v653;

      v341 = sub_10074E4C4();
      v342 = sub_1004783D0(&unk_100938EE0, &type metadata accessor for SearchChartsAndCategoriesDiffablePagePresenter);
      v343 = sub_1006B94B0(v340, v341, v342, _swiftEmptyArrayStorage, 0xD00000000000001DLL, 0x800000010077E060);
      v344 = objc_allocWithZone(type metadata accessor for SearchChartsAndCategoriesDiffablePageViewController());

      v345 = sub_100467304(v341, v343);
      v345[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_prefersLargeTitle] = 1;
      v103 = v345;
      v346 = [v103 navigationItem];
      [v346 setLargeTitleDisplayMode:3];

      swift_unknownObjectRelease();

      goto LABEL_52;
    case 6u:
      v362 = *v76;
      sub_1006B94B0(v653, 0, 0, _swiftEmptyArrayStorage, 0xD000000000000013, 0x800000010077E040);
      v363 = objc_allocWithZone(type metadata accessor for GalleryViewController());
      v124 = sub_10071D0A8(v362);
      goto LABEL_84;
    case 7u:
      sub_10000C518(&unk_100938ED0);

      v285 = v649;
      v286 = v648;
      v287 = v92;
      v288 = v652;
      (*(v649 + 32))(v648, v287, v652);
      v103 = sub_100740A64(v286);

      swift_unknownObjectRelease();

      (*(v285 + 8))(v286, v288);
      goto LABEL_87;
    case 8u:
      v382 = sub_10000C518(&unk_100932490);
      v383 = v647;
      sub_100066578(v76 + *(v382 + 48), v647, &unk_100923970);
      sub_100016B4C(v383, v646, &unk_100923970);
      sub_10074C7A4();
      swift_allocObject();

      v384 = v653;

      v385 = sub_10074C794();

      sub_10074B8B4();
      v386 = sub_1004783D0(&qword_100938DB0, &type metadata accessor for GenericDiffablePagePresenter);

      v387 = sub_1006B94B0(v384, v385, v386, _swiftEmptyArrayStorage, 0x50636972656E6567, 0xEB00000000656761);

      v388 = objc_allocWithZone(type metadata accessor for GenericDiffablePageViewController());
      v103 = sub_1006B7AD4(v385, v387);

      swift_unknownObjectRelease();

      v121 = v383;
      goto LABEL_60;
    case 9u:
      v221 = sub_10000C518(&qword_100938E70);
      v222 = v647;
      sub_100066578(v76 + *(v221 + 48), v647, &unk_100923970);
      sub_100016B4C(v222, v646, &unk_100923970);
      sub_10074D134();
      swift_allocObject();

      v223 = v653;

      v224 = sub_10074D094();
      v225 = sub_1004783D0(&qword_100938E78, &type metadata accessor for TopChartsDiffablePagePresenter);

      v226 = sub_1006B94B0(v223, v224, v225, _swiftEmptyArrayStorage, 0x7472616843706F74, 0xED00006567615073);

      v227 = objc_allocWithZone(type metadata accessor for TopChartsDiffablePageViewController());
      v103 = sub_1006D8580(v224, v226);

      swift_unknownObjectRelease();

      v121 = v222;
      goto LABEL_60;
    case 0xAu:
      v369 = *v76;
      v370 = v76[1];
      v371 = sub_10000C518(&qword_100938DF0);
      v372 = v638;
      v373 = v92 + *(v371 + 64);
      v374 = v634;
      v375 = v639;
      (*(v638 + 32))(v634, v373, v639);
      v376 = v613;
      (*(v372 + 16))(v613, v374, v375);
      v377 = (*(v372 + 88))(v376, v375);
      if (v377 == enum case for ShareSheetAction.ShareSheetStyle.expanded(_:))
      {
        v378 = 0;
        v379 = v662;
        v380 = v661;
        v381 = v659;
      }

      else
      {
        v379 = v662;
        v380 = v661;
        v381 = v659;
        if (v377 != enum case for ShareSheetAction.ShareSheetStyle.collapsed(_:))
        {
          (*(v638 + 8))(v613, v639);
        }

        v378 = 1;
      }

      v500 = sub_1006B94B0(v653, 0, 0, _swiftEmptyArrayStorage, 0x6568536572616873, 0xEA00000000007465);
      v501 = objc_allocWithZone(type metadata accessor for ActivityViewController());
      v103 = sub_1001109B0(v369, v370, v378, v500);

      swift_unknownObjectRelease();

      (*(v638 + 8))(v634, v639);
      sub_10000C620(v675);
      (*(v379 + 8))(v665, v380);
      return v103;
    case 0xBu:
      v194 = *v76;
      v195 = v76[1];
      v196 = v76[2];
      v197 = v76[3];
      sub_100016C60(0, &qword_100938DE8);
      v198 = sub_1006B94B0(v653, 0, 0, _swiftEmptyArrayStorage, 0xD000000000000012, 0x800000010077DF10);
      v199 = v194;
      v200 = v195;
      v201 = v196;
      v202 = v197;
      v203 = 0;
      goto LABEL_28;
    case 0xCu:
      v217 = *v76;
      v218 = v76[1];
      v219 = v76[2];
      v220 = v76[3];
      sub_100016C60(0, &qword_100938DE8);
      v198 = sub_1006B94B0(v653, 0, 0, _swiftEmptyArrayStorage, 0xD00000000000001FLL, 0x800000010077DEF0);
      v199 = v217;
      v200 = v218;
      v201 = v219;
      v202 = v220;
      v203 = 1;
LABEL_28:
      v124 = sub_1003846D4(v199, v200, v201, v202, v203, v198);
      goto LABEL_84;
    case 0xDu:
      v352 = sub_10000C518(&qword_100938EC0);
      v353 = v589;
      v354 = v588;
      v355 = v590;
      (*(v589 + 32))(v588, v76 + *(v352 + 48), v590);
      v356 = v658;
      sub_1007448D4();
      (*(v353 + 16))(v580, v354, v355);
      sub_10074C0A4();
      swift_allocObject();

      v357 = v653;

      v358 = sub_10074C044();

      sub_10074B8B4();
      v359 = sub_1004783D0(&qword_100938EC8, &type metadata accessor for ArcadeDiffablePagePresenter);

      v360 = sub_1006B94B0(v357, v358, v359, _swiftEmptyArrayStorage, 0x6150656461637261, 0xEA00000000006567);

      v361 = objc_allocWithZone(type metadata accessor for ArcadeDiffablePageViewController());
      v103 = sub_1000AD7F8(v358, v360);

      swift_unknownObjectRelease();

      (*(v353 + 8))(v354, v355);
      goto LABEL_87;
    case 0xEu:
      v176 = *(v76 + *(sub_10000C518(&qword_100938EA0) + 64));
      v177 = v647;
      sub_100066578(v76, v647, &unk_100923970);
      sub_100016B4C(v177, v646, &unk_100923970);
      sub_10074AAD4();
      swift_allocObject();

      v178 = v653;

      v179 = v658;
      v180 = sub_10074AA94();

      sub_100744334();
      v181 = sub_1004783D0(&qword_100938EA8, &type metadata accessor for ArcadeSubscribePresenter);

      v182 = sub_1006B94B0(v178, v180, v181, _swiftEmptyArrayStorage, 0xD000000000000013, 0x800000010077E000);

      v183 = objc_allocWithZone(type metadata accessor for ArcadeSubscribeViewController());
      sub_1003BCA08(v180, v176, v182);
      v103 = v184;

      swift_unknownObjectRelease();

      goto LABEL_77;
    case 0xFu:
      v273 = *v76;
      v274 = v651;

      v275 = sub_1006B94B0(v653, 0, 0, _swiftEmptyArrayStorage, 0x6E6974656B72616DLL, 0xED00006D65744967);
      v276 = objc_allocWithZone(type metadata accessor for MarketingItemViewController());
      v124 = sub_1006A9050(v273, v650, v274, v275);
      goto LABEL_84;
    case 0x10u:

      v151 = sub_10000C518(&qword_100938EB0);
      v152 = v649;
      v153 = v76 + *(v151 + 48);
      v154 = v648;
      v155 = v652;
      (*(v649 + 32))(v648, v153, v652);
      sub_1007483E4();
      swift_allocObject();
      sub_1007483D4();
      v156 = v576;
      sub_10074AEB4();
      (*(v152 + 16))(v645, v154, v155);
      v157 = v662;
      v158 = v661;
      (*(v662 + 16))(v574, v156, v661);
      sub_10074DEE4();
      swift_allocObject();
      v159 = v653;

      v160 = sub_10074DE44();
      v161 = sub_1004783D0(&qword_100938EB8, &type metadata accessor for ArcadeSeeAllGamesDiffablePagePresenter);
      sub_10000C518(&qword_100938E30);
      v162 = swift_allocObject();
      *(v162 + 16) = v644;

      sub_100752304();
      v163 = sub_1006B94B0(v159, v160, v161, v162, 0xD000000000000015, 0x800000010077E020);

      v164 = objc_allocWithZone(type metadata accessor for ArcadeSeeAllGamesDiffablePageViewController());
      v103 = sub_10030239C(v160, v163);

      swift_unknownObjectRelease();

      v165 = *(v157 + 8);
      v165(v156, v158);
      (*(v152 + 8))(v648, v652);
      sub_10000C620(v675);
      v165(v665, v158);
      return v103;
    case 0x11u:
      v307 = sub_10000C518(&qword_100938E90);
      v308 = *(v307 + 64);
      v309 = v592;
      v310 = v630;
      v311 = v593;
      (*(v592 + 32))(v630, v76 + *(v307 + 48), v593);
      v312 = v649;
      v313 = v648;
      v314 = v652;
      (*(v649 + 32))(v648, v76 + v308, v652);
      (*(v309 + 16))(v582, v310, v311);
      (*(v312 + 16))(v645, v313, v314);
      sub_10074BAA4();
      swift_allocObject();

      v315 = v653;

      v316 = sub_10074BA84();
      v317 = sub_1004783D0(&qword_100938E98, &type metadata accessor for ArcadeWelcomePagePresenter);

      v318 = sub_1006B94B0(v315, v316, v317, _swiftEmptyArrayStorage, 0xD000000000000011, 0x800000010077DFE0);

      v319 = objc_allocWithZone(type metadata accessor for ArcadeWelcomeViewController());
      v103 = sub_100661208(v316, v318);

      swift_unknownObjectRelease();

      (*(v312 + 8))(v313, v314);
      (*(v309 + 8))(v630, v311);
      goto LABEL_87;
    case 0x12u:
      sub_10074E134();
      swift_allocObject();
      v364 = v653;

      v365 = sub_10074E0E4();
      v366 = sub_1004783D0(&qword_100938E88, &type metadata accessor for ArcadeDownloadPackCategoriesPagePresenter);

      v367 = sub_1006B94B0(v364, v365, v366, _swiftEmptyArrayStorage, 0xD000000000000020, 0x800000010077DFB0);

      v368 = objc_allocWithZone(type metadata accessor for ArcadeDownloadPackCategoriesViewController());
      v124 = sub_10010B548(v365, v367);
      goto LABEL_84;
    case 0x13u:

      swift_unknownObjectRelease();

      sub_10000C620(v675);
      (*(v662 + 8))(v665, v661);
      return *v76;
    case 0x14u:
      v320 = v649;
      (*(v649 + 32))(v648, v76, v652);
      v321 = v653;
      sub_100752D34();
      v322 = sub_100744914();

      v323 = v627;
      v324 = v626;
      v325 = v628;
      (*(v627 + 104))(v626, enum case for ASKBagContract.AdPlacementBagValue.today(_:), v628);
      sub_10046E0E8(v324, v322, &type metadata accessor for ASKBagContract.AdPlacementBagValue, &qword_100938FF8, &type metadata accessor for ASKBagContract.AdPlacementBagValue);

      (*(v323 + 8))(v324, v325);
      v326 = sub_10074E344();
      swift_allocObject();
      v327 = sub_10074E334();
      *(&v673 + 1) = v326;
      v674 = &protocol witness table for UnimplementedAdvertLifecycleMetricsReporter;
      *&v672 = v327;
      sub_10074D4D4();
      swift_allocObject();

      v328 = sub_10074D4B4();
      v655 = v328;
      sub_10000C518(&qword_100938E30);
      v329 = swift_allocObject();
      *(v329 + 16) = v644;
      *&v672 = v328;
      sub_100752304();
      sub_10074BEF4();
      sub_100752D34();
      v330 = v647;
      v331 = v648;
      v332 = v652;
      (*(v320 + 16))(v647, v648, v652);
      (*(v320 + 56))(v330, 0, 1, v332);
      *(&v673 + 1) = v326;
      v674 = &protocol witness table for UnimplementedAdvertLifecycleMetricsReporter;
      *&v672 = v327;
      sub_10074BF94();
      swift_allocObject();

      v333 = v656;

      v334 = sub_10074BF24();

      sub_10074B8B4();
      v335 = sub_1004783D0(&qword_100938E38, &type metadata accessor for TodayDiffablePagePresenter);

      v336 = sub_1006B94B0(v321, v334, v335, v329, 0x6761507961646F74, 0xE900000000000065);

      v337 = objc_allocWithZone(type metadata accessor for TodayDiffablePageViewController());
      v103 = sub_1003CE560(v334, v336);

      swift_unknownObjectRelease();

      (*(v320 + 8))(v331, v652);
      goto LABEL_87;
    case 0x15u:
      v347 = sub_10000C518(&qword_100938E20);
      v339 = v647;
      sub_100066578(v76 + *(v347 + 48), v647, &unk_100923970);
      sub_100016B4C(v339, v646, &unk_100923970);
      sub_10074C5B4();
      swift_allocObject();

      v348 = v653;

      v349 = sub_10074C524();

      sub_10074B8B4();

      v350 = sub_1004783D0(&qword_100938E28, &type metadata accessor for ArticleDiffablePagePresenter);

      v351 = sub_1006B94B0(v348, v349, v350, _swiftEmptyArrayStorage, 0x50656C6369747261, 0xEB00000000656761);

      v103 = sub_1000BFE00(v349, v351, v609 & 1);

      swift_unknownObjectRelease();

LABEL_52:

      v121 = v339;
      goto LABEL_60;
    case 0x16u:
      v415 = *v76;
      sub_100752D34();
      v416 = v672;
      v417 = sub_100744954();
      if (v415)
      {
        v655 = v416;
        sub_10000C518(&unk_1009231A0);
        v418 = swift_allocObject();
        *(v418 + 1) = xmmword_1007A5CF0;
        v418[4] = v415;
        v419 = v415;
LABEL_106:
        v652 = v415;
        v651 = v419;
        v515 = v653;
        sub_100752D34();
        sub_10000C518(&qword_100938E50);
        v670[0] = v418;
        v516 = v617;
        sub_1007522F4();
        sub_100752724();
        v517 = *(v643 + 8);
        v518 = v618;
        v517(v516, v618);
        type metadata accessor for ASDPurchaseHistoryContext(0);
        v670[0] = 1;
        sub_1007522F4();
        sub_100752724();

        v517(v516, v518);
        LOBYTE(v670[0]) = 1;
        sub_1007522F4();
        v519 = sub_100752724();
        v654 = v519;

        v517(v516, v518);
        v520 = sub_1000C0D3C(v519);
        v650 = v521;
        sub_100752D34();
        v522 = v670[0];
        sub_10000C824(&v672, v670);
        sub_10000C518(&qword_100938E40);
        v523 = v619;
        v524 = *(v619 + 72);
        v525 = (*(v619 + 80) + 32) & ~*(v619 + 80);
        v526 = swift_allocObject();
        *(v526 + 16) = xmmword_1007A6580;
        v527 = v526 + v525;
        v528 = *(v523 + 104);
        v529 = v620;
        v528(v527, enum case for PurchasesContentMode.all(_:), v620);
        v528(v527 + v524, enum case for PurchasesContentMode.notOnDevice(_:), v529);
        sub_10074B704();
        swift_allocObject();

        v530 = v651;
        v531 = v522;
        swift_unknownObjectRetain();
        v532 = v650;
        v533 = sub_10074B654();
        v534 = sub_1004783D0(&qword_100938E48, &type metadata accessor for PurchasesContentPresenter);
        sub_10000C518(&qword_100938E30);
        v535 = swift_allocObject();
        *(v535 + 16) = v644;
        v670[0] = v520;
        v670[1] = v532;

        sub_100752304();
        v536 = sub_1006B94B0(v515, v533, v534, v535, 0x6573616863727570, 0xED00006567615073);

        v537 = objc_allocWithZone(type metadata accessor for PurchasesViewController());
        sub_1002BDCF8(v533, v536);
        v103 = v538;

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        sub_10000C620(&v672);
        goto LABEL_87;
      }

      if ((v417 & 1) == 0)
      {
        v655 = v416;
        v419 = 0;
        v418 = _swiftEmptyArrayStorage;
        goto LABEL_106;
      }

      v510 = v653;
      sub_100752D34();
      sub_100747AE4();
      swift_allocObject();

      v511 = sub_100747AC4();
      v512 = sub_1004783D0(&unk_100938E58, &type metadata accessor for PurchasesPresenter);
      v513 = sub_1006B94B0(v510, v511, v512, _swiftEmptyArrayStorage, 0xD000000000000014, 0x800000010077DF90);
      v514 = objc_allocWithZone(type metadata accessor for PurchasesLoadingViewController());
      v103 = sub_10071CF4C(v511, v513);

      swift_unknownObjectRelease();

LABEL_65:

LABEL_86:

      goto LABEL_87;
    case 0x17u:
      v434 = *v76;
      v435 = v76[1];
      v436 = v76[2];
      v437 = sub_1006B94B0(v653, 0, 0, _swiftEmptyArrayStorage, 0x6761506775626564, 0xE900000000000065);
      v438 = objc_allocWithZone(type metadata accessor for DebugMenuViewController());
      v124 = sub_10073AA1C(v437, v434, v435, v436);
      goto LABEL_84;
    case 0x18u:
      sub_10000C518(&qword_100938E10);
      v258 = v649;
      v259 = v648;
      v260 = v652;
      (*(v649 + 32))(v648, v76, v652);
      v261 = v653;
      sub_100752D34();
      (*(v258 + 16))(v645, v259, v260);
      sub_100742084();
      swift_allocObject();

      swift_unknownObjectRetain();

      v262 = sub_100742044();
      v263 = sub_1004783D0(&qword_100938E18, &type metadata accessor for InAppPurchaseInstallPagePresenter);

      v264 = sub_1006B94B0(v261, v262, v263, _swiftEmptyArrayStorage, 0xD000000000000018, 0x800000010077DF50);

      v265 = objc_allocWithZone(type metadata accessor for InAppPurchaseInstallPageViewController());
      sub_10059CB30(v262, v264);
      v103 = v266;

      swift_unknownObjectRelease();

      swift_unknownObjectRelease();

      (*(v258 + 8))(v259, v260);
      goto LABEL_87;
    case 0x19u:
      v228 = *(sub_10000C518(&unk_100938E00) + 48);
      v229 = v649;
      v230 = *(v649 + 32);
      v231 = v621;
      v232 = v76;
      v233 = v652;
      v230(v621, v232, v652);
      (*(v623 + 32))(v622, v92 + v228, v624);
      sub_100752D34();
      v234 = v614;
      (*(v229 + 16))(v614, v231, v233);
      swift_getObjectType();
      sub_1007424E4();
      swift_getObjectType();
      v235 = v597;
      sub_1007423D4();
      v236 = v594;
      v237 = v595;
      if ((*(v594 + 88))(v235, v595) != enum case for LegacyAppState.openable(_:))
      {
        (*(v236 + 8))(v235, v237);
        goto LABEL_114;
      }

      v655 = v230;
      (*(v236 + 96))(v235, v237);
      v238 = *&v235[*(sub_10000C518(&unk_100930D20) + 48)];
      v239 = sub_100748314();
      (*(*(v239 - 8) + 8))(v235, v239);
      v240 = v612;
      sub_100740EF4();
      v241 = v568;
      v242 = v567;
      v243 = v569;
      (*(v568 + 104))(v567, enum case for RateAction.Parameter.version(_:), v569);
      sub_100742FC4();
      (*(v241 + 8))(v242, v243);
      v244 = [v238 stringValue];
      sub_100753094();

      v245 = v240;
      sub_100740EB4();

      v246 = *(v571 + 48);
      v247 = v572;
      v248 = v246(v240, 1, v572);
      v249 = v570;
      if (!v248)
      {
        v250 = sub_100740ED4();
        if (*v251)
        {
          v252 = v251;
          v654 = v250;
          (*(v573 + 16))(v564, v611, v249);
          v253 = *v252;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v252 = v253;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v253 = sub_100255754(0, v253[2] + 1, 1, v253);
            *v252 = v253;
          }

          v256 = v253[2];
          v255 = v253[3];
          v257 = (v256 + 1);
          if (v256 >= v255 >> 1)
          {
            v651 = (v256 + 1);
            v559 = sub_100255754(v255 > 1, v256 + 1, 1, v253);
            v257 = v651;
            v253 = v559;
            *v252 = v559;
          }

          v247 = v572;
          v253[2] = v257;
          (*(v573 + 32))(v253 + ((*(v573 + 80) + 32) & ~*(v573 + 80)) + *(v573 + 72) * v256, v564, v249);
          v654(&v672, 0);
        }

        else
        {
          v250(&v672, 0);
          v247 = v572;
        }

        v245 = v612;
      }

      if (v246(v245, 1, v247))
      {
        (*(v573 + 8))(v611, v249);

        v539 = v566;
        (*(v649 + 56))(v566, 1, 1, v652);
LABEL_112:
        sub_10000C8CC(v539, &unk_100923970);
        v234 = v614;
        goto LABEL_113;
      }

      v540 = v571;
      v541 = v563;
      (*(v571 + 16))(v563, v245, v247);
      v542 = v566;
      sub_100740F04();

      v543 = v247;
      v539 = v542;
      (*(v540 + 8))(v541, v543);
      (*(v573 + 8))(v611, v249);
      v544 = v649;
      v545 = v652;
      if ((*(v649 + 48))(v542, 1, v652) == 1)
      {
        goto LABEL_112;
      }

      v234 = v614;
      (*(v544 + 8))(v614, v545);
      (v655)(v234, v542, v545);
LABEL_113:
      sub_10000C8CC(v612, &qword_100938D80);
LABEL_114:
      v546 = objc_allocWithZone(type metadata accessor for ComposeReviewViewController());
      sub_100741204(v547);
      v549 = v548;
      v103 = [v546 initWithCompositionURL:v548];

      if (!v103)
      {
        __break(1u);
        JUMPOUT(0x1004777F8);
      }

      v550 = v103;
      v551 = sub_1006B94B0(v653, 0, 0, _swiftEmptyArrayStorage, 0xD000000000000010, 0x800000010077DF30);
      v552 = type metadata accessor for ComposeReviewDelegate();
      v553 = objc_allocWithZone(v552);
      *&v553[OBJC_IVAR____TtC22SubscribePageExtensionP33_17E5165BDAD277E02C837297BEA7454621ComposeReviewDelegate_selfReference] = 0;
      *&v553[OBJC_IVAR____TtC22SubscribePageExtensionP33_17E5165BDAD277E02C837297BEA7454621ComposeReviewDelegate_objectGraph] = v551;
      v671.receiver = v553;
      v671.super_class = v552;
      v554 = objc_msgSendSuper2(&v671, "init");
      v555 = *&v554[OBJC_IVAR____TtC22SubscribePageExtensionP33_17E5165BDAD277E02C837297BEA7454621ComposeReviewDelegate_selfReference];
      *&v554[OBJC_IVAR____TtC22SubscribePageExtensionP33_17E5165BDAD277E02C837297BEA7454621ComposeReviewDelegate_selfReference] = v554;
      v556 = v554;

      [v550 setDelegate:v556];
      [v550 prepareWithCompletionBlock:0];

      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v557 = *(v649 + 8);
      v558 = v652;
      v557(v234, v652);
      (*(v623 + 8))(v622, v624);
      v557(v621, v558);
LABEL_87:
      sub_10000C620(v675);
      (*(v662 + 8))(v665, v661);
      return v103;
    case 0x1Au:
      sub_10074CA04();
      swift_allocObject();
      v468 = v653;

      v469 = sub_10074C974();

      sub_10074B8B4();
      v470 = sub_1004783D0(&qword_100938DF8, &type metadata accessor for ReviewsDiffablePagePresenter);

      v471 = sub_1006B94B0(v468, v469, v470, _swiftEmptyArrayStorage, 0x5073776569766572, 0xEB00000000656761);

      v472 = objc_allocWithZone(type metadata accessor for ReviewsDiffablePageViewController());
      v103 = sub_1001AA3C4(v469, v471);
      goto LABEL_80;
    case 0x1Bu:
      v134 = v598;
      sub_100066578(v76, v598, &unk_100923970);
      v135 = v578;
      sub_100016B4C(v134, v578, &unk_100923970);
      v136 = v649;
      v137 = v652;
      if ((*(v649 + 48))(v135, 1, v652) == 1)
      {
        sub_10000C8CC(v135, &unk_100923970);
        v138 = sub_1007421B4();
        swift_allocObject();
        swift_unknownObjectRetain();
        v139 = v656;
        v140 = sub_1007421A4();
        *(&v673 + 1) = v138;
        v674 = &protocol witness table for ASDInAppPurchaseStateProvider;
        *&v672 = v140;
        sub_100745AF4();
        swift_allocObject();

        v141 = v653;

        v142 = v658;
        v143 = v134;
        v144 = v659;
        v145 = sub_1007459A4();
        v146 = sub_1004783D0(&qword_100938E68, &type metadata accessor for AccountPresenter);

        v147 = sub_1006B94B0(v141, v145, v146, _swiftEmptyArrayStorage, 0x50746E756F636361, 0xEB00000000656761);

        v148 = objc_allocWithZone(type metadata accessor for AccountViewController());
        v103 = sub_1005AD800(v145, v147);

        swift_unknownObjectRelease();

        sub_10000C8CC(v143, &unk_100923970);
      }

      else
      {
        v479 = v565;
        (*(v136 + 32))(v565, v135, v137);
        v480 = v647;
        (*(v136 + 16))(v647, v479, v137);
        (*(v136 + 56))(v480, 0, 1, v137);
        sub_10074C2E4();
        swift_allocObject();
        v481 = v653;

        v482 = sub_10074C244();
        v483 = sub_1004783D0(&qword_100938E80, &type metadata accessor for GenericAccountPagePresenter);

        v484 = sub_1006B94B0(v481, v482, v483, _swiftEmptyArrayStorage, 0xD000000000000012, 0x800000010077B920);

        v485 = type metadata accessor for GenericAccountPageViewController();
        v486 = objc_allocWithZone(v485);
        *&v486[OBJC_IVAR____TtC22SubscribePageExtension32GenericAccountPageViewController_overlayViewController] = 0;
        *&v486[OBJC_IVAR____TtC22SubscribePageExtension32GenericAccountPageViewController_presenter] = v482;
        *&v486[OBJC_IVAR____TtC22SubscribePageExtension32GenericAccountPageViewController_objectGraph] = v484;
        v669.receiver = v486;
        v669.super_class = v485;
        v103 = objc_msgSendSuper2(&v669, "initWithStyle:", 2);

        swift_unknownObjectRelease();

        (*(v136 + 8))(v479, v137);
        sub_10000C8CC(v134, &unk_100923970);
      }

      goto LABEL_87;
    case 0x1Cu:
      v439 = v629;
      sub_100066578(v76, v629, &unk_100923970);
      v440 = v579;
      sub_100016B4C(v439, v579, &unk_100923970);
      v441 = v649;
      v442 = v652;
      if ((*(v649 + 48))(v440, 1, v652) == 1)
      {
        v444 = 0;
      }

      else
      {
        sub_100741204(v443);
        v444 = v502;
        (*(v441 + 8))(v440, v442);
      }

      v503 = v662;
      v504 = v661;
      v505 = v659;
      v506 = v658;
      v507 = [objc_allocWithZone(type metadata accessor for AccountPageViewController()) initWithAccountURL:v444];

      v508 = objc_allocWithZone(type metadata accessor for AccountPageViewControllerDelegate());
      v103 = v507;
      v509 = [v508 init];
      [v103 setDelegate:v509];

      [v103 prepareWithCompletionBlock:0];

      swift_unknownObjectRelease();

      sub_10000C8CC(v629, &unk_100923970);
      sub_10000C620(v675);
      (*(v503 + 8))(v665, v504);
      return v103;
    case 0x1Du:
      v445 = *(sub_10000C518(&qword_100929638) + 48);
      v446 = v649;
      v447 = v648;
      v448 = v652;
      (*(v649 + 32))(v648, v92, v652);
      v449 = v92 + v445;
      v450 = v607;
      sub_100066578(v449, v607, &qword_100929628);
      v451 = v653;
      sub_100752754();
      (*(v446 + 16))(v645, v447, v448);
      v452 = v450;
      sub_100016B4C(v450, v599, &qword_100929628);
      sub_10074ACE4();
      swift_allocObject();

      v453 = sub_10074ACD4();

      sub_10074B8B4();
      v454 = sub_1004783D0(&qword_100938DE0, &type metadata accessor for MSODiffablePagePresenter);

      v455 = sub_1006B94B0(v451, v453, v454, _swiftEmptyArrayStorage, 0x656761506F736DLL, 0xE700000000000000);

      v456 = objc_allocWithZone(type metadata accessor for MSODiffablePageViewController());
      *&v456[qword_100983020] = 0x3FF0000000000000;
      *&v456[qword_100947468] = 0;
      *&v456[qword_100947470] = 0x4034000000000000;
      v456[qword_100983028] = 0;
      *&v456[qword_100947478] = 0;
      v103 = sub_10046B8D0(v453, v455);

      swift_unknownObjectRelease();

      sub_10000C8CC(v452, &qword_100929628);
      (*(v446 + 8))(v648, v448);
      goto LABEL_87;
    case 0x1Eu:
      (*(v649 + 56))(v647, 1, 1, v652);
      sub_100748BA4();
      v672 = 0u;
      v673 = 0u;
      v674 = 0;
      swift_allocObject();

      v389 = v653;

      v390 = sub_100748B94();

      sub_100744334();
      v391 = sub_1004783D0(&qword_100938DB8, &type metadata accessor for GenericPagePresenter);

      v392 = sub_1006B94B0(v389, v390, v391, _swiftEmptyArrayStorage, 0xD000000000000012, 0x800000010077DED0);

      v393 = objc_allocWithZone(type metadata accessor for VersionHistoryViewController());
      sub_10064B3B0(v390, v392);
      v103 = v394;

      swift_unknownObjectRelease();

      goto LABEL_86;
    case 0x1Fu:
      v302 = *v76;
      type metadata accessor for OnboardingPresenter();
      v303 = swift_allocObject();
      *(v303 + 16) = v302;
      *(v303 + 24) = v663;

      *(v303 + 32) = sub_1005A58A4(v304, v302);
      v305 = objc_allocWithZone(type metadata accessor for OnboardingViewController());

      v103 = sub_1006E3BD8(v306, sub_10046F15C, 0);
      if (qword_100921D88 != -1)
      {
        swift_once();
      }

      swift_unknownObjectWeakAssign();
LABEL_80:

      goto LABEL_85;
    case 0x20u:
      v185 = *v76;
      v186 = v635;
      (*(v632 + 104))(v635, enum case for Shelf.ContentType.reviews(_:), v633);

      v187 = sub_1006B94B0(v653, 0, 0, _swiftEmptyArrayStorage, 0xD000000000000010, 0x800000010077DEB0);
      v188 = objc_allocWithZone(type metadata accessor for ComponentViewOverflowViewController());
      v189 = &unk_100939060;
      v190 = &type metadata accessor for Review;
      v191 = &type metadata accessor for Review;
      goto LABEL_63;
    case 0x21u:
      v185 = *v76;
      v186 = v635;
      (*(v632 + 104))(v635, enum case for Shelf.ContentType.editorsChoice(_:), v633);

      v187 = sub_1006B94B0(v653, 0, 0, _swiftEmptyArrayStorage, 0xD000000000000017, 0x800000010077DE90);
      v188 = objc_allocWithZone(type metadata accessor for ComponentViewOverflowViewController());
      v189 = &unk_100939068;
      v190 = &type metadata accessor for EditorsChoice;
      v191 = &type metadata accessor for EditorsChoice;
LABEL_63:
      v103 = sub_1004702C0(v185, v186, v187, v188, v190, v189, v191);

      [v103 setModalPresentationStyle:4];

      goto LABEL_85;
    case 0x22u:
      v149 = *v76;
      v150 = v76[1];
      v103 = [objc_allocWithZone(GKLeaderboardScoreViewController) initWithGameRecord:v150 leaderboard:*v76];

      swift_unknownObjectRelease();

      goto LABEL_86;
    case 0x23u:
      sub_10074FF44();
      sub_100016B4C(v636, &v672, &unk_100925760);
      v124 = sub_10074FF34();
      goto LABEL_84;
    case 0x24u:
      v126 = *v76;
      v125 = v76[1];
      v127 = enum case for GameLayerAchievementsEntryPoint.achievementsByGame(_:);
      v128 = sub_10074FCA4();
      v129 = *(v128 - 8);
      v130 = v606;
      (*(v129 + 104))(v606, v127, v128);
      (*(v129 + 56))(v130, 0, 1, v128);
      if (*(v125 + 16) == 1)
      {
      }

      sub_10074FC94();
      swift_allocObject();
      v131 = v126;
      sub_10074FC84();
      v132 = sub_10074FD44();
      (*(*(v132 - 8) + 56))(v608, 1, 1, v132);
      v133 = objc_allocWithZone(sub_10074FCC4());
      v103 = sub_10074FCB4();

      goto LABEL_85;
    case 0x25u:
      v113 = sub_10000C518(&unk_100932490);
      v114 = v647;
      sub_100066578(v76 + *(v113 + 48), v647, &unk_100923970);
      sub_100016B4C(v114, v646, &unk_100923970);
      sub_100748BA4();
      v672 = 0u;
      v673 = 0u;
      v674 = 0;
      swift_allocObject();

      v115 = v653;

      v116 = sub_100748B94();

      sub_100744334();
      v117 = sub_1004783D0(&qword_100938DB8, &type metadata accessor for GenericPagePresenter);

      v118 = sub_1006B94B0(v115, v116, v117, _swiftEmptyArrayStorage, 0xD000000000000011, 0x800000010077DE70);

      v119 = objc_allocWithZone(type metadata accessor for PrivacyDetailViewController());
      sub_10017B858(v116, v118);
      v103 = v120;

      swift_unknownObjectRelease();

      v121 = v114;
      goto LABEL_60;
    case 0x26u:
      v457 = sub_10000C518(&unk_100932490);
      v177 = v647;
      sub_100066578(v76 + *(v457 + 48), v647, &unk_100923970);
      sub_100016B4C(v177, v646, &unk_100923970);
      sub_100748BA4();
      v672 = 0u;
      v673 = 0u;
      v674 = 0;
      swift_allocObject();

      v458 = v653;

      v459 = sub_100748B94();

      sub_100744334();
      v460 = sub_1004783D0(&qword_100938DB8, &type metadata accessor for GenericPagePresenter);

      v461 = sub_1006B94B0(v458, v459, v460, _swiftEmptyArrayStorage, 0xD000000000000016, 0x800000010077DE50);

      v462 = objc_allocWithZone(type metadata accessor for PrivacyDefinitionsViewController());
      type metadata accessor for PrivacyDefinitionsDataSource();
      swift_allocObject();
      v463 = swift_retain_n();
      v464 = sub_10046FBDC(v463);

      v103 = sub_10046EA4C(v459, v464, v461);
      sub_1004783D0(&unk_100938DC0, type metadata accessor for PrivacyDefinitionsViewController);
      v465 = v103;

      v466 = v465;
      sub_10074AB24();

      v466[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_prefersLargeTitle] = 0;
      v467 = [v466 navigationItem];
      [v467 setLargeTitleDisplayMode:2];

      swift_unknownObjectRelease();

LABEL_77:
      v121 = v177;
      goto LABEL_60;
    case 0x27u:
      v420 = sub_10000C518(&unk_100932490);
      v421 = v647;
      sub_100066578(v76 + *(v420 + 48), v647, &unk_100923970);
      sub_100016B4C(v421, v646, &unk_100923970);
      sub_10074C7A4();
      swift_allocObject();

      v422 = v653;

      v423 = sub_10074C794();

      sub_10074B8B4();
      v424 = sub_1004783D0(&qword_100938DB0, &type metadata accessor for GenericDiffablePagePresenter);

      v425 = sub_1006B94B0(v422, v423, v424, _swiftEmptyArrayStorage, 0xD000000000000018, 0x800000010077DE30);

      v426 = objc_allocWithZone(type metadata accessor for AccessibilityDetailsViewController());
      *&v426[qword_100983020] = 0x3FF0000000000000;
      *&v426[qword_100947468] = 0;
      *&v426[qword_100947470] = 0x4034000000000000;
      v426[qword_100983028] = 0;
      *&v426[qword_100947478] = 0;
      v103 = sub_1004690E0(v423, v425);

      swift_unknownObjectRelease();

      v121 = v421;
LABEL_60:
      sub_10000C8CC(v121, &unk_100923970);
      goto LABEL_87;
    case 0x28u:
      v208 = v76[1];
      sub_100742734();
      swift_allocObject();
      v209 = v653;

      v210 = sub_1007426F4();

      sub_100744334();

      v211 = sub_1004783D0(&unk_100938DA0, &type metadata accessor for AppEventDetailPagePresenter);

      v212 = sub_1006B94B0(v209, v210, v211, _swiftEmptyArrayStorage, 0xD000000000000012, 0x800000010077DE10);

      v213 = objc_allocWithZone(type metadata accessor for AppEventDetailPageViewController());
      v214 = v208;

      sub_100238C60(v210, v212, v208);
      v103 = v215;
      [v103 setModalPresentationStyle:4];
      v216 = OBJC_IVAR____TtC22SubscribePageExtension32AppEventDetailPageViewController_containerTransitioningDelegate;
      goto LABEL_71;
    case 0x29u:
    case 0x2Au:
      v427 = v76[1];
      sub_1007427D4();
      swift_allocObject();
      v428 = v653;

      v429 = sub_100742794();

      sub_100744334();

      v430 = sub_1004783D0(&qword_100938D98, &type metadata accessor for AppPromotionDetailPagePresenter);

      v431 = sub_1006B94B0(v428, v429, v430, _swiftEmptyArrayStorage, 0xD000000000000016, 0x800000010077DDF0);

      v432 = objc_allocWithZone(type metadata accessor for AppPromotionDetailPageViewController());
      v214 = v427;

      sub_1004D67F4(v429, v431, v427);
      v103 = v433;
      [v103 setModalPresentationStyle:4];
      v216 = OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_containerTransitioningDelegate;
LABEL_71:
      [v103 setTransitioningDelegate:*&v103[v216]];

      swift_unknownObjectRelease();

      sub_10000C620(v675);
      (*(v662 + 8))(v665, v661);

      return v103;
    case 0x2Bu:
      v103 = *v76;
      v104 = sub_10000C518(&unk_100938DD0);
      v105 = v604;
      v106 = v603;
      v107 = v605;
      (*(v604 + 32))(v603, v76 + *(v104 + 48), v605);
      type metadata accessor for ComponentViewOverflowViewController();
      if (swift_dynamicCastClass())
      {
        v108 = v103;
        sub_1005157AC(v106);

        v109 = v659;
        v110 = v108;
        v111 = v662;
        v112 = v661;
      }

      else
      {
        v111 = v662;
        v112 = v661;
        v110 = v659;
        v109 = v658;
      }

      swift_unknownObjectRelease();

      (*(v105 + 8))(v106, v107);
      sub_10000C620(v675);
      (*(v111 + 8))(v665, v112);
      return v103;
    case 0x2Cu:
      v166 = sub_1007421B4();
      swift_allocObject();
      swift_unknownObjectRetain();
      v167 = v656;
      v168 = sub_1007421A4();
      *(&v673 + 1) = v166;
      v674 = &protocol witness table for ASDInAppPurchaseStateProvider;
      *&v672 = v168;
      sub_100745AF4();
      swift_allocObject();

      v169 = v653;

      v170 = v658;
      v171 = v659;
      v172 = sub_1007459A4();
      v173 = sub_1004783D0(&qword_100938E68, &type metadata accessor for AccountPresenter);

      v174 = sub_1006B94B0(v169, v172, v173, _swiftEmptyArrayStorage, 0x50746E756F636361, 0xEB00000000656761);

      v175 = objc_allocWithZone(type metadata accessor for AccountViewController());
      v103 = sub_1005AD800(v172, v174);

      swift_unknownObjectRelease();

      goto LABEL_86;
    case 0x2Du:
      type metadata accessor for ASDPurchaseHistoryContext(0);
      *&v672 = 1;
      v395 = v617;
      sub_1007522F4();
      v396 = v653;
      sub_100752724();
      v397 = *(v643 + 8);
      v398 = v618;
      v397(v395, v618);
      LOBYTE(v672) = 1;
      sub_1007522F4();
      v399 = sub_100752724();
      v655 = v399;

      v397(v395, v398);
      v400 = sub_1000C0D3C(v399);
      v654 = v401;
      sub_1007526E4();
      v652 = v400;
      swift_unknownObjectRetain();
      sub_1007526E4();
      sub_10000C518(&qword_100938E40);
      v402 = v619;
      v403 = (*(v619 + 80) + 32) & ~*(v619 + 80);
      v404 = swift_allocObject();
      *(v404 + 16) = v644;
      v405 = enum case for PurchasesContentMode.hidden(_:);
      v406 = *(v402 + 104);
      v407 = v620;
      v406(v404 + v403, enum case for PurchasesContentMode.hidden(_:), v620);
      sub_10074B704();
      swift_allocObject();

      v408 = v654;
      v409 = sub_10074B654();
      v406(v596, v405, v407);
      sub_10074B6A4();
      v410 = sub_1004783D0(&qword_100938E48, &type metadata accessor for PurchasesContentPresenter);
      sub_10000C518(&qword_100938E30);
      v411 = swift_allocObject();
      *(v411 + 16) = v644;
      *&v672 = v652;
      *(&v672 + 1) = v408;

      sub_100752304();
      v412 = sub_1006B94B0(v396, v409, v410, v411, 0xD000000000000013, 0x800000010077DF70);

      v413 = objc_allocWithZone(type metadata accessor for PurchasesViewController());
      sub_1002BDCF8(v409, v412);
      v103 = v414;

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      goto LABEL_65;
    case 0x2Eu:
      type metadata accessor for ComingSoonViewController();
      v124 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      goto LABEL_84;
    case 0x2Fu:
      sub_10074BEF4();
      sub_100752754();
      v122 = v672;
      v123 = objc_allocWithZone(type metadata accessor for DebugTodayCardTriggerViewController());
      v124 = sub_1002D52B8(v122);
      goto LABEL_84;
    case 0x30u:
      sub_10074CF24();
      swift_allocObject();

      v192 = sub_10074CE84();
      v193 = objc_allocWithZone(type metadata accessor for DebugStorefrontPickerViewController());
      v124 = sub_10007DE10(v192);
      goto LABEL_84;
    case 0x31u:
      v204 = sub_100744AB4();
      v205 = objc_allocWithZone(AMSUINotificationSettingsViewController);
      v206 = sub_100753064();
      v103 = [v205 initWithIdentifier:v206 bag:v204];

      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      goto LABEL_86;
    case 0x32u:
      v101 = [objc_allocWithZone(GKDashboardRequest) init];
      [v101 setState:4];
      sub_10074FF14();
      (*(v600 + 104))(v602, enum case for DashboardLaunchContext.appStore(_:), v601);
      sub_100016B4C(v636, &v672, &unk_100925760);
      v102 = v101;
      v103 = sub_10074FF04();

      goto LABEL_85;
    case 0x33u:
      sub_10074E0A4();
      swift_allocObject();
      v473 = v653;

      v474 = sub_10074E084();
      v475 = sub_1004783D0(&qword_100938D90, &type metadata accessor for PersonalizationTransparencyPagePresenter);

      v476 = sub_1006B94B0(v473, v474, v475, _swiftEmptyArrayStorage, 0xD00000000000001FLL, 0x800000010077DDD0);

      v477 = objc_allocWithZone(type metadata accessor for PersonalizationTransparencyPageViewController());
      v124 = sub_10040DB30(v474, v476);
LABEL_84:
      v103 = v124;
LABEL_85:

      swift_unknownObjectRelease();

      goto LABEL_86;
    case 0x34u:

      swift_unknownObjectRelease();

      sub_10000C620(v675);
      (*(v662 + 8))(v665, v661);
      return 0;
    default:
      v93 = sub_10000C518(&qword_100938F00);
      v655 = *(v76 + v93[12]);
      v654 = *(v76 + v93[16]);
      v647 = *(v76 + v93[20]);
      v648 = *(v76 + v93[24]);
      (*(v649 + 32))(v641, v76, v652);
      LODWORD(v646) = sub_100744A54();
      sub_100744A34();
      v94 = sub_100744914();
      v95 = v627;
      v96 = *(v627 + 104);
      v97 = v626;
      v98 = v628;
      v96(v626, enum case for ASKBagContract.AdPlacementBagValue.productPageYMAL(_:), v628);
      v99 = sub_10046E0E8(v97, v94, &type metadata accessor for ASKBagContract.AdPlacementBagValue, &qword_100938FF8, &type metadata accessor for ASKBagContract.AdPlacementBagValue);

      v100 = *(v95 + 8);
      v100(v97, v98);
      if (v99)
      {
        LODWORD(v642) = 1;
      }

      else
      {
        v487 = sub_100744914();
        v96(v97, enum case for ASKBagContract.AdPlacementBagValue.productPageYMALDuringDownload(_:), v98);
        LODWORD(v642) = sub_10046E0E8(v97, v487, &type metadata accessor for ASKBagContract.AdPlacementBagValue, &qword_100938FF8, &type metadata accessor for ASKBagContract.AdPlacementBagValue);

        v100(v97, v98);
      }

      v488 = sub_10074E344();
      swift_allocObject();
      v489 = sub_10074E334();
      *(&v673 + 1) = v488;
      v674 = &protocol witness table for UnimplementedAdvertLifecycleMetricsReporter;
      *&v672 = v489;
      sub_10074D4D4();
      swift_allocObject();
      v490 = v489;

      v491 = sub_10074D4B4();
      v645 = v491;
      sub_10000C518(&qword_100938E30);
      v492 = swift_allocObject();
      *(v492 + 16) = v644;
      *&v672 = v491;
      sub_100752304();
      (*(v649 + 16))(v585, v641, v652);
      sub_10000C824(v675, &v672);
      v670[3] = v575;
      v670[4] = &protocol witness table for Restrictions;
      v670[0] = v664;

      v493 = sub_1007537D4();
      v494 = &enum case for ProductDiffablePagePresenter.PageWidth.compact(_:);
      if ((v493 & 1) == 0)
      {
        v494 = &enum case for ProductDiffablePagePresenter.PageWidth.regular(_:);
      }

      (*(v586 + 104))(v591, *v494, v587);
      v668 = &protocol witness table for UnimplementedAdvertLifecycleMetricsReporter;
      v667 = v488;
      v639 = v490;
      v666 = v490;
      sub_100016B4C(v637, v631, &qword_10092C1F0);
      sub_10074C964();
      swift_allocObject();

      v495 = v653;

      swift_unknownObjectRetain();

      v496 = sub_10074C8B4();
      sub_100745584();

      sub_100745564();
      sub_100745554();

      sub_10074B854();

      sub_10074B8B4();

      v497 = sub_1004783D0(&qword_100938F08, &type metadata accessor for ProductDiffablePagePresenter);

      v498 = sub_1006B94B0(v495, v496, v497, v492, 0x50746375646F7270, 0xEB00000000656761);

      v499 = objc_allocWithZone(type metadata accessor for ProductDiffablePageViewController());
      v103 = sub_10035B708(v496, v498);

      swift_unknownObjectRelease();

      (*(v649 + 8))(v641, v652);
      goto LABEL_87;
  }
}

uint64_t sub_1004778CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100930240);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10047793C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100477990()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1004779DC(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10000C724(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100477A30()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100477A74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100477A8C()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100477AC4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtensionP33_17E5165BDAD277E02C837297BEA7454633AccountPageViewControllerDelegate_selfReference);
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtensionP33_17E5165BDAD277E02C837297BEA7454633AccountPageViewControllerDelegate_selfReference) = 0;
}

uint64_t sub_100477ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v64 = a2;
  v65 = a3;
  v4 = sub_10000C518(&qword_10092C1F0);
  __chkstk_darwin(v4 - 8);
  v63 = &v60 - v5;
  v6 = sub_10000C518(&unk_100925750);
  __chkstk_darwin(v6 - 8);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v60 - v10;
  __chkstk_darwin(v12);
  v14 = &v60 - v13;
  v15 = type metadata accessor for FlowDestination();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v62 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v60 = &v60 - v19;
  __chkstk_darwin(v20);
  v22 = (&v60 - v21);
  __chkstk_darwin(v23);
  v25 = &v60 - v24;

  sub_10074EC44();
  sub_1001362FC(a1, v68, v14);
  v26 = *(v16 + 48);
  v27 = v26(v14, 1, v15);
  v61 = v8;
  if (v27 == 1)
  {
    swift_storeEnumTagMultiPayload();
    if (v26(v14, 1, v15) != 1)
    {
      sub_10000C8CC(v14, &unk_100925750);
    }
  }

  else
  {
    sub_100068B98(v14, v25);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1000AC948(v25);
  type metadata accessor for NavigationBarManualCheckLayoutMarginsChange();
  if (EnumCaseMultiPayload == 2)
  {
    v29 = objc_allocWithZone(type metadata accessor for WebNavigationController());
    *&v29[OBJC_IVAR____TtC22SubscribePageExtension25StoreNavigationController_objectGraph] = v65;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v31 = type metadata accessor for StoreNavigationController();
    v66.receiver = v29;
    v66.super_class = v31;

    v32 = objc_msgSendSuper2(&v66, "initWithNavigationBarClass:toolbarClass:", ObjCClassFromMetadata, 0);
  }

  else
  {
    v31 = type metadata accessor for StoreNavigationController();
    v33 = objc_allocWithZone(v31);
    *&v33[OBJC_IVAR____TtC22SubscribePageExtension25StoreNavigationController_objectGraph] = v65;
    v34 = swift_getObjCClassFromMetadata();
    v69.receiver = v33;
    v69.super_class = v31;

    v32 = objc_msgSendSuper2(&v69, "initWithNavigationBarClass:toolbarClass:", v34, 0);
  }

  v35 = v32;
  [v35 setDelegate:v35];
  type metadata accessor for StoreNavigationController();
  v68[3] = v31;
  v68[4] = sub_1004783D0(&unk_100923920, type metadata accessor for StoreNavigationController);
  v68[0] = v35;

  sub_10074EC44();
  sub_1001362FC(a1, v67, v11);
  if (v26(v11, 1, v15) == 1)
  {
    swift_storeEnumTagMultiPayload();
    if (v26(v11, 1, v15) != 1)
    {
      sub_10000C8CC(v11, &unk_100925750);
    }
  }

  else
  {
    sub_100068B98(v11, v22);
  }

  v36 = sub_100742C14();
  v38 = v37;
  v39 = v63;
  sub_100742C34();
  v40 = sub_100470520(v22, v64, v36, v38, v39, v68, v65, 1);

  sub_10000C8CC(v39, &qword_10092C1F0);
  sub_1000AC948(v22);
  sub_10000C8CC(v68, &unk_100925760);
  if (!v40)
  {

    return 0;
  }

  sub_10074EC44();
  v41 = v61;
  sub_1001362FC(a1, v68, v61);
  if (v26(v41, 1, v15) == 1)
  {
    v42 = v60;
    swift_storeEnumTagMultiPayload();
    v43 = v26(v41, 1, v15);
    v44 = v62;
    if (v43 != 1)
    {
      sub_10000C8CC(v41, &unk_100925750);
    }
  }

  else
  {
    v42 = v60;
    sub_100068B98(v41, v60);
    v44 = v62;
  }

  sub_100068B98(v42, v44);
  v46 = swift_getEnumCaseMultiPayload();
  if (v46 == 14)
  {
    sub_10000C518(&qword_100938EA0);

    sub_10000C8CC(v44, &unk_100923970);
    goto LABEL_30;
  }

  if (v46 == 15 || v46 == 18)
  {
    sub_1000AC948(v44);
LABEL_30:
    sub_10000C518(&unk_1009231A0);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_1007A5CF0;
    *(v56 + 32) = v40;
    sub_100016C60(0, &qword_10092B0C0);
    v45 = v35;
    v57 = v40;
    isa = sub_100753294().super.isa;

    [v45 setViewControllers:isa];

    return v45;
  }

  sub_1000AC948(v44);
  v47 = swift_allocObject();
  swift_unknownObjectWeakInit();

  if (sub_1003CC490(v40))
  {

    goto LABEL_30;
  }

  v48 = [v40 navigationItem];
  v49 = [v48 rightBarButtonItems];
  if (v49)
  {
    v50 = v49;
    v51 = v40;
    sub_100016C60(0, &qword_100925250);
    v52 = sub_1007532A4();
  }

  else
  {
    v51 = v40;
    v52 = _swiftEmptyArrayStorage;
  }

  v68[0] = v52;
  sub_100016C60(0, &qword_100925250);
  sub_100016C60(0, &qword_100929CC0);
  v53 = swift_allocObject();
  *(v53 + 16) = sub_100478418;
  *(v53 + 24) = v47;

  v70.value.super.super.isa = sub_100753FF4();
  v70.is_nil = 0;
  v54.super.super.isa = sub_100753634(UIBarButtonSystemItemClose, v70, v71).super.super.isa;
  if (!(v52 >> 62) || (result = sub_100754664(), (result & 0x8000000000000000) == 0))
  {
    sub_10015D700(0, 0, v54.super.super.isa);
    v55 = sub_100753294().super.isa;

    [v48 setRightBarButtonItems:v55];

    v40 = v51;
    goto LABEL_30;
  }

  __break(1u);
  return result;
}

uint64_t sub_1004783D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t AXArcadeSubscribePageLayout.init(metrics:headerView:contentView:detailsView:offerButton:dismissButton:)@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X8>)
{
  memcpy(a7, __src, 0x190uLL);
  v13 = *(a2 + 16);
  *(a7 + 400) = *a2;
  *(a7 + 416) = v13;
  *(a7 + 432) = *(a2 + 32);
  v14 = *(a3 + 16);
  *(a7 + 440) = *a3;
  *(a7 + 456) = v14;
  *(a7 + 472) = *(a3 + 32);
  sub_100012160(a4, a7 + 480);
  sub_100012160(a5, a7 + 520);

  return sub_100012160(a6, a7 + 560);
}

uint64_t AppPromotionFormattedDateLayout.Metrics.liveIndicatorTrailingMargin.setter(__int128 *a1)
{
  sub_10000C620(v1 + 80);

  return sub_100012160(a1, v1 + 80);
}

uint64_t CrossLinkLockupLayout.Metrics.offerButtonMargin.setter(__int128 *a1)
{
  sub_10000C620(v1 + 120);

  return sub_100012160(a1, v1 + 120);
}

uint64_t AXArcadeSubscribePageLayout.Metrics.detailsHorizontalMargin.setter(__int128 *a1)
{
  sub_10000C620(v1 + 160);

  return sub_100012160(a1, v1 + 160);
}

uint64_t AXArcadeSubscribePageLayout.Metrics.detailsBottomMargin.setter(__int128 *a1)
{
  sub_10000C620(v1 + 200);

  return sub_100012160(a1, v1 + 200);
}

uint64_t AXArcadeSubscribePageLayout.Metrics.offerButtonHeight.setter(__int128 *a1)
{
  sub_10000C620(v1 + 240);

  return sub_100012160(a1, v1 + 240);
}

void AXArcadeSubscribePageLayout.Metrics.offerButtonMargins.setter(double a1, double a2, double a3, double a4)
{
  v4[35] = a1;
  v4[36] = a2;
  v4[37] = a3;
  v4[38] = a4;
}

uint64_t AXArcadeSubscribePageLayout.Metrics.buttonsSpacing.setter(__int128 *a1)
{
  sub_10000C620(v1 + 320);

  return sub_100012160(a1, v1 + 320);
}

uint64_t AXArcadeSubscribePageLayout.Metrics.bottomSpace.setter(__int128 *a1)
{
  sub_10000C620(v1 + 360);

  return sub_100012160(a1, v1 + 360);
}

double AXArcadeSubscribePageLayout.contentViewSize(fitting:in:)(uint64_t a1, double a2, double a3)
{
  v7 = sub_100754724();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C888(v3, v3[3]);
  sub_100536120();
  sub_100750564();
  v11 = *(v8 + 8);
  v11(v10, v7);
  ObjectType = swift_getObjectType();
  sub_10047A5AC(a1, v3, ObjectType, a2, a3);
  sub_10000C888(v3 + 5, v3[8]);
  sub_100536120();
  sub_100750564();
  v11(v10, v7);
  return a2;
}

uint64_t AXArcadeSubscribePageLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v7 = v6;
  v80 = a2;
  v81 = sub_100750354();
  v79 = *(v81 - 8);
  __chkstk_darwin(v81);
  v77 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100754724();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C888(v6 + 10, v6[13]);
  sub_100536120();
  sub_100750564();
  v73 = v18;
  v19 = *(v15 + 8);
  v19(v17, v14);
  sub_10000C888(v7, v7[3]);
  sub_100536120();
  sub_100750564();
  v21 = v20;
  v19(v17, v14);
  sub_10000C888(v7 + 5, v7[8]);
  sub_100536120();
  sub_100750564();
  v23 = v22;
  *&v78[0] = v19;
  v19(v17, v14);
  ObjectType = swift_getObjectType();
  v24 = sub_10047A5AC(a1, v6, ObjectType, a5, a6);
  if (v21 > v24)
  {
    v24 = v21;
  }

  if (v24 >= v23)
  {
    v24 = v23;
  }

  v71 = v24;
  sub_1000CD5F0((v6 + 50), &v87);
  v25 = v89;
  if (v89)
  {
    sub_100012160(&v87, v82);
    sub_10000C888(v82, v83);
    sub_100750414();
    v27 = v26;
    v29 = v28;
    v95.origin.x = a3;
    v95.origin.y = a4;
    v95.size.width = a5;
    v95.size.height = a6;
    v30 = CGRectGetMidX(v95) + v27 * -0.5;
    v96.origin.x = a3;
    v96.origin.y = a4;
    v96.size.width = a5;
    v96.size.height = a6;
    MinY = CGRectGetMinY(v96);
    sub_10000C888(v82, v83);
    sub_100753B24();
    sub_100750394();
    sub_10000C620(v82);
  }

  else
  {
    sub_10000C8CC(&v87, &unk_100928A00);
    v30 = 0.0;
    MinY = 0.0;
    v27 = 0.0;
    v29 = 0.0;
  }

  *&v75 = v6 + 35;
  sub_1000CD5F0((v6 + 55), &v87);
  v74 = a6;
  if (v89)
  {
    sub_100012160(&v87, v82);
    if (v25)
    {
      v97.origin.x = v30;
      v97.origin.y = MinY;
      v97.size.width = v27;
      v97.size.height = v29;
      MaxY = CGRectGetMaxY(v97);
    }

    else
    {
      v98.origin.x = a3;
      v98.origin.y = a4;
      v98.size.width = a5;
      v98.size.height = a6;
      MaxY = CGRectGetMinY(v98);
    }

    v40 = v73 + MaxY;
    v99.origin.x = a3;
    v99.origin.y = a4;
    v99.size.width = a5;
    v99.size.height = a6;
    MinX = CGRectGetMinX(v99);
    v100.origin.x = a3;
    v100.origin.y = a4;
    v100.size.width = a5;
    v100.size.height = a6;
    Width = CGRectGetWidth(v100);
    sub_10000C888(v82, v83);
    v34 = a5;
    v35 = a4;
    v72 = Width;
    v73 = v40;
    v38 = v71;
    sub_100753B24();
    sub_100750394();
    sub_10000C620(v82);
  }

  else
  {
    sub_10000C8CC(&v87, &unk_100928A00);
    if (v25)
    {
      v33 = v30;
    }

    else
    {
      v33 = a3;
    }

    v34 = a5;
    v35 = a4;
    if (v25)
    {
      v36 = MinY;
    }

    else
    {
      v36 = a4;
    }

    if (v25)
    {
      v37 = v27;
    }

    else
    {
      v37 = 0.0;
    }

    v72 = v37;
    v73 = v36;
    if (v25)
    {
      v38 = v29;
    }

    else
    {
      v38 = 0.0;
    }

    MinX = v33;
  }

  v71 = MinX;
  sub_10000C888(v6 + 20, v6[23]);
  sub_100536120();
  sub_100750564();
  v43 = v42;
  v44 = v78[0];
  (*&v78[0])(v17, v14);
  sub_10000C888(v6 + 15, v6[18]);
  sub_100536120();
  sub_100750564();
  v46 = v45;
  (*&v44)(v17, v14);
  sub_10000C888(v6 + 25, v6[28]);
  sub_100536120();
  sub_100750564();
  v48 = v47;
  (*&v44)(v17, v14);
  sub_10000C824((v6 + 30), v90);
  v49 = *(v75 + 32);
  v50 = *(v75 + 16);
  *v78 = *v75;
  v75 = v50;
  sub_10000C824((v6 + 40), &v93);
  sub_10000C824((v6 + 45), &v94);
  *&v87 = v46;
  *(&v87 + 1) = v43;
  v88 = v48;
  v89 = v43;
  v91 = v75;
  *&v90[40] = *v78;
  v92 = v49;
  sub_10047A958(&v87, v82);
  sub_10000C824((v6 + 60), &v84);
  sub_10000C824((v6 + 65), &v85);
  sub_10000C824((v6 + 70), &v86);
  v101.origin.x = a3;
  v101.origin.y = v35;
  v101.size.width = v34;
  v51 = v34;
  v52 = v74;
  v101.size.height = v74;
  v53 = CGRectGetMinX(v101);
  v102.origin.x = MinX;
  v55 = v72;
  v54 = v73;
  v102.origin.y = v73;
  v102.size.width = v72;
  v102.size.height = v38;
  v70 = CGRectGetMaxY(v102);
  v103.origin.x = a3;
  v103.origin.y = v35;
  v103.size.width = v51;
  v103.size.height = v52;
  v56 = CGRectGetWidth(v103);
  v78[0] = a3;
  v104.origin.x = a3;
  v57 = v53;
  v58 = v56;
  *&v75 = v35;
  v104.origin.y = v35;
  v104.size.width = v51;
  v104.size.height = v52;
  v59 = CGRectGetMaxY(v104);
  v105.size.height = v38;
  v60 = v59;
  v105.origin.y = v54;
  v105.size.width = v55;
  v61 = v70;
  v105.origin.x = v71;
  v62 = v60 - CGRectGetMaxY(v105);
  sub_10047A990(v58, a1, v82);
  v64 = v63;
  v106.origin.x = v57;
  v106.origin.y = v61;
  v106.size.width = v58;
  v106.size.height = v62;
  if (v64 <= CGRectGetHeight(v106))
  {
    v65 = v77;
    sub_100479338(v77, v57, v61, v58, v62);
  }

  else
  {
    v65 = v77;
    sub_100479844(a1, v77, v57, v61, v58, v62);
  }

  sub_100750344();
  sub_100750334();
  v66 = v78[0];
  v107.origin.x = v78[0];
  v67 = *&v75;
  *&v107.origin.y = v75;
  v107.size.width = v51;
  v107.size.height = v52;
  CGRectGetHeight(v107);
  v108.origin.x = v66;
  v108.origin.y = v67;
  v108.size.width = v51;
  v108.size.height = v52;
  CGRectGetMinX(v108);
  v109.origin.x = v66;
  v109.origin.y = v67;
  v109.size.width = v51;
  v109.size.height = v52;
  CGRectGetMinY(v109);
  v110.origin.x = v66;
  v110.origin.y = v67;
  v110.size.width = v51;
  v110.size.height = v52;
  CGRectGetWidth(v110);
  sub_100750314();
  (*(v79 + 8))(v65, v81);
  sub_10047AC98(v82);
  return sub_10047ACC8(&v87);
}

uint64_t sub_100479338@<X0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v6 = v5;
  v22[3] = a1;
  v11 = sub_100754724();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v5 + 8);
  v16 = *(v5 + 24);
  sub_10000C888((v5 + 112), *(v5 + 136));
  sub_100536120();
  sub_100750564();
  v22[1] = v17;
  v18 = *(v12 + 8);
  v18(v14, v11);
  v23.origin.x = a2;
  v23.origin.y = a3;
  v23.size.width = a4;
  v23.size.height = a5;
  v19 = CGRectGetWidth(v23) - v15 - v16;
  v24.origin.x = a2;
  v24.origin.y = a3;
  v24.size.width = a4;
  v24.size.height = a5;
  CGRectGetHeight(v24);
  sub_10000C888(v6 + 24, v6[27]);
  *&v22[2] = v19;
  sub_100750414();
  v25.origin.x = a2;
  v25.origin.y = a3;
  v25.size.width = a4;
  v25.size.height = a5;
  CGRectGetMidX(v25);
  v26.origin.x = a2;
  v26.origin.y = a3;
  v26.size.width = a4;
  v26.size.height = a5;
  CGRectGetMinY(v26);
  sub_10000C888(v6 + 24, v6[27]);
  sub_100753B24();
  sub_100750394();
  v27.origin.x = a2;
  v27.origin.y = a3;
  v27.size.width = a4;
  v27.size.height = a5;
  CGRectGetMaxY(v27);
  sub_10000C888(v6 + 19, v6[22]);
  sub_100536120();
  sub_100750564();
  v18(v14, v11);
  sub_10000C888(v6 + 34, v6[37]);
  v20 = sub_1007503A4();
  sub_10000C888(v6 + 34, v6[37]);
  if ((v20 & 1) == 0)
  {
    sub_100750414();
    v28.origin.x = a2;
    v28.origin.y = a3;
    v28.size.width = a4;
    v28.size.height = a5;
    CGRectGetMidX(v28);
    sub_10000C888((v5 + 272), *(v5 + 296));
    sub_100753B24();
  }

  sub_100750394();
  sub_10000C888((v5 + 232), *(v5 + 256));
  if (sub_1007503A4())
  {
    sub_10000C888((v5 + 232), *(v5 + 256));
  }

  else
  {
    v29.origin.x = a2;
    v29.origin.y = a3;
    v29.size.width = a4;
    v29.size.height = a5;
    CGRectGetWidth(v29);
    sub_10000C888((v5 + 32), *(v5 + 56));
    sub_100536120();
    sub_100750564();
    v18(v14, v11);
    v30.origin.x = a2;
    v30.origin.y = a3;
    v30.size.width = a4;
    v30.size.height = a5;
    CGRectGetMidX(v30);
    sub_10000C888((v5 + 232), *(v5 + 256));
    sub_100753B24();
  }

  sub_100750394();
  return sub_100750314();
}

uint64_t sub_100479844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v60 = a1;
  v66 = a2;
  v83 = sub_100748884();
  v75 = *(v83 - 8);
  v88 = v75;
  __chkstk_darwin(v83);
  v57 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_1007488A4();
  v87 = *(v85 - 8);
  __chkstk_darwin(v85);
  v55 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_1007488C4();
  v89 = *(v86 - 8);
  __chkstk_darwin(v86);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v15;
  v65 = sub_1007488F4();
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v63 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100754724();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *v6;
  v61 = *(v6 + 8);
  v21 = v61;
  v23 = *(v6 + 16);
  v24 = *(v6 + 24);
  v98.origin.x = a3;
  v98.origin.y = a4;
  v98.size.width = a5;
  v98.size.height = a6;
  v62 = CGRectGetWidth(v98) - v21 - v24;
  v99.origin.x = a3;
  v99.origin.y = a4;
  v99.size.width = a5;
  v99.size.height = a6;
  CGRectGetWidth(v99);
  sub_10000C888((v6 + 32), *(v6 + 56));
  sub_100536120();
  sub_100750564();
  (*(v18 + 8))(v20, v17);
  sub_10000C518(&qword_10092C0B8);
  v25 = *(sub_1007488D4() - 8);
  v56 = *(v25 + 72);
  v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v58 = 2 * v56;
  v27 = swift_allocObject();
  v84 = xmmword_1007A5620;
  v59 = v27;
  *(v27 + 16) = xmmword_1007A5620;
  v68 = v27 + v26;
  v80 = enum case for _VerticalFlowLayout.Child.Placement.top(_:);
  v28 = *(v89 + 104);
  v81 = v89 + 104;
  v82 = v28;
  v28(v15);
  v79 = enum case for _VerticalFlowLayout.Child.HorizontalAlignment.center(_:);
  v29 = v87;
  v30 = *(v87 + 104);
  v77 = v87 + 104;
  v78 = v30;
  v31 = v55;
  v32 = v85;
  v30(v55);
  v96 = &type metadata for CGFloat;
  v97 = &protocol witness table for CGFloat;
  v95 = v22;
  v93 = &type metadata for CGFloat;
  v94 = &protocol witness table for CGFloat;
  v92 = v23;
  v76 = sub_10000C518(&unk_100931370);
  v67 = *(v75 + 72);
  v33 = v88;
  v75 = *(v88 + 80);
  v54 = (v75 + 32) & ~v75;
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1007A5A00;
  sub_100748854();
  v91 = v34;
  v73 = sub_1003BC9B0();
  v72 = sub_10000C518(&unk_100931380);
  v74 = sub_1001C4F00();
  v35 = v57;
  v36 = v83;
  sub_1007543A4();
  v37 = v52;
  sub_1007488B4();
  v38 = *(v33 + 8);
  v88 = v33 + 8;
  v69 = v38;
  v39 = v35;
  v38(v35, v36);
  v40 = *(v29 + 8);
  v87 = v29 + 8;
  v71 = v40;
  v40(v31, v32);
  v41 = *(v89 + 8);
  v89 += 8;
  v70 = v41;
  v42 = v86;
  v41(v37, v86);
  sub_10000C8CC(&v92, &qword_100931390);
  sub_10000C620(&v95);
  sub_10000C888((v7 + 232), *(v7 + 256));
  sub_1007503E4();
  v82(v37, v80, v42);
  v78(v31, v79, v32);
  v53 = sub_1007507D4();
  v93 = v53;
  v94 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v92);
  sub_1007507C4();
  sub_10000C824(v7 + 112, &v91);
  v43 = swift_allocObject();
  *(v43 + 16) = v84;
  sub_100748874();
  sub_100748854();
  sub_100748864();
  v90 = v43;
  v44 = v39;
  v45 = v83;
  sub_1007543A4();
  sub_1007488B4();
  v69(v44, v45);
  sub_10000C8CC(&v91, &qword_100931390);
  v46 = v85;
  v71(v31, v85);
  v47 = v86;
  v70(v37, v86);
  sub_10000C620(&v95);
  sub_10000C620(&v92);
  v82(v37, v80, v47);
  v78(v31, v79, v46);
  v96 = v53;
  v97 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v95);
  sub_1007507C4();
  sub_10000C824(v7 + 152, &v92);
  v48 = swift_allocObject();
  *(v48 + 16) = v84;
  sub_100748874();
  sub_100748854();
  sub_100748864();
  v91 = v48;
  sub_1007543A4();
  sub_1007488B4();
  v69(v44, v45);
  sub_10000C8CC(&v92, &qword_100931390);
  v71(v31, v85);
  v70(v37, v86);
  sub_10000C620(&v95);
  v49 = v63;
  sub_100748894();
  v100.origin.x = a3;
  v100.origin.y = a4;
  v100.size.width = a5;
  v100.size.height = a6;
  CGRectGetMinX(v100);
  v101.origin.x = a3;
  v101.origin.y = a4;
  v101.size.width = a5;
  v101.size.height = a6;
  CGRectGetMinY(v101);
  v102.origin.x = a3;
  v102.origin.y = a4;
  v102.size.width = a5;
  v102.size.height = a6;
  CGRectGetHeight(v102);
  sub_100748844();
  return (*(v64 + 8))(v49, v65);
}

uint64_t sub_10047A458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, double a5@<D2>, CGFloat a6@<D3>)
{
  swift_getObjectType();
  sub_10047A990(a5, a1, v6);
  v14 = v13;
  v17.origin.x = a3;
  v17.origin.y = a4;
  v17.size.width = a5;
  v17.size.height = a6;
  if (v14 <= CGRectGetHeight(v17))
  {

    return sub_100479338(a2, a3, a4, a5, a6);
  }

  else
  {

    return sub_100479844(a1, a2, a3, a4, a5, a6);
  }
}

double sub_10047A550(uint64_t a1, double a2)
{
  swift_getObjectType();

  return sub_10047A990(a2, a1, v2);
}

double sub_10047A5AC(uint64_t a1, void *a2, uint64_t a3, double a4, double a5)
{
  v34 = a3;
  *&v33 = a2 + 35;
  v9 = sub_100754724();
  v32 = v9;
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C888(a2 + 20, a2[23]);
  sub_100536120();
  sub_100750564();
  v14 = v13;
  v15 = *(v10 + 8);
  v15(v12, v9);
  sub_10000C888(a2 + 15, a2[18]);
  sub_100536120();
  v16 = a1;
  sub_100750564();
  v18 = v17;
  v19 = v32;
  v15(v12, v32);
  sub_10000C888(a2 + 25, a2[28]);
  sub_100536120();
  sub_100750564();
  v21 = v20;
  v15(v12, v19);
  sub_10000C824((a2 + 30), v43);
  v22 = *(v33 + 32);
  v23 = *(v33 + 16);
  v31 = *v33;
  v33 = v23;
  sub_10000C824((a2 + 40), &v46);
  sub_10000C824((a2 + 45), &v47);
  v42[0] = v18;
  v42[1] = v14;
  v42[2] = v21;
  v42[3] = v14;
  v44 = v33;
  *&v43[40] = v31;
  v45 = v22;
  sub_10047A958(v42, v38);
  sub_10000C824((a2 + 60), &v39);
  sub_10000C824((a2 + 65), &v40);
  sub_10000C824((a2 + 70), &v41);
  sub_10000C888(a2 + 10, a2[13]);
  sub_100536120();
  sub_100750564();
  v25 = v24;
  v15(v12, v19);
  sub_10047A990(a4, v16, v38);
  v27 = a5 - v25 - v26;
  sub_1000CD5F0((a2 + 50), &v35);
  if (v36)
  {
    sub_100012160(&v35, v37);
    sub_10000C888(v37, v37[3]);
    sub_100750414();
    v29 = v28;
    sub_10047AC98(v38);
    sub_10047ACC8(v42);
    v27 = v27 - v29;
    sub_10000C620(v37);
  }

  else
  {
    sub_10047AC98(v38);
    sub_10047ACC8(v42);
    sub_10000C8CC(&v35, &unk_100928A00);
  }

  return v27;
}

double sub_10047A990(double a1, uint64_t a2, void *a3)
{
  v5 = sub_100754724();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C888(a3 + 24, a3[27]);
  sub_100750414();
  sub_10000C888(a3 + 19, a3[22]);
  sub_100536120();
  sub_100750564();
  v9 = *(v6 + 8);
  v9(v8, v5);
  sub_10000C888(a3 + 29, a3[32]);
  if ((sub_1007503A4() & 1) == 0)
  {
    sub_10000C888(a3 + 4, a3[7]);
    sub_100536120();
    sub_100750564();
    v9(v8, v5);
  }

  sub_10000C888(a3 + 34, a3[37]);
  if ((sub_1007503A4() & 1) == 0)
  {
    sub_10000C888(a3 + 34, a3[37]);
    sub_100750414();
  }

  sub_10000C888(a3 + 29, a3[32]);
  if ((sub_1007503A4() & 1) == 0)
  {
    sub_10000C888(a3 + 34, a3[37]);
    if ((sub_1007503A4() & 1) == 0)
    {
      sub_10000C888(a3 + 14, a3[17]);
      sub_100536120();
      sub_100750564();
      v9(v8, v5);
    }
  }

  return a1;
}

uint64_t sub_10047AD00(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 600))
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

uint64_t sub_10047AD48(uint64_t result, int a2, int a3)
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
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
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
      *(result + 600) = 1;
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

    *(result + 600) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10047AE3C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 400))
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

uint64_t sub_10047AE84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 392) = 0;
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
      *(result + 400) = 1;
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

    *(result + 400) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10047AF44(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 312))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10047AF8C(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 312) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 312) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10047B02C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t sub_10047B060(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10047B0A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 192) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_10047B128(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v15 = _swiftEmptyArrayStorage;
  if (a3 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100754664())
  {
    v6 = 0;
    v11 = _swiftEmptyArrayStorage;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = sub_100754574();
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v14 = v7;
      a1(&v13, &v14);
      if (v3)
      {

        return v11;
      }

      if (v13)
      {
        sub_100753284();
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100753304();
        }

        sub_100753344();
        v11 = v15;
      }

      ++v6;
      if (v9 == i)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_10047B2D4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = result;
  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  do
  {
    for (i = v7; ; ++i)
    {
      if (i >= v4)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return result;
      }

      v10 = sub_100742F54();
      v12 = *(v10 - 8);
      result = v10 - 8;
      v11 = v12;
      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_20;
      }

      result = v6(&v19, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i);
      if (v3)
      {

        return v8;
      }

      v13 = v20;
      if (v20)
      {
        break;
      }

      if (v7 == v4)
      {
        return v8;
      }
    }

    v14 = v19;
    result = swift_isUniquelyReferenced_nonNull_native();
    v21 = v14;
    if ((result & 1) == 0)
    {
      result = sub_1002554F8(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v16 = *(v8 + 2);
    v15 = *(v8 + 3);
    v17 = v16 + 1;
    if (v16 >= v15 >> 1)
    {
      result = sub_1002554F8((v15 > 1), v16 + 1, 1, v8);
      v17 = v16 + 1;
      v8 = result;
    }

    *(v8 + 2) = v17;
    v18 = &v8[16 * v16];
    *(v18 + 4) = v21;
    *(v18 + 5) = v13;
  }

  while (v7 != v4);
  return v8;
}

uint64_t sub_10047B470()
{
  sub_10000C518(&qword_100930BC8);
  v0 = sub_10074E984();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1007A5620;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, enum case for Shelf.ContentType.productTopLockup(_:), v0);
  v6(v5 + v2, enum case for Shelf.ContentType.preorderDisclaimer(_:), v0);
  v6(v5 + 2 * v2, enum case for Shelf.ContentType.productBadge(_:), v0);
  v7 = sub_1001A9F00(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_1009804B0 = v7;
  return result;
}

void *sub_10047B5E4(void *a1, int *a2)
{
  v5 = sub_10049CD00(a1, a2);
  v6 = _swiftEmptyArrayStorage;
  v18 = _swiftEmptyArrayStorage;
  v7 = sub_10047FDA0(a1, a2);
  if (v7)
  {
    v8 = v7;
    sub_100753284();
    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100753304();
    }

    sub_100753344();

    v6 = v18;
  }

  v9 = sub_10047DC4C(a1);
  if (v9)
  {
    v10 = v9;
    sub_100753284();
    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100753304();
    }

    sub_100753344();

    v6 = v18;
  }

  v11 = sub_1004811A8(a1);
  if (v11)
  {
    v12 = v11;
    sub_100753284();
    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100753304();
    }

    sub_100753344();

    v6 = v18;
  }

  sub_100016C60(0, &qword_10092E460);

  v13 = sub_1007532F4();
  v16[2] = v2;
  v16[3] = a1;
  v16[4] = __chkstk_darwin(v13).n128_u64[0];
  v14 = sub_10047B128(sub_10048181C, v16, v5);

  v17 = v14;
  sub_1004A00B0(v6);
  return v17;
}

void sub_10047B818(void **a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>, double a4@<D0>)
{
  v6 = *a1;
  if (sub_10048183C(*a1, a2))
  {
    if ([v6 alignment] == 1 && a4 > 0.0)
    {
      v7 = [v6 layoutSize];
      v8 = [v6 elementKind];
      if (!v8)
      {
        sub_100753094();
        v8 = sub_100753064();
      }

      v9 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v7 elementKind:v8 alignment:objc_msgSend(v6 absoluteOffset:{"alignment"), 0.0, -a4}];

      *a3 = v9;
    }

    else
    {
      *a3 = v6;
      v10 = v6;
    }
  }

  else
  {
    *a3 = 0;
  }
}

double sub_10047B958@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v35 = a4;
  v9 = sub_100747C14();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SeparatorSupplementaryView();
  if (sub_1007539C4() == a1 && v13 == a2)
  {

LABEL_5:
    a5[3] = sub_10000C518(&qword_100934200);
    a5[4] = sub_10002DDC8(&qword_10093D6D0, &qword_100934200);
    sub_10000D134(a5);

    sub_1007539D4();
LABEL_13:
    sub_10074D744();
    return result;
  }

  v34 = a3;
  v14 = sub_100754754();

  if (v14)
  {
    goto LABEL_5;
  }

  if (a1 == 0xD000000000000023 && 0x800000010077E1E0 == a2 || (sub_100754754() & 1) != 0 || a1 == 0xD000000000000026 && 0x800000010077E210 == a2 || (sub_100754754() & 1) != 0)
  {
    a5[3] = sub_10000C518(&qword_1009392F8);
    a5[4] = sub_10002DDC8(&qword_100939300, &qword_1009392F8);
    v36 = sub_10000D134(a5);
    type metadata accessor for PlatformSelectorView();

    sub_1007539D4();
    (*(v10 + 16))(&v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v34, v9);
    v15 = v9;
    v16 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v17 = swift_allocObject();
    (*(v10 + 32))(v17 + v16, v12, v15);
    goto LABEL_13;
  }

  type metadata accessor for InteractiveProductReviewsShelfHeaderView();
  if (sub_1007539C4() == a1 && v19 == a2)
  {

LABEL_18:
    a5[3] = sub_10000C518(&qword_1009392E8);
    a5[4] = sub_10002DDC8(&qword_1009392F0, &qword_1009392E8);
    v36 = sub_10000D134(a5);

    sub_1007539D4();
    (*(v10 + 16))(&v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v34, v9);
    v21 = v9;
    v22 = v10;
    v23 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v24 = swift_allocObject();
    (*(v22 + 32))(v24 + v23, v12, v21);
    goto LABEL_13;
  }

  v20 = sub_100754754();

  if (v20)
  {
    goto LABEL_18;
  }

  type metadata accessor for ProductReviewsShelfHeaderView();
  if (sub_1007539C4() == a1 && v25 == a2)
  {

LABEL_23:
    a5[3] = sub_10000C518(&qword_1009392E0);
    a5[4] = sub_10002DDC8(&unk_10093D6C0, &qword_1009392E0);
    v36 = sub_10000D134(a5);

    sub_1007539D4();
    (*(v10 + 16))(&v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v34, v9);
    v27 = v9;
    v28 = v10;
    v29 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v30 = swift_allocObject();
    (*(v28 + 32))(v30 + v29, v12, v27);
    goto LABEL_13;
  }

  v26 = sub_100754754();

  if (v26)
  {
    goto LABEL_23;
  }

  v31 = v34;
  v32 = v35;

  return sub_1004989E4(a1, a2, v31, v32, a5);
}

void *sub_10047BF54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a3;
  v5 = sub_100747C14();
  v32 = *(v5 - 8);
  v33 = v5;
  __chkstk_darwin(v5);
  v31 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10074EA34();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000C518(&unk_10092E450);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v30 - v13;
  v15 = sub_100749FC4();
  v35 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a2;
  v36 = sub_10049DE10(a1, a2, v37);
  v30 = a1;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  (*(v12 + 8))(v14, v11);
  if ((*(v8 + 88))(v10, v7) != enum case for Shelf.ContentsMetadata.productReviews(_:))
  {
    (*(v8 + 8))(v10, v7);
    return v36;
  }

  (*(v8 + 96))(v10, v7);
  v18 = v35;
  (*(v35 + 32))(v17, v10, v15);
  if ((sub_100749FA4() & 1) == 0)
  {
    (*(v18 + 8))(v17, v15);
    return v36;
  }

  v20 = v31;
  v19 = v32;
  v21 = v33;
  (*(v32 + 16))(v31, v30, v33);
  type metadata accessor for InteractiveProductReviewsShelfScrollObserver();
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = v22 + OBJC_IVAR____TtC22SubscribePageExtension44InteractiveProductReviewsShelfScrollObserver_currentState;
  *v23 = 0u;
  *(v23 + 16) = 0u;
  *(v23 + 32) = 0;
  *(v23 + 40) = 1;
  (*(v19 + 32))(v22 + OBJC_IVAR____TtC22SubscribePageExtension44InteractiveProductReviewsShelfScrollObserver_shelfLayoutContext, v20, v21);
  swift_unknownObjectWeakAssign();
  *(v22 + OBJC_IVAR____TtC22SubscribePageExtension44InteractiveProductReviewsShelfScrollObserver_objectGraph) = v37;

  v24 = v36;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v24 = sub_1002564B0(0, v24[2] + 1, 1, v24);
  }

  v26 = v24[2];
  v25 = v24[3];
  if (v26 >= v25 >> 1)
  {
    v24 = sub_1002564B0((v25 > 1), v26 + 1, 1, v24);
  }

  (*(v18 + 8))(v17, v15);
  v27 = sub_100481DE0(&qword_1009392D8, type metadata accessor for InteractiveProductReviewsShelfScrollObserver);
  v24[2] = v26 + 1;
  v28 = &v24[2 * v26];
  v28[4] = v22;
  v28[5] = v27;
  return v24;
}

uint64_t sub_10047C420(uint64_t a1)
{
  v2 = sub_100747524();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100747564();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = &v17 - v12;
  (*(v3 + 104))(v5, enum case for ComponentSeparator.Position.top(_:), v2, v11);
  sub_100747534();
  (*(v7 + 16))(v9, v13, v6);
  v14 = OBJC_IVAR____TtC22SubscribePageExtension26SeparatorSupplementaryView_separator;
  swift_beginAccess();
  (*(v7 + 24))(a1 + v14, v9, v6);
  swift_endAccess();
  sub_10050F87C();
  v15 = *(v7 + 8);
  v15(v9, v6);
  return (v15)(v13, v6);
}

uint64_t sub_10047C640(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v160 = a1;
  v144 = sub_100752AC4();
  v143 = *(v144 - 8);
  __chkstk_darwin(v144);
  v140 = &v126 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v141 = &v126 - v8;
  __chkstk_darwin(v9);
  v142 = &v126 - v10;
  v147 = sub_10074F704();
  v146 = *(v147 - 8);
  __chkstk_darwin(v147);
  v145 = &v126 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_10074E984();
  v159 = *(v152 - 8);
  __chkstk_darwin(v152);
  v136 = &v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_10000C518(&qword_10092C380);
  __chkstk_darwin(v151);
  v155 = &v126 - v13;
  v14 = sub_10000C518(&unk_10093D6E0);
  __chkstk_darwin(v14 - 8);
  v150 = &v126 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v148 = &v126 - v17;
  __chkstk_darwin(v18);
  v157 = &v126 - v19;
  v20 = sub_10000C518(&unk_100933370);
  __chkstk_darwin(v20 - 8);
  v138 = &v126 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v153 = &v126 - v23;
  __chkstk_darwin(v24);
  v154 = &v126 - v25;
  v26 = sub_10074EA34();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v126 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10000C518(&unk_10092E450);
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v149 = &v126 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = &v126 - v34;
  v36 = sub_100748D64();
  v156 = *(v36 - 8);
  __chkstk_darwin(v36);
  v38 = &v126 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = a5;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v39 = *(v31 + 8);
  v39(v35, v30);
  if ((*(v27 + 88))(v29, v26) != enum case for Shelf.ContentsMetadata.productMedia(_:))
  {
    return (*(v27 + 8))(v29, v26);
  }

  v137 = v39;
  (*(v27 + 96))(v29, v26);
  (*(v156 + 32))(v38, v29, v36);
  v40 = sub_100748D54();
  v41 = sub_100748D14();
  v42 = sub_100748D24();
  v44 = v43;
  v132 = sub_100748D44();
  v131 = v45;
  v127 = sub_10000C518(&unk_1009231A0);
  v46 = swift_allocObject();
  v126 = xmmword_1007A5CF0;
  *(v46 + 16) = xmmword_1007A5CF0;
  *(v46 + 32) = v40;
  v139 = v40;

  v135 = v41;
  v128 = sub_10011D2E4(v41, v46);

  v47 = v148;
  v48 = v150;
  sub_100747BB4();
  sub_10000C8CC(v47, &unk_10093D6E0);
  v49 = v48;
  v50 = v157;
  sub_100028CD0(v49, v157);
  v51 = (*(v31 + 48))(v50, 1, v30);
  v130 = v36;
  v129 = v38;
  v134 = v42;
  v133 = v44;
  if (v51 == 1)
  {
    sub_10000C8CC(v157, &unk_10093D6E0);
    v52 = 1;
    v53 = v154;
  }

  else
  {
    swift_getKeyPath();
    v53 = v154;
    v55 = v157;
    sub_1007525B4();

    v137(v55, v30);
    v52 = 0;
  }

  v56 = *(v159 + 7);
  v57 = v152;
  v56(v53, v52, 1, v152);
  v58 = v149;
  sub_100747C04();
  swift_getKeyPath();
  v59 = v153;
  sub_1007525B4();
  v60 = v59;

  v61 = v30;
  v62 = v57;
  v137(v58, v61);
  v56(v59, 0, 1, v57);
  v63 = *(v151 + 48);
  v64 = v155;
  sub_100028D40(v53, v155);
  sub_100028D40(v59, v64 + v63);
  v65 = *(v159 + 6);
  v66 = v65(v64, 1, v62);
  v67 = v135;
  v68 = v135 >> 62;
  if (v66 == 1)
  {
    sub_10000C8CC(v60, &unk_100933370);
    v69 = v155;
    sub_10000C8CC(v53, &unk_100933370);
    v70 = v65(v69 + v63, 1, v62);
    v71 = v139;
    if (v70 == 1)
    {
      sub_10000C8CC(v69, &unk_100933370);
LABEL_22:
      LODWORD(v77) = 0;
      v76 = v147;
      goto LABEL_27;
    }

    goto LABEL_11;
  }

  v72 = v138;
  sub_100028D40(v64, v138);
  if (v65(v64 + v63, 1, v62) == 1)
  {
    sub_10000C8CC(v153, &unk_100933370);
    v69 = v155;
    sub_10000C8CC(v154, &unk_100933370);
    (*(v159 + 1))(v72, v62);
    v71 = v139;
LABEL_11:
    sub_10000C8CC(v69, &qword_10092C380);
    goto LABEL_12;
  }

  v78 = v159;
  v79 = v64 + v63;
  v80 = v136;
  (*(v159 + 4))(v136, v79, v62);
  sub_100481DE0(&qword_1009350D0, &type metadata accessor for Shelf.ContentType);
  v81 = v64;
  v82 = sub_100753014();
  v83 = *(v78 + 1);
  v83(v80, v62);
  sub_10000C8CC(v153, &unk_100933370);
  sub_10000C8CC(v154, &unk_100933370);
  v83(v72, v62);
  sub_10000C8CC(v81, &unk_100933370);
  v71 = v139;
  if (v82)
  {
    goto LABEL_22;
  }

LABEL_12:
  if (!v68)
  {
    result = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_14;
    }

LABEL_24:

    goto LABEL_25;
  }

  result = sub_100754664();
  if (!result)
  {
    goto LABEL_24;
  }

LABEL_14:
  v73 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else if ((v67 & 0xC000000000000001) == 0)
  {
    if ((v73 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v73 < *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v74 = *(v67 + 8 * v73 + 32);

      *&v162 = v71;
      if (v74)
      {
        goto LABEL_19;
      }

LABEL_25:

      v76 = v147;
      goto LABEL_26;
    }

    __break(1u);
    return result;
  }

  v74 = sub_100754574();
  *&v162 = v71;
  if (!v74)
  {
    goto LABEL_25;
  }

LABEL_19:
  *&v161[0] = v74;
  sub_100744514();
  sub_100481DE0(&qword_100929290, &type metadata accessor for MediaPlatform);
  v75 = sub_100753014();

  v76 = v147;
  if ((v75 & 1) == 0)
  {
LABEL_26:
    LODWORD(v77) = v128 ^ 1;
    goto LABEL_27;
  }

  LODWORD(v77) = 0;
LABEL_27:
  v84 = v145;
  sub_100747B84();
  sub_10074F5C4();
  v86 = v85;
  (*(v146 + 8))(v84, v76);
  v87 = sub_100747B94();
  v88 = type metadata accessor for SnapshotPageTraitEnvironment();
  v89 = objc_allocWithZone(v88);
  v90 = &v89[OBJC_IVAR____TtC22SubscribePageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
  *v90 = v86;
  *(v90 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v89[OBJC_IVAR____TtC22SubscribePageExtension28SnapshotPageTraitEnvironment_traitCollection] = v87;
  v164.receiver = v89;
  v164.super_class = v88;
  v91 = objc_msgSendSuper2(&v164, "init");
  if (v77)
  {
    v92 = 0;
    v93 = v134;
    v94 = v133;
  }

  else
  {
    v94 = v133;
    if (v68)
    {
      v95 = sub_100754664();
    }

    else
    {
      v95 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v93 = v134;
    if (v95 <= 1)
    {
      v92 = 0;
    }

    else
    {

      v67 = swift_allocObject();
      *(v67 + 16) = v126;
      *(v67 + 32) = v71;

      v92 = 1;
    }
  }

  v96 = sub_1003FD52C(v67);

  v97 = v92 == 0;
  if (v92)
  {
    v98 = v93;
  }

  else
  {
    v98 = v132;
  }

  if (v97)
  {
    v99 = v131;
  }

  else
  {
    v99 = v94;
  }

  v100 = &v160[OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_text];
  *v100 = v98;
  v100[1] = v99;

  *&v162 = _swiftEmptyArrayStorage;
  v101 = *(v96 + 2);
  if (v101)
  {
    v102 = 0;
    v103 = (v96 + 56);
    v154 = v101 - 1;
    v158 = v91;
    v159 = _swiftEmptyArrayStorage;
    LODWORD(v157) = v77;
    v155 = v96 + 56;
    while (1)
    {
      v91 = (v103 + 32 * v102);
      v77 = v102;
      while (1)
      {
        if (v77 >= *(v96 + 2))
        {
          __break(1u);
          goto LABEL_68;
        }

        v104 = sub_100753064();
        v105 = [objc_opt_self() _systemImageNamed:v104];

        if (v105)
        {
          break;
        }

LABEL_44:
        ++v77;
        v91 += 32;
        if (v101 == v77)
        {
          v91 = v158;
          LOBYTE(v77) = v157;
          goto LABEL_57;
        }
      }

      if (qword_100920BA0 != -1)
      {
        swift_once();
      }

      v106 = [v105 imageWithTintColor:qword_100980200];

      if (!v106)
      {
        goto LABEL_44;
      }

      sub_100753284();
      if (*((v162 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v162 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100753304();
      }

      v102 = v77 + 1;
      sub_100753344();
      v159 = v162;
      v103 = v155;
      v97 = v154 == v77;
      v91 = v158;
      LOBYTE(v77) = v157;
      if (v97)
      {
        goto LABEL_57;
      }
    }
  }

  v159 = _swiftEmptyArrayStorage;
LABEL_57:
  v107 = OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_images;
  v108 = v160;
  *&v160[OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_images] = v159;

  v109 = *&v108[OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_accessoryImageView];
  if (v77)
  {
    if (qword_100920BA8 != -1)
    {
      swift_once();
    }

    v110 = qword_100936900;
  }

  else
  {
    v110 = 0;
  }

  [v109 setImage:v110];

  v111 = *&v160[v107];
  if (v111)
  {
    if (v111 >> 62)
    {
LABEL_68:
      v112 = sub_100754664();
    }

    else
    {
      v112 = *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v112 = 0;
  }

  v113 = v160;
  *&v160[OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_numberOfBadges] = v112;
  *&v113[OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_pageTraits] = v91;
  swift_unknownObjectRelease();
  v159 = v91;
  sub_1003FC0B4();
  [v113 setNeedsLayout];
  v162 = 0u;
  v163 = 0u;
  memset(v161, 0, sizeof(v161));
  v114 = v140;
  sub_100752A34();
  sub_10000C8CC(v161, &unk_100923520);
  sub_10000C8CC(&v162, &unk_100923520);
  *&v162 = v96;
  *(&v162 + 1) = sub_1003FCE0C;
  *&v163 = 0;

  sub_10000C518(&qword_100939308);
  sub_10048176C();
  v115 = sub_100752FF4();
  v117 = v116;

  *(&v163 + 1) = &type metadata for String;
  *&v162 = v115;
  *(&v162 + 1) = v117;
  v118 = v141;
  sub_100752AA4();
  v119 = *(v143 + 8);
  v120 = v114;
  v121 = v144;
  v119(v120, v144);
  sub_10000C8CC(&v162, &unk_100923520);
  *&v162 = v96;
  *(&v162 + 1) = sub_1003FCE18;
  *&v163 = 0;
  v122 = sub_100752FF4();
  v124 = v123;

  *(&v163 + 1) = &type metadata for String;
  *&v162 = v122;
  *(&v162 + 1) = v124;
  v125 = v142;
  sub_100752AA4();
  v119(v118, v121);
  sub_10000C8CC(&v162, &unk_100923520);
  sub_100753C74();

  v119(v125, v121);
  return (*(v156 + 8))(v129, v130);
}

uint64_t sub_10047D950(uint64_t a1, void *a2)
{
  v3 = sub_100754724();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100016C60(0, &qword_100923AB0);
  if (qword_100921018 != -1)
  {
    swift_once();
  }

  v8 = sub_100750534();
  sub_10000D0FC(v8, qword_100980D80);
  v9 = [a2 traitCollection];
  v10 = sub_100753C14();

  v17[1] = sub_100016C60(0, &qword_10092E500);

  v17[0] = [a2 traitCollection];
  if (qword_100920BB0 != -1)
  {
    swift_once();
  }

  v11 = sub_10074BD24();
  sub_10000D0FC(v11, qword_100936908);
  sub_10074BD14();
  sub_10000C888(v18, v18[3]);
  sub_100536120();
  sub_100750564();
  (*(v4 + 8))(v6, v3);
  sub_10000C518(&unk_100929CA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007A5A00;
  *(inited + 32) = NSFontAttributeName;
  *(inited + 64) = v7;
  *(inited + 40) = v10;
  v13 = NSFontAttributeName;
  v14 = v10;
  sub_100413A18(inited);
  swift_setDeallocating();
  sub_10000C8CC(inited + 32, &unk_100923510);
  v15 = sub_100753874();

  sub_10000C620(v18);
  return v15;
}

uint64_t sub_10047DC4C(void *a1)
{
  v214 = sub_10074BD24();
  v186 = *(v214 - 8);
  __chkstk_darwin(v214);
  v199 = v171 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = sub_10074BD44();
  v203 = *(v204 - 8);
  __chkstk_darwin(v204);
  v202 = v171 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = sub_10074AB44();
  v197 = *(v184 - 8);
  __chkstk_darwin(v184);
  v185 = v171 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v5 - 8);
  v196 = v171 - v6;
  v201 = sub_100746584();
  v200 = *(v201 - 8);
  __chkstk_darwin(v201);
  v195 = v171 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v198 = v171 - v9;
  __chkstk_darwin(v10);
  v194 = v171 - v11;
  v193 = sub_100754724();
  v192 = *(v193 - 8);
  __chkstk_darwin(v193);
  v191 = v171 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = sub_10074F704();
  v189 = *(v190 - 8);
  __chkstk_darwin(v190);
  v188 = v171 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = sub_100743F54();
  v215 = *(v217 - 8);
  __chkstk_darwin(v217);
  v187 = v171 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v216 = v171 - v16;
  v213 = sub_10074E984();
  v221 = *(v213 - 1);
  __chkstk_darwin(v213);
  v177 = v171 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = sub_10000C518(&qword_10092C380);
  __chkstk_darwin(v209);
  v212 = v171 - v18;
  v19 = sub_10000C518(&unk_10093D6E0);
  __chkstk_darwin(v19 - 8);
  v207 = v171 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v205 = v171 - v22;
  __chkstk_darwin(v23);
  v208 = v171 - v24;
  v25 = sub_10000C518(&unk_100933370);
  __chkstk_darwin(v25 - 8);
  v179 = v171 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v210 = v171 - v28;
  __chkstk_darwin(v29);
  v211 = v171 - v30;
  v31 = sub_10074EA34();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = v171 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10000C518(&unk_10092E450);
  v36 = *(v35 - 8);
  __chkstk_darwin(v35);
  v206 = v171 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v40 = v171 - v39;
  v219 = sub_100748D64();
  v218 = *(v219 - 8);
  __chkstk_darwin(v219);
  v42 = v171 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = a1;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v43 = *(v36 + 8);
  v43(v40, v35);
  if ((*(v32 + 88))(v34, v31) != enum case for Shelf.ContentsMetadata.productMedia(_:))
  {
    (*(v32 + 8))(v34, v31);
    return 0;
  }

  v178 = v43;
  (*(v32 + 96))(v34, v31);
  (*(v218 + 32))(v42, v34, v219);
  v44 = sub_100748D54();
  v45 = sub_100748D14();
  v181 = v45;
  v173 = sub_100748D24();
  v176 = v46;
  v183 = v42;
  v175 = sub_100748D44();
  v180 = v47;
  v171[1] = sub_10000C518(&unk_1009231A0);
  v48 = swift_allocObject();
  v172 = xmmword_1007A5CF0;
  *(v48 + 16) = xmmword_1007A5CF0;
  *(v48 + 32) = v44;
  v182 = v44;

  v174 = sub_10011D2E4(v45, v48);

  v49 = v205;
  v50 = v207;
  sub_100747BB4();
  sub_10000C8CC(v49, &unk_10093D6E0);
  v51 = v208;
  sub_100028CD0(v50, v208);
  if ((*(v36 + 48))(v51, 1, v35) == 1)
  {
    sub_10000C8CC(v51, &unk_10093D6E0);
    v52 = 1;
    v53 = v211;
  }

  else
  {
    swift_getKeyPath();
    v53 = v211;
    sub_1007525B4();

    v178(v51, v35);
    v52 = 0;
  }

  v55 = v221[7];
  v56 = v213;
  v55(v53, v52, 1, v213);
  v57 = v206;
  sub_100747C04();
  swift_getKeyPath();
  v58 = v210;
  sub_1007525B4();

  v59 = v35;
  v60 = v58;
  v178(v57, v59);
  v55(v58, 0, 1, v56);
  v61 = *(v209 + 48);
  v62 = v212;
  sub_100028D40(v53, v212);
  sub_100028D40(v58, v62 + v61);
  v63 = v221[6];
  if (v63(v62, 1, v56) == 1)
  {
    sub_10000C8CC(v60, &unk_100933370);
    sub_10000C8CC(v53, &unk_100933370);
    if (v63(v62 + v61, 1, v56) == 1)
    {
      sub_10000C8CC(v62, &unk_100933370);
LABEL_23:
      v76 = 0;
      goto LABEL_27;
    }

    goto LABEL_11;
  }

  v64 = v179;
  sub_100028D40(v62, v179);
  if (v63(v62 + v61, 1, v56) == 1)
  {
    sub_10000C8CC(v60, &unk_100933370);
    sub_10000C8CC(v53, &unk_100933370);
    (v221[1])(v64, v56);
LABEL_11:
    sub_10000C8CC(v62, &qword_10092C380);
    v65 = v181;
    goto LABEL_12;
  }

  v71 = v221;
  v72 = v62 + v61;
  v73 = v177;
  (v221[4])(v177, v72, v56);
  sub_100481DE0(&qword_1009350D0, &type metadata accessor for Shelf.ContentType);
  v74 = sub_100753014();
  v75 = v71[1];
  v75(v73, v56);
  sub_10000C8CC(v60, &unk_100933370);
  sub_10000C8CC(v53, &unk_100933370);
  v75(v64, v56);
  sub_10000C8CC(v62, &unk_100933370);
  v65 = v181;
  if (v74)
  {
    goto LABEL_23;
  }

LABEL_12:
  if (v65 >> 62)
  {
    v66 = sub_100754664();
  }

  else
  {
    v66 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v67 = v182;
  if (!v66)
  {

    v226[0] = v67;
    goto LABEL_25;
  }

  v68 = v66 - 1;
  if (__OFSUB__(v66, 1))
  {
    __break(1u);
  }

  else if ((v65 & 0xC000000000000001) == 0)
  {
    if ((v68 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v68 < *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v69 = *(v65 + 8 * v68 + 32);

      v226[0] = v67;
      if (v69)
      {
        goto LABEL_20;
      }

LABEL_25:

      goto LABEL_26;
    }

    __break(1u);
    goto LABEL_71;
  }

  v69 = sub_100754574();
  v226[0] = v67;
  if (!v69)
  {
    goto LABEL_25;
  }

LABEL_20:
  v223 = v69;
  sub_100744514();
  sub_100481DE0(&qword_100929290, &type metadata accessor for MediaPlatform);
  v70 = sub_100753014();

  if (v70)
  {
    goto LABEL_23;
  }

LABEL_26:
  v76 = v174 ^ 1;
LABEL_27:
  v77 = v216;
  sub_100748D34();
  v78 = v215;
  v79 = v187;
  v80 = v77;
  v81 = v217;
  (*(v215 + 16))(v187, v80, v217);
  v82 = (*(v78 + 88))(v79, v81);
  if (v82 == enum case for ProductMedia.DescriptionPlacement.top(_:))
  {
    v83 = v188;
    sub_100747B84();
    sub_10074F5C4();
    v85 = v84;
    v86 = *(v189 + 8);
    v87 = v190;
    v86(v83, v190);
    v88 = sub_100747B94();
    v89 = type metadata accessor for SnapshotPageTraitEnvironment();
    v90 = objc_allocWithZone(v89);
    v91 = &v90[OBJC_IVAR____TtC22SubscribePageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
    *v91 = v85;
    *(v91 + 1) = 0x7FEFFFFFFFFFFFFFLL;
    *&v90[OBJC_IVAR____TtC22SubscribePageExtension28SnapshotPageTraitEnvironment_traitCollection] = v88;
    v222.receiver = v90;
    v222.super_class = v89;
    v221 = objc_msgSendSuper2(&v222, "init");
    sub_100747BC4();
    sub_10074FC24();
    sub_10074F674();
    v86(v83, v87);
    if ((v76 & 1) == 0)
    {
      v68 = v185;
      if (v181 >> 62)
      {
        v103 = sub_100754664();
      }

      else
      {
        v103 = *((v181 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v103 > 1)
      {

        sub_100744514();
        v104 = swift_allocObject();
        *(v104 + 16) = v172;
        *(v104 + 32) = v182;

        v105 = sub_1007444D4();
        v175 = v173;
LABEL_41:

        if (qword_100920BB0 != -1)
        {
          swift_once();
        }

        v106 = sub_10000D0FC(v214, qword_100936908);
        sub_10074BD14();
        sub_10000C888(v226, v227);
        v107 = v191;
        sub_100536120();
        sub_100750564();
        v109 = v108;
        (*(v192 + 8))(v107, v193);
        sub_1003FD42C(v105, v109);
        sub_10000C620(v226);
        if (v105 >> 62)
        {
          sub_100754664();
        }

        v110 = v186;
        v111 = v184;

        v112 = v221;
        sub_100746574();
        v113 = sub_10047D950(v105, v112);

        v220 = v113;
        v114 = sub_10074BCD4();
        if (qword_100921018 != -1)
        {
          swift_once();
        }

        v115 = sub_100750534();
        v116 = sub_10000D0FC(v115, qword_100980D80);
        v117 = *(v115 - 8);
        v118 = v196;
        (*(v117 + 16))(v196, v116, v115);
        (*(v117 + 56))(v118, 0, 1, v115);
        (*(v197 + 104))(v68, enum case for DirectionalTextAlignment.none(_:), v111);
        v119 = sub_100745C84();
        v120 = objc_allocWithZone(v119);
        v121 = sub_100745C74();
        [v121 setAttributedText:v114];
        v213 = v114;
        if (qword_100920BA8 != -1)
        {
          swift_once();
        }

        [qword_100936900 size];
        v122 = sub_100750F34();
        swift_allocObject();
        v123 = sub_100750F14();
        (*(v110 + 16))(v199, v106, v214);
        v124 = v200;
        v125 = v194;
        v126 = v201;
        (*(v200 + 16))(v198, v194, v201);
        v227 = v119;
        v228 = &protocol witness table for UILabel;
        v226[0] = v121;
        v224 = v122;
        v225 = &protocol witness table for LayoutViewPlaceholder;
        v223 = v123;
        v127 = v121;

        v128 = v202;
        sub_10074BD34();
        v129 = v221;
        [v221 pageMarginInsets];
        sub_100753BA4();
        sub_100481DE0(&qword_10092E630, &type metadata accessor for PlatformSelectorViewLayout);
        v130 = v204;
        sub_100750404();
        sub_100753BC4();
        v132 = v131;

        (*(v203 + 8))(v128, v130);
        (*(v124 + 8))(v125, v126);

        v133 = objc_opt_self();
        v134 = [v133 fractionalWidthDimension:1.0];
        v135 = [v133 absoluteDimension:v132];
        v136 = [objc_opt_self() sizeWithWidthDimension:v134 heightDimension:v135];

        v137 = sub_100753064();
        v138 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v136 elementKind:v137 alignment:1];
LABEL_64:
        v170 = v138;

        (*(v215 + 8))(v216, v217);
        (*(v218 + 8))(v183, v219);
        return v170;
      }

LABEL_40:
      sub_100744514();
      v105 = sub_1007444D4();
      goto LABEL_41;
    }

    v68 = v185;
    if (qword_100920BA8 == -1)
    {
LABEL_30:
      [qword_100936900 size];
      goto LABEL_40;
    }

LABEL_71:
    swift_once();
    goto LABEL_30;
  }

  if (v82 == enum case for ProductMedia.DescriptionPlacement.bottom(_:))
  {
    v92 = v188;
    sub_100747B84();
    sub_10074F5C4();
    v94 = v93;
    v95 = *(v189 + 8);
    v96 = v190;
    v95(v92, v190);
    v97 = sub_100747B94();
    v98 = type metadata accessor for SnapshotPageTraitEnvironment();
    v99 = objc_allocWithZone(v98);
    v100 = &v99[OBJC_IVAR____TtC22SubscribePageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
    *v100 = v94;
    *(v100 + 1) = 0x7FEFFFFFFFFFFFFFLL;
    *&v99[OBJC_IVAR____TtC22SubscribePageExtension28SnapshotPageTraitEnvironment_traitCollection] = v97;
    v229.receiver = v99;
    v229.super_class = v98;
    v101 = objc_msgSendSuper2(&v229, "init");
    sub_100747BC4();
    sub_10074FC24();
    sub_10074F674();
    v95(v92, v96);
    if (v76)
    {
      v102 = v185;
      if (qword_100920BA8 != -1)
      {
        swift_once();
      }

      [qword_100936900 size];
    }

    else
    {
      v102 = v185;
      if (v181 >> 62)
      {
        v139 = sub_100754664();
      }

      else
      {
        v139 = *((v181 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v139 > 1)
      {

        sub_100744514();
        v140 = swift_allocObject();
        *(v140 + 16) = v172;
        *(v140 + 32) = v182;

        v141 = sub_1007444D4();
        v175 = v173;
LABEL_55:

        if (qword_100920BB0 != -1)
        {
          swift_once();
        }

        v142 = sub_10000D0FC(v214, qword_100936908);
        sub_10074BD14();
        sub_10000C888(v226, v227);
        v143 = v191;
        sub_100536120();
        sub_100750564();
        v145 = v144;
        (*(v192 + 8))(v143, v193);
        sub_1003FD42C(v141, v145);
        sub_10000C620(v226);
        if (v141 >> 62)
        {
          sub_100754664();
        }

        v146 = v186;
        v147 = v184;

        sub_100746574();
        v148 = sub_10047D950(v141, v101);

        v213 = v148;
        v221 = sub_10074BCD4();
        if (qword_100921018 != -1)
        {
          swift_once();
        }

        v220 = v101;
        v149 = sub_100750534();
        v150 = sub_10000D0FC(v149, qword_100980D80);
        v151 = *(v149 - 8);
        v152 = v196;
        (*(v151 + 16))(v196, v150, v149);
        (*(v151 + 56))(v152, 0, 1, v149);
        (*(v197 + 104))(v102, enum case for DirectionalTextAlignment.none(_:), v147);
        v153 = sub_100745C84();
        v154 = objc_allocWithZone(v153);
        v155 = sub_100745C74();
        [v155 setAttributedText:v221];
        if (qword_100920BA8 != -1)
        {
          swift_once();
        }

        [qword_100936900 size];
        v156 = sub_100750F34();
        swift_allocObject();
        v157 = sub_100750F14();
        (*(v146 + 16))(v199, v142, v214);
        v158 = v200;
        v159 = v195;
        v160 = v201;
        (*(v200 + 16))(v198, v195, v201);
        v227 = v153;
        v228 = &protocol witness table for UILabel;
        v226[0] = v155;
        v224 = v156;
        v225 = &protocol witness table for LayoutViewPlaceholder;
        v223 = v157;
        v161 = v155;

        v162 = v202;
        sub_10074BD34();
        v163 = v220;
        [v220 pageMarginInsets];
        sub_100753BA4();
        sub_100481DE0(&qword_10092E630, &type metadata accessor for PlatformSelectorViewLayout);
        v164 = v204;
        sub_100750404();
        sub_100753BC4();
        v166 = v165;

        (*(v203 + 8))(v162, v164);
        (*(v158 + 8))(v159, v160);

        v167 = objc_opt_self();
        v168 = [v167 fractionalWidthDimension:1.0];
        v169 = [v167 absoluteDimension:v166];
        v136 = [objc_opt_self() sizeWithWidthDimension:v168 heightDimension:v169];

        v137 = sub_100753064();
        v138 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v136 elementKind:v137 alignment:5];
        goto LABEL_64;
      }
    }

    sub_100744514();
    v141 = sub_1007444D4();
    goto LABEL_55;
  }

  v226[0] = 0;
  v226[1] = 0xE000000000000000;
  sub_100754534(25);
  v230._object = 0x800000010077E2B0;
  v230._countAndFlagsBits = 0xD000000000000016;
  sub_1007531B4(v230);
  sub_1007545F4();
  v231._countAndFlagsBits = 46;
  v231._object = 0xE100000000000000;
  sub_1007531B4(v231);
  result = sub_100754644();
  __break(1u);
  return result;
}

id sub_10047FDA0(void *a1, void *a2)
{
  v107 = a2;
  v3 = sub_1007457B4();
  v113 = *(v3 - 8);
  v114 = v3;
  __chkstk_darwin(v3);
  v112 = &v106 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v111 = &v106 - v6;
  v119 = sub_10000C518(&qword_100923580);
  __chkstk_darwin(v119);
  v122 = &v106 - v7;
  v8 = sub_10000C518(&unk_10093D6E0);
  __chkstk_darwin(v8 - 8);
  v116 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v115 = &v106 - v11;
  __chkstk_darwin(v12);
  v14 = &v106 - v13;
  v15 = sub_10000C518(&unk_100933370);
  __chkstk_darwin(v15 - 8);
  v110 = &v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v109 = &v106 - v18;
  __chkstk_darwin(v19);
  v126 = &v106 - v20;
  v21 = sub_10000C518(&unk_10092E450);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v117 = &v106 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v106 - v25;
  v27 = sub_10074E984();
  v124 = *(v27 - 8);
  v125 = v27;
  __chkstk_darwin(v27);
  v118 = &v106 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v108 = &v106 - v30;
  __chkstk_darwin(v31);
  v33 = &v106 - v32;
  v34 = objc_opt_self();
  v35 = [v34 fractionalWidthDimension:1.0];
  v36 = sub_100747B94();
  sub_100747554();
  v38 = v37;

  v39 = [v34 absoluteDimension:v38];
  v120 = [objc_opt_self() sizeWithWidthDimension:v35 heightDimension:v39];

  sub_100747C04();
  swift_getKeyPath();
  v123 = v33;
  sub_1007525B4();

  v40 = *(v22 + 8);
  v40(v26, v21);
  v42 = v115;
  v41 = v116;
  v121 = a1;
  sub_100747BB4();
  sub_10000C8CC(v41, &unk_10093D6E0);
  sub_100028CD0(v42, v14);
  if ((*(v22 + 48))(v14, 1, v21) == 1)
  {
    sub_10000C8CC(v14, &unk_10093D6E0);
    v43 = 1;
    v44 = v126;
  }

  else
  {
    swift_getKeyPath();
    v45 = v126;
    sub_1007525B4();

    v40(v14, v21);
    v43 = 0;
    v44 = v45;
  }

  v46 = v124;
  (*(v124 + 56))(v44, v43, 1, v125);
  v47 = v117;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v40(v47, v21);
  v48 = v128;
  v49 = v118;
  if (v128)
  {
    v50 = v127;

    v51 = HIBYTE(v48) & 0xF;
    if ((v48 & 0x2000000000000000) == 0)
    {
      v51 = v50 & 0xFFFFFFFFFFFFLL;
    }

    LODWORD(v117) = v51 != 0;
  }

  else
  {
    LODWORD(v117) = 0;
  }

  v52 = *(v119 + 48);
  v53 = v122;
  v54 = v125;
  (*(v46 + 16))(v122, v123, v125);
  sub_100028D40(v126, v53 + v52);
  v55 = *(v46 + 88);
  v56 = v55(v53, v54);
  if (v56 == enum case for Shelf.ContentType.editorsChoice(_:))
  {
    sub_100747C04();
    swift_getKeyPath();
    v57 = v52;
    v58 = v111;
    sub_1007525B4();
    v53 = v122;

    v40(v26, v21);
    v60 = v112;
    v59 = v113;
    v61 = v114;
    (*(v113 + 104))(v112, enum case for ShelfBackground.editorsChoice(_:), v114);
    v62 = sub_1007457A4();
    v63 = *(v59 + 8);
    v63(v60, v61);
    v64 = v58;
    v52 = v57;
    v63(v64, v61);
    if (v62)
    {

      sub_10000C8CC(v126, &unk_100933370);
      v65 = *(v124 + 8);
      v66 = v125;
      v65(v123, v125);
      sub_10000C8CC(v53 + v57, &unk_100933370);
      v65(v53, v66);
      return 0;
    }

LABEL_15:
    v73 = v124;
    v74 = v125;
    if ((*(v124 + 48))(v53 + v52, 1, v125) == 1)
    {

      sub_10000C8CC(v126, &unk_100933370);
      (*(v73 + 8))(v123, v74);
    }

    else
    {
      v75 = v110;
      sub_100028D40(v53 + v52, v110);
      if (v55(v75, v74) == enum case for Shelf.ContentType.productMediaItem(_:))
      {
        v76 = v124;
        if ((v117 & 1) == 0)
        {
          type metadata accessor for SeparatorSupplementaryView();
          sub_1007539C4();
          sub_10000C888(v107, v107[3]);
          sub_10074BE34();
          v82 = v81 * 0.5;
          v83 = sub_100753064();

          v84 = objc_opt_self();
          v85 = v120;
          v86 = [v84 boundarySupplementaryItemWithLayoutSize:v120 elementKind:v83 alignment:1 absoluteOffset:{0.0, v82}];

          sub_10000C8CC(v126, &unk_100933370);
          v87 = *(v76 + 8);
          v87(v123, v74);
          sub_10000C8CC(v53 + v52, &unk_100933370);
          v87(v53, v74);
          return v86;
        }

        sub_10000C8CC(v126, &unk_100933370);
        (*(v76 + 8))(v123, v74);
      }

      else
      {

        sub_10000C8CC(v126, &unk_100933370);
        v80 = *(v124 + 8);
        v80(v123, v74);
        v80(v75, v74);
      }
    }

    sub_10000C8CC(v53, &qword_100923580);
    return 0;
  }

  if (v56 != enum case for Shelf.ContentType.productMediaItem(_:))
  {
    goto LABEL_15;
  }

  v67 = v56;
  v68 = v126;
  v69 = v109;
  sub_100028D40(v126, v109);
  v71 = v124;
  v70 = v125;
  if ((*(v124 + 48))(v69, 1, v125) == 1)
  {

    sub_10000C8CC(v68, &unk_100933370);
    v72 = *(v71 + 8);
    v72(v123, v70);
    sub_10000C8CC(v69, &unk_100933370);
LABEL_27:
    sub_10000C8CC(v53 + v52, &unk_100933370);
    v72(v53, v70);
    return 0;
  }

  v77 = v70;
  v78 = v108;
  (*(v71 + 32))(v108, v69, v77);
  v119 = *(v71 + 104);
  (v119)(v49, v67, v77);
  sub_100481DE0(&qword_1009350D0, &type metadata accessor for Shelf.ContentType);
  v79 = sub_100753014();
  v72 = *(v71 + 8);
  v72(v49, v77);
  if (v79 & 1) != 0 || ((v119)(v49, enum case for Shelf.ContentType.productBadge(_:), v77), v89 = sub_100753014(), v72(v49, v77), v90 = v78, (v89))
  {

    v72(v78, v77);
    sub_10000C8CC(v126, &unk_100933370);
    v72(v123, v77);
    v53 = v122;
    v70 = v77;
    goto LABEL_27;
  }

  v53 = v122;
  if (qword_100920CD0 != -1)
  {
    swift_once();
  }

  v91 = sub_1002A5418(v78, qword_1009804B0);
  v70 = v77;
  if ((v91 & 1) == 0)
  {

    v72(v90, v77);
    sub_10000C8CC(v126, &unk_100933370);
    v72(v123, v77);
    goto LABEL_27;
  }

  v92 = v107;
  v93 = sub_10047DC4C(v121);
  if (v93)
  {
    v94 = v93;
    v95 = 0.0;
    if ([v93 alignment] == 1)
    {
      v96 = [v94 layoutSize];
      v97 = [v96 heightDimension];

      [v97 dimension];
      v95 = v98;
    }
  }

  else
  {
    v95 = 0.0;
  }

  type metadata accessor for SeparatorSupplementaryView();
  sub_1007539C4();
  sub_10000C888(v92, v92[3]);
  sub_10074BE34();
  v100 = -(v95 + v99);
  v101 = sub_100753064();

  v102 = objc_opt_self();
  v103 = v120;
  v104 = [v102 boundarySupplementaryItemWithLayoutSize:v120 elementKind:v101 alignment:1 absoluteOffset:{0.0, v100}];

  v72(v90, v70);
  sub_10000C8CC(v126, &unk_100933370);
  v72(v123, v70);
  v105 = v122;
  sub_10000C8CC(&v122[v52], &unk_100933370);
  v72(v105, v70);
  return v104;
}

uint64_t sub_100480C7C(uint64_t a1)
{
  v30 = sub_100744604();
  v32 = *(v30 - 8);
  __chkstk_darwin(v30);
  v31 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10074E984();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v29 - v8;
  v10 = sub_10000C518(&unk_10092E450);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v33 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v29 - v14;
  __chkstk_darwin(v16);
  v18 = &v29 - v17;
  v36 = a1;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v34 = *(v11 + 8);
  v35 = v11 + 8;
  v34(v18, v10);
  (*(v4 + 104))(v6, enum case for Shelf.ContentType.productReview(_:), v3);
  sub_100481DE0(&qword_100926DD0, &type metadata accessor for Shelf.ContentType);
  sub_100753274();
  sub_100753274();
  if (v37 == v39 && v38 == v40)
  {
    v19 = *(v4 + 8);
    v19(v6, v3);
    v19(v9, v3);
  }

  else
  {
    v20 = sub_100754754();
    v21 = *(v4 + 8);
    v21(v6, v3);
    v21(v9, v3);

    result = 0;
    if ((v20 & 1) == 0)
    {
      return result;
    }
  }

  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v23 = v34;
  v34(v15, v10);
  result = v38;
  if (v38)
  {

    v24 = v33;
    sub_100747C04();
    swift_getKeyPath();
    sub_1007525B4();

    v23(v24, v10);
    if (*(v39 + 16))
    {
      sub_10000C824(v39 + 32, &v37);

      sub_10000C518(&qword_1009242A0);
      sub_100744624();
      if (swift_dynamicCast())
      {
        v25 = v31;
        sub_100744614();

        v26 = v32;
        v27 = v30;
        v28 = (*(v32 + 88))(v25, v30) != enum case for ProductReview.ReviewSource.editorsChoice(_:);
        (*(v26 + 8))(v25, v27);
        return v28;
      }
    }

    else
    {
    }

    return 1;
  }

  return result;
}

id sub_1004811A8(uint64_t a1)
{
  v2 = sub_10074EA34();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&unk_10092E450);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - v8;
  v10 = sub_100749FC4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_100480C7C(a1);
  result = 0;
  if (v14)
  {
    v23 = v11;
    v24 = v10;
    sub_100747C04();
    swift_getKeyPath();
    sub_1007525B4();

    (*(v7 + 8))(v9, v6);
    if ((*(v3 + 88))(v5, v2) == enum case for Shelf.ContentsMetadata.productReviews(_:))
    {
      (*(v3 + 96))(v5, v2);
      v17 = v23;
      v16 = v24;
      (*(v23 + 32))(v13, v5, v24);
      if (sub_100749FA4())
      {
        type metadata accessor for InteractiveProductReviewsShelfHeaderView();
        v18 = sub_10022B754(v13);
        sub_1007539C4();
        v19 = sub_100753064();

        v20 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v18 elementKind:v19 alignment:1];

        (*(v17 + 8))(v13, v16);
        return v20;
      }

      (*(v17 + 8))(v13, v16);
    }

    else
    {
      (*(v3 + 8))(v5, v2);
    }

    type metadata accessor for ProductReviewsShelfHeaderView();
    v21 = sub_1001D68B4(a1, 0, 0);
    sub_1007539C4();
    v22 = sub_100753064();

    v20 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v21 elementKind:v22 alignment:1];

    return v20;
  }

  return result;
}

uint64_t sub_100481648()
{
  v1 = sub_100747C14();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1004816D0(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_100747C14() - 8);
  v10 = (v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80)));

  return sub_10047C640(a1, a2, a3, a4, v10);
}

unint64_t sub_10048176C()
{
  result = qword_100939310;
  if (!qword_100939310)
  {
    sub_10000C724(&qword_100939308);
    sub_10002DDC8(&qword_100939318, &unk_100939320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939310);
  }

  return result;
}

uint64_t sub_10048183C(void *a1, uint64_t a2)
{
  v55 = a1;
  v3 = sub_10000C518(&unk_10093D6E0);
  __chkstk_darwin(v3 - 8);
  v54 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v53 = &v45 - v6;
  __chkstk_darwin(v7);
  v9 = &v45 - v8;
  v10 = sub_10074E984();
  v56 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v45 - v14;
  __chkstk_darwin(v16);
  v18 = &v45 - v17;
  __chkstk_darwin(v19);
  v21 = &v45 - v20;
  v22 = sub_10000C518(&unk_10092E450);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v45 - v24;
  if (sub_100480C7C(a2))
  {
    v26 = 0;
    return v26 & 1;
  }

  v48 = v12;
  v49 = v15;
  v52 = v9;
  v50 = a2;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v27 = *(v23 + 8);
  v51 = v22;
  v47 = v27;
  v27(v25, v22);
  v28 = v56;
  (*(v56 + 104))(v18, enum case for Shelf.ContentType.productMediaItem(_:), v10);
  sub_100481DE0(&qword_100926DD0, &type metadata accessor for Shelf.ContentType);
  sub_100753274();
  sub_100753274();
  if (v59 == v57 && v60 == v58)
  {
    v29 = 1;
  }

  else
  {
    v29 = sub_100754754();
  }

  v30 = *(v28 + 8);
  v30(v18, v10);
  v46 = v30;
  v30(v21, v10);

  if ((v29 & 1) == 0)
  {
    goto LABEL_14;
  }

  v31 = [v55 elementKind];
  v32 = sub_100753094();
  v34 = v33;

  if (v32 == sub_100753094() && v34 == v35)
  {

    v37 = v51;
    v36 = v52;
    goto LABEL_12;
  }

  v38 = sub_100754754();

  v37 = v51;
  v36 = v52;
  if ((v38 & 1) == 0)
  {
LABEL_14:
    v26 = 1;
    return v26 & 1;
  }

LABEL_12:
  v40 = v53;
  v39 = v54;
  sub_100747BB4();
  sub_10000C8CC(v39, &unk_10093D6E0);
  sub_100028CD0(v40, v36);
  if ((*(v23 + 48))(v36, 1, v37) == 1)
  {
    sub_10000C8CC(v36, &unk_10093D6E0);
    goto LABEL_14;
  }

  swift_getKeyPath();
  v42 = v48;
  sub_1007525B4();

  v47(v36, v37);
  v43 = v49;
  (*(v56 + 32))(v49, v42, v10);
  if (qword_100920CD0 != -1)
  {
    swift_once();
  }

  v44 = sub_1002A5418(v43, qword_1009804B0);
  v46(v43, v10);
  v26 = v44 ^ 1;
  return v26 & 1;
}

uint64_t sub_100481DE0(unint64_t *a1, void (*a2)(uint64_t))
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

void (*sub_100481E34(uint64_t *a1))(id *a1, char a2)
{
  v2 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_videoView;
  a1[1] = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30AdvertsSearchResultContentView_lockupMediaView);
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_100481E98;
}

void sub_100481E98(id *a1, char a2)
{
  v4 = a1[1];
  v26 = *a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = Strong;
  if (a2)
  {
    if (Strong)
    {
      sub_10048BB14(&qword_1009230E0, 255, type metadata accessor for VideoView);
      v7 = v26;
      v8 = [v6 superview];
      if (v8)
      {
        v9 = v8;
        sub_100016C60(0, &qword_100922300);
        v10 = v4;
        v11 = sub_100753FC4();

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

    sub_10062FDFC();
    [v24 setNeedsLayout];

    v22 = *a1;
    goto LABEL_21;
  }

  if (Strong)
  {
    sub_10048BB14(&qword_1009230E0, 255, type metadata accessor for VideoView);
    v14 = [v6 superview];
    if (v14)
    {
      v15 = v14;
      sub_100016C60(0, &qword_100922300);
      v16 = v4;
      v17 = sub_100753FC4();

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

  sub_10062FDFC();
  [v20 setNeedsLayout];
  v22 = v26;
LABEL_21:
}

id (*sub_10048215C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1004821C0;
}

id sub_1004821C0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    v6 = *(v5 + OBJC_IVAR____TtC22SubscribePageExtension30AdvertsSearchResultContentView_lockupView);
    v7 = *(v6 + OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_searchAdTransparencyButton);
    if (v7)
    {
      [v7 addTarget:? action:? forControlEvents:?];
      v5 = *(a1 + 24);
    }

    v8 = *(v6 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerButton);

    return [v8 addTarget:v5 action:"disableAdvertRotationTap" forControlEvents:64];
  }

  return result;
}

char *sub_100482270(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC22SubscribePageExtension30AdvertsSearchResultContentView_lockupView;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC22SubscribePageExtension30AdvertsSearchResultContentView_lockupMediaView;
  *&v4[v10] = [objc_allocWithZone(type metadata accessor for LockupMediaView()) init];
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension30AdvertsSearchResultContentView_preferredImageSizes] = _swiftEmptyDictionarySingleton;
  v11 = &v4[OBJC_IVAR____TtC22SubscribePageExtension30AdvertsSearchResultContentView_disableAdvertRotation];
  *v11 = 0;
  *(v11 + 1) = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension30AdvertsSearchResultContentView_impressionsCalculator] = 0;
  v12 = &v4[OBJC_IVAR____TtC22SubscribePageExtension30AdvertsSearchResultContentView_impressionsUpdateBlock];
  v13 = type metadata accessor for AdvertsSearchResultContentView();
  *v12 = 0;
  *(v12 + 1) = 0;
  v20.receiver = v4;
  v20.super_class = v13;
  v14 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v18 = v14;
  [v18 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v18 addSubview:*&v18[OBJC_IVAR____TtC22SubscribePageExtension30AdvertsSearchResultContentView_lockupView]];
  [v18 addSubview:*&v18[OBJC_IVAR____TtC22SubscribePageExtension30AdvertsSearchResultContentView_lockupMediaView]];

  return v18;
}

id sub_1004824C4()
{
  v1 = v0;
  v2 = sub_10074A8C4();
  v142 = *(v2 - 8);
  v143 = v2;
  __chkstk_darwin(v2);
  v141 = &v110[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_10074AE04();
  v145 = *(v4 - 8);
  v146 = v4;
  __chkstk_darwin(v4);
  v113 = &v110[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_10074CD14();
  v130 = *(v6 - 8);
  v131 = v6;
  __chkstk_darwin(v6);
  v129 = &v110[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1007479B4();
  v153 = *(v8 - 8);
  v154 = v8;
  __chkstk_darwin(v8);
  v127 = &v110[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v152 = &v110[-v11];
  v157 = sub_10074A8A4();
  v151 = *(v157 - 8);
  __chkstk_darwin(v157);
  v137 = &v110[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v158 = &v110[-v14];
  v15 = sub_10000C518(&unk_1009393C0);
  __chkstk_darwin(v15 - 8);
  v112 = &v110[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v156 = &v110[-v18];
  v19 = sub_10000C518(&unk_100923180);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v110[-v21];
  v23 = type metadata accessor for AdvertsSearchResultContentView();
  v196.receiver = v0;
  v196.super_class = v23;
  objc_msgSendSuper2(&v196, "layoutSubviews");
  sub_1007477B4();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension30AdvertsSearchResultContentView_lockupView];
  sub_10017CB48();
  sub_100753B24();
  [v32 setFrame:?];
  sub_10074DF44();
  v33 = [v0 traitCollection];
  v34 = sub_100751034();
  v136 = sub_10000C518(&unk_1009231A0);
  v35 = swift_allocObject();
  v150 = xmmword_1007A5CF0;
  *(v35 + 16) = xmmword_1007A5CF0;
  *(v35 + 32) = v33;
  v36 = v33;
  v147 = v34;
  v37 = sub_100751044();
  v133 = sub_10001B5C0();
  sub_100750544();
  v132 = v38;

  v39 = *(v20 + 8);
  v138 = v22;
  v139 = v20 + 8;
  v140 = v19;
  v135 = v39;
  v39(v22, v19);
  v197.origin.x = v25;
  v197.origin.y = v27;
  v197.size.width = v29;
  v197.size.height = v31;
  MinX = CGRectGetMinX(v197);
  [v32 frame];
  MaxY = CGRectGetMaxY(v198);
  v40 = *&v32[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_title + 8];
  v119 = *&v32[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_title];
  v41 = *&v32[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel];
  v118 = v40;

  v42 = [v41 text];
  if (v42)
  {
    v43 = v42;
    v44 = sub_100753094();
    v121 = v45;
    v122 = v44;
  }

  else
  {
    v121 = 0;
    v122 = 0;
  }

  v46 = [*&v32[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_descriptionLabel] text];
  v47 = v145;
  if (v46)
  {
    v48 = v46;
    v49 = sub_100753094();
    v123 = v50;
    v124 = v49;
  }

  else
  {
    v123 = 0;
    v124 = 0;
  }

  v51 = *&v32[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_metadataRibbonView];
  v52 = OBJC_IVAR____TtC22SubscribePageExtension18MetadataRibbonView_metadataRibbonItemModels;
  swift_beginAccess();
  v53 = *(v51 + v52);
  v54 = *(*&v32[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_searchTagsRibbonView] + OBJC_IVAR____TtC22SubscribePageExtension20SearchTagsRibbonView_metadataRibbonItemModels);
  v111 = v32[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_shouldEvenlyDistribute];
  v149 = v54;

  v155 = v53;

  v55 = [v1 traitCollection];
  (*(v47 + 56))(v156, 1, 1, v146);
  if (qword_100920410 != -1)
  {
    swift_once();
  }

  v56 = v157;
  v57 = sub_10000D0FC(v157, qword_10097E010);
  v125 = *(v151 + 16);
  v126 = v151 + 16;
  v125(v158, v57, v56);
  v58 = sub_100753804();
  v144 = v1;
  if (v58)
  {
    if (qword_100921988 != -1)
    {
      swift_once();
    }

    v59 = qword_10093FF40;
  }

  else
  {
    if (qword_100921990 != -1)
    {
      swift_once();
    }

    v59 = qword_10093FF58;
  }

  v60 = v154;
  v61 = sub_10000D0FC(v154, v59);
  v62 = v153;
  v63 = v127;
  (*(v153 + 16))(v127, v61, v60);
  (*(v62 + 32))(v152, v63, v60);
  v64 = [v55 preferredContentSizeCategory];
  sub_100753924();

  sub_100747964();
  sub_100747994();
  sub_10074A894();
  sub_10074A884();
  v120 = sub_100750F34();
  swift_allocObject();
  v127 = sub_100750F14();
  v65 = objc_opt_self();
  v116 = v65;
  v66 = [v65 preferredFontForTextStyle:UIFontTextStyleBody];
  v148 = v55;
  v67 = sub_10074F3F4();
  v195[3] = v67;
  v68 = sub_10048BB14(&qword_10092AC70, 255, &type metadata accessor for Feature);
  v195[4] = v68;
  v115 = v68;
  v69 = sub_10000D134(v195);
  v70 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v71 = *(v67 - 8);
  v72 = *(v71 + 104);
  v117 = v71 + 104;
  v114 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v72(v69, enum case for Feature.measurement_with_labelplaceholder(_:), v67);
  sub_10074FC74();
  sub_10000C620(v195);
  v73 = v129;
  sub_10074CD04();
  sub_10074CCE4();
  v74 = v131;
  v130 = *(v130 + 8);
  (v130)(v73, v131);
  v75 = [v65 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v194[3] = v67;
  v194[4] = v68;
  v76 = sub_10000D134(v194);
  v72(v76, v70, v67);
  sub_10074FC74();
  sub_10000C620(v194);
  sub_10074CD04();
  sub_10074CCE4();
  v77 = v130;
  (v130)(v73, v74);
  v78 = [v116 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v193[3] = v67;
  v193[4] = v115;
  v79 = sub_10000D134(v193);
  v72(v79, v114, v67);
  sub_10074FC74();
  sub_10000C620(v193);
  sub_10074CD04();
  sub_10074CCE4();
  v77(v73, v74);
  v80 = v155;
  LODWORD(v131) = sub_10001BB7C(0, v155) & (v80 != 0);
  if (v131 == 1)
  {
    v81 = v120;
    v82 = objc_allocWithZone(v147);
    v83 = v148;
    v84 = sub_100751024();
    v85 = v112;
    sub_100016B4C(v156, v112, &unk_1009393C0);
    v87 = v145;
    v86 = v146;
    v88 = *(v145 + 48);
    if (v88(v85, 1, v146) == 1)
    {
      v89 = v113;
      _s22SubscribePageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
      if (v88(v85, 1, v86) != 1)
      {
        sub_10000C8CC(v85, &unk_1009393C0);
      }
    }

    else
    {
      v89 = v113;
      (*(v87 + 32))(v113, v85, v86);
    }

    v91 = v84;
    sub_100018CE4(v155, v89, v91);

    (*(v87 + 8))(v89, v86);
    swift_allocObject();
    v90 = sub_100750F04();
  }

  else
  {
    v81 = v120;
    swift_allocObject();
    v90 = sub_100750F14();
  }

  v92 = v90;

  v93 = v149;
  if ((sub_10001BB7C(v149, 0) & (v93 != 0)) == 1)
  {
    sub_100077794(v93, v111);
    swift_allocObject();
    v94 = sub_100750F04();
  }

  else
  {
    swift_allocObject();
    v94 = sub_100750F14();
  }

  v95 = v94;
  v125(v137, v158, v157);
  v192 = &protocol witness table for LayoutViewPlaceholder;
  v191 = v81;
  v190 = v127;
  v189 = 0;
  *&v187[40] = 0u;
  v188 = 0u;
  sub_10000C824(v195, v187);
  sub_10000C824(v194, &v186);
  v185 = 0;
  v183 = 0u;
  v184 = 0u;
  v182 = 0;
  v180 = 0u;
  v181 = 0u;

  v146 = v95;
  v96 = sub_100750F24();
  v179 = &protocol witness table for LayoutViewPlaceholder;
  v178 = v81;
  v177 = v96;
  v176 = 0;
  v174 = 0u;
  v175 = 0u;
  v173 = 0;
  v171 = 0u;
  v172 = 0u;
  v170 = 0;
  v168 = 0u;
  v169 = 0u;
  v167 = 0;
  v166 = 0u;
  *&v165[40] = 0u;
  sub_10000C824(v193, v165);
  v163 = v81;
  v164 = &protocol witness table for LayoutViewPlaceholder;
  v161 = &protocol witness table for LayoutViewPlaceholder;
  v162 = v92;
  v160 = v81;
  v159 = v95;
  v97 = v141;
  sub_10074A8B4();
  v98 = swift_allocObject();
  *(v98 + 16) = v150;
  v99 = v148;
  *(v98 + 32) = v148;
  v100 = v99;
  v101 = sub_100751044();
  sub_10048BB14(&unk_10092AC80, 255, &type metadata accessor for SmallSearchLockupLayout);
  v102 = v143;
  sub_100750404();

  (*(v142 + 8))(v97, v102);
  sub_10000C620(v193);
  sub_10000C620(v194);
  sub_10000C620(v195);
  (*(v153 + 8))(v152, v154);
  (*(v151 + 8))(v158, v157);
  sub_10000C8CC(v156, &unk_1009393C0);
  v103 = v138;
  sub_10074DF44();
  v104 = swift_allocObject();
  *(v104 + 16) = v150;
  *(v104 + 32) = v100;
  v105 = v100;
  v106 = sub_100751044();
  v107 = v140;
  sub_100750544();

  v135(v103, v107);
  v108 = *&v144[OBJC_IVAR____TtC22SubscribePageExtension30AdvertsSearchResultContentView_lockupMediaView];
  sub_100753B24();
  return [v108 setFrame:?];
}

uint64_t sub_100483644(uint64_t a1, char *a2)
{
  KeyPath = v2;
  ObjectType = swift_getObjectType();
  v6 = sub_10000C518(&unk_100934D80);
  __chkstk_darwin(v6 - 8);
  v105 = &v89 - v7;
  v8 = sub_10074A7F4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v108 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v111 = &v89 - v12;
  v13 = sub_100746A94();
  v112 = *(v13 - 8);
  __chkstk_darwin(v13);
  v110 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v106 = &v89 - v16;
  __chkstk_darwin(v17);
  v19 = &v89 - v18;
  v20 = sub_10000C518(&unk_1009281D0);
  __chkstk_darwin(v20 - 8);
  v113 = &v89 - v21;
  v22 = sub_10000C518(&unk_100923200);
  __chkstk_darwin(v22 - 8);
  v24 = &v89 - v23;
  v25 = sub_10074F704();
  v109 = *(v25 - 8);
  __chkstk_darwin(v25);
  v114 = &v89 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10074D4D4();
  result = sub_100752754();
  v28 = v116;
  if (!v116)
  {
    return result;
  }

  v107 = a1;
  v29 = sub_10074D4A4();
  if (!v29)
  {
  }

  v102 = v19;
  v104 = v28;
  v30 = v29;
  sub_10074AA64();
  sub_10000C518(&qword_100927780);
  sub_100745E64();
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

  v97 = v30;
  v103 = v9;
  v98 = v25;
  static SearchPageGridBreakpointOverridable.pageGridWithSearchOverrides(for:)();
  sub_10074F5A4();
  v31 = *&KeyPath[OBJC_IVAR____TtC22SubscribePageExtension30AdvertsSearchResultContentView_lockupView];
  *(v31 + OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_regularWidthColumnSpacing) = v32;
  [v31 setNeedsLayout];
  sub_10074F674();
  v34 = v33;
  v36 = v35;
  v37 = sub_1007469A4();
  (*(*(v37 - 8) + 56))(v24, 1, 1, v37);

  v101 = a2;
  sub_100028DB0(v38, v24, a2);
  sub_10000C8CC(v24, &unk_100923200);
  sub_100016C60(0, &qword_100923500);
  v39 = sub_100753E04();
  [KeyPath setBackgroundColor:v39];

  v40 = sub_100745DD4();
  if (v40 >> 62)
  {
    v59 = v40;
    v41 = sub_100754664();
    v40 = v59;
  }

  else
  {
    v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v42 = v111;
  v111 = v8;
  if (v41)
  {
    v43 = v110;
    if ((v40 & 0xC000000000000001) != 0)
    {
      v100 = sub_100754574();
    }

    else
    {
      if (!*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_53;
      }

      v100 = *(v40 + 32);
    }
  }

  else
  {

    v100 = 0;
    v43 = v110;
  }

  v94 = *&KeyPath[OBJC_IVAR____TtC22SubscribePageExtension30AdvertsSearchResultContentView_lockupMediaView];
  a1 = sub_100745E04();
  v93 = sub_100745DE4();
  v44 = sub_100745E54();
  if (v44 >> 62)
  {
    v60 = v44;
    v45 = sub_100754664();
    v44 = v60;
  }

  else
  {
    v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v96 = KeyPath;
  v95 = v31;
  v110 = a1;
  if (v45)
  {
    if ((v44 & 0xC000000000000001) != 0)
    {
      v92 = sub_100754574();
    }

    else
    {
      if (!*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_55;
      }

      v92 = *(v44 + 32);
    }
  }

  else
  {

    v92 = 0;
  }

  v46 = ASKDeviceTypeGetCurrent();
  KeyPath = swift_getKeyPath();
  sub_100746914();

  v47 = v116;
  sub_100553194(v113);

  v31 = sub_100745E04();
  a1 = sub_100745DE4();
  v48 = sub_100745DD4();
  if (v48 >> 62)
  {
    v61 = v48;
    v49 = sub_100754664();
    v48 = v61;
  }

  else
  {
    v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v24 = v103;
  if (v49)
  {
    if ((v48 & 0xC000000000000001) == 0)
    {
      if (!*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_57;
      }

      KeyPath = *(v48 + 32);

      goto LABEL_29;
    }

LABEL_53:
    KeyPath = sub_100754574();
LABEL_29:

    goto LABEL_31;
  }

  KeyPath = 0;
LABEL_31:
  v50 = sub_100745E54();
  if (v50 >> 62)
  {
    v62 = v50;
    v51 = sub_100754664();
    v50 = v62;
  }

  else
  {
    v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v99 = v13;
  if (v51)
  {
    if ((v50 & 0xC000000000000001) == 0)
    {
      if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v52 = *(v50 + 32);

LABEL_37:

        goto LABEL_39;
      }

LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

LABEL_55:
    v52 = sub_100754574();
    goto LABEL_37;
  }

  v52 = 0;
LABEL_39:
  sub_100745E24();
  if (sub_10074A7E4())
  {
    if (!(a1 | v31))
    {
      v53 = sub_100631A30(KeyPath, v52, 0, 1);
      v31 = v53;
      a1 = v53 >> 62;
      if (!(v53 >> 62))
      {
        ObjectType = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (KeyPath)
        {
LABEL_43:
          v54 = sub_100743844();
          goto LABEL_60;
        }

LABEL_59:
        v54 = 0;
LABEL_60:
        v90 = sub_100631D8C(v54);

        v107 = KeyPath;
        v63 = v43;
        if (KeyPath)
        {
          v64 = sub_100743844();
        }

        else
        {
          v64 = 0;
        }

        v65 = v105;
        v66 = v111;
        (*(v24 + 2))(v105, v42, v111);
        (*(v24 + 7))(v65, 0, 1, v66);
        v91 = sub_1006322B4(v64, v65);

        sub_10000C8CC(v65, &unk_100934D80);
        if (a1)
        {
          result = sub_100754664();
        }

        else
        {
          result = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v67 = v63;
        if (result)
        {
          if ((v31 & 0xC000000000000001) != 0)
          {
            sub_100754574();
          }

          else
          {
            if (!*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return result;
            }
          }

          v68 = sub_10074F194();

          if (v68)
          {

            v69 = *(v24 + 1);
            v69(v42, v111);
            v55 = v112;
            v70 = v106;
            v71 = v99;
            (*(v112 + 104))(v106, enum case for LockupMediaLayout.DisplayType.landscape(_:), v99);
LABEL_81:
            ObjectType = v69;
            v56 = v102;
            (*(v55 + 32))(v102, v70, v71);
            goto LABEL_82;
          }
        }

        else
        {
        }

        v72 = enum case for LockupMediaLayout.DisplayType.fourUp(_:);
        v73 = v112;
        v71 = v99;
        v105 = *(v112 + 104);
        (v105)(v63, enum case for LockupMediaLayout.DisplayType.fourUp(_:), v99);
        v74 = sub_100746A84();
        v75 = *(v73 + 8);
        v75(v67, v71);
        if (((ObjectType >= v74) & v91) != 0 || (v72 = enum case for LockupMediaLayout.DisplayType.threeUp(_:), (v105)(v67, enum case for LockupMediaLayout.DisplayType.threeUp(_:), v71), v76 = sub_100746A84(), v75(v67, v71), ((ObjectType >= v76) & v90) != 0) || (v72 = enum case for LockupMediaLayout.DisplayType.twoUp(_:), (v105)(v67, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v71), v77 = sub_100746A84(), v75(v67, v71), ObjectType >= v77))
        {

          v69 = *(v103 + 1);
          v69(v42, v111);
        }

        else
        {
          v72 = enum case for LockupMediaLayout.DisplayType.oneUp(_:);
          (v105)(v67, enum case for LockupMediaLayout.DisplayType.oneUp(_:), v71);
          v78 = sub_100746A84();

          v75(v67, v71);
          v69 = *(v103 + 1);
          v69(v42, v111);
          if (ObjectType != v78)
          {
            v79 = enum case for LockupMediaLayout.DisplayType.none(_:);
            v70 = v106;
            v80 = v106;
LABEL_80:
            (v105)(v80, v79, v71);
            v55 = v112;
            goto LABEL_81;
          }
        }

        v70 = v106;
        v80 = v106;
        v79 = v72;
        goto LABEL_80;
      }

LABEL_58:
      ObjectType = sub_100754664();
      if (KeyPath)
      {
        goto LABEL_43;
      }

      goto LABEL_59;
    }

    v57 = v106;
    sub_100750504();

    ObjectType = *(v24 + 1);
    ObjectType(v42, v111);
    v55 = v112;
    v58 = v99;
    (*(v112 + 104))(v57, enum case for LockupMediaLayout.DisplayType.singleItemFill(_:), v99);
    v56 = v102;
    (*(v55 + 32))(v102, v57, v58);
  }

  else
  {

    ObjectType = *(v24 + 1);
    ObjectType(v42, v111);
    v55 = v112;
    v56 = v102;
    (*(v112 + 104))(v102, enum case for LockupMediaLayout.DisplayType.none(_:), v99);
  }

LABEL_82:
  v81 = v108;
  sub_100745E24();
  v82 = ASKDeviceTypeGetCurrent();
  v83 = v113;
  sub_1006A71AC(v110, v93, v100, v92, v113, v56, v81, v101, v34, v36, 0);

  ObjectType(v81, v111);
  (*(v55 + 8))(v56, v99);
  sub_10000C8CC(v83, &unk_1009281D0);
  v84 = sub_10074EED4();

  if (v84)
  {
    v85 = sub_100748644();

    v86 = v96;
    if (v85)
    {
      v87 = [objc_opt_self() clearColor];
      [v86 setBackgroundColor:v87];
    }
  }

  else
  {
    v85 = 0;
    v86 = v96;
  }

  v88 = v109;
  sub_10002A748(v85, v101);
  [v86 setNeedsLayout];

  [v86 setNeedsLayout];

  return (*(v88 + 8))(v114, v98);
}

uint64_t sub_100484620(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100923180);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v181 = &v146 - v6;
  v7 = sub_10074A8C4();
  v180 = *(v7 - 8);
  __chkstk_darwin(v7);
  v179 = &v146 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10074AE04();
  v183 = *(v9 - 8);
  *&v184 = v9;
  __chkstk_darwin(v9);
  v173 = &v146 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10074CD14();
  v176 = *(v11 - 8);
  v177 = v11;
  __chkstk_darwin(v11);
  v175 = &v146 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1007479B4();
  v187 = *(v13 - 8);
  v188 = v13;
  __chkstk_darwin(v13);
  v174 = &v146 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v186 = &v146 - v16;
  v191 = sub_10074A8A4();
  v185 = *(v191 - 8);
  __chkstk_darwin(v191);
  v178 = &v146 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v190 = &v146 - v19;
  v20 = sub_10000C518(&unk_1009393C0);
  __chkstk_darwin(v20 - 8);
  v172 = &v146 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v189 = &v146 - v23;
  v192 = sub_10074A7F4();
  v24 = *(v192 - 8);
  __chkstk_darwin(v192);
  v26 = &v146 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v146 - v28;
  v30 = sub_10074F314();
  __chkstk_darwin(v30 - 8);
  v182 = &v146 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10074D4D4();
  result = sub_100752754();
  if (!v232[0])
  {
    return result;
  }

  v169 = v5;
  v170 = v4;
  v194 = v232[0];
  v171 = a1;
  sub_10000C824(a1, v232);
  sub_10000C518(&unk_100923100);
  v33 = sub_100747E74();
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

  v168 = v7;
  v34 = v231[0];
  v233 = v33;
  v234 = sub_10048BB14(&qword_100927520, 255, &type metadata accessor for AdvertsSearchResult);
  v232[0] = v34;

  v35 = sub_10074D494();
  sub_10000C620(v232);
  if (!v35)
  {
  }

  sub_10074AA64();
  sub_10000C518(&qword_100927780);
  sub_100745E64();
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

  v162 = v35;
  v163 = v24;
  v159 = v26;
  v166 = v29;
  v36 = v231[0];
  v37 = v193;
  v38 = *&v193[OBJC_IVAR____TtC22SubscribePageExtension30AdvertsSearchResultContentView_lockupMediaView];
  v39 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_imageViews;
  swift_beginAccess();
  v165 = v38;
  v40 = *(v38 + v39);
  if (v40 >> 62)
  {
    v41 = sub_100754664();
  }

  else
  {
    v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v195 = a2;
  v167 = v34;
  v164 = v36;
  if (v41)
  {
    if (v41 < 1)
    {
      __break(1u);
LABEL_59:
      swift_once();
      goto LABEL_22;
    }

    v42 = 0;
    do
    {
      if ((v40 & 0xC000000000000001) != 0)
      {
        v43 = sub_100754574();
      }

      else
      {
        v43 = *(v40 + v42 + 4);
      }

      v44 = v43;
      ++v42;
      v231[0] = v43;
      type metadata accessor for BorderedScreenshotView();
      sub_10048BB14(&qword_100923470, 255, type metadata accessor for BorderedScreenshotView);
      v45 = v44;
      sub_1007544E4();
      a2 = v195;
      sub_100744264();
      sub_100016994(v232);
      v46 = *&v45[OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView];
      v235.value.super.isa = 0;
      v235.is_nil = 0;
      sub_100743384(v235, v47);
    }

    while (v41 != v42);

    v37 = v193;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v49 = Strong;
    [*(Strong + qword_10093CB50) setImage:0];
    v231[0] = v49;
    type metadata accessor for VideoView();
    sub_10048BB14(&qword_10093DD00, 255, type metadata accessor for VideoView);
    v50 = v49;
    sub_1007544E4();
    sub_100744264();

    sub_100016994(v232);
  }

  v37 = *&v37[OBJC_IVAR____TtC22SubscribePageExtension30AdvertsSearchResultContentView_lockupView];
  v24 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView;
  v51 = *&v37[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView];
  v236.value.super.isa = 0;
  v236.is_nil = 0;
  sub_100743384(v236, v52);

  v53 = *&v37[v24];
  v54 = sub_1007433C4();
  v55 = sub_10048BB14(&qword_100925570, 255, &type metadata accessor for ArtworkView);
  v56 = v53;
  v160 = v55;
  v161 = v54;
  sub_100744274();

  v57 = sub_10074EF24();
  v58 = v192;
  if (!v57)
  {
    goto LABEL_25;
  }

  v59 = qword_100920548;
  v40 = *&v37[v24];
  if (v59 != -1)
  {
    goto LABEL_59;
  }

LABEL_22:
  v60 = sub_100747064();
  sub_10000D0FC(v60, qword_10097E3A8);
  sub_100746F34();
  [v40 contentMode];
  sub_10074F374();
  sub_10074F324();
  sub_100743364();
  [v40 setContentMode:sub_10074F184()];
  sub_100747FB4();
  sub_1007433A4();
  if (!sub_10074F1E4())
  {
    sub_100016C60(0, &qword_100923500);
    sub_100753E34();
  }

  sub_100743224();
  v61 = *&v37[v24];
  sub_100744204();

  v58 = v192;
LABEL_25:
  v62 = *&v37[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_metadataRibbonView];
  sub_100265EBC(v171, a2);

  v63 = v166;
  sub_100745E24();
  if ((sub_10074A7E4() & 1) == 0)
  {

    return (*(v163 + 8))(v63, v58);
  }

  v64 = sub_10074EF34();
  v149 = v65;
  v150 = v64;
  v66 = sub_10074EFB4();
  v68 = v67;
  v69 = sub_10074EED4();

  v151 = v68;
  v152 = v66;
  if (v69)
  {
    v70 = sub_100748644();

    v71 = v190;
    v72 = v183;
    v73 = v174;
    if (v70)
    {
      v74 = sub_10074F764();
      v153 = v75;
      v154 = v74;
    }

    else
    {
      v153 = 0;
      v154 = 0;
    }

    v76 = v184;
  }

  else
  {
    v153 = 0;
    v154 = 0;
    v71 = v190;
    v72 = v183;
    v76 = v184;
    v73 = v174;
  }

  v182 = sub_100745DF4();
  v174 = sub_100745E14();
  v77 = sub_100745E34();
  v78 = [v193 traitCollection];
  (*(v72 + 56))(v189, 1, 1, v76);
  if (qword_100920410 != -1)
  {
    swift_once();
  }

  v79 = v191;
  v80 = sub_10000D0FC(v191, qword_10097E010);
  v81 = v185 + 16;
  v82 = *(v185 + 16);
  v82(v71, v80, v79);
  v83 = sub_100753804();
  LODWORD(v146) = v77;
  v156 = v82;
  v157 = v81;
  if ((v83 & 1) == 0)
  {
    if (qword_100921990 != -1)
    {
      swift_once();
    }

    v84 = qword_10093FF58;
    goto LABEL_41;
  }

  if (qword_100921988 != -1)
  {
    goto LABEL_76;
  }

  while (1)
  {
    v84 = qword_10093FF40;
LABEL_41:
    v85 = v188;
    v86 = sub_10000D0FC(v188, v84);
    v87 = v187;
    (*(v187 + 16))(v73, v86, v85);
    (*(v87 + 32))(v186, v73, v85);
    v88 = [v78 preferredContentSizeCategory];
    sub_100753924();

    sub_100747964();
    sub_100747994();
    sub_10074A894();
    sub_10074A884();
    v155 = sub_100750F34();
    swift_allocObject();
    v171 = sub_100750F14();
    v89 = objc_opt_self();
    v147 = v89;
    v90 = [v89 preferredFontForTextStyle:UIFontTextStyleBody];
    v91 = sub_10074F3F4();
    v233 = v91;
    v160 = sub_10048BB14(&qword_10092AC70, 255, &type metadata accessor for Feature);
    v234 = v160;
    v92 = sub_10000D134(v232);
    v93 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v94 = *(v91 - 8);
    v148 = *(v94 + 104);
    v158 = v94 + 104;
    HIDWORD(v146) = enum case for Feature.measurement_with_labelplaceholder(_:);
    v148(v92, enum case for Feature.measurement_with_labelplaceholder(_:), v91);
    sub_10074FC74();
    sub_10000C620(v232);
    v95 = v175;
    sub_10074CD04();
    sub_10074CCE4();
    v96 = v177;
    v161 = v78;
    v97 = *(v176 + 8);
    v97(v95, v177);
    v98 = [v89 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v231[3] = v91;
    v231[4] = v160;
    v99 = sub_10000D134(v231);
    v100 = v93;
    v101 = v148;
    v148(v99, v100, v91);
    sub_10074FC74();
    sub_10000C620(v231);
    sub_10074CD04();
    sub_10074CCE4();
    v97(v95, v96);
    v102 = [v147 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v230[3] = v91;
    v230[4] = v160;
    v103 = sub_10000D134(v230);
    v101(v103, HIDWORD(v146), v91);
    sub_10074FC74();
    sub_10000C620(v230);
    sub_10074CD04();
    sub_10074CCE4();
    v97(v95, v96);
    v104 = v182;
    LODWORD(v177) = sub_10001BB7C(0, v182) & (v104 != 0);
    if (v177 == 1)
    {
      v105 = objc_allocWithZone(sub_100751034());
      v106 = v161;
      v107 = sub_100751024();
      v108 = v172;
      sub_100016B4C(v189, v172, &unk_1009393C0);
      v110 = v183;
      v109 = v184;
      v111 = *(v183 + 48);
      if (v111(v108, 1, v184) == 1)
      {
        v112 = v173;
        _s22SubscribePageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
        if (v111(v108, 1, v109) != 1)
        {
          sub_10000C8CC(v108, &unk_1009393C0);
        }
      }

      else
      {
        v112 = v173;
        (*(v110 + 32))(v173, v108, v109);
      }

      v115 = v107;
      sub_100018CE4(v182, v112, v115);

      (*(v110 + 8))(v112, v109);
      v113 = v155;
      swift_allocObject();
      v114 = sub_100750F04();
    }

    else
    {
      v113 = v155;
      swift_allocObject();
      v114 = sub_100750F14();
    }

    v116 = v114;

    v117 = v174;
    v118 = sub_10001BB7C(v174, 0) & (v117 != 0);
    v119 = v156;
    if (v118 == 1)
    {
      sub_100077794(v117, v146 & 1);
      swift_allocObject();
      v120 = sub_100750F04();
    }

    else
    {
      swift_allocObject();
      v120 = sub_100750F14();
    }

    v121 = v120;
    v119(v178, v190, v191);
    v229 = &protocol witness table for LayoutViewPlaceholder;
    v228 = v113;
    v227 = v171;
    v226 = 0;
    *&v224[40] = 0u;
    v225 = 0u;
    sub_10000C824(v232, v224);
    sub_10000C824(v231, &v223);
    v222 = 0;
    v220 = 0u;
    v221 = 0u;
    v219 = 0;
    v217 = 0u;
    v218 = 0u;

    v122 = sub_100750F24();
    v216 = &protocol witness table for LayoutViewPlaceholder;
    v215 = v113;
    v214 = v122;
    v213 = 0;
    v211 = 0u;
    v212 = 0u;
    v210 = 0;
    v208 = 0u;
    v209 = 0u;
    v207 = 0;
    v205 = 0u;
    v206 = 0u;
    v204 = 0;
    v203 = 0u;
    *&v202[40] = 0u;
    sub_10000C824(v230, v202);
    v200 = v113;
    v201 = &protocol witness table for LayoutViewPlaceholder;
    v198 = &protocol witness table for LayoutViewPlaceholder;
    v199 = v116;
    v197 = v113;
    v196 = v121;
    v123 = v179;
    sub_10074A8B4();
    sub_100751034();
    sub_10000C518(&unk_1009231A0);
    v124 = swift_allocObject();
    v184 = xmmword_1007A5CF0;
    *(v124 + 16) = xmmword_1007A5CF0;
    v125 = v161;
    *(v124 + 32) = v161;
    v73 = v125;
    v126 = sub_100751044();
    sub_10048BB14(&unk_10092AC80, 255, &type metadata accessor for SmallSearchLockupLayout);
    v127 = v168;
    sub_100750404();

    (*(v180 + 8))(v123, v127);
    sub_10000C620(v230);
    sub_10000C620(v231);
    sub_10000C620(v232);
    (*(v187 + 8))(v186, v188);
    (*(v185 + 8))(v190, v191);
    sub_10000C8CC(v189, &unk_1009393C0);
    v78 = v181;
    sub_10074DF44();
    v128 = swift_allocObject();
    *(v128 + 16) = v184;
    *(v128 + 32) = v73;
    v129 = v73;
    v130 = sub_100751044();
    sub_10001B5C0();
    v131 = v170;
    sub_100750544();

    (*(v169 + 8))(v78, v131);
    v132 = sub_100745E04();
    v133 = sub_100745DE4();
    v134 = sub_100745DD4();
    if (v134 >> 62)
    {
      v136 = v134;
      v137 = sub_100754664();
      v134 = v136;
      v135 = v163;
      if (!v137)
      {
LABEL_61:

        v73 = 0;
        goto LABEL_62;
      }
    }

    else
    {
      v135 = v163;
      if (!*((v134 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_61;
      }
    }

    if ((v134 & 0xC000000000000001) != 0)
    {
      v73 = sub_100754574();
    }

    else
    {
      if (!*((v134 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_75;
      }

      v73 = *(v134 + 32);
    }

LABEL_62:
    v138 = sub_100745E54();
    if (!(v138 >> 62))
    {
      if (!*((v138 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      goto LABEL_64;
    }

    v140 = v138;
    v141 = sub_100754664();
    v138 = v140;
    if (!v141)
    {
      break;
    }

LABEL_64:
    if ((v138 & 0xC000000000000001) != 0)
    {
      v139 = sub_100754574();
      goto LABEL_67;
    }

    if (*((v138 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v139 = *(v138 + 32);

LABEL_67:

      goto LABEL_70;
    }

LABEL_75:
    __break(1u);
LABEL_76:
    swift_once();
  }

  v139 = 0;
LABEL_70:
  v142 = [v193 traitCollection];
  v143 = v159;
  sub_100745E24();
  sub_1006A541C(v132, v133, v73, v139, v142, v195, v143);

  v144 = *(v135 + 8);
  v145 = v192;
  v144(v143, v192);
  return v144(v166, v145);
}

uint64_t sub_100485E78()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension30AdvertsSearchResultContentView_impressionsCalculator;
  swift_beginAccess();
  if (*(v0 + v1))
  {

    sub_100749574();
  }

  *(v0 + v1) = 0;

  v2 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension30AdvertsSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v3 = *v2;
  *v2 = 0;
  v2[1] = 0;
  sub_1000164A8(v3);
  return sub_10017D40C();
}

id sub_100485F38()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AdvertsSearchResultContentView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100486090(void *a1)
{
  sub_10048B99C();
}

uint64_t (*sub_1004860C8(uint64_t **a1))()
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
  v2[4] = sub_100481E34(v2);
  return sub_1000181A8;
}

uint64_t sub_100486148(uint64_t a1, uint64_t a2)
{
  sub_10048862C(a1, a2);

  return sub_1000164A8(a1);
}

uint64_t (*sub_100486190(uint64_t *a1))()
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
  *(v2 + 32) = sub_10048215C(v2);
  return sub_10001BB78;
}

uint64_t sub_100486248(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension30AdvertsSearchResultContentView_impressionsCalculator;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_10048630C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = (v3 + *a3);
  swift_beginAccess();
  v5 = *v4;
  sub_10001B5AC(*v4);
  return v5;
}

uint64_t sub_100486364(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC22SubscribePageExtension30AdvertsSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1000164A8(v6);
}

uint64_t sub_100486424()
{
  type metadata accessor for SearchTagsRibbonView();
  sub_10048BB14(&qword_1009393D0, 255, type metadata accessor for SearchTagsRibbonView);
  return sub_10074D3C4();
}

uint64_t sub_1004864CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_100486520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_10048658C(uint64_t *a1))()
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
  *(v3 + 32) = sub_100747DB4();
  return sub_10001BB78;
}

uint64_t sub_100486628(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30AdvertsSearchResultContentView_lockupMediaView);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  sub_100016C60(0, &qword_100922300);
  v5 = v2;
  v6 = sub_100753FC4();

  return v6 & 1;
}

uint64_t sub_1004867E4(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_10048BB14(&qword_1009393A8, a2, type metadata accessor for AdvertsSearchResultContentView);
  result = sub_10048BB14(&unk_1009393B0, v3, type metadata accessor for AdvertsSearchResultContentView);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100486868(unint64_t a1)
{
  v2 = sub_10000C518(&unk_100934D80);
  __chkstk_darwin(v2 - 8);
  v4 = &v165 - v3;
  v5 = sub_100746A94();
  v193 = *(v5 - 8);
  __chkstk_darwin(v5);
  v188 = &v165 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v165 - v8;
  __chkstk_darwin(v10);
  v12 = &v165 - v11;
  v13 = sub_10000C518(&unk_1009281D0);
  __chkstk_darwin(v13 - 8);
  v15 = &v165 - v14;
  v16 = sub_10000C518(&unk_100923180);
  v190 = *(v16 - 8);
  v191 = v16;
  __chkstk_darwin(v16);
  v189 = &v165 - v17;
  v18 = sub_10074A8C4();
  v206 = *(v18 - 8);
  v207 = v18;
  __chkstk_darwin(v18);
  v205 = &v165 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = sub_10074AE04();
  *&v210 = *(v211 - 1);
  __chkstk_darwin(v211);
  v195 = &v165 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10074CD14();
  v202 = *(v21 - 8);
  v203 = v21;
  __chkstk_darwin(v21);
  v201 = &v165 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1007479B4();
  v215 = *(v23 - 8);
  v216 = v23;
  __chkstk_darwin(v23);
  v25 = &v165 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v214 = &v165 - v27;
  v218 = sub_10074A8A4();
  v213 = *(v218 - 8);
  __chkstk_darwin(v218);
  v204 = &v165 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v220 = &v165 - v30;
  v31 = sub_10000C518(&unk_1009393C0);
  __chkstk_darwin(v31 - 8);
  v194 = &v165 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v217 = &v165 - v34;
  v35 = sub_100747C14();
  __chkstk_darwin(v35 - 8);
  v37 = &v165 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_10074F704();
  v199 = *(v38 - 8);
  v200 = v38;
  __chkstk_darwin(v38);
  v212 = &v165 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_10074A7F4();
  v208 = *(v40 - 8);
  v209 = v40;
  __chkstk_darwin(v40);
  v219 = &v165 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100747E74();
  sub_10048BB14(&qword_100927520, 255, &type metadata accessor for AdvertsSearchResult);
  result = sub_1007468B4();
  if (!v257[0])
  {
    return result;
  }

  v196 = v257[0];
  v43 = sub_100747E64();
  if (!(v43 >> 62))
  {
    if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_51:
  }

  v109 = v43;
  v110 = sub_100754664();
  v43 = v109;
  if (!v110)
  {
    goto LABEL_51;
  }

LABEL_4:
  v166 = v4;
  if ((v43 & 0xC000000000000001) != 0)
  {
    v44 = sub_100754574();
LABEL_7:
    v171 = v15;

    sub_100745E24();
    sub_100746884();
    if (qword_100920C20 != -1)
    {
      swift_once();
    }

    sub_10074F6A4();
    sub_10074F674();

    v45 = sub_10074EF34();
    v177 = v46;
    v178 = v45;
    v47 = sub_10074EFB4();
    v179 = v48;
    v180 = v47;
    v49 = sub_10074EED4();
    v197 = v44;

    if (v49)
    {
      v50 = sub_100748644();

      v51 = v210;
      if (v50)
      {
        v52 = sub_10074F764();
        v181 = v53;
        v182 = v52;
      }

      else
      {
        v181 = 0;
        v182 = 0;
      }

      v54 = v211;
    }

    else
    {
      v181 = 0;
      v182 = 0;
      v54 = v211;
      v51 = v210;
    }

    v198 = sub_100745DF4();
    (*(v51 + 56))(v217, 1, 1, v54);
    v55 = sub_100745E14();
    v169 = sub_100745E34();
    swift_getKeyPath();
    sub_100746914();

    v4 = v257[5];
    if (qword_100920410 != -1)
    {
      swift_once();
    }

    v56 = v218;
    v57 = sub_10000D0FC(v218, qword_10097E010);
    v58 = v213 + 16;
    v183 = *(v213 + 16);
    v183(v220, v57, v56);
    v59 = sub_100753804();
    v170 = v5;
    v186 = a1;
    v167 = v9;
    v168 = v12;
    v192 = v55;
    v184 = v58;
    if ((v59 & 1) == 0)
    {
      if (qword_100921990 != -1)
      {
        swift_once();
      }

      v60 = qword_10093FF58;
      goto LABEL_24;
    }

    if (qword_100921988 != -1)
    {
      goto LABEL_69;
    }

    while (1)
    {
      v60 = qword_10093FF40;
LABEL_24:
      v61 = v216;
      v62 = sub_10000D0FC(v216, v60);
      v63 = v215;
      (*(v215 + 16))(v25, v62, v61);
      (*(v63 + 32))(v214, v25, v61);
      v64 = [v4 preferredContentSizeCategory];
      sub_100753924();

      sub_100747964();
      sub_100747994();
      sub_10074A894();
      sub_10074A884();
      v176 = sub_100750F34();
      swift_allocObject();
      v185 = sub_100750F14();
      v65 = objc_opt_self();
      v174 = v65;
      v66 = [v65 preferredFontForTextStyle:UIFontTextStyleBody];
      v187 = v4;
      v67 = sub_10074F3F4();
      v257[3] = v67;
      v68 = sub_10048BB14(&qword_10092AC70, 255, &type metadata accessor for Feature);
      v257[4] = v68;
      v173 = v68;
      v69 = sub_10000D134(v257);
      v70 = enum case for Feature.measurement_with_labelplaceholder(_:);
      v71 = *(v67 - 8);
      v72 = *(v71 + 104);
      v175 = v71 + 104;
      v172 = enum case for Feature.measurement_with_labelplaceholder(_:);
      v72(v69, enum case for Feature.measurement_with_labelplaceholder(_:), v67);
      sub_10074FC74();
      sub_10000C620(v257);
      v73 = v201;
      sub_10074CD04();
      sub_10074CCE4();
      v74 = v203;
      v202 = *(v202 + 8);
      (v202)(v73, v203);
      v75 = [v65 preferredFontForTextStyle:UIFontTextStyleFootnote];
      v256[3] = v67;
      v256[4] = v68;
      v76 = sub_10000D134(v256);
      v72(v76, v70, v67);
      sub_10074FC74();
      sub_10000C620(v256);
      sub_10074CD04();
      sub_10074CCE4();
      v77 = v202;
      (v202)(v73, v74);
      v78 = [v174 preferredFontForTextStyle:UIFontTextStyleFootnote];
      v255[3] = v67;
      v255[4] = v173;
      v79 = sub_10000D134(v255);
      v72(v79, v172, v67);
      sub_10074FC74();
      sub_10000C620(v255);
      sub_10074CD04();
      sub_10074CCE4();
      v77(v73, v74);
      v80 = v198;
      LODWORD(v203) = sub_10001BB7C(0, v198) & (v80 != 0);
      if (v203 == 1)
      {
        v81 = v176;
        v82 = objc_allocWithZone(sub_100751034());
        v83 = v187;
        v84 = sub_100751024();
        v85 = v194;
        sub_100016B4C(v217, v194, &unk_1009393C0);
        v86 = v210;
        v87 = *(v210 + 48);
        v88 = v211;
        v89 = v87(v85, 1, v211);
        v90 = v183;
        if (v89 == 1)
        {
          v91 = v195;
          _s22SubscribePageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
          if (v87(v85, 1, v88) != 1)
          {
            sub_10000C8CC(v85, &unk_1009393C0);
          }
        }

        else
        {
          v91 = v195;
          (*(v86 + 32))(v195, v85, v88);
        }

        v95 = v84;
        sub_100018CE4(v198, v91, v95);

        (*(v86 + 8))(v91, v88);
        v92 = v81;
        swift_allocObject();
        v93 = sub_100750F04();
        v94 = v187;
      }

      else
      {
        v92 = v176;
        swift_allocObject();
        v93 = sub_100750F14();
        v94 = v187;
        v90 = v183;
      }

      v96 = v192;
      if ((sub_10001BB7C(v192, 0) & (v96 != 0)) == 1)
      {
        sub_100077794(v96, v169 & 1);
        swift_allocObject();
        v97 = sub_100750F04();
      }

      else
      {
        swift_allocObject();
        v97 = sub_100750F14();
      }

      v98 = v97;
      v90(v204, v220, v218);
      v254 = &protocol witness table for LayoutViewPlaceholder;
      v253 = v92;
      v9 = v185;
      v252 = v185;
      v251 = 0;
      *&v249[40] = 0u;
      v250 = 0u;
      sub_10000C824(v257, v249);
      sub_10000C824(v256, &v248);
      v247 = 0;
      v245 = 0u;
      v246 = 0u;
      v244 = 0;
      v242 = 0u;
      v243 = 0u;

      v99 = sub_100750F24();
      v241 = &protocol witness table for LayoutViewPlaceholder;
      v240 = v92;
      v239 = v99;
      v238 = 0;
      v236 = 0u;
      v237 = 0u;
      v235 = 0;
      v233 = 0u;
      v234 = 0u;
      v232 = 0;
      v230 = 0u;
      v231 = 0u;
      v229 = 0;
      v228 = 0u;
      *&v227[40] = 0u;
      sub_10000C824(v255, v227);
      v226 = &protocol witness table for LayoutViewPlaceholder;
      v225 = v92;
      v223 = &protocol witness table for LayoutViewPlaceholder;
      v224 = v93;
      v222 = v92;
      v221 = v98;
      v100 = v205;
      sub_10074A8B4();
      v101 = sub_100751034();
      sub_10000C518(&unk_1009231A0);
      v102 = swift_allocObject();
      v210 = xmmword_1007A5CF0;
      *(v102 + 16) = xmmword_1007A5CF0;
      *(v102 + 32) = v94;
      v103 = v94;
      v211 = v101;
      v104 = sub_100751044();
      sub_10048BB14(&unk_10092AC80, 255, &type metadata accessor for SmallSearchLockupLayout);
      v25 = v207;
      sub_100750404();

      (*(v206 + 8))(v100, v25);
      sub_10000C620(v255);
      sub_10000C620(v256);
      sub_10000C620(v257);
      (*(v215 + 8))(v214, v216);
      (*(v213 + 8))(v220, v218);
      sub_10000C8CC(v217, &unk_1009393C0);
      v105 = sub_100745DD4();
      if (v105 >> 62)
      {
        v37 = sub_100754664();
      }

      else
      {
        v37 = *((v105 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      a1 = sub_100745E04();
      if (a1)
      {
      }

      v4 = sub_100745DE4();
      if (v4)
      {
      }

      v106 = sub_100745E54();
      if (v106 >> 62)
      {
        v111 = v106;
        v112 = sub_100754664();
        v106 = v111;
        if (!v112)
        {
LABEL_55:

          v108 = a1 | v37;
          goto LABEL_56;
        }
      }

      else if (!*((v106 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_55;
      }

      if ((v106 & 0xC000000000000001) != 0)
      {
        goto LABEL_66;
      }

      if (*((v106 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {

        goto LABEL_45;
      }

      __break(1u);
LABEL_69:
      swift_once();
    }
  }

  if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v44 = *(v43 + 32);

    goto LABEL_7;
  }

  __break(1u);
LABEL_66:
  sub_100754574();
LABEL_45:

  v107 = sub_10074F794();

  if (v107 >> 62)
  {
    v108 = sub_100754664();
  }

  else
  {
    v108 = *((v107 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a1 | v37)
  {
    if ((sub_10074A7E4() & 1) == 0)
    {
LABEL_64:

      (*(v199 + 8))(v212, v200);
      return (*(v208 + 8))(v219, v209);
    }
  }

  else
  {
LABEL_56:
    if ((sub_10074A7E4() & 1) == 0 || !(v108 | v4))
    {
      goto LABEL_64;
    }
  }

  v113 = v189;
  sub_10074DF44();
  swift_getKeyPath();
  sub_100746914();

  v114 = v257[0];
  v115 = swift_allocObject();
  *(v115 + 16) = v210;
  *(v115 + 32) = v114;
  v116 = v114;
  v117 = sub_100751044();
  sub_10001B5C0();
  v118 = v191;
  sub_100750544();

  (*(v190 + 8))(v113, v118);
  v119 = sub_100745E04();
  v120 = sub_100745DE4();
  v121 = sub_100745DD4();
  if (v121 >> 62)
  {
    v124 = v121;
    v125 = sub_100754664();
    v121 = v124;
    v122 = v171;
    if (v125)
    {
      goto LABEL_60;
    }

LABEL_71:

    v123 = 0;
    goto LABEL_72;
  }

  v122 = v171;
  if (!*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_71;
  }

LABEL_60:
  if ((v121 & 0xC000000000000001) != 0)
  {
    v123 = sub_100754574();
  }

  else
  {
    if (!*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_107;
    }

    v123 = *(v121 + 32);
  }

LABEL_72:
  v126 = sub_100745E54();
  if (v126 >> 62)
  {
    v130 = v126;
    v127 = sub_100754664();
    v126 = v130;
  }

  else
  {
    v127 = *((v126 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v220 = v119;
  v217 = v120;
  v218 = v123;
  if (v127)
  {
    if ((v126 & 0xC000000000000001) != 0)
    {
      v216 = sub_100754574();
    }

    else
    {
      if (!*((v126 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_109;
      }

      v216 = *(v126 + 32);
    }
  }

  else
  {

    v216 = 0;
  }

  v128 = ASKDeviceTypeGetCurrent();
  swift_getKeyPath();
  sub_100746914();

  v120 = v257[0];
  sub_100553194(v122);

  v9 = sub_100745E04();
  v119 = sub_100745DE4();
  v129 = sub_100745DD4();
  if (v129 >> 62)
  {
    v131 = v129;
    v132 = sub_100754664();
    v129 = v131;
    if (v132)
    {
LABEL_82:
      if ((v129 & 0xC000000000000001) == 0)
      {
        if (!*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_111;
        }

        a1 = *(v129 + 32);

        goto LABEL_85;
      }

LABEL_107:
      a1 = sub_100754574();
LABEL_85:

      goto LABEL_89;
    }
  }

  else if (*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_82;
  }

  a1 = 0;
LABEL_89:
  v133 = sub_100745E54();
  if (v133 >> 62)
  {
    v135 = v133;
    v136 = sub_100754664();
    v133 = v135;
    if (v136)
    {
LABEL_91:
      if ((v133 & 0xC000000000000001) == 0)
      {
        if (*((v133 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v134 = *(v133 + 32);

LABEL_94:

          goto LABEL_97;
        }

LABEL_111:
        __break(1u);
LABEL_112:
        v215 = sub_100754664();
        if (a1)
        {
          goto LABEL_101;
        }

LABEL_113:
        v138 = 0;
        goto LABEL_114;
      }

LABEL_109:
      v134 = sub_100754574();
      goto LABEL_94;
    }
  }

  else if (*((v133 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_91;
  }

  v134 = 0;
LABEL_97:
  if ((sub_10074A7E4() & 1) == 0)
  {

    v139 = v193;
    v140 = v168;
    (*(v193 + 104))(v168, enum case for LockupMediaLayout.DisplayType.none(_:), v170);
LABEL_136:
    type metadata accessor for LockupMediaView();
    v162 = sub_10007DC04();
    swift_getObjectType();
    v163 = v219;
    v164 = v171;
    sub_1006A6BAC(v220, v217, v218, v216, v171, v140, v162, v219);

    swift_unknownObjectRelease();

    (*(v139 + 8))(v140, v170);
    sub_10000C8CC(v164, &unk_1009281D0);
    (*(v199 + 8))(v212, v200);
    return (*(v208 + 8))(v163, v209);
  }

  if (v119 | v9)
  {
    v141 = v167;
    sub_100750504();

    v139 = v193;
    v142 = v170;
    (*(v193 + 104))(v141, enum case for LockupMediaLayout.DisplayType.singleItemFill(_:), v170);
    v140 = v168;
    (*(v139 + 32))(v168, v141, v142);
    goto LABEL_136;
  }

  v137 = sub_100631A30(a1, v134, 0, 1);
  v119 = v137;
  v120 = (v137 >> 62);
  if (v137 >> 62)
  {
    goto LABEL_112;
  }

  v215 = *((v137 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!a1)
  {
    goto LABEL_113;
  }

LABEL_101:
  v138 = sub_100743844();
LABEL_114:
  v143 = sub_100631D8C(v138);

  LODWORD(v213) = v143;
  if (a1)
  {
    v144 = sub_100743844();
  }

  else
  {
    v144 = 0;
  }

  v146 = v208;
  v145 = v209;
  v147 = v166;
  (*(v208 + 16))(v166, v219, v209);
  (*(v146 + 56))(v147, 0, 1, v145);
  v148 = sub_1006322B4(v144, v147);

  sub_10000C8CC(v147, &unk_100934D80);
  if (v120)
  {
    result = sub_100754664();
  }

  else
  {
    result = *((v119 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v149 = v188;
  if (!result)
  {

    goto LABEL_127;
  }

  if ((v119 & 0xC000000000000001) != 0)
  {
    sub_100754574();
LABEL_124:

    v150 = sub_10074F194();

    if (v150)
    {

      v139 = v193;
      v151 = v167;
      v152 = v170;
      (*(v193 + 104))(v167, enum case for LockupMediaLayout.DisplayType.landscape(_:), v170);
LABEL_135:
      v140 = v168;
      (*(v139 + 32))(v168, v151, v152);
      goto LABEL_136;
    }

LABEL_127:
    v153 = enum case for LockupMediaLayout.DisplayType.fourUp(_:);
    v154 = v193;
    v152 = v170;
    v214 = *(v193 + 104);
    (v214)(v149, enum case for LockupMediaLayout.DisplayType.fourUp(_:), v170);
    v155 = sub_100746A84();
    v211 = *(v154 + 8);
    (v211)(v149, v152);
    if (((v215 >= v155) & v148) != 0 || (v153 = enum case for LockupMediaLayout.DisplayType.threeUp(_:), (v214)(v149, enum case for LockupMediaLayout.DisplayType.threeUp(_:), v152), v156 = sub_100746A84(), v157 = v211, (v211)(v149, v152), ((v215 >= v156) & v213) != 0) || (v153 = enum case for LockupMediaLayout.DisplayType.twoUp(_:), (v214)(v149, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v152), v158 = sub_100746A84(), v157(v149, v152), v215 >= v158))
    {
    }

    else
    {
      v153 = enum case for LockupMediaLayout.DisplayType.oneUp(_:);
      (v214)(v149, enum case for LockupMediaLayout.DisplayType.oneUp(_:), v152);
      v159 = sub_100746A84();

      v157(v149, v152);
      if (v215 != v159)
      {
        v160 = enum case for LockupMediaLayout.DisplayType.none(_:);
        v151 = v167;
        v161 = v167;
LABEL_134:
        (v214)(v161, v160, v152);
        v139 = v193;
        goto LABEL_135;
      }
    }

    v151 = v167;
    v161 = v167;
    v160 = v153;
    goto LABEL_134;
  }

  if (*((v119 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_124;
  }

  __break(1u);
  return result;
}

id sub_10048862C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC22SubscribePageExtension30AdvertsSearchResultContentView_disableAdvertRotation);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  sub_10001B5AC(a1);
  sub_1000164A8(v6);
  v7 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension30AdvertsSearchResultContentView_lockupView);
  v8 = *(v7 + OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_searchAdTransparencyButton);
  if (v8)
  {
    [v8 addTarget:v2 action:"disableAdvertRotationTap" forControlEvents:64];
  }

  return [*(v7 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerButton) addTarget:v2 action:"disableAdvertRotationTap" forControlEvents:64];
}

void sub_100488708()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension30AdvertsSearchResultContentView_lockupMediaView);
  v3 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_imageViews;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (v4 >> 62)
  {
    v5 = sub_100754664();
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    return;
  }

  v6 = 0;
  do
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = sub_100754574();
    }

    else
    {
      v7 = *(v4 + 8 * v6 + 32);
    }

    v8 = v7;
    ++v6;
    type metadata accessor for BorderedScreenshotView();
    sub_10048BB14(&qword_100923470, 255, type metadata accessor for BorderedScreenshotView);
    v9 = v8;
    sub_1007544E4();
    sub_100744264();
    sub_100016994(v29);
    v10 = *&v9[OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView];
    v30.value.super.isa = 0;
    v30.is_nil = 0;
    sub_100743384(v30, v11);
  }

  while (v5 != v6);

LABEL_10:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    [*(Strong + qword_10093CB50) setImage:0];
    type metadata accessor for VideoView();
    sub_10048BB14(&qword_10093DD00, 255, type metadata accessor for VideoView);
    v14 = v13;
    sub_1007544E4();
    sub_100744264();

    sub_100016994(v29);
  }

  v15 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30AdvertsSearchResultContentView_lockupView);
  v16 = *(v15 + OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_metadataRibbonView);
  v17 = *&v16[OBJC_IVAR____TtC22SubscribePageExtension18MetadataRibbonView_metadataRibbonItemViews];
  v18 = *(v17 + 16);
  if (v18)
  {
    type metadata accessor for MetadataRibbonIconWithLabelView(0);
    v28 = v16;

    v19 = 32;
    do
    {
      v20 = *(v17 + v19);
      if (swift_dynamicCastClass())
      {
        v21 = v20;
        v31.value.super.isa = 0;
        v31.is_nil = 0;
        sub_100743384(v31, v22);
        sub_1007433C4();
        sub_10048BB14(&qword_100925570, 255, &type metadata accessor for ArtworkView);
        sub_100744274();
      }

      v19 += 16;
      --v18;
    }

    while (v18);
  }

  v23 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView;
  v24 = *(v15 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
  v32.value.super.isa = 0;
  v32.is_nil = 0;
  sub_100743384(v32, v25);

  v26 = *(v15 + v23);
  sub_1007433C4();
  sub_10048BB14(&qword_100925570, 255, &type metadata accessor for ArtworkView);
  v27 = v26;
  sub_100744274();
}

uint64_t sub_100488B38(void (**a1)(uint64_t, uint64_t), uint64_t a2)
{
  v250 = a2;
  v343 = sub_1007428D4();
  v3 = *(v343 - 8);
  __chkstk_darwin(v343);
  v297 = &v240 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v315 = &v240 - v6;
  __chkstk_darwin(v7);
  v314 = &v240 - v8;
  __chkstk_darwin(v9);
  v313 = &v240 - v10;
  v318 = type metadata accessor for ScreenshotDisplayConfiguration();
  __chkstk_darwin(v318);
  v317 = &v240 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000C518(&unk_100934D80);
  __chkstk_darwin(v12 - 8);
  v252 = &v240 - v13;
  v319 = sub_1007504F4();
  v352 = *(v319 - 8);
  __chkstk_darwin(v319);
  v278 = &v240 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v279 = &v240 - v16;
  v276 = sub_100746B04();
  v351 = *(v276 - 8);
  __chkstk_darwin(v276);
  v316 = &v240 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000C518(&unk_1009281D0);
  __chkstk_darwin(v18 - 8);
  v277 = &v240 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v333 = &v240 - v21;
  v337 = sub_100746A94();
  v22 = *(v337 - 8);
  __chkstk_darwin(v337);
  v340 = (&v240 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v24);
  v258 = &v240 - v25;
  __chkstk_darwin(v26);
  v307 = &v240 - v27;
  __chkstk_darwin(v28);
  v259 = &v240 - v29;
  __chkstk_darwin(v30);
  v345 = &v240 - v31;
  v286 = sub_10000C518(&unk_100923180);
  v350 = *(v286 - 8);
  __chkstk_darwin(v286);
  v285 = &v240 - v32;
  v284 = sub_10074A8C4();
  v349 = *(v284 - 8);
  __chkstk_darwin(v284);
  v283 = &v240 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v299 = sub_10074AE04();
  v34 = *(v299 - 8);
  __chkstk_darwin(v299);
  v261 = &v240 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v310 = sub_10074CD14();
  v348 = *(v310 - 8);
  __chkstk_darwin(v310);
  v282 = &v240 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v309 = sub_1007479B4();
  v37 = *(v309 - 8);
  __chkstk_darwin(v309);
  v281 = &v240 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v308 = &v240 - v40;
  v334 = sub_10074A8A4();
  v41 = *(v334 - 8);
  __chkstk_darwin(v334);
  v280 = &v240 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v342 = &v240 - v44;
  v45 = sub_10000C518(&unk_1009393C0);
  __chkstk_darwin(v45 - 8);
  v260 = &v240 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v320 = &v240 - v48;
  v292 = sub_10074A7F4();
  v49 = *(v292 - 8);
  __chkstk_darwin(v292);
  v298 = &v240 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_100747C14();
  __chkstk_darwin(v51 - 8);
  v52 = sub_10074F704();
  v248 = *(v52 - 8);
  v249 = v52;
  __chkstk_darwin(v52);
  v253 = &v240 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100747E74();
  sub_10048BB14(&qword_100927520, 255, &type metadata accessor for AdvertsSearchResult);
  result = sub_1007468B4();
  if (!v390[0])
  {
    return result;
  }

  v347 = v3;
  v251 = v390[0];
  v394 = _swiftEmptyArrayStorage;
  sub_100746884();
  if (qword_100920C20 != -1)
  {
    goto LABEL_210;
  }

LABEL_3:

  sub_10074F6A4();
  sub_10074F5A4();
  v56 = v55;
  v346 = a1;
  sub_100486868(a1);
  v58 = v57;
  v59 = sub_100747E64();
  v60 = v59;
  if (!(v59 >> 62))
  {
    v287 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v287)
    {
      goto LABEL_212;
    }

    goto LABEL_5;
  }

  v287 = sub_100754664();
  if (v287)
  {
LABEL_5:
    v304 = v41 + 2;
    v274 = (v37 + 16);
    v275 = (v34 + 56);
    v273 = (v37 + 32);
    v272 = UIFontTextStyleBody;
    v271 = (v348 + 8);
    v303 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v247 = (v34 + 32);
    v255 = (v34 + 8);
    v256 = (v34 + 48);
    v269 = (v349 + 1);
    v270 = UIFontTextStyleFootnote;
    v267 = (v41 + 1);
    v268 = (v37 + 8);
    v266 = v350 + 1;
    v257 = enum case for LockupMediaLayout.DisplayType.none(_:);
    v290 = (v22 + 104);
    v254 = (v22 + 32);
    v245 = (v49 + 56);
    v246 = (v49 + 16);
    v341 = (v22 + 8);
    v339 = (v22 + 16);
    v263 = (v352 + 8);
    v264 = (v352 + 56);
    v262 = (v351 + 8);
    v328 = (v22 + 88);
    left = UIEdgeInsetsZero.left;
    top = UIEdgeInsetsZero.top;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    v294 = bottom;
    v302 = xmmword_1007A5CF0;
    v349 = (v347 + 88);
    v329 = (v347 + 8);
    v332 = enum case for LockupMediaLayout.DisplayType.singleItemFill(_:);
    a1 = (v49 + 8);
    v49 = 0;
    v291 = enum case for LockupMediaLayout.DisplayType.landscape(_:);
    v244 = enum case for LockupMediaLayout.DisplayType.fourUp(_:);
    v242 = enum case for LockupMediaLayout.DisplayType.twoUp(_:);
    v241 = enum case for LockupMediaLayout.DisplayType.oneUp(_:);
    LODWORD(v348) = enum case for AppPlatform.watch(_:);
    v335 = v60 & 0xC000000000000001;
    v288 = v60 + 32;
    v289 = v60 & 0xFFFFFFFFFFFFFF8;
    v22 = v298;
    v34 = v299;
    v62 = v292;
    v312 = v56;
    v311 = v58;
    v306 = v60;
    v37 = v287;
    v265 = a1;
    v243 = enum case for LockupMediaLayout.DisplayType.threeUp(_:);
    while (1)
    {
      if (v335)
      {
        v41 = sub_100754574();
        v63 = __OFADD__(v49++, 1);
        if (v63)
        {
          goto LABEL_202;
        }
      }

      else
      {
        if (v49 >= *(v289 + 16))
        {
          goto LABEL_203;
        }

        v41 = *(v288 + 8 * v49);

        v63 = __OFADD__(v49++, 1);
        if (v63)
        {
LABEL_202:
          __break(1u);
LABEL_203:
          __break(1u);
LABEL_204:
          __break(1u);
LABEL_205:
          __break(1u);
LABEL_206:
          __break(1u);
LABEL_207:
          __break(1u);
LABEL_208:
          __break(1u);
LABEL_209:
          __break(1u);
LABEL_210:
          swift_once();
          goto LABEL_3;
        }
      }

      v64 = sub_10074EF24();
      v353 = v41;
      if (v64)
      {
        if (qword_100920548 != -1)
        {
          swift_once();
        }

        v65 = sub_100747064();
        sub_10000D0FC(v65, qword_10097E3A8);
        sub_100746F34();
        sub_10074F374();
        sub_100753284();
        if (*((v394 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v394 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100753304();
          a1 = v265;
        }

        sub_100753344();
      }

      v66 = sub_100745DF4();
      swift_getKeyPath();
      sub_100746914();

      v67 = v390[0];
      v68 = sub_100266258(v66, v390[0]);

      v69 = v68;
      v41 = v353;
      sub_10049FCD8(v69);
      sub_100745E24();
      v70 = sub_100745DD4();
      if (v70 >> 62)
      {
        v136 = sub_100754664();

        if (!v136)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v71 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (!v71)
        {
          goto LABEL_6;
        }
      }

      if (sub_10074A7E4())
      {
        v72 = v34;
        v73 = sub_10074EF34();
        v75 = v74;
        v76 = sub_10074EFB4();
        v78 = v77;
        v79 = sub_10074EED4();

        v331 = v76;
        v330 = v78;
        v327 = v75;
        v324 = v73;
        if (v79 && (v80 = sub_100748644(), , v80))
        {
          v338 = sub_10074F764();
          v336 = v81;
        }

        else
        {
          v338 = 0;
          v336 = 0;
        }

        v352 = sub_100745DF4();
        v351 = sub_100745E14();
        v322 = sub_100745E34();
        swift_getKeyPath();
        sub_100746914();

        v82 = v393;
        (*v275)(v320, 1, 1, v72);
        if (qword_100920410 != -1)
        {
          swift_once();
        }

        v83 = v334;
        v84 = sub_10000D0FC(v334, qword_10097E010);
        v344 = *v304;
        (v344)(v342, v84, v83);
        v85 = sub_100753804();
        v301 = v49;
        if (v85)
        {
          v86 = qword_10093FF40;
          if (qword_100921988 != -1)
          {
            swift_once();
            v86 = qword_10093FF40;
          }
        }

        else
        {
          v86 = qword_10093FF58;
          if (qword_100921990 != -1)
          {
            swift_once();
            v86 = qword_10093FF58;
          }
        }

        v87 = v309;
        v88 = sub_10000D0FC(v309, v86);
        v89 = v281;
        (*v274)(v281, v88, v87);
        (*v273)(v308, v89, v87);
        v90 = [v82 preferredContentSizeCategory];
        sub_100753924();

        sub_100747964();
        sub_100747994();
        sub_10074A894();
        sub_10074A884();
        v326 = sub_100750F34();
        swift_allocObject();
        v347 = sub_100750F14();
        v91 = objc_opt_self();
        v325 = v82;
        v92 = v91;
        v323 = v91;
        v93 = [v91 preferredFontForTextStyle:v272];
        v94 = sub_10074F3F4();
        v391 = v94;
        v350 = sub_10048BB14(&qword_10092AC70, 255, &type metadata accessor for Feature);
        v392 = v350;
        v95 = sub_10000D134(v390);
        v96 = *(*(v94 - 8) + 104);
        v97 = v303;
        v96(v95, v303, v94);
        sub_10074FC74();
        sub_10000C620(v390);
        v98 = v282;
        sub_10074CD04();
        sub_10074CCE4();
        v327 = *v271;
        v327(v98, v310);
        v99 = v270;
        v100 = [v92 preferredFontForTextStyle:v270];
        v389[3] = v94;
        v389[4] = v350;
        v101 = sub_10000D134(v389);
        v96(v101, v97, v94);
        sub_10074FC74();
        sub_10000C620(v389);
        sub_10074CD04();
        sub_10074CCE4();
        v102 = v310;
        v103 = v327;
        v327(v98, v310);
        v104 = [v323 preferredFontForTextStyle:v99];
        v388[3] = v94;
        v388[4] = v350;
        v105 = sub_10000D134(v388);
        v96(v105, v303, v94);
        sub_10074FC74();
        sub_10000C620(v388);
        sub_10074CD04();
        sub_10074CCE4();
        v103(v98, v102);
        v106 = v352;
        LODWORD(v350) = sub_10001BB7C(0, v352) & (v106 != 0);
        if (v350 == 1)
        {
          v107 = v326;
          v108 = objc_allocWithZone(sub_100751034());
          v109 = v325;
          v110 = v325;
          v111 = sub_100751024();
          v112 = v260;
          sub_100016B4C(v320, v260, &unk_1009393C0);
          v113 = *v256;
          v114 = v299;
          if ((*v256)(v112, 1, v299) == 1)
          {
            v115 = v261;
            _s22SubscribePageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
            if (v113(v112, 1, v114) != 1)
            {
              sub_10000C8CC(v112, &unk_1009393C0);
            }
          }

          else
          {
            v115 = v261;
            (*v247)(v261, v112, v114);
          }

          v118 = v111;
          sub_100018CE4(v352, v115, v118);

          (*v255)(v115, v114);
          v116 = v107;
          swift_allocObject();
          v117 = sub_100750F04();
        }

        else
        {
          v116 = v326;
          swift_allocObject();
          v117 = sub_100750F14();
          v109 = v325;
        }

        v34 = v117;

        v119 = v351;
        if ((sub_10001BB7C(v351, 0) & (v119 != 0)) == 1)
        {
          sub_100077794(v119, v322 & 1);
          swift_allocObject();
          v120 = sub_100750F04();
        }

        else
        {
          swift_allocObject();
          v120 = sub_100750F14();
        }

        v121 = v120;
        (v344)(v280, v342, v334);
        v387 = &protocol witness table for LayoutViewPlaceholder;
        v386 = v116;
        v385 = v347;
        v384 = 0;
        *&v382[40] = 0u;
        v383 = 0u;
        sub_10000C824(v390, v382);
        sub_10000C824(v389, &v381);
        v380 = 0;
        v378 = 0u;
        v379 = 0u;
        v377 = 0;
        v375 = 0u;
        v376 = 0u;

        v122 = sub_100750F24();
        v374 = &protocol witness table for LayoutViewPlaceholder;
        v373 = v116;
        v372 = v122;
        v371 = 0;
        v369 = 0u;
        v370 = 0u;
        v368 = 0;
        v366 = 0u;
        v367 = 0u;
        v365 = 0;
        v363 = 0u;
        v364 = 0u;
        v362 = 0;
        v361 = 0u;
        *&v360[40] = 0u;
        sub_10000C824(v388, v360);
        v359 = &protocol witness table for LayoutViewPlaceholder;
        v358 = v116;
        v357 = v34;
        v356 = &protocol witness table for LayoutViewPlaceholder;
        v355 = v116;
        v354 = v121;
        v123 = v283;
        sub_10074A8B4();
        v350 = sub_100751034();
        sub_10000C518(&unk_1009231A0);
        v124 = swift_allocObject();
        *(v124 + 16) = v302;
        *(v124 + 32) = v109;
        v125 = v109;
        v126 = sub_100751044();
        sub_10048BB14(&unk_10092AC80, 255, &type metadata accessor for SmallSearchLockupLayout);
        v127 = v284;
        sub_100750404();

        (*v269)(v123, v127);
        sub_10000C620(v388);
        sub_10000C620(v389);
        sub_10000C620(v390);
        (*v268)(v308, v309);
        (*v267)(v342, v334);
        sub_10000C8CC(v320, &unk_1009393C0);
        v128 = v285;
        sub_10074DF44();
        v129 = swift_allocObject();
        *(v129 + 16) = v302;
        *(v129 + 32) = v125;
        v130 = v125;
        v131 = sub_100751044();
        sub_10001B5C0();
        v49 = v286;
        sub_100750544();

        (*v266)(v128, v49);
        v41 = sub_100745E04();
        v344 = sub_100745DE4();
        v132 = sub_100745DD4();
        if (v132 >> 62)
        {
          v137 = v132;
          v133 = sub_100754664();
          v132 = v137;
        }

        else
        {
          v133 = *((v132 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v37 = v337;
        a1 = v340;
        v134 = v345;
        v22 = v298;
        if (v133)
        {
          if ((v132 & 0xC000000000000001) != 0)
          {
            v350 = sub_100754574();
          }

          else
          {
            if (!*((v132 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_205;
            }

            v350 = *(v132 + 32);
          }
        }

        else
        {

          v350 = 0;
        }

        v135 = sub_100745E54();
        if (v135 >> 62)
        {
          v138 = v135;
          v139 = sub_100754664();
          v135 = v138;
          if (!v139)
          {
            goto LABEL_62;
          }

LABEL_54:
          if ((v135 & 0xC000000000000001) != 0)
          {
            v351 = sub_100754574();
          }

          else
          {
            if (!*((v135 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_206;
            }

            v351 = *(v135 + 32);
          }
        }

        else
        {
          if (*((v135 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_54;
          }

LABEL_62:

          v351 = 0;
        }

        v140 = sub_100745E04();
        v34 = sub_100745DE4();
        v141 = sub_100745DD4();
        if (v141 >> 62)
        {
          v143 = v141;
          v144 = sub_100754664();
          v141 = v143;
          v336 = v41;
          if (!v144)
          {
            goto LABEL_70;
          }

LABEL_65:
          if ((v141 & 0xC000000000000001) != 0)
          {
            v41 = sub_100754574();
          }

          else
          {
            if (!*((v141 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_207;
            }

            v41 = *(v141 + 32);
          }
        }

        else
        {
          v142 = *((v141 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v336 = v41;
          if (v142)
          {
            goto LABEL_65;
          }

LABEL_70:

          v41 = 0;
        }

        v145 = sub_100745E54();
        if (v145 >> 62)
        {
          v147 = v145;
          v148 = sub_100754664();
          v145 = v147;
          if (!v148)
          {
            goto LABEL_78;
          }

LABEL_73:
          if ((v145 & 0xC000000000000001) != 0)
          {
            v146 = sub_100754574();
          }

          else
          {
            if (!*((v145 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_208;
            }

            v146 = *(v145 + 32);
          }
        }

        else
        {
          if (*((v145 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_73;
          }

LABEL_78:

          v146 = 0;
        }

        if (sub_10074A7E4())
        {
          if (!(v34 | v140))
          {
            v149 = sub_100631A30(v41, v146, 0, 1);
            v150 = v149;
            v151 = v149 >> 62;
            if (v149 >> 62)
            {
              v352 = sub_100754664();
              if (!v41)
              {
                goto LABEL_92;
              }

LABEL_83:
              v152 = sub_100743844();
            }

            else
            {
              v352 = *((v149 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v41)
              {
                goto LABEL_83;
              }

LABEL_92:
              v152 = 0;
            }

            v154 = sub_100631D8C(v152);

            if (v41)
            {
              v155 = sub_100743844();
            }

            else
            {
              v155 = 0;
            }

            v156 = v252;
            v157 = v292;
            (*v246)(v252, v22, v292);
            (*v245)(v156, 0, 1, v157);
            v158 = sub_1006322B4(v155, v156);

            sub_10000C8CC(v156, &unk_100934D80);
            if (v151)
            {
              result = sub_100754664();
            }

            else
            {
              result = *((v150 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v37 = v337;
            v34 = v258;
            a1 = v340;
            if (result)
            {
              if ((v150 & 0xC000000000000001) == 0)
              {
                if (*((v150 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {

                  goto LABEL_103;
                }

                __break(1u);
LABEL_216:
                __break(1u);
                return result;
              }

              sub_100754574();
LABEL_103:

              v159 = sub_10074F194();

              v34 = v258;
              if (v159)
              {

                v160 = v259;
                (*v290)(v259, v291, v37);
                v41 = v279;
                v22 = v298;
                goto LABEL_116;
              }
            }

            else
            {
            }

            LODWORD(v338) = v154;
            v161 = v244;
            v347 = *v290;
            (v347)(v34, v244, v37);
            v162 = sub_100746A84();
            v163 = *v341;
            (*v341)(v34, v37);
            if (((v352 >= v162) & v158) != 0)
            {

              v160 = v259;
              (v347)(v259, v161, v37);
              v41 = v279;
              a1 = v340;
              v22 = v298;
              goto LABEL_116;
            }

            (v347)(v34, v243, v37);
            v164 = sub_100746A84();
            v165 = v163;
            v163(v34, v37);
            v22 = v298;
            if (((v352 >= v164) & v338) == 0)
            {
              v168 = v242;
              (v347)(v34, v242, v37);
              v169 = sub_100746A84();
              v165(v34, v37);
              if (v352 >= v169)
              {
              }

              else
              {
                v168 = v241;
                (v347)(v34, v241, v37);
                v170 = sub_100746A84();

                v165(v34, v37);
                if (v352 != v170)
                {
                  v160 = v259;
                  v166 = v259;
                  v167 = v257;
                  goto LABEL_115;
                }
              }

              v160 = v259;
              v166 = v259;
              v167 = v168;
              goto LABEL_115;
            }

            v160 = v259;
            v166 = v259;
            v167 = v243;
LABEL_115:
            (v347)(v166, v167, v37);
            v41 = v279;
            a1 = v340;
LABEL_116:
            v49 = v301;
            v134 = v345;
            (*v254)(v345, v160, v37);
LABEL_117:
            v171 = sub_10007DC04();
            (*v264)(v333, 1, 1, v319);
            v300 = v171;
            v305 = [v171 traitCollection];
            v392 = &protocol witness table for CGFloat;
            v391 = &type metadata for CGFloat;
            v390[0] = 0x4021000000000000;
            sub_10000C824(v390, v389);
            v338 = *v339;
            v338(v307, v134, v37);
            if (v344 | v336)
            {
              goto LABEL_127;
            }

            v172 = sub_100631A30(v350, v351, 0, 1);
            if (v172 >> 62)
            {
              v173 = v172;
              v174 = sub_100754664();
              v172 = v173;
              if (!v174)
              {
                goto LABEL_126;
              }

LABEL_120:
              if ((v172 & 0xC000000000000001) != 0)
              {
                sub_100754574();
              }

              else
              {
                if (!*((v172 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_209;
                }
              }

              sub_10074F2A4();
              sub_100750504();
            }

            else
            {
              if (*((v172 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_120;
              }

LABEL_126:

LABEL_127:
              sub_100750504();
            }

            sub_100016B4C(v333, v277, &unk_1009281D0);
            sub_100746AD4();
            sub_10000C620(v390);
            v175 = v278;
            sub_100746AE4();
            sub_1007504C4();
            (*v263)(v175, v319);
            if (v344)
            {

              sub_10074EC14();
              v176 = sub_10074F374();
              v41 = sub_100254D74(0, 1, 1, _swiftEmptyArrayStorage);
              v178 = v41[2];
              v177 = v41[3];
              if (v178 >= v177 >> 1)
              {
                v41 = sub_100254D74((v177 > 1), v178 + 1, 1, v41);
              }

              (*v262)(v316, v276);
              sub_10000C8CC(v333, &unk_1009281D0);
              v41[2] = v178 + 1;
              v179 = &v41[2 * v178];
              v179[4] = v176;
              *(v179 + 40) = 0;
LABEL_132:
              v180 = v341;
              v181 = v41[2];
              if (v181)
              {
LABEL_133:
                v390[0] = _swiftEmptyArrayStorage;
                sub_1007545C4();
                v182 = 32;
                do
                {

                  sub_1007545A4();
                  sub_1007545D4();
                  sub_1007545E4();
                  sub_1007545B4();
                  v182 += 16;
                  --v181;
                }

                while (v181);
                swift_unknownObjectRelease();

                (*v341)(v345, v37);
                v183 = v390[0];
                goto LABEL_141;
              }

LABEL_140:
              swift_unknownObjectRelease();

              (*v180)(v134, v37);
              v183 = _swiftEmptyArrayStorage;
LABEL_141:
              sub_10049FCD8(v183);
              v34 = v299;
              v62 = v292;
              v37 = v287;
              a1 = v265;
              v41 = v353;
              goto LABEL_7;
            }

            if (v336)
            {
              v184 = v49;

              v185 = sub_10074F374();
              v186 = sub_100254D74(0, 1, 1, _swiftEmptyArrayStorage);
              v188 = *(v186 + 2);
              v187 = *(v186 + 3);
              if (v188 >= v187 >> 1)
              {
                v186 = sub_100254D74((v187 > 1), v188 + 1, 1, v186);
              }

              v180 = v341;

              (*v262)(v316, v276);
              sub_10000C8CC(v333, &unk_1009281D0);
              *(v186 + 2) = v188 + 1;
              v189 = &v186[16 * v188];
              *(v189 + 4) = v185;
              v189[40] = 0;
              v49 = v184;
              v181 = *(v186 + 2);
              if (v181)
              {
                goto LABEL_133;
              }

              goto LABEL_140;
            }

            v190 = sub_100746A84();
            v191 = sub_100631A30(v350, v351, v190, 0);
            sub_100746B24();
            v331 = v192;
            v330 = v193;
            if (!(v191 >> 62))
            {
              result = *((v191 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (result)
              {
                goto LABEL_144;
              }

              goto LABEL_200;
            }

            result = sub_100754664();
            if (!result)
            {
LABEL_200:

              (*v262)(v316, v276);
              sub_10000C8CC(v333, &unk_1009281D0);
              v41 = _swiftEmptyArrayStorage;
              goto LABEL_132;
            }

LABEL_144:
            if (result < 1)
            {
              goto LABEL_216;
            }

            v49 = 0;
            v327 = (v191 & 0xC000000000000001);
            v41 = _swiftEmptyArrayStorage;
            v326 = v191;
            v325 = result;
            while (2)
            {
              if (v327)
              {
                v22 = sub_100754574();
              }

              else
              {
                v22 = *(v191 + 8 * v49 + 32);
              }

              v338(a1, v134, v37);
              v194 = (*v328)(a1, v37);
              if (v194 == v332)
              {
                (*v341)(a1, v37);
                LODWORD(v347) = 0;
                v195 = v350;
              }

              else
              {
                v195 = v350;
                if (v194 == v291)
                {
                  LODWORD(v347) = 0;
                }

                else
                {
                  v196 = sub_10074F194();
                  (*v341)(a1, v37);
                  LODWORD(v347) = v196;
                }
              }

              v352 = v22;
              if (v351)
              {
                v197 = sub_10074F794();
                if (!(v197 >> 62))
                {
                  if (*((v197 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_157;
                  }

LABEL_185:

                  if (!v195)
                  {
LABEL_186:
                    if (qword_100920788 != -1)
                    {
                      swift_once();
                    }

                    v221 = qword_10092FC48;
                    v229 = 0;
                    v228 = 0;
                    v205 = 5.0;
                    v231 = 1;
                    v204 = 1.0;
                    v224 = left;
                    v225 = top;
                    v227 = right;
                    v226 = v294;
                    v232 = 1;
LABEL_189:
                    v235 = v317;
                    sub_100750504();

                    *v235 = v205;
                    *(v235 + 8) = v228;
                    *(v235 + 16) = v232 & 1;
                    *(v235 + 24) = v229;
                    *(v235 + 32) = v231 & 1;
                    *(v235 + 40) = v204;
                    *(v235 + 48) = v221;
                    *(v235 + 56) = v225;
                    *(v235 + 64) = v224;
                    *(v235 + 72) = v226;
                    *(v235 + 80) = v227;
                    sub_100753BA4();
                    v199 = sub_10074F374();
                    sub_100024440(v235);
                    v37 = v337;
                    a1 = v340;
LABEL_190:

                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v41 = sub_100254D74(0, v41[2] + 1, 1, v41);
                    }

                    v134 = v345;
                    v34 = v41[2];
                    v236 = v41[3];
                    if (v34 >= v236 >> 1)
                    {
                      v41 = sub_100254D74((v236 > 1), v34 + 1, 1, v41);
                    }

                    ++v49;

                    v41[2] = v34 + 1;
                    v237 = &v41[2 * v34];
                    v237[4] = v199;
                    *(v237 + 40) = v347 & 1;
                    v191 = v326;
                    if (v325 == v49)
                    {

                      (*v262)(v316, v276);
                      sub_10000C8CC(v333, &unk_1009281D0);
                      v22 = v298;
                      v49 = v301;
                      goto LABEL_132;
                    }

                    continue;
                  }

LABEL_164:
                  sub_100743844();

                  v200 = v313;
                  sub_1007444B4();

                  v201 = *v349;
                  v202 = v343;
                  v203 = (*v349)(v200, v343);
                  v204 = 0.0;
                  v205 = 0.0;
                  if (v203 != v348)
                  {
                    (*v329)(v313, v202);
                    v205 = 5.0;
                  }

                  v324 = sub_100744504();
                  v321 = v206;
                  v207 = sub_1007444F4();
                  v209 = v208;

                  v210 = v314;
                  sub_1007444B4();
                  v211 = v343;

                  v212 = v201(v210, v211);
                  if (v212 != v348)
                  {
                    (*v329)(v314, v211);
                    v204 = 1.0;
                  }

                  v213 = v315;
                  sub_1007444B4();
                  v214 = v343;
                  v215 = v201(v213, v343);
                  v323 = v207;
                  v322 = v209;
                  if (v215 == v348)
                  {
                    if (qword_100920780 != -1)
                    {
                      swift_once();
                    }

                    v216 = qword_10092FC40;
                  }

                  else
                  {
                    if (qword_100920788 != -1)
                    {
                      swift_once();
                    }

                    v216 = qword_10092FC48;

                    (*v329)(v315, v214);
                  }

                  v217 = v297;
                  sub_1007444B4();
                  v218 = v201(v217, v214);
                  if (v218 == v348)
                  {
                    v219 = sub_1007444F4();
                    if (v220)
                    {
                      v221 = v216;
                      if (qword_100920770 != -1)
                      {
                        swift_once();
                      }

                      sub_10000D0FC(v319, qword_10097ECE0);
                      sub_100750494();
                      v223 = v222;

                      v224 = 15.0;
                      v225 = v223 * 15.0;
                      v226 = v223 * 15.0;
                      v227 = 15.0;
                      v228 = v324;
                      v229 = v323;
                      goto LABEL_183;
                    }

                    v230 = *&v219;

                    v225 = v230;
                    v224 = v230;
                    v226 = v230;
                    v227 = v230;
                  }

                  else
                  {

                    (*v329)(v217, v214);
                    v224 = left;
                    v225 = top;
                    v227 = right;
                    v226 = v294;
                  }

                  v228 = v324;
                  v229 = v323;
                  v221 = v216;
LABEL_183:
                  v231 = v322;
                  v232 = v321;
                  goto LABEL_189;
                }

                v233 = v197;
                v234 = sub_100754664();
                v197 = v233;
                if (!v234)
                {
                  goto LABEL_185;
                }

LABEL_157:
                if ((v197 & 0xC000000000000001) != 0)
                {
                  sub_100754574();
                }

                else
                {
                  if (!*((v197 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_204;
                  }
                }

                sub_10074F3D4();
                sub_10074EC14();
                v198 = sub_10074F224();

                if (v198)
                {
                  v199 = sub_10074F374();

                  goto LABEL_190;
                }

                v195 = v350;
              }

              break;
            }

            if (!v195)
            {
              goto LABEL_186;
            }

            goto LABEL_164;
          }

          v153 = v259;
          sub_100750504();

          (*v290)(v153, v332, v37);
          (*v254)(v134, v153, v37);
        }

        else
        {

          (*v290)(v134, v257, v37);
        }

        v41 = v279;
        v49 = v301;
        goto LABEL_117;
      }

LABEL_6:

LABEL_7:

      (*a1)(v22, v62);
      if (v49 == v37)
      {

        v238 = v394;
        goto LABEL_213;
      }
    }
  }

LABEL_212:

  v238 = _swiftEmptyArrayStorage;
LABEL_213:
  v239._rawValue = v238;
  sub_100744224(v239);

  return (*(v248 + 8))(v253, v249);
}